// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /home/luanxinya/SVD/FPGA_test/128/./Work/aie/13_2/src/13_2.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_12_2_0_0 16
#define LOCK_12_2_1_0 17
#define LOCK_13_2_2_0 50
#define LOCK_13_2_3_0 51
#define LOCK_13_1_2_0 2
#define LOCK_13_1_3_0 3
#define LOCK_13_1_0_0 0
#define LOCK_13_1_1_0 1

// Declare shared memory buffers
v4float buf197[33];
v4float buf197d[33];
v4float buf202[33];
v4float buf202d[33];
v4float buf213[33];
v4float buf213d[33];
v4float buf218[33];
v4float buf218d[33];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<129u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf197_buf197d_i[1] = {{(float*)buf197, 129, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<129u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf202_buf202d_i[1] = {{(float*)buf202, 129, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<129u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf213_buf213d_o[1] = {{(float*)buf213, 129, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<129u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf218_buf218d_o[1] = {{(float*)buf218, 129, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_13_2_bounds = sync_buffer[1];

  while (proc_13_2_bounds)
  {

    // Kernel call : i99:orthogonalize<128>
    window_buf197_buf197d_i->setData(*window_buf197_buf197d_i, (float*)buf197, (float*)buf197d, 1-index, 0);
    window_buf197_buf197d_i->acquire(*window_buf197_buf197d_i, LOCK_12_2_0_0, LOCK_12_2_1_0, 1-index);
    window_buf202_buf202d_i->setData(*window_buf202_buf202d_i, (float*)buf202, (float*)buf202d, 1-index, 0);
    window_buf202_buf202d_i->acquire(*window_buf202_buf202d_i, LOCK_13_2_2_0, LOCK_13_2_3_0, 1-index);
    window_buf213_buf213d_o->setData(*window_buf213_buf213d_o, (float*)buf213, (float*)buf213d, 1-index, 0);
    window_buf213_buf213d_o->acquire(*window_buf213_buf213d_o, LOCK_13_1_2_0, LOCK_13_1_3_0, 1-index);
    window_buf218_buf218d_o->setData(*window_buf218_buf218d_o, (float*)buf218, (float*)buf218d, 1-index, 0);
    window_buf218_buf218d_o->acquire(*window_buf218_buf218d_o, LOCK_13_1_0_0, LOCK_13_1_1_0, 1-index);
    orthogonalize<128>(window_buf197_buf197d_i[0],window_buf202_buf202d_i[0],window_buf213_buf213d_o[0],window_buf218_buf218d_o[0]);
    window_buf197_buf197d_i->release(*window_buf197_buf197d_i, LOCK_12_2_0_0, LOCK_12_2_1_0, 1-index);
    window_buf202_buf202d_i->release(*window_buf202_buf202d_i, LOCK_13_2_2_0, LOCK_13_2_3_0, 1-index);
    window_buf213_buf213d_o->release(*window_buf213_buf213d_o, LOCK_13_1_2_0, LOCK_13_1_3_0, 1-index);
    window_buf218_buf218d_o->release(*window_buf218_buf218d_o, LOCK_13_1_0_0, LOCK_13_1_1_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_13_2_bounds > 0)
      --proc_13_2_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}