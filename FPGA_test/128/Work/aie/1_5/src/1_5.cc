// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /home/luanxinya/SVD/FPGA_test/128/./Work/aie/1_5/src/1_5.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_1_5_2_544 18
#define LOCK_1_5_3_544 19
#define LOCK_2_5_2_0 50
#define LOCK_2_5_3_0 51
#define LOCK_1_6_0_3552 32
#define LOCK_1_6_1_5568 33
#define LOCK_1_6_2_2080 34
#define LOCK_1_6_3_0 35

// Declare shared memory buffers
v4float buf103[33];
v4float buf103d[33];
v4float buf83[33];
v4float buf83d[33];
v4float buf87[33];
v4float buf87d[33];
v4float buf99[33];
v4float buf99d[33];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<129u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf83_buf83d_i[1] = {{(float*)buf83, 129, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<129u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf87_buf87d_i[1] = {{(float*)buf87, 129, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<129u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf99_buf99d_o[1] = {{(float*)buf99, 129, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<129u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf103_buf103d_o[1] = {{(float*)buf103, 129, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_1_5_bounds = sync_buffer[1];

  while (proc_1_5_bounds)
  {

    // Kernel call : i40:orthogonalize<128>
    window_buf83_buf83d_i->setData(*window_buf83_buf83d_i, (float*)buf83, (float*)buf83d, 1-index, 0);
    window_buf83_buf83d_i->acquire(*window_buf83_buf83d_i, LOCK_1_5_2_544, LOCK_1_5_3_544, 1-index);
    window_buf87_buf87d_i->setData(*window_buf87_buf87d_i, (float*)buf87, (float*)buf87d, 1-index, 0);
    window_buf87_buf87d_i->acquire(*window_buf87_buf87d_i, LOCK_2_5_2_0, LOCK_2_5_3_0, 1-index);
    window_buf99_buf99d_o->setData(*window_buf99_buf99d_o, (float*)buf99, (float*)buf99d, 1-index, 0);
    window_buf99_buf99d_o->acquire(*window_buf99_buf99d_o, LOCK_1_6_0_3552, LOCK_1_6_1_5568, 1-index);
    window_buf103_buf103d_o->setData(*window_buf103_buf103d_o, (float*)buf103, (float*)buf103d, 1-index, 0);
    window_buf103_buf103d_o->acquire(*window_buf103_buf103d_o, LOCK_1_6_2_2080, LOCK_1_6_3_0, 1-index);
    orthogonalize<128>(window_buf83_buf83d_i[0],window_buf87_buf87d_i[0],window_buf99_buf99d_o[0],window_buf103_buf103d_o[0]);
    window_buf83_buf83d_i->release(*window_buf83_buf83d_i, LOCK_1_5_2_544, LOCK_1_5_3_544, 1-index);
    window_buf87_buf87d_i->release(*window_buf87_buf87d_i, LOCK_2_5_2_0, LOCK_2_5_3_0, 1-index);
    window_buf99_buf99d_o->release(*window_buf99_buf99d_o, LOCK_1_6_0_3552, LOCK_1_6_1_5568, 1-index);
    window_buf103_buf103d_o->release(*window_buf103_buf103d_o, LOCK_1_6_2_2080, LOCK_1_6_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_1_5_bounds > 0)
      --proc_1_5_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}