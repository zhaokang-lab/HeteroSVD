// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /home/luanxinya/SVD/FPGA_test/128/./Work/aie/13_7/src/13_7.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_14_7_0_5600 48
#define LOCK_14_7_1_0 49
#define LOCK_14_7_2_6144 50
#define LOCK_14_7_3_0 51
#define LOCK_13_6_0_7648 0
#define LOCK_13_6_1_0 1
#define LOCK_13_6_2_0 2
#define LOCK_13_6_3_0 3

// Declare shared memory buffers
v4float buf112dr[33];
v4float buf112r[33];
v4float buf126dr[33];
v4float buf126r[33];
v4float buf128[33];
v4float buf128d[33];
v4float buf142[33];
v4float buf142d[33];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<129u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf112r_buf112dr_i[1] = {{(float*)buf112r, 129, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<129u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf126r_buf126dr_i[1] = {{(float*)buf126r, 129, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<129u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf128_buf128d_o[1] = {{(float*)buf128, 129, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<129u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf142_buf142d_o[1] = {{(float*)buf142, 129, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_13_7_bounds = sync_buffer[1];

  while (proc_13_7_bounds)
  {

    // Kernel call : i59:orthogonalize<128>
    window_buf112r_buf112dr_i->setData(*window_buf112r_buf112dr_i, (float*)buf112r, (float*)buf112dr, 1-index, 0);
    window_buf112r_buf112dr_i->acquire(*window_buf112r_buf112dr_i, LOCK_14_7_0_5600, LOCK_14_7_1_0, 1-index);
    window_buf126r_buf126dr_i->setData(*window_buf126r_buf126dr_i, (float*)buf126r, (float*)buf126dr, 1-index, 0);
    window_buf126r_buf126dr_i->acquire(*window_buf126r_buf126dr_i, LOCK_14_7_2_6144, LOCK_14_7_3_0, 1-index);
    window_buf128_buf128d_o->setData(*window_buf128_buf128d_o, (float*)buf128, (float*)buf128d, 1-index, 0);
    window_buf128_buf128d_o->acquire(*window_buf128_buf128d_o, LOCK_13_6_0_7648, LOCK_13_6_1_0, 1-index);
    window_buf142_buf142d_o->setData(*window_buf142_buf142d_o, (float*)buf142, (float*)buf142d, 1-index, 0);
    window_buf142_buf142d_o->acquire(*window_buf142_buf142d_o, LOCK_13_6_2_0, LOCK_13_6_3_0, 1-index);
    orthogonalize<128>(window_buf112r_buf112dr_i[0],window_buf126r_buf126dr_i[0],window_buf128_buf128d_o[0],window_buf142_buf142d_o[0]);
    window_buf112r_buf112dr_i->release(*window_buf112r_buf112dr_i, LOCK_14_7_0_5600, LOCK_14_7_1_0, 1-index);
    window_buf126r_buf126dr_i->release(*window_buf126r_buf126dr_i, LOCK_14_7_2_6144, LOCK_14_7_3_0, 1-index);
    window_buf128_buf128d_o->release(*window_buf128_buf128d_o, LOCK_13_6_0_7648, LOCK_13_6_1_0, 1-index);
    window_buf142_buf142d_o->release(*window_buf142_buf142d_o, LOCK_13_6_2_0, LOCK_13_6_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_13_7_bounds > 0)
      --proc_13_7_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}