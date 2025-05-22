// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /home/luanxinya/SVD/FPGA_test/128/./Work/aie/6_2/src/6_2.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_5_2_0_0 16
#define LOCK_5_2_1_0 17
#define LOCK_6_2_2_0 50
#define LOCK_6_2_3_0 51
#define LOCK_6_3_0_0 32
#define LOCK_6_3_1_0 33
#define LOCK_6_3_2_0 34
#define LOCK_6_3_3_0 35

// Declare shared memory buffers
v4float buf40[33];
v4float buf40d[33];
v4float buf45[33];
v4float buf45d[33];
v4float buf56[33];
v4float buf56d[33];
v4float buf61[33];
v4float buf61d[33];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<129u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf40_buf40d_i[1] = {{(float*)buf40, 129, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<129u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf45_buf45d_i[1] = {{(float*)buf45, 129, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<129u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf56_buf56d_o[1] = {{(float*)buf56, 129, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<129u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf61_buf61d_o[1] = {{(float*)buf61, 129, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_6_2_bounds = sync_buffer[1];

  while (proc_6_2_bounds)
  {

    // Kernel call : i21:orthogonalize<128>
    window_buf40_buf40d_i->setData(*window_buf40_buf40d_i, (float*)buf40, (float*)buf40d, 1-index, 0);
    window_buf40_buf40d_i->acquire(*window_buf40_buf40d_i, LOCK_5_2_0_0, LOCK_5_2_1_0, 1-index);
    window_buf45_buf45d_i->setData(*window_buf45_buf45d_i, (float*)buf45, (float*)buf45d, 1-index, 0);
    window_buf45_buf45d_i->acquire(*window_buf45_buf45d_i, LOCK_6_2_2_0, LOCK_6_2_3_0, 1-index);
    window_buf56_buf56d_o->setData(*window_buf56_buf56d_o, (float*)buf56, (float*)buf56d, 1-index, 0);
    window_buf56_buf56d_o->acquire(*window_buf56_buf56d_o, LOCK_6_3_0_0, LOCK_6_3_1_0, 1-index);
    window_buf61_buf61d_o->setData(*window_buf61_buf61d_o, (float*)buf61, (float*)buf61d, 1-index, 0);
    window_buf61_buf61d_o->acquire(*window_buf61_buf61d_o, LOCK_6_3_2_0, LOCK_6_3_3_0, 1-index);
    orthogonalize<128>(window_buf40_buf40d_i[0],window_buf45_buf45d_i[0],window_buf56_buf56d_o[0],window_buf61_buf61d_o[0]);
    window_buf40_buf40d_i->release(*window_buf40_buf40d_i, LOCK_5_2_0_0, LOCK_5_2_1_0, 1-index);
    window_buf45_buf45d_i->release(*window_buf45_buf45d_i, LOCK_6_2_2_0, LOCK_6_2_3_0, 1-index);
    window_buf56_buf56d_o->release(*window_buf56_buf56d_o, LOCK_6_3_0_0, LOCK_6_3_1_0, 1-index);
    window_buf61_buf61d_o->release(*window_buf61_buf61d_o, LOCK_6_3_2_0, LOCK_6_3_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_6_2_bounds > 0)
      --proc_6_2_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}