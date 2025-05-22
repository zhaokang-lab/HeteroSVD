// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /home/luanxinya/SVD/FPGA_test/128/./Work/aie/14_7/src/14_7.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_15_7_0_0 48
#define LOCK_15_7_1_3840 49
#define LOCK_15_7_2_0 50
#define LOCK_15_7_3_0 51
#define LOCK_14_6_0_7648 0
#define LOCK_14_6_1_0 1
#define LOCK_14_6_2_0 2
#define LOCK_14_6_3_0 3

// Declare shared memory buffers
v4float buf114dr[33];
v4float buf114r[33];
v4float buf124dr[33];
v4float buf124r[33];
v4float buf130[33];
v4float buf130d[33];
v4float buf140[33];
v4float buf140d[33];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<129u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf114r_buf114dr_i[1] = {{(float*)buf114r, 129, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<129u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf124r_buf124dr_i[1] = {{(float*)buf124r, 129, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<129u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf130_buf130d_o[1] = {{(float*)buf130, 129, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<129u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf140_buf140d_o[1] = {{(float*)buf140, 129, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_14_7_bounds = sync_buffer[1];

  while (proc_14_7_bounds)
  {

    // Kernel call : i60:orthogonalize<128>
    window_buf114r_buf114dr_i->setData(*window_buf114r_buf114dr_i, (float*)buf114r, (float*)buf114dr, 1-index, 0);
    window_buf114r_buf114dr_i->acquire(*window_buf114r_buf114dr_i, LOCK_15_7_0_0, LOCK_15_7_1_3840, 1-index);
    window_buf124r_buf124dr_i->setData(*window_buf124r_buf124dr_i, (float*)buf124r, (float*)buf124dr, 1-index, 0);
    window_buf124r_buf124dr_i->acquire(*window_buf124r_buf124dr_i, LOCK_15_7_2_0, LOCK_15_7_3_0, 1-index);
    window_buf130_buf130d_o->setData(*window_buf130_buf130d_o, (float*)buf130, (float*)buf130d, 1-index, 0);
    window_buf130_buf130d_o->acquire(*window_buf130_buf130d_o, LOCK_14_6_0_7648, LOCK_14_6_1_0, 1-index);
    window_buf140_buf140d_o->setData(*window_buf140_buf140d_o, (float*)buf140, (float*)buf140d, 1-index, 0);
    window_buf140_buf140d_o->acquire(*window_buf140_buf140d_o, LOCK_14_6_2_0, LOCK_14_6_3_0, 1-index);
    orthogonalize<128>(window_buf114r_buf114dr_i[0],window_buf124r_buf124dr_i[0],window_buf130_buf130d_o[0],window_buf140_buf140d_o[0]);
    window_buf114r_buf114dr_i->release(*window_buf114r_buf114dr_i, LOCK_15_7_0_0, LOCK_15_7_1_3840, 1-index);
    window_buf124r_buf124dr_i->release(*window_buf124r_buf124dr_i, LOCK_15_7_2_0, LOCK_15_7_3_0, 1-index);
    window_buf130_buf130d_o->release(*window_buf130_buf130d_o, LOCK_14_6_0_7648, LOCK_14_6_1_0, 1-index);
    window_buf140_buf140d_o->release(*window_buf140_buf140d_o, LOCK_14_6_2_0, LOCK_14_6_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_14_7_bounds > 0)
      --proc_14_7_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}