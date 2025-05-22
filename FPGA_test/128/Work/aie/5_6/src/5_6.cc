// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /home/luanxinya/SVD/FPGA_test/128/./Work/aie/5_6/src/5_6.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_4_6_0_3552 16
#define LOCK_4_6_1_5568 17
#define LOCK_5_6_2_0 50
#define LOCK_5_6_3_0 51
#define LOCK_5_7_0_7648 32
#define LOCK_5_7_1_0 33
#define LOCK_5_7_2_0 34
#define LOCK_5_7_3_0 35

// Declare shared memory buffers
v4float buf110[33];
v4float buf110d[33];
v4float buf114[33];
v4float buf114d[33];
v4float buf126[33];
v4float buf126d[33];
v4float buf98[33];
v4float buf98d[33];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<129u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf98_buf98d_i[1] = {{(float*)buf98, 129, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<129u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf110_buf110d_i[1] = {{(float*)buf110, 129, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<129u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf114_buf114d_o[1] = {{(float*)buf114, 129, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<129u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf126_buf126d_o[1] = {{(float*)buf126, 129, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_5_6_bounds = sync_buffer[1];

  while (proc_5_6_bounds)
  {

    // Kernel call : i52:orthogonalize<128>
    window_buf98_buf98d_i->setData(*window_buf98_buf98d_i, (float*)buf98, (float*)buf98d, 1-index, 0);
    window_buf98_buf98d_i->acquire(*window_buf98_buf98d_i, LOCK_4_6_0_3552, LOCK_4_6_1_5568, 1-index);
    window_buf110_buf110d_i->setData(*window_buf110_buf110d_i, (float*)buf110, (float*)buf110d, 1-index, 0);
    window_buf110_buf110d_i->acquire(*window_buf110_buf110d_i, LOCK_5_6_2_0, LOCK_5_6_3_0, 1-index);
    window_buf114_buf114d_o->setData(*window_buf114_buf114d_o, (float*)buf114, (float*)buf114d, 1-index, 0);
    window_buf114_buf114d_o->acquire(*window_buf114_buf114d_o, LOCK_5_7_0_7648, LOCK_5_7_1_0, 1-index);
    window_buf126_buf126d_o->setData(*window_buf126_buf126d_o, (float*)buf126, (float*)buf126d, 1-index, 0);
    window_buf126_buf126d_o->acquire(*window_buf126_buf126d_o, LOCK_5_7_2_0, LOCK_5_7_3_0, 1-index);
    orthogonalize<128>(window_buf98_buf98d_i[0],window_buf110_buf110d_i[0],window_buf114_buf114d_o[0],window_buf126_buf126d_o[0]);
    window_buf98_buf98d_i->release(*window_buf98_buf98d_i, LOCK_4_6_0_3552, LOCK_4_6_1_5568, 1-index);
    window_buf110_buf110d_i->release(*window_buf110_buf110d_i, LOCK_5_6_2_0, LOCK_5_6_3_0, 1-index);
    window_buf114_buf114d_o->release(*window_buf114_buf114d_o, LOCK_5_7_0_7648, LOCK_5_7_1_0, 1-index);
    window_buf126_buf126d_o->release(*window_buf126_buf126d_o, LOCK_5_7_2_0, LOCK_5_7_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_5_6_bounds > 0)
      --proc_5_6_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}