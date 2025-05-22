#pragma once

#include "Orthogonalize.h"
#include "aie/Config.h"
#include "adf.h"
#include "aie_api/aie.hpp"
#include <aie_api/aie_adf.hpp>
#include "aie_api/utils.hpp"
#include "aie_api/adf/stream.hpp"
#include <vector>
#include <cstdio>

// to mpdify
inline float sign(float x) {
    if(x > 0) return 1;
    else if(x == 0) return 0;
    else return -1;
}

template<int ROW>
void orthogonalize(adf::input_buffer<float, adf::extents<1+ROW>>& __restrict in0, 
                   adf::input_buffer<float, adf::extents<1+ROW>>& __restrict in1, 
                   adf::output_buffer<float, adf::extents<1+ROW>>& __restrict out0, 
                   adf::output_buffer<float, adf::extents<1+ROW>>& __restrict out1) {
    auto ApIter = aie::begin_vector<w>(in0);
    auto AqIter = aie::begin_vector<w>(in1);
    auto BpIter = aie::begin_vector<w>(out0);
    auto BqIter = aie::begin_vector<w>(out1);
    aie::accum<accfloat, w> acc_i = aie::zeros<accfloat, w>();
    aie::accum<accfloat, w> acc_j = aie::zeros<accfloat, w>();
    aie::accum<accfloat, w> acc_ij = aie::zeros<accfloat, w>();

    auto vec1 = *ApIter ++;
    auto vec2 = *AqIter ++;
    
    for(int i = 0;i < ROW/w;i ++) 
    chess_prepare_for_pipelining
    chess_loop_range(ROW/w,)
    {
        
        acc_i = aie::mac(acc_i, vec1, vec1);
        acc_ij = aie::mac(acc_ij, vec1, vec2);
        acc_j = aie::mac(acc_j, vec2, vec2);
            
        vec1 = *ApIter ++;
        vec2 = *AqIter ++;     
    }
    

    float A_ii = reduce_add(acc_i.to_vector<float>());
    float A_jj = reduce_add(acc_j.to_vector<float>());
    float A_ij = reduce_add(acc_ij.to_vector<float>());
    float conv;
    if(A_ii*A_jj == 0) conv = 0;
    else {
        conv = aie::div(aie::abs(A_ij), aie::sqrt(A_ii*A_jj));
    }
    

    ApIter = aie::begin_vector<w>(in0);
    AqIter = aie::begin_vector<w>(in1);

     if(abs(conv) <= 1e-7) {
        for (int i = 0; i < ROW/w; i++) 
        chess_prepare_for_pipelining
        chess_loop_range(ROW/w,ROW/w)
        {

                *BpIter ++ = *ApIter ++;
                *BqIter ++ = *AqIter ++;

        }
    }
    else { 

        float tau = aie::div(A_ii-A_jj, aie::mul((float)2.0, A_ij));
        float t = aie::div(sign(tau), aie::add(aie::abs(tau), aie::sqrt(aie::mul(tau, tau) + 1)));
        float c= aie::div(1, aie::sqrt(t * t + 1));
        float s = aie::mul(t, c);

        aie::vector<float, w> chess_storage(WR) vec_s = aie::broadcast<float, w>(s);
        aie::vector<float, w> chess_storage(WR) vec_c = aie::broadcast<float, w>(c);
        
        aie::accum<accfloat, w> acc0_0 = aie::zeros<accfloat, w>();
        aie::accum<accfloat, w> acc0_1 = aie::zeros<accfloat, w>();

        vec1 = *ApIter ++;

        for (int i = 0; i < ROW/w; i++) 
        chess_prepare_for_pipelining
        chess_loop_range(ROW/w,ROW/w)
        {
            auto acc_p = aie::mac(acc0_0, vec1, vec_c);
            auto acc_q = aie::msc(acc0_1, vec1, vec_s);
            vec2 = *AqIter ++;
            acc_p = aie::mac(acc_p, vec2, vec_s);
            auto out_p = acc_p.to_vector();
            *BpIter ++ = out_p;

            acc_q = aie::mac(acc_q, vec2, vec_c);
            auto out_q = acc_q.to_vector();
            *BqIter ++ = out_q;
            
            vec1 = *ApIter ++;
        }
        
    }    

    float* lastIter0 = out0.data();
    float* lastIter1 = out1.data();
    //printf("%f %f %f\n", in0.data()[ROW], in1.data()[ROW], conv);
    lastIter0[ROW] = aie::max(in0.data()[ROW], conv);
    lastIter1[ROW] = aie::max(in1.data()[ROW], conv);
    
}