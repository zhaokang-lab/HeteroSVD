// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /home/luanxinya/SVD/FPGA_test/128/./Work/aie/3_4/src/3_4.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_2_4_0_0 16
#define LOCK_2_4_1_0 17
#define LOCK_3_4_2_0 50
#define LOCK_3_4_3_0 51
#define LOCK_3_5_0_0 32
#define LOCK_3_5_1_0 33
#define LOCK_3_5_2_0 34
#define LOCK_3_5_3_0 35

// Declare shared memory buffers
v4float buf64[33];
v4float buf64d[33];
v4float buf73[33];
v4float buf73d[33];
v4float buf80[33];
v4float buf80d[33];
v4float buf89[33];
v4float buf89d[33];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<129u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf64_buf64d_i[1] = {{(float*)buf64, 129, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<129u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf73_buf73d_i[1] = {{(float*)buf73, 129, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<129u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf80_buf80d_o[1] = {{(float*)buf80, 129, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<129u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf89_buf89d_o[1] = {{(float*)buf89, 129, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_3_4_bounds = sync_buffer[1];

  while (proc_3_4_bounds)
  {

    // Kernel call : i34:orthogonalize<128>
    window_buf64_buf64d_i->setData(*window_buf64_buf64d_i, (float*)buf64, (float*)buf64d, 1-index, 0);
    window_buf64_buf64d_i->acquire(*window_buf64_buf64d_i, LOCK_2_4_0_0, LOCK_2_4_1_0, 1-index);
    window_buf73_buf73d_i->setData(*window_buf73_buf73d_i, (float*)buf73, (float*)buf73d, 1-index, 0);
    window_buf73_buf73d_i->acquire(*window_buf73_buf73d_i, LOCK_3_4_2_0, LOCK_3_4_3_0, 1-index);
    window_buf80_buf80d_o->setData(*window_buf80_buf80d_o, (float*)buf80, (float*)buf80d, 1-index, 0);
    window_buf80_buf80d_o->acquire(*window_buf80_buf80d_o, LOCK_3_5_0_0, LOCK_3_5_1_0, 1-index);
    window_buf89_buf89d_o->setData(*window_buf89_buf89d_o, (float*)buf89, (float*)buf89d, 1-index, 0);
    window_buf89_buf89d_o->acquire(*window_buf89_buf89d_o, LOCK_3_5_2_0, LOCK_3_5_3_0, 1-index);
    orthogonalize<128>(window_buf64_buf64d_i[0],window_buf73_buf73d_i[0],window_buf80_buf80d_o[0],window_buf89_buf89d_o[0]);
    window_buf64_buf64d_i->release(*window_buf64_buf64d_i, LOCK_2_4_0_0, LOCK_2_4_1_0, 1-index);
    window_buf73_buf73d_i->release(*window_buf73_buf73d_i, LOCK_3_4_2_0, LOCK_3_4_3_0, 1-index);
    window_buf80_buf80d_o->release(*window_buf80_buf80d_o, LOCK_3_5_0_0, LOCK_3_5_1_0, 1-index);
    window_buf89_buf89d_o->release(*window_buf89_buf89d_o, LOCK_3_5_2_0, LOCK_3_5_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_3_4_bounds > 0)
      --proc_3_4_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}