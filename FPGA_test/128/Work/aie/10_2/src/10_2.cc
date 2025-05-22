// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /home/luanxinya/SVD/FPGA_test/128/./Work/aie/10_2/src/10_2.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_9_2_0_0 16
#define LOCK_9_2_1_0 17
#define LOCK_10_2_2_0 50
#define LOCK_10_2_3_0 51
#define LOCK_10_1_0_0 0
#define LOCK_10_1_1_0 1
#define LOCK_10_1_2_0 2
#define LOCK_10_1_3_0 3

// Declare shared memory buffers
v4float buf203dr[33];
v4float buf203r[33];
v4float buf205[33];
v4float buf205d[33];
v4float buf219[33];
v4float buf219d[33];
v4float buf221[33];
v4float buf221d[33];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<129u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf203r_buf203dr_i[1] = {{(float*)buf203r, 129, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<129u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf205_buf205d_i[1] = {{(float*)buf205, 129, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<129u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf219_buf219d_o[1] = {{(float*)buf219, 129, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<129u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf221_buf221d_o[1] = {{(float*)buf221, 129, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_10_2_bounds = sync_buffer[1];

  while (proc_10_2_bounds)
  {

    // Kernel call : i96:orthogonalize<128>
    window_buf203r_buf203dr_i->setData(*window_buf203r_buf203dr_i, (float*)buf203r, (float*)buf203dr, 1-index, 0);
    window_buf203r_buf203dr_i->acquire(*window_buf203r_buf203dr_i, LOCK_9_2_0_0, LOCK_9_2_1_0, 1-index);
    window_buf205_buf205d_i->setData(*window_buf205_buf205d_i, (float*)buf205, (float*)buf205d, 1-index, 0);
    window_buf205_buf205d_i->acquire(*window_buf205_buf205d_i, LOCK_10_2_2_0, LOCK_10_2_3_0, 1-index);
    window_buf219_buf219d_o->setData(*window_buf219_buf219d_o, (float*)buf219, (float*)buf219d, 1-index, 0);
    window_buf219_buf219d_o->acquire(*window_buf219_buf219d_o, LOCK_10_1_0_0, LOCK_10_1_1_0, 1-index);
    window_buf221_buf221d_o->setData(*window_buf221_buf221d_o, (float*)buf221, (float*)buf221d, 1-index, 0);
    window_buf221_buf221d_o->acquire(*window_buf221_buf221d_o, LOCK_10_1_2_0, LOCK_10_1_3_0, 1-index);
    orthogonalize<128>(window_buf203r_buf203dr_i[0],window_buf205_buf205d_i[0],window_buf219_buf219d_o[0],window_buf221_buf221d_o[0]);
    window_buf203r_buf203dr_i->release(*window_buf203r_buf203dr_i, LOCK_9_2_0_0, LOCK_9_2_1_0, 1-index);
    window_buf205_buf205d_i->release(*window_buf205_buf205d_i, LOCK_10_2_2_0, LOCK_10_2_3_0, 1-index);
    window_buf219_buf219d_o->release(*window_buf219_buf219d_o, LOCK_10_1_0_0, LOCK_10_1_1_0, 1-index);
    window_buf221_buf221d_o->release(*window_buf221_buf221d_o, LOCK_10_1_2_0, LOCK_10_1_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_10_2_bounds > 0)
      --proc_10_2_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}