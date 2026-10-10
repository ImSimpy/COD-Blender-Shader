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
; shader hash: e895fde8865b060f8e8c15c01aa199b5
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
  br i1 %26, label %27, label %5547, !dx.controlflow.hints !32

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
  %82 = lshr i32 %63, 2
  %83 = extractvalue %dx.types.CBufRet.i32 %78, 2
  %84 = mul i32 %83, %82
  %85 = lshr i32 %62, 3
  %86 = add i32 %81, %85
  %87 = add i32 %86, %80
  %88 = add i32 %87, %84
  %89 = shl i32 %88, 2
  %90 = shl i32 %63, 3
  %91 = and i32 %90, 24
  %92 = and i32 %62, 7
  %93 = or i32 %91, %92
  %94 = shl i32 1, %93
  %95 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %89, i32 undef)  ; BufferLoad(srv,index,wot)
  %96 = extractvalue %dx.types.ResRet.i32 %95, 0
  %97 = and i32 %96, %94
  %98 = icmp ne i32 %97, 0
  %99 = shl i32 %81, 1
  %100 = add i32 %80, %85
  %101 = add i32 %100, %99
  %102 = add i32 %101, %84
  %103 = shl i32 %102, 2
  %104 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %103, i32 undef)  ; BufferLoad(srv,index,wot)
  %105 = extractvalue %dx.types.ResRet.i32 %104, 0
  %106 = and i32 %105, %94
  %107 = icmp eq i32 %106, 0
  %108 = mul i32 %81, 3
  %109 = add i32 %100, %108
  %110 = add i32 %109, %84
  %111 = shl i32 %110, 2
  %112 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %111, i32 undef)  ; BufferLoad(srv,index,wot)
  %113 = extractvalue %dx.types.ResRet.i32 %112, 0
  %114 = and i32 %113, %94
  %115 = icmp ne i32 %114, 0
  %116 = xor i1 %115, true
  %117 = icmp ugt i32 %29, 268435455
  br i1 %117, label %118, label %615, !dx.controlflow.hints !33

; <label>:118                                     ; preds = %27
  %119 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %9, i32 0, i32 %34, i32 %35, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %120 = extractvalue %dx.types.ResRet.f32 %119, 0
  %121 = fcmp fast ogt float %120, -1.000000e+00
  %122 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %123 = extractvalue %dx.types.CBufRet.f32 %122, 1
  %124 = select i1 %121, float %123, float 1.000000e+00
  %125 = fadd fast float %120, 1.000000e+00
  %126 = fmul fast float %124, %125
  %127 = call float @dx.op.unary.f32(i32 6, float %126)  ; FAbs(value)
  %128 = extractvalue %dx.types.CBufRet.f32 %122, 3
  %129 = fcmp ult float %127, %128
  %130 = fcmp uge float %120, -1.000000e+00
  %131 = and i1 %130, %129
  br i1 %131, label %132, label %615, !dx.controlflow.hints !34

; <label>:132                                     ; preds = %118
  %133 = fmul fast float %43, 2.000000e+00
  %134 = fmul fast float %44, 2.000000e+00
  %135 = fsub fast float 1.000000e+00, %133
  %136 = fsub fast float 1.000000e+00, %134
  %137 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %138 = extractvalue %dx.types.CBufRet.f32 %137, 0
  %139 = extractvalue %dx.types.CBufRet.f32 %137, 1
  %140 = extractvalue %dx.types.CBufRet.f32 %137, 2
  %141 = fmul fast float %138, %135
  %142 = fmul fast float %139, %135
  %143 = fmul fast float %140, %135
  %144 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %145 = extractvalue %dx.types.CBufRet.f32 %144, 0
  %146 = extractvalue %dx.types.CBufRet.f32 %144, 1
  %147 = extractvalue %dx.types.CBufRet.f32 %144, 2
  %148 = fmul fast float %145, %136
  %149 = fmul fast float %146, %136
  %150 = fmul fast float %147, %136
  %151 = fadd fast float %148, %141
  %152 = fadd fast float %149, %142
  %153 = fadd fast float %150, %143
  %154 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %155 = extractvalue %dx.types.CBufRet.f32 %154, 0
  %156 = extractvalue %dx.types.CBufRet.f32 %154, 1
  %157 = extractvalue %dx.types.CBufRet.f32 %154, 2
  %158 = fadd fast float %151, %155
  %159 = fadd fast float %152, %156
  %160 = fadd fast float %153, %157
  %161 = fmul fast float %158, %158
  %162 = fmul fast float %159, %159
  %163 = fadd fast float %161, %162
  %164 = fmul fast float %160, %160
  %165 = fadd fast float %163, %164
  %166 = call float @dx.op.unary.f32(i32 24, float %165)  ; Sqrt(value)
  %167 = fdiv fast float 1.000000e+00, %166
  %168 = fmul fast float %158, %167
  %169 = fmul fast float %159, %167
  %170 = fmul fast float %160, %167
  %171 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %172 = extractvalue %dx.types.CBufRet.f32 %171, 0
  %173 = extractvalue %dx.types.CBufRet.f32 %171, 1
  %174 = extractvalue %dx.types.CBufRet.f32 %171, 2
  %175 = fmul fast float %172, 9.687500e-01
  %176 = fmul fast float %173, 9.687500e-01
  %177 = fmul fast float %174, 9.687500e-01
  %178 = fadd fast float %175, 1.562500e-02
  %179 = fadd fast float %176, 1.562500e-02
  %180 = fadd fast float %177, 1.562500e-02
  %181 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %13, float %178, float %179, float %180, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %182 = extractvalue %dx.types.ResRet.f32 %181, 0
  %183 = extractvalue %dx.types.ResRet.f32 %181, 1
  %184 = extractvalue %dx.types.ResRet.f32 %181, 2
  %185 = fmul fast float %166, %127
  %186 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %17, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %187 = extractvalue %dx.types.CBufRet.i32 %186, 0
  %188 = icmp eq i32 %187, 0
  br i1 %188, label %398, label %189

; <label>:189                                     ; preds = %132
  br label %190

; <label>:190                                     ; preds = %391, %189
  %191 = phi float [ %392, %391 ], [ 0.000000e+00, %189 ]
  %192 = phi i32 [ %393, %391 ], [ 0, %189 ]
  %193 = add i32 %192, 171
  %194 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 %193)  ; CBufferLoadLegacy(handle,regIndex)
  %195 = extractvalue %dx.types.CBufRet.f32 %194, 2
  %196 = extractvalue %dx.types.CBufRet.f32 %194, 0
  %197 = extractvalue %dx.types.CBufRet.f32 %194, 1
  %198 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %199 = extractvalue %dx.types.CBufRet.f32 %198, 0
  %200 = extractvalue %dx.types.CBufRet.f32 %198, 1
  %201 = fsub fast float %196, %199
  %202 = fsub fast float %197, %200
  %203 = fsub fast float -0.000000e+00, %201
  %204 = fsub fast float -0.000000e+00, %202
  %205 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %168, float %169, float %170)  ; Dot3(ax,ay,az,bx,by,bz)
  %206 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %203, float %204, float 0.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %207 = fmul fast float %205, %205
  %208 = fsub fast float 1.000000e+00, %207
  %209 = call float @dx.op.dot3.f32(i32 55, float %203, float %204, float 0.000000e+00, float %168, float %169, float %170)  ; Dot3(ax,ay,az,bx,by,bz)
  %210 = fmul fast float %206, %205
  %211 = fsub fast float %209, %210
  %212 = call float @dx.op.dot3.f32(i32 55, float %203, float %204, float 0.000000e+00, float %203, float %204, float 0.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %213 = fmul fast float %206, %206
  %214 = fmul fast float %195, %195
  %215 = fsub fast float -0.000000e+00, %214
  %216 = fsub fast float %215, %213
  %217 = fadd fast float %216, %212
  %218 = fmul fast float %211, %211
  %219 = fmul fast float %217, %208
  %220 = fsub fast float %218, %219
  %221 = fcmp fast ult float %220, 0.000000e+00
  br i1 %221, label %391, label %222, !dx.controlflow.hints !35

; <label>:222                                     ; preds = %190
  %223 = call float @dx.op.unary.f32(i32 24, float %220)  ; Sqrt(value)
  %224 = fsub fast float -0.000000e+00, %211
  %225 = fsub fast float %224, %223
  %226 = fsub fast float %223, %211
  %227 = fdiv fast float %225, %208
  %228 = fdiv fast float %226, %208
  %229 = fcmp fast ole float %227, 0.000000e+00
  %230 = fcmp fast ole float %228, 0.000000e+00
  %231 = and i1 %229, %230
  br i1 %231, label %391, label %232, !dx.controlflow.hints !36

; <label>:232                                     ; preds = %222
  %233 = fmul fast float %227, %168
  %234 = fmul fast float %227, %169
  %235 = fmul fast float %227, %170
  %236 = fmul fast float %228, %168
  %237 = fmul fast float %228, %169
  %238 = fmul fast float %228, %170
  %239 = zext i1 %229 to i32
  %240 = zext i1 %230 to i32
  %241 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %17, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %242 = extractvalue %dx.types.CBufRet.i32 %241, 0
  %243 = icmp eq i32 %242, 0
  br i1 %243, label %288, label %244

; <label>:244                                     ; preds = %232
  br label %245

; <label>:245                                     ; preds = %276, %244
  %246 = phi i32 [ %277, %276 ], [ %239, %244 ]
  %247 = phi i32 [ %278, %276 ], [ %240, %244 ]
  %248 = phi i32 [ %279, %276 ], [ 0, %244 ]
  %249 = icmp eq i32 %192, %248
  br i1 %249, label %276, label %250, !dx.controlflow.hints !37

; <label>:250                                     ; preds = %245
  %251 = add i32 %248, 171
  %252 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 %251)  ; CBufferLoadLegacy(handle,regIndex)
  %253 = extractvalue %dx.types.CBufRet.f32 %252, 2
  %254 = extractvalue %dx.types.CBufRet.f32 %252, 0
  %255 = extractvalue %dx.types.CBufRet.f32 %252, 1
  %256 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %257 = extractvalue %dx.types.CBufRet.f32 %256, 0
  %258 = extractvalue %dx.types.CBufRet.f32 %256, 1
  %259 = fsub fast float %254, %257
  %260 = fsub fast float %255, %258
  %261 = fsub fast float %259, %233
  %262 = fsub fast float %260, %234
  %263 = call float @dx.op.dot2.f32(i32 54, float %261, float %262, float %261, float %262)  ; Dot2(ax,ay,bx,by)
  %264 = fsub fast float %259, %236
  %265 = fsub fast float %260, %237
  %266 = call float @dx.op.dot2.f32(i32 54, float %264, float %265, float %264, float %265)  ; Dot2(ax,ay,bx,by)
  %267 = fmul fast float %253, %253
  %268 = fcmp fast olt float %263, %267
  %269 = fcmp fast olt float %266, %267
  %270 = icmp ne i32 %246, 0
  %271 = or i1 %270, %268
  %272 = zext i1 %271 to i32
  %273 = icmp ne i32 %247, 0
  %274 = or i1 %273, %269
  %275 = zext i1 %274 to i32
  br label %276

; <label>:276                                     ; preds = %250, %245
  %277 = phi i32 [ %246, %245 ], [ %272, %250 ]
  %278 = phi i32 [ %247, %245 ], [ %275, %250 ]
  %279 = add nuw nsw i32 %248, 1
  %280 = icmp eq i32 %277, 0
  %281 = icmp eq i32 %278, 0
  %282 = or i1 %280, %281
  %283 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %17, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %284 = extractvalue %dx.types.CBufRet.i32 %283, 0
  %285 = icmp ult i32 %279, %284
  %286 = and i1 %282, %285
  br i1 %286, label %245, label %287

; <label>:287                                     ; preds = %276
  br label %288

; <label>:288                                     ; preds = %287, %232
  %289 = phi i32 [ %239, %232 ], [ %277, %287 ]
  %290 = phi i32 [ %240, %232 ], [ %278, %287 ]
  br label %291

; <label>:291                                     ; preds = %291, %288
  %292 = phi i32 [ %327, %291 ], [ %239, %288 ]
  %293 = phi i32 [ %337, %291 ], [ %240, %288 ]
  %294 = phi i32 [ %338, %291 ], [ 0, %288 ]
  %295 = add nuw nsw i32 %294, 191
  %296 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 %295)  ; CBufferLoadLegacy(handle,regIndex)
  %297 = extractvalue %dx.types.CBufRet.f32 %296, 0
  %298 = extractvalue %dx.types.CBufRet.f32 %296, 1
  %299 = extractvalue %dx.types.CBufRet.f32 %296, 2
  %300 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %301 = extractvalue %dx.types.CBufRet.f32 %300, 0
  %302 = extractvalue %dx.types.CBufRet.f32 %300, 1
  %303 = extractvalue %dx.types.CBufRet.f32 %300, 2
  %304 = fsub fast float %297, %301
  %305 = fsub fast float %298, %302
  %306 = fsub fast float %299, %303
  %307 = add nuw nsw i32 %294, 195
  %308 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 %307)  ; CBufferLoadLegacy(handle,regIndex)
  %309 = extractvalue %dx.types.CBufRet.f32 %308, 0
  %310 = extractvalue %dx.types.CBufRet.f32 %308, 1
  %311 = extractvalue %dx.types.CBufRet.f32 %308, 2
  %312 = fsub fast float %304, %233
  %313 = fsub fast float %305, %234
  %314 = fsub fast float %306, %235
  %315 = fsub fast float %304, %236
  %316 = fsub fast float %305, %237
  %317 = fsub fast float %306, %238
  %318 = call float @dx.op.unary.f32(i32 6, float %312)  ; FAbs(value)
  %319 = fcmp fast olt float %318, %309
  %320 = call float @dx.op.unary.f32(i32 6, float %313)  ; FAbs(value)
  %321 = fcmp fast olt float %320, %310
  %322 = and i1 %319, %321
  %323 = call float @dx.op.unary.f32(i32 6, float %314)  ; FAbs(value)
  %324 = fcmp fast olt float %323, %311
  %325 = and i1 %322, %324
  %326 = zext i1 %325 to i32
  %327 = or i32 %326, %292
  %328 = call float @dx.op.unary.f32(i32 6, float %315)  ; FAbs(value)
  %329 = fcmp fast olt float %328, %309
  %330 = call float @dx.op.unary.f32(i32 6, float %316)  ; FAbs(value)
  %331 = fcmp fast olt float %330, %310
  %332 = and i1 %329, %331
  %333 = call float @dx.op.unary.f32(i32 6, float %317)  ; FAbs(value)
  %334 = fcmp fast olt float %333, %311
  %335 = and i1 %332, %334
  %336 = zext i1 %335 to i32
  %337 = or i32 %336, %293
  %338 = add nuw nsw i32 %294, 1
  %339 = icmp eq i32 %327, 0
  %340 = icmp eq i32 %337, 0
  %341 = or i1 %339, %340
  %342 = icmp slt i32 %338, 4
  %343 = and i1 %342, %341
  br i1 %343, label %291, label %344

; <label>:344                                     ; preds = %291
  %345 = or i32 %327, %289
  %346 = icmp eq i32 %345, 0
  %347 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %348 = extractvalue %dx.types.CBufRet.f32 %347, 3
  %349 = fcmp fast ogt float %227, 0.000000e+00
  br i1 %349, label %350, label %365, !dx.controlflow.hints !38

; <label>:350                                     ; preds = %344
  %351 = fsub fast float %185, %227
  %352 = fcmp fast ole float %227, %185
  %353 = fcmp fast ole float %351, %348
  %354 = and i1 %352, %353
  %355 = select i1 %354, float 1.000000e+00, float 0.000000e+00
  %356 = fmul fast float %348, -1.500000e+00
  %357 = fsub fast float %351, %348
  %358 = fdiv fast float %357, %356
  %359 = call float @dx.op.unary.f32(i32 7, float %358)  ; Saturate(value)
  %360 = fmul fast float %359, 2.000000e+00
  %361 = fsub fast float 3.000000e+00, %360
  %362 = fmul fast float %359, %359
  %363 = fmul fast float %362, %355
  %364 = fmul fast float %363, %361
  br label %365

; <label>:365                                     ; preds = %350, %344
  %366 = phi float [ %364, %350 ], [ 0.000000e+00, %344 ]
  %367 = select i1 %346, float %366, float 0.000000e+00
  %368 = fadd fast float %367, %191
  %369 = or i32 %337, %290
  %370 = icmp eq i32 %369, 0
  %371 = fcmp fast ogt float %228, 0.000000e+00
  br i1 %371, label %372, label %387, !dx.controlflow.hints !38

; <label>:372                                     ; preds = %365
  %373 = fsub fast float %185, %228
  %374 = fcmp fast ole float %228, %185
  %375 = fcmp fast ole float %373, %348
  %376 = and i1 %374, %375
  %377 = select i1 %376, float 1.000000e+00, float 0.000000e+00
  %378 = fmul fast float %348, -1.500000e+00
  %379 = fsub fast float %373, %348
  %380 = fdiv fast float %379, %378
  %381 = call float @dx.op.unary.f32(i32 7, float %380)  ; Saturate(value)
  %382 = fmul fast float %381, 2.000000e+00
  %383 = fsub fast float 3.000000e+00, %382
  %384 = fmul fast float %381, %381
  %385 = fmul fast float %384, %377
  %386 = fmul fast float %385, %383
  br label %387

; <label>:387                                     ; preds = %372, %365
  %388 = phi float [ %386, %372 ], [ 0.000000e+00, %365 ]
  %389 = select i1 %370, float %388, float 0.000000e+00
  %390 = fadd fast float %368, %389
  br label %391

; <label>:391                                     ; preds = %387, %222, %190
  %392 = phi float [ %191, %222 ], [ %390, %387 ], [ %191, %190 ]
  %393 = add nuw nsw i32 %192, 1
  %394 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %17, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %395 = extractvalue %dx.types.CBufRet.i32 %394, 0
  %396 = icmp ult i32 %393, %395
  br i1 %396, label %190, label %397

; <label>:397                                     ; preds = %391
  br label %398

; <label>:398                                     ; preds = %397, %132
  %399 = phi float [ 0.000000e+00, %132 ], [ %392, %397 ]
  br label %400

; <label>:400                                     ; preds = %610, %398
  %401 = phi float [ %611, %610 ], [ %399, %398 ]
  %402 = phi i32 [ %612, %610 ], [ 0, %398 ]
  %403 = add nuw nsw i32 %402, 191
  %404 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 %403)  ; CBufferLoadLegacy(handle,regIndex)
  %405 = extractvalue %dx.types.CBufRet.f32 %404, 0
  %406 = extractvalue %dx.types.CBufRet.f32 %404, 1
  %407 = extractvalue %dx.types.CBufRet.f32 %404, 2
  %408 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %409 = extractvalue %dx.types.CBufRet.f32 %408, 0
  %410 = extractvalue %dx.types.CBufRet.f32 %408, 1
  %411 = extractvalue %dx.types.CBufRet.f32 %408, 2
  %412 = fsub fast float %405, %409
  %413 = fsub fast float %406, %410
  %414 = fsub fast float %407, %411
  %415 = add nuw nsw i32 %402, 195
  %416 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 %415)  ; CBufferLoadLegacy(handle,regIndex)
  %417 = extractvalue %dx.types.CBufRet.f32 %416, 0
  %418 = extractvalue %dx.types.CBufRet.f32 %416, 1
  %419 = extractvalue %dx.types.CBufRet.f32 %416, 2
  %420 = fdiv fast float 1.000000e+00, %168
  %421 = fdiv fast float 1.000000e+00, %169
  %422 = fdiv fast float 1.000000e+00, %170
  %423 = fadd fast float %412, %417
  %424 = fadd fast float %413, %418
  %425 = fadd fast float %414, %419
  %426 = fsub fast float %412, %417
  %427 = fsub fast float %413, %418
  %428 = fsub fast float %414, %419
  %429 = fmul fast float %426, %420
  %430 = fmul fast float %423, %420
  %431 = call float @dx.op.binary.f32(i32 36, float %429, float %430)  ; FMin(a,b)
  %432 = call float @dx.op.binary.f32(i32 35, float %429, float %430)  ; FMax(a,b)
  %433 = fmul fast float %427, %421
  %434 = fmul fast float %424, %421
  %435 = call float @dx.op.binary.f32(i32 36, float %433, float %434)  ; FMin(a,b)
  %436 = call float @dx.op.binary.f32(i32 35, float %431, float %435)  ; FMax(a,b)
  %437 = call float @dx.op.binary.f32(i32 35, float %433, float %434)  ; FMax(a,b)
  %438 = call float @dx.op.binary.f32(i32 36, float %432, float %437)  ; FMin(a,b)
  %439 = fmul fast float %422, %428
  %440 = fmul fast float %422, %425
  %441 = call float @dx.op.binary.f32(i32 36, float %439, float %440)  ; FMin(a,b)
  %442 = call float @dx.op.binary.f32(i32 35, float %436, float %441)  ; FMax(a,b)
  %443 = call float @dx.op.binary.f32(i32 35, float %439, float %440)  ; FMax(a,b)
  %444 = call float @dx.op.binary.f32(i32 36, float %438, float %443)  ; FMin(a,b)
  %445 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %442)  ; FMax(a,b)
  %446 = fcmp fast ult float %444, %445
  br i1 %446, label %610, label %447, !dx.controlflow.hints !39

; <label>:447                                     ; preds = %400
  %448 = fcmp fast ole float %442, 0.000000e+00
  %449 = fcmp fast ole float %444, 0.000000e+00
  %450 = and i1 %448, %449
  br i1 %450, label %610, label %451, !dx.controlflow.hints !40

; <label>:451                                     ; preds = %447
  %452 = fmul fast float %442, %168
  %453 = fmul fast float %442, %169
  %454 = fmul fast float %442, %170
  %455 = fmul fast float %444, %168
  %456 = fmul fast float %444, %169
  %457 = fmul fast float %444, %170
  %458 = zext i1 %448 to i32
  %459 = zext i1 %449 to i32
  %460 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %17, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %461 = extractvalue %dx.types.CBufRet.i32 %460, 0
  %462 = icmp eq i32 %461, 0
  br i1 %462, label %500, label %463

; <label>:463                                     ; preds = %451
  br label %464

; <label>:464                                     ; preds = %464, %463
  %465 = phi i32 [ %488, %464 ], [ %458, %463 ]
  %466 = phi i32 [ %490, %464 ], [ %459, %463 ]
  %467 = phi i32 [ %491, %464 ], [ 0, %463 ]
  %468 = add i32 %467, 171
  %469 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 %468)  ; CBufferLoadLegacy(handle,regIndex)
  %470 = extractvalue %dx.types.CBufRet.f32 %469, 2
  %471 = extractvalue %dx.types.CBufRet.f32 %469, 0
  %472 = extractvalue %dx.types.CBufRet.f32 %469, 1
  %473 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %474 = extractvalue %dx.types.CBufRet.f32 %473, 0
  %475 = extractvalue %dx.types.CBufRet.f32 %473, 1
  %476 = fsub fast float %471, %474
  %477 = fsub fast float %472, %475
  %478 = fsub fast float %476, %452
  %479 = fsub fast float %477, %453
  %480 = call float @dx.op.dot2.f32(i32 54, float %478, float %479, float %478, float %479)  ; Dot2(ax,ay,bx,by)
  %481 = fsub fast float %476, %455
  %482 = fsub fast float %477, %456
  %483 = call float @dx.op.dot2.f32(i32 54, float %481, float %482, float %481, float %482)  ; Dot2(ax,ay,bx,by)
  %484 = fmul fast float %470, %470
  %485 = fcmp fast olt float %480, %484
  %486 = fcmp fast olt float %483, %484
  %487 = zext i1 %485 to i32
  %488 = or i32 %487, %465
  %489 = zext i1 %486 to i32
  %490 = or i32 %489, %466
  %491 = add nuw nsw i32 %467, 1
  %492 = icmp eq i32 %488, 0
  %493 = icmp eq i32 %490, 0
  %494 = or i1 %492, %493
  %495 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %17, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %496 = extractvalue %dx.types.CBufRet.i32 %495, 0
  %497 = icmp ult i32 %491, %496
  %498 = and i1 %497, %494
  br i1 %498, label %464, label %499

; <label>:499                                     ; preds = %464
  br label %500

; <label>:500                                     ; preds = %499, %451
  %501 = phi i32 [ %458, %451 ], [ %488, %499 ]
  %502 = phi i32 [ %459, %451 ], [ %490, %499 ]
  br label %503

; <label>:503                                     ; preds = %554, %500
  %504 = phi i32 [ %555, %554 ], [ %458, %500 ]
  %505 = phi i32 [ %556, %554 ], [ %459, %500 ]
  %506 = phi i32 [ %557, %554 ], [ 0, %500 ]
  %507 = icmp eq i32 %402, %506
  br i1 %507, label %554, label %508, !dx.controlflow.hints !41

; <label>:508                                     ; preds = %503
  %509 = add nuw nsw i32 %506, 191
  %510 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 %509)  ; CBufferLoadLegacy(handle,regIndex)
  %511 = extractvalue %dx.types.CBufRet.f32 %510, 0
  %512 = extractvalue %dx.types.CBufRet.f32 %510, 1
  %513 = extractvalue %dx.types.CBufRet.f32 %510, 2
  %514 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %515 = extractvalue %dx.types.CBufRet.f32 %514, 0
  %516 = extractvalue %dx.types.CBufRet.f32 %514, 1
  %517 = extractvalue %dx.types.CBufRet.f32 %514, 2
  %518 = fsub fast float %511, %515
  %519 = fsub fast float %512, %516
  %520 = fsub fast float %513, %517
  %521 = add nuw nsw i32 %506, 195
  %522 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 %521)  ; CBufferLoadLegacy(handle,regIndex)
  %523 = extractvalue %dx.types.CBufRet.f32 %522, 0
  %524 = extractvalue %dx.types.CBufRet.f32 %522, 1
  %525 = extractvalue %dx.types.CBufRet.f32 %522, 2
  %526 = fsub fast float %518, %452
  %527 = fsub fast float %519, %453
  %528 = fsub fast float %520, %454
  %529 = fsub fast float %518, %455
  %530 = fsub fast float %519, %456
  %531 = fsub fast float %520, %457
  %532 = call float @dx.op.unary.f32(i32 6, float %526)  ; FAbs(value)
  %533 = fcmp fast ole float %532, %523
  %534 = call float @dx.op.unary.f32(i32 6, float %527)  ; FAbs(value)
  %535 = fcmp fast ole float %534, %524
  %536 = and i1 %533, %535
  %537 = call float @dx.op.unary.f32(i32 6, float %528)  ; FAbs(value)
  %538 = fcmp fast ole float %537, %525
  %539 = and i1 %536, %538
  %540 = icmp ne i32 %504, 0
  %541 = or i1 %540, %539
  %542 = zext i1 %541 to i32
  %543 = call float @dx.op.unary.f32(i32 6, float %529)  ; FAbs(value)
  %544 = fcmp fast ole float %543, %523
  %545 = call float @dx.op.unary.f32(i32 6, float %530)  ; FAbs(value)
  %546 = fcmp fast ole float %545, %524
  %547 = and i1 %544, %546
  %548 = call float @dx.op.unary.f32(i32 6, float %531)  ; FAbs(value)
  %549 = fcmp fast ole float %548, %525
  %550 = and i1 %547, %549
  %551 = icmp ne i32 %505, 0
  %552 = or i1 %551, %550
  %553 = zext i1 %552 to i32
  br label %554

; <label>:554                                     ; preds = %508, %503
  %555 = phi i32 [ %504, %503 ], [ %542, %508 ]
  %556 = phi i32 [ %505, %503 ], [ %553, %508 ]
  %557 = add nuw nsw i32 %506, 1
  %558 = icmp eq i32 %555, 0
  %559 = icmp eq i32 %556, 0
  %560 = or i1 %558, %559
  %561 = icmp slt i32 %557, 4
  %562 = and i1 %561, %560
  br i1 %562, label %503, label %563

; <label>:563                                     ; preds = %554
  %564 = or i32 %555, %501
  %565 = icmp eq i32 %564, 0
  %566 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %567 = extractvalue %dx.types.CBufRet.f32 %566, 3
  %568 = fcmp fast ogt float %442, 0.000000e+00
  br i1 %568, label %569, label %584, !dx.controlflow.hints !38

; <label>:569                                     ; preds = %563
  %570 = fsub fast float %185, %442
  %571 = fcmp fast ole float %442, %185
  %572 = fcmp fast ole float %570, %567
  %573 = and i1 %571, %572
  %574 = select i1 %573, float 1.000000e+00, float 0.000000e+00
  %575 = fmul fast float %567, -1.500000e+00
  %576 = fsub fast float %570, %567
  %577 = fdiv fast float %576, %575
  %578 = call float @dx.op.unary.f32(i32 7, float %577)  ; Saturate(value)
  %579 = fmul fast float %578, 2.000000e+00
  %580 = fsub fast float 3.000000e+00, %579
  %581 = fmul fast float %578, %578
  %582 = fmul fast float %581, %574
  %583 = fmul fast float %582, %580
  br label %584

; <label>:584                                     ; preds = %569, %563
  %585 = phi float [ %583, %569 ], [ 0.000000e+00, %563 ]
  %586 = select i1 %565, float %585, float 0.000000e+00
  %587 = fadd fast float %586, %401
  %588 = or i32 %556, %502
  %589 = icmp eq i32 %588, 0
  %590 = fcmp fast ogt float %444, 0.000000e+00
  br i1 %590, label %591, label %606, !dx.controlflow.hints !38

; <label>:591                                     ; preds = %584
  %592 = fsub fast float %185, %444
  %593 = fcmp fast ole float %444, %185
  %594 = fcmp fast ole float %592, %567
  %595 = and i1 %593, %594
  %596 = select i1 %595, float 1.000000e+00, float 0.000000e+00
  %597 = fmul fast float %567, -1.500000e+00
  %598 = fsub fast float %592, %567
  %599 = fdiv fast float %598, %597
  %600 = call float @dx.op.unary.f32(i32 7, float %599)  ; Saturate(value)
  %601 = fmul fast float %600, 2.000000e+00
  %602 = fsub fast float 3.000000e+00, %601
  %603 = fmul fast float %600, %600
  %604 = fmul fast float %603, %596
  %605 = fmul fast float %604, %602
  br label %606

; <label>:606                                     ; preds = %591, %584
  %607 = phi float [ %605, %591 ], [ 0.000000e+00, %584 ]
  %608 = select i1 %589, float %607, float 0.000000e+00
  %609 = fadd fast float %587, %608
  br label %610

; <label>:610                                     ; preds = %606, %447, %400
  %611 = phi float [ %401, %447 ], [ %609, %606 ], [ %401, %400 ]
  %612 = add nuw nsw i32 %402, 1
  %613 = icmp eq i32 %612, 4
  br i1 %613, label %614, label %400

; <label>:614                                     ; preds = %610
  br label %615

; <label>:615                                     ; preds = %614, %118, %27
  %616 = phi float [ 0.000000e+00, %118 ], [ 0.000000e+00, %27 ], [ %182, %614 ]
  %617 = phi float [ 0.000000e+00, %118 ], [ 0.000000e+00, %27 ], [ %183, %614 ]
  %618 = phi float [ 0.000000e+00, %118 ], [ 0.000000e+00, %27 ], [ %184, %614 ]
  %619 = phi float [ 0.000000e+00, %118 ], [ 0.000000e+00, %27 ], [ %611, %614 ]
  br i1 %107, label %5475, label %620, !dx.controlflow.hints !42

; <label>:620                                     ; preds = %615
  %621 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %12, i32 0, i32 %62, i32 %63, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %622 = extractvalue %dx.types.ResRet.f32 %621, 0
  %623 = extractvalue %dx.types.ResRet.f32 %621, 1
  %624 = fadd fast float %623, 0x3F40000000000000
  %625 = fmul fast float %624, 2.550000e+02
  %626 = fadd fast float %622, 0x3F40000000000000
  %627 = fmul fast float %626, 2.550000e+02
  %628 = fptoui float %625 to i32
  %629 = shl i32 %628, 8
  %630 = fptoui float %627 to i32
  %631 = and i32 %630, 255
  %632 = or i32 %629, %631
  %633 = mul i32 %632, 100
  %634 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %633, i32 undef)  ; BufferLoad(srv,index,wot)
  %635 = extractvalue %dx.types.ResRet.i32 %634, 0
  %636 = lshr i32 %635, 28
  %637 = and i32 %635, 131072
  switch i32 %636, label %5475 [
    i32 0, label %638
    i32 1, label %982
    i32 2, label %1412
    i32 3, label %1722
    i32 4, label %2315
    i32 5, label %2450
    i32 6, label %4910
    i32 7, label %5222
  ], !dx.controlflow.hints !43

; <label>:638                                     ; preds = %620
  %639 = and i32 %635, 511
  %640 = mul nuw nsw i32 %639, 20
  %641 = add nuw nsw i32 %640, 4
  %642 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %641, i32 undef)  ; BufferLoad(srv,index,wot)
  %643 = extractvalue %dx.types.ResRet.i32 %642, 0
  %644 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %640, i32 undef)  ; BufferLoad(srv,index,wot)
  %645 = extractvalue %dx.types.ResRet.i32 %644, 0
  %646 = and i32 %635, 524288
  %647 = icmp ne i32 %646, 0
  %648 = and i32 %635, 2097152
  %649 = icmp ne i32 %648, 0
  %650 = lshr i32 %643, 8
  %651 = and i32 %650, 65535
  %652 = call float @dx.op.legacyF16ToF32(i32 131, i32 %651)  ; LegacyF16ToF32(value)
  %653 = lshr i32 %643, 24
  %654 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 228)  ; CBufferLoadLegacy(handle,regIndex)
  %655 = extractvalue %dx.types.CBufRet.f32 %654, 2
  %656 = extractvalue %dx.types.CBufRet.f32 %654, 0
  %657 = call float @dx.op.binary.f32(i32 35, float %43, float %656)  ; FMax(a,b)
  %658 = call float @dx.op.binary.f32(i32 36, float %657, float %655)  ; FMin(a,b)
  %659 = call float @dx.op.binary.f32(i32 36, float %43, float %656)  ; FMin(a,b)
  %660 = call float @dx.op.binary.f32(i32 35, float %659, float %658)  ; FMax(a,b)
  %661 = fcmp fast oeq float %43, %660
  %662 = extractvalue %dx.types.CBufRet.f32 %654, 3
  %663 = extractvalue %dx.types.CBufRet.f32 %654, 1
  %664 = call float @dx.op.binary.f32(i32 35, float %44, float %663)  ; FMax(a,b)
  %665 = call float @dx.op.binary.f32(i32 36, float %664, float %662)  ; FMin(a,b)
  %666 = call float @dx.op.binary.f32(i32 36, float %44, float %663)  ; FMin(a,b)
  %667 = call float @dx.op.binary.f32(i32 35, float %666, float %665)  ; FMax(a,b)
  %668 = fcmp fast oeq float %44, %667
  %669 = and i1 %661, %668
  %670 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 224)  ; CBufferLoadLegacy(handle,regIndex)
  %671 = extractvalue %dx.types.CBufRet.f32 %670, 1
  %672 = select i1 %669, float %671, float 1.000000e+00
  %673 = icmp ne i32 %653, 0
  %674 = and i1 %98, %673
  br i1 %674, label %675, label %739, !dx.controlflow.hints !44

; <label>:675                                     ; preds = %638
  %676 = sitofp i32 %653 to float
  %677 = fmul fast float %676, 0x3F70101020000000
  %678 = fmul fast float %677, %672
  %679 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %680 = extractvalue %dx.types.CBufRet.f32 %679, 3
  %681 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %682 = extractvalue %dx.types.CBufRet.f32 %681, 2
  %683 = fmul fast float %682, %678
  %684 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %685 = extractvalue %dx.types.CBufRet.f32 %684, 0
  %686 = extractvalue %dx.types.CBufRet.f32 %684, 1
  %687 = extractvalue %dx.types.CBufRet.f32 %684, 2
  %688 = extractvalue %dx.types.CBufRet.f32 %684, 3
  %689 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %690 = extractvalue %dx.types.CBufRet.f32 %689, 0
  %691 = extractvalue %dx.types.CBufRet.f32 %689, 1
  %692 = extractvalue %dx.types.CBufRet.f32 %689, 2
  %693 = extractvalue %dx.types.CBufRet.f32 %689, 3
  %694 = select i1 %647, float %685, float %690
  %695 = select i1 %647, float %686, float %691
  %696 = select i1 %647, float %687, float %692
  %697 = select i1 %647, float %688, float %693
  %698 = fmul fast float %694, %678
  %699 = fmul fast float %695, %678
  %700 = fmul fast float %696, %678
  %701 = fmul fast float %697, %678
  br i1 %115, label %728, label %702, !dx.controlflow.hints !45

; <label>:702                                     ; preds = %675
  %703 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 10)  ; CBufferLoadLegacy(handle,regIndex)
  %704 = extractvalue %dx.types.CBufRet.f32 %703, 0
  %705 = extractvalue %dx.types.CBufRet.f32 %703, 1
  %706 = extractvalue %dx.types.CBufRet.f32 %703, 2
  %707 = extractvalue %dx.types.CBufRet.f32 %703, 3
  %708 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %709 = extractvalue %dx.types.CBufRet.f32 %708, 0
  %710 = extractvalue %dx.types.CBufRet.f32 %708, 1
  %711 = extractvalue %dx.types.CBufRet.f32 %708, 2
  %712 = extractvalue %dx.types.CBufRet.f32 %708, 3
  %713 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %714 = extractvalue %dx.types.CBufRet.f32 %713, 0
  %715 = extractvalue %dx.types.CBufRet.f32 %713, 1
  %716 = extractvalue %dx.types.CBufRet.f32 %713, 2
  %717 = extractvalue %dx.types.CBufRet.f32 %713, 3
  %718 = extractvalue %dx.types.CBufRet.f32 %681, 1
  %719 = fmul fast float %714, %698
  %720 = fmul fast float %719, %718
  %721 = fmul fast float %715, %699
  %722 = fmul fast float %721, %718
  %723 = fmul fast float %716, %700
  %724 = fmul fast float %723, %718
  %725 = fmul fast float %717, %701
  %726 = fmul fast float %725, %718
  %727 = fmul fast float %718, %683
  br label %851

; <label>:728                                     ; preds = %675
  %729 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %730 = extractvalue %dx.types.CBufRet.f32 %729, 0
  %731 = extractvalue %dx.types.CBufRet.f32 %729, 1
  %732 = extractvalue %dx.types.CBufRet.f32 %729, 2
  %733 = extractvalue %dx.types.CBufRet.f32 %729, 3
  %734 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %735 = extractvalue %dx.types.CBufRet.f32 %734, 0
  %736 = extractvalue %dx.types.CBufRet.f32 %734, 1
  %737 = extractvalue %dx.types.CBufRet.f32 %734, 2
  %738 = extractvalue %dx.types.CBufRet.f32 %734, 3
  br label %851

; <label>:739                                     ; preds = %638
  %740 = and i32 %635, 1048576
  %741 = icmp ne i32 %740, 0
  %742 = lshr i32 %645, 24
  %743 = uitofp i32 %742 to float
  %744 = fmul fast float %743, 0x3F70101020000000
  %745 = lshr i32 %645, 16
  %746 = and i32 %745, 255
  %747 = uitofp i32 %746 to float
  %748 = fmul fast float %747, 0x3F70101020000000
  %749 = lshr i32 %645, 8
  %750 = and i32 %749, 255
  %751 = uitofp i32 %750 to float
  %752 = fmul fast float %751, 0x3F70101020000000
  %753 = and i32 %645, 255
  %754 = uitofp i32 %753 to float
  %755 = fmul fast float %754, 0x3F70101020000000
  %756 = and i32 %635, 65536
  %757 = icmp ne i32 %756, 0
  %758 = select i1 %757, float 1.000000e+00, float 0.000000e+00
  %759 = and i32 %635, 32768
  %760 = icmp ne i32 %759, 0
  %761 = select i1 %760, float 0.000000e+00, float 1.000000e+00
  %762 = select i1 %98, float %672, float %761
  %763 = fmul fast float %762, %758
  %764 = fmul fast float %755, %762
  %765 = fmul fast float %752, %762
  %766 = fmul fast float %748, %762
  %767 = fmul fast float %744, %762
  %768 = select i1 %115, float 0.000000e+00, float 1.000000e+00
  %769 = select i1 %741, float %768, float %763
  br i1 %115, label %811, label %770, !dx.controlflow.hints !46

; <label>:770                                     ; preds = %739
  %771 = icmp ne i32 %637, 0
  %772 = select i1 %771, float 1.000000e+00, float 0.000000e+00
  %773 = fmul fast float %769, %772
  %774 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %775 = extractvalue %dx.types.CBufRet.f32 %774, 0
  %776 = extractvalue %dx.types.CBufRet.f32 %774, 1
  %777 = extractvalue %dx.types.CBufRet.f32 %774, 2
  %778 = extractvalue %dx.types.CBufRet.f32 %774, 3
  %779 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %780 = extractvalue %dx.types.CBufRet.f32 %779, 0
  %781 = extractvalue %dx.types.CBufRet.f32 %779, 1
  %782 = extractvalue %dx.types.CBufRet.f32 %779, 2
  %783 = extractvalue %dx.types.CBufRet.f32 %779, 3
  %784 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %785 = extractvalue %dx.types.CBufRet.f32 %784, 0
  %786 = extractvalue %dx.types.CBufRet.f32 %784, 1
  %787 = extractvalue %dx.types.CBufRet.f32 %784, 2
  %788 = extractvalue %dx.types.CBufRet.f32 %784, 3
  %789 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %790 = extractvalue %dx.types.CBufRet.f32 %789, 0
  %791 = fsub fast float %764, %762
  %792 = fsub fast float %765, %762
  %793 = fsub fast float %766, %762
  %794 = fsub fast float %767, %762
  %795 = fmul fast float %790, %791
  %796 = fmul fast float %790, %792
  %797 = fmul fast float %790, %793
  %798 = fmul fast float %790, %794
  %799 = fadd fast float %795, %762
  %800 = fadd fast float %796, %762
  %801 = fadd fast float %797, %762
  %802 = fadd fast float %798, %762
  %803 = fmul fast float %785, %772
  %804 = fmul fast float %803, %799
  %805 = fmul fast float %786, %772
  %806 = fmul fast float %805, %800
  %807 = fmul fast float %787, %772
  %808 = fmul fast float %807, %801
  %809 = fmul fast float %788, %772
  %810 = fmul fast float %809, %802
  br label %829

; <label>:811                                     ; preds = %739
  %812 = and i32 %635, 262144
  %813 = icmp ne i32 %812, 0
  %814 = select i1 %813, float 1.000000e+00, float 0.000000e+00
  %815 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %816 = extractvalue %dx.types.CBufRet.f32 %815, 0
  %817 = extractvalue %dx.types.CBufRet.f32 %815, 1
  %818 = extractvalue %dx.types.CBufRet.f32 %815, 2
  %819 = extractvalue %dx.types.CBufRet.f32 %815, 3
  %820 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %821 = extractvalue %dx.types.CBufRet.f32 %820, 0
  %822 = extractvalue %dx.types.CBufRet.f32 %820, 1
  %823 = extractvalue %dx.types.CBufRet.f32 %820, 2
  %824 = extractvalue %dx.types.CBufRet.f32 %820, 3
  %825 = fmul fast float %764, %814
  %826 = fmul fast float %765, %814
  %827 = fmul fast float %766, %814
  %828 = fmul fast float %767, %814
  br label %829

; <label>:829                                     ; preds = %811, %770
  %830 = phi float [ %804, %770 ], [ %825, %811 ]
  %831 = phi float [ %806, %770 ], [ %826, %811 ]
  %832 = phi float [ %808, %770 ], [ %827, %811 ]
  %833 = phi float [ %810, %770 ], [ %828, %811 ]
  %834 = phi float [ %780, %770 ], [ %821, %811 ]
  %835 = phi float [ %781, %770 ], [ %822, %811 ]
  %836 = phi float [ %782, %770 ], [ %823, %811 ]
  %837 = phi float [ %783, %770 ], [ %824, %811 ]
  %838 = phi float [ %775, %770 ], [ %816, %811 ]
  %839 = phi float [ %776, %770 ], [ %817, %811 ]
  %840 = phi float [ %777, %770 ], [ %818, %811 ]
  %841 = phi float [ %778, %770 ], [ %819, %811 ]
  %842 = phi float [ %773, %770 ], [ %769, %811 ]
  %843 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %844 = extractvalue %dx.types.CBufRet.f32 %843, 0
  %845 = fmul fast float %844, 2.000000e+00
  %846 = select i1 %649, float %845, float 1.000000e+00
  %847 = fmul fast float %846, %830
  %848 = fmul fast float %846, %831
  %849 = fmul fast float %846, %832
  %850 = fmul fast float %846, %833
  br label %851

; <label>:851                                     ; preds = %829, %728, %702
  %852 = phi float [ %847, %829 ], [ %720, %702 ], [ %698, %728 ]
  %853 = phi float [ %848, %829 ], [ %722, %702 ], [ %699, %728 ]
  %854 = phi float [ %849, %829 ], [ %724, %702 ], [ %700, %728 ]
  %855 = phi float [ %850, %829 ], [ %726, %702 ], [ %701, %728 ]
  %856 = phi float [ %834, %829 ], [ %709, %702 ], [ %735, %728 ]
  %857 = phi float [ %835, %829 ], [ %710, %702 ], [ %736, %728 ]
  %858 = phi float [ %836, %829 ], [ %711, %702 ], [ %737, %728 ]
  %859 = phi float [ %837, %829 ], [ %712, %702 ], [ %738, %728 ]
  %860 = phi float [ %838, %829 ], [ %704, %702 ], [ %730, %728 ]
  %861 = phi float [ %839, %829 ], [ %705, %702 ], [ %731, %728 ]
  %862 = phi float [ %840, %829 ], [ %706, %702 ], [ %732, %728 ]
  %863 = phi float [ %841, %829 ], [ %707, %702 ], [ %733, %728 ]
  %864 = phi float [ %842, %829 ], [ %727, %702 ], [ %683, %728 ]
  %865 = phi float [ %652, %829 ], [ %680, %702 ], [ %680, %728 ]
  %866 = fcmp fast oeq float %865, 0.000000e+00
  br i1 %866, label %966, label %867, !dx.controlflow.hints !47

; <label>:867                                     ; preds = %851
  %868 = fmul fast float %865, %64
  %869 = fptosi float %868 to i32
  %870 = fmul fast float %865, %65
  %871 = fptosi float %870 to i32
  %872 = call i32 @dx.op.binary.i32(i32 37, i32 1, i32 %869)  ; IMax(a,b)
  %873 = call i32 @dx.op.binary.i32(i32 37, i32 1, i32 %871)  ; IMax(a,b)
  %874 = sub i32 %63, %873
  %875 = or i32 %874, %62
  %876 = icmp slt i32 %875, 0
  %877 = fptosi float %58 to i32
  %878 = fptosi float %59 to i32
  %879 = icmp sge i32 %62, %877
  %880 = icmp sge i32 %874, %878
  %881 = or i1 %879, %880
  %882 = or i1 %876, %881
  br i1 %882, label %896, label %883, !dx.controlflow.hints !48

; <label>:883                                     ; preds = %867
  %884 = lshr i32 %874, 2
  %885 = mul i32 %83, %884
  %886 = add i32 %101, %885
  %887 = shl i32 %886, 2
  %888 = shl i32 %874, 3
  %889 = and i32 %888, 24
  %890 = or i32 %889, %92
  %891 = shl i32 1, %890
  %892 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %887, i32 undef)  ; BufferLoad(srv,index,wot)
  %893 = extractvalue %dx.types.ResRet.i32 %892, 0
  %894 = and i32 %893, %891
  %895 = icmp ne i32 %894, 0
  br label %896

; <label>:896                                     ; preds = %883, %867
  %897 = phi i1 [ %895, %883 ], [ false, %867 ]
  %898 = add i32 %873, %63
  %899 = or i32 %898, %62
  %900 = icmp slt i32 %899, 0
  %901 = icmp sge i32 %898, %878
  %902 = or i1 %879, %901
  %903 = or i1 %900, %902
  br i1 %903, label %917, label %904, !dx.controlflow.hints !48

; <label>:904                                     ; preds = %896
  %905 = lshr i32 %898, 2
  %906 = mul i32 %83, %905
  %907 = add i32 %101, %906
  %908 = shl i32 %907, 2
  %909 = shl i32 %898, 3
  %910 = and i32 %909, 24
  %911 = or i32 %910, %92
  %912 = shl i32 1, %911
  %913 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %908, i32 undef)  ; BufferLoad(srv,index,wot)
  %914 = extractvalue %dx.types.ResRet.i32 %913, 0
  %915 = and i32 %914, %912
  %916 = icmp ne i32 %915, 0
  br label %917

; <label>:917                                     ; preds = %904, %896
  %918 = phi i1 [ %916, %904 ], [ false, %896 ]
  %919 = and i1 %897, %918
  %920 = sub i32 %62, %872
  %921 = or i32 %920, %63
  %922 = icmp slt i32 %921, 0
  %923 = icmp sge i32 %920, %877
  %924 = icmp sge i32 %63, %878
  %925 = or i1 %923, %924
  %926 = or i1 %922, %925
  br i1 %926, label %940, label %927, !dx.controlflow.hints !48

; <label>:927                                     ; preds = %917
  %928 = lshr i32 %920, 3
  %929 = add i32 %80, %928
  %930 = add i32 %929, %99
  %931 = add i32 %930, %84
  %932 = shl i32 %931, 2
  %933 = and i32 %920, 7
  %934 = or i32 %933, %91
  %935 = shl i32 1, %934
  %936 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %932, i32 undef)  ; BufferLoad(srv,index,wot)
  %937 = extractvalue %dx.types.ResRet.i32 %936, 0
  %938 = and i32 %937, %935
  %939 = icmp ne i32 %938, 0
  br label %940

; <label>:940                                     ; preds = %927, %917
  %941 = phi i1 [ %939, %927 ], [ false, %917 ]
  %942 = and i1 %919, %941
  %943 = add i32 %872, %62
  %944 = or i32 %943, %63
  %945 = icmp slt i32 %944, 0
  %946 = icmp sge i32 %943, %877
  %947 = or i1 %946, %924
  %948 = or i1 %945, %947
  br i1 %948, label %962, label %949, !dx.controlflow.hints !48

; <label>:949                                     ; preds = %940
  %950 = lshr i32 %943, 3
  %951 = add i32 %80, %950
  %952 = add i32 %951, %99
  %953 = add i32 %952, %84
  %954 = shl i32 %953, 2
  %955 = and i32 %943, 7
  %956 = or i32 %955, %91
  %957 = shl i32 1, %956
  %958 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %954, i32 undef)  ; BufferLoad(srv,index,wot)
  %959 = extractvalue %dx.types.ResRet.i32 %958, 0
  %960 = and i32 %959, %957
  %961 = icmp ne i32 %960, 0
  br label %962

; <label>:962                                     ; preds = %949, %940
  %963 = phi i1 [ %961, %949 ], [ false, %940 ]
  %964 = and i1 %942, %963
  %965 = xor i1 %964, true
  br label %966

; <label>:966                                     ; preds = %962, %851
  %967 = phi i1 [ %965, %962 ], [ false, %851 ]
  br i1 %967, label %5475, label %968, !dx.controlflow.hints !49

; <label>:968                                     ; preds = %966
  %969 = select i1 %115, i1 %77, i1 %74
  %970 = select i1 %969, float %856, float %860
  %971 = select i1 %969, float %857, float %861
  %972 = select i1 %969, float %858, float %862
  %973 = select i1 %969, float %859, float %863
  %974 = fmul fast float %970, %852
  %975 = fmul fast float %974, %864
  %976 = fmul fast float %971, %853
  %977 = fmul fast float %976, %864
  %978 = fmul fast float %972, %854
  %979 = fmul fast float %978, %864
  %980 = fmul fast float %973, %855
  %981 = fmul fast float %980, %864
  br label %5475

; <label>:982                                     ; preds = %620
  %983 = or i32 %637, %114
  %984 = icmp eq i32 %983, 0
  br i1 %984, label %5475, label %985, !dx.controlflow.hints !50

; <label>:985                                     ; preds = %982
  %986 = and i32 %635, 511
  %987 = mul nuw nsw i32 %986, 20
  %988 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %987, i32 undef)  ; BufferLoad(srv,index,wot)
  %989 = extractvalue %dx.types.ResRet.i32 %988, 0
  %990 = and i32 %989, 255
  %991 = uitofp i32 %990 to float
  %992 = lshr i32 %989, 8
  %993 = and i32 %992, 255
  %994 = uitofp i32 %993 to float
  %995 = lshr i32 %989, 16
  %996 = and i32 %995, 255
  %997 = uitofp i32 %996 to float
  %998 = lshr i32 %989, 24
  %999 = uitofp i32 %998 to float
  %1000 = fmul fast float %991, 0x3F70101020000000
  %1001 = fmul fast float %994, 0x3F70101020000000
  %1002 = fmul fast float %997, 0x3F70101020000000
  %1003 = fmul fast float %999, 0x3F70101020000000
  %1004 = lshr i32 %635, 5
  %1005 = and i32 %1004, 1008
  %1006 = or i32 %1005, 8
  %1007 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %1006, i32 undef)  ; BufferLoad(srv,index,wot)
  %1008 = extractvalue %dx.types.ResRet.f32 %1007, 0
  %1009 = or i32 %1005, 12
  %1010 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %1009, i32 undef)  ; BufferLoad(srv,index,wot)
  %1011 = extractvalue %dx.types.ResRet.f32 %1010, 0
  %1012 = or i32 %1005, 4
  %1013 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %1012, i32 undef)  ; BufferLoad(srv,index,wot)
  %1014 = extractvalue %dx.types.ResRet.i32 %1013, 0
  %1015 = lshr i32 %1014, 16
  %1016 = and i32 %1015, 254
  %1017 = uitofp i32 %1016 to float
  %1018 = lshr i32 %1014, 24
  %1019 = and i32 %1018, 254
  %1020 = uitofp i32 %1019 to float
  %1021 = add nuw nsw i32 %987, 16
  %1022 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %1021, i32 undef)  ; BufferLoad(srv,index,wot)
  %1023 = extractvalue %dx.types.ResRet.f32 %1022, 0
  %1024 = fsub fast float %1011, %1008
  %1025 = fmul fast float %1024, 0x3FB99999A0000000
  %1026 = fsub fast float %1023, %1008
  %1027 = fdiv fast float %1026, %1025
  %1028 = call float @dx.op.unary.f32(i32 7, float %1027)  ; Saturate(value)
  %1029 = fmul fast float %1028, 2.000000e+00
  %1030 = fsub fast float 3.000000e+00, %1029
  %1031 = fsub fast float %1020, %1017
  %1032 = fmul fast float %1028, %1028
  %1033 = fmul fast float %1032, %1031
  %1034 = fmul fast float %1033, %1030
  %1035 = fadd fast float %1034, %1017
  %1036 = fmul fast float %1035, 0x3F70204080000000
  %1037 = fmul fast float %1024, 5.000000e-01
  %1038 = fsub fast float %1037, %1011
  %1039 = fadd fast float %1038, %1023
  %1040 = fdiv fast float %1039, %1037
  %1041 = call float @dx.op.unary.f32(i32 7, float %1040)  ; Saturate(value)
  %1042 = fmul fast float %1041, 2.000000e+00
  %1043 = fsub fast float 3.000000e+00, %1042
  %1044 = fmul fast float %1041, %1041
  %1045 = fmul fast float %1044, %1043
  %1046 = fsub fast float 1.000000e+00, %1045
  %1047 = fmul fast float %1036, %1046
  %1048 = fadd fast float %1023, -1.280000e+02
  %1049 = fmul fast float %1048, 1.953125e-03
  %1050 = call float @dx.op.unary.f32(i32 7, float %1049)  ; Saturate(value)
  %1051 = fmul fast float %1050, 6.250000e-01
  %1052 = fsub fast float 2.500000e+00, %1051
  %1053 = fmul fast float %1052, %64
  %1054 = fmul fast float %1052, %65
  %1055 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %11, i32 0, i32 %62, i32 %63, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
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
  %1081 = fmul fast float %1080, %1069
  %1082 = add i32 %63, -1
  %1083 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %11, i32 0, i32 %62, i32 %1082, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1084 = extractvalue %dx.types.ResRet.i32 %1083, 0
  %1085 = lshr i32 %1084, 8
  %1086 = and i32 %1084, 255
  %1087 = and i32 %1085, 255
  %1088 = uitofp i32 %1086 to float
  %1089 = uitofp i32 %1087 to float
  %1090 = fmul fast float %1088, 0x3F80101020000000
  %1091 = fmul fast float %1089, 0x3F80101020000000
  %1092 = fadd fast float %1090, -1.000000e+00
  %1093 = fadd fast float %1091, -1.000000e+00
  %1094 = call float @dx.op.unary.f32(i32 6, float %1092)  ; FAbs(value)
  %1095 = fsub fast float 1.000000e+00, %1094
  %1096 = call float @dx.op.unary.f32(i32 6, float %1093)  ; FAbs(value)
  %1097 = fsub fast float %1095, %1096
  %1098 = fsub fast float -0.000000e+00, %1097
  %1099 = call float @dx.op.binary.f32(i32 35, float %1098, float 0.000000e+00)  ; FMax(a,b)
  %1100 = fcmp fast ogt float %1092, 0.000000e+00
  %1101 = fsub fast float -0.000000e+00, %1099
  %1102 = select i1 %1100, float %1101, float %1099
  %1103 = fadd fast float %1102, %1092
  %1104 = fcmp fast ogt float %1093, 0.000000e+00
  %1105 = select i1 %1104, float %1101, float %1099
  %1106 = fadd fast float %1105, %1093
  %1107 = call float @dx.op.dot3.f32(i32 55, float %1103, float %1106, float %1097, float %1103, float %1106, float %1097)  ; Dot3(ax,ay,az,bx,by,bz)
  %1108 = call float @dx.op.unary.f32(i32 25, float %1107)  ; Rsqrt(value)
  %1109 = fmul fast float %1103, %1108
  %1110 = fmul fast float %1106, %1108
  %1111 = fmul fast float %1108, %1097
  %1112 = add i32 %63, 1
  %1113 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %11, i32 0, i32 %62, i32 %1112, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1114 = extractvalue %dx.types.ResRet.i32 %1113, 0
  %1115 = lshr i32 %1114, 8
  %1116 = and i32 %1114, 255
  %1117 = and i32 %1115, 255
  %1118 = uitofp i32 %1116 to float
  %1119 = uitofp i32 %1117 to float
  %1120 = fmul fast float %1118, 0x3F80101020000000
  %1121 = fmul fast float %1119, 0x3F80101020000000
  %1122 = fadd fast float %1120, -1.000000e+00
  %1123 = fadd fast float %1121, -1.000000e+00
  %1124 = call float @dx.op.unary.f32(i32 6, float %1122)  ; FAbs(value)
  %1125 = fsub fast float 1.000000e+00, %1124
  %1126 = call float @dx.op.unary.f32(i32 6, float %1123)  ; FAbs(value)
  %1127 = fsub fast float %1125, %1126
  %1128 = fsub fast float -0.000000e+00, %1127
  %1129 = call float @dx.op.binary.f32(i32 35, float %1128, float 0.000000e+00)  ; FMax(a,b)
  %1130 = fcmp fast ogt float %1122, 0.000000e+00
  %1131 = fsub fast float -0.000000e+00, %1129
  %1132 = select i1 %1130, float %1131, float %1129
  %1133 = fadd fast float %1132, %1122
  %1134 = fcmp fast ogt float %1123, 0.000000e+00
  %1135 = select i1 %1134, float %1131, float %1129
  %1136 = fadd fast float %1135, %1123
  %1137 = call float @dx.op.dot3.f32(i32 55, float %1133, float %1136, float %1127, float %1133, float %1136, float %1127)  ; Dot3(ax,ay,az,bx,by,bz)
  %1138 = call float @dx.op.unary.f32(i32 25, float %1137)  ; Rsqrt(value)
  %1139 = fmul fast float %1133, %1138
  %1140 = fmul fast float %1136, %1138
  %1141 = fmul fast float %1138, %1127
  %1142 = add i32 %62, -1
  %1143 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %11, i32 0, i32 %1142, i32 %63, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1144 = extractvalue %dx.types.ResRet.i32 %1143, 0
  %1145 = lshr i32 %1144, 8
  %1146 = and i32 %1144, 255
  %1147 = and i32 %1145, 255
  %1148 = uitofp i32 %1146 to float
  %1149 = uitofp i32 %1147 to float
  %1150 = fmul fast float %1148, 0x3F80101020000000
  %1151 = fmul fast float %1149, 0x3F80101020000000
  %1152 = fadd fast float %1150, -1.000000e+00
  %1153 = fadd fast float %1151, -1.000000e+00
  %1154 = call float @dx.op.unary.f32(i32 6, float %1152)  ; FAbs(value)
  %1155 = fsub fast float 1.000000e+00, %1154
  %1156 = call float @dx.op.unary.f32(i32 6, float %1153)  ; FAbs(value)
  %1157 = fsub fast float %1155, %1156
  %1158 = fsub fast float -0.000000e+00, %1157
  %1159 = call float @dx.op.binary.f32(i32 35, float %1158, float 0.000000e+00)  ; FMax(a,b)
  %1160 = fcmp fast ogt float %1152, 0.000000e+00
  %1161 = fsub fast float -0.000000e+00, %1159
  %1162 = select i1 %1160, float %1161, float %1159
  %1163 = fadd fast float %1162, %1152
  %1164 = fcmp fast ogt float %1153, 0.000000e+00
  %1165 = select i1 %1164, float %1161, float %1159
  %1166 = fadd fast float %1165, %1153
  %1167 = call float @dx.op.dot3.f32(i32 55, float %1163, float %1166, float %1157, float %1163, float %1166, float %1157)  ; Dot3(ax,ay,az,bx,by,bz)
  %1168 = call float @dx.op.unary.f32(i32 25, float %1167)  ; Rsqrt(value)
  %1169 = fmul fast float %1163, %1168
  %1170 = fmul fast float %1166, %1168
  %1171 = fmul fast float %1168, %1157
  %1172 = add i32 %62, 1
  %1173 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %11, i32 0, i32 %1172, i32 %63, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1174 = extractvalue %dx.types.ResRet.i32 %1173, 0
  %1175 = lshr i32 %1174, 8
  %1176 = and i32 %1174, 255
  %1177 = and i32 %1175, 255
  %1178 = uitofp i32 %1176 to float
  %1179 = uitofp i32 %1177 to float
  %1180 = fmul fast float %1178, 0x3F80101020000000
  %1181 = fmul fast float %1179, 0x3F80101020000000
  %1182 = fadd fast float %1180, -1.000000e+00
  %1183 = fadd fast float %1181, -1.000000e+00
  %1184 = call float @dx.op.unary.f32(i32 6, float %1182)  ; FAbs(value)
  %1185 = fsub fast float 1.000000e+00, %1184
  %1186 = call float @dx.op.unary.f32(i32 6, float %1183)  ; FAbs(value)
  %1187 = fsub fast float %1185, %1186
  %1188 = fsub fast float -0.000000e+00, %1187
  %1189 = call float @dx.op.binary.f32(i32 35, float %1188, float 0.000000e+00)  ; FMax(a,b)
  %1190 = fcmp fast ogt float %1182, 0.000000e+00
  %1191 = fsub fast float -0.000000e+00, %1189
  %1192 = select i1 %1190, float %1191, float %1189
  %1193 = fadd fast float %1192, %1182
  %1194 = fcmp fast ogt float %1183, 0.000000e+00
  %1195 = select i1 %1194, float %1191, float %1189
  %1196 = fadd fast float %1195, %1183
  %1197 = call float @dx.op.dot3.f32(i32 55, float %1193, float %1196, float %1187, float %1193, float %1196, float %1187)  ; Dot3(ax,ay,az,bx,by,bz)
  %1198 = call float @dx.op.unary.f32(i32 25, float %1197)  ; Rsqrt(value)
  %1199 = fmul fast float %1193, %1198
  %1200 = fmul fast float %1196, %1198
  %1201 = fmul fast float %1198, %1187
  %1202 = add nuw nsw i32 %987, 12
  %1203 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %1202, i32 undef)  ; BufferLoad(srv,index,wot)
  %1204 = extractvalue %dx.types.ResRet.i32 %1203, 0
  %1205 = lshr i32 %1204, 16
  %1206 = uitofp i32 %1205 to float
  %1207 = fmul fast float %1206, 0x3EF0002000000000
  %1208 = add nuw nsw i32 %987, 8
  %1209 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %1208, i32 undef)  ; BufferLoad(srv,index,wot)
  %1210 = extractvalue %dx.types.ResRet.i32 %1209, 0
  %1211 = lshr i32 %1210, 16
  %1212 = uitofp i32 %1211 to float
  %1213 = fmul fast float %1212, 0x3EF0002000000000
  %1214 = fsub fast float %44, %1213
  %1215 = fdiv fast float %1214, %1207
  %1216 = fsub fast float %39, %1054
  %1217 = fmul fast float %42, %1216
  %1218 = call float @dx.op.unary.f32(i32 7, float %43)  ; Saturate(value)
  %1219 = call float @dx.op.unary.f32(i32 7, float %1217)  ; Saturate(value)
  %1220 = fmul fast float %58, %1218
  %1221 = fmul fast float %59, %1219
  %1222 = fptoui float %1220 to i32
  %1223 = fptoui float %1221 to i32
  %1224 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %12, i32 0, i32 %1222, i32 %1223, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1225 = extractvalue %dx.types.ResRet.f32 %1224, 0
  %1226 = extractvalue %dx.types.ResRet.f32 %1224, 1
  %1227 = fadd fast float %1226, 0x3F40000000000000
  %1228 = fmul fast float %1227, 2.550000e+02
  %1229 = fadd fast float %1225, 0x3F40000000000000
  %1230 = fmul fast float %1229, 2.550000e+02
  %1231 = fptoui float %1228 to i32
  %1232 = shl i32 %1231, 8
  %1233 = fptoui float %1230 to i32
  %1234 = and i32 %1233, 255
  %1235 = or i32 %1232, %1234
  %1236 = fadd fast float %1054, %39
  %1237 = fmul fast float %42, %1236
  %1238 = call float @dx.op.unary.f32(i32 7, float %1237)  ; Saturate(value)
  %1239 = fmul fast float %59, %1238
  %1240 = fptoui float %1239 to i32
  %1241 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %12, i32 0, i32 %1222, i32 %1240, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1242 = extractvalue %dx.types.ResRet.f32 %1241, 0
  %1243 = extractvalue %dx.types.ResRet.f32 %1241, 1
  %1244 = fadd fast float %1243, 0x3F40000000000000
  %1245 = fmul fast float %1244, 2.550000e+02
  %1246 = fadd fast float %1242, 0x3F40000000000000
  %1247 = fmul fast float %1246, 2.550000e+02
  %1248 = fptoui float %1245 to i32
  %1249 = shl i32 %1248, 8
  %1250 = fptoui float %1247 to i32
  %1251 = and i32 %1250, 255
  %1252 = or i32 %1249, %1251
  %1253 = fsub fast float %38, %1053
  %1254 = fmul fast float %41, %1253
  %1255 = call float @dx.op.unary.f32(i32 7, float %1254)  ; Saturate(value)
  %1256 = call float @dx.op.unary.f32(i32 7, float %44)  ; Saturate(value)
  %1257 = fmul fast float %58, %1255
  %1258 = fmul fast float %59, %1256
  %1259 = fptoui float %1257 to i32
  %1260 = fptoui float %1258 to i32
  %1261 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %12, i32 0, i32 %1259, i32 %1260, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1262 = extractvalue %dx.types.ResRet.f32 %1261, 0
  %1263 = extractvalue %dx.types.ResRet.f32 %1261, 1
  %1264 = fadd fast float %1263, 0x3F40000000000000
  %1265 = fmul fast float %1264, 2.550000e+02
  %1266 = fadd fast float %1262, 0x3F40000000000000
  %1267 = fmul fast float %1266, 2.550000e+02
  %1268 = fptoui float %1265 to i32
  %1269 = shl i32 %1268, 8
  %1270 = fptoui float %1267 to i32
  %1271 = and i32 %1270, 255
  %1272 = or i32 %1269, %1271
  %1273 = fadd fast float %1053, %38
  %1274 = fmul fast float %41, %1273
  %1275 = call float @dx.op.unary.f32(i32 7, float %1274)  ; Saturate(value)
  %1276 = fmul fast float %58, %1275
  %1277 = fptoui float %1276 to i32
  %1278 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %12, i32 0, i32 %1277, i32 %1260, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
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
  %1290 = icmp eq i32 %632, %1235
  %1291 = zext i1 %1290 to i32
  %1292 = icmp eq i32 %632, %1252
  %1293 = zext i1 %1292 to i32
  %1294 = add nuw nsw i32 %1293, %1291
  %1295 = icmp eq i32 %632, %1272
  %1296 = zext i1 %1295 to i32
  %1297 = add nuw nsw i32 %1294, %1296
  %1298 = icmp eq i32 %632, %1289
  %1299 = zext i1 %1298 to i32
  %1300 = add nuw nsw i32 %1297, %1299
  %1301 = icmp ne i32 %1300, 4
  %1302 = call float @dx.op.dot3.f32(i32 55, float %1109, float %1110, float %1111, float %1139, float %1140, float %1141)  ; Dot3(ax,ay,az,bx,by,bz)
  %1303 = call float @dx.op.binary.f32(i32 36, float 1.000000e+00, float %1302)  ; FMin(a,b)
  %1304 = call float @dx.op.dot3.f32(i32 55, float %1109, float %1110, float %1111, float %1169, float %1170, float %1171)  ; Dot3(ax,ay,az,bx,by,bz)
  %1305 = call float @dx.op.binary.f32(i32 36, float %1303, float %1304)  ; FMin(a,b)
  %1306 = call float @dx.op.dot3.f32(i32 55, float %1109, float %1110, float %1111, float %1199, float %1200, float %1201)  ; Dot3(ax,ay,az,bx,by,bz)
  %1307 = call float @dx.op.binary.f32(i32 36, float %1305, float %1306)  ; FMin(a,b)
  %1308 = call float @dx.op.dot3.f32(i32 55, float %1139, float %1140, float %1141, float %1169, float %1170, float %1171)  ; Dot3(ax,ay,az,bx,by,bz)
  %1309 = call float @dx.op.binary.f32(i32 36, float %1307, float %1308)  ; FMin(a,b)
  %1310 = call float @dx.op.dot3.f32(i32 55, float %1139, float %1140, float %1141, float %1199, float %1200, float %1201)  ; Dot3(ax,ay,az,bx,by,bz)
  %1311 = call float @dx.op.binary.f32(i32 36, float %1309, float %1310)  ; FMin(a,b)
  %1312 = call float @dx.op.dot3.f32(i32 55, float %1169, float %1170, float %1171, float %1199, float %1200, float %1201)  ; Dot3(ax,ay,az,bx,by,bz)
  %1313 = call float @dx.op.binary.f32(i32 36, float %1311, float %1312)  ; FMin(a,b)
  %1314 = call float @dx.op.unary.f32(i32 7, float %1313)  ; Saturate(value)
  %1315 = fsub fast float 1.000000e+00, %1314
  %1316 = call float @dx.op.unary.f32(i32 7, float %1315)  ; Saturate(value)
  %1317 = fmul fast float %1316, 2.000000e+00
  %1318 = fsub fast float 3.000000e+00, %1317
  %1319 = call float @dx.op.unary.f32(i32 7, float %1081)  ; Saturate(value)
  %1320 = fmul fast float %1319, 2.500000e+00
  %1321 = call float @dx.op.unary.f32(i32 7, float %1320)  ; Saturate(value)
  %1322 = fmul fast float %1321, 2.000000e+00
  %1323 = fsub fast float 3.000000e+00, %1322
  %1324 = fadd fast float %1319, 0xBFD99999A0000000
  %1325 = fmul fast float %1324, -2.500000e+00
  %1326 = call float @dx.op.unary.f32(i32 7, float %1325)  ; Saturate(value)
  %1327 = fmul fast float %1326, 2.000000e+00
  %1328 = fsub fast float 3.000000e+00, %1327
  %1329 = fmul float %1321, %1326
  %1330 = fmul float %1329, %1329
  %1331 = fmul fast float %1328, %1323
  %1332 = fmul fast float %1331, %1330
  %1333 = fmul fast float %1316, %1316
  %1334 = fmul fast float %1333, %1318
  %1335 = fadd fast float %1332, %1334
  %1336 = fmul fast float %1335, 2.000000e+00
  %1337 = call float @dx.op.unary.f32(i32 7, float %1336)  ; Saturate(value)
  %1338 = fmul fast float %1337, 1.500000e+00
  %1339 = fmul fast float %1338, %1000
  %1340 = fmul fast float %1338, %1001
  %1341 = fmul fast float %1338, %1002
  %1342 = icmp eq i32 %632, 0
  %1343 = or i1 %1342, %1301
  %1344 = select i1 %1342, float 0.000000e+00, float 1.000000e+00
  %1345 = select i1 %1343, float %1339, float 1.000000e+00
  %1346 = select i1 %1343, float %1340, float 1.000000e+00
  %1347 = select i1 %1343, float %1341, float 1.000000e+00
  %1348 = select i1 %1343, float %1003, float %1338
  %1349 = select i1 %1343, float %1344, float 0.000000e+00
  %1350 = fmul fast float %67, 5.400000e+02
  %1351 = fmul fast float %69, 5.400000e+02
  %1352 = fmul fast float %1350, %43
  %1353 = fmul fast float %1351, %44
  %1354 = call float @dx.op.unary.f32(i32 27, float %1352)  ; Round_ni(value)
  %1355 = call float @dx.op.unary.f32(i32 27, float %1353)  ; Round_ni(value)
  %1356 = fadd fast float %1355, %1354
  %1357 = frem fast float %1356, 2.000000e+00
  %1358 = call float @dx.op.unary.f32(i32 22, float %1352)  ; Frc(value)
  %1359 = call float @dx.op.unary.f32(i32 22, float %1353)  ; Frc(value)
  %1360 = fadd fast float %1358, -5.000000e-01
  %1361 = fadd fast float %1359, -5.000000e-01
  %1362 = fmul fast float %1360, 2.000000e+00
  %1363 = fmul fast float %1361, 2.000000e+00
  %1364 = call float @dx.op.dot2.f32(i32 54, float %1362, float %1363, float %1362, float %1363)  ; Dot2(ax,ay,bx,by)
  %1365 = call float @dx.op.unary.f32(i32 24, float %1364)  ; Sqrt(value)
  %1366 = fsub fast float 1.000000e+00, %1365
  %1367 = fmul fast float %1366, 2.000000e+00
  %1368 = call float @dx.op.unary.f32(i32 7, float %1367)  ; Saturate(value)
  %1369 = fmul fast float %59, %58
  %1370 = fmul fast float %1351, %1350
  %1371 = fdiv fast float %1369, %1370
  %1372 = fptoui float %1371 to i32
  %1373 = icmp ult i32 %1372, 4
  %1374 = select i1 %1373, float 1.000000e+00, float %1368
  %1375 = fmul fast float %1345, %1357
  %1376 = fmul fast float %1346, %1357
  %1377 = fmul fast float %1347, %1357
  %1378 = fmul fast float %1357, %1348
  %1379 = fmul fast float %1375, %1374
  %1380 = fmul fast float %1376, %1374
  %1381 = fmul fast float %1377, %1374
  %1382 = fmul fast float %1378, %1374
  %1383 = fsub fast float 1.000000e+00, %1215
  %1384 = fmul fast float %1383, %1383
  %1385 = fmul fast float %1384, 3.000000e+00
  %1386 = fadd fast float %1385, 2.500000e-01
  %1387 = call float @dx.op.unary.f32(i32 7, float %1386)  ; Saturate(value)
  %1388 = fmul fast float %1357, 0x3FC3333340000000
  %1389 = fadd fast float %1388, 7.500000e-01
  %1390 = fmul fast float %1389, %1349
  %1391 = call float @dx.op.binary.f32(i32 35, float %1379, float %1390)  ; FMax(a,b)
  %1392 = call float @dx.op.binary.f32(i32 35, float %1380, float %1390)  ; FMax(a,b)
  %1393 = call float @dx.op.binary.f32(i32 35, float %1381, float %1390)  ; FMax(a,b)
  %1394 = fmul fast float %1387, %1349
  %1395 = call float @dx.op.binary.f32(i32 35, float %1382, float %1394)  ; FMax(a,b)
  %1396 = fmul fast float %1047, %1000
  %1397 = fmul fast float %1396, %1391
  %1398 = fmul fast float %1047, %1001
  %1399 = fmul fast float %1398, %1392
  %1400 = fmul fast float %1047, %1002
  %1401 = fmul fast float %1400, %1393
  %1402 = fmul fast float %1387, %1047
  %1403 = fmul fast float %1402, %1395
  %1404 = call float @dx.op.unary.f32(i32 7, float %1397)  ; Saturate(value)
  %1405 = call float @dx.op.unary.f32(i32 7, float %1399)  ; Saturate(value)
  %1406 = call float @dx.op.unary.f32(i32 7, float %1401)  ; Saturate(value)
  %1407 = call float @dx.op.unary.f32(i32 7, float %1403)  ; Saturate(value)
  %1408 = fmul fast float %1404, 0x3FF3333340000000
  %1409 = fmul fast float %1405, 0x3FF3333340000000
  %1410 = fmul fast float %1406, 0x3FF3333340000000
  %1411 = fmul fast float %1407, 0x3FF3333340000000
  br label %5475

; <label>:1412                                    ; preds = %620
  %1413 = and i32 %635, 511
  %1414 = mul nuw nsw i32 %1413, 20
  %1415 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %1414, i32 undef)  ; BufferLoad(srv,index,wot)
  %1416 = extractvalue %dx.types.ResRet.i32 %1415, 0
  %1417 = lshr i32 %1416, 24
  %1418 = uitofp i32 %1417 to float
  %1419 = fmul fast float %1418, 0x3F70101020000000
  %1420 = fsub fast float 1.000000e+00, %1419
  %1421 = add nuw nsw i32 %1414, 12
  %1422 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %1421, i32 undef)  ; BufferLoad(srv,index,wot)
  %1423 = extractvalue %dx.types.ResRet.i32 %1422, 0
  %1424 = and i32 %1423, 65535
  %1425 = uitofp i32 %1424 to float
  %1426 = fmul fast float %1425, 0x3EF0002000000000
  %1427 = lshr i32 %1423, 16
  %1428 = uitofp i32 %1427 to float
  %1429 = fmul fast float %1428, 0x3EF0002000000000
  %1430 = add nuw nsw i32 %1414, 8
  %1431 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %1430, i32 undef)  ; BufferLoad(srv,index,wot)
  %1432 = extractvalue %dx.types.ResRet.i32 %1431, 0
  %1433 = and i32 %1432, 65535
  %1434 = uitofp i32 %1433 to float
  %1435 = fmul fast float %1434, 0x3EF0002000000000
  %1436 = lshr i32 %1432, 16
  %1437 = uitofp i32 %1436 to float
  %1438 = fmul fast float %1437, 0x3EF0002000000000
  %1439 = fsub fast float %43, %1435
  %1440 = fdiv fast float %1439, %1426
  %1441 = fsub fast float %44, %1438
  %1442 = fdiv fast float %1441, %1429
  %1443 = add nuw nsw i32 %1414, 16
  %1444 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %1443, i32 undef)  ; BufferLoad(srv,index,wot)
  %1445 = extractvalue %dx.types.ResRet.f32 %1444, 0
  %1446 = fcmp fast olt float %1445, 1.000000e+01
  %1447 = uitofp i1 %1446 to float
  %1448 = fdiv fast float 2.400000e+02, %1445
  %1449 = call float @dx.op.unary.f32(i32 7, float %1448)  ; Saturate(value)
  %1450 = fdiv fast float 3.200000e+02, %1445
  %1451 = call float @dx.op.unary.f32(i32 7, float %1450)  ; Saturate(value)
  %1452 = fmul fast float %1451, 5.000000e-01
  %1453 = fadd fast float %1452, 2.500000e-01
  %1454 = fdiv fast float 3.200000e+01, %1453
  %1455 = select i1 %1446, float 3.200000e+01, float %1454
  %1456 = fmul fast float %1455, 1.600000e+01
  %1457 = fmul fast float %1455, 9.000000e+00
  %1458 = fmul fast float %1426, %1440
  %1459 = fmul fast float %1458, %1456
  %1460 = fmul fast float %1429, %1442
  %1461 = fmul fast float %1460, %1457
  %1462 = call float @dx.op.unary.f32(i32 29, float %1459)  ; Round_z(value)
  %1463 = call float @dx.op.unary.f32(i32 29, float %1461)  ; Round_z(value)
  %1464 = call float @dx.op.unary.f32(i32 7, float %1419)  ; Saturate(value)
  %1465 = fmul fast float %1464, 2.000000e+00
  %1466 = fsub fast float 3.000000e+00, %1465
  %1467 = fmul fast float %1449, 4.000000e+01
  %1468 = fmul fast float %1447, 1.000000e+02
  %1469 = fadd fast float %1468, %1467
  %1470 = fptoui float %1469 to i32
  %1471 = uitofp i32 %62 to float
  %1472 = uitofp i32 %63 to float
  %1473 = fptoui float %1471 to i32
  %1474 = fptoui float %1472 to i32
  %1475 = lshr i32 %1474, 2
  %1476 = mul i32 %83, %1475
  %1477 = lshr i32 %1473, 3
  %1478 = add i32 %80, %1477
  %1479 = add i32 %1478, %99
  %1480 = add i32 %1479, %1476
  %1481 = shl i32 %1480, 2
  %1482 = shl i32 %1474, 3
  %1483 = and i32 %1482, 24
  %1484 = and i32 %1473, 7
  %1485 = or i32 %1483, %1484
  %1486 = shl i32 1, %1485
  %1487 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %1481, i32 undef)  ; BufferLoad(srv,index,wot)
  %1488 = extractvalue %dx.types.ResRet.i32 %1487, 0
  %1489 = and i32 %1488, %1486
  %1490 = icmp ne i32 %1489, 0
  %1491 = icmp eq i32 %1470, 0
  br i1 %1491, label %1608, label %1492, !dx.controlflow.hints !51

; <label>:1492                                    ; preds = %1412
  %1493 = uitofp i32 %1470 to float
  %1494 = fmul fast float %64, 5.000000e-01
  %1495 = fmul fast float %1494, %1493
  %1496 = fmul fast float %65, 5.000000e-01
  %1497 = fmul fast float %1496, %1493
  %1498 = call float @dx.op.binary.f32(i32 35, float 5.000000e-01, float %1495)  ; FMax(a,b)
  %1499 = call float @dx.op.binary.f32(i32 35, float 5.000000e-01, float %1497)  ; FMax(a,b)
  br label %1500

; <label>:1500                                    ; preds = %1595, %1492
  %1501 = phi float [ 0.000000e+00, %1492 ], [ %1598, %1595 ]
  %1502 = phi i32 [ 0, %1492 ], [ %1599, %1595 ]
  %1503 = fmul fast float %43, 0x3FF280E1E0000000
  %1504 = fmul fast float %44, 0x3FF280E1E0000000
  %1505 = sitofp i32 %1502 to float
  %1506 = fmul fast float %1505, 0x3FB99999A0000000
  %1507 = fadd fast float %1506, %1503
  %1508 = fadd fast float %1506, %1504
  %1509 = fmul fast float %1507, 1.024000e+03
  %1510 = fmul fast float %1508, 1.024000e+03
  %1511 = fadd fast float %1509, -5.120000e+02
  %1512 = fadd fast float %1510, -5.120000e+02
  %1513 = fmul fast float %1507, 0x4081BEDF00000000
  %1514 = fadd fast float %1513, 0xC071BEDF00000000
  %1515 = call float @dx.op.unary.f32(i32 22, float %1514)  ; Frc(value)
  %1516 = fmul fast float %1511, %1515
  %1517 = fadd fast float %1516, %1512
  %1518 = fmul fast float %1508, 0x4073BEBE20000000
  %1519 = fadd fast float %1518, 0xC063BEBE20000000
  %1520 = call float @dx.op.unary.f32(i32 22, float %1519)  ; Frc(value)
  %1521 = fmul fast float %1512, %1520
  %1522 = fadd fast float %1521, %1511
  %1523 = fmul fast float %1517, %1522
  %1524 = call float @dx.op.unary.f32(i32 22, float %1523)  ; Frc(value)
  %1525 = fmul fast float %1524, 2.000000e+00
  %1526 = fadd fast float %1525, -1.000000e+00
  %1527 = fmul fast float %1526, %1498
  %1528 = fmul fast float %43, 0x3FEB681740000000
  %1529 = fmul fast float %44, 0x3FEB681740000000
  %1530 = fmul fast float %1505, 0x3FC99999A0000000
  %1531 = fadd fast float %1530, 1.250000e-01
  %1532 = fadd fast float %1531, %1528
  %1533 = fadd fast float %1531, %1529
  %1534 = fmul fast float %1532, 1.024000e+03
  %1535 = fmul fast float %1533, 1.024000e+03
  %1536 = fadd fast float %1534, -5.120000e+02
  %1537 = fadd fast float %1535, -5.120000e+02
  %1538 = fmul fast float %1532, 0x4081BEDF00000000
  %1539 = fadd fast float %1538, 0xC071BEDF00000000
  %1540 = call float @dx.op.unary.f32(i32 22, float %1539)  ; Frc(value)
  %1541 = fmul fast float %1536, %1540
  %1542 = fadd fast float %1541, %1537
  %1543 = fmul fast float %1533, 0x4073BEBE20000000
  %1544 = fadd fast float %1543, 0xC063BEBE20000000
  %1545 = call float @dx.op.unary.f32(i32 22, float %1544)  ; Frc(value)
  %1546 = fmul fast float %1537, %1545
  %1547 = fadd fast float %1546, %1536
  %1548 = fmul fast float %1542, %1547
  %1549 = call float @dx.op.unary.f32(i32 22, float %1548)  ; Frc(value)
  %1550 = fmul fast float %1549, 2.000000e+00
  %1551 = fadd fast float %1550, -1.000000e+00
  %1552 = fmul fast float %1551, %1499
  %1553 = fptosi float %1527 to i32
  %1554 = sitofp i32 %1553 to float
  %1555 = fadd fast float %1554, %1471
  %1556 = fptosi float %1555 to i32
  %1557 = fptosi float %1552 to i32
  %1558 = sitofp i32 %1557 to float
  %1559 = fadd fast float %1558, %1472
  %1560 = fptosi float %1559 to i32
  %1561 = or i32 %1560, %1556
  %1562 = icmp slt i32 %1561, 0
  %1563 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %1564 = extractvalue %dx.types.CBufRet.f32 %1563, 0
  %1565 = extractvalue %dx.types.CBufRet.f32 %1563, 1
  %1566 = fptosi float %1564 to i32
  %1567 = fptosi float %1565 to i32
  %1568 = icmp sge i32 %1556, %1566
  %1569 = icmp sge i32 %1560, %1567
  %1570 = or i1 %1568, %1569
  %1571 = or i1 %1562, %1570
  br i1 %1571, label %1595, label %1572, !dx.controlflow.hints !48

; <label>:1572                                    ; preds = %1500
  %1573 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %17, i32 51)  ; CBufferLoadLegacy(handle,regIndex)
  %1574 = extractvalue %dx.types.CBufRet.i32 %1573, 1
  %1575 = shl i32 %1574, 2
  %1576 = extractvalue %dx.types.CBufRet.i32 %1573, 3
  %1577 = shl i32 %1576, 1
  %1578 = lshr i32 %1560, 2
  %1579 = extractvalue %dx.types.CBufRet.i32 %1573, 2
  %1580 = mul i32 %1579, %1578
  %1581 = lshr i32 %1556, 3
  %1582 = add i32 %1575, %1581
  %1583 = add i32 %1582, %1577
  %1584 = add i32 %1583, %1580
  %1585 = shl i32 %1584, 2
  %1586 = shl i32 %1560, 3
  %1587 = and i32 %1586, 24
  %1588 = and i32 %1556, 7
  %1589 = or i32 %1587, %1588
  %1590 = shl i32 1, %1589
  %1591 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %1585, i32 undef)  ; BufferLoad(srv,index,wot)
  %1592 = extractvalue %dx.types.ResRet.i32 %1591, 0
  %1593 = and i32 %1592, %1590
  %1594 = icmp ne i32 %1593, 0
  br label %1595

; <label>:1595                                    ; preds = %1572, %1500
  %1596 = phi i1 [ %1594, %1572 ], [ false, %1500 ]
  %1597 = uitofp i1 %1596 to float
  %1598 = fadd fast float %1597, %1501
  %1599 = add nuw nsw i32 %1502, 1
  %1600 = icmp eq i32 %1599, 5
  br i1 %1600, label %1601, label %1500

; <label>:1601                                    ; preds = %1595
  %1602 = uitofp i1 %1490 to float
  %1603 = fmul fast float %1602, 0x3FC99999A0000000
  %1604 = fmul fast float %1603, %1598
  %1605 = fadd fast float %1604, -5.000000e-01
  %1606 = fmul fast float %1605, 2.000000e+00
  %1607 = call float @dx.op.unary.f32(i32 7, float %1606)  ; Saturate(value)
  br label %1608

; <label>:1608                                    ; preds = %1601, %1412
  %1609 = phi float [ %1607, %1601 ], [ 0.000000e+00, %1412 ]
  %1610 = fdiv fast float %1462, %1456
  %1611 = fdiv fast float %1463, %1457
  %1612 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1613 = extractvalue %dx.types.CBufRet.f32 %1612, 3
  %1614 = fmul fast float %1613, 0x3FE99999A0000000
  %1615 = fadd fast float %1614, %1610
  %1616 = fsub fast float %1611, %1614
  %1617 = call float @dx.op.unary.f32(i32 22, float %1615)  ; Frc(value)
  %1618 = call float @dx.op.unary.f32(i32 22, float %1616)  ; Frc(value)
  %1619 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %14, float %1617, float %1618, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1620 = extractvalue %dx.types.ResRet.f32 %1619, 0
  %1621 = fmul fast float %1620, 1.500000e+00
  %1622 = call float @dx.op.unary.f32(i32 7, float %1621)  ; Saturate(value)
  %1623 = call float @dx.op.binary.f32(i32 35, float 0x3FE51EB860000000, float %1622)  ; FMax(a,b)
  %1624 = fsub fast float -5.000000e-01, %1462
  %1625 = fadd fast float %1624, %1459
  %1626 = fsub fast float -5.000000e-01, %1463
  %1627 = fadd fast float %1626, %1461
  %1628 = fmul fast float %1625, 2.000000e+00
  %1629 = fmul fast float %1627, 2.000000e+00
  %1630 = call float @dx.op.dot2.f32(i32 54, float %1628, float %1629, float %1628, float %1629)  ; Dot2(ax,ay,bx,by)
  %1631 = call float @dx.op.unary.f32(i32 24, float %1630)  ; Sqrt(value)
  %1632 = fsub fast float 1.000000e+00, %1631
  %1633 = fmul fast float %1632, 2.000000e+00
  %1634 = call float @dx.op.unary.f32(i32 7, float %1633)  ; Saturate(value)
  %1635 = fmul fast float %1613, 0x3F9EB851E0000000
  %1636 = fadd fast float %1635, %1442
  %1637 = call float @dx.op.unary.f32(i32 22, float %1636)  ; Frc(value)
  %1638 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %13, float %1440, float %1637, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1639 = extractvalue %dx.types.ResRet.f32 %1638, 3
  %1640 = call float @dx.op.unary.f32(i32 7, float %1609)  ; Saturate(value)
  %1641 = fmul fast float %1639, %1420
  %1642 = fsub fast float %1640, %1641
  %1643 = call float @dx.op.unary.f32(i32 7, float %1642)  ; Saturate(value)
  %1644 = fmul fast float %1639, 1.250000e+00
  %1645 = fsub fast float %1640, %1644
  %1646 = call float @dx.op.unary.f32(i32 7, float %1645)  ; Saturate(value)
  %1647 = fsub fast float 5.000000e-01, %1442
  %1648 = fmul fast float %1647, 2.000000e+00
  %1649 = call float @dx.op.unary.f32(i32 7, float %1648)  ; Saturate(value)
  %1650 = fmul fast float %1649, %1649
  %1651 = fmul fast float %1650, 7.500000e-01
  %1652 = fadd fast float %1651, 1.000000e+00
  %1653 = fmul fast float %1643, 7.500000e-01
  %1654 = fmul fast float %1653, %1652
  %1655 = fmul fast float %1447, 0x3FD3333340000000
  %1656 = fadd fast float %1655, 0x3FC3333340000000
  %1657 = fmul fast float %1646, %1656
  %1658 = fadd fast float %1654, %1657
  %1659 = fmul fast float %1658, %1658
  %1660 = fmul fast float %1659, %1658
  %1661 = call float @dx.op.unary.f32(i32 7, float %1660)  ; Saturate(value)
  %1662 = fmul fast float %1661, 0x40285C2900000000
  %1663 = fsub fast float 1.400000e+01, %1662
  %1664 = fptoui float %1663 to i32
  %1665 = call float @dx.op.unary.f32(i32 22, float %1663)  ; Frc(value)
  %1666 = mul i32 %1664, 3
  %1667 = add i32 0, %1666
  %1668 = getelementptr [45 x float], [45 x float]* @heat_ramp.v.1dim, i32 0, i32 %1667
  %1669 = load float, float* %1668, align 4
  %1670 = mul i32 %1664, 3
  %1671 = add i32 1, %1670
  %1672 = getelementptr [45 x float], [45 x float]* @heat_ramp.v.1dim, i32 0, i32 %1671
  %1673 = load float, float* %1672, align 4
  %1674 = mul i32 %1664, 3
  %1675 = add i32 2, %1674
  %1676 = getelementptr [45 x float], [45 x float]* @heat_ramp.v.1dim, i32 0, i32 %1675
  %1677 = load float, float* %1676, align 4
  %1678 = add i32 %1664, 1
  %1679 = mul i32 %1678, 3
  %1680 = add i32 0, %1679
  %1681 = getelementptr [45 x float], [45 x float]* @heat_ramp.v.1dim, i32 0, i32 %1680
  %1682 = load float, float* %1681, align 4
  %1683 = mul i32 %1678, 3
  %1684 = add i32 1, %1683
  %1685 = getelementptr [45 x float], [45 x float]* @heat_ramp.v.1dim, i32 0, i32 %1684
  %1686 = load float, float* %1685, align 4
  %1687 = mul i32 %1678, 3
  %1688 = add i32 2, %1687
  %1689 = getelementptr [45 x float], [45 x float]* @heat_ramp.v.1dim, i32 0, i32 %1688
  %1690 = load float, float* %1689, align 4
  %1691 = fsub fast float %1682, %1669
  %1692 = fsub fast float %1686, %1673
  %1693 = fsub fast float %1690, %1677
  %1694 = fmul fast float %1691, %1665
  %1695 = fmul fast float %1692, %1665
  %1696 = fmul fast float %1693, %1665
  %1697 = fadd fast float %1694, %1669
  %1698 = fadd fast float %1695, %1673
  %1699 = fadd fast float %1696, %1677
  %1700 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 17)  ; CBufferLoadLegacy(handle,regIndex)
  %1701 = extractvalue %dx.types.CBufRet.f32 %1700, 0
  %1702 = fmul fast float %1464, %1464
  %1703 = fmul fast float %1702, %1466
  %1704 = fmul fast float %1703, %1623
  %1705 = fmul fast float %1704, %1634
  %1706 = fmul fast float %1705, %1643
  %1707 = fmul fast float %1706, %1701
  %1708 = fmul fast float %1697, %1697
  %1709 = fmul fast float %1708, 2.000000e+00
  %1710 = fmul fast float %1709, %1707
  %1711 = fmul fast float %1698, %1698
  %1712 = fmul fast float %1711, 2.000000e+00
  %1713 = fmul fast float %1712, %1707
  %1714 = fmul fast float %1699, %1699
  %1715 = fmul fast float %1714, 2.000000e+00
  %1716 = fmul fast float %1715, %1707
  %1717 = call float @dx.op.binary.f32(i32 36, float %1710, float 2.000000e+00)  ; FMin(a,b)
  %1718 = call float @dx.op.binary.f32(i32 36, float %1713, float 2.000000e+00)  ; FMin(a,b)
  %1719 = call float @dx.op.binary.f32(i32 36, float %1716, float 2.000000e+00)  ; FMin(a,b)
  %1720 = select i1 %1446, float 0x3FD3333340000000, float 7.500000e-01
  %1721 = fmul float %1720, %1707
  br label %5475

; <label>:1722                                    ; preds = %620
  %1723 = and i32 %635, 262144
  %1724 = icmp eq i32 %637, 0
  %1725 = and i1 %1724, %116
  %1726 = icmp eq i32 %1723, 0
  %1727 = and i1 %115, %1726
  %1728 = or i1 %1725, %1727
  br i1 %1728, label %5475, label %1729, !dx.controlflow.hints !52

; <label>:1729                                    ; preds = %1722
  %1730 = and i32 %635, 511
  %1731 = mul nuw nsw i32 %1730, 20
  br i1 %115, label %1732, label %1988, !dx.controlflow.hints !53

; <label>:1732                                    ; preds = %1729
  %1733 = add nuw nsw i32 %1731, 4
  %1734 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %1733, i32 undef)  ; BufferLoad(srv,index,wot)
  %1735 = extractvalue %dx.types.ResRet.i32 %1734, 0
  %1736 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %1731, i32 undef)  ; BufferLoad(srv,index,wot)
  %1737 = extractvalue %dx.types.ResRet.i32 %1736, 0
  %1738 = and i32 %635, 524288
  %1739 = icmp ne i32 %1738, 0
  %1740 = lshr i32 %1735, 24
  %1741 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 228)  ; CBufferLoadLegacy(handle,regIndex)
  %1742 = extractvalue %dx.types.CBufRet.f32 %1741, 2
  %1743 = extractvalue %dx.types.CBufRet.f32 %1741, 0
  %1744 = call float @dx.op.binary.f32(i32 35, float %43, float %1743)  ; FMax(a,b)
  %1745 = call float @dx.op.binary.f32(i32 36, float %1744, float %1742)  ; FMin(a,b)
  %1746 = call float @dx.op.binary.f32(i32 36, float %43, float %1743)  ; FMin(a,b)
  %1747 = call float @dx.op.binary.f32(i32 35, float %1746, float %1745)  ; FMax(a,b)
  %1748 = fcmp fast oeq float %43, %1747
  %1749 = extractvalue %dx.types.CBufRet.f32 %1741, 3
  %1750 = extractvalue %dx.types.CBufRet.f32 %1741, 1
  %1751 = call float @dx.op.binary.f32(i32 35, float %44, float %1750)  ; FMax(a,b)
  %1752 = call float @dx.op.binary.f32(i32 36, float %1751, float %1749)  ; FMin(a,b)
  %1753 = call float @dx.op.binary.f32(i32 36, float %44, float %1750)  ; FMin(a,b)
  %1754 = call float @dx.op.binary.f32(i32 35, float %1753, float %1752)  ; FMax(a,b)
  %1755 = fcmp fast oeq float %44, %1754
  %1756 = and i1 %1748, %1755
  %1757 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 224)  ; CBufferLoadLegacy(handle,regIndex)
  %1758 = extractvalue %dx.types.CBufRet.f32 %1757, 1
  %1759 = select i1 %1756, float %1758, float 1.000000e+00
  %1760 = icmp ne i32 %1740, 0
  %1761 = and i1 %98, %1760
  br i1 %1761, label %1762, label %1799, !dx.controlflow.hints !44

; <label>:1762                                    ; preds = %1732
  %1763 = sitofp i32 %1740 to float
  %1764 = fmul fast float %1763, 0x3F70101020000000
  %1765 = fmul fast float %1764, %1759
  %1766 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1767 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %1768 = extractvalue %dx.types.CBufRet.f32 %1766, 3
  %1769 = extractvalue %dx.types.CBufRet.f32 %1767, 3
  %1770 = select i1 %1739, float %1768, float %1769
  %1771 = fmul fast float %1770, %1765
  %1772 = extractvalue %dx.types.CBufRet.f32 %1766, 2
  %1773 = extractvalue %dx.types.CBufRet.f32 %1767, 2
  %1774 = select i1 %1739, float %1772, float %1773
  %1775 = fmul fast float %1774, %1765
  %1776 = extractvalue %dx.types.CBufRet.f32 %1766, 1
  %1777 = extractvalue %dx.types.CBufRet.f32 %1767, 1
  %1778 = select i1 %1739, float %1776, float %1777
  %1779 = fmul fast float %1778, %1765
  %1780 = extractvalue %dx.types.CBufRet.f32 %1766, 0
  %1781 = extractvalue %dx.types.CBufRet.f32 %1767, 0
  %1782 = select i1 %1739, float %1780, float %1781
  %1783 = fmul fast float %1782, %1765
  %1784 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %1785 = extractvalue %dx.types.CBufRet.f32 %1784, 2
  %1786 = fmul fast float %1785, %1765
  %1787 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %1788 = extractvalue %dx.types.CBufRet.f32 %1787, 3
  %1789 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %1790 = extractvalue %dx.types.CBufRet.f32 %1789, 0
  %1791 = extractvalue %dx.types.CBufRet.f32 %1789, 1
  %1792 = extractvalue %dx.types.CBufRet.f32 %1789, 2
  %1793 = extractvalue %dx.types.CBufRet.f32 %1789, 3
  %1794 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %1795 = extractvalue %dx.types.CBufRet.f32 %1794, 0
  %1796 = extractvalue %dx.types.CBufRet.f32 %1794, 1
  %1797 = extractvalue %dx.types.CBufRet.f32 %1794, 2
  %1798 = extractvalue %dx.types.CBufRet.f32 %1794, 3
  br label %1858

; <label>:1799                                    ; preds = %1732
  %1800 = lshr i32 %1735, 8
  %1801 = and i32 %1800, 65535
  %1802 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1801)  ; LegacyF16ToF32(value)
  %1803 = and i32 %635, 2097152
  %1804 = icmp ne i32 %1803, 0
  %1805 = and i32 %635, 1048576
  %1806 = icmp ne i32 %1805, 0
  %1807 = and i32 %635, 65536
  %1808 = icmp ne i32 %1807, 0
  %1809 = select i1 %1808, float 1.000000e+00, float 0.000000e+00
  %1810 = and i32 %635, 32768
  %1811 = icmp ne i32 %1810, 0
  %1812 = select i1 %1811, float 0.000000e+00, float 1.000000e+00
  %1813 = select i1 %98, float %1759, float %1812
  %1814 = fmul fast float %1813, %1809
  %1815 = select i1 %1806, float 0.000000e+00, float %1814
  %1816 = lshr i32 %1737, 24
  %1817 = uitofp i32 %1816 to float
  %1818 = fmul fast float %1817, 0x3F70101020000000
  %1819 = fmul fast float %1818, %1813
  %1820 = lshr i32 %1737, 16
  %1821 = and i32 %1820, 255
  %1822 = uitofp i32 %1821 to float
  %1823 = fmul fast float %1822, 0x3F70101020000000
  %1824 = fmul fast float %1823, %1813
  %1825 = lshr i32 %1737, 8
  %1826 = and i32 %1825, 255
  %1827 = uitofp i32 %1826 to float
  %1828 = fmul fast float %1827, 0x3F70101020000000
  %1829 = fmul fast float %1828, %1813
  %1830 = and i32 %1737, 255
  %1831 = uitofp i32 %1830 to float
  %1832 = fmul fast float %1831, 0x3F70101020000000
  %1833 = fmul fast float %1832, %1813
  %1834 = icmp ne i32 %1723, 0
  %1835 = select i1 %1834, float 1.000000e+00, float 0.000000e+00
  %1836 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %1837 = extractvalue %dx.types.CBufRet.f32 %1836, 0
  %1838 = extractvalue %dx.types.CBufRet.f32 %1836, 1
  %1839 = extractvalue %dx.types.CBufRet.f32 %1836, 2
  %1840 = extractvalue %dx.types.CBufRet.f32 %1836, 3
  %1841 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %1842 = extractvalue %dx.types.CBufRet.f32 %1841, 0
  %1843 = extractvalue %dx.types.CBufRet.f32 %1841, 1
  %1844 = extractvalue %dx.types.CBufRet.f32 %1841, 2
  %1845 = extractvalue %dx.types.CBufRet.f32 %1841, 3
  %1846 = fmul fast float %1833, %1835
  %1847 = fmul fast float %1829, %1835
  %1848 = fmul fast float %1824, %1835
  %1849 = fmul fast float %1819, %1835
  %1850 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1851 = extractvalue %dx.types.CBufRet.f32 %1850, 0
  %1852 = fmul fast float %1851, 2.000000e+00
  %1853 = select i1 %1804, float %1852, float 1.000000e+00
  %1854 = fmul fast float %1853, %1846
  %1855 = fmul fast float %1853, %1847
  %1856 = fmul fast float %1853, %1848
  %1857 = fmul fast float %1853, %1849
  br label %1858

; <label>:1858                                    ; preds = %1799, %1762
  %1859 = phi float [ %1854, %1799 ], [ %1783, %1762 ]
  %1860 = phi float [ %1855, %1799 ], [ %1779, %1762 ]
  %1861 = phi float [ %1856, %1799 ], [ %1775, %1762 ]
  %1862 = phi float [ %1857, %1799 ], [ %1771, %1762 ]
  %1863 = phi float [ %1842, %1799 ], [ %1795, %1762 ]
  %1864 = phi float [ %1843, %1799 ], [ %1796, %1762 ]
  %1865 = phi float [ %1844, %1799 ], [ %1797, %1762 ]
  %1866 = phi float [ %1845, %1799 ], [ %1798, %1762 ]
  %1867 = phi float [ %1837, %1799 ], [ %1790, %1762 ]
  %1868 = phi float [ %1838, %1799 ], [ %1791, %1762 ]
  %1869 = phi float [ %1839, %1799 ], [ %1792, %1762 ]
  %1870 = phi float [ %1840, %1799 ], [ %1793, %1762 ]
  %1871 = phi float [ %1815, %1799 ], [ %1786, %1762 ]
  %1872 = phi float [ %1802, %1799 ], [ %1788, %1762 ]
  %1873 = fcmp fast oeq float %1872, 0.000000e+00
  br i1 %1873, label %1973, label %1874, !dx.controlflow.hints !47

; <label>:1874                                    ; preds = %1858
  %1875 = fmul fast float %1872, %64
  %1876 = fptosi float %1875 to i32
  %1877 = fmul fast float %1872, %65
  %1878 = fptosi float %1877 to i32
  %1879 = call i32 @dx.op.binary.i32(i32 37, i32 1, i32 %1876)  ; IMax(a,b)
  %1880 = call i32 @dx.op.binary.i32(i32 37, i32 1, i32 %1878)  ; IMax(a,b)
  %1881 = sub i32 %63, %1880
  %1882 = or i32 %1881, %62
  %1883 = icmp slt i32 %1882, 0
  %1884 = fptosi float %58 to i32
  %1885 = fptosi float %59 to i32
  %1886 = icmp sge i32 %62, %1884
  %1887 = icmp sge i32 %1881, %1885
  %1888 = or i1 %1886, %1887
  %1889 = or i1 %1883, %1888
  br i1 %1889, label %1903, label %1890, !dx.controlflow.hints !48

; <label>:1890                                    ; preds = %1874
  %1891 = lshr i32 %1881, 2
  %1892 = mul i32 %83, %1891
  %1893 = add i32 %101, %1892
  %1894 = shl i32 %1893, 2
  %1895 = shl i32 %1881, 3
  %1896 = and i32 %1895, 24
  %1897 = or i32 %1896, %92
  %1898 = shl i32 1, %1897
  %1899 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %1894, i32 undef)  ; BufferLoad(srv,index,wot)
  %1900 = extractvalue %dx.types.ResRet.i32 %1899, 0
  %1901 = and i32 %1900, %1898
  %1902 = icmp ne i32 %1901, 0
  br label %1903

; <label>:1903                                    ; preds = %1890, %1874
  %1904 = phi i1 [ %1902, %1890 ], [ false, %1874 ]
  %1905 = add i32 %1880, %63
  %1906 = or i32 %1905, %62
  %1907 = icmp slt i32 %1906, 0
  %1908 = icmp sge i32 %1905, %1885
  %1909 = or i1 %1886, %1908
  %1910 = or i1 %1907, %1909
  br i1 %1910, label %1924, label %1911, !dx.controlflow.hints !48

; <label>:1911                                    ; preds = %1903
  %1912 = lshr i32 %1905, 2
  %1913 = mul i32 %83, %1912
  %1914 = add i32 %101, %1913
  %1915 = shl i32 %1914, 2
  %1916 = shl i32 %1905, 3
  %1917 = and i32 %1916, 24
  %1918 = or i32 %1917, %92
  %1919 = shl i32 1, %1918
  %1920 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %1915, i32 undef)  ; BufferLoad(srv,index,wot)
  %1921 = extractvalue %dx.types.ResRet.i32 %1920, 0
  %1922 = and i32 %1921, %1919
  %1923 = icmp ne i32 %1922, 0
  br label %1924

; <label>:1924                                    ; preds = %1911, %1903
  %1925 = phi i1 [ %1923, %1911 ], [ false, %1903 ]
  %1926 = and i1 %1904, %1925
  %1927 = sub i32 %62, %1879
  %1928 = or i32 %1927, %63
  %1929 = icmp slt i32 %1928, 0
  %1930 = icmp sge i32 %1927, %1884
  %1931 = icmp sge i32 %63, %1885
  %1932 = or i1 %1930, %1931
  %1933 = or i1 %1929, %1932
  br i1 %1933, label %1947, label %1934, !dx.controlflow.hints !48

; <label>:1934                                    ; preds = %1924
  %1935 = lshr i32 %1927, 3
  %1936 = add i32 %80, %1935
  %1937 = add i32 %1936, %99
  %1938 = add i32 %1937, %84
  %1939 = shl i32 %1938, 2
  %1940 = and i32 %1927, 7
  %1941 = or i32 %1940, %91
  %1942 = shl i32 1, %1941
  %1943 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %1939, i32 undef)  ; BufferLoad(srv,index,wot)
  %1944 = extractvalue %dx.types.ResRet.i32 %1943, 0
  %1945 = and i32 %1944, %1942
  %1946 = icmp ne i32 %1945, 0
  br label %1947

; <label>:1947                                    ; preds = %1934, %1924
  %1948 = phi i1 [ %1946, %1934 ], [ false, %1924 ]
  %1949 = and i1 %1926, %1948
  %1950 = add i32 %1879, %62
  %1951 = or i32 %1950, %63
  %1952 = icmp slt i32 %1951, 0
  %1953 = icmp sge i32 %1950, %1884
  %1954 = or i1 %1953, %1931
  %1955 = or i1 %1952, %1954
  br i1 %1955, label %1969, label %1956, !dx.controlflow.hints !48

; <label>:1956                                    ; preds = %1947
  %1957 = lshr i32 %1950, 3
  %1958 = add i32 %80, %1957
  %1959 = add i32 %1958, %99
  %1960 = add i32 %1959, %84
  %1961 = shl i32 %1960, 2
  %1962 = and i32 %1950, 7
  %1963 = or i32 %1962, %91
  %1964 = shl i32 1, %1963
  %1965 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %1961, i32 undef)  ; BufferLoad(srv,index,wot)
  %1966 = extractvalue %dx.types.ResRet.i32 %1965, 0
  %1967 = and i32 %1966, %1964
  %1968 = icmp ne i32 %1967, 0
  br label %1969

; <label>:1969                                    ; preds = %1956, %1947
  %1970 = phi i1 [ %1968, %1956 ], [ false, %1947 ]
  %1971 = and i1 %1949, %1970
  %1972 = xor i1 %1971, true
  br label %1973

; <label>:1973                                    ; preds = %1969, %1858
  %1974 = phi i1 [ %1972, %1969 ], [ false, %1858 ]
  br i1 %1974, label %5475, label %1975, !dx.controlflow.hints !49

; <label>:1975                                    ; preds = %1973
  %1976 = select i1 %77, float %1863, float %1867
  %1977 = select i1 %77, float %1864, float %1868
  %1978 = select i1 %77, float %1865, float %1869
  %1979 = select i1 %77, float %1866, float %1870
  %1980 = fmul fast float %1976, %1859
  %1981 = fmul fast float %1980, %1871
  %1982 = fmul fast float %1977, %1860
  %1983 = fmul fast float %1982, %1871
  %1984 = fmul fast float %1978, %1861
  %1985 = fmul fast float %1984, %1871
  %1986 = fmul fast float %1979, %1862
  %1987 = fmul fast float %1986, %1871
  br label %5475

; <label>:1988                                    ; preds = %1729
  %1989 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %1731, i32 undef)  ; BufferLoad(srv,index,wot)
  %1990 = extractvalue %dx.types.ResRet.i32 %1989, 0
  %1991 = and i32 %1990, 255
  %1992 = uitofp i32 %1991 to float
  %1993 = lshr i32 %1990, 8
  %1994 = and i32 %1993, 255
  %1995 = uitofp i32 %1994 to float
  %1996 = lshr i32 %1990, 16
  %1997 = and i32 %1996, 255
  %1998 = uitofp i32 %1997 to float
  %1999 = lshr i32 %1990, 24
  %2000 = uitofp i32 %1999 to float
  %2001 = fmul fast float %1992, 0x3F70101020000000
  %2002 = fmul fast float %1995, 0x3F70101020000000
  %2003 = fmul fast float %1998, 0x3F70101020000000
  %2004 = fmul fast float %2000, 0x3F70101020000000
  %2005 = fsub fast float 1.000000e+00, %2004
  %2006 = lshr i32 %635, 5
  %2007 = and i32 %2006, 1008
  %2008 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %2007, i32 undef)  ; BufferLoad(srv,index,wot)
  %2009 = extractvalue %dx.types.ResRet.i32 %2008, 0
  %2010 = and i32 %2009, 1022
  %2011 = uitofp i32 %2010 to float
  %2012 = fmul fast float %2011, 0x3F940A0500000000
  %2013 = fadd fast float %2012, -1.000000e+01
  %2014 = lshr i32 %2009, 10
  %2015 = and i32 %2014, 1022
  %2016 = uitofp i32 %2015 to float
  %2017 = fmul fast float %2016, 0x3F940A0500000000
  %2018 = fadd fast float %2017, -1.000000e+01
  %2019 = lshr i32 %2009, 20
  %2020 = and i32 %2019, 1022
  %2021 = uitofp i32 %2020 to float
  %2022 = fmul fast float %2021, 0x3F840A0500000000
  %2023 = add nuw nsw i32 %1731, 12
  %2024 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %2023, i32 undef)  ; BufferLoad(srv,index,wot)
  %2025 = extractvalue %dx.types.ResRet.i32 %2024, 0
  %2026 = and i32 %2025, 65535
  %2027 = uitofp i32 %2026 to float
  %2028 = fmul fast float %2027, 0x3EF0002000000000
  %2029 = lshr i32 %2025, 16
  %2030 = uitofp i32 %2029 to float
  %2031 = fmul fast float %2030, 0x3EF0002000000000
  %2032 = add nuw nsw i32 %1731, 8
  %2033 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %2032, i32 undef)  ; BufferLoad(srv,index,wot)
  %2034 = extractvalue %dx.types.ResRet.i32 %2033, 0
  %2035 = and i32 %2034, 65535
  %2036 = uitofp i32 %2035 to float
  %2037 = fmul fast float %2036, 0x3EF0002000000000
  %2038 = lshr i32 %2034, 16
  %2039 = uitofp i32 %2038 to float
  %2040 = fmul fast float %2039, 0x3EF0002000000000
  %2041 = fsub fast float %43, %2037
  %2042 = fdiv fast float %2041, %2028
  %2043 = fsub fast float %44, %2040
  %2044 = fdiv fast float %2043, %2031
  %2045 = add nuw nsw i32 %1731, 16
  %2046 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %2045, i32 undef)  ; BufferLoad(srv,index,wot)
  %2047 = extractvalue %dx.types.ResRet.f32 %2046, 0
  %2048 = fcmp fast olt float %2047, 1.000000e+01
  %2049 = uitofp i1 %2048 to float
  %2050 = fdiv fast float 2.400000e+02, %2047
  %2051 = call float @dx.op.unary.f32(i32 7, float %2050)  ; Saturate(value)
  %2052 = fdiv fast float 3.200000e+02, %2047
  %2053 = call float @dx.op.unary.f32(i32 7, float %2052)  ; Saturate(value)
  %2054 = fmul fast float %2053, 5.000000e-01
  %2055 = fadd fast float %2054, 2.500000e-01
  %2056 = fdiv fast float 3.200000e+01, %2055
  %2057 = select i1 %2048, float 3.200000e+01, float %2056
  %2058 = fmul fast float %2057, 1.600000e+01
  %2059 = fmul fast float %2057, 9.000000e+00
  %2060 = fmul fast float %2028, %2042
  %2061 = fmul fast float %2060, %2058
  %2062 = fmul fast float %2031, %2044
  %2063 = fmul fast float %2062, %2059
  %2064 = call float @dx.op.unary.f32(i32 29, float %2061)  ; Round_z(value)
  %2065 = call float @dx.op.unary.f32(i32 29, float %2063)  ; Round_z(value)
  %2066 = call float @dx.op.unary.f32(i32 7, float %2004)  ; Saturate(value)
  %2067 = fmul fast float %2066, 2.000000e+00
  %2068 = fsub fast float 3.000000e+00, %2067
  %2069 = fmul fast float %2051, 4.000000e+01
  %2070 = fmul fast float %2049, 1.000000e+02
  %2071 = fadd fast float %2070, %2069
  %2072 = fmul fast float %2022, %2071
  %2073 = fptoui float %2072 to i32
  %2074 = uitofp i32 %62 to float
  %2075 = uitofp i32 %63 to float
  %2076 = fptoui float %2074 to i32
  %2077 = fptoui float %2075 to i32
  %2078 = lshr i32 %2077, 2
  %2079 = mul i32 %83, %2078
  %2080 = lshr i32 %2076, 3
  %2081 = add i32 %80, %2080
  %2082 = add i32 %2081, %99
  %2083 = add i32 %2082, %2079
  %2084 = shl i32 %2083, 2
  %2085 = shl i32 %2077, 3
  %2086 = and i32 %2085, 24
  %2087 = and i32 %2076, 7
  %2088 = or i32 %2086, %2087
  %2089 = shl i32 1, %2088
  %2090 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %2084, i32 undef)  ; BufferLoad(srv,index,wot)
  %2091 = extractvalue %dx.types.ResRet.i32 %2090, 0
  %2092 = and i32 %2091, %2089
  %2093 = icmp ne i32 %2092, 0
  %2094 = icmp eq i32 %2073, 0
  br i1 %2094, label %2211, label %2095, !dx.controlflow.hints !51

; <label>:2095                                    ; preds = %1988
  %2096 = uitofp i32 %2073 to float
  %2097 = fmul fast float %64, 5.000000e-01
  %2098 = fmul fast float %2097, %2096
  %2099 = fmul fast float %65, 5.000000e-01
  %2100 = fmul fast float %2099, %2096
  %2101 = call float @dx.op.binary.f32(i32 35, float 5.000000e-01, float %2098)  ; FMax(a,b)
  %2102 = call float @dx.op.binary.f32(i32 35, float 5.000000e-01, float %2100)  ; FMax(a,b)
  br label %2103

; <label>:2103                                    ; preds = %2198, %2095
  %2104 = phi float [ 0.000000e+00, %2095 ], [ %2201, %2198 ]
  %2105 = phi i32 [ 0, %2095 ], [ %2202, %2198 ]
  %2106 = fmul fast float %43, 0x3FF280E1E0000000
  %2107 = fmul fast float %44, 0x3FF280E1E0000000
  %2108 = sitofp i32 %2105 to float
  %2109 = fmul fast float %2108, 0x3FB99999A0000000
  %2110 = fadd fast float %2109, %2106
  %2111 = fadd fast float %2109, %2107
  %2112 = fmul fast float %2110, 1.024000e+03
  %2113 = fmul fast float %2111, 1.024000e+03
  %2114 = fadd fast float %2112, -5.120000e+02
  %2115 = fadd fast float %2113, -5.120000e+02
  %2116 = fmul fast float %2110, 0x4081BEDF00000000
  %2117 = fadd fast float %2116, 0xC071BEDF00000000
  %2118 = call float @dx.op.unary.f32(i32 22, float %2117)  ; Frc(value)
  %2119 = fmul fast float %2114, %2118
  %2120 = fadd fast float %2119, %2115
  %2121 = fmul fast float %2111, 0x4073BEBE20000000
  %2122 = fadd fast float %2121, 0xC063BEBE20000000
  %2123 = call float @dx.op.unary.f32(i32 22, float %2122)  ; Frc(value)
  %2124 = fmul fast float %2115, %2123
  %2125 = fadd fast float %2124, %2114
  %2126 = fmul fast float %2120, %2125
  %2127 = call float @dx.op.unary.f32(i32 22, float %2126)  ; Frc(value)
  %2128 = fmul fast float %2127, 2.000000e+00
  %2129 = fadd fast float %2128, -1.000000e+00
  %2130 = fmul fast float %2129, %2101
  %2131 = fmul fast float %43, 0x3FEB681740000000
  %2132 = fmul fast float %44, 0x3FEB681740000000
  %2133 = fmul fast float %2108, 0x3FC99999A0000000
  %2134 = fadd fast float %2133, 1.250000e-01
  %2135 = fadd fast float %2134, %2131
  %2136 = fadd fast float %2134, %2132
  %2137 = fmul fast float %2135, 1.024000e+03
  %2138 = fmul fast float %2136, 1.024000e+03
  %2139 = fadd fast float %2137, -5.120000e+02
  %2140 = fadd fast float %2138, -5.120000e+02
  %2141 = fmul fast float %2135, 0x4081BEDF00000000
  %2142 = fadd fast float %2141, 0xC071BEDF00000000
  %2143 = call float @dx.op.unary.f32(i32 22, float %2142)  ; Frc(value)
  %2144 = fmul fast float %2139, %2143
  %2145 = fadd fast float %2144, %2140
  %2146 = fmul fast float %2136, 0x4073BEBE20000000
  %2147 = fadd fast float %2146, 0xC063BEBE20000000
  %2148 = call float @dx.op.unary.f32(i32 22, float %2147)  ; Frc(value)
  %2149 = fmul fast float %2140, %2148
  %2150 = fadd fast float %2149, %2139
  %2151 = fmul fast float %2145, %2150
  %2152 = call float @dx.op.unary.f32(i32 22, float %2151)  ; Frc(value)
  %2153 = fmul fast float %2152, 2.000000e+00
  %2154 = fadd fast float %2153, -1.000000e+00
  %2155 = fmul fast float %2154, %2102
  %2156 = fptosi float %2130 to i32
  %2157 = sitofp i32 %2156 to float
  %2158 = fadd fast float %2157, %2074
  %2159 = fptosi float %2158 to i32
  %2160 = fptosi float %2155 to i32
  %2161 = sitofp i32 %2160 to float
  %2162 = fadd fast float %2161, %2075
  %2163 = fptosi float %2162 to i32
  %2164 = or i32 %2163, %2159
  %2165 = icmp slt i32 %2164, 0
  %2166 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %2167 = extractvalue %dx.types.CBufRet.f32 %2166, 0
  %2168 = extractvalue %dx.types.CBufRet.f32 %2166, 1
  %2169 = fptosi float %2167 to i32
  %2170 = fptosi float %2168 to i32
  %2171 = icmp sge i32 %2159, %2169
  %2172 = icmp sge i32 %2163, %2170
  %2173 = or i1 %2171, %2172
  %2174 = or i1 %2165, %2173
  br i1 %2174, label %2198, label %2175, !dx.controlflow.hints !48

; <label>:2175                                    ; preds = %2103
  %2176 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %17, i32 51)  ; CBufferLoadLegacy(handle,regIndex)
  %2177 = extractvalue %dx.types.CBufRet.i32 %2176, 1
  %2178 = shl i32 %2177, 2
  %2179 = extractvalue %dx.types.CBufRet.i32 %2176, 3
  %2180 = shl i32 %2179, 1
  %2181 = lshr i32 %2163, 2
  %2182 = extractvalue %dx.types.CBufRet.i32 %2176, 2
  %2183 = mul i32 %2182, %2181
  %2184 = lshr i32 %2159, 3
  %2185 = add i32 %2178, %2184
  %2186 = add i32 %2185, %2180
  %2187 = add i32 %2186, %2183
  %2188 = shl i32 %2187, 2
  %2189 = shl i32 %2163, 3
  %2190 = and i32 %2189, 24
  %2191 = and i32 %2159, 7
  %2192 = or i32 %2190, %2191
  %2193 = shl i32 1, %2192
  %2194 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %2188, i32 undef)  ; BufferLoad(srv,index,wot)
  %2195 = extractvalue %dx.types.ResRet.i32 %2194, 0
  %2196 = and i32 %2195, %2193
  %2197 = icmp ne i32 %2196, 0
  br label %2198

; <label>:2198                                    ; preds = %2175, %2103
  %2199 = phi i1 [ %2197, %2175 ], [ false, %2103 ]
  %2200 = uitofp i1 %2199 to float
  %2201 = fadd fast float %2200, %2104
  %2202 = add nuw nsw i32 %2105, 1
  %2203 = icmp eq i32 %2202, 5
  br i1 %2203, label %2204, label %2103

; <label>:2204                                    ; preds = %2198
  %2205 = uitofp i1 %2093 to float
  %2206 = fmul fast float %2205, 0x3FC99999A0000000
  %2207 = fmul fast float %2206, %2201
  %2208 = fadd fast float %2207, -5.000000e-01
  %2209 = fmul fast float %2208, 2.000000e+00
  %2210 = call float @dx.op.unary.f32(i32 7, float %2209)  ; Saturate(value)
  br label %2211

; <label>:2211                                    ; preds = %2204, %1988
  %2212 = phi float [ %2210, %2204 ], [ 0.000000e+00, %1988 ]
  %2213 = fdiv fast float %2064, %2058
  %2214 = fdiv fast float %2065, %2059
  %2215 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2216 = extractvalue %dx.types.CBufRet.f32 %2215, 3
  %2217 = fmul fast float %2216, %2013
  %2218 = fadd fast float %2217, %2213
  %2219 = fsub fast float %2214, %2217
  %2220 = call float @dx.op.unary.f32(i32 22, float %2218)  ; Frc(value)
  %2221 = call float @dx.op.unary.f32(i32 22, float %2219)  ; Frc(value)
  %2222 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %14, float %2220, float %2221, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2223 = extractvalue %dx.types.ResRet.f32 %2222, 0
  %2224 = fmul fast float %2223, %2018
  %2225 = call float @dx.op.unary.f32(i32 7, float %2224)  ; Saturate(value)
  %2226 = call float @dx.op.binary.f32(i32 35, float 0x3F847AE140000000, float %2225)  ; FMax(a,b)
  %2227 = fsub fast float -5.000000e-01, %2064
  %2228 = fadd fast float %2227, %2061
  %2229 = fsub fast float -5.000000e-01, %2065
  %2230 = fadd fast float %2229, %2063
  %2231 = fmul fast float %2228, 2.000000e+00
  %2232 = fmul fast float %2230, 2.000000e+00
  %2233 = call float @dx.op.dot2.f32(i32 54, float %2231, float %2232, float %2231, float %2232)  ; Dot2(ax,ay,bx,by)
  %2234 = call float @dx.op.unary.f32(i32 24, float %2233)  ; Sqrt(value)
  %2235 = fsub fast float 1.000000e+00, %2234
  %2236 = fmul fast float %2235, 2.000000e+00
  %2237 = call float @dx.op.unary.f32(i32 7, float %2236)  ; Saturate(value)
  %2238 = fadd fast float %2217, %2044
  %2239 = call float @dx.op.unary.f32(i32 22, float %2238)  ; Frc(value)
  %2240 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %13, float %2042, float %2239, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2241 = extractvalue %dx.types.ResRet.f32 %2240, 3
  %2242 = call float @dx.op.unary.f32(i32 7, float %2212)  ; Saturate(value)
  %2243 = fmul fast float %2241, %2005
  %2244 = fsub fast float %2242, %2243
  %2245 = call float @dx.op.unary.f32(i32 7, float %2244)  ; Saturate(value)
  %2246 = fmul fast float %2241, 1.250000e+00
  %2247 = fsub fast float %2242, %2246
  %2248 = call float @dx.op.unary.f32(i32 7, float %2247)  ; Saturate(value)
  %2249 = fmul fast float %2248, %2248
  %2250 = fmul fast float %2249, %2248
  %2251 = call float @dx.op.unary.f32(i32 7, float %2250)  ; Saturate(value)
  %2252 = fmul fast float %2251, 0x40285C2900000000
  %2253 = fsub fast float 1.400000e+01, %2252
  %2254 = fptoui float %2253 to i32
  %2255 = call float @dx.op.unary.f32(i32 22, float %2253)  ; Frc(value)
  %2256 = mul i32 %2254, 3
  %2257 = add i32 0, %2256
  %2258 = getelementptr [45 x float], [45 x float]* @supp_ramp.v.1dim, i32 0, i32 %2257
  %2259 = load float, float* %2258, align 4
  %2260 = mul i32 %2254, 3
  %2261 = add i32 1, %2260
  %2262 = getelementptr [45 x float], [45 x float]* @supp_ramp.v.1dim, i32 0, i32 %2261
  %2263 = load float, float* %2262, align 4
  %2264 = mul i32 %2254, 3
  %2265 = add i32 2, %2264
  %2266 = getelementptr [45 x float], [45 x float]* @supp_ramp.v.1dim, i32 0, i32 %2265
  %2267 = load float, float* %2266, align 4
  %2268 = add i32 %2254, 1
  %2269 = mul i32 %2268, 3
  %2270 = add i32 0, %2269
  %2271 = getelementptr [45 x float], [45 x float]* @supp_ramp.v.1dim, i32 0, i32 %2270
  %2272 = load float, float* %2271, align 4
  %2273 = mul i32 %2268, 3
  %2274 = add i32 1, %2273
  %2275 = getelementptr [45 x float], [45 x float]* @supp_ramp.v.1dim, i32 0, i32 %2274
  %2276 = load float, float* %2275, align 4
  %2277 = mul i32 %2268, 3
  %2278 = add i32 2, %2277
  %2279 = getelementptr [45 x float], [45 x float]* @supp_ramp.v.1dim, i32 0, i32 %2278
  %2280 = load float, float* %2279, align 4
  %2281 = fsub fast float %2272, %2259
  %2282 = fsub fast float %2276, %2263
  %2283 = fsub fast float %2280, %2267
  %2284 = fmul fast float %2281, %2255
  %2285 = fmul fast float %2282, %2255
  %2286 = fmul fast float %2283, %2255
  %2287 = fadd fast float %2284, %2259
  %2288 = fadd fast float %2285, %2263
  %2289 = fadd fast float %2286, %2267
  %2290 = fmul fast float %2001, %2287
  %2291 = fmul fast float %2002, %2288
  %2292 = fmul fast float %2003, %2289
  %2293 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 17)  ; CBufferLoadLegacy(handle,regIndex)
  %2294 = extractvalue %dx.types.CBufRet.f32 %2293, 0
  %2295 = fmul fast float %2066, %2066
  %2296 = fmul fast float %2295, %2068
  %2297 = fmul fast float %2296, %2226
  %2298 = fmul fast float %2297, %2237
  %2299 = fmul fast float %2298, %2245
  %2300 = fmul fast float %2299, %2294
  %2301 = fmul fast float %2290, %2290
  %2302 = fmul fast float %2301, 5.000000e+00
  %2303 = fmul fast float %2302, %2300
  %2304 = fmul fast float %2291, %2291
  %2305 = fmul fast float %2304, 5.000000e+00
  %2306 = fmul fast float %2305, %2300
  %2307 = fmul fast float %2300, 5.000000e+00
  %2308 = fmul fast float %2292, %2292
  %2309 = fmul fast float %2308, %2307
  %2310 = call float @dx.op.binary.f32(i32 36, float %2303, float 2.000000e+00)  ; FMin(a,b)
  %2311 = call float @dx.op.binary.f32(i32 36, float %2306, float 2.000000e+00)  ; FMin(a,b)
  %2312 = call float @dx.op.binary.f32(i32 36, float %2309, float 2.000000e+00)  ; FMin(a,b)
  %2313 = select i1 %2048, float 0x3FD3333340000000, float 7.500000e-01
  %2314 = fmul float %2313, %2300
  br label %5475

; <label>:2315                                    ; preds = %620
  %2316 = and i32 %635, 511
  %2317 = mul nuw nsw i32 %2316, 20
  %2318 = add nuw nsw i32 %2317, 4
  %2319 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %2318, i32 undef)  ; BufferLoad(srv,index,wot)
  %2320 = extractvalue %dx.types.ResRet.i32 %2319, 0
  %2321 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %2317, i32 undef)  ; BufferLoad(srv,index,wot)
  %2322 = extractvalue %dx.types.ResRet.i32 %2321, 0
  %2323 = and i32 %2322, 255
  %2324 = uitofp i32 %2323 to float
  %2325 = lshr i32 %2322, 8
  %2326 = and i32 %2325, 255
  %2327 = uitofp i32 %2326 to float
  %2328 = lshr i32 %2322, 16
  %2329 = and i32 %2328, 255
  %2330 = uitofp i32 %2329 to float
  %2331 = lshr i32 %2322, 24
  %2332 = uitofp i32 %2331 to float
  %2333 = fmul fast float %2324, 0x3F70101020000000
  %2334 = fmul fast float %2327, 0x3F70101020000000
  %2335 = fmul fast float %2330, 0x3F70101020000000
  %2336 = fmul fast float %2332, 0x3F70101020000000
  %2337 = lshr i32 %2320, 8
  %2338 = and i32 %2337, 65535
  %2339 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2338)  ; LegacyF16ToF32(value)
  %2340 = fcmp fast oeq float %2339, 0.000000e+00
  br i1 %2340, label %2440, label %2341, !dx.controlflow.hints !47

; <label>:2341                                    ; preds = %2315
  %2342 = fmul fast float %2339, %64
  %2343 = fptosi float %2342 to i32
  %2344 = fmul fast float %2339, %65
  %2345 = fptosi float %2344 to i32
  %2346 = call i32 @dx.op.binary.i32(i32 37, i32 1, i32 %2343)  ; IMax(a,b)
  %2347 = call i32 @dx.op.binary.i32(i32 37, i32 1, i32 %2345)  ; IMax(a,b)
  %2348 = sub i32 %63, %2347
  %2349 = or i32 %2348, %62
  %2350 = icmp slt i32 %2349, 0
  %2351 = fptosi float %58 to i32
  %2352 = fptosi float %59 to i32
  %2353 = icmp sge i32 %62, %2351
  %2354 = icmp sge i32 %2348, %2352
  %2355 = or i1 %2353, %2354
  %2356 = or i1 %2350, %2355
  br i1 %2356, label %2370, label %2357, !dx.controlflow.hints !48

; <label>:2357                                    ; preds = %2341
  %2358 = lshr i32 %2348, 2
  %2359 = mul i32 %83, %2358
  %2360 = add i32 %101, %2359
  %2361 = shl i32 %2360, 2
  %2362 = shl i32 %2348, 3
  %2363 = and i32 %2362, 24
  %2364 = or i32 %2363, %92
  %2365 = shl i32 1, %2364
  %2366 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %2361, i32 undef)  ; BufferLoad(srv,index,wot)
  %2367 = extractvalue %dx.types.ResRet.i32 %2366, 0
  %2368 = and i32 %2367, %2365
  %2369 = icmp ne i32 %2368, 0
  br label %2370

; <label>:2370                                    ; preds = %2357, %2341
  %2371 = phi i1 [ %2369, %2357 ], [ false, %2341 ]
  %2372 = add i32 %2347, %63
  %2373 = or i32 %2372, %62
  %2374 = icmp slt i32 %2373, 0
  %2375 = icmp sge i32 %2372, %2352
  %2376 = or i1 %2353, %2375
  %2377 = or i1 %2374, %2376
  br i1 %2377, label %2391, label %2378, !dx.controlflow.hints !48

; <label>:2378                                    ; preds = %2370
  %2379 = lshr i32 %2372, 2
  %2380 = mul i32 %83, %2379
  %2381 = add i32 %101, %2380
  %2382 = shl i32 %2381, 2
  %2383 = shl i32 %2372, 3
  %2384 = and i32 %2383, 24
  %2385 = or i32 %2384, %92
  %2386 = shl i32 1, %2385
  %2387 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %2382, i32 undef)  ; BufferLoad(srv,index,wot)
  %2388 = extractvalue %dx.types.ResRet.i32 %2387, 0
  %2389 = and i32 %2388, %2386
  %2390 = icmp ne i32 %2389, 0
  br label %2391

; <label>:2391                                    ; preds = %2378, %2370
  %2392 = phi i1 [ %2390, %2378 ], [ false, %2370 ]
  %2393 = and i1 %2371, %2392
  %2394 = sub i32 %62, %2346
  %2395 = or i32 %2394, %63
  %2396 = icmp slt i32 %2395, 0
  %2397 = icmp sge i32 %2394, %2351
  %2398 = icmp sge i32 %63, %2352
  %2399 = or i1 %2397, %2398
  %2400 = or i1 %2396, %2399
  br i1 %2400, label %2414, label %2401, !dx.controlflow.hints !48

; <label>:2401                                    ; preds = %2391
  %2402 = lshr i32 %2394, 3
  %2403 = add i32 %80, %2402
  %2404 = add i32 %2403, %99
  %2405 = add i32 %2404, %84
  %2406 = shl i32 %2405, 2
  %2407 = and i32 %2394, 7
  %2408 = or i32 %2407, %91
  %2409 = shl i32 1, %2408
  %2410 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %2406, i32 undef)  ; BufferLoad(srv,index,wot)
  %2411 = extractvalue %dx.types.ResRet.i32 %2410, 0
  %2412 = and i32 %2411, %2409
  %2413 = icmp ne i32 %2412, 0
  br label %2414

; <label>:2414                                    ; preds = %2401, %2391
  %2415 = phi i1 [ %2413, %2401 ], [ false, %2391 ]
  %2416 = and i1 %2393, %2415
  %2417 = add i32 %2346, %62
  %2418 = or i32 %2417, %63
  %2419 = icmp slt i32 %2418, 0
  %2420 = icmp sge i32 %2417, %2351
  %2421 = or i1 %2420, %2398
  %2422 = or i1 %2419, %2421
  br i1 %2422, label %2436, label %2423, !dx.controlflow.hints !48

; <label>:2423                                    ; preds = %2414
  %2424 = lshr i32 %2417, 3
  %2425 = add i32 %80, %2424
  %2426 = add i32 %2425, %99
  %2427 = add i32 %2426, %84
  %2428 = shl i32 %2427, 2
  %2429 = and i32 %2417, 7
  %2430 = or i32 %2429, %91
  %2431 = shl i32 1, %2430
  %2432 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %2428, i32 undef)  ; BufferLoad(srv,index,wot)
  %2433 = extractvalue %dx.types.ResRet.i32 %2432, 0
  %2434 = and i32 %2433, %2431
  %2435 = icmp ne i32 %2434, 0
  br label %2436

; <label>:2436                                    ; preds = %2423, %2414
  %2437 = phi i1 [ %2435, %2423 ], [ false, %2414 ]
  %2438 = and i1 %2416, %2437
  %2439 = xor i1 %2438, true
  br label %2440

; <label>:2440                                    ; preds = %2436, %2315
  %2441 = phi i1 [ %2439, %2436 ], [ false, %2315 ]
  %2442 = and i32 %635, 1114112
  %2443 = icmp ne i32 %2442, 0
  %2444 = and i1 %2443, %116
  %2445 = or i1 %2444, %2441
  %2446 = select i1 %2445, float %2333, float 0.000000e+00
  %2447 = select i1 %2445, float %2334, float 0.000000e+00
  %2448 = select i1 %2445, float %2335, float 0.000000e+00
  %2449 = select i1 %2445, float %2336, float 0.000000e+00
  br label %5475

; <label>:2450                                    ; preds = %620
  %2451 = and i32 %635, 511
  %2452 = mul nuw nsw i32 %2451, 20
  %2453 = add nuw nsw i32 %2452, 4
  %2454 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %2453, i32 undef)  ; BufferLoad(srv,index,wot)
  %2455 = extractvalue %dx.types.ResRet.i32 %2454, 0
  %2456 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %2452, i32 undef)  ; BufferLoad(srv,index,wot)
  %2457 = extractvalue %dx.types.ResRet.i32 %2456, 0
  %2458 = and i32 %635, 524288
  %2459 = icmp ne i32 %2458, 0
  %2460 = and i32 %635, 2097152
  %2461 = icmp ne i32 %2460, 0
  %2462 = lshr i32 %2455, 8
  %2463 = and i32 %2462, 65535
  %2464 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2463)  ; LegacyF16ToF32(value)
  %2465 = lshr i32 %2455, 24
  %2466 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 228)  ; CBufferLoadLegacy(handle,regIndex)
  %2467 = extractvalue %dx.types.CBufRet.f32 %2466, 2
  %2468 = extractvalue %dx.types.CBufRet.f32 %2466, 0
  %2469 = call float @dx.op.binary.f32(i32 35, float %43, float %2468)  ; FMax(a,b)
  %2470 = call float @dx.op.binary.f32(i32 36, float %2469, float %2467)  ; FMin(a,b)
  %2471 = call float @dx.op.binary.f32(i32 36, float %43, float %2468)  ; FMin(a,b)
  %2472 = call float @dx.op.binary.f32(i32 35, float %2471, float %2470)  ; FMax(a,b)
  %2473 = fcmp fast oeq float %43, %2472
  %2474 = extractvalue %dx.types.CBufRet.f32 %2466, 3
  %2475 = extractvalue %dx.types.CBufRet.f32 %2466, 1
  %2476 = call float @dx.op.binary.f32(i32 35, float %44, float %2475)  ; FMax(a,b)
  %2477 = call float @dx.op.binary.f32(i32 36, float %2476, float %2474)  ; FMin(a,b)
  %2478 = call float @dx.op.binary.f32(i32 36, float %44, float %2475)  ; FMin(a,b)
  %2479 = call float @dx.op.binary.f32(i32 35, float %2478, float %2477)  ; FMax(a,b)
  %2480 = fcmp fast oeq float %44, %2479
  %2481 = and i1 %2473, %2480
  %2482 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 224)  ; CBufferLoadLegacy(handle,regIndex)
  %2483 = extractvalue %dx.types.CBufRet.f32 %2482, 1
  %2484 = select i1 %2481, float %2483, float 1.000000e+00
  %2485 = icmp ne i32 %2465, 0
  %2486 = and i1 %98, %2485
  br i1 %2486, label %2487, label %2541, !dx.controlflow.hints !54

; <label>:2487                                    ; preds = %2450
  %2488 = sitofp i32 %2465 to float
  %2489 = fmul fast float %2488, 0x3F70101020000000
  %2490 = fmul fast float %2489, %2484
  %2491 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %2492 = extractvalue %dx.types.CBufRet.f32 %2491, 3
  %2493 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %2494 = extractvalue %dx.types.CBufRet.f32 %2493, 2
  %2495 = fmul fast float %2494, %2490
  %2496 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2497 = extractvalue %dx.types.CBufRet.f32 %2496, 0
  %2498 = extractvalue %dx.types.CBufRet.f32 %2496, 1
  %2499 = extractvalue %dx.types.CBufRet.f32 %2496, 2
  %2500 = extractvalue %dx.types.CBufRet.f32 %2496, 3
  %2501 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %2502 = extractvalue %dx.types.CBufRet.f32 %2501, 0
  %2503 = extractvalue %dx.types.CBufRet.f32 %2501, 1
  %2504 = extractvalue %dx.types.CBufRet.f32 %2501, 2
  %2505 = extractvalue %dx.types.CBufRet.f32 %2501, 3
  %2506 = select i1 %2459, float %2497, float %2502
  %2507 = select i1 %2459, float %2498, float %2503
  %2508 = select i1 %2459, float %2499, float %2504
  %2509 = select i1 %2459, float %2500, float %2505
  %2510 = fmul fast float %2506, %2490
  %2511 = fmul fast float %2507, %2490
  %2512 = fmul fast float %2508, %2490
  %2513 = fmul fast float %2509, %2490
  br i1 %115, label %2535, label %2514, !dx.controlflow.hints !45

; <label>:2514                                    ; preds = %2487
  %2515 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 10)  ; CBufferLoadLegacy(handle,regIndex)
  %2516 = extractvalue %dx.types.CBufRet.f32 %2515, 0
  %2517 = extractvalue %dx.types.CBufRet.f32 %2515, 1
  %2518 = extractvalue %dx.types.CBufRet.f32 %2515, 2
  %2519 = extractvalue %dx.types.CBufRet.f32 %2515, 3
  %2520 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %2521 = extractvalue %dx.types.CBufRet.f32 %2520, 0
  %2522 = extractvalue %dx.types.CBufRet.f32 %2520, 1
  %2523 = extractvalue %dx.types.CBufRet.f32 %2520, 2
  %2524 = extractvalue %dx.types.CBufRet.f32 %2520, 3
  %2525 = extractvalue %dx.types.CBufRet.f32 %2493, 1
  %2526 = fmul fast float %2521, %2510
  %2527 = fmul fast float %2526, %2525
  %2528 = fmul fast float %2522, %2511
  %2529 = fmul fast float %2528, %2525
  %2530 = fmul fast float %2523, %2512
  %2531 = fmul fast float %2530, %2525
  %2532 = fmul fast float %2524, %2513
  %2533 = fmul fast float %2532, %2525
  %2534 = fmul fast float %2525, %2495
  br label %2619

; <label>:2535                                    ; preds = %2487
  %2536 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %2537 = extractvalue %dx.types.CBufRet.f32 %2536, 0
  %2538 = extractvalue %dx.types.CBufRet.f32 %2536, 1
  %2539 = extractvalue %dx.types.CBufRet.f32 %2536, 2
  %2540 = extractvalue %dx.types.CBufRet.f32 %2536, 3
  br label %2619

; <label>:2541                                    ; preds = %2450
  %2542 = lshr i32 %2457, 24
  %2543 = uitofp i32 %2542 to float
  %2544 = fmul fast float %2543, 0x3F70101020000000
  %2545 = lshr i32 %2457, 16
  %2546 = and i32 %2545, 255
  %2547 = uitofp i32 %2546 to float
  %2548 = fmul fast float %2547, 0x3F70101020000000
  %2549 = lshr i32 %2457, 8
  %2550 = and i32 %2549, 255
  %2551 = uitofp i32 %2550 to float
  %2552 = fmul fast float %2551, 0x3F70101020000000
  %2553 = and i32 %2457, 255
  %2554 = uitofp i32 %2553 to float
  %2555 = fmul fast float %2554, 0x3F70101020000000
  %2556 = and i32 %635, 65536
  %2557 = icmp ne i32 %2556, 0
  %2558 = select i1 %2557, float 1.000000e+00, float 0.000000e+00
  %2559 = and i32 %635, 32768
  %2560 = icmp ne i32 %2559, 0
  %2561 = select i1 %2560, float 0.000000e+00, float 1.000000e+00
  %2562 = select i1 %98, float %2484, float %2561
  %2563 = fmul fast float %2555, %2562
  %2564 = fmul fast float %2552, %2562
  %2565 = fmul fast float %2548, %2562
  %2566 = fmul fast float %2544, %2562
  br i1 %115, label %2596, label %2567, !dx.controlflow.hints !46

; <label>:2567                                    ; preds = %2541
  %2568 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2569 = extractvalue %dx.types.CBufRet.f32 %2568, 0
  %2570 = extractvalue %dx.types.CBufRet.f32 %2568, 1
  %2571 = extractvalue %dx.types.CBufRet.f32 %2568, 2
  %2572 = extractvalue %dx.types.CBufRet.f32 %2568, 3
  %2573 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %2574 = extractvalue %dx.types.CBufRet.f32 %2573, 0
  %2575 = extractvalue %dx.types.CBufRet.f32 %2573, 1
  %2576 = extractvalue %dx.types.CBufRet.f32 %2573, 2
  %2577 = extractvalue %dx.types.CBufRet.f32 %2573, 3
  %2578 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %2579 = extractvalue %dx.types.CBufRet.f32 %2578, 0
  %2580 = fsub fast float %2563, %2562
  %2581 = fsub fast float %2564, %2562
  %2582 = fsub fast float %2565, %2562
  %2583 = fsub fast float %2566, %2562
  %2584 = fmul fast float %2579, %2580
  %2585 = fmul fast float %2579, %2581
  %2586 = fmul fast float %2579, %2582
  %2587 = fmul fast float %2579, %2583
  %2588 = fadd fast float %2584, %2562
  %2589 = fadd fast float %2585, %2562
  %2590 = fadd fast float %2586, %2562
  %2591 = fadd fast float %2587, %2562
  %2592 = fmul fast float %2588, %2574
  %2593 = fmul fast float %2589, %2575
  %2594 = fmul fast float %2590, %2576
  %2595 = fmul fast float %2591, %2577
  br label %2602

; <label>:2596                                    ; preds = %2541
  %2597 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %2598 = extractvalue %dx.types.CBufRet.f32 %2597, 0
  %2599 = extractvalue %dx.types.CBufRet.f32 %2597, 1
  %2600 = extractvalue %dx.types.CBufRet.f32 %2597, 2
  %2601 = extractvalue %dx.types.CBufRet.f32 %2597, 3
  br label %2602

; <label>:2602                                    ; preds = %2596, %2567
  %2603 = phi float [ %2592, %2567 ], [ %2563, %2596 ]
  %2604 = phi float [ %2593, %2567 ], [ %2564, %2596 ]
  %2605 = phi float [ %2594, %2567 ], [ %2565, %2596 ]
  %2606 = phi float [ %2595, %2567 ], [ %2566, %2596 ]
  %2607 = phi float [ %2569, %2567 ], [ %2598, %2596 ]
  %2608 = phi float [ %2570, %2567 ], [ %2599, %2596 ]
  %2609 = phi float [ %2571, %2567 ], [ %2600, %2596 ]
  %2610 = phi float [ %2572, %2567 ], [ %2601, %2596 ]
  %2611 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2612 = extractvalue %dx.types.CBufRet.f32 %2611, 0
  %2613 = fmul fast float %2612, 2.000000e+00
  %2614 = select i1 %2461, float %2613, float 1.000000e+00
  %2615 = fmul fast float %2614, %2603
  %2616 = fmul fast float %2614, %2604
  %2617 = fmul fast float %2614, %2605
  %2618 = fmul fast float %2614, %2606
  br label %2619

; <label>:2619                                    ; preds = %2602, %2535, %2514
  %2620 = phi float [ %2615, %2602 ], [ %2527, %2514 ], [ %2510, %2535 ]
  %2621 = phi float [ %2616, %2602 ], [ %2529, %2514 ], [ %2511, %2535 ]
  %2622 = phi float [ %2617, %2602 ], [ %2531, %2514 ], [ %2512, %2535 ]
  %2623 = phi float [ %2618, %2602 ], [ %2533, %2514 ], [ %2513, %2535 ]
  %2624 = phi float [ %2607, %2602 ], [ %2516, %2514 ], [ %2537, %2535 ]
  %2625 = phi float [ %2608, %2602 ], [ %2517, %2514 ], [ %2538, %2535 ]
  %2626 = phi float [ %2609, %2602 ], [ %2518, %2514 ], [ %2539, %2535 ]
  %2627 = phi float [ %2610, %2602 ], [ %2519, %2514 ], [ %2540, %2535 ]
  %2628 = phi float [ %2558, %2602 ], [ %2534, %2514 ], [ %2495, %2535 ]
  %2629 = phi float [ %2464, %2602 ], [ %2492, %2514 ], [ %2492, %2535 ]
  %2630 = fcmp fast oeq float %2629, 0.000000e+00
  br i1 %2630, label %2730, label %2631, !dx.controlflow.hints !47

; <label>:2631                                    ; preds = %2619
  %2632 = fmul fast float %2629, %64
  %2633 = fptosi float %2632 to i32
  %2634 = fmul fast float %2629, %65
  %2635 = fptosi float %2634 to i32
  %2636 = call i32 @dx.op.binary.i32(i32 37, i32 1, i32 %2633)  ; IMax(a,b)
  %2637 = call i32 @dx.op.binary.i32(i32 37, i32 1, i32 %2635)  ; IMax(a,b)
  %2638 = sub i32 %63, %2637
  %2639 = or i32 %2638, %62
  %2640 = icmp slt i32 %2639, 0
  %2641 = fptosi float %58 to i32
  %2642 = fptosi float %59 to i32
  %2643 = icmp sge i32 %62, %2641
  %2644 = icmp sge i32 %2638, %2642
  %2645 = or i1 %2643, %2644
  %2646 = or i1 %2640, %2645
  br i1 %2646, label %2660, label %2647, !dx.controlflow.hints !48

; <label>:2647                                    ; preds = %2631
  %2648 = lshr i32 %2638, 2
  %2649 = mul i32 %83, %2648
  %2650 = add i32 %101, %2649
  %2651 = shl i32 %2650, 2
  %2652 = shl i32 %2638, 3
  %2653 = and i32 %2652, 24
  %2654 = or i32 %2653, %92
  %2655 = shl i32 1, %2654
  %2656 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %2651, i32 undef)  ; BufferLoad(srv,index,wot)
  %2657 = extractvalue %dx.types.ResRet.i32 %2656, 0
  %2658 = and i32 %2657, %2655
  %2659 = icmp ne i32 %2658, 0
  br label %2660

; <label>:2660                                    ; preds = %2647, %2631
  %2661 = phi i1 [ %2659, %2647 ], [ false, %2631 ]
  %2662 = add i32 %2637, %63
  %2663 = or i32 %2662, %62
  %2664 = icmp slt i32 %2663, 0
  %2665 = icmp sge i32 %2662, %2642
  %2666 = or i1 %2643, %2665
  %2667 = or i1 %2664, %2666
  br i1 %2667, label %2681, label %2668, !dx.controlflow.hints !48

; <label>:2668                                    ; preds = %2660
  %2669 = lshr i32 %2662, 2
  %2670 = mul i32 %83, %2669
  %2671 = add i32 %101, %2670
  %2672 = shl i32 %2671, 2
  %2673 = shl i32 %2662, 3
  %2674 = and i32 %2673, 24
  %2675 = or i32 %2674, %92
  %2676 = shl i32 1, %2675
  %2677 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %2672, i32 undef)  ; BufferLoad(srv,index,wot)
  %2678 = extractvalue %dx.types.ResRet.i32 %2677, 0
  %2679 = and i32 %2678, %2676
  %2680 = icmp ne i32 %2679, 0
  br label %2681

; <label>:2681                                    ; preds = %2668, %2660
  %2682 = phi i1 [ %2680, %2668 ], [ false, %2660 ]
  %2683 = and i1 %2661, %2682
  %2684 = sub i32 %62, %2636
  %2685 = or i32 %2684, %63
  %2686 = icmp slt i32 %2685, 0
  %2687 = icmp sge i32 %2684, %2641
  %2688 = icmp sge i32 %63, %2642
  %2689 = or i1 %2687, %2688
  %2690 = or i1 %2686, %2689
  br i1 %2690, label %2704, label %2691, !dx.controlflow.hints !48

; <label>:2691                                    ; preds = %2681
  %2692 = lshr i32 %2684, 3
  %2693 = add i32 %80, %2692
  %2694 = add i32 %2693, %99
  %2695 = add i32 %2694, %84
  %2696 = shl i32 %2695, 2
  %2697 = and i32 %2684, 7
  %2698 = or i32 %2697, %91
  %2699 = shl i32 1, %2698
  %2700 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %2696, i32 undef)  ; BufferLoad(srv,index,wot)
  %2701 = extractvalue %dx.types.ResRet.i32 %2700, 0
  %2702 = and i32 %2701, %2699
  %2703 = icmp ne i32 %2702, 0
  br label %2704

; <label>:2704                                    ; preds = %2691, %2681
  %2705 = phi i1 [ %2703, %2691 ], [ false, %2681 ]
  %2706 = and i1 %2683, %2705
  %2707 = add i32 %2636, %62
  %2708 = or i32 %2707, %63
  %2709 = icmp slt i32 %2708, 0
  %2710 = icmp sge i32 %2707, %2641
  %2711 = or i1 %2710, %2688
  %2712 = or i1 %2709, %2711
  br i1 %2712, label %2726, label %2713, !dx.controlflow.hints !48

; <label>:2713                                    ; preds = %2704
  %2714 = lshr i32 %2707, 3
  %2715 = add i32 %80, %2714
  %2716 = add i32 %2715, %99
  %2717 = add i32 %2716, %84
  %2718 = shl i32 %2717, 2
  %2719 = and i32 %2707, 7
  %2720 = or i32 %2719, %91
  %2721 = shl i32 1, %2720
  %2722 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %2718, i32 undef)  ; BufferLoad(srv,index,wot)
  %2723 = extractvalue %dx.types.ResRet.i32 %2722, 0
  %2724 = and i32 %2723, %2721
  %2725 = icmp ne i32 %2724, 0
  br label %2726

; <label>:2726                                    ; preds = %2713, %2704
  %2727 = phi i1 [ %2725, %2713 ], [ false, %2704 ]
  %2728 = and i1 %2706, %2727
  %2729 = xor i1 %2728, true
  br label %2730

; <label>:2730                                    ; preds = %2726, %2619
  %2731 = phi i1 [ %2729, %2726 ], [ false, %2619 ]
  %2732 = add nuw nsw i32 %2452, 12
  %2733 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %2732, i32 undef)  ; BufferLoad(srv,index,wot)
  %2734 = extractvalue %dx.types.ResRet.i32 %2733, 0
  %2735 = and i32 %2734, 65535
  %2736 = uitofp i32 %2735 to float
  %2737 = lshr i32 %2734, 16
  %2738 = uitofp i32 %2737 to float
  %2739 = fmul fast float %2736, 0x3EF0002000000000
  %2740 = fmul fast float %2738, 0x3EF0002000000000
  %2741 = add nuw nsw i32 %2452, 8
  %2742 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %2741, i32 undef)  ; BufferLoad(srv,index,wot)
  %2743 = extractvalue %dx.types.ResRet.i32 %2742, 0
  %2744 = and i32 %2743, 65535
  %2745 = uitofp i32 %2744 to float
  %2746 = fmul fast float %2745, 0x3EF0002000000000
  %2747 = lshr i32 %2743, 16
  %2748 = uitofp i32 %2747 to float
  %2749 = fmul fast float %2748, 0x3EF0002000000000
  %2750 = fsub fast float %43, %2746
  %2751 = fdiv fast float %2750, %2739
  %2752 = fsub fast float %44, %2749
  %2753 = fdiv fast float %2752, %2740
  %2754 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2755 = extractvalue %dx.types.CBufRet.f32 %2754, 3
  %2756 = fmul fast float %2755, 0x3FA99999A0000000
  %2757 = fadd fast float %2756, %2753
  %2758 = call float @dx.op.unary.f32(i32 22, float %2751)  ; Frc(value)
  %2759 = call float @dx.op.unary.f32(i32 22, float %2757)  ; Frc(value)
  %2760 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %13, float %2758, float %2759, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2761 = extractvalue %dx.types.ResRet.f32 %2760, 1
  %2762 = extractvalue %dx.types.ResRet.f32 %2760, 3
  %2763 = and i32 %2455, 255
  %2764 = uitofp i32 %2763 to float
  %2765 = fmul fast float %2764, 0x4010101020000000
  %2766 = fadd fast float %2765, -5.120000e+02
  %2767 = fmul fast float %2764, 0x4001D0AFC0000000
  %2768 = fadd fast float %2767, 0xC071BEDF00000000
  %2769 = call float @dx.op.unary.f32(i32 22, float %2768)  ; Frc(value)
  %2770 = fmul fast float %2766, %2769
  %2771 = fadd fast float %2770, %2766
  %2772 = fmul fast float %2764, 0x3FF3D290C0000000
  %2773 = fadd fast float %2772, 0xC063BEBE20000000
  %2774 = call float @dx.op.unary.f32(i32 22, float %2773)  ; Frc(value)
  %2775 = fmul fast float %2766, %2774
  %2776 = fadd fast float %2775, %2766
  %2777 = fmul fast float %2771, %2776
  %2778 = call float @dx.op.unary.f32(i32 22, float %2777)  ; Frc(value)
  %2779 = fadd fast float %2753, 1.000000e+00
  %2780 = fmul fast float %2779, 0x401E322D00000000
  %2781 = fmul fast float %2780, %2778
  %2782 = fmul fast float %2755, 0x3FE921FB60000000
  %2783 = fadd fast float %2782, %2781
  %2784 = call float @dx.op.unary.f32(i32 13, float %2783)  ; Sin(value)
  %2785 = uitofp i32 %62 to float
  %2786 = uitofp i32 %63 to float
  %2787 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %2788 = extractvalue %dx.types.CBufRet.f32 %2787, 2
  %2789 = fmul fast float %2788, 0x40165A5B00000000
  %2790 = fadd fast float %2789, %2785
  %2791 = fadd fast float %2789, %2786
  %2792 = extractvalue %dx.types.CBufRet.f32 %2787, 0
  %2793 = fmul fast float %2792, 2.000000e+00
  %2794 = fadd fast float %2793, -1.000000e+00
  %2795 = fmul fast float %2794, %2790
  %2796 = fmul fast float %2794, %2791
  %2797 = call float @dx.op.dot2.f32(i32 54, float %2795, float %2796, float 0x3FB12E2860000000, float 0x3F77E8B200000000)  ; Dot2(ax,ay,bx,by)
  %2798 = call float @dx.op.unary.f32(i32 22, float %2797)  ; Frc(value)
  %2799 = fmul fast float %2798, 0x404A7DD040000000
  %2800 = call float @dx.op.unary.f32(i32 22, float %2799)  ; Frc(value)
  br i1 %2731, label %2801, label %2812, !dx.controlflow.hints !55

; <label>:2801                                    ; preds = %2730
  %2802 = icmp ne i32 %637, 0
  %2803 = fadd fast float %2784, 1.000000e+00
  %2804 = call float @dx.op.unary.f32(i32 23, float %2800)  ; Log(value)
  %2805 = fmul fast float %2804, %2803
  %2806 = call float @dx.op.unary.f32(i32 21, float %2805)  ; Exp(value)
  %2807 = and i1 %115, %2802
  %2808 = uitofp i1 %2807 to float
  %2809 = fmul fast float %2628, %2623
  %2810 = fmul fast float %2809, %2808
  %2811 = fmul fast float %2810, %2806
  br label %5475

; <label>:2812                                    ; preds = %2730
  %2813 = and i32 %635, 262144
  %2814 = fcmp fast ole float %2628, 0.000000e+00
  %2815 = icmp eq i32 %2813, 0
  %2816 = and i1 %115, %2815
  %2817 = or i1 %2814, %2816
  br i1 %2817, label %5475, label %2818, !dx.controlflow.hints !56

; <label>:2818                                    ; preds = %2812
  %2819 = fmul fast float %2755, 0x3FF921FB60000000
  %2820 = fadd fast float %2819, %2781
  %2821 = call float @dx.op.unary.f32(i32 13, float %2820)  ; Sin(value)
  %2822 = fmul fast float %2821, 7.500000e-01
  %2823 = fadd fast float %2822, 1.500000e+00
  %2824 = fmul fast float %2736, 0x3E8999CCE0000000
  %2825 = fmul fast float %2824, %58
  %2826 = fmul fast float %59, 0x3E8999CCE0000000
  %2827 = fmul fast float %2826, %2738
  %2828 = call float @dx.op.binary.f32(i32 35, float %2825, float 5.000000e-01)  ; FMax(a,b)
  %2829 = call float @dx.op.binary.f32(i32 35, float %2827, float 5.000000e-01)  ; FMax(a,b)
  %2830 = fmul fast float %2823, %2828
  %2831 = fmul fast float %2829, %2823
  %2832 = fsub fast float 1.000000e+00, %2761
  %2833 = fadd fast float %2832, %2800
  %2834 = fmul fast float %2833, 5.000000e+00
  %2835 = call float @dx.op.unary.f32(i32 28, float %2830)  ; Round_pi(value)
  %2836 = call float @dx.op.unary.f32(i32 28, float %2831)  ; Round_pi(value)
  %2837 = fptosi float %2835 to i32
  %2838 = fptosi float %2836 to i32
  %2839 = sub i32 %63, %2838
  %2840 = or i32 %2839, %62
  %2841 = icmp slt i32 %2840, 0
  %2842 = fptosi float %58 to i32
  %2843 = fptosi float %59 to i32
  %2844 = icmp sge i32 %62, %2842
  %2845 = icmp sge i32 %2839, %2843
  %2846 = or i1 %2844, %2845
  %2847 = or i1 %2841, %2846
  br i1 %2847, label %2861, label %2848, !dx.controlflow.hints !48

; <label>:2848                                    ; preds = %2818
  %2849 = lshr i32 %2839, 2
  %2850 = mul i32 %83, %2849
  %2851 = add i32 %101, %2850
  %2852 = shl i32 %2851, 2
  %2853 = shl i32 %2839, 3
  %2854 = and i32 %2853, 24
  %2855 = or i32 %2854, %92
  %2856 = shl i32 1, %2855
  %2857 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %2852, i32 undef)  ; BufferLoad(srv,index,wot)
  %2858 = extractvalue %dx.types.ResRet.i32 %2857, 0
  %2859 = and i32 %2858, %2856
  %2860 = icmp ne i32 %2859, 0
  br label %2861

; <label>:2861                                    ; preds = %2848, %2818
  %2862 = phi i1 [ %2860, %2848 ], [ false, %2818 ]
  %2863 = xor i1 %2862, true
  %2864 = uitofp i1 %2863 to float
  %2865 = fadd fast float %2864, %2834
  %2866 = add i32 %2838, %63
  %2867 = or i32 %2866, %62
  %2868 = icmp slt i32 %2867, 0
  %2869 = icmp sge i32 %2866, %2843
  %2870 = or i1 %2844, %2869
  %2871 = or i1 %2868, %2870
  br i1 %2871, label %2885, label %2872, !dx.controlflow.hints !48

; <label>:2872                                    ; preds = %2861
  %2873 = lshr i32 %2866, 2
  %2874 = mul i32 %83, %2873
  %2875 = add i32 %101, %2874
  %2876 = shl i32 %2875, 2
  %2877 = shl i32 %2866, 3
  %2878 = and i32 %2877, 24
  %2879 = or i32 %2878, %92
  %2880 = shl i32 1, %2879
  %2881 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %2876, i32 undef)  ; BufferLoad(srv,index,wot)
  %2882 = extractvalue %dx.types.ResRet.i32 %2881, 0
  %2883 = and i32 %2882, %2880
  %2884 = icmp ne i32 %2883, 0
  br label %2885

; <label>:2885                                    ; preds = %2872, %2861
  %2886 = phi i1 [ %2884, %2872 ], [ false, %2861 ]
  %2887 = xor i1 %2886, true
  %2888 = uitofp i1 %2887 to float
  %2889 = fadd fast float %2865, %2888
  %2890 = sub i32 %62, %2837
  %2891 = or i32 %2890, %63
  %2892 = icmp slt i32 %2891, 0
  %2893 = icmp sge i32 %2890, %2842
  %2894 = icmp sge i32 %63, %2843
  %2895 = or i1 %2893, %2894
  %2896 = or i1 %2892, %2895
  br i1 %2896, label %2910, label %2897, !dx.controlflow.hints !48

; <label>:2897                                    ; preds = %2885
  %2898 = lshr i32 %2890, 3
  %2899 = add i32 %80, %2898
  %2900 = add i32 %2899, %99
  %2901 = add i32 %2900, %84
  %2902 = shl i32 %2901, 2
  %2903 = and i32 %2890, 7
  %2904 = or i32 %2903, %91
  %2905 = shl i32 1, %2904
  %2906 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %2902, i32 undef)  ; BufferLoad(srv,index,wot)
  %2907 = extractvalue %dx.types.ResRet.i32 %2906, 0
  %2908 = and i32 %2907, %2905
  %2909 = icmp ne i32 %2908, 0
  br label %2910

; <label>:2910                                    ; preds = %2897, %2885
  %2911 = phi i1 [ %2909, %2897 ], [ false, %2885 ]
  %2912 = xor i1 %2911, true
  %2913 = uitofp i1 %2912 to float
  %2914 = fadd fast float %2889, %2913
  %2915 = add i32 %2837, %62
  %2916 = or i32 %2915, %63
  %2917 = icmp slt i32 %2916, 0
  %2918 = icmp sge i32 %2915, %2842
  %2919 = or i1 %2918, %2894
  %2920 = or i1 %2917, %2919
  br i1 %2920, label %2934, label %2921, !dx.controlflow.hints !48

; <label>:2921                                    ; preds = %2910
  %2922 = lshr i32 %2915, 3
  %2923 = add i32 %80, %2922
  %2924 = add i32 %2923, %99
  %2925 = add i32 %2924, %84
  %2926 = shl i32 %2925, 2
  %2927 = and i32 %2915, 7
  %2928 = or i32 %2927, %91
  %2929 = shl i32 1, %2928
  %2930 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %2926, i32 undef)  ; BufferLoad(srv,index,wot)
  %2931 = extractvalue %dx.types.ResRet.i32 %2930, 0
  %2932 = and i32 %2931, %2929
  %2933 = icmp ne i32 %2932, 0
  br label %2934

; <label>:2934                                    ; preds = %2921, %2910
  %2935 = phi i1 [ %2933, %2921 ], [ false, %2910 ]
  %2936 = xor i1 %2935, true
  %2937 = uitofp i1 %2936 to float
  %2938 = fadd fast float %2914, %2937
  %2939 = or i32 %2839, %2890
  %2940 = icmp slt i32 %2939, 0
  %2941 = or i1 %2893, %2845
  %2942 = or i1 %2940, %2941
  br i1 %2942, label %2960, label %2943, !dx.controlflow.hints !48

; <label>:2943                                    ; preds = %2934
  %2944 = lshr i32 %2839, 2
  %2945 = mul i32 %83, %2944
  %2946 = lshr i32 %2890, 3
  %2947 = add i32 %80, %2946
  %2948 = add i32 %2947, %99
  %2949 = add i32 %2948, %2945
  %2950 = shl i32 %2949, 2
  %2951 = shl i32 %2839, 3
  %2952 = and i32 %2951, 24
  %2953 = and i32 %2890, 7
  %2954 = or i32 %2952, %2953
  %2955 = shl i32 1, %2954
  %2956 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %2950, i32 undef)  ; BufferLoad(srv,index,wot)
  %2957 = extractvalue %dx.types.ResRet.i32 %2956, 0
  %2958 = and i32 %2957, %2955
  %2959 = icmp ne i32 %2958, 0
  br label %2960

; <label>:2960                                    ; preds = %2943, %2934
  %2961 = phi i1 [ %2959, %2943 ], [ false, %2934 ]
  %2962 = xor i1 %2961, true
  %2963 = uitofp i1 %2962 to float
  %2964 = fadd fast float %2938, %2963
  %2965 = or i32 %2839, %2915
  %2966 = icmp slt i32 %2965, 0
  %2967 = or i1 %2918, %2845
  %2968 = or i1 %2966, %2967
  br i1 %2968, label %2986, label %2969, !dx.controlflow.hints !48

; <label>:2969                                    ; preds = %2960
  %2970 = lshr i32 %2839, 2
  %2971 = mul i32 %83, %2970
  %2972 = lshr i32 %2915, 3
  %2973 = add i32 %80, %2972
  %2974 = add i32 %2973, %99
  %2975 = add i32 %2974, %2971
  %2976 = shl i32 %2975, 2
  %2977 = shl i32 %2839, 3
  %2978 = and i32 %2977, 24
  %2979 = and i32 %2915, 7
  %2980 = or i32 %2978, %2979
  %2981 = shl i32 1, %2980
  %2982 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %2976, i32 undef)  ; BufferLoad(srv,index,wot)
  %2983 = extractvalue %dx.types.ResRet.i32 %2982, 0
  %2984 = and i32 %2983, %2981
  %2985 = icmp ne i32 %2984, 0
  br label %2986

; <label>:2986                                    ; preds = %2969, %2960
  %2987 = phi i1 [ %2985, %2969 ], [ false, %2960 ]
  %2988 = xor i1 %2987, true
  %2989 = uitofp i1 %2988 to float
  %2990 = fadd fast float %2964, %2989
  %2991 = or i32 %2866, %2890
  %2992 = icmp slt i32 %2991, 0
  %2993 = or i1 %2893, %2869
  %2994 = or i1 %2992, %2993
  br i1 %2994, label %3012, label %2995, !dx.controlflow.hints !48

; <label>:2995                                    ; preds = %2986
  %2996 = lshr i32 %2866, 2
  %2997 = mul i32 %83, %2996
  %2998 = lshr i32 %2890, 3
  %2999 = add i32 %80, %2998
  %3000 = add i32 %2999, %99
  %3001 = add i32 %3000, %2997
  %3002 = shl i32 %3001, 2
  %3003 = shl i32 %2866, 3
  %3004 = and i32 %3003, 24
  %3005 = and i32 %2890, 7
  %3006 = or i32 %3004, %3005
  %3007 = shl i32 1, %3006
  %3008 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %3002, i32 undef)  ; BufferLoad(srv,index,wot)
  %3009 = extractvalue %dx.types.ResRet.i32 %3008, 0
  %3010 = and i32 %3009, %3007
  %3011 = icmp ne i32 %3010, 0
  br label %3012

; <label>:3012                                    ; preds = %2995, %2986
  %3013 = phi i1 [ %3011, %2995 ], [ false, %2986 ]
  %3014 = xor i1 %3013, true
  %3015 = uitofp i1 %3014 to float
  %3016 = fadd fast float %2990, %3015
  %3017 = or i32 %2866, %2915
  %3018 = icmp slt i32 %3017, 0
  %3019 = or i1 %2918, %2869
  %3020 = or i1 %3018, %3019
  br i1 %3020, label %3038, label %3021, !dx.controlflow.hints !48

; <label>:3021                                    ; preds = %3012
  %3022 = lshr i32 %2866, 2
  %3023 = mul i32 %83, %3022
  %3024 = lshr i32 %2915, 3
  %3025 = add i32 %80, %3024
  %3026 = add i32 %3025, %99
  %3027 = add i32 %3026, %3023
  %3028 = shl i32 %3027, 2
  %3029 = shl i32 %2866, 3
  %3030 = and i32 %3029, 24
  %3031 = and i32 %2915, 7
  %3032 = or i32 %3030, %3031
  %3033 = shl i32 1, %3032
  %3034 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %3028, i32 undef)  ; BufferLoad(srv,index,wot)
  %3035 = extractvalue %dx.types.ResRet.i32 %3034, 0
  %3036 = and i32 %3035, %3033
  %3037 = icmp ne i32 %3036, 0
  br label %3038

; <label>:3038                                    ; preds = %3021, %3012
  %3039 = phi i1 [ %3037, %3021 ], [ false, %3012 ]
  %3040 = xor i1 %3039, true
  %3041 = uitofp i1 %3040 to float
  %3042 = fadd fast float %3016, %3041
  %3043 = fmul fast float %2830, 2.000000e+00
  %3044 = fmul fast float %2831, 2.000000e+00
  %3045 = call float @dx.op.unary.f32(i32 28, float %3043)  ; Round_pi(value)
  %3046 = call float @dx.op.unary.f32(i32 28, float %3044)  ; Round_pi(value)
  %3047 = fptosi float %3045 to i32
  %3048 = fptosi float %3046 to i32
  %3049 = sub i32 %63, %3048
  %3050 = or i32 %3049, %62
  %3051 = icmp slt i32 %3050, 0
  %3052 = icmp sge i32 %3049, %2843
  %3053 = or i1 %2844, %3052
  %3054 = or i1 %3051, %3053
  br i1 %3054, label %3068, label %3055, !dx.controlflow.hints !48

; <label>:3055                                    ; preds = %3038
  %3056 = lshr i32 %3049, 2
  %3057 = mul i32 %83, %3056
  %3058 = add i32 %101, %3057
  %3059 = shl i32 %3058, 2
  %3060 = shl i32 %3049, 3
  %3061 = and i32 %3060, 24
  %3062 = or i32 %3061, %92
  %3063 = shl i32 1, %3062
  %3064 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %3059, i32 undef)  ; BufferLoad(srv,index,wot)
  %3065 = extractvalue %dx.types.ResRet.i32 %3064, 0
  %3066 = and i32 %3065, %3063
  %3067 = icmp ne i32 %3066, 0
  br label %3068

; <label>:3068                                    ; preds = %3055, %3038
  %3069 = phi i1 [ %3067, %3055 ], [ false, %3038 ]
  %3070 = xor i1 %3069, true
  %3071 = uitofp i1 %3070 to float
  %3072 = fadd fast float %3042, %3071
  %3073 = add i32 %3048, %63
  %3074 = or i32 %3073, %62
  %3075 = icmp slt i32 %3074, 0
  %3076 = icmp sge i32 %3073, %2843
  %3077 = or i1 %2844, %3076
  %3078 = or i1 %3075, %3077
  br i1 %3078, label %3092, label %3079, !dx.controlflow.hints !48

; <label>:3079                                    ; preds = %3068
  %3080 = lshr i32 %3073, 2
  %3081 = mul i32 %83, %3080
  %3082 = add i32 %101, %3081
  %3083 = shl i32 %3082, 2
  %3084 = shl i32 %3073, 3
  %3085 = and i32 %3084, 24
  %3086 = or i32 %3085, %92
  %3087 = shl i32 1, %3086
  %3088 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %3083, i32 undef)  ; BufferLoad(srv,index,wot)
  %3089 = extractvalue %dx.types.ResRet.i32 %3088, 0
  %3090 = and i32 %3089, %3087
  %3091 = icmp ne i32 %3090, 0
  br label %3092

; <label>:3092                                    ; preds = %3079, %3068
  %3093 = phi i1 [ %3091, %3079 ], [ false, %3068 ]
  %3094 = xor i1 %3093, true
  %3095 = uitofp i1 %3094 to float
  %3096 = fadd fast float %3072, %3095
  %3097 = sub i32 %62, %3047
  %3098 = or i32 %3097, %63
  %3099 = icmp slt i32 %3098, 0
  %3100 = icmp sge i32 %3097, %2842
  %3101 = or i1 %3100, %2894
  %3102 = or i1 %3099, %3101
  br i1 %3102, label %3116, label %3103, !dx.controlflow.hints !48

; <label>:3103                                    ; preds = %3092
  %3104 = lshr i32 %3097, 3
  %3105 = add i32 %80, %3104
  %3106 = add i32 %3105, %99
  %3107 = add i32 %3106, %84
  %3108 = shl i32 %3107, 2
  %3109 = and i32 %3097, 7
  %3110 = or i32 %3109, %91
  %3111 = shl i32 1, %3110
  %3112 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %3108, i32 undef)  ; BufferLoad(srv,index,wot)
  %3113 = extractvalue %dx.types.ResRet.i32 %3112, 0
  %3114 = and i32 %3113, %3111
  %3115 = icmp ne i32 %3114, 0
  br label %3116

; <label>:3116                                    ; preds = %3103, %3092
  %3117 = phi i1 [ %3115, %3103 ], [ false, %3092 ]
  %3118 = xor i1 %3117, true
  %3119 = uitofp i1 %3118 to float
  %3120 = fadd fast float %3096, %3119
  %3121 = add i32 %3047, %62
  %3122 = or i32 %3121, %63
  %3123 = icmp slt i32 %3122, 0
  %3124 = icmp sge i32 %3121, %2842
  %3125 = or i1 %3124, %2894
  %3126 = or i1 %3123, %3125
  br i1 %3126, label %3140, label %3127, !dx.controlflow.hints !48

; <label>:3127                                    ; preds = %3116
  %3128 = lshr i32 %3121, 3
  %3129 = add i32 %80, %3128
  %3130 = add i32 %3129, %99
  %3131 = add i32 %3130, %84
  %3132 = shl i32 %3131, 2
  %3133 = and i32 %3121, 7
  %3134 = or i32 %3133, %91
  %3135 = shl i32 1, %3134
  %3136 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %3132, i32 undef)  ; BufferLoad(srv,index,wot)
  %3137 = extractvalue %dx.types.ResRet.i32 %3136, 0
  %3138 = and i32 %3137, %3135
  %3139 = icmp ne i32 %3138, 0
  br label %3140

; <label>:3140                                    ; preds = %3127, %3116
  %3141 = phi i1 [ %3139, %3127 ], [ false, %3116 ]
  %3142 = xor i1 %3141, true
  %3143 = uitofp i1 %3142 to float
  %3144 = fadd fast float %3120, %3143
  %3145 = or i32 %3049, %3097
  %3146 = icmp slt i32 %3145, 0
  %3147 = or i1 %3100, %3052
  %3148 = or i1 %3146, %3147
  br i1 %3148, label %3166, label %3149, !dx.controlflow.hints !48

; <label>:3149                                    ; preds = %3140
  %3150 = lshr i32 %3049, 2
  %3151 = mul i32 %83, %3150
  %3152 = lshr i32 %3097, 3
  %3153 = add i32 %80, %3152
  %3154 = add i32 %3153, %99
  %3155 = add i32 %3154, %3151
  %3156 = shl i32 %3155, 2
  %3157 = shl i32 %3049, 3
  %3158 = and i32 %3157, 24
  %3159 = and i32 %3097, 7
  %3160 = or i32 %3158, %3159
  %3161 = shl i32 1, %3160
  %3162 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %3156, i32 undef)  ; BufferLoad(srv,index,wot)
  %3163 = extractvalue %dx.types.ResRet.i32 %3162, 0
  %3164 = and i32 %3163, %3161
  %3165 = icmp ne i32 %3164, 0
  br label %3166

; <label>:3166                                    ; preds = %3149, %3140
  %3167 = phi i1 [ %3165, %3149 ], [ false, %3140 ]
  %3168 = xor i1 %3167, true
  %3169 = uitofp i1 %3168 to float
  %3170 = fadd fast float %3144, %3169
  %3171 = or i32 %3049, %3121
  %3172 = icmp slt i32 %3171, 0
  %3173 = or i1 %3124, %3052
  %3174 = or i1 %3172, %3173
  br i1 %3174, label %3192, label %3175, !dx.controlflow.hints !48

; <label>:3175                                    ; preds = %3166
  %3176 = lshr i32 %3049, 2
  %3177 = mul i32 %83, %3176
  %3178 = lshr i32 %3121, 3
  %3179 = add i32 %80, %3178
  %3180 = add i32 %3179, %99
  %3181 = add i32 %3180, %3177
  %3182 = shl i32 %3181, 2
  %3183 = shl i32 %3049, 3
  %3184 = and i32 %3183, 24
  %3185 = and i32 %3121, 7
  %3186 = or i32 %3184, %3185
  %3187 = shl i32 1, %3186
  %3188 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %3182, i32 undef)  ; BufferLoad(srv,index,wot)
  %3189 = extractvalue %dx.types.ResRet.i32 %3188, 0
  %3190 = and i32 %3189, %3187
  %3191 = icmp ne i32 %3190, 0
  br label %3192

; <label>:3192                                    ; preds = %3175, %3166
  %3193 = phi i1 [ %3191, %3175 ], [ false, %3166 ]
  %3194 = xor i1 %3193, true
  %3195 = uitofp i1 %3194 to float
  %3196 = fadd fast float %3170, %3195
  %3197 = or i32 %3073, %3097
  %3198 = icmp slt i32 %3197, 0
  %3199 = or i1 %3100, %3076
  %3200 = or i1 %3198, %3199
  br i1 %3200, label %3218, label %3201, !dx.controlflow.hints !48

; <label>:3201                                    ; preds = %3192
  %3202 = lshr i32 %3073, 2
  %3203 = mul i32 %83, %3202
  %3204 = lshr i32 %3097, 3
  %3205 = add i32 %80, %3204
  %3206 = add i32 %3205, %99
  %3207 = add i32 %3206, %3203
  %3208 = shl i32 %3207, 2
  %3209 = shl i32 %3073, 3
  %3210 = and i32 %3209, 24
  %3211 = and i32 %3097, 7
  %3212 = or i32 %3210, %3211
  %3213 = shl i32 1, %3212
  %3214 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %3208, i32 undef)  ; BufferLoad(srv,index,wot)
  %3215 = extractvalue %dx.types.ResRet.i32 %3214, 0
  %3216 = and i32 %3215, %3213
  %3217 = icmp ne i32 %3216, 0
  br label %3218

; <label>:3218                                    ; preds = %3201, %3192
  %3219 = phi i1 [ %3217, %3201 ], [ false, %3192 ]
  %3220 = xor i1 %3219, true
  %3221 = uitofp i1 %3220 to float
  %3222 = fadd fast float %3196, %3221
  %3223 = or i32 %3073, %3121
  %3224 = icmp slt i32 %3223, 0
  %3225 = or i1 %3124, %3076
  %3226 = or i1 %3224, %3225
  br i1 %3226, label %3244, label %3227, !dx.controlflow.hints !48

; <label>:3227                                    ; preds = %3218
  %3228 = lshr i32 %3073, 2
  %3229 = mul i32 %83, %3228
  %3230 = lshr i32 %3121, 3
  %3231 = add i32 %80, %3230
  %3232 = add i32 %3231, %99
  %3233 = add i32 %3232, %3229
  %3234 = shl i32 %3233, 2
  %3235 = shl i32 %3073, 3
  %3236 = and i32 %3235, 24
  %3237 = and i32 %3121, 7
  %3238 = or i32 %3236, %3237
  %3239 = shl i32 1, %3238
  %3240 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %3234, i32 undef)  ; BufferLoad(srv,index,wot)
  %3241 = extractvalue %dx.types.ResRet.i32 %3240, 0
  %3242 = and i32 %3241, %3239
  %3243 = icmp ne i32 %3242, 0
  br label %3244

; <label>:3244                                    ; preds = %3227, %3218
  %3245 = phi i1 [ %3243, %3227 ], [ false, %3218 ]
  %3246 = xor i1 %3245, true
  %3247 = uitofp i1 %3246 to float
  %3248 = fadd fast float %3222, %3247
  %3249 = fmul fast float %2830, 3.000000e+00
  %3250 = fmul fast float %2831, 3.000000e+00
  %3251 = call float @dx.op.unary.f32(i32 28, float %3249)  ; Round_pi(value)
  %3252 = call float @dx.op.unary.f32(i32 28, float %3250)  ; Round_pi(value)
  %3253 = fptosi float %3251 to i32
  %3254 = fptosi float %3252 to i32
  %3255 = sub i32 %63, %3254
  %3256 = or i32 %3255, %62
  %3257 = icmp slt i32 %3256, 0
  %3258 = icmp sge i32 %3255, %2843
  %3259 = or i1 %2844, %3258
  %3260 = or i1 %3257, %3259
  br i1 %3260, label %3274, label %3261, !dx.controlflow.hints !48

; <label>:3261                                    ; preds = %3244
  %3262 = lshr i32 %3255, 2
  %3263 = mul i32 %83, %3262
  %3264 = add i32 %101, %3263
  %3265 = shl i32 %3264, 2
  %3266 = shl i32 %3255, 3
  %3267 = and i32 %3266, 24
  %3268 = or i32 %3267, %92
  %3269 = shl i32 1, %3268
  %3270 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %3265, i32 undef)  ; BufferLoad(srv,index,wot)
  %3271 = extractvalue %dx.types.ResRet.i32 %3270, 0
  %3272 = and i32 %3271, %3269
  %3273 = icmp ne i32 %3272, 0
  br label %3274

; <label>:3274                                    ; preds = %3261, %3244
  %3275 = phi i1 [ %3273, %3261 ], [ false, %3244 ]
  %3276 = xor i1 %3275, true
  %3277 = uitofp i1 %3276 to float
  %3278 = fadd fast float %3248, %3277
  %3279 = add i32 %3254, %63
  %3280 = or i32 %3279, %62
  %3281 = icmp slt i32 %3280, 0
  %3282 = icmp sge i32 %3279, %2843
  %3283 = or i1 %2844, %3282
  %3284 = or i1 %3281, %3283
  br i1 %3284, label %3298, label %3285, !dx.controlflow.hints !48

; <label>:3285                                    ; preds = %3274
  %3286 = lshr i32 %3279, 2
  %3287 = mul i32 %83, %3286
  %3288 = add i32 %101, %3287
  %3289 = shl i32 %3288, 2
  %3290 = shl i32 %3279, 3
  %3291 = and i32 %3290, 24
  %3292 = or i32 %3291, %92
  %3293 = shl i32 1, %3292
  %3294 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %3289, i32 undef)  ; BufferLoad(srv,index,wot)
  %3295 = extractvalue %dx.types.ResRet.i32 %3294, 0
  %3296 = and i32 %3295, %3293
  %3297 = icmp ne i32 %3296, 0
  br label %3298

; <label>:3298                                    ; preds = %3285, %3274
  %3299 = phi i1 [ %3297, %3285 ], [ false, %3274 ]
  %3300 = xor i1 %3299, true
  %3301 = uitofp i1 %3300 to float
  %3302 = fadd fast float %3278, %3301
  %3303 = sub i32 %62, %3253
  %3304 = or i32 %3303, %63
  %3305 = icmp slt i32 %3304, 0
  %3306 = icmp sge i32 %3303, %2842
  %3307 = or i1 %3306, %2894
  %3308 = or i1 %3305, %3307
  br i1 %3308, label %3322, label %3309, !dx.controlflow.hints !48

; <label>:3309                                    ; preds = %3298
  %3310 = lshr i32 %3303, 3
  %3311 = add i32 %80, %3310
  %3312 = add i32 %3311, %99
  %3313 = add i32 %3312, %84
  %3314 = shl i32 %3313, 2
  %3315 = and i32 %3303, 7
  %3316 = or i32 %3315, %91
  %3317 = shl i32 1, %3316
  %3318 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %3314, i32 undef)  ; BufferLoad(srv,index,wot)
  %3319 = extractvalue %dx.types.ResRet.i32 %3318, 0
  %3320 = and i32 %3319, %3317
  %3321 = icmp ne i32 %3320, 0
  br label %3322

; <label>:3322                                    ; preds = %3309, %3298
  %3323 = phi i1 [ %3321, %3309 ], [ false, %3298 ]
  %3324 = xor i1 %3323, true
  %3325 = uitofp i1 %3324 to float
  %3326 = fadd fast float %3302, %3325
  %3327 = add i32 %3253, %62
  %3328 = or i32 %3327, %63
  %3329 = icmp slt i32 %3328, 0
  %3330 = icmp sge i32 %3327, %2842
  %3331 = or i1 %3330, %2894
  %3332 = or i1 %3329, %3331
  br i1 %3332, label %3346, label %3333, !dx.controlflow.hints !48

; <label>:3333                                    ; preds = %3322
  %3334 = lshr i32 %3327, 3
  %3335 = add i32 %80, %3334
  %3336 = add i32 %3335, %99
  %3337 = add i32 %3336, %84
  %3338 = shl i32 %3337, 2
  %3339 = and i32 %3327, 7
  %3340 = or i32 %3339, %91
  %3341 = shl i32 1, %3340
  %3342 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %3338, i32 undef)  ; BufferLoad(srv,index,wot)
  %3343 = extractvalue %dx.types.ResRet.i32 %3342, 0
  %3344 = and i32 %3343, %3341
  %3345 = icmp ne i32 %3344, 0
  br label %3346

; <label>:3346                                    ; preds = %3333, %3322
  %3347 = phi i1 [ %3345, %3333 ], [ false, %3322 ]
  %3348 = xor i1 %3347, true
  %3349 = uitofp i1 %3348 to float
  %3350 = fadd fast float %3326, %3349
  %3351 = or i32 %3255, %3303
  %3352 = icmp slt i32 %3351, 0
  %3353 = or i1 %3306, %3258
  %3354 = or i1 %3352, %3353
  br i1 %3354, label %3372, label %3355, !dx.controlflow.hints !48

; <label>:3355                                    ; preds = %3346
  %3356 = lshr i32 %3255, 2
  %3357 = mul i32 %83, %3356
  %3358 = lshr i32 %3303, 3
  %3359 = add i32 %80, %3358
  %3360 = add i32 %3359, %99
  %3361 = add i32 %3360, %3357
  %3362 = shl i32 %3361, 2
  %3363 = shl i32 %3255, 3
  %3364 = and i32 %3363, 24
  %3365 = and i32 %3303, 7
  %3366 = or i32 %3364, %3365
  %3367 = shl i32 1, %3366
  %3368 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %3362, i32 undef)  ; BufferLoad(srv,index,wot)
  %3369 = extractvalue %dx.types.ResRet.i32 %3368, 0
  %3370 = and i32 %3369, %3367
  %3371 = icmp ne i32 %3370, 0
  br label %3372

; <label>:3372                                    ; preds = %3355, %3346
  %3373 = phi i1 [ %3371, %3355 ], [ false, %3346 ]
  %3374 = xor i1 %3373, true
  %3375 = uitofp i1 %3374 to float
  %3376 = fadd fast float %3350, %3375
  %3377 = or i32 %3255, %3327
  %3378 = icmp slt i32 %3377, 0
  %3379 = or i1 %3330, %3258
  %3380 = or i1 %3378, %3379
  br i1 %3380, label %3398, label %3381, !dx.controlflow.hints !48

; <label>:3381                                    ; preds = %3372
  %3382 = lshr i32 %3255, 2
  %3383 = mul i32 %83, %3382
  %3384 = lshr i32 %3327, 3
  %3385 = add i32 %80, %3384
  %3386 = add i32 %3385, %99
  %3387 = add i32 %3386, %3383
  %3388 = shl i32 %3387, 2
  %3389 = shl i32 %3255, 3
  %3390 = and i32 %3389, 24
  %3391 = and i32 %3327, 7
  %3392 = or i32 %3390, %3391
  %3393 = shl i32 1, %3392
  %3394 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %3388, i32 undef)  ; BufferLoad(srv,index,wot)
  %3395 = extractvalue %dx.types.ResRet.i32 %3394, 0
  %3396 = and i32 %3395, %3393
  %3397 = icmp ne i32 %3396, 0
  br label %3398

; <label>:3398                                    ; preds = %3381, %3372
  %3399 = phi i1 [ %3397, %3381 ], [ false, %3372 ]
  %3400 = xor i1 %3399, true
  %3401 = uitofp i1 %3400 to float
  %3402 = fadd fast float %3376, %3401
  %3403 = or i32 %3279, %3303
  %3404 = icmp slt i32 %3403, 0
  %3405 = or i1 %3306, %3282
  %3406 = or i1 %3404, %3405
  br i1 %3406, label %3424, label %3407, !dx.controlflow.hints !48

; <label>:3407                                    ; preds = %3398
  %3408 = lshr i32 %3279, 2
  %3409 = mul i32 %83, %3408
  %3410 = lshr i32 %3303, 3
  %3411 = add i32 %80, %3410
  %3412 = add i32 %3411, %99
  %3413 = add i32 %3412, %3409
  %3414 = shl i32 %3413, 2
  %3415 = shl i32 %3279, 3
  %3416 = and i32 %3415, 24
  %3417 = and i32 %3303, 7
  %3418 = or i32 %3416, %3417
  %3419 = shl i32 1, %3418
  %3420 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %3414, i32 undef)  ; BufferLoad(srv,index,wot)
  %3421 = extractvalue %dx.types.ResRet.i32 %3420, 0
  %3422 = and i32 %3421, %3419
  %3423 = icmp ne i32 %3422, 0
  br label %3424

; <label>:3424                                    ; preds = %3407, %3398
  %3425 = phi i1 [ %3423, %3407 ], [ false, %3398 ]
  %3426 = xor i1 %3425, true
  %3427 = uitofp i1 %3426 to float
  %3428 = fadd fast float %3402, %3427
  %3429 = or i32 %3279, %3327
  %3430 = icmp slt i32 %3429, 0
  %3431 = or i1 %3330, %3282
  %3432 = or i1 %3430, %3431
  br i1 %3432, label %3450, label %3433, !dx.controlflow.hints !48

; <label>:3433                                    ; preds = %3424
  %3434 = lshr i32 %3279, 2
  %3435 = mul i32 %83, %3434
  %3436 = lshr i32 %3327, 3
  %3437 = add i32 %80, %3436
  %3438 = add i32 %3437, %99
  %3439 = add i32 %3438, %3435
  %3440 = shl i32 %3439, 2
  %3441 = shl i32 %3279, 3
  %3442 = and i32 %3441, 24
  %3443 = and i32 %3327, 7
  %3444 = or i32 %3442, %3443
  %3445 = shl i32 1, %3444
  %3446 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %3440, i32 undef)  ; BufferLoad(srv,index,wot)
  %3447 = extractvalue %dx.types.ResRet.i32 %3446, 0
  %3448 = and i32 %3447, %3445
  %3449 = icmp ne i32 %3448, 0
  br label %3450

; <label>:3450                                    ; preds = %3433, %3424
  %3451 = phi i1 [ %3449, %3433 ], [ false, %3424 ]
  %3452 = xor i1 %3451, true
  %3453 = uitofp i1 %3452 to float
  %3454 = fadd fast float %3428, %3453
  %3455 = fmul fast float %2830, 4.000000e+00
  %3456 = fmul fast float %2831, 4.000000e+00
  %3457 = call float @dx.op.unary.f32(i32 28, float %3455)  ; Round_pi(value)
  %3458 = call float @dx.op.unary.f32(i32 28, float %3456)  ; Round_pi(value)
  %3459 = fptosi float %3457 to i32
  %3460 = fptosi float %3458 to i32
  %3461 = sub i32 %63, %3460
  %3462 = or i32 %3461, %62
  %3463 = icmp slt i32 %3462, 0
  %3464 = icmp sge i32 %3461, %2843
  %3465 = or i1 %2844, %3464
  %3466 = or i1 %3463, %3465
  br i1 %3466, label %3480, label %3467, !dx.controlflow.hints !48

; <label>:3467                                    ; preds = %3450
  %3468 = lshr i32 %3461, 2
  %3469 = mul i32 %83, %3468
  %3470 = add i32 %101, %3469
  %3471 = shl i32 %3470, 2
  %3472 = shl i32 %3461, 3
  %3473 = and i32 %3472, 24
  %3474 = or i32 %3473, %92
  %3475 = shl i32 1, %3474
  %3476 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %3471, i32 undef)  ; BufferLoad(srv,index,wot)
  %3477 = extractvalue %dx.types.ResRet.i32 %3476, 0
  %3478 = and i32 %3477, %3475
  %3479 = icmp ne i32 %3478, 0
  br label %3480

; <label>:3480                                    ; preds = %3467, %3450
  %3481 = phi i1 [ %3479, %3467 ], [ false, %3450 ]
  %3482 = xor i1 %3481, true
  %3483 = uitofp i1 %3482 to float
  %3484 = fadd fast float %3454, %3483
  %3485 = add i32 %3460, %63
  %3486 = or i32 %3485, %62
  %3487 = icmp slt i32 %3486, 0
  %3488 = icmp sge i32 %3485, %2843
  %3489 = or i1 %2844, %3488
  %3490 = or i1 %3487, %3489
  br i1 %3490, label %3504, label %3491, !dx.controlflow.hints !48

; <label>:3491                                    ; preds = %3480
  %3492 = lshr i32 %3485, 2
  %3493 = mul i32 %83, %3492
  %3494 = add i32 %101, %3493
  %3495 = shl i32 %3494, 2
  %3496 = shl i32 %3485, 3
  %3497 = and i32 %3496, 24
  %3498 = or i32 %3497, %92
  %3499 = shl i32 1, %3498
  %3500 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %3495, i32 undef)  ; BufferLoad(srv,index,wot)
  %3501 = extractvalue %dx.types.ResRet.i32 %3500, 0
  %3502 = and i32 %3501, %3499
  %3503 = icmp ne i32 %3502, 0
  br label %3504

; <label>:3504                                    ; preds = %3491, %3480
  %3505 = phi i1 [ %3503, %3491 ], [ false, %3480 ]
  %3506 = xor i1 %3505, true
  %3507 = uitofp i1 %3506 to float
  %3508 = fadd fast float %3484, %3507
  %3509 = sub i32 %62, %3459
  %3510 = or i32 %3509, %63
  %3511 = icmp slt i32 %3510, 0
  %3512 = icmp sge i32 %3509, %2842
  %3513 = or i1 %3512, %2894
  %3514 = or i1 %3511, %3513
  br i1 %3514, label %3528, label %3515, !dx.controlflow.hints !48

; <label>:3515                                    ; preds = %3504
  %3516 = lshr i32 %3509, 3
  %3517 = add i32 %80, %3516
  %3518 = add i32 %3517, %99
  %3519 = add i32 %3518, %84
  %3520 = shl i32 %3519, 2
  %3521 = and i32 %3509, 7
  %3522 = or i32 %3521, %91
  %3523 = shl i32 1, %3522
  %3524 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %3520, i32 undef)  ; BufferLoad(srv,index,wot)
  %3525 = extractvalue %dx.types.ResRet.i32 %3524, 0
  %3526 = and i32 %3525, %3523
  %3527 = icmp ne i32 %3526, 0
  br label %3528

; <label>:3528                                    ; preds = %3515, %3504
  %3529 = phi i1 [ %3527, %3515 ], [ false, %3504 ]
  %3530 = xor i1 %3529, true
  %3531 = uitofp i1 %3530 to float
  %3532 = fadd fast float %3508, %3531
  %3533 = add i32 %3459, %62
  %3534 = or i32 %3533, %63
  %3535 = icmp slt i32 %3534, 0
  %3536 = icmp sge i32 %3533, %2842
  %3537 = or i1 %3536, %2894
  %3538 = or i1 %3535, %3537
  br i1 %3538, label %3552, label %3539, !dx.controlflow.hints !48

; <label>:3539                                    ; preds = %3528
  %3540 = lshr i32 %3533, 3
  %3541 = add i32 %80, %3540
  %3542 = add i32 %3541, %99
  %3543 = add i32 %3542, %84
  %3544 = shl i32 %3543, 2
  %3545 = and i32 %3533, 7
  %3546 = or i32 %3545, %91
  %3547 = shl i32 1, %3546
  %3548 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %3544, i32 undef)  ; BufferLoad(srv,index,wot)
  %3549 = extractvalue %dx.types.ResRet.i32 %3548, 0
  %3550 = and i32 %3549, %3547
  %3551 = icmp ne i32 %3550, 0
  br label %3552

; <label>:3552                                    ; preds = %3539, %3528
  %3553 = phi i1 [ %3551, %3539 ], [ false, %3528 ]
  %3554 = xor i1 %3553, true
  %3555 = uitofp i1 %3554 to float
  %3556 = fadd fast float %3532, %3555
  %3557 = or i32 %3461, %3509
  %3558 = icmp slt i32 %3557, 0
  %3559 = or i1 %3512, %3464
  %3560 = or i1 %3558, %3559
  br i1 %3560, label %3578, label %3561, !dx.controlflow.hints !48

; <label>:3561                                    ; preds = %3552
  %3562 = lshr i32 %3461, 2
  %3563 = mul i32 %83, %3562
  %3564 = lshr i32 %3509, 3
  %3565 = add i32 %80, %3564
  %3566 = add i32 %3565, %99
  %3567 = add i32 %3566, %3563
  %3568 = shl i32 %3567, 2
  %3569 = shl i32 %3461, 3
  %3570 = and i32 %3569, 24
  %3571 = and i32 %3509, 7
  %3572 = or i32 %3570, %3571
  %3573 = shl i32 1, %3572
  %3574 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %3568, i32 undef)  ; BufferLoad(srv,index,wot)
  %3575 = extractvalue %dx.types.ResRet.i32 %3574, 0
  %3576 = and i32 %3575, %3573
  %3577 = icmp ne i32 %3576, 0
  br label %3578

; <label>:3578                                    ; preds = %3561, %3552
  %3579 = phi i1 [ %3577, %3561 ], [ false, %3552 ]
  %3580 = xor i1 %3579, true
  %3581 = uitofp i1 %3580 to float
  %3582 = fadd fast float %3556, %3581
  %3583 = or i32 %3461, %3533
  %3584 = icmp slt i32 %3583, 0
  %3585 = or i1 %3536, %3464
  %3586 = or i1 %3584, %3585
  br i1 %3586, label %3604, label %3587, !dx.controlflow.hints !48

; <label>:3587                                    ; preds = %3578
  %3588 = lshr i32 %3461, 2
  %3589 = mul i32 %83, %3588
  %3590 = lshr i32 %3533, 3
  %3591 = add i32 %80, %3590
  %3592 = add i32 %3591, %99
  %3593 = add i32 %3592, %3589
  %3594 = shl i32 %3593, 2
  %3595 = shl i32 %3461, 3
  %3596 = and i32 %3595, 24
  %3597 = and i32 %3533, 7
  %3598 = or i32 %3596, %3597
  %3599 = shl i32 1, %3598
  %3600 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %3594, i32 undef)  ; BufferLoad(srv,index,wot)
  %3601 = extractvalue %dx.types.ResRet.i32 %3600, 0
  %3602 = and i32 %3601, %3599
  %3603 = icmp ne i32 %3602, 0
  br label %3604

; <label>:3604                                    ; preds = %3587, %3578
  %3605 = phi i1 [ %3603, %3587 ], [ false, %3578 ]
  %3606 = xor i1 %3605, true
  %3607 = uitofp i1 %3606 to float
  %3608 = fadd fast float %3582, %3607
  %3609 = or i32 %3485, %3509
  %3610 = icmp slt i32 %3609, 0
  %3611 = or i1 %3512, %3488
  %3612 = or i1 %3610, %3611
  br i1 %3612, label %3630, label %3613, !dx.controlflow.hints !48

; <label>:3613                                    ; preds = %3604
  %3614 = lshr i32 %3485, 2
  %3615 = mul i32 %83, %3614
  %3616 = lshr i32 %3509, 3
  %3617 = add i32 %80, %3616
  %3618 = add i32 %3617, %99
  %3619 = add i32 %3618, %3615
  %3620 = shl i32 %3619, 2
  %3621 = shl i32 %3485, 3
  %3622 = and i32 %3621, 24
  %3623 = and i32 %3509, 7
  %3624 = or i32 %3622, %3623
  %3625 = shl i32 1, %3624
  %3626 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %3620, i32 undef)  ; BufferLoad(srv,index,wot)
  %3627 = extractvalue %dx.types.ResRet.i32 %3626, 0
  %3628 = and i32 %3627, %3625
  %3629 = icmp ne i32 %3628, 0
  br label %3630

; <label>:3630                                    ; preds = %3613, %3604
  %3631 = phi i1 [ %3629, %3613 ], [ false, %3604 ]
  %3632 = xor i1 %3631, true
  %3633 = uitofp i1 %3632 to float
  %3634 = fadd fast float %3608, %3633
  %3635 = or i32 %3485, %3533
  %3636 = icmp slt i32 %3635, 0
  %3637 = or i1 %3536, %3488
  %3638 = or i1 %3636, %3637
  br i1 %3638, label %3656, label %3639, !dx.controlflow.hints !48

; <label>:3639                                    ; preds = %3630
  %3640 = lshr i32 %3485, 2
  %3641 = mul i32 %83, %3640
  %3642 = lshr i32 %3533, 3
  %3643 = add i32 %80, %3642
  %3644 = add i32 %3643, %99
  %3645 = add i32 %3644, %3641
  %3646 = shl i32 %3645, 2
  %3647 = shl i32 %3485, 3
  %3648 = and i32 %3647, 24
  %3649 = and i32 %3533, 7
  %3650 = or i32 %3648, %3649
  %3651 = shl i32 1, %3650
  %3652 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %3646, i32 undef)  ; BufferLoad(srv,index,wot)
  %3653 = extractvalue %dx.types.ResRet.i32 %3652, 0
  %3654 = and i32 %3653, %3651
  %3655 = icmp ne i32 %3654, 0
  br label %3656

; <label>:3656                                    ; preds = %3639, %3630
  %3657 = phi i1 [ %3655, %3639 ], [ false, %3630 ]
  %3658 = xor i1 %3657, true
  %3659 = uitofp i1 %3658 to float
  %3660 = fadd fast float %3634, %3659
  %3661 = fmul fast float %2830, 5.000000e+00
  %3662 = fmul fast float %2831, 5.000000e+00
  %3663 = call float @dx.op.unary.f32(i32 28, float %3661)  ; Round_pi(value)
  %3664 = call float @dx.op.unary.f32(i32 28, float %3662)  ; Round_pi(value)
  %3665 = fptosi float %3663 to i32
  %3666 = fptosi float %3664 to i32
  %3667 = sub i32 %63, %3666
  %3668 = or i32 %3667, %62
  %3669 = icmp slt i32 %3668, 0
  %3670 = icmp sge i32 %3667, %2843
  %3671 = or i1 %2844, %3670
  %3672 = or i1 %3669, %3671
  br i1 %3672, label %3686, label %3673, !dx.controlflow.hints !48

; <label>:3673                                    ; preds = %3656
  %3674 = lshr i32 %3667, 2
  %3675 = mul i32 %83, %3674
  %3676 = add i32 %101, %3675
  %3677 = shl i32 %3676, 2
  %3678 = shl i32 %3667, 3
  %3679 = and i32 %3678, 24
  %3680 = or i32 %3679, %92
  %3681 = shl i32 1, %3680
  %3682 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %3677, i32 undef)  ; BufferLoad(srv,index,wot)
  %3683 = extractvalue %dx.types.ResRet.i32 %3682, 0
  %3684 = and i32 %3683, %3681
  %3685 = icmp ne i32 %3684, 0
  br label %3686

; <label>:3686                                    ; preds = %3673, %3656
  %3687 = phi i1 [ %3685, %3673 ], [ false, %3656 ]
  %3688 = xor i1 %3687, true
  %3689 = uitofp i1 %3688 to float
  %3690 = fadd fast float %3660, %3689
  %3691 = add i32 %3666, %63
  %3692 = or i32 %3691, %62
  %3693 = icmp slt i32 %3692, 0
  %3694 = icmp sge i32 %3691, %2843
  %3695 = or i1 %2844, %3694
  %3696 = or i1 %3693, %3695
  br i1 %3696, label %3710, label %3697, !dx.controlflow.hints !48

; <label>:3697                                    ; preds = %3686
  %3698 = lshr i32 %3691, 2
  %3699 = mul i32 %83, %3698
  %3700 = add i32 %101, %3699
  %3701 = shl i32 %3700, 2
  %3702 = shl i32 %3691, 3
  %3703 = and i32 %3702, 24
  %3704 = or i32 %3703, %92
  %3705 = shl i32 1, %3704
  %3706 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %3701, i32 undef)  ; BufferLoad(srv,index,wot)
  %3707 = extractvalue %dx.types.ResRet.i32 %3706, 0
  %3708 = and i32 %3707, %3705
  %3709 = icmp ne i32 %3708, 0
  br label %3710

; <label>:3710                                    ; preds = %3697, %3686
  %3711 = phi i1 [ %3709, %3697 ], [ false, %3686 ]
  %3712 = xor i1 %3711, true
  %3713 = uitofp i1 %3712 to float
  %3714 = fadd fast float %3690, %3713
  %3715 = sub i32 %62, %3665
  %3716 = or i32 %3715, %63
  %3717 = icmp slt i32 %3716, 0
  %3718 = icmp sge i32 %3715, %2842
  %3719 = or i1 %3718, %2894
  %3720 = or i1 %3717, %3719
  br i1 %3720, label %3734, label %3721, !dx.controlflow.hints !48

; <label>:3721                                    ; preds = %3710
  %3722 = lshr i32 %3715, 3
  %3723 = add i32 %80, %3722
  %3724 = add i32 %3723, %99
  %3725 = add i32 %3724, %84
  %3726 = shl i32 %3725, 2
  %3727 = and i32 %3715, 7
  %3728 = or i32 %3727, %91
  %3729 = shl i32 1, %3728
  %3730 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %3726, i32 undef)  ; BufferLoad(srv,index,wot)
  %3731 = extractvalue %dx.types.ResRet.i32 %3730, 0
  %3732 = and i32 %3731, %3729
  %3733 = icmp ne i32 %3732, 0
  br label %3734

; <label>:3734                                    ; preds = %3721, %3710
  %3735 = phi i1 [ %3733, %3721 ], [ false, %3710 ]
  %3736 = xor i1 %3735, true
  %3737 = uitofp i1 %3736 to float
  %3738 = fadd fast float %3714, %3737
  %3739 = add i32 %3665, %62
  %3740 = or i32 %3739, %63
  %3741 = icmp slt i32 %3740, 0
  %3742 = icmp sge i32 %3739, %2842
  %3743 = or i1 %3742, %2894
  %3744 = or i1 %3741, %3743
  br i1 %3744, label %3758, label %3745, !dx.controlflow.hints !48

; <label>:3745                                    ; preds = %3734
  %3746 = lshr i32 %3739, 3
  %3747 = add i32 %80, %3746
  %3748 = add i32 %3747, %99
  %3749 = add i32 %3748, %84
  %3750 = shl i32 %3749, 2
  %3751 = and i32 %3739, 7
  %3752 = or i32 %3751, %91
  %3753 = shl i32 1, %3752
  %3754 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %3750, i32 undef)  ; BufferLoad(srv,index,wot)
  %3755 = extractvalue %dx.types.ResRet.i32 %3754, 0
  %3756 = and i32 %3755, %3753
  %3757 = icmp ne i32 %3756, 0
  br label %3758

; <label>:3758                                    ; preds = %3745, %3734
  %3759 = phi i1 [ %3757, %3745 ], [ false, %3734 ]
  %3760 = xor i1 %3759, true
  %3761 = uitofp i1 %3760 to float
  %3762 = fadd fast float %3738, %3761
  %3763 = or i32 %3667, %3715
  %3764 = icmp slt i32 %3763, 0
  %3765 = or i1 %3718, %3670
  %3766 = or i1 %3764, %3765
  br i1 %3766, label %3784, label %3767, !dx.controlflow.hints !48

; <label>:3767                                    ; preds = %3758
  %3768 = lshr i32 %3667, 2
  %3769 = mul i32 %83, %3768
  %3770 = lshr i32 %3715, 3
  %3771 = add i32 %80, %3770
  %3772 = add i32 %3771, %99
  %3773 = add i32 %3772, %3769
  %3774 = shl i32 %3773, 2
  %3775 = shl i32 %3667, 3
  %3776 = and i32 %3775, 24
  %3777 = and i32 %3715, 7
  %3778 = or i32 %3776, %3777
  %3779 = shl i32 1, %3778
  %3780 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %3774, i32 undef)  ; BufferLoad(srv,index,wot)
  %3781 = extractvalue %dx.types.ResRet.i32 %3780, 0
  %3782 = and i32 %3781, %3779
  %3783 = icmp ne i32 %3782, 0
  br label %3784

; <label>:3784                                    ; preds = %3767, %3758
  %3785 = phi i1 [ %3783, %3767 ], [ false, %3758 ]
  %3786 = xor i1 %3785, true
  %3787 = uitofp i1 %3786 to float
  %3788 = fadd fast float %3762, %3787
  %3789 = or i32 %3667, %3739
  %3790 = icmp slt i32 %3789, 0
  %3791 = or i1 %3742, %3670
  %3792 = or i1 %3790, %3791
  br i1 %3792, label %3810, label %3793, !dx.controlflow.hints !48

; <label>:3793                                    ; preds = %3784
  %3794 = lshr i32 %3667, 2
  %3795 = mul i32 %83, %3794
  %3796 = lshr i32 %3739, 3
  %3797 = add i32 %80, %3796
  %3798 = add i32 %3797, %99
  %3799 = add i32 %3798, %3795
  %3800 = shl i32 %3799, 2
  %3801 = shl i32 %3667, 3
  %3802 = and i32 %3801, 24
  %3803 = and i32 %3739, 7
  %3804 = or i32 %3802, %3803
  %3805 = shl i32 1, %3804
  %3806 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %3800, i32 undef)  ; BufferLoad(srv,index,wot)
  %3807 = extractvalue %dx.types.ResRet.i32 %3806, 0
  %3808 = and i32 %3807, %3805
  %3809 = icmp ne i32 %3808, 0
  br label %3810

; <label>:3810                                    ; preds = %3793, %3784
  %3811 = phi i1 [ %3809, %3793 ], [ false, %3784 ]
  %3812 = xor i1 %3811, true
  %3813 = uitofp i1 %3812 to float
  %3814 = fadd fast float %3788, %3813
  %3815 = or i32 %3691, %3715
  %3816 = icmp slt i32 %3815, 0
  %3817 = or i1 %3718, %3694
  %3818 = or i1 %3816, %3817
  br i1 %3818, label %3836, label %3819, !dx.controlflow.hints !48

; <label>:3819                                    ; preds = %3810
  %3820 = lshr i32 %3691, 2
  %3821 = mul i32 %83, %3820
  %3822 = lshr i32 %3715, 3
  %3823 = add i32 %80, %3822
  %3824 = add i32 %3823, %99
  %3825 = add i32 %3824, %3821
  %3826 = shl i32 %3825, 2
  %3827 = shl i32 %3691, 3
  %3828 = and i32 %3827, 24
  %3829 = and i32 %3715, 7
  %3830 = or i32 %3828, %3829
  %3831 = shl i32 1, %3830
  %3832 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %3826, i32 undef)  ; BufferLoad(srv,index,wot)
  %3833 = extractvalue %dx.types.ResRet.i32 %3832, 0
  %3834 = and i32 %3833, %3831
  %3835 = icmp ne i32 %3834, 0
  br label %3836

; <label>:3836                                    ; preds = %3819, %3810
  %3837 = phi i1 [ %3835, %3819 ], [ false, %3810 ]
  %3838 = xor i1 %3837, true
  %3839 = uitofp i1 %3838 to float
  %3840 = fadd fast float %3814, %3839
  %3841 = or i32 %3691, %3739
  %3842 = icmp slt i32 %3841, 0
  %3843 = or i1 %3742, %3694
  %3844 = or i1 %3842, %3843
  br i1 %3844, label %3862, label %3845, !dx.controlflow.hints !48

; <label>:3845                                    ; preds = %3836
  %3846 = lshr i32 %3691, 2
  %3847 = mul i32 %83, %3846
  %3848 = lshr i32 %3739, 3
  %3849 = add i32 %80, %3848
  %3850 = add i32 %3849, %99
  %3851 = add i32 %3850, %3847
  %3852 = shl i32 %3851, 2
  %3853 = shl i32 %3691, 3
  %3854 = and i32 %3853, 24
  %3855 = and i32 %3739, 7
  %3856 = or i32 %3854, %3855
  %3857 = shl i32 1, %3856
  %3858 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %3852, i32 undef)  ; BufferLoad(srv,index,wot)
  %3859 = extractvalue %dx.types.ResRet.i32 %3858, 0
  %3860 = and i32 %3859, %3857
  %3861 = icmp ne i32 %3860, 0
  br label %3862

; <label>:3862                                    ; preds = %3845, %3836
  %3863 = phi i1 [ %3861, %3845 ], [ false, %3836 ]
  %3864 = xor i1 %3863, true
  %3865 = uitofp i1 %3864 to float
  %3866 = fadd fast float %3840, %3865
  %3867 = fmul fast float %2830, 6.000000e+00
  %3868 = fmul fast float %2831, 6.000000e+00
  %3869 = call float @dx.op.unary.f32(i32 28, float %3867)  ; Round_pi(value)
  %3870 = call float @dx.op.unary.f32(i32 28, float %3868)  ; Round_pi(value)
  %3871 = fptosi float %3869 to i32
  %3872 = fptosi float %3870 to i32
  %3873 = sub i32 %63, %3872
  %3874 = or i32 %3873, %62
  %3875 = icmp slt i32 %3874, 0
  %3876 = icmp sge i32 %3873, %2843
  %3877 = or i1 %2844, %3876
  %3878 = or i1 %3875, %3877
  br i1 %3878, label %3892, label %3879, !dx.controlflow.hints !48

; <label>:3879                                    ; preds = %3862
  %3880 = lshr i32 %3873, 2
  %3881 = mul i32 %83, %3880
  %3882 = add i32 %101, %3881
  %3883 = shl i32 %3882, 2
  %3884 = shl i32 %3873, 3
  %3885 = and i32 %3884, 24
  %3886 = or i32 %3885, %92
  %3887 = shl i32 1, %3886
  %3888 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %3883, i32 undef)  ; BufferLoad(srv,index,wot)
  %3889 = extractvalue %dx.types.ResRet.i32 %3888, 0
  %3890 = and i32 %3889, %3887
  %3891 = icmp ne i32 %3890, 0
  br label %3892

; <label>:3892                                    ; preds = %3879, %3862
  %3893 = phi i1 [ %3891, %3879 ], [ false, %3862 ]
  %3894 = xor i1 %3893, true
  %3895 = uitofp i1 %3894 to float
  %3896 = fadd fast float %3866, %3895
  %3897 = add i32 %3872, %63
  %3898 = or i32 %3897, %62
  %3899 = icmp slt i32 %3898, 0
  %3900 = icmp sge i32 %3897, %2843
  %3901 = or i1 %2844, %3900
  %3902 = or i1 %3899, %3901
  br i1 %3902, label %3916, label %3903, !dx.controlflow.hints !48

; <label>:3903                                    ; preds = %3892
  %3904 = lshr i32 %3897, 2
  %3905 = mul i32 %83, %3904
  %3906 = add i32 %101, %3905
  %3907 = shl i32 %3906, 2
  %3908 = shl i32 %3897, 3
  %3909 = and i32 %3908, 24
  %3910 = or i32 %3909, %92
  %3911 = shl i32 1, %3910
  %3912 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %3907, i32 undef)  ; BufferLoad(srv,index,wot)
  %3913 = extractvalue %dx.types.ResRet.i32 %3912, 0
  %3914 = and i32 %3913, %3911
  %3915 = icmp ne i32 %3914, 0
  br label %3916

; <label>:3916                                    ; preds = %3903, %3892
  %3917 = phi i1 [ %3915, %3903 ], [ false, %3892 ]
  %3918 = xor i1 %3917, true
  %3919 = uitofp i1 %3918 to float
  %3920 = fadd fast float %3896, %3919
  %3921 = sub i32 %62, %3871
  %3922 = or i32 %3921, %63
  %3923 = icmp slt i32 %3922, 0
  %3924 = icmp sge i32 %3921, %2842
  %3925 = or i1 %3924, %2894
  %3926 = or i1 %3923, %3925
  br i1 %3926, label %3940, label %3927, !dx.controlflow.hints !48

; <label>:3927                                    ; preds = %3916
  %3928 = lshr i32 %3921, 3
  %3929 = add i32 %80, %3928
  %3930 = add i32 %3929, %99
  %3931 = add i32 %3930, %84
  %3932 = shl i32 %3931, 2
  %3933 = and i32 %3921, 7
  %3934 = or i32 %3933, %91
  %3935 = shl i32 1, %3934
  %3936 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %3932, i32 undef)  ; BufferLoad(srv,index,wot)
  %3937 = extractvalue %dx.types.ResRet.i32 %3936, 0
  %3938 = and i32 %3937, %3935
  %3939 = icmp ne i32 %3938, 0
  br label %3940

; <label>:3940                                    ; preds = %3927, %3916
  %3941 = phi i1 [ %3939, %3927 ], [ false, %3916 ]
  %3942 = xor i1 %3941, true
  %3943 = uitofp i1 %3942 to float
  %3944 = fadd fast float %3920, %3943
  %3945 = add i32 %3871, %62
  %3946 = or i32 %3945, %63
  %3947 = icmp slt i32 %3946, 0
  %3948 = icmp sge i32 %3945, %2842
  %3949 = or i1 %3948, %2894
  %3950 = or i1 %3947, %3949
  br i1 %3950, label %3964, label %3951, !dx.controlflow.hints !48

; <label>:3951                                    ; preds = %3940
  %3952 = lshr i32 %3945, 3
  %3953 = add i32 %80, %3952
  %3954 = add i32 %3953, %99
  %3955 = add i32 %3954, %84
  %3956 = shl i32 %3955, 2
  %3957 = and i32 %3945, 7
  %3958 = or i32 %3957, %91
  %3959 = shl i32 1, %3958
  %3960 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %3956, i32 undef)  ; BufferLoad(srv,index,wot)
  %3961 = extractvalue %dx.types.ResRet.i32 %3960, 0
  %3962 = and i32 %3961, %3959
  %3963 = icmp ne i32 %3962, 0
  br label %3964

; <label>:3964                                    ; preds = %3951, %3940
  %3965 = phi i1 [ %3963, %3951 ], [ false, %3940 ]
  %3966 = xor i1 %3965, true
  %3967 = uitofp i1 %3966 to float
  %3968 = fadd fast float %3944, %3967
  %3969 = or i32 %3873, %3921
  %3970 = icmp slt i32 %3969, 0
  %3971 = or i1 %3924, %3876
  %3972 = or i1 %3970, %3971
  br i1 %3972, label %3990, label %3973, !dx.controlflow.hints !48

; <label>:3973                                    ; preds = %3964
  %3974 = lshr i32 %3873, 2
  %3975 = mul i32 %83, %3974
  %3976 = lshr i32 %3921, 3
  %3977 = add i32 %80, %3976
  %3978 = add i32 %3977, %99
  %3979 = add i32 %3978, %3975
  %3980 = shl i32 %3979, 2
  %3981 = shl i32 %3873, 3
  %3982 = and i32 %3981, 24
  %3983 = and i32 %3921, 7
  %3984 = or i32 %3982, %3983
  %3985 = shl i32 1, %3984
  %3986 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %3980, i32 undef)  ; BufferLoad(srv,index,wot)
  %3987 = extractvalue %dx.types.ResRet.i32 %3986, 0
  %3988 = and i32 %3987, %3985
  %3989 = icmp ne i32 %3988, 0
  br label %3990

; <label>:3990                                    ; preds = %3973, %3964
  %3991 = phi i1 [ %3989, %3973 ], [ false, %3964 ]
  %3992 = xor i1 %3991, true
  %3993 = uitofp i1 %3992 to float
  %3994 = fadd fast float %3968, %3993
  %3995 = or i32 %3873, %3945
  %3996 = icmp slt i32 %3995, 0
  %3997 = or i1 %3948, %3876
  %3998 = or i1 %3996, %3997
  br i1 %3998, label %4016, label %3999, !dx.controlflow.hints !48

; <label>:3999                                    ; preds = %3990
  %4000 = lshr i32 %3873, 2
  %4001 = mul i32 %83, %4000
  %4002 = lshr i32 %3945, 3
  %4003 = add i32 %80, %4002
  %4004 = add i32 %4003, %99
  %4005 = add i32 %4004, %4001
  %4006 = shl i32 %4005, 2
  %4007 = shl i32 %3873, 3
  %4008 = and i32 %4007, 24
  %4009 = and i32 %3945, 7
  %4010 = or i32 %4008, %4009
  %4011 = shl i32 1, %4010
  %4012 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %4006, i32 undef)  ; BufferLoad(srv,index,wot)
  %4013 = extractvalue %dx.types.ResRet.i32 %4012, 0
  %4014 = and i32 %4013, %4011
  %4015 = icmp ne i32 %4014, 0
  br label %4016

; <label>:4016                                    ; preds = %3999, %3990
  %4017 = phi i1 [ %4015, %3999 ], [ false, %3990 ]
  %4018 = xor i1 %4017, true
  %4019 = uitofp i1 %4018 to float
  %4020 = fadd fast float %3994, %4019
  %4021 = or i32 %3897, %3921
  %4022 = icmp slt i32 %4021, 0
  %4023 = or i1 %3924, %3900
  %4024 = or i1 %4022, %4023
  br i1 %4024, label %4042, label %4025, !dx.controlflow.hints !48

; <label>:4025                                    ; preds = %4016
  %4026 = lshr i32 %3897, 2
  %4027 = mul i32 %83, %4026
  %4028 = lshr i32 %3921, 3
  %4029 = add i32 %80, %4028
  %4030 = add i32 %4029, %99
  %4031 = add i32 %4030, %4027
  %4032 = shl i32 %4031, 2
  %4033 = shl i32 %3897, 3
  %4034 = and i32 %4033, 24
  %4035 = and i32 %3921, 7
  %4036 = or i32 %4034, %4035
  %4037 = shl i32 1, %4036
  %4038 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %4032, i32 undef)  ; BufferLoad(srv,index,wot)
  %4039 = extractvalue %dx.types.ResRet.i32 %4038, 0
  %4040 = and i32 %4039, %4037
  %4041 = icmp ne i32 %4040, 0
  br label %4042

; <label>:4042                                    ; preds = %4025, %4016
  %4043 = phi i1 [ %4041, %4025 ], [ false, %4016 ]
  %4044 = xor i1 %4043, true
  %4045 = uitofp i1 %4044 to float
  %4046 = fadd fast float %4020, %4045
  %4047 = or i32 %3897, %3945
  %4048 = icmp slt i32 %4047, 0
  %4049 = or i1 %3948, %3900
  %4050 = or i1 %4048, %4049
  br i1 %4050, label %4068, label %4051, !dx.controlflow.hints !48

; <label>:4051                                    ; preds = %4042
  %4052 = lshr i32 %3897, 2
  %4053 = mul i32 %83, %4052
  %4054 = lshr i32 %3945, 3
  %4055 = add i32 %80, %4054
  %4056 = add i32 %4055, %99
  %4057 = add i32 %4056, %4053
  %4058 = shl i32 %4057, 2
  %4059 = shl i32 %3897, 3
  %4060 = and i32 %4059, 24
  %4061 = and i32 %3945, 7
  %4062 = or i32 %4060, %4061
  %4063 = shl i32 1, %4062
  %4064 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %4058, i32 undef)  ; BufferLoad(srv,index,wot)
  %4065 = extractvalue %dx.types.ResRet.i32 %4064, 0
  %4066 = and i32 %4065, %4063
  %4067 = icmp ne i32 %4066, 0
  br label %4068

; <label>:4068                                    ; preds = %4051, %4042
  %4069 = phi i1 [ %4067, %4051 ], [ false, %4042 ]
  %4070 = xor i1 %4069, true
  %4071 = uitofp i1 %4070 to float
  %4072 = fadd fast float %4046, %4071
  %4073 = fmul fast float %2830, 7.000000e+00
  %4074 = fmul fast float %2831, 7.000000e+00
  %4075 = call float @dx.op.unary.f32(i32 28, float %4073)  ; Round_pi(value)
  %4076 = call float @dx.op.unary.f32(i32 28, float %4074)  ; Round_pi(value)
  %4077 = fptosi float %4075 to i32
  %4078 = fptosi float %4076 to i32
  %4079 = sub i32 %63, %4078
  %4080 = or i32 %4079, %62
  %4081 = icmp slt i32 %4080, 0
  %4082 = icmp sge i32 %4079, %2843
  %4083 = or i1 %2844, %4082
  %4084 = or i1 %4081, %4083
  br i1 %4084, label %4098, label %4085, !dx.controlflow.hints !48

; <label>:4085                                    ; preds = %4068
  %4086 = lshr i32 %4079, 2
  %4087 = mul i32 %83, %4086
  %4088 = add i32 %101, %4087
  %4089 = shl i32 %4088, 2
  %4090 = shl i32 %4079, 3
  %4091 = and i32 %4090, 24
  %4092 = or i32 %4091, %92
  %4093 = shl i32 1, %4092
  %4094 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %4089, i32 undef)  ; BufferLoad(srv,index,wot)
  %4095 = extractvalue %dx.types.ResRet.i32 %4094, 0
  %4096 = and i32 %4095, %4093
  %4097 = icmp ne i32 %4096, 0
  br label %4098

; <label>:4098                                    ; preds = %4085, %4068
  %4099 = phi i1 [ %4097, %4085 ], [ false, %4068 ]
  %4100 = xor i1 %4099, true
  %4101 = uitofp i1 %4100 to float
  %4102 = fadd fast float %4072, %4101
  %4103 = add i32 %4078, %63
  %4104 = or i32 %4103, %62
  %4105 = icmp slt i32 %4104, 0
  %4106 = icmp sge i32 %4103, %2843
  %4107 = or i1 %2844, %4106
  %4108 = or i1 %4105, %4107
  br i1 %4108, label %4122, label %4109, !dx.controlflow.hints !48

; <label>:4109                                    ; preds = %4098
  %4110 = lshr i32 %4103, 2
  %4111 = mul i32 %83, %4110
  %4112 = add i32 %101, %4111
  %4113 = shl i32 %4112, 2
  %4114 = shl i32 %4103, 3
  %4115 = and i32 %4114, 24
  %4116 = or i32 %4115, %92
  %4117 = shl i32 1, %4116
  %4118 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %4113, i32 undef)  ; BufferLoad(srv,index,wot)
  %4119 = extractvalue %dx.types.ResRet.i32 %4118, 0
  %4120 = and i32 %4119, %4117
  %4121 = icmp ne i32 %4120, 0
  br label %4122

; <label>:4122                                    ; preds = %4109, %4098
  %4123 = phi i1 [ %4121, %4109 ], [ false, %4098 ]
  %4124 = xor i1 %4123, true
  %4125 = uitofp i1 %4124 to float
  %4126 = fadd fast float %4102, %4125
  %4127 = sub i32 %62, %4077
  %4128 = or i32 %4127, %63
  %4129 = icmp slt i32 %4128, 0
  %4130 = icmp sge i32 %4127, %2842
  %4131 = or i1 %4130, %2894
  %4132 = or i1 %4129, %4131
  br i1 %4132, label %4146, label %4133, !dx.controlflow.hints !48

; <label>:4133                                    ; preds = %4122
  %4134 = lshr i32 %4127, 3
  %4135 = add i32 %80, %4134
  %4136 = add i32 %4135, %99
  %4137 = add i32 %4136, %84
  %4138 = shl i32 %4137, 2
  %4139 = and i32 %4127, 7
  %4140 = or i32 %4139, %91
  %4141 = shl i32 1, %4140
  %4142 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %4138, i32 undef)  ; BufferLoad(srv,index,wot)
  %4143 = extractvalue %dx.types.ResRet.i32 %4142, 0
  %4144 = and i32 %4143, %4141
  %4145 = icmp ne i32 %4144, 0
  br label %4146

; <label>:4146                                    ; preds = %4133, %4122
  %4147 = phi i1 [ %4145, %4133 ], [ false, %4122 ]
  %4148 = xor i1 %4147, true
  %4149 = uitofp i1 %4148 to float
  %4150 = fadd fast float %4126, %4149
  %4151 = add i32 %4077, %62
  %4152 = or i32 %4151, %63
  %4153 = icmp slt i32 %4152, 0
  %4154 = icmp sge i32 %4151, %2842
  %4155 = or i1 %4154, %2894
  %4156 = or i1 %4153, %4155
  br i1 %4156, label %4170, label %4157, !dx.controlflow.hints !48

; <label>:4157                                    ; preds = %4146
  %4158 = lshr i32 %4151, 3
  %4159 = add i32 %80, %4158
  %4160 = add i32 %4159, %99
  %4161 = add i32 %4160, %84
  %4162 = shl i32 %4161, 2
  %4163 = and i32 %4151, 7
  %4164 = or i32 %4163, %91
  %4165 = shl i32 1, %4164
  %4166 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %4162, i32 undef)  ; BufferLoad(srv,index,wot)
  %4167 = extractvalue %dx.types.ResRet.i32 %4166, 0
  %4168 = and i32 %4167, %4165
  %4169 = icmp ne i32 %4168, 0
  br label %4170

; <label>:4170                                    ; preds = %4157, %4146
  %4171 = phi i1 [ %4169, %4157 ], [ false, %4146 ]
  %4172 = xor i1 %4171, true
  %4173 = uitofp i1 %4172 to float
  %4174 = fadd fast float %4150, %4173
  %4175 = or i32 %4079, %4127
  %4176 = icmp slt i32 %4175, 0
  %4177 = or i1 %4130, %4082
  %4178 = or i1 %4176, %4177
  br i1 %4178, label %4196, label %4179, !dx.controlflow.hints !48

; <label>:4179                                    ; preds = %4170
  %4180 = lshr i32 %4079, 2
  %4181 = mul i32 %83, %4180
  %4182 = lshr i32 %4127, 3
  %4183 = add i32 %80, %4182
  %4184 = add i32 %4183, %99
  %4185 = add i32 %4184, %4181
  %4186 = shl i32 %4185, 2
  %4187 = shl i32 %4079, 3
  %4188 = and i32 %4187, 24
  %4189 = and i32 %4127, 7
  %4190 = or i32 %4188, %4189
  %4191 = shl i32 1, %4190
  %4192 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %4186, i32 undef)  ; BufferLoad(srv,index,wot)
  %4193 = extractvalue %dx.types.ResRet.i32 %4192, 0
  %4194 = and i32 %4193, %4191
  %4195 = icmp ne i32 %4194, 0
  br label %4196

; <label>:4196                                    ; preds = %4179, %4170
  %4197 = phi i1 [ %4195, %4179 ], [ false, %4170 ]
  %4198 = xor i1 %4197, true
  %4199 = uitofp i1 %4198 to float
  %4200 = fadd fast float %4174, %4199
  %4201 = or i32 %4079, %4151
  %4202 = icmp slt i32 %4201, 0
  %4203 = or i1 %4154, %4082
  %4204 = or i1 %4202, %4203
  br i1 %4204, label %4222, label %4205, !dx.controlflow.hints !48

; <label>:4205                                    ; preds = %4196
  %4206 = lshr i32 %4079, 2
  %4207 = mul i32 %83, %4206
  %4208 = lshr i32 %4151, 3
  %4209 = add i32 %80, %4208
  %4210 = add i32 %4209, %99
  %4211 = add i32 %4210, %4207
  %4212 = shl i32 %4211, 2
  %4213 = shl i32 %4079, 3
  %4214 = and i32 %4213, 24
  %4215 = and i32 %4151, 7
  %4216 = or i32 %4214, %4215
  %4217 = shl i32 1, %4216
  %4218 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %4212, i32 undef)  ; BufferLoad(srv,index,wot)
  %4219 = extractvalue %dx.types.ResRet.i32 %4218, 0
  %4220 = and i32 %4219, %4217
  %4221 = icmp ne i32 %4220, 0
  br label %4222

; <label>:4222                                    ; preds = %4205, %4196
  %4223 = phi i1 [ %4221, %4205 ], [ false, %4196 ]
  %4224 = xor i1 %4223, true
  %4225 = uitofp i1 %4224 to float
  %4226 = fadd fast float %4200, %4225
  %4227 = or i32 %4103, %4127
  %4228 = icmp slt i32 %4227, 0
  %4229 = or i1 %4130, %4106
  %4230 = or i1 %4228, %4229
  br i1 %4230, label %4248, label %4231, !dx.controlflow.hints !48

; <label>:4231                                    ; preds = %4222
  %4232 = lshr i32 %4103, 2
  %4233 = mul i32 %83, %4232
  %4234 = lshr i32 %4127, 3
  %4235 = add i32 %80, %4234
  %4236 = add i32 %4235, %99
  %4237 = add i32 %4236, %4233
  %4238 = shl i32 %4237, 2
  %4239 = shl i32 %4103, 3
  %4240 = and i32 %4239, 24
  %4241 = and i32 %4127, 7
  %4242 = or i32 %4240, %4241
  %4243 = shl i32 1, %4242
  %4244 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %4238, i32 undef)  ; BufferLoad(srv,index,wot)
  %4245 = extractvalue %dx.types.ResRet.i32 %4244, 0
  %4246 = and i32 %4245, %4243
  %4247 = icmp ne i32 %4246, 0
  br label %4248

; <label>:4248                                    ; preds = %4231, %4222
  %4249 = phi i1 [ %4247, %4231 ], [ false, %4222 ]
  %4250 = xor i1 %4249, true
  %4251 = uitofp i1 %4250 to float
  %4252 = fadd fast float %4226, %4251
  %4253 = or i32 %4103, %4151
  %4254 = icmp slt i32 %4253, 0
  %4255 = or i1 %4154, %4106
  %4256 = or i1 %4254, %4255
  br i1 %4256, label %4274, label %4257, !dx.controlflow.hints !48

; <label>:4257                                    ; preds = %4248
  %4258 = lshr i32 %4103, 2
  %4259 = mul i32 %83, %4258
  %4260 = lshr i32 %4151, 3
  %4261 = add i32 %80, %4260
  %4262 = add i32 %4261, %99
  %4263 = add i32 %4262, %4259
  %4264 = shl i32 %4263, 2
  %4265 = shl i32 %4103, 3
  %4266 = and i32 %4265, 24
  %4267 = and i32 %4151, 7
  %4268 = or i32 %4266, %4267
  %4269 = shl i32 1, %4268
  %4270 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %4264, i32 undef)  ; BufferLoad(srv,index,wot)
  %4271 = extractvalue %dx.types.ResRet.i32 %4270, 0
  %4272 = and i32 %4271, %4269
  %4273 = icmp ne i32 %4272, 0
  br label %4274

; <label>:4274                                    ; preds = %4257, %4248
  %4275 = phi i1 [ %4273, %4257 ], [ false, %4248 ]
  %4276 = xor i1 %4275, true
  %4277 = uitofp i1 %4276 to float
  %4278 = fadd fast float %4252, %4277
  %4279 = fmul fast float %2830, 8.000000e+00
  %4280 = fmul fast float %2831, 8.000000e+00
  %4281 = call float @dx.op.unary.f32(i32 28, float %4279)  ; Round_pi(value)
  %4282 = call float @dx.op.unary.f32(i32 28, float %4280)  ; Round_pi(value)
  %4283 = fptosi float %4281 to i32
  %4284 = fptosi float %4282 to i32
  %4285 = sub i32 %63, %4284
  %4286 = or i32 %4285, %62
  %4287 = icmp slt i32 %4286, 0
  %4288 = icmp sge i32 %4285, %2843
  %4289 = or i1 %2844, %4288
  %4290 = or i1 %4287, %4289
  br i1 %4290, label %4304, label %4291, !dx.controlflow.hints !48

; <label>:4291                                    ; preds = %4274
  %4292 = lshr i32 %4285, 2
  %4293 = mul i32 %83, %4292
  %4294 = add i32 %101, %4293
  %4295 = shl i32 %4294, 2
  %4296 = shl i32 %4285, 3
  %4297 = and i32 %4296, 24
  %4298 = or i32 %4297, %92
  %4299 = shl i32 1, %4298
  %4300 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %4295, i32 undef)  ; BufferLoad(srv,index,wot)
  %4301 = extractvalue %dx.types.ResRet.i32 %4300, 0
  %4302 = and i32 %4301, %4299
  %4303 = icmp ne i32 %4302, 0
  br label %4304

; <label>:4304                                    ; preds = %4291, %4274
  %4305 = phi i1 [ %4303, %4291 ], [ false, %4274 ]
  %4306 = xor i1 %4305, true
  %4307 = uitofp i1 %4306 to float
  %4308 = fadd fast float %4278, %4307
  %4309 = add i32 %4284, %63
  %4310 = or i32 %4309, %62
  %4311 = icmp slt i32 %4310, 0
  %4312 = icmp sge i32 %4309, %2843
  %4313 = or i1 %2844, %4312
  %4314 = or i1 %4311, %4313
  br i1 %4314, label %4328, label %4315, !dx.controlflow.hints !48

; <label>:4315                                    ; preds = %4304
  %4316 = lshr i32 %4309, 2
  %4317 = mul i32 %83, %4316
  %4318 = add i32 %101, %4317
  %4319 = shl i32 %4318, 2
  %4320 = shl i32 %4309, 3
  %4321 = and i32 %4320, 24
  %4322 = or i32 %4321, %92
  %4323 = shl i32 1, %4322
  %4324 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %4319, i32 undef)  ; BufferLoad(srv,index,wot)
  %4325 = extractvalue %dx.types.ResRet.i32 %4324, 0
  %4326 = and i32 %4325, %4323
  %4327 = icmp ne i32 %4326, 0
  br label %4328

; <label>:4328                                    ; preds = %4315, %4304
  %4329 = phi i1 [ %4327, %4315 ], [ false, %4304 ]
  %4330 = xor i1 %4329, true
  %4331 = uitofp i1 %4330 to float
  %4332 = fadd fast float %4308, %4331
  %4333 = sub i32 %62, %4283
  %4334 = or i32 %4333, %63
  %4335 = icmp slt i32 %4334, 0
  %4336 = icmp sge i32 %4333, %2842
  %4337 = or i1 %4336, %2894
  %4338 = or i1 %4335, %4337
  br i1 %4338, label %4352, label %4339, !dx.controlflow.hints !48

; <label>:4339                                    ; preds = %4328
  %4340 = lshr i32 %4333, 3
  %4341 = add i32 %80, %4340
  %4342 = add i32 %4341, %99
  %4343 = add i32 %4342, %84
  %4344 = shl i32 %4343, 2
  %4345 = and i32 %4333, 7
  %4346 = or i32 %4345, %91
  %4347 = shl i32 1, %4346
  %4348 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %4344, i32 undef)  ; BufferLoad(srv,index,wot)
  %4349 = extractvalue %dx.types.ResRet.i32 %4348, 0
  %4350 = and i32 %4349, %4347
  %4351 = icmp ne i32 %4350, 0
  br label %4352

; <label>:4352                                    ; preds = %4339, %4328
  %4353 = phi i1 [ %4351, %4339 ], [ false, %4328 ]
  %4354 = xor i1 %4353, true
  %4355 = uitofp i1 %4354 to float
  %4356 = fadd fast float %4332, %4355
  %4357 = add i32 %4283, %62
  %4358 = or i32 %4357, %63
  %4359 = icmp slt i32 %4358, 0
  %4360 = icmp sge i32 %4357, %2842
  %4361 = or i1 %4360, %2894
  %4362 = or i1 %4359, %4361
  br i1 %4362, label %4376, label %4363, !dx.controlflow.hints !48

; <label>:4363                                    ; preds = %4352
  %4364 = lshr i32 %4357, 3
  %4365 = add i32 %80, %4364
  %4366 = add i32 %4365, %99
  %4367 = add i32 %4366, %84
  %4368 = shl i32 %4367, 2
  %4369 = and i32 %4357, 7
  %4370 = or i32 %4369, %91
  %4371 = shl i32 1, %4370
  %4372 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %4368, i32 undef)  ; BufferLoad(srv,index,wot)
  %4373 = extractvalue %dx.types.ResRet.i32 %4372, 0
  %4374 = and i32 %4373, %4371
  %4375 = icmp ne i32 %4374, 0
  br label %4376

; <label>:4376                                    ; preds = %4363, %4352
  %4377 = phi i1 [ %4375, %4363 ], [ false, %4352 ]
  %4378 = xor i1 %4377, true
  %4379 = uitofp i1 %4378 to float
  %4380 = fadd fast float %4356, %4379
  %4381 = or i32 %4285, %4333
  %4382 = icmp slt i32 %4381, 0
  %4383 = or i1 %4336, %4288
  %4384 = or i1 %4382, %4383
  br i1 %4384, label %4402, label %4385, !dx.controlflow.hints !48

; <label>:4385                                    ; preds = %4376
  %4386 = lshr i32 %4285, 2
  %4387 = mul i32 %83, %4386
  %4388 = lshr i32 %4333, 3
  %4389 = add i32 %80, %4388
  %4390 = add i32 %4389, %99
  %4391 = add i32 %4390, %4387
  %4392 = shl i32 %4391, 2
  %4393 = shl i32 %4285, 3
  %4394 = and i32 %4393, 24
  %4395 = and i32 %4333, 7
  %4396 = or i32 %4394, %4395
  %4397 = shl i32 1, %4396
  %4398 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %4392, i32 undef)  ; BufferLoad(srv,index,wot)
  %4399 = extractvalue %dx.types.ResRet.i32 %4398, 0
  %4400 = and i32 %4399, %4397
  %4401 = icmp ne i32 %4400, 0
  br label %4402

; <label>:4402                                    ; preds = %4385, %4376
  %4403 = phi i1 [ %4401, %4385 ], [ false, %4376 ]
  %4404 = xor i1 %4403, true
  %4405 = uitofp i1 %4404 to float
  %4406 = fadd fast float %4380, %4405
  %4407 = or i32 %4285, %4357
  %4408 = icmp slt i32 %4407, 0
  %4409 = or i1 %4360, %4288
  %4410 = or i1 %4408, %4409
  br i1 %4410, label %4428, label %4411, !dx.controlflow.hints !48

; <label>:4411                                    ; preds = %4402
  %4412 = lshr i32 %4285, 2
  %4413 = mul i32 %83, %4412
  %4414 = lshr i32 %4357, 3
  %4415 = add i32 %80, %4414
  %4416 = add i32 %4415, %99
  %4417 = add i32 %4416, %4413
  %4418 = shl i32 %4417, 2
  %4419 = shl i32 %4285, 3
  %4420 = and i32 %4419, 24
  %4421 = and i32 %4357, 7
  %4422 = or i32 %4420, %4421
  %4423 = shl i32 1, %4422
  %4424 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %4418, i32 undef)  ; BufferLoad(srv,index,wot)
  %4425 = extractvalue %dx.types.ResRet.i32 %4424, 0
  %4426 = and i32 %4425, %4423
  %4427 = icmp ne i32 %4426, 0
  br label %4428

; <label>:4428                                    ; preds = %4411, %4402
  %4429 = phi i1 [ %4427, %4411 ], [ false, %4402 ]
  %4430 = xor i1 %4429, true
  %4431 = uitofp i1 %4430 to float
  %4432 = fadd fast float %4406, %4431
  %4433 = or i32 %4309, %4333
  %4434 = icmp slt i32 %4433, 0
  %4435 = or i1 %4336, %4312
  %4436 = or i1 %4434, %4435
  br i1 %4436, label %4454, label %4437, !dx.controlflow.hints !48

; <label>:4437                                    ; preds = %4428
  %4438 = lshr i32 %4309, 2
  %4439 = mul i32 %83, %4438
  %4440 = lshr i32 %4333, 3
  %4441 = add i32 %80, %4440
  %4442 = add i32 %4441, %99
  %4443 = add i32 %4442, %4439
  %4444 = shl i32 %4443, 2
  %4445 = shl i32 %4309, 3
  %4446 = and i32 %4445, 24
  %4447 = and i32 %4333, 7
  %4448 = or i32 %4446, %4447
  %4449 = shl i32 1, %4448
  %4450 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %4444, i32 undef)  ; BufferLoad(srv,index,wot)
  %4451 = extractvalue %dx.types.ResRet.i32 %4450, 0
  %4452 = and i32 %4451, %4449
  %4453 = icmp ne i32 %4452, 0
  br label %4454

; <label>:4454                                    ; preds = %4437, %4428
  %4455 = phi i1 [ %4453, %4437 ], [ false, %4428 ]
  %4456 = xor i1 %4455, true
  %4457 = uitofp i1 %4456 to float
  %4458 = fadd fast float %4432, %4457
  %4459 = or i32 %4309, %4357
  %4460 = icmp slt i32 %4459, 0
  %4461 = or i1 %4360, %4312
  %4462 = or i1 %4460, %4461
  br i1 %4462, label %4480, label %4463, !dx.controlflow.hints !48

; <label>:4463                                    ; preds = %4454
  %4464 = lshr i32 %4309, 2
  %4465 = mul i32 %83, %4464
  %4466 = lshr i32 %4357, 3
  %4467 = add i32 %80, %4466
  %4468 = add i32 %4467, %99
  %4469 = add i32 %4468, %4465
  %4470 = shl i32 %4469, 2
  %4471 = shl i32 %4309, 3
  %4472 = and i32 %4471, 24
  %4473 = and i32 %4357, 7
  %4474 = or i32 %4472, %4473
  %4475 = shl i32 1, %4474
  %4476 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %4470, i32 undef)  ; BufferLoad(srv,index,wot)
  %4477 = extractvalue %dx.types.ResRet.i32 %4476, 0
  %4478 = and i32 %4477, %4475
  %4479 = icmp ne i32 %4478, 0
  br label %4480

; <label>:4480                                    ; preds = %4463, %4454
  %4481 = phi i1 [ %4479, %4463 ], [ false, %4454 ]
  %4482 = xor i1 %4481, true
  %4483 = uitofp i1 %4482 to float
  %4484 = fadd fast float %4458, %4483
  %4485 = fmul fast float %2830, 9.000000e+00
  %4486 = fmul fast float %2831, 9.000000e+00
  %4487 = call float @dx.op.unary.f32(i32 28, float %4485)  ; Round_pi(value)
  %4488 = call float @dx.op.unary.f32(i32 28, float %4486)  ; Round_pi(value)
  %4489 = fptosi float %4487 to i32
  %4490 = fptosi float %4488 to i32
  %4491 = sub i32 %63, %4490
  %4492 = or i32 %4491, %62
  %4493 = icmp slt i32 %4492, 0
  %4494 = icmp sge i32 %4491, %2843
  %4495 = or i1 %2844, %4494
  %4496 = or i1 %4493, %4495
  br i1 %4496, label %4510, label %4497, !dx.controlflow.hints !48

; <label>:4497                                    ; preds = %4480
  %4498 = lshr i32 %4491, 2
  %4499 = mul i32 %83, %4498
  %4500 = add i32 %101, %4499
  %4501 = shl i32 %4500, 2
  %4502 = shl i32 %4491, 3
  %4503 = and i32 %4502, 24
  %4504 = or i32 %4503, %92
  %4505 = shl i32 1, %4504
  %4506 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %4501, i32 undef)  ; BufferLoad(srv,index,wot)
  %4507 = extractvalue %dx.types.ResRet.i32 %4506, 0
  %4508 = and i32 %4507, %4505
  %4509 = icmp ne i32 %4508, 0
  br label %4510

; <label>:4510                                    ; preds = %4497, %4480
  %4511 = phi i1 [ %4509, %4497 ], [ false, %4480 ]
  %4512 = xor i1 %4511, true
  %4513 = uitofp i1 %4512 to float
  %4514 = fadd fast float %4484, %4513
  %4515 = add i32 %4490, %63
  %4516 = or i32 %4515, %62
  %4517 = icmp slt i32 %4516, 0
  %4518 = icmp sge i32 %4515, %2843
  %4519 = or i1 %2844, %4518
  %4520 = or i1 %4517, %4519
  br i1 %4520, label %4534, label %4521, !dx.controlflow.hints !48

; <label>:4521                                    ; preds = %4510
  %4522 = lshr i32 %4515, 2
  %4523 = mul i32 %83, %4522
  %4524 = add i32 %101, %4523
  %4525 = shl i32 %4524, 2
  %4526 = shl i32 %4515, 3
  %4527 = and i32 %4526, 24
  %4528 = or i32 %4527, %92
  %4529 = shl i32 1, %4528
  %4530 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %4525, i32 undef)  ; BufferLoad(srv,index,wot)
  %4531 = extractvalue %dx.types.ResRet.i32 %4530, 0
  %4532 = and i32 %4531, %4529
  %4533 = icmp ne i32 %4532, 0
  br label %4534

; <label>:4534                                    ; preds = %4521, %4510
  %4535 = phi i1 [ %4533, %4521 ], [ false, %4510 ]
  %4536 = xor i1 %4535, true
  %4537 = uitofp i1 %4536 to float
  %4538 = fadd fast float %4514, %4537
  %4539 = sub i32 %62, %4489
  %4540 = or i32 %4539, %63
  %4541 = icmp slt i32 %4540, 0
  %4542 = icmp sge i32 %4539, %2842
  %4543 = or i1 %4542, %2894
  %4544 = or i1 %4541, %4543
  br i1 %4544, label %4558, label %4545, !dx.controlflow.hints !48

; <label>:4545                                    ; preds = %4534
  %4546 = lshr i32 %4539, 3
  %4547 = add i32 %80, %4546
  %4548 = add i32 %4547, %99
  %4549 = add i32 %4548, %84
  %4550 = shl i32 %4549, 2
  %4551 = and i32 %4539, 7
  %4552 = or i32 %4551, %91
  %4553 = shl i32 1, %4552
  %4554 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %4550, i32 undef)  ; BufferLoad(srv,index,wot)
  %4555 = extractvalue %dx.types.ResRet.i32 %4554, 0
  %4556 = and i32 %4555, %4553
  %4557 = icmp ne i32 %4556, 0
  br label %4558

; <label>:4558                                    ; preds = %4545, %4534
  %4559 = phi i1 [ %4557, %4545 ], [ false, %4534 ]
  %4560 = xor i1 %4559, true
  %4561 = uitofp i1 %4560 to float
  %4562 = fadd fast float %4538, %4561
  %4563 = add i32 %4489, %62
  %4564 = or i32 %4563, %63
  %4565 = icmp slt i32 %4564, 0
  %4566 = icmp sge i32 %4563, %2842
  %4567 = or i1 %4566, %2894
  %4568 = or i1 %4565, %4567
  br i1 %4568, label %4583, label %4569, !dx.controlflow.hints !48

; <label>:4569                                    ; preds = %4558
  %4570 = lshr i32 %4563, 3
  %4571 = add i32 %80, %4570
  %4572 = add i32 %4571, %99
  %4573 = add i32 %4572, %84
  %4574 = shl i32 %4573, 2
  %4575 = and i32 %4563, 7
  %4576 = or i32 %4575, %91
  %4577 = shl i32 1, %4576
  %4578 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %4574, i32 undef)  ; BufferLoad(srv,index,wot)
  %4579 = extractvalue %dx.types.ResRet.i32 %4578, 0
  %4580 = and i32 %4579, %4577
  %4581 = icmp eq i32 %4580, 0
  %4582 = uitofp i1 %4581 to float
  br label %4583

; <label>:4583                                    ; preds = %4569, %4558
  %4584 = phi float [ %4582, %4569 ], [ 1.000000e+00, %4558 ]
  %4585 = fadd fast float %4562, %4584
  %4586 = or i32 %4491, %4539
  %4587 = icmp slt i32 %4586, 0
  %4588 = or i1 %4542, %4494
  %4589 = or i1 %4587, %4588
  br i1 %4589, label %4608, label %4590, !dx.controlflow.hints !48

; <label>:4590                                    ; preds = %4583
  %4591 = lshr i32 %4491, 2
  %4592 = mul i32 %83, %4591
  %4593 = lshr i32 %4539, 3
  %4594 = add i32 %80, %4593
  %4595 = add i32 %4594, %99
  %4596 = add i32 %4595, %4592
  %4597 = shl i32 %4596, 2
  %4598 = shl i32 %4491, 3
  %4599 = and i32 %4598, 24
  %4600 = and i32 %4539, 7
  %4601 = or i32 %4599, %4600
  %4602 = shl i32 1, %4601
  %4603 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %4597, i32 undef)  ; BufferLoad(srv,index,wot)
  %4604 = extractvalue %dx.types.ResRet.i32 %4603, 0
  %4605 = and i32 %4604, %4602
  %4606 = icmp eq i32 %4605, 0
  %4607 = uitofp i1 %4606 to float
  br label %4608

; <label>:4608                                    ; preds = %4590, %4583
  %4609 = phi float [ %4607, %4590 ], [ 1.000000e+00, %4583 ]
  %4610 = fadd fast float %4585, %4609
  %4611 = or i32 %4491, %4563
  %4612 = icmp slt i32 %4611, 0
  %4613 = or i1 %4566, %4494
  %4614 = or i1 %4612, %4613
  br i1 %4614, label %4633, label %4615, !dx.controlflow.hints !48

; <label>:4615                                    ; preds = %4608
  %4616 = lshr i32 %4491, 2
  %4617 = mul i32 %83, %4616
  %4618 = lshr i32 %4563, 3
  %4619 = add i32 %80, %4618
  %4620 = add i32 %4619, %99
  %4621 = add i32 %4620, %4617
  %4622 = shl i32 %4621, 2
  %4623 = shl i32 %4491, 3
  %4624 = and i32 %4623, 24
  %4625 = and i32 %4563, 7
  %4626 = or i32 %4624, %4625
  %4627 = shl i32 1, %4626
  %4628 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %4622, i32 undef)  ; BufferLoad(srv,index,wot)
  %4629 = extractvalue %dx.types.ResRet.i32 %4628, 0
  %4630 = and i32 %4629, %4627
  %4631 = icmp eq i32 %4630, 0
  %4632 = uitofp i1 %4631 to float
  br label %4633

; <label>:4633                                    ; preds = %4615, %4608
  %4634 = phi float [ %4632, %4615 ], [ 1.000000e+00, %4608 ]
  %4635 = fadd fast float %4610, %4634
  %4636 = or i32 %4515, %4539
  %4637 = icmp slt i32 %4636, 0
  %4638 = or i1 %4542, %4518
  %4639 = or i1 %4637, %4638
  br i1 %4639, label %4658, label %4640, !dx.controlflow.hints !48

; <label>:4640                                    ; preds = %4633
  %4641 = lshr i32 %4515, 2
  %4642 = mul i32 %83, %4641
  %4643 = lshr i32 %4539, 3
  %4644 = add i32 %80, %4643
  %4645 = add i32 %4644, %99
  %4646 = add i32 %4645, %4642
  %4647 = shl i32 %4646, 2
  %4648 = shl i32 %4515, 3
  %4649 = and i32 %4648, 24
  %4650 = and i32 %4539, 7
  %4651 = or i32 %4649, %4650
  %4652 = shl i32 1, %4651
  %4653 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %4647, i32 undef)  ; BufferLoad(srv,index,wot)
  %4654 = extractvalue %dx.types.ResRet.i32 %4653, 0
  %4655 = and i32 %4654, %4652
  %4656 = icmp eq i32 %4655, 0
  %4657 = uitofp i1 %4656 to float
  br label %4658

; <label>:4658                                    ; preds = %4640, %4633
  %4659 = phi float [ %4657, %4640 ], [ 1.000000e+00, %4633 ]
  %4660 = fadd fast float %4635, %4659
  %4661 = or i32 %4515, %4563
  %4662 = icmp slt i32 %4661, 0
  %4663 = or i1 %4566, %4518
  %4664 = or i1 %4662, %4663
  br i1 %4664, label %4683, label %4665, !dx.controlflow.hints !48

; <label>:4665                                    ; preds = %4658
  %4666 = lshr i32 %4515, 2
  %4667 = mul i32 %83, %4666
  %4668 = lshr i32 %4563, 3
  %4669 = add i32 %80, %4668
  %4670 = add i32 %4669, %99
  %4671 = add i32 %4670, %4667
  %4672 = shl i32 %4671, 2
  %4673 = shl i32 %4515, 3
  %4674 = and i32 %4673, 24
  %4675 = and i32 %4563, 7
  %4676 = or i32 %4674, %4675
  %4677 = shl i32 1, %4676
  %4678 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %4672, i32 undef)  ; BufferLoad(srv,index,wot)
  %4679 = extractvalue %dx.types.ResRet.i32 %4678, 0
  %4680 = and i32 %4679, %4677
  %4681 = icmp eq i32 %4680, 0
  %4682 = uitofp i1 %4681 to float
  br label %4683

; <label>:4683                                    ; preds = %4665, %4658
  %4684 = phi float [ %4682, %4665 ], [ 1.000000e+00, %4658 ]
  %4685 = fadd fast float %4660, %4684
  %4686 = fmul fast float %2830, 1.000000e+01
  %4687 = fmul fast float %2831, 1.000000e+01
  %4688 = call float @dx.op.unary.f32(i32 28, float %4686)  ; Round_pi(value)
  %4689 = call float @dx.op.unary.f32(i32 28, float %4687)  ; Round_pi(value)
  %4690 = fptosi float %4688 to i32
  %4691 = fptosi float %4689 to i32
  %4692 = sub i32 %63, %4691
  %4693 = or i32 %4692, %62
  %4694 = icmp slt i32 %4693, 0
  %4695 = icmp sge i32 %4692, %2843
  %4696 = or i1 %2844, %4695
  %4697 = or i1 %4694, %4696
  br i1 %4697, label %4712, label %4698, !dx.controlflow.hints !48

; <label>:4698                                    ; preds = %4683
  %4699 = lshr i32 %4692, 2
  %4700 = mul i32 %83, %4699
  %4701 = add i32 %101, %4700
  %4702 = shl i32 %4701, 2
  %4703 = shl i32 %4692, 3
  %4704 = and i32 %4703, 24
  %4705 = or i32 %4704, %92
  %4706 = shl i32 1, %4705
  %4707 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %4702, i32 undef)  ; BufferLoad(srv,index,wot)
  %4708 = extractvalue %dx.types.ResRet.i32 %4707, 0
  %4709 = and i32 %4708, %4706
  %4710 = icmp eq i32 %4709, 0
  %4711 = uitofp i1 %4710 to float
  br label %4712

; <label>:4712                                    ; preds = %4698, %4683
  %4713 = phi float [ %4711, %4698 ], [ 1.000000e+00, %4683 ]
  %4714 = fadd fast float %4685, %4713
  %4715 = add i32 %4691, %63
  %4716 = or i32 %4715, %62
  %4717 = icmp slt i32 %4716, 0
  %4718 = icmp sge i32 %4715, %2843
  %4719 = or i1 %2844, %4718
  %4720 = or i1 %4717, %4719
  br i1 %4720, label %4735, label %4721, !dx.controlflow.hints !48

; <label>:4721                                    ; preds = %4712
  %4722 = lshr i32 %4715, 2
  %4723 = mul i32 %83, %4722
  %4724 = add i32 %101, %4723
  %4725 = shl i32 %4724, 2
  %4726 = shl i32 %4715, 3
  %4727 = and i32 %4726, 24
  %4728 = or i32 %4727, %92
  %4729 = shl i32 1, %4728
  %4730 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %4725, i32 undef)  ; BufferLoad(srv,index,wot)
  %4731 = extractvalue %dx.types.ResRet.i32 %4730, 0
  %4732 = and i32 %4731, %4729
  %4733 = icmp eq i32 %4732, 0
  %4734 = uitofp i1 %4733 to float
  br label %4735

; <label>:4735                                    ; preds = %4721, %4712
  %4736 = phi float [ %4734, %4721 ], [ 1.000000e+00, %4712 ]
  %4737 = fadd fast float %4714, %4736
  %4738 = sub i32 %62, %4690
  %4739 = or i32 %4738, %63
  %4740 = icmp slt i32 %4739, 0
  %4741 = icmp sge i32 %4738, %2842
  %4742 = or i1 %4741, %2894
  %4743 = or i1 %4740, %4742
  br i1 %4743, label %4758, label %4744, !dx.controlflow.hints !48

; <label>:4744                                    ; preds = %4735
  %4745 = lshr i32 %4738, 3
  %4746 = add i32 %80, %4745
  %4747 = add i32 %4746, %99
  %4748 = add i32 %4747, %84
  %4749 = shl i32 %4748, 2
  %4750 = and i32 %4738, 7
  %4751 = or i32 %4750, %91
  %4752 = shl i32 1, %4751
  %4753 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %4749, i32 undef)  ; BufferLoad(srv,index,wot)
  %4754 = extractvalue %dx.types.ResRet.i32 %4753, 0
  %4755 = and i32 %4754, %4752
  %4756 = icmp eq i32 %4755, 0
  %4757 = uitofp i1 %4756 to float
  br label %4758

; <label>:4758                                    ; preds = %4744, %4735
  %4759 = phi float [ %4757, %4744 ], [ 1.000000e+00, %4735 ]
  %4760 = fadd fast float %4737, %4759
  %4761 = add i32 %4690, %62
  %4762 = or i32 %4761, %63
  %4763 = icmp slt i32 %4762, 0
  %4764 = icmp sge i32 %4761, %2842
  %4765 = or i1 %4764, %2894
  %4766 = or i1 %4763, %4765
  br i1 %4766, label %4781, label %4767, !dx.controlflow.hints !48

; <label>:4767                                    ; preds = %4758
  %4768 = lshr i32 %4761, 3
  %4769 = add i32 %80, %4768
  %4770 = add i32 %4769, %99
  %4771 = add i32 %4770, %84
  %4772 = shl i32 %4771, 2
  %4773 = and i32 %4761, 7
  %4774 = or i32 %4773, %91
  %4775 = shl i32 1, %4774
  %4776 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %4772, i32 undef)  ; BufferLoad(srv,index,wot)
  %4777 = extractvalue %dx.types.ResRet.i32 %4776, 0
  %4778 = and i32 %4777, %4775
  %4779 = icmp eq i32 %4778, 0
  %4780 = uitofp i1 %4779 to float
  br label %4781

; <label>:4781                                    ; preds = %4767, %4758
  %4782 = phi float [ %4780, %4767 ], [ 1.000000e+00, %4758 ]
  %4783 = fadd fast float %4760, %4782
  %4784 = or i32 %4692, %4738
  %4785 = icmp slt i32 %4784, 0
  %4786 = or i1 %4741, %4695
  %4787 = or i1 %4785, %4786
  br i1 %4787, label %4806, label %4788, !dx.controlflow.hints !48

; <label>:4788                                    ; preds = %4781
  %4789 = lshr i32 %4692, 2
  %4790 = mul i32 %83, %4789
  %4791 = lshr i32 %4738, 3
  %4792 = add i32 %80, %4791
  %4793 = add i32 %4792, %99
  %4794 = add i32 %4793, %4790
  %4795 = shl i32 %4794, 2
  %4796 = shl i32 %4692, 3
  %4797 = and i32 %4796, 24
  %4798 = and i32 %4738, 7
  %4799 = or i32 %4797, %4798
  %4800 = shl i32 1, %4799
  %4801 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %4795, i32 undef)  ; BufferLoad(srv,index,wot)
  %4802 = extractvalue %dx.types.ResRet.i32 %4801, 0
  %4803 = and i32 %4802, %4800
  %4804 = icmp eq i32 %4803, 0
  %4805 = uitofp i1 %4804 to float
  br label %4806

; <label>:4806                                    ; preds = %4788, %4781
  %4807 = phi float [ %4805, %4788 ], [ 1.000000e+00, %4781 ]
  %4808 = fadd fast float %4783, %4807
  %4809 = or i32 %4692, %4761
  %4810 = icmp slt i32 %4809, 0
  %4811 = or i1 %4764, %4695
  %4812 = or i1 %4810, %4811
  br i1 %4812, label %4831, label %4813, !dx.controlflow.hints !48

; <label>:4813                                    ; preds = %4806
  %4814 = lshr i32 %4692, 2
  %4815 = mul i32 %83, %4814
  %4816 = lshr i32 %4761, 3
  %4817 = add i32 %80, %4816
  %4818 = add i32 %4817, %99
  %4819 = add i32 %4818, %4815
  %4820 = shl i32 %4819, 2
  %4821 = shl i32 %4692, 3
  %4822 = and i32 %4821, 24
  %4823 = and i32 %4761, 7
  %4824 = or i32 %4822, %4823
  %4825 = shl i32 1, %4824
  %4826 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %4820, i32 undef)  ; BufferLoad(srv,index,wot)
  %4827 = extractvalue %dx.types.ResRet.i32 %4826, 0
  %4828 = and i32 %4827, %4825
  %4829 = icmp eq i32 %4828, 0
  %4830 = uitofp i1 %4829 to float
  br label %4831

; <label>:4831                                    ; preds = %4813, %4806
  %4832 = phi float [ %4830, %4813 ], [ 1.000000e+00, %4806 ]
  %4833 = fadd fast float %4808, %4832
  %4834 = or i32 %4715, %4738
  %4835 = icmp slt i32 %4834, 0
  %4836 = or i1 %4741, %4718
  %4837 = or i1 %4835, %4836
  br i1 %4837, label %4856, label %4838, !dx.controlflow.hints !48

; <label>:4838                                    ; preds = %4831
  %4839 = lshr i32 %4715, 2
  %4840 = mul i32 %83, %4839
  %4841 = lshr i32 %4738, 3
  %4842 = add i32 %80, %4841
  %4843 = add i32 %4842, %99
  %4844 = add i32 %4843, %4840
  %4845 = shl i32 %4844, 2
  %4846 = shl i32 %4715, 3
  %4847 = and i32 %4846, 24
  %4848 = and i32 %4738, 7
  %4849 = or i32 %4847, %4848
  %4850 = shl i32 1, %4849
  %4851 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %4845, i32 undef)  ; BufferLoad(srv,index,wot)
  %4852 = extractvalue %dx.types.ResRet.i32 %4851, 0
  %4853 = and i32 %4852, %4850
  %4854 = icmp eq i32 %4853, 0
  %4855 = uitofp i1 %4854 to float
  br label %4856

; <label>:4856                                    ; preds = %4838, %4831
  %4857 = phi float [ %4855, %4838 ], [ 1.000000e+00, %4831 ]
  %4858 = fadd fast float %4833, %4857
  %4859 = or i32 %4715, %4761
  %4860 = icmp slt i32 %4859, 0
  %4861 = or i1 %4764, %4718
  %4862 = or i1 %4860, %4861
  br i1 %4862, label %4881, label %4863, !dx.controlflow.hints !48

; <label>:4863                                    ; preds = %4856
  %4864 = lshr i32 %4715, 2
  %4865 = mul i32 %83, %4864
  %4866 = lshr i32 %4761, 3
  %4867 = add i32 %80, %4866
  %4868 = add i32 %4867, %99
  %4869 = add i32 %4868, %4865
  %4870 = shl i32 %4869, 2
  %4871 = shl i32 %4715, 3
  %4872 = and i32 %4871, 24
  %4873 = and i32 %4761, 7
  %4874 = or i32 %4872, %4873
  %4875 = shl i32 1, %4874
  %4876 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %4870, i32 undef)  ; BufferLoad(srv,index,wot)
  %4877 = extractvalue %dx.types.ResRet.i32 %4876, 0
  %4878 = and i32 %4877, %4875
  %4879 = icmp eq i32 %4878, 0
  %4880 = uitofp i1 %4879 to float
  br label %4881

; <label>:4881                                    ; preds = %4863, %4856
  %4882 = phi float [ %4880, %4863 ], [ 1.000000e+00, %4856 ]
  %4883 = fadd fast float %4858, %4882
  %4884 = fmul fast float %2784, 1.500000e+00
  %4885 = fsub fast float 3.000000e+00, %4884
  %4886 = fdiv fast float 0x3FB99999A0000000, %4885
  %4887 = fmul fast float %2784, 2.000000e+00
  %4888 = fsub fast float 8.000000e+00, %4883
  %4889 = fsub fast float %4888, %4887
  %4890 = fmul fast float %4889, 4.000000e+00
  %4891 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4890)  ; FMax(a,b)
  %4892 = fadd fast float %4891, %4883
  %4893 = fmul fast float %4892, %4886
  %4894 = fadd fast float %2784, 1.500000e+00
  %4895 = fsub fast float 1.000000e+00, %4893
  %4896 = call float @dx.op.unary.f32(i32 7, float %4895)  ; Saturate(value)
  %4897 = call float @dx.op.unary.f32(i32 23, float %4896)  ; Log(value)
  %4898 = fmul fast float %4897, %4894
  %4899 = call float @dx.op.unary.f32(i32 21, float %4898)  ; Exp(value)
  %4900 = fmul fast float %2624, %2620
  %4901 = fmul fast float %2625, %2621
  %4902 = fmul fast float %2626, %2622
  %4903 = call float @dx.op.unary.f32(i32 23, float %2762)  ; Log(value)
  %4904 = fmul fast float %4903, 2.500000e-01
  %4905 = call float @dx.op.unary.f32(i32 21, float %4904)  ; Exp(value)
  %4906 = fmul fast float %2627, %2623
  %4907 = fmul fast float %4906, %2628
  %4908 = fmul fast float %4907, %4899
  %4909 = fmul fast float %4908, %4905
  br label %5475

; <label>:4910                                    ; preds = %620
  %4911 = and i32 %635, 511
  %4912 = mul nuw nsw i32 %4911, 20
  %4913 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %4912, i32 undef)  ; BufferLoad(srv,index,wot)
  %4914 = extractvalue %dx.types.ResRet.i32 %4913, 0
  %4915 = lshr i32 %4914, 24
  %4916 = uitofp i32 %4915 to float
  %4917 = add i32 %63, -1
  %4918 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %11, i32 0, i32 %62, i32 %4917, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4919 = extractvalue %dx.types.ResRet.i32 %4918, 0
  %4920 = lshr i32 %4919, 8
  %4921 = and i32 %4919, 255
  %4922 = and i32 %4920, 255
  %4923 = uitofp i32 %4921 to float
  %4924 = uitofp i32 %4922 to float
  %4925 = fmul fast float %4923, 0x3F80101020000000
  %4926 = fmul fast float %4924, 0x3F80101020000000
  %4927 = fadd fast float %4925, -1.000000e+00
  %4928 = fadd fast float %4926, -1.000000e+00
  %4929 = call float @dx.op.unary.f32(i32 6, float %4927)  ; FAbs(value)
  %4930 = fsub fast float 1.000000e+00, %4929
  %4931 = call float @dx.op.unary.f32(i32 6, float %4928)  ; FAbs(value)
  %4932 = fsub fast float %4930, %4931
  %4933 = fsub fast float -0.000000e+00, %4932
  %4934 = call float @dx.op.binary.f32(i32 35, float %4933, float 0.000000e+00)  ; FMax(a,b)
  %4935 = fcmp fast ogt float %4927, 0.000000e+00
  %4936 = fsub fast float -0.000000e+00, %4934
  %4937 = select i1 %4935, float %4936, float %4934
  %4938 = fadd fast float %4937, %4927
  %4939 = fcmp fast ogt float %4928, 0.000000e+00
  %4940 = select i1 %4939, float %4936, float %4934
  %4941 = fadd fast float %4940, %4928
  %4942 = call float @dx.op.dot3.f32(i32 55, float %4938, float %4941, float %4932, float %4938, float %4941, float %4932)  ; Dot3(ax,ay,az,bx,by,bz)
  %4943 = call float @dx.op.unary.f32(i32 25, float %4942)  ; Rsqrt(value)
  %4944 = fmul fast float %4938, %4943
  %4945 = fmul fast float %4941, %4943
  %4946 = fmul fast float %4943, %4932
  %4947 = add i32 %63, 1
  %4948 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %11, i32 0, i32 %62, i32 %4947, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4949 = extractvalue %dx.types.ResRet.i32 %4948, 0
  %4950 = lshr i32 %4949, 8
  %4951 = and i32 %4949, 255
  %4952 = and i32 %4950, 255
  %4953 = uitofp i32 %4951 to float
  %4954 = uitofp i32 %4952 to float
  %4955 = fmul fast float %4953, 0x3F80101020000000
  %4956 = fmul fast float %4954, 0x3F80101020000000
  %4957 = fadd fast float %4955, -1.000000e+00
  %4958 = fadd fast float %4956, -1.000000e+00
  %4959 = call float @dx.op.unary.f32(i32 6, float %4957)  ; FAbs(value)
  %4960 = fsub fast float 1.000000e+00, %4959
  %4961 = call float @dx.op.unary.f32(i32 6, float %4958)  ; FAbs(value)
  %4962 = fsub fast float %4960, %4961
  %4963 = fsub fast float -0.000000e+00, %4962
  %4964 = call float @dx.op.binary.f32(i32 35, float %4963, float 0.000000e+00)  ; FMax(a,b)
  %4965 = fcmp fast ogt float %4957, 0.000000e+00
  %4966 = fsub fast float -0.000000e+00, %4964
  %4967 = select i1 %4965, float %4966, float %4964
  %4968 = fadd fast float %4967, %4957
  %4969 = fcmp fast ogt float %4958, 0.000000e+00
  %4970 = select i1 %4969, float %4966, float %4964
  %4971 = fadd fast float %4970, %4958
  %4972 = call float @dx.op.dot3.f32(i32 55, float %4968, float %4971, float %4962, float %4968, float %4971, float %4962)  ; Dot3(ax,ay,az,bx,by,bz)
  %4973 = call float @dx.op.unary.f32(i32 25, float %4972)  ; Rsqrt(value)
  %4974 = fmul fast float %4968, %4973
  %4975 = fmul fast float %4971, %4973
  %4976 = fmul fast float %4973, %4962
  %4977 = add i32 %62, -1
  %4978 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %11, i32 0, i32 %4977, i32 %63, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4979 = extractvalue %dx.types.ResRet.i32 %4978, 0
  %4980 = lshr i32 %4979, 8
  %4981 = and i32 %4979, 255
  %4982 = and i32 %4980, 255
  %4983 = uitofp i32 %4981 to float
  %4984 = uitofp i32 %4982 to float
  %4985 = fmul fast float %4983, 0x3F80101020000000
  %4986 = fmul fast float %4984, 0x3F80101020000000
  %4987 = fadd fast float %4985, -1.000000e+00
  %4988 = fadd fast float %4986, -1.000000e+00
  %4989 = call float @dx.op.unary.f32(i32 6, float %4987)  ; FAbs(value)
  %4990 = fsub fast float 1.000000e+00, %4989
  %4991 = call float @dx.op.unary.f32(i32 6, float %4988)  ; FAbs(value)
  %4992 = fsub fast float %4990, %4991
  %4993 = fsub fast float -0.000000e+00, %4992
  %4994 = call float @dx.op.binary.f32(i32 35, float %4993, float 0.000000e+00)  ; FMax(a,b)
  %4995 = fcmp fast ogt float %4987, 0.000000e+00
  %4996 = fsub fast float -0.000000e+00, %4994
  %4997 = select i1 %4995, float %4996, float %4994
  %4998 = fadd fast float %4997, %4987
  %4999 = fcmp fast ogt float %4988, 0.000000e+00
  %5000 = select i1 %4999, float %4996, float %4994
  %5001 = fadd fast float %5000, %4988
  %5002 = call float @dx.op.dot3.f32(i32 55, float %4998, float %5001, float %4992, float %4998, float %5001, float %4992)  ; Dot3(ax,ay,az,bx,by,bz)
  %5003 = call float @dx.op.unary.f32(i32 25, float %5002)  ; Rsqrt(value)
  %5004 = fmul fast float %4998, %5003
  %5005 = fmul fast float %5001, %5003
  %5006 = fmul fast float %5003, %4992
  %5007 = add i32 %62, 1
  %5008 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %11, i32 0, i32 %5007, i32 %63, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5009 = extractvalue %dx.types.ResRet.i32 %5008, 0
  %5010 = lshr i32 %5009, 8
  %5011 = and i32 %5009, 255
  %5012 = and i32 %5010, 255
  %5013 = uitofp i32 %5011 to float
  %5014 = uitofp i32 %5012 to float
  %5015 = fmul fast float %5013, 0x3F80101020000000
  %5016 = fmul fast float %5014, 0x3F80101020000000
  %5017 = fadd fast float %5015, -1.000000e+00
  %5018 = fadd fast float %5016, -1.000000e+00
  %5019 = call float @dx.op.unary.f32(i32 6, float %5017)  ; FAbs(value)
  %5020 = fsub fast float 1.000000e+00, %5019
  %5021 = call float @dx.op.unary.f32(i32 6, float %5018)  ; FAbs(value)
  %5022 = fsub fast float %5020, %5021
  %5023 = fsub fast float -0.000000e+00, %5022
  %5024 = call float @dx.op.binary.f32(i32 35, float %5023, float 0.000000e+00)  ; FMax(a,b)
  %5025 = fcmp fast ogt float %5017, 0.000000e+00
  %5026 = fsub fast float -0.000000e+00, %5024
  %5027 = select i1 %5025, float %5026, float %5024
  %5028 = fadd fast float %5027, %5017
  %5029 = fcmp fast ogt float %5018, 0.000000e+00
  %5030 = select i1 %5029, float %5026, float %5024
  %5031 = fadd fast float %5030, %5018
  %5032 = call float @dx.op.dot3.f32(i32 55, float %5028, float %5031, float %5022, float %5028, float %5031, float %5022)  ; Dot3(ax,ay,az,bx,by,bz)
  %5033 = call float @dx.op.unary.f32(i32 25, float %5032)  ; Rsqrt(value)
  %5034 = fmul fast float %5028, %5033
  %5035 = fmul fast float %5031, %5033
  %5036 = fmul fast float %5033, %5022
  %5037 = call float @dx.op.dot3.f32(i32 55, float %4944, float %4945, float %4946, float %4974, float %4975, float %4976)  ; Dot3(ax,ay,az,bx,by,bz)
  %5038 = call float @dx.op.binary.f32(i32 36, float 1.000000e+00, float %5037)  ; FMin(a,b)
  %5039 = call float @dx.op.dot3.f32(i32 55, float %4944, float %4945, float %4946, float %5004, float %5005, float %5006)  ; Dot3(ax,ay,az,bx,by,bz)
  %5040 = call float @dx.op.binary.f32(i32 36, float %5038, float %5039)  ; FMin(a,b)
  %5041 = call float @dx.op.dot3.f32(i32 55, float %4944, float %4945, float %4946, float %5034, float %5035, float %5036)  ; Dot3(ax,ay,az,bx,by,bz)
  %5042 = call float @dx.op.binary.f32(i32 36, float %5040, float %5041)  ; FMin(a,b)
  %5043 = call float @dx.op.dot3.f32(i32 55, float %4974, float %4975, float %4976, float %5004, float %5005, float %5006)  ; Dot3(ax,ay,az,bx,by,bz)
  %5044 = call float @dx.op.binary.f32(i32 36, float %5042, float %5043)  ; FMin(a,b)
  %5045 = call float @dx.op.dot3.f32(i32 55, float %4974, float %4975, float %4976, float %5034, float %5035, float %5036)  ; Dot3(ax,ay,az,bx,by,bz)
  %5046 = call float @dx.op.binary.f32(i32 36, float %5044, float %5045)  ; FMin(a,b)
  %5047 = call float @dx.op.dot3.f32(i32 55, float %5004, float %5005, float %5006, float %5034, float %5035, float %5036)  ; Dot3(ax,ay,az,bx,by,bz)
  %5048 = call float @dx.op.binary.f32(i32 36, float %5046, float %5047)  ; FMin(a,b)
  %5049 = call float @dx.op.unary.f32(i32 7, float %5048)  ; Saturate(value)
  %5050 = fsub fast float 1.000000e+00, %5049
  %5051 = add nuw nsw i32 %4912, 12
  %5052 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %5051, i32 undef)  ; BufferLoad(srv,index,wot)
  %5053 = extractvalue %dx.types.ResRet.i32 %5052, 0
  %5054 = lshr i32 %5053, 16
  %5055 = uitofp i32 %5054 to float
  %5056 = fmul fast float %5055, 0x3EF0002000000000
  %5057 = add nuw nsw i32 %4912, 8
  %5058 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %5057, i32 undef)  ; BufferLoad(srv,index,wot)
  %5059 = extractvalue %dx.types.ResRet.i32 %5058, 0
  %5060 = lshr i32 %5059, 16
  %5061 = uitofp i32 %5060 to float
  %5062 = fmul fast float %5061, 0x3EF0002000000000
  %5063 = fsub fast float %44, %5062
  %5064 = fdiv fast float %5063, %5056
  %5065 = fmul fast float %67, %43
  %5066 = fmul fast float %5065, 4.000000e+02
  %5067 = fmul fast float %44, 4.000000e+02
  %5068 = call float @dx.op.unary.f32(i32 22, float %5066)  ; Frc(value)
  %5069 = call float @dx.op.unary.f32(i32 22, float %5067)  ; Frc(value)
  %5070 = fadd fast float %5068, -5.000000e-01
  %5071 = fadd fast float %5069, -5.000000e-01
  %5072 = fmul fast float %5070, 2.000000e+00
  %5073 = fmul fast float %5071, 2.000000e+00
  %5074 = call float @dx.op.dot2.f32(i32 54, float %5072, float %5073, float %5072, float %5073)  ; Dot2(ax,ay,bx,by)
  %5075 = call float @dx.op.unary.f32(i32 24, float %5074)  ; Sqrt(value)
  %5076 = fmul fast float %5075, 0x4004C77B00000000
  %5077 = fsub fast float 2.000000e+00, %5076
  %5078 = call float @dx.op.unary.f32(i32 7, float %5077)  ; Saturate(value)
  %5079 = fmul fast float %4916, 0x3F924C82A0000000
  %5080 = fmul fast float %4916, 0x3F78278DA0000000
  %5081 = fsub fast float 0x400E470B00000000, %5079
  %5082 = fadd fast float %5081, %5064
  %5083 = fmul fast float %5082, 1.000000e+01
  %5084 = call float @dx.op.unary.f32(i32 7, float %5083)  ; Saturate(value)
  %5085 = fsub fast float 0x3FE286BC80000000, %5080
  %5086 = fadd fast float %5085, %5064
  %5087 = fmul fast float %5086, 1.250000e+00
  %5088 = call float @dx.op.unary.f32(i32 7, float %5087)  ; Saturate(value)
  %5089 = fsub fast float 1.000000e+00, %5088
  %5090 = fmul fast float %5089, %5084
  %5091 = fmul fast float %4916, 0x3F8E317100000000
  %5092 = fsub fast float 0x40079435C0000000, %5091
  %5093 = fadd fast float %5092, %5064
  %5094 = fmul fast float %5093, 0x401AAAAAA0000000
  %5095 = call float @dx.op.unary.f32(i32 7, float %5094)  ; Saturate(value)
  %5096 = fsub fast float 1.000000e+00, %5095
  %5097 = fmul fast float %5096, %5084
  %5098 = fmul fast float %5065, 4.500000e+01
  %5099 = fmul fast float %44, 4.500000e+01
  %5100 = fadd fast float %5099, -5.000000e-01
  %5101 = fmul fast float %5065, 0x4039FB1300000000
  %5102 = fadd fast float %5101, 0xBFE279A720000000
  %5103 = call float @dx.op.unary.f32(i32 27, float %5101)  ; Round_ni(value)
  %5104 = call float @dx.op.unary.f32(i32 27, float %5099)  ; Round_ni(value)
  %5105 = call float @dx.op.unary.f32(i32 27, float %5102)  ; Round_ni(value)
  %5106 = call float @dx.op.unary.f32(i32 27, float %5100)  ; Round_ni(value)
  %5107 = fadd fast float %5103, 5.000000e-01
  %5108 = fadd fast float %5104, 5.000000e-01
  %5109 = fmul fast float %5107, 0x3FFBB67B20000000
  %5110 = fsub fast float %5098, %5109
  %5111 = fsub fast float %5099, %5108
  %5112 = fadd fast float %5105, 1.000000e+00
  %5113 = fmul fast float %5112, 0x3FFBB67B20000000
  %5114 = fsub fast float %5098, %5113
  %5115 = fadd fast float %5099, -1.000000e+00
  %5116 = fsub fast float %5115, %5106
  %5117 = call float @dx.op.dot2.f32(i32 54, float %5110, float %5111, float %5110, float %5111)  ; Dot2(ax,ay,bx,by)
  %5118 = call float @dx.op.dot2.f32(i32 54, float %5114, float %5116, float %5114, float %5116)  ; Dot2(ax,ay,bx,by)
  %5119 = fcmp fast olt float %5117, %5118
  %5120 = fadd fast float %5106, 1.000000e+00
  %5121 = select i1 %5119, float %5110, float %5114
  %5122 = select i1 %5119, float %5111, float %5116
  %5123 = select i1 %5119, float %5107, float %5112
  %5124 = select i1 %5119, float %5108, float %5120
  %5125 = call float @dx.op.unary.f32(i32 6, float %5121)  ; FAbs(value)
  %5126 = call float @dx.op.unary.f32(i32 6, float %5122)  ; FAbs(value)
  %5127 = call float @dx.op.dot2.f32(i32 54, float %5125, float %5126, float 0x3FEBB67B20000000, float 5.000000e-01)  ; Dot2(ax,ay,bx,by)
  %5128 = call float @dx.op.binary.f32(i32 35, float %5127, float %5126)  ; FMax(a,b)
  %5129 = fmul fast float %5123, 0x3F96C16C20000000
  %5130 = fmul fast float %5124, 0x3F96C16C20000000
  %5131 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %5132 = extractvalue %dx.types.CBufRet.f32 %5131, 3
  %5133 = call float @dx.op.unary.f32(i32 22, float %5132)  ; Frc(value)
  %5134 = fmul fast float %5133, 0x3FC99999A0000000
  %5135 = fadd fast float %5134, %5130
  %5136 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %13, float %5129, float %5135, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5137 = extractvalue %dx.types.ResRet.f32 %5136, 0
  %5138 = fsub fast float 0x3FEEB851E0000000, %5090
  %5139 = fmul fast float %5138, 0x3FF0AAAAC0000000
  %5140 = call float @dx.op.unary.f32(i32 7, float %5139)  ; Saturate(value)
  %5141 = fmul fast float %5140, 2.000000e+00
  %5142 = fsub fast float 3.000000e+00, %5141
  %5143 = fmul fast float %5140, %5140
  %5144 = fmul fast float %5143, %5142
  %5145 = fadd fast float %5128, 0xBFE0A3D700000000
  %5146 = fadd fast float %5145, %5144
  %5147 = fmul fast float %5146, -2.000000e+01
  %5148 = call float @dx.op.unary.f32(i32 7, float %5147)  ; Saturate(value)
  %5149 = fmul fast float %5148, 2.000000e+00
  %5150 = fsub fast float 3.000000e+00, %5149
  %5151 = fmul fast float %5145, -2.000000e+01
  %5152 = call float @dx.op.unary.f32(i32 7, float %5151)  ; Saturate(value)
  %5153 = fmul fast float %5152, 2.000000e+00
  %5154 = fsub fast float 3.000000e+00, %5153
  %5155 = fmul fast float %5152, %5152
  %5156 = fmul fast float %5155, %5154
  %5157 = fsub fast float 1.000000e+00, %5156
  %5158 = fmul fast float %5157, 0x3FE51EB860000000
  %5159 = fmul fast float %5128, 0x3FC99999A0000000
  %5160 = fsub fast float 1.000000e+00, %5128
  %5161 = fmul fast float %5148, %5148
  %5162 = fmul fast float %5161, %5128
  %5163 = fmul fast float %5162, %5150
  %5164 = fadd fast float %5163, %5160
  %5165 = fmul fast float %5164, %5137
  %5166 = fsub fast float 0x3FEEB851E0000000, %5097
  %5167 = fmul fast float %5166, 0x3FF0AAAAC0000000
  %5168 = call float @dx.op.unary.f32(i32 7, float %5167)  ; Saturate(value)
  %5169 = fmul fast float %5168, 2.000000e+00
  %5170 = fsub fast float 3.000000e+00, %5169
  %5171 = fmul fast float %5168, %5168
  %5172 = fmul fast float %5171, %5170
  %5173 = fadd fast float %5145, %5172
  %5174 = fmul fast float %5173, -2.000000e+01
  %5175 = call float @dx.op.unary.f32(i32 7, float %5174)  ; Saturate(value)
  %5176 = fmul fast float %5175, 2.000000e+00
  %5177 = fsub fast float 3.000000e+00, %5176
  %5178 = fmul fast float %5175, %5175
  %5179 = fmul fast float %5178, %5128
  %5180 = fmul fast float %5179, %5177
  %5181 = fadd fast float %5180, %5160
  %5182 = fmul fast float %5181, %5137
  %5183 = fadd fast float %5158, %5159
  %5184 = fadd fast float %5183, %5182
  %5185 = fmul fast float %5097, 2.000000e+00
  %5186 = fmul fast float %5185, %5184
  %5187 = fadd fast float %5183, %5165
  %5188 = fmul fast float %5187, %5090
  %5189 = fadd fast float %5188, %5186
  %5190 = fmul fast float %5078, 0x3FD99999A0000000
  %5191 = fmul fast float %5050, 0x3FE3333340000000
  %5192 = fadd fast float %5191, 0x3FE3333340000000
  %5193 = fadd fast float %5192, %5190
  %5194 = fmul fast float %5189, %5193
  %5195 = call float @dx.op.unary.f32(i32 23, float %5194)  ; Log(value)
  %5196 = fmul fast float %5195, 3.000000e+00
  %5197 = call float @dx.op.unary.f32(i32 21, float %5196)  ; Exp(value)
  %5198 = fmul fast float %5197, 0x3FF112D7C0000000
  %5199 = fmul fast float %5197, 0xBFF8A1CB00000000
  %5200 = fmul fast float %5199, %5198
  %5201 = call float @dx.op.unary.f32(i32 21, float %5200)  ; Exp(value)
  %5202 = fmul fast float %5197, 0x3FEDDA5080000000
  %5203 = fmul fast float %5197, 0xBFB16E5400000000
  %5204 = fmul fast float %5197, 0xBFEBAC8600000000
  %5205 = fmul fast float %5202, %5201
  %5206 = fmul fast float %5203, %5201
  %5207 = fmul fast float %5204, %5201
  %5208 = fadd fast float %5205, %5198
  %5209 = fadd fast float %5206, %5198
  %5210 = fadd fast float %5207, %5198
  %5211 = call float @dx.op.unary.f32(i32 20, float %5208)  ; Htan(value)
  %5212 = call float @dx.op.unary.f32(i32 20, float %5209)  ; Htan(value)
  %5213 = call float @dx.op.unary.f32(i32 20, float %5210)  ; Htan(value)
  %5214 = fmul fast float %5211, 5.000000e+00
  %5215 = fmul fast float %5212, 5.000000e+00
  %5216 = fmul fast float %5213, 5.000000e+00
  %5217 = call float @dx.op.unary.f32(i32 7, float %5214)  ; Saturate(value)
  %5218 = call float @dx.op.unary.f32(i32 7, float %5215)  ; Saturate(value)
  %5219 = call float @dx.op.unary.f32(i32 7, float %5216)  ; Saturate(value)
  %5220 = fmul fast float %5212, 3.000000e+00
  %5221 = call float @dx.op.unary.f32(i32 7, float %5220)  ; Saturate(value)
  br label %5475

; <label>:5222                                    ; preds = %620
  br i1 %115, label %5223, label %5475, !dx.controlflow.hints !57

; <label>:5223                                    ; preds = %5222
  %5224 = and i32 %635, 511
  %5225 = mul nuw nsw i32 %5224, 20
  %5226 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %5225, i32 undef)  ; BufferLoad(srv,index,wot)
  %5227 = extractvalue %dx.types.ResRet.i32 %5226, 0
  %5228 = and i32 %5227, 255
  %5229 = uitofp i32 %5228 to float
  %5230 = lshr i32 %5227, 8
  %5231 = and i32 %5230, 255
  %5232 = uitofp i32 %5231 to float
  %5233 = lshr i32 %5227, 16
  %5234 = and i32 %5233, 255
  %5235 = uitofp i32 %5234 to float
  %5236 = lshr i32 %5227, 24
  %5237 = uitofp i32 %5236 to float
  %5238 = fmul fast float %5237, 0x3F70101020000000
  %5239 = fsub fast float 1.000000e+00, %5238
  %5240 = add nuw nsw i32 %5225, 12
  %5241 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %5240, i32 undef)  ; BufferLoad(srv,index,wot)
  %5242 = extractvalue %dx.types.ResRet.i32 %5241, 0
  %5243 = and i32 %5242, 65535
  %5244 = uitofp i32 %5243 to float
  %5245 = fmul fast float %5244, 0x3EF0002000000000
  %5246 = lshr i32 %5242, 16
  %5247 = uitofp i32 %5246 to float
  %5248 = fmul fast float %5247, 0x3EF0002000000000
  %5249 = add nuw nsw i32 %5225, 8
  %5250 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %5249, i32 undef)  ; BufferLoad(srv,index,wot)
  %5251 = extractvalue %dx.types.ResRet.i32 %5250, 0
  %5252 = and i32 %5251, 65535
  %5253 = uitofp i32 %5252 to float
  %5254 = fmul fast float %5253, 0x3EF0002000000000
  %5255 = lshr i32 %5251, 16
  %5256 = uitofp i32 %5255 to float
  %5257 = fmul fast float %5256, 0x3EF0002000000000
  %5258 = fsub fast float %43, %5254
  %5259 = fdiv fast float %5258, %5245
  %5260 = fsub fast float %44, %5257
  %5261 = fdiv fast float %5260, %5248
  %5262 = add nuw nsw i32 %5225, 16
  %5263 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %5262, i32 undef)  ; BufferLoad(srv,index,wot)
  %5264 = extractvalue %dx.types.ResRet.f32 %5263, 0
  %5265 = fdiv fast float 2.400000e+02, %5264
  %5266 = call float @dx.op.unary.f32(i32 7, float %5265)  ; Saturate(value)
  %5267 = fmul fast float %5266, 4.000000e+01
  %5268 = fptoui float %5267 to i32
  %5269 = uitofp i32 %62 to float
  %5270 = uitofp i32 %63 to float
  %5271 = fptoui float %5269 to i32
  %5272 = fptoui float %5270 to i32
  %5273 = lshr i32 %5272, 2
  %5274 = mul i32 %83, %5273
  %5275 = lshr i32 %5271, 3
  %5276 = add i32 %80, %5275
  %5277 = add i32 %5276, %99
  %5278 = add i32 %5277, %5274
  %5279 = shl i32 %5278, 2
  %5280 = shl i32 %5272, 3
  %5281 = and i32 %5280, 24
  %5282 = and i32 %5271, 7
  %5283 = or i32 %5281, %5282
  %5284 = shl i32 1, %5283
  %5285 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %5279, i32 undef)  ; BufferLoad(srv,index,wot)
  %5286 = extractvalue %dx.types.ResRet.i32 %5285, 0
  %5287 = and i32 %5286, %5284
  %5288 = icmp ne i32 %5287, 0
  %5289 = icmp eq i32 %5268, 0
  br i1 %5289, label %5406, label %5290, !dx.controlflow.hints !51

; <label>:5290                                    ; preds = %5223
  %5291 = uitofp i32 %5268 to float
  %5292 = fmul fast float %64, 5.000000e-01
  %5293 = fmul fast float %5292, %5291
  %5294 = fmul fast float %65, 5.000000e-01
  %5295 = fmul fast float %5294, %5291
  %5296 = call float @dx.op.binary.f32(i32 35, float 5.000000e-01, float %5293)  ; FMax(a,b)
  %5297 = call float @dx.op.binary.f32(i32 35, float 5.000000e-01, float %5295)  ; FMax(a,b)
  br label %5298

; <label>:5298                                    ; preds = %5393, %5290
  %5299 = phi float [ 0.000000e+00, %5290 ], [ %5396, %5393 ]
  %5300 = phi i32 [ 0, %5290 ], [ %5397, %5393 ]
  %5301 = fmul fast float %43, 0x3FF280E1E0000000
  %5302 = fmul fast float %44, 0x3FF280E1E0000000
  %5303 = sitofp i32 %5300 to float
  %5304 = fmul fast float %5303, 0x3FB99999A0000000
  %5305 = fadd fast float %5304, %5301
  %5306 = fadd fast float %5304, %5302
  %5307 = fmul fast float %5305, 1.024000e+03
  %5308 = fmul fast float %5306, 1.024000e+03
  %5309 = fadd fast float %5307, -5.120000e+02
  %5310 = fadd fast float %5308, -5.120000e+02
  %5311 = fmul fast float %5305, 0x4081BEDF00000000
  %5312 = fadd fast float %5311, 0xC071BEDF00000000
  %5313 = call float @dx.op.unary.f32(i32 22, float %5312)  ; Frc(value)
  %5314 = fmul fast float %5309, %5313
  %5315 = fadd fast float %5314, %5310
  %5316 = fmul fast float %5306, 0x4073BEBE20000000
  %5317 = fadd fast float %5316, 0xC063BEBE20000000
  %5318 = call float @dx.op.unary.f32(i32 22, float %5317)  ; Frc(value)
  %5319 = fmul fast float %5310, %5318
  %5320 = fadd fast float %5319, %5309
  %5321 = fmul fast float %5315, %5320
  %5322 = call float @dx.op.unary.f32(i32 22, float %5321)  ; Frc(value)
  %5323 = fmul fast float %5322, 2.000000e+00
  %5324 = fadd fast float %5323, -1.000000e+00
  %5325 = fmul fast float %5324, %5296
  %5326 = fmul fast float %43, 0x3FEB681740000000
  %5327 = fmul fast float %44, 0x3FEB681740000000
  %5328 = fmul fast float %5303, 0x3FC99999A0000000
  %5329 = fadd fast float %5328, 1.250000e-01
  %5330 = fadd fast float %5329, %5326
  %5331 = fadd fast float %5329, %5327
  %5332 = fmul fast float %5330, 1.024000e+03
  %5333 = fmul fast float %5331, 1.024000e+03
  %5334 = fadd fast float %5332, -5.120000e+02
  %5335 = fadd fast float %5333, -5.120000e+02
  %5336 = fmul fast float %5330, 0x4081BEDF00000000
  %5337 = fadd fast float %5336, 0xC071BEDF00000000
  %5338 = call float @dx.op.unary.f32(i32 22, float %5337)  ; Frc(value)
  %5339 = fmul fast float %5334, %5338
  %5340 = fadd fast float %5339, %5335
  %5341 = fmul fast float %5331, 0x4073BEBE20000000
  %5342 = fadd fast float %5341, 0xC063BEBE20000000
  %5343 = call float @dx.op.unary.f32(i32 22, float %5342)  ; Frc(value)
  %5344 = fmul fast float %5335, %5343
  %5345 = fadd fast float %5344, %5334
  %5346 = fmul fast float %5340, %5345
  %5347 = call float @dx.op.unary.f32(i32 22, float %5346)  ; Frc(value)
  %5348 = fmul fast float %5347, 2.000000e+00
  %5349 = fadd fast float %5348, -1.000000e+00
  %5350 = fmul fast float %5349, %5297
  %5351 = fptosi float %5325 to i32
  %5352 = sitofp i32 %5351 to float
  %5353 = fadd fast float %5352, %5269
  %5354 = fptosi float %5353 to i32
  %5355 = fptosi float %5350 to i32
  %5356 = sitofp i32 %5355 to float
  %5357 = fadd fast float %5356, %5270
  %5358 = fptosi float %5357 to i32
  %5359 = or i32 %5358, %5354
  %5360 = icmp slt i32 %5359, 0
  %5361 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %5362 = extractvalue %dx.types.CBufRet.f32 %5361, 0
  %5363 = extractvalue %dx.types.CBufRet.f32 %5361, 1
  %5364 = fptosi float %5362 to i32
  %5365 = fptosi float %5363 to i32
  %5366 = icmp sge i32 %5354, %5364
  %5367 = icmp sge i32 %5358, %5365
  %5368 = or i1 %5366, %5367
  %5369 = or i1 %5360, %5368
  br i1 %5369, label %5393, label %5370, !dx.controlflow.hints !48

; <label>:5370                                    ; preds = %5298
  %5371 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %17, i32 51)  ; CBufferLoadLegacy(handle,regIndex)
  %5372 = extractvalue %dx.types.CBufRet.i32 %5371, 1
  %5373 = shl i32 %5372, 2
  %5374 = extractvalue %dx.types.CBufRet.i32 %5371, 3
  %5375 = shl i32 %5374, 1
  %5376 = lshr i32 %5358, 2
  %5377 = extractvalue %dx.types.CBufRet.i32 %5371, 2
  %5378 = mul i32 %5377, %5376
  %5379 = lshr i32 %5354, 3
  %5380 = add i32 %5373, %5379
  %5381 = add i32 %5380, %5375
  %5382 = add i32 %5381, %5378
  %5383 = shl i32 %5382, 2
  %5384 = shl i32 %5358, 3
  %5385 = and i32 %5384, 24
  %5386 = and i32 %5354, 7
  %5387 = or i32 %5385, %5386
  %5388 = shl i32 1, %5387
  %5389 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %5383, i32 undef)  ; BufferLoad(srv,index,wot)
  %5390 = extractvalue %dx.types.ResRet.i32 %5389, 0
  %5391 = and i32 %5390, %5388
  %5392 = icmp ne i32 %5391, 0
  br label %5393

; <label>:5393                                    ; preds = %5370, %5298
  %5394 = phi i1 [ %5392, %5370 ], [ false, %5298 ]
  %5395 = uitofp i1 %5394 to float
  %5396 = fadd fast float %5395, %5299
  %5397 = add nuw nsw i32 %5300, 1
  %5398 = icmp eq i32 %5397, 5
  br i1 %5398, label %5399, label %5298

; <label>:5399                                    ; preds = %5393
  %5400 = uitofp i1 %5288 to float
  %5401 = fmul fast float %5400, 0x3FC99999A0000000
  %5402 = fmul fast float %5401, %5396
  %5403 = fadd fast float %5402, -5.000000e-01
  %5404 = fmul fast float %5403, 2.000000e+00
  %5405 = call float @dx.op.unary.f32(i32 7, float %5404)  ; Saturate(value)
  br label %5406

; <label>:5406                                    ; preds = %5399, %5223
  %5407 = phi float [ %5405, %5399 ], [ 0.000000e+00, %5223 ]
  %5408 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %5409 = extractvalue %dx.types.CBufRet.f32 %5408, 3
  %5410 = fmul fast float %5409, 0x3F9EB851E0000000
  %5411 = fadd fast float %5410, %5261
  %5412 = call float @dx.op.unary.f32(i32 22, float %5411)  ; Frc(value)
  %5413 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %13, float %5259, float %5412, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5414 = extractvalue %dx.types.ResRet.f32 %5413, 3
  %5415 = call float @dx.op.unary.f32(i32 7, float %5407)  ; Saturate(value)
  %5416 = fmul fast float %5414, %5239
  %5417 = fsub fast float %5415, %5416
  %5418 = call float @dx.op.unary.f32(i32 7, float %5417)  ; Saturate(value)
  %5419 = fmul fast float %5414, 1.250000e+00
  %5420 = fsub fast float %5415, %5419
  %5421 = call float @dx.op.unary.f32(i32 7, float %5420)  ; Saturate(value)
  %5422 = fmul fast float %5421, 0x3FD3333340000000
  %5423 = fadd fast float %5422, %5418
  %5424 = fmul fast float %5423, %5423
  %5425 = fmul fast float %5424, %5423
  %5426 = call float @dx.op.unary.f32(i32 7, float %5425)  ; Saturate(value)
  %5427 = fmul fast float %5426, 0x3FEBD70A40000000
  %5428 = fsub fast float 1.000000e+00, %5427
  %5429 = call float @dx.op.unary.f32(i32 7, float %43)  ; Saturate(value)
  %5430 = call float @dx.op.unary.f32(i32 7, float %44)  ; Saturate(value)
  %5431 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %14, float %5429, float %5430, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5432 = extractvalue %dx.types.ResRet.f32 %5431, 0
  %5433 = bitcast float %5432 to i32
  %5434 = lshr i32 %5433, 8
  %5435 = and i32 %5433, 255
  %5436 = and i32 %5434, 255
  %5437 = uitofp i32 %5435 to float
  %5438 = uitofp i32 %5436 to float
  %5439 = fmul fast float %5437, 0x3F80101020000000
  %5440 = fmul fast float %5438, 0x3F80101020000000
  %5441 = fadd fast float %5439, -1.000000e+00
  %5442 = fadd fast float %5440, -1.000000e+00
  %5443 = call float @dx.op.unary.f32(i32 6, float %5441)  ; FAbs(value)
  %5444 = fsub fast float 1.000000e+00, %5443
  %5445 = call float @dx.op.unary.f32(i32 6, float %5442)  ; FAbs(value)
  %5446 = fsub fast float %5444, %5445
  %5447 = fsub fast float -0.000000e+00, %5446
  %5448 = call float @dx.op.binary.f32(i32 35, float %5447, float 0.000000e+00)  ; FMax(a,b)
  %5449 = fcmp fast ogt float %5441, 0.000000e+00
  %5450 = fsub fast float -0.000000e+00, %5448
  %5451 = select i1 %5449, float %5450, float %5448
  %5452 = fadd fast float %5451, %5441
  %5453 = fcmp fast ogt float %5442, 0.000000e+00
  %5454 = select i1 %5453, float %5450, float %5448
  %5455 = fadd fast float %5454, %5442
  %5456 = call float @dx.op.dot3.f32(i32 55, float %5452, float %5455, float %5446, float %5452, float %5455, float %5446)  ; Dot3(ax,ay,az,bx,by,bz)
  %5457 = call float @dx.op.unary.f32(i32 25, float %5456)  ; Rsqrt(value)
  %5458 = fmul fast float %5452, %5457
  %5459 = fmul fast float %5455, %5457
  %5460 = fmul fast float %5457, %5446
  %5461 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 101)  ; CBufferLoadLegacy(handle,regIndex)
  %5462 = extractvalue %dx.types.CBufRet.f32 %5461, 0
  %5463 = extractvalue %dx.types.CBufRet.f32 %5461, 1
  %5464 = extractvalue %dx.types.CBufRet.f32 %5461, 2
  %5465 = call float @dx.op.dot3.f32(i32 55, float %5458, float %5459, float %5460, float %5462, float %5463, float %5464)  ; Dot3(ax,ay,az,bx,by,bz)
  %5466 = fadd fast float %5465, 2.500000e-01
  %5467 = call float @dx.op.unary.f32(i32 6, float %5466)  ; FAbs(value)
  %5468 = fsub fast float 1.000000e+00, %5467
  %5469 = fmul fast float %5229, 0x3F7278DF60000000
  %5470 = fmul fast float %5232, 0x3F7278DF60000000
  %5471 = fmul fast float %5235, 0x3F7278DF60000000
  %5472 = fmul fast float %5469, %5468
  %5473 = fmul fast float %5470, %5468
  %5474 = fmul fast float %5471, %5468
  br label %5475

; <label>:5475                                    ; preds = %5406, %5222, %4910, %4881, %2812, %2801, %2440, %2211, %1975, %1973, %1722, %1608, %985, %982, %968, %966, %620, %615
  %5476 = phi float [ %5217, %4910 ], [ %2446, %2440 ], [ %616, %1722 ], [ %2310, %2211 ], [ %1717, %1608 ], [ %1408, %985 ], [ %616, %982 ], [ %616, %615 ], [ %975, %968 ], [ %852, %966 ], [ %1981, %1975 ], [ %1859, %1973 ], [ %2620, %2801 ], [ %4900, %4881 ], [ 0.000000e+00, %2812 ], [ %5472, %5406 ], [ 0.000000e+00, %5222 ], [ 1.000000e+00, %620 ]
  %5477 = phi float [ %5218, %4910 ], [ %2447, %2440 ], [ %617, %1722 ], [ %2311, %2211 ], [ %1718, %1608 ], [ %1409, %985 ], [ %617, %982 ], [ %617, %615 ], [ %977, %968 ], [ %853, %966 ], [ %1983, %1975 ], [ %1860, %1973 ], [ %2621, %2801 ], [ %4901, %4881 ], [ 0.000000e+00, %2812 ], [ %5473, %5406 ], [ 0.000000e+00, %5222 ], [ 0.000000e+00, %620 ]
  %5478 = phi float [ %5219, %4910 ], [ %2448, %2440 ], [ %618, %1722 ], [ %2312, %2211 ], [ %1719, %1608 ], [ %1410, %985 ], [ %618, %982 ], [ %618, %615 ], [ %979, %968 ], [ %854, %966 ], [ %1985, %1975 ], [ %1861, %1973 ], [ %2622, %2801 ], [ %4902, %4881 ], [ 0.000000e+00, %2812 ], [ %5474, %5406 ], [ 0.000000e+00, %5222 ], [ 0.000000e+00, %620 ]
  %5479 = phi float [ %5221, %4910 ], [ %2449, %2440 ], [ %619, %1722 ], [ %2314, %2211 ], [ %1721, %1608 ], [ %1411, %985 ], [ %619, %982 ], [ %619, %615 ], [ %981, %968 ], [ %855, %966 ], [ %1987, %1975 ], [ %1862, %1973 ], [ %2811, %2801 ], [ %4909, %4881 ], [ 0.000000e+00, %2812 ], [ %5428, %5406 ], [ 0.000000e+00, %5222 ], [ 1.000000e+00, %620 ]
  %5480 = fmul fast float %5479, %5476
  %5481 = fmul fast float %5479, %5477
  %5482 = fmul fast float %5479, %5478
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %34, i32 %35, i32 undef, float %5480, float %5481, float %5482, float %5479, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %5483 = fcmp fast ogt float %5479, 0.000000e+00
  %5484 = and i1 %5483, %116
  %5485 = zext i1 %5484 to i32
  %5486 = mul i32 %18, 8
  %5487 = add i32 %19, %5486
  %5488 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?gsHudOutlineMask1@@3PAY07$$CAIA.1dim", i32 0, i32 %5487
  store i32 %5485, i32 addrspace(3)* %5488, align 4, !tbaa !58
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %5489 = or i32 %19, %18
  %5490 = icmp ult i32 %5489, 4
  br i1 %5490, label %5491, label %5515, !dx.controlflow.hints !62

; <label>:5491                                    ; preds = %5475
  %5492 = shl i32 %18, 1
  %5493 = shl i32 %19, 1
  %5494 = mul i32 %5492, 8
  %5495 = add i32 %5493, %5494
  %5496 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?gsHudOutlineMask1@@3PAY07$$CAIA.1dim", i32 0, i32 %5495
  %5497 = load i32, i32 addrspace(3)* %5496, align 4, !tbaa !58
  %5498 = or i32 %5493, 1
  %5499 = mul i32 %5492, 8
  %5500 = add i32 %5498, %5499
  %5501 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?gsHudOutlineMask1@@3PAY07$$CAIA.1dim", i32 0, i32 %5500
  %5502 = load i32, i32 addrspace(3)* %5501, align 4, !tbaa !58
  %5503 = or i32 %5492, 1
  %5504 = mul i32 %5503, 8
  %5505 = add i32 %5498, %5504
  %5506 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?gsHudOutlineMask1@@3PAY07$$CAIA.1dim", i32 0, i32 %5505
  %5507 = load i32, i32 addrspace(3)* %5506, align 4, !tbaa !58
  %5508 = mul i32 %5503, 8
  %5509 = add i32 %5493, %5508
  %5510 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?gsHudOutlineMask1@@3PAY07$$CAIA.1dim", i32 0, i32 %5509
  %5511 = load i32, i32 addrspace(3)* %5510, align 4, !tbaa !58
  %5512 = or i32 %5502, %5497
  %5513 = or i32 %5512, %5507
  %5514 = or i32 %5513, %5511
  store i32 %5514, i32 addrspace(3)* %5488, align 4, !tbaa !58
  br label %5515

; <label>:5515                                    ; preds = %5491, %5475
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %5516 = icmp ult i32 %5489, 2
  br i1 %5516, label %5517, label %5547, !dx.controlflow.hints !63

; <label>:5517                                    ; preds = %5515
  %5518 = shl i32 %18, 1
  %5519 = shl i32 %19, 1
  %5520 = mul i32 %5518, 8
  %5521 = add i32 %5519, %5520
  %5522 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?gsHudOutlineMask1@@3PAY07$$CAIA.1dim", i32 0, i32 %5521
  %5523 = load i32, i32 addrspace(3)* %5522, align 4, !tbaa !58
  %5524 = or i32 %5519, 1
  %5525 = mul i32 %5518, 8
  %5526 = add i32 %5524, %5525
  %5527 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?gsHudOutlineMask1@@3PAY07$$CAIA.1dim", i32 0, i32 %5526
  %5528 = load i32, i32 addrspace(3)* %5527, align 4, !tbaa !58
  %5529 = or i32 %5518, 1
  %5530 = mul i32 %5529, 8
  %5531 = add i32 %5524, %5530
  %5532 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?gsHudOutlineMask1@@3PAY07$$CAIA.1dim", i32 0, i32 %5531
  %5533 = load i32, i32 addrspace(3)* %5532, align 4, !tbaa !58
  %5534 = mul i32 %5529, 8
  %5535 = add i32 %5519, %5534
  %5536 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?gsHudOutlineMask1@@3PAY07$$CAIA.1dim", i32 0, i32 %5535
  %5537 = load i32, i32 addrspace(3)* %5536, align 4, !tbaa !58
  %5538 = or i32 %5528, %5523
  %5539 = or i32 %5538, %5533
  %5540 = or i32 %5539, %5537
  %5541 = icmp ne i32 %5540, 0
  %5542 = select i1 %5541, float 1.000000e+00, float 0.000000e+00
  %5543 = lshr i32 %34, 2
  %5544 = lshr i32 %35, 2
  %5545 = add i32 %5543, %18
  %5546 = add i32 %5544, %19
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %5545, i32 %5546, i32 undef, float %5542, float %5542, float %5542, float %5542, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %5547

; <label>:5547                                    ; preds = %5517, %5515, %0
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
!46 = distinct !{!46, !"dx.controlflow.hints", i32 1}
!47 = distinct !{!47, !"dx.controlflow.hints", i32 1}
!48 = distinct !{!48, !"dx.controlflow.hints", i32 2}
!49 = distinct !{!49, !"dx.controlflow.hints", i32 1}
!50 = distinct !{!50, !"dx.controlflow.hints", i32 2}
!51 = distinct !{!51, !"dx.controlflow.hints", i32 1}
!52 = distinct !{!52, !"dx.controlflow.hints", i32 2}
!53 = distinct !{!53, !"dx.controlflow.hints", i32 2}
!54 = distinct !{!54, !"dx.controlflow.hints", i32 1}
!55 = distinct !{!55, !"dx.controlflow.hints", i32 1}
!56 = distinct !{!56, !"dx.controlflow.hints", i32 2}
!57 = distinct !{!57, !"dx.controlflow.hints", i32 2}
!58 = !{!59, !59, i64 0}
!59 = !{!"int", !60, i64 0}
!60 = !{!"omnipotent char", !61, i64 0}
!61 = !{!"Simple C/C++ TBAA"}
!62 = distinct !{!62, !"dx.controlflow.hints", i32 2}
!63 = distinct !{!63, !"dx.controlflow.hints", i32 2}

