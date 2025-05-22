// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /home/luanxinya/SVD/FPGA_test/128/./Work/aie/8_0/src/8_0.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_7_0_2_0 18
#define LOCK_7_0_3_0 19
#define LOCK_8_0_0_0 48
#define LOCK_8_0_1_0 49
#define LOCK_8_1_0_7648 32
#define LOCK_8_1_1_0 33
#define LOCK_8_1_2_0 34
#define LOCK_8_1_3_0 35

// Declare shared memory buffers
v4float buf14[33];
v4float buf14d[33];
v4float buf15[33];
v4float buf15d[33];
v4float buf30[33];
v4float buf30d[33];
v4float buf31[33];
v4float buf31d[33];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<129u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf14_buf14d_i[1] = {{(float*)buf14, 129, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<129u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf15_buf15d_i[1] = {{(float*)buf15, 129, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<129u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf30_buf30d_o[1] = {{(float*)buf30, 129, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<129u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf31_buf31d_o[1] = {{(float*)buf31, 129, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_8_0_bounds = sync_buffer[1];

  while (proc_8_0_bounds)
  {

    // Kernel call : i7:orthogonalize<128>
    window_buf14_buf14d_i->setData(*window_buf14_buf14d_i, (float*)buf14, (float*)buf14d, 1-index, 0);
    window_buf14_buf14d_i->acquire(*window_buf14_buf14d_i, LOCK_7_0_2_0, LOCK_7_0_3_0, 1-index);
    window_buf15_buf15d_i->setData(*window_buf15_buf15d_i, (float*)buf15, (float*)buf15d, 1-index, 0);
    window_buf15_buf15d_i->acquire(*window_buf15_buf15d_i, LOCK_8_0_0_0, LOCK_8_0_1_0, 1-index);
    window_buf30_buf30d_o->setData(*window_buf30_buf30d_o, (float*)buf30, (float*)buf30d, 1-index, 0);
    window_buf30_buf30d_o->acquire(*window_buf30_buf30d_o, LOCK_8_1_0_7648, LOCK_8_1_1_0, 1-index);
    window_buf31_buf31d_o->setData(*window_buf31_buf31d_o, (float*)buf31, (float*)buf31d, 1-index, 0);
    window_buf31_buf31d_o->acquire(*window_buf31_buf31d_o, LOCK_8_1_2_0, LOCK_8_1_3_0, 1-index);
    orthogonalize<128>(window_buf14_buf14d_i[0],window_buf15_buf15d_i[0],window_buf30_buf30d_o[0],window_buf31_buf31d_o[0]);
    window_buf14_buf14d_i->release(*window_buf14_buf14d_i, LOCK_7_0_2_0, LOCK_7_0_3_0, 1-index);
    window_buf15_buf15d_i->release(*window_buf15_buf15d_i, LOCK_8_0_0_0, LOCK_8_0_1_0, 1-index);
    window_buf30_buf30d_o->release(*window_buf30_buf30d_o, LOCK_8_1_0_7648, LOCK_8_1_1_0, 1-index);
    window_buf31_buf31d_o->release(*window_buf31_buf31d_o, LOCK_8_1_2_0, LOCK_8_1_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_8_0_bounds > 0)
      --proc_8_0_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}