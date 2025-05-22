// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /home/luanxinya/SVD/FPGA_test/128/./Work/aie/14_5/src/14_5.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_14_5_0_0 16
#define LOCK_14_5_1_0 17
#define LOCK_15_5_2_0 50
#define LOCK_15_5_3_0 51
#define LOCK_14_4_0_0 0
#define LOCK_14_4_1_0 1
#define LOCK_14_4_2_0 2
#define LOCK_14_4_3_0 3

// Declare shared memory buffers
v4float buf144[33];
v4float buf144d[33];
v4float buf154[33];
v4float buf154d[33];
v4float buf160[33];
v4float buf160d[33];
v4float buf170[33];
v4float buf170d[33];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<129u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf144_buf144d_i[1] = {{(float*)buf144, 129, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<129u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf154_buf154d_i[1] = {{(float*)buf154, 129, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<129u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf160_buf160d_o[1] = {{(float*)buf160, 129, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<129u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf170_buf170d_o[1] = {{(float*)buf170, 129, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_14_5_bounds = sync_buffer[1];

  while (proc_14_5_bounds)
  {

    // Kernel call : i76:orthogonalize<128>
    window_buf144_buf144d_i->setData(*window_buf144_buf144d_i, (float*)buf144, (float*)buf144d, 1-index, 0);
    window_buf144_buf144d_i->acquire(*window_buf144_buf144d_i, LOCK_14_5_0_0, LOCK_14_5_1_0, 1-index);
    window_buf154_buf154d_i->setData(*window_buf154_buf154d_i, (float*)buf154, (float*)buf154d, 1-index, 0);
    window_buf154_buf154d_i->acquire(*window_buf154_buf154d_i, LOCK_15_5_2_0, LOCK_15_5_3_0, 1-index);
    window_buf160_buf160d_o->setData(*window_buf160_buf160d_o, (float*)buf160, (float*)buf160d, 1-index, 0);
    window_buf160_buf160d_o->acquire(*window_buf160_buf160d_o, LOCK_14_4_0_0, LOCK_14_4_1_0, 1-index);
    window_buf170_buf170d_o->setData(*window_buf170_buf170d_o, (float*)buf170, (float*)buf170d, 1-index, 0);
    window_buf170_buf170d_o->acquire(*window_buf170_buf170d_o, LOCK_14_4_2_0, LOCK_14_4_3_0, 1-index);
    orthogonalize<128>(window_buf144_buf144d_i[0],window_buf154_buf154d_i[0],window_buf160_buf160d_o[0],window_buf170_buf170d_o[0]);
    window_buf144_buf144d_i->release(*window_buf144_buf144d_i, LOCK_14_5_0_0, LOCK_14_5_1_0, 1-index);
    window_buf154_buf154d_i->release(*window_buf154_buf154d_i, LOCK_15_5_2_0, LOCK_15_5_3_0, 1-index);
    window_buf160_buf160d_o->release(*window_buf160_buf160d_o, LOCK_14_4_0_0, LOCK_14_4_1_0, 1-index);
    window_buf170_buf170d_o->release(*window_buf170_buf170d_o, LOCK_14_4_2_0, LOCK_14_4_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_14_5_bounds > 0)
      --proc_14_5_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}