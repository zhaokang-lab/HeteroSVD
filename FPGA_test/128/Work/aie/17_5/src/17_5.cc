// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /home/luanxinya/SVD/FPGA_test/128/./Work/aie/17_5/src/17_5.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_17_5_2_0 18
#define LOCK_17_5_3_0 19
#define LOCK_18_5_0_0 48
#define LOCK_18_5_1_0 49
#define LOCK_17_4_0_0 0
#define LOCK_17_4_1_0 1
#define LOCK_17_4_2_0 2
#define LOCK_17_4_3_0 3

// Declare shared memory buffers
v4float buf153dr[33];
v4float buf153r[33];
v4float buf159[33];
v4float buf159d[33];
v4float buf169[33];
v4float buf169d[33];
v4float buf175[33];
v4float buf175d[33];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<129u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf159_buf159d_i[1] = {{(float*)buf159, 129, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<129u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf153r_buf153dr_i[1] = {{(float*)buf153r, 129, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<129u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf175_buf175d_o[1] = {{(float*)buf175, 129, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<129u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf169_buf169d_o[1] = {{(float*)buf169, 129, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_17_5_bounds = sync_buffer[1];

  while (proc_17_5_bounds)
  {

    // Kernel call : i79:orthogonalize<128>
    window_buf159_buf159d_i->setData(*window_buf159_buf159d_i, (float*)buf159, (float*)buf159d, 1-index, 0);
    window_buf159_buf159d_i->acquire(*window_buf159_buf159d_i, LOCK_17_5_2_0, LOCK_17_5_3_0, 1-index);
    window_buf153r_buf153dr_i->setData(*window_buf153r_buf153dr_i, (float*)buf153r, (float*)buf153dr, 1-index, 0);
    window_buf153r_buf153dr_i->acquire(*window_buf153r_buf153dr_i, LOCK_18_5_0_0, LOCK_18_5_1_0, 1-index);
    window_buf175_buf175d_o->setData(*window_buf175_buf175d_o, (float*)buf175, (float*)buf175d, 1-index, 0);
    window_buf175_buf175d_o->acquire(*window_buf175_buf175d_o, LOCK_17_4_0_0, LOCK_17_4_1_0, 1-index);
    window_buf169_buf169d_o->setData(*window_buf169_buf169d_o, (float*)buf169, (float*)buf169d, 1-index, 0);
    window_buf169_buf169d_o->acquire(*window_buf169_buf169d_o, LOCK_17_4_2_0, LOCK_17_4_3_0, 1-index);
    orthogonalize<128>(window_buf159_buf159d_i[0],window_buf153r_buf153dr_i[0],window_buf175_buf175d_o[0],window_buf169_buf169d_o[0]);
    window_buf159_buf159d_i->release(*window_buf159_buf159d_i, LOCK_17_5_2_0, LOCK_17_5_3_0, 1-index);
    window_buf153r_buf153dr_i->release(*window_buf153r_buf153dr_i, LOCK_18_5_0_0, LOCK_18_5_1_0, 1-index);
    window_buf175_buf175d_o->release(*window_buf175_buf175d_o, LOCK_17_4_0_0, LOCK_17_4_1_0, 1-index);
    window_buf169_buf169d_o->release(*window_buf169_buf169d_o, LOCK_17_4_2_0, LOCK_17_4_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_17_5_bounds > 0)
      --proc_17_5_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}