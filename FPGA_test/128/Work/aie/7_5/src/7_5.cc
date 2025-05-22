// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /home/luanxinya/SVD/FPGA_test/128/./Work/aie/7_5/src/7_5.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_7_5_0_0 16
#define LOCK_7_5_1_0 17
#define LOCK_8_5_0_0 48
#define LOCK_8_5_1_0 49
#define LOCK_7_6_0_3552 32
#define LOCK_7_6_1_2080 33
#define LOCK_7_6_2_0 34
#define LOCK_7_6_3_0 35

// Declare shared memory buffers
v4float buf104[33];
v4float buf104d[33];
v4float buf106[33];
v4float buf106d[33];
v4float buf88[33];
v4float buf88d[33];
v4float buf90[33];
v4float buf90d[33];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<129u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf88_buf88d_i[1] = {{(float*)buf88, 129, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<129u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf90_buf90d_i[1] = {{(float*)buf90, 129, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<129u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf104_buf104d_o[1] = {{(float*)buf104, 129, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<129u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf106_buf106d_o[1] = {{(float*)buf106, 129, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_7_5_bounds = sync_buffer[1];

  while (proc_7_5_bounds)
  {

    // Kernel call : i46:orthogonalize<128>
    window_buf88_buf88d_i->setData(*window_buf88_buf88d_i, (float*)buf88, (float*)buf88d, 1-index, 0);
    window_buf88_buf88d_i->acquire(*window_buf88_buf88d_i, LOCK_7_5_0_0, LOCK_7_5_1_0, 1-index);
    window_buf90_buf90d_i->setData(*window_buf90_buf90d_i, (float*)buf90, (float*)buf90d, 1-index, 0);
    window_buf90_buf90d_i->acquire(*window_buf90_buf90d_i, LOCK_8_5_0_0, LOCK_8_5_1_0, 1-index);
    window_buf104_buf104d_o->setData(*window_buf104_buf104d_o, (float*)buf104, (float*)buf104d, 1-index, 0);
    window_buf104_buf104d_o->acquire(*window_buf104_buf104d_o, LOCK_7_6_0_3552, LOCK_7_6_1_2080, 1-index);
    window_buf106_buf106d_o->setData(*window_buf106_buf106d_o, (float*)buf106, (float*)buf106d, 1-index, 0);
    window_buf106_buf106d_o->acquire(*window_buf106_buf106d_o, LOCK_7_6_2_0, LOCK_7_6_3_0, 1-index);
    orthogonalize<128>(window_buf88_buf88d_i[0],window_buf90_buf90d_i[0],window_buf104_buf104d_o[0],window_buf106_buf106d_o[0]);
    window_buf88_buf88d_i->release(*window_buf88_buf88d_i, LOCK_7_5_0_0, LOCK_7_5_1_0, 1-index);
    window_buf90_buf90d_i->release(*window_buf90_buf90d_i, LOCK_8_5_0_0, LOCK_8_5_1_0, 1-index);
    window_buf104_buf104d_o->release(*window_buf104_buf104d_o, LOCK_7_6_0_3552, LOCK_7_6_1_2080, 1-index);
    window_buf106_buf106d_o->release(*window_buf106_buf106d_o, LOCK_7_6_2_0, LOCK_7_6_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_7_5_bounds > 0)
      --proc_7_5_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}