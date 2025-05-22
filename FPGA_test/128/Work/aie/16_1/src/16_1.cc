// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /home/luanxinya/SVD/FPGA_test/128/./Work/aie/16_1/src/16_1.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_16_1_0_0 16
#define LOCK_16_1_1_0 17
#define LOCK_17_1_0_3552 48
#define LOCK_17_1_1_5568 49
#define LOCK_16_0_0_7648 0
#define LOCK_16_0_1_0 1
#define LOCK_16_0_2_0 2
#define LOCK_16_0_3_0 3

// Declare shared memory buffers
v4float buf208[33];
v4float buf208d[33];
v4float buf210[33];
v4float buf210d[33];
v4float buf224[33];
v4float buf224d[33];
v4float buf226[33];
v4float buf226d[33];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<129u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf208_buf208d_i[1] = {{(float*)buf208, 129, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<129u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf210_buf210d_i[1] = {{(float*)buf210, 129, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<129u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf224_buf224d_o[1] = {{(float*)buf224, 129, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<129u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf226_buf226d_o[1] = {{(float*)buf226, 129, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_16_1_bounds = sync_buffer[1];

  while (proc_16_1_bounds)
  {

    // Kernel call : i110:orthogonalize<128>
    window_buf208_buf208d_i->setData(*window_buf208_buf208d_i, (float*)buf208, (float*)buf208d, 1-index, 0);
    window_buf208_buf208d_i->acquire(*window_buf208_buf208d_i, LOCK_16_1_0_0, LOCK_16_1_1_0, 1-index);
    window_buf210_buf210d_i->setData(*window_buf210_buf210d_i, (float*)buf210, (float*)buf210d, 1-index, 0);
    window_buf210_buf210d_i->acquire(*window_buf210_buf210d_i, LOCK_17_1_0_3552, LOCK_17_1_1_5568, 1-index);
    window_buf224_buf224d_o->setData(*window_buf224_buf224d_o, (float*)buf224, (float*)buf224d, 1-index, 0);
    window_buf224_buf224d_o->acquire(*window_buf224_buf224d_o, LOCK_16_0_0_7648, LOCK_16_0_1_0, 1-index);
    window_buf226_buf226d_o->setData(*window_buf226_buf226d_o, (float*)buf226, (float*)buf226d, 1-index, 0);
    window_buf226_buf226d_o->acquire(*window_buf226_buf226d_o, LOCK_16_0_2_0, LOCK_16_0_3_0, 1-index);
    orthogonalize<128>(window_buf208_buf208d_i[0],window_buf210_buf210d_i[0],window_buf224_buf224d_o[0],window_buf226_buf226d_o[0]);
    window_buf208_buf208d_i->release(*window_buf208_buf208d_i, LOCK_16_1_0_0, LOCK_16_1_1_0, 1-index);
    window_buf210_buf210d_i->release(*window_buf210_buf210d_i, LOCK_17_1_0_3552, LOCK_17_1_1_5568, 1-index);
    window_buf224_buf224d_o->release(*window_buf224_buf224d_o, LOCK_16_0_0_7648, LOCK_16_0_1_0, 1-index);
    window_buf226_buf226d_o->release(*window_buf226_buf226d_o, LOCK_16_0_2_0, LOCK_16_0_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_16_1_bounds > 0)
      --proc_16_1_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}