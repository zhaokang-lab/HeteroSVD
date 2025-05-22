// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /home/luanxinya/SVD/FPGA_test/128/./Work/aie/12_1/src/12_1.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_12_1_2_3552 18
#define LOCK_12_1_3_2080 19
#define LOCK_13_1_0_0 48
#define LOCK_13_1_1_0 49
#define LOCK_12_0_0_0 0
#define LOCK_12_0_1_0 1
#define LOCK_12_0_2_0 2
#define LOCK_12_0_3_0 3

// Declare shared memory buffers
v4float buf215[33];
v4float buf215d[33];
v4float buf218[33];
v4float buf218d[33];
v4float buf231[33];
v4float buf231d[33];
v4float buf234[33];
v4float buf234d[33];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<129u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf215_buf215d_i[1] = {{(float*)buf215, 129, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<129u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf218_buf218d_i[1] = {{(float*)buf218, 129, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<129u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf231_buf231d_o[1] = {{(float*)buf231, 129, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<129u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf234_buf234d_o[1] = {{(float*)buf234, 129, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_12_1_bounds = sync_buffer[1];

  while (proc_12_1_bounds)
  {

    // Kernel call : i106:orthogonalize<128>
    window_buf215_buf215d_i->setData(*window_buf215_buf215d_i, (float*)buf215, (float*)buf215d, 1-index, 0);
    window_buf215_buf215d_i->acquire(*window_buf215_buf215d_i, LOCK_12_1_2_3552, LOCK_12_1_3_2080, 1-index);
    window_buf218_buf218d_i->setData(*window_buf218_buf218d_i, (float*)buf218, (float*)buf218d, 1-index, 0);
    window_buf218_buf218d_i->acquire(*window_buf218_buf218d_i, LOCK_13_1_0_0, LOCK_13_1_1_0, 1-index);
    window_buf231_buf231d_o->setData(*window_buf231_buf231d_o, (float*)buf231, (float*)buf231d, 1-index, 0);
    window_buf231_buf231d_o->acquire(*window_buf231_buf231d_o, LOCK_12_0_0_0, LOCK_12_0_1_0, 1-index);
    window_buf234_buf234d_o->setData(*window_buf234_buf234d_o, (float*)buf234, (float*)buf234d, 1-index, 0);
    window_buf234_buf234d_o->acquire(*window_buf234_buf234d_o, LOCK_12_0_2_0, LOCK_12_0_3_0, 1-index);
    orthogonalize<128>(window_buf215_buf215d_i[0],window_buf218_buf218d_i[0],window_buf231_buf231d_o[0],window_buf234_buf234d_o[0]);
    window_buf215_buf215d_i->release(*window_buf215_buf215d_i, LOCK_12_1_2_3552, LOCK_12_1_3_2080, 1-index);
    window_buf218_buf218d_i->release(*window_buf218_buf218d_i, LOCK_13_1_0_0, LOCK_13_1_1_0, 1-index);
    window_buf231_buf231d_o->release(*window_buf231_buf231d_o, LOCK_12_0_0_0, LOCK_12_0_1_0, 1-index);
    window_buf234_buf234d_o->release(*window_buf234_buf234d_o, LOCK_12_0_2_0, LOCK_12_0_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_12_1_bounds > 0)
      --proc_12_1_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}