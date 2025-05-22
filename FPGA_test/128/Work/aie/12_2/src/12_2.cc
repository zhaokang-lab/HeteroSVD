// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /home/luanxinya/SVD/FPGA_test/128/./Work/aie/12_2/src/12_2.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_11_2_0_0 16
#define LOCK_11_2_1_0 17
#define LOCK_12_2_2_0 50
#define LOCK_12_2_3_0 51
#define LOCK_12_1_2_3552 2
#define LOCK_12_1_3_2080 3
#define LOCK_12_1_0_0 0
#define LOCK_12_1_1_0 1

// Declare shared memory buffers
v4float buf199[33];
v4float buf199d[33];
v4float buf204[33];
v4float buf204d[33];
v4float buf215[33];
v4float buf215d[33];
v4float buf220[33];
v4float buf220d[33];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<129u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf199_buf199d_i[1] = {{(float*)buf199, 129, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<129u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf204_buf204d_i[1] = {{(float*)buf204, 129, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<129u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf215_buf215d_o[1] = {{(float*)buf215, 129, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<129u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf220_buf220d_o[1] = {{(float*)buf220, 129, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_12_2_bounds = sync_buffer[1];

  while (proc_12_2_bounds)
  {

    // Kernel call : i98:orthogonalize<128>
    window_buf199_buf199d_i->setData(*window_buf199_buf199d_i, (float*)buf199, (float*)buf199d, 1-index, 0);
    window_buf199_buf199d_i->acquire(*window_buf199_buf199d_i, LOCK_11_2_0_0, LOCK_11_2_1_0, 1-index);
    window_buf204_buf204d_i->setData(*window_buf204_buf204d_i, (float*)buf204, (float*)buf204d, 1-index, 0);
    window_buf204_buf204d_i->acquire(*window_buf204_buf204d_i, LOCK_12_2_2_0, LOCK_12_2_3_0, 1-index);
    window_buf215_buf215d_o->setData(*window_buf215_buf215d_o, (float*)buf215, (float*)buf215d, 1-index, 0);
    window_buf215_buf215d_o->acquire(*window_buf215_buf215d_o, LOCK_12_1_2_3552, LOCK_12_1_3_2080, 1-index);
    window_buf220_buf220d_o->setData(*window_buf220_buf220d_o, (float*)buf220, (float*)buf220d, 1-index, 0);
    window_buf220_buf220d_o->acquire(*window_buf220_buf220d_o, LOCK_12_1_0_0, LOCK_12_1_1_0, 1-index);
    orthogonalize<128>(window_buf199_buf199d_i[0],window_buf204_buf204d_i[0],window_buf215_buf215d_o[0],window_buf220_buf220d_o[0]);
    window_buf199_buf199d_i->release(*window_buf199_buf199d_i, LOCK_11_2_0_0, LOCK_11_2_1_0, 1-index);
    window_buf204_buf204d_i->release(*window_buf204_buf204d_i, LOCK_12_2_2_0, LOCK_12_2_3_0, 1-index);
    window_buf215_buf215d_o->release(*window_buf215_buf215d_o, LOCK_12_1_2_3552, LOCK_12_1_3_2080, 1-index);
    window_buf220_buf220d_o->release(*window_buf220_buf220d_o, LOCK_12_1_0_0, LOCK_12_1_1_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_12_2_bounds > 0)
      --proc_12_2_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}