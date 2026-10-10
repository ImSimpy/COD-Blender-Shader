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
; shader hash: f7e71464f69ca6620a53fc17b5cae8d0
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
;   [64 x i8] (type annotation not present)
;
; }
;
; Resource bind info for 
; {
;
;   [88 x i8] (type annotation not present)
; }
;
; Resource bind info for 
; {
;
;   [32 x i8] (type annotation not present)
; }
;
; Resource bind info for 
; {
;
;   [16 x i8] (type annotation not present)
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
;                                   sampler      NA          NA      S0             s1     1
;                                   sampler      NA          NA      S1             s3     1
;                                   texture  struct         r/o      T0             t3     1
;                                   texture  struct         r/o      T1             t4     1
;                                   texture  struct         r/o      T2             t5     1
;                                   texture    byte         r/o      T3            t17     1
;                                   texture    byte         r/o      T4            t20     1
;                                   textureunorm_f32          2d      T5             t0     1
;                                   textureunorm_f32          2d      T6             t1     1
;                                   textureunorm_f32          2d      T7            t12     1
;                                       UAVunorm_f32          2d      U0             u0     1
;                                       UAVunorm_f32          2d      U1             u1     1
;                                       UAV     u32          2d      U2             u2     1
;                                       UAVunorm_f32          2d      U3             u3     1
;                                       UAV     f32          2d      U4             u4     1
;                                       UAV     f32          2d      U5             u5     1
;                                       UAVunorm_f32          2d      U6             u6     1
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.CBufRet.i32 = type { i32, i32, i32, i32 }
%dx.types.ResRet.i32 = type { i32, i32, i32, i32, i32 }
%dx.types.CBufRet.f32 = type { float, float, float, float }
%dx.types.ResRet.f32 = type { float, float, float, float, i32 }
%"class.StructuredBuffer<VectorFieldGpu>" = type { %struct.VectorFieldGpu }
%struct.VectorFieldGpu = type { <3 x float>, float, <3 x float>, float, <3 x float>, float, <3 x float>, i32, <3 x float>, <3 x float> }
%"class.StructuredBuffer<VectorSubFieldGpu>" = type { %struct.VectorSubFieldGpu }
%struct.VectorSubFieldGpu = type { <3 x float>, i32, <3 x float>, i32 }
%"class.StructuredBuffer<vector<unsigned int, 4> >" = type { <4 x i32> }
%struct.ByteAddressBuffer = type { i32 }
%"class.Texture2D<float>" = type { float, %"class.Texture2D<float>::mips_type" }
%"class.Texture2D<float>::mips_type" = type { i32 }
%"class.RWTexture2D<float>" = type { float }
%"class.RWTexture2D<unsigned int>" = type { i32 }
%hostlayout.scene = type { %hostlayout.struct.GfxCodeSceneConsts }
%hostlayout.struct.GfxCodeSceneConsts = type { <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <3 x float>, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x i32>, <4 x i32>, <4 x float>, float, float, float, float, i32, i32, float, float, <2 x i32>, <2 x i32>, <2 x float>, <2 x float>, <3 x float>, i32, <3 x float>, float, <3 x float>, float, <2 x float>, <2 x float>, <3 x float>, float, <3 x float>, float, float, float, float, float, <3 x float>, float, i32, float, float, float, <4 x float>, <3 x float>, float, float, float, float, float, <4 x float>, float, float, float, float, i32, i32, i32, float, <4 x float>, i32, i32, i32, i32, i32, i32, i32, i32, <2 x i32>, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, [2 x <4 x i32>], [3 x <2 x float>], i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <2 x float>, <2 x float>, <4 x float>, <4 x i32>, <4 x float>, i32, float, float, float, i32, i32, i32, i32, <2 x float>, <2 x float>, <2 x float>, <2 x float>, i32, i32, <2 x float>, <2 x float>, <2 x float>, <3 x float>, i32, i32, i32, i32, i32, <4 x i32>, <4 x i32>, <4 x i32>, <4 x float>, i32, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <3 x float>, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], <4 x float>, [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], i32, i32, float, i32, <2 x float>, float, float, float, float, float, i32, <3 x float>, float, float, float, float, float, <3 x float>, float, <3 x float>, float, <3 x float>, float, float, float, float, float, <2 x float>, <2 x float>, float, float, float, float, <3 x float>, float, <2 x float>, i32, i32, <3 x float>, float, float, float, float, float, float, float, float, float, [4 x <3 x float>], i32, [4 x <3 x float>], i32, [4 x <3 x float>], i32, <4 x i32>, <2 x float>, <2 x float>, <2 x float>, i32, i32, float, float, float, float, <4 x float>, <4 x i32>, <4 x float>, <4 x float>, <4 x float>, i32, i32, i32, i32, <4 x float>, i32, float, float, i32, i32, float, float, i32, i32, float, float, i32, i32, float, float, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, float, float, float, float, i32, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, i32, i32, i32, float, <4 x float>, <4 x float>, <4 x float>, <4 x float>, i32, i32, i32, float, <4 x float>, float, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x i32>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [8 x <4 x float>], [8 x <4 x float>], <4 x float>, <3 x float>, i32, <2 x float>, float, float, float, float, float, float, <2 x float>, <2 x float>, <2 x float>, <2 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <2 x float>, float, float, <4 x float>, i32, i32, i32, i32, <3 x float>, i32, <4 x i32>, <4 x i32>, <2 x float>, <2 x i32>, <4 x float>, <4 x float>, <2 x float>, <2 x float>, [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, float, i32, i32, i32, i32, i32, float, float, <2 x float>, <2 x float>, float, float, float, float, i32, float, float, float, float, float, float, float, float, float, float, float, float, i32, i32, i32, float, float, float, i32, <2 x i32>, <2 x i32>, <4 x i32>, float, float, float, float, <4 x float>, <4 x float>, <2 x float>, <2 x float>, <4 x float>, <4 x float>, float, float, float, float, <4 x float>, float, float, float, float, i32, i32, float, float, <4 x float>, <2 x float>, <2 x float>, i32, i32, float, float, [4 x <4 x float>], float, float, float, float, float, float, float, float, i32, i32, i32, float, <4 x float>, <4 x float>, i32, i32, i32, i32, <2 x i32>, <2 x i32>, [2 x <4 x i32>], i32, float, float, float, i32, float, float, i32, <2 x i32>, <2 x float>, float, float, float, i32, %struct.GfxWeatherData, %hostlayout.struct.GfxVolumetricData, %struct.GfxFogRaymarchingData, %struct.GfxEnvironmentalFogData, %struct.GfxShallowWaterData, %struct.GfxGroundDeformationData, %struct.GfxSplinedModelGlobals }
%struct.GfxWeatherData = type { i32, i32, i32, i32, float, float, float, float, float, float, i32, i32, float, float, float, float, i32, i32, i32, i32, float, float, float, float, float, i32, i32, i32, i32, i32, i32, i32, <3 x float>, i32, <3 x float>, i32, i32, float, i32, i32, float, float, float, float }
%hostlayout.struct.GfxVolumetricData = type { [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <2 x float>, <2 x float>, <2 x float>, <2 x float>, <3 x i32>, i32, <3 x float>, i32, <4 x float>, <3 x float>, i32, i32, float, float, float, i32, i32, i32, float, <4 x float>, float, float, i32, i32, <3 x float>, i32, <3 x float>, float, <3 x float>, float, <2 x float>, float, float, <3 x float>, float, <3 x float>, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, <3 x float>, float, i32, float, float, float, <3 x float>, float, <2 x float>, <2 x float>, <3 x float>, float, i32, float, float, float, float, float, float, float, i32, i32, float, float, <3 x float>, float, i32, i32, <2 x float> }
%struct.GfxFogRaymarchingData = type { <2 x float>, <2 x float>, float, float, float, float, float, float, float, float, float, float, float, float, <2 x float>, <2 x float>, <3 x float>, float }
%struct.GfxEnvironmentalFogData = type { float, float, float, i32 }
%struct.GfxShallowWaterData = type { i32, i32, i32, i32, float, float, float, float, <2 x float>, <2 x float>, float, float, float, float, <3 x float>, float, float, float, float, float, float, float, float, float, i32, float, float, float, float, float, float, float, float, float, float, float, i32, float, float, float, float, i32, i32, i32 }
%struct.GfxGroundDeformationData = type { <2 x float>, <2 x float>, float, float, float, float, float, float, float, float, float, float, float, float, float, float, i32, i32 }
%struct.GfxSplinedModelGlobals = type { [64 x <4 x float>], [64 x <4 x float>], [16 x <4 x float>], [32 x <4 x float>], [64 x <4 x float>], [16 x <4 x float>], [16 x <4 x float>], float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float }
%ConstantBufferShallowWater = type { %struct.FluidConstants }
%struct.FluidConstants = type { i32, i32, i32, float, i32, i32, float, float, i32, i32, <2 x float>, i32, i32, i32, i32 }
%struct.SamplerState = type { i32 }

define void @cs_update_water_bounds() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 6, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 5, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 4, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 3, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 12, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 20, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 17, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call i32 @dx.op.threadIdInGroup.i32(i32 95, i32 0)  ; ThreadIdInGroup(component)
  %21 = call i32 @dx.op.threadIdInGroup.i32(i32 95, i32 1)  ; ThreadIdInGroup(component)
  %22 = call i32 @dx.op.groupId.i32(i32 94, i32 0)  ; GroupId(component)
  %23 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %18, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %24 = extractvalue %dx.types.CBufRet.i32 %23, 0
  %25 = icmp eq i32 %24, 2
  br i1 %25, label %26, label %1189, !dx.controlflow.hints !37

; <label>:26                                      ; preds = %0
  %27 = shl i32 %22, 2
  %28 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %27, i32 undef)  ; BufferLoad(srv,index,wot)
  %29 = extractvalue %dx.types.ResRet.i32 %28, 0
  %30 = lshr i32 %29, 16
  %31 = shl i32 %29, 3
  %32 = and i32 %31, 524280
  %33 = shl nuw nsw i32 %30, 3
  %34 = add i32 %32, %20
  %35 = add i32 %33, %21
  %36 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %19, i32 428)  ; CBufferLoadLegacy(handle,regIndex)
  %37 = extractvalue %dx.types.CBufRet.i32 %36, 2
  %38 = icmp uge i32 %34, %37
  %39 = icmp uge i32 %35, %37
  %40 = or i1 %38, %39
  br i1 %40, label %1207, label %41, !dx.controlflow.hints !38

; <label>:41                                      ; preds = %26
  %42 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 433)  ; CBufferLoadLegacy(handle,regIndex)
  %43 = extractvalue %dx.types.CBufRet.f32 %42, 3
  %44 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 435)  ; CBufferLoadLegacy(handle,regIndex)
  %45 = extractvalue %dx.types.CBufRet.f32 %44, 2
  %46 = fmul fast float %45, %43
  %47 = sitofp i32 %34 to float
  %48 = sitofp i32 %35 to float
  %49 = fadd fast float %47, 5.000000e-01
  %50 = fadd fast float %48, 5.000000e-01
  %51 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 429)  ; CBufferLoadLegacy(handle,regIndex)
  %52 = extractvalue %dx.types.CBufRet.f32 %51, 3
  %53 = fmul fast float %52, %49
  %54 = fmul fast float %52, %50
  %55 = fadd fast float %53, -5.000000e-01
  %56 = fadd fast float %54, -5.000000e-01
  %57 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 430)  ; CBufferLoadLegacy(handle,regIndex)
  %58 = extractvalue %dx.types.CBufRet.f32 %57, 0
  %59 = extractvalue %dx.types.CBufRet.f32 %57, 1
  %60 = fmul fast float %45, %58
  %61 = fmul fast float %45, %59
  %62 = fsub fast float %55, %60
  %63 = fsub fast float %56, %61
  %64 = call float @dx.op.unary.f32(i32 22, float %62)  ; Frc(value)
  %65 = call float @dx.op.unary.f32(i32 22, float %63)  ; Frc(value)
  %66 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 367)  ; CBufferLoadLegacy(handle,regIndex)
  %67 = extractvalue %dx.types.CBufRet.f32 %66, 2
  %68 = extractvalue %dx.types.CBufRet.f32 %66, 3
  %69 = fsub fast float %67, %58
  %70 = fsub fast float %68, %59
  %71 = fmul fast float %69, %45
  %72 = fmul fast float %70, %45
  %73 = fsub fast float %64, %71
  %74 = fsub fast float %65, %72
  %75 = fadd fast float %73, -5.000000e-01
  %76 = fadd fast float %74, -5.000000e-01
  %77 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %17, float %64, float %65, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %78 = extractvalue %dx.types.ResRet.f32 %77, 0
  %79 = fcmp fast oeq float %78, 0.000000e+00
  br i1 %79, label %80, label %97, !dx.controlflow.hints !39

; <label>:80                                      ; preds = %41
  %81 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %16, float %64, float %65, float undef, float undef, i32 -1, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %82 = extractvalue %dx.types.ResRet.f32 %81, 0
  %83 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %16, float %64, float %65, float undef, float undef, i32 1, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %84 = extractvalue %dx.types.ResRet.f32 %83, 0
  %85 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %16, float %64, float %65, float undef, float undef, i32 0, i32 1, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %86 = extractvalue %dx.types.ResRet.f32 %85, 0
  %87 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %16, float %64, float %65, float undef, float undef, i32 0, i32 -1, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %88 = extractvalue %dx.types.ResRet.f32 %87, 0
  %89 = fcmp fast ogt float %82, 0.000000e+00
  %90 = fcmp fast ogt float %84, 0.000000e+00
  %91 = fcmp fast ogt float %86, 0.000000e+00
  %92 = fcmp fast ogt float %88, 0.000000e+00
  %93 = or i1 %89, %90
  %94 = or i1 %93, %91
  %95 = or i1 %94, %92
  %96 = select i1 %95, i32 3, i32 4
  call void @dx.op.textureStore.i32(i32 67, %dx.types.Handle %5, i32 %34, i32 %35, i32 undef, i32 %96, i32 %96, i32 %96, i32 %96, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %4, i32 %34, i32 %35, i32 undef, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %3, i32 %34, i32 %35, i32 undef, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %34, i32 %35, i32 undef, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %34, i32 %35, i32 undef, float 0x3FE0101020000000, float 0x3FE0101020000000, float 0x3FE0101020000000, float 0x3FE0101020000000, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %1207

; <label>:97                                      ; preds = %41
  %98 = call float @dx.op.dot2.f32(i32 54, float %75, float %76, float %75, float %76)  ; Dot2(ax,ay,bx,by)
  %99 = fmul fast float %46, %46
  %100 = fcmp fast olt float %98, %99
  %101 = fcmp fast oge float %73, 0.000000e+00
  %102 = fcmp fast oge float %74, 0.000000e+00
  %103 = and i1 %101, %102
  %104 = fcmp fast olt float %73, 1.000000e+00
  %105 = fcmp fast olt float %74, 1.000000e+00
  %106 = and i1 %104, %105
  %107 = and i1 %103, %106
  %108 = extractvalue %dx.types.CBufRet.f32 %44, 1
  %109 = fcmp fast une float %108, 0.000000e+00
  %110 = and i1 %100, %109
  %111 = fadd fast float %78, -5.000000e-01
  %112 = call float @dx.op.unary.f32(i32 6, float %111)  ; FAbs(value)
  %113 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 365)  ; CBufferLoadLegacy(handle,regIndex)
  %114 = extractvalue %dx.types.CBufRet.f32 %113, 3
  %115 = fmul fast float %114, %112
  %116 = fcmp fast olt float %115, %43
  %117 = and i1 %110, %116
  %118 = extractvalue %dx.types.CBufRet.f32 %42, 0
  %119 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 431)  ; CBufferLoadLegacy(handle,regIndex)
  %120 = extractvalue %dx.types.CBufRet.f32 %119, 3
  %121 = select i1 %117, float %118, float %120
  %122 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 366)  ; CBufferLoadLegacy(handle,regIndex)
  %123 = extractvalue %dx.types.CBufRet.f32 %122, 1
  %124 = fmul fast float %121, %123
  %125 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 434)  ; CBufferLoadLegacy(handle,regIndex)
  %126 = extractvalue %dx.types.CBufRet.f32 %125, 0
  %127 = extractvalue %dx.types.CBufRet.f32 %125, 3
  %128 = select i1 %117, float %126, float %127
  %129 = fmul fast float %128, %123
  br i1 %107, label %130, label %140, !dx.controlflow.hints !40

; <label>:130                                     ; preds = %97
  %131 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %17, float %73, float %74, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %132 = extractvalue %dx.types.ResRet.f32 %131, 0
  %133 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %17, float %73, float %74, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %134 = extractvalue %dx.types.ResRet.f32 %133, 0
  %135 = fsub fast float 1.000000e+00, %134
  %136 = call float @dx.op.binary.f32(i32 36, float %132, float %135)  ; FMin(a,b)
  %137 = fcmp fast ogt float %132, 0.000000e+00
  %138 = select i1 %137, float %124, float 0.000000e+00
  %139 = fadd fast float %138, %132
  br label %140

; <label>:140                                     ; preds = %130, %97
  %141 = phi float [ %139, %130 ], [ 0.000000e+00, %97 ]
  %142 = phi float [ %136, %130 ], [ 1.000000e+00, %97 ]
  %143 = fsub fast float %141, %78
  %144 = call float @dx.op.unary.f32(i32 7, float %143)  ; Saturate(value)
  %145 = fsub fast float %142, %129
  %146 = fcmp fast ogt float %144, 0.000000e+00
  %147 = fcmp ule float %145, %78
  %148 = and i1 %146, %147
  br i1 %148, label %149, label %298, !dx.controlflow.hints !41

; <label>:149                                     ; preds = %140
  %150 = add i32 %34, -1
  %151 = sitofp i32 %150 to float
  %152 = fadd fast float %151, 5.000000e-01
  %153 = fmul fast float %52, %152
  %154 = fadd fast float %153, -5.000000e-01
  %155 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %16, float %64, float %65, float undef, float undef, i32 -1, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %156 = extractvalue %dx.types.ResRet.f32 %155, 0
  %157 = fsub fast float %154, %60
  %158 = call float @dx.op.unary.f32(i32 22, float %157)  ; Frc(value)
  %159 = fsub fast float %158, %71
  %160 = fcmp fast oge float %159, 0.000000e+00
  %161 = and i1 %160, %102
  %162 = fcmp fast olt float %159, 1.000000e+00
  %163 = and i1 %162, %105
  %164 = and i1 %161, %163
  br i1 %164, label %165, label %175, !dx.controlflow.hints !42

; <label>:165                                     ; preds = %149
  %166 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %17, float %159, float %74, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %167 = extractvalue %dx.types.ResRet.f32 %166, 0
  %168 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %17, float %159, float %74, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %169 = extractvalue %dx.types.ResRet.f32 %168, 0
  %170 = fsub fast float 1.000000e+00, %169
  %171 = call float @dx.op.binary.f32(i32 36, float %167, float %170)  ; FMin(a,b)
  %172 = fcmp fast ogt float %167, 0.000000e+00
  %173 = select i1 %172, float %124, float 0.000000e+00
  %174 = fadd fast float %173, %167
  br label %175

; <label>:175                                     ; preds = %165, %149
  %176 = phi float [ %174, %165 ], [ 0.000000e+00, %149 ]
  %177 = phi float [ %171, %165 ], [ 1.000000e+00, %149 ]
  %178 = fsub fast float %176, %156
  %179 = call float @dx.op.unary.f32(i32 7, float %178)  ; Saturate(value)
  %180 = fcmp fast oeq float %179, 0.000000e+00
  %181 = fsub fast float %177, %129
  %182 = fcmp fast ogt float %181, %156
  %183 = or i1 %180, %182
  %184 = fcmp fast ogt float %156, 0.000000e+00
  %185 = and i1 %184, %183
  br i1 %185, label %298, label %186, !dx.controlflow.hints !43

; <label>:186                                     ; preds = %175
  %187 = add i32 %34, 1
  %188 = sitofp i32 %187 to float
  %189 = fadd fast float %188, 5.000000e-01
  %190 = fmul fast float %52, %189
  %191 = fadd fast float %190, -5.000000e-01
  %192 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %16, float %64, float %65, float undef, float undef, i32 1, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %193 = extractvalue %dx.types.ResRet.f32 %192, 0
  %194 = fsub fast float %191, %60
  %195 = call float @dx.op.unary.f32(i32 22, float %194)  ; Frc(value)
  %196 = fsub fast float %195, %71
  %197 = fcmp fast oge float %196, 0.000000e+00
  %198 = and i1 %197, %102
  %199 = fcmp fast olt float %196, 1.000000e+00
  %200 = and i1 %199, %105
  %201 = and i1 %198, %200
  br i1 %201, label %202, label %212, !dx.controlflow.hints !42

; <label>:202                                     ; preds = %186
  %203 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %17, float %196, float %74, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %204 = extractvalue %dx.types.ResRet.f32 %203, 0
  %205 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %17, float %196, float %74, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %206 = extractvalue %dx.types.ResRet.f32 %205, 0
  %207 = fsub fast float 1.000000e+00, %206
  %208 = call float @dx.op.binary.f32(i32 36, float %204, float %207)  ; FMin(a,b)
  %209 = fcmp fast ogt float %204, 0.000000e+00
  %210 = select i1 %209, float %124, float 0.000000e+00
  %211 = fadd fast float %210, %204
  br label %212

; <label>:212                                     ; preds = %202, %186
  %213 = phi float [ %211, %202 ], [ 0.000000e+00, %186 ]
  %214 = phi float [ %208, %202 ], [ 1.000000e+00, %186 ]
  %215 = fsub fast float %213, %193
  %216 = call float @dx.op.unary.f32(i32 7, float %215)  ; Saturate(value)
  %217 = fcmp fast oeq float %216, 0.000000e+00
  %218 = fsub fast float %214, %129
  %219 = fcmp fast ogt float %218, %193
  %220 = or i1 %217, %219
  %221 = fcmp fast ogt float %193, 0.000000e+00
  %222 = and i1 %221, %220
  br i1 %222, label %298, label %223, !dx.controlflow.hints !43

; <label>:223                                     ; preds = %212
  %224 = add i32 %35, 1
  %225 = sitofp i32 %224 to float
  %226 = fadd fast float %225, 5.000000e-01
  %227 = fmul fast float %52, %226
  %228 = fadd fast float %227, -5.000000e-01
  %229 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %16, float %64, float %65, float undef, float undef, i32 0, i32 1, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %230 = extractvalue %dx.types.ResRet.f32 %229, 0
  %231 = fsub fast float %228, %61
  %232 = call float @dx.op.unary.f32(i32 22, float %231)  ; Frc(value)
  %233 = fsub fast float %232, %72
  %234 = fcmp fast oge float %233, 0.000000e+00
  %235 = and i1 %101, %234
  %236 = fcmp fast olt float %233, 1.000000e+00
  %237 = and i1 %104, %236
  %238 = and i1 %235, %237
  br i1 %238, label %239, label %249, !dx.controlflow.hints !42

; <label>:239                                     ; preds = %223
  %240 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %17, float %73, float %233, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %241 = extractvalue %dx.types.ResRet.f32 %240, 0
  %242 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %17, float %73, float %233, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %243 = extractvalue %dx.types.ResRet.f32 %242, 0
  %244 = fsub fast float 1.000000e+00, %243
  %245 = call float @dx.op.binary.f32(i32 36, float %241, float %244)  ; FMin(a,b)
  %246 = fcmp fast ogt float %241, 0.000000e+00
  %247 = select i1 %246, float %124, float 0.000000e+00
  %248 = fadd fast float %247, %241
  br label %249

; <label>:249                                     ; preds = %239, %223
  %250 = phi float [ %248, %239 ], [ 0.000000e+00, %223 ]
  %251 = phi float [ %245, %239 ], [ 1.000000e+00, %223 ]
  %252 = fsub fast float %250, %230
  %253 = call float @dx.op.unary.f32(i32 7, float %252)  ; Saturate(value)
  %254 = fcmp fast oeq float %253, 0.000000e+00
  %255 = fsub fast float %251, %129
  %256 = fcmp fast ogt float %255, %230
  %257 = or i1 %254, %256
  %258 = fcmp fast ogt float %230, 0.000000e+00
  %259 = and i1 %258, %257
  br i1 %259, label %298, label %260, !dx.controlflow.hints !43

; <label>:260                                     ; preds = %249
  %261 = add i32 %35, -1
  %262 = sitofp i32 %261 to float
  %263 = fadd fast float %262, 5.000000e-01
  %264 = fmul fast float %52, %263
  %265 = fadd fast float %264, -5.000000e-01
  %266 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %16, float %64, float %65, float undef, float undef, i32 0, i32 -1, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %267 = extractvalue %dx.types.ResRet.f32 %266, 0
  %268 = fsub fast float %265, %61
  %269 = call float @dx.op.unary.f32(i32 22, float %268)  ; Frc(value)
  %270 = fsub fast float %269, %72
  %271 = fcmp fast oge float %270, 0.000000e+00
  %272 = and i1 %101, %271
  %273 = fcmp fast olt float %270, 1.000000e+00
  %274 = and i1 %104, %273
  %275 = and i1 %272, %274
  br i1 %275, label %276, label %286, !dx.controlflow.hints !42

; <label>:276                                     ; preds = %260
  %277 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %17, float %73, float %270, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %278 = extractvalue %dx.types.ResRet.f32 %277, 0
  %279 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %17, float %73, float %270, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %280 = extractvalue %dx.types.ResRet.f32 %279, 0
  %281 = fsub fast float 1.000000e+00, %280
  %282 = call float @dx.op.binary.f32(i32 36, float %278, float %281)  ; FMin(a,b)
  %283 = fcmp fast ogt float %278, 0.000000e+00
  %284 = select i1 %283, float %124, float 0.000000e+00
  %285 = fadd fast float %284, %278
  br label %286

; <label>:286                                     ; preds = %276, %260
  %287 = phi float [ %285, %276 ], [ 0.000000e+00, %260 ]
  %288 = phi float [ %282, %276 ], [ 1.000000e+00, %260 ]
  %289 = fsub fast float %287, %267
  %290 = call float @dx.op.unary.f32(i32 7, float %289)  ; Saturate(value)
  %291 = fcmp fast oeq float %290, 0.000000e+00
  %292 = fsub fast float %288, %129
  %293 = fcmp fast ogt float %292, %267
  %294 = or i1 %291, %293
  %295 = fcmp fast ogt float %267, 0.000000e+00
  %296 = and i1 %295, %294
  %297 = select i1 %296, i32 1, i32 2
  br label %298

; <label>:298                                     ; preds = %286, %249, %212, %175, %140
  %299 = phi i32 [ 0, %140 ], [ 1, %175 ], [ 1, %212 ], [ 1, %249 ], [ %297, %286 ]
  call void @dx.op.textureStore.i32(i32 67, %dx.types.Handle %5, i32 %34, i32 %35, i32 undef, i32 %299, i32 %299, i32 %299, i32 %299, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %300 = fsub fast float 1.000000e+00, %78
  %301 = call float @dx.op.binary.f32(i32 36, float %78, float %300)  ; FMin(a,b)
  %302 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 434)  ; CBufferLoadLegacy(handle,regIndex)
  %303 = extractvalue %dx.types.CBufRet.f32 %302, 1
  %304 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 366)  ; CBufferLoadLegacy(handle,regIndex)
  %305 = extractvalue %dx.types.CBufRet.f32 %304, 1
  %306 = call float @dx.op.binary.f32(i32 35, float %305, float %303)  ; FMax(a,b)
  %307 = fsub fast float %306, %305
  %308 = fsub fast float %301, %305
  %309 = fdiv fast float %308, %307
  %310 = call float @dx.op.unary.f32(i32 7, float %309)  ; Saturate(value)
  %311 = fmul fast float %310, 2.000000e+00
  %312 = fsub fast float 3.000000e+00, %311
  %313 = fmul fast float %310, %310
  %314 = fmul fast float %313, %312
  %315 = fcmp fast olt float %314, 1.000000e+00
  br i1 %315, label %316, label %317, !dx.controlflow.hints !44

; <label>:316                                     ; preds = %298
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %4, i32 %34, i32 %35, i32 undef, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %3, i32 %34, i32 %35, i32 undef, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %34, i32 %35, i32 undef, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %317

; <label>:317                                     ; preds = %316, %298
  %318 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 365)  ; CBufferLoadLegacy(handle,regIndex)
  %319 = extractvalue %dx.types.CBufRet.f32 %318, 3
  %320 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 431)  ; CBufferLoadLegacy(handle,regIndex)
  %321 = extractvalue %dx.types.CBufRet.f32 %320, 2
  %322 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 437)  ; CBufferLoadLegacy(handle,regIndex)
  %323 = extractvalue %dx.types.CBufRet.f32 %322, 0
  %324 = fmul fast float %144, 0x3F9A027520000000
  %325 = fmul fast float %324, %319
  %326 = fmul fast float %325, %321
  %327 = fmul fast float %326, %323
  %328 = call float @dx.op.unary.f32(i32 7, float %327)  ; Saturate(value)
  %329 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 429)  ; CBufferLoadLegacy(handle,regIndex)
  %330 = extractvalue %dx.types.CBufRet.f32 %329, 1
  %331 = fmul fast float %330, %75
  %332 = fmul fast float %330, %76
  %333 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 367)  ; CBufferLoadLegacy(handle,regIndex)
  %334 = extractvalue %dx.types.CBufRet.f32 %333, 2
  %335 = extractvalue %dx.types.CBufRet.f32 %333, 3
  %336 = fadd fast float %331, %334
  %337 = fadd fast float %332, %335
  %338 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %19, i32 366)  ; CBufferLoadLegacy(handle,regIndex)
  %339 = extractvalue %dx.types.CBufRet.i32 %338, 0
  %340 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %19, i32 367)  ; CBufferLoadLegacy(handle,regIndex)
  %341 = extractvalue %dx.types.CBufRet.i32 %340, 0
  %342 = extractvalue %dx.types.CBufRet.i32 %340, 1
  %343 = fmul fast float %319, %300
  %344 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 366)  ; CBufferLoadLegacy(handle,regIndex)
  %345 = extractvalue %dx.types.CBufRet.f32 %344, 2
  %346 = fadd fast float %343, %345
  br label %347

; <label>:347                                     ; preds = %655, %317
  %348 = phi float [ 0.000000e+00, %317 ], [ %657, %655 ]
  %349 = phi i32 [ 0, %317 ], [ %658, %655 ]
  %350 = icmp ult i32 %349, %339
  br i1 %350, label %351, label %660, !dx.controlflow.hints !45

; <label>:351                                     ; preds = %347
  %352 = shl i32 %349, 3
  %353 = lshr i32 %341, %352
  %354 = and i32 %353, 255
  %355 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %354, i32 0)  ; BufferLoad(srv,index,wot)
  %356 = extractvalue %dx.types.ResRet.f32 %355, 0
  %357 = extractvalue %dx.types.ResRet.f32 %355, 1
  %358 = extractvalue %dx.types.ResRet.f32 %355, 2
  %359 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %354, i32 12)  ; BufferLoad(srv,index,wot)
  %360 = extractvalue %dx.types.ResRet.f32 %359, 0
  %361 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %354, i32 16)  ; BufferLoad(srv,index,wot)
  %362 = extractvalue %dx.types.ResRet.f32 %361, 0
  %363 = extractvalue %dx.types.ResRet.f32 %361, 1
  %364 = extractvalue %dx.types.ResRet.f32 %361, 2
  %365 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %354, i32 32)  ; BufferLoad(srv,index,wot)
  %366 = extractvalue %dx.types.ResRet.f32 %365, 0
  %367 = extractvalue %dx.types.ResRet.f32 %365, 1
  %368 = extractvalue %dx.types.ResRet.f32 %365, 2
  %369 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %354, i32 44)  ; BufferLoad(srv,index,wot)
  %370 = extractvalue %dx.types.ResRet.f32 %369, 0
  %371 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %354, i32 48)  ; BufferLoad(srv,index,wot)
  %372 = extractvalue %dx.types.ResRet.f32 %371, 0
  %373 = extractvalue %dx.types.ResRet.f32 %371, 1
  %374 = extractvalue %dx.types.ResRet.f32 %371, 2
  %375 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %354, i32 60)  ; BufferLoad(srv,index,wot)
  %376 = extractvalue %dx.types.ResRet.i32 %375, 0
  %377 = and i32 %376, 4095
  %378 = icmp eq i32 %377, 0
  br i1 %378, label %655, label %379

; <label>:379                                     ; preds = %351
  %380 = and i32 %376, 4095
  br label %381

; <label>:381                                     ; preds = %643, %379
  %382 = phi float [ %651, %643 ], [ 0.000000e+00, %379 ]
  %383 = phi i32 [ %652, %643 ], [ 0, %379 ]
  %384 = lshr i32 %376, 12
  %385 = and i32 %384, 4095
  %386 = add nuw nsw i32 %383, %385
  %387 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %386, i32 0)  ; BufferLoad(srv,index,wot)
  %388 = extractvalue %dx.types.ResRet.f32 %387, 0
  %389 = extractvalue %dx.types.ResRet.f32 %387, 1
  %390 = extractvalue %dx.types.ResRet.f32 %387, 2
  %391 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %386, i32 12)  ; BufferLoad(srv,index,wot)
  %392 = extractvalue %dx.types.ResRet.i32 %391, 0
  %393 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %386, i32 16)  ; BufferLoad(srv,index,wot)
  %394 = extractvalue %dx.types.ResRet.f32 %393, 0
  %395 = extractvalue %dx.types.ResRet.f32 %393, 1
  %396 = extractvalue %dx.types.ResRet.f32 %393, 2
  %397 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %386, i32 28)  ; BufferLoad(srv,index,wot)
  %398 = extractvalue %dx.types.ResRet.i32 %397, 0
  %399 = icmp slt i32 %398, 0
  %400 = fsub fast float %336, %372
  %401 = fsub fast float %337, %373
  %402 = fsub fast float %346, %374
  %403 = fmul fast float %400, %356
  %404 = call float @dx.op.tertiary.f32(i32 46, float %357, float %401, float %403)  ; FMad(a,b,c)
  %405 = call float @dx.op.tertiary.f32(i32 46, float %358, float %402, float %404)  ; FMad(a,b,c)
  %406 = fmul fast float %400, %362
  %407 = call float @dx.op.tertiary.f32(i32 46, float %363, float %401, float %406)  ; FMad(a,b,c)
  %408 = call float @dx.op.tertiary.f32(i32 46, float %364, float %402, float %407)  ; FMad(a,b,c)
  %409 = fmul fast float %400, %366
  %410 = call float @dx.op.tertiary.f32(i32 46, float %367, float %401, float %409)  ; FMad(a,b,c)
  %411 = call float @dx.op.tertiary.f32(i32 46, float %368, float %402, float %410)  ; FMad(a,b,c)
  %412 = fmul fast float %388, %370
  %413 = fmul fast float %389, %370
  %414 = fmul fast float %390, %370
  %415 = fmul fast float %412, 5.000000e-01
  %416 = fmul fast float %413, 5.000000e-01
  %417 = fmul fast float %414, 5.000000e-01
  %418 = fadd fast float %415, 0xBF50624DE0000000
  %419 = fadd fast float %416, 0xBF50624DE0000000
  %420 = fadd fast float %417, 0xBF50624DE0000000
  %421 = fcmp fast ogt float %405, %418
  %422 = fcmp fast ogt float %408, %419
  %423 = fcmp fast ogt float %411, %420
  %424 = or i1 %421, %422
  %425 = or i1 %424, %423
  br i1 %399, label %426, label %447, !dx.controlflow.hints !46

; <label>:426                                     ; preds = %381
  %427 = fsub fast float 0x3F50624DE0000000, %415
  %428 = fsub fast float 0x3F50624DE0000000, %416
  %429 = fsub fast float 0x3F50624DE0000000, %417
  %430 = fcmp fast olt float %405, %427
  %431 = fcmp fast olt float %408, %428
  %432 = fcmp fast olt float %411, %429
  %433 = or i1 %430, %431
  %434 = or i1 %433, %432
  %435 = or i1 %425, %434
  br i1 %435, label %643, label %436, !dx.controlflow.hints !47

; <label>:436                                     ; preds = %426
  %437 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %392, i32 0)  ; BufferLoad(srv,index,wot)
  %438 = extractvalue %dx.types.ResRet.i32 %437, 0
  %439 = extractvalue %dx.types.ResRet.i32 %437, 1
  %440 = extractvalue %dx.types.ResRet.i32 %437, 2
  %441 = bitcast i32 %438 to float
  %442 = bitcast i32 %439 to float
  %443 = bitcast i32 %440 to float
  %444 = fmul fast float %441, %358
  %445 = call float @dx.op.tertiary.f32(i32 46, float %364, float %442, float %444)  ; FMad(a,b,c)
  %446 = call float @dx.op.tertiary.f32(i32 46, float %368, float %443, float %445)  ; FMad(a,b,c)
  br label %643

; <label>:447                                     ; preds = %381
  %448 = fmul fast float %412, -5.000000e-01
  %449 = fmul fast float %413, -5.000000e-01
  %450 = fmul fast float %414, -5.000000e-01
  %451 = fadd fast float %448, 0x3F50624DE0000000
  %452 = fadd fast float %449, 0x3F50624DE0000000
  %453 = fadd fast float %450, 0x3F50624DE0000000
  %454 = fcmp fast olt float %405, %451
  %455 = fcmp fast olt float %408, %452
  %456 = fcmp fast olt float %411, %453
  %457 = or i1 %454, %455
  %458 = or i1 %457, %456
  %459 = or i1 %425, %458
  br i1 %459, label %643, label %460, !dx.controlflow.hints !47

; <label>:460                                     ; preds = %447
  %461 = and i32 %398, 1023
  %462 = lshr i32 %398, 10
  %463 = and i32 %462, 1023
  %464 = lshr i32 %398, 20
  %465 = and i32 %464, 1023
  %466 = add nuw nsw i32 %461, 1
  %467 = add nuw nsw i32 %463, 1
  %468 = fsub fast float %405, %448
  %469 = fsub fast float %408, %449
  %470 = fsub fast float %411, %450
  %471 = fmul fast float %394, %370
  %472 = fmul fast float %395, %370
  %473 = fmul fast float %396, %370
  %474 = fdiv fast float 1.000000e+00, %471
  %475 = fdiv fast float 1.000000e+00, %472
  %476 = fdiv fast float 1.000000e+00, %473
  %477 = fmul fast float %474, %468
  %478 = fmul fast float %475, %469
  %479 = fmul fast float %476, %470
  %480 = call float @dx.op.unary.f32(i32 27, float %477)  ; Round_ni(value)
  %481 = call float @dx.op.unary.f32(i32 27, float %478)  ; Round_ni(value)
  %482 = call float @dx.op.unary.f32(i32 27, float %479)  ; Round_ni(value)
  %483 = fptosi float %480 to i32
  %484 = fptosi float %481 to i32
  %485 = fptosi float %482 to i32
  %486 = call i32 @dx.op.binary.i32(i32 37, i32 %483, i32 0)  ; IMax(a,b)
  %487 = call i32 @dx.op.binary.i32(i32 37, i32 %484, i32 0)  ; IMax(a,b)
  %488 = call i32 @dx.op.binary.i32(i32 37, i32 %485, i32 0)  ; IMax(a,b)
  %489 = call i32 @dx.op.binary.i32(i32 38, i32 %486, i32 %461)  ; IMin(a,b)
  %490 = call i32 @dx.op.binary.i32(i32 38, i32 %487, i32 %463)  ; IMin(a,b)
  %491 = call i32 @dx.op.binary.i32(i32 38, i32 %488, i32 %465)  ; IMin(a,b)
  %492 = call float @dx.op.unary.f32(i32 22, float %477)  ; Frc(value)
  %493 = call float @dx.op.unary.f32(i32 22, float %478)  ; Frc(value)
  %494 = call float @dx.op.unary.f32(i32 22, float %479)  ; Frc(value)
  %495 = fsub fast float 1.000000e+00, %493
  %496 = fsub fast float 1.000000e+00, %494
  %497 = fmul fast float %496, %495
  %498 = fmul fast float %495, %494
  %499 = fmul fast float %496, %493
  %500 = fmul fast float %494, %493
  %501 = fsub fast float 1.000000e+00, %492
  %502 = fmul fast float %497, %501
  %503 = fmul fast float %498, %501
  %504 = fmul fast float %499, %501
  %505 = fmul fast float %500, %501
  %506 = fmul fast float %497, %492
  %507 = fmul fast float %498, %492
  %508 = fmul fast float %499, %492
  %509 = fmul fast float %500, %492
  %510 = call i32 @dx.op.binary.i32(i32 40, i32 %489, i32 %461)  ; UMin(a,b)
  %511 = call i32 @dx.op.binary.i32(i32 40, i32 %490, i32 %463)  ; UMin(a,b)
  %512 = call i32 @dx.op.binary.i32(i32 40, i32 %491, i32 %465)  ; UMin(a,b)
  %513 = mul i32 %512, %467
  %514 = add i32 %513, %511
  %515 = mul i32 %514, %466
  %516 = add i32 %510, %392
  %517 = add i32 %516, %515
  %518 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %517, i32 0)  ; BufferLoad(srv,index,wot)
  %519 = extractvalue %dx.types.ResRet.i32 %518, 0
  %520 = extractvalue %dx.types.ResRet.i32 %518, 1
  %521 = extractvalue %dx.types.ResRet.i32 %518, 2
  %522 = bitcast i32 %519 to float
  %523 = bitcast i32 %520 to float
  %524 = bitcast i32 %521 to float
  %525 = add i32 %491, 1
  %526 = call i32 @dx.op.binary.i32(i32 40, i32 %525, i32 %465)  ; UMin(a,b)
  %527 = mul i32 %526, %467
  %528 = add i32 %527, %511
  %529 = mul i32 %528, %466
  %530 = add i32 %516, %529
  %531 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %530, i32 0)  ; BufferLoad(srv,index,wot)
  %532 = extractvalue %dx.types.ResRet.i32 %531, 0
  %533 = extractvalue %dx.types.ResRet.i32 %531, 1
  %534 = extractvalue %dx.types.ResRet.i32 %531, 2
  %535 = bitcast i32 %532 to float
  %536 = bitcast i32 %533 to float
  %537 = bitcast i32 %534 to float
  %538 = add i32 %490, 1
  %539 = call i32 @dx.op.binary.i32(i32 40, i32 %538, i32 %463)  ; UMin(a,b)
  %540 = add i32 %513, %539
  %541 = mul i32 %540, %466
  %542 = add i32 %516, %541
  %543 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %542, i32 0)  ; BufferLoad(srv,index,wot)
  %544 = extractvalue %dx.types.ResRet.i32 %543, 0
  %545 = extractvalue %dx.types.ResRet.i32 %543, 1
  %546 = extractvalue %dx.types.ResRet.i32 %543, 2
  %547 = bitcast i32 %544 to float
  %548 = bitcast i32 %545 to float
  %549 = bitcast i32 %546 to float
  %550 = add i32 %527, %539
  %551 = mul i32 %550, %466
  %552 = add i32 %516, %551
  %553 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %552, i32 0)  ; BufferLoad(srv,index,wot)
  %554 = extractvalue %dx.types.ResRet.i32 %553, 0
  %555 = extractvalue %dx.types.ResRet.i32 %553, 1
  %556 = extractvalue %dx.types.ResRet.i32 %553, 2
  %557 = bitcast i32 %554 to float
  %558 = bitcast i32 %555 to float
  %559 = bitcast i32 %556 to float
  %560 = add i32 %489, 1
  %561 = call i32 @dx.op.binary.i32(i32 40, i32 %560, i32 %461)  ; UMin(a,b)
  %562 = add i32 %561, %392
  %563 = add i32 %562, %515
  %564 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %563, i32 0)  ; BufferLoad(srv,index,wot)
  %565 = extractvalue %dx.types.ResRet.i32 %564, 0
  %566 = extractvalue %dx.types.ResRet.i32 %564, 1
  %567 = extractvalue %dx.types.ResRet.i32 %564, 2
  %568 = bitcast i32 %565 to float
  %569 = bitcast i32 %566 to float
  %570 = bitcast i32 %567 to float
  %571 = add i32 %562, %529
  %572 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %571, i32 0)  ; BufferLoad(srv,index,wot)
  %573 = extractvalue %dx.types.ResRet.i32 %572, 0
  %574 = extractvalue %dx.types.ResRet.i32 %572, 1
  %575 = extractvalue %dx.types.ResRet.i32 %572, 2
  %576 = bitcast i32 %573 to float
  %577 = bitcast i32 %574 to float
  %578 = bitcast i32 %575 to float
  %579 = add i32 %562, %541
  %580 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %579, i32 0)  ; BufferLoad(srv,index,wot)
  %581 = extractvalue %dx.types.ResRet.i32 %580, 0
  %582 = extractvalue %dx.types.ResRet.i32 %580, 1
  %583 = extractvalue %dx.types.ResRet.i32 %580, 2
  %584 = bitcast i32 %581 to float
  %585 = bitcast i32 %582 to float
  %586 = bitcast i32 %583 to float
  %587 = add i32 %562, %551
  %588 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %587, i32 0)  ; BufferLoad(srv,index,wot)
  %589 = extractvalue %dx.types.ResRet.i32 %588, 0
  %590 = extractvalue %dx.types.ResRet.i32 %588, 1
  %591 = extractvalue %dx.types.ResRet.i32 %588, 2
  %592 = bitcast i32 %589 to float
  %593 = bitcast i32 %590 to float
  %594 = bitcast i32 %591 to float
  %595 = fmul fast float %522, %502
  %596 = fmul fast float %523, %502
  %597 = fmul fast float %524, %502
  %598 = fmul fast float %535, %503
  %599 = fmul fast float %536, %503
  %600 = fmul fast float %537, %503
  %601 = fadd fast float %598, %595
  %602 = fadd fast float %599, %596
  %603 = fadd fast float %600, %597
  %604 = fmul fast float %547, %504
  %605 = fmul fast float %548, %504
  %606 = fmul fast float %549, %504
  %607 = fadd fast float %601, %604
  %608 = fadd fast float %602, %605
  %609 = fadd fast float %603, %606
  %610 = fmul fast float %557, %505
  %611 = fmul fast float %558, %505
  %612 = fmul fast float %559, %505
  %613 = fadd fast float %607, %610
  %614 = fadd fast float %608, %611
  %615 = fadd fast float %609, %612
  %616 = fmul fast float %568, %506
  %617 = fmul fast float %569, %506
  %618 = fmul fast float %570, %506
  %619 = fadd fast float %613, %616
  %620 = fadd fast float %614, %617
  %621 = fadd fast float %615, %618
  %622 = fmul fast float %576, %507
  %623 = fmul fast float %577, %507
  %624 = fmul fast float %578, %507
  %625 = fadd fast float %619, %622
  %626 = fadd fast float %620, %623
  %627 = fadd fast float %621, %624
  %628 = fmul fast float %584, %508
  %629 = fmul fast float %585, %508
  %630 = fmul fast float %586, %508
  %631 = fadd fast float %625, %628
  %632 = fadd fast float %626, %629
  %633 = fadd fast float %627, %630
  %634 = fmul fast float %592, %509
  %635 = fmul fast float %593, %509
  %636 = fmul fast float %594, %509
  %637 = fadd fast float %631, %634
  %638 = fadd fast float %632, %635
  %639 = fadd fast float %633, %636
  %640 = fmul fast float %637, %358
  %641 = call float @dx.op.tertiary.f32(i32 46, float %364, float %638, float %640)  ; FMad(a,b,c)
  %642 = call float @dx.op.tertiary.f32(i32 46, float %368, float %639, float %641)  ; FMad(a,b,c)
  br label %643

; <label>:643                                     ; preds = %460, %447, %436, %426
  %644 = phi i1 [ true, %460 ], [ false, %447 ], [ true, %436 ], [ false, %426 ]
  %645 = phi float [ %642, %460 ], [ 0.000000e+00, %447 ], [ %446, %436 ], [ 0.000000e+00, %426 ]
  %646 = and i32 %398, 1073741824
  %647 = icmp eq i32 %646, 0
  %648 = and i1 %644, %647
  %649 = fmul fast float %645, %360
  %650 = fadd fast float %649, %382
  %651 = select i1 %648, float %650, float %382
  %652 = add nuw nsw i32 %383, 1
  %653 = icmp eq i32 %652, %380
  br i1 %653, label %654, label %381

; <label>:654                                     ; preds = %643
  br label %655

; <label>:655                                     ; preds = %654, %351
  %656 = phi float [ 0.000000e+00, %351 ], [ %651, %654 ]
  %657 = fadd fast float %656, %348
  %658 = add nuw nsw i32 %349, 1
  %659 = icmp ult i32 %658, 4
  br i1 %659, label %347, label %660

; <label>:660                                     ; preds = %655, %347
  %661 = phi float [ %348, %347 ], [ %657, %655 ]
  %662 = icmp ugt i32 %339, 4
  br i1 %662, label %663, label %981, !dx.controlflow.hints !48

; <label>:663                                     ; preds = %660
  %664 = add i32 %339, -4
  br label %665

; <label>:665                                     ; preds = %973, %663
  %666 = phi float [ 0.000000e+00, %663 ], [ %975, %973 ]
  %667 = phi i32 [ 0, %663 ], [ %976, %973 ]
  %668 = icmp ult i32 %667, %664
  br i1 %668, label %669, label %978, !dx.controlflow.hints !45

; <label>:669                                     ; preds = %665
  %670 = shl i32 %667, 3
  %671 = lshr i32 %342, %670
  %672 = and i32 %671, 255
  %673 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %672, i32 0)  ; BufferLoad(srv,index,wot)
  %674 = extractvalue %dx.types.ResRet.f32 %673, 0
  %675 = extractvalue %dx.types.ResRet.f32 %673, 1
  %676 = extractvalue %dx.types.ResRet.f32 %673, 2
  %677 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %672, i32 12)  ; BufferLoad(srv,index,wot)
  %678 = extractvalue %dx.types.ResRet.f32 %677, 0
  %679 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %672, i32 16)  ; BufferLoad(srv,index,wot)
  %680 = extractvalue %dx.types.ResRet.f32 %679, 0
  %681 = extractvalue %dx.types.ResRet.f32 %679, 1
  %682 = extractvalue %dx.types.ResRet.f32 %679, 2
  %683 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %672, i32 32)  ; BufferLoad(srv,index,wot)
  %684 = extractvalue %dx.types.ResRet.f32 %683, 0
  %685 = extractvalue %dx.types.ResRet.f32 %683, 1
  %686 = extractvalue %dx.types.ResRet.f32 %683, 2
  %687 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %672, i32 44)  ; BufferLoad(srv,index,wot)
  %688 = extractvalue %dx.types.ResRet.f32 %687, 0
  %689 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %672, i32 48)  ; BufferLoad(srv,index,wot)
  %690 = extractvalue %dx.types.ResRet.f32 %689, 0
  %691 = extractvalue %dx.types.ResRet.f32 %689, 1
  %692 = extractvalue %dx.types.ResRet.f32 %689, 2
  %693 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %672, i32 60)  ; BufferLoad(srv,index,wot)
  %694 = extractvalue %dx.types.ResRet.i32 %693, 0
  %695 = and i32 %694, 4095
  %696 = icmp eq i32 %695, 0
  br i1 %696, label %973, label %697

; <label>:697                                     ; preds = %669
  %698 = and i32 %694, 4095
  br label %699

; <label>:699                                     ; preds = %961, %697
  %700 = phi float [ %969, %961 ], [ 0.000000e+00, %697 ]
  %701 = phi i32 [ %970, %961 ], [ 0, %697 ]
  %702 = lshr i32 %694, 12
  %703 = and i32 %702, 4095
  %704 = add nuw nsw i32 %701, %703
  %705 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %704, i32 0)  ; BufferLoad(srv,index,wot)
  %706 = extractvalue %dx.types.ResRet.f32 %705, 0
  %707 = extractvalue %dx.types.ResRet.f32 %705, 1
  %708 = extractvalue %dx.types.ResRet.f32 %705, 2
  %709 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %704, i32 12)  ; BufferLoad(srv,index,wot)
  %710 = extractvalue %dx.types.ResRet.i32 %709, 0
  %711 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %704, i32 16)  ; BufferLoad(srv,index,wot)
  %712 = extractvalue %dx.types.ResRet.f32 %711, 0
  %713 = extractvalue %dx.types.ResRet.f32 %711, 1
  %714 = extractvalue %dx.types.ResRet.f32 %711, 2
  %715 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %704, i32 28)  ; BufferLoad(srv,index,wot)
  %716 = extractvalue %dx.types.ResRet.i32 %715, 0
  %717 = icmp slt i32 %716, 0
  %718 = fsub fast float %336, %690
  %719 = fsub fast float %337, %691
  %720 = fsub fast float %346, %692
  %721 = fmul fast float %718, %674
  %722 = call float @dx.op.tertiary.f32(i32 46, float %675, float %719, float %721)  ; FMad(a,b,c)
  %723 = call float @dx.op.tertiary.f32(i32 46, float %676, float %720, float %722)  ; FMad(a,b,c)
  %724 = fmul fast float %718, %680
  %725 = call float @dx.op.tertiary.f32(i32 46, float %681, float %719, float %724)  ; FMad(a,b,c)
  %726 = call float @dx.op.tertiary.f32(i32 46, float %682, float %720, float %725)  ; FMad(a,b,c)
  %727 = fmul fast float %718, %684
  %728 = call float @dx.op.tertiary.f32(i32 46, float %685, float %719, float %727)  ; FMad(a,b,c)
  %729 = call float @dx.op.tertiary.f32(i32 46, float %686, float %720, float %728)  ; FMad(a,b,c)
  %730 = fmul fast float %706, %688
  %731 = fmul fast float %707, %688
  %732 = fmul fast float %708, %688
  %733 = fmul fast float %730, 5.000000e-01
  %734 = fmul fast float %731, 5.000000e-01
  %735 = fmul fast float %732, 5.000000e-01
  %736 = fadd fast float %733, 0xBF50624DE0000000
  %737 = fadd fast float %734, 0xBF50624DE0000000
  %738 = fadd fast float %735, 0xBF50624DE0000000
  %739 = fcmp fast ogt float %723, %736
  %740 = fcmp fast ogt float %726, %737
  %741 = fcmp fast ogt float %729, %738
  %742 = or i1 %739, %740
  %743 = or i1 %742, %741
  br i1 %717, label %744, label %765, !dx.controlflow.hints !46

; <label>:744                                     ; preds = %699
  %745 = fsub fast float 0x3F50624DE0000000, %733
  %746 = fsub fast float 0x3F50624DE0000000, %734
  %747 = fsub fast float 0x3F50624DE0000000, %735
  %748 = fcmp fast olt float %723, %745
  %749 = fcmp fast olt float %726, %746
  %750 = fcmp fast olt float %729, %747
  %751 = or i1 %748, %749
  %752 = or i1 %751, %750
  %753 = or i1 %743, %752
  br i1 %753, label %961, label %754, !dx.controlflow.hints !47

; <label>:754                                     ; preds = %744
  %755 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %710, i32 0)  ; BufferLoad(srv,index,wot)
  %756 = extractvalue %dx.types.ResRet.i32 %755, 0
  %757 = extractvalue %dx.types.ResRet.i32 %755, 1
  %758 = extractvalue %dx.types.ResRet.i32 %755, 2
  %759 = bitcast i32 %756 to float
  %760 = bitcast i32 %757 to float
  %761 = bitcast i32 %758 to float
  %762 = fmul fast float %759, %676
  %763 = call float @dx.op.tertiary.f32(i32 46, float %682, float %760, float %762)  ; FMad(a,b,c)
  %764 = call float @dx.op.tertiary.f32(i32 46, float %686, float %761, float %763)  ; FMad(a,b,c)
  br label %961

; <label>:765                                     ; preds = %699
  %766 = fmul fast float %730, -5.000000e-01
  %767 = fmul fast float %731, -5.000000e-01
  %768 = fmul fast float %732, -5.000000e-01
  %769 = fadd fast float %766, 0x3F50624DE0000000
  %770 = fadd fast float %767, 0x3F50624DE0000000
  %771 = fadd fast float %768, 0x3F50624DE0000000
  %772 = fcmp fast olt float %723, %769
  %773 = fcmp fast olt float %726, %770
  %774 = fcmp fast olt float %729, %771
  %775 = or i1 %772, %773
  %776 = or i1 %775, %774
  %777 = or i1 %743, %776
  br i1 %777, label %961, label %778, !dx.controlflow.hints !47

; <label>:778                                     ; preds = %765
  %779 = and i32 %716, 1023
  %780 = lshr i32 %716, 10
  %781 = and i32 %780, 1023
  %782 = lshr i32 %716, 20
  %783 = and i32 %782, 1023
  %784 = add nuw nsw i32 %779, 1
  %785 = add nuw nsw i32 %781, 1
  %786 = fsub fast float %723, %766
  %787 = fsub fast float %726, %767
  %788 = fsub fast float %729, %768
  %789 = fmul fast float %712, %688
  %790 = fmul fast float %713, %688
  %791 = fmul fast float %714, %688
  %792 = fdiv fast float 1.000000e+00, %789
  %793 = fdiv fast float 1.000000e+00, %790
  %794 = fdiv fast float 1.000000e+00, %791
  %795 = fmul fast float %792, %786
  %796 = fmul fast float %793, %787
  %797 = fmul fast float %794, %788
  %798 = call float @dx.op.unary.f32(i32 27, float %795)  ; Round_ni(value)
  %799 = call float @dx.op.unary.f32(i32 27, float %796)  ; Round_ni(value)
  %800 = call float @dx.op.unary.f32(i32 27, float %797)  ; Round_ni(value)
  %801 = fptosi float %798 to i32
  %802 = fptosi float %799 to i32
  %803 = fptosi float %800 to i32
  %804 = call i32 @dx.op.binary.i32(i32 37, i32 %801, i32 0)  ; IMax(a,b)
  %805 = call i32 @dx.op.binary.i32(i32 37, i32 %802, i32 0)  ; IMax(a,b)
  %806 = call i32 @dx.op.binary.i32(i32 37, i32 %803, i32 0)  ; IMax(a,b)
  %807 = call i32 @dx.op.binary.i32(i32 38, i32 %804, i32 %779)  ; IMin(a,b)
  %808 = call i32 @dx.op.binary.i32(i32 38, i32 %805, i32 %781)  ; IMin(a,b)
  %809 = call i32 @dx.op.binary.i32(i32 38, i32 %806, i32 %783)  ; IMin(a,b)
  %810 = call float @dx.op.unary.f32(i32 22, float %795)  ; Frc(value)
  %811 = call float @dx.op.unary.f32(i32 22, float %796)  ; Frc(value)
  %812 = call float @dx.op.unary.f32(i32 22, float %797)  ; Frc(value)
  %813 = fsub fast float 1.000000e+00, %811
  %814 = fsub fast float 1.000000e+00, %812
  %815 = fmul fast float %814, %813
  %816 = fmul fast float %813, %812
  %817 = fmul fast float %814, %811
  %818 = fmul fast float %812, %811
  %819 = fsub fast float 1.000000e+00, %810
  %820 = fmul fast float %815, %819
  %821 = fmul fast float %816, %819
  %822 = fmul fast float %817, %819
  %823 = fmul fast float %818, %819
  %824 = fmul fast float %815, %810
  %825 = fmul fast float %816, %810
  %826 = fmul fast float %817, %810
  %827 = fmul fast float %818, %810
  %828 = call i32 @dx.op.binary.i32(i32 40, i32 %807, i32 %779)  ; UMin(a,b)
  %829 = call i32 @dx.op.binary.i32(i32 40, i32 %808, i32 %781)  ; UMin(a,b)
  %830 = call i32 @dx.op.binary.i32(i32 40, i32 %809, i32 %783)  ; UMin(a,b)
  %831 = mul i32 %830, %785
  %832 = add i32 %831, %829
  %833 = mul i32 %832, %784
  %834 = add i32 %828, %710
  %835 = add i32 %834, %833
  %836 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %835, i32 0)  ; BufferLoad(srv,index,wot)
  %837 = extractvalue %dx.types.ResRet.i32 %836, 0
  %838 = extractvalue %dx.types.ResRet.i32 %836, 1
  %839 = extractvalue %dx.types.ResRet.i32 %836, 2
  %840 = bitcast i32 %837 to float
  %841 = bitcast i32 %838 to float
  %842 = bitcast i32 %839 to float
  %843 = add i32 %809, 1
  %844 = call i32 @dx.op.binary.i32(i32 40, i32 %843, i32 %783)  ; UMin(a,b)
  %845 = mul i32 %844, %785
  %846 = add i32 %845, %829
  %847 = mul i32 %846, %784
  %848 = add i32 %834, %847
  %849 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %848, i32 0)  ; BufferLoad(srv,index,wot)
  %850 = extractvalue %dx.types.ResRet.i32 %849, 0
  %851 = extractvalue %dx.types.ResRet.i32 %849, 1
  %852 = extractvalue %dx.types.ResRet.i32 %849, 2
  %853 = bitcast i32 %850 to float
  %854 = bitcast i32 %851 to float
  %855 = bitcast i32 %852 to float
  %856 = add i32 %808, 1
  %857 = call i32 @dx.op.binary.i32(i32 40, i32 %856, i32 %781)  ; UMin(a,b)
  %858 = add i32 %831, %857
  %859 = mul i32 %858, %784
  %860 = add i32 %834, %859
  %861 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %860, i32 0)  ; BufferLoad(srv,index,wot)
  %862 = extractvalue %dx.types.ResRet.i32 %861, 0
  %863 = extractvalue %dx.types.ResRet.i32 %861, 1
  %864 = extractvalue %dx.types.ResRet.i32 %861, 2
  %865 = bitcast i32 %862 to float
  %866 = bitcast i32 %863 to float
  %867 = bitcast i32 %864 to float
  %868 = add i32 %845, %857
  %869 = mul i32 %868, %784
  %870 = add i32 %834, %869
  %871 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %870, i32 0)  ; BufferLoad(srv,index,wot)
  %872 = extractvalue %dx.types.ResRet.i32 %871, 0
  %873 = extractvalue %dx.types.ResRet.i32 %871, 1
  %874 = extractvalue %dx.types.ResRet.i32 %871, 2
  %875 = bitcast i32 %872 to float
  %876 = bitcast i32 %873 to float
  %877 = bitcast i32 %874 to float
  %878 = add i32 %807, 1
  %879 = call i32 @dx.op.binary.i32(i32 40, i32 %878, i32 %779)  ; UMin(a,b)
  %880 = add i32 %879, %710
  %881 = add i32 %880, %833
  %882 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %881, i32 0)  ; BufferLoad(srv,index,wot)
  %883 = extractvalue %dx.types.ResRet.i32 %882, 0
  %884 = extractvalue %dx.types.ResRet.i32 %882, 1
  %885 = extractvalue %dx.types.ResRet.i32 %882, 2
  %886 = bitcast i32 %883 to float
  %887 = bitcast i32 %884 to float
  %888 = bitcast i32 %885 to float
  %889 = add i32 %880, %847
  %890 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %889, i32 0)  ; BufferLoad(srv,index,wot)
  %891 = extractvalue %dx.types.ResRet.i32 %890, 0
  %892 = extractvalue %dx.types.ResRet.i32 %890, 1
  %893 = extractvalue %dx.types.ResRet.i32 %890, 2
  %894 = bitcast i32 %891 to float
  %895 = bitcast i32 %892 to float
  %896 = bitcast i32 %893 to float
  %897 = add i32 %880, %859
  %898 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %897, i32 0)  ; BufferLoad(srv,index,wot)
  %899 = extractvalue %dx.types.ResRet.i32 %898, 0
  %900 = extractvalue %dx.types.ResRet.i32 %898, 1
  %901 = extractvalue %dx.types.ResRet.i32 %898, 2
  %902 = bitcast i32 %899 to float
  %903 = bitcast i32 %900 to float
  %904 = bitcast i32 %901 to float
  %905 = add i32 %880, %869
  %906 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %905, i32 0)  ; BufferLoad(srv,index,wot)
  %907 = extractvalue %dx.types.ResRet.i32 %906, 0
  %908 = extractvalue %dx.types.ResRet.i32 %906, 1
  %909 = extractvalue %dx.types.ResRet.i32 %906, 2
  %910 = bitcast i32 %907 to float
  %911 = bitcast i32 %908 to float
  %912 = bitcast i32 %909 to float
  %913 = fmul fast float %840, %820
  %914 = fmul fast float %841, %820
  %915 = fmul fast float %842, %820
  %916 = fmul fast float %853, %821
  %917 = fmul fast float %854, %821
  %918 = fmul fast float %855, %821
  %919 = fadd fast float %916, %913
  %920 = fadd fast float %917, %914
  %921 = fadd fast float %918, %915
  %922 = fmul fast float %865, %822
  %923 = fmul fast float %866, %822
  %924 = fmul fast float %867, %822
  %925 = fadd fast float %919, %922
  %926 = fadd fast float %920, %923
  %927 = fadd fast float %921, %924
  %928 = fmul fast float %875, %823
  %929 = fmul fast float %876, %823
  %930 = fmul fast float %877, %823
  %931 = fadd fast float %925, %928
  %932 = fadd fast float %926, %929
  %933 = fadd fast float %927, %930
  %934 = fmul fast float %886, %824
  %935 = fmul fast float %887, %824
  %936 = fmul fast float %888, %824
  %937 = fadd fast float %931, %934
  %938 = fadd fast float %932, %935
  %939 = fadd fast float %933, %936
  %940 = fmul fast float %894, %825
  %941 = fmul fast float %895, %825
  %942 = fmul fast float %896, %825
  %943 = fadd fast float %937, %940
  %944 = fadd fast float %938, %941
  %945 = fadd fast float %939, %942
  %946 = fmul fast float %902, %826
  %947 = fmul fast float %903, %826
  %948 = fmul fast float %904, %826
  %949 = fadd fast float %943, %946
  %950 = fadd fast float %944, %947
  %951 = fadd fast float %945, %948
  %952 = fmul fast float %910, %827
  %953 = fmul fast float %911, %827
  %954 = fmul fast float %912, %827
  %955 = fadd fast float %949, %952
  %956 = fadd fast float %950, %953
  %957 = fadd fast float %951, %954
  %958 = fmul fast float %955, %676
  %959 = call float @dx.op.tertiary.f32(i32 46, float %682, float %956, float %958)  ; FMad(a,b,c)
  %960 = call float @dx.op.tertiary.f32(i32 46, float %686, float %957, float %959)  ; FMad(a,b,c)
  br label %961

; <label>:961                                     ; preds = %778, %765, %754, %744
  %962 = phi i1 [ true, %778 ], [ false, %765 ], [ true, %754 ], [ false, %744 ]
  %963 = phi float [ %960, %778 ], [ 0.000000e+00, %765 ], [ %764, %754 ], [ 0.000000e+00, %744 ]
  %964 = and i32 %716, 1073741824
  %965 = icmp eq i32 %964, 0
  %966 = and i1 %962, %965
  %967 = fmul fast float %963, %678
  %968 = fadd fast float %967, %700
  %969 = select i1 %966, float %968, float %700
  %970 = add nuw nsw i32 %701, 1
  %971 = icmp eq i32 %970, %698
  br i1 %971, label %972, label %699

; <label>:972                                     ; preds = %961
  br label %973

; <label>:973                                     ; preds = %972, %669
  %974 = phi float [ 0.000000e+00, %669 ], [ %969, %972 ]
  %975 = fadd fast float %974, %666
  %976 = add nuw nsw i32 %667, 1
  %977 = icmp ult i32 %976, 4
  br i1 %977, label %665, label %978

; <label>:978                                     ; preds = %973, %665
  %979 = phi float [ %666, %665 ], [ %975, %973 ]
  %980 = fadd fast float %979, %661
  br label %981

; <label>:981                                     ; preds = %978, %660
  %982 = phi float [ %980, %978 ], [ %661, %660 ]
  %983 = fcmp fast olt float %982, 0.000000e+00
  %984 = select i1 %983, float -1.000000e+00, float 1.000000e+00
  %985 = call float @dx.op.unary.f32(i32 6, float %982)  ; FAbs(value)
  %986 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %987 = extractvalue %dx.types.CBufRet.f32 %986, 3
  %988 = fmul fast float %987, %985
  %989 = extractvalue %dx.types.CBufRet.f32 %322, 2
  %990 = fmul fast float %988, %989
  %991 = extractvalue %dx.types.CBufRet.f32 %322, 1
  %992 = fadd fast float %990, %991
  %993 = call float @dx.op.unary.f32(i32 7, float %992)  ; Saturate(value)
  %994 = fmul fast float %993, %984
  %995 = extractvalue %dx.types.CBufRet.f32 %329, 3
  %996 = uitofp i32 %34 to float
  %997 = uitofp i32 %35 to float
  %998 = fmul fast float %995, %996
  %999 = fmul fast float %995, %997
  %1000 = fadd fast float %998, -5.000000e-01
  %1001 = fadd fast float %999, -5.000000e-01
  %1002 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 430)  ; CBufferLoadLegacy(handle,regIndex)
  %1003 = extractvalue %dx.types.CBufRet.f32 %1002, 0
  %1004 = extractvalue %dx.types.CBufRet.f32 %1002, 1
  %1005 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 435)  ; CBufferLoadLegacy(handle,regIndex)
  %1006 = extractvalue %dx.types.CBufRet.f32 %1005, 2
  %1007 = fmul fast float %1006, %1003
  %1008 = fmul fast float %1006, %1004
  %1009 = fsub fast float %1000, %1007
  %1010 = fsub fast float %1001, %1008
  %1011 = call float @dx.op.unary.f32(i32 22, float %1009)  ; Frc(value)
  %1012 = call float @dx.op.unary.f32(i32 22, float %1010)  ; Frc(value)
  %1013 = fmul fast float %1011, %330
  %1014 = fmul fast float %1012, %330
  %1015 = fadd fast float %1013, %1003
  %1016 = fadd fast float %1014, %1004
  %1017 = extractvalue %dx.types.CBufRet.f32 %1002, 2
  %1018 = extractvalue %dx.types.CBufRet.f32 %1002, 3
  %1019 = fsub fast float %1003, %1017
  %1020 = fsub fast float %1004, %1018
  %1021 = fmul fast float %995, %330
  %1022 = fcmp fast une float %1019, 0.000000e+00
  br i1 %1022, label %1023, label %1031, !dx.controlflow.hints !49

; <label>:1023                                    ; preds = %981
  %1024 = fcmp fast ogt float %1019, 0.000000e+00
  %1025 = fsub fast float %1021, %330
  %1026 = fadd fast float %1025, %1015
  %1027 = fcmp fast oge float %1026, %1017
  %1028 = fcmp fast ole float %1015, %1017
  %1029 = select i1 %1024, i1 %1027, i1 %1028
  %1030 = zext i1 %1029 to i32
  br label %1031

; <label>:1031                                    ; preds = %1023, %981
  %1032 = phi i32 [ %1030, %1023 ], [ 0, %981 ]
  %1033 = fcmp fast une float %1020, 0.000000e+00
  br i1 %1033, label %1034, label %1041, !dx.controlflow.hints !50

; <label>:1034                                    ; preds = %1031
  %1035 = fcmp fast ogt float %1020, 0.000000e+00
  %1036 = fsub fast float %1021, %330
  %1037 = fadd fast float %1036, %1016
  %1038 = fcmp fast oge float %1037, %1018
  %1039 = fcmp fast ole float %1016, %1018
  %1040 = select i1 %1035, i1 %1038, i1 %1039
  br label %1041

; <label>:1041                                    ; preds = %1034, %1031
  %1042 = phi i1 [ %1040, %1034 ], [ false, %1031 ]
  %1043 = icmp ne i32 %1032, 0
  %1044 = or i1 %1043, %1042
  %1045 = icmp eq i32 %299, 2
  %1046 = fcmp fast ogt float %994, 0.000000e+00
  %1047 = or i1 %1045, %1046
  %1048 = xor i1 %1044, true
  %1049 = and i1 %1047, %1048
  %1050 = fsub fast float %994, %328
  %1051 = call float @dx.op.binary.f32(i32 35, float %1050, float -1.000000e+00)  ; FMax(a,b)
  %1052 = call float @dx.op.binary.f32(i32 36, float %1051, float 1.000000e+00)  ; FMin(a,b)
  %1053 = fmul fast float %1052, 5.000000e-01
  %1054 = fadd fast float %1053, 0x3FE0101020000000
  %1055 = select i1 %1049, float %1054, float 0x3FE0101020000000
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %34, i32 %35, i32 undef, float %1055, float %1055, float %1055, float %1055, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %1056 = call float @dx.op.unary.f32(i32 6, float %994)  ; FAbs(value)
  %1057 = fcmp fast ogt float %1056, 0.000000e+00
  br i1 %1057, label %1058, label %1188, !dx.controlflow.hints !51

; <label>:1058                                    ; preds = %1041
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %7, i32 %34, i32 %35, i32 undef, float %1056, float %1056, float %1056, float %1056, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %1059 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 438)  ; CBufferLoadLegacy(handle,regIndex)
  %1060 = extractvalue %dx.types.CBufRet.f32 %1059, 1
  %1061 = extractvalue %dx.types.CBufRet.f32 %1059, 2
  %1062 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %19, i32 428)  ; CBufferLoadLegacy(handle,regIndex)
  %1063 = extractvalue %dx.types.CBufRet.i32 %1062, 2
  %1064 = uitofp i32 %1063 to float
  %1065 = extractvalue %dx.types.CBufRet.f32 %1059, 3
  %1066 = fmul fast float %1064, %1065
  %1067 = fptosi float %1066 to i32
  %1068 = call float @dx.op.unary.f32(i32 22, float %53)  ; Frc(value)
  %1069 = call float @dx.op.unary.f32(i32 22, float %54)  ; Frc(value)
  %1070 = sitofp i32 %1067 to float
  %1071 = call float @dx.op.unary.f32(i32 23, float %1070)  ; Log(value)
  %1072 = fptoui float %1071 to i32
  %1073 = add i32 %1072, -1
  %1074 = fmul fast float %1070, %1068
  %1075 = fmul fast float %1070, %1069
  %1076 = fptoui float %1074 to i32
  %1077 = fptoui float %1075 to i32
  %1078 = add i32 %1072, -2
  %1079 = uitofp i32 %1078 to float
  %1080 = fmul fast float %1079, %1061
  %1081 = icmp eq i32 %1073, 0
  br i1 %1081, label %1179, label %1082

; <label>:1082                                    ; preds = %1058
  br label %1083

; <label>:1083                                    ; preds = %1099, %1082
  %1084 = phi float [ %1175, %1099 ], [ 0.000000e+00, %1082 ]
  %1085 = phi float [ %1176, %1099 ], [ 0.000000e+00, %1082 ]
  %1086 = phi i32 [ %1087, %1099 ], [ 0, %1082 ]
  %1087 = add nuw i32 %1086, 1
  %1088 = uitofp i32 %1087 to float
  %1089 = fadd fast float %1080, 1.000000e+00
  %1090 = fdiv fast float %1088, %1089
  %1091 = uitofp i32 %1086 to float
  %1092 = fcmp fast ult float %1091, %1080
  br i1 %1092, label %1099, label %1093, !dx.controlflow.hints !52

; <label>:1093                                    ; preds = %1083
  %1094 = sub i32 %1073, %1086
  %1095 = uitofp i32 %1094 to float
  %1096 = uitofp i32 %1073 to float
  %1097 = fsub fast float %1096, %1080
  %1098 = fdiv fast float %1095, %1097
  br label %1099

; <label>:1099                                    ; preds = %1093, %1083
  %1100 = phi float [ %1098, %1093 ], [ %1090, %1083 ]
  %1101 = fsub fast float 1.000000e+00, %1060
  %1102 = fmul fast float %1101, 3.000000e+00
  %1103 = fadd fast float %1102, 1.000000e+00
  %1104 = call float @dx.op.unary.f32(i32 6, float %1100)  ; FAbs(value)
  %1105 = call float @dx.op.unary.f32(i32 23, float %1104)  ; Log(value)
  %1106 = fmul fast float %1105, %1103
  %1107 = call float @dx.op.unary.f32(i32 21, float %1106)  ; Exp(value)
  %1108 = uitofp i32 %1076 to float
  %1109 = and i32 %1086, 31
  %1110 = shl i32 1, %1109
  %1111 = uitofp i32 %1110 to float
  %1112 = fdiv fast float %1108, %1111
  %1113 = uitofp i32 %1077 to float
  %1114 = fdiv fast float %1113, %1111
  %1115 = lshr i32 %1067, %1109
  %1116 = fptoui float %1114 to i32
  %1117 = fptoui float %1112 to i32
  %1118 = urem i32 %1117, %1115
  %1119 = urem i32 %1116, %1115
  %1120 = uitofp i32 %1118 to float
  %1121 = uitofp i32 %1119 to float
  %1122 = call float @dx.op.dot2.f32(i32 54, float %1120, float %1121, float 0x4029FAC720000000, float 0x40538EE980000000)  ; Dot2(ax,ay,bx,by)
  %1123 = call float @dx.op.unary.f32(i32 13, float %1122)  ; Sin(value)
  %1124 = fmul fast float %1123, 0x40E55DD180000000
  %1125 = call float @dx.op.unary.f32(i32 22, float %1124)  ; Frc(value)
  %1126 = fmul fast float %1125, 2.000000e+00
  %1127 = fadd fast float %1126, -1.000000e+00
  %1128 = fadd fast float %1112, 1.000000e+00
  %1129 = fptoui float %1128 to i32
  %1130 = urem i32 %1129, %1115
  %1131 = uitofp i32 %1130 to float
  %1132 = call float @dx.op.dot2.f32(i32 54, float %1131, float %1121, float 0x4029FAC720000000, float 0x40538EE980000000)  ; Dot2(ax,ay,bx,by)
  %1133 = call float @dx.op.unary.f32(i32 13, float %1132)  ; Sin(value)
  %1134 = fmul fast float %1133, 0x40E55DD180000000
  %1135 = call float @dx.op.unary.f32(i32 22, float %1134)  ; Frc(value)
  %1136 = fadd fast float %1114, 1.000000e+00
  %1137 = fptoui float %1136 to i32
  %1138 = urem i32 %1137, %1115
  %1139 = uitofp i32 %1138 to float
  %1140 = call float @dx.op.dot2.f32(i32 54, float %1120, float %1139, float 0x4029FAC720000000, float 0x40538EE980000000)  ; Dot2(ax,ay,bx,by)
  %1141 = call float @dx.op.unary.f32(i32 13, float %1140)  ; Sin(value)
  %1142 = fmul fast float %1141, 0x40E55DD180000000
  %1143 = call float @dx.op.unary.f32(i32 22, float %1142)  ; Frc(value)
  %1144 = fmul fast float %1143, 2.000000e+00
  %1145 = fadd fast float %1144, -1.000000e+00
  %1146 = call float @dx.op.dot2.f32(i32 54, float %1131, float %1139, float 0x4029FAC720000000, float 0x40538EE980000000)  ; Dot2(ax,ay,bx,by)
  %1147 = call float @dx.op.unary.f32(i32 13, float %1146)  ; Sin(value)
  %1148 = fmul fast float %1147, 0x40E55DD180000000
  %1149 = call float @dx.op.unary.f32(i32 22, float %1148)  ; Frc(value)
  %1150 = call float @dx.op.unary.f32(i32 22, float %1114)  ; Frc(value)
  %1151 = call float @dx.op.unary.f32(i32 7, float %1150)  ; Saturate(value)
  %1152 = fmul fast float %1151, 2.000000e+00
  %1153 = fsub fast float 3.000000e+00, %1152
  %1154 = fmul fast float %1151, %1151
  %1155 = fmul fast float %1154, %1153
  %1156 = call float @dx.op.unary.f32(i32 22, float %1112)  ; Frc(value)
  %1157 = call float @dx.op.unary.f32(i32 7, float %1156)  ; Saturate(value)
  %1158 = fmul fast float %1157, 2.000000e+00
  %1159 = fsub fast float 3.000000e+00, %1158
  %1160 = fsub fast float %1149, %1143
  %1161 = fmul fast float %1160, 2.000000e+00
  %1162 = fmul fast float %1157, %1157
  %1163 = fmul fast float %1162, %1161
  %1164 = fmul fast float %1163, %1159
  %1165 = fadd fast float %1164, %1145
  %1166 = fsub fast float %1135, %1125
  %1167 = fmul fast float %1166, 2.000000e+00
  %1168 = fmul fast float %1162, %1167
  %1169 = fmul fast float %1168, %1159
  %1170 = fadd fast float %1169, %1127
  %1171 = fsub fast float %1165, %1170
  %1172 = fmul fast float %1155, %1171
  %1173 = fadd fast float %1172, %1170
  %1174 = fmul fast float %1173, %1107
  %1175 = fadd fast float %1174, %1084
  %1176 = fadd fast float %1107, %1085
  %1177 = icmp eq i32 %1087, %1073
  br i1 %1177, label %1178, label %1083

; <label>:1178                                    ; preds = %1099
  br label %1179

; <label>:1179                                    ; preds = %1178, %1058
  %1180 = phi float [ 0.000000e+00, %1058 ], [ %1175, %1178 ]
  %1181 = phi float [ 0.000000e+00, %1058 ], [ %1176, %1178 ]
  %1182 = fdiv fast float %1180, %1181
  %1183 = fadd fast float %1182, 5.000000e-01
  %1184 = call float @dx.op.unary.f32(i32 7, float %1183)  ; Saturate(value)
  %1185 = fadd fast float %1184, -5.000000e-01
  %1186 = fmul fast float %1185, %1056
  %1187 = fadd fast float %1186, 5.000000e-01
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %6, i32 %34, i32 %35, i32 undef, float %1187, float %1187, float %1187, float %1187, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %1207

; <label>:1188                                    ; preds = %1041
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %7, i32 %34, i32 %35, i32 undef, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %6, i32 %34, i32 %35, i32 undef, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %1207

; <label>:1189                                    ; preds = %0
  %1190 = icmp eq i32 %24, 1
  br i1 %1190, label %1191, label %1207, !dx.controlflow.hints !53

; <label>:1191                                    ; preds = %1189
  %1192 = shl i32 %22, 2
  %1193 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %1192, i32 undef)  ; BufferLoad(srv,index,wot)
  %1194 = extractvalue %dx.types.ResRet.i32 %1193, 0
  %1195 = lshr i32 %1194, 16
  %1196 = shl i32 %1194, 3
  %1197 = and i32 %1196, 524280
  %1198 = shl nuw nsw i32 %1195, 3
  %1199 = add i32 %1197, %20
  %1200 = add i32 %1198, %21
  %1201 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %19, i32 428)  ; CBufferLoadLegacy(handle,regIndex)
  %1202 = extractvalue %dx.types.CBufRet.i32 %1201, 2
  %1203 = icmp uge i32 %1199, %1202
  %1204 = icmp uge i32 %1200, %1202
  %1205 = or i1 %1203, %1204
  br i1 %1205, label %1207, label %1206, !dx.controlflow.hints !54

; <label>:1206                                    ; preds = %1191
  call void @dx.op.textureStore.i32(i32 67, %dx.types.Handle %5, i32 %1199, i32 %1200, i32 undef, i32 4, i32 4, i32 4, i32 4, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %4, i32 %1199, i32 %1200, i32 undef, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %3, i32 %1199, i32 %1200, i32 undef, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %1199, i32 %1200, i32 undef, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %1199, i32 %1200, i32 undef, float 0x3FE0101020000000, float 0x3FE0101020000000, float 0x3FE0101020000000, float 0x3FE0101020000000, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %1207

; <label>:1207                                    ; preds = %1206, %1191, %1189, %1188, %1179, %80, %26
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @dx.op.threadIdInGroup.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.groupId.i32(i32, i32) #0

; Function Attrs: nounwind
declare void @dx.op.textureStore.i32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32, i8) #1

; Function Attrs: nounwind
declare void @dx.op.textureStore.f32(i32, %dx.types.Handle, i32, i32, i32, float, float, float, float, i8) #1

; Function Attrs: nounwind readnone
declare float @dx.op.unary.f32(i32, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.dot2.f32(i32, float, float, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

; Function Attrs: nounwind readnone
declare float @dx.op.binary.f32(i32, float, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.tertiary.f32(i32, float, float, float) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.binary.i32(i32, i32, i32) #0

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32, %dx.types.Handle, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32, %dx.types.Handle, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.Handle @dx.op.createHandle(i32, i8, i32, i32, i1) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32, %dx.types.Handle, i32, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32, %dx.types.Handle, i32, i32) #2

attributes #0 = { nounwind readnone }
attributes #1 = { nounwind }
attributes #2 = { nounwind readonly }

!llvm.ident = !{!0}
!dx.version = !{!1}
!dx.valver = !{!2}
!dx.shaderModel = !{!3}
!dx.resources = !{!4}
!dx.entryPoints = !{!34}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !18, !28, !31}
!5 = !{!6, !8, !10, !12, !13, !14, !16, !17}
!6 = !{i32 0, %"class.StructuredBuffer<VectorFieldGpu>"* undef, !"", i32 0, i32 3, i32 1, i32 12, i32 0, !7}
!7 = !{i32 1, i32 88}
!8 = !{i32 1, %"class.StructuredBuffer<VectorSubFieldGpu>"* undef, !"", i32 0, i32 4, i32 1, i32 12, i32 0, !9}
!9 = !{i32 1, i32 32}
!10 = !{i32 2, %"class.StructuredBuffer<vector<unsigned int, 4> >"* undef, !"", i32 0, i32 5, i32 1, i32 12, i32 0, !11}
!11 = !{i32 1, i32 16}
!12 = !{i32 3, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 17, i32 1, i32 11, i32 0, null}
!13 = !{i32 4, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 20, i32 1, i32 11, i32 0, null}
!14 = !{i32 5, %"class.Texture2D<float>"* undef, !"", i32 0, i32 0, i32 1, i32 2, i32 0, !15}
!15 = !{i32 0, i32 14}
!16 = !{i32 6, %"class.Texture2D<float>"* undef, !"", i32 0, i32 1, i32 1, i32 2, i32 0, !15}
!17 = !{i32 7, %"class.Texture2D<float>"* undef, !"", i32 0, i32 12, i32 1, i32 2, i32 0, !15}
!18 = !{!19, !20, !21, !23, !24, !26, !27}
!19 = !{i32 0, %"class.RWTexture2D<float>"* undef, !"", i32 0, i32 0, i32 1, i32 2, i1 false, i1 false, i1 false, !15}
!20 = !{i32 1, %"class.RWTexture2D<float>"* undef, !"", i32 0, i32 1, i32 1, i32 2, i1 false, i1 false, i1 false, !15}
!21 = !{i32 2, %"class.RWTexture2D<unsigned int>"* undef, !"", i32 0, i32 2, i32 1, i32 2, i1 false, i1 false, i1 false, !22}
!22 = !{i32 0, i32 5}
!23 = !{i32 3, %"class.RWTexture2D<float>"* undef, !"", i32 0, i32 3, i32 1, i32 2, i1 false, i1 false, i1 false, !15}
!24 = !{i32 4, %"class.RWTexture2D<float>"* undef, !"", i32 0, i32 4, i32 1, i32 2, i1 false, i1 false, i1 false, !25}
!25 = !{i32 0, i32 9}
!26 = !{i32 5, %"class.RWTexture2D<float>"* undef, !"", i32 0, i32 5, i32 1, i32 2, i1 false, i1 false, i1 false, !25}
!27 = !{i32 6, %"class.RWTexture2D<float>"* undef, !"", i32 0, i32 6, i32 1, i32 2, i1 false, i1 false, i1 false, !15}
!28 = !{!29, !30}
!29 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!30 = !{i32 1, %ConstantBufferShallowWater* undef, !"", i32 0, i32 0, i32 1, i32 64, null}
!31 = !{!32, !33}
!32 = !{i32 0, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!33 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 3, i32 1, i32 0, null}
!34 = !{void ()* @cs_update_water_bounds, !"cs_update_water_bounds", null, !4, !35}
!35 = !{i32 0, i64 272, i32 4, !36}
!36 = !{i32 8, i32 8, i32 1}
!37 = distinct !{!37, !"dx.controlflow.hints", i32 2}
!38 = distinct !{!38, !"dx.controlflow.hints", i32 2}
!39 = distinct !{!39, !"dx.controlflow.hints", i32 2}
!40 = distinct !{!40, !"dx.controlflow.hints", i32 2}
!41 = distinct !{!41, !"dx.controlflow.hints", i32 1}
!42 = distinct !{!42, !"dx.controlflow.hints", i32 2}
!43 = distinct !{!43, !"dx.controlflow.hints", i32 2}
!44 = distinct !{!44, !"dx.controlflow.hints", i32 2}
!45 = distinct !{!45, !"dx.controlflow.hints", i32 2}
!46 = distinct !{!46, !"dx.controlflow.hints", i32 2}
!47 = distinct !{!47, !"dx.controlflow.hints", i32 2}
!48 = distinct !{!48, !"dx.controlflow.hints", i32 2}
!49 = distinct !{!49, !"dx.controlflow.hints", i32 2}
!50 = distinct !{!50, !"dx.controlflow.hints", i32 2}
!51 = distinct !{!51, !"dx.controlflow.hints", i32 1}
!52 = distinct !{!52, !"dx.controlflow.hints", i32 2}
!53 = distinct !{!53, !"dx.controlflow.hints", i32 2}
!54 = distinct !{!54, !"dx.controlflow.hints", i32 2}

