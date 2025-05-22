// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /home/luanxinya/SVD/FPGA_test/128/./Work/aie/17_2/src/17_2.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_16_2_2_0 18
#define LOCK_16_2_3_0 19
#define LOCK_17_2_0_7648 48
#define LOCK_17_2_1_0 49
#define LOCK_17_1_0_3552 0
#define LOCK_17_1_1_5568 1
#define LOCK_17_1_2_2080 2
#define LOCK_17_1_3_0 3

// Declare shared memory buffers
v4float buf194[33];
v4float buf194d[33];
v4float buf207[33];
v4float buf207d[33];
v4float buf210[33];
v4float buf210d[33];
v4float buf223[33];
v4float buf223d[33];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<129u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf194_buf194d_i[1] = {{(float*)buf194, 129, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<129u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf207_buf207d_i[1] = {{(float*)buf207, 129, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<129u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf210_buf210d_o[1] = {{(float*)buf210, 129, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<129u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf223_buf223d_o[1] = {{(float*)buf223, 129, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_17_2_bounds = sync_buffer[1];

  while (proc_17_2_bounds)
  {

    // Kernel call : i103:orthogonalize<128>
    window_buf194_buf194d_i->setData(*window_buf194_buf194d_i, (float*)buf194, (float*)buf194d, 1-index, 0);
    window_buf194_buf194d_i->acquire(*window_buf194_buf194d_i, LOCK_16_2_2_0, LOCK_16_2_3_0, 1-index);
    window_buf207_buf207d_i->setData(*window_buf207_buf207d_i, (float*)buf207, (float*)buf207d, 1-index, 0);
    window_buf207_buf207d_i->acquire(*window_buf207_buf207d_i, LOCK_17_2_0_7648, LOCK_17_2_1_0, 1-index);
    window_buf210_buf210d_o->setData(*window_buf210_buf210d_o, (float*)buf210, (float*)buf210d, 1-index, 0);
    window_buf210_buf210d_o->acquire(*window_buf210_buf210d_o, LOCK_17_1_0_3552, LOCK_17_1_1_5568, 1-index);
    window_buf223_buf223d_o->setData(*window_buf223_buf223d_o, (float*)buf223, (float*)buf223d, 1-index, 0);
    window_buf223_buf223d_o->acquire(*window_buf223_buf223d_o, LOCK_17_1_2_2080, LOCK_17_1_3_0, 1-index);
    orthogonalize<128>(window_buf194_buf194d_i[0],window_buf207_buf207d_i[0],window_buf210_buf210d_o[0],window_buf223_buf223d_o[0]);
    window_buf194_buf194d_i->release(*window_buf194_buf194d_i, LOCK_16_2_2_0, LOCK_16_2_3_0, 1-index);
    window_buf207_buf207d_i->release(*window_buf207_buf207d_i, LOCK_17_2_0_7648, LOCK_17_2_1_0, 1-index);
    window_buf210_buf210d_o->release(*window_buf210_buf210d_o, LOCK_17_1_0_3552, LOCK_17_1_1_5568, 1-index);
    window_buf223_buf223d_o->release(*window_buf223_buf223d_o, LOCK_17_1_2_2080, LOCK_17_1_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_17_2_bounds > 0)
      --proc_17_2_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}