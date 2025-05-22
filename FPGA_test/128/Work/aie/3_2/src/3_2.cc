// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /home/luanxinya/SVD/FPGA_test/128/./Work/aie/3_2/src/3_2.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_2_2_2_0 18
#define LOCK_2_2_3_0 19
#define LOCK_3_2_2_0 50
#define LOCK_3_2_3_0 51
#define LOCK_3_3_0_0 32
#define LOCK_3_3_1_0 33
#define LOCK_3_3_2_0 34
#define LOCK_3_3_3_0 35

// Declare shared memory buffers
v4float buf34[33];
v4float buf34d[33];
v4float buf39[33];
v4float buf39d[33];
v4float buf50[33];
v4float buf50d[33];
v4float buf55[33];
v4float buf55d[33];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<129u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf34_buf34d_i[1] = {{(float*)buf34, 129, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<129u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf39_buf39d_i[1] = {{(float*)buf39, 129, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<129u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf50_buf50d_o[1] = {{(float*)buf50, 129, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<129u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf55_buf55d_o[1] = {{(float*)buf55, 129, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_3_2_bounds = sync_buffer[1];

  while (proc_3_2_bounds)
  {

    // Kernel call : i18:orthogonalize<128>
    window_buf34_buf34d_i->setData(*window_buf34_buf34d_i, (float*)buf34, (float*)buf34d, 1-index, 0);
    window_buf34_buf34d_i->acquire(*window_buf34_buf34d_i, LOCK_2_2_2_0, LOCK_2_2_3_0, 1-index);
    window_buf39_buf39d_i->setData(*window_buf39_buf39d_i, (float*)buf39, (float*)buf39d, 1-index, 0);
    window_buf39_buf39d_i->acquire(*window_buf39_buf39d_i, LOCK_3_2_2_0, LOCK_3_2_3_0, 1-index);
    window_buf50_buf50d_o->setData(*window_buf50_buf50d_o, (float*)buf50, (float*)buf50d, 1-index, 0);
    window_buf50_buf50d_o->acquire(*window_buf50_buf50d_o, LOCK_3_3_0_0, LOCK_3_3_1_0, 1-index);
    window_buf55_buf55d_o->setData(*window_buf55_buf55d_o, (float*)buf55, (float*)buf55d, 1-index, 0);
    window_buf55_buf55d_o->acquire(*window_buf55_buf55d_o, LOCK_3_3_2_0, LOCK_3_3_3_0, 1-index);
    orthogonalize<128>(window_buf34_buf34d_i[0],window_buf39_buf39d_i[0],window_buf50_buf50d_o[0],window_buf55_buf55d_o[0]);
    window_buf34_buf34d_i->release(*window_buf34_buf34d_i, LOCK_2_2_2_0, LOCK_2_2_3_0, 1-index);
    window_buf39_buf39d_i->release(*window_buf39_buf39d_i, LOCK_3_2_2_0, LOCK_3_2_3_0, 1-index);
    window_buf50_buf50d_o->release(*window_buf50_buf50d_o, LOCK_3_3_0_0, LOCK_3_3_1_0, 1-index);
    window_buf55_buf55d_o->release(*window_buf55_buf55d_o, LOCK_3_3_2_0, LOCK_3_3_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_3_2_bounds > 0)
      --proc_3_2_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}