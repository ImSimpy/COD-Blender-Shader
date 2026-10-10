;
; Input signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; no parameters
;
; Output signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; no parameters
; shader hash: 2fd771869fb3b5188ffaa460698b98f3
;
; Pipeline Runtime Information: 
;
;
;
; Buffer Definitions:
;
; cbuffer 
; {
;
;   [11728 x i8] (type annotation not present)
;
; }
;
; cbuffer 
; {
;
;   [336 x i8] (type annotation not present)
;
; }
;
; cbuffer 
; {
;
;   [16 x i8] (type annotation not present)
;
; }
;
; Resource bind info for 
; {
;
;   [4 x i8] (type annotation not present)
;
; }
;
;
; Resource Bindings:
;
; Name                                 Type  Format         Dim      ID      HLSL Bind  Count
; ------------------------------ ---------- ------- ----------- ------- -------------- ------
;                                   cbuffer      NA          NA     CB0            cb3     1
;                                   cbuffer      NA          NA     CB1            cb0     1
;                                   cbuffer      NA          NA     CB2            cb1     1
;                                   sampler      NA          NA      S0             s1     1
;                                   sampler      NA          NA      S1             s2     1
;                                   texture     f32        2dMS      T0             t0     1
;                                   texture     u32        2dMS      T1             t8     1
;                                   texture     f32          2d      T2             t1     1
;                                   texture     f32          2d      T3             t2     1
;                                   texture    byte         r/o      T4             t5     1
;                                   texture    byte         r/o      T5            t12     1
;                                   texture    byte         r/o      T6            t13     1
;                                   texture  struct         r/o      T7             t6     1
;                                   texture     f32          3d      T8            t10     1
;                                   texture    byte         r/o      T9             t3     1
;                                       UAV     f32          2d      U0             u0     1
;                                       UAV     f32          2d      U1             u1     1
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.CBufRet.i32 = type { i32, i32, i32, i32 }
%dx.types.ResRet.i32 = type { i32, i32, i32, i32, i32 }
%dx.types.CBufRet.f32 = type { float, float, float, float }
%dx.types.ResRet.f32 = type { float, float, float, float, i32 }
%"class.Texture2DMS<vector<float, 4>, 0>" = type { <4 x float>, %"class.Texture2DMS<vector<float, 4>, 0>::sample_type" }
%"class.Texture2DMS<vector<float, 4>, 0>::sample_type" = type { i32 }
%"class.Texture2DMS<vector<unsigned int, 4>, 0>" = type { <4 x i32>, %"class.Texture2DMS<vector<unsigned int, 4>, 0>::sample_type" }
%"class.Texture2DMS<vector<unsigned int, 4>, 0>::sample_type" = type { i32 }
%"class.Texture2D<vector<float, 4> >" = type { <4 x float>, %"class.Texture2D<vector<float, 4> >::mips_type" }
%"class.Texture2D<vector<float, 4> >::mips_type" = type { i32 }
%"class.Texture2D<float>" = type { float, %"class.Texture2D<float>::mips_type" }
%"class.Texture2D<float>::mips_type" = type { i32 }
%struct.ByteAddressBuffer = type { i32 }
%"class.StructuredBuffer<unsigned int>" = type { i32 }
%"class.Texture3D<vector<float, 4> >" = type { <4 x float>, %"class.Texture3D<vector<float, 4> >::mips_type" }
%"class.Texture3D<vector<float, 4> >::mips_type" = type { i32 }
%"class.RWTexture2D<vector<float, 4> >" = type { <4 x float> }
%"class.RWTexture2D<float>" = type { float }
%hostlayout.scene = type { %hostlayout.struct.GfxCodeSceneConsts }
%hostlayout.struct.GfxCodeSceneConsts = type { <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <3 x float>, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x i32>, <4 x i32>, <4 x float>, float, float, float, float, i32, i32, float, float, <2 x i32>, <2 x i32>, <2 x float>, <2 x float>, <3 x float>, i32, <3 x float>, float, <3 x float>, float, <2 x float>, <2 x float>, <3 x float>, float, <3 x float>, float, float, float, float, float, <3 x float>, float, i32, float, float, float, <4 x float>, <3 x float>, float, float, float, float, float, <4 x float>, float, float, float, float, i32, i32, i32, float, <4 x float>, i32, i32, i32, i32, i32, i32, i32, i32, <2 x i32>, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, [2 x <4 x i32>], [3 x <2 x float>], i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <2 x float>, <2 x float>, <4 x float>, <4 x i32>, <4 x float>, i32, float, float, float, i32, i32, i32, i32, <2 x float>, <2 x float>, <2 x float>, <2 x float>, i32, i32, <2 x float>, <2 x float>, <2 x float>, <3 x float>, i32, i32, i32, i32, i32, <4 x i32>, <4 x i32>, <4 x i32>, <4 x float>, i32, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <3 x float>, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], <4 x float>, [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], i32, i32, float, i32, <2 x float>, float, float, float, float, float, i32, <3 x float>, float, float, float, float, float, <3 x float>, float, <3 x float>, float, <3 x float>, float, float, float, float, float, <2 x float>, <2 x float>, float, float, float, float, <3 x float>, float, <2 x float>, i32, i32, <3 x float>, float, float, float, float, float, float, float, float, float, [4 x <3 x float>], i32, [4 x <3 x float>], i32, [4 x <3 x float>], i32, <4 x i32>, <2 x float>, <2 x float>, <2 x float>, i32, i32, float, float, float, float, <4 x float>, <4 x i32>, <4 x float>, <4 x float>, <4 x float>, i32, i32, i32, i32, <4 x float>, i32, float, float, i32, i32, float, float, i32, i32, float, float, i32, i32, float, float, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, float, float, float, float, i32, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, i32, i32, i32, float, <4 x float>, <4 x float>, <4 x float>, <4 x float>, i32, i32, i32, float, <4 x float>, float, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x i32>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [8 x <4 x float>], [8 x <4 x float>], <4 x float>, <3 x float>, i32, <2 x float>, float, float, float, float, float, float, <2 x float>, <2 x float>, <2 x float>, <2 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <2 x float>, float, float, <4 x float>, i32, i32, i32, i32, <3 x float>, i32, <4 x i32>, <4 x i32>, <2 x float>, <2 x i32>, <4 x float>, <4 x float>, <2 x float>, <2 x float>, [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, float, i32, i32, i32, i32, i32, float, float, <2 x float>, <2 x float>, float, float, float, float, i32, float, float, float, float, float, float, float, float, float, float, float, float, i32, i32, i32, float, float, float, i32, <2 x i32>, <2 x i32>, <4 x i32>, float, float, float, float, <4 x float>, <4 x float>, <2 x float>, <2 x float>, <4 x float>, <4 x float>, float, float, float, float, <4 x float>, float, float, float, float, i32, i32, float, float, <4 x float>, <2 x float>, <2 x float>, i32, i32, float, float, [4 x <4 x float>], float, float, float, float, float, float, float, float, i32, i32, i32, float, <4 x float>, <4 x float>, i32, i32, i32, i32, <2 x i32>, <2 x i32>, [2 x <4 x i32>], i32, float, float, float, i32, float, float, i32, <2 x i32>, <2 x float>, float, float, float, i32, %struct.GfxWeatherData, %hostlayout.struct.GfxVolumetricData, %struct.GfxFogRaymarchingData, %struct.GfxEnvironmentalFogData, %struct.GfxShallowWaterData, %struct.GfxGroundDeformationData, %struct.GfxSplinedModelGlobals }
%struct.GfxWeatherData = type { i32, i32, i32, i32, float, float, float, float, float, float, i32, i32, float, float, float, float, i32, i32, i32, i32, float, float, float, float, float, i32, i32, i32, i32, i32, i32, i32, <3 x float>, i32, <3 x float>, i32, i32, float, i32, i32, float, float, float, float }
%hostlayout.struct.GfxVolumetricData = type { [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <2 x float>, <2 x float>, <2 x float>, <2 x float>, <3 x i32>, i32, <3 x float>, i32, <4 x float>, <3 x float>, i32, i32, float, float, float, i32, i32, i32, float, <4 x float>, float, float, i32, i32, <3 x float>, i32, <3 x float>, float, <3 x float>, float, <2 x float>, float, float, <3 x float>, float, <3 x float>, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, <3 x float>, float, i32, float, float, float, <3 x float>, float, <2 x float>, <2 x float>, <3 x float>, float, i32, float, float, float, float, float, float, float, i32, i32, float, float, <3 x float>, float, i32, i32, <2 x float> }
%struct.GfxFogRaymarchingData = type { <2 x float>, <2 x float>, float, float, float, float, float, float, float, float, float, float, float, float, <2 x float>, <2 x float>, <3 x float>, float }
%struct.GfxEnvironmentalFogData = type { float, float, float, i32 }
%struct.GfxShallowWaterData = type { i32, i32, i32, i32, float, float, float, float, <2 x float>, <2 x float>, float, float, float, float, <3 x float>, float, float, float, float, float, float, float, float, float, i32, float, float, float, float, float, float, float, float, float, float, float, i32, float, float, float, float, i32, i32, i32 }
%struct.GfxGroundDeformationData = type { <2 x float>, <2 x float>, float, float, float, float, float, float, float, float, float, float, float, float, float, float, i32, i32 }
%struct.GfxSplinedModelGlobals = type { [64 x <4 x float>], [64 x <4 x float>], [16 x <4 x float>], [32 x <4 x float>], [64 x <4 x float>], [16 x <4 x float>], [16 x <4 x float>], float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float }
%CsHudOutlineConstants = type { <4 x float>, <4 x i32>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <3 x float>, float }
%CsHudOutlineIndirectArgsConstants = type { <3 x i32>, i32 }
%struct.SamplerState = type { i32 }

@"\01?gsHudOutlineMask1@@3PAY07$$CAIA.1dim" = addrspace(3) global [64 x i32] undef, align 4
@heat_ramp.v.1dim = internal constant [45 x float] [float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 0x3FEF48BBE0000000, float 0x3FEC45E860000000, float 0x3FE867CD60000000, float 0x3FEE9177C0000000, float 0x3FE88BD0C0000000, float 0x3FE0CF9A80000000, float 0x3FEDDA3380000000, float 0x3FE4D1B940000000, float 0x3FD26ECFE0000000, float 0x3FED22EF60000000, float 0x3FE117A1C0000000, float 0x3FA9F35200000000, float 0x3FED10E800000000, float 0x3FDCD9BAC0000000, float 0.000000e+00, float 0x3FED916880000000, float 0x3FD62D77A0000000, float 0.000000e+00, float 0x3FEE11E8E0000000, float 0x3FCF018040000000, float 0.000000e+00, float 0x3FEE926960000000, float 0x3FC1A73220000000, float 0.000000e+00, float 0x3FEF12E9E0000000, float 0x3FA1301460000000, float 0.000000e+00, float 0x3FEF936A60000000, float 0.000000e+00, float 0x3FB21FE7E0000000, float 0x3FEF012160000000, float 0.000000e+00, float 0x3FC3B76C20000000, float 0x3FE894D0E0000000, float 0.000000e+00, float 0x3FBF3B6120000000, float 0x3FE2288060000000, float 0.000000e+00, float 0x3FB707F860000000, float 0x3FD7785FA0000000, float 0.000000e+00, float 0x3FADA913E0000000], align 4
@supp_ramp.v.1dim = internal constant [45 x float] [float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 0x3FEF333340000000, float 0x3FEF333340000000, float 0x3FEF333340000000, float 0x3FEE666660000000, float 0x3FEE666660000000, float 0x3FEE666660000000, float 0x3FED9999A0000000, float 0x3FED9999A0000000, float 0x3FED9999A0000000, float 0x3FECCCCCC0000000, float 0x3FECCCCCC0000000, float 0x3FECCCCCC0000000, float 8.750000e-01, float 8.750000e-01, float 8.750000e-01, float 0x3FEB333340000000, float 0x3FEB333340000000, float 0x3FEB333340000000, float 0x3FEA666660000000, float 0x3FEA666660000000, float 0x3FEA666660000000, float 0x3FE99999A0000000, float 0x3FE99999A0000000, float 0x3FE99999A0000000, float 0x3FE8CCCCC0000000, float 0x3FE8CCCCC0000000, float 0x3FE8CCCCC0000000, float 7.500000e-01, float 7.500000e-01, float 7.500000e-01, float 0x3FE7333340000000, float 0x3FE7333340000000, float 0x3FE7333340000000, float 0x3FE6666660000000, float 0x3FE6666660000000, float 0x3FE6666660000000, float 0x3FE59999A0000000, float 0x3FE59999A0000000, float 0x3FE59999A0000000, float 0x3FE4CCCCC0000000, float 0x3FE4CCCCC0000000, float 0x3FE4CCCCC0000000], align 4

define void @cs_hudoutline() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 13, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 12, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 2, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call i32 @dx.op.threadIdInGroup.i32(i32 95, i32 0)  ; ThreadIdInGroup(component)
  %19 = call i32 @dx.op.threadIdInGroup.i32(i32 95, i32 1)  ; ThreadIdInGroup(component)
  %20 = call i32 @dx.op.groupId.i32(i32 94, i32 1)  ; GroupId(component)
  %21 = call i32 @dx.op.groupId.i32(i32 94, i32 2)  ; GroupId(component)
  %22 = alloca [4 x i32], align 4
  %23 = alloca [4 x i32], align 4
  %24 = alloca [4 x i32], align 4
  %25 = alloca [4 x i32], align 4
  %26 = alloca [4 x i32], align 4
  %27 = alloca [4 x i32], align 4
  %28 = alloca [4 x i32], align 4
  %29 = alloca [4 x i32], align 4
  %30 = alloca [4 x i32], align 4
  %31 = alloca [4 x i32], align 4
  %32 = alloca [4 x i32], align 4
  %33 = alloca [4 x i32], align 4
  %34 = alloca [4 x i32], align 4
  %35 = alloca [4 x i32], align 4
  %36 = shl i32 %21, 8
  %37 = add i32 %36, %20
  %38 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %15, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %39 = extractvalue %dx.types.CBufRet.i32 %38, 3
  %40 = icmp ult i32 %37, %39
  br i1 %40, label %41, label %5433, !dx.controlflow.hints !32

; <label>:41                                      ; preds = %0
  %42 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %37, i32 0)  ; BufferLoad(srv,index,wot)
  %43 = extractvalue %dx.types.ResRet.i32 %42, 0
  %44 = shl i32 %43, 3
  %45 = and i32 %44, 524280
  %46 = lshr i32 %43, 13
  %47 = and i32 %46, 32760
  %48 = add i32 %45, %18
  %49 = add i32 %47, %19
  %50 = uitofp i32 %48 to float
  %51 = uitofp i32 %49 to float
  %52 = fadd fast float %50, 5.000000e-01
  %53 = fadd fast float %51, 5.000000e-01
  %54 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %55 = extractvalue %dx.types.CBufRet.f32 %54, 2
  %56 = extractvalue %dx.types.CBufRet.f32 %54, 3
  %57 = fmul fast float %52, %55
  %58 = fmul fast float %53, %56
  %59 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %60 = extractvalue %dx.types.CBufRet.f32 %59, 0
  %61 = extractvalue %dx.types.CBufRet.f32 %59, 1
  %62 = fmul fast float %57, %60
  %63 = fmul fast float %58, %61
  %64 = frem fast float %62, 1.200000e+01
  %65 = frem fast float %63, 1.200000e+01
  %66 = fptoui float %64 to i32
  %67 = fptoui float %65 to i32
  %68 = icmp eq i32 %66, 0
  %69 = icmp eq i32 %67, 0
  %70 = and i32 %66, 14
  %71 = and i32 %67, 14
  %72 = extractvalue %dx.types.CBufRet.f32 %54, 0
  %73 = extractvalue %dx.types.CBufRet.f32 %54, 1
  %74 = fmul fast float %57, %72
  %75 = fmul fast float %58, %73
  %76 = fptoui float %74 to i32
  %77 = fptoui float %75 to i32
  %78 = fdiv fast float %72, %60
  %79 = fdiv fast float %73, %61
  %80 = fdiv fast float %60, %61
  %81 = call float @dx.op.binary.f32(i32 35, float 1.000000e+00, float %80)  ; FMax(a,b)
  %82 = fdiv fast float %61, %60
  %83 = call float @dx.op.binary.f32(i32 35, float 1.000000e+00, float %82)  ; FMax(a,b)
  %84 = icmp ne i32 %71, 6
  %85 = and i1 %68, %84
  %86 = icmp ne i32 %70, 6
  %87 = and i1 %69, %86
  %88 = or i1 %87, %85
  %89 = fptoui float %63 to i32
  %90 = and i32 %89, 2
  %91 = icmp ne i32 %90, 0
  %92 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %17, i32 51)  ; CBufferLoadLegacy(handle,regIndex)
  %93 = extractvalue %dx.types.CBufRet.i32 %92, 1
  %94 = shl i32 %93, 2
  %95 = extractvalue %dx.types.CBufRet.i32 %92, 3
  %96 = shl i32 %95, 1
  %97 = lshr i32 %77, 2
  %98 = extractvalue %dx.types.CBufRet.i32 %92, 2
  %99 = mul i32 %98, %97
  %100 = lshr i32 %76, 3
  %101 = add i32 %94, %100
  %102 = add i32 %101, %96
  %103 = add i32 %102, %99
  %104 = shl i32 %103, 2
  %105 = shl i32 %77, 3
  %106 = and i32 %105, 24
  %107 = and i32 %76, 7
  %108 = or i32 %106, %107
  %109 = shl i32 1, %108
  %110 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %104, i32 undef)  ; BufferLoad(srv,index,wot)
  %111 = extractvalue %dx.types.ResRet.i32 %110, 0
  %112 = and i32 %111, %109
  %113 = icmp eq i32 %112, 0
  %114 = mul i32 %95, 3
  %115 = add i32 %101, %114
  %116 = add i32 %115, %99
  %117 = shl i32 %116, 2
  %118 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %117, i32 undef)  ; BufferLoad(srv,index,wot)
  %119 = extractvalue %dx.types.ResRet.i32 %118, 0
  %120 = and i32 %119, %109
  %121 = icmp ne i32 %120, 0
  %122 = xor i1 %121, true
  %123 = icmp ugt i32 %43, 268435455
  br i1 %123, label %124, label %621, !dx.controlflow.hints !33

; <label>:124                                     ; preds = %41
  %125 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %9, i32 0, i32 %48, i32 %49, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %126 = extractvalue %dx.types.ResRet.f32 %125, 0
  %127 = fcmp fast ogt float %126, -1.000000e+00
  %128 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %129 = extractvalue %dx.types.CBufRet.f32 %128, 1
  %130 = select i1 %127, float %129, float 1.000000e+00
  %131 = fadd fast float %126, 1.000000e+00
  %132 = fmul fast float %130, %131
  %133 = call float @dx.op.unary.f32(i32 6, float %132)  ; FAbs(value)
  %134 = extractvalue %dx.types.CBufRet.f32 %128, 3
  %135 = fcmp ult float %133, %134
  %136 = fcmp uge float %126, -1.000000e+00
  %137 = and i1 %136, %135
  br i1 %137, label %138, label %621, !dx.controlflow.hints !34

; <label>:138                                     ; preds = %124
  %139 = fmul fast float %57, 2.000000e+00
  %140 = fmul fast float %58, 2.000000e+00
  %141 = fsub fast float 1.000000e+00, %139
  %142 = fsub fast float 1.000000e+00, %140
  %143 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %144 = extractvalue %dx.types.CBufRet.f32 %143, 0
  %145 = extractvalue %dx.types.CBufRet.f32 %143, 1
  %146 = extractvalue %dx.types.CBufRet.f32 %143, 2
  %147 = fmul fast float %144, %141
  %148 = fmul fast float %145, %141
  %149 = fmul fast float %146, %141
  %150 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %151 = extractvalue %dx.types.CBufRet.f32 %150, 0
  %152 = extractvalue %dx.types.CBufRet.f32 %150, 1
  %153 = extractvalue %dx.types.CBufRet.f32 %150, 2
  %154 = fmul fast float %151, %142
  %155 = fmul fast float %152, %142
  %156 = fmul fast float %153, %142
  %157 = fadd fast float %154, %147
  %158 = fadd fast float %155, %148
  %159 = fadd fast float %156, %149
  %160 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %161 = extractvalue %dx.types.CBufRet.f32 %160, 0
  %162 = extractvalue %dx.types.CBufRet.f32 %160, 1
  %163 = extractvalue %dx.types.CBufRet.f32 %160, 2
  %164 = fadd fast float %157, %161
  %165 = fadd fast float %158, %162
  %166 = fadd fast float %159, %163
  %167 = fmul fast float %164, %164
  %168 = fmul fast float %165, %165
  %169 = fadd fast float %167, %168
  %170 = fmul fast float %166, %166
  %171 = fadd fast float %169, %170
  %172 = call float @dx.op.unary.f32(i32 24, float %171)  ; Sqrt(value)
  %173 = fdiv fast float 1.000000e+00, %172
  %174 = fmul fast float %164, %173
  %175 = fmul fast float %165, %173
  %176 = fmul fast float %166, %173
  %177 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %178 = extractvalue %dx.types.CBufRet.f32 %177, 0
  %179 = extractvalue %dx.types.CBufRet.f32 %177, 1
  %180 = extractvalue %dx.types.CBufRet.f32 %177, 2
  %181 = fmul fast float %178, 9.687500e-01
  %182 = fmul fast float %179, 9.687500e-01
  %183 = fmul fast float %180, 9.687500e-01
  %184 = fadd fast float %181, 1.562500e-02
  %185 = fadd fast float %182, 1.562500e-02
  %186 = fadd fast float %183, 1.562500e-02
  %187 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %13, float %184, float %185, float %186, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %188 = extractvalue %dx.types.ResRet.f32 %187, 0
  %189 = extractvalue %dx.types.ResRet.f32 %187, 1
  %190 = extractvalue %dx.types.ResRet.f32 %187, 2
  %191 = fmul fast float %172, %133
  %192 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %17, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %193 = extractvalue %dx.types.CBufRet.i32 %192, 0
  %194 = icmp eq i32 %193, 0
  br i1 %194, label %404, label %195

; <label>:195                                     ; preds = %138
  br label %196

; <label>:196                                     ; preds = %397, %195
  %197 = phi float [ %398, %397 ], [ 0.000000e+00, %195 ]
  %198 = phi i32 [ %399, %397 ], [ 0, %195 ]
  %199 = add i32 %198, 171
  %200 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 %199)  ; CBufferLoadLegacy(handle,regIndex)
  %201 = extractvalue %dx.types.CBufRet.f32 %200, 2
  %202 = extractvalue %dx.types.CBufRet.f32 %200, 0
  %203 = extractvalue %dx.types.CBufRet.f32 %200, 1
  %204 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %205 = extractvalue %dx.types.CBufRet.f32 %204, 0
  %206 = extractvalue %dx.types.CBufRet.f32 %204, 1
  %207 = fsub fast float %202, %205
  %208 = fsub fast float %203, %206
  %209 = fsub fast float -0.000000e+00, %207
  %210 = fsub fast float -0.000000e+00, %208
  %211 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %174, float %175, float %176)  ; Dot3(ax,ay,az,bx,by,bz)
  %212 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %209, float %210, float 0.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %213 = fmul fast float %211, %211
  %214 = fsub fast float 1.000000e+00, %213
  %215 = call float @dx.op.dot3.f32(i32 55, float %209, float %210, float 0.000000e+00, float %174, float %175, float %176)  ; Dot3(ax,ay,az,bx,by,bz)
  %216 = fmul fast float %212, %211
  %217 = fsub fast float %215, %216
  %218 = call float @dx.op.dot3.f32(i32 55, float %209, float %210, float 0.000000e+00, float %209, float %210, float 0.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %219 = fmul fast float %212, %212
  %220 = fmul fast float %201, %201
  %221 = fsub fast float -0.000000e+00, %220
  %222 = fsub fast float %221, %219
  %223 = fadd fast float %222, %218
  %224 = fmul fast float %217, %217
  %225 = fmul fast float %223, %214
  %226 = fsub fast float %224, %225
  %227 = fcmp fast ult float %226, 0.000000e+00
  br i1 %227, label %397, label %228, !dx.controlflow.hints !35

; <label>:228                                     ; preds = %196
  %229 = call float @dx.op.unary.f32(i32 24, float %226)  ; Sqrt(value)
  %230 = fsub fast float -0.000000e+00, %217
  %231 = fsub fast float %230, %229
  %232 = fsub fast float %229, %217
  %233 = fdiv fast float %231, %214
  %234 = fdiv fast float %232, %214
  %235 = fcmp fast ole float %233, 0.000000e+00
  %236 = fcmp fast ole float %234, 0.000000e+00
  %237 = and i1 %235, %236
  br i1 %237, label %397, label %238, !dx.controlflow.hints !36

; <label>:238                                     ; preds = %228
  %239 = fmul fast float %233, %174
  %240 = fmul fast float %233, %175
  %241 = fmul fast float %233, %176
  %242 = fmul fast float %234, %174
  %243 = fmul fast float %234, %175
  %244 = fmul fast float %234, %176
  %245 = zext i1 %235 to i32
  %246 = zext i1 %236 to i32
  %247 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %17, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %248 = extractvalue %dx.types.CBufRet.i32 %247, 0
  %249 = icmp eq i32 %248, 0
  br i1 %249, label %294, label %250

; <label>:250                                     ; preds = %238
  br label %251

; <label>:251                                     ; preds = %282, %250
  %252 = phi i32 [ %283, %282 ], [ %245, %250 ]
  %253 = phi i32 [ %284, %282 ], [ %246, %250 ]
  %254 = phi i32 [ %285, %282 ], [ 0, %250 ]
  %255 = icmp eq i32 %198, %254
  br i1 %255, label %282, label %256, !dx.controlflow.hints !37

; <label>:256                                     ; preds = %251
  %257 = add i32 %254, 171
  %258 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 %257)  ; CBufferLoadLegacy(handle,regIndex)
  %259 = extractvalue %dx.types.CBufRet.f32 %258, 2
  %260 = extractvalue %dx.types.CBufRet.f32 %258, 0
  %261 = extractvalue %dx.types.CBufRet.f32 %258, 1
  %262 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %263 = extractvalue %dx.types.CBufRet.f32 %262, 0
  %264 = extractvalue %dx.types.CBufRet.f32 %262, 1
  %265 = fsub fast float %260, %263
  %266 = fsub fast float %261, %264
  %267 = fsub fast float %265, %239
  %268 = fsub fast float %266, %240
  %269 = call float @dx.op.dot2.f32(i32 54, float %267, float %268, float %267, float %268)  ; Dot2(ax,ay,bx,by)
  %270 = fsub fast float %265, %242
  %271 = fsub fast float %266, %243
  %272 = call float @dx.op.dot2.f32(i32 54, float %270, float %271, float %270, float %271)  ; Dot2(ax,ay,bx,by)
  %273 = fmul fast float %259, %259
  %274 = fcmp fast olt float %269, %273
  %275 = fcmp fast olt float %272, %273
  %276 = icmp ne i32 %252, 0
  %277 = or i1 %276, %274
  %278 = zext i1 %277 to i32
  %279 = icmp ne i32 %253, 0
  %280 = or i1 %279, %275
  %281 = zext i1 %280 to i32
  br label %282

; <label>:282                                     ; preds = %256, %251
  %283 = phi i32 [ %252, %251 ], [ %278, %256 ]
  %284 = phi i32 [ %253, %251 ], [ %281, %256 ]
  %285 = add nuw nsw i32 %254, 1
  %286 = icmp eq i32 %283, 0
  %287 = icmp eq i32 %284, 0
  %288 = or i1 %286, %287
  %289 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %17, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %290 = extractvalue %dx.types.CBufRet.i32 %289, 0
  %291 = icmp ult i32 %285, %290
  %292 = and i1 %288, %291
  br i1 %292, label %251, label %293

; <label>:293                                     ; preds = %282
  br label %294

; <label>:294                                     ; preds = %293, %238
  %295 = phi i32 [ %245, %238 ], [ %283, %293 ]
  %296 = phi i32 [ %246, %238 ], [ %284, %293 ]
  br label %297

; <label>:297                                     ; preds = %297, %294
  %298 = phi i32 [ %333, %297 ], [ %245, %294 ]
  %299 = phi i32 [ %343, %297 ], [ %246, %294 ]
  %300 = phi i32 [ %344, %297 ], [ 0, %294 ]
  %301 = add nuw nsw i32 %300, 191
  %302 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 %301)  ; CBufferLoadLegacy(handle,regIndex)
  %303 = extractvalue %dx.types.CBufRet.f32 %302, 0
  %304 = extractvalue %dx.types.CBufRet.f32 %302, 1
  %305 = extractvalue %dx.types.CBufRet.f32 %302, 2
  %306 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %307 = extractvalue %dx.types.CBufRet.f32 %306, 0
  %308 = extractvalue %dx.types.CBufRet.f32 %306, 1
  %309 = extractvalue %dx.types.CBufRet.f32 %306, 2
  %310 = fsub fast float %303, %307
  %311 = fsub fast float %304, %308
  %312 = fsub fast float %305, %309
  %313 = add nuw nsw i32 %300, 195
  %314 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 %313)  ; CBufferLoadLegacy(handle,regIndex)
  %315 = extractvalue %dx.types.CBufRet.f32 %314, 0
  %316 = extractvalue %dx.types.CBufRet.f32 %314, 1
  %317 = extractvalue %dx.types.CBufRet.f32 %314, 2
  %318 = fsub fast float %310, %239
  %319 = fsub fast float %311, %240
  %320 = fsub fast float %312, %241
  %321 = fsub fast float %310, %242
  %322 = fsub fast float %311, %243
  %323 = fsub fast float %312, %244
  %324 = call float @dx.op.unary.f32(i32 6, float %318)  ; FAbs(value)
  %325 = fcmp fast olt float %324, %315
  %326 = call float @dx.op.unary.f32(i32 6, float %319)  ; FAbs(value)
  %327 = fcmp fast olt float %326, %316
  %328 = and i1 %325, %327
  %329 = call float @dx.op.unary.f32(i32 6, float %320)  ; FAbs(value)
  %330 = fcmp fast olt float %329, %317
  %331 = and i1 %328, %330
  %332 = zext i1 %331 to i32
  %333 = or i32 %332, %298
  %334 = call float @dx.op.unary.f32(i32 6, float %321)  ; FAbs(value)
  %335 = fcmp fast olt float %334, %315
  %336 = call float @dx.op.unary.f32(i32 6, float %322)  ; FAbs(value)
  %337 = fcmp fast olt float %336, %316
  %338 = and i1 %335, %337
  %339 = call float @dx.op.unary.f32(i32 6, float %323)  ; FAbs(value)
  %340 = fcmp fast olt float %339, %317
  %341 = and i1 %338, %340
  %342 = zext i1 %341 to i32
  %343 = or i32 %342, %299
  %344 = add nuw nsw i32 %300, 1
  %345 = icmp eq i32 %333, 0
  %346 = icmp eq i32 %343, 0
  %347 = or i1 %345, %346
  %348 = icmp slt i32 %344, 4
  %349 = and i1 %348, %347
  br i1 %349, label %297, label %350

; <label>:350                                     ; preds = %297
  %351 = or i32 %333, %295
  %352 = icmp eq i32 %351, 0
  %353 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %354 = extractvalue %dx.types.CBufRet.f32 %353, 3
  %355 = fcmp fast ogt float %233, 0.000000e+00
  br i1 %355, label %356, label %371, !dx.controlflow.hints !38

; <label>:356                                     ; preds = %350
  %357 = fsub fast float %191, %233
  %358 = fcmp fast ole float %233, %191
  %359 = fcmp fast ole float %357, %354
  %360 = and i1 %358, %359
  %361 = select i1 %360, float 1.000000e+00, float 0.000000e+00
  %362 = fmul fast float %354, -1.500000e+00
  %363 = fsub fast float %357, %354
  %364 = fdiv fast float %363, %362
  %365 = call float @dx.op.unary.f32(i32 7, float %364)  ; Saturate(value)
  %366 = fmul fast float %365, 2.000000e+00
  %367 = fsub fast float 3.000000e+00, %366
  %368 = fmul fast float %365, %365
  %369 = fmul fast float %368, %361
  %370 = fmul fast float %369, %367
  br label %371

; <label>:371                                     ; preds = %356, %350
  %372 = phi float [ %370, %356 ], [ 0.000000e+00, %350 ]
  %373 = select i1 %352, float %372, float 0.000000e+00
  %374 = fadd fast float %373, %197
  %375 = or i32 %343, %296
  %376 = icmp eq i32 %375, 0
  %377 = fcmp fast ogt float %234, 0.000000e+00
  br i1 %377, label %378, label %393, !dx.controlflow.hints !38

; <label>:378                                     ; preds = %371
  %379 = fsub fast float %191, %234
  %380 = fcmp fast ole float %234, %191
  %381 = fcmp fast ole float %379, %354
  %382 = and i1 %380, %381
  %383 = select i1 %382, float 1.000000e+00, float 0.000000e+00
  %384 = fmul fast float %354, -1.500000e+00
  %385 = fsub fast float %379, %354
  %386 = fdiv fast float %385, %384
  %387 = call float @dx.op.unary.f32(i32 7, float %386)  ; Saturate(value)
  %388 = fmul fast float %387, 2.000000e+00
  %389 = fsub fast float 3.000000e+00, %388
  %390 = fmul fast float %387, %387
  %391 = fmul fast float %390, %383
  %392 = fmul fast float %391, %389
  br label %393

; <label>:393                                     ; preds = %378, %371
  %394 = phi float [ %392, %378 ], [ 0.000000e+00, %371 ]
  %395 = select i1 %376, float %394, float 0.000000e+00
  %396 = fadd fast float %374, %395
  br label %397

; <label>:397                                     ; preds = %393, %228, %196
  %398 = phi float [ %197, %228 ], [ %396, %393 ], [ %197, %196 ]
  %399 = add nuw nsw i32 %198, 1
  %400 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %17, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %401 = extractvalue %dx.types.CBufRet.i32 %400, 0
  %402 = icmp ult i32 %399, %401
  br i1 %402, label %196, label %403

; <label>:403                                     ; preds = %397
  br label %404

; <label>:404                                     ; preds = %403, %138
  %405 = phi float [ 0.000000e+00, %138 ], [ %398, %403 ]
  br label %406

; <label>:406                                     ; preds = %616, %404
  %407 = phi float [ %617, %616 ], [ %405, %404 ]
  %408 = phi i32 [ %618, %616 ], [ 0, %404 ]
  %409 = add nuw nsw i32 %408, 191
  %410 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 %409)  ; CBufferLoadLegacy(handle,regIndex)
  %411 = extractvalue %dx.types.CBufRet.f32 %410, 0
  %412 = extractvalue %dx.types.CBufRet.f32 %410, 1
  %413 = extractvalue %dx.types.CBufRet.f32 %410, 2
  %414 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %415 = extractvalue %dx.types.CBufRet.f32 %414, 0
  %416 = extractvalue %dx.types.CBufRet.f32 %414, 1
  %417 = extractvalue %dx.types.CBufRet.f32 %414, 2
  %418 = fsub fast float %411, %415
  %419 = fsub fast float %412, %416
  %420 = fsub fast float %413, %417
  %421 = add nuw nsw i32 %408, 195
  %422 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 %421)  ; CBufferLoadLegacy(handle,regIndex)
  %423 = extractvalue %dx.types.CBufRet.f32 %422, 0
  %424 = extractvalue %dx.types.CBufRet.f32 %422, 1
  %425 = extractvalue %dx.types.CBufRet.f32 %422, 2
  %426 = fdiv fast float 1.000000e+00, %174
  %427 = fdiv fast float 1.000000e+00, %175
  %428 = fdiv fast float 1.000000e+00, %176
  %429 = fadd fast float %418, %423
  %430 = fadd fast float %419, %424
  %431 = fadd fast float %420, %425
  %432 = fsub fast float %418, %423
  %433 = fsub fast float %419, %424
  %434 = fsub fast float %420, %425
  %435 = fmul fast float %432, %426
  %436 = fmul fast float %429, %426
  %437 = call float @dx.op.binary.f32(i32 36, float %435, float %436)  ; FMin(a,b)
  %438 = call float @dx.op.binary.f32(i32 35, float %435, float %436)  ; FMax(a,b)
  %439 = fmul fast float %433, %427
  %440 = fmul fast float %430, %427
  %441 = call float @dx.op.binary.f32(i32 36, float %439, float %440)  ; FMin(a,b)
  %442 = call float @dx.op.binary.f32(i32 35, float %437, float %441)  ; FMax(a,b)
  %443 = call float @dx.op.binary.f32(i32 35, float %439, float %440)  ; FMax(a,b)
  %444 = call float @dx.op.binary.f32(i32 36, float %438, float %443)  ; FMin(a,b)
  %445 = fmul fast float %428, %434
  %446 = fmul fast float %428, %431
  %447 = call float @dx.op.binary.f32(i32 36, float %445, float %446)  ; FMin(a,b)
  %448 = call float @dx.op.binary.f32(i32 35, float %442, float %447)  ; FMax(a,b)
  %449 = call float @dx.op.binary.f32(i32 35, float %445, float %446)  ; FMax(a,b)
  %450 = call float @dx.op.binary.f32(i32 36, float %444, float %449)  ; FMin(a,b)
  %451 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %448)  ; FMax(a,b)
  %452 = fcmp fast ult float %450, %451
  br i1 %452, label %616, label %453, !dx.controlflow.hints !39

; <label>:453                                     ; preds = %406
  %454 = fcmp fast ole float %448, 0.000000e+00
  %455 = fcmp fast ole float %450, 0.000000e+00
  %456 = and i1 %454, %455
  br i1 %456, label %616, label %457, !dx.controlflow.hints !40

; <label>:457                                     ; preds = %453
  %458 = fmul fast float %448, %174
  %459 = fmul fast float %448, %175
  %460 = fmul fast float %448, %176
  %461 = fmul fast float %450, %174
  %462 = fmul fast float %450, %175
  %463 = fmul fast float %450, %176
  %464 = zext i1 %454 to i32
  %465 = zext i1 %455 to i32
  %466 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %17, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %467 = extractvalue %dx.types.CBufRet.i32 %466, 0
  %468 = icmp eq i32 %467, 0
  br i1 %468, label %506, label %469

; <label>:469                                     ; preds = %457
  br label %470

; <label>:470                                     ; preds = %470, %469
  %471 = phi i32 [ %494, %470 ], [ %464, %469 ]
  %472 = phi i32 [ %496, %470 ], [ %465, %469 ]
  %473 = phi i32 [ %497, %470 ], [ 0, %469 ]
  %474 = add i32 %473, 171
  %475 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 %474)  ; CBufferLoadLegacy(handle,regIndex)
  %476 = extractvalue %dx.types.CBufRet.f32 %475, 2
  %477 = extractvalue %dx.types.CBufRet.f32 %475, 0
  %478 = extractvalue %dx.types.CBufRet.f32 %475, 1
  %479 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %480 = extractvalue %dx.types.CBufRet.f32 %479, 0
  %481 = extractvalue %dx.types.CBufRet.f32 %479, 1
  %482 = fsub fast float %477, %480
  %483 = fsub fast float %478, %481
  %484 = fsub fast float %482, %458
  %485 = fsub fast float %483, %459
  %486 = call float @dx.op.dot2.f32(i32 54, float %484, float %485, float %484, float %485)  ; Dot2(ax,ay,bx,by)
  %487 = fsub fast float %482, %461
  %488 = fsub fast float %483, %462
  %489 = call float @dx.op.dot2.f32(i32 54, float %487, float %488, float %487, float %488)  ; Dot2(ax,ay,bx,by)
  %490 = fmul fast float %476, %476
  %491 = fcmp fast olt float %486, %490
  %492 = fcmp fast olt float %489, %490
  %493 = zext i1 %491 to i32
  %494 = or i32 %493, %471
  %495 = zext i1 %492 to i32
  %496 = or i32 %495, %472
  %497 = add nuw nsw i32 %473, 1
  %498 = icmp eq i32 %494, 0
  %499 = icmp eq i32 %496, 0
  %500 = or i1 %498, %499
  %501 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %17, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %502 = extractvalue %dx.types.CBufRet.i32 %501, 0
  %503 = icmp ult i32 %497, %502
  %504 = and i1 %503, %500
  br i1 %504, label %470, label %505

; <label>:505                                     ; preds = %470
  br label %506

; <label>:506                                     ; preds = %505, %457
  %507 = phi i32 [ %464, %457 ], [ %494, %505 ]
  %508 = phi i32 [ %465, %457 ], [ %496, %505 ]
  br label %509

; <label>:509                                     ; preds = %560, %506
  %510 = phi i32 [ %561, %560 ], [ %464, %506 ]
  %511 = phi i32 [ %562, %560 ], [ %465, %506 ]
  %512 = phi i32 [ %563, %560 ], [ 0, %506 ]
  %513 = icmp eq i32 %408, %512
  br i1 %513, label %560, label %514, !dx.controlflow.hints !41

; <label>:514                                     ; preds = %509
  %515 = add nuw nsw i32 %512, 191
  %516 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 %515)  ; CBufferLoadLegacy(handle,regIndex)
  %517 = extractvalue %dx.types.CBufRet.f32 %516, 0
  %518 = extractvalue %dx.types.CBufRet.f32 %516, 1
  %519 = extractvalue %dx.types.CBufRet.f32 %516, 2
  %520 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %521 = extractvalue %dx.types.CBufRet.f32 %520, 0
  %522 = extractvalue %dx.types.CBufRet.f32 %520, 1
  %523 = extractvalue %dx.types.CBufRet.f32 %520, 2
  %524 = fsub fast float %517, %521
  %525 = fsub fast float %518, %522
  %526 = fsub fast float %519, %523
  %527 = add nuw nsw i32 %512, 195
  %528 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 %527)  ; CBufferLoadLegacy(handle,regIndex)
  %529 = extractvalue %dx.types.CBufRet.f32 %528, 0
  %530 = extractvalue %dx.types.CBufRet.f32 %528, 1
  %531 = extractvalue %dx.types.CBufRet.f32 %528, 2
  %532 = fsub fast float %524, %458
  %533 = fsub fast float %525, %459
  %534 = fsub fast float %526, %460
  %535 = fsub fast float %524, %461
  %536 = fsub fast float %525, %462
  %537 = fsub fast float %526, %463
  %538 = call float @dx.op.unary.f32(i32 6, float %532)  ; FAbs(value)
  %539 = fcmp fast ole float %538, %529
  %540 = call float @dx.op.unary.f32(i32 6, float %533)  ; FAbs(value)
  %541 = fcmp fast ole float %540, %530
  %542 = and i1 %539, %541
  %543 = call float @dx.op.unary.f32(i32 6, float %534)  ; FAbs(value)
  %544 = fcmp fast ole float %543, %531
  %545 = and i1 %542, %544
  %546 = icmp ne i32 %510, 0
  %547 = or i1 %546, %545
  %548 = zext i1 %547 to i32
  %549 = call float @dx.op.unary.f32(i32 6, float %535)  ; FAbs(value)
  %550 = fcmp fast ole float %549, %529
  %551 = call float @dx.op.unary.f32(i32 6, float %536)  ; FAbs(value)
  %552 = fcmp fast ole float %551, %530
  %553 = and i1 %550, %552
  %554 = call float @dx.op.unary.f32(i32 6, float %537)  ; FAbs(value)
  %555 = fcmp fast ole float %554, %531
  %556 = and i1 %553, %555
  %557 = icmp ne i32 %511, 0
  %558 = or i1 %557, %556
  %559 = zext i1 %558 to i32
  br label %560

; <label>:560                                     ; preds = %514, %509
  %561 = phi i32 [ %510, %509 ], [ %548, %514 ]
  %562 = phi i32 [ %511, %509 ], [ %559, %514 ]
  %563 = add nuw nsw i32 %512, 1
  %564 = icmp eq i32 %561, 0
  %565 = icmp eq i32 %562, 0
  %566 = or i1 %564, %565
  %567 = icmp slt i32 %563, 4
  %568 = and i1 %567, %566
  br i1 %568, label %509, label %569

; <label>:569                                     ; preds = %560
  %570 = or i32 %561, %507
  %571 = icmp eq i32 %570, 0
  %572 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %573 = extractvalue %dx.types.CBufRet.f32 %572, 3
  %574 = fcmp fast ogt float %448, 0.000000e+00
  br i1 %574, label %575, label %590, !dx.controlflow.hints !38

; <label>:575                                     ; preds = %569
  %576 = fsub fast float %191, %448
  %577 = fcmp fast ole float %448, %191
  %578 = fcmp fast ole float %576, %573
  %579 = and i1 %577, %578
  %580 = select i1 %579, float 1.000000e+00, float 0.000000e+00
  %581 = fmul fast float %573, -1.500000e+00
  %582 = fsub fast float %576, %573
  %583 = fdiv fast float %582, %581
  %584 = call float @dx.op.unary.f32(i32 7, float %583)  ; Saturate(value)
  %585 = fmul fast float %584, 2.000000e+00
  %586 = fsub fast float 3.000000e+00, %585
  %587 = fmul fast float %584, %584
  %588 = fmul fast float %587, %580
  %589 = fmul fast float %588, %586
  br label %590

; <label>:590                                     ; preds = %575, %569
  %591 = phi float [ %589, %575 ], [ 0.000000e+00, %569 ]
  %592 = select i1 %571, float %591, float 0.000000e+00
  %593 = fadd fast float %592, %407
  %594 = or i32 %562, %508
  %595 = icmp eq i32 %594, 0
  %596 = fcmp fast ogt float %450, 0.000000e+00
  br i1 %596, label %597, label %612, !dx.controlflow.hints !38

; <label>:597                                     ; preds = %590
  %598 = fsub fast float %191, %450
  %599 = fcmp fast ole float %450, %191
  %600 = fcmp fast ole float %598, %573
  %601 = and i1 %599, %600
  %602 = select i1 %601, float 1.000000e+00, float 0.000000e+00
  %603 = fmul fast float %573, -1.500000e+00
  %604 = fsub fast float %598, %573
  %605 = fdiv fast float %604, %603
  %606 = call float @dx.op.unary.f32(i32 7, float %605)  ; Saturate(value)
  %607 = fmul fast float %606, 2.000000e+00
  %608 = fsub fast float 3.000000e+00, %607
  %609 = fmul fast float %606, %606
  %610 = fmul fast float %609, %602
  %611 = fmul fast float %610, %608
  br label %612

; <label>:612                                     ; preds = %597, %590
  %613 = phi float [ %611, %597 ], [ 0.000000e+00, %590 ]
  %614 = select i1 %595, float %613, float 0.000000e+00
  %615 = fadd fast float %593, %614
  br label %616

; <label>:616                                     ; preds = %612, %453, %406
  %617 = phi float [ %407, %453 ], [ %615, %612 ], [ %407, %406 ]
  %618 = add nuw nsw i32 %408, 1
  %619 = icmp eq i32 %618, 4
  br i1 %619, label %620, label %406

; <label>:620                                     ; preds = %616
  br label %621

; <label>:621                                     ; preds = %620, %124, %41
  %622 = phi float [ 0.000000e+00, %124 ], [ 0.000000e+00, %41 ], [ %188, %620 ]
  %623 = phi float [ 0.000000e+00, %124 ], [ 0.000000e+00, %41 ], [ %189, %620 ]
  %624 = phi float [ 0.000000e+00, %124 ], [ 0.000000e+00, %41 ], [ %190, %620 ]
  %625 = phi float [ 0.000000e+00, %124 ], [ 0.000000e+00, %41 ], [ %617, %620 ]
  br i1 %113, label %5361, label %626, !dx.controlflow.hints !42

; <label>:626                                     ; preds = %621
  %627 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %16, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %628 = extractvalue %dx.types.CBufRet.i32 %627, 0
  %629 = extractvalue %dx.types.CBufRet.i32 %627, 1
  %630 = extractvalue %dx.types.CBufRet.i32 %627, 2
  %631 = extractvalue %dx.types.CBufRet.i32 %627, 3
  %632 = fadd fast float %74, -5.000000e-01
  %633 = fadd fast float %75, -5.000000e-01
  %634 = call float @dx.op.binary.f32(i32 35, float %632, float 0.000000e+00)  ; FMax(a,b)
  %635 = call float @dx.op.binary.f32(i32 35, float %633, float 0.000000e+00)  ; FMax(a,b)
  %636 = call float @dx.op.binary.f32(i32 36, float %634, float %72)  ; FMin(a,b)
  %637 = call float @dx.op.binary.f32(i32 36, float %635, float %73)  ; FMin(a,b)
  %638 = fptoui float %636 to i32
  %639 = fptoui float %637 to i32
  %640 = lshr i32 %638, 1
  %641 = lshr i32 %639, 1
  %642 = and i32 %638, 1
  %643 = shl i32 %639, 1
  %644 = and i32 %643, 2
  %645 = or i32 %644, %642
  %646 = getelementptr inbounds [4 x i32], [4 x i32]* %35, i32 0, i32 0
  store i32 %628, i32* %646, align 4
  %647 = getelementptr inbounds [4 x i32], [4 x i32]* %35, i32 0, i32 1
  store i32 %629, i32* %647, align 4
  %648 = getelementptr inbounds [4 x i32], [4 x i32]* %35, i32 0, i32 2
  store i32 %630, i32* %648, align 4
  %649 = getelementptr inbounds [4 x i32], [4 x i32]* %35, i32 0, i32 3
  store i32 %631, i32* %649, align 4
  %650 = getelementptr [4 x i32], [4 x i32]* %35, i32 0, i32 %645
  %651 = load i32, i32* %650, align 4, !tbaa !43
  %652 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %12, i32 %651, i32 %640, i32 %641, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %653 = extractvalue %dx.types.ResRet.f32 %652, 0
  %654 = extractvalue %dx.types.ResRet.f32 %652, 1
  %655 = fadd fast float %654, 0x3F40000000000000
  %656 = fmul fast float %655, 2.550000e+02
  %657 = fadd fast float %653, 0x3F40000000000000
  %658 = fmul fast float %657, 2.550000e+02
  %659 = fptoui float %656 to i32
  %660 = shl i32 %659, 8
  %661 = fptoui float %658 to i32
  %662 = and i32 %661, 255
  %663 = or i32 %660, %662
  %664 = mul i32 %663, 100
  %665 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %664, i32 undef)  ; BufferLoad(srv,index,wot)
  %666 = extractvalue %dx.types.ResRet.i32 %665, 0
  %667 = lshr i32 %666, 28
  %668 = and i32 %666, 131072
  switch i32 %667, label %5361 [
    i32 0, label %669
    i32 1, label %900
    i32 2, label %1444
    i32 3, label %1754
    i32 4, label %2257
    i32 5, label %2392
    i32 6, label %4753
    i32 7, label %5108
  ], !dx.controlflow.hints !47

; <label>:669                                     ; preds = %626
  %670 = and i32 %666, 511
  %671 = mul nuw nsw i32 %670, 20
  %672 = add nuw nsw i32 %671, 4
  %673 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %672, i32 undef)  ; BufferLoad(srv,index,wot)
  %674 = extractvalue %dx.types.ResRet.i32 %673, 0
  %675 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %671, i32 undef)  ; BufferLoad(srv,index,wot)
  %676 = extractvalue %dx.types.ResRet.i32 %675, 0
  %677 = and i32 %676, 255
  %678 = uitofp i32 %677 to float
  %679 = lshr i32 %676, 8
  %680 = and i32 %679, 255
  %681 = uitofp i32 %680 to float
  %682 = lshr i32 %676, 16
  %683 = and i32 %682, 255
  %684 = uitofp i32 %683 to float
  %685 = lshr i32 %676, 24
  %686 = uitofp i32 %685 to float
  %687 = fmul fast float %678, 0x3F70101020000000
  %688 = fmul fast float %681, 0x3F70101020000000
  %689 = fmul fast float %684, 0x3F70101020000000
  %690 = fmul fast float %686, 0x3F70101020000000
  %691 = and i32 %666, 1048576
  %692 = icmp ne i32 %691, 0
  %693 = and i32 %666, 2097152
  %694 = icmp ne i32 %693, 0
  %695 = lshr i32 %674, 8
  %696 = and i32 %695, 65535
  %697 = call float @dx.op.legacyF16ToF32(i32 131, i32 %696)  ; LegacyF16ToF32(value)
  %698 = and i32 %666, 65536
  %699 = icmp ne i32 %698, 0
  %700 = select i1 %699, float 1.000000e+00, float 0.000000e+00
  %701 = select i1 %121, float 0.000000e+00, float 1.000000e+00
  %702 = select i1 %692, float %701, float %700
  br i1 %121, label %744, label %703, !dx.controlflow.hints !48

; <label>:703                                     ; preds = %669
  %704 = icmp ne i32 %668, 0
  %705 = select i1 %704, float 1.000000e+00, float 0.000000e+00
  %706 = fmul fast float %702, %705
  %707 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %708 = extractvalue %dx.types.CBufRet.f32 %707, 0
  %709 = extractvalue %dx.types.CBufRet.f32 %707, 1
  %710 = extractvalue %dx.types.CBufRet.f32 %707, 2
  %711 = extractvalue %dx.types.CBufRet.f32 %707, 3
  %712 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %713 = extractvalue %dx.types.CBufRet.f32 %712, 0
  %714 = extractvalue %dx.types.CBufRet.f32 %712, 1
  %715 = extractvalue %dx.types.CBufRet.f32 %712, 2
  %716 = extractvalue %dx.types.CBufRet.f32 %712, 3
  %717 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %718 = extractvalue %dx.types.CBufRet.f32 %717, 0
  %719 = extractvalue %dx.types.CBufRet.f32 %717, 1
  %720 = extractvalue %dx.types.CBufRet.f32 %717, 2
  %721 = extractvalue %dx.types.CBufRet.f32 %717, 3
  %722 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %723 = extractvalue %dx.types.CBufRet.f32 %722, 0
  %724 = fadd fast float %687, -1.000000e+00
  %725 = fadd fast float %688, -1.000000e+00
  %726 = fadd fast float %689, -1.000000e+00
  %727 = fadd fast float %690, -1.000000e+00
  %728 = fmul fast float %723, %724
  %729 = fmul fast float %723, %725
  %730 = fmul fast float %723, %726
  %731 = fmul fast float %723, %727
  %732 = fadd fast float %728, 1.000000e+00
  %733 = fadd fast float %729, 1.000000e+00
  %734 = fadd fast float %730, 1.000000e+00
  %735 = fadd fast float %731, 1.000000e+00
  %736 = fmul fast float %718, %705
  %737 = fmul fast float %736, %732
  %738 = fmul fast float %719, %705
  %739 = fmul fast float %738, %733
  %740 = fmul fast float %720, %705
  %741 = fmul fast float %740, %734
  %742 = fmul fast float %721, %705
  %743 = fmul fast float %742, %735
  br label %762

; <label>:744                                     ; preds = %669
  %745 = and i32 %666, 262144
  %746 = icmp ne i32 %745, 0
  %747 = select i1 %746, float 1.000000e+00, float 0.000000e+00
  %748 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %749 = extractvalue %dx.types.CBufRet.f32 %748, 0
  %750 = extractvalue %dx.types.CBufRet.f32 %748, 1
  %751 = extractvalue %dx.types.CBufRet.f32 %748, 2
  %752 = extractvalue %dx.types.CBufRet.f32 %748, 3
  %753 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %754 = extractvalue %dx.types.CBufRet.f32 %753, 0
  %755 = extractvalue %dx.types.CBufRet.f32 %753, 1
  %756 = extractvalue %dx.types.CBufRet.f32 %753, 2
  %757 = extractvalue %dx.types.CBufRet.f32 %753, 3
  %758 = fmul fast float %687, %747
  %759 = fmul fast float %688, %747
  %760 = fmul fast float %689, %747
  %761 = fmul fast float %690, %747
  br label %762

; <label>:762                                     ; preds = %744, %703
  %763 = phi float [ %737, %703 ], [ %758, %744 ]
  %764 = phi float [ %739, %703 ], [ %759, %744 ]
  %765 = phi float [ %741, %703 ], [ %760, %744 ]
  %766 = phi float [ %743, %703 ], [ %761, %744 ]
  %767 = phi float [ %713, %703 ], [ %754, %744 ]
  %768 = phi float [ %714, %703 ], [ %755, %744 ]
  %769 = phi float [ %715, %703 ], [ %756, %744 ]
  %770 = phi float [ %716, %703 ], [ %757, %744 ]
  %771 = phi float [ %708, %703 ], [ %749, %744 ]
  %772 = phi float [ %709, %703 ], [ %750, %744 ]
  %773 = phi float [ %710, %703 ], [ %751, %744 ]
  %774 = phi float [ %711, %703 ], [ %752, %744 ]
  %775 = phi float [ %706, %703 ], [ %702, %744 ]
  %776 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %777 = extractvalue %dx.types.CBufRet.f32 %776, 0
  %778 = fmul fast float %777, 2.000000e+00
  %779 = select i1 %694, float %778, float 1.000000e+00
  %780 = fmul fast float %779, %763
  %781 = fmul fast float %779, %764
  %782 = fmul fast float %779, %765
  %783 = fmul fast float %779, %766
  %784 = fcmp fast oeq float %697, 0.000000e+00
  br i1 %784, label %884, label %785, !dx.controlflow.hints !49

; <label>:785                                     ; preds = %762
  %786 = fmul fast float %697, %78
  %787 = fptosi float %786 to i32
  %788 = fmul fast float %697, %79
  %789 = fptosi float %788 to i32
  %790 = call i32 @dx.op.binary.i32(i32 37, i32 1, i32 %787)  ; IMax(a,b)
  %791 = call i32 @dx.op.binary.i32(i32 37, i32 1, i32 %789)  ; IMax(a,b)
  %792 = sub i32 %77, %791
  %793 = or i32 %792, %76
  %794 = icmp slt i32 %793, 0
  %795 = fptosi float %72 to i32
  %796 = fptosi float %73 to i32
  %797 = icmp sge i32 %76, %795
  %798 = icmp sge i32 %792, %796
  %799 = or i1 %797, %798
  %800 = or i1 %794, %799
  br i1 %800, label %814, label %801, !dx.controlflow.hints !50

; <label>:801                                     ; preds = %785
  %802 = lshr i32 %792, 2
  %803 = mul i32 %98, %802
  %804 = add i32 %102, %803
  %805 = shl i32 %804, 2
  %806 = shl i32 %792, 3
  %807 = and i32 %806, 24
  %808 = or i32 %807, %107
  %809 = shl i32 1, %808
  %810 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %805, i32 undef)  ; BufferLoad(srv,index,wot)
  %811 = extractvalue %dx.types.ResRet.i32 %810, 0
  %812 = and i32 %811, %809
  %813 = icmp ne i32 %812, 0
  br label %814

; <label>:814                                     ; preds = %801, %785
  %815 = phi i1 [ %813, %801 ], [ false, %785 ]
  %816 = add i32 %791, %77
  %817 = or i32 %816, %76
  %818 = icmp slt i32 %817, 0
  %819 = icmp sge i32 %816, %796
  %820 = or i1 %797, %819
  %821 = or i1 %818, %820
  br i1 %821, label %835, label %822, !dx.controlflow.hints !50

; <label>:822                                     ; preds = %814
  %823 = lshr i32 %816, 2
  %824 = mul i32 %98, %823
  %825 = add i32 %102, %824
  %826 = shl i32 %825, 2
  %827 = shl i32 %816, 3
  %828 = and i32 %827, 24
  %829 = or i32 %828, %107
  %830 = shl i32 1, %829
  %831 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %826, i32 undef)  ; BufferLoad(srv,index,wot)
  %832 = extractvalue %dx.types.ResRet.i32 %831, 0
  %833 = and i32 %832, %830
  %834 = icmp ne i32 %833, 0
  br label %835

; <label>:835                                     ; preds = %822, %814
  %836 = phi i1 [ %834, %822 ], [ false, %814 ]
  %837 = and i1 %815, %836
  %838 = sub i32 %76, %790
  %839 = or i32 %838, %77
  %840 = icmp slt i32 %839, 0
  %841 = icmp sge i32 %838, %795
  %842 = icmp sge i32 %77, %796
  %843 = or i1 %841, %842
  %844 = or i1 %840, %843
  br i1 %844, label %858, label %845, !dx.controlflow.hints !50

; <label>:845                                     ; preds = %835
  %846 = lshr i32 %838, 3
  %847 = add i32 %94, %846
  %848 = add i32 %847, %96
  %849 = add i32 %848, %99
  %850 = shl i32 %849, 2
  %851 = and i32 %838, 7
  %852 = or i32 %851, %106
  %853 = shl i32 1, %852
  %854 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %850, i32 undef)  ; BufferLoad(srv,index,wot)
  %855 = extractvalue %dx.types.ResRet.i32 %854, 0
  %856 = and i32 %855, %853
  %857 = icmp ne i32 %856, 0
  br label %858

; <label>:858                                     ; preds = %845, %835
  %859 = phi i1 [ %857, %845 ], [ false, %835 ]
  %860 = and i1 %837, %859
  %861 = add i32 %790, %76
  %862 = or i32 %861, %77
  %863 = icmp slt i32 %862, 0
  %864 = icmp sge i32 %861, %795
  %865 = or i1 %864, %842
  %866 = or i1 %863, %865
  br i1 %866, label %880, label %867, !dx.controlflow.hints !50

; <label>:867                                     ; preds = %858
  %868 = lshr i32 %861, 3
  %869 = add i32 %94, %868
  %870 = add i32 %869, %96
  %871 = add i32 %870, %99
  %872 = shl i32 %871, 2
  %873 = and i32 %861, 7
  %874 = or i32 %873, %106
  %875 = shl i32 1, %874
  %876 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %872, i32 undef)  ; BufferLoad(srv,index,wot)
  %877 = extractvalue %dx.types.ResRet.i32 %876, 0
  %878 = and i32 %877, %875
  %879 = icmp ne i32 %878, 0
  br label %880

; <label>:880                                     ; preds = %867, %858
  %881 = phi i1 [ %879, %867 ], [ false, %858 ]
  %882 = and i1 %860, %881
  %883 = xor i1 %882, true
  br label %884

; <label>:884                                     ; preds = %880, %762
  %885 = phi i1 [ %883, %880 ], [ false, %762 ]
  br i1 %885, label %5361, label %886, !dx.controlflow.hints !51

; <label>:886                                     ; preds = %884
  %887 = select i1 %121, i1 %91, i1 %88
  %888 = select i1 %887, float %767, float %771
  %889 = select i1 %887, float %768, float %772
  %890 = select i1 %887, float %769, float %773
  %891 = select i1 %887, float %770, float %774
  %892 = fmul fast float %775, %888
  %893 = fmul fast float %775, %889
  %894 = fmul fast float %775, %890
  %895 = fmul fast float %775, %891
  %896 = fmul fast float %892, %780
  %897 = fmul fast float %893, %781
  %898 = fmul fast float %894, %782
  %899 = fmul fast float %895, %783
  br label %5361

; <label>:900                                     ; preds = %626
  %901 = or i32 %668, %120
  %902 = icmp eq i32 %901, 0
  br i1 %902, label %5361, label %903, !dx.controlflow.hints !52

; <label>:903                                     ; preds = %900
  %904 = and i32 %666, 511
  %905 = mul nuw nsw i32 %904, 20
  %906 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %905, i32 undef)  ; BufferLoad(srv,index,wot)
  %907 = extractvalue %dx.types.ResRet.i32 %906, 0
  %908 = and i32 %907, 255
  %909 = uitofp i32 %908 to float
  %910 = lshr i32 %907, 8
  %911 = and i32 %910, 255
  %912 = uitofp i32 %911 to float
  %913 = lshr i32 %907, 16
  %914 = and i32 %913, 255
  %915 = uitofp i32 %914 to float
  %916 = lshr i32 %907, 24
  %917 = uitofp i32 %916 to float
  %918 = fmul fast float %909, 0x3F70101020000000
  %919 = fmul fast float %912, 0x3F70101020000000
  %920 = fmul fast float %915, 0x3F70101020000000
  %921 = fmul fast float %917, 0x3F70101020000000
  %922 = lshr i32 %666, 5
  %923 = and i32 %922, 1008
  %924 = or i32 %923, 8
  %925 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %924, i32 undef)  ; BufferLoad(srv,index,wot)
  %926 = extractvalue %dx.types.ResRet.f32 %925, 0
  %927 = or i32 %923, 12
  %928 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %927, i32 undef)  ; BufferLoad(srv,index,wot)
  %929 = extractvalue %dx.types.ResRet.f32 %928, 0
  %930 = or i32 %923, 4
  %931 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %930, i32 undef)  ; BufferLoad(srv,index,wot)
  %932 = extractvalue %dx.types.ResRet.i32 %931, 0
  %933 = lshr i32 %932, 16
  %934 = and i32 %933, 254
  %935 = uitofp i32 %934 to float
  %936 = lshr i32 %932, 24
  %937 = and i32 %936, 254
  %938 = uitofp i32 %937 to float
  %939 = add nuw nsw i32 %905, 16
  %940 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %939, i32 undef)  ; BufferLoad(srv,index,wot)
  %941 = extractvalue %dx.types.ResRet.f32 %940, 0
  %942 = fsub fast float %929, %926
  %943 = fmul fast float %942, 0x3FB99999A0000000
  %944 = fsub fast float %941, %926
  %945 = fdiv fast float %944, %943
  %946 = call float @dx.op.unary.f32(i32 7, float %945)  ; Saturate(value)
  %947 = fmul fast float %946, 2.000000e+00
  %948 = fsub fast float 3.000000e+00, %947
  %949 = fsub fast float %938, %935
  %950 = fmul fast float %946, %946
  %951 = fmul fast float %950, %949
  %952 = fmul fast float %951, %948
  %953 = fadd fast float %952, %935
  %954 = fmul fast float %953, 0x3F70204080000000
  %955 = fmul fast float %942, 5.000000e-01
  %956 = fsub fast float %955, %929
  %957 = fadd fast float %956, %941
  %958 = fdiv fast float %957, %955
  %959 = call float @dx.op.unary.f32(i32 7, float %958)  ; Saturate(value)
  %960 = fmul fast float %959, 2.000000e+00
  %961 = fsub fast float 3.000000e+00, %960
  %962 = fmul fast float %959, %959
  %963 = fmul fast float %962, %961
  %964 = fsub fast float 1.000000e+00, %963
  %965 = fmul fast float %954, %964
  %966 = fadd fast float %941, -1.280000e+02
  %967 = fmul fast float %966, 1.953125e-03
  %968 = call float @dx.op.unary.f32(i32 7, float %967)  ; Saturate(value)
  %969 = fmul fast float %968, 6.250000e-01
  %970 = fsub fast float 2.500000e+00, %969
  %971 = fmul fast float %970, %78
  %972 = fmul fast float %970, %79
  %973 = lshr i32 %76, 1
  %974 = lshr i32 %77, 1
  %975 = and i32 %76, 1
  %976 = shl i32 %77, 1
  %977 = and i32 %976, 2
  %978 = or i32 %977, %975
  %979 = getelementptr inbounds [4 x i32], [4 x i32]* %34, i32 0, i32 0
  store i32 %628, i32* %979, align 4
  %980 = getelementptr inbounds [4 x i32], [4 x i32]* %34, i32 0, i32 1
  store i32 %629, i32* %980, align 4
  %981 = getelementptr inbounds [4 x i32], [4 x i32]* %34, i32 0, i32 2
  store i32 %630, i32* %981, align 4
  %982 = getelementptr inbounds [4 x i32], [4 x i32]* %34, i32 0, i32 3
  store i32 %631, i32* %982, align 4
  %983 = getelementptr [4 x i32], [4 x i32]* %34, i32 0, i32 %978
  %984 = load i32, i32* %983, align 4, !tbaa !43
  %985 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %11, i32 %984, i32 %973, i32 %974, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %986 = extractvalue %dx.types.ResRet.i32 %985, 0
  %987 = lshr i32 %986, 8
  %988 = and i32 %986, 255
  %989 = and i32 %987, 255
  %990 = uitofp i32 %988 to float
  %991 = uitofp i32 %989 to float
  %992 = fmul fast float %990, 0x3F80101020000000
  %993 = fmul fast float %991, 0x3F80101020000000
  %994 = fadd fast float %992, -1.000000e+00
  %995 = fadd fast float %993, -1.000000e+00
  %996 = call float @dx.op.unary.f32(i32 6, float %994)  ; FAbs(value)
  %997 = fsub fast float 1.000000e+00, %996
  %998 = call float @dx.op.unary.f32(i32 6, float %995)  ; FAbs(value)
  %999 = fsub fast float %997, %998
  %1000 = fsub fast float -0.000000e+00, %999
  %1001 = call float @dx.op.binary.f32(i32 35, float %1000, float 0.000000e+00)  ; FMax(a,b)
  %1002 = fcmp fast ogt float %994, 0.000000e+00
  %1003 = fsub fast float -0.000000e+00, %1001
  %1004 = select i1 %1002, float %1003, float %1001
  %1005 = fadd fast float %1004, %994
  %1006 = fcmp fast ogt float %995, 0.000000e+00
  %1007 = select i1 %1006, float %1003, float %1001
  %1008 = fadd fast float %1007, %995
  %1009 = call float @dx.op.dot3.f32(i32 55, float %1005, float %1008, float %999, float %1005, float %1008, float %999)  ; Dot3(ax,ay,az,bx,by,bz)
  %1010 = call float @dx.op.unary.f32(i32 25, float %1009)  ; Rsqrt(value)
  %1011 = fmul fast float %1010, %999
  %1012 = add i32 %77, -1
  %1013 = lshr i32 %1012, 1
  %1014 = shl i32 %1012, 1
  %1015 = and i32 %1014, 2
  %1016 = or i32 %1015, %975
  %1017 = getelementptr inbounds [4 x i32], [4 x i32]* %33, i32 0, i32 0
  store i32 %628, i32* %1017, align 4
  %1018 = getelementptr inbounds [4 x i32], [4 x i32]* %33, i32 0, i32 1
  store i32 %629, i32* %1018, align 4
  %1019 = getelementptr inbounds [4 x i32], [4 x i32]* %33, i32 0, i32 2
  store i32 %630, i32* %1019, align 4
  %1020 = getelementptr inbounds [4 x i32], [4 x i32]* %33, i32 0, i32 3
  store i32 %631, i32* %1020, align 4
  %1021 = getelementptr [4 x i32], [4 x i32]* %33, i32 0, i32 %1016
  %1022 = load i32, i32* %1021, align 4, !tbaa !43
  %1023 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %11, i32 %1022, i32 %973, i32 %1013, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1024 = extractvalue %dx.types.ResRet.i32 %1023, 0
  %1025 = lshr i32 %1024, 8
  %1026 = and i32 %1024, 255
  %1027 = and i32 %1025, 255
  %1028 = uitofp i32 %1026 to float
  %1029 = uitofp i32 %1027 to float
  %1030 = fmul fast float %1028, 0x3F80101020000000
  %1031 = fmul fast float %1029, 0x3F80101020000000
  %1032 = fadd fast float %1030, -1.000000e+00
  %1033 = fadd fast float %1031, -1.000000e+00
  %1034 = call float @dx.op.unary.f32(i32 6, float %1032)  ; FAbs(value)
  %1035 = fsub fast float 1.000000e+00, %1034
  %1036 = call float @dx.op.unary.f32(i32 6, float %1033)  ; FAbs(value)
  %1037 = fsub fast float %1035, %1036
  %1038 = fsub fast float -0.000000e+00, %1037
  %1039 = call float @dx.op.binary.f32(i32 35, float %1038, float 0.000000e+00)  ; FMax(a,b)
  %1040 = fcmp fast ogt float %1032, 0.000000e+00
  %1041 = fsub fast float -0.000000e+00, %1039
  %1042 = select i1 %1040, float %1041, float %1039
  %1043 = fadd fast float %1042, %1032
  %1044 = fcmp fast ogt float %1033, 0.000000e+00
  %1045 = select i1 %1044, float %1041, float %1039
  %1046 = fadd fast float %1045, %1033
  %1047 = call float @dx.op.dot3.f32(i32 55, float %1043, float %1046, float %1037, float %1043, float %1046, float %1037)  ; Dot3(ax,ay,az,bx,by,bz)
  %1048 = call float @dx.op.unary.f32(i32 25, float %1047)  ; Rsqrt(value)
  %1049 = fmul fast float %1043, %1048
  %1050 = fmul fast float %1046, %1048
  %1051 = fmul fast float %1048, %1037
  %1052 = add i32 %77, 1
  %1053 = lshr i32 %1052, 1
  %1054 = shl i32 %1052, 1
  %1055 = and i32 %1054, 2
  %1056 = or i32 %1055, %975
  %1057 = getelementptr inbounds [4 x i32], [4 x i32]* %32, i32 0, i32 0
  store i32 %628, i32* %1057, align 4
  %1058 = getelementptr inbounds [4 x i32], [4 x i32]* %32, i32 0, i32 1
  store i32 %629, i32* %1058, align 4
  %1059 = getelementptr inbounds [4 x i32], [4 x i32]* %32, i32 0, i32 2
  store i32 %630, i32* %1059, align 4
  %1060 = getelementptr inbounds [4 x i32], [4 x i32]* %32, i32 0, i32 3
  store i32 %631, i32* %1060, align 4
  %1061 = getelementptr [4 x i32], [4 x i32]* %32, i32 0, i32 %1056
  %1062 = load i32, i32* %1061, align 4, !tbaa !43
  %1063 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %11, i32 %1062, i32 %973, i32 %1053, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1064 = extractvalue %dx.types.ResRet.i32 %1063, 0
  %1065 = lshr i32 %1064, 8
  %1066 = and i32 %1064, 255
  %1067 = and i32 %1065, 255
  %1068 = uitofp i32 %1066 to float
  %1069 = uitofp i32 %1067 to float
  %1070 = fmul fast float %1068, 0x3F80101020000000
  %1071 = fmul fast float %1069, 0x3F80101020000000
  %1072 = fadd fast float %1070, -1.000000e+00
  %1073 = fadd fast float %1071, -1.000000e+00
  %1074 = call float @dx.op.unary.f32(i32 6, float %1072)  ; FAbs(value)
  %1075 = fsub fast float 1.000000e+00, %1074
  %1076 = call float @dx.op.unary.f32(i32 6, float %1073)  ; FAbs(value)
  %1077 = fsub fast float %1075, %1076
  %1078 = fsub fast float -0.000000e+00, %1077
  %1079 = call float @dx.op.binary.f32(i32 35, float %1078, float 0.000000e+00)  ; FMax(a,b)
  %1080 = fcmp fast ogt float %1072, 0.000000e+00
  %1081 = fsub fast float -0.000000e+00, %1079
  %1082 = select i1 %1080, float %1081, float %1079
  %1083 = fadd fast float %1082, %1072
  %1084 = fcmp fast ogt float %1073, 0.000000e+00
  %1085 = select i1 %1084, float %1081, float %1079
  %1086 = fadd fast float %1085, %1073
  %1087 = call float @dx.op.dot3.f32(i32 55, float %1083, float %1086, float %1077, float %1083, float %1086, float %1077)  ; Dot3(ax,ay,az,bx,by,bz)
  %1088 = call float @dx.op.unary.f32(i32 25, float %1087)  ; Rsqrt(value)
  %1089 = fmul fast float %1083, %1088
  %1090 = fmul fast float %1086, %1088
  %1091 = fmul fast float %1088, %1077
  %1092 = add i32 %76, -1
  %1093 = lshr i32 %1092, 1
  %1094 = and i32 %1092, 1
  %1095 = or i32 %977, %1094
  %1096 = getelementptr inbounds [4 x i32], [4 x i32]* %31, i32 0, i32 0
  store i32 %628, i32* %1096, align 4
  %1097 = getelementptr inbounds [4 x i32], [4 x i32]* %31, i32 0, i32 1
  store i32 %629, i32* %1097, align 4
  %1098 = getelementptr inbounds [4 x i32], [4 x i32]* %31, i32 0, i32 2
  store i32 %630, i32* %1098, align 4
  %1099 = getelementptr inbounds [4 x i32], [4 x i32]* %31, i32 0, i32 3
  store i32 %631, i32* %1099, align 4
  %1100 = getelementptr [4 x i32], [4 x i32]* %31, i32 0, i32 %1095
  %1101 = load i32, i32* %1100, align 4, !tbaa !43
  %1102 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %11, i32 %1101, i32 %1093, i32 %974, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1103 = extractvalue %dx.types.ResRet.i32 %1102, 0
  %1104 = lshr i32 %1103, 8
  %1105 = and i32 %1103, 255
  %1106 = and i32 %1104, 255
  %1107 = uitofp i32 %1105 to float
  %1108 = uitofp i32 %1106 to float
  %1109 = fmul fast float %1107, 0x3F80101020000000
  %1110 = fmul fast float %1108, 0x3F80101020000000
  %1111 = fadd fast float %1109, -1.000000e+00
  %1112 = fadd fast float %1110, -1.000000e+00
  %1113 = call float @dx.op.unary.f32(i32 6, float %1111)  ; FAbs(value)
  %1114 = fsub fast float 1.000000e+00, %1113
  %1115 = call float @dx.op.unary.f32(i32 6, float %1112)  ; FAbs(value)
  %1116 = fsub fast float %1114, %1115
  %1117 = fsub fast float -0.000000e+00, %1116
  %1118 = call float @dx.op.binary.f32(i32 35, float %1117, float 0.000000e+00)  ; FMax(a,b)
  %1119 = fcmp fast ogt float %1111, 0.000000e+00
  %1120 = fsub fast float -0.000000e+00, %1118
  %1121 = select i1 %1119, float %1120, float %1118
  %1122 = fadd fast float %1121, %1111
  %1123 = fcmp fast ogt float %1112, 0.000000e+00
  %1124 = select i1 %1123, float %1120, float %1118
  %1125 = fadd fast float %1124, %1112
  %1126 = call float @dx.op.dot3.f32(i32 55, float %1122, float %1125, float %1116, float %1122, float %1125, float %1116)  ; Dot3(ax,ay,az,bx,by,bz)
  %1127 = call float @dx.op.unary.f32(i32 25, float %1126)  ; Rsqrt(value)
  %1128 = fmul fast float %1122, %1127
  %1129 = fmul fast float %1125, %1127
  %1130 = fmul fast float %1127, %1116
  %1131 = add i32 %76, 1
  %1132 = lshr i32 %1131, 1
  %1133 = and i32 %1131, 1
  %1134 = or i32 %977, %1133
  %1135 = getelementptr inbounds [4 x i32], [4 x i32]* %30, i32 0, i32 0
  store i32 %628, i32* %1135, align 4
  %1136 = getelementptr inbounds [4 x i32], [4 x i32]* %30, i32 0, i32 1
  store i32 %629, i32* %1136, align 4
  %1137 = getelementptr inbounds [4 x i32], [4 x i32]* %30, i32 0, i32 2
  store i32 %630, i32* %1137, align 4
  %1138 = getelementptr inbounds [4 x i32], [4 x i32]* %30, i32 0, i32 3
  store i32 %631, i32* %1138, align 4
  %1139 = getelementptr [4 x i32], [4 x i32]* %30, i32 0, i32 %1134
  %1140 = load i32, i32* %1139, align 4, !tbaa !43
  %1141 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %11, i32 %1140, i32 %1132, i32 %974, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1142 = extractvalue %dx.types.ResRet.i32 %1141, 0
  %1143 = lshr i32 %1142, 8
  %1144 = and i32 %1142, 255
  %1145 = and i32 %1143, 255
  %1146 = uitofp i32 %1144 to float
  %1147 = uitofp i32 %1145 to float
  %1148 = fmul fast float %1146, 0x3F80101020000000
  %1149 = fmul fast float %1147, 0x3F80101020000000
  %1150 = fadd fast float %1148, -1.000000e+00
  %1151 = fadd fast float %1149, -1.000000e+00
  %1152 = call float @dx.op.unary.f32(i32 6, float %1150)  ; FAbs(value)
  %1153 = fsub fast float 1.000000e+00, %1152
  %1154 = call float @dx.op.unary.f32(i32 6, float %1151)  ; FAbs(value)
  %1155 = fsub fast float %1153, %1154
  %1156 = fsub fast float -0.000000e+00, %1155
  %1157 = call float @dx.op.binary.f32(i32 35, float %1156, float 0.000000e+00)  ; FMax(a,b)
  %1158 = fcmp fast ogt float %1150, 0.000000e+00
  %1159 = fsub fast float -0.000000e+00, %1157
  %1160 = select i1 %1158, float %1159, float %1157
  %1161 = fadd fast float %1160, %1150
  %1162 = fcmp fast ogt float %1151, 0.000000e+00
  %1163 = select i1 %1162, float %1159, float %1157
  %1164 = fadd fast float %1163, %1151
  %1165 = call float @dx.op.dot3.f32(i32 55, float %1161, float %1164, float %1155, float %1161, float %1164, float %1155)  ; Dot3(ax,ay,az,bx,by,bz)
  %1166 = call float @dx.op.unary.f32(i32 25, float %1165)  ; Rsqrt(value)
  %1167 = fmul fast float %1161, %1166
  %1168 = fmul fast float %1164, %1166
  %1169 = fmul fast float %1166, %1155
  %1170 = add nuw nsw i32 %905, 12
  %1171 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %1170, i32 undef)  ; BufferLoad(srv,index,wot)
  %1172 = extractvalue %dx.types.ResRet.i32 %1171, 0
  %1173 = lshr i32 %1172, 16
  %1174 = uitofp i32 %1173 to float
  %1175 = fmul fast float %1174, 0x3EF0002000000000
  %1176 = add nuw nsw i32 %905, 8
  %1177 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %1176, i32 undef)  ; BufferLoad(srv,index,wot)
  %1178 = extractvalue %dx.types.ResRet.i32 %1177, 0
  %1179 = lshr i32 %1178, 16
  %1180 = uitofp i32 %1179 to float
  %1181 = fmul fast float %1180, 0x3EF0002000000000
  %1182 = fsub fast float %58, %1181
  %1183 = fdiv fast float %1182, %1175
  %1184 = fsub fast float %53, %972
  %1185 = fmul fast float %56, %1184
  %1186 = call float @dx.op.unary.f32(i32 7, float %57)  ; Saturate(value)
  %1187 = call float @dx.op.unary.f32(i32 7, float %1185)  ; Saturate(value)
  %1188 = fmul fast float %72, %1186
  %1189 = fmul fast float %73, %1187
  %1190 = fadd fast float %1188, -5.000000e-01
  %1191 = fadd fast float %1189, -5.000000e-01
  %1192 = call float @dx.op.binary.f32(i32 35, float %1190, float 0.000000e+00)  ; FMax(a,b)
  %1193 = call float @dx.op.binary.f32(i32 35, float %1191, float 0.000000e+00)  ; FMax(a,b)
  %1194 = call float @dx.op.binary.f32(i32 36, float %1192, float %72)  ; FMin(a,b)
  %1195 = call float @dx.op.binary.f32(i32 36, float %1193, float %73)  ; FMin(a,b)
  %1196 = fptoui float %1194 to i32
  %1197 = fptoui float %1195 to i32
  %1198 = lshr i32 %1196, 1
  %1199 = lshr i32 %1197, 1
  %1200 = and i32 %1196, 1
  %1201 = shl i32 %1197, 1
  %1202 = and i32 %1201, 2
  %1203 = or i32 %1202, %1200
  %1204 = getelementptr inbounds [4 x i32], [4 x i32]* %29, i32 0, i32 0
  store i32 %628, i32* %1204, align 4
  %1205 = getelementptr inbounds [4 x i32], [4 x i32]* %29, i32 0, i32 1
  store i32 %629, i32* %1205, align 4
  %1206 = getelementptr inbounds [4 x i32], [4 x i32]* %29, i32 0, i32 2
  store i32 %630, i32* %1206, align 4
  %1207 = getelementptr inbounds [4 x i32], [4 x i32]* %29, i32 0, i32 3
  store i32 %631, i32* %1207, align 4
  %1208 = getelementptr [4 x i32], [4 x i32]* %29, i32 0, i32 %1203
  %1209 = load i32, i32* %1208, align 4, !tbaa !43
  %1210 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %12, i32 %1209, i32 %1198, i32 %1199, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1211 = extractvalue %dx.types.ResRet.f32 %1210, 0
  %1212 = extractvalue %dx.types.ResRet.f32 %1210, 1
  %1213 = fadd fast float %1212, 0x3F40000000000000
  %1214 = fmul fast float %1213, 2.550000e+02
  %1215 = fadd fast float %1211, 0x3F40000000000000
  %1216 = fmul fast float %1215, 2.550000e+02
  %1217 = fptoui float %1214 to i32
  %1218 = shl i32 %1217, 8
  %1219 = fptoui float %1216 to i32
  %1220 = and i32 %1219, 255
  %1221 = or i32 %1218, %1220
  %1222 = fadd fast float %972, %53
  %1223 = fmul fast float %56, %1222
  %1224 = call float @dx.op.unary.f32(i32 7, float %1223)  ; Saturate(value)
  %1225 = fmul fast float %73, %1224
  %1226 = fadd fast float %1225, -5.000000e-01
  %1227 = call float @dx.op.binary.f32(i32 35, float %1226, float 0.000000e+00)  ; FMax(a,b)
  %1228 = call float @dx.op.binary.f32(i32 36, float %1227, float %73)  ; FMin(a,b)
  %1229 = fptoui float %1228 to i32
  %1230 = lshr i32 %1229, 1
  %1231 = shl i32 %1229, 1
  %1232 = and i32 %1231, 2
  %1233 = or i32 %1232, %1200
  %1234 = getelementptr inbounds [4 x i32], [4 x i32]* %28, i32 0, i32 0
  store i32 %628, i32* %1234, align 4
  %1235 = getelementptr inbounds [4 x i32], [4 x i32]* %28, i32 0, i32 1
  store i32 %629, i32* %1235, align 4
  %1236 = getelementptr inbounds [4 x i32], [4 x i32]* %28, i32 0, i32 2
  store i32 %630, i32* %1236, align 4
  %1237 = getelementptr inbounds [4 x i32], [4 x i32]* %28, i32 0, i32 3
  store i32 %631, i32* %1237, align 4
  %1238 = getelementptr [4 x i32], [4 x i32]* %28, i32 0, i32 %1233
  %1239 = load i32, i32* %1238, align 4, !tbaa !43
  %1240 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %12, i32 %1239, i32 %1198, i32 %1230, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1241 = extractvalue %dx.types.ResRet.f32 %1240, 0
  %1242 = extractvalue %dx.types.ResRet.f32 %1240, 1
  %1243 = fadd fast float %1242, 0x3F40000000000000
  %1244 = fmul fast float %1243, 2.550000e+02
  %1245 = fadd fast float %1241, 0x3F40000000000000
  %1246 = fmul fast float %1245, 2.550000e+02
  %1247 = fptoui float %1244 to i32
  %1248 = shl i32 %1247, 8
  %1249 = fptoui float %1246 to i32
  %1250 = and i32 %1249, 255
  %1251 = or i32 %1248, %1250
  %1252 = fsub fast float %52, %971
  %1253 = fmul fast float %55, %1252
  %1254 = call float @dx.op.unary.f32(i32 7, float %1253)  ; Saturate(value)
  %1255 = call float @dx.op.unary.f32(i32 7, float %58)  ; Saturate(value)
  %1256 = fmul fast float %72, %1254
  %1257 = fmul fast float %73, %1255
  %1258 = fadd fast float %1256, -5.000000e-01
  %1259 = fadd fast float %1257, -5.000000e-01
  %1260 = call float @dx.op.binary.f32(i32 35, float %1258, float 0.000000e+00)  ; FMax(a,b)
  %1261 = call float @dx.op.binary.f32(i32 35, float %1259, float 0.000000e+00)  ; FMax(a,b)
  %1262 = call float @dx.op.binary.f32(i32 36, float %1260, float %72)  ; FMin(a,b)
  %1263 = call float @dx.op.binary.f32(i32 36, float %1261, float %73)  ; FMin(a,b)
  %1264 = fptoui float %1262 to i32
  %1265 = fptoui float %1263 to i32
  %1266 = lshr i32 %1264, 1
  %1267 = lshr i32 %1265, 1
  %1268 = and i32 %1264, 1
  %1269 = shl i32 %1265, 1
  %1270 = and i32 %1269, 2
  %1271 = or i32 %1270, %1268
  %1272 = getelementptr inbounds [4 x i32], [4 x i32]* %27, i32 0, i32 0
  store i32 %628, i32* %1272, align 4
  %1273 = getelementptr inbounds [4 x i32], [4 x i32]* %27, i32 0, i32 1
  store i32 %629, i32* %1273, align 4
  %1274 = getelementptr inbounds [4 x i32], [4 x i32]* %27, i32 0, i32 2
  store i32 %630, i32* %1274, align 4
  %1275 = getelementptr inbounds [4 x i32], [4 x i32]* %27, i32 0, i32 3
  store i32 %631, i32* %1275, align 4
  %1276 = getelementptr [4 x i32], [4 x i32]* %27, i32 0, i32 %1271
  %1277 = load i32, i32* %1276, align 4, !tbaa !43
  %1278 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %12, i32 %1277, i32 %1266, i32 %1267, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1279 = extractvalue %dx.types.ResRet.f32 %1278, 0
  %1280 = extractvalue %dx.types.ResRet.f32 %1278, 1
  %1281 = fadd fast float %1280, 0x3F40000000000000
  %1282 = fmul fast float %1281, 2.550000e+02
  %1283 = fadd fast float %1279, 0x3F40000000000000
  %1284 = fmul fast float %1283, 2.550000e+02
  %1285 = fptoui float %1282 to i32
  %1286 = shl i32 %1285, 8
  %1287 = fptoui float %1284 to i32
  %1288 = and i32 %1287, 255
  %1289 = or i32 %1286, %1288
  %1290 = fadd fast float %971, %52
  %1291 = fmul fast float %55, %1290
  %1292 = call float @dx.op.unary.f32(i32 7, float %1291)  ; Saturate(value)
  %1293 = fmul fast float %72, %1292
  %1294 = fadd fast float %1293, -5.000000e-01
  %1295 = call float @dx.op.binary.f32(i32 35, float %1294, float 0.000000e+00)  ; FMax(a,b)
  %1296 = call float @dx.op.binary.f32(i32 36, float %1295, float %72)  ; FMin(a,b)
  %1297 = fptoui float %1296 to i32
  %1298 = lshr i32 %1297, 1
  %1299 = and i32 %1297, 1
  %1300 = or i32 %1270, %1299
  %1301 = getelementptr inbounds [4 x i32], [4 x i32]* %26, i32 0, i32 0
  store i32 %628, i32* %1301, align 4
  %1302 = getelementptr inbounds [4 x i32], [4 x i32]* %26, i32 0, i32 1
  store i32 %629, i32* %1302, align 4
  %1303 = getelementptr inbounds [4 x i32], [4 x i32]* %26, i32 0, i32 2
  store i32 %630, i32* %1303, align 4
  %1304 = getelementptr inbounds [4 x i32], [4 x i32]* %26, i32 0, i32 3
  store i32 %631, i32* %1304, align 4
  %1305 = getelementptr [4 x i32], [4 x i32]* %26, i32 0, i32 %1300
  %1306 = load i32, i32* %1305, align 4, !tbaa !43
  %1307 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %12, i32 %1306, i32 %1298, i32 %1267, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1308 = extractvalue %dx.types.ResRet.f32 %1307, 0
  %1309 = extractvalue %dx.types.ResRet.f32 %1307, 1
  %1310 = fadd fast float %1309, 0x3F40000000000000
  %1311 = fmul fast float %1310, 2.550000e+02
  %1312 = fadd fast float %1308, 0x3F40000000000000
  %1313 = fmul fast float %1312, 2.550000e+02
  %1314 = fptoui float %1311 to i32
  %1315 = shl i32 %1314, 8
  %1316 = fptoui float %1313 to i32
  %1317 = and i32 %1316, 255
  %1318 = or i32 %1315, %1317
  %1319 = icmp eq i32 %663, %1221
  %1320 = zext i1 %1319 to i32
  %1321 = icmp eq i32 %663, %1251
  %1322 = zext i1 %1321 to i32
  %1323 = add nuw nsw i32 %1322, %1320
  %1324 = icmp eq i32 %663, %1289
  %1325 = zext i1 %1324 to i32
  %1326 = add nuw nsw i32 %1323, %1325
  %1327 = icmp eq i32 %663, %1318
  %1328 = zext i1 %1327 to i32
  %1329 = add nuw nsw i32 %1326, %1328
  %1330 = icmp ne i32 %1329, 4
  %1331 = call float @dx.op.dot3.f32(i32 55, float %1049, float %1050, float %1051, float %1089, float %1090, float %1091)  ; Dot3(ax,ay,az,bx,by,bz)
  %1332 = call float @dx.op.binary.f32(i32 36, float 1.000000e+00, float %1331)  ; FMin(a,b)
  %1333 = call float @dx.op.dot3.f32(i32 55, float %1049, float %1050, float %1051, float %1128, float %1129, float %1130)  ; Dot3(ax,ay,az,bx,by,bz)
  %1334 = call float @dx.op.binary.f32(i32 36, float %1332, float %1333)  ; FMin(a,b)
  %1335 = call float @dx.op.dot3.f32(i32 55, float %1049, float %1050, float %1051, float %1167, float %1168, float %1169)  ; Dot3(ax,ay,az,bx,by,bz)
  %1336 = call float @dx.op.binary.f32(i32 36, float %1334, float %1335)  ; FMin(a,b)
  %1337 = call float @dx.op.dot3.f32(i32 55, float %1089, float %1090, float %1091, float %1128, float %1129, float %1130)  ; Dot3(ax,ay,az,bx,by,bz)
  %1338 = call float @dx.op.binary.f32(i32 36, float %1336, float %1337)  ; FMin(a,b)
  %1339 = call float @dx.op.dot3.f32(i32 55, float %1089, float %1090, float %1091, float %1167, float %1168, float %1169)  ; Dot3(ax,ay,az,bx,by,bz)
  %1340 = call float @dx.op.binary.f32(i32 36, float %1338, float %1339)  ; FMin(a,b)
  %1341 = call float @dx.op.dot3.f32(i32 55, float %1128, float %1129, float %1130, float %1167, float %1168, float %1169)  ; Dot3(ax,ay,az,bx,by,bz)
  %1342 = call float @dx.op.binary.f32(i32 36, float %1340, float %1341)  ; FMin(a,b)
  %1343 = call float @dx.op.unary.f32(i32 7, float %1342)  ; Saturate(value)
  %1344 = fsub fast float 1.000000e+00, %1343
  %1345 = call float @dx.op.unary.f32(i32 7, float %1344)  ; Saturate(value)
  %1346 = fmul fast float %1345, 2.000000e+00
  %1347 = fsub fast float 3.000000e+00, %1346
  %1348 = call float @dx.op.unary.f32(i32 7, float %1011)  ; Saturate(value)
  %1349 = fmul fast float %1348, 2.500000e+00
  %1350 = call float @dx.op.unary.f32(i32 7, float %1349)  ; Saturate(value)
  %1351 = fmul fast float %1350, 2.000000e+00
  %1352 = fsub fast float 3.000000e+00, %1351
  %1353 = fadd fast float %1348, 0xBFD99999A0000000
  %1354 = fmul fast float %1353, -2.500000e+00
  %1355 = call float @dx.op.unary.f32(i32 7, float %1354)  ; Saturate(value)
  %1356 = fmul fast float %1355, 2.000000e+00
  %1357 = fsub fast float 3.000000e+00, %1356
  %1358 = fmul float %1350, %1355
  %1359 = fmul float %1358, %1358
  %1360 = fmul fast float %1357, %1352
  %1361 = fmul fast float %1360, %1359
  %1362 = fmul fast float %1345, %1345
  %1363 = fmul fast float %1362, %1347
  %1364 = fadd fast float %1361, %1363
  %1365 = fmul fast float %1364, 2.000000e+00
  %1366 = call float @dx.op.unary.f32(i32 7, float %1365)  ; Saturate(value)
  %1367 = fmul fast float %1366, 1.500000e+00
  %1368 = fmul fast float %1367, %918
  %1369 = fmul fast float %1367, %919
  %1370 = fmul fast float %1367, %920
  %1371 = icmp eq i32 %663, 0
  %1372 = or i1 %1371, %1330
  %1373 = select i1 %1371, float 0.000000e+00, float 1.000000e+00
  %1374 = select i1 %1372, float %1368, float 1.000000e+00
  %1375 = select i1 %1372, float %1369, float 1.000000e+00
  %1376 = select i1 %1372, float %1370, float 1.000000e+00
  %1377 = select i1 %1372, float %921, float %1367
  %1378 = select i1 %1372, float %1373, float 0.000000e+00
  %1379 = fmul fast float %81, 5.400000e+02
  %1380 = fmul fast float %83, 5.400000e+02
  %1381 = fmul fast float %1379, %57
  %1382 = fmul fast float %1380, %58
  %1383 = call float @dx.op.unary.f32(i32 27, float %1381)  ; Round_ni(value)
  %1384 = call float @dx.op.unary.f32(i32 27, float %1382)  ; Round_ni(value)
  %1385 = fadd fast float %1384, %1383
  %1386 = frem fast float %1385, 2.000000e+00
  %1387 = call float @dx.op.unary.f32(i32 22, float %1381)  ; Frc(value)
  %1388 = call float @dx.op.unary.f32(i32 22, float %1382)  ; Frc(value)
  %1389 = fadd fast float %1387, -5.000000e-01
  %1390 = fadd fast float %1388, -5.000000e-01
  %1391 = fmul fast float %1389, 2.000000e+00
  %1392 = fmul fast float %1390, 2.000000e+00
  %1393 = call float @dx.op.dot2.f32(i32 54, float %1391, float %1392, float %1391, float %1392)  ; Dot2(ax,ay,bx,by)
  %1394 = call float @dx.op.unary.f32(i32 24, float %1393)  ; Sqrt(value)
  %1395 = fsub fast float 1.000000e+00, %1394
  %1396 = fmul fast float %1395, 2.000000e+00
  %1397 = call float @dx.op.unary.f32(i32 7, float %1396)  ; Saturate(value)
  %1398 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %1399 = extractvalue %dx.types.CBufRet.f32 %1398, 0
  %1400 = extractvalue %dx.types.CBufRet.f32 %1398, 1
  %1401 = fmul fast float %1400, %1399
  %1402 = fmul fast float %1380, %1379
  %1403 = fdiv fast float %1401, %1402
  %1404 = fptoui float %1403 to i32
  %1405 = icmp ult i32 %1404, 4
  %1406 = select i1 %1405, float 1.000000e+00, float %1397
  %1407 = fmul fast float %1374, %1386
  %1408 = fmul fast float %1375, %1386
  %1409 = fmul fast float %1376, %1386
  %1410 = fmul fast float %1386, %1377
  %1411 = fmul fast float %1407, %1406
  %1412 = fmul fast float %1408, %1406
  %1413 = fmul fast float %1409, %1406
  %1414 = fmul fast float %1410, %1406
  %1415 = fsub fast float 1.000000e+00, %1183
  %1416 = fmul fast float %1415, %1415
  %1417 = fmul fast float %1416, 3.000000e+00
  %1418 = fadd fast float %1417, 2.500000e-01
  %1419 = call float @dx.op.unary.f32(i32 7, float %1418)  ; Saturate(value)
  %1420 = fmul fast float %1386, 0x3FC3333340000000
  %1421 = fadd fast float %1420, 7.500000e-01
  %1422 = fmul fast float %1421, %1378
  %1423 = call float @dx.op.binary.f32(i32 35, float %1411, float %1422)  ; FMax(a,b)
  %1424 = call float @dx.op.binary.f32(i32 35, float %1412, float %1422)  ; FMax(a,b)
  %1425 = call float @dx.op.binary.f32(i32 35, float %1413, float %1422)  ; FMax(a,b)
  %1426 = fmul fast float %1419, %1378
  %1427 = call float @dx.op.binary.f32(i32 35, float %1414, float %1426)  ; FMax(a,b)
  %1428 = fmul fast float %965, %918
  %1429 = fmul fast float %1428, %1423
  %1430 = fmul fast float %965, %919
  %1431 = fmul fast float %1430, %1424
  %1432 = fmul fast float %965, %920
  %1433 = fmul fast float %1432, %1425
  %1434 = fmul fast float %1419, %965
  %1435 = fmul fast float %1434, %1427
  %1436 = call float @dx.op.unary.f32(i32 7, float %1429)  ; Saturate(value)
  %1437 = call float @dx.op.unary.f32(i32 7, float %1431)  ; Saturate(value)
  %1438 = call float @dx.op.unary.f32(i32 7, float %1433)  ; Saturate(value)
  %1439 = call float @dx.op.unary.f32(i32 7, float %1435)  ; Saturate(value)
  %1440 = fmul fast float %1436, 0x3FF3333340000000
  %1441 = fmul fast float %1437, 0x3FF3333340000000
  %1442 = fmul fast float %1438, 0x3FF3333340000000
  %1443 = fmul fast float %1439, 0x3FF3333340000000
  br label %5361

; <label>:1444                                    ; preds = %626
  %1445 = and i32 %666, 511
  %1446 = mul nuw nsw i32 %1445, 20
  %1447 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %1446, i32 undef)  ; BufferLoad(srv,index,wot)
  %1448 = extractvalue %dx.types.ResRet.i32 %1447, 0
  %1449 = lshr i32 %1448, 24
  %1450 = uitofp i32 %1449 to float
  %1451 = fmul fast float %1450, 0x3F70101020000000
  %1452 = fsub fast float 1.000000e+00, %1451
  %1453 = add nuw nsw i32 %1446, 12
  %1454 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %1453, i32 undef)  ; BufferLoad(srv,index,wot)
  %1455 = extractvalue %dx.types.ResRet.i32 %1454, 0
  %1456 = and i32 %1455, 65535
  %1457 = uitofp i32 %1456 to float
  %1458 = fmul fast float %1457, 0x3EF0002000000000
  %1459 = lshr i32 %1455, 16
  %1460 = uitofp i32 %1459 to float
  %1461 = fmul fast float %1460, 0x3EF0002000000000
  %1462 = add nuw nsw i32 %1446, 8
  %1463 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %1462, i32 undef)  ; BufferLoad(srv,index,wot)
  %1464 = extractvalue %dx.types.ResRet.i32 %1463, 0
  %1465 = and i32 %1464, 65535
  %1466 = uitofp i32 %1465 to float
  %1467 = fmul fast float %1466, 0x3EF0002000000000
  %1468 = lshr i32 %1464, 16
  %1469 = uitofp i32 %1468 to float
  %1470 = fmul fast float %1469, 0x3EF0002000000000
  %1471 = fsub fast float %57, %1467
  %1472 = fdiv fast float %1471, %1458
  %1473 = fsub fast float %58, %1470
  %1474 = fdiv fast float %1473, %1461
  %1475 = add nuw nsw i32 %1446, 16
  %1476 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %1475, i32 undef)  ; BufferLoad(srv,index,wot)
  %1477 = extractvalue %dx.types.ResRet.f32 %1476, 0
  %1478 = fcmp fast olt float %1477, 1.000000e+01
  %1479 = uitofp i1 %1478 to float
  %1480 = fdiv fast float 2.400000e+02, %1477
  %1481 = call float @dx.op.unary.f32(i32 7, float %1480)  ; Saturate(value)
  %1482 = fdiv fast float 3.200000e+02, %1477
  %1483 = call float @dx.op.unary.f32(i32 7, float %1482)  ; Saturate(value)
  %1484 = fmul fast float %1483, 5.000000e-01
  %1485 = fadd fast float %1484, 2.500000e-01
  %1486 = fdiv fast float 3.200000e+01, %1485
  %1487 = select i1 %1478, float 3.200000e+01, float %1486
  %1488 = fmul fast float %1487, 1.600000e+01
  %1489 = fmul fast float %1487, 9.000000e+00
  %1490 = fmul fast float %1458, %1472
  %1491 = fmul fast float %1490, %1488
  %1492 = fmul fast float %1461, %1474
  %1493 = fmul fast float %1492, %1489
  %1494 = call float @dx.op.unary.f32(i32 29, float %1491)  ; Round_z(value)
  %1495 = call float @dx.op.unary.f32(i32 29, float %1493)  ; Round_z(value)
  %1496 = call float @dx.op.unary.f32(i32 7, float %1451)  ; Saturate(value)
  %1497 = fmul fast float %1496, 2.000000e+00
  %1498 = fsub fast float 3.000000e+00, %1497
  %1499 = fmul fast float %1481, 4.000000e+01
  %1500 = fmul fast float %1479, 1.000000e+02
  %1501 = fadd fast float %1500, %1499
  %1502 = fptoui float %1501 to i32
  %1503 = uitofp i32 %76 to float
  %1504 = uitofp i32 %77 to float
  %1505 = fptoui float %1503 to i32
  %1506 = fptoui float %1504 to i32
  %1507 = lshr i32 %1506, 2
  %1508 = mul i32 %98, %1507
  %1509 = lshr i32 %1505, 3
  %1510 = add i32 %94, %1509
  %1511 = add i32 %1510, %96
  %1512 = add i32 %1511, %1508
  %1513 = shl i32 %1512, 2
  %1514 = shl i32 %1506, 3
  %1515 = and i32 %1514, 24
  %1516 = and i32 %1505, 7
  %1517 = or i32 %1515, %1516
  %1518 = shl i32 1, %1517
  %1519 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %1513, i32 undef)  ; BufferLoad(srv,index,wot)
  %1520 = extractvalue %dx.types.ResRet.i32 %1519, 0
  %1521 = and i32 %1520, %1518
  %1522 = icmp ne i32 %1521, 0
  %1523 = icmp eq i32 %1502, 0
  br i1 %1523, label %1640, label %1524, !dx.controlflow.hints !53

; <label>:1524                                    ; preds = %1444
  %1525 = uitofp i32 %1502 to float
  %1526 = fmul fast float %78, 5.000000e-01
  %1527 = fmul fast float %1526, %1525
  %1528 = fmul fast float %79, 5.000000e-01
  %1529 = fmul fast float %1528, %1525
  %1530 = call float @dx.op.binary.f32(i32 35, float 5.000000e-01, float %1527)  ; FMax(a,b)
  %1531 = call float @dx.op.binary.f32(i32 35, float 5.000000e-01, float %1529)  ; FMax(a,b)
  br label %1532

; <label>:1532                                    ; preds = %1627, %1524
  %1533 = phi float [ 0.000000e+00, %1524 ], [ %1630, %1627 ]
  %1534 = phi i32 [ 0, %1524 ], [ %1631, %1627 ]
  %1535 = fmul fast float %57, 0x3FF280E1E0000000
  %1536 = fmul fast float %58, 0x3FF280E1E0000000
  %1537 = sitofp i32 %1534 to float
  %1538 = fmul fast float %1537, 0x3FB99999A0000000
  %1539 = fadd fast float %1538, %1535
  %1540 = fadd fast float %1538, %1536
  %1541 = fmul fast float %1539, 1.024000e+03
  %1542 = fmul fast float %1540, 1.024000e+03
  %1543 = fadd fast float %1541, -5.120000e+02
  %1544 = fadd fast float %1542, -5.120000e+02
  %1545 = fmul fast float %1539, 0x4081BEDF00000000
  %1546 = fadd fast float %1545, 0xC071BEDF00000000
  %1547 = call float @dx.op.unary.f32(i32 22, float %1546)  ; Frc(value)
  %1548 = fmul fast float %1543, %1547
  %1549 = fadd fast float %1548, %1544
  %1550 = fmul fast float %1540, 0x4073BEBE20000000
  %1551 = fadd fast float %1550, 0xC063BEBE20000000
  %1552 = call float @dx.op.unary.f32(i32 22, float %1551)  ; Frc(value)
  %1553 = fmul fast float %1544, %1552
  %1554 = fadd fast float %1553, %1543
  %1555 = fmul fast float %1549, %1554
  %1556 = call float @dx.op.unary.f32(i32 22, float %1555)  ; Frc(value)
  %1557 = fmul fast float %1556, 2.000000e+00
  %1558 = fadd fast float %1557, -1.000000e+00
  %1559 = fmul fast float %1558, %1530
  %1560 = fmul fast float %57, 0x3FEB681740000000
  %1561 = fmul fast float %58, 0x3FEB681740000000
  %1562 = fmul fast float %1537, 0x3FC99999A0000000
  %1563 = fadd fast float %1562, 1.250000e-01
  %1564 = fadd fast float %1563, %1560
  %1565 = fadd fast float %1563, %1561
  %1566 = fmul fast float %1564, 1.024000e+03
  %1567 = fmul fast float %1565, 1.024000e+03
  %1568 = fadd fast float %1566, -5.120000e+02
  %1569 = fadd fast float %1567, -5.120000e+02
  %1570 = fmul fast float %1564, 0x4081BEDF00000000
  %1571 = fadd fast float %1570, 0xC071BEDF00000000
  %1572 = call float @dx.op.unary.f32(i32 22, float %1571)  ; Frc(value)
  %1573 = fmul fast float %1568, %1572
  %1574 = fadd fast float %1573, %1569
  %1575 = fmul fast float %1565, 0x4073BEBE20000000
  %1576 = fadd fast float %1575, 0xC063BEBE20000000
  %1577 = call float @dx.op.unary.f32(i32 22, float %1576)  ; Frc(value)
  %1578 = fmul fast float %1569, %1577
  %1579 = fadd fast float %1578, %1568
  %1580 = fmul fast float %1574, %1579
  %1581 = call float @dx.op.unary.f32(i32 22, float %1580)  ; Frc(value)
  %1582 = fmul fast float %1581, 2.000000e+00
  %1583 = fadd fast float %1582, -1.000000e+00
  %1584 = fmul fast float %1583, %1531
  %1585 = fptosi float %1559 to i32
  %1586 = sitofp i32 %1585 to float
  %1587 = fadd fast float %1586, %1503
  %1588 = fptosi float %1587 to i32
  %1589 = fptosi float %1584 to i32
  %1590 = sitofp i32 %1589 to float
  %1591 = fadd fast float %1590, %1504
  %1592 = fptosi float %1591 to i32
  %1593 = or i32 %1592, %1588
  %1594 = icmp slt i32 %1593, 0
  %1595 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %1596 = extractvalue %dx.types.CBufRet.f32 %1595, 0
  %1597 = extractvalue %dx.types.CBufRet.f32 %1595, 1
  %1598 = fptosi float %1596 to i32
  %1599 = fptosi float %1597 to i32
  %1600 = icmp sge i32 %1588, %1598
  %1601 = icmp sge i32 %1592, %1599
  %1602 = or i1 %1600, %1601
  %1603 = or i1 %1594, %1602
  br i1 %1603, label %1627, label %1604, !dx.controlflow.hints !50

; <label>:1604                                    ; preds = %1532
  %1605 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %17, i32 51)  ; CBufferLoadLegacy(handle,regIndex)
  %1606 = extractvalue %dx.types.CBufRet.i32 %1605, 1
  %1607 = shl i32 %1606, 2
  %1608 = extractvalue %dx.types.CBufRet.i32 %1605, 3
  %1609 = shl i32 %1608, 1
  %1610 = lshr i32 %1592, 2
  %1611 = extractvalue %dx.types.CBufRet.i32 %1605, 2
  %1612 = mul i32 %1611, %1610
  %1613 = lshr i32 %1588, 3
  %1614 = add i32 %1607, %1613
  %1615 = add i32 %1614, %1609
  %1616 = add i32 %1615, %1612
  %1617 = shl i32 %1616, 2
  %1618 = shl i32 %1592, 3
  %1619 = and i32 %1618, 24
  %1620 = and i32 %1588, 7
  %1621 = or i32 %1619, %1620
  %1622 = shl i32 1, %1621
  %1623 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %1617, i32 undef)  ; BufferLoad(srv,index,wot)
  %1624 = extractvalue %dx.types.ResRet.i32 %1623, 0
  %1625 = and i32 %1624, %1622
  %1626 = icmp ne i32 %1625, 0
  br label %1627

; <label>:1627                                    ; preds = %1604, %1532
  %1628 = phi i1 [ %1626, %1604 ], [ false, %1532 ]
  %1629 = uitofp i1 %1628 to float
  %1630 = fadd fast float %1629, %1533
  %1631 = add nuw nsw i32 %1534, 1
  %1632 = icmp eq i32 %1631, 5
  br i1 %1632, label %1633, label %1532

; <label>:1633                                    ; preds = %1627
  %1634 = uitofp i1 %1522 to float
  %1635 = fmul fast float %1634, 0x3FC99999A0000000
  %1636 = fmul fast float %1635, %1630
  %1637 = fadd fast float %1636, -5.000000e-01
  %1638 = fmul fast float %1637, 2.000000e+00
  %1639 = call float @dx.op.unary.f32(i32 7, float %1638)  ; Saturate(value)
  br label %1640

; <label>:1640                                    ; preds = %1633, %1444
  %1641 = phi float [ %1639, %1633 ], [ 0.000000e+00, %1444 ]
  %1642 = fdiv fast float %1494, %1488
  %1643 = fdiv fast float %1495, %1489
  %1644 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1645 = extractvalue %dx.types.CBufRet.f32 %1644, 3
  %1646 = fmul fast float %1645, 0x3FE99999A0000000
  %1647 = fadd fast float %1646, %1642
  %1648 = fsub fast float %1643, %1646
  %1649 = call float @dx.op.unary.f32(i32 22, float %1647)  ; Frc(value)
  %1650 = call float @dx.op.unary.f32(i32 22, float %1648)  ; Frc(value)
  %1651 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %14, float %1649, float %1650, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1652 = extractvalue %dx.types.ResRet.f32 %1651, 0
  %1653 = fmul fast float %1652, 1.500000e+00
  %1654 = call float @dx.op.unary.f32(i32 7, float %1653)  ; Saturate(value)
  %1655 = call float @dx.op.binary.f32(i32 35, float 0x3FE51EB860000000, float %1654)  ; FMax(a,b)
  %1656 = fsub fast float -5.000000e-01, %1494
  %1657 = fadd fast float %1656, %1491
  %1658 = fsub fast float -5.000000e-01, %1495
  %1659 = fadd fast float %1658, %1493
  %1660 = fmul fast float %1657, 2.000000e+00
  %1661 = fmul fast float %1659, 2.000000e+00
  %1662 = call float @dx.op.dot2.f32(i32 54, float %1660, float %1661, float %1660, float %1661)  ; Dot2(ax,ay,bx,by)
  %1663 = call float @dx.op.unary.f32(i32 24, float %1662)  ; Sqrt(value)
  %1664 = fsub fast float 1.000000e+00, %1663
  %1665 = fmul fast float %1664, 2.000000e+00
  %1666 = call float @dx.op.unary.f32(i32 7, float %1665)  ; Saturate(value)
  %1667 = fmul fast float %1645, 0x3F9EB851E0000000
  %1668 = fadd fast float %1667, %1474
  %1669 = call float @dx.op.unary.f32(i32 22, float %1668)  ; Frc(value)
  %1670 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %13, float %1472, float %1669, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1671 = extractvalue %dx.types.ResRet.f32 %1670, 3
  %1672 = call float @dx.op.unary.f32(i32 7, float %1641)  ; Saturate(value)
  %1673 = fmul fast float %1671, %1452
  %1674 = fsub fast float %1672, %1673
  %1675 = call float @dx.op.unary.f32(i32 7, float %1674)  ; Saturate(value)
  %1676 = fmul fast float %1671, 1.250000e+00
  %1677 = fsub fast float %1672, %1676
  %1678 = call float @dx.op.unary.f32(i32 7, float %1677)  ; Saturate(value)
  %1679 = fsub fast float 5.000000e-01, %1474
  %1680 = fmul fast float %1679, 2.000000e+00
  %1681 = call float @dx.op.unary.f32(i32 7, float %1680)  ; Saturate(value)
  %1682 = fmul fast float %1681, %1681
  %1683 = fmul fast float %1682, 7.500000e-01
  %1684 = fadd fast float %1683, 1.000000e+00
  %1685 = fmul fast float %1675, 7.500000e-01
  %1686 = fmul fast float %1685, %1684
  %1687 = fmul fast float %1479, 0x3FD3333340000000
  %1688 = fadd fast float %1687, 0x3FC3333340000000
  %1689 = fmul fast float %1678, %1688
  %1690 = fadd fast float %1686, %1689
  %1691 = fmul fast float %1690, %1690
  %1692 = fmul fast float %1691, %1690
  %1693 = call float @dx.op.unary.f32(i32 7, float %1692)  ; Saturate(value)
  %1694 = fmul fast float %1693, 0x40285C2900000000
  %1695 = fsub fast float 1.400000e+01, %1694
  %1696 = fptoui float %1695 to i32
  %1697 = call float @dx.op.unary.f32(i32 22, float %1695)  ; Frc(value)
  %1698 = mul i32 %1696, 3
  %1699 = add i32 0, %1698
  %1700 = getelementptr [45 x float], [45 x float]* @heat_ramp.v.1dim, i32 0, i32 %1699
  %1701 = load float, float* %1700, align 4
  %1702 = mul i32 %1696, 3
  %1703 = add i32 1, %1702
  %1704 = getelementptr [45 x float], [45 x float]* @heat_ramp.v.1dim, i32 0, i32 %1703
  %1705 = load float, float* %1704, align 4
  %1706 = mul i32 %1696, 3
  %1707 = add i32 2, %1706
  %1708 = getelementptr [45 x float], [45 x float]* @heat_ramp.v.1dim, i32 0, i32 %1707
  %1709 = load float, float* %1708, align 4
  %1710 = add i32 %1696, 1
  %1711 = mul i32 %1710, 3
  %1712 = add i32 0, %1711
  %1713 = getelementptr [45 x float], [45 x float]* @heat_ramp.v.1dim, i32 0, i32 %1712
  %1714 = load float, float* %1713, align 4
  %1715 = mul i32 %1710, 3
  %1716 = add i32 1, %1715
  %1717 = getelementptr [45 x float], [45 x float]* @heat_ramp.v.1dim, i32 0, i32 %1716
  %1718 = load float, float* %1717, align 4
  %1719 = mul i32 %1710, 3
  %1720 = add i32 2, %1719
  %1721 = getelementptr [45 x float], [45 x float]* @heat_ramp.v.1dim, i32 0, i32 %1720
  %1722 = load float, float* %1721, align 4
  %1723 = fsub fast float %1714, %1701
  %1724 = fsub fast float %1718, %1705
  %1725 = fsub fast float %1722, %1709
  %1726 = fmul fast float %1723, %1697
  %1727 = fmul fast float %1724, %1697
  %1728 = fmul fast float %1725, %1697
  %1729 = fadd fast float %1726, %1701
  %1730 = fadd fast float %1727, %1705
  %1731 = fadd fast float %1728, %1709
  %1732 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 17)  ; CBufferLoadLegacy(handle,regIndex)
  %1733 = extractvalue %dx.types.CBufRet.f32 %1732, 0
  %1734 = fmul fast float %1496, %1496
  %1735 = fmul fast float %1734, %1498
  %1736 = fmul fast float %1735, %1655
  %1737 = fmul fast float %1736, %1666
  %1738 = fmul fast float %1737, %1675
  %1739 = fmul fast float %1738, %1733
  %1740 = fmul fast float %1729, %1729
  %1741 = fmul fast float %1740, 2.000000e+00
  %1742 = fmul fast float %1741, %1739
  %1743 = fmul fast float %1730, %1730
  %1744 = fmul fast float %1743, 2.000000e+00
  %1745 = fmul fast float %1744, %1739
  %1746 = fmul fast float %1731, %1731
  %1747 = fmul fast float %1746, 2.000000e+00
  %1748 = fmul fast float %1747, %1739
  %1749 = call float @dx.op.binary.f32(i32 36, float %1742, float 2.000000e+00)  ; FMin(a,b)
  %1750 = call float @dx.op.binary.f32(i32 36, float %1745, float 2.000000e+00)  ; FMin(a,b)
  %1751 = call float @dx.op.binary.f32(i32 36, float %1748, float 2.000000e+00)  ; FMin(a,b)
  %1752 = select i1 %1478, float 0x3FD3333340000000, float 7.500000e-01
  %1753 = fmul float %1752, %1739
  br label %5361

; <label>:1754                                    ; preds = %626
  %1755 = and i32 %666, 262144
  %1756 = icmp eq i32 %668, 0
  %1757 = and i1 %1756, %122
  %1758 = icmp eq i32 %1755, 0
  %1759 = and i1 %121, %1758
  %1760 = or i1 %1757, %1759
  br i1 %1760, label %5361, label %1761, !dx.controlflow.hints !54

; <label>:1761                                    ; preds = %1754
  %1762 = and i32 %666, 511
  %1763 = mul nuw nsw i32 %1762, 20
  br i1 %121, label %1764, label %1930, !dx.controlflow.hints !55

; <label>:1764                                    ; preds = %1761
  %1765 = add nuw nsw i32 %1763, 4
  %1766 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %1765, i32 undef)  ; BufferLoad(srv,index,wot)
  %1767 = extractvalue %dx.types.ResRet.i32 %1766, 0
  %1768 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %1763, i32 undef)  ; BufferLoad(srv,index,wot)
  %1769 = extractvalue %dx.types.ResRet.i32 %1768, 0
  %1770 = and i32 %1769, 255
  %1771 = uitofp i32 %1770 to float
  %1772 = lshr i32 %1769, 8
  %1773 = and i32 %1772, 255
  %1774 = uitofp i32 %1773 to float
  %1775 = lshr i32 %1769, 16
  %1776 = and i32 %1775, 255
  %1777 = uitofp i32 %1776 to float
  %1778 = lshr i32 %1769, 24
  %1779 = uitofp i32 %1778 to float
  %1780 = and i32 %666, 1048576
  %1781 = icmp ne i32 %1780, 0
  %1782 = and i32 %666, 2097152
  %1783 = icmp ne i32 %1782, 0
  %1784 = lshr i32 %1767, 8
  %1785 = and i32 %1784, 65535
  %1786 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1785)  ; LegacyF16ToF32(value)
  %1787 = and i32 %666, 65536
  %1788 = icmp ne i32 %1787, 0
  %1789 = select i1 %1788, float 1.000000e+00, float 0.000000e+00
  %1790 = select i1 %1781, float 0.000000e+00, float %1789
  %1791 = icmp ne i32 %1755, 0
  %1792 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %1793 = extractvalue %dx.types.CBufRet.f32 %1792, 0
  %1794 = extractvalue %dx.types.CBufRet.f32 %1792, 1
  %1795 = extractvalue %dx.types.CBufRet.f32 %1792, 2
  %1796 = extractvalue %dx.types.CBufRet.f32 %1792, 3
  %1797 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %1798 = extractvalue %dx.types.CBufRet.f32 %1797, 0
  %1799 = extractvalue %dx.types.CBufRet.f32 %1797, 1
  %1800 = extractvalue %dx.types.CBufRet.f32 %1797, 2
  %1801 = extractvalue %dx.types.CBufRet.f32 %1797, 3
  %1802 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1803 = extractvalue %dx.types.CBufRet.f32 %1802, 0
  %1804 = fmul fast float %1803, 2.000000e+00
  %1805 = select i1 %1783, float %1804, float 1.000000e+00
  %1806 = select i1 %1791, float 0x3F70101020000000, float 0.000000e+00
  %1807 = fmul fast float %1806, %1771
  %1808 = fmul fast float %1807, %1805
  %1809 = fmul fast float %1806, %1774
  %1810 = fmul fast float %1809, %1805
  %1811 = fmul fast float %1806, %1777
  %1812 = fmul fast float %1811, %1805
  %1813 = fmul fast float %1806, %1779
  %1814 = fmul fast float %1813, %1805
  %1815 = fcmp fast oeq float %1786, 0.000000e+00
  br i1 %1815, label %1915, label %1816, !dx.controlflow.hints !49

; <label>:1816                                    ; preds = %1764
  %1817 = fmul fast float %1786, %78
  %1818 = fptosi float %1817 to i32
  %1819 = fmul fast float %1786, %79
  %1820 = fptosi float %1819 to i32
  %1821 = call i32 @dx.op.binary.i32(i32 37, i32 1, i32 %1818)  ; IMax(a,b)
  %1822 = call i32 @dx.op.binary.i32(i32 37, i32 1, i32 %1820)  ; IMax(a,b)
  %1823 = sub i32 %77, %1822
  %1824 = or i32 %1823, %76
  %1825 = icmp slt i32 %1824, 0
  %1826 = fptosi float %72 to i32
  %1827 = fptosi float %73 to i32
  %1828 = icmp sge i32 %76, %1826
  %1829 = icmp sge i32 %1823, %1827
  %1830 = or i1 %1828, %1829
  %1831 = or i1 %1825, %1830
  br i1 %1831, label %1845, label %1832, !dx.controlflow.hints !50

; <label>:1832                                    ; preds = %1816
  %1833 = lshr i32 %1823, 2
  %1834 = mul i32 %98, %1833
  %1835 = add i32 %102, %1834
  %1836 = shl i32 %1835, 2
  %1837 = shl i32 %1823, 3
  %1838 = and i32 %1837, 24
  %1839 = or i32 %1838, %107
  %1840 = shl i32 1, %1839
  %1841 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %1836, i32 undef)  ; BufferLoad(srv,index,wot)
  %1842 = extractvalue %dx.types.ResRet.i32 %1841, 0
  %1843 = and i32 %1842, %1840
  %1844 = icmp ne i32 %1843, 0
  br label %1845

; <label>:1845                                    ; preds = %1832, %1816
  %1846 = phi i1 [ %1844, %1832 ], [ false, %1816 ]
  %1847 = add i32 %1822, %77
  %1848 = or i32 %1847, %76
  %1849 = icmp slt i32 %1848, 0
  %1850 = icmp sge i32 %1847, %1827
  %1851 = or i1 %1828, %1850
  %1852 = or i1 %1849, %1851
  br i1 %1852, label %1866, label %1853, !dx.controlflow.hints !50

; <label>:1853                                    ; preds = %1845
  %1854 = lshr i32 %1847, 2
  %1855 = mul i32 %98, %1854
  %1856 = add i32 %102, %1855
  %1857 = shl i32 %1856, 2
  %1858 = shl i32 %1847, 3
  %1859 = and i32 %1858, 24
  %1860 = or i32 %1859, %107
  %1861 = shl i32 1, %1860
  %1862 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %1857, i32 undef)  ; BufferLoad(srv,index,wot)
  %1863 = extractvalue %dx.types.ResRet.i32 %1862, 0
  %1864 = and i32 %1863, %1861
  %1865 = icmp ne i32 %1864, 0
  br label %1866

; <label>:1866                                    ; preds = %1853, %1845
  %1867 = phi i1 [ %1865, %1853 ], [ false, %1845 ]
  %1868 = and i1 %1846, %1867
  %1869 = sub i32 %76, %1821
  %1870 = or i32 %1869, %77
  %1871 = icmp slt i32 %1870, 0
  %1872 = icmp sge i32 %1869, %1826
  %1873 = icmp sge i32 %77, %1827
  %1874 = or i1 %1872, %1873
  %1875 = or i1 %1871, %1874
  br i1 %1875, label %1889, label %1876, !dx.controlflow.hints !50

; <label>:1876                                    ; preds = %1866
  %1877 = lshr i32 %1869, 3
  %1878 = add i32 %94, %1877
  %1879 = add i32 %1878, %96
  %1880 = add i32 %1879, %99
  %1881 = shl i32 %1880, 2
  %1882 = and i32 %1869, 7
  %1883 = or i32 %1882, %106
  %1884 = shl i32 1, %1883
  %1885 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %1881, i32 undef)  ; BufferLoad(srv,index,wot)
  %1886 = extractvalue %dx.types.ResRet.i32 %1885, 0
  %1887 = and i32 %1886, %1884
  %1888 = icmp ne i32 %1887, 0
  br label %1889

; <label>:1889                                    ; preds = %1876, %1866
  %1890 = phi i1 [ %1888, %1876 ], [ false, %1866 ]
  %1891 = and i1 %1868, %1890
  %1892 = add i32 %1821, %76
  %1893 = or i32 %1892, %77
  %1894 = icmp slt i32 %1893, 0
  %1895 = icmp sge i32 %1892, %1826
  %1896 = or i1 %1895, %1873
  %1897 = or i1 %1894, %1896
  br i1 %1897, label %1911, label %1898, !dx.controlflow.hints !50

; <label>:1898                                    ; preds = %1889
  %1899 = lshr i32 %1892, 3
  %1900 = add i32 %94, %1899
  %1901 = add i32 %1900, %96
  %1902 = add i32 %1901, %99
  %1903 = shl i32 %1902, 2
  %1904 = and i32 %1892, 7
  %1905 = or i32 %1904, %106
  %1906 = shl i32 1, %1905
  %1907 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %1903, i32 undef)  ; BufferLoad(srv,index,wot)
  %1908 = extractvalue %dx.types.ResRet.i32 %1907, 0
  %1909 = and i32 %1908, %1906
  %1910 = icmp ne i32 %1909, 0
  br label %1911

; <label>:1911                                    ; preds = %1898, %1889
  %1912 = phi i1 [ %1910, %1898 ], [ false, %1889 ]
  %1913 = and i1 %1891, %1912
  %1914 = xor i1 %1913, true
  br label %1915

; <label>:1915                                    ; preds = %1911, %1764
  %1916 = phi i1 [ %1914, %1911 ], [ false, %1764 ]
  br i1 %1916, label %5361, label %1917, !dx.controlflow.hints !51

; <label>:1917                                    ; preds = %1915
  %1918 = select i1 %91, float %1798, float %1793
  %1919 = select i1 %91, float %1799, float %1794
  %1920 = select i1 %91, float %1800, float %1795
  %1921 = select i1 %91, float %1801, float %1796
  %1922 = fmul fast float %1918, %1790
  %1923 = fmul fast float %1919, %1790
  %1924 = fmul fast float %1920, %1790
  %1925 = fmul fast float %1921, %1790
  %1926 = fmul fast float %1922, %1808
  %1927 = fmul fast float %1923, %1810
  %1928 = fmul fast float %1924, %1812
  %1929 = fmul fast float %1925, %1814
  br label %5361

; <label>:1930                                    ; preds = %1761
  %1931 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %1763, i32 undef)  ; BufferLoad(srv,index,wot)
  %1932 = extractvalue %dx.types.ResRet.i32 %1931, 0
  %1933 = and i32 %1932, 255
  %1934 = uitofp i32 %1933 to float
  %1935 = lshr i32 %1932, 8
  %1936 = and i32 %1935, 255
  %1937 = uitofp i32 %1936 to float
  %1938 = lshr i32 %1932, 16
  %1939 = and i32 %1938, 255
  %1940 = uitofp i32 %1939 to float
  %1941 = lshr i32 %1932, 24
  %1942 = uitofp i32 %1941 to float
  %1943 = fmul fast float %1934, 0x3F70101020000000
  %1944 = fmul fast float %1937, 0x3F70101020000000
  %1945 = fmul fast float %1940, 0x3F70101020000000
  %1946 = fmul fast float %1942, 0x3F70101020000000
  %1947 = fsub fast float 1.000000e+00, %1946
  %1948 = lshr i32 %666, 5
  %1949 = and i32 %1948, 1008
  %1950 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %1949, i32 undef)  ; BufferLoad(srv,index,wot)
  %1951 = extractvalue %dx.types.ResRet.i32 %1950, 0
  %1952 = and i32 %1951, 1022
  %1953 = uitofp i32 %1952 to float
  %1954 = fmul fast float %1953, 0x3F940A0500000000
  %1955 = fadd fast float %1954, -1.000000e+01
  %1956 = lshr i32 %1951, 10
  %1957 = and i32 %1956, 1022
  %1958 = uitofp i32 %1957 to float
  %1959 = fmul fast float %1958, 0x3F940A0500000000
  %1960 = fadd fast float %1959, -1.000000e+01
  %1961 = lshr i32 %1951, 20
  %1962 = and i32 %1961, 1022
  %1963 = uitofp i32 %1962 to float
  %1964 = fmul fast float %1963, 0x3F840A0500000000
  %1965 = add nuw nsw i32 %1763, 12
  %1966 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %1965, i32 undef)  ; BufferLoad(srv,index,wot)
  %1967 = extractvalue %dx.types.ResRet.i32 %1966, 0
  %1968 = and i32 %1967, 65535
  %1969 = uitofp i32 %1968 to float
  %1970 = fmul fast float %1969, 0x3EF0002000000000
  %1971 = lshr i32 %1967, 16
  %1972 = uitofp i32 %1971 to float
  %1973 = fmul fast float %1972, 0x3EF0002000000000
  %1974 = add nuw nsw i32 %1763, 8
  %1975 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %1974, i32 undef)  ; BufferLoad(srv,index,wot)
  %1976 = extractvalue %dx.types.ResRet.i32 %1975, 0
  %1977 = and i32 %1976, 65535
  %1978 = uitofp i32 %1977 to float
  %1979 = fmul fast float %1978, 0x3EF0002000000000
  %1980 = lshr i32 %1976, 16
  %1981 = uitofp i32 %1980 to float
  %1982 = fmul fast float %1981, 0x3EF0002000000000
  %1983 = fsub fast float %57, %1979
  %1984 = fdiv fast float %1983, %1970
  %1985 = fsub fast float %58, %1982
  %1986 = fdiv fast float %1985, %1973
  %1987 = add nuw nsw i32 %1763, 16
  %1988 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %1987, i32 undef)  ; BufferLoad(srv,index,wot)
  %1989 = extractvalue %dx.types.ResRet.f32 %1988, 0
  %1990 = fcmp fast olt float %1989, 1.000000e+01
  %1991 = uitofp i1 %1990 to float
  %1992 = fdiv fast float 2.400000e+02, %1989
  %1993 = call float @dx.op.unary.f32(i32 7, float %1992)  ; Saturate(value)
  %1994 = fdiv fast float 3.200000e+02, %1989
  %1995 = call float @dx.op.unary.f32(i32 7, float %1994)  ; Saturate(value)
  %1996 = fmul fast float %1995, 5.000000e-01
  %1997 = fadd fast float %1996, 2.500000e-01
  %1998 = fdiv fast float 3.200000e+01, %1997
  %1999 = select i1 %1990, float 3.200000e+01, float %1998
  %2000 = fmul fast float %1999, 1.600000e+01
  %2001 = fmul fast float %1999, 9.000000e+00
  %2002 = fmul fast float %1970, %1984
  %2003 = fmul fast float %2002, %2000
  %2004 = fmul fast float %1973, %1986
  %2005 = fmul fast float %2004, %2001
  %2006 = call float @dx.op.unary.f32(i32 29, float %2003)  ; Round_z(value)
  %2007 = call float @dx.op.unary.f32(i32 29, float %2005)  ; Round_z(value)
  %2008 = call float @dx.op.unary.f32(i32 7, float %1946)  ; Saturate(value)
  %2009 = fmul fast float %2008, 2.000000e+00
  %2010 = fsub fast float 3.000000e+00, %2009
  %2011 = fmul fast float %1993, 4.000000e+01
  %2012 = fmul fast float %1991, 1.000000e+02
  %2013 = fadd fast float %2012, %2011
  %2014 = fmul fast float %1964, %2013
  %2015 = fptoui float %2014 to i32
  %2016 = uitofp i32 %76 to float
  %2017 = uitofp i32 %77 to float
  %2018 = fptoui float %2016 to i32
  %2019 = fptoui float %2017 to i32
  %2020 = lshr i32 %2019, 2
  %2021 = mul i32 %98, %2020
  %2022 = lshr i32 %2018, 3
  %2023 = add i32 %94, %2022
  %2024 = add i32 %2023, %96
  %2025 = add i32 %2024, %2021
  %2026 = shl i32 %2025, 2
  %2027 = shl i32 %2019, 3
  %2028 = and i32 %2027, 24
  %2029 = and i32 %2018, 7
  %2030 = or i32 %2028, %2029
  %2031 = shl i32 1, %2030
  %2032 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %2026, i32 undef)  ; BufferLoad(srv,index,wot)
  %2033 = extractvalue %dx.types.ResRet.i32 %2032, 0
  %2034 = and i32 %2033, %2031
  %2035 = icmp ne i32 %2034, 0
  %2036 = icmp eq i32 %2015, 0
  br i1 %2036, label %2153, label %2037, !dx.controlflow.hints !53

; <label>:2037                                    ; preds = %1930
  %2038 = uitofp i32 %2015 to float
  %2039 = fmul fast float %78, 5.000000e-01
  %2040 = fmul fast float %2039, %2038
  %2041 = fmul fast float %79, 5.000000e-01
  %2042 = fmul fast float %2041, %2038
  %2043 = call float @dx.op.binary.f32(i32 35, float 5.000000e-01, float %2040)  ; FMax(a,b)
  %2044 = call float @dx.op.binary.f32(i32 35, float 5.000000e-01, float %2042)  ; FMax(a,b)
  br label %2045

; <label>:2045                                    ; preds = %2140, %2037
  %2046 = phi float [ 0.000000e+00, %2037 ], [ %2143, %2140 ]
  %2047 = phi i32 [ 0, %2037 ], [ %2144, %2140 ]
  %2048 = fmul fast float %57, 0x3FF280E1E0000000
  %2049 = fmul fast float %58, 0x3FF280E1E0000000
  %2050 = sitofp i32 %2047 to float
  %2051 = fmul fast float %2050, 0x3FB99999A0000000
  %2052 = fadd fast float %2051, %2048
  %2053 = fadd fast float %2051, %2049
  %2054 = fmul fast float %2052, 1.024000e+03
  %2055 = fmul fast float %2053, 1.024000e+03
  %2056 = fadd fast float %2054, -5.120000e+02
  %2057 = fadd fast float %2055, -5.120000e+02
  %2058 = fmul fast float %2052, 0x4081BEDF00000000
  %2059 = fadd fast float %2058, 0xC071BEDF00000000
  %2060 = call float @dx.op.unary.f32(i32 22, float %2059)  ; Frc(value)
  %2061 = fmul fast float %2056, %2060
  %2062 = fadd fast float %2061, %2057
  %2063 = fmul fast float %2053, 0x4073BEBE20000000
  %2064 = fadd fast float %2063, 0xC063BEBE20000000
  %2065 = call float @dx.op.unary.f32(i32 22, float %2064)  ; Frc(value)
  %2066 = fmul fast float %2057, %2065
  %2067 = fadd fast float %2066, %2056
  %2068 = fmul fast float %2062, %2067
  %2069 = call float @dx.op.unary.f32(i32 22, float %2068)  ; Frc(value)
  %2070 = fmul fast float %2069, 2.000000e+00
  %2071 = fadd fast float %2070, -1.000000e+00
  %2072 = fmul fast float %2071, %2043
  %2073 = fmul fast float %57, 0x3FEB681740000000
  %2074 = fmul fast float %58, 0x3FEB681740000000
  %2075 = fmul fast float %2050, 0x3FC99999A0000000
  %2076 = fadd fast float %2075, 1.250000e-01
  %2077 = fadd fast float %2076, %2073
  %2078 = fadd fast float %2076, %2074
  %2079 = fmul fast float %2077, 1.024000e+03
  %2080 = fmul fast float %2078, 1.024000e+03
  %2081 = fadd fast float %2079, -5.120000e+02
  %2082 = fadd fast float %2080, -5.120000e+02
  %2083 = fmul fast float %2077, 0x4081BEDF00000000
  %2084 = fadd fast float %2083, 0xC071BEDF00000000
  %2085 = call float @dx.op.unary.f32(i32 22, float %2084)  ; Frc(value)
  %2086 = fmul fast float %2081, %2085
  %2087 = fadd fast float %2086, %2082
  %2088 = fmul fast float %2078, 0x4073BEBE20000000
  %2089 = fadd fast float %2088, 0xC063BEBE20000000
  %2090 = call float @dx.op.unary.f32(i32 22, float %2089)  ; Frc(value)
  %2091 = fmul fast float %2082, %2090
  %2092 = fadd fast float %2091, %2081
  %2093 = fmul fast float %2087, %2092
  %2094 = call float @dx.op.unary.f32(i32 22, float %2093)  ; Frc(value)
  %2095 = fmul fast float %2094, 2.000000e+00
  %2096 = fadd fast float %2095, -1.000000e+00
  %2097 = fmul fast float %2096, %2044
  %2098 = fptosi float %2072 to i32
  %2099 = sitofp i32 %2098 to float
  %2100 = fadd fast float %2099, %2016
  %2101 = fptosi float %2100 to i32
  %2102 = fptosi float %2097 to i32
  %2103 = sitofp i32 %2102 to float
  %2104 = fadd fast float %2103, %2017
  %2105 = fptosi float %2104 to i32
  %2106 = or i32 %2105, %2101
  %2107 = icmp slt i32 %2106, 0
  %2108 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %2109 = extractvalue %dx.types.CBufRet.f32 %2108, 0
  %2110 = extractvalue %dx.types.CBufRet.f32 %2108, 1
  %2111 = fptosi float %2109 to i32
  %2112 = fptosi float %2110 to i32
  %2113 = icmp sge i32 %2101, %2111
  %2114 = icmp sge i32 %2105, %2112
  %2115 = or i1 %2113, %2114
  %2116 = or i1 %2107, %2115
  br i1 %2116, label %2140, label %2117, !dx.controlflow.hints !50

; <label>:2117                                    ; preds = %2045
  %2118 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %17, i32 51)  ; CBufferLoadLegacy(handle,regIndex)
  %2119 = extractvalue %dx.types.CBufRet.i32 %2118, 1
  %2120 = shl i32 %2119, 2
  %2121 = extractvalue %dx.types.CBufRet.i32 %2118, 3
  %2122 = shl i32 %2121, 1
  %2123 = lshr i32 %2105, 2
  %2124 = extractvalue %dx.types.CBufRet.i32 %2118, 2
  %2125 = mul i32 %2124, %2123
  %2126 = lshr i32 %2101, 3
  %2127 = add i32 %2120, %2126
  %2128 = add i32 %2127, %2122
  %2129 = add i32 %2128, %2125
  %2130 = shl i32 %2129, 2
  %2131 = shl i32 %2105, 3
  %2132 = and i32 %2131, 24
  %2133 = and i32 %2101, 7
  %2134 = or i32 %2132, %2133
  %2135 = shl i32 1, %2134
  %2136 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %2130, i32 undef)  ; BufferLoad(srv,index,wot)
  %2137 = extractvalue %dx.types.ResRet.i32 %2136, 0
  %2138 = and i32 %2137, %2135
  %2139 = icmp ne i32 %2138, 0
  br label %2140

; <label>:2140                                    ; preds = %2117, %2045
  %2141 = phi i1 [ %2139, %2117 ], [ false, %2045 ]
  %2142 = uitofp i1 %2141 to float
  %2143 = fadd fast float %2142, %2046
  %2144 = add nuw nsw i32 %2047, 1
  %2145 = icmp eq i32 %2144, 5
  br i1 %2145, label %2146, label %2045

; <label>:2146                                    ; preds = %2140
  %2147 = uitofp i1 %2035 to float
  %2148 = fmul fast float %2147, 0x3FC99999A0000000
  %2149 = fmul fast float %2148, %2143
  %2150 = fadd fast float %2149, -5.000000e-01
  %2151 = fmul fast float %2150, 2.000000e+00
  %2152 = call float @dx.op.unary.f32(i32 7, float %2151)  ; Saturate(value)
  br label %2153

; <label>:2153                                    ; preds = %2146, %1930
  %2154 = phi float [ %2152, %2146 ], [ 0.000000e+00, %1930 ]
  %2155 = fdiv fast float %2006, %2000
  %2156 = fdiv fast float %2007, %2001
  %2157 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2158 = extractvalue %dx.types.CBufRet.f32 %2157, 3
  %2159 = fmul fast float %2158, %1955
  %2160 = fadd fast float %2159, %2155
  %2161 = fsub fast float %2156, %2159
  %2162 = call float @dx.op.unary.f32(i32 22, float %2160)  ; Frc(value)
  %2163 = call float @dx.op.unary.f32(i32 22, float %2161)  ; Frc(value)
  %2164 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %14, float %2162, float %2163, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2165 = extractvalue %dx.types.ResRet.f32 %2164, 0
  %2166 = fmul fast float %2165, %1960
  %2167 = call float @dx.op.unary.f32(i32 7, float %2166)  ; Saturate(value)
  %2168 = call float @dx.op.binary.f32(i32 35, float 0x3F847AE140000000, float %2167)  ; FMax(a,b)
  %2169 = fsub fast float -5.000000e-01, %2006
  %2170 = fadd fast float %2169, %2003
  %2171 = fsub fast float -5.000000e-01, %2007
  %2172 = fadd fast float %2171, %2005
  %2173 = fmul fast float %2170, 2.000000e+00
  %2174 = fmul fast float %2172, 2.000000e+00
  %2175 = call float @dx.op.dot2.f32(i32 54, float %2173, float %2174, float %2173, float %2174)  ; Dot2(ax,ay,bx,by)
  %2176 = call float @dx.op.unary.f32(i32 24, float %2175)  ; Sqrt(value)
  %2177 = fsub fast float 1.000000e+00, %2176
  %2178 = fmul fast float %2177, 2.000000e+00
  %2179 = call float @dx.op.unary.f32(i32 7, float %2178)  ; Saturate(value)
  %2180 = fadd fast float %2159, %1986
  %2181 = call float @dx.op.unary.f32(i32 22, float %2180)  ; Frc(value)
  %2182 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %13, float %1984, float %2181, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2183 = extractvalue %dx.types.ResRet.f32 %2182, 3
  %2184 = call float @dx.op.unary.f32(i32 7, float %2154)  ; Saturate(value)
  %2185 = fmul fast float %2183, %1947
  %2186 = fsub fast float %2184, %2185
  %2187 = call float @dx.op.unary.f32(i32 7, float %2186)  ; Saturate(value)
  %2188 = fmul fast float %2183, 1.250000e+00
  %2189 = fsub fast float %2184, %2188
  %2190 = call float @dx.op.unary.f32(i32 7, float %2189)  ; Saturate(value)
  %2191 = fmul fast float %2190, %2190
  %2192 = fmul fast float %2191, %2190
  %2193 = call float @dx.op.unary.f32(i32 7, float %2192)  ; Saturate(value)
  %2194 = fmul fast float %2193, 0x40285C2900000000
  %2195 = fsub fast float 1.400000e+01, %2194
  %2196 = fptoui float %2195 to i32
  %2197 = call float @dx.op.unary.f32(i32 22, float %2195)  ; Frc(value)
  %2198 = mul i32 %2196, 3
  %2199 = add i32 0, %2198
  %2200 = getelementptr [45 x float], [45 x float]* @supp_ramp.v.1dim, i32 0, i32 %2199
  %2201 = load float, float* %2200, align 4
  %2202 = mul i32 %2196, 3
  %2203 = add i32 1, %2202
  %2204 = getelementptr [45 x float], [45 x float]* @supp_ramp.v.1dim, i32 0, i32 %2203
  %2205 = load float, float* %2204, align 4
  %2206 = mul i32 %2196, 3
  %2207 = add i32 2, %2206
  %2208 = getelementptr [45 x float], [45 x float]* @supp_ramp.v.1dim, i32 0, i32 %2207
  %2209 = load float, float* %2208, align 4
  %2210 = add i32 %2196, 1
  %2211 = mul i32 %2210, 3
  %2212 = add i32 0, %2211
  %2213 = getelementptr [45 x float], [45 x float]* @supp_ramp.v.1dim, i32 0, i32 %2212
  %2214 = load float, float* %2213, align 4
  %2215 = mul i32 %2210, 3
  %2216 = add i32 1, %2215
  %2217 = getelementptr [45 x float], [45 x float]* @supp_ramp.v.1dim, i32 0, i32 %2216
  %2218 = load float, float* %2217, align 4
  %2219 = mul i32 %2210, 3
  %2220 = add i32 2, %2219
  %2221 = getelementptr [45 x float], [45 x float]* @supp_ramp.v.1dim, i32 0, i32 %2220
  %2222 = load float, float* %2221, align 4
  %2223 = fsub fast float %2214, %2201
  %2224 = fsub fast float %2218, %2205
  %2225 = fsub fast float %2222, %2209
  %2226 = fmul fast float %2223, %2197
  %2227 = fmul fast float %2224, %2197
  %2228 = fmul fast float %2225, %2197
  %2229 = fadd fast float %2226, %2201
  %2230 = fadd fast float %2227, %2205
  %2231 = fadd fast float %2228, %2209
  %2232 = fmul fast float %1943, %2229
  %2233 = fmul fast float %1944, %2230
  %2234 = fmul fast float %1945, %2231
  %2235 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 17)  ; CBufferLoadLegacy(handle,regIndex)
  %2236 = extractvalue %dx.types.CBufRet.f32 %2235, 0
  %2237 = fmul fast float %2008, %2008
  %2238 = fmul fast float %2237, %2010
  %2239 = fmul fast float %2238, %2168
  %2240 = fmul fast float %2239, %2179
  %2241 = fmul fast float %2240, %2187
  %2242 = fmul fast float %2241, %2236
  %2243 = fmul fast float %2232, %2232
  %2244 = fmul fast float %2243, 5.000000e+00
  %2245 = fmul fast float %2244, %2242
  %2246 = fmul fast float %2233, %2233
  %2247 = fmul fast float %2246, 5.000000e+00
  %2248 = fmul fast float %2247, %2242
  %2249 = fmul fast float %2242, 5.000000e+00
  %2250 = fmul fast float %2234, %2234
  %2251 = fmul fast float %2250, %2249
  %2252 = call float @dx.op.binary.f32(i32 36, float %2245, float 2.000000e+00)  ; FMin(a,b)
  %2253 = call float @dx.op.binary.f32(i32 36, float %2248, float 2.000000e+00)  ; FMin(a,b)
  %2254 = call float @dx.op.binary.f32(i32 36, float %2251, float 2.000000e+00)  ; FMin(a,b)
  %2255 = select i1 %1990, float 0x3FD3333340000000, float 7.500000e-01
  %2256 = fmul float %2255, %2242
  br label %5361

; <label>:2257                                    ; preds = %626
  %2258 = and i32 %666, 511
  %2259 = mul nuw nsw i32 %2258, 20
  %2260 = add nuw nsw i32 %2259, 4
  %2261 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %2260, i32 undef)  ; BufferLoad(srv,index,wot)
  %2262 = extractvalue %dx.types.ResRet.i32 %2261, 0
  %2263 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %2259, i32 undef)  ; BufferLoad(srv,index,wot)
  %2264 = extractvalue %dx.types.ResRet.i32 %2263, 0
  %2265 = and i32 %2264, 255
  %2266 = uitofp i32 %2265 to float
  %2267 = lshr i32 %2264, 8
  %2268 = and i32 %2267, 255
  %2269 = uitofp i32 %2268 to float
  %2270 = lshr i32 %2264, 16
  %2271 = and i32 %2270, 255
  %2272 = uitofp i32 %2271 to float
  %2273 = lshr i32 %2264, 24
  %2274 = uitofp i32 %2273 to float
  %2275 = fmul fast float %2266, 0x3F70101020000000
  %2276 = fmul fast float %2269, 0x3F70101020000000
  %2277 = fmul fast float %2272, 0x3F70101020000000
  %2278 = fmul fast float %2274, 0x3F70101020000000
  %2279 = lshr i32 %2262, 8
  %2280 = and i32 %2279, 65535
  %2281 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2280)  ; LegacyF16ToF32(value)
  %2282 = fcmp fast oeq float %2281, 0.000000e+00
  br i1 %2282, label %2382, label %2283, !dx.controlflow.hints !49

; <label>:2283                                    ; preds = %2257
  %2284 = fmul fast float %2281, %78
  %2285 = fptosi float %2284 to i32
  %2286 = fmul fast float %2281, %79
  %2287 = fptosi float %2286 to i32
  %2288 = call i32 @dx.op.binary.i32(i32 37, i32 1, i32 %2285)  ; IMax(a,b)
  %2289 = call i32 @dx.op.binary.i32(i32 37, i32 1, i32 %2287)  ; IMax(a,b)
  %2290 = sub i32 %77, %2289
  %2291 = or i32 %2290, %76
  %2292 = icmp slt i32 %2291, 0
  %2293 = fptosi float %72 to i32
  %2294 = fptosi float %73 to i32
  %2295 = icmp sge i32 %76, %2293
  %2296 = icmp sge i32 %2290, %2294
  %2297 = or i1 %2295, %2296
  %2298 = or i1 %2292, %2297
  br i1 %2298, label %2312, label %2299, !dx.controlflow.hints !50

; <label>:2299                                    ; preds = %2283
  %2300 = lshr i32 %2290, 2
  %2301 = mul i32 %98, %2300
  %2302 = add i32 %102, %2301
  %2303 = shl i32 %2302, 2
  %2304 = shl i32 %2290, 3
  %2305 = and i32 %2304, 24
  %2306 = or i32 %2305, %107
  %2307 = shl i32 1, %2306
  %2308 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %2303, i32 undef)  ; BufferLoad(srv,index,wot)
  %2309 = extractvalue %dx.types.ResRet.i32 %2308, 0
  %2310 = and i32 %2309, %2307
  %2311 = icmp ne i32 %2310, 0
  br label %2312

; <label>:2312                                    ; preds = %2299, %2283
  %2313 = phi i1 [ %2311, %2299 ], [ false, %2283 ]
  %2314 = add i32 %2289, %77
  %2315 = or i32 %2314, %76
  %2316 = icmp slt i32 %2315, 0
  %2317 = icmp sge i32 %2314, %2294
  %2318 = or i1 %2295, %2317
  %2319 = or i1 %2316, %2318
  br i1 %2319, label %2333, label %2320, !dx.controlflow.hints !50

; <label>:2320                                    ; preds = %2312
  %2321 = lshr i32 %2314, 2
  %2322 = mul i32 %98, %2321
  %2323 = add i32 %102, %2322
  %2324 = shl i32 %2323, 2
  %2325 = shl i32 %2314, 3
  %2326 = and i32 %2325, 24
  %2327 = or i32 %2326, %107
  %2328 = shl i32 1, %2327
  %2329 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %2324, i32 undef)  ; BufferLoad(srv,index,wot)
  %2330 = extractvalue %dx.types.ResRet.i32 %2329, 0
  %2331 = and i32 %2330, %2328
  %2332 = icmp ne i32 %2331, 0
  br label %2333

; <label>:2333                                    ; preds = %2320, %2312
  %2334 = phi i1 [ %2332, %2320 ], [ false, %2312 ]
  %2335 = and i1 %2313, %2334
  %2336 = sub i32 %76, %2288
  %2337 = or i32 %2336, %77
  %2338 = icmp slt i32 %2337, 0
  %2339 = icmp sge i32 %2336, %2293
  %2340 = icmp sge i32 %77, %2294
  %2341 = or i1 %2339, %2340
  %2342 = or i1 %2338, %2341
  br i1 %2342, label %2356, label %2343, !dx.controlflow.hints !50

; <label>:2343                                    ; preds = %2333
  %2344 = lshr i32 %2336, 3
  %2345 = add i32 %94, %2344
  %2346 = add i32 %2345, %96
  %2347 = add i32 %2346, %99
  %2348 = shl i32 %2347, 2
  %2349 = and i32 %2336, 7
  %2350 = or i32 %2349, %106
  %2351 = shl i32 1, %2350
  %2352 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %2348, i32 undef)  ; BufferLoad(srv,index,wot)
  %2353 = extractvalue %dx.types.ResRet.i32 %2352, 0
  %2354 = and i32 %2353, %2351
  %2355 = icmp ne i32 %2354, 0
  br label %2356

; <label>:2356                                    ; preds = %2343, %2333
  %2357 = phi i1 [ %2355, %2343 ], [ false, %2333 ]
  %2358 = and i1 %2335, %2357
  %2359 = add i32 %2288, %76
  %2360 = or i32 %2359, %77
  %2361 = icmp slt i32 %2360, 0
  %2362 = icmp sge i32 %2359, %2293
  %2363 = or i1 %2362, %2340
  %2364 = or i1 %2361, %2363
  br i1 %2364, label %2378, label %2365, !dx.controlflow.hints !50

; <label>:2365                                    ; preds = %2356
  %2366 = lshr i32 %2359, 3
  %2367 = add i32 %94, %2366
  %2368 = add i32 %2367, %96
  %2369 = add i32 %2368, %99
  %2370 = shl i32 %2369, 2
  %2371 = and i32 %2359, 7
  %2372 = or i32 %2371, %106
  %2373 = shl i32 1, %2372
  %2374 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %2370, i32 undef)  ; BufferLoad(srv,index,wot)
  %2375 = extractvalue %dx.types.ResRet.i32 %2374, 0
  %2376 = and i32 %2375, %2373
  %2377 = icmp ne i32 %2376, 0
  br label %2378

; <label>:2378                                    ; preds = %2365, %2356
  %2379 = phi i1 [ %2377, %2365 ], [ false, %2356 ]
  %2380 = and i1 %2358, %2379
  %2381 = xor i1 %2380, true
  br label %2382

; <label>:2382                                    ; preds = %2378, %2257
  %2383 = phi i1 [ %2381, %2378 ], [ false, %2257 ]
  %2384 = and i32 %666, 1114112
  %2385 = icmp ne i32 %2384, 0
  %2386 = and i1 %2385, %122
  %2387 = or i1 %2386, %2383
  %2388 = select i1 %2387, float %2275, float 0.000000e+00
  %2389 = select i1 %2387, float %2276, float 0.000000e+00
  %2390 = select i1 %2387, float %2277, float 0.000000e+00
  %2391 = select i1 %2387, float %2278, float 0.000000e+00
  br label %5361

; <label>:2392                                    ; preds = %626
  %2393 = and i32 %666, 511
  %2394 = mul nuw nsw i32 %2393, 20
  %2395 = add nuw nsw i32 %2394, 4
  %2396 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %2395, i32 undef)  ; BufferLoad(srv,index,wot)
  %2397 = extractvalue %dx.types.ResRet.i32 %2396, 0
  %2398 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %2394, i32 undef)  ; BufferLoad(srv,index,wot)
  %2399 = extractvalue %dx.types.ResRet.i32 %2398, 0
  %2400 = and i32 %2399, 255
  %2401 = uitofp i32 %2400 to float
  %2402 = lshr i32 %2399, 8
  %2403 = and i32 %2402, 255
  %2404 = uitofp i32 %2403 to float
  %2405 = lshr i32 %2399, 16
  %2406 = and i32 %2405, 255
  %2407 = uitofp i32 %2406 to float
  %2408 = lshr i32 %2399, 24
  %2409 = uitofp i32 %2408 to float
  %2410 = fmul fast float %2401, 0x3F70101020000000
  %2411 = fmul fast float %2404, 0x3F70101020000000
  %2412 = fmul fast float %2407, 0x3F70101020000000
  %2413 = fmul fast float %2409, 0x3F70101020000000
  %2414 = and i32 %666, 2097152
  %2415 = icmp ne i32 %2414, 0
  %2416 = lshr i32 %2397, 8
  %2417 = and i32 %2416, 65535
  %2418 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2417)  ; LegacyF16ToF32(value)
  %2419 = and i32 %666, 65536
  %2420 = icmp ne i32 %2419, 0
  %2421 = select i1 %2420, float 1.000000e+00, float 0.000000e+00
  br i1 %121, label %2451, label %2422, !dx.controlflow.hints !48

; <label>:2422                                    ; preds = %2392
  %2423 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2424 = extractvalue %dx.types.CBufRet.f32 %2423, 0
  %2425 = extractvalue %dx.types.CBufRet.f32 %2423, 1
  %2426 = extractvalue %dx.types.CBufRet.f32 %2423, 2
  %2427 = extractvalue %dx.types.CBufRet.f32 %2423, 3
  %2428 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %2429 = extractvalue %dx.types.CBufRet.f32 %2428, 0
  %2430 = extractvalue %dx.types.CBufRet.f32 %2428, 1
  %2431 = extractvalue %dx.types.CBufRet.f32 %2428, 2
  %2432 = extractvalue %dx.types.CBufRet.f32 %2428, 3
  %2433 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %2434 = extractvalue %dx.types.CBufRet.f32 %2433, 0
  %2435 = fadd fast float %2410, -1.000000e+00
  %2436 = fadd fast float %2411, -1.000000e+00
  %2437 = fadd fast float %2412, -1.000000e+00
  %2438 = fadd fast float %2413, -1.000000e+00
  %2439 = fmul fast float %2434, %2435
  %2440 = fmul fast float %2434, %2436
  %2441 = fmul fast float %2434, %2437
  %2442 = fmul fast float %2434, %2438
  %2443 = fadd fast float %2439, 1.000000e+00
  %2444 = fadd fast float %2440, 1.000000e+00
  %2445 = fadd fast float %2441, 1.000000e+00
  %2446 = fadd fast float %2442, 1.000000e+00
  %2447 = fmul fast float %2443, %2429
  %2448 = fmul fast float %2444, %2430
  %2449 = fmul fast float %2445, %2431
  %2450 = fmul fast float %2446, %2432
  br label %2457

; <label>:2451                                    ; preds = %2392
  %2452 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %2453 = extractvalue %dx.types.CBufRet.f32 %2452, 0
  %2454 = extractvalue %dx.types.CBufRet.f32 %2452, 1
  %2455 = extractvalue %dx.types.CBufRet.f32 %2452, 2
  %2456 = extractvalue %dx.types.CBufRet.f32 %2452, 3
  br label %2457

; <label>:2457                                    ; preds = %2451, %2422
  %2458 = phi float [ %2447, %2422 ], [ %2410, %2451 ]
  %2459 = phi float [ %2448, %2422 ], [ %2411, %2451 ]
  %2460 = phi float [ %2449, %2422 ], [ %2412, %2451 ]
  %2461 = phi float [ %2450, %2422 ], [ %2413, %2451 ]
  %2462 = phi float [ %2424, %2422 ], [ %2453, %2451 ]
  %2463 = phi float [ %2425, %2422 ], [ %2454, %2451 ]
  %2464 = phi float [ %2426, %2422 ], [ %2455, %2451 ]
  %2465 = phi float [ %2427, %2422 ], [ %2456, %2451 ]
  %2466 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2467 = extractvalue %dx.types.CBufRet.f32 %2466, 0
  %2468 = fmul fast float %2467, 2.000000e+00
  %2469 = select i1 %2415, float %2468, float 1.000000e+00
  %2470 = fmul fast float %2469, %2458
  %2471 = fmul fast float %2469, %2459
  %2472 = fmul fast float %2469, %2460
  %2473 = fmul fast float %2469, %2461
  %2474 = fcmp fast oeq float %2418, 0.000000e+00
  br i1 %2474, label %2574, label %2475, !dx.controlflow.hints !49

; <label>:2475                                    ; preds = %2457
  %2476 = fmul fast float %2418, %78
  %2477 = fptosi float %2476 to i32
  %2478 = fmul fast float %2418, %79
  %2479 = fptosi float %2478 to i32
  %2480 = call i32 @dx.op.binary.i32(i32 37, i32 1, i32 %2477)  ; IMax(a,b)
  %2481 = call i32 @dx.op.binary.i32(i32 37, i32 1, i32 %2479)  ; IMax(a,b)
  %2482 = sub i32 %77, %2481
  %2483 = or i32 %2482, %76
  %2484 = icmp slt i32 %2483, 0
  %2485 = fptosi float %72 to i32
  %2486 = fptosi float %73 to i32
  %2487 = icmp sge i32 %76, %2485
  %2488 = icmp sge i32 %2482, %2486
  %2489 = or i1 %2487, %2488
  %2490 = or i1 %2484, %2489
  br i1 %2490, label %2504, label %2491, !dx.controlflow.hints !50

; <label>:2491                                    ; preds = %2475
  %2492 = lshr i32 %2482, 2
  %2493 = mul i32 %98, %2492
  %2494 = add i32 %102, %2493
  %2495 = shl i32 %2494, 2
  %2496 = shl i32 %2482, 3
  %2497 = and i32 %2496, 24
  %2498 = or i32 %2497, %107
  %2499 = shl i32 1, %2498
  %2500 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %2495, i32 undef)  ; BufferLoad(srv,index,wot)
  %2501 = extractvalue %dx.types.ResRet.i32 %2500, 0
  %2502 = and i32 %2501, %2499
  %2503 = icmp ne i32 %2502, 0
  br label %2504

; <label>:2504                                    ; preds = %2491, %2475
  %2505 = phi i1 [ %2503, %2491 ], [ false, %2475 ]
  %2506 = add i32 %2481, %77
  %2507 = or i32 %2506, %76
  %2508 = icmp slt i32 %2507, 0
  %2509 = icmp sge i32 %2506, %2486
  %2510 = or i1 %2487, %2509
  %2511 = or i1 %2508, %2510
  br i1 %2511, label %2525, label %2512, !dx.controlflow.hints !50

; <label>:2512                                    ; preds = %2504
  %2513 = lshr i32 %2506, 2
  %2514 = mul i32 %98, %2513
  %2515 = add i32 %102, %2514
  %2516 = shl i32 %2515, 2
  %2517 = shl i32 %2506, 3
  %2518 = and i32 %2517, 24
  %2519 = or i32 %2518, %107
  %2520 = shl i32 1, %2519
  %2521 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %2516, i32 undef)  ; BufferLoad(srv,index,wot)
  %2522 = extractvalue %dx.types.ResRet.i32 %2521, 0
  %2523 = and i32 %2522, %2520
  %2524 = icmp ne i32 %2523, 0
  br label %2525

; <label>:2525                                    ; preds = %2512, %2504
  %2526 = phi i1 [ %2524, %2512 ], [ false, %2504 ]
  %2527 = and i1 %2505, %2526
  %2528 = sub i32 %76, %2480
  %2529 = or i32 %2528, %77
  %2530 = icmp slt i32 %2529, 0
  %2531 = icmp sge i32 %2528, %2485
  %2532 = icmp sge i32 %77, %2486
  %2533 = or i1 %2531, %2532
  %2534 = or i1 %2530, %2533
  br i1 %2534, label %2548, label %2535, !dx.controlflow.hints !50

; <label>:2535                                    ; preds = %2525
  %2536 = lshr i32 %2528, 3
  %2537 = add i32 %94, %2536
  %2538 = add i32 %2537, %96
  %2539 = add i32 %2538, %99
  %2540 = shl i32 %2539, 2
  %2541 = and i32 %2528, 7
  %2542 = or i32 %2541, %106
  %2543 = shl i32 1, %2542
  %2544 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %2540, i32 undef)  ; BufferLoad(srv,index,wot)
  %2545 = extractvalue %dx.types.ResRet.i32 %2544, 0
  %2546 = and i32 %2545, %2543
  %2547 = icmp ne i32 %2546, 0
  br label %2548

; <label>:2548                                    ; preds = %2535, %2525
  %2549 = phi i1 [ %2547, %2535 ], [ false, %2525 ]
  %2550 = and i1 %2527, %2549
  %2551 = add i32 %2480, %76
  %2552 = or i32 %2551, %77
  %2553 = icmp slt i32 %2552, 0
  %2554 = icmp sge i32 %2551, %2485
  %2555 = or i1 %2554, %2532
  %2556 = or i1 %2553, %2555
  br i1 %2556, label %2570, label %2557, !dx.controlflow.hints !50

; <label>:2557                                    ; preds = %2548
  %2558 = lshr i32 %2551, 3
  %2559 = add i32 %94, %2558
  %2560 = add i32 %2559, %96
  %2561 = add i32 %2560, %99
  %2562 = shl i32 %2561, 2
  %2563 = and i32 %2551, 7
  %2564 = or i32 %2563, %106
  %2565 = shl i32 1, %2564
  %2566 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %2562, i32 undef)  ; BufferLoad(srv,index,wot)
  %2567 = extractvalue %dx.types.ResRet.i32 %2566, 0
  %2568 = and i32 %2567, %2565
  %2569 = icmp ne i32 %2568, 0
  br label %2570

; <label>:2570                                    ; preds = %2557, %2548
  %2571 = phi i1 [ %2569, %2557 ], [ false, %2548 ]
  %2572 = and i1 %2550, %2571
  %2573 = xor i1 %2572, true
  br label %2574

; <label>:2574                                    ; preds = %2570, %2457
  %2575 = phi i1 [ %2573, %2570 ], [ false, %2457 ]
  %2576 = add nuw nsw i32 %2394, 12
  %2577 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %2576, i32 undef)  ; BufferLoad(srv,index,wot)
  %2578 = extractvalue %dx.types.ResRet.i32 %2577, 0
  %2579 = and i32 %2578, 65535
  %2580 = uitofp i32 %2579 to float
  %2581 = lshr i32 %2578, 16
  %2582 = uitofp i32 %2581 to float
  %2583 = fmul fast float %2580, 0x3EF0002000000000
  %2584 = fmul fast float %2582, 0x3EF0002000000000
  %2585 = add nuw nsw i32 %2394, 8
  %2586 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %2585, i32 undef)  ; BufferLoad(srv,index,wot)
  %2587 = extractvalue %dx.types.ResRet.i32 %2586, 0
  %2588 = and i32 %2587, 65535
  %2589 = uitofp i32 %2588 to float
  %2590 = fmul fast float %2589, 0x3EF0002000000000
  %2591 = lshr i32 %2587, 16
  %2592 = uitofp i32 %2591 to float
  %2593 = fmul fast float %2592, 0x3EF0002000000000
  %2594 = fsub fast float %57, %2590
  %2595 = fdiv fast float %2594, %2583
  %2596 = fsub fast float %58, %2593
  %2597 = fdiv fast float %2596, %2584
  %2598 = extractvalue %dx.types.CBufRet.f32 %2466, 3
  %2599 = fmul fast float %2598, 0x3FA99999A0000000
  %2600 = fadd fast float %2599, %2597
  %2601 = call float @dx.op.unary.f32(i32 22, float %2595)  ; Frc(value)
  %2602 = call float @dx.op.unary.f32(i32 22, float %2600)  ; Frc(value)
  %2603 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %13, float %2601, float %2602, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2604 = extractvalue %dx.types.ResRet.f32 %2603, 1
  %2605 = extractvalue %dx.types.ResRet.f32 %2603, 3
  %2606 = and i32 %2397, 255
  %2607 = uitofp i32 %2606 to float
  %2608 = fmul fast float %2607, 0x4010101020000000
  %2609 = fadd fast float %2608, -5.120000e+02
  %2610 = fmul fast float %2607, 0x4001D0AFC0000000
  %2611 = fadd fast float %2610, 0xC071BEDF00000000
  %2612 = call float @dx.op.unary.f32(i32 22, float %2611)  ; Frc(value)
  %2613 = fmul fast float %2609, %2612
  %2614 = fadd fast float %2613, %2609
  %2615 = fmul fast float %2607, 0x3FF3D290C0000000
  %2616 = fadd fast float %2615, 0xC063BEBE20000000
  %2617 = call float @dx.op.unary.f32(i32 22, float %2616)  ; Frc(value)
  %2618 = fmul fast float %2609, %2617
  %2619 = fadd fast float %2618, %2609
  %2620 = fmul fast float %2614, %2619
  %2621 = call float @dx.op.unary.f32(i32 22, float %2620)  ; Frc(value)
  %2622 = fadd fast float %2597, 1.000000e+00
  %2623 = fmul fast float %2622, 0x401E322D00000000
  %2624 = fmul fast float %2623, %2621
  %2625 = fmul fast float %2598, 0x3FE921FB60000000
  %2626 = fadd fast float %2625, %2624
  %2627 = call float @dx.op.unary.f32(i32 13, float %2626)  ; Sin(value)
  %2628 = uitofp i32 %76 to float
  %2629 = uitofp i32 %77 to float
  %2630 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %2631 = extractvalue %dx.types.CBufRet.f32 %2630, 2
  %2632 = fmul fast float %2631, 0x40165A5B00000000
  %2633 = fadd fast float %2632, %2628
  %2634 = fadd fast float %2632, %2629
  %2635 = extractvalue %dx.types.CBufRet.f32 %2630, 0
  %2636 = fmul fast float %2635, 2.000000e+00
  %2637 = fadd fast float %2636, -1.000000e+00
  %2638 = fmul fast float %2637, %2633
  %2639 = fmul fast float %2637, %2634
  %2640 = call float @dx.op.dot2.f32(i32 54, float %2638, float %2639, float 0x3FB12E2860000000, float 0x3F77E8B200000000)  ; Dot2(ax,ay,bx,by)
  %2641 = call float @dx.op.unary.f32(i32 22, float %2640)  ; Frc(value)
  %2642 = fmul fast float %2641, 0x404A7DD040000000
  %2643 = call float @dx.op.unary.f32(i32 22, float %2642)  ; Frc(value)
  br i1 %2575, label %2644, label %2655, !dx.controlflow.hints !56

; <label>:2644                                    ; preds = %2574
  %2645 = icmp ne i32 %668, 0
  %2646 = fadd fast float %2627, 1.000000e+00
  %2647 = call float @dx.op.unary.f32(i32 23, float %2643)  ; Log(value)
  %2648 = fmul fast float %2647, %2646
  %2649 = call float @dx.op.unary.f32(i32 21, float %2648)  ; Exp(value)
  %2650 = and i1 %121, %2645
  %2651 = uitofp i1 %2650 to float
  %2652 = fmul fast float %2473, %2421
  %2653 = fmul fast float %2652, %2651
  %2654 = fmul fast float %2653, %2649
  br label %5361

; <label>:2655                                    ; preds = %2574
  %2656 = and i32 %666, 262144
  %2657 = fcmp fast ole float %2421, 0.000000e+00
  %2658 = icmp eq i32 %2656, 0
  %2659 = and i1 %121, %2658
  %2660 = or i1 %2657, %2659
  br i1 %2660, label %5361, label %2661, !dx.controlflow.hints !57

; <label>:2661                                    ; preds = %2655
  %2662 = fmul fast float %2598, 0x3FF921FB60000000
  %2663 = fadd fast float %2662, %2624
  %2664 = call float @dx.op.unary.f32(i32 13, float %2663)  ; Sin(value)
  %2665 = fmul fast float %2664, 7.500000e-01
  %2666 = fadd fast float %2665, 1.500000e+00
  %2667 = fmul fast float %2580, 0x3E8999CCE0000000
  %2668 = fmul fast float %2667, %72
  %2669 = fmul fast float %73, 0x3E8999CCE0000000
  %2670 = fmul fast float %2669, %2582
  %2671 = call float @dx.op.binary.f32(i32 35, float %2668, float 5.000000e-01)  ; FMax(a,b)
  %2672 = call float @dx.op.binary.f32(i32 35, float %2670, float 5.000000e-01)  ; FMax(a,b)
  %2673 = fmul fast float %2666, %2671
  %2674 = fmul fast float %2672, %2666
  %2675 = fsub fast float 1.000000e+00, %2604
  %2676 = fadd fast float %2675, %2643
  %2677 = fmul fast float %2676, 5.000000e+00
  %2678 = call float @dx.op.unary.f32(i32 28, float %2673)  ; Round_pi(value)
  %2679 = call float @dx.op.unary.f32(i32 28, float %2674)  ; Round_pi(value)
  %2680 = fptosi float %2678 to i32
  %2681 = fptosi float %2679 to i32
  %2682 = sub i32 %77, %2681
  %2683 = or i32 %2682, %76
  %2684 = icmp slt i32 %2683, 0
  %2685 = fptosi float %72 to i32
  %2686 = fptosi float %73 to i32
  %2687 = icmp sge i32 %76, %2685
  %2688 = icmp sge i32 %2682, %2686
  %2689 = or i1 %2687, %2688
  %2690 = or i1 %2684, %2689
  br i1 %2690, label %2704, label %2691, !dx.controlflow.hints !50

; <label>:2691                                    ; preds = %2661
  %2692 = lshr i32 %2682, 2
  %2693 = mul i32 %98, %2692
  %2694 = add i32 %102, %2693
  %2695 = shl i32 %2694, 2
  %2696 = shl i32 %2682, 3
  %2697 = and i32 %2696, 24
  %2698 = or i32 %2697, %107
  %2699 = shl i32 1, %2698
  %2700 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %2695, i32 undef)  ; BufferLoad(srv,index,wot)
  %2701 = extractvalue %dx.types.ResRet.i32 %2700, 0
  %2702 = and i32 %2701, %2699
  %2703 = icmp ne i32 %2702, 0
  br label %2704

; <label>:2704                                    ; preds = %2691, %2661
  %2705 = phi i1 [ %2703, %2691 ], [ false, %2661 ]
  %2706 = xor i1 %2705, true
  %2707 = uitofp i1 %2706 to float
  %2708 = fadd fast float %2707, %2677
  %2709 = add i32 %2681, %77
  %2710 = or i32 %2709, %76
  %2711 = icmp slt i32 %2710, 0
  %2712 = icmp sge i32 %2709, %2686
  %2713 = or i1 %2687, %2712
  %2714 = or i1 %2711, %2713
  br i1 %2714, label %2728, label %2715, !dx.controlflow.hints !50

; <label>:2715                                    ; preds = %2704
  %2716 = lshr i32 %2709, 2
  %2717 = mul i32 %98, %2716
  %2718 = add i32 %102, %2717
  %2719 = shl i32 %2718, 2
  %2720 = shl i32 %2709, 3
  %2721 = and i32 %2720, 24
  %2722 = or i32 %2721, %107
  %2723 = shl i32 1, %2722
  %2724 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %2719, i32 undef)  ; BufferLoad(srv,index,wot)
  %2725 = extractvalue %dx.types.ResRet.i32 %2724, 0
  %2726 = and i32 %2725, %2723
  %2727 = icmp ne i32 %2726, 0
  br label %2728

; <label>:2728                                    ; preds = %2715, %2704
  %2729 = phi i1 [ %2727, %2715 ], [ false, %2704 ]
  %2730 = xor i1 %2729, true
  %2731 = uitofp i1 %2730 to float
  %2732 = fadd fast float %2708, %2731
  %2733 = sub i32 %76, %2680
  %2734 = or i32 %2733, %77
  %2735 = icmp slt i32 %2734, 0
  %2736 = icmp sge i32 %2733, %2685
  %2737 = icmp sge i32 %77, %2686
  %2738 = or i1 %2736, %2737
  %2739 = or i1 %2735, %2738
  br i1 %2739, label %2753, label %2740, !dx.controlflow.hints !50

; <label>:2740                                    ; preds = %2728
  %2741 = lshr i32 %2733, 3
  %2742 = add i32 %94, %2741
  %2743 = add i32 %2742, %96
  %2744 = add i32 %2743, %99
  %2745 = shl i32 %2744, 2
  %2746 = and i32 %2733, 7
  %2747 = or i32 %2746, %106
  %2748 = shl i32 1, %2747
  %2749 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %2745, i32 undef)  ; BufferLoad(srv,index,wot)
  %2750 = extractvalue %dx.types.ResRet.i32 %2749, 0
  %2751 = and i32 %2750, %2748
  %2752 = icmp ne i32 %2751, 0
  br label %2753

; <label>:2753                                    ; preds = %2740, %2728
  %2754 = phi i1 [ %2752, %2740 ], [ false, %2728 ]
  %2755 = xor i1 %2754, true
  %2756 = uitofp i1 %2755 to float
  %2757 = fadd fast float %2732, %2756
  %2758 = add i32 %2680, %76
  %2759 = or i32 %2758, %77
  %2760 = icmp slt i32 %2759, 0
  %2761 = icmp sge i32 %2758, %2685
  %2762 = or i1 %2761, %2737
  %2763 = or i1 %2760, %2762
  br i1 %2763, label %2777, label %2764, !dx.controlflow.hints !50

; <label>:2764                                    ; preds = %2753
  %2765 = lshr i32 %2758, 3
  %2766 = add i32 %94, %2765
  %2767 = add i32 %2766, %96
  %2768 = add i32 %2767, %99
  %2769 = shl i32 %2768, 2
  %2770 = and i32 %2758, 7
  %2771 = or i32 %2770, %106
  %2772 = shl i32 1, %2771
  %2773 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %2769, i32 undef)  ; BufferLoad(srv,index,wot)
  %2774 = extractvalue %dx.types.ResRet.i32 %2773, 0
  %2775 = and i32 %2774, %2772
  %2776 = icmp ne i32 %2775, 0
  br label %2777

; <label>:2777                                    ; preds = %2764, %2753
  %2778 = phi i1 [ %2776, %2764 ], [ false, %2753 ]
  %2779 = xor i1 %2778, true
  %2780 = uitofp i1 %2779 to float
  %2781 = fadd fast float %2757, %2780
  %2782 = or i32 %2682, %2733
  %2783 = icmp slt i32 %2782, 0
  %2784 = or i1 %2736, %2688
  %2785 = or i1 %2783, %2784
  br i1 %2785, label %2803, label %2786, !dx.controlflow.hints !50

; <label>:2786                                    ; preds = %2777
  %2787 = lshr i32 %2682, 2
  %2788 = mul i32 %98, %2787
  %2789 = lshr i32 %2733, 3
  %2790 = add i32 %94, %2789
  %2791 = add i32 %2790, %96
  %2792 = add i32 %2791, %2788
  %2793 = shl i32 %2792, 2
  %2794 = shl i32 %2682, 3
  %2795 = and i32 %2794, 24
  %2796 = and i32 %2733, 7
  %2797 = or i32 %2795, %2796
  %2798 = shl i32 1, %2797
  %2799 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %2793, i32 undef)  ; BufferLoad(srv,index,wot)
  %2800 = extractvalue %dx.types.ResRet.i32 %2799, 0
  %2801 = and i32 %2800, %2798
  %2802 = icmp ne i32 %2801, 0
  br label %2803

; <label>:2803                                    ; preds = %2786, %2777
  %2804 = phi i1 [ %2802, %2786 ], [ false, %2777 ]
  %2805 = xor i1 %2804, true
  %2806 = uitofp i1 %2805 to float
  %2807 = fadd fast float %2781, %2806
  %2808 = or i32 %2682, %2758
  %2809 = icmp slt i32 %2808, 0
  %2810 = or i1 %2761, %2688
  %2811 = or i1 %2809, %2810
  br i1 %2811, label %2829, label %2812, !dx.controlflow.hints !50

; <label>:2812                                    ; preds = %2803
  %2813 = lshr i32 %2682, 2
  %2814 = mul i32 %98, %2813
  %2815 = lshr i32 %2758, 3
  %2816 = add i32 %94, %2815
  %2817 = add i32 %2816, %96
  %2818 = add i32 %2817, %2814
  %2819 = shl i32 %2818, 2
  %2820 = shl i32 %2682, 3
  %2821 = and i32 %2820, 24
  %2822 = and i32 %2758, 7
  %2823 = or i32 %2821, %2822
  %2824 = shl i32 1, %2823
  %2825 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %2819, i32 undef)  ; BufferLoad(srv,index,wot)
  %2826 = extractvalue %dx.types.ResRet.i32 %2825, 0
  %2827 = and i32 %2826, %2824
  %2828 = icmp ne i32 %2827, 0
  br label %2829

; <label>:2829                                    ; preds = %2812, %2803
  %2830 = phi i1 [ %2828, %2812 ], [ false, %2803 ]
  %2831 = xor i1 %2830, true
  %2832 = uitofp i1 %2831 to float
  %2833 = fadd fast float %2807, %2832
  %2834 = or i32 %2709, %2733
  %2835 = icmp slt i32 %2834, 0
  %2836 = or i1 %2736, %2712
  %2837 = or i1 %2835, %2836
  br i1 %2837, label %2855, label %2838, !dx.controlflow.hints !50

; <label>:2838                                    ; preds = %2829
  %2839 = lshr i32 %2709, 2
  %2840 = mul i32 %98, %2839
  %2841 = lshr i32 %2733, 3
  %2842 = add i32 %94, %2841
  %2843 = add i32 %2842, %96
  %2844 = add i32 %2843, %2840
  %2845 = shl i32 %2844, 2
  %2846 = shl i32 %2709, 3
  %2847 = and i32 %2846, 24
  %2848 = and i32 %2733, 7
  %2849 = or i32 %2847, %2848
  %2850 = shl i32 1, %2849
  %2851 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %2845, i32 undef)  ; BufferLoad(srv,index,wot)
  %2852 = extractvalue %dx.types.ResRet.i32 %2851, 0
  %2853 = and i32 %2852, %2850
  %2854 = icmp ne i32 %2853, 0
  br label %2855

; <label>:2855                                    ; preds = %2838, %2829
  %2856 = phi i1 [ %2854, %2838 ], [ false, %2829 ]
  %2857 = xor i1 %2856, true
  %2858 = uitofp i1 %2857 to float
  %2859 = fadd fast float %2833, %2858
  %2860 = or i32 %2709, %2758
  %2861 = icmp slt i32 %2860, 0
  %2862 = or i1 %2761, %2712
  %2863 = or i1 %2861, %2862
  br i1 %2863, label %2881, label %2864, !dx.controlflow.hints !50

; <label>:2864                                    ; preds = %2855
  %2865 = lshr i32 %2709, 2
  %2866 = mul i32 %98, %2865
  %2867 = lshr i32 %2758, 3
  %2868 = add i32 %94, %2867
  %2869 = add i32 %2868, %96
  %2870 = add i32 %2869, %2866
  %2871 = shl i32 %2870, 2
  %2872 = shl i32 %2709, 3
  %2873 = and i32 %2872, 24
  %2874 = and i32 %2758, 7
  %2875 = or i32 %2873, %2874
  %2876 = shl i32 1, %2875
  %2877 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %2871, i32 undef)  ; BufferLoad(srv,index,wot)
  %2878 = extractvalue %dx.types.ResRet.i32 %2877, 0
  %2879 = and i32 %2878, %2876
  %2880 = icmp ne i32 %2879, 0
  br label %2881

; <label>:2881                                    ; preds = %2864, %2855
  %2882 = phi i1 [ %2880, %2864 ], [ false, %2855 ]
  %2883 = xor i1 %2882, true
  %2884 = uitofp i1 %2883 to float
  %2885 = fadd fast float %2859, %2884
  %2886 = fmul fast float %2673, 2.000000e+00
  %2887 = fmul fast float %2674, 2.000000e+00
  %2888 = call float @dx.op.unary.f32(i32 28, float %2886)  ; Round_pi(value)
  %2889 = call float @dx.op.unary.f32(i32 28, float %2887)  ; Round_pi(value)
  %2890 = fptosi float %2888 to i32
  %2891 = fptosi float %2889 to i32
  %2892 = sub i32 %77, %2891
  %2893 = or i32 %2892, %76
  %2894 = icmp slt i32 %2893, 0
  %2895 = icmp sge i32 %2892, %2686
  %2896 = or i1 %2687, %2895
  %2897 = or i1 %2894, %2896
  br i1 %2897, label %2911, label %2898, !dx.controlflow.hints !50

; <label>:2898                                    ; preds = %2881
  %2899 = lshr i32 %2892, 2
  %2900 = mul i32 %98, %2899
  %2901 = add i32 %102, %2900
  %2902 = shl i32 %2901, 2
  %2903 = shl i32 %2892, 3
  %2904 = and i32 %2903, 24
  %2905 = or i32 %2904, %107
  %2906 = shl i32 1, %2905
  %2907 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %2902, i32 undef)  ; BufferLoad(srv,index,wot)
  %2908 = extractvalue %dx.types.ResRet.i32 %2907, 0
  %2909 = and i32 %2908, %2906
  %2910 = icmp ne i32 %2909, 0
  br label %2911

; <label>:2911                                    ; preds = %2898, %2881
  %2912 = phi i1 [ %2910, %2898 ], [ false, %2881 ]
  %2913 = xor i1 %2912, true
  %2914 = uitofp i1 %2913 to float
  %2915 = fadd fast float %2885, %2914
  %2916 = add i32 %2891, %77
  %2917 = or i32 %2916, %76
  %2918 = icmp slt i32 %2917, 0
  %2919 = icmp sge i32 %2916, %2686
  %2920 = or i1 %2687, %2919
  %2921 = or i1 %2918, %2920
  br i1 %2921, label %2935, label %2922, !dx.controlflow.hints !50

; <label>:2922                                    ; preds = %2911
  %2923 = lshr i32 %2916, 2
  %2924 = mul i32 %98, %2923
  %2925 = add i32 %102, %2924
  %2926 = shl i32 %2925, 2
  %2927 = shl i32 %2916, 3
  %2928 = and i32 %2927, 24
  %2929 = or i32 %2928, %107
  %2930 = shl i32 1, %2929
  %2931 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %2926, i32 undef)  ; BufferLoad(srv,index,wot)
  %2932 = extractvalue %dx.types.ResRet.i32 %2931, 0
  %2933 = and i32 %2932, %2930
  %2934 = icmp ne i32 %2933, 0
  br label %2935

; <label>:2935                                    ; preds = %2922, %2911
  %2936 = phi i1 [ %2934, %2922 ], [ false, %2911 ]
  %2937 = xor i1 %2936, true
  %2938 = uitofp i1 %2937 to float
  %2939 = fadd fast float %2915, %2938
  %2940 = sub i32 %76, %2890
  %2941 = or i32 %2940, %77
  %2942 = icmp slt i32 %2941, 0
  %2943 = icmp sge i32 %2940, %2685
  %2944 = or i1 %2943, %2737
  %2945 = or i1 %2942, %2944
  br i1 %2945, label %2959, label %2946, !dx.controlflow.hints !50

; <label>:2946                                    ; preds = %2935
  %2947 = lshr i32 %2940, 3
  %2948 = add i32 %94, %2947
  %2949 = add i32 %2948, %96
  %2950 = add i32 %2949, %99
  %2951 = shl i32 %2950, 2
  %2952 = and i32 %2940, 7
  %2953 = or i32 %2952, %106
  %2954 = shl i32 1, %2953
  %2955 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %2951, i32 undef)  ; BufferLoad(srv,index,wot)
  %2956 = extractvalue %dx.types.ResRet.i32 %2955, 0
  %2957 = and i32 %2956, %2954
  %2958 = icmp ne i32 %2957, 0
  br label %2959

; <label>:2959                                    ; preds = %2946, %2935
  %2960 = phi i1 [ %2958, %2946 ], [ false, %2935 ]
  %2961 = xor i1 %2960, true
  %2962 = uitofp i1 %2961 to float
  %2963 = fadd fast float %2939, %2962
  %2964 = add i32 %2890, %76
  %2965 = or i32 %2964, %77
  %2966 = icmp slt i32 %2965, 0
  %2967 = icmp sge i32 %2964, %2685
  %2968 = or i1 %2967, %2737
  %2969 = or i1 %2966, %2968
  br i1 %2969, label %2983, label %2970, !dx.controlflow.hints !50

; <label>:2970                                    ; preds = %2959
  %2971 = lshr i32 %2964, 3
  %2972 = add i32 %94, %2971
  %2973 = add i32 %2972, %96
  %2974 = add i32 %2973, %99
  %2975 = shl i32 %2974, 2
  %2976 = and i32 %2964, 7
  %2977 = or i32 %2976, %106
  %2978 = shl i32 1, %2977
  %2979 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %2975, i32 undef)  ; BufferLoad(srv,index,wot)
  %2980 = extractvalue %dx.types.ResRet.i32 %2979, 0
  %2981 = and i32 %2980, %2978
  %2982 = icmp ne i32 %2981, 0
  br label %2983

; <label>:2983                                    ; preds = %2970, %2959
  %2984 = phi i1 [ %2982, %2970 ], [ false, %2959 ]
  %2985 = xor i1 %2984, true
  %2986 = uitofp i1 %2985 to float
  %2987 = fadd fast float %2963, %2986
  %2988 = or i32 %2892, %2940
  %2989 = icmp slt i32 %2988, 0
  %2990 = or i1 %2943, %2895
  %2991 = or i1 %2989, %2990
  br i1 %2991, label %3009, label %2992, !dx.controlflow.hints !50

; <label>:2992                                    ; preds = %2983
  %2993 = lshr i32 %2892, 2
  %2994 = mul i32 %98, %2993
  %2995 = lshr i32 %2940, 3
  %2996 = add i32 %94, %2995
  %2997 = add i32 %2996, %96
  %2998 = add i32 %2997, %2994
  %2999 = shl i32 %2998, 2
  %3000 = shl i32 %2892, 3
  %3001 = and i32 %3000, 24
  %3002 = and i32 %2940, 7
  %3003 = or i32 %3001, %3002
  %3004 = shl i32 1, %3003
  %3005 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %2999, i32 undef)  ; BufferLoad(srv,index,wot)
  %3006 = extractvalue %dx.types.ResRet.i32 %3005, 0
  %3007 = and i32 %3006, %3004
  %3008 = icmp ne i32 %3007, 0
  br label %3009

; <label>:3009                                    ; preds = %2992, %2983
  %3010 = phi i1 [ %3008, %2992 ], [ false, %2983 ]
  %3011 = xor i1 %3010, true
  %3012 = uitofp i1 %3011 to float
  %3013 = fadd fast float %2987, %3012
  %3014 = or i32 %2892, %2964
  %3015 = icmp slt i32 %3014, 0
  %3016 = or i1 %2967, %2895
  %3017 = or i1 %3015, %3016
  br i1 %3017, label %3035, label %3018, !dx.controlflow.hints !50

; <label>:3018                                    ; preds = %3009
  %3019 = lshr i32 %2892, 2
  %3020 = mul i32 %98, %3019
  %3021 = lshr i32 %2964, 3
  %3022 = add i32 %94, %3021
  %3023 = add i32 %3022, %96
  %3024 = add i32 %3023, %3020
  %3025 = shl i32 %3024, 2
  %3026 = shl i32 %2892, 3
  %3027 = and i32 %3026, 24
  %3028 = and i32 %2964, 7
  %3029 = or i32 %3027, %3028
  %3030 = shl i32 1, %3029
  %3031 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %3025, i32 undef)  ; BufferLoad(srv,index,wot)
  %3032 = extractvalue %dx.types.ResRet.i32 %3031, 0
  %3033 = and i32 %3032, %3030
  %3034 = icmp ne i32 %3033, 0
  br label %3035

; <label>:3035                                    ; preds = %3018, %3009
  %3036 = phi i1 [ %3034, %3018 ], [ false, %3009 ]
  %3037 = xor i1 %3036, true
  %3038 = uitofp i1 %3037 to float
  %3039 = fadd fast float %3013, %3038
  %3040 = or i32 %2916, %2940
  %3041 = icmp slt i32 %3040, 0
  %3042 = or i1 %2943, %2919
  %3043 = or i1 %3041, %3042
  br i1 %3043, label %3061, label %3044, !dx.controlflow.hints !50

; <label>:3044                                    ; preds = %3035
  %3045 = lshr i32 %2916, 2
  %3046 = mul i32 %98, %3045
  %3047 = lshr i32 %2940, 3
  %3048 = add i32 %94, %3047
  %3049 = add i32 %3048, %96
  %3050 = add i32 %3049, %3046
  %3051 = shl i32 %3050, 2
  %3052 = shl i32 %2916, 3
  %3053 = and i32 %3052, 24
  %3054 = and i32 %2940, 7
  %3055 = or i32 %3053, %3054
  %3056 = shl i32 1, %3055
  %3057 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %3051, i32 undef)  ; BufferLoad(srv,index,wot)
  %3058 = extractvalue %dx.types.ResRet.i32 %3057, 0
  %3059 = and i32 %3058, %3056
  %3060 = icmp ne i32 %3059, 0
  br label %3061

; <label>:3061                                    ; preds = %3044, %3035
  %3062 = phi i1 [ %3060, %3044 ], [ false, %3035 ]
  %3063 = xor i1 %3062, true
  %3064 = uitofp i1 %3063 to float
  %3065 = fadd fast float %3039, %3064
  %3066 = or i32 %2916, %2964
  %3067 = icmp slt i32 %3066, 0
  %3068 = or i1 %2967, %2919
  %3069 = or i1 %3067, %3068
  br i1 %3069, label %3087, label %3070, !dx.controlflow.hints !50

; <label>:3070                                    ; preds = %3061
  %3071 = lshr i32 %2916, 2
  %3072 = mul i32 %98, %3071
  %3073 = lshr i32 %2964, 3
  %3074 = add i32 %94, %3073
  %3075 = add i32 %3074, %96
  %3076 = add i32 %3075, %3072
  %3077 = shl i32 %3076, 2
  %3078 = shl i32 %2916, 3
  %3079 = and i32 %3078, 24
  %3080 = and i32 %2964, 7
  %3081 = or i32 %3079, %3080
  %3082 = shl i32 1, %3081
  %3083 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %3077, i32 undef)  ; BufferLoad(srv,index,wot)
  %3084 = extractvalue %dx.types.ResRet.i32 %3083, 0
  %3085 = and i32 %3084, %3082
  %3086 = icmp ne i32 %3085, 0
  br label %3087

; <label>:3087                                    ; preds = %3070, %3061
  %3088 = phi i1 [ %3086, %3070 ], [ false, %3061 ]
  %3089 = xor i1 %3088, true
  %3090 = uitofp i1 %3089 to float
  %3091 = fadd fast float %3065, %3090
  %3092 = fmul fast float %2673, 3.000000e+00
  %3093 = fmul fast float %2674, 3.000000e+00
  %3094 = call float @dx.op.unary.f32(i32 28, float %3092)  ; Round_pi(value)
  %3095 = call float @dx.op.unary.f32(i32 28, float %3093)  ; Round_pi(value)
  %3096 = fptosi float %3094 to i32
  %3097 = fptosi float %3095 to i32
  %3098 = sub i32 %77, %3097
  %3099 = or i32 %3098, %76
  %3100 = icmp slt i32 %3099, 0
  %3101 = icmp sge i32 %3098, %2686
  %3102 = or i1 %2687, %3101
  %3103 = or i1 %3100, %3102
  br i1 %3103, label %3117, label %3104, !dx.controlflow.hints !50

; <label>:3104                                    ; preds = %3087
  %3105 = lshr i32 %3098, 2
  %3106 = mul i32 %98, %3105
  %3107 = add i32 %102, %3106
  %3108 = shl i32 %3107, 2
  %3109 = shl i32 %3098, 3
  %3110 = and i32 %3109, 24
  %3111 = or i32 %3110, %107
  %3112 = shl i32 1, %3111
  %3113 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %3108, i32 undef)  ; BufferLoad(srv,index,wot)
  %3114 = extractvalue %dx.types.ResRet.i32 %3113, 0
  %3115 = and i32 %3114, %3112
  %3116 = icmp ne i32 %3115, 0
  br label %3117

; <label>:3117                                    ; preds = %3104, %3087
  %3118 = phi i1 [ %3116, %3104 ], [ false, %3087 ]
  %3119 = xor i1 %3118, true
  %3120 = uitofp i1 %3119 to float
  %3121 = fadd fast float %3091, %3120
  %3122 = add i32 %3097, %77
  %3123 = or i32 %3122, %76
  %3124 = icmp slt i32 %3123, 0
  %3125 = icmp sge i32 %3122, %2686
  %3126 = or i1 %2687, %3125
  %3127 = or i1 %3124, %3126
  br i1 %3127, label %3141, label %3128, !dx.controlflow.hints !50

; <label>:3128                                    ; preds = %3117
  %3129 = lshr i32 %3122, 2
  %3130 = mul i32 %98, %3129
  %3131 = add i32 %102, %3130
  %3132 = shl i32 %3131, 2
  %3133 = shl i32 %3122, 3
  %3134 = and i32 %3133, 24
  %3135 = or i32 %3134, %107
  %3136 = shl i32 1, %3135
  %3137 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %3132, i32 undef)  ; BufferLoad(srv,index,wot)
  %3138 = extractvalue %dx.types.ResRet.i32 %3137, 0
  %3139 = and i32 %3138, %3136
  %3140 = icmp ne i32 %3139, 0
  br label %3141

; <label>:3141                                    ; preds = %3128, %3117
  %3142 = phi i1 [ %3140, %3128 ], [ false, %3117 ]
  %3143 = xor i1 %3142, true
  %3144 = uitofp i1 %3143 to float
  %3145 = fadd fast float %3121, %3144
  %3146 = sub i32 %76, %3096
  %3147 = or i32 %3146, %77
  %3148 = icmp slt i32 %3147, 0
  %3149 = icmp sge i32 %3146, %2685
  %3150 = or i1 %3149, %2737
  %3151 = or i1 %3148, %3150
  br i1 %3151, label %3165, label %3152, !dx.controlflow.hints !50

; <label>:3152                                    ; preds = %3141
  %3153 = lshr i32 %3146, 3
  %3154 = add i32 %94, %3153
  %3155 = add i32 %3154, %96
  %3156 = add i32 %3155, %99
  %3157 = shl i32 %3156, 2
  %3158 = and i32 %3146, 7
  %3159 = or i32 %3158, %106
  %3160 = shl i32 1, %3159
  %3161 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %3157, i32 undef)  ; BufferLoad(srv,index,wot)
  %3162 = extractvalue %dx.types.ResRet.i32 %3161, 0
  %3163 = and i32 %3162, %3160
  %3164 = icmp ne i32 %3163, 0
  br label %3165

; <label>:3165                                    ; preds = %3152, %3141
  %3166 = phi i1 [ %3164, %3152 ], [ false, %3141 ]
  %3167 = xor i1 %3166, true
  %3168 = uitofp i1 %3167 to float
  %3169 = fadd fast float %3145, %3168
  %3170 = add i32 %3096, %76
  %3171 = or i32 %3170, %77
  %3172 = icmp slt i32 %3171, 0
  %3173 = icmp sge i32 %3170, %2685
  %3174 = or i1 %3173, %2737
  %3175 = or i1 %3172, %3174
  br i1 %3175, label %3189, label %3176, !dx.controlflow.hints !50

; <label>:3176                                    ; preds = %3165
  %3177 = lshr i32 %3170, 3
  %3178 = add i32 %94, %3177
  %3179 = add i32 %3178, %96
  %3180 = add i32 %3179, %99
  %3181 = shl i32 %3180, 2
  %3182 = and i32 %3170, 7
  %3183 = or i32 %3182, %106
  %3184 = shl i32 1, %3183
  %3185 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %3181, i32 undef)  ; BufferLoad(srv,index,wot)
  %3186 = extractvalue %dx.types.ResRet.i32 %3185, 0
  %3187 = and i32 %3186, %3184
  %3188 = icmp ne i32 %3187, 0
  br label %3189

; <label>:3189                                    ; preds = %3176, %3165
  %3190 = phi i1 [ %3188, %3176 ], [ false, %3165 ]
  %3191 = xor i1 %3190, true
  %3192 = uitofp i1 %3191 to float
  %3193 = fadd fast float %3169, %3192
  %3194 = or i32 %3098, %3146
  %3195 = icmp slt i32 %3194, 0
  %3196 = or i1 %3149, %3101
  %3197 = or i1 %3195, %3196
  br i1 %3197, label %3215, label %3198, !dx.controlflow.hints !50

; <label>:3198                                    ; preds = %3189
  %3199 = lshr i32 %3098, 2
  %3200 = mul i32 %98, %3199
  %3201 = lshr i32 %3146, 3
  %3202 = add i32 %94, %3201
  %3203 = add i32 %3202, %96
  %3204 = add i32 %3203, %3200
  %3205 = shl i32 %3204, 2
  %3206 = shl i32 %3098, 3
  %3207 = and i32 %3206, 24
  %3208 = and i32 %3146, 7
  %3209 = or i32 %3207, %3208
  %3210 = shl i32 1, %3209
  %3211 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %3205, i32 undef)  ; BufferLoad(srv,index,wot)
  %3212 = extractvalue %dx.types.ResRet.i32 %3211, 0
  %3213 = and i32 %3212, %3210
  %3214 = icmp ne i32 %3213, 0
  br label %3215

; <label>:3215                                    ; preds = %3198, %3189
  %3216 = phi i1 [ %3214, %3198 ], [ false, %3189 ]
  %3217 = xor i1 %3216, true
  %3218 = uitofp i1 %3217 to float
  %3219 = fadd fast float %3193, %3218
  %3220 = or i32 %3098, %3170
  %3221 = icmp slt i32 %3220, 0
  %3222 = or i1 %3173, %3101
  %3223 = or i1 %3221, %3222
  br i1 %3223, label %3241, label %3224, !dx.controlflow.hints !50

; <label>:3224                                    ; preds = %3215
  %3225 = lshr i32 %3098, 2
  %3226 = mul i32 %98, %3225
  %3227 = lshr i32 %3170, 3
  %3228 = add i32 %94, %3227
  %3229 = add i32 %3228, %96
  %3230 = add i32 %3229, %3226
  %3231 = shl i32 %3230, 2
  %3232 = shl i32 %3098, 3
  %3233 = and i32 %3232, 24
  %3234 = and i32 %3170, 7
  %3235 = or i32 %3233, %3234
  %3236 = shl i32 1, %3235
  %3237 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %3231, i32 undef)  ; BufferLoad(srv,index,wot)
  %3238 = extractvalue %dx.types.ResRet.i32 %3237, 0
  %3239 = and i32 %3238, %3236
  %3240 = icmp ne i32 %3239, 0
  br label %3241

; <label>:3241                                    ; preds = %3224, %3215
  %3242 = phi i1 [ %3240, %3224 ], [ false, %3215 ]
  %3243 = xor i1 %3242, true
  %3244 = uitofp i1 %3243 to float
  %3245 = fadd fast float %3219, %3244
  %3246 = or i32 %3122, %3146
  %3247 = icmp slt i32 %3246, 0
  %3248 = or i1 %3149, %3125
  %3249 = or i1 %3247, %3248
  br i1 %3249, label %3267, label %3250, !dx.controlflow.hints !50

; <label>:3250                                    ; preds = %3241
  %3251 = lshr i32 %3122, 2
  %3252 = mul i32 %98, %3251
  %3253 = lshr i32 %3146, 3
  %3254 = add i32 %94, %3253
  %3255 = add i32 %3254, %96
  %3256 = add i32 %3255, %3252
  %3257 = shl i32 %3256, 2
  %3258 = shl i32 %3122, 3
  %3259 = and i32 %3258, 24
  %3260 = and i32 %3146, 7
  %3261 = or i32 %3259, %3260
  %3262 = shl i32 1, %3261
  %3263 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %3257, i32 undef)  ; BufferLoad(srv,index,wot)
  %3264 = extractvalue %dx.types.ResRet.i32 %3263, 0
  %3265 = and i32 %3264, %3262
  %3266 = icmp ne i32 %3265, 0
  br label %3267

; <label>:3267                                    ; preds = %3250, %3241
  %3268 = phi i1 [ %3266, %3250 ], [ false, %3241 ]
  %3269 = xor i1 %3268, true
  %3270 = uitofp i1 %3269 to float
  %3271 = fadd fast float %3245, %3270
  %3272 = or i32 %3122, %3170
  %3273 = icmp slt i32 %3272, 0
  %3274 = or i1 %3173, %3125
  %3275 = or i1 %3273, %3274
  br i1 %3275, label %3293, label %3276, !dx.controlflow.hints !50

; <label>:3276                                    ; preds = %3267
  %3277 = lshr i32 %3122, 2
  %3278 = mul i32 %98, %3277
  %3279 = lshr i32 %3170, 3
  %3280 = add i32 %94, %3279
  %3281 = add i32 %3280, %96
  %3282 = add i32 %3281, %3278
  %3283 = shl i32 %3282, 2
  %3284 = shl i32 %3122, 3
  %3285 = and i32 %3284, 24
  %3286 = and i32 %3170, 7
  %3287 = or i32 %3285, %3286
  %3288 = shl i32 1, %3287
  %3289 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %3283, i32 undef)  ; BufferLoad(srv,index,wot)
  %3290 = extractvalue %dx.types.ResRet.i32 %3289, 0
  %3291 = and i32 %3290, %3288
  %3292 = icmp ne i32 %3291, 0
  br label %3293

; <label>:3293                                    ; preds = %3276, %3267
  %3294 = phi i1 [ %3292, %3276 ], [ false, %3267 ]
  %3295 = xor i1 %3294, true
  %3296 = uitofp i1 %3295 to float
  %3297 = fadd fast float %3271, %3296
  %3298 = fmul fast float %2673, 4.000000e+00
  %3299 = fmul fast float %2674, 4.000000e+00
  %3300 = call float @dx.op.unary.f32(i32 28, float %3298)  ; Round_pi(value)
  %3301 = call float @dx.op.unary.f32(i32 28, float %3299)  ; Round_pi(value)
  %3302 = fptosi float %3300 to i32
  %3303 = fptosi float %3301 to i32
  %3304 = sub i32 %77, %3303
  %3305 = or i32 %3304, %76
  %3306 = icmp slt i32 %3305, 0
  %3307 = icmp sge i32 %3304, %2686
  %3308 = or i1 %2687, %3307
  %3309 = or i1 %3306, %3308
  br i1 %3309, label %3323, label %3310, !dx.controlflow.hints !50

; <label>:3310                                    ; preds = %3293
  %3311 = lshr i32 %3304, 2
  %3312 = mul i32 %98, %3311
  %3313 = add i32 %102, %3312
  %3314 = shl i32 %3313, 2
  %3315 = shl i32 %3304, 3
  %3316 = and i32 %3315, 24
  %3317 = or i32 %3316, %107
  %3318 = shl i32 1, %3317
  %3319 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %3314, i32 undef)  ; BufferLoad(srv,index,wot)
  %3320 = extractvalue %dx.types.ResRet.i32 %3319, 0
  %3321 = and i32 %3320, %3318
  %3322 = icmp ne i32 %3321, 0
  br label %3323

; <label>:3323                                    ; preds = %3310, %3293
  %3324 = phi i1 [ %3322, %3310 ], [ false, %3293 ]
  %3325 = xor i1 %3324, true
  %3326 = uitofp i1 %3325 to float
  %3327 = fadd fast float %3297, %3326
  %3328 = add i32 %3303, %77
  %3329 = or i32 %3328, %76
  %3330 = icmp slt i32 %3329, 0
  %3331 = icmp sge i32 %3328, %2686
  %3332 = or i1 %2687, %3331
  %3333 = or i1 %3330, %3332
  br i1 %3333, label %3347, label %3334, !dx.controlflow.hints !50

; <label>:3334                                    ; preds = %3323
  %3335 = lshr i32 %3328, 2
  %3336 = mul i32 %98, %3335
  %3337 = add i32 %102, %3336
  %3338 = shl i32 %3337, 2
  %3339 = shl i32 %3328, 3
  %3340 = and i32 %3339, 24
  %3341 = or i32 %3340, %107
  %3342 = shl i32 1, %3341
  %3343 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %3338, i32 undef)  ; BufferLoad(srv,index,wot)
  %3344 = extractvalue %dx.types.ResRet.i32 %3343, 0
  %3345 = and i32 %3344, %3342
  %3346 = icmp ne i32 %3345, 0
  br label %3347

; <label>:3347                                    ; preds = %3334, %3323
  %3348 = phi i1 [ %3346, %3334 ], [ false, %3323 ]
  %3349 = xor i1 %3348, true
  %3350 = uitofp i1 %3349 to float
  %3351 = fadd fast float %3327, %3350
  %3352 = sub i32 %76, %3302
  %3353 = or i32 %3352, %77
  %3354 = icmp slt i32 %3353, 0
  %3355 = icmp sge i32 %3352, %2685
  %3356 = or i1 %3355, %2737
  %3357 = or i1 %3354, %3356
  br i1 %3357, label %3371, label %3358, !dx.controlflow.hints !50

; <label>:3358                                    ; preds = %3347
  %3359 = lshr i32 %3352, 3
  %3360 = add i32 %94, %3359
  %3361 = add i32 %3360, %96
  %3362 = add i32 %3361, %99
  %3363 = shl i32 %3362, 2
  %3364 = and i32 %3352, 7
  %3365 = or i32 %3364, %106
  %3366 = shl i32 1, %3365
  %3367 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %3363, i32 undef)  ; BufferLoad(srv,index,wot)
  %3368 = extractvalue %dx.types.ResRet.i32 %3367, 0
  %3369 = and i32 %3368, %3366
  %3370 = icmp ne i32 %3369, 0
  br label %3371

; <label>:3371                                    ; preds = %3358, %3347
  %3372 = phi i1 [ %3370, %3358 ], [ false, %3347 ]
  %3373 = xor i1 %3372, true
  %3374 = uitofp i1 %3373 to float
  %3375 = fadd fast float %3351, %3374
  %3376 = add i32 %3302, %76
  %3377 = or i32 %3376, %77
  %3378 = icmp slt i32 %3377, 0
  %3379 = icmp sge i32 %3376, %2685
  %3380 = or i1 %3379, %2737
  %3381 = or i1 %3378, %3380
  br i1 %3381, label %3395, label %3382, !dx.controlflow.hints !50

; <label>:3382                                    ; preds = %3371
  %3383 = lshr i32 %3376, 3
  %3384 = add i32 %94, %3383
  %3385 = add i32 %3384, %96
  %3386 = add i32 %3385, %99
  %3387 = shl i32 %3386, 2
  %3388 = and i32 %3376, 7
  %3389 = or i32 %3388, %106
  %3390 = shl i32 1, %3389
  %3391 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %3387, i32 undef)  ; BufferLoad(srv,index,wot)
  %3392 = extractvalue %dx.types.ResRet.i32 %3391, 0
  %3393 = and i32 %3392, %3390
  %3394 = icmp ne i32 %3393, 0
  br label %3395

; <label>:3395                                    ; preds = %3382, %3371
  %3396 = phi i1 [ %3394, %3382 ], [ false, %3371 ]
  %3397 = xor i1 %3396, true
  %3398 = uitofp i1 %3397 to float
  %3399 = fadd fast float %3375, %3398
  %3400 = or i32 %3304, %3352
  %3401 = icmp slt i32 %3400, 0
  %3402 = or i1 %3355, %3307
  %3403 = or i1 %3401, %3402
  br i1 %3403, label %3421, label %3404, !dx.controlflow.hints !50

; <label>:3404                                    ; preds = %3395
  %3405 = lshr i32 %3304, 2
  %3406 = mul i32 %98, %3405
  %3407 = lshr i32 %3352, 3
  %3408 = add i32 %94, %3407
  %3409 = add i32 %3408, %96
  %3410 = add i32 %3409, %3406
  %3411 = shl i32 %3410, 2
  %3412 = shl i32 %3304, 3
  %3413 = and i32 %3412, 24
  %3414 = and i32 %3352, 7
  %3415 = or i32 %3413, %3414
  %3416 = shl i32 1, %3415
  %3417 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %3411, i32 undef)  ; BufferLoad(srv,index,wot)
  %3418 = extractvalue %dx.types.ResRet.i32 %3417, 0
  %3419 = and i32 %3418, %3416
  %3420 = icmp ne i32 %3419, 0
  br label %3421

; <label>:3421                                    ; preds = %3404, %3395
  %3422 = phi i1 [ %3420, %3404 ], [ false, %3395 ]
  %3423 = xor i1 %3422, true
  %3424 = uitofp i1 %3423 to float
  %3425 = fadd fast float %3399, %3424
  %3426 = or i32 %3304, %3376
  %3427 = icmp slt i32 %3426, 0
  %3428 = or i1 %3379, %3307
  %3429 = or i1 %3427, %3428
  br i1 %3429, label %3447, label %3430, !dx.controlflow.hints !50

; <label>:3430                                    ; preds = %3421
  %3431 = lshr i32 %3304, 2
  %3432 = mul i32 %98, %3431
  %3433 = lshr i32 %3376, 3
  %3434 = add i32 %94, %3433
  %3435 = add i32 %3434, %96
  %3436 = add i32 %3435, %3432
  %3437 = shl i32 %3436, 2
  %3438 = shl i32 %3304, 3
  %3439 = and i32 %3438, 24
  %3440 = and i32 %3376, 7
  %3441 = or i32 %3439, %3440
  %3442 = shl i32 1, %3441
  %3443 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %3437, i32 undef)  ; BufferLoad(srv,index,wot)
  %3444 = extractvalue %dx.types.ResRet.i32 %3443, 0
  %3445 = and i32 %3444, %3442
  %3446 = icmp ne i32 %3445, 0
  br label %3447

; <label>:3447                                    ; preds = %3430, %3421
  %3448 = phi i1 [ %3446, %3430 ], [ false, %3421 ]
  %3449 = xor i1 %3448, true
  %3450 = uitofp i1 %3449 to float
  %3451 = fadd fast float %3425, %3450
  %3452 = or i32 %3328, %3352
  %3453 = icmp slt i32 %3452, 0
  %3454 = or i1 %3355, %3331
  %3455 = or i1 %3453, %3454
  br i1 %3455, label %3473, label %3456, !dx.controlflow.hints !50

; <label>:3456                                    ; preds = %3447
  %3457 = lshr i32 %3328, 2
  %3458 = mul i32 %98, %3457
  %3459 = lshr i32 %3352, 3
  %3460 = add i32 %94, %3459
  %3461 = add i32 %3460, %96
  %3462 = add i32 %3461, %3458
  %3463 = shl i32 %3462, 2
  %3464 = shl i32 %3328, 3
  %3465 = and i32 %3464, 24
  %3466 = and i32 %3352, 7
  %3467 = or i32 %3465, %3466
  %3468 = shl i32 1, %3467
  %3469 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %3463, i32 undef)  ; BufferLoad(srv,index,wot)
  %3470 = extractvalue %dx.types.ResRet.i32 %3469, 0
  %3471 = and i32 %3470, %3468
  %3472 = icmp ne i32 %3471, 0
  br label %3473

; <label>:3473                                    ; preds = %3456, %3447
  %3474 = phi i1 [ %3472, %3456 ], [ false, %3447 ]
  %3475 = xor i1 %3474, true
  %3476 = uitofp i1 %3475 to float
  %3477 = fadd fast float %3451, %3476
  %3478 = or i32 %3328, %3376
  %3479 = icmp slt i32 %3478, 0
  %3480 = or i1 %3379, %3331
  %3481 = or i1 %3479, %3480
  br i1 %3481, label %3499, label %3482, !dx.controlflow.hints !50

; <label>:3482                                    ; preds = %3473
  %3483 = lshr i32 %3328, 2
  %3484 = mul i32 %98, %3483
  %3485 = lshr i32 %3376, 3
  %3486 = add i32 %94, %3485
  %3487 = add i32 %3486, %96
  %3488 = add i32 %3487, %3484
  %3489 = shl i32 %3488, 2
  %3490 = shl i32 %3328, 3
  %3491 = and i32 %3490, 24
  %3492 = and i32 %3376, 7
  %3493 = or i32 %3491, %3492
  %3494 = shl i32 1, %3493
  %3495 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %3489, i32 undef)  ; BufferLoad(srv,index,wot)
  %3496 = extractvalue %dx.types.ResRet.i32 %3495, 0
  %3497 = and i32 %3496, %3494
  %3498 = icmp ne i32 %3497, 0
  br label %3499

; <label>:3499                                    ; preds = %3482, %3473
  %3500 = phi i1 [ %3498, %3482 ], [ false, %3473 ]
  %3501 = xor i1 %3500, true
  %3502 = uitofp i1 %3501 to float
  %3503 = fadd fast float %3477, %3502
  %3504 = fmul fast float %2673, 5.000000e+00
  %3505 = fmul fast float %2674, 5.000000e+00
  %3506 = call float @dx.op.unary.f32(i32 28, float %3504)  ; Round_pi(value)
  %3507 = call float @dx.op.unary.f32(i32 28, float %3505)  ; Round_pi(value)
  %3508 = fptosi float %3506 to i32
  %3509 = fptosi float %3507 to i32
  %3510 = sub i32 %77, %3509
  %3511 = or i32 %3510, %76
  %3512 = icmp slt i32 %3511, 0
  %3513 = icmp sge i32 %3510, %2686
  %3514 = or i1 %2687, %3513
  %3515 = or i1 %3512, %3514
  br i1 %3515, label %3529, label %3516, !dx.controlflow.hints !50

; <label>:3516                                    ; preds = %3499
  %3517 = lshr i32 %3510, 2
  %3518 = mul i32 %98, %3517
  %3519 = add i32 %102, %3518
  %3520 = shl i32 %3519, 2
  %3521 = shl i32 %3510, 3
  %3522 = and i32 %3521, 24
  %3523 = or i32 %3522, %107
  %3524 = shl i32 1, %3523
  %3525 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %3520, i32 undef)  ; BufferLoad(srv,index,wot)
  %3526 = extractvalue %dx.types.ResRet.i32 %3525, 0
  %3527 = and i32 %3526, %3524
  %3528 = icmp ne i32 %3527, 0
  br label %3529

; <label>:3529                                    ; preds = %3516, %3499
  %3530 = phi i1 [ %3528, %3516 ], [ false, %3499 ]
  %3531 = xor i1 %3530, true
  %3532 = uitofp i1 %3531 to float
  %3533 = fadd fast float %3503, %3532
  %3534 = add i32 %3509, %77
  %3535 = or i32 %3534, %76
  %3536 = icmp slt i32 %3535, 0
  %3537 = icmp sge i32 %3534, %2686
  %3538 = or i1 %2687, %3537
  %3539 = or i1 %3536, %3538
  br i1 %3539, label %3553, label %3540, !dx.controlflow.hints !50

; <label>:3540                                    ; preds = %3529
  %3541 = lshr i32 %3534, 2
  %3542 = mul i32 %98, %3541
  %3543 = add i32 %102, %3542
  %3544 = shl i32 %3543, 2
  %3545 = shl i32 %3534, 3
  %3546 = and i32 %3545, 24
  %3547 = or i32 %3546, %107
  %3548 = shl i32 1, %3547
  %3549 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %3544, i32 undef)  ; BufferLoad(srv,index,wot)
  %3550 = extractvalue %dx.types.ResRet.i32 %3549, 0
  %3551 = and i32 %3550, %3548
  %3552 = icmp ne i32 %3551, 0
  br label %3553

; <label>:3553                                    ; preds = %3540, %3529
  %3554 = phi i1 [ %3552, %3540 ], [ false, %3529 ]
  %3555 = xor i1 %3554, true
  %3556 = uitofp i1 %3555 to float
  %3557 = fadd fast float %3533, %3556
  %3558 = sub i32 %76, %3508
  %3559 = or i32 %3558, %77
  %3560 = icmp slt i32 %3559, 0
  %3561 = icmp sge i32 %3558, %2685
  %3562 = or i1 %3561, %2737
  %3563 = or i1 %3560, %3562
  br i1 %3563, label %3577, label %3564, !dx.controlflow.hints !50

; <label>:3564                                    ; preds = %3553
  %3565 = lshr i32 %3558, 3
  %3566 = add i32 %94, %3565
  %3567 = add i32 %3566, %96
  %3568 = add i32 %3567, %99
  %3569 = shl i32 %3568, 2
  %3570 = and i32 %3558, 7
  %3571 = or i32 %3570, %106
  %3572 = shl i32 1, %3571
  %3573 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %3569, i32 undef)  ; BufferLoad(srv,index,wot)
  %3574 = extractvalue %dx.types.ResRet.i32 %3573, 0
  %3575 = and i32 %3574, %3572
  %3576 = icmp ne i32 %3575, 0
  br label %3577

; <label>:3577                                    ; preds = %3564, %3553
  %3578 = phi i1 [ %3576, %3564 ], [ false, %3553 ]
  %3579 = xor i1 %3578, true
  %3580 = uitofp i1 %3579 to float
  %3581 = fadd fast float %3557, %3580
  %3582 = add i32 %3508, %76
  %3583 = or i32 %3582, %77
  %3584 = icmp slt i32 %3583, 0
  %3585 = icmp sge i32 %3582, %2685
  %3586 = or i1 %3585, %2737
  %3587 = or i1 %3584, %3586
  br i1 %3587, label %3601, label %3588, !dx.controlflow.hints !50

; <label>:3588                                    ; preds = %3577
  %3589 = lshr i32 %3582, 3
  %3590 = add i32 %94, %3589
  %3591 = add i32 %3590, %96
  %3592 = add i32 %3591, %99
  %3593 = shl i32 %3592, 2
  %3594 = and i32 %3582, 7
  %3595 = or i32 %3594, %106
  %3596 = shl i32 1, %3595
  %3597 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %3593, i32 undef)  ; BufferLoad(srv,index,wot)
  %3598 = extractvalue %dx.types.ResRet.i32 %3597, 0
  %3599 = and i32 %3598, %3596
  %3600 = icmp ne i32 %3599, 0
  br label %3601

; <label>:3601                                    ; preds = %3588, %3577
  %3602 = phi i1 [ %3600, %3588 ], [ false, %3577 ]
  %3603 = xor i1 %3602, true
  %3604 = uitofp i1 %3603 to float
  %3605 = fadd fast float %3581, %3604
  %3606 = or i32 %3510, %3558
  %3607 = icmp slt i32 %3606, 0
  %3608 = or i1 %3561, %3513
  %3609 = or i1 %3607, %3608
  br i1 %3609, label %3627, label %3610, !dx.controlflow.hints !50

; <label>:3610                                    ; preds = %3601
  %3611 = lshr i32 %3510, 2
  %3612 = mul i32 %98, %3611
  %3613 = lshr i32 %3558, 3
  %3614 = add i32 %94, %3613
  %3615 = add i32 %3614, %96
  %3616 = add i32 %3615, %3612
  %3617 = shl i32 %3616, 2
  %3618 = shl i32 %3510, 3
  %3619 = and i32 %3618, 24
  %3620 = and i32 %3558, 7
  %3621 = or i32 %3619, %3620
  %3622 = shl i32 1, %3621
  %3623 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %3617, i32 undef)  ; BufferLoad(srv,index,wot)
  %3624 = extractvalue %dx.types.ResRet.i32 %3623, 0
  %3625 = and i32 %3624, %3622
  %3626 = icmp ne i32 %3625, 0
  br label %3627

; <label>:3627                                    ; preds = %3610, %3601
  %3628 = phi i1 [ %3626, %3610 ], [ false, %3601 ]
  %3629 = xor i1 %3628, true
  %3630 = uitofp i1 %3629 to float
  %3631 = fadd fast float %3605, %3630
  %3632 = or i32 %3510, %3582
  %3633 = icmp slt i32 %3632, 0
  %3634 = or i1 %3585, %3513
  %3635 = or i1 %3633, %3634
  br i1 %3635, label %3653, label %3636, !dx.controlflow.hints !50

; <label>:3636                                    ; preds = %3627
  %3637 = lshr i32 %3510, 2
  %3638 = mul i32 %98, %3637
  %3639 = lshr i32 %3582, 3
  %3640 = add i32 %94, %3639
  %3641 = add i32 %3640, %96
  %3642 = add i32 %3641, %3638
  %3643 = shl i32 %3642, 2
  %3644 = shl i32 %3510, 3
  %3645 = and i32 %3644, 24
  %3646 = and i32 %3582, 7
  %3647 = or i32 %3645, %3646
  %3648 = shl i32 1, %3647
  %3649 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %3643, i32 undef)  ; BufferLoad(srv,index,wot)
  %3650 = extractvalue %dx.types.ResRet.i32 %3649, 0
  %3651 = and i32 %3650, %3648
  %3652 = icmp ne i32 %3651, 0
  br label %3653

; <label>:3653                                    ; preds = %3636, %3627
  %3654 = phi i1 [ %3652, %3636 ], [ false, %3627 ]
  %3655 = xor i1 %3654, true
  %3656 = uitofp i1 %3655 to float
  %3657 = fadd fast float %3631, %3656
  %3658 = or i32 %3534, %3558
  %3659 = icmp slt i32 %3658, 0
  %3660 = or i1 %3561, %3537
  %3661 = or i1 %3659, %3660
  br i1 %3661, label %3679, label %3662, !dx.controlflow.hints !50

; <label>:3662                                    ; preds = %3653
  %3663 = lshr i32 %3534, 2
  %3664 = mul i32 %98, %3663
  %3665 = lshr i32 %3558, 3
  %3666 = add i32 %94, %3665
  %3667 = add i32 %3666, %96
  %3668 = add i32 %3667, %3664
  %3669 = shl i32 %3668, 2
  %3670 = shl i32 %3534, 3
  %3671 = and i32 %3670, 24
  %3672 = and i32 %3558, 7
  %3673 = or i32 %3671, %3672
  %3674 = shl i32 1, %3673
  %3675 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %3669, i32 undef)  ; BufferLoad(srv,index,wot)
  %3676 = extractvalue %dx.types.ResRet.i32 %3675, 0
  %3677 = and i32 %3676, %3674
  %3678 = icmp ne i32 %3677, 0
  br label %3679

; <label>:3679                                    ; preds = %3662, %3653
  %3680 = phi i1 [ %3678, %3662 ], [ false, %3653 ]
  %3681 = xor i1 %3680, true
  %3682 = uitofp i1 %3681 to float
  %3683 = fadd fast float %3657, %3682
  %3684 = or i32 %3534, %3582
  %3685 = icmp slt i32 %3684, 0
  %3686 = or i1 %3585, %3537
  %3687 = or i1 %3685, %3686
  br i1 %3687, label %3705, label %3688, !dx.controlflow.hints !50

; <label>:3688                                    ; preds = %3679
  %3689 = lshr i32 %3534, 2
  %3690 = mul i32 %98, %3689
  %3691 = lshr i32 %3582, 3
  %3692 = add i32 %94, %3691
  %3693 = add i32 %3692, %96
  %3694 = add i32 %3693, %3690
  %3695 = shl i32 %3694, 2
  %3696 = shl i32 %3534, 3
  %3697 = and i32 %3696, 24
  %3698 = and i32 %3582, 7
  %3699 = or i32 %3697, %3698
  %3700 = shl i32 1, %3699
  %3701 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %3695, i32 undef)  ; BufferLoad(srv,index,wot)
  %3702 = extractvalue %dx.types.ResRet.i32 %3701, 0
  %3703 = and i32 %3702, %3700
  %3704 = icmp ne i32 %3703, 0
  br label %3705

; <label>:3705                                    ; preds = %3688, %3679
  %3706 = phi i1 [ %3704, %3688 ], [ false, %3679 ]
  %3707 = xor i1 %3706, true
  %3708 = uitofp i1 %3707 to float
  %3709 = fadd fast float %3683, %3708
  %3710 = fmul fast float %2673, 6.000000e+00
  %3711 = fmul fast float %2674, 6.000000e+00
  %3712 = call float @dx.op.unary.f32(i32 28, float %3710)  ; Round_pi(value)
  %3713 = call float @dx.op.unary.f32(i32 28, float %3711)  ; Round_pi(value)
  %3714 = fptosi float %3712 to i32
  %3715 = fptosi float %3713 to i32
  %3716 = sub i32 %77, %3715
  %3717 = or i32 %3716, %76
  %3718 = icmp slt i32 %3717, 0
  %3719 = icmp sge i32 %3716, %2686
  %3720 = or i1 %2687, %3719
  %3721 = or i1 %3718, %3720
  br i1 %3721, label %3735, label %3722, !dx.controlflow.hints !50

; <label>:3722                                    ; preds = %3705
  %3723 = lshr i32 %3716, 2
  %3724 = mul i32 %98, %3723
  %3725 = add i32 %102, %3724
  %3726 = shl i32 %3725, 2
  %3727 = shl i32 %3716, 3
  %3728 = and i32 %3727, 24
  %3729 = or i32 %3728, %107
  %3730 = shl i32 1, %3729
  %3731 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %3726, i32 undef)  ; BufferLoad(srv,index,wot)
  %3732 = extractvalue %dx.types.ResRet.i32 %3731, 0
  %3733 = and i32 %3732, %3730
  %3734 = icmp ne i32 %3733, 0
  br label %3735

; <label>:3735                                    ; preds = %3722, %3705
  %3736 = phi i1 [ %3734, %3722 ], [ false, %3705 ]
  %3737 = xor i1 %3736, true
  %3738 = uitofp i1 %3737 to float
  %3739 = fadd fast float %3709, %3738
  %3740 = add i32 %3715, %77
  %3741 = or i32 %3740, %76
  %3742 = icmp slt i32 %3741, 0
  %3743 = icmp sge i32 %3740, %2686
  %3744 = or i1 %2687, %3743
  %3745 = or i1 %3742, %3744
  br i1 %3745, label %3759, label %3746, !dx.controlflow.hints !50

; <label>:3746                                    ; preds = %3735
  %3747 = lshr i32 %3740, 2
  %3748 = mul i32 %98, %3747
  %3749 = add i32 %102, %3748
  %3750 = shl i32 %3749, 2
  %3751 = shl i32 %3740, 3
  %3752 = and i32 %3751, 24
  %3753 = or i32 %3752, %107
  %3754 = shl i32 1, %3753
  %3755 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %3750, i32 undef)  ; BufferLoad(srv,index,wot)
  %3756 = extractvalue %dx.types.ResRet.i32 %3755, 0
  %3757 = and i32 %3756, %3754
  %3758 = icmp ne i32 %3757, 0
  br label %3759

; <label>:3759                                    ; preds = %3746, %3735
  %3760 = phi i1 [ %3758, %3746 ], [ false, %3735 ]
  %3761 = xor i1 %3760, true
  %3762 = uitofp i1 %3761 to float
  %3763 = fadd fast float %3739, %3762
  %3764 = sub i32 %76, %3714
  %3765 = or i32 %3764, %77
  %3766 = icmp slt i32 %3765, 0
  %3767 = icmp sge i32 %3764, %2685
  %3768 = or i1 %3767, %2737
  %3769 = or i1 %3766, %3768
  br i1 %3769, label %3783, label %3770, !dx.controlflow.hints !50

; <label>:3770                                    ; preds = %3759
  %3771 = lshr i32 %3764, 3
  %3772 = add i32 %94, %3771
  %3773 = add i32 %3772, %96
  %3774 = add i32 %3773, %99
  %3775 = shl i32 %3774, 2
  %3776 = and i32 %3764, 7
  %3777 = or i32 %3776, %106
  %3778 = shl i32 1, %3777
  %3779 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %3775, i32 undef)  ; BufferLoad(srv,index,wot)
  %3780 = extractvalue %dx.types.ResRet.i32 %3779, 0
  %3781 = and i32 %3780, %3778
  %3782 = icmp ne i32 %3781, 0
  br label %3783

; <label>:3783                                    ; preds = %3770, %3759
  %3784 = phi i1 [ %3782, %3770 ], [ false, %3759 ]
  %3785 = xor i1 %3784, true
  %3786 = uitofp i1 %3785 to float
  %3787 = fadd fast float %3763, %3786
  %3788 = add i32 %3714, %76
  %3789 = or i32 %3788, %77
  %3790 = icmp slt i32 %3789, 0
  %3791 = icmp sge i32 %3788, %2685
  %3792 = or i1 %3791, %2737
  %3793 = or i1 %3790, %3792
  br i1 %3793, label %3807, label %3794, !dx.controlflow.hints !50

; <label>:3794                                    ; preds = %3783
  %3795 = lshr i32 %3788, 3
  %3796 = add i32 %94, %3795
  %3797 = add i32 %3796, %96
  %3798 = add i32 %3797, %99
  %3799 = shl i32 %3798, 2
  %3800 = and i32 %3788, 7
  %3801 = or i32 %3800, %106
  %3802 = shl i32 1, %3801
  %3803 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %3799, i32 undef)  ; BufferLoad(srv,index,wot)
  %3804 = extractvalue %dx.types.ResRet.i32 %3803, 0
  %3805 = and i32 %3804, %3802
  %3806 = icmp ne i32 %3805, 0
  br label %3807

; <label>:3807                                    ; preds = %3794, %3783
  %3808 = phi i1 [ %3806, %3794 ], [ false, %3783 ]
  %3809 = xor i1 %3808, true
  %3810 = uitofp i1 %3809 to float
  %3811 = fadd fast float %3787, %3810
  %3812 = or i32 %3716, %3764
  %3813 = icmp slt i32 %3812, 0
  %3814 = or i1 %3767, %3719
  %3815 = or i1 %3813, %3814
  br i1 %3815, label %3833, label %3816, !dx.controlflow.hints !50

; <label>:3816                                    ; preds = %3807
  %3817 = lshr i32 %3716, 2
  %3818 = mul i32 %98, %3817
  %3819 = lshr i32 %3764, 3
  %3820 = add i32 %94, %3819
  %3821 = add i32 %3820, %96
  %3822 = add i32 %3821, %3818
  %3823 = shl i32 %3822, 2
  %3824 = shl i32 %3716, 3
  %3825 = and i32 %3824, 24
  %3826 = and i32 %3764, 7
  %3827 = or i32 %3825, %3826
  %3828 = shl i32 1, %3827
  %3829 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %3823, i32 undef)  ; BufferLoad(srv,index,wot)
  %3830 = extractvalue %dx.types.ResRet.i32 %3829, 0
  %3831 = and i32 %3830, %3828
  %3832 = icmp ne i32 %3831, 0
  br label %3833

; <label>:3833                                    ; preds = %3816, %3807
  %3834 = phi i1 [ %3832, %3816 ], [ false, %3807 ]
  %3835 = xor i1 %3834, true
  %3836 = uitofp i1 %3835 to float
  %3837 = fadd fast float %3811, %3836
  %3838 = or i32 %3716, %3788
  %3839 = icmp slt i32 %3838, 0
  %3840 = or i1 %3791, %3719
  %3841 = or i1 %3839, %3840
  br i1 %3841, label %3859, label %3842, !dx.controlflow.hints !50

; <label>:3842                                    ; preds = %3833
  %3843 = lshr i32 %3716, 2
  %3844 = mul i32 %98, %3843
  %3845 = lshr i32 %3788, 3
  %3846 = add i32 %94, %3845
  %3847 = add i32 %3846, %96
  %3848 = add i32 %3847, %3844
  %3849 = shl i32 %3848, 2
  %3850 = shl i32 %3716, 3
  %3851 = and i32 %3850, 24
  %3852 = and i32 %3788, 7
  %3853 = or i32 %3851, %3852
  %3854 = shl i32 1, %3853
  %3855 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %3849, i32 undef)  ; BufferLoad(srv,index,wot)
  %3856 = extractvalue %dx.types.ResRet.i32 %3855, 0
  %3857 = and i32 %3856, %3854
  %3858 = icmp ne i32 %3857, 0
  br label %3859

; <label>:3859                                    ; preds = %3842, %3833
  %3860 = phi i1 [ %3858, %3842 ], [ false, %3833 ]
  %3861 = xor i1 %3860, true
  %3862 = uitofp i1 %3861 to float
  %3863 = fadd fast float %3837, %3862
  %3864 = or i32 %3740, %3764
  %3865 = icmp slt i32 %3864, 0
  %3866 = or i1 %3767, %3743
  %3867 = or i1 %3865, %3866
  br i1 %3867, label %3885, label %3868, !dx.controlflow.hints !50

; <label>:3868                                    ; preds = %3859
  %3869 = lshr i32 %3740, 2
  %3870 = mul i32 %98, %3869
  %3871 = lshr i32 %3764, 3
  %3872 = add i32 %94, %3871
  %3873 = add i32 %3872, %96
  %3874 = add i32 %3873, %3870
  %3875 = shl i32 %3874, 2
  %3876 = shl i32 %3740, 3
  %3877 = and i32 %3876, 24
  %3878 = and i32 %3764, 7
  %3879 = or i32 %3877, %3878
  %3880 = shl i32 1, %3879
  %3881 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %3875, i32 undef)  ; BufferLoad(srv,index,wot)
  %3882 = extractvalue %dx.types.ResRet.i32 %3881, 0
  %3883 = and i32 %3882, %3880
  %3884 = icmp ne i32 %3883, 0
  br label %3885

; <label>:3885                                    ; preds = %3868, %3859
  %3886 = phi i1 [ %3884, %3868 ], [ false, %3859 ]
  %3887 = xor i1 %3886, true
  %3888 = uitofp i1 %3887 to float
  %3889 = fadd fast float %3863, %3888
  %3890 = or i32 %3740, %3788
  %3891 = icmp slt i32 %3890, 0
  %3892 = or i1 %3791, %3743
  %3893 = or i1 %3891, %3892
  br i1 %3893, label %3911, label %3894, !dx.controlflow.hints !50

; <label>:3894                                    ; preds = %3885
  %3895 = lshr i32 %3740, 2
  %3896 = mul i32 %98, %3895
  %3897 = lshr i32 %3788, 3
  %3898 = add i32 %94, %3897
  %3899 = add i32 %3898, %96
  %3900 = add i32 %3899, %3896
  %3901 = shl i32 %3900, 2
  %3902 = shl i32 %3740, 3
  %3903 = and i32 %3902, 24
  %3904 = and i32 %3788, 7
  %3905 = or i32 %3903, %3904
  %3906 = shl i32 1, %3905
  %3907 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %3901, i32 undef)  ; BufferLoad(srv,index,wot)
  %3908 = extractvalue %dx.types.ResRet.i32 %3907, 0
  %3909 = and i32 %3908, %3906
  %3910 = icmp ne i32 %3909, 0
  br label %3911

; <label>:3911                                    ; preds = %3894, %3885
  %3912 = phi i1 [ %3910, %3894 ], [ false, %3885 ]
  %3913 = xor i1 %3912, true
  %3914 = uitofp i1 %3913 to float
  %3915 = fadd fast float %3889, %3914
  %3916 = fmul fast float %2673, 7.000000e+00
  %3917 = fmul fast float %2674, 7.000000e+00
  %3918 = call float @dx.op.unary.f32(i32 28, float %3916)  ; Round_pi(value)
  %3919 = call float @dx.op.unary.f32(i32 28, float %3917)  ; Round_pi(value)
  %3920 = fptosi float %3918 to i32
  %3921 = fptosi float %3919 to i32
  %3922 = sub i32 %77, %3921
  %3923 = or i32 %3922, %76
  %3924 = icmp slt i32 %3923, 0
  %3925 = icmp sge i32 %3922, %2686
  %3926 = or i1 %2687, %3925
  %3927 = or i1 %3924, %3926
  br i1 %3927, label %3941, label %3928, !dx.controlflow.hints !50

; <label>:3928                                    ; preds = %3911
  %3929 = lshr i32 %3922, 2
  %3930 = mul i32 %98, %3929
  %3931 = add i32 %102, %3930
  %3932 = shl i32 %3931, 2
  %3933 = shl i32 %3922, 3
  %3934 = and i32 %3933, 24
  %3935 = or i32 %3934, %107
  %3936 = shl i32 1, %3935
  %3937 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %3932, i32 undef)  ; BufferLoad(srv,index,wot)
  %3938 = extractvalue %dx.types.ResRet.i32 %3937, 0
  %3939 = and i32 %3938, %3936
  %3940 = icmp ne i32 %3939, 0
  br label %3941

; <label>:3941                                    ; preds = %3928, %3911
  %3942 = phi i1 [ %3940, %3928 ], [ false, %3911 ]
  %3943 = xor i1 %3942, true
  %3944 = uitofp i1 %3943 to float
  %3945 = fadd fast float %3915, %3944
  %3946 = add i32 %3921, %77
  %3947 = or i32 %3946, %76
  %3948 = icmp slt i32 %3947, 0
  %3949 = icmp sge i32 %3946, %2686
  %3950 = or i1 %2687, %3949
  %3951 = or i1 %3948, %3950
  br i1 %3951, label %3965, label %3952, !dx.controlflow.hints !50

; <label>:3952                                    ; preds = %3941
  %3953 = lshr i32 %3946, 2
  %3954 = mul i32 %98, %3953
  %3955 = add i32 %102, %3954
  %3956 = shl i32 %3955, 2
  %3957 = shl i32 %3946, 3
  %3958 = and i32 %3957, 24
  %3959 = or i32 %3958, %107
  %3960 = shl i32 1, %3959
  %3961 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %3956, i32 undef)  ; BufferLoad(srv,index,wot)
  %3962 = extractvalue %dx.types.ResRet.i32 %3961, 0
  %3963 = and i32 %3962, %3960
  %3964 = icmp ne i32 %3963, 0
  br label %3965

; <label>:3965                                    ; preds = %3952, %3941
  %3966 = phi i1 [ %3964, %3952 ], [ false, %3941 ]
  %3967 = xor i1 %3966, true
  %3968 = uitofp i1 %3967 to float
  %3969 = fadd fast float %3945, %3968
  %3970 = sub i32 %76, %3920
  %3971 = or i32 %3970, %77
  %3972 = icmp slt i32 %3971, 0
  %3973 = icmp sge i32 %3970, %2685
  %3974 = or i1 %3973, %2737
  %3975 = or i1 %3972, %3974
  br i1 %3975, label %3989, label %3976, !dx.controlflow.hints !50

; <label>:3976                                    ; preds = %3965
  %3977 = lshr i32 %3970, 3
  %3978 = add i32 %94, %3977
  %3979 = add i32 %3978, %96
  %3980 = add i32 %3979, %99
  %3981 = shl i32 %3980, 2
  %3982 = and i32 %3970, 7
  %3983 = or i32 %3982, %106
  %3984 = shl i32 1, %3983
  %3985 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %3981, i32 undef)  ; BufferLoad(srv,index,wot)
  %3986 = extractvalue %dx.types.ResRet.i32 %3985, 0
  %3987 = and i32 %3986, %3984
  %3988 = icmp ne i32 %3987, 0
  br label %3989

; <label>:3989                                    ; preds = %3976, %3965
  %3990 = phi i1 [ %3988, %3976 ], [ false, %3965 ]
  %3991 = xor i1 %3990, true
  %3992 = uitofp i1 %3991 to float
  %3993 = fadd fast float %3969, %3992
  %3994 = add i32 %3920, %76
  %3995 = or i32 %3994, %77
  %3996 = icmp slt i32 %3995, 0
  %3997 = icmp sge i32 %3994, %2685
  %3998 = or i1 %3997, %2737
  %3999 = or i1 %3996, %3998
  br i1 %3999, label %4013, label %4000, !dx.controlflow.hints !50

; <label>:4000                                    ; preds = %3989
  %4001 = lshr i32 %3994, 3
  %4002 = add i32 %94, %4001
  %4003 = add i32 %4002, %96
  %4004 = add i32 %4003, %99
  %4005 = shl i32 %4004, 2
  %4006 = and i32 %3994, 7
  %4007 = or i32 %4006, %106
  %4008 = shl i32 1, %4007
  %4009 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %4005, i32 undef)  ; BufferLoad(srv,index,wot)
  %4010 = extractvalue %dx.types.ResRet.i32 %4009, 0
  %4011 = and i32 %4010, %4008
  %4012 = icmp ne i32 %4011, 0
  br label %4013

; <label>:4013                                    ; preds = %4000, %3989
  %4014 = phi i1 [ %4012, %4000 ], [ false, %3989 ]
  %4015 = xor i1 %4014, true
  %4016 = uitofp i1 %4015 to float
  %4017 = fadd fast float %3993, %4016
  %4018 = or i32 %3922, %3970
  %4019 = icmp slt i32 %4018, 0
  %4020 = or i1 %3973, %3925
  %4021 = or i1 %4019, %4020
  br i1 %4021, label %4039, label %4022, !dx.controlflow.hints !50

; <label>:4022                                    ; preds = %4013
  %4023 = lshr i32 %3922, 2
  %4024 = mul i32 %98, %4023
  %4025 = lshr i32 %3970, 3
  %4026 = add i32 %94, %4025
  %4027 = add i32 %4026, %96
  %4028 = add i32 %4027, %4024
  %4029 = shl i32 %4028, 2
  %4030 = shl i32 %3922, 3
  %4031 = and i32 %4030, 24
  %4032 = and i32 %3970, 7
  %4033 = or i32 %4031, %4032
  %4034 = shl i32 1, %4033
  %4035 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %4029, i32 undef)  ; BufferLoad(srv,index,wot)
  %4036 = extractvalue %dx.types.ResRet.i32 %4035, 0
  %4037 = and i32 %4036, %4034
  %4038 = icmp ne i32 %4037, 0
  br label %4039

; <label>:4039                                    ; preds = %4022, %4013
  %4040 = phi i1 [ %4038, %4022 ], [ false, %4013 ]
  %4041 = xor i1 %4040, true
  %4042 = uitofp i1 %4041 to float
  %4043 = fadd fast float %4017, %4042
  %4044 = or i32 %3922, %3994
  %4045 = icmp slt i32 %4044, 0
  %4046 = or i1 %3997, %3925
  %4047 = or i1 %4045, %4046
  br i1 %4047, label %4065, label %4048, !dx.controlflow.hints !50

; <label>:4048                                    ; preds = %4039
  %4049 = lshr i32 %3922, 2
  %4050 = mul i32 %98, %4049
  %4051 = lshr i32 %3994, 3
  %4052 = add i32 %94, %4051
  %4053 = add i32 %4052, %96
  %4054 = add i32 %4053, %4050
  %4055 = shl i32 %4054, 2
  %4056 = shl i32 %3922, 3
  %4057 = and i32 %4056, 24
  %4058 = and i32 %3994, 7
  %4059 = or i32 %4057, %4058
  %4060 = shl i32 1, %4059
  %4061 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %4055, i32 undef)  ; BufferLoad(srv,index,wot)
  %4062 = extractvalue %dx.types.ResRet.i32 %4061, 0
  %4063 = and i32 %4062, %4060
  %4064 = icmp ne i32 %4063, 0
  br label %4065

; <label>:4065                                    ; preds = %4048, %4039
  %4066 = phi i1 [ %4064, %4048 ], [ false, %4039 ]
  %4067 = xor i1 %4066, true
  %4068 = uitofp i1 %4067 to float
  %4069 = fadd fast float %4043, %4068
  %4070 = or i32 %3946, %3970
  %4071 = icmp slt i32 %4070, 0
  %4072 = or i1 %3973, %3949
  %4073 = or i1 %4071, %4072
  br i1 %4073, label %4091, label %4074, !dx.controlflow.hints !50

; <label>:4074                                    ; preds = %4065
  %4075 = lshr i32 %3946, 2
  %4076 = mul i32 %98, %4075
  %4077 = lshr i32 %3970, 3
  %4078 = add i32 %94, %4077
  %4079 = add i32 %4078, %96
  %4080 = add i32 %4079, %4076
  %4081 = shl i32 %4080, 2
  %4082 = shl i32 %3946, 3
  %4083 = and i32 %4082, 24
  %4084 = and i32 %3970, 7
  %4085 = or i32 %4083, %4084
  %4086 = shl i32 1, %4085
  %4087 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %4081, i32 undef)  ; BufferLoad(srv,index,wot)
  %4088 = extractvalue %dx.types.ResRet.i32 %4087, 0
  %4089 = and i32 %4088, %4086
  %4090 = icmp ne i32 %4089, 0
  br label %4091

; <label>:4091                                    ; preds = %4074, %4065
  %4092 = phi i1 [ %4090, %4074 ], [ false, %4065 ]
  %4093 = xor i1 %4092, true
  %4094 = uitofp i1 %4093 to float
  %4095 = fadd fast float %4069, %4094
  %4096 = or i32 %3946, %3994
  %4097 = icmp slt i32 %4096, 0
  %4098 = or i1 %3997, %3949
  %4099 = or i1 %4097, %4098
  br i1 %4099, label %4117, label %4100, !dx.controlflow.hints !50

; <label>:4100                                    ; preds = %4091
  %4101 = lshr i32 %3946, 2
  %4102 = mul i32 %98, %4101
  %4103 = lshr i32 %3994, 3
  %4104 = add i32 %94, %4103
  %4105 = add i32 %4104, %96
  %4106 = add i32 %4105, %4102
  %4107 = shl i32 %4106, 2
  %4108 = shl i32 %3946, 3
  %4109 = and i32 %4108, 24
  %4110 = and i32 %3994, 7
  %4111 = or i32 %4109, %4110
  %4112 = shl i32 1, %4111
  %4113 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %4107, i32 undef)  ; BufferLoad(srv,index,wot)
  %4114 = extractvalue %dx.types.ResRet.i32 %4113, 0
  %4115 = and i32 %4114, %4112
  %4116 = icmp ne i32 %4115, 0
  br label %4117

; <label>:4117                                    ; preds = %4100, %4091
  %4118 = phi i1 [ %4116, %4100 ], [ false, %4091 ]
  %4119 = xor i1 %4118, true
  %4120 = uitofp i1 %4119 to float
  %4121 = fadd fast float %4095, %4120
  %4122 = fmul fast float %2673, 8.000000e+00
  %4123 = fmul fast float %2674, 8.000000e+00
  %4124 = call float @dx.op.unary.f32(i32 28, float %4122)  ; Round_pi(value)
  %4125 = call float @dx.op.unary.f32(i32 28, float %4123)  ; Round_pi(value)
  %4126 = fptosi float %4124 to i32
  %4127 = fptosi float %4125 to i32
  %4128 = sub i32 %77, %4127
  %4129 = or i32 %4128, %76
  %4130 = icmp slt i32 %4129, 0
  %4131 = icmp sge i32 %4128, %2686
  %4132 = or i1 %2687, %4131
  %4133 = or i1 %4130, %4132
  br i1 %4133, label %4147, label %4134, !dx.controlflow.hints !50

; <label>:4134                                    ; preds = %4117
  %4135 = lshr i32 %4128, 2
  %4136 = mul i32 %98, %4135
  %4137 = add i32 %102, %4136
  %4138 = shl i32 %4137, 2
  %4139 = shl i32 %4128, 3
  %4140 = and i32 %4139, 24
  %4141 = or i32 %4140, %107
  %4142 = shl i32 1, %4141
  %4143 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %4138, i32 undef)  ; BufferLoad(srv,index,wot)
  %4144 = extractvalue %dx.types.ResRet.i32 %4143, 0
  %4145 = and i32 %4144, %4142
  %4146 = icmp ne i32 %4145, 0
  br label %4147

; <label>:4147                                    ; preds = %4134, %4117
  %4148 = phi i1 [ %4146, %4134 ], [ false, %4117 ]
  %4149 = xor i1 %4148, true
  %4150 = uitofp i1 %4149 to float
  %4151 = fadd fast float %4121, %4150
  %4152 = add i32 %4127, %77
  %4153 = or i32 %4152, %76
  %4154 = icmp slt i32 %4153, 0
  %4155 = icmp sge i32 %4152, %2686
  %4156 = or i1 %2687, %4155
  %4157 = or i1 %4154, %4156
  br i1 %4157, label %4171, label %4158, !dx.controlflow.hints !50

; <label>:4158                                    ; preds = %4147
  %4159 = lshr i32 %4152, 2
  %4160 = mul i32 %98, %4159
  %4161 = add i32 %102, %4160
  %4162 = shl i32 %4161, 2
  %4163 = shl i32 %4152, 3
  %4164 = and i32 %4163, 24
  %4165 = or i32 %4164, %107
  %4166 = shl i32 1, %4165
  %4167 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %4162, i32 undef)  ; BufferLoad(srv,index,wot)
  %4168 = extractvalue %dx.types.ResRet.i32 %4167, 0
  %4169 = and i32 %4168, %4166
  %4170 = icmp ne i32 %4169, 0
  br label %4171

; <label>:4171                                    ; preds = %4158, %4147
  %4172 = phi i1 [ %4170, %4158 ], [ false, %4147 ]
  %4173 = xor i1 %4172, true
  %4174 = uitofp i1 %4173 to float
  %4175 = fadd fast float %4151, %4174
  %4176 = sub i32 %76, %4126
  %4177 = or i32 %4176, %77
  %4178 = icmp slt i32 %4177, 0
  %4179 = icmp sge i32 %4176, %2685
  %4180 = or i1 %4179, %2737
  %4181 = or i1 %4178, %4180
  br i1 %4181, label %4195, label %4182, !dx.controlflow.hints !50

; <label>:4182                                    ; preds = %4171
  %4183 = lshr i32 %4176, 3
  %4184 = add i32 %94, %4183
  %4185 = add i32 %4184, %96
  %4186 = add i32 %4185, %99
  %4187 = shl i32 %4186, 2
  %4188 = and i32 %4176, 7
  %4189 = or i32 %4188, %106
  %4190 = shl i32 1, %4189
  %4191 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %4187, i32 undef)  ; BufferLoad(srv,index,wot)
  %4192 = extractvalue %dx.types.ResRet.i32 %4191, 0
  %4193 = and i32 %4192, %4190
  %4194 = icmp ne i32 %4193, 0
  br label %4195

; <label>:4195                                    ; preds = %4182, %4171
  %4196 = phi i1 [ %4194, %4182 ], [ false, %4171 ]
  %4197 = xor i1 %4196, true
  %4198 = uitofp i1 %4197 to float
  %4199 = fadd fast float %4175, %4198
  %4200 = add i32 %4126, %76
  %4201 = or i32 %4200, %77
  %4202 = icmp slt i32 %4201, 0
  %4203 = icmp sge i32 %4200, %2685
  %4204 = or i1 %4203, %2737
  %4205 = or i1 %4202, %4204
  br i1 %4205, label %4219, label %4206, !dx.controlflow.hints !50

; <label>:4206                                    ; preds = %4195
  %4207 = lshr i32 %4200, 3
  %4208 = add i32 %94, %4207
  %4209 = add i32 %4208, %96
  %4210 = add i32 %4209, %99
  %4211 = shl i32 %4210, 2
  %4212 = and i32 %4200, 7
  %4213 = or i32 %4212, %106
  %4214 = shl i32 1, %4213
  %4215 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %4211, i32 undef)  ; BufferLoad(srv,index,wot)
  %4216 = extractvalue %dx.types.ResRet.i32 %4215, 0
  %4217 = and i32 %4216, %4214
  %4218 = icmp ne i32 %4217, 0
  br label %4219

; <label>:4219                                    ; preds = %4206, %4195
  %4220 = phi i1 [ %4218, %4206 ], [ false, %4195 ]
  %4221 = xor i1 %4220, true
  %4222 = uitofp i1 %4221 to float
  %4223 = fadd fast float %4199, %4222
  %4224 = or i32 %4128, %4176
  %4225 = icmp slt i32 %4224, 0
  %4226 = or i1 %4179, %4131
  %4227 = or i1 %4225, %4226
  br i1 %4227, label %4245, label %4228, !dx.controlflow.hints !50

; <label>:4228                                    ; preds = %4219
  %4229 = lshr i32 %4128, 2
  %4230 = mul i32 %98, %4229
  %4231 = lshr i32 %4176, 3
  %4232 = add i32 %94, %4231
  %4233 = add i32 %4232, %96
  %4234 = add i32 %4233, %4230
  %4235 = shl i32 %4234, 2
  %4236 = shl i32 %4128, 3
  %4237 = and i32 %4236, 24
  %4238 = and i32 %4176, 7
  %4239 = or i32 %4237, %4238
  %4240 = shl i32 1, %4239
  %4241 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %4235, i32 undef)  ; BufferLoad(srv,index,wot)
  %4242 = extractvalue %dx.types.ResRet.i32 %4241, 0
  %4243 = and i32 %4242, %4240
  %4244 = icmp ne i32 %4243, 0
  br label %4245

; <label>:4245                                    ; preds = %4228, %4219
  %4246 = phi i1 [ %4244, %4228 ], [ false, %4219 ]
  %4247 = xor i1 %4246, true
  %4248 = uitofp i1 %4247 to float
  %4249 = fadd fast float %4223, %4248
  %4250 = or i32 %4128, %4200
  %4251 = icmp slt i32 %4250, 0
  %4252 = or i1 %4203, %4131
  %4253 = or i1 %4251, %4252
  br i1 %4253, label %4271, label %4254, !dx.controlflow.hints !50

; <label>:4254                                    ; preds = %4245
  %4255 = lshr i32 %4128, 2
  %4256 = mul i32 %98, %4255
  %4257 = lshr i32 %4200, 3
  %4258 = add i32 %94, %4257
  %4259 = add i32 %4258, %96
  %4260 = add i32 %4259, %4256
  %4261 = shl i32 %4260, 2
  %4262 = shl i32 %4128, 3
  %4263 = and i32 %4262, 24
  %4264 = and i32 %4200, 7
  %4265 = or i32 %4263, %4264
  %4266 = shl i32 1, %4265
  %4267 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %4261, i32 undef)  ; BufferLoad(srv,index,wot)
  %4268 = extractvalue %dx.types.ResRet.i32 %4267, 0
  %4269 = and i32 %4268, %4266
  %4270 = icmp ne i32 %4269, 0
  br label %4271

; <label>:4271                                    ; preds = %4254, %4245
  %4272 = phi i1 [ %4270, %4254 ], [ false, %4245 ]
  %4273 = xor i1 %4272, true
  %4274 = uitofp i1 %4273 to float
  %4275 = fadd fast float %4249, %4274
  %4276 = or i32 %4152, %4176
  %4277 = icmp slt i32 %4276, 0
  %4278 = or i1 %4179, %4155
  %4279 = or i1 %4277, %4278
  br i1 %4279, label %4297, label %4280, !dx.controlflow.hints !50

; <label>:4280                                    ; preds = %4271
  %4281 = lshr i32 %4152, 2
  %4282 = mul i32 %98, %4281
  %4283 = lshr i32 %4176, 3
  %4284 = add i32 %94, %4283
  %4285 = add i32 %4284, %96
  %4286 = add i32 %4285, %4282
  %4287 = shl i32 %4286, 2
  %4288 = shl i32 %4152, 3
  %4289 = and i32 %4288, 24
  %4290 = and i32 %4176, 7
  %4291 = or i32 %4289, %4290
  %4292 = shl i32 1, %4291
  %4293 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %4287, i32 undef)  ; BufferLoad(srv,index,wot)
  %4294 = extractvalue %dx.types.ResRet.i32 %4293, 0
  %4295 = and i32 %4294, %4292
  %4296 = icmp ne i32 %4295, 0
  br label %4297

; <label>:4297                                    ; preds = %4280, %4271
  %4298 = phi i1 [ %4296, %4280 ], [ false, %4271 ]
  %4299 = xor i1 %4298, true
  %4300 = uitofp i1 %4299 to float
  %4301 = fadd fast float %4275, %4300
  %4302 = or i32 %4152, %4200
  %4303 = icmp slt i32 %4302, 0
  %4304 = or i1 %4203, %4155
  %4305 = or i1 %4303, %4304
  br i1 %4305, label %4323, label %4306, !dx.controlflow.hints !50

; <label>:4306                                    ; preds = %4297
  %4307 = lshr i32 %4152, 2
  %4308 = mul i32 %98, %4307
  %4309 = lshr i32 %4200, 3
  %4310 = add i32 %94, %4309
  %4311 = add i32 %4310, %96
  %4312 = add i32 %4311, %4308
  %4313 = shl i32 %4312, 2
  %4314 = shl i32 %4152, 3
  %4315 = and i32 %4314, 24
  %4316 = and i32 %4200, 7
  %4317 = or i32 %4315, %4316
  %4318 = shl i32 1, %4317
  %4319 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %4313, i32 undef)  ; BufferLoad(srv,index,wot)
  %4320 = extractvalue %dx.types.ResRet.i32 %4319, 0
  %4321 = and i32 %4320, %4318
  %4322 = icmp ne i32 %4321, 0
  br label %4323

; <label>:4323                                    ; preds = %4306, %4297
  %4324 = phi i1 [ %4322, %4306 ], [ false, %4297 ]
  %4325 = xor i1 %4324, true
  %4326 = uitofp i1 %4325 to float
  %4327 = fadd fast float %4301, %4326
  %4328 = fmul fast float %2673, 9.000000e+00
  %4329 = fmul fast float %2674, 9.000000e+00
  %4330 = call float @dx.op.unary.f32(i32 28, float %4328)  ; Round_pi(value)
  %4331 = call float @dx.op.unary.f32(i32 28, float %4329)  ; Round_pi(value)
  %4332 = fptosi float %4330 to i32
  %4333 = fptosi float %4331 to i32
  %4334 = sub i32 %77, %4333
  %4335 = or i32 %4334, %76
  %4336 = icmp slt i32 %4335, 0
  %4337 = icmp sge i32 %4334, %2686
  %4338 = or i1 %2687, %4337
  %4339 = or i1 %4336, %4338
  br i1 %4339, label %4353, label %4340, !dx.controlflow.hints !50

; <label>:4340                                    ; preds = %4323
  %4341 = lshr i32 %4334, 2
  %4342 = mul i32 %98, %4341
  %4343 = add i32 %102, %4342
  %4344 = shl i32 %4343, 2
  %4345 = shl i32 %4334, 3
  %4346 = and i32 %4345, 24
  %4347 = or i32 %4346, %107
  %4348 = shl i32 1, %4347
  %4349 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %4344, i32 undef)  ; BufferLoad(srv,index,wot)
  %4350 = extractvalue %dx.types.ResRet.i32 %4349, 0
  %4351 = and i32 %4350, %4348
  %4352 = icmp ne i32 %4351, 0
  br label %4353

; <label>:4353                                    ; preds = %4340, %4323
  %4354 = phi i1 [ %4352, %4340 ], [ false, %4323 ]
  %4355 = xor i1 %4354, true
  %4356 = uitofp i1 %4355 to float
  %4357 = fadd fast float %4327, %4356
  %4358 = add i32 %4333, %77
  %4359 = or i32 %4358, %76
  %4360 = icmp slt i32 %4359, 0
  %4361 = icmp sge i32 %4358, %2686
  %4362 = or i1 %2687, %4361
  %4363 = or i1 %4360, %4362
  br i1 %4363, label %4377, label %4364, !dx.controlflow.hints !50

; <label>:4364                                    ; preds = %4353
  %4365 = lshr i32 %4358, 2
  %4366 = mul i32 %98, %4365
  %4367 = add i32 %102, %4366
  %4368 = shl i32 %4367, 2
  %4369 = shl i32 %4358, 3
  %4370 = and i32 %4369, 24
  %4371 = or i32 %4370, %107
  %4372 = shl i32 1, %4371
  %4373 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %4368, i32 undef)  ; BufferLoad(srv,index,wot)
  %4374 = extractvalue %dx.types.ResRet.i32 %4373, 0
  %4375 = and i32 %4374, %4372
  %4376 = icmp ne i32 %4375, 0
  br label %4377

; <label>:4377                                    ; preds = %4364, %4353
  %4378 = phi i1 [ %4376, %4364 ], [ false, %4353 ]
  %4379 = xor i1 %4378, true
  %4380 = uitofp i1 %4379 to float
  %4381 = fadd fast float %4357, %4380
  %4382 = sub i32 %76, %4332
  %4383 = or i32 %4382, %77
  %4384 = icmp slt i32 %4383, 0
  %4385 = icmp sge i32 %4382, %2685
  %4386 = or i1 %4385, %2737
  %4387 = or i1 %4384, %4386
  br i1 %4387, label %4401, label %4388, !dx.controlflow.hints !50

; <label>:4388                                    ; preds = %4377
  %4389 = lshr i32 %4382, 3
  %4390 = add i32 %94, %4389
  %4391 = add i32 %4390, %96
  %4392 = add i32 %4391, %99
  %4393 = shl i32 %4392, 2
  %4394 = and i32 %4382, 7
  %4395 = or i32 %4394, %106
  %4396 = shl i32 1, %4395
  %4397 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %4393, i32 undef)  ; BufferLoad(srv,index,wot)
  %4398 = extractvalue %dx.types.ResRet.i32 %4397, 0
  %4399 = and i32 %4398, %4396
  %4400 = icmp ne i32 %4399, 0
  br label %4401

; <label>:4401                                    ; preds = %4388, %4377
  %4402 = phi i1 [ %4400, %4388 ], [ false, %4377 ]
  %4403 = xor i1 %4402, true
  %4404 = uitofp i1 %4403 to float
  %4405 = fadd fast float %4381, %4404
  %4406 = add i32 %4332, %76
  %4407 = or i32 %4406, %77
  %4408 = icmp slt i32 %4407, 0
  %4409 = icmp sge i32 %4406, %2685
  %4410 = or i1 %4409, %2737
  %4411 = or i1 %4408, %4410
  br i1 %4411, label %4426, label %4412, !dx.controlflow.hints !50

; <label>:4412                                    ; preds = %4401
  %4413 = lshr i32 %4406, 3
  %4414 = add i32 %94, %4413
  %4415 = add i32 %4414, %96
  %4416 = add i32 %4415, %99
  %4417 = shl i32 %4416, 2
  %4418 = and i32 %4406, 7
  %4419 = or i32 %4418, %106
  %4420 = shl i32 1, %4419
  %4421 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %4417, i32 undef)  ; BufferLoad(srv,index,wot)
  %4422 = extractvalue %dx.types.ResRet.i32 %4421, 0
  %4423 = and i32 %4422, %4420
  %4424 = icmp eq i32 %4423, 0
  %4425 = uitofp i1 %4424 to float
  br label %4426

; <label>:4426                                    ; preds = %4412, %4401
  %4427 = phi float [ %4425, %4412 ], [ 1.000000e+00, %4401 ]
  %4428 = fadd fast float %4405, %4427
  %4429 = or i32 %4334, %4382
  %4430 = icmp slt i32 %4429, 0
  %4431 = or i1 %4385, %4337
  %4432 = or i1 %4430, %4431
  br i1 %4432, label %4451, label %4433, !dx.controlflow.hints !50

; <label>:4433                                    ; preds = %4426
  %4434 = lshr i32 %4334, 2
  %4435 = mul i32 %98, %4434
  %4436 = lshr i32 %4382, 3
  %4437 = add i32 %94, %4436
  %4438 = add i32 %4437, %96
  %4439 = add i32 %4438, %4435
  %4440 = shl i32 %4439, 2
  %4441 = shl i32 %4334, 3
  %4442 = and i32 %4441, 24
  %4443 = and i32 %4382, 7
  %4444 = or i32 %4442, %4443
  %4445 = shl i32 1, %4444
  %4446 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %4440, i32 undef)  ; BufferLoad(srv,index,wot)
  %4447 = extractvalue %dx.types.ResRet.i32 %4446, 0
  %4448 = and i32 %4447, %4445
  %4449 = icmp eq i32 %4448, 0
  %4450 = uitofp i1 %4449 to float
  br label %4451

; <label>:4451                                    ; preds = %4433, %4426
  %4452 = phi float [ %4450, %4433 ], [ 1.000000e+00, %4426 ]
  %4453 = fadd fast float %4428, %4452
  %4454 = or i32 %4334, %4406
  %4455 = icmp slt i32 %4454, 0
  %4456 = or i1 %4409, %4337
  %4457 = or i1 %4455, %4456
  br i1 %4457, label %4476, label %4458, !dx.controlflow.hints !50

; <label>:4458                                    ; preds = %4451
  %4459 = lshr i32 %4334, 2
  %4460 = mul i32 %98, %4459
  %4461 = lshr i32 %4406, 3
  %4462 = add i32 %94, %4461
  %4463 = add i32 %4462, %96
  %4464 = add i32 %4463, %4460
  %4465 = shl i32 %4464, 2
  %4466 = shl i32 %4334, 3
  %4467 = and i32 %4466, 24
  %4468 = and i32 %4406, 7
  %4469 = or i32 %4467, %4468
  %4470 = shl i32 1, %4469
  %4471 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %4465, i32 undef)  ; BufferLoad(srv,index,wot)
  %4472 = extractvalue %dx.types.ResRet.i32 %4471, 0
  %4473 = and i32 %4472, %4470
  %4474 = icmp eq i32 %4473, 0
  %4475 = uitofp i1 %4474 to float
  br label %4476

; <label>:4476                                    ; preds = %4458, %4451
  %4477 = phi float [ %4475, %4458 ], [ 1.000000e+00, %4451 ]
  %4478 = fadd fast float %4453, %4477
  %4479 = or i32 %4358, %4382
  %4480 = icmp slt i32 %4479, 0
  %4481 = or i1 %4385, %4361
  %4482 = or i1 %4480, %4481
  br i1 %4482, label %4501, label %4483, !dx.controlflow.hints !50

; <label>:4483                                    ; preds = %4476
  %4484 = lshr i32 %4358, 2
  %4485 = mul i32 %98, %4484
  %4486 = lshr i32 %4382, 3
  %4487 = add i32 %94, %4486
  %4488 = add i32 %4487, %96
  %4489 = add i32 %4488, %4485
  %4490 = shl i32 %4489, 2
  %4491 = shl i32 %4358, 3
  %4492 = and i32 %4491, 24
  %4493 = and i32 %4382, 7
  %4494 = or i32 %4492, %4493
  %4495 = shl i32 1, %4494
  %4496 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %4490, i32 undef)  ; BufferLoad(srv,index,wot)
  %4497 = extractvalue %dx.types.ResRet.i32 %4496, 0
  %4498 = and i32 %4497, %4495
  %4499 = icmp eq i32 %4498, 0
  %4500 = uitofp i1 %4499 to float
  br label %4501

; <label>:4501                                    ; preds = %4483, %4476
  %4502 = phi float [ %4500, %4483 ], [ 1.000000e+00, %4476 ]
  %4503 = fadd fast float %4478, %4502
  %4504 = or i32 %4358, %4406
  %4505 = icmp slt i32 %4504, 0
  %4506 = or i1 %4409, %4361
  %4507 = or i1 %4505, %4506
  br i1 %4507, label %4526, label %4508, !dx.controlflow.hints !50

; <label>:4508                                    ; preds = %4501
  %4509 = lshr i32 %4358, 2
  %4510 = mul i32 %98, %4509
  %4511 = lshr i32 %4406, 3
  %4512 = add i32 %94, %4511
  %4513 = add i32 %4512, %96
  %4514 = add i32 %4513, %4510
  %4515 = shl i32 %4514, 2
  %4516 = shl i32 %4358, 3
  %4517 = and i32 %4516, 24
  %4518 = and i32 %4406, 7
  %4519 = or i32 %4517, %4518
  %4520 = shl i32 1, %4519
  %4521 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %4515, i32 undef)  ; BufferLoad(srv,index,wot)
  %4522 = extractvalue %dx.types.ResRet.i32 %4521, 0
  %4523 = and i32 %4522, %4520
  %4524 = icmp eq i32 %4523, 0
  %4525 = uitofp i1 %4524 to float
  br label %4526

; <label>:4526                                    ; preds = %4508, %4501
  %4527 = phi float [ %4525, %4508 ], [ 1.000000e+00, %4501 ]
  %4528 = fadd fast float %4503, %4527
  %4529 = fmul fast float %2673, 1.000000e+01
  %4530 = fmul fast float %2674, 1.000000e+01
  %4531 = call float @dx.op.unary.f32(i32 28, float %4529)  ; Round_pi(value)
  %4532 = call float @dx.op.unary.f32(i32 28, float %4530)  ; Round_pi(value)
  %4533 = fptosi float %4531 to i32
  %4534 = fptosi float %4532 to i32
  %4535 = sub i32 %77, %4534
  %4536 = or i32 %4535, %76
  %4537 = icmp slt i32 %4536, 0
  %4538 = icmp sge i32 %4535, %2686
  %4539 = or i1 %2687, %4538
  %4540 = or i1 %4537, %4539
  br i1 %4540, label %4555, label %4541, !dx.controlflow.hints !50

; <label>:4541                                    ; preds = %4526
  %4542 = lshr i32 %4535, 2
  %4543 = mul i32 %98, %4542
  %4544 = add i32 %102, %4543
  %4545 = shl i32 %4544, 2
  %4546 = shl i32 %4535, 3
  %4547 = and i32 %4546, 24
  %4548 = or i32 %4547, %107
  %4549 = shl i32 1, %4548
  %4550 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %4545, i32 undef)  ; BufferLoad(srv,index,wot)
  %4551 = extractvalue %dx.types.ResRet.i32 %4550, 0
  %4552 = and i32 %4551, %4549
  %4553 = icmp eq i32 %4552, 0
  %4554 = uitofp i1 %4553 to float
  br label %4555

; <label>:4555                                    ; preds = %4541, %4526
  %4556 = phi float [ %4554, %4541 ], [ 1.000000e+00, %4526 ]
  %4557 = fadd fast float %4528, %4556
  %4558 = add i32 %4534, %77
  %4559 = or i32 %4558, %76
  %4560 = icmp slt i32 %4559, 0
  %4561 = icmp sge i32 %4558, %2686
  %4562 = or i1 %2687, %4561
  %4563 = or i1 %4560, %4562
  br i1 %4563, label %4578, label %4564, !dx.controlflow.hints !50

; <label>:4564                                    ; preds = %4555
  %4565 = lshr i32 %4558, 2
  %4566 = mul i32 %98, %4565
  %4567 = add i32 %102, %4566
  %4568 = shl i32 %4567, 2
  %4569 = shl i32 %4558, 3
  %4570 = and i32 %4569, 24
  %4571 = or i32 %4570, %107
  %4572 = shl i32 1, %4571
  %4573 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %4568, i32 undef)  ; BufferLoad(srv,index,wot)
  %4574 = extractvalue %dx.types.ResRet.i32 %4573, 0
  %4575 = and i32 %4574, %4572
  %4576 = icmp eq i32 %4575, 0
  %4577 = uitofp i1 %4576 to float
  br label %4578

; <label>:4578                                    ; preds = %4564, %4555
  %4579 = phi float [ %4577, %4564 ], [ 1.000000e+00, %4555 ]
  %4580 = fadd fast float %4557, %4579
  %4581 = sub i32 %76, %4533
  %4582 = or i32 %4581, %77
  %4583 = icmp slt i32 %4582, 0
  %4584 = icmp sge i32 %4581, %2685
  %4585 = or i1 %4584, %2737
  %4586 = or i1 %4583, %4585
  br i1 %4586, label %4601, label %4587, !dx.controlflow.hints !50

; <label>:4587                                    ; preds = %4578
  %4588 = lshr i32 %4581, 3
  %4589 = add i32 %94, %4588
  %4590 = add i32 %4589, %96
  %4591 = add i32 %4590, %99
  %4592 = shl i32 %4591, 2
  %4593 = and i32 %4581, 7
  %4594 = or i32 %4593, %106
  %4595 = shl i32 1, %4594
  %4596 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %4592, i32 undef)  ; BufferLoad(srv,index,wot)
  %4597 = extractvalue %dx.types.ResRet.i32 %4596, 0
  %4598 = and i32 %4597, %4595
  %4599 = icmp eq i32 %4598, 0
  %4600 = uitofp i1 %4599 to float
  br label %4601

; <label>:4601                                    ; preds = %4587, %4578
  %4602 = phi float [ %4600, %4587 ], [ 1.000000e+00, %4578 ]
  %4603 = fadd fast float %4580, %4602
  %4604 = add i32 %4533, %76
  %4605 = or i32 %4604, %77
  %4606 = icmp slt i32 %4605, 0
  %4607 = icmp sge i32 %4604, %2685
  %4608 = or i1 %4607, %2737
  %4609 = or i1 %4606, %4608
  br i1 %4609, label %4624, label %4610, !dx.controlflow.hints !50

; <label>:4610                                    ; preds = %4601
  %4611 = lshr i32 %4604, 3
  %4612 = add i32 %94, %4611
  %4613 = add i32 %4612, %96
  %4614 = add i32 %4613, %99
  %4615 = shl i32 %4614, 2
  %4616 = and i32 %4604, 7
  %4617 = or i32 %4616, %106
  %4618 = shl i32 1, %4617
  %4619 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %4615, i32 undef)  ; BufferLoad(srv,index,wot)
  %4620 = extractvalue %dx.types.ResRet.i32 %4619, 0
  %4621 = and i32 %4620, %4618
  %4622 = icmp eq i32 %4621, 0
  %4623 = uitofp i1 %4622 to float
  br label %4624

; <label>:4624                                    ; preds = %4610, %4601
  %4625 = phi float [ %4623, %4610 ], [ 1.000000e+00, %4601 ]
  %4626 = fadd fast float %4603, %4625
  %4627 = or i32 %4535, %4581
  %4628 = icmp slt i32 %4627, 0
  %4629 = or i1 %4584, %4538
  %4630 = or i1 %4628, %4629
  br i1 %4630, label %4649, label %4631, !dx.controlflow.hints !50

; <label>:4631                                    ; preds = %4624
  %4632 = lshr i32 %4535, 2
  %4633 = mul i32 %98, %4632
  %4634 = lshr i32 %4581, 3
  %4635 = add i32 %94, %4634
  %4636 = add i32 %4635, %96
  %4637 = add i32 %4636, %4633
  %4638 = shl i32 %4637, 2
  %4639 = shl i32 %4535, 3
  %4640 = and i32 %4639, 24
  %4641 = and i32 %4581, 7
  %4642 = or i32 %4640, %4641
  %4643 = shl i32 1, %4642
  %4644 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %4638, i32 undef)  ; BufferLoad(srv,index,wot)
  %4645 = extractvalue %dx.types.ResRet.i32 %4644, 0
  %4646 = and i32 %4645, %4643
  %4647 = icmp eq i32 %4646, 0
  %4648 = uitofp i1 %4647 to float
  br label %4649

; <label>:4649                                    ; preds = %4631, %4624
  %4650 = phi float [ %4648, %4631 ], [ 1.000000e+00, %4624 ]
  %4651 = fadd fast float %4626, %4650
  %4652 = or i32 %4535, %4604
  %4653 = icmp slt i32 %4652, 0
  %4654 = or i1 %4607, %4538
  %4655 = or i1 %4653, %4654
  br i1 %4655, label %4674, label %4656, !dx.controlflow.hints !50

; <label>:4656                                    ; preds = %4649
  %4657 = lshr i32 %4535, 2
  %4658 = mul i32 %98, %4657
  %4659 = lshr i32 %4604, 3
  %4660 = add i32 %94, %4659
  %4661 = add i32 %4660, %96
  %4662 = add i32 %4661, %4658
  %4663 = shl i32 %4662, 2
  %4664 = shl i32 %4535, 3
  %4665 = and i32 %4664, 24
  %4666 = and i32 %4604, 7
  %4667 = or i32 %4665, %4666
  %4668 = shl i32 1, %4667
  %4669 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %4663, i32 undef)  ; BufferLoad(srv,index,wot)
  %4670 = extractvalue %dx.types.ResRet.i32 %4669, 0
  %4671 = and i32 %4670, %4668
  %4672 = icmp eq i32 %4671, 0
  %4673 = uitofp i1 %4672 to float
  br label %4674

; <label>:4674                                    ; preds = %4656, %4649
  %4675 = phi float [ %4673, %4656 ], [ 1.000000e+00, %4649 ]
  %4676 = fadd fast float %4651, %4675
  %4677 = or i32 %4558, %4581
  %4678 = icmp slt i32 %4677, 0
  %4679 = or i1 %4584, %4561
  %4680 = or i1 %4678, %4679
  br i1 %4680, label %4699, label %4681, !dx.controlflow.hints !50

; <label>:4681                                    ; preds = %4674
  %4682 = lshr i32 %4558, 2
  %4683 = mul i32 %98, %4682
  %4684 = lshr i32 %4581, 3
  %4685 = add i32 %94, %4684
  %4686 = add i32 %4685, %96
  %4687 = add i32 %4686, %4683
  %4688 = shl i32 %4687, 2
  %4689 = shl i32 %4558, 3
  %4690 = and i32 %4689, 24
  %4691 = and i32 %4581, 7
  %4692 = or i32 %4690, %4691
  %4693 = shl i32 1, %4692
  %4694 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %4688, i32 undef)  ; BufferLoad(srv,index,wot)
  %4695 = extractvalue %dx.types.ResRet.i32 %4694, 0
  %4696 = and i32 %4695, %4693
  %4697 = icmp eq i32 %4696, 0
  %4698 = uitofp i1 %4697 to float
  br label %4699

; <label>:4699                                    ; preds = %4681, %4674
  %4700 = phi float [ %4698, %4681 ], [ 1.000000e+00, %4674 ]
  %4701 = fadd fast float %4676, %4700
  %4702 = or i32 %4558, %4604
  %4703 = icmp slt i32 %4702, 0
  %4704 = or i1 %4607, %4561
  %4705 = or i1 %4703, %4704
  br i1 %4705, label %4724, label %4706, !dx.controlflow.hints !50

; <label>:4706                                    ; preds = %4699
  %4707 = lshr i32 %4558, 2
  %4708 = mul i32 %98, %4707
  %4709 = lshr i32 %4604, 3
  %4710 = add i32 %94, %4709
  %4711 = add i32 %4710, %96
  %4712 = add i32 %4711, %4708
  %4713 = shl i32 %4712, 2
  %4714 = shl i32 %4558, 3
  %4715 = and i32 %4714, 24
  %4716 = and i32 %4604, 7
  %4717 = or i32 %4715, %4716
  %4718 = shl i32 1, %4717
  %4719 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %4713, i32 undef)  ; BufferLoad(srv,index,wot)
  %4720 = extractvalue %dx.types.ResRet.i32 %4719, 0
  %4721 = and i32 %4720, %4718
  %4722 = icmp eq i32 %4721, 0
  %4723 = uitofp i1 %4722 to float
  br label %4724

; <label>:4724                                    ; preds = %4706, %4699
  %4725 = phi float [ %4723, %4706 ], [ 1.000000e+00, %4699 ]
  %4726 = fadd fast float %4701, %4725
  %4727 = fmul fast float %2627, 1.500000e+00
  %4728 = fsub fast float 3.000000e+00, %4727
  %4729 = fdiv fast float 0x3FB99999A0000000, %4728
  %4730 = fmul fast float %2627, 2.000000e+00
  %4731 = fsub fast float 8.000000e+00, %4726
  %4732 = fsub fast float %4731, %4730
  %4733 = fmul fast float %4732, 4.000000e+00
  %4734 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4733)  ; FMax(a,b)
  %4735 = fadd fast float %4734, %4726
  %4736 = fmul fast float %4735, %4729
  %4737 = fadd fast float %2627, 1.500000e+00
  %4738 = fsub fast float 1.000000e+00, %4736
  %4739 = call float @dx.op.unary.f32(i32 7, float %4738)  ; Saturate(value)
  %4740 = call float @dx.op.unary.f32(i32 23, float %4739)  ; Log(value)
  %4741 = fmul fast float %4740, %4737
  %4742 = call float @dx.op.unary.f32(i32 21, float %4741)  ; Exp(value)
  %4743 = fmul fast float %2470, %2462
  %4744 = fmul fast float %2471, %2463
  %4745 = fmul fast float %2472, %2464
  %4746 = call float @dx.op.unary.f32(i32 23, float %2605)  ; Log(value)
  %4747 = fmul fast float %4746, 2.500000e-01
  %4748 = call float @dx.op.unary.f32(i32 21, float %4747)  ; Exp(value)
  %4749 = fmul fast float %2465, %2421
  %4750 = fmul fast float %4749, %2473
  %4751 = fmul fast float %4750, %4742
  %4752 = fmul fast float %4751, %4748
  br label %5361

; <label>:4753                                    ; preds = %626
  %4754 = and i32 %666, 511
  %4755 = mul nuw nsw i32 %4754, 20
  %4756 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %4755, i32 undef)  ; BufferLoad(srv,index,wot)
  %4757 = extractvalue %dx.types.ResRet.i32 %4756, 0
  %4758 = lshr i32 %4757, 24
  %4759 = uitofp i32 %4758 to float
  %4760 = add i32 %77, -1
  %4761 = lshr i32 %76, 1
  %4762 = lshr i32 %4760, 1
  %4763 = and i32 %76, 1
  %4764 = shl i32 %4760, 1
  %4765 = and i32 %4764, 2
  %4766 = or i32 %4765, %4763
  %4767 = getelementptr inbounds [4 x i32], [4 x i32]* %25, i32 0, i32 0
  store i32 %628, i32* %4767, align 4
  %4768 = getelementptr inbounds [4 x i32], [4 x i32]* %25, i32 0, i32 1
  store i32 %629, i32* %4768, align 4
  %4769 = getelementptr inbounds [4 x i32], [4 x i32]* %25, i32 0, i32 2
  store i32 %630, i32* %4769, align 4
  %4770 = getelementptr inbounds [4 x i32], [4 x i32]* %25, i32 0, i32 3
  store i32 %631, i32* %4770, align 4
  %4771 = getelementptr [4 x i32], [4 x i32]* %25, i32 0, i32 %4766
  %4772 = load i32, i32* %4771, align 4, !tbaa !43
  %4773 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %11, i32 %4772, i32 %4761, i32 %4762, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4774 = extractvalue %dx.types.ResRet.i32 %4773, 0
  %4775 = lshr i32 %4774, 8
  %4776 = and i32 %4774, 255
  %4777 = and i32 %4775, 255
  %4778 = uitofp i32 %4776 to float
  %4779 = uitofp i32 %4777 to float
  %4780 = fmul fast float %4778, 0x3F80101020000000
  %4781 = fmul fast float %4779, 0x3F80101020000000
  %4782 = fadd fast float %4780, -1.000000e+00
  %4783 = fadd fast float %4781, -1.000000e+00
  %4784 = call float @dx.op.unary.f32(i32 6, float %4782)  ; FAbs(value)
  %4785 = fsub fast float 1.000000e+00, %4784
  %4786 = call float @dx.op.unary.f32(i32 6, float %4783)  ; FAbs(value)
  %4787 = fsub fast float %4785, %4786
  %4788 = fsub fast float -0.000000e+00, %4787
  %4789 = call float @dx.op.binary.f32(i32 35, float %4788, float 0.000000e+00)  ; FMax(a,b)
  %4790 = fcmp fast ogt float %4782, 0.000000e+00
  %4791 = fsub fast float -0.000000e+00, %4789
  %4792 = select i1 %4790, float %4791, float %4789
  %4793 = fadd fast float %4792, %4782
  %4794 = fcmp fast ogt float %4783, 0.000000e+00
  %4795 = select i1 %4794, float %4791, float %4789
  %4796 = fadd fast float %4795, %4783
  %4797 = call float @dx.op.dot3.f32(i32 55, float %4793, float %4796, float %4787, float %4793, float %4796, float %4787)  ; Dot3(ax,ay,az,bx,by,bz)
  %4798 = call float @dx.op.unary.f32(i32 25, float %4797)  ; Rsqrt(value)
  %4799 = fmul fast float %4793, %4798
  %4800 = fmul fast float %4796, %4798
  %4801 = fmul fast float %4798, %4787
  %4802 = add i32 %77, 1
  %4803 = lshr i32 %4802, 1
  %4804 = shl i32 %4802, 1
  %4805 = and i32 %4804, 2
  %4806 = or i32 %4805, %4763
  %4807 = getelementptr inbounds [4 x i32], [4 x i32]* %24, i32 0, i32 0
  store i32 %628, i32* %4807, align 4
  %4808 = getelementptr inbounds [4 x i32], [4 x i32]* %24, i32 0, i32 1
  store i32 %629, i32* %4808, align 4
  %4809 = getelementptr inbounds [4 x i32], [4 x i32]* %24, i32 0, i32 2
  store i32 %630, i32* %4809, align 4
  %4810 = getelementptr inbounds [4 x i32], [4 x i32]* %24, i32 0, i32 3
  store i32 %631, i32* %4810, align 4
  %4811 = getelementptr [4 x i32], [4 x i32]* %24, i32 0, i32 %4806
  %4812 = load i32, i32* %4811, align 4, !tbaa !43
  %4813 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %11, i32 %4812, i32 %4761, i32 %4803, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4814 = extractvalue %dx.types.ResRet.i32 %4813, 0
  %4815 = lshr i32 %4814, 8
  %4816 = and i32 %4814, 255
  %4817 = and i32 %4815, 255
  %4818 = uitofp i32 %4816 to float
  %4819 = uitofp i32 %4817 to float
  %4820 = fmul fast float %4818, 0x3F80101020000000
  %4821 = fmul fast float %4819, 0x3F80101020000000
  %4822 = fadd fast float %4820, -1.000000e+00
  %4823 = fadd fast float %4821, -1.000000e+00
  %4824 = call float @dx.op.unary.f32(i32 6, float %4822)  ; FAbs(value)
  %4825 = fsub fast float 1.000000e+00, %4824
  %4826 = call float @dx.op.unary.f32(i32 6, float %4823)  ; FAbs(value)
  %4827 = fsub fast float %4825, %4826
  %4828 = fsub fast float -0.000000e+00, %4827
  %4829 = call float @dx.op.binary.f32(i32 35, float %4828, float 0.000000e+00)  ; FMax(a,b)
  %4830 = fcmp fast ogt float %4822, 0.000000e+00
  %4831 = fsub fast float -0.000000e+00, %4829
  %4832 = select i1 %4830, float %4831, float %4829
  %4833 = fadd fast float %4832, %4822
  %4834 = fcmp fast ogt float %4823, 0.000000e+00
  %4835 = select i1 %4834, float %4831, float %4829
  %4836 = fadd fast float %4835, %4823
  %4837 = call float @dx.op.dot3.f32(i32 55, float %4833, float %4836, float %4827, float %4833, float %4836, float %4827)  ; Dot3(ax,ay,az,bx,by,bz)
  %4838 = call float @dx.op.unary.f32(i32 25, float %4837)  ; Rsqrt(value)
  %4839 = fmul fast float %4833, %4838
  %4840 = fmul fast float %4836, %4838
  %4841 = fmul fast float %4838, %4827
  %4842 = add i32 %76, -1
  %4843 = lshr i32 %4842, 1
  %4844 = lshr i32 %77, 1
  %4845 = and i32 %4842, 1
  %4846 = shl i32 %77, 1
  %4847 = and i32 %4846, 2
  %4848 = or i32 %4847, %4845
  %4849 = getelementptr inbounds [4 x i32], [4 x i32]* %23, i32 0, i32 0
  store i32 %628, i32* %4849, align 4
  %4850 = getelementptr inbounds [4 x i32], [4 x i32]* %23, i32 0, i32 1
  store i32 %629, i32* %4850, align 4
  %4851 = getelementptr inbounds [4 x i32], [4 x i32]* %23, i32 0, i32 2
  store i32 %630, i32* %4851, align 4
  %4852 = getelementptr inbounds [4 x i32], [4 x i32]* %23, i32 0, i32 3
  store i32 %631, i32* %4852, align 4
  %4853 = getelementptr [4 x i32], [4 x i32]* %23, i32 0, i32 %4848
  %4854 = load i32, i32* %4853, align 4, !tbaa !43
  %4855 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %11, i32 %4854, i32 %4843, i32 %4844, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4856 = extractvalue %dx.types.ResRet.i32 %4855, 0
  %4857 = lshr i32 %4856, 8
  %4858 = and i32 %4856, 255
  %4859 = and i32 %4857, 255
  %4860 = uitofp i32 %4858 to float
  %4861 = uitofp i32 %4859 to float
  %4862 = fmul fast float %4860, 0x3F80101020000000
  %4863 = fmul fast float %4861, 0x3F80101020000000
  %4864 = fadd fast float %4862, -1.000000e+00
  %4865 = fadd fast float %4863, -1.000000e+00
  %4866 = call float @dx.op.unary.f32(i32 6, float %4864)  ; FAbs(value)
  %4867 = fsub fast float 1.000000e+00, %4866
  %4868 = call float @dx.op.unary.f32(i32 6, float %4865)  ; FAbs(value)
  %4869 = fsub fast float %4867, %4868
  %4870 = fsub fast float -0.000000e+00, %4869
  %4871 = call float @dx.op.binary.f32(i32 35, float %4870, float 0.000000e+00)  ; FMax(a,b)
  %4872 = fcmp fast ogt float %4864, 0.000000e+00
  %4873 = fsub fast float -0.000000e+00, %4871
  %4874 = select i1 %4872, float %4873, float %4871
  %4875 = fadd fast float %4874, %4864
  %4876 = fcmp fast ogt float %4865, 0.000000e+00
  %4877 = select i1 %4876, float %4873, float %4871
  %4878 = fadd fast float %4877, %4865
  %4879 = call float @dx.op.dot3.f32(i32 55, float %4875, float %4878, float %4869, float %4875, float %4878, float %4869)  ; Dot3(ax,ay,az,bx,by,bz)
  %4880 = call float @dx.op.unary.f32(i32 25, float %4879)  ; Rsqrt(value)
  %4881 = fmul fast float %4875, %4880
  %4882 = fmul fast float %4878, %4880
  %4883 = fmul fast float %4880, %4869
  %4884 = add i32 %76, 1
  %4885 = lshr i32 %4884, 1
  %4886 = and i32 %4884, 1
  %4887 = or i32 %4847, %4886
  %4888 = getelementptr inbounds [4 x i32], [4 x i32]* %22, i32 0, i32 0
  store i32 %628, i32* %4888, align 4
  %4889 = getelementptr inbounds [4 x i32], [4 x i32]* %22, i32 0, i32 1
  store i32 %629, i32* %4889, align 4
  %4890 = getelementptr inbounds [4 x i32], [4 x i32]* %22, i32 0, i32 2
  store i32 %630, i32* %4890, align 4
  %4891 = getelementptr inbounds [4 x i32], [4 x i32]* %22, i32 0, i32 3
  store i32 %631, i32* %4891, align 4
  %4892 = getelementptr [4 x i32], [4 x i32]* %22, i32 0, i32 %4887
  %4893 = load i32, i32* %4892, align 4, !tbaa !43
  %4894 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %11, i32 %4893, i32 %4885, i32 %4844, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4895 = extractvalue %dx.types.ResRet.i32 %4894, 0
  %4896 = lshr i32 %4895, 8
  %4897 = and i32 %4895, 255
  %4898 = and i32 %4896, 255
  %4899 = uitofp i32 %4897 to float
  %4900 = uitofp i32 %4898 to float
  %4901 = fmul fast float %4899, 0x3F80101020000000
  %4902 = fmul fast float %4900, 0x3F80101020000000
  %4903 = fadd fast float %4901, -1.000000e+00
  %4904 = fadd fast float %4902, -1.000000e+00
  %4905 = call float @dx.op.unary.f32(i32 6, float %4903)  ; FAbs(value)
  %4906 = fsub fast float 1.000000e+00, %4905
  %4907 = call float @dx.op.unary.f32(i32 6, float %4904)  ; FAbs(value)
  %4908 = fsub fast float %4906, %4907
  %4909 = fsub fast float -0.000000e+00, %4908
  %4910 = call float @dx.op.binary.f32(i32 35, float %4909, float 0.000000e+00)  ; FMax(a,b)
  %4911 = fcmp fast ogt float %4903, 0.000000e+00
  %4912 = fsub fast float -0.000000e+00, %4910
  %4913 = select i1 %4911, float %4912, float %4910
  %4914 = fadd fast float %4913, %4903
  %4915 = fcmp fast ogt float %4904, 0.000000e+00
  %4916 = select i1 %4915, float %4912, float %4910
  %4917 = fadd fast float %4916, %4904
  %4918 = call float @dx.op.dot3.f32(i32 55, float %4914, float %4917, float %4908, float %4914, float %4917, float %4908)  ; Dot3(ax,ay,az,bx,by,bz)
  %4919 = call float @dx.op.unary.f32(i32 25, float %4918)  ; Rsqrt(value)
  %4920 = fmul fast float %4914, %4919
  %4921 = fmul fast float %4917, %4919
  %4922 = fmul fast float %4919, %4908
  %4923 = call float @dx.op.dot3.f32(i32 55, float %4799, float %4800, float %4801, float %4839, float %4840, float %4841)  ; Dot3(ax,ay,az,bx,by,bz)
  %4924 = call float @dx.op.binary.f32(i32 36, float 1.000000e+00, float %4923)  ; FMin(a,b)
  %4925 = call float @dx.op.dot3.f32(i32 55, float %4799, float %4800, float %4801, float %4881, float %4882, float %4883)  ; Dot3(ax,ay,az,bx,by,bz)
  %4926 = call float @dx.op.binary.f32(i32 36, float %4924, float %4925)  ; FMin(a,b)
  %4927 = call float @dx.op.dot3.f32(i32 55, float %4799, float %4800, float %4801, float %4920, float %4921, float %4922)  ; Dot3(ax,ay,az,bx,by,bz)
  %4928 = call float @dx.op.binary.f32(i32 36, float %4926, float %4927)  ; FMin(a,b)
  %4929 = call float @dx.op.dot3.f32(i32 55, float %4839, float %4840, float %4841, float %4881, float %4882, float %4883)  ; Dot3(ax,ay,az,bx,by,bz)
  %4930 = call float @dx.op.binary.f32(i32 36, float %4928, float %4929)  ; FMin(a,b)
  %4931 = call float @dx.op.dot3.f32(i32 55, float %4839, float %4840, float %4841, float %4920, float %4921, float %4922)  ; Dot3(ax,ay,az,bx,by,bz)
  %4932 = call float @dx.op.binary.f32(i32 36, float %4930, float %4931)  ; FMin(a,b)
  %4933 = call float @dx.op.dot3.f32(i32 55, float %4881, float %4882, float %4883, float %4920, float %4921, float %4922)  ; Dot3(ax,ay,az,bx,by,bz)
  %4934 = call float @dx.op.binary.f32(i32 36, float %4932, float %4933)  ; FMin(a,b)
  %4935 = call float @dx.op.unary.f32(i32 7, float %4934)  ; Saturate(value)
  %4936 = fsub fast float 1.000000e+00, %4935
  %4937 = add nuw nsw i32 %4755, 12
  %4938 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %4937, i32 undef)  ; BufferLoad(srv,index,wot)
  %4939 = extractvalue %dx.types.ResRet.i32 %4938, 0
  %4940 = lshr i32 %4939, 16
  %4941 = uitofp i32 %4940 to float
  %4942 = fmul fast float %4941, 0x3EF0002000000000
  %4943 = add nuw nsw i32 %4755, 8
  %4944 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %4943, i32 undef)  ; BufferLoad(srv,index,wot)
  %4945 = extractvalue %dx.types.ResRet.i32 %4944, 0
  %4946 = lshr i32 %4945, 16
  %4947 = uitofp i32 %4946 to float
  %4948 = fmul fast float %4947, 0x3EF0002000000000
  %4949 = fsub fast float %58, %4948
  %4950 = fdiv fast float %4949, %4942
  %4951 = fmul fast float %81, %57
  %4952 = fmul fast float %4951, 4.000000e+02
  %4953 = fmul fast float %58, 4.000000e+02
  %4954 = call float @dx.op.unary.f32(i32 22, float %4952)  ; Frc(value)
  %4955 = call float @dx.op.unary.f32(i32 22, float %4953)  ; Frc(value)
  %4956 = fadd fast float %4954, -5.000000e-01
  %4957 = fadd fast float %4955, -5.000000e-01
  %4958 = fmul fast float %4956, 2.000000e+00
  %4959 = fmul fast float %4957, 2.000000e+00
  %4960 = call float @dx.op.dot2.f32(i32 54, float %4958, float %4959, float %4958, float %4959)  ; Dot2(ax,ay,bx,by)
  %4961 = call float @dx.op.unary.f32(i32 24, float %4960)  ; Sqrt(value)
  %4962 = fmul fast float %4961, 0x4004C77B00000000
  %4963 = fsub fast float 2.000000e+00, %4962
  %4964 = call float @dx.op.unary.f32(i32 7, float %4963)  ; Saturate(value)
  %4965 = fmul fast float %4759, 0x3F924C82A0000000
  %4966 = fmul fast float %4759, 0x3F78278DA0000000
  %4967 = fsub fast float 0x400E470B00000000, %4965
  %4968 = fadd fast float %4967, %4950
  %4969 = fmul fast float %4968, 1.000000e+01
  %4970 = call float @dx.op.unary.f32(i32 7, float %4969)  ; Saturate(value)
  %4971 = fsub fast float 0x3FE286BC80000000, %4966
  %4972 = fadd fast float %4971, %4950
  %4973 = fmul fast float %4972, 1.250000e+00
  %4974 = call float @dx.op.unary.f32(i32 7, float %4973)  ; Saturate(value)
  %4975 = fsub fast float 1.000000e+00, %4974
  %4976 = fmul fast float %4975, %4970
  %4977 = fmul fast float %4759, 0x3F8E317100000000
  %4978 = fsub fast float 0x40079435C0000000, %4977
  %4979 = fadd fast float %4978, %4950
  %4980 = fmul fast float %4979, 0x401AAAAAA0000000
  %4981 = call float @dx.op.unary.f32(i32 7, float %4980)  ; Saturate(value)
  %4982 = fsub fast float 1.000000e+00, %4981
  %4983 = fmul fast float %4982, %4970
  %4984 = fmul fast float %4951, 4.500000e+01
  %4985 = fmul fast float %58, 4.500000e+01
  %4986 = fadd fast float %4985, -5.000000e-01
  %4987 = fmul fast float %4951, 0x4039FB1300000000
  %4988 = fadd fast float %4987, 0xBFE279A720000000
  %4989 = call float @dx.op.unary.f32(i32 27, float %4987)  ; Round_ni(value)
  %4990 = call float @dx.op.unary.f32(i32 27, float %4985)  ; Round_ni(value)
  %4991 = call float @dx.op.unary.f32(i32 27, float %4988)  ; Round_ni(value)
  %4992 = call float @dx.op.unary.f32(i32 27, float %4986)  ; Round_ni(value)
  %4993 = fadd fast float %4989, 5.000000e-01
  %4994 = fadd fast float %4990, 5.000000e-01
  %4995 = fmul fast float %4993, 0x3FFBB67B20000000
  %4996 = fsub fast float %4984, %4995
  %4997 = fsub fast float %4985, %4994
  %4998 = fadd fast float %4991, 1.000000e+00
  %4999 = fmul fast float %4998, 0x3FFBB67B20000000
  %5000 = fsub fast float %4984, %4999
  %5001 = fadd fast float %4985, -1.000000e+00
  %5002 = fsub fast float %5001, %4992
  %5003 = call float @dx.op.dot2.f32(i32 54, float %4996, float %4997, float %4996, float %4997)  ; Dot2(ax,ay,bx,by)
  %5004 = call float @dx.op.dot2.f32(i32 54, float %5000, float %5002, float %5000, float %5002)  ; Dot2(ax,ay,bx,by)
  %5005 = fcmp fast olt float %5003, %5004
  %5006 = fadd fast float %4992, 1.000000e+00
  %5007 = select i1 %5005, float %4996, float %5000
  %5008 = select i1 %5005, float %4997, float %5002
  %5009 = select i1 %5005, float %4993, float %4998
  %5010 = select i1 %5005, float %4994, float %5006
  %5011 = call float @dx.op.unary.f32(i32 6, float %5007)  ; FAbs(value)
  %5012 = call float @dx.op.unary.f32(i32 6, float %5008)  ; FAbs(value)
  %5013 = call float @dx.op.dot2.f32(i32 54, float %5011, float %5012, float 0x3FEBB67B20000000, float 5.000000e-01)  ; Dot2(ax,ay,bx,by)
  %5014 = call float @dx.op.binary.f32(i32 35, float %5013, float %5012)  ; FMax(a,b)
  %5015 = fmul fast float %5009, 0x3F96C16C20000000
  %5016 = fmul fast float %5010, 0x3F96C16C20000000
  %5017 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %5018 = extractvalue %dx.types.CBufRet.f32 %5017, 3
  %5019 = call float @dx.op.unary.f32(i32 22, float %5018)  ; Frc(value)
  %5020 = fmul fast float %5019, 0x3FC99999A0000000
  %5021 = fadd fast float %5020, %5016
  %5022 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %13, float %5015, float %5021, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5023 = extractvalue %dx.types.ResRet.f32 %5022, 0
  %5024 = fsub fast float 0x3FEEB851E0000000, %4976
  %5025 = fmul fast float %5024, 0x3FF0AAAAC0000000
  %5026 = call float @dx.op.unary.f32(i32 7, float %5025)  ; Saturate(value)
  %5027 = fmul fast float %5026, 2.000000e+00
  %5028 = fsub fast float 3.000000e+00, %5027
  %5029 = fmul fast float %5026, %5026
  %5030 = fmul fast float %5029, %5028
  %5031 = fadd fast float %5014, 0xBFE0A3D700000000
  %5032 = fadd fast float %5031, %5030
  %5033 = fmul fast float %5032, -2.000000e+01
  %5034 = call float @dx.op.unary.f32(i32 7, float %5033)  ; Saturate(value)
  %5035 = fmul fast float %5034, 2.000000e+00
  %5036 = fsub fast float 3.000000e+00, %5035
  %5037 = fmul fast float %5031, -2.000000e+01
  %5038 = call float @dx.op.unary.f32(i32 7, float %5037)  ; Saturate(value)
  %5039 = fmul fast float %5038, 2.000000e+00
  %5040 = fsub fast float 3.000000e+00, %5039
  %5041 = fmul fast float %5038, %5038
  %5042 = fmul fast float %5041, %5040
  %5043 = fsub fast float 1.000000e+00, %5042
  %5044 = fmul fast float %5043, 0x3FE51EB860000000
  %5045 = fmul fast float %5014, 0x3FC99999A0000000
  %5046 = fsub fast float 1.000000e+00, %5014
  %5047 = fmul fast float %5034, %5034
  %5048 = fmul fast float %5047, %5014
  %5049 = fmul fast float %5048, %5036
  %5050 = fadd fast float %5049, %5046
  %5051 = fmul fast float %5050, %5023
  %5052 = fsub fast float 0x3FEEB851E0000000, %4983
  %5053 = fmul fast float %5052, 0x3FF0AAAAC0000000
  %5054 = call float @dx.op.unary.f32(i32 7, float %5053)  ; Saturate(value)
  %5055 = fmul fast float %5054, 2.000000e+00
  %5056 = fsub fast float 3.000000e+00, %5055
  %5057 = fmul fast float %5054, %5054
  %5058 = fmul fast float %5057, %5056
  %5059 = fadd fast float %5031, %5058
  %5060 = fmul fast float %5059, -2.000000e+01
  %5061 = call float @dx.op.unary.f32(i32 7, float %5060)  ; Saturate(value)
  %5062 = fmul fast float %5061, 2.000000e+00
  %5063 = fsub fast float 3.000000e+00, %5062
  %5064 = fmul fast float %5061, %5061
  %5065 = fmul fast float %5064, %5014
  %5066 = fmul fast float %5065, %5063
  %5067 = fadd fast float %5066, %5046
  %5068 = fmul fast float %5067, %5023
  %5069 = fadd fast float %5044, %5045
  %5070 = fadd fast float %5069, %5068
  %5071 = fmul fast float %4983, 2.000000e+00
  %5072 = fmul fast float %5071, %5070
  %5073 = fadd fast float %5069, %5051
  %5074 = fmul fast float %5073, %4976
  %5075 = fadd fast float %5074, %5072
  %5076 = fmul fast float %4964, 0x3FD99999A0000000
  %5077 = fmul fast float %4936, 0x3FE3333340000000
  %5078 = fadd fast float %5077, 0x3FE3333340000000
  %5079 = fadd fast float %5078, %5076
  %5080 = fmul fast float %5075, %5079
  %5081 = call float @dx.op.unary.f32(i32 23, float %5080)  ; Log(value)
  %5082 = fmul fast float %5081, 3.000000e+00
  %5083 = call float @dx.op.unary.f32(i32 21, float %5082)  ; Exp(value)
  %5084 = fmul fast float %5083, 0x3FF112D7C0000000
  %5085 = fmul fast float %5083, 0xBFF8A1CB00000000
  %5086 = fmul fast float %5085, %5084
  %5087 = call float @dx.op.unary.f32(i32 21, float %5086)  ; Exp(value)
  %5088 = fmul fast float %5083, 0x3FEDDA5080000000
  %5089 = fmul fast float %5083, 0xBFB16E5400000000
  %5090 = fmul fast float %5083, 0xBFEBAC8600000000
  %5091 = fmul fast float %5088, %5087
  %5092 = fmul fast float %5089, %5087
  %5093 = fmul fast float %5090, %5087
  %5094 = fadd fast float %5091, %5084
  %5095 = fadd fast float %5092, %5084
  %5096 = fadd fast float %5093, %5084
  %5097 = call float @dx.op.unary.f32(i32 20, float %5094)  ; Htan(value)
  %5098 = call float @dx.op.unary.f32(i32 20, float %5095)  ; Htan(value)
  %5099 = call float @dx.op.unary.f32(i32 20, float %5096)  ; Htan(value)
  %5100 = fmul fast float %5097, 5.000000e+00
  %5101 = fmul fast float %5098, 5.000000e+00
  %5102 = fmul fast float %5099, 5.000000e+00
  %5103 = call float @dx.op.unary.f32(i32 7, float %5100)  ; Saturate(value)
  %5104 = call float @dx.op.unary.f32(i32 7, float %5101)  ; Saturate(value)
  %5105 = call float @dx.op.unary.f32(i32 7, float %5102)  ; Saturate(value)
  %5106 = fmul fast float %5098, 3.000000e+00
  %5107 = call float @dx.op.unary.f32(i32 7, float %5106)  ; Saturate(value)
  br label %5361

; <label>:5108                                    ; preds = %626
  br i1 %121, label %5109, label %5361, !dx.controlflow.hints !58

; <label>:5109                                    ; preds = %5108
  %5110 = and i32 %666, 511
  %5111 = mul nuw nsw i32 %5110, 20
  %5112 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %5111, i32 undef)  ; BufferLoad(srv,index,wot)
  %5113 = extractvalue %dx.types.ResRet.i32 %5112, 0
  %5114 = and i32 %5113, 255
  %5115 = uitofp i32 %5114 to float
  %5116 = lshr i32 %5113, 8
  %5117 = and i32 %5116, 255
  %5118 = uitofp i32 %5117 to float
  %5119 = lshr i32 %5113, 16
  %5120 = and i32 %5119, 255
  %5121 = uitofp i32 %5120 to float
  %5122 = lshr i32 %5113, 24
  %5123 = uitofp i32 %5122 to float
  %5124 = fmul fast float %5123, 0x3F70101020000000
  %5125 = fsub fast float 1.000000e+00, %5124
  %5126 = add nuw nsw i32 %5111, 12
  %5127 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %5126, i32 undef)  ; BufferLoad(srv,index,wot)
  %5128 = extractvalue %dx.types.ResRet.i32 %5127, 0
  %5129 = and i32 %5128, 65535
  %5130 = uitofp i32 %5129 to float
  %5131 = fmul fast float %5130, 0x3EF0002000000000
  %5132 = lshr i32 %5128, 16
  %5133 = uitofp i32 %5132 to float
  %5134 = fmul fast float %5133, 0x3EF0002000000000
  %5135 = add nuw nsw i32 %5111, 8
  %5136 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %5135, i32 undef)  ; BufferLoad(srv,index,wot)
  %5137 = extractvalue %dx.types.ResRet.i32 %5136, 0
  %5138 = and i32 %5137, 65535
  %5139 = uitofp i32 %5138 to float
  %5140 = fmul fast float %5139, 0x3EF0002000000000
  %5141 = lshr i32 %5137, 16
  %5142 = uitofp i32 %5141 to float
  %5143 = fmul fast float %5142, 0x3EF0002000000000
  %5144 = fsub fast float %57, %5140
  %5145 = fdiv fast float %5144, %5131
  %5146 = fsub fast float %58, %5143
  %5147 = fdiv fast float %5146, %5134
  %5148 = add nuw nsw i32 %5111, 16
  %5149 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %5148, i32 undef)  ; BufferLoad(srv,index,wot)
  %5150 = extractvalue %dx.types.ResRet.f32 %5149, 0
  %5151 = fdiv fast float 2.400000e+02, %5150
  %5152 = call float @dx.op.unary.f32(i32 7, float %5151)  ; Saturate(value)
  %5153 = fmul fast float %5152, 4.000000e+01
  %5154 = fptoui float %5153 to i32
  %5155 = uitofp i32 %76 to float
  %5156 = uitofp i32 %77 to float
  %5157 = fptoui float %5155 to i32
  %5158 = fptoui float %5156 to i32
  %5159 = lshr i32 %5158, 2
  %5160 = mul i32 %98, %5159
  %5161 = lshr i32 %5157, 3
  %5162 = add i32 %94, %5161
  %5163 = add i32 %5162, %96
  %5164 = add i32 %5163, %5160
  %5165 = shl i32 %5164, 2
  %5166 = shl i32 %5158, 3
  %5167 = and i32 %5166, 24
  %5168 = and i32 %5157, 7
  %5169 = or i32 %5167, %5168
  %5170 = shl i32 1, %5169
  %5171 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %5165, i32 undef)  ; BufferLoad(srv,index,wot)
  %5172 = extractvalue %dx.types.ResRet.i32 %5171, 0
  %5173 = and i32 %5172, %5170
  %5174 = icmp ne i32 %5173, 0
  %5175 = icmp eq i32 %5154, 0
  br i1 %5175, label %5292, label %5176, !dx.controlflow.hints !53

; <label>:5176                                    ; preds = %5109
  %5177 = uitofp i32 %5154 to float
  %5178 = fmul fast float %78, 5.000000e-01
  %5179 = fmul fast float %5178, %5177
  %5180 = fmul fast float %79, 5.000000e-01
  %5181 = fmul fast float %5180, %5177
  %5182 = call float @dx.op.binary.f32(i32 35, float 5.000000e-01, float %5179)  ; FMax(a,b)
  %5183 = call float @dx.op.binary.f32(i32 35, float 5.000000e-01, float %5181)  ; FMax(a,b)
  br label %5184

; <label>:5184                                    ; preds = %5279, %5176
  %5185 = phi float [ 0.000000e+00, %5176 ], [ %5282, %5279 ]
  %5186 = phi i32 [ 0, %5176 ], [ %5283, %5279 ]
  %5187 = fmul fast float %57, 0x3FF280E1E0000000
  %5188 = fmul fast float %58, 0x3FF280E1E0000000
  %5189 = sitofp i32 %5186 to float
  %5190 = fmul fast float %5189, 0x3FB99999A0000000
  %5191 = fadd fast float %5190, %5187
  %5192 = fadd fast float %5190, %5188
  %5193 = fmul fast float %5191, 1.024000e+03
  %5194 = fmul fast float %5192, 1.024000e+03
  %5195 = fadd fast float %5193, -5.120000e+02
  %5196 = fadd fast float %5194, -5.120000e+02
  %5197 = fmul fast float %5191, 0x4081BEDF00000000
  %5198 = fadd fast float %5197, 0xC071BEDF00000000
  %5199 = call float @dx.op.unary.f32(i32 22, float %5198)  ; Frc(value)
  %5200 = fmul fast float %5195, %5199
  %5201 = fadd fast float %5200, %5196
  %5202 = fmul fast float %5192, 0x4073BEBE20000000
  %5203 = fadd fast float %5202, 0xC063BEBE20000000
  %5204 = call float @dx.op.unary.f32(i32 22, float %5203)  ; Frc(value)
  %5205 = fmul fast float %5196, %5204
  %5206 = fadd fast float %5205, %5195
  %5207 = fmul fast float %5201, %5206
  %5208 = call float @dx.op.unary.f32(i32 22, float %5207)  ; Frc(value)
  %5209 = fmul fast float %5208, 2.000000e+00
  %5210 = fadd fast float %5209, -1.000000e+00
  %5211 = fmul fast float %5210, %5182
  %5212 = fmul fast float %57, 0x3FEB681740000000
  %5213 = fmul fast float %58, 0x3FEB681740000000
  %5214 = fmul fast float %5189, 0x3FC99999A0000000
  %5215 = fadd fast float %5214, 1.250000e-01
  %5216 = fadd fast float %5215, %5212
  %5217 = fadd fast float %5215, %5213
  %5218 = fmul fast float %5216, 1.024000e+03
  %5219 = fmul fast float %5217, 1.024000e+03
  %5220 = fadd fast float %5218, -5.120000e+02
  %5221 = fadd fast float %5219, -5.120000e+02
  %5222 = fmul fast float %5216, 0x4081BEDF00000000
  %5223 = fadd fast float %5222, 0xC071BEDF00000000
  %5224 = call float @dx.op.unary.f32(i32 22, float %5223)  ; Frc(value)
  %5225 = fmul fast float %5220, %5224
  %5226 = fadd fast float %5225, %5221
  %5227 = fmul fast float %5217, 0x4073BEBE20000000
  %5228 = fadd fast float %5227, 0xC063BEBE20000000
  %5229 = call float @dx.op.unary.f32(i32 22, float %5228)  ; Frc(value)
  %5230 = fmul fast float %5221, %5229
  %5231 = fadd fast float %5230, %5220
  %5232 = fmul fast float %5226, %5231
  %5233 = call float @dx.op.unary.f32(i32 22, float %5232)  ; Frc(value)
  %5234 = fmul fast float %5233, 2.000000e+00
  %5235 = fadd fast float %5234, -1.000000e+00
  %5236 = fmul fast float %5235, %5183
  %5237 = fptosi float %5211 to i32
  %5238 = sitofp i32 %5237 to float
  %5239 = fadd fast float %5238, %5155
  %5240 = fptosi float %5239 to i32
  %5241 = fptosi float %5236 to i32
  %5242 = sitofp i32 %5241 to float
  %5243 = fadd fast float %5242, %5156
  %5244 = fptosi float %5243 to i32
  %5245 = or i32 %5244, %5240
  %5246 = icmp slt i32 %5245, 0
  %5247 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %5248 = extractvalue %dx.types.CBufRet.f32 %5247, 0
  %5249 = extractvalue %dx.types.CBufRet.f32 %5247, 1
  %5250 = fptosi float %5248 to i32
  %5251 = fptosi float %5249 to i32
  %5252 = icmp sge i32 %5240, %5250
  %5253 = icmp sge i32 %5244, %5251
  %5254 = or i1 %5252, %5253
  %5255 = or i1 %5246, %5254
  br i1 %5255, label %5279, label %5256, !dx.controlflow.hints !50

; <label>:5256                                    ; preds = %5184
  %5257 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %17, i32 51)  ; CBufferLoadLegacy(handle,regIndex)
  %5258 = extractvalue %dx.types.CBufRet.i32 %5257, 1
  %5259 = shl i32 %5258, 2
  %5260 = extractvalue %dx.types.CBufRet.i32 %5257, 3
  %5261 = shl i32 %5260, 1
  %5262 = lshr i32 %5244, 2
  %5263 = extractvalue %dx.types.CBufRet.i32 %5257, 2
  %5264 = mul i32 %5263, %5262
  %5265 = lshr i32 %5240, 3
  %5266 = add i32 %5259, %5265
  %5267 = add i32 %5266, %5261
  %5268 = add i32 %5267, %5264
  %5269 = shl i32 %5268, 2
  %5270 = shl i32 %5244, 3
  %5271 = and i32 %5270, 24
  %5272 = and i32 %5240, 7
  %5273 = or i32 %5271, %5272
  %5274 = shl i32 1, %5273
  %5275 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %5269, i32 undef)  ; BufferLoad(srv,index,wot)
  %5276 = extractvalue %dx.types.ResRet.i32 %5275, 0
  %5277 = and i32 %5276, %5274
  %5278 = icmp ne i32 %5277, 0
  br label %5279

; <label>:5279                                    ; preds = %5256, %5184
  %5280 = phi i1 [ %5278, %5256 ], [ false, %5184 ]
  %5281 = uitofp i1 %5280 to float
  %5282 = fadd fast float %5281, %5185
  %5283 = add nuw nsw i32 %5186, 1
  %5284 = icmp eq i32 %5283, 5
  br i1 %5284, label %5285, label %5184

; <label>:5285                                    ; preds = %5279
  %5286 = uitofp i1 %5174 to float
  %5287 = fmul fast float %5286, 0x3FC99999A0000000
  %5288 = fmul fast float %5287, %5282
  %5289 = fadd fast float %5288, -5.000000e-01
  %5290 = fmul fast float %5289, 2.000000e+00
  %5291 = call float @dx.op.unary.f32(i32 7, float %5290)  ; Saturate(value)
  br label %5292

; <label>:5292                                    ; preds = %5285, %5109
  %5293 = phi float [ %5291, %5285 ], [ 0.000000e+00, %5109 ]
  %5294 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %5295 = extractvalue %dx.types.CBufRet.f32 %5294, 3
  %5296 = fmul fast float %5295, 0x3F9EB851E0000000
  %5297 = fadd fast float %5296, %5147
  %5298 = call float @dx.op.unary.f32(i32 22, float %5297)  ; Frc(value)
  %5299 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %13, float %5145, float %5298, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5300 = extractvalue %dx.types.ResRet.f32 %5299, 3
  %5301 = call float @dx.op.unary.f32(i32 7, float %5293)  ; Saturate(value)
  %5302 = fmul fast float %5300, %5125
  %5303 = fsub fast float %5301, %5302
  %5304 = call float @dx.op.unary.f32(i32 7, float %5303)  ; Saturate(value)
  %5305 = fmul fast float %5300, 1.250000e+00
  %5306 = fsub fast float %5301, %5305
  %5307 = call float @dx.op.unary.f32(i32 7, float %5306)  ; Saturate(value)
  %5308 = fmul fast float %5307, 0x3FD3333340000000
  %5309 = fadd fast float %5308, %5304
  %5310 = fmul fast float %5309, %5309
  %5311 = fmul fast float %5310, %5309
  %5312 = call float @dx.op.unary.f32(i32 7, float %5311)  ; Saturate(value)
  %5313 = fmul fast float %5312, 0x3FEBD70A40000000
  %5314 = fsub fast float 1.000000e+00, %5313
  %5315 = call float @dx.op.unary.f32(i32 7, float %57)  ; Saturate(value)
  %5316 = call float @dx.op.unary.f32(i32 7, float %58)  ; Saturate(value)
  %5317 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %14, float %5315, float %5316, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5318 = extractvalue %dx.types.ResRet.f32 %5317, 0
  %5319 = bitcast float %5318 to i32
  %5320 = lshr i32 %5319, 8
  %5321 = and i32 %5319, 255
  %5322 = and i32 %5320, 255
  %5323 = uitofp i32 %5321 to float
  %5324 = uitofp i32 %5322 to float
  %5325 = fmul fast float %5323, 0x3F80101020000000
  %5326 = fmul fast float %5324, 0x3F80101020000000
  %5327 = fadd fast float %5325, -1.000000e+00
  %5328 = fadd fast float %5326, -1.000000e+00
  %5329 = call float @dx.op.unary.f32(i32 6, float %5327)  ; FAbs(value)
  %5330 = fsub fast float 1.000000e+00, %5329
  %5331 = call float @dx.op.unary.f32(i32 6, float %5328)  ; FAbs(value)
  %5332 = fsub fast float %5330, %5331
  %5333 = fsub fast float -0.000000e+00, %5332
  %5334 = call float @dx.op.binary.f32(i32 35, float %5333, float 0.000000e+00)  ; FMax(a,b)
  %5335 = fcmp fast ogt float %5327, 0.000000e+00
  %5336 = fsub fast float -0.000000e+00, %5334
  %5337 = select i1 %5335, float %5336, float %5334
  %5338 = fadd fast float %5337, %5327
  %5339 = fcmp fast ogt float %5328, 0.000000e+00
  %5340 = select i1 %5339, float %5336, float %5334
  %5341 = fadd fast float %5340, %5328
  %5342 = call float @dx.op.dot3.f32(i32 55, float %5338, float %5341, float %5332, float %5338, float %5341, float %5332)  ; Dot3(ax,ay,az,bx,by,bz)
  %5343 = call float @dx.op.unary.f32(i32 25, float %5342)  ; Rsqrt(value)
  %5344 = fmul fast float %5338, %5343
  %5345 = fmul fast float %5341, %5343
  %5346 = fmul fast float %5343, %5332
  %5347 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 101)  ; CBufferLoadLegacy(handle,regIndex)
  %5348 = extractvalue %dx.types.CBufRet.f32 %5347, 0
  %5349 = extractvalue %dx.types.CBufRet.f32 %5347, 1
  %5350 = extractvalue %dx.types.CBufRet.f32 %5347, 2
  %5351 = call float @dx.op.dot3.f32(i32 55, float %5344, float %5345, float %5346, float %5348, float %5349, float %5350)  ; Dot3(ax,ay,az,bx,by,bz)
  %5352 = fadd fast float %5351, 2.500000e-01
  %5353 = call float @dx.op.unary.f32(i32 6, float %5352)  ; FAbs(value)
  %5354 = fsub fast float 1.000000e+00, %5353
  %5355 = fmul fast float %5115, 0x3F7278DF60000000
  %5356 = fmul fast float %5118, 0x3F7278DF60000000
  %5357 = fmul fast float %5121, 0x3F7278DF60000000
  %5358 = fmul fast float %5355, %5354
  %5359 = fmul fast float %5356, %5354
  %5360 = fmul fast float %5357, %5354
  br label %5361

; <label>:5361                                    ; preds = %5292, %5108, %4753, %4724, %2655, %2644, %2382, %2153, %1917, %1915, %1754, %1640, %903, %900, %886, %884, %626, %621
  %5362 = phi float [ %5103, %4753 ], [ %2388, %2382 ], [ %622, %1754 ], [ %2252, %2153 ], [ %1749, %1640 ], [ %1440, %903 ], [ %622, %900 ], [ %622, %621 ], [ %896, %886 ], [ %780, %884 ], [ %1926, %1917 ], [ %1808, %1915 ], [ %2470, %2644 ], [ %4743, %4724 ], [ 0.000000e+00, %2655 ], [ %5358, %5292 ], [ 0.000000e+00, %5108 ], [ 1.000000e+00, %626 ]
  %5363 = phi float [ %5104, %4753 ], [ %2389, %2382 ], [ %623, %1754 ], [ %2253, %2153 ], [ %1750, %1640 ], [ %1441, %903 ], [ %623, %900 ], [ %623, %621 ], [ %897, %886 ], [ %781, %884 ], [ %1927, %1917 ], [ %1810, %1915 ], [ %2471, %2644 ], [ %4744, %4724 ], [ 0.000000e+00, %2655 ], [ %5359, %5292 ], [ 0.000000e+00, %5108 ], [ 0.000000e+00, %626 ]
  %5364 = phi float [ %5105, %4753 ], [ %2390, %2382 ], [ %624, %1754 ], [ %2254, %2153 ], [ %1751, %1640 ], [ %1442, %903 ], [ %624, %900 ], [ %624, %621 ], [ %898, %886 ], [ %782, %884 ], [ %1928, %1917 ], [ %1812, %1915 ], [ %2472, %2644 ], [ %4745, %4724 ], [ 0.000000e+00, %2655 ], [ %5360, %5292 ], [ 0.000000e+00, %5108 ], [ 0.000000e+00, %626 ]
  %5365 = phi float [ %5107, %4753 ], [ %2391, %2382 ], [ %625, %1754 ], [ %2256, %2153 ], [ %1753, %1640 ], [ %1443, %903 ], [ %625, %900 ], [ %625, %621 ], [ %899, %886 ], [ %783, %884 ], [ %1929, %1917 ], [ %1814, %1915 ], [ %2654, %2644 ], [ %4752, %4724 ], [ 0.000000e+00, %2655 ], [ %5314, %5292 ], [ 0.000000e+00, %5108 ], [ 1.000000e+00, %626 ]
  %5366 = fmul fast float %5365, %5362
  %5367 = fmul fast float %5365, %5363
  %5368 = fmul fast float %5365, %5364
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %48, i32 %49, i32 undef, float %5366, float %5367, float %5368, float %5365, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %5369 = fcmp fast ogt float %5365, 0.000000e+00
  %5370 = and i1 %5369, %122
  %5371 = zext i1 %5370 to i32
  %5372 = mul i32 %18, 8
  %5373 = add i32 %19, %5372
  %5374 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?gsHudOutlineMask1@@3PAY07$$CAIA.1dim", i32 0, i32 %5373
  store i32 %5371, i32 addrspace(3)* %5374, align 4, !tbaa !43
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %5375 = or i32 %19, %18
  %5376 = icmp ult i32 %5375, 4
  br i1 %5376, label %5377, label %5401, !dx.controlflow.hints !59

; <label>:5377                                    ; preds = %5361
  %5378 = shl i32 %18, 1
  %5379 = shl i32 %19, 1
  %5380 = mul i32 %5378, 8
  %5381 = add i32 %5379, %5380
  %5382 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?gsHudOutlineMask1@@3PAY07$$CAIA.1dim", i32 0, i32 %5381
  %5383 = load i32, i32 addrspace(3)* %5382, align 4, !tbaa !43
  %5384 = or i32 %5379, 1
  %5385 = mul i32 %5378, 8
  %5386 = add i32 %5384, %5385
  %5387 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?gsHudOutlineMask1@@3PAY07$$CAIA.1dim", i32 0, i32 %5386
  %5388 = load i32, i32 addrspace(3)* %5387, align 4, !tbaa !43
  %5389 = or i32 %5378, 1
  %5390 = mul i32 %5389, 8
  %5391 = add i32 %5384, %5390
  %5392 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?gsHudOutlineMask1@@3PAY07$$CAIA.1dim", i32 0, i32 %5391
  %5393 = load i32, i32 addrspace(3)* %5392, align 4, !tbaa !43
  %5394 = mul i32 %5389, 8
  %5395 = add i32 %5379, %5394
  %5396 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?gsHudOutlineMask1@@3PAY07$$CAIA.1dim", i32 0, i32 %5395
  %5397 = load i32, i32 addrspace(3)* %5396, align 4, !tbaa !43
  %5398 = or i32 %5388, %5383
  %5399 = or i32 %5398, %5393
  %5400 = or i32 %5399, %5397
  store i32 %5400, i32 addrspace(3)* %5374, align 4, !tbaa !43
  br label %5401

; <label>:5401                                    ; preds = %5377, %5361
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %5402 = icmp ult i32 %5375, 2
  br i1 %5402, label %5403, label %5433, !dx.controlflow.hints !60

; <label>:5403                                    ; preds = %5401
  %5404 = shl i32 %18, 1
  %5405 = shl i32 %19, 1
  %5406 = mul i32 %5404, 8
  %5407 = add i32 %5405, %5406
  %5408 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?gsHudOutlineMask1@@3PAY07$$CAIA.1dim", i32 0, i32 %5407
  %5409 = load i32, i32 addrspace(3)* %5408, align 4, !tbaa !43
  %5410 = or i32 %5405, 1
  %5411 = mul i32 %5404, 8
  %5412 = add i32 %5410, %5411
  %5413 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?gsHudOutlineMask1@@3PAY07$$CAIA.1dim", i32 0, i32 %5412
  %5414 = load i32, i32 addrspace(3)* %5413, align 4, !tbaa !43
  %5415 = or i32 %5404, 1
  %5416 = mul i32 %5415, 8
  %5417 = add i32 %5410, %5416
  %5418 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?gsHudOutlineMask1@@3PAY07$$CAIA.1dim", i32 0, i32 %5417
  %5419 = load i32, i32 addrspace(3)* %5418, align 4, !tbaa !43
  %5420 = mul i32 %5415, 8
  %5421 = add i32 %5405, %5420
  %5422 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?gsHudOutlineMask1@@3PAY07$$CAIA.1dim", i32 0, i32 %5421
  %5423 = load i32, i32 addrspace(3)* %5422, align 4, !tbaa !43
  %5424 = or i32 %5414, %5409
  %5425 = or i32 %5424, %5419
  %5426 = or i32 %5425, %5423
  %5427 = icmp ne i32 %5426, 0
  %5428 = select i1 %5427, float 1.000000e+00, float 0.000000e+00
  %5429 = lshr i32 %48, 2
  %5430 = lshr i32 %49, 2
  %5431 = add i32 %5429, %18
  %5432 = add i32 %5430, %19
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %5431, i32 %5432, i32 undef, float %5428, float %5428, float %5428, float %5428, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %5433

; <label>:5433                                    ; preds = %5403, %5401, %0
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @dx.op.threadIdInGroup.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.groupId.i32(i32, i32) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32) #1

; Function Attrs: nounwind readnone
declare float @dx.op.unary.f32(i32, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #1

; Function Attrs: nounwind readnone
declare float @dx.op.dot2.f32(i32, float, float, float, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.dot3.f32(i32, float, float, float, float, float, float) #0

; Function Attrs: nounwind
declare void @dx.op.textureStore.f32(i32, %dx.types.Handle, i32, i32, i32, float, float, float, float, i8) #2

; Function Attrs: noduplicate nounwind
declare void @dx.op.barrier(i32, i32) #3

; Function Attrs: nounwind readnone
declare float @dx.op.binary.f32(i32, float, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.legacyF16ToF32(i32, i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.binary.i32(i32, i32, i32) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32) #1

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32, %dx.types.Handle, i32) #1

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32, %dx.types.Handle, i32) #1

; Function Attrs: nounwind readonly
declare %dx.types.Handle @dx.op.createHandle(i32, i8, i32, i32, i1) #1

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32, %dx.types.Handle, i32, i32) #1

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32, %dx.types.Handle, i32, i32) #1

attributes #0 = { nounwind readnone }
attributes #1 = { nounwind readonly }
attributes #2 = { nounwind }
attributes #3 = { noduplicate nounwind }

!llvm.ident = !{!0}
!dx.version = !{!1}
!dx.valver = !{!2}
!dx.shaderModel = !{!3}
!dx.resources = !{!4}
!dx.entryPoints = !{!29}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !19, !22, !26}
!5 = !{!6, !8, !10, !11, !12, !13, !14, !15, !17, !18}
!6 = !{i32 0, %"class.Texture2DMS<vector<float, 4>, 0>"* undef, !"", i32 0, i32 0, i32 1, i32 3, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, %"class.Texture2DMS<vector<unsigned int, 4>, 0>"* undef, !"", i32 0, i32 8, i32 1, i32 3, i32 0, !9}
!9 = !{i32 0, i32 5}
!10 = !{i32 2, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 1, i32 1, i32 2, i32 0, !7}
!11 = !{i32 3, %"class.Texture2D<float>"* undef, !"", i32 0, i32 2, i32 1, i32 2, i32 0, !7}
!12 = !{i32 4, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 5, i32 1, i32 11, i32 0, null}
!13 = !{i32 5, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 12, i32 1, i32 11, i32 0, null}
!14 = !{i32 6, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 13, i32 1, i32 11, i32 0, null}
!15 = !{i32 7, %"class.StructuredBuffer<unsigned int>"* undef, !"", i32 0, i32 6, i32 1, i32 12, i32 0, !16}
!16 = !{i32 1, i32 4}
!17 = !{i32 8, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 0, i32 10, i32 1, i32 4, i32 0, !7}
!18 = !{i32 9, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 3, i32 1, i32 11, i32 0, null}
!19 = !{!20, !21}
!20 = !{i32 0, %"class.RWTexture2D<vector<float, 4> >"* undef, !"", i32 0, i32 0, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!21 = !{i32 1, %"class.RWTexture2D<float>"* undef, !"", i32 0, i32 1, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!22 = !{!23, !24, !25}
!23 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!24 = !{i32 1, %CsHudOutlineConstants* undef, !"", i32 0, i32 0, i32 1, i32 336, null}
!25 = !{i32 2, %CsHudOutlineIndirectArgsConstants* undef, !"", i32 0, i32 1, i32 1, i32 16, null}
!26 = !{!27, !28}
!27 = !{i32 0, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!28 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!29 = !{void ()* @cs_hudoutline, !"cs_hudoutline", null, !4, !30}
!30 = !{i32 0, i64 272, i32 4, !31}
!31 = !{i32 8, i32 8, i32 1}
!32 = distinct !{!32, !"dx.controlflow.hints", i32 2}
!33 = distinct !{!33, !"dx.controlflow.hints", i32 2}
!34 = distinct !{!34, !"dx.controlflow.hints", i32 2}
!35 = distinct !{!35, !"dx.controlflow.hints", i32 2}
!36 = distinct !{!36, !"dx.controlflow.hints", i32 2}
!37 = distinct !{!37, !"dx.controlflow.hints", i32 2}
!38 = distinct !{!38, !"dx.controlflow.hints", i32 2}
!39 = distinct !{!39, !"dx.controlflow.hints", i32 2}
!40 = distinct !{!40, !"dx.controlflow.hints", i32 2}
!41 = distinct !{!41, !"dx.controlflow.hints", i32 2}
!42 = distinct !{!42, !"dx.controlflow.hints", i32 2}
!43 = !{!44, !44, i64 0}
!44 = !{!"int", !45, i64 0}
!45 = !{!"omnipotent char", !46, i64 0}
!46 = !{!"Simple C/C++ TBAA"}
!47 = distinct !{!47, !"dx.controlflow.hints", i32 2}
!48 = distinct !{!48, !"dx.controlflow.hints", i32 1}
!49 = distinct !{!49, !"dx.controlflow.hints", i32 1}
!50 = distinct !{!50, !"dx.controlflow.hints", i32 2}
!51 = distinct !{!51, !"dx.controlflow.hints", i32 1}
!52 = distinct !{!52, !"dx.controlflow.hints", i32 2}
!53 = distinct !{!53, !"dx.controlflow.hints", i32 1}
!54 = distinct !{!54, !"dx.controlflow.hints", i32 2}
!55 = distinct !{!55, !"dx.controlflow.hints", i32 2}
!56 = distinct !{!56, !"dx.controlflow.hints", i32 1}
!57 = distinct !{!57, !"dx.controlflow.hints", i32 2}
!58 = distinct !{!58, !"dx.controlflow.hints", i32 2}
!59 = distinct !{!59, !"dx.controlflow.hints", i32 2}
!60 = distinct !{!60, !"dx.controlflow.hints", i32 2}

