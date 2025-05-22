// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /home/luanxinya/SVD/FPGA_test/128/./Work/aie/8_4/src/8_4.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_7_4_0_7648 16
#define LOCK_7_4_1_0 17
#define LOCK_8_4_0_7648 48
#define LOCK_8_4_1_0 49
#define LOCK_8_5_0_0 32
#define LOCK_8_5_1_0 33
#define LOCK_8_5_2_0 34
#define LOCK_8_5_3_0 35

// Declare shared memory buffers
v4float buf74[33];
v4float buf74d[33];
v4float buf79[33];
v4float buf79d[33];
v4float buf90[33];
v4float buf90d[33];
v4float buf95[33];
v4float buf95d[33];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<129u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf74_buf74d_i[1] = {{(float*)buf74, 129, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<129u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf79_buf79d_i[1] = {{(float*)buf79, 129, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<129u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf90_buf90d_o[1] = {{(float*)buf90, 129, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<129u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf95_buf95d_o[1] = {{(float*)buf95, 129, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_8_4_bounds = sync_buffer[1];

  while (proc_8_4_bounds)
  {

    // Kernel call : i39:orthogonalize<128>
    window_buf74_buf74d_i->setData(*window_buf74_buf74d_i, (float*)buf74, (float*)buf74d, 1-index, 0);
    window_buf74_buf74d_i->acquire(*window_buf74_buf74d_i, LOCK_7_4_0_7648, LOCK_7_4_1_0, 1-index);
    window_buf79_buf79d_i->setData(*window_buf79_buf79d_i, (float*)buf79, (float*)buf79d, 1-index, 0);
    window_buf79_buf79d_i->acquire(*window_buf79_buf79d_i, LOCK_8_4_0_7648, LOCK_8_4_1_0, 1-index);
    window_buf90_buf90d_o->setData(*window_buf90_buf90d_o, (float*)buf90, (float*)buf90d, 1-index, 0);
    window_buf90_buf90d_o->acquire(*window_buf90_buf90d_o, LOCK_8_5_0_0, LOCK_8_5_1_0, 1-index);
    window_buf95_buf95d_o->setData(*window_buf95_buf95d_o, (float*)buf95, (float*)buf95d, 1-index, 0);
    window_buf95_buf95d_o->acquire(*window_buf95_buf95d_o, LOCK_8_5_2_0, LOCK_8_5_3_0, 1-index);
    orthogonalize<128>(window_buf74_buf74d_i[0],window_buf79_buf79d_i[0],window_buf90_buf90d_o[0],window_buf95_buf95d_o[0]);
    window_buf74_buf74d_i->release(*window_buf74_buf74d_i, LOCK_7_4_0_7648, LOCK_7_4_1_0, 1-index);
    window_buf79_buf79d_i->release(*window_buf79_buf79d_i, LOCK_8_4_0_7648, LOCK_8_4_1_0, 1-index);
    window_buf90_buf90d_o->release(*window_buf90_buf90d_o, LOCK_8_5_0_0, LOCK_8_5_1_0, 1-index);
    window_buf95_buf95d_o->release(*window_buf95_buf95d_o, LOCK_8_5_2_0, LOCK_8_5_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_8_4_bounds > 0)
      --proc_8_4_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}