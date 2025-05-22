// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /home/luanxinya/SVD/FPGA_test/128/./Work/aie/20_0/src/20_0.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_19_0_0_0 16
#define LOCK_19_0_1_0 17
#define LOCK_20_0_0_0 48
#define LOCK_20_0_1_0 49
#define LOCK_20_1_0_1088 32
#define LOCK_20_1_1_1088 33
#define LOCK_20_1_2_0 34
#define LOCK_20_1_3_0 35

// Declare shared memory buffers
v4float buf235dr[33];
v4float buf235r[33];
v4float buf236dr[33];
v4float buf236r[33];
v4float buf251[33];
v4float buf251d[33];
v4float buf252[33];
v4float buf252d[33];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<129u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf235r_buf235dr_i[1] = {{(float*)buf235r, 129, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<129u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf236r_buf236dr_i[1] = {{(float*)buf236r, 129, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<129u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf251_buf251d_o[1] = {{(float*)buf251, 129, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<129u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf252_buf252d_o[1] = {{(float*)buf252, 129, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_20_0_bounds = sync_buffer[1];

  while (proc_20_0_bounds)
  {

    // Kernel call : i113:orthogonalize<128>
    window_buf235r_buf235dr_i->setData(*window_buf235r_buf235dr_i, (float*)buf235r, (float*)buf235dr, 1-index, 0);
    window_buf235r_buf235dr_i->acquire(*window_buf235r_buf235dr_i, LOCK_19_0_0_0, LOCK_19_0_1_0, 1-index);
    window_buf236r_buf236dr_i->setData(*window_buf236r_buf236dr_i, (float*)buf236r, (float*)buf236dr, 1-index, 0);
    window_buf236r_buf236dr_i->acquire(*window_buf236r_buf236dr_i, LOCK_20_0_0_0, LOCK_20_0_1_0, 1-index);
    window_buf251_buf251d_o->setData(*window_buf251_buf251d_o, (float*)buf251, (float*)buf251d, 1-index, 0);
    window_buf251_buf251d_o->acquire(*window_buf251_buf251d_o, LOCK_20_1_0_1088, LOCK_20_1_1_1088, 1-index);
    window_buf252_buf252d_o->setData(*window_buf252_buf252d_o, (float*)buf252, (float*)buf252d, 1-index, 0);
    window_buf252_buf252d_o->acquire(*window_buf252_buf252d_o, LOCK_20_1_2_0, LOCK_20_1_3_0, 1-index);
    orthogonalize<128>(window_buf235r_buf235dr_i[0],window_buf236r_buf236dr_i[0],window_buf251_buf251d_o[0],window_buf252_buf252d_o[0]);
    window_buf235r_buf235dr_i->release(*window_buf235r_buf235dr_i, LOCK_19_0_0_0, LOCK_19_0_1_0, 1-index);
    window_buf236r_buf236dr_i->release(*window_buf236r_buf236dr_i, LOCK_20_0_0_0, LOCK_20_0_1_0, 1-index);
    window_buf251_buf251d_o->release(*window_buf251_buf251d_o, LOCK_20_1_0_1088, LOCK_20_1_1_1088, 1-index);
    window_buf252_buf252d_o->release(*window_buf252_buf252d_o, LOCK_20_1_2_0, LOCK_20_1_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_20_0_bounds > 0)
      --proc_20_0_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}