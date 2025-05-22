// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /home/luanxinya/SVD/FPGA_test/128/./Work/aie/11_5/src/11_5.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_11_5_0_0 16
#define LOCK_11_5_1_0 17
#define LOCK_12_5_2_0 50
#define LOCK_12_5_3_0 51
#define LOCK_11_4_0_0 0
#define LOCK_11_4_1_0 1
#define LOCK_11_4_2_0 2
#define LOCK_11_4_3_0 3

// Declare shared memory buffers
v4float buf149[33];
v4float buf149d[33];
v4float buf157[33];
v4float buf157d[33];
v4float buf165[33];
v4float buf165d[33];
v4float buf173[33];
v4float buf173d[33];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<129u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf149_buf149d_i[1] = {{(float*)buf149, 129, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<129u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf157_buf157d_i[1] = {{(float*)buf157, 129, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<129u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf165_buf165d_o[1] = {{(float*)buf165, 129, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<129u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf173_buf173d_o[1] = {{(float*)buf173, 129, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_11_5_bounds = sync_buffer[1];

  while (proc_11_5_bounds)
  {

    // Kernel call : i73:orthogonalize<128>
    window_buf149_buf149d_i->setData(*window_buf149_buf149d_i, (float*)buf149, (float*)buf149d, 1-index, 0);
    window_buf149_buf149d_i->acquire(*window_buf149_buf149d_i, LOCK_11_5_0_0, LOCK_11_5_1_0, 1-index);
    window_buf157_buf157d_i->setData(*window_buf157_buf157d_i, (float*)buf157, (float*)buf157d, 1-index, 0);
    window_buf157_buf157d_i->acquire(*window_buf157_buf157d_i, LOCK_12_5_2_0, LOCK_12_5_3_0, 1-index);
    window_buf165_buf165d_o->setData(*window_buf165_buf165d_o, (float*)buf165, (float*)buf165d, 1-index, 0);
    window_buf165_buf165d_o->acquire(*window_buf165_buf165d_o, LOCK_11_4_0_0, LOCK_11_4_1_0, 1-index);
    window_buf173_buf173d_o->setData(*window_buf173_buf173d_o, (float*)buf173, (float*)buf173d, 1-index, 0);
    window_buf173_buf173d_o->acquire(*window_buf173_buf173d_o, LOCK_11_4_2_0, LOCK_11_4_3_0, 1-index);
    orthogonalize<128>(window_buf149_buf149d_i[0],window_buf157_buf157d_i[0],window_buf165_buf165d_o[0],window_buf173_buf173d_o[0]);
    window_buf149_buf149d_i->release(*window_buf149_buf149d_i, LOCK_11_5_0_0, LOCK_11_5_1_0, 1-index);
    window_buf157_buf157d_i->release(*window_buf157_buf157d_i, LOCK_12_5_2_0, LOCK_12_5_3_0, 1-index);
    window_buf165_buf165d_o->release(*window_buf165_buf165d_o, LOCK_11_4_0_0, LOCK_11_4_1_0, 1-index);
    window_buf173_buf173d_o->release(*window_buf173_buf173d_o, LOCK_11_4_2_0, LOCK_11_4_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_11_5_bounds > 0)
      --proc_11_5_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}