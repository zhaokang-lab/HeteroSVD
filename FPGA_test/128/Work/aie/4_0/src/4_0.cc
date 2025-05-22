// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /home/luanxinya/SVD/FPGA_test/128/./Work/aie/4_0/src/4_0.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_3_0_0_0 16
#define LOCK_3_0_1_7648 17
#define LOCK_3_0_2_0 18
#define LOCK_3_0_3_4640 19
#define LOCK_4_1_2_0 34
#define LOCK_4_1_3_0 35
#define LOCK_4_1_0_0 32
#define LOCK_4_1_1_0 33

// Declare shared memory buffers
v4float buf22[33];
v4float buf22d[33];
v4float buf23[33];
v4float buf23d[33];
v4float buf6[33];
v4float buf6d[33];
v4float buf7[33];
v4float buf7d[33];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<129u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf6_buf6d_i[1] = {{(float*)buf6, 129, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<129u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf7_buf7d_i[1] = {{(float*)buf7, 129, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<129u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf22_buf22d_o[1] = {{(float*)buf22, 129, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<129u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf23_buf23d_o[1] = {{(float*)buf23, 129, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_4_0_bounds = sync_buffer[1];

  while (proc_4_0_bounds)
  {

    // Kernel call : i3:orthogonalize<128>
    window_buf6_buf6d_i->setData(*window_buf6_buf6d_i, (float*)buf6, (float*)buf6d, 1-index, 0);
    window_buf6_buf6d_i->acquire(*window_buf6_buf6d_i, LOCK_3_0_0_0, LOCK_3_0_1_7648, 1-index);
    window_buf7_buf7d_i->setData(*window_buf7_buf7d_i, (float*)buf7, (float*)buf7d, 1-index, 0);
    window_buf7_buf7d_i->acquire(*window_buf7_buf7d_i, LOCK_3_0_2_0, LOCK_3_0_3_4640, 1-index);
    window_buf22_buf22d_o->setData(*window_buf22_buf22d_o, (float*)buf22, (float*)buf22d, 1-index, 0);
    window_buf22_buf22d_o->acquire(*window_buf22_buf22d_o, LOCK_4_1_2_0, LOCK_4_1_3_0, 1-index);
    window_buf23_buf23d_o->setData(*window_buf23_buf23d_o, (float*)buf23, (float*)buf23d, 1-index, 0);
    window_buf23_buf23d_o->acquire(*window_buf23_buf23d_o, LOCK_4_1_0_0, LOCK_4_1_1_0, 1-index);
    orthogonalize<128>(window_buf6_buf6d_i[0],window_buf7_buf7d_i[0],window_buf22_buf22d_o[0],window_buf23_buf23d_o[0]);
    window_buf6_buf6d_i->release(*window_buf6_buf6d_i, LOCK_3_0_0_0, LOCK_3_0_1_7648, 1-index);
    window_buf7_buf7d_i->release(*window_buf7_buf7d_i, LOCK_3_0_2_0, LOCK_3_0_3_4640, 1-index);
    window_buf22_buf22d_o->release(*window_buf22_buf22d_o, LOCK_4_1_2_0, LOCK_4_1_3_0, 1-index);
    window_buf23_buf23d_o->release(*window_buf23_buf23d_o, LOCK_4_1_0_0, LOCK_4_1_1_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_4_0_bounds > 0)
      --proc_4_0_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}