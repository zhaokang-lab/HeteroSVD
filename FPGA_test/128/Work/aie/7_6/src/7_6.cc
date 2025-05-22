// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /home/luanxinya/SVD/FPGA_test/128/./Work/aie/7_6/src/7_6.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_6_6_0_0 16
#define LOCK_6_6_1_0 17
#define LOCK_7_6_2_0 50
#define LOCK_7_6_3_0 51
#define LOCK_7_7_0_0 32
#define LOCK_7_7_1_0 33
#define LOCK_7_7_2_0 34
#define LOCK_7_7_3_0 35

// Declare shared memory buffers
v4float buf102[33];
v4float buf102d[33];
v4float buf106[33];
v4float buf106d[33];
v4float buf118[33];
v4float buf118d[33];
v4float buf122[33];
v4float buf122d[33];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<129u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf102_buf102d_i[1] = {{(float*)buf102, 129, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<129u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf106_buf106d_i[1] = {{(float*)buf106, 129, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<129u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf118_buf118d_o[1] = {{(float*)buf118, 129, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<129u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf122_buf122d_o[1] = {{(float*)buf122, 129, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_7_6_bounds = sync_buffer[1];

  while (proc_7_6_bounds)
  {

    // Kernel call : i54:orthogonalize<128>
    window_buf102_buf102d_i->setData(*window_buf102_buf102d_i, (float*)buf102, (float*)buf102d, 1-index, 0);
    window_buf102_buf102d_i->acquire(*window_buf102_buf102d_i, LOCK_6_6_0_0, LOCK_6_6_1_0, 1-index);
    window_buf106_buf106d_i->setData(*window_buf106_buf106d_i, (float*)buf106, (float*)buf106d, 1-index, 0);
    window_buf106_buf106d_i->acquire(*window_buf106_buf106d_i, LOCK_7_6_2_0, LOCK_7_6_3_0, 1-index);
    window_buf118_buf118d_o->setData(*window_buf118_buf118d_o, (float*)buf118, (float*)buf118d, 1-index, 0);
    window_buf118_buf118d_o->acquire(*window_buf118_buf118d_o, LOCK_7_7_0_0, LOCK_7_7_1_0, 1-index);
    window_buf122_buf122d_o->setData(*window_buf122_buf122d_o, (float*)buf122, (float*)buf122d, 1-index, 0);
    window_buf122_buf122d_o->acquire(*window_buf122_buf122d_o, LOCK_7_7_2_0, LOCK_7_7_3_0, 1-index);
    orthogonalize<128>(window_buf102_buf102d_i[0],window_buf106_buf106d_i[0],window_buf118_buf118d_o[0],window_buf122_buf122d_o[0]);
    window_buf102_buf102d_i->release(*window_buf102_buf102d_i, LOCK_6_6_0_0, LOCK_6_6_1_0, 1-index);
    window_buf106_buf106d_i->release(*window_buf106_buf106d_i, LOCK_7_6_2_0, LOCK_7_6_3_0, 1-index);
    window_buf118_buf118d_o->release(*window_buf118_buf118d_o, LOCK_7_7_0_0, LOCK_7_7_1_0, 1-index);
    window_buf122_buf122d_o->release(*window_buf122_buf122d_o, LOCK_7_7_2_0, LOCK_7_7_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_7_6_bounds > 0)
      --proc_7_6_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}