// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /home/luanxinya/SVD/FPGA_test/128/./Work/aie/6_3/src/6_3.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_6_3_0_0 16
#define LOCK_6_3_1_0 17
#define LOCK_7_3_2_0 50
#define LOCK_7_3_3_0 51
#define LOCK_6_4_0_0 32
#define LOCK_6_4_1_0 33
#define LOCK_6_4_2_0 34
#define LOCK_6_4_3_0 35

// Declare shared memory buffers
v4float buf56[33];
v4float buf56d[33];
v4float buf62[33];
v4float buf62d[33];
v4float buf72[33];
v4float buf72d[33];
v4float buf78[33];
v4float buf78d[33];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<129u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf56_buf56d_i[1] = {{(float*)buf56, 129, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<129u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf62_buf62d_i[1] = {{(float*)buf62, 129, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<129u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf72_buf72d_o[1] = {{(float*)buf72, 129, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<129u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf78_buf78d_o[1] = {{(float*)buf78, 129, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_6_3_bounds = sync_buffer[1];

  while (proc_6_3_bounds)
  {

    // Kernel call : i29:orthogonalize<128>
    window_buf56_buf56d_i->setData(*window_buf56_buf56d_i, (float*)buf56, (float*)buf56d, 1-index, 0);
    window_buf56_buf56d_i->acquire(*window_buf56_buf56d_i, LOCK_6_3_0_0, LOCK_6_3_1_0, 1-index);
    window_buf62_buf62d_i->setData(*window_buf62_buf62d_i, (float*)buf62, (float*)buf62d, 1-index, 0);
    window_buf62_buf62d_i->acquire(*window_buf62_buf62d_i, LOCK_7_3_2_0, LOCK_7_3_3_0, 1-index);
    window_buf72_buf72d_o->setData(*window_buf72_buf72d_o, (float*)buf72, (float*)buf72d, 1-index, 0);
    window_buf72_buf72d_o->acquire(*window_buf72_buf72d_o, LOCK_6_4_0_0, LOCK_6_4_1_0, 1-index);
    window_buf78_buf78d_o->setData(*window_buf78_buf78d_o, (float*)buf78, (float*)buf78d, 1-index, 0);
    window_buf78_buf78d_o->acquire(*window_buf78_buf78d_o, LOCK_6_4_2_0, LOCK_6_4_3_0, 1-index);
    orthogonalize<128>(window_buf56_buf56d_i[0],window_buf62_buf62d_i[0],window_buf72_buf72d_o[0],window_buf78_buf78d_o[0]);
    window_buf56_buf56d_i->release(*window_buf56_buf56d_i, LOCK_6_3_0_0, LOCK_6_3_1_0, 1-index);
    window_buf62_buf62d_i->release(*window_buf62_buf62d_i, LOCK_7_3_2_0, LOCK_7_3_3_0, 1-index);
    window_buf72_buf72d_o->release(*window_buf72_buf72d_o, LOCK_6_4_0_0, LOCK_6_4_1_0, 1-index);
    window_buf78_buf78d_o->release(*window_buf78_buf78d_o, LOCK_6_4_2_0, LOCK_6_4_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_6_3_bounds > 0)
      --proc_6_3_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}