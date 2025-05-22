#include "adf.h"

template<int ROW>
void orthogonalize(adf::input_buffer<float, adf::extents<1+ROW>>& in0, 
                   adf::input_buffer<float, adf::extents<1+ROW>>& in1, 
                   adf::output_buffer<float, adf::extents<1+ROW>>& out0, 
                   adf::output_buffer<float, adf::extents<1+ROW>>& out1);
