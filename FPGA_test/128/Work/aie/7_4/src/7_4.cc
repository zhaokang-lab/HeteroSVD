// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /home/luanxinya/SVD/FPGA_test/128/./Work/aie/7_4/src/7_4.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_6_4_0_0 16
#define LOCK_6_4_1_0 17
#define LOCK_7_4_2_0 50
#define LOCK_7_4_3_0 51
#define LOCK_7_5_0_0 32
#define LOCK_7_5_1_0 33
#define LOCK_7_5_2_0 34
#define LOCK_7_5_3_0 35

// Declare shared memory buffers
v4float buf72[33];
v4float buf72d[33];
v4float buf76[33];
v4float buf76d[33];
v4float buf88[33];
v4float buf88d[33];
v4float buf92[33];
v4float buf92d[33];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<129u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf72_buf72d_i[1] = {{(float*)buf72, 129, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<129u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf76_buf76d_i[1] = {{(float*)buf76, 129, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<129u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf88_buf88d_o[1] = {{(float*)buf88, 129, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<129u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf92_buf92d_o[1] = {{(float*)buf92, 129, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_7_4_bounds = sync_buffer[1];

  while (proc_7_4_bounds)
  {

    // Kernel call : i38:orthogonalize<128>
    window_buf72_buf72d_i->setData(*window_buf72_buf72d_i, (float*)buf72, (float*)buf72d, 1-index, 0);
    window_buf72_buf72d_i->acquire(*window_buf72_buf72d_i, LOCK_6_4_0_0, LOCK_6_4_1_0, 1-index);
    window_buf76_buf76d_i->setData(*window_buf76_buf76d_i, (float*)buf76, (float*)buf76d, 1-index, 0);
    window_buf76_buf76d_i->acquire(*window_buf76_buf76d_i, LOCK_7_4_2_0, LOCK_7_4_3_0, 1-index);
    window_buf88_buf88d_o->setData(*window_buf88_buf88d_o, (float*)buf88, (float*)buf88d, 1-index, 0);
    window_buf88_buf88d_o->acquire(*window_buf88_buf88d_o, LOCK_7_5_0_0, LOCK_7_5_1_0, 1-index);
    window_buf92_buf92d_o->setData(*window_buf92_buf92d_o, (float*)buf92, (float*)buf92d, 1-index, 0);
    window_buf92_buf92d_o->acquire(*window_buf92_buf92d_o, LOCK_7_5_2_0, LOCK_7_5_3_0, 1-index);
    orthogonalize<128>(window_buf72_buf72d_i[0],window_buf76_buf76d_i[0],window_buf88_buf88d_o[0],window_buf92_buf92d_o[0]);
    window_buf72_buf72d_i->release(*window_buf72_buf72d_i, LOCK_6_4_0_0, LOCK_6_4_1_0, 1-index);
    window_buf76_buf76d_i->release(*window_buf76_buf76d_i, LOCK_7_4_2_0, LOCK_7_4_3_0, 1-index);
    window_buf88_buf88d_o->release(*window_buf88_buf88d_o, LOCK_7_5_0_0, LOCK_7_5_1_0, 1-index);
    window_buf92_buf92d_o->release(*window_buf92_buf92d_o, LOCK_7_5_2_0, LOCK_7_5_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_7_4_bounds > 0)
      --proc_7_4_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}