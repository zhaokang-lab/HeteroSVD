// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /home/luanxinya/SVD/FPGA_test/128/./Work/aie/11_4/src/11_4.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_10_4_0_0 16
#define LOCK_10_4_1_0 17
#define LOCK_11_4_2_0 50
#define LOCK_11_4_3_0 51
#define LOCK_11_3_0_7648 0
#define LOCK_11_3_1_0 1
#define LOCK_11_3_2_0 2
#define LOCK_11_3_3_0 3

// Declare shared memory buffers
v4float buf167[33];
v4float buf167d[33];
v4float buf173[33];
v4float buf173d[33];
v4float buf183[33];
v4float buf183d[33];
v4float buf189[33];
v4float buf189d[33];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<129u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf167_buf167d_i[1] = {{(float*)buf167, 129, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<129u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf173_buf173d_i[1] = {{(float*)buf173, 129, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<129u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf183_buf183d_o[1] = {{(float*)buf183, 129, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<129u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf189_buf189d_o[1] = {{(float*)buf189, 129, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_11_4_bounds = sync_buffer[1];

  while (proc_11_4_bounds)
  {

    // Kernel call : i81:orthogonalize<128>
    window_buf167_buf167d_i->setData(*window_buf167_buf167d_i, (float*)buf167, (float*)buf167d, 1-index, 0);
    window_buf167_buf167d_i->acquire(*window_buf167_buf167d_i, LOCK_10_4_0_0, LOCK_10_4_1_0, 1-index);
    window_buf173_buf173d_i->setData(*window_buf173_buf173d_i, (float*)buf173, (float*)buf173d, 1-index, 0);
    window_buf173_buf173d_i->acquire(*window_buf173_buf173d_i, LOCK_11_4_2_0, LOCK_11_4_3_0, 1-index);
    window_buf183_buf183d_o->setData(*window_buf183_buf183d_o, (float*)buf183, (float*)buf183d, 1-index, 0);
    window_buf183_buf183d_o->acquire(*window_buf183_buf183d_o, LOCK_11_3_0_7648, LOCK_11_3_1_0, 1-index);
    window_buf189_buf189d_o->setData(*window_buf189_buf189d_o, (float*)buf189, (float*)buf189d, 1-index, 0);
    window_buf189_buf189d_o->acquire(*window_buf189_buf189d_o, LOCK_11_3_2_0, LOCK_11_3_3_0, 1-index);
    orthogonalize<128>(window_buf167_buf167d_i[0],window_buf173_buf173d_i[0],window_buf183_buf183d_o[0],window_buf189_buf189d_o[0]);
    window_buf167_buf167d_i->release(*window_buf167_buf167d_i, LOCK_10_4_0_0, LOCK_10_4_1_0, 1-index);
    window_buf173_buf173d_i->release(*window_buf173_buf173d_i, LOCK_11_4_2_0, LOCK_11_4_3_0, 1-index);
    window_buf183_buf183d_o->release(*window_buf183_buf183d_o, LOCK_11_3_0_7648, LOCK_11_3_1_0, 1-index);
    window_buf189_buf189d_o->release(*window_buf189_buf189d_o, LOCK_11_3_2_0, LOCK_11_3_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_11_4_bounds > 0)
      --proc_11_4_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}