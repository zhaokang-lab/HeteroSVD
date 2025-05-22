// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /home/luanxinya/SVD/FPGA_test/128/./Work/aie/13_1/src/13_1.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_13_1_2_0 18
#define LOCK_13_1_3_0 19
#define LOCK_14_1_2_0 50
#define LOCK_14_1_3_0 51
#define LOCK_13_0_0_0 0
#define LOCK_13_0_1_0 1
#define LOCK_13_0_2_0 2
#define LOCK_13_0_3_0 3

// Declare shared memory buffers
v4float buf213[33];
v4float buf213d[33];
v4float buf216[33];
v4float buf216d[33];
v4float buf229[33];
v4float buf229d[33];
v4float buf232[33];
v4float buf232d[33];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<129u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf213_buf213d_i[1] = {{(float*)buf213, 129, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<129u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf216_buf216d_i[1] = {{(float*)buf216, 129, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<129u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf229_buf229d_o[1] = {{(float*)buf229, 129, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<129u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf232_buf232d_o[1] = {{(float*)buf232, 129, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_13_1_bounds = sync_buffer[1];

  while (proc_13_1_bounds)
  {

    // Kernel call : i107:orthogonalize<128>
    window_buf213_buf213d_i->setData(*window_buf213_buf213d_i, (float*)buf213, (float*)buf213d, 1-index, 0);
    window_buf213_buf213d_i->acquire(*window_buf213_buf213d_i, LOCK_13_1_2_0, LOCK_13_1_3_0, 1-index);
    window_buf216_buf216d_i->setData(*window_buf216_buf216d_i, (float*)buf216, (float*)buf216d, 1-index, 0);
    window_buf216_buf216d_i->acquire(*window_buf216_buf216d_i, LOCK_14_1_2_0, LOCK_14_1_3_0, 1-index);
    window_buf229_buf229d_o->setData(*window_buf229_buf229d_o, (float*)buf229, (float*)buf229d, 1-index, 0);
    window_buf229_buf229d_o->acquire(*window_buf229_buf229d_o, LOCK_13_0_0_0, LOCK_13_0_1_0, 1-index);
    window_buf232_buf232d_o->setData(*window_buf232_buf232d_o, (float*)buf232, (float*)buf232d, 1-index, 0);
    window_buf232_buf232d_o->acquire(*window_buf232_buf232d_o, LOCK_13_0_2_0, LOCK_13_0_3_0, 1-index);
    orthogonalize<128>(window_buf213_buf213d_i[0],window_buf216_buf216d_i[0],window_buf229_buf229d_o[0],window_buf232_buf232d_o[0]);
    window_buf213_buf213d_i->release(*window_buf213_buf213d_i, LOCK_13_1_2_0, LOCK_13_1_3_0, 1-index);
    window_buf216_buf216d_i->release(*window_buf216_buf216d_i, LOCK_14_1_2_0, LOCK_14_1_3_0, 1-index);
    window_buf229_buf229d_o->release(*window_buf229_buf229d_o, LOCK_13_0_0_0, LOCK_13_0_1_0, 1-index);
    window_buf232_buf232d_o->release(*window_buf232_buf232d_o, LOCK_13_0_2_0, LOCK_13_0_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_13_1_bounds > 0)
      --proc_13_1_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}