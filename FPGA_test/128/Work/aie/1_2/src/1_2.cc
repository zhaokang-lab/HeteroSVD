// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /home/luanxinya/SVD/FPGA_test/128/./Work/aie/1_2/src/1_2.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_0_2_0_0 16
#define LOCK_0_2_1_0 17
#define LOCK_1_2_0_0 48
#define LOCK_1_2_1_0 49
#define LOCK_1_3_0_0 32
#define LOCK_1_3_1_0 33
#define LOCK_1_3_2_0 34
#define LOCK_1_3_3_0 35

// Declare shared memory buffers
v4float buf33dr[33];
v4float buf33r[33];
v4float buf35[33];
v4float buf35d[33];
v4float buf49[33];
v4float buf49d[33];
v4float buf51[33];
v4float buf51d[33];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<129u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf33r_buf33dr_i[1] = {{(float*)buf33r, 129, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<129u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf35_buf35d_i[1] = {{(float*)buf35, 129, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<129u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf49_buf49d_o[1] = {{(float*)buf49, 129, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<129u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf51_buf51d_o[1] = {{(float*)buf51, 129, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_1_2_bounds = sync_buffer[1];

  while (proc_1_2_bounds)
  {

    // Kernel call : i16:orthogonalize<128>
    window_buf33r_buf33dr_i->setData(*window_buf33r_buf33dr_i, (float*)buf33r, (float*)buf33dr, 1-index, 0);
    window_buf33r_buf33dr_i->acquire(*window_buf33r_buf33dr_i, LOCK_0_2_0_0, LOCK_0_2_1_0, 1-index);
    window_buf35_buf35d_i->setData(*window_buf35_buf35d_i, (float*)buf35, (float*)buf35d, 1-index, 0);
    window_buf35_buf35d_i->acquire(*window_buf35_buf35d_i, LOCK_1_2_0_0, LOCK_1_2_1_0, 1-index);
    window_buf49_buf49d_o->setData(*window_buf49_buf49d_o, (float*)buf49, (float*)buf49d, 1-index, 0);
    window_buf49_buf49d_o->acquire(*window_buf49_buf49d_o, LOCK_1_3_0_0, LOCK_1_3_1_0, 1-index);
    window_buf51_buf51d_o->setData(*window_buf51_buf51d_o, (float*)buf51, (float*)buf51d, 1-index, 0);
    window_buf51_buf51d_o->acquire(*window_buf51_buf51d_o, LOCK_1_3_2_0, LOCK_1_3_3_0, 1-index);
    orthogonalize<128>(window_buf33r_buf33dr_i[0],window_buf35_buf35d_i[0],window_buf49_buf49d_o[0],window_buf51_buf51d_o[0]);
    window_buf33r_buf33dr_i->release(*window_buf33r_buf33dr_i, LOCK_0_2_0_0, LOCK_0_2_1_0, 1-index);
    window_buf35_buf35d_i->release(*window_buf35_buf35d_i, LOCK_1_2_0_0, LOCK_1_2_1_0, 1-index);
    window_buf49_buf49d_o->release(*window_buf49_buf49d_o, LOCK_1_3_0_0, LOCK_1_3_1_0, 1-index);
    window_buf51_buf51d_o->release(*window_buf51_buf51d_o, LOCK_1_3_2_0, LOCK_1_3_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_1_2_bounds > 0)
      --proc_1_2_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}