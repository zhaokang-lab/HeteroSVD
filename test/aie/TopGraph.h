#include "adf.h"
#include "ProcessGraph/RingGraph.hpp"
#include <cstring>
using namespace adf;

template<int MatrixROW, int GraphSize, int START_COL, int START_ROW, int DIRECTION>
class TopNormGraph: public graph {
private:
    RingNormGraph<MatrixROW, GraphSize, START_COL, START_ROW, DIRECTION> normGraph;
public:
    input_plio in[1];
    output_plio out[1];
    pktsplit<GraphSize> sp[1];
    pktmerge<GraphSize> mg[1];

    TopNormGraph(int graphID) {
        std::string ID = std::to_string(graphID);
        for(int j = 0;j < 1;j ++) {
            std::string fileIn = "aie/data/" + ID + "_norm_in_" + std::to_string(j) + ".txt";
            std::string fileOut = "aie/data/" + ID + "_norm_out_" + std::to_string(j) +".txt";
            std::string plIn = ID + "_norm_in_" + std::to_string(j);
            std::string plout = ID + "_norm_out_" + std::to_string(j);
            in[j] = input_plio::create(plIn, plio_128_bits, fileIn);
            out[j] = output_plio::create(plout, plio_128_bits, fileOut);
            sp[j] = pktsplit<GraphSize>::create();
            mg[j] = pktmerge<GraphSize>::create();
        }
        
        for(int j = 0;j < 1;j ++) {
            connect<> (in[j].out[0], sp[j].in[0]);
            connect<> (mg[j].out[0], out[j].in[0]);
        }
        for(int i = 0;i < GraphSize;i ++) {
            for(int j = 0;j < 1;j ++) {
                connect<> (sp[j].out[i], normGraph.in[i]);
                connect<> (normGraph.out[i], mg[j].in[i]);
            }
            
        }


    }
};


template<int MatrixROW, int GraphSize, int START_COL, int START_ROW, int DIRECTION>
class TopSweepGraph: public graph {
private:
    RingSweepGraph<MatrixROW, GraphSize, START_COL, START_ROW, DIRECTION> sweepGraph;
public:
    input_plio in[2];
    output_plio out[2];
    pktsplit<GraphSize> sp[2];
    pktmerge<GraphSize> mg[2];

    TopSweepGraph(int graphID) {
        std::string ID = std::to_string(graphID);
        for(int j = 0;j < 2;j ++) {
            std::string fileIn = "aie/data/" + ID + "_sweep_in_" + std::to_string(j) + ".txt";
            std::string fileOut = "aie/data/" + ID + "_sweep_out_" + std::to_string(j) +".txt";
            std::string plIn = ID + "_sweep_in_" + std::to_string(j);
            std::string plout = ID + "_sweep_out_" + std::to_string(j);
            in[j] = input_plio::create(plIn, plio_128_bits, fileIn);
            out[j] = output_plio::create(plout, plio_128_bits, fileOut);
            sp[j] = pktsplit<GraphSize>::create();
            mg[j] = pktmerge<GraphSize>::create();
        }
        
        for(int j = 0;j < 2;j ++) {
            connect<> (in[j].out[0], sp[j].in[0]);
            connect<> (mg[j].out[0], out[j].in[0]);
        }
        for(int i = 0;i < GraphSize;i ++) {
            for(int j = 0;j < 2;j ++) {
                connect<> (sp[j].out[i], sweepGraph.in[i][j]);
                connect<> (sweepGraph.out[i][j], mg[j].in[i]);
            }
            
        }


    }
};
