// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /home/luanxinya/SVD/FPGA_test/128/./Work/aie/0_5/src/0_5.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_0_5_4_5024 20
#define LOCK_0_5_5_544 21
#define LOCK_1_5_0_0 48
#define LOCK_1_5_1_0 49

// Declare shared memory buffers
v4float buf266[33];
v4float buf266d[33];
v4float buf267[33];
v4float buf267d[33];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Normalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<129u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf266_buf266d_i[1] = {{(float*)buf266, 129, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<129u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf267_buf267d_o[1] = {{(float*)buf267, 129, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_0_5_bounds = sync_buffer[1];

  while (proc_0_5_bounds)
  {

    // Kernel call : i133:normalize<128>
    window_buf266_buf266d_i->setData(*window_buf266_buf266d_i, (float*)buf266, (float*)buf266d, 1-index, 0);
    window_buf266_buf266d_i->acquire(*window_buf266_buf266d_i, LOCK_0_5_4_5024, LOCK_0_5_5_544, 1-index);
    window_buf267_buf267d_o->setData(*window_buf267_buf267d_o, (float*)buf267, (float*)buf267d, 1-index, 0);
    window_buf267_buf267d_o->acquire(*window_buf267_buf267d_o, LOCK_1_5_0_0, LOCK_1_5_1_0, 1-index);
    normalize<128>(window_buf266_buf266d_i[0],window_buf267_buf267d_o[0]);
    window_buf266_buf266d_i->release(*window_buf266_buf266d_i, LOCK_0_5_4_5024, LOCK_0_5_5_544, 1-index);
    window_buf267_buf267d_o->release(*window_buf267_buf267d_o, LOCK_1_5_0_0, LOCK_1_5_1_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_0_5_bounds > 0)
      --proc_0_5_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}