// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /home/luanxinya/SVD/FPGA_test/128/./Work/aie/11_3/src/11_3.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_11_3_0_7648 16
#define LOCK_11_3_1_0 17
#define LOCK_12_3_2_0 50
#define LOCK_12_3_3_0 51
#define LOCK_11_2_0_0 0
#define LOCK_11_2_1_0 1
#define LOCK_11_2_2_0 2
#define LOCK_11_2_3_0 3

// Declare shared memory buffers
v4float buf183[33];
v4float buf183d[33];
v4float buf190[33];
v4float buf190d[33];
v4float buf199[33];
v4float buf199d[33];
v4float buf206[33];
v4float buf206d[33];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<129u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf183_buf183d_i[1] = {{(float*)buf183, 129, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<129u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf190_buf190d_i[1] = {{(float*)buf190, 129, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<129u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf199_buf199d_o[1] = {{(float*)buf199, 129, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<129u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf206_buf206d_o[1] = {{(float*)buf206, 129, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_11_3_bounds = sync_buffer[1];

  while (proc_11_3_bounds)
  {

    // Kernel call : i89:orthogonalize<128>
    window_buf183_buf183d_i->setData(*window_buf183_buf183d_i, (float*)buf183, (float*)buf183d, 1-index, 0);
    window_buf183_buf183d_i->acquire(*window_buf183_buf183d_i, LOCK_11_3_0_7648, LOCK_11_3_1_0, 1-index);
    window_buf190_buf190d_i->setData(*window_buf190_buf190d_i, (float*)buf190, (float*)buf190d, 1-index, 0);
    window_buf190_buf190d_i->acquire(*window_buf190_buf190d_i, LOCK_12_3_2_0, LOCK_12_3_3_0, 1-index);
    window_buf199_buf199d_o->setData(*window_buf199_buf199d_o, (float*)buf199, (float*)buf199d, 1-index, 0);
    window_buf199_buf199d_o->acquire(*window_buf199_buf199d_o, LOCK_11_2_0_0, LOCK_11_2_1_0, 1-index);
    window_buf206_buf206d_o->setData(*window_buf206_buf206d_o, (float*)buf206, (float*)buf206d, 1-index, 0);
    window_buf206_buf206d_o->acquire(*window_buf206_buf206d_o, LOCK_11_2_2_0, LOCK_11_2_3_0, 1-index);
    orthogonalize<128>(window_buf183_buf183d_i[0],window_buf190_buf190d_i[0],window_buf199_buf199d_o[0],window_buf206_buf206d_o[0]);
    window_buf183_buf183d_i->release(*window_buf183_buf183d_i, LOCK_11_3_0_7648, LOCK_11_3_1_0, 1-index);
    window_buf190_buf190d_i->release(*window_buf190_buf190d_i, LOCK_12_3_2_0, LOCK_12_3_3_0, 1-index);
    window_buf199_buf199d_o->release(*window_buf199_buf199d_o, LOCK_11_2_0_0, LOCK_11_2_1_0, 1-index);
    window_buf206_buf206d_o->release(*window_buf206_buf206d_o, LOCK_11_2_2_0, LOCK_11_2_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_11_3_bounds > 0)
      --proc_11_3_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}