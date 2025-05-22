// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /home/luanxinya/SVD/FPGA_test/128/./Work/aie/6_5/src/6_5.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_6_5_0_0 16
#define LOCK_6_5_1_0 17
#define LOCK_7_5_2_0 50
#define LOCK_7_5_3_0 51
#define LOCK_6_6_0_0 32
#define LOCK_6_6_1_0 33
#define LOCK_6_6_2_0 34
#define LOCK_6_6_3_0 35

// Declare shared memory buffers
v4float buf102[33];
v4float buf102d[33];
v4float buf108[33];
v4float buf108d[33];
v4float buf86[33];
v4float buf86d[33];
v4float buf92[33];
v4float buf92d[33];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<129u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf86_buf86d_i[1] = {{(float*)buf86, 129, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<129u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf92_buf92d_i[1] = {{(float*)buf92, 129, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<129u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf102_buf102d_o[1] = {{(float*)buf102, 129, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<129u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf108_buf108d_o[1] = {{(float*)buf108, 129, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_6_5_bounds = sync_buffer[1];

  while (proc_6_5_bounds)
  {

    // Kernel call : i45:orthogonalize<128>
    window_buf86_buf86d_i->setData(*window_buf86_buf86d_i, (float*)buf86, (float*)buf86d, 1-index, 0);
    window_buf86_buf86d_i->acquire(*window_buf86_buf86d_i, LOCK_6_5_0_0, LOCK_6_5_1_0, 1-index);
    window_buf92_buf92d_i->setData(*window_buf92_buf92d_i, (float*)buf92, (float*)buf92d, 1-index, 0);
    window_buf92_buf92d_i->acquire(*window_buf92_buf92d_i, LOCK_7_5_2_0, LOCK_7_5_3_0, 1-index);
    window_buf102_buf102d_o->setData(*window_buf102_buf102d_o, (float*)buf102, (float*)buf102d, 1-index, 0);
    window_buf102_buf102d_o->acquire(*window_buf102_buf102d_o, LOCK_6_6_0_0, LOCK_6_6_1_0, 1-index);
    window_buf108_buf108d_o->setData(*window_buf108_buf108d_o, (float*)buf108, (float*)buf108d, 1-index, 0);
    window_buf108_buf108d_o->acquire(*window_buf108_buf108d_o, LOCK_6_6_2_0, LOCK_6_6_3_0, 1-index);
    orthogonalize<128>(window_buf86_buf86d_i[0],window_buf92_buf92d_i[0],window_buf102_buf102d_o[0],window_buf108_buf108d_o[0]);
    window_buf86_buf86d_i->release(*window_buf86_buf86d_i, LOCK_6_5_0_0, LOCK_6_5_1_0, 1-index);
    window_buf92_buf92d_i->release(*window_buf92_buf92d_i, LOCK_7_5_2_0, LOCK_7_5_3_0, 1-index);
    window_buf102_buf102d_o->release(*window_buf102_buf102d_o, LOCK_6_6_0_0, LOCK_6_6_1_0, 1-index);
    window_buf108_buf108d_o->release(*window_buf108_buf108d_o, LOCK_6_6_2_0, LOCK_6_6_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_6_5_bounds > 0)
      --proc_6_5_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}