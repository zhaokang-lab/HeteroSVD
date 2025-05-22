// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /home/luanxinya/SVD/FPGA_test/128/./Work/aie/0_6/src/0_6.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_0_7_0_7648 32
#define LOCK_0_7_1_7648 33
#define LOCK_0_7_2_544 34
#define LOCK_0_7_3_544 35

// Declare shared memory buffers
v4float buf268[33];
v4float buf268d[33];
v4float buf269[33];
v4float buf269d[33];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Normalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<129u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf268_buf268d_i[1] = {{(float*)buf268, 129, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<129u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf269_buf269d_o[1] = {{(float*)buf269, 129, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_0_6_bounds = sync_buffer[1];

  while (proc_0_6_bounds)
  {

    // Kernel call : i134:normalize<128>
    window_buf268_buf268d_i->setData(*window_buf268_buf268d_i, (float*)buf268, (float*)buf268d, 1-index, 0);
    window_buf268_buf268d_i->acquire(*window_buf268_buf268d_i, LOCK_0_7_0_7648, LOCK_0_7_1_7648, 1-index);
    window_buf269_buf269d_o->setData(*window_buf269_buf269d_o, (float*)buf269, (float*)buf269d, 1-index, 0);
    window_buf269_buf269d_o->acquire(*window_buf269_buf269d_o, LOCK_0_7_2_544, LOCK_0_7_3_544, 1-index);
    normalize<128>(window_buf268_buf268d_i[0],window_buf269_buf269d_o[0]);
    window_buf268_buf268d_i->release(*window_buf268_buf268d_i, LOCK_0_7_0_7648, LOCK_0_7_1_7648, 1-index);
    window_buf269_buf269d_o->release(*window_buf269_buf269d_o, LOCK_0_7_2_544, LOCK_0_7_3_544, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_0_6_bounds > 0)
      --proc_0_6_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}