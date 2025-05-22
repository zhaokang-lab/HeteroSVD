// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /home/luanxinya/SVD/FPGA_test/128/./Work/aie/10_4/src/10_4.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_9_4_0_0 16
#define LOCK_9_4_1_0 17
#define LOCK_10_4_2_0 50
#define LOCK_10_4_3_0 51
#define LOCK_10_3_0_7648 0
#define LOCK_10_3_1_0 1
#define LOCK_10_3_2_0 2
#define LOCK_10_3_3_0 3

// Declare shared memory buffers
v4float buf169dr[33];
v4float buf169r[33];
v4float buf171[33];
v4float buf171d[33];
v4float buf185[33];
v4float buf185d[33];
v4float buf187[33];
v4float buf187d[33];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<129u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf169r_buf169dr_i[1] = {{(float*)buf169r, 129, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<129u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf171_buf171d_i[1] = {{(float*)buf171, 129, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<129u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf185_buf185d_o[1] = {{(float*)buf185, 129, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<129u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf187_buf187d_o[1] = {{(float*)buf187, 129, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_10_4_bounds = sync_buffer[1];

  while (proc_10_4_bounds)
  {

    // Kernel call : i80:orthogonalize<128>
    window_buf169r_buf169dr_i->setData(*window_buf169r_buf169dr_i, (float*)buf169r, (float*)buf169dr, 1-index, 0);
    window_buf169r_buf169dr_i->acquire(*window_buf169r_buf169dr_i, LOCK_9_4_0_0, LOCK_9_4_1_0, 1-index);
    window_buf171_buf171d_i->setData(*window_buf171_buf171d_i, (float*)buf171, (float*)buf171d, 1-index, 0);
    window_buf171_buf171d_i->acquire(*window_buf171_buf171d_i, LOCK_10_4_2_0, LOCK_10_4_3_0, 1-index);
    window_buf185_buf185d_o->setData(*window_buf185_buf185d_o, (float*)buf185, (float*)buf185d, 1-index, 0);
    window_buf185_buf185d_o->acquire(*window_buf185_buf185d_o, LOCK_10_3_0_7648, LOCK_10_3_1_0, 1-index);
    window_buf187_buf187d_o->setData(*window_buf187_buf187d_o, (float*)buf187, (float*)buf187d, 1-index, 0);
    window_buf187_buf187d_o->acquire(*window_buf187_buf187d_o, LOCK_10_3_2_0, LOCK_10_3_3_0, 1-index);
    orthogonalize<128>(window_buf169r_buf169dr_i[0],window_buf171_buf171d_i[0],window_buf185_buf185d_o[0],window_buf187_buf187d_o[0]);
    window_buf169r_buf169dr_i->release(*window_buf169r_buf169dr_i, LOCK_9_4_0_0, LOCK_9_4_1_0, 1-index);
    window_buf171_buf171d_i->release(*window_buf171_buf171d_i, LOCK_10_4_2_0, LOCK_10_4_3_0, 1-index);
    window_buf185_buf185d_o->release(*window_buf185_buf185d_o, LOCK_10_3_0_7648, LOCK_10_3_1_0, 1-index);
    window_buf187_buf187d_o->release(*window_buf187_buf187d_o, LOCK_10_3_2_0, LOCK_10_3_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_10_4_bounds > 0)
      --proc_10_4_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}