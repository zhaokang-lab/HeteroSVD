// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /home/luanxinya/SVD/FPGA_test/128/./Work/aie/10_1/src/10_1.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_10_1_0_0 16
#define LOCK_10_1_1_0 17
#define LOCK_11_1_0_0 48
#define LOCK_11_1_1_0 49
#define LOCK_10_0_0_0 0
#define LOCK_10_0_1_0 1
#define LOCK_10_0_2_0 2
#define LOCK_10_0_3_0 3

// Declare shared memory buffers
v4float buf219[33];
v4float buf219d[33];
v4float buf222[33];
v4float buf222d[33];
v4float buf235[33];
v4float buf235d[33];
v4float buf238[33];
v4float buf238d[33];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<129u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf219_buf219d_i[1] = {{(float*)buf219, 129, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<129u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf222_buf222d_i[1] = {{(float*)buf222, 129, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<129u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf235_buf235d_o[1] = {{(float*)buf235, 129, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<129u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf238_buf238d_o[1] = {{(float*)buf238, 129, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_10_1_bounds = sync_buffer[1];

  while (proc_10_1_bounds)
  {

    // Kernel call : i104:orthogonalize<128>
    window_buf219_buf219d_i->setData(*window_buf219_buf219d_i, (float*)buf219, (float*)buf219d, 1-index, 0);
    window_buf219_buf219d_i->acquire(*window_buf219_buf219d_i, LOCK_10_1_0_0, LOCK_10_1_1_0, 1-index);
    window_buf222_buf222d_i->setData(*window_buf222_buf222d_i, (float*)buf222, (float*)buf222d, 1-index, 0);
    window_buf222_buf222d_i->acquire(*window_buf222_buf222d_i, LOCK_11_1_0_0, LOCK_11_1_1_0, 1-index);
    window_buf235_buf235d_o->setData(*window_buf235_buf235d_o, (float*)buf235, (float*)buf235d, 1-index, 0);
    window_buf235_buf235d_o->acquire(*window_buf235_buf235d_o, LOCK_10_0_0_0, LOCK_10_0_1_0, 1-index);
    window_buf238_buf238d_o->setData(*window_buf238_buf238d_o, (float*)buf238, (float*)buf238d, 1-index, 0);
    window_buf238_buf238d_o->acquire(*window_buf238_buf238d_o, LOCK_10_0_2_0, LOCK_10_0_3_0, 1-index);
    orthogonalize<128>(window_buf219_buf219d_i[0],window_buf222_buf222d_i[0],window_buf235_buf235d_o[0],window_buf238_buf238d_o[0]);
    window_buf219_buf219d_i->release(*window_buf219_buf219d_i, LOCK_10_1_0_0, LOCK_10_1_1_0, 1-index);
    window_buf222_buf222d_i->release(*window_buf222_buf222d_i, LOCK_11_1_0_0, LOCK_11_1_1_0, 1-index);
    window_buf235_buf235d_o->release(*window_buf235_buf235d_o, LOCK_10_0_0_0, LOCK_10_0_1_0, 1-index);
    window_buf238_buf238d_o->release(*window_buf238_buf238d_o, LOCK_10_0_2_0, LOCK_10_0_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_10_1_bounds > 0)
      --proc_10_1_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}