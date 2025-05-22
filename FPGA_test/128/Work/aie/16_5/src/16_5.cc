// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /home/luanxinya/SVD/FPGA_test/128/./Work/aie/16_5/src/16_5.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_16_5_0_0 16
#define LOCK_16_5_1_0 17
#define LOCK_17_5_0_0 48
#define LOCK_17_5_1_0 49
#define LOCK_16_4_0_0 0
#define LOCK_16_4_1_0 1
#define LOCK_16_4_2_0 2
#define LOCK_16_4_3_0 3

// Declare shared memory buffers
v4float buf148[33];
v4float buf148d[33];
v4float buf150[33];
v4float buf150d[33];
v4float buf164[33];
v4float buf164d[33];
v4float buf166[33];
v4float buf166d[33];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<129u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf148_buf148d_i[1] = {{(float*)buf148, 129, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<129u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf150_buf150d_i[1] = {{(float*)buf150, 129, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<129u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf164_buf164d_o[1] = {{(float*)buf164, 129, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<129u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf166_buf166d_o[1] = {{(float*)buf166, 129, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_16_5_bounds = sync_buffer[1];

  while (proc_16_5_bounds)
  {

    // Kernel call : i78:orthogonalize<128>
    window_buf148_buf148d_i->setData(*window_buf148_buf148d_i, (float*)buf148, (float*)buf148d, 1-index, 0);
    window_buf148_buf148d_i->acquire(*window_buf148_buf148d_i, LOCK_16_5_0_0, LOCK_16_5_1_0, 1-index);
    window_buf150_buf150d_i->setData(*window_buf150_buf150d_i, (float*)buf150, (float*)buf150d, 1-index, 0);
    window_buf150_buf150d_i->acquire(*window_buf150_buf150d_i, LOCK_17_5_0_0, LOCK_17_5_1_0, 1-index);
    window_buf164_buf164d_o->setData(*window_buf164_buf164d_o, (float*)buf164, (float*)buf164d, 1-index, 0);
    window_buf164_buf164d_o->acquire(*window_buf164_buf164d_o, LOCK_16_4_0_0, LOCK_16_4_1_0, 1-index);
    window_buf166_buf166d_o->setData(*window_buf166_buf166d_o, (float*)buf166, (float*)buf166d, 1-index, 0);
    window_buf166_buf166d_o->acquire(*window_buf166_buf166d_o, LOCK_16_4_2_0, LOCK_16_4_3_0, 1-index);
    orthogonalize<128>(window_buf148_buf148d_i[0],window_buf150_buf150d_i[0],window_buf164_buf164d_o[0],window_buf166_buf166d_o[0]);
    window_buf148_buf148d_i->release(*window_buf148_buf148d_i, LOCK_16_5_0_0, LOCK_16_5_1_0, 1-index);
    window_buf150_buf150d_i->release(*window_buf150_buf150d_i, LOCK_17_5_0_0, LOCK_17_5_1_0, 1-index);
    window_buf164_buf164d_o->release(*window_buf164_buf164d_o, LOCK_16_4_0_0, LOCK_16_4_1_0, 1-index);
    window_buf166_buf166d_o->release(*window_buf166_buf166d_o, LOCK_16_4_2_0, LOCK_16_4_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_16_5_bounds > 0)
      --proc_16_5_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}