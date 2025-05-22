// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /home/luanxinya/SVD/FPGA_test/128/./Work/aie/3_1/src/3_1.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_3_1_0_0 16
#define LOCK_3_1_1_0 17
#define LOCK_4_1_0_0 48
#define LOCK_4_1_1_0 49
#define LOCK_3_2_0_7648 32
#define LOCK_3_2_1_0 33
#define LOCK_3_2_2_0 34
#define LOCK_3_2_3_0 35

// Declare shared memory buffers
v4float buf20[33];
v4float buf20d[33];
v4float buf23[33];
v4float buf23d[33];
v4float buf36[33];
v4float buf36d[33];
v4float buf39[33];
v4float buf39d[33];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<129u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf20_buf20d_i[1] = {{(float*)buf20, 129, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<129u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf23_buf23d_i[1] = {{(float*)buf23, 129, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<129u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf36_buf36d_o[1] = {{(float*)buf36, 129, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<129u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf39_buf39d_o[1] = {{(float*)buf39, 129, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_3_1_bounds = sync_buffer[1];

  while (proc_3_1_bounds)
  {

    // Kernel call : i10:orthogonalize<128>
    window_buf20_buf20d_i->setData(*window_buf20_buf20d_i, (float*)buf20, (float*)buf20d, 1-index, 0);
    window_buf20_buf20d_i->acquire(*window_buf20_buf20d_i, LOCK_3_1_0_0, LOCK_3_1_1_0, 1-index);
    window_buf23_buf23d_i->setData(*window_buf23_buf23d_i, (float*)buf23, (float*)buf23d, 1-index, 0);
    window_buf23_buf23d_i->acquire(*window_buf23_buf23d_i, LOCK_4_1_0_0, LOCK_4_1_1_0, 1-index);
    window_buf36_buf36d_o->setData(*window_buf36_buf36d_o, (float*)buf36, (float*)buf36d, 1-index, 0);
    window_buf36_buf36d_o->acquire(*window_buf36_buf36d_o, LOCK_3_2_0_7648, LOCK_3_2_1_0, 1-index);
    window_buf39_buf39d_o->setData(*window_buf39_buf39d_o, (float*)buf39, (float*)buf39d, 1-index, 0);
    window_buf39_buf39d_o->acquire(*window_buf39_buf39d_o, LOCK_3_2_2_0, LOCK_3_2_3_0, 1-index);
    orthogonalize<128>(window_buf20_buf20d_i[0],window_buf23_buf23d_i[0],window_buf36_buf36d_o[0],window_buf39_buf39d_o[0]);
    window_buf20_buf20d_i->release(*window_buf20_buf20d_i, LOCK_3_1_0_0, LOCK_3_1_1_0, 1-index);
    window_buf23_buf23d_i->release(*window_buf23_buf23d_i, LOCK_4_1_0_0, LOCK_4_1_1_0, 1-index);
    window_buf36_buf36d_o->release(*window_buf36_buf36d_o, LOCK_3_2_0_7648, LOCK_3_2_1_0, 1-index);
    window_buf39_buf39d_o->release(*window_buf39_buf39d_o, LOCK_3_2_2_0, LOCK_3_2_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_3_1_bounds > 0)
      --proc_3_1_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}