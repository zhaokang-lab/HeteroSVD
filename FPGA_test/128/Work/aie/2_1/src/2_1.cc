// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /home/luanxinya/SVD/FPGA_test/128/./Work/aie/2_1/src/2_1.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_2_1_0_7648 16
#define LOCK_2_1_1_0 17
#define LOCK_3_1_2_0 50
#define LOCK_3_1_3_0 51
#define LOCK_2_2_2_0 34
#define LOCK_2_2_3_0 35
#define LOCK_2_2_0_0 32
#define LOCK_2_2_1_0 33

// Declare shared memory buffers
v4float buf18[33];
v4float buf18d[33];
v4float buf21[33];
v4float buf21d[33];
v4float buf34[33];
v4float buf34d[33];
v4float buf37[33];
v4float buf37d[33];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<129u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf18_buf18d_i[1] = {{(float*)buf18, 129, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<129u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf21_buf21d_i[1] = {{(float*)buf21, 129, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<129u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf34_buf34d_o[1] = {{(float*)buf34, 129, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<129u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf37_buf37d_o[1] = {{(float*)buf37, 129, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_2_1_bounds = sync_buffer[1];

  while (proc_2_1_bounds)
  {

    // Kernel call : i9:orthogonalize<128>
    window_buf18_buf18d_i->setData(*window_buf18_buf18d_i, (float*)buf18, (float*)buf18d, 1-index, 0);
    window_buf18_buf18d_i->acquire(*window_buf18_buf18d_i, LOCK_2_1_0_7648, LOCK_2_1_1_0, 1-index);
    window_buf21_buf21d_i->setData(*window_buf21_buf21d_i, (float*)buf21, (float*)buf21d, 1-index, 0);
    window_buf21_buf21d_i->acquire(*window_buf21_buf21d_i, LOCK_3_1_2_0, LOCK_3_1_3_0, 1-index);
    window_buf34_buf34d_o->setData(*window_buf34_buf34d_o, (float*)buf34, (float*)buf34d, 1-index, 0);
    window_buf34_buf34d_o->acquire(*window_buf34_buf34d_o, LOCK_2_2_2_0, LOCK_2_2_3_0, 1-index);
    window_buf37_buf37d_o->setData(*window_buf37_buf37d_o, (float*)buf37, (float*)buf37d, 1-index, 0);
    window_buf37_buf37d_o->acquire(*window_buf37_buf37d_o, LOCK_2_2_0_0, LOCK_2_2_1_0, 1-index);
    orthogonalize<128>(window_buf18_buf18d_i[0],window_buf21_buf21d_i[0],window_buf34_buf34d_o[0],window_buf37_buf37d_o[0]);
    window_buf18_buf18d_i->release(*window_buf18_buf18d_i, LOCK_2_1_0_7648, LOCK_2_1_1_0, 1-index);
    window_buf21_buf21d_i->release(*window_buf21_buf21d_i, LOCK_3_1_2_0, LOCK_3_1_3_0, 1-index);
    window_buf34_buf34d_o->release(*window_buf34_buf34d_o, LOCK_2_2_2_0, LOCK_2_2_3_0, 1-index);
    window_buf37_buf37d_o->release(*window_buf37_buf37d_o, LOCK_2_2_0_0, LOCK_2_2_1_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_2_1_bounds > 0)
      --proc_2_1_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}