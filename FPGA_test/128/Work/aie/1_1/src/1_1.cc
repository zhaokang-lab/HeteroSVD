// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /home/luanxinya/SVD/FPGA_test/128/./Work/aie/1_1/src/1_1.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_1_1_0_1088 16
#define LOCK_1_1_1_544 17
#define LOCK_2_1_2_0 50
#define LOCK_2_1_3_0 51
#define LOCK_1_2_2_0 34
#define LOCK_1_2_3_0 35
#define LOCK_1_2_0_0 32
#define LOCK_1_2_1_0 33

// Declare shared memory buffers
v4float buf16[33];
v4float buf16d[33];
v4float buf19[33];
v4float buf19d[33];
v4float buf32[33];
v4float buf32d[33];
v4float buf35[33];
v4float buf35d[33];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<129u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf16_buf16d_i[1] = {{(float*)buf16, 129, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<129u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf19_buf19d_i[1] = {{(float*)buf19, 129, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<129u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf32_buf32d_o[1] = {{(float*)buf32, 129, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<129u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf35_buf35d_o[1] = {{(float*)buf35, 129, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_1_1_bounds = sync_buffer[1];

  while (proc_1_1_bounds)
  {

    // Kernel call : i8:orthogonalize<128>
    window_buf16_buf16d_i->setData(*window_buf16_buf16d_i, (float*)buf16, (float*)buf16d, 1-index, 0);
    window_buf16_buf16d_i->acquire(*window_buf16_buf16d_i, LOCK_1_1_0_1088, LOCK_1_1_1_544, 1-index);
    window_buf19_buf19d_i->setData(*window_buf19_buf19d_i, (float*)buf19, (float*)buf19d, 1-index, 0);
    window_buf19_buf19d_i->acquire(*window_buf19_buf19d_i, LOCK_2_1_2_0, LOCK_2_1_3_0, 1-index);
    window_buf32_buf32d_o->setData(*window_buf32_buf32d_o, (float*)buf32, (float*)buf32d, 1-index, 0);
    window_buf32_buf32d_o->acquire(*window_buf32_buf32d_o, LOCK_1_2_2_0, LOCK_1_2_3_0, 1-index);
    window_buf35_buf35d_o->setData(*window_buf35_buf35d_o, (float*)buf35, (float*)buf35d, 1-index, 0);
    window_buf35_buf35d_o->acquire(*window_buf35_buf35d_o, LOCK_1_2_0_0, LOCK_1_2_1_0, 1-index);
    orthogonalize<128>(window_buf16_buf16d_i[0],window_buf19_buf19d_i[0],window_buf32_buf32d_o[0],window_buf35_buf35d_o[0]);
    window_buf16_buf16d_i->release(*window_buf16_buf16d_i, LOCK_1_1_0_1088, LOCK_1_1_1_544, 1-index);
    window_buf19_buf19d_i->release(*window_buf19_buf19d_i, LOCK_2_1_2_0, LOCK_2_1_3_0, 1-index);
    window_buf32_buf32d_o->release(*window_buf32_buf32d_o, LOCK_1_2_2_0, LOCK_1_2_3_0, 1-index);
    window_buf35_buf35d_o->release(*window_buf35_buf35d_o, LOCK_1_2_0_0, LOCK_1_2_1_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_1_1_bounds > 0)
      --proc_1_1_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}