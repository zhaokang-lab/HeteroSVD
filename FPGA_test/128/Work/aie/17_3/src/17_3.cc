// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /home/luanxinya/SVD/FPGA_test/128/./Work/aie/17_3/src/17_3.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_17_3_2_0 18
#define LOCK_17_3_3_0 19
#define LOCK_18_3_0_0 48
#define LOCK_18_3_1_0 49
#define LOCK_17_2_0_7648 0
#define LOCK_17_2_1_0 1
#define LOCK_17_2_2_0 2
#define LOCK_17_2_3_0 3

// Declare shared memory buffers
v4float buf187dr[33];
v4float buf187r[33];
v4float buf191[33];
v4float buf191d[33];
v4float buf203[33];
v4float buf203d[33];
v4float buf207[33];
v4float buf207d[33];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<129u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf191_buf191d_i[1] = {{(float*)buf191, 129, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<129u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf187r_buf187dr_i[1] = {{(float*)buf187r, 129, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<129u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf207_buf207d_o[1] = {{(float*)buf207, 129, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<129u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf203_buf203d_o[1] = {{(float*)buf203, 129, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_17_3_bounds = sync_buffer[1];

  while (proc_17_3_bounds)
  {

    // Kernel call : i95:orthogonalize<128>
    window_buf191_buf191d_i->setData(*window_buf191_buf191d_i, (float*)buf191, (float*)buf191d, 1-index, 0);
    window_buf191_buf191d_i->acquire(*window_buf191_buf191d_i, LOCK_17_3_2_0, LOCK_17_3_3_0, 1-index);
    window_buf187r_buf187dr_i->setData(*window_buf187r_buf187dr_i, (float*)buf187r, (float*)buf187dr, 1-index, 0);
    window_buf187r_buf187dr_i->acquire(*window_buf187r_buf187dr_i, LOCK_18_3_0_0, LOCK_18_3_1_0, 1-index);
    window_buf207_buf207d_o->setData(*window_buf207_buf207d_o, (float*)buf207, (float*)buf207d, 1-index, 0);
    window_buf207_buf207d_o->acquire(*window_buf207_buf207d_o, LOCK_17_2_0_7648, LOCK_17_2_1_0, 1-index);
    window_buf203_buf203d_o->setData(*window_buf203_buf203d_o, (float*)buf203, (float*)buf203d, 1-index, 0);
    window_buf203_buf203d_o->acquire(*window_buf203_buf203d_o, LOCK_17_2_2_0, LOCK_17_2_3_0, 1-index);
    orthogonalize<128>(window_buf191_buf191d_i[0],window_buf187r_buf187dr_i[0],window_buf207_buf207d_o[0],window_buf203_buf203d_o[0]);
    window_buf191_buf191d_i->release(*window_buf191_buf191d_i, LOCK_17_3_2_0, LOCK_17_3_3_0, 1-index);
    window_buf187r_buf187dr_i->release(*window_buf187r_buf187dr_i, LOCK_18_3_0_0, LOCK_18_3_1_0, 1-index);
    window_buf207_buf207d_o->release(*window_buf207_buf207d_o, LOCK_17_2_0_7648, LOCK_17_2_1_0, 1-index);
    window_buf203_buf203d_o->release(*window_buf203_buf203d_o, LOCK_17_2_2_0, LOCK_17_2_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_17_3_bounds > 0)
      --proc_17_3_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}