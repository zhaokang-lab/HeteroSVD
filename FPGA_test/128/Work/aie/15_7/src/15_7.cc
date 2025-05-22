// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /home/luanxinya/SVD/FPGA_test/128/./Work/aie/15_7/src/15_7.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_16_7_0_0 48
#define LOCK_16_7_1_3840 49
#define LOCK_16_7_2_0 50
#define LOCK_16_7_3_0 51
#define LOCK_15_6_0_0 0
#define LOCK_15_6_1_0 1
#define LOCK_15_6_2_0 2
#define LOCK_15_6_3_0 3

// Declare shared memory buffers
v4float buf116dr[33];
v4float buf116r[33];
v4float buf122dr[33];
v4float buf122r[33];
v4float buf132[33];
v4float buf132d[33];
v4float buf138[33];
v4float buf138d[33];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<129u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf116r_buf116dr_i[1] = {{(float*)buf116r, 129, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<129u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf122r_buf122dr_i[1] = {{(float*)buf122r, 129, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<129u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf132_buf132d_o[1] = {{(float*)buf132, 129, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<129u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf138_buf138d_o[1] = {{(float*)buf138, 129, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_15_7_bounds = sync_buffer[1];

  while (proc_15_7_bounds)
  {

    // Kernel call : i61:orthogonalize<128>
    window_buf116r_buf116dr_i->setData(*window_buf116r_buf116dr_i, (float*)buf116r, (float*)buf116dr, 1-index, 0);
    window_buf116r_buf116dr_i->acquire(*window_buf116r_buf116dr_i, LOCK_16_7_0_0, LOCK_16_7_1_3840, 1-index);
    window_buf122r_buf122dr_i->setData(*window_buf122r_buf122dr_i, (float*)buf122r, (float*)buf122dr, 1-index, 0);
    window_buf122r_buf122dr_i->acquire(*window_buf122r_buf122dr_i, LOCK_16_7_2_0, LOCK_16_7_3_0, 1-index);
    window_buf132_buf132d_o->setData(*window_buf132_buf132d_o, (float*)buf132, (float*)buf132d, 1-index, 0);
    window_buf132_buf132d_o->acquire(*window_buf132_buf132d_o, LOCK_15_6_0_0, LOCK_15_6_1_0, 1-index);
    window_buf138_buf138d_o->setData(*window_buf138_buf138d_o, (float*)buf138, (float*)buf138d, 1-index, 0);
    window_buf138_buf138d_o->acquire(*window_buf138_buf138d_o, LOCK_15_6_2_0, LOCK_15_6_3_0, 1-index);
    orthogonalize<128>(window_buf116r_buf116dr_i[0],window_buf122r_buf122dr_i[0],window_buf132_buf132d_o[0],window_buf138_buf138d_o[0]);
    window_buf116r_buf116dr_i->release(*window_buf116r_buf116dr_i, LOCK_16_7_0_0, LOCK_16_7_1_3840, 1-index);
    window_buf122r_buf122dr_i->release(*window_buf122r_buf122dr_i, LOCK_16_7_2_0, LOCK_16_7_3_0, 1-index);
    window_buf132_buf132d_o->release(*window_buf132_buf132d_o, LOCK_15_6_0_0, LOCK_15_6_1_0, 1-index);
    window_buf138_buf138d_o->release(*window_buf138_buf138d_o, LOCK_15_6_2_0, LOCK_15_6_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_15_7_bounds > 0)
      --proc_15_7_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}