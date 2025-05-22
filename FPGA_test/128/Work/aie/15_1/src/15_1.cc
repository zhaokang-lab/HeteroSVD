// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /home/luanxinya/SVD/FPGA_test/128/./Work/aie/15_1/src/15_1.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_15_1_0_3552 16
#define LOCK_15_1_1_2080 17
#define LOCK_16_1_2_0 50
#define LOCK_16_1_3_0 51
#define LOCK_15_0_0_0 0
#define LOCK_15_0_1_0 1
#define LOCK_15_0_2_0 2
#define LOCK_15_0_3_0 3

// Declare shared memory buffers
v4float buf209[33];
v4float buf209d[33];
v4float buf212[33];
v4float buf212d[33];
v4float buf225[33];
v4float buf225d[33];
v4float buf228[33];
v4float buf228d[33];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<129u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf209_buf209d_i[1] = {{(float*)buf209, 129, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<129u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf212_buf212d_i[1] = {{(float*)buf212, 129, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<129u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf225_buf225d_o[1] = {{(float*)buf225, 129, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<129u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf228_buf228d_o[1] = {{(float*)buf228, 129, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_15_1_bounds = sync_buffer[1];

  while (proc_15_1_bounds)
  {

    // Kernel call : i109:orthogonalize<128>
    window_buf209_buf209d_i->setData(*window_buf209_buf209d_i, (float*)buf209, (float*)buf209d, 1-index, 0);
    window_buf209_buf209d_i->acquire(*window_buf209_buf209d_i, LOCK_15_1_0_3552, LOCK_15_1_1_2080, 1-index);
    window_buf212_buf212d_i->setData(*window_buf212_buf212d_i, (float*)buf212, (float*)buf212d, 1-index, 0);
    window_buf212_buf212d_i->acquire(*window_buf212_buf212d_i, LOCK_16_1_2_0, LOCK_16_1_3_0, 1-index);
    window_buf225_buf225d_o->setData(*window_buf225_buf225d_o, (float*)buf225, (float*)buf225d, 1-index, 0);
    window_buf225_buf225d_o->acquire(*window_buf225_buf225d_o, LOCK_15_0_0_0, LOCK_15_0_1_0, 1-index);
    window_buf228_buf228d_o->setData(*window_buf228_buf228d_o, (float*)buf228, (float*)buf228d, 1-index, 0);
    window_buf228_buf228d_o->acquire(*window_buf228_buf228d_o, LOCK_15_0_2_0, LOCK_15_0_3_0, 1-index);
    orthogonalize<128>(window_buf209_buf209d_i[0],window_buf212_buf212d_i[0],window_buf225_buf225d_o[0],window_buf228_buf228d_o[0]);
    window_buf209_buf209d_i->release(*window_buf209_buf209d_i, LOCK_15_1_0_3552, LOCK_15_1_1_2080, 1-index);
    window_buf212_buf212d_i->release(*window_buf212_buf212d_i, LOCK_16_1_2_0, LOCK_16_1_3_0, 1-index);
    window_buf225_buf225d_o->release(*window_buf225_buf225d_o, LOCK_15_0_0_0, LOCK_15_0_1_0, 1-index);
    window_buf228_buf228d_o->release(*window_buf228_buf228d_o, LOCK_15_0_2_0, LOCK_15_0_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_15_1_bounds > 0)
      --proc_15_1_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}