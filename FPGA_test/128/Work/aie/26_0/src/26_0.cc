// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /home/luanxinya/SVD/FPGA_test/128/./Work/aie/26_0/src/26_0.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_26_0_0_5600 48
#define LOCK_26_0_1_0 49
#define LOCK_25_0_2_0 18
#define LOCK_25_0_3_0 19
#define LOCK_26_1_0_7648 32
#define LOCK_26_1_1_0 33
#define LOCK_26_1_2_0 34
#define LOCK_26_1_3_0 35

// Declare shared memory buffers
v4float buf224dr[33];
v4float buf224r[33];
v4float buf239dr[33];
v4float buf239r[33];
v4float buf240[33];
v4float buf240d[33];
v4float buf255[33];
v4float buf255d[33];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<129u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf224r_buf224dr_i[1] = {{(float*)buf224r, 129, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<129u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf239r_buf239dr_i[1] = {{(float*)buf239r, 129, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<129u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf240_buf240d_o[1] = {{(float*)buf240, 129, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<129u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf255_buf255d_o[1] = {{(float*)buf255, 129, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_26_0_bounds = sync_buffer[1];

  while (proc_26_0_bounds)
  {

    // Kernel call : i119:orthogonalize<128>
    window_buf224r_buf224dr_i->setData(*window_buf224r_buf224dr_i, (float*)buf224r, (float*)buf224dr, 1-index, 0);
    window_buf224r_buf224dr_i->acquire(*window_buf224r_buf224dr_i, LOCK_26_0_0_5600, LOCK_26_0_1_0, 1-index);
    window_buf239r_buf239dr_i->setData(*window_buf239r_buf239dr_i, (float*)buf239r, (float*)buf239dr, 1-index, 0);
    window_buf239r_buf239dr_i->acquire(*window_buf239r_buf239dr_i, LOCK_25_0_2_0, LOCK_25_0_3_0, 1-index);
    window_buf240_buf240d_o->setData(*window_buf240_buf240d_o, (float*)buf240, (float*)buf240d, 1-index, 0);
    window_buf240_buf240d_o->acquire(*window_buf240_buf240d_o, LOCK_26_1_0_7648, LOCK_26_1_1_0, 1-index);
    window_buf255_buf255d_o->setData(*window_buf255_buf255d_o, (float*)buf255, (float*)buf255d, 1-index, 0);
    window_buf255_buf255d_o->acquire(*window_buf255_buf255d_o, LOCK_26_1_2_0, LOCK_26_1_3_0, 1-index);
    orthogonalize<128>(window_buf224r_buf224dr_i[0],window_buf239r_buf239dr_i[0],window_buf240_buf240d_o[0],window_buf255_buf255d_o[0]);
    window_buf224r_buf224dr_i->release(*window_buf224r_buf224dr_i, LOCK_26_0_0_5600, LOCK_26_0_1_0, 1-index);
    window_buf239r_buf239dr_i->release(*window_buf239r_buf239dr_i, LOCK_25_0_2_0, LOCK_25_0_3_0, 1-index);
    window_buf240_buf240d_o->release(*window_buf240_buf240d_o, LOCK_26_1_0_7648, LOCK_26_1_1_0, 1-index);
    window_buf255_buf255d_o->release(*window_buf255_buf255d_o, LOCK_26_1_2_0, LOCK_26_1_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_26_0_bounds > 0)
      --proc_26_0_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}