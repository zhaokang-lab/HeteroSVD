// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /home/luanxinya/SVD/FPGA_test/128/./Work/aie/4_4/src/4_4.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_3_4_0_0 16
#define LOCK_3_4_1_0 17
#define LOCK_4_4_2_0 50
#define LOCK_4_4_3_0 51
#define LOCK_4_5_0_0 32
#define LOCK_4_5_1_0 33
#define LOCK_4_5_2_0 34
#define LOCK_4_5_3_0 35

// Declare shared memory buffers
v4float buf66[33];
v4float buf66d[33];
v4float buf75[33];
v4float buf75d[33];
v4float buf82[33];
v4float buf82d[33];
v4float buf91[33];
v4float buf91d[33];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<129u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf66_buf66d_i[1] = {{(float*)buf66, 129, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<129u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf75_buf75d_i[1] = {{(float*)buf75, 129, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<129u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf82_buf82d_o[1] = {{(float*)buf82, 129, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<129u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf91_buf91d_o[1] = {{(float*)buf91, 129, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_4_4_bounds = sync_buffer[1];

  while (proc_4_4_bounds)
  {

    // Kernel call : i35:orthogonalize<128>
    window_buf66_buf66d_i->setData(*window_buf66_buf66d_i, (float*)buf66, (float*)buf66d, 1-index, 0);
    window_buf66_buf66d_i->acquire(*window_buf66_buf66d_i, LOCK_3_4_0_0, LOCK_3_4_1_0, 1-index);
    window_buf75_buf75d_i->setData(*window_buf75_buf75d_i, (float*)buf75, (float*)buf75d, 1-index, 0);
    window_buf75_buf75d_i->acquire(*window_buf75_buf75d_i, LOCK_4_4_2_0, LOCK_4_4_3_0, 1-index);
    window_buf82_buf82d_o->setData(*window_buf82_buf82d_o, (float*)buf82, (float*)buf82d, 1-index, 0);
    window_buf82_buf82d_o->acquire(*window_buf82_buf82d_o, LOCK_4_5_0_0, LOCK_4_5_1_0, 1-index);
    window_buf91_buf91d_o->setData(*window_buf91_buf91d_o, (float*)buf91, (float*)buf91d, 1-index, 0);
    window_buf91_buf91d_o->acquire(*window_buf91_buf91d_o, LOCK_4_5_2_0, LOCK_4_5_3_0, 1-index);
    orthogonalize<128>(window_buf66_buf66d_i[0],window_buf75_buf75d_i[0],window_buf82_buf82d_o[0],window_buf91_buf91d_o[0]);
    window_buf66_buf66d_i->release(*window_buf66_buf66d_i, LOCK_3_4_0_0, LOCK_3_4_1_0, 1-index);
    window_buf75_buf75d_i->release(*window_buf75_buf75d_i, LOCK_4_4_2_0, LOCK_4_4_3_0, 1-index);
    window_buf82_buf82d_o->release(*window_buf82_buf82d_o, LOCK_4_5_0_0, LOCK_4_5_1_0, 1-index);
    window_buf91_buf91d_o->release(*window_buf91_buf91d_o, LOCK_4_5_2_0, LOCK_4_5_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_4_4_bounds > 0)
      --proc_4_4_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}