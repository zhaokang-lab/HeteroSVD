// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /home/luanxinya/SVD/FPGA_test/128/./Work/aie/15_5/src/15_5.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_15_5_0_0 16
#define LOCK_15_5_1_0 17
#define LOCK_16_5_2_0 50
#define LOCK_16_5_3_0 51
#define LOCK_15_4_0_0 0
#define LOCK_15_4_1_0 1
#define LOCK_15_4_2_0 2
#define LOCK_15_4_3_0 3

// Declare shared memory buffers
v4float buf146[33];
v4float buf146d[33];
v4float buf152[33];
v4float buf152d[33];
v4float buf162[33];
v4float buf162d[33];
v4float buf168[33];
v4float buf168d[33];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<129u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf146_buf146d_i[1] = {{(float*)buf146, 129, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<129u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf152_buf152d_i[1] = {{(float*)buf152, 129, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<129u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf162_buf162d_o[1] = {{(float*)buf162, 129, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<129u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf168_buf168d_o[1] = {{(float*)buf168, 129, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_15_5_bounds = sync_buffer[1];

  while (proc_15_5_bounds)
  {

    // Kernel call : i77:orthogonalize<128>
    window_buf146_buf146d_i->setData(*window_buf146_buf146d_i, (float*)buf146, (float*)buf146d, 1-index, 0);
    window_buf146_buf146d_i->acquire(*window_buf146_buf146d_i, LOCK_15_5_0_0, LOCK_15_5_1_0, 1-index);
    window_buf152_buf152d_i->setData(*window_buf152_buf152d_i, (float*)buf152, (float*)buf152d, 1-index, 0);
    window_buf152_buf152d_i->acquire(*window_buf152_buf152d_i, LOCK_16_5_2_0, LOCK_16_5_3_0, 1-index);
    window_buf162_buf162d_o->setData(*window_buf162_buf162d_o, (float*)buf162, (float*)buf162d, 1-index, 0);
    window_buf162_buf162d_o->acquire(*window_buf162_buf162d_o, LOCK_15_4_0_0, LOCK_15_4_1_0, 1-index);
    window_buf168_buf168d_o->setData(*window_buf168_buf168d_o, (float*)buf168, (float*)buf168d, 1-index, 0);
    window_buf168_buf168d_o->acquire(*window_buf168_buf168d_o, LOCK_15_4_2_0, LOCK_15_4_3_0, 1-index);
    orthogonalize<128>(window_buf146_buf146d_i[0],window_buf152_buf152d_i[0],window_buf162_buf162d_o[0],window_buf168_buf168d_o[0]);
    window_buf146_buf146d_i->release(*window_buf146_buf146d_i, LOCK_15_5_0_0, LOCK_15_5_1_0, 1-index);
    window_buf152_buf152d_i->release(*window_buf152_buf152d_i, LOCK_16_5_2_0, LOCK_16_5_3_0, 1-index);
    window_buf162_buf162d_o->release(*window_buf162_buf162d_o, LOCK_15_4_0_0, LOCK_15_4_1_0, 1-index);
    window_buf168_buf168d_o->release(*window_buf168_buf168d_o, LOCK_15_4_2_0, LOCK_15_4_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_15_5_bounds > 0)
      --proc_15_5_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}