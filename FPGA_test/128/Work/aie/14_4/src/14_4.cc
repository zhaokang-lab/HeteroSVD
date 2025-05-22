// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /home/luanxinya/SVD/FPGA_test/128/./Work/aie/14_4/src/14_4.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_13_4_0_0 16
#define LOCK_13_4_1_0 17
#define LOCK_14_4_2_0 50
#define LOCK_14_4_3_0 51
#define LOCK_14_3_0_0 0
#define LOCK_14_3_1_0 1
#define LOCK_14_3_2_0 2
#define LOCK_14_3_3_0 3

// Declare shared memory buffers
v4float buf161[33];
v4float buf161d[33];
v4float buf170[33];
v4float buf170d[33];
v4float buf177[33];
v4float buf177d[33];
v4float buf186[33];
v4float buf186d[33];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<129u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf161_buf161d_i[1] = {{(float*)buf161, 129, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<129u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf170_buf170d_i[1] = {{(float*)buf170, 129, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<129u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf177_buf177d_o[1] = {{(float*)buf177, 129, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<129u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf186_buf186d_o[1] = {{(float*)buf186, 129, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_14_4_bounds = sync_buffer[1];

  while (proc_14_4_bounds)
  {

    // Kernel call : i84:orthogonalize<128>
    window_buf161_buf161d_i->setData(*window_buf161_buf161d_i, (float*)buf161, (float*)buf161d, 1-index, 0);
    window_buf161_buf161d_i->acquire(*window_buf161_buf161d_i, LOCK_13_4_0_0, LOCK_13_4_1_0, 1-index);
    window_buf170_buf170d_i->setData(*window_buf170_buf170d_i, (float*)buf170, (float*)buf170d, 1-index, 0);
    window_buf170_buf170d_i->acquire(*window_buf170_buf170d_i, LOCK_14_4_2_0, LOCK_14_4_3_0, 1-index);
    window_buf177_buf177d_o->setData(*window_buf177_buf177d_o, (float*)buf177, (float*)buf177d, 1-index, 0);
    window_buf177_buf177d_o->acquire(*window_buf177_buf177d_o, LOCK_14_3_0_0, LOCK_14_3_1_0, 1-index);
    window_buf186_buf186d_o->setData(*window_buf186_buf186d_o, (float*)buf186, (float*)buf186d, 1-index, 0);
    window_buf186_buf186d_o->acquire(*window_buf186_buf186d_o, LOCK_14_3_2_0, LOCK_14_3_3_0, 1-index);
    orthogonalize<128>(window_buf161_buf161d_i[0],window_buf170_buf170d_i[0],window_buf177_buf177d_o[0],window_buf186_buf186d_o[0]);
    window_buf161_buf161d_i->release(*window_buf161_buf161d_i, LOCK_13_4_0_0, LOCK_13_4_1_0, 1-index);
    window_buf170_buf170d_i->release(*window_buf170_buf170d_i, LOCK_14_4_2_0, LOCK_14_4_3_0, 1-index);
    window_buf177_buf177d_o->release(*window_buf177_buf177d_o, LOCK_14_3_0_0, LOCK_14_3_1_0, 1-index);
    window_buf186_buf186d_o->release(*window_buf186_buf186d_o, LOCK_14_3_2_0, LOCK_14_3_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_14_4_bounds > 0)
      --proc_14_4_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}