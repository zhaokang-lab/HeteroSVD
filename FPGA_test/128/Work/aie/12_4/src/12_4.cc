// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /home/luanxinya/SVD/FPGA_test/128/./Work/aie/12_4/src/12_4.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_11_4_0_0 16
#define LOCK_11_4_1_0 17
#define LOCK_12_4_2_0 50
#define LOCK_12_4_3_0 51
#define LOCK_12_3_0_0 0
#define LOCK_12_3_1_0 1
#define LOCK_12_3_2_0 2
#define LOCK_12_3_3_0 3

// Declare shared memory buffers
v4float buf165[33];
v4float buf165d[33];
v4float buf174[33];
v4float buf174d[33];
v4float buf181[33];
v4float buf181d[33];
v4float buf190[33];
v4float buf190d[33];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<129u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf165_buf165d_i[1] = {{(float*)buf165, 129, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<129u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf174_buf174d_i[1] = {{(float*)buf174, 129, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<129u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf181_buf181d_o[1] = {{(float*)buf181, 129, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<129u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf190_buf190d_o[1] = {{(float*)buf190, 129, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_12_4_bounds = sync_buffer[1];

  while (proc_12_4_bounds)
  {

    // Kernel call : i82:orthogonalize<128>
    window_buf165_buf165d_i->setData(*window_buf165_buf165d_i, (float*)buf165, (float*)buf165d, 1-index, 0);
    window_buf165_buf165d_i->acquire(*window_buf165_buf165d_i, LOCK_11_4_0_0, LOCK_11_4_1_0, 1-index);
    window_buf174_buf174d_i->setData(*window_buf174_buf174d_i, (float*)buf174, (float*)buf174d, 1-index, 0);
    window_buf174_buf174d_i->acquire(*window_buf174_buf174d_i, LOCK_12_4_2_0, LOCK_12_4_3_0, 1-index);
    window_buf181_buf181d_o->setData(*window_buf181_buf181d_o, (float*)buf181, (float*)buf181d, 1-index, 0);
    window_buf181_buf181d_o->acquire(*window_buf181_buf181d_o, LOCK_12_3_0_0, LOCK_12_3_1_0, 1-index);
    window_buf190_buf190d_o->setData(*window_buf190_buf190d_o, (float*)buf190, (float*)buf190d, 1-index, 0);
    window_buf190_buf190d_o->acquire(*window_buf190_buf190d_o, LOCK_12_3_2_0, LOCK_12_3_3_0, 1-index);
    orthogonalize<128>(window_buf165_buf165d_i[0],window_buf174_buf174d_i[0],window_buf181_buf181d_o[0],window_buf190_buf190d_o[0]);
    window_buf165_buf165d_i->release(*window_buf165_buf165d_i, LOCK_11_4_0_0, LOCK_11_4_1_0, 1-index);
    window_buf174_buf174d_i->release(*window_buf174_buf174d_i, LOCK_12_4_2_0, LOCK_12_4_3_0, 1-index);
    window_buf181_buf181d_o->release(*window_buf181_buf181d_o, LOCK_12_3_0_0, LOCK_12_3_1_0, 1-index);
    window_buf190_buf190d_o->release(*window_buf190_buf190d_o, LOCK_12_3_2_0, LOCK_12_3_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_12_4_bounds > 0)
      --proc_12_4_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}