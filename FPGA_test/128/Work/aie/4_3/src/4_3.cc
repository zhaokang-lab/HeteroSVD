// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /home/luanxinya/SVD/FPGA_test/128/./Work/aie/4_3/src/4_3.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_4_3_0_0 16
#define LOCK_4_3_1_0 17
#define LOCK_5_3_2_0 50
#define LOCK_5_3_3_0 51
#define LOCK_4_4_0_0 32
#define LOCK_4_4_1_0 33
#define LOCK_4_4_2_0 34
#define LOCK_4_4_3_0 35

// Declare shared memory buffers
v4float buf52[33];
v4float buf52d[33];
v4float buf59[33];
v4float buf59d[33];
v4float buf68[33];
v4float buf68d[33];
v4float buf75[33];
v4float buf75d[33];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<129u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf52_buf52d_i[1] = {{(float*)buf52, 129, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<129u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf59_buf59d_i[1] = {{(float*)buf59, 129, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<129u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf68_buf68d_o[1] = {{(float*)buf68, 129, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<129u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf75_buf75d_o[1] = {{(float*)buf75, 129, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_4_3_bounds = sync_buffer[1];

  while (proc_4_3_bounds)
  {

    // Kernel call : i27:orthogonalize<128>
    window_buf52_buf52d_i->setData(*window_buf52_buf52d_i, (float*)buf52, (float*)buf52d, 1-index, 0);
    window_buf52_buf52d_i->acquire(*window_buf52_buf52d_i, LOCK_4_3_0_0, LOCK_4_3_1_0, 1-index);
    window_buf59_buf59d_i->setData(*window_buf59_buf59d_i, (float*)buf59, (float*)buf59d, 1-index, 0);
    window_buf59_buf59d_i->acquire(*window_buf59_buf59d_i, LOCK_5_3_2_0, LOCK_5_3_3_0, 1-index);
    window_buf68_buf68d_o->setData(*window_buf68_buf68d_o, (float*)buf68, (float*)buf68d, 1-index, 0);
    window_buf68_buf68d_o->acquire(*window_buf68_buf68d_o, LOCK_4_4_0_0, LOCK_4_4_1_0, 1-index);
    window_buf75_buf75d_o->setData(*window_buf75_buf75d_o, (float*)buf75, (float*)buf75d, 1-index, 0);
    window_buf75_buf75d_o->acquire(*window_buf75_buf75d_o, LOCK_4_4_2_0, LOCK_4_4_3_0, 1-index);
    orthogonalize<128>(window_buf52_buf52d_i[0],window_buf59_buf59d_i[0],window_buf68_buf68d_o[0],window_buf75_buf75d_o[0]);
    window_buf52_buf52d_i->release(*window_buf52_buf52d_i, LOCK_4_3_0_0, LOCK_4_3_1_0, 1-index);
    window_buf59_buf59d_i->release(*window_buf59_buf59d_i, LOCK_5_3_2_0, LOCK_5_3_3_0, 1-index);
    window_buf68_buf68d_o->release(*window_buf68_buf68d_o, LOCK_4_4_0_0, LOCK_4_4_1_0, 1-index);
    window_buf75_buf75d_o->release(*window_buf75_buf75d_o, LOCK_4_4_2_0, LOCK_4_4_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_4_3_bounds > 0)
      --proc_4_3_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}