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
; shader hash: 29b7ccd6504c4f0d6191cc6622460254
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
  br i1 %27, label %28, label %5457, !dx.controlflow.hints !33

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
  %97 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %91, i32 undef)  ; BufferLoad(srv,index,wot)
  %98 = extractvalue %dx.types.ResRet.i32 %97, 0
  %99 = and i32 %98, %96
  %100 = icmp ne i32 %99, 0
  %101 = mul i32 %82, 3
  %102 = add i32 %88, %101
  %103 = add i32 %102, %86
  %104 = shl i32 %103, 2
  %105 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %104, i32 undef)  ; BufferLoad(srv,index,wot)
  %106 = extractvalue %dx.types.ResRet.i32 %105, 0
  %107 = and i32 %106, %96
  %108 = icmp ne i32 %107, 0
  %109 = xor i1 %108, true
  %110 = icmp ugt i32 %30, 268435455
  br i1 %110, label %111, label %608, !dx.controlflow.hints !34

; <label>:111                                     ; preds = %28
  %112 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %9, i32 0, i32 %35, i32 %36, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
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
  %174 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %14, float %171, float %172, float %173, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
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
  br i1 %100, label %613, label %5179, !dx.controlflow.hints !43

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
  %627 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %626, i32 undef)  ; BufferLoad(srv,index,wot)
  %628 = extractvalue %dx.types.ResRet.i32 %627, 0
  %629 = lshr i32 %628, 28
  %630 = and i32 %628, 131072
  switch i32 %629, label %5179 [
    i32 0, label %631
    i32 1, label %864
    i32 2, label %1294
    i32 3, label %1604
    i32 4, label %2109
    i32 5, label %2246
    i32 6, label %4614
    i32 7, label %4926
  ], !dx.controlflow.hints !44

; <label>:631                                     ; preds = %613
  %632 = and i32 %628, 511
  %633 = mul nuw nsw i32 %632, 20
  %634 = add nuw nsw i32 %633, 4
  %635 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %634, i32 undef)  ; BufferLoad(srv,index,wot)
  %636 = extractvalue %dx.types.ResRet.i32 %635, 0
  %637 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %633, i32 undef)  ; BufferLoad(srv,index,wot)
  %638 = extractvalue %dx.types.ResRet.i32 %637, 0
  %639 = and i32 %638, 255
  %640 = uitofp i32 %639 to float
  %641 = lshr i32 %638, 8
  %642 = and i32 %641, 255
  %643 = uitofp i32 %642 to float
  %644 = lshr i32 %638, 16
  %645 = and i32 %644, 255
  %646 = uitofp i32 %645 to float
  %647 = lshr i32 %638, 24
  %648 = uitofp i32 %647 to float
  %649 = fmul fast float %640, 0x3F70101020000000
  %650 = fmul fast float %643, 0x3F70101020000000
  %651 = fmul fast float %646, 0x3F70101020000000
  %652 = fmul fast float %648, 0x3F70101020000000
  %653 = and i32 %628, 1048576
  %654 = icmp ne i32 %653, 0
  %655 = and i32 %628, 2097152
  %656 = icmp ne i32 %655, 0
  %657 = lshr i32 %636, 8
  %658 = and i32 %657, 65535
  %659 = call float @dx.op.legacyF16ToF32(i32 131, i32 %658)  ; LegacyF16ToF32(value)
  %660 = and i32 %628, 65536
  %661 = icmp ne i32 %660, 0
  %662 = select i1 %661, float 1.000000e+00, float 0.000000e+00
  %663 = select i1 %108, float 0.000000e+00, float 1.000000e+00
  %664 = select i1 %654, float %663, float %662
  br i1 %108, label %706, label %665, !dx.controlflow.hints !45

; <label>:665                                     ; preds = %631
  %666 = icmp ne i32 %630, 0
  %667 = select i1 %666, float 1.000000e+00, float 0.000000e+00
  %668 = fmul fast float %664, %667
  %669 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %670 = extractvalue %dx.types.CBufRet.f32 %669, 0
  %671 = extractvalue %dx.types.CBufRet.f32 %669, 1
  %672 = extractvalue %dx.types.CBufRet.f32 %669, 2
  %673 = extractvalue %dx.types.CBufRet.f32 %669, 3
  %674 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %675 = extractvalue %dx.types.CBufRet.f32 %674, 0
  %676 = extractvalue %dx.types.CBufRet.f32 %674, 1
  %677 = extractvalue %dx.types.CBufRet.f32 %674, 2
  %678 = extractvalue %dx.types.CBufRet.f32 %674, 3
  %679 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %680 = extractvalue %dx.types.CBufRet.f32 %679, 0
  %681 = extractvalue %dx.types.CBufRet.f32 %679, 1
  %682 = extractvalue %dx.types.CBufRet.f32 %679, 2
  %683 = extractvalue %dx.types.CBufRet.f32 %679, 3
  %684 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %685 = extractvalue %dx.types.CBufRet.f32 %684, 0
  %686 = fadd fast float %649, -1.000000e+00
  %687 = fadd fast float %650, -1.000000e+00
  %688 = fadd fast float %651, -1.000000e+00
  %689 = fadd fast float %652, -1.000000e+00
  %690 = fmul fast float %685, %686
  %691 = fmul fast float %685, %687
  %692 = fmul fast float %685, %688
  %693 = fmul fast float %685, %689
  %694 = fadd fast float %690, 1.000000e+00
  %695 = fadd fast float %691, 1.000000e+00
  %696 = fadd fast float %692, 1.000000e+00
  %697 = fadd fast float %693, 1.000000e+00
  %698 = fmul fast float %680, %667
  %699 = fmul fast float %698, %694
  %700 = fmul fast float %681, %667
  %701 = fmul fast float %700, %695
  %702 = fmul fast float %682, %667
  %703 = fmul fast float %702, %696
  %704 = fmul fast float %683, %667
  %705 = fmul fast float %704, %697
  br label %724

; <label>:706                                     ; preds = %631
  %707 = and i32 %628, 262144
  %708 = icmp ne i32 %707, 0
  %709 = select i1 %708, float 1.000000e+00, float 0.000000e+00
  %710 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %711 = extractvalue %dx.types.CBufRet.f32 %710, 0
  %712 = extractvalue %dx.types.CBufRet.f32 %710, 1
  %713 = extractvalue %dx.types.CBufRet.f32 %710, 2
  %714 = extractvalue %dx.types.CBufRet.f32 %710, 3
  %715 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %716 = extractvalue %dx.types.CBufRet.f32 %715, 0
  %717 = extractvalue %dx.types.CBufRet.f32 %715, 1
  %718 = extractvalue %dx.types.CBufRet.f32 %715, 2
  %719 = extractvalue %dx.types.CBufRet.f32 %715, 3
  %720 = fmul fast float %649, %709
  %721 = fmul fast float %650, %709
  %722 = fmul fast float %651, %709
  %723 = fmul fast float %652, %709
  br label %724

; <label>:724                                     ; preds = %706, %665
  %725 = phi float [ %699, %665 ], [ %720, %706 ]
  %726 = phi float [ %701, %665 ], [ %721, %706 ]
  %727 = phi float [ %703, %665 ], [ %722, %706 ]
  %728 = phi float [ %705, %665 ], [ %723, %706 ]
  %729 = phi float [ %675, %665 ], [ %716, %706 ]
  %730 = phi float [ %676, %665 ], [ %717, %706 ]
  %731 = phi float [ %677, %665 ], [ %718, %706 ]
  %732 = phi float [ %678, %665 ], [ %719, %706 ]
  %733 = phi float [ %670, %665 ], [ %711, %706 ]
  %734 = phi float [ %671, %665 ], [ %712, %706 ]
  %735 = phi float [ %672, %665 ], [ %713, %706 ]
  %736 = phi float [ %673, %665 ], [ %714, %706 ]
  %737 = phi float [ %668, %665 ], [ %664, %706 ]
  %738 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %739 = extractvalue %dx.types.CBufRet.f32 %738, 0
  %740 = fmul fast float %739, 2.000000e+00
  %741 = select i1 %656, float %740, float 1.000000e+00
  %742 = fmul fast float %741, %725
  %743 = fmul fast float %741, %726
  %744 = fmul fast float %741, %727
  %745 = fmul fast float %741, %728
  %746 = fcmp fast oeq float %659, 0.000000e+00
  br i1 %746, label %848, label %747, !dx.controlflow.hints !46

; <label>:747                                     ; preds = %724
  %748 = fmul fast float %659, %65
  %749 = fadd fast float %748, 1.500000e+00
  %750 = fptosi float %749 to i32
  %751 = fmul fast float %659, %66
  %752 = fadd fast float %751, 1.500000e+00
  %753 = fptosi float %752 to i32
  %754 = call i32 @dx.op.binary.i32(i32 37, i32 1, i32 %750)  ; IMax(a,b)
  %755 = call i32 @dx.op.binary.i32(i32 37, i32 1, i32 %753)  ; IMax(a,b)
  %756 = sub i32 %64, %755
  %757 = or i32 %756, %63
  %758 = icmp slt i32 %757, 0
  %759 = fptosi float %59 to i32
  %760 = fptosi float %60 to i32
  %761 = icmp sge i32 %63, %759
  %762 = icmp sge i32 %756, %760
  %763 = or i1 %761, %762
  %764 = or i1 %758, %763
  br i1 %764, label %778, label %765, !dx.controlflow.hints !47

; <label>:765                                     ; preds = %747
  %766 = lshr i32 %756, 2
  %767 = mul i32 %85, %766
  %768 = add i32 %89, %767
  %769 = shl i32 %768, 2
  %770 = shl i32 %756, 3
  %771 = and i32 %770, 24
  %772 = or i32 %771, %94
  %773 = shl i32 1, %772
  %774 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %769, i32 undef)  ; BufferLoad(srv,index,wot)
  %775 = extractvalue %dx.types.ResRet.i32 %774, 0
  %776 = and i32 %775, %773
  %777 = icmp ne i32 %776, 0
  br label %778

; <label>:778                                     ; preds = %765, %747
  %779 = phi i1 [ %777, %765 ], [ false, %747 ]
  %780 = add i32 %755, %64
  %781 = or i32 %780, %63
  %782 = icmp slt i32 %781, 0
  %783 = icmp sge i32 %780, %760
  %784 = or i1 %761, %783
  %785 = or i1 %782, %784
  br i1 %785, label %799, label %786, !dx.controlflow.hints !47

; <label>:786                                     ; preds = %778
  %787 = lshr i32 %780, 2
  %788 = mul i32 %85, %787
  %789 = add i32 %89, %788
  %790 = shl i32 %789, 2
  %791 = shl i32 %780, 3
  %792 = and i32 %791, 24
  %793 = or i32 %792, %94
  %794 = shl i32 1, %793
  %795 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %790, i32 undef)  ; BufferLoad(srv,index,wot)
  %796 = extractvalue %dx.types.ResRet.i32 %795, 0
  %797 = and i32 %796, %794
  %798 = icmp ne i32 %797, 0
  br label %799

; <label>:799                                     ; preds = %786, %778
  %800 = phi i1 [ %798, %786 ], [ false, %778 ]
  %801 = and i1 %779, %800
  %802 = sub i32 %63, %754
  %803 = or i32 %802, %64
  %804 = icmp slt i32 %803, 0
  %805 = icmp sge i32 %802, %759
  %806 = icmp sge i32 %64, %760
  %807 = or i1 %805, %806
  %808 = or i1 %804, %807
  br i1 %808, label %822, label %809, !dx.controlflow.hints !47

; <label>:809                                     ; preds = %799
  %810 = lshr i32 %802, 3
  %811 = add i32 %81, %810
  %812 = add i32 %811, %83
  %813 = add i32 %812, %86
  %814 = shl i32 %813, 2
  %815 = and i32 %802, 7
  %816 = or i32 %815, %93
  %817 = shl i32 1, %816
  %818 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %814, i32 undef)  ; BufferLoad(srv,index,wot)
  %819 = extractvalue %dx.types.ResRet.i32 %818, 0
  %820 = and i32 %819, %817
  %821 = icmp ne i32 %820, 0
  br label %822

; <label>:822                                     ; preds = %809, %799
  %823 = phi i1 [ %821, %809 ], [ false, %799 ]
  %824 = and i1 %801, %823
  %825 = add i32 %754, %63
  %826 = or i32 %825, %64
  %827 = icmp slt i32 %826, 0
  %828 = icmp sge i32 %825, %759
  %829 = or i1 %828, %806
  %830 = or i1 %827, %829
  br i1 %830, label %844, label %831, !dx.controlflow.hints !47

; <label>:831                                     ; preds = %822
  %832 = lshr i32 %825, 3
  %833 = add i32 %81, %832
  %834 = add i32 %833, %83
  %835 = add i32 %834, %86
  %836 = shl i32 %835, 2
  %837 = and i32 %825, 7
  %838 = or i32 %837, %93
  %839 = shl i32 1, %838
  %840 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %836, i32 undef)  ; BufferLoad(srv,index,wot)
  %841 = extractvalue %dx.types.ResRet.i32 %840, 0
  %842 = and i32 %841, %839
  %843 = icmp ne i32 %842, 0
  br label %844

; <label>:844                                     ; preds = %831, %822
  %845 = phi i1 [ %843, %831 ], [ false, %822 ]
  %846 = and i1 %824, %845
  %847 = xor i1 %846, true
  br label %848

; <label>:848                                     ; preds = %844, %724
  %849 = phi i1 [ %847, %844 ], [ false, %724 ]
  br i1 %849, label %5179, label %850, !dx.controlflow.hints !48

; <label>:850                                     ; preds = %848
  %851 = select i1 %108, i1 %78, i1 %75
  %852 = select i1 %851, float %729, float %733
  %853 = select i1 %851, float %730, float %734
  %854 = select i1 %851, float %731, float %735
  %855 = select i1 %851, float %732, float %736
  %856 = fmul fast float %737, %852
  %857 = fmul fast float %737, %853
  %858 = fmul fast float %737, %854
  %859 = fmul fast float %737, %855
  %860 = fmul fast float %856, %742
  %861 = fmul fast float %857, %743
  %862 = fmul fast float %858, %744
  %863 = fmul fast float %859, %745
  br label %5179

; <label>:864                                     ; preds = %613
  %865 = or i32 %630, %107
  %866 = icmp eq i32 %865, 0
  br i1 %866, label %5179, label %867, !dx.controlflow.hints !49

; <label>:867                                     ; preds = %864
  %868 = and i32 %628, 511
  %869 = mul nuw nsw i32 %868, 20
  %870 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %869, i32 undef)  ; BufferLoad(srv,index,wot)
  %871 = extractvalue %dx.types.ResRet.i32 %870, 0
  %872 = and i32 %871, 255
  %873 = uitofp i32 %872 to float
  %874 = lshr i32 %871, 8
  %875 = and i32 %874, 255
  %876 = uitofp i32 %875 to float
  %877 = lshr i32 %871, 16
  %878 = and i32 %877, 255
  %879 = uitofp i32 %878 to float
  %880 = lshr i32 %871, 24
  %881 = uitofp i32 %880 to float
  %882 = fmul fast float %873, 0x3F70101020000000
  %883 = fmul fast float %876, 0x3F70101020000000
  %884 = fmul fast float %879, 0x3F70101020000000
  %885 = fmul fast float %881, 0x3F70101020000000
  %886 = lshr i32 %628, 5
  %887 = and i32 %886, 1008
  %888 = or i32 %887, 8
  %889 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %888, i32 undef)  ; BufferLoad(srv,index,wot)
  %890 = extractvalue %dx.types.ResRet.f32 %889, 0
  %891 = or i32 %887, 12
  %892 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %891, i32 undef)  ; BufferLoad(srv,index,wot)
  %893 = extractvalue %dx.types.ResRet.f32 %892, 0
  %894 = or i32 %887, 4
  %895 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %894, i32 undef)  ; BufferLoad(srv,index,wot)
  %896 = extractvalue %dx.types.ResRet.i32 %895, 0
  %897 = lshr i32 %896, 16
  %898 = and i32 %897, 254
  %899 = uitofp i32 %898 to float
  %900 = lshr i32 %896, 24
  %901 = and i32 %900, 254
  %902 = uitofp i32 %901 to float
  %903 = add nuw nsw i32 %869, 16
  %904 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %903, i32 undef)  ; BufferLoad(srv,index,wot)
  %905 = extractvalue %dx.types.ResRet.f32 %904, 0
  %906 = fsub fast float %893, %890
  %907 = fmul fast float %906, 0x3FB99999A0000000
  %908 = fsub fast float %905, %890
  %909 = fdiv fast float %908, %907
  %910 = call float @dx.op.unary.f32(i32 7, float %909)  ; Saturate(value)
  %911 = fmul fast float %910, 2.000000e+00
  %912 = fsub fast float 3.000000e+00, %911
  %913 = fsub fast float %902, %899
  %914 = fmul fast float %910, %910
  %915 = fmul fast float %914, %913
  %916 = fmul fast float %915, %912
  %917 = fadd fast float %916, %899
  %918 = fmul fast float %917, 0x3F70204080000000
  %919 = fmul fast float %906, 5.000000e-01
  %920 = fsub fast float %919, %893
  %921 = fadd fast float %920, %905
  %922 = fdiv fast float %921, %919
  %923 = call float @dx.op.unary.f32(i32 7, float %922)  ; Saturate(value)
  %924 = fmul fast float %923, 2.000000e+00
  %925 = fsub fast float 3.000000e+00, %924
  %926 = fmul fast float %923, %923
  %927 = fmul fast float %926, %925
  %928 = fsub fast float 1.000000e+00, %927
  %929 = fmul fast float %918, %928
  %930 = fadd fast float %905, -1.280000e+02
  %931 = fmul fast float %930, 1.953125e-03
  %932 = call float @dx.op.unary.f32(i32 7, float %931)  ; Saturate(value)
  %933 = fmul fast float %932, 6.250000e-01
  %934 = fsub fast float 2.500000e+00, %933
  %935 = fmul fast float %934, %65
  %936 = fmul fast float %934, %66
  %937 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %12, i32 0, i32 %63, i32 %64, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %938 = extractvalue %dx.types.ResRet.i32 %937, 0
  %939 = lshr i32 %938, 8
  %940 = and i32 %938, 255
  %941 = and i32 %939, 255
  %942 = uitofp i32 %940 to float
  %943 = uitofp i32 %941 to float
  %944 = fmul fast float %942, 0x3F80101020000000
  %945 = fmul fast float %943, 0x3F80101020000000
  %946 = fadd fast float %944, -1.000000e+00
  %947 = fadd fast float %945, -1.000000e+00
  %948 = call float @dx.op.unary.f32(i32 6, float %946)  ; FAbs(value)
  %949 = fsub fast float 1.000000e+00, %948
  %950 = call float @dx.op.unary.f32(i32 6, float %947)  ; FAbs(value)
  %951 = fsub fast float %949, %950
  %952 = fsub fast float -0.000000e+00, %951
  %953 = call float @dx.op.binary.f32(i32 35, float %952, float 0.000000e+00)  ; FMax(a,b)
  %954 = fcmp fast ogt float %946, 0.000000e+00
  %955 = fsub fast float -0.000000e+00, %953
  %956 = select i1 %954, float %955, float %953
  %957 = fadd fast float %956, %946
  %958 = fcmp fast ogt float %947, 0.000000e+00
  %959 = select i1 %958, float %955, float %953
  %960 = fadd fast float %959, %947
  %961 = call float @dx.op.dot3.f32(i32 55, float %957, float %960, float %951, float %957, float %960, float %951)  ; Dot3(ax,ay,az,bx,by,bz)
  %962 = call float @dx.op.unary.f32(i32 25, float %961)  ; Rsqrt(value)
  %963 = fmul fast float %962, %951
  %964 = add i32 %64, -1
  %965 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %12, i32 0, i32 %63, i32 %964, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %966 = extractvalue %dx.types.ResRet.i32 %965, 0
  %967 = lshr i32 %966, 8
  %968 = and i32 %966, 255
  %969 = and i32 %967, 255
  %970 = uitofp i32 %968 to float
  %971 = uitofp i32 %969 to float
  %972 = fmul fast float %970, 0x3F80101020000000
  %973 = fmul fast float %971, 0x3F80101020000000
  %974 = fadd fast float %972, -1.000000e+00
  %975 = fadd fast float %973, -1.000000e+00
  %976 = call float @dx.op.unary.f32(i32 6, float %974)  ; FAbs(value)
  %977 = fsub fast float 1.000000e+00, %976
  %978 = call float @dx.op.unary.f32(i32 6, float %975)  ; FAbs(value)
  %979 = fsub fast float %977, %978
  %980 = fsub fast float -0.000000e+00, %979
  %981 = call float @dx.op.binary.f32(i32 35, float %980, float 0.000000e+00)  ; FMax(a,b)
  %982 = fcmp fast ogt float %974, 0.000000e+00
  %983 = fsub fast float -0.000000e+00, %981
  %984 = select i1 %982, float %983, float %981
  %985 = fadd fast float %984, %974
  %986 = fcmp fast ogt float %975, 0.000000e+00
  %987 = select i1 %986, float %983, float %981
  %988 = fadd fast float %987, %975
  %989 = call float @dx.op.dot3.f32(i32 55, float %985, float %988, float %979, float %985, float %988, float %979)  ; Dot3(ax,ay,az,bx,by,bz)
  %990 = call float @dx.op.unary.f32(i32 25, float %989)  ; Rsqrt(value)
  %991 = fmul fast float %985, %990
  %992 = fmul fast float %988, %990
  %993 = fmul fast float %990, %979
  %994 = add i32 %64, 1
  %995 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %12, i32 0, i32 %63, i32 %994, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %996 = extractvalue %dx.types.ResRet.i32 %995, 0
  %997 = lshr i32 %996, 8
  %998 = and i32 %996, 255
  %999 = and i32 %997, 255
  %1000 = uitofp i32 %998 to float
  %1001 = uitofp i32 %999 to float
  %1002 = fmul fast float %1000, 0x3F80101020000000
  %1003 = fmul fast float %1001, 0x3F80101020000000
  %1004 = fadd fast float %1002, -1.000000e+00
  %1005 = fadd fast float %1003, -1.000000e+00
  %1006 = call float @dx.op.unary.f32(i32 6, float %1004)  ; FAbs(value)
  %1007 = fsub fast float 1.000000e+00, %1006
  %1008 = call float @dx.op.unary.f32(i32 6, float %1005)  ; FAbs(value)
  %1009 = fsub fast float %1007, %1008
  %1010 = fsub fast float -0.000000e+00, %1009
  %1011 = call float @dx.op.binary.f32(i32 35, float %1010, float 0.000000e+00)  ; FMax(a,b)
  %1012 = fcmp fast ogt float %1004, 0.000000e+00
  %1013 = fsub fast float -0.000000e+00, %1011
  %1014 = select i1 %1012, float %1013, float %1011
  %1015 = fadd fast float %1014, %1004
  %1016 = fcmp fast ogt float %1005, 0.000000e+00
  %1017 = select i1 %1016, float %1013, float %1011
  %1018 = fadd fast float %1017, %1005
  %1019 = call float @dx.op.dot3.f32(i32 55, float %1015, float %1018, float %1009, float %1015, float %1018, float %1009)  ; Dot3(ax,ay,az,bx,by,bz)
  %1020 = call float @dx.op.unary.f32(i32 25, float %1019)  ; Rsqrt(value)
  %1021 = fmul fast float %1015, %1020
  %1022 = fmul fast float %1018, %1020
  %1023 = fmul fast float %1020, %1009
  %1024 = add i32 %63, -1
  %1025 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %12, i32 0, i32 %1024, i32 %64, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1026 = extractvalue %dx.types.ResRet.i32 %1025, 0
  %1027 = lshr i32 %1026, 8
  %1028 = and i32 %1026, 255
  %1029 = and i32 %1027, 255
  %1030 = uitofp i32 %1028 to float
  %1031 = uitofp i32 %1029 to float
  %1032 = fmul fast float %1030, 0x3F80101020000000
  %1033 = fmul fast float %1031, 0x3F80101020000000
  %1034 = fadd fast float %1032, -1.000000e+00
  %1035 = fadd fast float %1033, -1.000000e+00
  %1036 = call float @dx.op.unary.f32(i32 6, float %1034)  ; FAbs(value)
  %1037 = fsub fast float 1.000000e+00, %1036
  %1038 = call float @dx.op.unary.f32(i32 6, float %1035)  ; FAbs(value)
  %1039 = fsub fast float %1037, %1038
  %1040 = fsub fast float -0.000000e+00, %1039
  %1041 = call float @dx.op.binary.f32(i32 35, float %1040, float 0.000000e+00)  ; FMax(a,b)
  %1042 = fcmp fast ogt float %1034, 0.000000e+00
  %1043 = fsub fast float -0.000000e+00, %1041
  %1044 = select i1 %1042, float %1043, float %1041
  %1045 = fadd fast float %1044, %1034
  %1046 = fcmp fast ogt float %1035, 0.000000e+00
  %1047 = select i1 %1046, float %1043, float %1041
  %1048 = fadd fast float %1047, %1035
  %1049 = call float @dx.op.dot3.f32(i32 55, float %1045, float %1048, float %1039, float %1045, float %1048, float %1039)  ; Dot3(ax,ay,az,bx,by,bz)
  %1050 = call float @dx.op.unary.f32(i32 25, float %1049)  ; Rsqrt(value)
  %1051 = fmul fast float %1045, %1050
  %1052 = fmul fast float %1048, %1050
  %1053 = fmul fast float %1050, %1039
  %1054 = add i32 %63, 1
  %1055 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %12, i32 0, i32 %1054, i32 %64, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1056 = extractvalue %dx.types.ResRet.i32 %1055, 0
  %1057 = lshr i32 %1056, 8
  %1058 = and i32 %1056, 255
  %1059 = and i32 %1057, 255
  %1060 = uitofp i32 %1058 to float
  %1061 = uitofp i32 %1059 to float
  %1062 = fmul fast float %1060, 0x3F80101020000000
  %1063 = fmul fast float %1061, 0x3F80101020000000
  %1064 = fadd fast float %1062, -1.000000e+00
  %1065 = fadd fast float %1063, -1.000000e+00
  %1066 = call float @dx.op.unary.f32(i32 6, float %1064)  ; FAbs(value)
  %1067 = fsub fast float 1.000000e+00, %1066
  %1068 = call float @dx.op.unary.f32(i32 6, float %1065)  ; FAbs(value)
  %1069 = fsub fast float %1067, %1068
  %1070 = fsub fast float -0.000000e+00, %1069
  %1071 = call float @dx.op.binary.f32(i32 35, float %1070, float 0.000000e+00)  ; FMax(a,b)
  %1072 = fcmp fast ogt float %1064, 0.000000e+00
  %1073 = fsub fast float -0.000000e+00, %1071
  %1074 = select i1 %1072, float %1073, float %1071
  %1075 = fadd fast float %1074, %1064
  %1076 = fcmp fast ogt float %1065, 0.000000e+00
  %1077 = select i1 %1076, float %1073, float %1071
  %1078 = fadd fast float %1077, %1065
  %1079 = call float @dx.op.dot3.f32(i32 55, float %1075, float %1078, float %1069, float %1075, float %1078, float %1069)  ; Dot3(ax,ay,az,bx,by,bz)
  %1080 = call float @dx.op.unary.f32(i32 25, float %1079)  ; Rsqrt(value)
  %1081 = fmul fast float %1075, %1080
  %1082 = fmul fast float %1078, %1080
  %1083 = fmul fast float %1080, %1069
  %1084 = add nuw nsw i32 %869, 12
  %1085 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %1084, i32 undef)  ; BufferLoad(srv,index,wot)
  %1086 = extractvalue %dx.types.ResRet.i32 %1085, 0
  %1087 = lshr i32 %1086, 16
  %1088 = uitofp i32 %1087 to float
  %1089 = fmul fast float %1088, 0x3EF0002000000000
  %1090 = add nuw nsw i32 %869, 8
  %1091 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %1090, i32 undef)  ; BufferLoad(srv,index,wot)
  %1092 = extractvalue %dx.types.ResRet.i32 %1091, 0
  %1093 = lshr i32 %1092, 16
  %1094 = uitofp i32 %1093 to float
  %1095 = fmul fast float %1094, 0x3EF0002000000000
  %1096 = fsub fast float %45, %1095
  %1097 = fdiv fast float %1096, %1089
  %1098 = fsub fast float %40, %936
  %1099 = fmul fast float %43, %1098
  %1100 = call float @dx.op.unary.f32(i32 7, float %44)  ; Saturate(value)
  %1101 = call float @dx.op.unary.f32(i32 7, float %1099)  ; Saturate(value)
  %1102 = fmul fast float %59, %1100
  %1103 = fmul fast float %60, %1101
  %1104 = fptoui float %1102 to i32
  %1105 = fptoui float %1103 to i32
  %1106 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %13, i32 0, i32 %1104, i32 %1105, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1107 = extractvalue %dx.types.ResRet.f32 %1106, 0
  %1108 = extractvalue %dx.types.ResRet.f32 %1106, 1
  %1109 = fadd fast float %1108, 0x3F40000000000000
  %1110 = fmul fast float %1109, 2.550000e+02
  %1111 = fadd fast float %1107, 0x3F40000000000000
  %1112 = fmul fast float %1111, 2.550000e+02
  %1113 = fptoui float %1110 to i32
  %1114 = shl i32 %1113, 8
  %1115 = fptoui float %1112 to i32
  %1116 = and i32 %1115, 255
  %1117 = or i32 %1114, %1116
  %1118 = fadd fast float %936, %40
  %1119 = fmul fast float %43, %1118
  %1120 = call float @dx.op.unary.f32(i32 7, float %1119)  ; Saturate(value)
  %1121 = fmul fast float %60, %1120
  %1122 = fptoui float %1121 to i32
  %1123 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %13, i32 0, i32 %1104, i32 %1122, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1124 = extractvalue %dx.types.ResRet.f32 %1123, 0
  %1125 = extractvalue %dx.types.ResRet.f32 %1123, 1
  %1126 = fadd fast float %1125, 0x3F40000000000000
  %1127 = fmul fast float %1126, 2.550000e+02
  %1128 = fadd fast float %1124, 0x3F40000000000000
  %1129 = fmul fast float %1128, 2.550000e+02
  %1130 = fptoui float %1127 to i32
  %1131 = shl i32 %1130, 8
  %1132 = fptoui float %1129 to i32
  %1133 = and i32 %1132, 255
  %1134 = or i32 %1131, %1133
  %1135 = fsub fast float %39, %935
  %1136 = fmul fast float %42, %1135
  %1137 = call float @dx.op.unary.f32(i32 7, float %1136)  ; Saturate(value)
  %1138 = call float @dx.op.unary.f32(i32 7, float %45)  ; Saturate(value)
  %1139 = fmul fast float %59, %1137
  %1140 = fmul fast float %60, %1138
  %1141 = fptoui float %1139 to i32
  %1142 = fptoui float %1140 to i32
  %1143 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %13, i32 0, i32 %1141, i32 %1142, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1144 = extractvalue %dx.types.ResRet.f32 %1143, 0
  %1145 = extractvalue %dx.types.ResRet.f32 %1143, 1
  %1146 = fadd fast float %1145, 0x3F40000000000000
  %1147 = fmul fast float %1146, 2.550000e+02
  %1148 = fadd fast float %1144, 0x3F40000000000000
  %1149 = fmul fast float %1148, 2.550000e+02
  %1150 = fptoui float %1147 to i32
  %1151 = shl i32 %1150, 8
  %1152 = fptoui float %1149 to i32
  %1153 = and i32 %1152, 255
  %1154 = or i32 %1151, %1153
  %1155 = fadd fast float %935, %39
  %1156 = fmul fast float %42, %1155
  %1157 = call float @dx.op.unary.f32(i32 7, float %1156)  ; Saturate(value)
  %1158 = fmul fast float %59, %1157
  %1159 = fptoui float %1158 to i32
  %1160 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %13, i32 0, i32 %1159, i32 %1142, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1161 = extractvalue %dx.types.ResRet.f32 %1160, 0
  %1162 = extractvalue %dx.types.ResRet.f32 %1160, 1
  %1163 = fadd fast float %1162, 0x3F40000000000000
  %1164 = fmul fast float %1163, 2.550000e+02
  %1165 = fadd fast float %1161, 0x3F40000000000000
  %1166 = fmul fast float %1165, 2.550000e+02
  %1167 = fptoui float %1164 to i32
  %1168 = shl i32 %1167, 8
  %1169 = fptoui float %1166 to i32
  %1170 = and i32 %1169, 255
  %1171 = or i32 %1168, %1170
  %1172 = icmp eq i32 %625, %1117
  %1173 = zext i1 %1172 to i32
  %1174 = icmp eq i32 %625, %1134
  %1175 = zext i1 %1174 to i32
  %1176 = add nuw nsw i32 %1175, %1173
  %1177 = icmp eq i32 %625, %1154
  %1178 = zext i1 %1177 to i32
  %1179 = add nuw nsw i32 %1176, %1178
  %1180 = icmp eq i32 %625, %1171
  %1181 = zext i1 %1180 to i32
  %1182 = add nuw nsw i32 %1179, %1181
  %1183 = icmp ne i32 %1182, 4
  %1184 = call float @dx.op.dot3.f32(i32 55, float %991, float %992, float %993, float %1021, float %1022, float %1023)  ; Dot3(ax,ay,az,bx,by,bz)
  %1185 = call float @dx.op.binary.f32(i32 36, float 1.000000e+00, float %1184)  ; FMin(a,b)
  %1186 = call float @dx.op.dot3.f32(i32 55, float %991, float %992, float %993, float %1051, float %1052, float %1053)  ; Dot3(ax,ay,az,bx,by,bz)
  %1187 = call float @dx.op.binary.f32(i32 36, float %1185, float %1186)  ; FMin(a,b)
  %1188 = call float @dx.op.dot3.f32(i32 55, float %991, float %992, float %993, float %1081, float %1082, float %1083)  ; Dot3(ax,ay,az,bx,by,bz)
  %1189 = call float @dx.op.binary.f32(i32 36, float %1187, float %1188)  ; FMin(a,b)
  %1190 = call float @dx.op.dot3.f32(i32 55, float %1021, float %1022, float %1023, float %1051, float %1052, float %1053)  ; Dot3(ax,ay,az,bx,by,bz)
  %1191 = call float @dx.op.binary.f32(i32 36, float %1189, float %1190)  ; FMin(a,b)
  %1192 = call float @dx.op.dot3.f32(i32 55, float %1021, float %1022, float %1023, float %1081, float %1082, float %1083)  ; Dot3(ax,ay,az,bx,by,bz)
  %1193 = call float @dx.op.binary.f32(i32 36, float %1191, float %1192)  ; FMin(a,b)
  %1194 = call float @dx.op.dot3.f32(i32 55, float %1051, float %1052, float %1053, float %1081, float %1082, float %1083)  ; Dot3(ax,ay,az,bx,by,bz)
  %1195 = call float @dx.op.binary.f32(i32 36, float %1193, float %1194)  ; FMin(a,b)
  %1196 = call float @dx.op.unary.f32(i32 7, float %1195)  ; Saturate(value)
  %1197 = fsub fast float 1.000000e+00, %1196
  %1198 = call float @dx.op.unary.f32(i32 7, float %1197)  ; Saturate(value)
  %1199 = fmul fast float %1198, 2.000000e+00
  %1200 = fsub fast float 3.000000e+00, %1199
  %1201 = call float @dx.op.unary.f32(i32 7, float %963)  ; Saturate(value)
  %1202 = fmul fast float %1201, 2.500000e+00
  %1203 = call float @dx.op.unary.f32(i32 7, float %1202)  ; Saturate(value)
  %1204 = fmul fast float %1203, 2.000000e+00
  %1205 = fsub fast float 3.000000e+00, %1204
  %1206 = fadd fast float %1201, 0xBFD99999A0000000
  %1207 = fmul fast float %1206, -2.500000e+00
  %1208 = call float @dx.op.unary.f32(i32 7, float %1207)  ; Saturate(value)
  %1209 = fmul fast float %1208, 2.000000e+00
  %1210 = fsub fast float 3.000000e+00, %1209
  %1211 = fmul float %1203, %1208
  %1212 = fmul float %1211, %1211
  %1213 = fmul fast float %1210, %1205
  %1214 = fmul fast float %1213, %1212
  %1215 = fmul fast float %1198, %1198
  %1216 = fmul fast float %1215, %1200
  %1217 = fadd fast float %1214, %1216
  %1218 = fmul fast float %1217, 2.000000e+00
  %1219 = call float @dx.op.unary.f32(i32 7, float %1218)  ; Saturate(value)
  %1220 = fmul fast float %1219, 1.500000e+00
  %1221 = fmul fast float %1220, %882
  %1222 = fmul fast float %1220, %883
  %1223 = fmul fast float %1220, %884
  %1224 = icmp eq i32 %625, 0
  %1225 = or i1 %1224, %1183
  %1226 = select i1 %1224, float 0.000000e+00, float 1.000000e+00
  %1227 = select i1 %1225, float %1221, float 1.000000e+00
  %1228 = select i1 %1225, float %1222, float 1.000000e+00
  %1229 = select i1 %1225, float %1223, float 1.000000e+00
  %1230 = select i1 %1225, float %885, float %1220
  %1231 = select i1 %1225, float %1226, float 0.000000e+00
  %1232 = fmul fast float %68, 5.400000e+02
  %1233 = fmul fast float %70, 5.400000e+02
  %1234 = fmul fast float %1232, %44
  %1235 = fmul fast float %1233, %45
  %1236 = call float @dx.op.unary.f32(i32 27, float %1234)  ; Round_ni(value)
  %1237 = call float @dx.op.unary.f32(i32 27, float %1235)  ; Round_ni(value)
  %1238 = fadd fast float %1237, %1236
  %1239 = frem fast float %1238, 2.000000e+00
  %1240 = call float @dx.op.unary.f32(i32 22, float %1234)  ; Frc(value)
  %1241 = call float @dx.op.unary.f32(i32 22, float %1235)  ; Frc(value)
  %1242 = fadd fast float %1240, -5.000000e-01
  %1243 = fadd fast float %1241, -5.000000e-01
  %1244 = fmul fast float %1242, 2.000000e+00
  %1245 = fmul fast float %1243, 2.000000e+00
  %1246 = call float @dx.op.dot2.f32(i32 54, float %1244, float %1245, float %1244, float %1245)  ; Dot2(ax,ay,bx,by)
  %1247 = call float @dx.op.unary.f32(i32 24, float %1246)  ; Sqrt(value)
  %1248 = fsub fast float 1.000000e+00, %1247
  %1249 = fmul fast float %1248, 2.000000e+00
  %1250 = call float @dx.op.unary.f32(i32 7, float %1249)  ; Saturate(value)
  %1251 = fmul fast float %60, %59
  %1252 = fmul fast float %1233, %1232
  %1253 = fdiv fast float %1251, %1252
  %1254 = fptoui float %1253 to i32
  %1255 = icmp ult i32 %1254, 4
  %1256 = select i1 %1255, float 1.000000e+00, float %1250
  %1257 = fmul fast float %1227, %1239
  %1258 = fmul fast float %1228, %1239
  %1259 = fmul fast float %1229, %1239
  %1260 = fmul fast float %1239, %1230
  %1261 = fmul fast float %1257, %1256
  %1262 = fmul fast float %1258, %1256
  %1263 = fmul fast float %1259, %1256
  %1264 = fmul fast float %1260, %1256
  %1265 = fsub fast float 1.000000e+00, %1097
  %1266 = fmul fast float %1265, %1265
  %1267 = fmul fast float %1266, 3.000000e+00
  %1268 = fadd fast float %1267, 2.500000e-01
  %1269 = call float @dx.op.unary.f32(i32 7, float %1268)  ; Saturate(value)
  %1270 = fmul fast float %1239, 0x3FC3333340000000
  %1271 = fadd fast float %1270, 7.500000e-01
  %1272 = fmul fast float %1271, %1231
  %1273 = call float @dx.op.binary.f32(i32 35, float %1261, float %1272)  ; FMax(a,b)
  %1274 = call float @dx.op.binary.f32(i32 35, float %1262, float %1272)  ; FMax(a,b)
  %1275 = call float @dx.op.binary.f32(i32 35, float %1263, float %1272)  ; FMax(a,b)
  %1276 = fmul fast float %1269, %1231
  %1277 = call float @dx.op.binary.f32(i32 35, float %1264, float %1276)  ; FMax(a,b)
  %1278 = fmul fast float %929, %882
  %1279 = fmul fast float %1278, %1273
  %1280 = fmul fast float %929, %883
  %1281 = fmul fast float %1280, %1274
  %1282 = fmul fast float %929, %884
  %1283 = fmul fast float %1282, %1275
  %1284 = fmul fast float %1269, %929
  %1285 = fmul fast float %1284, %1277
  %1286 = call float @dx.op.unary.f32(i32 7, float %1279)  ; Saturate(value)
  %1287 = call float @dx.op.unary.f32(i32 7, float %1281)  ; Saturate(value)
  %1288 = call float @dx.op.unary.f32(i32 7, float %1283)  ; Saturate(value)
  %1289 = call float @dx.op.unary.f32(i32 7, float %1285)  ; Saturate(value)
  %1290 = fmul fast float %1286, 0x3FF3333340000000
  %1291 = fmul fast float %1287, 0x3FF3333340000000
  %1292 = fmul fast float %1288, 0x3FF3333340000000
  %1293 = fmul fast float %1289, 0x3FF3333340000000
  br label %5179

; <label>:1294                                    ; preds = %613
  %1295 = and i32 %628, 511
  %1296 = mul nuw nsw i32 %1295, 20
  %1297 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %1296, i32 undef)  ; BufferLoad(srv,index,wot)
  %1298 = extractvalue %dx.types.ResRet.i32 %1297, 0
  %1299 = lshr i32 %1298, 24
  %1300 = uitofp i32 %1299 to float
  %1301 = fmul fast float %1300, 0x3F70101020000000
  %1302 = fsub fast float 1.000000e+00, %1301
  %1303 = add nuw nsw i32 %1296, 12
  %1304 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %1303, i32 undef)  ; BufferLoad(srv,index,wot)
  %1305 = extractvalue %dx.types.ResRet.i32 %1304, 0
  %1306 = and i32 %1305, 65535
  %1307 = uitofp i32 %1306 to float
  %1308 = fmul fast float %1307, 0x3EF0002000000000
  %1309 = lshr i32 %1305, 16
  %1310 = uitofp i32 %1309 to float
  %1311 = fmul fast float %1310, 0x3EF0002000000000
  %1312 = add nuw nsw i32 %1296, 8
  %1313 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %1312, i32 undef)  ; BufferLoad(srv,index,wot)
  %1314 = extractvalue %dx.types.ResRet.i32 %1313, 0
  %1315 = and i32 %1314, 65535
  %1316 = uitofp i32 %1315 to float
  %1317 = fmul fast float %1316, 0x3EF0002000000000
  %1318 = lshr i32 %1314, 16
  %1319 = uitofp i32 %1318 to float
  %1320 = fmul fast float %1319, 0x3EF0002000000000
  %1321 = fsub fast float %44, %1317
  %1322 = fdiv fast float %1321, %1308
  %1323 = fsub fast float %45, %1320
  %1324 = fdiv fast float %1323, %1311
  %1325 = add nuw nsw i32 %1296, 16
  %1326 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %1325, i32 undef)  ; BufferLoad(srv,index,wot)
  %1327 = extractvalue %dx.types.ResRet.f32 %1326, 0
  %1328 = fcmp fast olt float %1327, 1.000000e+01
  %1329 = uitofp i1 %1328 to float
  %1330 = fdiv fast float 2.400000e+02, %1327
  %1331 = call float @dx.op.unary.f32(i32 7, float %1330)  ; Saturate(value)
  %1332 = fdiv fast float 3.200000e+02, %1327
  %1333 = call float @dx.op.unary.f32(i32 7, float %1332)  ; Saturate(value)
  %1334 = fmul fast float %1333, 5.000000e-01
  %1335 = fadd fast float %1334, 2.500000e-01
  %1336 = fdiv fast float 3.200000e+01, %1335
  %1337 = select i1 %1328, float 3.200000e+01, float %1336
  %1338 = fmul fast float %1337, 1.600000e+01
  %1339 = fmul fast float %1337, 9.000000e+00
  %1340 = fmul fast float %1308, %1322
  %1341 = fmul fast float %1340, %1338
  %1342 = fmul fast float %1311, %1324
  %1343 = fmul fast float %1342, %1339
  %1344 = call float @dx.op.unary.f32(i32 29, float %1341)  ; Round_z(value)
  %1345 = call float @dx.op.unary.f32(i32 29, float %1343)  ; Round_z(value)
  %1346 = call float @dx.op.unary.f32(i32 7, float %1301)  ; Saturate(value)
  %1347 = fmul fast float %1346, 2.000000e+00
  %1348 = fsub fast float 3.000000e+00, %1347
  %1349 = fmul fast float %1331, 4.000000e+01
  %1350 = fmul fast float %1329, 1.000000e+02
  %1351 = fadd fast float %1350, %1349
  %1352 = fptoui float %1351 to i32
  %1353 = uitofp i32 %63 to float
  %1354 = uitofp i32 %64 to float
  %1355 = fptoui float %1353 to i32
  %1356 = fptoui float %1354 to i32
  %1357 = lshr i32 %1356, 2
  %1358 = mul i32 %85, %1357
  %1359 = lshr i32 %1355, 3
  %1360 = add i32 %81, %1359
  %1361 = add i32 %1360, %83
  %1362 = add i32 %1361, %1358
  %1363 = shl i32 %1362, 2
  %1364 = shl i32 %1356, 3
  %1365 = and i32 %1364, 24
  %1366 = and i32 %1355, 7
  %1367 = or i32 %1365, %1366
  %1368 = shl i32 1, %1367
  %1369 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %1363, i32 undef)  ; BufferLoad(srv,index,wot)
  %1370 = extractvalue %dx.types.ResRet.i32 %1369, 0
  %1371 = and i32 %1370, %1368
  %1372 = icmp ne i32 %1371, 0
  %1373 = icmp eq i32 %1352, 0
  br i1 %1373, label %1490, label %1374, !dx.controlflow.hints !50

; <label>:1374                                    ; preds = %1294
  %1375 = uitofp i32 %1352 to float
  %1376 = fmul fast float %65, 5.000000e-01
  %1377 = fmul fast float %1376, %1375
  %1378 = fmul fast float %66, 5.000000e-01
  %1379 = fmul fast float %1378, %1375
  %1380 = call float @dx.op.binary.f32(i32 35, float 5.000000e-01, float %1377)  ; FMax(a,b)
  %1381 = call float @dx.op.binary.f32(i32 35, float 5.000000e-01, float %1379)  ; FMax(a,b)
  br label %1382

; <label>:1382                                    ; preds = %1477, %1374
  %1383 = phi float [ 0.000000e+00, %1374 ], [ %1480, %1477 ]
  %1384 = phi i32 [ 0, %1374 ], [ %1481, %1477 ]
  %1385 = fmul fast float %44, 0x3FF280E1E0000000
  %1386 = fmul fast float %45, 0x3FF280E1E0000000
  %1387 = sitofp i32 %1384 to float
  %1388 = fmul fast float %1387, 0x3FB99999A0000000
  %1389 = fadd fast float %1388, %1385
  %1390 = fadd fast float %1388, %1386
  %1391 = fmul fast float %1389, 1.024000e+03
  %1392 = fmul fast float %1390, 1.024000e+03
  %1393 = fadd fast float %1391, -5.120000e+02
  %1394 = fadd fast float %1392, -5.120000e+02
  %1395 = fmul fast float %1389, 0x4081BEDF00000000
  %1396 = fadd fast float %1395, 0xC071BEDF00000000
  %1397 = call float @dx.op.unary.f32(i32 22, float %1396)  ; Frc(value)
  %1398 = fmul fast float %1393, %1397
  %1399 = fadd fast float %1398, %1394
  %1400 = fmul fast float %1390, 0x4073BEBE20000000
  %1401 = fadd fast float %1400, 0xC063BEBE20000000
  %1402 = call float @dx.op.unary.f32(i32 22, float %1401)  ; Frc(value)
  %1403 = fmul fast float %1394, %1402
  %1404 = fadd fast float %1403, %1393
  %1405 = fmul fast float %1399, %1404
  %1406 = call float @dx.op.unary.f32(i32 22, float %1405)  ; Frc(value)
  %1407 = fmul fast float %1406, 2.000000e+00
  %1408 = fadd fast float %1407, -1.000000e+00
  %1409 = fmul fast float %1408, %1380
  %1410 = fmul fast float %44, 0x3FEB681740000000
  %1411 = fmul fast float %45, 0x3FEB681740000000
  %1412 = fmul fast float %1387, 0x3FC99999A0000000
  %1413 = fadd fast float %1412, 1.250000e-01
  %1414 = fadd fast float %1413, %1410
  %1415 = fadd fast float %1413, %1411
  %1416 = fmul fast float %1414, 1.024000e+03
  %1417 = fmul fast float %1415, 1.024000e+03
  %1418 = fadd fast float %1416, -5.120000e+02
  %1419 = fadd fast float %1417, -5.120000e+02
  %1420 = fmul fast float %1414, 0x4081BEDF00000000
  %1421 = fadd fast float %1420, 0xC071BEDF00000000
  %1422 = call float @dx.op.unary.f32(i32 22, float %1421)  ; Frc(value)
  %1423 = fmul fast float %1418, %1422
  %1424 = fadd fast float %1423, %1419
  %1425 = fmul fast float %1415, 0x4073BEBE20000000
  %1426 = fadd fast float %1425, 0xC063BEBE20000000
  %1427 = call float @dx.op.unary.f32(i32 22, float %1426)  ; Frc(value)
  %1428 = fmul fast float %1419, %1427
  %1429 = fadd fast float %1428, %1418
  %1430 = fmul fast float %1424, %1429
  %1431 = call float @dx.op.unary.f32(i32 22, float %1430)  ; Frc(value)
  %1432 = fmul fast float %1431, 2.000000e+00
  %1433 = fadd fast float %1432, -1.000000e+00
  %1434 = fmul fast float %1433, %1381
  %1435 = fptosi float %1409 to i32
  %1436 = sitofp i32 %1435 to float
  %1437 = fadd fast float %1436, %1353
  %1438 = fptosi float %1437 to i32
  %1439 = fptosi float %1434 to i32
  %1440 = sitofp i32 %1439 to float
  %1441 = fadd fast float %1440, %1354
  %1442 = fptosi float %1441 to i32
  %1443 = or i32 %1442, %1438
  %1444 = icmp slt i32 %1443, 0
  %1445 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %1446 = extractvalue %dx.types.CBufRet.f32 %1445, 0
  %1447 = extractvalue %dx.types.CBufRet.f32 %1445, 1
  %1448 = fptosi float %1446 to i32
  %1449 = fptosi float %1447 to i32
  %1450 = icmp sge i32 %1438, %1448
  %1451 = icmp sge i32 %1442, %1449
  %1452 = or i1 %1450, %1451
  %1453 = or i1 %1444, %1452
  br i1 %1453, label %1477, label %1454, !dx.controlflow.hints !47

; <label>:1454                                    ; preds = %1382
  %1455 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %18, i32 51)  ; CBufferLoadLegacy(handle,regIndex)
  %1456 = extractvalue %dx.types.CBufRet.i32 %1455, 1
  %1457 = shl i32 %1456, 2
  %1458 = extractvalue %dx.types.CBufRet.i32 %1455, 3
  %1459 = shl i32 %1458, 1
  %1460 = lshr i32 %1442, 2
  %1461 = extractvalue %dx.types.CBufRet.i32 %1455, 2
  %1462 = mul i32 %1461, %1460
  %1463 = lshr i32 %1438, 3
  %1464 = add i32 %1457, %1463
  %1465 = add i32 %1464, %1459
  %1466 = add i32 %1465, %1462
  %1467 = shl i32 %1466, 2
  %1468 = shl i32 %1442, 3
  %1469 = and i32 %1468, 24
  %1470 = and i32 %1438, 7
  %1471 = or i32 %1469, %1470
  %1472 = shl i32 1, %1471
  %1473 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %1467, i32 undef)  ; BufferLoad(srv,index,wot)
  %1474 = extractvalue %dx.types.ResRet.i32 %1473, 0
  %1475 = and i32 %1474, %1472
  %1476 = icmp ne i32 %1475, 0
  br label %1477

; <label>:1477                                    ; preds = %1454, %1382
  %1478 = phi i1 [ %1476, %1454 ], [ false, %1382 ]
  %1479 = uitofp i1 %1478 to float
  %1480 = fadd fast float %1479, %1383
  %1481 = add nuw nsw i32 %1384, 1
  %1482 = icmp eq i32 %1481, 5
  br i1 %1482, label %1483, label %1382

; <label>:1483                                    ; preds = %1477
  %1484 = uitofp i1 %1372 to float
  %1485 = fmul fast float %1484, 0x3FC99999A0000000
  %1486 = fmul fast float %1485, %1480
  %1487 = fadd fast float %1486, -5.000000e-01
  %1488 = fmul fast float %1487, 2.000000e+00
  %1489 = call float @dx.op.unary.f32(i32 7, float %1488)  ; Saturate(value)
  br label %1490

; <label>:1490                                    ; preds = %1483, %1294
  %1491 = phi float [ %1489, %1483 ], [ 0.000000e+00, %1294 ]
  %1492 = fdiv fast float %1344, %1338
  %1493 = fdiv fast float %1345, %1339
  %1494 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1495 = extractvalue %dx.types.CBufRet.f32 %1494, 3
  %1496 = fmul fast float %1495, 0x3FE99999A0000000
  %1497 = fadd fast float %1496, %1492
  %1498 = fsub fast float %1493, %1496
  %1499 = call float @dx.op.unary.f32(i32 22, float %1497)  ; Frc(value)
  %1500 = call float @dx.op.unary.f32(i32 22, float %1498)  ; Frc(value)
  %1501 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %15, float %1499, float %1500, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1502 = extractvalue %dx.types.ResRet.f32 %1501, 0
  %1503 = fmul fast float %1502, 1.500000e+00
  %1504 = call float @dx.op.unary.f32(i32 7, float %1503)  ; Saturate(value)
  %1505 = call float @dx.op.binary.f32(i32 35, float 0x3FE51EB860000000, float %1504)  ; FMax(a,b)
  %1506 = fsub fast float -5.000000e-01, %1344
  %1507 = fadd fast float %1506, %1341
  %1508 = fsub fast float -5.000000e-01, %1345
  %1509 = fadd fast float %1508, %1343
  %1510 = fmul fast float %1507, 2.000000e+00
  %1511 = fmul fast float %1509, 2.000000e+00
  %1512 = call float @dx.op.dot2.f32(i32 54, float %1510, float %1511, float %1510, float %1511)  ; Dot2(ax,ay,bx,by)
  %1513 = call float @dx.op.unary.f32(i32 24, float %1512)  ; Sqrt(value)
  %1514 = fsub fast float 1.000000e+00, %1513
  %1515 = fmul fast float %1514, 2.000000e+00
  %1516 = call float @dx.op.unary.f32(i32 7, float %1515)  ; Saturate(value)
  %1517 = fmul fast float %1495, 0x3F9EB851E0000000
  %1518 = fadd fast float %1517, %1324
  %1519 = call float @dx.op.unary.f32(i32 22, float %1518)  ; Frc(value)
  %1520 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %14, float %1322, float %1519, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1521 = extractvalue %dx.types.ResRet.f32 %1520, 3
  %1522 = call float @dx.op.unary.f32(i32 7, float %1491)  ; Saturate(value)
  %1523 = fmul fast float %1521, %1302
  %1524 = fsub fast float %1522, %1523
  %1525 = call float @dx.op.unary.f32(i32 7, float %1524)  ; Saturate(value)
  %1526 = fmul fast float %1521, 1.250000e+00
  %1527 = fsub fast float %1522, %1526
  %1528 = call float @dx.op.unary.f32(i32 7, float %1527)  ; Saturate(value)
  %1529 = fsub fast float 5.000000e-01, %1324
  %1530 = fmul fast float %1529, 2.000000e+00
  %1531 = call float @dx.op.unary.f32(i32 7, float %1530)  ; Saturate(value)
  %1532 = fmul fast float %1531, %1531
  %1533 = fmul fast float %1532, 7.500000e-01
  %1534 = fadd fast float %1533, 1.000000e+00
  %1535 = fmul fast float %1525, 7.500000e-01
  %1536 = fmul fast float %1535, %1534
  %1537 = fmul fast float %1329, 0x3FD3333340000000
  %1538 = fadd fast float %1537, 0x3FC3333340000000
  %1539 = fmul fast float %1528, %1538
  %1540 = fadd fast float %1536, %1539
  %1541 = fmul fast float %1540, %1540
  %1542 = fmul fast float %1541, %1540
  %1543 = call float @dx.op.unary.f32(i32 7, float %1542)  ; Saturate(value)
  %1544 = fmul fast float %1543, 0x40285C2900000000
  %1545 = fsub fast float 1.400000e+01, %1544
  %1546 = fptoui float %1545 to i32
  %1547 = call float @dx.op.unary.f32(i32 22, float %1545)  ; Frc(value)
  %1548 = mul i32 %1546, 3
  %1549 = add i32 0, %1548
  %1550 = getelementptr [45 x float], [45 x float]* @heat_ramp.v.1dim, i32 0, i32 %1549
  %1551 = load float, float* %1550, align 4
  %1552 = mul i32 %1546, 3
  %1553 = add i32 1, %1552
  %1554 = getelementptr [45 x float], [45 x float]* @heat_ramp.v.1dim, i32 0, i32 %1553
  %1555 = load float, float* %1554, align 4
  %1556 = mul i32 %1546, 3
  %1557 = add i32 2, %1556
  %1558 = getelementptr [45 x float], [45 x float]* @heat_ramp.v.1dim, i32 0, i32 %1557
  %1559 = load float, float* %1558, align 4
  %1560 = add i32 %1546, 1
  %1561 = mul i32 %1560, 3
  %1562 = add i32 0, %1561
  %1563 = getelementptr [45 x float], [45 x float]* @heat_ramp.v.1dim, i32 0, i32 %1562
  %1564 = load float, float* %1563, align 4
  %1565 = mul i32 %1560, 3
  %1566 = add i32 1, %1565
  %1567 = getelementptr [45 x float], [45 x float]* @heat_ramp.v.1dim, i32 0, i32 %1566
  %1568 = load float, float* %1567, align 4
  %1569 = mul i32 %1560, 3
  %1570 = add i32 2, %1569
  %1571 = getelementptr [45 x float], [45 x float]* @heat_ramp.v.1dim, i32 0, i32 %1570
  %1572 = load float, float* %1571, align 4
  %1573 = fsub fast float %1564, %1551
  %1574 = fsub fast float %1568, %1555
  %1575 = fsub fast float %1572, %1559
  %1576 = fmul fast float %1573, %1547
  %1577 = fmul fast float %1574, %1547
  %1578 = fmul fast float %1575, %1547
  %1579 = fadd fast float %1576, %1551
  %1580 = fadd fast float %1577, %1555
  %1581 = fadd fast float %1578, %1559
  %1582 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 17)  ; CBufferLoadLegacy(handle,regIndex)
  %1583 = extractvalue %dx.types.CBufRet.f32 %1582, 0
  %1584 = fmul fast float %1346, %1346
  %1585 = fmul fast float %1584, %1348
  %1586 = fmul fast float %1585, %1505
  %1587 = fmul fast float %1586, %1516
  %1588 = fmul fast float %1587, %1525
  %1589 = fmul fast float %1588, %1583
  %1590 = fmul fast float %1579, %1579
  %1591 = fmul fast float %1590, 2.000000e+00
  %1592 = fmul fast float %1591, %1589
  %1593 = fmul fast float %1580, %1580
  %1594 = fmul fast float %1593, 2.000000e+00
  %1595 = fmul fast float %1594, %1589
  %1596 = fmul fast float %1581, %1581
  %1597 = fmul fast float %1596, 2.000000e+00
  %1598 = fmul fast float %1597, %1589
  %1599 = call float @dx.op.binary.f32(i32 36, float %1592, float 2.000000e+00)  ; FMin(a,b)
  %1600 = call float @dx.op.binary.f32(i32 36, float %1595, float 2.000000e+00)  ; FMin(a,b)
  %1601 = call float @dx.op.binary.f32(i32 36, float %1598, float 2.000000e+00)  ; FMin(a,b)
  %1602 = select i1 %1328, float 0x3FD3333340000000, float 7.500000e-01
  %1603 = fmul float %1602, %1589
  br label %5179

; <label>:1604                                    ; preds = %613
  %1605 = and i32 %628, 262144
  %1606 = icmp eq i32 %630, 0
  %1607 = and i1 %1606, %109
  %1608 = icmp eq i32 %1605, 0
  %1609 = and i1 %108, %1608
  %1610 = or i1 %1607, %1609
  br i1 %1610, label %5179, label %1611, !dx.controlflow.hints !51

; <label>:1611                                    ; preds = %1604
  %1612 = and i32 %628, 511
  %1613 = mul nuw nsw i32 %1612, 20
  br i1 %108, label %1614, label %1782, !dx.controlflow.hints !52

; <label>:1614                                    ; preds = %1611
  %1615 = add nuw nsw i32 %1613, 4
  %1616 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %1615, i32 undef)  ; BufferLoad(srv,index,wot)
  %1617 = extractvalue %dx.types.ResRet.i32 %1616, 0
  %1618 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %1613, i32 undef)  ; BufferLoad(srv,index,wot)
  %1619 = extractvalue %dx.types.ResRet.i32 %1618, 0
  %1620 = and i32 %1619, 255
  %1621 = uitofp i32 %1620 to float
  %1622 = lshr i32 %1619, 8
  %1623 = and i32 %1622, 255
  %1624 = uitofp i32 %1623 to float
  %1625 = lshr i32 %1619, 16
  %1626 = and i32 %1625, 255
  %1627 = uitofp i32 %1626 to float
  %1628 = lshr i32 %1619, 24
  %1629 = uitofp i32 %1628 to float
  %1630 = and i32 %628, 1048576
  %1631 = icmp ne i32 %1630, 0
  %1632 = and i32 %628, 2097152
  %1633 = icmp ne i32 %1632, 0
  %1634 = lshr i32 %1617, 8
  %1635 = and i32 %1634, 65535
  %1636 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1635)  ; LegacyF16ToF32(value)
  %1637 = and i32 %628, 65536
  %1638 = icmp ne i32 %1637, 0
  %1639 = select i1 %1638, float 1.000000e+00, float 0.000000e+00
  %1640 = select i1 %1631, float 0.000000e+00, float %1639
  %1641 = icmp ne i32 %1605, 0
  %1642 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %1643 = extractvalue %dx.types.CBufRet.f32 %1642, 0
  %1644 = extractvalue %dx.types.CBufRet.f32 %1642, 1
  %1645 = extractvalue %dx.types.CBufRet.f32 %1642, 2
  %1646 = extractvalue %dx.types.CBufRet.f32 %1642, 3
  %1647 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %1648 = extractvalue %dx.types.CBufRet.f32 %1647, 0
  %1649 = extractvalue %dx.types.CBufRet.f32 %1647, 1
  %1650 = extractvalue %dx.types.CBufRet.f32 %1647, 2
  %1651 = extractvalue %dx.types.CBufRet.f32 %1647, 3
  %1652 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1653 = extractvalue %dx.types.CBufRet.f32 %1652, 0
  %1654 = fmul fast float %1653, 2.000000e+00
  %1655 = select i1 %1633, float %1654, float 1.000000e+00
  %1656 = select i1 %1641, float 0x3F70101020000000, float 0.000000e+00
  %1657 = fmul fast float %1656, %1621
  %1658 = fmul fast float %1657, %1655
  %1659 = fmul fast float %1656, %1624
  %1660 = fmul fast float %1659, %1655
  %1661 = fmul fast float %1656, %1627
  %1662 = fmul fast float %1661, %1655
  %1663 = fmul fast float %1656, %1629
  %1664 = fmul fast float %1663, %1655
  %1665 = fcmp fast oeq float %1636, 0.000000e+00
  br i1 %1665, label %1767, label %1666, !dx.controlflow.hints !46

; <label>:1666                                    ; preds = %1614
  %1667 = fmul fast float %1636, %65
  %1668 = fadd fast float %1667, 1.500000e+00
  %1669 = fptosi float %1668 to i32
  %1670 = fmul fast float %1636, %66
  %1671 = fadd fast float %1670, 1.500000e+00
  %1672 = fptosi float %1671 to i32
  %1673 = call i32 @dx.op.binary.i32(i32 37, i32 1, i32 %1669)  ; IMax(a,b)
  %1674 = call i32 @dx.op.binary.i32(i32 37, i32 1, i32 %1672)  ; IMax(a,b)
  %1675 = sub i32 %64, %1674
  %1676 = or i32 %1675, %63
  %1677 = icmp slt i32 %1676, 0
  %1678 = fptosi float %59 to i32
  %1679 = fptosi float %60 to i32
  %1680 = icmp sge i32 %63, %1678
  %1681 = icmp sge i32 %1675, %1679
  %1682 = or i1 %1680, %1681
  %1683 = or i1 %1677, %1682
  br i1 %1683, label %1697, label %1684, !dx.controlflow.hints !47

; <label>:1684                                    ; preds = %1666
  %1685 = lshr i32 %1675, 2
  %1686 = mul i32 %85, %1685
  %1687 = add i32 %89, %1686
  %1688 = shl i32 %1687, 2
  %1689 = shl i32 %1675, 3
  %1690 = and i32 %1689, 24
  %1691 = or i32 %1690, %94
  %1692 = shl i32 1, %1691
  %1693 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %1688, i32 undef)  ; BufferLoad(srv,index,wot)
  %1694 = extractvalue %dx.types.ResRet.i32 %1693, 0
  %1695 = and i32 %1694, %1692
  %1696 = icmp ne i32 %1695, 0
  br label %1697

; <label>:1697                                    ; preds = %1684, %1666
  %1698 = phi i1 [ %1696, %1684 ], [ false, %1666 ]
  %1699 = add i32 %1674, %64
  %1700 = or i32 %1699, %63
  %1701 = icmp slt i32 %1700, 0
  %1702 = icmp sge i32 %1699, %1679
  %1703 = or i1 %1680, %1702
  %1704 = or i1 %1701, %1703
  br i1 %1704, label %1718, label %1705, !dx.controlflow.hints !47

; <label>:1705                                    ; preds = %1697
  %1706 = lshr i32 %1699, 2
  %1707 = mul i32 %85, %1706
  %1708 = add i32 %89, %1707
  %1709 = shl i32 %1708, 2
  %1710 = shl i32 %1699, 3
  %1711 = and i32 %1710, 24
  %1712 = or i32 %1711, %94
  %1713 = shl i32 1, %1712
  %1714 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %1709, i32 undef)  ; BufferLoad(srv,index,wot)
  %1715 = extractvalue %dx.types.ResRet.i32 %1714, 0
  %1716 = and i32 %1715, %1713
  %1717 = icmp ne i32 %1716, 0
  br label %1718

; <label>:1718                                    ; preds = %1705, %1697
  %1719 = phi i1 [ %1717, %1705 ], [ false, %1697 ]
  %1720 = and i1 %1698, %1719
  %1721 = sub i32 %63, %1673
  %1722 = or i32 %1721, %64
  %1723 = icmp slt i32 %1722, 0
  %1724 = icmp sge i32 %1721, %1678
  %1725 = icmp sge i32 %64, %1679
  %1726 = or i1 %1724, %1725
  %1727 = or i1 %1723, %1726
  br i1 %1727, label %1741, label %1728, !dx.controlflow.hints !47

; <label>:1728                                    ; preds = %1718
  %1729 = lshr i32 %1721, 3
  %1730 = add i32 %81, %1729
  %1731 = add i32 %1730, %83
  %1732 = add i32 %1731, %86
  %1733 = shl i32 %1732, 2
  %1734 = and i32 %1721, 7
  %1735 = or i32 %1734, %93
  %1736 = shl i32 1, %1735
  %1737 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %1733, i32 undef)  ; BufferLoad(srv,index,wot)
  %1738 = extractvalue %dx.types.ResRet.i32 %1737, 0
  %1739 = and i32 %1738, %1736
  %1740 = icmp ne i32 %1739, 0
  br label %1741

; <label>:1741                                    ; preds = %1728, %1718
  %1742 = phi i1 [ %1740, %1728 ], [ false, %1718 ]
  %1743 = and i1 %1720, %1742
  %1744 = add i32 %1673, %63
  %1745 = or i32 %1744, %64
  %1746 = icmp slt i32 %1745, 0
  %1747 = icmp sge i32 %1744, %1678
  %1748 = or i1 %1747, %1725
  %1749 = or i1 %1746, %1748
  br i1 %1749, label %1763, label %1750, !dx.controlflow.hints !47

; <label>:1750                                    ; preds = %1741
  %1751 = lshr i32 %1744, 3
  %1752 = add i32 %81, %1751
  %1753 = add i32 %1752, %83
  %1754 = add i32 %1753, %86
  %1755 = shl i32 %1754, 2
  %1756 = and i32 %1744, 7
  %1757 = or i32 %1756, %93
  %1758 = shl i32 1, %1757
  %1759 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %1755, i32 undef)  ; BufferLoad(srv,index,wot)
  %1760 = extractvalue %dx.types.ResRet.i32 %1759, 0
  %1761 = and i32 %1760, %1758
  %1762 = icmp ne i32 %1761, 0
  br label %1763

; <label>:1763                                    ; preds = %1750, %1741
  %1764 = phi i1 [ %1762, %1750 ], [ false, %1741 ]
  %1765 = and i1 %1743, %1764
  %1766 = xor i1 %1765, true
  br label %1767

; <label>:1767                                    ; preds = %1763, %1614
  %1768 = phi i1 [ %1766, %1763 ], [ false, %1614 ]
  br i1 %1768, label %5179, label %1769, !dx.controlflow.hints !48

; <label>:1769                                    ; preds = %1767
  %1770 = select i1 %78, float %1648, float %1643
  %1771 = select i1 %78, float %1649, float %1644
  %1772 = select i1 %78, float %1650, float %1645
  %1773 = select i1 %78, float %1651, float %1646
  %1774 = fmul fast float %1770, %1640
  %1775 = fmul fast float %1771, %1640
  %1776 = fmul fast float %1772, %1640
  %1777 = fmul fast float %1773, %1640
  %1778 = fmul fast float %1774, %1658
  %1779 = fmul fast float %1775, %1660
  %1780 = fmul fast float %1776, %1662
  %1781 = fmul fast float %1777, %1664
  br label %5179

; <label>:1782                                    ; preds = %1611
  %1783 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %1613, i32 undef)  ; BufferLoad(srv,index,wot)
  %1784 = extractvalue %dx.types.ResRet.i32 %1783, 0
  %1785 = and i32 %1784, 255
  %1786 = uitofp i32 %1785 to float
  %1787 = lshr i32 %1784, 8
  %1788 = and i32 %1787, 255
  %1789 = uitofp i32 %1788 to float
  %1790 = lshr i32 %1784, 16
  %1791 = and i32 %1790, 255
  %1792 = uitofp i32 %1791 to float
  %1793 = lshr i32 %1784, 24
  %1794 = uitofp i32 %1793 to float
  %1795 = fmul fast float %1786, 0x3F70101020000000
  %1796 = fmul fast float %1789, 0x3F70101020000000
  %1797 = fmul fast float %1792, 0x3F70101020000000
  %1798 = fmul fast float %1794, 0x3F70101020000000
  %1799 = fsub fast float 1.000000e+00, %1798
  %1800 = lshr i32 %628, 5
  %1801 = and i32 %1800, 1008
  %1802 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %1801, i32 undef)  ; BufferLoad(srv,index,wot)
  %1803 = extractvalue %dx.types.ResRet.i32 %1802, 0
  %1804 = and i32 %1803, 1022
  %1805 = uitofp i32 %1804 to float
  %1806 = fmul fast float %1805, 0x3F940A0500000000
  %1807 = fadd fast float %1806, -1.000000e+01
  %1808 = lshr i32 %1803, 10
  %1809 = and i32 %1808, 1022
  %1810 = uitofp i32 %1809 to float
  %1811 = fmul fast float %1810, 0x3F940A0500000000
  %1812 = fadd fast float %1811, -1.000000e+01
  %1813 = lshr i32 %1803, 20
  %1814 = and i32 %1813, 1022
  %1815 = uitofp i32 %1814 to float
  %1816 = fmul fast float %1815, 0x3F840A0500000000
  %1817 = add nuw nsw i32 %1613, 12
  %1818 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %1817, i32 undef)  ; BufferLoad(srv,index,wot)
  %1819 = extractvalue %dx.types.ResRet.i32 %1818, 0
  %1820 = and i32 %1819, 65535
  %1821 = uitofp i32 %1820 to float
  %1822 = fmul fast float %1821, 0x3EF0002000000000
  %1823 = lshr i32 %1819, 16
  %1824 = uitofp i32 %1823 to float
  %1825 = fmul fast float %1824, 0x3EF0002000000000
  %1826 = add nuw nsw i32 %1613, 8
  %1827 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %1826, i32 undef)  ; BufferLoad(srv,index,wot)
  %1828 = extractvalue %dx.types.ResRet.i32 %1827, 0
  %1829 = and i32 %1828, 65535
  %1830 = uitofp i32 %1829 to float
  %1831 = fmul fast float %1830, 0x3EF0002000000000
  %1832 = lshr i32 %1828, 16
  %1833 = uitofp i32 %1832 to float
  %1834 = fmul fast float %1833, 0x3EF0002000000000
  %1835 = fsub fast float %44, %1831
  %1836 = fdiv fast float %1835, %1822
  %1837 = fsub fast float %45, %1834
  %1838 = fdiv fast float %1837, %1825
  %1839 = add nuw nsw i32 %1613, 16
  %1840 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %1839, i32 undef)  ; BufferLoad(srv,index,wot)
  %1841 = extractvalue %dx.types.ResRet.f32 %1840, 0
  %1842 = fcmp fast olt float %1841, 1.000000e+01
  %1843 = uitofp i1 %1842 to float
  %1844 = fdiv fast float 2.400000e+02, %1841
  %1845 = call float @dx.op.unary.f32(i32 7, float %1844)  ; Saturate(value)
  %1846 = fdiv fast float 3.200000e+02, %1841
  %1847 = call float @dx.op.unary.f32(i32 7, float %1846)  ; Saturate(value)
  %1848 = fmul fast float %1847, 5.000000e-01
  %1849 = fadd fast float %1848, 2.500000e-01
  %1850 = fdiv fast float 3.200000e+01, %1849
  %1851 = select i1 %1842, float 3.200000e+01, float %1850
  %1852 = fmul fast float %1851, 1.600000e+01
  %1853 = fmul fast float %1851, 9.000000e+00
  %1854 = fmul fast float %1822, %1836
  %1855 = fmul fast float %1854, %1852
  %1856 = fmul fast float %1825, %1838
  %1857 = fmul fast float %1856, %1853
  %1858 = call float @dx.op.unary.f32(i32 29, float %1855)  ; Round_z(value)
  %1859 = call float @dx.op.unary.f32(i32 29, float %1857)  ; Round_z(value)
  %1860 = call float @dx.op.unary.f32(i32 7, float %1798)  ; Saturate(value)
  %1861 = fmul fast float %1860, 2.000000e+00
  %1862 = fsub fast float 3.000000e+00, %1861
  %1863 = fmul fast float %1845, 4.000000e+01
  %1864 = fmul fast float %1843, 1.000000e+02
  %1865 = fadd fast float %1864, %1863
  %1866 = fmul fast float %1816, %1865
  %1867 = fptoui float %1866 to i32
  %1868 = uitofp i32 %63 to float
  %1869 = uitofp i32 %64 to float
  %1870 = fptoui float %1868 to i32
  %1871 = fptoui float %1869 to i32
  %1872 = lshr i32 %1871, 2
  %1873 = mul i32 %85, %1872
  %1874 = lshr i32 %1870, 3
  %1875 = add i32 %81, %1874
  %1876 = add i32 %1875, %83
  %1877 = add i32 %1876, %1873
  %1878 = shl i32 %1877, 2
  %1879 = shl i32 %1871, 3
  %1880 = and i32 %1879, 24
  %1881 = and i32 %1870, 7
  %1882 = or i32 %1880, %1881
  %1883 = shl i32 1, %1882
  %1884 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %1878, i32 undef)  ; BufferLoad(srv,index,wot)
  %1885 = extractvalue %dx.types.ResRet.i32 %1884, 0
  %1886 = and i32 %1885, %1883
  %1887 = icmp ne i32 %1886, 0
  %1888 = icmp eq i32 %1867, 0
  br i1 %1888, label %2005, label %1889, !dx.controlflow.hints !50

; <label>:1889                                    ; preds = %1782
  %1890 = uitofp i32 %1867 to float
  %1891 = fmul fast float %65, 5.000000e-01
  %1892 = fmul fast float %1891, %1890
  %1893 = fmul fast float %66, 5.000000e-01
  %1894 = fmul fast float %1893, %1890
  %1895 = call float @dx.op.binary.f32(i32 35, float 5.000000e-01, float %1892)  ; FMax(a,b)
  %1896 = call float @dx.op.binary.f32(i32 35, float 5.000000e-01, float %1894)  ; FMax(a,b)
  br label %1897

; <label>:1897                                    ; preds = %1992, %1889
  %1898 = phi float [ 0.000000e+00, %1889 ], [ %1995, %1992 ]
  %1899 = phi i32 [ 0, %1889 ], [ %1996, %1992 ]
  %1900 = fmul fast float %44, 0x3FF280E1E0000000
  %1901 = fmul fast float %45, 0x3FF280E1E0000000
  %1902 = sitofp i32 %1899 to float
  %1903 = fmul fast float %1902, 0x3FB99999A0000000
  %1904 = fadd fast float %1903, %1900
  %1905 = fadd fast float %1903, %1901
  %1906 = fmul fast float %1904, 1.024000e+03
  %1907 = fmul fast float %1905, 1.024000e+03
  %1908 = fadd fast float %1906, -5.120000e+02
  %1909 = fadd fast float %1907, -5.120000e+02
  %1910 = fmul fast float %1904, 0x4081BEDF00000000
  %1911 = fadd fast float %1910, 0xC071BEDF00000000
  %1912 = call float @dx.op.unary.f32(i32 22, float %1911)  ; Frc(value)
  %1913 = fmul fast float %1908, %1912
  %1914 = fadd fast float %1913, %1909
  %1915 = fmul fast float %1905, 0x4073BEBE20000000
  %1916 = fadd fast float %1915, 0xC063BEBE20000000
  %1917 = call float @dx.op.unary.f32(i32 22, float %1916)  ; Frc(value)
  %1918 = fmul fast float %1909, %1917
  %1919 = fadd fast float %1918, %1908
  %1920 = fmul fast float %1914, %1919
  %1921 = call float @dx.op.unary.f32(i32 22, float %1920)  ; Frc(value)
  %1922 = fmul fast float %1921, 2.000000e+00
  %1923 = fadd fast float %1922, -1.000000e+00
  %1924 = fmul fast float %1923, %1895
  %1925 = fmul fast float %44, 0x3FEB681740000000
  %1926 = fmul fast float %45, 0x3FEB681740000000
  %1927 = fmul fast float %1902, 0x3FC99999A0000000
  %1928 = fadd fast float %1927, 1.250000e-01
  %1929 = fadd fast float %1928, %1925
  %1930 = fadd fast float %1928, %1926
  %1931 = fmul fast float %1929, 1.024000e+03
  %1932 = fmul fast float %1930, 1.024000e+03
  %1933 = fadd fast float %1931, -5.120000e+02
  %1934 = fadd fast float %1932, -5.120000e+02
  %1935 = fmul fast float %1929, 0x4081BEDF00000000
  %1936 = fadd fast float %1935, 0xC071BEDF00000000
  %1937 = call float @dx.op.unary.f32(i32 22, float %1936)  ; Frc(value)
  %1938 = fmul fast float %1933, %1937
  %1939 = fadd fast float %1938, %1934
  %1940 = fmul fast float %1930, 0x4073BEBE20000000
  %1941 = fadd fast float %1940, 0xC063BEBE20000000
  %1942 = call float @dx.op.unary.f32(i32 22, float %1941)  ; Frc(value)
  %1943 = fmul fast float %1934, %1942
  %1944 = fadd fast float %1943, %1933
  %1945 = fmul fast float %1939, %1944
  %1946 = call float @dx.op.unary.f32(i32 22, float %1945)  ; Frc(value)
  %1947 = fmul fast float %1946, 2.000000e+00
  %1948 = fadd fast float %1947, -1.000000e+00
  %1949 = fmul fast float %1948, %1896
  %1950 = fptosi float %1924 to i32
  %1951 = sitofp i32 %1950 to float
  %1952 = fadd fast float %1951, %1868
  %1953 = fptosi float %1952 to i32
  %1954 = fptosi float %1949 to i32
  %1955 = sitofp i32 %1954 to float
  %1956 = fadd fast float %1955, %1869
  %1957 = fptosi float %1956 to i32
  %1958 = or i32 %1957, %1953
  %1959 = icmp slt i32 %1958, 0
  %1960 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %1961 = extractvalue %dx.types.CBufRet.f32 %1960, 0
  %1962 = extractvalue %dx.types.CBufRet.f32 %1960, 1
  %1963 = fptosi float %1961 to i32
  %1964 = fptosi float %1962 to i32
  %1965 = icmp sge i32 %1953, %1963
  %1966 = icmp sge i32 %1957, %1964
  %1967 = or i1 %1965, %1966
  %1968 = or i1 %1959, %1967
  br i1 %1968, label %1992, label %1969, !dx.controlflow.hints !47

; <label>:1969                                    ; preds = %1897
  %1970 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %18, i32 51)  ; CBufferLoadLegacy(handle,regIndex)
  %1971 = extractvalue %dx.types.CBufRet.i32 %1970, 1
  %1972 = shl i32 %1971, 2
  %1973 = extractvalue %dx.types.CBufRet.i32 %1970, 3
  %1974 = shl i32 %1973, 1
  %1975 = lshr i32 %1957, 2
  %1976 = extractvalue %dx.types.CBufRet.i32 %1970, 2
  %1977 = mul i32 %1976, %1975
  %1978 = lshr i32 %1953, 3
  %1979 = add i32 %1972, %1978
  %1980 = add i32 %1979, %1974
  %1981 = add i32 %1980, %1977
  %1982 = shl i32 %1981, 2
  %1983 = shl i32 %1957, 3
  %1984 = and i32 %1983, 24
  %1985 = and i32 %1953, 7
  %1986 = or i32 %1984, %1985
  %1987 = shl i32 1, %1986
  %1988 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %1982, i32 undef)  ; BufferLoad(srv,index,wot)
  %1989 = extractvalue %dx.types.ResRet.i32 %1988, 0
  %1990 = and i32 %1989, %1987
  %1991 = icmp ne i32 %1990, 0
  br label %1992

; <label>:1992                                    ; preds = %1969, %1897
  %1993 = phi i1 [ %1991, %1969 ], [ false, %1897 ]
  %1994 = uitofp i1 %1993 to float
  %1995 = fadd fast float %1994, %1898
  %1996 = add nuw nsw i32 %1899, 1
  %1997 = icmp eq i32 %1996, 5
  br i1 %1997, label %1998, label %1897

; <label>:1998                                    ; preds = %1992
  %1999 = uitofp i1 %1887 to float
  %2000 = fmul fast float %1999, 0x3FC99999A0000000
  %2001 = fmul fast float %2000, %1995
  %2002 = fadd fast float %2001, -5.000000e-01
  %2003 = fmul fast float %2002, 2.000000e+00
  %2004 = call float @dx.op.unary.f32(i32 7, float %2003)  ; Saturate(value)
  br label %2005

; <label>:2005                                    ; preds = %1998, %1782
  %2006 = phi float [ %2004, %1998 ], [ 0.000000e+00, %1782 ]
  %2007 = fdiv fast float %1858, %1852
  %2008 = fdiv fast float %1859, %1853
  %2009 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2010 = extractvalue %dx.types.CBufRet.f32 %2009, 3
  %2011 = fmul fast float %2010, %1807
  %2012 = fadd fast float %2011, %2007
  %2013 = fsub fast float %2008, %2011
  %2014 = call float @dx.op.unary.f32(i32 22, float %2012)  ; Frc(value)
  %2015 = call float @dx.op.unary.f32(i32 22, float %2013)  ; Frc(value)
  %2016 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %15, float %2014, float %2015, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2017 = extractvalue %dx.types.ResRet.f32 %2016, 0
  %2018 = fmul fast float %2017, %1812
  %2019 = call float @dx.op.unary.f32(i32 7, float %2018)  ; Saturate(value)
  %2020 = call float @dx.op.binary.f32(i32 35, float 0x3F847AE140000000, float %2019)  ; FMax(a,b)
  %2021 = fsub fast float -5.000000e-01, %1858
  %2022 = fadd fast float %2021, %1855
  %2023 = fsub fast float -5.000000e-01, %1859
  %2024 = fadd fast float %2023, %1857
  %2025 = fmul fast float %2022, 2.000000e+00
  %2026 = fmul fast float %2024, 2.000000e+00
  %2027 = call float @dx.op.dot2.f32(i32 54, float %2025, float %2026, float %2025, float %2026)  ; Dot2(ax,ay,bx,by)
  %2028 = call float @dx.op.unary.f32(i32 24, float %2027)  ; Sqrt(value)
  %2029 = fsub fast float 1.000000e+00, %2028
  %2030 = fmul fast float %2029, 2.000000e+00
  %2031 = call float @dx.op.unary.f32(i32 7, float %2030)  ; Saturate(value)
  %2032 = fadd fast float %2011, %1838
  %2033 = call float @dx.op.unary.f32(i32 22, float %2032)  ; Frc(value)
  %2034 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %14, float %1836, float %2033, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2035 = extractvalue %dx.types.ResRet.f32 %2034, 3
  %2036 = call float @dx.op.unary.f32(i32 7, float %2006)  ; Saturate(value)
  %2037 = fmul fast float %2035, %1799
  %2038 = fsub fast float %2036, %2037
  %2039 = call float @dx.op.unary.f32(i32 7, float %2038)  ; Saturate(value)
  %2040 = fmul fast float %2035, 1.250000e+00
  %2041 = fsub fast float %2036, %2040
  %2042 = call float @dx.op.unary.f32(i32 7, float %2041)  ; Saturate(value)
  %2043 = fmul fast float %2042, %2042
  %2044 = fmul fast float %2043, %2042
  %2045 = call float @dx.op.unary.f32(i32 7, float %2044)  ; Saturate(value)
  %2046 = fmul fast float %2045, 0x40285C2900000000
  %2047 = fsub fast float 1.400000e+01, %2046
  %2048 = fptoui float %2047 to i32
  %2049 = call float @dx.op.unary.f32(i32 22, float %2047)  ; Frc(value)
  %2050 = mul i32 %2048, 3
  %2051 = add i32 0, %2050
  %2052 = getelementptr [45 x float], [45 x float]* @supp_ramp.v.1dim, i32 0, i32 %2051
  %2053 = load float, float* %2052, align 4
  %2054 = mul i32 %2048, 3
  %2055 = add i32 1, %2054
  %2056 = getelementptr [45 x float], [45 x float]* @supp_ramp.v.1dim, i32 0, i32 %2055
  %2057 = load float, float* %2056, align 4
  %2058 = mul i32 %2048, 3
  %2059 = add i32 2, %2058
  %2060 = getelementptr [45 x float], [45 x float]* @supp_ramp.v.1dim, i32 0, i32 %2059
  %2061 = load float, float* %2060, align 4
  %2062 = add i32 %2048, 1
  %2063 = mul i32 %2062, 3
  %2064 = add i32 0, %2063
  %2065 = getelementptr [45 x float], [45 x float]* @supp_ramp.v.1dim, i32 0, i32 %2064
  %2066 = load float, float* %2065, align 4
  %2067 = mul i32 %2062, 3
  %2068 = add i32 1, %2067
  %2069 = getelementptr [45 x float], [45 x float]* @supp_ramp.v.1dim, i32 0, i32 %2068
  %2070 = load float, float* %2069, align 4
  %2071 = mul i32 %2062, 3
  %2072 = add i32 2, %2071
  %2073 = getelementptr [45 x float], [45 x float]* @supp_ramp.v.1dim, i32 0, i32 %2072
  %2074 = load float, float* %2073, align 4
  %2075 = fsub fast float %2066, %2053
  %2076 = fsub fast float %2070, %2057
  %2077 = fsub fast float %2074, %2061
  %2078 = fmul fast float %2075, %2049
  %2079 = fmul fast float %2076, %2049
  %2080 = fmul fast float %2077, %2049
  %2081 = fadd fast float %2078, %2053
  %2082 = fadd fast float %2079, %2057
  %2083 = fadd fast float %2080, %2061
  %2084 = fmul fast float %1795, %2081
  %2085 = fmul fast float %1796, %2082
  %2086 = fmul fast float %1797, %2083
  %2087 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 17)  ; CBufferLoadLegacy(handle,regIndex)
  %2088 = extractvalue %dx.types.CBufRet.f32 %2087, 0
  %2089 = fmul fast float %1860, %1860
  %2090 = fmul fast float %2089, %1862
  %2091 = fmul fast float %2090, %2020
  %2092 = fmul fast float %2091, %2031
  %2093 = fmul fast float %2092, %2039
  %2094 = fmul fast float %2093, %2088
  %2095 = fmul fast float %2084, %2084
  %2096 = fmul fast float %2095, 5.000000e+00
  %2097 = fmul fast float %2096, %2094
  %2098 = fmul fast float %2085, %2085
  %2099 = fmul fast float %2098, 5.000000e+00
  %2100 = fmul fast float %2099, %2094
  %2101 = fmul fast float %2094, 5.000000e+00
  %2102 = fmul fast float %2086, %2086
  %2103 = fmul fast float %2102, %2101
  %2104 = call float @dx.op.binary.f32(i32 36, float %2097, float 2.000000e+00)  ; FMin(a,b)
  %2105 = call float @dx.op.binary.f32(i32 36, float %2100, float 2.000000e+00)  ; FMin(a,b)
  %2106 = call float @dx.op.binary.f32(i32 36, float %2103, float 2.000000e+00)  ; FMin(a,b)
  %2107 = select i1 %1842, float 0x3FD3333340000000, float 7.500000e-01
  %2108 = fmul float %2107, %2094
  br label %5179

; <label>:2109                                    ; preds = %613
  %2110 = and i32 %628, 511
  %2111 = mul nuw nsw i32 %2110, 20
  %2112 = add nuw nsw i32 %2111, 4
  %2113 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %2112, i32 undef)  ; BufferLoad(srv,index,wot)
  %2114 = extractvalue %dx.types.ResRet.i32 %2113, 0
  %2115 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %2111, i32 undef)  ; BufferLoad(srv,index,wot)
  %2116 = extractvalue %dx.types.ResRet.i32 %2115, 0
  %2117 = and i32 %2116, 255
  %2118 = uitofp i32 %2117 to float
  %2119 = lshr i32 %2116, 8
  %2120 = and i32 %2119, 255
  %2121 = uitofp i32 %2120 to float
  %2122 = lshr i32 %2116, 16
  %2123 = and i32 %2122, 255
  %2124 = uitofp i32 %2123 to float
  %2125 = lshr i32 %2116, 24
  %2126 = uitofp i32 %2125 to float
  %2127 = fmul fast float %2118, 0x3F70101020000000
  %2128 = fmul fast float %2121, 0x3F70101020000000
  %2129 = fmul fast float %2124, 0x3F70101020000000
  %2130 = fmul fast float %2126, 0x3F70101020000000
  %2131 = lshr i32 %2114, 8
  %2132 = and i32 %2131, 65535
  %2133 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2132)  ; LegacyF16ToF32(value)
  %2134 = fcmp fast oeq float %2133, 0.000000e+00
  br i1 %2134, label %2236, label %2135, !dx.controlflow.hints !46

; <label>:2135                                    ; preds = %2109
  %2136 = fmul fast float %2133, %65
  %2137 = fadd fast float %2136, 1.500000e+00
  %2138 = fptosi float %2137 to i32
  %2139 = fmul fast float %2133, %66
  %2140 = fadd fast float %2139, 1.500000e+00
  %2141 = fptosi float %2140 to i32
  %2142 = call i32 @dx.op.binary.i32(i32 37, i32 1, i32 %2138)  ; IMax(a,b)
  %2143 = call i32 @dx.op.binary.i32(i32 37, i32 1, i32 %2141)  ; IMax(a,b)
  %2144 = sub i32 %64, %2143
  %2145 = or i32 %2144, %63
  %2146 = icmp slt i32 %2145, 0
  %2147 = fptosi float %59 to i32
  %2148 = fptosi float %60 to i32
  %2149 = icmp sge i32 %63, %2147
  %2150 = icmp sge i32 %2144, %2148
  %2151 = or i1 %2149, %2150
  %2152 = or i1 %2146, %2151
  br i1 %2152, label %2166, label %2153, !dx.controlflow.hints !47

; <label>:2153                                    ; preds = %2135
  %2154 = lshr i32 %2144, 2
  %2155 = mul i32 %85, %2154
  %2156 = add i32 %89, %2155
  %2157 = shl i32 %2156, 2
  %2158 = shl i32 %2144, 3
  %2159 = and i32 %2158, 24
  %2160 = or i32 %2159, %94
  %2161 = shl i32 1, %2160
  %2162 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %2157, i32 undef)  ; BufferLoad(srv,index,wot)
  %2163 = extractvalue %dx.types.ResRet.i32 %2162, 0
  %2164 = and i32 %2163, %2161
  %2165 = icmp ne i32 %2164, 0
  br label %2166

; <label>:2166                                    ; preds = %2153, %2135
  %2167 = phi i1 [ %2165, %2153 ], [ false, %2135 ]
  %2168 = add i32 %2143, %64
  %2169 = or i32 %2168, %63
  %2170 = icmp slt i32 %2169, 0
  %2171 = icmp sge i32 %2168, %2148
  %2172 = or i1 %2149, %2171
  %2173 = or i1 %2170, %2172
  br i1 %2173, label %2187, label %2174, !dx.controlflow.hints !47

; <label>:2174                                    ; preds = %2166
  %2175 = lshr i32 %2168, 2
  %2176 = mul i32 %85, %2175
  %2177 = add i32 %89, %2176
  %2178 = shl i32 %2177, 2
  %2179 = shl i32 %2168, 3
  %2180 = and i32 %2179, 24
  %2181 = or i32 %2180, %94
  %2182 = shl i32 1, %2181
  %2183 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %2178, i32 undef)  ; BufferLoad(srv,index,wot)
  %2184 = extractvalue %dx.types.ResRet.i32 %2183, 0
  %2185 = and i32 %2184, %2182
  %2186 = icmp ne i32 %2185, 0
  br label %2187

; <label>:2187                                    ; preds = %2174, %2166
  %2188 = phi i1 [ %2186, %2174 ], [ false, %2166 ]
  %2189 = and i1 %2167, %2188
  %2190 = sub i32 %63, %2142
  %2191 = or i32 %2190, %64
  %2192 = icmp slt i32 %2191, 0
  %2193 = icmp sge i32 %2190, %2147
  %2194 = icmp sge i32 %64, %2148
  %2195 = or i1 %2193, %2194
  %2196 = or i1 %2192, %2195
  br i1 %2196, label %2210, label %2197, !dx.controlflow.hints !47

; <label>:2197                                    ; preds = %2187
  %2198 = lshr i32 %2190, 3
  %2199 = add i32 %81, %2198
  %2200 = add i32 %2199, %83
  %2201 = add i32 %2200, %86
  %2202 = shl i32 %2201, 2
  %2203 = and i32 %2190, 7
  %2204 = or i32 %2203, %93
  %2205 = shl i32 1, %2204
  %2206 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %2202, i32 undef)  ; BufferLoad(srv,index,wot)
  %2207 = extractvalue %dx.types.ResRet.i32 %2206, 0
  %2208 = and i32 %2207, %2205
  %2209 = icmp ne i32 %2208, 0
  br label %2210

; <label>:2210                                    ; preds = %2197, %2187
  %2211 = phi i1 [ %2209, %2197 ], [ false, %2187 ]
  %2212 = and i1 %2189, %2211
  %2213 = add i32 %2142, %63
  %2214 = or i32 %2213, %64
  %2215 = icmp slt i32 %2214, 0
  %2216 = icmp sge i32 %2213, %2147
  %2217 = or i1 %2216, %2194
  %2218 = or i1 %2215, %2217
  br i1 %2218, label %2232, label %2219, !dx.controlflow.hints !47

; <label>:2219                                    ; preds = %2210
  %2220 = lshr i32 %2213, 3
  %2221 = add i32 %81, %2220
  %2222 = add i32 %2221, %83
  %2223 = add i32 %2222, %86
  %2224 = shl i32 %2223, 2
  %2225 = and i32 %2213, 7
  %2226 = or i32 %2225, %93
  %2227 = shl i32 1, %2226
  %2228 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %2224, i32 undef)  ; BufferLoad(srv,index,wot)
  %2229 = extractvalue %dx.types.ResRet.i32 %2228, 0
  %2230 = and i32 %2229, %2227
  %2231 = icmp ne i32 %2230, 0
  br label %2232

; <label>:2232                                    ; preds = %2219, %2210
  %2233 = phi i1 [ %2231, %2219 ], [ false, %2210 ]
  %2234 = and i1 %2212, %2233
  %2235 = xor i1 %2234, true
  br label %2236

; <label>:2236                                    ; preds = %2232, %2109
  %2237 = phi i1 [ %2235, %2232 ], [ false, %2109 ]
  %2238 = and i32 %628, 1114112
  %2239 = icmp ne i32 %2238, 0
  %2240 = and i1 %2239, %109
  %2241 = or i1 %2240, %2237
  %2242 = select i1 %2241, float %2127, float 0.000000e+00
  %2243 = select i1 %2241, float %2128, float 0.000000e+00
  %2244 = select i1 %2241, float %2129, float 0.000000e+00
  %2245 = select i1 %2241, float %2130, float 0.000000e+00
  br label %5179

; <label>:2246                                    ; preds = %613
  %2247 = and i32 %628, 511
  %2248 = mul nuw nsw i32 %2247, 20
  %2249 = add nuw nsw i32 %2248, 4
  %2250 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %2249, i32 undef)  ; BufferLoad(srv,index,wot)
  %2251 = extractvalue %dx.types.ResRet.i32 %2250, 0
  %2252 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %2248, i32 undef)  ; BufferLoad(srv,index,wot)
  %2253 = extractvalue %dx.types.ResRet.i32 %2252, 0
  %2254 = and i32 %2253, 255
  %2255 = uitofp i32 %2254 to float
  %2256 = lshr i32 %2253, 8
  %2257 = and i32 %2256, 255
  %2258 = uitofp i32 %2257 to float
  %2259 = lshr i32 %2253, 16
  %2260 = and i32 %2259, 255
  %2261 = uitofp i32 %2260 to float
  %2262 = lshr i32 %2253, 24
  %2263 = uitofp i32 %2262 to float
  %2264 = fmul fast float %2255, 0x3F70101020000000
  %2265 = fmul fast float %2258, 0x3F70101020000000
  %2266 = fmul fast float %2261, 0x3F70101020000000
  %2267 = fmul fast float %2263, 0x3F70101020000000
  %2268 = and i32 %628, 2097152
  %2269 = icmp ne i32 %2268, 0
  %2270 = lshr i32 %2251, 8
  %2271 = and i32 %2270, 65535
  %2272 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2271)  ; LegacyF16ToF32(value)
  %2273 = and i32 %628, 65536
  %2274 = icmp ne i32 %2273, 0
  %2275 = select i1 %2274, float 1.000000e+00, float 0.000000e+00
  br i1 %108, label %2305, label %2276, !dx.controlflow.hints !45

; <label>:2276                                    ; preds = %2246
  %2277 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2278 = extractvalue %dx.types.CBufRet.f32 %2277, 0
  %2279 = extractvalue %dx.types.CBufRet.f32 %2277, 1
  %2280 = extractvalue %dx.types.CBufRet.f32 %2277, 2
  %2281 = extractvalue %dx.types.CBufRet.f32 %2277, 3
  %2282 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %2283 = extractvalue %dx.types.CBufRet.f32 %2282, 0
  %2284 = extractvalue %dx.types.CBufRet.f32 %2282, 1
  %2285 = extractvalue %dx.types.CBufRet.f32 %2282, 2
  %2286 = extractvalue %dx.types.CBufRet.f32 %2282, 3
  %2287 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %2288 = extractvalue %dx.types.CBufRet.f32 %2287, 0
  %2289 = fadd fast float %2264, -1.000000e+00
  %2290 = fadd fast float %2265, -1.000000e+00
  %2291 = fadd fast float %2266, -1.000000e+00
  %2292 = fadd fast float %2267, -1.000000e+00
  %2293 = fmul fast float %2288, %2289
  %2294 = fmul fast float %2288, %2290
  %2295 = fmul fast float %2288, %2291
  %2296 = fmul fast float %2288, %2292
  %2297 = fadd fast float %2293, 1.000000e+00
  %2298 = fadd fast float %2294, 1.000000e+00
  %2299 = fadd fast float %2295, 1.000000e+00
  %2300 = fadd fast float %2296, 1.000000e+00
  %2301 = fmul fast float %2297, %2283
  %2302 = fmul fast float %2298, %2284
  %2303 = fmul fast float %2299, %2285
  %2304 = fmul fast float %2300, %2286
  br label %2311

; <label>:2305                                    ; preds = %2246
  %2306 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %2307 = extractvalue %dx.types.CBufRet.f32 %2306, 0
  %2308 = extractvalue %dx.types.CBufRet.f32 %2306, 1
  %2309 = extractvalue %dx.types.CBufRet.f32 %2306, 2
  %2310 = extractvalue %dx.types.CBufRet.f32 %2306, 3
  br label %2311

; <label>:2311                                    ; preds = %2305, %2276
  %2312 = phi float [ %2301, %2276 ], [ %2264, %2305 ]
  %2313 = phi float [ %2302, %2276 ], [ %2265, %2305 ]
  %2314 = phi float [ %2303, %2276 ], [ %2266, %2305 ]
  %2315 = phi float [ %2304, %2276 ], [ %2267, %2305 ]
  %2316 = phi float [ %2278, %2276 ], [ %2307, %2305 ]
  %2317 = phi float [ %2279, %2276 ], [ %2308, %2305 ]
  %2318 = phi float [ %2280, %2276 ], [ %2309, %2305 ]
  %2319 = phi float [ %2281, %2276 ], [ %2310, %2305 ]
  %2320 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2321 = extractvalue %dx.types.CBufRet.f32 %2320, 0
  %2322 = fmul fast float %2321, 2.000000e+00
  %2323 = select i1 %2269, float %2322, float 1.000000e+00
  %2324 = fmul fast float %2323, %2312
  %2325 = fmul fast float %2323, %2313
  %2326 = fmul fast float %2323, %2314
  %2327 = fmul fast float %2323, %2315
  %2328 = fcmp fast oeq float %2272, 0.000000e+00
  br i1 %2328, label %2430, label %2329, !dx.controlflow.hints !46

; <label>:2329                                    ; preds = %2311
  %2330 = fmul fast float %2272, %65
  %2331 = fadd fast float %2330, 1.500000e+00
  %2332 = fptosi float %2331 to i32
  %2333 = fmul fast float %2272, %66
  %2334 = fadd fast float %2333, 1.500000e+00
  %2335 = fptosi float %2334 to i32
  %2336 = call i32 @dx.op.binary.i32(i32 37, i32 1, i32 %2332)  ; IMax(a,b)
  %2337 = call i32 @dx.op.binary.i32(i32 37, i32 1, i32 %2335)  ; IMax(a,b)
  %2338 = sub i32 %64, %2337
  %2339 = or i32 %2338, %63
  %2340 = icmp slt i32 %2339, 0
  %2341 = fptosi float %59 to i32
  %2342 = fptosi float %60 to i32
  %2343 = icmp sge i32 %63, %2341
  %2344 = icmp sge i32 %2338, %2342
  %2345 = or i1 %2343, %2344
  %2346 = or i1 %2340, %2345
  br i1 %2346, label %2360, label %2347, !dx.controlflow.hints !47

; <label>:2347                                    ; preds = %2329
  %2348 = lshr i32 %2338, 2
  %2349 = mul i32 %85, %2348
  %2350 = add i32 %89, %2349
  %2351 = shl i32 %2350, 2
  %2352 = shl i32 %2338, 3
  %2353 = and i32 %2352, 24
  %2354 = or i32 %2353, %94
  %2355 = shl i32 1, %2354
  %2356 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %2351, i32 undef)  ; BufferLoad(srv,index,wot)
  %2357 = extractvalue %dx.types.ResRet.i32 %2356, 0
  %2358 = and i32 %2357, %2355
  %2359 = icmp ne i32 %2358, 0
  br label %2360

; <label>:2360                                    ; preds = %2347, %2329
  %2361 = phi i1 [ %2359, %2347 ], [ false, %2329 ]
  %2362 = add i32 %2337, %64
  %2363 = or i32 %2362, %63
  %2364 = icmp slt i32 %2363, 0
  %2365 = icmp sge i32 %2362, %2342
  %2366 = or i1 %2343, %2365
  %2367 = or i1 %2364, %2366
  br i1 %2367, label %2381, label %2368, !dx.controlflow.hints !47

; <label>:2368                                    ; preds = %2360
  %2369 = lshr i32 %2362, 2
  %2370 = mul i32 %85, %2369
  %2371 = add i32 %89, %2370
  %2372 = shl i32 %2371, 2
  %2373 = shl i32 %2362, 3
  %2374 = and i32 %2373, 24
  %2375 = or i32 %2374, %94
  %2376 = shl i32 1, %2375
  %2377 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %2372, i32 undef)  ; BufferLoad(srv,index,wot)
  %2378 = extractvalue %dx.types.ResRet.i32 %2377, 0
  %2379 = and i32 %2378, %2376
  %2380 = icmp ne i32 %2379, 0
  br label %2381

; <label>:2381                                    ; preds = %2368, %2360
  %2382 = phi i1 [ %2380, %2368 ], [ false, %2360 ]
  %2383 = and i1 %2361, %2382
  %2384 = sub i32 %63, %2336
  %2385 = or i32 %2384, %64
  %2386 = icmp slt i32 %2385, 0
  %2387 = icmp sge i32 %2384, %2341
  %2388 = icmp sge i32 %64, %2342
  %2389 = or i1 %2387, %2388
  %2390 = or i1 %2386, %2389
  br i1 %2390, label %2404, label %2391, !dx.controlflow.hints !47

; <label>:2391                                    ; preds = %2381
  %2392 = lshr i32 %2384, 3
  %2393 = add i32 %81, %2392
  %2394 = add i32 %2393, %83
  %2395 = add i32 %2394, %86
  %2396 = shl i32 %2395, 2
  %2397 = and i32 %2384, 7
  %2398 = or i32 %2397, %93
  %2399 = shl i32 1, %2398
  %2400 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %2396, i32 undef)  ; BufferLoad(srv,index,wot)
  %2401 = extractvalue %dx.types.ResRet.i32 %2400, 0
  %2402 = and i32 %2401, %2399
  %2403 = icmp ne i32 %2402, 0
  br label %2404

; <label>:2404                                    ; preds = %2391, %2381
  %2405 = phi i1 [ %2403, %2391 ], [ false, %2381 ]
  %2406 = and i1 %2383, %2405
  %2407 = add i32 %2336, %63
  %2408 = or i32 %2407, %64
  %2409 = icmp slt i32 %2408, 0
  %2410 = icmp sge i32 %2407, %2341
  %2411 = or i1 %2410, %2388
  %2412 = or i1 %2409, %2411
  br i1 %2412, label %2426, label %2413, !dx.controlflow.hints !47

; <label>:2413                                    ; preds = %2404
  %2414 = lshr i32 %2407, 3
  %2415 = add i32 %81, %2414
  %2416 = add i32 %2415, %83
  %2417 = add i32 %2416, %86
  %2418 = shl i32 %2417, 2
  %2419 = and i32 %2407, 7
  %2420 = or i32 %2419, %93
  %2421 = shl i32 1, %2420
  %2422 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %2418, i32 undef)  ; BufferLoad(srv,index,wot)
  %2423 = extractvalue %dx.types.ResRet.i32 %2422, 0
  %2424 = and i32 %2423, %2421
  %2425 = icmp ne i32 %2424, 0
  br label %2426

; <label>:2426                                    ; preds = %2413, %2404
  %2427 = phi i1 [ %2425, %2413 ], [ false, %2404 ]
  %2428 = and i1 %2406, %2427
  %2429 = xor i1 %2428, true
  br label %2430

; <label>:2430                                    ; preds = %2426, %2311
  %2431 = phi i1 [ %2429, %2426 ], [ false, %2311 ]
  %2432 = add nuw nsw i32 %2248, 12
  %2433 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %2432, i32 undef)  ; BufferLoad(srv,index,wot)
  %2434 = extractvalue %dx.types.ResRet.i32 %2433, 0
  %2435 = and i32 %2434, 65535
  %2436 = uitofp i32 %2435 to float
  %2437 = lshr i32 %2434, 16
  %2438 = uitofp i32 %2437 to float
  %2439 = fmul fast float %2436, 0x3EF0002000000000
  %2440 = fmul fast float %2438, 0x3EF0002000000000
  %2441 = add nuw nsw i32 %2248, 8
  %2442 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %2441, i32 undef)  ; BufferLoad(srv,index,wot)
  %2443 = extractvalue %dx.types.ResRet.i32 %2442, 0
  %2444 = and i32 %2443, 65535
  %2445 = uitofp i32 %2444 to float
  %2446 = fmul fast float %2445, 0x3EF0002000000000
  %2447 = lshr i32 %2443, 16
  %2448 = uitofp i32 %2447 to float
  %2449 = fmul fast float %2448, 0x3EF0002000000000
  %2450 = fsub fast float %44, %2446
  %2451 = fdiv fast float %2450, %2439
  %2452 = fsub fast float %45, %2449
  %2453 = fdiv fast float %2452, %2440
  %2454 = extractvalue %dx.types.CBufRet.f32 %2320, 3
  %2455 = fmul fast float %2454, 0x3FA99999A0000000
  %2456 = fadd fast float %2455, %2453
  %2457 = call float @dx.op.unary.f32(i32 22, float %2451)  ; Frc(value)
  %2458 = call float @dx.op.unary.f32(i32 22, float %2456)  ; Frc(value)
  %2459 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %14, float %2457, float %2458, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2460 = extractvalue %dx.types.ResRet.f32 %2459, 1
  %2461 = extractvalue %dx.types.ResRet.f32 %2459, 3
  %2462 = and i32 %2251, 255
  %2463 = uitofp i32 %2462 to float
  %2464 = fmul fast float %2463, 0x4010101020000000
  %2465 = fadd fast float %2464, -5.120000e+02
  %2466 = fmul fast float %2463, 0x4001D0AFC0000000
  %2467 = fadd fast float %2466, 0xC071BEDF00000000
  %2468 = call float @dx.op.unary.f32(i32 22, float %2467)  ; Frc(value)
  %2469 = fmul fast float %2465, %2468
  %2470 = fadd fast float %2469, %2465
  %2471 = fmul fast float %2463, 0x3FF3D290C0000000
  %2472 = fadd fast float %2471, 0xC063BEBE20000000
  %2473 = call float @dx.op.unary.f32(i32 22, float %2472)  ; Frc(value)
  %2474 = fmul fast float %2465, %2473
  %2475 = fadd fast float %2474, %2465
  %2476 = fmul fast float %2470, %2475
  %2477 = call float @dx.op.unary.f32(i32 22, float %2476)  ; Frc(value)
  %2478 = fadd fast float %2453, 1.000000e+00
  %2479 = fmul fast float %2478, 0x401E322D00000000
  %2480 = fmul fast float %2479, %2477
  %2481 = fmul fast float %2454, 0x3FE921FB60000000
  %2482 = fadd fast float %2481, %2480
  %2483 = call float @dx.op.unary.f32(i32 13, float %2482)  ; Sin(value)
  %2484 = uitofp i32 %63 to float
  %2485 = uitofp i32 %64 to float
  %2486 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %2487 = extractvalue %dx.types.CBufRet.f32 %2486, 2
  %2488 = fmul fast float %2487, 0x40165A5B00000000
  %2489 = fadd fast float %2488, %2484
  %2490 = fadd fast float %2488, %2485
  %2491 = extractvalue %dx.types.CBufRet.f32 %2486, 0
  %2492 = fmul fast float %2491, 2.000000e+00
  %2493 = fadd fast float %2492, -1.000000e+00
  %2494 = fmul fast float %2493, %2489
  %2495 = fmul fast float %2493, %2490
  %2496 = call float @dx.op.dot2.f32(i32 54, float %2494, float %2495, float 0x3FB12E2860000000, float 0x3F77E8B200000000)  ; Dot2(ax,ay,bx,by)
  %2497 = call float @dx.op.unary.f32(i32 22, float %2496)  ; Frc(value)
  %2498 = fmul fast float %2497, 0x404A7DD040000000
  %2499 = call float @dx.op.unary.f32(i32 22, float %2498)  ; Frc(value)
  br i1 %2431, label %2500, label %2511, !dx.controlflow.hints !53

; <label>:2500                                    ; preds = %2430
  %2501 = icmp ne i32 %630, 0
  %2502 = fadd fast float %2483, 1.000000e+00
  %2503 = call float @dx.op.unary.f32(i32 23, float %2499)  ; Log(value)
  %2504 = fmul fast float %2503, %2502
  %2505 = call float @dx.op.unary.f32(i32 21, float %2504)  ; Exp(value)
  %2506 = and i1 %108, %2501
  %2507 = uitofp i1 %2506 to float
  %2508 = fmul fast float %2327, %2275
  %2509 = fmul fast float %2508, %2507
  %2510 = fmul fast float %2509, %2505
  br label %5179

; <label>:2511                                    ; preds = %2430
  %2512 = and i32 %628, 262144
  %2513 = fcmp fast ole float %2275, 0.000000e+00
  %2514 = icmp eq i32 %2512, 0
  %2515 = and i1 %108, %2514
  %2516 = or i1 %2513, %2515
  br i1 %2516, label %5179, label %2517, !dx.controlflow.hints !54

; <label>:2517                                    ; preds = %2511
  %2518 = fmul fast float %2454, 0x3FF921FB60000000
  %2519 = fadd fast float %2518, %2480
  %2520 = call float @dx.op.unary.f32(i32 13, float %2519)  ; Sin(value)
  %2521 = fmul fast float %2520, 7.500000e-01
  %2522 = fadd fast float %2521, 1.500000e+00
  %2523 = fmul fast float %2436, 0x3E8999CCE0000000
  %2524 = fmul fast float %2523, %59
  %2525 = fmul fast float %60, 0x3E8999CCE0000000
  %2526 = fmul fast float %2525, %2438
  %2527 = call float @dx.op.binary.f32(i32 35, float %2524, float 5.000000e-01)  ; FMax(a,b)
  %2528 = call float @dx.op.binary.f32(i32 35, float %2526, float 5.000000e-01)  ; FMax(a,b)
  %2529 = fmul fast float %2522, %2527
  %2530 = fmul fast float %2528, %2522
  %2531 = fsub fast float 1.000000e+00, %2460
  %2532 = fadd fast float %2531, %2499
  %2533 = fmul fast float %2532, 5.000000e+00
  %2534 = call float @dx.op.unary.f32(i32 28, float %2529)  ; Round_pi(value)
  %2535 = call float @dx.op.unary.f32(i32 28, float %2530)  ; Round_pi(value)
  %2536 = fptosi float %2534 to i32
  %2537 = fptosi float %2535 to i32
  %2538 = sub i32 %64, %2537
  %2539 = or i32 %2538, %63
  %2540 = icmp slt i32 %2539, 0
  %2541 = fptosi float %59 to i32
  %2542 = fptosi float %60 to i32
  %2543 = icmp sge i32 %63, %2541
  %2544 = icmp sge i32 %2538, %2542
  %2545 = or i1 %2543, %2544
  %2546 = or i1 %2540, %2545
  br i1 %2546, label %2560, label %2547, !dx.controlflow.hints !47

; <label>:2547                                    ; preds = %2517
  %2548 = lshr i32 %2538, 2
  %2549 = mul i32 %85, %2548
  %2550 = add i32 %89, %2549
  %2551 = shl i32 %2550, 2
  %2552 = shl i32 %2538, 3
  %2553 = and i32 %2552, 24
  %2554 = or i32 %2553, %94
  %2555 = shl i32 1, %2554
  %2556 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %2551, i32 undef)  ; BufferLoad(srv,index,wot)
  %2557 = extractvalue %dx.types.ResRet.i32 %2556, 0
  %2558 = and i32 %2557, %2555
  %2559 = icmp ne i32 %2558, 0
  br label %2560

; <label>:2560                                    ; preds = %2547, %2517
  %2561 = phi i1 [ %2559, %2547 ], [ false, %2517 ]
  %2562 = xor i1 %2561, true
  %2563 = uitofp i1 %2562 to float
  %2564 = fadd fast float %2563, %2533
  %2565 = add i32 %2537, %64
  %2566 = or i32 %2565, %63
  %2567 = icmp slt i32 %2566, 0
  %2568 = icmp sge i32 %2565, %2542
  %2569 = or i1 %2543, %2568
  %2570 = or i1 %2567, %2569
  br i1 %2570, label %2584, label %2571, !dx.controlflow.hints !47

; <label>:2571                                    ; preds = %2560
  %2572 = lshr i32 %2565, 2
  %2573 = mul i32 %85, %2572
  %2574 = add i32 %89, %2573
  %2575 = shl i32 %2574, 2
  %2576 = shl i32 %2565, 3
  %2577 = and i32 %2576, 24
  %2578 = or i32 %2577, %94
  %2579 = shl i32 1, %2578
  %2580 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %2575, i32 undef)  ; BufferLoad(srv,index,wot)
  %2581 = extractvalue %dx.types.ResRet.i32 %2580, 0
  %2582 = and i32 %2581, %2579
  %2583 = icmp ne i32 %2582, 0
  br label %2584

; <label>:2584                                    ; preds = %2571, %2560
  %2585 = phi i1 [ %2583, %2571 ], [ false, %2560 ]
  %2586 = xor i1 %2585, true
  %2587 = uitofp i1 %2586 to float
  %2588 = fadd fast float %2564, %2587
  %2589 = sub i32 %63, %2536
  %2590 = or i32 %2589, %64
  %2591 = icmp slt i32 %2590, 0
  %2592 = icmp sge i32 %2589, %2541
  %2593 = icmp sge i32 %64, %2542
  %2594 = or i1 %2592, %2593
  %2595 = or i1 %2591, %2594
  br i1 %2595, label %2609, label %2596, !dx.controlflow.hints !47

; <label>:2596                                    ; preds = %2584
  %2597 = lshr i32 %2589, 3
  %2598 = add i32 %81, %2597
  %2599 = add i32 %2598, %83
  %2600 = add i32 %2599, %86
  %2601 = shl i32 %2600, 2
  %2602 = and i32 %2589, 7
  %2603 = or i32 %2602, %93
  %2604 = shl i32 1, %2603
  %2605 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %2601, i32 undef)  ; BufferLoad(srv,index,wot)
  %2606 = extractvalue %dx.types.ResRet.i32 %2605, 0
  %2607 = and i32 %2606, %2604
  %2608 = icmp ne i32 %2607, 0
  br label %2609

; <label>:2609                                    ; preds = %2596, %2584
  %2610 = phi i1 [ %2608, %2596 ], [ false, %2584 ]
  %2611 = xor i1 %2610, true
  %2612 = uitofp i1 %2611 to float
  %2613 = fadd fast float %2588, %2612
  %2614 = add i32 %2536, %63
  %2615 = or i32 %2614, %64
  %2616 = icmp slt i32 %2615, 0
  %2617 = icmp sge i32 %2614, %2541
  %2618 = or i1 %2617, %2593
  %2619 = or i1 %2616, %2618
  br i1 %2619, label %2633, label %2620, !dx.controlflow.hints !47

; <label>:2620                                    ; preds = %2609
  %2621 = lshr i32 %2614, 3
  %2622 = add i32 %81, %2621
  %2623 = add i32 %2622, %83
  %2624 = add i32 %2623, %86
  %2625 = shl i32 %2624, 2
  %2626 = and i32 %2614, 7
  %2627 = or i32 %2626, %93
  %2628 = shl i32 1, %2627
  %2629 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %2625, i32 undef)  ; BufferLoad(srv,index,wot)
  %2630 = extractvalue %dx.types.ResRet.i32 %2629, 0
  %2631 = and i32 %2630, %2628
  %2632 = icmp ne i32 %2631, 0
  br label %2633

; <label>:2633                                    ; preds = %2620, %2609
  %2634 = phi i1 [ %2632, %2620 ], [ false, %2609 ]
  %2635 = xor i1 %2634, true
  %2636 = uitofp i1 %2635 to float
  %2637 = fadd fast float %2613, %2636
  %2638 = or i32 %2538, %2589
  %2639 = icmp slt i32 %2638, 0
  %2640 = or i1 %2592, %2544
  %2641 = or i1 %2639, %2640
  br i1 %2641, label %2659, label %2642, !dx.controlflow.hints !47

; <label>:2642                                    ; preds = %2633
  %2643 = lshr i32 %2538, 2
  %2644 = mul i32 %85, %2643
  %2645 = lshr i32 %2589, 3
  %2646 = add i32 %81, %2645
  %2647 = add i32 %2646, %83
  %2648 = add i32 %2647, %2644
  %2649 = shl i32 %2648, 2
  %2650 = shl i32 %2538, 3
  %2651 = and i32 %2650, 24
  %2652 = and i32 %2589, 7
  %2653 = or i32 %2651, %2652
  %2654 = shl i32 1, %2653
  %2655 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %2649, i32 undef)  ; BufferLoad(srv,index,wot)
  %2656 = extractvalue %dx.types.ResRet.i32 %2655, 0
  %2657 = and i32 %2656, %2654
  %2658 = icmp ne i32 %2657, 0
  br label %2659

; <label>:2659                                    ; preds = %2642, %2633
  %2660 = phi i1 [ %2658, %2642 ], [ false, %2633 ]
  %2661 = xor i1 %2660, true
  %2662 = uitofp i1 %2661 to float
  %2663 = fadd fast float %2637, %2662
  %2664 = or i32 %2538, %2614
  %2665 = icmp slt i32 %2664, 0
  %2666 = or i1 %2617, %2544
  %2667 = or i1 %2665, %2666
  br i1 %2667, label %2685, label %2668, !dx.controlflow.hints !47

; <label>:2668                                    ; preds = %2659
  %2669 = lshr i32 %2538, 2
  %2670 = mul i32 %85, %2669
  %2671 = lshr i32 %2614, 3
  %2672 = add i32 %81, %2671
  %2673 = add i32 %2672, %83
  %2674 = add i32 %2673, %2670
  %2675 = shl i32 %2674, 2
  %2676 = shl i32 %2538, 3
  %2677 = and i32 %2676, 24
  %2678 = and i32 %2614, 7
  %2679 = or i32 %2677, %2678
  %2680 = shl i32 1, %2679
  %2681 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %2675, i32 undef)  ; BufferLoad(srv,index,wot)
  %2682 = extractvalue %dx.types.ResRet.i32 %2681, 0
  %2683 = and i32 %2682, %2680
  %2684 = icmp ne i32 %2683, 0
  br label %2685

; <label>:2685                                    ; preds = %2668, %2659
  %2686 = phi i1 [ %2684, %2668 ], [ false, %2659 ]
  %2687 = xor i1 %2686, true
  %2688 = uitofp i1 %2687 to float
  %2689 = fadd fast float %2663, %2688
  %2690 = or i32 %2565, %2589
  %2691 = icmp slt i32 %2690, 0
  %2692 = or i1 %2592, %2568
  %2693 = or i1 %2691, %2692
  br i1 %2693, label %2711, label %2694, !dx.controlflow.hints !47

; <label>:2694                                    ; preds = %2685
  %2695 = lshr i32 %2565, 2
  %2696 = mul i32 %85, %2695
  %2697 = lshr i32 %2589, 3
  %2698 = add i32 %81, %2697
  %2699 = add i32 %2698, %83
  %2700 = add i32 %2699, %2696
  %2701 = shl i32 %2700, 2
  %2702 = shl i32 %2565, 3
  %2703 = and i32 %2702, 24
  %2704 = and i32 %2589, 7
  %2705 = or i32 %2703, %2704
  %2706 = shl i32 1, %2705
  %2707 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %2701, i32 undef)  ; BufferLoad(srv,index,wot)
  %2708 = extractvalue %dx.types.ResRet.i32 %2707, 0
  %2709 = and i32 %2708, %2706
  %2710 = icmp ne i32 %2709, 0
  br label %2711

; <label>:2711                                    ; preds = %2694, %2685
  %2712 = phi i1 [ %2710, %2694 ], [ false, %2685 ]
  %2713 = xor i1 %2712, true
  %2714 = uitofp i1 %2713 to float
  %2715 = fadd fast float %2689, %2714
  %2716 = or i32 %2565, %2614
  %2717 = icmp slt i32 %2716, 0
  %2718 = or i1 %2617, %2568
  %2719 = or i1 %2717, %2718
  br i1 %2719, label %2737, label %2720, !dx.controlflow.hints !47

; <label>:2720                                    ; preds = %2711
  %2721 = lshr i32 %2565, 2
  %2722 = mul i32 %85, %2721
  %2723 = lshr i32 %2614, 3
  %2724 = add i32 %81, %2723
  %2725 = add i32 %2724, %83
  %2726 = add i32 %2725, %2722
  %2727 = shl i32 %2726, 2
  %2728 = shl i32 %2565, 3
  %2729 = and i32 %2728, 24
  %2730 = and i32 %2614, 7
  %2731 = or i32 %2729, %2730
  %2732 = shl i32 1, %2731
  %2733 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %2727, i32 undef)  ; BufferLoad(srv,index,wot)
  %2734 = extractvalue %dx.types.ResRet.i32 %2733, 0
  %2735 = and i32 %2734, %2732
  %2736 = icmp ne i32 %2735, 0
  br label %2737

; <label>:2737                                    ; preds = %2720, %2711
  %2738 = phi i1 [ %2736, %2720 ], [ false, %2711 ]
  %2739 = xor i1 %2738, true
  %2740 = uitofp i1 %2739 to float
  %2741 = fadd fast float %2715, %2740
  %2742 = fmul fast float %2529, 2.000000e+00
  %2743 = fmul fast float %2530, 2.000000e+00
  %2744 = call float @dx.op.unary.f32(i32 28, float %2742)  ; Round_pi(value)
  %2745 = call float @dx.op.unary.f32(i32 28, float %2743)  ; Round_pi(value)
  %2746 = fptosi float %2744 to i32
  %2747 = fptosi float %2745 to i32
  %2748 = sub i32 %64, %2747
  %2749 = or i32 %2748, %63
  %2750 = icmp slt i32 %2749, 0
  %2751 = icmp sge i32 %2748, %2542
  %2752 = or i1 %2543, %2751
  %2753 = or i1 %2750, %2752
  br i1 %2753, label %2767, label %2754, !dx.controlflow.hints !47

; <label>:2754                                    ; preds = %2737
  %2755 = lshr i32 %2748, 2
  %2756 = mul i32 %85, %2755
  %2757 = add i32 %89, %2756
  %2758 = shl i32 %2757, 2
  %2759 = shl i32 %2748, 3
  %2760 = and i32 %2759, 24
  %2761 = or i32 %2760, %94
  %2762 = shl i32 1, %2761
  %2763 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %2758, i32 undef)  ; BufferLoad(srv,index,wot)
  %2764 = extractvalue %dx.types.ResRet.i32 %2763, 0
  %2765 = and i32 %2764, %2762
  %2766 = icmp ne i32 %2765, 0
  br label %2767

; <label>:2767                                    ; preds = %2754, %2737
  %2768 = phi i1 [ %2766, %2754 ], [ false, %2737 ]
  %2769 = xor i1 %2768, true
  %2770 = uitofp i1 %2769 to float
  %2771 = fadd fast float %2741, %2770
  %2772 = add i32 %2747, %64
  %2773 = or i32 %2772, %63
  %2774 = icmp slt i32 %2773, 0
  %2775 = icmp sge i32 %2772, %2542
  %2776 = or i1 %2543, %2775
  %2777 = or i1 %2774, %2776
  br i1 %2777, label %2791, label %2778, !dx.controlflow.hints !47

; <label>:2778                                    ; preds = %2767
  %2779 = lshr i32 %2772, 2
  %2780 = mul i32 %85, %2779
  %2781 = add i32 %89, %2780
  %2782 = shl i32 %2781, 2
  %2783 = shl i32 %2772, 3
  %2784 = and i32 %2783, 24
  %2785 = or i32 %2784, %94
  %2786 = shl i32 1, %2785
  %2787 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %2782, i32 undef)  ; BufferLoad(srv,index,wot)
  %2788 = extractvalue %dx.types.ResRet.i32 %2787, 0
  %2789 = and i32 %2788, %2786
  %2790 = icmp ne i32 %2789, 0
  br label %2791

; <label>:2791                                    ; preds = %2778, %2767
  %2792 = phi i1 [ %2790, %2778 ], [ false, %2767 ]
  %2793 = xor i1 %2792, true
  %2794 = uitofp i1 %2793 to float
  %2795 = fadd fast float %2771, %2794
  %2796 = sub i32 %63, %2746
  %2797 = or i32 %2796, %64
  %2798 = icmp slt i32 %2797, 0
  %2799 = icmp sge i32 %2796, %2541
  %2800 = or i1 %2799, %2593
  %2801 = or i1 %2798, %2800
  br i1 %2801, label %2815, label %2802, !dx.controlflow.hints !47

; <label>:2802                                    ; preds = %2791
  %2803 = lshr i32 %2796, 3
  %2804 = add i32 %81, %2803
  %2805 = add i32 %2804, %83
  %2806 = add i32 %2805, %86
  %2807 = shl i32 %2806, 2
  %2808 = and i32 %2796, 7
  %2809 = or i32 %2808, %93
  %2810 = shl i32 1, %2809
  %2811 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %2807, i32 undef)  ; BufferLoad(srv,index,wot)
  %2812 = extractvalue %dx.types.ResRet.i32 %2811, 0
  %2813 = and i32 %2812, %2810
  %2814 = icmp ne i32 %2813, 0
  br label %2815

; <label>:2815                                    ; preds = %2802, %2791
  %2816 = phi i1 [ %2814, %2802 ], [ false, %2791 ]
  %2817 = xor i1 %2816, true
  %2818 = uitofp i1 %2817 to float
  %2819 = fadd fast float %2795, %2818
  %2820 = add i32 %2746, %63
  %2821 = or i32 %2820, %64
  %2822 = icmp slt i32 %2821, 0
  %2823 = icmp sge i32 %2820, %2541
  %2824 = or i1 %2823, %2593
  %2825 = or i1 %2822, %2824
  br i1 %2825, label %2839, label %2826, !dx.controlflow.hints !47

; <label>:2826                                    ; preds = %2815
  %2827 = lshr i32 %2820, 3
  %2828 = add i32 %81, %2827
  %2829 = add i32 %2828, %83
  %2830 = add i32 %2829, %86
  %2831 = shl i32 %2830, 2
  %2832 = and i32 %2820, 7
  %2833 = or i32 %2832, %93
  %2834 = shl i32 1, %2833
  %2835 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %2831, i32 undef)  ; BufferLoad(srv,index,wot)
  %2836 = extractvalue %dx.types.ResRet.i32 %2835, 0
  %2837 = and i32 %2836, %2834
  %2838 = icmp ne i32 %2837, 0
  br label %2839

; <label>:2839                                    ; preds = %2826, %2815
  %2840 = phi i1 [ %2838, %2826 ], [ false, %2815 ]
  %2841 = xor i1 %2840, true
  %2842 = uitofp i1 %2841 to float
  %2843 = fadd fast float %2819, %2842
  %2844 = or i32 %2748, %2796
  %2845 = icmp slt i32 %2844, 0
  %2846 = or i1 %2799, %2751
  %2847 = or i1 %2845, %2846
  br i1 %2847, label %2865, label %2848, !dx.controlflow.hints !47

; <label>:2848                                    ; preds = %2839
  %2849 = lshr i32 %2748, 2
  %2850 = mul i32 %85, %2849
  %2851 = lshr i32 %2796, 3
  %2852 = add i32 %81, %2851
  %2853 = add i32 %2852, %83
  %2854 = add i32 %2853, %2850
  %2855 = shl i32 %2854, 2
  %2856 = shl i32 %2748, 3
  %2857 = and i32 %2856, 24
  %2858 = and i32 %2796, 7
  %2859 = or i32 %2857, %2858
  %2860 = shl i32 1, %2859
  %2861 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %2855, i32 undef)  ; BufferLoad(srv,index,wot)
  %2862 = extractvalue %dx.types.ResRet.i32 %2861, 0
  %2863 = and i32 %2862, %2860
  %2864 = icmp ne i32 %2863, 0
  br label %2865

; <label>:2865                                    ; preds = %2848, %2839
  %2866 = phi i1 [ %2864, %2848 ], [ false, %2839 ]
  %2867 = xor i1 %2866, true
  %2868 = uitofp i1 %2867 to float
  %2869 = fadd fast float %2843, %2868
  %2870 = or i32 %2748, %2820
  %2871 = icmp slt i32 %2870, 0
  %2872 = or i1 %2823, %2751
  %2873 = or i1 %2871, %2872
  br i1 %2873, label %2891, label %2874, !dx.controlflow.hints !47

; <label>:2874                                    ; preds = %2865
  %2875 = lshr i32 %2748, 2
  %2876 = mul i32 %85, %2875
  %2877 = lshr i32 %2820, 3
  %2878 = add i32 %81, %2877
  %2879 = add i32 %2878, %83
  %2880 = add i32 %2879, %2876
  %2881 = shl i32 %2880, 2
  %2882 = shl i32 %2748, 3
  %2883 = and i32 %2882, 24
  %2884 = and i32 %2820, 7
  %2885 = or i32 %2883, %2884
  %2886 = shl i32 1, %2885
  %2887 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %2881, i32 undef)  ; BufferLoad(srv,index,wot)
  %2888 = extractvalue %dx.types.ResRet.i32 %2887, 0
  %2889 = and i32 %2888, %2886
  %2890 = icmp ne i32 %2889, 0
  br label %2891

; <label>:2891                                    ; preds = %2874, %2865
  %2892 = phi i1 [ %2890, %2874 ], [ false, %2865 ]
  %2893 = xor i1 %2892, true
  %2894 = uitofp i1 %2893 to float
  %2895 = fadd fast float %2869, %2894
  %2896 = or i32 %2772, %2796
  %2897 = icmp slt i32 %2896, 0
  %2898 = or i1 %2799, %2775
  %2899 = or i1 %2897, %2898
  br i1 %2899, label %2917, label %2900, !dx.controlflow.hints !47

; <label>:2900                                    ; preds = %2891
  %2901 = lshr i32 %2772, 2
  %2902 = mul i32 %85, %2901
  %2903 = lshr i32 %2796, 3
  %2904 = add i32 %81, %2903
  %2905 = add i32 %2904, %83
  %2906 = add i32 %2905, %2902
  %2907 = shl i32 %2906, 2
  %2908 = shl i32 %2772, 3
  %2909 = and i32 %2908, 24
  %2910 = and i32 %2796, 7
  %2911 = or i32 %2909, %2910
  %2912 = shl i32 1, %2911
  %2913 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %2907, i32 undef)  ; BufferLoad(srv,index,wot)
  %2914 = extractvalue %dx.types.ResRet.i32 %2913, 0
  %2915 = and i32 %2914, %2912
  %2916 = icmp ne i32 %2915, 0
  br label %2917

; <label>:2917                                    ; preds = %2900, %2891
  %2918 = phi i1 [ %2916, %2900 ], [ false, %2891 ]
  %2919 = xor i1 %2918, true
  %2920 = uitofp i1 %2919 to float
  %2921 = fadd fast float %2895, %2920
  %2922 = or i32 %2772, %2820
  %2923 = icmp slt i32 %2922, 0
  %2924 = or i1 %2823, %2775
  %2925 = or i1 %2923, %2924
  br i1 %2925, label %2943, label %2926, !dx.controlflow.hints !47

; <label>:2926                                    ; preds = %2917
  %2927 = lshr i32 %2772, 2
  %2928 = mul i32 %85, %2927
  %2929 = lshr i32 %2820, 3
  %2930 = add i32 %81, %2929
  %2931 = add i32 %2930, %83
  %2932 = add i32 %2931, %2928
  %2933 = shl i32 %2932, 2
  %2934 = shl i32 %2772, 3
  %2935 = and i32 %2934, 24
  %2936 = and i32 %2820, 7
  %2937 = or i32 %2935, %2936
  %2938 = shl i32 1, %2937
  %2939 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %2933, i32 undef)  ; BufferLoad(srv,index,wot)
  %2940 = extractvalue %dx.types.ResRet.i32 %2939, 0
  %2941 = and i32 %2940, %2938
  %2942 = icmp ne i32 %2941, 0
  br label %2943

; <label>:2943                                    ; preds = %2926, %2917
  %2944 = phi i1 [ %2942, %2926 ], [ false, %2917 ]
  %2945 = xor i1 %2944, true
  %2946 = uitofp i1 %2945 to float
  %2947 = fadd fast float %2921, %2946
  %2948 = fmul fast float %2529, 3.000000e+00
  %2949 = fmul fast float %2530, 3.000000e+00
  %2950 = call float @dx.op.unary.f32(i32 28, float %2948)  ; Round_pi(value)
  %2951 = call float @dx.op.unary.f32(i32 28, float %2949)  ; Round_pi(value)
  %2952 = fptosi float %2950 to i32
  %2953 = fptosi float %2951 to i32
  %2954 = sub i32 %64, %2953
  %2955 = or i32 %2954, %63
  %2956 = icmp slt i32 %2955, 0
  %2957 = icmp sge i32 %2954, %2542
  %2958 = or i1 %2543, %2957
  %2959 = or i1 %2956, %2958
  br i1 %2959, label %2973, label %2960, !dx.controlflow.hints !47

; <label>:2960                                    ; preds = %2943
  %2961 = lshr i32 %2954, 2
  %2962 = mul i32 %85, %2961
  %2963 = add i32 %89, %2962
  %2964 = shl i32 %2963, 2
  %2965 = shl i32 %2954, 3
  %2966 = and i32 %2965, 24
  %2967 = or i32 %2966, %94
  %2968 = shl i32 1, %2967
  %2969 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %2964, i32 undef)  ; BufferLoad(srv,index,wot)
  %2970 = extractvalue %dx.types.ResRet.i32 %2969, 0
  %2971 = and i32 %2970, %2968
  %2972 = icmp ne i32 %2971, 0
  br label %2973

; <label>:2973                                    ; preds = %2960, %2943
  %2974 = phi i1 [ %2972, %2960 ], [ false, %2943 ]
  %2975 = xor i1 %2974, true
  %2976 = uitofp i1 %2975 to float
  %2977 = fadd fast float %2947, %2976
  %2978 = add i32 %2953, %64
  %2979 = or i32 %2978, %63
  %2980 = icmp slt i32 %2979, 0
  %2981 = icmp sge i32 %2978, %2542
  %2982 = or i1 %2543, %2981
  %2983 = or i1 %2980, %2982
  br i1 %2983, label %2997, label %2984, !dx.controlflow.hints !47

; <label>:2984                                    ; preds = %2973
  %2985 = lshr i32 %2978, 2
  %2986 = mul i32 %85, %2985
  %2987 = add i32 %89, %2986
  %2988 = shl i32 %2987, 2
  %2989 = shl i32 %2978, 3
  %2990 = and i32 %2989, 24
  %2991 = or i32 %2990, %94
  %2992 = shl i32 1, %2991
  %2993 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %2988, i32 undef)  ; BufferLoad(srv,index,wot)
  %2994 = extractvalue %dx.types.ResRet.i32 %2993, 0
  %2995 = and i32 %2994, %2992
  %2996 = icmp ne i32 %2995, 0
  br label %2997

; <label>:2997                                    ; preds = %2984, %2973
  %2998 = phi i1 [ %2996, %2984 ], [ false, %2973 ]
  %2999 = xor i1 %2998, true
  %3000 = uitofp i1 %2999 to float
  %3001 = fadd fast float %2977, %3000
  %3002 = sub i32 %63, %2952
  %3003 = or i32 %3002, %64
  %3004 = icmp slt i32 %3003, 0
  %3005 = icmp sge i32 %3002, %2541
  %3006 = or i1 %3005, %2593
  %3007 = or i1 %3004, %3006
  br i1 %3007, label %3021, label %3008, !dx.controlflow.hints !47

; <label>:3008                                    ; preds = %2997
  %3009 = lshr i32 %3002, 3
  %3010 = add i32 %81, %3009
  %3011 = add i32 %3010, %83
  %3012 = add i32 %3011, %86
  %3013 = shl i32 %3012, 2
  %3014 = and i32 %3002, 7
  %3015 = or i32 %3014, %93
  %3016 = shl i32 1, %3015
  %3017 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %3013, i32 undef)  ; BufferLoad(srv,index,wot)
  %3018 = extractvalue %dx.types.ResRet.i32 %3017, 0
  %3019 = and i32 %3018, %3016
  %3020 = icmp ne i32 %3019, 0
  br label %3021

; <label>:3021                                    ; preds = %3008, %2997
  %3022 = phi i1 [ %3020, %3008 ], [ false, %2997 ]
  %3023 = xor i1 %3022, true
  %3024 = uitofp i1 %3023 to float
  %3025 = fadd fast float %3001, %3024
  %3026 = add i32 %2952, %63
  %3027 = or i32 %3026, %64
  %3028 = icmp slt i32 %3027, 0
  %3029 = icmp sge i32 %3026, %2541
  %3030 = or i1 %3029, %2593
  %3031 = or i1 %3028, %3030
  br i1 %3031, label %3045, label %3032, !dx.controlflow.hints !47

; <label>:3032                                    ; preds = %3021
  %3033 = lshr i32 %3026, 3
  %3034 = add i32 %81, %3033
  %3035 = add i32 %3034, %83
  %3036 = add i32 %3035, %86
  %3037 = shl i32 %3036, 2
  %3038 = and i32 %3026, 7
  %3039 = or i32 %3038, %93
  %3040 = shl i32 1, %3039
  %3041 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %3037, i32 undef)  ; BufferLoad(srv,index,wot)
  %3042 = extractvalue %dx.types.ResRet.i32 %3041, 0
  %3043 = and i32 %3042, %3040
  %3044 = icmp ne i32 %3043, 0
  br label %3045

; <label>:3045                                    ; preds = %3032, %3021
  %3046 = phi i1 [ %3044, %3032 ], [ false, %3021 ]
  %3047 = xor i1 %3046, true
  %3048 = uitofp i1 %3047 to float
  %3049 = fadd fast float %3025, %3048
  %3050 = or i32 %2954, %3002
  %3051 = icmp slt i32 %3050, 0
  %3052 = or i1 %3005, %2957
  %3053 = or i1 %3051, %3052
  br i1 %3053, label %3071, label %3054, !dx.controlflow.hints !47

; <label>:3054                                    ; preds = %3045
  %3055 = lshr i32 %2954, 2
  %3056 = mul i32 %85, %3055
  %3057 = lshr i32 %3002, 3
  %3058 = add i32 %81, %3057
  %3059 = add i32 %3058, %83
  %3060 = add i32 %3059, %3056
  %3061 = shl i32 %3060, 2
  %3062 = shl i32 %2954, 3
  %3063 = and i32 %3062, 24
  %3064 = and i32 %3002, 7
  %3065 = or i32 %3063, %3064
  %3066 = shl i32 1, %3065
  %3067 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %3061, i32 undef)  ; BufferLoad(srv,index,wot)
  %3068 = extractvalue %dx.types.ResRet.i32 %3067, 0
  %3069 = and i32 %3068, %3066
  %3070 = icmp ne i32 %3069, 0
  br label %3071

; <label>:3071                                    ; preds = %3054, %3045
  %3072 = phi i1 [ %3070, %3054 ], [ false, %3045 ]
  %3073 = xor i1 %3072, true
  %3074 = uitofp i1 %3073 to float
  %3075 = fadd fast float %3049, %3074
  %3076 = or i32 %2954, %3026
  %3077 = icmp slt i32 %3076, 0
  %3078 = or i1 %3029, %2957
  %3079 = or i1 %3077, %3078
  br i1 %3079, label %3097, label %3080, !dx.controlflow.hints !47

; <label>:3080                                    ; preds = %3071
  %3081 = lshr i32 %2954, 2
  %3082 = mul i32 %85, %3081
  %3083 = lshr i32 %3026, 3
  %3084 = add i32 %81, %3083
  %3085 = add i32 %3084, %83
  %3086 = add i32 %3085, %3082
  %3087 = shl i32 %3086, 2
  %3088 = shl i32 %2954, 3
  %3089 = and i32 %3088, 24
  %3090 = and i32 %3026, 7
  %3091 = or i32 %3089, %3090
  %3092 = shl i32 1, %3091
  %3093 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %3087, i32 undef)  ; BufferLoad(srv,index,wot)
  %3094 = extractvalue %dx.types.ResRet.i32 %3093, 0
  %3095 = and i32 %3094, %3092
  %3096 = icmp ne i32 %3095, 0
  br label %3097

; <label>:3097                                    ; preds = %3080, %3071
  %3098 = phi i1 [ %3096, %3080 ], [ false, %3071 ]
  %3099 = xor i1 %3098, true
  %3100 = uitofp i1 %3099 to float
  %3101 = fadd fast float %3075, %3100
  %3102 = or i32 %2978, %3002
  %3103 = icmp slt i32 %3102, 0
  %3104 = or i1 %3005, %2981
  %3105 = or i1 %3103, %3104
  br i1 %3105, label %3123, label %3106, !dx.controlflow.hints !47

; <label>:3106                                    ; preds = %3097
  %3107 = lshr i32 %2978, 2
  %3108 = mul i32 %85, %3107
  %3109 = lshr i32 %3002, 3
  %3110 = add i32 %81, %3109
  %3111 = add i32 %3110, %83
  %3112 = add i32 %3111, %3108
  %3113 = shl i32 %3112, 2
  %3114 = shl i32 %2978, 3
  %3115 = and i32 %3114, 24
  %3116 = and i32 %3002, 7
  %3117 = or i32 %3115, %3116
  %3118 = shl i32 1, %3117
  %3119 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %3113, i32 undef)  ; BufferLoad(srv,index,wot)
  %3120 = extractvalue %dx.types.ResRet.i32 %3119, 0
  %3121 = and i32 %3120, %3118
  %3122 = icmp ne i32 %3121, 0
  br label %3123

; <label>:3123                                    ; preds = %3106, %3097
  %3124 = phi i1 [ %3122, %3106 ], [ false, %3097 ]
  %3125 = xor i1 %3124, true
  %3126 = uitofp i1 %3125 to float
  %3127 = fadd fast float %3101, %3126
  %3128 = or i32 %2978, %3026
  %3129 = icmp slt i32 %3128, 0
  %3130 = or i1 %3029, %2981
  %3131 = or i1 %3129, %3130
  br i1 %3131, label %3149, label %3132, !dx.controlflow.hints !47

; <label>:3132                                    ; preds = %3123
  %3133 = lshr i32 %2978, 2
  %3134 = mul i32 %85, %3133
  %3135 = lshr i32 %3026, 3
  %3136 = add i32 %81, %3135
  %3137 = add i32 %3136, %83
  %3138 = add i32 %3137, %3134
  %3139 = shl i32 %3138, 2
  %3140 = shl i32 %2978, 3
  %3141 = and i32 %3140, 24
  %3142 = and i32 %3026, 7
  %3143 = or i32 %3141, %3142
  %3144 = shl i32 1, %3143
  %3145 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %3139, i32 undef)  ; BufferLoad(srv,index,wot)
  %3146 = extractvalue %dx.types.ResRet.i32 %3145, 0
  %3147 = and i32 %3146, %3144
  %3148 = icmp ne i32 %3147, 0
  br label %3149

; <label>:3149                                    ; preds = %3132, %3123
  %3150 = phi i1 [ %3148, %3132 ], [ false, %3123 ]
  %3151 = xor i1 %3150, true
  %3152 = uitofp i1 %3151 to float
  %3153 = fadd fast float %3127, %3152
  %3154 = fmul fast float %2529, 4.000000e+00
  %3155 = fmul fast float %2530, 4.000000e+00
  %3156 = call float @dx.op.unary.f32(i32 28, float %3154)  ; Round_pi(value)
  %3157 = call float @dx.op.unary.f32(i32 28, float %3155)  ; Round_pi(value)
  %3158 = fptosi float %3156 to i32
  %3159 = fptosi float %3157 to i32
  %3160 = sub i32 %64, %3159
  %3161 = or i32 %3160, %63
  %3162 = icmp slt i32 %3161, 0
  %3163 = icmp sge i32 %3160, %2542
  %3164 = or i1 %2543, %3163
  %3165 = or i1 %3162, %3164
  br i1 %3165, label %3179, label %3166, !dx.controlflow.hints !47

; <label>:3166                                    ; preds = %3149
  %3167 = lshr i32 %3160, 2
  %3168 = mul i32 %85, %3167
  %3169 = add i32 %89, %3168
  %3170 = shl i32 %3169, 2
  %3171 = shl i32 %3160, 3
  %3172 = and i32 %3171, 24
  %3173 = or i32 %3172, %94
  %3174 = shl i32 1, %3173
  %3175 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %3170, i32 undef)  ; BufferLoad(srv,index,wot)
  %3176 = extractvalue %dx.types.ResRet.i32 %3175, 0
  %3177 = and i32 %3176, %3174
  %3178 = icmp ne i32 %3177, 0
  br label %3179

; <label>:3179                                    ; preds = %3166, %3149
  %3180 = phi i1 [ %3178, %3166 ], [ false, %3149 ]
  %3181 = xor i1 %3180, true
  %3182 = uitofp i1 %3181 to float
  %3183 = fadd fast float %3153, %3182
  %3184 = add i32 %3159, %64
  %3185 = or i32 %3184, %63
  %3186 = icmp slt i32 %3185, 0
  %3187 = icmp sge i32 %3184, %2542
  %3188 = or i1 %2543, %3187
  %3189 = or i1 %3186, %3188
  br i1 %3189, label %3203, label %3190, !dx.controlflow.hints !47

; <label>:3190                                    ; preds = %3179
  %3191 = lshr i32 %3184, 2
  %3192 = mul i32 %85, %3191
  %3193 = add i32 %89, %3192
  %3194 = shl i32 %3193, 2
  %3195 = shl i32 %3184, 3
  %3196 = and i32 %3195, 24
  %3197 = or i32 %3196, %94
  %3198 = shl i32 1, %3197
  %3199 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %3194, i32 undef)  ; BufferLoad(srv,index,wot)
  %3200 = extractvalue %dx.types.ResRet.i32 %3199, 0
  %3201 = and i32 %3200, %3198
  %3202 = icmp ne i32 %3201, 0
  br label %3203

; <label>:3203                                    ; preds = %3190, %3179
  %3204 = phi i1 [ %3202, %3190 ], [ false, %3179 ]
  %3205 = xor i1 %3204, true
  %3206 = uitofp i1 %3205 to float
  %3207 = fadd fast float %3183, %3206
  %3208 = sub i32 %63, %3158
  %3209 = or i32 %3208, %64
  %3210 = icmp slt i32 %3209, 0
  %3211 = icmp sge i32 %3208, %2541
  %3212 = or i1 %3211, %2593
  %3213 = or i1 %3210, %3212
  br i1 %3213, label %3227, label %3214, !dx.controlflow.hints !47

; <label>:3214                                    ; preds = %3203
  %3215 = lshr i32 %3208, 3
  %3216 = add i32 %81, %3215
  %3217 = add i32 %3216, %83
  %3218 = add i32 %3217, %86
  %3219 = shl i32 %3218, 2
  %3220 = and i32 %3208, 7
  %3221 = or i32 %3220, %93
  %3222 = shl i32 1, %3221
  %3223 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %3219, i32 undef)  ; BufferLoad(srv,index,wot)
  %3224 = extractvalue %dx.types.ResRet.i32 %3223, 0
  %3225 = and i32 %3224, %3222
  %3226 = icmp ne i32 %3225, 0
  br label %3227

; <label>:3227                                    ; preds = %3214, %3203
  %3228 = phi i1 [ %3226, %3214 ], [ false, %3203 ]
  %3229 = xor i1 %3228, true
  %3230 = uitofp i1 %3229 to float
  %3231 = fadd fast float %3207, %3230
  %3232 = add i32 %3158, %63
  %3233 = or i32 %3232, %64
  %3234 = icmp slt i32 %3233, 0
  %3235 = icmp sge i32 %3232, %2541
  %3236 = or i1 %3235, %2593
  %3237 = or i1 %3234, %3236
  br i1 %3237, label %3251, label %3238, !dx.controlflow.hints !47

; <label>:3238                                    ; preds = %3227
  %3239 = lshr i32 %3232, 3
  %3240 = add i32 %81, %3239
  %3241 = add i32 %3240, %83
  %3242 = add i32 %3241, %86
  %3243 = shl i32 %3242, 2
  %3244 = and i32 %3232, 7
  %3245 = or i32 %3244, %93
  %3246 = shl i32 1, %3245
  %3247 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %3243, i32 undef)  ; BufferLoad(srv,index,wot)
  %3248 = extractvalue %dx.types.ResRet.i32 %3247, 0
  %3249 = and i32 %3248, %3246
  %3250 = icmp ne i32 %3249, 0
  br label %3251

; <label>:3251                                    ; preds = %3238, %3227
  %3252 = phi i1 [ %3250, %3238 ], [ false, %3227 ]
  %3253 = xor i1 %3252, true
  %3254 = uitofp i1 %3253 to float
  %3255 = fadd fast float %3231, %3254
  %3256 = or i32 %3160, %3208
  %3257 = icmp slt i32 %3256, 0
  %3258 = or i1 %3211, %3163
  %3259 = or i1 %3257, %3258
  br i1 %3259, label %3277, label %3260, !dx.controlflow.hints !47

; <label>:3260                                    ; preds = %3251
  %3261 = lshr i32 %3160, 2
  %3262 = mul i32 %85, %3261
  %3263 = lshr i32 %3208, 3
  %3264 = add i32 %81, %3263
  %3265 = add i32 %3264, %83
  %3266 = add i32 %3265, %3262
  %3267 = shl i32 %3266, 2
  %3268 = shl i32 %3160, 3
  %3269 = and i32 %3268, 24
  %3270 = and i32 %3208, 7
  %3271 = or i32 %3269, %3270
  %3272 = shl i32 1, %3271
  %3273 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %3267, i32 undef)  ; BufferLoad(srv,index,wot)
  %3274 = extractvalue %dx.types.ResRet.i32 %3273, 0
  %3275 = and i32 %3274, %3272
  %3276 = icmp ne i32 %3275, 0
  br label %3277

; <label>:3277                                    ; preds = %3260, %3251
  %3278 = phi i1 [ %3276, %3260 ], [ false, %3251 ]
  %3279 = xor i1 %3278, true
  %3280 = uitofp i1 %3279 to float
  %3281 = fadd fast float %3255, %3280
  %3282 = or i32 %3160, %3232
  %3283 = icmp slt i32 %3282, 0
  %3284 = or i1 %3235, %3163
  %3285 = or i1 %3283, %3284
  br i1 %3285, label %3303, label %3286, !dx.controlflow.hints !47

; <label>:3286                                    ; preds = %3277
  %3287 = lshr i32 %3160, 2
  %3288 = mul i32 %85, %3287
  %3289 = lshr i32 %3232, 3
  %3290 = add i32 %81, %3289
  %3291 = add i32 %3290, %83
  %3292 = add i32 %3291, %3288
  %3293 = shl i32 %3292, 2
  %3294 = shl i32 %3160, 3
  %3295 = and i32 %3294, 24
  %3296 = and i32 %3232, 7
  %3297 = or i32 %3295, %3296
  %3298 = shl i32 1, %3297
  %3299 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %3293, i32 undef)  ; BufferLoad(srv,index,wot)
  %3300 = extractvalue %dx.types.ResRet.i32 %3299, 0
  %3301 = and i32 %3300, %3298
  %3302 = icmp ne i32 %3301, 0
  br label %3303

; <label>:3303                                    ; preds = %3286, %3277
  %3304 = phi i1 [ %3302, %3286 ], [ false, %3277 ]
  %3305 = xor i1 %3304, true
  %3306 = uitofp i1 %3305 to float
  %3307 = fadd fast float %3281, %3306
  %3308 = or i32 %3184, %3208
  %3309 = icmp slt i32 %3308, 0
  %3310 = or i1 %3211, %3187
  %3311 = or i1 %3309, %3310
  br i1 %3311, label %3329, label %3312, !dx.controlflow.hints !47

; <label>:3312                                    ; preds = %3303
  %3313 = lshr i32 %3184, 2
  %3314 = mul i32 %85, %3313
  %3315 = lshr i32 %3208, 3
  %3316 = add i32 %81, %3315
  %3317 = add i32 %3316, %83
  %3318 = add i32 %3317, %3314
  %3319 = shl i32 %3318, 2
  %3320 = shl i32 %3184, 3
  %3321 = and i32 %3320, 24
  %3322 = and i32 %3208, 7
  %3323 = or i32 %3321, %3322
  %3324 = shl i32 1, %3323
  %3325 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %3319, i32 undef)  ; BufferLoad(srv,index,wot)
  %3326 = extractvalue %dx.types.ResRet.i32 %3325, 0
  %3327 = and i32 %3326, %3324
  %3328 = icmp ne i32 %3327, 0
  br label %3329

; <label>:3329                                    ; preds = %3312, %3303
  %3330 = phi i1 [ %3328, %3312 ], [ false, %3303 ]
  %3331 = xor i1 %3330, true
  %3332 = uitofp i1 %3331 to float
  %3333 = fadd fast float %3307, %3332
  %3334 = or i32 %3184, %3232
  %3335 = icmp slt i32 %3334, 0
  %3336 = or i1 %3235, %3187
  %3337 = or i1 %3335, %3336
  br i1 %3337, label %3355, label %3338, !dx.controlflow.hints !47

; <label>:3338                                    ; preds = %3329
  %3339 = lshr i32 %3184, 2
  %3340 = mul i32 %85, %3339
  %3341 = lshr i32 %3232, 3
  %3342 = add i32 %81, %3341
  %3343 = add i32 %3342, %83
  %3344 = add i32 %3343, %3340
  %3345 = shl i32 %3344, 2
  %3346 = shl i32 %3184, 3
  %3347 = and i32 %3346, 24
  %3348 = and i32 %3232, 7
  %3349 = or i32 %3347, %3348
  %3350 = shl i32 1, %3349
  %3351 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %3345, i32 undef)  ; BufferLoad(srv,index,wot)
  %3352 = extractvalue %dx.types.ResRet.i32 %3351, 0
  %3353 = and i32 %3352, %3350
  %3354 = icmp ne i32 %3353, 0
  br label %3355

; <label>:3355                                    ; preds = %3338, %3329
  %3356 = phi i1 [ %3354, %3338 ], [ false, %3329 ]
  %3357 = xor i1 %3356, true
  %3358 = uitofp i1 %3357 to float
  %3359 = fadd fast float %3333, %3358
  %3360 = fmul fast float %2529, 5.000000e+00
  %3361 = fmul fast float %2530, 5.000000e+00
  %3362 = call float @dx.op.unary.f32(i32 28, float %3360)  ; Round_pi(value)
  %3363 = call float @dx.op.unary.f32(i32 28, float %3361)  ; Round_pi(value)
  %3364 = fptosi float %3362 to i32
  %3365 = fptosi float %3363 to i32
  %3366 = sub i32 %64, %3365
  %3367 = or i32 %3366, %63
  %3368 = icmp slt i32 %3367, 0
  %3369 = icmp sge i32 %3366, %2542
  %3370 = or i1 %2543, %3369
  %3371 = or i1 %3368, %3370
  br i1 %3371, label %3385, label %3372, !dx.controlflow.hints !47

; <label>:3372                                    ; preds = %3355
  %3373 = lshr i32 %3366, 2
  %3374 = mul i32 %85, %3373
  %3375 = add i32 %89, %3374
  %3376 = shl i32 %3375, 2
  %3377 = shl i32 %3366, 3
  %3378 = and i32 %3377, 24
  %3379 = or i32 %3378, %94
  %3380 = shl i32 1, %3379
  %3381 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %3376, i32 undef)  ; BufferLoad(srv,index,wot)
  %3382 = extractvalue %dx.types.ResRet.i32 %3381, 0
  %3383 = and i32 %3382, %3380
  %3384 = icmp ne i32 %3383, 0
  br label %3385

; <label>:3385                                    ; preds = %3372, %3355
  %3386 = phi i1 [ %3384, %3372 ], [ false, %3355 ]
  %3387 = xor i1 %3386, true
  %3388 = uitofp i1 %3387 to float
  %3389 = fadd fast float %3359, %3388
  %3390 = add i32 %3365, %64
  %3391 = or i32 %3390, %63
  %3392 = icmp slt i32 %3391, 0
  %3393 = icmp sge i32 %3390, %2542
  %3394 = or i1 %2543, %3393
  %3395 = or i1 %3392, %3394
  br i1 %3395, label %3409, label %3396, !dx.controlflow.hints !47

; <label>:3396                                    ; preds = %3385
  %3397 = lshr i32 %3390, 2
  %3398 = mul i32 %85, %3397
  %3399 = add i32 %89, %3398
  %3400 = shl i32 %3399, 2
  %3401 = shl i32 %3390, 3
  %3402 = and i32 %3401, 24
  %3403 = or i32 %3402, %94
  %3404 = shl i32 1, %3403
  %3405 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %3400, i32 undef)  ; BufferLoad(srv,index,wot)
  %3406 = extractvalue %dx.types.ResRet.i32 %3405, 0
  %3407 = and i32 %3406, %3404
  %3408 = icmp ne i32 %3407, 0
  br label %3409

; <label>:3409                                    ; preds = %3396, %3385
  %3410 = phi i1 [ %3408, %3396 ], [ false, %3385 ]
  %3411 = xor i1 %3410, true
  %3412 = uitofp i1 %3411 to float
  %3413 = fadd fast float %3389, %3412
  %3414 = sub i32 %63, %3364
  %3415 = or i32 %3414, %64
  %3416 = icmp slt i32 %3415, 0
  %3417 = icmp sge i32 %3414, %2541
  %3418 = or i1 %3417, %2593
  %3419 = or i1 %3416, %3418
  br i1 %3419, label %3433, label %3420, !dx.controlflow.hints !47

; <label>:3420                                    ; preds = %3409
  %3421 = lshr i32 %3414, 3
  %3422 = add i32 %81, %3421
  %3423 = add i32 %3422, %83
  %3424 = add i32 %3423, %86
  %3425 = shl i32 %3424, 2
  %3426 = and i32 %3414, 7
  %3427 = or i32 %3426, %93
  %3428 = shl i32 1, %3427
  %3429 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %3425, i32 undef)  ; BufferLoad(srv,index,wot)
  %3430 = extractvalue %dx.types.ResRet.i32 %3429, 0
  %3431 = and i32 %3430, %3428
  %3432 = icmp ne i32 %3431, 0
  br label %3433

; <label>:3433                                    ; preds = %3420, %3409
  %3434 = phi i1 [ %3432, %3420 ], [ false, %3409 ]
  %3435 = xor i1 %3434, true
  %3436 = uitofp i1 %3435 to float
  %3437 = fadd fast float %3413, %3436
  %3438 = add i32 %3364, %63
  %3439 = or i32 %3438, %64
  %3440 = icmp slt i32 %3439, 0
  %3441 = icmp sge i32 %3438, %2541
  %3442 = or i1 %3441, %2593
  %3443 = or i1 %3440, %3442
  br i1 %3443, label %3457, label %3444, !dx.controlflow.hints !47

; <label>:3444                                    ; preds = %3433
  %3445 = lshr i32 %3438, 3
  %3446 = add i32 %81, %3445
  %3447 = add i32 %3446, %83
  %3448 = add i32 %3447, %86
  %3449 = shl i32 %3448, 2
  %3450 = and i32 %3438, 7
  %3451 = or i32 %3450, %93
  %3452 = shl i32 1, %3451
  %3453 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %3449, i32 undef)  ; BufferLoad(srv,index,wot)
  %3454 = extractvalue %dx.types.ResRet.i32 %3453, 0
  %3455 = and i32 %3454, %3452
  %3456 = icmp ne i32 %3455, 0
  br label %3457

; <label>:3457                                    ; preds = %3444, %3433
  %3458 = phi i1 [ %3456, %3444 ], [ false, %3433 ]
  %3459 = xor i1 %3458, true
  %3460 = uitofp i1 %3459 to float
  %3461 = fadd fast float %3437, %3460
  %3462 = or i32 %3366, %3414
  %3463 = icmp slt i32 %3462, 0
  %3464 = or i1 %3417, %3369
  %3465 = or i1 %3463, %3464
  br i1 %3465, label %3483, label %3466, !dx.controlflow.hints !47

; <label>:3466                                    ; preds = %3457
  %3467 = lshr i32 %3366, 2
  %3468 = mul i32 %85, %3467
  %3469 = lshr i32 %3414, 3
  %3470 = add i32 %81, %3469
  %3471 = add i32 %3470, %83
  %3472 = add i32 %3471, %3468
  %3473 = shl i32 %3472, 2
  %3474 = shl i32 %3366, 3
  %3475 = and i32 %3474, 24
  %3476 = and i32 %3414, 7
  %3477 = or i32 %3475, %3476
  %3478 = shl i32 1, %3477
  %3479 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %3473, i32 undef)  ; BufferLoad(srv,index,wot)
  %3480 = extractvalue %dx.types.ResRet.i32 %3479, 0
  %3481 = and i32 %3480, %3478
  %3482 = icmp ne i32 %3481, 0
  br label %3483

; <label>:3483                                    ; preds = %3466, %3457
  %3484 = phi i1 [ %3482, %3466 ], [ false, %3457 ]
  %3485 = xor i1 %3484, true
  %3486 = uitofp i1 %3485 to float
  %3487 = fadd fast float %3461, %3486
  %3488 = or i32 %3366, %3438
  %3489 = icmp slt i32 %3488, 0
  %3490 = or i1 %3441, %3369
  %3491 = or i1 %3489, %3490
  br i1 %3491, label %3509, label %3492, !dx.controlflow.hints !47

; <label>:3492                                    ; preds = %3483
  %3493 = lshr i32 %3366, 2
  %3494 = mul i32 %85, %3493
  %3495 = lshr i32 %3438, 3
  %3496 = add i32 %81, %3495
  %3497 = add i32 %3496, %83
  %3498 = add i32 %3497, %3494
  %3499 = shl i32 %3498, 2
  %3500 = shl i32 %3366, 3
  %3501 = and i32 %3500, 24
  %3502 = and i32 %3438, 7
  %3503 = or i32 %3501, %3502
  %3504 = shl i32 1, %3503
  %3505 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %3499, i32 undef)  ; BufferLoad(srv,index,wot)
  %3506 = extractvalue %dx.types.ResRet.i32 %3505, 0
  %3507 = and i32 %3506, %3504
  %3508 = icmp ne i32 %3507, 0
  br label %3509

; <label>:3509                                    ; preds = %3492, %3483
  %3510 = phi i1 [ %3508, %3492 ], [ false, %3483 ]
  %3511 = xor i1 %3510, true
  %3512 = uitofp i1 %3511 to float
  %3513 = fadd fast float %3487, %3512
  %3514 = or i32 %3390, %3414
  %3515 = icmp slt i32 %3514, 0
  %3516 = or i1 %3417, %3393
  %3517 = or i1 %3515, %3516
  br i1 %3517, label %3535, label %3518, !dx.controlflow.hints !47

; <label>:3518                                    ; preds = %3509
  %3519 = lshr i32 %3390, 2
  %3520 = mul i32 %85, %3519
  %3521 = lshr i32 %3414, 3
  %3522 = add i32 %81, %3521
  %3523 = add i32 %3522, %83
  %3524 = add i32 %3523, %3520
  %3525 = shl i32 %3524, 2
  %3526 = shl i32 %3390, 3
  %3527 = and i32 %3526, 24
  %3528 = and i32 %3414, 7
  %3529 = or i32 %3527, %3528
  %3530 = shl i32 1, %3529
  %3531 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %3525, i32 undef)  ; BufferLoad(srv,index,wot)
  %3532 = extractvalue %dx.types.ResRet.i32 %3531, 0
  %3533 = and i32 %3532, %3530
  %3534 = icmp ne i32 %3533, 0
  br label %3535

; <label>:3535                                    ; preds = %3518, %3509
  %3536 = phi i1 [ %3534, %3518 ], [ false, %3509 ]
  %3537 = xor i1 %3536, true
  %3538 = uitofp i1 %3537 to float
  %3539 = fadd fast float %3513, %3538
  %3540 = or i32 %3390, %3438
  %3541 = icmp slt i32 %3540, 0
  %3542 = or i1 %3441, %3393
  %3543 = or i1 %3541, %3542
  br i1 %3543, label %3561, label %3544, !dx.controlflow.hints !47

; <label>:3544                                    ; preds = %3535
  %3545 = lshr i32 %3390, 2
  %3546 = mul i32 %85, %3545
  %3547 = lshr i32 %3438, 3
  %3548 = add i32 %81, %3547
  %3549 = add i32 %3548, %83
  %3550 = add i32 %3549, %3546
  %3551 = shl i32 %3550, 2
  %3552 = shl i32 %3390, 3
  %3553 = and i32 %3552, 24
  %3554 = and i32 %3438, 7
  %3555 = or i32 %3553, %3554
  %3556 = shl i32 1, %3555
  %3557 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %3551, i32 undef)  ; BufferLoad(srv,index,wot)
  %3558 = extractvalue %dx.types.ResRet.i32 %3557, 0
  %3559 = and i32 %3558, %3556
  %3560 = icmp ne i32 %3559, 0
  br label %3561

; <label>:3561                                    ; preds = %3544, %3535
  %3562 = phi i1 [ %3560, %3544 ], [ false, %3535 ]
  %3563 = xor i1 %3562, true
  %3564 = uitofp i1 %3563 to float
  %3565 = fadd fast float %3539, %3564
  %3566 = fmul fast float %2529, 6.000000e+00
  %3567 = fmul fast float %2530, 6.000000e+00
  %3568 = call float @dx.op.unary.f32(i32 28, float %3566)  ; Round_pi(value)
  %3569 = call float @dx.op.unary.f32(i32 28, float %3567)  ; Round_pi(value)
  %3570 = fptosi float %3568 to i32
  %3571 = fptosi float %3569 to i32
  %3572 = sub i32 %64, %3571
  %3573 = or i32 %3572, %63
  %3574 = icmp slt i32 %3573, 0
  %3575 = icmp sge i32 %3572, %2542
  %3576 = or i1 %2543, %3575
  %3577 = or i1 %3574, %3576
  br i1 %3577, label %3591, label %3578, !dx.controlflow.hints !47

; <label>:3578                                    ; preds = %3561
  %3579 = lshr i32 %3572, 2
  %3580 = mul i32 %85, %3579
  %3581 = add i32 %89, %3580
  %3582 = shl i32 %3581, 2
  %3583 = shl i32 %3572, 3
  %3584 = and i32 %3583, 24
  %3585 = or i32 %3584, %94
  %3586 = shl i32 1, %3585
  %3587 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %3582, i32 undef)  ; BufferLoad(srv,index,wot)
  %3588 = extractvalue %dx.types.ResRet.i32 %3587, 0
  %3589 = and i32 %3588, %3586
  %3590 = icmp ne i32 %3589, 0
  br label %3591

; <label>:3591                                    ; preds = %3578, %3561
  %3592 = phi i1 [ %3590, %3578 ], [ false, %3561 ]
  %3593 = xor i1 %3592, true
  %3594 = uitofp i1 %3593 to float
  %3595 = fadd fast float %3565, %3594
  %3596 = add i32 %3571, %64
  %3597 = or i32 %3596, %63
  %3598 = icmp slt i32 %3597, 0
  %3599 = icmp sge i32 %3596, %2542
  %3600 = or i1 %2543, %3599
  %3601 = or i1 %3598, %3600
  br i1 %3601, label %3615, label %3602, !dx.controlflow.hints !47

; <label>:3602                                    ; preds = %3591
  %3603 = lshr i32 %3596, 2
  %3604 = mul i32 %85, %3603
  %3605 = add i32 %89, %3604
  %3606 = shl i32 %3605, 2
  %3607 = shl i32 %3596, 3
  %3608 = and i32 %3607, 24
  %3609 = or i32 %3608, %94
  %3610 = shl i32 1, %3609
  %3611 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %3606, i32 undef)  ; BufferLoad(srv,index,wot)
  %3612 = extractvalue %dx.types.ResRet.i32 %3611, 0
  %3613 = and i32 %3612, %3610
  %3614 = icmp ne i32 %3613, 0
  br label %3615

; <label>:3615                                    ; preds = %3602, %3591
  %3616 = phi i1 [ %3614, %3602 ], [ false, %3591 ]
  %3617 = xor i1 %3616, true
  %3618 = uitofp i1 %3617 to float
  %3619 = fadd fast float %3595, %3618
  %3620 = sub i32 %63, %3570
  %3621 = or i32 %3620, %64
  %3622 = icmp slt i32 %3621, 0
  %3623 = icmp sge i32 %3620, %2541
  %3624 = or i1 %3623, %2593
  %3625 = or i1 %3622, %3624
  br i1 %3625, label %3639, label %3626, !dx.controlflow.hints !47

; <label>:3626                                    ; preds = %3615
  %3627 = lshr i32 %3620, 3
  %3628 = add i32 %81, %3627
  %3629 = add i32 %3628, %83
  %3630 = add i32 %3629, %86
  %3631 = shl i32 %3630, 2
  %3632 = and i32 %3620, 7
  %3633 = or i32 %3632, %93
  %3634 = shl i32 1, %3633
  %3635 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %3631, i32 undef)  ; BufferLoad(srv,index,wot)
  %3636 = extractvalue %dx.types.ResRet.i32 %3635, 0
  %3637 = and i32 %3636, %3634
  %3638 = icmp ne i32 %3637, 0
  br label %3639

; <label>:3639                                    ; preds = %3626, %3615
  %3640 = phi i1 [ %3638, %3626 ], [ false, %3615 ]
  %3641 = xor i1 %3640, true
  %3642 = uitofp i1 %3641 to float
  %3643 = fadd fast float %3619, %3642
  %3644 = add i32 %3570, %63
  %3645 = or i32 %3644, %64
  %3646 = icmp slt i32 %3645, 0
  %3647 = icmp sge i32 %3644, %2541
  %3648 = or i1 %3647, %2593
  %3649 = or i1 %3646, %3648
  br i1 %3649, label %3663, label %3650, !dx.controlflow.hints !47

; <label>:3650                                    ; preds = %3639
  %3651 = lshr i32 %3644, 3
  %3652 = add i32 %81, %3651
  %3653 = add i32 %3652, %83
  %3654 = add i32 %3653, %86
  %3655 = shl i32 %3654, 2
  %3656 = and i32 %3644, 7
  %3657 = or i32 %3656, %93
  %3658 = shl i32 1, %3657
  %3659 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %3655, i32 undef)  ; BufferLoad(srv,index,wot)
  %3660 = extractvalue %dx.types.ResRet.i32 %3659, 0
  %3661 = and i32 %3660, %3658
  %3662 = icmp ne i32 %3661, 0
  br label %3663

; <label>:3663                                    ; preds = %3650, %3639
  %3664 = phi i1 [ %3662, %3650 ], [ false, %3639 ]
  %3665 = xor i1 %3664, true
  %3666 = uitofp i1 %3665 to float
  %3667 = fadd fast float %3643, %3666
  %3668 = or i32 %3572, %3620
  %3669 = icmp slt i32 %3668, 0
  %3670 = or i1 %3623, %3575
  %3671 = or i1 %3669, %3670
  br i1 %3671, label %3689, label %3672, !dx.controlflow.hints !47

; <label>:3672                                    ; preds = %3663
  %3673 = lshr i32 %3572, 2
  %3674 = mul i32 %85, %3673
  %3675 = lshr i32 %3620, 3
  %3676 = add i32 %81, %3675
  %3677 = add i32 %3676, %83
  %3678 = add i32 %3677, %3674
  %3679 = shl i32 %3678, 2
  %3680 = shl i32 %3572, 3
  %3681 = and i32 %3680, 24
  %3682 = and i32 %3620, 7
  %3683 = or i32 %3681, %3682
  %3684 = shl i32 1, %3683
  %3685 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %3679, i32 undef)  ; BufferLoad(srv,index,wot)
  %3686 = extractvalue %dx.types.ResRet.i32 %3685, 0
  %3687 = and i32 %3686, %3684
  %3688 = icmp ne i32 %3687, 0
  br label %3689

; <label>:3689                                    ; preds = %3672, %3663
  %3690 = phi i1 [ %3688, %3672 ], [ false, %3663 ]
  %3691 = xor i1 %3690, true
  %3692 = uitofp i1 %3691 to float
  %3693 = fadd fast float %3667, %3692
  %3694 = or i32 %3572, %3644
  %3695 = icmp slt i32 %3694, 0
  %3696 = or i1 %3647, %3575
  %3697 = or i1 %3695, %3696
  br i1 %3697, label %3715, label %3698, !dx.controlflow.hints !47

; <label>:3698                                    ; preds = %3689
  %3699 = lshr i32 %3572, 2
  %3700 = mul i32 %85, %3699
  %3701 = lshr i32 %3644, 3
  %3702 = add i32 %81, %3701
  %3703 = add i32 %3702, %83
  %3704 = add i32 %3703, %3700
  %3705 = shl i32 %3704, 2
  %3706 = shl i32 %3572, 3
  %3707 = and i32 %3706, 24
  %3708 = and i32 %3644, 7
  %3709 = or i32 %3707, %3708
  %3710 = shl i32 1, %3709
  %3711 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %3705, i32 undef)  ; BufferLoad(srv,index,wot)
  %3712 = extractvalue %dx.types.ResRet.i32 %3711, 0
  %3713 = and i32 %3712, %3710
  %3714 = icmp ne i32 %3713, 0
  br label %3715

; <label>:3715                                    ; preds = %3698, %3689
  %3716 = phi i1 [ %3714, %3698 ], [ false, %3689 ]
  %3717 = xor i1 %3716, true
  %3718 = uitofp i1 %3717 to float
  %3719 = fadd fast float %3693, %3718
  %3720 = or i32 %3596, %3620
  %3721 = icmp slt i32 %3720, 0
  %3722 = or i1 %3623, %3599
  %3723 = or i1 %3721, %3722
  br i1 %3723, label %3741, label %3724, !dx.controlflow.hints !47

; <label>:3724                                    ; preds = %3715
  %3725 = lshr i32 %3596, 2
  %3726 = mul i32 %85, %3725
  %3727 = lshr i32 %3620, 3
  %3728 = add i32 %81, %3727
  %3729 = add i32 %3728, %83
  %3730 = add i32 %3729, %3726
  %3731 = shl i32 %3730, 2
  %3732 = shl i32 %3596, 3
  %3733 = and i32 %3732, 24
  %3734 = and i32 %3620, 7
  %3735 = or i32 %3733, %3734
  %3736 = shl i32 1, %3735
  %3737 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %3731, i32 undef)  ; BufferLoad(srv,index,wot)
  %3738 = extractvalue %dx.types.ResRet.i32 %3737, 0
  %3739 = and i32 %3738, %3736
  %3740 = icmp ne i32 %3739, 0
  br label %3741

; <label>:3741                                    ; preds = %3724, %3715
  %3742 = phi i1 [ %3740, %3724 ], [ false, %3715 ]
  %3743 = xor i1 %3742, true
  %3744 = uitofp i1 %3743 to float
  %3745 = fadd fast float %3719, %3744
  %3746 = or i32 %3596, %3644
  %3747 = icmp slt i32 %3746, 0
  %3748 = or i1 %3647, %3599
  %3749 = or i1 %3747, %3748
  br i1 %3749, label %3767, label %3750, !dx.controlflow.hints !47

; <label>:3750                                    ; preds = %3741
  %3751 = lshr i32 %3596, 2
  %3752 = mul i32 %85, %3751
  %3753 = lshr i32 %3644, 3
  %3754 = add i32 %81, %3753
  %3755 = add i32 %3754, %83
  %3756 = add i32 %3755, %3752
  %3757 = shl i32 %3756, 2
  %3758 = shl i32 %3596, 3
  %3759 = and i32 %3758, 24
  %3760 = and i32 %3644, 7
  %3761 = or i32 %3759, %3760
  %3762 = shl i32 1, %3761
  %3763 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %3757, i32 undef)  ; BufferLoad(srv,index,wot)
  %3764 = extractvalue %dx.types.ResRet.i32 %3763, 0
  %3765 = and i32 %3764, %3762
  %3766 = icmp ne i32 %3765, 0
  br label %3767

; <label>:3767                                    ; preds = %3750, %3741
  %3768 = phi i1 [ %3766, %3750 ], [ false, %3741 ]
  %3769 = xor i1 %3768, true
  %3770 = uitofp i1 %3769 to float
  %3771 = fadd fast float %3745, %3770
  %3772 = fmul fast float %2529, 7.000000e+00
  %3773 = fmul fast float %2530, 7.000000e+00
  %3774 = call float @dx.op.unary.f32(i32 28, float %3772)  ; Round_pi(value)
  %3775 = call float @dx.op.unary.f32(i32 28, float %3773)  ; Round_pi(value)
  %3776 = fptosi float %3774 to i32
  %3777 = fptosi float %3775 to i32
  %3778 = sub i32 %64, %3777
  %3779 = or i32 %3778, %63
  %3780 = icmp slt i32 %3779, 0
  %3781 = icmp sge i32 %3778, %2542
  %3782 = or i1 %2543, %3781
  %3783 = or i1 %3780, %3782
  br i1 %3783, label %3797, label %3784, !dx.controlflow.hints !47

; <label>:3784                                    ; preds = %3767
  %3785 = lshr i32 %3778, 2
  %3786 = mul i32 %85, %3785
  %3787 = add i32 %89, %3786
  %3788 = shl i32 %3787, 2
  %3789 = shl i32 %3778, 3
  %3790 = and i32 %3789, 24
  %3791 = or i32 %3790, %94
  %3792 = shl i32 1, %3791
  %3793 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %3788, i32 undef)  ; BufferLoad(srv,index,wot)
  %3794 = extractvalue %dx.types.ResRet.i32 %3793, 0
  %3795 = and i32 %3794, %3792
  %3796 = icmp ne i32 %3795, 0
  br label %3797

; <label>:3797                                    ; preds = %3784, %3767
  %3798 = phi i1 [ %3796, %3784 ], [ false, %3767 ]
  %3799 = xor i1 %3798, true
  %3800 = uitofp i1 %3799 to float
  %3801 = fadd fast float %3771, %3800
  %3802 = add i32 %3777, %64
  %3803 = or i32 %3802, %63
  %3804 = icmp slt i32 %3803, 0
  %3805 = icmp sge i32 %3802, %2542
  %3806 = or i1 %2543, %3805
  %3807 = or i1 %3804, %3806
  br i1 %3807, label %3821, label %3808, !dx.controlflow.hints !47

; <label>:3808                                    ; preds = %3797
  %3809 = lshr i32 %3802, 2
  %3810 = mul i32 %85, %3809
  %3811 = add i32 %89, %3810
  %3812 = shl i32 %3811, 2
  %3813 = shl i32 %3802, 3
  %3814 = and i32 %3813, 24
  %3815 = or i32 %3814, %94
  %3816 = shl i32 1, %3815
  %3817 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %3812, i32 undef)  ; BufferLoad(srv,index,wot)
  %3818 = extractvalue %dx.types.ResRet.i32 %3817, 0
  %3819 = and i32 %3818, %3816
  %3820 = icmp ne i32 %3819, 0
  br label %3821

; <label>:3821                                    ; preds = %3808, %3797
  %3822 = phi i1 [ %3820, %3808 ], [ false, %3797 ]
  %3823 = xor i1 %3822, true
  %3824 = uitofp i1 %3823 to float
  %3825 = fadd fast float %3801, %3824
  %3826 = sub i32 %63, %3776
  %3827 = or i32 %3826, %64
  %3828 = icmp slt i32 %3827, 0
  %3829 = icmp sge i32 %3826, %2541
  %3830 = or i1 %3829, %2593
  %3831 = or i1 %3828, %3830
  br i1 %3831, label %3845, label %3832, !dx.controlflow.hints !47

; <label>:3832                                    ; preds = %3821
  %3833 = lshr i32 %3826, 3
  %3834 = add i32 %81, %3833
  %3835 = add i32 %3834, %83
  %3836 = add i32 %3835, %86
  %3837 = shl i32 %3836, 2
  %3838 = and i32 %3826, 7
  %3839 = or i32 %3838, %93
  %3840 = shl i32 1, %3839
  %3841 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %3837, i32 undef)  ; BufferLoad(srv,index,wot)
  %3842 = extractvalue %dx.types.ResRet.i32 %3841, 0
  %3843 = and i32 %3842, %3840
  %3844 = icmp ne i32 %3843, 0
  br label %3845

; <label>:3845                                    ; preds = %3832, %3821
  %3846 = phi i1 [ %3844, %3832 ], [ false, %3821 ]
  %3847 = xor i1 %3846, true
  %3848 = uitofp i1 %3847 to float
  %3849 = fadd fast float %3825, %3848
  %3850 = add i32 %3776, %63
  %3851 = or i32 %3850, %64
  %3852 = icmp slt i32 %3851, 0
  %3853 = icmp sge i32 %3850, %2541
  %3854 = or i1 %3853, %2593
  %3855 = or i1 %3852, %3854
  br i1 %3855, label %3869, label %3856, !dx.controlflow.hints !47

; <label>:3856                                    ; preds = %3845
  %3857 = lshr i32 %3850, 3
  %3858 = add i32 %81, %3857
  %3859 = add i32 %3858, %83
  %3860 = add i32 %3859, %86
  %3861 = shl i32 %3860, 2
  %3862 = and i32 %3850, 7
  %3863 = or i32 %3862, %93
  %3864 = shl i32 1, %3863
  %3865 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %3861, i32 undef)  ; BufferLoad(srv,index,wot)
  %3866 = extractvalue %dx.types.ResRet.i32 %3865, 0
  %3867 = and i32 %3866, %3864
  %3868 = icmp ne i32 %3867, 0
  br label %3869

; <label>:3869                                    ; preds = %3856, %3845
  %3870 = phi i1 [ %3868, %3856 ], [ false, %3845 ]
  %3871 = xor i1 %3870, true
  %3872 = uitofp i1 %3871 to float
  %3873 = fadd fast float %3849, %3872
  %3874 = or i32 %3778, %3826
  %3875 = icmp slt i32 %3874, 0
  %3876 = or i1 %3829, %3781
  %3877 = or i1 %3875, %3876
  br i1 %3877, label %3895, label %3878, !dx.controlflow.hints !47

; <label>:3878                                    ; preds = %3869
  %3879 = lshr i32 %3778, 2
  %3880 = mul i32 %85, %3879
  %3881 = lshr i32 %3826, 3
  %3882 = add i32 %81, %3881
  %3883 = add i32 %3882, %83
  %3884 = add i32 %3883, %3880
  %3885 = shl i32 %3884, 2
  %3886 = shl i32 %3778, 3
  %3887 = and i32 %3886, 24
  %3888 = and i32 %3826, 7
  %3889 = or i32 %3887, %3888
  %3890 = shl i32 1, %3889
  %3891 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %3885, i32 undef)  ; BufferLoad(srv,index,wot)
  %3892 = extractvalue %dx.types.ResRet.i32 %3891, 0
  %3893 = and i32 %3892, %3890
  %3894 = icmp ne i32 %3893, 0
  br label %3895

; <label>:3895                                    ; preds = %3878, %3869
  %3896 = phi i1 [ %3894, %3878 ], [ false, %3869 ]
  %3897 = xor i1 %3896, true
  %3898 = uitofp i1 %3897 to float
  %3899 = fadd fast float %3873, %3898
  %3900 = or i32 %3778, %3850
  %3901 = icmp slt i32 %3900, 0
  %3902 = or i1 %3853, %3781
  %3903 = or i1 %3901, %3902
  br i1 %3903, label %3921, label %3904, !dx.controlflow.hints !47

; <label>:3904                                    ; preds = %3895
  %3905 = lshr i32 %3778, 2
  %3906 = mul i32 %85, %3905
  %3907 = lshr i32 %3850, 3
  %3908 = add i32 %81, %3907
  %3909 = add i32 %3908, %83
  %3910 = add i32 %3909, %3906
  %3911 = shl i32 %3910, 2
  %3912 = shl i32 %3778, 3
  %3913 = and i32 %3912, 24
  %3914 = and i32 %3850, 7
  %3915 = or i32 %3913, %3914
  %3916 = shl i32 1, %3915
  %3917 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %3911, i32 undef)  ; BufferLoad(srv,index,wot)
  %3918 = extractvalue %dx.types.ResRet.i32 %3917, 0
  %3919 = and i32 %3918, %3916
  %3920 = icmp ne i32 %3919, 0
  br label %3921

; <label>:3921                                    ; preds = %3904, %3895
  %3922 = phi i1 [ %3920, %3904 ], [ false, %3895 ]
  %3923 = xor i1 %3922, true
  %3924 = uitofp i1 %3923 to float
  %3925 = fadd fast float %3899, %3924
  %3926 = or i32 %3802, %3826
  %3927 = icmp slt i32 %3926, 0
  %3928 = or i1 %3829, %3805
  %3929 = or i1 %3927, %3928
  br i1 %3929, label %3947, label %3930, !dx.controlflow.hints !47

; <label>:3930                                    ; preds = %3921
  %3931 = lshr i32 %3802, 2
  %3932 = mul i32 %85, %3931
  %3933 = lshr i32 %3826, 3
  %3934 = add i32 %81, %3933
  %3935 = add i32 %3934, %83
  %3936 = add i32 %3935, %3932
  %3937 = shl i32 %3936, 2
  %3938 = shl i32 %3802, 3
  %3939 = and i32 %3938, 24
  %3940 = and i32 %3826, 7
  %3941 = or i32 %3939, %3940
  %3942 = shl i32 1, %3941
  %3943 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %3937, i32 undef)  ; BufferLoad(srv,index,wot)
  %3944 = extractvalue %dx.types.ResRet.i32 %3943, 0
  %3945 = and i32 %3944, %3942
  %3946 = icmp ne i32 %3945, 0
  br label %3947

; <label>:3947                                    ; preds = %3930, %3921
  %3948 = phi i1 [ %3946, %3930 ], [ false, %3921 ]
  %3949 = xor i1 %3948, true
  %3950 = uitofp i1 %3949 to float
  %3951 = fadd fast float %3925, %3950
  %3952 = or i32 %3802, %3850
  %3953 = icmp slt i32 %3952, 0
  %3954 = or i1 %3853, %3805
  %3955 = or i1 %3953, %3954
  br i1 %3955, label %3973, label %3956, !dx.controlflow.hints !47

; <label>:3956                                    ; preds = %3947
  %3957 = lshr i32 %3802, 2
  %3958 = mul i32 %85, %3957
  %3959 = lshr i32 %3850, 3
  %3960 = add i32 %81, %3959
  %3961 = add i32 %3960, %83
  %3962 = add i32 %3961, %3958
  %3963 = shl i32 %3962, 2
  %3964 = shl i32 %3802, 3
  %3965 = and i32 %3964, 24
  %3966 = and i32 %3850, 7
  %3967 = or i32 %3965, %3966
  %3968 = shl i32 1, %3967
  %3969 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %3963, i32 undef)  ; BufferLoad(srv,index,wot)
  %3970 = extractvalue %dx.types.ResRet.i32 %3969, 0
  %3971 = and i32 %3970, %3968
  %3972 = icmp ne i32 %3971, 0
  br label %3973

; <label>:3973                                    ; preds = %3956, %3947
  %3974 = phi i1 [ %3972, %3956 ], [ false, %3947 ]
  %3975 = xor i1 %3974, true
  %3976 = uitofp i1 %3975 to float
  %3977 = fadd fast float %3951, %3976
  %3978 = fmul fast float %2529, 8.000000e+00
  %3979 = fmul fast float %2530, 8.000000e+00
  %3980 = call float @dx.op.unary.f32(i32 28, float %3978)  ; Round_pi(value)
  %3981 = call float @dx.op.unary.f32(i32 28, float %3979)  ; Round_pi(value)
  %3982 = fptosi float %3980 to i32
  %3983 = fptosi float %3981 to i32
  %3984 = sub i32 %64, %3983
  %3985 = or i32 %3984, %63
  %3986 = icmp slt i32 %3985, 0
  %3987 = icmp sge i32 %3984, %2542
  %3988 = or i1 %2543, %3987
  %3989 = or i1 %3986, %3988
  br i1 %3989, label %4003, label %3990, !dx.controlflow.hints !47

; <label>:3990                                    ; preds = %3973
  %3991 = lshr i32 %3984, 2
  %3992 = mul i32 %85, %3991
  %3993 = add i32 %89, %3992
  %3994 = shl i32 %3993, 2
  %3995 = shl i32 %3984, 3
  %3996 = and i32 %3995, 24
  %3997 = or i32 %3996, %94
  %3998 = shl i32 1, %3997
  %3999 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %3994, i32 undef)  ; BufferLoad(srv,index,wot)
  %4000 = extractvalue %dx.types.ResRet.i32 %3999, 0
  %4001 = and i32 %4000, %3998
  %4002 = icmp ne i32 %4001, 0
  br label %4003

; <label>:4003                                    ; preds = %3990, %3973
  %4004 = phi i1 [ %4002, %3990 ], [ false, %3973 ]
  %4005 = xor i1 %4004, true
  %4006 = uitofp i1 %4005 to float
  %4007 = fadd fast float %3977, %4006
  %4008 = add i32 %3983, %64
  %4009 = or i32 %4008, %63
  %4010 = icmp slt i32 %4009, 0
  %4011 = icmp sge i32 %4008, %2542
  %4012 = or i1 %2543, %4011
  %4013 = or i1 %4010, %4012
  br i1 %4013, label %4027, label %4014, !dx.controlflow.hints !47

; <label>:4014                                    ; preds = %4003
  %4015 = lshr i32 %4008, 2
  %4016 = mul i32 %85, %4015
  %4017 = add i32 %89, %4016
  %4018 = shl i32 %4017, 2
  %4019 = shl i32 %4008, 3
  %4020 = and i32 %4019, 24
  %4021 = or i32 %4020, %94
  %4022 = shl i32 1, %4021
  %4023 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %4018, i32 undef)  ; BufferLoad(srv,index,wot)
  %4024 = extractvalue %dx.types.ResRet.i32 %4023, 0
  %4025 = and i32 %4024, %4022
  %4026 = icmp ne i32 %4025, 0
  br label %4027

; <label>:4027                                    ; preds = %4014, %4003
  %4028 = phi i1 [ %4026, %4014 ], [ false, %4003 ]
  %4029 = xor i1 %4028, true
  %4030 = uitofp i1 %4029 to float
  %4031 = fadd fast float %4007, %4030
  %4032 = sub i32 %63, %3982
  %4033 = or i32 %4032, %64
  %4034 = icmp slt i32 %4033, 0
  %4035 = icmp sge i32 %4032, %2541
  %4036 = or i1 %4035, %2593
  %4037 = or i1 %4034, %4036
  br i1 %4037, label %4051, label %4038, !dx.controlflow.hints !47

; <label>:4038                                    ; preds = %4027
  %4039 = lshr i32 %4032, 3
  %4040 = add i32 %81, %4039
  %4041 = add i32 %4040, %83
  %4042 = add i32 %4041, %86
  %4043 = shl i32 %4042, 2
  %4044 = and i32 %4032, 7
  %4045 = or i32 %4044, %93
  %4046 = shl i32 1, %4045
  %4047 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %4043, i32 undef)  ; BufferLoad(srv,index,wot)
  %4048 = extractvalue %dx.types.ResRet.i32 %4047, 0
  %4049 = and i32 %4048, %4046
  %4050 = icmp ne i32 %4049, 0
  br label %4051

; <label>:4051                                    ; preds = %4038, %4027
  %4052 = phi i1 [ %4050, %4038 ], [ false, %4027 ]
  %4053 = xor i1 %4052, true
  %4054 = uitofp i1 %4053 to float
  %4055 = fadd fast float %4031, %4054
  %4056 = add i32 %3982, %63
  %4057 = or i32 %4056, %64
  %4058 = icmp slt i32 %4057, 0
  %4059 = icmp sge i32 %4056, %2541
  %4060 = or i1 %4059, %2593
  %4061 = or i1 %4058, %4060
  br i1 %4061, label %4075, label %4062, !dx.controlflow.hints !47

; <label>:4062                                    ; preds = %4051
  %4063 = lshr i32 %4056, 3
  %4064 = add i32 %81, %4063
  %4065 = add i32 %4064, %83
  %4066 = add i32 %4065, %86
  %4067 = shl i32 %4066, 2
  %4068 = and i32 %4056, 7
  %4069 = or i32 %4068, %93
  %4070 = shl i32 1, %4069
  %4071 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %4067, i32 undef)  ; BufferLoad(srv,index,wot)
  %4072 = extractvalue %dx.types.ResRet.i32 %4071, 0
  %4073 = and i32 %4072, %4070
  %4074 = icmp ne i32 %4073, 0
  br label %4075

; <label>:4075                                    ; preds = %4062, %4051
  %4076 = phi i1 [ %4074, %4062 ], [ false, %4051 ]
  %4077 = xor i1 %4076, true
  %4078 = uitofp i1 %4077 to float
  %4079 = fadd fast float %4055, %4078
  %4080 = or i32 %3984, %4032
  %4081 = icmp slt i32 %4080, 0
  %4082 = or i1 %4035, %3987
  %4083 = or i1 %4081, %4082
  br i1 %4083, label %4101, label %4084, !dx.controlflow.hints !47

; <label>:4084                                    ; preds = %4075
  %4085 = lshr i32 %3984, 2
  %4086 = mul i32 %85, %4085
  %4087 = lshr i32 %4032, 3
  %4088 = add i32 %81, %4087
  %4089 = add i32 %4088, %83
  %4090 = add i32 %4089, %4086
  %4091 = shl i32 %4090, 2
  %4092 = shl i32 %3984, 3
  %4093 = and i32 %4092, 24
  %4094 = and i32 %4032, 7
  %4095 = or i32 %4093, %4094
  %4096 = shl i32 1, %4095
  %4097 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %4091, i32 undef)  ; BufferLoad(srv,index,wot)
  %4098 = extractvalue %dx.types.ResRet.i32 %4097, 0
  %4099 = and i32 %4098, %4096
  %4100 = icmp ne i32 %4099, 0
  br label %4101

; <label>:4101                                    ; preds = %4084, %4075
  %4102 = phi i1 [ %4100, %4084 ], [ false, %4075 ]
  %4103 = xor i1 %4102, true
  %4104 = uitofp i1 %4103 to float
  %4105 = fadd fast float %4079, %4104
  %4106 = or i32 %3984, %4056
  %4107 = icmp slt i32 %4106, 0
  %4108 = or i1 %4059, %3987
  %4109 = or i1 %4107, %4108
  br i1 %4109, label %4127, label %4110, !dx.controlflow.hints !47

; <label>:4110                                    ; preds = %4101
  %4111 = lshr i32 %3984, 2
  %4112 = mul i32 %85, %4111
  %4113 = lshr i32 %4056, 3
  %4114 = add i32 %81, %4113
  %4115 = add i32 %4114, %83
  %4116 = add i32 %4115, %4112
  %4117 = shl i32 %4116, 2
  %4118 = shl i32 %3984, 3
  %4119 = and i32 %4118, 24
  %4120 = and i32 %4056, 7
  %4121 = or i32 %4119, %4120
  %4122 = shl i32 1, %4121
  %4123 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %4117, i32 undef)  ; BufferLoad(srv,index,wot)
  %4124 = extractvalue %dx.types.ResRet.i32 %4123, 0
  %4125 = and i32 %4124, %4122
  %4126 = icmp ne i32 %4125, 0
  br label %4127

; <label>:4127                                    ; preds = %4110, %4101
  %4128 = phi i1 [ %4126, %4110 ], [ false, %4101 ]
  %4129 = xor i1 %4128, true
  %4130 = uitofp i1 %4129 to float
  %4131 = fadd fast float %4105, %4130
  %4132 = or i32 %4008, %4032
  %4133 = icmp slt i32 %4132, 0
  %4134 = or i1 %4035, %4011
  %4135 = or i1 %4133, %4134
  br i1 %4135, label %4153, label %4136, !dx.controlflow.hints !47

; <label>:4136                                    ; preds = %4127
  %4137 = lshr i32 %4008, 2
  %4138 = mul i32 %85, %4137
  %4139 = lshr i32 %4032, 3
  %4140 = add i32 %81, %4139
  %4141 = add i32 %4140, %83
  %4142 = add i32 %4141, %4138
  %4143 = shl i32 %4142, 2
  %4144 = shl i32 %4008, 3
  %4145 = and i32 %4144, 24
  %4146 = and i32 %4032, 7
  %4147 = or i32 %4145, %4146
  %4148 = shl i32 1, %4147
  %4149 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %4143, i32 undef)  ; BufferLoad(srv,index,wot)
  %4150 = extractvalue %dx.types.ResRet.i32 %4149, 0
  %4151 = and i32 %4150, %4148
  %4152 = icmp ne i32 %4151, 0
  br label %4153

; <label>:4153                                    ; preds = %4136, %4127
  %4154 = phi i1 [ %4152, %4136 ], [ false, %4127 ]
  %4155 = xor i1 %4154, true
  %4156 = uitofp i1 %4155 to float
  %4157 = fadd fast float %4131, %4156
  %4158 = or i32 %4008, %4056
  %4159 = icmp slt i32 %4158, 0
  %4160 = or i1 %4059, %4011
  %4161 = or i1 %4159, %4160
  br i1 %4161, label %4179, label %4162, !dx.controlflow.hints !47

; <label>:4162                                    ; preds = %4153
  %4163 = lshr i32 %4008, 2
  %4164 = mul i32 %85, %4163
  %4165 = lshr i32 %4056, 3
  %4166 = add i32 %81, %4165
  %4167 = add i32 %4166, %83
  %4168 = add i32 %4167, %4164
  %4169 = shl i32 %4168, 2
  %4170 = shl i32 %4008, 3
  %4171 = and i32 %4170, 24
  %4172 = and i32 %4056, 7
  %4173 = or i32 %4171, %4172
  %4174 = shl i32 1, %4173
  %4175 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %4169, i32 undef)  ; BufferLoad(srv,index,wot)
  %4176 = extractvalue %dx.types.ResRet.i32 %4175, 0
  %4177 = and i32 %4176, %4174
  %4178 = icmp ne i32 %4177, 0
  br label %4179

; <label>:4179                                    ; preds = %4162, %4153
  %4180 = phi i1 [ %4178, %4162 ], [ false, %4153 ]
  %4181 = xor i1 %4180, true
  %4182 = uitofp i1 %4181 to float
  %4183 = fadd fast float %4157, %4182
  %4184 = fmul fast float %2529, 9.000000e+00
  %4185 = fmul fast float %2530, 9.000000e+00
  %4186 = call float @dx.op.unary.f32(i32 28, float %4184)  ; Round_pi(value)
  %4187 = call float @dx.op.unary.f32(i32 28, float %4185)  ; Round_pi(value)
  %4188 = fptosi float %4186 to i32
  %4189 = fptosi float %4187 to i32
  %4190 = sub i32 %64, %4189
  %4191 = or i32 %4190, %63
  %4192 = icmp slt i32 %4191, 0
  %4193 = icmp sge i32 %4190, %2542
  %4194 = or i1 %2543, %4193
  %4195 = or i1 %4192, %4194
  br i1 %4195, label %4209, label %4196, !dx.controlflow.hints !47

; <label>:4196                                    ; preds = %4179
  %4197 = lshr i32 %4190, 2
  %4198 = mul i32 %85, %4197
  %4199 = add i32 %89, %4198
  %4200 = shl i32 %4199, 2
  %4201 = shl i32 %4190, 3
  %4202 = and i32 %4201, 24
  %4203 = or i32 %4202, %94
  %4204 = shl i32 1, %4203
  %4205 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %4200, i32 undef)  ; BufferLoad(srv,index,wot)
  %4206 = extractvalue %dx.types.ResRet.i32 %4205, 0
  %4207 = and i32 %4206, %4204
  %4208 = icmp ne i32 %4207, 0
  br label %4209

; <label>:4209                                    ; preds = %4196, %4179
  %4210 = phi i1 [ %4208, %4196 ], [ false, %4179 ]
  %4211 = xor i1 %4210, true
  %4212 = uitofp i1 %4211 to float
  %4213 = fadd fast float %4183, %4212
  %4214 = add i32 %4189, %64
  %4215 = or i32 %4214, %63
  %4216 = icmp slt i32 %4215, 0
  %4217 = icmp sge i32 %4214, %2542
  %4218 = or i1 %2543, %4217
  %4219 = or i1 %4216, %4218
  br i1 %4219, label %4233, label %4220, !dx.controlflow.hints !47

; <label>:4220                                    ; preds = %4209
  %4221 = lshr i32 %4214, 2
  %4222 = mul i32 %85, %4221
  %4223 = add i32 %89, %4222
  %4224 = shl i32 %4223, 2
  %4225 = shl i32 %4214, 3
  %4226 = and i32 %4225, 24
  %4227 = or i32 %4226, %94
  %4228 = shl i32 1, %4227
  %4229 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %4224, i32 undef)  ; BufferLoad(srv,index,wot)
  %4230 = extractvalue %dx.types.ResRet.i32 %4229, 0
  %4231 = and i32 %4230, %4228
  %4232 = icmp ne i32 %4231, 0
  br label %4233

; <label>:4233                                    ; preds = %4220, %4209
  %4234 = phi i1 [ %4232, %4220 ], [ false, %4209 ]
  %4235 = xor i1 %4234, true
  %4236 = uitofp i1 %4235 to float
  %4237 = fadd fast float %4213, %4236
  %4238 = sub i32 %63, %4188
  %4239 = or i32 %4238, %64
  %4240 = icmp slt i32 %4239, 0
  %4241 = icmp sge i32 %4238, %2541
  %4242 = or i1 %4241, %2593
  %4243 = or i1 %4240, %4242
  br i1 %4243, label %4257, label %4244, !dx.controlflow.hints !47

; <label>:4244                                    ; preds = %4233
  %4245 = lshr i32 %4238, 3
  %4246 = add i32 %81, %4245
  %4247 = add i32 %4246, %83
  %4248 = add i32 %4247, %86
  %4249 = shl i32 %4248, 2
  %4250 = and i32 %4238, 7
  %4251 = or i32 %4250, %93
  %4252 = shl i32 1, %4251
  %4253 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %4249, i32 undef)  ; BufferLoad(srv,index,wot)
  %4254 = extractvalue %dx.types.ResRet.i32 %4253, 0
  %4255 = and i32 %4254, %4252
  %4256 = icmp ne i32 %4255, 0
  br label %4257

; <label>:4257                                    ; preds = %4244, %4233
  %4258 = phi i1 [ %4256, %4244 ], [ false, %4233 ]
  %4259 = xor i1 %4258, true
  %4260 = uitofp i1 %4259 to float
  %4261 = fadd fast float %4237, %4260
  %4262 = add i32 %4188, %63
  %4263 = or i32 %4262, %64
  %4264 = icmp slt i32 %4263, 0
  %4265 = icmp sge i32 %4262, %2541
  %4266 = or i1 %4265, %2593
  %4267 = or i1 %4264, %4266
  br i1 %4267, label %4281, label %4268, !dx.controlflow.hints !47

; <label>:4268                                    ; preds = %4257
  %4269 = lshr i32 %4262, 3
  %4270 = add i32 %81, %4269
  %4271 = add i32 %4270, %83
  %4272 = add i32 %4271, %86
  %4273 = shl i32 %4272, 2
  %4274 = and i32 %4262, 7
  %4275 = or i32 %4274, %93
  %4276 = shl i32 1, %4275
  %4277 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %4273, i32 undef)  ; BufferLoad(srv,index,wot)
  %4278 = extractvalue %dx.types.ResRet.i32 %4277, 0
  %4279 = and i32 %4278, %4276
  %4280 = icmp ne i32 %4279, 0
  br label %4281

; <label>:4281                                    ; preds = %4268, %4257
  %4282 = phi i1 [ %4280, %4268 ], [ false, %4257 ]
  %4283 = xor i1 %4282, true
  %4284 = uitofp i1 %4283 to float
  %4285 = fadd fast float %4261, %4284
  %4286 = or i32 %4190, %4238
  %4287 = icmp slt i32 %4286, 0
  %4288 = or i1 %4241, %4193
  %4289 = or i1 %4287, %4288
  br i1 %4289, label %4307, label %4290, !dx.controlflow.hints !47

; <label>:4290                                    ; preds = %4281
  %4291 = lshr i32 %4190, 2
  %4292 = mul i32 %85, %4291
  %4293 = lshr i32 %4238, 3
  %4294 = add i32 %81, %4293
  %4295 = add i32 %4294, %83
  %4296 = add i32 %4295, %4292
  %4297 = shl i32 %4296, 2
  %4298 = shl i32 %4190, 3
  %4299 = and i32 %4298, 24
  %4300 = and i32 %4238, 7
  %4301 = or i32 %4299, %4300
  %4302 = shl i32 1, %4301
  %4303 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %4297, i32 undef)  ; BufferLoad(srv,index,wot)
  %4304 = extractvalue %dx.types.ResRet.i32 %4303, 0
  %4305 = and i32 %4304, %4302
  %4306 = icmp ne i32 %4305, 0
  br label %4307

; <label>:4307                                    ; preds = %4290, %4281
  %4308 = phi i1 [ %4306, %4290 ], [ false, %4281 ]
  %4309 = xor i1 %4308, true
  %4310 = uitofp i1 %4309 to float
  %4311 = fadd fast float %4285, %4310
  %4312 = or i32 %4190, %4262
  %4313 = icmp slt i32 %4312, 0
  %4314 = or i1 %4265, %4193
  %4315 = or i1 %4313, %4314
  br i1 %4315, label %4333, label %4316, !dx.controlflow.hints !47

; <label>:4316                                    ; preds = %4307
  %4317 = lshr i32 %4190, 2
  %4318 = mul i32 %85, %4317
  %4319 = lshr i32 %4262, 3
  %4320 = add i32 %81, %4319
  %4321 = add i32 %4320, %83
  %4322 = add i32 %4321, %4318
  %4323 = shl i32 %4322, 2
  %4324 = shl i32 %4190, 3
  %4325 = and i32 %4324, 24
  %4326 = and i32 %4262, 7
  %4327 = or i32 %4325, %4326
  %4328 = shl i32 1, %4327
  %4329 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %4323, i32 undef)  ; BufferLoad(srv,index,wot)
  %4330 = extractvalue %dx.types.ResRet.i32 %4329, 0
  %4331 = and i32 %4330, %4328
  %4332 = icmp ne i32 %4331, 0
  br label %4333

; <label>:4333                                    ; preds = %4316, %4307
  %4334 = phi i1 [ %4332, %4316 ], [ false, %4307 ]
  %4335 = xor i1 %4334, true
  %4336 = uitofp i1 %4335 to float
  %4337 = fadd fast float %4311, %4336
  %4338 = or i32 %4214, %4238
  %4339 = icmp slt i32 %4338, 0
  %4340 = or i1 %4241, %4217
  %4341 = or i1 %4339, %4340
  br i1 %4341, label %4359, label %4342, !dx.controlflow.hints !47

; <label>:4342                                    ; preds = %4333
  %4343 = lshr i32 %4214, 2
  %4344 = mul i32 %85, %4343
  %4345 = lshr i32 %4238, 3
  %4346 = add i32 %81, %4345
  %4347 = add i32 %4346, %83
  %4348 = add i32 %4347, %4344
  %4349 = shl i32 %4348, 2
  %4350 = shl i32 %4214, 3
  %4351 = and i32 %4350, 24
  %4352 = and i32 %4238, 7
  %4353 = or i32 %4351, %4352
  %4354 = shl i32 1, %4353
  %4355 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %4349, i32 undef)  ; BufferLoad(srv,index,wot)
  %4356 = extractvalue %dx.types.ResRet.i32 %4355, 0
  %4357 = and i32 %4356, %4354
  %4358 = icmp ne i32 %4357, 0
  br label %4359

; <label>:4359                                    ; preds = %4342, %4333
  %4360 = phi i1 [ %4358, %4342 ], [ false, %4333 ]
  %4361 = xor i1 %4360, true
  %4362 = uitofp i1 %4361 to float
  %4363 = fadd fast float %4337, %4362
  %4364 = or i32 %4214, %4262
  %4365 = icmp slt i32 %4364, 0
  %4366 = or i1 %4265, %4217
  %4367 = or i1 %4365, %4366
  br i1 %4367, label %4385, label %4368, !dx.controlflow.hints !47

; <label>:4368                                    ; preds = %4359
  %4369 = lshr i32 %4214, 2
  %4370 = mul i32 %85, %4369
  %4371 = lshr i32 %4262, 3
  %4372 = add i32 %81, %4371
  %4373 = add i32 %4372, %83
  %4374 = add i32 %4373, %4370
  %4375 = shl i32 %4374, 2
  %4376 = shl i32 %4214, 3
  %4377 = and i32 %4376, 24
  %4378 = and i32 %4262, 7
  %4379 = or i32 %4377, %4378
  %4380 = shl i32 1, %4379
  %4381 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %4375, i32 undef)  ; BufferLoad(srv,index,wot)
  %4382 = extractvalue %dx.types.ResRet.i32 %4381, 0
  %4383 = and i32 %4382, %4380
  %4384 = icmp ne i32 %4383, 0
  br label %4385

; <label>:4385                                    ; preds = %4368, %4359
  %4386 = phi i1 [ %4384, %4368 ], [ false, %4359 ]
  %4387 = xor i1 %4386, true
  %4388 = uitofp i1 %4387 to float
  %4389 = fadd fast float %4363, %4388
  %4390 = fmul fast float %2529, 1.000000e+01
  %4391 = fmul fast float %2530, 1.000000e+01
  %4392 = call float @dx.op.unary.f32(i32 28, float %4390)  ; Round_pi(value)
  %4393 = call float @dx.op.unary.f32(i32 28, float %4391)  ; Round_pi(value)
  %4394 = fptosi float %4392 to i32
  %4395 = fptosi float %4393 to i32
  %4396 = sub i32 %64, %4395
  %4397 = or i32 %4396, %63
  %4398 = icmp slt i32 %4397, 0
  %4399 = icmp sge i32 %4396, %2542
  %4400 = or i1 %2543, %4399
  %4401 = or i1 %4398, %4400
  br i1 %4401, label %4416, label %4402, !dx.controlflow.hints !47

; <label>:4402                                    ; preds = %4385
  %4403 = lshr i32 %4396, 2
  %4404 = mul i32 %85, %4403
  %4405 = add i32 %89, %4404
  %4406 = shl i32 %4405, 2
  %4407 = shl i32 %4396, 3
  %4408 = and i32 %4407, 24
  %4409 = or i32 %4408, %94
  %4410 = shl i32 1, %4409
  %4411 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %4406, i32 undef)  ; BufferLoad(srv,index,wot)
  %4412 = extractvalue %dx.types.ResRet.i32 %4411, 0
  %4413 = and i32 %4412, %4410
  %4414 = icmp eq i32 %4413, 0
  %4415 = uitofp i1 %4414 to float
  br label %4416

; <label>:4416                                    ; preds = %4402, %4385
  %4417 = phi float [ %4415, %4402 ], [ 1.000000e+00, %4385 ]
  %4418 = fadd fast float %4389, %4417
  %4419 = add i32 %4395, %64
  %4420 = or i32 %4419, %63
  %4421 = icmp slt i32 %4420, 0
  %4422 = icmp sge i32 %4419, %2542
  %4423 = or i1 %2543, %4422
  %4424 = or i1 %4421, %4423
  br i1 %4424, label %4439, label %4425, !dx.controlflow.hints !47

; <label>:4425                                    ; preds = %4416
  %4426 = lshr i32 %4419, 2
  %4427 = mul i32 %85, %4426
  %4428 = add i32 %89, %4427
  %4429 = shl i32 %4428, 2
  %4430 = shl i32 %4419, 3
  %4431 = and i32 %4430, 24
  %4432 = or i32 %4431, %94
  %4433 = shl i32 1, %4432
  %4434 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %4429, i32 undef)  ; BufferLoad(srv,index,wot)
  %4435 = extractvalue %dx.types.ResRet.i32 %4434, 0
  %4436 = and i32 %4435, %4433
  %4437 = icmp eq i32 %4436, 0
  %4438 = uitofp i1 %4437 to float
  br label %4439

; <label>:4439                                    ; preds = %4425, %4416
  %4440 = phi float [ %4438, %4425 ], [ 1.000000e+00, %4416 ]
  %4441 = fadd fast float %4418, %4440
  %4442 = sub i32 %63, %4394
  %4443 = or i32 %4442, %64
  %4444 = icmp slt i32 %4443, 0
  %4445 = icmp sge i32 %4442, %2541
  %4446 = or i1 %4445, %2593
  %4447 = or i1 %4444, %4446
  br i1 %4447, label %4462, label %4448, !dx.controlflow.hints !47

; <label>:4448                                    ; preds = %4439
  %4449 = lshr i32 %4442, 3
  %4450 = add i32 %81, %4449
  %4451 = add i32 %4450, %83
  %4452 = add i32 %4451, %86
  %4453 = shl i32 %4452, 2
  %4454 = and i32 %4442, 7
  %4455 = or i32 %4454, %93
  %4456 = shl i32 1, %4455
  %4457 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %4453, i32 undef)  ; BufferLoad(srv,index,wot)
  %4458 = extractvalue %dx.types.ResRet.i32 %4457, 0
  %4459 = and i32 %4458, %4456
  %4460 = icmp eq i32 %4459, 0
  %4461 = uitofp i1 %4460 to float
  br label %4462

; <label>:4462                                    ; preds = %4448, %4439
  %4463 = phi float [ %4461, %4448 ], [ 1.000000e+00, %4439 ]
  %4464 = fadd fast float %4441, %4463
  %4465 = add i32 %4394, %63
  %4466 = or i32 %4465, %64
  %4467 = icmp slt i32 %4466, 0
  %4468 = icmp sge i32 %4465, %2541
  %4469 = or i1 %4468, %2593
  %4470 = or i1 %4467, %4469
  br i1 %4470, label %4485, label %4471, !dx.controlflow.hints !47

; <label>:4471                                    ; preds = %4462
  %4472 = lshr i32 %4465, 3
  %4473 = add i32 %81, %4472
  %4474 = add i32 %4473, %83
  %4475 = add i32 %4474, %86
  %4476 = shl i32 %4475, 2
  %4477 = and i32 %4465, 7
  %4478 = or i32 %4477, %93
  %4479 = shl i32 1, %4478
  %4480 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %4476, i32 undef)  ; BufferLoad(srv,index,wot)
  %4481 = extractvalue %dx.types.ResRet.i32 %4480, 0
  %4482 = and i32 %4481, %4479
  %4483 = icmp eq i32 %4482, 0
  %4484 = uitofp i1 %4483 to float
  br label %4485

; <label>:4485                                    ; preds = %4471, %4462
  %4486 = phi float [ %4484, %4471 ], [ 1.000000e+00, %4462 ]
  %4487 = fadd fast float %4464, %4486
  %4488 = or i32 %4396, %4442
  %4489 = icmp slt i32 %4488, 0
  %4490 = or i1 %4445, %4399
  %4491 = or i1 %4489, %4490
  br i1 %4491, label %4510, label %4492, !dx.controlflow.hints !47

; <label>:4492                                    ; preds = %4485
  %4493 = lshr i32 %4396, 2
  %4494 = mul i32 %85, %4493
  %4495 = lshr i32 %4442, 3
  %4496 = add i32 %81, %4495
  %4497 = add i32 %4496, %83
  %4498 = add i32 %4497, %4494
  %4499 = shl i32 %4498, 2
  %4500 = shl i32 %4396, 3
  %4501 = and i32 %4500, 24
  %4502 = and i32 %4442, 7
  %4503 = or i32 %4501, %4502
  %4504 = shl i32 1, %4503
  %4505 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %4499, i32 undef)  ; BufferLoad(srv,index,wot)
  %4506 = extractvalue %dx.types.ResRet.i32 %4505, 0
  %4507 = and i32 %4506, %4504
  %4508 = icmp eq i32 %4507, 0
  %4509 = uitofp i1 %4508 to float
  br label %4510

; <label>:4510                                    ; preds = %4492, %4485
  %4511 = phi float [ %4509, %4492 ], [ 1.000000e+00, %4485 ]
  %4512 = fadd fast float %4487, %4511
  %4513 = or i32 %4396, %4465
  %4514 = icmp slt i32 %4513, 0
  %4515 = or i1 %4468, %4399
  %4516 = or i1 %4514, %4515
  br i1 %4516, label %4535, label %4517, !dx.controlflow.hints !47

; <label>:4517                                    ; preds = %4510
  %4518 = lshr i32 %4396, 2
  %4519 = mul i32 %85, %4518
  %4520 = lshr i32 %4465, 3
  %4521 = add i32 %81, %4520
  %4522 = add i32 %4521, %83
  %4523 = add i32 %4522, %4519
  %4524 = shl i32 %4523, 2
  %4525 = shl i32 %4396, 3
  %4526 = and i32 %4525, 24
  %4527 = and i32 %4465, 7
  %4528 = or i32 %4526, %4527
  %4529 = shl i32 1, %4528
  %4530 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %4524, i32 undef)  ; BufferLoad(srv,index,wot)
  %4531 = extractvalue %dx.types.ResRet.i32 %4530, 0
  %4532 = and i32 %4531, %4529
  %4533 = icmp eq i32 %4532, 0
  %4534 = uitofp i1 %4533 to float
  br label %4535

; <label>:4535                                    ; preds = %4517, %4510
  %4536 = phi float [ %4534, %4517 ], [ 1.000000e+00, %4510 ]
  %4537 = fadd fast float %4512, %4536
  %4538 = or i32 %4419, %4442
  %4539 = icmp slt i32 %4538, 0
  %4540 = or i1 %4445, %4422
  %4541 = or i1 %4539, %4540
  br i1 %4541, label %4560, label %4542, !dx.controlflow.hints !47

; <label>:4542                                    ; preds = %4535
  %4543 = lshr i32 %4419, 2
  %4544 = mul i32 %85, %4543
  %4545 = lshr i32 %4442, 3
  %4546 = add i32 %81, %4545
  %4547 = add i32 %4546, %83
  %4548 = add i32 %4547, %4544
  %4549 = shl i32 %4548, 2
  %4550 = shl i32 %4419, 3
  %4551 = and i32 %4550, 24
  %4552 = and i32 %4442, 7
  %4553 = or i32 %4551, %4552
  %4554 = shl i32 1, %4553
  %4555 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %4549, i32 undef)  ; BufferLoad(srv,index,wot)
  %4556 = extractvalue %dx.types.ResRet.i32 %4555, 0
  %4557 = and i32 %4556, %4554
  %4558 = icmp eq i32 %4557, 0
  %4559 = uitofp i1 %4558 to float
  br label %4560

; <label>:4560                                    ; preds = %4542, %4535
  %4561 = phi float [ %4559, %4542 ], [ 1.000000e+00, %4535 ]
  %4562 = fadd fast float %4537, %4561
  %4563 = or i32 %4419, %4465
  %4564 = icmp slt i32 %4563, 0
  %4565 = or i1 %4468, %4422
  %4566 = or i1 %4564, %4565
  br i1 %4566, label %4585, label %4567, !dx.controlflow.hints !47

; <label>:4567                                    ; preds = %4560
  %4568 = lshr i32 %4419, 2
  %4569 = mul i32 %85, %4568
  %4570 = lshr i32 %4465, 3
  %4571 = add i32 %81, %4570
  %4572 = add i32 %4571, %83
  %4573 = add i32 %4572, %4569
  %4574 = shl i32 %4573, 2
  %4575 = shl i32 %4419, 3
  %4576 = and i32 %4575, 24
  %4577 = and i32 %4465, 7
  %4578 = or i32 %4576, %4577
  %4579 = shl i32 1, %4578
  %4580 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %4574, i32 undef)  ; BufferLoad(srv,index,wot)
  %4581 = extractvalue %dx.types.ResRet.i32 %4580, 0
  %4582 = and i32 %4581, %4579
  %4583 = icmp eq i32 %4582, 0
  %4584 = uitofp i1 %4583 to float
  br label %4585

; <label>:4585                                    ; preds = %4567, %4560
  %4586 = phi float [ %4584, %4567 ], [ 1.000000e+00, %4560 ]
  %4587 = fadd fast float %4562, %4586
  %4588 = fmul fast float %2483, 1.500000e+00
  %4589 = fsub fast float 3.000000e+00, %4588
  %4590 = fdiv fast float 0x3FB99999A0000000, %4589
  %4591 = fmul fast float %2483, 2.000000e+00
  %4592 = fsub fast float 8.000000e+00, %4587
  %4593 = fsub fast float %4592, %4591
  %4594 = fmul fast float %4593, 4.000000e+00
  %4595 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4594)  ; FMax(a,b)
  %4596 = fadd fast float %4595, %4587
  %4597 = fmul fast float %4596, %4590
  %4598 = fadd fast float %2483, 1.500000e+00
  %4599 = fsub fast float 1.000000e+00, %4597
  %4600 = call float @dx.op.unary.f32(i32 7, float %4599)  ; Saturate(value)
  %4601 = call float @dx.op.unary.f32(i32 23, float %4600)  ; Log(value)
  %4602 = fmul fast float %4601, %4598
  %4603 = call float @dx.op.unary.f32(i32 21, float %4602)  ; Exp(value)
  %4604 = fmul fast float %2324, %2316
  %4605 = fmul fast float %2325, %2317
  %4606 = fmul fast float %2326, %2318
  %4607 = call float @dx.op.unary.f32(i32 23, float %2461)  ; Log(value)
  %4608 = fmul fast float %4607, 2.500000e-01
  %4609 = call float @dx.op.unary.f32(i32 21, float %4608)  ; Exp(value)
  %4610 = fmul fast float %2319, %2275
  %4611 = fmul fast float %4610, %2327
  %4612 = fmul fast float %4611, %4603
  %4613 = fmul fast float %4612, %4609
  br label %5179

; <label>:4614                                    ; preds = %613
  %4615 = and i32 %628, 511
  %4616 = mul nuw nsw i32 %4615, 20
  %4617 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %4616, i32 undef)  ; BufferLoad(srv,index,wot)
  %4618 = extractvalue %dx.types.ResRet.i32 %4617, 0
  %4619 = lshr i32 %4618, 24
  %4620 = uitofp i32 %4619 to float
  %4621 = add i32 %64, -1
  %4622 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %12, i32 0, i32 %63, i32 %4621, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4623 = extractvalue %dx.types.ResRet.i32 %4622, 0
  %4624 = lshr i32 %4623, 8
  %4625 = and i32 %4623, 255
  %4626 = and i32 %4624, 255
  %4627 = uitofp i32 %4625 to float
  %4628 = uitofp i32 %4626 to float
  %4629 = fmul fast float %4627, 0x3F80101020000000
  %4630 = fmul fast float %4628, 0x3F80101020000000
  %4631 = fadd fast float %4629, -1.000000e+00
  %4632 = fadd fast float %4630, -1.000000e+00
  %4633 = call float @dx.op.unary.f32(i32 6, float %4631)  ; FAbs(value)
  %4634 = fsub fast float 1.000000e+00, %4633
  %4635 = call float @dx.op.unary.f32(i32 6, float %4632)  ; FAbs(value)
  %4636 = fsub fast float %4634, %4635
  %4637 = fsub fast float -0.000000e+00, %4636
  %4638 = call float @dx.op.binary.f32(i32 35, float %4637, float 0.000000e+00)  ; FMax(a,b)
  %4639 = fcmp fast ogt float %4631, 0.000000e+00
  %4640 = fsub fast float -0.000000e+00, %4638
  %4641 = select i1 %4639, float %4640, float %4638
  %4642 = fadd fast float %4641, %4631
  %4643 = fcmp fast ogt float %4632, 0.000000e+00
  %4644 = select i1 %4643, float %4640, float %4638
  %4645 = fadd fast float %4644, %4632
  %4646 = call float @dx.op.dot3.f32(i32 55, float %4642, float %4645, float %4636, float %4642, float %4645, float %4636)  ; Dot3(ax,ay,az,bx,by,bz)
  %4647 = call float @dx.op.unary.f32(i32 25, float %4646)  ; Rsqrt(value)
  %4648 = fmul fast float %4642, %4647
  %4649 = fmul fast float %4645, %4647
  %4650 = fmul fast float %4647, %4636
  %4651 = add i32 %64, 1
  %4652 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %12, i32 0, i32 %63, i32 %4651, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4653 = extractvalue %dx.types.ResRet.i32 %4652, 0
  %4654 = lshr i32 %4653, 8
  %4655 = and i32 %4653, 255
  %4656 = and i32 %4654, 255
  %4657 = uitofp i32 %4655 to float
  %4658 = uitofp i32 %4656 to float
  %4659 = fmul fast float %4657, 0x3F80101020000000
  %4660 = fmul fast float %4658, 0x3F80101020000000
  %4661 = fadd fast float %4659, -1.000000e+00
  %4662 = fadd fast float %4660, -1.000000e+00
  %4663 = call float @dx.op.unary.f32(i32 6, float %4661)  ; FAbs(value)
  %4664 = fsub fast float 1.000000e+00, %4663
  %4665 = call float @dx.op.unary.f32(i32 6, float %4662)  ; FAbs(value)
  %4666 = fsub fast float %4664, %4665
  %4667 = fsub fast float -0.000000e+00, %4666
  %4668 = call float @dx.op.binary.f32(i32 35, float %4667, float 0.000000e+00)  ; FMax(a,b)
  %4669 = fcmp fast ogt float %4661, 0.000000e+00
  %4670 = fsub fast float -0.000000e+00, %4668
  %4671 = select i1 %4669, float %4670, float %4668
  %4672 = fadd fast float %4671, %4661
  %4673 = fcmp fast ogt float %4662, 0.000000e+00
  %4674 = select i1 %4673, float %4670, float %4668
  %4675 = fadd fast float %4674, %4662
  %4676 = call float @dx.op.dot3.f32(i32 55, float %4672, float %4675, float %4666, float %4672, float %4675, float %4666)  ; Dot3(ax,ay,az,bx,by,bz)
  %4677 = call float @dx.op.unary.f32(i32 25, float %4676)  ; Rsqrt(value)
  %4678 = fmul fast float %4672, %4677
  %4679 = fmul fast float %4675, %4677
  %4680 = fmul fast float %4677, %4666
  %4681 = add i32 %63, -1
  %4682 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %12, i32 0, i32 %4681, i32 %64, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4683 = extractvalue %dx.types.ResRet.i32 %4682, 0
  %4684 = lshr i32 %4683, 8
  %4685 = and i32 %4683, 255
  %4686 = and i32 %4684, 255
  %4687 = uitofp i32 %4685 to float
  %4688 = uitofp i32 %4686 to float
  %4689 = fmul fast float %4687, 0x3F80101020000000
  %4690 = fmul fast float %4688, 0x3F80101020000000
  %4691 = fadd fast float %4689, -1.000000e+00
  %4692 = fadd fast float %4690, -1.000000e+00
  %4693 = call float @dx.op.unary.f32(i32 6, float %4691)  ; FAbs(value)
  %4694 = fsub fast float 1.000000e+00, %4693
  %4695 = call float @dx.op.unary.f32(i32 6, float %4692)  ; FAbs(value)
  %4696 = fsub fast float %4694, %4695
  %4697 = fsub fast float -0.000000e+00, %4696
  %4698 = call float @dx.op.binary.f32(i32 35, float %4697, float 0.000000e+00)  ; FMax(a,b)
  %4699 = fcmp fast ogt float %4691, 0.000000e+00
  %4700 = fsub fast float -0.000000e+00, %4698
  %4701 = select i1 %4699, float %4700, float %4698
  %4702 = fadd fast float %4701, %4691
  %4703 = fcmp fast ogt float %4692, 0.000000e+00
  %4704 = select i1 %4703, float %4700, float %4698
  %4705 = fadd fast float %4704, %4692
  %4706 = call float @dx.op.dot3.f32(i32 55, float %4702, float %4705, float %4696, float %4702, float %4705, float %4696)  ; Dot3(ax,ay,az,bx,by,bz)
  %4707 = call float @dx.op.unary.f32(i32 25, float %4706)  ; Rsqrt(value)
  %4708 = fmul fast float %4702, %4707
  %4709 = fmul fast float %4705, %4707
  %4710 = fmul fast float %4707, %4696
  %4711 = add i32 %63, 1
  %4712 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %12, i32 0, i32 %4711, i32 %64, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4713 = extractvalue %dx.types.ResRet.i32 %4712, 0
  %4714 = lshr i32 %4713, 8
  %4715 = and i32 %4713, 255
  %4716 = and i32 %4714, 255
  %4717 = uitofp i32 %4715 to float
  %4718 = uitofp i32 %4716 to float
  %4719 = fmul fast float %4717, 0x3F80101020000000
  %4720 = fmul fast float %4718, 0x3F80101020000000
  %4721 = fadd fast float %4719, -1.000000e+00
  %4722 = fadd fast float %4720, -1.000000e+00
  %4723 = call float @dx.op.unary.f32(i32 6, float %4721)  ; FAbs(value)
  %4724 = fsub fast float 1.000000e+00, %4723
  %4725 = call float @dx.op.unary.f32(i32 6, float %4722)  ; FAbs(value)
  %4726 = fsub fast float %4724, %4725
  %4727 = fsub fast float -0.000000e+00, %4726
  %4728 = call float @dx.op.binary.f32(i32 35, float %4727, float 0.000000e+00)  ; FMax(a,b)
  %4729 = fcmp fast ogt float %4721, 0.000000e+00
  %4730 = fsub fast float -0.000000e+00, %4728
  %4731 = select i1 %4729, float %4730, float %4728
  %4732 = fadd fast float %4731, %4721
  %4733 = fcmp fast ogt float %4722, 0.000000e+00
  %4734 = select i1 %4733, float %4730, float %4728
  %4735 = fadd fast float %4734, %4722
  %4736 = call float @dx.op.dot3.f32(i32 55, float %4732, float %4735, float %4726, float %4732, float %4735, float %4726)  ; Dot3(ax,ay,az,bx,by,bz)
  %4737 = call float @dx.op.unary.f32(i32 25, float %4736)  ; Rsqrt(value)
  %4738 = fmul fast float %4732, %4737
  %4739 = fmul fast float %4735, %4737
  %4740 = fmul fast float %4737, %4726
  %4741 = call float @dx.op.dot3.f32(i32 55, float %4648, float %4649, float %4650, float %4678, float %4679, float %4680)  ; Dot3(ax,ay,az,bx,by,bz)
  %4742 = call float @dx.op.binary.f32(i32 36, float 1.000000e+00, float %4741)  ; FMin(a,b)
  %4743 = call float @dx.op.dot3.f32(i32 55, float %4648, float %4649, float %4650, float %4708, float %4709, float %4710)  ; Dot3(ax,ay,az,bx,by,bz)
  %4744 = call float @dx.op.binary.f32(i32 36, float %4742, float %4743)  ; FMin(a,b)
  %4745 = call float @dx.op.dot3.f32(i32 55, float %4648, float %4649, float %4650, float %4738, float %4739, float %4740)  ; Dot3(ax,ay,az,bx,by,bz)
  %4746 = call float @dx.op.binary.f32(i32 36, float %4744, float %4745)  ; FMin(a,b)
  %4747 = call float @dx.op.dot3.f32(i32 55, float %4678, float %4679, float %4680, float %4708, float %4709, float %4710)  ; Dot3(ax,ay,az,bx,by,bz)
  %4748 = call float @dx.op.binary.f32(i32 36, float %4746, float %4747)  ; FMin(a,b)
  %4749 = call float @dx.op.dot3.f32(i32 55, float %4678, float %4679, float %4680, float %4738, float %4739, float %4740)  ; Dot3(ax,ay,az,bx,by,bz)
  %4750 = call float @dx.op.binary.f32(i32 36, float %4748, float %4749)  ; FMin(a,b)
  %4751 = call float @dx.op.dot3.f32(i32 55, float %4708, float %4709, float %4710, float %4738, float %4739, float %4740)  ; Dot3(ax,ay,az,bx,by,bz)
  %4752 = call float @dx.op.binary.f32(i32 36, float %4750, float %4751)  ; FMin(a,b)
  %4753 = call float @dx.op.unary.f32(i32 7, float %4752)  ; Saturate(value)
  %4754 = fsub fast float 1.000000e+00, %4753
  %4755 = add nuw nsw i32 %4616, 12
  %4756 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %4755, i32 undef)  ; BufferLoad(srv,index,wot)
  %4757 = extractvalue %dx.types.ResRet.i32 %4756, 0
  %4758 = lshr i32 %4757, 16
  %4759 = uitofp i32 %4758 to float
  %4760 = fmul fast float %4759, 0x3EF0002000000000
  %4761 = add nuw nsw i32 %4616, 8
  %4762 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %4761, i32 undef)  ; BufferLoad(srv,index,wot)
  %4763 = extractvalue %dx.types.ResRet.i32 %4762, 0
  %4764 = lshr i32 %4763, 16
  %4765 = uitofp i32 %4764 to float
  %4766 = fmul fast float %4765, 0x3EF0002000000000
  %4767 = fsub fast float %45, %4766
  %4768 = fdiv fast float %4767, %4760
  %4769 = fmul fast float %68, %44
  %4770 = fmul fast float %4769, 4.000000e+02
  %4771 = fmul fast float %45, 4.000000e+02
  %4772 = call float @dx.op.unary.f32(i32 22, float %4770)  ; Frc(value)
  %4773 = call float @dx.op.unary.f32(i32 22, float %4771)  ; Frc(value)
  %4774 = fadd fast float %4772, -5.000000e-01
  %4775 = fadd fast float %4773, -5.000000e-01
  %4776 = fmul fast float %4774, 2.000000e+00
  %4777 = fmul fast float %4775, 2.000000e+00
  %4778 = call float @dx.op.dot2.f32(i32 54, float %4776, float %4777, float %4776, float %4777)  ; Dot2(ax,ay,bx,by)
  %4779 = call float @dx.op.unary.f32(i32 24, float %4778)  ; Sqrt(value)
  %4780 = fmul fast float %4779, 0x4004C77B00000000
  %4781 = fsub fast float 2.000000e+00, %4780
  %4782 = call float @dx.op.unary.f32(i32 7, float %4781)  ; Saturate(value)
  %4783 = fmul fast float %4620, 0x3F924C82A0000000
  %4784 = fmul fast float %4620, 0x3F78278DA0000000
  %4785 = fsub fast float 0x400E470B00000000, %4783
  %4786 = fadd fast float %4785, %4768
  %4787 = fmul fast float %4786, 1.000000e+01
  %4788 = call float @dx.op.unary.f32(i32 7, float %4787)  ; Saturate(value)
  %4789 = fsub fast float 0x3FE286BC80000000, %4784
  %4790 = fadd fast float %4789, %4768
  %4791 = fmul fast float %4790, 1.250000e+00
  %4792 = call float @dx.op.unary.f32(i32 7, float %4791)  ; Saturate(value)
  %4793 = fsub fast float 1.000000e+00, %4792
  %4794 = fmul fast float %4793, %4788
  %4795 = fmul fast float %4620, 0x3F8E317100000000
  %4796 = fsub fast float 0x40079435C0000000, %4795
  %4797 = fadd fast float %4796, %4768
  %4798 = fmul fast float %4797, 0x401AAAAAA0000000
  %4799 = call float @dx.op.unary.f32(i32 7, float %4798)  ; Saturate(value)
  %4800 = fsub fast float 1.000000e+00, %4799
  %4801 = fmul fast float %4800, %4788
  %4802 = fmul fast float %4769, 4.500000e+01
  %4803 = fmul fast float %45, 4.500000e+01
  %4804 = fadd fast float %4803, -5.000000e-01
  %4805 = fmul fast float %4769, 0x4039FB1300000000
  %4806 = fadd fast float %4805, 0xBFE279A720000000
  %4807 = call float @dx.op.unary.f32(i32 27, float %4805)  ; Round_ni(value)
  %4808 = call float @dx.op.unary.f32(i32 27, float %4803)  ; Round_ni(value)
  %4809 = call float @dx.op.unary.f32(i32 27, float %4806)  ; Round_ni(value)
  %4810 = call float @dx.op.unary.f32(i32 27, float %4804)  ; Round_ni(value)
  %4811 = fadd fast float %4807, 5.000000e-01
  %4812 = fadd fast float %4808, 5.000000e-01
  %4813 = fmul fast float %4811, 0x3FFBB67B20000000
  %4814 = fsub fast float %4802, %4813
  %4815 = fsub fast float %4803, %4812
  %4816 = fadd fast float %4809, 1.000000e+00
  %4817 = fmul fast float %4816, 0x3FFBB67B20000000
  %4818 = fsub fast float %4802, %4817
  %4819 = fadd fast float %4803, -1.000000e+00
  %4820 = fsub fast float %4819, %4810
  %4821 = call float @dx.op.dot2.f32(i32 54, float %4814, float %4815, float %4814, float %4815)  ; Dot2(ax,ay,bx,by)
  %4822 = call float @dx.op.dot2.f32(i32 54, float %4818, float %4820, float %4818, float %4820)  ; Dot2(ax,ay,bx,by)
  %4823 = fcmp fast olt float %4821, %4822
  %4824 = fadd fast float %4810, 1.000000e+00
  %4825 = select i1 %4823, float %4814, float %4818
  %4826 = select i1 %4823, float %4815, float %4820
  %4827 = select i1 %4823, float %4811, float %4816
  %4828 = select i1 %4823, float %4812, float %4824
  %4829 = call float @dx.op.unary.f32(i32 6, float %4825)  ; FAbs(value)
  %4830 = call float @dx.op.unary.f32(i32 6, float %4826)  ; FAbs(value)
  %4831 = call float @dx.op.dot2.f32(i32 54, float %4829, float %4830, float 0x3FEBB67B20000000, float 5.000000e-01)  ; Dot2(ax,ay,bx,by)
  %4832 = call float @dx.op.binary.f32(i32 35, float %4831, float %4830)  ; FMax(a,b)
  %4833 = fmul fast float %4827, 0x3F96C16C20000000
  %4834 = fmul fast float %4828, 0x3F96C16C20000000
  %4835 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %4836 = extractvalue %dx.types.CBufRet.f32 %4835, 3
  %4837 = call float @dx.op.unary.f32(i32 22, float %4836)  ; Frc(value)
  %4838 = fmul fast float %4837, 0x3FC99999A0000000
  %4839 = fadd fast float %4838, %4834
  %4840 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %14, float %4833, float %4839, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4841 = extractvalue %dx.types.ResRet.f32 %4840, 0
  %4842 = fsub fast float 0x3FEEB851E0000000, %4794
  %4843 = fmul fast float %4842, 0x3FF0AAAAC0000000
  %4844 = call float @dx.op.unary.f32(i32 7, float %4843)  ; Saturate(value)
  %4845 = fmul fast float %4844, 2.000000e+00
  %4846 = fsub fast float 3.000000e+00, %4845
  %4847 = fmul fast float %4844, %4844
  %4848 = fmul fast float %4847, %4846
  %4849 = fadd fast float %4832, 0xBFE0A3D700000000
  %4850 = fadd fast float %4849, %4848
  %4851 = fmul fast float %4850, -2.000000e+01
  %4852 = call float @dx.op.unary.f32(i32 7, float %4851)  ; Saturate(value)
  %4853 = fmul fast float %4852, 2.000000e+00
  %4854 = fsub fast float 3.000000e+00, %4853
  %4855 = fmul fast float %4849, -2.000000e+01
  %4856 = call float @dx.op.unary.f32(i32 7, float %4855)  ; Saturate(value)
  %4857 = fmul fast float %4856, 2.000000e+00
  %4858 = fsub fast float 3.000000e+00, %4857
  %4859 = fmul fast float %4856, %4856
  %4860 = fmul fast float %4859, %4858
  %4861 = fsub fast float 1.000000e+00, %4860
  %4862 = fmul fast float %4861, 0x3FE51EB860000000
  %4863 = fmul fast float %4832, 0x3FC99999A0000000
  %4864 = fsub fast float 1.000000e+00, %4832
  %4865 = fmul fast float %4852, %4852
  %4866 = fmul fast float %4865, %4832
  %4867 = fmul fast float %4866, %4854
  %4868 = fadd fast float %4867, %4864
  %4869 = fmul fast float %4868, %4841
  %4870 = fsub fast float 0x3FEEB851E0000000, %4801
  %4871 = fmul fast float %4870, 0x3FF0AAAAC0000000
  %4872 = call float @dx.op.unary.f32(i32 7, float %4871)  ; Saturate(value)
  %4873 = fmul fast float %4872, 2.000000e+00
  %4874 = fsub fast float 3.000000e+00, %4873
  %4875 = fmul fast float %4872, %4872
  %4876 = fmul fast float %4875, %4874
  %4877 = fadd fast float %4849, %4876
  %4878 = fmul fast float %4877, -2.000000e+01
  %4879 = call float @dx.op.unary.f32(i32 7, float %4878)  ; Saturate(value)
  %4880 = fmul fast float %4879, 2.000000e+00
  %4881 = fsub fast float 3.000000e+00, %4880
  %4882 = fmul fast float %4879, %4879
  %4883 = fmul fast float %4882, %4832
  %4884 = fmul fast float %4883, %4881
  %4885 = fadd fast float %4884, %4864
  %4886 = fmul fast float %4885, %4841
  %4887 = fadd fast float %4862, %4863
  %4888 = fadd fast float %4887, %4886
  %4889 = fmul fast float %4801, 2.000000e+00
  %4890 = fmul fast float %4889, %4888
  %4891 = fadd fast float %4887, %4869
  %4892 = fmul fast float %4891, %4794
  %4893 = fadd fast float %4892, %4890
  %4894 = fmul fast float %4782, 0x3FD99999A0000000
  %4895 = fmul fast float %4754, 0x3FE3333340000000
  %4896 = fadd fast float %4895, 0x3FE3333340000000
  %4897 = fadd fast float %4896, %4894
  %4898 = fmul fast float %4893, %4897
  %4899 = call float @dx.op.unary.f32(i32 23, float %4898)  ; Log(value)
  %4900 = fmul fast float %4899, 3.000000e+00
  %4901 = call float @dx.op.unary.f32(i32 21, float %4900)  ; Exp(value)
  %4902 = fmul fast float %4901, 0x3FF112D7C0000000
  %4903 = fmul fast float %4901, 0xBFF8A1CB00000000
  %4904 = fmul fast float %4903, %4902
  %4905 = call float @dx.op.unary.f32(i32 21, float %4904)  ; Exp(value)
  %4906 = fmul fast float %4901, 0x3FEDDA5080000000
  %4907 = fmul fast float %4901, 0xBFB16E5400000000
  %4908 = fmul fast float %4901, 0xBFEBAC8600000000
  %4909 = fmul fast float %4906, %4905
  %4910 = fmul fast float %4907, %4905
  %4911 = fmul fast float %4908, %4905
  %4912 = fadd fast float %4909, %4902
  %4913 = fadd fast float %4910, %4902
  %4914 = fadd fast float %4911, %4902
  %4915 = call float @dx.op.unary.f32(i32 20, float %4912)  ; Htan(value)
  %4916 = call float @dx.op.unary.f32(i32 20, float %4913)  ; Htan(value)
  %4917 = call float @dx.op.unary.f32(i32 20, float %4914)  ; Htan(value)
  %4918 = fmul fast float %4915, 5.000000e+00
  %4919 = fmul fast float %4916, 5.000000e+00
  %4920 = fmul fast float %4917, 5.000000e+00
  %4921 = call float @dx.op.unary.f32(i32 7, float %4918)  ; Saturate(value)
  %4922 = call float @dx.op.unary.f32(i32 7, float %4919)  ; Saturate(value)
  %4923 = call float @dx.op.unary.f32(i32 7, float %4920)  ; Saturate(value)
  %4924 = fmul fast float %4916, 3.000000e+00
  %4925 = call float @dx.op.unary.f32(i32 7, float %4924)  ; Saturate(value)
  br label %5179

; <label>:4926                                    ; preds = %613
  br i1 %108, label %4927, label %5179, !dx.controlflow.hints !55

; <label>:4927                                    ; preds = %4926
  %4928 = and i32 %628, 511
  %4929 = mul nuw nsw i32 %4928, 20
  %4930 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %4929, i32 undef)  ; BufferLoad(srv,index,wot)
  %4931 = extractvalue %dx.types.ResRet.i32 %4930, 0
  %4932 = and i32 %4931, 255
  %4933 = uitofp i32 %4932 to float
  %4934 = lshr i32 %4931, 8
  %4935 = and i32 %4934, 255
  %4936 = uitofp i32 %4935 to float
  %4937 = lshr i32 %4931, 16
  %4938 = and i32 %4937, 255
  %4939 = uitofp i32 %4938 to float
  %4940 = lshr i32 %4931, 24
  %4941 = uitofp i32 %4940 to float
  %4942 = fmul fast float %4941, 0x3F70101020000000
  %4943 = fsub fast float 1.000000e+00, %4942
  %4944 = add nuw nsw i32 %4929, 12
  %4945 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %4944, i32 undef)  ; BufferLoad(srv,index,wot)
  %4946 = extractvalue %dx.types.ResRet.i32 %4945, 0
  %4947 = and i32 %4946, 65535
  %4948 = uitofp i32 %4947 to float
  %4949 = fmul fast float %4948, 0x3EF0002000000000
  %4950 = lshr i32 %4946, 16
  %4951 = uitofp i32 %4950 to float
  %4952 = fmul fast float %4951, 0x3EF0002000000000
  %4953 = add nuw nsw i32 %4929, 8
  %4954 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %4953, i32 undef)  ; BufferLoad(srv,index,wot)
  %4955 = extractvalue %dx.types.ResRet.i32 %4954, 0
  %4956 = and i32 %4955, 65535
  %4957 = uitofp i32 %4956 to float
  %4958 = fmul fast float %4957, 0x3EF0002000000000
  %4959 = lshr i32 %4955, 16
  %4960 = uitofp i32 %4959 to float
  %4961 = fmul fast float %4960, 0x3EF0002000000000
  %4962 = fsub fast float %44, %4958
  %4963 = fdiv fast float %4962, %4949
  %4964 = fsub fast float %45, %4961
  %4965 = fdiv fast float %4964, %4952
  %4966 = add nuw nsw i32 %4929, 16
  %4967 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %4966, i32 undef)  ; BufferLoad(srv,index,wot)
  %4968 = extractvalue %dx.types.ResRet.f32 %4967, 0
  %4969 = fdiv fast float 2.400000e+02, %4968
  %4970 = call float @dx.op.unary.f32(i32 7, float %4969)  ; Saturate(value)
  %4971 = fmul fast float %4970, 4.000000e+01
  %4972 = fptoui float %4971 to i32
  %4973 = uitofp i32 %63 to float
  %4974 = uitofp i32 %64 to float
  %4975 = fptoui float %4973 to i32
  %4976 = fptoui float %4974 to i32
  %4977 = lshr i32 %4976, 2
  %4978 = mul i32 %85, %4977
  %4979 = lshr i32 %4975, 3
  %4980 = add i32 %81, %4979
  %4981 = add i32 %4980, %83
  %4982 = add i32 %4981, %4978
  %4983 = shl i32 %4982, 2
  %4984 = shl i32 %4976, 3
  %4985 = and i32 %4984, 24
  %4986 = and i32 %4975, 7
  %4987 = or i32 %4985, %4986
  %4988 = shl i32 1, %4987
  %4989 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %4983, i32 undef)  ; BufferLoad(srv,index,wot)
  %4990 = extractvalue %dx.types.ResRet.i32 %4989, 0
  %4991 = and i32 %4990, %4988
  %4992 = icmp ne i32 %4991, 0
  %4993 = icmp eq i32 %4972, 0
  br i1 %4993, label %5110, label %4994, !dx.controlflow.hints !50

; <label>:4994                                    ; preds = %4927
  %4995 = uitofp i32 %4972 to float
  %4996 = fmul fast float %65, 5.000000e-01
  %4997 = fmul fast float %4996, %4995
  %4998 = fmul fast float %66, 5.000000e-01
  %4999 = fmul fast float %4998, %4995
  %5000 = call float @dx.op.binary.f32(i32 35, float 5.000000e-01, float %4997)  ; FMax(a,b)
  %5001 = call float @dx.op.binary.f32(i32 35, float 5.000000e-01, float %4999)  ; FMax(a,b)
  br label %5002

; <label>:5002                                    ; preds = %5097, %4994
  %5003 = phi float [ 0.000000e+00, %4994 ], [ %5100, %5097 ]
  %5004 = phi i32 [ 0, %4994 ], [ %5101, %5097 ]
  %5005 = fmul fast float %44, 0x3FF280E1E0000000
  %5006 = fmul fast float %45, 0x3FF280E1E0000000
  %5007 = sitofp i32 %5004 to float
  %5008 = fmul fast float %5007, 0x3FB99999A0000000
  %5009 = fadd fast float %5008, %5005
  %5010 = fadd fast float %5008, %5006
  %5011 = fmul fast float %5009, 1.024000e+03
  %5012 = fmul fast float %5010, 1.024000e+03
  %5013 = fadd fast float %5011, -5.120000e+02
  %5014 = fadd fast float %5012, -5.120000e+02
  %5015 = fmul fast float %5009, 0x4081BEDF00000000
  %5016 = fadd fast float %5015, 0xC071BEDF00000000
  %5017 = call float @dx.op.unary.f32(i32 22, float %5016)  ; Frc(value)
  %5018 = fmul fast float %5013, %5017
  %5019 = fadd fast float %5018, %5014
  %5020 = fmul fast float %5010, 0x4073BEBE20000000
  %5021 = fadd fast float %5020, 0xC063BEBE20000000
  %5022 = call float @dx.op.unary.f32(i32 22, float %5021)  ; Frc(value)
  %5023 = fmul fast float %5014, %5022
  %5024 = fadd fast float %5023, %5013
  %5025 = fmul fast float %5019, %5024
  %5026 = call float @dx.op.unary.f32(i32 22, float %5025)  ; Frc(value)
  %5027 = fmul fast float %5026, 2.000000e+00
  %5028 = fadd fast float %5027, -1.000000e+00
  %5029 = fmul fast float %5028, %5000
  %5030 = fmul fast float %44, 0x3FEB681740000000
  %5031 = fmul fast float %45, 0x3FEB681740000000
  %5032 = fmul fast float %5007, 0x3FC99999A0000000
  %5033 = fadd fast float %5032, 1.250000e-01
  %5034 = fadd fast float %5033, %5030
  %5035 = fadd fast float %5033, %5031
  %5036 = fmul fast float %5034, 1.024000e+03
  %5037 = fmul fast float %5035, 1.024000e+03
  %5038 = fadd fast float %5036, -5.120000e+02
  %5039 = fadd fast float %5037, -5.120000e+02
  %5040 = fmul fast float %5034, 0x4081BEDF00000000
  %5041 = fadd fast float %5040, 0xC071BEDF00000000
  %5042 = call float @dx.op.unary.f32(i32 22, float %5041)  ; Frc(value)
  %5043 = fmul fast float %5038, %5042
  %5044 = fadd fast float %5043, %5039
  %5045 = fmul fast float %5035, 0x4073BEBE20000000
  %5046 = fadd fast float %5045, 0xC063BEBE20000000
  %5047 = call float @dx.op.unary.f32(i32 22, float %5046)  ; Frc(value)
  %5048 = fmul fast float %5039, %5047
  %5049 = fadd fast float %5048, %5038
  %5050 = fmul fast float %5044, %5049
  %5051 = call float @dx.op.unary.f32(i32 22, float %5050)  ; Frc(value)
  %5052 = fmul fast float %5051, 2.000000e+00
  %5053 = fadd fast float %5052, -1.000000e+00
  %5054 = fmul fast float %5053, %5001
  %5055 = fptosi float %5029 to i32
  %5056 = sitofp i32 %5055 to float
  %5057 = fadd fast float %5056, %4973
  %5058 = fptosi float %5057 to i32
  %5059 = fptosi float %5054 to i32
  %5060 = sitofp i32 %5059 to float
  %5061 = fadd fast float %5060, %4974
  %5062 = fptosi float %5061 to i32
  %5063 = or i32 %5062, %5058
  %5064 = icmp slt i32 %5063, 0
  %5065 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %5066 = extractvalue %dx.types.CBufRet.f32 %5065, 0
  %5067 = extractvalue %dx.types.CBufRet.f32 %5065, 1
  %5068 = fptosi float %5066 to i32
  %5069 = fptosi float %5067 to i32
  %5070 = icmp sge i32 %5058, %5068
  %5071 = icmp sge i32 %5062, %5069
  %5072 = or i1 %5070, %5071
  %5073 = or i1 %5064, %5072
  br i1 %5073, label %5097, label %5074, !dx.controlflow.hints !47

; <label>:5074                                    ; preds = %5002
  %5075 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %18, i32 51)  ; CBufferLoadLegacy(handle,regIndex)
  %5076 = extractvalue %dx.types.CBufRet.i32 %5075, 1
  %5077 = shl i32 %5076, 2
  %5078 = extractvalue %dx.types.CBufRet.i32 %5075, 3
  %5079 = shl i32 %5078, 1
  %5080 = lshr i32 %5062, 2
  %5081 = extractvalue %dx.types.CBufRet.i32 %5075, 2
  %5082 = mul i32 %5081, %5080
  %5083 = lshr i32 %5058, 3
  %5084 = add i32 %5077, %5083
  %5085 = add i32 %5084, %5079
  %5086 = add i32 %5085, %5082
  %5087 = shl i32 %5086, 2
  %5088 = shl i32 %5062, 3
  %5089 = and i32 %5088, 24
  %5090 = and i32 %5058, 7
  %5091 = or i32 %5089, %5090
  %5092 = shl i32 1, %5091
  %5093 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %5087, i32 undef)  ; BufferLoad(srv,index,wot)
  %5094 = extractvalue %dx.types.ResRet.i32 %5093, 0
  %5095 = and i32 %5094, %5092
  %5096 = icmp ne i32 %5095, 0
  br label %5097

; <label>:5097                                    ; preds = %5074, %5002
  %5098 = phi i1 [ %5096, %5074 ], [ false, %5002 ]
  %5099 = uitofp i1 %5098 to float
  %5100 = fadd fast float %5099, %5003
  %5101 = add nuw nsw i32 %5004, 1
  %5102 = icmp eq i32 %5101, 5
  br i1 %5102, label %5103, label %5002

; <label>:5103                                    ; preds = %5097
  %5104 = uitofp i1 %4992 to float
  %5105 = fmul fast float %5104, 0x3FC99999A0000000
  %5106 = fmul fast float %5105, %5100
  %5107 = fadd fast float %5106, -5.000000e-01
  %5108 = fmul fast float %5107, 2.000000e+00
  %5109 = call float @dx.op.unary.f32(i32 7, float %5108)  ; Saturate(value)
  br label %5110

; <label>:5110                                    ; preds = %5103, %4927
  %5111 = phi float [ %5109, %5103 ], [ 0.000000e+00, %4927 ]
  %5112 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %5113 = extractvalue %dx.types.CBufRet.f32 %5112, 3
  %5114 = fmul fast float %5113, 0x3F9EB851E0000000
  %5115 = fadd fast float %5114, %4965
  %5116 = call float @dx.op.unary.f32(i32 22, float %5115)  ; Frc(value)
  %5117 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %14, float %4963, float %5116, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5118 = extractvalue %dx.types.ResRet.f32 %5117, 3
  %5119 = call float @dx.op.unary.f32(i32 7, float %5111)  ; Saturate(value)
  %5120 = fmul fast float %5118, %4943
  %5121 = fsub fast float %5119, %5120
  %5122 = call float @dx.op.unary.f32(i32 7, float %5121)  ; Saturate(value)
  %5123 = fmul fast float %5118, 1.250000e+00
  %5124 = fsub fast float %5119, %5123
  %5125 = call float @dx.op.unary.f32(i32 7, float %5124)  ; Saturate(value)
  %5126 = fmul fast float %5125, 0x3FD3333340000000
  %5127 = fadd fast float %5126, %5122
  %5128 = fmul fast float %5127, %5127
  %5129 = fmul fast float %5128, %5127
  %5130 = call float @dx.op.unary.f32(i32 7, float %5129)  ; Saturate(value)
  %5131 = fmul fast float %5130, 0x3FEBD70A40000000
  %5132 = fsub fast float 1.000000e+00, %5131
  %5133 = call float @dx.op.unary.f32(i32 7, float %44)  ; Saturate(value)
  %5134 = call float @dx.op.unary.f32(i32 7, float %45)  ; Saturate(value)
  %5135 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %15, float %5133, float %5134, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5136 = extractvalue %dx.types.ResRet.f32 %5135, 0
  %5137 = bitcast float %5136 to i32
  %5138 = lshr i32 %5137, 8
  %5139 = and i32 %5137, 255
  %5140 = and i32 %5138, 255
  %5141 = uitofp i32 %5139 to float
  %5142 = uitofp i32 %5140 to float
  %5143 = fmul fast float %5141, 0x3F80101020000000
  %5144 = fmul fast float %5142, 0x3F80101020000000
  %5145 = fadd fast float %5143, -1.000000e+00
  %5146 = fadd fast float %5144, -1.000000e+00
  %5147 = call float @dx.op.unary.f32(i32 6, float %5145)  ; FAbs(value)
  %5148 = fsub fast float 1.000000e+00, %5147
  %5149 = call float @dx.op.unary.f32(i32 6, float %5146)  ; FAbs(value)
  %5150 = fsub fast float %5148, %5149
  %5151 = fsub fast float -0.000000e+00, %5150
  %5152 = call float @dx.op.binary.f32(i32 35, float %5151, float 0.000000e+00)  ; FMax(a,b)
  %5153 = fcmp fast ogt float %5145, 0.000000e+00
  %5154 = fsub fast float -0.000000e+00, %5152
  %5155 = select i1 %5153, float %5154, float %5152
  %5156 = fadd fast float %5155, %5145
  %5157 = fcmp fast ogt float %5146, 0.000000e+00
  %5158 = select i1 %5157, float %5154, float %5152
  %5159 = fadd fast float %5158, %5146
  %5160 = call float @dx.op.dot3.f32(i32 55, float %5156, float %5159, float %5150, float %5156, float %5159, float %5150)  ; Dot3(ax,ay,az,bx,by,bz)
  %5161 = call float @dx.op.unary.f32(i32 25, float %5160)  ; Rsqrt(value)
  %5162 = fmul fast float %5156, %5161
  %5163 = fmul fast float %5159, %5161
  %5164 = fmul fast float %5161, %5150
  %5165 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 101)  ; CBufferLoadLegacy(handle,regIndex)
  %5166 = extractvalue %dx.types.CBufRet.f32 %5165, 0
  %5167 = extractvalue %dx.types.CBufRet.f32 %5165, 1
  %5168 = extractvalue %dx.types.CBufRet.f32 %5165, 2
  %5169 = call float @dx.op.dot3.f32(i32 55, float %5162, float %5163, float %5164, float %5166, float %5167, float %5168)  ; Dot3(ax,ay,az,bx,by,bz)
  %5170 = fadd fast float %5169, 2.500000e-01
  %5171 = call float @dx.op.unary.f32(i32 6, float %5170)  ; FAbs(value)
  %5172 = fsub fast float 1.000000e+00, %5171
  %5173 = fmul fast float %4933, 0x3F7278DF60000000
  %5174 = fmul fast float %4936, 0x3F7278DF60000000
  %5175 = fmul fast float %4939, 0x3F7278DF60000000
  %5176 = fmul fast float %5173, %5172
  %5177 = fmul fast float %5174, %5172
  %5178 = fmul fast float %5175, %5172
  br label %5179

; <label>:5179                                    ; preds = %5110, %4926, %4614, %4585, %2511, %2500, %2236, %2005, %1769, %1767, %1604, %1490, %867, %864, %850, %848, %613, %608
  %5180 = phi float [ %4921, %4614 ], [ %2242, %2236 ], [ %609, %1604 ], [ %2104, %2005 ], [ %1599, %1490 ], [ %1290, %867 ], [ %609, %864 ], [ %609, %608 ], [ %860, %850 ], [ %742, %848 ], [ %1778, %1769 ], [ %1658, %1767 ], [ %2324, %2500 ], [ %4604, %4585 ], [ 0.000000e+00, %2511 ], [ %5176, %5110 ], [ 0.000000e+00, %4926 ], [ 1.000000e+00, %613 ]
  %5181 = phi float [ %4922, %4614 ], [ %2243, %2236 ], [ %610, %1604 ], [ %2105, %2005 ], [ %1600, %1490 ], [ %1291, %867 ], [ %610, %864 ], [ %610, %608 ], [ %861, %850 ], [ %743, %848 ], [ %1779, %1769 ], [ %1660, %1767 ], [ %2325, %2500 ], [ %4605, %4585 ], [ 0.000000e+00, %2511 ], [ %5177, %5110 ], [ 0.000000e+00, %4926 ], [ 0.000000e+00, %613 ]
  %5182 = phi float [ %4923, %4614 ], [ %2244, %2236 ], [ %611, %1604 ], [ %2106, %2005 ], [ %1601, %1490 ], [ %1292, %867 ], [ %611, %864 ], [ %611, %608 ], [ %862, %850 ], [ %744, %848 ], [ %1780, %1769 ], [ %1662, %1767 ], [ %2326, %2500 ], [ %4606, %4585 ], [ 0.000000e+00, %2511 ], [ %5178, %5110 ], [ 0.000000e+00, %4926 ], [ 0.000000e+00, %613 ]
  %5183 = phi float [ %4925, %4614 ], [ %2245, %2236 ], [ %612, %1604 ], [ %2108, %2005 ], [ %1603, %1490 ], [ %1293, %867 ], [ %612, %864 ], [ %612, %608 ], [ %863, %850 ], [ %745, %848 ], [ %1781, %1769 ], [ %1664, %1767 ], [ %2510, %2500 ], [ %4613, %4585 ], [ 0.000000e+00, %2511 ], [ %5132, %5110 ], [ 0.000000e+00, %4926 ], [ 1.000000e+00, %613 ]
  %5184 = fmul fast float %5183, %5180
  %5185 = fmul fast float %5183, %5181
  %5186 = fmul fast float %5183, %5182
  %5187 = fcmp fast ogt float %5183, 0.000000e+00
  %5188 = and i1 %100, %5187
  br i1 %5188, label %5189, label %5389, !dx.controlflow.hints !56

; <label>:5189                                    ; preds = %5179
  %5190 = add i32 %64, -1
  %5191 = or i32 %5190, %63
  %5192 = icmp slt i32 %5191, 0
  %5193 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %5194 = extractvalue %dx.types.CBufRet.f32 %5193, 0
  %5195 = extractvalue %dx.types.CBufRet.f32 %5193, 1
  %5196 = fptosi float %5194 to i32
  %5197 = fptosi float %5195 to i32
  %5198 = icmp sge i32 %63, %5196
  %5199 = icmp sge i32 %5190, %5197
  %5200 = or i1 %5198, %5199
  %5201 = or i1 %5192, %5200
  br i1 %5201, label %5223, label %5202, !dx.controlflow.hints !47

; <label>:5202                                    ; preds = %5189
  %5203 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %18, i32 51)  ; CBufferLoadLegacy(handle,regIndex)
  %5204 = extractvalue %dx.types.CBufRet.i32 %5203, 1
  %5205 = shl i32 %5204, 2
  %5206 = extractvalue %dx.types.CBufRet.i32 %5203, 3
  %5207 = shl i32 %5206, 1
  %5208 = lshr i32 %5190, 2
  %5209 = extractvalue %dx.types.CBufRet.i32 %5203, 2
  %5210 = mul i32 %5209, %5208
  %5211 = add i32 %5205, %87
  %5212 = add i32 %5211, %5207
  %5213 = add i32 %5212, %5210
  %5214 = shl i32 %5213, 2
  %5215 = shl i32 %5190, 3
  %5216 = and i32 %5215, 24
  %5217 = or i32 %5216, %94
  %5218 = shl i32 1, %5217
  %5219 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %5214, i32 undef)  ; BufferLoad(srv,index,wot)
  %5220 = extractvalue %dx.types.ResRet.i32 %5219, 0
  %5221 = and i32 %5220, %5218
  %5222 = icmp ne i32 %5221, 0
  br label %5223

; <label>:5223                                    ; preds = %5202, %5189
  %5224 = phi i1 [ %5222, %5202 ], [ false, %5189 ]
  %5225 = add i32 %64, 1
  %5226 = or i32 %5225, %63
  %5227 = icmp slt i32 %5226, 0
  %5228 = icmp sge i32 %5225, %5197
  %5229 = or i1 %5198, %5228
  %5230 = or i1 %5227, %5229
  br i1 %5230, label %5252, label %5231, !dx.controlflow.hints !47

; <label>:5231                                    ; preds = %5223
  %5232 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %18, i32 51)  ; CBufferLoadLegacy(handle,regIndex)
  %5233 = extractvalue %dx.types.CBufRet.i32 %5232, 1
  %5234 = shl i32 %5233, 2
  %5235 = extractvalue %dx.types.CBufRet.i32 %5232, 3
  %5236 = shl i32 %5235, 1
  %5237 = lshr i32 %5225, 2
  %5238 = extractvalue %dx.types.CBufRet.i32 %5232, 2
  %5239 = mul i32 %5238, %5237
  %5240 = add i32 %5234, %87
  %5241 = add i32 %5240, %5236
  %5242 = add i32 %5241, %5239
  %5243 = shl i32 %5242, 2
  %5244 = shl i32 %5225, 3
  %5245 = and i32 %5244, 24
  %5246 = or i32 %5245, %94
  %5247 = shl i32 1, %5246
  %5248 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %5243, i32 undef)  ; BufferLoad(srv,index,wot)
  %5249 = extractvalue %dx.types.ResRet.i32 %5248, 0
  %5250 = and i32 %5249, %5247
  %5251 = icmp ne i32 %5250, 0
  br label %5252

; <label>:5252                                    ; preds = %5231, %5223
  %5253 = phi i1 [ %5251, %5231 ], [ false, %5223 ]
  %5254 = and i1 %5224, %5253
  %5255 = add i32 %63, -1
  %5256 = or i32 %5255, %64
  %5257 = icmp slt i32 %5256, 0
  %5258 = icmp sge i32 %5255, %5196
  %5259 = icmp sge i32 %64, %5197
  %5260 = or i1 %5258, %5259
  %5261 = or i1 %5257, %5260
  br i1 %5261, label %5282, label %5262, !dx.controlflow.hints !47

; <label>:5262                                    ; preds = %5252
  %5263 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %18, i32 51)  ; CBufferLoadLegacy(handle,regIndex)
  %5264 = extractvalue %dx.types.CBufRet.i32 %5263, 1
  %5265 = shl i32 %5264, 2
  %5266 = extractvalue %dx.types.CBufRet.i32 %5263, 3
  %5267 = shl i32 %5266, 1
  %5268 = extractvalue %dx.types.CBufRet.i32 %5263, 2
  %5269 = mul i32 %5268, %84
  %5270 = lshr i32 %5255, 3
  %5271 = add i32 %5265, %5270
  %5272 = add i32 %5271, %5267
  %5273 = add i32 %5272, %5269
  %5274 = shl i32 %5273, 2
  %5275 = and i32 %5255, 7
  %5276 = or i32 %93, %5275
  %5277 = shl i32 1, %5276
  %5278 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %5274, i32 undef)  ; BufferLoad(srv,index,wot)
  %5279 = extractvalue %dx.types.ResRet.i32 %5278, 0
  %5280 = and i32 %5279, %5277
  %5281 = icmp ne i32 %5280, 0
  br label %5282

; <label>:5282                                    ; preds = %5262, %5252
  %5283 = phi i1 [ %5281, %5262 ], [ false, %5252 ]
  %5284 = and i1 %5254, %5283
  %5285 = add i32 %63, 1
  %5286 = or i32 %5285, %64
  %5287 = icmp slt i32 %5286, 0
  %5288 = icmp sge i32 %5285, %5196
  %5289 = or i1 %5288, %5259
  %5290 = or i1 %5287, %5289
  br i1 %5290, label %5311, label %5291, !dx.controlflow.hints !47

; <label>:5291                                    ; preds = %5282
  %5292 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %18, i32 51)  ; CBufferLoadLegacy(handle,regIndex)
  %5293 = extractvalue %dx.types.CBufRet.i32 %5292, 1
  %5294 = shl i32 %5293, 2
  %5295 = extractvalue %dx.types.CBufRet.i32 %5292, 3
  %5296 = shl i32 %5295, 1
  %5297 = extractvalue %dx.types.CBufRet.i32 %5292, 2
  %5298 = mul i32 %5297, %84
  %5299 = lshr i32 %5285, 3
  %5300 = add i32 %5294, %5299
  %5301 = add i32 %5300, %5296
  %5302 = add i32 %5301, %5298
  %5303 = shl i32 %5302, 2
  %5304 = and i32 %5285, 7
  %5305 = or i32 %93, %5304
  %5306 = shl i32 1, %5305
  %5307 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %5303, i32 undef)  ; BufferLoad(srv,index,wot)
  %5308 = extractvalue %dx.types.ResRet.i32 %5307, 0
  %5309 = and i32 %5308, %5306
  %5310 = icmp ne i32 %5309, 0
  br label %5311

; <label>:5311                                    ; preds = %5291, %5282
  %5312 = phi i1 [ %5310, %5291 ], [ false, %5282 ]
  %5313 = and i1 %5284, %5312
  %5314 = fmul fast float %5184, 5.000000e-01
  %5315 = fmul fast float %5185, 5.000000e-01
  %5316 = fmul fast float %5186, 5.000000e-01
  %5317 = fmul fast float %5183, 5.000000e-01
  %5318 = select i1 %5313, float %5184, float %5314
  %5319 = select i1 %5313, float %5185, float %5315
  %5320 = select i1 %5313, float %5186, float %5316
  %5321 = select i1 %5313, float %5183, float %5317
  %5322 = fmul fast float %5194, %44
  %5323 = fmul fast float %5195, %45
  %5324 = fptoui float %5322 to i32
  %5325 = fptoui float %5323 to i32
  %5326 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %13, i32 0, i32 %5324, i32 %5325, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5327 = extractvalue %dx.types.ResRet.f32 %5326, 2
  %5328 = extractvalue %dx.types.ResRet.f32 %5326, 3
  %5329 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %18, i32 240)  ; CBufferLoadLegacy(handle,regIndex)
  %5330 = extractvalue %dx.types.CBufRet.i32 %5329, 0
  %5331 = icmp ne i32 %5330, 0
  %5332 = call float @dx.op.unary.f32(i32 6, float %5327)  ; FAbs(value)
  %5333 = call float @dx.op.unary.f32(i32 6, float %5328)  ; FAbs(value)
  %5334 = fadd fast float %5332, -5.000000e-01
  %5335 = fadd fast float %5333, -5.000000e-01
  %5336 = fmul fast float %5334, 2.000000e+00
  %5337 = fmul fast float %5335, 2.000000e+00
  %5338 = call float @dx.op.unary.f32(i32 7, float %5336)  ; Saturate(value)
  %5339 = call float @dx.op.unary.f32(i32 7, float %5337)  ; Saturate(value)
  %5340 = fmul fast float %5332, 2.000000e+00
  %5341 = fmul fast float %5333, 2.000000e+00
  %5342 = call float @dx.op.unary.f32(i32 7, float %5340)  ; Saturate(value)
  %5343 = call float @dx.op.unary.f32(i32 7, float %5341)  ; Saturate(value)
  %5344 = fmul fast float %5338, %5338
  %5345 = fmul fast float %5344, 0x3FA48888A0000000
  %5346 = fmul fast float %5339, %5339
  %5347 = fmul fast float %5346, 0x3FB2407960000000
  %5348 = fmul fast float %5342, 0x3F599999A0000000
  %5349 = fmul fast float %5343, 0x3F66C16C20000000
  %5350 = fadd fast float %5348, %5345
  %5351 = fadd fast float %5349, %5347
  %5352 = fsub fast float -0.000000e+00, %5350
  %5353 = fsub fast float -0.000000e+00, %5351
  %5354 = fcmp fast olt float %5327, 0.000000e+00
  %5355 = fcmp fast olt float %5328, 0.000000e+00
  %5356 = select i1 %5354, float 0.000000e+00, float 1.000000e+00
  %5357 = select i1 %5355, float 0.000000e+00, float 1.000000e+00
  %5358 = fcmp fast une float %5356, 0.000000e+00
  %5359 = fcmp fast une float %5357, 0.000000e+00
  %5360 = select i1 %5358, float %5350, float %5352
  %5361 = select i1 %5359, float %5351, float %5353
  %5362 = select i1 %5331, float %5327, float %5360
  %5363 = select i1 %5331, float %5328, float %5361
  %5364 = call float @dx.op.unary.f32(i32 6, float %5362)  ; FAbs(value)
  %5365 = call float @dx.op.unary.f32(i32 6, float %5363)  ; FAbs(value)
  %5366 = call float @dx.op.dot2.f32(i32 54, float %5364, float %5365, float %5194, float %5195)  ; Dot2(ax,ay,bx,by)
  %5367 = fsub fast float 1.000000e+00, %5366
  %5368 = call float @dx.op.unary.f32(i32 7, float %5367)  ; Saturate(value)
  %5369 = fmul fast float %5368, 7.500000e-01
  %5370 = fsub fast float %44, %5362
  %5371 = fsub fast float %45, %5363
  %5372 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %15, float %5370, float %5371, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5373 = extractvalue %dx.types.ResRet.f32 %5372, 0
  %5374 = extractvalue %dx.types.ResRet.f32 %5372, 1
  %5375 = extractvalue %dx.types.ResRet.f32 %5372, 2
  %5376 = extractvalue %dx.types.ResRet.f32 %5372, 3
  %5377 = fsub fast float %5373, %5318
  %5378 = fsub fast float %5374, %5319
  %5379 = fsub fast float %5375, %5320
  %5380 = fsub fast float %5376, %5321
  %5381 = fmul fast float %5377, %5369
  %5382 = fmul fast float %5378, %5369
  %5383 = fmul fast float %5379, %5369
  %5384 = fmul fast float %5380, %5369
  %5385 = fadd fast float %5381, %5318
  %5386 = fadd fast float %5382, %5319
  %5387 = fadd fast float %5383, %5320
  %5388 = fadd fast float %5384, %5321
  br label %5389

; <label>:5389                                    ; preds = %5311, %5179
  %5390 = phi float [ %5385, %5311 ], [ %5184, %5179 ]
  %5391 = phi float [ %5386, %5311 ], [ %5185, %5179 ]
  %5392 = phi float [ %5387, %5311 ], [ %5186, %5179 ]
  %5393 = phi float [ %5388, %5311 ], [ %5183, %5179 ]
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %35, i32 %36, i32 undef, float %5390, float %5391, float %5392, float %5393, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %5394 = and i1 %5187, %109
  %5395 = zext i1 %5394 to i32
  %5396 = mul i32 %19, 8
  %5397 = add i32 %20, %5396
  %5398 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?gsHudOutlineMask1@@3PAY07$$CAIA.1dim", i32 0, i32 %5397
  store i32 %5395, i32 addrspace(3)* %5398, align 4, !tbaa !57
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %5399 = or i32 %20, %19
  %5400 = icmp ult i32 %5399, 4
  br i1 %5400, label %5401, label %5425, !dx.controlflow.hints !61

; <label>:5401                                    ; preds = %5389
  %5402 = shl i32 %19, 1
  %5403 = shl i32 %20, 1
  %5404 = mul i32 %5402, 8
  %5405 = add i32 %5403, %5404
  %5406 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?gsHudOutlineMask1@@3PAY07$$CAIA.1dim", i32 0, i32 %5405
  %5407 = load i32, i32 addrspace(3)* %5406, align 4, !tbaa !57
  %5408 = or i32 %5403, 1
  %5409 = mul i32 %5402, 8
  %5410 = add i32 %5408, %5409
  %5411 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?gsHudOutlineMask1@@3PAY07$$CAIA.1dim", i32 0, i32 %5410
  %5412 = load i32, i32 addrspace(3)* %5411, align 4, !tbaa !57
  %5413 = or i32 %5402, 1
  %5414 = mul i32 %5413, 8
  %5415 = add i32 %5408, %5414
  %5416 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?gsHudOutlineMask1@@3PAY07$$CAIA.1dim", i32 0, i32 %5415
  %5417 = load i32, i32 addrspace(3)* %5416, align 4, !tbaa !57
  %5418 = mul i32 %5413, 8
  %5419 = add i32 %5403, %5418
  %5420 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?gsHudOutlineMask1@@3PAY07$$CAIA.1dim", i32 0, i32 %5419
  %5421 = load i32, i32 addrspace(3)* %5420, align 4, !tbaa !57
  %5422 = or i32 %5412, %5407
  %5423 = or i32 %5422, %5417
  %5424 = or i32 %5423, %5421
  store i32 %5424, i32 addrspace(3)* %5398, align 4, !tbaa !57
  br label %5425

; <label>:5425                                    ; preds = %5401, %5389
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %5426 = icmp ult i32 %5399, 2
  br i1 %5426, label %5427, label %5457, !dx.controlflow.hints !62

; <label>:5427                                    ; preds = %5425
  %5428 = shl i32 %19, 1
  %5429 = shl i32 %20, 1
  %5430 = mul i32 %5428, 8
  %5431 = add i32 %5429, %5430
  %5432 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?gsHudOutlineMask1@@3PAY07$$CAIA.1dim", i32 0, i32 %5431
  %5433 = load i32, i32 addrspace(3)* %5432, align 4, !tbaa !57
  %5434 = or i32 %5429, 1
  %5435 = mul i32 %5428, 8
  %5436 = add i32 %5434, %5435
  %5437 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?gsHudOutlineMask1@@3PAY07$$CAIA.1dim", i32 0, i32 %5436
  %5438 = load i32, i32 addrspace(3)* %5437, align 4, !tbaa !57
  %5439 = or i32 %5428, 1
  %5440 = mul i32 %5439, 8
  %5441 = add i32 %5434, %5440
  %5442 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?gsHudOutlineMask1@@3PAY07$$CAIA.1dim", i32 0, i32 %5441
  %5443 = load i32, i32 addrspace(3)* %5442, align 4, !tbaa !57
  %5444 = mul i32 %5439, 8
  %5445 = add i32 %5429, %5444
  %5446 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?gsHudOutlineMask1@@3PAY07$$CAIA.1dim", i32 0, i32 %5445
  %5447 = load i32, i32 addrspace(3)* %5446, align 4, !tbaa !57
  %5448 = or i32 %5438, %5433
  %5449 = or i32 %5448, %5443
  %5450 = or i32 %5449, %5447
  %5451 = icmp ne i32 %5450, 0
  %5452 = select i1 %5451, float 1.000000e+00, float 0.000000e+00
  %5453 = lshr i32 %35, 2
  %5454 = lshr i32 %36, 2
  %5455 = add i32 %5453, %19
  %5456 = add i32 %5454, %20
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %5455, i32 %5456, i32 undef, float %5452, float %5452, float %5452, float %5452, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %5457

; <label>:5457                                    ; preds = %5427, %5425, %0
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
!47 = distinct !{!47, !"dx.controlflow.hints", i32 2}
!48 = distinct !{!48, !"dx.controlflow.hints", i32 1}
!49 = distinct !{!49, !"dx.controlflow.hints", i32 2}
!50 = distinct !{!50, !"dx.controlflow.hints", i32 1}
!51 = distinct !{!51, !"dx.controlflow.hints", i32 2}
!52 = distinct !{!52, !"dx.controlflow.hints", i32 2}
!53 = distinct !{!53, !"dx.controlflow.hints", i32 1}
!54 = distinct !{!54, !"dx.controlflow.hints", i32 2}
!55 = distinct !{!55, !"dx.controlflow.hints", i32 2}
!56 = distinct !{!56, !"dx.controlflow.hints", i32 1}
!57 = !{!58, !58, i64 0}
!58 = !{!"int", !59, i64 0}
!59 = !{!"omnipotent char", !60, i64 0}
!60 = !{!"Simple C/C++ TBAA"}
!61 = distinct !{!61, !"dx.controlflow.hints", i32 2}
!62 = distinct !{!62, !"dx.controlflow.hints", i32 2}

