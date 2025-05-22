// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /home/luanxinya/SVD/FPGA_test/128/./Work/aie/15_2/src/15_2.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_14_2_2_0 18
#define LOCK_14_2_3_0 19
#define LOCK_15_2_0_0 48
#define LOCK_15_2_1_0 49
#define LOCK_15_1_0_3552 0
#define LOCK_15_1_1_2080 1
#define LOCK_15_1_2_0 2
#define LOCK_15_1_3_0 3

// Declare shared memory buffers
v4float buf193[33];
v4float buf193d[33];
v4float buf198[33];
v4float buf198d[33];
v4float buf209[33];
v4float buf209d[33];
v4float buf214[33];
v4float buf214d[33];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<129u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf193_buf193d_i[1] = {{(float*)buf193, 129, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<129u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf198_buf198d_i[1] = {{(float*)buf198, 129, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<129u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf209_buf209d_o[1] = {{(float*)buf209, 129, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<129u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf214_buf214d_o[1] = {{(float*)buf214, 129, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_15_2_bounds = sync_buffer[1];

  while (proc_15_2_bounds)
  {

    // Kernel call : i101:orthogonalize<128>
    window_buf193_buf193d_i->setData(*window_buf193_buf193d_i, (float*)buf193, (float*)buf193d, 1-index, 0);
    window_buf193_buf193d_i->acquire(*window_buf193_buf193d_i, LOCK_14_2_2_0, LOCK_14_2_3_0, 1-index);
    window_buf198_buf198d_i->setData(*window_buf198_buf198d_i, (float*)buf198, (float*)buf198d, 1-index, 0);
    window_buf198_buf198d_i->acquire(*window_buf198_buf198d_i, LOCK_15_2_0_0, LOCK_15_2_1_0, 1-index);
    window_buf209_buf209d_o->setData(*window_buf209_buf209d_o, (float*)buf209, (float*)buf209d, 1-index, 0);
    window_buf209_buf209d_o->acquire(*window_buf209_buf209d_o, LOCK_15_1_0_3552, LOCK_15_1_1_2080, 1-index);
    window_buf214_buf214d_o->setData(*window_buf214_buf214d_o, (float*)buf214, (float*)buf214d, 1-index, 0);
    window_buf214_buf214d_o->acquire(*window_buf214_buf214d_o, LOCK_15_1_2_0, LOCK_15_1_3_0, 1-index);
    orthogonalize<128>(window_buf193_buf193d_i[0],window_buf198_buf198d_i[0],window_buf209_buf209d_o[0],window_buf214_buf214d_o[0]);
    window_buf193_buf193d_i->release(*window_buf193_buf193d_i, LOCK_14_2_2_0, LOCK_14_2_3_0, 1-index);
    window_buf198_buf198d_i->release(*window_buf198_buf198d_i, LOCK_15_2_0_0, LOCK_15_2_1_0, 1-index);
    window_buf209_buf209d_o->release(*window_buf209_buf209d_o, LOCK_15_1_0_3552, LOCK_15_1_1_2080, 1-index);
    window_buf214_buf214d_o->release(*window_buf214_buf214d_o, LOCK_15_1_2_0, LOCK_15_1_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_15_2_bounds > 0)
      --proc_15_2_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}