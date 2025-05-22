// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /home/luanxinya/SVD/FPGA_test/128/./Work/aie/12_3/src/12_3.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_12_3_0_0 16
#define LOCK_12_3_1_0 17
#define LOCK_13_3_2_0 50
#define LOCK_13_3_3_0 51
#define LOCK_12_2_0_0 0
#define LOCK_12_2_1_0 1
#define LOCK_12_2_2_0 2
#define LOCK_12_2_3_0 3

// Declare shared memory buffers
v4float buf181[33];
v4float buf181d[33];
v4float buf188[33];
v4float buf188d[33];
v4float buf197[33];
v4float buf197d[33];
v4float buf204[33];
v4float buf204d[33];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<129u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf181_buf181d_i[1] = {{(float*)buf181, 129, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<129u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf188_buf188d_i[1] = {{(float*)buf188, 129, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<129u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf197_buf197d_o[1] = {{(float*)buf197, 129, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<129u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf204_buf204d_o[1] = {{(float*)buf204, 129, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_12_3_bounds = sync_buffer[1];

  while (proc_12_3_bounds)
  {

    // Kernel call : i90:orthogonalize<128>
    window_buf181_buf181d_i->setData(*window_buf181_buf181d_i, (float*)buf181, (float*)buf181d, 1-index, 0);
    window_buf181_buf181d_i->acquire(*window_buf181_buf181d_i, LOCK_12_3_0_0, LOCK_12_3_1_0, 1-index);
    window_buf188_buf188d_i->setData(*window_buf188_buf188d_i, (float*)buf188, (float*)buf188d, 1-index, 0);
    window_buf188_buf188d_i->acquire(*window_buf188_buf188d_i, LOCK_13_3_2_0, LOCK_13_3_3_0, 1-index);
    window_buf197_buf197d_o->setData(*window_buf197_buf197d_o, (float*)buf197, (float*)buf197d, 1-index, 0);
    window_buf197_buf197d_o->acquire(*window_buf197_buf197d_o, LOCK_12_2_0_0, LOCK_12_2_1_0, 1-index);
    window_buf204_buf204d_o->setData(*window_buf204_buf204d_o, (float*)buf204, (float*)buf204d, 1-index, 0);
    window_buf204_buf204d_o->acquire(*window_buf204_buf204d_o, LOCK_12_2_2_0, LOCK_12_2_3_0, 1-index);
    orthogonalize<128>(window_buf181_buf181d_i[0],window_buf188_buf188d_i[0],window_buf197_buf197d_o[0],window_buf204_buf204d_o[0]);
    window_buf181_buf181d_i->release(*window_buf181_buf181d_i, LOCK_12_3_0_0, LOCK_12_3_1_0, 1-index);
    window_buf188_buf188d_i->release(*window_buf188_buf188d_i, LOCK_13_3_2_0, LOCK_13_3_3_0, 1-index);
    window_buf197_buf197d_o->release(*window_buf197_buf197d_o, LOCK_12_2_0_0, LOCK_12_2_1_0, 1-index);
    window_buf204_buf204d_o->release(*window_buf204_buf204d_o, LOCK_12_2_2_0, LOCK_12_2_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_12_3_bounds > 0)
      --proc_12_3_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}