// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /home/luanxinya/SVD/FPGA_test/128/./Work/aie/2_0/src/2_0.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_1_0_0_0 16
#define LOCK_1_0_1_7648 17
#define LOCK_1_0_2_0 18
#define LOCK_1_0_3_7648 19
#define LOCK_2_1_0_7648 32
#define LOCK_2_1_1_0 33
#define LOCK_2_1_2_0 34
#define LOCK_2_1_3_0 35

// Declare shared memory buffers
v4float buf18[33];
v4float buf18d[33];
v4float buf19[33];
v4float buf19d[33];
v4float buf2[33];
v4float buf2d[33];
v4float buf3[33];
v4float buf3d[33];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<129u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf2_buf2d_i[1] = {{(float*)buf2, 129, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<129u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf3_buf3d_i[1] = {{(float*)buf3, 129, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<129u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf18_buf18d_o[1] = {{(float*)buf18, 129, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<129u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf19_buf19d_o[1] = {{(float*)buf19, 129, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_2_0_bounds = sync_buffer[1];

  while (proc_2_0_bounds)
  {

    // Kernel call : i1:orthogonalize<128>
    window_buf2_buf2d_i->setData(*window_buf2_buf2d_i, (float*)buf2, (float*)buf2d, 1-index, 0);
    window_buf2_buf2d_i->acquire(*window_buf2_buf2d_i, LOCK_1_0_0_0, LOCK_1_0_1_7648, 1-index);
    window_buf3_buf3d_i->setData(*window_buf3_buf3d_i, (float*)buf3, (float*)buf3d, 1-index, 0);
    window_buf3_buf3d_i->acquire(*window_buf3_buf3d_i, LOCK_1_0_2_0, LOCK_1_0_3_7648, 1-index);
    window_buf18_buf18d_o->setData(*window_buf18_buf18d_o, (float*)buf18, (float*)buf18d, 1-index, 0);
    window_buf18_buf18d_o->acquire(*window_buf18_buf18d_o, LOCK_2_1_0_7648, LOCK_2_1_1_0, 1-index);
    window_buf19_buf19d_o->setData(*window_buf19_buf19d_o, (float*)buf19, (float*)buf19d, 1-index, 0);
    window_buf19_buf19d_o->acquire(*window_buf19_buf19d_o, LOCK_2_1_2_0, LOCK_2_1_3_0, 1-index);
    orthogonalize<128>(window_buf2_buf2d_i[0],window_buf3_buf3d_i[0],window_buf18_buf18d_o[0],window_buf19_buf19d_o[0]);
    window_buf2_buf2d_i->release(*window_buf2_buf2d_i, LOCK_1_0_0_0, LOCK_1_0_1_7648, 1-index);
    window_buf3_buf3d_i->release(*window_buf3_buf3d_i, LOCK_1_0_2_0, LOCK_1_0_3_7648, 1-index);
    window_buf18_buf18d_o->release(*window_buf18_buf18d_o, LOCK_2_1_0_7648, LOCK_2_1_1_0, 1-index);
    window_buf19_buf19d_o->release(*window_buf19_buf19d_o, LOCK_2_1_2_0, LOCK_2_1_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_2_0_bounds > 0)
      --proc_2_0_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}