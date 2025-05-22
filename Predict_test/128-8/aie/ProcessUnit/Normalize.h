#include "adf.h"

template<int ROW>
void normalize(adf::input_buffer<float, adf::extents<1+ROW>>& __restrict in, 
                adf::output_buffer<float, adf::extents<1+ROW>>& __restrict out);