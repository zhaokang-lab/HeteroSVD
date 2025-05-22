// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /home/luanxinya/SVD/FPGA_test/128/./Work/aie/1_0/src/1_0.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_0_0_0_0 16
#define LOCK_0_0_1_7648 17
#define LOCK_0_0_2_0 18
#define LOCK_0_0_3_7648 19
#define LOCK_1_1_0_1088 32
#define LOCK_1_1_1_544 33
#define LOCK_1_1_2_0 34
#define LOCK_1_1_3_0 35

// Declare shared memory buffers
v4float buf0[33];
v4float buf0d[33];
v4float buf1[33];
v4float buf16[33];
v4float buf16d[33];
v4float buf17[33];
v4float buf17d[33];
v4float buf1d[33];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<129u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf0_buf0d_i[1] = {{(float*)buf0, 129, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<129u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf1_buf1d_i[1] = {{(float*)buf1, 129, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<129u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf16_buf16d_o[1] = {{(float*)buf16, 129, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<129u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf17_buf17d_o[1] = {{(float*)buf17, 129, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_1_0_bounds = sync_buffer[1];

  while (proc_1_0_bounds)
  {

    // Kernel call : i0:orthogonalize<128>
    window_buf0_buf0d_i->setData(*window_buf0_buf0d_i, (float*)buf0, (float*)buf0d, 1-index, 0);
    window_buf0_buf0d_i->acquire(*window_buf0_buf0d_i, LOCK_0_0_0_0, LOCK_0_0_1_7648, 1-index);
    window_buf1_buf1d_i->setData(*window_buf1_buf1d_i, (float*)buf1, (float*)buf1d, 1-index, 0);
    window_buf1_buf1d_i->acquire(*window_buf1_buf1d_i, LOCK_0_0_2_0, LOCK_0_0_3_7648, 1-index);
    window_buf16_buf16d_o->setData(*window_buf16_buf16d_o, (float*)buf16, (float*)buf16d, 1-index, 0);
    window_buf16_buf16d_o->acquire(*window_buf16_buf16d_o, LOCK_1_1_0_1088, LOCK_1_1_1_544, 1-index);
    window_buf17_buf17d_o->setData(*window_buf17_buf17d_o, (float*)buf17, (float*)buf17d, 1-index, 0);
    window_buf17_buf17d_o->acquire(*window_buf17_buf17d_o, LOCK_1_1_2_0, LOCK_1_1_3_0, 1-index);
    orthogonalize<128>(window_buf0_buf0d_i[0],window_buf1_buf1d_i[0],window_buf16_buf16d_o[0],window_buf17_buf17d_o[0]);
    window_buf0_buf0d_i->release(*window_buf0_buf0d_i, LOCK_0_0_0_0, LOCK_0_0_1_7648, 1-index);
    window_buf1_buf1d_i->release(*window_buf1_buf1d_i, LOCK_0_0_2_0, LOCK_0_0_3_7648, 1-index);
    window_buf16_buf16d_o->release(*window_buf16_buf16d_o, LOCK_1_1_0_1088, LOCK_1_1_1_544, 1-index);
    window_buf17_buf17d_o->release(*window_buf17_buf17d_o, LOCK_1_1_2_0, LOCK_1_1_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_1_0_bounds > 0)
      --proc_1_0_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}