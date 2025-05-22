// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /home/luanxinya/SVD/FPGA_test/128/./Work/aie/2_4/src/2_4.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_1_4_0_7648 16
#define LOCK_1_4_1_0 17
#define LOCK_2_4_2_0 50
#define LOCK_2_4_3_0 51
#define LOCK_2_5_0_0 32
#define LOCK_2_5_1_0 33
#define LOCK_2_5_2_0 34
#define LOCK_2_5_3_0 35

// Declare shared memory buffers
v4float buf65[33];
v4float buf65d[33];
v4float buf71[33];
v4float buf71d[33];
v4float buf81[33];
v4float buf81d[33];
v4float buf87[33];
v4float buf87d[33];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<129u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf65_buf65d_i[1] = {{(float*)buf65, 129, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<129u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf71_buf71d_i[1] = {{(float*)buf71, 129, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<129u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf81_buf81d_o[1] = {{(float*)buf81, 129, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<129u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf87_buf87d_o[1] = {{(float*)buf87, 129, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_2_4_bounds = sync_buffer[1];

  while (proc_2_4_bounds)
  {

    // Kernel call : i33:orthogonalize<128>
    window_buf65_buf65d_i->setData(*window_buf65_buf65d_i, (float*)buf65, (float*)buf65d, 1-index, 0);
    window_buf65_buf65d_i->acquire(*window_buf65_buf65d_i, LOCK_1_4_0_7648, LOCK_1_4_1_0, 1-index);
    window_buf71_buf71d_i->setData(*window_buf71_buf71d_i, (float*)buf71, (float*)buf71d, 1-index, 0);
    window_buf71_buf71d_i->acquire(*window_buf71_buf71d_i, LOCK_2_4_2_0, LOCK_2_4_3_0, 1-index);
    window_buf81_buf81d_o->setData(*window_buf81_buf81d_o, (float*)buf81, (float*)buf81d, 1-index, 0);
    window_buf81_buf81d_o->acquire(*window_buf81_buf81d_o, LOCK_2_5_0_0, LOCK_2_5_1_0, 1-index);
    window_buf87_buf87d_o->setData(*window_buf87_buf87d_o, (float*)buf87, (float*)buf87d, 1-index, 0);
    window_buf87_buf87d_o->acquire(*window_buf87_buf87d_o, LOCK_2_5_2_0, LOCK_2_5_3_0, 1-index);
    orthogonalize<128>(window_buf65_buf65d_i[0],window_buf71_buf71d_i[0],window_buf81_buf81d_o[0],window_buf87_buf87d_o[0]);
    window_buf65_buf65d_i->release(*window_buf65_buf65d_i, LOCK_1_4_0_7648, LOCK_1_4_1_0, 1-index);
    window_buf71_buf71d_i->release(*window_buf71_buf71d_i, LOCK_2_4_2_0, LOCK_2_4_3_0, 1-index);
    window_buf81_buf81d_o->release(*window_buf81_buf81d_o, LOCK_2_5_0_0, LOCK_2_5_1_0, 1-index);
    window_buf87_buf87d_o->release(*window_buf87_buf87d_o, LOCK_2_5_2_0, LOCK_2_5_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_2_4_bounds > 0)
      --proc_2_4_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}