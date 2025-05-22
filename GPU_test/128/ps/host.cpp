#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include <fstream>
#include <time.h>
#include <vector>
#include <math.h>
#include <random>
#include <string>
#include <xrt/xrt_device.h>
#include <experimental/xrt_xclbin.h>
#include <xrt/xrt_bo.h>
#include <xrt/xrt_kernel.h>
#include <experimental/xrt_aie.h>
#include <experimental/xrt_graph.h>
#include "./svd.hpp"
#include "../SystemConfig.h"

float getRand(float L, float R) {
    static std::random_device rd;
    static std::mt19937 gen(rd());
    static std::uniform_real_distribution<float> dis(L, R);
    float result = dis(gen);
    
    return result;
}

using namespace std;
int main(int argc, char** argv) {
 
    int ITER = 20;//default

    const int DATA_SIZE_BYTE = ROW*COL*sizeof(float);
    const int U_SIZE_BYTE = ROW*COL*sizeof(float);
    const int S_SIZE_BYTE = COL*sizeof(float);

    const int CONV_SIZE_BYTE = 100*sizeof(float);

    unsigned int dev_index = 0;
    auto device = xrt::device(dev_index);
    auto xclbin_uuid = device.load_xclbin(argv[1]);
    if(argc == 3) sscanf (argv[2], "%d", &ITER);
    
    xrt::kernel kernel[9];
    xrt::bo input_buffer[9];
    xrt::bo output_buffer_U[9];
    xrt::bo output_buffer_S[9];
    xrt::bo output_buffer_CONV[9];

    float* data[9];
    float* U[9];
    float* S[9];
    float* CONV[9];

    for(int i = 0;i < 9;i ++) {
      string kernel_name = "TopPL:{TopPL_" + to_string(i+1) + "}";
      kernel[i] = xrt::kernel(device, xclbin_uuid, kernel_name.c_str());
      input_buffer[i] = xrt::bo(device, DATA_SIZE_BYTE, kernel[i].group_id(0));
      output_buffer_U[i] = xrt::bo(device, U_SIZE_BYTE, kernel[i].group_id(1));
      output_buffer_S[i] = xrt::bo(device, S_SIZE_BYTE, kernel[i].group_id(2));
      output_buffer_CONV[i] = xrt::bo(device, CONV_SIZE_BYTE, kernel[i].group_id(3));

      data[i] = input_buffer[i].map<float*>();
      U[i] = output_buffer_U[i].map<float*>();
      S[i] = output_buffer_S[i].map<float*>();
      CONV[i] = output_buffer_CONV[i].map<float*>();
    }

    for(int k = 0;k < 9;k ++){
      int index = 0, matrix_id = 0;
      for(int j = 0;j < COL;j ++) {
        for(int i = 0;i < ROW;i ++) {
            data[k][index ++] = getRand(-50, 50);
        }
      }

      for(int i = 0;i < 100;i ++) {
        CONV[k][i] = 0;
      }
    }
    
    for(int k = 0;k < 9;k ++) {
      input_buffer[k].sync(XCL_BO_SYNC_BO_TO_DEVICE);
      output_buffer_CONV[k].sync(XCL_BO_SYNC_BO_TO_DEVICE);
    }
    

    std::vector<xrt::graph> topSweepGraph;
    std::vector<xrt::graph> topNormGraph;

    for(int i = 0;i < 9;i ++) {
      string topSweepGraphName = "topSweepGraph" + to_string(i+1);
      string topNormGraphName = "topNormGraph" + to_string(i+1);
      auto SweepGraph = xrt::graph(device, xclbin_uuid, topSweepGraphName.c_str());
      auto NormGraph = xrt::graph(device, xclbin_uuid, topNormGraphName.c_str());

      topSweepGraph.emplace_back(SweepGraph);
      topNormGraph.emplace_back(NormGraph);
    }

    for(int i = 0;i < 9;i ++) {
      topSweepGraph[i].run();
      topNormGraph[i].run();
    }
    
    std::cout << "All Graph started\n";
    std::cout << 100 << "*" << ROW << "*" << COL << " ITER:" << ITER;

    double kernel_time_in_sec = 0;
    std::chrono::duration<double> kernel_time(0);
    auto kernel_start = std::chrono::high_resolution_clock::now();
    
    xrt::run run[9];
    for(int i = 0;i < 11;i ++) {
      for(int k = 0;k < 9;k ++) {
        run[k] = kernel[k](input_buffer[k], output_buffer_U[k], output_buffer_S[k], output_buffer_CONV[k], ITER);
      }
      for(int k = 0;k < 9;k ++) {
        run[k].wait();
      }
    }
    

  
    auto kernel_end = std::chrono::high_resolution_clock::now();
    kernel_time = std::chrono::duration<double>(kernel_end - kernel_start);
    kernel_time_in_sec = kernel_time.count();
    
    cout << "------------------------------------------------\n";
    std::cout << "Total time is: "<< kernel_time_in_sec <<"s\n";
    cout << "------------------------------------------------\n";
    
    for(int k = 0;k < 9;k ++) {
      output_buffer_U[k].sync(XCL_BO_SYNC_BO_TO_DEVICE);
      output_buffer_S[k].sync(XCL_BO_SYNC_BO_TO_DEVICE);
      output_buffer_CONV[k].sync(XCL_BO_SYNC_BO_TO_DEVICE);
      int iteration = 0;
      while(CONV[k][iteration] > EPS) {
        cout << CONV[k][iteration] << " ";
        iteration ++;
      }
      cout << endl << k << " " << iteration << endl;
    }


    //writeU<COL, ROW>("./data/test/U.txt", U_matrix);
    //writeSigma<COL, ROW>("./data/test/Sigma.txt", S_matrix);


    return 0;
}
