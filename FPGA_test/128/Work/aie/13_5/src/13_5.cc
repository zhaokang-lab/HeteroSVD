// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /home/luanxinya/SVD/FPGA_test/128/./Work/aie/13_5/src/13_5.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_13_5_0_0 16
#define LOCK_13_5_1_0 17
#define LOCK_14_5_2_0 50
#define LOCK_14_5_3_0 51
#define LOCK_13_4_0_0 0
#define LOCK_13_4_1_0 1
#define LOCK_13_4_2_0 2
#define LOCK_13_4_3_0 3

// Declare shared memory buffers
v4float buf145[33];
v4float buf145d[33];
v4float buf156[33];
v4float buf156d[33];
v4float buf161[33];
v4float buf161d[33];
v4float buf172[33];
v4float buf172d[33];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<129u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf145_buf145d_i[1] = {{(float*)buf145, 129, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<129u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf156_buf156d_i[1] = {{(float*)buf156, 129, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<129u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf161_buf161d_o[1] = {{(float*)buf161, 129, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<129u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf172_buf172d_o[1] = {{(float*)buf172, 129, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_13_5_bounds = sync_buffer[1];

  while (proc_13_5_bounds)
  {

    // Kernel call : i75:orthogonalize<128>
    window_buf145_buf145d_i->setData(*window_buf145_buf145d_i, (float*)buf145, (float*)buf145d, 1-index, 0);
    window_buf145_buf145d_i->acquire(*window_buf145_buf145d_i, LOCK_13_5_0_0, LOCK_13_5_1_0, 1-index);
    window_buf156_buf156d_i->setData(*window_buf156_buf156d_i, (float*)buf156, (float*)buf156d, 1-index, 0);
    window_buf156_buf156d_i->acquire(*window_buf156_buf156d_i, LOCK_14_5_2_0, LOCK_14_5_3_0, 1-index);
    window_buf161_buf161d_o->setData(*window_buf161_buf161d_o, (float*)buf161, (float*)buf161d, 1-index, 0);
    window_buf161_buf161d_o->acquire(*window_buf161_buf161d_o, LOCK_13_4_0_0, LOCK_13_4_1_0, 1-index);
    window_buf172_buf172d_o->setData(*window_buf172_buf172d_o, (float*)buf172, (float*)buf172d, 1-index, 0);
    window_buf172_buf172d_o->acquire(*window_buf172_buf172d_o, LOCK_13_4_2_0, LOCK_13_4_3_0, 1-index);
    orthogonalize<128>(window_buf145_buf145d_i[0],window_buf156_buf156d_i[0],window_buf161_buf161d_o[0],window_buf172_buf172d_o[0]);
    window_buf145_buf145d_i->release(*window_buf145_buf145d_i, LOCK_13_5_0_0, LOCK_13_5_1_0, 1-index);
    window_buf156_buf156d_i->release(*window_buf156_buf156d_i, LOCK_14_5_2_0, LOCK_14_5_3_0, 1-index);
    window_buf161_buf161d_o->release(*window_buf161_buf161d_o, LOCK_13_4_0_0, LOCK_13_4_1_0, 1-index);
    window_buf172_buf172d_o->release(*window_buf172_buf172d_o, LOCK_13_4_2_0, LOCK_13_4_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_13_5_bounds > 0)
      --proc_13_5_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}