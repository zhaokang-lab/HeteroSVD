// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /home/luanxinya/SVD/FPGA_test/128/./Work/aie/23_0/src/23_0.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_23_0_0_0 48
#define LOCK_23_0_1_0 49
#define LOCK_23_1_0_544 32
#define LOCK_23_1_1_0 33
#define LOCK_23_1_2_7104 34
#define LOCK_23_1_3_1088 35
#define LOCK_23_1_4_0 36
#define LOCK_23_1_5_0 37

// Declare shared memory buffers
v4float buf229dr[33];
v4float buf229r[33];
v4float buf230dr[33];
v4float buf230r[33];
v4float buf245[33];
v4float buf245d[33];
v4float buf246[33];
v4float buf246d[33];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<129u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf229r_buf229dr_i[1] = {{(float*)buf229r, 129, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<129u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf230r_buf230dr_i[1] = {{(float*)buf230r, 129, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<129u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf245_buf245d_o[1] = {{(float*)buf245, 129, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<129u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf246_buf246d_o[1] = {{(float*)buf246, 129, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_23_0_bounds = sync_buffer[1];

  while (proc_23_0_bounds)
  {

    // Kernel call : i116:orthogonalize<128>
    window_buf229r_buf229dr_i->setData(*window_buf229r_buf229dr_i, (float*)buf229r, (float*)buf229dr, 1-index, 0);
    window_buf229r_buf229dr_i->acquire(*window_buf229r_buf229dr_i, LOCK_23_0_0_0, LOCK_23_0_1_0, 1-index);
    window_buf230r_buf230dr_i->setData(*window_buf230r_buf230dr_i, (float*)buf230r, (float*)buf230dr, 1-index, 0);
    window_buf230r_buf230dr_i->acquire(*window_buf230r_buf230dr_i, LOCK_23_1_0_544, LOCK_23_1_1_0, 1-index);
    window_buf245_buf245d_o->setData(*window_buf245_buf245d_o, (float*)buf245, (float*)buf245d, 1-index, 0);
    window_buf245_buf245d_o->acquire(*window_buf245_buf245d_o, LOCK_23_1_2_7104, LOCK_23_1_3_1088, 1-index);
    window_buf246_buf246d_o->setData(*window_buf246_buf246d_o, (float*)buf246, (float*)buf246d, 1-index, 0);
    window_buf246_buf246d_o->acquire(*window_buf246_buf246d_o, LOCK_23_1_4_0, LOCK_23_1_5_0, 1-index);
    orthogonalize<128>(window_buf229r_buf229dr_i[0],window_buf230r_buf230dr_i[0],window_buf245_buf245d_o[0],window_buf246_buf246d_o[0]);
    window_buf229r_buf229dr_i->release(*window_buf229r_buf229dr_i, LOCK_23_0_0_0, LOCK_23_0_1_0, 1-index);
    window_buf230r_buf230dr_i->release(*window_buf230r_buf230dr_i, LOCK_23_1_0_544, LOCK_23_1_1_0, 1-index);
    window_buf245_buf245d_o->release(*window_buf245_buf245d_o, LOCK_23_1_2_7104, LOCK_23_1_3_1088, 1-index);
    window_buf246_buf246d_o->release(*window_buf246_buf246d_o, LOCK_23_1_4_0, LOCK_23_1_5_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_23_0_bounds > 0)
      --proc_23_0_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}