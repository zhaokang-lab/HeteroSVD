// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /home/luanxinya/SVD/FPGA_test/128/./Work/aie/10_6/src/10_6.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_9_6_0_0 16
#define LOCK_9_6_1_0 17
#define LOCK_10_6_2_0 50
#define LOCK_10_6_3_0 51
#define LOCK_10_5_0_0 0
#define LOCK_10_5_1_0 1
#define LOCK_10_5_2_0 2
#define LOCK_10_5_3_0 3

// Declare shared memory buffers
v4float buf135dr[33];
v4float buf135r[33];
v4float buf137[33];
v4float buf137d[33];
v4float buf151[33];
v4float buf151d[33];
v4float buf153[33];
v4float buf153d[33];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<129u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf135r_buf135dr_i[1] = {{(float*)buf135r, 129, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<129u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf137_buf137d_i[1] = {{(float*)buf137, 129, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<129u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf151_buf151d_o[1] = {{(float*)buf151, 129, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<129u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf153_buf153d_o[1] = {{(float*)buf153, 129, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_10_6_bounds = sync_buffer[1];

  while (proc_10_6_bounds)
  {

    // Kernel call : i64:orthogonalize<128>
    window_buf135r_buf135dr_i->setData(*window_buf135r_buf135dr_i, (float*)buf135r, (float*)buf135dr, 1-index, 0);
    window_buf135r_buf135dr_i->acquire(*window_buf135r_buf135dr_i, LOCK_9_6_0_0, LOCK_9_6_1_0, 1-index);
    window_buf137_buf137d_i->setData(*window_buf137_buf137d_i, (float*)buf137, (float*)buf137d, 1-index, 0);
    window_buf137_buf137d_i->acquire(*window_buf137_buf137d_i, LOCK_10_6_2_0, LOCK_10_6_3_0, 1-index);
    window_buf151_buf151d_o->setData(*window_buf151_buf151d_o, (float*)buf151, (float*)buf151d, 1-index, 0);
    window_buf151_buf151d_o->acquire(*window_buf151_buf151d_o, LOCK_10_5_0_0, LOCK_10_5_1_0, 1-index);
    window_buf153_buf153d_o->setData(*window_buf153_buf153d_o, (float*)buf153, (float*)buf153d, 1-index, 0);
    window_buf153_buf153d_o->acquire(*window_buf153_buf153d_o, LOCK_10_5_2_0, LOCK_10_5_3_0, 1-index);
    orthogonalize<128>(window_buf135r_buf135dr_i[0],window_buf137_buf137d_i[0],window_buf151_buf151d_o[0],window_buf153_buf153d_o[0]);
    window_buf135r_buf135dr_i->release(*window_buf135r_buf135dr_i, LOCK_9_6_0_0, LOCK_9_6_1_0, 1-index);
    window_buf137_buf137d_i->release(*window_buf137_buf137d_i, LOCK_10_6_2_0, LOCK_10_6_3_0, 1-index);
    window_buf151_buf151d_o->release(*window_buf151_buf151d_o, LOCK_10_5_0_0, LOCK_10_5_1_0, 1-index);
    window_buf153_buf153d_o->release(*window_buf153_buf153d_o, LOCK_10_5_2_0, LOCK_10_5_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_10_6_bounds > 0)
      --proc_10_6_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}