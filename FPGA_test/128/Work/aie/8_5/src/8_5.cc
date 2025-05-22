// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /home/luanxinya/SVD/FPGA_test/128/./Work/aie/8_5/src/8_5.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_8_5_2_0 18
#define LOCK_8_5_3_0 19
#define LOCK_9_5_0_0 48
#define LOCK_9_5_1_0 49
#define LOCK_8_6_0_0 32
#define LOCK_8_6_1_0 33
#define LOCK_8_6_2_0 34
#define LOCK_8_6_3_0 35

// Declare shared memory buffers
v4float buf101[33];
v4float buf101d[33];
v4float buf111[33];
v4float buf111d[33];
v4float buf85dr[33];
v4float buf85r[33];
v4float buf95[33];
v4float buf95d[33];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<129u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf95_buf95d_i[1] = {{(float*)buf95, 129, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<129u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf85r_buf85dr_i[1] = {{(float*)buf85r, 129, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<129u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf111_buf111d_o[1] = {{(float*)buf111, 129, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<129u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf101_buf101d_o[1] = {{(float*)buf101, 129, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_8_5_bounds = sync_buffer[1];

  while (proc_8_5_bounds)
  {

    // Kernel call : i47:orthogonalize<128>
    window_buf95_buf95d_i->setData(*window_buf95_buf95d_i, (float*)buf95, (float*)buf95d, 1-index, 0);
    window_buf95_buf95d_i->acquire(*window_buf95_buf95d_i, LOCK_8_5_2_0, LOCK_8_5_3_0, 1-index);
    window_buf85r_buf85dr_i->setData(*window_buf85r_buf85dr_i, (float*)buf85r, (float*)buf85dr, 1-index, 0);
    window_buf85r_buf85dr_i->acquire(*window_buf85r_buf85dr_i, LOCK_9_5_0_0, LOCK_9_5_1_0, 1-index);
    window_buf111_buf111d_o->setData(*window_buf111_buf111d_o, (float*)buf111, (float*)buf111d, 1-index, 0);
    window_buf111_buf111d_o->acquire(*window_buf111_buf111d_o, LOCK_8_6_0_0, LOCK_8_6_1_0, 1-index);
    window_buf101_buf101d_o->setData(*window_buf101_buf101d_o, (float*)buf101, (float*)buf101d, 1-index, 0);
    window_buf101_buf101d_o->acquire(*window_buf101_buf101d_o, LOCK_8_6_2_0, LOCK_8_6_3_0, 1-index);
    orthogonalize<128>(window_buf95_buf95d_i[0],window_buf85r_buf85dr_i[0],window_buf111_buf111d_o[0],window_buf101_buf101d_o[0]);
    window_buf95_buf95d_i->release(*window_buf95_buf95d_i, LOCK_8_5_2_0, LOCK_8_5_3_0, 1-index);
    window_buf85r_buf85dr_i->release(*window_buf85r_buf85dr_i, LOCK_9_5_0_0, LOCK_9_5_1_0, 1-index);
    window_buf111_buf111d_o->release(*window_buf111_buf111d_o, LOCK_8_6_0_0, LOCK_8_6_1_0, 1-index);
    window_buf101_buf101d_o->release(*window_buf101_buf101d_o, LOCK_8_6_2_0, LOCK_8_6_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_8_5_bounds > 0)
      --proc_8_5_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}