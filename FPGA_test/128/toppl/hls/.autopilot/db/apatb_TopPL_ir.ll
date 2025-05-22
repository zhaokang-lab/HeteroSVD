; ModuleID = '/home/luanxinya/SVD/FPGA_test/128/toppl/hls/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

%"struct.ap_uint<128>" = type { %"struct.ap_int_base<128, false>" }
%"struct.ap_int_base<128, false>" = type { %"struct.ssdm_int<128, false>" }
%"struct.ssdm_int<128, false>" = type { i128 }
%"struct.ap_uint<32>" = type { %"struct.ap_int_base<32, false>" }
%"struct.ap_int_base<32, false>" = type { %"struct.ssdm_int<32, false>" }
%"struct.ssdm_int<32, false>" = type { i32 }
%"class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0, '8', false>, 0>" = type { %"struct.hls::axis<ap_uint<128>, 0, 0, 0, '8', false>" }
%"struct.hls::axis<ap_uint<128>, 0, 0, 0, '8', false>" = type { %"struct.ap_uint<128>", %"struct.ap_uint<16>", %"struct.ap_uint<16>", %"struct.hls::axis_disabled_signal", %"struct.ap_uint<1>", %"struct.hls::axis_disabled_signal", %"struct.hls::axis_disabled_signal" }
%"struct.ap_uint<16>" = type { %"struct.ap_int_base<16, false>" }
%"struct.ap_int_base<16, false>" = type { %"struct.ssdm_int<16, false>" }
%"struct.ssdm_int<16, false>" = type { i16 }
%"struct.ap_uint<1>" = type { %"struct.ap_int_base<1, false>" }
%"struct.ap_int_base<1, false>" = type { %"struct.ssdm_int<1, false>" }
%"struct.ssdm_int<1, false>" = type { i1 }
%"struct.hls::axis_disabled_signal" = type { i8 }

; Function Attrs: noinline
define void @apatb_TopPL_ir(%"struct.ap_uint<128>"* noalias nocapture nonnull readonly "maxi" %dataIn, %"struct.ap_uint<128>"* noalias nocapture nonnull "maxi" %U, %"struct.ap_uint<32>"* noalias nocapture nonnull "maxi" %S, %"struct.ap_uint<32>"* noalias nocapture nonnull "maxi" %ConvArray, i32 %ITER, %"class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0, '8', false>, 0>"* noalias nonnull dereferenceable(32) %sweep_tx0_0, %"class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0, '8', false>, 0>"* noalias nonnull dereferenceable(32) %sweep_rx0_0, %"class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0, '8', false>, 0>"* noalias nonnull dereferenceable(32) %sweep_tx0_1, %"class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0, '8', false>, 0>"* noalias nonnull dereferenceable(32) %sweep_rx0_1, %"class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0, '8', false>, 0>"* noalias nonnull dereferenceable(32) %norm_tx0, %"class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0, '8', false>, 0>"* noalias nonnull dereferenceable(32) %norm_rx0) local_unnamed_addr #0 {
entry:
  %malloccall = call i8* @malloc(i64 131072)
  %dataIn_copy = bitcast i8* %malloccall to [8192 x i128]*
  %malloccall1 = call i8* @malloc(i64 131072)
  %U_copy = bitcast i8* %malloccall1 to [8192 x i128]*
  %malloccall2 = call i8* @malloc(i64 32768)
  %S_copy = bitcast i8* %malloccall2 to [8192 x i32]*
  %malloccall3 = call i8* @malloc(i64 32768)
  %ConvArray_copy = bitcast i8* %malloccall3 to [8192 x i32]*
  %sweep_tx0_0_copy.data = alloca i128, align 512
  %sweep_tx0_0_copy.keep = alloca i16, align 512
  %sweep_tx0_0_copy.strb = alloca i16, align 512
  %sweep_tx0_0_copy.last = alloca i1, align 512
  %sweep_rx0_0_copy.data = alloca i128, align 512
  %sweep_rx0_0_copy.keep = alloca i16, align 512
  %sweep_rx0_0_copy.strb = alloca i16, align 512
  %sweep_rx0_0_copy.last = alloca i1, align 512
  %sweep_tx0_1_copy.data = alloca i128, align 512
  %sweep_tx0_1_copy.keep = alloca i16, align 512
  %sweep_tx0_1_copy.strb = alloca i16, align 512
  %sweep_tx0_1_copy.last = alloca i1, align 512
  %sweep_rx0_1_copy.data = alloca i128, align 512
  %sweep_rx0_1_copy.keep = alloca i16, align 512
  %sweep_rx0_1_copy.strb = alloca i16, align 512
  %sweep_rx0_1_copy.last = alloca i1, align 512
  %norm_tx0_copy.data = alloca i128, align 512
  %norm_tx0_copy.keep = alloca i16, align 512
  %norm_tx0_copy.strb = alloca i16, align 512
  %norm_tx0_copy.last = alloca i1, align 512
  %norm_rx0_copy.data = alloca i128, align 512
  %norm_rx0_copy.keep = alloca i16, align 512
  %norm_rx0_copy.strb = alloca i16, align 512
  %norm_rx0_copy.last = alloca i1, align 512
  %0 = bitcast %"struct.ap_uint<128>"* %dataIn to [8192 x %"struct.ap_uint<128>"]*
  %1 = bitcast %"struct.ap_uint<128>"* %U to [8192 x %"struct.ap_uint<128>"]*
  %2 = bitcast %"struct.ap_uint<32>"* %S to [8192 x %"struct.ap_uint<32>"]*
  %3 = bitcast %"struct.ap_uint<32>"* %ConvArray to [8192 x %"struct.ap_uint<32>"]*
  call fastcc void @copy_in([8192 x %"struct.ap_uint<128>"]* nonnull %0, [8192 x i128]* %dataIn_copy, [8192 x %"struct.ap_uint<128>"]* nonnull %1, [8192 x i128]* %U_copy, [8192 x %"struct.ap_uint<32>"]* nonnull %2, [8192 x i32]* %S_copy, [8192 x %"struct.ap_uint<32>"]* nonnull %3, [8192 x i32]* %ConvArray_copy, %"class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0, '8', false>, 0>"* nonnull %sweep_tx0_0, i128* nonnull align 512 %sweep_tx0_0_copy.data, i16* nonnull align 512 %sweep_tx0_0_copy.keep, i16* nonnull align 512 %sweep_tx0_0_copy.strb, i1* nonnull align 512 %sweep_tx0_0_copy.last, %"class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0, '8', false>, 0>"* nonnull %sweep_rx0_0, i128* nonnull align 512 %sweep_rx0_0_copy.data, i16* nonnull align 512 %sweep_rx0_0_copy.keep, i16* nonnull align 512 %sweep_rx0_0_copy.strb, i1* nonnull align 512 %sweep_rx0_0_copy.last, %"class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0, '8', false>, 0>"* nonnull %sweep_tx0_1, i128* nonnull align 512 %sweep_tx0_1_copy.data, i16* nonnull align 512 %sweep_tx0_1_copy.keep, i16* nonnull align 512 %sweep_tx0_1_copy.strb, i1* nonnull align 512 %sweep_tx0_1_copy.last, %"class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0, '8', false>, 0>"* nonnull %sweep_rx0_1, i128* nonnull align 512 %sweep_rx0_1_copy.data, i16* nonnull align 512 %sweep_rx0_1_copy.keep, i16* nonnull align 512 %sweep_rx0_1_copy.strb, i1* nonnull align 512 %sweep_rx0_1_copy.last, %"class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0, '8', false>, 0>"* nonnull %norm_tx0, i128* nonnull align 512 %norm_tx0_copy.data, i16* nonnull align 512 %norm_tx0_copy.keep, i16* nonnull align 512 %norm_tx0_copy.strb, i1* nonnull align 512 %norm_tx0_copy.last, %"class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0, '8', false>, 0>"* nonnull %norm_rx0, i128* nonnull align 512 %norm_rx0_copy.data, i16* nonnull align 512 %norm_rx0_copy.keep, i16* nonnull align 512 %norm_rx0_copy.strb, i1* nonnull align 512 %norm_rx0_copy.last)
  call void @apatb_TopPL_hw([8192 x i128]* %dataIn_copy, [8192 x i128]* %U_copy, [8192 x i32]* %S_copy, [8192 x i32]* %ConvArray_copy, i32 %ITER, i128* %sweep_tx0_0_copy.data, i16* %sweep_tx0_0_copy.keep, i16* %sweep_tx0_0_copy.strb, i1* %sweep_tx0_0_copy.last, i128* %sweep_rx0_0_copy.data, i16* %sweep_rx0_0_copy.keep, i16* %sweep_rx0_0_copy.strb, i1* %sweep_rx0_0_copy.last, i128* %sweep_tx0_1_copy.data, i16* %sweep_tx0_1_copy.keep, i16* %sweep_tx0_1_copy.strb, i1* %sweep_tx0_1_copy.last, i128* %sweep_rx0_1_copy.data, i16* %sweep_rx0_1_copy.keep, i16* %sweep_rx0_1_copy.strb, i1* %sweep_rx0_1_copy.last, i128* %norm_tx0_copy.data, i16* %norm_tx0_copy.keep, i16* %norm_tx0_copy.strb, i1* %norm_tx0_copy.last, i128* %norm_rx0_copy.data, i16* %norm_rx0_copy.keep, i16* %norm_rx0_copy.strb, i1* %norm_rx0_copy.last)
  call void @copy_back([8192 x %"struct.ap_uint<128>"]* %0, [8192 x i128]* %dataIn_copy, [8192 x %"struct.ap_uint<128>"]* %1, [8192 x i128]* %U_copy, [8192 x %"struct.ap_uint<32>"]* %2, [8192 x i32]* %S_copy, [8192 x %"struct.ap_uint<32>"]* %3, [8192 x i32]* %ConvArray_copy, %"class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0, '8', false>, 0>"* %sweep_tx0_0, i128* %sweep_tx0_0_copy.data, i16* %sweep_tx0_0_copy.keep, i16* %sweep_tx0_0_copy.strb, i1* %sweep_tx0_0_copy.last, %"class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0, '8', false>, 0>"* %sweep_rx0_0, i128* %sweep_rx0_0_copy.data, i16* %sweep_rx0_0_copy.keep, i16* %sweep_rx0_0_copy.strb, i1* %sweep_rx0_0_copy.last, %"class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0, '8', false>, 0>"* %sweep_tx0_1, i128* %sweep_tx0_1_copy.data, i16* %sweep_tx0_1_copy.keep, i16* %sweep_tx0_1_copy.strb, i1* %sweep_tx0_1_copy.last, %"class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0, '8', false>, 0>"* %sweep_rx0_1, i128* %sweep_rx0_1_copy.data, i16* %sweep_rx0_1_copy.keep, i16* %sweep_rx0_1_copy.strb, i1* %sweep_rx0_1_copy.last, %"class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0, '8', false>, 0>"* %norm_tx0, i128* %norm_tx0_copy.data, i16* %norm_tx0_copy.keep, i16* %norm_tx0_copy.strb, i1* %norm_tx0_copy.last, %"class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0, '8', false>, 0>"* %norm_rx0, i128* %norm_rx0_copy.data, i16* %norm_rx0_copy.keep, i16* %norm_rx0_copy.strb, i1* %norm_rx0_copy.last)
  call void @free(i8* %malloccall)
  call void @free(i8* %malloccall1)
  call void @free(i8* %malloccall2)
  call void @free(i8* %malloccall3)
  ret void
}

declare noalias i8* @malloc(i64) local_unnamed_addr

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @copy_in([8192 x %"struct.ap_uint<128>"]* noalias readonly "unpacked"="0", [8192 x i128]* noalias nocapture "unpacked"="1.0", [8192 x %"struct.ap_uint<128>"]* noalias readonly "unpacked"="2", [8192 x i128]* noalias nocapture "unpacked"="3.0", [8192 x %"struct.ap_uint<32>"]* noalias readonly "unpacked"="4", [8192 x i32]* noalias nocapture "unpacked"="5.0", [8192 x %"struct.ap_uint<32>"]* noalias readonly "unpacked"="6", [8192 x i32]* noalias nocapture "unpacked"="7.0", %"class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0, '8', false>, 0>"* noalias "unpacked"="8", i128* noalias align 512 "unpacked"="9.0" %_V_data_V, i16* noalias align 512 "unpacked"="9.1" %_V_keep_V, i16* noalias align 512 "unpacked"="9.2" %_V_strb_V, i1* noalias align 512 "unpacked"="9.3" %_V_last_V, %"class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0, '8', false>, 0>"* noalias "unpacked"="10", i128* noalias align 512 "unpacked"="11.0" %_V_data_V1, i16* noalias align 512 "unpacked"="11.1" %_V_keep_V2, i16* noalias align 512 "unpacked"="11.2" %_V_strb_V3, i1* noalias align 512 "unpacked"="11.3" %_V_last_V4, %"class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0, '8', false>, 0>"* noalias "unpacked"="12", i128* noalias align 512 "unpacked"="13.0" %_V_data_V15, i16* noalias align 512 "unpacked"="13.1" %_V_keep_V26, i16* noalias align 512 "unpacked"="13.2" %_V_strb_V37, i1* noalias align 512 "unpacked"="13.3" %_V_last_V48, %"class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0, '8', false>, 0>"* noalias "unpacked"="14", i128* noalias align 512 "unpacked"="15.0" %_V_data_V159, i16* noalias align 512 "unpacked"="15.1" %_V_keep_V2610, i16* noalias align 512 "unpacked"="15.2" %_V_strb_V3711, i1* noalias align 512 "unpacked"="15.3" %_V_last_V4812, %"class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0, '8', false>, 0>"* noalias "unpacked"="16", i128* noalias align 512 "unpacked"="17.0" %_V_data_V2, i16* noalias align 512 "unpacked"="17.1" %_V_keep_V3, i16* noalias align 512 "unpacked"="17.2" %_V_strb_V4, i1* noalias align 512 "unpacked"="17.3" %_V_last_V5, %"class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0, '8', false>, 0>"* noalias "unpacked"="18", i128* noalias align 512 "unpacked"="19.0" %_V_data_V26, i16* noalias align 512 "unpacked"="19.1" %_V_keep_V37, i16* noalias align 512 "unpacked"="19.2" %_V_strb_V48, i1* noalias align 512 "unpacked"="19.3" %_V_last_V59) unnamed_addr #1 {
entry:
  call fastcc void @"onebyonecpy_hls.p0a8192struct.ap_uint<128>.118"([8192 x i128]* %1, [8192 x %"struct.ap_uint<128>"]* %0)
  call fastcc void @"onebyonecpy_hls.p0a8192struct.ap_uint<128>.118"([8192 x i128]* %3, [8192 x %"struct.ap_uint<128>"]* %2)
  call fastcc void @"onebyonecpy_hls.p0a8192struct.ap_uint<32>.98"([8192 x i32]* %5, [8192 x %"struct.ap_uint<32>"]* %4)
  call fastcc void @"onebyonecpy_hls.p0a8192struct.ap_uint<32>.98"([8192 x i32]* %7, [8192 x %"struct.ap_uint<32>"]* %6)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0, '8', false>, 0>.160"(i128* align 512 %_V_data_V, i16* align 512 %_V_keep_V, i16* align 512 %_V_strb_V, i1* align 512 %_V_last_V, %"class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0, '8', false>, 0>"* %8)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0, '8', false>, 0>.160"(i128* align 512 %_V_data_V1, i16* align 512 %_V_keep_V2, i16* align 512 %_V_strb_V3, i1* align 512 %_V_last_V4, %"class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0, '8', false>, 0>"* %9)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0, '8', false>, 0>.160"(i128* align 512 %_V_data_V15, i16* align 512 %_V_keep_V26, i16* align 512 %_V_strb_V37, i1* align 512 %_V_last_V48, %"class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0, '8', false>, 0>"* %10)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0, '8', false>, 0>.160"(i128* align 512 %_V_data_V159, i16* align 512 %_V_keep_V2610, i16* align 512 %_V_strb_V3711, i1* align 512 %_V_last_V4812, %"class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0, '8', false>, 0>"* %11)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0, '8', false>, 0>.160"(i128* align 512 %_V_data_V2, i16* align 512 %_V_keep_V3, i16* align 512 %_V_strb_V4, i1* align 512 %_V_last_V5, %"class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0, '8', false>, 0>"* %12)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0, '8', false>, 0>.160"(i128* align 512 %_V_data_V26, i16* align 512 %_V_keep_V37, i16* align 512 %_V_strb_V48, i1* align 512 %_V_last_V59, %"class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0, '8', false>, 0>"* %13)
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @"arraycpy_hls.p0a8192struct.ap_uint<128>"([8192 x %"struct.ap_uint<128>"]* %dst, [8192 x %"struct.ap_uint<128>"]* readonly %src, i64 %num) local_unnamed_addr #2 {
entry:
  %0 = icmp eq [8192 x %"struct.ap_uint<128>"]* %src, null
  %1 = icmp eq [8192 x %"struct.ap_uint<128>"]* %dst, null
  %2 = or i1 %1, %0
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond7 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond7, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx8 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %src.addr.0.0.05 = getelementptr [8192 x %"struct.ap_uint<128>"], [8192 x %"struct.ap_uint<128>"]* %src, i64 0, i64 %for.loop.idx8, i32 0, i32 0, i32 0
  %dst.addr.0.0.06 = getelementptr [8192 x %"struct.ap_uint<128>"], [8192 x %"struct.ap_uint<128>"]* %dst, i64 0, i64 %for.loop.idx8, i32 0, i32 0, i32 0
  %3 = load i128, i128* %src.addr.0.0.05, align 16
  store i128 %3, i128* %dst.addr.0.0.06, align 16
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx8, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @"arraycpy_hls.p0a8192struct.ap_uint<32>"([8192 x %"struct.ap_uint<32>"]* %dst, [8192 x %"struct.ap_uint<32>"]* readonly %src, i64 %num) local_unnamed_addr #2 {
entry:
  %0 = icmp eq [8192 x %"struct.ap_uint<32>"]* %src, null
  %1 = icmp eq [8192 x %"struct.ap_uint<32>"]* %dst, null
  %2 = or i1 %1, %0
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond7 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond7, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx8 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %src.addr.0.0.05 = getelementptr [8192 x %"struct.ap_uint<32>"], [8192 x %"struct.ap_uint<32>"]* %src, i64 0, i64 %for.loop.idx8, i32 0, i32 0, i32 0
  %dst.addr.0.0.06 = getelementptr [8192 x %"struct.ap_uint<32>"], [8192 x %"struct.ap_uint<32>"]* %dst, i64 0, i64 %for.loop.idx8, i32 0, i32 0, i32 0
  %3 = load i32, i32* %src.addr.0.0.05, align 4
  store i32 %3, i32* %dst.addr.0.0.06, align 4
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx8, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @copy_out([8192 x %"struct.ap_uint<128>"]* noalias "unpacked"="0", [8192 x i128]* noalias nocapture readonly "unpacked"="1.0", [8192 x %"struct.ap_uint<128>"]* noalias "unpacked"="2", [8192 x i128]* noalias nocapture readonly "unpacked"="3.0", [8192 x %"struct.ap_uint<32>"]* noalias "unpacked"="4", [8192 x i32]* noalias nocapture readonly "unpacked"="5.0", [8192 x %"struct.ap_uint<32>"]* noalias "unpacked"="6", [8192 x i32]* noalias nocapture readonly "unpacked"="7.0", %"class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0, '8', false>, 0>"* noalias "unpacked"="8", i128* noalias align 512 "unpacked"="9.0" %_V_data_V, i16* noalias align 512 "unpacked"="9.1" %_V_keep_V, i16* noalias align 512 "unpacked"="9.2" %_V_strb_V, i1* noalias align 512 "unpacked"="9.3" %_V_last_V, %"class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0, '8', false>, 0>"* noalias "unpacked"="10", i128* noalias align 512 "unpacked"="11.0" %_V_data_V1, i16* noalias align 512 "unpacked"="11.1" %_V_keep_V2, i16* noalias align 512 "unpacked"="11.2" %_V_strb_V3, i1* noalias align 512 "unpacked"="11.3" %_V_last_V4, %"class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0, '8', false>, 0>"* noalias "unpacked"="12", i128* noalias align 512 "unpacked"="13.0" %_V_data_V15, i16* noalias align 512 "unpacked"="13.1" %_V_keep_V26, i16* noalias align 512 "unpacked"="13.2" %_V_strb_V37, i1* noalias align 512 "unpacked"="13.3" %_V_last_V48, %"class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0, '8', false>, 0>"* noalias "unpacked"="14", i128* noalias align 512 "unpacked"="15.0" %_V_data_V159, i16* noalias align 512 "unpacked"="15.1" %_V_keep_V2610, i16* noalias align 512 "unpacked"="15.2" %_V_strb_V3711, i1* noalias align 512 "unpacked"="15.3" %_V_last_V4812, %"class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0, '8', false>, 0>"* noalias "unpacked"="16", i128* noalias align 512 "unpacked"="17.0" %_V_data_V2, i16* noalias align 512 "unpacked"="17.1" %_V_keep_V3, i16* noalias align 512 "unpacked"="17.2" %_V_strb_V4, i1* noalias align 512 "unpacked"="17.3" %_V_last_V5, %"class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0, '8', false>, 0>"* noalias "unpacked"="18", i128* noalias align 512 "unpacked"="19.0" %_V_data_V26, i16* noalias align 512 "unpacked"="19.1" %_V_keep_V37, i16* noalias align 512 "unpacked"="19.2" %_V_strb_V48, i1* noalias align 512 "unpacked"="19.3" %_V_last_V59) unnamed_addr #3 {
entry:
  call fastcc void @"onebyonecpy_hls.p0a8192struct.ap_uint<128>"([8192 x %"struct.ap_uint<128>"]* %0, [8192 x i128]* %1)
  call fastcc void @"onebyonecpy_hls.p0a8192struct.ap_uint<128>"([8192 x %"struct.ap_uint<128>"]* %2, [8192 x i128]* %3)
  call fastcc void @"onebyonecpy_hls.p0a8192struct.ap_uint<32>"([8192 x %"struct.ap_uint<32>"]* %4, [8192 x i32]* %5)
  call fastcc void @"onebyonecpy_hls.p0a8192struct.ap_uint<32>"([8192 x %"struct.ap_uint<32>"]* %6, [8192 x i32]* %7)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0, '8', false>, 0>"(%"class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0, '8', false>, 0>"* %8, i128* align 512 %_V_data_V, i16* align 512 %_V_keep_V, i16* align 512 %_V_strb_V, i1* align 512 %_V_last_V)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0, '8', false>, 0>"(%"class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0, '8', false>, 0>"* %9, i128* align 512 %_V_data_V1, i16* align 512 %_V_keep_V2, i16* align 512 %_V_strb_V3, i1* align 512 %_V_last_V4)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0, '8', false>, 0>"(%"class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0, '8', false>, 0>"* %10, i128* align 512 %_V_data_V15, i16* align 512 %_V_keep_V26, i16* align 512 %_V_strb_V37, i1* align 512 %_V_last_V48)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0, '8', false>, 0>"(%"class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0, '8', false>, 0>"* %11, i128* align 512 %_V_data_V159, i16* align 512 %_V_keep_V2610, i16* align 512 %_V_strb_V3711, i1* align 512 %_V_last_V4812)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0, '8', false>, 0>"(%"class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0, '8', false>, 0>"* %12, i128* align 512 %_V_data_V2, i16* align 512 %_V_keep_V3, i16* align 512 %_V_strb_V4, i1* align 512 %_V_last_V5)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0, '8', false>, 0>"(%"class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0, '8', false>, 0>"* %13, i128* align 512 %_V_data_V26, i16* align 512 %_V_keep_V37, i16* align 512 %_V_strb_V48, i1* align 512 %_V_last_V59)
  ret void
}

declare void @free(i8*) local_unnamed_addr

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @"onebyonecpy_hls.p0a8192struct.ap_uint<32>"([8192 x %"struct.ap_uint<32>"]* noalias "unpacked"="0" %dst, [8192 x i32]* noalias nocapture readonly "unpacked"="1.0" %src) unnamed_addr #4 {
entry:
  %0 = icmp eq [8192 x %"struct.ap_uint<32>"]* %dst, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @"arraycpy_hls.p0a8192struct.ap_uint<32>.94"([8192 x %"struct.ap_uint<32>"]* nonnull %dst, [8192 x i32]* %src, i64 8192)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @"arraycpy_hls.p0a8192struct.ap_uint<32>.94"([8192 x %"struct.ap_uint<32>"]* "unpacked"="0" %dst, [8192 x i32]* nocapture readonly "unpacked"="1.0" %src, i64 "unpacked"="2" %num) local_unnamed_addr #2 {
entry:
  %0 = icmp eq [8192 x %"struct.ap_uint<32>"]* %dst, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %src.addr.0.0.05 = getelementptr [8192 x i32], [8192 x i32]* %src, i64 0, i64 %for.loop.idx2
  %dst.addr.0.0.06 = getelementptr [8192 x %"struct.ap_uint<32>"], [8192 x %"struct.ap_uint<32>"]* %dst, i64 0, i64 %for.loop.idx2, i32 0, i32 0, i32 0
  %1 = load i32, i32* %src.addr.0.0.05, align 4
  store i32 %1, i32* %dst.addr.0.0.06, align 4
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @"onebyonecpy_hls.p0a8192struct.ap_uint<32>.98"([8192 x i32]* noalias nocapture "unpacked"="0.0" %dst, [8192 x %"struct.ap_uint<32>"]* noalias readonly "unpacked"="1" %src) unnamed_addr #4 {
entry:
  %0 = icmp eq [8192 x %"struct.ap_uint<32>"]* %src, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @"arraycpy_hls.p0a8192struct.ap_uint<32>.101"([8192 x i32]* %dst, [8192 x %"struct.ap_uint<32>"]* nonnull %src, i64 8192)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @"arraycpy_hls.p0a8192struct.ap_uint<32>.101"([8192 x i32]* nocapture "unpacked"="0.0" %dst, [8192 x %"struct.ap_uint<32>"]* readonly "unpacked"="1" %src, i64 "unpacked"="2" %num) local_unnamed_addr #2 {
entry:
  %0 = icmp eq [8192 x %"struct.ap_uint<32>"]* %src, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %src.addr.0.0.05 = getelementptr [8192 x %"struct.ap_uint<32>"], [8192 x %"struct.ap_uint<32>"]* %src, i64 0, i64 %for.loop.idx2, i32 0, i32 0, i32 0
  %dst.addr.0.0.06 = getelementptr [8192 x i32], [8192 x i32]* %dst, i64 0, i64 %for.loop.idx2
  %1 = load i32, i32* %src.addr.0.0.05, align 4
  store i32 %1, i32* %dst.addr.0.0.06, align 4
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @"onebyonecpy_hls.p0a8192struct.ap_uint<128>"([8192 x %"struct.ap_uint<128>"]* noalias "unpacked"="0" %dst, [8192 x i128]* noalias nocapture readonly "unpacked"="1.0" %src) unnamed_addr #4 {
entry:
  %0 = icmp eq [8192 x %"struct.ap_uint<128>"]* %dst, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @"arraycpy_hls.p0a8192struct.ap_uint<128>.114"([8192 x %"struct.ap_uint<128>"]* nonnull %dst, [8192 x i128]* %src, i64 8192)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @"arraycpy_hls.p0a8192struct.ap_uint<128>.114"([8192 x %"struct.ap_uint<128>"]* "unpacked"="0" %dst, [8192 x i128]* nocapture readonly "unpacked"="1.0" %src, i64 "unpacked"="2" %num) local_unnamed_addr #2 {
entry:
  %0 = icmp eq [8192 x %"struct.ap_uint<128>"]* %dst, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %src.addr.0.0.05 = getelementptr [8192 x i128], [8192 x i128]* %src, i64 0, i64 %for.loop.idx2
  %dst.addr.0.0.06 = getelementptr [8192 x %"struct.ap_uint<128>"], [8192 x %"struct.ap_uint<128>"]* %dst, i64 0, i64 %for.loop.idx2, i32 0, i32 0, i32 0
  %1 = load i128, i128* %src.addr.0.0.05, align 16
  store i128 %1, i128* %dst.addr.0.0.06, align 16
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @"onebyonecpy_hls.p0a8192struct.ap_uint<128>.118"([8192 x i128]* noalias nocapture "unpacked"="0.0" %dst, [8192 x %"struct.ap_uint<128>"]* noalias readonly "unpacked"="1" %src) unnamed_addr #4 {
entry:
  %0 = icmp eq [8192 x %"struct.ap_uint<128>"]* %src, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @"arraycpy_hls.p0a8192struct.ap_uint<128>.121"([8192 x i128]* %dst, [8192 x %"struct.ap_uint<128>"]* nonnull %src, i64 8192)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @"arraycpy_hls.p0a8192struct.ap_uint<128>.121"([8192 x i128]* nocapture "unpacked"="0.0" %dst, [8192 x %"struct.ap_uint<128>"]* readonly "unpacked"="1" %src, i64 "unpacked"="2" %num) local_unnamed_addr #2 {
entry:
  %0 = icmp eq [8192 x %"struct.ap_uint<128>"]* %src, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %src.addr.0.0.05 = getelementptr [8192 x %"struct.ap_uint<128>"], [8192 x %"struct.ap_uint<128>"]* %src, i64 0, i64 %for.loop.idx2, i32 0, i32 0, i32 0
  %dst.addr.0.0.06 = getelementptr [8192 x i128], [8192 x i128]* %dst, i64 0, i64 %for.loop.idx2
  %1 = load i128, i128* %src.addr.0.0.05, align 16
  store i128 %1, i128* %dst.addr.0.0.06, align 16
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0, '8', false>, 0>"(%"class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0, '8', false>, 0>"* noalias %dst, i128* noalias align 512 "unpacked"="1.0" %src_V_data_V, i16* noalias align 512 "unpacked"="1.1" %src_V_keep_V, i16* noalias align 512 "unpacked"="1.2" %src_V_strb_V, i1* noalias align 512 "unpacked"="1.3" %src_V_last_V) unnamed_addr #5 {
entry:
  %0 = icmp eq %"class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0, '8', false>, 0>"* %dst, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  call fastcc void @"streamcpy_hls.p0class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0, '8', false>, 0>.156"(%"class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0, '8', false>, 0>"* nonnull %dst, i128* align 512 %src_V_data_V, i16* align 512 %src_V_keep_V, i16* align 512 %src_V_strb_V, i1* align 512 %src_V_last_V)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @"streamcpy_hls.p0class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0, '8', false>, 0>.156"(%"class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0, '8', false>, 0>"* noalias nocapture, i128* noalias nocapture align 512 "unpacked"="1.0" %_V_data_V, i16* noalias nocapture align 512 "unpacked"="1.1" %_V_keep_V, i16* noalias nocapture align 512 "unpacked"="1.2" %_V_strb_V, i1* noalias nocapture align 512 "unpacked"="1.3" %_V_last_V) unnamed_addr #6 {
entry:
  %1 = alloca i128
  %2 = alloca i1
  %3 = alloca i16
  %4 = alloca i16
  %5 = alloca %"class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0, '8', false>, 0>"
  br label %empty

empty:                                            ; preds = %push, %entry
  %6 = bitcast i128* %_V_data_V to i8*
  %7 = call i1 @fpga_fifo_not_empty_16(i8* %6)
  br i1 %7, label %push, label %ret

push:                                             ; preds = %empty
  %8 = bitcast i128* %1 to i8*
  %9 = bitcast i128* %_V_data_V to i8*
  call void @fpga_fifo_pop_16(i8* %8, i8* %9)
  %10 = load volatile i128, i128* %1
  %11 = bitcast i16* %4 to i8*
  %12 = bitcast i16* %_V_keep_V to i8*
  call void @fpga_fifo_pop_2(i8* %11, i8* %12)
  %13 = load volatile i16, i16* %4
  %14 = bitcast i16* %3 to i8*
  %15 = bitcast i16* %_V_strb_V to i8*
  call void @fpga_fifo_pop_2(i8* %14, i8* %15)
  %16 = load volatile i16, i16* %3
  %17 = bitcast i1* %2 to i8*
  %18 = bitcast i1* %_V_last_V to i8*
  call void @fpga_fifo_pop_1(i8* %17, i8* %18)
  %19 = bitcast i1* %2 to i8*
  %20 = load i8, i8* %19
  %21 = trunc i8 %20 to i1
  %.fca.0.0.0.0.0.insert = insertvalue %"class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0, '8', false>, 0>" undef, i128 %10, 0, 0, 0, 0, 0
  %.fca.0.1.0.0.0.insert = insertvalue %"class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0, '8', false>, 0>" %.fca.0.0.0.0.0.insert, i16 %13, 0, 1, 0, 0, 0
  %.fca.0.2.0.0.0.insert = insertvalue %"class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0, '8', false>, 0>" %.fca.0.1.0.0.0.insert, i16 %16, 0, 2, 0, 0, 0
  %.fca.0.4.0.0.0.insert = insertvalue %"class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0, '8', false>, 0>" %.fca.0.2.0.0.0.insert, i1 %21, 0, 4, 0, 0, 0
  store %"class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0, '8', false>, 0>" %.fca.0.4.0.0.0.insert, %"class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0, '8', false>, 0>"* %5
  %22 = bitcast %"class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0, '8', false>, 0>"* %5 to i8*
  %23 = bitcast %"class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0, '8', false>, 0>"* %0 to i8*
  call void @fpga_fifo_push_32(i8* %22, i8* %23)
  br label %empty, !llvm.loop !5

ret:                                              ; preds = %empty
  ret void
}

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0, '8', false>, 0>.160"(i128* noalias align 512 "unpacked"="0.0" %dst_V_data_V, i16* noalias align 512 "unpacked"="0.1" %dst_V_keep_V, i16* noalias align 512 "unpacked"="0.2" %dst_V_strb_V, i1* noalias align 512 "unpacked"="0.3" %dst_V_last_V, %"class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0, '8', false>, 0>"* noalias %src) unnamed_addr #5 {
entry:
  %0 = icmp eq %"class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0, '8', false>, 0>"* %src, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  call fastcc void @"streamcpy_hls.p0class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0, '8', false>, 0>.163"(i128* align 512 %dst_V_data_V, i16* align 512 %dst_V_keep_V, i16* align 512 %dst_V_strb_V, i1* align 512 %dst_V_last_V, %"class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0, '8', false>, 0>"* nonnull %src)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @"streamcpy_hls.p0class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0, '8', false>, 0>.163"(i128* noalias nocapture align 512 "unpacked"="0.0" %_V_data_V, i16* noalias nocapture align 512 "unpacked"="0.1" %_V_keep_V, i16* noalias nocapture align 512 "unpacked"="0.2" %_V_strb_V, i1* noalias nocapture align 512 "unpacked"="0.3" %_V_last_V, %"class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0, '8', false>, 0>"* noalias nocapture) unnamed_addr #6 {
entry:
  %1 = alloca %"class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0, '8', false>, 0>"
  %2 = alloca i128
  %3 = alloca i1
  %4 = alloca i16
  %5 = alloca i16
  br label %empty

empty:                                            ; preds = %push, %entry
  %6 = bitcast %"class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0, '8', false>, 0>"* %0 to i8*
  %7 = call i1 @fpga_fifo_not_empty_32(i8* %6)
  br i1 %7, label %push, label %ret

push:                                             ; preds = %empty
  %8 = bitcast %"class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0, '8', false>, 0>"* %1 to i8*
  %9 = bitcast %"class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0, '8', false>, 0>"* %0 to i8*
  call void @fpga_fifo_pop_32(i8* %8, i8* %9)
  %10 = load volatile %"class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0, '8', false>, 0>", %"class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0, '8', false>, 0>"* %1
  %.fca.0.0.0.0.0.extract = extractvalue %"class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0, '8', false>, 0>" %10, 0, 0, 0, 0, 0
  %.fca.0.1.0.0.0.extract = extractvalue %"class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0, '8', false>, 0>" %10, 0, 1, 0, 0, 0
  %.fca.0.2.0.0.0.extract = extractvalue %"class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0, '8', false>, 0>" %10, 0, 2, 0, 0, 0
  %.fca.0.4.0.0.0.extract = extractvalue %"class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0, '8', false>, 0>" %10, 0, 4, 0, 0, 0
  store i128 %.fca.0.0.0.0.0.extract, i128* %2
  %11 = bitcast i128* %2 to i8*
  %12 = bitcast i128* %_V_data_V to i8*
  call void @fpga_fifo_push_16(i8* %11, i8* %12)
  store i16 %.fca.0.1.0.0.0.extract, i16* %5
  %13 = bitcast i16* %5 to i8*
  %14 = bitcast i16* %_V_keep_V to i8*
  call void @fpga_fifo_push_2(i8* %13, i8* %14)
  store i16 %.fca.0.2.0.0.0.extract, i16* %4
  %15 = bitcast i16* %4 to i8*
  %16 = bitcast i16* %_V_strb_V to i8*
  call void @fpga_fifo_push_2(i8* %15, i8* %16)
  store i1 %.fca.0.4.0.0.0.extract, i1* %3
  %17 = bitcast i1* %3 to i8*
  %18 = bitcast i1* %_V_last_V to i8*
  call void @fpga_fifo_push_1(i8* %17, i8* %18)
  br label %empty, !llvm.loop !5

ret:                                              ; preds = %empty
  ret void
}

declare void @apatb_TopPL_hw([8192 x i128]*, [8192 x i128]*, [8192 x i32]*, [8192 x i32]*, i32, i128*, i16*, i16*, i1*, i128*, i16*, i16*, i1*, i128*, i16*, i16*, i1*, i128*, i16*, i16*, i1*, i128*, i16*, i16*, i1*, i128*, i16*, i16*, i1*)

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @copy_back([8192 x %"struct.ap_uint<128>"]* noalias "unpacked"="0", [8192 x i128]* noalias nocapture readonly "unpacked"="1.0", [8192 x %"struct.ap_uint<128>"]* noalias "unpacked"="2", [8192 x i128]* noalias nocapture readonly "unpacked"="3.0", [8192 x %"struct.ap_uint<32>"]* noalias "unpacked"="4", [8192 x i32]* noalias nocapture readonly "unpacked"="5.0", [8192 x %"struct.ap_uint<32>"]* noalias "unpacked"="6", [8192 x i32]* noalias nocapture readonly "unpacked"="7.0", %"class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0, '8', false>, 0>"* noalias "unpacked"="8", i128* noalias align 512 "unpacked"="9.0" %_V_data_V, i16* noalias align 512 "unpacked"="9.1" %_V_keep_V, i16* noalias align 512 "unpacked"="9.2" %_V_strb_V, i1* noalias align 512 "unpacked"="9.3" %_V_last_V, %"class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0, '8', false>, 0>"* noalias "unpacked"="10", i128* noalias align 512 "unpacked"="11.0" %_V_data_V1, i16* noalias align 512 "unpacked"="11.1" %_V_keep_V2, i16* noalias align 512 "unpacked"="11.2" %_V_strb_V3, i1* noalias align 512 "unpacked"="11.3" %_V_last_V4, %"class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0, '8', false>, 0>"* noalias "unpacked"="12", i128* noalias align 512 "unpacked"="13.0" %_V_data_V15, i16* noalias align 512 "unpacked"="13.1" %_V_keep_V26, i16* noalias align 512 "unpacked"="13.2" %_V_strb_V37, i1* noalias align 512 "unpacked"="13.3" %_V_last_V48, %"class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0, '8', false>, 0>"* noalias "unpacked"="14", i128* noalias align 512 "unpacked"="15.0" %_V_data_V159, i16* noalias align 512 "unpacked"="15.1" %_V_keep_V2610, i16* noalias align 512 "unpacked"="15.2" %_V_strb_V3711, i1* noalias align 512 "unpacked"="15.3" %_V_last_V4812, %"class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0, '8', false>, 0>"* noalias "unpacked"="16", i128* noalias align 512 "unpacked"="17.0" %_V_data_V2, i16* noalias align 512 "unpacked"="17.1" %_V_keep_V3, i16* noalias align 512 "unpacked"="17.2" %_V_strb_V4, i1* noalias align 512 "unpacked"="17.3" %_V_last_V5, %"class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0, '8', false>, 0>"* noalias "unpacked"="18", i128* noalias align 512 "unpacked"="19.0" %_V_data_V26, i16* noalias align 512 "unpacked"="19.1" %_V_keep_V37, i16* noalias align 512 "unpacked"="19.2" %_V_strb_V48, i1* noalias align 512 "unpacked"="19.3" %_V_last_V59) unnamed_addr #3 {
entry:
  call fastcc void @"onebyonecpy_hls.p0a8192struct.ap_uint<128>"([8192 x %"struct.ap_uint<128>"]* %2, [8192 x i128]* %3)
  call fastcc void @"onebyonecpy_hls.p0a8192struct.ap_uint<32>"([8192 x %"struct.ap_uint<32>"]* %4, [8192 x i32]* %5)
  call fastcc void @"onebyonecpy_hls.p0a8192struct.ap_uint<32>"([8192 x %"struct.ap_uint<32>"]* %6, [8192 x i32]* %7)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0, '8', false>, 0>"(%"class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0, '8', false>, 0>"* %8, i128* align 512 %_V_data_V, i16* align 512 %_V_keep_V, i16* align 512 %_V_strb_V, i1* align 512 %_V_last_V)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0, '8', false>, 0>"(%"class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0, '8', false>, 0>"* %9, i128* align 512 %_V_data_V1, i16* align 512 %_V_keep_V2, i16* align 512 %_V_strb_V3, i1* align 512 %_V_last_V4)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0, '8', false>, 0>"(%"class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0, '8', false>, 0>"* %10, i128* align 512 %_V_data_V15, i16* align 512 %_V_keep_V26, i16* align 512 %_V_strb_V37, i1* align 512 %_V_last_V48)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0, '8', false>, 0>"(%"class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0, '8', false>, 0>"* %11, i128* align 512 %_V_data_V159, i16* align 512 %_V_keep_V2610, i16* align 512 %_V_strb_V3711, i1* align 512 %_V_last_V4812)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0, '8', false>, 0>"(%"class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0, '8', false>, 0>"* %12, i128* align 512 %_V_data_V2, i16* align 512 %_V_keep_V3, i16* align 512 %_V_strb_V4, i1* align 512 %_V_last_V5)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0, '8', false>, 0>"(%"class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0, '8', false>, 0>"* %13, i128* align 512 %_V_data_V26, i16* align 512 %_V_keep_V37, i16* align 512 %_V_strb_V48, i1* align 512 %_V_last_V59)
  ret void
}

define void @TopPL_hw_stub_wrapper([8192 x i128]*, [8192 x i128]*, [8192 x i32]*, [8192 x i32]*, i32, i128*, i16*, i16*, i1*, i128*, i16*, i16*, i1*, i128*, i16*, i16*, i1*, i128*, i16*, i16*, i1*, i128*, i16*, i16*, i1*, i128*, i16*, i16*, i1*) #7 {
entry:
  %malloccall = tail call i8* @malloc(i64 131072)
  %29 = bitcast i8* %malloccall to [8192 x %"struct.ap_uint<128>"]*
  %malloccall1 = tail call i8* @malloc(i64 131072)
  %30 = bitcast i8* %malloccall1 to [8192 x %"struct.ap_uint<128>"]*
  %malloccall2 = tail call i8* @malloc(i64 32768)
  %31 = bitcast i8* %malloccall2 to [8192 x %"struct.ap_uint<32>"]*
  %malloccall3 = tail call i8* @malloc(i64 32768)
  %32 = bitcast i8* %malloccall3 to [8192 x %"struct.ap_uint<32>"]*
  %33 = alloca %"class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0, '8', false>, 0>"
  %34 = alloca %"class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0, '8', false>, 0>"
  %35 = alloca %"class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0, '8', false>, 0>"
  %36 = alloca %"class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0, '8', false>, 0>"
  %37 = alloca %"class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0, '8', false>, 0>"
  %38 = alloca %"class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0, '8', false>, 0>"
  call void @copy_out([8192 x %"struct.ap_uint<128>"]* %29, [8192 x i128]* %0, [8192 x %"struct.ap_uint<128>"]* %30, [8192 x i128]* %1, [8192 x %"struct.ap_uint<32>"]* %31, [8192 x i32]* %2, [8192 x %"struct.ap_uint<32>"]* %32, [8192 x i32]* %3, %"class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0, '8', false>, 0>"* %33, i128* %5, i16* %6, i16* %7, i1* %8, %"class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0, '8', false>, 0>"* %34, i128* %9, i16* %10, i16* %11, i1* %12, %"class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0, '8', false>, 0>"* %35, i128* %13, i16* %14, i16* %15, i1* %16, %"class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0, '8', false>, 0>"* %36, i128* %17, i16* %18, i16* %19, i1* %20, %"class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0, '8', false>, 0>"* %37, i128* %21, i16* %22, i16* %23, i1* %24, %"class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0, '8', false>, 0>"* %38, i128* %25, i16* %26, i16* %27, i1* %28)
  %39 = bitcast [8192 x %"struct.ap_uint<128>"]* %29 to %"struct.ap_uint<128>"*
  %40 = bitcast [8192 x %"struct.ap_uint<128>"]* %30 to %"struct.ap_uint<128>"*
  %41 = bitcast [8192 x %"struct.ap_uint<32>"]* %31 to %"struct.ap_uint<32>"*
  %42 = bitcast [8192 x %"struct.ap_uint<32>"]* %32 to %"struct.ap_uint<32>"*
  call void @TopPL_hw_stub(%"struct.ap_uint<128>"* %39, %"struct.ap_uint<128>"* %40, %"struct.ap_uint<32>"* %41, %"struct.ap_uint<32>"* %42, i32 %4, %"class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0, '8', false>, 0>"* %33, %"class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0, '8', false>, 0>"* %34, %"class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0, '8', false>, 0>"* %35, %"class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0, '8', false>, 0>"* %36, %"class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0, '8', false>, 0>"* %37, %"class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0, '8', false>, 0>"* %38)
  call void @copy_in([8192 x %"struct.ap_uint<128>"]* %29, [8192 x i128]* %0, [8192 x %"struct.ap_uint<128>"]* %30, [8192 x i128]* %1, [8192 x %"struct.ap_uint<32>"]* %31, [8192 x i32]* %2, [8192 x %"struct.ap_uint<32>"]* %32, [8192 x i32]* %3, %"class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0, '8', false>, 0>"* %33, i128* %5, i16* %6, i16* %7, i1* %8, %"class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0, '8', false>, 0>"* %34, i128* %9, i16* %10, i16* %11, i1* %12, %"class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0, '8', false>, 0>"* %35, i128* %13, i16* %14, i16* %15, i1* %16, %"class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0, '8', false>, 0>"* %36, i128* %17, i16* %18, i16* %19, i1* %20, %"class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0, '8', false>, 0>"* %37, i128* %21, i16* %22, i16* %23, i1* %24, %"class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0, '8', false>, 0>"* %38, i128* %25, i16* %26, i16* %27, i1* %28)
  ret void
}

declare void @TopPL_hw_stub(%"struct.ap_uint<128>"*, %"struct.ap_uint<128>"*, %"struct.ap_uint<32>"*, %"struct.ap_uint<32>"*, i32, %"class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0, '8', false>, 0>"*, %"class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0, '8', false>, 0>"*, %"class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0, '8', false>, 0>"*, %"class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0, '8', false>, 0>"*, %"class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0, '8', false>, 0>"*, %"class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0, '8', false>, 0>"*)

declare i1 @fpga_fifo_not_empty_32(i8*)

declare i1 @fpga_fifo_not_empty_16(i8*)

declare void @fpga_fifo_pop_32(i8*, i8*)

declare void @fpga_fifo_pop_16(i8*, i8*)

declare void @fpga_fifo_pop_1(i8*, i8*)

declare void @fpga_fifo_pop_2(i8*, i8*)

declare void @fpga_fifo_push_32(i8*, i8*)

declare void @fpga_fifo_push_16(i8*, i8*)

declare void @fpga_fifo_push_1(i8*, i8*)

declare void @fpga_fifo_push_2(i8*, i8*)

attributes #0 = { noinline "fpga.wrapper.func"="wrapper" }
attributes #1 = { argmemonly noinline willreturn "fpga.wrapper.func"="copyin" }
attributes #2 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="arraycpy_hls" }
attributes #3 = { argmemonly noinline willreturn "fpga.wrapper.func"="copyout" }
attributes #4 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #5 = { argmemonly noinline willreturn "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #6 = { argmemonly noinline willreturn "fpga.wrapper.func"="streamcpy_hls" }
attributes #7 = { "fpga.wrapper.func"="stub" }

!llvm.dbg.cu = !{}
!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1, !2, !3}
!blackbox_cfg = !{!4}

!0 = !{!"clang version 7.0.0 "}
!1 = !{i32 2, !"Dwarf Version", i32 4}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 1, !"wchar_size", i32 4}
!4 = !{}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.rotate.disable"}
