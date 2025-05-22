// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /home/luanxinya/SVD/FPGA_test/128/./Work/aie/6_0/src/6_0.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_5_0_0_0 16
#define LOCK_5_0_1_7648 17
#define LOCK_5_0_2_0 18
#define LOCK_5_0_3_4640 19
#define LOCK_6_1_2_0 34
#define LOCK_6_1_3_0 35
#define LOCK_6_1_0_0 32
#define LOCK_6_1_1_0 33

// Declare shared memory buffers
v4float buf10[33];
v4float buf10d[33];
v4float buf11[33];
v4float buf11d[33];
v4float buf26[33];
v4float buf26d[33];
v4float buf27[33];
v4float buf27d[33];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<129u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf10_buf10d_i[1] = {{(float*)buf10, 129, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<129u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf11_buf11d_i[1] = {{(float*)buf11, 129, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<129u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf26_buf26d_o[1] = {{(float*)buf26, 129, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<129u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf27_buf27d_o[1] = {{(float*)buf27, 129, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_6_0_bounds = sync_buffer[1];

  while (proc_6_0_bounds)
  {

    // Kernel call : i5:orthogonalize<128>
    window_buf10_buf10d_i->setData(*window_buf10_buf10d_i, (float*)buf10, (float*)buf10d, 1-index, 0);
    window_buf10_buf10d_i->acquire(*window_buf10_buf10d_i, LOCK_5_0_0_0, LOCK_5_0_1_7648, 1-index);
    window_buf11_buf11d_i->setData(*window_buf11_buf11d_i, (float*)buf11, (float*)buf11d, 1-index, 0);
    window_buf11_buf11d_i->acquire(*window_buf11_buf11d_i, LOCK_5_0_2_0, LOCK_5_0_3_4640, 1-index);
    window_buf26_buf26d_o->setData(*window_buf26_buf26d_o, (float*)buf26, (float*)buf26d, 1-index, 0);
    window_buf26_buf26d_o->acquire(*window_buf26_buf26d_o, LOCK_6_1_2_0, LOCK_6_1_3_0, 1-index);
    window_buf27_buf27d_o->setData(*window_buf27_buf27d_o, (float*)buf27, (float*)buf27d, 1-index, 0);
    window_buf27_buf27d_o->acquire(*window_buf27_buf27d_o, LOCK_6_1_0_0, LOCK_6_1_1_0, 1-index);
    orthogonalize<128>(window_buf10_buf10d_i[0],window_buf11_buf11d_i[0],window_buf26_buf26d_o[0],window_buf27_buf27d_o[0]);
    window_buf10_buf10d_i->release(*window_buf10_buf10d_i, LOCK_5_0_0_0, LOCK_5_0_1_7648, 1-index);
    window_buf11_buf11d_i->release(*window_buf11_buf11d_i, LOCK_5_0_2_0, LOCK_5_0_3_4640, 1-index);
    window_buf26_buf26d_o->release(*window_buf26_buf26d_o, LOCK_6_1_2_0, LOCK_6_1_3_0, 1-index);
    window_buf27_buf27d_o->release(*window_buf27_buf27d_o, LOCK_6_1_0_0, LOCK_6_1_1_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_6_0_bounds > 0)
      --proc_6_0_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}