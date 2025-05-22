// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /home/luanxinya/SVD/FPGA_test/128/./Work/aie/1_4/src/1_4.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_0_4_0_0 16
#define LOCK_0_4_1_0 17
#define LOCK_1_4_2_0 50
#define LOCK_1_4_3_0 51
#define LOCK_1_5_2_544 34
#define LOCK_1_5_3_544 35
#define LOCK_1_5_4_0 36
#define LOCK_1_5_5_0 37

// Declare shared memory buffers
v4float buf67dr[33];
v4float buf67r[33];
v4float buf69[33];
v4float buf69d[33];
v4float buf83[33];
v4float buf83d[33];
v4float buf85[33];
v4float buf85d[33];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<129u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf67r_buf67dr_i[1] = {{(float*)buf67r, 129, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<129u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf69_buf69d_i[1] = {{(float*)buf69, 129, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<129u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf83_buf83d_o[1] = {{(float*)buf83, 129, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<129u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf85_buf85d_o[1] = {{(float*)buf85, 129, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_1_4_bounds = sync_buffer[1];

  while (proc_1_4_bounds)
  {

    // Kernel call : i32:orthogonalize<128>
    window_buf67r_buf67dr_i->setData(*window_buf67r_buf67dr_i, (float*)buf67r, (float*)buf67dr, 1-index, 0);
    window_buf67r_buf67dr_i->acquire(*window_buf67r_buf67dr_i, LOCK_0_4_0_0, LOCK_0_4_1_0, 1-index);
    window_buf69_buf69d_i->setData(*window_buf69_buf69d_i, (float*)buf69, (float*)buf69d, 1-index, 0);
    window_buf69_buf69d_i->acquire(*window_buf69_buf69d_i, LOCK_1_4_2_0, LOCK_1_4_3_0, 1-index);
    window_buf83_buf83d_o->setData(*window_buf83_buf83d_o, (float*)buf83, (float*)buf83d, 1-index, 0);
    window_buf83_buf83d_o->acquire(*window_buf83_buf83d_o, LOCK_1_5_2_544, LOCK_1_5_3_544, 1-index);
    window_buf85_buf85d_o->setData(*window_buf85_buf85d_o, (float*)buf85, (float*)buf85d, 1-index, 0);
    window_buf85_buf85d_o->acquire(*window_buf85_buf85d_o, LOCK_1_5_4_0, LOCK_1_5_5_0, 1-index);
    orthogonalize<128>(window_buf67r_buf67dr_i[0],window_buf69_buf69d_i[0],window_buf83_buf83d_o[0],window_buf85_buf85d_o[0]);
    window_buf67r_buf67dr_i->release(*window_buf67r_buf67dr_i, LOCK_0_4_0_0, LOCK_0_4_1_0, 1-index);
    window_buf69_buf69d_i->release(*window_buf69_buf69d_i, LOCK_1_4_2_0, LOCK_1_4_3_0, 1-index);
    window_buf83_buf83d_o->release(*window_buf83_buf83d_o, LOCK_1_5_2_544, LOCK_1_5_3_544, 1-index);
    window_buf85_buf85d_o->release(*window_buf85_buf85d_o, LOCK_1_5_4_0, LOCK_1_5_5_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_1_4_bounds > 0)
      --proc_1_4_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}