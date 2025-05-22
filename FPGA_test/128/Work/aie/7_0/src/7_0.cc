// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /home/luanxinya/SVD/FPGA_test/128/./Work/aie/7_0/src/7_0.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_6_0_0_0 16
#define LOCK_6_0_1_0 17
#define LOCK_7_0_0_0 48
#define LOCK_7_0_1_3840 49
#define LOCK_7_1_2_5568 34
#define LOCK_7_1_3_544 35
#define LOCK_7_1_0_0 32
#define LOCK_7_1_1_0 33

// Declare shared memory buffers
v4float buf12[33];
v4float buf12d[33];
v4float buf13[33];
v4float buf13d[33];
v4float buf28[33];
v4float buf28d[33];
v4float buf29[33];
v4float buf29d[33];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<129u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf12_buf12d_i[1] = {{(float*)buf12, 129, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<129u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf13_buf13d_i[1] = {{(float*)buf13, 129, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<129u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf28_buf28d_o[1] = {{(float*)buf28, 129, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<129u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf29_buf29d_o[1] = {{(float*)buf29, 129, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_7_0_bounds = sync_buffer[1];

  while (proc_7_0_bounds)
  {

    // Kernel call : i6:orthogonalize<128>
    window_buf12_buf12d_i->setData(*window_buf12_buf12d_i, (float*)buf12, (float*)buf12d, 1-index, 0);
    window_buf12_buf12d_i->acquire(*window_buf12_buf12d_i, LOCK_6_0_0_0, LOCK_6_0_1_0, 1-index);
    window_buf13_buf13d_i->setData(*window_buf13_buf13d_i, (float*)buf13, (float*)buf13d, 1-index, 0);
    window_buf13_buf13d_i->acquire(*window_buf13_buf13d_i, LOCK_7_0_0_0, LOCK_7_0_1_3840, 1-index);
    window_buf28_buf28d_o->setData(*window_buf28_buf28d_o, (float*)buf28, (float*)buf28d, 1-index, 0);
    window_buf28_buf28d_o->acquire(*window_buf28_buf28d_o, LOCK_7_1_2_5568, LOCK_7_1_3_544, 1-index);
    window_buf29_buf29d_o->setData(*window_buf29_buf29d_o, (float*)buf29, (float*)buf29d, 1-index, 0);
    window_buf29_buf29d_o->acquire(*window_buf29_buf29d_o, LOCK_7_1_0_0, LOCK_7_1_1_0, 1-index);
    orthogonalize<128>(window_buf12_buf12d_i[0],window_buf13_buf13d_i[0],window_buf28_buf28d_o[0],window_buf29_buf29d_o[0]);
    window_buf12_buf12d_i->release(*window_buf12_buf12d_i, LOCK_6_0_0_0, LOCK_6_0_1_0, 1-index);
    window_buf13_buf13d_i->release(*window_buf13_buf13d_i, LOCK_7_0_0_0, LOCK_7_0_1_3840, 1-index);
    window_buf28_buf28d_o->release(*window_buf28_buf28d_o, LOCK_7_1_2_5568, LOCK_7_1_3_544, 1-index);
    window_buf29_buf29d_o->release(*window_buf29_buf29d_o, LOCK_7_1_0_0, LOCK_7_1_1_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_7_0_bounds > 0)
      --proc_7_0_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}