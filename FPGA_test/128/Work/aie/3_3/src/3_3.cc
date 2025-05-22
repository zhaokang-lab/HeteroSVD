// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /home/luanxinya/SVD/FPGA_test/128/./Work/aie/3_3/src/3_3.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_3_3_0_0 16
#define LOCK_3_3_1_0 17
#define LOCK_4_3_2_0 50
#define LOCK_4_3_3_0 51
#define LOCK_3_4_0_0 32
#define LOCK_3_4_1_0 33
#define LOCK_3_4_2_0 34
#define LOCK_3_4_3_0 35

// Declare shared memory buffers
v4float buf50[33];
v4float buf50d[33];
v4float buf57[33];
v4float buf57d[33];
v4float buf66[33];
v4float buf66d[33];
v4float buf73[33];
v4float buf73d[33];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<129u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf50_buf50d_i[1] = {{(float*)buf50, 129, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<129u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf57_buf57d_i[1] = {{(float*)buf57, 129, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<129u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf66_buf66d_o[1] = {{(float*)buf66, 129, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<129u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf73_buf73d_o[1] = {{(float*)buf73, 129, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_3_3_bounds = sync_buffer[1];

  while (proc_3_3_bounds)
  {

    // Kernel call : i26:orthogonalize<128>
    window_buf50_buf50d_i->setData(*window_buf50_buf50d_i, (float*)buf50, (float*)buf50d, 1-index, 0);
    window_buf50_buf50d_i->acquire(*window_buf50_buf50d_i, LOCK_3_3_0_0, LOCK_3_3_1_0, 1-index);
    window_buf57_buf57d_i->setData(*window_buf57_buf57d_i, (float*)buf57, (float*)buf57d, 1-index, 0);
    window_buf57_buf57d_i->acquire(*window_buf57_buf57d_i, LOCK_4_3_2_0, LOCK_4_3_3_0, 1-index);
    window_buf66_buf66d_o->setData(*window_buf66_buf66d_o, (float*)buf66, (float*)buf66d, 1-index, 0);
    window_buf66_buf66d_o->acquire(*window_buf66_buf66d_o, LOCK_3_4_0_0, LOCK_3_4_1_0, 1-index);
    window_buf73_buf73d_o->setData(*window_buf73_buf73d_o, (float*)buf73, (float*)buf73d, 1-index, 0);
    window_buf73_buf73d_o->acquire(*window_buf73_buf73d_o, LOCK_3_4_2_0, LOCK_3_4_3_0, 1-index);
    orthogonalize<128>(window_buf50_buf50d_i[0],window_buf57_buf57d_i[0],window_buf66_buf66d_o[0],window_buf73_buf73d_o[0]);
    window_buf50_buf50d_i->release(*window_buf50_buf50d_i, LOCK_3_3_0_0, LOCK_3_3_1_0, 1-index);
    window_buf57_buf57d_i->release(*window_buf57_buf57d_i, LOCK_4_3_2_0, LOCK_4_3_3_0, 1-index);
    window_buf66_buf66d_o->release(*window_buf66_buf66d_o, LOCK_3_4_0_0, LOCK_3_4_1_0, 1-index);
    window_buf73_buf73d_o->release(*window_buf73_buf73d_o, LOCK_3_4_2_0, LOCK_3_4_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_3_3_bounds > 0)
      --proc_3_3_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}