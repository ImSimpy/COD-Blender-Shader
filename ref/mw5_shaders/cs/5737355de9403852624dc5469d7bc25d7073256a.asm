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
; shader hash: 740cf43d25c74ae03933561284e2b2da
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
;                                   texture     f32          2d      T2            t11     1
;                                   texture     f32          2d      T3             t1     1
;                                   texture     f32          2d      T4             t2     1
;                                   texture    byte         r/o      T5             t5     1
;                                   texture    byte         r/o      T6            t12     1
;                                   texture    byte         r/o      T7            t13     1
;                                   texture  struct         r/o      T8             t6     1
;                                   texture     f32          3d      T9            t10     1
;                                   texture    byte         r/o     T10             t3     1
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
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 13, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 12, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 11, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
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
  br i1 %27, label %28, label %5767, !dx.controlflow.hints !33

; <label>:28                                      ; preds = %0
  %29 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %24, i32 0)  ; BufferLoad(srv,index,wot)
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
  %96 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %90, i32 undef)  ; BufferLoad(srv,index,wot)
  %97 = extractvalue %dx.types.ResRet.i32 %96, 0
  %98 = and i32 %97, %95
  %99 = icmp ne i32 %98, 0
  %100 = shl i32 %82, 1
  %101 = add i32 %81, %86
  %102 = add i32 %101, %100
  %103 = add i32 %102, %85
  %104 = shl i32 %103, 2
  %105 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %104, i32 undef)  ; BufferLoad(srv,index,wot)
  %106 = extractvalue %dx.types.ResRet.i32 %105, 0
  %107 = and i32 %106, %95
  %108 = icmp ne i32 %107, 0
  %109 = mul i32 %82, 3
  %110 = add i32 %101, %109
  %111 = add i32 %110, %85
  %112 = shl i32 %111, 2
  %113 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %112, i32 undef)  ; BufferLoad(srv,index,wot)
  %114 = extractvalue %dx.types.ResRet.i32 %113, 0
  %115 = and i32 %114, %95
  %116 = icmp ne i32 %115, 0
  %117 = xor i1 %116, true
  %118 = icmp ugt i32 %30, 268435455
  br i1 %118, label %119, label %616, !dx.controlflow.hints !34

; <label>:119                                     ; preds = %28
  %120 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %9, i32 0, i32 %35, i32 %36, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
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
  %182 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %14, float %179, float %180, float %181, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
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
  br i1 %108, label %621, label %5489, !dx.controlflow.hints !43

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
  %635 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %634, i32 undef)  ; BufferLoad(srv,index,wot)
  %636 = extractvalue %dx.types.ResRet.i32 %635, 0
  %637 = lshr i32 %636, 28
  %638 = and i32 %636, 131072
  switch i32 %637, label %5489 [
    i32 0, label %639
    i32 1, label %985
    i32 2, label %1415
    i32 3, label %1725
    i32 4, label %2320
    i32 5, label %2457
    i32 6, label %4924
    i32 7, label %5236
  ], !dx.controlflow.hints !44

; <label>:639                                     ; preds = %621
  %640 = and i32 %636, 511
  %641 = mul nuw nsw i32 %640, 20
  %642 = add nuw nsw i32 %641, 4
  %643 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %642, i32 undef)  ; BufferLoad(srv,index,wot)
  %644 = extractvalue %dx.types.ResRet.i32 %643, 0
  %645 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %641, i32 undef)  ; BufferLoad(srv,index,wot)
  %646 = extractvalue %dx.types.ResRet.i32 %645, 0
  %647 = and i32 %636, 524288
  %648 = icmp ne i32 %647, 0
  %649 = and i32 %636, 2097152
  %650 = icmp ne i32 %649, 0
  %651 = lshr i32 %644, 8
  %652 = and i32 %651, 65535
  %653 = call float @dx.op.legacyF16ToF32(i32 131, i32 %652)  ; LegacyF16ToF32(value)
  %654 = lshr i32 %644, 24
  %655 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 228)  ; CBufferLoadLegacy(handle,regIndex)
  %656 = extractvalue %dx.types.CBufRet.f32 %655, 2
  %657 = extractvalue %dx.types.CBufRet.f32 %655, 0
  %658 = call float @dx.op.binary.f32(i32 35, float %44, float %657)  ; FMax(a,b)
  %659 = call float @dx.op.binary.f32(i32 36, float %658, float %656)  ; FMin(a,b)
  %660 = call float @dx.op.binary.f32(i32 36, float %44, float %657)  ; FMin(a,b)
  %661 = call float @dx.op.binary.f32(i32 35, float %660, float %659)  ; FMax(a,b)
  %662 = fcmp fast oeq float %44, %661
  %663 = extractvalue %dx.types.CBufRet.f32 %655, 3
  %664 = extractvalue %dx.types.CBufRet.f32 %655, 1
  %665 = call float @dx.op.binary.f32(i32 35, float %45, float %664)  ; FMax(a,b)
  %666 = call float @dx.op.binary.f32(i32 36, float %665, float %663)  ; FMin(a,b)
  %667 = call float @dx.op.binary.f32(i32 36, float %45, float %664)  ; FMin(a,b)
  %668 = call float @dx.op.binary.f32(i32 35, float %667, float %666)  ; FMax(a,b)
  %669 = fcmp fast oeq float %45, %668
  %670 = and i1 %662, %669
  %671 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 224)  ; CBufferLoadLegacy(handle,regIndex)
  %672 = extractvalue %dx.types.CBufRet.f32 %671, 1
  %673 = select i1 %670, float %672, float 1.000000e+00
  %674 = icmp ne i32 %654, 0
  %675 = and i1 %99, %674
  br i1 %675, label %676, label %740, !dx.controlflow.hints !45

; <label>:676                                     ; preds = %639
  %677 = sitofp i32 %654 to float
  %678 = fmul fast float %677, 0x3F70101020000000
  %679 = fmul fast float %678, %673
  %680 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %681 = extractvalue %dx.types.CBufRet.f32 %680, 3
  %682 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %683 = extractvalue %dx.types.CBufRet.f32 %682, 2
  %684 = fmul fast float %683, %679
  %685 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %686 = extractvalue %dx.types.CBufRet.f32 %685, 0
  %687 = extractvalue %dx.types.CBufRet.f32 %685, 1
  %688 = extractvalue %dx.types.CBufRet.f32 %685, 2
  %689 = extractvalue %dx.types.CBufRet.f32 %685, 3
  %690 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %691 = extractvalue %dx.types.CBufRet.f32 %690, 0
  %692 = extractvalue %dx.types.CBufRet.f32 %690, 1
  %693 = extractvalue %dx.types.CBufRet.f32 %690, 2
  %694 = extractvalue %dx.types.CBufRet.f32 %690, 3
  %695 = select i1 %648, float %686, float %691
  %696 = select i1 %648, float %687, float %692
  %697 = select i1 %648, float %688, float %693
  %698 = select i1 %648, float %689, float %694
  %699 = fmul fast float %695, %679
  %700 = fmul fast float %696, %679
  %701 = fmul fast float %697, %679
  %702 = fmul fast float %698, %679
  br i1 %116, label %729, label %703, !dx.controlflow.hints !46

; <label>:703                                     ; preds = %676
  %704 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 10)  ; CBufferLoadLegacy(handle,regIndex)
  %705 = extractvalue %dx.types.CBufRet.f32 %704, 0
  %706 = extractvalue %dx.types.CBufRet.f32 %704, 1
  %707 = extractvalue %dx.types.CBufRet.f32 %704, 2
  %708 = extractvalue %dx.types.CBufRet.f32 %704, 3
  %709 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %710 = extractvalue %dx.types.CBufRet.f32 %709, 0
  %711 = extractvalue %dx.types.CBufRet.f32 %709, 1
  %712 = extractvalue %dx.types.CBufRet.f32 %709, 2
  %713 = extractvalue %dx.types.CBufRet.f32 %709, 3
  %714 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %715 = extractvalue %dx.types.CBufRet.f32 %714, 0
  %716 = extractvalue %dx.types.CBufRet.f32 %714, 1
  %717 = extractvalue %dx.types.CBufRet.f32 %714, 2
  %718 = extractvalue %dx.types.CBufRet.f32 %714, 3
  %719 = extractvalue %dx.types.CBufRet.f32 %682, 1
  %720 = fmul fast float %715, %699
  %721 = fmul fast float %720, %719
  %722 = fmul fast float %716, %700
  %723 = fmul fast float %722, %719
  %724 = fmul fast float %717, %701
  %725 = fmul fast float %724, %719
  %726 = fmul fast float %718, %702
  %727 = fmul fast float %726, %719
  %728 = fmul fast float %719, %684
  br label %852

; <label>:729                                     ; preds = %676
  %730 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %731 = extractvalue %dx.types.CBufRet.f32 %730, 0
  %732 = extractvalue %dx.types.CBufRet.f32 %730, 1
  %733 = extractvalue %dx.types.CBufRet.f32 %730, 2
  %734 = extractvalue %dx.types.CBufRet.f32 %730, 3
  %735 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %736 = extractvalue %dx.types.CBufRet.f32 %735, 0
  %737 = extractvalue %dx.types.CBufRet.f32 %735, 1
  %738 = extractvalue %dx.types.CBufRet.f32 %735, 2
  %739 = extractvalue %dx.types.CBufRet.f32 %735, 3
  br label %852

; <label>:740                                     ; preds = %639
  %741 = and i32 %636, 1048576
  %742 = icmp ne i32 %741, 0
  %743 = lshr i32 %646, 24
  %744 = uitofp i32 %743 to float
  %745 = fmul fast float %744, 0x3F70101020000000
  %746 = lshr i32 %646, 16
  %747 = and i32 %746, 255
  %748 = uitofp i32 %747 to float
  %749 = fmul fast float %748, 0x3F70101020000000
  %750 = lshr i32 %646, 8
  %751 = and i32 %750, 255
  %752 = uitofp i32 %751 to float
  %753 = fmul fast float %752, 0x3F70101020000000
  %754 = and i32 %646, 255
  %755 = uitofp i32 %754 to float
  %756 = fmul fast float %755, 0x3F70101020000000
  %757 = and i32 %636, 65536
  %758 = icmp ne i32 %757, 0
  %759 = select i1 %758, float 1.000000e+00, float 0.000000e+00
  %760 = and i32 %636, 32768
  %761 = icmp ne i32 %760, 0
  %762 = select i1 %761, float 0.000000e+00, float 1.000000e+00
  %763 = select i1 %99, float %673, float %762
  %764 = fmul fast float %763, %759
  %765 = fmul fast float %756, %763
  %766 = fmul fast float %753, %763
  %767 = fmul fast float %749, %763
  %768 = fmul fast float %745, %763
  %769 = select i1 %116, float 0.000000e+00, float 1.000000e+00
  %770 = select i1 %742, float %769, float %764
  br i1 %116, label %812, label %771, !dx.controlflow.hints !47

; <label>:771                                     ; preds = %740
  %772 = icmp ne i32 %638, 0
  %773 = select i1 %772, float 1.000000e+00, float 0.000000e+00
  %774 = fmul fast float %770, %773
  %775 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %776 = extractvalue %dx.types.CBufRet.f32 %775, 0
  %777 = extractvalue %dx.types.CBufRet.f32 %775, 1
  %778 = extractvalue %dx.types.CBufRet.f32 %775, 2
  %779 = extractvalue %dx.types.CBufRet.f32 %775, 3
  %780 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %781 = extractvalue %dx.types.CBufRet.f32 %780, 0
  %782 = extractvalue %dx.types.CBufRet.f32 %780, 1
  %783 = extractvalue %dx.types.CBufRet.f32 %780, 2
  %784 = extractvalue %dx.types.CBufRet.f32 %780, 3
  %785 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %786 = extractvalue %dx.types.CBufRet.f32 %785, 0
  %787 = extractvalue %dx.types.CBufRet.f32 %785, 1
  %788 = extractvalue %dx.types.CBufRet.f32 %785, 2
  %789 = extractvalue %dx.types.CBufRet.f32 %785, 3
  %790 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %791 = extractvalue %dx.types.CBufRet.f32 %790, 0
  %792 = fsub fast float %765, %763
  %793 = fsub fast float %766, %763
  %794 = fsub fast float %767, %763
  %795 = fsub fast float %768, %763
  %796 = fmul fast float %791, %792
  %797 = fmul fast float %791, %793
  %798 = fmul fast float %791, %794
  %799 = fmul fast float %791, %795
  %800 = fadd fast float %796, %763
  %801 = fadd fast float %797, %763
  %802 = fadd fast float %798, %763
  %803 = fadd fast float %799, %763
  %804 = fmul fast float %786, %773
  %805 = fmul fast float %804, %800
  %806 = fmul fast float %787, %773
  %807 = fmul fast float %806, %801
  %808 = fmul fast float %788, %773
  %809 = fmul fast float %808, %802
  %810 = fmul fast float %789, %773
  %811 = fmul fast float %810, %803
  br label %830

; <label>:812                                     ; preds = %740
  %813 = and i32 %636, 262144
  %814 = icmp ne i32 %813, 0
  %815 = select i1 %814, float 1.000000e+00, float 0.000000e+00
  %816 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %817 = extractvalue %dx.types.CBufRet.f32 %816, 0
  %818 = extractvalue %dx.types.CBufRet.f32 %816, 1
  %819 = extractvalue %dx.types.CBufRet.f32 %816, 2
  %820 = extractvalue %dx.types.CBufRet.f32 %816, 3
  %821 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %822 = extractvalue %dx.types.CBufRet.f32 %821, 0
  %823 = extractvalue %dx.types.CBufRet.f32 %821, 1
  %824 = extractvalue %dx.types.CBufRet.f32 %821, 2
  %825 = extractvalue %dx.types.CBufRet.f32 %821, 3
  %826 = fmul fast float %765, %815
  %827 = fmul fast float %766, %815
  %828 = fmul fast float %767, %815
  %829 = fmul fast float %768, %815
  br label %830

; <label>:830                                     ; preds = %812, %771
  %831 = phi float [ %805, %771 ], [ %826, %812 ]
  %832 = phi float [ %807, %771 ], [ %827, %812 ]
  %833 = phi float [ %809, %771 ], [ %828, %812 ]
  %834 = phi float [ %811, %771 ], [ %829, %812 ]
  %835 = phi float [ %781, %771 ], [ %822, %812 ]
  %836 = phi float [ %782, %771 ], [ %823, %812 ]
  %837 = phi float [ %783, %771 ], [ %824, %812 ]
  %838 = phi float [ %784, %771 ], [ %825, %812 ]
  %839 = phi float [ %776, %771 ], [ %817, %812 ]
  %840 = phi float [ %777, %771 ], [ %818, %812 ]
  %841 = phi float [ %778, %771 ], [ %819, %812 ]
  %842 = phi float [ %779, %771 ], [ %820, %812 ]
  %843 = phi float [ %774, %771 ], [ %770, %812 ]
  %844 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %845 = extractvalue %dx.types.CBufRet.f32 %844, 0
  %846 = fmul fast float %845, 2.000000e+00
  %847 = select i1 %650, float %846, float 1.000000e+00
  %848 = fmul fast float %847, %831
  %849 = fmul fast float %847, %832
  %850 = fmul fast float %847, %833
  %851 = fmul fast float %847, %834
  br label %852

; <label>:852                                     ; preds = %830, %729, %703
  %853 = phi float [ %848, %830 ], [ %721, %703 ], [ %699, %729 ]
  %854 = phi float [ %849, %830 ], [ %723, %703 ], [ %700, %729 ]
  %855 = phi float [ %850, %830 ], [ %725, %703 ], [ %701, %729 ]
  %856 = phi float [ %851, %830 ], [ %727, %703 ], [ %702, %729 ]
  %857 = phi float [ %835, %830 ], [ %710, %703 ], [ %736, %729 ]
  %858 = phi float [ %836, %830 ], [ %711, %703 ], [ %737, %729 ]
  %859 = phi float [ %837, %830 ], [ %712, %703 ], [ %738, %729 ]
  %860 = phi float [ %838, %830 ], [ %713, %703 ], [ %739, %729 ]
  %861 = phi float [ %839, %830 ], [ %705, %703 ], [ %731, %729 ]
  %862 = phi float [ %840, %830 ], [ %706, %703 ], [ %732, %729 ]
  %863 = phi float [ %841, %830 ], [ %707, %703 ], [ %733, %729 ]
  %864 = phi float [ %842, %830 ], [ %708, %703 ], [ %734, %729 ]
  %865 = phi float [ %843, %830 ], [ %728, %703 ], [ %684, %729 ]
  %866 = phi float [ %653, %830 ], [ %681, %703 ], [ %681, %729 ]
  %867 = fcmp fast oeq float %866, 0.000000e+00
  br i1 %867, label %969, label %868, !dx.controlflow.hints !48

; <label>:868                                     ; preds = %852
  %869 = fmul fast float %866, %65
  %870 = fadd fast float %869, 1.500000e+00
  %871 = fptosi float %870 to i32
  %872 = fmul fast float %866, %66
  %873 = fadd fast float %872, 1.500000e+00
  %874 = fptosi float %873 to i32
  %875 = call i32 @dx.op.binary.i32(i32 37, i32 1, i32 %871)  ; IMax(a,b)
  %876 = call i32 @dx.op.binary.i32(i32 37, i32 1, i32 %874)  ; IMax(a,b)
  %877 = sub i32 %64, %876
  %878 = or i32 %877, %63
  %879 = icmp slt i32 %878, 0
  %880 = fptosi float %59 to i32
  %881 = fptosi float %60 to i32
  %882 = icmp sge i32 %63, %880
  %883 = icmp sge i32 %877, %881
  %884 = or i1 %882, %883
  %885 = or i1 %879, %884
  br i1 %885, label %899, label %886, !dx.controlflow.hints !49

; <label>:886                                     ; preds = %868
  %887 = lshr i32 %877, 2
  %888 = mul i32 %84, %887
  %889 = add i32 %102, %888
  %890 = shl i32 %889, 2
  %891 = shl i32 %877, 3
  %892 = and i32 %891, 24
  %893 = or i32 %892, %93
  %894 = shl i32 1, %893
  %895 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %890, i32 undef)  ; BufferLoad(srv,index,wot)
  %896 = extractvalue %dx.types.ResRet.i32 %895, 0
  %897 = and i32 %896, %894
  %898 = icmp ne i32 %897, 0
  br label %899

; <label>:899                                     ; preds = %886, %868
  %900 = phi i1 [ %898, %886 ], [ false, %868 ]
  %901 = add i32 %876, %64
  %902 = or i32 %901, %63
  %903 = icmp slt i32 %902, 0
  %904 = icmp sge i32 %901, %881
  %905 = or i1 %882, %904
  %906 = or i1 %903, %905
  br i1 %906, label %920, label %907, !dx.controlflow.hints !49

; <label>:907                                     ; preds = %899
  %908 = lshr i32 %901, 2
  %909 = mul i32 %84, %908
  %910 = add i32 %102, %909
  %911 = shl i32 %910, 2
  %912 = shl i32 %901, 3
  %913 = and i32 %912, 24
  %914 = or i32 %913, %93
  %915 = shl i32 1, %914
  %916 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %911, i32 undef)  ; BufferLoad(srv,index,wot)
  %917 = extractvalue %dx.types.ResRet.i32 %916, 0
  %918 = and i32 %917, %915
  %919 = icmp ne i32 %918, 0
  br label %920

; <label>:920                                     ; preds = %907, %899
  %921 = phi i1 [ %919, %907 ], [ false, %899 ]
  %922 = and i1 %900, %921
  %923 = sub i32 %63, %875
  %924 = or i32 %923, %64
  %925 = icmp slt i32 %924, 0
  %926 = icmp sge i32 %923, %880
  %927 = icmp sge i32 %64, %881
  %928 = or i1 %926, %927
  %929 = or i1 %925, %928
  br i1 %929, label %943, label %930, !dx.controlflow.hints !49

; <label>:930                                     ; preds = %920
  %931 = lshr i32 %923, 3
  %932 = add i32 %81, %931
  %933 = add i32 %932, %100
  %934 = add i32 %933, %85
  %935 = shl i32 %934, 2
  %936 = and i32 %923, 7
  %937 = or i32 %936, %92
  %938 = shl i32 1, %937
  %939 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %935, i32 undef)  ; BufferLoad(srv,index,wot)
  %940 = extractvalue %dx.types.ResRet.i32 %939, 0
  %941 = and i32 %940, %938
  %942 = icmp ne i32 %941, 0
  br label %943

; <label>:943                                     ; preds = %930, %920
  %944 = phi i1 [ %942, %930 ], [ false, %920 ]
  %945 = and i1 %922, %944
  %946 = add i32 %875, %63
  %947 = or i32 %946, %64
  %948 = icmp slt i32 %947, 0
  %949 = icmp sge i32 %946, %880
  %950 = or i1 %949, %927
  %951 = or i1 %948, %950
  br i1 %951, label %965, label %952, !dx.controlflow.hints !49

; <label>:952                                     ; preds = %943
  %953 = lshr i32 %946, 3
  %954 = add i32 %81, %953
  %955 = add i32 %954, %100
  %956 = add i32 %955, %85
  %957 = shl i32 %956, 2
  %958 = and i32 %946, 7
  %959 = or i32 %958, %92
  %960 = shl i32 1, %959
  %961 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %957, i32 undef)  ; BufferLoad(srv,index,wot)
  %962 = extractvalue %dx.types.ResRet.i32 %961, 0
  %963 = and i32 %962, %960
  %964 = icmp ne i32 %963, 0
  br label %965

; <label>:965                                     ; preds = %952, %943
  %966 = phi i1 [ %964, %952 ], [ false, %943 ]
  %967 = and i1 %945, %966
  %968 = xor i1 %967, true
  br label %969

; <label>:969                                     ; preds = %965, %852
  %970 = phi i1 [ %968, %965 ], [ false, %852 ]
  br i1 %970, label %5489, label %971, !dx.controlflow.hints !50

; <label>:971                                     ; preds = %969
  %972 = select i1 %116, i1 %78, i1 %75
  %973 = select i1 %972, float %857, float %861
  %974 = select i1 %972, float %858, float %862
  %975 = select i1 %972, float %859, float %863
  %976 = select i1 %972, float %860, float %864
  %977 = fmul fast float %973, %853
  %978 = fmul fast float %977, %865
  %979 = fmul fast float %974, %854
  %980 = fmul fast float %979, %865
  %981 = fmul fast float %975, %855
  %982 = fmul fast float %981, %865
  %983 = fmul fast float %976, %856
  %984 = fmul fast float %983, %865
  br label %5489

; <label>:985                                     ; preds = %621
  %986 = or i32 %638, %115
  %987 = icmp eq i32 %986, 0
  br i1 %987, label %5489, label %988, !dx.controlflow.hints !51

; <label>:988                                     ; preds = %985
  %989 = and i32 %636, 511
  %990 = mul nuw nsw i32 %989, 20
  %991 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %990, i32 undef)  ; BufferLoad(srv,index,wot)
  %992 = extractvalue %dx.types.ResRet.i32 %991, 0
  %993 = and i32 %992, 255
  %994 = uitofp i32 %993 to float
  %995 = lshr i32 %992, 8
  %996 = and i32 %995, 255
  %997 = uitofp i32 %996 to float
  %998 = lshr i32 %992, 16
  %999 = and i32 %998, 255
  %1000 = uitofp i32 %999 to float
  %1001 = lshr i32 %992, 24
  %1002 = uitofp i32 %1001 to float
  %1003 = fmul fast float %994, 0x3F70101020000000
  %1004 = fmul fast float %997, 0x3F70101020000000
  %1005 = fmul fast float %1000, 0x3F70101020000000
  %1006 = fmul fast float %1002, 0x3F70101020000000
  %1007 = lshr i32 %636, 5
  %1008 = and i32 %1007, 1008
  %1009 = or i32 %1008, 8
  %1010 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %1009, i32 undef)  ; BufferLoad(srv,index,wot)
  %1011 = extractvalue %dx.types.ResRet.f32 %1010, 0
  %1012 = or i32 %1008, 12
  %1013 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %1012, i32 undef)  ; BufferLoad(srv,index,wot)
  %1014 = extractvalue %dx.types.ResRet.f32 %1013, 0
  %1015 = or i32 %1008, 4
  %1016 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %1015, i32 undef)  ; BufferLoad(srv,index,wot)
  %1017 = extractvalue %dx.types.ResRet.i32 %1016, 0
  %1018 = lshr i32 %1017, 16
  %1019 = and i32 %1018, 254
  %1020 = uitofp i32 %1019 to float
  %1021 = lshr i32 %1017, 24
  %1022 = and i32 %1021, 254
  %1023 = uitofp i32 %1022 to float
  %1024 = add nuw nsw i32 %990, 16
  %1025 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %1024, i32 undef)  ; BufferLoad(srv,index,wot)
  %1026 = extractvalue %dx.types.ResRet.f32 %1025, 0
  %1027 = fsub fast float %1014, %1011
  %1028 = fmul fast float %1027, 0x3FB99999A0000000
  %1029 = fsub fast float %1026, %1011
  %1030 = fdiv fast float %1029, %1028
  %1031 = call float @dx.op.unary.f32(i32 7, float %1030)  ; Saturate(value)
  %1032 = fmul fast float %1031, 2.000000e+00
  %1033 = fsub fast float 3.000000e+00, %1032
  %1034 = fsub fast float %1023, %1020
  %1035 = fmul fast float %1031, %1031
  %1036 = fmul fast float %1035, %1034
  %1037 = fmul fast float %1036, %1033
  %1038 = fadd fast float %1037, %1020
  %1039 = fmul fast float %1038, 0x3F70204080000000
  %1040 = fmul fast float %1027, 5.000000e-01
  %1041 = fsub fast float %1040, %1014
  %1042 = fadd fast float %1041, %1026
  %1043 = fdiv fast float %1042, %1040
  %1044 = call float @dx.op.unary.f32(i32 7, float %1043)  ; Saturate(value)
  %1045 = fmul fast float %1044, 2.000000e+00
  %1046 = fsub fast float 3.000000e+00, %1045
  %1047 = fmul fast float %1044, %1044
  %1048 = fmul fast float %1047, %1046
  %1049 = fsub fast float 1.000000e+00, %1048
  %1050 = fmul fast float %1039, %1049
  %1051 = fadd fast float %1026, -1.280000e+02
  %1052 = fmul fast float %1051, 1.953125e-03
  %1053 = call float @dx.op.unary.f32(i32 7, float %1052)  ; Saturate(value)
  %1054 = fmul fast float %1053, 6.250000e-01
  %1055 = fsub fast float 2.500000e+00, %1054
  %1056 = fmul fast float %1055, %65
  %1057 = fmul fast float %1055, %66
  %1058 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %12, i32 0, i32 %63, i32 %64, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1059 = extractvalue %dx.types.ResRet.i32 %1058, 0
  %1060 = lshr i32 %1059, 8
  %1061 = and i32 %1059, 255
  %1062 = and i32 %1060, 255
  %1063 = uitofp i32 %1061 to float
  %1064 = uitofp i32 %1062 to float
  %1065 = fmul fast float %1063, 0x3F80101020000000
  %1066 = fmul fast float %1064, 0x3F80101020000000
  %1067 = fadd fast float %1065, -1.000000e+00
  %1068 = fadd fast float %1066, -1.000000e+00
  %1069 = call float @dx.op.unary.f32(i32 6, float %1067)  ; FAbs(value)
  %1070 = fsub fast float 1.000000e+00, %1069
  %1071 = call float @dx.op.unary.f32(i32 6, float %1068)  ; FAbs(value)
  %1072 = fsub fast float %1070, %1071
  %1073 = fsub fast float -0.000000e+00, %1072
  %1074 = call float @dx.op.binary.f32(i32 35, float %1073, float 0.000000e+00)  ; FMax(a,b)
  %1075 = fcmp fast ogt float %1067, 0.000000e+00
  %1076 = fsub fast float -0.000000e+00, %1074
  %1077 = select i1 %1075, float %1076, float %1074
  %1078 = fadd fast float %1077, %1067
  %1079 = fcmp fast ogt float %1068, 0.000000e+00
  %1080 = select i1 %1079, float %1076, float %1074
  %1081 = fadd fast float %1080, %1068
  %1082 = call float @dx.op.dot3.f32(i32 55, float %1078, float %1081, float %1072, float %1078, float %1081, float %1072)  ; Dot3(ax,ay,az,bx,by,bz)
  %1083 = call float @dx.op.unary.f32(i32 25, float %1082)  ; Rsqrt(value)
  %1084 = fmul fast float %1083, %1072
  %1085 = add i32 %64, -1
  %1086 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %12, i32 0, i32 %63, i32 %1085, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1087 = extractvalue %dx.types.ResRet.i32 %1086, 0
  %1088 = lshr i32 %1087, 8
  %1089 = and i32 %1087, 255
  %1090 = and i32 %1088, 255
  %1091 = uitofp i32 %1089 to float
  %1092 = uitofp i32 %1090 to float
  %1093 = fmul fast float %1091, 0x3F80101020000000
  %1094 = fmul fast float %1092, 0x3F80101020000000
  %1095 = fadd fast float %1093, -1.000000e+00
  %1096 = fadd fast float %1094, -1.000000e+00
  %1097 = call float @dx.op.unary.f32(i32 6, float %1095)  ; FAbs(value)
  %1098 = fsub fast float 1.000000e+00, %1097
  %1099 = call float @dx.op.unary.f32(i32 6, float %1096)  ; FAbs(value)
  %1100 = fsub fast float %1098, %1099
  %1101 = fsub fast float -0.000000e+00, %1100
  %1102 = call float @dx.op.binary.f32(i32 35, float %1101, float 0.000000e+00)  ; FMax(a,b)
  %1103 = fcmp fast ogt float %1095, 0.000000e+00
  %1104 = fsub fast float -0.000000e+00, %1102
  %1105 = select i1 %1103, float %1104, float %1102
  %1106 = fadd fast float %1105, %1095
  %1107 = fcmp fast ogt float %1096, 0.000000e+00
  %1108 = select i1 %1107, float %1104, float %1102
  %1109 = fadd fast float %1108, %1096
  %1110 = call float @dx.op.dot3.f32(i32 55, float %1106, float %1109, float %1100, float %1106, float %1109, float %1100)  ; Dot3(ax,ay,az,bx,by,bz)
  %1111 = call float @dx.op.unary.f32(i32 25, float %1110)  ; Rsqrt(value)
  %1112 = fmul fast float %1106, %1111
  %1113 = fmul fast float %1109, %1111
  %1114 = fmul fast float %1111, %1100
  %1115 = add i32 %64, 1
  %1116 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %12, i32 0, i32 %63, i32 %1115, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1117 = extractvalue %dx.types.ResRet.i32 %1116, 0
  %1118 = lshr i32 %1117, 8
  %1119 = and i32 %1117, 255
  %1120 = and i32 %1118, 255
  %1121 = uitofp i32 %1119 to float
  %1122 = uitofp i32 %1120 to float
  %1123 = fmul fast float %1121, 0x3F80101020000000
  %1124 = fmul fast float %1122, 0x3F80101020000000
  %1125 = fadd fast float %1123, -1.000000e+00
  %1126 = fadd fast float %1124, -1.000000e+00
  %1127 = call float @dx.op.unary.f32(i32 6, float %1125)  ; FAbs(value)
  %1128 = fsub fast float 1.000000e+00, %1127
  %1129 = call float @dx.op.unary.f32(i32 6, float %1126)  ; FAbs(value)
  %1130 = fsub fast float %1128, %1129
  %1131 = fsub fast float -0.000000e+00, %1130
  %1132 = call float @dx.op.binary.f32(i32 35, float %1131, float 0.000000e+00)  ; FMax(a,b)
  %1133 = fcmp fast ogt float %1125, 0.000000e+00
  %1134 = fsub fast float -0.000000e+00, %1132
  %1135 = select i1 %1133, float %1134, float %1132
  %1136 = fadd fast float %1135, %1125
  %1137 = fcmp fast ogt float %1126, 0.000000e+00
  %1138 = select i1 %1137, float %1134, float %1132
  %1139 = fadd fast float %1138, %1126
  %1140 = call float @dx.op.dot3.f32(i32 55, float %1136, float %1139, float %1130, float %1136, float %1139, float %1130)  ; Dot3(ax,ay,az,bx,by,bz)
  %1141 = call float @dx.op.unary.f32(i32 25, float %1140)  ; Rsqrt(value)
  %1142 = fmul fast float %1136, %1141
  %1143 = fmul fast float %1139, %1141
  %1144 = fmul fast float %1141, %1130
  %1145 = add i32 %63, -1
  %1146 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %12, i32 0, i32 %1145, i32 %64, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1147 = extractvalue %dx.types.ResRet.i32 %1146, 0
  %1148 = lshr i32 %1147, 8
  %1149 = and i32 %1147, 255
  %1150 = and i32 %1148, 255
  %1151 = uitofp i32 %1149 to float
  %1152 = uitofp i32 %1150 to float
  %1153 = fmul fast float %1151, 0x3F80101020000000
  %1154 = fmul fast float %1152, 0x3F80101020000000
  %1155 = fadd fast float %1153, -1.000000e+00
  %1156 = fadd fast float %1154, -1.000000e+00
  %1157 = call float @dx.op.unary.f32(i32 6, float %1155)  ; FAbs(value)
  %1158 = fsub fast float 1.000000e+00, %1157
  %1159 = call float @dx.op.unary.f32(i32 6, float %1156)  ; FAbs(value)
  %1160 = fsub fast float %1158, %1159
  %1161 = fsub fast float -0.000000e+00, %1160
  %1162 = call float @dx.op.binary.f32(i32 35, float %1161, float 0.000000e+00)  ; FMax(a,b)
  %1163 = fcmp fast ogt float %1155, 0.000000e+00
  %1164 = fsub fast float -0.000000e+00, %1162
  %1165 = select i1 %1163, float %1164, float %1162
  %1166 = fadd fast float %1165, %1155
  %1167 = fcmp fast ogt float %1156, 0.000000e+00
  %1168 = select i1 %1167, float %1164, float %1162
  %1169 = fadd fast float %1168, %1156
  %1170 = call float @dx.op.dot3.f32(i32 55, float %1166, float %1169, float %1160, float %1166, float %1169, float %1160)  ; Dot3(ax,ay,az,bx,by,bz)
  %1171 = call float @dx.op.unary.f32(i32 25, float %1170)  ; Rsqrt(value)
  %1172 = fmul fast float %1166, %1171
  %1173 = fmul fast float %1169, %1171
  %1174 = fmul fast float %1171, %1160
  %1175 = add i32 %63, 1
  %1176 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %12, i32 0, i32 %1175, i32 %64, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1177 = extractvalue %dx.types.ResRet.i32 %1176, 0
  %1178 = lshr i32 %1177, 8
  %1179 = and i32 %1177, 255
  %1180 = and i32 %1178, 255
  %1181 = uitofp i32 %1179 to float
  %1182 = uitofp i32 %1180 to float
  %1183 = fmul fast float %1181, 0x3F80101020000000
  %1184 = fmul fast float %1182, 0x3F80101020000000
  %1185 = fadd fast float %1183, -1.000000e+00
  %1186 = fadd fast float %1184, -1.000000e+00
  %1187 = call float @dx.op.unary.f32(i32 6, float %1185)  ; FAbs(value)
  %1188 = fsub fast float 1.000000e+00, %1187
  %1189 = call float @dx.op.unary.f32(i32 6, float %1186)  ; FAbs(value)
  %1190 = fsub fast float %1188, %1189
  %1191 = fsub fast float -0.000000e+00, %1190
  %1192 = call float @dx.op.binary.f32(i32 35, float %1191, float 0.000000e+00)  ; FMax(a,b)
  %1193 = fcmp fast ogt float %1185, 0.000000e+00
  %1194 = fsub fast float -0.000000e+00, %1192
  %1195 = select i1 %1193, float %1194, float %1192
  %1196 = fadd fast float %1195, %1185
  %1197 = fcmp fast ogt float %1186, 0.000000e+00
  %1198 = select i1 %1197, float %1194, float %1192
  %1199 = fadd fast float %1198, %1186
  %1200 = call float @dx.op.dot3.f32(i32 55, float %1196, float %1199, float %1190, float %1196, float %1199, float %1190)  ; Dot3(ax,ay,az,bx,by,bz)
  %1201 = call float @dx.op.unary.f32(i32 25, float %1200)  ; Rsqrt(value)
  %1202 = fmul fast float %1196, %1201
  %1203 = fmul fast float %1199, %1201
  %1204 = fmul fast float %1201, %1190
  %1205 = add nuw nsw i32 %990, 12
  %1206 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %1205, i32 undef)  ; BufferLoad(srv,index,wot)
  %1207 = extractvalue %dx.types.ResRet.i32 %1206, 0
  %1208 = lshr i32 %1207, 16
  %1209 = uitofp i32 %1208 to float
  %1210 = fmul fast float %1209, 0x3EF0002000000000
  %1211 = add nuw nsw i32 %990, 8
  %1212 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %1211, i32 undef)  ; BufferLoad(srv,index,wot)
  %1213 = extractvalue %dx.types.ResRet.i32 %1212, 0
  %1214 = lshr i32 %1213, 16
  %1215 = uitofp i32 %1214 to float
  %1216 = fmul fast float %1215, 0x3EF0002000000000
  %1217 = fsub fast float %45, %1216
  %1218 = fdiv fast float %1217, %1210
  %1219 = fsub fast float %40, %1057
  %1220 = fmul fast float %43, %1219
  %1221 = call float @dx.op.unary.f32(i32 7, float %44)  ; Saturate(value)
  %1222 = call float @dx.op.unary.f32(i32 7, float %1220)  ; Saturate(value)
  %1223 = fmul fast float %59, %1221
  %1224 = fmul fast float %60, %1222
  %1225 = fptoui float %1223 to i32
  %1226 = fptoui float %1224 to i32
  %1227 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %13, i32 0, i32 %1225, i32 %1226, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1228 = extractvalue %dx.types.ResRet.f32 %1227, 0
  %1229 = extractvalue %dx.types.ResRet.f32 %1227, 1
  %1230 = fadd fast float %1229, 0x3F40000000000000
  %1231 = fmul fast float %1230, 2.550000e+02
  %1232 = fadd fast float %1228, 0x3F40000000000000
  %1233 = fmul fast float %1232, 2.550000e+02
  %1234 = fptoui float %1231 to i32
  %1235 = shl i32 %1234, 8
  %1236 = fptoui float %1233 to i32
  %1237 = and i32 %1236, 255
  %1238 = or i32 %1235, %1237
  %1239 = fadd fast float %1057, %40
  %1240 = fmul fast float %43, %1239
  %1241 = call float @dx.op.unary.f32(i32 7, float %1240)  ; Saturate(value)
  %1242 = fmul fast float %60, %1241
  %1243 = fptoui float %1242 to i32
  %1244 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %13, i32 0, i32 %1225, i32 %1243, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1245 = extractvalue %dx.types.ResRet.f32 %1244, 0
  %1246 = extractvalue %dx.types.ResRet.f32 %1244, 1
  %1247 = fadd fast float %1246, 0x3F40000000000000
  %1248 = fmul fast float %1247, 2.550000e+02
  %1249 = fadd fast float %1245, 0x3F40000000000000
  %1250 = fmul fast float %1249, 2.550000e+02
  %1251 = fptoui float %1248 to i32
  %1252 = shl i32 %1251, 8
  %1253 = fptoui float %1250 to i32
  %1254 = and i32 %1253, 255
  %1255 = or i32 %1252, %1254
  %1256 = fsub fast float %39, %1056
  %1257 = fmul fast float %42, %1256
  %1258 = call float @dx.op.unary.f32(i32 7, float %1257)  ; Saturate(value)
  %1259 = call float @dx.op.unary.f32(i32 7, float %45)  ; Saturate(value)
  %1260 = fmul fast float %59, %1258
  %1261 = fmul fast float %60, %1259
  %1262 = fptoui float %1260 to i32
  %1263 = fptoui float %1261 to i32
  %1264 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %13, i32 0, i32 %1262, i32 %1263, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1265 = extractvalue %dx.types.ResRet.f32 %1264, 0
  %1266 = extractvalue %dx.types.ResRet.f32 %1264, 1
  %1267 = fadd fast float %1266, 0x3F40000000000000
  %1268 = fmul fast float %1267, 2.550000e+02
  %1269 = fadd fast float %1265, 0x3F40000000000000
  %1270 = fmul fast float %1269, 2.550000e+02
  %1271 = fptoui float %1268 to i32
  %1272 = shl i32 %1271, 8
  %1273 = fptoui float %1270 to i32
  %1274 = and i32 %1273, 255
  %1275 = or i32 %1272, %1274
  %1276 = fadd fast float %1056, %39
  %1277 = fmul fast float %42, %1276
  %1278 = call float @dx.op.unary.f32(i32 7, float %1277)  ; Saturate(value)
  %1279 = fmul fast float %59, %1278
  %1280 = fptoui float %1279 to i32
  %1281 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %13, i32 0, i32 %1280, i32 %1263, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1282 = extractvalue %dx.types.ResRet.f32 %1281, 0
  %1283 = extractvalue %dx.types.ResRet.f32 %1281, 1
  %1284 = fadd fast float %1283, 0x3F40000000000000
  %1285 = fmul fast float %1284, 2.550000e+02
  %1286 = fadd fast float %1282, 0x3F40000000000000
  %1287 = fmul fast float %1286, 2.550000e+02
  %1288 = fptoui float %1285 to i32
  %1289 = shl i32 %1288, 8
  %1290 = fptoui float %1287 to i32
  %1291 = and i32 %1290, 255
  %1292 = or i32 %1289, %1291
  %1293 = icmp eq i32 %633, %1238
  %1294 = zext i1 %1293 to i32
  %1295 = icmp eq i32 %633, %1255
  %1296 = zext i1 %1295 to i32
  %1297 = add nuw nsw i32 %1296, %1294
  %1298 = icmp eq i32 %633, %1275
  %1299 = zext i1 %1298 to i32
  %1300 = add nuw nsw i32 %1297, %1299
  %1301 = icmp eq i32 %633, %1292
  %1302 = zext i1 %1301 to i32
  %1303 = add nuw nsw i32 %1300, %1302
  %1304 = icmp ne i32 %1303, 4
  %1305 = call float @dx.op.dot3.f32(i32 55, float %1112, float %1113, float %1114, float %1142, float %1143, float %1144)  ; Dot3(ax,ay,az,bx,by,bz)
  %1306 = call float @dx.op.binary.f32(i32 36, float 1.000000e+00, float %1305)  ; FMin(a,b)
  %1307 = call float @dx.op.dot3.f32(i32 55, float %1112, float %1113, float %1114, float %1172, float %1173, float %1174)  ; Dot3(ax,ay,az,bx,by,bz)
  %1308 = call float @dx.op.binary.f32(i32 36, float %1306, float %1307)  ; FMin(a,b)
  %1309 = call float @dx.op.dot3.f32(i32 55, float %1112, float %1113, float %1114, float %1202, float %1203, float %1204)  ; Dot3(ax,ay,az,bx,by,bz)
  %1310 = call float @dx.op.binary.f32(i32 36, float %1308, float %1309)  ; FMin(a,b)
  %1311 = call float @dx.op.dot3.f32(i32 55, float %1142, float %1143, float %1144, float %1172, float %1173, float %1174)  ; Dot3(ax,ay,az,bx,by,bz)
  %1312 = call float @dx.op.binary.f32(i32 36, float %1310, float %1311)  ; FMin(a,b)
  %1313 = call float @dx.op.dot3.f32(i32 55, float %1142, float %1143, float %1144, float %1202, float %1203, float %1204)  ; Dot3(ax,ay,az,bx,by,bz)
  %1314 = call float @dx.op.binary.f32(i32 36, float %1312, float %1313)  ; FMin(a,b)
  %1315 = call float @dx.op.dot3.f32(i32 55, float %1172, float %1173, float %1174, float %1202, float %1203, float %1204)  ; Dot3(ax,ay,az,bx,by,bz)
  %1316 = call float @dx.op.binary.f32(i32 36, float %1314, float %1315)  ; FMin(a,b)
  %1317 = call float @dx.op.unary.f32(i32 7, float %1316)  ; Saturate(value)
  %1318 = fsub fast float 1.000000e+00, %1317
  %1319 = call float @dx.op.unary.f32(i32 7, float %1318)  ; Saturate(value)
  %1320 = fmul fast float %1319, 2.000000e+00
  %1321 = fsub fast float 3.000000e+00, %1320
  %1322 = call float @dx.op.unary.f32(i32 7, float %1084)  ; Saturate(value)
  %1323 = fmul fast float %1322, 2.500000e+00
  %1324 = call float @dx.op.unary.f32(i32 7, float %1323)  ; Saturate(value)
  %1325 = fmul fast float %1324, 2.000000e+00
  %1326 = fsub fast float 3.000000e+00, %1325
  %1327 = fadd fast float %1322, 0xBFD99999A0000000
  %1328 = fmul fast float %1327, -2.500000e+00
  %1329 = call float @dx.op.unary.f32(i32 7, float %1328)  ; Saturate(value)
  %1330 = fmul fast float %1329, 2.000000e+00
  %1331 = fsub fast float 3.000000e+00, %1330
  %1332 = fmul float %1324, %1329
  %1333 = fmul float %1332, %1332
  %1334 = fmul fast float %1331, %1326
  %1335 = fmul fast float %1334, %1333
  %1336 = fmul fast float %1319, %1319
  %1337 = fmul fast float %1336, %1321
  %1338 = fadd fast float %1335, %1337
  %1339 = fmul fast float %1338, 2.000000e+00
  %1340 = call float @dx.op.unary.f32(i32 7, float %1339)  ; Saturate(value)
  %1341 = fmul fast float %1340, 1.500000e+00
  %1342 = fmul fast float %1341, %1003
  %1343 = fmul fast float %1341, %1004
  %1344 = fmul fast float %1341, %1005
  %1345 = icmp eq i32 %633, 0
  %1346 = or i1 %1345, %1304
  %1347 = select i1 %1345, float 0.000000e+00, float 1.000000e+00
  %1348 = select i1 %1346, float %1342, float 1.000000e+00
  %1349 = select i1 %1346, float %1343, float 1.000000e+00
  %1350 = select i1 %1346, float %1344, float 1.000000e+00
  %1351 = select i1 %1346, float %1006, float %1341
  %1352 = select i1 %1346, float %1347, float 0.000000e+00
  %1353 = fmul fast float %68, 5.400000e+02
  %1354 = fmul fast float %70, 5.400000e+02
  %1355 = fmul fast float %1353, %44
  %1356 = fmul fast float %1354, %45
  %1357 = call float @dx.op.unary.f32(i32 27, float %1355)  ; Round_ni(value)
  %1358 = call float @dx.op.unary.f32(i32 27, float %1356)  ; Round_ni(value)
  %1359 = fadd fast float %1358, %1357
  %1360 = frem fast float %1359, 2.000000e+00
  %1361 = call float @dx.op.unary.f32(i32 22, float %1355)  ; Frc(value)
  %1362 = call float @dx.op.unary.f32(i32 22, float %1356)  ; Frc(value)
  %1363 = fadd fast float %1361, -5.000000e-01
  %1364 = fadd fast float %1362, -5.000000e-01
  %1365 = fmul fast float %1363, 2.000000e+00
  %1366 = fmul fast float %1364, 2.000000e+00
  %1367 = call float @dx.op.dot2.f32(i32 54, float %1365, float %1366, float %1365, float %1366)  ; Dot2(ax,ay,bx,by)
  %1368 = call float @dx.op.unary.f32(i32 24, float %1367)  ; Sqrt(value)
  %1369 = fsub fast float 1.000000e+00, %1368
  %1370 = fmul fast float %1369, 2.000000e+00
  %1371 = call float @dx.op.unary.f32(i32 7, float %1370)  ; Saturate(value)
  %1372 = fmul fast float %60, %59
  %1373 = fmul fast float %1354, %1353
  %1374 = fdiv fast float %1372, %1373
  %1375 = fptoui float %1374 to i32
  %1376 = icmp ult i32 %1375, 4
  %1377 = select i1 %1376, float 1.000000e+00, float %1371
  %1378 = fmul fast float %1348, %1360
  %1379 = fmul fast float %1349, %1360
  %1380 = fmul fast float %1350, %1360
  %1381 = fmul fast float %1360, %1351
  %1382 = fmul fast float %1378, %1377
  %1383 = fmul fast float %1379, %1377
  %1384 = fmul fast float %1380, %1377
  %1385 = fmul fast float %1381, %1377
  %1386 = fsub fast float 1.000000e+00, %1218
  %1387 = fmul fast float %1386, %1386
  %1388 = fmul fast float %1387, 3.000000e+00
  %1389 = fadd fast float %1388, 2.500000e-01
  %1390 = call float @dx.op.unary.f32(i32 7, float %1389)  ; Saturate(value)
  %1391 = fmul fast float %1360, 0x3FC3333340000000
  %1392 = fadd fast float %1391, 7.500000e-01
  %1393 = fmul fast float %1392, %1352
  %1394 = call float @dx.op.binary.f32(i32 35, float %1382, float %1393)  ; FMax(a,b)
  %1395 = call float @dx.op.binary.f32(i32 35, float %1383, float %1393)  ; FMax(a,b)
  %1396 = call float @dx.op.binary.f32(i32 35, float %1384, float %1393)  ; FMax(a,b)
  %1397 = fmul fast float %1390, %1352
  %1398 = call float @dx.op.binary.f32(i32 35, float %1385, float %1397)  ; FMax(a,b)
  %1399 = fmul fast float %1050, %1003
  %1400 = fmul fast float %1399, %1394
  %1401 = fmul fast float %1050, %1004
  %1402 = fmul fast float %1401, %1395
  %1403 = fmul fast float %1050, %1005
  %1404 = fmul fast float %1403, %1396
  %1405 = fmul fast float %1390, %1050
  %1406 = fmul fast float %1405, %1398
  %1407 = call float @dx.op.unary.f32(i32 7, float %1400)  ; Saturate(value)
  %1408 = call float @dx.op.unary.f32(i32 7, float %1402)  ; Saturate(value)
  %1409 = call float @dx.op.unary.f32(i32 7, float %1404)  ; Saturate(value)
  %1410 = call float @dx.op.unary.f32(i32 7, float %1406)  ; Saturate(value)
  %1411 = fmul fast float %1407, 0x3FF3333340000000
  %1412 = fmul fast float %1408, 0x3FF3333340000000
  %1413 = fmul fast float %1409, 0x3FF3333340000000
  %1414 = fmul fast float %1410, 0x3FF3333340000000
  br label %5489

; <label>:1415                                    ; preds = %621
  %1416 = and i32 %636, 511
  %1417 = mul nuw nsw i32 %1416, 20
  %1418 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %1417, i32 undef)  ; BufferLoad(srv,index,wot)
  %1419 = extractvalue %dx.types.ResRet.i32 %1418, 0
  %1420 = lshr i32 %1419, 24
  %1421 = uitofp i32 %1420 to float
  %1422 = fmul fast float %1421, 0x3F70101020000000
  %1423 = fsub fast float 1.000000e+00, %1422
  %1424 = add nuw nsw i32 %1417, 12
  %1425 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %1424, i32 undef)  ; BufferLoad(srv,index,wot)
  %1426 = extractvalue %dx.types.ResRet.i32 %1425, 0
  %1427 = and i32 %1426, 65535
  %1428 = uitofp i32 %1427 to float
  %1429 = fmul fast float %1428, 0x3EF0002000000000
  %1430 = lshr i32 %1426, 16
  %1431 = uitofp i32 %1430 to float
  %1432 = fmul fast float %1431, 0x3EF0002000000000
  %1433 = add nuw nsw i32 %1417, 8
  %1434 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %1433, i32 undef)  ; BufferLoad(srv,index,wot)
  %1435 = extractvalue %dx.types.ResRet.i32 %1434, 0
  %1436 = and i32 %1435, 65535
  %1437 = uitofp i32 %1436 to float
  %1438 = fmul fast float %1437, 0x3EF0002000000000
  %1439 = lshr i32 %1435, 16
  %1440 = uitofp i32 %1439 to float
  %1441 = fmul fast float %1440, 0x3EF0002000000000
  %1442 = fsub fast float %44, %1438
  %1443 = fdiv fast float %1442, %1429
  %1444 = fsub fast float %45, %1441
  %1445 = fdiv fast float %1444, %1432
  %1446 = add nuw nsw i32 %1417, 16
  %1447 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %1446, i32 undef)  ; BufferLoad(srv,index,wot)
  %1448 = extractvalue %dx.types.ResRet.f32 %1447, 0
  %1449 = fcmp fast olt float %1448, 1.000000e+01
  %1450 = uitofp i1 %1449 to float
  %1451 = fdiv fast float 2.400000e+02, %1448
  %1452 = call float @dx.op.unary.f32(i32 7, float %1451)  ; Saturate(value)
  %1453 = fdiv fast float 3.200000e+02, %1448
  %1454 = call float @dx.op.unary.f32(i32 7, float %1453)  ; Saturate(value)
  %1455 = fmul fast float %1454, 5.000000e-01
  %1456 = fadd fast float %1455, 2.500000e-01
  %1457 = fdiv fast float 3.200000e+01, %1456
  %1458 = select i1 %1449, float 3.200000e+01, float %1457
  %1459 = fmul fast float %1458, 1.600000e+01
  %1460 = fmul fast float %1458, 9.000000e+00
  %1461 = fmul fast float %1429, %1443
  %1462 = fmul fast float %1461, %1459
  %1463 = fmul fast float %1432, %1445
  %1464 = fmul fast float %1463, %1460
  %1465 = call float @dx.op.unary.f32(i32 29, float %1462)  ; Round_z(value)
  %1466 = call float @dx.op.unary.f32(i32 29, float %1464)  ; Round_z(value)
  %1467 = call float @dx.op.unary.f32(i32 7, float %1422)  ; Saturate(value)
  %1468 = fmul fast float %1467, 2.000000e+00
  %1469 = fsub fast float 3.000000e+00, %1468
  %1470 = fmul fast float %1452, 4.000000e+01
  %1471 = fmul fast float %1450, 1.000000e+02
  %1472 = fadd fast float %1471, %1470
  %1473 = fptoui float %1472 to i32
  %1474 = uitofp i32 %63 to float
  %1475 = uitofp i32 %64 to float
  %1476 = fptoui float %1474 to i32
  %1477 = fptoui float %1475 to i32
  %1478 = lshr i32 %1477, 2
  %1479 = mul i32 %84, %1478
  %1480 = lshr i32 %1476, 3
  %1481 = add i32 %81, %1480
  %1482 = add i32 %1481, %100
  %1483 = add i32 %1482, %1479
  %1484 = shl i32 %1483, 2
  %1485 = shl i32 %1477, 3
  %1486 = and i32 %1485, 24
  %1487 = and i32 %1476, 7
  %1488 = or i32 %1486, %1487
  %1489 = shl i32 1, %1488
  %1490 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %1484, i32 undef)  ; BufferLoad(srv,index,wot)
  %1491 = extractvalue %dx.types.ResRet.i32 %1490, 0
  %1492 = and i32 %1491, %1489
  %1493 = icmp ne i32 %1492, 0
  %1494 = icmp eq i32 %1473, 0
  br i1 %1494, label %1611, label %1495, !dx.controlflow.hints !52

; <label>:1495                                    ; preds = %1415
  %1496 = uitofp i32 %1473 to float
  %1497 = fmul fast float %65, 5.000000e-01
  %1498 = fmul fast float %1497, %1496
  %1499 = fmul fast float %66, 5.000000e-01
  %1500 = fmul fast float %1499, %1496
  %1501 = call float @dx.op.binary.f32(i32 35, float 5.000000e-01, float %1498)  ; FMax(a,b)
  %1502 = call float @dx.op.binary.f32(i32 35, float 5.000000e-01, float %1500)  ; FMax(a,b)
  br label %1503

; <label>:1503                                    ; preds = %1598, %1495
  %1504 = phi float [ 0.000000e+00, %1495 ], [ %1601, %1598 ]
  %1505 = phi i32 [ 0, %1495 ], [ %1602, %1598 ]
  %1506 = fmul fast float %44, 0x3FF280E1E0000000
  %1507 = fmul fast float %45, 0x3FF280E1E0000000
  %1508 = sitofp i32 %1505 to float
  %1509 = fmul fast float %1508, 0x3FB99999A0000000
  %1510 = fadd fast float %1509, %1506
  %1511 = fadd fast float %1509, %1507
  %1512 = fmul fast float %1510, 1.024000e+03
  %1513 = fmul fast float %1511, 1.024000e+03
  %1514 = fadd fast float %1512, -5.120000e+02
  %1515 = fadd fast float %1513, -5.120000e+02
  %1516 = fmul fast float %1510, 0x4081BEDF00000000
  %1517 = fadd fast float %1516, 0xC071BEDF00000000
  %1518 = call float @dx.op.unary.f32(i32 22, float %1517)  ; Frc(value)
  %1519 = fmul fast float %1514, %1518
  %1520 = fadd fast float %1519, %1515
  %1521 = fmul fast float %1511, 0x4073BEBE20000000
  %1522 = fadd fast float %1521, 0xC063BEBE20000000
  %1523 = call float @dx.op.unary.f32(i32 22, float %1522)  ; Frc(value)
  %1524 = fmul fast float %1515, %1523
  %1525 = fadd fast float %1524, %1514
  %1526 = fmul fast float %1520, %1525
  %1527 = call float @dx.op.unary.f32(i32 22, float %1526)  ; Frc(value)
  %1528 = fmul fast float %1527, 2.000000e+00
  %1529 = fadd fast float %1528, -1.000000e+00
  %1530 = fmul fast float %1529, %1501
  %1531 = fmul fast float %44, 0x3FEB681740000000
  %1532 = fmul fast float %45, 0x3FEB681740000000
  %1533 = fmul fast float %1508, 0x3FC99999A0000000
  %1534 = fadd fast float %1533, 1.250000e-01
  %1535 = fadd fast float %1534, %1531
  %1536 = fadd fast float %1534, %1532
  %1537 = fmul fast float %1535, 1.024000e+03
  %1538 = fmul fast float %1536, 1.024000e+03
  %1539 = fadd fast float %1537, -5.120000e+02
  %1540 = fadd fast float %1538, -5.120000e+02
  %1541 = fmul fast float %1535, 0x4081BEDF00000000
  %1542 = fadd fast float %1541, 0xC071BEDF00000000
  %1543 = call float @dx.op.unary.f32(i32 22, float %1542)  ; Frc(value)
  %1544 = fmul fast float %1539, %1543
  %1545 = fadd fast float %1544, %1540
  %1546 = fmul fast float %1536, 0x4073BEBE20000000
  %1547 = fadd fast float %1546, 0xC063BEBE20000000
  %1548 = call float @dx.op.unary.f32(i32 22, float %1547)  ; Frc(value)
  %1549 = fmul fast float %1540, %1548
  %1550 = fadd fast float %1549, %1539
  %1551 = fmul fast float %1545, %1550
  %1552 = call float @dx.op.unary.f32(i32 22, float %1551)  ; Frc(value)
  %1553 = fmul fast float %1552, 2.000000e+00
  %1554 = fadd fast float %1553, -1.000000e+00
  %1555 = fmul fast float %1554, %1502
  %1556 = fptosi float %1530 to i32
  %1557 = sitofp i32 %1556 to float
  %1558 = fadd fast float %1557, %1474
  %1559 = fptosi float %1558 to i32
  %1560 = fptosi float %1555 to i32
  %1561 = sitofp i32 %1560 to float
  %1562 = fadd fast float %1561, %1475
  %1563 = fptosi float %1562 to i32
  %1564 = or i32 %1563, %1559
  %1565 = icmp slt i32 %1564, 0
  %1566 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %1567 = extractvalue %dx.types.CBufRet.f32 %1566, 0
  %1568 = extractvalue %dx.types.CBufRet.f32 %1566, 1
  %1569 = fptosi float %1567 to i32
  %1570 = fptosi float %1568 to i32
  %1571 = icmp sge i32 %1559, %1569
  %1572 = icmp sge i32 %1563, %1570
  %1573 = or i1 %1571, %1572
  %1574 = or i1 %1565, %1573
  br i1 %1574, label %1598, label %1575, !dx.controlflow.hints !49

; <label>:1575                                    ; preds = %1503
  %1576 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %18, i32 51)  ; CBufferLoadLegacy(handle,regIndex)
  %1577 = extractvalue %dx.types.CBufRet.i32 %1576, 1
  %1578 = shl i32 %1577, 2
  %1579 = extractvalue %dx.types.CBufRet.i32 %1576, 3
  %1580 = shl i32 %1579, 1
  %1581 = lshr i32 %1563, 2
  %1582 = extractvalue %dx.types.CBufRet.i32 %1576, 2
  %1583 = mul i32 %1582, %1581
  %1584 = lshr i32 %1559, 3
  %1585 = add i32 %1578, %1584
  %1586 = add i32 %1585, %1580
  %1587 = add i32 %1586, %1583
  %1588 = shl i32 %1587, 2
  %1589 = shl i32 %1563, 3
  %1590 = and i32 %1589, 24
  %1591 = and i32 %1559, 7
  %1592 = or i32 %1590, %1591
  %1593 = shl i32 1, %1592
  %1594 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %1588, i32 undef)  ; BufferLoad(srv,index,wot)
  %1595 = extractvalue %dx.types.ResRet.i32 %1594, 0
  %1596 = and i32 %1595, %1593
  %1597 = icmp ne i32 %1596, 0
  br label %1598

; <label>:1598                                    ; preds = %1575, %1503
  %1599 = phi i1 [ %1597, %1575 ], [ false, %1503 ]
  %1600 = uitofp i1 %1599 to float
  %1601 = fadd fast float %1600, %1504
  %1602 = add nuw nsw i32 %1505, 1
  %1603 = icmp eq i32 %1602, 5
  br i1 %1603, label %1604, label %1503

; <label>:1604                                    ; preds = %1598
  %1605 = uitofp i1 %1493 to float
  %1606 = fmul fast float %1605, 0x3FC99999A0000000
  %1607 = fmul fast float %1606, %1601
  %1608 = fadd fast float %1607, -5.000000e-01
  %1609 = fmul fast float %1608, 2.000000e+00
  %1610 = call float @dx.op.unary.f32(i32 7, float %1609)  ; Saturate(value)
  br label %1611

; <label>:1611                                    ; preds = %1604, %1415
  %1612 = phi float [ %1610, %1604 ], [ 0.000000e+00, %1415 ]
  %1613 = fdiv fast float %1465, %1459
  %1614 = fdiv fast float %1466, %1460
  %1615 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1616 = extractvalue %dx.types.CBufRet.f32 %1615, 3
  %1617 = fmul fast float %1616, 0x3FE99999A0000000
  %1618 = fadd fast float %1617, %1613
  %1619 = fsub fast float %1614, %1617
  %1620 = call float @dx.op.unary.f32(i32 22, float %1618)  ; Frc(value)
  %1621 = call float @dx.op.unary.f32(i32 22, float %1619)  ; Frc(value)
  %1622 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %15, float %1620, float %1621, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1623 = extractvalue %dx.types.ResRet.f32 %1622, 0
  %1624 = fmul fast float %1623, 1.500000e+00
  %1625 = call float @dx.op.unary.f32(i32 7, float %1624)  ; Saturate(value)
  %1626 = call float @dx.op.binary.f32(i32 35, float 0x3FE51EB860000000, float %1625)  ; FMax(a,b)
  %1627 = fsub fast float -5.000000e-01, %1465
  %1628 = fadd fast float %1627, %1462
  %1629 = fsub fast float -5.000000e-01, %1466
  %1630 = fadd fast float %1629, %1464
  %1631 = fmul fast float %1628, 2.000000e+00
  %1632 = fmul fast float %1630, 2.000000e+00
  %1633 = call float @dx.op.dot2.f32(i32 54, float %1631, float %1632, float %1631, float %1632)  ; Dot2(ax,ay,bx,by)
  %1634 = call float @dx.op.unary.f32(i32 24, float %1633)  ; Sqrt(value)
  %1635 = fsub fast float 1.000000e+00, %1634
  %1636 = fmul fast float %1635, 2.000000e+00
  %1637 = call float @dx.op.unary.f32(i32 7, float %1636)  ; Saturate(value)
  %1638 = fmul fast float %1616, 0x3F9EB851E0000000
  %1639 = fadd fast float %1638, %1445
  %1640 = call float @dx.op.unary.f32(i32 22, float %1639)  ; Frc(value)
  %1641 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %14, float %1443, float %1640, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1642 = extractvalue %dx.types.ResRet.f32 %1641, 3
  %1643 = call float @dx.op.unary.f32(i32 7, float %1612)  ; Saturate(value)
  %1644 = fmul fast float %1642, %1423
  %1645 = fsub fast float %1643, %1644
  %1646 = call float @dx.op.unary.f32(i32 7, float %1645)  ; Saturate(value)
  %1647 = fmul fast float %1642, 1.250000e+00
  %1648 = fsub fast float %1643, %1647
  %1649 = call float @dx.op.unary.f32(i32 7, float %1648)  ; Saturate(value)
  %1650 = fsub fast float 5.000000e-01, %1445
  %1651 = fmul fast float %1650, 2.000000e+00
  %1652 = call float @dx.op.unary.f32(i32 7, float %1651)  ; Saturate(value)
  %1653 = fmul fast float %1652, %1652
  %1654 = fmul fast float %1653, 7.500000e-01
  %1655 = fadd fast float %1654, 1.000000e+00
  %1656 = fmul fast float %1646, 7.500000e-01
  %1657 = fmul fast float %1656, %1655
  %1658 = fmul fast float %1450, 0x3FD3333340000000
  %1659 = fadd fast float %1658, 0x3FC3333340000000
  %1660 = fmul fast float %1649, %1659
  %1661 = fadd fast float %1657, %1660
  %1662 = fmul fast float %1661, %1661
  %1663 = fmul fast float %1662, %1661
  %1664 = call float @dx.op.unary.f32(i32 7, float %1663)  ; Saturate(value)
  %1665 = fmul fast float %1664, 0x40285C2900000000
  %1666 = fsub fast float 1.400000e+01, %1665
  %1667 = fptoui float %1666 to i32
  %1668 = call float @dx.op.unary.f32(i32 22, float %1666)  ; Frc(value)
  %1669 = mul i32 %1667, 3
  %1670 = add i32 0, %1669
  %1671 = getelementptr [45 x float], [45 x float]* @heat_ramp.v.1dim, i32 0, i32 %1670
  %1672 = load float, float* %1671, align 4
  %1673 = mul i32 %1667, 3
  %1674 = add i32 1, %1673
  %1675 = getelementptr [45 x float], [45 x float]* @heat_ramp.v.1dim, i32 0, i32 %1674
  %1676 = load float, float* %1675, align 4
  %1677 = mul i32 %1667, 3
  %1678 = add i32 2, %1677
  %1679 = getelementptr [45 x float], [45 x float]* @heat_ramp.v.1dim, i32 0, i32 %1678
  %1680 = load float, float* %1679, align 4
  %1681 = add i32 %1667, 1
  %1682 = mul i32 %1681, 3
  %1683 = add i32 0, %1682
  %1684 = getelementptr [45 x float], [45 x float]* @heat_ramp.v.1dim, i32 0, i32 %1683
  %1685 = load float, float* %1684, align 4
  %1686 = mul i32 %1681, 3
  %1687 = add i32 1, %1686
  %1688 = getelementptr [45 x float], [45 x float]* @heat_ramp.v.1dim, i32 0, i32 %1687
  %1689 = load float, float* %1688, align 4
  %1690 = mul i32 %1681, 3
  %1691 = add i32 2, %1690
  %1692 = getelementptr [45 x float], [45 x float]* @heat_ramp.v.1dim, i32 0, i32 %1691
  %1693 = load float, float* %1692, align 4
  %1694 = fsub fast float %1685, %1672
  %1695 = fsub fast float %1689, %1676
  %1696 = fsub fast float %1693, %1680
  %1697 = fmul fast float %1694, %1668
  %1698 = fmul fast float %1695, %1668
  %1699 = fmul fast float %1696, %1668
  %1700 = fadd fast float %1697, %1672
  %1701 = fadd fast float %1698, %1676
  %1702 = fadd fast float %1699, %1680
  %1703 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 17)  ; CBufferLoadLegacy(handle,regIndex)
  %1704 = extractvalue %dx.types.CBufRet.f32 %1703, 0
  %1705 = fmul fast float %1467, %1467
  %1706 = fmul fast float %1705, %1469
  %1707 = fmul fast float %1706, %1626
  %1708 = fmul fast float %1707, %1637
  %1709 = fmul fast float %1708, %1646
  %1710 = fmul fast float %1709, %1704
  %1711 = fmul fast float %1700, %1700
  %1712 = fmul fast float %1711, 2.000000e+00
  %1713 = fmul fast float %1712, %1710
  %1714 = fmul fast float %1701, %1701
  %1715 = fmul fast float %1714, 2.000000e+00
  %1716 = fmul fast float %1715, %1710
  %1717 = fmul fast float %1702, %1702
  %1718 = fmul fast float %1717, 2.000000e+00
  %1719 = fmul fast float %1718, %1710
  %1720 = call float @dx.op.binary.f32(i32 36, float %1713, float 2.000000e+00)  ; FMin(a,b)
  %1721 = call float @dx.op.binary.f32(i32 36, float %1716, float 2.000000e+00)  ; FMin(a,b)
  %1722 = call float @dx.op.binary.f32(i32 36, float %1719, float 2.000000e+00)  ; FMin(a,b)
  %1723 = select i1 %1449, float 0x3FD3333340000000, float 7.500000e-01
  %1724 = fmul float %1723, %1710
  br label %5489

; <label>:1725                                    ; preds = %621
  %1726 = and i32 %636, 262144
  %1727 = icmp eq i32 %638, 0
  %1728 = and i1 %1727, %117
  %1729 = icmp eq i32 %1726, 0
  %1730 = and i1 %116, %1729
  %1731 = or i1 %1728, %1730
  br i1 %1731, label %5489, label %1732, !dx.controlflow.hints !53

; <label>:1732                                    ; preds = %1725
  %1733 = and i32 %636, 511
  %1734 = mul nuw nsw i32 %1733, 20
  br i1 %116, label %1735, label %1993, !dx.controlflow.hints !54

; <label>:1735                                    ; preds = %1732
  %1736 = add nuw nsw i32 %1734, 4
  %1737 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %1736, i32 undef)  ; BufferLoad(srv,index,wot)
  %1738 = extractvalue %dx.types.ResRet.i32 %1737, 0
  %1739 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %1734, i32 undef)  ; BufferLoad(srv,index,wot)
  %1740 = extractvalue %dx.types.ResRet.i32 %1739, 0
  %1741 = and i32 %636, 524288
  %1742 = icmp ne i32 %1741, 0
  %1743 = lshr i32 %1738, 24
  %1744 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 228)  ; CBufferLoadLegacy(handle,regIndex)
  %1745 = extractvalue %dx.types.CBufRet.f32 %1744, 2
  %1746 = extractvalue %dx.types.CBufRet.f32 %1744, 0
  %1747 = call float @dx.op.binary.f32(i32 35, float %44, float %1746)  ; FMax(a,b)
  %1748 = call float @dx.op.binary.f32(i32 36, float %1747, float %1745)  ; FMin(a,b)
  %1749 = call float @dx.op.binary.f32(i32 36, float %44, float %1746)  ; FMin(a,b)
  %1750 = call float @dx.op.binary.f32(i32 35, float %1749, float %1748)  ; FMax(a,b)
  %1751 = fcmp fast oeq float %44, %1750
  %1752 = extractvalue %dx.types.CBufRet.f32 %1744, 3
  %1753 = extractvalue %dx.types.CBufRet.f32 %1744, 1
  %1754 = call float @dx.op.binary.f32(i32 35, float %45, float %1753)  ; FMax(a,b)
  %1755 = call float @dx.op.binary.f32(i32 36, float %1754, float %1752)  ; FMin(a,b)
  %1756 = call float @dx.op.binary.f32(i32 36, float %45, float %1753)  ; FMin(a,b)
  %1757 = call float @dx.op.binary.f32(i32 35, float %1756, float %1755)  ; FMax(a,b)
  %1758 = fcmp fast oeq float %45, %1757
  %1759 = and i1 %1751, %1758
  %1760 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 224)  ; CBufferLoadLegacy(handle,regIndex)
  %1761 = extractvalue %dx.types.CBufRet.f32 %1760, 1
  %1762 = select i1 %1759, float %1761, float 1.000000e+00
  %1763 = icmp ne i32 %1743, 0
  %1764 = and i1 %99, %1763
  br i1 %1764, label %1765, label %1802, !dx.controlflow.hints !45

; <label>:1765                                    ; preds = %1735
  %1766 = sitofp i32 %1743 to float
  %1767 = fmul fast float %1766, 0x3F70101020000000
  %1768 = fmul fast float %1767, %1762
  %1769 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1770 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %1771 = extractvalue %dx.types.CBufRet.f32 %1769, 3
  %1772 = extractvalue %dx.types.CBufRet.f32 %1770, 3
  %1773 = select i1 %1742, float %1771, float %1772
  %1774 = fmul fast float %1773, %1768
  %1775 = extractvalue %dx.types.CBufRet.f32 %1769, 2
  %1776 = extractvalue %dx.types.CBufRet.f32 %1770, 2
  %1777 = select i1 %1742, float %1775, float %1776
  %1778 = fmul fast float %1777, %1768
  %1779 = extractvalue %dx.types.CBufRet.f32 %1769, 1
  %1780 = extractvalue %dx.types.CBufRet.f32 %1770, 1
  %1781 = select i1 %1742, float %1779, float %1780
  %1782 = fmul fast float %1781, %1768
  %1783 = extractvalue %dx.types.CBufRet.f32 %1769, 0
  %1784 = extractvalue %dx.types.CBufRet.f32 %1770, 0
  %1785 = select i1 %1742, float %1783, float %1784
  %1786 = fmul fast float %1785, %1768
  %1787 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %1788 = extractvalue %dx.types.CBufRet.f32 %1787, 2
  %1789 = fmul fast float %1788, %1768
  %1790 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %1791 = extractvalue %dx.types.CBufRet.f32 %1790, 3
  %1792 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %1793 = extractvalue %dx.types.CBufRet.f32 %1792, 0
  %1794 = extractvalue %dx.types.CBufRet.f32 %1792, 1
  %1795 = extractvalue %dx.types.CBufRet.f32 %1792, 2
  %1796 = extractvalue %dx.types.CBufRet.f32 %1792, 3
  %1797 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %1798 = extractvalue %dx.types.CBufRet.f32 %1797, 0
  %1799 = extractvalue %dx.types.CBufRet.f32 %1797, 1
  %1800 = extractvalue %dx.types.CBufRet.f32 %1797, 2
  %1801 = extractvalue %dx.types.CBufRet.f32 %1797, 3
  br label %1861

; <label>:1802                                    ; preds = %1735
  %1803 = lshr i32 %1738, 8
  %1804 = and i32 %1803, 65535
  %1805 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1804)  ; LegacyF16ToF32(value)
  %1806 = and i32 %636, 2097152
  %1807 = icmp ne i32 %1806, 0
  %1808 = and i32 %636, 1048576
  %1809 = icmp ne i32 %1808, 0
  %1810 = and i32 %636, 65536
  %1811 = icmp ne i32 %1810, 0
  %1812 = select i1 %1811, float 1.000000e+00, float 0.000000e+00
  %1813 = and i32 %636, 32768
  %1814 = icmp ne i32 %1813, 0
  %1815 = select i1 %1814, float 0.000000e+00, float 1.000000e+00
  %1816 = select i1 %99, float %1762, float %1815
  %1817 = fmul fast float %1816, %1812
  %1818 = select i1 %1809, float 0.000000e+00, float %1817
  %1819 = lshr i32 %1740, 24
  %1820 = uitofp i32 %1819 to float
  %1821 = fmul fast float %1820, 0x3F70101020000000
  %1822 = fmul fast float %1821, %1816
  %1823 = lshr i32 %1740, 16
  %1824 = and i32 %1823, 255
  %1825 = uitofp i32 %1824 to float
  %1826 = fmul fast float %1825, 0x3F70101020000000
  %1827 = fmul fast float %1826, %1816
  %1828 = lshr i32 %1740, 8
  %1829 = and i32 %1828, 255
  %1830 = uitofp i32 %1829 to float
  %1831 = fmul fast float %1830, 0x3F70101020000000
  %1832 = fmul fast float %1831, %1816
  %1833 = and i32 %1740, 255
  %1834 = uitofp i32 %1833 to float
  %1835 = fmul fast float %1834, 0x3F70101020000000
  %1836 = fmul fast float %1835, %1816
  %1837 = icmp ne i32 %1726, 0
  %1838 = select i1 %1837, float 1.000000e+00, float 0.000000e+00
  %1839 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %1840 = extractvalue %dx.types.CBufRet.f32 %1839, 0
  %1841 = extractvalue %dx.types.CBufRet.f32 %1839, 1
  %1842 = extractvalue %dx.types.CBufRet.f32 %1839, 2
  %1843 = extractvalue %dx.types.CBufRet.f32 %1839, 3
  %1844 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %1845 = extractvalue %dx.types.CBufRet.f32 %1844, 0
  %1846 = extractvalue %dx.types.CBufRet.f32 %1844, 1
  %1847 = extractvalue %dx.types.CBufRet.f32 %1844, 2
  %1848 = extractvalue %dx.types.CBufRet.f32 %1844, 3
  %1849 = fmul fast float %1836, %1838
  %1850 = fmul fast float %1832, %1838
  %1851 = fmul fast float %1827, %1838
  %1852 = fmul fast float %1822, %1838
  %1853 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1854 = extractvalue %dx.types.CBufRet.f32 %1853, 0
  %1855 = fmul fast float %1854, 2.000000e+00
  %1856 = select i1 %1807, float %1855, float 1.000000e+00
  %1857 = fmul fast float %1856, %1849
  %1858 = fmul fast float %1856, %1850
  %1859 = fmul fast float %1856, %1851
  %1860 = fmul fast float %1856, %1852
  br label %1861

; <label>:1861                                    ; preds = %1802, %1765
  %1862 = phi float [ %1857, %1802 ], [ %1786, %1765 ]
  %1863 = phi float [ %1858, %1802 ], [ %1782, %1765 ]
  %1864 = phi float [ %1859, %1802 ], [ %1778, %1765 ]
  %1865 = phi float [ %1860, %1802 ], [ %1774, %1765 ]
  %1866 = phi float [ %1845, %1802 ], [ %1798, %1765 ]
  %1867 = phi float [ %1846, %1802 ], [ %1799, %1765 ]
  %1868 = phi float [ %1847, %1802 ], [ %1800, %1765 ]
  %1869 = phi float [ %1848, %1802 ], [ %1801, %1765 ]
  %1870 = phi float [ %1840, %1802 ], [ %1793, %1765 ]
  %1871 = phi float [ %1841, %1802 ], [ %1794, %1765 ]
  %1872 = phi float [ %1842, %1802 ], [ %1795, %1765 ]
  %1873 = phi float [ %1843, %1802 ], [ %1796, %1765 ]
  %1874 = phi float [ %1818, %1802 ], [ %1789, %1765 ]
  %1875 = phi float [ %1805, %1802 ], [ %1791, %1765 ]
  %1876 = fcmp fast oeq float %1875, 0.000000e+00
  br i1 %1876, label %1978, label %1877, !dx.controlflow.hints !48

; <label>:1877                                    ; preds = %1861
  %1878 = fmul fast float %1875, %65
  %1879 = fadd fast float %1878, 1.500000e+00
  %1880 = fptosi float %1879 to i32
  %1881 = fmul fast float %1875, %66
  %1882 = fadd fast float %1881, 1.500000e+00
  %1883 = fptosi float %1882 to i32
  %1884 = call i32 @dx.op.binary.i32(i32 37, i32 1, i32 %1880)  ; IMax(a,b)
  %1885 = call i32 @dx.op.binary.i32(i32 37, i32 1, i32 %1883)  ; IMax(a,b)
  %1886 = sub i32 %64, %1885
  %1887 = or i32 %1886, %63
  %1888 = icmp slt i32 %1887, 0
  %1889 = fptosi float %59 to i32
  %1890 = fptosi float %60 to i32
  %1891 = icmp sge i32 %63, %1889
  %1892 = icmp sge i32 %1886, %1890
  %1893 = or i1 %1891, %1892
  %1894 = or i1 %1888, %1893
  br i1 %1894, label %1908, label %1895, !dx.controlflow.hints !49

; <label>:1895                                    ; preds = %1877
  %1896 = lshr i32 %1886, 2
  %1897 = mul i32 %84, %1896
  %1898 = add i32 %102, %1897
  %1899 = shl i32 %1898, 2
  %1900 = shl i32 %1886, 3
  %1901 = and i32 %1900, 24
  %1902 = or i32 %1901, %93
  %1903 = shl i32 1, %1902
  %1904 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %1899, i32 undef)  ; BufferLoad(srv,index,wot)
  %1905 = extractvalue %dx.types.ResRet.i32 %1904, 0
  %1906 = and i32 %1905, %1903
  %1907 = icmp ne i32 %1906, 0
  br label %1908

; <label>:1908                                    ; preds = %1895, %1877
  %1909 = phi i1 [ %1907, %1895 ], [ false, %1877 ]
  %1910 = add i32 %1885, %64
  %1911 = or i32 %1910, %63
  %1912 = icmp slt i32 %1911, 0
  %1913 = icmp sge i32 %1910, %1890
  %1914 = or i1 %1891, %1913
  %1915 = or i1 %1912, %1914
  br i1 %1915, label %1929, label %1916, !dx.controlflow.hints !49

; <label>:1916                                    ; preds = %1908
  %1917 = lshr i32 %1910, 2
  %1918 = mul i32 %84, %1917
  %1919 = add i32 %102, %1918
  %1920 = shl i32 %1919, 2
  %1921 = shl i32 %1910, 3
  %1922 = and i32 %1921, 24
  %1923 = or i32 %1922, %93
  %1924 = shl i32 1, %1923
  %1925 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %1920, i32 undef)  ; BufferLoad(srv,index,wot)
  %1926 = extractvalue %dx.types.ResRet.i32 %1925, 0
  %1927 = and i32 %1926, %1924
  %1928 = icmp ne i32 %1927, 0
  br label %1929

; <label>:1929                                    ; preds = %1916, %1908
  %1930 = phi i1 [ %1928, %1916 ], [ false, %1908 ]
  %1931 = and i1 %1909, %1930
  %1932 = sub i32 %63, %1884
  %1933 = or i32 %1932, %64
  %1934 = icmp slt i32 %1933, 0
  %1935 = icmp sge i32 %1932, %1889
  %1936 = icmp sge i32 %64, %1890
  %1937 = or i1 %1935, %1936
  %1938 = or i1 %1934, %1937
  br i1 %1938, label %1952, label %1939, !dx.controlflow.hints !49

; <label>:1939                                    ; preds = %1929
  %1940 = lshr i32 %1932, 3
  %1941 = add i32 %81, %1940
  %1942 = add i32 %1941, %100
  %1943 = add i32 %1942, %85
  %1944 = shl i32 %1943, 2
  %1945 = and i32 %1932, 7
  %1946 = or i32 %1945, %92
  %1947 = shl i32 1, %1946
  %1948 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %1944, i32 undef)  ; BufferLoad(srv,index,wot)
  %1949 = extractvalue %dx.types.ResRet.i32 %1948, 0
  %1950 = and i32 %1949, %1947
  %1951 = icmp ne i32 %1950, 0
  br label %1952

; <label>:1952                                    ; preds = %1939, %1929
  %1953 = phi i1 [ %1951, %1939 ], [ false, %1929 ]
  %1954 = and i1 %1931, %1953
  %1955 = add i32 %1884, %63
  %1956 = or i32 %1955, %64
  %1957 = icmp slt i32 %1956, 0
  %1958 = icmp sge i32 %1955, %1889
  %1959 = or i1 %1958, %1936
  %1960 = or i1 %1957, %1959
  br i1 %1960, label %1974, label %1961, !dx.controlflow.hints !49

; <label>:1961                                    ; preds = %1952
  %1962 = lshr i32 %1955, 3
  %1963 = add i32 %81, %1962
  %1964 = add i32 %1963, %100
  %1965 = add i32 %1964, %85
  %1966 = shl i32 %1965, 2
  %1967 = and i32 %1955, 7
  %1968 = or i32 %1967, %92
  %1969 = shl i32 1, %1968
  %1970 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %1966, i32 undef)  ; BufferLoad(srv,index,wot)
  %1971 = extractvalue %dx.types.ResRet.i32 %1970, 0
  %1972 = and i32 %1971, %1969
  %1973 = icmp ne i32 %1972, 0
  br label %1974

; <label>:1974                                    ; preds = %1961, %1952
  %1975 = phi i1 [ %1973, %1961 ], [ false, %1952 ]
  %1976 = and i1 %1954, %1975
  %1977 = xor i1 %1976, true
  br label %1978

; <label>:1978                                    ; preds = %1974, %1861
  %1979 = phi i1 [ %1977, %1974 ], [ false, %1861 ]
  br i1 %1979, label %5489, label %1980, !dx.controlflow.hints !50

; <label>:1980                                    ; preds = %1978
  %1981 = select i1 %78, float %1866, float %1870
  %1982 = select i1 %78, float %1867, float %1871
  %1983 = select i1 %78, float %1868, float %1872
  %1984 = select i1 %78, float %1869, float %1873
  %1985 = fmul fast float %1981, %1862
  %1986 = fmul fast float %1985, %1874
  %1987 = fmul fast float %1982, %1863
  %1988 = fmul fast float %1987, %1874
  %1989 = fmul fast float %1983, %1864
  %1990 = fmul fast float %1989, %1874
  %1991 = fmul fast float %1984, %1865
  %1992 = fmul fast float %1991, %1874
  br label %5489

; <label>:1993                                    ; preds = %1732
  %1994 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %1734, i32 undef)  ; BufferLoad(srv,index,wot)
  %1995 = extractvalue %dx.types.ResRet.i32 %1994, 0
  %1996 = and i32 %1995, 255
  %1997 = uitofp i32 %1996 to float
  %1998 = lshr i32 %1995, 8
  %1999 = and i32 %1998, 255
  %2000 = uitofp i32 %1999 to float
  %2001 = lshr i32 %1995, 16
  %2002 = and i32 %2001, 255
  %2003 = uitofp i32 %2002 to float
  %2004 = lshr i32 %1995, 24
  %2005 = uitofp i32 %2004 to float
  %2006 = fmul fast float %1997, 0x3F70101020000000
  %2007 = fmul fast float %2000, 0x3F70101020000000
  %2008 = fmul fast float %2003, 0x3F70101020000000
  %2009 = fmul fast float %2005, 0x3F70101020000000
  %2010 = fsub fast float 1.000000e+00, %2009
  %2011 = lshr i32 %636, 5
  %2012 = and i32 %2011, 1008
  %2013 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %2012, i32 undef)  ; BufferLoad(srv,index,wot)
  %2014 = extractvalue %dx.types.ResRet.i32 %2013, 0
  %2015 = and i32 %2014, 1022
  %2016 = uitofp i32 %2015 to float
  %2017 = fmul fast float %2016, 0x3F940A0500000000
  %2018 = fadd fast float %2017, -1.000000e+01
  %2019 = lshr i32 %2014, 10
  %2020 = and i32 %2019, 1022
  %2021 = uitofp i32 %2020 to float
  %2022 = fmul fast float %2021, 0x3F940A0500000000
  %2023 = fadd fast float %2022, -1.000000e+01
  %2024 = lshr i32 %2014, 20
  %2025 = and i32 %2024, 1022
  %2026 = uitofp i32 %2025 to float
  %2027 = fmul fast float %2026, 0x3F840A0500000000
  %2028 = add nuw nsw i32 %1734, 12
  %2029 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %2028, i32 undef)  ; BufferLoad(srv,index,wot)
  %2030 = extractvalue %dx.types.ResRet.i32 %2029, 0
  %2031 = and i32 %2030, 65535
  %2032 = uitofp i32 %2031 to float
  %2033 = fmul fast float %2032, 0x3EF0002000000000
  %2034 = lshr i32 %2030, 16
  %2035 = uitofp i32 %2034 to float
  %2036 = fmul fast float %2035, 0x3EF0002000000000
  %2037 = add nuw nsw i32 %1734, 8
  %2038 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %2037, i32 undef)  ; BufferLoad(srv,index,wot)
  %2039 = extractvalue %dx.types.ResRet.i32 %2038, 0
  %2040 = and i32 %2039, 65535
  %2041 = uitofp i32 %2040 to float
  %2042 = fmul fast float %2041, 0x3EF0002000000000
  %2043 = lshr i32 %2039, 16
  %2044 = uitofp i32 %2043 to float
  %2045 = fmul fast float %2044, 0x3EF0002000000000
  %2046 = fsub fast float %44, %2042
  %2047 = fdiv fast float %2046, %2033
  %2048 = fsub fast float %45, %2045
  %2049 = fdiv fast float %2048, %2036
  %2050 = add nuw nsw i32 %1734, 16
  %2051 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %2050, i32 undef)  ; BufferLoad(srv,index,wot)
  %2052 = extractvalue %dx.types.ResRet.f32 %2051, 0
  %2053 = fcmp fast olt float %2052, 1.000000e+01
  %2054 = uitofp i1 %2053 to float
  %2055 = fdiv fast float 2.400000e+02, %2052
  %2056 = call float @dx.op.unary.f32(i32 7, float %2055)  ; Saturate(value)
  %2057 = fdiv fast float 3.200000e+02, %2052
  %2058 = call float @dx.op.unary.f32(i32 7, float %2057)  ; Saturate(value)
  %2059 = fmul fast float %2058, 5.000000e-01
  %2060 = fadd fast float %2059, 2.500000e-01
  %2061 = fdiv fast float 3.200000e+01, %2060
  %2062 = select i1 %2053, float 3.200000e+01, float %2061
  %2063 = fmul fast float %2062, 1.600000e+01
  %2064 = fmul fast float %2062, 9.000000e+00
  %2065 = fmul fast float %2033, %2047
  %2066 = fmul fast float %2065, %2063
  %2067 = fmul fast float %2036, %2049
  %2068 = fmul fast float %2067, %2064
  %2069 = call float @dx.op.unary.f32(i32 29, float %2066)  ; Round_z(value)
  %2070 = call float @dx.op.unary.f32(i32 29, float %2068)  ; Round_z(value)
  %2071 = call float @dx.op.unary.f32(i32 7, float %2009)  ; Saturate(value)
  %2072 = fmul fast float %2071, 2.000000e+00
  %2073 = fsub fast float 3.000000e+00, %2072
  %2074 = fmul fast float %2056, 4.000000e+01
  %2075 = fmul fast float %2054, 1.000000e+02
  %2076 = fadd fast float %2075, %2074
  %2077 = fmul fast float %2027, %2076
  %2078 = fptoui float %2077 to i32
  %2079 = uitofp i32 %63 to float
  %2080 = uitofp i32 %64 to float
  %2081 = fptoui float %2079 to i32
  %2082 = fptoui float %2080 to i32
  %2083 = lshr i32 %2082, 2
  %2084 = mul i32 %84, %2083
  %2085 = lshr i32 %2081, 3
  %2086 = add i32 %81, %2085
  %2087 = add i32 %2086, %100
  %2088 = add i32 %2087, %2084
  %2089 = shl i32 %2088, 2
  %2090 = shl i32 %2082, 3
  %2091 = and i32 %2090, 24
  %2092 = and i32 %2081, 7
  %2093 = or i32 %2091, %2092
  %2094 = shl i32 1, %2093
  %2095 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %2089, i32 undef)  ; BufferLoad(srv,index,wot)
  %2096 = extractvalue %dx.types.ResRet.i32 %2095, 0
  %2097 = and i32 %2096, %2094
  %2098 = icmp ne i32 %2097, 0
  %2099 = icmp eq i32 %2078, 0
  br i1 %2099, label %2216, label %2100, !dx.controlflow.hints !52

; <label>:2100                                    ; preds = %1993
  %2101 = uitofp i32 %2078 to float
  %2102 = fmul fast float %65, 5.000000e-01
  %2103 = fmul fast float %2102, %2101
  %2104 = fmul fast float %66, 5.000000e-01
  %2105 = fmul fast float %2104, %2101
  %2106 = call float @dx.op.binary.f32(i32 35, float 5.000000e-01, float %2103)  ; FMax(a,b)
  %2107 = call float @dx.op.binary.f32(i32 35, float 5.000000e-01, float %2105)  ; FMax(a,b)
  br label %2108

; <label>:2108                                    ; preds = %2203, %2100
  %2109 = phi float [ 0.000000e+00, %2100 ], [ %2206, %2203 ]
  %2110 = phi i32 [ 0, %2100 ], [ %2207, %2203 ]
  %2111 = fmul fast float %44, 0x3FF280E1E0000000
  %2112 = fmul fast float %45, 0x3FF280E1E0000000
  %2113 = sitofp i32 %2110 to float
  %2114 = fmul fast float %2113, 0x3FB99999A0000000
  %2115 = fadd fast float %2114, %2111
  %2116 = fadd fast float %2114, %2112
  %2117 = fmul fast float %2115, 1.024000e+03
  %2118 = fmul fast float %2116, 1.024000e+03
  %2119 = fadd fast float %2117, -5.120000e+02
  %2120 = fadd fast float %2118, -5.120000e+02
  %2121 = fmul fast float %2115, 0x4081BEDF00000000
  %2122 = fadd fast float %2121, 0xC071BEDF00000000
  %2123 = call float @dx.op.unary.f32(i32 22, float %2122)  ; Frc(value)
  %2124 = fmul fast float %2119, %2123
  %2125 = fadd fast float %2124, %2120
  %2126 = fmul fast float %2116, 0x4073BEBE20000000
  %2127 = fadd fast float %2126, 0xC063BEBE20000000
  %2128 = call float @dx.op.unary.f32(i32 22, float %2127)  ; Frc(value)
  %2129 = fmul fast float %2120, %2128
  %2130 = fadd fast float %2129, %2119
  %2131 = fmul fast float %2125, %2130
  %2132 = call float @dx.op.unary.f32(i32 22, float %2131)  ; Frc(value)
  %2133 = fmul fast float %2132, 2.000000e+00
  %2134 = fadd fast float %2133, -1.000000e+00
  %2135 = fmul fast float %2134, %2106
  %2136 = fmul fast float %44, 0x3FEB681740000000
  %2137 = fmul fast float %45, 0x3FEB681740000000
  %2138 = fmul fast float %2113, 0x3FC99999A0000000
  %2139 = fadd fast float %2138, 1.250000e-01
  %2140 = fadd fast float %2139, %2136
  %2141 = fadd fast float %2139, %2137
  %2142 = fmul fast float %2140, 1.024000e+03
  %2143 = fmul fast float %2141, 1.024000e+03
  %2144 = fadd fast float %2142, -5.120000e+02
  %2145 = fadd fast float %2143, -5.120000e+02
  %2146 = fmul fast float %2140, 0x4081BEDF00000000
  %2147 = fadd fast float %2146, 0xC071BEDF00000000
  %2148 = call float @dx.op.unary.f32(i32 22, float %2147)  ; Frc(value)
  %2149 = fmul fast float %2144, %2148
  %2150 = fadd fast float %2149, %2145
  %2151 = fmul fast float %2141, 0x4073BEBE20000000
  %2152 = fadd fast float %2151, 0xC063BEBE20000000
  %2153 = call float @dx.op.unary.f32(i32 22, float %2152)  ; Frc(value)
  %2154 = fmul fast float %2145, %2153
  %2155 = fadd fast float %2154, %2144
  %2156 = fmul fast float %2150, %2155
  %2157 = call float @dx.op.unary.f32(i32 22, float %2156)  ; Frc(value)
  %2158 = fmul fast float %2157, 2.000000e+00
  %2159 = fadd fast float %2158, -1.000000e+00
  %2160 = fmul fast float %2159, %2107
  %2161 = fptosi float %2135 to i32
  %2162 = sitofp i32 %2161 to float
  %2163 = fadd fast float %2162, %2079
  %2164 = fptosi float %2163 to i32
  %2165 = fptosi float %2160 to i32
  %2166 = sitofp i32 %2165 to float
  %2167 = fadd fast float %2166, %2080
  %2168 = fptosi float %2167 to i32
  %2169 = or i32 %2168, %2164
  %2170 = icmp slt i32 %2169, 0
  %2171 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %2172 = extractvalue %dx.types.CBufRet.f32 %2171, 0
  %2173 = extractvalue %dx.types.CBufRet.f32 %2171, 1
  %2174 = fptosi float %2172 to i32
  %2175 = fptosi float %2173 to i32
  %2176 = icmp sge i32 %2164, %2174
  %2177 = icmp sge i32 %2168, %2175
  %2178 = or i1 %2176, %2177
  %2179 = or i1 %2170, %2178
  br i1 %2179, label %2203, label %2180, !dx.controlflow.hints !49

; <label>:2180                                    ; preds = %2108
  %2181 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %18, i32 51)  ; CBufferLoadLegacy(handle,regIndex)
  %2182 = extractvalue %dx.types.CBufRet.i32 %2181, 1
  %2183 = shl i32 %2182, 2
  %2184 = extractvalue %dx.types.CBufRet.i32 %2181, 3
  %2185 = shl i32 %2184, 1
  %2186 = lshr i32 %2168, 2
  %2187 = extractvalue %dx.types.CBufRet.i32 %2181, 2
  %2188 = mul i32 %2187, %2186
  %2189 = lshr i32 %2164, 3
  %2190 = add i32 %2183, %2189
  %2191 = add i32 %2190, %2185
  %2192 = add i32 %2191, %2188
  %2193 = shl i32 %2192, 2
  %2194 = shl i32 %2168, 3
  %2195 = and i32 %2194, 24
  %2196 = and i32 %2164, 7
  %2197 = or i32 %2195, %2196
  %2198 = shl i32 1, %2197
  %2199 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %2193, i32 undef)  ; BufferLoad(srv,index,wot)
  %2200 = extractvalue %dx.types.ResRet.i32 %2199, 0
  %2201 = and i32 %2200, %2198
  %2202 = icmp ne i32 %2201, 0
  br label %2203

; <label>:2203                                    ; preds = %2180, %2108
  %2204 = phi i1 [ %2202, %2180 ], [ false, %2108 ]
  %2205 = uitofp i1 %2204 to float
  %2206 = fadd fast float %2205, %2109
  %2207 = add nuw nsw i32 %2110, 1
  %2208 = icmp eq i32 %2207, 5
  br i1 %2208, label %2209, label %2108

; <label>:2209                                    ; preds = %2203
  %2210 = uitofp i1 %2098 to float
  %2211 = fmul fast float %2210, 0x3FC99999A0000000
  %2212 = fmul fast float %2211, %2206
  %2213 = fadd fast float %2212, -5.000000e-01
  %2214 = fmul fast float %2213, 2.000000e+00
  %2215 = call float @dx.op.unary.f32(i32 7, float %2214)  ; Saturate(value)
  br label %2216

; <label>:2216                                    ; preds = %2209, %1993
  %2217 = phi float [ %2215, %2209 ], [ 0.000000e+00, %1993 ]
  %2218 = fdiv fast float %2069, %2063
  %2219 = fdiv fast float %2070, %2064
  %2220 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2221 = extractvalue %dx.types.CBufRet.f32 %2220, 3
  %2222 = fmul fast float %2221, %2018
  %2223 = fadd fast float %2222, %2218
  %2224 = fsub fast float %2219, %2222
  %2225 = call float @dx.op.unary.f32(i32 22, float %2223)  ; Frc(value)
  %2226 = call float @dx.op.unary.f32(i32 22, float %2224)  ; Frc(value)
  %2227 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %15, float %2225, float %2226, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2228 = extractvalue %dx.types.ResRet.f32 %2227, 0
  %2229 = fmul fast float %2228, %2023
  %2230 = call float @dx.op.unary.f32(i32 7, float %2229)  ; Saturate(value)
  %2231 = call float @dx.op.binary.f32(i32 35, float 0x3F847AE140000000, float %2230)  ; FMax(a,b)
  %2232 = fsub fast float -5.000000e-01, %2069
  %2233 = fadd fast float %2232, %2066
  %2234 = fsub fast float -5.000000e-01, %2070
  %2235 = fadd fast float %2234, %2068
  %2236 = fmul fast float %2233, 2.000000e+00
  %2237 = fmul fast float %2235, 2.000000e+00
  %2238 = call float @dx.op.dot2.f32(i32 54, float %2236, float %2237, float %2236, float %2237)  ; Dot2(ax,ay,bx,by)
  %2239 = call float @dx.op.unary.f32(i32 24, float %2238)  ; Sqrt(value)
  %2240 = fsub fast float 1.000000e+00, %2239
  %2241 = fmul fast float %2240, 2.000000e+00
  %2242 = call float @dx.op.unary.f32(i32 7, float %2241)  ; Saturate(value)
  %2243 = fadd fast float %2222, %2049
  %2244 = call float @dx.op.unary.f32(i32 22, float %2243)  ; Frc(value)
  %2245 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %14, float %2047, float %2244, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2246 = extractvalue %dx.types.ResRet.f32 %2245, 3
  %2247 = call float @dx.op.unary.f32(i32 7, float %2217)  ; Saturate(value)
  %2248 = fmul fast float %2246, %2010
  %2249 = fsub fast float %2247, %2248
  %2250 = call float @dx.op.unary.f32(i32 7, float %2249)  ; Saturate(value)
  %2251 = fmul fast float %2246, 1.250000e+00
  %2252 = fsub fast float %2247, %2251
  %2253 = call float @dx.op.unary.f32(i32 7, float %2252)  ; Saturate(value)
  %2254 = fmul fast float %2253, %2253
  %2255 = fmul fast float %2254, %2253
  %2256 = call float @dx.op.unary.f32(i32 7, float %2255)  ; Saturate(value)
  %2257 = fmul fast float %2256, 0x40285C2900000000
  %2258 = fsub fast float 1.400000e+01, %2257
  %2259 = fptoui float %2258 to i32
  %2260 = call float @dx.op.unary.f32(i32 22, float %2258)  ; Frc(value)
  %2261 = mul i32 %2259, 3
  %2262 = add i32 0, %2261
  %2263 = getelementptr [45 x float], [45 x float]* @supp_ramp.v.1dim, i32 0, i32 %2262
  %2264 = load float, float* %2263, align 4
  %2265 = mul i32 %2259, 3
  %2266 = add i32 1, %2265
  %2267 = getelementptr [45 x float], [45 x float]* @supp_ramp.v.1dim, i32 0, i32 %2266
  %2268 = load float, float* %2267, align 4
  %2269 = mul i32 %2259, 3
  %2270 = add i32 2, %2269
  %2271 = getelementptr [45 x float], [45 x float]* @supp_ramp.v.1dim, i32 0, i32 %2270
  %2272 = load float, float* %2271, align 4
  %2273 = add i32 %2259, 1
  %2274 = mul i32 %2273, 3
  %2275 = add i32 0, %2274
  %2276 = getelementptr [45 x float], [45 x float]* @supp_ramp.v.1dim, i32 0, i32 %2275
  %2277 = load float, float* %2276, align 4
  %2278 = mul i32 %2273, 3
  %2279 = add i32 1, %2278
  %2280 = getelementptr [45 x float], [45 x float]* @supp_ramp.v.1dim, i32 0, i32 %2279
  %2281 = load float, float* %2280, align 4
  %2282 = mul i32 %2273, 3
  %2283 = add i32 2, %2282
  %2284 = getelementptr [45 x float], [45 x float]* @supp_ramp.v.1dim, i32 0, i32 %2283
  %2285 = load float, float* %2284, align 4
  %2286 = fsub fast float %2277, %2264
  %2287 = fsub fast float %2281, %2268
  %2288 = fsub fast float %2285, %2272
  %2289 = fmul fast float %2286, %2260
  %2290 = fmul fast float %2287, %2260
  %2291 = fmul fast float %2288, %2260
  %2292 = fadd fast float %2289, %2264
  %2293 = fadd fast float %2290, %2268
  %2294 = fadd fast float %2291, %2272
  %2295 = fmul fast float %2006, %2292
  %2296 = fmul fast float %2007, %2293
  %2297 = fmul fast float %2008, %2294
  %2298 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 17)  ; CBufferLoadLegacy(handle,regIndex)
  %2299 = extractvalue %dx.types.CBufRet.f32 %2298, 0
  %2300 = fmul fast float %2071, %2071
  %2301 = fmul fast float %2300, %2073
  %2302 = fmul fast float %2301, %2231
  %2303 = fmul fast float %2302, %2242
  %2304 = fmul fast float %2303, %2250
  %2305 = fmul fast float %2304, %2299
  %2306 = fmul fast float %2295, %2295
  %2307 = fmul fast float %2306, 5.000000e+00
  %2308 = fmul fast float %2307, %2305
  %2309 = fmul fast float %2296, %2296
  %2310 = fmul fast float %2309, 5.000000e+00
  %2311 = fmul fast float %2310, %2305
  %2312 = fmul fast float %2305, 5.000000e+00
  %2313 = fmul fast float %2297, %2297
  %2314 = fmul fast float %2313, %2312
  %2315 = call float @dx.op.binary.f32(i32 36, float %2308, float 2.000000e+00)  ; FMin(a,b)
  %2316 = call float @dx.op.binary.f32(i32 36, float %2311, float 2.000000e+00)  ; FMin(a,b)
  %2317 = call float @dx.op.binary.f32(i32 36, float %2314, float 2.000000e+00)  ; FMin(a,b)
  %2318 = select i1 %2053, float 0x3FD3333340000000, float 7.500000e-01
  %2319 = fmul float %2318, %2305
  br label %5489

; <label>:2320                                    ; preds = %621
  %2321 = and i32 %636, 511
  %2322 = mul nuw nsw i32 %2321, 20
  %2323 = add nuw nsw i32 %2322, 4
  %2324 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %2323, i32 undef)  ; BufferLoad(srv,index,wot)
  %2325 = extractvalue %dx.types.ResRet.i32 %2324, 0
  %2326 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %2322, i32 undef)  ; BufferLoad(srv,index,wot)
  %2327 = extractvalue %dx.types.ResRet.i32 %2326, 0
  %2328 = and i32 %2327, 255
  %2329 = uitofp i32 %2328 to float
  %2330 = lshr i32 %2327, 8
  %2331 = and i32 %2330, 255
  %2332 = uitofp i32 %2331 to float
  %2333 = lshr i32 %2327, 16
  %2334 = and i32 %2333, 255
  %2335 = uitofp i32 %2334 to float
  %2336 = lshr i32 %2327, 24
  %2337 = uitofp i32 %2336 to float
  %2338 = fmul fast float %2329, 0x3F70101020000000
  %2339 = fmul fast float %2332, 0x3F70101020000000
  %2340 = fmul fast float %2335, 0x3F70101020000000
  %2341 = fmul fast float %2337, 0x3F70101020000000
  %2342 = lshr i32 %2325, 8
  %2343 = and i32 %2342, 65535
  %2344 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2343)  ; LegacyF16ToF32(value)
  %2345 = fcmp fast oeq float %2344, 0.000000e+00
  br i1 %2345, label %2447, label %2346, !dx.controlflow.hints !48

; <label>:2346                                    ; preds = %2320
  %2347 = fmul fast float %2344, %65
  %2348 = fadd fast float %2347, 1.500000e+00
  %2349 = fptosi float %2348 to i32
  %2350 = fmul fast float %2344, %66
  %2351 = fadd fast float %2350, 1.500000e+00
  %2352 = fptosi float %2351 to i32
  %2353 = call i32 @dx.op.binary.i32(i32 37, i32 1, i32 %2349)  ; IMax(a,b)
  %2354 = call i32 @dx.op.binary.i32(i32 37, i32 1, i32 %2352)  ; IMax(a,b)
  %2355 = sub i32 %64, %2354
  %2356 = or i32 %2355, %63
  %2357 = icmp slt i32 %2356, 0
  %2358 = fptosi float %59 to i32
  %2359 = fptosi float %60 to i32
  %2360 = icmp sge i32 %63, %2358
  %2361 = icmp sge i32 %2355, %2359
  %2362 = or i1 %2360, %2361
  %2363 = or i1 %2357, %2362
  br i1 %2363, label %2377, label %2364, !dx.controlflow.hints !49

; <label>:2364                                    ; preds = %2346
  %2365 = lshr i32 %2355, 2
  %2366 = mul i32 %84, %2365
  %2367 = add i32 %102, %2366
  %2368 = shl i32 %2367, 2
  %2369 = shl i32 %2355, 3
  %2370 = and i32 %2369, 24
  %2371 = or i32 %2370, %93
  %2372 = shl i32 1, %2371
  %2373 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %2368, i32 undef)  ; BufferLoad(srv,index,wot)
  %2374 = extractvalue %dx.types.ResRet.i32 %2373, 0
  %2375 = and i32 %2374, %2372
  %2376 = icmp ne i32 %2375, 0
  br label %2377

; <label>:2377                                    ; preds = %2364, %2346
  %2378 = phi i1 [ %2376, %2364 ], [ false, %2346 ]
  %2379 = add i32 %2354, %64
  %2380 = or i32 %2379, %63
  %2381 = icmp slt i32 %2380, 0
  %2382 = icmp sge i32 %2379, %2359
  %2383 = or i1 %2360, %2382
  %2384 = or i1 %2381, %2383
  br i1 %2384, label %2398, label %2385, !dx.controlflow.hints !49

; <label>:2385                                    ; preds = %2377
  %2386 = lshr i32 %2379, 2
  %2387 = mul i32 %84, %2386
  %2388 = add i32 %102, %2387
  %2389 = shl i32 %2388, 2
  %2390 = shl i32 %2379, 3
  %2391 = and i32 %2390, 24
  %2392 = or i32 %2391, %93
  %2393 = shl i32 1, %2392
  %2394 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %2389, i32 undef)  ; BufferLoad(srv,index,wot)
  %2395 = extractvalue %dx.types.ResRet.i32 %2394, 0
  %2396 = and i32 %2395, %2393
  %2397 = icmp ne i32 %2396, 0
  br label %2398

; <label>:2398                                    ; preds = %2385, %2377
  %2399 = phi i1 [ %2397, %2385 ], [ false, %2377 ]
  %2400 = and i1 %2378, %2399
  %2401 = sub i32 %63, %2353
  %2402 = or i32 %2401, %64
  %2403 = icmp slt i32 %2402, 0
  %2404 = icmp sge i32 %2401, %2358
  %2405 = icmp sge i32 %64, %2359
  %2406 = or i1 %2404, %2405
  %2407 = or i1 %2403, %2406
  br i1 %2407, label %2421, label %2408, !dx.controlflow.hints !49

; <label>:2408                                    ; preds = %2398
  %2409 = lshr i32 %2401, 3
  %2410 = add i32 %81, %2409
  %2411 = add i32 %2410, %100
  %2412 = add i32 %2411, %85
  %2413 = shl i32 %2412, 2
  %2414 = and i32 %2401, 7
  %2415 = or i32 %2414, %92
  %2416 = shl i32 1, %2415
  %2417 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %2413, i32 undef)  ; BufferLoad(srv,index,wot)
  %2418 = extractvalue %dx.types.ResRet.i32 %2417, 0
  %2419 = and i32 %2418, %2416
  %2420 = icmp ne i32 %2419, 0
  br label %2421

; <label>:2421                                    ; preds = %2408, %2398
  %2422 = phi i1 [ %2420, %2408 ], [ false, %2398 ]
  %2423 = and i1 %2400, %2422
  %2424 = add i32 %2353, %63
  %2425 = or i32 %2424, %64
  %2426 = icmp slt i32 %2425, 0
  %2427 = icmp sge i32 %2424, %2358
  %2428 = or i1 %2427, %2405
  %2429 = or i1 %2426, %2428
  br i1 %2429, label %2443, label %2430, !dx.controlflow.hints !49

; <label>:2430                                    ; preds = %2421
  %2431 = lshr i32 %2424, 3
  %2432 = add i32 %81, %2431
  %2433 = add i32 %2432, %100
  %2434 = add i32 %2433, %85
  %2435 = shl i32 %2434, 2
  %2436 = and i32 %2424, 7
  %2437 = or i32 %2436, %92
  %2438 = shl i32 1, %2437
  %2439 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %2435, i32 undef)  ; BufferLoad(srv,index,wot)
  %2440 = extractvalue %dx.types.ResRet.i32 %2439, 0
  %2441 = and i32 %2440, %2438
  %2442 = icmp ne i32 %2441, 0
  br label %2443

; <label>:2443                                    ; preds = %2430, %2421
  %2444 = phi i1 [ %2442, %2430 ], [ false, %2421 ]
  %2445 = and i1 %2423, %2444
  %2446 = xor i1 %2445, true
  br label %2447

; <label>:2447                                    ; preds = %2443, %2320
  %2448 = phi i1 [ %2446, %2443 ], [ false, %2320 ]
  %2449 = and i32 %636, 1114112
  %2450 = icmp ne i32 %2449, 0
  %2451 = and i1 %2450, %117
  %2452 = or i1 %2451, %2448
  %2453 = select i1 %2452, float %2338, float 0.000000e+00
  %2454 = select i1 %2452, float %2339, float 0.000000e+00
  %2455 = select i1 %2452, float %2340, float 0.000000e+00
  %2456 = select i1 %2452, float %2341, float 0.000000e+00
  br label %5489

; <label>:2457                                    ; preds = %621
  %2458 = and i32 %636, 511
  %2459 = mul nuw nsw i32 %2458, 20
  %2460 = add nuw nsw i32 %2459, 4
  %2461 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %2460, i32 undef)  ; BufferLoad(srv,index,wot)
  %2462 = extractvalue %dx.types.ResRet.i32 %2461, 0
  %2463 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %2459, i32 undef)  ; BufferLoad(srv,index,wot)
  %2464 = extractvalue %dx.types.ResRet.i32 %2463, 0
  %2465 = and i32 %636, 524288
  %2466 = icmp ne i32 %2465, 0
  %2467 = and i32 %636, 2097152
  %2468 = icmp ne i32 %2467, 0
  %2469 = lshr i32 %2462, 8
  %2470 = and i32 %2469, 65535
  %2471 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2470)  ; LegacyF16ToF32(value)
  %2472 = lshr i32 %2462, 24
  %2473 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 228)  ; CBufferLoadLegacy(handle,regIndex)
  %2474 = extractvalue %dx.types.CBufRet.f32 %2473, 2
  %2475 = extractvalue %dx.types.CBufRet.f32 %2473, 0
  %2476 = call float @dx.op.binary.f32(i32 35, float %44, float %2475)  ; FMax(a,b)
  %2477 = call float @dx.op.binary.f32(i32 36, float %2476, float %2474)  ; FMin(a,b)
  %2478 = call float @dx.op.binary.f32(i32 36, float %44, float %2475)  ; FMin(a,b)
  %2479 = call float @dx.op.binary.f32(i32 35, float %2478, float %2477)  ; FMax(a,b)
  %2480 = fcmp fast oeq float %44, %2479
  %2481 = extractvalue %dx.types.CBufRet.f32 %2473, 3
  %2482 = extractvalue %dx.types.CBufRet.f32 %2473, 1
  %2483 = call float @dx.op.binary.f32(i32 35, float %45, float %2482)  ; FMax(a,b)
  %2484 = call float @dx.op.binary.f32(i32 36, float %2483, float %2481)  ; FMin(a,b)
  %2485 = call float @dx.op.binary.f32(i32 36, float %45, float %2482)  ; FMin(a,b)
  %2486 = call float @dx.op.binary.f32(i32 35, float %2485, float %2484)  ; FMax(a,b)
  %2487 = fcmp fast oeq float %45, %2486
  %2488 = and i1 %2480, %2487
  %2489 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 224)  ; CBufferLoadLegacy(handle,regIndex)
  %2490 = extractvalue %dx.types.CBufRet.f32 %2489, 1
  %2491 = select i1 %2488, float %2490, float 1.000000e+00
  %2492 = icmp ne i32 %2472, 0
  %2493 = and i1 %99, %2492
  br i1 %2493, label %2494, label %2548, !dx.controlflow.hints !55

; <label>:2494                                    ; preds = %2457
  %2495 = sitofp i32 %2472 to float
  %2496 = fmul fast float %2495, 0x3F70101020000000
  %2497 = fmul fast float %2496, %2491
  %2498 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %2499 = extractvalue %dx.types.CBufRet.f32 %2498, 3
  %2500 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %2501 = extractvalue %dx.types.CBufRet.f32 %2500, 2
  %2502 = fmul fast float %2501, %2497
  %2503 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2504 = extractvalue %dx.types.CBufRet.f32 %2503, 0
  %2505 = extractvalue %dx.types.CBufRet.f32 %2503, 1
  %2506 = extractvalue %dx.types.CBufRet.f32 %2503, 2
  %2507 = extractvalue %dx.types.CBufRet.f32 %2503, 3
  %2508 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %2509 = extractvalue %dx.types.CBufRet.f32 %2508, 0
  %2510 = extractvalue %dx.types.CBufRet.f32 %2508, 1
  %2511 = extractvalue %dx.types.CBufRet.f32 %2508, 2
  %2512 = extractvalue %dx.types.CBufRet.f32 %2508, 3
  %2513 = select i1 %2466, float %2504, float %2509
  %2514 = select i1 %2466, float %2505, float %2510
  %2515 = select i1 %2466, float %2506, float %2511
  %2516 = select i1 %2466, float %2507, float %2512
  %2517 = fmul fast float %2513, %2497
  %2518 = fmul fast float %2514, %2497
  %2519 = fmul fast float %2515, %2497
  %2520 = fmul fast float %2516, %2497
  br i1 %116, label %2542, label %2521, !dx.controlflow.hints !46

; <label>:2521                                    ; preds = %2494
  %2522 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 10)  ; CBufferLoadLegacy(handle,regIndex)
  %2523 = extractvalue %dx.types.CBufRet.f32 %2522, 0
  %2524 = extractvalue %dx.types.CBufRet.f32 %2522, 1
  %2525 = extractvalue %dx.types.CBufRet.f32 %2522, 2
  %2526 = extractvalue %dx.types.CBufRet.f32 %2522, 3
  %2527 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %2528 = extractvalue %dx.types.CBufRet.f32 %2527, 0
  %2529 = extractvalue %dx.types.CBufRet.f32 %2527, 1
  %2530 = extractvalue %dx.types.CBufRet.f32 %2527, 2
  %2531 = extractvalue %dx.types.CBufRet.f32 %2527, 3
  %2532 = extractvalue %dx.types.CBufRet.f32 %2500, 1
  %2533 = fmul fast float %2528, %2517
  %2534 = fmul fast float %2533, %2532
  %2535 = fmul fast float %2529, %2518
  %2536 = fmul fast float %2535, %2532
  %2537 = fmul fast float %2530, %2519
  %2538 = fmul fast float %2537, %2532
  %2539 = fmul fast float %2531, %2520
  %2540 = fmul fast float %2539, %2532
  %2541 = fmul fast float %2532, %2502
  br label %2626

; <label>:2542                                    ; preds = %2494
  %2543 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %2544 = extractvalue %dx.types.CBufRet.f32 %2543, 0
  %2545 = extractvalue %dx.types.CBufRet.f32 %2543, 1
  %2546 = extractvalue %dx.types.CBufRet.f32 %2543, 2
  %2547 = extractvalue %dx.types.CBufRet.f32 %2543, 3
  br label %2626

; <label>:2548                                    ; preds = %2457
  %2549 = lshr i32 %2464, 24
  %2550 = uitofp i32 %2549 to float
  %2551 = fmul fast float %2550, 0x3F70101020000000
  %2552 = lshr i32 %2464, 16
  %2553 = and i32 %2552, 255
  %2554 = uitofp i32 %2553 to float
  %2555 = fmul fast float %2554, 0x3F70101020000000
  %2556 = lshr i32 %2464, 8
  %2557 = and i32 %2556, 255
  %2558 = uitofp i32 %2557 to float
  %2559 = fmul fast float %2558, 0x3F70101020000000
  %2560 = and i32 %2464, 255
  %2561 = uitofp i32 %2560 to float
  %2562 = fmul fast float %2561, 0x3F70101020000000
  %2563 = and i32 %636, 65536
  %2564 = icmp ne i32 %2563, 0
  %2565 = select i1 %2564, float 1.000000e+00, float 0.000000e+00
  %2566 = and i32 %636, 32768
  %2567 = icmp ne i32 %2566, 0
  %2568 = select i1 %2567, float 0.000000e+00, float 1.000000e+00
  %2569 = select i1 %99, float %2491, float %2568
  %2570 = fmul fast float %2562, %2569
  %2571 = fmul fast float %2559, %2569
  %2572 = fmul fast float %2555, %2569
  %2573 = fmul fast float %2551, %2569
  br i1 %116, label %2603, label %2574, !dx.controlflow.hints !47

; <label>:2574                                    ; preds = %2548
  %2575 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2576 = extractvalue %dx.types.CBufRet.f32 %2575, 0
  %2577 = extractvalue %dx.types.CBufRet.f32 %2575, 1
  %2578 = extractvalue %dx.types.CBufRet.f32 %2575, 2
  %2579 = extractvalue %dx.types.CBufRet.f32 %2575, 3
  %2580 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %2581 = extractvalue %dx.types.CBufRet.f32 %2580, 0
  %2582 = extractvalue %dx.types.CBufRet.f32 %2580, 1
  %2583 = extractvalue %dx.types.CBufRet.f32 %2580, 2
  %2584 = extractvalue %dx.types.CBufRet.f32 %2580, 3
  %2585 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %2586 = extractvalue %dx.types.CBufRet.f32 %2585, 0
  %2587 = fsub fast float %2570, %2569
  %2588 = fsub fast float %2571, %2569
  %2589 = fsub fast float %2572, %2569
  %2590 = fsub fast float %2573, %2569
  %2591 = fmul fast float %2586, %2587
  %2592 = fmul fast float %2586, %2588
  %2593 = fmul fast float %2586, %2589
  %2594 = fmul fast float %2586, %2590
  %2595 = fadd fast float %2591, %2569
  %2596 = fadd fast float %2592, %2569
  %2597 = fadd fast float %2593, %2569
  %2598 = fadd fast float %2594, %2569
  %2599 = fmul fast float %2595, %2581
  %2600 = fmul fast float %2596, %2582
  %2601 = fmul fast float %2597, %2583
  %2602 = fmul fast float %2598, %2584
  br label %2609

; <label>:2603                                    ; preds = %2548
  %2604 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %2605 = extractvalue %dx.types.CBufRet.f32 %2604, 0
  %2606 = extractvalue %dx.types.CBufRet.f32 %2604, 1
  %2607 = extractvalue %dx.types.CBufRet.f32 %2604, 2
  %2608 = extractvalue %dx.types.CBufRet.f32 %2604, 3
  br label %2609

; <label>:2609                                    ; preds = %2603, %2574
  %2610 = phi float [ %2599, %2574 ], [ %2570, %2603 ]
  %2611 = phi float [ %2600, %2574 ], [ %2571, %2603 ]
  %2612 = phi float [ %2601, %2574 ], [ %2572, %2603 ]
  %2613 = phi float [ %2602, %2574 ], [ %2573, %2603 ]
  %2614 = phi float [ %2576, %2574 ], [ %2605, %2603 ]
  %2615 = phi float [ %2577, %2574 ], [ %2606, %2603 ]
  %2616 = phi float [ %2578, %2574 ], [ %2607, %2603 ]
  %2617 = phi float [ %2579, %2574 ], [ %2608, %2603 ]
  %2618 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2619 = extractvalue %dx.types.CBufRet.f32 %2618, 0
  %2620 = fmul fast float %2619, 2.000000e+00
  %2621 = select i1 %2468, float %2620, float 1.000000e+00
  %2622 = fmul fast float %2621, %2610
  %2623 = fmul fast float %2621, %2611
  %2624 = fmul fast float %2621, %2612
  %2625 = fmul fast float %2621, %2613
  br label %2626

; <label>:2626                                    ; preds = %2609, %2542, %2521
  %2627 = phi float [ %2622, %2609 ], [ %2534, %2521 ], [ %2517, %2542 ]
  %2628 = phi float [ %2623, %2609 ], [ %2536, %2521 ], [ %2518, %2542 ]
  %2629 = phi float [ %2624, %2609 ], [ %2538, %2521 ], [ %2519, %2542 ]
  %2630 = phi float [ %2625, %2609 ], [ %2540, %2521 ], [ %2520, %2542 ]
  %2631 = phi float [ %2614, %2609 ], [ %2523, %2521 ], [ %2544, %2542 ]
  %2632 = phi float [ %2615, %2609 ], [ %2524, %2521 ], [ %2545, %2542 ]
  %2633 = phi float [ %2616, %2609 ], [ %2525, %2521 ], [ %2546, %2542 ]
  %2634 = phi float [ %2617, %2609 ], [ %2526, %2521 ], [ %2547, %2542 ]
  %2635 = phi float [ %2565, %2609 ], [ %2541, %2521 ], [ %2502, %2542 ]
  %2636 = phi float [ %2471, %2609 ], [ %2499, %2521 ], [ %2499, %2542 ]
  %2637 = fcmp fast oeq float %2636, 0.000000e+00
  br i1 %2637, label %2739, label %2638, !dx.controlflow.hints !48

; <label>:2638                                    ; preds = %2626
  %2639 = fmul fast float %2636, %65
  %2640 = fadd fast float %2639, 1.500000e+00
  %2641 = fptosi float %2640 to i32
  %2642 = fmul fast float %2636, %66
  %2643 = fadd fast float %2642, 1.500000e+00
  %2644 = fptosi float %2643 to i32
  %2645 = call i32 @dx.op.binary.i32(i32 37, i32 1, i32 %2641)  ; IMax(a,b)
  %2646 = call i32 @dx.op.binary.i32(i32 37, i32 1, i32 %2644)  ; IMax(a,b)
  %2647 = sub i32 %64, %2646
  %2648 = or i32 %2647, %63
  %2649 = icmp slt i32 %2648, 0
  %2650 = fptosi float %59 to i32
  %2651 = fptosi float %60 to i32
  %2652 = icmp sge i32 %63, %2650
  %2653 = icmp sge i32 %2647, %2651
  %2654 = or i1 %2652, %2653
  %2655 = or i1 %2649, %2654
  br i1 %2655, label %2669, label %2656, !dx.controlflow.hints !49

; <label>:2656                                    ; preds = %2638
  %2657 = lshr i32 %2647, 2
  %2658 = mul i32 %84, %2657
  %2659 = add i32 %102, %2658
  %2660 = shl i32 %2659, 2
  %2661 = shl i32 %2647, 3
  %2662 = and i32 %2661, 24
  %2663 = or i32 %2662, %93
  %2664 = shl i32 1, %2663
  %2665 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %2660, i32 undef)  ; BufferLoad(srv,index,wot)
  %2666 = extractvalue %dx.types.ResRet.i32 %2665, 0
  %2667 = and i32 %2666, %2664
  %2668 = icmp ne i32 %2667, 0
  br label %2669

; <label>:2669                                    ; preds = %2656, %2638
  %2670 = phi i1 [ %2668, %2656 ], [ false, %2638 ]
  %2671 = add i32 %2646, %64
  %2672 = or i32 %2671, %63
  %2673 = icmp slt i32 %2672, 0
  %2674 = icmp sge i32 %2671, %2651
  %2675 = or i1 %2652, %2674
  %2676 = or i1 %2673, %2675
  br i1 %2676, label %2690, label %2677, !dx.controlflow.hints !49

; <label>:2677                                    ; preds = %2669
  %2678 = lshr i32 %2671, 2
  %2679 = mul i32 %84, %2678
  %2680 = add i32 %102, %2679
  %2681 = shl i32 %2680, 2
  %2682 = shl i32 %2671, 3
  %2683 = and i32 %2682, 24
  %2684 = or i32 %2683, %93
  %2685 = shl i32 1, %2684
  %2686 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %2681, i32 undef)  ; BufferLoad(srv,index,wot)
  %2687 = extractvalue %dx.types.ResRet.i32 %2686, 0
  %2688 = and i32 %2687, %2685
  %2689 = icmp ne i32 %2688, 0
  br label %2690

; <label>:2690                                    ; preds = %2677, %2669
  %2691 = phi i1 [ %2689, %2677 ], [ false, %2669 ]
  %2692 = and i1 %2670, %2691
  %2693 = sub i32 %63, %2645
  %2694 = or i32 %2693, %64
  %2695 = icmp slt i32 %2694, 0
  %2696 = icmp sge i32 %2693, %2650
  %2697 = icmp sge i32 %64, %2651
  %2698 = or i1 %2696, %2697
  %2699 = or i1 %2695, %2698
  br i1 %2699, label %2713, label %2700, !dx.controlflow.hints !49

; <label>:2700                                    ; preds = %2690
  %2701 = lshr i32 %2693, 3
  %2702 = add i32 %81, %2701
  %2703 = add i32 %2702, %100
  %2704 = add i32 %2703, %85
  %2705 = shl i32 %2704, 2
  %2706 = and i32 %2693, 7
  %2707 = or i32 %2706, %92
  %2708 = shl i32 1, %2707
  %2709 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %2705, i32 undef)  ; BufferLoad(srv,index,wot)
  %2710 = extractvalue %dx.types.ResRet.i32 %2709, 0
  %2711 = and i32 %2710, %2708
  %2712 = icmp ne i32 %2711, 0
  br label %2713

; <label>:2713                                    ; preds = %2700, %2690
  %2714 = phi i1 [ %2712, %2700 ], [ false, %2690 ]
  %2715 = and i1 %2692, %2714
  %2716 = add i32 %2645, %63
  %2717 = or i32 %2716, %64
  %2718 = icmp slt i32 %2717, 0
  %2719 = icmp sge i32 %2716, %2650
  %2720 = or i1 %2719, %2697
  %2721 = or i1 %2718, %2720
  br i1 %2721, label %2735, label %2722, !dx.controlflow.hints !49

; <label>:2722                                    ; preds = %2713
  %2723 = lshr i32 %2716, 3
  %2724 = add i32 %81, %2723
  %2725 = add i32 %2724, %100
  %2726 = add i32 %2725, %85
  %2727 = shl i32 %2726, 2
  %2728 = and i32 %2716, 7
  %2729 = or i32 %2728, %92
  %2730 = shl i32 1, %2729
  %2731 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %2727, i32 undef)  ; BufferLoad(srv,index,wot)
  %2732 = extractvalue %dx.types.ResRet.i32 %2731, 0
  %2733 = and i32 %2732, %2730
  %2734 = icmp ne i32 %2733, 0
  br label %2735

; <label>:2735                                    ; preds = %2722, %2713
  %2736 = phi i1 [ %2734, %2722 ], [ false, %2713 ]
  %2737 = and i1 %2715, %2736
  %2738 = xor i1 %2737, true
  br label %2739

; <label>:2739                                    ; preds = %2735, %2626
  %2740 = phi i1 [ %2738, %2735 ], [ false, %2626 ]
  %2741 = add nuw nsw i32 %2459, 12
  %2742 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %2741, i32 undef)  ; BufferLoad(srv,index,wot)
  %2743 = extractvalue %dx.types.ResRet.i32 %2742, 0
  %2744 = and i32 %2743, 65535
  %2745 = uitofp i32 %2744 to float
  %2746 = lshr i32 %2743, 16
  %2747 = uitofp i32 %2746 to float
  %2748 = fmul fast float %2745, 0x3EF0002000000000
  %2749 = fmul fast float %2747, 0x3EF0002000000000
  %2750 = add nuw nsw i32 %2459, 8
  %2751 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %2750, i32 undef)  ; BufferLoad(srv,index,wot)
  %2752 = extractvalue %dx.types.ResRet.i32 %2751, 0
  %2753 = and i32 %2752, 65535
  %2754 = uitofp i32 %2753 to float
  %2755 = fmul fast float %2754, 0x3EF0002000000000
  %2756 = lshr i32 %2752, 16
  %2757 = uitofp i32 %2756 to float
  %2758 = fmul fast float %2757, 0x3EF0002000000000
  %2759 = fsub fast float %44, %2755
  %2760 = fdiv fast float %2759, %2748
  %2761 = fsub fast float %45, %2758
  %2762 = fdiv fast float %2761, %2749
  %2763 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2764 = extractvalue %dx.types.CBufRet.f32 %2763, 3
  %2765 = fmul fast float %2764, 0x3FA99999A0000000
  %2766 = fadd fast float %2765, %2762
  %2767 = call float @dx.op.unary.f32(i32 22, float %2760)  ; Frc(value)
  %2768 = call float @dx.op.unary.f32(i32 22, float %2766)  ; Frc(value)
  %2769 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %14, float %2767, float %2768, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2770 = extractvalue %dx.types.ResRet.f32 %2769, 1
  %2771 = extractvalue %dx.types.ResRet.f32 %2769, 3
  %2772 = and i32 %2462, 255
  %2773 = uitofp i32 %2772 to float
  %2774 = fmul fast float %2773, 0x4010101020000000
  %2775 = fadd fast float %2774, -5.120000e+02
  %2776 = fmul fast float %2773, 0x4001D0AFC0000000
  %2777 = fadd fast float %2776, 0xC071BEDF00000000
  %2778 = call float @dx.op.unary.f32(i32 22, float %2777)  ; Frc(value)
  %2779 = fmul fast float %2775, %2778
  %2780 = fadd fast float %2779, %2775
  %2781 = fmul fast float %2773, 0x3FF3D290C0000000
  %2782 = fadd fast float %2781, 0xC063BEBE20000000
  %2783 = call float @dx.op.unary.f32(i32 22, float %2782)  ; Frc(value)
  %2784 = fmul fast float %2775, %2783
  %2785 = fadd fast float %2784, %2775
  %2786 = fmul fast float %2780, %2785
  %2787 = call float @dx.op.unary.f32(i32 22, float %2786)  ; Frc(value)
  %2788 = fadd fast float %2762, 1.000000e+00
  %2789 = fmul fast float %2788, 0x401E322D00000000
  %2790 = fmul fast float %2789, %2787
  %2791 = fmul fast float %2764, 0x3FE921FB60000000
  %2792 = fadd fast float %2791, %2790
  %2793 = call float @dx.op.unary.f32(i32 13, float %2792)  ; Sin(value)
  %2794 = uitofp i32 %63 to float
  %2795 = uitofp i32 %64 to float
  %2796 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %2797 = extractvalue %dx.types.CBufRet.f32 %2796, 2
  %2798 = fmul fast float %2797, 0x40165A5B00000000
  %2799 = fadd fast float %2798, %2794
  %2800 = fadd fast float %2798, %2795
  %2801 = extractvalue %dx.types.CBufRet.f32 %2796, 0
  %2802 = fmul fast float %2801, 2.000000e+00
  %2803 = fadd fast float %2802, -1.000000e+00
  %2804 = fmul fast float %2803, %2799
  %2805 = fmul fast float %2803, %2800
  %2806 = call float @dx.op.dot2.f32(i32 54, float %2804, float %2805, float 0x3FB12E2860000000, float 0x3F77E8B200000000)  ; Dot2(ax,ay,bx,by)
  %2807 = call float @dx.op.unary.f32(i32 22, float %2806)  ; Frc(value)
  %2808 = fmul fast float %2807, 0x404A7DD040000000
  %2809 = call float @dx.op.unary.f32(i32 22, float %2808)  ; Frc(value)
  br i1 %2740, label %2810, label %2821, !dx.controlflow.hints !56

; <label>:2810                                    ; preds = %2739
  %2811 = icmp ne i32 %638, 0
  %2812 = fadd fast float %2793, 1.000000e+00
  %2813 = call float @dx.op.unary.f32(i32 23, float %2809)  ; Log(value)
  %2814 = fmul fast float %2813, %2812
  %2815 = call float @dx.op.unary.f32(i32 21, float %2814)  ; Exp(value)
  %2816 = and i1 %116, %2811
  %2817 = uitofp i1 %2816 to float
  %2818 = fmul fast float %2635, %2630
  %2819 = fmul fast float %2818, %2817
  %2820 = fmul fast float %2819, %2815
  br label %5489

; <label>:2821                                    ; preds = %2739
  %2822 = and i32 %636, 262144
  %2823 = fcmp fast ole float %2635, 0.000000e+00
  %2824 = icmp eq i32 %2822, 0
  %2825 = and i1 %116, %2824
  %2826 = or i1 %2823, %2825
  br i1 %2826, label %5489, label %2827, !dx.controlflow.hints !57

; <label>:2827                                    ; preds = %2821
  %2828 = fmul fast float %2764, 0x3FF921FB60000000
  %2829 = fadd fast float %2828, %2790
  %2830 = call float @dx.op.unary.f32(i32 13, float %2829)  ; Sin(value)
  %2831 = fmul fast float %2830, 7.500000e-01
  %2832 = fadd fast float %2831, 1.500000e+00
  %2833 = fmul fast float %2745, 0x3E8999CCE0000000
  %2834 = fmul fast float %2833, %59
  %2835 = fmul fast float %60, 0x3E8999CCE0000000
  %2836 = fmul fast float %2835, %2747
  %2837 = call float @dx.op.binary.f32(i32 35, float %2834, float 5.000000e-01)  ; FMax(a,b)
  %2838 = call float @dx.op.binary.f32(i32 35, float %2836, float 5.000000e-01)  ; FMax(a,b)
  %2839 = fmul fast float %2832, %2837
  %2840 = fmul fast float %2838, %2832
  %2841 = fsub fast float 1.000000e+00, %2770
  %2842 = fadd fast float %2841, %2809
  %2843 = fmul fast float %2842, 5.000000e+00
  %2844 = call float @dx.op.unary.f32(i32 28, float %2839)  ; Round_pi(value)
  %2845 = call float @dx.op.unary.f32(i32 28, float %2840)  ; Round_pi(value)
  %2846 = fptosi float %2844 to i32
  %2847 = fptosi float %2845 to i32
  %2848 = sub i32 %64, %2847
  %2849 = or i32 %2848, %63
  %2850 = icmp slt i32 %2849, 0
  %2851 = fptosi float %59 to i32
  %2852 = fptosi float %60 to i32
  %2853 = icmp sge i32 %63, %2851
  %2854 = icmp sge i32 %2848, %2852
  %2855 = or i1 %2853, %2854
  %2856 = or i1 %2850, %2855
  br i1 %2856, label %2870, label %2857, !dx.controlflow.hints !49

; <label>:2857                                    ; preds = %2827
  %2858 = lshr i32 %2848, 2
  %2859 = mul i32 %84, %2858
  %2860 = add i32 %102, %2859
  %2861 = shl i32 %2860, 2
  %2862 = shl i32 %2848, 3
  %2863 = and i32 %2862, 24
  %2864 = or i32 %2863, %93
  %2865 = shl i32 1, %2864
  %2866 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %2861, i32 undef)  ; BufferLoad(srv,index,wot)
  %2867 = extractvalue %dx.types.ResRet.i32 %2866, 0
  %2868 = and i32 %2867, %2865
  %2869 = icmp ne i32 %2868, 0
  br label %2870

; <label>:2870                                    ; preds = %2857, %2827
  %2871 = phi i1 [ %2869, %2857 ], [ false, %2827 ]
  %2872 = xor i1 %2871, true
  %2873 = uitofp i1 %2872 to float
  %2874 = fadd fast float %2873, %2843
  %2875 = add i32 %2847, %64
  %2876 = or i32 %2875, %63
  %2877 = icmp slt i32 %2876, 0
  %2878 = icmp sge i32 %2875, %2852
  %2879 = or i1 %2853, %2878
  %2880 = or i1 %2877, %2879
  br i1 %2880, label %2894, label %2881, !dx.controlflow.hints !49

; <label>:2881                                    ; preds = %2870
  %2882 = lshr i32 %2875, 2
  %2883 = mul i32 %84, %2882
  %2884 = add i32 %102, %2883
  %2885 = shl i32 %2884, 2
  %2886 = shl i32 %2875, 3
  %2887 = and i32 %2886, 24
  %2888 = or i32 %2887, %93
  %2889 = shl i32 1, %2888
  %2890 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %2885, i32 undef)  ; BufferLoad(srv,index,wot)
  %2891 = extractvalue %dx.types.ResRet.i32 %2890, 0
  %2892 = and i32 %2891, %2889
  %2893 = icmp ne i32 %2892, 0
  br label %2894

; <label>:2894                                    ; preds = %2881, %2870
  %2895 = phi i1 [ %2893, %2881 ], [ false, %2870 ]
  %2896 = xor i1 %2895, true
  %2897 = uitofp i1 %2896 to float
  %2898 = fadd fast float %2874, %2897
  %2899 = sub i32 %63, %2846
  %2900 = or i32 %2899, %64
  %2901 = icmp slt i32 %2900, 0
  %2902 = icmp sge i32 %2899, %2851
  %2903 = icmp sge i32 %64, %2852
  %2904 = or i1 %2902, %2903
  %2905 = or i1 %2901, %2904
  br i1 %2905, label %2919, label %2906, !dx.controlflow.hints !49

; <label>:2906                                    ; preds = %2894
  %2907 = lshr i32 %2899, 3
  %2908 = add i32 %81, %2907
  %2909 = add i32 %2908, %100
  %2910 = add i32 %2909, %85
  %2911 = shl i32 %2910, 2
  %2912 = and i32 %2899, 7
  %2913 = or i32 %2912, %92
  %2914 = shl i32 1, %2913
  %2915 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %2911, i32 undef)  ; BufferLoad(srv,index,wot)
  %2916 = extractvalue %dx.types.ResRet.i32 %2915, 0
  %2917 = and i32 %2916, %2914
  %2918 = icmp ne i32 %2917, 0
  br label %2919

; <label>:2919                                    ; preds = %2906, %2894
  %2920 = phi i1 [ %2918, %2906 ], [ false, %2894 ]
  %2921 = xor i1 %2920, true
  %2922 = uitofp i1 %2921 to float
  %2923 = fadd fast float %2898, %2922
  %2924 = add i32 %2846, %63
  %2925 = or i32 %2924, %64
  %2926 = icmp slt i32 %2925, 0
  %2927 = icmp sge i32 %2924, %2851
  %2928 = or i1 %2927, %2903
  %2929 = or i1 %2926, %2928
  br i1 %2929, label %2943, label %2930, !dx.controlflow.hints !49

; <label>:2930                                    ; preds = %2919
  %2931 = lshr i32 %2924, 3
  %2932 = add i32 %81, %2931
  %2933 = add i32 %2932, %100
  %2934 = add i32 %2933, %85
  %2935 = shl i32 %2934, 2
  %2936 = and i32 %2924, 7
  %2937 = or i32 %2936, %92
  %2938 = shl i32 1, %2937
  %2939 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %2935, i32 undef)  ; BufferLoad(srv,index,wot)
  %2940 = extractvalue %dx.types.ResRet.i32 %2939, 0
  %2941 = and i32 %2940, %2938
  %2942 = icmp ne i32 %2941, 0
  br label %2943

; <label>:2943                                    ; preds = %2930, %2919
  %2944 = phi i1 [ %2942, %2930 ], [ false, %2919 ]
  %2945 = xor i1 %2944, true
  %2946 = uitofp i1 %2945 to float
  %2947 = fadd fast float %2923, %2946
  %2948 = or i32 %2848, %2899
  %2949 = icmp slt i32 %2948, 0
  %2950 = or i1 %2902, %2854
  %2951 = or i1 %2949, %2950
  br i1 %2951, label %2969, label %2952, !dx.controlflow.hints !49

; <label>:2952                                    ; preds = %2943
  %2953 = lshr i32 %2848, 2
  %2954 = mul i32 %84, %2953
  %2955 = lshr i32 %2899, 3
  %2956 = add i32 %81, %2955
  %2957 = add i32 %2956, %100
  %2958 = add i32 %2957, %2954
  %2959 = shl i32 %2958, 2
  %2960 = shl i32 %2848, 3
  %2961 = and i32 %2960, 24
  %2962 = and i32 %2899, 7
  %2963 = or i32 %2961, %2962
  %2964 = shl i32 1, %2963
  %2965 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %2959, i32 undef)  ; BufferLoad(srv,index,wot)
  %2966 = extractvalue %dx.types.ResRet.i32 %2965, 0
  %2967 = and i32 %2966, %2964
  %2968 = icmp ne i32 %2967, 0
  br label %2969

; <label>:2969                                    ; preds = %2952, %2943
  %2970 = phi i1 [ %2968, %2952 ], [ false, %2943 ]
  %2971 = xor i1 %2970, true
  %2972 = uitofp i1 %2971 to float
  %2973 = fadd fast float %2947, %2972
  %2974 = or i32 %2848, %2924
  %2975 = icmp slt i32 %2974, 0
  %2976 = or i1 %2927, %2854
  %2977 = or i1 %2975, %2976
  br i1 %2977, label %2995, label %2978, !dx.controlflow.hints !49

; <label>:2978                                    ; preds = %2969
  %2979 = lshr i32 %2848, 2
  %2980 = mul i32 %84, %2979
  %2981 = lshr i32 %2924, 3
  %2982 = add i32 %81, %2981
  %2983 = add i32 %2982, %100
  %2984 = add i32 %2983, %2980
  %2985 = shl i32 %2984, 2
  %2986 = shl i32 %2848, 3
  %2987 = and i32 %2986, 24
  %2988 = and i32 %2924, 7
  %2989 = or i32 %2987, %2988
  %2990 = shl i32 1, %2989
  %2991 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %2985, i32 undef)  ; BufferLoad(srv,index,wot)
  %2992 = extractvalue %dx.types.ResRet.i32 %2991, 0
  %2993 = and i32 %2992, %2990
  %2994 = icmp ne i32 %2993, 0
  br label %2995

; <label>:2995                                    ; preds = %2978, %2969
  %2996 = phi i1 [ %2994, %2978 ], [ false, %2969 ]
  %2997 = xor i1 %2996, true
  %2998 = uitofp i1 %2997 to float
  %2999 = fadd fast float %2973, %2998
  %3000 = or i32 %2875, %2899
  %3001 = icmp slt i32 %3000, 0
  %3002 = or i1 %2902, %2878
  %3003 = or i1 %3001, %3002
  br i1 %3003, label %3021, label %3004, !dx.controlflow.hints !49

; <label>:3004                                    ; preds = %2995
  %3005 = lshr i32 %2875, 2
  %3006 = mul i32 %84, %3005
  %3007 = lshr i32 %2899, 3
  %3008 = add i32 %81, %3007
  %3009 = add i32 %3008, %100
  %3010 = add i32 %3009, %3006
  %3011 = shl i32 %3010, 2
  %3012 = shl i32 %2875, 3
  %3013 = and i32 %3012, 24
  %3014 = and i32 %2899, 7
  %3015 = or i32 %3013, %3014
  %3016 = shl i32 1, %3015
  %3017 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %3011, i32 undef)  ; BufferLoad(srv,index,wot)
  %3018 = extractvalue %dx.types.ResRet.i32 %3017, 0
  %3019 = and i32 %3018, %3016
  %3020 = icmp ne i32 %3019, 0
  br label %3021

; <label>:3021                                    ; preds = %3004, %2995
  %3022 = phi i1 [ %3020, %3004 ], [ false, %2995 ]
  %3023 = xor i1 %3022, true
  %3024 = uitofp i1 %3023 to float
  %3025 = fadd fast float %2999, %3024
  %3026 = or i32 %2875, %2924
  %3027 = icmp slt i32 %3026, 0
  %3028 = or i1 %2927, %2878
  %3029 = or i1 %3027, %3028
  br i1 %3029, label %3047, label %3030, !dx.controlflow.hints !49

; <label>:3030                                    ; preds = %3021
  %3031 = lshr i32 %2875, 2
  %3032 = mul i32 %84, %3031
  %3033 = lshr i32 %2924, 3
  %3034 = add i32 %81, %3033
  %3035 = add i32 %3034, %100
  %3036 = add i32 %3035, %3032
  %3037 = shl i32 %3036, 2
  %3038 = shl i32 %2875, 3
  %3039 = and i32 %3038, 24
  %3040 = and i32 %2924, 7
  %3041 = or i32 %3039, %3040
  %3042 = shl i32 1, %3041
  %3043 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %3037, i32 undef)  ; BufferLoad(srv,index,wot)
  %3044 = extractvalue %dx.types.ResRet.i32 %3043, 0
  %3045 = and i32 %3044, %3042
  %3046 = icmp ne i32 %3045, 0
  br label %3047

; <label>:3047                                    ; preds = %3030, %3021
  %3048 = phi i1 [ %3046, %3030 ], [ false, %3021 ]
  %3049 = xor i1 %3048, true
  %3050 = uitofp i1 %3049 to float
  %3051 = fadd fast float %3025, %3050
  %3052 = fmul fast float %2839, 2.000000e+00
  %3053 = fmul fast float %2840, 2.000000e+00
  %3054 = call float @dx.op.unary.f32(i32 28, float %3052)  ; Round_pi(value)
  %3055 = call float @dx.op.unary.f32(i32 28, float %3053)  ; Round_pi(value)
  %3056 = fptosi float %3054 to i32
  %3057 = fptosi float %3055 to i32
  %3058 = sub i32 %64, %3057
  %3059 = or i32 %3058, %63
  %3060 = icmp slt i32 %3059, 0
  %3061 = icmp sge i32 %3058, %2852
  %3062 = or i1 %2853, %3061
  %3063 = or i1 %3060, %3062
  br i1 %3063, label %3077, label %3064, !dx.controlflow.hints !49

; <label>:3064                                    ; preds = %3047
  %3065 = lshr i32 %3058, 2
  %3066 = mul i32 %84, %3065
  %3067 = add i32 %102, %3066
  %3068 = shl i32 %3067, 2
  %3069 = shl i32 %3058, 3
  %3070 = and i32 %3069, 24
  %3071 = or i32 %3070, %93
  %3072 = shl i32 1, %3071
  %3073 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %3068, i32 undef)  ; BufferLoad(srv,index,wot)
  %3074 = extractvalue %dx.types.ResRet.i32 %3073, 0
  %3075 = and i32 %3074, %3072
  %3076 = icmp ne i32 %3075, 0
  br label %3077

; <label>:3077                                    ; preds = %3064, %3047
  %3078 = phi i1 [ %3076, %3064 ], [ false, %3047 ]
  %3079 = xor i1 %3078, true
  %3080 = uitofp i1 %3079 to float
  %3081 = fadd fast float %3051, %3080
  %3082 = add i32 %3057, %64
  %3083 = or i32 %3082, %63
  %3084 = icmp slt i32 %3083, 0
  %3085 = icmp sge i32 %3082, %2852
  %3086 = or i1 %2853, %3085
  %3087 = or i1 %3084, %3086
  br i1 %3087, label %3101, label %3088, !dx.controlflow.hints !49

; <label>:3088                                    ; preds = %3077
  %3089 = lshr i32 %3082, 2
  %3090 = mul i32 %84, %3089
  %3091 = add i32 %102, %3090
  %3092 = shl i32 %3091, 2
  %3093 = shl i32 %3082, 3
  %3094 = and i32 %3093, 24
  %3095 = or i32 %3094, %93
  %3096 = shl i32 1, %3095
  %3097 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %3092, i32 undef)  ; BufferLoad(srv,index,wot)
  %3098 = extractvalue %dx.types.ResRet.i32 %3097, 0
  %3099 = and i32 %3098, %3096
  %3100 = icmp ne i32 %3099, 0
  br label %3101

; <label>:3101                                    ; preds = %3088, %3077
  %3102 = phi i1 [ %3100, %3088 ], [ false, %3077 ]
  %3103 = xor i1 %3102, true
  %3104 = uitofp i1 %3103 to float
  %3105 = fadd fast float %3081, %3104
  %3106 = sub i32 %63, %3056
  %3107 = or i32 %3106, %64
  %3108 = icmp slt i32 %3107, 0
  %3109 = icmp sge i32 %3106, %2851
  %3110 = or i1 %3109, %2903
  %3111 = or i1 %3108, %3110
  br i1 %3111, label %3125, label %3112, !dx.controlflow.hints !49

; <label>:3112                                    ; preds = %3101
  %3113 = lshr i32 %3106, 3
  %3114 = add i32 %81, %3113
  %3115 = add i32 %3114, %100
  %3116 = add i32 %3115, %85
  %3117 = shl i32 %3116, 2
  %3118 = and i32 %3106, 7
  %3119 = or i32 %3118, %92
  %3120 = shl i32 1, %3119
  %3121 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %3117, i32 undef)  ; BufferLoad(srv,index,wot)
  %3122 = extractvalue %dx.types.ResRet.i32 %3121, 0
  %3123 = and i32 %3122, %3120
  %3124 = icmp ne i32 %3123, 0
  br label %3125

; <label>:3125                                    ; preds = %3112, %3101
  %3126 = phi i1 [ %3124, %3112 ], [ false, %3101 ]
  %3127 = xor i1 %3126, true
  %3128 = uitofp i1 %3127 to float
  %3129 = fadd fast float %3105, %3128
  %3130 = add i32 %3056, %63
  %3131 = or i32 %3130, %64
  %3132 = icmp slt i32 %3131, 0
  %3133 = icmp sge i32 %3130, %2851
  %3134 = or i1 %3133, %2903
  %3135 = or i1 %3132, %3134
  br i1 %3135, label %3149, label %3136, !dx.controlflow.hints !49

; <label>:3136                                    ; preds = %3125
  %3137 = lshr i32 %3130, 3
  %3138 = add i32 %81, %3137
  %3139 = add i32 %3138, %100
  %3140 = add i32 %3139, %85
  %3141 = shl i32 %3140, 2
  %3142 = and i32 %3130, 7
  %3143 = or i32 %3142, %92
  %3144 = shl i32 1, %3143
  %3145 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %3141, i32 undef)  ; BufferLoad(srv,index,wot)
  %3146 = extractvalue %dx.types.ResRet.i32 %3145, 0
  %3147 = and i32 %3146, %3144
  %3148 = icmp ne i32 %3147, 0
  br label %3149

; <label>:3149                                    ; preds = %3136, %3125
  %3150 = phi i1 [ %3148, %3136 ], [ false, %3125 ]
  %3151 = xor i1 %3150, true
  %3152 = uitofp i1 %3151 to float
  %3153 = fadd fast float %3129, %3152
  %3154 = or i32 %3058, %3106
  %3155 = icmp slt i32 %3154, 0
  %3156 = or i1 %3109, %3061
  %3157 = or i1 %3155, %3156
  br i1 %3157, label %3175, label %3158, !dx.controlflow.hints !49

; <label>:3158                                    ; preds = %3149
  %3159 = lshr i32 %3058, 2
  %3160 = mul i32 %84, %3159
  %3161 = lshr i32 %3106, 3
  %3162 = add i32 %81, %3161
  %3163 = add i32 %3162, %100
  %3164 = add i32 %3163, %3160
  %3165 = shl i32 %3164, 2
  %3166 = shl i32 %3058, 3
  %3167 = and i32 %3166, 24
  %3168 = and i32 %3106, 7
  %3169 = or i32 %3167, %3168
  %3170 = shl i32 1, %3169
  %3171 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %3165, i32 undef)  ; BufferLoad(srv,index,wot)
  %3172 = extractvalue %dx.types.ResRet.i32 %3171, 0
  %3173 = and i32 %3172, %3170
  %3174 = icmp ne i32 %3173, 0
  br label %3175

; <label>:3175                                    ; preds = %3158, %3149
  %3176 = phi i1 [ %3174, %3158 ], [ false, %3149 ]
  %3177 = xor i1 %3176, true
  %3178 = uitofp i1 %3177 to float
  %3179 = fadd fast float %3153, %3178
  %3180 = or i32 %3058, %3130
  %3181 = icmp slt i32 %3180, 0
  %3182 = or i1 %3133, %3061
  %3183 = or i1 %3181, %3182
  br i1 %3183, label %3201, label %3184, !dx.controlflow.hints !49

; <label>:3184                                    ; preds = %3175
  %3185 = lshr i32 %3058, 2
  %3186 = mul i32 %84, %3185
  %3187 = lshr i32 %3130, 3
  %3188 = add i32 %81, %3187
  %3189 = add i32 %3188, %100
  %3190 = add i32 %3189, %3186
  %3191 = shl i32 %3190, 2
  %3192 = shl i32 %3058, 3
  %3193 = and i32 %3192, 24
  %3194 = and i32 %3130, 7
  %3195 = or i32 %3193, %3194
  %3196 = shl i32 1, %3195
  %3197 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %3191, i32 undef)  ; BufferLoad(srv,index,wot)
  %3198 = extractvalue %dx.types.ResRet.i32 %3197, 0
  %3199 = and i32 %3198, %3196
  %3200 = icmp ne i32 %3199, 0
  br label %3201

; <label>:3201                                    ; preds = %3184, %3175
  %3202 = phi i1 [ %3200, %3184 ], [ false, %3175 ]
  %3203 = xor i1 %3202, true
  %3204 = uitofp i1 %3203 to float
  %3205 = fadd fast float %3179, %3204
  %3206 = or i32 %3082, %3106
  %3207 = icmp slt i32 %3206, 0
  %3208 = or i1 %3109, %3085
  %3209 = or i1 %3207, %3208
  br i1 %3209, label %3227, label %3210, !dx.controlflow.hints !49

; <label>:3210                                    ; preds = %3201
  %3211 = lshr i32 %3082, 2
  %3212 = mul i32 %84, %3211
  %3213 = lshr i32 %3106, 3
  %3214 = add i32 %81, %3213
  %3215 = add i32 %3214, %100
  %3216 = add i32 %3215, %3212
  %3217 = shl i32 %3216, 2
  %3218 = shl i32 %3082, 3
  %3219 = and i32 %3218, 24
  %3220 = and i32 %3106, 7
  %3221 = or i32 %3219, %3220
  %3222 = shl i32 1, %3221
  %3223 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %3217, i32 undef)  ; BufferLoad(srv,index,wot)
  %3224 = extractvalue %dx.types.ResRet.i32 %3223, 0
  %3225 = and i32 %3224, %3222
  %3226 = icmp ne i32 %3225, 0
  br label %3227

; <label>:3227                                    ; preds = %3210, %3201
  %3228 = phi i1 [ %3226, %3210 ], [ false, %3201 ]
  %3229 = xor i1 %3228, true
  %3230 = uitofp i1 %3229 to float
  %3231 = fadd fast float %3205, %3230
  %3232 = or i32 %3082, %3130
  %3233 = icmp slt i32 %3232, 0
  %3234 = or i1 %3133, %3085
  %3235 = or i1 %3233, %3234
  br i1 %3235, label %3253, label %3236, !dx.controlflow.hints !49

; <label>:3236                                    ; preds = %3227
  %3237 = lshr i32 %3082, 2
  %3238 = mul i32 %84, %3237
  %3239 = lshr i32 %3130, 3
  %3240 = add i32 %81, %3239
  %3241 = add i32 %3240, %100
  %3242 = add i32 %3241, %3238
  %3243 = shl i32 %3242, 2
  %3244 = shl i32 %3082, 3
  %3245 = and i32 %3244, 24
  %3246 = and i32 %3130, 7
  %3247 = or i32 %3245, %3246
  %3248 = shl i32 1, %3247
  %3249 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %3243, i32 undef)  ; BufferLoad(srv,index,wot)
  %3250 = extractvalue %dx.types.ResRet.i32 %3249, 0
  %3251 = and i32 %3250, %3248
  %3252 = icmp ne i32 %3251, 0
  br label %3253

; <label>:3253                                    ; preds = %3236, %3227
  %3254 = phi i1 [ %3252, %3236 ], [ false, %3227 ]
  %3255 = xor i1 %3254, true
  %3256 = uitofp i1 %3255 to float
  %3257 = fadd fast float %3231, %3256
  %3258 = fmul fast float %2839, 3.000000e+00
  %3259 = fmul fast float %2840, 3.000000e+00
  %3260 = call float @dx.op.unary.f32(i32 28, float %3258)  ; Round_pi(value)
  %3261 = call float @dx.op.unary.f32(i32 28, float %3259)  ; Round_pi(value)
  %3262 = fptosi float %3260 to i32
  %3263 = fptosi float %3261 to i32
  %3264 = sub i32 %64, %3263
  %3265 = or i32 %3264, %63
  %3266 = icmp slt i32 %3265, 0
  %3267 = icmp sge i32 %3264, %2852
  %3268 = or i1 %2853, %3267
  %3269 = or i1 %3266, %3268
  br i1 %3269, label %3283, label %3270, !dx.controlflow.hints !49

; <label>:3270                                    ; preds = %3253
  %3271 = lshr i32 %3264, 2
  %3272 = mul i32 %84, %3271
  %3273 = add i32 %102, %3272
  %3274 = shl i32 %3273, 2
  %3275 = shl i32 %3264, 3
  %3276 = and i32 %3275, 24
  %3277 = or i32 %3276, %93
  %3278 = shl i32 1, %3277
  %3279 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %3274, i32 undef)  ; BufferLoad(srv,index,wot)
  %3280 = extractvalue %dx.types.ResRet.i32 %3279, 0
  %3281 = and i32 %3280, %3278
  %3282 = icmp ne i32 %3281, 0
  br label %3283

; <label>:3283                                    ; preds = %3270, %3253
  %3284 = phi i1 [ %3282, %3270 ], [ false, %3253 ]
  %3285 = xor i1 %3284, true
  %3286 = uitofp i1 %3285 to float
  %3287 = fadd fast float %3257, %3286
  %3288 = add i32 %3263, %64
  %3289 = or i32 %3288, %63
  %3290 = icmp slt i32 %3289, 0
  %3291 = icmp sge i32 %3288, %2852
  %3292 = or i1 %2853, %3291
  %3293 = or i1 %3290, %3292
  br i1 %3293, label %3307, label %3294, !dx.controlflow.hints !49

; <label>:3294                                    ; preds = %3283
  %3295 = lshr i32 %3288, 2
  %3296 = mul i32 %84, %3295
  %3297 = add i32 %102, %3296
  %3298 = shl i32 %3297, 2
  %3299 = shl i32 %3288, 3
  %3300 = and i32 %3299, 24
  %3301 = or i32 %3300, %93
  %3302 = shl i32 1, %3301
  %3303 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %3298, i32 undef)  ; BufferLoad(srv,index,wot)
  %3304 = extractvalue %dx.types.ResRet.i32 %3303, 0
  %3305 = and i32 %3304, %3302
  %3306 = icmp ne i32 %3305, 0
  br label %3307

; <label>:3307                                    ; preds = %3294, %3283
  %3308 = phi i1 [ %3306, %3294 ], [ false, %3283 ]
  %3309 = xor i1 %3308, true
  %3310 = uitofp i1 %3309 to float
  %3311 = fadd fast float %3287, %3310
  %3312 = sub i32 %63, %3262
  %3313 = or i32 %3312, %64
  %3314 = icmp slt i32 %3313, 0
  %3315 = icmp sge i32 %3312, %2851
  %3316 = or i1 %3315, %2903
  %3317 = or i1 %3314, %3316
  br i1 %3317, label %3331, label %3318, !dx.controlflow.hints !49

; <label>:3318                                    ; preds = %3307
  %3319 = lshr i32 %3312, 3
  %3320 = add i32 %81, %3319
  %3321 = add i32 %3320, %100
  %3322 = add i32 %3321, %85
  %3323 = shl i32 %3322, 2
  %3324 = and i32 %3312, 7
  %3325 = or i32 %3324, %92
  %3326 = shl i32 1, %3325
  %3327 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %3323, i32 undef)  ; BufferLoad(srv,index,wot)
  %3328 = extractvalue %dx.types.ResRet.i32 %3327, 0
  %3329 = and i32 %3328, %3326
  %3330 = icmp ne i32 %3329, 0
  br label %3331

; <label>:3331                                    ; preds = %3318, %3307
  %3332 = phi i1 [ %3330, %3318 ], [ false, %3307 ]
  %3333 = xor i1 %3332, true
  %3334 = uitofp i1 %3333 to float
  %3335 = fadd fast float %3311, %3334
  %3336 = add i32 %3262, %63
  %3337 = or i32 %3336, %64
  %3338 = icmp slt i32 %3337, 0
  %3339 = icmp sge i32 %3336, %2851
  %3340 = or i1 %3339, %2903
  %3341 = or i1 %3338, %3340
  br i1 %3341, label %3355, label %3342, !dx.controlflow.hints !49

; <label>:3342                                    ; preds = %3331
  %3343 = lshr i32 %3336, 3
  %3344 = add i32 %81, %3343
  %3345 = add i32 %3344, %100
  %3346 = add i32 %3345, %85
  %3347 = shl i32 %3346, 2
  %3348 = and i32 %3336, 7
  %3349 = or i32 %3348, %92
  %3350 = shl i32 1, %3349
  %3351 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %3347, i32 undef)  ; BufferLoad(srv,index,wot)
  %3352 = extractvalue %dx.types.ResRet.i32 %3351, 0
  %3353 = and i32 %3352, %3350
  %3354 = icmp ne i32 %3353, 0
  br label %3355

; <label>:3355                                    ; preds = %3342, %3331
  %3356 = phi i1 [ %3354, %3342 ], [ false, %3331 ]
  %3357 = xor i1 %3356, true
  %3358 = uitofp i1 %3357 to float
  %3359 = fadd fast float %3335, %3358
  %3360 = or i32 %3264, %3312
  %3361 = icmp slt i32 %3360, 0
  %3362 = or i1 %3315, %3267
  %3363 = or i1 %3361, %3362
  br i1 %3363, label %3381, label %3364, !dx.controlflow.hints !49

; <label>:3364                                    ; preds = %3355
  %3365 = lshr i32 %3264, 2
  %3366 = mul i32 %84, %3365
  %3367 = lshr i32 %3312, 3
  %3368 = add i32 %81, %3367
  %3369 = add i32 %3368, %100
  %3370 = add i32 %3369, %3366
  %3371 = shl i32 %3370, 2
  %3372 = shl i32 %3264, 3
  %3373 = and i32 %3372, 24
  %3374 = and i32 %3312, 7
  %3375 = or i32 %3373, %3374
  %3376 = shl i32 1, %3375
  %3377 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %3371, i32 undef)  ; BufferLoad(srv,index,wot)
  %3378 = extractvalue %dx.types.ResRet.i32 %3377, 0
  %3379 = and i32 %3378, %3376
  %3380 = icmp ne i32 %3379, 0
  br label %3381

; <label>:3381                                    ; preds = %3364, %3355
  %3382 = phi i1 [ %3380, %3364 ], [ false, %3355 ]
  %3383 = xor i1 %3382, true
  %3384 = uitofp i1 %3383 to float
  %3385 = fadd fast float %3359, %3384
  %3386 = or i32 %3264, %3336
  %3387 = icmp slt i32 %3386, 0
  %3388 = or i1 %3339, %3267
  %3389 = or i1 %3387, %3388
  br i1 %3389, label %3407, label %3390, !dx.controlflow.hints !49

; <label>:3390                                    ; preds = %3381
  %3391 = lshr i32 %3264, 2
  %3392 = mul i32 %84, %3391
  %3393 = lshr i32 %3336, 3
  %3394 = add i32 %81, %3393
  %3395 = add i32 %3394, %100
  %3396 = add i32 %3395, %3392
  %3397 = shl i32 %3396, 2
  %3398 = shl i32 %3264, 3
  %3399 = and i32 %3398, 24
  %3400 = and i32 %3336, 7
  %3401 = or i32 %3399, %3400
  %3402 = shl i32 1, %3401
  %3403 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %3397, i32 undef)  ; BufferLoad(srv,index,wot)
  %3404 = extractvalue %dx.types.ResRet.i32 %3403, 0
  %3405 = and i32 %3404, %3402
  %3406 = icmp ne i32 %3405, 0
  br label %3407

; <label>:3407                                    ; preds = %3390, %3381
  %3408 = phi i1 [ %3406, %3390 ], [ false, %3381 ]
  %3409 = xor i1 %3408, true
  %3410 = uitofp i1 %3409 to float
  %3411 = fadd fast float %3385, %3410
  %3412 = or i32 %3288, %3312
  %3413 = icmp slt i32 %3412, 0
  %3414 = or i1 %3315, %3291
  %3415 = or i1 %3413, %3414
  br i1 %3415, label %3433, label %3416, !dx.controlflow.hints !49

; <label>:3416                                    ; preds = %3407
  %3417 = lshr i32 %3288, 2
  %3418 = mul i32 %84, %3417
  %3419 = lshr i32 %3312, 3
  %3420 = add i32 %81, %3419
  %3421 = add i32 %3420, %100
  %3422 = add i32 %3421, %3418
  %3423 = shl i32 %3422, 2
  %3424 = shl i32 %3288, 3
  %3425 = and i32 %3424, 24
  %3426 = and i32 %3312, 7
  %3427 = or i32 %3425, %3426
  %3428 = shl i32 1, %3427
  %3429 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %3423, i32 undef)  ; BufferLoad(srv,index,wot)
  %3430 = extractvalue %dx.types.ResRet.i32 %3429, 0
  %3431 = and i32 %3430, %3428
  %3432 = icmp ne i32 %3431, 0
  br label %3433

; <label>:3433                                    ; preds = %3416, %3407
  %3434 = phi i1 [ %3432, %3416 ], [ false, %3407 ]
  %3435 = xor i1 %3434, true
  %3436 = uitofp i1 %3435 to float
  %3437 = fadd fast float %3411, %3436
  %3438 = or i32 %3288, %3336
  %3439 = icmp slt i32 %3438, 0
  %3440 = or i1 %3339, %3291
  %3441 = or i1 %3439, %3440
  br i1 %3441, label %3459, label %3442, !dx.controlflow.hints !49

; <label>:3442                                    ; preds = %3433
  %3443 = lshr i32 %3288, 2
  %3444 = mul i32 %84, %3443
  %3445 = lshr i32 %3336, 3
  %3446 = add i32 %81, %3445
  %3447 = add i32 %3446, %100
  %3448 = add i32 %3447, %3444
  %3449 = shl i32 %3448, 2
  %3450 = shl i32 %3288, 3
  %3451 = and i32 %3450, 24
  %3452 = and i32 %3336, 7
  %3453 = or i32 %3451, %3452
  %3454 = shl i32 1, %3453
  %3455 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %3449, i32 undef)  ; BufferLoad(srv,index,wot)
  %3456 = extractvalue %dx.types.ResRet.i32 %3455, 0
  %3457 = and i32 %3456, %3454
  %3458 = icmp ne i32 %3457, 0
  br label %3459

; <label>:3459                                    ; preds = %3442, %3433
  %3460 = phi i1 [ %3458, %3442 ], [ false, %3433 ]
  %3461 = xor i1 %3460, true
  %3462 = uitofp i1 %3461 to float
  %3463 = fadd fast float %3437, %3462
  %3464 = fmul fast float %2839, 4.000000e+00
  %3465 = fmul fast float %2840, 4.000000e+00
  %3466 = call float @dx.op.unary.f32(i32 28, float %3464)  ; Round_pi(value)
  %3467 = call float @dx.op.unary.f32(i32 28, float %3465)  ; Round_pi(value)
  %3468 = fptosi float %3466 to i32
  %3469 = fptosi float %3467 to i32
  %3470 = sub i32 %64, %3469
  %3471 = or i32 %3470, %63
  %3472 = icmp slt i32 %3471, 0
  %3473 = icmp sge i32 %3470, %2852
  %3474 = or i1 %2853, %3473
  %3475 = or i1 %3472, %3474
  br i1 %3475, label %3489, label %3476, !dx.controlflow.hints !49

; <label>:3476                                    ; preds = %3459
  %3477 = lshr i32 %3470, 2
  %3478 = mul i32 %84, %3477
  %3479 = add i32 %102, %3478
  %3480 = shl i32 %3479, 2
  %3481 = shl i32 %3470, 3
  %3482 = and i32 %3481, 24
  %3483 = or i32 %3482, %93
  %3484 = shl i32 1, %3483
  %3485 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %3480, i32 undef)  ; BufferLoad(srv,index,wot)
  %3486 = extractvalue %dx.types.ResRet.i32 %3485, 0
  %3487 = and i32 %3486, %3484
  %3488 = icmp ne i32 %3487, 0
  br label %3489

; <label>:3489                                    ; preds = %3476, %3459
  %3490 = phi i1 [ %3488, %3476 ], [ false, %3459 ]
  %3491 = xor i1 %3490, true
  %3492 = uitofp i1 %3491 to float
  %3493 = fadd fast float %3463, %3492
  %3494 = add i32 %3469, %64
  %3495 = or i32 %3494, %63
  %3496 = icmp slt i32 %3495, 0
  %3497 = icmp sge i32 %3494, %2852
  %3498 = or i1 %2853, %3497
  %3499 = or i1 %3496, %3498
  br i1 %3499, label %3513, label %3500, !dx.controlflow.hints !49

; <label>:3500                                    ; preds = %3489
  %3501 = lshr i32 %3494, 2
  %3502 = mul i32 %84, %3501
  %3503 = add i32 %102, %3502
  %3504 = shl i32 %3503, 2
  %3505 = shl i32 %3494, 3
  %3506 = and i32 %3505, 24
  %3507 = or i32 %3506, %93
  %3508 = shl i32 1, %3507
  %3509 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %3504, i32 undef)  ; BufferLoad(srv,index,wot)
  %3510 = extractvalue %dx.types.ResRet.i32 %3509, 0
  %3511 = and i32 %3510, %3508
  %3512 = icmp ne i32 %3511, 0
  br label %3513

; <label>:3513                                    ; preds = %3500, %3489
  %3514 = phi i1 [ %3512, %3500 ], [ false, %3489 ]
  %3515 = xor i1 %3514, true
  %3516 = uitofp i1 %3515 to float
  %3517 = fadd fast float %3493, %3516
  %3518 = sub i32 %63, %3468
  %3519 = or i32 %3518, %64
  %3520 = icmp slt i32 %3519, 0
  %3521 = icmp sge i32 %3518, %2851
  %3522 = or i1 %3521, %2903
  %3523 = or i1 %3520, %3522
  br i1 %3523, label %3537, label %3524, !dx.controlflow.hints !49

; <label>:3524                                    ; preds = %3513
  %3525 = lshr i32 %3518, 3
  %3526 = add i32 %81, %3525
  %3527 = add i32 %3526, %100
  %3528 = add i32 %3527, %85
  %3529 = shl i32 %3528, 2
  %3530 = and i32 %3518, 7
  %3531 = or i32 %3530, %92
  %3532 = shl i32 1, %3531
  %3533 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %3529, i32 undef)  ; BufferLoad(srv,index,wot)
  %3534 = extractvalue %dx.types.ResRet.i32 %3533, 0
  %3535 = and i32 %3534, %3532
  %3536 = icmp ne i32 %3535, 0
  br label %3537

; <label>:3537                                    ; preds = %3524, %3513
  %3538 = phi i1 [ %3536, %3524 ], [ false, %3513 ]
  %3539 = xor i1 %3538, true
  %3540 = uitofp i1 %3539 to float
  %3541 = fadd fast float %3517, %3540
  %3542 = add i32 %3468, %63
  %3543 = or i32 %3542, %64
  %3544 = icmp slt i32 %3543, 0
  %3545 = icmp sge i32 %3542, %2851
  %3546 = or i1 %3545, %2903
  %3547 = or i1 %3544, %3546
  br i1 %3547, label %3561, label %3548, !dx.controlflow.hints !49

; <label>:3548                                    ; preds = %3537
  %3549 = lshr i32 %3542, 3
  %3550 = add i32 %81, %3549
  %3551 = add i32 %3550, %100
  %3552 = add i32 %3551, %85
  %3553 = shl i32 %3552, 2
  %3554 = and i32 %3542, 7
  %3555 = or i32 %3554, %92
  %3556 = shl i32 1, %3555
  %3557 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %3553, i32 undef)  ; BufferLoad(srv,index,wot)
  %3558 = extractvalue %dx.types.ResRet.i32 %3557, 0
  %3559 = and i32 %3558, %3556
  %3560 = icmp ne i32 %3559, 0
  br label %3561

; <label>:3561                                    ; preds = %3548, %3537
  %3562 = phi i1 [ %3560, %3548 ], [ false, %3537 ]
  %3563 = xor i1 %3562, true
  %3564 = uitofp i1 %3563 to float
  %3565 = fadd fast float %3541, %3564
  %3566 = or i32 %3470, %3518
  %3567 = icmp slt i32 %3566, 0
  %3568 = or i1 %3521, %3473
  %3569 = or i1 %3567, %3568
  br i1 %3569, label %3587, label %3570, !dx.controlflow.hints !49

; <label>:3570                                    ; preds = %3561
  %3571 = lshr i32 %3470, 2
  %3572 = mul i32 %84, %3571
  %3573 = lshr i32 %3518, 3
  %3574 = add i32 %81, %3573
  %3575 = add i32 %3574, %100
  %3576 = add i32 %3575, %3572
  %3577 = shl i32 %3576, 2
  %3578 = shl i32 %3470, 3
  %3579 = and i32 %3578, 24
  %3580 = and i32 %3518, 7
  %3581 = or i32 %3579, %3580
  %3582 = shl i32 1, %3581
  %3583 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %3577, i32 undef)  ; BufferLoad(srv,index,wot)
  %3584 = extractvalue %dx.types.ResRet.i32 %3583, 0
  %3585 = and i32 %3584, %3582
  %3586 = icmp ne i32 %3585, 0
  br label %3587

; <label>:3587                                    ; preds = %3570, %3561
  %3588 = phi i1 [ %3586, %3570 ], [ false, %3561 ]
  %3589 = xor i1 %3588, true
  %3590 = uitofp i1 %3589 to float
  %3591 = fadd fast float %3565, %3590
  %3592 = or i32 %3470, %3542
  %3593 = icmp slt i32 %3592, 0
  %3594 = or i1 %3545, %3473
  %3595 = or i1 %3593, %3594
  br i1 %3595, label %3613, label %3596, !dx.controlflow.hints !49

; <label>:3596                                    ; preds = %3587
  %3597 = lshr i32 %3470, 2
  %3598 = mul i32 %84, %3597
  %3599 = lshr i32 %3542, 3
  %3600 = add i32 %81, %3599
  %3601 = add i32 %3600, %100
  %3602 = add i32 %3601, %3598
  %3603 = shl i32 %3602, 2
  %3604 = shl i32 %3470, 3
  %3605 = and i32 %3604, 24
  %3606 = and i32 %3542, 7
  %3607 = or i32 %3605, %3606
  %3608 = shl i32 1, %3607
  %3609 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %3603, i32 undef)  ; BufferLoad(srv,index,wot)
  %3610 = extractvalue %dx.types.ResRet.i32 %3609, 0
  %3611 = and i32 %3610, %3608
  %3612 = icmp ne i32 %3611, 0
  br label %3613

; <label>:3613                                    ; preds = %3596, %3587
  %3614 = phi i1 [ %3612, %3596 ], [ false, %3587 ]
  %3615 = xor i1 %3614, true
  %3616 = uitofp i1 %3615 to float
  %3617 = fadd fast float %3591, %3616
  %3618 = or i32 %3494, %3518
  %3619 = icmp slt i32 %3618, 0
  %3620 = or i1 %3521, %3497
  %3621 = or i1 %3619, %3620
  br i1 %3621, label %3639, label %3622, !dx.controlflow.hints !49

; <label>:3622                                    ; preds = %3613
  %3623 = lshr i32 %3494, 2
  %3624 = mul i32 %84, %3623
  %3625 = lshr i32 %3518, 3
  %3626 = add i32 %81, %3625
  %3627 = add i32 %3626, %100
  %3628 = add i32 %3627, %3624
  %3629 = shl i32 %3628, 2
  %3630 = shl i32 %3494, 3
  %3631 = and i32 %3630, 24
  %3632 = and i32 %3518, 7
  %3633 = or i32 %3631, %3632
  %3634 = shl i32 1, %3633
  %3635 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %3629, i32 undef)  ; BufferLoad(srv,index,wot)
  %3636 = extractvalue %dx.types.ResRet.i32 %3635, 0
  %3637 = and i32 %3636, %3634
  %3638 = icmp ne i32 %3637, 0
  br label %3639

; <label>:3639                                    ; preds = %3622, %3613
  %3640 = phi i1 [ %3638, %3622 ], [ false, %3613 ]
  %3641 = xor i1 %3640, true
  %3642 = uitofp i1 %3641 to float
  %3643 = fadd fast float %3617, %3642
  %3644 = or i32 %3494, %3542
  %3645 = icmp slt i32 %3644, 0
  %3646 = or i1 %3545, %3497
  %3647 = or i1 %3645, %3646
  br i1 %3647, label %3665, label %3648, !dx.controlflow.hints !49

; <label>:3648                                    ; preds = %3639
  %3649 = lshr i32 %3494, 2
  %3650 = mul i32 %84, %3649
  %3651 = lshr i32 %3542, 3
  %3652 = add i32 %81, %3651
  %3653 = add i32 %3652, %100
  %3654 = add i32 %3653, %3650
  %3655 = shl i32 %3654, 2
  %3656 = shl i32 %3494, 3
  %3657 = and i32 %3656, 24
  %3658 = and i32 %3542, 7
  %3659 = or i32 %3657, %3658
  %3660 = shl i32 1, %3659
  %3661 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %3655, i32 undef)  ; BufferLoad(srv,index,wot)
  %3662 = extractvalue %dx.types.ResRet.i32 %3661, 0
  %3663 = and i32 %3662, %3660
  %3664 = icmp ne i32 %3663, 0
  br label %3665

; <label>:3665                                    ; preds = %3648, %3639
  %3666 = phi i1 [ %3664, %3648 ], [ false, %3639 ]
  %3667 = xor i1 %3666, true
  %3668 = uitofp i1 %3667 to float
  %3669 = fadd fast float %3643, %3668
  %3670 = fmul fast float %2839, 5.000000e+00
  %3671 = fmul fast float %2840, 5.000000e+00
  %3672 = call float @dx.op.unary.f32(i32 28, float %3670)  ; Round_pi(value)
  %3673 = call float @dx.op.unary.f32(i32 28, float %3671)  ; Round_pi(value)
  %3674 = fptosi float %3672 to i32
  %3675 = fptosi float %3673 to i32
  %3676 = sub i32 %64, %3675
  %3677 = or i32 %3676, %63
  %3678 = icmp slt i32 %3677, 0
  %3679 = icmp sge i32 %3676, %2852
  %3680 = or i1 %2853, %3679
  %3681 = or i1 %3678, %3680
  br i1 %3681, label %3695, label %3682, !dx.controlflow.hints !49

; <label>:3682                                    ; preds = %3665
  %3683 = lshr i32 %3676, 2
  %3684 = mul i32 %84, %3683
  %3685 = add i32 %102, %3684
  %3686 = shl i32 %3685, 2
  %3687 = shl i32 %3676, 3
  %3688 = and i32 %3687, 24
  %3689 = or i32 %3688, %93
  %3690 = shl i32 1, %3689
  %3691 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %3686, i32 undef)  ; BufferLoad(srv,index,wot)
  %3692 = extractvalue %dx.types.ResRet.i32 %3691, 0
  %3693 = and i32 %3692, %3690
  %3694 = icmp ne i32 %3693, 0
  br label %3695

; <label>:3695                                    ; preds = %3682, %3665
  %3696 = phi i1 [ %3694, %3682 ], [ false, %3665 ]
  %3697 = xor i1 %3696, true
  %3698 = uitofp i1 %3697 to float
  %3699 = fadd fast float %3669, %3698
  %3700 = add i32 %3675, %64
  %3701 = or i32 %3700, %63
  %3702 = icmp slt i32 %3701, 0
  %3703 = icmp sge i32 %3700, %2852
  %3704 = or i1 %2853, %3703
  %3705 = or i1 %3702, %3704
  br i1 %3705, label %3719, label %3706, !dx.controlflow.hints !49

; <label>:3706                                    ; preds = %3695
  %3707 = lshr i32 %3700, 2
  %3708 = mul i32 %84, %3707
  %3709 = add i32 %102, %3708
  %3710 = shl i32 %3709, 2
  %3711 = shl i32 %3700, 3
  %3712 = and i32 %3711, 24
  %3713 = or i32 %3712, %93
  %3714 = shl i32 1, %3713
  %3715 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %3710, i32 undef)  ; BufferLoad(srv,index,wot)
  %3716 = extractvalue %dx.types.ResRet.i32 %3715, 0
  %3717 = and i32 %3716, %3714
  %3718 = icmp ne i32 %3717, 0
  br label %3719

; <label>:3719                                    ; preds = %3706, %3695
  %3720 = phi i1 [ %3718, %3706 ], [ false, %3695 ]
  %3721 = xor i1 %3720, true
  %3722 = uitofp i1 %3721 to float
  %3723 = fadd fast float %3699, %3722
  %3724 = sub i32 %63, %3674
  %3725 = or i32 %3724, %64
  %3726 = icmp slt i32 %3725, 0
  %3727 = icmp sge i32 %3724, %2851
  %3728 = or i1 %3727, %2903
  %3729 = or i1 %3726, %3728
  br i1 %3729, label %3743, label %3730, !dx.controlflow.hints !49

; <label>:3730                                    ; preds = %3719
  %3731 = lshr i32 %3724, 3
  %3732 = add i32 %81, %3731
  %3733 = add i32 %3732, %100
  %3734 = add i32 %3733, %85
  %3735 = shl i32 %3734, 2
  %3736 = and i32 %3724, 7
  %3737 = or i32 %3736, %92
  %3738 = shl i32 1, %3737
  %3739 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %3735, i32 undef)  ; BufferLoad(srv,index,wot)
  %3740 = extractvalue %dx.types.ResRet.i32 %3739, 0
  %3741 = and i32 %3740, %3738
  %3742 = icmp ne i32 %3741, 0
  br label %3743

; <label>:3743                                    ; preds = %3730, %3719
  %3744 = phi i1 [ %3742, %3730 ], [ false, %3719 ]
  %3745 = xor i1 %3744, true
  %3746 = uitofp i1 %3745 to float
  %3747 = fadd fast float %3723, %3746
  %3748 = add i32 %3674, %63
  %3749 = or i32 %3748, %64
  %3750 = icmp slt i32 %3749, 0
  %3751 = icmp sge i32 %3748, %2851
  %3752 = or i1 %3751, %2903
  %3753 = or i1 %3750, %3752
  br i1 %3753, label %3767, label %3754, !dx.controlflow.hints !49

; <label>:3754                                    ; preds = %3743
  %3755 = lshr i32 %3748, 3
  %3756 = add i32 %81, %3755
  %3757 = add i32 %3756, %100
  %3758 = add i32 %3757, %85
  %3759 = shl i32 %3758, 2
  %3760 = and i32 %3748, 7
  %3761 = or i32 %3760, %92
  %3762 = shl i32 1, %3761
  %3763 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %3759, i32 undef)  ; BufferLoad(srv,index,wot)
  %3764 = extractvalue %dx.types.ResRet.i32 %3763, 0
  %3765 = and i32 %3764, %3762
  %3766 = icmp ne i32 %3765, 0
  br label %3767

; <label>:3767                                    ; preds = %3754, %3743
  %3768 = phi i1 [ %3766, %3754 ], [ false, %3743 ]
  %3769 = xor i1 %3768, true
  %3770 = uitofp i1 %3769 to float
  %3771 = fadd fast float %3747, %3770
  %3772 = or i32 %3676, %3724
  %3773 = icmp slt i32 %3772, 0
  %3774 = or i1 %3727, %3679
  %3775 = or i1 %3773, %3774
  br i1 %3775, label %3793, label %3776, !dx.controlflow.hints !49

; <label>:3776                                    ; preds = %3767
  %3777 = lshr i32 %3676, 2
  %3778 = mul i32 %84, %3777
  %3779 = lshr i32 %3724, 3
  %3780 = add i32 %81, %3779
  %3781 = add i32 %3780, %100
  %3782 = add i32 %3781, %3778
  %3783 = shl i32 %3782, 2
  %3784 = shl i32 %3676, 3
  %3785 = and i32 %3784, 24
  %3786 = and i32 %3724, 7
  %3787 = or i32 %3785, %3786
  %3788 = shl i32 1, %3787
  %3789 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %3783, i32 undef)  ; BufferLoad(srv,index,wot)
  %3790 = extractvalue %dx.types.ResRet.i32 %3789, 0
  %3791 = and i32 %3790, %3788
  %3792 = icmp ne i32 %3791, 0
  br label %3793

; <label>:3793                                    ; preds = %3776, %3767
  %3794 = phi i1 [ %3792, %3776 ], [ false, %3767 ]
  %3795 = xor i1 %3794, true
  %3796 = uitofp i1 %3795 to float
  %3797 = fadd fast float %3771, %3796
  %3798 = or i32 %3676, %3748
  %3799 = icmp slt i32 %3798, 0
  %3800 = or i1 %3751, %3679
  %3801 = or i1 %3799, %3800
  br i1 %3801, label %3819, label %3802, !dx.controlflow.hints !49

; <label>:3802                                    ; preds = %3793
  %3803 = lshr i32 %3676, 2
  %3804 = mul i32 %84, %3803
  %3805 = lshr i32 %3748, 3
  %3806 = add i32 %81, %3805
  %3807 = add i32 %3806, %100
  %3808 = add i32 %3807, %3804
  %3809 = shl i32 %3808, 2
  %3810 = shl i32 %3676, 3
  %3811 = and i32 %3810, 24
  %3812 = and i32 %3748, 7
  %3813 = or i32 %3811, %3812
  %3814 = shl i32 1, %3813
  %3815 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %3809, i32 undef)  ; BufferLoad(srv,index,wot)
  %3816 = extractvalue %dx.types.ResRet.i32 %3815, 0
  %3817 = and i32 %3816, %3814
  %3818 = icmp ne i32 %3817, 0
  br label %3819

; <label>:3819                                    ; preds = %3802, %3793
  %3820 = phi i1 [ %3818, %3802 ], [ false, %3793 ]
  %3821 = xor i1 %3820, true
  %3822 = uitofp i1 %3821 to float
  %3823 = fadd fast float %3797, %3822
  %3824 = or i32 %3700, %3724
  %3825 = icmp slt i32 %3824, 0
  %3826 = or i1 %3727, %3703
  %3827 = or i1 %3825, %3826
  br i1 %3827, label %3845, label %3828, !dx.controlflow.hints !49

; <label>:3828                                    ; preds = %3819
  %3829 = lshr i32 %3700, 2
  %3830 = mul i32 %84, %3829
  %3831 = lshr i32 %3724, 3
  %3832 = add i32 %81, %3831
  %3833 = add i32 %3832, %100
  %3834 = add i32 %3833, %3830
  %3835 = shl i32 %3834, 2
  %3836 = shl i32 %3700, 3
  %3837 = and i32 %3836, 24
  %3838 = and i32 %3724, 7
  %3839 = or i32 %3837, %3838
  %3840 = shl i32 1, %3839
  %3841 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %3835, i32 undef)  ; BufferLoad(srv,index,wot)
  %3842 = extractvalue %dx.types.ResRet.i32 %3841, 0
  %3843 = and i32 %3842, %3840
  %3844 = icmp ne i32 %3843, 0
  br label %3845

; <label>:3845                                    ; preds = %3828, %3819
  %3846 = phi i1 [ %3844, %3828 ], [ false, %3819 ]
  %3847 = xor i1 %3846, true
  %3848 = uitofp i1 %3847 to float
  %3849 = fadd fast float %3823, %3848
  %3850 = or i32 %3700, %3748
  %3851 = icmp slt i32 %3850, 0
  %3852 = or i1 %3751, %3703
  %3853 = or i1 %3851, %3852
  br i1 %3853, label %3871, label %3854, !dx.controlflow.hints !49

; <label>:3854                                    ; preds = %3845
  %3855 = lshr i32 %3700, 2
  %3856 = mul i32 %84, %3855
  %3857 = lshr i32 %3748, 3
  %3858 = add i32 %81, %3857
  %3859 = add i32 %3858, %100
  %3860 = add i32 %3859, %3856
  %3861 = shl i32 %3860, 2
  %3862 = shl i32 %3700, 3
  %3863 = and i32 %3862, 24
  %3864 = and i32 %3748, 7
  %3865 = or i32 %3863, %3864
  %3866 = shl i32 1, %3865
  %3867 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %3861, i32 undef)  ; BufferLoad(srv,index,wot)
  %3868 = extractvalue %dx.types.ResRet.i32 %3867, 0
  %3869 = and i32 %3868, %3866
  %3870 = icmp ne i32 %3869, 0
  br label %3871

; <label>:3871                                    ; preds = %3854, %3845
  %3872 = phi i1 [ %3870, %3854 ], [ false, %3845 ]
  %3873 = xor i1 %3872, true
  %3874 = uitofp i1 %3873 to float
  %3875 = fadd fast float %3849, %3874
  %3876 = fmul fast float %2839, 6.000000e+00
  %3877 = fmul fast float %2840, 6.000000e+00
  %3878 = call float @dx.op.unary.f32(i32 28, float %3876)  ; Round_pi(value)
  %3879 = call float @dx.op.unary.f32(i32 28, float %3877)  ; Round_pi(value)
  %3880 = fptosi float %3878 to i32
  %3881 = fptosi float %3879 to i32
  %3882 = sub i32 %64, %3881
  %3883 = or i32 %3882, %63
  %3884 = icmp slt i32 %3883, 0
  %3885 = icmp sge i32 %3882, %2852
  %3886 = or i1 %2853, %3885
  %3887 = or i1 %3884, %3886
  br i1 %3887, label %3901, label %3888, !dx.controlflow.hints !49

; <label>:3888                                    ; preds = %3871
  %3889 = lshr i32 %3882, 2
  %3890 = mul i32 %84, %3889
  %3891 = add i32 %102, %3890
  %3892 = shl i32 %3891, 2
  %3893 = shl i32 %3882, 3
  %3894 = and i32 %3893, 24
  %3895 = or i32 %3894, %93
  %3896 = shl i32 1, %3895
  %3897 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %3892, i32 undef)  ; BufferLoad(srv,index,wot)
  %3898 = extractvalue %dx.types.ResRet.i32 %3897, 0
  %3899 = and i32 %3898, %3896
  %3900 = icmp ne i32 %3899, 0
  br label %3901

; <label>:3901                                    ; preds = %3888, %3871
  %3902 = phi i1 [ %3900, %3888 ], [ false, %3871 ]
  %3903 = xor i1 %3902, true
  %3904 = uitofp i1 %3903 to float
  %3905 = fadd fast float %3875, %3904
  %3906 = add i32 %3881, %64
  %3907 = or i32 %3906, %63
  %3908 = icmp slt i32 %3907, 0
  %3909 = icmp sge i32 %3906, %2852
  %3910 = or i1 %2853, %3909
  %3911 = or i1 %3908, %3910
  br i1 %3911, label %3925, label %3912, !dx.controlflow.hints !49

; <label>:3912                                    ; preds = %3901
  %3913 = lshr i32 %3906, 2
  %3914 = mul i32 %84, %3913
  %3915 = add i32 %102, %3914
  %3916 = shl i32 %3915, 2
  %3917 = shl i32 %3906, 3
  %3918 = and i32 %3917, 24
  %3919 = or i32 %3918, %93
  %3920 = shl i32 1, %3919
  %3921 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %3916, i32 undef)  ; BufferLoad(srv,index,wot)
  %3922 = extractvalue %dx.types.ResRet.i32 %3921, 0
  %3923 = and i32 %3922, %3920
  %3924 = icmp ne i32 %3923, 0
  br label %3925

; <label>:3925                                    ; preds = %3912, %3901
  %3926 = phi i1 [ %3924, %3912 ], [ false, %3901 ]
  %3927 = xor i1 %3926, true
  %3928 = uitofp i1 %3927 to float
  %3929 = fadd fast float %3905, %3928
  %3930 = sub i32 %63, %3880
  %3931 = or i32 %3930, %64
  %3932 = icmp slt i32 %3931, 0
  %3933 = icmp sge i32 %3930, %2851
  %3934 = or i1 %3933, %2903
  %3935 = or i1 %3932, %3934
  br i1 %3935, label %3949, label %3936, !dx.controlflow.hints !49

; <label>:3936                                    ; preds = %3925
  %3937 = lshr i32 %3930, 3
  %3938 = add i32 %81, %3937
  %3939 = add i32 %3938, %100
  %3940 = add i32 %3939, %85
  %3941 = shl i32 %3940, 2
  %3942 = and i32 %3930, 7
  %3943 = or i32 %3942, %92
  %3944 = shl i32 1, %3943
  %3945 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %3941, i32 undef)  ; BufferLoad(srv,index,wot)
  %3946 = extractvalue %dx.types.ResRet.i32 %3945, 0
  %3947 = and i32 %3946, %3944
  %3948 = icmp ne i32 %3947, 0
  br label %3949

; <label>:3949                                    ; preds = %3936, %3925
  %3950 = phi i1 [ %3948, %3936 ], [ false, %3925 ]
  %3951 = xor i1 %3950, true
  %3952 = uitofp i1 %3951 to float
  %3953 = fadd fast float %3929, %3952
  %3954 = add i32 %3880, %63
  %3955 = or i32 %3954, %64
  %3956 = icmp slt i32 %3955, 0
  %3957 = icmp sge i32 %3954, %2851
  %3958 = or i1 %3957, %2903
  %3959 = or i1 %3956, %3958
  br i1 %3959, label %3973, label %3960, !dx.controlflow.hints !49

; <label>:3960                                    ; preds = %3949
  %3961 = lshr i32 %3954, 3
  %3962 = add i32 %81, %3961
  %3963 = add i32 %3962, %100
  %3964 = add i32 %3963, %85
  %3965 = shl i32 %3964, 2
  %3966 = and i32 %3954, 7
  %3967 = or i32 %3966, %92
  %3968 = shl i32 1, %3967
  %3969 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %3965, i32 undef)  ; BufferLoad(srv,index,wot)
  %3970 = extractvalue %dx.types.ResRet.i32 %3969, 0
  %3971 = and i32 %3970, %3968
  %3972 = icmp ne i32 %3971, 0
  br label %3973

; <label>:3973                                    ; preds = %3960, %3949
  %3974 = phi i1 [ %3972, %3960 ], [ false, %3949 ]
  %3975 = xor i1 %3974, true
  %3976 = uitofp i1 %3975 to float
  %3977 = fadd fast float %3953, %3976
  %3978 = or i32 %3882, %3930
  %3979 = icmp slt i32 %3978, 0
  %3980 = or i1 %3933, %3885
  %3981 = or i1 %3979, %3980
  br i1 %3981, label %3999, label %3982, !dx.controlflow.hints !49

; <label>:3982                                    ; preds = %3973
  %3983 = lshr i32 %3882, 2
  %3984 = mul i32 %84, %3983
  %3985 = lshr i32 %3930, 3
  %3986 = add i32 %81, %3985
  %3987 = add i32 %3986, %100
  %3988 = add i32 %3987, %3984
  %3989 = shl i32 %3988, 2
  %3990 = shl i32 %3882, 3
  %3991 = and i32 %3990, 24
  %3992 = and i32 %3930, 7
  %3993 = or i32 %3991, %3992
  %3994 = shl i32 1, %3993
  %3995 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %3989, i32 undef)  ; BufferLoad(srv,index,wot)
  %3996 = extractvalue %dx.types.ResRet.i32 %3995, 0
  %3997 = and i32 %3996, %3994
  %3998 = icmp ne i32 %3997, 0
  br label %3999

; <label>:3999                                    ; preds = %3982, %3973
  %4000 = phi i1 [ %3998, %3982 ], [ false, %3973 ]
  %4001 = xor i1 %4000, true
  %4002 = uitofp i1 %4001 to float
  %4003 = fadd fast float %3977, %4002
  %4004 = or i32 %3882, %3954
  %4005 = icmp slt i32 %4004, 0
  %4006 = or i1 %3957, %3885
  %4007 = or i1 %4005, %4006
  br i1 %4007, label %4025, label %4008, !dx.controlflow.hints !49

; <label>:4008                                    ; preds = %3999
  %4009 = lshr i32 %3882, 2
  %4010 = mul i32 %84, %4009
  %4011 = lshr i32 %3954, 3
  %4012 = add i32 %81, %4011
  %4013 = add i32 %4012, %100
  %4014 = add i32 %4013, %4010
  %4015 = shl i32 %4014, 2
  %4016 = shl i32 %3882, 3
  %4017 = and i32 %4016, 24
  %4018 = and i32 %3954, 7
  %4019 = or i32 %4017, %4018
  %4020 = shl i32 1, %4019
  %4021 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %4015, i32 undef)  ; BufferLoad(srv,index,wot)
  %4022 = extractvalue %dx.types.ResRet.i32 %4021, 0
  %4023 = and i32 %4022, %4020
  %4024 = icmp ne i32 %4023, 0
  br label %4025

; <label>:4025                                    ; preds = %4008, %3999
  %4026 = phi i1 [ %4024, %4008 ], [ false, %3999 ]
  %4027 = xor i1 %4026, true
  %4028 = uitofp i1 %4027 to float
  %4029 = fadd fast float %4003, %4028
  %4030 = or i32 %3906, %3930
  %4031 = icmp slt i32 %4030, 0
  %4032 = or i1 %3933, %3909
  %4033 = or i1 %4031, %4032
  br i1 %4033, label %4051, label %4034, !dx.controlflow.hints !49

; <label>:4034                                    ; preds = %4025
  %4035 = lshr i32 %3906, 2
  %4036 = mul i32 %84, %4035
  %4037 = lshr i32 %3930, 3
  %4038 = add i32 %81, %4037
  %4039 = add i32 %4038, %100
  %4040 = add i32 %4039, %4036
  %4041 = shl i32 %4040, 2
  %4042 = shl i32 %3906, 3
  %4043 = and i32 %4042, 24
  %4044 = and i32 %3930, 7
  %4045 = or i32 %4043, %4044
  %4046 = shl i32 1, %4045
  %4047 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %4041, i32 undef)  ; BufferLoad(srv,index,wot)
  %4048 = extractvalue %dx.types.ResRet.i32 %4047, 0
  %4049 = and i32 %4048, %4046
  %4050 = icmp ne i32 %4049, 0
  br label %4051

; <label>:4051                                    ; preds = %4034, %4025
  %4052 = phi i1 [ %4050, %4034 ], [ false, %4025 ]
  %4053 = xor i1 %4052, true
  %4054 = uitofp i1 %4053 to float
  %4055 = fadd fast float %4029, %4054
  %4056 = or i32 %3906, %3954
  %4057 = icmp slt i32 %4056, 0
  %4058 = or i1 %3957, %3909
  %4059 = or i1 %4057, %4058
  br i1 %4059, label %4077, label %4060, !dx.controlflow.hints !49

; <label>:4060                                    ; preds = %4051
  %4061 = lshr i32 %3906, 2
  %4062 = mul i32 %84, %4061
  %4063 = lshr i32 %3954, 3
  %4064 = add i32 %81, %4063
  %4065 = add i32 %4064, %100
  %4066 = add i32 %4065, %4062
  %4067 = shl i32 %4066, 2
  %4068 = shl i32 %3906, 3
  %4069 = and i32 %4068, 24
  %4070 = and i32 %3954, 7
  %4071 = or i32 %4069, %4070
  %4072 = shl i32 1, %4071
  %4073 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %4067, i32 undef)  ; BufferLoad(srv,index,wot)
  %4074 = extractvalue %dx.types.ResRet.i32 %4073, 0
  %4075 = and i32 %4074, %4072
  %4076 = icmp ne i32 %4075, 0
  br label %4077

; <label>:4077                                    ; preds = %4060, %4051
  %4078 = phi i1 [ %4076, %4060 ], [ false, %4051 ]
  %4079 = xor i1 %4078, true
  %4080 = uitofp i1 %4079 to float
  %4081 = fadd fast float %4055, %4080
  %4082 = fmul fast float %2839, 7.000000e+00
  %4083 = fmul fast float %2840, 7.000000e+00
  %4084 = call float @dx.op.unary.f32(i32 28, float %4082)  ; Round_pi(value)
  %4085 = call float @dx.op.unary.f32(i32 28, float %4083)  ; Round_pi(value)
  %4086 = fptosi float %4084 to i32
  %4087 = fptosi float %4085 to i32
  %4088 = sub i32 %64, %4087
  %4089 = or i32 %4088, %63
  %4090 = icmp slt i32 %4089, 0
  %4091 = icmp sge i32 %4088, %2852
  %4092 = or i1 %2853, %4091
  %4093 = or i1 %4090, %4092
  br i1 %4093, label %4107, label %4094, !dx.controlflow.hints !49

; <label>:4094                                    ; preds = %4077
  %4095 = lshr i32 %4088, 2
  %4096 = mul i32 %84, %4095
  %4097 = add i32 %102, %4096
  %4098 = shl i32 %4097, 2
  %4099 = shl i32 %4088, 3
  %4100 = and i32 %4099, 24
  %4101 = or i32 %4100, %93
  %4102 = shl i32 1, %4101
  %4103 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %4098, i32 undef)  ; BufferLoad(srv,index,wot)
  %4104 = extractvalue %dx.types.ResRet.i32 %4103, 0
  %4105 = and i32 %4104, %4102
  %4106 = icmp ne i32 %4105, 0
  br label %4107

; <label>:4107                                    ; preds = %4094, %4077
  %4108 = phi i1 [ %4106, %4094 ], [ false, %4077 ]
  %4109 = xor i1 %4108, true
  %4110 = uitofp i1 %4109 to float
  %4111 = fadd fast float %4081, %4110
  %4112 = add i32 %4087, %64
  %4113 = or i32 %4112, %63
  %4114 = icmp slt i32 %4113, 0
  %4115 = icmp sge i32 %4112, %2852
  %4116 = or i1 %2853, %4115
  %4117 = or i1 %4114, %4116
  br i1 %4117, label %4131, label %4118, !dx.controlflow.hints !49

; <label>:4118                                    ; preds = %4107
  %4119 = lshr i32 %4112, 2
  %4120 = mul i32 %84, %4119
  %4121 = add i32 %102, %4120
  %4122 = shl i32 %4121, 2
  %4123 = shl i32 %4112, 3
  %4124 = and i32 %4123, 24
  %4125 = or i32 %4124, %93
  %4126 = shl i32 1, %4125
  %4127 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %4122, i32 undef)  ; BufferLoad(srv,index,wot)
  %4128 = extractvalue %dx.types.ResRet.i32 %4127, 0
  %4129 = and i32 %4128, %4126
  %4130 = icmp ne i32 %4129, 0
  br label %4131

; <label>:4131                                    ; preds = %4118, %4107
  %4132 = phi i1 [ %4130, %4118 ], [ false, %4107 ]
  %4133 = xor i1 %4132, true
  %4134 = uitofp i1 %4133 to float
  %4135 = fadd fast float %4111, %4134
  %4136 = sub i32 %63, %4086
  %4137 = or i32 %4136, %64
  %4138 = icmp slt i32 %4137, 0
  %4139 = icmp sge i32 %4136, %2851
  %4140 = or i1 %4139, %2903
  %4141 = or i1 %4138, %4140
  br i1 %4141, label %4155, label %4142, !dx.controlflow.hints !49

; <label>:4142                                    ; preds = %4131
  %4143 = lshr i32 %4136, 3
  %4144 = add i32 %81, %4143
  %4145 = add i32 %4144, %100
  %4146 = add i32 %4145, %85
  %4147 = shl i32 %4146, 2
  %4148 = and i32 %4136, 7
  %4149 = or i32 %4148, %92
  %4150 = shl i32 1, %4149
  %4151 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %4147, i32 undef)  ; BufferLoad(srv,index,wot)
  %4152 = extractvalue %dx.types.ResRet.i32 %4151, 0
  %4153 = and i32 %4152, %4150
  %4154 = icmp ne i32 %4153, 0
  br label %4155

; <label>:4155                                    ; preds = %4142, %4131
  %4156 = phi i1 [ %4154, %4142 ], [ false, %4131 ]
  %4157 = xor i1 %4156, true
  %4158 = uitofp i1 %4157 to float
  %4159 = fadd fast float %4135, %4158
  %4160 = add i32 %4086, %63
  %4161 = or i32 %4160, %64
  %4162 = icmp slt i32 %4161, 0
  %4163 = icmp sge i32 %4160, %2851
  %4164 = or i1 %4163, %2903
  %4165 = or i1 %4162, %4164
  br i1 %4165, label %4179, label %4166, !dx.controlflow.hints !49

; <label>:4166                                    ; preds = %4155
  %4167 = lshr i32 %4160, 3
  %4168 = add i32 %81, %4167
  %4169 = add i32 %4168, %100
  %4170 = add i32 %4169, %85
  %4171 = shl i32 %4170, 2
  %4172 = and i32 %4160, 7
  %4173 = or i32 %4172, %92
  %4174 = shl i32 1, %4173
  %4175 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %4171, i32 undef)  ; BufferLoad(srv,index,wot)
  %4176 = extractvalue %dx.types.ResRet.i32 %4175, 0
  %4177 = and i32 %4176, %4174
  %4178 = icmp ne i32 %4177, 0
  br label %4179

; <label>:4179                                    ; preds = %4166, %4155
  %4180 = phi i1 [ %4178, %4166 ], [ false, %4155 ]
  %4181 = xor i1 %4180, true
  %4182 = uitofp i1 %4181 to float
  %4183 = fadd fast float %4159, %4182
  %4184 = or i32 %4088, %4136
  %4185 = icmp slt i32 %4184, 0
  %4186 = or i1 %4139, %4091
  %4187 = or i1 %4185, %4186
  br i1 %4187, label %4205, label %4188, !dx.controlflow.hints !49

; <label>:4188                                    ; preds = %4179
  %4189 = lshr i32 %4088, 2
  %4190 = mul i32 %84, %4189
  %4191 = lshr i32 %4136, 3
  %4192 = add i32 %81, %4191
  %4193 = add i32 %4192, %100
  %4194 = add i32 %4193, %4190
  %4195 = shl i32 %4194, 2
  %4196 = shl i32 %4088, 3
  %4197 = and i32 %4196, 24
  %4198 = and i32 %4136, 7
  %4199 = or i32 %4197, %4198
  %4200 = shl i32 1, %4199
  %4201 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %4195, i32 undef)  ; BufferLoad(srv,index,wot)
  %4202 = extractvalue %dx.types.ResRet.i32 %4201, 0
  %4203 = and i32 %4202, %4200
  %4204 = icmp ne i32 %4203, 0
  br label %4205

; <label>:4205                                    ; preds = %4188, %4179
  %4206 = phi i1 [ %4204, %4188 ], [ false, %4179 ]
  %4207 = xor i1 %4206, true
  %4208 = uitofp i1 %4207 to float
  %4209 = fadd fast float %4183, %4208
  %4210 = or i32 %4088, %4160
  %4211 = icmp slt i32 %4210, 0
  %4212 = or i1 %4163, %4091
  %4213 = or i1 %4211, %4212
  br i1 %4213, label %4231, label %4214, !dx.controlflow.hints !49

; <label>:4214                                    ; preds = %4205
  %4215 = lshr i32 %4088, 2
  %4216 = mul i32 %84, %4215
  %4217 = lshr i32 %4160, 3
  %4218 = add i32 %81, %4217
  %4219 = add i32 %4218, %100
  %4220 = add i32 %4219, %4216
  %4221 = shl i32 %4220, 2
  %4222 = shl i32 %4088, 3
  %4223 = and i32 %4222, 24
  %4224 = and i32 %4160, 7
  %4225 = or i32 %4223, %4224
  %4226 = shl i32 1, %4225
  %4227 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %4221, i32 undef)  ; BufferLoad(srv,index,wot)
  %4228 = extractvalue %dx.types.ResRet.i32 %4227, 0
  %4229 = and i32 %4228, %4226
  %4230 = icmp ne i32 %4229, 0
  br label %4231

; <label>:4231                                    ; preds = %4214, %4205
  %4232 = phi i1 [ %4230, %4214 ], [ false, %4205 ]
  %4233 = xor i1 %4232, true
  %4234 = uitofp i1 %4233 to float
  %4235 = fadd fast float %4209, %4234
  %4236 = or i32 %4112, %4136
  %4237 = icmp slt i32 %4236, 0
  %4238 = or i1 %4139, %4115
  %4239 = or i1 %4237, %4238
  br i1 %4239, label %4257, label %4240, !dx.controlflow.hints !49

; <label>:4240                                    ; preds = %4231
  %4241 = lshr i32 %4112, 2
  %4242 = mul i32 %84, %4241
  %4243 = lshr i32 %4136, 3
  %4244 = add i32 %81, %4243
  %4245 = add i32 %4244, %100
  %4246 = add i32 %4245, %4242
  %4247 = shl i32 %4246, 2
  %4248 = shl i32 %4112, 3
  %4249 = and i32 %4248, 24
  %4250 = and i32 %4136, 7
  %4251 = or i32 %4249, %4250
  %4252 = shl i32 1, %4251
  %4253 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %4247, i32 undef)  ; BufferLoad(srv,index,wot)
  %4254 = extractvalue %dx.types.ResRet.i32 %4253, 0
  %4255 = and i32 %4254, %4252
  %4256 = icmp ne i32 %4255, 0
  br label %4257

; <label>:4257                                    ; preds = %4240, %4231
  %4258 = phi i1 [ %4256, %4240 ], [ false, %4231 ]
  %4259 = xor i1 %4258, true
  %4260 = uitofp i1 %4259 to float
  %4261 = fadd fast float %4235, %4260
  %4262 = or i32 %4112, %4160
  %4263 = icmp slt i32 %4262, 0
  %4264 = or i1 %4163, %4115
  %4265 = or i1 %4263, %4264
  br i1 %4265, label %4283, label %4266, !dx.controlflow.hints !49

; <label>:4266                                    ; preds = %4257
  %4267 = lshr i32 %4112, 2
  %4268 = mul i32 %84, %4267
  %4269 = lshr i32 %4160, 3
  %4270 = add i32 %81, %4269
  %4271 = add i32 %4270, %100
  %4272 = add i32 %4271, %4268
  %4273 = shl i32 %4272, 2
  %4274 = shl i32 %4112, 3
  %4275 = and i32 %4274, 24
  %4276 = and i32 %4160, 7
  %4277 = or i32 %4275, %4276
  %4278 = shl i32 1, %4277
  %4279 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %4273, i32 undef)  ; BufferLoad(srv,index,wot)
  %4280 = extractvalue %dx.types.ResRet.i32 %4279, 0
  %4281 = and i32 %4280, %4278
  %4282 = icmp ne i32 %4281, 0
  br label %4283

; <label>:4283                                    ; preds = %4266, %4257
  %4284 = phi i1 [ %4282, %4266 ], [ false, %4257 ]
  %4285 = xor i1 %4284, true
  %4286 = uitofp i1 %4285 to float
  %4287 = fadd fast float %4261, %4286
  %4288 = fmul fast float %2839, 8.000000e+00
  %4289 = fmul fast float %2840, 8.000000e+00
  %4290 = call float @dx.op.unary.f32(i32 28, float %4288)  ; Round_pi(value)
  %4291 = call float @dx.op.unary.f32(i32 28, float %4289)  ; Round_pi(value)
  %4292 = fptosi float %4290 to i32
  %4293 = fptosi float %4291 to i32
  %4294 = sub i32 %64, %4293
  %4295 = or i32 %4294, %63
  %4296 = icmp slt i32 %4295, 0
  %4297 = icmp sge i32 %4294, %2852
  %4298 = or i1 %2853, %4297
  %4299 = or i1 %4296, %4298
  br i1 %4299, label %4313, label %4300, !dx.controlflow.hints !49

; <label>:4300                                    ; preds = %4283
  %4301 = lshr i32 %4294, 2
  %4302 = mul i32 %84, %4301
  %4303 = add i32 %102, %4302
  %4304 = shl i32 %4303, 2
  %4305 = shl i32 %4294, 3
  %4306 = and i32 %4305, 24
  %4307 = or i32 %4306, %93
  %4308 = shl i32 1, %4307
  %4309 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %4304, i32 undef)  ; BufferLoad(srv,index,wot)
  %4310 = extractvalue %dx.types.ResRet.i32 %4309, 0
  %4311 = and i32 %4310, %4308
  %4312 = icmp ne i32 %4311, 0
  br label %4313

; <label>:4313                                    ; preds = %4300, %4283
  %4314 = phi i1 [ %4312, %4300 ], [ false, %4283 ]
  %4315 = xor i1 %4314, true
  %4316 = uitofp i1 %4315 to float
  %4317 = fadd fast float %4287, %4316
  %4318 = add i32 %4293, %64
  %4319 = or i32 %4318, %63
  %4320 = icmp slt i32 %4319, 0
  %4321 = icmp sge i32 %4318, %2852
  %4322 = or i1 %2853, %4321
  %4323 = or i1 %4320, %4322
  br i1 %4323, label %4337, label %4324, !dx.controlflow.hints !49

; <label>:4324                                    ; preds = %4313
  %4325 = lshr i32 %4318, 2
  %4326 = mul i32 %84, %4325
  %4327 = add i32 %102, %4326
  %4328 = shl i32 %4327, 2
  %4329 = shl i32 %4318, 3
  %4330 = and i32 %4329, 24
  %4331 = or i32 %4330, %93
  %4332 = shl i32 1, %4331
  %4333 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %4328, i32 undef)  ; BufferLoad(srv,index,wot)
  %4334 = extractvalue %dx.types.ResRet.i32 %4333, 0
  %4335 = and i32 %4334, %4332
  %4336 = icmp ne i32 %4335, 0
  br label %4337

; <label>:4337                                    ; preds = %4324, %4313
  %4338 = phi i1 [ %4336, %4324 ], [ false, %4313 ]
  %4339 = xor i1 %4338, true
  %4340 = uitofp i1 %4339 to float
  %4341 = fadd fast float %4317, %4340
  %4342 = sub i32 %63, %4292
  %4343 = or i32 %4342, %64
  %4344 = icmp slt i32 %4343, 0
  %4345 = icmp sge i32 %4342, %2851
  %4346 = or i1 %4345, %2903
  %4347 = or i1 %4344, %4346
  br i1 %4347, label %4361, label %4348, !dx.controlflow.hints !49

; <label>:4348                                    ; preds = %4337
  %4349 = lshr i32 %4342, 3
  %4350 = add i32 %81, %4349
  %4351 = add i32 %4350, %100
  %4352 = add i32 %4351, %85
  %4353 = shl i32 %4352, 2
  %4354 = and i32 %4342, 7
  %4355 = or i32 %4354, %92
  %4356 = shl i32 1, %4355
  %4357 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %4353, i32 undef)  ; BufferLoad(srv,index,wot)
  %4358 = extractvalue %dx.types.ResRet.i32 %4357, 0
  %4359 = and i32 %4358, %4356
  %4360 = icmp ne i32 %4359, 0
  br label %4361

; <label>:4361                                    ; preds = %4348, %4337
  %4362 = phi i1 [ %4360, %4348 ], [ false, %4337 ]
  %4363 = xor i1 %4362, true
  %4364 = uitofp i1 %4363 to float
  %4365 = fadd fast float %4341, %4364
  %4366 = add i32 %4292, %63
  %4367 = or i32 %4366, %64
  %4368 = icmp slt i32 %4367, 0
  %4369 = icmp sge i32 %4366, %2851
  %4370 = or i1 %4369, %2903
  %4371 = or i1 %4368, %4370
  br i1 %4371, label %4385, label %4372, !dx.controlflow.hints !49

; <label>:4372                                    ; preds = %4361
  %4373 = lshr i32 %4366, 3
  %4374 = add i32 %81, %4373
  %4375 = add i32 %4374, %100
  %4376 = add i32 %4375, %85
  %4377 = shl i32 %4376, 2
  %4378 = and i32 %4366, 7
  %4379 = or i32 %4378, %92
  %4380 = shl i32 1, %4379
  %4381 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %4377, i32 undef)  ; BufferLoad(srv,index,wot)
  %4382 = extractvalue %dx.types.ResRet.i32 %4381, 0
  %4383 = and i32 %4382, %4380
  %4384 = icmp ne i32 %4383, 0
  br label %4385

; <label>:4385                                    ; preds = %4372, %4361
  %4386 = phi i1 [ %4384, %4372 ], [ false, %4361 ]
  %4387 = xor i1 %4386, true
  %4388 = uitofp i1 %4387 to float
  %4389 = fadd fast float %4365, %4388
  %4390 = or i32 %4294, %4342
  %4391 = icmp slt i32 %4390, 0
  %4392 = or i1 %4345, %4297
  %4393 = or i1 %4391, %4392
  br i1 %4393, label %4411, label %4394, !dx.controlflow.hints !49

; <label>:4394                                    ; preds = %4385
  %4395 = lshr i32 %4294, 2
  %4396 = mul i32 %84, %4395
  %4397 = lshr i32 %4342, 3
  %4398 = add i32 %81, %4397
  %4399 = add i32 %4398, %100
  %4400 = add i32 %4399, %4396
  %4401 = shl i32 %4400, 2
  %4402 = shl i32 %4294, 3
  %4403 = and i32 %4402, 24
  %4404 = and i32 %4342, 7
  %4405 = or i32 %4403, %4404
  %4406 = shl i32 1, %4405
  %4407 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %4401, i32 undef)  ; BufferLoad(srv,index,wot)
  %4408 = extractvalue %dx.types.ResRet.i32 %4407, 0
  %4409 = and i32 %4408, %4406
  %4410 = icmp ne i32 %4409, 0
  br label %4411

; <label>:4411                                    ; preds = %4394, %4385
  %4412 = phi i1 [ %4410, %4394 ], [ false, %4385 ]
  %4413 = xor i1 %4412, true
  %4414 = uitofp i1 %4413 to float
  %4415 = fadd fast float %4389, %4414
  %4416 = or i32 %4294, %4366
  %4417 = icmp slt i32 %4416, 0
  %4418 = or i1 %4369, %4297
  %4419 = or i1 %4417, %4418
  br i1 %4419, label %4437, label %4420, !dx.controlflow.hints !49

; <label>:4420                                    ; preds = %4411
  %4421 = lshr i32 %4294, 2
  %4422 = mul i32 %84, %4421
  %4423 = lshr i32 %4366, 3
  %4424 = add i32 %81, %4423
  %4425 = add i32 %4424, %100
  %4426 = add i32 %4425, %4422
  %4427 = shl i32 %4426, 2
  %4428 = shl i32 %4294, 3
  %4429 = and i32 %4428, 24
  %4430 = and i32 %4366, 7
  %4431 = or i32 %4429, %4430
  %4432 = shl i32 1, %4431
  %4433 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %4427, i32 undef)  ; BufferLoad(srv,index,wot)
  %4434 = extractvalue %dx.types.ResRet.i32 %4433, 0
  %4435 = and i32 %4434, %4432
  %4436 = icmp ne i32 %4435, 0
  br label %4437

; <label>:4437                                    ; preds = %4420, %4411
  %4438 = phi i1 [ %4436, %4420 ], [ false, %4411 ]
  %4439 = xor i1 %4438, true
  %4440 = uitofp i1 %4439 to float
  %4441 = fadd fast float %4415, %4440
  %4442 = or i32 %4318, %4342
  %4443 = icmp slt i32 %4442, 0
  %4444 = or i1 %4345, %4321
  %4445 = or i1 %4443, %4444
  br i1 %4445, label %4463, label %4446, !dx.controlflow.hints !49

; <label>:4446                                    ; preds = %4437
  %4447 = lshr i32 %4318, 2
  %4448 = mul i32 %84, %4447
  %4449 = lshr i32 %4342, 3
  %4450 = add i32 %81, %4449
  %4451 = add i32 %4450, %100
  %4452 = add i32 %4451, %4448
  %4453 = shl i32 %4452, 2
  %4454 = shl i32 %4318, 3
  %4455 = and i32 %4454, 24
  %4456 = and i32 %4342, 7
  %4457 = or i32 %4455, %4456
  %4458 = shl i32 1, %4457
  %4459 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %4453, i32 undef)  ; BufferLoad(srv,index,wot)
  %4460 = extractvalue %dx.types.ResRet.i32 %4459, 0
  %4461 = and i32 %4460, %4458
  %4462 = icmp ne i32 %4461, 0
  br label %4463

; <label>:4463                                    ; preds = %4446, %4437
  %4464 = phi i1 [ %4462, %4446 ], [ false, %4437 ]
  %4465 = xor i1 %4464, true
  %4466 = uitofp i1 %4465 to float
  %4467 = fadd fast float %4441, %4466
  %4468 = or i32 %4318, %4366
  %4469 = icmp slt i32 %4468, 0
  %4470 = or i1 %4369, %4321
  %4471 = or i1 %4469, %4470
  br i1 %4471, label %4489, label %4472, !dx.controlflow.hints !49

; <label>:4472                                    ; preds = %4463
  %4473 = lshr i32 %4318, 2
  %4474 = mul i32 %84, %4473
  %4475 = lshr i32 %4366, 3
  %4476 = add i32 %81, %4475
  %4477 = add i32 %4476, %100
  %4478 = add i32 %4477, %4474
  %4479 = shl i32 %4478, 2
  %4480 = shl i32 %4318, 3
  %4481 = and i32 %4480, 24
  %4482 = and i32 %4366, 7
  %4483 = or i32 %4481, %4482
  %4484 = shl i32 1, %4483
  %4485 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %4479, i32 undef)  ; BufferLoad(srv,index,wot)
  %4486 = extractvalue %dx.types.ResRet.i32 %4485, 0
  %4487 = and i32 %4486, %4484
  %4488 = icmp ne i32 %4487, 0
  br label %4489

; <label>:4489                                    ; preds = %4472, %4463
  %4490 = phi i1 [ %4488, %4472 ], [ false, %4463 ]
  %4491 = xor i1 %4490, true
  %4492 = uitofp i1 %4491 to float
  %4493 = fadd fast float %4467, %4492
  %4494 = fmul fast float %2839, 9.000000e+00
  %4495 = fmul fast float %2840, 9.000000e+00
  %4496 = call float @dx.op.unary.f32(i32 28, float %4494)  ; Round_pi(value)
  %4497 = call float @dx.op.unary.f32(i32 28, float %4495)  ; Round_pi(value)
  %4498 = fptosi float %4496 to i32
  %4499 = fptosi float %4497 to i32
  %4500 = sub i32 %64, %4499
  %4501 = or i32 %4500, %63
  %4502 = icmp slt i32 %4501, 0
  %4503 = icmp sge i32 %4500, %2852
  %4504 = or i1 %2853, %4503
  %4505 = or i1 %4502, %4504
  br i1 %4505, label %4519, label %4506, !dx.controlflow.hints !49

; <label>:4506                                    ; preds = %4489
  %4507 = lshr i32 %4500, 2
  %4508 = mul i32 %84, %4507
  %4509 = add i32 %102, %4508
  %4510 = shl i32 %4509, 2
  %4511 = shl i32 %4500, 3
  %4512 = and i32 %4511, 24
  %4513 = or i32 %4512, %93
  %4514 = shl i32 1, %4513
  %4515 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %4510, i32 undef)  ; BufferLoad(srv,index,wot)
  %4516 = extractvalue %dx.types.ResRet.i32 %4515, 0
  %4517 = and i32 %4516, %4514
  %4518 = icmp ne i32 %4517, 0
  br label %4519

; <label>:4519                                    ; preds = %4506, %4489
  %4520 = phi i1 [ %4518, %4506 ], [ false, %4489 ]
  %4521 = xor i1 %4520, true
  %4522 = uitofp i1 %4521 to float
  %4523 = fadd fast float %4493, %4522
  %4524 = add i32 %4499, %64
  %4525 = or i32 %4524, %63
  %4526 = icmp slt i32 %4525, 0
  %4527 = icmp sge i32 %4524, %2852
  %4528 = or i1 %2853, %4527
  %4529 = or i1 %4526, %4528
  br i1 %4529, label %4543, label %4530, !dx.controlflow.hints !49

; <label>:4530                                    ; preds = %4519
  %4531 = lshr i32 %4524, 2
  %4532 = mul i32 %84, %4531
  %4533 = add i32 %102, %4532
  %4534 = shl i32 %4533, 2
  %4535 = shl i32 %4524, 3
  %4536 = and i32 %4535, 24
  %4537 = or i32 %4536, %93
  %4538 = shl i32 1, %4537
  %4539 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %4534, i32 undef)  ; BufferLoad(srv,index,wot)
  %4540 = extractvalue %dx.types.ResRet.i32 %4539, 0
  %4541 = and i32 %4540, %4538
  %4542 = icmp ne i32 %4541, 0
  br label %4543

; <label>:4543                                    ; preds = %4530, %4519
  %4544 = phi i1 [ %4542, %4530 ], [ false, %4519 ]
  %4545 = xor i1 %4544, true
  %4546 = uitofp i1 %4545 to float
  %4547 = fadd fast float %4523, %4546
  %4548 = sub i32 %63, %4498
  %4549 = or i32 %4548, %64
  %4550 = icmp slt i32 %4549, 0
  %4551 = icmp sge i32 %4548, %2851
  %4552 = or i1 %4551, %2903
  %4553 = or i1 %4550, %4552
  br i1 %4553, label %4567, label %4554, !dx.controlflow.hints !49

; <label>:4554                                    ; preds = %4543
  %4555 = lshr i32 %4548, 3
  %4556 = add i32 %81, %4555
  %4557 = add i32 %4556, %100
  %4558 = add i32 %4557, %85
  %4559 = shl i32 %4558, 2
  %4560 = and i32 %4548, 7
  %4561 = or i32 %4560, %92
  %4562 = shl i32 1, %4561
  %4563 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %4559, i32 undef)  ; BufferLoad(srv,index,wot)
  %4564 = extractvalue %dx.types.ResRet.i32 %4563, 0
  %4565 = and i32 %4564, %4562
  %4566 = icmp ne i32 %4565, 0
  br label %4567

; <label>:4567                                    ; preds = %4554, %4543
  %4568 = phi i1 [ %4566, %4554 ], [ false, %4543 ]
  %4569 = xor i1 %4568, true
  %4570 = uitofp i1 %4569 to float
  %4571 = fadd fast float %4547, %4570
  %4572 = add i32 %4498, %63
  %4573 = or i32 %4572, %64
  %4574 = icmp slt i32 %4573, 0
  %4575 = icmp sge i32 %4572, %2851
  %4576 = or i1 %4575, %2903
  %4577 = or i1 %4574, %4576
  br i1 %4577, label %4591, label %4578, !dx.controlflow.hints !49

; <label>:4578                                    ; preds = %4567
  %4579 = lshr i32 %4572, 3
  %4580 = add i32 %81, %4579
  %4581 = add i32 %4580, %100
  %4582 = add i32 %4581, %85
  %4583 = shl i32 %4582, 2
  %4584 = and i32 %4572, 7
  %4585 = or i32 %4584, %92
  %4586 = shl i32 1, %4585
  %4587 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %4583, i32 undef)  ; BufferLoad(srv,index,wot)
  %4588 = extractvalue %dx.types.ResRet.i32 %4587, 0
  %4589 = and i32 %4588, %4586
  %4590 = icmp ne i32 %4589, 0
  br label %4591

; <label>:4591                                    ; preds = %4578, %4567
  %4592 = phi i1 [ %4590, %4578 ], [ false, %4567 ]
  %4593 = xor i1 %4592, true
  %4594 = uitofp i1 %4593 to float
  %4595 = fadd fast float %4571, %4594
  %4596 = or i32 %4500, %4548
  %4597 = icmp slt i32 %4596, 0
  %4598 = or i1 %4551, %4503
  %4599 = or i1 %4597, %4598
  br i1 %4599, label %4617, label %4600, !dx.controlflow.hints !49

; <label>:4600                                    ; preds = %4591
  %4601 = lshr i32 %4500, 2
  %4602 = mul i32 %84, %4601
  %4603 = lshr i32 %4548, 3
  %4604 = add i32 %81, %4603
  %4605 = add i32 %4604, %100
  %4606 = add i32 %4605, %4602
  %4607 = shl i32 %4606, 2
  %4608 = shl i32 %4500, 3
  %4609 = and i32 %4608, 24
  %4610 = and i32 %4548, 7
  %4611 = or i32 %4609, %4610
  %4612 = shl i32 1, %4611
  %4613 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %4607, i32 undef)  ; BufferLoad(srv,index,wot)
  %4614 = extractvalue %dx.types.ResRet.i32 %4613, 0
  %4615 = and i32 %4614, %4612
  %4616 = icmp ne i32 %4615, 0
  br label %4617

; <label>:4617                                    ; preds = %4600, %4591
  %4618 = phi i1 [ %4616, %4600 ], [ false, %4591 ]
  %4619 = xor i1 %4618, true
  %4620 = uitofp i1 %4619 to float
  %4621 = fadd fast float %4595, %4620
  %4622 = or i32 %4500, %4572
  %4623 = icmp slt i32 %4622, 0
  %4624 = or i1 %4575, %4503
  %4625 = or i1 %4623, %4624
  br i1 %4625, label %4643, label %4626, !dx.controlflow.hints !49

; <label>:4626                                    ; preds = %4617
  %4627 = lshr i32 %4500, 2
  %4628 = mul i32 %84, %4627
  %4629 = lshr i32 %4572, 3
  %4630 = add i32 %81, %4629
  %4631 = add i32 %4630, %100
  %4632 = add i32 %4631, %4628
  %4633 = shl i32 %4632, 2
  %4634 = shl i32 %4500, 3
  %4635 = and i32 %4634, 24
  %4636 = and i32 %4572, 7
  %4637 = or i32 %4635, %4636
  %4638 = shl i32 1, %4637
  %4639 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %4633, i32 undef)  ; BufferLoad(srv,index,wot)
  %4640 = extractvalue %dx.types.ResRet.i32 %4639, 0
  %4641 = and i32 %4640, %4638
  %4642 = icmp ne i32 %4641, 0
  br label %4643

; <label>:4643                                    ; preds = %4626, %4617
  %4644 = phi i1 [ %4642, %4626 ], [ false, %4617 ]
  %4645 = xor i1 %4644, true
  %4646 = uitofp i1 %4645 to float
  %4647 = fadd fast float %4621, %4646
  %4648 = or i32 %4524, %4548
  %4649 = icmp slt i32 %4648, 0
  %4650 = or i1 %4551, %4527
  %4651 = or i1 %4649, %4650
  br i1 %4651, label %4669, label %4652, !dx.controlflow.hints !49

; <label>:4652                                    ; preds = %4643
  %4653 = lshr i32 %4524, 2
  %4654 = mul i32 %84, %4653
  %4655 = lshr i32 %4548, 3
  %4656 = add i32 %81, %4655
  %4657 = add i32 %4656, %100
  %4658 = add i32 %4657, %4654
  %4659 = shl i32 %4658, 2
  %4660 = shl i32 %4524, 3
  %4661 = and i32 %4660, 24
  %4662 = and i32 %4548, 7
  %4663 = or i32 %4661, %4662
  %4664 = shl i32 1, %4663
  %4665 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %4659, i32 undef)  ; BufferLoad(srv,index,wot)
  %4666 = extractvalue %dx.types.ResRet.i32 %4665, 0
  %4667 = and i32 %4666, %4664
  %4668 = icmp ne i32 %4667, 0
  br label %4669

; <label>:4669                                    ; preds = %4652, %4643
  %4670 = phi i1 [ %4668, %4652 ], [ false, %4643 ]
  %4671 = xor i1 %4670, true
  %4672 = uitofp i1 %4671 to float
  %4673 = fadd fast float %4647, %4672
  %4674 = or i32 %4524, %4572
  %4675 = icmp slt i32 %4674, 0
  %4676 = or i1 %4575, %4527
  %4677 = or i1 %4675, %4676
  br i1 %4677, label %4695, label %4678, !dx.controlflow.hints !49

; <label>:4678                                    ; preds = %4669
  %4679 = lshr i32 %4524, 2
  %4680 = mul i32 %84, %4679
  %4681 = lshr i32 %4572, 3
  %4682 = add i32 %81, %4681
  %4683 = add i32 %4682, %100
  %4684 = add i32 %4683, %4680
  %4685 = shl i32 %4684, 2
  %4686 = shl i32 %4524, 3
  %4687 = and i32 %4686, 24
  %4688 = and i32 %4572, 7
  %4689 = or i32 %4687, %4688
  %4690 = shl i32 1, %4689
  %4691 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %4685, i32 undef)  ; BufferLoad(srv,index,wot)
  %4692 = extractvalue %dx.types.ResRet.i32 %4691, 0
  %4693 = and i32 %4692, %4690
  %4694 = icmp ne i32 %4693, 0
  br label %4695

; <label>:4695                                    ; preds = %4678, %4669
  %4696 = phi i1 [ %4694, %4678 ], [ false, %4669 ]
  %4697 = xor i1 %4696, true
  %4698 = uitofp i1 %4697 to float
  %4699 = fadd fast float %4673, %4698
  %4700 = fmul fast float %2839, 1.000000e+01
  %4701 = fmul fast float %2840, 1.000000e+01
  %4702 = call float @dx.op.unary.f32(i32 28, float %4700)  ; Round_pi(value)
  %4703 = call float @dx.op.unary.f32(i32 28, float %4701)  ; Round_pi(value)
  %4704 = fptosi float %4702 to i32
  %4705 = fptosi float %4703 to i32
  %4706 = sub i32 %64, %4705
  %4707 = or i32 %4706, %63
  %4708 = icmp slt i32 %4707, 0
  %4709 = icmp sge i32 %4706, %2852
  %4710 = or i1 %2853, %4709
  %4711 = or i1 %4708, %4710
  br i1 %4711, label %4726, label %4712, !dx.controlflow.hints !49

; <label>:4712                                    ; preds = %4695
  %4713 = lshr i32 %4706, 2
  %4714 = mul i32 %84, %4713
  %4715 = add i32 %102, %4714
  %4716 = shl i32 %4715, 2
  %4717 = shl i32 %4706, 3
  %4718 = and i32 %4717, 24
  %4719 = or i32 %4718, %93
  %4720 = shl i32 1, %4719
  %4721 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %4716, i32 undef)  ; BufferLoad(srv,index,wot)
  %4722 = extractvalue %dx.types.ResRet.i32 %4721, 0
  %4723 = and i32 %4722, %4720
  %4724 = icmp eq i32 %4723, 0
  %4725 = uitofp i1 %4724 to float
  br label %4726

; <label>:4726                                    ; preds = %4712, %4695
  %4727 = phi float [ %4725, %4712 ], [ 1.000000e+00, %4695 ]
  %4728 = fadd fast float %4699, %4727
  %4729 = add i32 %4705, %64
  %4730 = or i32 %4729, %63
  %4731 = icmp slt i32 %4730, 0
  %4732 = icmp sge i32 %4729, %2852
  %4733 = or i1 %2853, %4732
  %4734 = or i1 %4731, %4733
  br i1 %4734, label %4749, label %4735, !dx.controlflow.hints !49

; <label>:4735                                    ; preds = %4726
  %4736 = lshr i32 %4729, 2
  %4737 = mul i32 %84, %4736
  %4738 = add i32 %102, %4737
  %4739 = shl i32 %4738, 2
  %4740 = shl i32 %4729, 3
  %4741 = and i32 %4740, 24
  %4742 = or i32 %4741, %93
  %4743 = shl i32 1, %4742
  %4744 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %4739, i32 undef)  ; BufferLoad(srv,index,wot)
  %4745 = extractvalue %dx.types.ResRet.i32 %4744, 0
  %4746 = and i32 %4745, %4743
  %4747 = icmp eq i32 %4746, 0
  %4748 = uitofp i1 %4747 to float
  br label %4749

; <label>:4749                                    ; preds = %4735, %4726
  %4750 = phi float [ %4748, %4735 ], [ 1.000000e+00, %4726 ]
  %4751 = fadd fast float %4728, %4750
  %4752 = sub i32 %63, %4704
  %4753 = or i32 %4752, %64
  %4754 = icmp slt i32 %4753, 0
  %4755 = icmp sge i32 %4752, %2851
  %4756 = or i1 %4755, %2903
  %4757 = or i1 %4754, %4756
  br i1 %4757, label %4772, label %4758, !dx.controlflow.hints !49

; <label>:4758                                    ; preds = %4749
  %4759 = lshr i32 %4752, 3
  %4760 = add i32 %81, %4759
  %4761 = add i32 %4760, %100
  %4762 = add i32 %4761, %85
  %4763 = shl i32 %4762, 2
  %4764 = and i32 %4752, 7
  %4765 = or i32 %4764, %92
  %4766 = shl i32 1, %4765
  %4767 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %4763, i32 undef)  ; BufferLoad(srv,index,wot)
  %4768 = extractvalue %dx.types.ResRet.i32 %4767, 0
  %4769 = and i32 %4768, %4766
  %4770 = icmp eq i32 %4769, 0
  %4771 = uitofp i1 %4770 to float
  br label %4772

; <label>:4772                                    ; preds = %4758, %4749
  %4773 = phi float [ %4771, %4758 ], [ 1.000000e+00, %4749 ]
  %4774 = fadd fast float %4751, %4773
  %4775 = add i32 %4704, %63
  %4776 = or i32 %4775, %64
  %4777 = icmp slt i32 %4776, 0
  %4778 = icmp sge i32 %4775, %2851
  %4779 = or i1 %4778, %2903
  %4780 = or i1 %4777, %4779
  br i1 %4780, label %4795, label %4781, !dx.controlflow.hints !49

; <label>:4781                                    ; preds = %4772
  %4782 = lshr i32 %4775, 3
  %4783 = add i32 %81, %4782
  %4784 = add i32 %4783, %100
  %4785 = add i32 %4784, %85
  %4786 = shl i32 %4785, 2
  %4787 = and i32 %4775, 7
  %4788 = or i32 %4787, %92
  %4789 = shl i32 1, %4788
  %4790 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %4786, i32 undef)  ; BufferLoad(srv,index,wot)
  %4791 = extractvalue %dx.types.ResRet.i32 %4790, 0
  %4792 = and i32 %4791, %4789
  %4793 = icmp eq i32 %4792, 0
  %4794 = uitofp i1 %4793 to float
  br label %4795

; <label>:4795                                    ; preds = %4781, %4772
  %4796 = phi float [ %4794, %4781 ], [ 1.000000e+00, %4772 ]
  %4797 = fadd fast float %4774, %4796
  %4798 = or i32 %4706, %4752
  %4799 = icmp slt i32 %4798, 0
  %4800 = or i1 %4755, %4709
  %4801 = or i1 %4799, %4800
  br i1 %4801, label %4820, label %4802, !dx.controlflow.hints !49

; <label>:4802                                    ; preds = %4795
  %4803 = lshr i32 %4706, 2
  %4804 = mul i32 %84, %4803
  %4805 = lshr i32 %4752, 3
  %4806 = add i32 %81, %4805
  %4807 = add i32 %4806, %100
  %4808 = add i32 %4807, %4804
  %4809 = shl i32 %4808, 2
  %4810 = shl i32 %4706, 3
  %4811 = and i32 %4810, 24
  %4812 = and i32 %4752, 7
  %4813 = or i32 %4811, %4812
  %4814 = shl i32 1, %4813
  %4815 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %4809, i32 undef)  ; BufferLoad(srv,index,wot)
  %4816 = extractvalue %dx.types.ResRet.i32 %4815, 0
  %4817 = and i32 %4816, %4814
  %4818 = icmp eq i32 %4817, 0
  %4819 = uitofp i1 %4818 to float
  br label %4820

; <label>:4820                                    ; preds = %4802, %4795
  %4821 = phi float [ %4819, %4802 ], [ 1.000000e+00, %4795 ]
  %4822 = fadd fast float %4797, %4821
  %4823 = or i32 %4706, %4775
  %4824 = icmp slt i32 %4823, 0
  %4825 = or i1 %4778, %4709
  %4826 = or i1 %4824, %4825
  br i1 %4826, label %4845, label %4827, !dx.controlflow.hints !49

; <label>:4827                                    ; preds = %4820
  %4828 = lshr i32 %4706, 2
  %4829 = mul i32 %84, %4828
  %4830 = lshr i32 %4775, 3
  %4831 = add i32 %81, %4830
  %4832 = add i32 %4831, %100
  %4833 = add i32 %4832, %4829
  %4834 = shl i32 %4833, 2
  %4835 = shl i32 %4706, 3
  %4836 = and i32 %4835, 24
  %4837 = and i32 %4775, 7
  %4838 = or i32 %4836, %4837
  %4839 = shl i32 1, %4838
  %4840 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %4834, i32 undef)  ; BufferLoad(srv,index,wot)
  %4841 = extractvalue %dx.types.ResRet.i32 %4840, 0
  %4842 = and i32 %4841, %4839
  %4843 = icmp eq i32 %4842, 0
  %4844 = uitofp i1 %4843 to float
  br label %4845

; <label>:4845                                    ; preds = %4827, %4820
  %4846 = phi float [ %4844, %4827 ], [ 1.000000e+00, %4820 ]
  %4847 = fadd fast float %4822, %4846
  %4848 = or i32 %4729, %4752
  %4849 = icmp slt i32 %4848, 0
  %4850 = or i1 %4755, %4732
  %4851 = or i1 %4849, %4850
  br i1 %4851, label %4870, label %4852, !dx.controlflow.hints !49

; <label>:4852                                    ; preds = %4845
  %4853 = lshr i32 %4729, 2
  %4854 = mul i32 %84, %4853
  %4855 = lshr i32 %4752, 3
  %4856 = add i32 %81, %4855
  %4857 = add i32 %4856, %100
  %4858 = add i32 %4857, %4854
  %4859 = shl i32 %4858, 2
  %4860 = shl i32 %4729, 3
  %4861 = and i32 %4860, 24
  %4862 = and i32 %4752, 7
  %4863 = or i32 %4861, %4862
  %4864 = shl i32 1, %4863
  %4865 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %4859, i32 undef)  ; BufferLoad(srv,index,wot)
  %4866 = extractvalue %dx.types.ResRet.i32 %4865, 0
  %4867 = and i32 %4866, %4864
  %4868 = icmp eq i32 %4867, 0
  %4869 = uitofp i1 %4868 to float
  br label %4870

; <label>:4870                                    ; preds = %4852, %4845
  %4871 = phi float [ %4869, %4852 ], [ 1.000000e+00, %4845 ]
  %4872 = fadd fast float %4847, %4871
  %4873 = or i32 %4729, %4775
  %4874 = icmp slt i32 %4873, 0
  %4875 = or i1 %4778, %4732
  %4876 = or i1 %4874, %4875
  br i1 %4876, label %4895, label %4877, !dx.controlflow.hints !49

; <label>:4877                                    ; preds = %4870
  %4878 = lshr i32 %4729, 2
  %4879 = mul i32 %84, %4878
  %4880 = lshr i32 %4775, 3
  %4881 = add i32 %81, %4880
  %4882 = add i32 %4881, %100
  %4883 = add i32 %4882, %4879
  %4884 = shl i32 %4883, 2
  %4885 = shl i32 %4729, 3
  %4886 = and i32 %4885, 24
  %4887 = and i32 %4775, 7
  %4888 = or i32 %4886, %4887
  %4889 = shl i32 1, %4888
  %4890 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %4884, i32 undef)  ; BufferLoad(srv,index,wot)
  %4891 = extractvalue %dx.types.ResRet.i32 %4890, 0
  %4892 = and i32 %4891, %4889
  %4893 = icmp eq i32 %4892, 0
  %4894 = uitofp i1 %4893 to float
  br label %4895

; <label>:4895                                    ; preds = %4877, %4870
  %4896 = phi float [ %4894, %4877 ], [ 1.000000e+00, %4870 ]
  %4897 = fadd fast float %4872, %4896
  %4898 = fmul fast float %2793, 1.500000e+00
  %4899 = fsub fast float 3.000000e+00, %4898
  %4900 = fdiv fast float 0x3FB99999A0000000, %4899
  %4901 = fmul fast float %2793, 2.000000e+00
  %4902 = fsub fast float 8.000000e+00, %4897
  %4903 = fsub fast float %4902, %4901
  %4904 = fmul fast float %4903, 4.000000e+00
  %4905 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4904)  ; FMax(a,b)
  %4906 = fadd fast float %4905, %4897
  %4907 = fmul fast float %4906, %4900
  %4908 = fadd fast float %2793, 1.500000e+00
  %4909 = fsub fast float 1.000000e+00, %4907
  %4910 = call float @dx.op.unary.f32(i32 7, float %4909)  ; Saturate(value)
  %4911 = call float @dx.op.unary.f32(i32 23, float %4910)  ; Log(value)
  %4912 = fmul fast float %4911, %4908
  %4913 = call float @dx.op.unary.f32(i32 21, float %4912)  ; Exp(value)
  %4914 = fmul fast float %2631, %2627
  %4915 = fmul fast float %2632, %2628
  %4916 = fmul fast float %2633, %2629
  %4917 = call float @dx.op.unary.f32(i32 23, float %2771)  ; Log(value)
  %4918 = fmul fast float %4917, 2.500000e-01
  %4919 = call float @dx.op.unary.f32(i32 21, float %4918)  ; Exp(value)
  %4920 = fmul fast float %2634, %2630
  %4921 = fmul fast float %4920, %2635
  %4922 = fmul fast float %4921, %4913
  %4923 = fmul fast float %4922, %4919
  br label %5489

; <label>:4924                                    ; preds = %621
  %4925 = and i32 %636, 511
  %4926 = mul nuw nsw i32 %4925, 20
  %4927 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %4926, i32 undef)  ; BufferLoad(srv,index,wot)
  %4928 = extractvalue %dx.types.ResRet.i32 %4927, 0
  %4929 = lshr i32 %4928, 24
  %4930 = uitofp i32 %4929 to float
  %4931 = add i32 %64, -1
  %4932 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %12, i32 0, i32 %63, i32 %4931, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4933 = extractvalue %dx.types.ResRet.i32 %4932, 0
  %4934 = lshr i32 %4933, 8
  %4935 = and i32 %4933, 255
  %4936 = and i32 %4934, 255
  %4937 = uitofp i32 %4935 to float
  %4938 = uitofp i32 %4936 to float
  %4939 = fmul fast float %4937, 0x3F80101020000000
  %4940 = fmul fast float %4938, 0x3F80101020000000
  %4941 = fadd fast float %4939, -1.000000e+00
  %4942 = fadd fast float %4940, -1.000000e+00
  %4943 = call float @dx.op.unary.f32(i32 6, float %4941)  ; FAbs(value)
  %4944 = fsub fast float 1.000000e+00, %4943
  %4945 = call float @dx.op.unary.f32(i32 6, float %4942)  ; FAbs(value)
  %4946 = fsub fast float %4944, %4945
  %4947 = fsub fast float -0.000000e+00, %4946
  %4948 = call float @dx.op.binary.f32(i32 35, float %4947, float 0.000000e+00)  ; FMax(a,b)
  %4949 = fcmp fast ogt float %4941, 0.000000e+00
  %4950 = fsub fast float -0.000000e+00, %4948
  %4951 = select i1 %4949, float %4950, float %4948
  %4952 = fadd fast float %4951, %4941
  %4953 = fcmp fast ogt float %4942, 0.000000e+00
  %4954 = select i1 %4953, float %4950, float %4948
  %4955 = fadd fast float %4954, %4942
  %4956 = call float @dx.op.dot3.f32(i32 55, float %4952, float %4955, float %4946, float %4952, float %4955, float %4946)  ; Dot3(ax,ay,az,bx,by,bz)
  %4957 = call float @dx.op.unary.f32(i32 25, float %4956)  ; Rsqrt(value)
  %4958 = fmul fast float %4952, %4957
  %4959 = fmul fast float %4955, %4957
  %4960 = fmul fast float %4957, %4946
  %4961 = add i32 %64, 1
  %4962 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %12, i32 0, i32 %63, i32 %4961, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4963 = extractvalue %dx.types.ResRet.i32 %4962, 0
  %4964 = lshr i32 %4963, 8
  %4965 = and i32 %4963, 255
  %4966 = and i32 %4964, 255
  %4967 = uitofp i32 %4965 to float
  %4968 = uitofp i32 %4966 to float
  %4969 = fmul fast float %4967, 0x3F80101020000000
  %4970 = fmul fast float %4968, 0x3F80101020000000
  %4971 = fadd fast float %4969, -1.000000e+00
  %4972 = fadd fast float %4970, -1.000000e+00
  %4973 = call float @dx.op.unary.f32(i32 6, float %4971)  ; FAbs(value)
  %4974 = fsub fast float 1.000000e+00, %4973
  %4975 = call float @dx.op.unary.f32(i32 6, float %4972)  ; FAbs(value)
  %4976 = fsub fast float %4974, %4975
  %4977 = fsub fast float -0.000000e+00, %4976
  %4978 = call float @dx.op.binary.f32(i32 35, float %4977, float 0.000000e+00)  ; FMax(a,b)
  %4979 = fcmp fast ogt float %4971, 0.000000e+00
  %4980 = fsub fast float -0.000000e+00, %4978
  %4981 = select i1 %4979, float %4980, float %4978
  %4982 = fadd fast float %4981, %4971
  %4983 = fcmp fast ogt float %4972, 0.000000e+00
  %4984 = select i1 %4983, float %4980, float %4978
  %4985 = fadd fast float %4984, %4972
  %4986 = call float @dx.op.dot3.f32(i32 55, float %4982, float %4985, float %4976, float %4982, float %4985, float %4976)  ; Dot3(ax,ay,az,bx,by,bz)
  %4987 = call float @dx.op.unary.f32(i32 25, float %4986)  ; Rsqrt(value)
  %4988 = fmul fast float %4982, %4987
  %4989 = fmul fast float %4985, %4987
  %4990 = fmul fast float %4987, %4976
  %4991 = add i32 %63, -1
  %4992 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %12, i32 0, i32 %4991, i32 %64, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4993 = extractvalue %dx.types.ResRet.i32 %4992, 0
  %4994 = lshr i32 %4993, 8
  %4995 = and i32 %4993, 255
  %4996 = and i32 %4994, 255
  %4997 = uitofp i32 %4995 to float
  %4998 = uitofp i32 %4996 to float
  %4999 = fmul fast float %4997, 0x3F80101020000000
  %5000 = fmul fast float %4998, 0x3F80101020000000
  %5001 = fadd fast float %4999, -1.000000e+00
  %5002 = fadd fast float %5000, -1.000000e+00
  %5003 = call float @dx.op.unary.f32(i32 6, float %5001)  ; FAbs(value)
  %5004 = fsub fast float 1.000000e+00, %5003
  %5005 = call float @dx.op.unary.f32(i32 6, float %5002)  ; FAbs(value)
  %5006 = fsub fast float %5004, %5005
  %5007 = fsub fast float -0.000000e+00, %5006
  %5008 = call float @dx.op.binary.f32(i32 35, float %5007, float 0.000000e+00)  ; FMax(a,b)
  %5009 = fcmp fast ogt float %5001, 0.000000e+00
  %5010 = fsub fast float -0.000000e+00, %5008
  %5011 = select i1 %5009, float %5010, float %5008
  %5012 = fadd fast float %5011, %5001
  %5013 = fcmp fast ogt float %5002, 0.000000e+00
  %5014 = select i1 %5013, float %5010, float %5008
  %5015 = fadd fast float %5014, %5002
  %5016 = call float @dx.op.dot3.f32(i32 55, float %5012, float %5015, float %5006, float %5012, float %5015, float %5006)  ; Dot3(ax,ay,az,bx,by,bz)
  %5017 = call float @dx.op.unary.f32(i32 25, float %5016)  ; Rsqrt(value)
  %5018 = fmul fast float %5012, %5017
  %5019 = fmul fast float %5015, %5017
  %5020 = fmul fast float %5017, %5006
  %5021 = add i32 %63, 1
  %5022 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %12, i32 0, i32 %5021, i32 %64, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5023 = extractvalue %dx.types.ResRet.i32 %5022, 0
  %5024 = lshr i32 %5023, 8
  %5025 = and i32 %5023, 255
  %5026 = and i32 %5024, 255
  %5027 = uitofp i32 %5025 to float
  %5028 = uitofp i32 %5026 to float
  %5029 = fmul fast float %5027, 0x3F80101020000000
  %5030 = fmul fast float %5028, 0x3F80101020000000
  %5031 = fadd fast float %5029, -1.000000e+00
  %5032 = fadd fast float %5030, -1.000000e+00
  %5033 = call float @dx.op.unary.f32(i32 6, float %5031)  ; FAbs(value)
  %5034 = fsub fast float 1.000000e+00, %5033
  %5035 = call float @dx.op.unary.f32(i32 6, float %5032)  ; FAbs(value)
  %5036 = fsub fast float %5034, %5035
  %5037 = fsub fast float -0.000000e+00, %5036
  %5038 = call float @dx.op.binary.f32(i32 35, float %5037, float 0.000000e+00)  ; FMax(a,b)
  %5039 = fcmp fast ogt float %5031, 0.000000e+00
  %5040 = fsub fast float -0.000000e+00, %5038
  %5041 = select i1 %5039, float %5040, float %5038
  %5042 = fadd fast float %5041, %5031
  %5043 = fcmp fast ogt float %5032, 0.000000e+00
  %5044 = select i1 %5043, float %5040, float %5038
  %5045 = fadd fast float %5044, %5032
  %5046 = call float @dx.op.dot3.f32(i32 55, float %5042, float %5045, float %5036, float %5042, float %5045, float %5036)  ; Dot3(ax,ay,az,bx,by,bz)
  %5047 = call float @dx.op.unary.f32(i32 25, float %5046)  ; Rsqrt(value)
  %5048 = fmul fast float %5042, %5047
  %5049 = fmul fast float %5045, %5047
  %5050 = fmul fast float %5047, %5036
  %5051 = call float @dx.op.dot3.f32(i32 55, float %4958, float %4959, float %4960, float %4988, float %4989, float %4990)  ; Dot3(ax,ay,az,bx,by,bz)
  %5052 = call float @dx.op.binary.f32(i32 36, float 1.000000e+00, float %5051)  ; FMin(a,b)
  %5053 = call float @dx.op.dot3.f32(i32 55, float %4958, float %4959, float %4960, float %5018, float %5019, float %5020)  ; Dot3(ax,ay,az,bx,by,bz)
  %5054 = call float @dx.op.binary.f32(i32 36, float %5052, float %5053)  ; FMin(a,b)
  %5055 = call float @dx.op.dot3.f32(i32 55, float %4958, float %4959, float %4960, float %5048, float %5049, float %5050)  ; Dot3(ax,ay,az,bx,by,bz)
  %5056 = call float @dx.op.binary.f32(i32 36, float %5054, float %5055)  ; FMin(a,b)
  %5057 = call float @dx.op.dot3.f32(i32 55, float %4988, float %4989, float %4990, float %5018, float %5019, float %5020)  ; Dot3(ax,ay,az,bx,by,bz)
  %5058 = call float @dx.op.binary.f32(i32 36, float %5056, float %5057)  ; FMin(a,b)
  %5059 = call float @dx.op.dot3.f32(i32 55, float %4988, float %4989, float %4990, float %5048, float %5049, float %5050)  ; Dot3(ax,ay,az,bx,by,bz)
  %5060 = call float @dx.op.binary.f32(i32 36, float %5058, float %5059)  ; FMin(a,b)
  %5061 = call float @dx.op.dot3.f32(i32 55, float %5018, float %5019, float %5020, float %5048, float %5049, float %5050)  ; Dot3(ax,ay,az,bx,by,bz)
  %5062 = call float @dx.op.binary.f32(i32 36, float %5060, float %5061)  ; FMin(a,b)
  %5063 = call float @dx.op.unary.f32(i32 7, float %5062)  ; Saturate(value)
  %5064 = fsub fast float 1.000000e+00, %5063
  %5065 = add nuw nsw i32 %4926, 12
  %5066 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %5065, i32 undef)  ; BufferLoad(srv,index,wot)
  %5067 = extractvalue %dx.types.ResRet.i32 %5066, 0
  %5068 = lshr i32 %5067, 16
  %5069 = uitofp i32 %5068 to float
  %5070 = fmul fast float %5069, 0x3EF0002000000000
  %5071 = add nuw nsw i32 %4926, 8
  %5072 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %5071, i32 undef)  ; BufferLoad(srv,index,wot)
  %5073 = extractvalue %dx.types.ResRet.i32 %5072, 0
  %5074 = lshr i32 %5073, 16
  %5075 = uitofp i32 %5074 to float
  %5076 = fmul fast float %5075, 0x3EF0002000000000
  %5077 = fsub fast float %45, %5076
  %5078 = fdiv fast float %5077, %5070
  %5079 = fmul fast float %68, %44
  %5080 = fmul fast float %5079, 4.000000e+02
  %5081 = fmul fast float %45, 4.000000e+02
  %5082 = call float @dx.op.unary.f32(i32 22, float %5080)  ; Frc(value)
  %5083 = call float @dx.op.unary.f32(i32 22, float %5081)  ; Frc(value)
  %5084 = fadd fast float %5082, -5.000000e-01
  %5085 = fadd fast float %5083, -5.000000e-01
  %5086 = fmul fast float %5084, 2.000000e+00
  %5087 = fmul fast float %5085, 2.000000e+00
  %5088 = call float @dx.op.dot2.f32(i32 54, float %5086, float %5087, float %5086, float %5087)  ; Dot2(ax,ay,bx,by)
  %5089 = call float @dx.op.unary.f32(i32 24, float %5088)  ; Sqrt(value)
  %5090 = fmul fast float %5089, 0x4004C77B00000000
  %5091 = fsub fast float 2.000000e+00, %5090
  %5092 = call float @dx.op.unary.f32(i32 7, float %5091)  ; Saturate(value)
  %5093 = fmul fast float %4930, 0x3F924C82A0000000
  %5094 = fmul fast float %4930, 0x3F78278DA0000000
  %5095 = fsub fast float 0x400E470B00000000, %5093
  %5096 = fadd fast float %5095, %5078
  %5097 = fmul fast float %5096, 1.000000e+01
  %5098 = call float @dx.op.unary.f32(i32 7, float %5097)  ; Saturate(value)
  %5099 = fsub fast float 0x3FE286BC80000000, %5094
  %5100 = fadd fast float %5099, %5078
  %5101 = fmul fast float %5100, 1.250000e+00
  %5102 = call float @dx.op.unary.f32(i32 7, float %5101)  ; Saturate(value)
  %5103 = fsub fast float 1.000000e+00, %5102
  %5104 = fmul fast float %5103, %5098
  %5105 = fmul fast float %4930, 0x3F8E317100000000
  %5106 = fsub fast float 0x40079435C0000000, %5105
  %5107 = fadd fast float %5106, %5078
  %5108 = fmul fast float %5107, 0x401AAAAAA0000000
  %5109 = call float @dx.op.unary.f32(i32 7, float %5108)  ; Saturate(value)
  %5110 = fsub fast float 1.000000e+00, %5109
  %5111 = fmul fast float %5110, %5098
  %5112 = fmul fast float %5079, 4.500000e+01
  %5113 = fmul fast float %45, 4.500000e+01
  %5114 = fadd fast float %5113, -5.000000e-01
  %5115 = fmul fast float %5079, 0x4039FB1300000000
  %5116 = fadd fast float %5115, 0xBFE279A720000000
  %5117 = call float @dx.op.unary.f32(i32 27, float %5115)  ; Round_ni(value)
  %5118 = call float @dx.op.unary.f32(i32 27, float %5113)  ; Round_ni(value)
  %5119 = call float @dx.op.unary.f32(i32 27, float %5116)  ; Round_ni(value)
  %5120 = call float @dx.op.unary.f32(i32 27, float %5114)  ; Round_ni(value)
  %5121 = fadd fast float %5117, 5.000000e-01
  %5122 = fadd fast float %5118, 5.000000e-01
  %5123 = fmul fast float %5121, 0x3FFBB67B20000000
  %5124 = fsub fast float %5112, %5123
  %5125 = fsub fast float %5113, %5122
  %5126 = fadd fast float %5119, 1.000000e+00
  %5127 = fmul fast float %5126, 0x3FFBB67B20000000
  %5128 = fsub fast float %5112, %5127
  %5129 = fadd fast float %5113, -1.000000e+00
  %5130 = fsub fast float %5129, %5120
  %5131 = call float @dx.op.dot2.f32(i32 54, float %5124, float %5125, float %5124, float %5125)  ; Dot2(ax,ay,bx,by)
  %5132 = call float @dx.op.dot2.f32(i32 54, float %5128, float %5130, float %5128, float %5130)  ; Dot2(ax,ay,bx,by)
  %5133 = fcmp fast olt float %5131, %5132
  %5134 = fadd fast float %5120, 1.000000e+00
  %5135 = select i1 %5133, float %5124, float %5128
  %5136 = select i1 %5133, float %5125, float %5130
  %5137 = select i1 %5133, float %5121, float %5126
  %5138 = select i1 %5133, float %5122, float %5134
  %5139 = call float @dx.op.unary.f32(i32 6, float %5135)  ; FAbs(value)
  %5140 = call float @dx.op.unary.f32(i32 6, float %5136)  ; FAbs(value)
  %5141 = call float @dx.op.dot2.f32(i32 54, float %5139, float %5140, float 0x3FEBB67B20000000, float 5.000000e-01)  ; Dot2(ax,ay,bx,by)
  %5142 = call float @dx.op.binary.f32(i32 35, float %5141, float %5140)  ; FMax(a,b)
  %5143 = fmul fast float %5137, 0x3F96C16C20000000
  %5144 = fmul fast float %5138, 0x3F96C16C20000000
  %5145 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %5146 = extractvalue %dx.types.CBufRet.f32 %5145, 3
  %5147 = call float @dx.op.unary.f32(i32 22, float %5146)  ; Frc(value)
  %5148 = fmul fast float %5147, 0x3FC99999A0000000
  %5149 = fadd fast float %5148, %5144
  %5150 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %14, float %5143, float %5149, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5151 = extractvalue %dx.types.ResRet.f32 %5150, 0
  %5152 = fsub fast float 0x3FEEB851E0000000, %5104
  %5153 = fmul fast float %5152, 0x3FF0AAAAC0000000
  %5154 = call float @dx.op.unary.f32(i32 7, float %5153)  ; Saturate(value)
  %5155 = fmul fast float %5154, 2.000000e+00
  %5156 = fsub fast float 3.000000e+00, %5155
  %5157 = fmul fast float %5154, %5154
  %5158 = fmul fast float %5157, %5156
  %5159 = fadd fast float %5142, 0xBFE0A3D700000000
  %5160 = fadd fast float %5159, %5158
  %5161 = fmul fast float %5160, -2.000000e+01
  %5162 = call float @dx.op.unary.f32(i32 7, float %5161)  ; Saturate(value)
  %5163 = fmul fast float %5162, 2.000000e+00
  %5164 = fsub fast float 3.000000e+00, %5163
  %5165 = fmul fast float %5159, -2.000000e+01
  %5166 = call float @dx.op.unary.f32(i32 7, float %5165)  ; Saturate(value)
  %5167 = fmul fast float %5166, 2.000000e+00
  %5168 = fsub fast float 3.000000e+00, %5167
  %5169 = fmul fast float %5166, %5166
  %5170 = fmul fast float %5169, %5168
  %5171 = fsub fast float 1.000000e+00, %5170
  %5172 = fmul fast float %5171, 0x3FE51EB860000000
  %5173 = fmul fast float %5142, 0x3FC99999A0000000
  %5174 = fsub fast float 1.000000e+00, %5142
  %5175 = fmul fast float %5162, %5162
  %5176 = fmul fast float %5175, %5142
  %5177 = fmul fast float %5176, %5164
  %5178 = fadd fast float %5177, %5174
  %5179 = fmul fast float %5178, %5151
  %5180 = fsub fast float 0x3FEEB851E0000000, %5111
  %5181 = fmul fast float %5180, 0x3FF0AAAAC0000000
  %5182 = call float @dx.op.unary.f32(i32 7, float %5181)  ; Saturate(value)
  %5183 = fmul fast float %5182, 2.000000e+00
  %5184 = fsub fast float 3.000000e+00, %5183
  %5185 = fmul fast float %5182, %5182
  %5186 = fmul fast float %5185, %5184
  %5187 = fadd fast float %5159, %5186
  %5188 = fmul fast float %5187, -2.000000e+01
  %5189 = call float @dx.op.unary.f32(i32 7, float %5188)  ; Saturate(value)
  %5190 = fmul fast float %5189, 2.000000e+00
  %5191 = fsub fast float 3.000000e+00, %5190
  %5192 = fmul fast float %5189, %5189
  %5193 = fmul fast float %5192, %5142
  %5194 = fmul fast float %5193, %5191
  %5195 = fadd fast float %5194, %5174
  %5196 = fmul fast float %5195, %5151
  %5197 = fadd fast float %5172, %5173
  %5198 = fadd fast float %5197, %5196
  %5199 = fmul fast float %5111, 2.000000e+00
  %5200 = fmul fast float %5199, %5198
  %5201 = fadd fast float %5197, %5179
  %5202 = fmul fast float %5201, %5104
  %5203 = fadd fast float %5202, %5200
  %5204 = fmul fast float %5092, 0x3FD99999A0000000
  %5205 = fmul fast float %5064, 0x3FE3333340000000
  %5206 = fadd fast float %5205, 0x3FE3333340000000
  %5207 = fadd fast float %5206, %5204
  %5208 = fmul fast float %5203, %5207
  %5209 = call float @dx.op.unary.f32(i32 23, float %5208)  ; Log(value)
  %5210 = fmul fast float %5209, 3.000000e+00
  %5211 = call float @dx.op.unary.f32(i32 21, float %5210)  ; Exp(value)
  %5212 = fmul fast float %5211, 0x3FF112D7C0000000
  %5213 = fmul fast float %5211, 0xBFF8A1CB00000000
  %5214 = fmul fast float %5213, %5212
  %5215 = call float @dx.op.unary.f32(i32 21, float %5214)  ; Exp(value)
  %5216 = fmul fast float %5211, 0x3FEDDA5080000000
  %5217 = fmul fast float %5211, 0xBFB16E5400000000
  %5218 = fmul fast float %5211, 0xBFEBAC8600000000
  %5219 = fmul fast float %5216, %5215
  %5220 = fmul fast float %5217, %5215
  %5221 = fmul fast float %5218, %5215
  %5222 = fadd fast float %5219, %5212
  %5223 = fadd fast float %5220, %5212
  %5224 = fadd fast float %5221, %5212
  %5225 = call float @dx.op.unary.f32(i32 20, float %5222)  ; Htan(value)
  %5226 = call float @dx.op.unary.f32(i32 20, float %5223)  ; Htan(value)
  %5227 = call float @dx.op.unary.f32(i32 20, float %5224)  ; Htan(value)
  %5228 = fmul fast float %5225, 5.000000e+00
  %5229 = fmul fast float %5226, 5.000000e+00
  %5230 = fmul fast float %5227, 5.000000e+00
  %5231 = call float @dx.op.unary.f32(i32 7, float %5228)  ; Saturate(value)
  %5232 = call float @dx.op.unary.f32(i32 7, float %5229)  ; Saturate(value)
  %5233 = call float @dx.op.unary.f32(i32 7, float %5230)  ; Saturate(value)
  %5234 = fmul fast float %5226, 3.000000e+00
  %5235 = call float @dx.op.unary.f32(i32 7, float %5234)  ; Saturate(value)
  br label %5489

; <label>:5236                                    ; preds = %621
  br i1 %116, label %5237, label %5489, !dx.controlflow.hints !58

; <label>:5237                                    ; preds = %5236
  %5238 = and i32 %636, 511
  %5239 = mul nuw nsw i32 %5238, 20
  %5240 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %5239, i32 undef)  ; BufferLoad(srv,index,wot)
  %5241 = extractvalue %dx.types.ResRet.i32 %5240, 0
  %5242 = and i32 %5241, 255
  %5243 = uitofp i32 %5242 to float
  %5244 = lshr i32 %5241, 8
  %5245 = and i32 %5244, 255
  %5246 = uitofp i32 %5245 to float
  %5247 = lshr i32 %5241, 16
  %5248 = and i32 %5247, 255
  %5249 = uitofp i32 %5248 to float
  %5250 = lshr i32 %5241, 24
  %5251 = uitofp i32 %5250 to float
  %5252 = fmul fast float %5251, 0x3F70101020000000
  %5253 = fsub fast float 1.000000e+00, %5252
  %5254 = add nuw nsw i32 %5239, 12
  %5255 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %5254, i32 undef)  ; BufferLoad(srv,index,wot)
  %5256 = extractvalue %dx.types.ResRet.i32 %5255, 0
  %5257 = and i32 %5256, 65535
  %5258 = uitofp i32 %5257 to float
  %5259 = fmul fast float %5258, 0x3EF0002000000000
  %5260 = lshr i32 %5256, 16
  %5261 = uitofp i32 %5260 to float
  %5262 = fmul fast float %5261, 0x3EF0002000000000
  %5263 = add nuw nsw i32 %5239, 8
  %5264 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %5263, i32 undef)  ; BufferLoad(srv,index,wot)
  %5265 = extractvalue %dx.types.ResRet.i32 %5264, 0
  %5266 = and i32 %5265, 65535
  %5267 = uitofp i32 %5266 to float
  %5268 = fmul fast float %5267, 0x3EF0002000000000
  %5269 = lshr i32 %5265, 16
  %5270 = uitofp i32 %5269 to float
  %5271 = fmul fast float %5270, 0x3EF0002000000000
  %5272 = fsub fast float %44, %5268
  %5273 = fdiv fast float %5272, %5259
  %5274 = fsub fast float %45, %5271
  %5275 = fdiv fast float %5274, %5262
  %5276 = add nuw nsw i32 %5239, 16
  %5277 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %5276, i32 undef)  ; BufferLoad(srv,index,wot)
  %5278 = extractvalue %dx.types.ResRet.f32 %5277, 0
  %5279 = fdiv fast float 2.400000e+02, %5278
  %5280 = call float @dx.op.unary.f32(i32 7, float %5279)  ; Saturate(value)
  %5281 = fmul fast float %5280, 4.000000e+01
  %5282 = fptoui float %5281 to i32
  %5283 = uitofp i32 %63 to float
  %5284 = uitofp i32 %64 to float
  %5285 = fptoui float %5283 to i32
  %5286 = fptoui float %5284 to i32
  %5287 = lshr i32 %5286, 2
  %5288 = mul i32 %84, %5287
  %5289 = lshr i32 %5285, 3
  %5290 = add i32 %81, %5289
  %5291 = add i32 %5290, %100
  %5292 = add i32 %5291, %5288
  %5293 = shl i32 %5292, 2
  %5294 = shl i32 %5286, 3
  %5295 = and i32 %5294, 24
  %5296 = and i32 %5285, 7
  %5297 = or i32 %5295, %5296
  %5298 = shl i32 1, %5297
  %5299 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %5293, i32 undef)  ; BufferLoad(srv,index,wot)
  %5300 = extractvalue %dx.types.ResRet.i32 %5299, 0
  %5301 = and i32 %5300, %5298
  %5302 = icmp ne i32 %5301, 0
  %5303 = icmp eq i32 %5282, 0
  br i1 %5303, label %5420, label %5304, !dx.controlflow.hints !52

; <label>:5304                                    ; preds = %5237
  %5305 = uitofp i32 %5282 to float
  %5306 = fmul fast float %65, 5.000000e-01
  %5307 = fmul fast float %5306, %5305
  %5308 = fmul fast float %66, 5.000000e-01
  %5309 = fmul fast float %5308, %5305
  %5310 = call float @dx.op.binary.f32(i32 35, float 5.000000e-01, float %5307)  ; FMax(a,b)
  %5311 = call float @dx.op.binary.f32(i32 35, float 5.000000e-01, float %5309)  ; FMax(a,b)
  br label %5312

; <label>:5312                                    ; preds = %5407, %5304
  %5313 = phi float [ 0.000000e+00, %5304 ], [ %5410, %5407 ]
  %5314 = phi i32 [ 0, %5304 ], [ %5411, %5407 ]
  %5315 = fmul fast float %44, 0x3FF280E1E0000000
  %5316 = fmul fast float %45, 0x3FF280E1E0000000
  %5317 = sitofp i32 %5314 to float
  %5318 = fmul fast float %5317, 0x3FB99999A0000000
  %5319 = fadd fast float %5318, %5315
  %5320 = fadd fast float %5318, %5316
  %5321 = fmul fast float %5319, 1.024000e+03
  %5322 = fmul fast float %5320, 1.024000e+03
  %5323 = fadd fast float %5321, -5.120000e+02
  %5324 = fadd fast float %5322, -5.120000e+02
  %5325 = fmul fast float %5319, 0x4081BEDF00000000
  %5326 = fadd fast float %5325, 0xC071BEDF00000000
  %5327 = call float @dx.op.unary.f32(i32 22, float %5326)  ; Frc(value)
  %5328 = fmul fast float %5323, %5327
  %5329 = fadd fast float %5328, %5324
  %5330 = fmul fast float %5320, 0x4073BEBE20000000
  %5331 = fadd fast float %5330, 0xC063BEBE20000000
  %5332 = call float @dx.op.unary.f32(i32 22, float %5331)  ; Frc(value)
  %5333 = fmul fast float %5324, %5332
  %5334 = fadd fast float %5333, %5323
  %5335 = fmul fast float %5329, %5334
  %5336 = call float @dx.op.unary.f32(i32 22, float %5335)  ; Frc(value)
  %5337 = fmul fast float %5336, 2.000000e+00
  %5338 = fadd fast float %5337, -1.000000e+00
  %5339 = fmul fast float %5338, %5310
  %5340 = fmul fast float %44, 0x3FEB681740000000
  %5341 = fmul fast float %45, 0x3FEB681740000000
  %5342 = fmul fast float %5317, 0x3FC99999A0000000
  %5343 = fadd fast float %5342, 1.250000e-01
  %5344 = fadd fast float %5343, %5340
  %5345 = fadd fast float %5343, %5341
  %5346 = fmul fast float %5344, 1.024000e+03
  %5347 = fmul fast float %5345, 1.024000e+03
  %5348 = fadd fast float %5346, -5.120000e+02
  %5349 = fadd fast float %5347, -5.120000e+02
  %5350 = fmul fast float %5344, 0x4081BEDF00000000
  %5351 = fadd fast float %5350, 0xC071BEDF00000000
  %5352 = call float @dx.op.unary.f32(i32 22, float %5351)  ; Frc(value)
  %5353 = fmul fast float %5348, %5352
  %5354 = fadd fast float %5353, %5349
  %5355 = fmul fast float %5345, 0x4073BEBE20000000
  %5356 = fadd fast float %5355, 0xC063BEBE20000000
  %5357 = call float @dx.op.unary.f32(i32 22, float %5356)  ; Frc(value)
  %5358 = fmul fast float %5349, %5357
  %5359 = fadd fast float %5358, %5348
  %5360 = fmul fast float %5354, %5359
  %5361 = call float @dx.op.unary.f32(i32 22, float %5360)  ; Frc(value)
  %5362 = fmul fast float %5361, 2.000000e+00
  %5363 = fadd fast float %5362, -1.000000e+00
  %5364 = fmul fast float %5363, %5311
  %5365 = fptosi float %5339 to i32
  %5366 = sitofp i32 %5365 to float
  %5367 = fadd fast float %5366, %5283
  %5368 = fptosi float %5367 to i32
  %5369 = fptosi float %5364 to i32
  %5370 = sitofp i32 %5369 to float
  %5371 = fadd fast float %5370, %5284
  %5372 = fptosi float %5371 to i32
  %5373 = or i32 %5372, %5368
  %5374 = icmp slt i32 %5373, 0
  %5375 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %5376 = extractvalue %dx.types.CBufRet.f32 %5375, 0
  %5377 = extractvalue %dx.types.CBufRet.f32 %5375, 1
  %5378 = fptosi float %5376 to i32
  %5379 = fptosi float %5377 to i32
  %5380 = icmp sge i32 %5368, %5378
  %5381 = icmp sge i32 %5372, %5379
  %5382 = or i1 %5380, %5381
  %5383 = or i1 %5374, %5382
  br i1 %5383, label %5407, label %5384, !dx.controlflow.hints !49

; <label>:5384                                    ; preds = %5312
  %5385 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %18, i32 51)  ; CBufferLoadLegacy(handle,regIndex)
  %5386 = extractvalue %dx.types.CBufRet.i32 %5385, 1
  %5387 = shl i32 %5386, 2
  %5388 = extractvalue %dx.types.CBufRet.i32 %5385, 3
  %5389 = shl i32 %5388, 1
  %5390 = lshr i32 %5372, 2
  %5391 = extractvalue %dx.types.CBufRet.i32 %5385, 2
  %5392 = mul i32 %5391, %5390
  %5393 = lshr i32 %5368, 3
  %5394 = add i32 %5387, %5393
  %5395 = add i32 %5394, %5389
  %5396 = add i32 %5395, %5392
  %5397 = shl i32 %5396, 2
  %5398 = shl i32 %5372, 3
  %5399 = and i32 %5398, 24
  %5400 = and i32 %5368, 7
  %5401 = or i32 %5399, %5400
  %5402 = shl i32 1, %5401
  %5403 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %5397, i32 undef)  ; BufferLoad(srv,index,wot)
  %5404 = extractvalue %dx.types.ResRet.i32 %5403, 0
  %5405 = and i32 %5404, %5402
  %5406 = icmp ne i32 %5405, 0
  br label %5407

; <label>:5407                                    ; preds = %5384, %5312
  %5408 = phi i1 [ %5406, %5384 ], [ false, %5312 ]
  %5409 = uitofp i1 %5408 to float
  %5410 = fadd fast float %5409, %5313
  %5411 = add nuw nsw i32 %5314, 1
  %5412 = icmp eq i32 %5411, 5
  br i1 %5412, label %5413, label %5312

; <label>:5413                                    ; preds = %5407
  %5414 = uitofp i1 %5302 to float
  %5415 = fmul fast float %5414, 0x3FC99999A0000000
  %5416 = fmul fast float %5415, %5410
  %5417 = fadd fast float %5416, -5.000000e-01
  %5418 = fmul fast float %5417, 2.000000e+00
  %5419 = call float @dx.op.unary.f32(i32 7, float %5418)  ; Saturate(value)
  br label %5420

; <label>:5420                                    ; preds = %5413, %5237
  %5421 = phi float [ %5419, %5413 ], [ 0.000000e+00, %5237 ]
  %5422 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %5423 = extractvalue %dx.types.CBufRet.f32 %5422, 3
  %5424 = fmul fast float %5423, 0x3F9EB851E0000000
  %5425 = fadd fast float %5424, %5275
  %5426 = call float @dx.op.unary.f32(i32 22, float %5425)  ; Frc(value)
  %5427 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %14, float %5273, float %5426, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5428 = extractvalue %dx.types.ResRet.f32 %5427, 3
  %5429 = call float @dx.op.unary.f32(i32 7, float %5421)  ; Saturate(value)
  %5430 = fmul fast float %5428, %5253
  %5431 = fsub fast float %5429, %5430
  %5432 = call float @dx.op.unary.f32(i32 7, float %5431)  ; Saturate(value)
  %5433 = fmul fast float %5428, 1.250000e+00
  %5434 = fsub fast float %5429, %5433
  %5435 = call float @dx.op.unary.f32(i32 7, float %5434)  ; Saturate(value)
  %5436 = fmul fast float %5435, 0x3FD3333340000000
  %5437 = fadd fast float %5436, %5432
  %5438 = fmul fast float %5437, %5437
  %5439 = fmul fast float %5438, %5437
  %5440 = call float @dx.op.unary.f32(i32 7, float %5439)  ; Saturate(value)
  %5441 = fmul fast float %5440, 0x3FEBD70A40000000
  %5442 = fsub fast float 1.000000e+00, %5441
  %5443 = call float @dx.op.unary.f32(i32 7, float %44)  ; Saturate(value)
  %5444 = call float @dx.op.unary.f32(i32 7, float %45)  ; Saturate(value)
  %5445 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %15, float %5443, float %5444, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5446 = extractvalue %dx.types.ResRet.f32 %5445, 0
  %5447 = bitcast float %5446 to i32
  %5448 = lshr i32 %5447, 8
  %5449 = and i32 %5447, 255
  %5450 = and i32 %5448, 255
  %5451 = uitofp i32 %5449 to float
  %5452 = uitofp i32 %5450 to float
  %5453 = fmul fast float %5451, 0x3F80101020000000
  %5454 = fmul fast float %5452, 0x3F80101020000000
  %5455 = fadd fast float %5453, -1.000000e+00
  %5456 = fadd fast float %5454, -1.000000e+00
  %5457 = call float @dx.op.unary.f32(i32 6, float %5455)  ; FAbs(value)
  %5458 = fsub fast float 1.000000e+00, %5457
  %5459 = call float @dx.op.unary.f32(i32 6, float %5456)  ; FAbs(value)
  %5460 = fsub fast float %5458, %5459
  %5461 = fsub fast float -0.000000e+00, %5460
  %5462 = call float @dx.op.binary.f32(i32 35, float %5461, float 0.000000e+00)  ; FMax(a,b)
  %5463 = fcmp fast ogt float %5455, 0.000000e+00
  %5464 = fsub fast float -0.000000e+00, %5462
  %5465 = select i1 %5463, float %5464, float %5462
  %5466 = fadd fast float %5465, %5455
  %5467 = fcmp fast ogt float %5456, 0.000000e+00
  %5468 = select i1 %5467, float %5464, float %5462
  %5469 = fadd fast float %5468, %5456
  %5470 = call float @dx.op.dot3.f32(i32 55, float %5466, float %5469, float %5460, float %5466, float %5469, float %5460)  ; Dot3(ax,ay,az,bx,by,bz)
  %5471 = call float @dx.op.unary.f32(i32 25, float %5470)  ; Rsqrt(value)
  %5472 = fmul fast float %5466, %5471
  %5473 = fmul fast float %5469, %5471
  %5474 = fmul fast float %5471, %5460
  %5475 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 101)  ; CBufferLoadLegacy(handle,regIndex)
  %5476 = extractvalue %dx.types.CBufRet.f32 %5475, 0
  %5477 = extractvalue %dx.types.CBufRet.f32 %5475, 1
  %5478 = extractvalue %dx.types.CBufRet.f32 %5475, 2
  %5479 = call float @dx.op.dot3.f32(i32 55, float %5472, float %5473, float %5474, float %5476, float %5477, float %5478)  ; Dot3(ax,ay,az,bx,by,bz)
  %5480 = fadd fast float %5479, 2.500000e-01
  %5481 = call float @dx.op.unary.f32(i32 6, float %5480)  ; FAbs(value)
  %5482 = fsub fast float 1.000000e+00, %5481
  %5483 = fmul fast float %5243, 0x3F7278DF60000000
  %5484 = fmul fast float %5246, 0x3F7278DF60000000
  %5485 = fmul fast float %5249, 0x3F7278DF60000000
  %5486 = fmul fast float %5483, %5482
  %5487 = fmul fast float %5484, %5482
  %5488 = fmul fast float %5485, %5482
  br label %5489

; <label>:5489                                    ; preds = %5420, %5236, %4924, %4895, %2821, %2810, %2447, %2216, %1980, %1978, %1725, %1611, %988, %985, %971, %969, %621, %616
  %5490 = phi float [ %5231, %4924 ], [ %2453, %2447 ], [ %617, %1725 ], [ %2315, %2216 ], [ %1720, %1611 ], [ %1411, %988 ], [ %617, %985 ], [ %617, %616 ], [ %978, %971 ], [ %853, %969 ], [ %1986, %1980 ], [ %1862, %1978 ], [ %2627, %2810 ], [ %4914, %4895 ], [ 0.000000e+00, %2821 ], [ %5486, %5420 ], [ 0.000000e+00, %5236 ], [ 1.000000e+00, %621 ]
  %5491 = phi float [ %5232, %4924 ], [ %2454, %2447 ], [ %618, %1725 ], [ %2316, %2216 ], [ %1721, %1611 ], [ %1412, %988 ], [ %618, %985 ], [ %618, %616 ], [ %980, %971 ], [ %854, %969 ], [ %1988, %1980 ], [ %1863, %1978 ], [ %2628, %2810 ], [ %4915, %4895 ], [ 0.000000e+00, %2821 ], [ %5487, %5420 ], [ 0.000000e+00, %5236 ], [ 0.000000e+00, %621 ]
  %5492 = phi float [ %5233, %4924 ], [ %2455, %2447 ], [ %619, %1725 ], [ %2317, %2216 ], [ %1722, %1611 ], [ %1413, %988 ], [ %619, %985 ], [ %619, %616 ], [ %982, %971 ], [ %855, %969 ], [ %1990, %1980 ], [ %1864, %1978 ], [ %2629, %2810 ], [ %4916, %4895 ], [ 0.000000e+00, %2821 ], [ %5488, %5420 ], [ 0.000000e+00, %5236 ], [ 0.000000e+00, %621 ]
  %5493 = phi float [ %5235, %4924 ], [ %2456, %2447 ], [ %620, %1725 ], [ %2319, %2216 ], [ %1724, %1611 ], [ %1414, %988 ], [ %620, %985 ], [ %620, %616 ], [ %984, %971 ], [ %856, %969 ], [ %1992, %1980 ], [ %1865, %1978 ], [ %2820, %2810 ], [ %4923, %4895 ], [ 0.000000e+00, %2821 ], [ %5442, %5420 ], [ 0.000000e+00, %5236 ], [ 1.000000e+00, %621 ]
  %5494 = fmul fast float %5493, %5490
  %5495 = fmul fast float %5493, %5491
  %5496 = fmul fast float %5493, %5492
  %5497 = fcmp fast ogt float %5493, 0.000000e+00
  %5498 = and i1 %108, %5497
  br i1 %5498, label %5499, label %5699, !dx.controlflow.hints !59

; <label>:5499                                    ; preds = %5489
  %5500 = add i32 %64, -1
  %5501 = or i32 %5500, %63
  %5502 = icmp slt i32 %5501, 0
  %5503 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %5504 = extractvalue %dx.types.CBufRet.f32 %5503, 0
  %5505 = extractvalue %dx.types.CBufRet.f32 %5503, 1
  %5506 = fptosi float %5504 to i32
  %5507 = fptosi float %5505 to i32
  %5508 = icmp sge i32 %63, %5506
  %5509 = icmp sge i32 %5500, %5507
  %5510 = or i1 %5508, %5509
  %5511 = or i1 %5502, %5510
  br i1 %5511, label %5533, label %5512, !dx.controlflow.hints !49

; <label>:5512                                    ; preds = %5499
  %5513 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %18, i32 51)  ; CBufferLoadLegacy(handle,regIndex)
  %5514 = extractvalue %dx.types.CBufRet.i32 %5513, 1
  %5515 = shl i32 %5514, 2
  %5516 = extractvalue %dx.types.CBufRet.i32 %5513, 3
  %5517 = shl i32 %5516, 1
  %5518 = lshr i32 %5500, 2
  %5519 = extractvalue %dx.types.CBufRet.i32 %5513, 2
  %5520 = mul i32 %5519, %5518
  %5521 = add i32 %5515, %86
  %5522 = add i32 %5521, %5517
  %5523 = add i32 %5522, %5520
  %5524 = shl i32 %5523, 2
  %5525 = shl i32 %5500, 3
  %5526 = and i32 %5525, 24
  %5527 = or i32 %5526, %93
  %5528 = shl i32 1, %5527
  %5529 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %5524, i32 undef)  ; BufferLoad(srv,index,wot)
  %5530 = extractvalue %dx.types.ResRet.i32 %5529, 0
  %5531 = and i32 %5530, %5528
  %5532 = icmp ne i32 %5531, 0
  br label %5533

; <label>:5533                                    ; preds = %5512, %5499
  %5534 = phi i1 [ %5532, %5512 ], [ false, %5499 ]
  %5535 = add i32 %64, 1
  %5536 = or i32 %5535, %63
  %5537 = icmp slt i32 %5536, 0
  %5538 = icmp sge i32 %5535, %5507
  %5539 = or i1 %5508, %5538
  %5540 = or i1 %5537, %5539
  br i1 %5540, label %5562, label %5541, !dx.controlflow.hints !49

; <label>:5541                                    ; preds = %5533
  %5542 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %18, i32 51)  ; CBufferLoadLegacy(handle,regIndex)
  %5543 = extractvalue %dx.types.CBufRet.i32 %5542, 1
  %5544 = shl i32 %5543, 2
  %5545 = extractvalue %dx.types.CBufRet.i32 %5542, 3
  %5546 = shl i32 %5545, 1
  %5547 = lshr i32 %5535, 2
  %5548 = extractvalue %dx.types.CBufRet.i32 %5542, 2
  %5549 = mul i32 %5548, %5547
  %5550 = add i32 %5544, %86
  %5551 = add i32 %5550, %5546
  %5552 = add i32 %5551, %5549
  %5553 = shl i32 %5552, 2
  %5554 = shl i32 %5535, 3
  %5555 = and i32 %5554, 24
  %5556 = or i32 %5555, %93
  %5557 = shl i32 1, %5556
  %5558 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %5553, i32 undef)  ; BufferLoad(srv,index,wot)
  %5559 = extractvalue %dx.types.ResRet.i32 %5558, 0
  %5560 = and i32 %5559, %5557
  %5561 = icmp ne i32 %5560, 0
  br label %5562

; <label>:5562                                    ; preds = %5541, %5533
  %5563 = phi i1 [ %5561, %5541 ], [ false, %5533 ]
  %5564 = and i1 %5534, %5563
  %5565 = add i32 %63, -1
  %5566 = or i32 %5565, %64
  %5567 = icmp slt i32 %5566, 0
  %5568 = icmp sge i32 %5565, %5506
  %5569 = icmp sge i32 %64, %5507
  %5570 = or i1 %5568, %5569
  %5571 = or i1 %5567, %5570
  br i1 %5571, label %5592, label %5572, !dx.controlflow.hints !49

; <label>:5572                                    ; preds = %5562
  %5573 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %18, i32 51)  ; CBufferLoadLegacy(handle,regIndex)
  %5574 = extractvalue %dx.types.CBufRet.i32 %5573, 1
  %5575 = shl i32 %5574, 2
  %5576 = extractvalue %dx.types.CBufRet.i32 %5573, 3
  %5577 = shl i32 %5576, 1
  %5578 = extractvalue %dx.types.CBufRet.i32 %5573, 2
  %5579 = mul i32 %5578, %83
  %5580 = lshr i32 %5565, 3
  %5581 = add i32 %5575, %5580
  %5582 = add i32 %5581, %5577
  %5583 = add i32 %5582, %5579
  %5584 = shl i32 %5583, 2
  %5585 = and i32 %5565, 7
  %5586 = or i32 %92, %5585
  %5587 = shl i32 1, %5586
  %5588 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %5584, i32 undef)  ; BufferLoad(srv,index,wot)
  %5589 = extractvalue %dx.types.ResRet.i32 %5588, 0
  %5590 = and i32 %5589, %5587
  %5591 = icmp ne i32 %5590, 0
  br label %5592

; <label>:5592                                    ; preds = %5572, %5562
  %5593 = phi i1 [ %5591, %5572 ], [ false, %5562 ]
  %5594 = and i1 %5564, %5593
  %5595 = add i32 %63, 1
  %5596 = or i32 %5595, %64
  %5597 = icmp slt i32 %5596, 0
  %5598 = icmp sge i32 %5595, %5506
  %5599 = or i1 %5598, %5569
  %5600 = or i1 %5597, %5599
  br i1 %5600, label %5621, label %5601, !dx.controlflow.hints !49

; <label>:5601                                    ; preds = %5592
  %5602 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %18, i32 51)  ; CBufferLoadLegacy(handle,regIndex)
  %5603 = extractvalue %dx.types.CBufRet.i32 %5602, 1
  %5604 = shl i32 %5603, 2
  %5605 = extractvalue %dx.types.CBufRet.i32 %5602, 3
  %5606 = shl i32 %5605, 1
  %5607 = extractvalue %dx.types.CBufRet.i32 %5602, 2
  %5608 = mul i32 %5607, %83
  %5609 = lshr i32 %5595, 3
  %5610 = add i32 %5604, %5609
  %5611 = add i32 %5610, %5606
  %5612 = add i32 %5611, %5608
  %5613 = shl i32 %5612, 2
  %5614 = and i32 %5595, 7
  %5615 = or i32 %92, %5614
  %5616 = shl i32 1, %5615
  %5617 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %5613, i32 undef)  ; BufferLoad(srv,index,wot)
  %5618 = extractvalue %dx.types.ResRet.i32 %5617, 0
  %5619 = and i32 %5618, %5616
  %5620 = icmp ne i32 %5619, 0
  br label %5621

; <label>:5621                                    ; preds = %5601, %5592
  %5622 = phi i1 [ %5620, %5601 ], [ false, %5592 ]
  %5623 = and i1 %5594, %5622
  %5624 = fmul fast float %5494, 5.000000e-01
  %5625 = fmul fast float %5495, 5.000000e-01
  %5626 = fmul fast float %5496, 5.000000e-01
  %5627 = fmul fast float %5493, 5.000000e-01
  %5628 = select i1 %5623, float %5494, float %5624
  %5629 = select i1 %5623, float %5495, float %5625
  %5630 = select i1 %5623, float %5496, float %5626
  %5631 = select i1 %5623, float %5493, float %5627
  %5632 = fmul fast float %5504, %44
  %5633 = fmul fast float %5505, %45
  %5634 = fptoui float %5632 to i32
  %5635 = fptoui float %5633 to i32
  %5636 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %13, i32 0, i32 %5634, i32 %5635, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5637 = extractvalue %dx.types.ResRet.f32 %5636, 2
  %5638 = extractvalue %dx.types.ResRet.f32 %5636, 3
  %5639 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %18, i32 240)  ; CBufferLoadLegacy(handle,regIndex)
  %5640 = extractvalue %dx.types.CBufRet.i32 %5639, 0
  %5641 = icmp ne i32 %5640, 0
  %5642 = call float @dx.op.unary.f32(i32 6, float %5637)  ; FAbs(value)
  %5643 = call float @dx.op.unary.f32(i32 6, float %5638)  ; FAbs(value)
  %5644 = fadd fast float %5642, -5.000000e-01
  %5645 = fadd fast float %5643, -5.000000e-01
  %5646 = fmul fast float %5644, 2.000000e+00
  %5647 = fmul fast float %5645, 2.000000e+00
  %5648 = call float @dx.op.unary.f32(i32 7, float %5646)  ; Saturate(value)
  %5649 = call float @dx.op.unary.f32(i32 7, float %5647)  ; Saturate(value)
  %5650 = fmul fast float %5642, 2.000000e+00
  %5651 = fmul fast float %5643, 2.000000e+00
  %5652 = call float @dx.op.unary.f32(i32 7, float %5650)  ; Saturate(value)
  %5653 = call float @dx.op.unary.f32(i32 7, float %5651)  ; Saturate(value)
  %5654 = fmul fast float %5648, %5648
  %5655 = fmul fast float %5654, 0x3FA48888A0000000
  %5656 = fmul fast float %5649, %5649
  %5657 = fmul fast float %5656, 0x3FB2407960000000
  %5658 = fmul fast float %5652, 0x3F599999A0000000
  %5659 = fmul fast float %5653, 0x3F66C16C20000000
  %5660 = fadd fast float %5658, %5655
  %5661 = fadd fast float %5659, %5657
  %5662 = fsub fast float -0.000000e+00, %5660
  %5663 = fsub fast float -0.000000e+00, %5661
  %5664 = fcmp fast olt float %5637, 0.000000e+00
  %5665 = fcmp fast olt float %5638, 0.000000e+00
  %5666 = select i1 %5664, float 0.000000e+00, float 1.000000e+00
  %5667 = select i1 %5665, float 0.000000e+00, float 1.000000e+00
  %5668 = fcmp fast une float %5666, 0.000000e+00
  %5669 = fcmp fast une float %5667, 0.000000e+00
  %5670 = select i1 %5668, float %5660, float %5662
  %5671 = select i1 %5669, float %5661, float %5663
  %5672 = select i1 %5641, float %5637, float %5670
  %5673 = select i1 %5641, float %5638, float %5671
  %5674 = call float @dx.op.unary.f32(i32 6, float %5672)  ; FAbs(value)
  %5675 = call float @dx.op.unary.f32(i32 6, float %5673)  ; FAbs(value)
  %5676 = call float @dx.op.dot2.f32(i32 54, float %5674, float %5675, float %5504, float %5505)  ; Dot2(ax,ay,bx,by)
  %5677 = fsub fast float 1.000000e+00, %5676
  %5678 = call float @dx.op.unary.f32(i32 7, float %5677)  ; Saturate(value)
  %5679 = fmul fast float %5678, 7.500000e-01
  %5680 = fsub fast float %44, %5672
  %5681 = fsub fast float %45, %5673
  %5682 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %15, float %5680, float %5681, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5683 = extractvalue %dx.types.ResRet.f32 %5682, 0
  %5684 = extractvalue %dx.types.ResRet.f32 %5682, 1
  %5685 = extractvalue %dx.types.ResRet.f32 %5682, 2
  %5686 = extractvalue %dx.types.ResRet.f32 %5682, 3
  %5687 = fsub fast float %5683, %5628
  %5688 = fsub fast float %5684, %5629
  %5689 = fsub fast float %5685, %5630
  %5690 = fsub fast float %5686, %5631
  %5691 = fmul fast float %5687, %5679
  %5692 = fmul fast float %5688, %5679
  %5693 = fmul fast float %5689, %5679
  %5694 = fmul fast float %5690, %5679
  %5695 = fadd fast float %5691, %5628
  %5696 = fadd fast float %5692, %5629
  %5697 = fadd fast float %5693, %5630
  %5698 = fadd fast float %5694, %5631
  br label %5699

; <label>:5699                                    ; preds = %5621, %5489
  %5700 = phi float [ %5695, %5621 ], [ %5494, %5489 ]
  %5701 = phi float [ %5696, %5621 ], [ %5495, %5489 ]
  %5702 = phi float [ %5697, %5621 ], [ %5496, %5489 ]
  %5703 = phi float [ %5698, %5621 ], [ %5493, %5489 ]
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %35, i32 %36, i32 undef, float %5700, float %5701, float %5702, float %5703, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %5704 = and i1 %5497, %117
  %5705 = zext i1 %5704 to i32
  %5706 = mul i32 %19, 8
  %5707 = add i32 %20, %5706
  %5708 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?gsHudOutlineMask1@@3PAY07$$CAIA.1dim", i32 0, i32 %5707
  store i32 %5705, i32 addrspace(3)* %5708, align 4, !tbaa !60
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %5709 = or i32 %20, %19
  %5710 = icmp ult i32 %5709, 4
  br i1 %5710, label %5711, label %5735, !dx.controlflow.hints !64

; <label>:5711                                    ; preds = %5699
  %5712 = shl i32 %19, 1
  %5713 = shl i32 %20, 1
  %5714 = mul i32 %5712, 8
  %5715 = add i32 %5713, %5714
  %5716 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?gsHudOutlineMask1@@3PAY07$$CAIA.1dim", i32 0, i32 %5715
  %5717 = load i32, i32 addrspace(3)* %5716, align 4, !tbaa !60
  %5718 = or i32 %5713, 1
  %5719 = mul i32 %5712, 8
  %5720 = add i32 %5718, %5719
  %5721 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?gsHudOutlineMask1@@3PAY07$$CAIA.1dim", i32 0, i32 %5720
  %5722 = load i32, i32 addrspace(3)* %5721, align 4, !tbaa !60
  %5723 = or i32 %5712, 1
  %5724 = mul i32 %5723, 8
  %5725 = add i32 %5718, %5724
  %5726 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?gsHudOutlineMask1@@3PAY07$$CAIA.1dim", i32 0, i32 %5725
  %5727 = load i32, i32 addrspace(3)* %5726, align 4, !tbaa !60
  %5728 = mul i32 %5723, 8
  %5729 = add i32 %5713, %5728
  %5730 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?gsHudOutlineMask1@@3PAY07$$CAIA.1dim", i32 0, i32 %5729
  %5731 = load i32, i32 addrspace(3)* %5730, align 4, !tbaa !60
  %5732 = or i32 %5722, %5717
  %5733 = or i32 %5732, %5727
  %5734 = or i32 %5733, %5731
  store i32 %5734, i32 addrspace(3)* %5708, align 4, !tbaa !60
  br label %5735

; <label>:5735                                    ; preds = %5711, %5699
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %5736 = icmp ult i32 %5709, 2
  br i1 %5736, label %5737, label %5767, !dx.controlflow.hints !65

; <label>:5737                                    ; preds = %5735
  %5738 = shl i32 %19, 1
  %5739 = shl i32 %20, 1
  %5740 = mul i32 %5738, 8
  %5741 = add i32 %5739, %5740
  %5742 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?gsHudOutlineMask1@@3PAY07$$CAIA.1dim", i32 0, i32 %5741
  %5743 = load i32, i32 addrspace(3)* %5742, align 4, !tbaa !60
  %5744 = or i32 %5739, 1
  %5745 = mul i32 %5738, 8
  %5746 = add i32 %5744, %5745
  %5747 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?gsHudOutlineMask1@@3PAY07$$CAIA.1dim", i32 0, i32 %5746
  %5748 = load i32, i32 addrspace(3)* %5747, align 4, !tbaa !60
  %5749 = or i32 %5738, 1
  %5750 = mul i32 %5749, 8
  %5751 = add i32 %5744, %5750
  %5752 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?gsHudOutlineMask1@@3PAY07$$CAIA.1dim", i32 0, i32 %5751
  %5753 = load i32, i32 addrspace(3)* %5752, align 4, !tbaa !60
  %5754 = mul i32 %5749, 8
  %5755 = add i32 %5739, %5754
  %5756 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?gsHudOutlineMask1@@3PAY07$$CAIA.1dim", i32 0, i32 %5755
  %5757 = load i32, i32 addrspace(3)* %5756, align 4, !tbaa !60
  %5758 = or i32 %5748, %5743
  %5759 = or i32 %5758, %5753
  %5760 = or i32 %5759, %5757
  %5761 = icmp ne i32 %5760, 0
  %5762 = select i1 %5761, float 1.000000e+00, float 0.000000e+00
  %5763 = lshr i32 %35, 2
  %5764 = lshr i32 %36, 2
  %5765 = add i32 %5763, %19
  %5766 = add i32 %5764, %20
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %5765, i32 %5766, i32 undef, float %5762, float %5762, float %5762, float %5762, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %5767

; <label>:5767                                    ; preds = %5737, %5735, %0
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

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32) #1

; Function Attrs: nounwind readnone
declare i32 @dx.op.binary.i32(i32, i32, i32) #0

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32, %dx.types.Handle, i32) #1

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32, %dx.types.Handle, i32) #1

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
!4 = !{!5, !20, !23, !27}
!5 = !{!6, !8, !10, !11, !12, !13, !14, !15, !16, !18, !19}
!6 = !{i32 0, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 0, i32 1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, %"class.Texture2D<unsigned int>"* undef, !"", i32 0, i32 8, i32 1, i32 2, i32 0, !9}
!9 = !{i32 0, i32 5}
!10 = !{i32 2, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 11, i32 1, i32 2, i32 0, !7}
!11 = !{i32 3, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 1, i32 1, i32 2, i32 0, !7}
!12 = !{i32 4, %"class.Texture2D<float>"* undef, !"", i32 0, i32 2, i32 1, i32 2, i32 0, !7}
!13 = !{i32 5, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 5, i32 1, i32 11, i32 0, null}
!14 = !{i32 6, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 12, i32 1, i32 11, i32 0, null}
!15 = !{i32 7, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 13, i32 1, i32 11, i32 0, null}
!16 = !{i32 8, %"class.StructuredBuffer<unsigned int>"* undef, !"", i32 0, i32 6, i32 1, i32 12, i32 0, !17}
!17 = !{i32 1, i32 4}
!18 = !{i32 9, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 0, i32 10, i32 1, i32 4, i32 0, !7}
!19 = !{i32 10, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 3, i32 1, i32 11, i32 0, null}
!20 = !{!21, !22}
!21 = !{i32 0, %"class.RWTexture2D<vector<float, 4> >"* undef, !"", i32 0, i32 0, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!22 = !{i32 1, %"class.RWTexture2D<float>"* undef, !"", i32 0, i32 1, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
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
!59 = distinct !{!59, !"dx.controlflow.hints", i32 1}
!60 = !{!61, !61, i64 0}
!61 = !{!"int", !62, i64 0}
!62 = !{!"omnipotent char", !63, i64 0}
!63 = !{!"Simple C/C++ TBAA"}
!64 = distinct !{!64, !"dx.controlflow.hints", i32 2}
!65 = distinct !{!65, !"dx.controlflow.hints", i32 2}

