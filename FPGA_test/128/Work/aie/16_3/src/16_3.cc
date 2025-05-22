// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /home/luanxinya/SVD/FPGA_test/128/./Work/aie/16_3/src/16_3.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_16_3_0_0 16
#define LOCK_16_3_1_0 17
#define LOCK_17_3_0_7648 48
#define LOCK_17_3_1_0 49
#define LOCK_16_2_2_0 2
#define LOCK_16_2_3_0 3
#define LOCK_16_2_0_0 0
#define LOCK_16_2_1_0 1

// Declare shared memory buffers
v4float buf178[33];
v4float buf178d[33];
v4float buf180[33];
v4float buf180d[33];
v4float buf194[33];
v4float buf194d[33];
v4float buf196[33];
v4float buf196d[33];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<129u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf178_buf178d_i[1] = {{(float*)buf178, 129, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<129u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf180_buf180d_i[1] = {{(float*)buf180, 129, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<129u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf194_buf194d_o[1] = {{(float*)buf194, 129, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<129u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf196_buf196d_o[1] = {{(float*)buf196, 129, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_16_3_bounds = sync_buffer[1];

  while (proc_16_3_bounds)
  {

    // Kernel call : i94:orthogonalize<128>
    window_buf178_buf178d_i->setData(*window_buf178_buf178d_i, (float*)buf178, (float*)buf178d, 1-index, 0);
    window_buf178_buf178d_i->acquire(*window_buf178_buf178d_i, LOCK_16_3_0_0, LOCK_16_3_1_0, 1-index);
    window_buf180_buf180d_i->setData(*window_buf180_buf180d_i, (float*)buf180, (float*)buf180d, 1-index, 0);
    window_buf180_buf180d_i->acquire(*window_buf180_buf180d_i, LOCK_17_3_0_7648, LOCK_17_3_1_0, 1-index);
    window_buf194_buf194d_o->setData(*window_buf194_buf194d_o, (float*)buf194, (float*)buf194d, 1-index, 0);
    window_buf194_buf194d_o->acquire(*window_buf194_buf194d_o, LOCK_16_2_2_0, LOCK_16_2_3_0, 1-index);
    window_buf196_buf196d_o->setData(*window_buf196_buf196d_o, (float*)buf196, (float*)buf196d, 1-index, 0);
    window_buf196_buf196d_o->acquire(*window_buf196_buf196d_o, LOCK_16_2_0_0, LOCK_16_2_1_0, 1-index);
    orthogonalize<128>(window_buf178_buf178d_i[0],window_buf180_buf180d_i[0],window_buf194_buf194d_o[0],window_buf196_buf196d_o[0]);
    window_buf178_buf178d_i->release(*window_buf178_buf178d_i, LOCK_16_3_0_0, LOCK_16_3_1_0, 1-index);
    window_buf180_buf180d_i->release(*window_buf180_buf180d_i, LOCK_17_3_0_7648, LOCK_17_3_1_0, 1-index);
    window_buf194_buf194d_o->release(*window_buf194_buf194d_o, LOCK_16_2_2_0, LOCK_16_2_3_0, 1-index);
    window_buf196_buf196d_o->release(*window_buf196_buf196d_o, LOCK_16_2_0_0, LOCK_16_2_1_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_16_3_bounds > 0)
      --proc_16_3_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}