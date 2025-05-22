// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /home/luanxinya/SVD/FPGA_test/128/./Work/aie/10_3/src/10_3.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_10_3_0_7648 16
#define LOCK_10_3_1_0 17
#define LOCK_11_3_2_0 50
#define LOCK_11_3_3_0 51
#define LOCK_10_2_0_1088 0
#define LOCK_10_2_1_544 1
#define LOCK_10_2_2_0 2
#define LOCK_10_2_3_0 3

// Declare shared memory buffers
v4float buf185[33];
v4float buf185d[33];
v4float buf189[33];
v4float buf189d[33];
v4float buf201[33];
v4float buf201d[33];
v4float buf205[33];
v4float buf205d[33];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<129u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf185_buf185d_i[1] = {{(float*)buf185, 129, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<129u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf189_buf189d_i[1] = {{(float*)buf189, 129, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<129u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf201_buf201d_o[1] = {{(float*)buf201, 129, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<129u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf205_buf205d_o[1] = {{(float*)buf205, 129, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_10_3_bounds = sync_buffer[1];

  while (proc_10_3_bounds)
  {

    // Kernel call : i88:orthogonalize<128>
    window_buf185_buf185d_i->setData(*window_buf185_buf185d_i, (float*)buf185, (float*)buf185d, 1-index, 0);
    window_buf185_buf185d_i->acquire(*window_buf185_buf185d_i, LOCK_10_3_0_7648, LOCK_10_3_1_0, 1-index);
    window_buf189_buf189d_i->setData(*window_buf189_buf189d_i, (float*)buf189, (float*)buf189d, 1-index, 0);
    window_buf189_buf189d_i->acquire(*window_buf189_buf189d_i, LOCK_11_3_2_0, LOCK_11_3_3_0, 1-index);
    window_buf201_buf201d_o->setData(*window_buf201_buf201d_o, (float*)buf201, (float*)buf201d, 1-index, 0);
    window_buf201_buf201d_o->acquire(*window_buf201_buf201d_o, LOCK_10_2_0_1088, LOCK_10_2_1_544, 1-index);
    window_buf205_buf205d_o->setData(*window_buf205_buf205d_o, (float*)buf205, (float*)buf205d, 1-index, 0);
    window_buf205_buf205d_o->acquire(*window_buf205_buf205d_o, LOCK_10_2_2_0, LOCK_10_2_3_0, 1-index);
    orthogonalize<128>(window_buf185_buf185d_i[0],window_buf189_buf189d_i[0],window_buf201_buf201d_o[0],window_buf205_buf205d_o[0]);
    window_buf185_buf185d_i->release(*window_buf185_buf185d_i, LOCK_10_3_0_7648, LOCK_10_3_1_0, 1-index);
    window_buf189_buf189d_i->release(*window_buf189_buf189d_i, LOCK_11_3_2_0, LOCK_11_3_3_0, 1-index);
    window_buf201_buf201d_o->release(*window_buf201_buf201d_o, LOCK_10_2_0_1088, LOCK_10_2_1_544, 1-index);
    window_buf205_buf205d_o->release(*window_buf205_buf205d_o, LOCK_10_2_2_0, LOCK_10_2_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_10_3_bounds > 0)
      --proc_10_3_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}