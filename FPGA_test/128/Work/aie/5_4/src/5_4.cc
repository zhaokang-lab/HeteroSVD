// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /home/luanxinya/SVD/FPGA_test/128/./Work/aie/5_4/src/5_4.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_4_4_0_0 16
#define LOCK_4_4_1_0 17
#define LOCK_5_4_2_0 50
#define LOCK_5_4_3_0 51
#define LOCK_5_5_0_0 32
#define LOCK_5_5_1_0 33
#define LOCK_5_5_2_0 34
#define LOCK_5_5_3_0 35

// Declare shared memory buffers
v4float buf68[33];
v4float buf68d[33];
v4float buf77[33];
v4float buf77d[33];
v4float buf84[33];
v4float buf84d[33];
v4float buf93[33];
v4float buf93d[33];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<129u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf68_buf68d_i[1] = {{(float*)buf68, 129, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<129u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf77_buf77d_i[1] = {{(float*)buf77, 129, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<129u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf84_buf84d_o[1] = {{(float*)buf84, 129, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<129u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf93_buf93d_o[1] = {{(float*)buf93, 129, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_5_4_bounds = sync_buffer[1];

  while (proc_5_4_bounds)
  {

    // Kernel call : i36:orthogonalize<128>
    window_buf68_buf68d_i->setData(*window_buf68_buf68d_i, (float*)buf68, (float*)buf68d, 1-index, 0);
    window_buf68_buf68d_i->acquire(*window_buf68_buf68d_i, LOCK_4_4_0_0, LOCK_4_4_1_0, 1-index);
    window_buf77_buf77d_i->setData(*window_buf77_buf77d_i, (float*)buf77, (float*)buf77d, 1-index, 0);
    window_buf77_buf77d_i->acquire(*window_buf77_buf77d_i, LOCK_5_4_2_0, LOCK_5_4_3_0, 1-index);
    window_buf84_buf84d_o->setData(*window_buf84_buf84d_o, (float*)buf84, (float*)buf84d, 1-index, 0);
    window_buf84_buf84d_o->acquire(*window_buf84_buf84d_o, LOCK_5_5_0_0, LOCK_5_5_1_0, 1-index);
    window_buf93_buf93d_o->setData(*window_buf93_buf93d_o, (float*)buf93, (float*)buf93d, 1-index, 0);
    window_buf93_buf93d_o->acquire(*window_buf93_buf93d_o, LOCK_5_5_2_0, LOCK_5_5_3_0, 1-index);
    orthogonalize<128>(window_buf68_buf68d_i[0],window_buf77_buf77d_i[0],window_buf84_buf84d_o[0],window_buf93_buf93d_o[0]);
    window_buf68_buf68d_i->release(*window_buf68_buf68d_i, LOCK_4_4_0_0, LOCK_4_4_1_0, 1-index);
    window_buf77_buf77d_i->release(*window_buf77_buf77d_i, LOCK_5_4_2_0, LOCK_5_4_3_0, 1-index);
    window_buf84_buf84d_o->release(*window_buf84_buf84d_o, LOCK_5_5_0_0, LOCK_5_5_1_0, 1-index);
    window_buf93_buf93d_o->release(*window_buf93_buf93d_o, LOCK_5_5_2_0, LOCK_5_5_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_5_4_bounds > 0)
      --proc_5_4_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}