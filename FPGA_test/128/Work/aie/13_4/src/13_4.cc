// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /home/luanxinya/SVD/FPGA_test/128/./Work/aie/13_4/src/13_4.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_12_4_0_0 16
#define LOCK_12_4_1_0 17
#define LOCK_13_4_2_0 50
#define LOCK_13_4_3_0 51
#define LOCK_13_3_0_0 0
#define LOCK_13_3_1_0 1
#define LOCK_13_3_2_0 2
#define LOCK_13_3_3_0 3

// Declare shared memory buffers
v4float buf163[33];
v4float buf163d[33];
v4float buf172[33];
v4float buf172d[33];
v4float buf179[33];
v4float buf179d[33];
v4float buf188[33];
v4float buf188d[33];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<129u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf163_buf163d_i[1] = {{(float*)buf163, 129, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<129u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf172_buf172d_i[1] = {{(float*)buf172, 129, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<129u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf179_buf179d_o[1] = {{(float*)buf179, 129, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<129u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf188_buf188d_o[1] = {{(float*)buf188, 129, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_13_4_bounds = sync_buffer[1];

  while (proc_13_4_bounds)
  {

    // Kernel call : i83:orthogonalize<128>
    window_buf163_buf163d_i->setData(*window_buf163_buf163d_i, (float*)buf163, (float*)buf163d, 1-index, 0);
    window_buf163_buf163d_i->acquire(*window_buf163_buf163d_i, LOCK_12_4_0_0, LOCK_12_4_1_0, 1-index);
    window_buf172_buf172d_i->setData(*window_buf172_buf172d_i, (float*)buf172, (float*)buf172d, 1-index, 0);
    window_buf172_buf172d_i->acquire(*window_buf172_buf172d_i, LOCK_13_4_2_0, LOCK_13_4_3_0, 1-index);
    window_buf179_buf179d_o->setData(*window_buf179_buf179d_o, (float*)buf179, (float*)buf179d, 1-index, 0);
    window_buf179_buf179d_o->acquire(*window_buf179_buf179d_o, LOCK_13_3_0_0, LOCK_13_3_1_0, 1-index);
    window_buf188_buf188d_o->setData(*window_buf188_buf188d_o, (float*)buf188, (float*)buf188d, 1-index, 0);
    window_buf188_buf188d_o->acquire(*window_buf188_buf188d_o, LOCK_13_3_2_0, LOCK_13_3_3_0, 1-index);
    orthogonalize<128>(window_buf163_buf163d_i[0],window_buf172_buf172d_i[0],window_buf179_buf179d_o[0],window_buf188_buf188d_o[0]);
    window_buf163_buf163d_i->release(*window_buf163_buf163d_i, LOCK_12_4_0_0, LOCK_12_4_1_0, 1-index);
    window_buf172_buf172d_i->release(*window_buf172_buf172d_i, LOCK_13_4_2_0, LOCK_13_4_3_0, 1-index);
    window_buf179_buf179d_o->release(*window_buf179_buf179d_o, LOCK_13_3_0_0, LOCK_13_3_1_0, 1-index);
    window_buf188_buf188d_o->release(*window_buf188_buf188d_o, LOCK_13_3_2_0, LOCK_13_3_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_13_4_bounds > 0)
      --proc_13_4_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}