// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /home/luanxinya/SVD/FPGA_test/128/./Work/aie/6_1/src/6_1.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_6_1_2_0 18
#define LOCK_6_1_3_0 19
#define LOCK_7_1_0_0 48
#define LOCK_7_1_1_0 49
#define LOCK_6_2_0_0 32
#define LOCK_6_2_1_0 33
#define LOCK_6_2_2_0 34
#define LOCK_6_2_3_0 35

// Declare shared memory buffers
v4float buf26[33];
v4float buf26d[33];
v4float buf29[33];
v4float buf29d[33];
v4float buf42[33];
v4float buf42d[33];
v4float buf45[33];
v4float buf45d[33];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<129u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf26_buf26d_i[1] = {{(float*)buf26, 129, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<129u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf29_buf29d_i[1] = {{(float*)buf29, 129, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<129u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf42_buf42d_o[1] = {{(float*)buf42, 129, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<129u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf45_buf45d_o[1] = {{(float*)buf45, 129, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_6_1_bounds = sync_buffer[1];

  while (proc_6_1_bounds)
  {

    // Kernel call : i13:orthogonalize<128>
    window_buf26_buf26d_i->setData(*window_buf26_buf26d_i, (float*)buf26, (float*)buf26d, 1-index, 0);
    window_buf26_buf26d_i->acquire(*window_buf26_buf26d_i, LOCK_6_1_2_0, LOCK_6_1_3_0, 1-index);
    window_buf29_buf29d_i->setData(*window_buf29_buf29d_i, (float*)buf29, (float*)buf29d, 1-index, 0);
    window_buf29_buf29d_i->acquire(*window_buf29_buf29d_i, LOCK_7_1_0_0, LOCK_7_1_1_0, 1-index);
    window_buf42_buf42d_o->setData(*window_buf42_buf42d_o, (float*)buf42, (float*)buf42d, 1-index, 0);
    window_buf42_buf42d_o->acquire(*window_buf42_buf42d_o, LOCK_6_2_0_0, LOCK_6_2_1_0, 1-index);
    window_buf45_buf45d_o->setData(*window_buf45_buf45d_o, (float*)buf45, (float*)buf45d, 1-index, 0);
    window_buf45_buf45d_o->acquire(*window_buf45_buf45d_o, LOCK_6_2_2_0, LOCK_6_2_3_0, 1-index);
    orthogonalize<128>(window_buf26_buf26d_i[0],window_buf29_buf29d_i[0],window_buf42_buf42d_o[0],window_buf45_buf45d_o[0]);
    window_buf26_buf26d_i->release(*window_buf26_buf26d_i, LOCK_6_1_2_0, LOCK_6_1_3_0, 1-index);
    window_buf29_buf29d_i->release(*window_buf29_buf29d_i, LOCK_7_1_0_0, LOCK_7_1_1_0, 1-index);
    window_buf42_buf42d_o->release(*window_buf42_buf42d_o, LOCK_6_2_0_0, LOCK_6_2_1_0, 1-index);
    window_buf45_buf45d_o->release(*window_buf45_buf45d_o, LOCK_6_2_2_0, LOCK_6_2_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_6_1_bounds > 0)
      --proc_6_1_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}