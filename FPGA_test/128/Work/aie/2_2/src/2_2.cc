// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /home/luanxinya/SVD/FPGA_test/128/./Work/aie/2_2/src/2_2.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_1_2_2_0 18
#define LOCK_1_2_3_0 19
#define LOCK_2_2_0_0 48
#define LOCK_2_2_1_0 49
#define LOCK_2_3_0_7648 32
#define LOCK_2_3_1_0 33
#define LOCK_2_3_2_0 34
#define LOCK_2_3_3_0 35

// Declare shared memory buffers
v4float buf32[33];
v4float buf32d[33];
v4float buf37[33];
v4float buf37d[33];
v4float buf48[33];
v4float buf48d[33];
v4float buf53[33];
v4float buf53d[33];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<129u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf32_buf32d_i[1] = {{(float*)buf32, 129, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<129u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf37_buf37d_i[1] = {{(float*)buf37, 129, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<129u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf48_buf48d_o[1] = {{(float*)buf48, 129, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<129u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf53_buf53d_o[1] = {{(float*)buf53, 129, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_2_2_bounds = sync_buffer[1];

  while (proc_2_2_bounds)
  {

    // Kernel call : i17:orthogonalize<128>
    window_buf32_buf32d_i->setData(*window_buf32_buf32d_i, (float*)buf32, (float*)buf32d, 1-index, 0);
    window_buf32_buf32d_i->acquire(*window_buf32_buf32d_i, LOCK_1_2_2_0, LOCK_1_2_3_0, 1-index);
    window_buf37_buf37d_i->setData(*window_buf37_buf37d_i, (float*)buf37, (float*)buf37d, 1-index, 0);
    window_buf37_buf37d_i->acquire(*window_buf37_buf37d_i, LOCK_2_2_0_0, LOCK_2_2_1_0, 1-index);
    window_buf48_buf48d_o->setData(*window_buf48_buf48d_o, (float*)buf48, (float*)buf48d, 1-index, 0);
    window_buf48_buf48d_o->acquire(*window_buf48_buf48d_o, LOCK_2_3_0_7648, LOCK_2_3_1_0, 1-index);
    window_buf53_buf53d_o->setData(*window_buf53_buf53d_o, (float*)buf53, (float*)buf53d, 1-index, 0);
    window_buf53_buf53d_o->acquire(*window_buf53_buf53d_o, LOCK_2_3_2_0, LOCK_2_3_3_0, 1-index);
    orthogonalize<128>(window_buf32_buf32d_i[0],window_buf37_buf37d_i[0],window_buf48_buf48d_o[0],window_buf53_buf53d_o[0]);
    window_buf32_buf32d_i->release(*window_buf32_buf32d_i, LOCK_1_2_2_0, LOCK_1_2_3_0, 1-index);
    window_buf37_buf37d_i->release(*window_buf37_buf37d_i, LOCK_2_2_0_0, LOCK_2_2_1_0, 1-index);
    window_buf48_buf48d_o->release(*window_buf48_buf48d_o, LOCK_2_3_0_7648, LOCK_2_3_1_0, 1-index);
    window_buf53_buf53d_o->release(*window_buf53_buf53d_o, LOCK_2_3_2_0, LOCK_2_3_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_2_2_bounds > 0)
      --proc_2_2_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}