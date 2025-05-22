// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /home/luanxinya/SVD/FPGA_test/128/./Work/aie/14_1/src/14_1.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_14_1_0_0 16
#define LOCK_14_1_1_0 17
#define LOCK_15_1_2_0 50
#define LOCK_15_1_3_0 51
#define LOCK_14_0_0_7648 0
#define LOCK_14_0_1_0 1
#define LOCK_14_0_2_0 2
#define LOCK_14_0_3_0 3

// Declare shared memory buffers
v4float buf211[33];
v4float buf211d[33];
v4float buf214[33];
v4float buf214d[33];
v4float buf227[33];
v4float buf227d[33];
v4float buf230[33];
v4float buf230d[33];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<129u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf211_buf211d_i[1] = {{(float*)buf211, 129, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<129u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf214_buf214d_i[1] = {{(float*)buf214, 129, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<129u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf227_buf227d_o[1] = {{(float*)buf227, 129, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<129u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf230_buf230d_o[1] = {{(float*)buf230, 129, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_14_1_bounds = sync_buffer[1];

  while (proc_14_1_bounds)
  {

    // Kernel call : i108:orthogonalize<128>
    window_buf211_buf211d_i->setData(*window_buf211_buf211d_i, (float*)buf211, (float*)buf211d, 1-index, 0);
    window_buf211_buf211d_i->acquire(*window_buf211_buf211d_i, LOCK_14_1_0_0, LOCK_14_1_1_0, 1-index);
    window_buf214_buf214d_i->setData(*window_buf214_buf214d_i, (float*)buf214, (float*)buf214d, 1-index, 0);
    window_buf214_buf214d_i->acquire(*window_buf214_buf214d_i, LOCK_15_1_2_0, LOCK_15_1_3_0, 1-index);
    window_buf227_buf227d_o->setData(*window_buf227_buf227d_o, (float*)buf227, (float*)buf227d, 1-index, 0);
    window_buf227_buf227d_o->acquire(*window_buf227_buf227d_o, LOCK_14_0_0_7648, LOCK_14_0_1_0, 1-index);
    window_buf230_buf230d_o->setData(*window_buf230_buf230d_o, (float*)buf230, (float*)buf230d, 1-index, 0);
    window_buf230_buf230d_o->acquire(*window_buf230_buf230d_o, LOCK_14_0_2_0, LOCK_14_0_3_0, 1-index);
    orthogonalize<128>(window_buf211_buf211d_i[0],window_buf214_buf214d_i[0],window_buf227_buf227d_o[0],window_buf230_buf230d_o[0]);
    window_buf211_buf211d_i->release(*window_buf211_buf211d_i, LOCK_14_1_0_0, LOCK_14_1_1_0, 1-index);
    window_buf214_buf214d_i->release(*window_buf214_buf214d_i, LOCK_15_1_2_0, LOCK_15_1_3_0, 1-index);
    window_buf227_buf227d_o->release(*window_buf227_buf227d_o, LOCK_14_0_0_7648, LOCK_14_0_1_0, 1-index);
    window_buf230_buf230d_o->release(*window_buf230_buf230d_o, LOCK_14_0_2_0, LOCK_14_0_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_14_1_bounds > 0)
      --proc_14_1_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}