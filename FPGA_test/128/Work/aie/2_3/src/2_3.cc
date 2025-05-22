// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /home/luanxinya/SVD/FPGA_test/128/./Work/aie/2_3/src/2_3.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_2_3_0_7648 16
#define LOCK_2_3_1_0 17
#define LOCK_3_3_2_0 50
#define LOCK_3_3_3_0 51
#define LOCK_2_4_0_0 32
#define LOCK_2_4_1_0 33
#define LOCK_2_4_2_0 34
#define LOCK_2_4_3_0 35

// Declare shared memory buffers
v4float buf48[33];
v4float buf48d[33];
v4float buf55[33];
v4float buf55d[33];
v4float buf64[33];
v4float buf64d[33];
v4float buf71[33];
v4float buf71d[33];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<129u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf48_buf48d_i[1] = {{(float*)buf48, 129, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<129u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf55_buf55d_i[1] = {{(float*)buf55, 129, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<129u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf64_buf64d_o[1] = {{(float*)buf64, 129, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<129u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf71_buf71d_o[1] = {{(float*)buf71, 129, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_2_3_bounds = sync_buffer[1];

  while (proc_2_3_bounds)
  {

    // Kernel call : i25:orthogonalize<128>
    window_buf48_buf48d_i->setData(*window_buf48_buf48d_i, (float*)buf48, (float*)buf48d, 1-index, 0);
    window_buf48_buf48d_i->acquire(*window_buf48_buf48d_i, LOCK_2_3_0_7648, LOCK_2_3_1_0, 1-index);
    window_buf55_buf55d_i->setData(*window_buf55_buf55d_i, (float*)buf55, (float*)buf55d, 1-index, 0);
    window_buf55_buf55d_i->acquire(*window_buf55_buf55d_i, LOCK_3_3_2_0, LOCK_3_3_3_0, 1-index);
    window_buf64_buf64d_o->setData(*window_buf64_buf64d_o, (float*)buf64, (float*)buf64d, 1-index, 0);
    window_buf64_buf64d_o->acquire(*window_buf64_buf64d_o, LOCK_2_4_0_0, LOCK_2_4_1_0, 1-index);
    window_buf71_buf71d_o->setData(*window_buf71_buf71d_o, (float*)buf71, (float*)buf71d, 1-index, 0);
    window_buf71_buf71d_o->acquire(*window_buf71_buf71d_o, LOCK_2_4_2_0, LOCK_2_4_3_0, 1-index);
    orthogonalize<128>(window_buf48_buf48d_i[0],window_buf55_buf55d_i[0],window_buf64_buf64d_o[0],window_buf71_buf71d_o[0]);
    window_buf48_buf48d_i->release(*window_buf48_buf48d_i, LOCK_2_3_0_7648, LOCK_2_3_1_0, 1-index);
    window_buf55_buf55d_i->release(*window_buf55_buf55d_i, LOCK_3_3_2_0, LOCK_3_3_3_0, 1-index);
    window_buf64_buf64d_o->release(*window_buf64_buf64d_o, LOCK_2_4_0_0, LOCK_2_4_1_0, 1-index);
    window_buf71_buf71d_o->release(*window_buf71_buf71d_o, LOCK_2_4_2_0, LOCK_2_4_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_2_3_bounds > 0)
      --proc_2_3_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}