#include <hls_stream.h>
#include <cmath>
#include "config.h"

static ap_uint<32> generateHeader(unsigned int pktType, unsigned int ID){
#pragma HLS inline
  ap_uint<32> header = 0;
  header(4, 0) = ID;
  header(11, 5) = 0;
  header(14, 12) = pktType;
  header[15] = 0;
  header(20, 16) = -1; // source row
  header(27, 21) = -1; // source column
  header(30, 28) = 0;
  header[31] = header(30, 0).xor_reduce() ? (ap_uint<1>)0 : (ap_uint<1>)1;
  return header;
}

static unsigned int getPacketID(ap_uint<32> header){
#pragma HLS inline
  ap_uint<32> ID = 0;
  ID(4, 0) = header(4, 0);
  return ID;
}

void receive4DDR(axis_stream_deep_128& block,
                  axis_pkt_stream& fromAIEstrm) {
  #pragma HLS inline off
    axis_pkt tmp;
    ap_uint<32> header;
    ap_int<DDR_WIDTH> data_temp[2] = {0, 0};
    for(int i = 0;i < BLOCK_SIZE;i ++) {
        tmp = fromAIEstrm.read();
        header = tmp.data(31, 0);
        data_temp[0](31, 0) = tmp.data(63, 32);
        data_temp[0](63, 32) = tmp.data(95, 64);
        data_temp[0](95, 64) = tmp.data(127, 96);

        for(int j = 1;j < ROW/ELEM_NUM;j ++) {
        #pragma HLS PIPELINE II = 1
          tmp = fromAIEstrm.read();
          data_temp[(j-1)%2](127, 96) = tmp.data(31, 0);
          data_temp[j%2](31, 0) = tmp.data(63, 32);
          data_temp[j%2](63, 32) = tmp.data(95, 64);
          data_temp[j%2](95, 64) = tmp.data(127, 96);
          block.write(data_temp[(j-1)%2]);
        }

        tmp = fromAIEstrm.read();
        data_temp[(ROW/ELEM_NUM-1)%2](127, 96) = tmp.data(31, 0);
        block.write(data_temp[(ROW/ELEM_NUM-1)%2]);
        ap_int<DDR_WIDTH> sigma = 0;
        sigma(31, 0) = tmp.data(63, 32);
        block.write(sigma);
    }
    
}

float receive4AIE(axis_stream_deep_128& block, 
                   axis_pkt_stream& fromAIEstrm) {
    #pragma HLS FUNCTION_INSTANTIATE variable=fromAIEstrm
    #pragma HLS inline off 
    axis_pkt tmp;
    ap_uint<32> header;
    ap_int<W> data_temp[2] = {0, 0};
    fp_uint conv, fp_uint_tmp;
    conv.data_float = 0;

    for(int i = 0;i < BLOCK_SIZE;i ++) {
        tmp = fromAIEstrm.read();
        header = tmp.data(31, 0);
        data_temp[0](31, 0) = tmp.data(63, 32);
        data_temp[0](63, 32) = tmp.data(95, 64);
        data_temp[0](95, 64) = tmp.data(127, 96);

        for(int j = 1;j < ROW/ELEM_NUM;j ++) {
        #pragma HLS PIPELINE II = 1
          tmp = fromAIEstrm.read();
          data_temp[(j-1)%2](127, 96) = tmp.data(31, 0);
          data_temp[j%2](31, 0) = tmp.data(63, 32);
          data_temp[j%2](63, 32) = tmp.data(95, 64);
          data_temp[j%2](95, 64) = tmp.data(127, 96);
          block.write(data_temp[(j-1)%2]);
        }
        tmp = fromAIEstrm.read();
        data_temp[(ROW/ELEM_NUM-1)%2](127, 96) = tmp.data(31, 0);
        fp_uint_tmp.data_uint = tmp.data(63, 32);
        conv.data_float = fmax(conv.data_float, fp_uint_tmp.data_float);
        block.write(data_temp[(ROW/ELEM_NUM-1)%2]);
    }
    return conv.data_float;
}

void send2AIE(axis_stream_128& block, 
              axis_pkt_stream& toAIEstrm) {

    #pragma HLS inline off     
    axis_pkt tmp;
    ap_uint<32> header;
    ap_uint<W> data_temp[2];

    for(int i = 0;i < BLOCK_SIZE;i ++) {
      header = generateHeader(0, i);
      data_temp[0] = block.read();
      tmp.data(31, 0) = header;
      tmp.data(63, 32) = data_temp[0](31, 0);
      tmp.data(95, 64) = data_temp[0](63, 32);
      tmp.data(127, 96) = data_temp[0](95, 64);
      tmp.keep = -1;
      tmp.last = 0;
      toAIEstrm.write(tmp);
      for(int j = 1;j < ROW/ELEM_NUM;j ++) {
	#pragma HLS PIPELINE II = 1
        data_temp[j%2] = block.read();
        tmp.data(31, 0) = data_temp[(j-1)%2](127, 96);
        tmp.data(63, 32) = data_temp[j%2](31, 0);
        tmp.data(95, 64) = data_temp[j%2](63, 32);
        tmp.data(127, 96) = data_temp[j%2](95, 64);
        tmp.keep = -1;
        tmp.last = 0;
        toAIEstrm.write(tmp);
      }
      

      tmp.data(31, 0) = data_temp[(ROW/ELEM_NUM-1)%2](127, 96);
      tmp.data(63, 32) = 0;
      tmp.data(95, 64) = 0;
      tmp.data(127, 96) = 0;
      tmp.keep = 0x00ff;//ff
      tmp.last = 1;
      toAIEstrm.write(tmp);

    }
    
}

void DDR2FIFO(ap_uint<DDR_WIDTH>* dataIn, axis_stream_128 ddr_fifo[2]) {

  const int BLOCK_DATA_SIZE = BLOCK_SIZE*ROW/DDR_ELEM_NUM;
  for(int i = 0;i < BLOCK_NUM;i ++) {
    if(i&1) {
      for(int j = 0;j < BLOCK_DATA_SIZE;j ++) {
        #pragma HLS PIPELINE II = 1
        ap_uint<128> tmp = dataIn[i*BLOCK_DATA_SIZE + j];
        ddr_fifo[1].write(tmp); 
      }
      
    }
    else {
      for(int j = 0;j < BLOCK_DATA_SIZE;j ++) {
        #pragma HLS PIPELINE II = 1
        ap_uint<128> tmp = dataIn[i*BLOCK_DATA_SIZE + j];
        ddr_fifo[0].write(tmp); 
      } 
    }
  }
}

void Send(axis_stream_sys& syscontrol,
                    axis_stream_128 fifo[2], 
                    axis_pkt_stream& sweep_tx0_0, axis_pkt_stream& sweep_tx0_1, 
                    axis_pkt_stream& norm_tx0) {
#pragma HLS bind_storage variable=fifo type=fifo impl=bram

    #pragma HLS INLINE off

    const int SWEEP_STEP = BLOCK_NUM/2*(BLOCK_NUM-1);

    while(true) {
      ap_uint<1> sig = syscontrol.read();
      if(sig == END) break;
      for(int i = 0;i < SWEEP_STEP;i ++) {
        #pragma HLS dataflow
        send2AIE(fifo[0], sweep_tx0_0);
        send2AIE(fifo[1], sweep_tx0_1);
      }
    }

    for(int i = 0;i < BLOCK_NUM/2;i ++) {
      send2AIE(fifo[0], norm_tx0);
      send2AIE(fifo[1], norm_tx0);
    }

    
}

void NormReceive(axis_stream_deep_128& receive_ddr_fifo, axis_pkt_stream& norm_rx0) {
  for(int i = 0;i < BLOCK_NUM;i ++) {
    receive4DDR(receive_ddr_fifo, norm_rx0); 
  }
}

void FIFO2DDR(ap_uint<DDR_WIDTH>* U, ap_uint<32>* S, axis_stream_deep_128& receive_ddr_fifo) {
  ap_uint<W> sigma;
  ap_uint<W> data_temp;

  for(int i = 0;i < COL;i ++) {
    for(int j = 0;j < ROW/ELEM_NUM;j ++) {
      #pragma HLS PIPELINE II = 1
      U[i*ROW/ELEM_NUM + j] = receive_ddr_fifo.read();
    }
    sigma = receive_ddr_fifo.read();
    S[i] = sigma(31, 0);
  }
}

void Receive(axis_stream_sys& syscontrol, axis_stream_float convSet[2],
                       axis_stream_deep_128 fifo[2], 
                       axis_pkt_stream& sweep_rx0_0, axis_pkt_stream& sweep_rx0_1,
                       axis_pkt_stream& norm_rx0) {
#pragma HLS bind_storage variable=fifo type=fifo impl=uram
    #pragma HLS INLINE off
    
    const int SWEEP_STEP = BLOCK_NUM/2*(BLOCK_NUM-1);

    while(true) {
      ap_uint<1> sig = syscontrol.read();
      if(sig == END) break;

      for(int i = 0;i < SWEEP_STEP;i ++) {
        #pragma HLS dataflow
        float conv0 = receive4AIE(fifo[0], sweep_rx0_0);
        float conv1 = receive4AIE(fifo[1], sweep_rx0_1);
        convSet[0].write(conv0);
        convSet[1].write(conv1);
      }
      
      
    }

    //Norm Receive
    NormReceive(fifo[0], norm_rx0);
    

}



void RoundRobin(axis_stream_sys& syscontrol,
                ap_uint<DDR_WIDTH>* dataIn, ap_uint<DDR_WIDTH>* U, ap_uint<32>* S,
                axis_stream_128 send_fifo[2], axis_stream_deep_128 receive_fifo[2]) {
  
  //DDR2AIE
  DDR2FIFO(dataIn, send_fifo);


  //Sweep
  const int SINGLE_SWEEP_TIMES = (BLOCK_NUM-1);

  while(true) {
    ap_uint<1> sig = syscontrol.read();
    if(sig == END) break;

    for(int i = 0;i < SINGLE_SWEEP_TIMES;i ++) {
        
        for(int j = 0;j < BLOCK_SIZE*ROW/ELEM_NUM;j ++) {
          #pragma HLS PIPELINE II = 1
          ap_uint<W> tmp = receive_fifo[1].read();
          send_fifo[0].write(tmp);
        }
        for(int j = 0;j < BLOCK_SIZE*ROW/ELEM_NUM;j ++) {
          #pragma HLS PIPELINE II = 1
          ap_uint<W> tmp = receive_fifo[0].read();
          send_fifo[0].write(tmp);
        }
        
        for(int j = 0;j < (BLOCK_NUM/2-2)*BLOCK_SIZE*ROW/ELEM_NUM;j ++) {
          #pragma HLS PIPELINE II = 1
          ap_uint<W> tmp0 = receive_fifo[0].read();
          ap_uint<W> tmp1 = receive_fifo[1].read();
          send_fifo[0].write(tmp0);
          send_fifo[1].write(tmp1);
        }
  
        for(int j = 0;j < BLOCK_SIZE*ROW/ELEM_NUM;j ++) {
          #pragma HLS PIPELINE II = 1
          ap_uint<W> tmp = receive_fifo[0].read();
          send_fifo[1].write(tmp);
        }
        for(int j = 0;j < BLOCK_SIZE*ROW/ELEM_NUM;j ++) {
          #pragma HLS PIPELINE II = 1
          ap_uint<W> tmp = receive_fifo[1].read();
          send_fifo[1].write(tmp);
        }
        
    }
  }

    //AIE2DDR
    FIFO2DDR(U, S, receive_fifo[0]);
}

void SystemControl(const int ITER, ap_uint<32>* ConvArray, axis_stream_sys syscontrol[3], axis_stream_float convSet[2]) {
  const int FUNCNUM = 3;
  for(int i = 0;i < FUNCNUM;i ++) {
    syscontrol[i].write(START);
  }

  int iter = 0;
  const int SWEEP_STEP = BLOCK_NUM/2*(BLOCK_NUM-1);
  while(true) {
    fp_uint maxConv;
    maxConv.data_float = 0;
    for(int i = 0;i < SWEEP_STEP;i ++) {
      float conv0 = convSet[0].read();
      float conv1 = convSet[1].read();
      float conv = fmax(conv0, conv1);
      hls::print("conv: %f\n", conv);
      maxConv.data_float = fmax(maxConv.data_float, conv);
    }
    ConvArray[iter] = maxConv.data_uint;
    hls::print("maxConv: %f\n", maxConv.data_float);
    iter ++;
    if(maxConv.data_float < EPS || iter >= ITER) {
      for(int i = 0;i < FUNCNUM;i ++) {
        syscontrol[i].write(END);
      }
      break;
    }
    else {
      for(int i = 0;i < FUNCNUM;i ++) {
        syscontrol[i].write(START);
      }
    }
  }
}




void TopPL(ap_uint<DDR_WIDTH>* dataIn, ap_uint<DDR_WIDTH>* U, ap_uint<32>* S, ap_uint<32>* ConvArray,
                const int ITER, 
                axis_pkt_stream& sweep_tx0_0, axis_pkt_stream& sweep_rx0_0,
                axis_pkt_stream& sweep_tx0_1, axis_pkt_stream& sweep_rx0_1,
                axis_pkt_stream& norm_tx0, axis_pkt_stream& norm_rx0
                ) {
#pragma HLS INTERFACE m_axi offset = slave latency = 64 num_write_outstanding = 16 num_read_outstanding = \
    16 max_write_burst_length = 64 max_read_burst_length = 64 bundle = gmem0 port = dataIn depth = 8192
#pragma HLS INTERFACE m_axi offset = slave latency = 64 num_write_outstanding = 16 num_read_outstanding = \
    16 max_write_burst_length = 64 max_read_burst_length = 64 bundle = gmem1 port = U depth = 8192
#pragma HLS INTERFACE m_axi offset = slave latency = 64 num_write_outstanding = 16 num_read_outstanding = \
    16 max_write_burst_length = 64 max_read_burst_length = 64 bundle = gmem2 port = S depth = 8192
    #pragma HLS INTERFACE m_axi offset = slave latency = 64 num_write_outstanding = 16 num_read_outstanding = \
    16 max_write_burst_length = 64 max_read_burst_length = 64 bundle = gmem3 port = ConvArray depth = 8192
#pragma HLS INTERFACE s_axilite port = dataIn bundle = control
#pragma HLS INTERFACE s_axilite port = U bundle = control
#pragma HLS INTERFACE s_axilite port = S bundle = control
#pragma HLS INTERFACE s_axilite port = ITER bundle = control
#pragma HLS INTERFACE s_axilite port = ConvArray bundle = control
#pragma HLS INTERFACE s_axilite port = return bundle = control

#pragma HLS INTERFACE axis port = sweep_tx0_0
#pragma HLS INTERFACE axis port = sweep_tx0_1
#pragma HLS INTERFACE axis port = sweep_rx0_0
#pragma HLS INTERFACE axis port = sweep_rx0_1

#pragma HLS INTERFACE axis port = norm_tx0
#pragma HLS INTERFACE axis port = norm_rx0

    #pragma HLS dataflow

    axis_stream_float convSet[2];
    axis_stream_sys syscontrol[3];
    axis_stream_128 send_fifo[2];
    axis_stream_deep_128 receive_fifo[2];

    SystemControl(ITER, ConvArray, syscontrol, convSet);
    Send(syscontrol[0],
                   send_fifo,  
                   sweep_tx0_0, sweep_tx0_1,
                   norm_tx0);
    RoundRobin(syscontrol[1],
                dataIn, U, S,
               send_fifo, receive_fifo);
    Receive(syscontrol[2], convSet,
                     receive_fifo, 
                     sweep_rx0_0, sweep_rx0_1,
                     norm_rx0);
}
