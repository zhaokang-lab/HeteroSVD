// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /home/luanxinya/SVD/FPGA_test/128/./Work/aie/10_5/src/10_5.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_10_5_0_0 16
#define LOCK_10_5_1_0 17
#define LOCK_11_5_2_0 50
#define LOCK_11_5_3_0 51
#define LOCK_10_4_0_0 0
#define LOCK_10_4_1_0 1
#define LOCK_10_4_2_0 2
#define LOCK_10_4_3_0 3

// Declare shared memory buffers
v4float buf151[33];
v4float buf151d[33];
v4float buf155[33];
v4float buf155d[33];
v4float buf167[33];
v4float buf167d[33];
v4float buf171[33];
v4float buf171d[33];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<129u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf151_buf151d_i[1] = {{(float*)buf151, 129, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<129u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf155_buf155d_i[1] = {{(float*)buf155, 129, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<129u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf167_buf167d_o[1] = {{(float*)buf167, 129, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<129u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf171_buf171d_o[1] = {{(float*)buf171, 129, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_10_5_bounds = sync_buffer[1];

  while (proc_10_5_bounds)
  {

    // Kernel call : i72:orthogonalize<128>
    window_buf151_buf151d_i->setData(*window_buf151_buf151d_i, (float*)buf151, (float*)buf151d, 1-index, 0);
    window_buf151_buf151d_i->acquire(*window_buf151_buf151d_i, LOCK_10_5_0_0, LOCK_10_5_1_0, 1-index);
    window_buf155_buf155d_i->setData(*window_buf155_buf155d_i, (float*)buf155, (float*)buf155d, 1-index, 0);
    window_buf155_buf155d_i->acquire(*window_buf155_buf155d_i, LOCK_11_5_2_0, LOCK_11_5_3_0, 1-index);
    window_buf167_buf167d_o->setData(*window_buf167_buf167d_o, (float*)buf167, (float*)buf167d, 1-index, 0);
    window_buf167_buf167d_o->acquire(*window_buf167_buf167d_o, LOCK_10_4_0_0, LOCK_10_4_1_0, 1-index);
    window_buf171_buf171d_o->setData(*window_buf171_buf171d_o, (float*)buf171, (float*)buf171d, 1-index, 0);
    window_buf171_buf171d_o->acquire(*window_buf171_buf171d_o, LOCK_10_4_2_0, LOCK_10_4_3_0, 1-index);
    orthogonalize<128>(window_buf151_buf151d_i[0],window_buf155_buf155d_i[0],window_buf167_buf167d_o[0],window_buf171_buf171d_o[0]);
    window_buf151_buf151d_i->release(*window_buf151_buf151d_i, LOCK_10_5_0_0, LOCK_10_5_1_0, 1-index);
    window_buf155_buf155d_i->release(*window_buf155_buf155d_i, LOCK_11_5_2_0, LOCK_11_5_3_0, 1-index);
    window_buf167_buf167d_o->release(*window_buf167_buf167d_o, LOCK_10_4_0_0, LOCK_10_4_1_0, 1-index);
    window_buf171_buf171d_o->release(*window_buf171_buf171d_o, LOCK_10_4_2_0, LOCK_10_4_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_10_5_bounds > 0)
      --proc_10_5_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}