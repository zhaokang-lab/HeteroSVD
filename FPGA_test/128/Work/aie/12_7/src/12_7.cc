// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /home/luanxinya/SVD/FPGA_test/128/./Work/aie/12_7/src/12_7.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_13_7_0_5600 48
#define LOCK_13_7_1_0 49
#define LOCK_13_7_2_6144 50
#define LOCK_13_7_3_0 51
#define LOCK_12_6_0_7648 0
#define LOCK_12_6_1_0 1
#define LOCK_12_6_2_0 2
#define LOCK_12_6_3_0 3

// Declare shared memory buffers
v4float buf113dr[33];
v4float buf113r[33];
v4float buf125dr[33];
v4float buf125r[33];
v4float buf129[33];
v4float buf129d[33];
v4float buf141[33];
v4float buf141d[33];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<129u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf113r_buf113dr_i[1] = {{(float*)buf113r, 129, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<129u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf125r_buf125dr_i[1] = {{(float*)buf125r, 129, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<129u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf129_buf129d_o[1] = {{(float*)buf129, 129, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<129u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf141_buf141d_o[1] = {{(float*)buf141, 129, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_12_7_bounds = sync_buffer[1];

  while (proc_12_7_bounds)
  {

    // Kernel call : i58:orthogonalize<128>
    window_buf113r_buf113dr_i->setData(*window_buf113r_buf113dr_i, (float*)buf113r, (float*)buf113dr, 1-index, 0);
    window_buf113r_buf113dr_i->acquire(*window_buf113r_buf113dr_i, LOCK_13_7_0_5600, LOCK_13_7_1_0, 1-index);
    window_buf125r_buf125dr_i->setData(*window_buf125r_buf125dr_i, (float*)buf125r, (float*)buf125dr, 1-index, 0);
    window_buf125r_buf125dr_i->acquire(*window_buf125r_buf125dr_i, LOCK_13_7_2_6144, LOCK_13_7_3_0, 1-index);
    window_buf129_buf129d_o->setData(*window_buf129_buf129d_o, (float*)buf129, (float*)buf129d, 1-index, 0);
    window_buf129_buf129d_o->acquire(*window_buf129_buf129d_o, LOCK_12_6_0_7648, LOCK_12_6_1_0, 1-index);
    window_buf141_buf141d_o->setData(*window_buf141_buf141d_o, (float*)buf141, (float*)buf141d, 1-index, 0);
    window_buf141_buf141d_o->acquire(*window_buf141_buf141d_o, LOCK_12_6_2_0, LOCK_12_6_3_0, 1-index);
    orthogonalize<128>(window_buf113r_buf113dr_i[0],window_buf125r_buf125dr_i[0],window_buf129_buf129d_o[0],window_buf141_buf141d_o[0]);
    window_buf113r_buf113dr_i->release(*window_buf113r_buf113dr_i, LOCK_13_7_0_5600, LOCK_13_7_1_0, 1-index);
    window_buf125r_buf125dr_i->release(*window_buf125r_buf125dr_i, LOCK_13_7_2_6144, LOCK_13_7_3_0, 1-index);
    window_buf129_buf129d_o->release(*window_buf129_buf129d_o, LOCK_12_6_0_7648, LOCK_12_6_1_0, 1-index);
    window_buf141_buf141d_o->release(*window_buf141_buf141d_o, LOCK_12_6_2_0, LOCK_12_6_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_12_7_bounds > 0)
      --proc_12_7_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}