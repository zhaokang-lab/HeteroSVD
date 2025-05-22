// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /home/luanxinya/SVD/FPGA_test/128/./Work/aie/11_6/src/11_6.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_10_6_0_0 16
#define LOCK_10_6_1_0 17
#define LOCK_11_6_2_0 50
#define LOCK_11_6_3_0 51
#define LOCK_11_5_0_0 0
#define LOCK_11_5_1_0 1
#define LOCK_11_5_2_0 2
#define LOCK_11_5_3_0 3

// Declare shared memory buffers
v4float buf133[33];
v4float buf133d[33];
v4float buf139[33];
v4float buf139d[33];
v4float buf149[33];
v4float buf149d[33];
v4float buf155[33];
v4float buf155d[33];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<129u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf133_buf133d_i[1] = {{(float*)buf133, 129, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<129u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf139_buf139d_i[1] = {{(float*)buf139, 129, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<129u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf149_buf149d_o[1] = {{(float*)buf149, 129, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<129u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf155_buf155d_o[1] = {{(float*)buf155, 129, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_11_6_bounds = sync_buffer[1];

  while (proc_11_6_bounds)
  {

    // Kernel call : i65:orthogonalize<128>
    window_buf133_buf133d_i->setData(*window_buf133_buf133d_i, (float*)buf133, (float*)buf133d, 1-index, 0);
    window_buf133_buf133d_i->acquire(*window_buf133_buf133d_i, LOCK_10_6_0_0, LOCK_10_6_1_0, 1-index);
    window_buf139_buf139d_i->setData(*window_buf139_buf139d_i, (float*)buf139, (float*)buf139d, 1-index, 0);
    window_buf139_buf139d_i->acquire(*window_buf139_buf139d_i, LOCK_11_6_2_0, LOCK_11_6_3_0, 1-index);
    window_buf149_buf149d_o->setData(*window_buf149_buf149d_o, (float*)buf149, (float*)buf149d, 1-index, 0);
    window_buf149_buf149d_o->acquire(*window_buf149_buf149d_o, LOCK_11_5_0_0, LOCK_11_5_1_0, 1-index);
    window_buf155_buf155d_o->setData(*window_buf155_buf155d_o, (float*)buf155, (float*)buf155d, 1-index, 0);
    window_buf155_buf155d_o->acquire(*window_buf155_buf155d_o, LOCK_11_5_2_0, LOCK_11_5_3_0, 1-index);
    orthogonalize<128>(window_buf133_buf133d_i[0],window_buf139_buf139d_i[0],window_buf149_buf149d_o[0],window_buf155_buf155d_o[0]);
    window_buf133_buf133d_i->release(*window_buf133_buf133d_i, LOCK_10_6_0_0, LOCK_10_6_1_0, 1-index);
    window_buf139_buf139d_i->release(*window_buf139_buf139d_i, LOCK_11_6_2_0, LOCK_11_6_3_0, 1-index);
    window_buf149_buf149d_o->release(*window_buf149_buf149d_o, LOCK_11_5_0_0, LOCK_11_5_1_0, 1-index);
    window_buf155_buf155d_o->release(*window_buf155_buf155d_o, LOCK_11_5_2_0, LOCK_11_5_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_11_6_bounds > 0)
      --proc_11_6_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}