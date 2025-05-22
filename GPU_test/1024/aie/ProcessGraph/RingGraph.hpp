#include "adf.h"
#include <cstring>
#include <iostream>
#include "ProcessUnit/Orthogonalize.h"
#include "ProcessUnit/Normalize.h"
using namespace adf;

const int VCK190_ROW = 8;
const int VCK190_COL = 50;
template<int MatrixROW, int GraphSize, int START_COL, int START_ROW, int DIRECTION>
class RingSweepGraph: public adf::graph {
private:
    const int ROW = 2*GraphSize-1;
    const int COL = GraphSize;

    kernel orth[GraphSize][2*GraphSize];// (col, row)
    pktsplit<GraphSize> sp[3][2];
    pktmerge<GraphSize> mg[3][2];
    
    int ring0[GraphSize][2*GraphSize], ring1[GraphSize][2*GraphSize];
    struct Order {
      int col, port;
    }ring[2*GraphSize][2*GraphSize];  //the j'th matrix col in i row at ring[j][i] row;

    int bankID[VCK190_COL][VCK190_ROW];

    struct Pos {
        int col;
        int row;
        // (out0/1, ping/pong)
        int bank_id[2][2];
        int bank_col[2][2];
        int bank_row[2][2];
    }orthInfo[GraphSize][2*GraphSize];

    

public:
    input_port in[GraphSize][2];
    output_port out[GraphSize][2];

    RingSweepGraph() {
        for(int i = 0;i < ROW;i ++) {
            for(int j = 0;j < COL;j ++) {
                orth[j][i] = adf::kernel::create(orthogonalize<MatrixROW>);
                adf::source(orth[j][i]) = "aie/ProcessUnit/Orthogonalize.cpp";
                runtime<ratio>(orth[j][i]) = 0.9;
            }
        }

        int row = START_ROW, col = START_COL, direction = DIRECTION;

        for(int i = 0;i < ROW;i ++) {
            int base_col = col;
            for(int j = 0;j < COL;j ++) {
                location<kernel>(orth[j][i]) = tile(base_col+j, row);
                orthInfo[j][i].col = base_col+j;
                orthInfo[j][i].row = row;
            }
            row += direction;
            if(row == VCK190_ROW-1 && direction == 1) {
                row = VCK190_ROW-1;
                col += COL+1;
                direction *= -1;
            }
            else if(row == 0 && direction == -1) {
                row = 0;
                col += COL+1;
                direction *= -1;
            }
        }

        for(int i = 0;i < VCK190_ROW;i ++) {
            for(int j = 0;j < VCK190_COL;j ++) {
                bankID[j][i] = 0;
            }
        }

        int pow_row = START_ROW;
        col = START_COL, direction = DIRECTION;
        for(int i = 0;i < ROW;i ++) {
            for(int j = 0;j < COL;j ++) {
                col = orthInfo[j][i].col; row = orthInfo[j][i].row+direction;
                location<buffer>(orth[j][i].out[0]) = {bank(col, row, getBankID(j, i, col, row, 0, 0)),
                                                       bank(col, row, getBankID(j, i, col, row, 0, 1))};
                col = orthInfo[j][i].col; row = orthInfo[j][i].row+direction;
                location<buffer>(orth[j][i].out[1]) = {bank(col, row, getBankID(j, i, col, row, 1, 0)),
                                                       bank(col, row, getBankID(j, i, col, row, 1, 1))};
                //location<stack>(orth[j][i]) = bank(orthInfo[j][i].col, orthInfo[j][i].row, 0);
            }
            pow_row += direction;
            if(pow_row == VCK190_ROW-1 && direction == 1) {
                pow_row = VCK190_ROW-1;
                direction *= -1;
            }
            else if(pow_row == 0 && direction == -1) {
                pow_row = 0;
                direction *= -1;
            }
            
        }
        
        
         // connection
        initRingOrder();
        for(int i = 0;i < COL;i ++) {
            connect<> (in[i][0], orth[i][0].in[0]);
            connect<> (in[i][1], orth[i][0].in[1]);
        }

         {
            int row = START_ROW, direction = DIRECTION, pkt_num = 0;
            for(int i = 0;i < ROW-1;i ++) {
                /* if((row == VCK190_ROW-2 && direction == 1) || (row == 1 && direction == -1)) {

                    for(int k = 0;k < 2;k ++) {
                        sp[pkt_num][k] = pktsplit<GraphSize>::create();
                        mg[pkt_num][k] = pktmerge<GraphSize>::create();
                    }

                    connect<> (mg[pkt_num][0].out[0], sp[pkt_num][0].in[0]);
                    connect<> (mg[pkt_num][1].out[0], sp[pkt_num][1].in[0]);
                    for(int j = 0;j < 2*COL;j ++) {
                        int out_col = ring[j][i].col;
                        int out_port = ring[j][i].port;
                        int in_col = ring[j][i+1].col;
                        int in_port = ring[j][i+1].port;
                        connect<> (orth[out_col][i].out[out_port], mg[pkt_num][in_port].in[in_col]);
                    }
                    for(int j = 0;j < COL;j ++) {
                      connect<> (sp[pkt_num][1].out[j], orth[j][i+1].in[1]);
                      connect<> (sp[pkt_num][0].out[j], orth[j][i+1].in[0]);
                    }
                    pkt_num ++;
                } */
                //else {
                  for(int j = 0;j < 2*COL;j ++) {
                    int out_col = ring[j][i].col;
                    int out_port = ring[j][i].port;
                    int in_col = ring[j][i+1].col;
                    int in_port = ring[j][i+1].port;
                    connect<> (orth[out_col][i].out[out_port], orth[in_col][i+1].in[in_port]);
                  }
                //}  
            
                row += direction;
                if(row == VCK190_ROW-1 && direction == 1) {
                    row = VCK190_ROW-1;
                    direction *= -1;
                }
                else if(row == 0 && direction == -1) {
                    row = 0;
                    direction *= -1;
                }
            }

            //keep prior block construction, don't change column into other block
             for(int j = 0;j < 2*COL;j ++) {
               int out_col = ring[j][ROW-1].col;
               int out_port = ring[j][ROW-1].port;
               if(j&1) {
                connect<> (orth[out_col][ROW-1].out[out_port], out[j/2][1]);
               }
               else {
                connect<> (orth[out_col][ROW-1].out[out_port], out[j/2][0]);
               }
               
             }
            
        }

    }

    int getBankID(int orth_col, int orth_row, int bank_col, int bank_row, int out_port, int ping_pong) {
        orthInfo[orth_col][orth_row].bank_col[out_port][ping_pong] = bank_col;
        orthInfo[orth_col][orth_row].bank_row[out_port][ping_pong] = bank_row;
        orthInfo[orth_col][orth_row].bank_id[out_port][ping_pong] = bankID[bank_col][bank_row];
        bankID[bank_col][bank_row] ++;
        return orthInfo[orth_col][orth_row].bank_id[out_port][ping_pong];
    }

    void initRingOrder() {
      int tmp0[COL], tmp1[COL];
      //basic ring order
      for(int i = 0;i < 2*COL;i += 2) {
        ring0[i/2][0] = i;
        ring1[i/2][0] = i+1;
      }

      int ptr = COL-1;
      for(int i = 0;i < ROW;i ++) {
        std::swap(ring0[ptr][i], ring1[ptr][i]);
        for(int j = 0;j < COL;j ++) {
          ring0[j][i+1] = ring0[j][i];
          ring1[j][i+1] = ring1[(j+1)%COL][i];
        }
        std::swap(ring0[ptr][i], ring1[ptr][i]);
        if(i&1) ptr --;
      }
      //give offset
      int row = START_ROW, direction = DIRECTION, offset = 0;
      for(int i = 0;i < ROW;i ++) {
        if(row&1) {
          offset = (offset-1+COL)%COL;
        }

        for(int j = 0;j < COL;j ++) {
          tmp0[j] = ring0[(j+offset+COL)%COL][i+1];
          tmp1[j] = ring1[(j+offset+COL)%COL][i+1];
        }
        for(int j = 0;j < COL;j ++) {
          ring0[j][i+1] = tmp0[j];
          ring1[j][i+1] = tmp1[j];
        }

        row += direction;
        if(row == VCK190_ROW-1 && direction == 1) {
            row = VCK190_ROW-1;
            direction *= -1;
        }
        else if(row == 0 && direction == -1) {
            row = 0;
            direction *= -1;
        }
      }

      for(int i = 0;i < ROW+1;i ++) {
        for(int j = 0;j < COL;j ++) {
          ring[ring0[j][i]][i].col = j;
          ring[ring1[j][i]][i].col = j;
          ring[ring0[j][i]][i].port = 0;
          ring[ring1[j][i]][i].port = 1;
        }
      }
    }

};

template<int MatrixROW, int GraphSize, int START_COL, int START_ROW, int DIRECTION>
class RingNormGraph: public graph {
private:
  kernel norm[GraphSize];

public:
  input_port in[GraphSize];
  output_port out[GraphSize];

  RingNormGraph() {
    for(int i = 0;i < GraphSize; i ++) {
      norm[i] = kernel::create(normalize<MatrixROW>);
      adf::source(norm[i]) = "aie/ProcessUnit/Normalize.cpp";
      runtime<ratio>(norm[i]) = 0.9;
    }

    for(int i = 0;i < GraphSize;i ++) {
      connect<> (in[i], norm[i].in[0]);
      connect<> (norm[i].out[0], out[i]);
    }

    int row = START_ROW, col = START_COL, direction = DIRECTION;
    for(int i = 0;i < GraphSize;i ++) {
        location<kernel>(norm[i]) = tile(col, row);
        row += direction;
        if(row == VCK190_ROW && direction == 1) {
            row = VCK190_ROW-1;
            col += GraphSize+1;
            direction *= -1;
        }
        else if(row == -1 && direction == -1) {
            row = 0;
            col += GraphSize+1;
            direction *= -1;
        }
    }

  }

};