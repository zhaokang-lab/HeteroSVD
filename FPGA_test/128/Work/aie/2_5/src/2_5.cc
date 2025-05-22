// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /home/luanxinya/SVD/FPGA_test/128/./Work/aie/2_5/src/2_5.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_2_5_0_0 16
#define LOCK_2_5_1_0 17
#define LOCK_3_5_2_0 50
#define LOCK_3_5_3_0 51
#define LOCK_2_6_0_3552 32
#define LOCK_2_6_1_2080 33
#define LOCK_2_6_2_0 34
#define LOCK_2_6_3_0 35

// Declare shared memory buffers
v4float buf105[33];
v4float buf105d[33];
v4float buf81[33];
v4float buf81d[33];
v4float buf89[33];
v4float buf89d[33];
v4float buf97[33];
v4float buf97d[33];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<129u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf81_buf81d_i[1] = {{(float*)buf81, 129, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<129u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf89_buf89d_i[1] = {{(float*)buf89, 129, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<129u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf97_buf97d_o[1] = {{(float*)buf97, 129, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<129u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf105_buf105d_o[1] = {{(float*)buf105, 129, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_2_5_bounds = sync_buffer[1];

  while (proc_2_5_bounds)
  {

    // Kernel call : i41:orthogonalize<128>
    window_buf81_buf81d_i->setData(*window_buf81_buf81d_i, (float*)buf81, (float*)buf81d, 1-index, 0);
    window_buf81_buf81d_i->acquire(*window_buf81_buf81d_i, LOCK_2_5_0_0, LOCK_2_5_1_0, 1-index);
    window_buf89_buf89d_i->setData(*window_buf89_buf89d_i, (float*)buf89, (float*)buf89d, 1-index, 0);
    window_buf89_buf89d_i->acquire(*window_buf89_buf89d_i, LOCK_3_5_2_0, LOCK_3_5_3_0, 1-index);
    window_buf97_buf97d_o->setData(*window_buf97_buf97d_o, (float*)buf97, (float*)buf97d, 1-index, 0);
    window_buf97_buf97d_o->acquire(*window_buf97_buf97d_o, LOCK_2_6_0_3552, LOCK_2_6_1_2080, 1-index);
    window_buf105_buf105d_o->setData(*window_buf105_buf105d_o, (float*)buf105, (float*)buf105d, 1-index, 0);
    window_buf105_buf105d_o->acquire(*window_buf105_buf105d_o, LOCK_2_6_2_0, LOCK_2_6_3_0, 1-index);
    orthogonalize<128>(window_buf81_buf81d_i[0],window_buf89_buf89d_i[0],window_buf97_buf97d_o[0],window_buf105_buf105d_o[0]);
    window_buf81_buf81d_i->release(*window_buf81_buf81d_i, LOCK_2_5_0_0, LOCK_2_5_1_0, 1-index);
    window_buf89_buf89d_i->release(*window_buf89_buf89d_i, LOCK_3_5_2_0, LOCK_3_5_3_0, 1-index);
    window_buf97_buf97d_o->release(*window_buf97_buf97d_o, LOCK_2_6_0_3552, LOCK_2_6_1_2080, 1-index);
    window_buf105_buf105d_o->release(*window_buf105_buf105d_o, LOCK_2_6_2_0, LOCK_2_6_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_2_5_bounds > 0)
      --proc_2_5_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}