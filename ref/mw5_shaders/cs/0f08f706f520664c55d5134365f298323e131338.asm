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
; shader hash: 5e7bfbd8e35dda88b2c494b7d1b15a26
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
  br i1 %40, label %41, label %5743, !dx.controlflow.hints !32

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
  %96 = lshr i32 %77, 2
  %97 = extractvalue %dx.types.CBufRet.i32 %92, 2
  %98 = mul i32 %97, %96
  %99 = lshr i32 %76, 3
  %100 = add i32 %95, %99
  %101 = add i32 %100, %94
  %102 = add i32 %101, %98
  %103 = shl i32 %102, 2
  %104 = shl i32 %77, 3
  %105 = and i32 %104, 24
  %106 = and i32 %76, 7
  %107 = or i32 %105, %106
  %108 = shl i32 1, %107
  %109 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %103, i32 undef)  ; BufferLoad(srv,index,wot)
  %110 = extractvalue %dx.types.ResRet.i32 %109, 0
  %111 = and i32 %110, %108
  %112 = icmp ne i32 %111, 0
  %113 = shl i32 %95, 1
  %114 = add i32 %94, %99
  %115 = add i32 %114, %113
  %116 = add i32 %115, %98
  %117 = shl i32 %116, 2
  %118 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %117, i32 undef)  ; BufferLoad(srv,index,wot)
  %119 = extractvalue %dx.types.ResRet.i32 %118, 0
  %120 = and i32 %119, %108
  %121 = icmp eq i32 %120, 0
  %122 = mul i32 %95, 3
  %123 = add i32 %114, %122
  %124 = add i32 %123, %98
  %125 = shl i32 %124, 2
  %126 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %125, i32 undef)  ; BufferLoad(srv,index,wot)
  %127 = extractvalue %dx.types.ResRet.i32 %126, 0
  %128 = and i32 %127, %108
  %129 = icmp ne i32 %128, 0
  %130 = xor i1 %129, true
  %131 = icmp ugt i32 %43, 268435455
  br i1 %131, label %132, label %629, !dx.controlflow.hints !33

; <label>:132                                     ; preds = %41
  %133 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %9, i32 0, i32 %48, i32 %49, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %134 = extractvalue %dx.types.ResRet.f32 %133, 0
  %135 = fcmp fast ogt float %134, -1.000000e+00
  %136 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %137 = extractvalue %dx.types.CBufRet.f32 %136, 1
  %138 = select i1 %135, float %137, float 1.000000e+00
  %139 = fadd fast float %134, 1.000000e+00
  %140 = fmul fast float %138, %139
  %141 = call float @dx.op.unary.f32(i32 6, float %140)  ; FAbs(value)
  %142 = extractvalue %dx.types.CBufRet.f32 %136, 3
  %143 = fcmp ult float %141, %142
  %144 = fcmp uge float %134, -1.000000e+00
  %145 = and i1 %144, %143
  br i1 %145, label %146, label %629, !dx.controlflow.hints !34

; <label>:146                                     ; preds = %132
  %147 = fmul fast float %57, 2.000000e+00
  %148 = fmul fast float %58, 2.000000e+00
  %149 = fsub fast float 1.000000e+00, %147
  %150 = fsub fast float 1.000000e+00, %148
  %151 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %152 = extractvalue %dx.types.CBufRet.f32 %151, 0
  %153 = extractvalue %dx.types.CBufRet.f32 %151, 1
  %154 = extractvalue %dx.types.CBufRet.f32 %151, 2
  %155 = fmul fast float %152, %149
  %156 = fmul fast float %153, %149
  %157 = fmul fast float %154, %149
  %158 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %159 = extractvalue %dx.types.CBufRet.f32 %158, 0
  %160 = extractvalue %dx.types.CBufRet.f32 %158, 1
  %161 = extractvalue %dx.types.CBufRet.f32 %158, 2
  %162 = fmul fast float %159, %150
  %163 = fmul fast float %160, %150
  %164 = fmul fast float %161, %150
  %165 = fadd fast float %162, %155
  %166 = fadd fast float %163, %156
  %167 = fadd fast float %164, %157
  %168 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %169 = extractvalue %dx.types.CBufRet.f32 %168, 0
  %170 = extractvalue %dx.types.CBufRet.f32 %168, 1
  %171 = extractvalue %dx.types.CBufRet.f32 %168, 2
  %172 = fadd fast float %165, %169
  %173 = fadd fast float %166, %170
  %174 = fadd fast float %167, %171
  %175 = fmul fast float %172, %172
  %176 = fmul fast float %173, %173
  %177 = fadd fast float %175, %176
  %178 = fmul fast float %174, %174
  %179 = fadd fast float %177, %178
  %180 = call float @dx.op.unary.f32(i32 24, float %179)  ; Sqrt(value)
  %181 = fdiv fast float 1.000000e+00, %180
  %182 = fmul fast float %172, %181
  %183 = fmul fast float %173, %181
  %184 = fmul fast float %174, %181
  %185 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %186 = extractvalue %dx.types.CBufRet.f32 %185, 0
  %187 = extractvalue %dx.types.CBufRet.f32 %185, 1
  %188 = extractvalue %dx.types.CBufRet.f32 %185, 2
  %189 = fmul fast float %186, 9.687500e-01
  %190 = fmul fast float %187, 9.687500e-01
  %191 = fmul fast float %188, 9.687500e-01
  %192 = fadd fast float %189, 1.562500e-02
  %193 = fadd fast float %190, 1.562500e-02
  %194 = fadd fast float %191, 1.562500e-02
  %195 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %13, float %192, float %193, float %194, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %196 = extractvalue %dx.types.ResRet.f32 %195, 0
  %197 = extractvalue %dx.types.ResRet.f32 %195, 1
  %198 = extractvalue %dx.types.ResRet.f32 %195, 2
  %199 = fmul fast float %180, %141
  %200 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %17, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %201 = extractvalue %dx.types.CBufRet.i32 %200, 0
  %202 = icmp eq i32 %201, 0
  br i1 %202, label %412, label %203

; <label>:203                                     ; preds = %146
  br label %204

; <label>:204                                     ; preds = %405, %203
  %205 = phi float [ %406, %405 ], [ 0.000000e+00, %203 ]
  %206 = phi i32 [ %407, %405 ], [ 0, %203 ]
  %207 = add i32 %206, 171
  %208 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 %207)  ; CBufferLoadLegacy(handle,regIndex)
  %209 = extractvalue %dx.types.CBufRet.f32 %208, 2
  %210 = extractvalue %dx.types.CBufRet.f32 %208, 0
  %211 = extractvalue %dx.types.CBufRet.f32 %208, 1
  %212 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %213 = extractvalue %dx.types.CBufRet.f32 %212, 0
  %214 = extractvalue %dx.types.CBufRet.f32 %212, 1
  %215 = fsub fast float %210, %213
  %216 = fsub fast float %211, %214
  %217 = fsub fast float -0.000000e+00, %215
  %218 = fsub fast float -0.000000e+00, %216
  %219 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %182, float %183, float %184)  ; Dot3(ax,ay,az,bx,by,bz)
  %220 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %217, float %218, float 0.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %221 = fmul fast float %219, %219
  %222 = fsub fast float 1.000000e+00, %221
  %223 = call float @dx.op.dot3.f32(i32 55, float %217, float %218, float 0.000000e+00, float %182, float %183, float %184)  ; Dot3(ax,ay,az,bx,by,bz)
  %224 = fmul fast float %220, %219
  %225 = fsub fast float %223, %224
  %226 = call float @dx.op.dot3.f32(i32 55, float %217, float %218, float 0.000000e+00, float %217, float %218, float 0.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %227 = fmul fast float %220, %220
  %228 = fmul fast float %209, %209
  %229 = fsub fast float -0.000000e+00, %228
  %230 = fsub fast float %229, %227
  %231 = fadd fast float %230, %226
  %232 = fmul fast float %225, %225
  %233 = fmul fast float %231, %222
  %234 = fsub fast float %232, %233
  %235 = fcmp fast ult float %234, 0.000000e+00
  br i1 %235, label %405, label %236, !dx.controlflow.hints !35

; <label>:236                                     ; preds = %204
  %237 = call float @dx.op.unary.f32(i32 24, float %234)  ; Sqrt(value)
  %238 = fsub fast float -0.000000e+00, %225
  %239 = fsub fast float %238, %237
  %240 = fsub fast float %237, %225
  %241 = fdiv fast float %239, %222
  %242 = fdiv fast float %240, %222
  %243 = fcmp fast ole float %241, 0.000000e+00
  %244 = fcmp fast ole float %242, 0.000000e+00
  %245 = and i1 %243, %244
  br i1 %245, label %405, label %246, !dx.controlflow.hints !36

; <label>:246                                     ; preds = %236
  %247 = fmul fast float %241, %182
  %248 = fmul fast float %241, %183
  %249 = fmul fast float %241, %184
  %250 = fmul fast float %242, %182
  %251 = fmul fast float %242, %183
  %252 = fmul fast float %242, %184
  %253 = zext i1 %243 to i32
  %254 = zext i1 %244 to i32
  %255 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %17, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %256 = extractvalue %dx.types.CBufRet.i32 %255, 0
  %257 = icmp eq i32 %256, 0
  br i1 %257, label %302, label %258

; <label>:258                                     ; preds = %246
  br label %259

; <label>:259                                     ; preds = %290, %258
  %260 = phi i32 [ %291, %290 ], [ %253, %258 ]
  %261 = phi i32 [ %292, %290 ], [ %254, %258 ]
  %262 = phi i32 [ %293, %290 ], [ 0, %258 ]
  %263 = icmp eq i32 %206, %262
  br i1 %263, label %290, label %264, !dx.controlflow.hints !37

; <label>:264                                     ; preds = %259
  %265 = add i32 %262, 171
  %266 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 %265)  ; CBufferLoadLegacy(handle,regIndex)
  %267 = extractvalue %dx.types.CBufRet.f32 %266, 2
  %268 = extractvalue %dx.types.CBufRet.f32 %266, 0
  %269 = extractvalue %dx.types.CBufRet.f32 %266, 1
  %270 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %271 = extractvalue %dx.types.CBufRet.f32 %270, 0
  %272 = extractvalue %dx.types.CBufRet.f32 %270, 1
  %273 = fsub fast float %268, %271
  %274 = fsub fast float %269, %272
  %275 = fsub fast float %273, %247
  %276 = fsub fast float %274, %248
  %277 = call float @dx.op.dot2.f32(i32 54, float %275, float %276, float %275, float %276)  ; Dot2(ax,ay,bx,by)
  %278 = fsub fast float %273, %250
  %279 = fsub fast float %274, %251
  %280 = call float @dx.op.dot2.f32(i32 54, float %278, float %279, float %278, float %279)  ; Dot2(ax,ay,bx,by)
  %281 = fmul fast float %267, %267
  %282 = fcmp fast olt float %277, %281
  %283 = fcmp fast olt float %280, %281
  %284 = icmp ne i32 %260, 0
  %285 = or i1 %284, %282
  %286 = zext i1 %285 to i32
  %287 = icmp ne i32 %261, 0
  %288 = or i1 %287, %283
  %289 = zext i1 %288 to i32
  br label %290

; <label>:290                                     ; preds = %264, %259
  %291 = phi i32 [ %260, %259 ], [ %286, %264 ]
  %292 = phi i32 [ %261, %259 ], [ %289, %264 ]
  %293 = add nuw nsw i32 %262, 1
  %294 = icmp eq i32 %291, 0
  %295 = icmp eq i32 %292, 0
  %296 = or i1 %294, %295
  %297 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %17, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %298 = extractvalue %dx.types.CBufRet.i32 %297, 0
  %299 = icmp ult i32 %293, %298
  %300 = and i1 %296, %299
  br i1 %300, label %259, label %301

; <label>:301                                     ; preds = %290
  br label %302

; <label>:302                                     ; preds = %301, %246
  %303 = phi i32 [ %253, %246 ], [ %291, %301 ]
  %304 = phi i32 [ %254, %246 ], [ %292, %301 ]
  br label %305

; <label>:305                                     ; preds = %305, %302
  %306 = phi i32 [ %341, %305 ], [ %253, %302 ]
  %307 = phi i32 [ %351, %305 ], [ %254, %302 ]
  %308 = phi i32 [ %352, %305 ], [ 0, %302 ]
  %309 = add nuw nsw i32 %308, 191
  %310 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 %309)  ; CBufferLoadLegacy(handle,regIndex)
  %311 = extractvalue %dx.types.CBufRet.f32 %310, 0
  %312 = extractvalue %dx.types.CBufRet.f32 %310, 1
  %313 = extractvalue %dx.types.CBufRet.f32 %310, 2
  %314 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %315 = extractvalue %dx.types.CBufRet.f32 %314, 0
  %316 = extractvalue %dx.types.CBufRet.f32 %314, 1
  %317 = extractvalue %dx.types.CBufRet.f32 %314, 2
  %318 = fsub fast float %311, %315
  %319 = fsub fast float %312, %316
  %320 = fsub fast float %313, %317
  %321 = add nuw nsw i32 %308, 195
  %322 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 %321)  ; CBufferLoadLegacy(handle,regIndex)
  %323 = extractvalue %dx.types.CBufRet.f32 %322, 0
  %324 = extractvalue %dx.types.CBufRet.f32 %322, 1
  %325 = extractvalue %dx.types.CBufRet.f32 %322, 2
  %326 = fsub fast float %318, %247
  %327 = fsub fast float %319, %248
  %328 = fsub fast float %320, %249
  %329 = fsub fast float %318, %250
  %330 = fsub fast float %319, %251
  %331 = fsub fast float %320, %252
  %332 = call float @dx.op.unary.f32(i32 6, float %326)  ; FAbs(value)
  %333 = fcmp fast olt float %332, %323
  %334 = call float @dx.op.unary.f32(i32 6, float %327)  ; FAbs(value)
  %335 = fcmp fast olt float %334, %324
  %336 = and i1 %333, %335
  %337 = call float @dx.op.unary.f32(i32 6, float %328)  ; FAbs(value)
  %338 = fcmp fast olt float %337, %325
  %339 = and i1 %336, %338
  %340 = zext i1 %339 to i32
  %341 = or i32 %340, %306
  %342 = call float @dx.op.unary.f32(i32 6, float %329)  ; FAbs(value)
  %343 = fcmp fast olt float %342, %323
  %344 = call float @dx.op.unary.f32(i32 6, float %330)  ; FAbs(value)
  %345 = fcmp fast olt float %344, %324
  %346 = and i1 %343, %345
  %347 = call float @dx.op.unary.f32(i32 6, float %331)  ; FAbs(value)
  %348 = fcmp fast olt float %347, %325
  %349 = and i1 %346, %348
  %350 = zext i1 %349 to i32
  %351 = or i32 %350, %307
  %352 = add nuw nsw i32 %308, 1
  %353 = icmp eq i32 %341, 0
  %354 = icmp eq i32 %351, 0
  %355 = or i1 %353, %354
  %356 = icmp slt i32 %352, 4
  %357 = and i1 %356, %355
  br i1 %357, label %305, label %358

; <label>:358                                     ; preds = %305
  %359 = or i32 %341, %303
  %360 = icmp eq i32 %359, 0
  %361 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %362 = extractvalue %dx.types.CBufRet.f32 %361, 3
  %363 = fcmp fast ogt float %241, 0.000000e+00
  br i1 %363, label %364, label %379, !dx.controlflow.hints !38

; <label>:364                                     ; preds = %358
  %365 = fsub fast float %199, %241
  %366 = fcmp fast ole float %241, %199
  %367 = fcmp fast ole float %365, %362
  %368 = and i1 %366, %367
  %369 = select i1 %368, float 1.000000e+00, float 0.000000e+00
  %370 = fmul fast float %362, -1.500000e+00
  %371 = fsub fast float %365, %362
  %372 = fdiv fast float %371, %370
  %373 = call float @dx.op.unary.f32(i32 7, float %372)  ; Saturate(value)
  %374 = fmul fast float %373, 2.000000e+00
  %375 = fsub fast float 3.000000e+00, %374
  %376 = fmul fast float %373, %373
  %377 = fmul fast float %376, %369
  %378 = fmul fast float %377, %375
  br label %379

; <label>:379                                     ; preds = %364, %358
  %380 = phi float [ %378, %364 ], [ 0.000000e+00, %358 ]
  %381 = select i1 %360, float %380, float 0.000000e+00
  %382 = fadd fast float %381, %205
  %383 = or i32 %351, %304
  %384 = icmp eq i32 %383, 0
  %385 = fcmp fast ogt float %242, 0.000000e+00
  br i1 %385, label %386, label %401, !dx.controlflow.hints !38

; <label>:386                                     ; preds = %379
  %387 = fsub fast float %199, %242
  %388 = fcmp fast ole float %242, %199
  %389 = fcmp fast ole float %387, %362
  %390 = and i1 %388, %389
  %391 = select i1 %390, float 1.000000e+00, float 0.000000e+00
  %392 = fmul fast float %362, -1.500000e+00
  %393 = fsub fast float %387, %362
  %394 = fdiv fast float %393, %392
  %395 = call float @dx.op.unary.f32(i32 7, float %394)  ; Saturate(value)
  %396 = fmul fast float %395, 2.000000e+00
  %397 = fsub fast float 3.000000e+00, %396
  %398 = fmul fast float %395, %395
  %399 = fmul fast float %398, %391
  %400 = fmul fast float %399, %397
  br label %401

; <label>:401                                     ; preds = %386, %379
  %402 = phi float [ %400, %386 ], [ 0.000000e+00, %379 ]
  %403 = select i1 %384, float %402, float 0.000000e+00
  %404 = fadd fast float %382, %403
  br label %405

; <label>:405                                     ; preds = %401, %236, %204
  %406 = phi float [ %205, %236 ], [ %404, %401 ], [ %205, %204 ]
  %407 = add nuw nsw i32 %206, 1
  %408 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %17, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %409 = extractvalue %dx.types.CBufRet.i32 %408, 0
  %410 = icmp ult i32 %407, %409
  br i1 %410, label %204, label %411

; <label>:411                                     ; preds = %405
  br label %412

; <label>:412                                     ; preds = %411, %146
  %413 = phi float [ 0.000000e+00, %146 ], [ %406, %411 ]
  br label %414

; <label>:414                                     ; preds = %624, %412
  %415 = phi float [ %625, %624 ], [ %413, %412 ]
  %416 = phi i32 [ %626, %624 ], [ 0, %412 ]
  %417 = add nuw nsw i32 %416, 191
  %418 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 %417)  ; CBufferLoadLegacy(handle,regIndex)
  %419 = extractvalue %dx.types.CBufRet.f32 %418, 0
  %420 = extractvalue %dx.types.CBufRet.f32 %418, 1
  %421 = extractvalue %dx.types.CBufRet.f32 %418, 2
  %422 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %423 = extractvalue %dx.types.CBufRet.f32 %422, 0
  %424 = extractvalue %dx.types.CBufRet.f32 %422, 1
  %425 = extractvalue %dx.types.CBufRet.f32 %422, 2
  %426 = fsub fast float %419, %423
  %427 = fsub fast float %420, %424
  %428 = fsub fast float %421, %425
  %429 = add nuw nsw i32 %416, 195
  %430 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 %429)  ; CBufferLoadLegacy(handle,regIndex)
  %431 = extractvalue %dx.types.CBufRet.f32 %430, 0
  %432 = extractvalue %dx.types.CBufRet.f32 %430, 1
  %433 = extractvalue %dx.types.CBufRet.f32 %430, 2
  %434 = fdiv fast float 1.000000e+00, %182
  %435 = fdiv fast float 1.000000e+00, %183
  %436 = fdiv fast float 1.000000e+00, %184
  %437 = fadd fast float %426, %431
  %438 = fadd fast float %427, %432
  %439 = fadd fast float %428, %433
  %440 = fsub fast float %426, %431
  %441 = fsub fast float %427, %432
  %442 = fsub fast float %428, %433
  %443 = fmul fast float %440, %434
  %444 = fmul fast float %437, %434
  %445 = call float @dx.op.binary.f32(i32 36, float %443, float %444)  ; FMin(a,b)
  %446 = call float @dx.op.binary.f32(i32 35, float %443, float %444)  ; FMax(a,b)
  %447 = fmul fast float %441, %435
  %448 = fmul fast float %438, %435
  %449 = call float @dx.op.binary.f32(i32 36, float %447, float %448)  ; FMin(a,b)
  %450 = call float @dx.op.binary.f32(i32 35, float %445, float %449)  ; FMax(a,b)
  %451 = call float @dx.op.binary.f32(i32 35, float %447, float %448)  ; FMax(a,b)
  %452 = call float @dx.op.binary.f32(i32 36, float %446, float %451)  ; FMin(a,b)
  %453 = fmul fast float %436, %442
  %454 = fmul fast float %436, %439
  %455 = call float @dx.op.binary.f32(i32 36, float %453, float %454)  ; FMin(a,b)
  %456 = call float @dx.op.binary.f32(i32 35, float %450, float %455)  ; FMax(a,b)
  %457 = call float @dx.op.binary.f32(i32 35, float %453, float %454)  ; FMax(a,b)
  %458 = call float @dx.op.binary.f32(i32 36, float %452, float %457)  ; FMin(a,b)
  %459 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %456)  ; FMax(a,b)
  %460 = fcmp fast ult float %458, %459
  br i1 %460, label %624, label %461, !dx.controlflow.hints !39

; <label>:461                                     ; preds = %414
  %462 = fcmp fast ole float %456, 0.000000e+00
  %463 = fcmp fast ole float %458, 0.000000e+00
  %464 = and i1 %462, %463
  br i1 %464, label %624, label %465, !dx.controlflow.hints !40

; <label>:465                                     ; preds = %461
  %466 = fmul fast float %456, %182
  %467 = fmul fast float %456, %183
  %468 = fmul fast float %456, %184
  %469 = fmul fast float %458, %182
  %470 = fmul fast float %458, %183
  %471 = fmul fast float %458, %184
  %472 = zext i1 %462 to i32
  %473 = zext i1 %463 to i32
  %474 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %17, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %475 = extractvalue %dx.types.CBufRet.i32 %474, 0
  %476 = icmp eq i32 %475, 0
  br i1 %476, label %514, label %477

; <label>:477                                     ; preds = %465
  br label %478

; <label>:478                                     ; preds = %478, %477
  %479 = phi i32 [ %502, %478 ], [ %472, %477 ]
  %480 = phi i32 [ %504, %478 ], [ %473, %477 ]
  %481 = phi i32 [ %505, %478 ], [ 0, %477 ]
  %482 = add i32 %481, 171
  %483 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 %482)  ; CBufferLoadLegacy(handle,regIndex)
  %484 = extractvalue %dx.types.CBufRet.f32 %483, 2
  %485 = extractvalue %dx.types.CBufRet.f32 %483, 0
  %486 = extractvalue %dx.types.CBufRet.f32 %483, 1
  %487 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %488 = extractvalue %dx.types.CBufRet.f32 %487, 0
  %489 = extractvalue %dx.types.CBufRet.f32 %487, 1
  %490 = fsub fast float %485, %488
  %491 = fsub fast float %486, %489
  %492 = fsub fast float %490, %466
  %493 = fsub fast float %491, %467
  %494 = call float @dx.op.dot2.f32(i32 54, float %492, float %493, float %492, float %493)  ; Dot2(ax,ay,bx,by)
  %495 = fsub fast float %490, %469
  %496 = fsub fast float %491, %470
  %497 = call float @dx.op.dot2.f32(i32 54, float %495, float %496, float %495, float %496)  ; Dot2(ax,ay,bx,by)
  %498 = fmul fast float %484, %484
  %499 = fcmp fast olt float %494, %498
  %500 = fcmp fast olt float %497, %498
  %501 = zext i1 %499 to i32
  %502 = or i32 %501, %479
  %503 = zext i1 %500 to i32
  %504 = or i32 %503, %480
  %505 = add nuw nsw i32 %481, 1
  %506 = icmp eq i32 %502, 0
  %507 = icmp eq i32 %504, 0
  %508 = or i1 %506, %507
  %509 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %17, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %510 = extractvalue %dx.types.CBufRet.i32 %509, 0
  %511 = icmp ult i32 %505, %510
  %512 = and i1 %511, %508
  br i1 %512, label %478, label %513

; <label>:513                                     ; preds = %478
  br label %514

; <label>:514                                     ; preds = %513, %465
  %515 = phi i32 [ %472, %465 ], [ %502, %513 ]
  %516 = phi i32 [ %473, %465 ], [ %504, %513 ]
  br label %517

; <label>:517                                     ; preds = %568, %514
  %518 = phi i32 [ %569, %568 ], [ %472, %514 ]
  %519 = phi i32 [ %570, %568 ], [ %473, %514 ]
  %520 = phi i32 [ %571, %568 ], [ 0, %514 ]
  %521 = icmp eq i32 %416, %520
  br i1 %521, label %568, label %522, !dx.controlflow.hints !41

; <label>:522                                     ; preds = %517
  %523 = add nuw nsw i32 %520, 191
  %524 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 %523)  ; CBufferLoadLegacy(handle,regIndex)
  %525 = extractvalue %dx.types.CBufRet.f32 %524, 0
  %526 = extractvalue %dx.types.CBufRet.f32 %524, 1
  %527 = extractvalue %dx.types.CBufRet.f32 %524, 2
  %528 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %529 = extractvalue %dx.types.CBufRet.f32 %528, 0
  %530 = extractvalue %dx.types.CBufRet.f32 %528, 1
  %531 = extractvalue %dx.types.CBufRet.f32 %528, 2
  %532 = fsub fast float %525, %529
  %533 = fsub fast float %526, %530
  %534 = fsub fast float %527, %531
  %535 = add nuw nsw i32 %520, 195
  %536 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 %535)  ; CBufferLoadLegacy(handle,regIndex)
  %537 = extractvalue %dx.types.CBufRet.f32 %536, 0
  %538 = extractvalue %dx.types.CBufRet.f32 %536, 1
  %539 = extractvalue %dx.types.CBufRet.f32 %536, 2
  %540 = fsub fast float %532, %466
  %541 = fsub fast float %533, %467
  %542 = fsub fast float %534, %468
  %543 = fsub fast float %532, %469
  %544 = fsub fast float %533, %470
  %545 = fsub fast float %534, %471
  %546 = call float @dx.op.unary.f32(i32 6, float %540)  ; FAbs(value)
  %547 = fcmp fast ole float %546, %537
  %548 = call float @dx.op.unary.f32(i32 6, float %541)  ; FAbs(value)
  %549 = fcmp fast ole float %548, %538
  %550 = and i1 %547, %549
  %551 = call float @dx.op.unary.f32(i32 6, float %542)  ; FAbs(value)
  %552 = fcmp fast ole float %551, %539
  %553 = and i1 %550, %552
  %554 = icmp ne i32 %518, 0
  %555 = or i1 %554, %553
  %556 = zext i1 %555 to i32
  %557 = call float @dx.op.unary.f32(i32 6, float %543)  ; FAbs(value)
  %558 = fcmp fast ole float %557, %537
  %559 = call float @dx.op.unary.f32(i32 6, float %544)  ; FAbs(value)
  %560 = fcmp fast ole float %559, %538
  %561 = and i1 %558, %560
  %562 = call float @dx.op.unary.f32(i32 6, float %545)  ; FAbs(value)
  %563 = fcmp fast ole float %562, %539
  %564 = and i1 %561, %563
  %565 = icmp ne i32 %519, 0
  %566 = or i1 %565, %564
  %567 = zext i1 %566 to i32
  br label %568

; <label>:568                                     ; preds = %522, %517
  %569 = phi i32 [ %518, %517 ], [ %556, %522 ]
  %570 = phi i32 [ %519, %517 ], [ %567, %522 ]
  %571 = add nuw nsw i32 %520, 1
  %572 = icmp eq i32 %569, 0
  %573 = icmp eq i32 %570, 0
  %574 = or i1 %572, %573
  %575 = icmp slt i32 %571, 4
  %576 = and i1 %575, %574
  br i1 %576, label %517, label %577

; <label>:577                                     ; preds = %568
  %578 = or i32 %569, %515
  %579 = icmp eq i32 %578, 0
  %580 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %581 = extractvalue %dx.types.CBufRet.f32 %580, 3
  %582 = fcmp fast ogt float %456, 0.000000e+00
  br i1 %582, label %583, label %598, !dx.controlflow.hints !38

; <label>:583                                     ; preds = %577
  %584 = fsub fast float %199, %456
  %585 = fcmp fast ole float %456, %199
  %586 = fcmp fast ole float %584, %581
  %587 = and i1 %585, %586
  %588 = select i1 %587, float 1.000000e+00, float 0.000000e+00
  %589 = fmul fast float %581, -1.500000e+00
  %590 = fsub fast float %584, %581
  %591 = fdiv fast float %590, %589
  %592 = call float @dx.op.unary.f32(i32 7, float %591)  ; Saturate(value)
  %593 = fmul fast float %592, 2.000000e+00
  %594 = fsub fast float 3.000000e+00, %593
  %595 = fmul fast float %592, %592
  %596 = fmul fast float %595, %588
  %597 = fmul fast float %596, %594
  br label %598

; <label>:598                                     ; preds = %583, %577
  %599 = phi float [ %597, %583 ], [ 0.000000e+00, %577 ]
  %600 = select i1 %579, float %599, float 0.000000e+00
  %601 = fadd fast float %600, %415
  %602 = or i32 %570, %516
  %603 = icmp eq i32 %602, 0
  %604 = fcmp fast ogt float %458, 0.000000e+00
  br i1 %604, label %605, label %620, !dx.controlflow.hints !38

; <label>:605                                     ; preds = %598
  %606 = fsub fast float %199, %458
  %607 = fcmp fast ole float %458, %199
  %608 = fcmp fast ole float %606, %581
  %609 = and i1 %607, %608
  %610 = select i1 %609, float 1.000000e+00, float 0.000000e+00
  %611 = fmul fast float %581, -1.500000e+00
  %612 = fsub fast float %606, %581
  %613 = fdiv fast float %612, %611
  %614 = call float @dx.op.unary.f32(i32 7, float %613)  ; Saturate(value)
  %615 = fmul fast float %614, 2.000000e+00
  %616 = fsub fast float 3.000000e+00, %615
  %617 = fmul fast float %614, %614
  %618 = fmul fast float %617, %610
  %619 = fmul fast float %618, %616
  br label %620

; <label>:620                                     ; preds = %605, %598
  %621 = phi float [ %619, %605 ], [ 0.000000e+00, %598 ]
  %622 = select i1 %603, float %621, float 0.000000e+00
  %623 = fadd fast float %601, %622
  br label %624

; <label>:624                                     ; preds = %620, %461, %414
  %625 = phi float [ %415, %461 ], [ %623, %620 ], [ %415, %414 ]
  %626 = add nuw nsw i32 %416, 1
  %627 = icmp eq i32 %626, 4
  br i1 %627, label %628, label %414

; <label>:628                                     ; preds = %624
  br label %629

; <label>:629                                     ; preds = %628, %132, %41
  %630 = phi float [ 0.000000e+00, %132 ], [ 0.000000e+00, %41 ], [ %196, %628 ]
  %631 = phi float [ 0.000000e+00, %132 ], [ 0.000000e+00, %41 ], [ %197, %628 ]
  %632 = phi float [ 0.000000e+00, %132 ], [ 0.000000e+00, %41 ], [ %198, %628 ]
  %633 = phi float [ 0.000000e+00, %132 ], [ 0.000000e+00, %41 ], [ %625, %628 ]
  br i1 %121, label %5671, label %634, !dx.controlflow.hints !42

; <label>:634                                     ; preds = %629
  %635 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %16, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %636 = extractvalue %dx.types.CBufRet.i32 %635, 0
  %637 = extractvalue %dx.types.CBufRet.i32 %635, 1
  %638 = extractvalue %dx.types.CBufRet.i32 %635, 2
  %639 = extractvalue %dx.types.CBufRet.i32 %635, 3
  %640 = fadd fast float %74, -5.000000e-01
  %641 = fadd fast float %75, -5.000000e-01
  %642 = call float @dx.op.binary.f32(i32 35, float %640, float 0.000000e+00)  ; FMax(a,b)
  %643 = call float @dx.op.binary.f32(i32 35, float %641, float 0.000000e+00)  ; FMax(a,b)
  %644 = call float @dx.op.binary.f32(i32 36, float %642, float %72)  ; FMin(a,b)
  %645 = call float @dx.op.binary.f32(i32 36, float %643, float %73)  ; FMin(a,b)
  %646 = fptoui float %644 to i32
  %647 = fptoui float %645 to i32
  %648 = lshr i32 %646, 1
  %649 = lshr i32 %647, 1
  %650 = and i32 %646, 1
  %651 = shl i32 %647, 1
  %652 = and i32 %651, 2
  %653 = or i32 %652, %650
  %654 = getelementptr inbounds [4 x i32], [4 x i32]* %35, i32 0, i32 0
  store i32 %636, i32* %654, align 4
  %655 = getelementptr inbounds [4 x i32], [4 x i32]* %35, i32 0, i32 1
  store i32 %637, i32* %655, align 4
  %656 = getelementptr inbounds [4 x i32], [4 x i32]* %35, i32 0, i32 2
  store i32 %638, i32* %656, align 4
  %657 = getelementptr inbounds [4 x i32], [4 x i32]* %35, i32 0, i32 3
  store i32 %639, i32* %657, align 4
  %658 = getelementptr [4 x i32], [4 x i32]* %35, i32 0, i32 %653
  %659 = load i32, i32* %658, align 4, !tbaa !43
  %660 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %12, i32 %659, i32 %648, i32 %649, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %661 = extractvalue %dx.types.ResRet.f32 %660, 0
  %662 = extractvalue %dx.types.ResRet.f32 %660, 1
  %663 = fadd fast float %662, 0x3F40000000000000
  %664 = fmul fast float %663, 2.550000e+02
  %665 = fadd fast float %661, 0x3F40000000000000
  %666 = fmul fast float %665, 2.550000e+02
  %667 = fptoui float %664 to i32
  %668 = shl i32 %667, 8
  %669 = fptoui float %666 to i32
  %670 = and i32 %669, 255
  %671 = or i32 %668, %670
  %672 = mul i32 %671, 100
  %673 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %672, i32 undef)  ; BufferLoad(srv,index,wot)
  %674 = extractvalue %dx.types.ResRet.i32 %673, 0
  %675 = lshr i32 %674, 28
  %676 = and i32 %674, 131072
  switch i32 %675, label %5671 [
    i32 0, label %677
    i32 1, label %1021
    i32 2, label %1565
    i32 3, label %1875
    i32 4, label %2468
    i32 5, label %2603
    i32 6, label %5063
    i32 7, label %5418
  ], !dx.controlflow.hints !47

; <label>:677                                     ; preds = %634
  %678 = and i32 %674, 511
  %679 = mul nuw nsw i32 %678, 20
  %680 = add nuw nsw i32 %679, 4
  %681 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %680, i32 undef)  ; BufferLoad(srv,index,wot)
  %682 = extractvalue %dx.types.ResRet.i32 %681, 0
  %683 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %679, i32 undef)  ; BufferLoad(srv,index,wot)
  %684 = extractvalue %dx.types.ResRet.i32 %683, 0
  %685 = and i32 %674, 524288
  %686 = icmp ne i32 %685, 0
  %687 = and i32 %674, 2097152
  %688 = icmp ne i32 %687, 0
  %689 = lshr i32 %682, 8
  %690 = and i32 %689, 65535
  %691 = call float @dx.op.legacyF16ToF32(i32 131, i32 %690)  ; LegacyF16ToF32(value)
  %692 = lshr i32 %682, 24
  %693 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 228)  ; CBufferLoadLegacy(handle,regIndex)
  %694 = extractvalue %dx.types.CBufRet.f32 %693, 2
  %695 = extractvalue %dx.types.CBufRet.f32 %693, 0
  %696 = call float @dx.op.binary.f32(i32 35, float %57, float %695)  ; FMax(a,b)
  %697 = call float @dx.op.binary.f32(i32 36, float %696, float %694)  ; FMin(a,b)
  %698 = call float @dx.op.binary.f32(i32 36, float %57, float %695)  ; FMin(a,b)
  %699 = call float @dx.op.binary.f32(i32 35, float %698, float %697)  ; FMax(a,b)
  %700 = fcmp fast oeq float %57, %699
  %701 = extractvalue %dx.types.CBufRet.f32 %693, 3
  %702 = extractvalue %dx.types.CBufRet.f32 %693, 1
  %703 = call float @dx.op.binary.f32(i32 35, float %58, float %702)  ; FMax(a,b)
  %704 = call float @dx.op.binary.f32(i32 36, float %703, float %701)  ; FMin(a,b)
  %705 = call float @dx.op.binary.f32(i32 36, float %58, float %702)  ; FMin(a,b)
  %706 = call float @dx.op.binary.f32(i32 35, float %705, float %704)  ; FMax(a,b)
  %707 = fcmp fast oeq float %58, %706
  %708 = and i1 %700, %707
  %709 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 224)  ; CBufferLoadLegacy(handle,regIndex)
  %710 = extractvalue %dx.types.CBufRet.f32 %709, 1
  %711 = select i1 %708, float %710, float 1.000000e+00
  %712 = icmp ne i32 %692, 0
  %713 = and i1 %112, %712
  br i1 %713, label %714, label %778, !dx.controlflow.hints !48

; <label>:714                                     ; preds = %677
  %715 = sitofp i32 %692 to float
  %716 = fmul fast float %715, 0x3F70101020000000
  %717 = fmul fast float %716, %711
  %718 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %719 = extractvalue %dx.types.CBufRet.f32 %718, 3
  %720 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %721 = extractvalue %dx.types.CBufRet.f32 %720, 2
  %722 = fmul fast float %721, %717
  %723 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %724 = extractvalue %dx.types.CBufRet.f32 %723, 0
  %725 = extractvalue %dx.types.CBufRet.f32 %723, 1
  %726 = extractvalue %dx.types.CBufRet.f32 %723, 2
  %727 = extractvalue %dx.types.CBufRet.f32 %723, 3
  %728 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %729 = extractvalue %dx.types.CBufRet.f32 %728, 0
  %730 = extractvalue %dx.types.CBufRet.f32 %728, 1
  %731 = extractvalue %dx.types.CBufRet.f32 %728, 2
  %732 = extractvalue %dx.types.CBufRet.f32 %728, 3
  %733 = select i1 %686, float %724, float %729
  %734 = select i1 %686, float %725, float %730
  %735 = select i1 %686, float %726, float %731
  %736 = select i1 %686, float %727, float %732
  %737 = fmul fast float %733, %717
  %738 = fmul fast float %734, %717
  %739 = fmul fast float %735, %717
  %740 = fmul fast float %736, %717
  br i1 %129, label %767, label %741, !dx.controlflow.hints !49

; <label>:741                                     ; preds = %714
  %742 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 10)  ; CBufferLoadLegacy(handle,regIndex)
  %743 = extractvalue %dx.types.CBufRet.f32 %742, 0
  %744 = extractvalue %dx.types.CBufRet.f32 %742, 1
  %745 = extractvalue %dx.types.CBufRet.f32 %742, 2
  %746 = extractvalue %dx.types.CBufRet.f32 %742, 3
  %747 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %748 = extractvalue %dx.types.CBufRet.f32 %747, 0
  %749 = extractvalue %dx.types.CBufRet.f32 %747, 1
  %750 = extractvalue %dx.types.CBufRet.f32 %747, 2
  %751 = extractvalue %dx.types.CBufRet.f32 %747, 3
  %752 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %753 = extractvalue %dx.types.CBufRet.f32 %752, 0
  %754 = extractvalue %dx.types.CBufRet.f32 %752, 1
  %755 = extractvalue %dx.types.CBufRet.f32 %752, 2
  %756 = extractvalue %dx.types.CBufRet.f32 %752, 3
  %757 = extractvalue %dx.types.CBufRet.f32 %720, 1
  %758 = fmul fast float %753, %737
  %759 = fmul fast float %758, %757
  %760 = fmul fast float %754, %738
  %761 = fmul fast float %760, %757
  %762 = fmul fast float %755, %739
  %763 = fmul fast float %762, %757
  %764 = fmul fast float %756, %740
  %765 = fmul fast float %764, %757
  %766 = fmul fast float %757, %722
  br label %890

; <label>:767                                     ; preds = %714
  %768 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %769 = extractvalue %dx.types.CBufRet.f32 %768, 0
  %770 = extractvalue %dx.types.CBufRet.f32 %768, 1
  %771 = extractvalue %dx.types.CBufRet.f32 %768, 2
  %772 = extractvalue %dx.types.CBufRet.f32 %768, 3
  %773 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %774 = extractvalue %dx.types.CBufRet.f32 %773, 0
  %775 = extractvalue %dx.types.CBufRet.f32 %773, 1
  %776 = extractvalue %dx.types.CBufRet.f32 %773, 2
  %777 = extractvalue %dx.types.CBufRet.f32 %773, 3
  br label %890

; <label>:778                                     ; preds = %677
  %779 = and i32 %674, 1048576
  %780 = icmp ne i32 %779, 0
  %781 = lshr i32 %684, 24
  %782 = uitofp i32 %781 to float
  %783 = fmul fast float %782, 0x3F70101020000000
  %784 = lshr i32 %684, 16
  %785 = and i32 %784, 255
  %786 = uitofp i32 %785 to float
  %787 = fmul fast float %786, 0x3F70101020000000
  %788 = lshr i32 %684, 8
  %789 = and i32 %788, 255
  %790 = uitofp i32 %789 to float
  %791 = fmul fast float %790, 0x3F70101020000000
  %792 = and i32 %684, 255
  %793 = uitofp i32 %792 to float
  %794 = fmul fast float %793, 0x3F70101020000000
  %795 = and i32 %674, 65536
  %796 = icmp ne i32 %795, 0
  %797 = select i1 %796, float 1.000000e+00, float 0.000000e+00
  %798 = and i32 %674, 32768
  %799 = icmp ne i32 %798, 0
  %800 = select i1 %799, float 0.000000e+00, float 1.000000e+00
  %801 = select i1 %112, float %711, float %800
  %802 = fmul fast float %801, %797
  %803 = fmul fast float %794, %801
  %804 = fmul fast float %791, %801
  %805 = fmul fast float %787, %801
  %806 = fmul fast float %783, %801
  %807 = select i1 %129, float 0.000000e+00, float 1.000000e+00
  %808 = select i1 %780, float %807, float %802
  br i1 %129, label %850, label %809, !dx.controlflow.hints !50

; <label>:809                                     ; preds = %778
  %810 = icmp ne i32 %676, 0
  %811 = select i1 %810, float 1.000000e+00, float 0.000000e+00
  %812 = fmul fast float %808, %811
  %813 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %814 = extractvalue %dx.types.CBufRet.f32 %813, 0
  %815 = extractvalue %dx.types.CBufRet.f32 %813, 1
  %816 = extractvalue %dx.types.CBufRet.f32 %813, 2
  %817 = extractvalue %dx.types.CBufRet.f32 %813, 3
  %818 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %819 = extractvalue %dx.types.CBufRet.f32 %818, 0
  %820 = extractvalue %dx.types.CBufRet.f32 %818, 1
  %821 = extractvalue %dx.types.CBufRet.f32 %818, 2
  %822 = extractvalue %dx.types.CBufRet.f32 %818, 3
  %823 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %824 = extractvalue %dx.types.CBufRet.f32 %823, 0
  %825 = extractvalue %dx.types.CBufRet.f32 %823, 1
  %826 = extractvalue %dx.types.CBufRet.f32 %823, 2
  %827 = extractvalue %dx.types.CBufRet.f32 %823, 3
  %828 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %829 = extractvalue %dx.types.CBufRet.f32 %828, 0
  %830 = fsub fast float %803, %801
  %831 = fsub fast float %804, %801
  %832 = fsub fast float %805, %801
  %833 = fsub fast float %806, %801
  %834 = fmul fast float %829, %830
  %835 = fmul fast float %829, %831
  %836 = fmul fast float %829, %832
  %837 = fmul fast float %829, %833
  %838 = fadd fast float %834, %801
  %839 = fadd fast float %835, %801
  %840 = fadd fast float %836, %801
  %841 = fadd fast float %837, %801
  %842 = fmul fast float %824, %811
  %843 = fmul fast float %842, %838
  %844 = fmul fast float %825, %811
  %845 = fmul fast float %844, %839
  %846 = fmul fast float %826, %811
  %847 = fmul fast float %846, %840
  %848 = fmul fast float %827, %811
  %849 = fmul fast float %848, %841
  br label %868

; <label>:850                                     ; preds = %778
  %851 = and i32 %674, 262144
  %852 = icmp ne i32 %851, 0
  %853 = select i1 %852, float 1.000000e+00, float 0.000000e+00
  %854 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %855 = extractvalue %dx.types.CBufRet.f32 %854, 0
  %856 = extractvalue %dx.types.CBufRet.f32 %854, 1
  %857 = extractvalue %dx.types.CBufRet.f32 %854, 2
  %858 = extractvalue %dx.types.CBufRet.f32 %854, 3
  %859 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %860 = extractvalue %dx.types.CBufRet.f32 %859, 0
  %861 = extractvalue %dx.types.CBufRet.f32 %859, 1
  %862 = extractvalue %dx.types.CBufRet.f32 %859, 2
  %863 = extractvalue %dx.types.CBufRet.f32 %859, 3
  %864 = fmul fast float %803, %853
  %865 = fmul fast float %804, %853
  %866 = fmul fast float %805, %853
  %867 = fmul fast float %806, %853
  br label %868

; <label>:868                                     ; preds = %850, %809
  %869 = phi float [ %843, %809 ], [ %864, %850 ]
  %870 = phi float [ %845, %809 ], [ %865, %850 ]
  %871 = phi float [ %847, %809 ], [ %866, %850 ]
  %872 = phi float [ %849, %809 ], [ %867, %850 ]
  %873 = phi float [ %819, %809 ], [ %860, %850 ]
  %874 = phi float [ %820, %809 ], [ %861, %850 ]
  %875 = phi float [ %821, %809 ], [ %862, %850 ]
  %876 = phi float [ %822, %809 ], [ %863, %850 ]
  %877 = phi float [ %814, %809 ], [ %855, %850 ]
  %878 = phi float [ %815, %809 ], [ %856, %850 ]
  %879 = phi float [ %816, %809 ], [ %857, %850 ]
  %880 = phi float [ %817, %809 ], [ %858, %850 ]
  %881 = phi float [ %812, %809 ], [ %808, %850 ]
  %882 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %883 = extractvalue %dx.types.CBufRet.f32 %882, 0
  %884 = fmul fast float %883, 2.000000e+00
  %885 = select i1 %688, float %884, float 1.000000e+00
  %886 = fmul fast float %885, %869
  %887 = fmul fast float %885, %870
  %888 = fmul fast float %885, %871
  %889 = fmul fast float %885, %872
  br label %890

; <label>:890                                     ; preds = %868, %767, %741
  %891 = phi float [ %886, %868 ], [ %759, %741 ], [ %737, %767 ]
  %892 = phi float [ %887, %868 ], [ %761, %741 ], [ %738, %767 ]
  %893 = phi float [ %888, %868 ], [ %763, %741 ], [ %739, %767 ]
  %894 = phi float [ %889, %868 ], [ %765, %741 ], [ %740, %767 ]
  %895 = phi float [ %873, %868 ], [ %748, %741 ], [ %774, %767 ]
  %896 = phi float [ %874, %868 ], [ %749, %741 ], [ %775, %767 ]
  %897 = phi float [ %875, %868 ], [ %750, %741 ], [ %776, %767 ]
  %898 = phi float [ %876, %868 ], [ %751, %741 ], [ %777, %767 ]
  %899 = phi float [ %877, %868 ], [ %743, %741 ], [ %769, %767 ]
  %900 = phi float [ %878, %868 ], [ %744, %741 ], [ %770, %767 ]
  %901 = phi float [ %879, %868 ], [ %745, %741 ], [ %771, %767 ]
  %902 = phi float [ %880, %868 ], [ %746, %741 ], [ %772, %767 ]
  %903 = phi float [ %881, %868 ], [ %766, %741 ], [ %722, %767 ]
  %904 = phi float [ %691, %868 ], [ %719, %741 ], [ %719, %767 ]
  %905 = fcmp fast oeq float %904, 0.000000e+00
  br i1 %905, label %1005, label %906, !dx.controlflow.hints !51

; <label>:906                                     ; preds = %890
  %907 = fmul fast float %904, %78
  %908 = fptosi float %907 to i32
  %909 = fmul fast float %904, %79
  %910 = fptosi float %909 to i32
  %911 = call i32 @dx.op.binary.i32(i32 37, i32 1, i32 %908)  ; IMax(a,b)
  %912 = call i32 @dx.op.binary.i32(i32 37, i32 1, i32 %910)  ; IMax(a,b)
  %913 = sub i32 %77, %912
  %914 = or i32 %913, %76
  %915 = icmp slt i32 %914, 0
  %916 = fptosi float %72 to i32
  %917 = fptosi float %73 to i32
  %918 = icmp sge i32 %76, %916
  %919 = icmp sge i32 %913, %917
  %920 = or i1 %918, %919
  %921 = or i1 %915, %920
  br i1 %921, label %935, label %922, !dx.controlflow.hints !52

; <label>:922                                     ; preds = %906
  %923 = lshr i32 %913, 2
  %924 = mul i32 %97, %923
  %925 = add i32 %115, %924
  %926 = shl i32 %925, 2
  %927 = shl i32 %913, 3
  %928 = and i32 %927, 24
  %929 = or i32 %928, %106
  %930 = shl i32 1, %929
  %931 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %926, i32 undef)  ; BufferLoad(srv,index,wot)
  %932 = extractvalue %dx.types.ResRet.i32 %931, 0
  %933 = and i32 %932, %930
  %934 = icmp ne i32 %933, 0
  br label %935

; <label>:935                                     ; preds = %922, %906
  %936 = phi i1 [ %934, %922 ], [ false, %906 ]
  %937 = add i32 %912, %77
  %938 = or i32 %937, %76
  %939 = icmp slt i32 %938, 0
  %940 = icmp sge i32 %937, %917
  %941 = or i1 %918, %940
  %942 = or i1 %939, %941
  br i1 %942, label %956, label %943, !dx.controlflow.hints !52

; <label>:943                                     ; preds = %935
  %944 = lshr i32 %937, 2
  %945 = mul i32 %97, %944
  %946 = add i32 %115, %945
  %947 = shl i32 %946, 2
  %948 = shl i32 %937, 3
  %949 = and i32 %948, 24
  %950 = or i32 %949, %106
  %951 = shl i32 1, %950
  %952 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %947, i32 undef)  ; BufferLoad(srv,index,wot)
  %953 = extractvalue %dx.types.ResRet.i32 %952, 0
  %954 = and i32 %953, %951
  %955 = icmp ne i32 %954, 0
  br label %956

; <label>:956                                     ; preds = %943, %935
  %957 = phi i1 [ %955, %943 ], [ false, %935 ]
  %958 = and i1 %936, %957
  %959 = sub i32 %76, %911
  %960 = or i32 %959, %77
  %961 = icmp slt i32 %960, 0
  %962 = icmp sge i32 %959, %916
  %963 = icmp sge i32 %77, %917
  %964 = or i1 %962, %963
  %965 = or i1 %961, %964
  br i1 %965, label %979, label %966, !dx.controlflow.hints !52

; <label>:966                                     ; preds = %956
  %967 = lshr i32 %959, 3
  %968 = add i32 %94, %967
  %969 = add i32 %968, %113
  %970 = add i32 %969, %98
  %971 = shl i32 %970, 2
  %972 = and i32 %959, 7
  %973 = or i32 %972, %105
  %974 = shl i32 1, %973
  %975 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %971, i32 undef)  ; BufferLoad(srv,index,wot)
  %976 = extractvalue %dx.types.ResRet.i32 %975, 0
  %977 = and i32 %976, %974
  %978 = icmp ne i32 %977, 0
  br label %979

; <label>:979                                     ; preds = %966, %956
  %980 = phi i1 [ %978, %966 ], [ false, %956 ]
  %981 = and i1 %958, %980
  %982 = add i32 %911, %76
  %983 = or i32 %982, %77
  %984 = icmp slt i32 %983, 0
  %985 = icmp sge i32 %982, %916
  %986 = or i1 %985, %963
  %987 = or i1 %984, %986
  br i1 %987, label %1001, label %988, !dx.controlflow.hints !52

; <label>:988                                     ; preds = %979
  %989 = lshr i32 %982, 3
  %990 = add i32 %94, %989
  %991 = add i32 %990, %113
  %992 = add i32 %991, %98
  %993 = shl i32 %992, 2
  %994 = and i32 %982, 7
  %995 = or i32 %994, %105
  %996 = shl i32 1, %995
  %997 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %993, i32 undef)  ; BufferLoad(srv,index,wot)
  %998 = extractvalue %dx.types.ResRet.i32 %997, 0
  %999 = and i32 %998, %996
  %1000 = icmp ne i32 %999, 0
  br label %1001

; <label>:1001                                    ; preds = %988, %979
  %1002 = phi i1 [ %1000, %988 ], [ false, %979 ]
  %1003 = and i1 %981, %1002
  %1004 = xor i1 %1003, true
  br label %1005

; <label>:1005                                    ; preds = %1001, %890
  %1006 = phi i1 [ %1004, %1001 ], [ false, %890 ]
  br i1 %1006, label %5671, label %1007, !dx.controlflow.hints !53

; <label>:1007                                    ; preds = %1005
  %1008 = select i1 %129, i1 %91, i1 %88
  %1009 = select i1 %1008, float %895, float %899
  %1010 = select i1 %1008, float %896, float %900
  %1011 = select i1 %1008, float %897, float %901
  %1012 = select i1 %1008, float %898, float %902
  %1013 = fmul fast float %1009, %891
  %1014 = fmul fast float %1013, %903
  %1015 = fmul fast float %1010, %892
  %1016 = fmul fast float %1015, %903
  %1017 = fmul fast float %1011, %893
  %1018 = fmul fast float %1017, %903
  %1019 = fmul fast float %1012, %894
  %1020 = fmul fast float %1019, %903
  br label %5671

; <label>:1021                                    ; preds = %634
  %1022 = or i32 %676, %128
  %1023 = icmp eq i32 %1022, 0
  br i1 %1023, label %5671, label %1024, !dx.controlflow.hints !54

; <label>:1024                                    ; preds = %1021
  %1025 = and i32 %674, 511
  %1026 = mul nuw nsw i32 %1025, 20
  %1027 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %1026, i32 undef)  ; BufferLoad(srv,index,wot)
  %1028 = extractvalue %dx.types.ResRet.i32 %1027, 0
  %1029 = and i32 %1028, 255
  %1030 = uitofp i32 %1029 to float
  %1031 = lshr i32 %1028, 8
  %1032 = and i32 %1031, 255
  %1033 = uitofp i32 %1032 to float
  %1034 = lshr i32 %1028, 16
  %1035 = and i32 %1034, 255
  %1036 = uitofp i32 %1035 to float
  %1037 = lshr i32 %1028, 24
  %1038 = uitofp i32 %1037 to float
  %1039 = fmul fast float %1030, 0x3F70101020000000
  %1040 = fmul fast float %1033, 0x3F70101020000000
  %1041 = fmul fast float %1036, 0x3F70101020000000
  %1042 = fmul fast float %1038, 0x3F70101020000000
  %1043 = lshr i32 %674, 5
  %1044 = and i32 %1043, 1008
  %1045 = or i32 %1044, 8
  %1046 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %1045, i32 undef)  ; BufferLoad(srv,index,wot)
  %1047 = extractvalue %dx.types.ResRet.f32 %1046, 0
  %1048 = or i32 %1044, 12
  %1049 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %1048, i32 undef)  ; BufferLoad(srv,index,wot)
  %1050 = extractvalue %dx.types.ResRet.f32 %1049, 0
  %1051 = or i32 %1044, 4
  %1052 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %1051, i32 undef)  ; BufferLoad(srv,index,wot)
  %1053 = extractvalue %dx.types.ResRet.i32 %1052, 0
  %1054 = lshr i32 %1053, 16
  %1055 = and i32 %1054, 254
  %1056 = uitofp i32 %1055 to float
  %1057 = lshr i32 %1053, 24
  %1058 = and i32 %1057, 254
  %1059 = uitofp i32 %1058 to float
  %1060 = add nuw nsw i32 %1026, 16
  %1061 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %1060, i32 undef)  ; BufferLoad(srv,index,wot)
  %1062 = extractvalue %dx.types.ResRet.f32 %1061, 0
  %1063 = fsub fast float %1050, %1047
  %1064 = fmul fast float %1063, 0x3FB99999A0000000
  %1065 = fsub fast float %1062, %1047
  %1066 = fdiv fast float %1065, %1064
  %1067 = call float @dx.op.unary.f32(i32 7, float %1066)  ; Saturate(value)
  %1068 = fmul fast float %1067, 2.000000e+00
  %1069 = fsub fast float 3.000000e+00, %1068
  %1070 = fsub fast float %1059, %1056
  %1071 = fmul fast float %1067, %1067
  %1072 = fmul fast float %1071, %1070
  %1073 = fmul fast float %1072, %1069
  %1074 = fadd fast float %1073, %1056
  %1075 = fmul fast float %1074, 0x3F70204080000000
  %1076 = fmul fast float %1063, 5.000000e-01
  %1077 = fsub fast float %1076, %1050
  %1078 = fadd fast float %1077, %1062
  %1079 = fdiv fast float %1078, %1076
  %1080 = call float @dx.op.unary.f32(i32 7, float %1079)  ; Saturate(value)
  %1081 = fmul fast float %1080, 2.000000e+00
  %1082 = fsub fast float 3.000000e+00, %1081
  %1083 = fmul fast float %1080, %1080
  %1084 = fmul fast float %1083, %1082
  %1085 = fsub fast float 1.000000e+00, %1084
  %1086 = fmul fast float %1075, %1085
  %1087 = fadd fast float %1062, -1.280000e+02
  %1088 = fmul fast float %1087, 1.953125e-03
  %1089 = call float @dx.op.unary.f32(i32 7, float %1088)  ; Saturate(value)
  %1090 = fmul fast float %1089, 6.250000e-01
  %1091 = fsub fast float 2.500000e+00, %1090
  %1092 = fmul fast float %1091, %78
  %1093 = fmul fast float %1091, %79
  %1094 = lshr i32 %76, 1
  %1095 = lshr i32 %77, 1
  %1096 = and i32 %76, 1
  %1097 = shl i32 %77, 1
  %1098 = and i32 %1097, 2
  %1099 = or i32 %1098, %1096
  %1100 = getelementptr inbounds [4 x i32], [4 x i32]* %34, i32 0, i32 0
  store i32 %636, i32* %1100, align 4
  %1101 = getelementptr inbounds [4 x i32], [4 x i32]* %34, i32 0, i32 1
  store i32 %637, i32* %1101, align 4
  %1102 = getelementptr inbounds [4 x i32], [4 x i32]* %34, i32 0, i32 2
  store i32 %638, i32* %1102, align 4
  %1103 = getelementptr inbounds [4 x i32], [4 x i32]* %34, i32 0, i32 3
  store i32 %639, i32* %1103, align 4
  %1104 = getelementptr [4 x i32], [4 x i32]* %34, i32 0, i32 %1099
  %1105 = load i32, i32* %1104, align 4, !tbaa !43
  %1106 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %11, i32 %1105, i32 %1094, i32 %1095, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1107 = extractvalue %dx.types.ResRet.i32 %1106, 0
  %1108 = lshr i32 %1107, 8
  %1109 = and i32 %1107, 255
  %1110 = and i32 %1108, 255
  %1111 = uitofp i32 %1109 to float
  %1112 = uitofp i32 %1110 to float
  %1113 = fmul fast float %1111, 0x3F80101020000000
  %1114 = fmul fast float %1112, 0x3F80101020000000
  %1115 = fadd fast float %1113, -1.000000e+00
  %1116 = fadd fast float %1114, -1.000000e+00
  %1117 = call float @dx.op.unary.f32(i32 6, float %1115)  ; FAbs(value)
  %1118 = fsub fast float 1.000000e+00, %1117
  %1119 = call float @dx.op.unary.f32(i32 6, float %1116)  ; FAbs(value)
  %1120 = fsub fast float %1118, %1119
  %1121 = fsub fast float -0.000000e+00, %1120
  %1122 = call float @dx.op.binary.f32(i32 35, float %1121, float 0.000000e+00)  ; FMax(a,b)
  %1123 = fcmp fast ogt float %1115, 0.000000e+00
  %1124 = fsub fast float -0.000000e+00, %1122
  %1125 = select i1 %1123, float %1124, float %1122
  %1126 = fadd fast float %1125, %1115
  %1127 = fcmp fast ogt float %1116, 0.000000e+00
  %1128 = select i1 %1127, float %1124, float %1122
  %1129 = fadd fast float %1128, %1116
  %1130 = call float @dx.op.dot3.f32(i32 55, float %1126, float %1129, float %1120, float %1126, float %1129, float %1120)  ; Dot3(ax,ay,az,bx,by,bz)
  %1131 = call float @dx.op.unary.f32(i32 25, float %1130)  ; Rsqrt(value)
  %1132 = fmul fast float %1131, %1120
  %1133 = add i32 %77, -1
  %1134 = lshr i32 %1133, 1
  %1135 = shl i32 %1133, 1
  %1136 = and i32 %1135, 2
  %1137 = or i32 %1136, %1096
  %1138 = getelementptr inbounds [4 x i32], [4 x i32]* %33, i32 0, i32 0
  store i32 %636, i32* %1138, align 4
  %1139 = getelementptr inbounds [4 x i32], [4 x i32]* %33, i32 0, i32 1
  store i32 %637, i32* %1139, align 4
  %1140 = getelementptr inbounds [4 x i32], [4 x i32]* %33, i32 0, i32 2
  store i32 %638, i32* %1140, align 4
  %1141 = getelementptr inbounds [4 x i32], [4 x i32]* %33, i32 0, i32 3
  store i32 %639, i32* %1141, align 4
  %1142 = getelementptr [4 x i32], [4 x i32]* %33, i32 0, i32 %1137
  %1143 = load i32, i32* %1142, align 4, !tbaa !43
  %1144 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %11, i32 %1143, i32 %1094, i32 %1134, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1145 = extractvalue %dx.types.ResRet.i32 %1144, 0
  %1146 = lshr i32 %1145, 8
  %1147 = and i32 %1145, 255
  %1148 = and i32 %1146, 255
  %1149 = uitofp i32 %1147 to float
  %1150 = uitofp i32 %1148 to float
  %1151 = fmul fast float %1149, 0x3F80101020000000
  %1152 = fmul fast float %1150, 0x3F80101020000000
  %1153 = fadd fast float %1151, -1.000000e+00
  %1154 = fadd fast float %1152, -1.000000e+00
  %1155 = call float @dx.op.unary.f32(i32 6, float %1153)  ; FAbs(value)
  %1156 = fsub fast float 1.000000e+00, %1155
  %1157 = call float @dx.op.unary.f32(i32 6, float %1154)  ; FAbs(value)
  %1158 = fsub fast float %1156, %1157
  %1159 = fsub fast float -0.000000e+00, %1158
  %1160 = call float @dx.op.binary.f32(i32 35, float %1159, float 0.000000e+00)  ; FMax(a,b)
  %1161 = fcmp fast ogt float %1153, 0.000000e+00
  %1162 = fsub fast float -0.000000e+00, %1160
  %1163 = select i1 %1161, float %1162, float %1160
  %1164 = fadd fast float %1163, %1153
  %1165 = fcmp fast ogt float %1154, 0.000000e+00
  %1166 = select i1 %1165, float %1162, float %1160
  %1167 = fadd fast float %1166, %1154
  %1168 = call float @dx.op.dot3.f32(i32 55, float %1164, float %1167, float %1158, float %1164, float %1167, float %1158)  ; Dot3(ax,ay,az,bx,by,bz)
  %1169 = call float @dx.op.unary.f32(i32 25, float %1168)  ; Rsqrt(value)
  %1170 = fmul fast float %1164, %1169
  %1171 = fmul fast float %1167, %1169
  %1172 = fmul fast float %1169, %1158
  %1173 = add i32 %77, 1
  %1174 = lshr i32 %1173, 1
  %1175 = shl i32 %1173, 1
  %1176 = and i32 %1175, 2
  %1177 = or i32 %1176, %1096
  %1178 = getelementptr inbounds [4 x i32], [4 x i32]* %32, i32 0, i32 0
  store i32 %636, i32* %1178, align 4
  %1179 = getelementptr inbounds [4 x i32], [4 x i32]* %32, i32 0, i32 1
  store i32 %637, i32* %1179, align 4
  %1180 = getelementptr inbounds [4 x i32], [4 x i32]* %32, i32 0, i32 2
  store i32 %638, i32* %1180, align 4
  %1181 = getelementptr inbounds [4 x i32], [4 x i32]* %32, i32 0, i32 3
  store i32 %639, i32* %1181, align 4
  %1182 = getelementptr [4 x i32], [4 x i32]* %32, i32 0, i32 %1177
  %1183 = load i32, i32* %1182, align 4, !tbaa !43
  %1184 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %11, i32 %1183, i32 %1094, i32 %1174, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1185 = extractvalue %dx.types.ResRet.i32 %1184, 0
  %1186 = lshr i32 %1185, 8
  %1187 = and i32 %1185, 255
  %1188 = and i32 %1186, 255
  %1189 = uitofp i32 %1187 to float
  %1190 = uitofp i32 %1188 to float
  %1191 = fmul fast float %1189, 0x3F80101020000000
  %1192 = fmul fast float %1190, 0x3F80101020000000
  %1193 = fadd fast float %1191, -1.000000e+00
  %1194 = fadd fast float %1192, -1.000000e+00
  %1195 = call float @dx.op.unary.f32(i32 6, float %1193)  ; FAbs(value)
  %1196 = fsub fast float 1.000000e+00, %1195
  %1197 = call float @dx.op.unary.f32(i32 6, float %1194)  ; FAbs(value)
  %1198 = fsub fast float %1196, %1197
  %1199 = fsub fast float -0.000000e+00, %1198
  %1200 = call float @dx.op.binary.f32(i32 35, float %1199, float 0.000000e+00)  ; FMax(a,b)
  %1201 = fcmp fast ogt float %1193, 0.000000e+00
  %1202 = fsub fast float -0.000000e+00, %1200
  %1203 = select i1 %1201, float %1202, float %1200
  %1204 = fadd fast float %1203, %1193
  %1205 = fcmp fast ogt float %1194, 0.000000e+00
  %1206 = select i1 %1205, float %1202, float %1200
  %1207 = fadd fast float %1206, %1194
  %1208 = call float @dx.op.dot3.f32(i32 55, float %1204, float %1207, float %1198, float %1204, float %1207, float %1198)  ; Dot3(ax,ay,az,bx,by,bz)
  %1209 = call float @dx.op.unary.f32(i32 25, float %1208)  ; Rsqrt(value)
  %1210 = fmul fast float %1204, %1209
  %1211 = fmul fast float %1207, %1209
  %1212 = fmul fast float %1209, %1198
  %1213 = add i32 %76, -1
  %1214 = lshr i32 %1213, 1
  %1215 = and i32 %1213, 1
  %1216 = or i32 %1098, %1215
  %1217 = getelementptr inbounds [4 x i32], [4 x i32]* %31, i32 0, i32 0
  store i32 %636, i32* %1217, align 4
  %1218 = getelementptr inbounds [4 x i32], [4 x i32]* %31, i32 0, i32 1
  store i32 %637, i32* %1218, align 4
  %1219 = getelementptr inbounds [4 x i32], [4 x i32]* %31, i32 0, i32 2
  store i32 %638, i32* %1219, align 4
  %1220 = getelementptr inbounds [4 x i32], [4 x i32]* %31, i32 0, i32 3
  store i32 %639, i32* %1220, align 4
  %1221 = getelementptr [4 x i32], [4 x i32]* %31, i32 0, i32 %1216
  %1222 = load i32, i32* %1221, align 4, !tbaa !43
  %1223 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %11, i32 %1222, i32 %1214, i32 %1095, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1224 = extractvalue %dx.types.ResRet.i32 %1223, 0
  %1225 = lshr i32 %1224, 8
  %1226 = and i32 %1224, 255
  %1227 = and i32 %1225, 255
  %1228 = uitofp i32 %1226 to float
  %1229 = uitofp i32 %1227 to float
  %1230 = fmul fast float %1228, 0x3F80101020000000
  %1231 = fmul fast float %1229, 0x3F80101020000000
  %1232 = fadd fast float %1230, -1.000000e+00
  %1233 = fadd fast float %1231, -1.000000e+00
  %1234 = call float @dx.op.unary.f32(i32 6, float %1232)  ; FAbs(value)
  %1235 = fsub fast float 1.000000e+00, %1234
  %1236 = call float @dx.op.unary.f32(i32 6, float %1233)  ; FAbs(value)
  %1237 = fsub fast float %1235, %1236
  %1238 = fsub fast float -0.000000e+00, %1237
  %1239 = call float @dx.op.binary.f32(i32 35, float %1238, float 0.000000e+00)  ; FMax(a,b)
  %1240 = fcmp fast ogt float %1232, 0.000000e+00
  %1241 = fsub fast float -0.000000e+00, %1239
  %1242 = select i1 %1240, float %1241, float %1239
  %1243 = fadd fast float %1242, %1232
  %1244 = fcmp fast ogt float %1233, 0.000000e+00
  %1245 = select i1 %1244, float %1241, float %1239
  %1246 = fadd fast float %1245, %1233
  %1247 = call float @dx.op.dot3.f32(i32 55, float %1243, float %1246, float %1237, float %1243, float %1246, float %1237)  ; Dot3(ax,ay,az,bx,by,bz)
  %1248 = call float @dx.op.unary.f32(i32 25, float %1247)  ; Rsqrt(value)
  %1249 = fmul fast float %1243, %1248
  %1250 = fmul fast float %1246, %1248
  %1251 = fmul fast float %1248, %1237
  %1252 = add i32 %76, 1
  %1253 = lshr i32 %1252, 1
  %1254 = and i32 %1252, 1
  %1255 = or i32 %1098, %1254
  %1256 = getelementptr inbounds [4 x i32], [4 x i32]* %30, i32 0, i32 0
  store i32 %636, i32* %1256, align 4
  %1257 = getelementptr inbounds [4 x i32], [4 x i32]* %30, i32 0, i32 1
  store i32 %637, i32* %1257, align 4
  %1258 = getelementptr inbounds [4 x i32], [4 x i32]* %30, i32 0, i32 2
  store i32 %638, i32* %1258, align 4
  %1259 = getelementptr inbounds [4 x i32], [4 x i32]* %30, i32 0, i32 3
  store i32 %639, i32* %1259, align 4
  %1260 = getelementptr [4 x i32], [4 x i32]* %30, i32 0, i32 %1255
  %1261 = load i32, i32* %1260, align 4, !tbaa !43
  %1262 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %11, i32 %1261, i32 %1253, i32 %1095, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1263 = extractvalue %dx.types.ResRet.i32 %1262, 0
  %1264 = lshr i32 %1263, 8
  %1265 = and i32 %1263, 255
  %1266 = and i32 %1264, 255
  %1267 = uitofp i32 %1265 to float
  %1268 = uitofp i32 %1266 to float
  %1269 = fmul fast float %1267, 0x3F80101020000000
  %1270 = fmul fast float %1268, 0x3F80101020000000
  %1271 = fadd fast float %1269, -1.000000e+00
  %1272 = fadd fast float %1270, -1.000000e+00
  %1273 = call float @dx.op.unary.f32(i32 6, float %1271)  ; FAbs(value)
  %1274 = fsub fast float 1.000000e+00, %1273
  %1275 = call float @dx.op.unary.f32(i32 6, float %1272)  ; FAbs(value)
  %1276 = fsub fast float %1274, %1275
  %1277 = fsub fast float -0.000000e+00, %1276
  %1278 = call float @dx.op.binary.f32(i32 35, float %1277, float 0.000000e+00)  ; FMax(a,b)
  %1279 = fcmp fast ogt float %1271, 0.000000e+00
  %1280 = fsub fast float -0.000000e+00, %1278
  %1281 = select i1 %1279, float %1280, float %1278
  %1282 = fadd fast float %1281, %1271
  %1283 = fcmp fast ogt float %1272, 0.000000e+00
  %1284 = select i1 %1283, float %1280, float %1278
  %1285 = fadd fast float %1284, %1272
  %1286 = call float @dx.op.dot3.f32(i32 55, float %1282, float %1285, float %1276, float %1282, float %1285, float %1276)  ; Dot3(ax,ay,az,bx,by,bz)
  %1287 = call float @dx.op.unary.f32(i32 25, float %1286)  ; Rsqrt(value)
  %1288 = fmul fast float %1282, %1287
  %1289 = fmul fast float %1285, %1287
  %1290 = fmul fast float %1287, %1276
  %1291 = add nuw nsw i32 %1026, 12
  %1292 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %1291, i32 undef)  ; BufferLoad(srv,index,wot)
  %1293 = extractvalue %dx.types.ResRet.i32 %1292, 0
  %1294 = lshr i32 %1293, 16
  %1295 = uitofp i32 %1294 to float
  %1296 = fmul fast float %1295, 0x3EF0002000000000
  %1297 = add nuw nsw i32 %1026, 8
  %1298 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %1297, i32 undef)  ; BufferLoad(srv,index,wot)
  %1299 = extractvalue %dx.types.ResRet.i32 %1298, 0
  %1300 = lshr i32 %1299, 16
  %1301 = uitofp i32 %1300 to float
  %1302 = fmul fast float %1301, 0x3EF0002000000000
  %1303 = fsub fast float %58, %1302
  %1304 = fdiv fast float %1303, %1296
  %1305 = fsub fast float %53, %1093
  %1306 = fmul fast float %56, %1305
  %1307 = call float @dx.op.unary.f32(i32 7, float %57)  ; Saturate(value)
  %1308 = call float @dx.op.unary.f32(i32 7, float %1306)  ; Saturate(value)
  %1309 = fmul fast float %72, %1307
  %1310 = fmul fast float %73, %1308
  %1311 = fadd fast float %1309, -5.000000e-01
  %1312 = fadd fast float %1310, -5.000000e-01
  %1313 = call float @dx.op.binary.f32(i32 35, float %1311, float 0.000000e+00)  ; FMax(a,b)
  %1314 = call float @dx.op.binary.f32(i32 35, float %1312, float 0.000000e+00)  ; FMax(a,b)
  %1315 = call float @dx.op.binary.f32(i32 36, float %1313, float %72)  ; FMin(a,b)
  %1316 = call float @dx.op.binary.f32(i32 36, float %1314, float %73)  ; FMin(a,b)
  %1317 = fptoui float %1315 to i32
  %1318 = fptoui float %1316 to i32
  %1319 = lshr i32 %1317, 1
  %1320 = lshr i32 %1318, 1
  %1321 = and i32 %1317, 1
  %1322 = shl i32 %1318, 1
  %1323 = and i32 %1322, 2
  %1324 = or i32 %1323, %1321
  %1325 = getelementptr inbounds [4 x i32], [4 x i32]* %29, i32 0, i32 0
  store i32 %636, i32* %1325, align 4
  %1326 = getelementptr inbounds [4 x i32], [4 x i32]* %29, i32 0, i32 1
  store i32 %637, i32* %1326, align 4
  %1327 = getelementptr inbounds [4 x i32], [4 x i32]* %29, i32 0, i32 2
  store i32 %638, i32* %1327, align 4
  %1328 = getelementptr inbounds [4 x i32], [4 x i32]* %29, i32 0, i32 3
  store i32 %639, i32* %1328, align 4
  %1329 = getelementptr [4 x i32], [4 x i32]* %29, i32 0, i32 %1324
  %1330 = load i32, i32* %1329, align 4, !tbaa !43
  %1331 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %12, i32 %1330, i32 %1319, i32 %1320, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1332 = extractvalue %dx.types.ResRet.f32 %1331, 0
  %1333 = extractvalue %dx.types.ResRet.f32 %1331, 1
  %1334 = fadd fast float %1333, 0x3F40000000000000
  %1335 = fmul fast float %1334, 2.550000e+02
  %1336 = fadd fast float %1332, 0x3F40000000000000
  %1337 = fmul fast float %1336, 2.550000e+02
  %1338 = fptoui float %1335 to i32
  %1339 = shl i32 %1338, 8
  %1340 = fptoui float %1337 to i32
  %1341 = and i32 %1340, 255
  %1342 = or i32 %1339, %1341
  %1343 = fadd fast float %1093, %53
  %1344 = fmul fast float %56, %1343
  %1345 = call float @dx.op.unary.f32(i32 7, float %1344)  ; Saturate(value)
  %1346 = fmul fast float %73, %1345
  %1347 = fadd fast float %1346, -5.000000e-01
  %1348 = call float @dx.op.binary.f32(i32 35, float %1347, float 0.000000e+00)  ; FMax(a,b)
  %1349 = call float @dx.op.binary.f32(i32 36, float %1348, float %73)  ; FMin(a,b)
  %1350 = fptoui float %1349 to i32
  %1351 = lshr i32 %1350, 1
  %1352 = shl i32 %1350, 1
  %1353 = and i32 %1352, 2
  %1354 = or i32 %1353, %1321
  %1355 = getelementptr inbounds [4 x i32], [4 x i32]* %28, i32 0, i32 0
  store i32 %636, i32* %1355, align 4
  %1356 = getelementptr inbounds [4 x i32], [4 x i32]* %28, i32 0, i32 1
  store i32 %637, i32* %1356, align 4
  %1357 = getelementptr inbounds [4 x i32], [4 x i32]* %28, i32 0, i32 2
  store i32 %638, i32* %1357, align 4
  %1358 = getelementptr inbounds [4 x i32], [4 x i32]* %28, i32 0, i32 3
  store i32 %639, i32* %1358, align 4
  %1359 = getelementptr [4 x i32], [4 x i32]* %28, i32 0, i32 %1354
  %1360 = load i32, i32* %1359, align 4, !tbaa !43
  %1361 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %12, i32 %1360, i32 %1319, i32 %1351, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1362 = extractvalue %dx.types.ResRet.f32 %1361, 0
  %1363 = extractvalue %dx.types.ResRet.f32 %1361, 1
  %1364 = fadd fast float %1363, 0x3F40000000000000
  %1365 = fmul fast float %1364, 2.550000e+02
  %1366 = fadd fast float %1362, 0x3F40000000000000
  %1367 = fmul fast float %1366, 2.550000e+02
  %1368 = fptoui float %1365 to i32
  %1369 = shl i32 %1368, 8
  %1370 = fptoui float %1367 to i32
  %1371 = and i32 %1370, 255
  %1372 = or i32 %1369, %1371
  %1373 = fsub fast float %52, %1092
  %1374 = fmul fast float %55, %1373
  %1375 = call float @dx.op.unary.f32(i32 7, float %1374)  ; Saturate(value)
  %1376 = call float @dx.op.unary.f32(i32 7, float %58)  ; Saturate(value)
  %1377 = fmul fast float %72, %1375
  %1378 = fmul fast float %73, %1376
  %1379 = fadd fast float %1377, -5.000000e-01
  %1380 = fadd fast float %1378, -5.000000e-01
  %1381 = call float @dx.op.binary.f32(i32 35, float %1379, float 0.000000e+00)  ; FMax(a,b)
  %1382 = call float @dx.op.binary.f32(i32 35, float %1380, float 0.000000e+00)  ; FMax(a,b)
  %1383 = call float @dx.op.binary.f32(i32 36, float %1381, float %72)  ; FMin(a,b)
  %1384 = call float @dx.op.binary.f32(i32 36, float %1382, float %73)  ; FMin(a,b)
  %1385 = fptoui float %1383 to i32
  %1386 = fptoui float %1384 to i32
  %1387 = lshr i32 %1385, 1
  %1388 = lshr i32 %1386, 1
  %1389 = and i32 %1385, 1
  %1390 = shl i32 %1386, 1
  %1391 = and i32 %1390, 2
  %1392 = or i32 %1391, %1389
  %1393 = getelementptr inbounds [4 x i32], [4 x i32]* %27, i32 0, i32 0
  store i32 %636, i32* %1393, align 4
  %1394 = getelementptr inbounds [4 x i32], [4 x i32]* %27, i32 0, i32 1
  store i32 %637, i32* %1394, align 4
  %1395 = getelementptr inbounds [4 x i32], [4 x i32]* %27, i32 0, i32 2
  store i32 %638, i32* %1395, align 4
  %1396 = getelementptr inbounds [4 x i32], [4 x i32]* %27, i32 0, i32 3
  store i32 %639, i32* %1396, align 4
  %1397 = getelementptr [4 x i32], [4 x i32]* %27, i32 0, i32 %1392
  %1398 = load i32, i32* %1397, align 4, !tbaa !43
  %1399 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %12, i32 %1398, i32 %1387, i32 %1388, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1400 = extractvalue %dx.types.ResRet.f32 %1399, 0
  %1401 = extractvalue %dx.types.ResRet.f32 %1399, 1
  %1402 = fadd fast float %1401, 0x3F40000000000000
  %1403 = fmul fast float %1402, 2.550000e+02
  %1404 = fadd fast float %1400, 0x3F40000000000000
  %1405 = fmul fast float %1404, 2.550000e+02
  %1406 = fptoui float %1403 to i32
  %1407 = shl i32 %1406, 8
  %1408 = fptoui float %1405 to i32
  %1409 = and i32 %1408, 255
  %1410 = or i32 %1407, %1409
  %1411 = fadd fast float %1092, %52
  %1412 = fmul fast float %55, %1411
  %1413 = call float @dx.op.unary.f32(i32 7, float %1412)  ; Saturate(value)
  %1414 = fmul fast float %72, %1413
  %1415 = fadd fast float %1414, -5.000000e-01
  %1416 = call float @dx.op.binary.f32(i32 35, float %1415, float 0.000000e+00)  ; FMax(a,b)
  %1417 = call float @dx.op.binary.f32(i32 36, float %1416, float %72)  ; FMin(a,b)
  %1418 = fptoui float %1417 to i32
  %1419 = lshr i32 %1418, 1
  %1420 = and i32 %1418, 1
  %1421 = or i32 %1391, %1420
  %1422 = getelementptr inbounds [4 x i32], [4 x i32]* %26, i32 0, i32 0
  store i32 %636, i32* %1422, align 4
  %1423 = getelementptr inbounds [4 x i32], [4 x i32]* %26, i32 0, i32 1
  store i32 %637, i32* %1423, align 4
  %1424 = getelementptr inbounds [4 x i32], [4 x i32]* %26, i32 0, i32 2
  store i32 %638, i32* %1424, align 4
  %1425 = getelementptr inbounds [4 x i32], [4 x i32]* %26, i32 0, i32 3
  store i32 %639, i32* %1425, align 4
  %1426 = getelementptr [4 x i32], [4 x i32]* %26, i32 0, i32 %1421
  %1427 = load i32, i32* %1426, align 4, !tbaa !43
  %1428 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %12, i32 %1427, i32 %1419, i32 %1388, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1429 = extractvalue %dx.types.ResRet.f32 %1428, 0
  %1430 = extractvalue %dx.types.ResRet.f32 %1428, 1
  %1431 = fadd fast float %1430, 0x3F40000000000000
  %1432 = fmul fast float %1431, 2.550000e+02
  %1433 = fadd fast float %1429, 0x3F40000000000000
  %1434 = fmul fast float %1433, 2.550000e+02
  %1435 = fptoui float %1432 to i32
  %1436 = shl i32 %1435, 8
  %1437 = fptoui float %1434 to i32
  %1438 = and i32 %1437, 255
  %1439 = or i32 %1436, %1438
  %1440 = icmp eq i32 %671, %1342
  %1441 = zext i1 %1440 to i32
  %1442 = icmp eq i32 %671, %1372
  %1443 = zext i1 %1442 to i32
  %1444 = add nuw nsw i32 %1443, %1441
  %1445 = icmp eq i32 %671, %1410
  %1446 = zext i1 %1445 to i32
  %1447 = add nuw nsw i32 %1444, %1446
  %1448 = icmp eq i32 %671, %1439
  %1449 = zext i1 %1448 to i32
  %1450 = add nuw nsw i32 %1447, %1449
  %1451 = icmp ne i32 %1450, 4
  %1452 = call float @dx.op.dot3.f32(i32 55, float %1170, float %1171, float %1172, float %1210, float %1211, float %1212)  ; Dot3(ax,ay,az,bx,by,bz)
  %1453 = call float @dx.op.binary.f32(i32 36, float 1.000000e+00, float %1452)  ; FMin(a,b)
  %1454 = call float @dx.op.dot3.f32(i32 55, float %1170, float %1171, float %1172, float %1249, float %1250, float %1251)  ; Dot3(ax,ay,az,bx,by,bz)
  %1455 = call float @dx.op.binary.f32(i32 36, float %1453, float %1454)  ; FMin(a,b)
  %1456 = call float @dx.op.dot3.f32(i32 55, float %1170, float %1171, float %1172, float %1288, float %1289, float %1290)  ; Dot3(ax,ay,az,bx,by,bz)
  %1457 = call float @dx.op.binary.f32(i32 36, float %1455, float %1456)  ; FMin(a,b)
  %1458 = call float @dx.op.dot3.f32(i32 55, float %1210, float %1211, float %1212, float %1249, float %1250, float %1251)  ; Dot3(ax,ay,az,bx,by,bz)
  %1459 = call float @dx.op.binary.f32(i32 36, float %1457, float %1458)  ; FMin(a,b)
  %1460 = call float @dx.op.dot3.f32(i32 55, float %1210, float %1211, float %1212, float %1288, float %1289, float %1290)  ; Dot3(ax,ay,az,bx,by,bz)
  %1461 = call float @dx.op.binary.f32(i32 36, float %1459, float %1460)  ; FMin(a,b)
  %1462 = call float @dx.op.dot3.f32(i32 55, float %1249, float %1250, float %1251, float %1288, float %1289, float %1290)  ; Dot3(ax,ay,az,bx,by,bz)
  %1463 = call float @dx.op.binary.f32(i32 36, float %1461, float %1462)  ; FMin(a,b)
  %1464 = call float @dx.op.unary.f32(i32 7, float %1463)  ; Saturate(value)
  %1465 = fsub fast float 1.000000e+00, %1464
  %1466 = call float @dx.op.unary.f32(i32 7, float %1465)  ; Saturate(value)
  %1467 = fmul fast float %1466, 2.000000e+00
  %1468 = fsub fast float 3.000000e+00, %1467
  %1469 = call float @dx.op.unary.f32(i32 7, float %1132)  ; Saturate(value)
  %1470 = fmul fast float %1469, 2.500000e+00
  %1471 = call float @dx.op.unary.f32(i32 7, float %1470)  ; Saturate(value)
  %1472 = fmul fast float %1471, 2.000000e+00
  %1473 = fsub fast float 3.000000e+00, %1472
  %1474 = fadd fast float %1469, 0xBFD99999A0000000
  %1475 = fmul fast float %1474, -2.500000e+00
  %1476 = call float @dx.op.unary.f32(i32 7, float %1475)  ; Saturate(value)
  %1477 = fmul fast float %1476, 2.000000e+00
  %1478 = fsub fast float 3.000000e+00, %1477
  %1479 = fmul float %1471, %1476
  %1480 = fmul float %1479, %1479
  %1481 = fmul fast float %1478, %1473
  %1482 = fmul fast float %1481, %1480
  %1483 = fmul fast float %1466, %1466
  %1484 = fmul fast float %1483, %1468
  %1485 = fadd fast float %1482, %1484
  %1486 = fmul fast float %1485, 2.000000e+00
  %1487 = call float @dx.op.unary.f32(i32 7, float %1486)  ; Saturate(value)
  %1488 = fmul fast float %1487, 1.500000e+00
  %1489 = fmul fast float %1488, %1039
  %1490 = fmul fast float %1488, %1040
  %1491 = fmul fast float %1488, %1041
  %1492 = icmp eq i32 %671, 0
  %1493 = or i1 %1492, %1451
  %1494 = select i1 %1492, float 0.000000e+00, float 1.000000e+00
  %1495 = select i1 %1493, float %1489, float 1.000000e+00
  %1496 = select i1 %1493, float %1490, float 1.000000e+00
  %1497 = select i1 %1493, float %1491, float 1.000000e+00
  %1498 = select i1 %1493, float %1042, float %1488
  %1499 = select i1 %1493, float %1494, float 0.000000e+00
  %1500 = fmul fast float %81, 5.400000e+02
  %1501 = fmul fast float %83, 5.400000e+02
  %1502 = fmul fast float %1500, %57
  %1503 = fmul fast float %1501, %58
  %1504 = call float @dx.op.unary.f32(i32 27, float %1502)  ; Round_ni(value)
  %1505 = call float @dx.op.unary.f32(i32 27, float %1503)  ; Round_ni(value)
  %1506 = fadd fast float %1505, %1504
  %1507 = frem fast float %1506, 2.000000e+00
  %1508 = call float @dx.op.unary.f32(i32 22, float %1502)  ; Frc(value)
  %1509 = call float @dx.op.unary.f32(i32 22, float %1503)  ; Frc(value)
  %1510 = fadd fast float %1508, -5.000000e-01
  %1511 = fadd fast float %1509, -5.000000e-01
  %1512 = fmul fast float %1510, 2.000000e+00
  %1513 = fmul fast float %1511, 2.000000e+00
  %1514 = call float @dx.op.dot2.f32(i32 54, float %1512, float %1513, float %1512, float %1513)  ; Dot2(ax,ay,bx,by)
  %1515 = call float @dx.op.unary.f32(i32 24, float %1514)  ; Sqrt(value)
  %1516 = fsub fast float 1.000000e+00, %1515
  %1517 = fmul fast float %1516, 2.000000e+00
  %1518 = call float @dx.op.unary.f32(i32 7, float %1517)  ; Saturate(value)
  %1519 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %1520 = extractvalue %dx.types.CBufRet.f32 %1519, 0
  %1521 = extractvalue %dx.types.CBufRet.f32 %1519, 1
  %1522 = fmul fast float %1521, %1520
  %1523 = fmul fast float %1501, %1500
  %1524 = fdiv fast float %1522, %1523
  %1525 = fptoui float %1524 to i32
  %1526 = icmp ult i32 %1525, 4
  %1527 = select i1 %1526, float 1.000000e+00, float %1518
  %1528 = fmul fast float %1495, %1507
  %1529 = fmul fast float %1496, %1507
  %1530 = fmul fast float %1497, %1507
  %1531 = fmul fast float %1507, %1498
  %1532 = fmul fast float %1528, %1527
  %1533 = fmul fast float %1529, %1527
  %1534 = fmul fast float %1530, %1527
  %1535 = fmul fast float %1531, %1527
  %1536 = fsub fast float 1.000000e+00, %1304
  %1537 = fmul fast float %1536, %1536
  %1538 = fmul fast float %1537, 3.000000e+00
  %1539 = fadd fast float %1538, 2.500000e-01
  %1540 = call float @dx.op.unary.f32(i32 7, float %1539)  ; Saturate(value)
  %1541 = fmul fast float %1507, 0x3FC3333340000000
  %1542 = fadd fast float %1541, 7.500000e-01
  %1543 = fmul fast float %1542, %1499
  %1544 = call float @dx.op.binary.f32(i32 35, float %1532, float %1543)  ; FMax(a,b)
  %1545 = call float @dx.op.binary.f32(i32 35, float %1533, float %1543)  ; FMax(a,b)
  %1546 = call float @dx.op.binary.f32(i32 35, float %1534, float %1543)  ; FMax(a,b)
  %1547 = fmul fast float %1540, %1499
  %1548 = call float @dx.op.binary.f32(i32 35, float %1535, float %1547)  ; FMax(a,b)
  %1549 = fmul fast float %1086, %1039
  %1550 = fmul fast float %1549, %1544
  %1551 = fmul fast float %1086, %1040
  %1552 = fmul fast float %1551, %1545
  %1553 = fmul fast float %1086, %1041
  %1554 = fmul fast float %1553, %1546
  %1555 = fmul fast float %1540, %1086
  %1556 = fmul fast float %1555, %1548
  %1557 = call float @dx.op.unary.f32(i32 7, float %1550)  ; Saturate(value)
  %1558 = call float @dx.op.unary.f32(i32 7, float %1552)  ; Saturate(value)
  %1559 = call float @dx.op.unary.f32(i32 7, float %1554)  ; Saturate(value)
  %1560 = call float @dx.op.unary.f32(i32 7, float %1556)  ; Saturate(value)
  %1561 = fmul fast float %1557, 0x3FF3333340000000
  %1562 = fmul fast float %1558, 0x3FF3333340000000
  %1563 = fmul fast float %1559, 0x3FF3333340000000
  %1564 = fmul fast float %1560, 0x3FF3333340000000
  br label %5671

; <label>:1565                                    ; preds = %634
  %1566 = and i32 %674, 511
  %1567 = mul nuw nsw i32 %1566, 20
  %1568 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %1567, i32 undef)  ; BufferLoad(srv,index,wot)
  %1569 = extractvalue %dx.types.ResRet.i32 %1568, 0
  %1570 = lshr i32 %1569, 24
  %1571 = uitofp i32 %1570 to float
  %1572 = fmul fast float %1571, 0x3F70101020000000
  %1573 = fsub fast float 1.000000e+00, %1572
  %1574 = add nuw nsw i32 %1567, 12
  %1575 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %1574, i32 undef)  ; BufferLoad(srv,index,wot)
  %1576 = extractvalue %dx.types.ResRet.i32 %1575, 0
  %1577 = and i32 %1576, 65535
  %1578 = uitofp i32 %1577 to float
  %1579 = fmul fast float %1578, 0x3EF0002000000000
  %1580 = lshr i32 %1576, 16
  %1581 = uitofp i32 %1580 to float
  %1582 = fmul fast float %1581, 0x3EF0002000000000
  %1583 = add nuw nsw i32 %1567, 8
  %1584 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %1583, i32 undef)  ; BufferLoad(srv,index,wot)
  %1585 = extractvalue %dx.types.ResRet.i32 %1584, 0
  %1586 = and i32 %1585, 65535
  %1587 = uitofp i32 %1586 to float
  %1588 = fmul fast float %1587, 0x3EF0002000000000
  %1589 = lshr i32 %1585, 16
  %1590 = uitofp i32 %1589 to float
  %1591 = fmul fast float %1590, 0x3EF0002000000000
  %1592 = fsub fast float %57, %1588
  %1593 = fdiv fast float %1592, %1579
  %1594 = fsub fast float %58, %1591
  %1595 = fdiv fast float %1594, %1582
  %1596 = add nuw nsw i32 %1567, 16
  %1597 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %1596, i32 undef)  ; BufferLoad(srv,index,wot)
  %1598 = extractvalue %dx.types.ResRet.f32 %1597, 0
  %1599 = fcmp fast olt float %1598, 1.000000e+01
  %1600 = uitofp i1 %1599 to float
  %1601 = fdiv fast float 2.400000e+02, %1598
  %1602 = call float @dx.op.unary.f32(i32 7, float %1601)  ; Saturate(value)
  %1603 = fdiv fast float 3.200000e+02, %1598
  %1604 = call float @dx.op.unary.f32(i32 7, float %1603)  ; Saturate(value)
  %1605 = fmul fast float %1604, 5.000000e-01
  %1606 = fadd fast float %1605, 2.500000e-01
  %1607 = fdiv fast float 3.200000e+01, %1606
  %1608 = select i1 %1599, float 3.200000e+01, float %1607
  %1609 = fmul fast float %1608, 1.600000e+01
  %1610 = fmul fast float %1608, 9.000000e+00
  %1611 = fmul fast float %1579, %1593
  %1612 = fmul fast float %1611, %1609
  %1613 = fmul fast float %1582, %1595
  %1614 = fmul fast float %1613, %1610
  %1615 = call float @dx.op.unary.f32(i32 29, float %1612)  ; Round_z(value)
  %1616 = call float @dx.op.unary.f32(i32 29, float %1614)  ; Round_z(value)
  %1617 = call float @dx.op.unary.f32(i32 7, float %1572)  ; Saturate(value)
  %1618 = fmul fast float %1617, 2.000000e+00
  %1619 = fsub fast float 3.000000e+00, %1618
  %1620 = fmul fast float %1602, 4.000000e+01
  %1621 = fmul fast float %1600, 1.000000e+02
  %1622 = fadd fast float %1621, %1620
  %1623 = fptoui float %1622 to i32
  %1624 = uitofp i32 %76 to float
  %1625 = uitofp i32 %77 to float
  %1626 = fptoui float %1624 to i32
  %1627 = fptoui float %1625 to i32
  %1628 = lshr i32 %1627, 2
  %1629 = mul i32 %97, %1628
  %1630 = lshr i32 %1626, 3
  %1631 = add i32 %94, %1630
  %1632 = add i32 %1631, %113
  %1633 = add i32 %1632, %1629
  %1634 = shl i32 %1633, 2
  %1635 = shl i32 %1627, 3
  %1636 = and i32 %1635, 24
  %1637 = and i32 %1626, 7
  %1638 = or i32 %1636, %1637
  %1639 = shl i32 1, %1638
  %1640 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %1634, i32 undef)  ; BufferLoad(srv,index,wot)
  %1641 = extractvalue %dx.types.ResRet.i32 %1640, 0
  %1642 = and i32 %1641, %1639
  %1643 = icmp ne i32 %1642, 0
  %1644 = icmp eq i32 %1623, 0
  br i1 %1644, label %1761, label %1645, !dx.controlflow.hints !55

; <label>:1645                                    ; preds = %1565
  %1646 = uitofp i32 %1623 to float
  %1647 = fmul fast float %78, 5.000000e-01
  %1648 = fmul fast float %1647, %1646
  %1649 = fmul fast float %79, 5.000000e-01
  %1650 = fmul fast float %1649, %1646
  %1651 = call float @dx.op.binary.f32(i32 35, float 5.000000e-01, float %1648)  ; FMax(a,b)
  %1652 = call float @dx.op.binary.f32(i32 35, float 5.000000e-01, float %1650)  ; FMax(a,b)
  br label %1653

; <label>:1653                                    ; preds = %1748, %1645
  %1654 = phi float [ 0.000000e+00, %1645 ], [ %1751, %1748 ]
  %1655 = phi i32 [ 0, %1645 ], [ %1752, %1748 ]
  %1656 = fmul fast float %57, 0x3FF280E1E0000000
  %1657 = fmul fast float %58, 0x3FF280E1E0000000
  %1658 = sitofp i32 %1655 to float
  %1659 = fmul fast float %1658, 0x3FB99999A0000000
  %1660 = fadd fast float %1659, %1656
  %1661 = fadd fast float %1659, %1657
  %1662 = fmul fast float %1660, 1.024000e+03
  %1663 = fmul fast float %1661, 1.024000e+03
  %1664 = fadd fast float %1662, -5.120000e+02
  %1665 = fadd fast float %1663, -5.120000e+02
  %1666 = fmul fast float %1660, 0x4081BEDF00000000
  %1667 = fadd fast float %1666, 0xC071BEDF00000000
  %1668 = call float @dx.op.unary.f32(i32 22, float %1667)  ; Frc(value)
  %1669 = fmul fast float %1664, %1668
  %1670 = fadd fast float %1669, %1665
  %1671 = fmul fast float %1661, 0x4073BEBE20000000
  %1672 = fadd fast float %1671, 0xC063BEBE20000000
  %1673 = call float @dx.op.unary.f32(i32 22, float %1672)  ; Frc(value)
  %1674 = fmul fast float %1665, %1673
  %1675 = fadd fast float %1674, %1664
  %1676 = fmul fast float %1670, %1675
  %1677 = call float @dx.op.unary.f32(i32 22, float %1676)  ; Frc(value)
  %1678 = fmul fast float %1677, 2.000000e+00
  %1679 = fadd fast float %1678, -1.000000e+00
  %1680 = fmul fast float %1679, %1651
  %1681 = fmul fast float %57, 0x3FEB681740000000
  %1682 = fmul fast float %58, 0x3FEB681740000000
  %1683 = fmul fast float %1658, 0x3FC99999A0000000
  %1684 = fadd fast float %1683, 1.250000e-01
  %1685 = fadd fast float %1684, %1681
  %1686 = fadd fast float %1684, %1682
  %1687 = fmul fast float %1685, 1.024000e+03
  %1688 = fmul fast float %1686, 1.024000e+03
  %1689 = fadd fast float %1687, -5.120000e+02
  %1690 = fadd fast float %1688, -5.120000e+02
  %1691 = fmul fast float %1685, 0x4081BEDF00000000
  %1692 = fadd fast float %1691, 0xC071BEDF00000000
  %1693 = call float @dx.op.unary.f32(i32 22, float %1692)  ; Frc(value)
  %1694 = fmul fast float %1689, %1693
  %1695 = fadd fast float %1694, %1690
  %1696 = fmul fast float %1686, 0x4073BEBE20000000
  %1697 = fadd fast float %1696, 0xC063BEBE20000000
  %1698 = call float @dx.op.unary.f32(i32 22, float %1697)  ; Frc(value)
  %1699 = fmul fast float %1690, %1698
  %1700 = fadd fast float %1699, %1689
  %1701 = fmul fast float %1695, %1700
  %1702 = call float @dx.op.unary.f32(i32 22, float %1701)  ; Frc(value)
  %1703 = fmul fast float %1702, 2.000000e+00
  %1704 = fadd fast float %1703, -1.000000e+00
  %1705 = fmul fast float %1704, %1652
  %1706 = fptosi float %1680 to i32
  %1707 = sitofp i32 %1706 to float
  %1708 = fadd fast float %1707, %1624
  %1709 = fptosi float %1708 to i32
  %1710 = fptosi float %1705 to i32
  %1711 = sitofp i32 %1710 to float
  %1712 = fadd fast float %1711, %1625
  %1713 = fptosi float %1712 to i32
  %1714 = or i32 %1713, %1709
  %1715 = icmp slt i32 %1714, 0
  %1716 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %1717 = extractvalue %dx.types.CBufRet.f32 %1716, 0
  %1718 = extractvalue %dx.types.CBufRet.f32 %1716, 1
  %1719 = fptosi float %1717 to i32
  %1720 = fptosi float %1718 to i32
  %1721 = icmp sge i32 %1709, %1719
  %1722 = icmp sge i32 %1713, %1720
  %1723 = or i1 %1721, %1722
  %1724 = or i1 %1715, %1723
  br i1 %1724, label %1748, label %1725, !dx.controlflow.hints !52

; <label>:1725                                    ; preds = %1653
  %1726 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %17, i32 51)  ; CBufferLoadLegacy(handle,regIndex)
  %1727 = extractvalue %dx.types.CBufRet.i32 %1726, 1
  %1728 = shl i32 %1727, 2
  %1729 = extractvalue %dx.types.CBufRet.i32 %1726, 3
  %1730 = shl i32 %1729, 1
  %1731 = lshr i32 %1713, 2
  %1732 = extractvalue %dx.types.CBufRet.i32 %1726, 2
  %1733 = mul i32 %1732, %1731
  %1734 = lshr i32 %1709, 3
  %1735 = add i32 %1728, %1734
  %1736 = add i32 %1735, %1730
  %1737 = add i32 %1736, %1733
  %1738 = shl i32 %1737, 2
  %1739 = shl i32 %1713, 3
  %1740 = and i32 %1739, 24
  %1741 = and i32 %1709, 7
  %1742 = or i32 %1740, %1741
  %1743 = shl i32 1, %1742
  %1744 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %1738, i32 undef)  ; BufferLoad(srv,index,wot)
  %1745 = extractvalue %dx.types.ResRet.i32 %1744, 0
  %1746 = and i32 %1745, %1743
  %1747 = icmp ne i32 %1746, 0
  br label %1748

; <label>:1748                                    ; preds = %1725, %1653
  %1749 = phi i1 [ %1747, %1725 ], [ false, %1653 ]
  %1750 = uitofp i1 %1749 to float
  %1751 = fadd fast float %1750, %1654
  %1752 = add nuw nsw i32 %1655, 1
  %1753 = icmp eq i32 %1752, 5
  br i1 %1753, label %1754, label %1653

; <label>:1754                                    ; preds = %1748
  %1755 = uitofp i1 %1643 to float
  %1756 = fmul fast float %1755, 0x3FC99999A0000000
  %1757 = fmul fast float %1756, %1751
  %1758 = fadd fast float %1757, -5.000000e-01
  %1759 = fmul fast float %1758, 2.000000e+00
  %1760 = call float @dx.op.unary.f32(i32 7, float %1759)  ; Saturate(value)
  br label %1761

; <label>:1761                                    ; preds = %1754, %1565
  %1762 = phi float [ %1760, %1754 ], [ 0.000000e+00, %1565 ]
  %1763 = fdiv fast float %1615, %1609
  %1764 = fdiv fast float %1616, %1610
  %1765 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1766 = extractvalue %dx.types.CBufRet.f32 %1765, 3
  %1767 = fmul fast float %1766, 0x3FE99999A0000000
  %1768 = fadd fast float %1767, %1763
  %1769 = fsub fast float %1764, %1767
  %1770 = call float @dx.op.unary.f32(i32 22, float %1768)  ; Frc(value)
  %1771 = call float @dx.op.unary.f32(i32 22, float %1769)  ; Frc(value)
  %1772 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %14, float %1770, float %1771, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1773 = extractvalue %dx.types.ResRet.f32 %1772, 0
  %1774 = fmul fast float %1773, 1.500000e+00
  %1775 = call float @dx.op.unary.f32(i32 7, float %1774)  ; Saturate(value)
  %1776 = call float @dx.op.binary.f32(i32 35, float 0x3FE51EB860000000, float %1775)  ; FMax(a,b)
  %1777 = fsub fast float -5.000000e-01, %1615
  %1778 = fadd fast float %1777, %1612
  %1779 = fsub fast float -5.000000e-01, %1616
  %1780 = fadd fast float %1779, %1614
  %1781 = fmul fast float %1778, 2.000000e+00
  %1782 = fmul fast float %1780, 2.000000e+00
  %1783 = call float @dx.op.dot2.f32(i32 54, float %1781, float %1782, float %1781, float %1782)  ; Dot2(ax,ay,bx,by)
  %1784 = call float @dx.op.unary.f32(i32 24, float %1783)  ; Sqrt(value)
  %1785 = fsub fast float 1.000000e+00, %1784
  %1786 = fmul fast float %1785, 2.000000e+00
  %1787 = call float @dx.op.unary.f32(i32 7, float %1786)  ; Saturate(value)
  %1788 = fmul fast float %1766, 0x3F9EB851E0000000
  %1789 = fadd fast float %1788, %1595
  %1790 = call float @dx.op.unary.f32(i32 22, float %1789)  ; Frc(value)
  %1791 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %13, float %1593, float %1790, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1792 = extractvalue %dx.types.ResRet.f32 %1791, 3
  %1793 = call float @dx.op.unary.f32(i32 7, float %1762)  ; Saturate(value)
  %1794 = fmul fast float %1792, %1573
  %1795 = fsub fast float %1793, %1794
  %1796 = call float @dx.op.unary.f32(i32 7, float %1795)  ; Saturate(value)
  %1797 = fmul fast float %1792, 1.250000e+00
  %1798 = fsub fast float %1793, %1797
  %1799 = call float @dx.op.unary.f32(i32 7, float %1798)  ; Saturate(value)
  %1800 = fsub fast float 5.000000e-01, %1595
  %1801 = fmul fast float %1800, 2.000000e+00
  %1802 = call float @dx.op.unary.f32(i32 7, float %1801)  ; Saturate(value)
  %1803 = fmul fast float %1802, %1802
  %1804 = fmul fast float %1803, 7.500000e-01
  %1805 = fadd fast float %1804, 1.000000e+00
  %1806 = fmul fast float %1796, 7.500000e-01
  %1807 = fmul fast float %1806, %1805
  %1808 = fmul fast float %1600, 0x3FD3333340000000
  %1809 = fadd fast float %1808, 0x3FC3333340000000
  %1810 = fmul fast float %1799, %1809
  %1811 = fadd fast float %1807, %1810
  %1812 = fmul fast float %1811, %1811
  %1813 = fmul fast float %1812, %1811
  %1814 = call float @dx.op.unary.f32(i32 7, float %1813)  ; Saturate(value)
  %1815 = fmul fast float %1814, 0x40285C2900000000
  %1816 = fsub fast float 1.400000e+01, %1815
  %1817 = fptoui float %1816 to i32
  %1818 = call float @dx.op.unary.f32(i32 22, float %1816)  ; Frc(value)
  %1819 = mul i32 %1817, 3
  %1820 = add i32 0, %1819
  %1821 = getelementptr [45 x float], [45 x float]* @heat_ramp.v.1dim, i32 0, i32 %1820
  %1822 = load float, float* %1821, align 4
  %1823 = mul i32 %1817, 3
  %1824 = add i32 1, %1823
  %1825 = getelementptr [45 x float], [45 x float]* @heat_ramp.v.1dim, i32 0, i32 %1824
  %1826 = load float, float* %1825, align 4
  %1827 = mul i32 %1817, 3
  %1828 = add i32 2, %1827
  %1829 = getelementptr [45 x float], [45 x float]* @heat_ramp.v.1dim, i32 0, i32 %1828
  %1830 = load float, float* %1829, align 4
  %1831 = add i32 %1817, 1
  %1832 = mul i32 %1831, 3
  %1833 = add i32 0, %1832
  %1834 = getelementptr [45 x float], [45 x float]* @heat_ramp.v.1dim, i32 0, i32 %1833
  %1835 = load float, float* %1834, align 4
  %1836 = mul i32 %1831, 3
  %1837 = add i32 1, %1836
  %1838 = getelementptr [45 x float], [45 x float]* @heat_ramp.v.1dim, i32 0, i32 %1837
  %1839 = load float, float* %1838, align 4
  %1840 = mul i32 %1831, 3
  %1841 = add i32 2, %1840
  %1842 = getelementptr [45 x float], [45 x float]* @heat_ramp.v.1dim, i32 0, i32 %1841
  %1843 = load float, float* %1842, align 4
  %1844 = fsub fast float %1835, %1822
  %1845 = fsub fast float %1839, %1826
  %1846 = fsub fast float %1843, %1830
  %1847 = fmul fast float %1844, %1818
  %1848 = fmul fast float %1845, %1818
  %1849 = fmul fast float %1846, %1818
  %1850 = fadd fast float %1847, %1822
  %1851 = fadd fast float %1848, %1826
  %1852 = fadd fast float %1849, %1830
  %1853 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 17)  ; CBufferLoadLegacy(handle,regIndex)
  %1854 = extractvalue %dx.types.CBufRet.f32 %1853, 0
  %1855 = fmul fast float %1617, %1617
  %1856 = fmul fast float %1855, %1619
  %1857 = fmul fast float %1856, %1776
  %1858 = fmul fast float %1857, %1787
  %1859 = fmul fast float %1858, %1796
  %1860 = fmul fast float %1859, %1854
  %1861 = fmul fast float %1850, %1850
  %1862 = fmul fast float %1861, 2.000000e+00
  %1863 = fmul fast float %1862, %1860
  %1864 = fmul fast float %1851, %1851
  %1865 = fmul fast float %1864, 2.000000e+00
  %1866 = fmul fast float %1865, %1860
  %1867 = fmul fast float %1852, %1852
  %1868 = fmul fast float %1867, 2.000000e+00
  %1869 = fmul fast float %1868, %1860
  %1870 = call float @dx.op.binary.f32(i32 36, float %1863, float 2.000000e+00)  ; FMin(a,b)
  %1871 = call float @dx.op.binary.f32(i32 36, float %1866, float 2.000000e+00)  ; FMin(a,b)
  %1872 = call float @dx.op.binary.f32(i32 36, float %1869, float 2.000000e+00)  ; FMin(a,b)
  %1873 = select i1 %1599, float 0x3FD3333340000000, float 7.500000e-01
  %1874 = fmul float %1873, %1860
  br label %5671

; <label>:1875                                    ; preds = %634
  %1876 = and i32 %674, 262144
  %1877 = icmp eq i32 %676, 0
  %1878 = and i1 %1877, %130
  %1879 = icmp eq i32 %1876, 0
  %1880 = and i1 %129, %1879
  %1881 = or i1 %1878, %1880
  br i1 %1881, label %5671, label %1882, !dx.controlflow.hints !56

; <label>:1882                                    ; preds = %1875
  %1883 = and i32 %674, 511
  %1884 = mul nuw nsw i32 %1883, 20
  br i1 %129, label %1885, label %2141, !dx.controlflow.hints !57

; <label>:1885                                    ; preds = %1882
  %1886 = add nuw nsw i32 %1884, 4
  %1887 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %1886, i32 undef)  ; BufferLoad(srv,index,wot)
  %1888 = extractvalue %dx.types.ResRet.i32 %1887, 0
  %1889 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %1884, i32 undef)  ; BufferLoad(srv,index,wot)
  %1890 = extractvalue %dx.types.ResRet.i32 %1889, 0
  %1891 = and i32 %674, 524288
  %1892 = icmp ne i32 %1891, 0
  %1893 = lshr i32 %1888, 24
  %1894 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 228)  ; CBufferLoadLegacy(handle,regIndex)
  %1895 = extractvalue %dx.types.CBufRet.f32 %1894, 2
  %1896 = extractvalue %dx.types.CBufRet.f32 %1894, 0
  %1897 = call float @dx.op.binary.f32(i32 35, float %57, float %1896)  ; FMax(a,b)
  %1898 = call float @dx.op.binary.f32(i32 36, float %1897, float %1895)  ; FMin(a,b)
  %1899 = call float @dx.op.binary.f32(i32 36, float %57, float %1896)  ; FMin(a,b)
  %1900 = call float @dx.op.binary.f32(i32 35, float %1899, float %1898)  ; FMax(a,b)
  %1901 = fcmp fast oeq float %57, %1900
  %1902 = extractvalue %dx.types.CBufRet.f32 %1894, 3
  %1903 = extractvalue %dx.types.CBufRet.f32 %1894, 1
  %1904 = call float @dx.op.binary.f32(i32 35, float %58, float %1903)  ; FMax(a,b)
  %1905 = call float @dx.op.binary.f32(i32 36, float %1904, float %1902)  ; FMin(a,b)
  %1906 = call float @dx.op.binary.f32(i32 36, float %58, float %1903)  ; FMin(a,b)
  %1907 = call float @dx.op.binary.f32(i32 35, float %1906, float %1905)  ; FMax(a,b)
  %1908 = fcmp fast oeq float %58, %1907
  %1909 = and i1 %1901, %1908
  %1910 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 224)  ; CBufferLoadLegacy(handle,regIndex)
  %1911 = extractvalue %dx.types.CBufRet.f32 %1910, 1
  %1912 = select i1 %1909, float %1911, float 1.000000e+00
  %1913 = icmp ne i32 %1893, 0
  %1914 = and i1 %112, %1913
  br i1 %1914, label %1915, label %1952, !dx.controlflow.hints !48

; <label>:1915                                    ; preds = %1885
  %1916 = sitofp i32 %1893 to float
  %1917 = fmul fast float %1916, 0x3F70101020000000
  %1918 = fmul fast float %1917, %1912
  %1919 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1920 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %1921 = extractvalue %dx.types.CBufRet.f32 %1919, 3
  %1922 = extractvalue %dx.types.CBufRet.f32 %1920, 3
  %1923 = select i1 %1892, float %1921, float %1922
  %1924 = fmul fast float %1923, %1918
  %1925 = extractvalue %dx.types.CBufRet.f32 %1919, 2
  %1926 = extractvalue %dx.types.CBufRet.f32 %1920, 2
  %1927 = select i1 %1892, float %1925, float %1926
  %1928 = fmul fast float %1927, %1918
  %1929 = extractvalue %dx.types.CBufRet.f32 %1919, 1
  %1930 = extractvalue %dx.types.CBufRet.f32 %1920, 1
  %1931 = select i1 %1892, float %1929, float %1930
  %1932 = fmul fast float %1931, %1918
  %1933 = extractvalue %dx.types.CBufRet.f32 %1919, 0
  %1934 = extractvalue %dx.types.CBufRet.f32 %1920, 0
  %1935 = select i1 %1892, float %1933, float %1934
  %1936 = fmul fast float %1935, %1918
  %1937 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %1938 = extractvalue %dx.types.CBufRet.f32 %1937, 2
  %1939 = fmul fast float %1938, %1918
  %1940 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %1941 = extractvalue %dx.types.CBufRet.f32 %1940, 3
  %1942 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %1943 = extractvalue %dx.types.CBufRet.f32 %1942, 0
  %1944 = extractvalue %dx.types.CBufRet.f32 %1942, 1
  %1945 = extractvalue %dx.types.CBufRet.f32 %1942, 2
  %1946 = extractvalue %dx.types.CBufRet.f32 %1942, 3
  %1947 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %1948 = extractvalue %dx.types.CBufRet.f32 %1947, 0
  %1949 = extractvalue %dx.types.CBufRet.f32 %1947, 1
  %1950 = extractvalue %dx.types.CBufRet.f32 %1947, 2
  %1951 = extractvalue %dx.types.CBufRet.f32 %1947, 3
  br label %2011

; <label>:1952                                    ; preds = %1885
  %1953 = lshr i32 %1888, 8
  %1954 = and i32 %1953, 65535
  %1955 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1954)  ; LegacyF16ToF32(value)
  %1956 = and i32 %674, 2097152
  %1957 = icmp ne i32 %1956, 0
  %1958 = and i32 %674, 1048576
  %1959 = icmp ne i32 %1958, 0
  %1960 = and i32 %674, 65536
  %1961 = icmp ne i32 %1960, 0
  %1962 = select i1 %1961, float 1.000000e+00, float 0.000000e+00
  %1963 = and i32 %674, 32768
  %1964 = icmp ne i32 %1963, 0
  %1965 = select i1 %1964, float 0.000000e+00, float 1.000000e+00
  %1966 = select i1 %112, float %1912, float %1965
  %1967 = fmul fast float %1966, %1962
  %1968 = select i1 %1959, float 0.000000e+00, float %1967
  %1969 = lshr i32 %1890, 24
  %1970 = uitofp i32 %1969 to float
  %1971 = fmul fast float %1970, 0x3F70101020000000
  %1972 = fmul fast float %1971, %1966
  %1973 = lshr i32 %1890, 16
  %1974 = and i32 %1973, 255
  %1975 = uitofp i32 %1974 to float
  %1976 = fmul fast float %1975, 0x3F70101020000000
  %1977 = fmul fast float %1976, %1966
  %1978 = lshr i32 %1890, 8
  %1979 = and i32 %1978, 255
  %1980 = uitofp i32 %1979 to float
  %1981 = fmul fast float %1980, 0x3F70101020000000
  %1982 = fmul fast float %1981, %1966
  %1983 = and i32 %1890, 255
  %1984 = uitofp i32 %1983 to float
  %1985 = fmul fast float %1984, 0x3F70101020000000
  %1986 = fmul fast float %1985, %1966
  %1987 = icmp ne i32 %1876, 0
  %1988 = select i1 %1987, float 1.000000e+00, float 0.000000e+00
  %1989 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %1990 = extractvalue %dx.types.CBufRet.f32 %1989, 0
  %1991 = extractvalue %dx.types.CBufRet.f32 %1989, 1
  %1992 = extractvalue %dx.types.CBufRet.f32 %1989, 2
  %1993 = extractvalue %dx.types.CBufRet.f32 %1989, 3
  %1994 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %1995 = extractvalue %dx.types.CBufRet.f32 %1994, 0
  %1996 = extractvalue %dx.types.CBufRet.f32 %1994, 1
  %1997 = extractvalue %dx.types.CBufRet.f32 %1994, 2
  %1998 = extractvalue %dx.types.CBufRet.f32 %1994, 3
  %1999 = fmul fast float %1986, %1988
  %2000 = fmul fast float %1982, %1988
  %2001 = fmul fast float %1977, %1988
  %2002 = fmul fast float %1972, %1988
  %2003 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2004 = extractvalue %dx.types.CBufRet.f32 %2003, 0
  %2005 = fmul fast float %2004, 2.000000e+00
  %2006 = select i1 %1957, float %2005, float 1.000000e+00
  %2007 = fmul fast float %2006, %1999
  %2008 = fmul fast float %2006, %2000
  %2009 = fmul fast float %2006, %2001
  %2010 = fmul fast float %2006, %2002
  br label %2011

; <label>:2011                                    ; preds = %1952, %1915
  %2012 = phi float [ %2007, %1952 ], [ %1936, %1915 ]
  %2013 = phi float [ %2008, %1952 ], [ %1932, %1915 ]
  %2014 = phi float [ %2009, %1952 ], [ %1928, %1915 ]
  %2015 = phi float [ %2010, %1952 ], [ %1924, %1915 ]
  %2016 = phi float [ %1995, %1952 ], [ %1948, %1915 ]
  %2017 = phi float [ %1996, %1952 ], [ %1949, %1915 ]
  %2018 = phi float [ %1997, %1952 ], [ %1950, %1915 ]
  %2019 = phi float [ %1998, %1952 ], [ %1951, %1915 ]
  %2020 = phi float [ %1990, %1952 ], [ %1943, %1915 ]
  %2021 = phi float [ %1991, %1952 ], [ %1944, %1915 ]
  %2022 = phi float [ %1992, %1952 ], [ %1945, %1915 ]
  %2023 = phi float [ %1993, %1952 ], [ %1946, %1915 ]
  %2024 = phi float [ %1968, %1952 ], [ %1939, %1915 ]
  %2025 = phi float [ %1955, %1952 ], [ %1941, %1915 ]
  %2026 = fcmp fast oeq float %2025, 0.000000e+00
  br i1 %2026, label %2126, label %2027, !dx.controlflow.hints !51

; <label>:2027                                    ; preds = %2011
  %2028 = fmul fast float %2025, %78
  %2029 = fptosi float %2028 to i32
  %2030 = fmul fast float %2025, %79
  %2031 = fptosi float %2030 to i32
  %2032 = call i32 @dx.op.binary.i32(i32 37, i32 1, i32 %2029)  ; IMax(a,b)
  %2033 = call i32 @dx.op.binary.i32(i32 37, i32 1, i32 %2031)  ; IMax(a,b)
  %2034 = sub i32 %77, %2033
  %2035 = or i32 %2034, %76
  %2036 = icmp slt i32 %2035, 0
  %2037 = fptosi float %72 to i32
  %2038 = fptosi float %73 to i32
  %2039 = icmp sge i32 %76, %2037
  %2040 = icmp sge i32 %2034, %2038
  %2041 = or i1 %2039, %2040
  %2042 = or i1 %2036, %2041
  br i1 %2042, label %2056, label %2043, !dx.controlflow.hints !52

; <label>:2043                                    ; preds = %2027
  %2044 = lshr i32 %2034, 2
  %2045 = mul i32 %97, %2044
  %2046 = add i32 %115, %2045
  %2047 = shl i32 %2046, 2
  %2048 = shl i32 %2034, 3
  %2049 = and i32 %2048, 24
  %2050 = or i32 %2049, %106
  %2051 = shl i32 1, %2050
  %2052 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %2047, i32 undef)  ; BufferLoad(srv,index,wot)
  %2053 = extractvalue %dx.types.ResRet.i32 %2052, 0
  %2054 = and i32 %2053, %2051
  %2055 = icmp ne i32 %2054, 0
  br label %2056

; <label>:2056                                    ; preds = %2043, %2027
  %2057 = phi i1 [ %2055, %2043 ], [ false, %2027 ]
  %2058 = add i32 %2033, %77
  %2059 = or i32 %2058, %76
  %2060 = icmp slt i32 %2059, 0
  %2061 = icmp sge i32 %2058, %2038
  %2062 = or i1 %2039, %2061
  %2063 = or i1 %2060, %2062
  br i1 %2063, label %2077, label %2064, !dx.controlflow.hints !52

; <label>:2064                                    ; preds = %2056
  %2065 = lshr i32 %2058, 2
  %2066 = mul i32 %97, %2065
  %2067 = add i32 %115, %2066
  %2068 = shl i32 %2067, 2
  %2069 = shl i32 %2058, 3
  %2070 = and i32 %2069, 24
  %2071 = or i32 %2070, %106
  %2072 = shl i32 1, %2071
  %2073 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %2068, i32 undef)  ; BufferLoad(srv,index,wot)
  %2074 = extractvalue %dx.types.ResRet.i32 %2073, 0
  %2075 = and i32 %2074, %2072
  %2076 = icmp ne i32 %2075, 0
  br label %2077

; <label>:2077                                    ; preds = %2064, %2056
  %2078 = phi i1 [ %2076, %2064 ], [ false, %2056 ]
  %2079 = and i1 %2057, %2078
  %2080 = sub i32 %76, %2032
  %2081 = or i32 %2080, %77
  %2082 = icmp slt i32 %2081, 0
  %2083 = icmp sge i32 %2080, %2037
  %2084 = icmp sge i32 %77, %2038
  %2085 = or i1 %2083, %2084
  %2086 = or i1 %2082, %2085
  br i1 %2086, label %2100, label %2087, !dx.controlflow.hints !52

; <label>:2087                                    ; preds = %2077
  %2088 = lshr i32 %2080, 3
  %2089 = add i32 %94, %2088
  %2090 = add i32 %2089, %113
  %2091 = add i32 %2090, %98
  %2092 = shl i32 %2091, 2
  %2093 = and i32 %2080, 7
  %2094 = or i32 %2093, %105
  %2095 = shl i32 1, %2094
  %2096 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %2092, i32 undef)  ; BufferLoad(srv,index,wot)
  %2097 = extractvalue %dx.types.ResRet.i32 %2096, 0
  %2098 = and i32 %2097, %2095
  %2099 = icmp ne i32 %2098, 0
  br label %2100

; <label>:2100                                    ; preds = %2087, %2077
  %2101 = phi i1 [ %2099, %2087 ], [ false, %2077 ]
  %2102 = and i1 %2079, %2101
  %2103 = add i32 %2032, %76
  %2104 = or i32 %2103, %77
  %2105 = icmp slt i32 %2104, 0
  %2106 = icmp sge i32 %2103, %2037
  %2107 = or i1 %2106, %2084
  %2108 = or i1 %2105, %2107
  br i1 %2108, label %2122, label %2109, !dx.controlflow.hints !52

; <label>:2109                                    ; preds = %2100
  %2110 = lshr i32 %2103, 3
  %2111 = add i32 %94, %2110
  %2112 = add i32 %2111, %113
  %2113 = add i32 %2112, %98
  %2114 = shl i32 %2113, 2
  %2115 = and i32 %2103, 7
  %2116 = or i32 %2115, %105
  %2117 = shl i32 1, %2116
  %2118 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %2114, i32 undef)  ; BufferLoad(srv,index,wot)
  %2119 = extractvalue %dx.types.ResRet.i32 %2118, 0
  %2120 = and i32 %2119, %2117
  %2121 = icmp ne i32 %2120, 0
  br label %2122

; <label>:2122                                    ; preds = %2109, %2100
  %2123 = phi i1 [ %2121, %2109 ], [ false, %2100 ]
  %2124 = and i1 %2102, %2123
  %2125 = xor i1 %2124, true
  br label %2126

; <label>:2126                                    ; preds = %2122, %2011
  %2127 = phi i1 [ %2125, %2122 ], [ false, %2011 ]
  br i1 %2127, label %5671, label %2128, !dx.controlflow.hints !53

; <label>:2128                                    ; preds = %2126
  %2129 = select i1 %91, float %2016, float %2020
  %2130 = select i1 %91, float %2017, float %2021
  %2131 = select i1 %91, float %2018, float %2022
  %2132 = select i1 %91, float %2019, float %2023
  %2133 = fmul fast float %2129, %2012
  %2134 = fmul fast float %2133, %2024
  %2135 = fmul fast float %2130, %2013
  %2136 = fmul fast float %2135, %2024
  %2137 = fmul fast float %2131, %2014
  %2138 = fmul fast float %2137, %2024
  %2139 = fmul fast float %2132, %2015
  %2140 = fmul fast float %2139, %2024
  br label %5671

; <label>:2141                                    ; preds = %1882
  %2142 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %1884, i32 undef)  ; BufferLoad(srv,index,wot)
  %2143 = extractvalue %dx.types.ResRet.i32 %2142, 0
  %2144 = and i32 %2143, 255
  %2145 = uitofp i32 %2144 to float
  %2146 = lshr i32 %2143, 8
  %2147 = and i32 %2146, 255
  %2148 = uitofp i32 %2147 to float
  %2149 = lshr i32 %2143, 16
  %2150 = and i32 %2149, 255
  %2151 = uitofp i32 %2150 to float
  %2152 = lshr i32 %2143, 24
  %2153 = uitofp i32 %2152 to float
  %2154 = fmul fast float %2145, 0x3F70101020000000
  %2155 = fmul fast float %2148, 0x3F70101020000000
  %2156 = fmul fast float %2151, 0x3F70101020000000
  %2157 = fmul fast float %2153, 0x3F70101020000000
  %2158 = fsub fast float 1.000000e+00, %2157
  %2159 = lshr i32 %674, 5
  %2160 = and i32 %2159, 1008
  %2161 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %2160, i32 undef)  ; BufferLoad(srv,index,wot)
  %2162 = extractvalue %dx.types.ResRet.i32 %2161, 0
  %2163 = and i32 %2162, 1022
  %2164 = uitofp i32 %2163 to float
  %2165 = fmul fast float %2164, 0x3F940A0500000000
  %2166 = fadd fast float %2165, -1.000000e+01
  %2167 = lshr i32 %2162, 10
  %2168 = and i32 %2167, 1022
  %2169 = uitofp i32 %2168 to float
  %2170 = fmul fast float %2169, 0x3F940A0500000000
  %2171 = fadd fast float %2170, -1.000000e+01
  %2172 = lshr i32 %2162, 20
  %2173 = and i32 %2172, 1022
  %2174 = uitofp i32 %2173 to float
  %2175 = fmul fast float %2174, 0x3F840A0500000000
  %2176 = add nuw nsw i32 %1884, 12
  %2177 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %2176, i32 undef)  ; BufferLoad(srv,index,wot)
  %2178 = extractvalue %dx.types.ResRet.i32 %2177, 0
  %2179 = and i32 %2178, 65535
  %2180 = uitofp i32 %2179 to float
  %2181 = fmul fast float %2180, 0x3EF0002000000000
  %2182 = lshr i32 %2178, 16
  %2183 = uitofp i32 %2182 to float
  %2184 = fmul fast float %2183, 0x3EF0002000000000
  %2185 = add nuw nsw i32 %1884, 8
  %2186 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %2185, i32 undef)  ; BufferLoad(srv,index,wot)
  %2187 = extractvalue %dx.types.ResRet.i32 %2186, 0
  %2188 = and i32 %2187, 65535
  %2189 = uitofp i32 %2188 to float
  %2190 = fmul fast float %2189, 0x3EF0002000000000
  %2191 = lshr i32 %2187, 16
  %2192 = uitofp i32 %2191 to float
  %2193 = fmul fast float %2192, 0x3EF0002000000000
  %2194 = fsub fast float %57, %2190
  %2195 = fdiv fast float %2194, %2181
  %2196 = fsub fast float %58, %2193
  %2197 = fdiv fast float %2196, %2184
  %2198 = add nuw nsw i32 %1884, 16
  %2199 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %2198, i32 undef)  ; BufferLoad(srv,index,wot)
  %2200 = extractvalue %dx.types.ResRet.f32 %2199, 0
  %2201 = fcmp fast olt float %2200, 1.000000e+01
  %2202 = uitofp i1 %2201 to float
  %2203 = fdiv fast float 2.400000e+02, %2200
  %2204 = call float @dx.op.unary.f32(i32 7, float %2203)  ; Saturate(value)
  %2205 = fdiv fast float 3.200000e+02, %2200
  %2206 = call float @dx.op.unary.f32(i32 7, float %2205)  ; Saturate(value)
  %2207 = fmul fast float %2206, 5.000000e-01
  %2208 = fadd fast float %2207, 2.500000e-01
  %2209 = fdiv fast float 3.200000e+01, %2208
  %2210 = select i1 %2201, float 3.200000e+01, float %2209
  %2211 = fmul fast float %2210, 1.600000e+01
  %2212 = fmul fast float %2210, 9.000000e+00
  %2213 = fmul fast float %2181, %2195
  %2214 = fmul fast float %2213, %2211
  %2215 = fmul fast float %2184, %2197
  %2216 = fmul fast float %2215, %2212
  %2217 = call float @dx.op.unary.f32(i32 29, float %2214)  ; Round_z(value)
  %2218 = call float @dx.op.unary.f32(i32 29, float %2216)  ; Round_z(value)
  %2219 = call float @dx.op.unary.f32(i32 7, float %2157)  ; Saturate(value)
  %2220 = fmul fast float %2219, 2.000000e+00
  %2221 = fsub fast float 3.000000e+00, %2220
  %2222 = fmul fast float %2204, 4.000000e+01
  %2223 = fmul fast float %2202, 1.000000e+02
  %2224 = fadd fast float %2223, %2222
  %2225 = fmul fast float %2175, %2224
  %2226 = fptoui float %2225 to i32
  %2227 = uitofp i32 %76 to float
  %2228 = uitofp i32 %77 to float
  %2229 = fptoui float %2227 to i32
  %2230 = fptoui float %2228 to i32
  %2231 = lshr i32 %2230, 2
  %2232 = mul i32 %97, %2231
  %2233 = lshr i32 %2229, 3
  %2234 = add i32 %94, %2233
  %2235 = add i32 %2234, %113
  %2236 = add i32 %2235, %2232
  %2237 = shl i32 %2236, 2
  %2238 = shl i32 %2230, 3
  %2239 = and i32 %2238, 24
  %2240 = and i32 %2229, 7
  %2241 = or i32 %2239, %2240
  %2242 = shl i32 1, %2241
  %2243 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %2237, i32 undef)  ; BufferLoad(srv,index,wot)
  %2244 = extractvalue %dx.types.ResRet.i32 %2243, 0
  %2245 = and i32 %2244, %2242
  %2246 = icmp ne i32 %2245, 0
  %2247 = icmp eq i32 %2226, 0
  br i1 %2247, label %2364, label %2248, !dx.controlflow.hints !55

; <label>:2248                                    ; preds = %2141
  %2249 = uitofp i32 %2226 to float
  %2250 = fmul fast float %78, 5.000000e-01
  %2251 = fmul fast float %2250, %2249
  %2252 = fmul fast float %79, 5.000000e-01
  %2253 = fmul fast float %2252, %2249
  %2254 = call float @dx.op.binary.f32(i32 35, float 5.000000e-01, float %2251)  ; FMax(a,b)
  %2255 = call float @dx.op.binary.f32(i32 35, float 5.000000e-01, float %2253)  ; FMax(a,b)
  br label %2256

; <label>:2256                                    ; preds = %2351, %2248
  %2257 = phi float [ 0.000000e+00, %2248 ], [ %2354, %2351 ]
  %2258 = phi i32 [ 0, %2248 ], [ %2355, %2351 ]
  %2259 = fmul fast float %57, 0x3FF280E1E0000000
  %2260 = fmul fast float %58, 0x3FF280E1E0000000
  %2261 = sitofp i32 %2258 to float
  %2262 = fmul fast float %2261, 0x3FB99999A0000000
  %2263 = fadd fast float %2262, %2259
  %2264 = fadd fast float %2262, %2260
  %2265 = fmul fast float %2263, 1.024000e+03
  %2266 = fmul fast float %2264, 1.024000e+03
  %2267 = fadd fast float %2265, -5.120000e+02
  %2268 = fadd fast float %2266, -5.120000e+02
  %2269 = fmul fast float %2263, 0x4081BEDF00000000
  %2270 = fadd fast float %2269, 0xC071BEDF00000000
  %2271 = call float @dx.op.unary.f32(i32 22, float %2270)  ; Frc(value)
  %2272 = fmul fast float %2267, %2271
  %2273 = fadd fast float %2272, %2268
  %2274 = fmul fast float %2264, 0x4073BEBE20000000
  %2275 = fadd fast float %2274, 0xC063BEBE20000000
  %2276 = call float @dx.op.unary.f32(i32 22, float %2275)  ; Frc(value)
  %2277 = fmul fast float %2268, %2276
  %2278 = fadd fast float %2277, %2267
  %2279 = fmul fast float %2273, %2278
  %2280 = call float @dx.op.unary.f32(i32 22, float %2279)  ; Frc(value)
  %2281 = fmul fast float %2280, 2.000000e+00
  %2282 = fadd fast float %2281, -1.000000e+00
  %2283 = fmul fast float %2282, %2254
  %2284 = fmul fast float %57, 0x3FEB681740000000
  %2285 = fmul fast float %58, 0x3FEB681740000000
  %2286 = fmul fast float %2261, 0x3FC99999A0000000
  %2287 = fadd fast float %2286, 1.250000e-01
  %2288 = fadd fast float %2287, %2284
  %2289 = fadd fast float %2287, %2285
  %2290 = fmul fast float %2288, 1.024000e+03
  %2291 = fmul fast float %2289, 1.024000e+03
  %2292 = fadd fast float %2290, -5.120000e+02
  %2293 = fadd fast float %2291, -5.120000e+02
  %2294 = fmul fast float %2288, 0x4081BEDF00000000
  %2295 = fadd fast float %2294, 0xC071BEDF00000000
  %2296 = call float @dx.op.unary.f32(i32 22, float %2295)  ; Frc(value)
  %2297 = fmul fast float %2292, %2296
  %2298 = fadd fast float %2297, %2293
  %2299 = fmul fast float %2289, 0x4073BEBE20000000
  %2300 = fadd fast float %2299, 0xC063BEBE20000000
  %2301 = call float @dx.op.unary.f32(i32 22, float %2300)  ; Frc(value)
  %2302 = fmul fast float %2293, %2301
  %2303 = fadd fast float %2302, %2292
  %2304 = fmul fast float %2298, %2303
  %2305 = call float @dx.op.unary.f32(i32 22, float %2304)  ; Frc(value)
  %2306 = fmul fast float %2305, 2.000000e+00
  %2307 = fadd fast float %2306, -1.000000e+00
  %2308 = fmul fast float %2307, %2255
  %2309 = fptosi float %2283 to i32
  %2310 = sitofp i32 %2309 to float
  %2311 = fadd fast float %2310, %2227
  %2312 = fptosi float %2311 to i32
  %2313 = fptosi float %2308 to i32
  %2314 = sitofp i32 %2313 to float
  %2315 = fadd fast float %2314, %2228
  %2316 = fptosi float %2315 to i32
  %2317 = or i32 %2316, %2312
  %2318 = icmp slt i32 %2317, 0
  %2319 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %2320 = extractvalue %dx.types.CBufRet.f32 %2319, 0
  %2321 = extractvalue %dx.types.CBufRet.f32 %2319, 1
  %2322 = fptosi float %2320 to i32
  %2323 = fptosi float %2321 to i32
  %2324 = icmp sge i32 %2312, %2322
  %2325 = icmp sge i32 %2316, %2323
  %2326 = or i1 %2324, %2325
  %2327 = or i1 %2318, %2326
  br i1 %2327, label %2351, label %2328, !dx.controlflow.hints !52

; <label>:2328                                    ; preds = %2256
  %2329 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %17, i32 51)  ; CBufferLoadLegacy(handle,regIndex)
  %2330 = extractvalue %dx.types.CBufRet.i32 %2329, 1
  %2331 = shl i32 %2330, 2
  %2332 = extractvalue %dx.types.CBufRet.i32 %2329, 3
  %2333 = shl i32 %2332, 1
  %2334 = lshr i32 %2316, 2
  %2335 = extractvalue %dx.types.CBufRet.i32 %2329, 2
  %2336 = mul i32 %2335, %2334
  %2337 = lshr i32 %2312, 3
  %2338 = add i32 %2331, %2337
  %2339 = add i32 %2338, %2333
  %2340 = add i32 %2339, %2336
  %2341 = shl i32 %2340, 2
  %2342 = shl i32 %2316, 3
  %2343 = and i32 %2342, 24
  %2344 = and i32 %2312, 7
  %2345 = or i32 %2343, %2344
  %2346 = shl i32 1, %2345
  %2347 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %2341, i32 undef)  ; BufferLoad(srv,index,wot)
  %2348 = extractvalue %dx.types.ResRet.i32 %2347, 0
  %2349 = and i32 %2348, %2346
  %2350 = icmp ne i32 %2349, 0
  br label %2351

; <label>:2351                                    ; preds = %2328, %2256
  %2352 = phi i1 [ %2350, %2328 ], [ false, %2256 ]
  %2353 = uitofp i1 %2352 to float
  %2354 = fadd fast float %2353, %2257
  %2355 = add nuw nsw i32 %2258, 1
  %2356 = icmp eq i32 %2355, 5
  br i1 %2356, label %2357, label %2256

; <label>:2357                                    ; preds = %2351
  %2358 = uitofp i1 %2246 to float
  %2359 = fmul fast float %2358, 0x3FC99999A0000000
  %2360 = fmul fast float %2359, %2354
  %2361 = fadd fast float %2360, -5.000000e-01
  %2362 = fmul fast float %2361, 2.000000e+00
  %2363 = call float @dx.op.unary.f32(i32 7, float %2362)  ; Saturate(value)
  br label %2364

; <label>:2364                                    ; preds = %2357, %2141
  %2365 = phi float [ %2363, %2357 ], [ 0.000000e+00, %2141 ]
  %2366 = fdiv fast float %2217, %2211
  %2367 = fdiv fast float %2218, %2212
  %2368 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2369 = extractvalue %dx.types.CBufRet.f32 %2368, 3
  %2370 = fmul fast float %2369, %2166
  %2371 = fadd fast float %2370, %2366
  %2372 = fsub fast float %2367, %2370
  %2373 = call float @dx.op.unary.f32(i32 22, float %2371)  ; Frc(value)
  %2374 = call float @dx.op.unary.f32(i32 22, float %2372)  ; Frc(value)
  %2375 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %14, float %2373, float %2374, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2376 = extractvalue %dx.types.ResRet.f32 %2375, 0
  %2377 = fmul fast float %2376, %2171
  %2378 = call float @dx.op.unary.f32(i32 7, float %2377)  ; Saturate(value)
  %2379 = call float @dx.op.binary.f32(i32 35, float 0x3F847AE140000000, float %2378)  ; FMax(a,b)
  %2380 = fsub fast float -5.000000e-01, %2217
  %2381 = fadd fast float %2380, %2214
  %2382 = fsub fast float -5.000000e-01, %2218
  %2383 = fadd fast float %2382, %2216
  %2384 = fmul fast float %2381, 2.000000e+00
  %2385 = fmul fast float %2383, 2.000000e+00
  %2386 = call float @dx.op.dot2.f32(i32 54, float %2384, float %2385, float %2384, float %2385)  ; Dot2(ax,ay,bx,by)
  %2387 = call float @dx.op.unary.f32(i32 24, float %2386)  ; Sqrt(value)
  %2388 = fsub fast float 1.000000e+00, %2387
  %2389 = fmul fast float %2388, 2.000000e+00
  %2390 = call float @dx.op.unary.f32(i32 7, float %2389)  ; Saturate(value)
  %2391 = fadd fast float %2370, %2197
  %2392 = call float @dx.op.unary.f32(i32 22, float %2391)  ; Frc(value)
  %2393 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %13, float %2195, float %2392, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2394 = extractvalue %dx.types.ResRet.f32 %2393, 3
  %2395 = call float @dx.op.unary.f32(i32 7, float %2365)  ; Saturate(value)
  %2396 = fmul fast float %2394, %2158
  %2397 = fsub fast float %2395, %2396
  %2398 = call float @dx.op.unary.f32(i32 7, float %2397)  ; Saturate(value)
  %2399 = fmul fast float %2394, 1.250000e+00
  %2400 = fsub fast float %2395, %2399
  %2401 = call float @dx.op.unary.f32(i32 7, float %2400)  ; Saturate(value)
  %2402 = fmul fast float %2401, %2401
  %2403 = fmul fast float %2402, %2401
  %2404 = call float @dx.op.unary.f32(i32 7, float %2403)  ; Saturate(value)
  %2405 = fmul fast float %2404, 0x40285C2900000000
  %2406 = fsub fast float 1.400000e+01, %2405
  %2407 = fptoui float %2406 to i32
  %2408 = call float @dx.op.unary.f32(i32 22, float %2406)  ; Frc(value)
  %2409 = mul i32 %2407, 3
  %2410 = add i32 0, %2409
  %2411 = getelementptr [45 x float], [45 x float]* @supp_ramp.v.1dim, i32 0, i32 %2410
  %2412 = load float, float* %2411, align 4
  %2413 = mul i32 %2407, 3
  %2414 = add i32 1, %2413
  %2415 = getelementptr [45 x float], [45 x float]* @supp_ramp.v.1dim, i32 0, i32 %2414
  %2416 = load float, float* %2415, align 4
  %2417 = mul i32 %2407, 3
  %2418 = add i32 2, %2417
  %2419 = getelementptr [45 x float], [45 x float]* @supp_ramp.v.1dim, i32 0, i32 %2418
  %2420 = load float, float* %2419, align 4
  %2421 = add i32 %2407, 1
  %2422 = mul i32 %2421, 3
  %2423 = add i32 0, %2422
  %2424 = getelementptr [45 x float], [45 x float]* @supp_ramp.v.1dim, i32 0, i32 %2423
  %2425 = load float, float* %2424, align 4
  %2426 = mul i32 %2421, 3
  %2427 = add i32 1, %2426
  %2428 = getelementptr [45 x float], [45 x float]* @supp_ramp.v.1dim, i32 0, i32 %2427
  %2429 = load float, float* %2428, align 4
  %2430 = mul i32 %2421, 3
  %2431 = add i32 2, %2430
  %2432 = getelementptr [45 x float], [45 x float]* @supp_ramp.v.1dim, i32 0, i32 %2431
  %2433 = load float, float* %2432, align 4
  %2434 = fsub fast float %2425, %2412
  %2435 = fsub fast float %2429, %2416
  %2436 = fsub fast float %2433, %2420
  %2437 = fmul fast float %2434, %2408
  %2438 = fmul fast float %2435, %2408
  %2439 = fmul fast float %2436, %2408
  %2440 = fadd fast float %2437, %2412
  %2441 = fadd fast float %2438, %2416
  %2442 = fadd fast float %2439, %2420
  %2443 = fmul fast float %2154, %2440
  %2444 = fmul fast float %2155, %2441
  %2445 = fmul fast float %2156, %2442
  %2446 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 17)  ; CBufferLoadLegacy(handle,regIndex)
  %2447 = extractvalue %dx.types.CBufRet.f32 %2446, 0
  %2448 = fmul fast float %2219, %2219
  %2449 = fmul fast float %2448, %2221
  %2450 = fmul fast float %2449, %2379
  %2451 = fmul fast float %2450, %2390
  %2452 = fmul fast float %2451, %2398
  %2453 = fmul fast float %2452, %2447
  %2454 = fmul fast float %2443, %2443
  %2455 = fmul fast float %2454, 5.000000e+00
  %2456 = fmul fast float %2455, %2453
  %2457 = fmul fast float %2444, %2444
  %2458 = fmul fast float %2457, 5.000000e+00
  %2459 = fmul fast float %2458, %2453
  %2460 = fmul fast float %2453, 5.000000e+00
  %2461 = fmul fast float %2445, %2445
  %2462 = fmul fast float %2461, %2460
  %2463 = call float @dx.op.binary.f32(i32 36, float %2456, float 2.000000e+00)  ; FMin(a,b)
  %2464 = call float @dx.op.binary.f32(i32 36, float %2459, float 2.000000e+00)  ; FMin(a,b)
  %2465 = call float @dx.op.binary.f32(i32 36, float %2462, float 2.000000e+00)  ; FMin(a,b)
  %2466 = select i1 %2201, float 0x3FD3333340000000, float 7.500000e-01
  %2467 = fmul float %2466, %2453
  br label %5671

; <label>:2468                                    ; preds = %634
  %2469 = and i32 %674, 511
  %2470 = mul nuw nsw i32 %2469, 20
  %2471 = add nuw nsw i32 %2470, 4
  %2472 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %2471, i32 undef)  ; BufferLoad(srv,index,wot)
  %2473 = extractvalue %dx.types.ResRet.i32 %2472, 0
  %2474 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %2470, i32 undef)  ; BufferLoad(srv,index,wot)
  %2475 = extractvalue %dx.types.ResRet.i32 %2474, 0
  %2476 = and i32 %2475, 255
  %2477 = uitofp i32 %2476 to float
  %2478 = lshr i32 %2475, 8
  %2479 = and i32 %2478, 255
  %2480 = uitofp i32 %2479 to float
  %2481 = lshr i32 %2475, 16
  %2482 = and i32 %2481, 255
  %2483 = uitofp i32 %2482 to float
  %2484 = lshr i32 %2475, 24
  %2485 = uitofp i32 %2484 to float
  %2486 = fmul fast float %2477, 0x3F70101020000000
  %2487 = fmul fast float %2480, 0x3F70101020000000
  %2488 = fmul fast float %2483, 0x3F70101020000000
  %2489 = fmul fast float %2485, 0x3F70101020000000
  %2490 = lshr i32 %2473, 8
  %2491 = and i32 %2490, 65535
  %2492 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2491)  ; LegacyF16ToF32(value)
  %2493 = fcmp fast oeq float %2492, 0.000000e+00
  br i1 %2493, label %2593, label %2494, !dx.controlflow.hints !51

; <label>:2494                                    ; preds = %2468
  %2495 = fmul fast float %2492, %78
  %2496 = fptosi float %2495 to i32
  %2497 = fmul fast float %2492, %79
  %2498 = fptosi float %2497 to i32
  %2499 = call i32 @dx.op.binary.i32(i32 37, i32 1, i32 %2496)  ; IMax(a,b)
  %2500 = call i32 @dx.op.binary.i32(i32 37, i32 1, i32 %2498)  ; IMax(a,b)
  %2501 = sub i32 %77, %2500
  %2502 = or i32 %2501, %76
  %2503 = icmp slt i32 %2502, 0
  %2504 = fptosi float %72 to i32
  %2505 = fptosi float %73 to i32
  %2506 = icmp sge i32 %76, %2504
  %2507 = icmp sge i32 %2501, %2505
  %2508 = or i1 %2506, %2507
  %2509 = or i1 %2503, %2508
  br i1 %2509, label %2523, label %2510, !dx.controlflow.hints !52

; <label>:2510                                    ; preds = %2494
  %2511 = lshr i32 %2501, 2
  %2512 = mul i32 %97, %2511
  %2513 = add i32 %115, %2512
  %2514 = shl i32 %2513, 2
  %2515 = shl i32 %2501, 3
  %2516 = and i32 %2515, 24
  %2517 = or i32 %2516, %106
  %2518 = shl i32 1, %2517
  %2519 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %2514, i32 undef)  ; BufferLoad(srv,index,wot)
  %2520 = extractvalue %dx.types.ResRet.i32 %2519, 0
  %2521 = and i32 %2520, %2518
  %2522 = icmp ne i32 %2521, 0
  br label %2523

; <label>:2523                                    ; preds = %2510, %2494
  %2524 = phi i1 [ %2522, %2510 ], [ false, %2494 ]
  %2525 = add i32 %2500, %77
  %2526 = or i32 %2525, %76
  %2527 = icmp slt i32 %2526, 0
  %2528 = icmp sge i32 %2525, %2505
  %2529 = or i1 %2506, %2528
  %2530 = or i1 %2527, %2529
  br i1 %2530, label %2544, label %2531, !dx.controlflow.hints !52

; <label>:2531                                    ; preds = %2523
  %2532 = lshr i32 %2525, 2
  %2533 = mul i32 %97, %2532
  %2534 = add i32 %115, %2533
  %2535 = shl i32 %2534, 2
  %2536 = shl i32 %2525, 3
  %2537 = and i32 %2536, 24
  %2538 = or i32 %2537, %106
  %2539 = shl i32 1, %2538
  %2540 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %2535, i32 undef)  ; BufferLoad(srv,index,wot)
  %2541 = extractvalue %dx.types.ResRet.i32 %2540, 0
  %2542 = and i32 %2541, %2539
  %2543 = icmp ne i32 %2542, 0
  br label %2544

; <label>:2544                                    ; preds = %2531, %2523
  %2545 = phi i1 [ %2543, %2531 ], [ false, %2523 ]
  %2546 = and i1 %2524, %2545
  %2547 = sub i32 %76, %2499
  %2548 = or i32 %2547, %77
  %2549 = icmp slt i32 %2548, 0
  %2550 = icmp sge i32 %2547, %2504
  %2551 = icmp sge i32 %77, %2505
  %2552 = or i1 %2550, %2551
  %2553 = or i1 %2549, %2552
  br i1 %2553, label %2567, label %2554, !dx.controlflow.hints !52

; <label>:2554                                    ; preds = %2544
  %2555 = lshr i32 %2547, 3
  %2556 = add i32 %94, %2555
  %2557 = add i32 %2556, %113
  %2558 = add i32 %2557, %98
  %2559 = shl i32 %2558, 2
  %2560 = and i32 %2547, 7
  %2561 = or i32 %2560, %105
  %2562 = shl i32 1, %2561
  %2563 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %2559, i32 undef)  ; BufferLoad(srv,index,wot)
  %2564 = extractvalue %dx.types.ResRet.i32 %2563, 0
  %2565 = and i32 %2564, %2562
  %2566 = icmp ne i32 %2565, 0
  br label %2567

; <label>:2567                                    ; preds = %2554, %2544
  %2568 = phi i1 [ %2566, %2554 ], [ false, %2544 ]
  %2569 = and i1 %2546, %2568
  %2570 = add i32 %2499, %76
  %2571 = or i32 %2570, %77
  %2572 = icmp slt i32 %2571, 0
  %2573 = icmp sge i32 %2570, %2504
  %2574 = or i1 %2573, %2551
  %2575 = or i1 %2572, %2574
  br i1 %2575, label %2589, label %2576, !dx.controlflow.hints !52

; <label>:2576                                    ; preds = %2567
  %2577 = lshr i32 %2570, 3
  %2578 = add i32 %94, %2577
  %2579 = add i32 %2578, %113
  %2580 = add i32 %2579, %98
  %2581 = shl i32 %2580, 2
  %2582 = and i32 %2570, 7
  %2583 = or i32 %2582, %105
  %2584 = shl i32 1, %2583
  %2585 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %2581, i32 undef)  ; BufferLoad(srv,index,wot)
  %2586 = extractvalue %dx.types.ResRet.i32 %2585, 0
  %2587 = and i32 %2586, %2584
  %2588 = icmp ne i32 %2587, 0
  br label %2589

; <label>:2589                                    ; preds = %2576, %2567
  %2590 = phi i1 [ %2588, %2576 ], [ false, %2567 ]
  %2591 = and i1 %2569, %2590
  %2592 = xor i1 %2591, true
  br label %2593

; <label>:2593                                    ; preds = %2589, %2468
  %2594 = phi i1 [ %2592, %2589 ], [ false, %2468 ]
  %2595 = and i32 %674, 1114112
  %2596 = icmp ne i32 %2595, 0
  %2597 = and i1 %2596, %130
  %2598 = or i1 %2597, %2594
  %2599 = select i1 %2598, float %2486, float 0.000000e+00
  %2600 = select i1 %2598, float %2487, float 0.000000e+00
  %2601 = select i1 %2598, float %2488, float 0.000000e+00
  %2602 = select i1 %2598, float %2489, float 0.000000e+00
  br label %5671

; <label>:2603                                    ; preds = %634
  %2604 = and i32 %674, 511
  %2605 = mul nuw nsw i32 %2604, 20
  %2606 = add nuw nsw i32 %2605, 4
  %2607 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %2606, i32 undef)  ; BufferLoad(srv,index,wot)
  %2608 = extractvalue %dx.types.ResRet.i32 %2607, 0
  %2609 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %2605, i32 undef)  ; BufferLoad(srv,index,wot)
  %2610 = extractvalue %dx.types.ResRet.i32 %2609, 0
  %2611 = and i32 %674, 524288
  %2612 = icmp ne i32 %2611, 0
  %2613 = and i32 %674, 2097152
  %2614 = icmp ne i32 %2613, 0
  %2615 = lshr i32 %2608, 8
  %2616 = and i32 %2615, 65535
  %2617 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2616)  ; LegacyF16ToF32(value)
  %2618 = lshr i32 %2608, 24
  %2619 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 228)  ; CBufferLoadLegacy(handle,regIndex)
  %2620 = extractvalue %dx.types.CBufRet.f32 %2619, 2
  %2621 = extractvalue %dx.types.CBufRet.f32 %2619, 0
  %2622 = call float @dx.op.binary.f32(i32 35, float %57, float %2621)  ; FMax(a,b)
  %2623 = call float @dx.op.binary.f32(i32 36, float %2622, float %2620)  ; FMin(a,b)
  %2624 = call float @dx.op.binary.f32(i32 36, float %57, float %2621)  ; FMin(a,b)
  %2625 = call float @dx.op.binary.f32(i32 35, float %2624, float %2623)  ; FMax(a,b)
  %2626 = fcmp fast oeq float %57, %2625
  %2627 = extractvalue %dx.types.CBufRet.f32 %2619, 3
  %2628 = extractvalue %dx.types.CBufRet.f32 %2619, 1
  %2629 = call float @dx.op.binary.f32(i32 35, float %58, float %2628)  ; FMax(a,b)
  %2630 = call float @dx.op.binary.f32(i32 36, float %2629, float %2627)  ; FMin(a,b)
  %2631 = call float @dx.op.binary.f32(i32 36, float %58, float %2628)  ; FMin(a,b)
  %2632 = call float @dx.op.binary.f32(i32 35, float %2631, float %2630)  ; FMax(a,b)
  %2633 = fcmp fast oeq float %58, %2632
  %2634 = and i1 %2626, %2633
  %2635 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 224)  ; CBufferLoadLegacy(handle,regIndex)
  %2636 = extractvalue %dx.types.CBufRet.f32 %2635, 1
  %2637 = select i1 %2634, float %2636, float 1.000000e+00
  %2638 = icmp ne i32 %2618, 0
  %2639 = and i1 %112, %2638
  br i1 %2639, label %2640, label %2694, !dx.controlflow.hints !58

; <label>:2640                                    ; preds = %2603
  %2641 = sitofp i32 %2618 to float
  %2642 = fmul fast float %2641, 0x3F70101020000000
  %2643 = fmul fast float %2642, %2637
  %2644 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %2645 = extractvalue %dx.types.CBufRet.f32 %2644, 3
  %2646 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %2647 = extractvalue %dx.types.CBufRet.f32 %2646, 2
  %2648 = fmul fast float %2647, %2643
  %2649 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2650 = extractvalue %dx.types.CBufRet.f32 %2649, 0
  %2651 = extractvalue %dx.types.CBufRet.f32 %2649, 1
  %2652 = extractvalue %dx.types.CBufRet.f32 %2649, 2
  %2653 = extractvalue %dx.types.CBufRet.f32 %2649, 3
  %2654 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %2655 = extractvalue %dx.types.CBufRet.f32 %2654, 0
  %2656 = extractvalue %dx.types.CBufRet.f32 %2654, 1
  %2657 = extractvalue %dx.types.CBufRet.f32 %2654, 2
  %2658 = extractvalue %dx.types.CBufRet.f32 %2654, 3
  %2659 = select i1 %2612, float %2650, float %2655
  %2660 = select i1 %2612, float %2651, float %2656
  %2661 = select i1 %2612, float %2652, float %2657
  %2662 = select i1 %2612, float %2653, float %2658
  %2663 = fmul fast float %2659, %2643
  %2664 = fmul fast float %2660, %2643
  %2665 = fmul fast float %2661, %2643
  %2666 = fmul fast float %2662, %2643
  br i1 %129, label %2688, label %2667, !dx.controlflow.hints !49

; <label>:2667                                    ; preds = %2640
  %2668 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 10)  ; CBufferLoadLegacy(handle,regIndex)
  %2669 = extractvalue %dx.types.CBufRet.f32 %2668, 0
  %2670 = extractvalue %dx.types.CBufRet.f32 %2668, 1
  %2671 = extractvalue %dx.types.CBufRet.f32 %2668, 2
  %2672 = extractvalue %dx.types.CBufRet.f32 %2668, 3
  %2673 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %2674 = extractvalue %dx.types.CBufRet.f32 %2673, 0
  %2675 = extractvalue %dx.types.CBufRet.f32 %2673, 1
  %2676 = extractvalue %dx.types.CBufRet.f32 %2673, 2
  %2677 = extractvalue %dx.types.CBufRet.f32 %2673, 3
  %2678 = extractvalue %dx.types.CBufRet.f32 %2646, 1
  %2679 = fmul fast float %2674, %2663
  %2680 = fmul fast float %2679, %2678
  %2681 = fmul fast float %2675, %2664
  %2682 = fmul fast float %2681, %2678
  %2683 = fmul fast float %2676, %2665
  %2684 = fmul fast float %2683, %2678
  %2685 = fmul fast float %2677, %2666
  %2686 = fmul fast float %2685, %2678
  %2687 = fmul fast float %2678, %2648
  br label %2772

; <label>:2688                                    ; preds = %2640
  %2689 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %2690 = extractvalue %dx.types.CBufRet.f32 %2689, 0
  %2691 = extractvalue %dx.types.CBufRet.f32 %2689, 1
  %2692 = extractvalue %dx.types.CBufRet.f32 %2689, 2
  %2693 = extractvalue %dx.types.CBufRet.f32 %2689, 3
  br label %2772

; <label>:2694                                    ; preds = %2603
  %2695 = lshr i32 %2610, 24
  %2696 = uitofp i32 %2695 to float
  %2697 = fmul fast float %2696, 0x3F70101020000000
  %2698 = lshr i32 %2610, 16
  %2699 = and i32 %2698, 255
  %2700 = uitofp i32 %2699 to float
  %2701 = fmul fast float %2700, 0x3F70101020000000
  %2702 = lshr i32 %2610, 8
  %2703 = and i32 %2702, 255
  %2704 = uitofp i32 %2703 to float
  %2705 = fmul fast float %2704, 0x3F70101020000000
  %2706 = and i32 %2610, 255
  %2707 = uitofp i32 %2706 to float
  %2708 = fmul fast float %2707, 0x3F70101020000000
  %2709 = and i32 %674, 65536
  %2710 = icmp ne i32 %2709, 0
  %2711 = select i1 %2710, float 1.000000e+00, float 0.000000e+00
  %2712 = and i32 %674, 32768
  %2713 = icmp ne i32 %2712, 0
  %2714 = select i1 %2713, float 0.000000e+00, float 1.000000e+00
  %2715 = select i1 %112, float %2637, float %2714
  %2716 = fmul fast float %2708, %2715
  %2717 = fmul fast float %2705, %2715
  %2718 = fmul fast float %2701, %2715
  %2719 = fmul fast float %2697, %2715
  br i1 %129, label %2749, label %2720, !dx.controlflow.hints !50

; <label>:2720                                    ; preds = %2694
  %2721 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2722 = extractvalue %dx.types.CBufRet.f32 %2721, 0
  %2723 = extractvalue %dx.types.CBufRet.f32 %2721, 1
  %2724 = extractvalue %dx.types.CBufRet.f32 %2721, 2
  %2725 = extractvalue %dx.types.CBufRet.f32 %2721, 3
  %2726 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %2727 = extractvalue %dx.types.CBufRet.f32 %2726, 0
  %2728 = extractvalue %dx.types.CBufRet.f32 %2726, 1
  %2729 = extractvalue %dx.types.CBufRet.f32 %2726, 2
  %2730 = extractvalue %dx.types.CBufRet.f32 %2726, 3
  %2731 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %2732 = extractvalue %dx.types.CBufRet.f32 %2731, 0
  %2733 = fsub fast float %2716, %2715
  %2734 = fsub fast float %2717, %2715
  %2735 = fsub fast float %2718, %2715
  %2736 = fsub fast float %2719, %2715
  %2737 = fmul fast float %2732, %2733
  %2738 = fmul fast float %2732, %2734
  %2739 = fmul fast float %2732, %2735
  %2740 = fmul fast float %2732, %2736
  %2741 = fadd fast float %2737, %2715
  %2742 = fadd fast float %2738, %2715
  %2743 = fadd fast float %2739, %2715
  %2744 = fadd fast float %2740, %2715
  %2745 = fmul fast float %2741, %2727
  %2746 = fmul fast float %2742, %2728
  %2747 = fmul fast float %2743, %2729
  %2748 = fmul fast float %2744, %2730
  br label %2755

; <label>:2749                                    ; preds = %2694
  %2750 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %2751 = extractvalue %dx.types.CBufRet.f32 %2750, 0
  %2752 = extractvalue %dx.types.CBufRet.f32 %2750, 1
  %2753 = extractvalue %dx.types.CBufRet.f32 %2750, 2
  %2754 = extractvalue %dx.types.CBufRet.f32 %2750, 3
  br label %2755

; <label>:2755                                    ; preds = %2749, %2720
  %2756 = phi float [ %2745, %2720 ], [ %2716, %2749 ]
  %2757 = phi float [ %2746, %2720 ], [ %2717, %2749 ]
  %2758 = phi float [ %2747, %2720 ], [ %2718, %2749 ]
  %2759 = phi float [ %2748, %2720 ], [ %2719, %2749 ]
  %2760 = phi float [ %2722, %2720 ], [ %2751, %2749 ]
  %2761 = phi float [ %2723, %2720 ], [ %2752, %2749 ]
  %2762 = phi float [ %2724, %2720 ], [ %2753, %2749 ]
  %2763 = phi float [ %2725, %2720 ], [ %2754, %2749 ]
  %2764 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2765 = extractvalue %dx.types.CBufRet.f32 %2764, 0
  %2766 = fmul fast float %2765, 2.000000e+00
  %2767 = select i1 %2614, float %2766, float 1.000000e+00
  %2768 = fmul fast float %2767, %2756
  %2769 = fmul fast float %2767, %2757
  %2770 = fmul fast float %2767, %2758
  %2771 = fmul fast float %2767, %2759
  br label %2772

; <label>:2772                                    ; preds = %2755, %2688, %2667
  %2773 = phi float [ %2768, %2755 ], [ %2680, %2667 ], [ %2663, %2688 ]
  %2774 = phi float [ %2769, %2755 ], [ %2682, %2667 ], [ %2664, %2688 ]
  %2775 = phi float [ %2770, %2755 ], [ %2684, %2667 ], [ %2665, %2688 ]
  %2776 = phi float [ %2771, %2755 ], [ %2686, %2667 ], [ %2666, %2688 ]
  %2777 = phi float [ %2760, %2755 ], [ %2669, %2667 ], [ %2690, %2688 ]
  %2778 = phi float [ %2761, %2755 ], [ %2670, %2667 ], [ %2691, %2688 ]
  %2779 = phi float [ %2762, %2755 ], [ %2671, %2667 ], [ %2692, %2688 ]
  %2780 = phi float [ %2763, %2755 ], [ %2672, %2667 ], [ %2693, %2688 ]
  %2781 = phi float [ %2711, %2755 ], [ %2687, %2667 ], [ %2648, %2688 ]
  %2782 = phi float [ %2617, %2755 ], [ %2645, %2667 ], [ %2645, %2688 ]
  %2783 = fcmp fast oeq float %2782, 0.000000e+00
  br i1 %2783, label %2883, label %2784, !dx.controlflow.hints !51

; <label>:2784                                    ; preds = %2772
  %2785 = fmul fast float %2782, %78
  %2786 = fptosi float %2785 to i32
  %2787 = fmul fast float %2782, %79
  %2788 = fptosi float %2787 to i32
  %2789 = call i32 @dx.op.binary.i32(i32 37, i32 1, i32 %2786)  ; IMax(a,b)
  %2790 = call i32 @dx.op.binary.i32(i32 37, i32 1, i32 %2788)  ; IMax(a,b)
  %2791 = sub i32 %77, %2790
  %2792 = or i32 %2791, %76
  %2793 = icmp slt i32 %2792, 0
  %2794 = fptosi float %72 to i32
  %2795 = fptosi float %73 to i32
  %2796 = icmp sge i32 %76, %2794
  %2797 = icmp sge i32 %2791, %2795
  %2798 = or i1 %2796, %2797
  %2799 = or i1 %2793, %2798
  br i1 %2799, label %2813, label %2800, !dx.controlflow.hints !52

; <label>:2800                                    ; preds = %2784
  %2801 = lshr i32 %2791, 2
  %2802 = mul i32 %97, %2801
  %2803 = add i32 %115, %2802
  %2804 = shl i32 %2803, 2
  %2805 = shl i32 %2791, 3
  %2806 = and i32 %2805, 24
  %2807 = or i32 %2806, %106
  %2808 = shl i32 1, %2807
  %2809 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %2804, i32 undef)  ; BufferLoad(srv,index,wot)
  %2810 = extractvalue %dx.types.ResRet.i32 %2809, 0
  %2811 = and i32 %2810, %2808
  %2812 = icmp ne i32 %2811, 0
  br label %2813

; <label>:2813                                    ; preds = %2800, %2784
  %2814 = phi i1 [ %2812, %2800 ], [ false, %2784 ]
  %2815 = add i32 %2790, %77
  %2816 = or i32 %2815, %76
  %2817 = icmp slt i32 %2816, 0
  %2818 = icmp sge i32 %2815, %2795
  %2819 = or i1 %2796, %2818
  %2820 = or i1 %2817, %2819
  br i1 %2820, label %2834, label %2821, !dx.controlflow.hints !52

; <label>:2821                                    ; preds = %2813
  %2822 = lshr i32 %2815, 2
  %2823 = mul i32 %97, %2822
  %2824 = add i32 %115, %2823
  %2825 = shl i32 %2824, 2
  %2826 = shl i32 %2815, 3
  %2827 = and i32 %2826, 24
  %2828 = or i32 %2827, %106
  %2829 = shl i32 1, %2828
  %2830 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %2825, i32 undef)  ; BufferLoad(srv,index,wot)
  %2831 = extractvalue %dx.types.ResRet.i32 %2830, 0
  %2832 = and i32 %2831, %2829
  %2833 = icmp ne i32 %2832, 0
  br label %2834

; <label>:2834                                    ; preds = %2821, %2813
  %2835 = phi i1 [ %2833, %2821 ], [ false, %2813 ]
  %2836 = and i1 %2814, %2835
  %2837 = sub i32 %76, %2789
  %2838 = or i32 %2837, %77
  %2839 = icmp slt i32 %2838, 0
  %2840 = icmp sge i32 %2837, %2794
  %2841 = icmp sge i32 %77, %2795
  %2842 = or i1 %2840, %2841
  %2843 = or i1 %2839, %2842
  br i1 %2843, label %2857, label %2844, !dx.controlflow.hints !52

; <label>:2844                                    ; preds = %2834
  %2845 = lshr i32 %2837, 3
  %2846 = add i32 %94, %2845
  %2847 = add i32 %2846, %113
  %2848 = add i32 %2847, %98
  %2849 = shl i32 %2848, 2
  %2850 = and i32 %2837, 7
  %2851 = or i32 %2850, %105
  %2852 = shl i32 1, %2851
  %2853 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %2849, i32 undef)  ; BufferLoad(srv,index,wot)
  %2854 = extractvalue %dx.types.ResRet.i32 %2853, 0
  %2855 = and i32 %2854, %2852
  %2856 = icmp ne i32 %2855, 0
  br label %2857

; <label>:2857                                    ; preds = %2844, %2834
  %2858 = phi i1 [ %2856, %2844 ], [ false, %2834 ]
  %2859 = and i1 %2836, %2858
  %2860 = add i32 %2789, %76
  %2861 = or i32 %2860, %77
  %2862 = icmp slt i32 %2861, 0
  %2863 = icmp sge i32 %2860, %2794
  %2864 = or i1 %2863, %2841
  %2865 = or i1 %2862, %2864
  br i1 %2865, label %2879, label %2866, !dx.controlflow.hints !52

; <label>:2866                                    ; preds = %2857
  %2867 = lshr i32 %2860, 3
  %2868 = add i32 %94, %2867
  %2869 = add i32 %2868, %113
  %2870 = add i32 %2869, %98
  %2871 = shl i32 %2870, 2
  %2872 = and i32 %2860, 7
  %2873 = or i32 %2872, %105
  %2874 = shl i32 1, %2873
  %2875 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %2871, i32 undef)  ; BufferLoad(srv,index,wot)
  %2876 = extractvalue %dx.types.ResRet.i32 %2875, 0
  %2877 = and i32 %2876, %2874
  %2878 = icmp ne i32 %2877, 0
  br label %2879

; <label>:2879                                    ; preds = %2866, %2857
  %2880 = phi i1 [ %2878, %2866 ], [ false, %2857 ]
  %2881 = and i1 %2859, %2880
  %2882 = xor i1 %2881, true
  br label %2883

; <label>:2883                                    ; preds = %2879, %2772
  %2884 = phi i1 [ %2882, %2879 ], [ false, %2772 ]
  %2885 = add nuw nsw i32 %2605, 12
  %2886 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %2885, i32 undef)  ; BufferLoad(srv,index,wot)
  %2887 = extractvalue %dx.types.ResRet.i32 %2886, 0
  %2888 = and i32 %2887, 65535
  %2889 = uitofp i32 %2888 to float
  %2890 = lshr i32 %2887, 16
  %2891 = uitofp i32 %2890 to float
  %2892 = fmul fast float %2889, 0x3EF0002000000000
  %2893 = fmul fast float %2891, 0x3EF0002000000000
  %2894 = add nuw nsw i32 %2605, 8
  %2895 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %2894, i32 undef)  ; BufferLoad(srv,index,wot)
  %2896 = extractvalue %dx.types.ResRet.i32 %2895, 0
  %2897 = and i32 %2896, 65535
  %2898 = uitofp i32 %2897 to float
  %2899 = fmul fast float %2898, 0x3EF0002000000000
  %2900 = lshr i32 %2896, 16
  %2901 = uitofp i32 %2900 to float
  %2902 = fmul fast float %2901, 0x3EF0002000000000
  %2903 = fsub fast float %57, %2899
  %2904 = fdiv fast float %2903, %2892
  %2905 = fsub fast float %58, %2902
  %2906 = fdiv fast float %2905, %2893
  %2907 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2908 = extractvalue %dx.types.CBufRet.f32 %2907, 3
  %2909 = fmul fast float %2908, 0x3FA99999A0000000
  %2910 = fadd fast float %2909, %2906
  %2911 = call float @dx.op.unary.f32(i32 22, float %2904)  ; Frc(value)
  %2912 = call float @dx.op.unary.f32(i32 22, float %2910)  ; Frc(value)
  %2913 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %13, float %2911, float %2912, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2914 = extractvalue %dx.types.ResRet.f32 %2913, 1
  %2915 = extractvalue %dx.types.ResRet.f32 %2913, 3
  %2916 = and i32 %2608, 255
  %2917 = uitofp i32 %2916 to float
  %2918 = fmul fast float %2917, 0x4010101020000000
  %2919 = fadd fast float %2918, -5.120000e+02
  %2920 = fmul fast float %2917, 0x4001D0AFC0000000
  %2921 = fadd fast float %2920, 0xC071BEDF00000000
  %2922 = call float @dx.op.unary.f32(i32 22, float %2921)  ; Frc(value)
  %2923 = fmul fast float %2919, %2922
  %2924 = fadd fast float %2923, %2919
  %2925 = fmul fast float %2917, 0x3FF3D290C0000000
  %2926 = fadd fast float %2925, 0xC063BEBE20000000
  %2927 = call float @dx.op.unary.f32(i32 22, float %2926)  ; Frc(value)
  %2928 = fmul fast float %2919, %2927
  %2929 = fadd fast float %2928, %2919
  %2930 = fmul fast float %2924, %2929
  %2931 = call float @dx.op.unary.f32(i32 22, float %2930)  ; Frc(value)
  %2932 = fadd fast float %2906, 1.000000e+00
  %2933 = fmul fast float %2932, 0x401E322D00000000
  %2934 = fmul fast float %2933, %2931
  %2935 = fmul fast float %2908, 0x3FE921FB60000000
  %2936 = fadd fast float %2935, %2934
  %2937 = call float @dx.op.unary.f32(i32 13, float %2936)  ; Sin(value)
  %2938 = uitofp i32 %76 to float
  %2939 = uitofp i32 %77 to float
  %2940 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %2941 = extractvalue %dx.types.CBufRet.f32 %2940, 2
  %2942 = fmul fast float %2941, 0x40165A5B00000000
  %2943 = fadd fast float %2942, %2938
  %2944 = fadd fast float %2942, %2939
  %2945 = extractvalue %dx.types.CBufRet.f32 %2940, 0
  %2946 = fmul fast float %2945, 2.000000e+00
  %2947 = fadd fast float %2946, -1.000000e+00
  %2948 = fmul fast float %2947, %2943
  %2949 = fmul fast float %2947, %2944
  %2950 = call float @dx.op.dot2.f32(i32 54, float %2948, float %2949, float 0x3FB12E2860000000, float 0x3F77E8B200000000)  ; Dot2(ax,ay,bx,by)
  %2951 = call float @dx.op.unary.f32(i32 22, float %2950)  ; Frc(value)
  %2952 = fmul fast float %2951, 0x404A7DD040000000
  %2953 = call float @dx.op.unary.f32(i32 22, float %2952)  ; Frc(value)
  br i1 %2884, label %2954, label %2965, !dx.controlflow.hints !59

; <label>:2954                                    ; preds = %2883
  %2955 = icmp ne i32 %676, 0
  %2956 = fadd fast float %2937, 1.000000e+00
  %2957 = call float @dx.op.unary.f32(i32 23, float %2953)  ; Log(value)
  %2958 = fmul fast float %2957, %2956
  %2959 = call float @dx.op.unary.f32(i32 21, float %2958)  ; Exp(value)
  %2960 = and i1 %129, %2955
  %2961 = uitofp i1 %2960 to float
  %2962 = fmul fast float %2781, %2776
  %2963 = fmul fast float %2962, %2961
  %2964 = fmul fast float %2963, %2959
  br label %5671

; <label>:2965                                    ; preds = %2883
  %2966 = and i32 %674, 262144
  %2967 = fcmp fast ole float %2781, 0.000000e+00
  %2968 = icmp eq i32 %2966, 0
  %2969 = and i1 %129, %2968
  %2970 = or i1 %2967, %2969
  br i1 %2970, label %5671, label %2971, !dx.controlflow.hints !60

; <label>:2971                                    ; preds = %2965
  %2972 = fmul fast float %2908, 0x3FF921FB60000000
  %2973 = fadd fast float %2972, %2934
  %2974 = call float @dx.op.unary.f32(i32 13, float %2973)  ; Sin(value)
  %2975 = fmul fast float %2974, 7.500000e-01
  %2976 = fadd fast float %2975, 1.500000e+00
  %2977 = fmul fast float %2889, 0x3E8999CCE0000000
  %2978 = fmul fast float %2977, %72
  %2979 = fmul fast float %73, 0x3E8999CCE0000000
  %2980 = fmul fast float %2979, %2891
  %2981 = call float @dx.op.binary.f32(i32 35, float %2978, float 5.000000e-01)  ; FMax(a,b)
  %2982 = call float @dx.op.binary.f32(i32 35, float %2980, float 5.000000e-01)  ; FMax(a,b)
  %2983 = fmul fast float %2976, %2981
  %2984 = fmul fast float %2982, %2976
  %2985 = fsub fast float 1.000000e+00, %2914
  %2986 = fadd fast float %2985, %2953
  %2987 = fmul fast float %2986, 5.000000e+00
  %2988 = call float @dx.op.unary.f32(i32 28, float %2983)  ; Round_pi(value)
  %2989 = call float @dx.op.unary.f32(i32 28, float %2984)  ; Round_pi(value)
  %2990 = fptosi float %2988 to i32
  %2991 = fptosi float %2989 to i32
  %2992 = sub i32 %77, %2991
  %2993 = or i32 %2992, %76
  %2994 = icmp slt i32 %2993, 0
  %2995 = fptosi float %72 to i32
  %2996 = fptosi float %73 to i32
  %2997 = icmp sge i32 %76, %2995
  %2998 = icmp sge i32 %2992, %2996
  %2999 = or i1 %2997, %2998
  %3000 = or i1 %2994, %2999
  br i1 %3000, label %3014, label %3001, !dx.controlflow.hints !52

; <label>:3001                                    ; preds = %2971
  %3002 = lshr i32 %2992, 2
  %3003 = mul i32 %97, %3002
  %3004 = add i32 %115, %3003
  %3005 = shl i32 %3004, 2
  %3006 = shl i32 %2992, 3
  %3007 = and i32 %3006, 24
  %3008 = or i32 %3007, %106
  %3009 = shl i32 1, %3008
  %3010 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %3005, i32 undef)  ; BufferLoad(srv,index,wot)
  %3011 = extractvalue %dx.types.ResRet.i32 %3010, 0
  %3012 = and i32 %3011, %3009
  %3013 = icmp ne i32 %3012, 0
  br label %3014

; <label>:3014                                    ; preds = %3001, %2971
  %3015 = phi i1 [ %3013, %3001 ], [ false, %2971 ]
  %3016 = xor i1 %3015, true
  %3017 = uitofp i1 %3016 to float
  %3018 = fadd fast float %3017, %2987
  %3019 = add i32 %2991, %77
  %3020 = or i32 %3019, %76
  %3021 = icmp slt i32 %3020, 0
  %3022 = icmp sge i32 %3019, %2996
  %3023 = or i1 %2997, %3022
  %3024 = or i1 %3021, %3023
  br i1 %3024, label %3038, label %3025, !dx.controlflow.hints !52

; <label>:3025                                    ; preds = %3014
  %3026 = lshr i32 %3019, 2
  %3027 = mul i32 %97, %3026
  %3028 = add i32 %115, %3027
  %3029 = shl i32 %3028, 2
  %3030 = shl i32 %3019, 3
  %3031 = and i32 %3030, 24
  %3032 = or i32 %3031, %106
  %3033 = shl i32 1, %3032
  %3034 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %3029, i32 undef)  ; BufferLoad(srv,index,wot)
  %3035 = extractvalue %dx.types.ResRet.i32 %3034, 0
  %3036 = and i32 %3035, %3033
  %3037 = icmp ne i32 %3036, 0
  br label %3038

; <label>:3038                                    ; preds = %3025, %3014
  %3039 = phi i1 [ %3037, %3025 ], [ false, %3014 ]
  %3040 = xor i1 %3039, true
  %3041 = uitofp i1 %3040 to float
  %3042 = fadd fast float %3018, %3041
  %3043 = sub i32 %76, %2990
  %3044 = or i32 %3043, %77
  %3045 = icmp slt i32 %3044, 0
  %3046 = icmp sge i32 %3043, %2995
  %3047 = icmp sge i32 %77, %2996
  %3048 = or i1 %3046, %3047
  %3049 = or i1 %3045, %3048
  br i1 %3049, label %3063, label %3050, !dx.controlflow.hints !52

; <label>:3050                                    ; preds = %3038
  %3051 = lshr i32 %3043, 3
  %3052 = add i32 %94, %3051
  %3053 = add i32 %3052, %113
  %3054 = add i32 %3053, %98
  %3055 = shl i32 %3054, 2
  %3056 = and i32 %3043, 7
  %3057 = or i32 %3056, %105
  %3058 = shl i32 1, %3057
  %3059 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %3055, i32 undef)  ; BufferLoad(srv,index,wot)
  %3060 = extractvalue %dx.types.ResRet.i32 %3059, 0
  %3061 = and i32 %3060, %3058
  %3062 = icmp ne i32 %3061, 0
  br label %3063

; <label>:3063                                    ; preds = %3050, %3038
  %3064 = phi i1 [ %3062, %3050 ], [ false, %3038 ]
  %3065 = xor i1 %3064, true
  %3066 = uitofp i1 %3065 to float
  %3067 = fadd fast float %3042, %3066
  %3068 = add i32 %2990, %76
  %3069 = or i32 %3068, %77
  %3070 = icmp slt i32 %3069, 0
  %3071 = icmp sge i32 %3068, %2995
  %3072 = or i1 %3071, %3047
  %3073 = or i1 %3070, %3072
  br i1 %3073, label %3087, label %3074, !dx.controlflow.hints !52

; <label>:3074                                    ; preds = %3063
  %3075 = lshr i32 %3068, 3
  %3076 = add i32 %94, %3075
  %3077 = add i32 %3076, %113
  %3078 = add i32 %3077, %98
  %3079 = shl i32 %3078, 2
  %3080 = and i32 %3068, 7
  %3081 = or i32 %3080, %105
  %3082 = shl i32 1, %3081
  %3083 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %3079, i32 undef)  ; BufferLoad(srv,index,wot)
  %3084 = extractvalue %dx.types.ResRet.i32 %3083, 0
  %3085 = and i32 %3084, %3082
  %3086 = icmp ne i32 %3085, 0
  br label %3087

; <label>:3087                                    ; preds = %3074, %3063
  %3088 = phi i1 [ %3086, %3074 ], [ false, %3063 ]
  %3089 = xor i1 %3088, true
  %3090 = uitofp i1 %3089 to float
  %3091 = fadd fast float %3067, %3090
  %3092 = or i32 %2992, %3043
  %3093 = icmp slt i32 %3092, 0
  %3094 = or i1 %3046, %2998
  %3095 = or i1 %3093, %3094
  br i1 %3095, label %3113, label %3096, !dx.controlflow.hints !52

; <label>:3096                                    ; preds = %3087
  %3097 = lshr i32 %2992, 2
  %3098 = mul i32 %97, %3097
  %3099 = lshr i32 %3043, 3
  %3100 = add i32 %94, %3099
  %3101 = add i32 %3100, %113
  %3102 = add i32 %3101, %3098
  %3103 = shl i32 %3102, 2
  %3104 = shl i32 %2992, 3
  %3105 = and i32 %3104, 24
  %3106 = and i32 %3043, 7
  %3107 = or i32 %3105, %3106
  %3108 = shl i32 1, %3107
  %3109 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %3103, i32 undef)  ; BufferLoad(srv,index,wot)
  %3110 = extractvalue %dx.types.ResRet.i32 %3109, 0
  %3111 = and i32 %3110, %3108
  %3112 = icmp ne i32 %3111, 0
  br label %3113

; <label>:3113                                    ; preds = %3096, %3087
  %3114 = phi i1 [ %3112, %3096 ], [ false, %3087 ]
  %3115 = xor i1 %3114, true
  %3116 = uitofp i1 %3115 to float
  %3117 = fadd fast float %3091, %3116
  %3118 = or i32 %2992, %3068
  %3119 = icmp slt i32 %3118, 0
  %3120 = or i1 %3071, %2998
  %3121 = or i1 %3119, %3120
  br i1 %3121, label %3139, label %3122, !dx.controlflow.hints !52

; <label>:3122                                    ; preds = %3113
  %3123 = lshr i32 %2992, 2
  %3124 = mul i32 %97, %3123
  %3125 = lshr i32 %3068, 3
  %3126 = add i32 %94, %3125
  %3127 = add i32 %3126, %113
  %3128 = add i32 %3127, %3124
  %3129 = shl i32 %3128, 2
  %3130 = shl i32 %2992, 3
  %3131 = and i32 %3130, 24
  %3132 = and i32 %3068, 7
  %3133 = or i32 %3131, %3132
  %3134 = shl i32 1, %3133
  %3135 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %3129, i32 undef)  ; BufferLoad(srv,index,wot)
  %3136 = extractvalue %dx.types.ResRet.i32 %3135, 0
  %3137 = and i32 %3136, %3134
  %3138 = icmp ne i32 %3137, 0
  br label %3139

; <label>:3139                                    ; preds = %3122, %3113
  %3140 = phi i1 [ %3138, %3122 ], [ false, %3113 ]
  %3141 = xor i1 %3140, true
  %3142 = uitofp i1 %3141 to float
  %3143 = fadd fast float %3117, %3142
  %3144 = or i32 %3019, %3043
  %3145 = icmp slt i32 %3144, 0
  %3146 = or i1 %3046, %3022
  %3147 = or i1 %3145, %3146
  br i1 %3147, label %3165, label %3148, !dx.controlflow.hints !52

; <label>:3148                                    ; preds = %3139
  %3149 = lshr i32 %3019, 2
  %3150 = mul i32 %97, %3149
  %3151 = lshr i32 %3043, 3
  %3152 = add i32 %94, %3151
  %3153 = add i32 %3152, %113
  %3154 = add i32 %3153, %3150
  %3155 = shl i32 %3154, 2
  %3156 = shl i32 %3019, 3
  %3157 = and i32 %3156, 24
  %3158 = and i32 %3043, 7
  %3159 = or i32 %3157, %3158
  %3160 = shl i32 1, %3159
  %3161 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %3155, i32 undef)  ; BufferLoad(srv,index,wot)
  %3162 = extractvalue %dx.types.ResRet.i32 %3161, 0
  %3163 = and i32 %3162, %3160
  %3164 = icmp ne i32 %3163, 0
  br label %3165

; <label>:3165                                    ; preds = %3148, %3139
  %3166 = phi i1 [ %3164, %3148 ], [ false, %3139 ]
  %3167 = xor i1 %3166, true
  %3168 = uitofp i1 %3167 to float
  %3169 = fadd fast float %3143, %3168
  %3170 = or i32 %3019, %3068
  %3171 = icmp slt i32 %3170, 0
  %3172 = or i1 %3071, %3022
  %3173 = or i1 %3171, %3172
  br i1 %3173, label %3191, label %3174, !dx.controlflow.hints !52

; <label>:3174                                    ; preds = %3165
  %3175 = lshr i32 %3019, 2
  %3176 = mul i32 %97, %3175
  %3177 = lshr i32 %3068, 3
  %3178 = add i32 %94, %3177
  %3179 = add i32 %3178, %113
  %3180 = add i32 %3179, %3176
  %3181 = shl i32 %3180, 2
  %3182 = shl i32 %3019, 3
  %3183 = and i32 %3182, 24
  %3184 = and i32 %3068, 7
  %3185 = or i32 %3183, %3184
  %3186 = shl i32 1, %3185
  %3187 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %3181, i32 undef)  ; BufferLoad(srv,index,wot)
  %3188 = extractvalue %dx.types.ResRet.i32 %3187, 0
  %3189 = and i32 %3188, %3186
  %3190 = icmp ne i32 %3189, 0
  br label %3191

; <label>:3191                                    ; preds = %3174, %3165
  %3192 = phi i1 [ %3190, %3174 ], [ false, %3165 ]
  %3193 = xor i1 %3192, true
  %3194 = uitofp i1 %3193 to float
  %3195 = fadd fast float %3169, %3194
  %3196 = fmul fast float %2983, 2.000000e+00
  %3197 = fmul fast float %2984, 2.000000e+00
  %3198 = call float @dx.op.unary.f32(i32 28, float %3196)  ; Round_pi(value)
  %3199 = call float @dx.op.unary.f32(i32 28, float %3197)  ; Round_pi(value)
  %3200 = fptosi float %3198 to i32
  %3201 = fptosi float %3199 to i32
  %3202 = sub i32 %77, %3201
  %3203 = or i32 %3202, %76
  %3204 = icmp slt i32 %3203, 0
  %3205 = icmp sge i32 %3202, %2996
  %3206 = or i1 %2997, %3205
  %3207 = or i1 %3204, %3206
  br i1 %3207, label %3221, label %3208, !dx.controlflow.hints !52

; <label>:3208                                    ; preds = %3191
  %3209 = lshr i32 %3202, 2
  %3210 = mul i32 %97, %3209
  %3211 = add i32 %115, %3210
  %3212 = shl i32 %3211, 2
  %3213 = shl i32 %3202, 3
  %3214 = and i32 %3213, 24
  %3215 = or i32 %3214, %106
  %3216 = shl i32 1, %3215
  %3217 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %3212, i32 undef)  ; BufferLoad(srv,index,wot)
  %3218 = extractvalue %dx.types.ResRet.i32 %3217, 0
  %3219 = and i32 %3218, %3216
  %3220 = icmp ne i32 %3219, 0
  br label %3221

; <label>:3221                                    ; preds = %3208, %3191
  %3222 = phi i1 [ %3220, %3208 ], [ false, %3191 ]
  %3223 = xor i1 %3222, true
  %3224 = uitofp i1 %3223 to float
  %3225 = fadd fast float %3195, %3224
  %3226 = add i32 %3201, %77
  %3227 = or i32 %3226, %76
  %3228 = icmp slt i32 %3227, 0
  %3229 = icmp sge i32 %3226, %2996
  %3230 = or i1 %2997, %3229
  %3231 = or i1 %3228, %3230
  br i1 %3231, label %3245, label %3232, !dx.controlflow.hints !52

; <label>:3232                                    ; preds = %3221
  %3233 = lshr i32 %3226, 2
  %3234 = mul i32 %97, %3233
  %3235 = add i32 %115, %3234
  %3236 = shl i32 %3235, 2
  %3237 = shl i32 %3226, 3
  %3238 = and i32 %3237, 24
  %3239 = or i32 %3238, %106
  %3240 = shl i32 1, %3239
  %3241 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %3236, i32 undef)  ; BufferLoad(srv,index,wot)
  %3242 = extractvalue %dx.types.ResRet.i32 %3241, 0
  %3243 = and i32 %3242, %3240
  %3244 = icmp ne i32 %3243, 0
  br label %3245

; <label>:3245                                    ; preds = %3232, %3221
  %3246 = phi i1 [ %3244, %3232 ], [ false, %3221 ]
  %3247 = xor i1 %3246, true
  %3248 = uitofp i1 %3247 to float
  %3249 = fadd fast float %3225, %3248
  %3250 = sub i32 %76, %3200
  %3251 = or i32 %3250, %77
  %3252 = icmp slt i32 %3251, 0
  %3253 = icmp sge i32 %3250, %2995
  %3254 = or i1 %3253, %3047
  %3255 = or i1 %3252, %3254
  br i1 %3255, label %3269, label %3256, !dx.controlflow.hints !52

; <label>:3256                                    ; preds = %3245
  %3257 = lshr i32 %3250, 3
  %3258 = add i32 %94, %3257
  %3259 = add i32 %3258, %113
  %3260 = add i32 %3259, %98
  %3261 = shl i32 %3260, 2
  %3262 = and i32 %3250, 7
  %3263 = or i32 %3262, %105
  %3264 = shl i32 1, %3263
  %3265 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %3261, i32 undef)  ; BufferLoad(srv,index,wot)
  %3266 = extractvalue %dx.types.ResRet.i32 %3265, 0
  %3267 = and i32 %3266, %3264
  %3268 = icmp ne i32 %3267, 0
  br label %3269

; <label>:3269                                    ; preds = %3256, %3245
  %3270 = phi i1 [ %3268, %3256 ], [ false, %3245 ]
  %3271 = xor i1 %3270, true
  %3272 = uitofp i1 %3271 to float
  %3273 = fadd fast float %3249, %3272
  %3274 = add i32 %3200, %76
  %3275 = or i32 %3274, %77
  %3276 = icmp slt i32 %3275, 0
  %3277 = icmp sge i32 %3274, %2995
  %3278 = or i1 %3277, %3047
  %3279 = or i1 %3276, %3278
  br i1 %3279, label %3293, label %3280, !dx.controlflow.hints !52

; <label>:3280                                    ; preds = %3269
  %3281 = lshr i32 %3274, 3
  %3282 = add i32 %94, %3281
  %3283 = add i32 %3282, %113
  %3284 = add i32 %3283, %98
  %3285 = shl i32 %3284, 2
  %3286 = and i32 %3274, 7
  %3287 = or i32 %3286, %105
  %3288 = shl i32 1, %3287
  %3289 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %3285, i32 undef)  ; BufferLoad(srv,index,wot)
  %3290 = extractvalue %dx.types.ResRet.i32 %3289, 0
  %3291 = and i32 %3290, %3288
  %3292 = icmp ne i32 %3291, 0
  br label %3293

; <label>:3293                                    ; preds = %3280, %3269
  %3294 = phi i1 [ %3292, %3280 ], [ false, %3269 ]
  %3295 = xor i1 %3294, true
  %3296 = uitofp i1 %3295 to float
  %3297 = fadd fast float %3273, %3296
  %3298 = or i32 %3202, %3250
  %3299 = icmp slt i32 %3298, 0
  %3300 = or i1 %3253, %3205
  %3301 = or i1 %3299, %3300
  br i1 %3301, label %3319, label %3302, !dx.controlflow.hints !52

; <label>:3302                                    ; preds = %3293
  %3303 = lshr i32 %3202, 2
  %3304 = mul i32 %97, %3303
  %3305 = lshr i32 %3250, 3
  %3306 = add i32 %94, %3305
  %3307 = add i32 %3306, %113
  %3308 = add i32 %3307, %3304
  %3309 = shl i32 %3308, 2
  %3310 = shl i32 %3202, 3
  %3311 = and i32 %3310, 24
  %3312 = and i32 %3250, 7
  %3313 = or i32 %3311, %3312
  %3314 = shl i32 1, %3313
  %3315 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %3309, i32 undef)  ; BufferLoad(srv,index,wot)
  %3316 = extractvalue %dx.types.ResRet.i32 %3315, 0
  %3317 = and i32 %3316, %3314
  %3318 = icmp ne i32 %3317, 0
  br label %3319

; <label>:3319                                    ; preds = %3302, %3293
  %3320 = phi i1 [ %3318, %3302 ], [ false, %3293 ]
  %3321 = xor i1 %3320, true
  %3322 = uitofp i1 %3321 to float
  %3323 = fadd fast float %3297, %3322
  %3324 = or i32 %3202, %3274
  %3325 = icmp slt i32 %3324, 0
  %3326 = or i1 %3277, %3205
  %3327 = or i1 %3325, %3326
  br i1 %3327, label %3345, label %3328, !dx.controlflow.hints !52

; <label>:3328                                    ; preds = %3319
  %3329 = lshr i32 %3202, 2
  %3330 = mul i32 %97, %3329
  %3331 = lshr i32 %3274, 3
  %3332 = add i32 %94, %3331
  %3333 = add i32 %3332, %113
  %3334 = add i32 %3333, %3330
  %3335 = shl i32 %3334, 2
  %3336 = shl i32 %3202, 3
  %3337 = and i32 %3336, 24
  %3338 = and i32 %3274, 7
  %3339 = or i32 %3337, %3338
  %3340 = shl i32 1, %3339
  %3341 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %3335, i32 undef)  ; BufferLoad(srv,index,wot)
  %3342 = extractvalue %dx.types.ResRet.i32 %3341, 0
  %3343 = and i32 %3342, %3340
  %3344 = icmp ne i32 %3343, 0
  br label %3345

; <label>:3345                                    ; preds = %3328, %3319
  %3346 = phi i1 [ %3344, %3328 ], [ false, %3319 ]
  %3347 = xor i1 %3346, true
  %3348 = uitofp i1 %3347 to float
  %3349 = fadd fast float %3323, %3348
  %3350 = or i32 %3226, %3250
  %3351 = icmp slt i32 %3350, 0
  %3352 = or i1 %3253, %3229
  %3353 = or i1 %3351, %3352
  br i1 %3353, label %3371, label %3354, !dx.controlflow.hints !52

; <label>:3354                                    ; preds = %3345
  %3355 = lshr i32 %3226, 2
  %3356 = mul i32 %97, %3355
  %3357 = lshr i32 %3250, 3
  %3358 = add i32 %94, %3357
  %3359 = add i32 %3358, %113
  %3360 = add i32 %3359, %3356
  %3361 = shl i32 %3360, 2
  %3362 = shl i32 %3226, 3
  %3363 = and i32 %3362, 24
  %3364 = and i32 %3250, 7
  %3365 = or i32 %3363, %3364
  %3366 = shl i32 1, %3365
  %3367 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %3361, i32 undef)  ; BufferLoad(srv,index,wot)
  %3368 = extractvalue %dx.types.ResRet.i32 %3367, 0
  %3369 = and i32 %3368, %3366
  %3370 = icmp ne i32 %3369, 0
  br label %3371

; <label>:3371                                    ; preds = %3354, %3345
  %3372 = phi i1 [ %3370, %3354 ], [ false, %3345 ]
  %3373 = xor i1 %3372, true
  %3374 = uitofp i1 %3373 to float
  %3375 = fadd fast float %3349, %3374
  %3376 = or i32 %3226, %3274
  %3377 = icmp slt i32 %3376, 0
  %3378 = or i1 %3277, %3229
  %3379 = or i1 %3377, %3378
  br i1 %3379, label %3397, label %3380, !dx.controlflow.hints !52

; <label>:3380                                    ; preds = %3371
  %3381 = lshr i32 %3226, 2
  %3382 = mul i32 %97, %3381
  %3383 = lshr i32 %3274, 3
  %3384 = add i32 %94, %3383
  %3385 = add i32 %3384, %113
  %3386 = add i32 %3385, %3382
  %3387 = shl i32 %3386, 2
  %3388 = shl i32 %3226, 3
  %3389 = and i32 %3388, 24
  %3390 = and i32 %3274, 7
  %3391 = or i32 %3389, %3390
  %3392 = shl i32 1, %3391
  %3393 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %3387, i32 undef)  ; BufferLoad(srv,index,wot)
  %3394 = extractvalue %dx.types.ResRet.i32 %3393, 0
  %3395 = and i32 %3394, %3392
  %3396 = icmp ne i32 %3395, 0
  br label %3397

; <label>:3397                                    ; preds = %3380, %3371
  %3398 = phi i1 [ %3396, %3380 ], [ false, %3371 ]
  %3399 = xor i1 %3398, true
  %3400 = uitofp i1 %3399 to float
  %3401 = fadd fast float %3375, %3400
  %3402 = fmul fast float %2983, 3.000000e+00
  %3403 = fmul fast float %2984, 3.000000e+00
  %3404 = call float @dx.op.unary.f32(i32 28, float %3402)  ; Round_pi(value)
  %3405 = call float @dx.op.unary.f32(i32 28, float %3403)  ; Round_pi(value)
  %3406 = fptosi float %3404 to i32
  %3407 = fptosi float %3405 to i32
  %3408 = sub i32 %77, %3407
  %3409 = or i32 %3408, %76
  %3410 = icmp slt i32 %3409, 0
  %3411 = icmp sge i32 %3408, %2996
  %3412 = or i1 %2997, %3411
  %3413 = or i1 %3410, %3412
  br i1 %3413, label %3427, label %3414, !dx.controlflow.hints !52

; <label>:3414                                    ; preds = %3397
  %3415 = lshr i32 %3408, 2
  %3416 = mul i32 %97, %3415
  %3417 = add i32 %115, %3416
  %3418 = shl i32 %3417, 2
  %3419 = shl i32 %3408, 3
  %3420 = and i32 %3419, 24
  %3421 = or i32 %3420, %106
  %3422 = shl i32 1, %3421
  %3423 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %3418, i32 undef)  ; BufferLoad(srv,index,wot)
  %3424 = extractvalue %dx.types.ResRet.i32 %3423, 0
  %3425 = and i32 %3424, %3422
  %3426 = icmp ne i32 %3425, 0
  br label %3427

; <label>:3427                                    ; preds = %3414, %3397
  %3428 = phi i1 [ %3426, %3414 ], [ false, %3397 ]
  %3429 = xor i1 %3428, true
  %3430 = uitofp i1 %3429 to float
  %3431 = fadd fast float %3401, %3430
  %3432 = add i32 %3407, %77
  %3433 = or i32 %3432, %76
  %3434 = icmp slt i32 %3433, 0
  %3435 = icmp sge i32 %3432, %2996
  %3436 = or i1 %2997, %3435
  %3437 = or i1 %3434, %3436
  br i1 %3437, label %3451, label %3438, !dx.controlflow.hints !52

; <label>:3438                                    ; preds = %3427
  %3439 = lshr i32 %3432, 2
  %3440 = mul i32 %97, %3439
  %3441 = add i32 %115, %3440
  %3442 = shl i32 %3441, 2
  %3443 = shl i32 %3432, 3
  %3444 = and i32 %3443, 24
  %3445 = or i32 %3444, %106
  %3446 = shl i32 1, %3445
  %3447 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %3442, i32 undef)  ; BufferLoad(srv,index,wot)
  %3448 = extractvalue %dx.types.ResRet.i32 %3447, 0
  %3449 = and i32 %3448, %3446
  %3450 = icmp ne i32 %3449, 0
  br label %3451

; <label>:3451                                    ; preds = %3438, %3427
  %3452 = phi i1 [ %3450, %3438 ], [ false, %3427 ]
  %3453 = xor i1 %3452, true
  %3454 = uitofp i1 %3453 to float
  %3455 = fadd fast float %3431, %3454
  %3456 = sub i32 %76, %3406
  %3457 = or i32 %3456, %77
  %3458 = icmp slt i32 %3457, 0
  %3459 = icmp sge i32 %3456, %2995
  %3460 = or i1 %3459, %3047
  %3461 = or i1 %3458, %3460
  br i1 %3461, label %3475, label %3462, !dx.controlflow.hints !52

; <label>:3462                                    ; preds = %3451
  %3463 = lshr i32 %3456, 3
  %3464 = add i32 %94, %3463
  %3465 = add i32 %3464, %113
  %3466 = add i32 %3465, %98
  %3467 = shl i32 %3466, 2
  %3468 = and i32 %3456, 7
  %3469 = or i32 %3468, %105
  %3470 = shl i32 1, %3469
  %3471 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %3467, i32 undef)  ; BufferLoad(srv,index,wot)
  %3472 = extractvalue %dx.types.ResRet.i32 %3471, 0
  %3473 = and i32 %3472, %3470
  %3474 = icmp ne i32 %3473, 0
  br label %3475

; <label>:3475                                    ; preds = %3462, %3451
  %3476 = phi i1 [ %3474, %3462 ], [ false, %3451 ]
  %3477 = xor i1 %3476, true
  %3478 = uitofp i1 %3477 to float
  %3479 = fadd fast float %3455, %3478
  %3480 = add i32 %3406, %76
  %3481 = or i32 %3480, %77
  %3482 = icmp slt i32 %3481, 0
  %3483 = icmp sge i32 %3480, %2995
  %3484 = or i1 %3483, %3047
  %3485 = or i1 %3482, %3484
  br i1 %3485, label %3499, label %3486, !dx.controlflow.hints !52

; <label>:3486                                    ; preds = %3475
  %3487 = lshr i32 %3480, 3
  %3488 = add i32 %94, %3487
  %3489 = add i32 %3488, %113
  %3490 = add i32 %3489, %98
  %3491 = shl i32 %3490, 2
  %3492 = and i32 %3480, 7
  %3493 = or i32 %3492, %105
  %3494 = shl i32 1, %3493
  %3495 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %3491, i32 undef)  ; BufferLoad(srv,index,wot)
  %3496 = extractvalue %dx.types.ResRet.i32 %3495, 0
  %3497 = and i32 %3496, %3494
  %3498 = icmp ne i32 %3497, 0
  br label %3499

; <label>:3499                                    ; preds = %3486, %3475
  %3500 = phi i1 [ %3498, %3486 ], [ false, %3475 ]
  %3501 = xor i1 %3500, true
  %3502 = uitofp i1 %3501 to float
  %3503 = fadd fast float %3479, %3502
  %3504 = or i32 %3408, %3456
  %3505 = icmp slt i32 %3504, 0
  %3506 = or i1 %3459, %3411
  %3507 = or i1 %3505, %3506
  br i1 %3507, label %3525, label %3508, !dx.controlflow.hints !52

; <label>:3508                                    ; preds = %3499
  %3509 = lshr i32 %3408, 2
  %3510 = mul i32 %97, %3509
  %3511 = lshr i32 %3456, 3
  %3512 = add i32 %94, %3511
  %3513 = add i32 %3512, %113
  %3514 = add i32 %3513, %3510
  %3515 = shl i32 %3514, 2
  %3516 = shl i32 %3408, 3
  %3517 = and i32 %3516, 24
  %3518 = and i32 %3456, 7
  %3519 = or i32 %3517, %3518
  %3520 = shl i32 1, %3519
  %3521 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %3515, i32 undef)  ; BufferLoad(srv,index,wot)
  %3522 = extractvalue %dx.types.ResRet.i32 %3521, 0
  %3523 = and i32 %3522, %3520
  %3524 = icmp ne i32 %3523, 0
  br label %3525

; <label>:3525                                    ; preds = %3508, %3499
  %3526 = phi i1 [ %3524, %3508 ], [ false, %3499 ]
  %3527 = xor i1 %3526, true
  %3528 = uitofp i1 %3527 to float
  %3529 = fadd fast float %3503, %3528
  %3530 = or i32 %3408, %3480
  %3531 = icmp slt i32 %3530, 0
  %3532 = or i1 %3483, %3411
  %3533 = or i1 %3531, %3532
  br i1 %3533, label %3551, label %3534, !dx.controlflow.hints !52

; <label>:3534                                    ; preds = %3525
  %3535 = lshr i32 %3408, 2
  %3536 = mul i32 %97, %3535
  %3537 = lshr i32 %3480, 3
  %3538 = add i32 %94, %3537
  %3539 = add i32 %3538, %113
  %3540 = add i32 %3539, %3536
  %3541 = shl i32 %3540, 2
  %3542 = shl i32 %3408, 3
  %3543 = and i32 %3542, 24
  %3544 = and i32 %3480, 7
  %3545 = or i32 %3543, %3544
  %3546 = shl i32 1, %3545
  %3547 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %3541, i32 undef)  ; BufferLoad(srv,index,wot)
  %3548 = extractvalue %dx.types.ResRet.i32 %3547, 0
  %3549 = and i32 %3548, %3546
  %3550 = icmp ne i32 %3549, 0
  br label %3551

; <label>:3551                                    ; preds = %3534, %3525
  %3552 = phi i1 [ %3550, %3534 ], [ false, %3525 ]
  %3553 = xor i1 %3552, true
  %3554 = uitofp i1 %3553 to float
  %3555 = fadd fast float %3529, %3554
  %3556 = or i32 %3432, %3456
  %3557 = icmp slt i32 %3556, 0
  %3558 = or i1 %3459, %3435
  %3559 = or i1 %3557, %3558
  br i1 %3559, label %3577, label %3560, !dx.controlflow.hints !52

; <label>:3560                                    ; preds = %3551
  %3561 = lshr i32 %3432, 2
  %3562 = mul i32 %97, %3561
  %3563 = lshr i32 %3456, 3
  %3564 = add i32 %94, %3563
  %3565 = add i32 %3564, %113
  %3566 = add i32 %3565, %3562
  %3567 = shl i32 %3566, 2
  %3568 = shl i32 %3432, 3
  %3569 = and i32 %3568, 24
  %3570 = and i32 %3456, 7
  %3571 = or i32 %3569, %3570
  %3572 = shl i32 1, %3571
  %3573 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %3567, i32 undef)  ; BufferLoad(srv,index,wot)
  %3574 = extractvalue %dx.types.ResRet.i32 %3573, 0
  %3575 = and i32 %3574, %3572
  %3576 = icmp ne i32 %3575, 0
  br label %3577

; <label>:3577                                    ; preds = %3560, %3551
  %3578 = phi i1 [ %3576, %3560 ], [ false, %3551 ]
  %3579 = xor i1 %3578, true
  %3580 = uitofp i1 %3579 to float
  %3581 = fadd fast float %3555, %3580
  %3582 = or i32 %3432, %3480
  %3583 = icmp slt i32 %3582, 0
  %3584 = or i1 %3483, %3435
  %3585 = or i1 %3583, %3584
  br i1 %3585, label %3603, label %3586, !dx.controlflow.hints !52

; <label>:3586                                    ; preds = %3577
  %3587 = lshr i32 %3432, 2
  %3588 = mul i32 %97, %3587
  %3589 = lshr i32 %3480, 3
  %3590 = add i32 %94, %3589
  %3591 = add i32 %3590, %113
  %3592 = add i32 %3591, %3588
  %3593 = shl i32 %3592, 2
  %3594 = shl i32 %3432, 3
  %3595 = and i32 %3594, 24
  %3596 = and i32 %3480, 7
  %3597 = or i32 %3595, %3596
  %3598 = shl i32 1, %3597
  %3599 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %3593, i32 undef)  ; BufferLoad(srv,index,wot)
  %3600 = extractvalue %dx.types.ResRet.i32 %3599, 0
  %3601 = and i32 %3600, %3598
  %3602 = icmp ne i32 %3601, 0
  br label %3603

; <label>:3603                                    ; preds = %3586, %3577
  %3604 = phi i1 [ %3602, %3586 ], [ false, %3577 ]
  %3605 = xor i1 %3604, true
  %3606 = uitofp i1 %3605 to float
  %3607 = fadd fast float %3581, %3606
  %3608 = fmul fast float %2983, 4.000000e+00
  %3609 = fmul fast float %2984, 4.000000e+00
  %3610 = call float @dx.op.unary.f32(i32 28, float %3608)  ; Round_pi(value)
  %3611 = call float @dx.op.unary.f32(i32 28, float %3609)  ; Round_pi(value)
  %3612 = fptosi float %3610 to i32
  %3613 = fptosi float %3611 to i32
  %3614 = sub i32 %77, %3613
  %3615 = or i32 %3614, %76
  %3616 = icmp slt i32 %3615, 0
  %3617 = icmp sge i32 %3614, %2996
  %3618 = or i1 %2997, %3617
  %3619 = or i1 %3616, %3618
  br i1 %3619, label %3633, label %3620, !dx.controlflow.hints !52

; <label>:3620                                    ; preds = %3603
  %3621 = lshr i32 %3614, 2
  %3622 = mul i32 %97, %3621
  %3623 = add i32 %115, %3622
  %3624 = shl i32 %3623, 2
  %3625 = shl i32 %3614, 3
  %3626 = and i32 %3625, 24
  %3627 = or i32 %3626, %106
  %3628 = shl i32 1, %3627
  %3629 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %3624, i32 undef)  ; BufferLoad(srv,index,wot)
  %3630 = extractvalue %dx.types.ResRet.i32 %3629, 0
  %3631 = and i32 %3630, %3628
  %3632 = icmp ne i32 %3631, 0
  br label %3633

; <label>:3633                                    ; preds = %3620, %3603
  %3634 = phi i1 [ %3632, %3620 ], [ false, %3603 ]
  %3635 = xor i1 %3634, true
  %3636 = uitofp i1 %3635 to float
  %3637 = fadd fast float %3607, %3636
  %3638 = add i32 %3613, %77
  %3639 = or i32 %3638, %76
  %3640 = icmp slt i32 %3639, 0
  %3641 = icmp sge i32 %3638, %2996
  %3642 = or i1 %2997, %3641
  %3643 = or i1 %3640, %3642
  br i1 %3643, label %3657, label %3644, !dx.controlflow.hints !52

; <label>:3644                                    ; preds = %3633
  %3645 = lshr i32 %3638, 2
  %3646 = mul i32 %97, %3645
  %3647 = add i32 %115, %3646
  %3648 = shl i32 %3647, 2
  %3649 = shl i32 %3638, 3
  %3650 = and i32 %3649, 24
  %3651 = or i32 %3650, %106
  %3652 = shl i32 1, %3651
  %3653 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %3648, i32 undef)  ; BufferLoad(srv,index,wot)
  %3654 = extractvalue %dx.types.ResRet.i32 %3653, 0
  %3655 = and i32 %3654, %3652
  %3656 = icmp ne i32 %3655, 0
  br label %3657

; <label>:3657                                    ; preds = %3644, %3633
  %3658 = phi i1 [ %3656, %3644 ], [ false, %3633 ]
  %3659 = xor i1 %3658, true
  %3660 = uitofp i1 %3659 to float
  %3661 = fadd fast float %3637, %3660
  %3662 = sub i32 %76, %3612
  %3663 = or i32 %3662, %77
  %3664 = icmp slt i32 %3663, 0
  %3665 = icmp sge i32 %3662, %2995
  %3666 = or i1 %3665, %3047
  %3667 = or i1 %3664, %3666
  br i1 %3667, label %3681, label %3668, !dx.controlflow.hints !52

; <label>:3668                                    ; preds = %3657
  %3669 = lshr i32 %3662, 3
  %3670 = add i32 %94, %3669
  %3671 = add i32 %3670, %113
  %3672 = add i32 %3671, %98
  %3673 = shl i32 %3672, 2
  %3674 = and i32 %3662, 7
  %3675 = or i32 %3674, %105
  %3676 = shl i32 1, %3675
  %3677 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %3673, i32 undef)  ; BufferLoad(srv,index,wot)
  %3678 = extractvalue %dx.types.ResRet.i32 %3677, 0
  %3679 = and i32 %3678, %3676
  %3680 = icmp ne i32 %3679, 0
  br label %3681

; <label>:3681                                    ; preds = %3668, %3657
  %3682 = phi i1 [ %3680, %3668 ], [ false, %3657 ]
  %3683 = xor i1 %3682, true
  %3684 = uitofp i1 %3683 to float
  %3685 = fadd fast float %3661, %3684
  %3686 = add i32 %3612, %76
  %3687 = or i32 %3686, %77
  %3688 = icmp slt i32 %3687, 0
  %3689 = icmp sge i32 %3686, %2995
  %3690 = or i1 %3689, %3047
  %3691 = or i1 %3688, %3690
  br i1 %3691, label %3705, label %3692, !dx.controlflow.hints !52

; <label>:3692                                    ; preds = %3681
  %3693 = lshr i32 %3686, 3
  %3694 = add i32 %94, %3693
  %3695 = add i32 %3694, %113
  %3696 = add i32 %3695, %98
  %3697 = shl i32 %3696, 2
  %3698 = and i32 %3686, 7
  %3699 = or i32 %3698, %105
  %3700 = shl i32 1, %3699
  %3701 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %3697, i32 undef)  ; BufferLoad(srv,index,wot)
  %3702 = extractvalue %dx.types.ResRet.i32 %3701, 0
  %3703 = and i32 %3702, %3700
  %3704 = icmp ne i32 %3703, 0
  br label %3705

; <label>:3705                                    ; preds = %3692, %3681
  %3706 = phi i1 [ %3704, %3692 ], [ false, %3681 ]
  %3707 = xor i1 %3706, true
  %3708 = uitofp i1 %3707 to float
  %3709 = fadd fast float %3685, %3708
  %3710 = or i32 %3614, %3662
  %3711 = icmp slt i32 %3710, 0
  %3712 = or i1 %3665, %3617
  %3713 = or i1 %3711, %3712
  br i1 %3713, label %3731, label %3714, !dx.controlflow.hints !52

; <label>:3714                                    ; preds = %3705
  %3715 = lshr i32 %3614, 2
  %3716 = mul i32 %97, %3715
  %3717 = lshr i32 %3662, 3
  %3718 = add i32 %94, %3717
  %3719 = add i32 %3718, %113
  %3720 = add i32 %3719, %3716
  %3721 = shl i32 %3720, 2
  %3722 = shl i32 %3614, 3
  %3723 = and i32 %3722, 24
  %3724 = and i32 %3662, 7
  %3725 = or i32 %3723, %3724
  %3726 = shl i32 1, %3725
  %3727 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %3721, i32 undef)  ; BufferLoad(srv,index,wot)
  %3728 = extractvalue %dx.types.ResRet.i32 %3727, 0
  %3729 = and i32 %3728, %3726
  %3730 = icmp ne i32 %3729, 0
  br label %3731

; <label>:3731                                    ; preds = %3714, %3705
  %3732 = phi i1 [ %3730, %3714 ], [ false, %3705 ]
  %3733 = xor i1 %3732, true
  %3734 = uitofp i1 %3733 to float
  %3735 = fadd fast float %3709, %3734
  %3736 = or i32 %3614, %3686
  %3737 = icmp slt i32 %3736, 0
  %3738 = or i1 %3689, %3617
  %3739 = or i1 %3737, %3738
  br i1 %3739, label %3757, label %3740, !dx.controlflow.hints !52

; <label>:3740                                    ; preds = %3731
  %3741 = lshr i32 %3614, 2
  %3742 = mul i32 %97, %3741
  %3743 = lshr i32 %3686, 3
  %3744 = add i32 %94, %3743
  %3745 = add i32 %3744, %113
  %3746 = add i32 %3745, %3742
  %3747 = shl i32 %3746, 2
  %3748 = shl i32 %3614, 3
  %3749 = and i32 %3748, 24
  %3750 = and i32 %3686, 7
  %3751 = or i32 %3749, %3750
  %3752 = shl i32 1, %3751
  %3753 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %3747, i32 undef)  ; BufferLoad(srv,index,wot)
  %3754 = extractvalue %dx.types.ResRet.i32 %3753, 0
  %3755 = and i32 %3754, %3752
  %3756 = icmp ne i32 %3755, 0
  br label %3757

; <label>:3757                                    ; preds = %3740, %3731
  %3758 = phi i1 [ %3756, %3740 ], [ false, %3731 ]
  %3759 = xor i1 %3758, true
  %3760 = uitofp i1 %3759 to float
  %3761 = fadd fast float %3735, %3760
  %3762 = or i32 %3638, %3662
  %3763 = icmp slt i32 %3762, 0
  %3764 = or i1 %3665, %3641
  %3765 = or i1 %3763, %3764
  br i1 %3765, label %3783, label %3766, !dx.controlflow.hints !52

; <label>:3766                                    ; preds = %3757
  %3767 = lshr i32 %3638, 2
  %3768 = mul i32 %97, %3767
  %3769 = lshr i32 %3662, 3
  %3770 = add i32 %94, %3769
  %3771 = add i32 %3770, %113
  %3772 = add i32 %3771, %3768
  %3773 = shl i32 %3772, 2
  %3774 = shl i32 %3638, 3
  %3775 = and i32 %3774, 24
  %3776 = and i32 %3662, 7
  %3777 = or i32 %3775, %3776
  %3778 = shl i32 1, %3777
  %3779 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %3773, i32 undef)  ; BufferLoad(srv,index,wot)
  %3780 = extractvalue %dx.types.ResRet.i32 %3779, 0
  %3781 = and i32 %3780, %3778
  %3782 = icmp ne i32 %3781, 0
  br label %3783

; <label>:3783                                    ; preds = %3766, %3757
  %3784 = phi i1 [ %3782, %3766 ], [ false, %3757 ]
  %3785 = xor i1 %3784, true
  %3786 = uitofp i1 %3785 to float
  %3787 = fadd fast float %3761, %3786
  %3788 = or i32 %3638, %3686
  %3789 = icmp slt i32 %3788, 0
  %3790 = or i1 %3689, %3641
  %3791 = or i1 %3789, %3790
  br i1 %3791, label %3809, label %3792, !dx.controlflow.hints !52

; <label>:3792                                    ; preds = %3783
  %3793 = lshr i32 %3638, 2
  %3794 = mul i32 %97, %3793
  %3795 = lshr i32 %3686, 3
  %3796 = add i32 %94, %3795
  %3797 = add i32 %3796, %113
  %3798 = add i32 %3797, %3794
  %3799 = shl i32 %3798, 2
  %3800 = shl i32 %3638, 3
  %3801 = and i32 %3800, 24
  %3802 = and i32 %3686, 7
  %3803 = or i32 %3801, %3802
  %3804 = shl i32 1, %3803
  %3805 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %3799, i32 undef)  ; BufferLoad(srv,index,wot)
  %3806 = extractvalue %dx.types.ResRet.i32 %3805, 0
  %3807 = and i32 %3806, %3804
  %3808 = icmp ne i32 %3807, 0
  br label %3809

; <label>:3809                                    ; preds = %3792, %3783
  %3810 = phi i1 [ %3808, %3792 ], [ false, %3783 ]
  %3811 = xor i1 %3810, true
  %3812 = uitofp i1 %3811 to float
  %3813 = fadd fast float %3787, %3812
  %3814 = fmul fast float %2983, 5.000000e+00
  %3815 = fmul fast float %2984, 5.000000e+00
  %3816 = call float @dx.op.unary.f32(i32 28, float %3814)  ; Round_pi(value)
  %3817 = call float @dx.op.unary.f32(i32 28, float %3815)  ; Round_pi(value)
  %3818 = fptosi float %3816 to i32
  %3819 = fptosi float %3817 to i32
  %3820 = sub i32 %77, %3819
  %3821 = or i32 %3820, %76
  %3822 = icmp slt i32 %3821, 0
  %3823 = icmp sge i32 %3820, %2996
  %3824 = or i1 %2997, %3823
  %3825 = or i1 %3822, %3824
  br i1 %3825, label %3839, label %3826, !dx.controlflow.hints !52

; <label>:3826                                    ; preds = %3809
  %3827 = lshr i32 %3820, 2
  %3828 = mul i32 %97, %3827
  %3829 = add i32 %115, %3828
  %3830 = shl i32 %3829, 2
  %3831 = shl i32 %3820, 3
  %3832 = and i32 %3831, 24
  %3833 = or i32 %3832, %106
  %3834 = shl i32 1, %3833
  %3835 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %3830, i32 undef)  ; BufferLoad(srv,index,wot)
  %3836 = extractvalue %dx.types.ResRet.i32 %3835, 0
  %3837 = and i32 %3836, %3834
  %3838 = icmp ne i32 %3837, 0
  br label %3839

; <label>:3839                                    ; preds = %3826, %3809
  %3840 = phi i1 [ %3838, %3826 ], [ false, %3809 ]
  %3841 = xor i1 %3840, true
  %3842 = uitofp i1 %3841 to float
  %3843 = fadd fast float %3813, %3842
  %3844 = add i32 %3819, %77
  %3845 = or i32 %3844, %76
  %3846 = icmp slt i32 %3845, 0
  %3847 = icmp sge i32 %3844, %2996
  %3848 = or i1 %2997, %3847
  %3849 = or i1 %3846, %3848
  br i1 %3849, label %3863, label %3850, !dx.controlflow.hints !52

; <label>:3850                                    ; preds = %3839
  %3851 = lshr i32 %3844, 2
  %3852 = mul i32 %97, %3851
  %3853 = add i32 %115, %3852
  %3854 = shl i32 %3853, 2
  %3855 = shl i32 %3844, 3
  %3856 = and i32 %3855, 24
  %3857 = or i32 %3856, %106
  %3858 = shl i32 1, %3857
  %3859 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %3854, i32 undef)  ; BufferLoad(srv,index,wot)
  %3860 = extractvalue %dx.types.ResRet.i32 %3859, 0
  %3861 = and i32 %3860, %3858
  %3862 = icmp ne i32 %3861, 0
  br label %3863

; <label>:3863                                    ; preds = %3850, %3839
  %3864 = phi i1 [ %3862, %3850 ], [ false, %3839 ]
  %3865 = xor i1 %3864, true
  %3866 = uitofp i1 %3865 to float
  %3867 = fadd fast float %3843, %3866
  %3868 = sub i32 %76, %3818
  %3869 = or i32 %3868, %77
  %3870 = icmp slt i32 %3869, 0
  %3871 = icmp sge i32 %3868, %2995
  %3872 = or i1 %3871, %3047
  %3873 = or i1 %3870, %3872
  br i1 %3873, label %3887, label %3874, !dx.controlflow.hints !52

; <label>:3874                                    ; preds = %3863
  %3875 = lshr i32 %3868, 3
  %3876 = add i32 %94, %3875
  %3877 = add i32 %3876, %113
  %3878 = add i32 %3877, %98
  %3879 = shl i32 %3878, 2
  %3880 = and i32 %3868, 7
  %3881 = or i32 %3880, %105
  %3882 = shl i32 1, %3881
  %3883 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %3879, i32 undef)  ; BufferLoad(srv,index,wot)
  %3884 = extractvalue %dx.types.ResRet.i32 %3883, 0
  %3885 = and i32 %3884, %3882
  %3886 = icmp ne i32 %3885, 0
  br label %3887

; <label>:3887                                    ; preds = %3874, %3863
  %3888 = phi i1 [ %3886, %3874 ], [ false, %3863 ]
  %3889 = xor i1 %3888, true
  %3890 = uitofp i1 %3889 to float
  %3891 = fadd fast float %3867, %3890
  %3892 = add i32 %3818, %76
  %3893 = or i32 %3892, %77
  %3894 = icmp slt i32 %3893, 0
  %3895 = icmp sge i32 %3892, %2995
  %3896 = or i1 %3895, %3047
  %3897 = or i1 %3894, %3896
  br i1 %3897, label %3911, label %3898, !dx.controlflow.hints !52

; <label>:3898                                    ; preds = %3887
  %3899 = lshr i32 %3892, 3
  %3900 = add i32 %94, %3899
  %3901 = add i32 %3900, %113
  %3902 = add i32 %3901, %98
  %3903 = shl i32 %3902, 2
  %3904 = and i32 %3892, 7
  %3905 = or i32 %3904, %105
  %3906 = shl i32 1, %3905
  %3907 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %3903, i32 undef)  ; BufferLoad(srv,index,wot)
  %3908 = extractvalue %dx.types.ResRet.i32 %3907, 0
  %3909 = and i32 %3908, %3906
  %3910 = icmp ne i32 %3909, 0
  br label %3911

; <label>:3911                                    ; preds = %3898, %3887
  %3912 = phi i1 [ %3910, %3898 ], [ false, %3887 ]
  %3913 = xor i1 %3912, true
  %3914 = uitofp i1 %3913 to float
  %3915 = fadd fast float %3891, %3914
  %3916 = or i32 %3820, %3868
  %3917 = icmp slt i32 %3916, 0
  %3918 = or i1 %3871, %3823
  %3919 = or i1 %3917, %3918
  br i1 %3919, label %3937, label %3920, !dx.controlflow.hints !52

; <label>:3920                                    ; preds = %3911
  %3921 = lshr i32 %3820, 2
  %3922 = mul i32 %97, %3921
  %3923 = lshr i32 %3868, 3
  %3924 = add i32 %94, %3923
  %3925 = add i32 %3924, %113
  %3926 = add i32 %3925, %3922
  %3927 = shl i32 %3926, 2
  %3928 = shl i32 %3820, 3
  %3929 = and i32 %3928, 24
  %3930 = and i32 %3868, 7
  %3931 = or i32 %3929, %3930
  %3932 = shl i32 1, %3931
  %3933 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %3927, i32 undef)  ; BufferLoad(srv,index,wot)
  %3934 = extractvalue %dx.types.ResRet.i32 %3933, 0
  %3935 = and i32 %3934, %3932
  %3936 = icmp ne i32 %3935, 0
  br label %3937

; <label>:3937                                    ; preds = %3920, %3911
  %3938 = phi i1 [ %3936, %3920 ], [ false, %3911 ]
  %3939 = xor i1 %3938, true
  %3940 = uitofp i1 %3939 to float
  %3941 = fadd fast float %3915, %3940
  %3942 = or i32 %3820, %3892
  %3943 = icmp slt i32 %3942, 0
  %3944 = or i1 %3895, %3823
  %3945 = or i1 %3943, %3944
  br i1 %3945, label %3963, label %3946, !dx.controlflow.hints !52

; <label>:3946                                    ; preds = %3937
  %3947 = lshr i32 %3820, 2
  %3948 = mul i32 %97, %3947
  %3949 = lshr i32 %3892, 3
  %3950 = add i32 %94, %3949
  %3951 = add i32 %3950, %113
  %3952 = add i32 %3951, %3948
  %3953 = shl i32 %3952, 2
  %3954 = shl i32 %3820, 3
  %3955 = and i32 %3954, 24
  %3956 = and i32 %3892, 7
  %3957 = or i32 %3955, %3956
  %3958 = shl i32 1, %3957
  %3959 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %3953, i32 undef)  ; BufferLoad(srv,index,wot)
  %3960 = extractvalue %dx.types.ResRet.i32 %3959, 0
  %3961 = and i32 %3960, %3958
  %3962 = icmp ne i32 %3961, 0
  br label %3963

; <label>:3963                                    ; preds = %3946, %3937
  %3964 = phi i1 [ %3962, %3946 ], [ false, %3937 ]
  %3965 = xor i1 %3964, true
  %3966 = uitofp i1 %3965 to float
  %3967 = fadd fast float %3941, %3966
  %3968 = or i32 %3844, %3868
  %3969 = icmp slt i32 %3968, 0
  %3970 = or i1 %3871, %3847
  %3971 = or i1 %3969, %3970
  br i1 %3971, label %3989, label %3972, !dx.controlflow.hints !52

; <label>:3972                                    ; preds = %3963
  %3973 = lshr i32 %3844, 2
  %3974 = mul i32 %97, %3973
  %3975 = lshr i32 %3868, 3
  %3976 = add i32 %94, %3975
  %3977 = add i32 %3976, %113
  %3978 = add i32 %3977, %3974
  %3979 = shl i32 %3978, 2
  %3980 = shl i32 %3844, 3
  %3981 = and i32 %3980, 24
  %3982 = and i32 %3868, 7
  %3983 = or i32 %3981, %3982
  %3984 = shl i32 1, %3983
  %3985 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %3979, i32 undef)  ; BufferLoad(srv,index,wot)
  %3986 = extractvalue %dx.types.ResRet.i32 %3985, 0
  %3987 = and i32 %3986, %3984
  %3988 = icmp ne i32 %3987, 0
  br label %3989

; <label>:3989                                    ; preds = %3972, %3963
  %3990 = phi i1 [ %3988, %3972 ], [ false, %3963 ]
  %3991 = xor i1 %3990, true
  %3992 = uitofp i1 %3991 to float
  %3993 = fadd fast float %3967, %3992
  %3994 = or i32 %3844, %3892
  %3995 = icmp slt i32 %3994, 0
  %3996 = or i1 %3895, %3847
  %3997 = or i1 %3995, %3996
  br i1 %3997, label %4015, label %3998, !dx.controlflow.hints !52

; <label>:3998                                    ; preds = %3989
  %3999 = lshr i32 %3844, 2
  %4000 = mul i32 %97, %3999
  %4001 = lshr i32 %3892, 3
  %4002 = add i32 %94, %4001
  %4003 = add i32 %4002, %113
  %4004 = add i32 %4003, %4000
  %4005 = shl i32 %4004, 2
  %4006 = shl i32 %3844, 3
  %4007 = and i32 %4006, 24
  %4008 = and i32 %3892, 7
  %4009 = or i32 %4007, %4008
  %4010 = shl i32 1, %4009
  %4011 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %4005, i32 undef)  ; BufferLoad(srv,index,wot)
  %4012 = extractvalue %dx.types.ResRet.i32 %4011, 0
  %4013 = and i32 %4012, %4010
  %4014 = icmp ne i32 %4013, 0
  br label %4015

; <label>:4015                                    ; preds = %3998, %3989
  %4016 = phi i1 [ %4014, %3998 ], [ false, %3989 ]
  %4017 = xor i1 %4016, true
  %4018 = uitofp i1 %4017 to float
  %4019 = fadd fast float %3993, %4018
  %4020 = fmul fast float %2983, 6.000000e+00
  %4021 = fmul fast float %2984, 6.000000e+00
  %4022 = call float @dx.op.unary.f32(i32 28, float %4020)  ; Round_pi(value)
  %4023 = call float @dx.op.unary.f32(i32 28, float %4021)  ; Round_pi(value)
  %4024 = fptosi float %4022 to i32
  %4025 = fptosi float %4023 to i32
  %4026 = sub i32 %77, %4025
  %4027 = or i32 %4026, %76
  %4028 = icmp slt i32 %4027, 0
  %4029 = icmp sge i32 %4026, %2996
  %4030 = or i1 %2997, %4029
  %4031 = or i1 %4028, %4030
  br i1 %4031, label %4045, label %4032, !dx.controlflow.hints !52

; <label>:4032                                    ; preds = %4015
  %4033 = lshr i32 %4026, 2
  %4034 = mul i32 %97, %4033
  %4035 = add i32 %115, %4034
  %4036 = shl i32 %4035, 2
  %4037 = shl i32 %4026, 3
  %4038 = and i32 %4037, 24
  %4039 = or i32 %4038, %106
  %4040 = shl i32 1, %4039
  %4041 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %4036, i32 undef)  ; BufferLoad(srv,index,wot)
  %4042 = extractvalue %dx.types.ResRet.i32 %4041, 0
  %4043 = and i32 %4042, %4040
  %4044 = icmp ne i32 %4043, 0
  br label %4045

; <label>:4045                                    ; preds = %4032, %4015
  %4046 = phi i1 [ %4044, %4032 ], [ false, %4015 ]
  %4047 = xor i1 %4046, true
  %4048 = uitofp i1 %4047 to float
  %4049 = fadd fast float %4019, %4048
  %4050 = add i32 %4025, %77
  %4051 = or i32 %4050, %76
  %4052 = icmp slt i32 %4051, 0
  %4053 = icmp sge i32 %4050, %2996
  %4054 = or i1 %2997, %4053
  %4055 = or i1 %4052, %4054
  br i1 %4055, label %4069, label %4056, !dx.controlflow.hints !52

; <label>:4056                                    ; preds = %4045
  %4057 = lshr i32 %4050, 2
  %4058 = mul i32 %97, %4057
  %4059 = add i32 %115, %4058
  %4060 = shl i32 %4059, 2
  %4061 = shl i32 %4050, 3
  %4062 = and i32 %4061, 24
  %4063 = or i32 %4062, %106
  %4064 = shl i32 1, %4063
  %4065 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %4060, i32 undef)  ; BufferLoad(srv,index,wot)
  %4066 = extractvalue %dx.types.ResRet.i32 %4065, 0
  %4067 = and i32 %4066, %4064
  %4068 = icmp ne i32 %4067, 0
  br label %4069

; <label>:4069                                    ; preds = %4056, %4045
  %4070 = phi i1 [ %4068, %4056 ], [ false, %4045 ]
  %4071 = xor i1 %4070, true
  %4072 = uitofp i1 %4071 to float
  %4073 = fadd fast float %4049, %4072
  %4074 = sub i32 %76, %4024
  %4075 = or i32 %4074, %77
  %4076 = icmp slt i32 %4075, 0
  %4077 = icmp sge i32 %4074, %2995
  %4078 = or i1 %4077, %3047
  %4079 = or i1 %4076, %4078
  br i1 %4079, label %4093, label %4080, !dx.controlflow.hints !52

; <label>:4080                                    ; preds = %4069
  %4081 = lshr i32 %4074, 3
  %4082 = add i32 %94, %4081
  %4083 = add i32 %4082, %113
  %4084 = add i32 %4083, %98
  %4085 = shl i32 %4084, 2
  %4086 = and i32 %4074, 7
  %4087 = or i32 %4086, %105
  %4088 = shl i32 1, %4087
  %4089 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %4085, i32 undef)  ; BufferLoad(srv,index,wot)
  %4090 = extractvalue %dx.types.ResRet.i32 %4089, 0
  %4091 = and i32 %4090, %4088
  %4092 = icmp ne i32 %4091, 0
  br label %4093

; <label>:4093                                    ; preds = %4080, %4069
  %4094 = phi i1 [ %4092, %4080 ], [ false, %4069 ]
  %4095 = xor i1 %4094, true
  %4096 = uitofp i1 %4095 to float
  %4097 = fadd fast float %4073, %4096
  %4098 = add i32 %4024, %76
  %4099 = or i32 %4098, %77
  %4100 = icmp slt i32 %4099, 0
  %4101 = icmp sge i32 %4098, %2995
  %4102 = or i1 %4101, %3047
  %4103 = or i1 %4100, %4102
  br i1 %4103, label %4117, label %4104, !dx.controlflow.hints !52

; <label>:4104                                    ; preds = %4093
  %4105 = lshr i32 %4098, 3
  %4106 = add i32 %94, %4105
  %4107 = add i32 %4106, %113
  %4108 = add i32 %4107, %98
  %4109 = shl i32 %4108, 2
  %4110 = and i32 %4098, 7
  %4111 = or i32 %4110, %105
  %4112 = shl i32 1, %4111
  %4113 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %4109, i32 undef)  ; BufferLoad(srv,index,wot)
  %4114 = extractvalue %dx.types.ResRet.i32 %4113, 0
  %4115 = and i32 %4114, %4112
  %4116 = icmp ne i32 %4115, 0
  br label %4117

; <label>:4117                                    ; preds = %4104, %4093
  %4118 = phi i1 [ %4116, %4104 ], [ false, %4093 ]
  %4119 = xor i1 %4118, true
  %4120 = uitofp i1 %4119 to float
  %4121 = fadd fast float %4097, %4120
  %4122 = or i32 %4026, %4074
  %4123 = icmp slt i32 %4122, 0
  %4124 = or i1 %4077, %4029
  %4125 = or i1 %4123, %4124
  br i1 %4125, label %4143, label %4126, !dx.controlflow.hints !52

; <label>:4126                                    ; preds = %4117
  %4127 = lshr i32 %4026, 2
  %4128 = mul i32 %97, %4127
  %4129 = lshr i32 %4074, 3
  %4130 = add i32 %94, %4129
  %4131 = add i32 %4130, %113
  %4132 = add i32 %4131, %4128
  %4133 = shl i32 %4132, 2
  %4134 = shl i32 %4026, 3
  %4135 = and i32 %4134, 24
  %4136 = and i32 %4074, 7
  %4137 = or i32 %4135, %4136
  %4138 = shl i32 1, %4137
  %4139 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %4133, i32 undef)  ; BufferLoad(srv,index,wot)
  %4140 = extractvalue %dx.types.ResRet.i32 %4139, 0
  %4141 = and i32 %4140, %4138
  %4142 = icmp ne i32 %4141, 0
  br label %4143

; <label>:4143                                    ; preds = %4126, %4117
  %4144 = phi i1 [ %4142, %4126 ], [ false, %4117 ]
  %4145 = xor i1 %4144, true
  %4146 = uitofp i1 %4145 to float
  %4147 = fadd fast float %4121, %4146
  %4148 = or i32 %4026, %4098
  %4149 = icmp slt i32 %4148, 0
  %4150 = or i1 %4101, %4029
  %4151 = or i1 %4149, %4150
  br i1 %4151, label %4169, label %4152, !dx.controlflow.hints !52

; <label>:4152                                    ; preds = %4143
  %4153 = lshr i32 %4026, 2
  %4154 = mul i32 %97, %4153
  %4155 = lshr i32 %4098, 3
  %4156 = add i32 %94, %4155
  %4157 = add i32 %4156, %113
  %4158 = add i32 %4157, %4154
  %4159 = shl i32 %4158, 2
  %4160 = shl i32 %4026, 3
  %4161 = and i32 %4160, 24
  %4162 = and i32 %4098, 7
  %4163 = or i32 %4161, %4162
  %4164 = shl i32 1, %4163
  %4165 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %4159, i32 undef)  ; BufferLoad(srv,index,wot)
  %4166 = extractvalue %dx.types.ResRet.i32 %4165, 0
  %4167 = and i32 %4166, %4164
  %4168 = icmp ne i32 %4167, 0
  br label %4169

; <label>:4169                                    ; preds = %4152, %4143
  %4170 = phi i1 [ %4168, %4152 ], [ false, %4143 ]
  %4171 = xor i1 %4170, true
  %4172 = uitofp i1 %4171 to float
  %4173 = fadd fast float %4147, %4172
  %4174 = or i32 %4050, %4074
  %4175 = icmp slt i32 %4174, 0
  %4176 = or i1 %4077, %4053
  %4177 = or i1 %4175, %4176
  br i1 %4177, label %4195, label %4178, !dx.controlflow.hints !52

; <label>:4178                                    ; preds = %4169
  %4179 = lshr i32 %4050, 2
  %4180 = mul i32 %97, %4179
  %4181 = lshr i32 %4074, 3
  %4182 = add i32 %94, %4181
  %4183 = add i32 %4182, %113
  %4184 = add i32 %4183, %4180
  %4185 = shl i32 %4184, 2
  %4186 = shl i32 %4050, 3
  %4187 = and i32 %4186, 24
  %4188 = and i32 %4074, 7
  %4189 = or i32 %4187, %4188
  %4190 = shl i32 1, %4189
  %4191 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %4185, i32 undef)  ; BufferLoad(srv,index,wot)
  %4192 = extractvalue %dx.types.ResRet.i32 %4191, 0
  %4193 = and i32 %4192, %4190
  %4194 = icmp ne i32 %4193, 0
  br label %4195

; <label>:4195                                    ; preds = %4178, %4169
  %4196 = phi i1 [ %4194, %4178 ], [ false, %4169 ]
  %4197 = xor i1 %4196, true
  %4198 = uitofp i1 %4197 to float
  %4199 = fadd fast float %4173, %4198
  %4200 = or i32 %4050, %4098
  %4201 = icmp slt i32 %4200, 0
  %4202 = or i1 %4101, %4053
  %4203 = or i1 %4201, %4202
  br i1 %4203, label %4221, label %4204, !dx.controlflow.hints !52

; <label>:4204                                    ; preds = %4195
  %4205 = lshr i32 %4050, 2
  %4206 = mul i32 %97, %4205
  %4207 = lshr i32 %4098, 3
  %4208 = add i32 %94, %4207
  %4209 = add i32 %4208, %113
  %4210 = add i32 %4209, %4206
  %4211 = shl i32 %4210, 2
  %4212 = shl i32 %4050, 3
  %4213 = and i32 %4212, 24
  %4214 = and i32 %4098, 7
  %4215 = or i32 %4213, %4214
  %4216 = shl i32 1, %4215
  %4217 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %4211, i32 undef)  ; BufferLoad(srv,index,wot)
  %4218 = extractvalue %dx.types.ResRet.i32 %4217, 0
  %4219 = and i32 %4218, %4216
  %4220 = icmp ne i32 %4219, 0
  br label %4221

; <label>:4221                                    ; preds = %4204, %4195
  %4222 = phi i1 [ %4220, %4204 ], [ false, %4195 ]
  %4223 = xor i1 %4222, true
  %4224 = uitofp i1 %4223 to float
  %4225 = fadd fast float %4199, %4224
  %4226 = fmul fast float %2983, 7.000000e+00
  %4227 = fmul fast float %2984, 7.000000e+00
  %4228 = call float @dx.op.unary.f32(i32 28, float %4226)  ; Round_pi(value)
  %4229 = call float @dx.op.unary.f32(i32 28, float %4227)  ; Round_pi(value)
  %4230 = fptosi float %4228 to i32
  %4231 = fptosi float %4229 to i32
  %4232 = sub i32 %77, %4231
  %4233 = or i32 %4232, %76
  %4234 = icmp slt i32 %4233, 0
  %4235 = icmp sge i32 %4232, %2996
  %4236 = or i1 %2997, %4235
  %4237 = or i1 %4234, %4236
  br i1 %4237, label %4251, label %4238, !dx.controlflow.hints !52

; <label>:4238                                    ; preds = %4221
  %4239 = lshr i32 %4232, 2
  %4240 = mul i32 %97, %4239
  %4241 = add i32 %115, %4240
  %4242 = shl i32 %4241, 2
  %4243 = shl i32 %4232, 3
  %4244 = and i32 %4243, 24
  %4245 = or i32 %4244, %106
  %4246 = shl i32 1, %4245
  %4247 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %4242, i32 undef)  ; BufferLoad(srv,index,wot)
  %4248 = extractvalue %dx.types.ResRet.i32 %4247, 0
  %4249 = and i32 %4248, %4246
  %4250 = icmp ne i32 %4249, 0
  br label %4251

; <label>:4251                                    ; preds = %4238, %4221
  %4252 = phi i1 [ %4250, %4238 ], [ false, %4221 ]
  %4253 = xor i1 %4252, true
  %4254 = uitofp i1 %4253 to float
  %4255 = fadd fast float %4225, %4254
  %4256 = add i32 %4231, %77
  %4257 = or i32 %4256, %76
  %4258 = icmp slt i32 %4257, 0
  %4259 = icmp sge i32 %4256, %2996
  %4260 = or i1 %2997, %4259
  %4261 = or i1 %4258, %4260
  br i1 %4261, label %4275, label %4262, !dx.controlflow.hints !52

; <label>:4262                                    ; preds = %4251
  %4263 = lshr i32 %4256, 2
  %4264 = mul i32 %97, %4263
  %4265 = add i32 %115, %4264
  %4266 = shl i32 %4265, 2
  %4267 = shl i32 %4256, 3
  %4268 = and i32 %4267, 24
  %4269 = or i32 %4268, %106
  %4270 = shl i32 1, %4269
  %4271 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %4266, i32 undef)  ; BufferLoad(srv,index,wot)
  %4272 = extractvalue %dx.types.ResRet.i32 %4271, 0
  %4273 = and i32 %4272, %4270
  %4274 = icmp ne i32 %4273, 0
  br label %4275

; <label>:4275                                    ; preds = %4262, %4251
  %4276 = phi i1 [ %4274, %4262 ], [ false, %4251 ]
  %4277 = xor i1 %4276, true
  %4278 = uitofp i1 %4277 to float
  %4279 = fadd fast float %4255, %4278
  %4280 = sub i32 %76, %4230
  %4281 = or i32 %4280, %77
  %4282 = icmp slt i32 %4281, 0
  %4283 = icmp sge i32 %4280, %2995
  %4284 = or i1 %4283, %3047
  %4285 = or i1 %4282, %4284
  br i1 %4285, label %4299, label %4286, !dx.controlflow.hints !52

; <label>:4286                                    ; preds = %4275
  %4287 = lshr i32 %4280, 3
  %4288 = add i32 %94, %4287
  %4289 = add i32 %4288, %113
  %4290 = add i32 %4289, %98
  %4291 = shl i32 %4290, 2
  %4292 = and i32 %4280, 7
  %4293 = or i32 %4292, %105
  %4294 = shl i32 1, %4293
  %4295 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %4291, i32 undef)  ; BufferLoad(srv,index,wot)
  %4296 = extractvalue %dx.types.ResRet.i32 %4295, 0
  %4297 = and i32 %4296, %4294
  %4298 = icmp ne i32 %4297, 0
  br label %4299

; <label>:4299                                    ; preds = %4286, %4275
  %4300 = phi i1 [ %4298, %4286 ], [ false, %4275 ]
  %4301 = xor i1 %4300, true
  %4302 = uitofp i1 %4301 to float
  %4303 = fadd fast float %4279, %4302
  %4304 = add i32 %4230, %76
  %4305 = or i32 %4304, %77
  %4306 = icmp slt i32 %4305, 0
  %4307 = icmp sge i32 %4304, %2995
  %4308 = or i1 %4307, %3047
  %4309 = or i1 %4306, %4308
  br i1 %4309, label %4323, label %4310, !dx.controlflow.hints !52

; <label>:4310                                    ; preds = %4299
  %4311 = lshr i32 %4304, 3
  %4312 = add i32 %94, %4311
  %4313 = add i32 %4312, %113
  %4314 = add i32 %4313, %98
  %4315 = shl i32 %4314, 2
  %4316 = and i32 %4304, 7
  %4317 = or i32 %4316, %105
  %4318 = shl i32 1, %4317
  %4319 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %4315, i32 undef)  ; BufferLoad(srv,index,wot)
  %4320 = extractvalue %dx.types.ResRet.i32 %4319, 0
  %4321 = and i32 %4320, %4318
  %4322 = icmp ne i32 %4321, 0
  br label %4323

; <label>:4323                                    ; preds = %4310, %4299
  %4324 = phi i1 [ %4322, %4310 ], [ false, %4299 ]
  %4325 = xor i1 %4324, true
  %4326 = uitofp i1 %4325 to float
  %4327 = fadd fast float %4303, %4326
  %4328 = or i32 %4232, %4280
  %4329 = icmp slt i32 %4328, 0
  %4330 = or i1 %4283, %4235
  %4331 = or i1 %4329, %4330
  br i1 %4331, label %4349, label %4332, !dx.controlflow.hints !52

; <label>:4332                                    ; preds = %4323
  %4333 = lshr i32 %4232, 2
  %4334 = mul i32 %97, %4333
  %4335 = lshr i32 %4280, 3
  %4336 = add i32 %94, %4335
  %4337 = add i32 %4336, %113
  %4338 = add i32 %4337, %4334
  %4339 = shl i32 %4338, 2
  %4340 = shl i32 %4232, 3
  %4341 = and i32 %4340, 24
  %4342 = and i32 %4280, 7
  %4343 = or i32 %4341, %4342
  %4344 = shl i32 1, %4343
  %4345 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %4339, i32 undef)  ; BufferLoad(srv,index,wot)
  %4346 = extractvalue %dx.types.ResRet.i32 %4345, 0
  %4347 = and i32 %4346, %4344
  %4348 = icmp ne i32 %4347, 0
  br label %4349

; <label>:4349                                    ; preds = %4332, %4323
  %4350 = phi i1 [ %4348, %4332 ], [ false, %4323 ]
  %4351 = xor i1 %4350, true
  %4352 = uitofp i1 %4351 to float
  %4353 = fadd fast float %4327, %4352
  %4354 = or i32 %4232, %4304
  %4355 = icmp slt i32 %4354, 0
  %4356 = or i1 %4307, %4235
  %4357 = or i1 %4355, %4356
  br i1 %4357, label %4375, label %4358, !dx.controlflow.hints !52

; <label>:4358                                    ; preds = %4349
  %4359 = lshr i32 %4232, 2
  %4360 = mul i32 %97, %4359
  %4361 = lshr i32 %4304, 3
  %4362 = add i32 %94, %4361
  %4363 = add i32 %4362, %113
  %4364 = add i32 %4363, %4360
  %4365 = shl i32 %4364, 2
  %4366 = shl i32 %4232, 3
  %4367 = and i32 %4366, 24
  %4368 = and i32 %4304, 7
  %4369 = or i32 %4367, %4368
  %4370 = shl i32 1, %4369
  %4371 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %4365, i32 undef)  ; BufferLoad(srv,index,wot)
  %4372 = extractvalue %dx.types.ResRet.i32 %4371, 0
  %4373 = and i32 %4372, %4370
  %4374 = icmp ne i32 %4373, 0
  br label %4375

; <label>:4375                                    ; preds = %4358, %4349
  %4376 = phi i1 [ %4374, %4358 ], [ false, %4349 ]
  %4377 = xor i1 %4376, true
  %4378 = uitofp i1 %4377 to float
  %4379 = fadd fast float %4353, %4378
  %4380 = or i32 %4256, %4280
  %4381 = icmp slt i32 %4380, 0
  %4382 = or i1 %4283, %4259
  %4383 = or i1 %4381, %4382
  br i1 %4383, label %4401, label %4384, !dx.controlflow.hints !52

; <label>:4384                                    ; preds = %4375
  %4385 = lshr i32 %4256, 2
  %4386 = mul i32 %97, %4385
  %4387 = lshr i32 %4280, 3
  %4388 = add i32 %94, %4387
  %4389 = add i32 %4388, %113
  %4390 = add i32 %4389, %4386
  %4391 = shl i32 %4390, 2
  %4392 = shl i32 %4256, 3
  %4393 = and i32 %4392, 24
  %4394 = and i32 %4280, 7
  %4395 = or i32 %4393, %4394
  %4396 = shl i32 1, %4395
  %4397 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %4391, i32 undef)  ; BufferLoad(srv,index,wot)
  %4398 = extractvalue %dx.types.ResRet.i32 %4397, 0
  %4399 = and i32 %4398, %4396
  %4400 = icmp ne i32 %4399, 0
  br label %4401

; <label>:4401                                    ; preds = %4384, %4375
  %4402 = phi i1 [ %4400, %4384 ], [ false, %4375 ]
  %4403 = xor i1 %4402, true
  %4404 = uitofp i1 %4403 to float
  %4405 = fadd fast float %4379, %4404
  %4406 = or i32 %4256, %4304
  %4407 = icmp slt i32 %4406, 0
  %4408 = or i1 %4307, %4259
  %4409 = or i1 %4407, %4408
  br i1 %4409, label %4427, label %4410, !dx.controlflow.hints !52

; <label>:4410                                    ; preds = %4401
  %4411 = lshr i32 %4256, 2
  %4412 = mul i32 %97, %4411
  %4413 = lshr i32 %4304, 3
  %4414 = add i32 %94, %4413
  %4415 = add i32 %4414, %113
  %4416 = add i32 %4415, %4412
  %4417 = shl i32 %4416, 2
  %4418 = shl i32 %4256, 3
  %4419 = and i32 %4418, 24
  %4420 = and i32 %4304, 7
  %4421 = or i32 %4419, %4420
  %4422 = shl i32 1, %4421
  %4423 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %4417, i32 undef)  ; BufferLoad(srv,index,wot)
  %4424 = extractvalue %dx.types.ResRet.i32 %4423, 0
  %4425 = and i32 %4424, %4422
  %4426 = icmp ne i32 %4425, 0
  br label %4427

; <label>:4427                                    ; preds = %4410, %4401
  %4428 = phi i1 [ %4426, %4410 ], [ false, %4401 ]
  %4429 = xor i1 %4428, true
  %4430 = uitofp i1 %4429 to float
  %4431 = fadd fast float %4405, %4430
  %4432 = fmul fast float %2983, 8.000000e+00
  %4433 = fmul fast float %2984, 8.000000e+00
  %4434 = call float @dx.op.unary.f32(i32 28, float %4432)  ; Round_pi(value)
  %4435 = call float @dx.op.unary.f32(i32 28, float %4433)  ; Round_pi(value)
  %4436 = fptosi float %4434 to i32
  %4437 = fptosi float %4435 to i32
  %4438 = sub i32 %77, %4437
  %4439 = or i32 %4438, %76
  %4440 = icmp slt i32 %4439, 0
  %4441 = icmp sge i32 %4438, %2996
  %4442 = or i1 %2997, %4441
  %4443 = or i1 %4440, %4442
  br i1 %4443, label %4457, label %4444, !dx.controlflow.hints !52

; <label>:4444                                    ; preds = %4427
  %4445 = lshr i32 %4438, 2
  %4446 = mul i32 %97, %4445
  %4447 = add i32 %115, %4446
  %4448 = shl i32 %4447, 2
  %4449 = shl i32 %4438, 3
  %4450 = and i32 %4449, 24
  %4451 = or i32 %4450, %106
  %4452 = shl i32 1, %4451
  %4453 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %4448, i32 undef)  ; BufferLoad(srv,index,wot)
  %4454 = extractvalue %dx.types.ResRet.i32 %4453, 0
  %4455 = and i32 %4454, %4452
  %4456 = icmp ne i32 %4455, 0
  br label %4457

; <label>:4457                                    ; preds = %4444, %4427
  %4458 = phi i1 [ %4456, %4444 ], [ false, %4427 ]
  %4459 = xor i1 %4458, true
  %4460 = uitofp i1 %4459 to float
  %4461 = fadd fast float %4431, %4460
  %4462 = add i32 %4437, %77
  %4463 = or i32 %4462, %76
  %4464 = icmp slt i32 %4463, 0
  %4465 = icmp sge i32 %4462, %2996
  %4466 = or i1 %2997, %4465
  %4467 = or i1 %4464, %4466
  br i1 %4467, label %4481, label %4468, !dx.controlflow.hints !52

; <label>:4468                                    ; preds = %4457
  %4469 = lshr i32 %4462, 2
  %4470 = mul i32 %97, %4469
  %4471 = add i32 %115, %4470
  %4472 = shl i32 %4471, 2
  %4473 = shl i32 %4462, 3
  %4474 = and i32 %4473, 24
  %4475 = or i32 %4474, %106
  %4476 = shl i32 1, %4475
  %4477 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %4472, i32 undef)  ; BufferLoad(srv,index,wot)
  %4478 = extractvalue %dx.types.ResRet.i32 %4477, 0
  %4479 = and i32 %4478, %4476
  %4480 = icmp ne i32 %4479, 0
  br label %4481

; <label>:4481                                    ; preds = %4468, %4457
  %4482 = phi i1 [ %4480, %4468 ], [ false, %4457 ]
  %4483 = xor i1 %4482, true
  %4484 = uitofp i1 %4483 to float
  %4485 = fadd fast float %4461, %4484
  %4486 = sub i32 %76, %4436
  %4487 = or i32 %4486, %77
  %4488 = icmp slt i32 %4487, 0
  %4489 = icmp sge i32 %4486, %2995
  %4490 = or i1 %4489, %3047
  %4491 = or i1 %4488, %4490
  br i1 %4491, label %4505, label %4492, !dx.controlflow.hints !52

; <label>:4492                                    ; preds = %4481
  %4493 = lshr i32 %4486, 3
  %4494 = add i32 %94, %4493
  %4495 = add i32 %4494, %113
  %4496 = add i32 %4495, %98
  %4497 = shl i32 %4496, 2
  %4498 = and i32 %4486, 7
  %4499 = or i32 %4498, %105
  %4500 = shl i32 1, %4499
  %4501 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %4497, i32 undef)  ; BufferLoad(srv,index,wot)
  %4502 = extractvalue %dx.types.ResRet.i32 %4501, 0
  %4503 = and i32 %4502, %4500
  %4504 = icmp ne i32 %4503, 0
  br label %4505

; <label>:4505                                    ; preds = %4492, %4481
  %4506 = phi i1 [ %4504, %4492 ], [ false, %4481 ]
  %4507 = xor i1 %4506, true
  %4508 = uitofp i1 %4507 to float
  %4509 = fadd fast float %4485, %4508
  %4510 = add i32 %4436, %76
  %4511 = or i32 %4510, %77
  %4512 = icmp slt i32 %4511, 0
  %4513 = icmp sge i32 %4510, %2995
  %4514 = or i1 %4513, %3047
  %4515 = or i1 %4512, %4514
  br i1 %4515, label %4529, label %4516, !dx.controlflow.hints !52

; <label>:4516                                    ; preds = %4505
  %4517 = lshr i32 %4510, 3
  %4518 = add i32 %94, %4517
  %4519 = add i32 %4518, %113
  %4520 = add i32 %4519, %98
  %4521 = shl i32 %4520, 2
  %4522 = and i32 %4510, 7
  %4523 = or i32 %4522, %105
  %4524 = shl i32 1, %4523
  %4525 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %4521, i32 undef)  ; BufferLoad(srv,index,wot)
  %4526 = extractvalue %dx.types.ResRet.i32 %4525, 0
  %4527 = and i32 %4526, %4524
  %4528 = icmp ne i32 %4527, 0
  br label %4529

; <label>:4529                                    ; preds = %4516, %4505
  %4530 = phi i1 [ %4528, %4516 ], [ false, %4505 ]
  %4531 = xor i1 %4530, true
  %4532 = uitofp i1 %4531 to float
  %4533 = fadd fast float %4509, %4532
  %4534 = or i32 %4438, %4486
  %4535 = icmp slt i32 %4534, 0
  %4536 = or i1 %4489, %4441
  %4537 = or i1 %4535, %4536
  br i1 %4537, label %4555, label %4538, !dx.controlflow.hints !52

; <label>:4538                                    ; preds = %4529
  %4539 = lshr i32 %4438, 2
  %4540 = mul i32 %97, %4539
  %4541 = lshr i32 %4486, 3
  %4542 = add i32 %94, %4541
  %4543 = add i32 %4542, %113
  %4544 = add i32 %4543, %4540
  %4545 = shl i32 %4544, 2
  %4546 = shl i32 %4438, 3
  %4547 = and i32 %4546, 24
  %4548 = and i32 %4486, 7
  %4549 = or i32 %4547, %4548
  %4550 = shl i32 1, %4549
  %4551 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %4545, i32 undef)  ; BufferLoad(srv,index,wot)
  %4552 = extractvalue %dx.types.ResRet.i32 %4551, 0
  %4553 = and i32 %4552, %4550
  %4554 = icmp ne i32 %4553, 0
  br label %4555

; <label>:4555                                    ; preds = %4538, %4529
  %4556 = phi i1 [ %4554, %4538 ], [ false, %4529 ]
  %4557 = xor i1 %4556, true
  %4558 = uitofp i1 %4557 to float
  %4559 = fadd fast float %4533, %4558
  %4560 = or i32 %4438, %4510
  %4561 = icmp slt i32 %4560, 0
  %4562 = or i1 %4513, %4441
  %4563 = or i1 %4561, %4562
  br i1 %4563, label %4581, label %4564, !dx.controlflow.hints !52

; <label>:4564                                    ; preds = %4555
  %4565 = lshr i32 %4438, 2
  %4566 = mul i32 %97, %4565
  %4567 = lshr i32 %4510, 3
  %4568 = add i32 %94, %4567
  %4569 = add i32 %4568, %113
  %4570 = add i32 %4569, %4566
  %4571 = shl i32 %4570, 2
  %4572 = shl i32 %4438, 3
  %4573 = and i32 %4572, 24
  %4574 = and i32 %4510, 7
  %4575 = or i32 %4573, %4574
  %4576 = shl i32 1, %4575
  %4577 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %4571, i32 undef)  ; BufferLoad(srv,index,wot)
  %4578 = extractvalue %dx.types.ResRet.i32 %4577, 0
  %4579 = and i32 %4578, %4576
  %4580 = icmp ne i32 %4579, 0
  br label %4581

; <label>:4581                                    ; preds = %4564, %4555
  %4582 = phi i1 [ %4580, %4564 ], [ false, %4555 ]
  %4583 = xor i1 %4582, true
  %4584 = uitofp i1 %4583 to float
  %4585 = fadd fast float %4559, %4584
  %4586 = or i32 %4462, %4486
  %4587 = icmp slt i32 %4586, 0
  %4588 = or i1 %4489, %4465
  %4589 = or i1 %4587, %4588
  br i1 %4589, label %4607, label %4590, !dx.controlflow.hints !52

; <label>:4590                                    ; preds = %4581
  %4591 = lshr i32 %4462, 2
  %4592 = mul i32 %97, %4591
  %4593 = lshr i32 %4486, 3
  %4594 = add i32 %94, %4593
  %4595 = add i32 %4594, %113
  %4596 = add i32 %4595, %4592
  %4597 = shl i32 %4596, 2
  %4598 = shl i32 %4462, 3
  %4599 = and i32 %4598, 24
  %4600 = and i32 %4486, 7
  %4601 = or i32 %4599, %4600
  %4602 = shl i32 1, %4601
  %4603 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %4597, i32 undef)  ; BufferLoad(srv,index,wot)
  %4604 = extractvalue %dx.types.ResRet.i32 %4603, 0
  %4605 = and i32 %4604, %4602
  %4606 = icmp ne i32 %4605, 0
  br label %4607

; <label>:4607                                    ; preds = %4590, %4581
  %4608 = phi i1 [ %4606, %4590 ], [ false, %4581 ]
  %4609 = xor i1 %4608, true
  %4610 = uitofp i1 %4609 to float
  %4611 = fadd fast float %4585, %4610
  %4612 = or i32 %4462, %4510
  %4613 = icmp slt i32 %4612, 0
  %4614 = or i1 %4513, %4465
  %4615 = or i1 %4613, %4614
  br i1 %4615, label %4633, label %4616, !dx.controlflow.hints !52

; <label>:4616                                    ; preds = %4607
  %4617 = lshr i32 %4462, 2
  %4618 = mul i32 %97, %4617
  %4619 = lshr i32 %4510, 3
  %4620 = add i32 %94, %4619
  %4621 = add i32 %4620, %113
  %4622 = add i32 %4621, %4618
  %4623 = shl i32 %4622, 2
  %4624 = shl i32 %4462, 3
  %4625 = and i32 %4624, 24
  %4626 = and i32 %4510, 7
  %4627 = or i32 %4625, %4626
  %4628 = shl i32 1, %4627
  %4629 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %4623, i32 undef)  ; BufferLoad(srv,index,wot)
  %4630 = extractvalue %dx.types.ResRet.i32 %4629, 0
  %4631 = and i32 %4630, %4628
  %4632 = icmp ne i32 %4631, 0
  br label %4633

; <label>:4633                                    ; preds = %4616, %4607
  %4634 = phi i1 [ %4632, %4616 ], [ false, %4607 ]
  %4635 = xor i1 %4634, true
  %4636 = uitofp i1 %4635 to float
  %4637 = fadd fast float %4611, %4636
  %4638 = fmul fast float %2983, 9.000000e+00
  %4639 = fmul fast float %2984, 9.000000e+00
  %4640 = call float @dx.op.unary.f32(i32 28, float %4638)  ; Round_pi(value)
  %4641 = call float @dx.op.unary.f32(i32 28, float %4639)  ; Round_pi(value)
  %4642 = fptosi float %4640 to i32
  %4643 = fptosi float %4641 to i32
  %4644 = sub i32 %77, %4643
  %4645 = or i32 %4644, %76
  %4646 = icmp slt i32 %4645, 0
  %4647 = icmp sge i32 %4644, %2996
  %4648 = or i1 %2997, %4647
  %4649 = or i1 %4646, %4648
  br i1 %4649, label %4663, label %4650, !dx.controlflow.hints !52

; <label>:4650                                    ; preds = %4633
  %4651 = lshr i32 %4644, 2
  %4652 = mul i32 %97, %4651
  %4653 = add i32 %115, %4652
  %4654 = shl i32 %4653, 2
  %4655 = shl i32 %4644, 3
  %4656 = and i32 %4655, 24
  %4657 = or i32 %4656, %106
  %4658 = shl i32 1, %4657
  %4659 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %4654, i32 undef)  ; BufferLoad(srv,index,wot)
  %4660 = extractvalue %dx.types.ResRet.i32 %4659, 0
  %4661 = and i32 %4660, %4658
  %4662 = icmp ne i32 %4661, 0
  br label %4663

; <label>:4663                                    ; preds = %4650, %4633
  %4664 = phi i1 [ %4662, %4650 ], [ false, %4633 ]
  %4665 = xor i1 %4664, true
  %4666 = uitofp i1 %4665 to float
  %4667 = fadd fast float %4637, %4666
  %4668 = add i32 %4643, %77
  %4669 = or i32 %4668, %76
  %4670 = icmp slt i32 %4669, 0
  %4671 = icmp sge i32 %4668, %2996
  %4672 = or i1 %2997, %4671
  %4673 = or i1 %4670, %4672
  br i1 %4673, label %4687, label %4674, !dx.controlflow.hints !52

; <label>:4674                                    ; preds = %4663
  %4675 = lshr i32 %4668, 2
  %4676 = mul i32 %97, %4675
  %4677 = add i32 %115, %4676
  %4678 = shl i32 %4677, 2
  %4679 = shl i32 %4668, 3
  %4680 = and i32 %4679, 24
  %4681 = or i32 %4680, %106
  %4682 = shl i32 1, %4681
  %4683 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %4678, i32 undef)  ; BufferLoad(srv,index,wot)
  %4684 = extractvalue %dx.types.ResRet.i32 %4683, 0
  %4685 = and i32 %4684, %4682
  %4686 = icmp ne i32 %4685, 0
  br label %4687

; <label>:4687                                    ; preds = %4674, %4663
  %4688 = phi i1 [ %4686, %4674 ], [ false, %4663 ]
  %4689 = xor i1 %4688, true
  %4690 = uitofp i1 %4689 to float
  %4691 = fadd fast float %4667, %4690
  %4692 = sub i32 %76, %4642
  %4693 = or i32 %4692, %77
  %4694 = icmp slt i32 %4693, 0
  %4695 = icmp sge i32 %4692, %2995
  %4696 = or i1 %4695, %3047
  %4697 = or i1 %4694, %4696
  br i1 %4697, label %4711, label %4698, !dx.controlflow.hints !52

; <label>:4698                                    ; preds = %4687
  %4699 = lshr i32 %4692, 3
  %4700 = add i32 %94, %4699
  %4701 = add i32 %4700, %113
  %4702 = add i32 %4701, %98
  %4703 = shl i32 %4702, 2
  %4704 = and i32 %4692, 7
  %4705 = or i32 %4704, %105
  %4706 = shl i32 1, %4705
  %4707 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %4703, i32 undef)  ; BufferLoad(srv,index,wot)
  %4708 = extractvalue %dx.types.ResRet.i32 %4707, 0
  %4709 = and i32 %4708, %4706
  %4710 = icmp ne i32 %4709, 0
  br label %4711

; <label>:4711                                    ; preds = %4698, %4687
  %4712 = phi i1 [ %4710, %4698 ], [ false, %4687 ]
  %4713 = xor i1 %4712, true
  %4714 = uitofp i1 %4713 to float
  %4715 = fadd fast float %4691, %4714
  %4716 = add i32 %4642, %76
  %4717 = or i32 %4716, %77
  %4718 = icmp slt i32 %4717, 0
  %4719 = icmp sge i32 %4716, %2995
  %4720 = or i1 %4719, %3047
  %4721 = or i1 %4718, %4720
  br i1 %4721, label %4736, label %4722, !dx.controlflow.hints !52

; <label>:4722                                    ; preds = %4711
  %4723 = lshr i32 %4716, 3
  %4724 = add i32 %94, %4723
  %4725 = add i32 %4724, %113
  %4726 = add i32 %4725, %98
  %4727 = shl i32 %4726, 2
  %4728 = and i32 %4716, 7
  %4729 = or i32 %4728, %105
  %4730 = shl i32 1, %4729
  %4731 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %4727, i32 undef)  ; BufferLoad(srv,index,wot)
  %4732 = extractvalue %dx.types.ResRet.i32 %4731, 0
  %4733 = and i32 %4732, %4730
  %4734 = icmp eq i32 %4733, 0
  %4735 = uitofp i1 %4734 to float
  br label %4736

; <label>:4736                                    ; preds = %4722, %4711
  %4737 = phi float [ %4735, %4722 ], [ 1.000000e+00, %4711 ]
  %4738 = fadd fast float %4715, %4737
  %4739 = or i32 %4644, %4692
  %4740 = icmp slt i32 %4739, 0
  %4741 = or i1 %4695, %4647
  %4742 = or i1 %4740, %4741
  br i1 %4742, label %4761, label %4743, !dx.controlflow.hints !52

; <label>:4743                                    ; preds = %4736
  %4744 = lshr i32 %4644, 2
  %4745 = mul i32 %97, %4744
  %4746 = lshr i32 %4692, 3
  %4747 = add i32 %94, %4746
  %4748 = add i32 %4747, %113
  %4749 = add i32 %4748, %4745
  %4750 = shl i32 %4749, 2
  %4751 = shl i32 %4644, 3
  %4752 = and i32 %4751, 24
  %4753 = and i32 %4692, 7
  %4754 = or i32 %4752, %4753
  %4755 = shl i32 1, %4754
  %4756 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %4750, i32 undef)  ; BufferLoad(srv,index,wot)
  %4757 = extractvalue %dx.types.ResRet.i32 %4756, 0
  %4758 = and i32 %4757, %4755
  %4759 = icmp eq i32 %4758, 0
  %4760 = uitofp i1 %4759 to float
  br label %4761

; <label>:4761                                    ; preds = %4743, %4736
  %4762 = phi float [ %4760, %4743 ], [ 1.000000e+00, %4736 ]
  %4763 = fadd fast float %4738, %4762
  %4764 = or i32 %4644, %4716
  %4765 = icmp slt i32 %4764, 0
  %4766 = or i1 %4719, %4647
  %4767 = or i1 %4765, %4766
  br i1 %4767, label %4786, label %4768, !dx.controlflow.hints !52

; <label>:4768                                    ; preds = %4761
  %4769 = lshr i32 %4644, 2
  %4770 = mul i32 %97, %4769
  %4771 = lshr i32 %4716, 3
  %4772 = add i32 %94, %4771
  %4773 = add i32 %4772, %113
  %4774 = add i32 %4773, %4770
  %4775 = shl i32 %4774, 2
  %4776 = shl i32 %4644, 3
  %4777 = and i32 %4776, 24
  %4778 = and i32 %4716, 7
  %4779 = or i32 %4777, %4778
  %4780 = shl i32 1, %4779
  %4781 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %4775, i32 undef)  ; BufferLoad(srv,index,wot)
  %4782 = extractvalue %dx.types.ResRet.i32 %4781, 0
  %4783 = and i32 %4782, %4780
  %4784 = icmp eq i32 %4783, 0
  %4785 = uitofp i1 %4784 to float
  br label %4786

; <label>:4786                                    ; preds = %4768, %4761
  %4787 = phi float [ %4785, %4768 ], [ 1.000000e+00, %4761 ]
  %4788 = fadd fast float %4763, %4787
  %4789 = or i32 %4668, %4692
  %4790 = icmp slt i32 %4789, 0
  %4791 = or i1 %4695, %4671
  %4792 = or i1 %4790, %4791
  br i1 %4792, label %4811, label %4793, !dx.controlflow.hints !52

; <label>:4793                                    ; preds = %4786
  %4794 = lshr i32 %4668, 2
  %4795 = mul i32 %97, %4794
  %4796 = lshr i32 %4692, 3
  %4797 = add i32 %94, %4796
  %4798 = add i32 %4797, %113
  %4799 = add i32 %4798, %4795
  %4800 = shl i32 %4799, 2
  %4801 = shl i32 %4668, 3
  %4802 = and i32 %4801, 24
  %4803 = and i32 %4692, 7
  %4804 = or i32 %4802, %4803
  %4805 = shl i32 1, %4804
  %4806 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %4800, i32 undef)  ; BufferLoad(srv,index,wot)
  %4807 = extractvalue %dx.types.ResRet.i32 %4806, 0
  %4808 = and i32 %4807, %4805
  %4809 = icmp eq i32 %4808, 0
  %4810 = uitofp i1 %4809 to float
  br label %4811

; <label>:4811                                    ; preds = %4793, %4786
  %4812 = phi float [ %4810, %4793 ], [ 1.000000e+00, %4786 ]
  %4813 = fadd fast float %4788, %4812
  %4814 = or i32 %4668, %4716
  %4815 = icmp slt i32 %4814, 0
  %4816 = or i1 %4719, %4671
  %4817 = or i1 %4815, %4816
  br i1 %4817, label %4836, label %4818, !dx.controlflow.hints !52

; <label>:4818                                    ; preds = %4811
  %4819 = lshr i32 %4668, 2
  %4820 = mul i32 %97, %4819
  %4821 = lshr i32 %4716, 3
  %4822 = add i32 %94, %4821
  %4823 = add i32 %4822, %113
  %4824 = add i32 %4823, %4820
  %4825 = shl i32 %4824, 2
  %4826 = shl i32 %4668, 3
  %4827 = and i32 %4826, 24
  %4828 = and i32 %4716, 7
  %4829 = or i32 %4827, %4828
  %4830 = shl i32 1, %4829
  %4831 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %4825, i32 undef)  ; BufferLoad(srv,index,wot)
  %4832 = extractvalue %dx.types.ResRet.i32 %4831, 0
  %4833 = and i32 %4832, %4830
  %4834 = icmp eq i32 %4833, 0
  %4835 = uitofp i1 %4834 to float
  br label %4836

; <label>:4836                                    ; preds = %4818, %4811
  %4837 = phi float [ %4835, %4818 ], [ 1.000000e+00, %4811 ]
  %4838 = fadd fast float %4813, %4837
  %4839 = fmul fast float %2983, 1.000000e+01
  %4840 = fmul fast float %2984, 1.000000e+01
  %4841 = call float @dx.op.unary.f32(i32 28, float %4839)  ; Round_pi(value)
  %4842 = call float @dx.op.unary.f32(i32 28, float %4840)  ; Round_pi(value)
  %4843 = fptosi float %4841 to i32
  %4844 = fptosi float %4842 to i32
  %4845 = sub i32 %77, %4844
  %4846 = or i32 %4845, %76
  %4847 = icmp slt i32 %4846, 0
  %4848 = icmp sge i32 %4845, %2996
  %4849 = or i1 %2997, %4848
  %4850 = or i1 %4847, %4849
  br i1 %4850, label %4865, label %4851, !dx.controlflow.hints !52

; <label>:4851                                    ; preds = %4836
  %4852 = lshr i32 %4845, 2
  %4853 = mul i32 %97, %4852
  %4854 = add i32 %115, %4853
  %4855 = shl i32 %4854, 2
  %4856 = shl i32 %4845, 3
  %4857 = and i32 %4856, 24
  %4858 = or i32 %4857, %106
  %4859 = shl i32 1, %4858
  %4860 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %4855, i32 undef)  ; BufferLoad(srv,index,wot)
  %4861 = extractvalue %dx.types.ResRet.i32 %4860, 0
  %4862 = and i32 %4861, %4859
  %4863 = icmp eq i32 %4862, 0
  %4864 = uitofp i1 %4863 to float
  br label %4865

; <label>:4865                                    ; preds = %4851, %4836
  %4866 = phi float [ %4864, %4851 ], [ 1.000000e+00, %4836 ]
  %4867 = fadd fast float %4838, %4866
  %4868 = add i32 %4844, %77
  %4869 = or i32 %4868, %76
  %4870 = icmp slt i32 %4869, 0
  %4871 = icmp sge i32 %4868, %2996
  %4872 = or i1 %2997, %4871
  %4873 = or i1 %4870, %4872
  br i1 %4873, label %4888, label %4874, !dx.controlflow.hints !52

; <label>:4874                                    ; preds = %4865
  %4875 = lshr i32 %4868, 2
  %4876 = mul i32 %97, %4875
  %4877 = add i32 %115, %4876
  %4878 = shl i32 %4877, 2
  %4879 = shl i32 %4868, 3
  %4880 = and i32 %4879, 24
  %4881 = or i32 %4880, %106
  %4882 = shl i32 1, %4881
  %4883 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %4878, i32 undef)  ; BufferLoad(srv,index,wot)
  %4884 = extractvalue %dx.types.ResRet.i32 %4883, 0
  %4885 = and i32 %4884, %4882
  %4886 = icmp eq i32 %4885, 0
  %4887 = uitofp i1 %4886 to float
  br label %4888

; <label>:4888                                    ; preds = %4874, %4865
  %4889 = phi float [ %4887, %4874 ], [ 1.000000e+00, %4865 ]
  %4890 = fadd fast float %4867, %4889
  %4891 = sub i32 %76, %4843
  %4892 = or i32 %4891, %77
  %4893 = icmp slt i32 %4892, 0
  %4894 = icmp sge i32 %4891, %2995
  %4895 = or i1 %4894, %3047
  %4896 = or i1 %4893, %4895
  br i1 %4896, label %4911, label %4897, !dx.controlflow.hints !52

; <label>:4897                                    ; preds = %4888
  %4898 = lshr i32 %4891, 3
  %4899 = add i32 %94, %4898
  %4900 = add i32 %4899, %113
  %4901 = add i32 %4900, %98
  %4902 = shl i32 %4901, 2
  %4903 = and i32 %4891, 7
  %4904 = or i32 %4903, %105
  %4905 = shl i32 1, %4904
  %4906 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %4902, i32 undef)  ; BufferLoad(srv,index,wot)
  %4907 = extractvalue %dx.types.ResRet.i32 %4906, 0
  %4908 = and i32 %4907, %4905
  %4909 = icmp eq i32 %4908, 0
  %4910 = uitofp i1 %4909 to float
  br label %4911

; <label>:4911                                    ; preds = %4897, %4888
  %4912 = phi float [ %4910, %4897 ], [ 1.000000e+00, %4888 ]
  %4913 = fadd fast float %4890, %4912
  %4914 = add i32 %4843, %76
  %4915 = or i32 %4914, %77
  %4916 = icmp slt i32 %4915, 0
  %4917 = icmp sge i32 %4914, %2995
  %4918 = or i1 %4917, %3047
  %4919 = or i1 %4916, %4918
  br i1 %4919, label %4934, label %4920, !dx.controlflow.hints !52

; <label>:4920                                    ; preds = %4911
  %4921 = lshr i32 %4914, 3
  %4922 = add i32 %94, %4921
  %4923 = add i32 %4922, %113
  %4924 = add i32 %4923, %98
  %4925 = shl i32 %4924, 2
  %4926 = and i32 %4914, 7
  %4927 = or i32 %4926, %105
  %4928 = shl i32 1, %4927
  %4929 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %4925, i32 undef)  ; BufferLoad(srv,index,wot)
  %4930 = extractvalue %dx.types.ResRet.i32 %4929, 0
  %4931 = and i32 %4930, %4928
  %4932 = icmp eq i32 %4931, 0
  %4933 = uitofp i1 %4932 to float
  br label %4934

; <label>:4934                                    ; preds = %4920, %4911
  %4935 = phi float [ %4933, %4920 ], [ 1.000000e+00, %4911 ]
  %4936 = fadd fast float %4913, %4935
  %4937 = or i32 %4845, %4891
  %4938 = icmp slt i32 %4937, 0
  %4939 = or i1 %4894, %4848
  %4940 = or i1 %4938, %4939
  br i1 %4940, label %4959, label %4941, !dx.controlflow.hints !52

; <label>:4941                                    ; preds = %4934
  %4942 = lshr i32 %4845, 2
  %4943 = mul i32 %97, %4942
  %4944 = lshr i32 %4891, 3
  %4945 = add i32 %94, %4944
  %4946 = add i32 %4945, %113
  %4947 = add i32 %4946, %4943
  %4948 = shl i32 %4947, 2
  %4949 = shl i32 %4845, 3
  %4950 = and i32 %4949, 24
  %4951 = and i32 %4891, 7
  %4952 = or i32 %4950, %4951
  %4953 = shl i32 1, %4952
  %4954 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %4948, i32 undef)  ; BufferLoad(srv,index,wot)
  %4955 = extractvalue %dx.types.ResRet.i32 %4954, 0
  %4956 = and i32 %4955, %4953
  %4957 = icmp eq i32 %4956, 0
  %4958 = uitofp i1 %4957 to float
  br label %4959

; <label>:4959                                    ; preds = %4941, %4934
  %4960 = phi float [ %4958, %4941 ], [ 1.000000e+00, %4934 ]
  %4961 = fadd fast float %4936, %4960
  %4962 = or i32 %4845, %4914
  %4963 = icmp slt i32 %4962, 0
  %4964 = or i1 %4917, %4848
  %4965 = or i1 %4963, %4964
  br i1 %4965, label %4984, label %4966, !dx.controlflow.hints !52

; <label>:4966                                    ; preds = %4959
  %4967 = lshr i32 %4845, 2
  %4968 = mul i32 %97, %4967
  %4969 = lshr i32 %4914, 3
  %4970 = add i32 %94, %4969
  %4971 = add i32 %4970, %113
  %4972 = add i32 %4971, %4968
  %4973 = shl i32 %4972, 2
  %4974 = shl i32 %4845, 3
  %4975 = and i32 %4974, 24
  %4976 = and i32 %4914, 7
  %4977 = or i32 %4975, %4976
  %4978 = shl i32 1, %4977
  %4979 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %4973, i32 undef)  ; BufferLoad(srv,index,wot)
  %4980 = extractvalue %dx.types.ResRet.i32 %4979, 0
  %4981 = and i32 %4980, %4978
  %4982 = icmp eq i32 %4981, 0
  %4983 = uitofp i1 %4982 to float
  br label %4984

; <label>:4984                                    ; preds = %4966, %4959
  %4985 = phi float [ %4983, %4966 ], [ 1.000000e+00, %4959 ]
  %4986 = fadd fast float %4961, %4985
  %4987 = or i32 %4868, %4891
  %4988 = icmp slt i32 %4987, 0
  %4989 = or i1 %4894, %4871
  %4990 = or i1 %4988, %4989
  br i1 %4990, label %5009, label %4991, !dx.controlflow.hints !52

; <label>:4991                                    ; preds = %4984
  %4992 = lshr i32 %4868, 2
  %4993 = mul i32 %97, %4992
  %4994 = lshr i32 %4891, 3
  %4995 = add i32 %94, %4994
  %4996 = add i32 %4995, %113
  %4997 = add i32 %4996, %4993
  %4998 = shl i32 %4997, 2
  %4999 = shl i32 %4868, 3
  %5000 = and i32 %4999, 24
  %5001 = and i32 %4891, 7
  %5002 = or i32 %5000, %5001
  %5003 = shl i32 1, %5002
  %5004 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %4998, i32 undef)  ; BufferLoad(srv,index,wot)
  %5005 = extractvalue %dx.types.ResRet.i32 %5004, 0
  %5006 = and i32 %5005, %5003
  %5007 = icmp eq i32 %5006, 0
  %5008 = uitofp i1 %5007 to float
  br label %5009

; <label>:5009                                    ; preds = %4991, %4984
  %5010 = phi float [ %5008, %4991 ], [ 1.000000e+00, %4984 ]
  %5011 = fadd fast float %4986, %5010
  %5012 = or i32 %4868, %4914
  %5013 = icmp slt i32 %5012, 0
  %5014 = or i1 %4917, %4871
  %5015 = or i1 %5013, %5014
  br i1 %5015, label %5034, label %5016, !dx.controlflow.hints !52

; <label>:5016                                    ; preds = %5009
  %5017 = lshr i32 %4868, 2
  %5018 = mul i32 %97, %5017
  %5019 = lshr i32 %4914, 3
  %5020 = add i32 %94, %5019
  %5021 = add i32 %5020, %113
  %5022 = add i32 %5021, %5018
  %5023 = shl i32 %5022, 2
  %5024 = shl i32 %4868, 3
  %5025 = and i32 %5024, 24
  %5026 = and i32 %4914, 7
  %5027 = or i32 %5025, %5026
  %5028 = shl i32 1, %5027
  %5029 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %5023, i32 undef)  ; BufferLoad(srv,index,wot)
  %5030 = extractvalue %dx.types.ResRet.i32 %5029, 0
  %5031 = and i32 %5030, %5028
  %5032 = icmp eq i32 %5031, 0
  %5033 = uitofp i1 %5032 to float
  br label %5034

; <label>:5034                                    ; preds = %5016, %5009
  %5035 = phi float [ %5033, %5016 ], [ 1.000000e+00, %5009 ]
  %5036 = fadd fast float %5011, %5035
  %5037 = fmul fast float %2937, 1.500000e+00
  %5038 = fsub fast float 3.000000e+00, %5037
  %5039 = fdiv fast float 0x3FB99999A0000000, %5038
  %5040 = fmul fast float %2937, 2.000000e+00
  %5041 = fsub fast float 8.000000e+00, %5036
  %5042 = fsub fast float %5041, %5040
  %5043 = fmul fast float %5042, 4.000000e+00
  %5044 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5043)  ; FMax(a,b)
  %5045 = fadd fast float %5044, %5036
  %5046 = fmul fast float %5045, %5039
  %5047 = fadd fast float %2937, 1.500000e+00
  %5048 = fsub fast float 1.000000e+00, %5046
  %5049 = call float @dx.op.unary.f32(i32 7, float %5048)  ; Saturate(value)
  %5050 = call float @dx.op.unary.f32(i32 23, float %5049)  ; Log(value)
  %5051 = fmul fast float %5050, %5047
  %5052 = call float @dx.op.unary.f32(i32 21, float %5051)  ; Exp(value)
  %5053 = fmul fast float %2777, %2773
  %5054 = fmul fast float %2778, %2774
  %5055 = fmul fast float %2779, %2775
  %5056 = call float @dx.op.unary.f32(i32 23, float %2915)  ; Log(value)
  %5057 = fmul fast float %5056, 2.500000e-01
  %5058 = call float @dx.op.unary.f32(i32 21, float %5057)  ; Exp(value)
  %5059 = fmul fast float %2780, %2776
  %5060 = fmul fast float %5059, %2781
  %5061 = fmul fast float %5060, %5052
  %5062 = fmul fast float %5061, %5058
  br label %5671

; <label>:5063                                    ; preds = %634
  %5064 = and i32 %674, 511
  %5065 = mul nuw nsw i32 %5064, 20
  %5066 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %5065, i32 undef)  ; BufferLoad(srv,index,wot)
  %5067 = extractvalue %dx.types.ResRet.i32 %5066, 0
  %5068 = lshr i32 %5067, 24
  %5069 = uitofp i32 %5068 to float
  %5070 = add i32 %77, -1
  %5071 = lshr i32 %76, 1
  %5072 = lshr i32 %5070, 1
  %5073 = and i32 %76, 1
  %5074 = shl i32 %5070, 1
  %5075 = and i32 %5074, 2
  %5076 = or i32 %5075, %5073
  %5077 = getelementptr inbounds [4 x i32], [4 x i32]* %25, i32 0, i32 0
  store i32 %636, i32* %5077, align 4
  %5078 = getelementptr inbounds [4 x i32], [4 x i32]* %25, i32 0, i32 1
  store i32 %637, i32* %5078, align 4
  %5079 = getelementptr inbounds [4 x i32], [4 x i32]* %25, i32 0, i32 2
  store i32 %638, i32* %5079, align 4
  %5080 = getelementptr inbounds [4 x i32], [4 x i32]* %25, i32 0, i32 3
  store i32 %639, i32* %5080, align 4
  %5081 = getelementptr [4 x i32], [4 x i32]* %25, i32 0, i32 %5076
  %5082 = load i32, i32* %5081, align 4, !tbaa !43
  %5083 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %11, i32 %5082, i32 %5071, i32 %5072, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5084 = extractvalue %dx.types.ResRet.i32 %5083, 0
  %5085 = lshr i32 %5084, 8
  %5086 = and i32 %5084, 255
  %5087 = and i32 %5085, 255
  %5088 = uitofp i32 %5086 to float
  %5089 = uitofp i32 %5087 to float
  %5090 = fmul fast float %5088, 0x3F80101020000000
  %5091 = fmul fast float %5089, 0x3F80101020000000
  %5092 = fadd fast float %5090, -1.000000e+00
  %5093 = fadd fast float %5091, -1.000000e+00
  %5094 = call float @dx.op.unary.f32(i32 6, float %5092)  ; FAbs(value)
  %5095 = fsub fast float 1.000000e+00, %5094
  %5096 = call float @dx.op.unary.f32(i32 6, float %5093)  ; FAbs(value)
  %5097 = fsub fast float %5095, %5096
  %5098 = fsub fast float -0.000000e+00, %5097
  %5099 = call float @dx.op.binary.f32(i32 35, float %5098, float 0.000000e+00)  ; FMax(a,b)
  %5100 = fcmp fast ogt float %5092, 0.000000e+00
  %5101 = fsub fast float -0.000000e+00, %5099
  %5102 = select i1 %5100, float %5101, float %5099
  %5103 = fadd fast float %5102, %5092
  %5104 = fcmp fast ogt float %5093, 0.000000e+00
  %5105 = select i1 %5104, float %5101, float %5099
  %5106 = fadd fast float %5105, %5093
  %5107 = call float @dx.op.dot3.f32(i32 55, float %5103, float %5106, float %5097, float %5103, float %5106, float %5097)  ; Dot3(ax,ay,az,bx,by,bz)
  %5108 = call float @dx.op.unary.f32(i32 25, float %5107)  ; Rsqrt(value)
  %5109 = fmul fast float %5103, %5108
  %5110 = fmul fast float %5106, %5108
  %5111 = fmul fast float %5108, %5097
  %5112 = add i32 %77, 1
  %5113 = lshr i32 %5112, 1
  %5114 = shl i32 %5112, 1
  %5115 = and i32 %5114, 2
  %5116 = or i32 %5115, %5073
  %5117 = getelementptr inbounds [4 x i32], [4 x i32]* %24, i32 0, i32 0
  store i32 %636, i32* %5117, align 4
  %5118 = getelementptr inbounds [4 x i32], [4 x i32]* %24, i32 0, i32 1
  store i32 %637, i32* %5118, align 4
  %5119 = getelementptr inbounds [4 x i32], [4 x i32]* %24, i32 0, i32 2
  store i32 %638, i32* %5119, align 4
  %5120 = getelementptr inbounds [4 x i32], [4 x i32]* %24, i32 0, i32 3
  store i32 %639, i32* %5120, align 4
  %5121 = getelementptr [4 x i32], [4 x i32]* %24, i32 0, i32 %5116
  %5122 = load i32, i32* %5121, align 4, !tbaa !43
  %5123 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %11, i32 %5122, i32 %5071, i32 %5113, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5124 = extractvalue %dx.types.ResRet.i32 %5123, 0
  %5125 = lshr i32 %5124, 8
  %5126 = and i32 %5124, 255
  %5127 = and i32 %5125, 255
  %5128 = uitofp i32 %5126 to float
  %5129 = uitofp i32 %5127 to float
  %5130 = fmul fast float %5128, 0x3F80101020000000
  %5131 = fmul fast float %5129, 0x3F80101020000000
  %5132 = fadd fast float %5130, -1.000000e+00
  %5133 = fadd fast float %5131, -1.000000e+00
  %5134 = call float @dx.op.unary.f32(i32 6, float %5132)  ; FAbs(value)
  %5135 = fsub fast float 1.000000e+00, %5134
  %5136 = call float @dx.op.unary.f32(i32 6, float %5133)  ; FAbs(value)
  %5137 = fsub fast float %5135, %5136
  %5138 = fsub fast float -0.000000e+00, %5137
  %5139 = call float @dx.op.binary.f32(i32 35, float %5138, float 0.000000e+00)  ; FMax(a,b)
  %5140 = fcmp fast ogt float %5132, 0.000000e+00
  %5141 = fsub fast float -0.000000e+00, %5139
  %5142 = select i1 %5140, float %5141, float %5139
  %5143 = fadd fast float %5142, %5132
  %5144 = fcmp fast ogt float %5133, 0.000000e+00
  %5145 = select i1 %5144, float %5141, float %5139
  %5146 = fadd fast float %5145, %5133
  %5147 = call float @dx.op.dot3.f32(i32 55, float %5143, float %5146, float %5137, float %5143, float %5146, float %5137)  ; Dot3(ax,ay,az,bx,by,bz)
  %5148 = call float @dx.op.unary.f32(i32 25, float %5147)  ; Rsqrt(value)
  %5149 = fmul fast float %5143, %5148
  %5150 = fmul fast float %5146, %5148
  %5151 = fmul fast float %5148, %5137
  %5152 = add i32 %76, -1
  %5153 = lshr i32 %5152, 1
  %5154 = lshr i32 %77, 1
  %5155 = and i32 %5152, 1
  %5156 = shl i32 %77, 1
  %5157 = and i32 %5156, 2
  %5158 = or i32 %5157, %5155
  %5159 = getelementptr inbounds [4 x i32], [4 x i32]* %23, i32 0, i32 0
  store i32 %636, i32* %5159, align 4
  %5160 = getelementptr inbounds [4 x i32], [4 x i32]* %23, i32 0, i32 1
  store i32 %637, i32* %5160, align 4
  %5161 = getelementptr inbounds [4 x i32], [4 x i32]* %23, i32 0, i32 2
  store i32 %638, i32* %5161, align 4
  %5162 = getelementptr inbounds [4 x i32], [4 x i32]* %23, i32 0, i32 3
  store i32 %639, i32* %5162, align 4
  %5163 = getelementptr [4 x i32], [4 x i32]* %23, i32 0, i32 %5158
  %5164 = load i32, i32* %5163, align 4, !tbaa !43
  %5165 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %11, i32 %5164, i32 %5153, i32 %5154, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5166 = extractvalue %dx.types.ResRet.i32 %5165, 0
  %5167 = lshr i32 %5166, 8
  %5168 = and i32 %5166, 255
  %5169 = and i32 %5167, 255
  %5170 = uitofp i32 %5168 to float
  %5171 = uitofp i32 %5169 to float
  %5172 = fmul fast float %5170, 0x3F80101020000000
  %5173 = fmul fast float %5171, 0x3F80101020000000
  %5174 = fadd fast float %5172, -1.000000e+00
  %5175 = fadd fast float %5173, -1.000000e+00
  %5176 = call float @dx.op.unary.f32(i32 6, float %5174)  ; FAbs(value)
  %5177 = fsub fast float 1.000000e+00, %5176
  %5178 = call float @dx.op.unary.f32(i32 6, float %5175)  ; FAbs(value)
  %5179 = fsub fast float %5177, %5178
  %5180 = fsub fast float -0.000000e+00, %5179
  %5181 = call float @dx.op.binary.f32(i32 35, float %5180, float 0.000000e+00)  ; FMax(a,b)
  %5182 = fcmp fast ogt float %5174, 0.000000e+00
  %5183 = fsub fast float -0.000000e+00, %5181
  %5184 = select i1 %5182, float %5183, float %5181
  %5185 = fadd fast float %5184, %5174
  %5186 = fcmp fast ogt float %5175, 0.000000e+00
  %5187 = select i1 %5186, float %5183, float %5181
  %5188 = fadd fast float %5187, %5175
  %5189 = call float @dx.op.dot3.f32(i32 55, float %5185, float %5188, float %5179, float %5185, float %5188, float %5179)  ; Dot3(ax,ay,az,bx,by,bz)
  %5190 = call float @dx.op.unary.f32(i32 25, float %5189)  ; Rsqrt(value)
  %5191 = fmul fast float %5185, %5190
  %5192 = fmul fast float %5188, %5190
  %5193 = fmul fast float %5190, %5179
  %5194 = add i32 %76, 1
  %5195 = lshr i32 %5194, 1
  %5196 = and i32 %5194, 1
  %5197 = or i32 %5157, %5196
  %5198 = getelementptr inbounds [4 x i32], [4 x i32]* %22, i32 0, i32 0
  store i32 %636, i32* %5198, align 4
  %5199 = getelementptr inbounds [4 x i32], [4 x i32]* %22, i32 0, i32 1
  store i32 %637, i32* %5199, align 4
  %5200 = getelementptr inbounds [4 x i32], [4 x i32]* %22, i32 0, i32 2
  store i32 %638, i32* %5200, align 4
  %5201 = getelementptr inbounds [4 x i32], [4 x i32]* %22, i32 0, i32 3
  store i32 %639, i32* %5201, align 4
  %5202 = getelementptr [4 x i32], [4 x i32]* %22, i32 0, i32 %5197
  %5203 = load i32, i32* %5202, align 4, !tbaa !43
  %5204 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %11, i32 %5203, i32 %5195, i32 %5154, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5205 = extractvalue %dx.types.ResRet.i32 %5204, 0
  %5206 = lshr i32 %5205, 8
  %5207 = and i32 %5205, 255
  %5208 = and i32 %5206, 255
  %5209 = uitofp i32 %5207 to float
  %5210 = uitofp i32 %5208 to float
  %5211 = fmul fast float %5209, 0x3F80101020000000
  %5212 = fmul fast float %5210, 0x3F80101020000000
  %5213 = fadd fast float %5211, -1.000000e+00
  %5214 = fadd fast float %5212, -1.000000e+00
  %5215 = call float @dx.op.unary.f32(i32 6, float %5213)  ; FAbs(value)
  %5216 = fsub fast float 1.000000e+00, %5215
  %5217 = call float @dx.op.unary.f32(i32 6, float %5214)  ; FAbs(value)
  %5218 = fsub fast float %5216, %5217
  %5219 = fsub fast float -0.000000e+00, %5218
  %5220 = call float @dx.op.binary.f32(i32 35, float %5219, float 0.000000e+00)  ; FMax(a,b)
  %5221 = fcmp fast ogt float %5213, 0.000000e+00
  %5222 = fsub fast float -0.000000e+00, %5220
  %5223 = select i1 %5221, float %5222, float %5220
  %5224 = fadd fast float %5223, %5213
  %5225 = fcmp fast ogt float %5214, 0.000000e+00
  %5226 = select i1 %5225, float %5222, float %5220
  %5227 = fadd fast float %5226, %5214
  %5228 = call float @dx.op.dot3.f32(i32 55, float %5224, float %5227, float %5218, float %5224, float %5227, float %5218)  ; Dot3(ax,ay,az,bx,by,bz)
  %5229 = call float @dx.op.unary.f32(i32 25, float %5228)  ; Rsqrt(value)
  %5230 = fmul fast float %5224, %5229
  %5231 = fmul fast float %5227, %5229
  %5232 = fmul fast float %5229, %5218
  %5233 = call float @dx.op.dot3.f32(i32 55, float %5109, float %5110, float %5111, float %5149, float %5150, float %5151)  ; Dot3(ax,ay,az,bx,by,bz)
  %5234 = call float @dx.op.binary.f32(i32 36, float 1.000000e+00, float %5233)  ; FMin(a,b)
  %5235 = call float @dx.op.dot3.f32(i32 55, float %5109, float %5110, float %5111, float %5191, float %5192, float %5193)  ; Dot3(ax,ay,az,bx,by,bz)
  %5236 = call float @dx.op.binary.f32(i32 36, float %5234, float %5235)  ; FMin(a,b)
  %5237 = call float @dx.op.dot3.f32(i32 55, float %5109, float %5110, float %5111, float %5230, float %5231, float %5232)  ; Dot3(ax,ay,az,bx,by,bz)
  %5238 = call float @dx.op.binary.f32(i32 36, float %5236, float %5237)  ; FMin(a,b)
  %5239 = call float @dx.op.dot3.f32(i32 55, float %5149, float %5150, float %5151, float %5191, float %5192, float %5193)  ; Dot3(ax,ay,az,bx,by,bz)
  %5240 = call float @dx.op.binary.f32(i32 36, float %5238, float %5239)  ; FMin(a,b)
  %5241 = call float @dx.op.dot3.f32(i32 55, float %5149, float %5150, float %5151, float %5230, float %5231, float %5232)  ; Dot3(ax,ay,az,bx,by,bz)
  %5242 = call float @dx.op.binary.f32(i32 36, float %5240, float %5241)  ; FMin(a,b)
  %5243 = call float @dx.op.dot3.f32(i32 55, float %5191, float %5192, float %5193, float %5230, float %5231, float %5232)  ; Dot3(ax,ay,az,bx,by,bz)
  %5244 = call float @dx.op.binary.f32(i32 36, float %5242, float %5243)  ; FMin(a,b)
  %5245 = call float @dx.op.unary.f32(i32 7, float %5244)  ; Saturate(value)
  %5246 = fsub fast float 1.000000e+00, %5245
  %5247 = add nuw nsw i32 %5065, 12
  %5248 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %5247, i32 undef)  ; BufferLoad(srv,index,wot)
  %5249 = extractvalue %dx.types.ResRet.i32 %5248, 0
  %5250 = lshr i32 %5249, 16
  %5251 = uitofp i32 %5250 to float
  %5252 = fmul fast float %5251, 0x3EF0002000000000
  %5253 = add nuw nsw i32 %5065, 8
  %5254 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %5253, i32 undef)  ; BufferLoad(srv,index,wot)
  %5255 = extractvalue %dx.types.ResRet.i32 %5254, 0
  %5256 = lshr i32 %5255, 16
  %5257 = uitofp i32 %5256 to float
  %5258 = fmul fast float %5257, 0x3EF0002000000000
  %5259 = fsub fast float %58, %5258
  %5260 = fdiv fast float %5259, %5252
  %5261 = fmul fast float %81, %57
  %5262 = fmul fast float %5261, 4.000000e+02
  %5263 = fmul fast float %58, 4.000000e+02
  %5264 = call float @dx.op.unary.f32(i32 22, float %5262)  ; Frc(value)
  %5265 = call float @dx.op.unary.f32(i32 22, float %5263)  ; Frc(value)
  %5266 = fadd fast float %5264, -5.000000e-01
  %5267 = fadd fast float %5265, -5.000000e-01
  %5268 = fmul fast float %5266, 2.000000e+00
  %5269 = fmul fast float %5267, 2.000000e+00
  %5270 = call float @dx.op.dot2.f32(i32 54, float %5268, float %5269, float %5268, float %5269)  ; Dot2(ax,ay,bx,by)
  %5271 = call float @dx.op.unary.f32(i32 24, float %5270)  ; Sqrt(value)
  %5272 = fmul fast float %5271, 0x4004C77B00000000
  %5273 = fsub fast float 2.000000e+00, %5272
  %5274 = call float @dx.op.unary.f32(i32 7, float %5273)  ; Saturate(value)
  %5275 = fmul fast float %5069, 0x3F924C82A0000000
  %5276 = fmul fast float %5069, 0x3F78278DA0000000
  %5277 = fsub fast float 0x400E470B00000000, %5275
  %5278 = fadd fast float %5277, %5260
  %5279 = fmul fast float %5278, 1.000000e+01
  %5280 = call float @dx.op.unary.f32(i32 7, float %5279)  ; Saturate(value)
  %5281 = fsub fast float 0x3FE286BC80000000, %5276
  %5282 = fadd fast float %5281, %5260
  %5283 = fmul fast float %5282, 1.250000e+00
  %5284 = call float @dx.op.unary.f32(i32 7, float %5283)  ; Saturate(value)
  %5285 = fsub fast float 1.000000e+00, %5284
  %5286 = fmul fast float %5285, %5280
  %5287 = fmul fast float %5069, 0x3F8E317100000000
  %5288 = fsub fast float 0x40079435C0000000, %5287
  %5289 = fadd fast float %5288, %5260
  %5290 = fmul fast float %5289, 0x401AAAAAA0000000
  %5291 = call float @dx.op.unary.f32(i32 7, float %5290)  ; Saturate(value)
  %5292 = fsub fast float 1.000000e+00, %5291
  %5293 = fmul fast float %5292, %5280
  %5294 = fmul fast float %5261, 4.500000e+01
  %5295 = fmul fast float %58, 4.500000e+01
  %5296 = fadd fast float %5295, -5.000000e-01
  %5297 = fmul fast float %5261, 0x4039FB1300000000
  %5298 = fadd fast float %5297, 0xBFE279A720000000
  %5299 = call float @dx.op.unary.f32(i32 27, float %5297)  ; Round_ni(value)
  %5300 = call float @dx.op.unary.f32(i32 27, float %5295)  ; Round_ni(value)
  %5301 = call float @dx.op.unary.f32(i32 27, float %5298)  ; Round_ni(value)
  %5302 = call float @dx.op.unary.f32(i32 27, float %5296)  ; Round_ni(value)
  %5303 = fadd fast float %5299, 5.000000e-01
  %5304 = fadd fast float %5300, 5.000000e-01
  %5305 = fmul fast float %5303, 0x3FFBB67B20000000
  %5306 = fsub fast float %5294, %5305
  %5307 = fsub fast float %5295, %5304
  %5308 = fadd fast float %5301, 1.000000e+00
  %5309 = fmul fast float %5308, 0x3FFBB67B20000000
  %5310 = fsub fast float %5294, %5309
  %5311 = fadd fast float %5295, -1.000000e+00
  %5312 = fsub fast float %5311, %5302
  %5313 = call float @dx.op.dot2.f32(i32 54, float %5306, float %5307, float %5306, float %5307)  ; Dot2(ax,ay,bx,by)
  %5314 = call float @dx.op.dot2.f32(i32 54, float %5310, float %5312, float %5310, float %5312)  ; Dot2(ax,ay,bx,by)
  %5315 = fcmp fast olt float %5313, %5314
  %5316 = fadd fast float %5302, 1.000000e+00
  %5317 = select i1 %5315, float %5306, float %5310
  %5318 = select i1 %5315, float %5307, float %5312
  %5319 = select i1 %5315, float %5303, float %5308
  %5320 = select i1 %5315, float %5304, float %5316
  %5321 = call float @dx.op.unary.f32(i32 6, float %5317)  ; FAbs(value)
  %5322 = call float @dx.op.unary.f32(i32 6, float %5318)  ; FAbs(value)
  %5323 = call float @dx.op.dot2.f32(i32 54, float %5321, float %5322, float 0x3FEBB67B20000000, float 5.000000e-01)  ; Dot2(ax,ay,bx,by)
  %5324 = call float @dx.op.binary.f32(i32 35, float %5323, float %5322)  ; FMax(a,b)
  %5325 = fmul fast float %5319, 0x3F96C16C20000000
  %5326 = fmul fast float %5320, 0x3F96C16C20000000
  %5327 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %5328 = extractvalue %dx.types.CBufRet.f32 %5327, 3
  %5329 = call float @dx.op.unary.f32(i32 22, float %5328)  ; Frc(value)
  %5330 = fmul fast float %5329, 0x3FC99999A0000000
  %5331 = fadd fast float %5330, %5326
  %5332 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %13, float %5325, float %5331, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5333 = extractvalue %dx.types.ResRet.f32 %5332, 0
  %5334 = fsub fast float 0x3FEEB851E0000000, %5286
  %5335 = fmul fast float %5334, 0x3FF0AAAAC0000000
  %5336 = call float @dx.op.unary.f32(i32 7, float %5335)  ; Saturate(value)
  %5337 = fmul fast float %5336, 2.000000e+00
  %5338 = fsub fast float 3.000000e+00, %5337
  %5339 = fmul fast float %5336, %5336
  %5340 = fmul fast float %5339, %5338
  %5341 = fadd fast float %5324, 0xBFE0A3D700000000
  %5342 = fadd fast float %5341, %5340
  %5343 = fmul fast float %5342, -2.000000e+01
  %5344 = call float @dx.op.unary.f32(i32 7, float %5343)  ; Saturate(value)
  %5345 = fmul fast float %5344, 2.000000e+00
  %5346 = fsub fast float 3.000000e+00, %5345
  %5347 = fmul fast float %5341, -2.000000e+01
  %5348 = call float @dx.op.unary.f32(i32 7, float %5347)  ; Saturate(value)
  %5349 = fmul fast float %5348, 2.000000e+00
  %5350 = fsub fast float 3.000000e+00, %5349
  %5351 = fmul fast float %5348, %5348
  %5352 = fmul fast float %5351, %5350
  %5353 = fsub fast float 1.000000e+00, %5352
  %5354 = fmul fast float %5353, 0x3FE51EB860000000
  %5355 = fmul fast float %5324, 0x3FC99999A0000000
  %5356 = fsub fast float 1.000000e+00, %5324
  %5357 = fmul fast float %5344, %5344
  %5358 = fmul fast float %5357, %5324
  %5359 = fmul fast float %5358, %5346
  %5360 = fadd fast float %5359, %5356
  %5361 = fmul fast float %5360, %5333
  %5362 = fsub fast float 0x3FEEB851E0000000, %5293
  %5363 = fmul fast float %5362, 0x3FF0AAAAC0000000
  %5364 = call float @dx.op.unary.f32(i32 7, float %5363)  ; Saturate(value)
  %5365 = fmul fast float %5364, 2.000000e+00
  %5366 = fsub fast float 3.000000e+00, %5365
  %5367 = fmul fast float %5364, %5364
  %5368 = fmul fast float %5367, %5366
  %5369 = fadd fast float %5341, %5368
  %5370 = fmul fast float %5369, -2.000000e+01
  %5371 = call float @dx.op.unary.f32(i32 7, float %5370)  ; Saturate(value)
  %5372 = fmul fast float %5371, 2.000000e+00
  %5373 = fsub fast float 3.000000e+00, %5372
  %5374 = fmul fast float %5371, %5371
  %5375 = fmul fast float %5374, %5324
  %5376 = fmul fast float %5375, %5373
  %5377 = fadd fast float %5376, %5356
  %5378 = fmul fast float %5377, %5333
  %5379 = fadd fast float %5354, %5355
  %5380 = fadd fast float %5379, %5378
  %5381 = fmul fast float %5293, 2.000000e+00
  %5382 = fmul fast float %5381, %5380
  %5383 = fadd fast float %5379, %5361
  %5384 = fmul fast float %5383, %5286
  %5385 = fadd fast float %5384, %5382
  %5386 = fmul fast float %5274, 0x3FD99999A0000000
  %5387 = fmul fast float %5246, 0x3FE3333340000000
  %5388 = fadd fast float %5387, 0x3FE3333340000000
  %5389 = fadd fast float %5388, %5386
  %5390 = fmul fast float %5385, %5389
  %5391 = call float @dx.op.unary.f32(i32 23, float %5390)  ; Log(value)
  %5392 = fmul fast float %5391, 3.000000e+00
  %5393 = call float @dx.op.unary.f32(i32 21, float %5392)  ; Exp(value)
  %5394 = fmul fast float %5393, 0x3FF112D7C0000000
  %5395 = fmul fast float %5393, 0xBFF8A1CB00000000
  %5396 = fmul fast float %5395, %5394
  %5397 = call float @dx.op.unary.f32(i32 21, float %5396)  ; Exp(value)
  %5398 = fmul fast float %5393, 0x3FEDDA5080000000
  %5399 = fmul fast float %5393, 0xBFB16E5400000000
  %5400 = fmul fast float %5393, 0xBFEBAC8600000000
  %5401 = fmul fast float %5398, %5397
  %5402 = fmul fast float %5399, %5397
  %5403 = fmul fast float %5400, %5397
  %5404 = fadd fast float %5401, %5394
  %5405 = fadd fast float %5402, %5394
  %5406 = fadd fast float %5403, %5394
  %5407 = call float @dx.op.unary.f32(i32 20, float %5404)  ; Htan(value)
  %5408 = call float @dx.op.unary.f32(i32 20, float %5405)  ; Htan(value)
  %5409 = call float @dx.op.unary.f32(i32 20, float %5406)  ; Htan(value)
  %5410 = fmul fast float %5407, 5.000000e+00
  %5411 = fmul fast float %5408, 5.000000e+00
  %5412 = fmul fast float %5409, 5.000000e+00
  %5413 = call float @dx.op.unary.f32(i32 7, float %5410)  ; Saturate(value)
  %5414 = call float @dx.op.unary.f32(i32 7, float %5411)  ; Saturate(value)
  %5415 = call float @dx.op.unary.f32(i32 7, float %5412)  ; Saturate(value)
  %5416 = fmul fast float %5408, 3.000000e+00
  %5417 = call float @dx.op.unary.f32(i32 7, float %5416)  ; Saturate(value)
  br label %5671

; <label>:5418                                    ; preds = %634
  br i1 %129, label %5419, label %5671, !dx.controlflow.hints !61

; <label>:5419                                    ; preds = %5418
  %5420 = and i32 %674, 511
  %5421 = mul nuw nsw i32 %5420, 20
  %5422 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %5421, i32 undef)  ; BufferLoad(srv,index,wot)
  %5423 = extractvalue %dx.types.ResRet.i32 %5422, 0
  %5424 = and i32 %5423, 255
  %5425 = uitofp i32 %5424 to float
  %5426 = lshr i32 %5423, 8
  %5427 = and i32 %5426, 255
  %5428 = uitofp i32 %5427 to float
  %5429 = lshr i32 %5423, 16
  %5430 = and i32 %5429, 255
  %5431 = uitofp i32 %5430 to float
  %5432 = lshr i32 %5423, 24
  %5433 = uitofp i32 %5432 to float
  %5434 = fmul fast float %5433, 0x3F70101020000000
  %5435 = fsub fast float 1.000000e+00, %5434
  %5436 = add nuw nsw i32 %5421, 12
  %5437 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %5436, i32 undef)  ; BufferLoad(srv,index,wot)
  %5438 = extractvalue %dx.types.ResRet.i32 %5437, 0
  %5439 = and i32 %5438, 65535
  %5440 = uitofp i32 %5439 to float
  %5441 = fmul fast float %5440, 0x3EF0002000000000
  %5442 = lshr i32 %5438, 16
  %5443 = uitofp i32 %5442 to float
  %5444 = fmul fast float %5443, 0x3EF0002000000000
  %5445 = add nuw nsw i32 %5421, 8
  %5446 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %5445, i32 undef)  ; BufferLoad(srv,index,wot)
  %5447 = extractvalue %dx.types.ResRet.i32 %5446, 0
  %5448 = and i32 %5447, 65535
  %5449 = uitofp i32 %5448 to float
  %5450 = fmul fast float %5449, 0x3EF0002000000000
  %5451 = lshr i32 %5447, 16
  %5452 = uitofp i32 %5451 to float
  %5453 = fmul fast float %5452, 0x3EF0002000000000
  %5454 = fsub fast float %57, %5450
  %5455 = fdiv fast float %5454, %5441
  %5456 = fsub fast float %58, %5453
  %5457 = fdiv fast float %5456, %5444
  %5458 = add nuw nsw i32 %5421, 16
  %5459 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %5458, i32 undef)  ; BufferLoad(srv,index,wot)
  %5460 = extractvalue %dx.types.ResRet.f32 %5459, 0
  %5461 = fdiv fast float 2.400000e+02, %5460
  %5462 = call float @dx.op.unary.f32(i32 7, float %5461)  ; Saturate(value)
  %5463 = fmul fast float %5462, 4.000000e+01
  %5464 = fptoui float %5463 to i32
  %5465 = uitofp i32 %76 to float
  %5466 = uitofp i32 %77 to float
  %5467 = fptoui float %5465 to i32
  %5468 = fptoui float %5466 to i32
  %5469 = lshr i32 %5468, 2
  %5470 = mul i32 %97, %5469
  %5471 = lshr i32 %5467, 3
  %5472 = add i32 %94, %5471
  %5473 = add i32 %5472, %113
  %5474 = add i32 %5473, %5470
  %5475 = shl i32 %5474, 2
  %5476 = shl i32 %5468, 3
  %5477 = and i32 %5476, 24
  %5478 = and i32 %5467, 7
  %5479 = or i32 %5477, %5478
  %5480 = shl i32 1, %5479
  %5481 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %5475, i32 undef)  ; BufferLoad(srv,index,wot)
  %5482 = extractvalue %dx.types.ResRet.i32 %5481, 0
  %5483 = and i32 %5482, %5480
  %5484 = icmp ne i32 %5483, 0
  %5485 = icmp eq i32 %5464, 0
  br i1 %5485, label %5602, label %5486, !dx.controlflow.hints !55

; <label>:5486                                    ; preds = %5419
  %5487 = uitofp i32 %5464 to float
  %5488 = fmul fast float %78, 5.000000e-01
  %5489 = fmul fast float %5488, %5487
  %5490 = fmul fast float %79, 5.000000e-01
  %5491 = fmul fast float %5490, %5487
  %5492 = call float @dx.op.binary.f32(i32 35, float 5.000000e-01, float %5489)  ; FMax(a,b)
  %5493 = call float @dx.op.binary.f32(i32 35, float 5.000000e-01, float %5491)  ; FMax(a,b)
  br label %5494

; <label>:5494                                    ; preds = %5589, %5486
  %5495 = phi float [ 0.000000e+00, %5486 ], [ %5592, %5589 ]
  %5496 = phi i32 [ 0, %5486 ], [ %5593, %5589 ]
  %5497 = fmul fast float %57, 0x3FF280E1E0000000
  %5498 = fmul fast float %58, 0x3FF280E1E0000000
  %5499 = sitofp i32 %5496 to float
  %5500 = fmul fast float %5499, 0x3FB99999A0000000
  %5501 = fadd fast float %5500, %5497
  %5502 = fadd fast float %5500, %5498
  %5503 = fmul fast float %5501, 1.024000e+03
  %5504 = fmul fast float %5502, 1.024000e+03
  %5505 = fadd fast float %5503, -5.120000e+02
  %5506 = fadd fast float %5504, -5.120000e+02
  %5507 = fmul fast float %5501, 0x4081BEDF00000000
  %5508 = fadd fast float %5507, 0xC071BEDF00000000
  %5509 = call float @dx.op.unary.f32(i32 22, float %5508)  ; Frc(value)
  %5510 = fmul fast float %5505, %5509
  %5511 = fadd fast float %5510, %5506
  %5512 = fmul fast float %5502, 0x4073BEBE20000000
  %5513 = fadd fast float %5512, 0xC063BEBE20000000
  %5514 = call float @dx.op.unary.f32(i32 22, float %5513)  ; Frc(value)
  %5515 = fmul fast float %5506, %5514
  %5516 = fadd fast float %5515, %5505
  %5517 = fmul fast float %5511, %5516
  %5518 = call float @dx.op.unary.f32(i32 22, float %5517)  ; Frc(value)
  %5519 = fmul fast float %5518, 2.000000e+00
  %5520 = fadd fast float %5519, -1.000000e+00
  %5521 = fmul fast float %5520, %5492
  %5522 = fmul fast float %57, 0x3FEB681740000000
  %5523 = fmul fast float %58, 0x3FEB681740000000
  %5524 = fmul fast float %5499, 0x3FC99999A0000000
  %5525 = fadd fast float %5524, 1.250000e-01
  %5526 = fadd fast float %5525, %5522
  %5527 = fadd fast float %5525, %5523
  %5528 = fmul fast float %5526, 1.024000e+03
  %5529 = fmul fast float %5527, 1.024000e+03
  %5530 = fadd fast float %5528, -5.120000e+02
  %5531 = fadd fast float %5529, -5.120000e+02
  %5532 = fmul fast float %5526, 0x4081BEDF00000000
  %5533 = fadd fast float %5532, 0xC071BEDF00000000
  %5534 = call float @dx.op.unary.f32(i32 22, float %5533)  ; Frc(value)
  %5535 = fmul fast float %5530, %5534
  %5536 = fadd fast float %5535, %5531
  %5537 = fmul fast float %5527, 0x4073BEBE20000000
  %5538 = fadd fast float %5537, 0xC063BEBE20000000
  %5539 = call float @dx.op.unary.f32(i32 22, float %5538)  ; Frc(value)
  %5540 = fmul fast float %5531, %5539
  %5541 = fadd fast float %5540, %5530
  %5542 = fmul fast float %5536, %5541
  %5543 = call float @dx.op.unary.f32(i32 22, float %5542)  ; Frc(value)
  %5544 = fmul fast float %5543, 2.000000e+00
  %5545 = fadd fast float %5544, -1.000000e+00
  %5546 = fmul fast float %5545, %5493
  %5547 = fptosi float %5521 to i32
  %5548 = sitofp i32 %5547 to float
  %5549 = fadd fast float %5548, %5465
  %5550 = fptosi float %5549 to i32
  %5551 = fptosi float %5546 to i32
  %5552 = sitofp i32 %5551 to float
  %5553 = fadd fast float %5552, %5466
  %5554 = fptosi float %5553 to i32
  %5555 = or i32 %5554, %5550
  %5556 = icmp slt i32 %5555, 0
  %5557 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %5558 = extractvalue %dx.types.CBufRet.f32 %5557, 0
  %5559 = extractvalue %dx.types.CBufRet.f32 %5557, 1
  %5560 = fptosi float %5558 to i32
  %5561 = fptosi float %5559 to i32
  %5562 = icmp sge i32 %5550, %5560
  %5563 = icmp sge i32 %5554, %5561
  %5564 = or i1 %5562, %5563
  %5565 = or i1 %5556, %5564
  br i1 %5565, label %5589, label %5566, !dx.controlflow.hints !52

; <label>:5566                                    ; preds = %5494
  %5567 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %17, i32 51)  ; CBufferLoadLegacy(handle,regIndex)
  %5568 = extractvalue %dx.types.CBufRet.i32 %5567, 1
  %5569 = shl i32 %5568, 2
  %5570 = extractvalue %dx.types.CBufRet.i32 %5567, 3
  %5571 = shl i32 %5570, 1
  %5572 = lshr i32 %5554, 2
  %5573 = extractvalue %dx.types.CBufRet.i32 %5567, 2
  %5574 = mul i32 %5573, %5572
  %5575 = lshr i32 %5550, 3
  %5576 = add i32 %5569, %5575
  %5577 = add i32 %5576, %5571
  %5578 = add i32 %5577, %5574
  %5579 = shl i32 %5578, 2
  %5580 = shl i32 %5554, 3
  %5581 = and i32 %5580, 24
  %5582 = and i32 %5550, 7
  %5583 = or i32 %5581, %5582
  %5584 = shl i32 1, %5583
  %5585 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %5579, i32 undef)  ; BufferLoad(srv,index,wot)
  %5586 = extractvalue %dx.types.ResRet.i32 %5585, 0
  %5587 = and i32 %5586, %5584
  %5588 = icmp ne i32 %5587, 0
  br label %5589

; <label>:5589                                    ; preds = %5566, %5494
  %5590 = phi i1 [ %5588, %5566 ], [ false, %5494 ]
  %5591 = uitofp i1 %5590 to float
  %5592 = fadd fast float %5591, %5495
  %5593 = add nuw nsw i32 %5496, 1
  %5594 = icmp eq i32 %5593, 5
  br i1 %5594, label %5595, label %5494

; <label>:5595                                    ; preds = %5589
  %5596 = uitofp i1 %5484 to float
  %5597 = fmul fast float %5596, 0x3FC99999A0000000
  %5598 = fmul fast float %5597, %5592
  %5599 = fadd fast float %5598, -5.000000e-01
  %5600 = fmul fast float %5599, 2.000000e+00
  %5601 = call float @dx.op.unary.f32(i32 7, float %5600)  ; Saturate(value)
  br label %5602

; <label>:5602                                    ; preds = %5595, %5419
  %5603 = phi float [ %5601, %5595 ], [ 0.000000e+00, %5419 ]
  %5604 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %5605 = extractvalue %dx.types.CBufRet.f32 %5604, 3
  %5606 = fmul fast float %5605, 0x3F9EB851E0000000
  %5607 = fadd fast float %5606, %5457
  %5608 = call float @dx.op.unary.f32(i32 22, float %5607)  ; Frc(value)
  %5609 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %13, float %5455, float %5608, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5610 = extractvalue %dx.types.ResRet.f32 %5609, 3
  %5611 = call float @dx.op.unary.f32(i32 7, float %5603)  ; Saturate(value)
  %5612 = fmul fast float %5610, %5435
  %5613 = fsub fast float %5611, %5612
  %5614 = call float @dx.op.unary.f32(i32 7, float %5613)  ; Saturate(value)
  %5615 = fmul fast float %5610, 1.250000e+00
  %5616 = fsub fast float %5611, %5615
  %5617 = call float @dx.op.unary.f32(i32 7, float %5616)  ; Saturate(value)
  %5618 = fmul fast float %5617, 0x3FD3333340000000
  %5619 = fadd fast float %5618, %5614
  %5620 = fmul fast float %5619, %5619
  %5621 = fmul fast float %5620, %5619
  %5622 = call float @dx.op.unary.f32(i32 7, float %5621)  ; Saturate(value)
  %5623 = fmul fast float %5622, 0x3FEBD70A40000000
  %5624 = fsub fast float 1.000000e+00, %5623
  %5625 = call float @dx.op.unary.f32(i32 7, float %57)  ; Saturate(value)
  %5626 = call float @dx.op.unary.f32(i32 7, float %58)  ; Saturate(value)
  %5627 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %14, float %5625, float %5626, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5628 = extractvalue %dx.types.ResRet.f32 %5627, 0
  %5629 = bitcast float %5628 to i32
  %5630 = lshr i32 %5629, 8
  %5631 = and i32 %5629, 255
  %5632 = and i32 %5630, 255
  %5633 = uitofp i32 %5631 to float
  %5634 = uitofp i32 %5632 to float
  %5635 = fmul fast float %5633, 0x3F80101020000000
  %5636 = fmul fast float %5634, 0x3F80101020000000
  %5637 = fadd fast float %5635, -1.000000e+00
  %5638 = fadd fast float %5636, -1.000000e+00
  %5639 = call float @dx.op.unary.f32(i32 6, float %5637)  ; FAbs(value)
  %5640 = fsub fast float 1.000000e+00, %5639
  %5641 = call float @dx.op.unary.f32(i32 6, float %5638)  ; FAbs(value)
  %5642 = fsub fast float %5640, %5641
  %5643 = fsub fast float -0.000000e+00, %5642
  %5644 = call float @dx.op.binary.f32(i32 35, float %5643, float 0.000000e+00)  ; FMax(a,b)
  %5645 = fcmp fast ogt float %5637, 0.000000e+00
  %5646 = fsub fast float -0.000000e+00, %5644
  %5647 = select i1 %5645, float %5646, float %5644
  %5648 = fadd fast float %5647, %5637
  %5649 = fcmp fast ogt float %5638, 0.000000e+00
  %5650 = select i1 %5649, float %5646, float %5644
  %5651 = fadd fast float %5650, %5638
  %5652 = call float @dx.op.dot3.f32(i32 55, float %5648, float %5651, float %5642, float %5648, float %5651, float %5642)  ; Dot3(ax,ay,az,bx,by,bz)
  %5653 = call float @dx.op.unary.f32(i32 25, float %5652)  ; Rsqrt(value)
  %5654 = fmul fast float %5648, %5653
  %5655 = fmul fast float %5651, %5653
  %5656 = fmul fast float %5653, %5642
  %5657 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 101)  ; CBufferLoadLegacy(handle,regIndex)
  %5658 = extractvalue %dx.types.CBufRet.f32 %5657, 0
  %5659 = extractvalue %dx.types.CBufRet.f32 %5657, 1
  %5660 = extractvalue %dx.types.CBufRet.f32 %5657, 2
  %5661 = call float @dx.op.dot3.f32(i32 55, float %5654, float %5655, float %5656, float %5658, float %5659, float %5660)  ; Dot3(ax,ay,az,bx,by,bz)
  %5662 = fadd fast float %5661, 2.500000e-01
  %5663 = call float @dx.op.unary.f32(i32 6, float %5662)  ; FAbs(value)
  %5664 = fsub fast float 1.000000e+00, %5663
  %5665 = fmul fast float %5425, 0x3F7278DF60000000
  %5666 = fmul fast float %5428, 0x3F7278DF60000000
  %5667 = fmul fast float %5431, 0x3F7278DF60000000
  %5668 = fmul fast float %5665, %5664
  %5669 = fmul fast float %5666, %5664
  %5670 = fmul fast float %5667, %5664
  br label %5671

; <label>:5671                                    ; preds = %5602, %5418, %5063, %5034, %2965, %2954, %2593, %2364, %2128, %2126, %1875, %1761, %1024, %1021, %1007, %1005, %634, %629
  %5672 = phi float [ %5413, %5063 ], [ %2599, %2593 ], [ %630, %1875 ], [ %2463, %2364 ], [ %1870, %1761 ], [ %1561, %1024 ], [ %630, %1021 ], [ %630, %629 ], [ %1014, %1007 ], [ %891, %1005 ], [ %2134, %2128 ], [ %2012, %2126 ], [ %2773, %2954 ], [ %5053, %5034 ], [ 0.000000e+00, %2965 ], [ %5668, %5602 ], [ 0.000000e+00, %5418 ], [ 1.000000e+00, %634 ]
  %5673 = phi float [ %5414, %5063 ], [ %2600, %2593 ], [ %631, %1875 ], [ %2464, %2364 ], [ %1871, %1761 ], [ %1562, %1024 ], [ %631, %1021 ], [ %631, %629 ], [ %1016, %1007 ], [ %892, %1005 ], [ %2136, %2128 ], [ %2013, %2126 ], [ %2774, %2954 ], [ %5054, %5034 ], [ 0.000000e+00, %2965 ], [ %5669, %5602 ], [ 0.000000e+00, %5418 ], [ 0.000000e+00, %634 ]
  %5674 = phi float [ %5415, %5063 ], [ %2601, %2593 ], [ %632, %1875 ], [ %2465, %2364 ], [ %1872, %1761 ], [ %1563, %1024 ], [ %632, %1021 ], [ %632, %629 ], [ %1018, %1007 ], [ %893, %1005 ], [ %2138, %2128 ], [ %2014, %2126 ], [ %2775, %2954 ], [ %5055, %5034 ], [ 0.000000e+00, %2965 ], [ %5670, %5602 ], [ 0.000000e+00, %5418 ], [ 0.000000e+00, %634 ]
  %5675 = phi float [ %5417, %5063 ], [ %2602, %2593 ], [ %633, %1875 ], [ %2467, %2364 ], [ %1874, %1761 ], [ %1564, %1024 ], [ %633, %1021 ], [ %633, %629 ], [ %1020, %1007 ], [ %894, %1005 ], [ %2140, %2128 ], [ %2015, %2126 ], [ %2964, %2954 ], [ %5062, %5034 ], [ 0.000000e+00, %2965 ], [ %5624, %5602 ], [ 0.000000e+00, %5418 ], [ 1.000000e+00, %634 ]
  %5676 = fmul fast float %5675, %5672
  %5677 = fmul fast float %5675, %5673
  %5678 = fmul fast float %5675, %5674
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %48, i32 %49, i32 undef, float %5676, float %5677, float %5678, float %5675, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %5679 = fcmp fast ogt float %5675, 0.000000e+00
  %5680 = and i1 %5679, %130
  %5681 = zext i1 %5680 to i32
  %5682 = mul i32 %18, 8
  %5683 = add i32 %19, %5682
  %5684 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?gsHudOutlineMask1@@3PAY07$$CAIA.1dim", i32 0, i32 %5683
  store i32 %5681, i32 addrspace(3)* %5684, align 4, !tbaa !43
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %5685 = or i32 %19, %18
  %5686 = icmp ult i32 %5685, 4
  br i1 %5686, label %5687, label %5711, !dx.controlflow.hints !62

; <label>:5687                                    ; preds = %5671
  %5688 = shl i32 %18, 1
  %5689 = shl i32 %19, 1
  %5690 = mul i32 %5688, 8
  %5691 = add i32 %5689, %5690
  %5692 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?gsHudOutlineMask1@@3PAY07$$CAIA.1dim", i32 0, i32 %5691
  %5693 = load i32, i32 addrspace(3)* %5692, align 4, !tbaa !43
  %5694 = or i32 %5689, 1
  %5695 = mul i32 %5688, 8
  %5696 = add i32 %5694, %5695
  %5697 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?gsHudOutlineMask1@@3PAY07$$CAIA.1dim", i32 0, i32 %5696
  %5698 = load i32, i32 addrspace(3)* %5697, align 4, !tbaa !43
  %5699 = or i32 %5688, 1
  %5700 = mul i32 %5699, 8
  %5701 = add i32 %5694, %5700
  %5702 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?gsHudOutlineMask1@@3PAY07$$CAIA.1dim", i32 0, i32 %5701
  %5703 = load i32, i32 addrspace(3)* %5702, align 4, !tbaa !43
  %5704 = mul i32 %5699, 8
  %5705 = add i32 %5689, %5704
  %5706 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?gsHudOutlineMask1@@3PAY07$$CAIA.1dim", i32 0, i32 %5705
  %5707 = load i32, i32 addrspace(3)* %5706, align 4, !tbaa !43
  %5708 = or i32 %5698, %5693
  %5709 = or i32 %5708, %5703
  %5710 = or i32 %5709, %5707
  store i32 %5710, i32 addrspace(3)* %5684, align 4, !tbaa !43
  br label %5711

; <label>:5711                                    ; preds = %5687, %5671
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %5712 = icmp ult i32 %5685, 2
  br i1 %5712, label %5713, label %5743, !dx.controlflow.hints !63

; <label>:5713                                    ; preds = %5711
  %5714 = shl i32 %18, 1
  %5715 = shl i32 %19, 1
  %5716 = mul i32 %5714, 8
  %5717 = add i32 %5715, %5716
  %5718 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?gsHudOutlineMask1@@3PAY07$$CAIA.1dim", i32 0, i32 %5717
  %5719 = load i32, i32 addrspace(3)* %5718, align 4, !tbaa !43
  %5720 = or i32 %5715, 1
  %5721 = mul i32 %5714, 8
  %5722 = add i32 %5720, %5721
  %5723 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?gsHudOutlineMask1@@3PAY07$$CAIA.1dim", i32 0, i32 %5722
  %5724 = load i32, i32 addrspace(3)* %5723, align 4, !tbaa !43
  %5725 = or i32 %5714, 1
  %5726 = mul i32 %5725, 8
  %5727 = add i32 %5720, %5726
  %5728 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?gsHudOutlineMask1@@3PAY07$$CAIA.1dim", i32 0, i32 %5727
  %5729 = load i32, i32 addrspace(3)* %5728, align 4, !tbaa !43
  %5730 = mul i32 %5725, 8
  %5731 = add i32 %5715, %5730
  %5732 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?gsHudOutlineMask1@@3PAY07$$CAIA.1dim", i32 0, i32 %5731
  %5733 = load i32, i32 addrspace(3)* %5732, align 4, !tbaa !43
  %5734 = or i32 %5724, %5719
  %5735 = or i32 %5734, %5729
  %5736 = or i32 %5735, %5733
  %5737 = icmp ne i32 %5736, 0
  %5738 = select i1 %5737, float 1.000000e+00, float 0.000000e+00
  %5739 = lshr i32 %48, 2
  %5740 = lshr i32 %49, 2
  %5741 = add i32 %5739, %18
  %5742 = add i32 %5740, %19
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %5741, i32 %5742, i32 undef, float %5738, float %5738, float %5738, float %5738, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %5743

; <label>:5743                                    ; preds = %5713, %5711, %0
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
!50 = distinct !{!50, !"dx.controlflow.hints", i32 1}
!51 = distinct !{!51, !"dx.controlflow.hints", i32 1}
!52 = distinct !{!52, !"dx.controlflow.hints", i32 2}
!53 = distinct !{!53, !"dx.controlflow.hints", i32 1}
!54 = distinct !{!54, !"dx.controlflow.hints", i32 2}
!55 = distinct !{!55, !"dx.controlflow.hints", i32 1}
!56 = distinct !{!56, !"dx.controlflow.hints", i32 2}
!57 = distinct !{!57, !"dx.controlflow.hints", i32 2}
!58 = distinct !{!58, !"dx.controlflow.hints", i32 1}
!59 = distinct !{!59, !"dx.controlflow.hints", i32 1}
!60 = distinct !{!60, !"dx.controlflow.hints", i32 2}
!61 = distinct !{!61, !"dx.controlflow.hints", i32 2}
!62 = distinct !{!62, !"dx.controlflow.hints", i32 2}
!63 = distinct !{!63, !"dx.controlflow.hints", i32 2}

