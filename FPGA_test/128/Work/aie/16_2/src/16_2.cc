// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /home/luanxinya/SVD/FPGA_test/128/./Work/aie/16_2/src/16_2.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_15_2_2_0 18
#define LOCK_15_2_3_0 19
#define LOCK_16_2_0_0 48
#define LOCK_16_2_1_0 49
#define LOCK_16_1_0_0 0
#define LOCK_16_1_1_0 1
#define LOCK_16_1_2_0 2
#define LOCK_16_1_3_0 3

// Declare shared memory buffers
v4float buf192[33];
v4float buf192d[33];
v4float buf196[33];
v4float buf196d[33];
v4float buf208[33];
v4float buf208d[33];
v4float buf212[33];
v4float buf212d[33];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<129u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf192_buf192d_i[1] = {{(float*)buf192, 129, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<129u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf196_buf196d_i[1] = {{(float*)buf196, 129, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<129u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf208_buf208d_o[1] = {{(float*)buf208, 129, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<129u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf212_buf212d_o[1] = {{(float*)buf212, 129, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_16_2_bounds = sync_buffer[1];

  while (proc_16_2_bounds)
  {

    // Kernel call : i102:orthogonalize<128>
    window_buf192_buf192d_i->setData(*window_buf192_buf192d_i, (float*)buf192, (float*)buf192d, 1-index, 0);
    window_buf192_buf192d_i->acquire(*window_buf192_buf192d_i, LOCK_15_2_2_0, LOCK_15_2_3_0, 1-index);
    window_buf196_buf196d_i->setData(*window_buf196_buf196d_i, (float*)buf196, (float*)buf196d, 1-index, 0);
    window_buf196_buf196d_i->acquire(*window_buf196_buf196d_i, LOCK_16_2_0_0, LOCK_16_2_1_0, 1-index);
    window_buf208_buf208d_o->setData(*window_buf208_buf208d_o, (float*)buf208, (float*)buf208d, 1-index, 0);
    window_buf208_buf208d_o->acquire(*window_buf208_buf208d_o, LOCK_16_1_0_0, LOCK_16_1_1_0, 1-index);
    window_buf212_buf212d_o->setData(*window_buf212_buf212d_o, (float*)buf212, (float*)buf212d, 1-index, 0);
    window_buf212_buf212d_o->acquire(*window_buf212_buf212d_o, LOCK_16_1_2_0, LOCK_16_1_3_0, 1-index);
    orthogonalize<128>(window_buf192_buf192d_i[0],window_buf196_buf196d_i[0],window_buf208_buf208d_o[0],window_buf212_buf212d_o[0]);
    window_buf192_buf192d_i->release(*window_buf192_buf192d_i, LOCK_15_2_2_0, LOCK_15_2_3_0, 1-index);
    window_buf196_buf196d_i->release(*window_buf196_buf196d_i, LOCK_16_2_0_0, LOCK_16_2_1_0, 1-index);
    window_buf208_buf208d_o->release(*window_buf208_buf208d_o, LOCK_16_1_0_0, LOCK_16_1_1_0, 1-index);
    window_buf212_buf212d_o->release(*window_buf212_buf212d_o, LOCK_16_1_2_0, LOCK_16_1_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_16_2_bounds > 0)
      --proc_16_2_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}