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
; shader hash: 548051c0f37a706d9251b5734d637d89
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
  br i1 %27, label %28, label %5252, !dx.controlflow.hints !33

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
  %83 = shl i32 %82, 1
  %84 = lshr i32 %64, 2
  %85 = extractvalue %dx.types.CBufRet.i32 %79, 2
  %86 = mul i32 %85, %84
  %87 = lshr i32 %63, 3
  %88 = add i32 %81, %87
  %89 = add i32 %88, %83
  %90 = add i32 %89, %86
  %91 = shl i32 %90, 2
  %92 = shl i32 %64, 3
  %93 = and i32 %92, 24
  %94 = and i32 %63, 7
  %95 = or i32 %93, %94
  %96 = shl i32 1, %95
  %97 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %91, i32 undef)  ; BufferLoad(srv,index,wot)
  %98 = extractvalue %dx.types.ResRet.i32 %97, 0
  %99 = and i32 %98, %96
  %100 = icmp eq i32 %99, 0
  %101 = mul i32 %82, 3
  %102 = add i32 %88, %101
  %103 = add i32 %102, %86
  %104 = shl i32 %103, 2
  %105 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %104, i32 undef)  ; BufferLoad(srv,index,wot)
  %106 = extractvalue %dx.types.ResRet.i32 %105, 0
  %107 = and i32 %106, %96
  %108 = icmp ne i32 %107, 0
  %109 = xor i1 %108, true
  %110 = icmp ugt i32 %30, 268435455
  br i1 %110, label %111, label %608, !dx.controlflow.hints !34

; <label>:111                                     ; preds = %28
  %112 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %10, i32 0, i32 %35, i32 %36, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %113 = extractvalue %dx.types.ResRet.f32 %112, 0
  %114 = fcmp fast ogt float %113, -1.000000e+00
  %115 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %116 = extractvalue %dx.types.CBufRet.f32 %115, 1
  %117 = select i1 %114, float %116, float 1.000000e+00
  %118 = fadd fast float %113, 1.000000e+00
  %119 = fmul fast float %117, %118
  %120 = call float @dx.op.unary.f32(i32 6, float %119)  ; FAbs(value)
  %121 = extractvalue %dx.types.CBufRet.f32 %115, 3
  %122 = fcmp ult float %120, %121
  %123 = fcmp uge float %113, -1.000000e+00
  %124 = and i1 %123, %122
  br i1 %124, label %125, label %608, !dx.controlflow.hints !35

; <label>:125                                     ; preds = %111
  %126 = fmul fast float %44, 2.000000e+00
  %127 = fmul fast float %45, 2.000000e+00
  %128 = fsub fast float 1.000000e+00, %126
  %129 = fsub fast float 1.000000e+00, %127
  %130 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %131 = extractvalue %dx.types.CBufRet.f32 %130, 0
  %132 = extractvalue %dx.types.CBufRet.f32 %130, 1
  %133 = extractvalue %dx.types.CBufRet.f32 %130, 2
  %134 = fmul fast float %131, %128
  %135 = fmul fast float %132, %128
  %136 = fmul fast float %133, %128
  %137 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %138 = extractvalue %dx.types.CBufRet.f32 %137, 0
  %139 = extractvalue %dx.types.CBufRet.f32 %137, 1
  %140 = extractvalue %dx.types.CBufRet.f32 %137, 2
  %141 = fmul fast float %138, %129
  %142 = fmul fast float %139, %129
  %143 = fmul fast float %140, %129
  %144 = fadd fast float %141, %134
  %145 = fadd fast float %142, %135
  %146 = fadd fast float %143, %136
  %147 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %148 = extractvalue %dx.types.CBufRet.f32 %147, 0
  %149 = extractvalue %dx.types.CBufRet.f32 %147, 1
  %150 = extractvalue %dx.types.CBufRet.f32 %147, 2
  %151 = fadd fast float %144, %148
  %152 = fadd fast float %145, %149
  %153 = fadd fast float %146, %150
  %154 = fmul fast float %151, %151
  %155 = fmul fast float %152, %152
  %156 = fadd fast float %154, %155
  %157 = fmul fast float %153, %153
  %158 = fadd fast float %156, %157
  %159 = call float @dx.op.unary.f32(i32 24, float %158)  ; Sqrt(value)
  %160 = fdiv fast float 1.000000e+00, %159
  %161 = fmul fast float %151, %160
  %162 = fmul fast float %152, %160
  %163 = fmul fast float %153, %160
  %164 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %165 = extractvalue %dx.types.CBufRet.f32 %164, 0
  %166 = extractvalue %dx.types.CBufRet.f32 %164, 1
  %167 = extractvalue %dx.types.CBufRet.f32 %164, 2
  %168 = fmul fast float %165, 9.687500e-01
  %169 = fmul fast float %166, 9.687500e-01
  %170 = fmul fast float %167, 9.687500e-01
  %171 = fadd fast float %168, 1.562500e-02
  %172 = fadd fast float %169, 1.562500e-02
  %173 = fadd fast float %170, 1.562500e-02
  %174 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %14, float %171, float %172, float %173, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %175 = extractvalue %dx.types.ResRet.f32 %174, 0
  %176 = extractvalue %dx.types.ResRet.f32 %174, 1
  %177 = extractvalue %dx.types.ResRet.f32 %174, 2
  %178 = fmul fast float %159, %120
  %179 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %18, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %180 = extractvalue %dx.types.CBufRet.i32 %179, 0
  %181 = icmp eq i32 %180, 0
  br i1 %181, label %391, label %182

; <label>:182                                     ; preds = %125
  br label %183

; <label>:183                                     ; preds = %384, %182
  %184 = phi float [ %385, %384 ], [ 0.000000e+00, %182 ]
  %185 = phi i32 [ %386, %384 ], [ 0, %182 ]
  %186 = add i32 %185, 171
  %187 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 %186)  ; CBufferLoadLegacy(handle,regIndex)
  %188 = extractvalue %dx.types.CBufRet.f32 %187, 2
  %189 = extractvalue %dx.types.CBufRet.f32 %187, 0
  %190 = extractvalue %dx.types.CBufRet.f32 %187, 1
  %191 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %192 = extractvalue %dx.types.CBufRet.f32 %191, 0
  %193 = extractvalue %dx.types.CBufRet.f32 %191, 1
  %194 = fsub fast float %189, %192
  %195 = fsub fast float %190, %193
  %196 = fsub fast float -0.000000e+00, %194
  %197 = fsub fast float -0.000000e+00, %195
  %198 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %161, float %162, float %163)  ; Dot3(ax,ay,az,bx,by,bz)
  %199 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %196, float %197, float 0.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %200 = fmul fast float %198, %198
  %201 = fsub fast float 1.000000e+00, %200
  %202 = call float @dx.op.dot3.f32(i32 55, float %196, float %197, float 0.000000e+00, float %161, float %162, float %163)  ; Dot3(ax,ay,az,bx,by,bz)
  %203 = fmul fast float %199, %198
  %204 = fsub fast float %202, %203
  %205 = call float @dx.op.dot3.f32(i32 55, float %196, float %197, float 0.000000e+00, float %196, float %197, float 0.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %206 = fmul fast float %199, %199
  %207 = fmul fast float %188, %188
  %208 = fsub fast float -0.000000e+00, %207
  %209 = fsub fast float %208, %206
  %210 = fadd fast float %209, %205
  %211 = fmul fast float %204, %204
  %212 = fmul fast float %210, %201
  %213 = fsub fast float %211, %212
  %214 = fcmp fast ult float %213, 0.000000e+00
  br i1 %214, label %384, label %215, !dx.controlflow.hints !36

; <label>:215                                     ; preds = %183
  %216 = call float @dx.op.unary.f32(i32 24, float %213)  ; Sqrt(value)
  %217 = fsub fast float -0.000000e+00, %204
  %218 = fsub fast float %217, %216
  %219 = fsub fast float %216, %204
  %220 = fdiv fast float %218, %201
  %221 = fdiv fast float %219, %201
  %222 = fcmp fast ole float %220, 0.000000e+00
  %223 = fcmp fast ole float %221, 0.000000e+00
  %224 = and i1 %222, %223
  br i1 %224, label %384, label %225, !dx.controlflow.hints !37

; <label>:225                                     ; preds = %215
  %226 = fmul fast float %220, %161
  %227 = fmul fast float %220, %162
  %228 = fmul fast float %220, %163
  %229 = fmul fast float %221, %161
  %230 = fmul fast float %221, %162
  %231 = fmul fast float %221, %163
  %232 = zext i1 %222 to i32
  %233 = zext i1 %223 to i32
  %234 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %18, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %235 = extractvalue %dx.types.CBufRet.i32 %234, 0
  %236 = icmp eq i32 %235, 0
  br i1 %236, label %281, label %237

; <label>:237                                     ; preds = %225
  br label %238

; <label>:238                                     ; preds = %269, %237
  %239 = phi i32 [ %270, %269 ], [ %232, %237 ]
  %240 = phi i32 [ %271, %269 ], [ %233, %237 ]
  %241 = phi i32 [ %272, %269 ], [ 0, %237 ]
  %242 = icmp eq i32 %185, %241
  br i1 %242, label %269, label %243, !dx.controlflow.hints !38

; <label>:243                                     ; preds = %238
  %244 = add i32 %241, 171
  %245 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 %244)  ; CBufferLoadLegacy(handle,regIndex)
  %246 = extractvalue %dx.types.CBufRet.f32 %245, 2
  %247 = extractvalue %dx.types.CBufRet.f32 %245, 0
  %248 = extractvalue %dx.types.CBufRet.f32 %245, 1
  %249 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %250 = extractvalue %dx.types.CBufRet.f32 %249, 0
  %251 = extractvalue %dx.types.CBufRet.f32 %249, 1
  %252 = fsub fast float %247, %250
  %253 = fsub fast float %248, %251
  %254 = fsub fast float %252, %226
  %255 = fsub fast float %253, %227
  %256 = call float @dx.op.dot2.f32(i32 54, float %254, float %255, float %254, float %255)  ; Dot2(ax,ay,bx,by)
  %257 = fsub fast float %252, %229
  %258 = fsub fast float %253, %230
  %259 = call float @dx.op.dot2.f32(i32 54, float %257, float %258, float %257, float %258)  ; Dot2(ax,ay,bx,by)
  %260 = fmul fast float %246, %246
  %261 = fcmp fast olt float %256, %260
  %262 = fcmp fast olt float %259, %260
  %263 = icmp ne i32 %239, 0
  %264 = or i1 %263, %261
  %265 = zext i1 %264 to i32
  %266 = icmp ne i32 %240, 0
  %267 = or i1 %266, %262
  %268 = zext i1 %267 to i32
  br label %269

; <label>:269                                     ; preds = %243, %238
  %270 = phi i32 [ %239, %238 ], [ %265, %243 ]
  %271 = phi i32 [ %240, %238 ], [ %268, %243 ]
  %272 = add nuw nsw i32 %241, 1
  %273 = icmp eq i32 %270, 0
  %274 = icmp eq i32 %271, 0
  %275 = or i1 %273, %274
  %276 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %18, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %277 = extractvalue %dx.types.CBufRet.i32 %276, 0
  %278 = icmp ult i32 %272, %277
  %279 = and i1 %275, %278
  br i1 %279, label %238, label %280

; <label>:280                                     ; preds = %269
  br label %281

; <label>:281                                     ; preds = %280, %225
  %282 = phi i32 [ %232, %225 ], [ %270, %280 ]
  %283 = phi i32 [ %233, %225 ], [ %271, %280 ]
  br label %284

; <label>:284                                     ; preds = %284, %281
  %285 = phi i32 [ %320, %284 ], [ %232, %281 ]
  %286 = phi i32 [ %330, %284 ], [ %233, %281 ]
  %287 = phi i32 [ %331, %284 ], [ 0, %281 ]
  %288 = add nuw nsw i32 %287, 191
  %289 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 %288)  ; CBufferLoadLegacy(handle,regIndex)
  %290 = extractvalue %dx.types.CBufRet.f32 %289, 0
  %291 = extractvalue %dx.types.CBufRet.f32 %289, 1
  %292 = extractvalue %dx.types.CBufRet.f32 %289, 2
  %293 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %294 = extractvalue %dx.types.CBufRet.f32 %293, 0
  %295 = extractvalue %dx.types.CBufRet.f32 %293, 1
  %296 = extractvalue %dx.types.CBufRet.f32 %293, 2
  %297 = fsub fast float %290, %294
  %298 = fsub fast float %291, %295
  %299 = fsub fast float %292, %296
  %300 = add nuw nsw i32 %287, 195
  %301 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 %300)  ; CBufferLoadLegacy(handle,regIndex)
  %302 = extractvalue %dx.types.CBufRet.f32 %301, 0
  %303 = extractvalue %dx.types.CBufRet.f32 %301, 1
  %304 = extractvalue %dx.types.CBufRet.f32 %301, 2
  %305 = fsub fast float %297, %226
  %306 = fsub fast float %298, %227
  %307 = fsub fast float %299, %228
  %308 = fsub fast float %297, %229
  %309 = fsub fast float %298, %230
  %310 = fsub fast float %299, %231
  %311 = call float @dx.op.unary.f32(i32 6, float %305)  ; FAbs(value)
  %312 = fcmp fast olt float %311, %302
  %313 = call float @dx.op.unary.f32(i32 6, float %306)  ; FAbs(value)
  %314 = fcmp fast olt float %313, %303
  %315 = and i1 %312, %314
  %316 = call float @dx.op.unary.f32(i32 6, float %307)  ; FAbs(value)
  %317 = fcmp fast olt float %316, %304
  %318 = and i1 %315, %317
  %319 = zext i1 %318 to i32
  %320 = or i32 %319, %285
  %321 = call float @dx.op.unary.f32(i32 6, float %308)  ; FAbs(value)
  %322 = fcmp fast olt float %321, %302
  %323 = call float @dx.op.unary.f32(i32 6, float %309)  ; FAbs(value)
  %324 = fcmp fast olt float %323, %303
  %325 = and i1 %322, %324
  %326 = call float @dx.op.unary.f32(i32 6, float %310)  ; FAbs(value)
  %327 = fcmp fast olt float %326, %304
  %328 = and i1 %325, %327
  %329 = zext i1 %328 to i32
  %330 = or i32 %329, %286
  %331 = add nuw nsw i32 %287, 1
  %332 = icmp eq i32 %320, 0
  %333 = icmp eq i32 %330, 0
  %334 = or i1 %332, %333
  %335 = icmp slt i32 %331, 4
  %336 = and i1 %335, %334
  br i1 %336, label %284, label %337

; <label>:337                                     ; preds = %284
  %338 = or i32 %320, %282
  %339 = icmp eq i32 %338, 0
  %340 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %341 = extractvalue %dx.types.CBufRet.f32 %340, 3
  %342 = fcmp fast ogt float %220, 0.000000e+00
  br i1 %342, label %343, label %358, !dx.controlflow.hints !39

; <label>:343                                     ; preds = %337
  %344 = fsub fast float %178, %220
  %345 = fcmp fast ole float %220, %178
  %346 = fcmp fast ole float %344, %341
  %347 = and i1 %345, %346
  %348 = select i1 %347, float 1.000000e+00, float 0.000000e+00
  %349 = fmul fast float %341, -1.500000e+00
  %350 = fsub fast float %344, %341
  %351 = fdiv fast float %350, %349
  %352 = call float @dx.op.unary.f32(i32 7, float %351)  ; Saturate(value)
  %353 = fmul fast float %352, 2.000000e+00
  %354 = fsub fast float 3.000000e+00, %353
  %355 = fmul fast float %352, %352
  %356 = fmul fast float %355, %348
  %357 = fmul fast float %356, %354
  br label %358

; <label>:358                                     ; preds = %343, %337
  %359 = phi float [ %357, %343 ], [ 0.000000e+00, %337 ]
  %360 = select i1 %339, float %359, float 0.000000e+00
  %361 = fadd fast float %360, %184
  %362 = or i32 %330, %283
  %363 = icmp eq i32 %362, 0
  %364 = fcmp fast ogt float %221, 0.000000e+00
  br i1 %364, label %365, label %380, !dx.controlflow.hints !39

; <label>:365                                     ; preds = %358
  %366 = fsub fast float %178, %221
  %367 = fcmp fast ole float %221, %178
  %368 = fcmp fast ole float %366, %341
  %369 = and i1 %367, %368
  %370 = select i1 %369, float 1.000000e+00, float 0.000000e+00
  %371 = fmul fast float %341, -1.500000e+00
  %372 = fsub fast float %366, %341
  %373 = fdiv fast float %372, %371
  %374 = call float @dx.op.unary.f32(i32 7, float %373)  ; Saturate(value)
  %375 = fmul fast float %374, 2.000000e+00
  %376 = fsub fast float 3.000000e+00, %375
  %377 = fmul fast float %374, %374
  %378 = fmul fast float %377, %370
  %379 = fmul fast float %378, %376
  br label %380

; <label>:380                                     ; preds = %365, %358
  %381 = phi float [ %379, %365 ], [ 0.000000e+00, %358 ]
  %382 = select i1 %363, float %381, float 0.000000e+00
  %383 = fadd fast float %361, %382
  br label %384

; <label>:384                                     ; preds = %380, %215, %183
  %385 = phi float [ %184, %215 ], [ %383, %380 ], [ %184, %183 ]
  %386 = add nuw nsw i32 %185, 1
  %387 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %18, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %388 = extractvalue %dx.types.CBufRet.i32 %387, 0
  %389 = icmp ult i32 %386, %388
  br i1 %389, label %183, label %390

; <label>:390                                     ; preds = %384
  br label %391

; <label>:391                                     ; preds = %390, %125
  %392 = phi float [ 0.000000e+00, %125 ], [ %385, %390 ]
  br label %393

; <label>:393                                     ; preds = %603, %391
  %394 = phi float [ %604, %603 ], [ %392, %391 ]
  %395 = phi i32 [ %605, %603 ], [ 0, %391 ]
  %396 = add nuw nsw i32 %395, 191
  %397 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 %396)  ; CBufferLoadLegacy(handle,regIndex)
  %398 = extractvalue %dx.types.CBufRet.f32 %397, 0
  %399 = extractvalue %dx.types.CBufRet.f32 %397, 1
  %400 = extractvalue %dx.types.CBufRet.f32 %397, 2
  %401 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %402 = extractvalue %dx.types.CBufRet.f32 %401, 0
  %403 = extractvalue %dx.types.CBufRet.f32 %401, 1
  %404 = extractvalue %dx.types.CBufRet.f32 %401, 2
  %405 = fsub fast float %398, %402
  %406 = fsub fast float %399, %403
  %407 = fsub fast float %400, %404
  %408 = add nuw nsw i32 %395, 195
  %409 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 %408)  ; CBufferLoadLegacy(handle,regIndex)
  %410 = extractvalue %dx.types.CBufRet.f32 %409, 0
  %411 = extractvalue %dx.types.CBufRet.f32 %409, 1
  %412 = extractvalue %dx.types.CBufRet.f32 %409, 2
  %413 = fdiv fast float 1.000000e+00, %161
  %414 = fdiv fast float 1.000000e+00, %162
  %415 = fdiv fast float 1.000000e+00, %163
  %416 = fadd fast float %405, %410
  %417 = fadd fast float %406, %411
  %418 = fadd fast float %407, %412
  %419 = fsub fast float %405, %410
  %420 = fsub fast float %406, %411
  %421 = fsub fast float %407, %412
  %422 = fmul fast float %419, %413
  %423 = fmul fast float %416, %413
  %424 = call float @dx.op.binary.f32(i32 36, float %422, float %423)  ; FMin(a,b)
  %425 = call float @dx.op.binary.f32(i32 35, float %422, float %423)  ; FMax(a,b)
  %426 = fmul fast float %420, %414
  %427 = fmul fast float %417, %414
  %428 = call float @dx.op.binary.f32(i32 36, float %426, float %427)  ; FMin(a,b)
  %429 = call float @dx.op.binary.f32(i32 35, float %424, float %428)  ; FMax(a,b)
  %430 = call float @dx.op.binary.f32(i32 35, float %426, float %427)  ; FMax(a,b)
  %431 = call float @dx.op.binary.f32(i32 36, float %425, float %430)  ; FMin(a,b)
  %432 = fmul fast float %415, %421
  %433 = fmul fast float %415, %418
  %434 = call float @dx.op.binary.f32(i32 36, float %432, float %433)  ; FMin(a,b)
  %435 = call float @dx.op.binary.f32(i32 35, float %429, float %434)  ; FMax(a,b)
  %436 = call float @dx.op.binary.f32(i32 35, float %432, float %433)  ; FMax(a,b)
  %437 = call float @dx.op.binary.f32(i32 36, float %431, float %436)  ; FMin(a,b)
  %438 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %435)  ; FMax(a,b)
  %439 = fcmp fast ult float %437, %438
  br i1 %439, label %603, label %440, !dx.controlflow.hints !40

; <label>:440                                     ; preds = %393
  %441 = fcmp fast ole float %435, 0.000000e+00
  %442 = fcmp fast ole float %437, 0.000000e+00
  %443 = and i1 %441, %442
  br i1 %443, label %603, label %444, !dx.controlflow.hints !41

; <label>:444                                     ; preds = %440
  %445 = fmul fast float %435, %161
  %446 = fmul fast float %435, %162
  %447 = fmul fast float %435, %163
  %448 = fmul fast float %437, %161
  %449 = fmul fast float %437, %162
  %450 = fmul fast float %437, %163
  %451 = zext i1 %441 to i32
  %452 = zext i1 %442 to i32
  %453 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %18, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %454 = extractvalue %dx.types.CBufRet.i32 %453, 0
  %455 = icmp eq i32 %454, 0
  br i1 %455, label %493, label %456

; <label>:456                                     ; preds = %444
  br label %457

; <label>:457                                     ; preds = %457, %456
  %458 = phi i32 [ %481, %457 ], [ %451, %456 ]
  %459 = phi i32 [ %483, %457 ], [ %452, %456 ]
  %460 = phi i32 [ %484, %457 ], [ 0, %456 ]
  %461 = add i32 %460, 171
  %462 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 %461)  ; CBufferLoadLegacy(handle,regIndex)
  %463 = extractvalue %dx.types.CBufRet.f32 %462, 2
  %464 = extractvalue %dx.types.CBufRet.f32 %462, 0
  %465 = extractvalue %dx.types.CBufRet.f32 %462, 1
  %466 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %467 = extractvalue %dx.types.CBufRet.f32 %466, 0
  %468 = extractvalue %dx.types.CBufRet.f32 %466, 1
  %469 = fsub fast float %464, %467
  %470 = fsub fast float %465, %468
  %471 = fsub fast float %469, %445
  %472 = fsub fast float %470, %446
  %473 = call float @dx.op.dot2.f32(i32 54, float %471, float %472, float %471, float %472)  ; Dot2(ax,ay,bx,by)
  %474 = fsub fast float %469, %448
  %475 = fsub fast float %470, %449
  %476 = call float @dx.op.dot2.f32(i32 54, float %474, float %475, float %474, float %475)  ; Dot2(ax,ay,bx,by)
  %477 = fmul fast float %463, %463
  %478 = fcmp fast olt float %473, %477
  %479 = fcmp fast olt float %476, %477
  %480 = zext i1 %478 to i32
  %481 = or i32 %480, %458
  %482 = zext i1 %479 to i32
  %483 = or i32 %482, %459
  %484 = add nuw nsw i32 %460, 1
  %485 = icmp eq i32 %481, 0
  %486 = icmp eq i32 %483, 0
  %487 = or i1 %485, %486
  %488 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %18, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %489 = extractvalue %dx.types.CBufRet.i32 %488, 0
  %490 = icmp ult i32 %484, %489
  %491 = and i1 %490, %487
  br i1 %491, label %457, label %492

; <label>:492                                     ; preds = %457
  br label %493

; <label>:493                                     ; preds = %492, %444
  %494 = phi i32 [ %451, %444 ], [ %481, %492 ]
  %495 = phi i32 [ %452, %444 ], [ %483, %492 ]
  br label %496

; <label>:496                                     ; preds = %547, %493
  %497 = phi i32 [ %548, %547 ], [ %451, %493 ]
  %498 = phi i32 [ %549, %547 ], [ %452, %493 ]
  %499 = phi i32 [ %550, %547 ], [ 0, %493 ]
  %500 = icmp eq i32 %395, %499
  br i1 %500, label %547, label %501, !dx.controlflow.hints !42

; <label>:501                                     ; preds = %496
  %502 = add nuw nsw i32 %499, 191
  %503 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 %502)  ; CBufferLoadLegacy(handle,regIndex)
  %504 = extractvalue %dx.types.CBufRet.f32 %503, 0
  %505 = extractvalue %dx.types.CBufRet.f32 %503, 1
  %506 = extractvalue %dx.types.CBufRet.f32 %503, 2
  %507 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %508 = extractvalue %dx.types.CBufRet.f32 %507, 0
  %509 = extractvalue %dx.types.CBufRet.f32 %507, 1
  %510 = extractvalue %dx.types.CBufRet.f32 %507, 2
  %511 = fsub fast float %504, %508
  %512 = fsub fast float %505, %509
  %513 = fsub fast float %506, %510
  %514 = add nuw nsw i32 %499, 195
  %515 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 %514)  ; CBufferLoadLegacy(handle,regIndex)
  %516 = extractvalue %dx.types.CBufRet.f32 %515, 0
  %517 = extractvalue %dx.types.CBufRet.f32 %515, 1
  %518 = extractvalue %dx.types.CBufRet.f32 %515, 2
  %519 = fsub fast float %511, %445
  %520 = fsub fast float %512, %446
  %521 = fsub fast float %513, %447
  %522 = fsub fast float %511, %448
  %523 = fsub fast float %512, %449
  %524 = fsub fast float %513, %450
  %525 = call float @dx.op.unary.f32(i32 6, float %519)  ; FAbs(value)
  %526 = fcmp fast ole float %525, %516
  %527 = call float @dx.op.unary.f32(i32 6, float %520)  ; FAbs(value)
  %528 = fcmp fast ole float %527, %517
  %529 = and i1 %526, %528
  %530 = call float @dx.op.unary.f32(i32 6, float %521)  ; FAbs(value)
  %531 = fcmp fast ole float %530, %518
  %532 = and i1 %529, %531
  %533 = icmp ne i32 %497, 0
  %534 = or i1 %533, %532
  %535 = zext i1 %534 to i32
  %536 = call float @dx.op.unary.f32(i32 6, float %522)  ; FAbs(value)
  %537 = fcmp fast ole float %536, %516
  %538 = call float @dx.op.unary.f32(i32 6, float %523)  ; FAbs(value)
  %539 = fcmp fast ole float %538, %517
  %540 = and i1 %537, %539
  %541 = call float @dx.op.unary.f32(i32 6, float %524)  ; FAbs(value)
  %542 = fcmp fast ole float %541, %518
  %543 = and i1 %540, %542
  %544 = icmp ne i32 %498, 0
  %545 = or i1 %544, %543
  %546 = zext i1 %545 to i32
  br label %547

; <label>:547                                     ; preds = %501, %496
  %548 = phi i32 [ %497, %496 ], [ %535, %501 ]
  %549 = phi i32 [ %498, %496 ], [ %546, %501 ]
  %550 = add nuw nsw i32 %499, 1
  %551 = icmp eq i32 %548, 0
  %552 = icmp eq i32 %549, 0
  %553 = or i1 %551, %552
  %554 = icmp slt i32 %550, 4
  %555 = and i1 %554, %553
  br i1 %555, label %496, label %556

; <label>:556                                     ; preds = %547
  %557 = or i32 %548, %494
  %558 = icmp eq i32 %557, 0
  %559 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %560 = extractvalue %dx.types.CBufRet.f32 %559, 3
  %561 = fcmp fast ogt float %435, 0.000000e+00
  br i1 %561, label %562, label %577, !dx.controlflow.hints !39

; <label>:562                                     ; preds = %556
  %563 = fsub fast float %178, %435
  %564 = fcmp fast ole float %435, %178
  %565 = fcmp fast ole float %563, %560
  %566 = and i1 %564, %565
  %567 = select i1 %566, float 1.000000e+00, float 0.000000e+00
  %568 = fmul fast float %560, -1.500000e+00
  %569 = fsub fast float %563, %560
  %570 = fdiv fast float %569, %568
  %571 = call float @dx.op.unary.f32(i32 7, float %570)  ; Saturate(value)
  %572 = fmul fast float %571, 2.000000e+00
  %573 = fsub fast float 3.000000e+00, %572
  %574 = fmul fast float %571, %571
  %575 = fmul fast float %574, %567
  %576 = fmul fast float %575, %573
  br label %577

; <label>:577                                     ; preds = %562, %556
  %578 = phi float [ %576, %562 ], [ 0.000000e+00, %556 ]
  %579 = select i1 %558, float %578, float 0.000000e+00
  %580 = fadd fast float %579, %394
  %581 = or i32 %549, %495
  %582 = icmp eq i32 %581, 0
  %583 = fcmp fast ogt float %437, 0.000000e+00
  br i1 %583, label %584, label %599, !dx.controlflow.hints !39

; <label>:584                                     ; preds = %577
  %585 = fsub fast float %178, %437
  %586 = fcmp fast ole float %437, %178
  %587 = fcmp fast ole float %585, %560
  %588 = and i1 %586, %587
  %589 = select i1 %588, float 1.000000e+00, float 0.000000e+00
  %590 = fmul fast float %560, -1.500000e+00
  %591 = fsub fast float %585, %560
  %592 = fdiv fast float %591, %590
  %593 = call float @dx.op.unary.f32(i32 7, float %592)  ; Saturate(value)
  %594 = fmul fast float %593, 2.000000e+00
  %595 = fsub fast float 3.000000e+00, %594
  %596 = fmul fast float %593, %593
  %597 = fmul fast float %596, %589
  %598 = fmul fast float %597, %595
  br label %599

; <label>:599                                     ; preds = %584, %577
  %600 = phi float [ %598, %584 ], [ 0.000000e+00, %577 ]
  %601 = select i1 %582, float %600, float 0.000000e+00
  %602 = fadd fast float %580, %601
  br label %603

; <label>:603                                     ; preds = %599, %440, %393
  %604 = phi float [ %394, %440 ], [ %602, %599 ], [ %394, %393 ]
  %605 = add nuw nsw i32 %395, 1
  %606 = icmp eq i32 %605, 4
  br i1 %606, label %607, label %393

; <label>:607                                     ; preds = %603
  br label %608

; <label>:608                                     ; preds = %607, %111, %28
  %609 = phi float [ 0.000000e+00, %111 ], [ 0.000000e+00, %28 ], [ %175, %607 ]
  %610 = phi float [ 0.000000e+00, %111 ], [ 0.000000e+00, %28 ], [ %176, %607 ]
  %611 = phi float [ 0.000000e+00, %111 ], [ 0.000000e+00, %28 ], [ %177, %607 ]
  %612 = phi float [ 0.000000e+00, %111 ], [ 0.000000e+00, %28 ], [ %604, %607 ]
  br i1 %100, label %5168, label %613, !dx.controlflow.hints !43

; <label>:613                                     ; preds = %608
  %614 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %13, i32 0, i32 %63, i32 %64, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %615 = extractvalue %dx.types.ResRet.f32 %614, 0
  %616 = extractvalue %dx.types.ResRet.f32 %614, 1
  %617 = fadd fast float %616, 0x3F40000000000000
  %618 = fmul fast float %617, 2.550000e+02
  %619 = fadd fast float %615, 0x3F40000000000000
  %620 = fmul fast float %619, 2.550000e+02
  %621 = fptoui float %618 to i32
  %622 = shl i32 %621, 8
  %623 = fptoui float %620 to i32
  %624 = and i32 %623, 255
  %625 = or i32 %622, %624
  %626 = mul i32 %625, 100
  %627 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %626, i32 undef)  ; BufferLoad(srv,index,wot)
  %628 = extractvalue %dx.types.ResRet.i32 %627, 0
  %629 = lshr i32 %628, 28
  %630 = and i32 %628, 131072
  %631 = lshr exact i32 %630, 17
  %632 = and i32 %628, 262144
  %633 = lshr exact i32 %632, 18
  %634 = lshr i32 %628, 24
  %635 = and i32 %634, 1
  switch i32 %629, label %5168 [
    i32 0, label %636
    i32 1, label %866
    i32 2, label %1296
    i32 3, label %1606
    i32 4, label %2108
    i32 5, label %2243
    i32 6, label %4603
    i32 7, label %4915
  ], !dx.controlflow.hints !44

; <label>:636                                     ; preds = %613
  %637 = and i32 %628, 511
  %638 = mul nuw nsw i32 %637, 20
  %639 = add nuw nsw i32 %638, 4
  %640 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %639, i32 undef)  ; BufferLoad(srv,index,wot)
  %641 = extractvalue %dx.types.ResRet.i32 %640, 0
  %642 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %638, i32 undef)  ; BufferLoad(srv,index,wot)
  %643 = extractvalue %dx.types.ResRet.i32 %642, 0
  %644 = and i32 %643, 255
  %645 = uitofp i32 %644 to float
  %646 = lshr i32 %643, 8
  %647 = and i32 %646, 255
  %648 = uitofp i32 %647 to float
  %649 = lshr i32 %643, 16
  %650 = and i32 %649, 255
  %651 = uitofp i32 %650 to float
  %652 = lshr i32 %643, 24
  %653 = uitofp i32 %652 to float
  %654 = fmul fast float %645, 0x3F70101020000000
  %655 = fmul fast float %648, 0x3F70101020000000
  %656 = fmul fast float %651, 0x3F70101020000000
  %657 = fmul fast float %653, 0x3F70101020000000
  %658 = and i32 %628, 1048576
  %659 = icmp ne i32 %658, 0
  %660 = and i32 %628, 2097152
  %661 = icmp ne i32 %660, 0
  %662 = lshr i32 %641, 8
  %663 = and i32 %662, 65535
  %664 = call float @dx.op.legacyF16ToF32(i32 131, i32 %663)  ; LegacyF16ToF32(value)
  %665 = and i32 %628, 65536
  %666 = icmp ne i32 %665, 0
  %667 = select i1 %666, float 1.000000e+00, float 0.000000e+00
  %668 = select i1 %108, float 0.000000e+00, float 1.000000e+00
  %669 = select i1 %659, float %668, float %667
  br i1 %108, label %711, label %670, !dx.controlflow.hints !45

; <label>:670                                     ; preds = %636
  %671 = icmp ne i32 %630, 0
  %672 = select i1 %671, float 1.000000e+00, float 0.000000e+00
  %673 = fmul fast float %669, %672
  %674 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %675 = extractvalue %dx.types.CBufRet.f32 %674, 0
  %676 = extractvalue %dx.types.CBufRet.f32 %674, 1
  %677 = extractvalue %dx.types.CBufRet.f32 %674, 2
  %678 = extractvalue %dx.types.CBufRet.f32 %674, 3
  %679 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %680 = extractvalue %dx.types.CBufRet.f32 %679, 0
  %681 = extractvalue %dx.types.CBufRet.f32 %679, 1
  %682 = extractvalue %dx.types.CBufRet.f32 %679, 2
  %683 = extractvalue %dx.types.CBufRet.f32 %679, 3
  %684 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %685 = extractvalue %dx.types.CBufRet.f32 %684, 0
  %686 = extractvalue %dx.types.CBufRet.f32 %684, 1
  %687 = extractvalue %dx.types.CBufRet.f32 %684, 2
  %688 = extractvalue %dx.types.CBufRet.f32 %684, 3
  %689 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %690 = extractvalue %dx.types.CBufRet.f32 %689, 0
  %691 = fadd fast float %654, -1.000000e+00
  %692 = fadd fast float %655, -1.000000e+00
  %693 = fadd fast float %656, -1.000000e+00
  %694 = fadd fast float %657, -1.000000e+00
  %695 = fmul fast float %690, %691
  %696 = fmul fast float %690, %692
  %697 = fmul fast float %690, %693
  %698 = fmul fast float %690, %694
  %699 = fadd fast float %695, 1.000000e+00
  %700 = fadd fast float %696, 1.000000e+00
  %701 = fadd fast float %697, 1.000000e+00
  %702 = fadd fast float %698, 1.000000e+00
  %703 = fmul fast float %685, %672
  %704 = fmul fast float %703, %699
  %705 = fmul fast float %686, %672
  %706 = fmul fast float %705, %700
  %707 = fmul fast float %687, %672
  %708 = fmul fast float %707, %701
  %709 = fmul fast float %688, %672
  %710 = fmul fast float %709, %702
  br label %728

; <label>:711                                     ; preds = %636
  %712 = icmp ne i32 %632, 0
  %713 = select i1 %712, float 1.000000e+00, float 0.000000e+00
  %714 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %715 = extractvalue %dx.types.CBufRet.f32 %714, 0
  %716 = extractvalue %dx.types.CBufRet.f32 %714, 1
  %717 = extractvalue %dx.types.CBufRet.f32 %714, 2
  %718 = extractvalue %dx.types.CBufRet.f32 %714, 3
  %719 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %720 = extractvalue %dx.types.CBufRet.f32 %719, 0
  %721 = extractvalue %dx.types.CBufRet.f32 %719, 1
  %722 = extractvalue %dx.types.CBufRet.f32 %719, 2
  %723 = extractvalue %dx.types.CBufRet.f32 %719, 3
  %724 = fmul fast float %654, %713
  %725 = fmul fast float %655, %713
  %726 = fmul fast float %656, %713
  %727 = fmul fast float %657, %713
  br label %728

; <label>:728                                     ; preds = %711, %670
  %729 = phi float [ %704, %670 ], [ %724, %711 ]
  %730 = phi float [ %706, %670 ], [ %725, %711 ]
  %731 = phi float [ %708, %670 ], [ %726, %711 ]
  %732 = phi float [ %710, %670 ], [ %727, %711 ]
  %733 = phi float [ %680, %670 ], [ %720, %711 ]
  %734 = phi float [ %681, %670 ], [ %721, %711 ]
  %735 = phi float [ %682, %670 ], [ %722, %711 ]
  %736 = phi float [ %683, %670 ], [ %723, %711 ]
  %737 = phi float [ %675, %670 ], [ %715, %711 ]
  %738 = phi float [ %676, %670 ], [ %716, %711 ]
  %739 = phi float [ %677, %670 ], [ %717, %711 ]
  %740 = phi float [ %678, %670 ], [ %718, %711 ]
  %741 = phi float [ %673, %670 ], [ %669, %711 ]
  %742 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %743 = extractvalue %dx.types.CBufRet.f32 %742, 0
  %744 = fmul fast float %743, 2.000000e+00
  %745 = select i1 %661, float %744, float 1.000000e+00
  %746 = fmul fast float %745, %729
  %747 = fmul fast float %745, %730
  %748 = fmul fast float %745, %731
  %749 = fmul fast float %745, %732
  %750 = fcmp fast oeq float %664, 0.000000e+00
  br i1 %750, label %850, label %751, !dx.controlflow.hints !46

; <label>:751                                     ; preds = %728
  %752 = fmul fast float %664, %65
  %753 = fptosi float %752 to i32
  %754 = fmul fast float %664, %66
  %755 = fptosi float %754 to i32
  %756 = call i32 @dx.op.binary.i32(i32 37, i32 1, i32 %753)  ; IMax(a,b)
  %757 = call i32 @dx.op.binary.i32(i32 37, i32 1, i32 %755)  ; IMax(a,b)
  %758 = sub i32 %64, %757
  %759 = or i32 %758, %63
  %760 = icmp slt i32 %759, 0
  %761 = fptosi float %59 to i32
  %762 = fptosi float %60 to i32
  %763 = icmp sge i32 %63, %761
  %764 = icmp sge i32 %758, %762
  %765 = or i1 %763, %764
  %766 = or i1 %760, %765
  br i1 %766, label %780, label %767, !dx.controlflow.hints !47

; <label>:767                                     ; preds = %751
  %768 = lshr i32 %758, 2
  %769 = mul i32 %85, %768
  %770 = add i32 %89, %769
  %771 = shl i32 %770, 2
  %772 = shl i32 %758, 3
  %773 = and i32 %772, 24
  %774 = or i32 %773, %94
  %775 = shl i32 1, %774
  %776 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %771, i32 undef)  ; BufferLoad(srv,index,wot)
  %777 = extractvalue %dx.types.ResRet.i32 %776, 0
  %778 = and i32 %777, %775
  %779 = icmp ne i32 %778, 0
  br label %780

; <label>:780                                     ; preds = %767, %751
  %781 = phi i1 [ %779, %767 ], [ false, %751 ]
  %782 = add i32 %757, %64
  %783 = or i32 %782, %63
  %784 = icmp slt i32 %783, 0
  %785 = icmp sge i32 %782, %762
  %786 = or i1 %763, %785
  %787 = or i1 %784, %786
  br i1 %787, label %801, label %788, !dx.controlflow.hints !47

; <label>:788                                     ; preds = %780
  %789 = lshr i32 %782, 2
  %790 = mul i32 %85, %789
  %791 = add i32 %89, %790
  %792 = shl i32 %791, 2
  %793 = shl i32 %782, 3
  %794 = and i32 %793, 24
  %795 = or i32 %794, %94
  %796 = shl i32 1, %795
  %797 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %792, i32 undef)  ; BufferLoad(srv,index,wot)
  %798 = extractvalue %dx.types.ResRet.i32 %797, 0
  %799 = and i32 %798, %796
  %800 = icmp ne i32 %799, 0
  br label %801

; <label>:801                                     ; preds = %788, %780
  %802 = phi i1 [ %800, %788 ], [ false, %780 ]
  %803 = and i1 %781, %802
  %804 = sub i32 %63, %756
  %805 = or i32 %804, %64
  %806 = icmp slt i32 %805, 0
  %807 = icmp sge i32 %804, %761
  %808 = icmp sge i32 %64, %762
  %809 = or i1 %807, %808
  %810 = or i1 %806, %809
  br i1 %810, label %824, label %811, !dx.controlflow.hints !47

; <label>:811                                     ; preds = %801
  %812 = lshr i32 %804, 3
  %813 = add i32 %81, %812
  %814 = add i32 %813, %83
  %815 = add i32 %814, %86
  %816 = shl i32 %815, 2
  %817 = and i32 %804, 7
  %818 = or i32 %817, %93
  %819 = shl i32 1, %818
  %820 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %816, i32 undef)  ; BufferLoad(srv,index,wot)
  %821 = extractvalue %dx.types.ResRet.i32 %820, 0
  %822 = and i32 %821, %819
  %823 = icmp ne i32 %822, 0
  br label %824

; <label>:824                                     ; preds = %811, %801
  %825 = phi i1 [ %823, %811 ], [ false, %801 ]
  %826 = and i1 %803, %825
  %827 = add i32 %756, %63
  %828 = or i32 %827, %64
  %829 = icmp slt i32 %828, 0
  %830 = icmp sge i32 %827, %761
  %831 = or i1 %830, %808
  %832 = or i1 %829, %831
  br i1 %832, label %846, label %833, !dx.controlflow.hints !47

; <label>:833                                     ; preds = %824
  %834 = lshr i32 %827, 3
  %835 = add i32 %81, %834
  %836 = add i32 %835, %83
  %837 = add i32 %836, %86
  %838 = shl i32 %837, 2
  %839 = and i32 %827, 7
  %840 = or i32 %839, %93
  %841 = shl i32 1, %840
  %842 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %838, i32 undef)  ; BufferLoad(srv,index,wot)
  %843 = extractvalue %dx.types.ResRet.i32 %842, 0
  %844 = and i32 %843, %841
  %845 = icmp ne i32 %844, 0
  br label %846

; <label>:846                                     ; preds = %833, %824
  %847 = phi i1 [ %845, %833 ], [ false, %824 ]
  %848 = and i1 %826, %847
  %849 = xor i1 %848, true
  br label %850

; <label>:850                                     ; preds = %846, %728
  %851 = phi i1 [ %849, %846 ], [ false, %728 ]
  br i1 %851, label %5168, label %852, !dx.controlflow.hints !48

; <label>:852                                     ; preds = %850
  %853 = select i1 %108, i1 %78, i1 %75
  %854 = select i1 %853, float %733, float %737
  %855 = select i1 %853, float %734, float %738
  %856 = select i1 %853, float %735, float %739
  %857 = select i1 %853, float %736, float %740
  %858 = fmul fast float %741, %854
  %859 = fmul fast float %741, %855
  %860 = fmul fast float %741, %856
  %861 = fmul fast float %741, %857
  %862 = fmul fast float %858, %746
  %863 = fmul fast float %859, %747
  %864 = fmul fast float %860, %748
  %865 = fmul fast float %861, %749
  br label %5168

; <label>:866                                     ; preds = %613
  %867 = or i32 %630, %107
  %868 = icmp eq i32 %867, 0
  br i1 %868, label %5168, label %869, !dx.controlflow.hints !49

; <label>:869                                     ; preds = %866
  %870 = and i32 %628, 511
  %871 = mul nuw nsw i32 %870, 20
  %872 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %871, i32 undef)  ; BufferLoad(srv,index,wot)
  %873 = extractvalue %dx.types.ResRet.i32 %872, 0
  %874 = and i32 %873, 255
  %875 = uitofp i32 %874 to float
  %876 = lshr i32 %873, 8
  %877 = and i32 %876, 255
  %878 = uitofp i32 %877 to float
  %879 = lshr i32 %873, 16
  %880 = and i32 %879, 255
  %881 = uitofp i32 %880 to float
  %882 = lshr i32 %873, 24
  %883 = uitofp i32 %882 to float
  %884 = fmul fast float %875, 0x3F70101020000000
  %885 = fmul fast float %878, 0x3F70101020000000
  %886 = fmul fast float %881, 0x3F70101020000000
  %887 = fmul fast float %883, 0x3F70101020000000
  %888 = lshr i32 %628, 5
  %889 = and i32 %888, 1008
  %890 = or i32 %889, 8
  %891 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %890, i32 undef)  ; BufferLoad(srv,index,wot)
  %892 = extractvalue %dx.types.ResRet.f32 %891, 0
  %893 = or i32 %889, 12
  %894 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %893, i32 undef)  ; BufferLoad(srv,index,wot)
  %895 = extractvalue %dx.types.ResRet.f32 %894, 0
  %896 = or i32 %889, 4
  %897 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %896, i32 undef)  ; BufferLoad(srv,index,wot)
  %898 = extractvalue %dx.types.ResRet.i32 %897, 0
  %899 = lshr i32 %898, 16
  %900 = and i32 %899, 254
  %901 = uitofp i32 %900 to float
  %902 = lshr i32 %898, 24
  %903 = and i32 %902, 254
  %904 = uitofp i32 %903 to float
  %905 = add nuw nsw i32 %871, 16
  %906 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %905, i32 undef)  ; BufferLoad(srv,index,wot)
  %907 = extractvalue %dx.types.ResRet.f32 %906, 0
  %908 = fsub fast float %895, %892
  %909 = fmul fast float %908, 0x3FB99999A0000000
  %910 = fsub fast float %907, %892
  %911 = fdiv fast float %910, %909
  %912 = call float @dx.op.unary.f32(i32 7, float %911)  ; Saturate(value)
  %913 = fmul fast float %912, 2.000000e+00
  %914 = fsub fast float 3.000000e+00, %913
  %915 = fsub fast float %904, %901
  %916 = fmul fast float %912, %912
  %917 = fmul fast float %916, %915
  %918 = fmul fast float %917, %914
  %919 = fadd fast float %918, %901
  %920 = fmul fast float %919, 0x3F70204080000000
  %921 = fmul fast float %908, 5.000000e-01
  %922 = fsub fast float %921, %895
  %923 = fadd fast float %922, %907
  %924 = fdiv fast float %923, %921
  %925 = call float @dx.op.unary.f32(i32 7, float %924)  ; Saturate(value)
  %926 = fmul fast float %925, 2.000000e+00
  %927 = fsub fast float 3.000000e+00, %926
  %928 = fmul fast float %925, %925
  %929 = fmul fast float %928, %927
  %930 = fsub fast float 1.000000e+00, %929
  %931 = fmul fast float %920, %930
  %932 = fadd fast float %907, -1.280000e+02
  %933 = fmul fast float %932, 1.953125e-03
  %934 = call float @dx.op.unary.f32(i32 7, float %933)  ; Saturate(value)
  %935 = fmul fast float %934, 6.250000e-01
  %936 = fsub fast float 2.500000e+00, %935
  %937 = fmul fast float %936, %65
  %938 = fmul fast float %936, %66
  %939 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %12, i32 0, i32 %63, i32 %64, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %940 = extractvalue %dx.types.ResRet.i32 %939, 0
  %941 = lshr i32 %940, 8
  %942 = and i32 %940, 255
  %943 = and i32 %941, 255
  %944 = uitofp i32 %942 to float
  %945 = uitofp i32 %943 to float
  %946 = fmul fast float %944, 0x3F80101020000000
  %947 = fmul fast float %945, 0x3F80101020000000
  %948 = fadd fast float %946, -1.000000e+00
  %949 = fadd fast float %947, -1.000000e+00
  %950 = call float @dx.op.unary.f32(i32 6, float %948)  ; FAbs(value)
  %951 = fsub fast float 1.000000e+00, %950
  %952 = call float @dx.op.unary.f32(i32 6, float %949)  ; FAbs(value)
  %953 = fsub fast float %951, %952
  %954 = fsub fast float -0.000000e+00, %953
  %955 = call float @dx.op.binary.f32(i32 35, float %954, float 0.000000e+00)  ; FMax(a,b)
  %956 = fcmp fast ogt float %948, 0.000000e+00
  %957 = fsub fast float -0.000000e+00, %955
  %958 = select i1 %956, float %957, float %955
  %959 = fadd fast float %958, %948
  %960 = fcmp fast ogt float %949, 0.000000e+00
  %961 = select i1 %960, float %957, float %955
  %962 = fadd fast float %961, %949
  %963 = call float @dx.op.dot3.f32(i32 55, float %959, float %962, float %953, float %959, float %962, float %953)  ; Dot3(ax,ay,az,bx,by,bz)
  %964 = call float @dx.op.unary.f32(i32 25, float %963)  ; Rsqrt(value)
  %965 = fmul fast float %964, %953
  %966 = add i32 %64, -1
  %967 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %12, i32 0, i32 %63, i32 %966, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %968 = extractvalue %dx.types.ResRet.i32 %967, 0
  %969 = lshr i32 %968, 8
  %970 = and i32 %968, 255
  %971 = and i32 %969, 255
  %972 = uitofp i32 %970 to float
  %973 = uitofp i32 %971 to float
  %974 = fmul fast float %972, 0x3F80101020000000
  %975 = fmul fast float %973, 0x3F80101020000000
  %976 = fadd fast float %974, -1.000000e+00
  %977 = fadd fast float %975, -1.000000e+00
  %978 = call float @dx.op.unary.f32(i32 6, float %976)  ; FAbs(value)
  %979 = fsub fast float 1.000000e+00, %978
  %980 = call float @dx.op.unary.f32(i32 6, float %977)  ; FAbs(value)
  %981 = fsub fast float %979, %980
  %982 = fsub fast float -0.000000e+00, %981
  %983 = call float @dx.op.binary.f32(i32 35, float %982, float 0.000000e+00)  ; FMax(a,b)
  %984 = fcmp fast ogt float %976, 0.000000e+00
  %985 = fsub fast float -0.000000e+00, %983
  %986 = select i1 %984, float %985, float %983
  %987 = fadd fast float %986, %976
  %988 = fcmp fast ogt float %977, 0.000000e+00
  %989 = select i1 %988, float %985, float %983
  %990 = fadd fast float %989, %977
  %991 = call float @dx.op.dot3.f32(i32 55, float %987, float %990, float %981, float %987, float %990, float %981)  ; Dot3(ax,ay,az,bx,by,bz)
  %992 = call float @dx.op.unary.f32(i32 25, float %991)  ; Rsqrt(value)
  %993 = fmul fast float %987, %992
  %994 = fmul fast float %990, %992
  %995 = fmul fast float %992, %981
  %996 = add i32 %64, 1
  %997 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %12, i32 0, i32 %63, i32 %996, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %998 = extractvalue %dx.types.ResRet.i32 %997, 0
  %999 = lshr i32 %998, 8
  %1000 = and i32 %998, 255
  %1001 = and i32 %999, 255
  %1002 = uitofp i32 %1000 to float
  %1003 = uitofp i32 %1001 to float
  %1004 = fmul fast float %1002, 0x3F80101020000000
  %1005 = fmul fast float %1003, 0x3F80101020000000
  %1006 = fadd fast float %1004, -1.000000e+00
  %1007 = fadd fast float %1005, -1.000000e+00
  %1008 = call float @dx.op.unary.f32(i32 6, float %1006)  ; FAbs(value)
  %1009 = fsub fast float 1.000000e+00, %1008
  %1010 = call float @dx.op.unary.f32(i32 6, float %1007)  ; FAbs(value)
  %1011 = fsub fast float %1009, %1010
  %1012 = fsub fast float -0.000000e+00, %1011
  %1013 = call float @dx.op.binary.f32(i32 35, float %1012, float 0.000000e+00)  ; FMax(a,b)
  %1014 = fcmp fast ogt float %1006, 0.000000e+00
  %1015 = fsub fast float -0.000000e+00, %1013
  %1016 = select i1 %1014, float %1015, float %1013
  %1017 = fadd fast float %1016, %1006
  %1018 = fcmp fast ogt float %1007, 0.000000e+00
  %1019 = select i1 %1018, float %1015, float %1013
  %1020 = fadd fast float %1019, %1007
  %1021 = call float @dx.op.dot3.f32(i32 55, float %1017, float %1020, float %1011, float %1017, float %1020, float %1011)  ; Dot3(ax,ay,az,bx,by,bz)
  %1022 = call float @dx.op.unary.f32(i32 25, float %1021)  ; Rsqrt(value)
  %1023 = fmul fast float %1017, %1022
  %1024 = fmul fast float %1020, %1022
  %1025 = fmul fast float %1022, %1011
  %1026 = add i32 %63, -1
  %1027 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %12, i32 0, i32 %1026, i32 %64, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1028 = extractvalue %dx.types.ResRet.i32 %1027, 0
  %1029 = lshr i32 %1028, 8
  %1030 = and i32 %1028, 255
  %1031 = and i32 %1029, 255
  %1032 = uitofp i32 %1030 to float
  %1033 = uitofp i32 %1031 to float
  %1034 = fmul fast float %1032, 0x3F80101020000000
  %1035 = fmul fast float %1033, 0x3F80101020000000
  %1036 = fadd fast float %1034, -1.000000e+00
  %1037 = fadd fast float %1035, -1.000000e+00
  %1038 = call float @dx.op.unary.f32(i32 6, float %1036)  ; FAbs(value)
  %1039 = fsub fast float 1.000000e+00, %1038
  %1040 = call float @dx.op.unary.f32(i32 6, float %1037)  ; FAbs(value)
  %1041 = fsub fast float %1039, %1040
  %1042 = fsub fast float -0.000000e+00, %1041
  %1043 = call float @dx.op.binary.f32(i32 35, float %1042, float 0.000000e+00)  ; FMax(a,b)
  %1044 = fcmp fast ogt float %1036, 0.000000e+00
  %1045 = fsub fast float -0.000000e+00, %1043
  %1046 = select i1 %1044, float %1045, float %1043
  %1047 = fadd fast float %1046, %1036
  %1048 = fcmp fast ogt float %1037, 0.000000e+00
  %1049 = select i1 %1048, float %1045, float %1043
  %1050 = fadd fast float %1049, %1037
  %1051 = call float @dx.op.dot3.f32(i32 55, float %1047, float %1050, float %1041, float %1047, float %1050, float %1041)  ; Dot3(ax,ay,az,bx,by,bz)
  %1052 = call float @dx.op.unary.f32(i32 25, float %1051)  ; Rsqrt(value)
  %1053 = fmul fast float %1047, %1052
  %1054 = fmul fast float %1050, %1052
  %1055 = fmul fast float %1052, %1041
  %1056 = add i32 %63, 1
  %1057 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %12, i32 0, i32 %1056, i32 %64, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1058 = extractvalue %dx.types.ResRet.i32 %1057, 0
  %1059 = lshr i32 %1058, 8
  %1060 = and i32 %1058, 255
  %1061 = and i32 %1059, 255
  %1062 = uitofp i32 %1060 to float
  %1063 = uitofp i32 %1061 to float
  %1064 = fmul fast float %1062, 0x3F80101020000000
  %1065 = fmul fast float %1063, 0x3F80101020000000
  %1066 = fadd fast float %1064, -1.000000e+00
  %1067 = fadd fast float %1065, -1.000000e+00
  %1068 = call float @dx.op.unary.f32(i32 6, float %1066)  ; FAbs(value)
  %1069 = fsub fast float 1.000000e+00, %1068
  %1070 = call float @dx.op.unary.f32(i32 6, float %1067)  ; FAbs(value)
  %1071 = fsub fast float %1069, %1070
  %1072 = fsub fast float -0.000000e+00, %1071
  %1073 = call float @dx.op.binary.f32(i32 35, float %1072, float 0.000000e+00)  ; FMax(a,b)
  %1074 = fcmp fast ogt float %1066, 0.000000e+00
  %1075 = fsub fast float -0.000000e+00, %1073
  %1076 = select i1 %1074, float %1075, float %1073
  %1077 = fadd fast float %1076, %1066
  %1078 = fcmp fast ogt float %1067, 0.000000e+00
  %1079 = select i1 %1078, float %1075, float %1073
  %1080 = fadd fast float %1079, %1067
  %1081 = call float @dx.op.dot3.f32(i32 55, float %1077, float %1080, float %1071, float %1077, float %1080, float %1071)  ; Dot3(ax,ay,az,bx,by,bz)
  %1082 = call float @dx.op.unary.f32(i32 25, float %1081)  ; Rsqrt(value)
  %1083 = fmul fast float %1077, %1082
  %1084 = fmul fast float %1080, %1082
  %1085 = fmul fast float %1082, %1071
  %1086 = add nuw nsw i32 %871, 12
  %1087 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %1086, i32 undef)  ; BufferLoad(srv,index,wot)
  %1088 = extractvalue %dx.types.ResRet.i32 %1087, 0
  %1089 = lshr i32 %1088, 16
  %1090 = uitofp i32 %1089 to float
  %1091 = fmul fast float %1090, 0x3EF0002000000000
  %1092 = add nuw nsw i32 %871, 8
  %1093 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %1092, i32 undef)  ; BufferLoad(srv,index,wot)
  %1094 = extractvalue %dx.types.ResRet.i32 %1093, 0
  %1095 = lshr i32 %1094, 16
  %1096 = uitofp i32 %1095 to float
  %1097 = fmul fast float %1096, 0x3EF0002000000000
  %1098 = fsub fast float %45, %1097
  %1099 = fdiv fast float %1098, %1091
  %1100 = fsub fast float %40, %938
  %1101 = fmul fast float %43, %1100
  %1102 = call float @dx.op.unary.f32(i32 7, float %44)  ; Saturate(value)
  %1103 = call float @dx.op.unary.f32(i32 7, float %1101)  ; Saturate(value)
  %1104 = fmul fast float %59, %1102
  %1105 = fmul fast float %60, %1103
  %1106 = fptoui float %1104 to i32
  %1107 = fptoui float %1105 to i32
  %1108 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %13, i32 0, i32 %1106, i32 %1107, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1109 = extractvalue %dx.types.ResRet.f32 %1108, 0
  %1110 = extractvalue %dx.types.ResRet.f32 %1108, 1
  %1111 = fadd fast float %1110, 0x3F40000000000000
  %1112 = fmul fast float %1111, 2.550000e+02
  %1113 = fadd fast float %1109, 0x3F40000000000000
  %1114 = fmul fast float %1113, 2.550000e+02
  %1115 = fptoui float %1112 to i32
  %1116 = shl i32 %1115, 8
  %1117 = fptoui float %1114 to i32
  %1118 = and i32 %1117, 255
  %1119 = or i32 %1116, %1118
  %1120 = fadd fast float %938, %40
  %1121 = fmul fast float %43, %1120
  %1122 = call float @dx.op.unary.f32(i32 7, float %1121)  ; Saturate(value)
  %1123 = fmul fast float %60, %1122
  %1124 = fptoui float %1123 to i32
  %1125 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %13, i32 0, i32 %1106, i32 %1124, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1126 = extractvalue %dx.types.ResRet.f32 %1125, 0
  %1127 = extractvalue %dx.types.ResRet.f32 %1125, 1
  %1128 = fadd fast float %1127, 0x3F40000000000000
  %1129 = fmul fast float %1128, 2.550000e+02
  %1130 = fadd fast float %1126, 0x3F40000000000000
  %1131 = fmul fast float %1130, 2.550000e+02
  %1132 = fptoui float %1129 to i32
  %1133 = shl i32 %1132, 8
  %1134 = fptoui float %1131 to i32
  %1135 = and i32 %1134, 255
  %1136 = or i32 %1133, %1135
  %1137 = fsub fast float %39, %937
  %1138 = fmul fast float %42, %1137
  %1139 = call float @dx.op.unary.f32(i32 7, float %1138)  ; Saturate(value)
  %1140 = call float @dx.op.unary.f32(i32 7, float %45)  ; Saturate(value)
  %1141 = fmul fast float %59, %1139
  %1142 = fmul fast float %60, %1140
  %1143 = fptoui float %1141 to i32
  %1144 = fptoui float %1142 to i32
  %1145 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %13, i32 0, i32 %1143, i32 %1144, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1146 = extractvalue %dx.types.ResRet.f32 %1145, 0
  %1147 = extractvalue %dx.types.ResRet.f32 %1145, 1
  %1148 = fadd fast float %1147, 0x3F40000000000000
  %1149 = fmul fast float %1148, 2.550000e+02
  %1150 = fadd fast float %1146, 0x3F40000000000000
  %1151 = fmul fast float %1150, 2.550000e+02
  %1152 = fptoui float %1149 to i32
  %1153 = shl i32 %1152, 8
  %1154 = fptoui float %1151 to i32
  %1155 = and i32 %1154, 255
  %1156 = or i32 %1153, %1155
  %1157 = fadd fast float %937, %39
  %1158 = fmul fast float %42, %1157
  %1159 = call float @dx.op.unary.f32(i32 7, float %1158)  ; Saturate(value)
  %1160 = fmul fast float %59, %1159
  %1161 = fptoui float %1160 to i32
  %1162 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %13, i32 0, i32 %1161, i32 %1144, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1163 = extractvalue %dx.types.ResRet.f32 %1162, 0
  %1164 = extractvalue %dx.types.ResRet.f32 %1162, 1
  %1165 = fadd fast float %1164, 0x3F40000000000000
  %1166 = fmul fast float %1165, 2.550000e+02
  %1167 = fadd fast float %1163, 0x3F40000000000000
  %1168 = fmul fast float %1167, 2.550000e+02
  %1169 = fptoui float %1166 to i32
  %1170 = shl i32 %1169, 8
  %1171 = fptoui float %1168 to i32
  %1172 = and i32 %1171, 255
  %1173 = or i32 %1170, %1172
  %1174 = icmp eq i32 %625, %1119
  %1175 = zext i1 %1174 to i32
  %1176 = icmp eq i32 %625, %1136
  %1177 = zext i1 %1176 to i32
  %1178 = add nuw nsw i32 %1177, %1175
  %1179 = icmp eq i32 %625, %1156
  %1180 = zext i1 %1179 to i32
  %1181 = add nuw nsw i32 %1178, %1180
  %1182 = icmp eq i32 %625, %1173
  %1183 = zext i1 %1182 to i32
  %1184 = add nuw nsw i32 %1181, %1183
  %1185 = icmp ne i32 %1184, 4
  %1186 = call float @dx.op.dot3.f32(i32 55, float %993, float %994, float %995, float %1023, float %1024, float %1025)  ; Dot3(ax,ay,az,bx,by,bz)
  %1187 = call float @dx.op.binary.f32(i32 36, float 1.000000e+00, float %1186)  ; FMin(a,b)
  %1188 = call float @dx.op.dot3.f32(i32 55, float %993, float %994, float %995, float %1053, float %1054, float %1055)  ; Dot3(ax,ay,az,bx,by,bz)
  %1189 = call float @dx.op.binary.f32(i32 36, float %1187, float %1188)  ; FMin(a,b)
  %1190 = call float @dx.op.dot3.f32(i32 55, float %993, float %994, float %995, float %1083, float %1084, float %1085)  ; Dot3(ax,ay,az,bx,by,bz)
  %1191 = call float @dx.op.binary.f32(i32 36, float %1189, float %1190)  ; FMin(a,b)
  %1192 = call float @dx.op.dot3.f32(i32 55, float %1023, float %1024, float %1025, float %1053, float %1054, float %1055)  ; Dot3(ax,ay,az,bx,by,bz)
  %1193 = call float @dx.op.binary.f32(i32 36, float %1191, float %1192)  ; FMin(a,b)
  %1194 = call float @dx.op.dot3.f32(i32 55, float %1023, float %1024, float %1025, float %1083, float %1084, float %1085)  ; Dot3(ax,ay,az,bx,by,bz)
  %1195 = call float @dx.op.binary.f32(i32 36, float %1193, float %1194)  ; FMin(a,b)
  %1196 = call float @dx.op.dot3.f32(i32 55, float %1053, float %1054, float %1055, float %1083, float %1084, float %1085)  ; Dot3(ax,ay,az,bx,by,bz)
  %1197 = call float @dx.op.binary.f32(i32 36, float %1195, float %1196)  ; FMin(a,b)
  %1198 = call float @dx.op.unary.f32(i32 7, float %1197)  ; Saturate(value)
  %1199 = fsub fast float 1.000000e+00, %1198
  %1200 = call float @dx.op.unary.f32(i32 7, float %1199)  ; Saturate(value)
  %1201 = fmul fast float %1200, 2.000000e+00
  %1202 = fsub fast float 3.000000e+00, %1201
  %1203 = call float @dx.op.unary.f32(i32 7, float %965)  ; Saturate(value)
  %1204 = fmul fast float %1203, 2.500000e+00
  %1205 = call float @dx.op.unary.f32(i32 7, float %1204)  ; Saturate(value)
  %1206 = fmul fast float %1205, 2.000000e+00
  %1207 = fsub fast float 3.000000e+00, %1206
  %1208 = fadd fast float %1203, 0xBFD99999A0000000
  %1209 = fmul fast float %1208, -2.500000e+00
  %1210 = call float @dx.op.unary.f32(i32 7, float %1209)  ; Saturate(value)
  %1211 = fmul fast float %1210, 2.000000e+00
  %1212 = fsub fast float 3.000000e+00, %1211
  %1213 = fmul float %1205, %1210
  %1214 = fmul float %1213, %1213
  %1215 = fmul fast float %1212, %1207
  %1216 = fmul fast float %1215, %1214
  %1217 = fmul fast float %1200, %1200
  %1218 = fmul fast float %1217, %1202
  %1219 = fadd fast float %1216, %1218
  %1220 = fmul fast float %1219, 2.000000e+00
  %1221 = call float @dx.op.unary.f32(i32 7, float %1220)  ; Saturate(value)
  %1222 = fmul fast float %1221, 1.500000e+00
  %1223 = fmul fast float %1222, %884
  %1224 = fmul fast float %1222, %885
  %1225 = fmul fast float %1222, %886
  %1226 = icmp eq i32 %625, 0
  %1227 = or i1 %1226, %1185
  %1228 = select i1 %1226, float 0.000000e+00, float 1.000000e+00
  %1229 = select i1 %1227, float %1223, float 1.000000e+00
  %1230 = select i1 %1227, float %1224, float 1.000000e+00
  %1231 = select i1 %1227, float %1225, float 1.000000e+00
  %1232 = select i1 %1227, float %887, float %1222
  %1233 = select i1 %1227, float %1228, float 0.000000e+00
  %1234 = fmul fast float %68, 5.400000e+02
  %1235 = fmul fast float %70, 5.400000e+02
  %1236 = fmul fast float %1234, %44
  %1237 = fmul fast float %1235, %45
  %1238 = call float @dx.op.unary.f32(i32 27, float %1236)  ; Round_ni(value)
  %1239 = call float @dx.op.unary.f32(i32 27, float %1237)  ; Round_ni(value)
  %1240 = fadd fast float %1239, %1238
  %1241 = frem fast float %1240, 2.000000e+00
  %1242 = call float @dx.op.unary.f32(i32 22, float %1236)  ; Frc(value)
  %1243 = call float @dx.op.unary.f32(i32 22, float %1237)  ; Frc(value)
  %1244 = fadd fast float %1242, -5.000000e-01
  %1245 = fadd fast float %1243, -5.000000e-01
  %1246 = fmul fast float %1244, 2.000000e+00
  %1247 = fmul fast float %1245, 2.000000e+00
  %1248 = call float @dx.op.dot2.f32(i32 54, float %1246, float %1247, float %1246, float %1247)  ; Dot2(ax,ay,bx,by)
  %1249 = call float @dx.op.unary.f32(i32 24, float %1248)  ; Sqrt(value)
  %1250 = fsub fast float 1.000000e+00, %1249
  %1251 = fmul fast float %1250, 2.000000e+00
  %1252 = call float @dx.op.unary.f32(i32 7, float %1251)  ; Saturate(value)
  %1253 = fmul fast float %60, %59
  %1254 = fmul fast float %1235, %1234
  %1255 = fdiv fast float %1253, %1254
  %1256 = fptoui float %1255 to i32
  %1257 = icmp ult i32 %1256, 4
  %1258 = select i1 %1257, float 1.000000e+00, float %1252
  %1259 = fmul fast float %1229, %1241
  %1260 = fmul fast float %1230, %1241
  %1261 = fmul fast float %1231, %1241
  %1262 = fmul fast float %1241, %1232
  %1263 = fmul fast float %1259, %1258
  %1264 = fmul fast float %1260, %1258
  %1265 = fmul fast float %1261, %1258
  %1266 = fmul fast float %1262, %1258
  %1267 = fsub fast float 1.000000e+00, %1099
  %1268 = fmul fast float %1267, %1267
  %1269 = fmul fast float %1268, 3.000000e+00
  %1270 = fadd fast float %1269, 2.500000e-01
  %1271 = call float @dx.op.unary.f32(i32 7, float %1270)  ; Saturate(value)
  %1272 = fmul fast float %1241, 0x3FC3333340000000
  %1273 = fadd fast float %1272, 7.500000e-01
  %1274 = fmul fast float %1273, %1233
  %1275 = call float @dx.op.binary.f32(i32 35, float %1263, float %1274)  ; FMax(a,b)
  %1276 = call float @dx.op.binary.f32(i32 35, float %1264, float %1274)  ; FMax(a,b)
  %1277 = call float @dx.op.binary.f32(i32 35, float %1265, float %1274)  ; FMax(a,b)
  %1278 = fmul fast float %1271, %1233
  %1279 = call float @dx.op.binary.f32(i32 35, float %1266, float %1278)  ; FMax(a,b)
  %1280 = fmul fast float %931, %884
  %1281 = fmul fast float %1280, %1275
  %1282 = fmul fast float %931, %885
  %1283 = fmul fast float %1282, %1276
  %1284 = fmul fast float %931, %886
  %1285 = fmul fast float %1284, %1277
  %1286 = fmul fast float %1271, %931
  %1287 = fmul fast float %1286, %1279
  %1288 = call float @dx.op.unary.f32(i32 7, float %1281)  ; Saturate(value)
  %1289 = call float @dx.op.unary.f32(i32 7, float %1283)  ; Saturate(value)
  %1290 = call float @dx.op.unary.f32(i32 7, float %1285)  ; Saturate(value)
  %1291 = call float @dx.op.unary.f32(i32 7, float %1287)  ; Saturate(value)
  %1292 = fmul fast float %1288, 0x3FF3333340000000
  %1293 = fmul fast float %1289, 0x3FF3333340000000
  %1294 = fmul fast float %1290, 0x3FF3333340000000
  %1295 = fmul fast float %1291, 0x3FF3333340000000
  br label %5168

; <label>:1296                                    ; preds = %613
  %1297 = and i32 %628, 511
  %1298 = mul nuw nsw i32 %1297, 20
  %1299 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %1298, i32 undef)  ; BufferLoad(srv,index,wot)
  %1300 = extractvalue %dx.types.ResRet.i32 %1299, 0
  %1301 = lshr i32 %1300, 24
  %1302 = uitofp i32 %1301 to float
  %1303 = fmul fast float %1302, 0x3F70101020000000
  %1304 = fsub fast float 1.000000e+00, %1303
  %1305 = add nuw nsw i32 %1298, 12
  %1306 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %1305, i32 undef)  ; BufferLoad(srv,index,wot)
  %1307 = extractvalue %dx.types.ResRet.i32 %1306, 0
  %1308 = and i32 %1307, 65535
  %1309 = uitofp i32 %1308 to float
  %1310 = fmul fast float %1309, 0x3EF0002000000000
  %1311 = lshr i32 %1307, 16
  %1312 = uitofp i32 %1311 to float
  %1313 = fmul fast float %1312, 0x3EF0002000000000
  %1314 = add nuw nsw i32 %1298, 8
  %1315 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %1314, i32 undef)  ; BufferLoad(srv,index,wot)
  %1316 = extractvalue %dx.types.ResRet.i32 %1315, 0
  %1317 = and i32 %1316, 65535
  %1318 = uitofp i32 %1317 to float
  %1319 = fmul fast float %1318, 0x3EF0002000000000
  %1320 = lshr i32 %1316, 16
  %1321 = uitofp i32 %1320 to float
  %1322 = fmul fast float %1321, 0x3EF0002000000000
  %1323 = fsub fast float %44, %1319
  %1324 = fdiv fast float %1323, %1310
  %1325 = fsub fast float %45, %1322
  %1326 = fdiv fast float %1325, %1313
  %1327 = add nuw nsw i32 %1298, 16
  %1328 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %1327, i32 undef)  ; BufferLoad(srv,index,wot)
  %1329 = extractvalue %dx.types.ResRet.f32 %1328, 0
  %1330 = fcmp fast olt float %1329, 1.000000e+01
  %1331 = uitofp i1 %1330 to float
  %1332 = fdiv fast float 2.400000e+02, %1329
  %1333 = call float @dx.op.unary.f32(i32 7, float %1332)  ; Saturate(value)
  %1334 = fdiv fast float 3.200000e+02, %1329
  %1335 = call float @dx.op.unary.f32(i32 7, float %1334)  ; Saturate(value)
  %1336 = fmul fast float %1335, 5.000000e-01
  %1337 = fadd fast float %1336, 2.500000e-01
  %1338 = fdiv fast float 3.200000e+01, %1337
  %1339 = select i1 %1330, float 3.200000e+01, float %1338
  %1340 = fmul fast float %1339, 1.600000e+01
  %1341 = fmul fast float %1339, 9.000000e+00
  %1342 = fmul fast float %1310, %1324
  %1343 = fmul fast float %1342, %1340
  %1344 = fmul fast float %1313, %1326
  %1345 = fmul fast float %1344, %1341
  %1346 = call float @dx.op.unary.f32(i32 29, float %1343)  ; Round_z(value)
  %1347 = call float @dx.op.unary.f32(i32 29, float %1345)  ; Round_z(value)
  %1348 = call float @dx.op.unary.f32(i32 7, float %1303)  ; Saturate(value)
  %1349 = fmul fast float %1348, 2.000000e+00
  %1350 = fsub fast float 3.000000e+00, %1349
  %1351 = fmul fast float %1333, 4.000000e+01
  %1352 = fmul fast float %1331, 1.000000e+02
  %1353 = fadd fast float %1352, %1351
  %1354 = fptoui float %1353 to i32
  %1355 = uitofp i32 %63 to float
  %1356 = uitofp i32 %64 to float
  %1357 = fptoui float %1355 to i32
  %1358 = fptoui float %1356 to i32
  %1359 = lshr i32 %1358, 2
  %1360 = mul i32 %85, %1359
  %1361 = lshr i32 %1357, 3
  %1362 = add i32 %81, %1361
  %1363 = add i32 %1362, %83
  %1364 = add i32 %1363, %1360
  %1365 = shl i32 %1364, 2
  %1366 = shl i32 %1358, 3
  %1367 = and i32 %1366, 24
  %1368 = and i32 %1357, 7
  %1369 = or i32 %1367, %1368
  %1370 = shl i32 1, %1369
  %1371 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %1365, i32 undef)  ; BufferLoad(srv,index,wot)
  %1372 = extractvalue %dx.types.ResRet.i32 %1371, 0
  %1373 = and i32 %1372, %1370
  %1374 = icmp ne i32 %1373, 0
  %1375 = icmp eq i32 %1354, 0
  br i1 %1375, label %1492, label %1376, !dx.controlflow.hints !50

; <label>:1376                                    ; preds = %1296
  %1377 = uitofp i32 %1354 to float
  %1378 = fmul fast float %65, 5.000000e-01
  %1379 = fmul fast float %1378, %1377
  %1380 = fmul fast float %66, 5.000000e-01
  %1381 = fmul fast float %1380, %1377
  %1382 = call float @dx.op.binary.f32(i32 35, float 5.000000e-01, float %1379)  ; FMax(a,b)
  %1383 = call float @dx.op.binary.f32(i32 35, float 5.000000e-01, float %1381)  ; FMax(a,b)
  br label %1384

; <label>:1384                                    ; preds = %1479, %1376
  %1385 = phi float [ 0.000000e+00, %1376 ], [ %1482, %1479 ]
  %1386 = phi i32 [ 0, %1376 ], [ %1483, %1479 ]
  %1387 = fmul fast float %44, 0x3FF280E1E0000000
  %1388 = fmul fast float %45, 0x3FF280E1E0000000
  %1389 = sitofp i32 %1386 to float
  %1390 = fmul fast float %1389, 0x3FB99999A0000000
  %1391 = fadd fast float %1390, %1387
  %1392 = fadd fast float %1390, %1388
  %1393 = fmul fast float %1391, 1.024000e+03
  %1394 = fmul fast float %1392, 1.024000e+03
  %1395 = fadd fast float %1393, -5.120000e+02
  %1396 = fadd fast float %1394, -5.120000e+02
  %1397 = fmul fast float %1391, 0x4081BEDF00000000
  %1398 = fadd fast float %1397, 0xC071BEDF00000000
  %1399 = call float @dx.op.unary.f32(i32 22, float %1398)  ; Frc(value)
  %1400 = fmul fast float %1395, %1399
  %1401 = fadd fast float %1400, %1396
  %1402 = fmul fast float %1392, 0x4073BEBE20000000
  %1403 = fadd fast float %1402, 0xC063BEBE20000000
  %1404 = call float @dx.op.unary.f32(i32 22, float %1403)  ; Frc(value)
  %1405 = fmul fast float %1396, %1404
  %1406 = fadd fast float %1405, %1395
  %1407 = fmul fast float %1401, %1406
  %1408 = call float @dx.op.unary.f32(i32 22, float %1407)  ; Frc(value)
  %1409 = fmul fast float %1408, 2.000000e+00
  %1410 = fadd fast float %1409, -1.000000e+00
  %1411 = fmul fast float %1410, %1382
  %1412 = fmul fast float %44, 0x3FEB681740000000
  %1413 = fmul fast float %45, 0x3FEB681740000000
  %1414 = fmul fast float %1389, 0x3FC99999A0000000
  %1415 = fadd fast float %1414, 1.250000e-01
  %1416 = fadd fast float %1415, %1412
  %1417 = fadd fast float %1415, %1413
  %1418 = fmul fast float %1416, 1.024000e+03
  %1419 = fmul fast float %1417, 1.024000e+03
  %1420 = fadd fast float %1418, -5.120000e+02
  %1421 = fadd fast float %1419, -5.120000e+02
  %1422 = fmul fast float %1416, 0x4081BEDF00000000
  %1423 = fadd fast float %1422, 0xC071BEDF00000000
  %1424 = call float @dx.op.unary.f32(i32 22, float %1423)  ; Frc(value)
  %1425 = fmul fast float %1420, %1424
  %1426 = fadd fast float %1425, %1421
  %1427 = fmul fast float %1417, 0x4073BEBE20000000
  %1428 = fadd fast float %1427, 0xC063BEBE20000000
  %1429 = call float @dx.op.unary.f32(i32 22, float %1428)  ; Frc(value)
  %1430 = fmul fast float %1421, %1429
  %1431 = fadd fast float %1430, %1420
  %1432 = fmul fast float %1426, %1431
  %1433 = call float @dx.op.unary.f32(i32 22, float %1432)  ; Frc(value)
  %1434 = fmul fast float %1433, 2.000000e+00
  %1435 = fadd fast float %1434, -1.000000e+00
  %1436 = fmul fast float %1435, %1383
  %1437 = fptosi float %1411 to i32
  %1438 = sitofp i32 %1437 to float
  %1439 = fadd fast float %1438, %1355
  %1440 = fptosi float %1439 to i32
  %1441 = fptosi float %1436 to i32
  %1442 = sitofp i32 %1441 to float
  %1443 = fadd fast float %1442, %1356
  %1444 = fptosi float %1443 to i32
  %1445 = or i32 %1444, %1440
  %1446 = icmp slt i32 %1445, 0
  %1447 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %1448 = extractvalue %dx.types.CBufRet.f32 %1447, 0
  %1449 = extractvalue %dx.types.CBufRet.f32 %1447, 1
  %1450 = fptosi float %1448 to i32
  %1451 = fptosi float %1449 to i32
  %1452 = icmp sge i32 %1440, %1450
  %1453 = icmp sge i32 %1444, %1451
  %1454 = or i1 %1452, %1453
  %1455 = or i1 %1446, %1454
  br i1 %1455, label %1479, label %1456, !dx.controlflow.hints !47

; <label>:1456                                    ; preds = %1384
  %1457 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %18, i32 51)  ; CBufferLoadLegacy(handle,regIndex)
  %1458 = extractvalue %dx.types.CBufRet.i32 %1457, 1
  %1459 = shl i32 %1458, 2
  %1460 = extractvalue %dx.types.CBufRet.i32 %1457, 3
  %1461 = shl i32 %1460, 1
  %1462 = lshr i32 %1444, 2
  %1463 = extractvalue %dx.types.CBufRet.i32 %1457, 2
  %1464 = mul i32 %1463, %1462
  %1465 = lshr i32 %1440, 3
  %1466 = add i32 %1459, %1465
  %1467 = add i32 %1466, %1461
  %1468 = add i32 %1467, %1464
  %1469 = shl i32 %1468, 2
  %1470 = shl i32 %1444, 3
  %1471 = and i32 %1470, 24
  %1472 = and i32 %1440, 7
  %1473 = or i32 %1471, %1472
  %1474 = shl i32 1, %1473
  %1475 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %1469, i32 undef)  ; BufferLoad(srv,index,wot)
  %1476 = extractvalue %dx.types.ResRet.i32 %1475, 0
  %1477 = and i32 %1476, %1474
  %1478 = icmp ne i32 %1477, 0
  br label %1479

; <label>:1479                                    ; preds = %1456, %1384
  %1480 = phi i1 [ %1478, %1456 ], [ false, %1384 ]
  %1481 = uitofp i1 %1480 to float
  %1482 = fadd fast float %1481, %1385
  %1483 = add nuw nsw i32 %1386, 1
  %1484 = icmp eq i32 %1483, 5
  br i1 %1484, label %1485, label %1384

; <label>:1485                                    ; preds = %1479
  %1486 = uitofp i1 %1374 to float
  %1487 = fmul fast float %1486, 0x3FC99999A0000000
  %1488 = fmul fast float %1487, %1482
  %1489 = fadd fast float %1488, -5.000000e-01
  %1490 = fmul fast float %1489, 2.000000e+00
  %1491 = call float @dx.op.unary.f32(i32 7, float %1490)  ; Saturate(value)
  br label %1492

; <label>:1492                                    ; preds = %1485, %1296
  %1493 = phi float [ %1491, %1485 ], [ 0.000000e+00, %1296 ]
  %1494 = fdiv fast float %1346, %1340
  %1495 = fdiv fast float %1347, %1341
  %1496 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1497 = extractvalue %dx.types.CBufRet.f32 %1496, 3
  %1498 = fmul fast float %1497, 0x3FE99999A0000000
  %1499 = fadd fast float %1498, %1494
  %1500 = fsub fast float %1495, %1498
  %1501 = call float @dx.op.unary.f32(i32 22, float %1499)  ; Frc(value)
  %1502 = call float @dx.op.unary.f32(i32 22, float %1500)  ; Frc(value)
  %1503 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %15, float %1501, float %1502, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1504 = extractvalue %dx.types.ResRet.f32 %1503, 0
  %1505 = fmul fast float %1504, 1.500000e+00
  %1506 = call float @dx.op.unary.f32(i32 7, float %1505)  ; Saturate(value)
  %1507 = call float @dx.op.binary.f32(i32 35, float 0x3FE51EB860000000, float %1506)  ; FMax(a,b)
  %1508 = fsub fast float -5.000000e-01, %1346
  %1509 = fadd fast float %1508, %1343
  %1510 = fsub fast float -5.000000e-01, %1347
  %1511 = fadd fast float %1510, %1345
  %1512 = fmul fast float %1509, 2.000000e+00
  %1513 = fmul fast float %1511, 2.000000e+00
  %1514 = call float @dx.op.dot2.f32(i32 54, float %1512, float %1513, float %1512, float %1513)  ; Dot2(ax,ay,bx,by)
  %1515 = call float @dx.op.unary.f32(i32 24, float %1514)  ; Sqrt(value)
  %1516 = fsub fast float 1.000000e+00, %1515
  %1517 = fmul fast float %1516, 2.000000e+00
  %1518 = call float @dx.op.unary.f32(i32 7, float %1517)  ; Saturate(value)
  %1519 = fmul fast float %1497, 0x3F9EB851E0000000
  %1520 = fadd fast float %1519, %1326
  %1521 = call float @dx.op.unary.f32(i32 22, float %1520)  ; Frc(value)
  %1522 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %14, float %1324, float %1521, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1523 = extractvalue %dx.types.ResRet.f32 %1522, 3
  %1524 = call float @dx.op.unary.f32(i32 7, float %1493)  ; Saturate(value)
  %1525 = fmul fast float %1523, %1304
  %1526 = fsub fast float %1524, %1525
  %1527 = call float @dx.op.unary.f32(i32 7, float %1526)  ; Saturate(value)
  %1528 = fmul fast float %1523, 1.250000e+00
  %1529 = fsub fast float %1524, %1528
  %1530 = call float @dx.op.unary.f32(i32 7, float %1529)  ; Saturate(value)
  %1531 = fsub fast float 5.000000e-01, %1326
  %1532 = fmul fast float %1531, 2.000000e+00
  %1533 = call float @dx.op.unary.f32(i32 7, float %1532)  ; Saturate(value)
  %1534 = fmul fast float %1533, %1533
  %1535 = fmul fast float %1534, 7.500000e-01
  %1536 = fadd fast float %1535, 1.000000e+00
  %1537 = fmul fast float %1527, 7.500000e-01
  %1538 = fmul fast float %1537, %1536
  %1539 = fmul fast float %1331, 0x3FD3333340000000
  %1540 = fadd fast float %1539, 0x3FC3333340000000
  %1541 = fmul fast float %1530, %1540
  %1542 = fadd fast float %1538, %1541
  %1543 = fmul fast float %1542, %1542
  %1544 = fmul fast float %1543, %1542
  %1545 = call float @dx.op.unary.f32(i32 7, float %1544)  ; Saturate(value)
  %1546 = fmul fast float %1545, 0x40285C2900000000
  %1547 = fsub fast float 1.400000e+01, %1546
  %1548 = fptoui float %1547 to i32
  %1549 = call float @dx.op.unary.f32(i32 22, float %1547)  ; Frc(value)
  %1550 = mul i32 %1548, 3
  %1551 = add i32 0, %1550
  %1552 = getelementptr [45 x float], [45 x float]* @heat_ramp.v.1dim, i32 0, i32 %1551
  %1553 = load float, float* %1552, align 4
  %1554 = mul i32 %1548, 3
  %1555 = add i32 1, %1554
  %1556 = getelementptr [45 x float], [45 x float]* @heat_ramp.v.1dim, i32 0, i32 %1555
  %1557 = load float, float* %1556, align 4
  %1558 = mul i32 %1548, 3
  %1559 = add i32 2, %1558
  %1560 = getelementptr [45 x float], [45 x float]* @heat_ramp.v.1dim, i32 0, i32 %1559
  %1561 = load float, float* %1560, align 4
  %1562 = add i32 %1548, 1
  %1563 = mul i32 %1562, 3
  %1564 = add i32 0, %1563
  %1565 = getelementptr [45 x float], [45 x float]* @heat_ramp.v.1dim, i32 0, i32 %1564
  %1566 = load float, float* %1565, align 4
  %1567 = mul i32 %1562, 3
  %1568 = add i32 1, %1567
  %1569 = getelementptr [45 x float], [45 x float]* @heat_ramp.v.1dim, i32 0, i32 %1568
  %1570 = load float, float* %1569, align 4
  %1571 = mul i32 %1562, 3
  %1572 = add i32 2, %1571
  %1573 = getelementptr [45 x float], [45 x float]* @heat_ramp.v.1dim, i32 0, i32 %1572
  %1574 = load float, float* %1573, align 4
  %1575 = fsub fast float %1566, %1553
  %1576 = fsub fast float %1570, %1557
  %1577 = fsub fast float %1574, %1561
  %1578 = fmul fast float %1575, %1549
  %1579 = fmul fast float %1576, %1549
  %1580 = fmul fast float %1577, %1549
  %1581 = fadd fast float %1578, %1553
  %1582 = fadd fast float %1579, %1557
  %1583 = fadd fast float %1580, %1561
  %1584 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 17)  ; CBufferLoadLegacy(handle,regIndex)
  %1585 = extractvalue %dx.types.CBufRet.f32 %1584, 0
  %1586 = fmul fast float %1348, %1348
  %1587 = fmul fast float %1586, %1350
  %1588 = fmul fast float %1587, %1507
  %1589 = fmul fast float %1588, %1518
  %1590 = fmul fast float %1589, %1527
  %1591 = fmul fast float %1590, %1585
  %1592 = fmul fast float %1581, %1581
  %1593 = fmul fast float %1592, 2.000000e+00
  %1594 = fmul fast float %1593, %1591
  %1595 = fmul fast float %1582, %1582
  %1596 = fmul fast float %1595, 2.000000e+00
  %1597 = fmul fast float %1596, %1591
  %1598 = fmul fast float %1583, %1583
  %1599 = fmul fast float %1598, 2.000000e+00
  %1600 = fmul fast float %1599, %1591
  %1601 = call float @dx.op.binary.f32(i32 36, float %1594, float 2.000000e+00)  ; FMin(a,b)
  %1602 = call float @dx.op.binary.f32(i32 36, float %1597, float 2.000000e+00)  ; FMin(a,b)
  %1603 = call float @dx.op.binary.f32(i32 36, float %1600, float 2.000000e+00)  ; FMin(a,b)
  %1604 = select i1 %1330, float 0x3FD3333340000000, float 7.500000e-01
  %1605 = fmul float %1604, %1591
  br label %5168

; <label>:1606                                    ; preds = %613
  %1607 = icmp eq i32 %630, 0
  %1608 = and i1 %1607, %109
  %1609 = icmp eq i32 %632, 0
  %1610 = and i1 %108, %1609
  %1611 = or i1 %1608, %1610
  br i1 %1611, label %5168, label %1612, !dx.controlflow.hints !51

; <label>:1612                                    ; preds = %1606
  %1613 = and i32 %628, 511
  %1614 = mul nuw nsw i32 %1613, 20
  br i1 %108, label %1615, label %1781, !dx.controlflow.hints !52

; <label>:1615                                    ; preds = %1612
  %1616 = add nuw nsw i32 %1614, 4
  %1617 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %1616, i32 undef)  ; BufferLoad(srv,index,wot)
  %1618 = extractvalue %dx.types.ResRet.i32 %1617, 0
  %1619 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %1614, i32 undef)  ; BufferLoad(srv,index,wot)
  %1620 = extractvalue %dx.types.ResRet.i32 %1619, 0
  %1621 = and i32 %1620, 255
  %1622 = uitofp i32 %1621 to float
  %1623 = lshr i32 %1620, 8
  %1624 = and i32 %1623, 255
  %1625 = uitofp i32 %1624 to float
  %1626 = lshr i32 %1620, 16
  %1627 = and i32 %1626, 255
  %1628 = uitofp i32 %1627 to float
  %1629 = lshr i32 %1620, 24
  %1630 = uitofp i32 %1629 to float
  %1631 = and i32 %628, 1048576
  %1632 = icmp ne i32 %1631, 0
  %1633 = and i32 %628, 2097152
  %1634 = icmp ne i32 %1633, 0
  %1635 = lshr i32 %1618, 8
  %1636 = and i32 %1635, 65535
  %1637 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1636)  ; LegacyF16ToF32(value)
  %1638 = and i32 %628, 65536
  %1639 = icmp ne i32 %1638, 0
  %1640 = select i1 %1639, float 1.000000e+00, float 0.000000e+00
  %1641 = select i1 %1632, float 0.000000e+00, float %1640
  %1642 = icmp ne i32 %632, 0
  %1643 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %1644 = extractvalue %dx.types.CBufRet.f32 %1643, 0
  %1645 = extractvalue %dx.types.CBufRet.f32 %1643, 1
  %1646 = extractvalue %dx.types.CBufRet.f32 %1643, 2
  %1647 = extractvalue %dx.types.CBufRet.f32 %1643, 3
  %1648 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %1649 = extractvalue %dx.types.CBufRet.f32 %1648, 0
  %1650 = extractvalue %dx.types.CBufRet.f32 %1648, 1
  %1651 = extractvalue %dx.types.CBufRet.f32 %1648, 2
  %1652 = extractvalue %dx.types.CBufRet.f32 %1648, 3
  %1653 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1654 = extractvalue %dx.types.CBufRet.f32 %1653, 0
  %1655 = fmul fast float %1654, 2.000000e+00
  %1656 = select i1 %1634, float %1655, float 1.000000e+00
  %1657 = select i1 %1642, float 0x3F70101020000000, float 0.000000e+00
  %1658 = fmul fast float %1657, %1622
  %1659 = fmul fast float %1658, %1656
  %1660 = fmul fast float %1657, %1625
  %1661 = fmul fast float %1660, %1656
  %1662 = fmul fast float %1657, %1628
  %1663 = fmul fast float %1662, %1656
  %1664 = fmul fast float %1657, %1630
  %1665 = fmul fast float %1664, %1656
  %1666 = fcmp fast oeq float %1637, 0.000000e+00
  br i1 %1666, label %1766, label %1667, !dx.controlflow.hints !46

; <label>:1667                                    ; preds = %1615
  %1668 = fmul fast float %1637, %65
  %1669 = fptosi float %1668 to i32
  %1670 = fmul fast float %1637, %66
  %1671 = fptosi float %1670 to i32
  %1672 = call i32 @dx.op.binary.i32(i32 37, i32 1, i32 %1669)  ; IMax(a,b)
  %1673 = call i32 @dx.op.binary.i32(i32 37, i32 1, i32 %1671)  ; IMax(a,b)
  %1674 = sub i32 %64, %1673
  %1675 = or i32 %1674, %63
  %1676 = icmp slt i32 %1675, 0
  %1677 = fptosi float %59 to i32
  %1678 = fptosi float %60 to i32
  %1679 = icmp sge i32 %63, %1677
  %1680 = icmp sge i32 %1674, %1678
  %1681 = or i1 %1679, %1680
  %1682 = or i1 %1676, %1681
  br i1 %1682, label %1696, label %1683, !dx.controlflow.hints !47

; <label>:1683                                    ; preds = %1667
  %1684 = lshr i32 %1674, 2
  %1685 = mul i32 %85, %1684
  %1686 = add i32 %89, %1685
  %1687 = shl i32 %1686, 2
  %1688 = shl i32 %1674, 3
  %1689 = and i32 %1688, 24
  %1690 = or i32 %1689, %94
  %1691 = shl i32 1, %1690
  %1692 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %1687, i32 undef)  ; BufferLoad(srv,index,wot)
  %1693 = extractvalue %dx.types.ResRet.i32 %1692, 0
  %1694 = and i32 %1693, %1691
  %1695 = icmp ne i32 %1694, 0
  br label %1696

; <label>:1696                                    ; preds = %1683, %1667
  %1697 = phi i1 [ %1695, %1683 ], [ false, %1667 ]
  %1698 = add i32 %1673, %64
  %1699 = or i32 %1698, %63
  %1700 = icmp slt i32 %1699, 0
  %1701 = icmp sge i32 %1698, %1678
  %1702 = or i1 %1679, %1701
  %1703 = or i1 %1700, %1702
  br i1 %1703, label %1717, label %1704, !dx.controlflow.hints !47

; <label>:1704                                    ; preds = %1696
  %1705 = lshr i32 %1698, 2
  %1706 = mul i32 %85, %1705
  %1707 = add i32 %89, %1706
  %1708 = shl i32 %1707, 2
  %1709 = shl i32 %1698, 3
  %1710 = and i32 %1709, 24
  %1711 = or i32 %1710, %94
  %1712 = shl i32 1, %1711
  %1713 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %1708, i32 undef)  ; BufferLoad(srv,index,wot)
  %1714 = extractvalue %dx.types.ResRet.i32 %1713, 0
  %1715 = and i32 %1714, %1712
  %1716 = icmp ne i32 %1715, 0
  br label %1717

; <label>:1717                                    ; preds = %1704, %1696
  %1718 = phi i1 [ %1716, %1704 ], [ false, %1696 ]
  %1719 = and i1 %1697, %1718
  %1720 = sub i32 %63, %1672
  %1721 = or i32 %1720, %64
  %1722 = icmp slt i32 %1721, 0
  %1723 = icmp sge i32 %1720, %1677
  %1724 = icmp sge i32 %64, %1678
  %1725 = or i1 %1723, %1724
  %1726 = or i1 %1722, %1725
  br i1 %1726, label %1740, label %1727, !dx.controlflow.hints !47

; <label>:1727                                    ; preds = %1717
  %1728 = lshr i32 %1720, 3
  %1729 = add i32 %81, %1728
  %1730 = add i32 %1729, %83
  %1731 = add i32 %1730, %86
  %1732 = shl i32 %1731, 2
  %1733 = and i32 %1720, 7
  %1734 = or i32 %1733, %93
  %1735 = shl i32 1, %1734
  %1736 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %1732, i32 undef)  ; BufferLoad(srv,index,wot)
  %1737 = extractvalue %dx.types.ResRet.i32 %1736, 0
  %1738 = and i32 %1737, %1735
  %1739 = icmp ne i32 %1738, 0
  br label %1740

; <label>:1740                                    ; preds = %1727, %1717
  %1741 = phi i1 [ %1739, %1727 ], [ false, %1717 ]
  %1742 = and i1 %1719, %1741
  %1743 = add i32 %1672, %63
  %1744 = or i32 %1743, %64
  %1745 = icmp slt i32 %1744, 0
  %1746 = icmp sge i32 %1743, %1677
  %1747 = or i1 %1746, %1724
  %1748 = or i1 %1745, %1747
  br i1 %1748, label %1762, label %1749, !dx.controlflow.hints !47

; <label>:1749                                    ; preds = %1740
  %1750 = lshr i32 %1743, 3
  %1751 = add i32 %81, %1750
  %1752 = add i32 %1751, %83
  %1753 = add i32 %1752, %86
  %1754 = shl i32 %1753, 2
  %1755 = and i32 %1743, 7
  %1756 = or i32 %1755, %93
  %1757 = shl i32 1, %1756
  %1758 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %1754, i32 undef)  ; BufferLoad(srv,index,wot)
  %1759 = extractvalue %dx.types.ResRet.i32 %1758, 0
  %1760 = and i32 %1759, %1757
  %1761 = icmp ne i32 %1760, 0
  br label %1762

; <label>:1762                                    ; preds = %1749, %1740
  %1763 = phi i1 [ %1761, %1749 ], [ false, %1740 ]
  %1764 = and i1 %1742, %1763
  %1765 = xor i1 %1764, true
  br label %1766

; <label>:1766                                    ; preds = %1762, %1615
  %1767 = phi i1 [ %1765, %1762 ], [ false, %1615 ]
  br i1 %1767, label %5168, label %1768, !dx.controlflow.hints !48

; <label>:1768                                    ; preds = %1766
  %1769 = select i1 %78, float %1649, float %1644
  %1770 = select i1 %78, float %1650, float %1645
  %1771 = select i1 %78, float %1651, float %1646
  %1772 = select i1 %78, float %1652, float %1647
  %1773 = fmul fast float %1769, %1641
  %1774 = fmul fast float %1770, %1641
  %1775 = fmul fast float %1771, %1641
  %1776 = fmul fast float %1772, %1641
  %1777 = fmul fast float %1773, %1659
  %1778 = fmul fast float %1774, %1661
  %1779 = fmul fast float %1775, %1663
  %1780 = fmul fast float %1776, %1665
  br label %5168

; <label>:1781                                    ; preds = %1612
  %1782 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %1614, i32 undef)  ; BufferLoad(srv,index,wot)
  %1783 = extractvalue %dx.types.ResRet.i32 %1782, 0
  %1784 = and i32 %1783, 255
  %1785 = uitofp i32 %1784 to float
  %1786 = lshr i32 %1783, 8
  %1787 = and i32 %1786, 255
  %1788 = uitofp i32 %1787 to float
  %1789 = lshr i32 %1783, 16
  %1790 = and i32 %1789, 255
  %1791 = uitofp i32 %1790 to float
  %1792 = lshr i32 %1783, 24
  %1793 = uitofp i32 %1792 to float
  %1794 = fmul fast float %1785, 0x3F70101020000000
  %1795 = fmul fast float %1788, 0x3F70101020000000
  %1796 = fmul fast float %1791, 0x3F70101020000000
  %1797 = fmul fast float %1793, 0x3F70101020000000
  %1798 = fsub fast float 1.000000e+00, %1797
  %1799 = lshr i32 %628, 5
  %1800 = and i32 %1799, 1008
  %1801 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %1800, i32 undef)  ; BufferLoad(srv,index,wot)
  %1802 = extractvalue %dx.types.ResRet.i32 %1801, 0
  %1803 = and i32 %1802, 1022
  %1804 = uitofp i32 %1803 to float
  %1805 = fmul fast float %1804, 0x3F940A0500000000
  %1806 = fadd fast float %1805, -1.000000e+01
  %1807 = lshr i32 %1802, 10
  %1808 = and i32 %1807, 1022
  %1809 = uitofp i32 %1808 to float
  %1810 = fmul fast float %1809, 0x3F940A0500000000
  %1811 = fadd fast float %1810, -1.000000e+01
  %1812 = lshr i32 %1802, 20
  %1813 = and i32 %1812, 1022
  %1814 = uitofp i32 %1813 to float
  %1815 = fmul fast float %1814, 0x3F840A0500000000
  %1816 = add nuw nsw i32 %1614, 12
  %1817 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %1816, i32 undef)  ; BufferLoad(srv,index,wot)
  %1818 = extractvalue %dx.types.ResRet.i32 %1817, 0
  %1819 = and i32 %1818, 65535
  %1820 = uitofp i32 %1819 to float
  %1821 = fmul fast float %1820, 0x3EF0002000000000
  %1822 = lshr i32 %1818, 16
  %1823 = uitofp i32 %1822 to float
  %1824 = fmul fast float %1823, 0x3EF0002000000000
  %1825 = add nuw nsw i32 %1614, 8
  %1826 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %1825, i32 undef)  ; BufferLoad(srv,index,wot)
  %1827 = extractvalue %dx.types.ResRet.i32 %1826, 0
  %1828 = and i32 %1827, 65535
  %1829 = uitofp i32 %1828 to float
  %1830 = fmul fast float %1829, 0x3EF0002000000000
  %1831 = lshr i32 %1827, 16
  %1832 = uitofp i32 %1831 to float
  %1833 = fmul fast float %1832, 0x3EF0002000000000
  %1834 = fsub fast float %44, %1830
  %1835 = fdiv fast float %1834, %1821
  %1836 = fsub fast float %45, %1833
  %1837 = fdiv fast float %1836, %1824
  %1838 = add nuw nsw i32 %1614, 16
  %1839 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %1838, i32 undef)  ; BufferLoad(srv,index,wot)
  %1840 = extractvalue %dx.types.ResRet.f32 %1839, 0
  %1841 = fcmp fast olt float %1840, 1.000000e+01
  %1842 = uitofp i1 %1841 to float
  %1843 = fdiv fast float 2.400000e+02, %1840
  %1844 = call float @dx.op.unary.f32(i32 7, float %1843)  ; Saturate(value)
  %1845 = fdiv fast float 3.200000e+02, %1840
  %1846 = call float @dx.op.unary.f32(i32 7, float %1845)  ; Saturate(value)
  %1847 = fmul fast float %1846, 5.000000e-01
  %1848 = fadd fast float %1847, 2.500000e-01
  %1849 = fdiv fast float 3.200000e+01, %1848
  %1850 = select i1 %1841, float 3.200000e+01, float %1849
  %1851 = fmul fast float %1850, 1.600000e+01
  %1852 = fmul fast float %1850, 9.000000e+00
  %1853 = fmul fast float %1821, %1835
  %1854 = fmul fast float %1853, %1851
  %1855 = fmul fast float %1824, %1837
  %1856 = fmul fast float %1855, %1852
  %1857 = call float @dx.op.unary.f32(i32 29, float %1854)  ; Round_z(value)
  %1858 = call float @dx.op.unary.f32(i32 29, float %1856)  ; Round_z(value)
  %1859 = call float @dx.op.unary.f32(i32 7, float %1797)  ; Saturate(value)
  %1860 = fmul fast float %1859, 2.000000e+00
  %1861 = fsub fast float 3.000000e+00, %1860
  %1862 = fmul fast float %1844, 4.000000e+01
  %1863 = fmul fast float %1842, 1.000000e+02
  %1864 = fadd fast float %1863, %1862
  %1865 = fmul fast float %1815, %1864
  %1866 = fptoui float %1865 to i32
  %1867 = uitofp i32 %63 to float
  %1868 = uitofp i32 %64 to float
  %1869 = fptoui float %1867 to i32
  %1870 = fptoui float %1868 to i32
  %1871 = lshr i32 %1870, 2
  %1872 = mul i32 %85, %1871
  %1873 = lshr i32 %1869, 3
  %1874 = add i32 %81, %1873
  %1875 = add i32 %1874, %83
  %1876 = add i32 %1875, %1872
  %1877 = shl i32 %1876, 2
  %1878 = shl i32 %1870, 3
  %1879 = and i32 %1878, 24
  %1880 = and i32 %1869, 7
  %1881 = or i32 %1879, %1880
  %1882 = shl i32 1, %1881
  %1883 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %1877, i32 undef)  ; BufferLoad(srv,index,wot)
  %1884 = extractvalue %dx.types.ResRet.i32 %1883, 0
  %1885 = and i32 %1884, %1882
  %1886 = icmp ne i32 %1885, 0
  %1887 = icmp eq i32 %1866, 0
  br i1 %1887, label %2004, label %1888, !dx.controlflow.hints !50

; <label>:1888                                    ; preds = %1781
  %1889 = uitofp i32 %1866 to float
  %1890 = fmul fast float %65, 5.000000e-01
  %1891 = fmul fast float %1890, %1889
  %1892 = fmul fast float %66, 5.000000e-01
  %1893 = fmul fast float %1892, %1889
  %1894 = call float @dx.op.binary.f32(i32 35, float 5.000000e-01, float %1891)  ; FMax(a,b)
  %1895 = call float @dx.op.binary.f32(i32 35, float 5.000000e-01, float %1893)  ; FMax(a,b)
  br label %1896

; <label>:1896                                    ; preds = %1991, %1888
  %1897 = phi float [ 0.000000e+00, %1888 ], [ %1994, %1991 ]
  %1898 = phi i32 [ 0, %1888 ], [ %1995, %1991 ]
  %1899 = fmul fast float %44, 0x3FF280E1E0000000
  %1900 = fmul fast float %45, 0x3FF280E1E0000000
  %1901 = sitofp i32 %1898 to float
  %1902 = fmul fast float %1901, 0x3FB99999A0000000
  %1903 = fadd fast float %1902, %1899
  %1904 = fadd fast float %1902, %1900
  %1905 = fmul fast float %1903, 1.024000e+03
  %1906 = fmul fast float %1904, 1.024000e+03
  %1907 = fadd fast float %1905, -5.120000e+02
  %1908 = fadd fast float %1906, -5.120000e+02
  %1909 = fmul fast float %1903, 0x4081BEDF00000000
  %1910 = fadd fast float %1909, 0xC071BEDF00000000
  %1911 = call float @dx.op.unary.f32(i32 22, float %1910)  ; Frc(value)
  %1912 = fmul fast float %1907, %1911
  %1913 = fadd fast float %1912, %1908
  %1914 = fmul fast float %1904, 0x4073BEBE20000000
  %1915 = fadd fast float %1914, 0xC063BEBE20000000
  %1916 = call float @dx.op.unary.f32(i32 22, float %1915)  ; Frc(value)
  %1917 = fmul fast float %1908, %1916
  %1918 = fadd fast float %1917, %1907
  %1919 = fmul fast float %1913, %1918
  %1920 = call float @dx.op.unary.f32(i32 22, float %1919)  ; Frc(value)
  %1921 = fmul fast float %1920, 2.000000e+00
  %1922 = fadd fast float %1921, -1.000000e+00
  %1923 = fmul fast float %1922, %1894
  %1924 = fmul fast float %44, 0x3FEB681740000000
  %1925 = fmul fast float %45, 0x3FEB681740000000
  %1926 = fmul fast float %1901, 0x3FC99999A0000000
  %1927 = fadd fast float %1926, 1.250000e-01
  %1928 = fadd fast float %1927, %1924
  %1929 = fadd fast float %1927, %1925
  %1930 = fmul fast float %1928, 1.024000e+03
  %1931 = fmul fast float %1929, 1.024000e+03
  %1932 = fadd fast float %1930, -5.120000e+02
  %1933 = fadd fast float %1931, -5.120000e+02
  %1934 = fmul fast float %1928, 0x4081BEDF00000000
  %1935 = fadd fast float %1934, 0xC071BEDF00000000
  %1936 = call float @dx.op.unary.f32(i32 22, float %1935)  ; Frc(value)
  %1937 = fmul fast float %1932, %1936
  %1938 = fadd fast float %1937, %1933
  %1939 = fmul fast float %1929, 0x4073BEBE20000000
  %1940 = fadd fast float %1939, 0xC063BEBE20000000
  %1941 = call float @dx.op.unary.f32(i32 22, float %1940)  ; Frc(value)
  %1942 = fmul fast float %1933, %1941
  %1943 = fadd fast float %1942, %1932
  %1944 = fmul fast float %1938, %1943
  %1945 = call float @dx.op.unary.f32(i32 22, float %1944)  ; Frc(value)
  %1946 = fmul fast float %1945, 2.000000e+00
  %1947 = fadd fast float %1946, -1.000000e+00
  %1948 = fmul fast float %1947, %1895
  %1949 = fptosi float %1923 to i32
  %1950 = sitofp i32 %1949 to float
  %1951 = fadd fast float %1950, %1867
  %1952 = fptosi float %1951 to i32
  %1953 = fptosi float %1948 to i32
  %1954 = sitofp i32 %1953 to float
  %1955 = fadd fast float %1954, %1868
  %1956 = fptosi float %1955 to i32
  %1957 = or i32 %1956, %1952
  %1958 = icmp slt i32 %1957, 0
  %1959 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %1960 = extractvalue %dx.types.CBufRet.f32 %1959, 0
  %1961 = extractvalue %dx.types.CBufRet.f32 %1959, 1
  %1962 = fptosi float %1960 to i32
  %1963 = fptosi float %1961 to i32
  %1964 = icmp sge i32 %1952, %1962
  %1965 = icmp sge i32 %1956, %1963
  %1966 = or i1 %1964, %1965
  %1967 = or i1 %1958, %1966
  br i1 %1967, label %1991, label %1968, !dx.controlflow.hints !47

; <label>:1968                                    ; preds = %1896
  %1969 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %18, i32 51)  ; CBufferLoadLegacy(handle,regIndex)
  %1970 = extractvalue %dx.types.CBufRet.i32 %1969, 1
  %1971 = shl i32 %1970, 2
  %1972 = extractvalue %dx.types.CBufRet.i32 %1969, 3
  %1973 = shl i32 %1972, 1
  %1974 = lshr i32 %1956, 2
  %1975 = extractvalue %dx.types.CBufRet.i32 %1969, 2
  %1976 = mul i32 %1975, %1974
  %1977 = lshr i32 %1952, 3
  %1978 = add i32 %1971, %1977
  %1979 = add i32 %1978, %1973
  %1980 = add i32 %1979, %1976
  %1981 = shl i32 %1980, 2
  %1982 = shl i32 %1956, 3
  %1983 = and i32 %1982, 24
  %1984 = and i32 %1952, 7
  %1985 = or i32 %1983, %1984
  %1986 = shl i32 1, %1985
  %1987 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %1981, i32 undef)  ; BufferLoad(srv,index,wot)
  %1988 = extractvalue %dx.types.ResRet.i32 %1987, 0
  %1989 = and i32 %1988, %1986
  %1990 = icmp ne i32 %1989, 0
  br label %1991

; <label>:1991                                    ; preds = %1968, %1896
  %1992 = phi i1 [ %1990, %1968 ], [ false, %1896 ]
  %1993 = uitofp i1 %1992 to float
  %1994 = fadd fast float %1993, %1897
  %1995 = add nuw nsw i32 %1898, 1
  %1996 = icmp eq i32 %1995, 5
  br i1 %1996, label %1997, label %1896

; <label>:1997                                    ; preds = %1991
  %1998 = uitofp i1 %1886 to float
  %1999 = fmul fast float %1998, 0x3FC99999A0000000
  %2000 = fmul fast float %1999, %1994
  %2001 = fadd fast float %2000, -5.000000e-01
  %2002 = fmul fast float %2001, 2.000000e+00
  %2003 = call float @dx.op.unary.f32(i32 7, float %2002)  ; Saturate(value)
  br label %2004

; <label>:2004                                    ; preds = %1997, %1781
  %2005 = phi float [ %2003, %1997 ], [ 0.000000e+00, %1781 ]
  %2006 = fdiv fast float %1857, %1851
  %2007 = fdiv fast float %1858, %1852
  %2008 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2009 = extractvalue %dx.types.CBufRet.f32 %2008, 3
  %2010 = fmul fast float %2009, %1806
  %2011 = fadd fast float %2010, %2006
  %2012 = fsub fast float %2007, %2010
  %2013 = call float @dx.op.unary.f32(i32 22, float %2011)  ; Frc(value)
  %2014 = call float @dx.op.unary.f32(i32 22, float %2012)  ; Frc(value)
  %2015 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %15, float %2013, float %2014, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2016 = extractvalue %dx.types.ResRet.f32 %2015, 0
  %2017 = fmul fast float %2016, %1811
  %2018 = call float @dx.op.unary.f32(i32 7, float %2017)  ; Saturate(value)
  %2019 = call float @dx.op.binary.f32(i32 35, float 0x3F847AE140000000, float %2018)  ; FMax(a,b)
  %2020 = fsub fast float -5.000000e-01, %1857
  %2021 = fadd fast float %2020, %1854
  %2022 = fsub fast float -5.000000e-01, %1858
  %2023 = fadd fast float %2022, %1856
  %2024 = fmul fast float %2021, 2.000000e+00
  %2025 = fmul fast float %2023, 2.000000e+00
  %2026 = call float @dx.op.dot2.f32(i32 54, float %2024, float %2025, float %2024, float %2025)  ; Dot2(ax,ay,bx,by)
  %2027 = call float @dx.op.unary.f32(i32 24, float %2026)  ; Sqrt(value)
  %2028 = fsub fast float 1.000000e+00, %2027
  %2029 = fmul fast float %2028, 2.000000e+00
  %2030 = call float @dx.op.unary.f32(i32 7, float %2029)  ; Saturate(value)
  %2031 = fadd fast float %2010, %1837
  %2032 = call float @dx.op.unary.f32(i32 22, float %2031)  ; Frc(value)
  %2033 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %14, float %1835, float %2032, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2034 = extractvalue %dx.types.ResRet.f32 %2033, 3
  %2035 = call float @dx.op.unary.f32(i32 7, float %2005)  ; Saturate(value)
  %2036 = fmul fast float %2034, %1798
  %2037 = fsub fast float %2035, %2036
  %2038 = call float @dx.op.unary.f32(i32 7, float %2037)  ; Saturate(value)
  %2039 = fmul fast float %2034, 1.250000e+00
  %2040 = fsub fast float %2035, %2039
  %2041 = call float @dx.op.unary.f32(i32 7, float %2040)  ; Saturate(value)
  %2042 = fmul fast float %2041, %2041
  %2043 = fmul fast float %2042, %2041
  %2044 = call float @dx.op.unary.f32(i32 7, float %2043)  ; Saturate(value)
  %2045 = fmul fast float %2044, 0x40285C2900000000
  %2046 = fsub fast float 1.400000e+01, %2045
  %2047 = fptoui float %2046 to i32
  %2048 = call float @dx.op.unary.f32(i32 22, float %2046)  ; Frc(value)
  %2049 = mul i32 %2047, 3
  %2050 = add i32 0, %2049
  %2051 = getelementptr [45 x float], [45 x float]* @supp_ramp.v.1dim, i32 0, i32 %2050
  %2052 = load float, float* %2051, align 4
  %2053 = mul i32 %2047, 3
  %2054 = add i32 1, %2053
  %2055 = getelementptr [45 x float], [45 x float]* @supp_ramp.v.1dim, i32 0, i32 %2054
  %2056 = load float, float* %2055, align 4
  %2057 = mul i32 %2047, 3
  %2058 = add i32 2, %2057
  %2059 = getelementptr [45 x float], [45 x float]* @supp_ramp.v.1dim, i32 0, i32 %2058
  %2060 = load float, float* %2059, align 4
  %2061 = add i32 %2047, 1
  %2062 = mul i32 %2061, 3
  %2063 = add i32 0, %2062
  %2064 = getelementptr [45 x float], [45 x float]* @supp_ramp.v.1dim, i32 0, i32 %2063
  %2065 = load float, float* %2064, align 4
  %2066 = mul i32 %2061, 3
  %2067 = add i32 1, %2066
  %2068 = getelementptr [45 x float], [45 x float]* @supp_ramp.v.1dim, i32 0, i32 %2067
  %2069 = load float, float* %2068, align 4
  %2070 = mul i32 %2061, 3
  %2071 = add i32 2, %2070
  %2072 = getelementptr [45 x float], [45 x float]* @supp_ramp.v.1dim, i32 0, i32 %2071
  %2073 = load float, float* %2072, align 4
  %2074 = fsub fast float %2065, %2052
  %2075 = fsub fast float %2069, %2056
  %2076 = fsub fast float %2073, %2060
  %2077 = fmul fast float %2074, %2048
  %2078 = fmul fast float %2075, %2048
  %2079 = fmul fast float %2076, %2048
  %2080 = fadd fast float %2077, %2052
  %2081 = fadd fast float %2078, %2056
  %2082 = fadd fast float %2079, %2060
  %2083 = fmul fast float %1794, %2080
  %2084 = fmul fast float %1795, %2081
  %2085 = fmul fast float %1796, %2082
  %2086 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 17)  ; CBufferLoadLegacy(handle,regIndex)
  %2087 = extractvalue %dx.types.CBufRet.f32 %2086, 0
  %2088 = fmul fast float %1859, %1859
  %2089 = fmul fast float %2088, %1861
  %2090 = fmul fast float %2089, %2019
  %2091 = fmul fast float %2090, %2030
  %2092 = fmul fast float %2091, %2038
  %2093 = fmul fast float %2092, %2087
  %2094 = fmul fast float %2083, %2083
  %2095 = fmul fast float %2094, 5.000000e+00
  %2096 = fmul fast float %2095, %2093
  %2097 = fmul fast float %2084, %2084
  %2098 = fmul fast float %2097, 5.000000e+00
  %2099 = fmul fast float %2098, %2093
  %2100 = fmul fast float %2093, 5.000000e+00
  %2101 = fmul fast float %2085, %2085
  %2102 = fmul fast float %2101, %2100
  %2103 = call float @dx.op.binary.f32(i32 36, float %2096, float 2.000000e+00)  ; FMin(a,b)
  %2104 = call float @dx.op.binary.f32(i32 36, float %2099, float 2.000000e+00)  ; FMin(a,b)
  %2105 = call float @dx.op.binary.f32(i32 36, float %2102, float 2.000000e+00)  ; FMin(a,b)
  %2106 = select i1 %1841, float 0x3FD3333340000000, float 7.500000e-01
  %2107 = fmul float %2106, %2093
  br label %5168

; <label>:2108                                    ; preds = %613
  %2109 = and i32 %628, 511
  %2110 = mul nuw nsw i32 %2109, 20
  %2111 = add nuw nsw i32 %2110, 4
  %2112 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %2111, i32 undef)  ; BufferLoad(srv,index,wot)
  %2113 = extractvalue %dx.types.ResRet.i32 %2112, 0
  %2114 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %2110, i32 undef)  ; BufferLoad(srv,index,wot)
  %2115 = extractvalue %dx.types.ResRet.i32 %2114, 0
  %2116 = and i32 %2115, 255
  %2117 = uitofp i32 %2116 to float
  %2118 = lshr i32 %2115, 8
  %2119 = and i32 %2118, 255
  %2120 = uitofp i32 %2119 to float
  %2121 = lshr i32 %2115, 16
  %2122 = and i32 %2121, 255
  %2123 = uitofp i32 %2122 to float
  %2124 = lshr i32 %2115, 24
  %2125 = uitofp i32 %2124 to float
  %2126 = fmul fast float %2117, 0x3F70101020000000
  %2127 = fmul fast float %2120, 0x3F70101020000000
  %2128 = fmul fast float %2123, 0x3F70101020000000
  %2129 = fmul fast float %2125, 0x3F70101020000000
  %2130 = lshr i32 %2113, 8
  %2131 = and i32 %2130, 65535
  %2132 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2131)  ; LegacyF16ToF32(value)
  %2133 = fcmp fast oeq float %2132, 0.000000e+00
  br i1 %2133, label %2233, label %2134, !dx.controlflow.hints !46

; <label>:2134                                    ; preds = %2108
  %2135 = fmul fast float %2132, %65
  %2136 = fptosi float %2135 to i32
  %2137 = fmul fast float %2132, %66
  %2138 = fptosi float %2137 to i32
  %2139 = call i32 @dx.op.binary.i32(i32 37, i32 1, i32 %2136)  ; IMax(a,b)
  %2140 = call i32 @dx.op.binary.i32(i32 37, i32 1, i32 %2138)  ; IMax(a,b)
  %2141 = sub i32 %64, %2140
  %2142 = or i32 %2141, %63
  %2143 = icmp slt i32 %2142, 0
  %2144 = fptosi float %59 to i32
  %2145 = fptosi float %60 to i32
  %2146 = icmp sge i32 %63, %2144
  %2147 = icmp sge i32 %2141, %2145
  %2148 = or i1 %2146, %2147
  %2149 = or i1 %2143, %2148
  br i1 %2149, label %2163, label %2150, !dx.controlflow.hints !47

; <label>:2150                                    ; preds = %2134
  %2151 = lshr i32 %2141, 2
  %2152 = mul i32 %85, %2151
  %2153 = add i32 %89, %2152
  %2154 = shl i32 %2153, 2
  %2155 = shl i32 %2141, 3
  %2156 = and i32 %2155, 24
  %2157 = or i32 %2156, %94
  %2158 = shl i32 1, %2157
  %2159 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %2154, i32 undef)  ; BufferLoad(srv,index,wot)
  %2160 = extractvalue %dx.types.ResRet.i32 %2159, 0
  %2161 = and i32 %2160, %2158
  %2162 = icmp ne i32 %2161, 0
  br label %2163

; <label>:2163                                    ; preds = %2150, %2134
  %2164 = phi i1 [ %2162, %2150 ], [ false, %2134 ]
  %2165 = add i32 %2140, %64
  %2166 = or i32 %2165, %63
  %2167 = icmp slt i32 %2166, 0
  %2168 = icmp sge i32 %2165, %2145
  %2169 = or i1 %2146, %2168
  %2170 = or i1 %2167, %2169
  br i1 %2170, label %2184, label %2171, !dx.controlflow.hints !47

; <label>:2171                                    ; preds = %2163
  %2172 = lshr i32 %2165, 2
  %2173 = mul i32 %85, %2172
  %2174 = add i32 %89, %2173
  %2175 = shl i32 %2174, 2
  %2176 = shl i32 %2165, 3
  %2177 = and i32 %2176, 24
  %2178 = or i32 %2177, %94
  %2179 = shl i32 1, %2178
  %2180 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %2175, i32 undef)  ; BufferLoad(srv,index,wot)
  %2181 = extractvalue %dx.types.ResRet.i32 %2180, 0
  %2182 = and i32 %2181, %2179
  %2183 = icmp ne i32 %2182, 0
  br label %2184

; <label>:2184                                    ; preds = %2171, %2163
  %2185 = phi i1 [ %2183, %2171 ], [ false, %2163 ]
  %2186 = and i1 %2164, %2185
  %2187 = sub i32 %63, %2139
  %2188 = or i32 %2187, %64
  %2189 = icmp slt i32 %2188, 0
  %2190 = icmp sge i32 %2187, %2144
  %2191 = icmp sge i32 %64, %2145
  %2192 = or i1 %2190, %2191
  %2193 = or i1 %2189, %2192
  br i1 %2193, label %2207, label %2194, !dx.controlflow.hints !47

; <label>:2194                                    ; preds = %2184
  %2195 = lshr i32 %2187, 3
  %2196 = add i32 %81, %2195
  %2197 = add i32 %2196, %83
  %2198 = add i32 %2197, %86
  %2199 = shl i32 %2198, 2
  %2200 = and i32 %2187, 7
  %2201 = or i32 %2200, %93
  %2202 = shl i32 1, %2201
  %2203 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %2199, i32 undef)  ; BufferLoad(srv,index,wot)
  %2204 = extractvalue %dx.types.ResRet.i32 %2203, 0
  %2205 = and i32 %2204, %2202
  %2206 = icmp ne i32 %2205, 0
  br label %2207

; <label>:2207                                    ; preds = %2194, %2184
  %2208 = phi i1 [ %2206, %2194 ], [ false, %2184 ]
  %2209 = and i1 %2186, %2208
  %2210 = add i32 %2139, %63
  %2211 = or i32 %2210, %64
  %2212 = icmp slt i32 %2211, 0
  %2213 = icmp sge i32 %2210, %2144
  %2214 = or i1 %2213, %2191
  %2215 = or i1 %2212, %2214
  br i1 %2215, label %2229, label %2216, !dx.controlflow.hints !47

; <label>:2216                                    ; preds = %2207
  %2217 = lshr i32 %2210, 3
  %2218 = add i32 %81, %2217
  %2219 = add i32 %2218, %83
  %2220 = add i32 %2219, %86
  %2221 = shl i32 %2220, 2
  %2222 = and i32 %2210, 7
  %2223 = or i32 %2222, %93
  %2224 = shl i32 1, %2223
  %2225 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %2221, i32 undef)  ; BufferLoad(srv,index,wot)
  %2226 = extractvalue %dx.types.ResRet.i32 %2225, 0
  %2227 = and i32 %2226, %2224
  %2228 = icmp ne i32 %2227, 0
  br label %2229

; <label>:2229                                    ; preds = %2216, %2207
  %2230 = phi i1 [ %2228, %2216 ], [ false, %2207 ]
  %2231 = and i1 %2209, %2230
  %2232 = xor i1 %2231, true
  br label %2233

; <label>:2233                                    ; preds = %2229, %2108
  %2234 = phi i1 [ %2232, %2229 ], [ false, %2108 ]
  %2235 = and i32 %628, 1114112
  %2236 = icmp ne i32 %2235, 0
  %2237 = and i1 %2236, %109
  %2238 = or i1 %2237, %2234
  %2239 = select i1 %2238, float %2126, float 0.000000e+00
  %2240 = select i1 %2238, float %2127, float 0.000000e+00
  %2241 = select i1 %2238, float %2128, float 0.000000e+00
  %2242 = select i1 %2238, float %2129, float 0.000000e+00
  br label %5168

; <label>:2243                                    ; preds = %613
  %2244 = and i32 %628, 511
  %2245 = mul nuw nsw i32 %2244, 20
  %2246 = add nuw nsw i32 %2245, 4
  %2247 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %2246, i32 undef)  ; BufferLoad(srv,index,wot)
  %2248 = extractvalue %dx.types.ResRet.i32 %2247, 0
  %2249 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %2245, i32 undef)  ; BufferLoad(srv,index,wot)
  %2250 = extractvalue %dx.types.ResRet.i32 %2249, 0
  %2251 = and i32 %2250, 255
  %2252 = uitofp i32 %2251 to float
  %2253 = lshr i32 %2250, 8
  %2254 = and i32 %2253, 255
  %2255 = uitofp i32 %2254 to float
  %2256 = lshr i32 %2250, 16
  %2257 = and i32 %2256, 255
  %2258 = uitofp i32 %2257 to float
  %2259 = lshr i32 %2250, 24
  %2260 = uitofp i32 %2259 to float
  %2261 = fmul fast float %2252, 0x3F70101020000000
  %2262 = fmul fast float %2255, 0x3F70101020000000
  %2263 = fmul fast float %2258, 0x3F70101020000000
  %2264 = fmul fast float %2260, 0x3F70101020000000
  %2265 = and i32 %628, 2097152
  %2266 = icmp ne i32 %2265, 0
  %2267 = lshr i32 %2248, 8
  %2268 = and i32 %2267, 65535
  %2269 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2268)  ; LegacyF16ToF32(value)
  %2270 = and i32 %628, 65536
  %2271 = icmp ne i32 %2270, 0
  %2272 = select i1 %2271, float 1.000000e+00, float 0.000000e+00
  br i1 %108, label %2302, label %2273, !dx.controlflow.hints !45

; <label>:2273                                    ; preds = %2243
  %2274 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2275 = extractvalue %dx.types.CBufRet.f32 %2274, 0
  %2276 = extractvalue %dx.types.CBufRet.f32 %2274, 1
  %2277 = extractvalue %dx.types.CBufRet.f32 %2274, 2
  %2278 = extractvalue %dx.types.CBufRet.f32 %2274, 3
  %2279 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %2280 = extractvalue %dx.types.CBufRet.f32 %2279, 0
  %2281 = extractvalue %dx.types.CBufRet.f32 %2279, 1
  %2282 = extractvalue %dx.types.CBufRet.f32 %2279, 2
  %2283 = extractvalue %dx.types.CBufRet.f32 %2279, 3
  %2284 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %2285 = extractvalue %dx.types.CBufRet.f32 %2284, 0
  %2286 = fadd fast float %2261, -1.000000e+00
  %2287 = fadd fast float %2262, -1.000000e+00
  %2288 = fadd fast float %2263, -1.000000e+00
  %2289 = fadd fast float %2264, -1.000000e+00
  %2290 = fmul fast float %2285, %2286
  %2291 = fmul fast float %2285, %2287
  %2292 = fmul fast float %2285, %2288
  %2293 = fmul fast float %2285, %2289
  %2294 = fadd fast float %2290, 1.000000e+00
  %2295 = fadd fast float %2291, 1.000000e+00
  %2296 = fadd fast float %2292, 1.000000e+00
  %2297 = fadd fast float %2293, 1.000000e+00
  %2298 = fmul fast float %2294, %2280
  %2299 = fmul fast float %2295, %2281
  %2300 = fmul fast float %2296, %2282
  %2301 = fmul fast float %2297, %2283
  br label %2308

; <label>:2302                                    ; preds = %2243
  %2303 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %2304 = extractvalue %dx.types.CBufRet.f32 %2303, 0
  %2305 = extractvalue %dx.types.CBufRet.f32 %2303, 1
  %2306 = extractvalue %dx.types.CBufRet.f32 %2303, 2
  %2307 = extractvalue %dx.types.CBufRet.f32 %2303, 3
  br label %2308

; <label>:2308                                    ; preds = %2302, %2273
  %2309 = phi float [ %2298, %2273 ], [ %2261, %2302 ]
  %2310 = phi float [ %2299, %2273 ], [ %2262, %2302 ]
  %2311 = phi float [ %2300, %2273 ], [ %2263, %2302 ]
  %2312 = phi float [ %2301, %2273 ], [ %2264, %2302 ]
  %2313 = phi float [ %2275, %2273 ], [ %2304, %2302 ]
  %2314 = phi float [ %2276, %2273 ], [ %2305, %2302 ]
  %2315 = phi float [ %2277, %2273 ], [ %2306, %2302 ]
  %2316 = phi float [ %2278, %2273 ], [ %2307, %2302 ]
  %2317 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2318 = extractvalue %dx.types.CBufRet.f32 %2317, 0
  %2319 = fmul fast float %2318, 2.000000e+00
  %2320 = select i1 %2266, float %2319, float 1.000000e+00
  %2321 = fmul fast float %2320, %2309
  %2322 = fmul fast float %2320, %2310
  %2323 = fmul fast float %2320, %2311
  %2324 = fmul fast float %2320, %2312
  %2325 = fcmp fast oeq float %2269, 0.000000e+00
  br i1 %2325, label %2425, label %2326, !dx.controlflow.hints !46

; <label>:2326                                    ; preds = %2308
  %2327 = fmul fast float %2269, %65
  %2328 = fptosi float %2327 to i32
  %2329 = fmul fast float %2269, %66
  %2330 = fptosi float %2329 to i32
  %2331 = call i32 @dx.op.binary.i32(i32 37, i32 1, i32 %2328)  ; IMax(a,b)
  %2332 = call i32 @dx.op.binary.i32(i32 37, i32 1, i32 %2330)  ; IMax(a,b)
  %2333 = sub i32 %64, %2332
  %2334 = or i32 %2333, %63
  %2335 = icmp slt i32 %2334, 0
  %2336 = fptosi float %59 to i32
  %2337 = fptosi float %60 to i32
  %2338 = icmp sge i32 %63, %2336
  %2339 = icmp sge i32 %2333, %2337
  %2340 = or i1 %2338, %2339
  %2341 = or i1 %2335, %2340
  br i1 %2341, label %2355, label %2342, !dx.controlflow.hints !47

; <label>:2342                                    ; preds = %2326
  %2343 = lshr i32 %2333, 2
  %2344 = mul i32 %85, %2343
  %2345 = add i32 %89, %2344
  %2346 = shl i32 %2345, 2
  %2347 = shl i32 %2333, 3
  %2348 = and i32 %2347, 24
  %2349 = or i32 %2348, %94
  %2350 = shl i32 1, %2349
  %2351 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %2346, i32 undef)  ; BufferLoad(srv,index,wot)
  %2352 = extractvalue %dx.types.ResRet.i32 %2351, 0
  %2353 = and i32 %2352, %2350
  %2354 = icmp ne i32 %2353, 0
  br label %2355

; <label>:2355                                    ; preds = %2342, %2326
  %2356 = phi i1 [ %2354, %2342 ], [ false, %2326 ]
  %2357 = add i32 %2332, %64
  %2358 = or i32 %2357, %63
  %2359 = icmp slt i32 %2358, 0
  %2360 = icmp sge i32 %2357, %2337
  %2361 = or i1 %2338, %2360
  %2362 = or i1 %2359, %2361
  br i1 %2362, label %2376, label %2363, !dx.controlflow.hints !47

; <label>:2363                                    ; preds = %2355
  %2364 = lshr i32 %2357, 2
  %2365 = mul i32 %85, %2364
  %2366 = add i32 %89, %2365
  %2367 = shl i32 %2366, 2
  %2368 = shl i32 %2357, 3
  %2369 = and i32 %2368, 24
  %2370 = or i32 %2369, %94
  %2371 = shl i32 1, %2370
  %2372 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %2367, i32 undef)  ; BufferLoad(srv,index,wot)
  %2373 = extractvalue %dx.types.ResRet.i32 %2372, 0
  %2374 = and i32 %2373, %2371
  %2375 = icmp ne i32 %2374, 0
  br label %2376

; <label>:2376                                    ; preds = %2363, %2355
  %2377 = phi i1 [ %2375, %2363 ], [ false, %2355 ]
  %2378 = and i1 %2356, %2377
  %2379 = sub i32 %63, %2331
  %2380 = or i32 %2379, %64
  %2381 = icmp slt i32 %2380, 0
  %2382 = icmp sge i32 %2379, %2336
  %2383 = icmp sge i32 %64, %2337
  %2384 = or i1 %2382, %2383
  %2385 = or i1 %2381, %2384
  br i1 %2385, label %2399, label %2386, !dx.controlflow.hints !47

; <label>:2386                                    ; preds = %2376
  %2387 = lshr i32 %2379, 3
  %2388 = add i32 %81, %2387
  %2389 = add i32 %2388, %83
  %2390 = add i32 %2389, %86
  %2391 = shl i32 %2390, 2
  %2392 = and i32 %2379, 7
  %2393 = or i32 %2392, %93
  %2394 = shl i32 1, %2393
  %2395 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %2391, i32 undef)  ; BufferLoad(srv,index,wot)
  %2396 = extractvalue %dx.types.ResRet.i32 %2395, 0
  %2397 = and i32 %2396, %2394
  %2398 = icmp ne i32 %2397, 0
  br label %2399

; <label>:2399                                    ; preds = %2386, %2376
  %2400 = phi i1 [ %2398, %2386 ], [ false, %2376 ]
  %2401 = and i1 %2378, %2400
  %2402 = add i32 %2331, %63
  %2403 = or i32 %2402, %64
  %2404 = icmp slt i32 %2403, 0
  %2405 = icmp sge i32 %2402, %2336
  %2406 = or i1 %2405, %2383
  %2407 = or i1 %2404, %2406
  br i1 %2407, label %2421, label %2408, !dx.controlflow.hints !47

; <label>:2408                                    ; preds = %2399
  %2409 = lshr i32 %2402, 3
  %2410 = add i32 %81, %2409
  %2411 = add i32 %2410, %83
  %2412 = add i32 %2411, %86
  %2413 = shl i32 %2412, 2
  %2414 = and i32 %2402, 7
  %2415 = or i32 %2414, %93
  %2416 = shl i32 1, %2415
  %2417 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %2413, i32 undef)  ; BufferLoad(srv,index,wot)
  %2418 = extractvalue %dx.types.ResRet.i32 %2417, 0
  %2419 = and i32 %2418, %2416
  %2420 = icmp ne i32 %2419, 0
  br label %2421

; <label>:2421                                    ; preds = %2408, %2399
  %2422 = phi i1 [ %2420, %2408 ], [ false, %2399 ]
  %2423 = and i1 %2401, %2422
  %2424 = xor i1 %2423, true
  br label %2425

; <label>:2425                                    ; preds = %2421, %2308
  %2426 = phi i1 [ %2424, %2421 ], [ false, %2308 ]
  %2427 = add nuw nsw i32 %2245, 12
  %2428 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %2427, i32 undef)  ; BufferLoad(srv,index,wot)
  %2429 = extractvalue %dx.types.ResRet.i32 %2428, 0
  %2430 = and i32 %2429, 65535
  %2431 = uitofp i32 %2430 to float
  %2432 = lshr i32 %2429, 16
  %2433 = uitofp i32 %2432 to float
  %2434 = fmul fast float %2431, 0x3EF0002000000000
  %2435 = fmul fast float %2433, 0x3EF0002000000000
  %2436 = add nuw nsw i32 %2245, 8
  %2437 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %2436, i32 undef)  ; BufferLoad(srv,index,wot)
  %2438 = extractvalue %dx.types.ResRet.i32 %2437, 0
  %2439 = and i32 %2438, 65535
  %2440 = uitofp i32 %2439 to float
  %2441 = fmul fast float %2440, 0x3EF0002000000000
  %2442 = lshr i32 %2438, 16
  %2443 = uitofp i32 %2442 to float
  %2444 = fmul fast float %2443, 0x3EF0002000000000
  %2445 = fsub fast float %44, %2441
  %2446 = fdiv fast float %2445, %2434
  %2447 = fsub fast float %45, %2444
  %2448 = fdiv fast float %2447, %2435
  %2449 = extractvalue %dx.types.CBufRet.f32 %2317, 3
  %2450 = fmul fast float %2449, 0x3FA99999A0000000
  %2451 = fadd fast float %2450, %2448
  %2452 = call float @dx.op.unary.f32(i32 22, float %2446)  ; Frc(value)
  %2453 = call float @dx.op.unary.f32(i32 22, float %2451)  ; Frc(value)
  %2454 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %14, float %2452, float %2453, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2455 = extractvalue %dx.types.ResRet.f32 %2454, 1
  %2456 = extractvalue %dx.types.ResRet.f32 %2454, 3
  %2457 = and i32 %2248, 255
  %2458 = uitofp i32 %2457 to float
  %2459 = fmul fast float %2458, 0x4010101020000000
  %2460 = fadd fast float %2459, -5.120000e+02
  %2461 = fmul fast float %2458, 0x4001D0AFC0000000
  %2462 = fadd fast float %2461, 0xC071BEDF00000000
  %2463 = call float @dx.op.unary.f32(i32 22, float %2462)  ; Frc(value)
  %2464 = fmul fast float %2460, %2463
  %2465 = fadd fast float %2464, %2460
  %2466 = fmul fast float %2458, 0x3FF3D290C0000000
  %2467 = fadd fast float %2466, 0xC063BEBE20000000
  %2468 = call float @dx.op.unary.f32(i32 22, float %2467)  ; Frc(value)
  %2469 = fmul fast float %2460, %2468
  %2470 = fadd fast float %2469, %2460
  %2471 = fmul fast float %2465, %2470
  %2472 = call float @dx.op.unary.f32(i32 22, float %2471)  ; Frc(value)
  %2473 = fadd fast float %2448, 1.000000e+00
  %2474 = fmul fast float %2473, 0x401E322D00000000
  %2475 = fmul fast float %2474, %2472
  %2476 = fmul fast float %2449, 0x3FE921FB60000000
  %2477 = fadd fast float %2476, %2475
  %2478 = call float @dx.op.unary.f32(i32 13, float %2477)  ; Sin(value)
  %2479 = uitofp i32 %63 to float
  %2480 = uitofp i32 %64 to float
  %2481 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %2482 = extractvalue %dx.types.CBufRet.f32 %2481, 2
  %2483 = fmul fast float %2482, 0x40165A5B00000000
  %2484 = fadd fast float %2483, %2479
  %2485 = fadd fast float %2483, %2480
  %2486 = extractvalue %dx.types.CBufRet.f32 %2481, 0
  %2487 = fmul fast float %2486, 2.000000e+00
  %2488 = fadd fast float %2487, -1.000000e+00
  %2489 = fmul fast float %2488, %2484
  %2490 = fmul fast float %2488, %2485
  %2491 = call float @dx.op.dot2.f32(i32 54, float %2489, float %2490, float 0x3FB12E2860000000, float 0x3F77E8B200000000)  ; Dot2(ax,ay,bx,by)
  %2492 = call float @dx.op.unary.f32(i32 22, float %2491)  ; Frc(value)
  %2493 = fmul fast float %2492, 0x404A7DD040000000
  %2494 = call float @dx.op.unary.f32(i32 22, float %2493)  ; Frc(value)
  br i1 %2426, label %2495, label %2506, !dx.controlflow.hints !53

; <label>:2495                                    ; preds = %2425
  %2496 = icmp ne i32 %630, 0
  %2497 = fadd fast float %2478, 1.000000e+00
  %2498 = call float @dx.op.unary.f32(i32 23, float %2494)  ; Log(value)
  %2499 = fmul fast float %2498, %2497
  %2500 = call float @dx.op.unary.f32(i32 21, float %2499)  ; Exp(value)
  %2501 = and i1 %108, %2496
  %2502 = uitofp i1 %2501 to float
  %2503 = fmul fast float %2324, %2272
  %2504 = fmul fast float %2503, %2502
  %2505 = fmul fast float %2504, %2500
  br label %5168

; <label>:2506                                    ; preds = %2425
  %2507 = fcmp fast ole float %2272, 0.000000e+00
  %2508 = icmp eq i32 %632, 0
  %2509 = and i1 %108, %2508
  %2510 = or i1 %2507, %2509
  br i1 %2510, label %5168, label %2511, !dx.controlflow.hints !54

; <label>:2511                                    ; preds = %2506
  %2512 = fmul fast float %2449, 0x3FF921FB60000000
  %2513 = fadd fast float %2512, %2475
  %2514 = call float @dx.op.unary.f32(i32 13, float %2513)  ; Sin(value)
  %2515 = fmul fast float %2514, 7.500000e-01
  %2516 = fadd fast float %2515, 1.500000e+00
  %2517 = fmul fast float %2431, 0x3E8999CCE0000000
  %2518 = fmul fast float %2517, %59
  %2519 = fmul fast float %60, 0x3E8999CCE0000000
  %2520 = fmul fast float %2519, %2433
  %2521 = call float @dx.op.binary.f32(i32 35, float %2518, float 5.000000e-01)  ; FMax(a,b)
  %2522 = call float @dx.op.binary.f32(i32 35, float %2520, float 5.000000e-01)  ; FMax(a,b)
  %2523 = fmul fast float %2516, %2521
  %2524 = fmul fast float %2522, %2516
  %2525 = fsub fast float 1.000000e+00, %2455
  %2526 = fadd fast float %2525, %2494
  %2527 = fmul fast float %2526, 5.000000e+00
  %2528 = call float @dx.op.unary.f32(i32 28, float %2523)  ; Round_pi(value)
  %2529 = call float @dx.op.unary.f32(i32 28, float %2524)  ; Round_pi(value)
  %2530 = fptosi float %2528 to i32
  %2531 = fptosi float %2529 to i32
  %2532 = sub i32 %64, %2531
  %2533 = or i32 %2532, %63
  %2534 = icmp slt i32 %2533, 0
  %2535 = fptosi float %59 to i32
  %2536 = fptosi float %60 to i32
  %2537 = icmp sge i32 %63, %2535
  %2538 = icmp sge i32 %2532, %2536
  %2539 = or i1 %2537, %2538
  %2540 = or i1 %2534, %2539
  br i1 %2540, label %2554, label %2541, !dx.controlflow.hints !47

; <label>:2541                                    ; preds = %2511
  %2542 = lshr i32 %2532, 2
  %2543 = mul i32 %85, %2542
  %2544 = add i32 %89, %2543
  %2545 = shl i32 %2544, 2
  %2546 = shl i32 %2532, 3
  %2547 = and i32 %2546, 24
  %2548 = or i32 %2547, %94
  %2549 = shl i32 1, %2548
  %2550 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %2545, i32 undef)  ; BufferLoad(srv,index,wot)
  %2551 = extractvalue %dx.types.ResRet.i32 %2550, 0
  %2552 = and i32 %2551, %2549
  %2553 = icmp ne i32 %2552, 0
  br label %2554

; <label>:2554                                    ; preds = %2541, %2511
  %2555 = phi i1 [ %2553, %2541 ], [ false, %2511 ]
  %2556 = xor i1 %2555, true
  %2557 = uitofp i1 %2556 to float
  %2558 = fadd fast float %2557, %2527
  %2559 = add i32 %2531, %64
  %2560 = or i32 %2559, %63
  %2561 = icmp slt i32 %2560, 0
  %2562 = icmp sge i32 %2559, %2536
  %2563 = or i1 %2537, %2562
  %2564 = or i1 %2561, %2563
  br i1 %2564, label %2578, label %2565, !dx.controlflow.hints !47

; <label>:2565                                    ; preds = %2554
  %2566 = lshr i32 %2559, 2
  %2567 = mul i32 %85, %2566
  %2568 = add i32 %89, %2567
  %2569 = shl i32 %2568, 2
  %2570 = shl i32 %2559, 3
  %2571 = and i32 %2570, 24
  %2572 = or i32 %2571, %94
  %2573 = shl i32 1, %2572
  %2574 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %2569, i32 undef)  ; BufferLoad(srv,index,wot)
  %2575 = extractvalue %dx.types.ResRet.i32 %2574, 0
  %2576 = and i32 %2575, %2573
  %2577 = icmp ne i32 %2576, 0
  br label %2578

; <label>:2578                                    ; preds = %2565, %2554
  %2579 = phi i1 [ %2577, %2565 ], [ false, %2554 ]
  %2580 = xor i1 %2579, true
  %2581 = uitofp i1 %2580 to float
  %2582 = fadd fast float %2558, %2581
  %2583 = sub i32 %63, %2530
  %2584 = or i32 %2583, %64
  %2585 = icmp slt i32 %2584, 0
  %2586 = icmp sge i32 %2583, %2535
  %2587 = icmp sge i32 %64, %2536
  %2588 = or i1 %2586, %2587
  %2589 = or i1 %2585, %2588
  br i1 %2589, label %2603, label %2590, !dx.controlflow.hints !47

; <label>:2590                                    ; preds = %2578
  %2591 = lshr i32 %2583, 3
  %2592 = add i32 %81, %2591
  %2593 = add i32 %2592, %83
  %2594 = add i32 %2593, %86
  %2595 = shl i32 %2594, 2
  %2596 = and i32 %2583, 7
  %2597 = or i32 %2596, %93
  %2598 = shl i32 1, %2597
  %2599 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %2595, i32 undef)  ; BufferLoad(srv,index,wot)
  %2600 = extractvalue %dx.types.ResRet.i32 %2599, 0
  %2601 = and i32 %2600, %2598
  %2602 = icmp ne i32 %2601, 0
  br label %2603

; <label>:2603                                    ; preds = %2590, %2578
  %2604 = phi i1 [ %2602, %2590 ], [ false, %2578 ]
  %2605 = xor i1 %2604, true
  %2606 = uitofp i1 %2605 to float
  %2607 = fadd fast float %2582, %2606
  %2608 = add i32 %2530, %63
  %2609 = or i32 %2608, %64
  %2610 = icmp slt i32 %2609, 0
  %2611 = icmp sge i32 %2608, %2535
  %2612 = or i1 %2611, %2587
  %2613 = or i1 %2610, %2612
  br i1 %2613, label %2627, label %2614, !dx.controlflow.hints !47

; <label>:2614                                    ; preds = %2603
  %2615 = lshr i32 %2608, 3
  %2616 = add i32 %81, %2615
  %2617 = add i32 %2616, %83
  %2618 = add i32 %2617, %86
  %2619 = shl i32 %2618, 2
  %2620 = and i32 %2608, 7
  %2621 = or i32 %2620, %93
  %2622 = shl i32 1, %2621
  %2623 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %2619, i32 undef)  ; BufferLoad(srv,index,wot)
  %2624 = extractvalue %dx.types.ResRet.i32 %2623, 0
  %2625 = and i32 %2624, %2622
  %2626 = icmp ne i32 %2625, 0
  br label %2627

; <label>:2627                                    ; preds = %2614, %2603
  %2628 = phi i1 [ %2626, %2614 ], [ false, %2603 ]
  %2629 = xor i1 %2628, true
  %2630 = uitofp i1 %2629 to float
  %2631 = fadd fast float %2607, %2630
  %2632 = or i32 %2532, %2583
  %2633 = icmp slt i32 %2632, 0
  %2634 = or i1 %2586, %2538
  %2635 = or i1 %2633, %2634
  br i1 %2635, label %2653, label %2636, !dx.controlflow.hints !47

; <label>:2636                                    ; preds = %2627
  %2637 = lshr i32 %2532, 2
  %2638 = mul i32 %85, %2637
  %2639 = lshr i32 %2583, 3
  %2640 = add i32 %81, %2639
  %2641 = add i32 %2640, %83
  %2642 = add i32 %2641, %2638
  %2643 = shl i32 %2642, 2
  %2644 = shl i32 %2532, 3
  %2645 = and i32 %2644, 24
  %2646 = and i32 %2583, 7
  %2647 = or i32 %2645, %2646
  %2648 = shl i32 1, %2647
  %2649 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %2643, i32 undef)  ; BufferLoad(srv,index,wot)
  %2650 = extractvalue %dx.types.ResRet.i32 %2649, 0
  %2651 = and i32 %2650, %2648
  %2652 = icmp ne i32 %2651, 0
  br label %2653

; <label>:2653                                    ; preds = %2636, %2627
  %2654 = phi i1 [ %2652, %2636 ], [ false, %2627 ]
  %2655 = xor i1 %2654, true
  %2656 = uitofp i1 %2655 to float
  %2657 = fadd fast float %2631, %2656
  %2658 = or i32 %2532, %2608
  %2659 = icmp slt i32 %2658, 0
  %2660 = or i1 %2611, %2538
  %2661 = or i1 %2659, %2660
  br i1 %2661, label %2679, label %2662, !dx.controlflow.hints !47

; <label>:2662                                    ; preds = %2653
  %2663 = lshr i32 %2532, 2
  %2664 = mul i32 %85, %2663
  %2665 = lshr i32 %2608, 3
  %2666 = add i32 %81, %2665
  %2667 = add i32 %2666, %83
  %2668 = add i32 %2667, %2664
  %2669 = shl i32 %2668, 2
  %2670 = shl i32 %2532, 3
  %2671 = and i32 %2670, 24
  %2672 = and i32 %2608, 7
  %2673 = or i32 %2671, %2672
  %2674 = shl i32 1, %2673
  %2675 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %2669, i32 undef)  ; BufferLoad(srv,index,wot)
  %2676 = extractvalue %dx.types.ResRet.i32 %2675, 0
  %2677 = and i32 %2676, %2674
  %2678 = icmp ne i32 %2677, 0
  br label %2679

; <label>:2679                                    ; preds = %2662, %2653
  %2680 = phi i1 [ %2678, %2662 ], [ false, %2653 ]
  %2681 = xor i1 %2680, true
  %2682 = uitofp i1 %2681 to float
  %2683 = fadd fast float %2657, %2682
  %2684 = or i32 %2559, %2583
  %2685 = icmp slt i32 %2684, 0
  %2686 = or i1 %2586, %2562
  %2687 = or i1 %2685, %2686
  br i1 %2687, label %2705, label %2688, !dx.controlflow.hints !47

; <label>:2688                                    ; preds = %2679
  %2689 = lshr i32 %2559, 2
  %2690 = mul i32 %85, %2689
  %2691 = lshr i32 %2583, 3
  %2692 = add i32 %81, %2691
  %2693 = add i32 %2692, %83
  %2694 = add i32 %2693, %2690
  %2695 = shl i32 %2694, 2
  %2696 = shl i32 %2559, 3
  %2697 = and i32 %2696, 24
  %2698 = and i32 %2583, 7
  %2699 = or i32 %2697, %2698
  %2700 = shl i32 1, %2699
  %2701 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %2695, i32 undef)  ; BufferLoad(srv,index,wot)
  %2702 = extractvalue %dx.types.ResRet.i32 %2701, 0
  %2703 = and i32 %2702, %2700
  %2704 = icmp ne i32 %2703, 0
  br label %2705

; <label>:2705                                    ; preds = %2688, %2679
  %2706 = phi i1 [ %2704, %2688 ], [ false, %2679 ]
  %2707 = xor i1 %2706, true
  %2708 = uitofp i1 %2707 to float
  %2709 = fadd fast float %2683, %2708
  %2710 = or i32 %2559, %2608
  %2711 = icmp slt i32 %2710, 0
  %2712 = or i1 %2611, %2562
  %2713 = or i1 %2711, %2712
  br i1 %2713, label %2731, label %2714, !dx.controlflow.hints !47

; <label>:2714                                    ; preds = %2705
  %2715 = lshr i32 %2559, 2
  %2716 = mul i32 %85, %2715
  %2717 = lshr i32 %2608, 3
  %2718 = add i32 %81, %2717
  %2719 = add i32 %2718, %83
  %2720 = add i32 %2719, %2716
  %2721 = shl i32 %2720, 2
  %2722 = shl i32 %2559, 3
  %2723 = and i32 %2722, 24
  %2724 = and i32 %2608, 7
  %2725 = or i32 %2723, %2724
  %2726 = shl i32 1, %2725
  %2727 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %2721, i32 undef)  ; BufferLoad(srv,index,wot)
  %2728 = extractvalue %dx.types.ResRet.i32 %2727, 0
  %2729 = and i32 %2728, %2726
  %2730 = icmp ne i32 %2729, 0
  br label %2731

; <label>:2731                                    ; preds = %2714, %2705
  %2732 = phi i1 [ %2730, %2714 ], [ false, %2705 ]
  %2733 = xor i1 %2732, true
  %2734 = uitofp i1 %2733 to float
  %2735 = fadd fast float %2709, %2734
  %2736 = fmul fast float %2523, 2.000000e+00
  %2737 = fmul fast float %2524, 2.000000e+00
  %2738 = call float @dx.op.unary.f32(i32 28, float %2736)  ; Round_pi(value)
  %2739 = call float @dx.op.unary.f32(i32 28, float %2737)  ; Round_pi(value)
  %2740 = fptosi float %2738 to i32
  %2741 = fptosi float %2739 to i32
  %2742 = sub i32 %64, %2741
  %2743 = or i32 %2742, %63
  %2744 = icmp slt i32 %2743, 0
  %2745 = icmp sge i32 %2742, %2536
  %2746 = or i1 %2537, %2745
  %2747 = or i1 %2744, %2746
  br i1 %2747, label %2761, label %2748, !dx.controlflow.hints !47

; <label>:2748                                    ; preds = %2731
  %2749 = lshr i32 %2742, 2
  %2750 = mul i32 %85, %2749
  %2751 = add i32 %89, %2750
  %2752 = shl i32 %2751, 2
  %2753 = shl i32 %2742, 3
  %2754 = and i32 %2753, 24
  %2755 = or i32 %2754, %94
  %2756 = shl i32 1, %2755
  %2757 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %2752, i32 undef)  ; BufferLoad(srv,index,wot)
  %2758 = extractvalue %dx.types.ResRet.i32 %2757, 0
  %2759 = and i32 %2758, %2756
  %2760 = icmp ne i32 %2759, 0
  br label %2761

; <label>:2761                                    ; preds = %2748, %2731
  %2762 = phi i1 [ %2760, %2748 ], [ false, %2731 ]
  %2763 = xor i1 %2762, true
  %2764 = uitofp i1 %2763 to float
  %2765 = fadd fast float %2735, %2764
  %2766 = add i32 %2741, %64
  %2767 = or i32 %2766, %63
  %2768 = icmp slt i32 %2767, 0
  %2769 = icmp sge i32 %2766, %2536
  %2770 = or i1 %2537, %2769
  %2771 = or i1 %2768, %2770
  br i1 %2771, label %2785, label %2772, !dx.controlflow.hints !47

; <label>:2772                                    ; preds = %2761
  %2773 = lshr i32 %2766, 2
  %2774 = mul i32 %85, %2773
  %2775 = add i32 %89, %2774
  %2776 = shl i32 %2775, 2
  %2777 = shl i32 %2766, 3
  %2778 = and i32 %2777, 24
  %2779 = or i32 %2778, %94
  %2780 = shl i32 1, %2779
  %2781 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %2776, i32 undef)  ; BufferLoad(srv,index,wot)
  %2782 = extractvalue %dx.types.ResRet.i32 %2781, 0
  %2783 = and i32 %2782, %2780
  %2784 = icmp ne i32 %2783, 0
  br label %2785

; <label>:2785                                    ; preds = %2772, %2761
  %2786 = phi i1 [ %2784, %2772 ], [ false, %2761 ]
  %2787 = xor i1 %2786, true
  %2788 = uitofp i1 %2787 to float
  %2789 = fadd fast float %2765, %2788
  %2790 = sub i32 %63, %2740
  %2791 = or i32 %2790, %64
  %2792 = icmp slt i32 %2791, 0
  %2793 = icmp sge i32 %2790, %2535
  %2794 = or i1 %2793, %2587
  %2795 = or i1 %2792, %2794
  br i1 %2795, label %2809, label %2796, !dx.controlflow.hints !47

; <label>:2796                                    ; preds = %2785
  %2797 = lshr i32 %2790, 3
  %2798 = add i32 %81, %2797
  %2799 = add i32 %2798, %83
  %2800 = add i32 %2799, %86
  %2801 = shl i32 %2800, 2
  %2802 = and i32 %2790, 7
  %2803 = or i32 %2802, %93
  %2804 = shl i32 1, %2803
  %2805 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %2801, i32 undef)  ; BufferLoad(srv,index,wot)
  %2806 = extractvalue %dx.types.ResRet.i32 %2805, 0
  %2807 = and i32 %2806, %2804
  %2808 = icmp ne i32 %2807, 0
  br label %2809

; <label>:2809                                    ; preds = %2796, %2785
  %2810 = phi i1 [ %2808, %2796 ], [ false, %2785 ]
  %2811 = xor i1 %2810, true
  %2812 = uitofp i1 %2811 to float
  %2813 = fadd fast float %2789, %2812
  %2814 = add i32 %2740, %63
  %2815 = or i32 %2814, %64
  %2816 = icmp slt i32 %2815, 0
  %2817 = icmp sge i32 %2814, %2535
  %2818 = or i1 %2817, %2587
  %2819 = or i1 %2816, %2818
  br i1 %2819, label %2833, label %2820, !dx.controlflow.hints !47

; <label>:2820                                    ; preds = %2809
  %2821 = lshr i32 %2814, 3
  %2822 = add i32 %81, %2821
  %2823 = add i32 %2822, %83
  %2824 = add i32 %2823, %86
  %2825 = shl i32 %2824, 2
  %2826 = and i32 %2814, 7
  %2827 = or i32 %2826, %93
  %2828 = shl i32 1, %2827
  %2829 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %2825, i32 undef)  ; BufferLoad(srv,index,wot)
  %2830 = extractvalue %dx.types.ResRet.i32 %2829, 0
  %2831 = and i32 %2830, %2828
  %2832 = icmp ne i32 %2831, 0
  br label %2833

; <label>:2833                                    ; preds = %2820, %2809
  %2834 = phi i1 [ %2832, %2820 ], [ false, %2809 ]
  %2835 = xor i1 %2834, true
  %2836 = uitofp i1 %2835 to float
  %2837 = fadd fast float %2813, %2836
  %2838 = or i32 %2742, %2790
  %2839 = icmp slt i32 %2838, 0
  %2840 = or i1 %2793, %2745
  %2841 = or i1 %2839, %2840
  br i1 %2841, label %2859, label %2842, !dx.controlflow.hints !47

; <label>:2842                                    ; preds = %2833
  %2843 = lshr i32 %2742, 2
  %2844 = mul i32 %85, %2843
  %2845 = lshr i32 %2790, 3
  %2846 = add i32 %81, %2845
  %2847 = add i32 %2846, %83
  %2848 = add i32 %2847, %2844
  %2849 = shl i32 %2848, 2
  %2850 = shl i32 %2742, 3
  %2851 = and i32 %2850, 24
  %2852 = and i32 %2790, 7
  %2853 = or i32 %2851, %2852
  %2854 = shl i32 1, %2853
  %2855 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %2849, i32 undef)  ; BufferLoad(srv,index,wot)
  %2856 = extractvalue %dx.types.ResRet.i32 %2855, 0
  %2857 = and i32 %2856, %2854
  %2858 = icmp ne i32 %2857, 0
  br label %2859

; <label>:2859                                    ; preds = %2842, %2833
  %2860 = phi i1 [ %2858, %2842 ], [ false, %2833 ]
  %2861 = xor i1 %2860, true
  %2862 = uitofp i1 %2861 to float
  %2863 = fadd fast float %2837, %2862
  %2864 = or i32 %2742, %2814
  %2865 = icmp slt i32 %2864, 0
  %2866 = or i1 %2817, %2745
  %2867 = or i1 %2865, %2866
  br i1 %2867, label %2885, label %2868, !dx.controlflow.hints !47

; <label>:2868                                    ; preds = %2859
  %2869 = lshr i32 %2742, 2
  %2870 = mul i32 %85, %2869
  %2871 = lshr i32 %2814, 3
  %2872 = add i32 %81, %2871
  %2873 = add i32 %2872, %83
  %2874 = add i32 %2873, %2870
  %2875 = shl i32 %2874, 2
  %2876 = shl i32 %2742, 3
  %2877 = and i32 %2876, 24
  %2878 = and i32 %2814, 7
  %2879 = or i32 %2877, %2878
  %2880 = shl i32 1, %2879
  %2881 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %2875, i32 undef)  ; BufferLoad(srv,index,wot)
  %2882 = extractvalue %dx.types.ResRet.i32 %2881, 0
  %2883 = and i32 %2882, %2880
  %2884 = icmp ne i32 %2883, 0
  br label %2885

; <label>:2885                                    ; preds = %2868, %2859
  %2886 = phi i1 [ %2884, %2868 ], [ false, %2859 ]
  %2887 = xor i1 %2886, true
  %2888 = uitofp i1 %2887 to float
  %2889 = fadd fast float %2863, %2888
  %2890 = or i32 %2766, %2790
  %2891 = icmp slt i32 %2890, 0
  %2892 = or i1 %2793, %2769
  %2893 = or i1 %2891, %2892
  br i1 %2893, label %2911, label %2894, !dx.controlflow.hints !47

; <label>:2894                                    ; preds = %2885
  %2895 = lshr i32 %2766, 2
  %2896 = mul i32 %85, %2895
  %2897 = lshr i32 %2790, 3
  %2898 = add i32 %81, %2897
  %2899 = add i32 %2898, %83
  %2900 = add i32 %2899, %2896
  %2901 = shl i32 %2900, 2
  %2902 = shl i32 %2766, 3
  %2903 = and i32 %2902, 24
  %2904 = and i32 %2790, 7
  %2905 = or i32 %2903, %2904
  %2906 = shl i32 1, %2905
  %2907 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %2901, i32 undef)  ; BufferLoad(srv,index,wot)
  %2908 = extractvalue %dx.types.ResRet.i32 %2907, 0
  %2909 = and i32 %2908, %2906
  %2910 = icmp ne i32 %2909, 0
  br label %2911

; <label>:2911                                    ; preds = %2894, %2885
  %2912 = phi i1 [ %2910, %2894 ], [ false, %2885 ]
  %2913 = xor i1 %2912, true
  %2914 = uitofp i1 %2913 to float
  %2915 = fadd fast float %2889, %2914
  %2916 = or i32 %2766, %2814
  %2917 = icmp slt i32 %2916, 0
  %2918 = or i1 %2817, %2769
  %2919 = or i1 %2917, %2918
  br i1 %2919, label %2937, label %2920, !dx.controlflow.hints !47

; <label>:2920                                    ; preds = %2911
  %2921 = lshr i32 %2766, 2
  %2922 = mul i32 %85, %2921
  %2923 = lshr i32 %2814, 3
  %2924 = add i32 %81, %2923
  %2925 = add i32 %2924, %83
  %2926 = add i32 %2925, %2922
  %2927 = shl i32 %2926, 2
  %2928 = shl i32 %2766, 3
  %2929 = and i32 %2928, 24
  %2930 = and i32 %2814, 7
  %2931 = or i32 %2929, %2930
  %2932 = shl i32 1, %2931
  %2933 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %2927, i32 undef)  ; BufferLoad(srv,index,wot)
  %2934 = extractvalue %dx.types.ResRet.i32 %2933, 0
  %2935 = and i32 %2934, %2932
  %2936 = icmp ne i32 %2935, 0
  br label %2937

; <label>:2937                                    ; preds = %2920, %2911
  %2938 = phi i1 [ %2936, %2920 ], [ false, %2911 ]
  %2939 = xor i1 %2938, true
  %2940 = uitofp i1 %2939 to float
  %2941 = fadd fast float %2915, %2940
  %2942 = fmul fast float %2523, 3.000000e+00
  %2943 = fmul fast float %2524, 3.000000e+00
  %2944 = call float @dx.op.unary.f32(i32 28, float %2942)  ; Round_pi(value)
  %2945 = call float @dx.op.unary.f32(i32 28, float %2943)  ; Round_pi(value)
  %2946 = fptosi float %2944 to i32
  %2947 = fptosi float %2945 to i32
  %2948 = sub i32 %64, %2947
  %2949 = or i32 %2948, %63
  %2950 = icmp slt i32 %2949, 0
  %2951 = icmp sge i32 %2948, %2536
  %2952 = or i1 %2537, %2951
  %2953 = or i1 %2950, %2952
  br i1 %2953, label %2967, label %2954, !dx.controlflow.hints !47

; <label>:2954                                    ; preds = %2937
  %2955 = lshr i32 %2948, 2
  %2956 = mul i32 %85, %2955
  %2957 = add i32 %89, %2956
  %2958 = shl i32 %2957, 2
  %2959 = shl i32 %2948, 3
  %2960 = and i32 %2959, 24
  %2961 = or i32 %2960, %94
  %2962 = shl i32 1, %2961
  %2963 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %2958, i32 undef)  ; BufferLoad(srv,index,wot)
  %2964 = extractvalue %dx.types.ResRet.i32 %2963, 0
  %2965 = and i32 %2964, %2962
  %2966 = icmp ne i32 %2965, 0
  br label %2967

; <label>:2967                                    ; preds = %2954, %2937
  %2968 = phi i1 [ %2966, %2954 ], [ false, %2937 ]
  %2969 = xor i1 %2968, true
  %2970 = uitofp i1 %2969 to float
  %2971 = fadd fast float %2941, %2970
  %2972 = add i32 %2947, %64
  %2973 = or i32 %2972, %63
  %2974 = icmp slt i32 %2973, 0
  %2975 = icmp sge i32 %2972, %2536
  %2976 = or i1 %2537, %2975
  %2977 = or i1 %2974, %2976
  br i1 %2977, label %2991, label %2978, !dx.controlflow.hints !47

; <label>:2978                                    ; preds = %2967
  %2979 = lshr i32 %2972, 2
  %2980 = mul i32 %85, %2979
  %2981 = add i32 %89, %2980
  %2982 = shl i32 %2981, 2
  %2983 = shl i32 %2972, 3
  %2984 = and i32 %2983, 24
  %2985 = or i32 %2984, %94
  %2986 = shl i32 1, %2985
  %2987 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %2982, i32 undef)  ; BufferLoad(srv,index,wot)
  %2988 = extractvalue %dx.types.ResRet.i32 %2987, 0
  %2989 = and i32 %2988, %2986
  %2990 = icmp ne i32 %2989, 0
  br label %2991

; <label>:2991                                    ; preds = %2978, %2967
  %2992 = phi i1 [ %2990, %2978 ], [ false, %2967 ]
  %2993 = xor i1 %2992, true
  %2994 = uitofp i1 %2993 to float
  %2995 = fadd fast float %2971, %2994
  %2996 = sub i32 %63, %2946
  %2997 = or i32 %2996, %64
  %2998 = icmp slt i32 %2997, 0
  %2999 = icmp sge i32 %2996, %2535
  %3000 = or i1 %2999, %2587
  %3001 = or i1 %2998, %3000
  br i1 %3001, label %3015, label %3002, !dx.controlflow.hints !47

; <label>:3002                                    ; preds = %2991
  %3003 = lshr i32 %2996, 3
  %3004 = add i32 %81, %3003
  %3005 = add i32 %3004, %83
  %3006 = add i32 %3005, %86
  %3007 = shl i32 %3006, 2
  %3008 = and i32 %2996, 7
  %3009 = or i32 %3008, %93
  %3010 = shl i32 1, %3009
  %3011 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %3007, i32 undef)  ; BufferLoad(srv,index,wot)
  %3012 = extractvalue %dx.types.ResRet.i32 %3011, 0
  %3013 = and i32 %3012, %3010
  %3014 = icmp ne i32 %3013, 0
  br label %3015

; <label>:3015                                    ; preds = %3002, %2991
  %3016 = phi i1 [ %3014, %3002 ], [ false, %2991 ]
  %3017 = xor i1 %3016, true
  %3018 = uitofp i1 %3017 to float
  %3019 = fadd fast float %2995, %3018
  %3020 = add i32 %2946, %63
  %3021 = or i32 %3020, %64
  %3022 = icmp slt i32 %3021, 0
  %3023 = icmp sge i32 %3020, %2535
  %3024 = or i1 %3023, %2587
  %3025 = or i1 %3022, %3024
  br i1 %3025, label %3039, label %3026, !dx.controlflow.hints !47

; <label>:3026                                    ; preds = %3015
  %3027 = lshr i32 %3020, 3
  %3028 = add i32 %81, %3027
  %3029 = add i32 %3028, %83
  %3030 = add i32 %3029, %86
  %3031 = shl i32 %3030, 2
  %3032 = and i32 %3020, 7
  %3033 = or i32 %3032, %93
  %3034 = shl i32 1, %3033
  %3035 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %3031, i32 undef)  ; BufferLoad(srv,index,wot)
  %3036 = extractvalue %dx.types.ResRet.i32 %3035, 0
  %3037 = and i32 %3036, %3034
  %3038 = icmp ne i32 %3037, 0
  br label %3039

; <label>:3039                                    ; preds = %3026, %3015
  %3040 = phi i1 [ %3038, %3026 ], [ false, %3015 ]
  %3041 = xor i1 %3040, true
  %3042 = uitofp i1 %3041 to float
  %3043 = fadd fast float %3019, %3042
  %3044 = or i32 %2948, %2996
  %3045 = icmp slt i32 %3044, 0
  %3046 = or i1 %2999, %2951
  %3047 = or i1 %3045, %3046
  br i1 %3047, label %3065, label %3048, !dx.controlflow.hints !47

; <label>:3048                                    ; preds = %3039
  %3049 = lshr i32 %2948, 2
  %3050 = mul i32 %85, %3049
  %3051 = lshr i32 %2996, 3
  %3052 = add i32 %81, %3051
  %3053 = add i32 %3052, %83
  %3054 = add i32 %3053, %3050
  %3055 = shl i32 %3054, 2
  %3056 = shl i32 %2948, 3
  %3057 = and i32 %3056, 24
  %3058 = and i32 %2996, 7
  %3059 = or i32 %3057, %3058
  %3060 = shl i32 1, %3059
  %3061 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %3055, i32 undef)  ; BufferLoad(srv,index,wot)
  %3062 = extractvalue %dx.types.ResRet.i32 %3061, 0
  %3063 = and i32 %3062, %3060
  %3064 = icmp ne i32 %3063, 0
  br label %3065

; <label>:3065                                    ; preds = %3048, %3039
  %3066 = phi i1 [ %3064, %3048 ], [ false, %3039 ]
  %3067 = xor i1 %3066, true
  %3068 = uitofp i1 %3067 to float
  %3069 = fadd fast float %3043, %3068
  %3070 = or i32 %2948, %3020
  %3071 = icmp slt i32 %3070, 0
  %3072 = or i1 %3023, %2951
  %3073 = or i1 %3071, %3072
  br i1 %3073, label %3091, label %3074, !dx.controlflow.hints !47

; <label>:3074                                    ; preds = %3065
  %3075 = lshr i32 %2948, 2
  %3076 = mul i32 %85, %3075
  %3077 = lshr i32 %3020, 3
  %3078 = add i32 %81, %3077
  %3079 = add i32 %3078, %83
  %3080 = add i32 %3079, %3076
  %3081 = shl i32 %3080, 2
  %3082 = shl i32 %2948, 3
  %3083 = and i32 %3082, 24
  %3084 = and i32 %3020, 7
  %3085 = or i32 %3083, %3084
  %3086 = shl i32 1, %3085
  %3087 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %3081, i32 undef)  ; BufferLoad(srv,index,wot)
  %3088 = extractvalue %dx.types.ResRet.i32 %3087, 0
  %3089 = and i32 %3088, %3086
  %3090 = icmp ne i32 %3089, 0
  br label %3091

; <label>:3091                                    ; preds = %3074, %3065
  %3092 = phi i1 [ %3090, %3074 ], [ false, %3065 ]
  %3093 = xor i1 %3092, true
  %3094 = uitofp i1 %3093 to float
  %3095 = fadd fast float %3069, %3094
  %3096 = or i32 %2972, %2996
  %3097 = icmp slt i32 %3096, 0
  %3098 = or i1 %2999, %2975
  %3099 = or i1 %3097, %3098
  br i1 %3099, label %3117, label %3100, !dx.controlflow.hints !47

; <label>:3100                                    ; preds = %3091
  %3101 = lshr i32 %2972, 2
  %3102 = mul i32 %85, %3101
  %3103 = lshr i32 %2996, 3
  %3104 = add i32 %81, %3103
  %3105 = add i32 %3104, %83
  %3106 = add i32 %3105, %3102
  %3107 = shl i32 %3106, 2
  %3108 = shl i32 %2972, 3
  %3109 = and i32 %3108, 24
  %3110 = and i32 %2996, 7
  %3111 = or i32 %3109, %3110
  %3112 = shl i32 1, %3111
  %3113 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %3107, i32 undef)  ; BufferLoad(srv,index,wot)
  %3114 = extractvalue %dx.types.ResRet.i32 %3113, 0
  %3115 = and i32 %3114, %3112
  %3116 = icmp ne i32 %3115, 0
  br label %3117

; <label>:3117                                    ; preds = %3100, %3091
  %3118 = phi i1 [ %3116, %3100 ], [ false, %3091 ]
  %3119 = xor i1 %3118, true
  %3120 = uitofp i1 %3119 to float
  %3121 = fadd fast float %3095, %3120
  %3122 = or i32 %2972, %3020
  %3123 = icmp slt i32 %3122, 0
  %3124 = or i1 %3023, %2975
  %3125 = or i1 %3123, %3124
  br i1 %3125, label %3143, label %3126, !dx.controlflow.hints !47

; <label>:3126                                    ; preds = %3117
  %3127 = lshr i32 %2972, 2
  %3128 = mul i32 %85, %3127
  %3129 = lshr i32 %3020, 3
  %3130 = add i32 %81, %3129
  %3131 = add i32 %3130, %83
  %3132 = add i32 %3131, %3128
  %3133 = shl i32 %3132, 2
  %3134 = shl i32 %2972, 3
  %3135 = and i32 %3134, 24
  %3136 = and i32 %3020, 7
  %3137 = or i32 %3135, %3136
  %3138 = shl i32 1, %3137
  %3139 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %3133, i32 undef)  ; BufferLoad(srv,index,wot)
  %3140 = extractvalue %dx.types.ResRet.i32 %3139, 0
  %3141 = and i32 %3140, %3138
  %3142 = icmp ne i32 %3141, 0
  br label %3143

; <label>:3143                                    ; preds = %3126, %3117
  %3144 = phi i1 [ %3142, %3126 ], [ false, %3117 ]
  %3145 = xor i1 %3144, true
  %3146 = uitofp i1 %3145 to float
  %3147 = fadd fast float %3121, %3146
  %3148 = fmul fast float %2523, 4.000000e+00
  %3149 = fmul fast float %2524, 4.000000e+00
  %3150 = call float @dx.op.unary.f32(i32 28, float %3148)  ; Round_pi(value)
  %3151 = call float @dx.op.unary.f32(i32 28, float %3149)  ; Round_pi(value)
  %3152 = fptosi float %3150 to i32
  %3153 = fptosi float %3151 to i32
  %3154 = sub i32 %64, %3153
  %3155 = or i32 %3154, %63
  %3156 = icmp slt i32 %3155, 0
  %3157 = icmp sge i32 %3154, %2536
  %3158 = or i1 %2537, %3157
  %3159 = or i1 %3156, %3158
  br i1 %3159, label %3173, label %3160, !dx.controlflow.hints !47

; <label>:3160                                    ; preds = %3143
  %3161 = lshr i32 %3154, 2
  %3162 = mul i32 %85, %3161
  %3163 = add i32 %89, %3162
  %3164 = shl i32 %3163, 2
  %3165 = shl i32 %3154, 3
  %3166 = and i32 %3165, 24
  %3167 = or i32 %3166, %94
  %3168 = shl i32 1, %3167
  %3169 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %3164, i32 undef)  ; BufferLoad(srv,index,wot)
  %3170 = extractvalue %dx.types.ResRet.i32 %3169, 0
  %3171 = and i32 %3170, %3168
  %3172 = icmp ne i32 %3171, 0
  br label %3173

; <label>:3173                                    ; preds = %3160, %3143
  %3174 = phi i1 [ %3172, %3160 ], [ false, %3143 ]
  %3175 = xor i1 %3174, true
  %3176 = uitofp i1 %3175 to float
  %3177 = fadd fast float %3147, %3176
  %3178 = add i32 %3153, %64
  %3179 = or i32 %3178, %63
  %3180 = icmp slt i32 %3179, 0
  %3181 = icmp sge i32 %3178, %2536
  %3182 = or i1 %2537, %3181
  %3183 = or i1 %3180, %3182
  br i1 %3183, label %3197, label %3184, !dx.controlflow.hints !47

; <label>:3184                                    ; preds = %3173
  %3185 = lshr i32 %3178, 2
  %3186 = mul i32 %85, %3185
  %3187 = add i32 %89, %3186
  %3188 = shl i32 %3187, 2
  %3189 = shl i32 %3178, 3
  %3190 = and i32 %3189, 24
  %3191 = or i32 %3190, %94
  %3192 = shl i32 1, %3191
  %3193 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %3188, i32 undef)  ; BufferLoad(srv,index,wot)
  %3194 = extractvalue %dx.types.ResRet.i32 %3193, 0
  %3195 = and i32 %3194, %3192
  %3196 = icmp ne i32 %3195, 0
  br label %3197

; <label>:3197                                    ; preds = %3184, %3173
  %3198 = phi i1 [ %3196, %3184 ], [ false, %3173 ]
  %3199 = xor i1 %3198, true
  %3200 = uitofp i1 %3199 to float
  %3201 = fadd fast float %3177, %3200
  %3202 = sub i32 %63, %3152
  %3203 = or i32 %3202, %64
  %3204 = icmp slt i32 %3203, 0
  %3205 = icmp sge i32 %3202, %2535
  %3206 = or i1 %3205, %2587
  %3207 = or i1 %3204, %3206
  br i1 %3207, label %3221, label %3208, !dx.controlflow.hints !47

; <label>:3208                                    ; preds = %3197
  %3209 = lshr i32 %3202, 3
  %3210 = add i32 %81, %3209
  %3211 = add i32 %3210, %83
  %3212 = add i32 %3211, %86
  %3213 = shl i32 %3212, 2
  %3214 = and i32 %3202, 7
  %3215 = or i32 %3214, %93
  %3216 = shl i32 1, %3215
  %3217 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %3213, i32 undef)  ; BufferLoad(srv,index,wot)
  %3218 = extractvalue %dx.types.ResRet.i32 %3217, 0
  %3219 = and i32 %3218, %3216
  %3220 = icmp ne i32 %3219, 0
  br label %3221

; <label>:3221                                    ; preds = %3208, %3197
  %3222 = phi i1 [ %3220, %3208 ], [ false, %3197 ]
  %3223 = xor i1 %3222, true
  %3224 = uitofp i1 %3223 to float
  %3225 = fadd fast float %3201, %3224
  %3226 = add i32 %3152, %63
  %3227 = or i32 %3226, %64
  %3228 = icmp slt i32 %3227, 0
  %3229 = icmp sge i32 %3226, %2535
  %3230 = or i1 %3229, %2587
  %3231 = or i1 %3228, %3230
  br i1 %3231, label %3245, label %3232, !dx.controlflow.hints !47

; <label>:3232                                    ; preds = %3221
  %3233 = lshr i32 %3226, 3
  %3234 = add i32 %81, %3233
  %3235 = add i32 %3234, %83
  %3236 = add i32 %3235, %86
  %3237 = shl i32 %3236, 2
  %3238 = and i32 %3226, 7
  %3239 = or i32 %3238, %93
  %3240 = shl i32 1, %3239
  %3241 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %3237, i32 undef)  ; BufferLoad(srv,index,wot)
  %3242 = extractvalue %dx.types.ResRet.i32 %3241, 0
  %3243 = and i32 %3242, %3240
  %3244 = icmp ne i32 %3243, 0
  br label %3245

; <label>:3245                                    ; preds = %3232, %3221
  %3246 = phi i1 [ %3244, %3232 ], [ false, %3221 ]
  %3247 = xor i1 %3246, true
  %3248 = uitofp i1 %3247 to float
  %3249 = fadd fast float %3225, %3248
  %3250 = or i32 %3154, %3202
  %3251 = icmp slt i32 %3250, 0
  %3252 = or i1 %3205, %3157
  %3253 = or i1 %3251, %3252
  br i1 %3253, label %3271, label %3254, !dx.controlflow.hints !47

; <label>:3254                                    ; preds = %3245
  %3255 = lshr i32 %3154, 2
  %3256 = mul i32 %85, %3255
  %3257 = lshr i32 %3202, 3
  %3258 = add i32 %81, %3257
  %3259 = add i32 %3258, %83
  %3260 = add i32 %3259, %3256
  %3261 = shl i32 %3260, 2
  %3262 = shl i32 %3154, 3
  %3263 = and i32 %3262, 24
  %3264 = and i32 %3202, 7
  %3265 = or i32 %3263, %3264
  %3266 = shl i32 1, %3265
  %3267 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %3261, i32 undef)  ; BufferLoad(srv,index,wot)
  %3268 = extractvalue %dx.types.ResRet.i32 %3267, 0
  %3269 = and i32 %3268, %3266
  %3270 = icmp ne i32 %3269, 0
  br label %3271

; <label>:3271                                    ; preds = %3254, %3245
  %3272 = phi i1 [ %3270, %3254 ], [ false, %3245 ]
  %3273 = xor i1 %3272, true
  %3274 = uitofp i1 %3273 to float
  %3275 = fadd fast float %3249, %3274
  %3276 = or i32 %3154, %3226
  %3277 = icmp slt i32 %3276, 0
  %3278 = or i1 %3229, %3157
  %3279 = or i1 %3277, %3278
  br i1 %3279, label %3297, label %3280, !dx.controlflow.hints !47

; <label>:3280                                    ; preds = %3271
  %3281 = lshr i32 %3154, 2
  %3282 = mul i32 %85, %3281
  %3283 = lshr i32 %3226, 3
  %3284 = add i32 %81, %3283
  %3285 = add i32 %3284, %83
  %3286 = add i32 %3285, %3282
  %3287 = shl i32 %3286, 2
  %3288 = shl i32 %3154, 3
  %3289 = and i32 %3288, 24
  %3290 = and i32 %3226, 7
  %3291 = or i32 %3289, %3290
  %3292 = shl i32 1, %3291
  %3293 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %3287, i32 undef)  ; BufferLoad(srv,index,wot)
  %3294 = extractvalue %dx.types.ResRet.i32 %3293, 0
  %3295 = and i32 %3294, %3292
  %3296 = icmp ne i32 %3295, 0
  br label %3297

; <label>:3297                                    ; preds = %3280, %3271
  %3298 = phi i1 [ %3296, %3280 ], [ false, %3271 ]
  %3299 = xor i1 %3298, true
  %3300 = uitofp i1 %3299 to float
  %3301 = fadd fast float %3275, %3300
  %3302 = or i32 %3178, %3202
  %3303 = icmp slt i32 %3302, 0
  %3304 = or i1 %3205, %3181
  %3305 = or i1 %3303, %3304
  br i1 %3305, label %3323, label %3306, !dx.controlflow.hints !47

; <label>:3306                                    ; preds = %3297
  %3307 = lshr i32 %3178, 2
  %3308 = mul i32 %85, %3307
  %3309 = lshr i32 %3202, 3
  %3310 = add i32 %81, %3309
  %3311 = add i32 %3310, %83
  %3312 = add i32 %3311, %3308
  %3313 = shl i32 %3312, 2
  %3314 = shl i32 %3178, 3
  %3315 = and i32 %3314, 24
  %3316 = and i32 %3202, 7
  %3317 = or i32 %3315, %3316
  %3318 = shl i32 1, %3317
  %3319 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %3313, i32 undef)  ; BufferLoad(srv,index,wot)
  %3320 = extractvalue %dx.types.ResRet.i32 %3319, 0
  %3321 = and i32 %3320, %3318
  %3322 = icmp ne i32 %3321, 0
  br label %3323

; <label>:3323                                    ; preds = %3306, %3297
  %3324 = phi i1 [ %3322, %3306 ], [ false, %3297 ]
  %3325 = xor i1 %3324, true
  %3326 = uitofp i1 %3325 to float
  %3327 = fadd fast float %3301, %3326
  %3328 = or i32 %3178, %3226
  %3329 = icmp slt i32 %3328, 0
  %3330 = or i1 %3229, %3181
  %3331 = or i1 %3329, %3330
  br i1 %3331, label %3349, label %3332, !dx.controlflow.hints !47

; <label>:3332                                    ; preds = %3323
  %3333 = lshr i32 %3178, 2
  %3334 = mul i32 %85, %3333
  %3335 = lshr i32 %3226, 3
  %3336 = add i32 %81, %3335
  %3337 = add i32 %3336, %83
  %3338 = add i32 %3337, %3334
  %3339 = shl i32 %3338, 2
  %3340 = shl i32 %3178, 3
  %3341 = and i32 %3340, 24
  %3342 = and i32 %3226, 7
  %3343 = or i32 %3341, %3342
  %3344 = shl i32 1, %3343
  %3345 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %3339, i32 undef)  ; BufferLoad(srv,index,wot)
  %3346 = extractvalue %dx.types.ResRet.i32 %3345, 0
  %3347 = and i32 %3346, %3344
  %3348 = icmp ne i32 %3347, 0
  br label %3349

; <label>:3349                                    ; preds = %3332, %3323
  %3350 = phi i1 [ %3348, %3332 ], [ false, %3323 ]
  %3351 = xor i1 %3350, true
  %3352 = uitofp i1 %3351 to float
  %3353 = fadd fast float %3327, %3352
  %3354 = fmul fast float %2523, 5.000000e+00
  %3355 = fmul fast float %2524, 5.000000e+00
  %3356 = call float @dx.op.unary.f32(i32 28, float %3354)  ; Round_pi(value)
  %3357 = call float @dx.op.unary.f32(i32 28, float %3355)  ; Round_pi(value)
  %3358 = fptosi float %3356 to i32
  %3359 = fptosi float %3357 to i32
  %3360 = sub i32 %64, %3359
  %3361 = or i32 %3360, %63
  %3362 = icmp slt i32 %3361, 0
  %3363 = icmp sge i32 %3360, %2536
  %3364 = or i1 %2537, %3363
  %3365 = or i1 %3362, %3364
  br i1 %3365, label %3379, label %3366, !dx.controlflow.hints !47

; <label>:3366                                    ; preds = %3349
  %3367 = lshr i32 %3360, 2
  %3368 = mul i32 %85, %3367
  %3369 = add i32 %89, %3368
  %3370 = shl i32 %3369, 2
  %3371 = shl i32 %3360, 3
  %3372 = and i32 %3371, 24
  %3373 = or i32 %3372, %94
  %3374 = shl i32 1, %3373
  %3375 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %3370, i32 undef)  ; BufferLoad(srv,index,wot)
  %3376 = extractvalue %dx.types.ResRet.i32 %3375, 0
  %3377 = and i32 %3376, %3374
  %3378 = icmp ne i32 %3377, 0
  br label %3379

; <label>:3379                                    ; preds = %3366, %3349
  %3380 = phi i1 [ %3378, %3366 ], [ false, %3349 ]
  %3381 = xor i1 %3380, true
  %3382 = uitofp i1 %3381 to float
  %3383 = fadd fast float %3353, %3382
  %3384 = add i32 %3359, %64
  %3385 = or i32 %3384, %63
  %3386 = icmp slt i32 %3385, 0
  %3387 = icmp sge i32 %3384, %2536
  %3388 = or i1 %2537, %3387
  %3389 = or i1 %3386, %3388
  br i1 %3389, label %3403, label %3390, !dx.controlflow.hints !47

; <label>:3390                                    ; preds = %3379
  %3391 = lshr i32 %3384, 2
  %3392 = mul i32 %85, %3391
  %3393 = add i32 %89, %3392
  %3394 = shl i32 %3393, 2
  %3395 = shl i32 %3384, 3
  %3396 = and i32 %3395, 24
  %3397 = or i32 %3396, %94
  %3398 = shl i32 1, %3397
  %3399 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %3394, i32 undef)  ; BufferLoad(srv,index,wot)
  %3400 = extractvalue %dx.types.ResRet.i32 %3399, 0
  %3401 = and i32 %3400, %3398
  %3402 = icmp ne i32 %3401, 0
  br label %3403

; <label>:3403                                    ; preds = %3390, %3379
  %3404 = phi i1 [ %3402, %3390 ], [ false, %3379 ]
  %3405 = xor i1 %3404, true
  %3406 = uitofp i1 %3405 to float
  %3407 = fadd fast float %3383, %3406
  %3408 = sub i32 %63, %3358
  %3409 = or i32 %3408, %64
  %3410 = icmp slt i32 %3409, 0
  %3411 = icmp sge i32 %3408, %2535
  %3412 = or i1 %3411, %2587
  %3413 = or i1 %3410, %3412
  br i1 %3413, label %3427, label %3414, !dx.controlflow.hints !47

; <label>:3414                                    ; preds = %3403
  %3415 = lshr i32 %3408, 3
  %3416 = add i32 %81, %3415
  %3417 = add i32 %3416, %83
  %3418 = add i32 %3417, %86
  %3419 = shl i32 %3418, 2
  %3420 = and i32 %3408, 7
  %3421 = or i32 %3420, %93
  %3422 = shl i32 1, %3421
  %3423 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %3419, i32 undef)  ; BufferLoad(srv,index,wot)
  %3424 = extractvalue %dx.types.ResRet.i32 %3423, 0
  %3425 = and i32 %3424, %3422
  %3426 = icmp ne i32 %3425, 0
  br label %3427

; <label>:3427                                    ; preds = %3414, %3403
  %3428 = phi i1 [ %3426, %3414 ], [ false, %3403 ]
  %3429 = xor i1 %3428, true
  %3430 = uitofp i1 %3429 to float
  %3431 = fadd fast float %3407, %3430
  %3432 = add i32 %3358, %63
  %3433 = or i32 %3432, %64
  %3434 = icmp slt i32 %3433, 0
  %3435 = icmp sge i32 %3432, %2535
  %3436 = or i1 %3435, %2587
  %3437 = or i1 %3434, %3436
  br i1 %3437, label %3451, label %3438, !dx.controlflow.hints !47

; <label>:3438                                    ; preds = %3427
  %3439 = lshr i32 %3432, 3
  %3440 = add i32 %81, %3439
  %3441 = add i32 %3440, %83
  %3442 = add i32 %3441, %86
  %3443 = shl i32 %3442, 2
  %3444 = and i32 %3432, 7
  %3445 = or i32 %3444, %93
  %3446 = shl i32 1, %3445
  %3447 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %3443, i32 undef)  ; BufferLoad(srv,index,wot)
  %3448 = extractvalue %dx.types.ResRet.i32 %3447, 0
  %3449 = and i32 %3448, %3446
  %3450 = icmp ne i32 %3449, 0
  br label %3451

; <label>:3451                                    ; preds = %3438, %3427
  %3452 = phi i1 [ %3450, %3438 ], [ false, %3427 ]
  %3453 = xor i1 %3452, true
  %3454 = uitofp i1 %3453 to float
  %3455 = fadd fast float %3431, %3454
  %3456 = or i32 %3360, %3408
  %3457 = icmp slt i32 %3456, 0
  %3458 = or i1 %3411, %3363
  %3459 = or i1 %3457, %3458
  br i1 %3459, label %3477, label %3460, !dx.controlflow.hints !47

; <label>:3460                                    ; preds = %3451
  %3461 = lshr i32 %3360, 2
  %3462 = mul i32 %85, %3461
  %3463 = lshr i32 %3408, 3
  %3464 = add i32 %81, %3463
  %3465 = add i32 %3464, %83
  %3466 = add i32 %3465, %3462
  %3467 = shl i32 %3466, 2
  %3468 = shl i32 %3360, 3
  %3469 = and i32 %3468, 24
  %3470 = and i32 %3408, 7
  %3471 = or i32 %3469, %3470
  %3472 = shl i32 1, %3471
  %3473 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %3467, i32 undef)  ; BufferLoad(srv,index,wot)
  %3474 = extractvalue %dx.types.ResRet.i32 %3473, 0
  %3475 = and i32 %3474, %3472
  %3476 = icmp ne i32 %3475, 0
  br label %3477

; <label>:3477                                    ; preds = %3460, %3451
  %3478 = phi i1 [ %3476, %3460 ], [ false, %3451 ]
  %3479 = xor i1 %3478, true
  %3480 = uitofp i1 %3479 to float
  %3481 = fadd fast float %3455, %3480
  %3482 = or i32 %3360, %3432
  %3483 = icmp slt i32 %3482, 0
  %3484 = or i1 %3435, %3363
  %3485 = or i1 %3483, %3484
  br i1 %3485, label %3503, label %3486, !dx.controlflow.hints !47

; <label>:3486                                    ; preds = %3477
  %3487 = lshr i32 %3360, 2
  %3488 = mul i32 %85, %3487
  %3489 = lshr i32 %3432, 3
  %3490 = add i32 %81, %3489
  %3491 = add i32 %3490, %83
  %3492 = add i32 %3491, %3488
  %3493 = shl i32 %3492, 2
  %3494 = shl i32 %3360, 3
  %3495 = and i32 %3494, 24
  %3496 = and i32 %3432, 7
  %3497 = or i32 %3495, %3496
  %3498 = shl i32 1, %3497
  %3499 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %3493, i32 undef)  ; BufferLoad(srv,index,wot)
  %3500 = extractvalue %dx.types.ResRet.i32 %3499, 0
  %3501 = and i32 %3500, %3498
  %3502 = icmp ne i32 %3501, 0
  br label %3503

; <label>:3503                                    ; preds = %3486, %3477
  %3504 = phi i1 [ %3502, %3486 ], [ false, %3477 ]
  %3505 = xor i1 %3504, true
  %3506 = uitofp i1 %3505 to float
  %3507 = fadd fast float %3481, %3506
  %3508 = or i32 %3384, %3408
  %3509 = icmp slt i32 %3508, 0
  %3510 = or i1 %3411, %3387
  %3511 = or i1 %3509, %3510
  br i1 %3511, label %3529, label %3512, !dx.controlflow.hints !47

; <label>:3512                                    ; preds = %3503
  %3513 = lshr i32 %3384, 2
  %3514 = mul i32 %85, %3513
  %3515 = lshr i32 %3408, 3
  %3516 = add i32 %81, %3515
  %3517 = add i32 %3516, %83
  %3518 = add i32 %3517, %3514
  %3519 = shl i32 %3518, 2
  %3520 = shl i32 %3384, 3
  %3521 = and i32 %3520, 24
  %3522 = and i32 %3408, 7
  %3523 = or i32 %3521, %3522
  %3524 = shl i32 1, %3523
  %3525 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %3519, i32 undef)  ; BufferLoad(srv,index,wot)
  %3526 = extractvalue %dx.types.ResRet.i32 %3525, 0
  %3527 = and i32 %3526, %3524
  %3528 = icmp ne i32 %3527, 0
  br label %3529

; <label>:3529                                    ; preds = %3512, %3503
  %3530 = phi i1 [ %3528, %3512 ], [ false, %3503 ]
  %3531 = xor i1 %3530, true
  %3532 = uitofp i1 %3531 to float
  %3533 = fadd fast float %3507, %3532
  %3534 = or i32 %3384, %3432
  %3535 = icmp slt i32 %3534, 0
  %3536 = or i1 %3435, %3387
  %3537 = or i1 %3535, %3536
  br i1 %3537, label %3555, label %3538, !dx.controlflow.hints !47

; <label>:3538                                    ; preds = %3529
  %3539 = lshr i32 %3384, 2
  %3540 = mul i32 %85, %3539
  %3541 = lshr i32 %3432, 3
  %3542 = add i32 %81, %3541
  %3543 = add i32 %3542, %83
  %3544 = add i32 %3543, %3540
  %3545 = shl i32 %3544, 2
  %3546 = shl i32 %3384, 3
  %3547 = and i32 %3546, 24
  %3548 = and i32 %3432, 7
  %3549 = or i32 %3547, %3548
  %3550 = shl i32 1, %3549
  %3551 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %3545, i32 undef)  ; BufferLoad(srv,index,wot)
  %3552 = extractvalue %dx.types.ResRet.i32 %3551, 0
  %3553 = and i32 %3552, %3550
  %3554 = icmp ne i32 %3553, 0
  br label %3555

; <label>:3555                                    ; preds = %3538, %3529
  %3556 = phi i1 [ %3554, %3538 ], [ false, %3529 ]
  %3557 = xor i1 %3556, true
  %3558 = uitofp i1 %3557 to float
  %3559 = fadd fast float %3533, %3558
  %3560 = fmul fast float %2523, 6.000000e+00
  %3561 = fmul fast float %2524, 6.000000e+00
  %3562 = call float @dx.op.unary.f32(i32 28, float %3560)  ; Round_pi(value)
  %3563 = call float @dx.op.unary.f32(i32 28, float %3561)  ; Round_pi(value)
  %3564 = fptosi float %3562 to i32
  %3565 = fptosi float %3563 to i32
  %3566 = sub i32 %64, %3565
  %3567 = or i32 %3566, %63
  %3568 = icmp slt i32 %3567, 0
  %3569 = icmp sge i32 %3566, %2536
  %3570 = or i1 %2537, %3569
  %3571 = or i1 %3568, %3570
  br i1 %3571, label %3585, label %3572, !dx.controlflow.hints !47

; <label>:3572                                    ; preds = %3555
  %3573 = lshr i32 %3566, 2
  %3574 = mul i32 %85, %3573
  %3575 = add i32 %89, %3574
  %3576 = shl i32 %3575, 2
  %3577 = shl i32 %3566, 3
  %3578 = and i32 %3577, 24
  %3579 = or i32 %3578, %94
  %3580 = shl i32 1, %3579
  %3581 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %3576, i32 undef)  ; BufferLoad(srv,index,wot)
  %3582 = extractvalue %dx.types.ResRet.i32 %3581, 0
  %3583 = and i32 %3582, %3580
  %3584 = icmp ne i32 %3583, 0
  br label %3585

; <label>:3585                                    ; preds = %3572, %3555
  %3586 = phi i1 [ %3584, %3572 ], [ false, %3555 ]
  %3587 = xor i1 %3586, true
  %3588 = uitofp i1 %3587 to float
  %3589 = fadd fast float %3559, %3588
  %3590 = add i32 %3565, %64
  %3591 = or i32 %3590, %63
  %3592 = icmp slt i32 %3591, 0
  %3593 = icmp sge i32 %3590, %2536
  %3594 = or i1 %2537, %3593
  %3595 = or i1 %3592, %3594
  br i1 %3595, label %3609, label %3596, !dx.controlflow.hints !47

; <label>:3596                                    ; preds = %3585
  %3597 = lshr i32 %3590, 2
  %3598 = mul i32 %85, %3597
  %3599 = add i32 %89, %3598
  %3600 = shl i32 %3599, 2
  %3601 = shl i32 %3590, 3
  %3602 = and i32 %3601, 24
  %3603 = or i32 %3602, %94
  %3604 = shl i32 1, %3603
  %3605 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %3600, i32 undef)  ; BufferLoad(srv,index,wot)
  %3606 = extractvalue %dx.types.ResRet.i32 %3605, 0
  %3607 = and i32 %3606, %3604
  %3608 = icmp ne i32 %3607, 0
  br label %3609

; <label>:3609                                    ; preds = %3596, %3585
  %3610 = phi i1 [ %3608, %3596 ], [ false, %3585 ]
  %3611 = xor i1 %3610, true
  %3612 = uitofp i1 %3611 to float
  %3613 = fadd fast float %3589, %3612
  %3614 = sub i32 %63, %3564
  %3615 = or i32 %3614, %64
  %3616 = icmp slt i32 %3615, 0
  %3617 = icmp sge i32 %3614, %2535
  %3618 = or i1 %3617, %2587
  %3619 = or i1 %3616, %3618
  br i1 %3619, label %3633, label %3620, !dx.controlflow.hints !47

; <label>:3620                                    ; preds = %3609
  %3621 = lshr i32 %3614, 3
  %3622 = add i32 %81, %3621
  %3623 = add i32 %3622, %83
  %3624 = add i32 %3623, %86
  %3625 = shl i32 %3624, 2
  %3626 = and i32 %3614, 7
  %3627 = or i32 %3626, %93
  %3628 = shl i32 1, %3627
  %3629 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %3625, i32 undef)  ; BufferLoad(srv,index,wot)
  %3630 = extractvalue %dx.types.ResRet.i32 %3629, 0
  %3631 = and i32 %3630, %3628
  %3632 = icmp ne i32 %3631, 0
  br label %3633

; <label>:3633                                    ; preds = %3620, %3609
  %3634 = phi i1 [ %3632, %3620 ], [ false, %3609 ]
  %3635 = xor i1 %3634, true
  %3636 = uitofp i1 %3635 to float
  %3637 = fadd fast float %3613, %3636
  %3638 = add i32 %3564, %63
  %3639 = or i32 %3638, %64
  %3640 = icmp slt i32 %3639, 0
  %3641 = icmp sge i32 %3638, %2535
  %3642 = or i1 %3641, %2587
  %3643 = or i1 %3640, %3642
  br i1 %3643, label %3657, label %3644, !dx.controlflow.hints !47

; <label>:3644                                    ; preds = %3633
  %3645 = lshr i32 %3638, 3
  %3646 = add i32 %81, %3645
  %3647 = add i32 %3646, %83
  %3648 = add i32 %3647, %86
  %3649 = shl i32 %3648, 2
  %3650 = and i32 %3638, 7
  %3651 = or i32 %3650, %93
  %3652 = shl i32 1, %3651
  %3653 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %3649, i32 undef)  ; BufferLoad(srv,index,wot)
  %3654 = extractvalue %dx.types.ResRet.i32 %3653, 0
  %3655 = and i32 %3654, %3652
  %3656 = icmp ne i32 %3655, 0
  br label %3657

; <label>:3657                                    ; preds = %3644, %3633
  %3658 = phi i1 [ %3656, %3644 ], [ false, %3633 ]
  %3659 = xor i1 %3658, true
  %3660 = uitofp i1 %3659 to float
  %3661 = fadd fast float %3637, %3660
  %3662 = or i32 %3566, %3614
  %3663 = icmp slt i32 %3662, 0
  %3664 = or i1 %3617, %3569
  %3665 = or i1 %3663, %3664
  br i1 %3665, label %3683, label %3666, !dx.controlflow.hints !47

; <label>:3666                                    ; preds = %3657
  %3667 = lshr i32 %3566, 2
  %3668 = mul i32 %85, %3667
  %3669 = lshr i32 %3614, 3
  %3670 = add i32 %81, %3669
  %3671 = add i32 %3670, %83
  %3672 = add i32 %3671, %3668
  %3673 = shl i32 %3672, 2
  %3674 = shl i32 %3566, 3
  %3675 = and i32 %3674, 24
  %3676 = and i32 %3614, 7
  %3677 = or i32 %3675, %3676
  %3678 = shl i32 1, %3677
  %3679 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %3673, i32 undef)  ; BufferLoad(srv,index,wot)
  %3680 = extractvalue %dx.types.ResRet.i32 %3679, 0
  %3681 = and i32 %3680, %3678
  %3682 = icmp ne i32 %3681, 0
  br label %3683

; <label>:3683                                    ; preds = %3666, %3657
  %3684 = phi i1 [ %3682, %3666 ], [ false, %3657 ]
  %3685 = xor i1 %3684, true
  %3686 = uitofp i1 %3685 to float
  %3687 = fadd fast float %3661, %3686
  %3688 = or i32 %3566, %3638
  %3689 = icmp slt i32 %3688, 0
  %3690 = or i1 %3641, %3569
  %3691 = or i1 %3689, %3690
  br i1 %3691, label %3709, label %3692, !dx.controlflow.hints !47

; <label>:3692                                    ; preds = %3683
  %3693 = lshr i32 %3566, 2
  %3694 = mul i32 %85, %3693
  %3695 = lshr i32 %3638, 3
  %3696 = add i32 %81, %3695
  %3697 = add i32 %3696, %83
  %3698 = add i32 %3697, %3694
  %3699 = shl i32 %3698, 2
  %3700 = shl i32 %3566, 3
  %3701 = and i32 %3700, 24
  %3702 = and i32 %3638, 7
  %3703 = or i32 %3701, %3702
  %3704 = shl i32 1, %3703
  %3705 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %3699, i32 undef)  ; BufferLoad(srv,index,wot)
  %3706 = extractvalue %dx.types.ResRet.i32 %3705, 0
  %3707 = and i32 %3706, %3704
  %3708 = icmp ne i32 %3707, 0
  br label %3709

; <label>:3709                                    ; preds = %3692, %3683
  %3710 = phi i1 [ %3708, %3692 ], [ false, %3683 ]
  %3711 = xor i1 %3710, true
  %3712 = uitofp i1 %3711 to float
  %3713 = fadd fast float %3687, %3712
  %3714 = or i32 %3590, %3614
  %3715 = icmp slt i32 %3714, 0
  %3716 = or i1 %3617, %3593
  %3717 = or i1 %3715, %3716
  br i1 %3717, label %3735, label %3718, !dx.controlflow.hints !47

; <label>:3718                                    ; preds = %3709
  %3719 = lshr i32 %3590, 2
  %3720 = mul i32 %85, %3719
  %3721 = lshr i32 %3614, 3
  %3722 = add i32 %81, %3721
  %3723 = add i32 %3722, %83
  %3724 = add i32 %3723, %3720
  %3725 = shl i32 %3724, 2
  %3726 = shl i32 %3590, 3
  %3727 = and i32 %3726, 24
  %3728 = and i32 %3614, 7
  %3729 = or i32 %3727, %3728
  %3730 = shl i32 1, %3729
  %3731 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %3725, i32 undef)  ; BufferLoad(srv,index,wot)
  %3732 = extractvalue %dx.types.ResRet.i32 %3731, 0
  %3733 = and i32 %3732, %3730
  %3734 = icmp ne i32 %3733, 0
  br label %3735

; <label>:3735                                    ; preds = %3718, %3709
  %3736 = phi i1 [ %3734, %3718 ], [ false, %3709 ]
  %3737 = xor i1 %3736, true
  %3738 = uitofp i1 %3737 to float
  %3739 = fadd fast float %3713, %3738
  %3740 = or i32 %3590, %3638
  %3741 = icmp slt i32 %3740, 0
  %3742 = or i1 %3641, %3593
  %3743 = or i1 %3741, %3742
  br i1 %3743, label %3761, label %3744, !dx.controlflow.hints !47

; <label>:3744                                    ; preds = %3735
  %3745 = lshr i32 %3590, 2
  %3746 = mul i32 %85, %3745
  %3747 = lshr i32 %3638, 3
  %3748 = add i32 %81, %3747
  %3749 = add i32 %3748, %83
  %3750 = add i32 %3749, %3746
  %3751 = shl i32 %3750, 2
  %3752 = shl i32 %3590, 3
  %3753 = and i32 %3752, 24
  %3754 = and i32 %3638, 7
  %3755 = or i32 %3753, %3754
  %3756 = shl i32 1, %3755
  %3757 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %3751, i32 undef)  ; BufferLoad(srv,index,wot)
  %3758 = extractvalue %dx.types.ResRet.i32 %3757, 0
  %3759 = and i32 %3758, %3756
  %3760 = icmp ne i32 %3759, 0
  br label %3761

; <label>:3761                                    ; preds = %3744, %3735
  %3762 = phi i1 [ %3760, %3744 ], [ false, %3735 ]
  %3763 = xor i1 %3762, true
  %3764 = uitofp i1 %3763 to float
  %3765 = fadd fast float %3739, %3764
  %3766 = fmul fast float %2523, 7.000000e+00
  %3767 = fmul fast float %2524, 7.000000e+00
  %3768 = call float @dx.op.unary.f32(i32 28, float %3766)  ; Round_pi(value)
  %3769 = call float @dx.op.unary.f32(i32 28, float %3767)  ; Round_pi(value)
  %3770 = fptosi float %3768 to i32
  %3771 = fptosi float %3769 to i32
  %3772 = sub i32 %64, %3771
  %3773 = or i32 %3772, %63
  %3774 = icmp slt i32 %3773, 0
  %3775 = icmp sge i32 %3772, %2536
  %3776 = or i1 %2537, %3775
  %3777 = or i1 %3774, %3776
  br i1 %3777, label %3791, label %3778, !dx.controlflow.hints !47

; <label>:3778                                    ; preds = %3761
  %3779 = lshr i32 %3772, 2
  %3780 = mul i32 %85, %3779
  %3781 = add i32 %89, %3780
  %3782 = shl i32 %3781, 2
  %3783 = shl i32 %3772, 3
  %3784 = and i32 %3783, 24
  %3785 = or i32 %3784, %94
  %3786 = shl i32 1, %3785
  %3787 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %3782, i32 undef)  ; BufferLoad(srv,index,wot)
  %3788 = extractvalue %dx.types.ResRet.i32 %3787, 0
  %3789 = and i32 %3788, %3786
  %3790 = icmp ne i32 %3789, 0
  br label %3791

; <label>:3791                                    ; preds = %3778, %3761
  %3792 = phi i1 [ %3790, %3778 ], [ false, %3761 ]
  %3793 = xor i1 %3792, true
  %3794 = uitofp i1 %3793 to float
  %3795 = fadd fast float %3765, %3794
  %3796 = add i32 %3771, %64
  %3797 = or i32 %3796, %63
  %3798 = icmp slt i32 %3797, 0
  %3799 = icmp sge i32 %3796, %2536
  %3800 = or i1 %2537, %3799
  %3801 = or i1 %3798, %3800
  br i1 %3801, label %3815, label %3802, !dx.controlflow.hints !47

; <label>:3802                                    ; preds = %3791
  %3803 = lshr i32 %3796, 2
  %3804 = mul i32 %85, %3803
  %3805 = add i32 %89, %3804
  %3806 = shl i32 %3805, 2
  %3807 = shl i32 %3796, 3
  %3808 = and i32 %3807, 24
  %3809 = or i32 %3808, %94
  %3810 = shl i32 1, %3809
  %3811 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %3806, i32 undef)  ; BufferLoad(srv,index,wot)
  %3812 = extractvalue %dx.types.ResRet.i32 %3811, 0
  %3813 = and i32 %3812, %3810
  %3814 = icmp ne i32 %3813, 0
  br label %3815

; <label>:3815                                    ; preds = %3802, %3791
  %3816 = phi i1 [ %3814, %3802 ], [ false, %3791 ]
  %3817 = xor i1 %3816, true
  %3818 = uitofp i1 %3817 to float
  %3819 = fadd fast float %3795, %3818
  %3820 = sub i32 %63, %3770
  %3821 = or i32 %3820, %64
  %3822 = icmp slt i32 %3821, 0
  %3823 = icmp sge i32 %3820, %2535
  %3824 = or i1 %3823, %2587
  %3825 = or i1 %3822, %3824
  br i1 %3825, label %3839, label %3826, !dx.controlflow.hints !47

; <label>:3826                                    ; preds = %3815
  %3827 = lshr i32 %3820, 3
  %3828 = add i32 %81, %3827
  %3829 = add i32 %3828, %83
  %3830 = add i32 %3829, %86
  %3831 = shl i32 %3830, 2
  %3832 = and i32 %3820, 7
  %3833 = or i32 %3832, %93
  %3834 = shl i32 1, %3833
  %3835 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %3831, i32 undef)  ; BufferLoad(srv,index,wot)
  %3836 = extractvalue %dx.types.ResRet.i32 %3835, 0
  %3837 = and i32 %3836, %3834
  %3838 = icmp ne i32 %3837, 0
  br label %3839

; <label>:3839                                    ; preds = %3826, %3815
  %3840 = phi i1 [ %3838, %3826 ], [ false, %3815 ]
  %3841 = xor i1 %3840, true
  %3842 = uitofp i1 %3841 to float
  %3843 = fadd fast float %3819, %3842
  %3844 = add i32 %3770, %63
  %3845 = or i32 %3844, %64
  %3846 = icmp slt i32 %3845, 0
  %3847 = icmp sge i32 %3844, %2535
  %3848 = or i1 %3847, %2587
  %3849 = or i1 %3846, %3848
  br i1 %3849, label %3863, label %3850, !dx.controlflow.hints !47

; <label>:3850                                    ; preds = %3839
  %3851 = lshr i32 %3844, 3
  %3852 = add i32 %81, %3851
  %3853 = add i32 %3852, %83
  %3854 = add i32 %3853, %86
  %3855 = shl i32 %3854, 2
  %3856 = and i32 %3844, 7
  %3857 = or i32 %3856, %93
  %3858 = shl i32 1, %3857
  %3859 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %3855, i32 undef)  ; BufferLoad(srv,index,wot)
  %3860 = extractvalue %dx.types.ResRet.i32 %3859, 0
  %3861 = and i32 %3860, %3858
  %3862 = icmp ne i32 %3861, 0
  br label %3863

; <label>:3863                                    ; preds = %3850, %3839
  %3864 = phi i1 [ %3862, %3850 ], [ false, %3839 ]
  %3865 = xor i1 %3864, true
  %3866 = uitofp i1 %3865 to float
  %3867 = fadd fast float %3843, %3866
  %3868 = or i32 %3772, %3820
  %3869 = icmp slt i32 %3868, 0
  %3870 = or i1 %3823, %3775
  %3871 = or i1 %3869, %3870
  br i1 %3871, label %3889, label %3872, !dx.controlflow.hints !47

; <label>:3872                                    ; preds = %3863
  %3873 = lshr i32 %3772, 2
  %3874 = mul i32 %85, %3873
  %3875 = lshr i32 %3820, 3
  %3876 = add i32 %81, %3875
  %3877 = add i32 %3876, %83
  %3878 = add i32 %3877, %3874
  %3879 = shl i32 %3878, 2
  %3880 = shl i32 %3772, 3
  %3881 = and i32 %3880, 24
  %3882 = and i32 %3820, 7
  %3883 = or i32 %3881, %3882
  %3884 = shl i32 1, %3883
  %3885 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %3879, i32 undef)  ; BufferLoad(srv,index,wot)
  %3886 = extractvalue %dx.types.ResRet.i32 %3885, 0
  %3887 = and i32 %3886, %3884
  %3888 = icmp ne i32 %3887, 0
  br label %3889

; <label>:3889                                    ; preds = %3872, %3863
  %3890 = phi i1 [ %3888, %3872 ], [ false, %3863 ]
  %3891 = xor i1 %3890, true
  %3892 = uitofp i1 %3891 to float
  %3893 = fadd fast float %3867, %3892
  %3894 = or i32 %3772, %3844
  %3895 = icmp slt i32 %3894, 0
  %3896 = or i1 %3847, %3775
  %3897 = or i1 %3895, %3896
  br i1 %3897, label %3915, label %3898, !dx.controlflow.hints !47

; <label>:3898                                    ; preds = %3889
  %3899 = lshr i32 %3772, 2
  %3900 = mul i32 %85, %3899
  %3901 = lshr i32 %3844, 3
  %3902 = add i32 %81, %3901
  %3903 = add i32 %3902, %83
  %3904 = add i32 %3903, %3900
  %3905 = shl i32 %3904, 2
  %3906 = shl i32 %3772, 3
  %3907 = and i32 %3906, 24
  %3908 = and i32 %3844, 7
  %3909 = or i32 %3907, %3908
  %3910 = shl i32 1, %3909
  %3911 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %3905, i32 undef)  ; BufferLoad(srv,index,wot)
  %3912 = extractvalue %dx.types.ResRet.i32 %3911, 0
  %3913 = and i32 %3912, %3910
  %3914 = icmp ne i32 %3913, 0
  br label %3915

; <label>:3915                                    ; preds = %3898, %3889
  %3916 = phi i1 [ %3914, %3898 ], [ false, %3889 ]
  %3917 = xor i1 %3916, true
  %3918 = uitofp i1 %3917 to float
  %3919 = fadd fast float %3893, %3918
  %3920 = or i32 %3796, %3820
  %3921 = icmp slt i32 %3920, 0
  %3922 = or i1 %3823, %3799
  %3923 = or i1 %3921, %3922
  br i1 %3923, label %3941, label %3924, !dx.controlflow.hints !47

; <label>:3924                                    ; preds = %3915
  %3925 = lshr i32 %3796, 2
  %3926 = mul i32 %85, %3925
  %3927 = lshr i32 %3820, 3
  %3928 = add i32 %81, %3927
  %3929 = add i32 %3928, %83
  %3930 = add i32 %3929, %3926
  %3931 = shl i32 %3930, 2
  %3932 = shl i32 %3796, 3
  %3933 = and i32 %3932, 24
  %3934 = and i32 %3820, 7
  %3935 = or i32 %3933, %3934
  %3936 = shl i32 1, %3935
  %3937 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %3931, i32 undef)  ; BufferLoad(srv,index,wot)
  %3938 = extractvalue %dx.types.ResRet.i32 %3937, 0
  %3939 = and i32 %3938, %3936
  %3940 = icmp ne i32 %3939, 0
  br label %3941

; <label>:3941                                    ; preds = %3924, %3915
  %3942 = phi i1 [ %3940, %3924 ], [ false, %3915 ]
  %3943 = xor i1 %3942, true
  %3944 = uitofp i1 %3943 to float
  %3945 = fadd fast float %3919, %3944
  %3946 = or i32 %3796, %3844
  %3947 = icmp slt i32 %3946, 0
  %3948 = or i1 %3847, %3799
  %3949 = or i1 %3947, %3948
  br i1 %3949, label %3967, label %3950, !dx.controlflow.hints !47

; <label>:3950                                    ; preds = %3941
  %3951 = lshr i32 %3796, 2
  %3952 = mul i32 %85, %3951
  %3953 = lshr i32 %3844, 3
  %3954 = add i32 %81, %3953
  %3955 = add i32 %3954, %83
  %3956 = add i32 %3955, %3952
  %3957 = shl i32 %3956, 2
  %3958 = shl i32 %3796, 3
  %3959 = and i32 %3958, 24
  %3960 = and i32 %3844, 7
  %3961 = or i32 %3959, %3960
  %3962 = shl i32 1, %3961
  %3963 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %3957, i32 undef)  ; BufferLoad(srv,index,wot)
  %3964 = extractvalue %dx.types.ResRet.i32 %3963, 0
  %3965 = and i32 %3964, %3962
  %3966 = icmp ne i32 %3965, 0
  br label %3967

; <label>:3967                                    ; preds = %3950, %3941
  %3968 = phi i1 [ %3966, %3950 ], [ false, %3941 ]
  %3969 = xor i1 %3968, true
  %3970 = uitofp i1 %3969 to float
  %3971 = fadd fast float %3945, %3970
  %3972 = fmul fast float %2523, 8.000000e+00
  %3973 = fmul fast float %2524, 8.000000e+00
  %3974 = call float @dx.op.unary.f32(i32 28, float %3972)  ; Round_pi(value)
  %3975 = call float @dx.op.unary.f32(i32 28, float %3973)  ; Round_pi(value)
  %3976 = fptosi float %3974 to i32
  %3977 = fptosi float %3975 to i32
  %3978 = sub i32 %64, %3977
  %3979 = or i32 %3978, %63
  %3980 = icmp slt i32 %3979, 0
  %3981 = icmp sge i32 %3978, %2536
  %3982 = or i1 %2537, %3981
  %3983 = or i1 %3980, %3982
  br i1 %3983, label %3997, label %3984, !dx.controlflow.hints !47

; <label>:3984                                    ; preds = %3967
  %3985 = lshr i32 %3978, 2
  %3986 = mul i32 %85, %3985
  %3987 = add i32 %89, %3986
  %3988 = shl i32 %3987, 2
  %3989 = shl i32 %3978, 3
  %3990 = and i32 %3989, 24
  %3991 = or i32 %3990, %94
  %3992 = shl i32 1, %3991
  %3993 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %3988, i32 undef)  ; BufferLoad(srv,index,wot)
  %3994 = extractvalue %dx.types.ResRet.i32 %3993, 0
  %3995 = and i32 %3994, %3992
  %3996 = icmp ne i32 %3995, 0
  br label %3997

; <label>:3997                                    ; preds = %3984, %3967
  %3998 = phi i1 [ %3996, %3984 ], [ false, %3967 ]
  %3999 = xor i1 %3998, true
  %4000 = uitofp i1 %3999 to float
  %4001 = fadd fast float %3971, %4000
  %4002 = add i32 %3977, %64
  %4003 = or i32 %4002, %63
  %4004 = icmp slt i32 %4003, 0
  %4005 = icmp sge i32 %4002, %2536
  %4006 = or i1 %2537, %4005
  %4007 = or i1 %4004, %4006
  br i1 %4007, label %4021, label %4008, !dx.controlflow.hints !47

; <label>:4008                                    ; preds = %3997
  %4009 = lshr i32 %4002, 2
  %4010 = mul i32 %85, %4009
  %4011 = add i32 %89, %4010
  %4012 = shl i32 %4011, 2
  %4013 = shl i32 %4002, 3
  %4014 = and i32 %4013, 24
  %4015 = or i32 %4014, %94
  %4016 = shl i32 1, %4015
  %4017 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %4012, i32 undef)  ; BufferLoad(srv,index,wot)
  %4018 = extractvalue %dx.types.ResRet.i32 %4017, 0
  %4019 = and i32 %4018, %4016
  %4020 = icmp ne i32 %4019, 0
  br label %4021

; <label>:4021                                    ; preds = %4008, %3997
  %4022 = phi i1 [ %4020, %4008 ], [ false, %3997 ]
  %4023 = xor i1 %4022, true
  %4024 = uitofp i1 %4023 to float
  %4025 = fadd fast float %4001, %4024
  %4026 = sub i32 %63, %3976
  %4027 = or i32 %4026, %64
  %4028 = icmp slt i32 %4027, 0
  %4029 = icmp sge i32 %4026, %2535
  %4030 = or i1 %4029, %2587
  %4031 = or i1 %4028, %4030
  br i1 %4031, label %4045, label %4032, !dx.controlflow.hints !47

; <label>:4032                                    ; preds = %4021
  %4033 = lshr i32 %4026, 3
  %4034 = add i32 %81, %4033
  %4035 = add i32 %4034, %83
  %4036 = add i32 %4035, %86
  %4037 = shl i32 %4036, 2
  %4038 = and i32 %4026, 7
  %4039 = or i32 %4038, %93
  %4040 = shl i32 1, %4039
  %4041 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %4037, i32 undef)  ; BufferLoad(srv,index,wot)
  %4042 = extractvalue %dx.types.ResRet.i32 %4041, 0
  %4043 = and i32 %4042, %4040
  %4044 = icmp ne i32 %4043, 0
  br label %4045

; <label>:4045                                    ; preds = %4032, %4021
  %4046 = phi i1 [ %4044, %4032 ], [ false, %4021 ]
  %4047 = xor i1 %4046, true
  %4048 = uitofp i1 %4047 to float
  %4049 = fadd fast float %4025, %4048
  %4050 = add i32 %3976, %63
  %4051 = or i32 %4050, %64
  %4052 = icmp slt i32 %4051, 0
  %4053 = icmp sge i32 %4050, %2535
  %4054 = or i1 %4053, %2587
  %4055 = or i1 %4052, %4054
  br i1 %4055, label %4069, label %4056, !dx.controlflow.hints !47

; <label>:4056                                    ; preds = %4045
  %4057 = lshr i32 %4050, 3
  %4058 = add i32 %81, %4057
  %4059 = add i32 %4058, %83
  %4060 = add i32 %4059, %86
  %4061 = shl i32 %4060, 2
  %4062 = and i32 %4050, 7
  %4063 = or i32 %4062, %93
  %4064 = shl i32 1, %4063
  %4065 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %4061, i32 undef)  ; BufferLoad(srv,index,wot)
  %4066 = extractvalue %dx.types.ResRet.i32 %4065, 0
  %4067 = and i32 %4066, %4064
  %4068 = icmp ne i32 %4067, 0
  br label %4069

; <label>:4069                                    ; preds = %4056, %4045
  %4070 = phi i1 [ %4068, %4056 ], [ false, %4045 ]
  %4071 = xor i1 %4070, true
  %4072 = uitofp i1 %4071 to float
  %4073 = fadd fast float %4049, %4072
  %4074 = or i32 %3978, %4026
  %4075 = icmp slt i32 %4074, 0
  %4076 = or i1 %4029, %3981
  %4077 = or i1 %4075, %4076
  br i1 %4077, label %4095, label %4078, !dx.controlflow.hints !47

; <label>:4078                                    ; preds = %4069
  %4079 = lshr i32 %3978, 2
  %4080 = mul i32 %85, %4079
  %4081 = lshr i32 %4026, 3
  %4082 = add i32 %81, %4081
  %4083 = add i32 %4082, %83
  %4084 = add i32 %4083, %4080
  %4085 = shl i32 %4084, 2
  %4086 = shl i32 %3978, 3
  %4087 = and i32 %4086, 24
  %4088 = and i32 %4026, 7
  %4089 = or i32 %4087, %4088
  %4090 = shl i32 1, %4089
  %4091 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %4085, i32 undef)  ; BufferLoad(srv,index,wot)
  %4092 = extractvalue %dx.types.ResRet.i32 %4091, 0
  %4093 = and i32 %4092, %4090
  %4094 = icmp ne i32 %4093, 0
  br label %4095

; <label>:4095                                    ; preds = %4078, %4069
  %4096 = phi i1 [ %4094, %4078 ], [ false, %4069 ]
  %4097 = xor i1 %4096, true
  %4098 = uitofp i1 %4097 to float
  %4099 = fadd fast float %4073, %4098
  %4100 = or i32 %3978, %4050
  %4101 = icmp slt i32 %4100, 0
  %4102 = or i1 %4053, %3981
  %4103 = or i1 %4101, %4102
  br i1 %4103, label %4121, label %4104, !dx.controlflow.hints !47

; <label>:4104                                    ; preds = %4095
  %4105 = lshr i32 %3978, 2
  %4106 = mul i32 %85, %4105
  %4107 = lshr i32 %4050, 3
  %4108 = add i32 %81, %4107
  %4109 = add i32 %4108, %83
  %4110 = add i32 %4109, %4106
  %4111 = shl i32 %4110, 2
  %4112 = shl i32 %3978, 3
  %4113 = and i32 %4112, 24
  %4114 = and i32 %4050, 7
  %4115 = or i32 %4113, %4114
  %4116 = shl i32 1, %4115
  %4117 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %4111, i32 undef)  ; BufferLoad(srv,index,wot)
  %4118 = extractvalue %dx.types.ResRet.i32 %4117, 0
  %4119 = and i32 %4118, %4116
  %4120 = icmp ne i32 %4119, 0
  br label %4121

; <label>:4121                                    ; preds = %4104, %4095
  %4122 = phi i1 [ %4120, %4104 ], [ false, %4095 ]
  %4123 = xor i1 %4122, true
  %4124 = uitofp i1 %4123 to float
  %4125 = fadd fast float %4099, %4124
  %4126 = or i32 %4002, %4026
  %4127 = icmp slt i32 %4126, 0
  %4128 = or i1 %4029, %4005
  %4129 = or i1 %4127, %4128
  br i1 %4129, label %4147, label %4130, !dx.controlflow.hints !47

; <label>:4130                                    ; preds = %4121
  %4131 = lshr i32 %4002, 2
  %4132 = mul i32 %85, %4131
  %4133 = lshr i32 %4026, 3
  %4134 = add i32 %81, %4133
  %4135 = add i32 %4134, %83
  %4136 = add i32 %4135, %4132
  %4137 = shl i32 %4136, 2
  %4138 = shl i32 %4002, 3
  %4139 = and i32 %4138, 24
  %4140 = and i32 %4026, 7
  %4141 = or i32 %4139, %4140
  %4142 = shl i32 1, %4141
  %4143 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %4137, i32 undef)  ; BufferLoad(srv,index,wot)
  %4144 = extractvalue %dx.types.ResRet.i32 %4143, 0
  %4145 = and i32 %4144, %4142
  %4146 = icmp ne i32 %4145, 0
  br label %4147

; <label>:4147                                    ; preds = %4130, %4121
  %4148 = phi i1 [ %4146, %4130 ], [ false, %4121 ]
  %4149 = xor i1 %4148, true
  %4150 = uitofp i1 %4149 to float
  %4151 = fadd fast float %4125, %4150
  %4152 = or i32 %4002, %4050
  %4153 = icmp slt i32 %4152, 0
  %4154 = or i1 %4053, %4005
  %4155 = or i1 %4153, %4154
  br i1 %4155, label %4173, label %4156, !dx.controlflow.hints !47

; <label>:4156                                    ; preds = %4147
  %4157 = lshr i32 %4002, 2
  %4158 = mul i32 %85, %4157
  %4159 = lshr i32 %4050, 3
  %4160 = add i32 %81, %4159
  %4161 = add i32 %4160, %83
  %4162 = add i32 %4161, %4158
  %4163 = shl i32 %4162, 2
  %4164 = shl i32 %4002, 3
  %4165 = and i32 %4164, 24
  %4166 = and i32 %4050, 7
  %4167 = or i32 %4165, %4166
  %4168 = shl i32 1, %4167
  %4169 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %4163, i32 undef)  ; BufferLoad(srv,index,wot)
  %4170 = extractvalue %dx.types.ResRet.i32 %4169, 0
  %4171 = and i32 %4170, %4168
  %4172 = icmp ne i32 %4171, 0
  br label %4173

; <label>:4173                                    ; preds = %4156, %4147
  %4174 = phi i1 [ %4172, %4156 ], [ false, %4147 ]
  %4175 = xor i1 %4174, true
  %4176 = uitofp i1 %4175 to float
  %4177 = fadd fast float %4151, %4176
  %4178 = fmul fast float %2523, 9.000000e+00
  %4179 = fmul fast float %2524, 9.000000e+00
  %4180 = call float @dx.op.unary.f32(i32 28, float %4178)  ; Round_pi(value)
  %4181 = call float @dx.op.unary.f32(i32 28, float %4179)  ; Round_pi(value)
  %4182 = fptosi float %4180 to i32
  %4183 = fptosi float %4181 to i32
  %4184 = sub i32 %64, %4183
  %4185 = or i32 %4184, %63
  %4186 = icmp slt i32 %4185, 0
  %4187 = icmp sge i32 %4184, %2536
  %4188 = or i1 %2537, %4187
  %4189 = or i1 %4186, %4188
  br i1 %4189, label %4203, label %4190, !dx.controlflow.hints !47

; <label>:4190                                    ; preds = %4173
  %4191 = lshr i32 %4184, 2
  %4192 = mul i32 %85, %4191
  %4193 = add i32 %89, %4192
  %4194 = shl i32 %4193, 2
  %4195 = shl i32 %4184, 3
  %4196 = and i32 %4195, 24
  %4197 = or i32 %4196, %94
  %4198 = shl i32 1, %4197
  %4199 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %4194, i32 undef)  ; BufferLoad(srv,index,wot)
  %4200 = extractvalue %dx.types.ResRet.i32 %4199, 0
  %4201 = and i32 %4200, %4198
  %4202 = icmp ne i32 %4201, 0
  br label %4203

; <label>:4203                                    ; preds = %4190, %4173
  %4204 = phi i1 [ %4202, %4190 ], [ false, %4173 ]
  %4205 = xor i1 %4204, true
  %4206 = uitofp i1 %4205 to float
  %4207 = fadd fast float %4177, %4206
  %4208 = add i32 %4183, %64
  %4209 = or i32 %4208, %63
  %4210 = icmp slt i32 %4209, 0
  %4211 = icmp sge i32 %4208, %2536
  %4212 = or i1 %2537, %4211
  %4213 = or i1 %4210, %4212
  br i1 %4213, label %4227, label %4214, !dx.controlflow.hints !47

; <label>:4214                                    ; preds = %4203
  %4215 = lshr i32 %4208, 2
  %4216 = mul i32 %85, %4215
  %4217 = add i32 %89, %4216
  %4218 = shl i32 %4217, 2
  %4219 = shl i32 %4208, 3
  %4220 = and i32 %4219, 24
  %4221 = or i32 %4220, %94
  %4222 = shl i32 1, %4221
  %4223 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %4218, i32 undef)  ; BufferLoad(srv,index,wot)
  %4224 = extractvalue %dx.types.ResRet.i32 %4223, 0
  %4225 = and i32 %4224, %4222
  %4226 = icmp ne i32 %4225, 0
  br label %4227

; <label>:4227                                    ; preds = %4214, %4203
  %4228 = phi i1 [ %4226, %4214 ], [ false, %4203 ]
  %4229 = xor i1 %4228, true
  %4230 = uitofp i1 %4229 to float
  %4231 = fadd fast float %4207, %4230
  %4232 = sub i32 %63, %4182
  %4233 = or i32 %4232, %64
  %4234 = icmp slt i32 %4233, 0
  %4235 = icmp sge i32 %4232, %2535
  %4236 = or i1 %4235, %2587
  %4237 = or i1 %4234, %4236
  br i1 %4237, label %4251, label %4238, !dx.controlflow.hints !47

; <label>:4238                                    ; preds = %4227
  %4239 = lshr i32 %4232, 3
  %4240 = add i32 %81, %4239
  %4241 = add i32 %4240, %83
  %4242 = add i32 %4241, %86
  %4243 = shl i32 %4242, 2
  %4244 = and i32 %4232, 7
  %4245 = or i32 %4244, %93
  %4246 = shl i32 1, %4245
  %4247 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %4243, i32 undef)  ; BufferLoad(srv,index,wot)
  %4248 = extractvalue %dx.types.ResRet.i32 %4247, 0
  %4249 = and i32 %4248, %4246
  %4250 = icmp ne i32 %4249, 0
  br label %4251

; <label>:4251                                    ; preds = %4238, %4227
  %4252 = phi i1 [ %4250, %4238 ], [ false, %4227 ]
  %4253 = xor i1 %4252, true
  %4254 = uitofp i1 %4253 to float
  %4255 = fadd fast float %4231, %4254
  %4256 = add i32 %4182, %63
  %4257 = or i32 %4256, %64
  %4258 = icmp slt i32 %4257, 0
  %4259 = icmp sge i32 %4256, %2535
  %4260 = or i1 %4259, %2587
  %4261 = or i1 %4258, %4260
  br i1 %4261, label %4276, label %4262, !dx.controlflow.hints !47

; <label>:4262                                    ; preds = %4251
  %4263 = lshr i32 %4256, 3
  %4264 = add i32 %81, %4263
  %4265 = add i32 %4264, %83
  %4266 = add i32 %4265, %86
  %4267 = shl i32 %4266, 2
  %4268 = and i32 %4256, 7
  %4269 = or i32 %4268, %93
  %4270 = shl i32 1, %4269
  %4271 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %4267, i32 undef)  ; BufferLoad(srv,index,wot)
  %4272 = extractvalue %dx.types.ResRet.i32 %4271, 0
  %4273 = and i32 %4272, %4270
  %4274 = icmp eq i32 %4273, 0
  %4275 = uitofp i1 %4274 to float
  br label %4276

; <label>:4276                                    ; preds = %4262, %4251
  %4277 = phi float [ %4275, %4262 ], [ 1.000000e+00, %4251 ]
  %4278 = fadd fast float %4255, %4277
  %4279 = or i32 %4184, %4232
  %4280 = icmp slt i32 %4279, 0
  %4281 = or i1 %4235, %4187
  %4282 = or i1 %4280, %4281
  br i1 %4282, label %4301, label %4283, !dx.controlflow.hints !47

; <label>:4283                                    ; preds = %4276
  %4284 = lshr i32 %4184, 2
  %4285 = mul i32 %85, %4284
  %4286 = lshr i32 %4232, 3
  %4287 = add i32 %81, %4286
  %4288 = add i32 %4287, %83
  %4289 = add i32 %4288, %4285
  %4290 = shl i32 %4289, 2
  %4291 = shl i32 %4184, 3
  %4292 = and i32 %4291, 24
  %4293 = and i32 %4232, 7
  %4294 = or i32 %4292, %4293
  %4295 = shl i32 1, %4294
  %4296 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %4290, i32 undef)  ; BufferLoad(srv,index,wot)
  %4297 = extractvalue %dx.types.ResRet.i32 %4296, 0
  %4298 = and i32 %4297, %4295
  %4299 = icmp eq i32 %4298, 0
  %4300 = uitofp i1 %4299 to float
  br label %4301

; <label>:4301                                    ; preds = %4283, %4276
  %4302 = phi float [ %4300, %4283 ], [ 1.000000e+00, %4276 ]
  %4303 = fadd fast float %4278, %4302
  %4304 = or i32 %4184, %4256
  %4305 = icmp slt i32 %4304, 0
  %4306 = or i1 %4259, %4187
  %4307 = or i1 %4305, %4306
  br i1 %4307, label %4326, label %4308, !dx.controlflow.hints !47

; <label>:4308                                    ; preds = %4301
  %4309 = lshr i32 %4184, 2
  %4310 = mul i32 %85, %4309
  %4311 = lshr i32 %4256, 3
  %4312 = add i32 %81, %4311
  %4313 = add i32 %4312, %83
  %4314 = add i32 %4313, %4310
  %4315 = shl i32 %4314, 2
  %4316 = shl i32 %4184, 3
  %4317 = and i32 %4316, 24
  %4318 = and i32 %4256, 7
  %4319 = or i32 %4317, %4318
  %4320 = shl i32 1, %4319
  %4321 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %4315, i32 undef)  ; BufferLoad(srv,index,wot)
  %4322 = extractvalue %dx.types.ResRet.i32 %4321, 0
  %4323 = and i32 %4322, %4320
  %4324 = icmp eq i32 %4323, 0
  %4325 = uitofp i1 %4324 to float
  br label %4326

; <label>:4326                                    ; preds = %4308, %4301
  %4327 = phi float [ %4325, %4308 ], [ 1.000000e+00, %4301 ]
  %4328 = fadd fast float %4303, %4327
  %4329 = or i32 %4208, %4232
  %4330 = icmp slt i32 %4329, 0
  %4331 = or i1 %4235, %4211
  %4332 = or i1 %4330, %4331
  br i1 %4332, label %4351, label %4333, !dx.controlflow.hints !47

; <label>:4333                                    ; preds = %4326
  %4334 = lshr i32 %4208, 2
  %4335 = mul i32 %85, %4334
  %4336 = lshr i32 %4232, 3
  %4337 = add i32 %81, %4336
  %4338 = add i32 %4337, %83
  %4339 = add i32 %4338, %4335
  %4340 = shl i32 %4339, 2
  %4341 = shl i32 %4208, 3
  %4342 = and i32 %4341, 24
  %4343 = and i32 %4232, 7
  %4344 = or i32 %4342, %4343
  %4345 = shl i32 1, %4344
  %4346 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %4340, i32 undef)  ; BufferLoad(srv,index,wot)
  %4347 = extractvalue %dx.types.ResRet.i32 %4346, 0
  %4348 = and i32 %4347, %4345
  %4349 = icmp eq i32 %4348, 0
  %4350 = uitofp i1 %4349 to float
  br label %4351

; <label>:4351                                    ; preds = %4333, %4326
  %4352 = phi float [ %4350, %4333 ], [ 1.000000e+00, %4326 ]
  %4353 = fadd fast float %4328, %4352
  %4354 = or i32 %4208, %4256
  %4355 = icmp slt i32 %4354, 0
  %4356 = or i1 %4259, %4211
  %4357 = or i1 %4355, %4356
  br i1 %4357, label %4376, label %4358, !dx.controlflow.hints !47

; <label>:4358                                    ; preds = %4351
  %4359 = lshr i32 %4208, 2
  %4360 = mul i32 %85, %4359
  %4361 = lshr i32 %4256, 3
  %4362 = add i32 %81, %4361
  %4363 = add i32 %4362, %83
  %4364 = add i32 %4363, %4360
  %4365 = shl i32 %4364, 2
  %4366 = shl i32 %4208, 3
  %4367 = and i32 %4366, 24
  %4368 = and i32 %4256, 7
  %4369 = or i32 %4367, %4368
  %4370 = shl i32 1, %4369
  %4371 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %4365, i32 undef)  ; BufferLoad(srv,index,wot)
  %4372 = extractvalue %dx.types.ResRet.i32 %4371, 0
  %4373 = and i32 %4372, %4370
  %4374 = icmp eq i32 %4373, 0
  %4375 = uitofp i1 %4374 to float
  br label %4376

; <label>:4376                                    ; preds = %4358, %4351
  %4377 = phi float [ %4375, %4358 ], [ 1.000000e+00, %4351 ]
  %4378 = fadd fast float %4353, %4377
  %4379 = fmul fast float %2523, 1.000000e+01
  %4380 = fmul fast float %2524, 1.000000e+01
  %4381 = call float @dx.op.unary.f32(i32 28, float %4379)  ; Round_pi(value)
  %4382 = call float @dx.op.unary.f32(i32 28, float %4380)  ; Round_pi(value)
  %4383 = fptosi float %4381 to i32
  %4384 = fptosi float %4382 to i32
  %4385 = sub i32 %64, %4384
  %4386 = or i32 %4385, %63
  %4387 = icmp slt i32 %4386, 0
  %4388 = icmp sge i32 %4385, %2536
  %4389 = or i1 %2537, %4388
  %4390 = or i1 %4387, %4389
  br i1 %4390, label %4405, label %4391, !dx.controlflow.hints !47

; <label>:4391                                    ; preds = %4376
  %4392 = lshr i32 %4385, 2
  %4393 = mul i32 %85, %4392
  %4394 = add i32 %89, %4393
  %4395 = shl i32 %4394, 2
  %4396 = shl i32 %4385, 3
  %4397 = and i32 %4396, 24
  %4398 = or i32 %4397, %94
  %4399 = shl i32 1, %4398
  %4400 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %4395, i32 undef)  ; BufferLoad(srv,index,wot)
  %4401 = extractvalue %dx.types.ResRet.i32 %4400, 0
  %4402 = and i32 %4401, %4399
  %4403 = icmp eq i32 %4402, 0
  %4404 = uitofp i1 %4403 to float
  br label %4405

; <label>:4405                                    ; preds = %4391, %4376
  %4406 = phi float [ %4404, %4391 ], [ 1.000000e+00, %4376 ]
  %4407 = fadd fast float %4378, %4406
  %4408 = add i32 %4384, %64
  %4409 = or i32 %4408, %63
  %4410 = icmp slt i32 %4409, 0
  %4411 = icmp sge i32 %4408, %2536
  %4412 = or i1 %2537, %4411
  %4413 = or i1 %4410, %4412
  br i1 %4413, label %4428, label %4414, !dx.controlflow.hints !47

; <label>:4414                                    ; preds = %4405
  %4415 = lshr i32 %4408, 2
  %4416 = mul i32 %85, %4415
  %4417 = add i32 %89, %4416
  %4418 = shl i32 %4417, 2
  %4419 = shl i32 %4408, 3
  %4420 = and i32 %4419, 24
  %4421 = or i32 %4420, %94
  %4422 = shl i32 1, %4421
  %4423 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %4418, i32 undef)  ; BufferLoad(srv,index,wot)
  %4424 = extractvalue %dx.types.ResRet.i32 %4423, 0
  %4425 = and i32 %4424, %4422
  %4426 = icmp eq i32 %4425, 0
  %4427 = uitofp i1 %4426 to float
  br label %4428

; <label>:4428                                    ; preds = %4414, %4405
  %4429 = phi float [ %4427, %4414 ], [ 1.000000e+00, %4405 ]
  %4430 = fadd fast float %4407, %4429
  %4431 = sub i32 %63, %4383
  %4432 = or i32 %4431, %64
  %4433 = icmp slt i32 %4432, 0
  %4434 = icmp sge i32 %4431, %2535
  %4435 = or i1 %4434, %2587
  %4436 = or i1 %4433, %4435
  br i1 %4436, label %4451, label %4437, !dx.controlflow.hints !47

; <label>:4437                                    ; preds = %4428
  %4438 = lshr i32 %4431, 3
  %4439 = add i32 %81, %4438
  %4440 = add i32 %4439, %83
  %4441 = add i32 %4440, %86
  %4442 = shl i32 %4441, 2
  %4443 = and i32 %4431, 7
  %4444 = or i32 %4443, %93
  %4445 = shl i32 1, %4444
  %4446 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %4442, i32 undef)  ; BufferLoad(srv,index,wot)
  %4447 = extractvalue %dx.types.ResRet.i32 %4446, 0
  %4448 = and i32 %4447, %4445
  %4449 = icmp eq i32 %4448, 0
  %4450 = uitofp i1 %4449 to float
  br label %4451

; <label>:4451                                    ; preds = %4437, %4428
  %4452 = phi float [ %4450, %4437 ], [ 1.000000e+00, %4428 ]
  %4453 = fadd fast float %4430, %4452
  %4454 = add i32 %4383, %63
  %4455 = or i32 %4454, %64
  %4456 = icmp slt i32 %4455, 0
  %4457 = icmp sge i32 %4454, %2535
  %4458 = or i1 %4457, %2587
  %4459 = or i1 %4456, %4458
  br i1 %4459, label %4474, label %4460, !dx.controlflow.hints !47

; <label>:4460                                    ; preds = %4451
  %4461 = lshr i32 %4454, 3
  %4462 = add i32 %81, %4461
  %4463 = add i32 %4462, %83
  %4464 = add i32 %4463, %86
  %4465 = shl i32 %4464, 2
  %4466 = and i32 %4454, 7
  %4467 = or i32 %4466, %93
  %4468 = shl i32 1, %4467
  %4469 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %4465, i32 undef)  ; BufferLoad(srv,index,wot)
  %4470 = extractvalue %dx.types.ResRet.i32 %4469, 0
  %4471 = and i32 %4470, %4468
  %4472 = icmp eq i32 %4471, 0
  %4473 = uitofp i1 %4472 to float
  br label %4474

; <label>:4474                                    ; preds = %4460, %4451
  %4475 = phi float [ %4473, %4460 ], [ 1.000000e+00, %4451 ]
  %4476 = fadd fast float %4453, %4475
  %4477 = or i32 %4385, %4431
  %4478 = icmp slt i32 %4477, 0
  %4479 = or i1 %4434, %4388
  %4480 = or i1 %4478, %4479
  br i1 %4480, label %4499, label %4481, !dx.controlflow.hints !47

; <label>:4481                                    ; preds = %4474
  %4482 = lshr i32 %4385, 2
  %4483 = mul i32 %85, %4482
  %4484 = lshr i32 %4431, 3
  %4485 = add i32 %81, %4484
  %4486 = add i32 %4485, %83
  %4487 = add i32 %4486, %4483
  %4488 = shl i32 %4487, 2
  %4489 = shl i32 %4385, 3
  %4490 = and i32 %4489, 24
  %4491 = and i32 %4431, 7
  %4492 = or i32 %4490, %4491
  %4493 = shl i32 1, %4492
  %4494 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %4488, i32 undef)  ; BufferLoad(srv,index,wot)
  %4495 = extractvalue %dx.types.ResRet.i32 %4494, 0
  %4496 = and i32 %4495, %4493
  %4497 = icmp eq i32 %4496, 0
  %4498 = uitofp i1 %4497 to float
  br label %4499

; <label>:4499                                    ; preds = %4481, %4474
  %4500 = phi float [ %4498, %4481 ], [ 1.000000e+00, %4474 ]
  %4501 = fadd fast float %4476, %4500
  %4502 = or i32 %4385, %4454
  %4503 = icmp slt i32 %4502, 0
  %4504 = or i1 %4457, %4388
  %4505 = or i1 %4503, %4504
  br i1 %4505, label %4524, label %4506, !dx.controlflow.hints !47

; <label>:4506                                    ; preds = %4499
  %4507 = lshr i32 %4385, 2
  %4508 = mul i32 %85, %4507
  %4509 = lshr i32 %4454, 3
  %4510 = add i32 %81, %4509
  %4511 = add i32 %4510, %83
  %4512 = add i32 %4511, %4508
  %4513 = shl i32 %4512, 2
  %4514 = shl i32 %4385, 3
  %4515 = and i32 %4514, 24
  %4516 = and i32 %4454, 7
  %4517 = or i32 %4515, %4516
  %4518 = shl i32 1, %4517
  %4519 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %4513, i32 undef)  ; BufferLoad(srv,index,wot)
  %4520 = extractvalue %dx.types.ResRet.i32 %4519, 0
  %4521 = and i32 %4520, %4518
  %4522 = icmp eq i32 %4521, 0
  %4523 = uitofp i1 %4522 to float
  br label %4524

; <label>:4524                                    ; preds = %4506, %4499
  %4525 = phi float [ %4523, %4506 ], [ 1.000000e+00, %4499 ]
  %4526 = fadd fast float %4501, %4525
  %4527 = or i32 %4408, %4431
  %4528 = icmp slt i32 %4527, 0
  %4529 = or i1 %4434, %4411
  %4530 = or i1 %4528, %4529
  br i1 %4530, label %4549, label %4531, !dx.controlflow.hints !47

; <label>:4531                                    ; preds = %4524
  %4532 = lshr i32 %4408, 2
  %4533 = mul i32 %85, %4532
  %4534 = lshr i32 %4431, 3
  %4535 = add i32 %81, %4534
  %4536 = add i32 %4535, %83
  %4537 = add i32 %4536, %4533
  %4538 = shl i32 %4537, 2
  %4539 = shl i32 %4408, 3
  %4540 = and i32 %4539, 24
  %4541 = and i32 %4431, 7
  %4542 = or i32 %4540, %4541
  %4543 = shl i32 1, %4542
  %4544 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %4538, i32 undef)  ; BufferLoad(srv,index,wot)
  %4545 = extractvalue %dx.types.ResRet.i32 %4544, 0
  %4546 = and i32 %4545, %4543
  %4547 = icmp eq i32 %4546, 0
  %4548 = uitofp i1 %4547 to float
  br label %4549

; <label>:4549                                    ; preds = %4531, %4524
  %4550 = phi float [ %4548, %4531 ], [ 1.000000e+00, %4524 ]
  %4551 = fadd fast float %4526, %4550
  %4552 = or i32 %4408, %4454
  %4553 = icmp slt i32 %4552, 0
  %4554 = or i1 %4457, %4411
  %4555 = or i1 %4553, %4554
  br i1 %4555, label %4574, label %4556, !dx.controlflow.hints !47

; <label>:4556                                    ; preds = %4549
  %4557 = lshr i32 %4408, 2
  %4558 = mul i32 %85, %4557
  %4559 = lshr i32 %4454, 3
  %4560 = add i32 %81, %4559
  %4561 = add i32 %4560, %83
  %4562 = add i32 %4561, %4558
  %4563 = shl i32 %4562, 2
  %4564 = shl i32 %4408, 3
  %4565 = and i32 %4564, 24
  %4566 = and i32 %4454, 7
  %4567 = or i32 %4565, %4566
  %4568 = shl i32 1, %4567
  %4569 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %4563, i32 undef)  ; BufferLoad(srv,index,wot)
  %4570 = extractvalue %dx.types.ResRet.i32 %4569, 0
  %4571 = and i32 %4570, %4568
  %4572 = icmp eq i32 %4571, 0
  %4573 = uitofp i1 %4572 to float
  br label %4574

; <label>:4574                                    ; preds = %4556, %4549
  %4575 = phi float [ %4573, %4556 ], [ 1.000000e+00, %4549 ]
  %4576 = fadd fast float %4551, %4575
  %4577 = fmul fast float %2478, 1.500000e+00
  %4578 = fsub fast float 3.000000e+00, %4577
  %4579 = fdiv fast float 0x3FB99999A0000000, %4578
  %4580 = fmul fast float %2478, 2.000000e+00
  %4581 = fsub fast float 8.000000e+00, %4576
  %4582 = fsub fast float %4581, %4580
  %4583 = fmul fast float %4582, 4.000000e+00
  %4584 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4583)  ; FMax(a,b)
  %4585 = fadd fast float %4584, %4576
  %4586 = fmul fast float %4585, %4579
  %4587 = fadd fast float %2478, 1.500000e+00
  %4588 = fsub fast float 1.000000e+00, %4586
  %4589 = call float @dx.op.unary.f32(i32 7, float %4588)  ; Saturate(value)
  %4590 = call float @dx.op.unary.f32(i32 23, float %4589)  ; Log(value)
  %4591 = fmul fast float %4590, %4587
  %4592 = call float @dx.op.unary.f32(i32 21, float %4591)  ; Exp(value)
  %4593 = fmul fast float %2321, %2313
  %4594 = fmul fast float %2322, %2314
  %4595 = fmul fast float %2323, %2315
  %4596 = call float @dx.op.unary.f32(i32 23, float %2456)  ; Log(value)
  %4597 = fmul fast float %4596, 2.500000e-01
  %4598 = call float @dx.op.unary.f32(i32 21, float %4597)  ; Exp(value)
  %4599 = fmul fast float %2316, %2272
  %4600 = fmul fast float %4599, %2324
  %4601 = fmul fast float %4600, %4592
  %4602 = fmul fast float %4601, %4598
  br label %5168

; <label>:4603                                    ; preds = %613
  %4604 = and i32 %628, 511
  %4605 = mul nuw nsw i32 %4604, 20
  %4606 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %4605, i32 undef)  ; BufferLoad(srv,index,wot)
  %4607 = extractvalue %dx.types.ResRet.i32 %4606, 0
  %4608 = lshr i32 %4607, 24
  %4609 = uitofp i32 %4608 to float
  %4610 = add i32 %64, -1
  %4611 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %12, i32 0, i32 %63, i32 %4610, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4612 = extractvalue %dx.types.ResRet.i32 %4611, 0
  %4613 = lshr i32 %4612, 8
  %4614 = and i32 %4612, 255
  %4615 = and i32 %4613, 255
  %4616 = uitofp i32 %4614 to float
  %4617 = uitofp i32 %4615 to float
  %4618 = fmul fast float %4616, 0x3F80101020000000
  %4619 = fmul fast float %4617, 0x3F80101020000000
  %4620 = fadd fast float %4618, -1.000000e+00
  %4621 = fadd fast float %4619, -1.000000e+00
  %4622 = call float @dx.op.unary.f32(i32 6, float %4620)  ; FAbs(value)
  %4623 = fsub fast float 1.000000e+00, %4622
  %4624 = call float @dx.op.unary.f32(i32 6, float %4621)  ; FAbs(value)
  %4625 = fsub fast float %4623, %4624
  %4626 = fsub fast float -0.000000e+00, %4625
  %4627 = call float @dx.op.binary.f32(i32 35, float %4626, float 0.000000e+00)  ; FMax(a,b)
  %4628 = fcmp fast ogt float %4620, 0.000000e+00
  %4629 = fsub fast float -0.000000e+00, %4627
  %4630 = select i1 %4628, float %4629, float %4627
  %4631 = fadd fast float %4630, %4620
  %4632 = fcmp fast ogt float %4621, 0.000000e+00
  %4633 = select i1 %4632, float %4629, float %4627
  %4634 = fadd fast float %4633, %4621
  %4635 = call float @dx.op.dot3.f32(i32 55, float %4631, float %4634, float %4625, float %4631, float %4634, float %4625)  ; Dot3(ax,ay,az,bx,by,bz)
  %4636 = call float @dx.op.unary.f32(i32 25, float %4635)  ; Rsqrt(value)
  %4637 = fmul fast float %4631, %4636
  %4638 = fmul fast float %4634, %4636
  %4639 = fmul fast float %4636, %4625
  %4640 = add i32 %64, 1
  %4641 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %12, i32 0, i32 %63, i32 %4640, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4642 = extractvalue %dx.types.ResRet.i32 %4641, 0
  %4643 = lshr i32 %4642, 8
  %4644 = and i32 %4642, 255
  %4645 = and i32 %4643, 255
  %4646 = uitofp i32 %4644 to float
  %4647 = uitofp i32 %4645 to float
  %4648 = fmul fast float %4646, 0x3F80101020000000
  %4649 = fmul fast float %4647, 0x3F80101020000000
  %4650 = fadd fast float %4648, -1.000000e+00
  %4651 = fadd fast float %4649, -1.000000e+00
  %4652 = call float @dx.op.unary.f32(i32 6, float %4650)  ; FAbs(value)
  %4653 = fsub fast float 1.000000e+00, %4652
  %4654 = call float @dx.op.unary.f32(i32 6, float %4651)  ; FAbs(value)
  %4655 = fsub fast float %4653, %4654
  %4656 = fsub fast float -0.000000e+00, %4655
  %4657 = call float @dx.op.binary.f32(i32 35, float %4656, float 0.000000e+00)  ; FMax(a,b)
  %4658 = fcmp fast ogt float %4650, 0.000000e+00
  %4659 = fsub fast float -0.000000e+00, %4657
  %4660 = select i1 %4658, float %4659, float %4657
  %4661 = fadd fast float %4660, %4650
  %4662 = fcmp fast ogt float %4651, 0.000000e+00
  %4663 = select i1 %4662, float %4659, float %4657
  %4664 = fadd fast float %4663, %4651
  %4665 = call float @dx.op.dot3.f32(i32 55, float %4661, float %4664, float %4655, float %4661, float %4664, float %4655)  ; Dot3(ax,ay,az,bx,by,bz)
  %4666 = call float @dx.op.unary.f32(i32 25, float %4665)  ; Rsqrt(value)
  %4667 = fmul fast float %4661, %4666
  %4668 = fmul fast float %4664, %4666
  %4669 = fmul fast float %4666, %4655
  %4670 = add i32 %63, -1
  %4671 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %12, i32 0, i32 %4670, i32 %64, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4672 = extractvalue %dx.types.ResRet.i32 %4671, 0
  %4673 = lshr i32 %4672, 8
  %4674 = and i32 %4672, 255
  %4675 = and i32 %4673, 255
  %4676 = uitofp i32 %4674 to float
  %4677 = uitofp i32 %4675 to float
  %4678 = fmul fast float %4676, 0x3F80101020000000
  %4679 = fmul fast float %4677, 0x3F80101020000000
  %4680 = fadd fast float %4678, -1.000000e+00
  %4681 = fadd fast float %4679, -1.000000e+00
  %4682 = call float @dx.op.unary.f32(i32 6, float %4680)  ; FAbs(value)
  %4683 = fsub fast float 1.000000e+00, %4682
  %4684 = call float @dx.op.unary.f32(i32 6, float %4681)  ; FAbs(value)
  %4685 = fsub fast float %4683, %4684
  %4686 = fsub fast float -0.000000e+00, %4685
  %4687 = call float @dx.op.binary.f32(i32 35, float %4686, float 0.000000e+00)  ; FMax(a,b)
  %4688 = fcmp fast ogt float %4680, 0.000000e+00
  %4689 = fsub fast float -0.000000e+00, %4687
  %4690 = select i1 %4688, float %4689, float %4687
  %4691 = fadd fast float %4690, %4680
  %4692 = fcmp fast ogt float %4681, 0.000000e+00
  %4693 = select i1 %4692, float %4689, float %4687
  %4694 = fadd fast float %4693, %4681
  %4695 = call float @dx.op.dot3.f32(i32 55, float %4691, float %4694, float %4685, float %4691, float %4694, float %4685)  ; Dot3(ax,ay,az,bx,by,bz)
  %4696 = call float @dx.op.unary.f32(i32 25, float %4695)  ; Rsqrt(value)
  %4697 = fmul fast float %4691, %4696
  %4698 = fmul fast float %4694, %4696
  %4699 = fmul fast float %4696, %4685
  %4700 = add i32 %63, 1
  %4701 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %12, i32 0, i32 %4700, i32 %64, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4702 = extractvalue %dx.types.ResRet.i32 %4701, 0
  %4703 = lshr i32 %4702, 8
  %4704 = and i32 %4702, 255
  %4705 = and i32 %4703, 255
  %4706 = uitofp i32 %4704 to float
  %4707 = uitofp i32 %4705 to float
  %4708 = fmul fast float %4706, 0x3F80101020000000
  %4709 = fmul fast float %4707, 0x3F80101020000000
  %4710 = fadd fast float %4708, -1.000000e+00
  %4711 = fadd fast float %4709, -1.000000e+00
  %4712 = call float @dx.op.unary.f32(i32 6, float %4710)  ; FAbs(value)
  %4713 = fsub fast float 1.000000e+00, %4712
  %4714 = call float @dx.op.unary.f32(i32 6, float %4711)  ; FAbs(value)
  %4715 = fsub fast float %4713, %4714
  %4716 = fsub fast float -0.000000e+00, %4715
  %4717 = call float @dx.op.binary.f32(i32 35, float %4716, float 0.000000e+00)  ; FMax(a,b)
  %4718 = fcmp fast ogt float %4710, 0.000000e+00
  %4719 = fsub fast float -0.000000e+00, %4717
  %4720 = select i1 %4718, float %4719, float %4717
  %4721 = fadd fast float %4720, %4710
  %4722 = fcmp fast ogt float %4711, 0.000000e+00
  %4723 = select i1 %4722, float %4719, float %4717
  %4724 = fadd fast float %4723, %4711
  %4725 = call float @dx.op.dot3.f32(i32 55, float %4721, float %4724, float %4715, float %4721, float %4724, float %4715)  ; Dot3(ax,ay,az,bx,by,bz)
  %4726 = call float @dx.op.unary.f32(i32 25, float %4725)  ; Rsqrt(value)
  %4727 = fmul fast float %4721, %4726
  %4728 = fmul fast float %4724, %4726
  %4729 = fmul fast float %4726, %4715
  %4730 = call float @dx.op.dot3.f32(i32 55, float %4637, float %4638, float %4639, float %4667, float %4668, float %4669)  ; Dot3(ax,ay,az,bx,by,bz)
  %4731 = call float @dx.op.binary.f32(i32 36, float 1.000000e+00, float %4730)  ; FMin(a,b)
  %4732 = call float @dx.op.dot3.f32(i32 55, float %4637, float %4638, float %4639, float %4697, float %4698, float %4699)  ; Dot3(ax,ay,az,bx,by,bz)
  %4733 = call float @dx.op.binary.f32(i32 36, float %4731, float %4732)  ; FMin(a,b)
  %4734 = call float @dx.op.dot3.f32(i32 55, float %4637, float %4638, float %4639, float %4727, float %4728, float %4729)  ; Dot3(ax,ay,az,bx,by,bz)
  %4735 = call float @dx.op.binary.f32(i32 36, float %4733, float %4734)  ; FMin(a,b)
  %4736 = call float @dx.op.dot3.f32(i32 55, float %4667, float %4668, float %4669, float %4697, float %4698, float %4699)  ; Dot3(ax,ay,az,bx,by,bz)
  %4737 = call float @dx.op.binary.f32(i32 36, float %4735, float %4736)  ; FMin(a,b)
  %4738 = call float @dx.op.dot3.f32(i32 55, float %4667, float %4668, float %4669, float %4727, float %4728, float %4729)  ; Dot3(ax,ay,az,bx,by,bz)
  %4739 = call float @dx.op.binary.f32(i32 36, float %4737, float %4738)  ; FMin(a,b)
  %4740 = call float @dx.op.dot3.f32(i32 55, float %4697, float %4698, float %4699, float %4727, float %4728, float %4729)  ; Dot3(ax,ay,az,bx,by,bz)
  %4741 = call float @dx.op.binary.f32(i32 36, float %4739, float %4740)  ; FMin(a,b)
  %4742 = call float @dx.op.unary.f32(i32 7, float %4741)  ; Saturate(value)
  %4743 = fsub fast float 1.000000e+00, %4742
  %4744 = add nuw nsw i32 %4605, 12
  %4745 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %4744, i32 undef)  ; BufferLoad(srv,index,wot)
  %4746 = extractvalue %dx.types.ResRet.i32 %4745, 0
  %4747 = lshr i32 %4746, 16
  %4748 = uitofp i32 %4747 to float
  %4749 = fmul fast float %4748, 0x3EF0002000000000
  %4750 = add nuw nsw i32 %4605, 8
  %4751 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %4750, i32 undef)  ; BufferLoad(srv,index,wot)
  %4752 = extractvalue %dx.types.ResRet.i32 %4751, 0
  %4753 = lshr i32 %4752, 16
  %4754 = uitofp i32 %4753 to float
  %4755 = fmul fast float %4754, 0x3EF0002000000000
  %4756 = fsub fast float %45, %4755
  %4757 = fdiv fast float %4756, %4749
  %4758 = fmul fast float %68, %44
  %4759 = fmul fast float %4758, 4.000000e+02
  %4760 = fmul fast float %45, 4.000000e+02
  %4761 = call float @dx.op.unary.f32(i32 22, float %4759)  ; Frc(value)
  %4762 = call float @dx.op.unary.f32(i32 22, float %4760)  ; Frc(value)
  %4763 = fadd fast float %4761, -5.000000e-01
  %4764 = fadd fast float %4762, -5.000000e-01
  %4765 = fmul fast float %4763, 2.000000e+00
  %4766 = fmul fast float %4764, 2.000000e+00
  %4767 = call float @dx.op.dot2.f32(i32 54, float %4765, float %4766, float %4765, float %4766)  ; Dot2(ax,ay,bx,by)
  %4768 = call float @dx.op.unary.f32(i32 24, float %4767)  ; Sqrt(value)
  %4769 = fmul fast float %4768, 0x4004C77B00000000
  %4770 = fsub fast float 2.000000e+00, %4769
  %4771 = call float @dx.op.unary.f32(i32 7, float %4770)  ; Saturate(value)
  %4772 = fmul fast float %4609, 0x3F924C82A0000000
  %4773 = fmul fast float %4609, 0x3F78278DA0000000
  %4774 = fsub fast float 0x400E470B00000000, %4772
  %4775 = fadd fast float %4774, %4757
  %4776 = fmul fast float %4775, 1.000000e+01
  %4777 = call float @dx.op.unary.f32(i32 7, float %4776)  ; Saturate(value)
  %4778 = fsub fast float 0x3FE286BC80000000, %4773
  %4779 = fadd fast float %4778, %4757
  %4780 = fmul fast float %4779, 1.250000e+00
  %4781 = call float @dx.op.unary.f32(i32 7, float %4780)  ; Saturate(value)
  %4782 = fsub fast float 1.000000e+00, %4781
  %4783 = fmul fast float %4782, %4777
  %4784 = fmul fast float %4609, 0x3F8E317100000000
  %4785 = fsub fast float 0x40079435C0000000, %4784
  %4786 = fadd fast float %4785, %4757
  %4787 = fmul fast float %4786, 0x401AAAAAA0000000
  %4788 = call float @dx.op.unary.f32(i32 7, float %4787)  ; Saturate(value)
  %4789 = fsub fast float 1.000000e+00, %4788
  %4790 = fmul fast float %4789, %4777
  %4791 = fmul fast float %4758, 4.500000e+01
  %4792 = fmul fast float %45, 4.500000e+01
  %4793 = fadd fast float %4792, -5.000000e-01
  %4794 = fmul fast float %4758, 0x4039FB1300000000
  %4795 = fadd fast float %4794, 0xBFE279A720000000
  %4796 = call float @dx.op.unary.f32(i32 27, float %4794)  ; Round_ni(value)
  %4797 = call float @dx.op.unary.f32(i32 27, float %4792)  ; Round_ni(value)
  %4798 = call float @dx.op.unary.f32(i32 27, float %4795)  ; Round_ni(value)
  %4799 = call float @dx.op.unary.f32(i32 27, float %4793)  ; Round_ni(value)
  %4800 = fadd fast float %4796, 5.000000e-01
  %4801 = fadd fast float %4797, 5.000000e-01
  %4802 = fmul fast float %4800, 0x3FFBB67B20000000
  %4803 = fsub fast float %4791, %4802
  %4804 = fsub fast float %4792, %4801
  %4805 = fadd fast float %4798, 1.000000e+00
  %4806 = fmul fast float %4805, 0x3FFBB67B20000000
  %4807 = fsub fast float %4791, %4806
  %4808 = fadd fast float %4792, -1.000000e+00
  %4809 = fsub fast float %4808, %4799
  %4810 = call float @dx.op.dot2.f32(i32 54, float %4803, float %4804, float %4803, float %4804)  ; Dot2(ax,ay,bx,by)
  %4811 = call float @dx.op.dot2.f32(i32 54, float %4807, float %4809, float %4807, float %4809)  ; Dot2(ax,ay,bx,by)
  %4812 = fcmp fast olt float %4810, %4811
  %4813 = fadd fast float %4799, 1.000000e+00
  %4814 = select i1 %4812, float %4803, float %4807
  %4815 = select i1 %4812, float %4804, float %4809
  %4816 = select i1 %4812, float %4800, float %4805
  %4817 = select i1 %4812, float %4801, float %4813
  %4818 = call float @dx.op.unary.f32(i32 6, float %4814)  ; FAbs(value)
  %4819 = call float @dx.op.unary.f32(i32 6, float %4815)  ; FAbs(value)
  %4820 = call float @dx.op.dot2.f32(i32 54, float %4818, float %4819, float 0x3FEBB67B20000000, float 5.000000e-01)  ; Dot2(ax,ay,bx,by)
  %4821 = call float @dx.op.binary.f32(i32 35, float %4820, float %4819)  ; FMax(a,b)
  %4822 = fmul fast float %4816, 0x3F96C16C20000000
  %4823 = fmul fast float %4817, 0x3F96C16C20000000
  %4824 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %4825 = extractvalue %dx.types.CBufRet.f32 %4824, 3
  %4826 = call float @dx.op.unary.f32(i32 22, float %4825)  ; Frc(value)
  %4827 = fmul fast float %4826, 0x3FC99999A0000000
  %4828 = fadd fast float %4827, %4823
  %4829 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %14, float %4822, float %4828, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4830 = extractvalue %dx.types.ResRet.f32 %4829, 0
  %4831 = fsub fast float 0x3FEEB851E0000000, %4783
  %4832 = fmul fast float %4831, 0x3FF0AAAAC0000000
  %4833 = call float @dx.op.unary.f32(i32 7, float %4832)  ; Saturate(value)
  %4834 = fmul fast float %4833, 2.000000e+00
  %4835 = fsub fast float 3.000000e+00, %4834
  %4836 = fmul fast float %4833, %4833
  %4837 = fmul fast float %4836, %4835
  %4838 = fadd fast float %4821, 0xBFE0A3D700000000
  %4839 = fadd fast float %4838, %4837
  %4840 = fmul fast float %4839, -2.000000e+01
  %4841 = call float @dx.op.unary.f32(i32 7, float %4840)  ; Saturate(value)
  %4842 = fmul fast float %4841, 2.000000e+00
  %4843 = fsub fast float 3.000000e+00, %4842
  %4844 = fmul fast float %4838, -2.000000e+01
  %4845 = call float @dx.op.unary.f32(i32 7, float %4844)  ; Saturate(value)
  %4846 = fmul fast float %4845, 2.000000e+00
  %4847 = fsub fast float 3.000000e+00, %4846
  %4848 = fmul fast float %4845, %4845
  %4849 = fmul fast float %4848, %4847
  %4850 = fsub fast float 1.000000e+00, %4849
  %4851 = fmul fast float %4850, 0x3FE51EB860000000
  %4852 = fmul fast float %4821, 0x3FC99999A0000000
  %4853 = fsub fast float 1.000000e+00, %4821
  %4854 = fmul fast float %4841, %4841
  %4855 = fmul fast float %4854, %4821
  %4856 = fmul fast float %4855, %4843
  %4857 = fadd fast float %4856, %4853
  %4858 = fmul fast float %4857, %4830
  %4859 = fsub fast float 0x3FEEB851E0000000, %4790
  %4860 = fmul fast float %4859, 0x3FF0AAAAC0000000
  %4861 = call float @dx.op.unary.f32(i32 7, float %4860)  ; Saturate(value)
  %4862 = fmul fast float %4861, 2.000000e+00
  %4863 = fsub fast float 3.000000e+00, %4862
  %4864 = fmul fast float %4861, %4861
  %4865 = fmul fast float %4864, %4863
  %4866 = fadd fast float %4838, %4865
  %4867 = fmul fast float %4866, -2.000000e+01
  %4868 = call float @dx.op.unary.f32(i32 7, float %4867)  ; Saturate(value)
  %4869 = fmul fast float %4868, 2.000000e+00
  %4870 = fsub fast float 3.000000e+00, %4869
  %4871 = fmul fast float %4868, %4868
  %4872 = fmul fast float %4871, %4821
  %4873 = fmul fast float %4872, %4870
  %4874 = fadd fast float %4873, %4853
  %4875 = fmul fast float %4874, %4830
  %4876 = fadd fast float %4851, %4852
  %4877 = fadd fast float %4876, %4875
  %4878 = fmul fast float %4790, 2.000000e+00
  %4879 = fmul fast float %4878, %4877
  %4880 = fadd fast float %4876, %4858
  %4881 = fmul fast float %4880, %4783
  %4882 = fadd fast float %4881, %4879
  %4883 = fmul fast float %4771, 0x3FD99999A0000000
  %4884 = fmul fast float %4743, 0x3FE3333340000000
  %4885 = fadd fast float %4884, 0x3FE3333340000000
  %4886 = fadd fast float %4885, %4883
  %4887 = fmul fast float %4882, %4886
  %4888 = call float @dx.op.unary.f32(i32 23, float %4887)  ; Log(value)
  %4889 = fmul fast float %4888, 3.000000e+00
  %4890 = call float @dx.op.unary.f32(i32 21, float %4889)  ; Exp(value)
  %4891 = fmul fast float %4890, 0x3FF112D7C0000000
  %4892 = fmul fast float %4890, 0xBFF8A1CB00000000
  %4893 = fmul fast float %4892, %4891
  %4894 = call float @dx.op.unary.f32(i32 21, float %4893)  ; Exp(value)
  %4895 = fmul fast float %4890, 0x3FEDDA5080000000
  %4896 = fmul fast float %4890, 0xBFB16E5400000000
  %4897 = fmul fast float %4890, 0xBFEBAC8600000000
  %4898 = fmul fast float %4895, %4894
  %4899 = fmul fast float %4896, %4894
  %4900 = fmul fast float %4897, %4894
  %4901 = fadd fast float %4898, %4891
  %4902 = fadd fast float %4899, %4891
  %4903 = fadd fast float %4900, %4891
  %4904 = call float @dx.op.unary.f32(i32 20, float %4901)  ; Htan(value)
  %4905 = call float @dx.op.unary.f32(i32 20, float %4902)  ; Htan(value)
  %4906 = call float @dx.op.unary.f32(i32 20, float %4903)  ; Htan(value)
  %4907 = fmul fast float %4904, 5.000000e+00
  %4908 = fmul fast float %4905, 5.000000e+00
  %4909 = fmul fast float %4906, 5.000000e+00
  %4910 = call float @dx.op.unary.f32(i32 7, float %4907)  ; Saturate(value)
  %4911 = call float @dx.op.unary.f32(i32 7, float %4908)  ; Saturate(value)
  %4912 = call float @dx.op.unary.f32(i32 7, float %4909)  ; Saturate(value)
  %4913 = fmul fast float %4905, 3.000000e+00
  %4914 = call float @dx.op.unary.f32(i32 7, float %4913)  ; Saturate(value)
  br label %5168

; <label>:4915                                    ; preds = %613
  br i1 %108, label %4916, label %5168, !dx.controlflow.hints !55

; <label>:4916                                    ; preds = %4915
  %4917 = and i32 %628, 511
  %4918 = mul nuw nsw i32 %4917, 20
  %4919 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %4918, i32 undef)  ; BufferLoad(srv,index,wot)
  %4920 = extractvalue %dx.types.ResRet.i32 %4919, 0
  %4921 = and i32 %4920, 255
  %4922 = uitofp i32 %4921 to float
  %4923 = lshr i32 %4920, 8
  %4924 = and i32 %4923, 255
  %4925 = uitofp i32 %4924 to float
  %4926 = lshr i32 %4920, 16
  %4927 = and i32 %4926, 255
  %4928 = uitofp i32 %4927 to float
  %4929 = lshr i32 %4920, 24
  %4930 = uitofp i32 %4929 to float
  %4931 = fmul fast float %4930, 0x3F70101020000000
  %4932 = fsub fast float 1.000000e+00, %4931
  %4933 = add nuw nsw i32 %4918, 12
  %4934 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %4933, i32 undef)  ; BufferLoad(srv,index,wot)
  %4935 = extractvalue %dx.types.ResRet.i32 %4934, 0
  %4936 = and i32 %4935, 65535
  %4937 = uitofp i32 %4936 to float
  %4938 = fmul fast float %4937, 0x3EF0002000000000
  %4939 = lshr i32 %4935, 16
  %4940 = uitofp i32 %4939 to float
  %4941 = fmul fast float %4940, 0x3EF0002000000000
  %4942 = add nuw nsw i32 %4918, 8
  %4943 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %4942, i32 undef)  ; BufferLoad(srv,index,wot)
  %4944 = extractvalue %dx.types.ResRet.i32 %4943, 0
  %4945 = and i32 %4944, 65535
  %4946 = uitofp i32 %4945 to float
  %4947 = fmul fast float %4946, 0x3EF0002000000000
  %4948 = lshr i32 %4944, 16
  %4949 = uitofp i32 %4948 to float
  %4950 = fmul fast float %4949, 0x3EF0002000000000
  %4951 = fsub fast float %44, %4947
  %4952 = fdiv fast float %4951, %4938
  %4953 = fsub fast float %45, %4950
  %4954 = fdiv fast float %4953, %4941
  %4955 = add nuw nsw i32 %4918, 16
  %4956 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %4955, i32 undef)  ; BufferLoad(srv,index,wot)
  %4957 = extractvalue %dx.types.ResRet.f32 %4956, 0
  %4958 = fdiv fast float 2.400000e+02, %4957
  %4959 = call float @dx.op.unary.f32(i32 7, float %4958)  ; Saturate(value)
  %4960 = fmul fast float %4959, 4.000000e+01
  %4961 = fptoui float %4960 to i32
  %4962 = uitofp i32 %63 to float
  %4963 = uitofp i32 %64 to float
  %4964 = fptoui float %4962 to i32
  %4965 = fptoui float %4963 to i32
  %4966 = lshr i32 %4965, 2
  %4967 = mul i32 %85, %4966
  %4968 = lshr i32 %4964, 3
  %4969 = add i32 %81, %4968
  %4970 = add i32 %4969, %83
  %4971 = add i32 %4970, %4967
  %4972 = shl i32 %4971, 2
  %4973 = shl i32 %4965, 3
  %4974 = and i32 %4973, 24
  %4975 = and i32 %4964, 7
  %4976 = or i32 %4974, %4975
  %4977 = shl i32 1, %4976
  %4978 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %4972, i32 undef)  ; BufferLoad(srv,index,wot)
  %4979 = extractvalue %dx.types.ResRet.i32 %4978, 0
  %4980 = and i32 %4979, %4977
  %4981 = icmp ne i32 %4980, 0
  %4982 = icmp eq i32 %4961, 0
  br i1 %4982, label %5099, label %4983, !dx.controlflow.hints !50

; <label>:4983                                    ; preds = %4916
  %4984 = uitofp i32 %4961 to float
  %4985 = fmul fast float %65, 5.000000e-01
  %4986 = fmul fast float %4985, %4984
  %4987 = fmul fast float %66, 5.000000e-01
  %4988 = fmul fast float %4987, %4984
  %4989 = call float @dx.op.binary.f32(i32 35, float 5.000000e-01, float %4986)  ; FMax(a,b)
  %4990 = call float @dx.op.binary.f32(i32 35, float 5.000000e-01, float %4988)  ; FMax(a,b)
  br label %4991

; <label>:4991                                    ; preds = %5086, %4983
  %4992 = phi float [ 0.000000e+00, %4983 ], [ %5089, %5086 ]
  %4993 = phi i32 [ 0, %4983 ], [ %5090, %5086 ]
  %4994 = fmul fast float %44, 0x3FF280E1E0000000
  %4995 = fmul fast float %45, 0x3FF280E1E0000000
  %4996 = sitofp i32 %4993 to float
  %4997 = fmul fast float %4996, 0x3FB99999A0000000
  %4998 = fadd fast float %4997, %4994
  %4999 = fadd fast float %4997, %4995
  %5000 = fmul fast float %4998, 1.024000e+03
  %5001 = fmul fast float %4999, 1.024000e+03
  %5002 = fadd fast float %5000, -5.120000e+02
  %5003 = fadd fast float %5001, -5.120000e+02
  %5004 = fmul fast float %4998, 0x4081BEDF00000000
  %5005 = fadd fast float %5004, 0xC071BEDF00000000
  %5006 = call float @dx.op.unary.f32(i32 22, float %5005)  ; Frc(value)
  %5007 = fmul fast float %5002, %5006
  %5008 = fadd fast float %5007, %5003
  %5009 = fmul fast float %4999, 0x4073BEBE20000000
  %5010 = fadd fast float %5009, 0xC063BEBE20000000
  %5011 = call float @dx.op.unary.f32(i32 22, float %5010)  ; Frc(value)
  %5012 = fmul fast float %5003, %5011
  %5013 = fadd fast float %5012, %5002
  %5014 = fmul fast float %5008, %5013
  %5015 = call float @dx.op.unary.f32(i32 22, float %5014)  ; Frc(value)
  %5016 = fmul fast float %5015, 2.000000e+00
  %5017 = fadd fast float %5016, -1.000000e+00
  %5018 = fmul fast float %5017, %4989
  %5019 = fmul fast float %44, 0x3FEB681740000000
  %5020 = fmul fast float %45, 0x3FEB681740000000
  %5021 = fmul fast float %4996, 0x3FC99999A0000000
  %5022 = fadd fast float %5021, 1.250000e-01
  %5023 = fadd fast float %5022, %5019
  %5024 = fadd fast float %5022, %5020
  %5025 = fmul fast float %5023, 1.024000e+03
  %5026 = fmul fast float %5024, 1.024000e+03
  %5027 = fadd fast float %5025, -5.120000e+02
  %5028 = fadd fast float %5026, -5.120000e+02
  %5029 = fmul fast float %5023, 0x4081BEDF00000000
  %5030 = fadd fast float %5029, 0xC071BEDF00000000
  %5031 = call float @dx.op.unary.f32(i32 22, float %5030)  ; Frc(value)
  %5032 = fmul fast float %5027, %5031
  %5033 = fadd fast float %5032, %5028
  %5034 = fmul fast float %5024, 0x4073BEBE20000000
  %5035 = fadd fast float %5034, 0xC063BEBE20000000
  %5036 = call float @dx.op.unary.f32(i32 22, float %5035)  ; Frc(value)
  %5037 = fmul fast float %5028, %5036
  %5038 = fadd fast float %5037, %5027
  %5039 = fmul fast float %5033, %5038
  %5040 = call float @dx.op.unary.f32(i32 22, float %5039)  ; Frc(value)
  %5041 = fmul fast float %5040, 2.000000e+00
  %5042 = fadd fast float %5041, -1.000000e+00
  %5043 = fmul fast float %5042, %4990
  %5044 = fptosi float %5018 to i32
  %5045 = sitofp i32 %5044 to float
  %5046 = fadd fast float %5045, %4962
  %5047 = fptosi float %5046 to i32
  %5048 = fptosi float %5043 to i32
  %5049 = sitofp i32 %5048 to float
  %5050 = fadd fast float %5049, %4963
  %5051 = fptosi float %5050 to i32
  %5052 = or i32 %5051, %5047
  %5053 = icmp slt i32 %5052, 0
  %5054 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %5055 = extractvalue %dx.types.CBufRet.f32 %5054, 0
  %5056 = extractvalue %dx.types.CBufRet.f32 %5054, 1
  %5057 = fptosi float %5055 to i32
  %5058 = fptosi float %5056 to i32
  %5059 = icmp sge i32 %5047, %5057
  %5060 = icmp sge i32 %5051, %5058
  %5061 = or i1 %5059, %5060
  %5062 = or i1 %5053, %5061
  br i1 %5062, label %5086, label %5063, !dx.controlflow.hints !47

; <label>:5063                                    ; preds = %4991
  %5064 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %18, i32 51)  ; CBufferLoadLegacy(handle,regIndex)
  %5065 = extractvalue %dx.types.CBufRet.i32 %5064, 1
  %5066 = shl i32 %5065, 2
  %5067 = extractvalue %dx.types.CBufRet.i32 %5064, 3
  %5068 = shl i32 %5067, 1
  %5069 = lshr i32 %5051, 2
  %5070 = extractvalue %dx.types.CBufRet.i32 %5064, 2
  %5071 = mul i32 %5070, %5069
  %5072 = lshr i32 %5047, 3
  %5073 = add i32 %5066, %5072
  %5074 = add i32 %5073, %5068
  %5075 = add i32 %5074, %5071
  %5076 = shl i32 %5075, 2
  %5077 = shl i32 %5051, 3
  %5078 = and i32 %5077, 24
  %5079 = and i32 %5047, 7
  %5080 = or i32 %5078, %5079
  %5081 = shl i32 1, %5080
  %5082 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %5076, i32 undef)  ; BufferLoad(srv,index,wot)
  %5083 = extractvalue %dx.types.ResRet.i32 %5082, 0
  %5084 = and i32 %5083, %5081
  %5085 = icmp ne i32 %5084, 0
  br label %5086

; <label>:5086                                    ; preds = %5063, %4991
  %5087 = phi i1 [ %5085, %5063 ], [ false, %4991 ]
  %5088 = uitofp i1 %5087 to float
  %5089 = fadd fast float %5088, %4992
  %5090 = add nuw nsw i32 %4993, 1
  %5091 = icmp eq i32 %5090, 5
  br i1 %5091, label %5092, label %4991

; <label>:5092                                    ; preds = %5086
  %5093 = uitofp i1 %4981 to float
  %5094 = fmul fast float %5093, 0x3FC99999A0000000
  %5095 = fmul fast float %5094, %5089
  %5096 = fadd fast float %5095, -5.000000e-01
  %5097 = fmul fast float %5096, 2.000000e+00
  %5098 = call float @dx.op.unary.f32(i32 7, float %5097)  ; Saturate(value)
  br label %5099

; <label>:5099                                    ; preds = %5092, %4916
  %5100 = phi float [ %5098, %5092 ], [ 0.000000e+00, %4916 ]
  %5101 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %5102 = extractvalue %dx.types.CBufRet.f32 %5101, 3
  %5103 = fmul fast float %5102, 0x3F9EB851E0000000
  %5104 = fadd fast float %5103, %4954
  %5105 = call float @dx.op.unary.f32(i32 22, float %5104)  ; Frc(value)
  %5106 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %14, float %4952, float %5105, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5107 = extractvalue %dx.types.ResRet.f32 %5106, 3
  %5108 = call float @dx.op.unary.f32(i32 7, float %5100)  ; Saturate(value)
  %5109 = fmul fast float %5107, %4932
  %5110 = fsub fast float %5108, %5109
  %5111 = call float @dx.op.unary.f32(i32 7, float %5110)  ; Saturate(value)
  %5112 = fmul fast float %5107, 1.250000e+00
  %5113 = fsub fast float %5108, %5112
  %5114 = call float @dx.op.unary.f32(i32 7, float %5113)  ; Saturate(value)
  %5115 = fmul fast float %5114, 0x3FD3333340000000
  %5116 = fadd fast float %5115, %5111
  %5117 = fmul fast float %5116, %5116
  %5118 = fmul fast float %5117, %5116
  %5119 = call float @dx.op.unary.f32(i32 7, float %5118)  ; Saturate(value)
  %5120 = fmul fast float %5119, 0x3FEBD70A40000000
  %5121 = fsub fast float 1.000000e+00, %5120
  %5122 = call float @dx.op.unary.f32(i32 7, float %44)  ; Saturate(value)
  %5123 = call float @dx.op.unary.f32(i32 7, float %45)  ; Saturate(value)
  %5124 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %15, float %5122, float %5123, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5125 = extractvalue %dx.types.ResRet.f32 %5124, 0
  %5126 = bitcast float %5125 to i32
  %5127 = lshr i32 %5126, 8
  %5128 = and i32 %5126, 255
  %5129 = and i32 %5127, 255
  %5130 = uitofp i32 %5128 to float
  %5131 = uitofp i32 %5129 to float
  %5132 = fmul fast float %5130, 0x3F80101020000000
  %5133 = fmul fast float %5131, 0x3F80101020000000
  %5134 = fadd fast float %5132, -1.000000e+00
  %5135 = fadd fast float %5133, -1.000000e+00
  %5136 = call float @dx.op.unary.f32(i32 6, float %5134)  ; FAbs(value)
  %5137 = fsub fast float 1.000000e+00, %5136
  %5138 = call float @dx.op.unary.f32(i32 6, float %5135)  ; FAbs(value)
  %5139 = fsub fast float %5137, %5138
  %5140 = fsub fast float -0.000000e+00, %5139
  %5141 = call float @dx.op.binary.f32(i32 35, float %5140, float 0.000000e+00)  ; FMax(a,b)
  %5142 = fcmp fast ogt float %5134, 0.000000e+00
  %5143 = fsub fast float -0.000000e+00, %5141
  %5144 = select i1 %5142, float %5143, float %5141
  %5145 = fadd fast float %5144, %5134
  %5146 = fcmp fast ogt float %5135, 0.000000e+00
  %5147 = select i1 %5146, float %5143, float %5141
  %5148 = fadd fast float %5147, %5135
  %5149 = call float @dx.op.dot3.f32(i32 55, float %5145, float %5148, float %5139, float %5145, float %5148, float %5139)  ; Dot3(ax,ay,az,bx,by,bz)
  %5150 = call float @dx.op.unary.f32(i32 25, float %5149)  ; Rsqrt(value)
  %5151 = fmul fast float %5145, %5150
  %5152 = fmul fast float %5148, %5150
  %5153 = fmul fast float %5150, %5139
  %5154 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 101)  ; CBufferLoadLegacy(handle,regIndex)
  %5155 = extractvalue %dx.types.CBufRet.f32 %5154, 0
  %5156 = extractvalue %dx.types.CBufRet.f32 %5154, 1
  %5157 = extractvalue %dx.types.CBufRet.f32 %5154, 2
  %5158 = call float @dx.op.dot3.f32(i32 55, float %5151, float %5152, float %5153, float %5155, float %5156, float %5157)  ; Dot3(ax,ay,az,bx,by,bz)
  %5159 = fadd fast float %5158, 2.500000e-01
  %5160 = call float @dx.op.unary.f32(i32 6, float %5159)  ; FAbs(value)
  %5161 = fsub fast float 1.000000e+00, %5160
  %5162 = fmul fast float %4922, 0x3F7278DF60000000
  %5163 = fmul fast float %4925, 0x3F7278DF60000000
  %5164 = fmul fast float %4928, 0x3F7278DF60000000
  %5165 = fmul fast float %5162, %5161
  %5166 = fmul fast float %5163, %5161
  %5167 = fmul fast float %5164, %5161
  br label %5168

; <label>:5168                                    ; preds = %5099, %4915, %4603, %4574, %2506, %2495, %2233, %2004, %1768, %1766, %1606, %1492, %869, %866, %852, %850, %613, %608
  %5169 = phi float [ %4910, %4603 ], [ %2239, %2233 ], [ %609, %1606 ], [ %2103, %2004 ], [ %1601, %1492 ], [ %1292, %869 ], [ %609, %866 ], [ %609, %608 ], [ %862, %852 ], [ %746, %850 ], [ %1777, %1768 ], [ %1659, %1766 ], [ %2321, %2495 ], [ %4593, %4574 ], [ 0.000000e+00, %2506 ], [ %5165, %5099 ], [ 0.000000e+00, %4915 ], [ 1.000000e+00, %613 ]
  %5170 = phi float [ %4911, %4603 ], [ %2240, %2233 ], [ %610, %1606 ], [ %2104, %2004 ], [ %1602, %1492 ], [ %1293, %869 ], [ %610, %866 ], [ %610, %608 ], [ %863, %852 ], [ %747, %850 ], [ %1778, %1768 ], [ %1661, %1766 ], [ %2322, %2495 ], [ %4594, %4574 ], [ 0.000000e+00, %2506 ], [ %5166, %5099 ], [ 0.000000e+00, %4915 ], [ 0.000000e+00, %613 ]
  %5171 = phi float [ %4912, %4603 ], [ %2241, %2233 ], [ %611, %1606 ], [ %2105, %2004 ], [ %1603, %1492 ], [ %1294, %869 ], [ %611, %866 ], [ %611, %608 ], [ %864, %852 ], [ %748, %850 ], [ %1779, %1768 ], [ %1663, %1766 ], [ %2323, %2495 ], [ %4595, %4574 ], [ 0.000000e+00, %2506 ], [ %5167, %5099 ], [ 0.000000e+00, %4915 ], [ 0.000000e+00, %613 ]
  %5172 = phi float [ %4914, %4603 ], [ %2242, %2233 ], [ %612, %1606 ], [ %2107, %2004 ], [ %1605, %1492 ], [ %1295, %869 ], [ %612, %866 ], [ %612, %608 ], [ %865, %852 ], [ %749, %850 ], [ %1780, %1768 ], [ %1665, %1766 ], [ %2505, %2495 ], [ %4602, %4574 ], [ 0.000000e+00, %2506 ], [ %5121, %5099 ], [ 0.000000e+00, %4915 ], [ 1.000000e+00, %613 ]
  %5173 = phi i32 [ %631, %4603 ], [ %631, %2233 ], [ %631, %1606 ], [ %631, %2004 ], [ %631, %1492 ], [ %631, %869 ], [ %631, %866 ], [ 0, %608 ], [ %631, %852 ], [ %631, %850 ], [ %631, %1768 ], [ %631, %1766 ], [ %631, %2495 ], [ %631, %4574 ], [ %631, %2506 ], [ %631, %5099 ], [ %631, %4915 ], [ %631, %613 ]
  %5174 = phi i32 [ %633, %4603 ], [ %633, %2233 ], [ %633, %1606 ], [ %633, %2004 ], [ %633, %1492 ], [ %633, %869 ], [ %633, %866 ], [ 0, %608 ], [ %633, %852 ], [ %633, %850 ], [ %633, %1768 ], [ %633, %1766 ], [ %633, %2495 ], [ %633, %4574 ], [ %633, %2506 ], [ %633, %5099 ], [ %633, %4915 ], [ %633, %613 ]
  %5175 = phi i32 [ %635, %4603 ], [ %635, %2233 ], [ %635, %1606 ], [ %635, %2004 ], [ %635, %1492 ], [ %635, %869 ], [ %635, %866 ], [ 0, %608 ], [ %635, %852 ], [ %635, %850 ], [ %635, %1768 ], [ %635, %1766 ], [ %635, %2495 ], [ %635, %4574 ], [ %635, %2506 ], [ %635, %5099 ], [ %635, %4915 ], [ %635, %613 ]
  %5176 = fmul fast float %5172, %5169
  %5177 = fmul fast float %5172, %5170
  %5178 = fmul fast float %5172, %5171
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %3, i32 %35, i32 %36, i32 undef, float %5176, float %5177, float %5178, float %5172, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %5179 = fcmp fast ogt float %5172, 0.000000e+00
  %5180 = icmp ne i32 %5175, 0
  %5181 = and i1 %5179, %5180
  %5182 = icmp ne i32 %5173, 0
  %5183 = and i1 %5182, %109
  %5184 = icmp ne i32 %5174, 0
  %5185 = and i1 %108, %5184
  %5186 = or i1 %5183, %5185
  %5187 = and i1 %5181, %5186
  %5188 = select i1 %5187, float 1.000000e+00, float 0.000000e+00
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %35, i32 %36, i32 undef, float %5188, float %5188, float %5188, float %5188, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %5189 = and i1 %5179, %109
  %5190 = zext i1 %5189 to i32
  %5191 = mul i32 %19, 8
  %5192 = add i32 %20, %5191
  %5193 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?gsHudOutlineMask1@@3PAY07$$CAIA.1dim", i32 0, i32 %5192
  store i32 %5190, i32 addrspace(3)* %5193, align 4, !tbaa !56
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %5194 = or i32 %20, %19
  %5195 = icmp ult i32 %5194, 4
  br i1 %5195, label %5196, label %5220, !dx.controlflow.hints !60

; <label>:5196                                    ; preds = %5168
  %5197 = shl i32 %19, 1
  %5198 = shl i32 %20, 1
  %5199 = mul i32 %5197, 8
  %5200 = add i32 %5198, %5199
  %5201 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?gsHudOutlineMask1@@3PAY07$$CAIA.1dim", i32 0, i32 %5200
  %5202 = load i32, i32 addrspace(3)* %5201, align 4, !tbaa !56
  %5203 = or i32 %5198, 1
  %5204 = mul i32 %5197, 8
  %5205 = add i32 %5203, %5204
  %5206 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?gsHudOutlineMask1@@3PAY07$$CAIA.1dim", i32 0, i32 %5205
  %5207 = load i32, i32 addrspace(3)* %5206, align 4, !tbaa !56
  %5208 = or i32 %5197, 1
  %5209 = mul i32 %5208, 8
  %5210 = add i32 %5203, %5209
  %5211 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?gsHudOutlineMask1@@3PAY07$$CAIA.1dim", i32 0, i32 %5210
  %5212 = load i32, i32 addrspace(3)* %5211, align 4, !tbaa !56
  %5213 = mul i32 %5208, 8
  %5214 = add i32 %5198, %5213
  %5215 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?gsHudOutlineMask1@@3PAY07$$CAIA.1dim", i32 0, i32 %5214
  %5216 = load i32, i32 addrspace(3)* %5215, align 4, !tbaa !56
  %5217 = or i32 %5207, %5202
  %5218 = or i32 %5217, %5212
  %5219 = or i32 %5218, %5216
  store i32 %5219, i32 addrspace(3)* %5193, align 4, !tbaa !56
  br label %5220

; <label>:5220                                    ; preds = %5196, %5168
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %5221 = icmp ult i32 %5194, 2
  br i1 %5221, label %5222, label %5252, !dx.controlflow.hints !61

; <label>:5222                                    ; preds = %5220
  %5223 = shl i32 %19, 1
  %5224 = shl i32 %20, 1
  %5225 = mul i32 %5223, 8
  %5226 = add i32 %5224, %5225
  %5227 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?gsHudOutlineMask1@@3PAY07$$CAIA.1dim", i32 0, i32 %5226
  %5228 = load i32, i32 addrspace(3)* %5227, align 4, !tbaa !56
  %5229 = or i32 %5224, 1
  %5230 = mul i32 %5223, 8
  %5231 = add i32 %5229, %5230
  %5232 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?gsHudOutlineMask1@@3PAY07$$CAIA.1dim", i32 0, i32 %5231
  %5233 = load i32, i32 addrspace(3)* %5232, align 4, !tbaa !56
  %5234 = or i32 %5223, 1
  %5235 = mul i32 %5234, 8
  %5236 = add i32 %5229, %5235
  %5237 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?gsHudOutlineMask1@@3PAY07$$CAIA.1dim", i32 0, i32 %5236
  %5238 = load i32, i32 addrspace(3)* %5237, align 4, !tbaa !56
  %5239 = mul i32 %5234, 8
  %5240 = add i32 %5224, %5239
  %5241 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?gsHudOutlineMask1@@3PAY07$$CAIA.1dim", i32 0, i32 %5240
  %5242 = load i32, i32 addrspace(3)* %5241, align 4, !tbaa !56
  %5243 = or i32 %5233, %5228
  %5244 = or i32 %5243, %5238
  %5245 = or i32 %5244, %5242
  %5246 = icmp ne i32 %5245, 0
  %5247 = select i1 %5246, float 1.000000e+00, float 0.000000e+00
  %5248 = lshr i32 %35, 2
  %5249 = lshr i32 %36, 2
  %5250 = add i32 %5248, %19
  %5251 = add i32 %5249, %20
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %5250, i32 %5251, i32 undef, float %5247, float %5247, float %5247, float %5247, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %5252

; <label>:5252                                    ; preds = %5222, %5220, %0
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
!47 = distinct !{!47, !"dx.controlflow.hints", i32 2}
!48 = distinct !{!48, !"dx.controlflow.hints", i32 1}
!49 = distinct !{!49, !"dx.controlflow.hints", i32 2}
!50 = distinct !{!50, !"dx.controlflow.hints", i32 1}
!51 = distinct !{!51, !"dx.controlflow.hints", i32 2}
!52 = distinct !{!52, !"dx.controlflow.hints", i32 2}
!53 = distinct !{!53, !"dx.controlflow.hints", i32 1}
!54 = distinct !{!54, !"dx.controlflow.hints", i32 2}
!55 = distinct !{!55, !"dx.controlflow.hints", i32 2}
!56 = !{!57, !57, i64 0}
!57 = !{!"int", !58, i64 0}
!58 = !{!"omnipotent char", !59, i64 0}
!59 = !{!"Simple C/C++ TBAA"}
!60 = distinct !{!60, !"dx.controlflow.hints", i32 2}
!61 = distinct !{!61, !"dx.controlflow.hints", i32 2}

