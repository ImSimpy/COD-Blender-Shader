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
; shader hash: 700f63ef1cb263ce12d4e5a18e9da4ca
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
  %22 = shl i32 %21, 8
  %23 = add i32 %22, %20
  %24 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %15, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %25 = extractvalue %dx.types.CBufRet.i32 %24, 3
  %26 = icmp ult i32 %23, %25
  br i1 %26, label %27, label %5237, !dx.controlflow.hints !32

; <label>:27                                      ; preds = %0
  %28 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %23, i32 0)  ; BufferLoad(srv,index,wot)
  %29 = extractvalue %dx.types.ResRet.i32 %28, 0
  %30 = shl i32 %29, 3
  %31 = and i32 %30, 524280
  %32 = lshr i32 %29, 13
  %33 = and i32 %32, 32760
  %34 = add i32 %31, %18
  %35 = add i32 %33, %19
  %36 = uitofp i32 %34 to float
  %37 = uitofp i32 %35 to float
  %38 = fadd fast float %36, 5.000000e-01
  %39 = fadd fast float %37, 5.000000e-01
  %40 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %41 = extractvalue %dx.types.CBufRet.f32 %40, 2
  %42 = extractvalue %dx.types.CBufRet.f32 %40, 3
  %43 = fmul fast float %38, %41
  %44 = fmul fast float %39, %42
  %45 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %46 = extractvalue %dx.types.CBufRet.f32 %45, 0
  %47 = extractvalue %dx.types.CBufRet.f32 %45, 1
  %48 = fmul fast float %43, %46
  %49 = fmul fast float %44, %47
  %50 = frem fast float %48, 1.200000e+01
  %51 = frem fast float %49, 1.200000e+01
  %52 = fptoui float %50 to i32
  %53 = fptoui float %51 to i32
  %54 = icmp eq i32 %52, 0
  %55 = icmp eq i32 %53, 0
  %56 = and i32 %52, 14
  %57 = and i32 %53, 14
  %58 = extractvalue %dx.types.CBufRet.f32 %40, 0
  %59 = extractvalue %dx.types.CBufRet.f32 %40, 1
  %60 = fmul fast float %43, %58
  %61 = fmul fast float %44, %59
  %62 = fptoui float %60 to i32
  %63 = fptoui float %61 to i32
  %64 = fdiv fast float %58, %46
  %65 = fdiv fast float %59, %47
  %66 = fdiv fast float %46, %47
  %67 = call float @dx.op.binary.f32(i32 35, float 1.000000e+00, float %66)  ; FMax(a,b)
  %68 = fdiv fast float %47, %46
  %69 = call float @dx.op.binary.f32(i32 35, float 1.000000e+00, float %68)  ; FMax(a,b)
  %70 = icmp ne i32 %57, 6
  %71 = and i1 %54, %70
  %72 = icmp ne i32 %56, 6
  %73 = and i1 %55, %72
  %74 = or i1 %73, %71
  %75 = fptoui float %49 to i32
  %76 = and i32 %75, 2
  %77 = icmp ne i32 %76, 0
  %78 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %17, i32 51)  ; CBufferLoadLegacy(handle,regIndex)
  %79 = extractvalue %dx.types.CBufRet.i32 %78, 1
  %80 = shl i32 %79, 2
  %81 = extractvalue %dx.types.CBufRet.i32 %78, 3
  %82 = shl i32 %81, 1
  %83 = lshr i32 %63, 2
  %84 = extractvalue %dx.types.CBufRet.i32 %78, 2
  %85 = mul i32 %84, %83
  %86 = lshr i32 %62, 3
  %87 = add i32 %80, %86
  %88 = add i32 %87, %82
  %89 = add i32 %88, %85
  %90 = shl i32 %89, 2
  %91 = shl i32 %63, 3
  %92 = and i32 %91, 24
  %93 = and i32 %62, 7
  %94 = or i32 %92, %93
  %95 = shl i32 1, %94
  %96 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %90, i32 undef)  ; BufferLoad(srv,index,wot)
  %97 = extractvalue %dx.types.ResRet.i32 %96, 0
  %98 = and i32 %97, %95
  %99 = icmp eq i32 %98, 0
  %100 = mul i32 %81, 3
  %101 = add i32 %87, %100
  %102 = add i32 %101, %85
  %103 = shl i32 %102, 2
  %104 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %103, i32 undef)  ; BufferLoad(srv,index,wot)
  %105 = extractvalue %dx.types.ResRet.i32 %104, 0
  %106 = and i32 %105, %95
  %107 = icmp ne i32 %106, 0
  %108 = xor i1 %107, true
  %109 = icmp ugt i32 %29, 268435455
  br i1 %109, label %110, label %607, !dx.controlflow.hints !33

; <label>:110                                     ; preds = %27
  %111 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %9, i32 0, i32 %34, i32 %35, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %112 = extractvalue %dx.types.ResRet.f32 %111, 0
  %113 = fcmp fast ogt float %112, -1.000000e+00
  %114 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %115 = extractvalue %dx.types.CBufRet.f32 %114, 1
  %116 = select i1 %113, float %115, float 1.000000e+00
  %117 = fadd fast float %112, 1.000000e+00
  %118 = fmul fast float %116, %117
  %119 = call float @dx.op.unary.f32(i32 6, float %118)  ; FAbs(value)
  %120 = extractvalue %dx.types.CBufRet.f32 %114, 3
  %121 = fcmp ult float %119, %120
  %122 = fcmp uge float %112, -1.000000e+00
  %123 = and i1 %122, %121
  br i1 %123, label %124, label %607, !dx.controlflow.hints !34

; <label>:124                                     ; preds = %110
  %125 = fmul fast float %43, 2.000000e+00
  %126 = fmul fast float %44, 2.000000e+00
  %127 = fsub fast float 1.000000e+00, %125
  %128 = fsub fast float 1.000000e+00, %126
  %129 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %130 = extractvalue %dx.types.CBufRet.f32 %129, 0
  %131 = extractvalue %dx.types.CBufRet.f32 %129, 1
  %132 = extractvalue %dx.types.CBufRet.f32 %129, 2
  %133 = fmul fast float %130, %127
  %134 = fmul fast float %131, %127
  %135 = fmul fast float %132, %127
  %136 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %137 = extractvalue %dx.types.CBufRet.f32 %136, 0
  %138 = extractvalue %dx.types.CBufRet.f32 %136, 1
  %139 = extractvalue %dx.types.CBufRet.f32 %136, 2
  %140 = fmul fast float %137, %128
  %141 = fmul fast float %138, %128
  %142 = fmul fast float %139, %128
  %143 = fadd fast float %140, %133
  %144 = fadd fast float %141, %134
  %145 = fadd fast float %142, %135
  %146 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %147 = extractvalue %dx.types.CBufRet.f32 %146, 0
  %148 = extractvalue %dx.types.CBufRet.f32 %146, 1
  %149 = extractvalue %dx.types.CBufRet.f32 %146, 2
  %150 = fadd fast float %143, %147
  %151 = fadd fast float %144, %148
  %152 = fadd fast float %145, %149
  %153 = fmul fast float %150, %150
  %154 = fmul fast float %151, %151
  %155 = fadd fast float %153, %154
  %156 = fmul fast float %152, %152
  %157 = fadd fast float %155, %156
  %158 = call float @dx.op.unary.f32(i32 24, float %157)  ; Sqrt(value)
  %159 = fdiv fast float 1.000000e+00, %158
  %160 = fmul fast float %150, %159
  %161 = fmul fast float %151, %159
  %162 = fmul fast float %152, %159
  %163 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %164 = extractvalue %dx.types.CBufRet.f32 %163, 0
  %165 = extractvalue %dx.types.CBufRet.f32 %163, 1
  %166 = extractvalue %dx.types.CBufRet.f32 %163, 2
  %167 = fmul fast float %164, 9.687500e-01
  %168 = fmul fast float %165, 9.687500e-01
  %169 = fmul fast float %166, 9.687500e-01
  %170 = fadd fast float %167, 1.562500e-02
  %171 = fadd fast float %168, 1.562500e-02
  %172 = fadd fast float %169, 1.562500e-02
  %173 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %13, float %170, float %171, float %172, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %174 = extractvalue %dx.types.ResRet.f32 %173, 0
  %175 = extractvalue %dx.types.ResRet.f32 %173, 1
  %176 = extractvalue %dx.types.ResRet.f32 %173, 2
  %177 = fmul fast float %158, %119
  %178 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %17, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %179 = extractvalue %dx.types.CBufRet.i32 %178, 0
  %180 = icmp eq i32 %179, 0
  br i1 %180, label %390, label %181

; <label>:181                                     ; preds = %124
  br label %182

; <label>:182                                     ; preds = %383, %181
  %183 = phi float [ %384, %383 ], [ 0.000000e+00, %181 ]
  %184 = phi i32 [ %385, %383 ], [ 0, %181 ]
  %185 = add i32 %184, 171
  %186 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 %185)  ; CBufferLoadLegacy(handle,regIndex)
  %187 = extractvalue %dx.types.CBufRet.f32 %186, 2
  %188 = extractvalue %dx.types.CBufRet.f32 %186, 0
  %189 = extractvalue %dx.types.CBufRet.f32 %186, 1
  %190 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %191 = extractvalue %dx.types.CBufRet.f32 %190, 0
  %192 = extractvalue %dx.types.CBufRet.f32 %190, 1
  %193 = fsub fast float %188, %191
  %194 = fsub fast float %189, %192
  %195 = fsub fast float -0.000000e+00, %193
  %196 = fsub fast float -0.000000e+00, %194
  %197 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %160, float %161, float %162)  ; Dot3(ax,ay,az,bx,by,bz)
  %198 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %195, float %196, float 0.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %199 = fmul fast float %197, %197
  %200 = fsub fast float 1.000000e+00, %199
  %201 = call float @dx.op.dot3.f32(i32 55, float %195, float %196, float 0.000000e+00, float %160, float %161, float %162)  ; Dot3(ax,ay,az,bx,by,bz)
  %202 = fmul fast float %198, %197
  %203 = fsub fast float %201, %202
  %204 = call float @dx.op.dot3.f32(i32 55, float %195, float %196, float 0.000000e+00, float %195, float %196, float 0.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %205 = fmul fast float %198, %198
  %206 = fmul fast float %187, %187
  %207 = fsub fast float -0.000000e+00, %206
  %208 = fsub fast float %207, %205
  %209 = fadd fast float %208, %204
  %210 = fmul fast float %203, %203
  %211 = fmul fast float %209, %200
  %212 = fsub fast float %210, %211
  %213 = fcmp fast ult float %212, 0.000000e+00
  br i1 %213, label %383, label %214, !dx.controlflow.hints !35

; <label>:214                                     ; preds = %182
  %215 = call float @dx.op.unary.f32(i32 24, float %212)  ; Sqrt(value)
  %216 = fsub fast float -0.000000e+00, %203
  %217 = fsub fast float %216, %215
  %218 = fsub fast float %215, %203
  %219 = fdiv fast float %217, %200
  %220 = fdiv fast float %218, %200
  %221 = fcmp fast ole float %219, 0.000000e+00
  %222 = fcmp fast ole float %220, 0.000000e+00
  %223 = and i1 %221, %222
  br i1 %223, label %383, label %224, !dx.controlflow.hints !36

; <label>:224                                     ; preds = %214
  %225 = fmul fast float %219, %160
  %226 = fmul fast float %219, %161
  %227 = fmul fast float %219, %162
  %228 = fmul fast float %220, %160
  %229 = fmul fast float %220, %161
  %230 = fmul fast float %220, %162
  %231 = zext i1 %221 to i32
  %232 = zext i1 %222 to i32
  %233 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %17, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %234 = extractvalue %dx.types.CBufRet.i32 %233, 0
  %235 = icmp eq i32 %234, 0
  br i1 %235, label %280, label %236

; <label>:236                                     ; preds = %224
  br label %237

; <label>:237                                     ; preds = %268, %236
  %238 = phi i32 [ %269, %268 ], [ %231, %236 ]
  %239 = phi i32 [ %270, %268 ], [ %232, %236 ]
  %240 = phi i32 [ %271, %268 ], [ 0, %236 ]
  %241 = icmp eq i32 %184, %240
  br i1 %241, label %268, label %242, !dx.controlflow.hints !37

; <label>:242                                     ; preds = %237
  %243 = add i32 %240, 171
  %244 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 %243)  ; CBufferLoadLegacy(handle,regIndex)
  %245 = extractvalue %dx.types.CBufRet.f32 %244, 2
  %246 = extractvalue %dx.types.CBufRet.f32 %244, 0
  %247 = extractvalue %dx.types.CBufRet.f32 %244, 1
  %248 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %249 = extractvalue %dx.types.CBufRet.f32 %248, 0
  %250 = extractvalue %dx.types.CBufRet.f32 %248, 1
  %251 = fsub fast float %246, %249
  %252 = fsub fast float %247, %250
  %253 = fsub fast float %251, %225
  %254 = fsub fast float %252, %226
  %255 = call float @dx.op.dot2.f32(i32 54, float %253, float %254, float %253, float %254)  ; Dot2(ax,ay,bx,by)
  %256 = fsub fast float %251, %228
  %257 = fsub fast float %252, %229
  %258 = call float @dx.op.dot2.f32(i32 54, float %256, float %257, float %256, float %257)  ; Dot2(ax,ay,bx,by)
  %259 = fmul fast float %245, %245
  %260 = fcmp fast olt float %255, %259
  %261 = fcmp fast olt float %258, %259
  %262 = icmp ne i32 %238, 0
  %263 = or i1 %262, %260
  %264 = zext i1 %263 to i32
  %265 = icmp ne i32 %239, 0
  %266 = or i1 %265, %261
  %267 = zext i1 %266 to i32
  br label %268

; <label>:268                                     ; preds = %242, %237
  %269 = phi i32 [ %238, %237 ], [ %264, %242 ]
  %270 = phi i32 [ %239, %237 ], [ %267, %242 ]
  %271 = add nuw nsw i32 %240, 1
  %272 = icmp eq i32 %269, 0
  %273 = icmp eq i32 %270, 0
  %274 = or i1 %272, %273
  %275 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %17, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %276 = extractvalue %dx.types.CBufRet.i32 %275, 0
  %277 = icmp ult i32 %271, %276
  %278 = and i1 %274, %277
  br i1 %278, label %237, label %279

; <label>:279                                     ; preds = %268
  br label %280

; <label>:280                                     ; preds = %279, %224
  %281 = phi i32 [ %231, %224 ], [ %269, %279 ]
  %282 = phi i32 [ %232, %224 ], [ %270, %279 ]
  br label %283

; <label>:283                                     ; preds = %283, %280
  %284 = phi i32 [ %319, %283 ], [ %231, %280 ]
  %285 = phi i32 [ %329, %283 ], [ %232, %280 ]
  %286 = phi i32 [ %330, %283 ], [ 0, %280 ]
  %287 = add nuw nsw i32 %286, 191
  %288 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 %287)  ; CBufferLoadLegacy(handle,regIndex)
  %289 = extractvalue %dx.types.CBufRet.f32 %288, 0
  %290 = extractvalue %dx.types.CBufRet.f32 %288, 1
  %291 = extractvalue %dx.types.CBufRet.f32 %288, 2
  %292 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %293 = extractvalue %dx.types.CBufRet.f32 %292, 0
  %294 = extractvalue %dx.types.CBufRet.f32 %292, 1
  %295 = extractvalue %dx.types.CBufRet.f32 %292, 2
  %296 = fsub fast float %289, %293
  %297 = fsub fast float %290, %294
  %298 = fsub fast float %291, %295
  %299 = add nuw nsw i32 %286, 195
  %300 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 %299)  ; CBufferLoadLegacy(handle,regIndex)
  %301 = extractvalue %dx.types.CBufRet.f32 %300, 0
  %302 = extractvalue %dx.types.CBufRet.f32 %300, 1
  %303 = extractvalue %dx.types.CBufRet.f32 %300, 2
  %304 = fsub fast float %296, %225
  %305 = fsub fast float %297, %226
  %306 = fsub fast float %298, %227
  %307 = fsub fast float %296, %228
  %308 = fsub fast float %297, %229
  %309 = fsub fast float %298, %230
  %310 = call float @dx.op.unary.f32(i32 6, float %304)  ; FAbs(value)
  %311 = fcmp fast olt float %310, %301
  %312 = call float @dx.op.unary.f32(i32 6, float %305)  ; FAbs(value)
  %313 = fcmp fast olt float %312, %302
  %314 = and i1 %311, %313
  %315 = call float @dx.op.unary.f32(i32 6, float %306)  ; FAbs(value)
  %316 = fcmp fast olt float %315, %303
  %317 = and i1 %314, %316
  %318 = zext i1 %317 to i32
  %319 = or i32 %318, %284
  %320 = call float @dx.op.unary.f32(i32 6, float %307)  ; FAbs(value)
  %321 = fcmp fast olt float %320, %301
  %322 = call float @dx.op.unary.f32(i32 6, float %308)  ; FAbs(value)
  %323 = fcmp fast olt float %322, %302
  %324 = and i1 %321, %323
  %325 = call float @dx.op.unary.f32(i32 6, float %309)  ; FAbs(value)
  %326 = fcmp fast olt float %325, %303
  %327 = and i1 %324, %326
  %328 = zext i1 %327 to i32
  %329 = or i32 %328, %285
  %330 = add nuw nsw i32 %286, 1
  %331 = icmp eq i32 %319, 0
  %332 = icmp eq i32 %329, 0
  %333 = or i1 %331, %332
  %334 = icmp slt i32 %330, 4
  %335 = and i1 %334, %333
  br i1 %335, label %283, label %336

; <label>:336                                     ; preds = %283
  %337 = or i32 %319, %281
  %338 = icmp eq i32 %337, 0
  %339 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %340 = extractvalue %dx.types.CBufRet.f32 %339, 3
  %341 = fcmp fast ogt float %219, 0.000000e+00
  br i1 %341, label %342, label %357, !dx.controlflow.hints !38

; <label>:342                                     ; preds = %336
  %343 = fsub fast float %177, %219
  %344 = fcmp fast ole float %219, %177
  %345 = fcmp fast ole float %343, %340
  %346 = and i1 %344, %345
  %347 = select i1 %346, float 1.000000e+00, float 0.000000e+00
  %348 = fmul fast float %340, -1.500000e+00
  %349 = fsub fast float %343, %340
  %350 = fdiv fast float %349, %348
  %351 = call float @dx.op.unary.f32(i32 7, float %350)  ; Saturate(value)
  %352 = fmul fast float %351, 2.000000e+00
  %353 = fsub fast float 3.000000e+00, %352
  %354 = fmul fast float %351, %351
  %355 = fmul fast float %354, %347
  %356 = fmul fast float %355, %353
  br label %357

; <label>:357                                     ; preds = %342, %336
  %358 = phi float [ %356, %342 ], [ 0.000000e+00, %336 ]
  %359 = select i1 %338, float %358, float 0.000000e+00
  %360 = fadd fast float %359, %183
  %361 = or i32 %329, %282
  %362 = icmp eq i32 %361, 0
  %363 = fcmp fast ogt float %220, 0.000000e+00
  br i1 %363, label %364, label %379, !dx.controlflow.hints !38

; <label>:364                                     ; preds = %357
  %365 = fsub fast float %177, %220
  %366 = fcmp fast ole float %220, %177
  %367 = fcmp fast ole float %365, %340
  %368 = and i1 %366, %367
  %369 = select i1 %368, float 1.000000e+00, float 0.000000e+00
  %370 = fmul fast float %340, -1.500000e+00
  %371 = fsub fast float %365, %340
  %372 = fdiv fast float %371, %370
  %373 = call float @dx.op.unary.f32(i32 7, float %372)  ; Saturate(value)
  %374 = fmul fast float %373, 2.000000e+00
  %375 = fsub fast float 3.000000e+00, %374
  %376 = fmul fast float %373, %373
  %377 = fmul fast float %376, %369
  %378 = fmul fast float %377, %375
  br label %379

; <label>:379                                     ; preds = %364, %357
  %380 = phi float [ %378, %364 ], [ 0.000000e+00, %357 ]
  %381 = select i1 %362, float %380, float 0.000000e+00
  %382 = fadd fast float %360, %381
  br label %383

; <label>:383                                     ; preds = %379, %214, %182
  %384 = phi float [ %183, %214 ], [ %382, %379 ], [ %183, %182 ]
  %385 = add nuw nsw i32 %184, 1
  %386 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %17, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %387 = extractvalue %dx.types.CBufRet.i32 %386, 0
  %388 = icmp ult i32 %385, %387
  br i1 %388, label %182, label %389

; <label>:389                                     ; preds = %383
  br label %390

; <label>:390                                     ; preds = %389, %124
  %391 = phi float [ 0.000000e+00, %124 ], [ %384, %389 ]
  br label %392

; <label>:392                                     ; preds = %602, %390
  %393 = phi float [ %603, %602 ], [ %391, %390 ]
  %394 = phi i32 [ %604, %602 ], [ 0, %390 ]
  %395 = add nuw nsw i32 %394, 191
  %396 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 %395)  ; CBufferLoadLegacy(handle,regIndex)
  %397 = extractvalue %dx.types.CBufRet.f32 %396, 0
  %398 = extractvalue %dx.types.CBufRet.f32 %396, 1
  %399 = extractvalue %dx.types.CBufRet.f32 %396, 2
  %400 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %401 = extractvalue %dx.types.CBufRet.f32 %400, 0
  %402 = extractvalue %dx.types.CBufRet.f32 %400, 1
  %403 = extractvalue %dx.types.CBufRet.f32 %400, 2
  %404 = fsub fast float %397, %401
  %405 = fsub fast float %398, %402
  %406 = fsub fast float %399, %403
  %407 = add nuw nsw i32 %394, 195
  %408 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 %407)  ; CBufferLoadLegacy(handle,regIndex)
  %409 = extractvalue %dx.types.CBufRet.f32 %408, 0
  %410 = extractvalue %dx.types.CBufRet.f32 %408, 1
  %411 = extractvalue %dx.types.CBufRet.f32 %408, 2
  %412 = fdiv fast float 1.000000e+00, %160
  %413 = fdiv fast float 1.000000e+00, %161
  %414 = fdiv fast float 1.000000e+00, %162
  %415 = fadd fast float %404, %409
  %416 = fadd fast float %405, %410
  %417 = fadd fast float %406, %411
  %418 = fsub fast float %404, %409
  %419 = fsub fast float %405, %410
  %420 = fsub fast float %406, %411
  %421 = fmul fast float %418, %412
  %422 = fmul fast float %415, %412
  %423 = call float @dx.op.binary.f32(i32 36, float %421, float %422)  ; FMin(a,b)
  %424 = call float @dx.op.binary.f32(i32 35, float %421, float %422)  ; FMax(a,b)
  %425 = fmul fast float %419, %413
  %426 = fmul fast float %416, %413
  %427 = call float @dx.op.binary.f32(i32 36, float %425, float %426)  ; FMin(a,b)
  %428 = call float @dx.op.binary.f32(i32 35, float %423, float %427)  ; FMax(a,b)
  %429 = call float @dx.op.binary.f32(i32 35, float %425, float %426)  ; FMax(a,b)
  %430 = call float @dx.op.binary.f32(i32 36, float %424, float %429)  ; FMin(a,b)
  %431 = fmul fast float %414, %420
  %432 = fmul fast float %414, %417
  %433 = call float @dx.op.binary.f32(i32 36, float %431, float %432)  ; FMin(a,b)
  %434 = call float @dx.op.binary.f32(i32 35, float %428, float %433)  ; FMax(a,b)
  %435 = call float @dx.op.binary.f32(i32 35, float %431, float %432)  ; FMax(a,b)
  %436 = call float @dx.op.binary.f32(i32 36, float %430, float %435)  ; FMin(a,b)
  %437 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %434)  ; FMax(a,b)
  %438 = fcmp fast ult float %436, %437
  br i1 %438, label %602, label %439, !dx.controlflow.hints !39

; <label>:439                                     ; preds = %392
  %440 = fcmp fast ole float %434, 0.000000e+00
  %441 = fcmp fast ole float %436, 0.000000e+00
  %442 = and i1 %440, %441
  br i1 %442, label %602, label %443, !dx.controlflow.hints !40

; <label>:443                                     ; preds = %439
  %444 = fmul fast float %434, %160
  %445 = fmul fast float %434, %161
  %446 = fmul fast float %434, %162
  %447 = fmul fast float %436, %160
  %448 = fmul fast float %436, %161
  %449 = fmul fast float %436, %162
  %450 = zext i1 %440 to i32
  %451 = zext i1 %441 to i32
  %452 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %17, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %453 = extractvalue %dx.types.CBufRet.i32 %452, 0
  %454 = icmp eq i32 %453, 0
  br i1 %454, label %492, label %455

; <label>:455                                     ; preds = %443
  br label %456

; <label>:456                                     ; preds = %456, %455
  %457 = phi i32 [ %480, %456 ], [ %450, %455 ]
  %458 = phi i32 [ %482, %456 ], [ %451, %455 ]
  %459 = phi i32 [ %483, %456 ], [ 0, %455 ]
  %460 = add i32 %459, 171
  %461 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 %460)  ; CBufferLoadLegacy(handle,regIndex)
  %462 = extractvalue %dx.types.CBufRet.f32 %461, 2
  %463 = extractvalue %dx.types.CBufRet.f32 %461, 0
  %464 = extractvalue %dx.types.CBufRet.f32 %461, 1
  %465 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %466 = extractvalue %dx.types.CBufRet.f32 %465, 0
  %467 = extractvalue %dx.types.CBufRet.f32 %465, 1
  %468 = fsub fast float %463, %466
  %469 = fsub fast float %464, %467
  %470 = fsub fast float %468, %444
  %471 = fsub fast float %469, %445
  %472 = call float @dx.op.dot2.f32(i32 54, float %470, float %471, float %470, float %471)  ; Dot2(ax,ay,bx,by)
  %473 = fsub fast float %468, %447
  %474 = fsub fast float %469, %448
  %475 = call float @dx.op.dot2.f32(i32 54, float %473, float %474, float %473, float %474)  ; Dot2(ax,ay,bx,by)
  %476 = fmul fast float %462, %462
  %477 = fcmp fast olt float %472, %476
  %478 = fcmp fast olt float %475, %476
  %479 = zext i1 %477 to i32
  %480 = or i32 %479, %457
  %481 = zext i1 %478 to i32
  %482 = or i32 %481, %458
  %483 = add nuw nsw i32 %459, 1
  %484 = icmp eq i32 %480, 0
  %485 = icmp eq i32 %482, 0
  %486 = or i1 %484, %485
  %487 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %17, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %488 = extractvalue %dx.types.CBufRet.i32 %487, 0
  %489 = icmp ult i32 %483, %488
  %490 = and i1 %489, %486
  br i1 %490, label %456, label %491

; <label>:491                                     ; preds = %456
  br label %492

; <label>:492                                     ; preds = %491, %443
  %493 = phi i32 [ %450, %443 ], [ %480, %491 ]
  %494 = phi i32 [ %451, %443 ], [ %482, %491 ]
  br label %495

; <label>:495                                     ; preds = %546, %492
  %496 = phi i32 [ %547, %546 ], [ %450, %492 ]
  %497 = phi i32 [ %548, %546 ], [ %451, %492 ]
  %498 = phi i32 [ %549, %546 ], [ 0, %492 ]
  %499 = icmp eq i32 %394, %498
  br i1 %499, label %546, label %500, !dx.controlflow.hints !41

; <label>:500                                     ; preds = %495
  %501 = add nuw nsw i32 %498, 191
  %502 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 %501)  ; CBufferLoadLegacy(handle,regIndex)
  %503 = extractvalue %dx.types.CBufRet.f32 %502, 0
  %504 = extractvalue %dx.types.CBufRet.f32 %502, 1
  %505 = extractvalue %dx.types.CBufRet.f32 %502, 2
  %506 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %507 = extractvalue %dx.types.CBufRet.f32 %506, 0
  %508 = extractvalue %dx.types.CBufRet.f32 %506, 1
  %509 = extractvalue %dx.types.CBufRet.f32 %506, 2
  %510 = fsub fast float %503, %507
  %511 = fsub fast float %504, %508
  %512 = fsub fast float %505, %509
  %513 = add nuw nsw i32 %498, 195
  %514 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 %513)  ; CBufferLoadLegacy(handle,regIndex)
  %515 = extractvalue %dx.types.CBufRet.f32 %514, 0
  %516 = extractvalue %dx.types.CBufRet.f32 %514, 1
  %517 = extractvalue %dx.types.CBufRet.f32 %514, 2
  %518 = fsub fast float %510, %444
  %519 = fsub fast float %511, %445
  %520 = fsub fast float %512, %446
  %521 = fsub fast float %510, %447
  %522 = fsub fast float %511, %448
  %523 = fsub fast float %512, %449
  %524 = call float @dx.op.unary.f32(i32 6, float %518)  ; FAbs(value)
  %525 = fcmp fast ole float %524, %515
  %526 = call float @dx.op.unary.f32(i32 6, float %519)  ; FAbs(value)
  %527 = fcmp fast ole float %526, %516
  %528 = and i1 %525, %527
  %529 = call float @dx.op.unary.f32(i32 6, float %520)  ; FAbs(value)
  %530 = fcmp fast ole float %529, %517
  %531 = and i1 %528, %530
  %532 = icmp ne i32 %496, 0
  %533 = or i1 %532, %531
  %534 = zext i1 %533 to i32
  %535 = call float @dx.op.unary.f32(i32 6, float %521)  ; FAbs(value)
  %536 = fcmp fast ole float %535, %515
  %537 = call float @dx.op.unary.f32(i32 6, float %522)  ; FAbs(value)
  %538 = fcmp fast ole float %537, %516
  %539 = and i1 %536, %538
  %540 = call float @dx.op.unary.f32(i32 6, float %523)  ; FAbs(value)
  %541 = fcmp fast ole float %540, %517
  %542 = and i1 %539, %541
  %543 = icmp ne i32 %497, 0
  %544 = or i1 %543, %542
  %545 = zext i1 %544 to i32
  br label %546

; <label>:546                                     ; preds = %500, %495
  %547 = phi i32 [ %496, %495 ], [ %534, %500 ]
  %548 = phi i32 [ %497, %495 ], [ %545, %500 ]
  %549 = add nuw nsw i32 %498, 1
  %550 = icmp eq i32 %547, 0
  %551 = icmp eq i32 %548, 0
  %552 = or i1 %550, %551
  %553 = icmp slt i32 %549, 4
  %554 = and i1 %553, %552
  br i1 %554, label %495, label %555

; <label>:555                                     ; preds = %546
  %556 = or i32 %547, %493
  %557 = icmp eq i32 %556, 0
  %558 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %559 = extractvalue %dx.types.CBufRet.f32 %558, 3
  %560 = fcmp fast ogt float %434, 0.000000e+00
  br i1 %560, label %561, label %576, !dx.controlflow.hints !38

; <label>:561                                     ; preds = %555
  %562 = fsub fast float %177, %434
  %563 = fcmp fast ole float %434, %177
  %564 = fcmp fast ole float %562, %559
  %565 = and i1 %563, %564
  %566 = select i1 %565, float 1.000000e+00, float 0.000000e+00
  %567 = fmul fast float %559, -1.500000e+00
  %568 = fsub fast float %562, %559
  %569 = fdiv fast float %568, %567
  %570 = call float @dx.op.unary.f32(i32 7, float %569)  ; Saturate(value)
  %571 = fmul fast float %570, 2.000000e+00
  %572 = fsub fast float 3.000000e+00, %571
  %573 = fmul fast float %570, %570
  %574 = fmul fast float %573, %566
  %575 = fmul fast float %574, %572
  br label %576

; <label>:576                                     ; preds = %561, %555
  %577 = phi float [ %575, %561 ], [ 0.000000e+00, %555 ]
  %578 = select i1 %557, float %577, float 0.000000e+00
  %579 = fadd fast float %578, %393
  %580 = or i32 %548, %494
  %581 = icmp eq i32 %580, 0
  %582 = fcmp fast ogt float %436, 0.000000e+00
  br i1 %582, label %583, label %598, !dx.controlflow.hints !38

; <label>:583                                     ; preds = %576
  %584 = fsub fast float %177, %436
  %585 = fcmp fast ole float %436, %177
  %586 = fcmp fast ole float %584, %559
  %587 = and i1 %585, %586
  %588 = select i1 %587, float 1.000000e+00, float 0.000000e+00
  %589 = fmul fast float %559, -1.500000e+00
  %590 = fsub fast float %584, %559
  %591 = fdiv fast float %590, %589
  %592 = call float @dx.op.unary.f32(i32 7, float %591)  ; Saturate(value)
  %593 = fmul fast float %592, 2.000000e+00
  %594 = fsub fast float 3.000000e+00, %593
  %595 = fmul fast float %592, %592
  %596 = fmul fast float %595, %588
  %597 = fmul fast float %596, %594
  br label %598

; <label>:598                                     ; preds = %583, %576
  %599 = phi float [ %597, %583 ], [ 0.000000e+00, %576 ]
  %600 = select i1 %581, float %599, float 0.000000e+00
  %601 = fadd fast float %579, %600
  br label %602

; <label>:602                                     ; preds = %598, %439, %392
  %603 = phi float [ %393, %439 ], [ %601, %598 ], [ %393, %392 ]
  %604 = add nuw nsw i32 %394, 1
  %605 = icmp eq i32 %604, 4
  br i1 %605, label %606, label %392

; <label>:606                                     ; preds = %602
  br label %607

; <label>:607                                     ; preds = %606, %110, %27
  %608 = phi float [ 0.000000e+00, %110 ], [ 0.000000e+00, %27 ], [ %174, %606 ]
  %609 = phi float [ 0.000000e+00, %110 ], [ 0.000000e+00, %27 ], [ %175, %606 ]
  %610 = phi float [ 0.000000e+00, %110 ], [ 0.000000e+00, %27 ], [ %176, %606 ]
  %611 = phi float [ 0.000000e+00, %110 ], [ 0.000000e+00, %27 ], [ %603, %606 ]
  br i1 %99, label %5165, label %612, !dx.controlflow.hints !42

; <label>:612                                     ; preds = %607
  %613 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %12, i32 0, i32 %62, i32 %63, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %614 = extractvalue %dx.types.ResRet.f32 %613, 0
  %615 = extractvalue %dx.types.ResRet.f32 %613, 1
  %616 = fadd fast float %615, 0x3F40000000000000
  %617 = fmul fast float %616, 2.550000e+02
  %618 = fadd fast float %614, 0x3F40000000000000
  %619 = fmul fast float %618, 2.550000e+02
  %620 = fptoui float %617 to i32
  %621 = shl i32 %620, 8
  %622 = fptoui float %619 to i32
  %623 = and i32 %622, 255
  %624 = or i32 %621, %623
  %625 = mul i32 %624, 100
  %626 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %625, i32 undef)  ; BufferLoad(srv,index,wot)
  %627 = extractvalue %dx.types.ResRet.i32 %626, 0
  %628 = lshr i32 %627, 28
  %629 = and i32 %627, 131072
  switch i32 %628, label %5165 [
    i32 0, label %630
    i32 1, label %861
    i32 2, label %1291
    i32 3, label %1601
    i32 4, label %2104
    i32 5, label %2239
    i32 6, label %4600
    i32 7, label %4912
  ], !dx.controlflow.hints !43

; <label>:630                                     ; preds = %612
  %631 = and i32 %627, 511
  %632 = mul nuw nsw i32 %631, 20
  %633 = add nuw nsw i32 %632, 4
  %634 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %633, i32 undef)  ; BufferLoad(srv,index,wot)
  %635 = extractvalue %dx.types.ResRet.i32 %634, 0
  %636 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %632, i32 undef)  ; BufferLoad(srv,index,wot)
  %637 = extractvalue %dx.types.ResRet.i32 %636, 0
  %638 = and i32 %637, 255
  %639 = uitofp i32 %638 to float
  %640 = lshr i32 %637, 8
  %641 = and i32 %640, 255
  %642 = uitofp i32 %641 to float
  %643 = lshr i32 %637, 16
  %644 = and i32 %643, 255
  %645 = uitofp i32 %644 to float
  %646 = lshr i32 %637, 24
  %647 = uitofp i32 %646 to float
  %648 = fmul fast float %639, 0x3F70101020000000
  %649 = fmul fast float %642, 0x3F70101020000000
  %650 = fmul fast float %645, 0x3F70101020000000
  %651 = fmul fast float %647, 0x3F70101020000000
  %652 = and i32 %627, 1048576
  %653 = icmp ne i32 %652, 0
  %654 = and i32 %627, 2097152
  %655 = icmp ne i32 %654, 0
  %656 = lshr i32 %635, 8
  %657 = and i32 %656, 65535
  %658 = call float @dx.op.legacyF16ToF32(i32 131, i32 %657)  ; LegacyF16ToF32(value)
  %659 = and i32 %627, 65536
  %660 = icmp ne i32 %659, 0
  %661 = select i1 %660, float 1.000000e+00, float 0.000000e+00
  %662 = select i1 %107, float 0.000000e+00, float 1.000000e+00
  %663 = select i1 %653, float %662, float %661
  br i1 %107, label %705, label %664, !dx.controlflow.hints !44

; <label>:664                                     ; preds = %630
  %665 = icmp ne i32 %629, 0
  %666 = select i1 %665, float 1.000000e+00, float 0.000000e+00
  %667 = fmul fast float %663, %666
  %668 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %669 = extractvalue %dx.types.CBufRet.f32 %668, 0
  %670 = extractvalue %dx.types.CBufRet.f32 %668, 1
  %671 = extractvalue %dx.types.CBufRet.f32 %668, 2
  %672 = extractvalue %dx.types.CBufRet.f32 %668, 3
  %673 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %674 = extractvalue %dx.types.CBufRet.f32 %673, 0
  %675 = extractvalue %dx.types.CBufRet.f32 %673, 1
  %676 = extractvalue %dx.types.CBufRet.f32 %673, 2
  %677 = extractvalue %dx.types.CBufRet.f32 %673, 3
  %678 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %679 = extractvalue %dx.types.CBufRet.f32 %678, 0
  %680 = extractvalue %dx.types.CBufRet.f32 %678, 1
  %681 = extractvalue %dx.types.CBufRet.f32 %678, 2
  %682 = extractvalue %dx.types.CBufRet.f32 %678, 3
  %683 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %684 = extractvalue %dx.types.CBufRet.f32 %683, 0
  %685 = fadd fast float %648, -1.000000e+00
  %686 = fadd fast float %649, -1.000000e+00
  %687 = fadd fast float %650, -1.000000e+00
  %688 = fadd fast float %651, -1.000000e+00
  %689 = fmul fast float %684, %685
  %690 = fmul fast float %684, %686
  %691 = fmul fast float %684, %687
  %692 = fmul fast float %684, %688
  %693 = fadd fast float %689, 1.000000e+00
  %694 = fadd fast float %690, 1.000000e+00
  %695 = fadd fast float %691, 1.000000e+00
  %696 = fadd fast float %692, 1.000000e+00
  %697 = fmul fast float %679, %666
  %698 = fmul fast float %697, %693
  %699 = fmul fast float %680, %666
  %700 = fmul fast float %699, %694
  %701 = fmul fast float %681, %666
  %702 = fmul fast float %701, %695
  %703 = fmul fast float %682, %666
  %704 = fmul fast float %703, %696
  br label %723

; <label>:705                                     ; preds = %630
  %706 = and i32 %627, 262144
  %707 = icmp ne i32 %706, 0
  %708 = select i1 %707, float 1.000000e+00, float 0.000000e+00
  %709 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %710 = extractvalue %dx.types.CBufRet.f32 %709, 0
  %711 = extractvalue %dx.types.CBufRet.f32 %709, 1
  %712 = extractvalue %dx.types.CBufRet.f32 %709, 2
  %713 = extractvalue %dx.types.CBufRet.f32 %709, 3
  %714 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %715 = extractvalue %dx.types.CBufRet.f32 %714, 0
  %716 = extractvalue %dx.types.CBufRet.f32 %714, 1
  %717 = extractvalue %dx.types.CBufRet.f32 %714, 2
  %718 = extractvalue %dx.types.CBufRet.f32 %714, 3
  %719 = fmul fast float %648, %708
  %720 = fmul fast float %649, %708
  %721 = fmul fast float %650, %708
  %722 = fmul fast float %651, %708
  br label %723

; <label>:723                                     ; preds = %705, %664
  %724 = phi float [ %698, %664 ], [ %719, %705 ]
  %725 = phi float [ %700, %664 ], [ %720, %705 ]
  %726 = phi float [ %702, %664 ], [ %721, %705 ]
  %727 = phi float [ %704, %664 ], [ %722, %705 ]
  %728 = phi float [ %674, %664 ], [ %715, %705 ]
  %729 = phi float [ %675, %664 ], [ %716, %705 ]
  %730 = phi float [ %676, %664 ], [ %717, %705 ]
  %731 = phi float [ %677, %664 ], [ %718, %705 ]
  %732 = phi float [ %669, %664 ], [ %710, %705 ]
  %733 = phi float [ %670, %664 ], [ %711, %705 ]
  %734 = phi float [ %671, %664 ], [ %712, %705 ]
  %735 = phi float [ %672, %664 ], [ %713, %705 ]
  %736 = phi float [ %667, %664 ], [ %663, %705 ]
  %737 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %738 = extractvalue %dx.types.CBufRet.f32 %737, 0
  %739 = fmul fast float %738, 2.000000e+00
  %740 = select i1 %655, float %739, float 1.000000e+00
  %741 = fmul fast float %740, %724
  %742 = fmul fast float %740, %725
  %743 = fmul fast float %740, %726
  %744 = fmul fast float %740, %727
  %745 = fcmp fast oeq float %658, 0.000000e+00
  br i1 %745, label %845, label %746, !dx.controlflow.hints !45

; <label>:746                                     ; preds = %723
  %747 = fmul fast float %658, %64
  %748 = fptosi float %747 to i32
  %749 = fmul fast float %658, %65
  %750 = fptosi float %749 to i32
  %751 = call i32 @dx.op.binary.i32(i32 37, i32 1, i32 %748)  ; IMax(a,b)
  %752 = call i32 @dx.op.binary.i32(i32 37, i32 1, i32 %750)  ; IMax(a,b)
  %753 = sub i32 %63, %752
  %754 = or i32 %753, %62
  %755 = icmp slt i32 %754, 0
  %756 = fptosi float %58 to i32
  %757 = fptosi float %59 to i32
  %758 = icmp sge i32 %62, %756
  %759 = icmp sge i32 %753, %757
  %760 = or i1 %758, %759
  %761 = or i1 %755, %760
  br i1 %761, label %775, label %762, !dx.controlflow.hints !46

; <label>:762                                     ; preds = %746
  %763 = lshr i32 %753, 2
  %764 = mul i32 %84, %763
  %765 = add i32 %88, %764
  %766 = shl i32 %765, 2
  %767 = shl i32 %753, 3
  %768 = and i32 %767, 24
  %769 = or i32 %768, %93
  %770 = shl i32 1, %769
  %771 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %766, i32 undef)  ; BufferLoad(srv,index,wot)
  %772 = extractvalue %dx.types.ResRet.i32 %771, 0
  %773 = and i32 %772, %770
  %774 = icmp ne i32 %773, 0
  br label %775

; <label>:775                                     ; preds = %762, %746
  %776 = phi i1 [ %774, %762 ], [ false, %746 ]
  %777 = add i32 %752, %63
  %778 = or i32 %777, %62
  %779 = icmp slt i32 %778, 0
  %780 = icmp sge i32 %777, %757
  %781 = or i1 %758, %780
  %782 = or i1 %779, %781
  br i1 %782, label %796, label %783, !dx.controlflow.hints !46

; <label>:783                                     ; preds = %775
  %784 = lshr i32 %777, 2
  %785 = mul i32 %84, %784
  %786 = add i32 %88, %785
  %787 = shl i32 %786, 2
  %788 = shl i32 %777, 3
  %789 = and i32 %788, 24
  %790 = or i32 %789, %93
  %791 = shl i32 1, %790
  %792 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %787, i32 undef)  ; BufferLoad(srv,index,wot)
  %793 = extractvalue %dx.types.ResRet.i32 %792, 0
  %794 = and i32 %793, %791
  %795 = icmp ne i32 %794, 0
  br label %796

; <label>:796                                     ; preds = %783, %775
  %797 = phi i1 [ %795, %783 ], [ false, %775 ]
  %798 = and i1 %776, %797
  %799 = sub i32 %62, %751
  %800 = or i32 %799, %63
  %801 = icmp slt i32 %800, 0
  %802 = icmp sge i32 %799, %756
  %803 = icmp sge i32 %63, %757
  %804 = or i1 %802, %803
  %805 = or i1 %801, %804
  br i1 %805, label %819, label %806, !dx.controlflow.hints !46

; <label>:806                                     ; preds = %796
  %807 = lshr i32 %799, 3
  %808 = add i32 %80, %807
  %809 = add i32 %808, %82
  %810 = add i32 %809, %85
  %811 = shl i32 %810, 2
  %812 = and i32 %799, 7
  %813 = or i32 %812, %92
  %814 = shl i32 1, %813
  %815 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %811, i32 undef)  ; BufferLoad(srv,index,wot)
  %816 = extractvalue %dx.types.ResRet.i32 %815, 0
  %817 = and i32 %816, %814
  %818 = icmp ne i32 %817, 0
  br label %819

; <label>:819                                     ; preds = %806, %796
  %820 = phi i1 [ %818, %806 ], [ false, %796 ]
  %821 = and i1 %798, %820
  %822 = add i32 %751, %62
  %823 = or i32 %822, %63
  %824 = icmp slt i32 %823, 0
  %825 = icmp sge i32 %822, %756
  %826 = or i1 %825, %803
  %827 = or i1 %824, %826
  br i1 %827, label %841, label %828, !dx.controlflow.hints !46

; <label>:828                                     ; preds = %819
  %829 = lshr i32 %822, 3
  %830 = add i32 %80, %829
  %831 = add i32 %830, %82
  %832 = add i32 %831, %85
  %833 = shl i32 %832, 2
  %834 = and i32 %822, 7
  %835 = or i32 %834, %92
  %836 = shl i32 1, %835
  %837 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %833, i32 undef)  ; BufferLoad(srv,index,wot)
  %838 = extractvalue %dx.types.ResRet.i32 %837, 0
  %839 = and i32 %838, %836
  %840 = icmp ne i32 %839, 0
  br label %841

; <label>:841                                     ; preds = %828, %819
  %842 = phi i1 [ %840, %828 ], [ false, %819 ]
  %843 = and i1 %821, %842
  %844 = xor i1 %843, true
  br label %845

; <label>:845                                     ; preds = %841, %723
  %846 = phi i1 [ %844, %841 ], [ false, %723 ]
  br i1 %846, label %5165, label %847, !dx.controlflow.hints !47

; <label>:847                                     ; preds = %845
  %848 = select i1 %107, i1 %77, i1 %74
  %849 = select i1 %848, float %728, float %732
  %850 = select i1 %848, float %729, float %733
  %851 = select i1 %848, float %730, float %734
  %852 = select i1 %848, float %731, float %735
  %853 = fmul fast float %736, %849
  %854 = fmul fast float %736, %850
  %855 = fmul fast float %736, %851
  %856 = fmul fast float %736, %852
  %857 = fmul fast float %853, %741
  %858 = fmul fast float %854, %742
  %859 = fmul fast float %855, %743
  %860 = fmul fast float %856, %744
  br label %5165

; <label>:861                                     ; preds = %612
  %862 = or i32 %629, %106
  %863 = icmp eq i32 %862, 0
  br i1 %863, label %5165, label %864, !dx.controlflow.hints !48

; <label>:864                                     ; preds = %861
  %865 = and i32 %627, 511
  %866 = mul nuw nsw i32 %865, 20
  %867 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %866, i32 undef)  ; BufferLoad(srv,index,wot)
  %868 = extractvalue %dx.types.ResRet.i32 %867, 0
  %869 = and i32 %868, 255
  %870 = uitofp i32 %869 to float
  %871 = lshr i32 %868, 8
  %872 = and i32 %871, 255
  %873 = uitofp i32 %872 to float
  %874 = lshr i32 %868, 16
  %875 = and i32 %874, 255
  %876 = uitofp i32 %875 to float
  %877 = lshr i32 %868, 24
  %878 = uitofp i32 %877 to float
  %879 = fmul fast float %870, 0x3F70101020000000
  %880 = fmul fast float %873, 0x3F70101020000000
  %881 = fmul fast float %876, 0x3F70101020000000
  %882 = fmul fast float %878, 0x3F70101020000000
  %883 = lshr i32 %627, 5
  %884 = and i32 %883, 1008
  %885 = or i32 %884, 8
  %886 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %885, i32 undef)  ; BufferLoad(srv,index,wot)
  %887 = extractvalue %dx.types.ResRet.f32 %886, 0
  %888 = or i32 %884, 12
  %889 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %888, i32 undef)  ; BufferLoad(srv,index,wot)
  %890 = extractvalue %dx.types.ResRet.f32 %889, 0
  %891 = or i32 %884, 4
  %892 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %891, i32 undef)  ; BufferLoad(srv,index,wot)
  %893 = extractvalue %dx.types.ResRet.i32 %892, 0
  %894 = lshr i32 %893, 16
  %895 = and i32 %894, 254
  %896 = uitofp i32 %895 to float
  %897 = lshr i32 %893, 24
  %898 = and i32 %897, 254
  %899 = uitofp i32 %898 to float
  %900 = add nuw nsw i32 %866, 16
  %901 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %900, i32 undef)  ; BufferLoad(srv,index,wot)
  %902 = extractvalue %dx.types.ResRet.f32 %901, 0
  %903 = fsub fast float %890, %887
  %904 = fmul fast float %903, 0x3FB99999A0000000
  %905 = fsub fast float %902, %887
  %906 = fdiv fast float %905, %904
  %907 = call float @dx.op.unary.f32(i32 7, float %906)  ; Saturate(value)
  %908 = fmul fast float %907, 2.000000e+00
  %909 = fsub fast float 3.000000e+00, %908
  %910 = fsub fast float %899, %896
  %911 = fmul fast float %907, %907
  %912 = fmul fast float %911, %910
  %913 = fmul fast float %912, %909
  %914 = fadd fast float %913, %896
  %915 = fmul fast float %914, 0x3F70204080000000
  %916 = fmul fast float %903, 5.000000e-01
  %917 = fsub fast float %916, %890
  %918 = fadd fast float %917, %902
  %919 = fdiv fast float %918, %916
  %920 = call float @dx.op.unary.f32(i32 7, float %919)  ; Saturate(value)
  %921 = fmul fast float %920, 2.000000e+00
  %922 = fsub fast float 3.000000e+00, %921
  %923 = fmul fast float %920, %920
  %924 = fmul fast float %923, %922
  %925 = fsub fast float 1.000000e+00, %924
  %926 = fmul fast float %915, %925
  %927 = fadd fast float %902, -1.280000e+02
  %928 = fmul fast float %927, 1.953125e-03
  %929 = call float @dx.op.unary.f32(i32 7, float %928)  ; Saturate(value)
  %930 = fmul fast float %929, 6.250000e-01
  %931 = fsub fast float 2.500000e+00, %930
  %932 = fmul fast float %931, %64
  %933 = fmul fast float %931, %65
  %934 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %11, i32 0, i32 %62, i32 %63, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %935 = extractvalue %dx.types.ResRet.i32 %934, 0
  %936 = lshr i32 %935, 8
  %937 = and i32 %935, 255
  %938 = and i32 %936, 255
  %939 = uitofp i32 %937 to float
  %940 = uitofp i32 %938 to float
  %941 = fmul fast float %939, 0x3F80101020000000
  %942 = fmul fast float %940, 0x3F80101020000000
  %943 = fadd fast float %941, -1.000000e+00
  %944 = fadd fast float %942, -1.000000e+00
  %945 = call float @dx.op.unary.f32(i32 6, float %943)  ; FAbs(value)
  %946 = fsub fast float 1.000000e+00, %945
  %947 = call float @dx.op.unary.f32(i32 6, float %944)  ; FAbs(value)
  %948 = fsub fast float %946, %947
  %949 = fsub fast float -0.000000e+00, %948
  %950 = call float @dx.op.binary.f32(i32 35, float %949, float 0.000000e+00)  ; FMax(a,b)
  %951 = fcmp fast ogt float %943, 0.000000e+00
  %952 = fsub fast float -0.000000e+00, %950
  %953 = select i1 %951, float %952, float %950
  %954 = fadd fast float %953, %943
  %955 = fcmp fast ogt float %944, 0.000000e+00
  %956 = select i1 %955, float %952, float %950
  %957 = fadd fast float %956, %944
  %958 = call float @dx.op.dot3.f32(i32 55, float %954, float %957, float %948, float %954, float %957, float %948)  ; Dot3(ax,ay,az,bx,by,bz)
  %959 = call float @dx.op.unary.f32(i32 25, float %958)  ; Rsqrt(value)
  %960 = fmul fast float %959, %948
  %961 = add i32 %63, -1
  %962 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %11, i32 0, i32 %62, i32 %961, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %963 = extractvalue %dx.types.ResRet.i32 %962, 0
  %964 = lshr i32 %963, 8
  %965 = and i32 %963, 255
  %966 = and i32 %964, 255
  %967 = uitofp i32 %965 to float
  %968 = uitofp i32 %966 to float
  %969 = fmul fast float %967, 0x3F80101020000000
  %970 = fmul fast float %968, 0x3F80101020000000
  %971 = fadd fast float %969, -1.000000e+00
  %972 = fadd fast float %970, -1.000000e+00
  %973 = call float @dx.op.unary.f32(i32 6, float %971)  ; FAbs(value)
  %974 = fsub fast float 1.000000e+00, %973
  %975 = call float @dx.op.unary.f32(i32 6, float %972)  ; FAbs(value)
  %976 = fsub fast float %974, %975
  %977 = fsub fast float -0.000000e+00, %976
  %978 = call float @dx.op.binary.f32(i32 35, float %977, float 0.000000e+00)  ; FMax(a,b)
  %979 = fcmp fast ogt float %971, 0.000000e+00
  %980 = fsub fast float -0.000000e+00, %978
  %981 = select i1 %979, float %980, float %978
  %982 = fadd fast float %981, %971
  %983 = fcmp fast ogt float %972, 0.000000e+00
  %984 = select i1 %983, float %980, float %978
  %985 = fadd fast float %984, %972
  %986 = call float @dx.op.dot3.f32(i32 55, float %982, float %985, float %976, float %982, float %985, float %976)  ; Dot3(ax,ay,az,bx,by,bz)
  %987 = call float @dx.op.unary.f32(i32 25, float %986)  ; Rsqrt(value)
  %988 = fmul fast float %982, %987
  %989 = fmul fast float %985, %987
  %990 = fmul fast float %987, %976
  %991 = add i32 %63, 1
  %992 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %11, i32 0, i32 %62, i32 %991, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %993 = extractvalue %dx.types.ResRet.i32 %992, 0
  %994 = lshr i32 %993, 8
  %995 = and i32 %993, 255
  %996 = and i32 %994, 255
  %997 = uitofp i32 %995 to float
  %998 = uitofp i32 %996 to float
  %999 = fmul fast float %997, 0x3F80101020000000
  %1000 = fmul fast float %998, 0x3F80101020000000
  %1001 = fadd fast float %999, -1.000000e+00
  %1002 = fadd fast float %1000, -1.000000e+00
  %1003 = call float @dx.op.unary.f32(i32 6, float %1001)  ; FAbs(value)
  %1004 = fsub fast float 1.000000e+00, %1003
  %1005 = call float @dx.op.unary.f32(i32 6, float %1002)  ; FAbs(value)
  %1006 = fsub fast float %1004, %1005
  %1007 = fsub fast float -0.000000e+00, %1006
  %1008 = call float @dx.op.binary.f32(i32 35, float %1007, float 0.000000e+00)  ; FMax(a,b)
  %1009 = fcmp fast ogt float %1001, 0.000000e+00
  %1010 = fsub fast float -0.000000e+00, %1008
  %1011 = select i1 %1009, float %1010, float %1008
  %1012 = fadd fast float %1011, %1001
  %1013 = fcmp fast ogt float %1002, 0.000000e+00
  %1014 = select i1 %1013, float %1010, float %1008
  %1015 = fadd fast float %1014, %1002
  %1016 = call float @dx.op.dot3.f32(i32 55, float %1012, float %1015, float %1006, float %1012, float %1015, float %1006)  ; Dot3(ax,ay,az,bx,by,bz)
  %1017 = call float @dx.op.unary.f32(i32 25, float %1016)  ; Rsqrt(value)
  %1018 = fmul fast float %1012, %1017
  %1019 = fmul fast float %1015, %1017
  %1020 = fmul fast float %1017, %1006
  %1021 = add i32 %62, -1
  %1022 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %11, i32 0, i32 %1021, i32 %63, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1023 = extractvalue %dx.types.ResRet.i32 %1022, 0
  %1024 = lshr i32 %1023, 8
  %1025 = and i32 %1023, 255
  %1026 = and i32 %1024, 255
  %1027 = uitofp i32 %1025 to float
  %1028 = uitofp i32 %1026 to float
  %1029 = fmul fast float %1027, 0x3F80101020000000
  %1030 = fmul fast float %1028, 0x3F80101020000000
  %1031 = fadd fast float %1029, -1.000000e+00
  %1032 = fadd fast float %1030, -1.000000e+00
  %1033 = call float @dx.op.unary.f32(i32 6, float %1031)  ; FAbs(value)
  %1034 = fsub fast float 1.000000e+00, %1033
  %1035 = call float @dx.op.unary.f32(i32 6, float %1032)  ; FAbs(value)
  %1036 = fsub fast float %1034, %1035
  %1037 = fsub fast float -0.000000e+00, %1036
  %1038 = call float @dx.op.binary.f32(i32 35, float %1037, float 0.000000e+00)  ; FMax(a,b)
  %1039 = fcmp fast ogt float %1031, 0.000000e+00
  %1040 = fsub fast float -0.000000e+00, %1038
  %1041 = select i1 %1039, float %1040, float %1038
  %1042 = fadd fast float %1041, %1031
  %1043 = fcmp fast ogt float %1032, 0.000000e+00
  %1044 = select i1 %1043, float %1040, float %1038
  %1045 = fadd fast float %1044, %1032
  %1046 = call float @dx.op.dot3.f32(i32 55, float %1042, float %1045, float %1036, float %1042, float %1045, float %1036)  ; Dot3(ax,ay,az,bx,by,bz)
  %1047 = call float @dx.op.unary.f32(i32 25, float %1046)  ; Rsqrt(value)
  %1048 = fmul fast float %1042, %1047
  %1049 = fmul fast float %1045, %1047
  %1050 = fmul fast float %1047, %1036
  %1051 = add i32 %62, 1
  %1052 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %11, i32 0, i32 %1051, i32 %63, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1053 = extractvalue %dx.types.ResRet.i32 %1052, 0
  %1054 = lshr i32 %1053, 8
  %1055 = and i32 %1053, 255
  %1056 = and i32 %1054, 255
  %1057 = uitofp i32 %1055 to float
  %1058 = uitofp i32 %1056 to float
  %1059 = fmul fast float %1057, 0x3F80101020000000
  %1060 = fmul fast float %1058, 0x3F80101020000000
  %1061 = fadd fast float %1059, -1.000000e+00
  %1062 = fadd fast float %1060, -1.000000e+00
  %1063 = call float @dx.op.unary.f32(i32 6, float %1061)  ; FAbs(value)
  %1064 = fsub fast float 1.000000e+00, %1063
  %1065 = call float @dx.op.unary.f32(i32 6, float %1062)  ; FAbs(value)
  %1066 = fsub fast float %1064, %1065
  %1067 = fsub fast float -0.000000e+00, %1066
  %1068 = call float @dx.op.binary.f32(i32 35, float %1067, float 0.000000e+00)  ; FMax(a,b)
  %1069 = fcmp fast ogt float %1061, 0.000000e+00
  %1070 = fsub fast float -0.000000e+00, %1068
  %1071 = select i1 %1069, float %1070, float %1068
  %1072 = fadd fast float %1071, %1061
  %1073 = fcmp fast ogt float %1062, 0.000000e+00
  %1074 = select i1 %1073, float %1070, float %1068
  %1075 = fadd fast float %1074, %1062
  %1076 = call float @dx.op.dot3.f32(i32 55, float %1072, float %1075, float %1066, float %1072, float %1075, float %1066)  ; Dot3(ax,ay,az,bx,by,bz)
  %1077 = call float @dx.op.unary.f32(i32 25, float %1076)  ; Rsqrt(value)
  %1078 = fmul fast float %1072, %1077
  %1079 = fmul fast float %1075, %1077
  %1080 = fmul fast float %1077, %1066
  %1081 = add nuw nsw i32 %866, 12
  %1082 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %1081, i32 undef)  ; BufferLoad(srv,index,wot)
  %1083 = extractvalue %dx.types.ResRet.i32 %1082, 0
  %1084 = lshr i32 %1083, 16
  %1085 = uitofp i32 %1084 to float
  %1086 = fmul fast float %1085, 0x3EF0002000000000
  %1087 = add nuw nsw i32 %866, 8
  %1088 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %1087, i32 undef)  ; BufferLoad(srv,index,wot)
  %1089 = extractvalue %dx.types.ResRet.i32 %1088, 0
  %1090 = lshr i32 %1089, 16
  %1091 = uitofp i32 %1090 to float
  %1092 = fmul fast float %1091, 0x3EF0002000000000
  %1093 = fsub fast float %44, %1092
  %1094 = fdiv fast float %1093, %1086
  %1095 = fsub fast float %39, %933
  %1096 = fmul fast float %42, %1095
  %1097 = call float @dx.op.unary.f32(i32 7, float %43)  ; Saturate(value)
  %1098 = call float @dx.op.unary.f32(i32 7, float %1096)  ; Saturate(value)
  %1099 = fmul fast float %58, %1097
  %1100 = fmul fast float %59, %1098
  %1101 = fptoui float %1099 to i32
  %1102 = fptoui float %1100 to i32
  %1103 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %12, i32 0, i32 %1101, i32 %1102, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1104 = extractvalue %dx.types.ResRet.f32 %1103, 0
  %1105 = extractvalue %dx.types.ResRet.f32 %1103, 1
  %1106 = fadd fast float %1105, 0x3F40000000000000
  %1107 = fmul fast float %1106, 2.550000e+02
  %1108 = fadd fast float %1104, 0x3F40000000000000
  %1109 = fmul fast float %1108, 2.550000e+02
  %1110 = fptoui float %1107 to i32
  %1111 = shl i32 %1110, 8
  %1112 = fptoui float %1109 to i32
  %1113 = and i32 %1112, 255
  %1114 = or i32 %1111, %1113
  %1115 = fadd fast float %933, %39
  %1116 = fmul fast float %42, %1115
  %1117 = call float @dx.op.unary.f32(i32 7, float %1116)  ; Saturate(value)
  %1118 = fmul fast float %59, %1117
  %1119 = fptoui float %1118 to i32
  %1120 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %12, i32 0, i32 %1101, i32 %1119, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1121 = extractvalue %dx.types.ResRet.f32 %1120, 0
  %1122 = extractvalue %dx.types.ResRet.f32 %1120, 1
  %1123 = fadd fast float %1122, 0x3F40000000000000
  %1124 = fmul fast float %1123, 2.550000e+02
  %1125 = fadd fast float %1121, 0x3F40000000000000
  %1126 = fmul fast float %1125, 2.550000e+02
  %1127 = fptoui float %1124 to i32
  %1128 = shl i32 %1127, 8
  %1129 = fptoui float %1126 to i32
  %1130 = and i32 %1129, 255
  %1131 = or i32 %1128, %1130
  %1132 = fsub fast float %38, %932
  %1133 = fmul fast float %41, %1132
  %1134 = call float @dx.op.unary.f32(i32 7, float %1133)  ; Saturate(value)
  %1135 = call float @dx.op.unary.f32(i32 7, float %44)  ; Saturate(value)
  %1136 = fmul fast float %58, %1134
  %1137 = fmul fast float %59, %1135
  %1138 = fptoui float %1136 to i32
  %1139 = fptoui float %1137 to i32
  %1140 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %12, i32 0, i32 %1138, i32 %1139, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1141 = extractvalue %dx.types.ResRet.f32 %1140, 0
  %1142 = extractvalue %dx.types.ResRet.f32 %1140, 1
  %1143 = fadd fast float %1142, 0x3F40000000000000
  %1144 = fmul fast float %1143, 2.550000e+02
  %1145 = fadd fast float %1141, 0x3F40000000000000
  %1146 = fmul fast float %1145, 2.550000e+02
  %1147 = fptoui float %1144 to i32
  %1148 = shl i32 %1147, 8
  %1149 = fptoui float %1146 to i32
  %1150 = and i32 %1149, 255
  %1151 = or i32 %1148, %1150
  %1152 = fadd fast float %932, %38
  %1153 = fmul fast float %41, %1152
  %1154 = call float @dx.op.unary.f32(i32 7, float %1153)  ; Saturate(value)
  %1155 = fmul fast float %58, %1154
  %1156 = fptoui float %1155 to i32
  %1157 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %12, i32 0, i32 %1156, i32 %1139, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1158 = extractvalue %dx.types.ResRet.f32 %1157, 0
  %1159 = extractvalue %dx.types.ResRet.f32 %1157, 1
  %1160 = fadd fast float %1159, 0x3F40000000000000
  %1161 = fmul fast float %1160, 2.550000e+02
  %1162 = fadd fast float %1158, 0x3F40000000000000
  %1163 = fmul fast float %1162, 2.550000e+02
  %1164 = fptoui float %1161 to i32
  %1165 = shl i32 %1164, 8
  %1166 = fptoui float %1163 to i32
  %1167 = and i32 %1166, 255
  %1168 = or i32 %1165, %1167
  %1169 = icmp eq i32 %624, %1114
  %1170 = zext i1 %1169 to i32
  %1171 = icmp eq i32 %624, %1131
  %1172 = zext i1 %1171 to i32
  %1173 = add nuw nsw i32 %1172, %1170
  %1174 = icmp eq i32 %624, %1151
  %1175 = zext i1 %1174 to i32
  %1176 = add nuw nsw i32 %1173, %1175
  %1177 = icmp eq i32 %624, %1168
  %1178 = zext i1 %1177 to i32
  %1179 = add nuw nsw i32 %1176, %1178
  %1180 = icmp ne i32 %1179, 4
  %1181 = call float @dx.op.dot3.f32(i32 55, float %988, float %989, float %990, float %1018, float %1019, float %1020)  ; Dot3(ax,ay,az,bx,by,bz)
  %1182 = call float @dx.op.binary.f32(i32 36, float 1.000000e+00, float %1181)  ; FMin(a,b)
  %1183 = call float @dx.op.dot3.f32(i32 55, float %988, float %989, float %990, float %1048, float %1049, float %1050)  ; Dot3(ax,ay,az,bx,by,bz)
  %1184 = call float @dx.op.binary.f32(i32 36, float %1182, float %1183)  ; FMin(a,b)
  %1185 = call float @dx.op.dot3.f32(i32 55, float %988, float %989, float %990, float %1078, float %1079, float %1080)  ; Dot3(ax,ay,az,bx,by,bz)
  %1186 = call float @dx.op.binary.f32(i32 36, float %1184, float %1185)  ; FMin(a,b)
  %1187 = call float @dx.op.dot3.f32(i32 55, float %1018, float %1019, float %1020, float %1048, float %1049, float %1050)  ; Dot3(ax,ay,az,bx,by,bz)
  %1188 = call float @dx.op.binary.f32(i32 36, float %1186, float %1187)  ; FMin(a,b)
  %1189 = call float @dx.op.dot3.f32(i32 55, float %1018, float %1019, float %1020, float %1078, float %1079, float %1080)  ; Dot3(ax,ay,az,bx,by,bz)
  %1190 = call float @dx.op.binary.f32(i32 36, float %1188, float %1189)  ; FMin(a,b)
  %1191 = call float @dx.op.dot3.f32(i32 55, float %1048, float %1049, float %1050, float %1078, float %1079, float %1080)  ; Dot3(ax,ay,az,bx,by,bz)
  %1192 = call float @dx.op.binary.f32(i32 36, float %1190, float %1191)  ; FMin(a,b)
  %1193 = call float @dx.op.unary.f32(i32 7, float %1192)  ; Saturate(value)
  %1194 = fsub fast float 1.000000e+00, %1193
  %1195 = call float @dx.op.unary.f32(i32 7, float %1194)  ; Saturate(value)
  %1196 = fmul fast float %1195, 2.000000e+00
  %1197 = fsub fast float 3.000000e+00, %1196
  %1198 = call float @dx.op.unary.f32(i32 7, float %960)  ; Saturate(value)
  %1199 = fmul fast float %1198, 2.500000e+00
  %1200 = call float @dx.op.unary.f32(i32 7, float %1199)  ; Saturate(value)
  %1201 = fmul fast float %1200, 2.000000e+00
  %1202 = fsub fast float 3.000000e+00, %1201
  %1203 = fadd fast float %1198, 0xBFD99999A0000000
  %1204 = fmul fast float %1203, -2.500000e+00
  %1205 = call float @dx.op.unary.f32(i32 7, float %1204)  ; Saturate(value)
  %1206 = fmul fast float %1205, 2.000000e+00
  %1207 = fsub fast float 3.000000e+00, %1206
  %1208 = fmul float %1200, %1205
  %1209 = fmul float %1208, %1208
  %1210 = fmul fast float %1207, %1202
  %1211 = fmul fast float %1210, %1209
  %1212 = fmul fast float %1195, %1195
  %1213 = fmul fast float %1212, %1197
  %1214 = fadd fast float %1211, %1213
  %1215 = fmul fast float %1214, 2.000000e+00
  %1216 = call float @dx.op.unary.f32(i32 7, float %1215)  ; Saturate(value)
  %1217 = fmul fast float %1216, 1.500000e+00
  %1218 = fmul fast float %1217, %879
  %1219 = fmul fast float %1217, %880
  %1220 = fmul fast float %1217, %881
  %1221 = icmp eq i32 %624, 0
  %1222 = or i1 %1221, %1180
  %1223 = select i1 %1221, float 0.000000e+00, float 1.000000e+00
  %1224 = select i1 %1222, float %1218, float 1.000000e+00
  %1225 = select i1 %1222, float %1219, float 1.000000e+00
  %1226 = select i1 %1222, float %1220, float 1.000000e+00
  %1227 = select i1 %1222, float %882, float %1217
  %1228 = select i1 %1222, float %1223, float 0.000000e+00
  %1229 = fmul fast float %67, 5.400000e+02
  %1230 = fmul fast float %69, 5.400000e+02
  %1231 = fmul fast float %1229, %43
  %1232 = fmul fast float %1230, %44
  %1233 = call float @dx.op.unary.f32(i32 27, float %1231)  ; Round_ni(value)
  %1234 = call float @dx.op.unary.f32(i32 27, float %1232)  ; Round_ni(value)
  %1235 = fadd fast float %1234, %1233
  %1236 = frem fast float %1235, 2.000000e+00
  %1237 = call float @dx.op.unary.f32(i32 22, float %1231)  ; Frc(value)
  %1238 = call float @dx.op.unary.f32(i32 22, float %1232)  ; Frc(value)
  %1239 = fadd fast float %1237, -5.000000e-01
  %1240 = fadd fast float %1238, -5.000000e-01
  %1241 = fmul fast float %1239, 2.000000e+00
  %1242 = fmul fast float %1240, 2.000000e+00
  %1243 = call float @dx.op.dot2.f32(i32 54, float %1241, float %1242, float %1241, float %1242)  ; Dot2(ax,ay,bx,by)
  %1244 = call float @dx.op.unary.f32(i32 24, float %1243)  ; Sqrt(value)
  %1245 = fsub fast float 1.000000e+00, %1244
  %1246 = fmul fast float %1245, 2.000000e+00
  %1247 = call float @dx.op.unary.f32(i32 7, float %1246)  ; Saturate(value)
  %1248 = fmul fast float %59, %58
  %1249 = fmul fast float %1230, %1229
  %1250 = fdiv fast float %1248, %1249
  %1251 = fptoui float %1250 to i32
  %1252 = icmp ult i32 %1251, 4
  %1253 = select i1 %1252, float 1.000000e+00, float %1247
  %1254 = fmul fast float %1224, %1236
  %1255 = fmul fast float %1225, %1236
  %1256 = fmul fast float %1226, %1236
  %1257 = fmul fast float %1236, %1227
  %1258 = fmul fast float %1254, %1253
  %1259 = fmul fast float %1255, %1253
  %1260 = fmul fast float %1256, %1253
  %1261 = fmul fast float %1257, %1253
  %1262 = fsub fast float 1.000000e+00, %1094
  %1263 = fmul fast float %1262, %1262
  %1264 = fmul fast float %1263, 3.000000e+00
  %1265 = fadd fast float %1264, 2.500000e-01
  %1266 = call float @dx.op.unary.f32(i32 7, float %1265)  ; Saturate(value)
  %1267 = fmul fast float %1236, 0x3FC3333340000000
  %1268 = fadd fast float %1267, 7.500000e-01
  %1269 = fmul fast float %1268, %1228
  %1270 = call float @dx.op.binary.f32(i32 35, float %1258, float %1269)  ; FMax(a,b)
  %1271 = call float @dx.op.binary.f32(i32 35, float %1259, float %1269)  ; FMax(a,b)
  %1272 = call float @dx.op.binary.f32(i32 35, float %1260, float %1269)  ; FMax(a,b)
  %1273 = fmul fast float %1266, %1228
  %1274 = call float @dx.op.binary.f32(i32 35, float %1261, float %1273)  ; FMax(a,b)
  %1275 = fmul fast float %926, %879
  %1276 = fmul fast float %1275, %1270
  %1277 = fmul fast float %926, %880
  %1278 = fmul fast float %1277, %1271
  %1279 = fmul fast float %926, %881
  %1280 = fmul fast float %1279, %1272
  %1281 = fmul fast float %1266, %926
  %1282 = fmul fast float %1281, %1274
  %1283 = call float @dx.op.unary.f32(i32 7, float %1276)  ; Saturate(value)
  %1284 = call float @dx.op.unary.f32(i32 7, float %1278)  ; Saturate(value)
  %1285 = call float @dx.op.unary.f32(i32 7, float %1280)  ; Saturate(value)
  %1286 = call float @dx.op.unary.f32(i32 7, float %1282)  ; Saturate(value)
  %1287 = fmul fast float %1283, 0x3FF3333340000000
  %1288 = fmul fast float %1284, 0x3FF3333340000000
  %1289 = fmul fast float %1285, 0x3FF3333340000000
  %1290 = fmul fast float %1286, 0x3FF3333340000000
  br label %5165

; <label>:1291                                    ; preds = %612
  %1292 = and i32 %627, 511
  %1293 = mul nuw nsw i32 %1292, 20
  %1294 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %1293, i32 undef)  ; BufferLoad(srv,index,wot)
  %1295 = extractvalue %dx.types.ResRet.i32 %1294, 0
  %1296 = lshr i32 %1295, 24
  %1297 = uitofp i32 %1296 to float
  %1298 = fmul fast float %1297, 0x3F70101020000000
  %1299 = fsub fast float 1.000000e+00, %1298
  %1300 = add nuw nsw i32 %1293, 12
  %1301 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %1300, i32 undef)  ; BufferLoad(srv,index,wot)
  %1302 = extractvalue %dx.types.ResRet.i32 %1301, 0
  %1303 = and i32 %1302, 65535
  %1304 = uitofp i32 %1303 to float
  %1305 = fmul fast float %1304, 0x3EF0002000000000
  %1306 = lshr i32 %1302, 16
  %1307 = uitofp i32 %1306 to float
  %1308 = fmul fast float %1307, 0x3EF0002000000000
  %1309 = add nuw nsw i32 %1293, 8
  %1310 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %1309, i32 undef)  ; BufferLoad(srv,index,wot)
  %1311 = extractvalue %dx.types.ResRet.i32 %1310, 0
  %1312 = and i32 %1311, 65535
  %1313 = uitofp i32 %1312 to float
  %1314 = fmul fast float %1313, 0x3EF0002000000000
  %1315 = lshr i32 %1311, 16
  %1316 = uitofp i32 %1315 to float
  %1317 = fmul fast float %1316, 0x3EF0002000000000
  %1318 = fsub fast float %43, %1314
  %1319 = fdiv fast float %1318, %1305
  %1320 = fsub fast float %44, %1317
  %1321 = fdiv fast float %1320, %1308
  %1322 = add nuw nsw i32 %1293, 16
  %1323 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %1322, i32 undef)  ; BufferLoad(srv,index,wot)
  %1324 = extractvalue %dx.types.ResRet.f32 %1323, 0
  %1325 = fcmp fast olt float %1324, 1.000000e+01
  %1326 = uitofp i1 %1325 to float
  %1327 = fdiv fast float 2.400000e+02, %1324
  %1328 = call float @dx.op.unary.f32(i32 7, float %1327)  ; Saturate(value)
  %1329 = fdiv fast float 3.200000e+02, %1324
  %1330 = call float @dx.op.unary.f32(i32 7, float %1329)  ; Saturate(value)
  %1331 = fmul fast float %1330, 5.000000e-01
  %1332 = fadd fast float %1331, 2.500000e-01
  %1333 = fdiv fast float 3.200000e+01, %1332
  %1334 = select i1 %1325, float 3.200000e+01, float %1333
  %1335 = fmul fast float %1334, 1.600000e+01
  %1336 = fmul fast float %1334, 9.000000e+00
  %1337 = fmul fast float %1305, %1319
  %1338 = fmul fast float %1337, %1335
  %1339 = fmul fast float %1308, %1321
  %1340 = fmul fast float %1339, %1336
  %1341 = call float @dx.op.unary.f32(i32 29, float %1338)  ; Round_z(value)
  %1342 = call float @dx.op.unary.f32(i32 29, float %1340)  ; Round_z(value)
  %1343 = call float @dx.op.unary.f32(i32 7, float %1298)  ; Saturate(value)
  %1344 = fmul fast float %1343, 2.000000e+00
  %1345 = fsub fast float 3.000000e+00, %1344
  %1346 = fmul fast float %1328, 4.000000e+01
  %1347 = fmul fast float %1326, 1.000000e+02
  %1348 = fadd fast float %1347, %1346
  %1349 = fptoui float %1348 to i32
  %1350 = uitofp i32 %62 to float
  %1351 = uitofp i32 %63 to float
  %1352 = fptoui float %1350 to i32
  %1353 = fptoui float %1351 to i32
  %1354 = lshr i32 %1353, 2
  %1355 = mul i32 %84, %1354
  %1356 = lshr i32 %1352, 3
  %1357 = add i32 %80, %1356
  %1358 = add i32 %1357, %82
  %1359 = add i32 %1358, %1355
  %1360 = shl i32 %1359, 2
  %1361 = shl i32 %1353, 3
  %1362 = and i32 %1361, 24
  %1363 = and i32 %1352, 7
  %1364 = or i32 %1362, %1363
  %1365 = shl i32 1, %1364
  %1366 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %1360, i32 undef)  ; BufferLoad(srv,index,wot)
  %1367 = extractvalue %dx.types.ResRet.i32 %1366, 0
  %1368 = and i32 %1367, %1365
  %1369 = icmp ne i32 %1368, 0
  %1370 = icmp eq i32 %1349, 0
  br i1 %1370, label %1487, label %1371, !dx.controlflow.hints !49

; <label>:1371                                    ; preds = %1291
  %1372 = uitofp i32 %1349 to float
  %1373 = fmul fast float %64, 5.000000e-01
  %1374 = fmul fast float %1373, %1372
  %1375 = fmul fast float %65, 5.000000e-01
  %1376 = fmul fast float %1375, %1372
  %1377 = call float @dx.op.binary.f32(i32 35, float 5.000000e-01, float %1374)  ; FMax(a,b)
  %1378 = call float @dx.op.binary.f32(i32 35, float 5.000000e-01, float %1376)  ; FMax(a,b)
  br label %1379

; <label>:1379                                    ; preds = %1474, %1371
  %1380 = phi float [ 0.000000e+00, %1371 ], [ %1477, %1474 ]
  %1381 = phi i32 [ 0, %1371 ], [ %1478, %1474 ]
  %1382 = fmul fast float %43, 0x3FF280E1E0000000
  %1383 = fmul fast float %44, 0x3FF280E1E0000000
  %1384 = sitofp i32 %1381 to float
  %1385 = fmul fast float %1384, 0x3FB99999A0000000
  %1386 = fadd fast float %1385, %1382
  %1387 = fadd fast float %1385, %1383
  %1388 = fmul fast float %1386, 1.024000e+03
  %1389 = fmul fast float %1387, 1.024000e+03
  %1390 = fadd fast float %1388, -5.120000e+02
  %1391 = fadd fast float %1389, -5.120000e+02
  %1392 = fmul fast float %1386, 0x4081BEDF00000000
  %1393 = fadd fast float %1392, 0xC071BEDF00000000
  %1394 = call float @dx.op.unary.f32(i32 22, float %1393)  ; Frc(value)
  %1395 = fmul fast float %1390, %1394
  %1396 = fadd fast float %1395, %1391
  %1397 = fmul fast float %1387, 0x4073BEBE20000000
  %1398 = fadd fast float %1397, 0xC063BEBE20000000
  %1399 = call float @dx.op.unary.f32(i32 22, float %1398)  ; Frc(value)
  %1400 = fmul fast float %1391, %1399
  %1401 = fadd fast float %1400, %1390
  %1402 = fmul fast float %1396, %1401
  %1403 = call float @dx.op.unary.f32(i32 22, float %1402)  ; Frc(value)
  %1404 = fmul fast float %1403, 2.000000e+00
  %1405 = fadd fast float %1404, -1.000000e+00
  %1406 = fmul fast float %1405, %1377
  %1407 = fmul fast float %43, 0x3FEB681740000000
  %1408 = fmul fast float %44, 0x3FEB681740000000
  %1409 = fmul fast float %1384, 0x3FC99999A0000000
  %1410 = fadd fast float %1409, 1.250000e-01
  %1411 = fadd fast float %1410, %1407
  %1412 = fadd fast float %1410, %1408
  %1413 = fmul fast float %1411, 1.024000e+03
  %1414 = fmul fast float %1412, 1.024000e+03
  %1415 = fadd fast float %1413, -5.120000e+02
  %1416 = fadd fast float %1414, -5.120000e+02
  %1417 = fmul fast float %1411, 0x4081BEDF00000000
  %1418 = fadd fast float %1417, 0xC071BEDF00000000
  %1419 = call float @dx.op.unary.f32(i32 22, float %1418)  ; Frc(value)
  %1420 = fmul fast float %1415, %1419
  %1421 = fadd fast float %1420, %1416
  %1422 = fmul fast float %1412, 0x4073BEBE20000000
  %1423 = fadd fast float %1422, 0xC063BEBE20000000
  %1424 = call float @dx.op.unary.f32(i32 22, float %1423)  ; Frc(value)
  %1425 = fmul fast float %1416, %1424
  %1426 = fadd fast float %1425, %1415
  %1427 = fmul fast float %1421, %1426
  %1428 = call float @dx.op.unary.f32(i32 22, float %1427)  ; Frc(value)
  %1429 = fmul fast float %1428, 2.000000e+00
  %1430 = fadd fast float %1429, -1.000000e+00
  %1431 = fmul fast float %1430, %1378
  %1432 = fptosi float %1406 to i32
  %1433 = sitofp i32 %1432 to float
  %1434 = fadd fast float %1433, %1350
  %1435 = fptosi float %1434 to i32
  %1436 = fptosi float %1431 to i32
  %1437 = sitofp i32 %1436 to float
  %1438 = fadd fast float %1437, %1351
  %1439 = fptosi float %1438 to i32
  %1440 = or i32 %1439, %1435
  %1441 = icmp slt i32 %1440, 0
  %1442 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %1443 = extractvalue %dx.types.CBufRet.f32 %1442, 0
  %1444 = extractvalue %dx.types.CBufRet.f32 %1442, 1
  %1445 = fptosi float %1443 to i32
  %1446 = fptosi float %1444 to i32
  %1447 = icmp sge i32 %1435, %1445
  %1448 = icmp sge i32 %1439, %1446
  %1449 = or i1 %1447, %1448
  %1450 = or i1 %1441, %1449
  br i1 %1450, label %1474, label %1451, !dx.controlflow.hints !46

; <label>:1451                                    ; preds = %1379
  %1452 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %17, i32 51)  ; CBufferLoadLegacy(handle,regIndex)
  %1453 = extractvalue %dx.types.CBufRet.i32 %1452, 1
  %1454 = shl i32 %1453, 2
  %1455 = extractvalue %dx.types.CBufRet.i32 %1452, 3
  %1456 = shl i32 %1455, 1
  %1457 = lshr i32 %1439, 2
  %1458 = extractvalue %dx.types.CBufRet.i32 %1452, 2
  %1459 = mul i32 %1458, %1457
  %1460 = lshr i32 %1435, 3
  %1461 = add i32 %1454, %1460
  %1462 = add i32 %1461, %1456
  %1463 = add i32 %1462, %1459
  %1464 = shl i32 %1463, 2
  %1465 = shl i32 %1439, 3
  %1466 = and i32 %1465, 24
  %1467 = and i32 %1435, 7
  %1468 = or i32 %1466, %1467
  %1469 = shl i32 1, %1468
  %1470 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %1464, i32 undef)  ; BufferLoad(srv,index,wot)
  %1471 = extractvalue %dx.types.ResRet.i32 %1470, 0
  %1472 = and i32 %1471, %1469
  %1473 = icmp ne i32 %1472, 0
  br label %1474

; <label>:1474                                    ; preds = %1451, %1379
  %1475 = phi i1 [ %1473, %1451 ], [ false, %1379 ]
  %1476 = uitofp i1 %1475 to float
  %1477 = fadd fast float %1476, %1380
  %1478 = add nuw nsw i32 %1381, 1
  %1479 = icmp eq i32 %1478, 5
  br i1 %1479, label %1480, label %1379

; <label>:1480                                    ; preds = %1474
  %1481 = uitofp i1 %1369 to float
  %1482 = fmul fast float %1481, 0x3FC99999A0000000
  %1483 = fmul fast float %1482, %1477
  %1484 = fadd fast float %1483, -5.000000e-01
  %1485 = fmul fast float %1484, 2.000000e+00
  %1486 = call float @dx.op.unary.f32(i32 7, float %1485)  ; Saturate(value)
  br label %1487

; <label>:1487                                    ; preds = %1480, %1291
  %1488 = phi float [ %1486, %1480 ], [ 0.000000e+00, %1291 ]
  %1489 = fdiv fast float %1341, %1335
  %1490 = fdiv fast float %1342, %1336
  %1491 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1492 = extractvalue %dx.types.CBufRet.f32 %1491, 3
  %1493 = fmul fast float %1492, 0x3FE99999A0000000
  %1494 = fadd fast float %1493, %1489
  %1495 = fsub fast float %1490, %1493
  %1496 = call float @dx.op.unary.f32(i32 22, float %1494)  ; Frc(value)
  %1497 = call float @dx.op.unary.f32(i32 22, float %1495)  ; Frc(value)
  %1498 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %14, float %1496, float %1497, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1499 = extractvalue %dx.types.ResRet.f32 %1498, 0
  %1500 = fmul fast float %1499, 1.500000e+00
  %1501 = call float @dx.op.unary.f32(i32 7, float %1500)  ; Saturate(value)
  %1502 = call float @dx.op.binary.f32(i32 35, float 0x3FE51EB860000000, float %1501)  ; FMax(a,b)
  %1503 = fsub fast float -5.000000e-01, %1341
  %1504 = fadd fast float %1503, %1338
  %1505 = fsub fast float -5.000000e-01, %1342
  %1506 = fadd fast float %1505, %1340
  %1507 = fmul fast float %1504, 2.000000e+00
  %1508 = fmul fast float %1506, 2.000000e+00
  %1509 = call float @dx.op.dot2.f32(i32 54, float %1507, float %1508, float %1507, float %1508)  ; Dot2(ax,ay,bx,by)
  %1510 = call float @dx.op.unary.f32(i32 24, float %1509)  ; Sqrt(value)
  %1511 = fsub fast float 1.000000e+00, %1510
  %1512 = fmul fast float %1511, 2.000000e+00
  %1513 = call float @dx.op.unary.f32(i32 7, float %1512)  ; Saturate(value)
  %1514 = fmul fast float %1492, 0x3F9EB851E0000000
  %1515 = fadd fast float %1514, %1321
  %1516 = call float @dx.op.unary.f32(i32 22, float %1515)  ; Frc(value)
  %1517 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %13, float %1319, float %1516, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1518 = extractvalue %dx.types.ResRet.f32 %1517, 3
  %1519 = call float @dx.op.unary.f32(i32 7, float %1488)  ; Saturate(value)
  %1520 = fmul fast float %1518, %1299
  %1521 = fsub fast float %1519, %1520
  %1522 = call float @dx.op.unary.f32(i32 7, float %1521)  ; Saturate(value)
  %1523 = fmul fast float %1518, 1.250000e+00
  %1524 = fsub fast float %1519, %1523
  %1525 = call float @dx.op.unary.f32(i32 7, float %1524)  ; Saturate(value)
  %1526 = fsub fast float 5.000000e-01, %1321
  %1527 = fmul fast float %1526, 2.000000e+00
  %1528 = call float @dx.op.unary.f32(i32 7, float %1527)  ; Saturate(value)
  %1529 = fmul fast float %1528, %1528
  %1530 = fmul fast float %1529, 7.500000e-01
  %1531 = fadd fast float %1530, 1.000000e+00
  %1532 = fmul fast float %1522, 7.500000e-01
  %1533 = fmul fast float %1532, %1531
  %1534 = fmul fast float %1326, 0x3FD3333340000000
  %1535 = fadd fast float %1534, 0x3FC3333340000000
  %1536 = fmul fast float %1525, %1535
  %1537 = fadd fast float %1533, %1536
  %1538 = fmul fast float %1537, %1537
  %1539 = fmul fast float %1538, %1537
  %1540 = call float @dx.op.unary.f32(i32 7, float %1539)  ; Saturate(value)
  %1541 = fmul fast float %1540, 0x40285C2900000000
  %1542 = fsub fast float 1.400000e+01, %1541
  %1543 = fptoui float %1542 to i32
  %1544 = call float @dx.op.unary.f32(i32 22, float %1542)  ; Frc(value)
  %1545 = mul i32 %1543, 3
  %1546 = add i32 0, %1545
  %1547 = getelementptr [45 x float], [45 x float]* @heat_ramp.v.1dim, i32 0, i32 %1546
  %1548 = load float, float* %1547, align 4
  %1549 = mul i32 %1543, 3
  %1550 = add i32 1, %1549
  %1551 = getelementptr [45 x float], [45 x float]* @heat_ramp.v.1dim, i32 0, i32 %1550
  %1552 = load float, float* %1551, align 4
  %1553 = mul i32 %1543, 3
  %1554 = add i32 2, %1553
  %1555 = getelementptr [45 x float], [45 x float]* @heat_ramp.v.1dim, i32 0, i32 %1554
  %1556 = load float, float* %1555, align 4
  %1557 = add i32 %1543, 1
  %1558 = mul i32 %1557, 3
  %1559 = add i32 0, %1558
  %1560 = getelementptr [45 x float], [45 x float]* @heat_ramp.v.1dim, i32 0, i32 %1559
  %1561 = load float, float* %1560, align 4
  %1562 = mul i32 %1557, 3
  %1563 = add i32 1, %1562
  %1564 = getelementptr [45 x float], [45 x float]* @heat_ramp.v.1dim, i32 0, i32 %1563
  %1565 = load float, float* %1564, align 4
  %1566 = mul i32 %1557, 3
  %1567 = add i32 2, %1566
  %1568 = getelementptr [45 x float], [45 x float]* @heat_ramp.v.1dim, i32 0, i32 %1567
  %1569 = load float, float* %1568, align 4
  %1570 = fsub fast float %1561, %1548
  %1571 = fsub fast float %1565, %1552
  %1572 = fsub fast float %1569, %1556
  %1573 = fmul fast float %1570, %1544
  %1574 = fmul fast float %1571, %1544
  %1575 = fmul fast float %1572, %1544
  %1576 = fadd fast float %1573, %1548
  %1577 = fadd fast float %1574, %1552
  %1578 = fadd fast float %1575, %1556
  %1579 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 17)  ; CBufferLoadLegacy(handle,regIndex)
  %1580 = extractvalue %dx.types.CBufRet.f32 %1579, 0
  %1581 = fmul fast float %1343, %1343
  %1582 = fmul fast float %1581, %1345
  %1583 = fmul fast float %1582, %1502
  %1584 = fmul fast float %1583, %1513
  %1585 = fmul fast float %1584, %1522
  %1586 = fmul fast float %1585, %1580
  %1587 = fmul fast float %1576, %1576
  %1588 = fmul fast float %1587, 2.000000e+00
  %1589 = fmul fast float %1588, %1586
  %1590 = fmul fast float %1577, %1577
  %1591 = fmul fast float %1590, 2.000000e+00
  %1592 = fmul fast float %1591, %1586
  %1593 = fmul fast float %1578, %1578
  %1594 = fmul fast float %1593, 2.000000e+00
  %1595 = fmul fast float %1594, %1586
  %1596 = call float @dx.op.binary.f32(i32 36, float %1589, float 2.000000e+00)  ; FMin(a,b)
  %1597 = call float @dx.op.binary.f32(i32 36, float %1592, float 2.000000e+00)  ; FMin(a,b)
  %1598 = call float @dx.op.binary.f32(i32 36, float %1595, float 2.000000e+00)  ; FMin(a,b)
  %1599 = select i1 %1325, float 0x3FD3333340000000, float 7.500000e-01
  %1600 = fmul float %1599, %1586
  br label %5165

; <label>:1601                                    ; preds = %612
  %1602 = and i32 %627, 262144
  %1603 = icmp eq i32 %629, 0
  %1604 = and i1 %1603, %108
  %1605 = icmp eq i32 %1602, 0
  %1606 = and i1 %107, %1605
  %1607 = or i1 %1604, %1606
  br i1 %1607, label %5165, label %1608, !dx.controlflow.hints !50

; <label>:1608                                    ; preds = %1601
  %1609 = and i32 %627, 511
  %1610 = mul nuw nsw i32 %1609, 20
  br i1 %107, label %1611, label %1777, !dx.controlflow.hints !51

; <label>:1611                                    ; preds = %1608
  %1612 = add nuw nsw i32 %1610, 4
  %1613 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %1612, i32 undef)  ; BufferLoad(srv,index,wot)
  %1614 = extractvalue %dx.types.ResRet.i32 %1613, 0
  %1615 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %1610, i32 undef)  ; BufferLoad(srv,index,wot)
  %1616 = extractvalue %dx.types.ResRet.i32 %1615, 0
  %1617 = and i32 %1616, 255
  %1618 = uitofp i32 %1617 to float
  %1619 = lshr i32 %1616, 8
  %1620 = and i32 %1619, 255
  %1621 = uitofp i32 %1620 to float
  %1622 = lshr i32 %1616, 16
  %1623 = and i32 %1622, 255
  %1624 = uitofp i32 %1623 to float
  %1625 = lshr i32 %1616, 24
  %1626 = uitofp i32 %1625 to float
  %1627 = and i32 %627, 1048576
  %1628 = icmp ne i32 %1627, 0
  %1629 = and i32 %627, 2097152
  %1630 = icmp ne i32 %1629, 0
  %1631 = lshr i32 %1614, 8
  %1632 = and i32 %1631, 65535
  %1633 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1632)  ; LegacyF16ToF32(value)
  %1634 = and i32 %627, 65536
  %1635 = icmp ne i32 %1634, 0
  %1636 = select i1 %1635, float 1.000000e+00, float 0.000000e+00
  %1637 = select i1 %1628, float 0.000000e+00, float %1636
  %1638 = icmp ne i32 %1602, 0
  %1639 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %1640 = extractvalue %dx.types.CBufRet.f32 %1639, 0
  %1641 = extractvalue %dx.types.CBufRet.f32 %1639, 1
  %1642 = extractvalue %dx.types.CBufRet.f32 %1639, 2
  %1643 = extractvalue %dx.types.CBufRet.f32 %1639, 3
  %1644 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %1645 = extractvalue %dx.types.CBufRet.f32 %1644, 0
  %1646 = extractvalue %dx.types.CBufRet.f32 %1644, 1
  %1647 = extractvalue %dx.types.CBufRet.f32 %1644, 2
  %1648 = extractvalue %dx.types.CBufRet.f32 %1644, 3
  %1649 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1650 = extractvalue %dx.types.CBufRet.f32 %1649, 0
  %1651 = fmul fast float %1650, 2.000000e+00
  %1652 = select i1 %1630, float %1651, float 1.000000e+00
  %1653 = select i1 %1638, float 0x3F70101020000000, float 0.000000e+00
  %1654 = fmul fast float %1653, %1618
  %1655 = fmul fast float %1654, %1652
  %1656 = fmul fast float %1653, %1621
  %1657 = fmul fast float %1656, %1652
  %1658 = fmul fast float %1653, %1624
  %1659 = fmul fast float %1658, %1652
  %1660 = fmul fast float %1653, %1626
  %1661 = fmul fast float %1660, %1652
  %1662 = fcmp fast oeq float %1633, 0.000000e+00
  br i1 %1662, label %1762, label %1663, !dx.controlflow.hints !45

; <label>:1663                                    ; preds = %1611
  %1664 = fmul fast float %1633, %64
  %1665 = fptosi float %1664 to i32
  %1666 = fmul fast float %1633, %65
  %1667 = fptosi float %1666 to i32
  %1668 = call i32 @dx.op.binary.i32(i32 37, i32 1, i32 %1665)  ; IMax(a,b)
  %1669 = call i32 @dx.op.binary.i32(i32 37, i32 1, i32 %1667)  ; IMax(a,b)
  %1670 = sub i32 %63, %1669
  %1671 = or i32 %1670, %62
  %1672 = icmp slt i32 %1671, 0
  %1673 = fptosi float %58 to i32
  %1674 = fptosi float %59 to i32
  %1675 = icmp sge i32 %62, %1673
  %1676 = icmp sge i32 %1670, %1674
  %1677 = or i1 %1675, %1676
  %1678 = or i1 %1672, %1677
  br i1 %1678, label %1692, label %1679, !dx.controlflow.hints !46

; <label>:1679                                    ; preds = %1663
  %1680 = lshr i32 %1670, 2
  %1681 = mul i32 %84, %1680
  %1682 = add i32 %88, %1681
  %1683 = shl i32 %1682, 2
  %1684 = shl i32 %1670, 3
  %1685 = and i32 %1684, 24
  %1686 = or i32 %1685, %93
  %1687 = shl i32 1, %1686
  %1688 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %1683, i32 undef)  ; BufferLoad(srv,index,wot)
  %1689 = extractvalue %dx.types.ResRet.i32 %1688, 0
  %1690 = and i32 %1689, %1687
  %1691 = icmp ne i32 %1690, 0
  br label %1692

; <label>:1692                                    ; preds = %1679, %1663
  %1693 = phi i1 [ %1691, %1679 ], [ false, %1663 ]
  %1694 = add i32 %1669, %63
  %1695 = or i32 %1694, %62
  %1696 = icmp slt i32 %1695, 0
  %1697 = icmp sge i32 %1694, %1674
  %1698 = or i1 %1675, %1697
  %1699 = or i1 %1696, %1698
  br i1 %1699, label %1713, label %1700, !dx.controlflow.hints !46

; <label>:1700                                    ; preds = %1692
  %1701 = lshr i32 %1694, 2
  %1702 = mul i32 %84, %1701
  %1703 = add i32 %88, %1702
  %1704 = shl i32 %1703, 2
  %1705 = shl i32 %1694, 3
  %1706 = and i32 %1705, 24
  %1707 = or i32 %1706, %93
  %1708 = shl i32 1, %1707
  %1709 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %1704, i32 undef)  ; BufferLoad(srv,index,wot)
  %1710 = extractvalue %dx.types.ResRet.i32 %1709, 0
  %1711 = and i32 %1710, %1708
  %1712 = icmp ne i32 %1711, 0
  br label %1713

; <label>:1713                                    ; preds = %1700, %1692
  %1714 = phi i1 [ %1712, %1700 ], [ false, %1692 ]
  %1715 = and i1 %1693, %1714
  %1716 = sub i32 %62, %1668
  %1717 = or i32 %1716, %63
  %1718 = icmp slt i32 %1717, 0
  %1719 = icmp sge i32 %1716, %1673
  %1720 = icmp sge i32 %63, %1674
  %1721 = or i1 %1719, %1720
  %1722 = or i1 %1718, %1721
  br i1 %1722, label %1736, label %1723, !dx.controlflow.hints !46

; <label>:1723                                    ; preds = %1713
  %1724 = lshr i32 %1716, 3
  %1725 = add i32 %80, %1724
  %1726 = add i32 %1725, %82
  %1727 = add i32 %1726, %85
  %1728 = shl i32 %1727, 2
  %1729 = and i32 %1716, 7
  %1730 = or i32 %1729, %92
  %1731 = shl i32 1, %1730
  %1732 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %1728, i32 undef)  ; BufferLoad(srv,index,wot)
  %1733 = extractvalue %dx.types.ResRet.i32 %1732, 0
  %1734 = and i32 %1733, %1731
  %1735 = icmp ne i32 %1734, 0
  br label %1736

; <label>:1736                                    ; preds = %1723, %1713
  %1737 = phi i1 [ %1735, %1723 ], [ false, %1713 ]
  %1738 = and i1 %1715, %1737
  %1739 = add i32 %1668, %62
  %1740 = or i32 %1739, %63
  %1741 = icmp slt i32 %1740, 0
  %1742 = icmp sge i32 %1739, %1673
  %1743 = or i1 %1742, %1720
  %1744 = or i1 %1741, %1743
  br i1 %1744, label %1758, label %1745, !dx.controlflow.hints !46

; <label>:1745                                    ; preds = %1736
  %1746 = lshr i32 %1739, 3
  %1747 = add i32 %80, %1746
  %1748 = add i32 %1747, %82
  %1749 = add i32 %1748, %85
  %1750 = shl i32 %1749, 2
  %1751 = and i32 %1739, 7
  %1752 = or i32 %1751, %92
  %1753 = shl i32 1, %1752
  %1754 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %1750, i32 undef)  ; BufferLoad(srv,index,wot)
  %1755 = extractvalue %dx.types.ResRet.i32 %1754, 0
  %1756 = and i32 %1755, %1753
  %1757 = icmp ne i32 %1756, 0
  br label %1758

; <label>:1758                                    ; preds = %1745, %1736
  %1759 = phi i1 [ %1757, %1745 ], [ false, %1736 ]
  %1760 = and i1 %1738, %1759
  %1761 = xor i1 %1760, true
  br label %1762

; <label>:1762                                    ; preds = %1758, %1611
  %1763 = phi i1 [ %1761, %1758 ], [ false, %1611 ]
  br i1 %1763, label %5165, label %1764, !dx.controlflow.hints !47

; <label>:1764                                    ; preds = %1762
  %1765 = select i1 %77, float %1645, float %1640
  %1766 = select i1 %77, float %1646, float %1641
  %1767 = select i1 %77, float %1647, float %1642
  %1768 = select i1 %77, float %1648, float %1643
  %1769 = fmul fast float %1765, %1637
  %1770 = fmul fast float %1766, %1637
  %1771 = fmul fast float %1767, %1637
  %1772 = fmul fast float %1768, %1637
  %1773 = fmul fast float %1769, %1655
  %1774 = fmul fast float %1770, %1657
  %1775 = fmul fast float %1771, %1659
  %1776 = fmul fast float %1772, %1661
  br label %5165

; <label>:1777                                    ; preds = %1608
  %1778 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %1610, i32 undef)  ; BufferLoad(srv,index,wot)
  %1779 = extractvalue %dx.types.ResRet.i32 %1778, 0
  %1780 = and i32 %1779, 255
  %1781 = uitofp i32 %1780 to float
  %1782 = lshr i32 %1779, 8
  %1783 = and i32 %1782, 255
  %1784 = uitofp i32 %1783 to float
  %1785 = lshr i32 %1779, 16
  %1786 = and i32 %1785, 255
  %1787 = uitofp i32 %1786 to float
  %1788 = lshr i32 %1779, 24
  %1789 = uitofp i32 %1788 to float
  %1790 = fmul fast float %1781, 0x3F70101020000000
  %1791 = fmul fast float %1784, 0x3F70101020000000
  %1792 = fmul fast float %1787, 0x3F70101020000000
  %1793 = fmul fast float %1789, 0x3F70101020000000
  %1794 = fsub fast float 1.000000e+00, %1793
  %1795 = lshr i32 %627, 5
  %1796 = and i32 %1795, 1008
  %1797 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %1796, i32 undef)  ; BufferLoad(srv,index,wot)
  %1798 = extractvalue %dx.types.ResRet.i32 %1797, 0
  %1799 = and i32 %1798, 1022
  %1800 = uitofp i32 %1799 to float
  %1801 = fmul fast float %1800, 0x3F940A0500000000
  %1802 = fadd fast float %1801, -1.000000e+01
  %1803 = lshr i32 %1798, 10
  %1804 = and i32 %1803, 1022
  %1805 = uitofp i32 %1804 to float
  %1806 = fmul fast float %1805, 0x3F940A0500000000
  %1807 = fadd fast float %1806, -1.000000e+01
  %1808 = lshr i32 %1798, 20
  %1809 = and i32 %1808, 1022
  %1810 = uitofp i32 %1809 to float
  %1811 = fmul fast float %1810, 0x3F840A0500000000
  %1812 = add nuw nsw i32 %1610, 12
  %1813 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %1812, i32 undef)  ; BufferLoad(srv,index,wot)
  %1814 = extractvalue %dx.types.ResRet.i32 %1813, 0
  %1815 = and i32 %1814, 65535
  %1816 = uitofp i32 %1815 to float
  %1817 = fmul fast float %1816, 0x3EF0002000000000
  %1818 = lshr i32 %1814, 16
  %1819 = uitofp i32 %1818 to float
  %1820 = fmul fast float %1819, 0x3EF0002000000000
  %1821 = add nuw nsw i32 %1610, 8
  %1822 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %1821, i32 undef)  ; BufferLoad(srv,index,wot)
  %1823 = extractvalue %dx.types.ResRet.i32 %1822, 0
  %1824 = and i32 %1823, 65535
  %1825 = uitofp i32 %1824 to float
  %1826 = fmul fast float %1825, 0x3EF0002000000000
  %1827 = lshr i32 %1823, 16
  %1828 = uitofp i32 %1827 to float
  %1829 = fmul fast float %1828, 0x3EF0002000000000
  %1830 = fsub fast float %43, %1826
  %1831 = fdiv fast float %1830, %1817
  %1832 = fsub fast float %44, %1829
  %1833 = fdiv fast float %1832, %1820
  %1834 = add nuw nsw i32 %1610, 16
  %1835 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %1834, i32 undef)  ; BufferLoad(srv,index,wot)
  %1836 = extractvalue %dx.types.ResRet.f32 %1835, 0
  %1837 = fcmp fast olt float %1836, 1.000000e+01
  %1838 = uitofp i1 %1837 to float
  %1839 = fdiv fast float 2.400000e+02, %1836
  %1840 = call float @dx.op.unary.f32(i32 7, float %1839)  ; Saturate(value)
  %1841 = fdiv fast float 3.200000e+02, %1836
  %1842 = call float @dx.op.unary.f32(i32 7, float %1841)  ; Saturate(value)
  %1843 = fmul fast float %1842, 5.000000e-01
  %1844 = fadd fast float %1843, 2.500000e-01
  %1845 = fdiv fast float 3.200000e+01, %1844
  %1846 = select i1 %1837, float 3.200000e+01, float %1845
  %1847 = fmul fast float %1846, 1.600000e+01
  %1848 = fmul fast float %1846, 9.000000e+00
  %1849 = fmul fast float %1817, %1831
  %1850 = fmul fast float %1849, %1847
  %1851 = fmul fast float %1820, %1833
  %1852 = fmul fast float %1851, %1848
  %1853 = call float @dx.op.unary.f32(i32 29, float %1850)  ; Round_z(value)
  %1854 = call float @dx.op.unary.f32(i32 29, float %1852)  ; Round_z(value)
  %1855 = call float @dx.op.unary.f32(i32 7, float %1793)  ; Saturate(value)
  %1856 = fmul fast float %1855, 2.000000e+00
  %1857 = fsub fast float 3.000000e+00, %1856
  %1858 = fmul fast float %1840, 4.000000e+01
  %1859 = fmul fast float %1838, 1.000000e+02
  %1860 = fadd fast float %1859, %1858
  %1861 = fmul fast float %1811, %1860
  %1862 = fptoui float %1861 to i32
  %1863 = uitofp i32 %62 to float
  %1864 = uitofp i32 %63 to float
  %1865 = fptoui float %1863 to i32
  %1866 = fptoui float %1864 to i32
  %1867 = lshr i32 %1866, 2
  %1868 = mul i32 %84, %1867
  %1869 = lshr i32 %1865, 3
  %1870 = add i32 %80, %1869
  %1871 = add i32 %1870, %82
  %1872 = add i32 %1871, %1868
  %1873 = shl i32 %1872, 2
  %1874 = shl i32 %1866, 3
  %1875 = and i32 %1874, 24
  %1876 = and i32 %1865, 7
  %1877 = or i32 %1875, %1876
  %1878 = shl i32 1, %1877
  %1879 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %1873, i32 undef)  ; BufferLoad(srv,index,wot)
  %1880 = extractvalue %dx.types.ResRet.i32 %1879, 0
  %1881 = and i32 %1880, %1878
  %1882 = icmp ne i32 %1881, 0
  %1883 = icmp eq i32 %1862, 0
  br i1 %1883, label %2000, label %1884, !dx.controlflow.hints !49

; <label>:1884                                    ; preds = %1777
  %1885 = uitofp i32 %1862 to float
  %1886 = fmul fast float %64, 5.000000e-01
  %1887 = fmul fast float %1886, %1885
  %1888 = fmul fast float %65, 5.000000e-01
  %1889 = fmul fast float %1888, %1885
  %1890 = call float @dx.op.binary.f32(i32 35, float 5.000000e-01, float %1887)  ; FMax(a,b)
  %1891 = call float @dx.op.binary.f32(i32 35, float 5.000000e-01, float %1889)  ; FMax(a,b)
  br label %1892

; <label>:1892                                    ; preds = %1987, %1884
  %1893 = phi float [ 0.000000e+00, %1884 ], [ %1990, %1987 ]
  %1894 = phi i32 [ 0, %1884 ], [ %1991, %1987 ]
  %1895 = fmul fast float %43, 0x3FF280E1E0000000
  %1896 = fmul fast float %44, 0x3FF280E1E0000000
  %1897 = sitofp i32 %1894 to float
  %1898 = fmul fast float %1897, 0x3FB99999A0000000
  %1899 = fadd fast float %1898, %1895
  %1900 = fadd fast float %1898, %1896
  %1901 = fmul fast float %1899, 1.024000e+03
  %1902 = fmul fast float %1900, 1.024000e+03
  %1903 = fadd fast float %1901, -5.120000e+02
  %1904 = fadd fast float %1902, -5.120000e+02
  %1905 = fmul fast float %1899, 0x4081BEDF00000000
  %1906 = fadd fast float %1905, 0xC071BEDF00000000
  %1907 = call float @dx.op.unary.f32(i32 22, float %1906)  ; Frc(value)
  %1908 = fmul fast float %1903, %1907
  %1909 = fadd fast float %1908, %1904
  %1910 = fmul fast float %1900, 0x4073BEBE20000000
  %1911 = fadd fast float %1910, 0xC063BEBE20000000
  %1912 = call float @dx.op.unary.f32(i32 22, float %1911)  ; Frc(value)
  %1913 = fmul fast float %1904, %1912
  %1914 = fadd fast float %1913, %1903
  %1915 = fmul fast float %1909, %1914
  %1916 = call float @dx.op.unary.f32(i32 22, float %1915)  ; Frc(value)
  %1917 = fmul fast float %1916, 2.000000e+00
  %1918 = fadd fast float %1917, -1.000000e+00
  %1919 = fmul fast float %1918, %1890
  %1920 = fmul fast float %43, 0x3FEB681740000000
  %1921 = fmul fast float %44, 0x3FEB681740000000
  %1922 = fmul fast float %1897, 0x3FC99999A0000000
  %1923 = fadd fast float %1922, 1.250000e-01
  %1924 = fadd fast float %1923, %1920
  %1925 = fadd fast float %1923, %1921
  %1926 = fmul fast float %1924, 1.024000e+03
  %1927 = fmul fast float %1925, 1.024000e+03
  %1928 = fadd fast float %1926, -5.120000e+02
  %1929 = fadd fast float %1927, -5.120000e+02
  %1930 = fmul fast float %1924, 0x4081BEDF00000000
  %1931 = fadd fast float %1930, 0xC071BEDF00000000
  %1932 = call float @dx.op.unary.f32(i32 22, float %1931)  ; Frc(value)
  %1933 = fmul fast float %1928, %1932
  %1934 = fadd fast float %1933, %1929
  %1935 = fmul fast float %1925, 0x4073BEBE20000000
  %1936 = fadd fast float %1935, 0xC063BEBE20000000
  %1937 = call float @dx.op.unary.f32(i32 22, float %1936)  ; Frc(value)
  %1938 = fmul fast float %1929, %1937
  %1939 = fadd fast float %1938, %1928
  %1940 = fmul fast float %1934, %1939
  %1941 = call float @dx.op.unary.f32(i32 22, float %1940)  ; Frc(value)
  %1942 = fmul fast float %1941, 2.000000e+00
  %1943 = fadd fast float %1942, -1.000000e+00
  %1944 = fmul fast float %1943, %1891
  %1945 = fptosi float %1919 to i32
  %1946 = sitofp i32 %1945 to float
  %1947 = fadd fast float %1946, %1863
  %1948 = fptosi float %1947 to i32
  %1949 = fptosi float %1944 to i32
  %1950 = sitofp i32 %1949 to float
  %1951 = fadd fast float %1950, %1864
  %1952 = fptosi float %1951 to i32
  %1953 = or i32 %1952, %1948
  %1954 = icmp slt i32 %1953, 0
  %1955 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %1956 = extractvalue %dx.types.CBufRet.f32 %1955, 0
  %1957 = extractvalue %dx.types.CBufRet.f32 %1955, 1
  %1958 = fptosi float %1956 to i32
  %1959 = fptosi float %1957 to i32
  %1960 = icmp sge i32 %1948, %1958
  %1961 = icmp sge i32 %1952, %1959
  %1962 = or i1 %1960, %1961
  %1963 = or i1 %1954, %1962
  br i1 %1963, label %1987, label %1964, !dx.controlflow.hints !46

; <label>:1964                                    ; preds = %1892
  %1965 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %17, i32 51)  ; CBufferLoadLegacy(handle,regIndex)
  %1966 = extractvalue %dx.types.CBufRet.i32 %1965, 1
  %1967 = shl i32 %1966, 2
  %1968 = extractvalue %dx.types.CBufRet.i32 %1965, 3
  %1969 = shl i32 %1968, 1
  %1970 = lshr i32 %1952, 2
  %1971 = extractvalue %dx.types.CBufRet.i32 %1965, 2
  %1972 = mul i32 %1971, %1970
  %1973 = lshr i32 %1948, 3
  %1974 = add i32 %1967, %1973
  %1975 = add i32 %1974, %1969
  %1976 = add i32 %1975, %1972
  %1977 = shl i32 %1976, 2
  %1978 = shl i32 %1952, 3
  %1979 = and i32 %1978, 24
  %1980 = and i32 %1948, 7
  %1981 = or i32 %1979, %1980
  %1982 = shl i32 1, %1981
  %1983 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %1977, i32 undef)  ; BufferLoad(srv,index,wot)
  %1984 = extractvalue %dx.types.ResRet.i32 %1983, 0
  %1985 = and i32 %1984, %1982
  %1986 = icmp ne i32 %1985, 0
  br label %1987

; <label>:1987                                    ; preds = %1964, %1892
  %1988 = phi i1 [ %1986, %1964 ], [ false, %1892 ]
  %1989 = uitofp i1 %1988 to float
  %1990 = fadd fast float %1989, %1893
  %1991 = add nuw nsw i32 %1894, 1
  %1992 = icmp eq i32 %1991, 5
  br i1 %1992, label %1993, label %1892

; <label>:1993                                    ; preds = %1987
  %1994 = uitofp i1 %1882 to float
  %1995 = fmul fast float %1994, 0x3FC99999A0000000
  %1996 = fmul fast float %1995, %1990
  %1997 = fadd fast float %1996, -5.000000e-01
  %1998 = fmul fast float %1997, 2.000000e+00
  %1999 = call float @dx.op.unary.f32(i32 7, float %1998)  ; Saturate(value)
  br label %2000

; <label>:2000                                    ; preds = %1993, %1777
  %2001 = phi float [ %1999, %1993 ], [ 0.000000e+00, %1777 ]
  %2002 = fdiv fast float %1853, %1847
  %2003 = fdiv fast float %1854, %1848
  %2004 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2005 = extractvalue %dx.types.CBufRet.f32 %2004, 3
  %2006 = fmul fast float %2005, %1802
  %2007 = fadd fast float %2006, %2002
  %2008 = fsub fast float %2003, %2006
  %2009 = call float @dx.op.unary.f32(i32 22, float %2007)  ; Frc(value)
  %2010 = call float @dx.op.unary.f32(i32 22, float %2008)  ; Frc(value)
  %2011 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %14, float %2009, float %2010, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2012 = extractvalue %dx.types.ResRet.f32 %2011, 0
  %2013 = fmul fast float %2012, %1807
  %2014 = call float @dx.op.unary.f32(i32 7, float %2013)  ; Saturate(value)
  %2015 = call float @dx.op.binary.f32(i32 35, float 0x3F847AE140000000, float %2014)  ; FMax(a,b)
  %2016 = fsub fast float -5.000000e-01, %1853
  %2017 = fadd fast float %2016, %1850
  %2018 = fsub fast float -5.000000e-01, %1854
  %2019 = fadd fast float %2018, %1852
  %2020 = fmul fast float %2017, 2.000000e+00
  %2021 = fmul fast float %2019, 2.000000e+00
  %2022 = call float @dx.op.dot2.f32(i32 54, float %2020, float %2021, float %2020, float %2021)  ; Dot2(ax,ay,bx,by)
  %2023 = call float @dx.op.unary.f32(i32 24, float %2022)  ; Sqrt(value)
  %2024 = fsub fast float 1.000000e+00, %2023
  %2025 = fmul fast float %2024, 2.000000e+00
  %2026 = call float @dx.op.unary.f32(i32 7, float %2025)  ; Saturate(value)
  %2027 = fadd fast float %2006, %1833
  %2028 = call float @dx.op.unary.f32(i32 22, float %2027)  ; Frc(value)
  %2029 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %13, float %1831, float %2028, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2030 = extractvalue %dx.types.ResRet.f32 %2029, 3
  %2031 = call float @dx.op.unary.f32(i32 7, float %2001)  ; Saturate(value)
  %2032 = fmul fast float %2030, %1794
  %2033 = fsub fast float %2031, %2032
  %2034 = call float @dx.op.unary.f32(i32 7, float %2033)  ; Saturate(value)
  %2035 = fmul fast float %2030, 1.250000e+00
  %2036 = fsub fast float %2031, %2035
  %2037 = call float @dx.op.unary.f32(i32 7, float %2036)  ; Saturate(value)
  %2038 = fmul fast float %2037, %2037
  %2039 = fmul fast float %2038, %2037
  %2040 = call float @dx.op.unary.f32(i32 7, float %2039)  ; Saturate(value)
  %2041 = fmul fast float %2040, 0x40285C2900000000
  %2042 = fsub fast float 1.400000e+01, %2041
  %2043 = fptoui float %2042 to i32
  %2044 = call float @dx.op.unary.f32(i32 22, float %2042)  ; Frc(value)
  %2045 = mul i32 %2043, 3
  %2046 = add i32 0, %2045
  %2047 = getelementptr [45 x float], [45 x float]* @supp_ramp.v.1dim, i32 0, i32 %2046
  %2048 = load float, float* %2047, align 4
  %2049 = mul i32 %2043, 3
  %2050 = add i32 1, %2049
  %2051 = getelementptr [45 x float], [45 x float]* @supp_ramp.v.1dim, i32 0, i32 %2050
  %2052 = load float, float* %2051, align 4
  %2053 = mul i32 %2043, 3
  %2054 = add i32 2, %2053
  %2055 = getelementptr [45 x float], [45 x float]* @supp_ramp.v.1dim, i32 0, i32 %2054
  %2056 = load float, float* %2055, align 4
  %2057 = add i32 %2043, 1
  %2058 = mul i32 %2057, 3
  %2059 = add i32 0, %2058
  %2060 = getelementptr [45 x float], [45 x float]* @supp_ramp.v.1dim, i32 0, i32 %2059
  %2061 = load float, float* %2060, align 4
  %2062 = mul i32 %2057, 3
  %2063 = add i32 1, %2062
  %2064 = getelementptr [45 x float], [45 x float]* @supp_ramp.v.1dim, i32 0, i32 %2063
  %2065 = load float, float* %2064, align 4
  %2066 = mul i32 %2057, 3
  %2067 = add i32 2, %2066
  %2068 = getelementptr [45 x float], [45 x float]* @supp_ramp.v.1dim, i32 0, i32 %2067
  %2069 = load float, float* %2068, align 4
  %2070 = fsub fast float %2061, %2048
  %2071 = fsub fast float %2065, %2052
  %2072 = fsub fast float %2069, %2056
  %2073 = fmul fast float %2070, %2044
  %2074 = fmul fast float %2071, %2044
  %2075 = fmul fast float %2072, %2044
  %2076 = fadd fast float %2073, %2048
  %2077 = fadd fast float %2074, %2052
  %2078 = fadd fast float %2075, %2056
  %2079 = fmul fast float %1790, %2076
  %2080 = fmul fast float %1791, %2077
  %2081 = fmul fast float %1792, %2078
  %2082 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 17)  ; CBufferLoadLegacy(handle,regIndex)
  %2083 = extractvalue %dx.types.CBufRet.f32 %2082, 0
  %2084 = fmul fast float %1855, %1855
  %2085 = fmul fast float %2084, %1857
  %2086 = fmul fast float %2085, %2015
  %2087 = fmul fast float %2086, %2026
  %2088 = fmul fast float %2087, %2034
  %2089 = fmul fast float %2088, %2083
  %2090 = fmul fast float %2079, %2079
  %2091 = fmul fast float %2090, 5.000000e+00
  %2092 = fmul fast float %2091, %2089
  %2093 = fmul fast float %2080, %2080
  %2094 = fmul fast float %2093, 5.000000e+00
  %2095 = fmul fast float %2094, %2089
  %2096 = fmul fast float %2089, 5.000000e+00
  %2097 = fmul fast float %2081, %2081
  %2098 = fmul fast float %2097, %2096
  %2099 = call float @dx.op.binary.f32(i32 36, float %2092, float 2.000000e+00)  ; FMin(a,b)
  %2100 = call float @dx.op.binary.f32(i32 36, float %2095, float 2.000000e+00)  ; FMin(a,b)
  %2101 = call float @dx.op.binary.f32(i32 36, float %2098, float 2.000000e+00)  ; FMin(a,b)
  %2102 = select i1 %1837, float 0x3FD3333340000000, float 7.500000e-01
  %2103 = fmul float %2102, %2089
  br label %5165

; <label>:2104                                    ; preds = %612
  %2105 = and i32 %627, 511
  %2106 = mul nuw nsw i32 %2105, 20
  %2107 = add nuw nsw i32 %2106, 4
  %2108 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %2107, i32 undef)  ; BufferLoad(srv,index,wot)
  %2109 = extractvalue %dx.types.ResRet.i32 %2108, 0
  %2110 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %2106, i32 undef)  ; BufferLoad(srv,index,wot)
  %2111 = extractvalue %dx.types.ResRet.i32 %2110, 0
  %2112 = and i32 %2111, 255
  %2113 = uitofp i32 %2112 to float
  %2114 = lshr i32 %2111, 8
  %2115 = and i32 %2114, 255
  %2116 = uitofp i32 %2115 to float
  %2117 = lshr i32 %2111, 16
  %2118 = and i32 %2117, 255
  %2119 = uitofp i32 %2118 to float
  %2120 = lshr i32 %2111, 24
  %2121 = uitofp i32 %2120 to float
  %2122 = fmul fast float %2113, 0x3F70101020000000
  %2123 = fmul fast float %2116, 0x3F70101020000000
  %2124 = fmul fast float %2119, 0x3F70101020000000
  %2125 = fmul fast float %2121, 0x3F70101020000000
  %2126 = lshr i32 %2109, 8
  %2127 = and i32 %2126, 65535
  %2128 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2127)  ; LegacyF16ToF32(value)
  %2129 = fcmp fast oeq float %2128, 0.000000e+00
  br i1 %2129, label %2229, label %2130, !dx.controlflow.hints !45

; <label>:2130                                    ; preds = %2104
  %2131 = fmul fast float %2128, %64
  %2132 = fptosi float %2131 to i32
  %2133 = fmul fast float %2128, %65
  %2134 = fptosi float %2133 to i32
  %2135 = call i32 @dx.op.binary.i32(i32 37, i32 1, i32 %2132)  ; IMax(a,b)
  %2136 = call i32 @dx.op.binary.i32(i32 37, i32 1, i32 %2134)  ; IMax(a,b)
  %2137 = sub i32 %63, %2136
  %2138 = or i32 %2137, %62
  %2139 = icmp slt i32 %2138, 0
  %2140 = fptosi float %58 to i32
  %2141 = fptosi float %59 to i32
  %2142 = icmp sge i32 %62, %2140
  %2143 = icmp sge i32 %2137, %2141
  %2144 = or i1 %2142, %2143
  %2145 = or i1 %2139, %2144
  br i1 %2145, label %2159, label %2146, !dx.controlflow.hints !46

; <label>:2146                                    ; preds = %2130
  %2147 = lshr i32 %2137, 2
  %2148 = mul i32 %84, %2147
  %2149 = add i32 %88, %2148
  %2150 = shl i32 %2149, 2
  %2151 = shl i32 %2137, 3
  %2152 = and i32 %2151, 24
  %2153 = or i32 %2152, %93
  %2154 = shl i32 1, %2153
  %2155 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %2150, i32 undef)  ; BufferLoad(srv,index,wot)
  %2156 = extractvalue %dx.types.ResRet.i32 %2155, 0
  %2157 = and i32 %2156, %2154
  %2158 = icmp ne i32 %2157, 0
  br label %2159

; <label>:2159                                    ; preds = %2146, %2130
  %2160 = phi i1 [ %2158, %2146 ], [ false, %2130 ]
  %2161 = add i32 %2136, %63
  %2162 = or i32 %2161, %62
  %2163 = icmp slt i32 %2162, 0
  %2164 = icmp sge i32 %2161, %2141
  %2165 = or i1 %2142, %2164
  %2166 = or i1 %2163, %2165
  br i1 %2166, label %2180, label %2167, !dx.controlflow.hints !46

; <label>:2167                                    ; preds = %2159
  %2168 = lshr i32 %2161, 2
  %2169 = mul i32 %84, %2168
  %2170 = add i32 %88, %2169
  %2171 = shl i32 %2170, 2
  %2172 = shl i32 %2161, 3
  %2173 = and i32 %2172, 24
  %2174 = or i32 %2173, %93
  %2175 = shl i32 1, %2174
  %2176 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %2171, i32 undef)  ; BufferLoad(srv,index,wot)
  %2177 = extractvalue %dx.types.ResRet.i32 %2176, 0
  %2178 = and i32 %2177, %2175
  %2179 = icmp ne i32 %2178, 0
  br label %2180

; <label>:2180                                    ; preds = %2167, %2159
  %2181 = phi i1 [ %2179, %2167 ], [ false, %2159 ]
  %2182 = and i1 %2160, %2181
  %2183 = sub i32 %62, %2135
  %2184 = or i32 %2183, %63
  %2185 = icmp slt i32 %2184, 0
  %2186 = icmp sge i32 %2183, %2140
  %2187 = icmp sge i32 %63, %2141
  %2188 = or i1 %2186, %2187
  %2189 = or i1 %2185, %2188
  br i1 %2189, label %2203, label %2190, !dx.controlflow.hints !46

; <label>:2190                                    ; preds = %2180
  %2191 = lshr i32 %2183, 3
  %2192 = add i32 %80, %2191
  %2193 = add i32 %2192, %82
  %2194 = add i32 %2193, %85
  %2195 = shl i32 %2194, 2
  %2196 = and i32 %2183, 7
  %2197 = or i32 %2196, %92
  %2198 = shl i32 1, %2197
  %2199 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %2195, i32 undef)  ; BufferLoad(srv,index,wot)
  %2200 = extractvalue %dx.types.ResRet.i32 %2199, 0
  %2201 = and i32 %2200, %2198
  %2202 = icmp ne i32 %2201, 0
  br label %2203

; <label>:2203                                    ; preds = %2190, %2180
  %2204 = phi i1 [ %2202, %2190 ], [ false, %2180 ]
  %2205 = and i1 %2182, %2204
  %2206 = add i32 %2135, %62
  %2207 = or i32 %2206, %63
  %2208 = icmp slt i32 %2207, 0
  %2209 = icmp sge i32 %2206, %2140
  %2210 = or i1 %2209, %2187
  %2211 = or i1 %2208, %2210
  br i1 %2211, label %2225, label %2212, !dx.controlflow.hints !46

; <label>:2212                                    ; preds = %2203
  %2213 = lshr i32 %2206, 3
  %2214 = add i32 %80, %2213
  %2215 = add i32 %2214, %82
  %2216 = add i32 %2215, %85
  %2217 = shl i32 %2216, 2
  %2218 = and i32 %2206, 7
  %2219 = or i32 %2218, %92
  %2220 = shl i32 1, %2219
  %2221 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %2217, i32 undef)  ; BufferLoad(srv,index,wot)
  %2222 = extractvalue %dx.types.ResRet.i32 %2221, 0
  %2223 = and i32 %2222, %2220
  %2224 = icmp ne i32 %2223, 0
  br label %2225

; <label>:2225                                    ; preds = %2212, %2203
  %2226 = phi i1 [ %2224, %2212 ], [ false, %2203 ]
  %2227 = and i1 %2205, %2226
  %2228 = xor i1 %2227, true
  br label %2229

; <label>:2229                                    ; preds = %2225, %2104
  %2230 = phi i1 [ %2228, %2225 ], [ false, %2104 ]
  %2231 = and i32 %627, 1114112
  %2232 = icmp ne i32 %2231, 0
  %2233 = and i1 %2232, %108
  %2234 = or i1 %2233, %2230
  %2235 = select i1 %2234, float %2122, float 0.000000e+00
  %2236 = select i1 %2234, float %2123, float 0.000000e+00
  %2237 = select i1 %2234, float %2124, float 0.000000e+00
  %2238 = select i1 %2234, float %2125, float 0.000000e+00
  br label %5165

; <label>:2239                                    ; preds = %612
  %2240 = and i32 %627, 511
  %2241 = mul nuw nsw i32 %2240, 20
  %2242 = add nuw nsw i32 %2241, 4
  %2243 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %2242, i32 undef)  ; BufferLoad(srv,index,wot)
  %2244 = extractvalue %dx.types.ResRet.i32 %2243, 0
  %2245 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %2241, i32 undef)  ; BufferLoad(srv,index,wot)
  %2246 = extractvalue %dx.types.ResRet.i32 %2245, 0
  %2247 = and i32 %2246, 255
  %2248 = uitofp i32 %2247 to float
  %2249 = lshr i32 %2246, 8
  %2250 = and i32 %2249, 255
  %2251 = uitofp i32 %2250 to float
  %2252 = lshr i32 %2246, 16
  %2253 = and i32 %2252, 255
  %2254 = uitofp i32 %2253 to float
  %2255 = lshr i32 %2246, 24
  %2256 = uitofp i32 %2255 to float
  %2257 = fmul fast float %2248, 0x3F70101020000000
  %2258 = fmul fast float %2251, 0x3F70101020000000
  %2259 = fmul fast float %2254, 0x3F70101020000000
  %2260 = fmul fast float %2256, 0x3F70101020000000
  %2261 = and i32 %627, 2097152
  %2262 = icmp ne i32 %2261, 0
  %2263 = lshr i32 %2244, 8
  %2264 = and i32 %2263, 65535
  %2265 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2264)  ; LegacyF16ToF32(value)
  %2266 = and i32 %627, 65536
  %2267 = icmp ne i32 %2266, 0
  %2268 = select i1 %2267, float 1.000000e+00, float 0.000000e+00
  br i1 %107, label %2298, label %2269, !dx.controlflow.hints !44

; <label>:2269                                    ; preds = %2239
  %2270 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2271 = extractvalue %dx.types.CBufRet.f32 %2270, 0
  %2272 = extractvalue %dx.types.CBufRet.f32 %2270, 1
  %2273 = extractvalue %dx.types.CBufRet.f32 %2270, 2
  %2274 = extractvalue %dx.types.CBufRet.f32 %2270, 3
  %2275 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %2276 = extractvalue %dx.types.CBufRet.f32 %2275, 0
  %2277 = extractvalue %dx.types.CBufRet.f32 %2275, 1
  %2278 = extractvalue %dx.types.CBufRet.f32 %2275, 2
  %2279 = extractvalue %dx.types.CBufRet.f32 %2275, 3
  %2280 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %2281 = extractvalue %dx.types.CBufRet.f32 %2280, 0
  %2282 = fadd fast float %2257, -1.000000e+00
  %2283 = fadd fast float %2258, -1.000000e+00
  %2284 = fadd fast float %2259, -1.000000e+00
  %2285 = fadd fast float %2260, -1.000000e+00
  %2286 = fmul fast float %2281, %2282
  %2287 = fmul fast float %2281, %2283
  %2288 = fmul fast float %2281, %2284
  %2289 = fmul fast float %2281, %2285
  %2290 = fadd fast float %2286, 1.000000e+00
  %2291 = fadd fast float %2287, 1.000000e+00
  %2292 = fadd fast float %2288, 1.000000e+00
  %2293 = fadd fast float %2289, 1.000000e+00
  %2294 = fmul fast float %2290, %2276
  %2295 = fmul fast float %2291, %2277
  %2296 = fmul fast float %2292, %2278
  %2297 = fmul fast float %2293, %2279
  br label %2304

; <label>:2298                                    ; preds = %2239
  %2299 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %2300 = extractvalue %dx.types.CBufRet.f32 %2299, 0
  %2301 = extractvalue %dx.types.CBufRet.f32 %2299, 1
  %2302 = extractvalue %dx.types.CBufRet.f32 %2299, 2
  %2303 = extractvalue %dx.types.CBufRet.f32 %2299, 3
  br label %2304

; <label>:2304                                    ; preds = %2298, %2269
  %2305 = phi float [ %2294, %2269 ], [ %2257, %2298 ]
  %2306 = phi float [ %2295, %2269 ], [ %2258, %2298 ]
  %2307 = phi float [ %2296, %2269 ], [ %2259, %2298 ]
  %2308 = phi float [ %2297, %2269 ], [ %2260, %2298 ]
  %2309 = phi float [ %2271, %2269 ], [ %2300, %2298 ]
  %2310 = phi float [ %2272, %2269 ], [ %2301, %2298 ]
  %2311 = phi float [ %2273, %2269 ], [ %2302, %2298 ]
  %2312 = phi float [ %2274, %2269 ], [ %2303, %2298 ]
  %2313 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2314 = extractvalue %dx.types.CBufRet.f32 %2313, 0
  %2315 = fmul fast float %2314, 2.000000e+00
  %2316 = select i1 %2262, float %2315, float 1.000000e+00
  %2317 = fmul fast float %2316, %2305
  %2318 = fmul fast float %2316, %2306
  %2319 = fmul fast float %2316, %2307
  %2320 = fmul fast float %2316, %2308
  %2321 = fcmp fast oeq float %2265, 0.000000e+00
  br i1 %2321, label %2421, label %2322, !dx.controlflow.hints !45

; <label>:2322                                    ; preds = %2304
  %2323 = fmul fast float %2265, %64
  %2324 = fptosi float %2323 to i32
  %2325 = fmul fast float %2265, %65
  %2326 = fptosi float %2325 to i32
  %2327 = call i32 @dx.op.binary.i32(i32 37, i32 1, i32 %2324)  ; IMax(a,b)
  %2328 = call i32 @dx.op.binary.i32(i32 37, i32 1, i32 %2326)  ; IMax(a,b)
  %2329 = sub i32 %63, %2328
  %2330 = or i32 %2329, %62
  %2331 = icmp slt i32 %2330, 0
  %2332 = fptosi float %58 to i32
  %2333 = fptosi float %59 to i32
  %2334 = icmp sge i32 %62, %2332
  %2335 = icmp sge i32 %2329, %2333
  %2336 = or i1 %2334, %2335
  %2337 = or i1 %2331, %2336
  br i1 %2337, label %2351, label %2338, !dx.controlflow.hints !46

; <label>:2338                                    ; preds = %2322
  %2339 = lshr i32 %2329, 2
  %2340 = mul i32 %84, %2339
  %2341 = add i32 %88, %2340
  %2342 = shl i32 %2341, 2
  %2343 = shl i32 %2329, 3
  %2344 = and i32 %2343, 24
  %2345 = or i32 %2344, %93
  %2346 = shl i32 1, %2345
  %2347 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %2342, i32 undef)  ; BufferLoad(srv,index,wot)
  %2348 = extractvalue %dx.types.ResRet.i32 %2347, 0
  %2349 = and i32 %2348, %2346
  %2350 = icmp ne i32 %2349, 0
  br label %2351

; <label>:2351                                    ; preds = %2338, %2322
  %2352 = phi i1 [ %2350, %2338 ], [ false, %2322 ]
  %2353 = add i32 %2328, %63
  %2354 = or i32 %2353, %62
  %2355 = icmp slt i32 %2354, 0
  %2356 = icmp sge i32 %2353, %2333
  %2357 = or i1 %2334, %2356
  %2358 = or i1 %2355, %2357
  br i1 %2358, label %2372, label %2359, !dx.controlflow.hints !46

; <label>:2359                                    ; preds = %2351
  %2360 = lshr i32 %2353, 2
  %2361 = mul i32 %84, %2360
  %2362 = add i32 %88, %2361
  %2363 = shl i32 %2362, 2
  %2364 = shl i32 %2353, 3
  %2365 = and i32 %2364, 24
  %2366 = or i32 %2365, %93
  %2367 = shl i32 1, %2366
  %2368 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %2363, i32 undef)  ; BufferLoad(srv,index,wot)
  %2369 = extractvalue %dx.types.ResRet.i32 %2368, 0
  %2370 = and i32 %2369, %2367
  %2371 = icmp ne i32 %2370, 0
  br label %2372

; <label>:2372                                    ; preds = %2359, %2351
  %2373 = phi i1 [ %2371, %2359 ], [ false, %2351 ]
  %2374 = and i1 %2352, %2373
  %2375 = sub i32 %62, %2327
  %2376 = or i32 %2375, %63
  %2377 = icmp slt i32 %2376, 0
  %2378 = icmp sge i32 %2375, %2332
  %2379 = icmp sge i32 %63, %2333
  %2380 = or i1 %2378, %2379
  %2381 = or i1 %2377, %2380
  br i1 %2381, label %2395, label %2382, !dx.controlflow.hints !46

; <label>:2382                                    ; preds = %2372
  %2383 = lshr i32 %2375, 3
  %2384 = add i32 %80, %2383
  %2385 = add i32 %2384, %82
  %2386 = add i32 %2385, %85
  %2387 = shl i32 %2386, 2
  %2388 = and i32 %2375, 7
  %2389 = or i32 %2388, %92
  %2390 = shl i32 1, %2389
  %2391 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %2387, i32 undef)  ; BufferLoad(srv,index,wot)
  %2392 = extractvalue %dx.types.ResRet.i32 %2391, 0
  %2393 = and i32 %2392, %2390
  %2394 = icmp ne i32 %2393, 0
  br label %2395

; <label>:2395                                    ; preds = %2382, %2372
  %2396 = phi i1 [ %2394, %2382 ], [ false, %2372 ]
  %2397 = and i1 %2374, %2396
  %2398 = add i32 %2327, %62
  %2399 = or i32 %2398, %63
  %2400 = icmp slt i32 %2399, 0
  %2401 = icmp sge i32 %2398, %2332
  %2402 = or i1 %2401, %2379
  %2403 = or i1 %2400, %2402
  br i1 %2403, label %2417, label %2404, !dx.controlflow.hints !46

; <label>:2404                                    ; preds = %2395
  %2405 = lshr i32 %2398, 3
  %2406 = add i32 %80, %2405
  %2407 = add i32 %2406, %82
  %2408 = add i32 %2407, %85
  %2409 = shl i32 %2408, 2
  %2410 = and i32 %2398, 7
  %2411 = or i32 %2410, %92
  %2412 = shl i32 1, %2411
  %2413 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %2409, i32 undef)  ; BufferLoad(srv,index,wot)
  %2414 = extractvalue %dx.types.ResRet.i32 %2413, 0
  %2415 = and i32 %2414, %2412
  %2416 = icmp ne i32 %2415, 0
  br label %2417

; <label>:2417                                    ; preds = %2404, %2395
  %2418 = phi i1 [ %2416, %2404 ], [ false, %2395 ]
  %2419 = and i1 %2397, %2418
  %2420 = xor i1 %2419, true
  br label %2421

; <label>:2421                                    ; preds = %2417, %2304
  %2422 = phi i1 [ %2420, %2417 ], [ false, %2304 ]
  %2423 = add nuw nsw i32 %2241, 12
  %2424 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %2423, i32 undef)  ; BufferLoad(srv,index,wot)
  %2425 = extractvalue %dx.types.ResRet.i32 %2424, 0
  %2426 = and i32 %2425, 65535
  %2427 = uitofp i32 %2426 to float
  %2428 = lshr i32 %2425, 16
  %2429 = uitofp i32 %2428 to float
  %2430 = fmul fast float %2427, 0x3EF0002000000000
  %2431 = fmul fast float %2429, 0x3EF0002000000000
  %2432 = add nuw nsw i32 %2241, 8
  %2433 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %2432, i32 undef)  ; BufferLoad(srv,index,wot)
  %2434 = extractvalue %dx.types.ResRet.i32 %2433, 0
  %2435 = and i32 %2434, 65535
  %2436 = uitofp i32 %2435 to float
  %2437 = fmul fast float %2436, 0x3EF0002000000000
  %2438 = lshr i32 %2434, 16
  %2439 = uitofp i32 %2438 to float
  %2440 = fmul fast float %2439, 0x3EF0002000000000
  %2441 = fsub fast float %43, %2437
  %2442 = fdiv fast float %2441, %2430
  %2443 = fsub fast float %44, %2440
  %2444 = fdiv fast float %2443, %2431
  %2445 = extractvalue %dx.types.CBufRet.f32 %2313, 3
  %2446 = fmul fast float %2445, 0x3FA99999A0000000
  %2447 = fadd fast float %2446, %2444
  %2448 = call float @dx.op.unary.f32(i32 22, float %2442)  ; Frc(value)
  %2449 = call float @dx.op.unary.f32(i32 22, float %2447)  ; Frc(value)
  %2450 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %13, float %2448, float %2449, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2451 = extractvalue %dx.types.ResRet.f32 %2450, 1
  %2452 = extractvalue %dx.types.ResRet.f32 %2450, 3
  %2453 = and i32 %2244, 255
  %2454 = uitofp i32 %2453 to float
  %2455 = fmul fast float %2454, 0x4010101020000000
  %2456 = fadd fast float %2455, -5.120000e+02
  %2457 = fmul fast float %2454, 0x4001D0AFC0000000
  %2458 = fadd fast float %2457, 0xC071BEDF00000000
  %2459 = call float @dx.op.unary.f32(i32 22, float %2458)  ; Frc(value)
  %2460 = fmul fast float %2456, %2459
  %2461 = fadd fast float %2460, %2456
  %2462 = fmul fast float %2454, 0x3FF3D290C0000000
  %2463 = fadd fast float %2462, 0xC063BEBE20000000
  %2464 = call float @dx.op.unary.f32(i32 22, float %2463)  ; Frc(value)
  %2465 = fmul fast float %2456, %2464
  %2466 = fadd fast float %2465, %2456
  %2467 = fmul fast float %2461, %2466
  %2468 = call float @dx.op.unary.f32(i32 22, float %2467)  ; Frc(value)
  %2469 = fadd fast float %2444, 1.000000e+00
  %2470 = fmul fast float %2469, 0x401E322D00000000
  %2471 = fmul fast float %2470, %2468
  %2472 = fmul fast float %2445, 0x3FE921FB60000000
  %2473 = fadd fast float %2472, %2471
  %2474 = call float @dx.op.unary.f32(i32 13, float %2473)  ; Sin(value)
  %2475 = uitofp i32 %62 to float
  %2476 = uitofp i32 %63 to float
  %2477 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %2478 = extractvalue %dx.types.CBufRet.f32 %2477, 2
  %2479 = fmul fast float %2478, 0x40165A5B00000000
  %2480 = fadd fast float %2479, %2475
  %2481 = fadd fast float %2479, %2476
  %2482 = extractvalue %dx.types.CBufRet.f32 %2477, 0
  %2483 = fmul fast float %2482, 2.000000e+00
  %2484 = fadd fast float %2483, -1.000000e+00
  %2485 = fmul fast float %2484, %2480
  %2486 = fmul fast float %2484, %2481
  %2487 = call float @dx.op.dot2.f32(i32 54, float %2485, float %2486, float 0x3FB12E2860000000, float 0x3F77E8B200000000)  ; Dot2(ax,ay,bx,by)
  %2488 = call float @dx.op.unary.f32(i32 22, float %2487)  ; Frc(value)
  %2489 = fmul fast float %2488, 0x404A7DD040000000
  %2490 = call float @dx.op.unary.f32(i32 22, float %2489)  ; Frc(value)
  br i1 %2422, label %2491, label %2502, !dx.controlflow.hints !52

; <label>:2491                                    ; preds = %2421
  %2492 = icmp ne i32 %629, 0
  %2493 = fadd fast float %2474, 1.000000e+00
  %2494 = call float @dx.op.unary.f32(i32 23, float %2490)  ; Log(value)
  %2495 = fmul fast float %2494, %2493
  %2496 = call float @dx.op.unary.f32(i32 21, float %2495)  ; Exp(value)
  %2497 = and i1 %107, %2492
  %2498 = uitofp i1 %2497 to float
  %2499 = fmul fast float %2320, %2268
  %2500 = fmul fast float %2499, %2498
  %2501 = fmul fast float %2500, %2496
  br label %5165

; <label>:2502                                    ; preds = %2421
  %2503 = and i32 %627, 262144
  %2504 = fcmp fast ole float %2268, 0.000000e+00
  %2505 = icmp eq i32 %2503, 0
  %2506 = and i1 %107, %2505
  %2507 = or i1 %2504, %2506
  br i1 %2507, label %5165, label %2508, !dx.controlflow.hints !53

; <label>:2508                                    ; preds = %2502
  %2509 = fmul fast float %2445, 0x3FF921FB60000000
  %2510 = fadd fast float %2509, %2471
  %2511 = call float @dx.op.unary.f32(i32 13, float %2510)  ; Sin(value)
  %2512 = fmul fast float %2511, 7.500000e-01
  %2513 = fadd fast float %2512, 1.500000e+00
  %2514 = fmul fast float %2427, 0x3E8999CCE0000000
  %2515 = fmul fast float %2514, %58
  %2516 = fmul fast float %59, 0x3E8999CCE0000000
  %2517 = fmul fast float %2516, %2429
  %2518 = call float @dx.op.binary.f32(i32 35, float %2515, float 5.000000e-01)  ; FMax(a,b)
  %2519 = call float @dx.op.binary.f32(i32 35, float %2517, float 5.000000e-01)  ; FMax(a,b)
  %2520 = fmul fast float %2513, %2518
  %2521 = fmul fast float %2519, %2513
  %2522 = fsub fast float 1.000000e+00, %2451
  %2523 = fadd fast float %2522, %2490
  %2524 = fmul fast float %2523, 5.000000e+00
  %2525 = call float @dx.op.unary.f32(i32 28, float %2520)  ; Round_pi(value)
  %2526 = call float @dx.op.unary.f32(i32 28, float %2521)  ; Round_pi(value)
  %2527 = fptosi float %2525 to i32
  %2528 = fptosi float %2526 to i32
  %2529 = sub i32 %63, %2528
  %2530 = or i32 %2529, %62
  %2531 = icmp slt i32 %2530, 0
  %2532 = fptosi float %58 to i32
  %2533 = fptosi float %59 to i32
  %2534 = icmp sge i32 %62, %2532
  %2535 = icmp sge i32 %2529, %2533
  %2536 = or i1 %2534, %2535
  %2537 = or i1 %2531, %2536
  br i1 %2537, label %2551, label %2538, !dx.controlflow.hints !46

; <label>:2538                                    ; preds = %2508
  %2539 = lshr i32 %2529, 2
  %2540 = mul i32 %84, %2539
  %2541 = add i32 %88, %2540
  %2542 = shl i32 %2541, 2
  %2543 = shl i32 %2529, 3
  %2544 = and i32 %2543, 24
  %2545 = or i32 %2544, %93
  %2546 = shl i32 1, %2545
  %2547 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %2542, i32 undef)  ; BufferLoad(srv,index,wot)
  %2548 = extractvalue %dx.types.ResRet.i32 %2547, 0
  %2549 = and i32 %2548, %2546
  %2550 = icmp ne i32 %2549, 0
  br label %2551

; <label>:2551                                    ; preds = %2538, %2508
  %2552 = phi i1 [ %2550, %2538 ], [ false, %2508 ]
  %2553 = xor i1 %2552, true
  %2554 = uitofp i1 %2553 to float
  %2555 = fadd fast float %2554, %2524
  %2556 = add i32 %2528, %63
  %2557 = or i32 %2556, %62
  %2558 = icmp slt i32 %2557, 0
  %2559 = icmp sge i32 %2556, %2533
  %2560 = or i1 %2534, %2559
  %2561 = or i1 %2558, %2560
  br i1 %2561, label %2575, label %2562, !dx.controlflow.hints !46

; <label>:2562                                    ; preds = %2551
  %2563 = lshr i32 %2556, 2
  %2564 = mul i32 %84, %2563
  %2565 = add i32 %88, %2564
  %2566 = shl i32 %2565, 2
  %2567 = shl i32 %2556, 3
  %2568 = and i32 %2567, 24
  %2569 = or i32 %2568, %93
  %2570 = shl i32 1, %2569
  %2571 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %2566, i32 undef)  ; BufferLoad(srv,index,wot)
  %2572 = extractvalue %dx.types.ResRet.i32 %2571, 0
  %2573 = and i32 %2572, %2570
  %2574 = icmp ne i32 %2573, 0
  br label %2575

; <label>:2575                                    ; preds = %2562, %2551
  %2576 = phi i1 [ %2574, %2562 ], [ false, %2551 ]
  %2577 = xor i1 %2576, true
  %2578 = uitofp i1 %2577 to float
  %2579 = fadd fast float %2555, %2578
  %2580 = sub i32 %62, %2527
  %2581 = or i32 %2580, %63
  %2582 = icmp slt i32 %2581, 0
  %2583 = icmp sge i32 %2580, %2532
  %2584 = icmp sge i32 %63, %2533
  %2585 = or i1 %2583, %2584
  %2586 = or i1 %2582, %2585
  br i1 %2586, label %2600, label %2587, !dx.controlflow.hints !46

; <label>:2587                                    ; preds = %2575
  %2588 = lshr i32 %2580, 3
  %2589 = add i32 %80, %2588
  %2590 = add i32 %2589, %82
  %2591 = add i32 %2590, %85
  %2592 = shl i32 %2591, 2
  %2593 = and i32 %2580, 7
  %2594 = or i32 %2593, %92
  %2595 = shl i32 1, %2594
  %2596 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %2592, i32 undef)  ; BufferLoad(srv,index,wot)
  %2597 = extractvalue %dx.types.ResRet.i32 %2596, 0
  %2598 = and i32 %2597, %2595
  %2599 = icmp ne i32 %2598, 0
  br label %2600

; <label>:2600                                    ; preds = %2587, %2575
  %2601 = phi i1 [ %2599, %2587 ], [ false, %2575 ]
  %2602 = xor i1 %2601, true
  %2603 = uitofp i1 %2602 to float
  %2604 = fadd fast float %2579, %2603
  %2605 = add i32 %2527, %62
  %2606 = or i32 %2605, %63
  %2607 = icmp slt i32 %2606, 0
  %2608 = icmp sge i32 %2605, %2532
  %2609 = or i1 %2608, %2584
  %2610 = or i1 %2607, %2609
  br i1 %2610, label %2624, label %2611, !dx.controlflow.hints !46

; <label>:2611                                    ; preds = %2600
  %2612 = lshr i32 %2605, 3
  %2613 = add i32 %80, %2612
  %2614 = add i32 %2613, %82
  %2615 = add i32 %2614, %85
  %2616 = shl i32 %2615, 2
  %2617 = and i32 %2605, 7
  %2618 = or i32 %2617, %92
  %2619 = shl i32 1, %2618
  %2620 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %2616, i32 undef)  ; BufferLoad(srv,index,wot)
  %2621 = extractvalue %dx.types.ResRet.i32 %2620, 0
  %2622 = and i32 %2621, %2619
  %2623 = icmp ne i32 %2622, 0
  br label %2624

; <label>:2624                                    ; preds = %2611, %2600
  %2625 = phi i1 [ %2623, %2611 ], [ false, %2600 ]
  %2626 = xor i1 %2625, true
  %2627 = uitofp i1 %2626 to float
  %2628 = fadd fast float %2604, %2627
  %2629 = or i32 %2529, %2580
  %2630 = icmp slt i32 %2629, 0
  %2631 = or i1 %2583, %2535
  %2632 = or i1 %2630, %2631
  br i1 %2632, label %2650, label %2633, !dx.controlflow.hints !46

; <label>:2633                                    ; preds = %2624
  %2634 = lshr i32 %2529, 2
  %2635 = mul i32 %84, %2634
  %2636 = lshr i32 %2580, 3
  %2637 = add i32 %80, %2636
  %2638 = add i32 %2637, %82
  %2639 = add i32 %2638, %2635
  %2640 = shl i32 %2639, 2
  %2641 = shl i32 %2529, 3
  %2642 = and i32 %2641, 24
  %2643 = and i32 %2580, 7
  %2644 = or i32 %2642, %2643
  %2645 = shl i32 1, %2644
  %2646 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %2640, i32 undef)  ; BufferLoad(srv,index,wot)
  %2647 = extractvalue %dx.types.ResRet.i32 %2646, 0
  %2648 = and i32 %2647, %2645
  %2649 = icmp ne i32 %2648, 0
  br label %2650

; <label>:2650                                    ; preds = %2633, %2624
  %2651 = phi i1 [ %2649, %2633 ], [ false, %2624 ]
  %2652 = xor i1 %2651, true
  %2653 = uitofp i1 %2652 to float
  %2654 = fadd fast float %2628, %2653
  %2655 = or i32 %2529, %2605
  %2656 = icmp slt i32 %2655, 0
  %2657 = or i1 %2608, %2535
  %2658 = or i1 %2656, %2657
  br i1 %2658, label %2676, label %2659, !dx.controlflow.hints !46

; <label>:2659                                    ; preds = %2650
  %2660 = lshr i32 %2529, 2
  %2661 = mul i32 %84, %2660
  %2662 = lshr i32 %2605, 3
  %2663 = add i32 %80, %2662
  %2664 = add i32 %2663, %82
  %2665 = add i32 %2664, %2661
  %2666 = shl i32 %2665, 2
  %2667 = shl i32 %2529, 3
  %2668 = and i32 %2667, 24
  %2669 = and i32 %2605, 7
  %2670 = or i32 %2668, %2669
  %2671 = shl i32 1, %2670
  %2672 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %2666, i32 undef)  ; BufferLoad(srv,index,wot)
  %2673 = extractvalue %dx.types.ResRet.i32 %2672, 0
  %2674 = and i32 %2673, %2671
  %2675 = icmp ne i32 %2674, 0
  br label %2676

; <label>:2676                                    ; preds = %2659, %2650
  %2677 = phi i1 [ %2675, %2659 ], [ false, %2650 ]
  %2678 = xor i1 %2677, true
  %2679 = uitofp i1 %2678 to float
  %2680 = fadd fast float %2654, %2679
  %2681 = or i32 %2556, %2580
  %2682 = icmp slt i32 %2681, 0
  %2683 = or i1 %2583, %2559
  %2684 = or i1 %2682, %2683
  br i1 %2684, label %2702, label %2685, !dx.controlflow.hints !46

; <label>:2685                                    ; preds = %2676
  %2686 = lshr i32 %2556, 2
  %2687 = mul i32 %84, %2686
  %2688 = lshr i32 %2580, 3
  %2689 = add i32 %80, %2688
  %2690 = add i32 %2689, %82
  %2691 = add i32 %2690, %2687
  %2692 = shl i32 %2691, 2
  %2693 = shl i32 %2556, 3
  %2694 = and i32 %2693, 24
  %2695 = and i32 %2580, 7
  %2696 = or i32 %2694, %2695
  %2697 = shl i32 1, %2696
  %2698 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %2692, i32 undef)  ; BufferLoad(srv,index,wot)
  %2699 = extractvalue %dx.types.ResRet.i32 %2698, 0
  %2700 = and i32 %2699, %2697
  %2701 = icmp ne i32 %2700, 0
  br label %2702

; <label>:2702                                    ; preds = %2685, %2676
  %2703 = phi i1 [ %2701, %2685 ], [ false, %2676 ]
  %2704 = xor i1 %2703, true
  %2705 = uitofp i1 %2704 to float
  %2706 = fadd fast float %2680, %2705
  %2707 = or i32 %2556, %2605
  %2708 = icmp slt i32 %2707, 0
  %2709 = or i1 %2608, %2559
  %2710 = or i1 %2708, %2709
  br i1 %2710, label %2728, label %2711, !dx.controlflow.hints !46

; <label>:2711                                    ; preds = %2702
  %2712 = lshr i32 %2556, 2
  %2713 = mul i32 %84, %2712
  %2714 = lshr i32 %2605, 3
  %2715 = add i32 %80, %2714
  %2716 = add i32 %2715, %82
  %2717 = add i32 %2716, %2713
  %2718 = shl i32 %2717, 2
  %2719 = shl i32 %2556, 3
  %2720 = and i32 %2719, 24
  %2721 = and i32 %2605, 7
  %2722 = or i32 %2720, %2721
  %2723 = shl i32 1, %2722
  %2724 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %2718, i32 undef)  ; BufferLoad(srv,index,wot)
  %2725 = extractvalue %dx.types.ResRet.i32 %2724, 0
  %2726 = and i32 %2725, %2723
  %2727 = icmp ne i32 %2726, 0
  br label %2728

; <label>:2728                                    ; preds = %2711, %2702
  %2729 = phi i1 [ %2727, %2711 ], [ false, %2702 ]
  %2730 = xor i1 %2729, true
  %2731 = uitofp i1 %2730 to float
  %2732 = fadd fast float %2706, %2731
  %2733 = fmul fast float %2520, 2.000000e+00
  %2734 = fmul fast float %2521, 2.000000e+00
  %2735 = call float @dx.op.unary.f32(i32 28, float %2733)  ; Round_pi(value)
  %2736 = call float @dx.op.unary.f32(i32 28, float %2734)  ; Round_pi(value)
  %2737 = fptosi float %2735 to i32
  %2738 = fptosi float %2736 to i32
  %2739 = sub i32 %63, %2738
  %2740 = or i32 %2739, %62
  %2741 = icmp slt i32 %2740, 0
  %2742 = icmp sge i32 %2739, %2533
  %2743 = or i1 %2534, %2742
  %2744 = or i1 %2741, %2743
  br i1 %2744, label %2758, label %2745, !dx.controlflow.hints !46

; <label>:2745                                    ; preds = %2728
  %2746 = lshr i32 %2739, 2
  %2747 = mul i32 %84, %2746
  %2748 = add i32 %88, %2747
  %2749 = shl i32 %2748, 2
  %2750 = shl i32 %2739, 3
  %2751 = and i32 %2750, 24
  %2752 = or i32 %2751, %93
  %2753 = shl i32 1, %2752
  %2754 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %2749, i32 undef)  ; BufferLoad(srv,index,wot)
  %2755 = extractvalue %dx.types.ResRet.i32 %2754, 0
  %2756 = and i32 %2755, %2753
  %2757 = icmp ne i32 %2756, 0
  br label %2758

; <label>:2758                                    ; preds = %2745, %2728
  %2759 = phi i1 [ %2757, %2745 ], [ false, %2728 ]
  %2760 = xor i1 %2759, true
  %2761 = uitofp i1 %2760 to float
  %2762 = fadd fast float %2732, %2761
  %2763 = add i32 %2738, %63
  %2764 = or i32 %2763, %62
  %2765 = icmp slt i32 %2764, 0
  %2766 = icmp sge i32 %2763, %2533
  %2767 = or i1 %2534, %2766
  %2768 = or i1 %2765, %2767
  br i1 %2768, label %2782, label %2769, !dx.controlflow.hints !46

; <label>:2769                                    ; preds = %2758
  %2770 = lshr i32 %2763, 2
  %2771 = mul i32 %84, %2770
  %2772 = add i32 %88, %2771
  %2773 = shl i32 %2772, 2
  %2774 = shl i32 %2763, 3
  %2775 = and i32 %2774, 24
  %2776 = or i32 %2775, %93
  %2777 = shl i32 1, %2776
  %2778 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %2773, i32 undef)  ; BufferLoad(srv,index,wot)
  %2779 = extractvalue %dx.types.ResRet.i32 %2778, 0
  %2780 = and i32 %2779, %2777
  %2781 = icmp ne i32 %2780, 0
  br label %2782

; <label>:2782                                    ; preds = %2769, %2758
  %2783 = phi i1 [ %2781, %2769 ], [ false, %2758 ]
  %2784 = xor i1 %2783, true
  %2785 = uitofp i1 %2784 to float
  %2786 = fadd fast float %2762, %2785
  %2787 = sub i32 %62, %2737
  %2788 = or i32 %2787, %63
  %2789 = icmp slt i32 %2788, 0
  %2790 = icmp sge i32 %2787, %2532
  %2791 = or i1 %2790, %2584
  %2792 = or i1 %2789, %2791
  br i1 %2792, label %2806, label %2793, !dx.controlflow.hints !46

; <label>:2793                                    ; preds = %2782
  %2794 = lshr i32 %2787, 3
  %2795 = add i32 %80, %2794
  %2796 = add i32 %2795, %82
  %2797 = add i32 %2796, %85
  %2798 = shl i32 %2797, 2
  %2799 = and i32 %2787, 7
  %2800 = or i32 %2799, %92
  %2801 = shl i32 1, %2800
  %2802 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %2798, i32 undef)  ; BufferLoad(srv,index,wot)
  %2803 = extractvalue %dx.types.ResRet.i32 %2802, 0
  %2804 = and i32 %2803, %2801
  %2805 = icmp ne i32 %2804, 0
  br label %2806

; <label>:2806                                    ; preds = %2793, %2782
  %2807 = phi i1 [ %2805, %2793 ], [ false, %2782 ]
  %2808 = xor i1 %2807, true
  %2809 = uitofp i1 %2808 to float
  %2810 = fadd fast float %2786, %2809
  %2811 = add i32 %2737, %62
  %2812 = or i32 %2811, %63
  %2813 = icmp slt i32 %2812, 0
  %2814 = icmp sge i32 %2811, %2532
  %2815 = or i1 %2814, %2584
  %2816 = or i1 %2813, %2815
  br i1 %2816, label %2830, label %2817, !dx.controlflow.hints !46

; <label>:2817                                    ; preds = %2806
  %2818 = lshr i32 %2811, 3
  %2819 = add i32 %80, %2818
  %2820 = add i32 %2819, %82
  %2821 = add i32 %2820, %85
  %2822 = shl i32 %2821, 2
  %2823 = and i32 %2811, 7
  %2824 = or i32 %2823, %92
  %2825 = shl i32 1, %2824
  %2826 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %2822, i32 undef)  ; BufferLoad(srv,index,wot)
  %2827 = extractvalue %dx.types.ResRet.i32 %2826, 0
  %2828 = and i32 %2827, %2825
  %2829 = icmp ne i32 %2828, 0
  br label %2830

; <label>:2830                                    ; preds = %2817, %2806
  %2831 = phi i1 [ %2829, %2817 ], [ false, %2806 ]
  %2832 = xor i1 %2831, true
  %2833 = uitofp i1 %2832 to float
  %2834 = fadd fast float %2810, %2833
  %2835 = or i32 %2739, %2787
  %2836 = icmp slt i32 %2835, 0
  %2837 = or i1 %2790, %2742
  %2838 = or i1 %2836, %2837
  br i1 %2838, label %2856, label %2839, !dx.controlflow.hints !46

; <label>:2839                                    ; preds = %2830
  %2840 = lshr i32 %2739, 2
  %2841 = mul i32 %84, %2840
  %2842 = lshr i32 %2787, 3
  %2843 = add i32 %80, %2842
  %2844 = add i32 %2843, %82
  %2845 = add i32 %2844, %2841
  %2846 = shl i32 %2845, 2
  %2847 = shl i32 %2739, 3
  %2848 = and i32 %2847, 24
  %2849 = and i32 %2787, 7
  %2850 = or i32 %2848, %2849
  %2851 = shl i32 1, %2850
  %2852 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %2846, i32 undef)  ; BufferLoad(srv,index,wot)
  %2853 = extractvalue %dx.types.ResRet.i32 %2852, 0
  %2854 = and i32 %2853, %2851
  %2855 = icmp ne i32 %2854, 0
  br label %2856

; <label>:2856                                    ; preds = %2839, %2830
  %2857 = phi i1 [ %2855, %2839 ], [ false, %2830 ]
  %2858 = xor i1 %2857, true
  %2859 = uitofp i1 %2858 to float
  %2860 = fadd fast float %2834, %2859
  %2861 = or i32 %2739, %2811
  %2862 = icmp slt i32 %2861, 0
  %2863 = or i1 %2814, %2742
  %2864 = or i1 %2862, %2863
  br i1 %2864, label %2882, label %2865, !dx.controlflow.hints !46

; <label>:2865                                    ; preds = %2856
  %2866 = lshr i32 %2739, 2
  %2867 = mul i32 %84, %2866
  %2868 = lshr i32 %2811, 3
  %2869 = add i32 %80, %2868
  %2870 = add i32 %2869, %82
  %2871 = add i32 %2870, %2867
  %2872 = shl i32 %2871, 2
  %2873 = shl i32 %2739, 3
  %2874 = and i32 %2873, 24
  %2875 = and i32 %2811, 7
  %2876 = or i32 %2874, %2875
  %2877 = shl i32 1, %2876
  %2878 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %2872, i32 undef)  ; BufferLoad(srv,index,wot)
  %2879 = extractvalue %dx.types.ResRet.i32 %2878, 0
  %2880 = and i32 %2879, %2877
  %2881 = icmp ne i32 %2880, 0
  br label %2882

; <label>:2882                                    ; preds = %2865, %2856
  %2883 = phi i1 [ %2881, %2865 ], [ false, %2856 ]
  %2884 = xor i1 %2883, true
  %2885 = uitofp i1 %2884 to float
  %2886 = fadd fast float %2860, %2885
  %2887 = or i32 %2763, %2787
  %2888 = icmp slt i32 %2887, 0
  %2889 = or i1 %2790, %2766
  %2890 = or i1 %2888, %2889
  br i1 %2890, label %2908, label %2891, !dx.controlflow.hints !46

; <label>:2891                                    ; preds = %2882
  %2892 = lshr i32 %2763, 2
  %2893 = mul i32 %84, %2892
  %2894 = lshr i32 %2787, 3
  %2895 = add i32 %80, %2894
  %2896 = add i32 %2895, %82
  %2897 = add i32 %2896, %2893
  %2898 = shl i32 %2897, 2
  %2899 = shl i32 %2763, 3
  %2900 = and i32 %2899, 24
  %2901 = and i32 %2787, 7
  %2902 = or i32 %2900, %2901
  %2903 = shl i32 1, %2902
  %2904 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %2898, i32 undef)  ; BufferLoad(srv,index,wot)
  %2905 = extractvalue %dx.types.ResRet.i32 %2904, 0
  %2906 = and i32 %2905, %2903
  %2907 = icmp ne i32 %2906, 0
  br label %2908

; <label>:2908                                    ; preds = %2891, %2882
  %2909 = phi i1 [ %2907, %2891 ], [ false, %2882 ]
  %2910 = xor i1 %2909, true
  %2911 = uitofp i1 %2910 to float
  %2912 = fadd fast float %2886, %2911
  %2913 = or i32 %2763, %2811
  %2914 = icmp slt i32 %2913, 0
  %2915 = or i1 %2814, %2766
  %2916 = or i1 %2914, %2915
  br i1 %2916, label %2934, label %2917, !dx.controlflow.hints !46

; <label>:2917                                    ; preds = %2908
  %2918 = lshr i32 %2763, 2
  %2919 = mul i32 %84, %2918
  %2920 = lshr i32 %2811, 3
  %2921 = add i32 %80, %2920
  %2922 = add i32 %2921, %82
  %2923 = add i32 %2922, %2919
  %2924 = shl i32 %2923, 2
  %2925 = shl i32 %2763, 3
  %2926 = and i32 %2925, 24
  %2927 = and i32 %2811, 7
  %2928 = or i32 %2926, %2927
  %2929 = shl i32 1, %2928
  %2930 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %2924, i32 undef)  ; BufferLoad(srv,index,wot)
  %2931 = extractvalue %dx.types.ResRet.i32 %2930, 0
  %2932 = and i32 %2931, %2929
  %2933 = icmp ne i32 %2932, 0
  br label %2934

; <label>:2934                                    ; preds = %2917, %2908
  %2935 = phi i1 [ %2933, %2917 ], [ false, %2908 ]
  %2936 = xor i1 %2935, true
  %2937 = uitofp i1 %2936 to float
  %2938 = fadd fast float %2912, %2937
  %2939 = fmul fast float %2520, 3.000000e+00
  %2940 = fmul fast float %2521, 3.000000e+00
  %2941 = call float @dx.op.unary.f32(i32 28, float %2939)  ; Round_pi(value)
  %2942 = call float @dx.op.unary.f32(i32 28, float %2940)  ; Round_pi(value)
  %2943 = fptosi float %2941 to i32
  %2944 = fptosi float %2942 to i32
  %2945 = sub i32 %63, %2944
  %2946 = or i32 %2945, %62
  %2947 = icmp slt i32 %2946, 0
  %2948 = icmp sge i32 %2945, %2533
  %2949 = or i1 %2534, %2948
  %2950 = or i1 %2947, %2949
  br i1 %2950, label %2964, label %2951, !dx.controlflow.hints !46

; <label>:2951                                    ; preds = %2934
  %2952 = lshr i32 %2945, 2
  %2953 = mul i32 %84, %2952
  %2954 = add i32 %88, %2953
  %2955 = shl i32 %2954, 2
  %2956 = shl i32 %2945, 3
  %2957 = and i32 %2956, 24
  %2958 = or i32 %2957, %93
  %2959 = shl i32 1, %2958
  %2960 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %2955, i32 undef)  ; BufferLoad(srv,index,wot)
  %2961 = extractvalue %dx.types.ResRet.i32 %2960, 0
  %2962 = and i32 %2961, %2959
  %2963 = icmp ne i32 %2962, 0
  br label %2964

; <label>:2964                                    ; preds = %2951, %2934
  %2965 = phi i1 [ %2963, %2951 ], [ false, %2934 ]
  %2966 = xor i1 %2965, true
  %2967 = uitofp i1 %2966 to float
  %2968 = fadd fast float %2938, %2967
  %2969 = add i32 %2944, %63
  %2970 = or i32 %2969, %62
  %2971 = icmp slt i32 %2970, 0
  %2972 = icmp sge i32 %2969, %2533
  %2973 = or i1 %2534, %2972
  %2974 = or i1 %2971, %2973
  br i1 %2974, label %2988, label %2975, !dx.controlflow.hints !46

; <label>:2975                                    ; preds = %2964
  %2976 = lshr i32 %2969, 2
  %2977 = mul i32 %84, %2976
  %2978 = add i32 %88, %2977
  %2979 = shl i32 %2978, 2
  %2980 = shl i32 %2969, 3
  %2981 = and i32 %2980, 24
  %2982 = or i32 %2981, %93
  %2983 = shl i32 1, %2982
  %2984 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %2979, i32 undef)  ; BufferLoad(srv,index,wot)
  %2985 = extractvalue %dx.types.ResRet.i32 %2984, 0
  %2986 = and i32 %2985, %2983
  %2987 = icmp ne i32 %2986, 0
  br label %2988

; <label>:2988                                    ; preds = %2975, %2964
  %2989 = phi i1 [ %2987, %2975 ], [ false, %2964 ]
  %2990 = xor i1 %2989, true
  %2991 = uitofp i1 %2990 to float
  %2992 = fadd fast float %2968, %2991
  %2993 = sub i32 %62, %2943
  %2994 = or i32 %2993, %63
  %2995 = icmp slt i32 %2994, 0
  %2996 = icmp sge i32 %2993, %2532
  %2997 = or i1 %2996, %2584
  %2998 = or i1 %2995, %2997
  br i1 %2998, label %3012, label %2999, !dx.controlflow.hints !46

; <label>:2999                                    ; preds = %2988
  %3000 = lshr i32 %2993, 3
  %3001 = add i32 %80, %3000
  %3002 = add i32 %3001, %82
  %3003 = add i32 %3002, %85
  %3004 = shl i32 %3003, 2
  %3005 = and i32 %2993, 7
  %3006 = or i32 %3005, %92
  %3007 = shl i32 1, %3006
  %3008 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %3004, i32 undef)  ; BufferLoad(srv,index,wot)
  %3009 = extractvalue %dx.types.ResRet.i32 %3008, 0
  %3010 = and i32 %3009, %3007
  %3011 = icmp ne i32 %3010, 0
  br label %3012

; <label>:3012                                    ; preds = %2999, %2988
  %3013 = phi i1 [ %3011, %2999 ], [ false, %2988 ]
  %3014 = xor i1 %3013, true
  %3015 = uitofp i1 %3014 to float
  %3016 = fadd fast float %2992, %3015
  %3017 = add i32 %2943, %62
  %3018 = or i32 %3017, %63
  %3019 = icmp slt i32 %3018, 0
  %3020 = icmp sge i32 %3017, %2532
  %3021 = or i1 %3020, %2584
  %3022 = or i1 %3019, %3021
  br i1 %3022, label %3036, label %3023, !dx.controlflow.hints !46

; <label>:3023                                    ; preds = %3012
  %3024 = lshr i32 %3017, 3
  %3025 = add i32 %80, %3024
  %3026 = add i32 %3025, %82
  %3027 = add i32 %3026, %85
  %3028 = shl i32 %3027, 2
  %3029 = and i32 %3017, 7
  %3030 = or i32 %3029, %92
  %3031 = shl i32 1, %3030
  %3032 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %3028, i32 undef)  ; BufferLoad(srv,index,wot)
  %3033 = extractvalue %dx.types.ResRet.i32 %3032, 0
  %3034 = and i32 %3033, %3031
  %3035 = icmp ne i32 %3034, 0
  br label %3036

; <label>:3036                                    ; preds = %3023, %3012
  %3037 = phi i1 [ %3035, %3023 ], [ false, %3012 ]
  %3038 = xor i1 %3037, true
  %3039 = uitofp i1 %3038 to float
  %3040 = fadd fast float %3016, %3039
  %3041 = or i32 %2945, %2993
  %3042 = icmp slt i32 %3041, 0
  %3043 = or i1 %2996, %2948
  %3044 = or i1 %3042, %3043
  br i1 %3044, label %3062, label %3045, !dx.controlflow.hints !46

; <label>:3045                                    ; preds = %3036
  %3046 = lshr i32 %2945, 2
  %3047 = mul i32 %84, %3046
  %3048 = lshr i32 %2993, 3
  %3049 = add i32 %80, %3048
  %3050 = add i32 %3049, %82
  %3051 = add i32 %3050, %3047
  %3052 = shl i32 %3051, 2
  %3053 = shl i32 %2945, 3
  %3054 = and i32 %3053, 24
  %3055 = and i32 %2993, 7
  %3056 = or i32 %3054, %3055
  %3057 = shl i32 1, %3056
  %3058 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %3052, i32 undef)  ; BufferLoad(srv,index,wot)
  %3059 = extractvalue %dx.types.ResRet.i32 %3058, 0
  %3060 = and i32 %3059, %3057
  %3061 = icmp ne i32 %3060, 0
  br label %3062

; <label>:3062                                    ; preds = %3045, %3036
  %3063 = phi i1 [ %3061, %3045 ], [ false, %3036 ]
  %3064 = xor i1 %3063, true
  %3065 = uitofp i1 %3064 to float
  %3066 = fadd fast float %3040, %3065
  %3067 = or i32 %2945, %3017
  %3068 = icmp slt i32 %3067, 0
  %3069 = or i1 %3020, %2948
  %3070 = or i1 %3068, %3069
  br i1 %3070, label %3088, label %3071, !dx.controlflow.hints !46

; <label>:3071                                    ; preds = %3062
  %3072 = lshr i32 %2945, 2
  %3073 = mul i32 %84, %3072
  %3074 = lshr i32 %3017, 3
  %3075 = add i32 %80, %3074
  %3076 = add i32 %3075, %82
  %3077 = add i32 %3076, %3073
  %3078 = shl i32 %3077, 2
  %3079 = shl i32 %2945, 3
  %3080 = and i32 %3079, 24
  %3081 = and i32 %3017, 7
  %3082 = or i32 %3080, %3081
  %3083 = shl i32 1, %3082
  %3084 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %3078, i32 undef)  ; BufferLoad(srv,index,wot)
  %3085 = extractvalue %dx.types.ResRet.i32 %3084, 0
  %3086 = and i32 %3085, %3083
  %3087 = icmp ne i32 %3086, 0
  br label %3088

; <label>:3088                                    ; preds = %3071, %3062
  %3089 = phi i1 [ %3087, %3071 ], [ false, %3062 ]
  %3090 = xor i1 %3089, true
  %3091 = uitofp i1 %3090 to float
  %3092 = fadd fast float %3066, %3091
  %3093 = or i32 %2969, %2993
  %3094 = icmp slt i32 %3093, 0
  %3095 = or i1 %2996, %2972
  %3096 = or i1 %3094, %3095
  br i1 %3096, label %3114, label %3097, !dx.controlflow.hints !46

; <label>:3097                                    ; preds = %3088
  %3098 = lshr i32 %2969, 2
  %3099 = mul i32 %84, %3098
  %3100 = lshr i32 %2993, 3
  %3101 = add i32 %80, %3100
  %3102 = add i32 %3101, %82
  %3103 = add i32 %3102, %3099
  %3104 = shl i32 %3103, 2
  %3105 = shl i32 %2969, 3
  %3106 = and i32 %3105, 24
  %3107 = and i32 %2993, 7
  %3108 = or i32 %3106, %3107
  %3109 = shl i32 1, %3108
  %3110 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %3104, i32 undef)  ; BufferLoad(srv,index,wot)
  %3111 = extractvalue %dx.types.ResRet.i32 %3110, 0
  %3112 = and i32 %3111, %3109
  %3113 = icmp ne i32 %3112, 0
  br label %3114

; <label>:3114                                    ; preds = %3097, %3088
  %3115 = phi i1 [ %3113, %3097 ], [ false, %3088 ]
  %3116 = xor i1 %3115, true
  %3117 = uitofp i1 %3116 to float
  %3118 = fadd fast float %3092, %3117
  %3119 = or i32 %2969, %3017
  %3120 = icmp slt i32 %3119, 0
  %3121 = or i1 %3020, %2972
  %3122 = or i1 %3120, %3121
  br i1 %3122, label %3140, label %3123, !dx.controlflow.hints !46

; <label>:3123                                    ; preds = %3114
  %3124 = lshr i32 %2969, 2
  %3125 = mul i32 %84, %3124
  %3126 = lshr i32 %3017, 3
  %3127 = add i32 %80, %3126
  %3128 = add i32 %3127, %82
  %3129 = add i32 %3128, %3125
  %3130 = shl i32 %3129, 2
  %3131 = shl i32 %2969, 3
  %3132 = and i32 %3131, 24
  %3133 = and i32 %3017, 7
  %3134 = or i32 %3132, %3133
  %3135 = shl i32 1, %3134
  %3136 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %3130, i32 undef)  ; BufferLoad(srv,index,wot)
  %3137 = extractvalue %dx.types.ResRet.i32 %3136, 0
  %3138 = and i32 %3137, %3135
  %3139 = icmp ne i32 %3138, 0
  br label %3140

; <label>:3140                                    ; preds = %3123, %3114
  %3141 = phi i1 [ %3139, %3123 ], [ false, %3114 ]
  %3142 = xor i1 %3141, true
  %3143 = uitofp i1 %3142 to float
  %3144 = fadd fast float %3118, %3143
  %3145 = fmul fast float %2520, 4.000000e+00
  %3146 = fmul fast float %2521, 4.000000e+00
  %3147 = call float @dx.op.unary.f32(i32 28, float %3145)  ; Round_pi(value)
  %3148 = call float @dx.op.unary.f32(i32 28, float %3146)  ; Round_pi(value)
  %3149 = fptosi float %3147 to i32
  %3150 = fptosi float %3148 to i32
  %3151 = sub i32 %63, %3150
  %3152 = or i32 %3151, %62
  %3153 = icmp slt i32 %3152, 0
  %3154 = icmp sge i32 %3151, %2533
  %3155 = or i1 %2534, %3154
  %3156 = or i1 %3153, %3155
  br i1 %3156, label %3170, label %3157, !dx.controlflow.hints !46

; <label>:3157                                    ; preds = %3140
  %3158 = lshr i32 %3151, 2
  %3159 = mul i32 %84, %3158
  %3160 = add i32 %88, %3159
  %3161 = shl i32 %3160, 2
  %3162 = shl i32 %3151, 3
  %3163 = and i32 %3162, 24
  %3164 = or i32 %3163, %93
  %3165 = shl i32 1, %3164
  %3166 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %3161, i32 undef)  ; BufferLoad(srv,index,wot)
  %3167 = extractvalue %dx.types.ResRet.i32 %3166, 0
  %3168 = and i32 %3167, %3165
  %3169 = icmp ne i32 %3168, 0
  br label %3170

; <label>:3170                                    ; preds = %3157, %3140
  %3171 = phi i1 [ %3169, %3157 ], [ false, %3140 ]
  %3172 = xor i1 %3171, true
  %3173 = uitofp i1 %3172 to float
  %3174 = fadd fast float %3144, %3173
  %3175 = add i32 %3150, %63
  %3176 = or i32 %3175, %62
  %3177 = icmp slt i32 %3176, 0
  %3178 = icmp sge i32 %3175, %2533
  %3179 = or i1 %2534, %3178
  %3180 = or i1 %3177, %3179
  br i1 %3180, label %3194, label %3181, !dx.controlflow.hints !46

; <label>:3181                                    ; preds = %3170
  %3182 = lshr i32 %3175, 2
  %3183 = mul i32 %84, %3182
  %3184 = add i32 %88, %3183
  %3185 = shl i32 %3184, 2
  %3186 = shl i32 %3175, 3
  %3187 = and i32 %3186, 24
  %3188 = or i32 %3187, %93
  %3189 = shl i32 1, %3188
  %3190 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %3185, i32 undef)  ; BufferLoad(srv,index,wot)
  %3191 = extractvalue %dx.types.ResRet.i32 %3190, 0
  %3192 = and i32 %3191, %3189
  %3193 = icmp ne i32 %3192, 0
  br label %3194

; <label>:3194                                    ; preds = %3181, %3170
  %3195 = phi i1 [ %3193, %3181 ], [ false, %3170 ]
  %3196 = xor i1 %3195, true
  %3197 = uitofp i1 %3196 to float
  %3198 = fadd fast float %3174, %3197
  %3199 = sub i32 %62, %3149
  %3200 = or i32 %3199, %63
  %3201 = icmp slt i32 %3200, 0
  %3202 = icmp sge i32 %3199, %2532
  %3203 = or i1 %3202, %2584
  %3204 = or i1 %3201, %3203
  br i1 %3204, label %3218, label %3205, !dx.controlflow.hints !46

; <label>:3205                                    ; preds = %3194
  %3206 = lshr i32 %3199, 3
  %3207 = add i32 %80, %3206
  %3208 = add i32 %3207, %82
  %3209 = add i32 %3208, %85
  %3210 = shl i32 %3209, 2
  %3211 = and i32 %3199, 7
  %3212 = or i32 %3211, %92
  %3213 = shl i32 1, %3212
  %3214 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %3210, i32 undef)  ; BufferLoad(srv,index,wot)
  %3215 = extractvalue %dx.types.ResRet.i32 %3214, 0
  %3216 = and i32 %3215, %3213
  %3217 = icmp ne i32 %3216, 0
  br label %3218

; <label>:3218                                    ; preds = %3205, %3194
  %3219 = phi i1 [ %3217, %3205 ], [ false, %3194 ]
  %3220 = xor i1 %3219, true
  %3221 = uitofp i1 %3220 to float
  %3222 = fadd fast float %3198, %3221
  %3223 = add i32 %3149, %62
  %3224 = or i32 %3223, %63
  %3225 = icmp slt i32 %3224, 0
  %3226 = icmp sge i32 %3223, %2532
  %3227 = or i1 %3226, %2584
  %3228 = or i1 %3225, %3227
  br i1 %3228, label %3242, label %3229, !dx.controlflow.hints !46

; <label>:3229                                    ; preds = %3218
  %3230 = lshr i32 %3223, 3
  %3231 = add i32 %80, %3230
  %3232 = add i32 %3231, %82
  %3233 = add i32 %3232, %85
  %3234 = shl i32 %3233, 2
  %3235 = and i32 %3223, 7
  %3236 = or i32 %3235, %92
  %3237 = shl i32 1, %3236
  %3238 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %3234, i32 undef)  ; BufferLoad(srv,index,wot)
  %3239 = extractvalue %dx.types.ResRet.i32 %3238, 0
  %3240 = and i32 %3239, %3237
  %3241 = icmp ne i32 %3240, 0
  br label %3242

; <label>:3242                                    ; preds = %3229, %3218
  %3243 = phi i1 [ %3241, %3229 ], [ false, %3218 ]
  %3244 = xor i1 %3243, true
  %3245 = uitofp i1 %3244 to float
  %3246 = fadd fast float %3222, %3245
  %3247 = or i32 %3151, %3199
  %3248 = icmp slt i32 %3247, 0
  %3249 = or i1 %3202, %3154
  %3250 = or i1 %3248, %3249
  br i1 %3250, label %3268, label %3251, !dx.controlflow.hints !46

; <label>:3251                                    ; preds = %3242
  %3252 = lshr i32 %3151, 2
  %3253 = mul i32 %84, %3252
  %3254 = lshr i32 %3199, 3
  %3255 = add i32 %80, %3254
  %3256 = add i32 %3255, %82
  %3257 = add i32 %3256, %3253
  %3258 = shl i32 %3257, 2
  %3259 = shl i32 %3151, 3
  %3260 = and i32 %3259, 24
  %3261 = and i32 %3199, 7
  %3262 = or i32 %3260, %3261
  %3263 = shl i32 1, %3262
  %3264 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %3258, i32 undef)  ; BufferLoad(srv,index,wot)
  %3265 = extractvalue %dx.types.ResRet.i32 %3264, 0
  %3266 = and i32 %3265, %3263
  %3267 = icmp ne i32 %3266, 0
  br label %3268

; <label>:3268                                    ; preds = %3251, %3242
  %3269 = phi i1 [ %3267, %3251 ], [ false, %3242 ]
  %3270 = xor i1 %3269, true
  %3271 = uitofp i1 %3270 to float
  %3272 = fadd fast float %3246, %3271
  %3273 = or i32 %3151, %3223
  %3274 = icmp slt i32 %3273, 0
  %3275 = or i1 %3226, %3154
  %3276 = or i1 %3274, %3275
  br i1 %3276, label %3294, label %3277, !dx.controlflow.hints !46

; <label>:3277                                    ; preds = %3268
  %3278 = lshr i32 %3151, 2
  %3279 = mul i32 %84, %3278
  %3280 = lshr i32 %3223, 3
  %3281 = add i32 %80, %3280
  %3282 = add i32 %3281, %82
  %3283 = add i32 %3282, %3279
  %3284 = shl i32 %3283, 2
  %3285 = shl i32 %3151, 3
  %3286 = and i32 %3285, 24
  %3287 = and i32 %3223, 7
  %3288 = or i32 %3286, %3287
  %3289 = shl i32 1, %3288
  %3290 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %3284, i32 undef)  ; BufferLoad(srv,index,wot)
  %3291 = extractvalue %dx.types.ResRet.i32 %3290, 0
  %3292 = and i32 %3291, %3289
  %3293 = icmp ne i32 %3292, 0
  br label %3294

; <label>:3294                                    ; preds = %3277, %3268
  %3295 = phi i1 [ %3293, %3277 ], [ false, %3268 ]
  %3296 = xor i1 %3295, true
  %3297 = uitofp i1 %3296 to float
  %3298 = fadd fast float %3272, %3297
  %3299 = or i32 %3175, %3199
  %3300 = icmp slt i32 %3299, 0
  %3301 = or i1 %3202, %3178
  %3302 = or i1 %3300, %3301
  br i1 %3302, label %3320, label %3303, !dx.controlflow.hints !46

; <label>:3303                                    ; preds = %3294
  %3304 = lshr i32 %3175, 2
  %3305 = mul i32 %84, %3304
  %3306 = lshr i32 %3199, 3
  %3307 = add i32 %80, %3306
  %3308 = add i32 %3307, %82
  %3309 = add i32 %3308, %3305
  %3310 = shl i32 %3309, 2
  %3311 = shl i32 %3175, 3
  %3312 = and i32 %3311, 24
  %3313 = and i32 %3199, 7
  %3314 = or i32 %3312, %3313
  %3315 = shl i32 1, %3314
  %3316 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %3310, i32 undef)  ; BufferLoad(srv,index,wot)
  %3317 = extractvalue %dx.types.ResRet.i32 %3316, 0
  %3318 = and i32 %3317, %3315
  %3319 = icmp ne i32 %3318, 0
  br label %3320

; <label>:3320                                    ; preds = %3303, %3294
  %3321 = phi i1 [ %3319, %3303 ], [ false, %3294 ]
  %3322 = xor i1 %3321, true
  %3323 = uitofp i1 %3322 to float
  %3324 = fadd fast float %3298, %3323
  %3325 = or i32 %3175, %3223
  %3326 = icmp slt i32 %3325, 0
  %3327 = or i1 %3226, %3178
  %3328 = or i1 %3326, %3327
  br i1 %3328, label %3346, label %3329, !dx.controlflow.hints !46

; <label>:3329                                    ; preds = %3320
  %3330 = lshr i32 %3175, 2
  %3331 = mul i32 %84, %3330
  %3332 = lshr i32 %3223, 3
  %3333 = add i32 %80, %3332
  %3334 = add i32 %3333, %82
  %3335 = add i32 %3334, %3331
  %3336 = shl i32 %3335, 2
  %3337 = shl i32 %3175, 3
  %3338 = and i32 %3337, 24
  %3339 = and i32 %3223, 7
  %3340 = or i32 %3338, %3339
  %3341 = shl i32 1, %3340
  %3342 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %3336, i32 undef)  ; BufferLoad(srv,index,wot)
  %3343 = extractvalue %dx.types.ResRet.i32 %3342, 0
  %3344 = and i32 %3343, %3341
  %3345 = icmp ne i32 %3344, 0
  br label %3346

; <label>:3346                                    ; preds = %3329, %3320
  %3347 = phi i1 [ %3345, %3329 ], [ false, %3320 ]
  %3348 = xor i1 %3347, true
  %3349 = uitofp i1 %3348 to float
  %3350 = fadd fast float %3324, %3349
  %3351 = fmul fast float %2520, 5.000000e+00
  %3352 = fmul fast float %2521, 5.000000e+00
  %3353 = call float @dx.op.unary.f32(i32 28, float %3351)  ; Round_pi(value)
  %3354 = call float @dx.op.unary.f32(i32 28, float %3352)  ; Round_pi(value)
  %3355 = fptosi float %3353 to i32
  %3356 = fptosi float %3354 to i32
  %3357 = sub i32 %63, %3356
  %3358 = or i32 %3357, %62
  %3359 = icmp slt i32 %3358, 0
  %3360 = icmp sge i32 %3357, %2533
  %3361 = or i1 %2534, %3360
  %3362 = or i1 %3359, %3361
  br i1 %3362, label %3376, label %3363, !dx.controlflow.hints !46

; <label>:3363                                    ; preds = %3346
  %3364 = lshr i32 %3357, 2
  %3365 = mul i32 %84, %3364
  %3366 = add i32 %88, %3365
  %3367 = shl i32 %3366, 2
  %3368 = shl i32 %3357, 3
  %3369 = and i32 %3368, 24
  %3370 = or i32 %3369, %93
  %3371 = shl i32 1, %3370
  %3372 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %3367, i32 undef)  ; BufferLoad(srv,index,wot)
  %3373 = extractvalue %dx.types.ResRet.i32 %3372, 0
  %3374 = and i32 %3373, %3371
  %3375 = icmp ne i32 %3374, 0
  br label %3376

; <label>:3376                                    ; preds = %3363, %3346
  %3377 = phi i1 [ %3375, %3363 ], [ false, %3346 ]
  %3378 = xor i1 %3377, true
  %3379 = uitofp i1 %3378 to float
  %3380 = fadd fast float %3350, %3379
  %3381 = add i32 %3356, %63
  %3382 = or i32 %3381, %62
  %3383 = icmp slt i32 %3382, 0
  %3384 = icmp sge i32 %3381, %2533
  %3385 = or i1 %2534, %3384
  %3386 = or i1 %3383, %3385
  br i1 %3386, label %3400, label %3387, !dx.controlflow.hints !46

; <label>:3387                                    ; preds = %3376
  %3388 = lshr i32 %3381, 2
  %3389 = mul i32 %84, %3388
  %3390 = add i32 %88, %3389
  %3391 = shl i32 %3390, 2
  %3392 = shl i32 %3381, 3
  %3393 = and i32 %3392, 24
  %3394 = or i32 %3393, %93
  %3395 = shl i32 1, %3394
  %3396 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %3391, i32 undef)  ; BufferLoad(srv,index,wot)
  %3397 = extractvalue %dx.types.ResRet.i32 %3396, 0
  %3398 = and i32 %3397, %3395
  %3399 = icmp ne i32 %3398, 0
  br label %3400

; <label>:3400                                    ; preds = %3387, %3376
  %3401 = phi i1 [ %3399, %3387 ], [ false, %3376 ]
  %3402 = xor i1 %3401, true
  %3403 = uitofp i1 %3402 to float
  %3404 = fadd fast float %3380, %3403
  %3405 = sub i32 %62, %3355
  %3406 = or i32 %3405, %63
  %3407 = icmp slt i32 %3406, 0
  %3408 = icmp sge i32 %3405, %2532
  %3409 = or i1 %3408, %2584
  %3410 = or i1 %3407, %3409
  br i1 %3410, label %3424, label %3411, !dx.controlflow.hints !46

; <label>:3411                                    ; preds = %3400
  %3412 = lshr i32 %3405, 3
  %3413 = add i32 %80, %3412
  %3414 = add i32 %3413, %82
  %3415 = add i32 %3414, %85
  %3416 = shl i32 %3415, 2
  %3417 = and i32 %3405, 7
  %3418 = or i32 %3417, %92
  %3419 = shl i32 1, %3418
  %3420 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %3416, i32 undef)  ; BufferLoad(srv,index,wot)
  %3421 = extractvalue %dx.types.ResRet.i32 %3420, 0
  %3422 = and i32 %3421, %3419
  %3423 = icmp ne i32 %3422, 0
  br label %3424

; <label>:3424                                    ; preds = %3411, %3400
  %3425 = phi i1 [ %3423, %3411 ], [ false, %3400 ]
  %3426 = xor i1 %3425, true
  %3427 = uitofp i1 %3426 to float
  %3428 = fadd fast float %3404, %3427
  %3429 = add i32 %3355, %62
  %3430 = or i32 %3429, %63
  %3431 = icmp slt i32 %3430, 0
  %3432 = icmp sge i32 %3429, %2532
  %3433 = or i1 %3432, %2584
  %3434 = or i1 %3431, %3433
  br i1 %3434, label %3448, label %3435, !dx.controlflow.hints !46

; <label>:3435                                    ; preds = %3424
  %3436 = lshr i32 %3429, 3
  %3437 = add i32 %80, %3436
  %3438 = add i32 %3437, %82
  %3439 = add i32 %3438, %85
  %3440 = shl i32 %3439, 2
  %3441 = and i32 %3429, 7
  %3442 = or i32 %3441, %92
  %3443 = shl i32 1, %3442
  %3444 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %3440, i32 undef)  ; BufferLoad(srv,index,wot)
  %3445 = extractvalue %dx.types.ResRet.i32 %3444, 0
  %3446 = and i32 %3445, %3443
  %3447 = icmp ne i32 %3446, 0
  br label %3448

; <label>:3448                                    ; preds = %3435, %3424
  %3449 = phi i1 [ %3447, %3435 ], [ false, %3424 ]
  %3450 = xor i1 %3449, true
  %3451 = uitofp i1 %3450 to float
  %3452 = fadd fast float %3428, %3451
  %3453 = or i32 %3357, %3405
  %3454 = icmp slt i32 %3453, 0
  %3455 = or i1 %3408, %3360
  %3456 = or i1 %3454, %3455
  br i1 %3456, label %3474, label %3457, !dx.controlflow.hints !46

; <label>:3457                                    ; preds = %3448
  %3458 = lshr i32 %3357, 2
  %3459 = mul i32 %84, %3458
  %3460 = lshr i32 %3405, 3
  %3461 = add i32 %80, %3460
  %3462 = add i32 %3461, %82
  %3463 = add i32 %3462, %3459
  %3464 = shl i32 %3463, 2
  %3465 = shl i32 %3357, 3
  %3466 = and i32 %3465, 24
  %3467 = and i32 %3405, 7
  %3468 = or i32 %3466, %3467
  %3469 = shl i32 1, %3468
  %3470 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %3464, i32 undef)  ; BufferLoad(srv,index,wot)
  %3471 = extractvalue %dx.types.ResRet.i32 %3470, 0
  %3472 = and i32 %3471, %3469
  %3473 = icmp ne i32 %3472, 0
  br label %3474

; <label>:3474                                    ; preds = %3457, %3448
  %3475 = phi i1 [ %3473, %3457 ], [ false, %3448 ]
  %3476 = xor i1 %3475, true
  %3477 = uitofp i1 %3476 to float
  %3478 = fadd fast float %3452, %3477
  %3479 = or i32 %3357, %3429
  %3480 = icmp slt i32 %3479, 0
  %3481 = or i1 %3432, %3360
  %3482 = or i1 %3480, %3481
  br i1 %3482, label %3500, label %3483, !dx.controlflow.hints !46

; <label>:3483                                    ; preds = %3474
  %3484 = lshr i32 %3357, 2
  %3485 = mul i32 %84, %3484
  %3486 = lshr i32 %3429, 3
  %3487 = add i32 %80, %3486
  %3488 = add i32 %3487, %82
  %3489 = add i32 %3488, %3485
  %3490 = shl i32 %3489, 2
  %3491 = shl i32 %3357, 3
  %3492 = and i32 %3491, 24
  %3493 = and i32 %3429, 7
  %3494 = or i32 %3492, %3493
  %3495 = shl i32 1, %3494
  %3496 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %3490, i32 undef)  ; BufferLoad(srv,index,wot)
  %3497 = extractvalue %dx.types.ResRet.i32 %3496, 0
  %3498 = and i32 %3497, %3495
  %3499 = icmp ne i32 %3498, 0
  br label %3500

; <label>:3500                                    ; preds = %3483, %3474
  %3501 = phi i1 [ %3499, %3483 ], [ false, %3474 ]
  %3502 = xor i1 %3501, true
  %3503 = uitofp i1 %3502 to float
  %3504 = fadd fast float %3478, %3503
  %3505 = or i32 %3381, %3405
  %3506 = icmp slt i32 %3505, 0
  %3507 = or i1 %3408, %3384
  %3508 = or i1 %3506, %3507
  br i1 %3508, label %3526, label %3509, !dx.controlflow.hints !46

; <label>:3509                                    ; preds = %3500
  %3510 = lshr i32 %3381, 2
  %3511 = mul i32 %84, %3510
  %3512 = lshr i32 %3405, 3
  %3513 = add i32 %80, %3512
  %3514 = add i32 %3513, %82
  %3515 = add i32 %3514, %3511
  %3516 = shl i32 %3515, 2
  %3517 = shl i32 %3381, 3
  %3518 = and i32 %3517, 24
  %3519 = and i32 %3405, 7
  %3520 = or i32 %3518, %3519
  %3521 = shl i32 1, %3520
  %3522 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %3516, i32 undef)  ; BufferLoad(srv,index,wot)
  %3523 = extractvalue %dx.types.ResRet.i32 %3522, 0
  %3524 = and i32 %3523, %3521
  %3525 = icmp ne i32 %3524, 0
  br label %3526

; <label>:3526                                    ; preds = %3509, %3500
  %3527 = phi i1 [ %3525, %3509 ], [ false, %3500 ]
  %3528 = xor i1 %3527, true
  %3529 = uitofp i1 %3528 to float
  %3530 = fadd fast float %3504, %3529
  %3531 = or i32 %3381, %3429
  %3532 = icmp slt i32 %3531, 0
  %3533 = or i1 %3432, %3384
  %3534 = or i1 %3532, %3533
  br i1 %3534, label %3552, label %3535, !dx.controlflow.hints !46

; <label>:3535                                    ; preds = %3526
  %3536 = lshr i32 %3381, 2
  %3537 = mul i32 %84, %3536
  %3538 = lshr i32 %3429, 3
  %3539 = add i32 %80, %3538
  %3540 = add i32 %3539, %82
  %3541 = add i32 %3540, %3537
  %3542 = shl i32 %3541, 2
  %3543 = shl i32 %3381, 3
  %3544 = and i32 %3543, 24
  %3545 = and i32 %3429, 7
  %3546 = or i32 %3544, %3545
  %3547 = shl i32 1, %3546
  %3548 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %3542, i32 undef)  ; BufferLoad(srv,index,wot)
  %3549 = extractvalue %dx.types.ResRet.i32 %3548, 0
  %3550 = and i32 %3549, %3547
  %3551 = icmp ne i32 %3550, 0
  br label %3552

; <label>:3552                                    ; preds = %3535, %3526
  %3553 = phi i1 [ %3551, %3535 ], [ false, %3526 ]
  %3554 = xor i1 %3553, true
  %3555 = uitofp i1 %3554 to float
  %3556 = fadd fast float %3530, %3555
  %3557 = fmul fast float %2520, 6.000000e+00
  %3558 = fmul fast float %2521, 6.000000e+00
  %3559 = call float @dx.op.unary.f32(i32 28, float %3557)  ; Round_pi(value)
  %3560 = call float @dx.op.unary.f32(i32 28, float %3558)  ; Round_pi(value)
  %3561 = fptosi float %3559 to i32
  %3562 = fptosi float %3560 to i32
  %3563 = sub i32 %63, %3562
  %3564 = or i32 %3563, %62
  %3565 = icmp slt i32 %3564, 0
  %3566 = icmp sge i32 %3563, %2533
  %3567 = or i1 %2534, %3566
  %3568 = or i1 %3565, %3567
  br i1 %3568, label %3582, label %3569, !dx.controlflow.hints !46

; <label>:3569                                    ; preds = %3552
  %3570 = lshr i32 %3563, 2
  %3571 = mul i32 %84, %3570
  %3572 = add i32 %88, %3571
  %3573 = shl i32 %3572, 2
  %3574 = shl i32 %3563, 3
  %3575 = and i32 %3574, 24
  %3576 = or i32 %3575, %93
  %3577 = shl i32 1, %3576
  %3578 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %3573, i32 undef)  ; BufferLoad(srv,index,wot)
  %3579 = extractvalue %dx.types.ResRet.i32 %3578, 0
  %3580 = and i32 %3579, %3577
  %3581 = icmp ne i32 %3580, 0
  br label %3582

; <label>:3582                                    ; preds = %3569, %3552
  %3583 = phi i1 [ %3581, %3569 ], [ false, %3552 ]
  %3584 = xor i1 %3583, true
  %3585 = uitofp i1 %3584 to float
  %3586 = fadd fast float %3556, %3585
  %3587 = add i32 %3562, %63
  %3588 = or i32 %3587, %62
  %3589 = icmp slt i32 %3588, 0
  %3590 = icmp sge i32 %3587, %2533
  %3591 = or i1 %2534, %3590
  %3592 = or i1 %3589, %3591
  br i1 %3592, label %3606, label %3593, !dx.controlflow.hints !46

; <label>:3593                                    ; preds = %3582
  %3594 = lshr i32 %3587, 2
  %3595 = mul i32 %84, %3594
  %3596 = add i32 %88, %3595
  %3597 = shl i32 %3596, 2
  %3598 = shl i32 %3587, 3
  %3599 = and i32 %3598, 24
  %3600 = or i32 %3599, %93
  %3601 = shl i32 1, %3600
  %3602 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %3597, i32 undef)  ; BufferLoad(srv,index,wot)
  %3603 = extractvalue %dx.types.ResRet.i32 %3602, 0
  %3604 = and i32 %3603, %3601
  %3605 = icmp ne i32 %3604, 0
  br label %3606

; <label>:3606                                    ; preds = %3593, %3582
  %3607 = phi i1 [ %3605, %3593 ], [ false, %3582 ]
  %3608 = xor i1 %3607, true
  %3609 = uitofp i1 %3608 to float
  %3610 = fadd fast float %3586, %3609
  %3611 = sub i32 %62, %3561
  %3612 = or i32 %3611, %63
  %3613 = icmp slt i32 %3612, 0
  %3614 = icmp sge i32 %3611, %2532
  %3615 = or i1 %3614, %2584
  %3616 = or i1 %3613, %3615
  br i1 %3616, label %3630, label %3617, !dx.controlflow.hints !46

; <label>:3617                                    ; preds = %3606
  %3618 = lshr i32 %3611, 3
  %3619 = add i32 %80, %3618
  %3620 = add i32 %3619, %82
  %3621 = add i32 %3620, %85
  %3622 = shl i32 %3621, 2
  %3623 = and i32 %3611, 7
  %3624 = or i32 %3623, %92
  %3625 = shl i32 1, %3624
  %3626 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %3622, i32 undef)  ; BufferLoad(srv,index,wot)
  %3627 = extractvalue %dx.types.ResRet.i32 %3626, 0
  %3628 = and i32 %3627, %3625
  %3629 = icmp ne i32 %3628, 0
  br label %3630

; <label>:3630                                    ; preds = %3617, %3606
  %3631 = phi i1 [ %3629, %3617 ], [ false, %3606 ]
  %3632 = xor i1 %3631, true
  %3633 = uitofp i1 %3632 to float
  %3634 = fadd fast float %3610, %3633
  %3635 = add i32 %3561, %62
  %3636 = or i32 %3635, %63
  %3637 = icmp slt i32 %3636, 0
  %3638 = icmp sge i32 %3635, %2532
  %3639 = or i1 %3638, %2584
  %3640 = or i1 %3637, %3639
  br i1 %3640, label %3654, label %3641, !dx.controlflow.hints !46

; <label>:3641                                    ; preds = %3630
  %3642 = lshr i32 %3635, 3
  %3643 = add i32 %80, %3642
  %3644 = add i32 %3643, %82
  %3645 = add i32 %3644, %85
  %3646 = shl i32 %3645, 2
  %3647 = and i32 %3635, 7
  %3648 = or i32 %3647, %92
  %3649 = shl i32 1, %3648
  %3650 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %3646, i32 undef)  ; BufferLoad(srv,index,wot)
  %3651 = extractvalue %dx.types.ResRet.i32 %3650, 0
  %3652 = and i32 %3651, %3649
  %3653 = icmp ne i32 %3652, 0
  br label %3654

; <label>:3654                                    ; preds = %3641, %3630
  %3655 = phi i1 [ %3653, %3641 ], [ false, %3630 ]
  %3656 = xor i1 %3655, true
  %3657 = uitofp i1 %3656 to float
  %3658 = fadd fast float %3634, %3657
  %3659 = or i32 %3563, %3611
  %3660 = icmp slt i32 %3659, 0
  %3661 = or i1 %3614, %3566
  %3662 = or i1 %3660, %3661
  br i1 %3662, label %3680, label %3663, !dx.controlflow.hints !46

; <label>:3663                                    ; preds = %3654
  %3664 = lshr i32 %3563, 2
  %3665 = mul i32 %84, %3664
  %3666 = lshr i32 %3611, 3
  %3667 = add i32 %80, %3666
  %3668 = add i32 %3667, %82
  %3669 = add i32 %3668, %3665
  %3670 = shl i32 %3669, 2
  %3671 = shl i32 %3563, 3
  %3672 = and i32 %3671, 24
  %3673 = and i32 %3611, 7
  %3674 = or i32 %3672, %3673
  %3675 = shl i32 1, %3674
  %3676 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %3670, i32 undef)  ; BufferLoad(srv,index,wot)
  %3677 = extractvalue %dx.types.ResRet.i32 %3676, 0
  %3678 = and i32 %3677, %3675
  %3679 = icmp ne i32 %3678, 0
  br label %3680

; <label>:3680                                    ; preds = %3663, %3654
  %3681 = phi i1 [ %3679, %3663 ], [ false, %3654 ]
  %3682 = xor i1 %3681, true
  %3683 = uitofp i1 %3682 to float
  %3684 = fadd fast float %3658, %3683
  %3685 = or i32 %3563, %3635
  %3686 = icmp slt i32 %3685, 0
  %3687 = or i1 %3638, %3566
  %3688 = or i1 %3686, %3687
  br i1 %3688, label %3706, label %3689, !dx.controlflow.hints !46

; <label>:3689                                    ; preds = %3680
  %3690 = lshr i32 %3563, 2
  %3691 = mul i32 %84, %3690
  %3692 = lshr i32 %3635, 3
  %3693 = add i32 %80, %3692
  %3694 = add i32 %3693, %82
  %3695 = add i32 %3694, %3691
  %3696 = shl i32 %3695, 2
  %3697 = shl i32 %3563, 3
  %3698 = and i32 %3697, 24
  %3699 = and i32 %3635, 7
  %3700 = or i32 %3698, %3699
  %3701 = shl i32 1, %3700
  %3702 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %3696, i32 undef)  ; BufferLoad(srv,index,wot)
  %3703 = extractvalue %dx.types.ResRet.i32 %3702, 0
  %3704 = and i32 %3703, %3701
  %3705 = icmp ne i32 %3704, 0
  br label %3706

; <label>:3706                                    ; preds = %3689, %3680
  %3707 = phi i1 [ %3705, %3689 ], [ false, %3680 ]
  %3708 = xor i1 %3707, true
  %3709 = uitofp i1 %3708 to float
  %3710 = fadd fast float %3684, %3709
  %3711 = or i32 %3587, %3611
  %3712 = icmp slt i32 %3711, 0
  %3713 = or i1 %3614, %3590
  %3714 = or i1 %3712, %3713
  br i1 %3714, label %3732, label %3715, !dx.controlflow.hints !46

; <label>:3715                                    ; preds = %3706
  %3716 = lshr i32 %3587, 2
  %3717 = mul i32 %84, %3716
  %3718 = lshr i32 %3611, 3
  %3719 = add i32 %80, %3718
  %3720 = add i32 %3719, %82
  %3721 = add i32 %3720, %3717
  %3722 = shl i32 %3721, 2
  %3723 = shl i32 %3587, 3
  %3724 = and i32 %3723, 24
  %3725 = and i32 %3611, 7
  %3726 = or i32 %3724, %3725
  %3727 = shl i32 1, %3726
  %3728 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %3722, i32 undef)  ; BufferLoad(srv,index,wot)
  %3729 = extractvalue %dx.types.ResRet.i32 %3728, 0
  %3730 = and i32 %3729, %3727
  %3731 = icmp ne i32 %3730, 0
  br label %3732

; <label>:3732                                    ; preds = %3715, %3706
  %3733 = phi i1 [ %3731, %3715 ], [ false, %3706 ]
  %3734 = xor i1 %3733, true
  %3735 = uitofp i1 %3734 to float
  %3736 = fadd fast float %3710, %3735
  %3737 = or i32 %3587, %3635
  %3738 = icmp slt i32 %3737, 0
  %3739 = or i1 %3638, %3590
  %3740 = or i1 %3738, %3739
  br i1 %3740, label %3758, label %3741, !dx.controlflow.hints !46

; <label>:3741                                    ; preds = %3732
  %3742 = lshr i32 %3587, 2
  %3743 = mul i32 %84, %3742
  %3744 = lshr i32 %3635, 3
  %3745 = add i32 %80, %3744
  %3746 = add i32 %3745, %82
  %3747 = add i32 %3746, %3743
  %3748 = shl i32 %3747, 2
  %3749 = shl i32 %3587, 3
  %3750 = and i32 %3749, 24
  %3751 = and i32 %3635, 7
  %3752 = or i32 %3750, %3751
  %3753 = shl i32 1, %3752
  %3754 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %3748, i32 undef)  ; BufferLoad(srv,index,wot)
  %3755 = extractvalue %dx.types.ResRet.i32 %3754, 0
  %3756 = and i32 %3755, %3753
  %3757 = icmp ne i32 %3756, 0
  br label %3758

; <label>:3758                                    ; preds = %3741, %3732
  %3759 = phi i1 [ %3757, %3741 ], [ false, %3732 ]
  %3760 = xor i1 %3759, true
  %3761 = uitofp i1 %3760 to float
  %3762 = fadd fast float %3736, %3761
  %3763 = fmul fast float %2520, 7.000000e+00
  %3764 = fmul fast float %2521, 7.000000e+00
  %3765 = call float @dx.op.unary.f32(i32 28, float %3763)  ; Round_pi(value)
  %3766 = call float @dx.op.unary.f32(i32 28, float %3764)  ; Round_pi(value)
  %3767 = fptosi float %3765 to i32
  %3768 = fptosi float %3766 to i32
  %3769 = sub i32 %63, %3768
  %3770 = or i32 %3769, %62
  %3771 = icmp slt i32 %3770, 0
  %3772 = icmp sge i32 %3769, %2533
  %3773 = or i1 %2534, %3772
  %3774 = or i1 %3771, %3773
  br i1 %3774, label %3788, label %3775, !dx.controlflow.hints !46

; <label>:3775                                    ; preds = %3758
  %3776 = lshr i32 %3769, 2
  %3777 = mul i32 %84, %3776
  %3778 = add i32 %88, %3777
  %3779 = shl i32 %3778, 2
  %3780 = shl i32 %3769, 3
  %3781 = and i32 %3780, 24
  %3782 = or i32 %3781, %93
  %3783 = shl i32 1, %3782
  %3784 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %3779, i32 undef)  ; BufferLoad(srv,index,wot)
  %3785 = extractvalue %dx.types.ResRet.i32 %3784, 0
  %3786 = and i32 %3785, %3783
  %3787 = icmp ne i32 %3786, 0
  br label %3788

; <label>:3788                                    ; preds = %3775, %3758
  %3789 = phi i1 [ %3787, %3775 ], [ false, %3758 ]
  %3790 = xor i1 %3789, true
  %3791 = uitofp i1 %3790 to float
  %3792 = fadd fast float %3762, %3791
  %3793 = add i32 %3768, %63
  %3794 = or i32 %3793, %62
  %3795 = icmp slt i32 %3794, 0
  %3796 = icmp sge i32 %3793, %2533
  %3797 = or i1 %2534, %3796
  %3798 = or i1 %3795, %3797
  br i1 %3798, label %3812, label %3799, !dx.controlflow.hints !46

; <label>:3799                                    ; preds = %3788
  %3800 = lshr i32 %3793, 2
  %3801 = mul i32 %84, %3800
  %3802 = add i32 %88, %3801
  %3803 = shl i32 %3802, 2
  %3804 = shl i32 %3793, 3
  %3805 = and i32 %3804, 24
  %3806 = or i32 %3805, %93
  %3807 = shl i32 1, %3806
  %3808 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %3803, i32 undef)  ; BufferLoad(srv,index,wot)
  %3809 = extractvalue %dx.types.ResRet.i32 %3808, 0
  %3810 = and i32 %3809, %3807
  %3811 = icmp ne i32 %3810, 0
  br label %3812

; <label>:3812                                    ; preds = %3799, %3788
  %3813 = phi i1 [ %3811, %3799 ], [ false, %3788 ]
  %3814 = xor i1 %3813, true
  %3815 = uitofp i1 %3814 to float
  %3816 = fadd fast float %3792, %3815
  %3817 = sub i32 %62, %3767
  %3818 = or i32 %3817, %63
  %3819 = icmp slt i32 %3818, 0
  %3820 = icmp sge i32 %3817, %2532
  %3821 = or i1 %3820, %2584
  %3822 = or i1 %3819, %3821
  br i1 %3822, label %3836, label %3823, !dx.controlflow.hints !46

; <label>:3823                                    ; preds = %3812
  %3824 = lshr i32 %3817, 3
  %3825 = add i32 %80, %3824
  %3826 = add i32 %3825, %82
  %3827 = add i32 %3826, %85
  %3828 = shl i32 %3827, 2
  %3829 = and i32 %3817, 7
  %3830 = or i32 %3829, %92
  %3831 = shl i32 1, %3830
  %3832 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %3828, i32 undef)  ; BufferLoad(srv,index,wot)
  %3833 = extractvalue %dx.types.ResRet.i32 %3832, 0
  %3834 = and i32 %3833, %3831
  %3835 = icmp ne i32 %3834, 0
  br label %3836

; <label>:3836                                    ; preds = %3823, %3812
  %3837 = phi i1 [ %3835, %3823 ], [ false, %3812 ]
  %3838 = xor i1 %3837, true
  %3839 = uitofp i1 %3838 to float
  %3840 = fadd fast float %3816, %3839
  %3841 = add i32 %3767, %62
  %3842 = or i32 %3841, %63
  %3843 = icmp slt i32 %3842, 0
  %3844 = icmp sge i32 %3841, %2532
  %3845 = or i1 %3844, %2584
  %3846 = or i1 %3843, %3845
  br i1 %3846, label %3860, label %3847, !dx.controlflow.hints !46

; <label>:3847                                    ; preds = %3836
  %3848 = lshr i32 %3841, 3
  %3849 = add i32 %80, %3848
  %3850 = add i32 %3849, %82
  %3851 = add i32 %3850, %85
  %3852 = shl i32 %3851, 2
  %3853 = and i32 %3841, 7
  %3854 = or i32 %3853, %92
  %3855 = shl i32 1, %3854
  %3856 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %3852, i32 undef)  ; BufferLoad(srv,index,wot)
  %3857 = extractvalue %dx.types.ResRet.i32 %3856, 0
  %3858 = and i32 %3857, %3855
  %3859 = icmp ne i32 %3858, 0
  br label %3860

; <label>:3860                                    ; preds = %3847, %3836
  %3861 = phi i1 [ %3859, %3847 ], [ false, %3836 ]
  %3862 = xor i1 %3861, true
  %3863 = uitofp i1 %3862 to float
  %3864 = fadd fast float %3840, %3863
  %3865 = or i32 %3769, %3817
  %3866 = icmp slt i32 %3865, 0
  %3867 = or i1 %3820, %3772
  %3868 = or i1 %3866, %3867
  br i1 %3868, label %3886, label %3869, !dx.controlflow.hints !46

; <label>:3869                                    ; preds = %3860
  %3870 = lshr i32 %3769, 2
  %3871 = mul i32 %84, %3870
  %3872 = lshr i32 %3817, 3
  %3873 = add i32 %80, %3872
  %3874 = add i32 %3873, %82
  %3875 = add i32 %3874, %3871
  %3876 = shl i32 %3875, 2
  %3877 = shl i32 %3769, 3
  %3878 = and i32 %3877, 24
  %3879 = and i32 %3817, 7
  %3880 = or i32 %3878, %3879
  %3881 = shl i32 1, %3880
  %3882 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %3876, i32 undef)  ; BufferLoad(srv,index,wot)
  %3883 = extractvalue %dx.types.ResRet.i32 %3882, 0
  %3884 = and i32 %3883, %3881
  %3885 = icmp ne i32 %3884, 0
  br label %3886

; <label>:3886                                    ; preds = %3869, %3860
  %3887 = phi i1 [ %3885, %3869 ], [ false, %3860 ]
  %3888 = xor i1 %3887, true
  %3889 = uitofp i1 %3888 to float
  %3890 = fadd fast float %3864, %3889
  %3891 = or i32 %3769, %3841
  %3892 = icmp slt i32 %3891, 0
  %3893 = or i1 %3844, %3772
  %3894 = or i1 %3892, %3893
  br i1 %3894, label %3912, label %3895, !dx.controlflow.hints !46

; <label>:3895                                    ; preds = %3886
  %3896 = lshr i32 %3769, 2
  %3897 = mul i32 %84, %3896
  %3898 = lshr i32 %3841, 3
  %3899 = add i32 %80, %3898
  %3900 = add i32 %3899, %82
  %3901 = add i32 %3900, %3897
  %3902 = shl i32 %3901, 2
  %3903 = shl i32 %3769, 3
  %3904 = and i32 %3903, 24
  %3905 = and i32 %3841, 7
  %3906 = or i32 %3904, %3905
  %3907 = shl i32 1, %3906
  %3908 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %3902, i32 undef)  ; BufferLoad(srv,index,wot)
  %3909 = extractvalue %dx.types.ResRet.i32 %3908, 0
  %3910 = and i32 %3909, %3907
  %3911 = icmp ne i32 %3910, 0
  br label %3912

; <label>:3912                                    ; preds = %3895, %3886
  %3913 = phi i1 [ %3911, %3895 ], [ false, %3886 ]
  %3914 = xor i1 %3913, true
  %3915 = uitofp i1 %3914 to float
  %3916 = fadd fast float %3890, %3915
  %3917 = or i32 %3793, %3817
  %3918 = icmp slt i32 %3917, 0
  %3919 = or i1 %3820, %3796
  %3920 = or i1 %3918, %3919
  br i1 %3920, label %3938, label %3921, !dx.controlflow.hints !46

; <label>:3921                                    ; preds = %3912
  %3922 = lshr i32 %3793, 2
  %3923 = mul i32 %84, %3922
  %3924 = lshr i32 %3817, 3
  %3925 = add i32 %80, %3924
  %3926 = add i32 %3925, %82
  %3927 = add i32 %3926, %3923
  %3928 = shl i32 %3927, 2
  %3929 = shl i32 %3793, 3
  %3930 = and i32 %3929, 24
  %3931 = and i32 %3817, 7
  %3932 = or i32 %3930, %3931
  %3933 = shl i32 1, %3932
  %3934 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %3928, i32 undef)  ; BufferLoad(srv,index,wot)
  %3935 = extractvalue %dx.types.ResRet.i32 %3934, 0
  %3936 = and i32 %3935, %3933
  %3937 = icmp ne i32 %3936, 0
  br label %3938

; <label>:3938                                    ; preds = %3921, %3912
  %3939 = phi i1 [ %3937, %3921 ], [ false, %3912 ]
  %3940 = xor i1 %3939, true
  %3941 = uitofp i1 %3940 to float
  %3942 = fadd fast float %3916, %3941
  %3943 = or i32 %3793, %3841
  %3944 = icmp slt i32 %3943, 0
  %3945 = or i1 %3844, %3796
  %3946 = or i1 %3944, %3945
  br i1 %3946, label %3964, label %3947, !dx.controlflow.hints !46

; <label>:3947                                    ; preds = %3938
  %3948 = lshr i32 %3793, 2
  %3949 = mul i32 %84, %3948
  %3950 = lshr i32 %3841, 3
  %3951 = add i32 %80, %3950
  %3952 = add i32 %3951, %82
  %3953 = add i32 %3952, %3949
  %3954 = shl i32 %3953, 2
  %3955 = shl i32 %3793, 3
  %3956 = and i32 %3955, 24
  %3957 = and i32 %3841, 7
  %3958 = or i32 %3956, %3957
  %3959 = shl i32 1, %3958
  %3960 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %3954, i32 undef)  ; BufferLoad(srv,index,wot)
  %3961 = extractvalue %dx.types.ResRet.i32 %3960, 0
  %3962 = and i32 %3961, %3959
  %3963 = icmp ne i32 %3962, 0
  br label %3964

; <label>:3964                                    ; preds = %3947, %3938
  %3965 = phi i1 [ %3963, %3947 ], [ false, %3938 ]
  %3966 = xor i1 %3965, true
  %3967 = uitofp i1 %3966 to float
  %3968 = fadd fast float %3942, %3967
  %3969 = fmul fast float %2520, 8.000000e+00
  %3970 = fmul fast float %2521, 8.000000e+00
  %3971 = call float @dx.op.unary.f32(i32 28, float %3969)  ; Round_pi(value)
  %3972 = call float @dx.op.unary.f32(i32 28, float %3970)  ; Round_pi(value)
  %3973 = fptosi float %3971 to i32
  %3974 = fptosi float %3972 to i32
  %3975 = sub i32 %63, %3974
  %3976 = or i32 %3975, %62
  %3977 = icmp slt i32 %3976, 0
  %3978 = icmp sge i32 %3975, %2533
  %3979 = or i1 %2534, %3978
  %3980 = or i1 %3977, %3979
  br i1 %3980, label %3994, label %3981, !dx.controlflow.hints !46

; <label>:3981                                    ; preds = %3964
  %3982 = lshr i32 %3975, 2
  %3983 = mul i32 %84, %3982
  %3984 = add i32 %88, %3983
  %3985 = shl i32 %3984, 2
  %3986 = shl i32 %3975, 3
  %3987 = and i32 %3986, 24
  %3988 = or i32 %3987, %93
  %3989 = shl i32 1, %3988
  %3990 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %3985, i32 undef)  ; BufferLoad(srv,index,wot)
  %3991 = extractvalue %dx.types.ResRet.i32 %3990, 0
  %3992 = and i32 %3991, %3989
  %3993 = icmp ne i32 %3992, 0
  br label %3994

; <label>:3994                                    ; preds = %3981, %3964
  %3995 = phi i1 [ %3993, %3981 ], [ false, %3964 ]
  %3996 = xor i1 %3995, true
  %3997 = uitofp i1 %3996 to float
  %3998 = fadd fast float %3968, %3997
  %3999 = add i32 %3974, %63
  %4000 = or i32 %3999, %62
  %4001 = icmp slt i32 %4000, 0
  %4002 = icmp sge i32 %3999, %2533
  %4003 = or i1 %2534, %4002
  %4004 = or i1 %4001, %4003
  br i1 %4004, label %4018, label %4005, !dx.controlflow.hints !46

; <label>:4005                                    ; preds = %3994
  %4006 = lshr i32 %3999, 2
  %4007 = mul i32 %84, %4006
  %4008 = add i32 %88, %4007
  %4009 = shl i32 %4008, 2
  %4010 = shl i32 %3999, 3
  %4011 = and i32 %4010, 24
  %4012 = or i32 %4011, %93
  %4013 = shl i32 1, %4012
  %4014 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %4009, i32 undef)  ; BufferLoad(srv,index,wot)
  %4015 = extractvalue %dx.types.ResRet.i32 %4014, 0
  %4016 = and i32 %4015, %4013
  %4017 = icmp ne i32 %4016, 0
  br label %4018

; <label>:4018                                    ; preds = %4005, %3994
  %4019 = phi i1 [ %4017, %4005 ], [ false, %3994 ]
  %4020 = xor i1 %4019, true
  %4021 = uitofp i1 %4020 to float
  %4022 = fadd fast float %3998, %4021
  %4023 = sub i32 %62, %3973
  %4024 = or i32 %4023, %63
  %4025 = icmp slt i32 %4024, 0
  %4026 = icmp sge i32 %4023, %2532
  %4027 = or i1 %4026, %2584
  %4028 = or i1 %4025, %4027
  br i1 %4028, label %4042, label %4029, !dx.controlflow.hints !46

; <label>:4029                                    ; preds = %4018
  %4030 = lshr i32 %4023, 3
  %4031 = add i32 %80, %4030
  %4032 = add i32 %4031, %82
  %4033 = add i32 %4032, %85
  %4034 = shl i32 %4033, 2
  %4035 = and i32 %4023, 7
  %4036 = or i32 %4035, %92
  %4037 = shl i32 1, %4036
  %4038 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %4034, i32 undef)  ; BufferLoad(srv,index,wot)
  %4039 = extractvalue %dx.types.ResRet.i32 %4038, 0
  %4040 = and i32 %4039, %4037
  %4041 = icmp ne i32 %4040, 0
  br label %4042

; <label>:4042                                    ; preds = %4029, %4018
  %4043 = phi i1 [ %4041, %4029 ], [ false, %4018 ]
  %4044 = xor i1 %4043, true
  %4045 = uitofp i1 %4044 to float
  %4046 = fadd fast float %4022, %4045
  %4047 = add i32 %3973, %62
  %4048 = or i32 %4047, %63
  %4049 = icmp slt i32 %4048, 0
  %4050 = icmp sge i32 %4047, %2532
  %4051 = or i1 %4050, %2584
  %4052 = or i1 %4049, %4051
  br i1 %4052, label %4066, label %4053, !dx.controlflow.hints !46

; <label>:4053                                    ; preds = %4042
  %4054 = lshr i32 %4047, 3
  %4055 = add i32 %80, %4054
  %4056 = add i32 %4055, %82
  %4057 = add i32 %4056, %85
  %4058 = shl i32 %4057, 2
  %4059 = and i32 %4047, 7
  %4060 = or i32 %4059, %92
  %4061 = shl i32 1, %4060
  %4062 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %4058, i32 undef)  ; BufferLoad(srv,index,wot)
  %4063 = extractvalue %dx.types.ResRet.i32 %4062, 0
  %4064 = and i32 %4063, %4061
  %4065 = icmp ne i32 %4064, 0
  br label %4066

; <label>:4066                                    ; preds = %4053, %4042
  %4067 = phi i1 [ %4065, %4053 ], [ false, %4042 ]
  %4068 = xor i1 %4067, true
  %4069 = uitofp i1 %4068 to float
  %4070 = fadd fast float %4046, %4069
  %4071 = or i32 %3975, %4023
  %4072 = icmp slt i32 %4071, 0
  %4073 = or i1 %4026, %3978
  %4074 = or i1 %4072, %4073
  br i1 %4074, label %4092, label %4075, !dx.controlflow.hints !46

; <label>:4075                                    ; preds = %4066
  %4076 = lshr i32 %3975, 2
  %4077 = mul i32 %84, %4076
  %4078 = lshr i32 %4023, 3
  %4079 = add i32 %80, %4078
  %4080 = add i32 %4079, %82
  %4081 = add i32 %4080, %4077
  %4082 = shl i32 %4081, 2
  %4083 = shl i32 %3975, 3
  %4084 = and i32 %4083, 24
  %4085 = and i32 %4023, 7
  %4086 = or i32 %4084, %4085
  %4087 = shl i32 1, %4086
  %4088 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %4082, i32 undef)  ; BufferLoad(srv,index,wot)
  %4089 = extractvalue %dx.types.ResRet.i32 %4088, 0
  %4090 = and i32 %4089, %4087
  %4091 = icmp ne i32 %4090, 0
  br label %4092

; <label>:4092                                    ; preds = %4075, %4066
  %4093 = phi i1 [ %4091, %4075 ], [ false, %4066 ]
  %4094 = xor i1 %4093, true
  %4095 = uitofp i1 %4094 to float
  %4096 = fadd fast float %4070, %4095
  %4097 = or i32 %3975, %4047
  %4098 = icmp slt i32 %4097, 0
  %4099 = or i1 %4050, %3978
  %4100 = or i1 %4098, %4099
  br i1 %4100, label %4118, label %4101, !dx.controlflow.hints !46

; <label>:4101                                    ; preds = %4092
  %4102 = lshr i32 %3975, 2
  %4103 = mul i32 %84, %4102
  %4104 = lshr i32 %4047, 3
  %4105 = add i32 %80, %4104
  %4106 = add i32 %4105, %82
  %4107 = add i32 %4106, %4103
  %4108 = shl i32 %4107, 2
  %4109 = shl i32 %3975, 3
  %4110 = and i32 %4109, 24
  %4111 = and i32 %4047, 7
  %4112 = or i32 %4110, %4111
  %4113 = shl i32 1, %4112
  %4114 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %4108, i32 undef)  ; BufferLoad(srv,index,wot)
  %4115 = extractvalue %dx.types.ResRet.i32 %4114, 0
  %4116 = and i32 %4115, %4113
  %4117 = icmp ne i32 %4116, 0
  br label %4118

; <label>:4118                                    ; preds = %4101, %4092
  %4119 = phi i1 [ %4117, %4101 ], [ false, %4092 ]
  %4120 = xor i1 %4119, true
  %4121 = uitofp i1 %4120 to float
  %4122 = fadd fast float %4096, %4121
  %4123 = or i32 %3999, %4023
  %4124 = icmp slt i32 %4123, 0
  %4125 = or i1 %4026, %4002
  %4126 = or i1 %4124, %4125
  br i1 %4126, label %4144, label %4127, !dx.controlflow.hints !46

; <label>:4127                                    ; preds = %4118
  %4128 = lshr i32 %3999, 2
  %4129 = mul i32 %84, %4128
  %4130 = lshr i32 %4023, 3
  %4131 = add i32 %80, %4130
  %4132 = add i32 %4131, %82
  %4133 = add i32 %4132, %4129
  %4134 = shl i32 %4133, 2
  %4135 = shl i32 %3999, 3
  %4136 = and i32 %4135, 24
  %4137 = and i32 %4023, 7
  %4138 = or i32 %4136, %4137
  %4139 = shl i32 1, %4138
  %4140 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %4134, i32 undef)  ; BufferLoad(srv,index,wot)
  %4141 = extractvalue %dx.types.ResRet.i32 %4140, 0
  %4142 = and i32 %4141, %4139
  %4143 = icmp ne i32 %4142, 0
  br label %4144

; <label>:4144                                    ; preds = %4127, %4118
  %4145 = phi i1 [ %4143, %4127 ], [ false, %4118 ]
  %4146 = xor i1 %4145, true
  %4147 = uitofp i1 %4146 to float
  %4148 = fadd fast float %4122, %4147
  %4149 = or i32 %3999, %4047
  %4150 = icmp slt i32 %4149, 0
  %4151 = or i1 %4050, %4002
  %4152 = or i1 %4150, %4151
  br i1 %4152, label %4170, label %4153, !dx.controlflow.hints !46

; <label>:4153                                    ; preds = %4144
  %4154 = lshr i32 %3999, 2
  %4155 = mul i32 %84, %4154
  %4156 = lshr i32 %4047, 3
  %4157 = add i32 %80, %4156
  %4158 = add i32 %4157, %82
  %4159 = add i32 %4158, %4155
  %4160 = shl i32 %4159, 2
  %4161 = shl i32 %3999, 3
  %4162 = and i32 %4161, 24
  %4163 = and i32 %4047, 7
  %4164 = or i32 %4162, %4163
  %4165 = shl i32 1, %4164
  %4166 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %4160, i32 undef)  ; BufferLoad(srv,index,wot)
  %4167 = extractvalue %dx.types.ResRet.i32 %4166, 0
  %4168 = and i32 %4167, %4165
  %4169 = icmp ne i32 %4168, 0
  br label %4170

; <label>:4170                                    ; preds = %4153, %4144
  %4171 = phi i1 [ %4169, %4153 ], [ false, %4144 ]
  %4172 = xor i1 %4171, true
  %4173 = uitofp i1 %4172 to float
  %4174 = fadd fast float %4148, %4173
  %4175 = fmul fast float %2520, 9.000000e+00
  %4176 = fmul fast float %2521, 9.000000e+00
  %4177 = call float @dx.op.unary.f32(i32 28, float %4175)  ; Round_pi(value)
  %4178 = call float @dx.op.unary.f32(i32 28, float %4176)  ; Round_pi(value)
  %4179 = fptosi float %4177 to i32
  %4180 = fptosi float %4178 to i32
  %4181 = sub i32 %63, %4180
  %4182 = or i32 %4181, %62
  %4183 = icmp slt i32 %4182, 0
  %4184 = icmp sge i32 %4181, %2533
  %4185 = or i1 %2534, %4184
  %4186 = or i1 %4183, %4185
  br i1 %4186, label %4200, label %4187, !dx.controlflow.hints !46

; <label>:4187                                    ; preds = %4170
  %4188 = lshr i32 %4181, 2
  %4189 = mul i32 %84, %4188
  %4190 = add i32 %88, %4189
  %4191 = shl i32 %4190, 2
  %4192 = shl i32 %4181, 3
  %4193 = and i32 %4192, 24
  %4194 = or i32 %4193, %93
  %4195 = shl i32 1, %4194
  %4196 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %4191, i32 undef)  ; BufferLoad(srv,index,wot)
  %4197 = extractvalue %dx.types.ResRet.i32 %4196, 0
  %4198 = and i32 %4197, %4195
  %4199 = icmp ne i32 %4198, 0
  br label %4200

; <label>:4200                                    ; preds = %4187, %4170
  %4201 = phi i1 [ %4199, %4187 ], [ false, %4170 ]
  %4202 = xor i1 %4201, true
  %4203 = uitofp i1 %4202 to float
  %4204 = fadd fast float %4174, %4203
  %4205 = add i32 %4180, %63
  %4206 = or i32 %4205, %62
  %4207 = icmp slt i32 %4206, 0
  %4208 = icmp sge i32 %4205, %2533
  %4209 = or i1 %2534, %4208
  %4210 = or i1 %4207, %4209
  br i1 %4210, label %4224, label %4211, !dx.controlflow.hints !46

; <label>:4211                                    ; preds = %4200
  %4212 = lshr i32 %4205, 2
  %4213 = mul i32 %84, %4212
  %4214 = add i32 %88, %4213
  %4215 = shl i32 %4214, 2
  %4216 = shl i32 %4205, 3
  %4217 = and i32 %4216, 24
  %4218 = or i32 %4217, %93
  %4219 = shl i32 1, %4218
  %4220 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %4215, i32 undef)  ; BufferLoad(srv,index,wot)
  %4221 = extractvalue %dx.types.ResRet.i32 %4220, 0
  %4222 = and i32 %4221, %4219
  %4223 = icmp ne i32 %4222, 0
  br label %4224

; <label>:4224                                    ; preds = %4211, %4200
  %4225 = phi i1 [ %4223, %4211 ], [ false, %4200 ]
  %4226 = xor i1 %4225, true
  %4227 = uitofp i1 %4226 to float
  %4228 = fadd fast float %4204, %4227
  %4229 = sub i32 %62, %4179
  %4230 = or i32 %4229, %63
  %4231 = icmp slt i32 %4230, 0
  %4232 = icmp sge i32 %4229, %2532
  %4233 = or i1 %4232, %2584
  %4234 = or i1 %4231, %4233
  br i1 %4234, label %4248, label %4235, !dx.controlflow.hints !46

; <label>:4235                                    ; preds = %4224
  %4236 = lshr i32 %4229, 3
  %4237 = add i32 %80, %4236
  %4238 = add i32 %4237, %82
  %4239 = add i32 %4238, %85
  %4240 = shl i32 %4239, 2
  %4241 = and i32 %4229, 7
  %4242 = or i32 %4241, %92
  %4243 = shl i32 1, %4242
  %4244 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %4240, i32 undef)  ; BufferLoad(srv,index,wot)
  %4245 = extractvalue %dx.types.ResRet.i32 %4244, 0
  %4246 = and i32 %4245, %4243
  %4247 = icmp ne i32 %4246, 0
  br label %4248

; <label>:4248                                    ; preds = %4235, %4224
  %4249 = phi i1 [ %4247, %4235 ], [ false, %4224 ]
  %4250 = xor i1 %4249, true
  %4251 = uitofp i1 %4250 to float
  %4252 = fadd fast float %4228, %4251
  %4253 = add i32 %4179, %62
  %4254 = or i32 %4253, %63
  %4255 = icmp slt i32 %4254, 0
  %4256 = icmp sge i32 %4253, %2532
  %4257 = or i1 %4256, %2584
  %4258 = or i1 %4255, %4257
  br i1 %4258, label %4273, label %4259, !dx.controlflow.hints !46

; <label>:4259                                    ; preds = %4248
  %4260 = lshr i32 %4253, 3
  %4261 = add i32 %80, %4260
  %4262 = add i32 %4261, %82
  %4263 = add i32 %4262, %85
  %4264 = shl i32 %4263, 2
  %4265 = and i32 %4253, 7
  %4266 = or i32 %4265, %92
  %4267 = shl i32 1, %4266
  %4268 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %4264, i32 undef)  ; BufferLoad(srv,index,wot)
  %4269 = extractvalue %dx.types.ResRet.i32 %4268, 0
  %4270 = and i32 %4269, %4267
  %4271 = icmp eq i32 %4270, 0
  %4272 = uitofp i1 %4271 to float
  br label %4273

; <label>:4273                                    ; preds = %4259, %4248
  %4274 = phi float [ %4272, %4259 ], [ 1.000000e+00, %4248 ]
  %4275 = fadd fast float %4252, %4274
  %4276 = or i32 %4181, %4229
  %4277 = icmp slt i32 %4276, 0
  %4278 = or i1 %4232, %4184
  %4279 = or i1 %4277, %4278
  br i1 %4279, label %4298, label %4280, !dx.controlflow.hints !46

; <label>:4280                                    ; preds = %4273
  %4281 = lshr i32 %4181, 2
  %4282 = mul i32 %84, %4281
  %4283 = lshr i32 %4229, 3
  %4284 = add i32 %80, %4283
  %4285 = add i32 %4284, %82
  %4286 = add i32 %4285, %4282
  %4287 = shl i32 %4286, 2
  %4288 = shl i32 %4181, 3
  %4289 = and i32 %4288, 24
  %4290 = and i32 %4229, 7
  %4291 = or i32 %4289, %4290
  %4292 = shl i32 1, %4291
  %4293 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %4287, i32 undef)  ; BufferLoad(srv,index,wot)
  %4294 = extractvalue %dx.types.ResRet.i32 %4293, 0
  %4295 = and i32 %4294, %4292
  %4296 = icmp eq i32 %4295, 0
  %4297 = uitofp i1 %4296 to float
  br label %4298

; <label>:4298                                    ; preds = %4280, %4273
  %4299 = phi float [ %4297, %4280 ], [ 1.000000e+00, %4273 ]
  %4300 = fadd fast float %4275, %4299
  %4301 = or i32 %4181, %4253
  %4302 = icmp slt i32 %4301, 0
  %4303 = or i1 %4256, %4184
  %4304 = or i1 %4302, %4303
  br i1 %4304, label %4323, label %4305, !dx.controlflow.hints !46

; <label>:4305                                    ; preds = %4298
  %4306 = lshr i32 %4181, 2
  %4307 = mul i32 %84, %4306
  %4308 = lshr i32 %4253, 3
  %4309 = add i32 %80, %4308
  %4310 = add i32 %4309, %82
  %4311 = add i32 %4310, %4307
  %4312 = shl i32 %4311, 2
  %4313 = shl i32 %4181, 3
  %4314 = and i32 %4313, 24
  %4315 = and i32 %4253, 7
  %4316 = or i32 %4314, %4315
  %4317 = shl i32 1, %4316
  %4318 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %4312, i32 undef)  ; BufferLoad(srv,index,wot)
  %4319 = extractvalue %dx.types.ResRet.i32 %4318, 0
  %4320 = and i32 %4319, %4317
  %4321 = icmp eq i32 %4320, 0
  %4322 = uitofp i1 %4321 to float
  br label %4323

; <label>:4323                                    ; preds = %4305, %4298
  %4324 = phi float [ %4322, %4305 ], [ 1.000000e+00, %4298 ]
  %4325 = fadd fast float %4300, %4324
  %4326 = or i32 %4205, %4229
  %4327 = icmp slt i32 %4326, 0
  %4328 = or i1 %4232, %4208
  %4329 = or i1 %4327, %4328
  br i1 %4329, label %4348, label %4330, !dx.controlflow.hints !46

; <label>:4330                                    ; preds = %4323
  %4331 = lshr i32 %4205, 2
  %4332 = mul i32 %84, %4331
  %4333 = lshr i32 %4229, 3
  %4334 = add i32 %80, %4333
  %4335 = add i32 %4334, %82
  %4336 = add i32 %4335, %4332
  %4337 = shl i32 %4336, 2
  %4338 = shl i32 %4205, 3
  %4339 = and i32 %4338, 24
  %4340 = and i32 %4229, 7
  %4341 = or i32 %4339, %4340
  %4342 = shl i32 1, %4341
  %4343 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %4337, i32 undef)  ; BufferLoad(srv,index,wot)
  %4344 = extractvalue %dx.types.ResRet.i32 %4343, 0
  %4345 = and i32 %4344, %4342
  %4346 = icmp eq i32 %4345, 0
  %4347 = uitofp i1 %4346 to float
  br label %4348

; <label>:4348                                    ; preds = %4330, %4323
  %4349 = phi float [ %4347, %4330 ], [ 1.000000e+00, %4323 ]
  %4350 = fadd fast float %4325, %4349
  %4351 = or i32 %4205, %4253
  %4352 = icmp slt i32 %4351, 0
  %4353 = or i1 %4256, %4208
  %4354 = or i1 %4352, %4353
  br i1 %4354, label %4373, label %4355, !dx.controlflow.hints !46

; <label>:4355                                    ; preds = %4348
  %4356 = lshr i32 %4205, 2
  %4357 = mul i32 %84, %4356
  %4358 = lshr i32 %4253, 3
  %4359 = add i32 %80, %4358
  %4360 = add i32 %4359, %82
  %4361 = add i32 %4360, %4357
  %4362 = shl i32 %4361, 2
  %4363 = shl i32 %4205, 3
  %4364 = and i32 %4363, 24
  %4365 = and i32 %4253, 7
  %4366 = or i32 %4364, %4365
  %4367 = shl i32 1, %4366
  %4368 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %4362, i32 undef)  ; BufferLoad(srv,index,wot)
  %4369 = extractvalue %dx.types.ResRet.i32 %4368, 0
  %4370 = and i32 %4369, %4367
  %4371 = icmp eq i32 %4370, 0
  %4372 = uitofp i1 %4371 to float
  br label %4373

; <label>:4373                                    ; preds = %4355, %4348
  %4374 = phi float [ %4372, %4355 ], [ 1.000000e+00, %4348 ]
  %4375 = fadd fast float %4350, %4374
  %4376 = fmul fast float %2520, 1.000000e+01
  %4377 = fmul fast float %2521, 1.000000e+01
  %4378 = call float @dx.op.unary.f32(i32 28, float %4376)  ; Round_pi(value)
  %4379 = call float @dx.op.unary.f32(i32 28, float %4377)  ; Round_pi(value)
  %4380 = fptosi float %4378 to i32
  %4381 = fptosi float %4379 to i32
  %4382 = sub i32 %63, %4381
  %4383 = or i32 %4382, %62
  %4384 = icmp slt i32 %4383, 0
  %4385 = icmp sge i32 %4382, %2533
  %4386 = or i1 %2534, %4385
  %4387 = or i1 %4384, %4386
  br i1 %4387, label %4402, label %4388, !dx.controlflow.hints !46

; <label>:4388                                    ; preds = %4373
  %4389 = lshr i32 %4382, 2
  %4390 = mul i32 %84, %4389
  %4391 = add i32 %88, %4390
  %4392 = shl i32 %4391, 2
  %4393 = shl i32 %4382, 3
  %4394 = and i32 %4393, 24
  %4395 = or i32 %4394, %93
  %4396 = shl i32 1, %4395
  %4397 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %4392, i32 undef)  ; BufferLoad(srv,index,wot)
  %4398 = extractvalue %dx.types.ResRet.i32 %4397, 0
  %4399 = and i32 %4398, %4396
  %4400 = icmp eq i32 %4399, 0
  %4401 = uitofp i1 %4400 to float
  br label %4402

; <label>:4402                                    ; preds = %4388, %4373
  %4403 = phi float [ %4401, %4388 ], [ 1.000000e+00, %4373 ]
  %4404 = fadd fast float %4375, %4403
  %4405 = add i32 %4381, %63
  %4406 = or i32 %4405, %62
  %4407 = icmp slt i32 %4406, 0
  %4408 = icmp sge i32 %4405, %2533
  %4409 = or i1 %2534, %4408
  %4410 = or i1 %4407, %4409
  br i1 %4410, label %4425, label %4411, !dx.controlflow.hints !46

; <label>:4411                                    ; preds = %4402
  %4412 = lshr i32 %4405, 2
  %4413 = mul i32 %84, %4412
  %4414 = add i32 %88, %4413
  %4415 = shl i32 %4414, 2
  %4416 = shl i32 %4405, 3
  %4417 = and i32 %4416, 24
  %4418 = or i32 %4417, %93
  %4419 = shl i32 1, %4418
  %4420 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %4415, i32 undef)  ; BufferLoad(srv,index,wot)
  %4421 = extractvalue %dx.types.ResRet.i32 %4420, 0
  %4422 = and i32 %4421, %4419
  %4423 = icmp eq i32 %4422, 0
  %4424 = uitofp i1 %4423 to float
  br label %4425

; <label>:4425                                    ; preds = %4411, %4402
  %4426 = phi float [ %4424, %4411 ], [ 1.000000e+00, %4402 ]
  %4427 = fadd fast float %4404, %4426
  %4428 = sub i32 %62, %4380
  %4429 = or i32 %4428, %63
  %4430 = icmp slt i32 %4429, 0
  %4431 = icmp sge i32 %4428, %2532
  %4432 = or i1 %4431, %2584
  %4433 = or i1 %4430, %4432
  br i1 %4433, label %4448, label %4434, !dx.controlflow.hints !46

; <label>:4434                                    ; preds = %4425
  %4435 = lshr i32 %4428, 3
  %4436 = add i32 %80, %4435
  %4437 = add i32 %4436, %82
  %4438 = add i32 %4437, %85
  %4439 = shl i32 %4438, 2
  %4440 = and i32 %4428, 7
  %4441 = or i32 %4440, %92
  %4442 = shl i32 1, %4441
  %4443 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %4439, i32 undef)  ; BufferLoad(srv,index,wot)
  %4444 = extractvalue %dx.types.ResRet.i32 %4443, 0
  %4445 = and i32 %4444, %4442
  %4446 = icmp eq i32 %4445, 0
  %4447 = uitofp i1 %4446 to float
  br label %4448

; <label>:4448                                    ; preds = %4434, %4425
  %4449 = phi float [ %4447, %4434 ], [ 1.000000e+00, %4425 ]
  %4450 = fadd fast float %4427, %4449
  %4451 = add i32 %4380, %62
  %4452 = or i32 %4451, %63
  %4453 = icmp slt i32 %4452, 0
  %4454 = icmp sge i32 %4451, %2532
  %4455 = or i1 %4454, %2584
  %4456 = or i1 %4453, %4455
  br i1 %4456, label %4471, label %4457, !dx.controlflow.hints !46

; <label>:4457                                    ; preds = %4448
  %4458 = lshr i32 %4451, 3
  %4459 = add i32 %80, %4458
  %4460 = add i32 %4459, %82
  %4461 = add i32 %4460, %85
  %4462 = shl i32 %4461, 2
  %4463 = and i32 %4451, 7
  %4464 = or i32 %4463, %92
  %4465 = shl i32 1, %4464
  %4466 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %4462, i32 undef)  ; BufferLoad(srv,index,wot)
  %4467 = extractvalue %dx.types.ResRet.i32 %4466, 0
  %4468 = and i32 %4467, %4465
  %4469 = icmp eq i32 %4468, 0
  %4470 = uitofp i1 %4469 to float
  br label %4471

; <label>:4471                                    ; preds = %4457, %4448
  %4472 = phi float [ %4470, %4457 ], [ 1.000000e+00, %4448 ]
  %4473 = fadd fast float %4450, %4472
  %4474 = or i32 %4382, %4428
  %4475 = icmp slt i32 %4474, 0
  %4476 = or i1 %4431, %4385
  %4477 = or i1 %4475, %4476
  br i1 %4477, label %4496, label %4478, !dx.controlflow.hints !46

; <label>:4478                                    ; preds = %4471
  %4479 = lshr i32 %4382, 2
  %4480 = mul i32 %84, %4479
  %4481 = lshr i32 %4428, 3
  %4482 = add i32 %80, %4481
  %4483 = add i32 %4482, %82
  %4484 = add i32 %4483, %4480
  %4485 = shl i32 %4484, 2
  %4486 = shl i32 %4382, 3
  %4487 = and i32 %4486, 24
  %4488 = and i32 %4428, 7
  %4489 = or i32 %4487, %4488
  %4490 = shl i32 1, %4489
  %4491 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %4485, i32 undef)  ; BufferLoad(srv,index,wot)
  %4492 = extractvalue %dx.types.ResRet.i32 %4491, 0
  %4493 = and i32 %4492, %4490
  %4494 = icmp eq i32 %4493, 0
  %4495 = uitofp i1 %4494 to float
  br label %4496

; <label>:4496                                    ; preds = %4478, %4471
  %4497 = phi float [ %4495, %4478 ], [ 1.000000e+00, %4471 ]
  %4498 = fadd fast float %4473, %4497
  %4499 = or i32 %4382, %4451
  %4500 = icmp slt i32 %4499, 0
  %4501 = or i1 %4454, %4385
  %4502 = or i1 %4500, %4501
  br i1 %4502, label %4521, label %4503, !dx.controlflow.hints !46

; <label>:4503                                    ; preds = %4496
  %4504 = lshr i32 %4382, 2
  %4505 = mul i32 %84, %4504
  %4506 = lshr i32 %4451, 3
  %4507 = add i32 %80, %4506
  %4508 = add i32 %4507, %82
  %4509 = add i32 %4508, %4505
  %4510 = shl i32 %4509, 2
  %4511 = shl i32 %4382, 3
  %4512 = and i32 %4511, 24
  %4513 = and i32 %4451, 7
  %4514 = or i32 %4512, %4513
  %4515 = shl i32 1, %4514
  %4516 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %4510, i32 undef)  ; BufferLoad(srv,index,wot)
  %4517 = extractvalue %dx.types.ResRet.i32 %4516, 0
  %4518 = and i32 %4517, %4515
  %4519 = icmp eq i32 %4518, 0
  %4520 = uitofp i1 %4519 to float
  br label %4521

; <label>:4521                                    ; preds = %4503, %4496
  %4522 = phi float [ %4520, %4503 ], [ 1.000000e+00, %4496 ]
  %4523 = fadd fast float %4498, %4522
  %4524 = or i32 %4405, %4428
  %4525 = icmp slt i32 %4524, 0
  %4526 = or i1 %4431, %4408
  %4527 = or i1 %4525, %4526
  br i1 %4527, label %4546, label %4528, !dx.controlflow.hints !46

; <label>:4528                                    ; preds = %4521
  %4529 = lshr i32 %4405, 2
  %4530 = mul i32 %84, %4529
  %4531 = lshr i32 %4428, 3
  %4532 = add i32 %80, %4531
  %4533 = add i32 %4532, %82
  %4534 = add i32 %4533, %4530
  %4535 = shl i32 %4534, 2
  %4536 = shl i32 %4405, 3
  %4537 = and i32 %4536, 24
  %4538 = and i32 %4428, 7
  %4539 = or i32 %4537, %4538
  %4540 = shl i32 1, %4539
  %4541 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %4535, i32 undef)  ; BufferLoad(srv,index,wot)
  %4542 = extractvalue %dx.types.ResRet.i32 %4541, 0
  %4543 = and i32 %4542, %4540
  %4544 = icmp eq i32 %4543, 0
  %4545 = uitofp i1 %4544 to float
  br label %4546

; <label>:4546                                    ; preds = %4528, %4521
  %4547 = phi float [ %4545, %4528 ], [ 1.000000e+00, %4521 ]
  %4548 = fadd fast float %4523, %4547
  %4549 = or i32 %4405, %4451
  %4550 = icmp slt i32 %4549, 0
  %4551 = or i1 %4454, %4408
  %4552 = or i1 %4550, %4551
  br i1 %4552, label %4571, label %4553, !dx.controlflow.hints !46

; <label>:4553                                    ; preds = %4546
  %4554 = lshr i32 %4405, 2
  %4555 = mul i32 %84, %4554
  %4556 = lshr i32 %4451, 3
  %4557 = add i32 %80, %4556
  %4558 = add i32 %4557, %82
  %4559 = add i32 %4558, %4555
  %4560 = shl i32 %4559, 2
  %4561 = shl i32 %4405, 3
  %4562 = and i32 %4561, 24
  %4563 = and i32 %4451, 7
  %4564 = or i32 %4562, %4563
  %4565 = shl i32 1, %4564
  %4566 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %4560, i32 undef)  ; BufferLoad(srv,index,wot)
  %4567 = extractvalue %dx.types.ResRet.i32 %4566, 0
  %4568 = and i32 %4567, %4565
  %4569 = icmp eq i32 %4568, 0
  %4570 = uitofp i1 %4569 to float
  br label %4571

; <label>:4571                                    ; preds = %4553, %4546
  %4572 = phi float [ %4570, %4553 ], [ 1.000000e+00, %4546 ]
  %4573 = fadd fast float %4548, %4572
  %4574 = fmul fast float %2474, 1.500000e+00
  %4575 = fsub fast float 3.000000e+00, %4574
  %4576 = fdiv fast float 0x3FB99999A0000000, %4575
  %4577 = fmul fast float %2474, 2.000000e+00
  %4578 = fsub fast float 8.000000e+00, %4573
  %4579 = fsub fast float %4578, %4577
  %4580 = fmul fast float %4579, 4.000000e+00
  %4581 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4580)  ; FMax(a,b)
  %4582 = fadd fast float %4581, %4573
  %4583 = fmul fast float %4582, %4576
  %4584 = fadd fast float %2474, 1.500000e+00
  %4585 = fsub fast float 1.000000e+00, %4583
  %4586 = call float @dx.op.unary.f32(i32 7, float %4585)  ; Saturate(value)
  %4587 = call float @dx.op.unary.f32(i32 23, float %4586)  ; Log(value)
  %4588 = fmul fast float %4587, %4584
  %4589 = call float @dx.op.unary.f32(i32 21, float %4588)  ; Exp(value)
  %4590 = fmul fast float %2317, %2309
  %4591 = fmul fast float %2318, %2310
  %4592 = fmul fast float %2319, %2311
  %4593 = call float @dx.op.unary.f32(i32 23, float %2452)  ; Log(value)
  %4594 = fmul fast float %4593, 2.500000e-01
  %4595 = call float @dx.op.unary.f32(i32 21, float %4594)  ; Exp(value)
  %4596 = fmul fast float %2312, %2268
  %4597 = fmul fast float %4596, %2320
  %4598 = fmul fast float %4597, %4589
  %4599 = fmul fast float %4598, %4595
  br label %5165

; <label>:4600                                    ; preds = %612
  %4601 = and i32 %627, 511
  %4602 = mul nuw nsw i32 %4601, 20
  %4603 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %4602, i32 undef)  ; BufferLoad(srv,index,wot)
  %4604 = extractvalue %dx.types.ResRet.i32 %4603, 0
  %4605 = lshr i32 %4604, 24
  %4606 = uitofp i32 %4605 to float
  %4607 = add i32 %63, -1
  %4608 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %11, i32 0, i32 %62, i32 %4607, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4609 = extractvalue %dx.types.ResRet.i32 %4608, 0
  %4610 = lshr i32 %4609, 8
  %4611 = and i32 %4609, 255
  %4612 = and i32 %4610, 255
  %4613 = uitofp i32 %4611 to float
  %4614 = uitofp i32 %4612 to float
  %4615 = fmul fast float %4613, 0x3F80101020000000
  %4616 = fmul fast float %4614, 0x3F80101020000000
  %4617 = fadd fast float %4615, -1.000000e+00
  %4618 = fadd fast float %4616, -1.000000e+00
  %4619 = call float @dx.op.unary.f32(i32 6, float %4617)  ; FAbs(value)
  %4620 = fsub fast float 1.000000e+00, %4619
  %4621 = call float @dx.op.unary.f32(i32 6, float %4618)  ; FAbs(value)
  %4622 = fsub fast float %4620, %4621
  %4623 = fsub fast float -0.000000e+00, %4622
  %4624 = call float @dx.op.binary.f32(i32 35, float %4623, float 0.000000e+00)  ; FMax(a,b)
  %4625 = fcmp fast ogt float %4617, 0.000000e+00
  %4626 = fsub fast float -0.000000e+00, %4624
  %4627 = select i1 %4625, float %4626, float %4624
  %4628 = fadd fast float %4627, %4617
  %4629 = fcmp fast ogt float %4618, 0.000000e+00
  %4630 = select i1 %4629, float %4626, float %4624
  %4631 = fadd fast float %4630, %4618
  %4632 = call float @dx.op.dot3.f32(i32 55, float %4628, float %4631, float %4622, float %4628, float %4631, float %4622)  ; Dot3(ax,ay,az,bx,by,bz)
  %4633 = call float @dx.op.unary.f32(i32 25, float %4632)  ; Rsqrt(value)
  %4634 = fmul fast float %4628, %4633
  %4635 = fmul fast float %4631, %4633
  %4636 = fmul fast float %4633, %4622
  %4637 = add i32 %63, 1
  %4638 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %11, i32 0, i32 %62, i32 %4637, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4639 = extractvalue %dx.types.ResRet.i32 %4638, 0
  %4640 = lshr i32 %4639, 8
  %4641 = and i32 %4639, 255
  %4642 = and i32 %4640, 255
  %4643 = uitofp i32 %4641 to float
  %4644 = uitofp i32 %4642 to float
  %4645 = fmul fast float %4643, 0x3F80101020000000
  %4646 = fmul fast float %4644, 0x3F80101020000000
  %4647 = fadd fast float %4645, -1.000000e+00
  %4648 = fadd fast float %4646, -1.000000e+00
  %4649 = call float @dx.op.unary.f32(i32 6, float %4647)  ; FAbs(value)
  %4650 = fsub fast float 1.000000e+00, %4649
  %4651 = call float @dx.op.unary.f32(i32 6, float %4648)  ; FAbs(value)
  %4652 = fsub fast float %4650, %4651
  %4653 = fsub fast float -0.000000e+00, %4652
  %4654 = call float @dx.op.binary.f32(i32 35, float %4653, float 0.000000e+00)  ; FMax(a,b)
  %4655 = fcmp fast ogt float %4647, 0.000000e+00
  %4656 = fsub fast float -0.000000e+00, %4654
  %4657 = select i1 %4655, float %4656, float %4654
  %4658 = fadd fast float %4657, %4647
  %4659 = fcmp fast ogt float %4648, 0.000000e+00
  %4660 = select i1 %4659, float %4656, float %4654
  %4661 = fadd fast float %4660, %4648
  %4662 = call float @dx.op.dot3.f32(i32 55, float %4658, float %4661, float %4652, float %4658, float %4661, float %4652)  ; Dot3(ax,ay,az,bx,by,bz)
  %4663 = call float @dx.op.unary.f32(i32 25, float %4662)  ; Rsqrt(value)
  %4664 = fmul fast float %4658, %4663
  %4665 = fmul fast float %4661, %4663
  %4666 = fmul fast float %4663, %4652
  %4667 = add i32 %62, -1
  %4668 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %11, i32 0, i32 %4667, i32 %63, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4669 = extractvalue %dx.types.ResRet.i32 %4668, 0
  %4670 = lshr i32 %4669, 8
  %4671 = and i32 %4669, 255
  %4672 = and i32 %4670, 255
  %4673 = uitofp i32 %4671 to float
  %4674 = uitofp i32 %4672 to float
  %4675 = fmul fast float %4673, 0x3F80101020000000
  %4676 = fmul fast float %4674, 0x3F80101020000000
  %4677 = fadd fast float %4675, -1.000000e+00
  %4678 = fadd fast float %4676, -1.000000e+00
  %4679 = call float @dx.op.unary.f32(i32 6, float %4677)  ; FAbs(value)
  %4680 = fsub fast float 1.000000e+00, %4679
  %4681 = call float @dx.op.unary.f32(i32 6, float %4678)  ; FAbs(value)
  %4682 = fsub fast float %4680, %4681
  %4683 = fsub fast float -0.000000e+00, %4682
  %4684 = call float @dx.op.binary.f32(i32 35, float %4683, float 0.000000e+00)  ; FMax(a,b)
  %4685 = fcmp fast ogt float %4677, 0.000000e+00
  %4686 = fsub fast float -0.000000e+00, %4684
  %4687 = select i1 %4685, float %4686, float %4684
  %4688 = fadd fast float %4687, %4677
  %4689 = fcmp fast ogt float %4678, 0.000000e+00
  %4690 = select i1 %4689, float %4686, float %4684
  %4691 = fadd fast float %4690, %4678
  %4692 = call float @dx.op.dot3.f32(i32 55, float %4688, float %4691, float %4682, float %4688, float %4691, float %4682)  ; Dot3(ax,ay,az,bx,by,bz)
  %4693 = call float @dx.op.unary.f32(i32 25, float %4692)  ; Rsqrt(value)
  %4694 = fmul fast float %4688, %4693
  %4695 = fmul fast float %4691, %4693
  %4696 = fmul fast float %4693, %4682
  %4697 = add i32 %62, 1
  %4698 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %11, i32 0, i32 %4697, i32 %63, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4699 = extractvalue %dx.types.ResRet.i32 %4698, 0
  %4700 = lshr i32 %4699, 8
  %4701 = and i32 %4699, 255
  %4702 = and i32 %4700, 255
  %4703 = uitofp i32 %4701 to float
  %4704 = uitofp i32 %4702 to float
  %4705 = fmul fast float %4703, 0x3F80101020000000
  %4706 = fmul fast float %4704, 0x3F80101020000000
  %4707 = fadd fast float %4705, -1.000000e+00
  %4708 = fadd fast float %4706, -1.000000e+00
  %4709 = call float @dx.op.unary.f32(i32 6, float %4707)  ; FAbs(value)
  %4710 = fsub fast float 1.000000e+00, %4709
  %4711 = call float @dx.op.unary.f32(i32 6, float %4708)  ; FAbs(value)
  %4712 = fsub fast float %4710, %4711
  %4713 = fsub fast float -0.000000e+00, %4712
  %4714 = call float @dx.op.binary.f32(i32 35, float %4713, float 0.000000e+00)  ; FMax(a,b)
  %4715 = fcmp fast ogt float %4707, 0.000000e+00
  %4716 = fsub fast float -0.000000e+00, %4714
  %4717 = select i1 %4715, float %4716, float %4714
  %4718 = fadd fast float %4717, %4707
  %4719 = fcmp fast ogt float %4708, 0.000000e+00
  %4720 = select i1 %4719, float %4716, float %4714
  %4721 = fadd fast float %4720, %4708
  %4722 = call float @dx.op.dot3.f32(i32 55, float %4718, float %4721, float %4712, float %4718, float %4721, float %4712)  ; Dot3(ax,ay,az,bx,by,bz)
  %4723 = call float @dx.op.unary.f32(i32 25, float %4722)  ; Rsqrt(value)
  %4724 = fmul fast float %4718, %4723
  %4725 = fmul fast float %4721, %4723
  %4726 = fmul fast float %4723, %4712
  %4727 = call float @dx.op.dot3.f32(i32 55, float %4634, float %4635, float %4636, float %4664, float %4665, float %4666)  ; Dot3(ax,ay,az,bx,by,bz)
  %4728 = call float @dx.op.binary.f32(i32 36, float 1.000000e+00, float %4727)  ; FMin(a,b)
  %4729 = call float @dx.op.dot3.f32(i32 55, float %4634, float %4635, float %4636, float %4694, float %4695, float %4696)  ; Dot3(ax,ay,az,bx,by,bz)
  %4730 = call float @dx.op.binary.f32(i32 36, float %4728, float %4729)  ; FMin(a,b)
  %4731 = call float @dx.op.dot3.f32(i32 55, float %4634, float %4635, float %4636, float %4724, float %4725, float %4726)  ; Dot3(ax,ay,az,bx,by,bz)
  %4732 = call float @dx.op.binary.f32(i32 36, float %4730, float %4731)  ; FMin(a,b)
  %4733 = call float @dx.op.dot3.f32(i32 55, float %4664, float %4665, float %4666, float %4694, float %4695, float %4696)  ; Dot3(ax,ay,az,bx,by,bz)
  %4734 = call float @dx.op.binary.f32(i32 36, float %4732, float %4733)  ; FMin(a,b)
  %4735 = call float @dx.op.dot3.f32(i32 55, float %4664, float %4665, float %4666, float %4724, float %4725, float %4726)  ; Dot3(ax,ay,az,bx,by,bz)
  %4736 = call float @dx.op.binary.f32(i32 36, float %4734, float %4735)  ; FMin(a,b)
  %4737 = call float @dx.op.dot3.f32(i32 55, float %4694, float %4695, float %4696, float %4724, float %4725, float %4726)  ; Dot3(ax,ay,az,bx,by,bz)
  %4738 = call float @dx.op.binary.f32(i32 36, float %4736, float %4737)  ; FMin(a,b)
  %4739 = call float @dx.op.unary.f32(i32 7, float %4738)  ; Saturate(value)
  %4740 = fsub fast float 1.000000e+00, %4739
  %4741 = add nuw nsw i32 %4602, 12
  %4742 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %4741, i32 undef)  ; BufferLoad(srv,index,wot)
  %4743 = extractvalue %dx.types.ResRet.i32 %4742, 0
  %4744 = lshr i32 %4743, 16
  %4745 = uitofp i32 %4744 to float
  %4746 = fmul fast float %4745, 0x3EF0002000000000
  %4747 = add nuw nsw i32 %4602, 8
  %4748 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %4747, i32 undef)  ; BufferLoad(srv,index,wot)
  %4749 = extractvalue %dx.types.ResRet.i32 %4748, 0
  %4750 = lshr i32 %4749, 16
  %4751 = uitofp i32 %4750 to float
  %4752 = fmul fast float %4751, 0x3EF0002000000000
  %4753 = fsub fast float %44, %4752
  %4754 = fdiv fast float %4753, %4746
  %4755 = fmul fast float %67, %43
  %4756 = fmul fast float %4755, 4.000000e+02
  %4757 = fmul fast float %44, 4.000000e+02
  %4758 = call float @dx.op.unary.f32(i32 22, float %4756)  ; Frc(value)
  %4759 = call float @dx.op.unary.f32(i32 22, float %4757)  ; Frc(value)
  %4760 = fadd fast float %4758, -5.000000e-01
  %4761 = fadd fast float %4759, -5.000000e-01
  %4762 = fmul fast float %4760, 2.000000e+00
  %4763 = fmul fast float %4761, 2.000000e+00
  %4764 = call float @dx.op.dot2.f32(i32 54, float %4762, float %4763, float %4762, float %4763)  ; Dot2(ax,ay,bx,by)
  %4765 = call float @dx.op.unary.f32(i32 24, float %4764)  ; Sqrt(value)
  %4766 = fmul fast float %4765, 0x4004C77B00000000
  %4767 = fsub fast float 2.000000e+00, %4766
  %4768 = call float @dx.op.unary.f32(i32 7, float %4767)  ; Saturate(value)
  %4769 = fmul fast float %4606, 0x3F924C82A0000000
  %4770 = fmul fast float %4606, 0x3F78278DA0000000
  %4771 = fsub fast float 0x400E470B00000000, %4769
  %4772 = fadd fast float %4771, %4754
  %4773 = fmul fast float %4772, 1.000000e+01
  %4774 = call float @dx.op.unary.f32(i32 7, float %4773)  ; Saturate(value)
  %4775 = fsub fast float 0x3FE286BC80000000, %4770
  %4776 = fadd fast float %4775, %4754
  %4777 = fmul fast float %4776, 1.250000e+00
  %4778 = call float @dx.op.unary.f32(i32 7, float %4777)  ; Saturate(value)
  %4779 = fsub fast float 1.000000e+00, %4778
  %4780 = fmul fast float %4779, %4774
  %4781 = fmul fast float %4606, 0x3F8E317100000000
  %4782 = fsub fast float 0x40079435C0000000, %4781
  %4783 = fadd fast float %4782, %4754
  %4784 = fmul fast float %4783, 0x401AAAAAA0000000
  %4785 = call float @dx.op.unary.f32(i32 7, float %4784)  ; Saturate(value)
  %4786 = fsub fast float 1.000000e+00, %4785
  %4787 = fmul fast float %4786, %4774
  %4788 = fmul fast float %4755, 4.500000e+01
  %4789 = fmul fast float %44, 4.500000e+01
  %4790 = fadd fast float %4789, -5.000000e-01
  %4791 = fmul fast float %4755, 0x4039FB1300000000
  %4792 = fadd fast float %4791, 0xBFE279A720000000
  %4793 = call float @dx.op.unary.f32(i32 27, float %4791)  ; Round_ni(value)
  %4794 = call float @dx.op.unary.f32(i32 27, float %4789)  ; Round_ni(value)
  %4795 = call float @dx.op.unary.f32(i32 27, float %4792)  ; Round_ni(value)
  %4796 = call float @dx.op.unary.f32(i32 27, float %4790)  ; Round_ni(value)
  %4797 = fadd fast float %4793, 5.000000e-01
  %4798 = fadd fast float %4794, 5.000000e-01
  %4799 = fmul fast float %4797, 0x3FFBB67B20000000
  %4800 = fsub fast float %4788, %4799
  %4801 = fsub fast float %4789, %4798
  %4802 = fadd fast float %4795, 1.000000e+00
  %4803 = fmul fast float %4802, 0x3FFBB67B20000000
  %4804 = fsub fast float %4788, %4803
  %4805 = fadd fast float %4789, -1.000000e+00
  %4806 = fsub fast float %4805, %4796
  %4807 = call float @dx.op.dot2.f32(i32 54, float %4800, float %4801, float %4800, float %4801)  ; Dot2(ax,ay,bx,by)
  %4808 = call float @dx.op.dot2.f32(i32 54, float %4804, float %4806, float %4804, float %4806)  ; Dot2(ax,ay,bx,by)
  %4809 = fcmp fast olt float %4807, %4808
  %4810 = fadd fast float %4796, 1.000000e+00
  %4811 = select i1 %4809, float %4800, float %4804
  %4812 = select i1 %4809, float %4801, float %4806
  %4813 = select i1 %4809, float %4797, float %4802
  %4814 = select i1 %4809, float %4798, float %4810
  %4815 = call float @dx.op.unary.f32(i32 6, float %4811)  ; FAbs(value)
  %4816 = call float @dx.op.unary.f32(i32 6, float %4812)  ; FAbs(value)
  %4817 = call float @dx.op.dot2.f32(i32 54, float %4815, float %4816, float 0x3FEBB67B20000000, float 5.000000e-01)  ; Dot2(ax,ay,bx,by)
  %4818 = call float @dx.op.binary.f32(i32 35, float %4817, float %4816)  ; FMax(a,b)
  %4819 = fmul fast float %4813, 0x3F96C16C20000000
  %4820 = fmul fast float %4814, 0x3F96C16C20000000
  %4821 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %4822 = extractvalue %dx.types.CBufRet.f32 %4821, 3
  %4823 = call float @dx.op.unary.f32(i32 22, float %4822)  ; Frc(value)
  %4824 = fmul fast float %4823, 0x3FC99999A0000000
  %4825 = fadd fast float %4824, %4820
  %4826 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %13, float %4819, float %4825, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4827 = extractvalue %dx.types.ResRet.f32 %4826, 0
  %4828 = fsub fast float 0x3FEEB851E0000000, %4780
  %4829 = fmul fast float %4828, 0x3FF0AAAAC0000000
  %4830 = call float @dx.op.unary.f32(i32 7, float %4829)  ; Saturate(value)
  %4831 = fmul fast float %4830, 2.000000e+00
  %4832 = fsub fast float 3.000000e+00, %4831
  %4833 = fmul fast float %4830, %4830
  %4834 = fmul fast float %4833, %4832
  %4835 = fadd fast float %4818, 0xBFE0A3D700000000
  %4836 = fadd fast float %4835, %4834
  %4837 = fmul fast float %4836, -2.000000e+01
  %4838 = call float @dx.op.unary.f32(i32 7, float %4837)  ; Saturate(value)
  %4839 = fmul fast float %4838, 2.000000e+00
  %4840 = fsub fast float 3.000000e+00, %4839
  %4841 = fmul fast float %4835, -2.000000e+01
  %4842 = call float @dx.op.unary.f32(i32 7, float %4841)  ; Saturate(value)
  %4843 = fmul fast float %4842, 2.000000e+00
  %4844 = fsub fast float 3.000000e+00, %4843
  %4845 = fmul fast float %4842, %4842
  %4846 = fmul fast float %4845, %4844
  %4847 = fsub fast float 1.000000e+00, %4846
  %4848 = fmul fast float %4847, 0x3FE51EB860000000
  %4849 = fmul fast float %4818, 0x3FC99999A0000000
  %4850 = fsub fast float 1.000000e+00, %4818
  %4851 = fmul fast float %4838, %4838
  %4852 = fmul fast float %4851, %4818
  %4853 = fmul fast float %4852, %4840
  %4854 = fadd fast float %4853, %4850
  %4855 = fmul fast float %4854, %4827
  %4856 = fsub fast float 0x3FEEB851E0000000, %4787
  %4857 = fmul fast float %4856, 0x3FF0AAAAC0000000
  %4858 = call float @dx.op.unary.f32(i32 7, float %4857)  ; Saturate(value)
  %4859 = fmul fast float %4858, 2.000000e+00
  %4860 = fsub fast float 3.000000e+00, %4859
  %4861 = fmul fast float %4858, %4858
  %4862 = fmul fast float %4861, %4860
  %4863 = fadd fast float %4835, %4862
  %4864 = fmul fast float %4863, -2.000000e+01
  %4865 = call float @dx.op.unary.f32(i32 7, float %4864)  ; Saturate(value)
  %4866 = fmul fast float %4865, 2.000000e+00
  %4867 = fsub fast float 3.000000e+00, %4866
  %4868 = fmul fast float %4865, %4865
  %4869 = fmul fast float %4868, %4818
  %4870 = fmul fast float %4869, %4867
  %4871 = fadd fast float %4870, %4850
  %4872 = fmul fast float %4871, %4827
  %4873 = fadd fast float %4848, %4849
  %4874 = fadd fast float %4873, %4872
  %4875 = fmul fast float %4787, 2.000000e+00
  %4876 = fmul fast float %4875, %4874
  %4877 = fadd fast float %4873, %4855
  %4878 = fmul fast float %4877, %4780
  %4879 = fadd fast float %4878, %4876
  %4880 = fmul fast float %4768, 0x3FD99999A0000000
  %4881 = fmul fast float %4740, 0x3FE3333340000000
  %4882 = fadd fast float %4881, 0x3FE3333340000000
  %4883 = fadd fast float %4882, %4880
  %4884 = fmul fast float %4879, %4883
  %4885 = call float @dx.op.unary.f32(i32 23, float %4884)  ; Log(value)
  %4886 = fmul fast float %4885, 3.000000e+00
  %4887 = call float @dx.op.unary.f32(i32 21, float %4886)  ; Exp(value)
  %4888 = fmul fast float %4887, 0x3FF112D7C0000000
  %4889 = fmul fast float %4887, 0xBFF8A1CB00000000
  %4890 = fmul fast float %4889, %4888
  %4891 = call float @dx.op.unary.f32(i32 21, float %4890)  ; Exp(value)
  %4892 = fmul fast float %4887, 0x3FEDDA5080000000
  %4893 = fmul fast float %4887, 0xBFB16E5400000000
  %4894 = fmul fast float %4887, 0xBFEBAC8600000000
  %4895 = fmul fast float %4892, %4891
  %4896 = fmul fast float %4893, %4891
  %4897 = fmul fast float %4894, %4891
  %4898 = fadd fast float %4895, %4888
  %4899 = fadd fast float %4896, %4888
  %4900 = fadd fast float %4897, %4888
  %4901 = call float @dx.op.unary.f32(i32 20, float %4898)  ; Htan(value)
  %4902 = call float @dx.op.unary.f32(i32 20, float %4899)  ; Htan(value)
  %4903 = call float @dx.op.unary.f32(i32 20, float %4900)  ; Htan(value)
  %4904 = fmul fast float %4901, 5.000000e+00
  %4905 = fmul fast float %4902, 5.000000e+00
  %4906 = fmul fast float %4903, 5.000000e+00
  %4907 = call float @dx.op.unary.f32(i32 7, float %4904)  ; Saturate(value)
  %4908 = call float @dx.op.unary.f32(i32 7, float %4905)  ; Saturate(value)
  %4909 = call float @dx.op.unary.f32(i32 7, float %4906)  ; Saturate(value)
  %4910 = fmul fast float %4902, 3.000000e+00
  %4911 = call float @dx.op.unary.f32(i32 7, float %4910)  ; Saturate(value)
  br label %5165

; <label>:4912                                    ; preds = %612
  br i1 %107, label %4913, label %5165, !dx.controlflow.hints !54

; <label>:4913                                    ; preds = %4912
  %4914 = and i32 %627, 511
  %4915 = mul nuw nsw i32 %4914, 20
  %4916 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %4915, i32 undef)  ; BufferLoad(srv,index,wot)
  %4917 = extractvalue %dx.types.ResRet.i32 %4916, 0
  %4918 = and i32 %4917, 255
  %4919 = uitofp i32 %4918 to float
  %4920 = lshr i32 %4917, 8
  %4921 = and i32 %4920, 255
  %4922 = uitofp i32 %4921 to float
  %4923 = lshr i32 %4917, 16
  %4924 = and i32 %4923, 255
  %4925 = uitofp i32 %4924 to float
  %4926 = lshr i32 %4917, 24
  %4927 = uitofp i32 %4926 to float
  %4928 = fmul fast float %4927, 0x3F70101020000000
  %4929 = fsub fast float 1.000000e+00, %4928
  %4930 = add nuw nsw i32 %4915, 12
  %4931 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %4930, i32 undef)  ; BufferLoad(srv,index,wot)
  %4932 = extractvalue %dx.types.ResRet.i32 %4931, 0
  %4933 = and i32 %4932, 65535
  %4934 = uitofp i32 %4933 to float
  %4935 = fmul fast float %4934, 0x3EF0002000000000
  %4936 = lshr i32 %4932, 16
  %4937 = uitofp i32 %4936 to float
  %4938 = fmul fast float %4937, 0x3EF0002000000000
  %4939 = add nuw nsw i32 %4915, 8
  %4940 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %4939, i32 undef)  ; BufferLoad(srv,index,wot)
  %4941 = extractvalue %dx.types.ResRet.i32 %4940, 0
  %4942 = and i32 %4941, 65535
  %4943 = uitofp i32 %4942 to float
  %4944 = fmul fast float %4943, 0x3EF0002000000000
  %4945 = lshr i32 %4941, 16
  %4946 = uitofp i32 %4945 to float
  %4947 = fmul fast float %4946, 0x3EF0002000000000
  %4948 = fsub fast float %43, %4944
  %4949 = fdiv fast float %4948, %4935
  %4950 = fsub fast float %44, %4947
  %4951 = fdiv fast float %4950, %4938
  %4952 = add nuw nsw i32 %4915, 16
  %4953 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %4952, i32 undef)  ; BufferLoad(srv,index,wot)
  %4954 = extractvalue %dx.types.ResRet.f32 %4953, 0
  %4955 = fdiv fast float 2.400000e+02, %4954
  %4956 = call float @dx.op.unary.f32(i32 7, float %4955)  ; Saturate(value)
  %4957 = fmul fast float %4956, 4.000000e+01
  %4958 = fptoui float %4957 to i32
  %4959 = uitofp i32 %62 to float
  %4960 = uitofp i32 %63 to float
  %4961 = fptoui float %4959 to i32
  %4962 = fptoui float %4960 to i32
  %4963 = lshr i32 %4962, 2
  %4964 = mul i32 %84, %4963
  %4965 = lshr i32 %4961, 3
  %4966 = add i32 %80, %4965
  %4967 = add i32 %4966, %82
  %4968 = add i32 %4967, %4964
  %4969 = shl i32 %4968, 2
  %4970 = shl i32 %4962, 3
  %4971 = and i32 %4970, 24
  %4972 = and i32 %4961, 7
  %4973 = or i32 %4971, %4972
  %4974 = shl i32 1, %4973
  %4975 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %4969, i32 undef)  ; BufferLoad(srv,index,wot)
  %4976 = extractvalue %dx.types.ResRet.i32 %4975, 0
  %4977 = and i32 %4976, %4974
  %4978 = icmp ne i32 %4977, 0
  %4979 = icmp eq i32 %4958, 0
  br i1 %4979, label %5096, label %4980, !dx.controlflow.hints !49

; <label>:4980                                    ; preds = %4913
  %4981 = uitofp i32 %4958 to float
  %4982 = fmul fast float %64, 5.000000e-01
  %4983 = fmul fast float %4982, %4981
  %4984 = fmul fast float %65, 5.000000e-01
  %4985 = fmul fast float %4984, %4981
  %4986 = call float @dx.op.binary.f32(i32 35, float 5.000000e-01, float %4983)  ; FMax(a,b)
  %4987 = call float @dx.op.binary.f32(i32 35, float 5.000000e-01, float %4985)  ; FMax(a,b)
  br label %4988

; <label>:4988                                    ; preds = %5083, %4980
  %4989 = phi float [ 0.000000e+00, %4980 ], [ %5086, %5083 ]
  %4990 = phi i32 [ 0, %4980 ], [ %5087, %5083 ]
  %4991 = fmul fast float %43, 0x3FF280E1E0000000
  %4992 = fmul fast float %44, 0x3FF280E1E0000000
  %4993 = sitofp i32 %4990 to float
  %4994 = fmul fast float %4993, 0x3FB99999A0000000
  %4995 = fadd fast float %4994, %4991
  %4996 = fadd fast float %4994, %4992
  %4997 = fmul fast float %4995, 1.024000e+03
  %4998 = fmul fast float %4996, 1.024000e+03
  %4999 = fadd fast float %4997, -5.120000e+02
  %5000 = fadd fast float %4998, -5.120000e+02
  %5001 = fmul fast float %4995, 0x4081BEDF00000000
  %5002 = fadd fast float %5001, 0xC071BEDF00000000
  %5003 = call float @dx.op.unary.f32(i32 22, float %5002)  ; Frc(value)
  %5004 = fmul fast float %4999, %5003
  %5005 = fadd fast float %5004, %5000
  %5006 = fmul fast float %4996, 0x4073BEBE20000000
  %5007 = fadd fast float %5006, 0xC063BEBE20000000
  %5008 = call float @dx.op.unary.f32(i32 22, float %5007)  ; Frc(value)
  %5009 = fmul fast float %5000, %5008
  %5010 = fadd fast float %5009, %4999
  %5011 = fmul fast float %5005, %5010
  %5012 = call float @dx.op.unary.f32(i32 22, float %5011)  ; Frc(value)
  %5013 = fmul fast float %5012, 2.000000e+00
  %5014 = fadd fast float %5013, -1.000000e+00
  %5015 = fmul fast float %5014, %4986
  %5016 = fmul fast float %43, 0x3FEB681740000000
  %5017 = fmul fast float %44, 0x3FEB681740000000
  %5018 = fmul fast float %4993, 0x3FC99999A0000000
  %5019 = fadd fast float %5018, 1.250000e-01
  %5020 = fadd fast float %5019, %5016
  %5021 = fadd fast float %5019, %5017
  %5022 = fmul fast float %5020, 1.024000e+03
  %5023 = fmul fast float %5021, 1.024000e+03
  %5024 = fadd fast float %5022, -5.120000e+02
  %5025 = fadd fast float %5023, -5.120000e+02
  %5026 = fmul fast float %5020, 0x4081BEDF00000000
  %5027 = fadd fast float %5026, 0xC071BEDF00000000
  %5028 = call float @dx.op.unary.f32(i32 22, float %5027)  ; Frc(value)
  %5029 = fmul fast float %5024, %5028
  %5030 = fadd fast float %5029, %5025
  %5031 = fmul fast float %5021, 0x4073BEBE20000000
  %5032 = fadd fast float %5031, 0xC063BEBE20000000
  %5033 = call float @dx.op.unary.f32(i32 22, float %5032)  ; Frc(value)
  %5034 = fmul fast float %5025, %5033
  %5035 = fadd fast float %5034, %5024
  %5036 = fmul fast float %5030, %5035
  %5037 = call float @dx.op.unary.f32(i32 22, float %5036)  ; Frc(value)
  %5038 = fmul fast float %5037, 2.000000e+00
  %5039 = fadd fast float %5038, -1.000000e+00
  %5040 = fmul fast float %5039, %4987
  %5041 = fptosi float %5015 to i32
  %5042 = sitofp i32 %5041 to float
  %5043 = fadd fast float %5042, %4959
  %5044 = fptosi float %5043 to i32
  %5045 = fptosi float %5040 to i32
  %5046 = sitofp i32 %5045 to float
  %5047 = fadd fast float %5046, %4960
  %5048 = fptosi float %5047 to i32
  %5049 = or i32 %5048, %5044
  %5050 = icmp slt i32 %5049, 0
  %5051 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %5052 = extractvalue %dx.types.CBufRet.f32 %5051, 0
  %5053 = extractvalue %dx.types.CBufRet.f32 %5051, 1
  %5054 = fptosi float %5052 to i32
  %5055 = fptosi float %5053 to i32
  %5056 = icmp sge i32 %5044, %5054
  %5057 = icmp sge i32 %5048, %5055
  %5058 = or i1 %5056, %5057
  %5059 = or i1 %5050, %5058
  br i1 %5059, label %5083, label %5060, !dx.controlflow.hints !46

; <label>:5060                                    ; preds = %4988
  %5061 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %17, i32 51)  ; CBufferLoadLegacy(handle,regIndex)
  %5062 = extractvalue %dx.types.CBufRet.i32 %5061, 1
  %5063 = shl i32 %5062, 2
  %5064 = extractvalue %dx.types.CBufRet.i32 %5061, 3
  %5065 = shl i32 %5064, 1
  %5066 = lshr i32 %5048, 2
  %5067 = extractvalue %dx.types.CBufRet.i32 %5061, 2
  %5068 = mul i32 %5067, %5066
  %5069 = lshr i32 %5044, 3
  %5070 = add i32 %5063, %5069
  %5071 = add i32 %5070, %5065
  %5072 = add i32 %5071, %5068
  %5073 = shl i32 %5072, 2
  %5074 = shl i32 %5048, 3
  %5075 = and i32 %5074, 24
  %5076 = and i32 %5044, 7
  %5077 = or i32 %5075, %5076
  %5078 = shl i32 1, %5077
  %5079 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %5073, i32 undef)  ; BufferLoad(srv,index,wot)
  %5080 = extractvalue %dx.types.ResRet.i32 %5079, 0
  %5081 = and i32 %5080, %5078
  %5082 = icmp ne i32 %5081, 0
  br label %5083

; <label>:5083                                    ; preds = %5060, %4988
  %5084 = phi i1 [ %5082, %5060 ], [ false, %4988 ]
  %5085 = uitofp i1 %5084 to float
  %5086 = fadd fast float %5085, %4989
  %5087 = add nuw nsw i32 %4990, 1
  %5088 = icmp eq i32 %5087, 5
  br i1 %5088, label %5089, label %4988

; <label>:5089                                    ; preds = %5083
  %5090 = uitofp i1 %4978 to float
  %5091 = fmul fast float %5090, 0x3FC99999A0000000
  %5092 = fmul fast float %5091, %5086
  %5093 = fadd fast float %5092, -5.000000e-01
  %5094 = fmul fast float %5093, 2.000000e+00
  %5095 = call float @dx.op.unary.f32(i32 7, float %5094)  ; Saturate(value)
  br label %5096

; <label>:5096                                    ; preds = %5089, %4913
  %5097 = phi float [ %5095, %5089 ], [ 0.000000e+00, %4913 ]
  %5098 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %5099 = extractvalue %dx.types.CBufRet.f32 %5098, 3
  %5100 = fmul fast float %5099, 0x3F9EB851E0000000
  %5101 = fadd fast float %5100, %4951
  %5102 = call float @dx.op.unary.f32(i32 22, float %5101)  ; Frc(value)
  %5103 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %13, float %4949, float %5102, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5104 = extractvalue %dx.types.ResRet.f32 %5103, 3
  %5105 = call float @dx.op.unary.f32(i32 7, float %5097)  ; Saturate(value)
  %5106 = fmul fast float %5104, %4929
  %5107 = fsub fast float %5105, %5106
  %5108 = call float @dx.op.unary.f32(i32 7, float %5107)  ; Saturate(value)
  %5109 = fmul fast float %5104, 1.250000e+00
  %5110 = fsub fast float %5105, %5109
  %5111 = call float @dx.op.unary.f32(i32 7, float %5110)  ; Saturate(value)
  %5112 = fmul fast float %5111, 0x3FD3333340000000
  %5113 = fadd fast float %5112, %5108
  %5114 = fmul fast float %5113, %5113
  %5115 = fmul fast float %5114, %5113
  %5116 = call float @dx.op.unary.f32(i32 7, float %5115)  ; Saturate(value)
  %5117 = fmul fast float %5116, 0x3FEBD70A40000000
  %5118 = fsub fast float 1.000000e+00, %5117
  %5119 = call float @dx.op.unary.f32(i32 7, float %43)  ; Saturate(value)
  %5120 = call float @dx.op.unary.f32(i32 7, float %44)  ; Saturate(value)
  %5121 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %14, float %5119, float %5120, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5122 = extractvalue %dx.types.ResRet.f32 %5121, 0
  %5123 = bitcast float %5122 to i32
  %5124 = lshr i32 %5123, 8
  %5125 = and i32 %5123, 255
  %5126 = and i32 %5124, 255
  %5127 = uitofp i32 %5125 to float
  %5128 = uitofp i32 %5126 to float
  %5129 = fmul fast float %5127, 0x3F80101020000000
  %5130 = fmul fast float %5128, 0x3F80101020000000
  %5131 = fadd fast float %5129, -1.000000e+00
  %5132 = fadd fast float %5130, -1.000000e+00
  %5133 = call float @dx.op.unary.f32(i32 6, float %5131)  ; FAbs(value)
  %5134 = fsub fast float 1.000000e+00, %5133
  %5135 = call float @dx.op.unary.f32(i32 6, float %5132)  ; FAbs(value)
  %5136 = fsub fast float %5134, %5135
  %5137 = fsub fast float -0.000000e+00, %5136
  %5138 = call float @dx.op.binary.f32(i32 35, float %5137, float 0.000000e+00)  ; FMax(a,b)
  %5139 = fcmp fast ogt float %5131, 0.000000e+00
  %5140 = fsub fast float -0.000000e+00, %5138
  %5141 = select i1 %5139, float %5140, float %5138
  %5142 = fadd fast float %5141, %5131
  %5143 = fcmp fast ogt float %5132, 0.000000e+00
  %5144 = select i1 %5143, float %5140, float %5138
  %5145 = fadd fast float %5144, %5132
  %5146 = call float @dx.op.dot3.f32(i32 55, float %5142, float %5145, float %5136, float %5142, float %5145, float %5136)  ; Dot3(ax,ay,az,bx,by,bz)
  %5147 = call float @dx.op.unary.f32(i32 25, float %5146)  ; Rsqrt(value)
  %5148 = fmul fast float %5142, %5147
  %5149 = fmul fast float %5145, %5147
  %5150 = fmul fast float %5147, %5136
  %5151 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 101)  ; CBufferLoadLegacy(handle,regIndex)
  %5152 = extractvalue %dx.types.CBufRet.f32 %5151, 0
  %5153 = extractvalue %dx.types.CBufRet.f32 %5151, 1
  %5154 = extractvalue %dx.types.CBufRet.f32 %5151, 2
  %5155 = call float @dx.op.dot3.f32(i32 55, float %5148, float %5149, float %5150, float %5152, float %5153, float %5154)  ; Dot3(ax,ay,az,bx,by,bz)
  %5156 = fadd fast float %5155, 2.500000e-01
  %5157 = call float @dx.op.unary.f32(i32 6, float %5156)  ; FAbs(value)
  %5158 = fsub fast float 1.000000e+00, %5157
  %5159 = fmul fast float %4919, 0x3F7278DF60000000
  %5160 = fmul fast float %4922, 0x3F7278DF60000000
  %5161 = fmul fast float %4925, 0x3F7278DF60000000
  %5162 = fmul fast float %5159, %5158
  %5163 = fmul fast float %5160, %5158
  %5164 = fmul fast float %5161, %5158
  br label %5165

; <label>:5165                                    ; preds = %5096, %4912, %4600, %4571, %2502, %2491, %2229, %2000, %1764, %1762, %1601, %1487, %864, %861, %847, %845, %612, %607
  %5166 = phi float [ %4907, %4600 ], [ %2235, %2229 ], [ %608, %1601 ], [ %2099, %2000 ], [ %1596, %1487 ], [ %1287, %864 ], [ %608, %861 ], [ %608, %607 ], [ %857, %847 ], [ %741, %845 ], [ %1773, %1764 ], [ %1655, %1762 ], [ %2317, %2491 ], [ %4590, %4571 ], [ 0.000000e+00, %2502 ], [ %5162, %5096 ], [ 0.000000e+00, %4912 ], [ 1.000000e+00, %612 ]
  %5167 = phi float [ %4908, %4600 ], [ %2236, %2229 ], [ %609, %1601 ], [ %2100, %2000 ], [ %1597, %1487 ], [ %1288, %864 ], [ %609, %861 ], [ %609, %607 ], [ %858, %847 ], [ %742, %845 ], [ %1774, %1764 ], [ %1657, %1762 ], [ %2318, %2491 ], [ %4591, %4571 ], [ 0.000000e+00, %2502 ], [ %5163, %5096 ], [ 0.000000e+00, %4912 ], [ 0.000000e+00, %612 ]
  %5168 = phi float [ %4909, %4600 ], [ %2237, %2229 ], [ %610, %1601 ], [ %2101, %2000 ], [ %1598, %1487 ], [ %1289, %864 ], [ %610, %861 ], [ %610, %607 ], [ %859, %847 ], [ %743, %845 ], [ %1775, %1764 ], [ %1659, %1762 ], [ %2319, %2491 ], [ %4592, %4571 ], [ 0.000000e+00, %2502 ], [ %5164, %5096 ], [ 0.000000e+00, %4912 ], [ 0.000000e+00, %612 ]
  %5169 = phi float [ %4911, %4600 ], [ %2238, %2229 ], [ %611, %1601 ], [ %2103, %2000 ], [ %1600, %1487 ], [ %1290, %864 ], [ %611, %861 ], [ %611, %607 ], [ %860, %847 ], [ %744, %845 ], [ %1776, %1764 ], [ %1661, %1762 ], [ %2501, %2491 ], [ %4599, %4571 ], [ 0.000000e+00, %2502 ], [ %5118, %5096 ], [ 0.000000e+00, %4912 ], [ 1.000000e+00, %612 ]
  %5170 = fmul fast float %5169, %5166
  %5171 = fmul fast float %5169, %5167
  %5172 = fmul fast float %5169, %5168
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %34, i32 %35, i32 undef, float %5170, float %5171, float %5172, float %5169, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %5173 = fcmp fast ogt float %5169, 0.000000e+00
  %5174 = and i1 %5173, %108
  %5175 = zext i1 %5174 to i32
  %5176 = mul i32 %18, 8
  %5177 = add i32 %19, %5176
  %5178 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?gsHudOutlineMask1@@3PAY07$$CAIA.1dim", i32 0, i32 %5177
  store i32 %5175, i32 addrspace(3)* %5178, align 4, !tbaa !55
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %5179 = or i32 %19, %18
  %5180 = icmp ult i32 %5179, 4
  br i1 %5180, label %5181, label %5205, !dx.controlflow.hints !59

; <label>:5181                                    ; preds = %5165
  %5182 = shl i32 %18, 1
  %5183 = shl i32 %19, 1
  %5184 = mul i32 %5182, 8
  %5185 = add i32 %5183, %5184
  %5186 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?gsHudOutlineMask1@@3PAY07$$CAIA.1dim", i32 0, i32 %5185
  %5187 = load i32, i32 addrspace(3)* %5186, align 4, !tbaa !55
  %5188 = or i32 %5183, 1
  %5189 = mul i32 %5182, 8
  %5190 = add i32 %5188, %5189
  %5191 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?gsHudOutlineMask1@@3PAY07$$CAIA.1dim", i32 0, i32 %5190
  %5192 = load i32, i32 addrspace(3)* %5191, align 4, !tbaa !55
  %5193 = or i32 %5182, 1
  %5194 = mul i32 %5193, 8
  %5195 = add i32 %5188, %5194
  %5196 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?gsHudOutlineMask1@@3PAY07$$CAIA.1dim", i32 0, i32 %5195
  %5197 = load i32, i32 addrspace(3)* %5196, align 4, !tbaa !55
  %5198 = mul i32 %5193, 8
  %5199 = add i32 %5183, %5198
  %5200 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?gsHudOutlineMask1@@3PAY07$$CAIA.1dim", i32 0, i32 %5199
  %5201 = load i32, i32 addrspace(3)* %5200, align 4, !tbaa !55
  %5202 = or i32 %5192, %5187
  %5203 = or i32 %5202, %5197
  %5204 = or i32 %5203, %5201
  store i32 %5204, i32 addrspace(3)* %5178, align 4, !tbaa !55
  br label %5205

; <label>:5205                                    ; preds = %5181, %5165
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %5206 = icmp ult i32 %5179, 2
  br i1 %5206, label %5207, label %5237, !dx.controlflow.hints !60

; <label>:5207                                    ; preds = %5205
  %5208 = shl i32 %18, 1
  %5209 = shl i32 %19, 1
  %5210 = mul i32 %5208, 8
  %5211 = add i32 %5209, %5210
  %5212 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?gsHudOutlineMask1@@3PAY07$$CAIA.1dim", i32 0, i32 %5211
  %5213 = load i32, i32 addrspace(3)* %5212, align 4, !tbaa !55
  %5214 = or i32 %5209, 1
  %5215 = mul i32 %5208, 8
  %5216 = add i32 %5214, %5215
  %5217 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?gsHudOutlineMask1@@3PAY07$$CAIA.1dim", i32 0, i32 %5216
  %5218 = load i32, i32 addrspace(3)* %5217, align 4, !tbaa !55
  %5219 = or i32 %5208, 1
  %5220 = mul i32 %5219, 8
  %5221 = add i32 %5214, %5220
  %5222 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?gsHudOutlineMask1@@3PAY07$$CAIA.1dim", i32 0, i32 %5221
  %5223 = load i32, i32 addrspace(3)* %5222, align 4, !tbaa !55
  %5224 = mul i32 %5219, 8
  %5225 = add i32 %5209, %5224
  %5226 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?gsHudOutlineMask1@@3PAY07$$CAIA.1dim", i32 0, i32 %5225
  %5227 = load i32, i32 addrspace(3)* %5226, align 4, !tbaa !55
  %5228 = or i32 %5218, %5213
  %5229 = or i32 %5228, %5223
  %5230 = or i32 %5229, %5227
  %5231 = icmp ne i32 %5230, 0
  %5232 = select i1 %5231, float 1.000000e+00, float 0.000000e+00
  %5233 = lshr i32 %34, 2
  %5234 = lshr i32 %35, 2
  %5235 = add i32 %5233, %18
  %5236 = add i32 %5234, %19
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %5235, i32 %5236, i32 undef, float %5232, float %5232, float %5232, float %5232, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %5237

; <label>:5237                                    ; preds = %5207, %5205, %0
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
!43 = distinct !{!43, !"dx.controlflow.hints", i32 2}
!44 = distinct !{!44, !"dx.controlflow.hints", i32 1}
!45 = distinct !{!45, !"dx.controlflow.hints", i32 1}
!46 = distinct !{!46, !"dx.controlflow.hints", i32 2}
!47 = distinct !{!47, !"dx.controlflow.hints", i32 1}
!48 = distinct !{!48, !"dx.controlflow.hints", i32 2}
!49 = distinct !{!49, !"dx.controlflow.hints", i32 1}
!50 = distinct !{!50, !"dx.controlflow.hints", i32 2}
!51 = distinct !{!51, !"dx.controlflow.hints", i32 2}
!52 = distinct !{!52, !"dx.controlflow.hints", i32 1}
!53 = distinct !{!53, !"dx.controlflow.hints", i32 2}
!54 = distinct !{!54, !"dx.controlflow.hints", i32 2}
!55 = !{!56, !56, i64 0}
!56 = !{!"int", !57, i64 0}
!57 = !{!"omnipotent char", !58, i64 0}
!58 = !{!"Simple C/C++ TBAA"}
!59 = distinct !{!59, !"dx.controlflow.hints", i32 2}
!60 = distinct !{!60, !"dx.controlflow.hints", i32 2}

