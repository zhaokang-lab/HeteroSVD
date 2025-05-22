// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /home/luanxinya/SVD/FPGA_test/128/./Work/aie/14_3/src/14_3.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_14_3_0_0 16
#define LOCK_14_3_1_0 17
#define LOCK_15_3_2_0 50
#define LOCK_15_3_3_0 51
#define LOCK_14_2_2_0 2
#define LOCK_14_2_3_0 3
#define LOCK_14_2_0_0 0
#define LOCK_14_2_1_0 1

// Declare shared memory buffers
v4float buf177[33];
v4float buf177d[33];
v4float buf184[33];
v4float buf184d[33];
v4float buf193[33];
v4float buf193d[33];
v4float buf200[33];
v4float buf200d[33];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<129u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf177_buf177d_i[1] = {{(float*)buf177, 129, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<129u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf184_buf184d_i[1] = {{(float*)buf184, 129, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<129u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf193_buf193d_o[1] = {{(float*)buf193, 129, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<129u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf200_buf200d_o[1] = {{(float*)buf200, 129, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_14_3_bounds = sync_buffer[1];

  while (proc_14_3_bounds)
  {

    // Kernel call : i92:orthogonalize<128>
    window_buf177_buf177d_i->setData(*window_buf177_buf177d_i, (float*)buf177, (float*)buf177d, 1-index, 0);
    window_buf177_buf177d_i->acquire(*window_buf177_buf177d_i, LOCK_14_3_0_0, LOCK_14_3_1_0, 1-index);
    window_buf184_buf184d_i->setData(*window_buf184_buf184d_i, (float*)buf184, (float*)buf184d, 1-index, 0);
    window_buf184_buf184d_i->acquire(*window_buf184_buf184d_i, LOCK_15_3_2_0, LOCK_15_3_3_0, 1-index);
    window_buf193_buf193d_o->setData(*window_buf193_buf193d_o, (float*)buf193, (float*)buf193d, 1-index, 0);
    window_buf193_buf193d_o->acquire(*window_buf193_buf193d_o, LOCK_14_2_2_0, LOCK_14_2_3_0, 1-index);
    window_buf200_buf200d_o->setData(*window_buf200_buf200d_o, (float*)buf200, (float*)buf200d, 1-index, 0);
    window_buf200_buf200d_o->acquire(*window_buf200_buf200d_o, LOCK_14_2_0_0, LOCK_14_2_1_0, 1-index);
    orthogonalize<128>(window_buf177_buf177d_i[0],window_buf184_buf184d_i[0],window_buf193_buf193d_o[0],window_buf200_buf200d_o[0]);
    window_buf177_buf177d_i->release(*window_buf177_buf177d_i, LOCK_14_3_0_0, LOCK_14_3_1_0, 1-index);
    window_buf184_buf184d_i->release(*window_buf184_buf184d_i, LOCK_15_3_2_0, LOCK_15_3_3_0, 1-index);
    window_buf193_buf193d_o->release(*window_buf193_buf193d_o, LOCK_14_2_2_0, LOCK_14_2_3_0, 1-index);
    window_buf200_buf200d_o->release(*window_buf200_buf200d_o, LOCK_14_2_0_0, LOCK_14_2_1_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_14_3_bounds > 0)
      --proc_14_3_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}