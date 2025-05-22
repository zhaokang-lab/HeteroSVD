// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /home/luanxinya/SVD/FPGA_test/128/./Work/aie/4_6/src/4_6.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_3_6_0_0 16
#define LOCK_3_6_1_0 17
#define LOCK_4_6_2_2080 50
#define LOCK_4_6_3_0 51
#define LOCK_4_7_0_7648 32
#define LOCK_4_7_1_0 33
#define LOCK_4_7_2_0 34
#define LOCK_4_7_3_0 35

// Declare shared memory buffers
v4float buf109[33];
v4float buf109d[33];
v4float buf112[33];
v4float buf112d[33];
v4float buf125[33];
v4float buf125d[33];
v4float buf96[33];
v4float buf96d[33];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<129u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf96_buf96d_i[1] = {{(float*)buf96, 129, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<129u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf109_buf109d_i[1] = {{(float*)buf109, 129, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<129u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf112_buf112d_o[1] = {{(float*)buf112, 129, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<129u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf125_buf125d_o[1] = {{(float*)buf125, 129, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_4_6_bounds = sync_buffer[1];

  while (proc_4_6_bounds)
  {

    // Kernel call : i51:orthogonalize<128>
    window_buf96_buf96d_i->setData(*window_buf96_buf96d_i, (float*)buf96, (float*)buf96d, 1-index, 0);
    window_buf96_buf96d_i->acquire(*window_buf96_buf96d_i, LOCK_3_6_0_0, LOCK_3_6_1_0, 1-index);
    window_buf109_buf109d_i->setData(*window_buf109_buf109d_i, (float*)buf109, (float*)buf109d, 1-index, 0);
    window_buf109_buf109d_i->acquire(*window_buf109_buf109d_i, LOCK_4_6_2_2080, LOCK_4_6_3_0, 1-index);
    window_buf112_buf112d_o->setData(*window_buf112_buf112d_o, (float*)buf112, (float*)buf112d, 1-index, 0);
    window_buf112_buf112d_o->acquire(*window_buf112_buf112d_o, LOCK_4_7_0_7648, LOCK_4_7_1_0, 1-index);
    window_buf125_buf125d_o->setData(*window_buf125_buf125d_o, (float*)buf125, (float*)buf125d, 1-index, 0);
    window_buf125_buf125d_o->acquire(*window_buf125_buf125d_o, LOCK_4_7_2_0, LOCK_4_7_3_0, 1-index);
    orthogonalize<128>(window_buf96_buf96d_i[0],window_buf109_buf109d_i[0],window_buf112_buf112d_o[0],window_buf125_buf125d_o[0]);
    window_buf96_buf96d_i->release(*window_buf96_buf96d_i, LOCK_3_6_0_0, LOCK_3_6_1_0, 1-index);
    window_buf109_buf109d_i->release(*window_buf109_buf109d_i, LOCK_4_6_2_2080, LOCK_4_6_3_0, 1-index);
    window_buf112_buf112d_o->release(*window_buf112_buf112d_o, LOCK_4_7_0_7648, LOCK_4_7_1_0, 1-index);
    window_buf125_buf125d_o->release(*window_buf125_buf125d_o, LOCK_4_7_2_0, LOCK_4_7_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_4_6_bounds > 0)
      --proc_4_6_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}