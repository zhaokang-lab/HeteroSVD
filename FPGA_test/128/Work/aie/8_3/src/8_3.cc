// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /home/luanxinya/SVD/FPGA_test/128/./Work/aie/8_3/src/8_3.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_8_3_2_0 18
#define LOCK_8_3_3_0 19
#define LOCK_9_3_0_0 48
#define LOCK_9_3_1_0 49
#define LOCK_8_4_0_7648 32
#define LOCK_8_4_1_0 33
#define LOCK_8_4_2_0 34
#define LOCK_8_4_3_0 35

// Declare shared memory buffers
v4float buf51dr[33];
v4float buf51r[33];
v4float buf63[33];
v4float buf63d[33];
v4float buf67[33];
v4float buf67d[33];
v4float buf79[33];
v4float buf79d[33];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<129u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf63_buf63d_i[1] = {{(float*)buf63, 129, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<129u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf51r_buf51dr_i[1] = {{(float*)buf51r, 129, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<129u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf79_buf79d_o[1] = {{(float*)buf79, 129, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<129u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf67_buf67d_o[1] = {{(float*)buf67, 129, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_8_3_bounds = sync_buffer[1];

  while (proc_8_3_bounds)
  {

    // Kernel call : i31:orthogonalize<128>
    window_buf63_buf63d_i->setData(*window_buf63_buf63d_i, (float*)buf63, (float*)buf63d, 1-index, 0);
    window_buf63_buf63d_i->acquire(*window_buf63_buf63d_i, LOCK_8_3_2_0, LOCK_8_3_3_0, 1-index);
    window_buf51r_buf51dr_i->setData(*window_buf51r_buf51dr_i, (float*)buf51r, (float*)buf51dr, 1-index, 0);
    window_buf51r_buf51dr_i->acquire(*window_buf51r_buf51dr_i, LOCK_9_3_0_0, LOCK_9_3_1_0, 1-index);
    window_buf79_buf79d_o->setData(*window_buf79_buf79d_o, (float*)buf79, (float*)buf79d, 1-index, 0);
    window_buf79_buf79d_o->acquire(*window_buf79_buf79d_o, LOCK_8_4_0_7648, LOCK_8_4_1_0, 1-index);
    window_buf67_buf67d_o->setData(*window_buf67_buf67d_o, (float*)buf67, (float*)buf67d, 1-index, 0);
    window_buf67_buf67d_o->acquire(*window_buf67_buf67d_o, LOCK_8_4_2_0, LOCK_8_4_3_0, 1-index);
    orthogonalize<128>(window_buf63_buf63d_i[0],window_buf51r_buf51dr_i[0],window_buf79_buf79d_o[0],window_buf67_buf67d_o[0]);
    window_buf63_buf63d_i->release(*window_buf63_buf63d_i, LOCK_8_3_2_0, LOCK_8_3_3_0, 1-index);
    window_buf51r_buf51dr_i->release(*window_buf51r_buf51dr_i, LOCK_9_3_0_0, LOCK_9_3_1_0, 1-index);
    window_buf79_buf79d_o->release(*window_buf79_buf79d_o, LOCK_8_4_0_7648, LOCK_8_4_1_0, 1-index);
    window_buf67_buf67d_o->release(*window_buf67_buf67d_o, LOCK_8_4_2_0, LOCK_8_4_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_8_3_bounds > 0)
      --proc_8_3_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}