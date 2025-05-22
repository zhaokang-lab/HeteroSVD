// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /home/luanxinya/SVD/FPGA_test/128/./Work/aie/13_6/src/13_6.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_12_6_0_7648 16
#define LOCK_12_6_1_0 17
#define LOCK_13_6_2_0 50
#define LOCK_13_6_3_0 51
#define LOCK_13_5_0_0 0
#define LOCK_13_5_1_0 1
#define LOCK_13_5_2_0 2
#define LOCK_13_5_3_0 3

// Declare shared memory buffers
v4float buf129[33];
v4float buf129d[33];
v4float buf142[33];
v4float buf142d[33];
v4float buf145[33];
v4float buf145d[33];
v4float buf158[33];
v4float buf158d[33];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<129u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf129_buf129d_i[1] = {{(float*)buf129, 129, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<129u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf142_buf142d_i[1] = {{(float*)buf142, 129, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<129u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf145_buf145d_o[1] = {{(float*)buf145, 129, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<129u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf158_buf158d_o[1] = {{(float*)buf158, 129, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_13_6_bounds = sync_buffer[1];

  while (proc_13_6_bounds)
  {

    // Kernel call : i67:orthogonalize<128>
    window_buf129_buf129d_i->setData(*window_buf129_buf129d_i, (float*)buf129, (float*)buf129d, 1-index, 0);
    window_buf129_buf129d_i->acquire(*window_buf129_buf129d_i, LOCK_12_6_0_7648, LOCK_12_6_1_0, 1-index);
    window_buf142_buf142d_i->setData(*window_buf142_buf142d_i, (float*)buf142, (float*)buf142d, 1-index, 0);
    window_buf142_buf142d_i->acquire(*window_buf142_buf142d_i, LOCK_13_6_2_0, LOCK_13_6_3_0, 1-index);
    window_buf145_buf145d_o->setData(*window_buf145_buf145d_o, (float*)buf145, (float*)buf145d, 1-index, 0);
    window_buf145_buf145d_o->acquire(*window_buf145_buf145d_o, LOCK_13_5_0_0, LOCK_13_5_1_0, 1-index);
    window_buf158_buf158d_o->setData(*window_buf158_buf158d_o, (float*)buf158, (float*)buf158d, 1-index, 0);
    window_buf158_buf158d_o->acquire(*window_buf158_buf158d_o, LOCK_13_5_2_0, LOCK_13_5_3_0, 1-index);
    orthogonalize<128>(window_buf129_buf129d_i[0],window_buf142_buf142d_i[0],window_buf145_buf145d_o[0],window_buf158_buf158d_o[0]);
    window_buf129_buf129d_i->release(*window_buf129_buf129d_i, LOCK_12_6_0_7648, LOCK_12_6_1_0, 1-index);
    window_buf142_buf142d_i->release(*window_buf142_buf142d_i, LOCK_13_6_2_0, LOCK_13_6_3_0, 1-index);
    window_buf145_buf145d_o->release(*window_buf145_buf145d_o, LOCK_13_5_0_0, LOCK_13_5_1_0, 1-index);
    window_buf158_buf158d_o->release(*window_buf158_buf158d_o, LOCK_13_5_2_0, LOCK_13_5_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_13_6_bounds > 0)
      --proc_13_6_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}