// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /home/luanxinya/SVD/FPGA_test/128/./Work/aie/22_0/src/22_0.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_21_0_2_0 18
#define LOCK_21_0_3_0 19
#define LOCK_22_0_0_0 48
#define LOCK_22_0_1_0 49
#define LOCK_22_1_0_7104 32
#define LOCK_22_1_1_1088 33
#define LOCK_22_1_2_0 34
#define LOCK_22_1_3_0 35

// Declare shared memory buffers
v4float buf231dr[33];
v4float buf231r[33];
v4float buf232dr[33];
v4float buf232r[33];
v4float buf247[33];
v4float buf247d[33];
v4float buf248[33];
v4float buf248d[33];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<129u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf231r_buf231dr_i[1] = {{(float*)buf231r, 129, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<129u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf232r_buf232dr_i[1] = {{(float*)buf232r, 129, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<129u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf247_buf247d_o[1] = {{(float*)buf247, 129, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<129u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf248_buf248d_o[1] = {{(float*)buf248, 129, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_22_0_bounds = sync_buffer[1];

  while (proc_22_0_bounds)
  {

    // Kernel call : i115:orthogonalize<128>
    window_buf231r_buf231dr_i->setData(*window_buf231r_buf231dr_i, (float*)buf231r, (float*)buf231dr, 1-index, 0);
    window_buf231r_buf231dr_i->acquire(*window_buf231r_buf231dr_i, LOCK_21_0_2_0, LOCK_21_0_3_0, 1-index);
    window_buf232r_buf232dr_i->setData(*window_buf232r_buf232dr_i, (float*)buf232r, (float*)buf232dr, 1-index, 0);
    window_buf232r_buf232dr_i->acquire(*window_buf232r_buf232dr_i, LOCK_22_0_0_0, LOCK_22_0_1_0, 1-index);
    window_buf247_buf247d_o->setData(*window_buf247_buf247d_o, (float*)buf247, (float*)buf247d, 1-index, 0);
    window_buf247_buf247d_o->acquire(*window_buf247_buf247d_o, LOCK_22_1_0_7104, LOCK_22_1_1_1088, 1-index);
    window_buf248_buf248d_o->setData(*window_buf248_buf248d_o, (float*)buf248, (float*)buf248d, 1-index, 0);
    window_buf248_buf248d_o->acquire(*window_buf248_buf248d_o, LOCK_22_1_2_0, LOCK_22_1_3_0, 1-index);
    orthogonalize<128>(window_buf231r_buf231dr_i[0],window_buf232r_buf232dr_i[0],window_buf247_buf247d_o[0],window_buf248_buf248d_o[0]);
    window_buf231r_buf231dr_i->release(*window_buf231r_buf231dr_i, LOCK_21_0_2_0, LOCK_21_0_3_0, 1-index);
    window_buf232r_buf232dr_i->release(*window_buf232r_buf232dr_i, LOCK_22_0_0_0, LOCK_22_0_1_0, 1-index);
    window_buf247_buf247d_o->release(*window_buf247_buf247d_o, LOCK_22_1_0_7104, LOCK_22_1_1_1088, 1-index);
    window_buf248_buf248d_o->release(*window_buf248_buf248d_o, LOCK_22_1_2_0, LOCK_22_1_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_22_0_bounds > 0)
      --proc_22_0_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}