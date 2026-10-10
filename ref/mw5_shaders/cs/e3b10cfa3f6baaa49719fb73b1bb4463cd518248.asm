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
; shader hash: 0400a26cd62887d9b10b82682f363ab2
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
;                                   texture     f32          2d      T0             t0     1
;                                   texture     u32          2d      T1             t8     1
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
;                                       UAV     f32          2d      U2             u2     1
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.CBufRet.i32 = type { i32, i32, i32, i32 }
%dx.types.ResRet.i32 = type { i32, i32, i32, i32, i32 }
%dx.types.CBufRet.f32 = type { float, float, float, float }
%dx.types.ResRet.f32 = type { float, float, float, float, i32 }
%"class.Texture2D<vector<float, 4> >" = type { <4 x float>, %"class.Texture2D<vector<float, 4> >::mips_type" }
%"class.Texture2D<vector<float, 4> >::mips_type" = type { i32 }
%"class.Texture2D<unsigned int>" = type { i32, %"class.Texture2D<unsigned int>::mips_type" }
%"class.Texture2D<unsigned int>::mips_type" = type { i32 }
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
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 13, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 12, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 2, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call i32 @dx.op.threadIdInGroup.i32(i32 95, i32 0)  ; ThreadIdInGroup(component)
  %20 = call i32 @dx.op.threadIdInGroup.i32(i32 95, i32 1)  ; ThreadIdInGroup(component)
  %21 = call i32 @dx.op.groupId.i32(i32 94, i32 1)  ; GroupId(component)
  %22 = call i32 @dx.op.groupId.i32(i32 94, i32 2)  ; GroupId(component)
  %23 = shl i32 %22, 8
  %24 = add i32 %23, %21
  %25 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %16, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %26 = extractvalue %dx.types.CBufRet.i32 %25, 3
  %27 = icmp ult i32 %24, %26
  br i1 %27, label %28, label %5562, !dx.controlflow.hints !33

; <label>:28                                      ; preds = %0
  %29 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %24, i32 0)  ; BufferLoad(srv,index,wot)
  %30 = extractvalue %dx.types.ResRet.i32 %29, 0
  %31 = shl i32 %30, 3
  %32 = and i32 %31, 524280
  %33 = lshr i32 %30, 13
  %34 = and i32 %33, 32760
  %35 = add i32 %32, %19
  %36 = add i32 %34, %20
  %37 = uitofp i32 %35 to float
  %38 = uitofp i32 %36 to float
  %39 = fadd fast float %37, 5.000000e-01
  %40 = fadd fast float %38, 5.000000e-01
  %41 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %42 = extractvalue %dx.types.CBufRet.f32 %41, 2
  %43 = extractvalue %dx.types.CBufRet.f32 %41, 3
  %44 = fmul fast float %39, %42
  %45 = fmul fast float %40, %43
  %46 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %47 = extractvalue %dx.types.CBufRet.f32 %46, 0
  %48 = extractvalue %dx.types.CBufRet.f32 %46, 1
  %49 = fmul fast float %44, %47
  %50 = fmul fast float %45, %48
  %51 = frem fast float %49, 1.200000e+01
  %52 = frem fast float %50, 1.200000e+01
  %53 = fptoui float %51 to i32
  %54 = fptoui float %52 to i32
  %55 = icmp eq i32 %53, 0
  %56 = icmp eq i32 %54, 0
  %57 = and i32 %53, 14
  %58 = and i32 %54, 14
  %59 = extractvalue %dx.types.CBufRet.f32 %41, 0
  %60 = extractvalue %dx.types.CBufRet.f32 %41, 1
  %61 = fmul fast float %44, %59
  %62 = fmul fast float %45, %60
  %63 = fptoui float %61 to i32
  %64 = fptoui float %62 to i32
  %65 = fdiv fast float %59, %47
  %66 = fdiv fast float %60, %48
  %67 = fdiv fast float %47, %48
  %68 = call float @dx.op.binary.f32(i32 35, float 1.000000e+00, float %67)  ; FMax(a,b)
  %69 = fdiv fast float %48, %47
  %70 = call float @dx.op.binary.f32(i32 35, float 1.000000e+00, float %69)  ; FMax(a,b)
  %71 = icmp ne i32 %58, 6
  %72 = and i1 %55, %71
  %73 = icmp ne i32 %57, 6
  %74 = and i1 %56, %73
  %75 = or i1 %74, %72
  %76 = fptoui float %50 to i32
  %77 = and i32 %76, 2
  %78 = icmp ne i32 %77, 0
  %79 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %18, i32 51)  ; CBufferLoadLegacy(handle,regIndex)
  %80 = extractvalue %dx.types.CBufRet.i32 %79, 1
  %81 = shl i32 %80, 2
  %82 = extractvalue %dx.types.CBufRet.i32 %79, 3
  %83 = lshr i32 %64, 2
  %84 = extractvalue %dx.types.CBufRet.i32 %79, 2
  %85 = mul i32 %84, %83
  %86 = lshr i32 %63, 3
  %87 = add i32 %82, %86
  %88 = add i32 %87, %81
  %89 = add i32 %88, %85
  %90 = shl i32 %89, 2
  %91 = shl i32 %64, 3
  %92 = and i32 %91, 24
  %93 = and i32 %63, 7
  %94 = or i32 %92, %93
  %95 = shl i32 1, %94
  %96 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %90, i32 undef)  ; BufferLoad(srv,index,wot)
  %97 = extractvalue %dx.types.ResRet.i32 %96, 0
  %98 = and i32 %97, %95
  %99 = icmp ne i32 %98, 0
  %100 = shl i32 %82, 1
  %101 = add i32 %81, %86
  %102 = add i32 %101, %100
  %103 = add i32 %102, %85
  %104 = shl i32 %103, 2
  %105 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %104, i32 undef)  ; BufferLoad(srv,index,wot)
  %106 = extractvalue %dx.types.ResRet.i32 %105, 0
  %107 = and i32 %106, %95
  %108 = icmp eq i32 %107, 0
  %109 = mul i32 %82, 3
  %110 = add i32 %101, %109
  %111 = add i32 %110, %85
  %112 = shl i32 %111, 2
  %113 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %112, i32 undef)  ; BufferLoad(srv,index,wot)
  %114 = extractvalue %dx.types.ResRet.i32 %113, 0
  %115 = and i32 %114, %95
  %116 = icmp ne i32 %115, 0
  %117 = xor i1 %116, true
  %118 = icmp ugt i32 %30, 268435455
  br i1 %118, label %119, label %616, !dx.controlflow.hints !34

; <label>:119                                     ; preds = %28
  %120 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %10, i32 0, i32 %35, i32 %36, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %121 = extractvalue %dx.types.ResRet.f32 %120, 0
  %122 = fcmp fast ogt float %121, -1.000000e+00
  %123 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %124 = extractvalue %dx.types.CBufRet.f32 %123, 1
  %125 = select i1 %122, float %124, float 1.000000e+00
  %126 = fadd fast float %121, 1.000000e+00
  %127 = fmul fast float %125, %126
  %128 = call float @dx.op.unary.f32(i32 6, float %127)  ; FAbs(value)
  %129 = extractvalue %dx.types.CBufRet.f32 %123, 3
  %130 = fcmp ult float %128, %129
  %131 = fcmp uge float %121, -1.000000e+00
  %132 = and i1 %131, %130
  br i1 %132, label %133, label %616, !dx.controlflow.hints !35

; <label>:133                                     ; preds = %119
  %134 = fmul fast float %44, 2.000000e+00
  %135 = fmul fast float %45, 2.000000e+00
  %136 = fsub fast float 1.000000e+00, %134
  %137 = fsub fast float 1.000000e+00, %135
  %138 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %139 = extractvalue %dx.types.CBufRet.f32 %138, 0
  %140 = extractvalue %dx.types.CBufRet.f32 %138, 1
  %141 = extractvalue %dx.types.CBufRet.f32 %138, 2
  %142 = fmul fast float %139, %136
  %143 = fmul fast float %140, %136
  %144 = fmul fast float %141, %136
  %145 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %146 = extractvalue %dx.types.CBufRet.f32 %145, 0
  %147 = extractvalue %dx.types.CBufRet.f32 %145, 1
  %148 = extractvalue %dx.types.CBufRet.f32 %145, 2
  %149 = fmul fast float %146, %137
  %150 = fmul fast float %147, %137
  %151 = fmul fast float %148, %137
  %152 = fadd fast float %149, %142
  %153 = fadd fast float %150, %143
  %154 = fadd fast float %151, %144
  %155 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %156 = extractvalue %dx.types.CBufRet.f32 %155, 0
  %157 = extractvalue %dx.types.CBufRet.f32 %155, 1
  %158 = extractvalue %dx.types.CBufRet.f32 %155, 2
  %159 = fadd fast float %152, %156
  %160 = fadd fast float %153, %157
  %161 = fadd fast float %154, %158
  %162 = fmul fast float %159, %159
  %163 = fmul fast float %160, %160
  %164 = fadd fast float %162, %163
  %165 = fmul fast float %161, %161
  %166 = fadd fast float %164, %165
  %167 = call float @dx.op.unary.f32(i32 24, float %166)  ; Sqrt(value)
  %168 = fdiv fast float 1.000000e+00, %167
  %169 = fmul fast float %159, %168
  %170 = fmul fast float %160, %168
  %171 = fmul fast float %161, %168
  %172 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %173 = extractvalue %dx.types.CBufRet.f32 %172, 0
  %174 = extractvalue %dx.types.CBufRet.f32 %172, 1
  %175 = extractvalue %dx.types.CBufRet.f32 %172, 2
  %176 = fmul fast float %173, 9.687500e-01
  %177 = fmul fast float %174, 9.687500e-01
  %178 = fmul fast float %175, 9.687500e-01
  %179 = fadd fast float %176, 1.562500e-02
  %180 = fadd fast float %177, 1.562500e-02
  %181 = fadd fast float %178, 1.562500e-02
  %182 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %14, float %179, float %180, float %181, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %183 = extractvalue %dx.types.ResRet.f32 %182, 0
  %184 = extractvalue %dx.types.ResRet.f32 %182, 1
  %185 = extractvalue %dx.types.ResRet.f32 %182, 2
  %186 = fmul fast float %167, %128
  %187 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %18, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %188 = extractvalue %dx.types.CBufRet.i32 %187, 0
  %189 = icmp eq i32 %188, 0
  br i1 %189, label %399, label %190

; <label>:190                                     ; preds = %133
  br label %191

; <label>:191                                     ; preds = %392, %190
  %192 = phi float [ %393, %392 ], [ 0.000000e+00, %190 ]
  %193 = phi i32 [ %394, %392 ], [ 0, %190 ]
  %194 = add i32 %193, 171
  %195 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 %194)  ; CBufferLoadLegacy(handle,regIndex)
  %196 = extractvalue %dx.types.CBufRet.f32 %195, 2
  %197 = extractvalue %dx.types.CBufRet.f32 %195, 0
  %198 = extractvalue %dx.types.CBufRet.f32 %195, 1
  %199 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %200 = extractvalue %dx.types.CBufRet.f32 %199, 0
  %201 = extractvalue %dx.types.CBufRet.f32 %199, 1
  %202 = fsub fast float %197, %200
  %203 = fsub fast float %198, %201
  %204 = fsub fast float -0.000000e+00, %202
  %205 = fsub fast float -0.000000e+00, %203
  %206 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %169, float %170, float %171)  ; Dot3(ax,ay,az,bx,by,bz)
  %207 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %204, float %205, float 0.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %208 = fmul fast float %206, %206
  %209 = fsub fast float 1.000000e+00, %208
  %210 = call float @dx.op.dot3.f32(i32 55, float %204, float %205, float 0.000000e+00, float %169, float %170, float %171)  ; Dot3(ax,ay,az,bx,by,bz)
  %211 = fmul fast float %207, %206
  %212 = fsub fast float %210, %211
  %213 = call float @dx.op.dot3.f32(i32 55, float %204, float %205, float 0.000000e+00, float %204, float %205, float 0.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %214 = fmul fast float %207, %207
  %215 = fmul fast float %196, %196
  %216 = fsub fast float -0.000000e+00, %215
  %217 = fsub fast float %216, %214
  %218 = fadd fast float %217, %213
  %219 = fmul fast float %212, %212
  %220 = fmul fast float %218, %209
  %221 = fsub fast float %219, %220
  %222 = fcmp fast ult float %221, 0.000000e+00
  br i1 %222, label %392, label %223, !dx.controlflow.hints !36

; <label>:223                                     ; preds = %191
  %224 = call float @dx.op.unary.f32(i32 24, float %221)  ; Sqrt(value)
  %225 = fsub fast float -0.000000e+00, %212
  %226 = fsub fast float %225, %224
  %227 = fsub fast float %224, %212
  %228 = fdiv fast float %226, %209
  %229 = fdiv fast float %227, %209
  %230 = fcmp fast ole float %228, 0.000000e+00
  %231 = fcmp fast ole float %229, 0.000000e+00
  %232 = and i1 %230, %231
  br i1 %232, label %392, label %233, !dx.controlflow.hints !37

; <label>:233                                     ; preds = %223
  %234 = fmul fast float %228, %169
  %235 = fmul fast float %228, %170
  %236 = fmul fast float %228, %171
  %237 = fmul fast float %229, %169
  %238 = fmul fast float %229, %170
  %239 = fmul fast float %229, %171
  %240 = zext i1 %230 to i32
  %241 = zext i1 %231 to i32
  %242 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %18, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %243 = extractvalue %dx.types.CBufRet.i32 %242, 0
  %244 = icmp eq i32 %243, 0
  br i1 %244, label %289, label %245

; <label>:245                                     ; preds = %233
  br label %246

; <label>:246                                     ; preds = %277, %245
  %247 = phi i32 [ %278, %277 ], [ %240, %245 ]
  %248 = phi i32 [ %279, %277 ], [ %241, %245 ]
  %249 = phi i32 [ %280, %277 ], [ 0, %245 ]
  %250 = icmp eq i32 %193, %249
  br i1 %250, label %277, label %251, !dx.controlflow.hints !38

; <label>:251                                     ; preds = %246
  %252 = add i32 %249, 171
  %253 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 %252)  ; CBufferLoadLegacy(handle,regIndex)
  %254 = extractvalue %dx.types.CBufRet.f32 %253, 2
  %255 = extractvalue %dx.types.CBufRet.f32 %253, 0
  %256 = extractvalue %dx.types.CBufRet.f32 %253, 1
  %257 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %258 = extractvalue %dx.types.CBufRet.f32 %257, 0
  %259 = extractvalue %dx.types.CBufRet.f32 %257, 1
  %260 = fsub fast float %255, %258
  %261 = fsub fast float %256, %259
  %262 = fsub fast float %260, %234
  %263 = fsub fast float %261, %235
  %264 = call float @dx.op.dot2.f32(i32 54, float %262, float %263, float %262, float %263)  ; Dot2(ax,ay,bx,by)
  %265 = fsub fast float %260, %237
  %266 = fsub fast float %261, %238
  %267 = call float @dx.op.dot2.f32(i32 54, float %265, float %266, float %265, float %266)  ; Dot2(ax,ay,bx,by)
  %268 = fmul fast float %254, %254
  %269 = fcmp fast olt float %264, %268
  %270 = fcmp fast olt float %267, %268
  %271 = icmp ne i32 %247, 0
  %272 = or i1 %271, %269
  %273 = zext i1 %272 to i32
  %274 = icmp ne i32 %248, 0
  %275 = or i1 %274, %270
  %276 = zext i1 %275 to i32
  br label %277

; <label>:277                                     ; preds = %251, %246
  %278 = phi i32 [ %247, %246 ], [ %273, %251 ]
  %279 = phi i32 [ %248, %246 ], [ %276, %251 ]
  %280 = add nuw nsw i32 %249, 1
  %281 = icmp eq i32 %278, 0
  %282 = icmp eq i32 %279, 0
  %283 = or i1 %281, %282
  %284 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %18, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %285 = extractvalue %dx.types.CBufRet.i32 %284, 0
  %286 = icmp ult i32 %280, %285
  %287 = and i1 %283, %286
  br i1 %287, label %246, label %288

; <label>:288                                     ; preds = %277
  br label %289

; <label>:289                                     ; preds = %288, %233
  %290 = phi i32 [ %240, %233 ], [ %278, %288 ]
  %291 = phi i32 [ %241, %233 ], [ %279, %288 ]
  br label %292

; <label>:292                                     ; preds = %292, %289
  %293 = phi i32 [ %328, %292 ], [ %240, %289 ]
  %294 = phi i32 [ %338, %292 ], [ %241, %289 ]
  %295 = phi i32 [ %339, %292 ], [ 0, %289 ]
  %296 = add nuw nsw i32 %295, 191
  %297 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 %296)  ; CBufferLoadLegacy(handle,regIndex)
  %298 = extractvalue %dx.types.CBufRet.f32 %297, 0
  %299 = extractvalue %dx.types.CBufRet.f32 %297, 1
  %300 = extractvalue %dx.types.CBufRet.f32 %297, 2
  %301 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %302 = extractvalue %dx.types.CBufRet.f32 %301, 0
  %303 = extractvalue %dx.types.CBufRet.f32 %301, 1
  %304 = extractvalue %dx.types.CBufRet.f32 %301, 2
  %305 = fsub fast float %298, %302
  %306 = fsub fast float %299, %303
  %307 = fsub fast float %300, %304
  %308 = add nuw nsw i32 %295, 195
  %309 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 %308)  ; CBufferLoadLegacy(handle,regIndex)
  %310 = extractvalue %dx.types.CBufRet.f32 %309, 0
  %311 = extractvalue %dx.types.CBufRet.f32 %309, 1
  %312 = extractvalue %dx.types.CBufRet.f32 %309, 2
  %313 = fsub fast float %305, %234
  %314 = fsub fast float %306, %235
  %315 = fsub fast float %307, %236
  %316 = fsub fast float %305, %237
  %317 = fsub fast float %306, %238
  %318 = fsub fast float %307, %239
  %319 = call float @dx.op.unary.f32(i32 6, float %313)  ; FAbs(value)
  %320 = fcmp fast olt float %319, %310
  %321 = call float @dx.op.unary.f32(i32 6, float %314)  ; FAbs(value)
  %322 = fcmp fast olt float %321, %311
  %323 = and i1 %320, %322
  %324 = call float @dx.op.unary.f32(i32 6, float %315)  ; FAbs(value)
  %325 = fcmp fast olt float %324, %312
  %326 = and i1 %323, %325
  %327 = zext i1 %326 to i32
  %328 = or i32 %327, %293
  %329 = call float @dx.op.unary.f32(i32 6, float %316)  ; FAbs(value)
  %330 = fcmp fast olt float %329, %310
  %331 = call float @dx.op.unary.f32(i32 6, float %317)  ; FAbs(value)
  %332 = fcmp fast olt float %331, %311
  %333 = and i1 %330, %332
  %334 = call float @dx.op.unary.f32(i32 6, float %318)  ; FAbs(value)
  %335 = fcmp fast olt float %334, %312
  %336 = and i1 %333, %335
  %337 = zext i1 %336 to i32
  %338 = or i32 %337, %294
  %339 = add nuw nsw i32 %295, 1
  %340 = icmp eq i32 %328, 0
  %341 = icmp eq i32 %338, 0
  %342 = or i1 %340, %341
  %343 = icmp slt i32 %339, 4
  %344 = and i1 %343, %342
  br i1 %344, label %292, label %345

; <label>:345                                     ; preds = %292
  %346 = or i32 %328, %290
  %347 = icmp eq i32 %346, 0
  %348 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %349 = extractvalue %dx.types.CBufRet.f32 %348, 3
  %350 = fcmp fast ogt float %228, 0.000000e+00
  br i1 %350, label %351, label %366, !dx.controlflow.hints !39

; <label>:351                                     ; preds = %345
  %352 = fsub fast float %186, %228
  %353 = fcmp fast ole float %228, %186
  %354 = fcmp fast ole float %352, %349
  %355 = and i1 %353, %354
  %356 = select i1 %355, float 1.000000e+00, float 0.000000e+00
  %357 = fmul fast float %349, -1.500000e+00
  %358 = fsub fast float %352, %349
  %359 = fdiv fast float %358, %357
  %360 = call float @dx.op.unary.f32(i32 7, float %359)  ; Saturate(value)
  %361 = fmul fast float %360, 2.000000e+00
  %362 = fsub fast float 3.000000e+00, %361
  %363 = fmul fast float %360, %360
  %364 = fmul fast float %363, %356
  %365 = fmul fast float %364, %362
  br label %366

; <label>:366                                     ; preds = %351, %345
  %367 = phi float [ %365, %351 ], [ 0.000000e+00, %345 ]
  %368 = select i1 %347, float %367, float 0.000000e+00
  %369 = fadd fast float %368, %192
  %370 = or i32 %338, %291
  %371 = icmp eq i32 %370, 0
  %372 = fcmp fast ogt float %229, 0.000000e+00
  br i1 %372, label %373, label %388, !dx.controlflow.hints !39

; <label>:373                                     ; preds = %366
  %374 = fsub fast float %186, %229
  %375 = fcmp fast ole float %229, %186
  %376 = fcmp fast ole float %374, %349
  %377 = and i1 %375, %376
  %378 = select i1 %377, float 1.000000e+00, float 0.000000e+00
  %379 = fmul fast float %349, -1.500000e+00
  %380 = fsub fast float %374, %349
  %381 = fdiv fast float %380, %379
  %382 = call float @dx.op.unary.f32(i32 7, float %381)  ; Saturate(value)
  %383 = fmul fast float %382, 2.000000e+00
  %384 = fsub fast float 3.000000e+00, %383
  %385 = fmul fast float %382, %382
  %386 = fmul fast float %385, %378
  %387 = fmul fast float %386, %384
  br label %388

; <label>:388                                     ; preds = %373, %366
  %389 = phi float [ %387, %373 ], [ 0.000000e+00, %366 ]
  %390 = select i1 %371, float %389, float 0.000000e+00
  %391 = fadd fast float %369, %390
  br label %392

; <label>:392                                     ; preds = %388, %223, %191
  %393 = phi float [ %192, %223 ], [ %391, %388 ], [ %192, %191 ]
  %394 = add nuw nsw i32 %193, 1
  %395 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %18, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %396 = extractvalue %dx.types.CBufRet.i32 %395, 0
  %397 = icmp ult i32 %394, %396
  br i1 %397, label %191, label %398

; <label>:398                                     ; preds = %392
  br label %399

; <label>:399                                     ; preds = %398, %133
  %400 = phi float [ 0.000000e+00, %133 ], [ %393, %398 ]
  br label %401

; <label>:401                                     ; preds = %611, %399
  %402 = phi float [ %612, %611 ], [ %400, %399 ]
  %403 = phi i32 [ %613, %611 ], [ 0, %399 ]
  %404 = add nuw nsw i32 %403, 191
  %405 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 %404)  ; CBufferLoadLegacy(handle,regIndex)
  %406 = extractvalue %dx.types.CBufRet.f32 %405, 0
  %407 = extractvalue %dx.types.CBufRet.f32 %405, 1
  %408 = extractvalue %dx.types.CBufRet.f32 %405, 2
  %409 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %410 = extractvalue %dx.types.CBufRet.f32 %409, 0
  %411 = extractvalue %dx.types.CBufRet.f32 %409, 1
  %412 = extractvalue %dx.types.CBufRet.f32 %409, 2
  %413 = fsub fast float %406, %410
  %414 = fsub fast float %407, %411
  %415 = fsub fast float %408, %412
  %416 = add nuw nsw i32 %403, 195
  %417 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 %416)  ; CBufferLoadLegacy(handle,regIndex)
  %418 = extractvalue %dx.types.CBufRet.f32 %417, 0
  %419 = extractvalue %dx.types.CBufRet.f32 %417, 1
  %420 = extractvalue %dx.types.CBufRet.f32 %417, 2
  %421 = fdiv fast float 1.000000e+00, %169
  %422 = fdiv fast float 1.000000e+00, %170
  %423 = fdiv fast float 1.000000e+00, %171
  %424 = fadd fast float %413, %418
  %425 = fadd fast float %414, %419
  %426 = fadd fast float %415, %420
  %427 = fsub fast float %413, %418
  %428 = fsub fast float %414, %419
  %429 = fsub fast float %415, %420
  %430 = fmul fast float %427, %421
  %431 = fmul fast float %424, %421
  %432 = call float @dx.op.binary.f32(i32 36, float %430, float %431)  ; FMin(a,b)
  %433 = call float @dx.op.binary.f32(i32 35, float %430, float %431)  ; FMax(a,b)
  %434 = fmul fast float %428, %422
  %435 = fmul fast float %425, %422
  %436 = call float @dx.op.binary.f32(i32 36, float %434, float %435)  ; FMin(a,b)
  %437 = call float @dx.op.binary.f32(i32 35, float %432, float %436)  ; FMax(a,b)
  %438 = call float @dx.op.binary.f32(i32 35, float %434, float %435)  ; FMax(a,b)
  %439 = call float @dx.op.binary.f32(i32 36, float %433, float %438)  ; FMin(a,b)
  %440 = fmul fast float %423, %429
  %441 = fmul fast float %423, %426
  %442 = call float @dx.op.binary.f32(i32 36, float %440, float %441)  ; FMin(a,b)
  %443 = call float @dx.op.binary.f32(i32 35, float %437, float %442)  ; FMax(a,b)
  %444 = call float @dx.op.binary.f32(i32 35, float %440, float %441)  ; FMax(a,b)
  %445 = call float @dx.op.binary.f32(i32 36, float %439, float %444)  ; FMin(a,b)
  %446 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %443)  ; FMax(a,b)
  %447 = fcmp fast ult float %445, %446
  br i1 %447, label %611, label %448, !dx.controlflow.hints !40

; <label>:448                                     ; preds = %401
  %449 = fcmp fast ole float %443, 0.000000e+00
  %450 = fcmp fast ole float %445, 0.000000e+00
  %451 = and i1 %449, %450
  br i1 %451, label %611, label %452, !dx.controlflow.hints !41

; <label>:452                                     ; preds = %448
  %453 = fmul fast float %443, %169
  %454 = fmul fast float %443, %170
  %455 = fmul fast float %443, %171
  %456 = fmul fast float %445, %169
  %457 = fmul fast float %445, %170
  %458 = fmul fast float %445, %171
  %459 = zext i1 %449 to i32
  %460 = zext i1 %450 to i32
  %461 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %18, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %462 = extractvalue %dx.types.CBufRet.i32 %461, 0
  %463 = icmp eq i32 %462, 0
  br i1 %463, label %501, label %464

; <label>:464                                     ; preds = %452
  br label %465

; <label>:465                                     ; preds = %465, %464
  %466 = phi i32 [ %489, %465 ], [ %459, %464 ]
  %467 = phi i32 [ %491, %465 ], [ %460, %464 ]
  %468 = phi i32 [ %492, %465 ], [ 0, %464 ]
  %469 = add i32 %468, 171
  %470 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 %469)  ; CBufferLoadLegacy(handle,regIndex)
  %471 = extractvalue %dx.types.CBufRet.f32 %470, 2
  %472 = extractvalue %dx.types.CBufRet.f32 %470, 0
  %473 = extractvalue %dx.types.CBufRet.f32 %470, 1
  %474 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %475 = extractvalue %dx.types.CBufRet.f32 %474, 0
  %476 = extractvalue %dx.types.CBufRet.f32 %474, 1
  %477 = fsub fast float %472, %475
  %478 = fsub fast float %473, %476
  %479 = fsub fast float %477, %453
  %480 = fsub fast float %478, %454
  %481 = call float @dx.op.dot2.f32(i32 54, float %479, float %480, float %479, float %480)  ; Dot2(ax,ay,bx,by)
  %482 = fsub fast float %477, %456
  %483 = fsub fast float %478, %457
  %484 = call float @dx.op.dot2.f32(i32 54, float %482, float %483, float %482, float %483)  ; Dot2(ax,ay,bx,by)
  %485 = fmul fast float %471, %471
  %486 = fcmp fast olt float %481, %485
  %487 = fcmp fast olt float %484, %485
  %488 = zext i1 %486 to i32
  %489 = or i32 %488, %466
  %490 = zext i1 %487 to i32
  %491 = or i32 %490, %467
  %492 = add nuw nsw i32 %468, 1
  %493 = icmp eq i32 %489, 0
  %494 = icmp eq i32 %491, 0
  %495 = or i1 %493, %494
  %496 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %18, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %497 = extractvalue %dx.types.CBufRet.i32 %496, 0
  %498 = icmp ult i32 %492, %497
  %499 = and i1 %498, %495
  br i1 %499, label %465, label %500

; <label>:500                                     ; preds = %465
  br label %501

; <label>:501                                     ; preds = %500, %452
  %502 = phi i32 [ %459, %452 ], [ %489, %500 ]
  %503 = phi i32 [ %460, %452 ], [ %491, %500 ]
  br label %504

; <label>:504                                     ; preds = %555, %501
  %505 = phi i32 [ %556, %555 ], [ %459, %501 ]
  %506 = phi i32 [ %557, %555 ], [ %460, %501 ]
  %507 = phi i32 [ %558, %555 ], [ 0, %501 ]
  %508 = icmp eq i32 %403, %507
  br i1 %508, label %555, label %509, !dx.controlflow.hints !42

; <label>:509                                     ; preds = %504
  %510 = add nuw nsw i32 %507, 191
  %511 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 %510)  ; CBufferLoadLegacy(handle,regIndex)
  %512 = extractvalue %dx.types.CBufRet.f32 %511, 0
  %513 = extractvalue %dx.types.CBufRet.f32 %511, 1
  %514 = extractvalue %dx.types.CBufRet.f32 %511, 2
  %515 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %516 = extractvalue %dx.types.CBufRet.f32 %515, 0
  %517 = extractvalue %dx.types.CBufRet.f32 %515, 1
  %518 = extractvalue %dx.types.CBufRet.f32 %515, 2
  %519 = fsub fast float %512, %516
  %520 = fsub fast float %513, %517
  %521 = fsub fast float %514, %518
  %522 = add nuw nsw i32 %507, 195
  %523 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 %522)  ; CBufferLoadLegacy(handle,regIndex)
  %524 = extractvalue %dx.types.CBufRet.f32 %523, 0
  %525 = extractvalue %dx.types.CBufRet.f32 %523, 1
  %526 = extractvalue %dx.types.CBufRet.f32 %523, 2
  %527 = fsub fast float %519, %453
  %528 = fsub fast float %520, %454
  %529 = fsub fast float %521, %455
  %530 = fsub fast float %519, %456
  %531 = fsub fast float %520, %457
  %532 = fsub fast float %521, %458
  %533 = call float @dx.op.unary.f32(i32 6, float %527)  ; FAbs(value)
  %534 = fcmp fast ole float %533, %524
  %535 = call float @dx.op.unary.f32(i32 6, float %528)  ; FAbs(value)
  %536 = fcmp fast ole float %535, %525
  %537 = and i1 %534, %536
  %538 = call float @dx.op.unary.f32(i32 6, float %529)  ; FAbs(value)
  %539 = fcmp fast ole float %538, %526
  %540 = and i1 %537, %539
  %541 = icmp ne i32 %505, 0
  %542 = or i1 %541, %540
  %543 = zext i1 %542 to i32
  %544 = call float @dx.op.unary.f32(i32 6, float %530)  ; FAbs(value)
  %545 = fcmp fast ole float %544, %524
  %546 = call float @dx.op.unary.f32(i32 6, float %531)  ; FAbs(value)
  %547 = fcmp fast ole float %546, %525
  %548 = and i1 %545, %547
  %549 = call float @dx.op.unary.f32(i32 6, float %532)  ; FAbs(value)
  %550 = fcmp fast ole float %549, %526
  %551 = and i1 %548, %550
  %552 = icmp ne i32 %506, 0
  %553 = or i1 %552, %551
  %554 = zext i1 %553 to i32
  br label %555

; <label>:555                                     ; preds = %509, %504
  %556 = phi i32 [ %505, %504 ], [ %543, %509 ]
  %557 = phi i32 [ %506, %504 ], [ %554, %509 ]
  %558 = add nuw nsw i32 %507, 1
  %559 = icmp eq i32 %556, 0
  %560 = icmp eq i32 %557, 0
  %561 = or i1 %559, %560
  %562 = icmp slt i32 %558, 4
  %563 = and i1 %562, %561
  br i1 %563, label %504, label %564

; <label>:564                                     ; preds = %555
  %565 = or i32 %556, %502
  %566 = icmp eq i32 %565, 0
  %567 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %568 = extractvalue %dx.types.CBufRet.f32 %567, 3
  %569 = fcmp fast ogt float %443, 0.000000e+00
  br i1 %569, label %570, label %585, !dx.controlflow.hints !39

; <label>:570                                     ; preds = %564
  %571 = fsub fast float %186, %443
  %572 = fcmp fast ole float %443, %186
  %573 = fcmp fast ole float %571, %568
  %574 = and i1 %572, %573
  %575 = select i1 %574, float 1.000000e+00, float 0.000000e+00
  %576 = fmul fast float %568, -1.500000e+00
  %577 = fsub fast float %571, %568
  %578 = fdiv fast float %577, %576
  %579 = call float @dx.op.unary.f32(i32 7, float %578)  ; Saturate(value)
  %580 = fmul fast float %579, 2.000000e+00
  %581 = fsub fast float 3.000000e+00, %580
  %582 = fmul fast float %579, %579
  %583 = fmul fast float %582, %575
  %584 = fmul fast float %583, %581
  br label %585

; <label>:585                                     ; preds = %570, %564
  %586 = phi float [ %584, %570 ], [ 0.000000e+00, %564 ]
  %587 = select i1 %566, float %586, float 0.000000e+00
  %588 = fadd fast float %587, %402
  %589 = or i32 %557, %503
  %590 = icmp eq i32 %589, 0
  %591 = fcmp fast ogt float %445, 0.000000e+00
  br i1 %591, label %592, label %607, !dx.controlflow.hints !39

; <label>:592                                     ; preds = %585
  %593 = fsub fast float %186, %445
  %594 = fcmp fast ole float %445, %186
  %595 = fcmp fast ole float %593, %568
  %596 = and i1 %594, %595
  %597 = select i1 %596, float 1.000000e+00, float 0.000000e+00
  %598 = fmul fast float %568, -1.500000e+00
  %599 = fsub fast float %593, %568
  %600 = fdiv fast float %599, %598
  %601 = call float @dx.op.unary.f32(i32 7, float %600)  ; Saturate(value)
  %602 = fmul fast float %601, 2.000000e+00
  %603 = fsub fast float 3.000000e+00, %602
  %604 = fmul fast float %601, %601
  %605 = fmul fast float %604, %597
  %606 = fmul fast float %605, %603
  br label %607

; <label>:607                                     ; preds = %592, %585
  %608 = phi float [ %606, %592 ], [ 0.000000e+00, %585 ]
  %609 = select i1 %590, float %608, float 0.000000e+00
  %610 = fadd fast float %588, %609
  br label %611

; <label>:611                                     ; preds = %607, %448, %401
  %612 = phi float [ %402, %448 ], [ %610, %607 ], [ %402, %401 ]
  %613 = add nuw nsw i32 %403, 1
  %614 = icmp eq i32 %613, 4
  br i1 %614, label %615, label %401

; <label>:615                                     ; preds = %611
  br label %616

; <label>:616                                     ; preds = %615, %119, %28
  %617 = phi float [ 0.000000e+00, %119 ], [ 0.000000e+00, %28 ], [ %183, %615 ]
  %618 = phi float [ 0.000000e+00, %119 ], [ 0.000000e+00, %28 ], [ %184, %615 ]
  %619 = phi float [ 0.000000e+00, %119 ], [ 0.000000e+00, %28 ], [ %185, %615 ]
  %620 = phi float [ 0.000000e+00, %119 ], [ 0.000000e+00, %28 ], [ %612, %615 ]
  br i1 %108, label %5478, label %621, !dx.controlflow.hints !43

; <label>:621                                     ; preds = %616
  %622 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %13, i32 0, i32 %63, i32 %64, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %623 = extractvalue %dx.types.ResRet.f32 %622, 0
  %624 = extractvalue %dx.types.ResRet.f32 %622, 1
  %625 = fadd fast float %624, 0x3F40000000000000
  %626 = fmul fast float %625, 2.550000e+02
  %627 = fadd fast float %623, 0x3F40000000000000
  %628 = fmul fast float %627, 2.550000e+02
  %629 = fptoui float %626 to i32
  %630 = shl i32 %629, 8
  %631 = fptoui float %628 to i32
  %632 = and i32 %631, 255
  %633 = or i32 %630, %632
  %634 = mul i32 %633, 100
  %635 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %634, i32 undef)  ; BufferLoad(srv,index,wot)
  %636 = extractvalue %dx.types.ResRet.i32 %635, 0
  %637 = lshr i32 %636, 28
  %638 = and i32 %636, 131072
  %639 = lshr exact i32 %638, 17
  %640 = and i32 %636, 262144
  %641 = lshr exact i32 %640, 18
  %642 = lshr i32 %636, 24
  %643 = and i32 %642, 1
  switch i32 %637, label %5478 [
    i32 0, label %644
    i32 1, label %987
    i32 2, label %1417
    i32 3, label %1727
    i32 4, label %2319
    i32 5, label %2454
    i32 6, label %4913
    i32 7, label %5225
  ], !dx.controlflow.hints !44

; <label>:644                                     ; preds = %621
  %645 = and i32 %636, 511
  %646 = mul nuw nsw i32 %645, 20
  %647 = add nuw nsw i32 %646, 4
  %648 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %647, i32 undef)  ; BufferLoad(srv,index,wot)
  %649 = extractvalue %dx.types.ResRet.i32 %648, 0
  %650 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %646, i32 undef)  ; BufferLoad(srv,index,wot)
  %651 = extractvalue %dx.types.ResRet.i32 %650, 0
  %652 = and i32 %636, 524288
  %653 = icmp ne i32 %652, 0
  %654 = and i32 %636, 2097152
  %655 = icmp ne i32 %654, 0
  %656 = lshr i32 %649, 8
  %657 = and i32 %656, 65535
  %658 = call float @dx.op.legacyF16ToF32(i32 131, i32 %657)  ; LegacyF16ToF32(value)
  %659 = lshr i32 %649, 24
  %660 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 228)  ; CBufferLoadLegacy(handle,regIndex)
  %661 = extractvalue %dx.types.CBufRet.f32 %660, 2
  %662 = extractvalue %dx.types.CBufRet.f32 %660, 0
  %663 = call float @dx.op.binary.f32(i32 35, float %44, float %662)  ; FMax(a,b)
  %664 = call float @dx.op.binary.f32(i32 36, float %663, float %661)  ; FMin(a,b)
  %665 = call float @dx.op.binary.f32(i32 36, float %44, float %662)  ; FMin(a,b)
  %666 = call float @dx.op.binary.f32(i32 35, float %665, float %664)  ; FMax(a,b)
  %667 = fcmp fast oeq float %44, %666
  %668 = extractvalue %dx.types.CBufRet.f32 %660, 3
  %669 = extractvalue %dx.types.CBufRet.f32 %660, 1
  %670 = call float @dx.op.binary.f32(i32 35, float %45, float %669)  ; FMax(a,b)
  %671 = call float @dx.op.binary.f32(i32 36, float %670, float %668)  ; FMin(a,b)
  %672 = call float @dx.op.binary.f32(i32 36, float %45, float %669)  ; FMin(a,b)
  %673 = call float @dx.op.binary.f32(i32 35, float %672, float %671)  ; FMax(a,b)
  %674 = fcmp fast oeq float %45, %673
  %675 = and i1 %667, %674
  %676 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 224)  ; CBufferLoadLegacy(handle,regIndex)
  %677 = extractvalue %dx.types.CBufRet.f32 %676, 1
  %678 = select i1 %675, float %677, float 1.000000e+00
  %679 = icmp ne i32 %659, 0
  %680 = and i1 %99, %679
  br i1 %680, label %681, label %745, !dx.controlflow.hints !45

; <label>:681                                     ; preds = %644
  %682 = sitofp i32 %659 to float
  %683 = fmul fast float %682, 0x3F70101020000000
  %684 = fmul fast float %683, %678
  %685 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %686 = extractvalue %dx.types.CBufRet.f32 %685, 3
  %687 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %688 = extractvalue %dx.types.CBufRet.f32 %687, 2
  %689 = fmul fast float %688, %684
  %690 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %691 = extractvalue %dx.types.CBufRet.f32 %690, 0
  %692 = extractvalue %dx.types.CBufRet.f32 %690, 1
  %693 = extractvalue %dx.types.CBufRet.f32 %690, 2
  %694 = extractvalue %dx.types.CBufRet.f32 %690, 3
  %695 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %696 = extractvalue %dx.types.CBufRet.f32 %695, 0
  %697 = extractvalue %dx.types.CBufRet.f32 %695, 1
  %698 = extractvalue %dx.types.CBufRet.f32 %695, 2
  %699 = extractvalue %dx.types.CBufRet.f32 %695, 3
  %700 = select i1 %653, float %691, float %696
  %701 = select i1 %653, float %692, float %697
  %702 = select i1 %653, float %693, float %698
  %703 = select i1 %653, float %694, float %699
  %704 = fmul fast float %700, %684
  %705 = fmul fast float %701, %684
  %706 = fmul fast float %702, %684
  %707 = fmul fast float %703, %684
  br i1 %116, label %734, label %708, !dx.controlflow.hints !46

; <label>:708                                     ; preds = %681
  %709 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 10)  ; CBufferLoadLegacy(handle,regIndex)
  %710 = extractvalue %dx.types.CBufRet.f32 %709, 0
  %711 = extractvalue %dx.types.CBufRet.f32 %709, 1
  %712 = extractvalue %dx.types.CBufRet.f32 %709, 2
  %713 = extractvalue %dx.types.CBufRet.f32 %709, 3
  %714 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %715 = extractvalue %dx.types.CBufRet.f32 %714, 0
  %716 = extractvalue %dx.types.CBufRet.f32 %714, 1
  %717 = extractvalue %dx.types.CBufRet.f32 %714, 2
  %718 = extractvalue %dx.types.CBufRet.f32 %714, 3
  %719 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %720 = extractvalue %dx.types.CBufRet.f32 %719, 0
  %721 = extractvalue %dx.types.CBufRet.f32 %719, 1
  %722 = extractvalue %dx.types.CBufRet.f32 %719, 2
  %723 = extractvalue %dx.types.CBufRet.f32 %719, 3
  %724 = extractvalue %dx.types.CBufRet.f32 %687, 1
  %725 = fmul fast float %720, %704
  %726 = fmul fast float %725, %724
  %727 = fmul fast float %721, %705
  %728 = fmul fast float %727, %724
  %729 = fmul fast float %722, %706
  %730 = fmul fast float %729, %724
  %731 = fmul fast float %723, %707
  %732 = fmul fast float %731, %724
  %733 = fmul fast float %724, %689
  br label %856

; <label>:734                                     ; preds = %681
  %735 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %736 = extractvalue %dx.types.CBufRet.f32 %735, 0
  %737 = extractvalue %dx.types.CBufRet.f32 %735, 1
  %738 = extractvalue %dx.types.CBufRet.f32 %735, 2
  %739 = extractvalue %dx.types.CBufRet.f32 %735, 3
  %740 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %741 = extractvalue %dx.types.CBufRet.f32 %740, 0
  %742 = extractvalue %dx.types.CBufRet.f32 %740, 1
  %743 = extractvalue %dx.types.CBufRet.f32 %740, 2
  %744 = extractvalue %dx.types.CBufRet.f32 %740, 3
  br label %856

; <label>:745                                     ; preds = %644
  %746 = and i32 %636, 1048576
  %747 = icmp ne i32 %746, 0
  %748 = lshr i32 %651, 24
  %749 = uitofp i32 %748 to float
  %750 = fmul fast float %749, 0x3F70101020000000
  %751 = lshr i32 %651, 16
  %752 = and i32 %751, 255
  %753 = uitofp i32 %752 to float
  %754 = fmul fast float %753, 0x3F70101020000000
  %755 = lshr i32 %651, 8
  %756 = and i32 %755, 255
  %757 = uitofp i32 %756 to float
  %758 = fmul fast float %757, 0x3F70101020000000
  %759 = and i32 %651, 255
  %760 = uitofp i32 %759 to float
  %761 = fmul fast float %760, 0x3F70101020000000
  %762 = and i32 %636, 65536
  %763 = icmp ne i32 %762, 0
  %764 = select i1 %763, float 1.000000e+00, float 0.000000e+00
  %765 = and i32 %636, 32768
  %766 = icmp ne i32 %765, 0
  %767 = select i1 %766, float 0.000000e+00, float 1.000000e+00
  %768 = select i1 %99, float %678, float %767
  %769 = fmul fast float %768, %764
  %770 = fmul fast float %761, %768
  %771 = fmul fast float %758, %768
  %772 = fmul fast float %754, %768
  %773 = fmul fast float %750, %768
  %774 = select i1 %116, float 0.000000e+00, float 1.000000e+00
  %775 = select i1 %747, float %774, float %769
  br i1 %116, label %817, label %776, !dx.controlflow.hints !47

; <label>:776                                     ; preds = %745
  %777 = icmp ne i32 %638, 0
  %778 = select i1 %777, float 1.000000e+00, float 0.000000e+00
  %779 = fmul fast float %775, %778
  %780 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %781 = extractvalue %dx.types.CBufRet.f32 %780, 0
  %782 = extractvalue %dx.types.CBufRet.f32 %780, 1
  %783 = extractvalue %dx.types.CBufRet.f32 %780, 2
  %784 = extractvalue %dx.types.CBufRet.f32 %780, 3
  %785 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %786 = extractvalue %dx.types.CBufRet.f32 %785, 0
  %787 = extractvalue %dx.types.CBufRet.f32 %785, 1
  %788 = extractvalue %dx.types.CBufRet.f32 %785, 2
  %789 = extractvalue %dx.types.CBufRet.f32 %785, 3
  %790 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %791 = extractvalue %dx.types.CBufRet.f32 %790, 0
  %792 = extractvalue %dx.types.CBufRet.f32 %790, 1
  %793 = extractvalue %dx.types.CBufRet.f32 %790, 2
  %794 = extractvalue %dx.types.CBufRet.f32 %790, 3
  %795 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %796 = extractvalue %dx.types.CBufRet.f32 %795, 0
  %797 = fsub fast float %770, %768
  %798 = fsub fast float %771, %768
  %799 = fsub fast float %772, %768
  %800 = fsub fast float %773, %768
  %801 = fmul fast float %796, %797
  %802 = fmul fast float %796, %798
  %803 = fmul fast float %796, %799
  %804 = fmul fast float %796, %800
  %805 = fadd fast float %801, %768
  %806 = fadd fast float %802, %768
  %807 = fadd fast float %803, %768
  %808 = fadd fast float %804, %768
  %809 = fmul fast float %791, %778
  %810 = fmul fast float %809, %805
  %811 = fmul fast float %792, %778
  %812 = fmul fast float %811, %806
  %813 = fmul fast float %793, %778
  %814 = fmul fast float %813, %807
  %815 = fmul fast float %794, %778
  %816 = fmul fast float %815, %808
  br label %834

; <label>:817                                     ; preds = %745
  %818 = icmp ne i32 %640, 0
  %819 = select i1 %818, float 1.000000e+00, float 0.000000e+00
  %820 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %821 = extractvalue %dx.types.CBufRet.f32 %820, 0
  %822 = extractvalue %dx.types.CBufRet.f32 %820, 1
  %823 = extractvalue %dx.types.CBufRet.f32 %820, 2
  %824 = extractvalue %dx.types.CBufRet.f32 %820, 3
  %825 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %826 = extractvalue %dx.types.CBufRet.f32 %825, 0
  %827 = extractvalue %dx.types.CBufRet.f32 %825, 1
  %828 = extractvalue %dx.types.CBufRet.f32 %825, 2
  %829 = extractvalue %dx.types.CBufRet.f32 %825, 3
  %830 = fmul fast float %770, %819
  %831 = fmul fast float %771, %819
  %832 = fmul fast float %772, %819
  %833 = fmul fast float %773, %819
  br label %834

; <label>:834                                     ; preds = %817, %776
  %835 = phi float [ %810, %776 ], [ %830, %817 ]
  %836 = phi float [ %812, %776 ], [ %831, %817 ]
  %837 = phi float [ %814, %776 ], [ %832, %817 ]
  %838 = phi float [ %816, %776 ], [ %833, %817 ]
  %839 = phi float [ %786, %776 ], [ %826, %817 ]
  %840 = phi float [ %787, %776 ], [ %827, %817 ]
  %841 = phi float [ %788, %776 ], [ %828, %817 ]
  %842 = phi float [ %789, %776 ], [ %829, %817 ]
  %843 = phi float [ %781, %776 ], [ %821, %817 ]
  %844 = phi float [ %782, %776 ], [ %822, %817 ]
  %845 = phi float [ %783, %776 ], [ %823, %817 ]
  %846 = phi float [ %784, %776 ], [ %824, %817 ]
  %847 = phi float [ %779, %776 ], [ %775, %817 ]
  %848 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %849 = extractvalue %dx.types.CBufRet.f32 %848, 0
  %850 = fmul fast float %849, 2.000000e+00
  %851 = select i1 %655, float %850, float 1.000000e+00
  %852 = fmul fast float %851, %835
  %853 = fmul fast float %851, %836
  %854 = fmul fast float %851, %837
  %855 = fmul fast float %851, %838
  br label %856

; <label>:856                                     ; preds = %834, %734, %708
  %857 = phi float [ %852, %834 ], [ %726, %708 ], [ %704, %734 ]
  %858 = phi float [ %853, %834 ], [ %728, %708 ], [ %705, %734 ]
  %859 = phi float [ %854, %834 ], [ %730, %708 ], [ %706, %734 ]
  %860 = phi float [ %855, %834 ], [ %732, %708 ], [ %707, %734 ]
  %861 = phi float [ %839, %834 ], [ %715, %708 ], [ %741, %734 ]
  %862 = phi float [ %840, %834 ], [ %716, %708 ], [ %742, %734 ]
  %863 = phi float [ %841, %834 ], [ %717, %708 ], [ %743, %734 ]
  %864 = phi float [ %842, %834 ], [ %718, %708 ], [ %744, %734 ]
  %865 = phi float [ %843, %834 ], [ %710, %708 ], [ %736, %734 ]
  %866 = phi float [ %844, %834 ], [ %711, %708 ], [ %737, %734 ]
  %867 = phi float [ %845, %834 ], [ %712, %708 ], [ %738, %734 ]
  %868 = phi float [ %846, %834 ], [ %713, %708 ], [ %739, %734 ]
  %869 = phi float [ %847, %834 ], [ %733, %708 ], [ %689, %734 ]
  %870 = phi float [ %658, %834 ], [ %686, %708 ], [ %686, %734 ]
  %871 = fcmp fast oeq float %870, 0.000000e+00
  br i1 %871, label %971, label %872, !dx.controlflow.hints !48

; <label>:872                                     ; preds = %856
  %873 = fmul fast float %870, %65
  %874 = fptosi float %873 to i32
  %875 = fmul fast float %870, %66
  %876 = fptosi float %875 to i32
  %877 = call i32 @dx.op.binary.i32(i32 37, i32 1, i32 %874)  ; IMax(a,b)
  %878 = call i32 @dx.op.binary.i32(i32 37, i32 1, i32 %876)  ; IMax(a,b)
  %879 = sub i32 %64, %878
  %880 = or i32 %879, %63
  %881 = icmp slt i32 %880, 0
  %882 = fptosi float %59 to i32
  %883 = fptosi float %60 to i32
  %884 = icmp sge i32 %63, %882
  %885 = icmp sge i32 %879, %883
  %886 = or i1 %884, %885
  %887 = or i1 %881, %886
  br i1 %887, label %901, label %888, !dx.controlflow.hints !49

; <label>:888                                     ; preds = %872
  %889 = lshr i32 %879, 2
  %890 = mul i32 %84, %889
  %891 = add i32 %102, %890
  %892 = shl i32 %891, 2
  %893 = shl i32 %879, 3
  %894 = and i32 %893, 24
  %895 = or i32 %894, %93
  %896 = shl i32 1, %895
  %897 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %892, i32 undef)  ; BufferLoad(srv,index,wot)
  %898 = extractvalue %dx.types.ResRet.i32 %897, 0
  %899 = and i32 %898, %896
  %900 = icmp ne i32 %899, 0
  br label %901

; <label>:901                                     ; preds = %888, %872
  %902 = phi i1 [ %900, %888 ], [ false, %872 ]
  %903 = add i32 %878, %64
  %904 = or i32 %903, %63
  %905 = icmp slt i32 %904, 0
  %906 = icmp sge i32 %903, %883
  %907 = or i1 %884, %906
  %908 = or i1 %905, %907
  br i1 %908, label %922, label %909, !dx.controlflow.hints !49

; <label>:909                                     ; preds = %901
  %910 = lshr i32 %903, 2
  %911 = mul i32 %84, %910
  %912 = add i32 %102, %911
  %913 = shl i32 %912, 2
  %914 = shl i32 %903, 3
  %915 = and i32 %914, 24
  %916 = or i32 %915, %93
  %917 = shl i32 1, %916
  %918 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %913, i32 undef)  ; BufferLoad(srv,index,wot)
  %919 = extractvalue %dx.types.ResRet.i32 %918, 0
  %920 = and i32 %919, %917
  %921 = icmp ne i32 %920, 0
  br label %922

; <label>:922                                     ; preds = %909, %901
  %923 = phi i1 [ %921, %909 ], [ false, %901 ]
  %924 = and i1 %902, %923
  %925 = sub i32 %63, %877
  %926 = or i32 %925, %64
  %927 = icmp slt i32 %926, 0
  %928 = icmp sge i32 %925, %882
  %929 = icmp sge i32 %64, %883
  %930 = or i1 %928, %929
  %931 = or i1 %927, %930
  br i1 %931, label %945, label %932, !dx.controlflow.hints !49

; <label>:932                                     ; preds = %922
  %933 = lshr i32 %925, 3
  %934 = add i32 %81, %933
  %935 = add i32 %934, %100
  %936 = add i32 %935, %85
  %937 = shl i32 %936, 2
  %938 = and i32 %925, 7
  %939 = or i32 %938, %92
  %940 = shl i32 1, %939
  %941 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %937, i32 undef)  ; BufferLoad(srv,index,wot)
  %942 = extractvalue %dx.types.ResRet.i32 %941, 0
  %943 = and i32 %942, %940
  %944 = icmp ne i32 %943, 0
  br label %945

; <label>:945                                     ; preds = %932, %922
  %946 = phi i1 [ %944, %932 ], [ false, %922 ]
  %947 = and i1 %924, %946
  %948 = add i32 %877, %63
  %949 = or i32 %948, %64
  %950 = icmp slt i32 %949, 0
  %951 = icmp sge i32 %948, %882
  %952 = or i1 %951, %929
  %953 = or i1 %950, %952
  br i1 %953, label %967, label %954, !dx.controlflow.hints !49

; <label>:954                                     ; preds = %945
  %955 = lshr i32 %948, 3
  %956 = add i32 %81, %955
  %957 = add i32 %956, %100
  %958 = add i32 %957, %85
  %959 = shl i32 %958, 2
  %960 = and i32 %948, 7
  %961 = or i32 %960, %92
  %962 = shl i32 1, %961
  %963 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %959, i32 undef)  ; BufferLoad(srv,index,wot)
  %964 = extractvalue %dx.types.ResRet.i32 %963, 0
  %965 = and i32 %964, %962
  %966 = icmp ne i32 %965, 0
  br label %967

; <label>:967                                     ; preds = %954, %945
  %968 = phi i1 [ %966, %954 ], [ false, %945 ]
  %969 = and i1 %947, %968
  %970 = xor i1 %969, true
  br label %971

; <label>:971                                     ; preds = %967, %856
  %972 = phi i1 [ %970, %967 ], [ false, %856 ]
  br i1 %972, label %5478, label %973, !dx.controlflow.hints !50

; <label>:973                                     ; preds = %971
  %974 = select i1 %116, i1 %78, i1 %75
  %975 = select i1 %974, float %861, float %865
  %976 = select i1 %974, float %862, float %866
  %977 = select i1 %974, float %863, float %867
  %978 = select i1 %974, float %864, float %868
  %979 = fmul fast float %975, %857
  %980 = fmul fast float %979, %869
  %981 = fmul fast float %976, %858
  %982 = fmul fast float %981, %869
  %983 = fmul fast float %977, %859
  %984 = fmul fast float %983, %869
  %985 = fmul fast float %978, %860
  %986 = fmul fast float %985, %869
  br label %5478

; <label>:987                                     ; preds = %621
  %988 = or i32 %638, %115
  %989 = icmp eq i32 %988, 0
  br i1 %989, label %5478, label %990, !dx.controlflow.hints !51

; <label>:990                                     ; preds = %987
  %991 = and i32 %636, 511
  %992 = mul nuw nsw i32 %991, 20
  %993 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %992, i32 undef)  ; BufferLoad(srv,index,wot)
  %994 = extractvalue %dx.types.ResRet.i32 %993, 0
  %995 = and i32 %994, 255
  %996 = uitofp i32 %995 to float
  %997 = lshr i32 %994, 8
  %998 = and i32 %997, 255
  %999 = uitofp i32 %998 to float
  %1000 = lshr i32 %994, 16
  %1001 = and i32 %1000, 255
  %1002 = uitofp i32 %1001 to float
  %1003 = lshr i32 %994, 24
  %1004 = uitofp i32 %1003 to float
  %1005 = fmul fast float %996, 0x3F70101020000000
  %1006 = fmul fast float %999, 0x3F70101020000000
  %1007 = fmul fast float %1002, 0x3F70101020000000
  %1008 = fmul fast float %1004, 0x3F70101020000000
  %1009 = lshr i32 %636, 5
  %1010 = and i32 %1009, 1008
  %1011 = or i32 %1010, 8
  %1012 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %1011, i32 undef)  ; BufferLoad(srv,index,wot)
  %1013 = extractvalue %dx.types.ResRet.f32 %1012, 0
  %1014 = or i32 %1010, 12
  %1015 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %1014, i32 undef)  ; BufferLoad(srv,index,wot)
  %1016 = extractvalue %dx.types.ResRet.f32 %1015, 0
  %1017 = or i32 %1010, 4
  %1018 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %1017, i32 undef)  ; BufferLoad(srv,index,wot)
  %1019 = extractvalue %dx.types.ResRet.i32 %1018, 0
  %1020 = lshr i32 %1019, 16
  %1021 = and i32 %1020, 254
  %1022 = uitofp i32 %1021 to float
  %1023 = lshr i32 %1019, 24
  %1024 = and i32 %1023, 254
  %1025 = uitofp i32 %1024 to float
  %1026 = add nuw nsw i32 %992, 16
  %1027 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %1026, i32 undef)  ; BufferLoad(srv,index,wot)
  %1028 = extractvalue %dx.types.ResRet.f32 %1027, 0
  %1029 = fsub fast float %1016, %1013
  %1030 = fmul fast float %1029, 0x3FB99999A0000000
  %1031 = fsub fast float %1028, %1013
  %1032 = fdiv fast float %1031, %1030
  %1033 = call float @dx.op.unary.f32(i32 7, float %1032)  ; Saturate(value)
  %1034 = fmul fast float %1033, 2.000000e+00
  %1035 = fsub fast float 3.000000e+00, %1034
  %1036 = fsub fast float %1025, %1022
  %1037 = fmul fast float %1033, %1033
  %1038 = fmul fast float %1037, %1036
  %1039 = fmul fast float %1038, %1035
  %1040 = fadd fast float %1039, %1022
  %1041 = fmul fast float %1040, 0x3F70204080000000
  %1042 = fmul fast float %1029, 5.000000e-01
  %1043 = fsub fast float %1042, %1016
  %1044 = fadd fast float %1043, %1028
  %1045 = fdiv fast float %1044, %1042
  %1046 = call float @dx.op.unary.f32(i32 7, float %1045)  ; Saturate(value)
  %1047 = fmul fast float %1046, 2.000000e+00
  %1048 = fsub fast float 3.000000e+00, %1047
  %1049 = fmul fast float %1046, %1046
  %1050 = fmul fast float %1049, %1048
  %1051 = fsub fast float 1.000000e+00, %1050
  %1052 = fmul fast float %1041, %1051
  %1053 = fadd fast float %1028, -1.280000e+02
  %1054 = fmul fast float %1053, 1.953125e-03
  %1055 = call float @dx.op.unary.f32(i32 7, float %1054)  ; Saturate(value)
  %1056 = fmul fast float %1055, 6.250000e-01
  %1057 = fsub fast float 2.500000e+00, %1056
  %1058 = fmul fast float %1057, %65
  %1059 = fmul fast float %1057, %66
  %1060 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %12, i32 0, i32 %63, i32 %64, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1061 = extractvalue %dx.types.ResRet.i32 %1060, 0
  %1062 = lshr i32 %1061, 8
  %1063 = and i32 %1061, 255
  %1064 = and i32 %1062, 255
  %1065 = uitofp i32 %1063 to float
  %1066 = uitofp i32 %1064 to float
  %1067 = fmul fast float %1065, 0x3F80101020000000
  %1068 = fmul fast float %1066, 0x3F80101020000000
  %1069 = fadd fast float %1067, -1.000000e+00
  %1070 = fadd fast float %1068, -1.000000e+00
  %1071 = call float @dx.op.unary.f32(i32 6, float %1069)  ; FAbs(value)
  %1072 = fsub fast float 1.000000e+00, %1071
  %1073 = call float @dx.op.unary.f32(i32 6, float %1070)  ; FAbs(value)
  %1074 = fsub fast float %1072, %1073
  %1075 = fsub fast float -0.000000e+00, %1074
  %1076 = call float @dx.op.binary.f32(i32 35, float %1075, float 0.000000e+00)  ; FMax(a,b)
  %1077 = fcmp fast ogt float %1069, 0.000000e+00
  %1078 = fsub fast float -0.000000e+00, %1076
  %1079 = select i1 %1077, float %1078, float %1076
  %1080 = fadd fast float %1079, %1069
  %1081 = fcmp fast ogt float %1070, 0.000000e+00
  %1082 = select i1 %1081, float %1078, float %1076
  %1083 = fadd fast float %1082, %1070
  %1084 = call float @dx.op.dot3.f32(i32 55, float %1080, float %1083, float %1074, float %1080, float %1083, float %1074)  ; Dot3(ax,ay,az,bx,by,bz)
  %1085 = call float @dx.op.unary.f32(i32 25, float %1084)  ; Rsqrt(value)
  %1086 = fmul fast float %1085, %1074
  %1087 = add i32 %64, -1
  %1088 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %12, i32 0, i32 %63, i32 %1087, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1089 = extractvalue %dx.types.ResRet.i32 %1088, 0
  %1090 = lshr i32 %1089, 8
  %1091 = and i32 %1089, 255
  %1092 = and i32 %1090, 255
  %1093 = uitofp i32 %1091 to float
  %1094 = uitofp i32 %1092 to float
  %1095 = fmul fast float %1093, 0x3F80101020000000
  %1096 = fmul fast float %1094, 0x3F80101020000000
  %1097 = fadd fast float %1095, -1.000000e+00
  %1098 = fadd fast float %1096, -1.000000e+00
  %1099 = call float @dx.op.unary.f32(i32 6, float %1097)  ; FAbs(value)
  %1100 = fsub fast float 1.000000e+00, %1099
  %1101 = call float @dx.op.unary.f32(i32 6, float %1098)  ; FAbs(value)
  %1102 = fsub fast float %1100, %1101
  %1103 = fsub fast float -0.000000e+00, %1102
  %1104 = call float @dx.op.binary.f32(i32 35, float %1103, float 0.000000e+00)  ; FMax(a,b)
  %1105 = fcmp fast ogt float %1097, 0.000000e+00
  %1106 = fsub fast float -0.000000e+00, %1104
  %1107 = select i1 %1105, float %1106, float %1104
  %1108 = fadd fast float %1107, %1097
  %1109 = fcmp fast ogt float %1098, 0.000000e+00
  %1110 = select i1 %1109, float %1106, float %1104
  %1111 = fadd fast float %1110, %1098
  %1112 = call float @dx.op.dot3.f32(i32 55, float %1108, float %1111, float %1102, float %1108, float %1111, float %1102)  ; Dot3(ax,ay,az,bx,by,bz)
  %1113 = call float @dx.op.unary.f32(i32 25, float %1112)  ; Rsqrt(value)
  %1114 = fmul fast float %1108, %1113
  %1115 = fmul fast float %1111, %1113
  %1116 = fmul fast float %1113, %1102
  %1117 = add i32 %64, 1
  %1118 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %12, i32 0, i32 %63, i32 %1117, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1119 = extractvalue %dx.types.ResRet.i32 %1118, 0
  %1120 = lshr i32 %1119, 8
  %1121 = and i32 %1119, 255
  %1122 = and i32 %1120, 255
  %1123 = uitofp i32 %1121 to float
  %1124 = uitofp i32 %1122 to float
  %1125 = fmul fast float %1123, 0x3F80101020000000
  %1126 = fmul fast float %1124, 0x3F80101020000000
  %1127 = fadd fast float %1125, -1.000000e+00
  %1128 = fadd fast float %1126, -1.000000e+00
  %1129 = call float @dx.op.unary.f32(i32 6, float %1127)  ; FAbs(value)
  %1130 = fsub fast float 1.000000e+00, %1129
  %1131 = call float @dx.op.unary.f32(i32 6, float %1128)  ; FAbs(value)
  %1132 = fsub fast float %1130, %1131
  %1133 = fsub fast float -0.000000e+00, %1132
  %1134 = call float @dx.op.binary.f32(i32 35, float %1133, float 0.000000e+00)  ; FMax(a,b)
  %1135 = fcmp fast ogt float %1127, 0.000000e+00
  %1136 = fsub fast float -0.000000e+00, %1134
  %1137 = select i1 %1135, float %1136, float %1134
  %1138 = fadd fast float %1137, %1127
  %1139 = fcmp fast ogt float %1128, 0.000000e+00
  %1140 = select i1 %1139, float %1136, float %1134
  %1141 = fadd fast float %1140, %1128
  %1142 = call float @dx.op.dot3.f32(i32 55, float %1138, float %1141, float %1132, float %1138, float %1141, float %1132)  ; Dot3(ax,ay,az,bx,by,bz)
  %1143 = call float @dx.op.unary.f32(i32 25, float %1142)  ; Rsqrt(value)
  %1144 = fmul fast float %1138, %1143
  %1145 = fmul fast float %1141, %1143
  %1146 = fmul fast float %1143, %1132
  %1147 = add i32 %63, -1
  %1148 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %12, i32 0, i32 %1147, i32 %64, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1149 = extractvalue %dx.types.ResRet.i32 %1148, 0
  %1150 = lshr i32 %1149, 8
  %1151 = and i32 %1149, 255
  %1152 = and i32 %1150, 255
  %1153 = uitofp i32 %1151 to float
  %1154 = uitofp i32 %1152 to float
  %1155 = fmul fast float %1153, 0x3F80101020000000
  %1156 = fmul fast float %1154, 0x3F80101020000000
  %1157 = fadd fast float %1155, -1.000000e+00
  %1158 = fadd fast float %1156, -1.000000e+00
  %1159 = call float @dx.op.unary.f32(i32 6, float %1157)  ; FAbs(value)
  %1160 = fsub fast float 1.000000e+00, %1159
  %1161 = call float @dx.op.unary.f32(i32 6, float %1158)  ; FAbs(value)
  %1162 = fsub fast float %1160, %1161
  %1163 = fsub fast float -0.000000e+00, %1162
  %1164 = call float @dx.op.binary.f32(i32 35, float %1163, float 0.000000e+00)  ; FMax(a,b)
  %1165 = fcmp fast ogt float %1157, 0.000000e+00
  %1166 = fsub fast float -0.000000e+00, %1164
  %1167 = select i1 %1165, float %1166, float %1164
  %1168 = fadd fast float %1167, %1157
  %1169 = fcmp fast ogt float %1158, 0.000000e+00
  %1170 = select i1 %1169, float %1166, float %1164
  %1171 = fadd fast float %1170, %1158
  %1172 = call float @dx.op.dot3.f32(i32 55, float %1168, float %1171, float %1162, float %1168, float %1171, float %1162)  ; Dot3(ax,ay,az,bx,by,bz)
  %1173 = call float @dx.op.unary.f32(i32 25, float %1172)  ; Rsqrt(value)
  %1174 = fmul fast float %1168, %1173
  %1175 = fmul fast float %1171, %1173
  %1176 = fmul fast float %1173, %1162
  %1177 = add i32 %63, 1
  %1178 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %12, i32 0, i32 %1177, i32 %64, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1179 = extractvalue %dx.types.ResRet.i32 %1178, 0
  %1180 = lshr i32 %1179, 8
  %1181 = and i32 %1179, 255
  %1182 = and i32 %1180, 255
  %1183 = uitofp i32 %1181 to float
  %1184 = uitofp i32 %1182 to float
  %1185 = fmul fast float %1183, 0x3F80101020000000
  %1186 = fmul fast float %1184, 0x3F80101020000000
  %1187 = fadd fast float %1185, -1.000000e+00
  %1188 = fadd fast float %1186, -1.000000e+00
  %1189 = call float @dx.op.unary.f32(i32 6, float %1187)  ; FAbs(value)
  %1190 = fsub fast float 1.000000e+00, %1189
  %1191 = call float @dx.op.unary.f32(i32 6, float %1188)  ; FAbs(value)
  %1192 = fsub fast float %1190, %1191
  %1193 = fsub fast float -0.000000e+00, %1192
  %1194 = call float @dx.op.binary.f32(i32 35, float %1193, float 0.000000e+00)  ; FMax(a,b)
  %1195 = fcmp fast ogt float %1187, 0.000000e+00
  %1196 = fsub fast float -0.000000e+00, %1194
  %1197 = select i1 %1195, float %1196, float %1194
  %1198 = fadd fast float %1197, %1187
  %1199 = fcmp fast ogt float %1188, 0.000000e+00
  %1200 = select i1 %1199, float %1196, float %1194
  %1201 = fadd fast float %1200, %1188
  %1202 = call float @dx.op.dot3.f32(i32 55, float %1198, float %1201, float %1192, float %1198, float %1201, float %1192)  ; Dot3(ax,ay,az,bx,by,bz)
  %1203 = call float @dx.op.unary.f32(i32 25, float %1202)  ; Rsqrt(value)
  %1204 = fmul fast float %1198, %1203
  %1205 = fmul fast float %1201, %1203
  %1206 = fmul fast float %1203, %1192
  %1207 = add nuw nsw i32 %992, 12
  %1208 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %1207, i32 undef)  ; BufferLoad(srv,index,wot)
  %1209 = extractvalue %dx.types.ResRet.i32 %1208, 0
  %1210 = lshr i32 %1209, 16
  %1211 = uitofp i32 %1210 to float
  %1212 = fmul fast float %1211, 0x3EF0002000000000
  %1213 = add nuw nsw i32 %992, 8
  %1214 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %1213, i32 undef)  ; BufferLoad(srv,index,wot)
  %1215 = extractvalue %dx.types.ResRet.i32 %1214, 0
  %1216 = lshr i32 %1215, 16
  %1217 = uitofp i32 %1216 to float
  %1218 = fmul fast float %1217, 0x3EF0002000000000
  %1219 = fsub fast float %45, %1218
  %1220 = fdiv fast float %1219, %1212
  %1221 = fsub fast float %40, %1059
  %1222 = fmul fast float %43, %1221
  %1223 = call float @dx.op.unary.f32(i32 7, float %44)  ; Saturate(value)
  %1224 = call float @dx.op.unary.f32(i32 7, float %1222)  ; Saturate(value)
  %1225 = fmul fast float %59, %1223
  %1226 = fmul fast float %60, %1224
  %1227 = fptoui float %1225 to i32
  %1228 = fptoui float %1226 to i32
  %1229 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %13, i32 0, i32 %1227, i32 %1228, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1230 = extractvalue %dx.types.ResRet.f32 %1229, 0
  %1231 = extractvalue %dx.types.ResRet.f32 %1229, 1
  %1232 = fadd fast float %1231, 0x3F40000000000000
  %1233 = fmul fast float %1232, 2.550000e+02
  %1234 = fadd fast float %1230, 0x3F40000000000000
  %1235 = fmul fast float %1234, 2.550000e+02
  %1236 = fptoui float %1233 to i32
  %1237 = shl i32 %1236, 8
  %1238 = fptoui float %1235 to i32
  %1239 = and i32 %1238, 255
  %1240 = or i32 %1237, %1239
  %1241 = fadd fast float %1059, %40
  %1242 = fmul fast float %43, %1241
  %1243 = call float @dx.op.unary.f32(i32 7, float %1242)  ; Saturate(value)
  %1244 = fmul fast float %60, %1243
  %1245 = fptoui float %1244 to i32
  %1246 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %13, i32 0, i32 %1227, i32 %1245, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1247 = extractvalue %dx.types.ResRet.f32 %1246, 0
  %1248 = extractvalue %dx.types.ResRet.f32 %1246, 1
  %1249 = fadd fast float %1248, 0x3F40000000000000
  %1250 = fmul fast float %1249, 2.550000e+02
  %1251 = fadd fast float %1247, 0x3F40000000000000
  %1252 = fmul fast float %1251, 2.550000e+02
  %1253 = fptoui float %1250 to i32
  %1254 = shl i32 %1253, 8
  %1255 = fptoui float %1252 to i32
  %1256 = and i32 %1255, 255
  %1257 = or i32 %1254, %1256
  %1258 = fsub fast float %39, %1058
  %1259 = fmul fast float %42, %1258
  %1260 = call float @dx.op.unary.f32(i32 7, float %1259)  ; Saturate(value)
  %1261 = call float @dx.op.unary.f32(i32 7, float %45)  ; Saturate(value)
  %1262 = fmul fast float %59, %1260
  %1263 = fmul fast float %60, %1261
  %1264 = fptoui float %1262 to i32
  %1265 = fptoui float %1263 to i32
  %1266 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %13, i32 0, i32 %1264, i32 %1265, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1267 = extractvalue %dx.types.ResRet.f32 %1266, 0
  %1268 = extractvalue %dx.types.ResRet.f32 %1266, 1
  %1269 = fadd fast float %1268, 0x3F40000000000000
  %1270 = fmul fast float %1269, 2.550000e+02
  %1271 = fadd fast float %1267, 0x3F40000000000000
  %1272 = fmul fast float %1271, 2.550000e+02
  %1273 = fptoui float %1270 to i32
  %1274 = shl i32 %1273, 8
  %1275 = fptoui float %1272 to i32
  %1276 = and i32 %1275, 255
  %1277 = or i32 %1274, %1276
  %1278 = fadd fast float %1058, %39
  %1279 = fmul fast float %42, %1278
  %1280 = call float @dx.op.unary.f32(i32 7, float %1279)  ; Saturate(value)
  %1281 = fmul fast float %59, %1280
  %1282 = fptoui float %1281 to i32
  %1283 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %13, i32 0, i32 %1282, i32 %1265, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1284 = extractvalue %dx.types.ResRet.f32 %1283, 0
  %1285 = extractvalue %dx.types.ResRet.f32 %1283, 1
  %1286 = fadd fast float %1285, 0x3F40000000000000
  %1287 = fmul fast float %1286, 2.550000e+02
  %1288 = fadd fast float %1284, 0x3F40000000000000
  %1289 = fmul fast float %1288, 2.550000e+02
  %1290 = fptoui float %1287 to i32
  %1291 = shl i32 %1290, 8
  %1292 = fptoui float %1289 to i32
  %1293 = and i32 %1292, 255
  %1294 = or i32 %1291, %1293
  %1295 = icmp eq i32 %633, %1240
  %1296 = zext i1 %1295 to i32
  %1297 = icmp eq i32 %633, %1257
  %1298 = zext i1 %1297 to i32
  %1299 = add nuw nsw i32 %1298, %1296
  %1300 = icmp eq i32 %633, %1277
  %1301 = zext i1 %1300 to i32
  %1302 = add nuw nsw i32 %1299, %1301
  %1303 = icmp eq i32 %633, %1294
  %1304 = zext i1 %1303 to i32
  %1305 = add nuw nsw i32 %1302, %1304
  %1306 = icmp ne i32 %1305, 4
  %1307 = call float @dx.op.dot3.f32(i32 55, float %1114, float %1115, float %1116, float %1144, float %1145, float %1146)  ; Dot3(ax,ay,az,bx,by,bz)
  %1308 = call float @dx.op.binary.f32(i32 36, float 1.000000e+00, float %1307)  ; FMin(a,b)
  %1309 = call float @dx.op.dot3.f32(i32 55, float %1114, float %1115, float %1116, float %1174, float %1175, float %1176)  ; Dot3(ax,ay,az,bx,by,bz)
  %1310 = call float @dx.op.binary.f32(i32 36, float %1308, float %1309)  ; FMin(a,b)
  %1311 = call float @dx.op.dot3.f32(i32 55, float %1114, float %1115, float %1116, float %1204, float %1205, float %1206)  ; Dot3(ax,ay,az,bx,by,bz)
  %1312 = call float @dx.op.binary.f32(i32 36, float %1310, float %1311)  ; FMin(a,b)
  %1313 = call float @dx.op.dot3.f32(i32 55, float %1144, float %1145, float %1146, float %1174, float %1175, float %1176)  ; Dot3(ax,ay,az,bx,by,bz)
  %1314 = call float @dx.op.binary.f32(i32 36, float %1312, float %1313)  ; FMin(a,b)
  %1315 = call float @dx.op.dot3.f32(i32 55, float %1144, float %1145, float %1146, float %1204, float %1205, float %1206)  ; Dot3(ax,ay,az,bx,by,bz)
  %1316 = call float @dx.op.binary.f32(i32 36, float %1314, float %1315)  ; FMin(a,b)
  %1317 = call float @dx.op.dot3.f32(i32 55, float %1174, float %1175, float %1176, float %1204, float %1205, float %1206)  ; Dot3(ax,ay,az,bx,by,bz)
  %1318 = call float @dx.op.binary.f32(i32 36, float %1316, float %1317)  ; FMin(a,b)
  %1319 = call float @dx.op.unary.f32(i32 7, float %1318)  ; Saturate(value)
  %1320 = fsub fast float 1.000000e+00, %1319
  %1321 = call float @dx.op.unary.f32(i32 7, float %1320)  ; Saturate(value)
  %1322 = fmul fast float %1321, 2.000000e+00
  %1323 = fsub fast float 3.000000e+00, %1322
  %1324 = call float @dx.op.unary.f32(i32 7, float %1086)  ; Saturate(value)
  %1325 = fmul fast float %1324, 2.500000e+00
  %1326 = call float @dx.op.unary.f32(i32 7, float %1325)  ; Saturate(value)
  %1327 = fmul fast float %1326, 2.000000e+00
  %1328 = fsub fast float 3.000000e+00, %1327
  %1329 = fadd fast float %1324, 0xBFD99999A0000000
  %1330 = fmul fast float %1329, -2.500000e+00
  %1331 = call float @dx.op.unary.f32(i32 7, float %1330)  ; Saturate(value)
  %1332 = fmul fast float %1331, 2.000000e+00
  %1333 = fsub fast float 3.000000e+00, %1332
  %1334 = fmul float %1326, %1331
  %1335 = fmul float %1334, %1334
  %1336 = fmul fast float %1333, %1328
  %1337 = fmul fast float %1336, %1335
  %1338 = fmul fast float %1321, %1321
  %1339 = fmul fast float %1338, %1323
  %1340 = fadd fast float %1337, %1339
  %1341 = fmul fast float %1340, 2.000000e+00
  %1342 = call float @dx.op.unary.f32(i32 7, float %1341)  ; Saturate(value)
  %1343 = fmul fast float %1342, 1.500000e+00
  %1344 = fmul fast float %1343, %1005
  %1345 = fmul fast float %1343, %1006
  %1346 = fmul fast float %1343, %1007
  %1347 = icmp eq i32 %633, 0
  %1348 = or i1 %1347, %1306
  %1349 = select i1 %1347, float 0.000000e+00, float 1.000000e+00
  %1350 = select i1 %1348, float %1344, float 1.000000e+00
  %1351 = select i1 %1348, float %1345, float 1.000000e+00
  %1352 = select i1 %1348, float %1346, float 1.000000e+00
  %1353 = select i1 %1348, float %1008, float %1343
  %1354 = select i1 %1348, float %1349, float 0.000000e+00
  %1355 = fmul fast float %68, 5.400000e+02
  %1356 = fmul fast float %70, 5.400000e+02
  %1357 = fmul fast float %1355, %44
  %1358 = fmul fast float %1356, %45
  %1359 = call float @dx.op.unary.f32(i32 27, float %1357)  ; Round_ni(value)
  %1360 = call float @dx.op.unary.f32(i32 27, float %1358)  ; Round_ni(value)
  %1361 = fadd fast float %1360, %1359
  %1362 = frem fast float %1361, 2.000000e+00
  %1363 = call float @dx.op.unary.f32(i32 22, float %1357)  ; Frc(value)
  %1364 = call float @dx.op.unary.f32(i32 22, float %1358)  ; Frc(value)
  %1365 = fadd fast float %1363, -5.000000e-01
  %1366 = fadd fast float %1364, -5.000000e-01
  %1367 = fmul fast float %1365, 2.000000e+00
  %1368 = fmul fast float %1366, 2.000000e+00
  %1369 = call float @dx.op.dot2.f32(i32 54, float %1367, float %1368, float %1367, float %1368)  ; Dot2(ax,ay,bx,by)
  %1370 = call float @dx.op.unary.f32(i32 24, float %1369)  ; Sqrt(value)
  %1371 = fsub fast float 1.000000e+00, %1370
  %1372 = fmul fast float %1371, 2.000000e+00
  %1373 = call float @dx.op.unary.f32(i32 7, float %1372)  ; Saturate(value)
  %1374 = fmul fast float %60, %59
  %1375 = fmul fast float %1356, %1355
  %1376 = fdiv fast float %1374, %1375
  %1377 = fptoui float %1376 to i32
  %1378 = icmp ult i32 %1377, 4
  %1379 = select i1 %1378, float 1.000000e+00, float %1373
  %1380 = fmul fast float %1350, %1362
  %1381 = fmul fast float %1351, %1362
  %1382 = fmul fast float %1352, %1362
  %1383 = fmul fast float %1362, %1353
  %1384 = fmul fast float %1380, %1379
  %1385 = fmul fast float %1381, %1379
  %1386 = fmul fast float %1382, %1379
  %1387 = fmul fast float %1383, %1379
  %1388 = fsub fast float 1.000000e+00, %1220
  %1389 = fmul fast float %1388, %1388
  %1390 = fmul fast float %1389, 3.000000e+00
  %1391 = fadd fast float %1390, 2.500000e-01
  %1392 = call float @dx.op.unary.f32(i32 7, float %1391)  ; Saturate(value)
  %1393 = fmul fast float %1362, 0x3FC3333340000000
  %1394 = fadd fast float %1393, 7.500000e-01
  %1395 = fmul fast float %1394, %1354
  %1396 = call float @dx.op.binary.f32(i32 35, float %1384, float %1395)  ; FMax(a,b)
  %1397 = call float @dx.op.binary.f32(i32 35, float %1385, float %1395)  ; FMax(a,b)
  %1398 = call float @dx.op.binary.f32(i32 35, float %1386, float %1395)  ; FMax(a,b)
  %1399 = fmul fast float %1392, %1354
  %1400 = call float @dx.op.binary.f32(i32 35, float %1387, float %1399)  ; FMax(a,b)
  %1401 = fmul fast float %1052, %1005
  %1402 = fmul fast float %1401, %1396
  %1403 = fmul fast float %1052, %1006
  %1404 = fmul fast float %1403, %1397
  %1405 = fmul fast float %1052, %1007
  %1406 = fmul fast float %1405, %1398
  %1407 = fmul fast float %1392, %1052
  %1408 = fmul fast float %1407, %1400
  %1409 = call float @dx.op.unary.f32(i32 7, float %1402)  ; Saturate(value)
  %1410 = call float @dx.op.unary.f32(i32 7, float %1404)  ; Saturate(value)
  %1411 = call float @dx.op.unary.f32(i32 7, float %1406)  ; Saturate(value)
  %1412 = call float @dx.op.unary.f32(i32 7, float %1408)  ; Saturate(value)
  %1413 = fmul fast float %1409, 0x3FF3333340000000
  %1414 = fmul fast float %1410, 0x3FF3333340000000
  %1415 = fmul fast float %1411, 0x3FF3333340000000
  %1416 = fmul fast float %1412, 0x3FF3333340000000
  br label %5478

; <label>:1417                                    ; preds = %621
  %1418 = and i32 %636, 511
  %1419 = mul nuw nsw i32 %1418, 20
  %1420 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %1419, i32 undef)  ; BufferLoad(srv,index,wot)
  %1421 = extractvalue %dx.types.ResRet.i32 %1420, 0
  %1422 = lshr i32 %1421, 24
  %1423 = uitofp i32 %1422 to float
  %1424 = fmul fast float %1423, 0x3F70101020000000
  %1425 = fsub fast float 1.000000e+00, %1424
  %1426 = add nuw nsw i32 %1419, 12
  %1427 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %1426, i32 undef)  ; BufferLoad(srv,index,wot)
  %1428 = extractvalue %dx.types.ResRet.i32 %1427, 0
  %1429 = and i32 %1428, 65535
  %1430 = uitofp i32 %1429 to float
  %1431 = fmul fast float %1430, 0x3EF0002000000000
  %1432 = lshr i32 %1428, 16
  %1433 = uitofp i32 %1432 to float
  %1434 = fmul fast float %1433, 0x3EF0002000000000
  %1435 = add nuw nsw i32 %1419, 8
  %1436 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %1435, i32 undef)  ; BufferLoad(srv,index,wot)
  %1437 = extractvalue %dx.types.ResRet.i32 %1436, 0
  %1438 = and i32 %1437, 65535
  %1439 = uitofp i32 %1438 to float
  %1440 = fmul fast float %1439, 0x3EF0002000000000
  %1441 = lshr i32 %1437, 16
  %1442 = uitofp i32 %1441 to float
  %1443 = fmul fast float %1442, 0x3EF0002000000000
  %1444 = fsub fast float %44, %1440
  %1445 = fdiv fast float %1444, %1431
  %1446 = fsub fast float %45, %1443
  %1447 = fdiv fast float %1446, %1434
  %1448 = add nuw nsw i32 %1419, 16
  %1449 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %1448, i32 undef)  ; BufferLoad(srv,index,wot)
  %1450 = extractvalue %dx.types.ResRet.f32 %1449, 0
  %1451 = fcmp fast olt float %1450, 1.000000e+01
  %1452 = uitofp i1 %1451 to float
  %1453 = fdiv fast float 2.400000e+02, %1450
  %1454 = call float @dx.op.unary.f32(i32 7, float %1453)  ; Saturate(value)
  %1455 = fdiv fast float 3.200000e+02, %1450
  %1456 = call float @dx.op.unary.f32(i32 7, float %1455)  ; Saturate(value)
  %1457 = fmul fast float %1456, 5.000000e-01
  %1458 = fadd fast float %1457, 2.500000e-01
  %1459 = fdiv fast float 3.200000e+01, %1458
  %1460 = select i1 %1451, float 3.200000e+01, float %1459
  %1461 = fmul fast float %1460, 1.600000e+01
  %1462 = fmul fast float %1460, 9.000000e+00
  %1463 = fmul fast float %1431, %1445
  %1464 = fmul fast float %1463, %1461
  %1465 = fmul fast float %1434, %1447
  %1466 = fmul fast float %1465, %1462
  %1467 = call float @dx.op.unary.f32(i32 29, float %1464)  ; Round_z(value)
  %1468 = call float @dx.op.unary.f32(i32 29, float %1466)  ; Round_z(value)
  %1469 = call float @dx.op.unary.f32(i32 7, float %1424)  ; Saturate(value)
  %1470 = fmul fast float %1469, 2.000000e+00
  %1471 = fsub fast float 3.000000e+00, %1470
  %1472 = fmul fast float %1454, 4.000000e+01
  %1473 = fmul fast float %1452, 1.000000e+02
  %1474 = fadd fast float %1473, %1472
  %1475 = fptoui float %1474 to i32
  %1476 = uitofp i32 %63 to float
  %1477 = uitofp i32 %64 to float
  %1478 = fptoui float %1476 to i32
  %1479 = fptoui float %1477 to i32
  %1480 = lshr i32 %1479, 2
  %1481 = mul i32 %84, %1480
  %1482 = lshr i32 %1478, 3
  %1483 = add i32 %81, %1482
  %1484 = add i32 %1483, %100
  %1485 = add i32 %1484, %1481
  %1486 = shl i32 %1485, 2
  %1487 = shl i32 %1479, 3
  %1488 = and i32 %1487, 24
  %1489 = and i32 %1478, 7
  %1490 = or i32 %1488, %1489
  %1491 = shl i32 1, %1490
  %1492 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %1486, i32 undef)  ; BufferLoad(srv,index,wot)
  %1493 = extractvalue %dx.types.ResRet.i32 %1492, 0
  %1494 = and i32 %1493, %1491
  %1495 = icmp ne i32 %1494, 0
  %1496 = icmp eq i32 %1475, 0
  br i1 %1496, label %1613, label %1497, !dx.controlflow.hints !52

; <label>:1497                                    ; preds = %1417
  %1498 = uitofp i32 %1475 to float
  %1499 = fmul fast float %65, 5.000000e-01
  %1500 = fmul fast float %1499, %1498
  %1501 = fmul fast float %66, 5.000000e-01
  %1502 = fmul fast float %1501, %1498
  %1503 = call float @dx.op.binary.f32(i32 35, float 5.000000e-01, float %1500)  ; FMax(a,b)
  %1504 = call float @dx.op.binary.f32(i32 35, float 5.000000e-01, float %1502)  ; FMax(a,b)
  br label %1505

; <label>:1505                                    ; preds = %1600, %1497
  %1506 = phi float [ 0.000000e+00, %1497 ], [ %1603, %1600 ]
  %1507 = phi i32 [ 0, %1497 ], [ %1604, %1600 ]
  %1508 = fmul fast float %44, 0x3FF280E1E0000000
  %1509 = fmul fast float %45, 0x3FF280E1E0000000
  %1510 = sitofp i32 %1507 to float
  %1511 = fmul fast float %1510, 0x3FB99999A0000000
  %1512 = fadd fast float %1511, %1508
  %1513 = fadd fast float %1511, %1509
  %1514 = fmul fast float %1512, 1.024000e+03
  %1515 = fmul fast float %1513, 1.024000e+03
  %1516 = fadd fast float %1514, -5.120000e+02
  %1517 = fadd fast float %1515, -5.120000e+02
  %1518 = fmul fast float %1512, 0x4081BEDF00000000
  %1519 = fadd fast float %1518, 0xC071BEDF00000000
  %1520 = call float @dx.op.unary.f32(i32 22, float %1519)  ; Frc(value)
  %1521 = fmul fast float %1516, %1520
  %1522 = fadd fast float %1521, %1517
  %1523 = fmul fast float %1513, 0x4073BEBE20000000
  %1524 = fadd fast float %1523, 0xC063BEBE20000000
  %1525 = call float @dx.op.unary.f32(i32 22, float %1524)  ; Frc(value)
  %1526 = fmul fast float %1517, %1525
  %1527 = fadd fast float %1526, %1516
  %1528 = fmul fast float %1522, %1527
  %1529 = call float @dx.op.unary.f32(i32 22, float %1528)  ; Frc(value)
  %1530 = fmul fast float %1529, 2.000000e+00
  %1531 = fadd fast float %1530, -1.000000e+00
  %1532 = fmul fast float %1531, %1503
  %1533 = fmul fast float %44, 0x3FEB681740000000
  %1534 = fmul fast float %45, 0x3FEB681740000000
  %1535 = fmul fast float %1510, 0x3FC99999A0000000
  %1536 = fadd fast float %1535, 1.250000e-01
  %1537 = fadd fast float %1536, %1533
  %1538 = fadd fast float %1536, %1534
  %1539 = fmul fast float %1537, 1.024000e+03
  %1540 = fmul fast float %1538, 1.024000e+03
  %1541 = fadd fast float %1539, -5.120000e+02
  %1542 = fadd fast float %1540, -5.120000e+02
  %1543 = fmul fast float %1537, 0x4081BEDF00000000
  %1544 = fadd fast float %1543, 0xC071BEDF00000000
  %1545 = call float @dx.op.unary.f32(i32 22, float %1544)  ; Frc(value)
  %1546 = fmul fast float %1541, %1545
  %1547 = fadd fast float %1546, %1542
  %1548 = fmul fast float %1538, 0x4073BEBE20000000
  %1549 = fadd fast float %1548, 0xC063BEBE20000000
  %1550 = call float @dx.op.unary.f32(i32 22, float %1549)  ; Frc(value)
  %1551 = fmul fast float %1542, %1550
  %1552 = fadd fast float %1551, %1541
  %1553 = fmul fast float %1547, %1552
  %1554 = call float @dx.op.unary.f32(i32 22, float %1553)  ; Frc(value)
  %1555 = fmul fast float %1554, 2.000000e+00
  %1556 = fadd fast float %1555, -1.000000e+00
  %1557 = fmul fast float %1556, %1504
  %1558 = fptosi float %1532 to i32
  %1559 = sitofp i32 %1558 to float
  %1560 = fadd fast float %1559, %1476
  %1561 = fptosi float %1560 to i32
  %1562 = fptosi float %1557 to i32
  %1563 = sitofp i32 %1562 to float
  %1564 = fadd fast float %1563, %1477
  %1565 = fptosi float %1564 to i32
  %1566 = or i32 %1565, %1561
  %1567 = icmp slt i32 %1566, 0
  %1568 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %1569 = extractvalue %dx.types.CBufRet.f32 %1568, 0
  %1570 = extractvalue %dx.types.CBufRet.f32 %1568, 1
  %1571 = fptosi float %1569 to i32
  %1572 = fptosi float %1570 to i32
  %1573 = icmp sge i32 %1561, %1571
  %1574 = icmp sge i32 %1565, %1572
  %1575 = or i1 %1573, %1574
  %1576 = or i1 %1567, %1575
  br i1 %1576, label %1600, label %1577, !dx.controlflow.hints !49

; <label>:1577                                    ; preds = %1505
  %1578 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %18, i32 51)  ; CBufferLoadLegacy(handle,regIndex)
  %1579 = extractvalue %dx.types.CBufRet.i32 %1578, 1
  %1580 = shl i32 %1579, 2
  %1581 = extractvalue %dx.types.CBufRet.i32 %1578, 3
  %1582 = shl i32 %1581, 1
  %1583 = lshr i32 %1565, 2
  %1584 = extractvalue %dx.types.CBufRet.i32 %1578, 2
  %1585 = mul i32 %1584, %1583
  %1586 = lshr i32 %1561, 3
  %1587 = add i32 %1580, %1586
  %1588 = add i32 %1587, %1582
  %1589 = add i32 %1588, %1585
  %1590 = shl i32 %1589, 2
  %1591 = shl i32 %1565, 3
  %1592 = and i32 %1591, 24
  %1593 = and i32 %1561, 7
  %1594 = or i32 %1592, %1593
  %1595 = shl i32 1, %1594
  %1596 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %1590, i32 undef)  ; BufferLoad(srv,index,wot)
  %1597 = extractvalue %dx.types.ResRet.i32 %1596, 0
  %1598 = and i32 %1597, %1595
  %1599 = icmp ne i32 %1598, 0
  br label %1600

; <label>:1600                                    ; preds = %1577, %1505
  %1601 = phi i1 [ %1599, %1577 ], [ false, %1505 ]
  %1602 = uitofp i1 %1601 to float
  %1603 = fadd fast float %1602, %1506
  %1604 = add nuw nsw i32 %1507, 1
  %1605 = icmp eq i32 %1604, 5
  br i1 %1605, label %1606, label %1505

; <label>:1606                                    ; preds = %1600
  %1607 = uitofp i1 %1495 to float
  %1608 = fmul fast float %1607, 0x3FC99999A0000000
  %1609 = fmul fast float %1608, %1603
  %1610 = fadd fast float %1609, -5.000000e-01
  %1611 = fmul fast float %1610, 2.000000e+00
  %1612 = call float @dx.op.unary.f32(i32 7, float %1611)  ; Saturate(value)
  br label %1613

; <label>:1613                                    ; preds = %1606, %1417
  %1614 = phi float [ %1612, %1606 ], [ 0.000000e+00, %1417 ]
  %1615 = fdiv fast float %1467, %1461
  %1616 = fdiv fast float %1468, %1462
  %1617 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1618 = extractvalue %dx.types.CBufRet.f32 %1617, 3
  %1619 = fmul fast float %1618, 0x3FE99999A0000000
  %1620 = fadd fast float %1619, %1615
  %1621 = fsub fast float %1616, %1619
  %1622 = call float @dx.op.unary.f32(i32 22, float %1620)  ; Frc(value)
  %1623 = call float @dx.op.unary.f32(i32 22, float %1621)  ; Frc(value)
  %1624 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %15, float %1622, float %1623, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1625 = extractvalue %dx.types.ResRet.f32 %1624, 0
  %1626 = fmul fast float %1625, 1.500000e+00
  %1627 = call float @dx.op.unary.f32(i32 7, float %1626)  ; Saturate(value)
  %1628 = call float @dx.op.binary.f32(i32 35, float 0x3FE51EB860000000, float %1627)  ; FMax(a,b)
  %1629 = fsub fast float -5.000000e-01, %1467
  %1630 = fadd fast float %1629, %1464
  %1631 = fsub fast float -5.000000e-01, %1468
  %1632 = fadd fast float %1631, %1466
  %1633 = fmul fast float %1630, 2.000000e+00
  %1634 = fmul fast float %1632, 2.000000e+00
  %1635 = call float @dx.op.dot2.f32(i32 54, float %1633, float %1634, float %1633, float %1634)  ; Dot2(ax,ay,bx,by)
  %1636 = call float @dx.op.unary.f32(i32 24, float %1635)  ; Sqrt(value)
  %1637 = fsub fast float 1.000000e+00, %1636
  %1638 = fmul fast float %1637, 2.000000e+00
  %1639 = call float @dx.op.unary.f32(i32 7, float %1638)  ; Saturate(value)
  %1640 = fmul fast float %1618, 0x3F9EB851E0000000
  %1641 = fadd fast float %1640, %1447
  %1642 = call float @dx.op.unary.f32(i32 22, float %1641)  ; Frc(value)
  %1643 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %14, float %1445, float %1642, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1644 = extractvalue %dx.types.ResRet.f32 %1643, 3
  %1645 = call float @dx.op.unary.f32(i32 7, float %1614)  ; Saturate(value)
  %1646 = fmul fast float %1644, %1425
  %1647 = fsub fast float %1645, %1646
  %1648 = call float @dx.op.unary.f32(i32 7, float %1647)  ; Saturate(value)
  %1649 = fmul fast float %1644, 1.250000e+00
  %1650 = fsub fast float %1645, %1649
  %1651 = call float @dx.op.unary.f32(i32 7, float %1650)  ; Saturate(value)
  %1652 = fsub fast float 5.000000e-01, %1447
  %1653 = fmul fast float %1652, 2.000000e+00
  %1654 = call float @dx.op.unary.f32(i32 7, float %1653)  ; Saturate(value)
  %1655 = fmul fast float %1654, %1654
  %1656 = fmul fast float %1655, 7.500000e-01
  %1657 = fadd fast float %1656, 1.000000e+00
  %1658 = fmul fast float %1648, 7.500000e-01
  %1659 = fmul fast float %1658, %1657
  %1660 = fmul fast float %1452, 0x3FD3333340000000
  %1661 = fadd fast float %1660, 0x3FC3333340000000
  %1662 = fmul fast float %1651, %1661
  %1663 = fadd fast float %1659, %1662
  %1664 = fmul fast float %1663, %1663
  %1665 = fmul fast float %1664, %1663
  %1666 = call float @dx.op.unary.f32(i32 7, float %1665)  ; Saturate(value)
  %1667 = fmul fast float %1666, 0x40285C2900000000
  %1668 = fsub fast float 1.400000e+01, %1667
  %1669 = fptoui float %1668 to i32
  %1670 = call float @dx.op.unary.f32(i32 22, float %1668)  ; Frc(value)
  %1671 = mul i32 %1669, 3
  %1672 = add i32 0, %1671
  %1673 = getelementptr [45 x float], [45 x float]* @heat_ramp.v.1dim, i32 0, i32 %1672
  %1674 = load float, float* %1673, align 4
  %1675 = mul i32 %1669, 3
  %1676 = add i32 1, %1675
  %1677 = getelementptr [45 x float], [45 x float]* @heat_ramp.v.1dim, i32 0, i32 %1676
  %1678 = load float, float* %1677, align 4
  %1679 = mul i32 %1669, 3
  %1680 = add i32 2, %1679
  %1681 = getelementptr [45 x float], [45 x float]* @heat_ramp.v.1dim, i32 0, i32 %1680
  %1682 = load float, float* %1681, align 4
  %1683 = add i32 %1669, 1
  %1684 = mul i32 %1683, 3
  %1685 = add i32 0, %1684
  %1686 = getelementptr [45 x float], [45 x float]* @heat_ramp.v.1dim, i32 0, i32 %1685
  %1687 = load float, float* %1686, align 4
  %1688 = mul i32 %1683, 3
  %1689 = add i32 1, %1688
  %1690 = getelementptr [45 x float], [45 x float]* @heat_ramp.v.1dim, i32 0, i32 %1689
  %1691 = load float, float* %1690, align 4
  %1692 = mul i32 %1683, 3
  %1693 = add i32 2, %1692
  %1694 = getelementptr [45 x float], [45 x float]* @heat_ramp.v.1dim, i32 0, i32 %1693
  %1695 = load float, float* %1694, align 4
  %1696 = fsub fast float %1687, %1674
  %1697 = fsub fast float %1691, %1678
  %1698 = fsub fast float %1695, %1682
  %1699 = fmul fast float %1696, %1670
  %1700 = fmul fast float %1697, %1670
  %1701 = fmul fast float %1698, %1670
  %1702 = fadd fast float %1699, %1674
  %1703 = fadd fast float %1700, %1678
  %1704 = fadd fast float %1701, %1682
  %1705 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 17)  ; CBufferLoadLegacy(handle,regIndex)
  %1706 = extractvalue %dx.types.CBufRet.f32 %1705, 0
  %1707 = fmul fast float %1469, %1469
  %1708 = fmul fast float %1707, %1471
  %1709 = fmul fast float %1708, %1628
  %1710 = fmul fast float %1709, %1639
  %1711 = fmul fast float %1710, %1648
  %1712 = fmul fast float %1711, %1706
  %1713 = fmul fast float %1702, %1702
  %1714 = fmul fast float %1713, 2.000000e+00
  %1715 = fmul fast float %1714, %1712
  %1716 = fmul fast float %1703, %1703
  %1717 = fmul fast float %1716, 2.000000e+00
  %1718 = fmul fast float %1717, %1712
  %1719 = fmul fast float %1704, %1704
  %1720 = fmul fast float %1719, 2.000000e+00
  %1721 = fmul fast float %1720, %1712
  %1722 = call float @dx.op.binary.f32(i32 36, float %1715, float 2.000000e+00)  ; FMin(a,b)
  %1723 = call float @dx.op.binary.f32(i32 36, float %1718, float 2.000000e+00)  ; FMin(a,b)
  %1724 = call float @dx.op.binary.f32(i32 36, float %1721, float 2.000000e+00)  ; FMin(a,b)
  %1725 = select i1 %1451, float 0x3FD3333340000000, float 7.500000e-01
  %1726 = fmul float %1725, %1712
  br label %5478

; <label>:1727                                    ; preds = %621
  %1728 = icmp eq i32 %638, 0
  %1729 = and i1 %1728, %117
  %1730 = icmp eq i32 %640, 0
  %1731 = and i1 %116, %1730
  %1732 = or i1 %1729, %1731
  br i1 %1732, label %5478, label %1733, !dx.controlflow.hints !53

; <label>:1733                                    ; preds = %1727
  %1734 = and i32 %636, 511
  %1735 = mul nuw nsw i32 %1734, 20
  br i1 %116, label %1736, label %1992, !dx.controlflow.hints !54

; <label>:1736                                    ; preds = %1733
  %1737 = add nuw nsw i32 %1735, 4
  %1738 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %1737, i32 undef)  ; BufferLoad(srv,index,wot)
  %1739 = extractvalue %dx.types.ResRet.i32 %1738, 0
  %1740 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %1735, i32 undef)  ; BufferLoad(srv,index,wot)
  %1741 = extractvalue %dx.types.ResRet.i32 %1740, 0
  %1742 = and i32 %636, 524288
  %1743 = icmp ne i32 %1742, 0
  %1744 = lshr i32 %1739, 24
  %1745 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 228)  ; CBufferLoadLegacy(handle,regIndex)
  %1746 = extractvalue %dx.types.CBufRet.f32 %1745, 2
  %1747 = extractvalue %dx.types.CBufRet.f32 %1745, 0
  %1748 = call float @dx.op.binary.f32(i32 35, float %44, float %1747)  ; FMax(a,b)
  %1749 = call float @dx.op.binary.f32(i32 36, float %1748, float %1746)  ; FMin(a,b)
  %1750 = call float @dx.op.binary.f32(i32 36, float %44, float %1747)  ; FMin(a,b)
  %1751 = call float @dx.op.binary.f32(i32 35, float %1750, float %1749)  ; FMax(a,b)
  %1752 = fcmp fast oeq float %44, %1751
  %1753 = extractvalue %dx.types.CBufRet.f32 %1745, 3
  %1754 = extractvalue %dx.types.CBufRet.f32 %1745, 1
  %1755 = call float @dx.op.binary.f32(i32 35, float %45, float %1754)  ; FMax(a,b)
  %1756 = call float @dx.op.binary.f32(i32 36, float %1755, float %1753)  ; FMin(a,b)
  %1757 = call float @dx.op.binary.f32(i32 36, float %45, float %1754)  ; FMin(a,b)
  %1758 = call float @dx.op.binary.f32(i32 35, float %1757, float %1756)  ; FMax(a,b)
  %1759 = fcmp fast oeq float %45, %1758
  %1760 = and i1 %1752, %1759
  %1761 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 224)  ; CBufferLoadLegacy(handle,regIndex)
  %1762 = extractvalue %dx.types.CBufRet.f32 %1761, 1
  %1763 = select i1 %1760, float %1762, float 1.000000e+00
  %1764 = icmp ne i32 %1744, 0
  %1765 = and i1 %99, %1764
  br i1 %1765, label %1766, label %1803, !dx.controlflow.hints !45

; <label>:1766                                    ; preds = %1736
  %1767 = sitofp i32 %1744 to float
  %1768 = fmul fast float %1767, 0x3F70101020000000
  %1769 = fmul fast float %1768, %1763
  %1770 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1771 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %1772 = extractvalue %dx.types.CBufRet.f32 %1770, 3
  %1773 = extractvalue %dx.types.CBufRet.f32 %1771, 3
  %1774 = select i1 %1743, float %1772, float %1773
  %1775 = fmul fast float %1774, %1769
  %1776 = extractvalue %dx.types.CBufRet.f32 %1770, 2
  %1777 = extractvalue %dx.types.CBufRet.f32 %1771, 2
  %1778 = select i1 %1743, float %1776, float %1777
  %1779 = fmul fast float %1778, %1769
  %1780 = extractvalue %dx.types.CBufRet.f32 %1770, 1
  %1781 = extractvalue %dx.types.CBufRet.f32 %1771, 1
  %1782 = select i1 %1743, float %1780, float %1781
  %1783 = fmul fast float %1782, %1769
  %1784 = extractvalue %dx.types.CBufRet.f32 %1770, 0
  %1785 = extractvalue %dx.types.CBufRet.f32 %1771, 0
  %1786 = select i1 %1743, float %1784, float %1785
  %1787 = fmul fast float %1786, %1769
  %1788 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %1789 = extractvalue %dx.types.CBufRet.f32 %1788, 2
  %1790 = fmul fast float %1789, %1769
  %1791 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %1792 = extractvalue %dx.types.CBufRet.f32 %1791, 3
  %1793 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %1794 = extractvalue %dx.types.CBufRet.f32 %1793, 0
  %1795 = extractvalue %dx.types.CBufRet.f32 %1793, 1
  %1796 = extractvalue %dx.types.CBufRet.f32 %1793, 2
  %1797 = extractvalue %dx.types.CBufRet.f32 %1793, 3
  %1798 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %1799 = extractvalue %dx.types.CBufRet.f32 %1798, 0
  %1800 = extractvalue %dx.types.CBufRet.f32 %1798, 1
  %1801 = extractvalue %dx.types.CBufRet.f32 %1798, 2
  %1802 = extractvalue %dx.types.CBufRet.f32 %1798, 3
  br label %1862

; <label>:1803                                    ; preds = %1736
  %1804 = lshr i32 %1739, 8
  %1805 = and i32 %1804, 65535
  %1806 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1805)  ; LegacyF16ToF32(value)
  %1807 = and i32 %636, 2097152
  %1808 = icmp ne i32 %1807, 0
  %1809 = and i32 %636, 1048576
  %1810 = icmp ne i32 %1809, 0
  %1811 = and i32 %636, 65536
  %1812 = icmp ne i32 %1811, 0
  %1813 = select i1 %1812, float 1.000000e+00, float 0.000000e+00
  %1814 = and i32 %636, 32768
  %1815 = icmp ne i32 %1814, 0
  %1816 = select i1 %1815, float 0.000000e+00, float 1.000000e+00
  %1817 = select i1 %99, float %1763, float %1816
  %1818 = fmul fast float %1817, %1813
  %1819 = select i1 %1810, float 0.000000e+00, float %1818
  %1820 = lshr i32 %1741, 24
  %1821 = uitofp i32 %1820 to float
  %1822 = fmul fast float %1821, 0x3F70101020000000
  %1823 = fmul fast float %1822, %1817
  %1824 = lshr i32 %1741, 16
  %1825 = and i32 %1824, 255
  %1826 = uitofp i32 %1825 to float
  %1827 = fmul fast float %1826, 0x3F70101020000000
  %1828 = fmul fast float %1827, %1817
  %1829 = lshr i32 %1741, 8
  %1830 = and i32 %1829, 255
  %1831 = uitofp i32 %1830 to float
  %1832 = fmul fast float %1831, 0x3F70101020000000
  %1833 = fmul fast float %1832, %1817
  %1834 = and i32 %1741, 255
  %1835 = uitofp i32 %1834 to float
  %1836 = fmul fast float %1835, 0x3F70101020000000
  %1837 = fmul fast float %1836, %1817
  %1838 = icmp ne i32 %640, 0
  %1839 = select i1 %1838, float 1.000000e+00, float 0.000000e+00
  %1840 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %1841 = extractvalue %dx.types.CBufRet.f32 %1840, 0
  %1842 = extractvalue %dx.types.CBufRet.f32 %1840, 1
  %1843 = extractvalue %dx.types.CBufRet.f32 %1840, 2
  %1844 = extractvalue %dx.types.CBufRet.f32 %1840, 3
  %1845 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %1846 = extractvalue %dx.types.CBufRet.f32 %1845, 0
  %1847 = extractvalue %dx.types.CBufRet.f32 %1845, 1
  %1848 = extractvalue %dx.types.CBufRet.f32 %1845, 2
  %1849 = extractvalue %dx.types.CBufRet.f32 %1845, 3
  %1850 = fmul fast float %1837, %1839
  %1851 = fmul fast float %1833, %1839
  %1852 = fmul fast float %1828, %1839
  %1853 = fmul fast float %1823, %1839
  %1854 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1855 = extractvalue %dx.types.CBufRet.f32 %1854, 0
  %1856 = fmul fast float %1855, 2.000000e+00
  %1857 = select i1 %1808, float %1856, float 1.000000e+00
  %1858 = fmul fast float %1857, %1850
  %1859 = fmul fast float %1857, %1851
  %1860 = fmul fast float %1857, %1852
  %1861 = fmul fast float %1857, %1853
  br label %1862

; <label>:1862                                    ; preds = %1803, %1766
  %1863 = phi float [ %1858, %1803 ], [ %1787, %1766 ]
  %1864 = phi float [ %1859, %1803 ], [ %1783, %1766 ]
  %1865 = phi float [ %1860, %1803 ], [ %1779, %1766 ]
  %1866 = phi float [ %1861, %1803 ], [ %1775, %1766 ]
  %1867 = phi float [ %1846, %1803 ], [ %1799, %1766 ]
  %1868 = phi float [ %1847, %1803 ], [ %1800, %1766 ]
  %1869 = phi float [ %1848, %1803 ], [ %1801, %1766 ]
  %1870 = phi float [ %1849, %1803 ], [ %1802, %1766 ]
  %1871 = phi float [ %1841, %1803 ], [ %1794, %1766 ]
  %1872 = phi float [ %1842, %1803 ], [ %1795, %1766 ]
  %1873 = phi float [ %1843, %1803 ], [ %1796, %1766 ]
  %1874 = phi float [ %1844, %1803 ], [ %1797, %1766 ]
  %1875 = phi float [ %1819, %1803 ], [ %1790, %1766 ]
  %1876 = phi float [ %1806, %1803 ], [ %1792, %1766 ]
  %1877 = fcmp fast oeq float %1876, 0.000000e+00
  br i1 %1877, label %1977, label %1878, !dx.controlflow.hints !48

; <label>:1878                                    ; preds = %1862
  %1879 = fmul fast float %1876, %65
  %1880 = fptosi float %1879 to i32
  %1881 = fmul fast float %1876, %66
  %1882 = fptosi float %1881 to i32
  %1883 = call i32 @dx.op.binary.i32(i32 37, i32 1, i32 %1880)  ; IMax(a,b)
  %1884 = call i32 @dx.op.binary.i32(i32 37, i32 1, i32 %1882)  ; IMax(a,b)
  %1885 = sub i32 %64, %1884
  %1886 = or i32 %1885, %63
  %1887 = icmp slt i32 %1886, 0
  %1888 = fptosi float %59 to i32
  %1889 = fptosi float %60 to i32
  %1890 = icmp sge i32 %63, %1888
  %1891 = icmp sge i32 %1885, %1889
  %1892 = or i1 %1890, %1891
  %1893 = or i1 %1887, %1892
  br i1 %1893, label %1907, label %1894, !dx.controlflow.hints !49

; <label>:1894                                    ; preds = %1878
  %1895 = lshr i32 %1885, 2
  %1896 = mul i32 %84, %1895
  %1897 = add i32 %102, %1896
  %1898 = shl i32 %1897, 2
  %1899 = shl i32 %1885, 3
  %1900 = and i32 %1899, 24
  %1901 = or i32 %1900, %93
  %1902 = shl i32 1, %1901
  %1903 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %1898, i32 undef)  ; BufferLoad(srv,index,wot)
  %1904 = extractvalue %dx.types.ResRet.i32 %1903, 0
  %1905 = and i32 %1904, %1902
  %1906 = icmp ne i32 %1905, 0
  br label %1907

; <label>:1907                                    ; preds = %1894, %1878
  %1908 = phi i1 [ %1906, %1894 ], [ false, %1878 ]
  %1909 = add i32 %1884, %64
  %1910 = or i32 %1909, %63
  %1911 = icmp slt i32 %1910, 0
  %1912 = icmp sge i32 %1909, %1889
  %1913 = or i1 %1890, %1912
  %1914 = or i1 %1911, %1913
  br i1 %1914, label %1928, label %1915, !dx.controlflow.hints !49

; <label>:1915                                    ; preds = %1907
  %1916 = lshr i32 %1909, 2
  %1917 = mul i32 %84, %1916
  %1918 = add i32 %102, %1917
  %1919 = shl i32 %1918, 2
  %1920 = shl i32 %1909, 3
  %1921 = and i32 %1920, 24
  %1922 = or i32 %1921, %93
  %1923 = shl i32 1, %1922
  %1924 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %1919, i32 undef)  ; BufferLoad(srv,index,wot)
  %1925 = extractvalue %dx.types.ResRet.i32 %1924, 0
  %1926 = and i32 %1925, %1923
  %1927 = icmp ne i32 %1926, 0
  br label %1928

; <label>:1928                                    ; preds = %1915, %1907
  %1929 = phi i1 [ %1927, %1915 ], [ false, %1907 ]
  %1930 = and i1 %1908, %1929
  %1931 = sub i32 %63, %1883
  %1932 = or i32 %1931, %64
  %1933 = icmp slt i32 %1932, 0
  %1934 = icmp sge i32 %1931, %1888
  %1935 = icmp sge i32 %64, %1889
  %1936 = or i1 %1934, %1935
  %1937 = or i1 %1933, %1936
  br i1 %1937, label %1951, label %1938, !dx.controlflow.hints !49

; <label>:1938                                    ; preds = %1928
  %1939 = lshr i32 %1931, 3
  %1940 = add i32 %81, %1939
  %1941 = add i32 %1940, %100
  %1942 = add i32 %1941, %85
  %1943 = shl i32 %1942, 2
  %1944 = and i32 %1931, 7
  %1945 = or i32 %1944, %92
  %1946 = shl i32 1, %1945
  %1947 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %1943, i32 undef)  ; BufferLoad(srv,index,wot)
  %1948 = extractvalue %dx.types.ResRet.i32 %1947, 0
  %1949 = and i32 %1948, %1946
  %1950 = icmp ne i32 %1949, 0
  br label %1951

; <label>:1951                                    ; preds = %1938, %1928
  %1952 = phi i1 [ %1950, %1938 ], [ false, %1928 ]
  %1953 = and i1 %1930, %1952
  %1954 = add i32 %1883, %63
  %1955 = or i32 %1954, %64
  %1956 = icmp slt i32 %1955, 0
  %1957 = icmp sge i32 %1954, %1888
  %1958 = or i1 %1957, %1935
  %1959 = or i1 %1956, %1958
  br i1 %1959, label %1973, label %1960, !dx.controlflow.hints !49

; <label>:1960                                    ; preds = %1951
  %1961 = lshr i32 %1954, 3
  %1962 = add i32 %81, %1961
  %1963 = add i32 %1962, %100
  %1964 = add i32 %1963, %85
  %1965 = shl i32 %1964, 2
  %1966 = and i32 %1954, 7
  %1967 = or i32 %1966, %92
  %1968 = shl i32 1, %1967
  %1969 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %1965, i32 undef)  ; BufferLoad(srv,index,wot)
  %1970 = extractvalue %dx.types.ResRet.i32 %1969, 0
  %1971 = and i32 %1970, %1968
  %1972 = icmp ne i32 %1971, 0
  br label %1973

; <label>:1973                                    ; preds = %1960, %1951
  %1974 = phi i1 [ %1972, %1960 ], [ false, %1951 ]
  %1975 = and i1 %1953, %1974
  %1976 = xor i1 %1975, true
  br label %1977

; <label>:1977                                    ; preds = %1973, %1862
  %1978 = phi i1 [ %1976, %1973 ], [ false, %1862 ]
  br i1 %1978, label %5478, label %1979, !dx.controlflow.hints !50

; <label>:1979                                    ; preds = %1977
  %1980 = select i1 %78, float %1867, float %1871
  %1981 = select i1 %78, float %1868, float %1872
  %1982 = select i1 %78, float %1869, float %1873
  %1983 = select i1 %78, float %1870, float %1874
  %1984 = fmul fast float %1980, %1863
  %1985 = fmul fast float %1984, %1875
  %1986 = fmul fast float %1981, %1864
  %1987 = fmul fast float %1986, %1875
  %1988 = fmul fast float %1982, %1865
  %1989 = fmul fast float %1988, %1875
  %1990 = fmul fast float %1983, %1866
  %1991 = fmul fast float %1990, %1875
  br label %5478

; <label>:1992                                    ; preds = %1733
  %1993 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %1735, i32 undef)  ; BufferLoad(srv,index,wot)
  %1994 = extractvalue %dx.types.ResRet.i32 %1993, 0
  %1995 = and i32 %1994, 255
  %1996 = uitofp i32 %1995 to float
  %1997 = lshr i32 %1994, 8
  %1998 = and i32 %1997, 255
  %1999 = uitofp i32 %1998 to float
  %2000 = lshr i32 %1994, 16
  %2001 = and i32 %2000, 255
  %2002 = uitofp i32 %2001 to float
  %2003 = lshr i32 %1994, 24
  %2004 = uitofp i32 %2003 to float
  %2005 = fmul fast float %1996, 0x3F70101020000000
  %2006 = fmul fast float %1999, 0x3F70101020000000
  %2007 = fmul fast float %2002, 0x3F70101020000000
  %2008 = fmul fast float %2004, 0x3F70101020000000
  %2009 = fsub fast float 1.000000e+00, %2008
  %2010 = lshr i32 %636, 5
  %2011 = and i32 %2010, 1008
  %2012 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %2011, i32 undef)  ; BufferLoad(srv,index,wot)
  %2013 = extractvalue %dx.types.ResRet.i32 %2012, 0
  %2014 = and i32 %2013, 1022
  %2015 = uitofp i32 %2014 to float
  %2016 = fmul fast float %2015, 0x3F940A0500000000
  %2017 = fadd fast float %2016, -1.000000e+01
  %2018 = lshr i32 %2013, 10
  %2019 = and i32 %2018, 1022
  %2020 = uitofp i32 %2019 to float
  %2021 = fmul fast float %2020, 0x3F940A0500000000
  %2022 = fadd fast float %2021, -1.000000e+01
  %2023 = lshr i32 %2013, 20
  %2024 = and i32 %2023, 1022
  %2025 = uitofp i32 %2024 to float
  %2026 = fmul fast float %2025, 0x3F840A0500000000
  %2027 = add nuw nsw i32 %1735, 12
  %2028 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %2027, i32 undef)  ; BufferLoad(srv,index,wot)
  %2029 = extractvalue %dx.types.ResRet.i32 %2028, 0
  %2030 = and i32 %2029, 65535
  %2031 = uitofp i32 %2030 to float
  %2032 = fmul fast float %2031, 0x3EF0002000000000
  %2033 = lshr i32 %2029, 16
  %2034 = uitofp i32 %2033 to float
  %2035 = fmul fast float %2034, 0x3EF0002000000000
  %2036 = add nuw nsw i32 %1735, 8
  %2037 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %2036, i32 undef)  ; BufferLoad(srv,index,wot)
  %2038 = extractvalue %dx.types.ResRet.i32 %2037, 0
  %2039 = and i32 %2038, 65535
  %2040 = uitofp i32 %2039 to float
  %2041 = fmul fast float %2040, 0x3EF0002000000000
  %2042 = lshr i32 %2038, 16
  %2043 = uitofp i32 %2042 to float
  %2044 = fmul fast float %2043, 0x3EF0002000000000
  %2045 = fsub fast float %44, %2041
  %2046 = fdiv fast float %2045, %2032
  %2047 = fsub fast float %45, %2044
  %2048 = fdiv fast float %2047, %2035
  %2049 = add nuw nsw i32 %1735, 16
  %2050 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %2049, i32 undef)  ; BufferLoad(srv,index,wot)
  %2051 = extractvalue %dx.types.ResRet.f32 %2050, 0
  %2052 = fcmp fast olt float %2051, 1.000000e+01
  %2053 = uitofp i1 %2052 to float
  %2054 = fdiv fast float 2.400000e+02, %2051
  %2055 = call float @dx.op.unary.f32(i32 7, float %2054)  ; Saturate(value)
  %2056 = fdiv fast float 3.200000e+02, %2051
  %2057 = call float @dx.op.unary.f32(i32 7, float %2056)  ; Saturate(value)
  %2058 = fmul fast float %2057, 5.000000e-01
  %2059 = fadd fast float %2058, 2.500000e-01
  %2060 = fdiv fast float 3.200000e+01, %2059
  %2061 = select i1 %2052, float 3.200000e+01, float %2060
  %2062 = fmul fast float %2061, 1.600000e+01
  %2063 = fmul fast float %2061, 9.000000e+00
  %2064 = fmul fast float %2032, %2046
  %2065 = fmul fast float %2064, %2062
  %2066 = fmul fast float %2035, %2048
  %2067 = fmul fast float %2066, %2063
  %2068 = call float @dx.op.unary.f32(i32 29, float %2065)  ; Round_z(value)
  %2069 = call float @dx.op.unary.f32(i32 29, float %2067)  ; Round_z(value)
  %2070 = call float @dx.op.unary.f32(i32 7, float %2008)  ; Saturate(value)
  %2071 = fmul fast float %2070, 2.000000e+00
  %2072 = fsub fast float 3.000000e+00, %2071
  %2073 = fmul fast float %2055, 4.000000e+01
  %2074 = fmul fast float %2053, 1.000000e+02
  %2075 = fadd fast float %2074, %2073
  %2076 = fmul fast float %2026, %2075
  %2077 = fptoui float %2076 to i32
  %2078 = uitofp i32 %63 to float
  %2079 = uitofp i32 %64 to float
  %2080 = fptoui float %2078 to i32
  %2081 = fptoui float %2079 to i32
  %2082 = lshr i32 %2081, 2
  %2083 = mul i32 %84, %2082
  %2084 = lshr i32 %2080, 3
  %2085 = add i32 %81, %2084
  %2086 = add i32 %2085, %100
  %2087 = add i32 %2086, %2083
  %2088 = shl i32 %2087, 2
  %2089 = shl i32 %2081, 3
  %2090 = and i32 %2089, 24
  %2091 = and i32 %2080, 7
  %2092 = or i32 %2090, %2091
  %2093 = shl i32 1, %2092
  %2094 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %2088, i32 undef)  ; BufferLoad(srv,index,wot)
  %2095 = extractvalue %dx.types.ResRet.i32 %2094, 0
  %2096 = and i32 %2095, %2093
  %2097 = icmp ne i32 %2096, 0
  %2098 = icmp eq i32 %2077, 0
  br i1 %2098, label %2215, label %2099, !dx.controlflow.hints !52

; <label>:2099                                    ; preds = %1992
  %2100 = uitofp i32 %2077 to float
  %2101 = fmul fast float %65, 5.000000e-01
  %2102 = fmul fast float %2101, %2100
  %2103 = fmul fast float %66, 5.000000e-01
  %2104 = fmul fast float %2103, %2100
  %2105 = call float @dx.op.binary.f32(i32 35, float 5.000000e-01, float %2102)  ; FMax(a,b)
  %2106 = call float @dx.op.binary.f32(i32 35, float 5.000000e-01, float %2104)  ; FMax(a,b)
  br label %2107

; <label>:2107                                    ; preds = %2202, %2099
  %2108 = phi float [ 0.000000e+00, %2099 ], [ %2205, %2202 ]
  %2109 = phi i32 [ 0, %2099 ], [ %2206, %2202 ]
  %2110 = fmul fast float %44, 0x3FF280E1E0000000
  %2111 = fmul fast float %45, 0x3FF280E1E0000000
  %2112 = sitofp i32 %2109 to float
  %2113 = fmul fast float %2112, 0x3FB99999A0000000
  %2114 = fadd fast float %2113, %2110
  %2115 = fadd fast float %2113, %2111
  %2116 = fmul fast float %2114, 1.024000e+03
  %2117 = fmul fast float %2115, 1.024000e+03
  %2118 = fadd fast float %2116, -5.120000e+02
  %2119 = fadd fast float %2117, -5.120000e+02
  %2120 = fmul fast float %2114, 0x4081BEDF00000000
  %2121 = fadd fast float %2120, 0xC071BEDF00000000
  %2122 = call float @dx.op.unary.f32(i32 22, float %2121)  ; Frc(value)
  %2123 = fmul fast float %2118, %2122
  %2124 = fadd fast float %2123, %2119
  %2125 = fmul fast float %2115, 0x4073BEBE20000000
  %2126 = fadd fast float %2125, 0xC063BEBE20000000
  %2127 = call float @dx.op.unary.f32(i32 22, float %2126)  ; Frc(value)
  %2128 = fmul fast float %2119, %2127
  %2129 = fadd fast float %2128, %2118
  %2130 = fmul fast float %2124, %2129
  %2131 = call float @dx.op.unary.f32(i32 22, float %2130)  ; Frc(value)
  %2132 = fmul fast float %2131, 2.000000e+00
  %2133 = fadd fast float %2132, -1.000000e+00
  %2134 = fmul fast float %2133, %2105
  %2135 = fmul fast float %44, 0x3FEB681740000000
  %2136 = fmul fast float %45, 0x3FEB681740000000
  %2137 = fmul fast float %2112, 0x3FC99999A0000000
  %2138 = fadd fast float %2137, 1.250000e-01
  %2139 = fadd fast float %2138, %2135
  %2140 = fadd fast float %2138, %2136
  %2141 = fmul fast float %2139, 1.024000e+03
  %2142 = fmul fast float %2140, 1.024000e+03
  %2143 = fadd fast float %2141, -5.120000e+02
  %2144 = fadd fast float %2142, -5.120000e+02
  %2145 = fmul fast float %2139, 0x4081BEDF00000000
  %2146 = fadd fast float %2145, 0xC071BEDF00000000
  %2147 = call float @dx.op.unary.f32(i32 22, float %2146)  ; Frc(value)
  %2148 = fmul fast float %2143, %2147
  %2149 = fadd fast float %2148, %2144
  %2150 = fmul fast float %2140, 0x4073BEBE20000000
  %2151 = fadd fast float %2150, 0xC063BEBE20000000
  %2152 = call float @dx.op.unary.f32(i32 22, float %2151)  ; Frc(value)
  %2153 = fmul fast float %2144, %2152
  %2154 = fadd fast float %2153, %2143
  %2155 = fmul fast float %2149, %2154
  %2156 = call float @dx.op.unary.f32(i32 22, float %2155)  ; Frc(value)
  %2157 = fmul fast float %2156, 2.000000e+00
  %2158 = fadd fast float %2157, -1.000000e+00
  %2159 = fmul fast float %2158, %2106
  %2160 = fptosi float %2134 to i32
  %2161 = sitofp i32 %2160 to float
  %2162 = fadd fast float %2161, %2078
  %2163 = fptosi float %2162 to i32
  %2164 = fptosi float %2159 to i32
  %2165 = sitofp i32 %2164 to float
  %2166 = fadd fast float %2165, %2079
  %2167 = fptosi float %2166 to i32
  %2168 = or i32 %2167, %2163
  %2169 = icmp slt i32 %2168, 0
  %2170 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %2171 = extractvalue %dx.types.CBufRet.f32 %2170, 0
  %2172 = extractvalue %dx.types.CBufRet.f32 %2170, 1
  %2173 = fptosi float %2171 to i32
  %2174 = fptosi float %2172 to i32
  %2175 = icmp sge i32 %2163, %2173
  %2176 = icmp sge i32 %2167, %2174
  %2177 = or i1 %2175, %2176
  %2178 = or i1 %2169, %2177
  br i1 %2178, label %2202, label %2179, !dx.controlflow.hints !49

; <label>:2179                                    ; preds = %2107
  %2180 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %18, i32 51)  ; CBufferLoadLegacy(handle,regIndex)
  %2181 = extractvalue %dx.types.CBufRet.i32 %2180, 1
  %2182 = shl i32 %2181, 2
  %2183 = extractvalue %dx.types.CBufRet.i32 %2180, 3
  %2184 = shl i32 %2183, 1
  %2185 = lshr i32 %2167, 2
  %2186 = extractvalue %dx.types.CBufRet.i32 %2180, 2
  %2187 = mul i32 %2186, %2185
  %2188 = lshr i32 %2163, 3
  %2189 = add i32 %2182, %2188
  %2190 = add i32 %2189, %2184
  %2191 = add i32 %2190, %2187
  %2192 = shl i32 %2191, 2
  %2193 = shl i32 %2167, 3
  %2194 = and i32 %2193, 24
  %2195 = and i32 %2163, 7
  %2196 = or i32 %2194, %2195
  %2197 = shl i32 1, %2196
  %2198 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %2192, i32 undef)  ; BufferLoad(srv,index,wot)
  %2199 = extractvalue %dx.types.ResRet.i32 %2198, 0
  %2200 = and i32 %2199, %2197
  %2201 = icmp ne i32 %2200, 0
  br label %2202

; <label>:2202                                    ; preds = %2179, %2107
  %2203 = phi i1 [ %2201, %2179 ], [ false, %2107 ]
  %2204 = uitofp i1 %2203 to float
  %2205 = fadd fast float %2204, %2108
  %2206 = add nuw nsw i32 %2109, 1
  %2207 = icmp eq i32 %2206, 5
  br i1 %2207, label %2208, label %2107

; <label>:2208                                    ; preds = %2202
  %2209 = uitofp i1 %2097 to float
  %2210 = fmul fast float %2209, 0x3FC99999A0000000
  %2211 = fmul fast float %2210, %2205
  %2212 = fadd fast float %2211, -5.000000e-01
  %2213 = fmul fast float %2212, 2.000000e+00
  %2214 = call float @dx.op.unary.f32(i32 7, float %2213)  ; Saturate(value)
  br label %2215

; <label>:2215                                    ; preds = %2208, %1992
  %2216 = phi float [ %2214, %2208 ], [ 0.000000e+00, %1992 ]
  %2217 = fdiv fast float %2068, %2062
  %2218 = fdiv fast float %2069, %2063
  %2219 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2220 = extractvalue %dx.types.CBufRet.f32 %2219, 3
  %2221 = fmul fast float %2220, %2017
  %2222 = fadd fast float %2221, %2217
  %2223 = fsub fast float %2218, %2221
  %2224 = call float @dx.op.unary.f32(i32 22, float %2222)  ; Frc(value)
  %2225 = call float @dx.op.unary.f32(i32 22, float %2223)  ; Frc(value)
  %2226 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %15, float %2224, float %2225, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2227 = extractvalue %dx.types.ResRet.f32 %2226, 0
  %2228 = fmul fast float %2227, %2022
  %2229 = call float @dx.op.unary.f32(i32 7, float %2228)  ; Saturate(value)
  %2230 = call float @dx.op.binary.f32(i32 35, float 0x3F847AE140000000, float %2229)  ; FMax(a,b)
  %2231 = fsub fast float -5.000000e-01, %2068
  %2232 = fadd fast float %2231, %2065
  %2233 = fsub fast float -5.000000e-01, %2069
  %2234 = fadd fast float %2233, %2067
  %2235 = fmul fast float %2232, 2.000000e+00
  %2236 = fmul fast float %2234, 2.000000e+00
  %2237 = call float @dx.op.dot2.f32(i32 54, float %2235, float %2236, float %2235, float %2236)  ; Dot2(ax,ay,bx,by)
  %2238 = call float @dx.op.unary.f32(i32 24, float %2237)  ; Sqrt(value)
  %2239 = fsub fast float 1.000000e+00, %2238
  %2240 = fmul fast float %2239, 2.000000e+00
  %2241 = call float @dx.op.unary.f32(i32 7, float %2240)  ; Saturate(value)
  %2242 = fadd fast float %2221, %2048
  %2243 = call float @dx.op.unary.f32(i32 22, float %2242)  ; Frc(value)
  %2244 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %14, float %2046, float %2243, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2245 = extractvalue %dx.types.ResRet.f32 %2244, 3
  %2246 = call float @dx.op.unary.f32(i32 7, float %2216)  ; Saturate(value)
  %2247 = fmul fast float %2245, %2009
  %2248 = fsub fast float %2246, %2247
  %2249 = call float @dx.op.unary.f32(i32 7, float %2248)  ; Saturate(value)
  %2250 = fmul fast float %2245, 1.250000e+00
  %2251 = fsub fast float %2246, %2250
  %2252 = call float @dx.op.unary.f32(i32 7, float %2251)  ; Saturate(value)
  %2253 = fmul fast float %2252, %2252
  %2254 = fmul fast float %2253, %2252
  %2255 = call float @dx.op.unary.f32(i32 7, float %2254)  ; Saturate(value)
  %2256 = fmul fast float %2255, 0x40285C2900000000
  %2257 = fsub fast float 1.400000e+01, %2256
  %2258 = fptoui float %2257 to i32
  %2259 = call float @dx.op.unary.f32(i32 22, float %2257)  ; Frc(value)
  %2260 = mul i32 %2258, 3
  %2261 = add i32 0, %2260
  %2262 = getelementptr [45 x float], [45 x float]* @supp_ramp.v.1dim, i32 0, i32 %2261
  %2263 = load float, float* %2262, align 4
  %2264 = mul i32 %2258, 3
  %2265 = add i32 1, %2264
  %2266 = getelementptr [45 x float], [45 x float]* @supp_ramp.v.1dim, i32 0, i32 %2265
  %2267 = load float, float* %2266, align 4
  %2268 = mul i32 %2258, 3
  %2269 = add i32 2, %2268
  %2270 = getelementptr [45 x float], [45 x float]* @supp_ramp.v.1dim, i32 0, i32 %2269
  %2271 = load float, float* %2270, align 4
  %2272 = add i32 %2258, 1
  %2273 = mul i32 %2272, 3
  %2274 = add i32 0, %2273
  %2275 = getelementptr [45 x float], [45 x float]* @supp_ramp.v.1dim, i32 0, i32 %2274
  %2276 = load float, float* %2275, align 4
  %2277 = mul i32 %2272, 3
  %2278 = add i32 1, %2277
  %2279 = getelementptr [45 x float], [45 x float]* @supp_ramp.v.1dim, i32 0, i32 %2278
  %2280 = load float, float* %2279, align 4
  %2281 = mul i32 %2272, 3
  %2282 = add i32 2, %2281
  %2283 = getelementptr [45 x float], [45 x float]* @supp_ramp.v.1dim, i32 0, i32 %2282
  %2284 = load float, float* %2283, align 4
  %2285 = fsub fast float %2276, %2263
  %2286 = fsub fast float %2280, %2267
  %2287 = fsub fast float %2284, %2271
  %2288 = fmul fast float %2285, %2259
  %2289 = fmul fast float %2286, %2259
  %2290 = fmul fast float %2287, %2259
  %2291 = fadd fast float %2288, %2263
  %2292 = fadd fast float %2289, %2267
  %2293 = fadd fast float %2290, %2271
  %2294 = fmul fast float %2005, %2291
  %2295 = fmul fast float %2006, %2292
  %2296 = fmul fast float %2007, %2293
  %2297 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 17)  ; CBufferLoadLegacy(handle,regIndex)
  %2298 = extractvalue %dx.types.CBufRet.f32 %2297, 0
  %2299 = fmul fast float %2070, %2070
  %2300 = fmul fast float %2299, %2072
  %2301 = fmul fast float %2300, %2230
  %2302 = fmul fast float %2301, %2241
  %2303 = fmul fast float %2302, %2249
  %2304 = fmul fast float %2303, %2298
  %2305 = fmul fast float %2294, %2294
  %2306 = fmul fast float %2305, 5.000000e+00
  %2307 = fmul fast float %2306, %2304
  %2308 = fmul fast float %2295, %2295
  %2309 = fmul fast float %2308, 5.000000e+00
  %2310 = fmul fast float %2309, %2304
  %2311 = fmul fast float %2304, 5.000000e+00
  %2312 = fmul fast float %2296, %2296
  %2313 = fmul fast float %2312, %2311
  %2314 = call float @dx.op.binary.f32(i32 36, float %2307, float 2.000000e+00)  ; FMin(a,b)
  %2315 = call float @dx.op.binary.f32(i32 36, float %2310, float 2.000000e+00)  ; FMin(a,b)
  %2316 = call float @dx.op.binary.f32(i32 36, float %2313, float 2.000000e+00)  ; FMin(a,b)
  %2317 = select i1 %2052, float 0x3FD3333340000000, float 7.500000e-01
  %2318 = fmul float %2317, %2304
  br label %5478

; <label>:2319                                    ; preds = %621
  %2320 = and i32 %636, 511
  %2321 = mul nuw nsw i32 %2320, 20
  %2322 = add nuw nsw i32 %2321, 4
  %2323 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %2322, i32 undef)  ; BufferLoad(srv,index,wot)
  %2324 = extractvalue %dx.types.ResRet.i32 %2323, 0
  %2325 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %2321, i32 undef)  ; BufferLoad(srv,index,wot)
  %2326 = extractvalue %dx.types.ResRet.i32 %2325, 0
  %2327 = and i32 %2326, 255
  %2328 = uitofp i32 %2327 to float
  %2329 = lshr i32 %2326, 8
  %2330 = and i32 %2329, 255
  %2331 = uitofp i32 %2330 to float
  %2332 = lshr i32 %2326, 16
  %2333 = and i32 %2332, 255
  %2334 = uitofp i32 %2333 to float
  %2335 = lshr i32 %2326, 24
  %2336 = uitofp i32 %2335 to float
  %2337 = fmul fast float %2328, 0x3F70101020000000
  %2338 = fmul fast float %2331, 0x3F70101020000000
  %2339 = fmul fast float %2334, 0x3F70101020000000
  %2340 = fmul fast float %2336, 0x3F70101020000000
  %2341 = lshr i32 %2324, 8
  %2342 = and i32 %2341, 65535
  %2343 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2342)  ; LegacyF16ToF32(value)
  %2344 = fcmp fast oeq float %2343, 0.000000e+00
  br i1 %2344, label %2444, label %2345, !dx.controlflow.hints !48

; <label>:2345                                    ; preds = %2319
  %2346 = fmul fast float %2343, %65
  %2347 = fptosi float %2346 to i32
  %2348 = fmul fast float %2343, %66
  %2349 = fptosi float %2348 to i32
  %2350 = call i32 @dx.op.binary.i32(i32 37, i32 1, i32 %2347)  ; IMax(a,b)
  %2351 = call i32 @dx.op.binary.i32(i32 37, i32 1, i32 %2349)  ; IMax(a,b)
  %2352 = sub i32 %64, %2351
  %2353 = or i32 %2352, %63
  %2354 = icmp slt i32 %2353, 0
  %2355 = fptosi float %59 to i32
  %2356 = fptosi float %60 to i32
  %2357 = icmp sge i32 %63, %2355
  %2358 = icmp sge i32 %2352, %2356
  %2359 = or i1 %2357, %2358
  %2360 = or i1 %2354, %2359
  br i1 %2360, label %2374, label %2361, !dx.controlflow.hints !49

; <label>:2361                                    ; preds = %2345
  %2362 = lshr i32 %2352, 2
  %2363 = mul i32 %84, %2362
  %2364 = add i32 %102, %2363
  %2365 = shl i32 %2364, 2
  %2366 = shl i32 %2352, 3
  %2367 = and i32 %2366, 24
  %2368 = or i32 %2367, %93
  %2369 = shl i32 1, %2368
  %2370 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %2365, i32 undef)  ; BufferLoad(srv,index,wot)
  %2371 = extractvalue %dx.types.ResRet.i32 %2370, 0
  %2372 = and i32 %2371, %2369
  %2373 = icmp ne i32 %2372, 0
  br label %2374

; <label>:2374                                    ; preds = %2361, %2345
  %2375 = phi i1 [ %2373, %2361 ], [ false, %2345 ]
  %2376 = add i32 %2351, %64
  %2377 = or i32 %2376, %63
  %2378 = icmp slt i32 %2377, 0
  %2379 = icmp sge i32 %2376, %2356
  %2380 = or i1 %2357, %2379
  %2381 = or i1 %2378, %2380
  br i1 %2381, label %2395, label %2382, !dx.controlflow.hints !49

; <label>:2382                                    ; preds = %2374
  %2383 = lshr i32 %2376, 2
  %2384 = mul i32 %84, %2383
  %2385 = add i32 %102, %2384
  %2386 = shl i32 %2385, 2
  %2387 = shl i32 %2376, 3
  %2388 = and i32 %2387, 24
  %2389 = or i32 %2388, %93
  %2390 = shl i32 1, %2389
  %2391 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %2386, i32 undef)  ; BufferLoad(srv,index,wot)
  %2392 = extractvalue %dx.types.ResRet.i32 %2391, 0
  %2393 = and i32 %2392, %2390
  %2394 = icmp ne i32 %2393, 0
  br label %2395

; <label>:2395                                    ; preds = %2382, %2374
  %2396 = phi i1 [ %2394, %2382 ], [ false, %2374 ]
  %2397 = and i1 %2375, %2396
  %2398 = sub i32 %63, %2350
  %2399 = or i32 %2398, %64
  %2400 = icmp slt i32 %2399, 0
  %2401 = icmp sge i32 %2398, %2355
  %2402 = icmp sge i32 %64, %2356
  %2403 = or i1 %2401, %2402
  %2404 = or i1 %2400, %2403
  br i1 %2404, label %2418, label %2405, !dx.controlflow.hints !49

; <label>:2405                                    ; preds = %2395
  %2406 = lshr i32 %2398, 3
  %2407 = add i32 %81, %2406
  %2408 = add i32 %2407, %100
  %2409 = add i32 %2408, %85
  %2410 = shl i32 %2409, 2
  %2411 = and i32 %2398, 7
  %2412 = or i32 %2411, %92
  %2413 = shl i32 1, %2412
  %2414 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %2410, i32 undef)  ; BufferLoad(srv,index,wot)
  %2415 = extractvalue %dx.types.ResRet.i32 %2414, 0
  %2416 = and i32 %2415, %2413
  %2417 = icmp ne i32 %2416, 0
  br label %2418

; <label>:2418                                    ; preds = %2405, %2395
  %2419 = phi i1 [ %2417, %2405 ], [ false, %2395 ]
  %2420 = and i1 %2397, %2419
  %2421 = add i32 %2350, %63
  %2422 = or i32 %2421, %64
  %2423 = icmp slt i32 %2422, 0
  %2424 = icmp sge i32 %2421, %2355
  %2425 = or i1 %2424, %2402
  %2426 = or i1 %2423, %2425
  br i1 %2426, label %2440, label %2427, !dx.controlflow.hints !49

; <label>:2427                                    ; preds = %2418
  %2428 = lshr i32 %2421, 3
  %2429 = add i32 %81, %2428
  %2430 = add i32 %2429, %100
  %2431 = add i32 %2430, %85
  %2432 = shl i32 %2431, 2
  %2433 = and i32 %2421, 7
  %2434 = or i32 %2433, %92
  %2435 = shl i32 1, %2434
  %2436 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %2432, i32 undef)  ; BufferLoad(srv,index,wot)
  %2437 = extractvalue %dx.types.ResRet.i32 %2436, 0
  %2438 = and i32 %2437, %2435
  %2439 = icmp ne i32 %2438, 0
  br label %2440

; <label>:2440                                    ; preds = %2427, %2418
  %2441 = phi i1 [ %2439, %2427 ], [ false, %2418 ]
  %2442 = and i1 %2420, %2441
  %2443 = xor i1 %2442, true
  br label %2444

; <label>:2444                                    ; preds = %2440, %2319
  %2445 = phi i1 [ %2443, %2440 ], [ false, %2319 ]
  %2446 = and i32 %636, 1114112
  %2447 = icmp ne i32 %2446, 0
  %2448 = and i1 %2447, %117
  %2449 = or i1 %2448, %2445
  %2450 = select i1 %2449, float %2337, float 0.000000e+00
  %2451 = select i1 %2449, float %2338, float 0.000000e+00
  %2452 = select i1 %2449, float %2339, float 0.000000e+00
  %2453 = select i1 %2449, float %2340, float 0.000000e+00
  br label %5478

; <label>:2454                                    ; preds = %621
  %2455 = and i32 %636, 511
  %2456 = mul nuw nsw i32 %2455, 20
  %2457 = add nuw nsw i32 %2456, 4
  %2458 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %2457, i32 undef)  ; BufferLoad(srv,index,wot)
  %2459 = extractvalue %dx.types.ResRet.i32 %2458, 0
  %2460 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %2456, i32 undef)  ; BufferLoad(srv,index,wot)
  %2461 = extractvalue %dx.types.ResRet.i32 %2460, 0
  %2462 = and i32 %636, 524288
  %2463 = icmp ne i32 %2462, 0
  %2464 = and i32 %636, 2097152
  %2465 = icmp ne i32 %2464, 0
  %2466 = lshr i32 %2459, 8
  %2467 = and i32 %2466, 65535
  %2468 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2467)  ; LegacyF16ToF32(value)
  %2469 = lshr i32 %2459, 24
  %2470 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 228)  ; CBufferLoadLegacy(handle,regIndex)
  %2471 = extractvalue %dx.types.CBufRet.f32 %2470, 2
  %2472 = extractvalue %dx.types.CBufRet.f32 %2470, 0
  %2473 = call float @dx.op.binary.f32(i32 35, float %44, float %2472)  ; FMax(a,b)
  %2474 = call float @dx.op.binary.f32(i32 36, float %2473, float %2471)  ; FMin(a,b)
  %2475 = call float @dx.op.binary.f32(i32 36, float %44, float %2472)  ; FMin(a,b)
  %2476 = call float @dx.op.binary.f32(i32 35, float %2475, float %2474)  ; FMax(a,b)
  %2477 = fcmp fast oeq float %44, %2476
  %2478 = extractvalue %dx.types.CBufRet.f32 %2470, 3
  %2479 = extractvalue %dx.types.CBufRet.f32 %2470, 1
  %2480 = call float @dx.op.binary.f32(i32 35, float %45, float %2479)  ; FMax(a,b)
  %2481 = call float @dx.op.binary.f32(i32 36, float %2480, float %2478)  ; FMin(a,b)
  %2482 = call float @dx.op.binary.f32(i32 36, float %45, float %2479)  ; FMin(a,b)
  %2483 = call float @dx.op.binary.f32(i32 35, float %2482, float %2481)  ; FMax(a,b)
  %2484 = fcmp fast oeq float %45, %2483
  %2485 = and i1 %2477, %2484
  %2486 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 224)  ; CBufferLoadLegacy(handle,regIndex)
  %2487 = extractvalue %dx.types.CBufRet.f32 %2486, 1
  %2488 = select i1 %2485, float %2487, float 1.000000e+00
  %2489 = icmp ne i32 %2469, 0
  %2490 = and i1 %99, %2489
  br i1 %2490, label %2491, label %2545, !dx.controlflow.hints !55

; <label>:2491                                    ; preds = %2454
  %2492 = sitofp i32 %2469 to float
  %2493 = fmul fast float %2492, 0x3F70101020000000
  %2494 = fmul fast float %2493, %2488
  %2495 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %2496 = extractvalue %dx.types.CBufRet.f32 %2495, 3
  %2497 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %2498 = extractvalue %dx.types.CBufRet.f32 %2497, 2
  %2499 = fmul fast float %2498, %2494
  %2500 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2501 = extractvalue %dx.types.CBufRet.f32 %2500, 0
  %2502 = extractvalue %dx.types.CBufRet.f32 %2500, 1
  %2503 = extractvalue %dx.types.CBufRet.f32 %2500, 2
  %2504 = extractvalue %dx.types.CBufRet.f32 %2500, 3
  %2505 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %2506 = extractvalue %dx.types.CBufRet.f32 %2505, 0
  %2507 = extractvalue %dx.types.CBufRet.f32 %2505, 1
  %2508 = extractvalue %dx.types.CBufRet.f32 %2505, 2
  %2509 = extractvalue %dx.types.CBufRet.f32 %2505, 3
  %2510 = select i1 %2463, float %2501, float %2506
  %2511 = select i1 %2463, float %2502, float %2507
  %2512 = select i1 %2463, float %2503, float %2508
  %2513 = select i1 %2463, float %2504, float %2509
  %2514 = fmul fast float %2510, %2494
  %2515 = fmul fast float %2511, %2494
  %2516 = fmul fast float %2512, %2494
  %2517 = fmul fast float %2513, %2494
  br i1 %116, label %2539, label %2518, !dx.controlflow.hints !46

; <label>:2518                                    ; preds = %2491
  %2519 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 10)  ; CBufferLoadLegacy(handle,regIndex)
  %2520 = extractvalue %dx.types.CBufRet.f32 %2519, 0
  %2521 = extractvalue %dx.types.CBufRet.f32 %2519, 1
  %2522 = extractvalue %dx.types.CBufRet.f32 %2519, 2
  %2523 = extractvalue %dx.types.CBufRet.f32 %2519, 3
  %2524 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %2525 = extractvalue %dx.types.CBufRet.f32 %2524, 0
  %2526 = extractvalue %dx.types.CBufRet.f32 %2524, 1
  %2527 = extractvalue %dx.types.CBufRet.f32 %2524, 2
  %2528 = extractvalue %dx.types.CBufRet.f32 %2524, 3
  %2529 = extractvalue %dx.types.CBufRet.f32 %2497, 1
  %2530 = fmul fast float %2525, %2514
  %2531 = fmul fast float %2530, %2529
  %2532 = fmul fast float %2526, %2515
  %2533 = fmul fast float %2532, %2529
  %2534 = fmul fast float %2527, %2516
  %2535 = fmul fast float %2534, %2529
  %2536 = fmul fast float %2528, %2517
  %2537 = fmul fast float %2536, %2529
  %2538 = fmul fast float %2529, %2499
  br label %2623

; <label>:2539                                    ; preds = %2491
  %2540 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %2541 = extractvalue %dx.types.CBufRet.f32 %2540, 0
  %2542 = extractvalue %dx.types.CBufRet.f32 %2540, 1
  %2543 = extractvalue %dx.types.CBufRet.f32 %2540, 2
  %2544 = extractvalue %dx.types.CBufRet.f32 %2540, 3
  br label %2623

; <label>:2545                                    ; preds = %2454
  %2546 = lshr i32 %2461, 24
  %2547 = uitofp i32 %2546 to float
  %2548 = fmul fast float %2547, 0x3F70101020000000
  %2549 = lshr i32 %2461, 16
  %2550 = and i32 %2549, 255
  %2551 = uitofp i32 %2550 to float
  %2552 = fmul fast float %2551, 0x3F70101020000000
  %2553 = lshr i32 %2461, 8
  %2554 = and i32 %2553, 255
  %2555 = uitofp i32 %2554 to float
  %2556 = fmul fast float %2555, 0x3F70101020000000
  %2557 = and i32 %2461, 255
  %2558 = uitofp i32 %2557 to float
  %2559 = fmul fast float %2558, 0x3F70101020000000
  %2560 = and i32 %636, 65536
  %2561 = icmp ne i32 %2560, 0
  %2562 = select i1 %2561, float 1.000000e+00, float 0.000000e+00
  %2563 = and i32 %636, 32768
  %2564 = icmp ne i32 %2563, 0
  %2565 = select i1 %2564, float 0.000000e+00, float 1.000000e+00
  %2566 = select i1 %99, float %2488, float %2565
  %2567 = fmul fast float %2559, %2566
  %2568 = fmul fast float %2556, %2566
  %2569 = fmul fast float %2552, %2566
  %2570 = fmul fast float %2548, %2566
  br i1 %116, label %2600, label %2571, !dx.controlflow.hints !47

; <label>:2571                                    ; preds = %2545
  %2572 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2573 = extractvalue %dx.types.CBufRet.f32 %2572, 0
  %2574 = extractvalue %dx.types.CBufRet.f32 %2572, 1
  %2575 = extractvalue %dx.types.CBufRet.f32 %2572, 2
  %2576 = extractvalue %dx.types.CBufRet.f32 %2572, 3
  %2577 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %2578 = extractvalue %dx.types.CBufRet.f32 %2577, 0
  %2579 = extractvalue %dx.types.CBufRet.f32 %2577, 1
  %2580 = extractvalue %dx.types.CBufRet.f32 %2577, 2
  %2581 = extractvalue %dx.types.CBufRet.f32 %2577, 3
  %2582 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %2583 = extractvalue %dx.types.CBufRet.f32 %2582, 0
  %2584 = fsub fast float %2567, %2566
  %2585 = fsub fast float %2568, %2566
  %2586 = fsub fast float %2569, %2566
  %2587 = fsub fast float %2570, %2566
  %2588 = fmul fast float %2583, %2584
  %2589 = fmul fast float %2583, %2585
  %2590 = fmul fast float %2583, %2586
  %2591 = fmul fast float %2583, %2587
  %2592 = fadd fast float %2588, %2566
  %2593 = fadd fast float %2589, %2566
  %2594 = fadd fast float %2590, %2566
  %2595 = fadd fast float %2591, %2566
  %2596 = fmul fast float %2592, %2578
  %2597 = fmul fast float %2593, %2579
  %2598 = fmul fast float %2594, %2580
  %2599 = fmul fast float %2595, %2581
  br label %2606

; <label>:2600                                    ; preds = %2545
  %2601 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %2602 = extractvalue %dx.types.CBufRet.f32 %2601, 0
  %2603 = extractvalue %dx.types.CBufRet.f32 %2601, 1
  %2604 = extractvalue %dx.types.CBufRet.f32 %2601, 2
  %2605 = extractvalue %dx.types.CBufRet.f32 %2601, 3
  br label %2606

; <label>:2606                                    ; preds = %2600, %2571
  %2607 = phi float [ %2596, %2571 ], [ %2567, %2600 ]
  %2608 = phi float [ %2597, %2571 ], [ %2568, %2600 ]
  %2609 = phi float [ %2598, %2571 ], [ %2569, %2600 ]
  %2610 = phi float [ %2599, %2571 ], [ %2570, %2600 ]
  %2611 = phi float [ %2573, %2571 ], [ %2602, %2600 ]
  %2612 = phi float [ %2574, %2571 ], [ %2603, %2600 ]
  %2613 = phi float [ %2575, %2571 ], [ %2604, %2600 ]
  %2614 = phi float [ %2576, %2571 ], [ %2605, %2600 ]
  %2615 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2616 = extractvalue %dx.types.CBufRet.f32 %2615, 0
  %2617 = fmul fast float %2616, 2.000000e+00
  %2618 = select i1 %2465, float %2617, float 1.000000e+00
  %2619 = fmul fast float %2618, %2607
  %2620 = fmul fast float %2618, %2608
  %2621 = fmul fast float %2618, %2609
  %2622 = fmul fast float %2618, %2610
  br label %2623

; <label>:2623                                    ; preds = %2606, %2539, %2518
  %2624 = phi float [ %2619, %2606 ], [ %2531, %2518 ], [ %2514, %2539 ]
  %2625 = phi float [ %2620, %2606 ], [ %2533, %2518 ], [ %2515, %2539 ]
  %2626 = phi float [ %2621, %2606 ], [ %2535, %2518 ], [ %2516, %2539 ]
  %2627 = phi float [ %2622, %2606 ], [ %2537, %2518 ], [ %2517, %2539 ]
  %2628 = phi float [ %2611, %2606 ], [ %2520, %2518 ], [ %2541, %2539 ]
  %2629 = phi float [ %2612, %2606 ], [ %2521, %2518 ], [ %2542, %2539 ]
  %2630 = phi float [ %2613, %2606 ], [ %2522, %2518 ], [ %2543, %2539 ]
  %2631 = phi float [ %2614, %2606 ], [ %2523, %2518 ], [ %2544, %2539 ]
  %2632 = phi float [ %2562, %2606 ], [ %2538, %2518 ], [ %2499, %2539 ]
  %2633 = phi float [ %2468, %2606 ], [ %2496, %2518 ], [ %2496, %2539 ]
  %2634 = fcmp fast oeq float %2633, 0.000000e+00
  br i1 %2634, label %2734, label %2635, !dx.controlflow.hints !48

; <label>:2635                                    ; preds = %2623
  %2636 = fmul fast float %2633, %65
  %2637 = fptosi float %2636 to i32
  %2638 = fmul fast float %2633, %66
  %2639 = fptosi float %2638 to i32
  %2640 = call i32 @dx.op.binary.i32(i32 37, i32 1, i32 %2637)  ; IMax(a,b)
  %2641 = call i32 @dx.op.binary.i32(i32 37, i32 1, i32 %2639)  ; IMax(a,b)
  %2642 = sub i32 %64, %2641
  %2643 = or i32 %2642, %63
  %2644 = icmp slt i32 %2643, 0
  %2645 = fptosi float %59 to i32
  %2646 = fptosi float %60 to i32
  %2647 = icmp sge i32 %63, %2645
  %2648 = icmp sge i32 %2642, %2646
  %2649 = or i1 %2647, %2648
  %2650 = or i1 %2644, %2649
  br i1 %2650, label %2664, label %2651, !dx.controlflow.hints !49

; <label>:2651                                    ; preds = %2635
  %2652 = lshr i32 %2642, 2
  %2653 = mul i32 %84, %2652
  %2654 = add i32 %102, %2653
  %2655 = shl i32 %2654, 2
  %2656 = shl i32 %2642, 3
  %2657 = and i32 %2656, 24
  %2658 = or i32 %2657, %93
  %2659 = shl i32 1, %2658
  %2660 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %2655, i32 undef)  ; BufferLoad(srv,index,wot)
  %2661 = extractvalue %dx.types.ResRet.i32 %2660, 0
  %2662 = and i32 %2661, %2659
  %2663 = icmp ne i32 %2662, 0
  br label %2664

; <label>:2664                                    ; preds = %2651, %2635
  %2665 = phi i1 [ %2663, %2651 ], [ false, %2635 ]
  %2666 = add i32 %2641, %64
  %2667 = or i32 %2666, %63
  %2668 = icmp slt i32 %2667, 0
  %2669 = icmp sge i32 %2666, %2646
  %2670 = or i1 %2647, %2669
  %2671 = or i1 %2668, %2670
  br i1 %2671, label %2685, label %2672, !dx.controlflow.hints !49

; <label>:2672                                    ; preds = %2664
  %2673 = lshr i32 %2666, 2
  %2674 = mul i32 %84, %2673
  %2675 = add i32 %102, %2674
  %2676 = shl i32 %2675, 2
  %2677 = shl i32 %2666, 3
  %2678 = and i32 %2677, 24
  %2679 = or i32 %2678, %93
  %2680 = shl i32 1, %2679
  %2681 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %2676, i32 undef)  ; BufferLoad(srv,index,wot)
  %2682 = extractvalue %dx.types.ResRet.i32 %2681, 0
  %2683 = and i32 %2682, %2680
  %2684 = icmp ne i32 %2683, 0
  br label %2685

; <label>:2685                                    ; preds = %2672, %2664
  %2686 = phi i1 [ %2684, %2672 ], [ false, %2664 ]
  %2687 = and i1 %2665, %2686
  %2688 = sub i32 %63, %2640
  %2689 = or i32 %2688, %64
  %2690 = icmp slt i32 %2689, 0
  %2691 = icmp sge i32 %2688, %2645
  %2692 = icmp sge i32 %64, %2646
  %2693 = or i1 %2691, %2692
  %2694 = or i1 %2690, %2693
  br i1 %2694, label %2708, label %2695, !dx.controlflow.hints !49

; <label>:2695                                    ; preds = %2685
  %2696 = lshr i32 %2688, 3
  %2697 = add i32 %81, %2696
  %2698 = add i32 %2697, %100
  %2699 = add i32 %2698, %85
  %2700 = shl i32 %2699, 2
  %2701 = and i32 %2688, 7
  %2702 = or i32 %2701, %92
  %2703 = shl i32 1, %2702
  %2704 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %2700, i32 undef)  ; BufferLoad(srv,index,wot)
  %2705 = extractvalue %dx.types.ResRet.i32 %2704, 0
  %2706 = and i32 %2705, %2703
  %2707 = icmp ne i32 %2706, 0
  br label %2708

; <label>:2708                                    ; preds = %2695, %2685
  %2709 = phi i1 [ %2707, %2695 ], [ false, %2685 ]
  %2710 = and i1 %2687, %2709
  %2711 = add i32 %2640, %63
  %2712 = or i32 %2711, %64
  %2713 = icmp slt i32 %2712, 0
  %2714 = icmp sge i32 %2711, %2645
  %2715 = or i1 %2714, %2692
  %2716 = or i1 %2713, %2715
  br i1 %2716, label %2730, label %2717, !dx.controlflow.hints !49

; <label>:2717                                    ; preds = %2708
  %2718 = lshr i32 %2711, 3
  %2719 = add i32 %81, %2718
  %2720 = add i32 %2719, %100
  %2721 = add i32 %2720, %85
  %2722 = shl i32 %2721, 2
  %2723 = and i32 %2711, 7
  %2724 = or i32 %2723, %92
  %2725 = shl i32 1, %2724
  %2726 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %2722, i32 undef)  ; BufferLoad(srv,index,wot)
  %2727 = extractvalue %dx.types.ResRet.i32 %2726, 0
  %2728 = and i32 %2727, %2725
  %2729 = icmp ne i32 %2728, 0
  br label %2730

; <label>:2730                                    ; preds = %2717, %2708
  %2731 = phi i1 [ %2729, %2717 ], [ false, %2708 ]
  %2732 = and i1 %2710, %2731
  %2733 = xor i1 %2732, true
  br label %2734

; <label>:2734                                    ; preds = %2730, %2623
  %2735 = phi i1 [ %2733, %2730 ], [ false, %2623 ]
  %2736 = add nuw nsw i32 %2456, 12
  %2737 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %2736, i32 undef)  ; BufferLoad(srv,index,wot)
  %2738 = extractvalue %dx.types.ResRet.i32 %2737, 0
  %2739 = and i32 %2738, 65535
  %2740 = uitofp i32 %2739 to float
  %2741 = lshr i32 %2738, 16
  %2742 = uitofp i32 %2741 to float
  %2743 = fmul fast float %2740, 0x3EF0002000000000
  %2744 = fmul fast float %2742, 0x3EF0002000000000
  %2745 = add nuw nsw i32 %2456, 8
  %2746 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %2745, i32 undef)  ; BufferLoad(srv,index,wot)
  %2747 = extractvalue %dx.types.ResRet.i32 %2746, 0
  %2748 = and i32 %2747, 65535
  %2749 = uitofp i32 %2748 to float
  %2750 = fmul fast float %2749, 0x3EF0002000000000
  %2751 = lshr i32 %2747, 16
  %2752 = uitofp i32 %2751 to float
  %2753 = fmul fast float %2752, 0x3EF0002000000000
  %2754 = fsub fast float %44, %2750
  %2755 = fdiv fast float %2754, %2743
  %2756 = fsub fast float %45, %2753
  %2757 = fdiv fast float %2756, %2744
  %2758 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2759 = extractvalue %dx.types.CBufRet.f32 %2758, 3
  %2760 = fmul fast float %2759, 0x3FA99999A0000000
  %2761 = fadd fast float %2760, %2757
  %2762 = call float @dx.op.unary.f32(i32 22, float %2755)  ; Frc(value)
  %2763 = call float @dx.op.unary.f32(i32 22, float %2761)  ; Frc(value)
  %2764 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %14, float %2762, float %2763, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2765 = extractvalue %dx.types.ResRet.f32 %2764, 1
  %2766 = extractvalue %dx.types.ResRet.f32 %2764, 3
  %2767 = and i32 %2459, 255
  %2768 = uitofp i32 %2767 to float
  %2769 = fmul fast float %2768, 0x4010101020000000
  %2770 = fadd fast float %2769, -5.120000e+02
  %2771 = fmul fast float %2768, 0x4001D0AFC0000000
  %2772 = fadd fast float %2771, 0xC071BEDF00000000
  %2773 = call float @dx.op.unary.f32(i32 22, float %2772)  ; Frc(value)
  %2774 = fmul fast float %2770, %2773
  %2775 = fadd fast float %2774, %2770
  %2776 = fmul fast float %2768, 0x3FF3D290C0000000
  %2777 = fadd fast float %2776, 0xC063BEBE20000000
  %2778 = call float @dx.op.unary.f32(i32 22, float %2777)  ; Frc(value)
  %2779 = fmul fast float %2770, %2778
  %2780 = fadd fast float %2779, %2770
  %2781 = fmul fast float %2775, %2780
  %2782 = call float @dx.op.unary.f32(i32 22, float %2781)  ; Frc(value)
  %2783 = fadd fast float %2757, 1.000000e+00
  %2784 = fmul fast float %2783, 0x401E322D00000000
  %2785 = fmul fast float %2784, %2782
  %2786 = fmul fast float %2759, 0x3FE921FB60000000
  %2787 = fadd fast float %2786, %2785
  %2788 = call float @dx.op.unary.f32(i32 13, float %2787)  ; Sin(value)
  %2789 = uitofp i32 %63 to float
  %2790 = uitofp i32 %64 to float
  %2791 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %2792 = extractvalue %dx.types.CBufRet.f32 %2791, 2
  %2793 = fmul fast float %2792, 0x40165A5B00000000
  %2794 = fadd fast float %2793, %2789
  %2795 = fadd fast float %2793, %2790
  %2796 = extractvalue %dx.types.CBufRet.f32 %2791, 0
  %2797 = fmul fast float %2796, 2.000000e+00
  %2798 = fadd fast float %2797, -1.000000e+00
  %2799 = fmul fast float %2798, %2794
  %2800 = fmul fast float %2798, %2795
  %2801 = call float @dx.op.dot2.f32(i32 54, float %2799, float %2800, float 0x3FB12E2860000000, float 0x3F77E8B200000000)  ; Dot2(ax,ay,bx,by)
  %2802 = call float @dx.op.unary.f32(i32 22, float %2801)  ; Frc(value)
  %2803 = fmul fast float %2802, 0x404A7DD040000000
  %2804 = call float @dx.op.unary.f32(i32 22, float %2803)  ; Frc(value)
  br i1 %2735, label %2805, label %2816, !dx.controlflow.hints !56

; <label>:2805                                    ; preds = %2734
  %2806 = icmp ne i32 %638, 0
  %2807 = fadd fast float %2788, 1.000000e+00
  %2808 = call float @dx.op.unary.f32(i32 23, float %2804)  ; Log(value)
  %2809 = fmul fast float %2808, %2807
  %2810 = call float @dx.op.unary.f32(i32 21, float %2809)  ; Exp(value)
  %2811 = and i1 %116, %2806
  %2812 = uitofp i1 %2811 to float
  %2813 = fmul fast float %2632, %2627
  %2814 = fmul fast float %2813, %2812
  %2815 = fmul fast float %2814, %2810
  br label %5478

; <label>:2816                                    ; preds = %2734
  %2817 = fcmp fast ole float %2632, 0.000000e+00
  %2818 = icmp eq i32 %640, 0
  %2819 = and i1 %116, %2818
  %2820 = or i1 %2817, %2819
  br i1 %2820, label %5478, label %2821, !dx.controlflow.hints !57

; <label>:2821                                    ; preds = %2816
  %2822 = fmul fast float %2759, 0x3FF921FB60000000
  %2823 = fadd fast float %2822, %2785
  %2824 = call float @dx.op.unary.f32(i32 13, float %2823)  ; Sin(value)
  %2825 = fmul fast float %2824, 7.500000e-01
  %2826 = fadd fast float %2825, 1.500000e+00
  %2827 = fmul fast float %2740, 0x3E8999CCE0000000
  %2828 = fmul fast float %2827, %59
  %2829 = fmul fast float %60, 0x3E8999CCE0000000
  %2830 = fmul fast float %2829, %2742
  %2831 = call float @dx.op.binary.f32(i32 35, float %2828, float 5.000000e-01)  ; FMax(a,b)
  %2832 = call float @dx.op.binary.f32(i32 35, float %2830, float 5.000000e-01)  ; FMax(a,b)
  %2833 = fmul fast float %2826, %2831
  %2834 = fmul fast float %2832, %2826
  %2835 = fsub fast float 1.000000e+00, %2765
  %2836 = fadd fast float %2835, %2804
  %2837 = fmul fast float %2836, 5.000000e+00
  %2838 = call float @dx.op.unary.f32(i32 28, float %2833)  ; Round_pi(value)
  %2839 = call float @dx.op.unary.f32(i32 28, float %2834)  ; Round_pi(value)
  %2840 = fptosi float %2838 to i32
  %2841 = fptosi float %2839 to i32
  %2842 = sub i32 %64, %2841
  %2843 = or i32 %2842, %63
  %2844 = icmp slt i32 %2843, 0
  %2845 = fptosi float %59 to i32
  %2846 = fptosi float %60 to i32
  %2847 = icmp sge i32 %63, %2845
  %2848 = icmp sge i32 %2842, %2846
  %2849 = or i1 %2847, %2848
  %2850 = or i1 %2844, %2849
  br i1 %2850, label %2864, label %2851, !dx.controlflow.hints !49

; <label>:2851                                    ; preds = %2821
  %2852 = lshr i32 %2842, 2
  %2853 = mul i32 %84, %2852
  %2854 = add i32 %102, %2853
  %2855 = shl i32 %2854, 2
  %2856 = shl i32 %2842, 3
  %2857 = and i32 %2856, 24
  %2858 = or i32 %2857, %93
  %2859 = shl i32 1, %2858
  %2860 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %2855, i32 undef)  ; BufferLoad(srv,index,wot)
  %2861 = extractvalue %dx.types.ResRet.i32 %2860, 0
  %2862 = and i32 %2861, %2859
  %2863 = icmp ne i32 %2862, 0
  br label %2864

; <label>:2864                                    ; preds = %2851, %2821
  %2865 = phi i1 [ %2863, %2851 ], [ false, %2821 ]
  %2866 = xor i1 %2865, true
  %2867 = uitofp i1 %2866 to float
  %2868 = fadd fast float %2867, %2837
  %2869 = add i32 %2841, %64
  %2870 = or i32 %2869, %63
  %2871 = icmp slt i32 %2870, 0
  %2872 = icmp sge i32 %2869, %2846
  %2873 = or i1 %2847, %2872
  %2874 = or i1 %2871, %2873
  br i1 %2874, label %2888, label %2875, !dx.controlflow.hints !49

; <label>:2875                                    ; preds = %2864
  %2876 = lshr i32 %2869, 2
  %2877 = mul i32 %84, %2876
  %2878 = add i32 %102, %2877
  %2879 = shl i32 %2878, 2
  %2880 = shl i32 %2869, 3
  %2881 = and i32 %2880, 24
  %2882 = or i32 %2881, %93
  %2883 = shl i32 1, %2882
  %2884 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %2879, i32 undef)  ; BufferLoad(srv,index,wot)
  %2885 = extractvalue %dx.types.ResRet.i32 %2884, 0
  %2886 = and i32 %2885, %2883
  %2887 = icmp ne i32 %2886, 0
  br label %2888

; <label>:2888                                    ; preds = %2875, %2864
  %2889 = phi i1 [ %2887, %2875 ], [ false, %2864 ]
  %2890 = xor i1 %2889, true
  %2891 = uitofp i1 %2890 to float
  %2892 = fadd fast float %2868, %2891
  %2893 = sub i32 %63, %2840
  %2894 = or i32 %2893, %64
  %2895 = icmp slt i32 %2894, 0
  %2896 = icmp sge i32 %2893, %2845
  %2897 = icmp sge i32 %64, %2846
  %2898 = or i1 %2896, %2897
  %2899 = or i1 %2895, %2898
  br i1 %2899, label %2913, label %2900, !dx.controlflow.hints !49

; <label>:2900                                    ; preds = %2888
  %2901 = lshr i32 %2893, 3
  %2902 = add i32 %81, %2901
  %2903 = add i32 %2902, %100
  %2904 = add i32 %2903, %85
  %2905 = shl i32 %2904, 2
  %2906 = and i32 %2893, 7
  %2907 = or i32 %2906, %92
  %2908 = shl i32 1, %2907
  %2909 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %2905, i32 undef)  ; BufferLoad(srv,index,wot)
  %2910 = extractvalue %dx.types.ResRet.i32 %2909, 0
  %2911 = and i32 %2910, %2908
  %2912 = icmp ne i32 %2911, 0
  br label %2913

; <label>:2913                                    ; preds = %2900, %2888
  %2914 = phi i1 [ %2912, %2900 ], [ false, %2888 ]
  %2915 = xor i1 %2914, true
  %2916 = uitofp i1 %2915 to float
  %2917 = fadd fast float %2892, %2916
  %2918 = add i32 %2840, %63
  %2919 = or i32 %2918, %64
  %2920 = icmp slt i32 %2919, 0
  %2921 = icmp sge i32 %2918, %2845
  %2922 = or i1 %2921, %2897
  %2923 = or i1 %2920, %2922
  br i1 %2923, label %2937, label %2924, !dx.controlflow.hints !49

; <label>:2924                                    ; preds = %2913
  %2925 = lshr i32 %2918, 3
  %2926 = add i32 %81, %2925
  %2927 = add i32 %2926, %100
  %2928 = add i32 %2927, %85
  %2929 = shl i32 %2928, 2
  %2930 = and i32 %2918, 7
  %2931 = or i32 %2930, %92
  %2932 = shl i32 1, %2931
  %2933 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %2929, i32 undef)  ; BufferLoad(srv,index,wot)
  %2934 = extractvalue %dx.types.ResRet.i32 %2933, 0
  %2935 = and i32 %2934, %2932
  %2936 = icmp ne i32 %2935, 0
  br label %2937

; <label>:2937                                    ; preds = %2924, %2913
  %2938 = phi i1 [ %2936, %2924 ], [ false, %2913 ]
  %2939 = xor i1 %2938, true
  %2940 = uitofp i1 %2939 to float
  %2941 = fadd fast float %2917, %2940
  %2942 = or i32 %2842, %2893
  %2943 = icmp slt i32 %2942, 0
  %2944 = or i1 %2896, %2848
  %2945 = or i1 %2943, %2944
  br i1 %2945, label %2963, label %2946, !dx.controlflow.hints !49

; <label>:2946                                    ; preds = %2937
  %2947 = lshr i32 %2842, 2
  %2948 = mul i32 %84, %2947
  %2949 = lshr i32 %2893, 3
  %2950 = add i32 %81, %2949
  %2951 = add i32 %2950, %100
  %2952 = add i32 %2951, %2948
  %2953 = shl i32 %2952, 2
  %2954 = shl i32 %2842, 3
  %2955 = and i32 %2954, 24
  %2956 = and i32 %2893, 7
  %2957 = or i32 %2955, %2956
  %2958 = shl i32 1, %2957
  %2959 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %2953, i32 undef)  ; BufferLoad(srv,index,wot)
  %2960 = extractvalue %dx.types.ResRet.i32 %2959, 0
  %2961 = and i32 %2960, %2958
  %2962 = icmp ne i32 %2961, 0
  br label %2963

; <label>:2963                                    ; preds = %2946, %2937
  %2964 = phi i1 [ %2962, %2946 ], [ false, %2937 ]
  %2965 = xor i1 %2964, true
  %2966 = uitofp i1 %2965 to float
  %2967 = fadd fast float %2941, %2966
  %2968 = or i32 %2842, %2918
  %2969 = icmp slt i32 %2968, 0
  %2970 = or i1 %2921, %2848
  %2971 = or i1 %2969, %2970
  br i1 %2971, label %2989, label %2972, !dx.controlflow.hints !49

; <label>:2972                                    ; preds = %2963
  %2973 = lshr i32 %2842, 2
  %2974 = mul i32 %84, %2973
  %2975 = lshr i32 %2918, 3
  %2976 = add i32 %81, %2975
  %2977 = add i32 %2976, %100
  %2978 = add i32 %2977, %2974
  %2979 = shl i32 %2978, 2
  %2980 = shl i32 %2842, 3
  %2981 = and i32 %2980, 24
  %2982 = and i32 %2918, 7
  %2983 = or i32 %2981, %2982
  %2984 = shl i32 1, %2983
  %2985 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %2979, i32 undef)  ; BufferLoad(srv,index,wot)
  %2986 = extractvalue %dx.types.ResRet.i32 %2985, 0
  %2987 = and i32 %2986, %2984
  %2988 = icmp ne i32 %2987, 0
  br label %2989

; <label>:2989                                    ; preds = %2972, %2963
  %2990 = phi i1 [ %2988, %2972 ], [ false, %2963 ]
  %2991 = xor i1 %2990, true
  %2992 = uitofp i1 %2991 to float
  %2993 = fadd fast float %2967, %2992
  %2994 = or i32 %2869, %2893
  %2995 = icmp slt i32 %2994, 0
  %2996 = or i1 %2896, %2872
  %2997 = or i1 %2995, %2996
  br i1 %2997, label %3015, label %2998, !dx.controlflow.hints !49

; <label>:2998                                    ; preds = %2989
  %2999 = lshr i32 %2869, 2
  %3000 = mul i32 %84, %2999
  %3001 = lshr i32 %2893, 3
  %3002 = add i32 %81, %3001
  %3003 = add i32 %3002, %100
  %3004 = add i32 %3003, %3000
  %3005 = shl i32 %3004, 2
  %3006 = shl i32 %2869, 3
  %3007 = and i32 %3006, 24
  %3008 = and i32 %2893, 7
  %3009 = or i32 %3007, %3008
  %3010 = shl i32 1, %3009
  %3011 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %3005, i32 undef)  ; BufferLoad(srv,index,wot)
  %3012 = extractvalue %dx.types.ResRet.i32 %3011, 0
  %3013 = and i32 %3012, %3010
  %3014 = icmp ne i32 %3013, 0
  br label %3015

; <label>:3015                                    ; preds = %2998, %2989
  %3016 = phi i1 [ %3014, %2998 ], [ false, %2989 ]
  %3017 = xor i1 %3016, true
  %3018 = uitofp i1 %3017 to float
  %3019 = fadd fast float %2993, %3018
  %3020 = or i32 %2869, %2918
  %3021 = icmp slt i32 %3020, 0
  %3022 = or i1 %2921, %2872
  %3023 = or i1 %3021, %3022
  br i1 %3023, label %3041, label %3024, !dx.controlflow.hints !49

; <label>:3024                                    ; preds = %3015
  %3025 = lshr i32 %2869, 2
  %3026 = mul i32 %84, %3025
  %3027 = lshr i32 %2918, 3
  %3028 = add i32 %81, %3027
  %3029 = add i32 %3028, %100
  %3030 = add i32 %3029, %3026
  %3031 = shl i32 %3030, 2
  %3032 = shl i32 %2869, 3
  %3033 = and i32 %3032, 24
  %3034 = and i32 %2918, 7
  %3035 = or i32 %3033, %3034
  %3036 = shl i32 1, %3035
  %3037 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %3031, i32 undef)  ; BufferLoad(srv,index,wot)
  %3038 = extractvalue %dx.types.ResRet.i32 %3037, 0
  %3039 = and i32 %3038, %3036
  %3040 = icmp ne i32 %3039, 0
  br label %3041

; <label>:3041                                    ; preds = %3024, %3015
  %3042 = phi i1 [ %3040, %3024 ], [ false, %3015 ]
  %3043 = xor i1 %3042, true
  %3044 = uitofp i1 %3043 to float
  %3045 = fadd fast float %3019, %3044
  %3046 = fmul fast float %2833, 2.000000e+00
  %3047 = fmul fast float %2834, 2.000000e+00
  %3048 = call float @dx.op.unary.f32(i32 28, float %3046)  ; Round_pi(value)
  %3049 = call float @dx.op.unary.f32(i32 28, float %3047)  ; Round_pi(value)
  %3050 = fptosi float %3048 to i32
  %3051 = fptosi float %3049 to i32
  %3052 = sub i32 %64, %3051
  %3053 = or i32 %3052, %63
  %3054 = icmp slt i32 %3053, 0
  %3055 = icmp sge i32 %3052, %2846
  %3056 = or i1 %2847, %3055
  %3057 = or i1 %3054, %3056
  br i1 %3057, label %3071, label %3058, !dx.controlflow.hints !49

; <label>:3058                                    ; preds = %3041
  %3059 = lshr i32 %3052, 2
  %3060 = mul i32 %84, %3059
  %3061 = add i32 %102, %3060
  %3062 = shl i32 %3061, 2
  %3063 = shl i32 %3052, 3
  %3064 = and i32 %3063, 24
  %3065 = or i32 %3064, %93
  %3066 = shl i32 1, %3065
  %3067 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %3062, i32 undef)  ; BufferLoad(srv,index,wot)
  %3068 = extractvalue %dx.types.ResRet.i32 %3067, 0
  %3069 = and i32 %3068, %3066
  %3070 = icmp ne i32 %3069, 0
  br label %3071

; <label>:3071                                    ; preds = %3058, %3041
  %3072 = phi i1 [ %3070, %3058 ], [ false, %3041 ]
  %3073 = xor i1 %3072, true
  %3074 = uitofp i1 %3073 to float
  %3075 = fadd fast float %3045, %3074
  %3076 = add i32 %3051, %64
  %3077 = or i32 %3076, %63
  %3078 = icmp slt i32 %3077, 0
  %3079 = icmp sge i32 %3076, %2846
  %3080 = or i1 %2847, %3079
  %3081 = or i1 %3078, %3080
  br i1 %3081, label %3095, label %3082, !dx.controlflow.hints !49

; <label>:3082                                    ; preds = %3071
  %3083 = lshr i32 %3076, 2
  %3084 = mul i32 %84, %3083
  %3085 = add i32 %102, %3084
  %3086 = shl i32 %3085, 2
  %3087 = shl i32 %3076, 3
  %3088 = and i32 %3087, 24
  %3089 = or i32 %3088, %93
  %3090 = shl i32 1, %3089
  %3091 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %3086, i32 undef)  ; BufferLoad(srv,index,wot)
  %3092 = extractvalue %dx.types.ResRet.i32 %3091, 0
  %3093 = and i32 %3092, %3090
  %3094 = icmp ne i32 %3093, 0
  br label %3095

; <label>:3095                                    ; preds = %3082, %3071
  %3096 = phi i1 [ %3094, %3082 ], [ false, %3071 ]
  %3097 = xor i1 %3096, true
  %3098 = uitofp i1 %3097 to float
  %3099 = fadd fast float %3075, %3098
  %3100 = sub i32 %63, %3050
  %3101 = or i32 %3100, %64
  %3102 = icmp slt i32 %3101, 0
  %3103 = icmp sge i32 %3100, %2845
  %3104 = or i1 %3103, %2897
  %3105 = or i1 %3102, %3104
  br i1 %3105, label %3119, label %3106, !dx.controlflow.hints !49

; <label>:3106                                    ; preds = %3095
  %3107 = lshr i32 %3100, 3
  %3108 = add i32 %81, %3107
  %3109 = add i32 %3108, %100
  %3110 = add i32 %3109, %85
  %3111 = shl i32 %3110, 2
  %3112 = and i32 %3100, 7
  %3113 = or i32 %3112, %92
  %3114 = shl i32 1, %3113
  %3115 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %3111, i32 undef)  ; BufferLoad(srv,index,wot)
  %3116 = extractvalue %dx.types.ResRet.i32 %3115, 0
  %3117 = and i32 %3116, %3114
  %3118 = icmp ne i32 %3117, 0
  br label %3119

; <label>:3119                                    ; preds = %3106, %3095
  %3120 = phi i1 [ %3118, %3106 ], [ false, %3095 ]
  %3121 = xor i1 %3120, true
  %3122 = uitofp i1 %3121 to float
  %3123 = fadd fast float %3099, %3122
  %3124 = add i32 %3050, %63
  %3125 = or i32 %3124, %64
  %3126 = icmp slt i32 %3125, 0
  %3127 = icmp sge i32 %3124, %2845
  %3128 = or i1 %3127, %2897
  %3129 = or i1 %3126, %3128
  br i1 %3129, label %3143, label %3130, !dx.controlflow.hints !49

; <label>:3130                                    ; preds = %3119
  %3131 = lshr i32 %3124, 3
  %3132 = add i32 %81, %3131
  %3133 = add i32 %3132, %100
  %3134 = add i32 %3133, %85
  %3135 = shl i32 %3134, 2
  %3136 = and i32 %3124, 7
  %3137 = or i32 %3136, %92
  %3138 = shl i32 1, %3137
  %3139 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %3135, i32 undef)  ; BufferLoad(srv,index,wot)
  %3140 = extractvalue %dx.types.ResRet.i32 %3139, 0
  %3141 = and i32 %3140, %3138
  %3142 = icmp ne i32 %3141, 0
  br label %3143

; <label>:3143                                    ; preds = %3130, %3119
  %3144 = phi i1 [ %3142, %3130 ], [ false, %3119 ]
  %3145 = xor i1 %3144, true
  %3146 = uitofp i1 %3145 to float
  %3147 = fadd fast float %3123, %3146
  %3148 = or i32 %3052, %3100
  %3149 = icmp slt i32 %3148, 0
  %3150 = or i1 %3103, %3055
  %3151 = or i1 %3149, %3150
  br i1 %3151, label %3169, label %3152, !dx.controlflow.hints !49

; <label>:3152                                    ; preds = %3143
  %3153 = lshr i32 %3052, 2
  %3154 = mul i32 %84, %3153
  %3155 = lshr i32 %3100, 3
  %3156 = add i32 %81, %3155
  %3157 = add i32 %3156, %100
  %3158 = add i32 %3157, %3154
  %3159 = shl i32 %3158, 2
  %3160 = shl i32 %3052, 3
  %3161 = and i32 %3160, 24
  %3162 = and i32 %3100, 7
  %3163 = or i32 %3161, %3162
  %3164 = shl i32 1, %3163
  %3165 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %3159, i32 undef)  ; BufferLoad(srv,index,wot)
  %3166 = extractvalue %dx.types.ResRet.i32 %3165, 0
  %3167 = and i32 %3166, %3164
  %3168 = icmp ne i32 %3167, 0
  br label %3169

; <label>:3169                                    ; preds = %3152, %3143
  %3170 = phi i1 [ %3168, %3152 ], [ false, %3143 ]
  %3171 = xor i1 %3170, true
  %3172 = uitofp i1 %3171 to float
  %3173 = fadd fast float %3147, %3172
  %3174 = or i32 %3052, %3124
  %3175 = icmp slt i32 %3174, 0
  %3176 = or i1 %3127, %3055
  %3177 = or i1 %3175, %3176
  br i1 %3177, label %3195, label %3178, !dx.controlflow.hints !49

; <label>:3178                                    ; preds = %3169
  %3179 = lshr i32 %3052, 2
  %3180 = mul i32 %84, %3179
  %3181 = lshr i32 %3124, 3
  %3182 = add i32 %81, %3181
  %3183 = add i32 %3182, %100
  %3184 = add i32 %3183, %3180
  %3185 = shl i32 %3184, 2
  %3186 = shl i32 %3052, 3
  %3187 = and i32 %3186, 24
  %3188 = and i32 %3124, 7
  %3189 = or i32 %3187, %3188
  %3190 = shl i32 1, %3189
  %3191 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %3185, i32 undef)  ; BufferLoad(srv,index,wot)
  %3192 = extractvalue %dx.types.ResRet.i32 %3191, 0
  %3193 = and i32 %3192, %3190
  %3194 = icmp ne i32 %3193, 0
  br label %3195

; <label>:3195                                    ; preds = %3178, %3169
  %3196 = phi i1 [ %3194, %3178 ], [ false, %3169 ]
  %3197 = xor i1 %3196, true
  %3198 = uitofp i1 %3197 to float
  %3199 = fadd fast float %3173, %3198
  %3200 = or i32 %3076, %3100
  %3201 = icmp slt i32 %3200, 0
  %3202 = or i1 %3103, %3079
  %3203 = or i1 %3201, %3202
  br i1 %3203, label %3221, label %3204, !dx.controlflow.hints !49

; <label>:3204                                    ; preds = %3195
  %3205 = lshr i32 %3076, 2
  %3206 = mul i32 %84, %3205
  %3207 = lshr i32 %3100, 3
  %3208 = add i32 %81, %3207
  %3209 = add i32 %3208, %100
  %3210 = add i32 %3209, %3206
  %3211 = shl i32 %3210, 2
  %3212 = shl i32 %3076, 3
  %3213 = and i32 %3212, 24
  %3214 = and i32 %3100, 7
  %3215 = or i32 %3213, %3214
  %3216 = shl i32 1, %3215
  %3217 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %3211, i32 undef)  ; BufferLoad(srv,index,wot)
  %3218 = extractvalue %dx.types.ResRet.i32 %3217, 0
  %3219 = and i32 %3218, %3216
  %3220 = icmp ne i32 %3219, 0
  br label %3221

; <label>:3221                                    ; preds = %3204, %3195
  %3222 = phi i1 [ %3220, %3204 ], [ false, %3195 ]
  %3223 = xor i1 %3222, true
  %3224 = uitofp i1 %3223 to float
  %3225 = fadd fast float %3199, %3224
  %3226 = or i32 %3076, %3124
  %3227 = icmp slt i32 %3226, 0
  %3228 = or i1 %3127, %3079
  %3229 = or i1 %3227, %3228
  br i1 %3229, label %3247, label %3230, !dx.controlflow.hints !49

; <label>:3230                                    ; preds = %3221
  %3231 = lshr i32 %3076, 2
  %3232 = mul i32 %84, %3231
  %3233 = lshr i32 %3124, 3
  %3234 = add i32 %81, %3233
  %3235 = add i32 %3234, %100
  %3236 = add i32 %3235, %3232
  %3237 = shl i32 %3236, 2
  %3238 = shl i32 %3076, 3
  %3239 = and i32 %3238, 24
  %3240 = and i32 %3124, 7
  %3241 = or i32 %3239, %3240
  %3242 = shl i32 1, %3241
  %3243 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %3237, i32 undef)  ; BufferLoad(srv,index,wot)
  %3244 = extractvalue %dx.types.ResRet.i32 %3243, 0
  %3245 = and i32 %3244, %3242
  %3246 = icmp ne i32 %3245, 0
  br label %3247

; <label>:3247                                    ; preds = %3230, %3221
  %3248 = phi i1 [ %3246, %3230 ], [ false, %3221 ]
  %3249 = xor i1 %3248, true
  %3250 = uitofp i1 %3249 to float
  %3251 = fadd fast float %3225, %3250
  %3252 = fmul fast float %2833, 3.000000e+00
  %3253 = fmul fast float %2834, 3.000000e+00
  %3254 = call float @dx.op.unary.f32(i32 28, float %3252)  ; Round_pi(value)
  %3255 = call float @dx.op.unary.f32(i32 28, float %3253)  ; Round_pi(value)
  %3256 = fptosi float %3254 to i32
  %3257 = fptosi float %3255 to i32
  %3258 = sub i32 %64, %3257
  %3259 = or i32 %3258, %63
  %3260 = icmp slt i32 %3259, 0
  %3261 = icmp sge i32 %3258, %2846
  %3262 = or i1 %2847, %3261
  %3263 = or i1 %3260, %3262
  br i1 %3263, label %3277, label %3264, !dx.controlflow.hints !49

; <label>:3264                                    ; preds = %3247
  %3265 = lshr i32 %3258, 2
  %3266 = mul i32 %84, %3265
  %3267 = add i32 %102, %3266
  %3268 = shl i32 %3267, 2
  %3269 = shl i32 %3258, 3
  %3270 = and i32 %3269, 24
  %3271 = or i32 %3270, %93
  %3272 = shl i32 1, %3271
  %3273 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %3268, i32 undef)  ; BufferLoad(srv,index,wot)
  %3274 = extractvalue %dx.types.ResRet.i32 %3273, 0
  %3275 = and i32 %3274, %3272
  %3276 = icmp ne i32 %3275, 0
  br label %3277

; <label>:3277                                    ; preds = %3264, %3247
  %3278 = phi i1 [ %3276, %3264 ], [ false, %3247 ]
  %3279 = xor i1 %3278, true
  %3280 = uitofp i1 %3279 to float
  %3281 = fadd fast float %3251, %3280
  %3282 = add i32 %3257, %64
  %3283 = or i32 %3282, %63
  %3284 = icmp slt i32 %3283, 0
  %3285 = icmp sge i32 %3282, %2846
  %3286 = or i1 %2847, %3285
  %3287 = or i1 %3284, %3286
  br i1 %3287, label %3301, label %3288, !dx.controlflow.hints !49

; <label>:3288                                    ; preds = %3277
  %3289 = lshr i32 %3282, 2
  %3290 = mul i32 %84, %3289
  %3291 = add i32 %102, %3290
  %3292 = shl i32 %3291, 2
  %3293 = shl i32 %3282, 3
  %3294 = and i32 %3293, 24
  %3295 = or i32 %3294, %93
  %3296 = shl i32 1, %3295
  %3297 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %3292, i32 undef)  ; BufferLoad(srv,index,wot)
  %3298 = extractvalue %dx.types.ResRet.i32 %3297, 0
  %3299 = and i32 %3298, %3296
  %3300 = icmp ne i32 %3299, 0
  br label %3301

; <label>:3301                                    ; preds = %3288, %3277
  %3302 = phi i1 [ %3300, %3288 ], [ false, %3277 ]
  %3303 = xor i1 %3302, true
  %3304 = uitofp i1 %3303 to float
  %3305 = fadd fast float %3281, %3304
  %3306 = sub i32 %63, %3256
  %3307 = or i32 %3306, %64
  %3308 = icmp slt i32 %3307, 0
  %3309 = icmp sge i32 %3306, %2845
  %3310 = or i1 %3309, %2897
  %3311 = or i1 %3308, %3310
  br i1 %3311, label %3325, label %3312, !dx.controlflow.hints !49

; <label>:3312                                    ; preds = %3301
  %3313 = lshr i32 %3306, 3
  %3314 = add i32 %81, %3313
  %3315 = add i32 %3314, %100
  %3316 = add i32 %3315, %85
  %3317 = shl i32 %3316, 2
  %3318 = and i32 %3306, 7
  %3319 = or i32 %3318, %92
  %3320 = shl i32 1, %3319
  %3321 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %3317, i32 undef)  ; BufferLoad(srv,index,wot)
  %3322 = extractvalue %dx.types.ResRet.i32 %3321, 0
  %3323 = and i32 %3322, %3320
  %3324 = icmp ne i32 %3323, 0
  br label %3325

; <label>:3325                                    ; preds = %3312, %3301
  %3326 = phi i1 [ %3324, %3312 ], [ false, %3301 ]
  %3327 = xor i1 %3326, true
  %3328 = uitofp i1 %3327 to float
  %3329 = fadd fast float %3305, %3328
  %3330 = add i32 %3256, %63
  %3331 = or i32 %3330, %64
  %3332 = icmp slt i32 %3331, 0
  %3333 = icmp sge i32 %3330, %2845
  %3334 = or i1 %3333, %2897
  %3335 = or i1 %3332, %3334
  br i1 %3335, label %3349, label %3336, !dx.controlflow.hints !49

; <label>:3336                                    ; preds = %3325
  %3337 = lshr i32 %3330, 3
  %3338 = add i32 %81, %3337
  %3339 = add i32 %3338, %100
  %3340 = add i32 %3339, %85
  %3341 = shl i32 %3340, 2
  %3342 = and i32 %3330, 7
  %3343 = or i32 %3342, %92
  %3344 = shl i32 1, %3343
  %3345 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %3341, i32 undef)  ; BufferLoad(srv,index,wot)
  %3346 = extractvalue %dx.types.ResRet.i32 %3345, 0
  %3347 = and i32 %3346, %3344
  %3348 = icmp ne i32 %3347, 0
  br label %3349

; <label>:3349                                    ; preds = %3336, %3325
  %3350 = phi i1 [ %3348, %3336 ], [ false, %3325 ]
  %3351 = xor i1 %3350, true
  %3352 = uitofp i1 %3351 to float
  %3353 = fadd fast float %3329, %3352
  %3354 = or i32 %3258, %3306
  %3355 = icmp slt i32 %3354, 0
  %3356 = or i1 %3309, %3261
  %3357 = or i1 %3355, %3356
  br i1 %3357, label %3375, label %3358, !dx.controlflow.hints !49

; <label>:3358                                    ; preds = %3349
  %3359 = lshr i32 %3258, 2
  %3360 = mul i32 %84, %3359
  %3361 = lshr i32 %3306, 3
  %3362 = add i32 %81, %3361
  %3363 = add i32 %3362, %100
  %3364 = add i32 %3363, %3360
  %3365 = shl i32 %3364, 2
  %3366 = shl i32 %3258, 3
  %3367 = and i32 %3366, 24
  %3368 = and i32 %3306, 7
  %3369 = or i32 %3367, %3368
  %3370 = shl i32 1, %3369
  %3371 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %3365, i32 undef)  ; BufferLoad(srv,index,wot)
  %3372 = extractvalue %dx.types.ResRet.i32 %3371, 0
  %3373 = and i32 %3372, %3370
  %3374 = icmp ne i32 %3373, 0
  br label %3375

; <label>:3375                                    ; preds = %3358, %3349
  %3376 = phi i1 [ %3374, %3358 ], [ false, %3349 ]
  %3377 = xor i1 %3376, true
  %3378 = uitofp i1 %3377 to float
  %3379 = fadd fast float %3353, %3378
  %3380 = or i32 %3258, %3330
  %3381 = icmp slt i32 %3380, 0
  %3382 = or i1 %3333, %3261
  %3383 = or i1 %3381, %3382
  br i1 %3383, label %3401, label %3384, !dx.controlflow.hints !49

; <label>:3384                                    ; preds = %3375
  %3385 = lshr i32 %3258, 2
  %3386 = mul i32 %84, %3385
  %3387 = lshr i32 %3330, 3
  %3388 = add i32 %81, %3387
  %3389 = add i32 %3388, %100
  %3390 = add i32 %3389, %3386
  %3391 = shl i32 %3390, 2
  %3392 = shl i32 %3258, 3
  %3393 = and i32 %3392, 24
  %3394 = and i32 %3330, 7
  %3395 = or i32 %3393, %3394
  %3396 = shl i32 1, %3395
  %3397 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %3391, i32 undef)  ; BufferLoad(srv,index,wot)
  %3398 = extractvalue %dx.types.ResRet.i32 %3397, 0
  %3399 = and i32 %3398, %3396
  %3400 = icmp ne i32 %3399, 0
  br label %3401

; <label>:3401                                    ; preds = %3384, %3375
  %3402 = phi i1 [ %3400, %3384 ], [ false, %3375 ]
  %3403 = xor i1 %3402, true
  %3404 = uitofp i1 %3403 to float
  %3405 = fadd fast float %3379, %3404
  %3406 = or i32 %3282, %3306
  %3407 = icmp slt i32 %3406, 0
  %3408 = or i1 %3309, %3285
  %3409 = or i1 %3407, %3408
  br i1 %3409, label %3427, label %3410, !dx.controlflow.hints !49

; <label>:3410                                    ; preds = %3401
  %3411 = lshr i32 %3282, 2
  %3412 = mul i32 %84, %3411
  %3413 = lshr i32 %3306, 3
  %3414 = add i32 %81, %3413
  %3415 = add i32 %3414, %100
  %3416 = add i32 %3415, %3412
  %3417 = shl i32 %3416, 2
  %3418 = shl i32 %3282, 3
  %3419 = and i32 %3418, 24
  %3420 = and i32 %3306, 7
  %3421 = or i32 %3419, %3420
  %3422 = shl i32 1, %3421
  %3423 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %3417, i32 undef)  ; BufferLoad(srv,index,wot)
  %3424 = extractvalue %dx.types.ResRet.i32 %3423, 0
  %3425 = and i32 %3424, %3422
  %3426 = icmp ne i32 %3425, 0
  br label %3427

; <label>:3427                                    ; preds = %3410, %3401
  %3428 = phi i1 [ %3426, %3410 ], [ false, %3401 ]
  %3429 = xor i1 %3428, true
  %3430 = uitofp i1 %3429 to float
  %3431 = fadd fast float %3405, %3430
  %3432 = or i32 %3282, %3330
  %3433 = icmp slt i32 %3432, 0
  %3434 = or i1 %3333, %3285
  %3435 = or i1 %3433, %3434
  br i1 %3435, label %3453, label %3436, !dx.controlflow.hints !49

; <label>:3436                                    ; preds = %3427
  %3437 = lshr i32 %3282, 2
  %3438 = mul i32 %84, %3437
  %3439 = lshr i32 %3330, 3
  %3440 = add i32 %81, %3439
  %3441 = add i32 %3440, %100
  %3442 = add i32 %3441, %3438
  %3443 = shl i32 %3442, 2
  %3444 = shl i32 %3282, 3
  %3445 = and i32 %3444, 24
  %3446 = and i32 %3330, 7
  %3447 = or i32 %3445, %3446
  %3448 = shl i32 1, %3447
  %3449 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %3443, i32 undef)  ; BufferLoad(srv,index,wot)
  %3450 = extractvalue %dx.types.ResRet.i32 %3449, 0
  %3451 = and i32 %3450, %3448
  %3452 = icmp ne i32 %3451, 0
  br label %3453

; <label>:3453                                    ; preds = %3436, %3427
  %3454 = phi i1 [ %3452, %3436 ], [ false, %3427 ]
  %3455 = xor i1 %3454, true
  %3456 = uitofp i1 %3455 to float
  %3457 = fadd fast float %3431, %3456
  %3458 = fmul fast float %2833, 4.000000e+00
  %3459 = fmul fast float %2834, 4.000000e+00
  %3460 = call float @dx.op.unary.f32(i32 28, float %3458)  ; Round_pi(value)
  %3461 = call float @dx.op.unary.f32(i32 28, float %3459)  ; Round_pi(value)
  %3462 = fptosi float %3460 to i32
  %3463 = fptosi float %3461 to i32
  %3464 = sub i32 %64, %3463
  %3465 = or i32 %3464, %63
  %3466 = icmp slt i32 %3465, 0
  %3467 = icmp sge i32 %3464, %2846
  %3468 = or i1 %2847, %3467
  %3469 = or i1 %3466, %3468
  br i1 %3469, label %3483, label %3470, !dx.controlflow.hints !49

; <label>:3470                                    ; preds = %3453
  %3471 = lshr i32 %3464, 2
  %3472 = mul i32 %84, %3471
  %3473 = add i32 %102, %3472
  %3474 = shl i32 %3473, 2
  %3475 = shl i32 %3464, 3
  %3476 = and i32 %3475, 24
  %3477 = or i32 %3476, %93
  %3478 = shl i32 1, %3477
  %3479 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %3474, i32 undef)  ; BufferLoad(srv,index,wot)
  %3480 = extractvalue %dx.types.ResRet.i32 %3479, 0
  %3481 = and i32 %3480, %3478
  %3482 = icmp ne i32 %3481, 0
  br label %3483

; <label>:3483                                    ; preds = %3470, %3453
  %3484 = phi i1 [ %3482, %3470 ], [ false, %3453 ]
  %3485 = xor i1 %3484, true
  %3486 = uitofp i1 %3485 to float
  %3487 = fadd fast float %3457, %3486
  %3488 = add i32 %3463, %64
  %3489 = or i32 %3488, %63
  %3490 = icmp slt i32 %3489, 0
  %3491 = icmp sge i32 %3488, %2846
  %3492 = or i1 %2847, %3491
  %3493 = or i1 %3490, %3492
  br i1 %3493, label %3507, label %3494, !dx.controlflow.hints !49

; <label>:3494                                    ; preds = %3483
  %3495 = lshr i32 %3488, 2
  %3496 = mul i32 %84, %3495
  %3497 = add i32 %102, %3496
  %3498 = shl i32 %3497, 2
  %3499 = shl i32 %3488, 3
  %3500 = and i32 %3499, 24
  %3501 = or i32 %3500, %93
  %3502 = shl i32 1, %3501
  %3503 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %3498, i32 undef)  ; BufferLoad(srv,index,wot)
  %3504 = extractvalue %dx.types.ResRet.i32 %3503, 0
  %3505 = and i32 %3504, %3502
  %3506 = icmp ne i32 %3505, 0
  br label %3507

; <label>:3507                                    ; preds = %3494, %3483
  %3508 = phi i1 [ %3506, %3494 ], [ false, %3483 ]
  %3509 = xor i1 %3508, true
  %3510 = uitofp i1 %3509 to float
  %3511 = fadd fast float %3487, %3510
  %3512 = sub i32 %63, %3462
  %3513 = or i32 %3512, %64
  %3514 = icmp slt i32 %3513, 0
  %3515 = icmp sge i32 %3512, %2845
  %3516 = or i1 %3515, %2897
  %3517 = or i1 %3514, %3516
  br i1 %3517, label %3531, label %3518, !dx.controlflow.hints !49

; <label>:3518                                    ; preds = %3507
  %3519 = lshr i32 %3512, 3
  %3520 = add i32 %81, %3519
  %3521 = add i32 %3520, %100
  %3522 = add i32 %3521, %85
  %3523 = shl i32 %3522, 2
  %3524 = and i32 %3512, 7
  %3525 = or i32 %3524, %92
  %3526 = shl i32 1, %3525
  %3527 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %3523, i32 undef)  ; BufferLoad(srv,index,wot)
  %3528 = extractvalue %dx.types.ResRet.i32 %3527, 0
  %3529 = and i32 %3528, %3526
  %3530 = icmp ne i32 %3529, 0
  br label %3531

; <label>:3531                                    ; preds = %3518, %3507
  %3532 = phi i1 [ %3530, %3518 ], [ false, %3507 ]
  %3533 = xor i1 %3532, true
  %3534 = uitofp i1 %3533 to float
  %3535 = fadd fast float %3511, %3534
  %3536 = add i32 %3462, %63
  %3537 = or i32 %3536, %64
  %3538 = icmp slt i32 %3537, 0
  %3539 = icmp sge i32 %3536, %2845
  %3540 = or i1 %3539, %2897
  %3541 = or i1 %3538, %3540
  br i1 %3541, label %3555, label %3542, !dx.controlflow.hints !49

; <label>:3542                                    ; preds = %3531
  %3543 = lshr i32 %3536, 3
  %3544 = add i32 %81, %3543
  %3545 = add i32 %3544, %100
  %3546 = add i32 %3545, %85
  %3547 = shl i32 %3546, 2
  %3548 = and i32 %3536, 7
  %3549 = or i32 %3548, %92
  %3550 = shl i32 1, %3549
  %3551 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %3547, i32 undef)  ; BufferLoad(srv,index,wot)
  %3552 = extractvalue %dx.types.ResRet.i32 %3551, 0
  %3553 = and i32 %3552, %3550
  %3554 = icmp ne i32 %3553, 0
  br label %3555

; <label>:3555                                    ; preds = %3542, %3531
  %3556 = phi i1 [ %3554, %3542 ], [ false, %3531 ]
  %3557 = xor i1 %3556, true
  %3558 = uitofp i1 %3557 to float
  %3559 = fadd fast float %3535, %3558
  %3560 = or i32 %3464, %3512
  %3561 = icmp slt i32 %3560, 0
  %3562 = or i1 %3515, %3467
  %3563 = or i1 %3561, %3562
  br i1 %3563, label %3581, label %3564, !dx.controlflow.hints !49

; <label>:3564                                    ; preds = %3555
  %3565 = lshr i32 %3464, 2
  %3566 = mul i32 %84, %3565
  %3567 = lshr i32 %3512, 3
  %3568 = add i32 %81, %3567
  %3569 = add i32 %3568, %100
  %3570 = add i32 %3569, %3566
  %3571 = shl i32 %3570, 2
  %3572 = shl i32 %3464, 3
  %3573 = and i32 %3572, 24
  %3574 = and i32 %3512, 7
  %3575 = or i32 %3573, %3574
  %3576 = shl i32 1, %3575
  %3577 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %3571, i32 undef)  ; BufferLoad(srv,index,wot)
  %3578 = extractvalue %dx.types.ResRet.i32 %3577, 0
  %3579 = and i32 %3578, %3576
  %3580 = icmp ne i32 %3579, 0
  br label %3581

; <label>:3581                                    ; preds = %3564, %3555
  %3582 = phi i1 [ %3580, %3564 ], [ false, %3555 ]
  %3583 = xor i1 %3582, true
  %3584 = uitofp i1 %3583 to float
  %3585 = fadd fast float %3559, %3584
  %3586 = or i32 %3464, %3536
  %3587 = icmp slt i32 %3586, 0
  %3588 = or i1 %3539, %3467
  %3589 = or i1 %3587, %3588
  br i1 %3589, label %3607, label %3590, !dx.controlflow.hints !49

; <label>:3590                                    ; preds = %3581
  %3591 = lshr i32 %3464, 2
  %3592 = mul i32 %84, %3591
  %3593 = lshr i32 %3536, 3
  %3594 = add i32 %81, %3593
  %3595 = add i32 %3594, %100
  %3596 = add i32 %3595, %3592
  %3597 = shl i32 %3596, 2
  %3598 = shl i32 %3464, 3
  %3599 = and i32 %3598, 24
  %3600 = and i32 %3536, 7
  %3601 = or i32 %3599, %3600
  %3602 = shl i32 1, %3601
  %3603 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %3597, i32 undef)  ; BufferLoad(srv,index,wot)
  %3604 = extractvalue %dx.types.ResRet.i32 %3603, 0
  %3605 = and i32 %3604, %3602
  %3606 = icmp ne i32 %3605, 0
  br label %3607

; <label>:3607                                    ; preds = %3590, %3581
  %3608 = phi i1 [ %3606, %3590 ], [ false, %3581 ]
  %3609 = xor i1 %3608, true
  %3610 = uitofp i1 %3609 to float
  %3611 = fadd fast float %3585, %3610
  %3612 = or i32 %3488, %3512
  %3613 = icmp slt i32 %3612, 0
  %3614 = or i1 %3515, %3491
  %3615 = or i1 %3613, %3614
  br i1 %3615, label %3633, label %3616, !dx.controlflow.hints !49

; <label>:3616                                    ; preds = %3607
  %3617 = lshr i32 %3488, 2
  %3618 = mul i32 %84, %3617
  %3619 = lshr i32 %3512, 3
  %3620 = add i32 %81, %3619
  %3621 = add i32 %3620, %100
  %3622 = add i32 %3621, %3618
  %3623 = shl i32 %3622, 2
  %3624 = shl i32 %3488, 3
  %3625 = and i32 %3624, 24
  %3626 = and i32 %3512, 7
  %3627 = or i32 %3625, %3626
  %3628 = shl i32 1, %3627
  %3629 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %3623, i32 undef)  ; BufferLoad(srv,index,wot)
  %3630 = extractvalue %dx.types.ResRet.i32 %3629, 0
  %3631 = and i32 %3630, %3628
  %3632 = icmp ne i32 %3631, 0
  br label %3633

; <label>:3633                                    ; preds = %3616, %3607
  %3634 = phi i1 [ %3632, %3616 ], [ false, %3607 ]
  %3635 = xor i1 %3634, true
  %3636 = uitofp i1 %3635 to float
  %3637 = fadd fast float %3611, %3636
  %3638 = or i32 %3488, %3536
  %3639 = icmp slt i32 %3638, 0
  %3640 = or i1 %3539, %3491
  %3641 = or i1 %3639, %3640
  br i1 %3641, label %3659, label %3642, !dx.controlflow.hints !49

; <label>:3642                                    ; preds = %3633
  %3643 = lshr i32 %3488, 2
  %3644 = mul i32 %84, %3643
  %3645 = lshr i32 %3536, 3
  %3646 = add i32 %81, %3645
  %3647 = add i32 %3646, %100
  %3648 = add i32 %3647, %3644
  %3649 = shl i32 %3648, 2
  %3650 = shl i32 %3488, 3
  %3651 = and i32 %3650, 24
  %3652 = and i32 %3536, 7
  %3653 = or i32 %3651, %3652
  %3654 = shl i32 1, %3653
  %3655 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %3649, i32 undef)  ; BufferLoad(srv,index,wot)
  %3656 = extractvalue %dx.types.ResRet.i32 %3655, 0
  %3657 = and i32 %3656, %3654
  %3658 = icmp ne i32 %3657, 0
  br label %3659

; <label>:3659                                    ; preds = %3642, %3633
  %3660 = phi i1 [ %3658, %3642 ], [ false, %3633 ]
  %3661 = xor i1 %3660, true
  %3662 = uitofp i1 %3661 to float
  %3663 = fadd fast float %3637, %3662
  %3664 = fmul fast float %2833, 5.000000e+00
  %3665 = fmul fast float %2834, 5.000000e+00
  %3666 = call float @dx.op.unary.f32(i32 28, float %3664)  ; Round_pi(value)
  %3667 = call float @dx.op.unary.f32(i32 28, float %3665)  ; Round_pi(value)
  %3668 = fptosi float %3666 to i32
  %3669 = fptosi float %3667 to i32
  %3670 = sub i32 %64, %3669
  %3671 = or i32 %3670, %63
  %3672 = icmp slt i32 %3671, 0
  %3673 = icmp sge i32 %3670, %2846
  %3674 = or i1 %2847, %3673
  %3675 = or i1 %3672, %3674
  br i1 %3675, label %3689, label %3676, !dx.controlflow.hints !49

; <label>:3676                                    ; preds = %3659
  %3677 = lshr i32 %3670, 2
  %3678 = mul i32 %84, %3677
  %3679 = add i32 %102, %3678
  %3680 = shl i32 %3679, 2
  %3681 = shl i32 %3670, 3
  %3682 = and i32 %3681, 24
  %3683 = or i32 %3682, %93
  %3684 = shl i32 1, %3683
  %3685 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %3680, i32 undef)  ; BufferLoad(srv,index,wot)
  %3686 = extractvalue %dx.types.ResRet.i32 %3685, 0
  %3687 = and i32 %3686, %3684
  %3688 = icmp ne i32 %3687, 0
  br label %3689

; <label>:3689                                    ; preds = %3676, %3659
  %3690 = phi i1 [ %3688, %3676 ], [ false, %3659 ]
  %3691 = xor i1 %3690, true
  %3692 = uitofp i1 %3691 to float
  %3693 = fadd fast float %3663, %3692
  %3694 = add i32 %3669, %64
  %3695 = or i32 %3694, %63
  %3696 = icmp slt i32 %3695, 0
  %3697 = icmp sge i32 %3694, %2846
  %3698 = or i1 %2847, %3697
  %3699 = or i1 %3696, %3698
  br i1 %3699, label %3713, label %3700, !dx.controlflow.hints !49

; <label>:3700                                    ; preds = %3689
  %3701 = lshr i32 %3694, 2
  %3702 = mul i32 %84, %3701
  %3703 = add i32 %102, %3702
  %3704 = shl i32 %3703, 2
  %3705 = shl i32 %3694, 3
  %3706 = and i32 %3705, 24
  %3707 = or i32 %3706, %93
  %3708 = shl i32 1, %3707
  %3709 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %3704, i32 undef)  ; BufferLoad(srv,index,wot)
  %3710 = extractvalue %dx.types.ResRet.i32 %3709, 0
  %3711 = and i32 %3710, %3708
  %3712 = icmp ne i32 %3711, 0
  br label %3713

; <label>:3713                                    ; preds = %3700, %3689
  %3714 = phi i1 [ %3712, %3700 ], [ false, %3689 ]
  %3715 = xor i1 %3714, true
  %3716 = uitofp i1 %3715 to float
  %3717 = fadd fast float %3693, %3716
  %3718 = sub i32 %63, %3668
  %3719 = or i32 %3718, %64
  %3720 = icmp slt i32 %3719, 0
  %3721 = icmp sge i32 %3718, %2845
  %3722 = or i1 %3721, %2897
  %3723 = or i1 %3720, %3722
  br i1 %3723, label %3737, label %3724, !dx.controlflow.hints !49

; <label>:3724                                    ; preds = %3713
  %3725 = lshr i32 %3718, 3
  %3726 = add i32 %81, %3725
  %3727 = add i32 %3726, %100
  %3728 = add i32 %3727, %85
  %3729 = shl i32 %3728, 2
  %3730 = and i32 %3718, 7
  %3731 = or i32 %3730, %92
  %3732 = shl i32 1, %3731
  %3733 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %3729, i32 undef)  ; BufferLoad(srv,index,wot)
  %3734 = extractvalue %dx.types.ResRet.i32 %3733, 0
  %3735 = and i32 %3734, %3732
  %3736 = icmp ne i32 %3735, 0
  br label %3737

; <label>:3737                                    ; preds = %3724, %3713
  %3738 = phi i1 [ %3736, %3724 ], [ false, %3713 ]
  %3739 = xor i1 %3738, true
  %3740 = uitofp i1 %3739 to float
  %3741 = fadd fast float %3717, %3740
  %3742 = add i32 %3668, %63
  %3743 = or i32 %3742, %64
  %3744 = icmp slt i32 %3743, 0
  %3745 = icmp sge i32 %3742, %2845
  %3746 = or i1 %3745, %2897
  %3747 = or i1 %3744, %3746
  br i1 %3747, label %3761, label %3748, !dx.controlflow.hints !49

; <label>:3748                                    ; preds = %3737
  %3749 = lshr i32 %3742, 3
  %3750 = add i32 %81, %3749
  %3751 = add i32 %3750, %100
  %3752 = add i32 %3751, %85
  %3753 = shl i32 %3752, 2
  %3754 = and i32 %3742, 7
  %3755 = or i32 %3754, %92
  %3756 = shl i32 1, %3755
  %3757 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %3753, i32 undef)  ; BufferLoad(srv,index,wot)
  %3758 = extractvalue %dx.types.ResRet.i32 %3757, 0
  %3759 = and i32 %3758, %3756
  %3760 = icmp ne i32 %3759, 0
  br label %3761

; <label>:3761                                    ; preds = %3748, %3737
  %3762 = phi i1 [ %3760, %3748 ], [ false, %3737 ]
  %3763 = xor i1 %3762, true
  %3764 = uitofp i1 %3763 to float
  %3765 = fadd fast float %3741, %3764
  %3766 = or i32 %3670, %3718
  %3767 = icmp slt i32 %3766, 0
  %3768 = or i1 %3721, %3673
  %3769 = or i1 %3767, %3768
  br i1 %3769, label %3787, label %3770, !dx.controlflow.hints !49

; <label>:3770                                    ; preds = %3761
  %3771 = lshr i32 %3670, 2
  %3772 = mul i32 %84, %3771
  %3773 = lshr i32 %3718, 3
  %3774 = add i32 %81, %3773
  %3775 = add i32 %3774, %100
  %3776 = add i32 %3775, %3772
  %3777 = shl i32 %3776, 2
  %3778 = shl i32 %3670, 3
  %3779 = and i32 %3778, 24
  %3780 = and i32 %3718, 7
  %3781 = or i32 %3779, %3780
  %3782 = shl i32 1, %3781
  %3783 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %3777, i32 undef)  ; BufferLoad(srv,index,wot)
  %3784 = extractvalue %dx.types.ResRet.i32 %3783, 0
  %3785 = and i32 %3784, %3782
  %3786 = icmp ne i32 %3785, 0
  br label %3787

; <label>:3787                                    ; preds = %3770, %3761
  %3788 = phi i1 [ %3786, %3770 ], [ false, %3761 ]
  %3789 = xor i1 %3788, true
  %3790 = uitofp i1 %3789 to float
  %3791 = fadd fast float %3765, %3790
  %3792 = or i32 %3670, %3742
  %3793 = icmp slt i32 %3792, 0
  %3794 = or i1 %3745, %3673
  %3795 = or i1 %3793, %3794
  br i1 %3795, label %3813, label %3796, !dx.controlflow.hints !49

; <label>:3796                                    ; preds = %3787
  %3797 = lshr i32 %3670, 2
  %3798 = mul i32 %84, %3797
  %3799 = lshr i32 %3742, 3
  %3800 = add i32 %81, %3799
  %3801 = add i32 %3800, %100
  %3802 = add i32 %3801, %3798
  %3803 = shl i32 %3802, 2
  %3804 = shl i32 %3670, 3
  %3805 = and i32 %3804, 24
  %3806 = and i32 %3742, 7
  %3807 = or i32 %3805, %3806
  %3808 = shl i32 1, %3807
  %3809 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %3803, i32 undef)  ; BufferLoad(srv,index,wot)
  %3810 = extractvalue %dx.types.ResRet.i32 %3809, 0
  %3811 = and i32 %3810, %3808
  %3812 = icmp ne i32 %3811, 0
  br label %3813

; <label>:3813                                    ; preds = %3796, %3787
  %3814 = phi i1 [ %3812, %3796 ], [ false, %3787 ]
  %3815 = xor i1 %3814, true
  %3816 = uitofp i1 %3815 to float
  %3817 = fadd fast float %3791, %3816
  %3818 = or i32 %3694, %3718
  %3819 = icmp slt i32 %3818, 0
  %3820 = or i1 %3721, %3697
  %3821 = or i1 %3819, %3820
  br i1 %3821, label %3839, label %3822, !dx.controlflow.hints !49

; <label>:3822                                    ; preds = %3813
  %3823 = lshr i32 %3694, 2
  %3824 = mul i32 %84, %3823
  %3825 = lshr i32 %3718, 3
  %3826 = add i32 %81, %3825
  %3827 = add i32 %3826, %100
  %3828 = add i32 %3827, %3824
  %3829 = shl i32 %3828, 2
  %3830 = shl i32 %3694, 3
  %3831 = and i32 %3830, 24
  %3832 = and i32 %3718, 7
  %3833 = or i32 %3831, %3832
  %3834 = shl i32 1, %3833
  %3835 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %3829, i32 undef)  ; BufferLoad(srv,index,wot)
  %3836 = extractvalue %dx.types.ResRet.i32 %3835, 0
  %3837 = and i32 %3836, %3834
  %3838 = icmp ne i32 %3837, 0
  br label %3839

; <label>:3839                                    ; preds = %3822, %3813
  %3840 = phi i1 [ %3838, %3822 ], [ false, %3813 ]
  %3841 = xor i1 %3840, true
  %3842 = uitofp i1 %3841 to float
  %3843 = fadd fast float %3817, %3842
  %3844 = or i32 %3694, %3742
  %3845 = icmp slt i32 %3844, 0
  %3846 = or i1 %3745, %3697
  %3847 = or i1 %3845, %3846
  br i1 %3847, label %3865, label %3848, !dx.controlflow.hints !49

; <label>:3848                                    ; preds = %3839
  %3849 = lshr i32 %3694, 2
  %3850 = mul i32 %84, %3849
  %3851 = lshr i32 %3742, 3
  %3852 = add i32 %81, %3851
  %3853 = add i32 %3852, %100
  %3854 = add i32 %3853, %3850
  %3855 = shl i32 %3854, 2
  %3856 = shl i32 %3694, 3
  %3857 = and i32 %3856, 24
  %3858 = and i32 %3742, 7
  %3859 = or i32 %3857, %3858
  %3860 = shl i32 1, %3859
  %3861 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %3855, i32 undef)  ; BufferLoad(srv,index,wot)
  %3862 = extractvalue %dx.types.ResRet.i32 %3861, 0
  %3863 = and i32 %3862, %3860
  %3864 = icmp ne i32 %3863, 0
  br label %3865

; <label>:3865                                    ; preds = %3848, %3839
  %3866 = phi i1 [ %3864, %3848 ], [ false, %3839 ]
  %3867 = xor i1 %3866, true
  %3868 = uitofp i1 %3867 to float
  %3869 = fadd fast float %3843, %3868
  %3870 = fmul fast float %2833, 6.000000e+00
  %3871 = fmul fast float %2834, 6.000000e+00
  %3872 = call float @dx.op.unary.f32(i32 28, float %3870)  ; Round_pi(value)
  %3873 = call float @dx.op.unary.f32(i32 28, float %3871)  ; Round_pi(value)
  %3874 = fptosi float %3872 to i32
  %3875 = fptosi float %3873 to i32
  %3876 = sub i32 %64, %3875
  %3877 = or i32 %3876, %63
  %3878 = icmp slt i32 %3877, 0
  %3879 = icmp sge i32 %3876, %2846
  %3880 = or i1 %2847, %3879
  %3881 = or i1 %3878, %3880
  br i1 %3881, label %3895, label %3882, !dx.controlflow.hints !49

; <label>:3882                                    ; preds = %3865
  %3883 = lshr i32 %3876, 2
  %3884 = mul i32 %84, %3883
  %3885 = add i32 %102, %3884
  %3886 = shl i32 %3885, 2
  %3887 = shl i32 %3876, 3
  %3888 = and i32 %3887, 24
  %3889 = or i32 %3888, %93
  %3890 = shl i32 1, %3889
  %3891 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %3886, i32 undef)  ; BufferLoad(srv,index,wot)
  %3892 = extractvalue %dx.types.ResRet.i32 %3891, 0
  %3893 = and i32 %3892, %3890
  %3894 = icmp ne i32 %3893, 0
  br label %3895

; <label>:3895                                    ; preds = %3882, %3865
  %3896 = phi i1 [ %3894, %3882 ], [ false, %3865 ]
  %3897 = xor i1 %3896, true
  %3898 = uitofp i1 %3897 to float
  %3899 = fadd fast float %3869, %3898
  %3900 = add i32 %3875, %64
  %3901 = or i32 %3900, %63
  %3902 = icmp slt i32 %3901, 0
  %3903 = icmp sge i32 %3900, %2846
  %3904 = or i1 %2847, %3903
  %3905 = or i1 %3902, %3904
  br i1 %3905, label %3919, label %3906, !dx.controlflow.hints !49

; <label>:3906                                    ; preds = %3895
  %3907 = lshr i32 %3900, 2
  %3908 = mul i32 %84, %3907
  %3909 = add i32 %102, %3908
  %3910 = shl i32 %3909, 2
  %3911 = shl i32 %3900, 3
  %3912 = and i32 %3911, 24
  %3913 = or i32 %3912, %93
  %3914 = shl i32 1, %3913
  %3915 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %3910, i32 undef)  ; BufferLoad(srv,index,wot)
  %3916 = extractvalue %dx.types.ResRet.i32 %3915, 0
  %3917 = and i32 %3916, %3914
  %3918 = icmp ne i32 %3917, 0
  br label %3919

; <label>:3919                                    ; preds = %3906, %3895
  %3920 = phi i1 [ %3918, %3906 ], [ false, %3895 ]
  %3921 = xor i1 %3920, true
  %3922 = uitofp i1 %3921 to float
  %3923 = fadd fast float %3899, %3922
  %3924 = sub i32 %63, %3874
  %3925 = or i32 %3924, %64
  %3926 = icmp slt i32 %3925, 0
  %3927 = icmp sge i32 %3924, %2845
  %3928 = or i1 %3927, %2897
  %3929 = or i1 %3926, %3928
  br i1 %3929, label %3943, label %3930, !dx.controlflow.hints !49

; <label>:3930                                    ; preds = %3919
  %3931 = lshr i32 %3924, 3
  %3932 = add i32 %81, %3931
  %3933 = add i32 %3932, %100
  %3934 = add i32 %3933, %85
  %3935 = shl i32 %3934, 2
  %3936 = and i32 %3924, 7
  %3937 = or i32 %3936, %92
  %3938 = shl i32 1, %3937
  %3939 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %3935, i32 undef)  ; BufferLoad(srv,index,wot)
  %3940 = extractvalue %dx.types.ResRet.i32 %3939, 0
  %3941 = and i32 %3940, %3938
  %3942 = icmp ne i32 %3941, 0
  br label %3943

; <label>:3943                                    ; preds = %3930, %3919
  %3944 = phi i1 [ %3942, %3930 ], [ false, %3919 ]
  %3945 = xor i1 %3944, true
  %3946 = uitofp i1 %3945 to float
  %3947 = fadd fast float %3923, %3946
  %3948 = add i32 %3874, %63
  %3949 = or i32 %3948, %64
  %3950 = icmp slt i32 %3949, 0
  %3951 = icmp sge i32 %3948, %2845
  %3952 = or i1 %3951, %2897
  %3953 = or i1 %3950, %3952
  br i1 %3953, label %3967, label %3954, !dx.controlflow.hints !49

; <label>:3954                                    ; preds = %3943
  %3955 = lshr i32 %3948, 3
  %3956 = add i32 %81, %3955
  %3957 = add i32 %3956, %100
  %3958 = add i32 %3957, %85
  %3959 = shl i32 %3958, 2
  %3960 = and i32 %3948, 7
  %3961 = or i32 %3960, %92
  %3962 = shl i32 1, %3961
  %3963 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %3959, i32 undef)  ; BufferLoad(srv,index,wot)
  %3964 = extractvalue %dx.types.ResRet.i32 %3963, 0
  %3965 = and i32 %3964, %3962
  %3966 = icmp ne i32 %3965, 0
  br label %3967

; <label>:3967                                    ; preds = %3954, %3943
  %3968 = phi i1 [ %3966, %3954 ], [ false, %3943 ]
  %3969 = xor i1 %3968, true
  %3970 = uitofp i1 %3969 to float
  %3971 = fadd fast float %3947, %3970
  %3972 = or i32 %3876, %3924
  %3973 = icmp slt i32 %3972, 0
  %3974 = or i1 %3927, %3879
  %3975 = or i1 %3973, %3974
  br i1 %3975, label %3993, label %3976, !dx.controlflow.hints !49

; <label>:3976                                    ; preds = %3967
  %3977 = lshr i32 %3876, 2
  %3978 = mul i32 %84, %3977
  %3979 = lshr i32 %3924, 3
  %3980 = add i32 %81, %3979
  %3981 = add i32 %3980, %100
  %3982 = add i32 %3981, %3978
  %3983 = shl i32 %3982, 2
  %3984 = shl i32 %3876, 3
  %3985 = and i32 %3984, 24
  %3986 = and i32 %3924, 7
  %3987 = or i32 %3985, %3986
  %3988 = shl i32 1, %3987
  %3989 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %3983, i32 undef)  ; BufferLoad(srv,index,wot)
  %3990 = extractvalue %dx.types.ResRet.i32 %3989, 0
  %3991 = and i32 %3990, %3988
  %3992 = icmp ne i32 %3991, 0
  br label %3993

; <label>:3993                                    ; preds = %3976, %3967
  %3994 = phi i1 [ %3992, %3976 ], [ false, %3967 ]
  %3995 = xor i1 %3994, true
  %3996 = uitofp i1 %3995 to float
  %3997 = fadd fast float %3971, %3996
  %3998 = or i32 %3876, %3948
  %3999 = icmp slt i32 %3998, 0
  %4000 = or i1 %3951, %3879
  %4001 = or i1 %3999, %4000
  br i1 %4001, label %4019, label %4002, !dx.controlflow.hints !49

; <label>:4002                                    ; preds = %3993
  %4003 = lshr i32 %3876, 2
  %4004 = mul i32 %84, %4003
  %4005 = lshr i32 %3948, 3
  %4006 = add i32 %81, %4005
  %4007 = add i32 %4006, %100
  %4008 = add i32 %4007, %4004
  %4009 = shl i32 %4008, 2
  %4010 = shl i32 %3876, 3
  %4011 = and i32 %4010, 24
  %4012 = and i32 %3948, 7
  %4013 = or i32 %4011, %4012
  %4014 = shl i32 1, %4013
  %4015 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %4009, i32 undef)  ; BufferLoad(srv,index,wot)
  %4016 = extractvalue %dx.types.ResRet.i32 %4015, 0
  %4017 = and i32 %4016, %4014
  %4018 = icmp ne i32 %4017, 0
  br label %4019

; <label>:4019                                    ; preds = %4002, %3993
  %4020 = phi i1 [ %4018, %4002 ], [ false, %3993 ]
  %4021 = xor i1 %4020, true
  %4022 = uitofp i1 %4021 to float
  %4023 = fadd fast float %3997, %4022
  %4024 = or i32 %3900, %3924
  %4025 = icmp slt i32 %4024, 0
  %4026 = or i1 %3927, %3903
  %4027 = or i1 %4025, %4026
  br i1 %4027, label %4045, label %4028, !dx.controlflow.hints !49

; <label>:4028                                    ; preds = %4019
  %4029 = lshr i32 %3900, 2
  %4030 = mul i32 %84, %4029
  %4031 = lshr i32 %3924, 3
  %4032 = add i32 %81, %4031
  %4033 = add i32 %4032, %100
  %4034 = add i32 %4033, %4030
  %4035 = shl i32 %4034, 2
  %4036 = shl i32 %3900, 3
  %4037 = and i32 %4036, 24
  %4038 = and i32 %3924, 7
  %4039 = or i32 %4037, %4038
  %4040 = shl i32 1, %4039
  %4041 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %4035, i32 undef)  ; BufferLoad(srv,index,wot)
  %4042 = extractvalue %dx.types.ResRet.i32 %4041, 0
  %4043 = and i32 %4042, %4040
  %4044 = icmp ne i32 %4043, 0
  br label %4045

; <label>:4045                                    ; preds = %4028, %4019
  %4046 = phi i1 [ %4044, %4028 ], [ false, %4019 ]
  %4047 = xor i1 %4046, true
  %4048 = uitofp i1 %4047 to float
  %4049 = fadd fast float %4023, %4048
  %4050 = or i32 %3900, %3948
  %4051 = icmp slt i32 %4050, 0
  %4052 = or i1 %3951, %3903
  %4053 = or i1 %4051, %4052
  br i1 %4053, label %4071, label %4054, !dx.controlflow.hints !49

; <label>:4054                                    ; preds = %4045
  %4055 = lshr i32 %3900, 2
  %4056 = mul i32 %84, %4055
  %4057 = lshr i32 %3948, 3
  %4058 = add i32 %81, %4057
  %4059 = add i32 %4058, %100
  %4060 = add i32 %4059, %4056
  %4061 = shl i32 %4060, 2
  %4062 = shl i32 %3900, 3
  %4063 = and i32 %4062, 24
  %4064 = and i32 %3948, 7
  %4065 = or i32 %4063, %4064
  %4066 = shl i32 1, %4065
  %4067 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %4061, i32 undef)  ; BufferLoad(srv,index,wot)
  %4068 = extractvalue %dx.types.ResRet.i32 %4067, 0
  %4069 = and i32 %4068, %4066
  %4070 = icmp ne i32 %4069, 0
  br label %4071

; <label>:4071                                    ; preds = %4054, %4045
  %4072 = phi i1 [ %4070, %4054 ], [ false, %4045 ]
  %4073 = xor i1 %4072, true
  %4074 = uitofp i1 %4073 to float
  %4075 = fadd fast float %4049, %4074
  %4076 = fmul fast float %2833, 7.000000e+00
  %4077 = fmul fast float %2834, 7.000000e+00
  %4078 = call float @dx.op.unary.f32(i32 28, float %4076)  ; Round_pi(value)
  %4079 = call float @dx.op.unary.f32(i32 28, float %4077)  ; Round_pi(value)
  %4080 = fptosi float %4078 to i32
  %4081 = fptosi float %4079 to i32
  %4082 = sub i32 %64, %4081
  %4083 = or i32 %4082, %63
  %4084 = icmp slt i32 %4083, 0
  %4085 = icmp sge i32 %4082, %2846
  %4086 = or i1 %2847, %4085
  %4087 = or i1 %4084, %4086
  br i1 %4087, label %4101, label %4088, !dx.controlflow.hints !49

; <label>:4088                                    ; preds = %4071
  %4089 = lshr i32 %4082, 2
  %4090 = mul i32 %84, %4089
  %4091 = add i32 %102, %4090
  %4092 = shl i32 %4091, 2
  %4093 = shl i32 %4082, 3
  %4094 = and i32 %4093, 24
  %4095 = or i32 %4094, %93
  %4096 = shl i32 1, %4095
  %4097 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %4092, i32 undef)  ; BufferLoad(srv,index,wot)
  %4098 = extractvalue %dx.types.ResRet.i32 %4097, 0
  %4099 = and i32 %4098, %4096
  %4100 = icmp ne i32 %4099, 0
  br label %4101

; <label>:4101                                    ; preds = %4088, %4071
  %4102 = phi i1 [ %4100, %4088 ], [ false, %4071 ]
  %4103 = xor i1 %4102, true
  %4104 = uitofp i1 %4103 to float
  %4105 = fadd fast float %4075, %4104
  %4106 = add i32 %4081, %64
  %4107 = or i32 %4106, %63
  %4108 = icmp slt i32 %4107, 0
  %4109 = icmp sge i32 %4106, %2846
  %4110 = or i1 %2847, %4109
  %4111 = or i1 %4108, %4110
  br i1 %4111, label %4125, label %4112, !dx.controlflow.hints !49

; <label>:4112                                    ; preds = %4101
  %4113 = lshr i32 %4106, 2
  %4114 = mul i32 %84, %4113
  %4115 = add i32 %102, %4114
  %4116 = shl i32 %4115, 2
  %4117 = shl i32 %4106, 3
  %4118 = and i32 %4117, 24
  %4119 = or i32 %4118, %93
  %4120 = shl i32 1, %4119
  %4121 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %4116, i32 undef)  ; BufferLoad(srv,index,wot)
  %4122 = extractvalue %dx.types.ResRet.i32 %4121, 0
  %4123 = and i32 %4122, %4120
  %4124 = icmp ne i32 %4123, 0
  br label %4125

; <label>:4125                                    ; preds = %4112, %4101
  %4126 = phi i1 [ %4124, %4112 ], [ false, %4101 ]
  %4127 = xor i1 %4126, true
  %4128 = uitofp i1 %4127 to float
  %4129 = fadd fast float %4105, %4128
  %4130 = sub i32 %63, %4080
  %4131 = or i32 %4130, %64
  %4132 = icmp slt i32 %4131, 0
  %4133 = icmp sge i32 %4130, %2845
  %4134 = or i1 %4133, %2897
  %4135 = or i1 %4132, %4134
  br i1 %4135, label %4149, label %4136, !dx.controlflow.hints !49

; <label>:4136                                    ; preds = %4125
  %4137 = lshr i32 %4130, 3
  %4138 = add i32 %81, %4137
  %4139 = add i32 %4138, %100
  %4140 = add i32 %4139, %85
  %4141 = shl i32 %4140, 2
  %4142 = and i32 %4130, 7
  %4143 = or i32 %4142, %92
  %4144 = shl i32 1, %4143
  %4145 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %4141, i32 undef)  ; BufferLoad(srv,index,wot)
  %4146 = extractvalue %dx.types.ResRet.i32 %4145, 0
  %4147 = and i32 %4146, %4144
  %4148 = icmp ne i32 %4147, 0
  br label %4149

; <label>:4149                                    ; preds = %4136, %4125
  %4150 = phi i1 [ %4148, %4136 ], [ false, %4125 ]
  %4151 = xor i1 %4150, true
  %4152 = uitofp i1 %4151 to float
  %4153 = fadd fast float %4129, %4152
  %4154 = add i32 %4080, %63
  %4155 = or i32 %4154, %64
  %4156 = icmp slt i32 %4155, 0
  %4157 = icmp sge i32 %4154, %2845
  %4158 = or i1 %4157, %2897
  %4159 = or i1 %4156, %4158
  br i1 %4159, label %4173, label %4160, !dx.controlflow.hints !49

; <label>:4160                                    ; preds = %4149
  %4161 = lshr i32 %4154, 3
  %4162 = add i32 %81, %4161
  %4163 = add i32 %4162, %100
  %4164 = add i32 %4163, %85
  %4165 = shl i32 %4164, 2
  %4166 = and i32 %4154, 7
  %4167 = or i32 %4166, %92
  %4168 = shl i32 1, %4167
  %4169 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %4165, i32 undef)  ; BufferLoad(srv,index,wot)
  %4170 = extractvalue %dx.types.ResRet.i32 %4169, 0
  %4171 = and i32 %4170, %4168
  %4172 = icmp ne i32 %4171, 0
  br label %4173

; <label>:4173                                    ; preds = %4160, %4149
  %4174 = phi i1 [ %4172, %4160 ], [ false, %4149 ]
  %4175 = xor i1 %4174, true
  %4176 = uitofp i1 %4175 to float
  %4177 = fadd fast float %4153, %4176
  %4178 = or i32 %4082, %4130
  %4179 = icmp slt i32 %4178, 0
  %4180 = or i1 %4133, %4085
  %4181 = or i1 %4179, %4180
  br i1 %4181, label %4199, label %4182, !dx.controlflow.hints !49

; <label>:4182                                    ; preds = %4173
  %4183 = lshr i32 %4082, 2
  %4184 = mul i32 %84, %4183
  %4185 = lshr i32 %4130, 3
  %4186 = add i32 %81, %4185
  %4187 = add i32 %4186, %100
  %4188 = add i32 %4187, %4184
  %4189 = shl i32 %4188, 2
  %4190 = shl i32 %4082, 3
  %4191 = and i32 %4190, 24
  %4192 = and i32 %4130, 7
  %4193 = or i32 %4191, %4192
  %4194 = shl i32 1, %4193
  %4195 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %4189, i32 undef)  ; BufferLoad(srv,index,wot)
  %4196 = extractvalue %dx.types.ResRet.i32 %4195, 0
  %4197 = and i32 %4196, %4194
  %4198 = icmp ne i32 %4197, 0
  br label %4199

; <label>:4199                                    ; preds = %4182, %4173
  %4200 = phi i1 [ %4198, %4182 ], [ false, %4173 ]
  %4201 = xor i1 %4200, true
  %4202 = uitofp i1 %4201 to float
  %4203 = fadd fast float %4177, %4202
  %4204 = or i32 %4082, %4154
  %4205 = icmp slt i32 %4204, 0
  %4206 = or i1 %4157, %4085
  %4207 = or i1 %4205, %4206
  br i1 %4207, label %4225, label %4208, !dx.controlflow.hints !49

; <label>:4208                                    ; preds = %4199
  %4209 = lshr i32 %4082, 2
  %4210 = mul i32 %84, %4209
  %4211 = lshr i32 %4154, 3
  %4212 = add i32 %81, %4211
  %4213 = add i32 %4212, %100
  %4214 = add i32 %4213, %4210
  %4215 = shl i32 %4214, 2
  %4216 = shl i32 %4082, 3
  %4217 = and i32 %4216, 24
  %4218 = and i32 %4154, 7
  %4219 = or i32 %4217, %4218
  %4220 = shl i32 1, %4219
  %4221 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %4215, i32 undef)  ; BufferLoad(srv,index,wot)
  %4222 = extractvalue %dx.types.ResRet.i32 %4221, 0
  %4223 = and i32 %4222, %4220
  %4224 = icmp ne i32 %4223, 0
  br label %4225

; <label>:4225                                    ; preds = %4208, %4199
  %4226 = phi i1 [ %4224, %4208 ], [ false, %4199 ]
  %4227 = xor i1 %4226, true
  %4228 = uitofp i1 %4227 to float
  %4229 = fadd fast float %4203, %4228
  %4230 = or i32 %4106, %4130
  %4231 = icmp slt i32 %4230, 0
  %4232 = or i1 %4133, %4109
  %4233 = or i1 %4231, %4232
  br i1 %4233, label %4251, label %4234, !dx.controlflow.hints !49

; <label>:4234                                    ; preds = %4225
  %4235 = lshr i32 %4106, 2
  %4236 = mul i32 %84, %4235
  %4237 = lshr i32 %4130, 3
  %4238 = add i32 %81, %4237
  %4239 = add i32 %4238, %100
  %4240 = add i32 %4239, %4236
  %4241 = shl i32 %4240, 2
  %4242 = shl i32 %4106, 3
  %4243 = and i32 %4242, 24
  %4244 = and i32 %4130, 7
  %4245 = or i32 %4243, %4244
  %4246 = shl i32 1, %4245
  %4247 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %4241, i32 undef)  ; BufferLoad(srv,index,wot)
  %4248 = extractvalue %dx.types.ResRet.i32 %4247, 0
  %4249 = and i32 %4248, %4246
  %4250 = icmp ne i32 %4249, 0
  br label %4251

; <label>:4251                                    ; preds = %4234, %4225
  %4252 = phi i1 [ %4250, %4234 ], [ false, %4225 ]
  %4253 = xor i1 %4252, true
  %4254 = uitofp i1 %4253 to float
  %4255 = fadd fast float %4229, %4254
  %4256 = or i32 %4106, %4154
  %4257 = icmp slt i32 %4256, 0
  %4258 = or i1 %4157, %4109
  %4259 = or i1 %4257, %4258
  br i1 %4259, label %4277, label %4260, !dx.controlflow.hints !49

; <label>:4260                                    ; preds = %4251
  %4261 = lshr i32 %4106, 2
  %4262 = mul i32 %84, %4261
  %4263 = lshr i32 %4154, 3
  %4264 = add i32 %81, %4263
  %4265 = add i32 %4264, %100
  %4266 = add i32 %4265, %4262
  %4267 = shl i32 %4266, 2
  %4268 = shl i32 %4106, 3
  %4269 = and i32 %4268, 24
  %4270 = and i32 %4154, 7
  %4271 = or i32 %4269, %4270
  %4272 = shl i32 1, %4271
  %4273 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %4267, i32 undef)  ; BufferLoad(srv,index,wot)
  %4274 = extractvalue %dx.types.ResRet.i32 %4273, 0
  %4275 = and i32 %4274, %4272
  %4276 = icmp ne i32 %4275, 0
  br label %4277

; <label>:4277                                    ; preds = %4260, %4251
  %4278 = phi i1 [ %4276, %4260 ], [ false, %4251 ]
  %4279 = xor i1 %4278, true
  %4280 = uitofp i1 %4279 to float
  %4281 = fadd fast float %4255, %4280
  %4282 = fmul fast float %2833, 8.000000e+00
  %4283 = fmul fast float %2834, 8.000000e+00
  %4284 = call float @dx.op.unary.f32(i32 28, float %4282)  ; Round_pi(value)
  %4285 = call float @dx.op.unary.f32(i32 28, float %4283)  ; Round_pi(value)
  %4286 = fptosi float %4284 to i32
  %4287 = fptosi float %4285 to i32
  %4288 = sub i32 %64, %4287
  %4289 = or i32 %4288, %63
  %4290 = icmp slt i32 %4289, 0
  %4291 = icmp sge i32 %4288, %2846
  %4292 = or i1 %2847, %4291
  %4293 = or i1 %4290, %4292
  br i1 %4293, label %4307, label %4294, !dx.controlflow.hints !49

; <label>:4294                                    ; preds = %4277
  %4295 = lshr i32 %4288, 2
  %4296 = mul i32 %84, %4295
  %4297 = add i32 %102, %4296
  %4298 = shl i32 %4297, 2
  %4299 = shl i32 %4288, 3
  %4300 = and i32 %4299, 24
  %4301 = or i32 %4300, %93
  %4302 = shl i32 1, %4301
  %4303 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %4298, i32 undef)  ; BufferLoad(srv,index,wot)
  %4304 = extractvalue %dx.types.ResRet.i32 %4303, 0
  %4305 = and i32 %4304, %4302
  %4306 = icmp ne i32 %4305, 0
  br label %4307

; <label>:4307                                    ; preds = %4294, %4277
  %4308 = phi i1 [ %4306, %4294 ], [ false, %4277 ]
  %4309 = xor i1 %4308, true
  %4310 = uitofp i1 %4309 to float
  %4311 = fadd fast float %4281, %4310
  %4312 = add i32 %4287, %64
  %4313 = or i32 %4312, %63
  %4314 = icmp slt i32 %4313, 0
  %4315 = icmp sge i32 %4312, %2846
  %4316 = or i1 %2847, %4315
  %4317 = or i1 %4314, %4316
  br i1 %4317, label %4331, label %4318, !dx.controlflow.hints !49

; <label>:4318                                    ; preds = %4307
  %4319 = lshr i32 %4312, 2
  %4320 = mul i32 %84, %4319
  %4321 = add i32 %102, %4320
  %4322 = shl i32 %4321, 2
  %4323 = shl i32 %4312, 3
  %4324 = and i32 %4323, 24
  %4325 = or i32 %4324, %93
  %4326 = shl i32 1, %4325
  %4327 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %4322, i32 undef)  ; BufferLoad(srv,index,wot)
  %4328 = extractvalue %dx.types.ResRet.i32 %4327, 0
  %4329 = and i32 %4328, %4326
  %4330 = icmp ne i32 %4329, 0
  br label %4331

; <label>:4331                                    ; preds = %4318, %4307
  %4332 = phi i1 [ %4330, %4318 ], [ false, %4307 ]
  %4333 = xor i1 %4332, true
  %4334 = uitofp i1 %4333 to float
  %4335 = fadd fast float %4311, %4334
  %4336 = sub i32 %63, %4286
  %4337 = or i32 %4336, %64
  %4338 = icmp slt i32 %4337, 0
  %4339 = icmp sge i32 %4336, %2845
  %4340 = or i1 %4339, %2897
  %4341 = or i1 %4338, %4340
  br i1 %4341, label %4355, label %4342, !dx.controlflow.hints !49

; <label>:4342                                    ; preds = %4331
  %4343 = lshr i32 %4336, 3
  %4344 = add i32 %81, %4343
  %4345 = add i32 %4344, %100
  %4346 = add i32 %4345, %85
  %4347 = shl i32 %4346, 2
  %4348 = and i32 %4336, 7
  %4349 = or i32 %4348, %92
  %4350 = shl i32 1, %4349
  %4351 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %4347, i32 undef)  ; BufferLoad(srv,index,wot)
  %4352 = extractvalue %dx.types.ResRet.i32 %4351, 0
  %4353 = and i32 %4352, %4350
  %4354 = icmp ne i32 %4353, 0
  br label %4355

; <label>:4355                                    ; preds = %4342, %4331
  %4356 = phi i1 [ %4354, %4342 ], [ false, %4331 ]
  %4357 = xor i1 %4356, true
  %4358 = uitofp i1 %4357 to float
  %4359 = fadd fast float %4335, %4358
  %4360 = add i32 %4286, %63
  %4361 = or i32 %4360, %64
  %4362 = icmp slt i32 %4361, 0
  %4363 = icmp sge i32 %4360, %2845
  %4364 = or i1 %4363, %2897
  %4365 = or i1 %4362, %4364
  br i1 %4365, label %4379, label %4366, !dx.controlflow.hints !49

; <label>:4366                                    ; preds = %4355
  %4367 = lshr i32 %4360, 3
  %4368 = add i32 %81, %4367
  %4369 = add i32 %4368, %100
  %4370 = add i32 %4369, %85
  %4371 = shl i32 %4370, 2
  %4372 = and i32 %4360, 7
  %4373 = or i32 %4372, %92
  %4374 = shl i32 1, %4373
  %4375 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %4371, i32 undef)  ; BufferLoad(srv,index,wot)
  %4376 = extractvalue %dx.types.ResRet.i32 %4375, 0
  %4377 = and i32 %4376, %4374
  %4378 = icmp ne i32 %4377, 0
  br label %4379

; <label>:4379                                    ; preds = %4366, %4355
  %4380 = phi i1 [ %4378, %4366 ], [ false, %4355 ]
  %4381 = xor i1 %4380, true
  %4382 = uitofp i1 %4381 to float
  %4383 = fadd fast float %4359, %4382
  %4384 = or i32 %4288, %4336
  %4385 = icmp slt i32 %4384, 0
  %4386 = or i1 %4339, %4291
  %4387 = or i1 %4385, %4386
  br i1 %4387, label %4405, label %4388, !dx.controlflow.hints !49

; <label>:4388                                    ; preds = %4379
  %4389 = lshr i32 %4288, 2
  %4390 = mul i32 %84, %4389
  %4391 = lshr i32 %4336, 3
  %4392 = add i32 %81, %4391
  %4393 = add i32 %4392, %100
  %4394 = add i32 %4393, %4390
  %4395 = shl i32 %4394, 2
  %4396 = shl i32 %4288, 3
  %4397 = and i32 %4396, 24
  %4398 = and i32 %4336, 7
  %4399 = or i32 %4397, %4398
  %4400 = shl i32 1, %4399
  %4401 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %4395, i32 undef)  ; BufferLoad(srv,index,wot)
  %4402 = extractvalue %dx.types.ResRet.i32 %4401, 0
  %4403 = and i32 %4402, %4400
  %4404 = icmp ne i32 %4403, 0
  br label %4405

; <label>:4405                                    ; preds = %4388, %4379
  %4406 = phi i1 [ %4404, %4388 ], [ false, %4379 ]
  %4407 = xor i1 %4406, true
  %4408 = uitofp i1 %4407 to float
  %4409 = fadd fast float %4383, %4408
  %4410 = or i32 %4288, %4360
  %4411 = icmp slt i32 %4410, 0
  %4412 = or i1 %4363, %4291
  %4413 = or i1 %4411, %4412
  br i1 %4413, label %4431, label %4414, !dx.controlflow.hints !49

; <label>:4414                                    ; preds = %4405
  %4415 = lshr i32 %4288, 2
  %4416 = mul i32 %84, %4415
  %4417 = lshr i32 %4360, 3
  %4418 = add i32 %81, %4417
  %4419 = add i32 %4418, %100
  %4420 = add i32 %4419, %4416
  %4421 = shl i32 %4420, 2
  %4422 = shl i32 %4288, 3
  %4423 = and i32 %4422, 24
  %4424 = and i32 %4360, 7
  %4425 = or i32 %4423, %4424
  %4426 = shl i32 1, %4425
  %4427 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %4421, i32 undef)  ; BufferLoad(srv,index,wot)
  %4428 = extractvalue %dx.types.ResRet.i32 %4427, 0
  %4429 = and i32 %4428, %4426
  %4430 = icmp ne i32 %4429, 0
  br label %4431

; <label>:4431                                    ; preds = %4414, %4405
  %4432 = phi i1 [ %4430, %4414 ], [ false, %4405 ]
  %4433 = xor i1 %4432, true
  %4434 = uitofp i1 %4433 to float
  %4435 = fadd fast float %4409, %4434
  %4436 = or i32 %4312, %4336
  %4437 = icmp slt i32 %4436, 0
  %4438 = or i1 %4339, %4315
  %4439 = or i1 %4437, %4438
  br i1 %4439, label %4457, label %4440, !dx.controlflow.hints !49

; <label>:4440                                    ; preds = %4431
  %4441 = lshr i32 %4312, 2
  %4442 = mul i32 %84, %4441
  %4443 = lshr i32 %4336, 3
  %4444 = add i32 %81, %4443
  %4445 = add i32 %4444, %100
  %4446 = add i32 %4445, %4442
  %4447 = shl i32 %4446, 2
  %4448 = shl i32 %4312, 3
  %4449 = and i32 %4448, 24
  %4450 = and i32 %4336, 7
  %4451 = or i32 %4449, %4450
  %4452 = shl i32 1, %4451
  %4453 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %4447, i32 undef)  ; BufferLoad(srv,index,wot)
  %4454 = extractvalue %dx.types.ResRet.i32 %4453, 0
  %4455 = and i32 %4454, %4452
  %4456 = icmp ne i32 %4455, 0
  br label %4457

; <label>:4457                                    ; preds = %4440, %4431
  %4458 = phi i1 [ %4456, %4440 ], [ false, %4431 ]
  %4459 = xor i1 %4458, true
  %4460 = uitofp i1 %4459 to float
  %4461 = fadd fast float %4435, %4460
  %4462 = or i32 %4312, %4360
  %4463 = icmp slt i32 %4462, 0
  %4464 = or i1 %4363, %4315
  %4465 = or i1 %4463, %4464
  br i1 %4465, label %4483, label %4466, !dx.controlflow.hints !49

; <label>:4466                                    ; preds = %4457
  %4467 = lshr i32 %4312, 2
  %4468 = mul i32 %84, %4467
  %4469 = lshr i32 %4360, 3
  %4470 = add i32 %81, %4469
  %4471 = add i32 %4470, %100
  %4472 = add i32 %4471, %4468
  %4473 = shl i32 %4472, 2
  %4474 = shl i32 %4312, 3
  %4475 = and i32 %4474, 24
  %4476 = and i32 %4360, 7
  %4477 = or i32 %4475, %4476
  %4478 = shl i32 1, %4477
  %4479 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %4473, i32 undef)  ; BufferLoad(srv,index,wot)
  %4480 = extractvalue %dx.types.ResRet.i32 %4479, 0
  %4481 = and i32 %4480, %4478
  %4482 = icmp ne i32 %4481, 0
  br label %4483

; <label>:4483                                    ; preds = %4466, %4457
  %4484 = phi i1 [ %4482, %4466 ], [ false, %4457 ]
  %4485 = xor i1 %4484, true
  %4486 = uitofp i1 %4485 to float
  %4487 = fadd fast float %4461, %4486
  %4488 = fmul fast float %2833, 9.000000e+00
  %4489 = fmul fast float %2834, 9.000000e+00
  %4490 = call float @dx.op.unary.f32(i32 28, float %4488)  ; Round_pi(value)
  %4491 = call float @dx.op.unary.f32(i32 28, float %4489)  ; Round_pi(value)
  %4492 = fptosi float %4490 to i32
  %4493 = fptosi float %4491 to i32
  %4494 = sub i32 %64, %4493
  %4495 = or i32 %4494, %63
  %4496 = icmp slt i32 %4495, 0
  %4497 = icmp sge i32 %4494, %2846
  %4498 = or i1 %2847, %4497
  %4499 = or i1 %4496, %4498
  br i1 %4499, label %4513, label %4500, !dx.controlflow.hints !49

; <label>:4500                                    ; preds = %4483
  %4501 = lshr i32 %4494, 2
  %4502 = mul i32 %84, %4501
  %4503 = add i32 %102, %4502
  %4504 = shl i32 %4503, 2
  %4505 = shl i32 %4494, 3
  %4506 = and i32 %4505, 24
  %4507 = or i32 %4506, %93
  %4508 = shl i32 1, %4507
  %4509 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %4504, i32 undef)  ; BufferLoad(srv,index,wot)
  %4510 = extractvalue %dx.types.ResRet.i32 %4509, 0
  %4511 = and i32 %4510, %4508
  %4512 = icmp ne i32 %4511, 0
  br label %4513

; <label>:4513                                    ; preds = %4500, %4483
  %4514 = phi i1 [ %4512, %4500 ], [ false, %4483 ]
  %4515 = xor i1 %4514, true
  %4516 = uitofp i1 %4515 to float
  %4517 = fadd fast float %4487, %4516
  %4518 = add i32 %4493, %64
  %4519 = or i32 %4518, %63
  %4520 = icmp slt i32 %4519, 0
  %4521 = icmp sge i32 %4518, %2846
  %4522 = or i1 %2847, %4521
  %4523 = or i1 %4520, %4522
  br i1 %4523, label %4537, label %4524, !dx.controlflow.hints !49

; <label>:4524                                    ; preds = %4513
  %4525 = lshr i32 %4518, 2
  %4526 = mul i32 %84, %4525
  %4527 = add i32 %102, %4526
  %4528 = shl i32 %4527, 2
  %4529 = shl i32 %4518, 3
  %4530 = and i32 %4529, 24
  %4531 = or i32 %4530, %93
  %4532 = shl i32 1, %4531
  %4533 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %4528, i32 undef)  ; BufferLoad(srv,index,wot)
  %4534 = extractvalue %dx.types.ResRet.i32 %4533, 0
  %4535 = and i32 %4534, %4532
  %4536 = icmp ne i32 %4535, 0
  br label %4537

; <label>:4537                                    ; preds = %4524, %4513
  %4538 = phi i1 [ %4536, %4524 ], [ false, %4513 ]
  %4539 = xor i1 %4538, true
  %4540 = uitofp i1 %4539 to float
  %4541 = fadd fast float %4517, %4540
  %4542 = sub i32 %63, %4492
  %4543 = or i32 %4542, %64
  %4544 = icmp slt i32 %4543, 0
  %4545 = icmp sge i32 %4542, %2845
  %4546 = or i1 %4545, %2897
  %4547 = or i1 %4544, %4546
  br i1 %4547, label %4561, label %4548, !dx.controlflow.hints !49

; <label>:4548                                    ; preds = %4537
  %4549 = lshr i32 %4542, 3
  %4550 = add i32 %81, %4549
  %4551 = add i32 %4550, %100
  %4552 = add i32 %4551, %85
  %4553 = shl i32 %4552, 2
  %4554 = and i32 %4542, 7
  %4555 = or i32 %4554, %92
  %4556 = shl i32 1, %4555
  %4557 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %4553, i32 undef)  ; BufferLoad(srv,index,wot)
  %4558 = extractvalue %dx.types.ResRet.i32 %4557, 0
  %4559 = and i32 %4558, %4556
  %4560 = icmp ne i32 %4559, 0
  br label %4561

; <label>:4561                                    ; preds = %4548, %4537
  %4562 = phi i1 [ %4560, %4548 ], [ false, %4537 ]
  %4563 = xor i1 %4562, true
  %4564 = uitofp i1 %4563 to float
  %4565 = fadd fast float %4541, %4564
  %4566 = add i32 %4492, %63
  %4567 = or i32 %4566, %64
  %4568 = icmp slt i32 %4567, 0
  %4569 = icmp sge i32 %4566, %2845
  %4570 = or i1 %4569, %2897
  %4571 = or i1 %4568, %4570
  br i1 %4571, label %4586, label %4572, !dx.controlflow.hints !49

; <label>:4572                                    ; preds = %4561
  %4573 = lshr i32 %4566, 3
  %4574 = add i32 %81, %4573
  %4575 = add i32 %4574, %100
  %4576 = add i32 %4575, %85
  %4577 = shl i32 %4576, 2
  %4578 = and i32 %4566, 7
  %4579 = or i32 %4578, %92
  %4580 = shl i32 1, %4579
  %4581 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %4577, i32 undef)  ; BufferLoad(srv,index,wot)
  %4582 = extractvalue %dx.types.ResRet.i32 %4581, 0
  %4583 = and i32 %4582, %4580
  %4584 = icmp eq i32 %4583, 0
  %4585 = uitofp i1 %4584 to float
  br label %4586

; <label>:4586                                    ; preds = %4572, %4561
  %4587 = phi float [ %4585, %4572 ], [ 1.000000e+00, %4561 ]
  %4588 = fadd fast float %4565, %4587
  %4589 = or i32 %4494, %4542
  %4590 = icmp slt i32 %4589, 0
  %4591 = or i1 %4545, %4497
  %4592 = or i1 %4590, %4591
  br i1 %4592, label %4611, label %4593, !dx.controlflow.hints !49

; <label>:4593                                    ; preds = %4586
  %4594 = lshr i32 %4494, 2
  %4595 = mul i32 %84, %4594
  %4596 = lshr i32 %4542, 3
  %4597 = add i32 %81, %4596
  %4598 = add i32 %4597, %100
  %4599 = add i32 %4598, %4595
  %4600 = shl i32 %4599, 2
  %4601 = shl i32 %4494, 3
  %4602 = and i32 %4601, 24
  %4603 = and i32 %4542, 7
  %4604 = or i32 %4602, %4603
  %4605 = shl i32 1, %4604
  %4606 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %4600, i32 undef)  ; BufferLoad(srv,index,wot)
  %4607 = extractvalue %dx.types.ResRet.i32 %4606, 0
  %4608 = and i32 %4607, %4605
  %4609 = icmp eq i32 %4608, 0
  %4610 = uitofp i1 %4609 to float
  br label %4611

; <label>:4611                                    ; preds = %4593, %4586
  %4612 = phi float [ %4610, %4593 ], [ 1.000000e+00, %4586 ]
  %4613 = fadd fast float %4588, %4612
  %4614 = or i32 %4494, %4566
  %4615 = icmp slt i32 %4614, 0
  %4616 = or i1 %4569, %4497
  %4617 = or i1 %4615, %4616
  br i1 %4617, label %4636, label %4618, !dx.controlflow.hints !49

; <label>:4618                                    ; preds = %4611
  %4619 = lshr i32 %4494, 2
  %4620 = mul i32 %84, %4619
  %4621 = lshr i32 %4566, 3
  %4622 = add i32 %81, %4621
  %4623 = add i32 %4622, %100
  %4624 = add i32 %4623, %4620
  %4625 = shl i32 %4624, 2
  %4626 = shl i32 %4494, 3
  %4627 = and i32 %4626, 24
  %4628 = and i32 %4566, 7
  %4629 = or i32 %4627, %4628
  %4630 = shl i32 1, %4629
  %4631 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %4625, i32 undef)  ; BufferLoad(srv,index,wot)
  %4632 = extractvalue %dx.types.ResRet.i32 %4631, 0
  %4633 = and i32 %4632, %4630
  %4634 = icmp eq i32 %4633, 0
  %4635 = uitofp i1 %4634 to float
  br label %4636

; <label>:4636                                    ; preds = %4618, %4611
  %4637 = phi float [ %4635, %4618 ], [ 1.000000e+00, %4611 ]
  %4638 = fadd fast float %4613, %4637
  %4639 = or i32 %4518, %4542
  %4640 = icmp slt i32 %4639, 0
  %4641 = or i1 %4545, %4521
  %4642 = or i1 %4640, %4641
  br i1 %4642, label %4661, label %4643, !dx.controlflow.hints !49

; <label>:4643                                    ; preds = %4636
  %4644 = lshr i32 %4518, 2
  %4645 = mul i32 %84, %4644
  %4646 = lshr i32 %4542, 3
  %4647 = add i32 %81, %4646
  %4648 = add i32 %4647, %100
  %4649 = add i32 %4648, %4645
  %4650 = shl i32 %4649, 2
  %4651 = shl i32 %4518, 3
  %4652 = and i32 %4651, 24
  %4653 = and i32 %4542, 7
  %4654 = or i32 %4652, %4653
  %4655 = shl i32 1, %4654
  %4656 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %4650, i32 undef)  ; BufferLoad(srv,index,wot)
  %4657 = extractvalue %dx.types.ResRet.i32 %4656, 0
  %4658 = and i32 %4657, %4655
  %4659 = icmp eq i32 %4658, 0
  %4660 = uitofp i1 %4659 to float
  br label %4661

; <label>:4661                                    ; preds = %4643, %4636
  %4662 = phi float [ %4660, %4643 ], [ 1.000000e+00, %4636 ]
  %4663 = fadd fast float %4638, %4662
  %4664 = or i32 %4518, %4566
  %4665 = icmp slt i32 %4664, 0
  %4666 = or i1 %4569, %4521
  %4667 = or i1 %4665, %4666
  br i1 %4667, label %4686, label %4668, !dx.controlflow.hints !49

; <label>:4668                                    ; preds = %4661
  %4669 = lshr i32 %4518, 2
  %4670 = mul i32 %84, %4669
  %4671 = lshr i32 %4566, 3
  %4672 = add i32 %81, %4671
  %4673 = add i32 %4672, %100
  %4674 = add i32 %4673, %4670
  %4675 = shl i32 %4674, 2
  %4676 = shl i32 %4518, 3
  %4677 = and i32 %4676, 24
  %4678 = and i32 %4566, 7
  %4679 = or i32 %4677, %4678
  %4680 = shl i32 1, %4679
  %4681 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %4675, i32 undef)  ; BufferLoad(srv,index,wot)
  %4682 = extractvalue %dx.types.ResRet.i32 %4681, 0
  %4683 = and i32 %4682, %4680
  %4684 = icmp eq i32 %4683, 0
  %4685 = uitofp i1 %4684 to float
  br label %4686

; <label>:4686                                    ; preds = %4668, %4661
  %4687 = phi float [ %4685, %4668 ], [ 1.000000e+00, %4661 ]
  %4688 = fadd fast float %4663, %4687
  %4689 = fmul fast float %2833, 1.000000e+01
  %4690 = fmul fast float %2834, 1.000000e+01
  %4691 = call float @dx.op.unary.f32(i32 28, float %4689)  ; Round_pi(value)
  %4692 = call float @dx.op.unary.f32(i32 28, float %4690)  ; Round_pi(value)
  %4693 = fptosi float %4691 to i32
  %4694 = fptosi float %4692 to i32
  %4695 = sub i32 %64, %4694
  %4696 = or i32 %4695, %63
  %4697 = icmp slt i32 %4696, 0
  %4698 = icmp sge i32 %4695, %2846
  %4699 = or i1 %2847, %4698
  %4700 = or i1 %4697, %4699
  br i1 %4700, label %4715, label %4701, !dx.controlflow.hints !49

; <label>:4701                                    ; preds = %4686
  %4702 = lshr i32 %4695, 2
  %4703 = mul i32 %84, %4702
  %4704 = add i32 %102, %4703
  %4705 = shl i32 %4704, 2
  %4706 = shl i32 %4695, 3
  %4707 = and i32 %4706, 24
  %4708 = or i32 %4707, %93
  %4709 = shl i32 1, %4708
  %4710 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %4705, i32 undef)  ; BufferLoad(srv,index,wot)
  %4711 = extractvalue %dx.types.ResRet.i32 %4710, 0
  %4712 = and i32 %4711, %4709
  %4713 = icmp eq i32 %4712, 0
  %4714 = uitofp i1 %4713 to float
  br label %4715

; <label>:4715                                    ; preds = %4701, %4686
  %4716 = phi float [ %4714, %4701 ], [ 1.000000e+00, %4686 ]
  %4717 = fadd fast float %4688, %4716
  %4718 = add i32 %4694, %64
  %4719 = or i32 %4718, %63
  %4720 = icmp slt i32 %4719, 0
  %4721 = icmp sge i32 %4718, %2846
  %4722 = or i1 %2847, %4721
  %4723 = or i1 %4720, %4722
  br i1 %4723, label %4738, label %4724, !dx.controlflow.hints !49

; <label>:4724                                    ; preds = %4715
  %4725 = lshr i32 %4718, 2
  %4726 = mul i32 %84, %4725
  %4727 = add i32 %102, %4726
  %4728 = shl i32 %4727, 2
  %4729 = shl i32 %4718, 3
  %4730 = and i32 %4729, 24
  %4731 = or i32 %4730, %93
  %4732 = shl i32 1, %4731
  %4733 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %4728, i32 undef)  ; BufferLoad(srv,index,wot)
  %4734 = extractvalue %dx.types.ResRet.i32 %4733, 0
  %4735 = and i32 %4734, %4732
  %4736 = icmp eq i32 %4735, 0
  %4737 = uitofp i1 %4736 to float
  br label %4738

; <label>:4738                                    ; preds = %4724, %4715
  %4739 = phi float [ %4737, %4724 ], [ 1.000000e+00, %4715 ]
  %4740 = fadd fast float %4717, %4739
  %4741 = sub i32 %63, %4693
  %4742 = or i32 %4741, %64
  %4743 = icmp slt i32 %4742, 0
  %4744 = icmp sge i32 %4741, %2845
  %4745 = or i1 %4744, %2897
  %4746 = or i1 %4743, %4745
  br i1 %4746, label %4761, label %4747, !dx.controlflow.hints !49

; <label>:4747                                    ; preds = %4738
  %4748 = lshr i32 %4741, 3
  %4749 = add i32 %81, %4748
  %4750 = add i32 %4749, %100
  %4751 = add i32 %4750, %85
  %4752 = shl i32 %4751, 2
  %4753 = and i32 %4741, 7
  %4754 = or i32 %4753, %92
  %4755 = shl i32 1, %4754
  %4756 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %4752, i32 undef)  ; BufferLoad(srv,index,wot)
  %4757 = extractvalue %dx.types.ResRet.i32 %4756, 0
  %4758 = and i32 %4757, %4755
  %4759 = icmp eq i32 %4758, 0
  %4760 = uitofp i1 %4759 to float
  br label %4761

; <label>:4761                                    ; preds = %4747, %4738
  %4762 = phi float [ %4760, %4747 ], [ 1.000000e+00, %4738 ]
  %4763 = fadd fast float %4740, %4762
  %4764 = add i32 %4693, %63
  %4765 = or i32 %4764, %64
  %4766 = icmp slt i32 %4765, 0
  %4767 = icmp sge i32 %4764, %2845
  %4768 = or i1 %4767, %2897
  %4769 = or i1 %4766, %4768
  br i1 %4769, label %4784, label %4770, !dx.controlflow.hints !49

; <label>:4770                                    ; preds = %4761
  %4771 = lshr i32 %4764, 3
  %4772 = add i32 %81, %4771
  %4773 = add i32 %4772, %100
  %4774 = add i32 %4773, %85
  %4775 = shl i32 %4774, 2
  %4776 = and i32 %4764, 7
  %4777 = or i32 %4776, %92
  %4778 = shl i32 1, %4777
  %4779 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %4775, i32 undef)  ; BufferLoad(srv,index,wot)
  %4780 = extractvalue %dx.types.ResRet.i32 %4779, 0
  %4781 = and i32 %4780, %4778
  %4782 = icmp eq i32 %4781, 0
  %4783 = uitofp i1 %4782 to float
  br label %4784

; <label>:4784                                    ; preds = %4770, %4761
  %4785 = phi float [ %4783, %4770 ], [ 1.000000e+00, %4761 ]
  %4786 = fadd fast float %4763, %4785
  %4787 = or i32 %4695, %4741
  %4788 = icmp slt i32 %4787, 0
  %4789 = or i1 %4744, %4698
  %4790 = or i1 %4788, %4789
  br i1 %4790, label %4809, label %4791, !dx.controlflow.hints !49

; <label>:4791                                    ; preds = %4784
  %4792 = lshr i32 %4695, 2
  %4793 = mul i32 %84, %4792
  %4794 = lshr i32 %4741, 3
  %4795 = add i32 %81, %4794
  %4796 = add i32 %4795, %100
  %4797 = add i32 %4796, %4793
  %4798 = shl i32 %4797, 2
  %4799 = shl i32 %4695, 3
  %4800 = and i32 %4799, 24
  %4801 = and i32 %4741, 7
  %4802 = or i32 %4800, %4801
  %4803 = shl i32 1, %4802
  %4804 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %4798, i32 undef)  ; BufferLoad(srv,index,wot)
  %4805 = extractvalue %dx.types.ResRet.i32 %4804, 0
  %4806 = and i32 %4805, %4803
  %4807 = icmp eq i32 %4806, 0
  %4808 = uitofp i1 %4807 to float
  br label %4809

; <label>:4809                                    ; preds = %4791, %4784
  %4810 = phi float [ %4808, %4791 ], [ 1.000000e+00, %4784 ]
  %4811 = fadd fast float %4786, %4810
  %4812 = or i32 %4695, %4764
  %4813 = icmp slt i32 %4812, 0
  %4814 = or i1 %4767, %4698
  %4815 = or i1 %4813, %4814
  br i1 %4815, label %4834, label %4816, !dx.controlflow.hints !49

; <label>:4816                                    ; preds = %4809
  %4817 = lshr i32 %4695, 2
  %4818 = mul i32 %84, %4817
  %4819 = lshr i32 %4764, 3
  %4820 = add i32 %81, %4819
  %4821 = add i32 %4820, %100
  %4822 = add i32 %4821, %4818
  %4823 = shl i32 %4822, 2
  %4824 = shl i32 %4695, 3
  %4825 = and i32 %4824, 24
  %4826 = and i32 %4764, 7
  %4827 = or i32 %4825, %4826
  %4828 = shl i32 1, %4827
  %4829 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %4823, i32 undef)  ; BufferLoad(srv,index,wot)
  %4830 = extractvalue %dx.types.ResRet.i32 %4829, 0
  %4831 = and i32 %4830, %4828
  %4832 = icmp eq i32 %4831, 0
  %4833 = uitofp i1 %4832 to float
  br label %4834

; <label>:4834                                    ; preds = %4816, %4809
  %4835 = phi float [ %4833, %4816 ], [ 1.000000e+00, %4809 ]
  %4836 = fadd fast float %4811, %4835
  %4837 = or i32 %4718, %4741
  %4838 = icmp slt i32 %4837, 0
  %4839 = or i1 %4744, %4721
  %4840 = or i1 %4838, %4839
  br i1 %4840, label %4859, label %4841, !dx.controlflow.hints !49

; <label>:4841                                    ; preds = %4834
  %4842 = lshr i32 %4718, 2
  %4843 = mul i32 %84, %4842
  %4844 = lshr i32 %4741, 3
  %4845 = add i32 %81, %4844
  %4846 = add i32 %4845, %100
  %4847 = add i32 %4846, %4843
  %4848 = shl i32 %4847, 2
  %4849 = shl i32 %4718, 3
  %4850 = and i32 %4849, 24
  %4851 = and i32 %4741, 7
  %4852 = or i32 %4850, %4851
  %4853 = shl i32 1, %4852
  %4854 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %4848, i32 undef)  ; BufferLoad(srv,index,wot)
  %4855 = extractvalue %dx.types.ResRet.i32 %4854, 0
  %4856 = and i32 %4855, %4853
  %4857 = icmp eq i32 %4856, 0
  %4858 = uitofp i1 %4857 to float
  br label %4859

; <label>:4859                                    ; preds = %4841, %4834
  %4860 = phi float [ %4858, %4841 ], [ 1.000000e+00, %4834 ]
  %4861 = fadd fast float %4836, %4860
  %4862 = or i32 %4718, %4764
  %4863 = icmp slt i32 %4862, 0
  %4864 = or i1 %4767, %4721
  %4865 = or i1 %4863, %4864
  br i1 %4865, label %4884, label %4866, !dx.controlflow.hints !49

; <label>:4866                                    ; preds = %4859
  %4867 = lshr i32 %4718, 2
  %4868 = mul i32 %84, %4867
  %4869 = lshr i32 %4764, 3
  %4870 = add i32 %81, %4869
  %4871 = add i32 %4870, %100
  %4872 = add i32 %4871, %4868
  %4873 = shl i32 %4872, 2
  %4874 = shl i32 %4718, 3
  %4875 = and i32 %4874, 24
  %4876 = and i32 %4764, 7
  %4877 = or i32 %4875, %4876
  %4878 = shl i32 1, %4877
  %4879 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %4873, i32 undef)  ; BufferLoad(srv,index,wot)
  %4880 = extractvalue %dx.types.ResRet.i32 %4879, 0
  %4881 = and i32 %4880, %4878
  %4882 = icmp eq i32 %4881, 0
  %4883 = uitofp i1 %4882 to float
  br label %4884

; <label>:4884                                    ; preds = %4866, %4859
  %4885 = phi float [ %4883, %4866 ], [ 1.000000e+00, %4859 ]
  %4886 = fadd fast float %4861, %4885
  %4887 = fmul fast float %2788, 1.500000e+00
  %4888 = fsub fast float 3.000000e+00, %4887
  %4889 = fdiv fast float 0x3FB99999A0000000, %4888
  %4890 = fmul fast float %2788, 2.000000e+00
  %4891 = fsub fast float 8.000000e+00, %4886
  %4892 = fsub fast float %4891, %4890
  %4893 = fmul fast float %4892, 4.000000e+00
  %4894 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4893)  ; FMax(a,b)
  %4895 = fadd fast float %4894, %4886
  %4896 = fmul fast float %4895, %4889
  %4897 = fadd fast float %2788, 1.500000e+00
  %4898 = fsub fast float 1.000000e+00, %4896
  %4899 = call float @dx.op.unary.f32(i32 7, float %4898)  ; Saturate(value)
  %4900 = call float @dx.op.unary.f32(i32 23, float %4899)  ; Log(value)
  %4901 = fmul fast float %4900, %4897
  %4902 = call float @dx.op.unary.f32(i32 21, float %4901)  ; Exp(value)
  %4903 = fmul fast float %2628, %2624
  %4904 = fmul fast float %2629, %2625
  %4905 = fmul fast float %2630, %2626
  %4906 = call float @dx.op.unary.f32(i32 23, float %2766)  ; Log(value)
  %4907 = fmul fast float %4906, 2.500000e-01
  %4908 = call float @dx.op.unary.f32(i32 21, float %4907)  ; Exp(value)
  %4909 = fmul fast float %2631, %2627
  %4910 = fmul fast float %4909, %2632
  %4911 = fmul fast float %4910, %4902
  %4912 = fmul fast float %4911, %4908
  br label %5478

; <label>:4913                                    ; preds = %621
  %4914 = and i32 %636, 511
  %4915 = mul nuw nsw i32 %4914, 20
  %4916 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %4915, i32 undef)  ; BufferLoad(srv,index,wot)
  %4917 = extractvalue %dx.types.ResRet.i32 %4916, 0
  %4918 = lshr i32 %4917, 24
  %4919 = uitofp i32 %4918 to float
  %4920 = add i32 %64, -1
  %4921 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %12, i32 0, i32 %63, i32 %4920, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4922 = extractvalue %dx.types.ResRet.i32 %4921, 0
  %4923 = lshr i32 %4922, 8
  %4924 = and i32 %4922, 255
  %4925 = and i32 %4923, 255
  %4926 = uitofp i32 %4924 to float
  %4927 = uitofp i32 %4925 to float
  %4928 = fmul fast float %4926, 0x3F80101020000000
  %4929 = fmul fast float %4927, 0x3F80101020000000
  %4930 = fadd fast float %4928, -1.000000e+00
  %4931 = fadd fast float %4929, -1.000000e+00
  %4932 = call float @dx.op.unary.f32(i32 6, float %4930)  ; FAbs(value)
  %4933 = fsub fast float 1.000000e+00, %4932
  %4934 = call float @dx.op.unary.f32(i32 6, float %4931)  ; FAbs(value)
  %4935 = fsub fast float %4933, %4934
  %4936 = fsub fast float -0.000000e+00, %4935
  %4937 = call float @dx.op.binary.f32(i32 35, float %4936, float 0.000000e+00)  ; FMax(a,b)
  %4938 = fcmp fast ogt float %4930, 0.000000e+00
  %4939 = fsub fast float -0.000000e+00, %4937
  %4940 = select i1 %4938, float %4939, float %4937
  %4941 = fadd fast float %4940, %4930
  %4942 = fcmp fast ogt float %4931, 0.000000e+00
  %4943 = select i1 %4942, float %4939, float %4937
  %4944 = fadd fast float %4943, %4931
  %4945 = call float @dx.op.dot3.f32(i32 55, float %4941, float %4944, float %4935, float %4941, float %4944, float %4935)  ; Dot3(ax,ay,az,bx,by,bz)
  %4946 = call float @dx.op.unary.f32(i32 25, float %4945)  ; Rsqrt(value)
  %4947 = fmul fast float %4941, %4946
  %4948 = fmul fast float %4944, %4946
  %4949 = fmul fast float %4946, %4935
  %4950 = add i32 %64, 1
  %4951 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %12, i32 0, i32 %63, i32 %4950, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4952 = extractvalue %dx.types.ResRet.i32 %4951, 0
  %4953 = lshr i32 %4952, 8
  %4954 = and i32 %4952, 255
  %4955 = and i32 %4953, 255
  %4956 = uitofp i32 %4954 to float
  %4957 = uitofp i32 %4955 to float
  %4958 = fmul fast float %4956, 0x3F80101020000000
  %4959 = fmul fast float %4957, 0x3F80101020000000
  %4960 = fadd fast float %4958, -1.000000e+00
  %4961 = fadd fast float %4959, -1.000000e+00
  %4962 = call float @dx.op.unary.f32(i32 6, float %4960)  ; FAbs(value)
  %4963 = fsub fast float 1.000000e+00, %4962
  %4964 = call float @dx.op.unary.f32(i32 6, float %4961)  ; FAbs(value)
  %4965 = fsub fast float %4963, %4964
  %4966 = fsub fast float -0.000000e+00, %4965
  %4967 = call float @dx.op.binary.f32(i32 35, float %4966, float 0.000000e+00)  ; FMax(a,b)
  %4968 = fcmp fast ogt float %4960, 0.000000e+00
  %4969 = fsub fast float -0.000000e+00, %4967
  %4970 = select i1 %4968, float %4969, float %4967
  %4971 = fadd fast float %4970, %4960
  %4972 = fcmp fast ogt float %4961, 0.000000e+00
  %4973 = select i1 %4972, float %4969, float %4967
  %4974 = fadd fast float %4973, %4961
  %4975 = call float @dx.op.dot3.f32(i32 55, float %4971, float %4974, float %4965, float %4971, float %4974, float %4965)  ; Dot3(ax,ay,az,bx,by,bz)
  %4976 = call float @dx.op.unary.f32(i32 25, float %4975)  ; Rsqrt(value)
  %4977 = fmul fast float %4971, %4976
  %4978 = fmul fast float %4974, %4976
  %4979 = fmul fast float %4976, %4965
  %4980 = add i32 %63, -1
  %4981 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %12, i32 0, i32 %4980, i32 %64, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4982 = extractvalue %dx.types.ResRet.i32 %4981, 0
  %4983 = lshr i32 %4982, 8
  %4984 = and i32 %4982, 255
  %4985 = and i32 %4983, 255
  %4986 = uitofp i32 %4984 to float
  %4987 = uitofp i32 %4985 to float
  %4988 = fmul fast float %4986, 0x3F80101020000000
  %4989 = fmul fast float %4987, 0x3F80101020000000
  %4990 = fadd fast float %4988, -1.000000e+00
  %4991 = fadd fast float %4989, -1.000000e+00
  %4992 = call float @dx.op.unary.f32(i32 6, float %4990)  ; FAbs(value)
  %4993 = fsub fast float 1.000000e+00, %4992
  %4994 = call float @dx.op.unary.f32(i32 6, float %4991)  ; FAbs(value)
  %4995 = fsub fast float %4993, %4994
  %4996 = fsub fast float -0.000000e+00, %4995
  %4997 = call float @dx.op.binary.f32(i32 35, float %4996, float 0.000000e+00)  ; FMax(a,b)
  %4998 = fcmp fast ogt float %4990, 0.000000e+00
  %4999 = fsub fast float -0.000000e+00, %4997
  %5000 = select i1 %4998, float %4999, float %4997
  %5001 = fadd fast float %5000, %4990
  %5002 = fcmp fast ogt float %4991, 0.000000e+00
  %5003 = select i1 %5002, float %4999, float %4997
  %5004 = fadd fast float %5003, %4991
  %5005 = call float @dx.op.dot3.f32(i32 55, float %5001, float %5004, float %4995, float %5001, float %5004, float %4995)  ; Dot3(ax,ay,az,bx,by,bz)
  %5006 = call float @dx.op.unary.f32(i32 25, float %5005)  ; Rsqrt(value)
  %5007 = fmul fast float %5001, %5006
  %5008 = fmul fast float %5004, %5006
  %5009 = fmul fast float %5006, %4995
  %5010 = add i32 %63, 1
  %5011 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %12, i32 0, i32 %5010, i32 %64, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5012 = extractvalue %dx.types.ResRet.i32 %5011, 0
  %5013 = lshr i32 %5012, 8
  %5014 = and i32 %5012, 255
  %5015 = and i32 %5013, 255
  %5016 = uitofp i32 %5014 to float
  %5017 = uitofp i32 %5015 to float
  %5018 = fmul fast float %5016, 0x3F80101020000000
  %5019 = fmul fast float %5017, 0x3F80101020000000
  %5020 = fadd fast float %5018, -1.000000e+00
  %5021 = fadd fast float %5019, -1.000000e+00
  %5022 = call float @dx.op.unary.f32(i32 6, float %5020)  ; FAbs(value)
  %5023 = fsub fast float 1.000000e+00, %5022
  %5024 = call float @dx.op.unary.f32(i32 6, float %5021)  ; FAbs(value)
  %5025 = fsub fast float %5023, %5024
  %5026 = fsub fast float -0.000000e+00, %5025
  %5027 = call float @dx.op.binary.f32(i32 35, float %5026, float 0.000000e+00)  ; FMax(a,b)
  %5028 = fcmp fast ogt float %5020, 0.000000e+00
  %5029 = fsub fast float -0.000000e+00, %5027
  %5030 = select i1 %5028, float %5029, float %5027
  %5031 = fadd fast float %5030, %5020
  %5032 = fcmp fast ogt float %5021, 0.000000e+00
  %5033 = select i1 %5032, float %5029, float %5027
  %5034 = fadd fast float %5033, %5021
  %5035 = call float @dx.op.dot3.f32(i32 55, float %5031, float %5034, float %5025, float %5031, float %5034, float %5025)  ; Dot3(ax,ay,az,bx,by,bz)
  %5036 = call float @dx.op.unary.f32(i32 25, float %5035)  ; Rsqrt(value)
  %5037 = fmul fast float %5031, %5036
  %5038 = fmul fast float %5034, %5036
  %5039 = fmul fast float %5036, %5025
  %5040 = call float @dx.op.dot3.f32(i32 55, float %4947, float %4948, float %4949, float %4977, float %4978, float %4979)  ; Dot3(ax,ay,az,bx,by,bz)
  %5041 = call float @dx.op.binary.f32(i32 36, float 1.000000e+00, float %5040)  ; FMin(a,b)
  %5042 = call float @dx.op.dot3.f32(i32 55, float %4947, float %4948, float %4949, float %5007, float %5008, float %5009)  ; Dot3(ax,ay,az,bx,by,bz)
  %5043 = call float @dx.op.binary.f32(i32 36, float %5041, float %5042)  ; FMin(a,b)
  %5044 = call float @dx.op.dot3.f32(i32 55, float %4947, float %4948, float %4949, float %5037, float %5038, float %5039)  ; Dot3(ax,ay,az,bx,by,bz)
  %5045 = call float @dx.op.binary.f32(i32 36, float %5043, float %5044)  ; FMin(a,b)
  %5046 = call float @dx.op.dot3.f32(i32 55, float %4977, float %4978, float %4979, float %5007, float %5008, float %5009)  ; Dot3(ax,ay,az,bx,by,bz)
  %5047 = call float @dx.op.binary.f32(i32 36, float %5045, float %5046)  ; FMin(a,b)
  %5048 = call float @dx.op.dot3.f32(i32 55, float %4977, float %4978, float %4979, float %5037, float %5038, float %5039)  ; Dot3(ax,ay,az,bx,by,bz)
  %5049 = call float @dx.op.binary.f32(i32 36, float %5047, float %5048)  ; FMin(a,b)
  %5050 = call float @dx.op.dot3.f32(i32 55, float %5007, float %5008, float %5009, float %5037, float %5038, float %5039)  ; Dot3(ax,ay,az,bx,by,bz)
  %5051 = call float @dx.op.binary.f32(i32 36, float %5049, float %5050)  ; FMin(a,b)
  %5052 = call float @dx.op.unary.f32(i32 7, float %5051)  ; Saturate(value)
  %5053 = fsub fast float 1.000000e+00, %5052
  %5054 = add nuw nsw i32 %4915, 12
  %5055 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %5054, i32 undef)  ; BufferLoad(srv,index,wot)
  %5056 = extractvalue %dx.types.ResRet.i32 %5055, 0
  %5057 = lshr i32 %5056, 16
  %5058 = uitofp i32 %5057 to float
  %5059 = fmul fast float %5058, 0x3EF0002000000000
  %5060 = add nuw nsw i32 %4915, 8
  %5061 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %5060, i32 undef)  ; BufferLoad(srv,index,wot)
  %5062 = extractvalue %dx.types.ResRet.i32 %5061, 0
  %5063 = lshr i32 %5062, 16
  %5064 = uitofp i32 %5063 to float
  %5065 = fmul fast float %5064, 0x3EF0002000000000
  %5066 = fsub fast float %45, %5065
  %5067 = fdiv fast float %5066, %5059
  %5068 = fmul fast float %68, %44
  %5069 = fmul fast float %5068, 4.000000e+02
  %5070 = fmul fast float %45, 4.000000e+02
  %5071 = call float @dx.op.unary.f32(i32 22, float %5069)  ; Frc(value)
  %5072 = call float @dx.op.unary.f32(i32 22, float %5070)  ; Frc(value)
  %5073 = fadd fast float %5071, -5.000000e-01
  %5074 = fadd fast float %5072, -5.000000e-01
  %5075 = fmul fast float %5073, 2.000000e+00
  %5076 = fmul fast float %5074, 2.000000e+00
  %5077 = call float @dx.op.dot2.f32(i32 54, float %5075, float %5076, float %5075, float %5076)  ; Dot2(ax,ay,bx,by)
  %5078 = call float @dx.op.unary.f32(i32 24, float %5077)  ; Sqrt(value)
  %5079 = fmul fast float %5078, 0x4004C77B00000000
  %5080 = fsub fast float 2.000000e+00, %5079
  %5081 = call float @dx.op.unary.f32(i32 7, float %5080)  ; Saturate(value)
  %5082 = fmul fast float %4919, 0x3F924C82A0000000
  %5083 = fmul fast float %4919, 0x3F78278DA0000000
  %5084 = fsub fast float 0x400E470B00000000, %5082
  %5085 = fadd fast float %5084, %5067
  %5086 = fmul fast float %5085, 1.000000e+01
  %5087 = call float @dx.op.unary.f32(i32 7, float %5086)  ; Saturate(value)
  %5088 = fsub fast float 0x3FE286BC80000000, %5083
  %5089 = fadd fast float %5088, %5067
  %5090 = fmul fast float %5089, 1.250000e+00
  %5091 = call float @dx.op.unary.f32(i32 7, float %5090)  ; Saturate(value)
  %5092 = fsub fast float 1.000000e+00, %5091
  %5093 = fmul fast float %5092, %5087
  %5094 = fmul fast float %4919, 0x3F8E317100000000
  %5095 = fsub fast float 0x40079435C0000000, %5094
  %5096 = fadd fast float %5095, %5067
  %5097 = fmul fast float %5096, 0x401AAAAAA0000000
  %5098 = call float @dx.op.unary.f32(i32 7, float %5097)  ; Saturate(value)
  %5099 = fsub fast float 1.000000e+00, %5098
  %5100 = fmul fast float %5099, %5087
  %5101 = fmul fast float %5068, 4.500000e+01
  %5102 = fmul fast float %45, 4.500000e+01
  %5103 = fadd fast float %5102, -5.000000e-01
  %5104 = fmul fast float %5068, 0x4039FB1300000000
  %5105 = fadd fast float %5104, 0xBFE279A720000000
  %5106 = call float @dx.op.unary.f32(i32 27, float %5104)  ; Round_ni(value)
  %5107 = call float @dx.op.unary.f32(i32 27, float %5102)  ; Round_ni(value)
  %5108 = call float @dx.op.unary.f32(i32 27, float %5105)  ; Round_ni(value)
  %5109 = call float @dx.op.unary.f32(i32 27, float %5103)  ; Round_ni(value)
  %5110 = fadd fast float %5106, 5.000000e-01
  %5111 = fadd fast float %5107, 5.000000e-01
  %5112 = fmul fast float %5110, 0x3FFBB67B20000000
  %5113 = fsub fast float %5101, %5112
  %5114 = fsub fast float %5102, %5111
  %5115 = fadd fast float %5108, 1.000000e+00
  %5116 = fmul fast float %5115, 0x3FFBB67B20000000
  %5117 = fsub fast float %5101, %5116
  %5118 = fadd fast float %5102, -1.000000e+00
  %5119 = fsub fast float %5118, %5109
  %5120 = call float @dx.op.dot2.f32(i32 54, float %5113, float %5114, float %5113, float %5114)  ; Dot2(ax,ay,bx,by)
  %5121 = call float @dx.op.dot2.f32(i32 54, float %5117, float %5119, float %5117, float %5119)  ; Dot2(ax,ay,bx,by)
  %5122 = fcmp fast olt float %5120, %5121
  %5123 = fadd fast float %5109, 1.000000e+00
  %5124 = select i1 %5122, float %5113, float %5117
  %5125 = select i1 %5122, float %5114, float %5119
  %5126 = select i1 %5122, float %5110, float %5115
  %5127 = select i1 %5122, float %5111, float %5123
  %5128 = call float @dx.op.unary.f32(i32 6, float %5124)  ; FAbs(value)
  %5129 = call float @dx.op.unary.f32(i32 6, float %5125)  ; FAbs(value)
  %5130 = call float @dx.op.dot2.f32(i32 54, float %5128, float %5129, float 0x3FEBB67B20000000, float 5.000000e-01)  ; Dot2(ax,ay,bx,by)
  %5131 = call float @dx.op.binary.f32(i32 35, float %5130, float %5129)  ; FMax(a,b)
  %5132 = fmul fast float %5126, 0x3F96C16C20000000
  %5133 = fmul fast float %5127, 0x3F96C16C20000000
  %5134 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %5135 = extractvalue %dx.types.CBufRet.f32 %5134, 3
  %5136 = call float @dx.op.unary.f32(i32 22, float %5135)  ; Frc(value)
  %5137 = fmul fast float %5136, 0x3FC99999A0000000
  %5138 = fadd fast float %5137, %5133
  %5139 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %14, float %5132, float %5138, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5140 = extractvalue %dx.types.ResRet.f32 %5139, 0
  %5141 = fsub fast float 0x3FEEB851E0000000, %5093
  %5142 = fmul fast float %5141, 0x3FF0AAAAC0000000
  %5143 = call float @dx.op.unary.f32(i32 7, float %5142)  ; Saturate(value)
  %5144 = fmul fast float %5143, 2.000000e+00
  %5145 = fsub fast float 3.000000e+00, %5144
  %5146 = fmul fast float %5143, %5143
  %5147 = fmul fast float %5146, %5145
  %5148 = fadd fast float %5131, 0xBFE0A3D700000000
  %5149 = fadd fast float %5148, %5147
  %5150 = fmul fast float %5149, -2.000000e+01
  %5151 = call float @dx.op.unary.f32(i32 7, float %5150)  ; Saturate(value)
  %5152 = fmul fast float %5151, 2.000000e+00
  %5153 = fsub fast float 3.000000e+00, %5152
  %5154 = fmul fast float %5148, -2.000000e+01
  %5155 = call float @dx.op.unary.f32(i32 7, float %5154)  ; Saturate(value)
  %5156 = fmul fast float %5155, 2.000000e+00
  %5157 = fsub fast float 3.000000e+00, %5156
  %5158 = fmul fast float %5155, %5155
  %5159 = fmul fast float %5158, %5157
  %5160 = fsub fast float 1.000000e+00, %5159
  %5161 = fmul fast float %5160, 0x3FE51EB860000000
  %5162 = fmul fast float %5131, 0x3FC99999A0000000
  %5163 = fsub fast float 1.000000e+00, %5131
  %5164 = fmul fast float %5151, %5151
  %5165 = fmul fast float %5164, %5131
  %5166 = fmul fast float %5165, %5153
  %5167 = fadd fast float %5166, %5163
  %5168 = fmul fast float %5167, %5140
  %5169 = fsub fast float 0x3FEEB851E0000000, %5100
  %5170 = fmul fast float %5169, 0x3FF0AAAAC0000000
  %5171 = call float @dx.op.unary.f32(i32 7, float %5170)  ; Saturate(value)
  %5172 = fmul fast float %5171, 2.000000e+00
  %5173 = fsub fast float 3.000000e+00, %5172
  %5174 = fmul fast float %5171, %5171
  %5175 = fmul fast float %5174, %5173
  %5176 = fadd fast float %5148, %5175
  %5177 = fmul fast float %5176, -2.000000e+01
  %5178 = call float @dx.op.unary.f32(i32 7, float %5177)  ; Saturate(value)
  %5179 = fmul fast float %5178, 2.000000e+00
  %5180 = fsub fast float 3.000000e+00, %5179
  %5181 = fmul fast float %5178, %5178
  %5182 = fmul fast float %5181, %5131
  %5183 = fmul fast float %5182, %5180
  %5184 = fadd fast float %5183, %5163
  %5185 = fmul fast float %5184, %5140
  %5186 = fadd fast float %5161, %5162
  %5187 = fadd fast float %5186, %5185
  %5188 = fmul fast float %5100, 2.000000e+00
  %5189 = fmul fast float %5188, %5187
  %5190 = fadd fast float %5186, %5168
  %5191 = fmul fast float %5190, %5093
  %5192 = fadd fast float %5191, %5189
  %5193 = fmul fast float %5081, 0x3FD99999A0000000
  %5194 = fmul fast float %5053, 0x3FE3333340000000
  %5195 = fadd fast float %5194, 0x3FE3333340000000
  %5196 = fadd fast float %5195, %5193
  %5197 = fmul fast float %5192, %5196
  %5198 = call float @dx.op.unary.f32(i32 23, float %5197)  ; Log(value)
  %5199 = fmul fast float %5198, 3.000000e+00
  %5200 = call float @dx.op.unary.f32(i32 21, float %5199)  ; Exp(value)
  %5201 = fmul fast float %5200, 0x3FF112D7C0000000
  %5202 = fmul fast float %5200, 0xBFF8A1CB00000000
  %5203 = fmul fast float %5202, %5201
  %5204 = call float @dx.op.unary.f32(i32 21, float %5203)  ; Exp(value)
  %5205 = fmul fast float %5200, 0x3FEDDA5080000000
  %5206 = fmul fast float %5200, 0xBFB16E5400000000
  %5207 = fmul fast float %5200, 0xBFEBAC8600000000
  %5208 = fmul fast float %5205, %5204
  %5209 = fmul fast float %5206, %5204
  %5210 = fmul fast float %5207, %5204
  %5211 = fadd fast float %5208, %5201
  %5212 = fadd fast float %5209, %5201
  %5213 = fadd fast float %5210, %5201
  %5214 = call float @dx.op.unary.f32(i32 20, float %5211)  ; Htan(value)
  %5215 = call float @dx.op.unary.f32(i32 20, float %5212)  ; Htan(value)
  %5216 = call float @dx.op.unary.f32(i32 20, float %5213)  ; Htan(value)
  %5217 = fmul fast float %5214, 5.000000e+00
  %5218 = fmul fast float %5215, 5.000000e+00
  %5219 = fmul fast float %5216, 5.000000e+00
  %5220 = call float @dx.op.unary.f32(i32 7, float %5217)  ; Saturate(value)
  %5221 = call float @dx.op.unary.f32(i32 7, float %5218)  ; Saturate(value)
  %5222 = call float @dx.op.unary.f32(i32 7, float %5219)  ; Saturate(value)
  %5223 = fmul fast float %5215, 3.000000e+00
  %5224 = call float @dx.op.unary.f32(i32 7, float %5223)  ; Saturate(value)
  br label %5478

; <label>:5225                                    ; preds = %621
  br i1 %116, label %5226, label %5478, !dx.controlflow.hints !58

; <label>:5226                                    ; preds = %5225
  %5227 = and i32 %636, 511
  %5228 = mul nuw nsw i32 %5227, 20
  %5229 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %5228, i32 undef)  ; BufferLoad(srv,index,wot)
  %5230 = extractvalue %dx.types.ResRet.i32 %5229, 0
  %5231 = and i32 %5230, 255
  %5232 = uitofp i32 %5231 to float
  %5233 = lshr i32 %5230, 8
  %5234 = and i32 %5233, 255
  %5235 = uitofp i32 %5234 to float
  %5236 = lshr i32 %5230, 16
  %5237 = and i32 %5236, 255
  %5238 = uitofp i32 %5237 to float
  %5239 = lshr i32 %5230, 24
  %5240 = uitofp i32 %5239 to float
  %5241 = fmul fast float %5240, 0x3F70101020000000
  %5242 = fsub fast float 1.000000e+00, %5241
  %5243 = add nuw nsw i32 %5228, 12
  %5244 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %5243, i32 undef)  ; BufferLoad(srv,index,wot)
  %5245 = extractvalue %dx.types.ResRet.i32 %5244, 0
  %5246 = and i32 %5245, 65535
  %5247 = uitofp i32 %5246 to float
  %5248 = fmul fast float %5247, 0x3EF0002000000000
  %5249 = lshr i32 %5245, 16
  %5250 = uitofp i32 %5249 to float
  %5251 = fmul fast float %5250, 0x3EF0002000000000
  %5252 = add nuw nsw i32 %5228, 8
  %5253 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %5252, i32 undef)  ; BufferLoad(srv,index,wot)
  %5254 = extractvalue %dx.types.ResRet.i32 %5253, 0
  %5255 = and i32 %5254, 65535
  %5256 = uitofp i32 %5255 to float
  %5257 = fmul fast float %5256, 0x3EF0002000000000
  %5258 = lshr i32 %5254, 16
  %5259 = uitofp i32 %5258 to float
  %5260 = fmul fast float %5259, 0x3EF0002000000000
  %5261 = fsub fast float %44, %5257
  %5262 = fdiv fast float %5261, %5248
  %5263 = fsub fast float %45, %5260
  %5264 = fdiv fast float %5263, %5251
  %5265 = add nuw nsw i32 %5228, 16
  %5266 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %5265, i32 undef)  ; BufferLoad(srv,index,wot)
  %5267 = extractvalue %dx.types.ResRet.f32 %5266, 0
  %5268 = fdiv fast float 2.400000e+02, %5267
  %5269 = call float @dx.op.unary.f32(i32 7, float %5268)  ; Saturate(value)
  %5270 = fmul fast float %5269, 4.000000e+01
  %5271 = fptoui float %5270 to i32
  %5272 = uitofp i32 %63 to float
  %5273 = uitofp i32 %64 to float
  %5274 = fptoui float %5272 to i32
  %5275 = fptoui float %5273 to i32
  %5276 = lshr i32 %5275, 2
  %5277 = mul i32 %84, %5276
  %5278 = lshr i32 %5274, 3
  %5279 = add i32 %81, %5278
  %5280 = add i32 %5279, %100
  %5281 = add i32 %5280, %5277
  %5282 = shl i32 %5281, 2
  %5283 = shl i32 %5275, 3
  %5284 = and i32 %5283, 24
  %5285 = and i32 %5274, 7
  %5286 = or i32 %5284, %5285
  %5287 = shl i32 1, %5286
  %5288 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %5282, i32 undef)  ; BufferLoad(srv,index,wot)
  %5289 = extractvalue %dx.types.ResRet.i32 %5288, 0
  %5290 = and i32 %5289, %5287
  %5291 = icmp ne i32 %5290, 0
  %5292 = icmp eq i32 %5271, 0
  br i1 %5292, label %5409, label %5293, !dx.controlflow.hints !52

; <label>:5293                                    ; preds = %5226
  %5294 = uitofp i32 %5271 to float
  %5295 = fmul fast float %65, 5.000000e-01
  %5296 = fmul fast float %5295, %5294
  %5297 = fmul fast float %66, 5.000000e-01
  %5298 = fmul fast float %5297, %5294
  %5299 = call float @dx.op.binary.f32(i32 35, float 5.000000e-01, float %5296)  ; FMax(a,b)
  %5300 = call float @dx.op.binary.f32(i32 35, float 5.000000e-01, float %5298)  ; FMax(a,b)
  br label %5301

; <label>:5301                                    ; preds = %5396, %5293
  %5302 = phi float [ 0.000000e+00, %5293 ], [ %5399, %5396 ]
  %5303 = phi i32 [ 0, %5293 ], [ %5400, %5396 ]
  %5304 = fmul fast float %44, 0x3FF280E1E0000000
  %5305 = fmul fast float %45, 0x3FF280E1E0000000
  %5306 = sitofp i32 %5303 to float
  %5307 = fmul fast float %5306, 0x3FB99999A0000000
  %5308 = fadd fast float %5307, %5304
  %5309 = fadd fast float %5307, %5305
  %5310 = fmul fast float %5308, 1.024000e+03
  %5311 = fmul fast float %5309, 1.024000e+03
  %5312 = fadd fast float %5310, -5.120000e+02
  %5313 = fadd fast float %5311, -5.120000e+02
  %5314 = fmul fast float %5308, 0x4081BEDF00000000
  %5315 = fadd fast float %5314, 0xC071BEDF00000000
  %5316 = call float @dx.op.unary.f32(i32 22, float %5315)  ; Frc(value)
  %5317 = fmul fast float %5312, %5316
  %5318 = fadd fast float %5317, %5313
  %5319 = fmul fast float %5309, 0x4073BEBE20000000
  %5320 = fadd fast float %5319, 0xC063BEBE20000000
  %5321 = call float @dx.op.unary.f32(i32 22, float %5320)  ; Frc(value)
  %5322 = fmul fast float %5313, %5321
  %5323 = fadd fast float %5322, %5312
  %5324 = fmul fast float %5318, %5323
  %5325 = call float @dx.op.unary.f32(i32 22, float %5324)  ; Frc(value)
  %5326 = fmul fast float %5325, 2.000000e+00
  %5327 = fadd fast float %5326, -1.000000e+00
  %5328 = fmul fast float %5327, %5299
  %5329 = fmul fast float %44, 0x3FEB681740000000
  %5330 = fmul fast float %45, 0x3FEB681740000000
  %5331 = fmul fast float %5306, 0x3FC99999A0000000
  %5332 = fadd fast float %5331, 1.250000e-01
  %5333 = fadd fast float %5332, %5329
  %5334 = fadd fast float %5332, %5330
  %5335 = fmul fast float %5333, 1.024000e+03
  %5336 = fmul fast float %5334, 1.024000e+03
  %5337 = fadd fast float %5335, -5.120000e+02
  %5338 = fadd fast float %5336, -5.120000e+02
  %5339 = fmul fast float %5333, 0x4081BEDF00000000
  %5340 = fadd fast float %5339, 0xC071BEDF00000000
  %5341 = call float @dx.op.unary.f32(i32 22, float %5340)  ; Frc(value)
  %5342 = fmul fast float %5337, %5341
  %5343 = fadd fast float %5342, %5338
  %5344 = fmul fast float %5334, 0x4073BEBE20000000
  %5345 = fadd fast float %5344, 0xC063BEBE20000000
  %5346 = call float @dx.op.unary.f32(i32 22, float %5345)  ; Frc(value)
  %5347 = fmul fast float %5338, %5346
  %5348 = fadd fast float %5347, %5337
  %5349 = fmul fast float %5343, %5348
  %5350 = call float @dx.op.unary.f32(i32 22, float %5349)  ; Frc(value)
  %5351 = fmul fast float %5350, 2.000000e+00
  %5352 = fadd fast float %5351, -1.000000e+00
  %5353 = fmul fast float %5352, %5300
  %5354 = fptosi float %5328 to i32
  %5355 = sitofp i32 %5354 to float
  %5356 = fadd fast float %5355, %5272
  %5357 = fptosi float %5356 to i32
  %5358 = fptosi float %5353 to i32
  %5359 = sitofp i32 %5358 to float
  %5360 = fadd fast float %5359, %5273
  %5361 = fptosi float %5360 to i32
  %5362 = or i32 %5361, %5357
  %5363 = icmp slt i32 %5362, 0
  %5364 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %5365 = extractvalue %dx.types.CBufRet.f32 %5364, 0
  %5366 = extractvalue %dx.types.CBufRet.f32 %5364, 1
  %5367 = fptosi float %5365 to i32
  %5368 = fptosi float %5366 to i32
  %5369 = icmp sge i32 %5357, %5367
  %5370 = icmp sge i32 %5361, %5368
  %5371 = or i1 %5369, %5370
  %5372 = or i1 %5363, %5371
  br i1 %5372, label %5396, label %5373, !dx.controlflow.hints !49

; <label>:5373                                    ; preds = %5301
  %5374 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %18, i32 51)  ; CBufferLoadLegacy(handle,regIndex)
  %5375 = extractvalue %dx.types.CBufRet.i32 %5374, 1
  %5376 = shl i32 %5375, 2
  %5377 = extractvalue %dx.types.CBufRet.i32 %5374, 3
  %5378 = shl i32 %5377, 1
  %5379 = lshr i32 %5361, 2
  %5380 = extractvalue %dx.types.CBufRet.i32 %5374, 2
  %5381 = mul i32 %5380, %5379
  %5382 = lshr i32 %5357, 3
  %5383 = add i32 %5376, %5382
  %5384 = add i32 %5383, %5378
  %5385 = add i32 %5384, %5381
  %5386 = shl i32 %5385, 2
  %5387 = shl i32 %5361, 3
  %5388 = and i32 %5387, 24
  %5389 = and i32 %5357, 7
  %5390 = or i32 %5388, %5389
  %5391 = shl i32 1, %5390
  %5392 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %5386, i32 undef)  ; BufferLoad(srv,index,wot)
  %5393 = extractvalue %dx.types.ResRet.i32 %5392, 0
  %5394 = and i32 %5393, %5391
  %5395 = icmp ne i32 %5394, 0
  br label %5396

; <label>:5396                                    ; preds = %5373, %5301
  %5397 = phi i1 [ %5395, %5373 ], [ false, %5301 ]
  %5398 = uitofp i1 %5397 to float
  %5399 = fadd fast float %5398, %5302
  %5400 = add nuw nsw i32 %5303, 1
  %5401 = icmp eq i32 %5400, 5
  br i1 %5401, label %5402, label %5301

; <label>:5402                                    ; preds = %5396
  %5403 = uitofp i1 %5291 to float
  %5404 = fmul fast float %5403, 0x3FC99999A0000000
  %5405 = fmul fast float %5404, %5399
  %5406 = fadd fast float %5405, -5.000000e-01
  %5407 = fmul fast float %5406, 2.000000e+00
  %5408 = call float @dx.op.unary.f32(i32 7, float %5407)  ; Saturate(value)
  br label %5409

; <label>:5409                                    ; preds = %5402, %5226
  %5410 = phi float [ %5408, %5402 ], [ 0.000000e+00, %5226 ]
  %5411 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %5412 = extractvalue %dx.types.CBufRet.f32 %5411, 3
  %5413 = fmul fast float %5412, 0x3F9EB851E0000000
  %5414 = fadd fast float %5413, %5264
  %5415 = call float @dx.op.unary.f32(i32 22, float %5414)  ; Frc(value)
  %5416 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %14, float %5262, float %5415, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5417 = extractvalue %dx.types.ResRet.f32 %5416, 3
  %5418 = call float @dx.op.unary.f32(i32 7, float %5410)  ; Saturate(value)
  %5419 = fmul fast float %5417, %5242
  %5420 = fsub fast float %5418, %5419
  %5421 = call float @dx.op.unary.f32(i32 7, float %5420)  ; Saturate(value)
  %5422 = fmul fast float %5417, 1.250000e+00
  %5423 = fsub fast float %5418, %5422
  %5424 = call float @dx.op.unary.f32(i32 7, float %5423)  ; Saturate(value)
  %5425 = fmul fast float %5424, 0x3FD3333340000000
  %5426 = fadd fast float %5425, %5421
  %5427 = fmul fast float %5426, %5426
  %5428 = fmul fast float %5427, %5426
  %5429 = call float @dx.op.unary.f32(i32 7, float %5428)  ; Saturate(value)
  %5430 = fmul fast float %5429, 0x3FEBD70A40000000
  %5431 = fsub fast float 1.000000e+00, %5430
  %5432 = call float @dx.op.unary.f32(i32 7, float %44)  ; Saturate(value)
  %5433 = call float @dx.op.unary.f32(i32 7, float %45)  ; Saturate(value)
  %5434 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %15, float %5432, float %5433, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5435 = extractvalue %dx.types.ResRet.f32 %5434, 0
  %5436 = bitcast float %5435 to i32
  %5437 = lshr i32 %5436, 8
  %5438 = and i32 %5436, 255
  %5439 = and i32 %5437, 255
  %5440 = uitofp i32 %5438 to float
  %5441 = uitofp i32 %5439 to float
  %5442 = fmul fast float %5440, 0x3F80101020000000
  %5443 = fmul fast float %5441, 0x3F80101020000000
  %5444 = fadd fast float %5442, -1.000000e+00
  %5445 = fadd fast float %5443, -1.000000e+00
  %5446 = call float @dx.op.unary.f32(i32 6, float %5444)  ; FAbs(value)
  %5447 = fsub fast float 1.000000e+00, %5446
  %5448 = call float @dx.op.unary.f32(i32 6, float %5445)  ; FAbs(value)
  %5449 = fsub fast float %5447, %5448
  %5450 = fsub fast float -0.000000e+00, %5449
  %5451 = call float @dx.op.binary.f32(i32 35, float %5450, float 0.000000e+00)  ; FMax(a,b)
  %5452 = fcmp fast ogt float %5444, 0.000000e+00
  %5453 = fsub fast float -0.000000e+00, %5451
  %5454 = select i1 %5452, float %5453, float %5451
  %5455 = fadd fast float %5454, %5444
  %5456 = fcmp fast ogt float %5445, 0.000000e+00
  %5457 = select i1 %5456, float %5453, float %5451
  %5458 = fadd fast float %5457, %5445
  %5459 = call float @dx.op.dot3.f32(i32 55, float %5455, float %5458, float %5449, float %5455, float %5458, float %5449)  ; Dot3(ax,ay,az,bx,by,bz)
  %5460 = call float @dx.op.unary.f32(i32 25, float %5459)  ; Rsqrt(value)
  %5461 = fmul fast float %5455, %5460
  %5462 = fmul fast float %5458, %5460
  %5463 = fmul fast float %5460, %5449
  %5464 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 101)  ; CBufferLoadLegacy(handle,regIndex)
  %5465 = extractvalue %dx.types.CBufRet.f32 %5464, 0
  %5466 = extractvalue %dx.types.CBufRet.f32 %5464, 1
  %5467 = extractvalue %dx.types.CBufRet.f32 %5464, 2
  %5468 = call float @dx.op.dot3.f32(i32 55, float %5461, float %5462, float %5463, float %5465, float %5466, float %5467)  ; Dot3(ax,ay,az,bx,by,bz)
  %5469 = fadd fast float %5468, 2.500000e-01
  %5470 = call float @dx.op.unary.f32(i32 6, float %5469)  ; FAbs(value)
  %5471 = fsub fast float 1.000000e+00, %5470
  %5472 = fmul fast float %5232, 0x3F7278DF60000000
  %5473 = fmul fast float %5235, 0x3F7278DF60000000
  %5474 = fmul fast float %5238, 0x3F7278DF60000000
  %5475 = fmul fast float %5472, %5471
  %5476 = fmul fast float %5473, %5471
  %5477 = fmul fast float %5474, %5471
  br label %5478

; <label>:5478                                    ; preds = %5409, %5225, %4913, %4884, %2816, %2805, %2444, %2215, %1979, %1977, %1727, %1613, %990, %987, %973, %971, %621, %616
  %5479 = phi float [ %5220, %4913 ], [ %2450, %2444 ], [ %617, %1727 ], [ %2314, %2215 ], [ %1722, %1613 ], [ %1413, %990 ], [ %617, %987 ], [ %617, %616 ], [ %980, %973 ], [ %857, %971 ], [ %1985, %1979 ], [ %1863, %1977 ], [ %2624, %2805 ], [ %4903, %4884 ], [ 0.000000e+00, %2816 ], [ %5475, %5409 ], [ 0.000000e+00, %5225 ], [ 1.000000e+00, %621 ]
  %5480 = phi float [ %5221, %4913 ], [ %2451, %2444 ], [ %618, %1727 ], [ %2315, %2215 ], [ %1723, %1613 ], [ %1414, %990 ], [ %618, %987 ], [ %618, %616 ], [ %982, %973 ], [ %858, %971 ], [ %1987, %1979 ], [ %1864, %1977 ], [ %2625, %2805 ], [ %4904, %4884 ], [ 0.000000e+00, %2816 ], [ %5476, %5409 ], [ 0.000000e+00, %5225 ], [ 0.000000e+00, %621 ]
  %5481 = phi float [ %5222, %4913 ], [ %2452, %2444 ], [ %619, %1727 ], [ %2316, %2215 ], [ %1724, %1613 ], [ %1415, %990 ], [ %619, %987 ], [ %619, %616 ], [ %984, %973 ], [ %859, %971 ], [ %1989, %1979 ], [ %1865, %1977 ], [ %2626, %2805 ], [ %4905, %4884 ], [ 0.000000e+00, %2816 ], [ %5477, %5409 ], [ 0.000000e+00, %5225 ], [ 0.000000e+00, %621 ]
  %5482 = phi float [ %5224, %4913 ], [ %2453, %2444 ], [ %620, %1727 ], [ %2318, %2215 ], [ %1726, %1613 ], [ %1416, %990 ], [ %620, %987 ], [ %620, %616 ], [ %986, %973 ], [ %860, %971 ], [ %1991, %1979 ], [ %1866, %1977 ], [ %2815, %2805 ], [ %4912, %4884 ], [ 0.000000e+00, %2816 ], [ %5431, %5409 ], [ 0.000000e+00, %5225 ], [ 1.000000e+00, %621 ]
  %5483 = phi i32 [ %639, %4913 ], [ %639, %2444 ], [ %639, %1727 ], [ %639, %2215 ], [ %639, %1613 ], [ %639, %990 ], [ %639, %987 ], [ 0, %616 ], [ %639, %973 ], [ %639, %971 ], [ %639, %1979 ], [ %639, %1977 ], [ %639, %2805 ], [ %639, %4884 ], [ %639, %2816 ], [ %639, %5409 ], [ %639, %5225 ], [ %639, %621 ]
  %5484 = phi i32 [ %641, %4913 ], [ %641, %2444 ], [ %641, %1727 ], [ %641, %2215 ], [ %641, %1613 ], [ %641, %990 ], [ %641, %987 ], [ 0, %616 ], [ %641, %973 ], [ %641, %971 ], [ %641, %1979 ], [ %641, %1977 ], [ %641, %2805 ], [ %641, %4884 ], [ %641, %2816 ], [ %641, %5409 ], [ %641, %5225 ], [ %641, %621 ]
  %5485 = phi i32 [ %643, %4913 ], [ %643, %2444 ], [ %643, %1727 ], [ %643, %2215 ], [ %643, %1613 ], [ %643, %990 ], [ %643, %987 ], [ 0, %616 ], [ %643, %973 ], [ %643, %971 ], [ %643, %1979 ], [ %643, %1977 ], [ %643, %2805 ], [ %643, %4884 ], [ %643, %2816 ], [ %643, %5409 ], [ %643, %5225 ], [ %643, %621 ]
  %5486 = fmul fast float %5482, %5479
  %5487 = fmul fast float %5482, %5480
  %5488 = fmul fast float %5482, %5481
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %3, i32 %35, i32 %36, i32 undef, float %5486, float %5487, float %5488, float %5482, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %5489 = fcmp fast ogt float %5482, 0.000000e+00
  %5490 = icmp ne i32 %5485, 0
  %5491 = and i1 %5489, %5490
  %5492 = icmp ne i32 %5483, 0
  %5493 = and i1 %5492, %117
  %5494 = icmp ne i32 %5484, 0
  %5495 = and i1 %116, %5494
  %5496 = or i1 %5493, %5495
  %5497 = and i1 %5491, %5496
  %5498 = select i1 %5497, float 1.000000e+00, float 0.000000e+00
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %35, i32 %36, i32 undef, float %5498, float %5498, float %5498, float %5498, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %5499 = and i1 %5489, %117
  %5500 = zext i1 %5499 to i32
  %5501 = mul i32 %19, 8
  %5502 = add i32 %20, %5501
  %5503 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?gsHudOutlineMask1@@3PAY07$$CAIA.1dim", i32 0, i32 %5502
  store i32 %5500, i32 addrspace(3)* %5503, align 4, !tbaa !59
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %5504 = or i32 %20, %19
  %5505 = icmp ult i32 %5504, 4
  br i1 %5505, label %5506, label %5530, !dx.controlflow.hints !63

; <label>:5506                                    ; preds = %5478
  %5507 = shl i32 %19, 1
  %5508 = shl i32 %20, 1
  %5509 = mul i32 %5507, 8
  %5510 = add i32 %5508, %5509
  %5511 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?gsHudOutlineMask1@@3PAY07$$CAIA.1dim", i32 0, i32 %5510
  %5512 = load i32, i32 addrspace(3)* %5511, align 4, !tbaa !59
  %5513 = or i32 %5508, 1
  %5514 = mul i32 %5507, 8
  %5515 = add i32 %5513, %5514
  %5516 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?gsHudOutlineMask1@@3PAY07$$CAIA.1dim", i32 0, i32 %5515
  %5517 = load i32, i32 addrspace(3)* %5516, align 4, !tbaa !59
  %5518 = or i32 %5507, 1
  %5519 = mul i32 %5518, 8
  %5520 = add i32 %5513, %5519
  %5521 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?gsHudOutlineMask1@@3PAY07$$CAIA.1dim", i32 0, i32 %5520
  %5522 = load i32, i32 addrspace(3)* %5521, align 4, !tbaa !59
  %5523 = mul i32 %5518, 8
  %5524 = add i32 %5508, %5523
  %5525 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?gsHudOutlineMask1@@3PAY07$$CAIA.1dim", i32 0, i32 %5524
  %5526 = load i32, i32 addrspace(3)* %5525, align 4, !tbaa !59
  %5527 = or i32 %5517, %5512
  %5528 = or i32 %5527, %5522
  %5529 = or i32 %5528, %5526
  store i32 %5529, i32 addrspace(3)* %5503, align 4, !tbaa !59
  br label %5530

; <label>:5530                                    ; preds = %5506, %5478
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %5531 = icmp ult i32 %5504, 2
  br i1 %5531, label %5532, label %5562, !dx.controlflow.hints !64

; <label>:5532                                    ; preds = %5530
  %5533 = shl i32 %19, 1
  %5534 = shl i32 %20, 1
  %5535 = mul i32 %5533, 8
  %5536 = add i32 %5534, %5535
  %5537 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?gsHudOutlineMask1@@3PAY07$$CAIA.1dim", i32 0, i32 %5536
  %5538 = load i32, i32 addrspace(3)* %5537, align 4, !tbaa !59
  %5539 = or i32 %5534, 1
  %5540 = mul i32 %5533, 8
  %5541 = add i32 %5539, %5540
  %5542 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?gsHudOutlineMask1@@3PAY07$$CAIA.1dim", i32 0, i32 %5541
  %5543 = load i32, i32 addrspace(3)* %5542, align 4, !tbaa !59
  %5544 = or i32 %5533, 1
  %5545 = mul i32 %5544, 8
  %5546 = add i32 %5539, %5545
  %5547 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?gsHudOutlineMask1@@3PAY07$$CAIA.1dim", i32 0, i32 %5546
  %5548 = load i32, i32 addrspace(3)* %5547, align 4, !tbaa !59
  %5549 = mul i32 %5544, 8
  %5550 = add i32 %5534, %5549
  %5551 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?gsHudOutlineMask1@@3PAY07$$CAIA.1dim", i32 0, i32 %5550
  %5552 = load i32, i32 addrspace(3)* %5551, align 4, !tbaa !59
  %5553 = or i32 %5543, %5538
  %5554 = or i32 %5553, %5548
  %5555 = or i32 %5554, %5552
  %5556 = icmp ne i32 %5555, 0
  %5557 = select i1 %5556, float 1.000000e+00, float 0.000000e+00
  %5558 = lshr i32 %35, 2
  %5559 = lshr i32 %36, 2
  %5560 = add i32 %5558, %19
  %5561 = add i32 %5559, %20
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %5560, i32 %5561, i32 undef, float %5557, float %5557, float %5557, float %5557, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %5562

; <label>:5562                                    ; preds = %5532, %5530, %0
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
!dx.entryPoints = !{!30}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !19, !23, !27}
!5 = !{!6, !8, !10, !11, !12, !13, !14, !15, !17, !18}
!6 = !{i32 0, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 0, i32 1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, %"class.Texture2D<unsigned int>"* undef, !"", i32 0, i32 8, i32 1, i32 2, i32 0, !9}
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
!19 = !{!20, !21, !22}
!20 = !{i32 0, %"class.RWTexture2D<vector<float, 4> >"* undef, !"", i32 0, i32 0, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!21 = !{i32 1, %"class.RWTexture2D<float>"* undef, !"", i32 0, i32 1, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!22 = !{i32 2, %"class.RWTexture2D<float>"* undef, !"", i32 0, i32 2, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!23 = !{!24, !25, !26}
!24 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!25 = !{i32 1, %CsHudOutlineConstants* undef, !"", i32 0, i32 0, i32 1, i32 336, null}
!26 = !{i32 2, %CsHudOutlineIndirectArgsConstants* undef, !"", i32 0, i32 1, i32 1, i32 16, null}
!27 = !{!28, !29}
!28 = !{i32 0, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!29 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!30 = !{void ()* @cs_hudoutline, !"cs_hudoutline", null, !4, !31}
!31 = !{i32 0, i64 272, i32 4, !32}
!32 = !{i32 8, i32 8, i32 1}
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
!43 = distinct !{!43, !"dx.controlflow.hints", i32 2}
!44 = distinct !{!44, !"dx.controlflow.hints", i32 2}
!45 = distinct !{!45, !"dx.controlflow.hints", i32 1}
!46 = distinct !{!46, !"dx.controlflow.hints", i32 1}
!47 = distinct !{!47, !"dx.controlflow.hints", i32 1}
!48 = distinct !{!48, !"dx.controlflow.hints", i32 1}
!49 = distinct !{!49, !"dx.controlflow.hints", i32 2}
!50 = distinct !{!50, !"dx.controlflow.hints", i32 1}
!51 = distinct !{!51, !"dx.controlflow.hints", i32 2}
!52 = distinct !{!52, !"dx.controlflow.hints", i32 1}
!53 = distinct !{!53, !"dx.controlflow.hints", i32 2}
!54 = distinct !{!54, !"dx.controlflow.hints", i32 2}
!55 = distinct !{!55, !"dx.controlflow.hints", i32 1}
!56 = distinct !{!56, !"dx.controlflow.hints", i32 1}
!57 = distinct !{!57, !"dx.controlflow.hints", i32 2}
!58 = distinct !{!58, !"dx.controlflow.hints", i32 2}
!59 = !{!60, !60, i64 0}
!60 = !{!"int", !61, i64 0}
!61 = !{!"omnipotent char", !62, i64 0}
!62 = !{!"Simple C/C++ TBAA"}
!63 = distinct !{!63, !"dx.controlflow.hints", i32 2}
!64 = distinct !{!64, !"dx.controlflow.hints", i32 2}

