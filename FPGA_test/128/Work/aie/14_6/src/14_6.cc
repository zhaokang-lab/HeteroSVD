// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /home/luanxinya/SVD/FPGA_test/128/./Work/aie/14_6/src/14_6.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_13_6_0_7648 16
#define LOCK_13_6_1_0 17
#define LOCK_14_6_2_0 50
#define LOCK_14_6_3_0 51
#define LOCK_14_5_0_0 0
#define LOCK_14_5_1_0 1
#define LOCK_14_5_2_0 2
#define LOCK_14_5_3_0 3

// Declare shared memory buffers
v4float buf128[33];
v4float buf128d[33];
v4float buf140[33];
v4float buf140d[33];
v4float buf144[33];
v4float buf144d[33];
v4float buf156[33];
v4float buf156d[33];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<129u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf128_buf128d_i[1] = {{(float*)buf128, 129, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<129u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf140_buf140d_i[1] = {{(float*)buf140, 129, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<129u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf144_buf144d_o[1] = {{(float*)buf144, 129, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<129u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf156_buf156d_o[1] = {{(float*)buf156, 129, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_14_6_bounds = sync_buffer[1];

  while (proc_14_6_bounds)
  {

    // Kernel call : i68:orthogonalize<128>
    window_buf128_buf128d_i->setData(*window_buf128_buf128d_i, (float*)buf128, (float*)buf128d, 1-index, 0);
    window_buf128_buf128d_i->acquire(*window_buf128_buf128d_i, LOCK_13_6_0_7648, LOCK_13_6_1_0, 1-index);
    window_buf140_buf140d_i->setData(*window_buf140_buf140d_i, (float*)buf140, (float*)buf140d, 1-index, 0);
    window_buf140_buf140d_i->acquire(*window_buf140_buf140d_i, LOCK_14_6_2_0, LOCK_14_6_3_0, 1-index);
    window_buf144_buf144d_o->setData(*window_buf144_buf144d_o, (float*)buf144, (float*)buf144d, 1-index, 0);
    window_buf144_buf144d_o->acquire(*window_buf144_buf144d_o, LOCK_14_5_0_0, LOCK_14_5_1_0, 1-index);
    window_buf156_buf156d_o->setData(*window_buf156_buf156d_o, (float*)buf156, (float*)buf156d, 1-index, 0);
    window_buf156_buf156d_o->acquire(*window_buf156_buf156d_o, LOCK_14_5_2_0, LOCK_14_5_3_0, 1-index);
    orthogonalize<128>(window_buf128_buf128d_i[0],window_buf140_buf140d_i[0],window_buf144_buf144d_o[0],window_buf156_buf156d_o[0]);
    window_buf128_buf128d_i->release(*window_buf128_buf128d_i, LOCK_13_6_0_7648, LOCK_13_6_1_0, 1-index);
    window_buf140_buf140d_i->release(*window_buf140_buf140d_i, LOCK_14_6_2_0, LOCK_14_6_3_0, 1-index);
    window_buf144_buf144d_o->release(*window_buf144_buf144d_o, LOCK_14_5_0_0, LOCK_14_5_1_0, 1-index);
    window_buf156_buf156d_o->release(*window_buf156_buf156d_o, LOCK_14_5_2_0, LOCK_14_5_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_14_6_bounds > 0)
      --proc_14_6_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}