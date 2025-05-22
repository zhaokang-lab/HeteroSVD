// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /home/luanxinya/SVD/FPGA_test/128/./Work/aie/4_5/src/4_5.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_4_5_0_0 16
#define LOCK_4_5_1_0 17
#define LOCK_5_5_2_0 50
#define LOCK_5_5_3_0 51
#define LOCK_4_6_0_3552 32
#define LOCK_4_6_1_5568 33
#define LOCK_4_6_2_2080 34
#define LOCK_4_6_3_0 35

// Declare shared memory buffers
v4float buf109[33];
v4float buf109d[33];
v4float buf82[33];
v4float buf82d[33];
v4float buf93[33];
v4float buf93d[33];
v4float buf98[33];
v4float buf98d[33];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<129u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf82_buf82d_i[1] = {{(float*)buf82, 129, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<129u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf93_buf93d_i[1] = {{(float*)buf93, 129, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<129u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf98_buf98d_o[1] = {{(float*)buf98, 129, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<129u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf109_buf109d_o[1] = {{(float*)buf109, 129, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_4_5_bounds = sync_buffer[1];

  while (proc_4_5_bounds)
  {

    // Kernel call : i43:orthogonalize<128>
    window_buf82_buf82d_i->setData(*window_buf82_buf82d_i, (float*)buf82, (float*)buf82d, 1-index, 0);
    window_buf82_buf82d_i->acquire(*window_buf82_buf82d_i, LOCK_4_5_0_0, LOCK_4_5_1_0, 1-index);
    window_buf93_buf93d_i->setData(*window_buf93_buf93d_i, (float*)buf93, (float*)buf93d, 1-index, 0);
    window_buf93_buf93d_i->acquire(*window_buf93_buf93d_i, LOCK_5_5_2_0, LOCK_5_5_3_0, 1-index);
    window_buf98_buf98d_o->setData(*window_buf98_buf98d_o, (float*)buf98, (float*)buf98d, 1-index, 0);
    window_buf98_buf98d_o->acquire(*window_buf98_buf98d_o, LOCK_4_6_0_3552, LOCK_4_6_1_5568, 1-index);
    window_buf109_buf109d_o->setData(*window_buf109_buf109d_o, (float*)buf109, (float*)buf109d, 1-index, 0);
    window_buf109_buf109d_o->acquire(*window_buf109_buf109d_o, LOCK_4_6_2_2080, LOCK_4_6_3_0, 1-index);
    orthogonalize<128>(window_buf82_buf82d_i[0],window_buf93_buf93d_i[0],window_buf98_buf98d_o[0],window_buf109_buf109d_o[0]);
    window_buf82_buf82d_i->release(*window_buf82_buf82d_i, LOCK_4_5_0_0, LOCK_4_5_1_0, 1-index);
    window_buf93_buf93d_i->release(*window_buf93_buf93d_i, LOCK_5_5_2_0, LOCK_5_5_3_0, 1-index);
    window_buf98_buf98d_o->release(*window_buf98_buf98d_o, LOCK_4_6_0_3552, LOCK_4_6_1_5568, 1-index);
    window_buf109_buf109d_o->release(*window_buf109_buf109d_o, LOCK_4_6_2_2080, LOCK_4_6_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_4_5_bounds > 0)
      --proc_4_5_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}