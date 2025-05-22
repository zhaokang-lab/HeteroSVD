#include "TopGraph.h"
#include "../SystemConfig.h"


TopSweepGraph<ROW, BLOCK_SIZE, 1, 0, 1> topSweepGraph1(1);
TopNormGraph<ROW, BLOCK_SIZE, 0, 0, 1> topNormGraph1(1);

TopSweepGraph<ROW, BLOCK_SIZE, 6, 7, -1> topSweepGraph2(2);
TopNormGraph<ROW, BLOCK_SIZE, 5, 7, -1> topNormGraph2(2);

TopSweepGraph<ROW, BLOCK_SIZE, 11, 0, 1> topSweepGraph3(3);
TopNormGraph<ROW, BLOCK_SIZE, 10, 0, 1> topNormGraph3(3);

TopSweepGraph<ROW, BLOCK_SIZE, 16, 7, -1> topSweepGraph4(4);
TopNormGraph<ROW, BLOCK_SIZE, 15, 7, -1> topNormGraph4(4);

TopSweepGraph<ROW, BLOCK_SIZE, 21, 0, 1> topSweepGraph5(5);
TopNormGraph<ROW, BLOCK_SIZE, 20, 0, 1> topNormGraph5(5);

TopSweepGraph<ROW, BLOCK_SIZE, 26, 7, -1> topSweepGraph6(6);
TopNormGraph<ROW, BLOCK_SIZE, 25, 7, -1> topNormGraph6(6);

TopSweepGraph<ROW, BLOCK_SIZE, 31, 0, 1> topSweepGraph7(7);
TopNormGraph<ROW, BLOCK_SIZE, 30, 0, 1> topNormGraph7(7);

TopSweepGraph<ROW, BLOCK_SIZE, 36, 7, -1> topSweepGraph8(8);
TopNormGraph<ROW, BLOCK_SIZE, 35, 7, -1> topNormGraph8(8);

TopSweepGraph<ROW, BLOCK_SIZE, 41, 0, 1> topSweepGraph9(9);
TopNormGraph<ROW, BLOCK_SIZE, 40, 0, 1> topNormGraph9(9);


#if defined(__AIESIM__) || defined(__X86SIM__)

int main() {
    
    
    return 0;
}
#endif