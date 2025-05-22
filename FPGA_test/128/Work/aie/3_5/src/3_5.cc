// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /home/luanxinya/SVD/FPGA_test/128/./Work/aie/3_5/src/3_5.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_3_5_0_0 16
#define LOCK_3_5_1_0 17
#define LOCK_4_5_2_0 50
#define LOCK_4_5_3_0 51
#define LOCK_3_6_0_0 32
#define LOCK_3_6_1_0 33
#define LOCK_3_6_2_0 34
#define LOCK_3_6_3_0 35

// Declare shared memory buffers
v4float buf107[33];
v4float buf107d[33];
v4float buf80[33];
v4float buf80d[33];
v4float buf91[33];
v4float buf91d[33];
v4float buf96[33];
v4float buf96d[33];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<129u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf80_buf80d_i[1] = {{(float*)buf80, 129, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<129u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf91_buf91d_i[1] = {{(float*)buf91, 129, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<129u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf96_buf96d_o[1] = {{(float*)buf96, 129, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<129u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf107_buf107d_o[1] = {{(float*)buf107, 129, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_3_5_bounds = sync_buffer[1];

  while (proc_3_5_bounds)
  {

    // Kernel call : i42:orthogonalize<128>
    window_buf80_buf80d_i->setData(*window_buf80_buf80d_i, (float*)buf80, (float*)buf80d, 1-index, 0);
    window_buf80_buf80d_i->acquire(*window_buf80_buf80d_i, LOCK_3_5_0_0, LOCK_3_5_1_0, 1-index);
    window_buf91_buf91d_i->setData(*window_buf91_buf91d_i, (float*)buf91, (float*)buf91d, 1-index, 0);
    window_buf91_buf91d_i->acquire(*window_buf91_buf91d_i, LOCK_4_5_2_0, LOCK_4_5_3_0, 1-index);
    window_buf96_buf96d_o->setData(*window_buf96_buf96d_o, (float*)buf96, (float*)buf96d, 1-index, 0);
    window_buf96_buf96d_o->acquire(*window_buf96_buf96d_o, LOCK_3_6_0_0, LOCK_3_6_1_0, 1-index);
    window_buf107_buf107d_o->setData(*window_buf107_buf107d_o, (float*)buf107, (float*)buf107d, 1-index, 0);
    window_buf107_buf107d_o->acquire(*window_buf107_buf107d_o, LOCK_3_6_2_0, LOCK_3_6_3_0, 1-index);
    orthogonalize<128>(window_buf80_buf80d_i[0],window_buf91_buf91d_i[0],window_buf96_buf96d_o[0],window_buf107_buf107d_o[0]);
    window_buf80_buf80d_i->release(*window_buf80_buf80d_i, LOCK_3_5_0_0, LOCK_3_5_1_0, 1-index);
    window_buf91_buf91d_i->release(*window_buf91_buf91d_i, LOCK_4_5_2_0, LOCK_4_5_3_0, 1-index);
    window_buf96_buf96d_o->release(*window_buf96_buf96d_o, LOCK_3_6_0_0, LOCK_3_6_1_0, 1-index);
    window_buf107_buf107d_o->release(*window_buf107_buf107d_o, LOCK_3_6_2_0, LOCK_3_6_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_3_5_bounds > 0)
      --proc_3_5_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}