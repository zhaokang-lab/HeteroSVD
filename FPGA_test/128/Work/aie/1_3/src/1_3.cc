// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /home/luanxinya/SVD/FPGA_test/128/./Work/aie/1_3/src/1_3.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_1_3_0_0 16
#define LOCK_1_3_1_0 17
#define LOCK_2_3_2_0 50
#define LOCK_2_3_3_0 51
#define LOCK_1_4_0_7648 32
#define LOCK_1_4_1_0 33
#define LOCK_1_4_2_0 34
#define LOCK_1_4_3_0 35

// Declare shared memory buffers
v4float buf49[33];
v4float buf49d[33];
v4float buf53[33];
v4float buf53d[33];
v4float buf65[33];
v4float buf65d[33];
v4float buf69[33];
v4float buf69d[33];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<129u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf49_buf49d_i[1] = {{(float*)buf49, 129, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<129u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf53_buf53d_i[1] = {{(float*)buf53, 129, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<129u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf65_buf65d_o[1] = {{(float*)buf65, 129, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<129u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf69_buf69d_o[1] = {{(float*)buf69, 129, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_1_3_bounds = sync_buffer[1];

  while (proc_1_3_bounds)
  {

    // Kernel call : i24:orthogonalize<128>
    window_buf49_buf49d_i->setData(*window_buf49_buf49d_i, (float*)buf49, (float*)buf49d, 1-index, 0);
    window_buf49_buf49d_i->acquire(*window_buf49_buf49d_i, LOCK_1_3_0_0, LOCK_1_3_1_0, 1-index);
    window_buf53_buf53d_i->setData(*window_buf53_buf53d_i, (float*)buf53, (float*)buf53d, 1-index, 0);
    window_buf53_buf53d_i->acquire(*window_buf53_buf53d_i, LOCK_2_3_2_0, LOCK_2_3_3_0, 1-index);
    window_buf65_buf65d_o->setData(*window_buf65_buf65d_o, (float*)buf65, (float*)buf65d, 1-index, 0);
    window_buf65_buf65d_o->acquire(*window_buf65_buf65d_o, LOCK_1_4_0_7648, LOCK_1_4_1_0, 1-index);
    window_buf69_buf69d_o->setData(*window_buf69_buf69d_o, (float*)buf69, (float*)buf69d, 1-index, 0);
    window_buf69_buf69d_o->acquire(*window_buf69_buf69d_o, LOCK_1_4_2_0, LOCK_1_4_3_0, 1-index);
    orthogonalize<128>(window_buf49_buf49d_i[0],window_buf53_buf53d_i[0],window_buf65_buf65d_o[0],window_buf69_buf69d_o[0]);
    window_buf49_buf49d_i->release(*window_buf49_buf49d_i, LOCK_1_3_0_0, LOCK_1_3_1_0, 1-index);
    window_buf53_buf53d_i->release(*window_buf53_buf53d_i, LOCK_2_3_2_0, LOCK_2_3_3_0, 1-index);
    window_buf65_buf65d_o->release(*window_buf65_buf65d_o, LOCK_1_4_0_7648, LOCK_1_4_1_0, 1-index);
    window_buf69_buf69d_o->release(*window_buf69_buf69d_o, LOCK_1_4_2_0, LOCK_1_4_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_1_3_bounds > 0)
      --proc_1_3_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}