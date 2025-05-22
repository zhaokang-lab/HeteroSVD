// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /home/luanxinya/SVD/FPGA_test/128/./Work/aie/13_3/src/13_3.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_13_3_0_0 16
#define LOCK_13_3_1_0 17
#define LOCK_14_3_2_0 50
#define LOCK_14_3_3_0 51
#define LOCK_13_2_0_0 0
#define LOCK_13_2_1_0 1
#define LOCK_13_2_2_0 2
#define LOCK_13_2_3_0 3

// Declare shared memory buffers
v4float buf179[33];
v4float buf179d[33];
v4float buf186[33];
v4float buf186d[33];
v4float buf195[33];
v4float buf195d[33];
v4float buf202[33];
v4float buf202d[33];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<129u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf179_buf179d_i[1] = {{(float*)buf179, 129, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<129u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf186_buf186d_i[1] = {{(float*)buf186, 129, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<129u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf195_buf195d_o[1] = {{(float*)buf195, 129, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<129u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf202_buf202d_o[1] = {{(float*)buf202, 129, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_13_3_bounds = sync_buffer[1];

  while (proc_13_3_bounds)
  {

    // Kernel call : i91:orthogonalize<128>
    window_buf179_buf179d_i->setData(*window_buf179_buf179d_i, (float*)buf179, (float*)buf179d, 1-index, 0);
    window_buf179_buf179d_i->acquire(*window_buf179_buf179d_i, LOCK_13_3_0_0, LOCK_13_3_1_0, 1-index);
    window_buf186_buf186d_i->setData(*window_buf186_buf186d_i, (float*)buf186, (float*)buf186d, 1-index, 0);
    window_buf186_buf186d_i->acquire(*window_buf186_buf186d_i, LOCK_14_3_2_0, LOCK_14_3_3_0, 1-index);
    window_buf195_buf195d_o->setData(*window_buf195_buf195d_o, (float*)buf195, (float*)buf195d, 1-index, 0);
    window_buf195_buf195d_o->acquire(*window_buf195_buf195d_o, LOCK_13_2_0_0, LOCK_13_2_1_0, 1-index);
    window_buf202_buf202d_o->setData(*window_buf202_buf202d_o, (float*)buf202, (float*)buf202d, 1-index, 0);
    window_buf202_buf202d_o->acquire(*window_buf202_buf202d_o, LOCK_13_2_2_0, LOCK_13_2_3_0, 1-index);
    orthogonalize<128>(window_buf179_buf179d_i[0],window_buf186_buf186d_i[0],window_buf195_buf195d_o[0],window_buf202_buf202d_o[0]);
    window_buf179_buf179d_i->release(*window_buf179_buf179d_i, LOCK_13_3_0_0, LOCK_13_3_1_0, 1-index);
    window_buf186_buf186d_i->release(*window_buf186_buf186d_i, LOCK_14_3_2_0, LOCK_14_3_3_0, 1-index);
    window_buf195_buf195d_o->release(*window_buf195_buf195d_o, LOCK_13_2_0_0, LOCK_13_2_1_0, 1-index);
    window_buf202_buf202d_o->release(*window_buf202_buf202d_o, LOCK_13_2_2_0, LOCK_13_2_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_13_3_bounds > 0)
      --proc_13_3_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}