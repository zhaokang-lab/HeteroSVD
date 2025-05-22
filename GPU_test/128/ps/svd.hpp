#include <iostream>
#include <complex>
#include <fstream>
#include <sstream>
#include <cstdlib>
#include <cmath>
#include <algorithm>
using namespace std;

template<int COL, int ROW>
void read(const std::string& filename, float* float_array) {
        std::ifstream file(filename);
        if (!file.is_open()) {
            std::cerr << "Failed to open the file." << std::endl;
            return;
        }

        float tmp[ROW][COL];

        std::string line;
        int row = 0;
        while (std::getline(file, line)) {
            std::istringstream iss(line);
            float real, imag;

            int col = 0;
            while (iss >> real && col < COL) {
                tmp[row][col] = real;
                col ++;
            }
            row ++;
        }

        int index = 0;
        for(int j = 0;j < COL;j ++) {
            for(int i = 0;i < ROW;i ++) {
                float_array[index ++] = tmp[i][j];
            }
        }

        file.close();
}

template<int COL, int ROW>
void generateMatrix(const std::string& filename) {
    std::ofstream file(filename);
    if (!file.is_open()) {
        std::cerr << "Failed to open the file for writing." << std::endl;
        return;
    }
    file.setf(ios::fixed, ios::floatfield);  
    file.precision(6);

    for (int i = 0; i < ROW; ++i) {
        for (int j = 0; j < COL; ++j) {
            file << rand();
            if (j < COL - 1) {
                file << " ";
            }
        }
        file << "\n";
    }
    file.close();
} 

template<int COL, int ROW>
void writeU(const std::string& filename, const float float_array[COL][ROW]) {
    std::ofstream file(filename);
    if (!file.is_open()) {
        std::cerr << "Failed to open the file for writing." << std::endl;
        return;
    }
    file.setf(ios::fixed, ios::floatfield);  
    file.precision(6);

    for (int i = 0; i < ROW; ++i) {
        for (int j = 0; j < COL; ++j) {
            file << float_array[j][i];
            if (j < COL - 1) {
                file << " ";
            }
        }
        file << "\n";
    }
    file.close();
}

template<int COL, int ROW>
void writeSigma(const std::string& filename, const float float_array[COL][ROW]) {
    std::ofstream file(filename);
    if (!file.is_open()) {
        std::cerr << "Failed to open the file for writing." << std::endl;
        return;
    }
    file.setf(ios::fixed, ios::floatfield);  
    file.precision(6);

    for (int i = 0; i < ROW; ++i) {
        for (int j = 0; j < COL; ++j) {
            if(i == j)
                file << float_array[j][i];
        }
        file << "\n";
    }
    file.close();
}