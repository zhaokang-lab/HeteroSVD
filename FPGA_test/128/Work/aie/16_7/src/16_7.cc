// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /home/luanxinya/SVD/FPGA_test/128/./Work/aie/16_7/src/16_7.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_17_7_0_0 48
#define LOCK_17_7_1_3840 49
#define LOCK_17_7_2_0 50
#define LOCK_17_7_3_0 51
#define LOCK_16_6_0_0 0
#define LOCK_16_6_1_0 1
#define LOCK_16_6_2_0 2
#define LOCK_16_6_3_0 3

// Declare shared memory buffers
v4float buf118dr[33];
v4float buf118r[33];
v4float buf120dr[33];
v4float buf120r[33];
v4float buf134[33];
v4float buf134d[33];
v4float buf136[33];
v4float buf136d[33];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<129u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf118r_buf118dr_i[1] = {{(float*)buf118r, 129, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<129u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf120r_buf120dr_i[1] = {{(float*)buf120r, 129, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<129u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf134_buf134d_o[1] = {{(float*)buf134, 129, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<129u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf136_buf136d_o[1] = {{(float*)buf136, 129, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_16_7_bounds = sync_buffer[1];

  while (proc_16_7_bounds)
  {

    // Kernel call : i62:orthogonalize<128>
    window_buf118r_buf118dr_i->setData(*window_buf118r_buf118dr_i, (float*)buf118r, (float*)buf118dr, 1-index, 0);
    window_buf118r_buf118dr_i->acquire(*window_buf118r_buf118dr_i, LOCK_17_7_0_0, LOCK_17_7_1_3840, 1-index);
    window_buf120r_buf120dr_i->setData(*window_buf120r_buf120dr_i, (float*)buf120r, (float*)buf120dr, 1-index, 0);
    window_buf120r_buf120dr_i->acquire(*window_buf120r_buf120dr_i, LOCK_17_7_2_0, LOCK_17_7_3_0, 1-index);
    window_buf134_buf134d_o->setData(*window_buf134_buf134d_o, (float*)buf134, (float*)buf134d, 1-index, 0);
    window_buf134_buf134d_o->acquire(*window_buf134_buf134d_o, LOCK_16_6_0_0, LOCK_16_6_1_0, 1-index);
    window_buf136_buf136d_o->setData(*window_buf136_buf136d_o, (float*)buf136, (float*)buf136d, 1-index, 0);
    window_buf136_buf136d_o->acquire(*window_buf136_buf136d_o, LOCK_16_6_2_0, LOCK_16_6_3_0, 1-index);
    orthogonalize<128>(window_buf118r_buf118dr_i[0],window_buf120r_buf120dr_i[0],window_buf134_buf134d_o[0],window_buf136_buf136d_o[0]);
    window_buf118r_buf118dr_i->release(*window_buf118r_buf118dr_i, LOCK_17_7_0_0, LOCK_17_7_1_3840, 1-index);
    window_buf120r_buf120dr_i->release(*window_buf120r_buf120dr_i, LOCK_17_7_2_0, LOCK_17_7_3_0, 1-index);
    window_buf134_buf134d_o->release(*window_buf134_buf134d_o, LOCK_16_6_0_0, LOCK_16_6_1_0, 1-index);
    window_buf136_buf136d_o->release(*window_buf136_buf136d_o, LOCK_16_6_2_0, LOCK_16_6_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_16_7_bounds > 0)
      --proc_16_7_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}