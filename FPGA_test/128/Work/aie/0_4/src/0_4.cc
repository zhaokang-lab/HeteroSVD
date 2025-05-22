// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /home/luanxinya/SVD/FPGA_test/128/./Work/aie/0_4/src/0_4.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_0_5_0_0 32
#define LOCK_0_5_1_0 33
#define LOCK_0_5_2_0 34
#define LOCK_0_5_3_0 35

// Declare shared memory buffers
v4float buf264[33];
v4float buf264d[33];
v4float buf265[33];
v4float buf265d[33];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Normalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<129u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf264_buf264d_i[1] = {{(float*)buf264, 129, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<129u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf265_buf265d_o[1] = {{(float*)buf265, 129, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_0_4_bounds = sync_buffer[1];

  while (proc_0_4_bounds)
  {

    // Kernel call : i132:normalize<128>
    window_buf264_buf264d_i->setData(*window_buf264_buf264d_i, (float*)buf264, (float*)buf264d, 1-index, 0);
    window_buf264_buf264d_i->acquire(*window_buf264_buf264d_i, LOCK_0_5_0_0, LOCK_0_5_1_0, 1-index);
    window_buf265_buf265d_o->setData(*window_buf265_buf265d_o, (float*)buf265, (float*)buf265d, 1-index, 0);
    window_buf265_buf265d_o->acquire(*window_buf265_buf265d_o, LOCK_0_5_2_0, LOCK_0_5_3_0, 1-index);
    normalize<128>(window_buf264_buf264d_i[0],window_buf265_buf265d_o[0]);
    window_buf264_buf264d_i->release(*window_buf264_buf264d_i, LOCK_0_5_0_0, LOCK_0_5_1_0, 1-index);
    window_buf265_buf265d_o->release(*window_buf265_buf265d_o, LOCK_0_5_2_0, LOCK_0_5_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_0_4_bounds > 0)
      --proc_0_4_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}