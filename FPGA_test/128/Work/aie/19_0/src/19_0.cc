// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /home/luanxinya/SVD/FPGA_test/128/./Work/aie/19_0/src/19_0.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_18_0_0_0 16
#define LOCK_18_0_1_3840 17
#define LOCK_18_0_2_0 18
#define LOCK_18_0_3_0 19
#define LOCK_19_1_0_0 32
#define LOCK_19_1_1_0 33
#define LOCK_19_1_2_0 34
#define LOCK_19_1_3_0 35

// Declare shared memory buffers
v4float buf237dr[33];
v4float buf237r[33];
v4float buf238dr[33];
v4float buf238r[33];
v4float buf253[33];
v4float buf253d[33];
v4float buf254[33];
v4float buf254d[33];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<129u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf237r_buf237dr_i[1] = {{(float*)buf237r, 129, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<129u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf238r_buf238dr_i[1] = {{(float*)buf238r, 129, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<129u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf253_buf253d_o[1] = {{(float*)buf253, 129, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<129u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf254_buf254d_o[1] = {{(float*)buf254, 129, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_19_0_bounds = sync_buffer[1];

  while (proc_19_0_bounds)
  {

    // Kernel call : i112:orthogonalize<128>
    window_buf237r_buf237dr_i->setData(*window_buf237r_buf237dr_i, (float*)buf237r, (float*)buf237dr, 1-index, 0);
    window_buf237r_buf237dr_i->acquire(*window_buf237r_buf237dr_i, LOCK_18_0_0_0, LOCK_18_0_1_3840, 1-index);
    window_buf238r_buf238dr_i->setData(*window_buf238r_buf238dr_i, (float*)buf238r, (float*)buf238dr, 1-index, 0);
    window_buf238r_buf238dr_i->acquire(*window_buf238r_buf238dr_i, LOCK_18_0_2_0, LOCK_18_0_3_0, 1-index);
    window_buf253_buf253d_o->setData(*window_buf253_buf253d_o, (float*)buf253, (float*)buf253d, 1-index, 0);
    window_buf253_buf253d_o->acquire(*window_buf253_buf253d_o, LOCK_19_1_0_0, LOCK_19_1_1_0, 1-index);
    window_buf254_buf254d_o->setData(*window_buf254_buf254d_o, (float*)buf254, (float*)buf254d, 1-index, 0);
    window_buf254_buf254d_o->acquire(*window_buf254_buf254d_o, LOCK_19_1_2_0, LOCK_19_1_3_0, 1-index);
    orthogonalize<128>(window_buf237r_buf237dr_i[0],window_buf238r_buf238dr_i[0],window_buf253_buf253d_o[0],window_buf254_buf254d_o[0]);
    window_buf237r_buf237dr_i->release(*window_buf237r_buf237dr_i, LOCK_18_0_0_0, LOCK_18_0_1_3840, 1-index);
    window_buf238r_buf238dr_i->release(*window_buf238r_buf238dr_i, LOCK_18_0_2_0, LOCK_18_0_3_0, 1-index);
    window_buf253_buf253d_o->release(*window_buf253_buf253d_o, LOCK_19_1_0_0, LOCK_19_1_1_0, 1-index);
    window_buf254_buf254d_o->release(*window_buf254_buf254d_o, LOCK_19_1_2_0, LOCK_19_1_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_19_0_bounds > 0)
      --proc_19_0_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}