// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /home/luanxinya/SVD/FPGA_test/128/./Work/aie/17_6/src/17_6.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_16_6_0_0 16
#define LOCK_16_6_1_0 17
#define LOCK_17_6_0_7648 48
#define LOCK_17_6_1_0 49
#define LOCK_17_5_0_0 0
#define LOCK_17_5_1_0 1
#define LOCK_17_5_2_0 2
#define LOCK_17_5_3_0 3

// Declare shared memory buffers
v4float buf134[33];
v4float buf134d[33];
v4float buf143[33];
v4float buf143d[33];
v4float buf150[33];
v4float buf150d[33];
v4float buf159[33];
v4float buf159d[33];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<129u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf134_buf134d_i[1] = {{(float*)buf134, 129, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<129u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf143_buf143d_i[1] = {{(float*)buf143, 129, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<129u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf150_buf150d_o[1] = {{(float*)buf150, 129, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<129u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf159_buf159d_o[1] = {{(float*)buf159, 129, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_17_6_bounds = sync_buffer[1];

  while (proc_17_6_bounds)
  {

    // Kernel call : i71:orthogonalize<128>
    window_buf134_buf134d_i->setData(*window_buf134_buf134d_i, (float*)buf134, (float*)buf134d, 1-index, 0);
    window_buf134_buf134d_i->acquire(*window_buf134_buf134d_i, LOCK_16_6_0_0, LOCK_16_6_1_0, 1-index);
    window_buf143_buf143d_i->setData(*window_buf143_buf143d_i, (float*)buf143, (float*)buf143d, 1-index, 0);
    window_buf143_buf143d_i->acquire(*window_buf143_buf143d_i, LOCK_17_6_0_7648, LOCK_17_6_1_0, 1-index);
    window_buf150_buf150d_o->setData(*window_buf150_buf150d_o, (float*)buf150, (float*)buf150d, 1-index, 0);
    window_buf150_buf150d_o->acquire(*window_buf150_buf150d_o, LOCK_17_5_0_0, LOCK_17_5_1_0, 1-index);
    window_buf159_buf159d_o->setData(*window_buf159_buf159d_o, (float*)buf159, (float*)buf159d, 1-index, 0);
    window_buf159_buf159d_o->acquire(*window_buf159_buf159d_o, LOCK_17_5_2_0, LOCK_17_5_3_0, 1-index);
    orthogonalize<128>(window_buf134_buf134d_i[0],window_buf143_buf143d_i[0],window_buf150_buf150d_o[0],window_buf159_buf159d_o[0]);
    window_buf134_buf134d_i->release(*window_buf134_buf134d_i, LOCK_16_6_0_0, LOCK_16_6_1_0, 1-index);
    window_buf143_buf143d_i->release(*window_buf143_buf143d_i, LOCK_17_6_0_7648, LOCK_17_6_1_0, 1-index);
    window_buf150_buf150d_o->release(*window_buf150_buf150d_o, LOCK_17_5_0_0, LOCK_17_5_1_0, 1-index);
    window_buf159_buf159d_o->release(*window_buf159_buf159d_o, LOCK_17_5_2_0, LOCK_17_5_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_17_6_bounds > 0)
      --proc_17_6_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}