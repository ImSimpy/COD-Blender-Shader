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
; shader hash: 1057ed3918098673f22888be347ff393
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
;   [112 x i8] (type annotation not present)
;
; }
;
; Resource bind info for 
; {
;
;   [164 x i8] (type annotation not present)
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
;                                   sampler      NA          NA      S1             s2     1
;                                   texture     f32          3d      T0             t3     1
;                                   texture     f32          2d      T1            t18     1
;                                   texture  struct         r/o      T2            t25     1
;                                   texture     f32          1d      T3            t14     1
;                                   texture     f32          2d      T4            t13     1
;                                   texture     f32          2d      T5             t0     1
;                                   texture    byte         r/o      T6            t17     1
;                                       UAV     f32          2d      U0             u0     1
;                                       UAV     f32          2d      U1             u1     1
;                                       UAV     f32          2d      U2             u2     1
;                                       UAVunorm_f32     2darray      U3             u3     1
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.CBufRet.i32 = type { i32, i32, i32, i32 }
%dx.types.ResRet.i32 = type { i32, i32, i32, i32, i32 }
%dx.types.CBufRet.f32 = type { float, float, float, float }
%dx.types.ResRet.f32 = type { float, float, float, float, i32 }
%"class.Texture3D<float>" = type { float, %"class.Texture3D<float>::mips_type" }
%"class.Texture3D<float>::mips_type" = type { i32 }
%"class.Texture2D<vector<float, 4> >" = type { <4 x float>, %"class.Texture2D<vector<float, 4> >::mips_type" }
%"class.Texture2D<vector<float, 4> >::mips_type" = type { i32 }
%"class.StructuredBuffer<VolumetricBBoxGpu>" = type { %struct.VolumetricBBoxGpu }
%struct.VolumetricBBoxGpu = type { <3 x float>, i32, <3 x float>, float, <3 x float>, float, <3 x float>, float, <2 x float>, float, float, <3 x float>, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, i32, i32 }
%"class.Texture1D<float>" = type { float, %"class.Texture1D<float>::mips_type" }
%"class.Texture1D<float>::mips_type" = type { i32 }
%"class.Texture2D<float>" = type { float, %"class.Texture2D<float>::mips_type" }
%"class.Texture2D<float>::mips_type" = type { i32 }
%struct.ByteAddressBuffer = type { i32 }
%"class.RWTexture2D<vector<float, 3> >" = type { <3 x float> }
%"class.RWTexture2D<float>" = type { float }
%"class.RWTexture2DArray<vector<float, 4> >" = type { <4 x float> }
%hostlayout.scene = type { %hostlayout.struct.GfxCodeSceneConsts }
%hostlayout.struct.GfxCodeSceneConsts = type { <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <3 x float>, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x i32>, <4 x i32>, <4 x float>, float, float, float, float, i32, i32, float, float, <2 x i32>, <2 x i32>, <2 x float>, <2 x float>, <3 x float>, i32, <3 x float>, float, <3 x float>, float, <2 x float>, <2 x float>, <3 x float>, float, <3 x float>, float, float, float, float, float, <3 x float>, float, i32, float, float, float, <4 x float>, <3 x float>, float, float, float, float, float, <4 x float>, float, float, float, float, i32, i32, i32, float, <4 x float>, i32, i32, i32, i32, i32, i32, i32, i32, <2 x i32>, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, [2 x <4 x i32>], [3 x <2 x float>], i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <2 x float>, <2 x float>, <4 x float>, <4 x i32>, <4 x float>, i32, float, float, float, i32, i32, i32, i32, <2 x float>, <2 x float>, <2 x float>, <2 x float>, i32, i32, <2 x float>, <2 x float>, <2 x float>, <3 x float>, i32, i32, i32, i32, i32, <4 x i32>, <4 x i32>, <4 x i32>, <4 x float>, i32, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <3 x float>, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], <4 x float>, [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], i32, i32, float, i32, <2 x float>, float, float, float, float, float, i32, <3 x float>, float, float, float, float, float, <3 x float>, float, <3 x float>, float, <3 x float>, float, float, float, float, float, <2 x float>, <2 x float>, float, float, float, float, <3 x float>, float, <2 x float>, i32, i32, <3 x float>, float, float, float, float, float, float, float, float, float, [4 x <3 x float>], i32, [4 x <3 x float>], i32, [4 x <3 x float>], i32, <4 x i32>, <2 x float>, <2 x float>, <2 x float>, i32, i32, float, float, float, float, <4 x float>, <4 x i32>, <4 x float>, <4 x float>, <4 x float>, i32, i32, i32, i32, <4 x float>, i32, float, float, i32, i32, float, float, i32, i32, float, float, i32, i32, float, float, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, float, float, float, float, i32, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, i32, i32, i32, float, <4 x float>, <4 x float>, <4 x float>, <4 x float>, i32, i32, i32, float, <4 x float>, float, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x i32>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [8 x <4 x float>], [8 x <4 x float>], <4 x float>, <3 x float>, i32, <2 x float>, float, float, float, float, float, float, <2 x float>, <2 x float>, <2 x float>, <2 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <2 x float>, float, float, <4 x float>, i32, i32, i32, i32, <3 x float>, i32, <4 x i32>, <4 x i32>, <2 x float>, <2 x i32>, <4 x float>, <4 x float>, <2 x float>, <2 x float>, [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, float, i32, i32, i32, i32, i32, float, float, <2 x float>, <2 x float>, float, float, float, float, i32, float, float, float, float, float, float, float, float, float, float, float, float, i32, i32, i32, float, float, float, i32, <2 x i32>, <2 x i32>, <4 x i32>, float, float, float, float, <4 x float>, <4 x float>, <2 x float>, <2 x float>, <4 x float>, <4 x float>, float, float, float, float, <4 x float>, float, float, float, float, i32, i32, float, float, <4 x float>, <2 x float>, <2 x float>, i32, i32, float, float, [4 x <4 x float>], float, float, float, float, float, float, float, float, i32, i32, i32, float, <4 x float>, <4 x float>, i32, i32, i32, i32, <2 x i32>, <2 x i32>, [2 x <4 x i32>], i32, float, float, float, i32, float, float, i32, <2 x i32>, <2 x float>, float, float, float, i32, %struct.GfxWeatherData, %hostlayout.struct.GfxVolumetricData, %struct.GfxFogRaymarchingData, %struct.GfxEnvironmentalFogData, %struct.GfxShallowWaterData, %struct.GfxGroundDeformationData, %struct.GfxSplinedModelGlobals }
%struct.GfxWeatherData = type { i32, i32, i32, i32, float, float, float, float, float, float, i32, i32, float, float, float, float, i32, i32, i32, i32, float, float, float, float, float, i32, i32, i32, i32, i32, i32, i32, <3 x float>, i32, <3 x float>, i32, i32, float, i32, i32, float, float, float, float }
%hostlayout.struct.GfxVolumetricData = type { [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <2 x float>, <2 x float>, <2 x float>, <2 x float>, <3 x i32>, i32, <3 x float>, i32, <4 x float>, <3 x float>, i32, i32, float, float, float, i32, i32, i32, float, <4 x float>, float, float, i32, i32, <3 x float>, i32, <3 x float>, float, <3 x float>, float, <2 x float>, float, float, <3 x float>, float, <3 x float>, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, <3 x float>, float, i32, float, float, float, <3 x float>, float, <2 x float>, <2 x float>, <3 x float>, float, i32, float, float, float, float, float, float, float, i32, i32, float, float, <3 x float>, float, i32, i32, <2 x float> }
%struct.GfxFogRaymarchingData = type { <2 x float>, <2 x float>, float, float, float, float, float, float, float, float, float, float, float, float, <2 x float>, <2 x float>, <3 x float>, float }
%struct.GfxEnvironmentalFogData = type { float, float, float, i32 }
%struct.GfxShallowWaterData = type { i32, i32, i32, i32, float, float, float, float, <2 x float>, <2 x float>, float, float, float, float, <3 x float>, float, float, float, float, float, float, float, float, float, i32, float, float, float, float, float, float, float, float, float, float, float, i32, float, float, float, float, i32, i32, i32 }
%struct.GfxGroundDeformationData = type { <2 x float>, <2 x float>, float, float, float, float, float, float, float, float, float, float, float, float, float, float, i32, i32 }
%struct.GfxSplinedModelGlobals = type { [64 x <4 x float>], [64 x <4 x float>], [16 x <4 x float>], [32 x <4 x float>], [64 x <4 x float>], [16 x <4 x float>], [16 x <4 x float>], float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float }
%FogRaymarchingConstBuffer_decl = type { %struct.FogRaymarchingConstBuffer }
%struct.FogRaymarchingConstBuffer = type { <2 x float>, <2 x float>, i32, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, i32, i32, float, float, i32, i32, i32, i32 }
%struct.SamplerState = type { i32 }

@"\01?ambientLightingLDS@@3V?$vector@M$02@@A.0" = addrspace(3) global float undef, align 4
@"\01?ambientLightingLDS@@3V?$vector@M$02@@A.1" = addrspace(3) global float undef, align 4
@"\01?ambientLightingLDS@@3V?$vector@M$02@@A.2" = addrspace(3) global float undef, align 4

define void @cs_fog_raymarching_particles() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 3, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 17, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 13, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 14, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 25, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 18, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call i32 @dx.op.threadId.i32(i32 93, i32 0)  ; ThreadId(component)
  %17 = call i32 @dx.op.threadId.i32(i32 93, i32 1)  ; ThreadId(component)
  %18 = call i32 @dx.op.flattenedThreadIdInGroup.i32(i32 96)  ; FlattenedThreadIdInGroup()
  %19 = alloca [3 x float], align 4
  %20 = alloca [3 x float], align 4
  %21 = add i32 %17, %16
  %22 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %15, i32 361)  ; CBufferLoadLegacy(handle,regIndex)
  %23 = extractvalue %dx.types.CBufRet.i32 %22, 1
  %24 = add i32 %21, %23
  %25 = lshr i32 %24, 1
  %26 = and i32 %25, 1
  %27 = and i32 %24, 1
  %28 = xor i32 %26, %27
  %29 = shl i32 %16, 1
  %30 = shl i32 %17, 1
  %31 = or i32 %28, %29
  %32 = or i32 %26, %30
  %33 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 48, i32 undef)  ; BufferLoad(srv,index,wot)
  %34 = extractvalue %dx.types.ResRet.i32 %33, 0
  %35 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 32, i32 undef)  ; BufferLoad(srv,index,wot)
  %36 = extractvalue %dx.types.ResRet.i32 %35, 0
  %37 = extractvalue %dx.types.ResRet.i32 %35, 1
  %38 = extractvalue %dx.types.ResRet.i32 %35, 2
  %39 = extractvalue %dx.types.ResRet.i32 %35, 3
  %40 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %41 = extractvalue %dx.types.ResRet.i32 %40, 0
  %42 = extractvalue %dx.types.ResRet.i32 %40, 1
  %43 = extractvalue %dx.types.ResRet.i32 %40, 2
  %44 = extractvalue %dx.types.ResRet.i32 %40, 3
  %45 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %46 = extractvalue %dx.types.ResRet.i32 %45, 0
  %47 = extractvalue %dx.types.ResRet.i32 %45, 1
  %48 = extractvalue %dx.types.ResRet.i32 %45, 2
  %49 = extractvalue %dx.types.ResRet.i32 %45, 3
  %50 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 396)  ; CBufferLoadLegacy(handle,regIndex)
  %51 = extractvalue %dx.types.CBufRet.f32 %50, 2
  %52 = fmul fast float %51, %51
  %53 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %54 = extractvalue %dx.types.CBufRet.f32 %53, 0
  %55 = extractvalue %dx.types.CBufRet.f32 %53, 1
  %56 = extractvalue %dx.types.CBufRet.f32 %53, 2
  %57 = fmul fast float %56, 0x3FF17B1420000000
  %58 = icmp eq i32 %18, 0
  br i1 %58, label %59, label %200, !dx.controlflow.hints !30

; <label>:59                                      ; preds = %0
  %60 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %61 = extractvalue %dx.types.CBufRet.f32 %60, 0
  %62 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %63 = extractvalue %dx.types.CBufRet.f32 %62, 3
  %64 = extractvalue %dx.types.ResRet.i32 %33, 1
  %65 = and i32 %64, 65535
  %66 = call float @dx.op.legacyF16ToF32(i32 131, i32 %65)  ; LegacyF16ToF32(value)
  %67 = lshr i32 %34, 16
  %68 = call float @dx.op.legacyF16ToF32(i32 131, i32 %67)  ; LegacyF16ToF32(value)
  %69 = and i32 %34, 65535
  %70 = call float @dx.op.legacyF16ToF32(i32 131, i32 %69)  ; LegacyF16ToF32(value)
  %71 = lshr i32 %39, 16
  %72 = call float @dx.op.legacyF16ToF32(i32 131, i32 %71)  ; LegacyF16ToF32(value)
  %73 = and i32 %39, 65535
  %74 = call float @dx.op.legacyF16ToF32(i32 131, i32 %73)  ; LegacyF16ToF32(value)
  %75 = lshr i32 %38, 16
  %76 = call float @dx.op.legacyF16ToF32(i32 131, i32 %75)  ; LegacyF16ToF32(value)
  %77 = and i32 %38, 65535
  %78 = call float @dx.op.legacyF16ToF32(i32 131, i32 %77)  ; LegacyF16ToF32(value)
  %79 = lshr i32 %37, 16
  %80 = call float @dx.op.legacyF16ToF32(i32 131, i32 %79)  ; LegacyF16ToF32(value)
  %81 = lshr i32 %36, 16
  %82 = call float @dx.op.legacyF16ToF32(i32 131, i32 %81)  ; LegacyF16ToF32(value)
  %83 = and i32 %36, 65535
  %84 = call float @dx.op.legacyF16ToF32(i32 131, i32 %83)  ; LegacyF16ToF32(value)
  %85 = lshr i32 %44, 16
  %86 = call float @dx.op.legacyF16ToF32(i32 131, i32 %85)  ; LegacyF16ToF32(value)
  %87 = and i32 %44, 65535
  %88 = call float @dx.op.legacyF16ToF32(i32 131, i32 %87)  ; LegacyF16ToF32(value)
  %89 = lshr i32 %43, 16
  %90 = call float @dx.op.legacyF16ToF32(i32 131, i32 %89)  ; LegacyF16ToF32(value)
  %91 = and i32 %43, 65535
  %92 = call float @dx.op.legacyF16ToF32(i32 131, i32 %91)  ; LegacyF16ToF32(value)
  %93 = lshr i32 %42, 16
  %94 = call float @dx.op.legacyF16ToF32(i32 131, i32 %93)  ; LegacyF16ToF32(value)
  %95 = and i32 %42, 65535
  %96 = call float @dx.op.legacyF16ToF32(i32 131, i32 %95)  ; LegacyF16ToF32(value)
  %97 = and i32 %41, 65535
  %98 = call float @dx.op.legacyF16ToF32(i32 131, i32 %97)  ; LegacyF16ToF32(value)
  %99 = lshr i32 %49, 16
  %100 = call float @dx.op.legacyF16ToF32(i32 131, i32 %99)  ; LegacyF16ToF32(value)
  %101 = and i32 %49, 65535
  %102 = call float @dx.op.legacyF16ToF32(i32 131, i32 %101)  ; LegacyF16ToF32(value)
  %103 = lshr i32 %48, 16
  %104 = call float @dx.op.legacyF16ToF32(i32 131, i32 %103)  ; LegacyF16ToF32(value)
  %105 = and i32 %48, 65535
  %106 = call float @dx.op.legacyF16ToF32(i32 131, i32 %105)  ; LegacyF16ToF32(value)
  %107 = lshr i32 %47, 16
  %108 = call float @dx.op.legacyF16ToF32(i32 131, i32 %107)  ; LegacyF16ToF32(value)
  %109 = and i32 %47, 65535
  %110 = call float @dx.op.legacyF16ToF32(i32 131, i32 %109)  ; LegacyF16ToF32(value)
  %111 = lshr i32 %46, 16
  %112 = call float @dx.op.legacyF16ToF32(i32 131, i32 %111)  ; LegacyF16ToF32(value)
  %113 = and i32 %37, 65535
  %114 = call float @dx.op.legacyF16ToF32(i32 131, i32 %113)  ; LegacyF16ToF32(value)
  %115 = lshr i32 %41, 16
  %116 = call float @dx.op.legacyF16ToF32(i32 131, i32 %115)  ; LegacyF16ToF32(value)
  %117 = and i32 %46, 65535
  %118 = call float @dx.op.legacyF16ToF32(i32 131, i32 %117)  ; LegacyF16ToF32(value)
  %119 = fmul fast float %114, 0x3FD20DD760000000
  %120 = fmul fast float %56, %51
  %121 = fmul fast float %120, %78
  %122 = fmul fast float %56, %56
  %123 = fmul fast float %122, 0x3FEE471020000000
  %124 = fadd fast float %123, 0xBFD42F6020000000
  %125 = fmul fast float %70, %124
  %126 = fmul fast float %76, %54
  %127 = fmul fast float %80, %55
  %128 = fmul fast float %54, %52
  %129 = fmul fast float %128, %57
  %130 = fmul fast float %129, %68
  %131 = fsub fast float -0.000000e+00, %130
  %132 = fmul fast float %55, %52
  %133 = fmul fast float %132, %57
  %134 = fmul fast float %133, %72
  %135 = fmul fast float %54, %54
  %136 = fmul fast float %55, %55
  %137 = fsub fast float %135, %136
  %138 = fmul fast float %137, 0x3FE17B1420000000
  %139 = fmul fast float %138, %66
  %140 = fmul fast float %55, 0x3FF17B1420000000
  %141 = fmul fast float %140, %54
  %142 = fmul fast float %141, %74
  %143 = fadd fast float %127, %126
  %144 = fmul fast float %143, %51
  %145 = fsub fast float %144, %121
  %146 = fmul fast float %145, 0x3FDF454380000000
  %147 = fadd fast float %125, %139
  %148 = fadd fast float %147, %142
  %149 = fmul fast float %148, %52
  %150 = fsub fast float %131, %134
  %151 = fadd fast float %150, %119
  %152 = fadd fast float %151, %146
  %153 = fadd fast float %152, %149
  %154 = fmul fast float %61, %63
  %155 = fmul fast float %154, %153
  %156 = fmul fast float %116, 0x3FD20DD760000000
  %157 = fmul fast float %120, %94
  %158 = fmul fast float %86, %124
  %159 = fmul fast float %92, %54
  %160 = fmul fast float %96, %55
  %161 = fmul fast float %129, %84
  %162 = fsub fast float -0.000000e+00, %161
  %163 = fmul fast float %133, %88
  %164 = fmul fast float %138, %82
  %165 = fmul fast float %141, %90
  %166 = fadd fast float %160, %159
  %167 = fmul fast float %166, %51
  %168 = fsub fast float %167, %157
  %169 = fmul fast float %168, 0x3FDF454380000000
  %170 = fadd fast float %158, %164
  %171 = fadd fast float %170, %165
  %172 = fmul fast float %171, %52
  %173 = fsub fast float %162, %163
  %174 = fadd fast float %173, %156
  %175 = fadd fast float %174, %169
  %176 = fadd fast float %175, %172
  %177 = fmul fast float %154, %176
  %178 = fmul fast float %118, 0x3FD20DD760000000
  %179 = fmul fast float %120, %110
  %180 = fmul fast float %102, %124
  %181 = fmul fast float %108, %54
  %182 = fmul fast float %112, %55
  %183 = fmul fast float %129, %100
  %184 = fsub fast float -0.000000e+00, %183
  %185 = fmul fast float %133, %104
  %186 = fmul fast float %138, %98
  %187 = fmul fast float %141, %106
  %188 = fadd fast float %182, %181
  %189 = fmul fast float %188, %51
  %190 = fsub fast float %189, %179
  %191 = fmul fast float %190, 0x3FDF454380000000
  %192 = fadd fast float %180, %186
  %193 = fadd fast float %192, %187
  %194 = fmul fast float %193, %52
  %195 = fsub fast float %184, %185
  %196 = fadd fast float %195, %178
  %197 = fadd fast float %196, %191
  %198 = fadd fast float %197, %194
  %199 = fmul fast float %154, %198
  store float %199, float addrspace(3)* @"\01?ambientLightingLDS@@3V?$vector@M$02@@A.0", align 4
  store float %177, float addrspace(3)* @"\01?ambientLightingLDS@@3V?$vector@M$02@@A.1", align 4
  store float %155, float addrspace(3)* @"\01?ambientLightingLDS@@3V?$vector@M$02@@A.2", align 4
  br label %200

; <label>:200                                     ; preds = %59, %0
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %201 = load float, float addrspace(3)* @"\01?ambientLightingLDS@@3V?$vector@M$02@@A.0", align 4
  %202 = load float, float addrspace(3)* @"\01?ambientLightingLDS@@3V?$vector@M$02@@A.1", align 4
  %203 = load float, float addrspace(3)* @"\01?ambientLightingLDS@@3V?$vector@M$02@@A.2", align 4
  %204 = uitofp i32 %31 to float
  %205 = uitofp i32 %32 to float
  %206 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %207 = extractvalue %dx.types.CBufRet.f32 %206, 2
  %208 = fmul fast float %207, 0x3FE3C6EF40000000
  %209 = frem fast float %204, 2.560000e+02
  %210 = frem fast float %205, 2.560000e+02
  %211 = fptoui float %209 to i32
  %212 = fptoui float %210 to i32
  %213 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %7, i32 0, i32 %211, i32 %212, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %214 = extractvalue %dx.types.ResRet.f32 %213, 1
  %215 = extractvalue %dx.types.ResRet.f32 %213, 2
  %216 = extractvalue %dx.types.ResRet.f32 %213, 3
  %217 = fadd fast float %214, %208
  %218 = fadd fast float %215, %208
  %219 = fadd fast float %216, %208
  %220 = call float @dx.op.unary.f32(i32 22, float %217)  ; Frc(value)
  %221 = call float @dx.op.unary.f32(i32 22, float %218)  ; Frc(value)
  %222 = call float @dx.op.unary.f32(i32 22, float %219)  ; Frc(value)
  %223 = fadd fast float %221, %204
  %224 = fadd fast float %222, %205
  %225 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %226 = extractvalue %dx.types.CBufRet.f32 %225, 2
  %227 = extractvalue %dx.types.CBufRet.f32 %225, 3
  %228 = fmul fast float %226, %223
  %229 = fmul fast float %227, %224
  %230 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %231 = extractvalue %dx.types.CBufRet.f32 %230, 0
  %232 = extractvalue %dx.types.CBufRet.f32 %230, 1
  %233 = extractvalue %dx.types.CBufRet.f32 %230, 2
  %234 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %235 = extractvalue %dx.types.CBufRet.f32 %234, 1
  %236 = fmul fast float %228, 2.000000e+00
  %237 = fmul fast float %229, 2.000000e+00
  %238 = fsub fast float 1.000000e+00, %236
  %239 = fsub fast float 1.000000e+00, %237
  %240 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %241 = extractvalue %dx.types.CBufRet.f32 %240, 0
  %242 = extractvalue %dx.types.CBufRet.f32 %240, 1
  %243 = extractvalue %dx.types.CBufRet.f32 %240, 2
  %244 = fmul fast float %241, %238
  %245 = fmul fast float %242, %238
  %246 = fmul fast float %243, %238
  %247 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %248 = extractvalue %dx.types.CBufRet.f32 %247, 0
  %249 = extractvalue %dx.types.CBufRet.f32 %247, 1
  %250 = extractvalue %dx.types.CBufRet.f32 %247, 2
  %251 = fmul fast float %248, %239
  %252 = fmul fast float %249, %239
  %253 = fmul fast float %250, %239
  %254 = fadd fast float %251, %244
  %255 = fadd fast float %252, %245
  %256 = fadd fast float %253, %246
  %257 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %258 = extractvalue %dx.types.CBufRet.f32 %257, 0
  %259 = extractvalue %dx.types.CBufRet.f32 %257, 1
  %260 = extractvalue %dx.types.CBufRet.f32 %257, 2
  %261 = fadd fast float %254, %258
  %262 = fadd fast float %255, %259
  %263 = fadd fast float %256, %260
  %264 = fmul fast float %261, %235
  %265 = fmul fast float %262, %235
  %266 = fmul fast float %263, %235
  %267 = fmul fast float %264, %264
  %268 = fmul fast float %265, %265
  %269 = fadd fast float %267, %268
  %270 = fmul fast float %266, %266
  %271 = fadd fast float %269, %270
  %272 = call float @dx.op.unary.f32(i32 24, float %271)  ; Sqrt(value)
  %273 = fdiv fast float 1.000000e+00, %272
  %274 = fmul fast float %264, %273
  %275 = fmul fast float %265, %273
  %276 = fmul fast float %266, %273
  %277 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %6, i32 0, i32 %31, i32 %32, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %278 = extractvalue %dx.types.ResRet.f32 %277, 0
  %279 = fcmp fast ogt float %278, -1.000000e+00
  %280 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %281 = extractvalue %dx.types.CBufRet.f32 %280, 1
  %282 = select i1 %279, float %281, float 1.000000e+00
  %283 = fadd fast float %278, 1.000000e+00
  %284 = fmul fast float %282, %283
  %285 = call float @dx.op.unary.f32(i32 6, float %284)  ; FAbs(value)
  %286 = fdiv fast float 1.000000e+00, %235
  %287 = fmul fast float %286, %272
  %288 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 423)  ; CBufferLoadLegacy(handle,regIndex)
  %289 = extractvalue %dx.types.CBufRet.f32 %288, 1
  %290 = fmul fast float %289, %287
  %291 = fmul fast float %287, %285
  %292 = extractvalue %dx.types.CBufRet.f32 %280, 3
  %293 = fcmp fast oge float %285, %292
  %294 = call float @dx.op.binary.f32(i32 36, float %291, float %290)  ; FMin(a,b)
  %295 = select i1 %293, float %290, float %294
  %296 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 408)  ; CBufferLoadLegacy(handle,regIndex)
  %297 = extractvalue %dx.types.CBufRet.f32 %296, 3
  %298 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 409)  ; CBufferLoadLegacy(handle,regIndex)
  %299 = extractvalue %dx.types.CBufRet.f32 %298, 0
  %300 = fsub fast float -0.000000e+00, %231
  %301 = fsub fast float -0.000000e+00, %232
  %302 = fsub fast float %297, %233
  %303 = fadd fast float %302, %299
  %304 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %300, float %301, float %303)  ; Dot3(ax,ay,az,bx,by,bz)
  %305 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %274, float %275, float %276)  ; Dot3(ax,ay,az,bx,by,bz)
  %306 = fdiv fast float 1.000000e+00, %305
  %307 = fmul fast float %306, %304
  %308 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 415)  ; CBufferLoadLegacy(handle,regIndex)
  %309 = extractvalue %dx.types.CBufRet.f32 %308, 2
  %310 = fsub fast float %309, %233
  %311 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %300, float %301, float %310)  ; Dot3(ax,ay,az,bx,by,bz)
  %312 = fmul fast float %306, %311
  %313 = call float @dx.op.binary.f32(i32 36, float %307, float %312)  ; FMin(a,b)
  %314 = call float @dx.op.binary.f32(i32 35, float %307, float %312)  ; FMax(a,b)
  %315 = call float @dx.op.binary.f32(i32 36, float 0x47EFFFFFE0000000, float %313)  ; FMin(a,b)
  %316 = call float @dx.op.binary.f32(i32 35, float -1.000000e+00, float %314)  ; FMax(a,b)
  %317 = fdiv fast float 1.000000e+00, %274
  %318 = fdiv fast float 1.000000e+00, %275
  %319 = fdiv fast float 1.000000e+00, %276
  %320 = call float @dx.op.binary.f32(i32 36, float %295, float %316)  ; FMin(a,b)
  %321 = call float @dx.op.binary.f32(i32 35, float %272, float %315)  ; FMax(a,b)
  %322 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %323 = extractvalue %dx.types.CBufRet.f32 %322, 0
  %324 = fmul fast float %220, 2.000000e+00
  %325 = fadd fast float %324, -1.000000e+00
  %326 = fmul fast float %323, %325
  %327 = fadd fast float %326, %321
  %328 = fcmp fast olt float %327, %320
  %329 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %330 = extractvalue %dx.types.CBufRet.f32 %329, 2
  %331 = fcmp fast olt float %330, 1.000000e+00
  %332 = and i1 %331, %328
  br i1 %332, label %333, label %945

; <label>:333                                     ; preds = %200
  %334 = fmul fast float %327, %276
  %335 = fadd fast float %334, %233
  %336 = fmul fast float %327, %275
  %337 = fadd fast float %336, %232
  %338 = fmul fast float %327, %274
  %339 = fadd fast float %338, %231
  br label %340

; <label>:340                                     ; preds = %917, %333
  %341 = phi float [ %919, %917 ], [ undef, %333 ]
  %342 = phi float [ %920, %917 ], [ undef, %333 ]
  %343 = phi float [ %921, %917 ], [ undef, %333 ]
  %344 = phi float [ %922, %917 ], [ undef, %333 ]
  %345 = phi float [ %469, %917 ], [ undef, %333 ]
  %346 = phi float [ %470, %917 ], [ undef, %333 ]
  %347 = phi float [ %471, %917 ], [ undef, %333 ]
  %348 = phi float [ %472, %917 ], [ undef, %333 ]
  %349 = phi float [ %923, %917 ], [ 0.000000e+00, %333 ]
  %350 = phi float [ %924, %917 ], [ 1.000000e+00, %333 ]
  %351 = phi float [ %925, %917 ], [ 0.000000e+00, %333 ]
  %352 = phi float [ %926, %917 ], [ 0.000000e+00, %333 ]
  %353 = phi float [ %927, %917 ], [ 0.000000e+00, %333 ]
  %354 = phi float [ %937, %917 ], [ %339, %333 ]
  %355 = phi float [ %938, %917 ], [ %337, %333 ]
  %356 = phi float [ %939, %917 ], [ %335, %333 ]
  %357 = phi float [ %918, %917 ], [ %327, %333 ]
  %358 = phi i32 [ %474, %917 ], [ 10, %333 ]
  %359 = phi float [ %928, %917 ], [ 0.000000e+00, %333 ]
  %360 = phi float [ %929, %917 ], [ 0.000000e+00, %333 ]
  %361 = phi float [ %930, %917 ], [ 0.000000e+00, %333 ]
  %362 = phi float [ %931, %917 ], [ 0.000000e+00, %333 ]
  %363 = phi float [ %932, %917 ], [ 0.000000e+00, %333 ]
  %364 = phi i32 [ %933, %917 ], [ 0, %333 ]
  %365 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %366 = extractvalue %dx.types.CBufRet.f32 %365, 0
  %367 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 415)  ; CBufferLoadLegacy(handle,regIndex)
  %368 = extractvalue %dx.types.CBufRet.f32 %367, 0
  %369 = extractvalue %dx.types.CBufRet.f32 %367, 1
  %370 = fsub fast float %354, %368
  %371 = fsub fast float %355, %369
  %372 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 414)  ; CBufferLoadLegacy(handle,regIndex)
  %373 = extractvalue %dx.types.CBufRet.f32 %372, 2
  %374 = extractvalue %dx.types.CBufRet.f32 %372, 3
  %375 = fmul fast float %370, %373
  %376 = fmul fast float %371, %374
  %377 = call float @dx.op.binary.f32(i32 36, float %375, float %376)  ; FMin(a,b)
  %378 = fcmp fast olt float %377, 0.000000e+00
  %379 = call float @dx.op.binary.f32(i32 35, float %375, float %376)  ; FMax(a,b)
  %380 = fcmp fast ogt float %379, 1.000000e+00
  %381 = or i1 %378, %380
  %382 = extractvalue %dx.types.CBufRet.f32 %367, 2
  %383 = fcmp fast olt float %356, %382
  %384 = or i1 %381, %383
  %385 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 408)  ; CBufferLoadLegacy(handle,regIndex)
  %386 = extractvalue %dx.types.CBufRet.f32 %385, 3
  %387 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 409)  ; CBufferLoadLegacy(handle,regIndex)
  %388 = extractvalue %dx.types.CBufRet.f32 %387, 0
  %389 = fadd fast float %388, %386
  %390 = fcmp fast ogt float %356, %389
  %391 = or i1 %384, %390
  br i1 %391, label %392, label %421, !dx.controlflow.hints !31

; <label>:392                                     ; preds = %340
  %393 = extractvalue %dx.types.CBufRet.f32 %372, 0
  %394 = extractvalue %dx.types.CBufRet.f32 %372, 1
  %395 = fsub fast float %368, %354
  %396 = fmul fast float %395, %317
  %397 = fadd fast float %395, %393
  %398 = fmul fast float %397, %317
  %399 = call float @dx.op.binary.f32(i32 36, float %396, float %398)  ; FMin(a,b)
  %400 = call float @dx.op.binary.f32(i32 35, float %396, float %398)  ; FMax(a,b)
  %401 = fsub fast float %369, %355
  %402 = fmul fast float %401, %318
  %403 = fadd fast float %401, %394
  %404 = fmul fast float %403, %318
  %405 = call float @dx.op.binary.f32(i32 36, float %402, float %404)  ; FMin(a,b)
  %406 = call float @dx.op.binary.f32(i32 35, float %399, float %405)  ; FMax(a,b)
  %407 = call float @dx.op.binary.f32(i32 35, float %402, float %404)  ; FMax(a,b)
  %408 = call float @dx.op.binary.f32(i32 36, float %400, float %407)  ; FMin(a,b)
  %409 = fsub fast float %382, %356
  %410 = fmul fast float %409, %319
  %411 = fsub fast float %386, %356
  %412 = fadd fast float %411, %388
  %413 = fmul fast float %412, %319
  %414 = call float @dx.op.binary.f32(i32 36, float %410, float %413)  ; FMin(a,b)
  %415 = call float @dx.op.binary.f32(i32 35, float %406, float %414)  ; FMax(a,b)
  %416 = call float @dx.op.binary.f32(i32 35, float %410, float %413)  ; FMax(a,b)
  %417 = call float @dx.op.binary.f32(i32 36, float %408, float %416)  ; FMin(a,b)
  %418 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %415)  ; FMax(a,b)
  %419 = fcmp fast oge float %417, %418
  %420 = select i1 %419, float %415, float 1.000000e+07
  br label %467

; <label>:421                                     ; preds = %340
  %422 = fsub fast float 1.000000e+00, %376
  %423 = icmp eq i32 %358, 0
  br i1 %423, label %452, label %424

; <label>:424                                     ; preds = %421
  br label %425

; <label>:425                                     ; preds = %448, %424
  %426 = phi i32 [ %449, %448 ], [ %358, %424 ]
  %427 = uitofp i32 %426 to float
  %428 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %13, float %375, float %422, float undef, float undef, i32 0, i32 0, i32 undef, float %427)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %429 = extractvalue %dx.types.ResRet.f32 %428, 0
  %430 = extractvalue %dx.types.ResRet.f32 %428, 1
  %431 = extractvalue %dx.types.ResRet.f32 %428, 2
  %432 = fcmp fast oeq float %429, 0.000000e+00
  %433 = fcmp ule float %356, %431
  %434 = fcmp uge float %356, %430
  %435 = or i1 %434, %433
  %436 = or i1 %432, %435
  br i1 %436, label %437, label %448, !dx.controlflow.hints !32

; <label>:437                                     ; preds = %425
  %438 = extractvalue %dx.types.ResRet.f32 %428, 3
  %439 = extractvalue %dx.types.CBufRet.f32 %372, 0
  %440 = and i32 %426, 31
  %441 = lshr i32 1024, %440
  %442 = uitofp i32 %441 to float
  %443 = fdiv fast float %439, %442
  %444 = add i32 %426, 1
  %445 = uitofp i32 %444 to float
  %446 = call float @dx.op.binary.f32(i32 36, float 1.000000e+01, float %445)  ; FMin(a,b)
  %447 = fptosi float %446 to i32
  br label %467

; <label>:448                                     ; preds = %425
  %449 = add i32 %426, -1
  %450 = icmp eq i32 %449, 0
  br i1 %450, label %451, label %425, !llvm.loop !33

; <label>:451                                     ; preds = %448
  br label %452

; <label>:452                                     ; preds = %451, %421
  %453 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %12, float %375, float %422, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %454 = extractvalue %dx.types.ResRet.f32 %453, 0
  %455 = extractvalue %dx.types.ResRet.f32 %453, 1
  %456 = extractvalue %dx.types.ResRet.f32 %453, 2
  %457 = extractvalue %dx.types.ResRet.f32 %453, 3
  %458 = extractvalue %dx.types.CBufRet.f32 %372, 0
  %459 = fmul fast float %458, 9.765625e-04
  %460 = fcmp fast oeq float %454, 0.000000e+00
  %461 = fcmp ule float %356, %456
  %462 = fcmp uge float %356, %455
  %463 = or i1 %462, %461
  %464 = or i1 %460, %463
  %465 = zext i1 %464 to i32
  %466 = xor i32 %465, 1
  br label %467

; <label>:467                                     ; preds = %452, %437, %392
  %468 = phi float [ %420, %392 ], [ %443, %437 ], [ %459, %452 ]
  %469 = phi float [ %345, %392 ], [ %429, %437 ], [ %454, %452 ]
  %470 = phi float [ %346, %392 ], [ %430, %437 ], [ %455, %452 ]
  %471 = phi float [ %347, %392 ], [ %431, %437 ], [ %456, %452 ]
  %472 = phi float [ %348, %392 ], [ %438, %437 ], [ %457, %452 ]
  %473 = phi i32 [ 0, %392 ], [ 0, %437 ], [ %466, %452 ]
  %474 = phi i32 [ 10, %392 ], [ %447, %437 ], [ 1, %452 ]
  %475 = icmp eq i32 %473, 0
  %476 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %477 = extractvalue %dx.types.CBufRet.f32 %476, 2
  %478 = call float @dx.op.binary.f32(i32 35, float %468, float %477)  ; FMax(a,b)
  %479 = call float @dx.op.binary.f32(i32 36, float 0x47EFFFFFE0000000, float %478)  ; FMin(a,b)
  %480 = extractvalue %dx.types.CBufRet.f32 %365, 2
  %481 = fmul fast float %480, %357
  %482 = call float @dx.op.unary.f32(i32 23, float %481)  ; Log(value)
  %483 = fmul fast float %482, 0x3FE62E4300000000
  %484 = call float @dx.op.binary.f32(i32 35, float %483, float 1.000000e+00)  ; FMax(a,b)
  %485 = fmul fast float %484, 0x47EFFFFFE0000000
  %486 = call float @dx.op.binary.f32(i32 36, float %485, float %479)  ; FMin(a,b)
  %487 = call float @dx.op.binary.f32(i32 35, float %486, float %366)  ; FMax(a,b)
  %488 = fadd fast float %320, 0x3F1A36E2E0000000
  %489 = fsub fast float %488, %357
  %490 = call float @dx.op.binary.f32(i32 36, float %489, float %487)  ; FMin(a,b)
  br i1 %475, label %629, label %491, !dx.controlflow.hints !35

; <label>:491                                     ; preds = %467
  %492 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 411)  ; CBufferLoadLegacy(handle,regIndex)
  %493 = extractvalue %dx.types.CBufRet.f32 %492, 0
  %494 = extractvalue %dx.types.CBufRet.f32 %492, 1
  %495 = extractvalue %dx.types.CBufRet.f32 %492, 2
  %496 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %15, i32 420)  ; CBufferLoadLegacy(handle,regIndex)
  %497 = extractvalue %dx.types.CBufRet.i32 %496, 0
  %498 = icmp ne i32 %497, 0
  %499 = zext i1 %498 to i32
  %500 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %15, i32 418)  ; CBufferLoadLegacy(handle,regIndex)
  %501 = extractvalue %dx.types.CBufRet.i32 %500, 0
  %502 = icmp eq i32 %501, 0
  br i1 %502, label %536, label %503

; <label>:503                                     ; preds = %491
  br label %504

; <label>:504                                     ; preds = %531, %503
  %505 = phi i32 [ %532, %531 ], [ 0, %503 ]
  %506 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %505, i32 0)  ; BufferLoad(srv,index,wot)
  %507 = extractvalue %dx.types.ResRet.f32 %506, 0
  %508 = extractvalue %dx.types.ResRet.f32 %506, 1
  %509 = extractvalue %dx.types.ResRet.f32 %506, 2
  %510 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %505, i32 16)  ; BufferLoad(srv,index,wot)
  %511 = extractvalue %dx.types.ResRet.f32 %510, 0
  %512 = extractvalue %dx.types.ResRet.f32 %510, 1
  %513 = extractvalue %dx.types.ResRet.f32 %510, 2
  %514 = fsub fast float %507, %511
  %515 = fsub fast float %508, %512
  %516 = fsub fast float %509, %513
  %517 = fadd fast float %511, %507
  %518 = fadd fast float %512, %508
  %519 = fadd fast float %513, %509
  %520 = fcmp fast olt float %354, %514
  %521 = fcmp fast olt float %355, %515
  %522 = fcmp fast olt float %356, %516
  %523 = or i1 %520, %521
  %524 = or i1 %522, %523
  %525 = fcmp fast ogt float %354, %517
  %526 = fcmp fast ogt float %355, %518
  %527 = fcmp fast ogt float %356, %519
  %528 = or i1 %525, %526
  %529 = or i1 %527, %528
  %530 = or i1 %524, %529
  br i1 %530, label %531, label %534, !dx.controlflow.hints !36

; <label>:531                                     ; preds = %504
  %532 = add nuw i32 %505, 1
  %533 = icmp ult i32 %532, %501
  br i1 %533, label %504, label %534

; <label>:534                                     ; preds = %531, %504
  %535 = phi i32 [ 255, %531 ], [ %505, %504 ]
  br label %536

; <label>:536                                     ; preds = %534, %491
  %537 = phi i32 [ 255, %491 ], [ %535, %534 ]
  %538 = icmp eq i32 %537, 255
  br i1 %538, label %548, label %539, !dx.controlflow.hints !37

; <label>:539                                     ; preds = %536
  %540 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %537, i32 32)  ; BufferLoad(srv,index,wot)
  %541 = extractvalue %dx.types.ResRet.f32 %540, 0
  %542 = extractvalue %dx.types.ResRet.f32 %540, 1
  %543 = extractvalue %dx.types.ResRet.f32 %540, 2
  %544 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %537, i32 156)  ; BufferLoad(srv,index,wot)
  %545 = extractvalue %dx.types.ResRet.i32 %544, 0
  %546 = icmp ne i32 %545, 0
  %547 = zext i1 %546 to i32
  br label %548

; <label>:548                                     ; preds = %539, %536
  %549 = phi float [ %541, %539 ], [ %493, %536 ]
  %550 = phi float [ %542, %539 ], [ %494, %536 ]
  %551 = phi float [ %543, %539 ], [ %495, %536 ]
  %552 = phi i32 [ %547, %539 ], [ %499, %536 ]
  %553 = icmp eq i32 %552, 0
  br i1 %553, label %554, label %623, !dx.controlflow.hints !38

; <label>:554                                     ; preds = %548
  %555 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 418)  ; CBufferLoadLegacy(handle,regIndex)
  %556 = extractvalue %dx.types.CBufRet.f32 %555, 3
  %557 = extractvalue %dx.types.CBufRet.f32 %385, 0
  %558 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 420)  ; CBufferLoadLegacy(handle,regIndex)
  %559 = extractvalue %dx.types.CBufRet.f32 %558, 2
  %560 = extractvalue %dx.types.CBufRet.f32 %558, 3
  br i1 %538, label %571, label %561, !dx.controlflow.hints !39

; <label>:561                                     ; preds = %554
  %562 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %537, i32 60)  ; BufferLoad(srv,index,wot)
  %563 = extractvalue %dx.types.ResRet.f32 %562, 0
  %564 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %537, i32 64)  ; BufferLoad(srv,index,wot)
  %565 = extractvalue %dx.types.ResRet.f32 %564, 0
  %566 = extractvalue %dx.types.ResRet.f32 %564, 1
  %567 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %537, i32 72)  ; BufferLoad(srv,index,wot)
  %568 = extractvalue %dx.types.ResRet.f32 %567, 0
  %569 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %537, i32 96)  ; BufferLoad(srv,index,wot)
  %570 = extractvalue %dx.types.ResRet.f32 %569, 0
  br label %571

; <label>:571                                     ; preds = %561, %554
  %572 = phi float [ %563, %561 ], [ %388, %554 ]
  %573 = phi float [ %568, %561 ], [ %386, %554 ]
  %574 = phi float [ %570, %561 ], [ %557, %554 ]
  %575 = phi float [ %565, %561 ], [ %559, %554 ]
  %576 = phi float [ %566, %561 ], [ %560, %554 ]
  %577 = call float @dx.op.binary.f32(i32 35, float %469, float 0.000000e+00)  ; FMax(a,b)
  %578 = call float @dx.op.binary.f32(i32 36, float %577, float 1.000000e+00)  ; FMin(a,b)
  %579 = call float @dx.op.unary.f32(i32 24, float %578)  ; Sqrt(value)
  %580 = call float @dx.op.binary.f32(i32 35, float %472, float 0x3F847AE140000000)  ; FMax(a,b)
  %581 = fsub fast float %470, %356
  %582 = fsub fast float %356, %471
  %583 = call float @dx.op.binary.f32(i32 36, float %582, float %581)  ; FMin(a,b)
  %584 = fdiv fast float %583, %580
  %585 = call float @dx.op.unary.f32(i32 7, float %584)  ; Saturate(value)
  %586 = fsub fast float %356, %573
  %587 = fdiv fast float %586, %572
  %588 = call float @dx.op.unary.f32(i32 7, float %587)  ; Saturate(value)
  %589 = fsub fast float 1.000000e+00, %588
  %590 = fmul float %585, %589
  %591 = fmul float %590, %590
  %592 = fmul fast float %579, %556
  %593 = fmul fast float %592, %591
  %594 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 412)  ; CBufferLoadLegacy(handle,regIndex)
  %595 = extractvalue %dx.types.CBufRet.f32 %594, 2
  %596 = extractvalue %dx.types.CBufRet.f32 %594, 1
  %597 = fsub fast float %593, %596
  %598 = fsub fast float %595, %596
  %599 = fdiv fast float %597, %598
  %600 = call float @dx.op.unary.f32(i32 7, float %599)  ; Saturate(value)
  %601 = fmul fast float %600, %574
  %602 = fcmp fast ogt float %576, 0.000000e+00
  br i1 %602, label %603, label %623, !dx.controlflow.hints !40

; <label>:603                                     ; preds = %571
  %604 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %605 = extractvalue %dx.types.CBufRet.f32 %604, 0
  %606 = extractvalue %dx.types.CBufRet.f32 %604, 1
  %607 = extractvalue %dx.types.CBufRet.f32 %604, 2
  %608 = fsub fast float %354, %605
  %609 = fsub fast float %355, %606
  %610 = fsub fast float %356, %607
  %611 = fmul fast float %608, %608
  %612 = fmul fast float %609, %609
  %613 = fadd fast float %611, %612
  %614 = fmul fast float %610, %610
  %615 = fadd fast float %613, %614
  %616 = call float @dx.op.unary.f32(i32 24, float %615)  ; Sqrt(value)
  %617 = fsub fast float %616, %575
  %618 = fsub fast float %576, %575
  %619 = fdiv fast float %617, %618
  %620 = call float @dx.op.unary.f32(i32 7, float %619)  ; Saturate(value)
  %621 = fmul fast float %620, %620
  %622 = fmul fast float %621, %601
  br label %623

; <label>:623                                     ; preds = %603, %571, %548
  %624 = phi float [ 0.000000e+00, %548 ], [ %622, %603 ], [ %601, %571 ]
  %625 = fmul fast float %624, %490
  %626 = fmul fast float %625, %549
  %627 = fmul fast float %625, %550
  %628 = fmul fast float %625, %551
  br label %629

; <label>:629                                     ; preds = %623, %467
  %630 = phi float [ %625, %623 ], [ 0.000000e+00, %467 ]
  %631 = phi float [ %626, %623 ], [ 0.000000e+00, %467 ]
  %632 = phi float [ %627, %623 ], [ 0.000000e+00, %467 ]
  %633 = phi float [ %628, %623 ], [ 0.000000e+00, %467 ]
  %634 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %635 = extractvalue %dx.types.CBufRet.f32 %634, 1
  %636 = fcmp fast ogt float %630, %635
  br i1 %636, label %637, label %642, !dx.controlflow.hints !41

; <label>:637                                     ; preds = %629
  %638 = fdiv fast float 1.000000e+00, %630
  %639 = fmul fast float %638, %631
  %640 = fmul fast float %638, %632
  %641 = fmul fast float %638, %633
  br label %642

; <label>:642                                     ; preds = %637, %629
  %643 = phi float [ %639, %637 ], [ %631, %629 ]
  %644 = phi float [ %640, %637 ], [ %632, %629 ]
  %645 = phi float [ %641, %637 ], [ %633, %629 ]
  br i1 %636, label %648, label %646, !dx.controlflow.hints !42

; <label>:646                                     ; preds = %642
  %647 = fadd fast float %490, %357
  br label %917

; <label>:648                                     ; preds = %642
  %649 = fmul fast float %630, 0xBFF7154760000000
  %650 = call float @dx.op.unary.f32(i32 21, float %649)  ; Exp(value)
  %651 = call float @dx.op.unary.f32(i32 7, float %650)  ; Saturate(value)
  %652 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %653 = extractvalue %dx.types.CBufRet.f32 %652, 3
  %654 = fcmp fast une float %653, 0.000000e+00
  %655 = extractvalue %dx.types.CBufRet.f32 %652, 0
  %656 = extractvalue %dx.types.CBufRet.f32 %652, 1
  %657 = extractvalue %dx.types.CBufRet.f32 %652, 2
  br i1 %654, label %658, label %675, !dx.controlflow.hints !43

; <label>:658                                     ; preds = %648
  %659 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %660 = extractvalue %dx.types.CBufRet.f32 %659, 0
  %661 = extractvalue %dx.types.CBufRet.f32 %659, 1
  %662 = extractvalue %dx.types.CBufRet.f32 %659, 2
  %663 = call float @dx.op.dot3.f32(i32 55, float %655, float %656, float %657, float %274, float %275, float %276)  ; Dot3(ax,ay,az,bx,by,bz)
  %664 = fmul fast float %663, 5.000000e-01
  %665 = fsub fast float 4.921875e-01, %664
  %666 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %12, float %665, float 0x3FB25F3060000000, float -3.125000e-02, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %667 = extractvalue %dx.types.ResRet.f32 %666, 0
  %668 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 398)  ; CBufferLoadLegacy(handle,regIndex)
  %669 = extractvalue %dx.types.CBufRet.f32 %668, 0
  %670 = fmul fast float %667, 0x400921FB60000000
  %671 = fmul fast float %670, %669
  %672 = fmul fast float %671, %660
  %673 = fmul fast float %671, %661
  %674 = fmul fast float %671, %662
  br label %675

; <label>:675                                     ; preds = %658, %648
  %676 = phi float [ %672, %658 ], [ 0.000000e+00, %648 ]
  %677 = phi float [ %673, %658 ], [ 0.000000e+00, %648 ]
  %678 = phi float [ %674, %658 ], [ 0.000000e+00, %648 ]
  %679 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 427)  ; CBufferLoadLegacy(handle,regIndex)
  %680 = extractvalue %dx.types.CBufRet.f32 %679, 0
  %681 = fmul fast float %680, %655
  %682 = fmul fast float %680, %656
  %683 = fmul fast float %680, %657
  %684 = fadd fast float %681, %354
  %685 = fadd fast float %682, %355
  %686 = fadd fast float %683, %356
  %687 = fsub fast float %684, %368
  %688 = fsub fast float %685, %369
  %689 = fmul fast float %687, %373
  %690 = fmul fast float %688, %374
  %691 = call float @dx.op.binary.f32(i32 36, float %689, float %690)  ; FMin(a,b)
  %692 = fcmp fast olt float %691, 0.000000e+00
  %693 = call float @dx.op.binary.f32(i32 35, float %689, float %690)  ; FMax(a,b)
  %694 = fcmp fast ogt float %693, 1.000000e+00
  %695 = or i1 %692, %694
  %696 = fcmp fast olt float %686, %382
  %697 = or i1 %695, %696
  %698 = fcmp fast ogt float %686, %389
  %699 = or i1 %697, %698
  br i1 %699, label %714, label %700, !dx.controlflow.hints !31

; <label>:700                                     ; preds = %675
  %701 = fsub fast float 1.000000e+00, %690
  %702 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %12, float %689, float %701, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %703 = extractvalue %dx.types.ResRet.f32 %702, 0
  %704 = extractvalue %dx.types.ResRet.f32 %702, 1
  %705 = extractvalue %dx.types.ResRet.f32 %702, 2
  %706 = extractvalue %dx.types.ResRet.f32 %702, 3
  %707 = fcmp fast oeq float %703, 0.000000e+00
  %708 = fcmp ule float %686, %705
  %709 = fcmp uge float %686, %704
  %710 = or i1 %709, %708
  %711 = or i1 %707, %710
  %712 = zext i1 %711 to i32
  %713 = xor i32 %712, 1
  br label %714

; <label>:714                                     ; preds = %700, %675
  %715 = phi float [ %703, %700 ], [ %341, %675 ]
  %716 = phi float [ %704, %700 ], [ %342, %675 ]
  %717 = phi float [ %705, %700 ], [ %343, %675 ]
  %718 = phi float [ %706, %700 ], [ %344, %675 ]
  %719 = phi i32 [ %713, %700 ], [ 0, %675 ]
  %720 = icmp eq i32 %719, 0
  br i1 %720, label %845, label %721, !dx.controlflow.hints !35

; <label>:721                                     ; preds = %714
  %722 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %15, i32 420)  ; CBufferLoadLegacy(handle,regIndex)
  %723 = extractvalue %dx.types.CBufRet.i32 %722, 0
  %724 = icmp ne i32 %723, 0
  %725 = zext i1 %724 to i32
  %726 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %15, i32 418)  ; CBufferLoadLegacy(handle,regIndex)
  %727 = extractvalue %dx.types.CBufRet.i32 %726, 0
  %728 = icmp eq i32 %727, 0
  br i1 %728, label %762, label %729

; <label>:729                                     ; preds = %721
  br label %730

; <label>:730                                     ; preds = %757, %729
  %731 = phi i32 [ %758, %757 ], [ 0, %729 ]
  %732 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %731, i32 0)  ; BufferLoad(srv,index,wot)
  %733 = extractvalue %dx.types.ResRet.f32 %732, 0
  %734 = extractvalue %dx.types.ResRet.f32 %732, 1
  %735 = extractvalue %dx.types.ResRet.f32 %732, 2
  %736 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %731, i32 16)  ; BufferLoad(srv,index,wot)
  %737 = extractvalue %dx.types.ResRet.f32 %736, 0
  %738 = extractvalue %dx.types.ResRet.f32 %736, 1
  %739 = extractvalue %dx.types.ResRet.f32 %736, 2
  %740 = fsub fast float %733, %737
  %741 = fsub fast float %734, %738
  %742 = fsub fast float %735, %739
  %743 = fadd fast float %737, %733
  %744 = fadd fast float %738, %734
  %745 = fadd fast float %739, %735
  %746 = fcmp fast olt float %684, %740
  %747 = fcmp fast olt float %685, %741
  %748 = fcmp fast olt float %686, %742
  %749 = or i1 %746, %747
  %750 = or i1 %748, %749
  %751 = fcmp fast ogt float %684, %743
  %752 = fcmp fast ogt float %685, %744
  %753 = fcmp fast ogt float %686, %745
  %754 = or i1 %751, %752
  %755 = or i1 %753, %754
  %756 = or i1 %750, %755
  br i1 %756, label %757, label %760, !dx.controlflow.hints !36

; <label>:757                                     ; preds = %730
  %758 = add nuw i32 %731, 1
  %759 = icmp ult i32 %758, %727
  br i1 %759, label %730, label %760

; <label>:760                                     ; preds = %757, %730
  %761 = phi i32 [ 255, %757 ], [ %731, %730 ]
  br label %762

; <label>:762                                     ; preds = %760, %721
  %763 = phi i32 [ 255, %721 ], [ %761, %760 ]
  %764 = icmp eq i32 %763, 255
  br i1 %764, label %770, label %765, !dx.controlflow.hints !37

; <label>:765                                     ; preds = %762
  %766 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %763, i32 156)  ; BufferLoad(srv,index,wot)
  %767 = extractvalue %dx.types.ResRet.i32 %766, 0
  %768 = icmp ne i32 %767, 0
  %769 = zext i1 %768 to i32
  br label %770

; <label>:770                                     ; preds = %765, %762
  %771 = phi i32 [ %769, %765 ], [ %725, %762 ]
  %772 = icmp eq i32 %771, 0
  br i1 %772, label %773, label %842, !dx.controlflow.hints !38

; <label>:773                                     ; preds = %770
  %774 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 418)  ; CBufferLoadLegacy(handle,regIndex)
  %775 = extractvalue %dx.types.CBufRet.f32 %774, 3
  %776 = extractvalue %dx.types.CBufRet.f32 %385, 0
  %777 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 420)  ; CBufferLoadLegacy(handle,regIndex)
  %778 = extractvalue %dx.types.CBufRet.f32 %777, 2
  %779 = extractvalue %dx.types.CBufRet.f32 %777, 3
  br i1 %764, label %790, label %780, !dx.controlflow.hints !39

; <label>:780                                     ; preds = %773
  %781 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %763, i32 60)  ; BufferLoad(srv,index,wot)
  %782 = extractvalue %dx.types.ResRet.f32 %781, 0
  %783 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %763, i32 64)  ; BufferLoad(srv,index,wot)
  %784 = extractvalue %dx.types.ResRet.f32 %783, 0
  %785 = extractvalue %dx.types.ResRet.f32 %783, 1
  %786 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %763, i32 72)  ; BufferLoad(srv,index,wot)
  %787 = extractvalue %dx.types.ResRet.f32 %786, 0
  %788 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %763, i32 96)  ; BufferLoad(srv,index,wot)
  %789 = extractvalue %dx.types.ResRet.f32 %788, 0
  br label %790

; <label>:790                                     ; preds = %780, %773
  %791 = phi float [ %782, %780 ], [ %388, %773 ]
  %792 = phi float [ %787, %780 ], [ %386, %773 ]
  %793 = phi float [ %789, %780 ], [ %776, %773 ]
  %794 = phi float [ %784, %780 ], [ %778, %773 ]
  %795 = phi float [ %785, %780 ], [ %779, %773 ]
  %796 = call float @dx.op.binary.f32(i32 35, float %715, float 0.000000e+00)  ; FMax(a,b)
  %797 = call float @dx.op.binary.f32(i32 36, float %796, float 1.000000e+00)  ; FMin(a,b)
  %798 = call float @dx.op.unary.f32(i32 24, float %797)  ; Sqrt(value)
  %799 = call float @dx.op.binary.f32(i32 35, float %718, float 0x3F847AE140000000)  ; FMax(a,b)
  %800 = fsub fast float %716, %686
  %801 = fsub fast float %686, %717
  %802 = call float @dx.op.binary.f32(i32 36, float %801, float %800)  ; FMin(a,b)
  %803 = fdiv fast float %802, %799
  %804 = call float @dx.op.unary.f32(i32 7, float %803)  ; Saturate(value)
  %805 = fsub fast float %686, %792
  %806 = fdiv fast float %805, %791
  %807 = call float @dx.op.unary.f32(i32 7, float %806)  ; Saturate(value)
  %808 = fsub fast float 1.000000e+00, %807
  %809 = fmul float %804, %808
  %810 = fmul float %809, %809
  %811 = fmul fast float %798, %775
  %812 = fmul fast float %811, %810
  %813 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 412)  ; CBufferLoadLegacy(handle,regIndex)
  %814 = extractvalue %dx.types.CBufRet.f32 %813, 2
  %815 = extractvalue %dx.types.CBufRet.f32 %813, 1
  %816 = fsub fast float %812, %815
  %817 = fsub fast float %814, %815
  %818 = fdiv fast float %816, %817
  %819 = call float @dx.op.unary.f32(i32 7, float %818)  ; Saturate(value)
  %820 = fmul fast float %819, %793
  %821 = fcmp fast ogt float %795, 0.000000e+00
  br i1 %821, label %822, label %842, !dx.controlflow.hints !40

; <label>:822                                     ; preds = %790
  %823 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %824 = extractvalue %dx.types.CBufRet.f32 %823, 0
  %825 = extractvalue %dx.types.CBufRet.f32 %823, 1
  %826 = extractvalue %dx.types.CBufRet.f32 %823, 2
  %827 = fsub fast float %684, %824
  %828 = fsub fast float %685, %825
  %829 = fsub fast float %686, %826
  %830 = fmul fast float %827, %827
  %831 = fmul fast float %828, %828
  %832 = fadd fast float %830, %831
  %833 = fmul fast float %829, %829
  %834 = fadd fast float %832, %833
  %835 = call float @dx.op.unary.f32(i32 24, float %834)  ; Sqrt(value)
  %836 = fsub fast float %835, %794
  %837 = fsub fast float %795, %794
  %838 = fdiv fast float %836, %837
  %839 = call float @dx.op.unary.f32(i32 7, float %838)  ; Saturate(value)
  %840 = fmul fast float %839, %839
  %841 = fmul fast float %840, %820
  br label %842

; <label>:842                                     ; preds = %822, %790, %770
  %843 = phi float [ 0.000000e+00, %770 ], [ %841, %822 ], [ %820, %790 ]
  %844 = fmul fast float %843, %680
  br label %845

; <label>:845                                     ; preds = %842, %714
  %846 = phi float [ %844, %842 ], [ 0.000000e+00, %714 ]
  %847 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 36)  ; CBufferLoadLegacy(handle,regIndex)
  %848 = extractvalue %dx.types.CBufRet.f32 %847, 3
  %849 = fmul fast float %846, 0xBFF7154760000000
  %850 = fmul fast float %849, %848
  %851 = call float @dx.op.unary.f32(i32 21, float %850)  ; Exp(value)
  %852 = call float @dx.op.unary.f32(i32 7, float %851)  ; Saturate(value)
  %853 = fmul fast float %852, %676
  %854 = fmul fast float %852, %677
  %855 = fmul fast float %852, %678
  %856 = fadd fast float %853, %201
  %857 = fadd fast float %854, %202
  %858 = fadd fast float %855, %203
  %859 = fsub fast float 1.000000e+00, %651
  %860 = fmul fast float %643, %350
  %861 = fmul fast float %860, %859
  %862 = fmul fast float %861, %856
  %863 = fmul fast float %644, %350
  %864 = fmul fast float %863, %859
  %865 = fmul fast float %864, %857
  %866 = fmul fast float %645, %350
  %867 = fmul fast float %866, %859
  %868 = fmul fast float %867, %858
  %869 = fadd fast float %862, %351
  %870 = fadd fast float %865, %352
  %871 = fadd fast float %868, %353
  %872 = fdiv fast float %630, %490
  %873 = fadd fast float %490, %357
  %874 = fmul fast float %357, %357
  %875 = fmul fast float %873, %873
  %876 = fsub fast float %874, %875
  %877 = fmul fast float %876, -5.000000e-01
  %878 = fmul fast float %877, %872
  %879 = fadd fast float %878, %349
  %880 = fadd fast float %630, %359
  %881 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %15, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %882 = extractvalue %dx.types.CBufRet.i32 %881, 0
  %883 = icmp eq i32 %882, 0
  br i1 %883, label %910, label %884, !dx.controlflow.hints !44

; <label>:884                                     ; preds = %845
  %885 = icmp ne i32 %364, 0
  %886 = zext i1 %885 to i32
  %887 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %888 = extractvalue %dx.types.CBufRet.f32 %887, 2
  %889 = extractvalue %dx.types.CBufRet.f32 %887, 0
  %890 = fsub fast float %873, %889
  %891 = fmul fast float %890, %888
  %892 = call float @dx.op.unary.f32(i32 7, float %891)  ; Saturate(value)
  %893 = fadd fast float %892, -5.000000e-01
  %894 = fmul fast float %893, 2.000000e+00
  %895 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %896 = extractvalue %dx.types.CBufRet.f32 %895, 2
  %897 = fcmp fast olt float %894, %896
  br i1 %897, label %898, label %910, !dx.controlflow.hints !45

; <label>:898                                     ; preds = %884
  %899 = fmul fast float %894, %894
  %900 = fmul fast float %859, %350
  %901 = fmul fast float %894, %900
  %902 = fmul fast float %899, %900
  %903 = fmul fast float %901, %899
  %904 = fmul fast float %899, %899
  %905 = fmul fast float %904, %900
  %906 = fadd fast float %901, %360
  %907 = fadd fast float %902, %361
  %908 = fadd fast float %903, %362
  %909 = fadd fast float %905, %363
  br label %910

; <label>:910                                     ; preds = %898, %884, %845
  %911 = phi float [ %360, %845 ], [ %906, %898 ], [ %360, %884 ]
  %912 = phi float [ %361, %845 ], [ %907, %898 ], [ %361, %884 ]
  %913 = phi float [ %362, %845 ], [ %908, %898 ], [ %362, %884 ]
  %914 = phi float [ %363, %845 ], [ %909, %898 ], [ %363, %884 ]
  %915 = phi i32 [ %364, %845 ], [ 1, %898 ], [ %886, %884 ]
  %916 = fmul fast float %651, %350
  br label %917

; <label>:917                                     ; preds = %910, %646
  %918 = phi float [ %647, %646 ], [ %873, %910 ]
  %919 = phi float [ %341, %646 ], [ %715, %910 ]
  %920 = phi float [ %342, %646 ], [ %716, %910 ]
  %921 = phi float [ %343, %646 ], [ %717, %910 ]
  %922 = phi float [ %344, %646 ], [ %718, %910 ]
  %923 = phi float [ %349, %646 ], [ %879, %910 ]
  %924 = phi float [ %350, %646 ], [ %916, %910 ]
  %925 = phi float [ %351, %646 ], [ %869, %910 ]
  %926 = phi float [ %352, %646 ], [ %870, %910 ]
  %927 = phi float [ %353, %646 ], [ %871, %910 ]
  %928 = phi float [ %359, %646 ], [ %880, %910 ]
  %929 = phi float [ %360, %646 ], [ %911, %910 ]
  %930 = phi float [ %361, %646 ], [ %912, %910 ]
  %931 = phi float [ %362, %646 ], [ %913, %910 ]
  %932 = phi float [ %363, %646 ], [ %914, %910 ]
  %933 = phi i32 [ %364, %646 ], [ %915, %910 ]
  %934 = fmul fast float %490, %274
  %935 = fmul fast float %490, %275
  %936 = fmul fast float %490, %276
  %937 = fadd fast float %934, %354
  %938 = fadd fast float %935, %355
  %939 = fadd fast float %936, %356
  %940 = fcmp fast olt float %918, %320
  %941 = extractvalue %dx.types.CBufRet.f32 %634, 2
  %942 = fcmp fast olt float %941, %924
  %943 = and i1 %940, %942
  br i1 %943, label %340, label %944

; <label>:944                                     ; preds = %917
  br label %945

; <label>:945                                     ; preds = %944, %200
  %946 = phi float [ 0.000000e+00, %200 ], [ %923, %944 ]
  %947 = phi float [ 1.000000e+00, %200 ], [ %924, %944 ]
  %948 = phi float [ 0.000000e+00, %200 ], [ %925, %944 ]
  %949 = phi float [ 0.000000e+00, %200 ], [ %926, %944 ]
  %950 = phi float [ 0.000000e+00, %200 ], [ %927, %944 ]
  %951 = phi float [ 0.000000e+00, %200 ], [ %928, %944 ]
  %952 = phi float [ 0.000000e+00, %200 ], [ %929, %944 ]
  %953 = phi float [ 0.000000e+00, %200 ], [ %930, %944 ]
  %954 = phi float [ 0.000000e+00, %200 ], [ %931, %944 ]
  %955 = phi float [ 0.000000e+00, %200 ], [ %932, %944 ]
  %956 = phi i32 [ 0, %200 ], [ %933, %944 ]
  %957 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %15, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %958 = extractvalue %dx.types.CBufRet.i32 %957, 0
  %959 = icmp eq i32 %958, 0
  br i1 %959, label %1001, label %960, !dx.controlflow.hints !46

; <label>:960                                     ; preds = %945
  %961 = icmp eq i32 %956, 0
  br i1 %961, label %1000, label %962, !dx.controlflow.hints !47

; <label>:962                                     ; preds = %960
  %963 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %15, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %964 = extractvalue %dx.types.CBufRet.i32 %963, 2
  %965 = icmp eq i32 %964, 0
  br i1 %965, label %972, label %966, !dx.controlflow.hints !48

; <label>:966                                     ; preds = %962
  %967 = fsub fast float 1.000000e+00, %947
  %968 = fdiv fast float %952, %967
  %969 = fdiv fast float %953, %967
  %970 = fdiv fast float %954, %967
  %971 = fdiv fast float %955, %967
  br label %977

; <label>:972                                     ; preds = %962
  %973 = fadd fast float %952, %947
  %974 = fadd fast float %953, %947
  %975 = fadd fast float %954, %947
  %976 = fadd fast float %955, %947
  br label %977

; <label>:977                                     ; preds = %972, %966
  %978 = phi float [ %968, %966 ], [ %973, %972 ]
  %979 = phi float [ %969, %966 ], [ %974, %972 ]
  %980 = phi float [ %970, %966 ], [ %975, %972 ]
  %981 = phi float [ %971, %966 ], [ %976, %972 ]
  %982 = call float @dx.op.binary.f32(i32 35, float %978, float -1.000000e+00)  ; FMax(a,b)
  %983 = call float @dx.op.binary.f32(i32 35, float %979, float -1.000000e+00)  ; FMax(a,b)
  %984 = call float @dx.op.binary.f32(i32 35, float %980, float -1.000000e+00)  ; FMax(a,b)
  %985 = call float @dx.op.binary.f32(i32 35, float %981, float -1.000000e+00)  ; FMax(a,b)
  %986 = call float @dx.op.binary.f32(i32 36, float %982, float 1.000000e+00)  ; FMin(a,b)
  %987 = call float @dx.op.binary.f32(i32 36, float %983, float 1.000000e+00)  ; FMin(a,b)
  %988 = call float @dx.op.binary.f32(i32 36, float %984, float 1.000000e+00)  ; FMin(a,b)
  %989 = call float @dx.op.binary.f32(i32 36, float %985, float 1.000000e+00)  ; FMin(a,b)
  %990 = fmul fast float %986, 1.500000e+00
  %991 = call float @dx.op.tertiary.f32(i32 46, float -2.000000e+00, float %988, float %990)  ; FMad(a,b,c)
  %992 = call float @dx.op.tertiary.f32(i32 46, float 4.000000e+00, float %987, float 0.000000e+00)  ; FMad(a,b,c)
  %993 = call float @dx.op.tertiary.f32(i32 46, float -4.000000e+00, float %989, float %992)  ; FMad(a,b,c)
  %994 = fmul fast float %986, 0x3FEBB67AE0000000
  %995 = call float @dx.op.tertiary.f32(i32 46, float 0xBFD8A23460000000, float %988, float %994)  ; FMad(a,b,c)
  %996 = call float @dx.op.tertiary.f32(i32 46, float 5.000000e-01, float %987, float 0.000000e+00)  ; FMad(a,b,c)
  %997 = call float @dx.op.tertiary.f32(i32 46, float 5.000000e-01, float %989, float %996)  ; FMad(a,b,c)
  %998 = fadd fast float %991, 5.000000e-01
  %999 = fadd fast float %995, 5.000000e-01
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %16, i32 %17, i32 0, float %998, float %993, float %999, float %997, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %1001

; <label>:1000                                    ; preds = %960
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %16, i32 %17, i32 0, float 0.000000e+00, float 0.000000e+00, float 0x3FEF6560C0000000, float 1.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %1001

; <label>:1001                                    ; preds = %1000, %977, %945
  %1002 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %1003 = extractvalue %dx.types.CBufRet.f32 %1002, 2
  %1004 = fsub fast float %947, %1003
  %1005 = fdiv fast float %1004, %1003
  %1006 = call float @dx.op.unary.f32(i32 7, float %1005)  ; Saturate(value)
  %1007 = fmul fast float %1006, 2.000000e+00
  %1008 = fsub fast float 3.000000e+00, %1007
  %1009 = fmul fast float %1006, %1006
  %1010 = fmul fast float %1009, %947
  %1011 = fmul fast float %1010, %1008
  %1012 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 419)  ; CBufferLoadLegacy(handle,regIndex)
  %1013 = extractvalue %dx.types.CBufRet.f32 %1012, 0
  %1014 = extractvalue %dx.types.CBufRet.f32 %1012, 1
  %1015 = extractvalue %dx.types.CBufRet.f32 %1012, 2
  %1016 = call float @dx.op.dot3.f32(i32 55, float %274, float %275, float %276, float %1013, float %1014, float %1015)  ; Dot3(ax,ay,az,bx,by,bz)
  %1017 = fmul fast float %1016, %946
  %1018 = fcmp fast ogt float %951, 0.000000e+00
  %1019 = fdiv fast float 1.000000e+00, %951
  %1020 = fmul fast float %1017, %1019
  %1021 = select i1 %1018, float %1020, float %285
  %1022 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %1023 = extractvalue %dx.types.CBufRet.f32 %1022, 0
  %1024 = extractvalue %dx.types.CBufRet.f32 %1022, 1
  %1025 = extractvalue %dx.types.CBufRet.f32 %1022, 2
  %1026 = fmul fast float %1023, %238
  %1027 = fmul fast float %1024, %238
  %1028 = fmul fast float %1025, %238
  %1029 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %1030 = extractvalue %dx.types.CBufRet.f32 %1029, 0
  %1031 = extractvalue %dx.types.CBufRet.f32 %1029, 1
  %1032 = extractvalue %dx.types.CBufRet.f32 %1029, 2
  %1033 = fmul fast float %1030, %239
  %1034 = fmul fast float %1031, %239
  %1035 = fmul fast float %1032, %239
  %1036 = fadd fast float %1033, %1026
  %1037 = fadd fast float %1034, %1027
  %1038 = fadd fast float %1035, %1028
  %1039 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %1040 = extractvalue %dx.types.CBufRet.f32 %1039, 0
  %1041 = extractvalue %dx.types.CBufRet.f32 %1039, 1
  %1042 = extractvalue %dx.types.CBufRet.f32 %1039, 2
  %1043 = fadd fast float %1036, %1040
  %1044 = fadd fast float %1037, %1041
  %1045 = fadd fast float %1038, %1042
  %1046 = fmul fast float %1043, %1021
  %1047 = fmul fast float %1044, %1021
  %1048 = fmul fast float %1045, %1021
  %1049 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %1050 = extractvalue %dx.types.CBufRet.f32 %1049, 0
  %1051 = extractvalue %dx.types.CBufRet.f32 %1049, 1
  %1052 = extractvalue %dx.types.CBufRet.f32 %1049, 2
  %1053 = extractvalue %dx.types.CBufRet.f32 %1049, 3
  %1054 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %1055 = extractvalue %dx.types.CBufRet.f32 %1054, 0
  %1056 = extractvalue %dx.types.CBufRet.f32 %1054, 1
  %1057 = extractvalue %dx.types.CBufRet.f32 %1054, 2
  %1058 = extractvalue %dx.types.CBufRet.f32 %1054, 3
  %1059 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %1060 = extractvalue %dx.types.CBufRet.f32 %1059, 0
  %1061 = extractvalue %dx.types.CBufRet.f32 %1059, 1
  %1062 = extractvalue %dx.types.CBufRet.f32 %1059, 2
  %1063 = extractvalue %dx.types.CBufRet.f32 %1059, 3
  %1064 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %1065 = extractvalue %dx.types.CBufRet.f32 %1064, 0
  %1066 = extractvalue %dx.types.CBufRet.f32 %1064, 1
  %1067 = extractvalue %dx.types.CBufRet.f32 %1064, 2
  %1068 = extractvalue %dx.types.CBufRet.f32 %1064, 3
  %1069 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %1070 = extractvalue %dx.types.CBufRet.f32 %1069, 3
  %1071 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %1072 = extractvalue %dx.types.CBufRet.f32 %1071, 3
  %1073 = extractvalue %dx.types.CBufRet.f32 %1071, 0
  %1074 = extractvalue %dx.types.CBufRet.f32 %1071, 1
  %1075 = extractvalue %dx.types.CBufRet.f32 %1071, 2
  %1076 = fcmp fast olt float %1075, -5.000000e-01
  %1077 = call float @dx.op.dot3.f32(i32 55, float %1046, float %1047, float %1048, float %1046, float %1047, float %1048)  ; Dot3(ax,ay,az,bx,by,bz)
  %1078 = call float @dx.op.unary.f32(i32 25, float %1077)  ; Rsqrt(value)
  %1079 = fmul fast float %1078, %1077
  %1080 = fmul fast float %1078, %1046
  %1081 = fmul fast float %1078, %1047
  %1082 = fmul fast float %1078, %1048
  %1083 = fadd fast float %1079, %1053
  %1084 = call float @dx.op.dot3.f32(i32 55, float %1080, float %1081, float %1082, float %1050, float %1051, float %1052)  ; Dot3(ax,ay,az,bx,by,bz)
  %1085 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %15, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1086 = extractvalue %dx.types.CBufRet.i32 %1085, 1
  %1087 = and i32 %1086, 1
  %1088 = icmp ne i32 %1087, 0
  %1089 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %1090 = extractvalue %dx.types.CBufRet.f32 %1089, 2
  %1091 = fcmp fast ogt float %1090, 0.000000e+00
  %1092 = and i1 %1088, %1091
  br i1 %1092, label %1093, label %1499, !dx.controlflow.hints !49

; <label>:1093                                    ; preds = %1001
  %1094 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %1095 = extractvalue %dx.types.CBufRet.f32 %1094, 3
  %1096 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1097 = extractvalue %dx.types.CBufRet.f32 %1096, 2
  %1098 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1099 = extractvalue %dx.types.CBufRet.f32 %1098, 2
  %1100 = fsub fast float %1097, %1099
  %1101 = and i32 %1086, 2
  %1102 = extractvalue %dx.types.CBufRet.i32 %1085, 0
  %1103 = call i32 @dx.op.binary.i32(i32 40, i32 %1102, i32 3)  ; UMin(a,b)
  %1104 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %1105 = extractvalue %dx.types.CBufRet.f32 %1104, 0
  %1106 = extractvalue %dx.types.CBufRet.f32 %1104, 1
  %1107 = extractvalue %dx.types.CBufRet.f32 %1098, 0
  %1108 = extractvalue %dx.types.CBufRet.f32 %1098, 1
  %1109 = fsub fast float %1105, %1107
  %1110 = fsub fast float %1106, %1108
  %1111 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %1112 = extractvalue %dx.types.CBufRet.f32 %1111, 0
  %1113 = fcmp fast ogt float %1112, 0.000000e+00
  %1114 = fsub fast float -0.000000e+00, %1109
  %1115 = fsub fast float -0.000000e+00, %1110
  %1116 = call float @dx.op.dot2.f32(i32 54, float %1080, float %1081, float %1080, float %1081)  ; Dot2(ax,ay,bx,by)
  %1117 = call float @dx.op.dot2.f32(i32 54, float %1080, float %1081, float %1114, float %1115)  ; Dot2(ax,ay,bx,by)
  %1118 = fmul fast float %1117, 2.000000e+00
  %1119 = call float @dx.op.dot2.f32(i32 54, float %1114, float %1115, float %1114, float %1115)  ; Dot2(ax,ay,bx,by)
  %1120 = fmul fast float %1112, %1112
  %1121 = fsub fast float %1119, %1120
  %1122 = fmul fast float %1118, %1118
  %1123 = fmul fast float %1116, 4.000000e+00
  %1124 = fmul fast float %1123, %1121
  %1125 = fsub fast float %1122, %1124
  %1126 = fcmp fast ogt float %1125, 0.000000e+00
  br i1 %1126, label %1127, label %1142, !dx.controlflow.hints !50

; <label>:1127                                    ; preds = %1093
  %1128 = fcmp fast ogt float %1118, 0.000000e+00
  %1129 = call float @dx.op.unary.f32(i32 24, float %1125)  ; Sqrt(value)
  %1130 = fsub fast float -0.000000e+00, %1129
  %1131 = select i1 %1128, float %1129, float %1130
  %1132 = fadd fast float %1131, %1118
  %1133 = fmul float %1132, -5.000000e-01
  %1134 = fdiv fast float %1133, %1116
  %1135 = call float @dx.op.binary.f32(i32 35, float %1134, float 0.000000e+00)  ; FMax(a,b)
  %1136 = call float @dx.op.binary.f32(i32 36, float %1079, float %1135)  ; FMin(a,b)
  %1137 = fdiv fast float %1121, %1133
  %1138 = call float @dx.op.binary.f32(i32 35, float %1137, float 0.000000e+00)  ; FMax(a,b)
  %1139 = call float @dx.op.binary.f32(i32 36, float %1079, float %1138)  ; FMin(a,b)
  %1140 = call float @dx.op.binary.f32(i32 36, float %1136, float %1139)  ; FMin(a,b)
  %1141 = call float @dx.op.binary.f32(i32 35, float %1136, float %1139)  ; FMax(a,b)
  br label %1142

; <label>:1142                                    ; preds = %1127, %1093
  %1143 = phi float [ %1141, %1127 ], [ -1.000000e+00, %1093 ]
  %1144 = phi float [ %1140, %1127 ], [ -1.000000e+00, %1093 ]
  %1145 = phi i1 [ true, %1127 ], [ false, %1093 ]
  %1146 = and i1 %1113, %1145
  br i1 %1146, label %1147, label %1149, !dx.controlflow.hints !51

; <label>:1147                                    ; preds = %1142
  %1148 = fcmp fast oeq float %1144, %1143
  br i1 %1148, label %1452, label %1150, !dx.controlflow.hints !52

; <label>:1149                                    ; preds = %1142
  br i1 %1113, label %1452, label %1150, !dx.controlflow.hints !53

; <label>:1150                                    ; preds = %1149, %1147
  %1151 = phi float [ %1079, %1149 ], [ %1143, %1147 ]
  %1152 = phi float [ 0.000000e+00, %1149 ], [ %1144, %1147 ]
  %1153 = icmp ne i32 %1101, 0
  %1154 = fmul fast float %1151, %1082
  %1155 = fadd fast float %1154, %1095
  %1156 = fmul fast float %1155, %1151
  %1157 = select i1 %1153, float 0.000000e+00, float %1156
  %1158 = fcmp fast oeq float %1082, 0.000000e+00
  %1159 = fdiv fast float %1100, %1082
  %1160 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1159)  ; FMax(a,b)
  %1161 = select i1 %1158, float %1151, float %1160
  %1162 = call float @dx.op.binary.f32(i32 36, float %1151, float %1161)  ; FMin(a,b)
  %1163 = fcmp fast ogt float %1082, 0.000000e+00
  %1164 = fcmp fast olt float %1100, 0.000000e+00
  br i1 %1163, label %1165, label %1222, !dx.controlflow.hints !54

; <label>:1165                                    ; preds = %1150
  %1166 = icmp eq i32 %1101, 0
  br i1 %1164, label %1167, label %1211, !dx.controlflow.hints !55

; <label>:1167                                    ; preds = %1165
  %1168 = select i1 %1166, float %1151, float 0.000000e+00
  %1169 = fsub fast float -0.000000e+00, %1168
  %1170 = call float @dx.op.unary.f32(i32 6, float %1169)  ; FAbs(value)
  %1171 = fmul fast float %1168, %1082
  %1172 = fadd fast float %1171, %1095
  %1173 = fmul fast float %1170, %1172
  %1174 = fsub fast float %1157, %1173
  %1175 = fsub fast float %1151, %1170
  %1176 = select i1 %1166, float %1175, float 0.000000e+00
  %1177 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %1178 = extractvalue %dx.types.CBufRet.f32 %1177, 0
  %1179 = extractvalue %dx.types.CBufRet.f32 %1177, 1
  %1180 = extractvalue %dx.types.CBufRet.f32 %1177, 2
  %1181 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %1182 = extractvalue %dx.types.CBufRet.f32 %1181, 0
  %1183 = extractvalue %dx.types.CBufRet.f32 %1181, 1
  %1184 = extractvalue %dx.types.CBufRet.f32 %1181, 2
  %1185 = extractvalue %dx.types.CBufRet.f32 %1181, 3
  %1186 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %1187 = extractvalue %dx.types.CBufRet.f32 %1186, 3
  %1188 = call float @dx.op.binary.f32(i32 36, float %1174, float %1187)  ; FMin(a,b)
  %1189 = fmul fast float %1185, %1176
  %1190 = call float @dx.op.unary.f32(i32 7, float %1189)  ; Saturate(value)
  %1191 = fsub fast float %1182, %1178
  %1192 = fsub fast float %1183, %1179
  %1193 = fsub fast float %1184, %1180
  %1194 = fmul fast float %1190, %1191
  %1195 = fmul fast float %1190, %1192
  %1196 = fmul fast float %1190, %1193
  %1197 = fadd fast float %1194, %1178
  %1198 = fadd fast float %1195, %1179
  %1199 = fadd fast float %1196, %1180
  %1200 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %1201 = extractvalue %dx.types.CBufRet.f32 %1200, 0
  %1202 = extractvalue %dx.types.CBufRet.f32 %1200, 1
  %1203 = fadd fast float %1202, %1201
  %1204 = call float @dx.op.unary.f32(i32 7, float %1203)  ; Saturate(value)
  %1205 = extractvalue %dx.types.CBufRet.f32 %1200, 2
  %1206 = extractvalue %dx.types.CBufRet.f32 %1200, 3
  %1207 = fadd fast float %1206, %1205
  %1208 = call float @dx.op.unary.f32(i32 7, float %1207)  ; Saturate(value)
  %1209 = fmul fast float %1204, %1188
  %1210 = fmul fast float %1209, %1208
  br label %1452

; <label>:1211                                    ; preds = %1165
  br i1 %1166, label %1212, label %1233, !dx.controlflow.hints !56

; <label>:1212                                    ; preds = %1211
  %1213 = call float @dx.op.binary.f32(i32 36, float %1162, float %1152)  ; FMin(a,b)
  %1214 = fsub fast float %1162, %1213
  %1215 = fsub fast float %1214, %1151
  %1216 = call float @dx.op.unary.f32(i32 6, float %1215)  ; FAbs(value)
  %1217 = fadd fast float %1214, %1151
  %1218 = fmul fast float %1217, %1082
  %1219 = fadd fast float %1218, %1095
  %1220 = fmul fast float %1219, %1216
  %1221 = fsub fast float %1157, %1220
  br label %1233

; <label>:1222                                    ; preds = %1150
  br i1 %1164, label %1223, label %1233, !dx.controlflow.hints !57

; <label>:1223                                    ; preds = %1222
  %1224 = call float @dx.op.binary.f32(i32 35, float %1152, float %1162)  ; FMax(a,b)
  %1225 = icmp eq i32 %1101, 0
  %1226 = select i1 %1225, float %1162, float 0.000000e+00
  %1227 = fsub fast float -0.000000e+00, %1226
  %1228 = call float @dx.op.unary.f32(i32 6, float %1227)  ; FAbs(value)
  %1229 = fmul fast float %1226, %1082
  %1230 = fadd fast float %1229, %1095
  %1231 = fmul fast float %1228, %1230
  %1232 = fsub fast float %1157, %1231
  br label %1233

; <label>:1233                                    ; preds = %1223, %1222, %1212, %1211
  %1234 = phi float [ %1152, %1211 ], [ %1152, %1212 ], [ %1224, %1223 ], [ %1152, %1222 ]
  %1235 = phi float [ 0.000000e+00, %1211 ], [ %1216, %1212 ], [ %1228, %1223 ], [ 0.000000e+00, %1222 ]
  %1236 = phi float [ %1157, %1211 ], [ %1221, %1212 ], [ %1232, %1223 ], [ %1157, %1222 ]
  %1237 = phi float [ %1162, %1211 ], [ %1162, %1212 ], [ %1151, %1223 ], [ %1151, %1222 ]
  %1238 = getelementptr inbounds [3 x float], [3 x float]* %19, i32 0, i32 0
  store float -1.000000e+00, float* %1238, align 4, !tbaa !58, !noalias !62
  %1239 = getelementptr inbounds [3 x float], [3 x float]* %19, i32 0, i32 1
  store float -1.000000e+00, float* %1239, align 4, !tbaa !58, !noalias !62
  %1240 = getelementptr inbounds [3 x float], [3 x float]* %19, i32 0, i32 2
  store float -1.000000e+00, float* %1240, align 4, !tbaa !58, !noalias !62
  %1241 = getelementptr inbounds [3 x float], [3 x float]* %20, i32 0, i32 0
  store float -1.000000e+00, float* %1241, align 4, !tbaa !58, !noalias !62
  %1242 = getelementptr inbounds [3 x float], [3 x float]* %20, i32 0, i32 1
  store float -1.000000e+00, float* %1242, align 4, !tbaa !58, !noalias !62
  %1243 = getelementptr inbounds [3 x float], [3 x float]* %20, i32 0, i32 2
  store float -1.000000e+00, float* %1243, align 4, !tbaa !58, !noalias !62
  %1244 = icmp sgt i32 %1103, 0
  br i1 %1244, label %1245, label %1306

; <label>:1245                                    ; preds = %1233
  br label %1246

; <label>:1246                                    ; preds = %1295, %1245
  %1247 = phi i32 [ %1296, %1295 ], [ 0, %1245 ]
  %1248 = phi i32 [ %1297, %1295 ], [ 0, %1245 ]
  %1249 = add nuw i32 %1248, 171
  %1250 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 %1249)  ; CBufferLoadLegacy(handle,regIndex)
  %1251 = extractvalue %dx.types.CBufRet.f32 %1250, 0
  %1252 = extractvalue %dx.types.CBufRet.f32 %1250, 1
  %1253 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1254 = extractvalue %dx.types.CBufRet.f32 %1253, 0
  %1255 = extractvalue %dx.types.CBufRet.f32 %1253, 1
  %1256 = fsub fast float %1251, %1254
  %1257 = fsub fast float %1252, %1255
  %1258 = extractvalue %dx.types.CBufRet.f32 %1250, 2
  %1259 = fsub fast float -0.000000e+00, %1256
  %1260 = fsub fast float -0.000000e+00, %1257
  %1261 = call float @dx.op.dot2.f32(i32 54, float %1080, float %1081, float %1259, float %1260)  ; Dot2(ax,ay,bx,by)
  %1262 = fmul fast float %1261, 2.000000e+00
  %1263 = call float @dx.op.dot2.f32(i32 54, float %1259, float %1260, float %1259, float %1260)  ; Dot2(ax,ay,bx,by)
  %1264 = fmul fast float %1258, %1258
  %1265 = fsub fast float %1263, %1264
  %1266 = fmul fast float %1262, %1262
  %1267 = fmul fast float %1123, %1265
  %1268 = fsub fast float %1266, %1267
  %1269 = fcmp fast ogt float %1268, 0.000000e+00
  br i1 %1269, label %1270, label %1285, !dx.controlflow.hints !50

; <label>:1270                                    ; preds = %1246
  %1271 = fcmp fast ogt float %1262, 0.000000e+00
  %1272 = call float @dx.op.unary.f32(i32 24, float %1268)  ; Sqrt(value)
  %1273 = fsub fast float -0.000000e+00, %1272
  %1274 = select i1 %1271, float %1272, float %1273
  %1275 = fadd fast float %1274, %1262
  %1276 = fmul float %1275, -5.000000e-01
  %1277 = fdiv fast float %1276, %1116
  %1278 = call float @dx.op.binary.f32(i32 35, float %1277, float 0.000000e+00)  ; FMax(a,b)
  %1279 = call float @dx.op.binary.f32(i32 36, float %1151, float %1278)  ; FMin(a,b)
  %1280 = fdiv fast float %1265, %1276
  %1281 = call float @dx.op.binary.f32(i32 35, float %1280, float 0.000000e+00)  ; FMax(a,b)
  %1282 = call float @dx.op.binary.f32(i32 36, float %1151, float %1281)  ; FMin(a,b)
  %1283 = call float @dx.op.binary.f32(i32 36, float %1279, float %1282)  ; FMin(a,b)
  %1284 = call float @dx.op.binary.f32(i32 35, float %1279, float %1282)  ; FMax(a,b)
  br label %1285

; <label>:1285                                    ; preds = %1270, %1246
  %1286 = phi float [ %1284, %1270 ], [ -1.000000e+00, %1246 ]
  %1287 = phi float [ %1283, %1270 ], [ -1.000000e+00, %1246 ]
  %1288 = phi i1 [ true, %1270 ], [ false, %1246 ]
  br i1 %1288, label %1289, label %1295, !dx.controlflow.hints !73

; <label>:1289                                    ; preds = %1285
  %1290 = call float @dx.op.binary.f32(i32 35, float %1234, float %1287)  ; FMax(a,b)
  %1291 = getelementptr inbounds [3 x float], [3 x float]* %19, i32 0, i32 %1248
  store float %1290, float* %1291, align 4, !tbaa !58, !noalias !62
  %1292 = call float @dx.op.binary.f32(i32 35, float %1234, float %1286)  ; FMax(a,b)
  %1293 = getelementptr inbounds [3 x float], [3 x float]* %20, i32 0, i32 %1248
  store float %1292, float* %1293, align 4, !tbaa !58, !noalias !62
  %1294 = add nsw i32 %1247, 1
  br label %1295

; <label>:1295                                    ; preds = %1289, %1285
  %1296 = phi i32 [ %1294, %1289 ], [ %1247, %1285 ]
  %1297 = add nuw nsw i32 %1248, 1
  %1298 = icmp eq i32 %1297, %1103
  br i1 %1298, label %1299, label %1246

; <label>:1299                                    ; preds = %1295
  %1300 = load float, float* %1240, align 4, !tbaa !58, !alias.scope !74, !noalias !77
  %1301 = load float, float* %1239, align 4, !tbaa !58, !alias.scope !80, !noalias !81
  %1302 = load float, float* %1238, align 4, !tbaa !58, !alias.scope !82, !noalias !83
  %1303 = load float, float* %1243, align 4, !tbaa !58, !alias.scope !84, !noalias !87
  %1304 = load float, float* %1242, align 4, !tbaa !58, !alias.scope !90, !noalias !91
  %1305 = load float, float* %1241, align 4, !tbaa !58, !alias.scope !92, !noalias !93
  br label %1306

; <label>:1306                                    ; preds = %1299, %1233
  %1307 = phi float [ -1.000000e+00, %1233 ], [ %1305, %1299 ]
  %1308 = phi float [ -1.000000e+00, %1233 ], [ %1304, %1299 ]
  %1309 = phi float [ -1.000000e+00, %1233 ], [ %1303, %1299 ]
  %1310 = phi float [ -1.000000e+00, %1233 ], [ %1302, %1299 ]
  %1311 = phi float [ -1.000000e+00, %1233 ], [ %1301, %1299 ]
  %1312 = phi float [ -1.000000e+00, %1233 ], [ %1300, %1299 ]
  %1313 = phi i32 [ 0, %1233 ], [ %1296, %1299 ]
  %1314 = call float @dx.op.binary.f32(i32 36, float %1311, float %1312)  ; FMin(a,b)
  %1315 = call float @dx.op.binary.f32(i32 36, float %1310, float %1314)  ; FMin(a,b)
  %1316 = call float @dx.op.binary.f32(i32 35, float %1310, float %1311)  ; FMax(a,b)
  %1317 = call float @dx.op.binary.f32(i32 36, float %1316, float %1312)  ; FMin(a,b)
  %1318 = call float @dx.op.binary.f32(i32 36, float %1310, float %1311)  ; FMin(a,b)
  %1319 = call float @dx.op.binary.f32(i32 35, float %1318, float %1317)  ; FMax(a,b)
  %1320 = call float @dx.op.binary.f32(i32 35, float %1311, float %1312)  ; FMax(a,b)
  %1321 = call float @dx.op.binary.f32(i32 35, float %1310, float %1320)  ; FMax(a,b)
  store float %1315, float* %1238, align 4, !tbaa !58, !alias.scope !82, !noalias !83
  store float %1319, float* %1239, align 4, !tbaa !58, !alias.scope !80, !noalias !81
  store float %1321, float* %1240, align 4, !tbaa !58, !alias.scope !74, !noalias !77
  %1322 = call float @dx.op.binary.f32(i32 36, float %1308, float %1309)  ; FMin(a,b)
  %1323 = call float @dx.op.binary.f32(i32 36, float %1307, float %1322)  ; FMin(a,b)
  %1324 = call float @dx.op.binary.f32(i32 35, float %1307, float %1308)  ; FMax(a,b)
  %1325 = call float @dx.op.binary.f32(i32 36, float %1324, float %1309)  ; FMin(a,b)
  %1326 = call float @dx.op.binary.f32(i32 36, float %1307, float %1308)  ; FMin(a,b)
  %1327 = call float @dx.op.binary.f32(i32 35, float %1326, float %1325)  ; FMax(a,b)
  %1328 = call float @dx.op.binary.f32(i32 35, float %1308, float %1309)  ; FMax(a,b)
  %1329 = call float @dx.op.binary.f32(i32 35, float %1307, float %1328)  ; FMax(a,b)
  store float %1323, float* %1241, align 4, !tbaa !58, !alias.scope !92, !noalias !93
  store float %1327, float* %1242, align 4, !tbaa !58, !alias.scope !90, !noalias !91
  store float %1329, float* %1243, align 4, !tbaa !58, !alias.scope !84, !noalias !87
  %1330 = sub nsw i32 3, %1313
  %1331 = icmp sgt i32 %1330, 2
  br i1 %1331, label %1332, label %1370, !dx.controlflow.hints !94

; <label>:1332                                    ; preds = %1306
  %1333 = icmp eq i32 %1101, 0
  %1334 = fsub fast float %1151, %1235
  %1335 = select i1 %1333, float %1334, float %1235
  %1336 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %1337 = extractvalue %dx.types.CBufRet.f32 %1336, 0
  %1338 = extractvalue %dx.types.CBufRet.f32 %1336, 1
  %1339 = extractvalue %dx.types.CBufRet.f32 %1336, 2
  %1340 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %1341 = extractvalue %dx.types.CBufRet.f32 %1340, 0
  %1342 = extractvalue %dx.types.CBufRet.f32 %1340, 1
  %1343 = extractvalue %dx.types.CBufRet.f32 %1340, 2
  %1344 = extractvalue %dx.types.CBufRet.f32 %1340, 3
  %1345 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %1346 = extractvalue %dx.types.CBufRet.f32 %1345, 3
  %1347 = call float @dx.op.binary.f32(i32 36, float %1236, float %1346)  ; FMin(a,b)
  %1348 = fmul fast float %1344, %1335
  %1349 = call float @dx.op.unary.f32(i32 7, float %1348)  ; Saturate(value)
  %1350 = fsub fast float %1341, %1337
  %1351 = fsub fast float %1342, %1338
  %1352 = fsub fast float %1343, %1339
  %1353 = fmul fast float %1349, %1350
  %1354 = fmul fast float %1349, %1351
  %1355 = fmul fast float %1349, %1352
  %1356 = fadd fast float %1353, %1337
  %1357 = fadd fast float %1354, %1338
  %1358 = fadd fast float %1355, %1339
  %1359 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %1360 = extractvalue %dx.types.CBufRet.f32 %1359, 0
  %1361 = extractvalue %dx.types.CBufRet.f32 %1359, 1
  %1362 = fadd fast float %1361, %1360
  %1363 = call float @dx.op.unary.f32(i32 7, float %1362)  ; Saturate(value)
  %1364 = extractvalue %dx.types.CBufRet.f32 %1359, 2
  %1365 = extractvalue %dx.types.CBufRet.f32 %1359, 3
  %1366 = fadd fast float %1365, %1364
  %1367 = call float @dx.op.unary.f32(i32 7, float %1366)  ; Saturate(value)
  %1368 = fmul fast float %1363, %1347
  %1369 = fmul fast float %1368, %1367
  br label %1452

; <label>:1370                                    ; preds = %1306
  %1371 = getelementptr inbounds [3 x float], [3 x float]* %19, i32 0, i32 %1330
  %1372 = load float, float* %1371, align 4, !tbaa !58, !noalias !62
  %1373 = fcmp fast olt float %1372, %1237
  %1374 = icmp sgt i32 %1313, 0
  %1375 = and i1 %1374, %1373
  br i1 %1375, label %1376, label %1413

; <label>:1376                                    ; preds = %1370
  br label %1377

; <label>:1377                                    ; preds = %1406, %1376
  %1378 = phi float [ %1407, %1406 ], [ %1235, %1376 ]
  %1379 = phi float [ %1408, %1406 ], [ %1236, %1376 ]
  %1380 = phi float [ %1388, %1406 ], [ %1372, %1376 ]
  %1381 = phi i32 [ %1385, %1406 ], [ %1330, %1376 ]
  %1382 = getelementptr inbounds [3 x float], [3 x float]* %20, i32 0, i32 %1381
  %1383 = load float, float* %1382, align 4, !tbaa !58, !noalias !62
  %1384 = icmp slt i32 %1381, 2
  %1385 = add nsw i32 %1381, 1
  %1386 = getelementptr inbounds [3 x float], [3 x float]* %19, i32 0, i32 %1385
  %1387 = load float, float* %1386, align 4, !tbaa !58, !noalias !62
  %1388 = select i1 %1384, float %1387, float %1151
  %1389 = call float @dx.op.binary.f32(i32 36, float %1388, float %1383)  ; FMin(a,b)
  %1390 = call float @dx.op.binary.f32(i32 36, float %1237, float %1389)  ; FMin(a,b)
  %1391 = icmp eq i32 %1101, 0
  %1392 = fadd fast float %1390, %1380
  %1393 = fmul fast float %1392, %1082
  %1394 = fadd fast float %1393, %1095
  br i1 %1391, label %1400, label %1395, !dx.controlflow.hints !95

; <label>:1395                                    ; preds = %1377
  %1396 = fsub fast float %1390, %1380
  %1397 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1396)  ; FMax(a,b)
  %1398 = fmul fast float %1397, %1394
  %1399 = fadd fast float %1398, %1379
  br label %1406

; <label>:1400                                    ; preds = %1377
  %1401 = fsub fast float %1380, %1390
  %1402 = call float @dx.op.unary.f32(i32 6, float %1401)  ; FAbs(value)
  %1403 = fadd fast float %1402, %1378
  %1404 = fmul fast float %1402, %1394
  %1405 = fsub fast float %1379, %1404
  br label %1406

; <label>:1406                                    ; preds = %1400, %1395
  %1407 = phi float [ %1397, %1395 ], [ %1403, %1400 ]
  %1408 = phi float [ %1399, %1395 ], [ %1405, %1400 ]
  %1409 = fcmp fast olt float %1388, %1237
  %1410 = icmp slt i32 %1385, 3
  %1411 = and i1 %1410, %1409
  br i1 %1411, label %1377, label %1412

; <label>:1412                                    ; preds = %1406
  br label %1413

; <label>:1413                                    ; preds = %1412, %1370
  %1414 = phi float [ %1235, %1370 ], [ %1407, %1412 ]
  %1415 = phi float [ %1236, %1370 ], [ %1408, %1412 ]
  %1416 = fsub fast float %1151, %1414
  %1417 = select i1 %1153, float %1414, float %1416
  %1418 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %1419 = extractvalue %dx.types.CBufRet.f32 %1418, 0
  %1420 = extractvalue %dx.types.CBufRet.f32 %1418, 1
  %1421 = extractvalue %dx.types.CBufRet.f32 %1418, 2
  %1422 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %1423 = extractvalue %dx.types.CBufRet.f32 %1422, 0
  %1424 = extractvalue %dx.types.CBufRet.f32 %1422, 1
  %1425 = extractvalue %dx.types.CBufRet.f32 %1422, 2
  %1426 = extractvalue %dx.types.CBufRet.f32 %1422, 3
  %1427 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %1428 = extractvalue %dx.types.CBufRet.f32 %1427, 3
  %1429 = call float @dx.op.binary.f32(i32 36, float %1415, float %1428)  ; FMin(a,b)
  %1430 = fmul fast float %1426, %1417
  %1431 = call float @dx.op.unary.f32(i32 7, float %1430)  ; Saturate(value)
  %1432 = fsub fast float %1423, %1419
  %1433 = fsub fast float %1424, %1420
  %1434 = fsub fast float %1425, %1421
  %1435 = fmul fast float %1431, %1432
  %1436 = fmul fast float %1431, %1433
  %1437 = fmul fast float %1431, %1434
  %1438 = fadd fast float %1435, %1419
  %1439 = fadd fast float %1436, %1420
  %1440 = fadd fast float %1437, %1421
  %1441 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %1442 = extractvalue %dx.types.CBufRet.f32 %1441, 0
  %1443 = extractvalue %dx.types.CBufRet.f32 %1441, 1
  %1444 = fadd fast float %1443, %1442
  %1445 = call float @dx.op.unary.f32(i32 7, float %1444)  ; Saturate(value)
  %1446 = extractvalue %dx.types.CBufRet.f32 %1441, 2
  %1447 = extractvalue %dx.types.CBufRet.f32 %1441, 3
  %1448 = fadd fast float %1447, %1446
  %1449 = call float @dx.op.unary.f32(i32 7, float %1448)  ; Saturate(value)
  %1450 = fmul fast float %1445, %1429
  %1451 = fmul fast float %1450, %1449
  br label %1452

; <label>:1452                                    ; preds = %1413, %1332, %1167, %1149, %1147
  %1453 = phi float [ %1176, %1167 ], [ %1335, %1332 ], [ %1417, %1413 ], [ 0.000000e+00, %1147 ], [ 0.000000e+00, %1149 ]
  %1454 = phi float [ %1210, %1167 ], [ %1369, %1332 ], [ %1451, %1413 ], [ 0.000000e+00, %1147 ], [ 0.000000e+00, %1149 ]
  %1455 = phi float [ %1197, %1167 ], [ %1356, %1332 ], [ %1438, %1413 ], [ 0.000000e+00, %1147 ], [ 0.000000e+00, %1149 ]
  %1456 = phi float [ %1198, %1167 ], [ %1357, %1332 ], [ %1439, %1413 ], [ 0.000000e+00, %1147 ], [ 0.000000e+00, %1149 ]
  %1457 = phi float [ %1199, %1167 ], [ %1358, %1332 ], [ %1440, %1413 ], [ 0.000000e+00, %1147 ], [ 0.000000e+00, %1149 ]
  %1458 = fmul fast float %1090, %1454
  %1459 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1460 = extractvalue %dx.types.CBufRet.f32 %1459, 2
  %1461 = fsub fast float %1097, %1460
  %1462 = fcmp fast olt float %1458, -2.000000e+01
  %1463 = call float @dx.op.unary.f32(i32 21, float %1458)  ; Exp(value)
  %1464 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %1465 = extractvalue %dx.types.CBufRet.f32 %1464, 2
  %1466 = extractvalue %dx.types.CBufRet.f32 %1464, 3
  %1467 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %1468 = extractvalue %dx.types.CBufRet.f32 %1467, 2
  %1469 = fmul fast float %1466, %1461
  %1470 = call float @dx.op.unary.f32(i32 7, float %1469)  ; Saturate(value)
  %1471 = fsub fast float 1.000000e+00, %1470
  %1472 = fmul fast float %1082, 5.000000e-01
  %1473 = fadd fast float %1472, 5.000000e-01
  %1474 = call float @dx.op.unary.f32(i32 7, float %1473)  ; Saturate(value)
  %1475 = fsub fast float 1.000000e+00, %1474
  %1476 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %1471)  ; FMax(a,b)
  %1477 = fdiv fast float %1475, %1476
  %1478 = fsub fast float %1461, %1048
  %1479 = call float @dx.op.unary.f32(i32 6, float %1478)  ; FAbs(value)
  %1480 = fmul fast float %1479, %1465
  %1481 = call float @dx.op.unary.f32(i32 7, float %1477)  ; Saturate(value)
  %1482 = fsub fast float 1.000000e+00, %1480
  %1483 = fmul fast float %1482, %1481
  %1484 = fadd fast float %1483, %1480
  %1485 = fmul fast float %1468, %1461
  %1486 = call float @dx.op.unary.f32(i32 7, float %1485)  ; Saturate(value)
  %1487 = fsub fast float 1.000000e+00, %1484
  %1488 = fmul fast float %1487, %1486
  %1489 = fadd fast float %1488, %1484
  %1490 = call float @dx.op.unary.f32(i32 7, float %1489)  ; Saturate(value)
  %1491 = fadd fast float %1463, -1.000000e+00
  %1492 = select i1 %1462, float -1.000000e+00, float %1491
  %1493 = fmul fast float %1490, %1492
  %1494 = fadd fast float %1493, 1.000000e+00
  %1495 = fsub fast float -0.000000e+00, %1493
  %1496 = fmul fast float %1455, %1495
  %1497 = fmul fast float %1456, %1495
  %1498 = fmul fast float %1457, %1495
  br label %1499

; <label>:1499                                    ; preds = %1452, %1001
  %1500 = phi float [ %1453, %1452 ], [ 0.000000e+00, %1001 ]
  %1501 = phi float [ %1494, %1452 ], [ 1.000000e+00, %1001 ]
  %1502 = phi float [ %1496, %1452 ], [ 0.000000e+00, %1001 ]
  %1503 = phi float [ %1497, %1452 ], [ 0.000000e+00, %1001 ]
  %1504 = phi float [ %1498, %1452 ], [ 0.000000e+00, %1001 ]
  %1505 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %1506 = extractvalue %dx.types.CBufRet.f32 %1505, 1
  %1507 = fsub fast float 1.000000e+00, %1501
  %1508 = fmul fast float %1507, %1083
  %1509 = fmul fast float %1508, %1506
  %1510 = fsub fast float %1083, %1509
  br i1 %1076, label %1511, label %1540, !dx.controlflow.hints !96

; <label>:1511                                    ; preds = %1499
  %1512 = fmul fast float %1084, %1073
  %1513 = fadd fast float %1512, %1074
  %1514 = call float @dx.op.unary.f32(i32 7, float %1513)  ; Saturate(value)
  %1515 = fmul fast float %1055, %1510
  %1516 = fsub fast float -0.000000e+00, %1515
  %1517 = fmul fast float %1056, %1510
  %1518 = fsub fast float -0.000000e+00, %1517
  %1519 = call float @dx.op.unary.f32(i32 21, float %1516)  ; Exp(value)
  %1520 = call float @dx.op.unary.f32(i32 21, float %1518)  ; Exp(value)
  %1521 = call float @dx.op.binary.f32(i32 35, float %1063, float %1519)  ; FMax(a,b)
  %1522 = call float @dx.op.binary.f32(i32 35, float %1063, float %1520)  ; FMax(a,b)
  %1523 = fsub fast float %1522, %1521
  %1524 = fmul fast float %1523, %1514
  %1525 = fadd fast float %1524, %1521
  %1526 = call float @dx.op.unary.f32(i32 7, float %1525)  ; Saturate(value)
  %1527 = fsub fast float %1060, %1065
  %1528 = fsub fast float %1061, %1066
  %1529 = fsub fast float %1062, %1067
  %1530 = fmul fast float %1514, %1527
  %1531 = fmul fast float %1514, %1528
  %1532 = fmul fast float %1514, %1529
  %1533 = fadd fast float %1530, %1065
  %1534 = fadd fast float %1531, %1066
  %1535 = fadd fast float %1532, %1067
  %1536 = fsub fast float 1.000000e+00, %1526
  %1537 = fmul fast float %1536, %1533
  %1538 = fmul fast float %1536, %1534
  %1539 = fmul fast float %1536, %1535
  br label %1599

; <label>:1540                                    ; preds = %1499
  %1541 = fmul fast float %1510, %1072
  %1542 = call float @dx.op.unary.f32(i32 7, float %1541)  ; Saturate(value)
  %1543 = fsub fast float 2.000000e+00, %1542
  %1544 = fmul fast float %1542, 9.921875e-01
  %1545 = fmul fast float %1544, %1543
  %1546 = fadd fast float %1545, 3.906250e-03
  %1547 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %12, float %1546, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1548 = extractvalue %dx.types.ResRet.f32 %1547, 0
  %1549 = fsub fast float %1542, %1548
  %1550 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1549)  ; FMax(a,b)
  %1551 = fmul fast float %1058, %1048
  %1552 = call float @dx.op.unary.f32(i32 6, float %1551)  ; FAbs(value)
  %1553 = fcmp fast ogt float %1552, 0x3EB0C6F7A0000000
  br i1 %1553, label %1554, label %1560, !dx.controlflow.hints !97

; <label>:1554                                    ; preds = %1540
  %1555 = fmul fast float %1551, 0xBFF7154760000000
  %1556 = call float @dx.op.unary.f32(i32 21, float %1555)  ; Exp(value)
  %1557 = fsub fast float 1.000000e+00, %1556
  %1558 = fdiv fast float %1557, %1551
  %1559 = fmul fast float %1558, %1068
  br label %1560

; <label>:1560                                    ; preds = %1554, %1540
  %1561 = phi float [ %1559, %1554 ], [ %1068, %1540 ]
  %1562 = fadd fast float %1561, %1070
  %1563 = fmul fast float %1562, %1550
  %1564 = fmul fast float %1055, %1563
  %1565 = fsub fast float -0.000000e+00, %1564
  %1566 = fmul fast float %1056, %1563
  %1567 = fsub fast float -0.000000e+00, %1566
  %1568 = fmul fast float %1057, %1563
  %1569 = fsub fast float -0.000000e+00, %1568
  %1570 = call float @dx.op.unary.f32(i32 21, float %1565)  ; Exp(value)
  %1571 = call float @dx.op.unary.f32(i32 21, float %1567)  ; Exp(value)
  %1572 = call float @dx.op.unary.f32(i32 21, float %1569)  ; Exp(value)
  %1573 = fmul fast float %1084, %1084
  %1574 = fadd fast float %1573, 1.000000e+00
  %1575 = fmul fast float %1574, 0x3FAE8EC8A0000000
  %1576 = fmul fast float %1575, %1065
  %1577 = fmul fast float %1575, %1066
  %1578 = fmul fast float %1575, %1067
  %1579 = fmul fast float %1084, %1063
  %1580 = fsub fast float 1.000000e+00, %1579
  %1581 = fmul fast float %1063, %1063
  %1582 = fsub fast float 1.000000e+00, %1581
  %1583 = fmul fast float %1582, 0x3FB45F3060000000
  %1584 = fmul fast float %1580, %1580
  %1585 = fdiv fast float 1.000000e+00, %1584
  %1586 = fmul fast float %1583, %1585
  %1587 = fmul fast float %1586, %1060
  %1588 = fmul fast float %1586, %1061
  %1589 = fmul fast float %1586, %1062
  %1590 = fadd fast float %1587, %1576
  %1591 = fadd fast float %1588, %1577
  %1592 = fadd fast float %1589, %1578
  %1593 = fsub fast float 1.000000e+00, %1570
  %1594 = fsub fast float 1.000000e+00, %1571
  %1595 = fsub fast float 1.000000e+00, %1572
  %1596 = fmul fast float %1590, %1593
  %1597 = fmul fast float %1591, %1594
  %1598 = fmul fast float %1592, %1595
  br label %1599

; <label>:1599                                    ; preds = %1560, %1511
  %1600 = phi float [ %1537, %1511 ], [ %1596, %1560 ]
  %1601 = phi float [ %1538, %1511 ], [ %1597, %1560 ]
  %1602 = phi float [ %1539, %1511 ], [ %1598, %1560 ]
  %1603 = phi float [ %1526, %1511 ], [ %1570, %1560 ]
  %1604 = phi float [ %1526, %1511 ], [ %1571, %1560 ]
  %1605 = phi float [ %1526, %1511 ], [ %1572, %1560 ]
  br i1 %1092, label %1606, label %1804, !dx.controlflow.hints !98

; <label>:1606                                    ; preds = %1599
  %1607 = extractvalue %dx.types.CBufRet.f32 %1505, 0
  %1608 = fmul fast float %1607, %1507
  %1609 = fsub fast float %1502, %1600
  %1610 = fsub fast float %1503, %1601
  %1611 = fsub fast float %1504, %1602
  %1612 = fmul fast float %1608, %1609
  %1613 = fmul fast float %1608, %1610
  %1614 = fmul fast float %1608, %1611
  %1615 = fadd fast float %1612, %1600
  %1616 = fadd fast float %1613, %1601
  %1617 = fadd fast float %1614, %1602
  %1618 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %1603)  ; FMax(a,b)
  %1619 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %1604)  ; FMax(a,b)
  %1620 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %1605)  ; FMax(a,b)
  %1621 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %1501)  ; FMax(a,b)
  %1622 = call float @dx.op.binary.f32(i32 35, float %1500, float %1510)  ; FMax(a,b)
  %1623 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %1622)  ; FMax(a,b)
  %1624 = fdiv fast float %1500, %1623
  %1625 = call float @dx.op.unary.f32(i32 7, float %1624)  ; Saturate(value)
  %1626 = fdiv fast float %1510, %1623
  %1627 = call float @dx.op.unary.f32(i32 7, float %1626)  ; Saturate(value)
  %1628 = fcmp fast une float %1621, 1.000000e+00
  br i1 %1628, label %1629, label %1642, !dx.controlflow.hints !99

; <label>:1629                                    ; preds = %1606
  %1630 = call float @dx.op.unary.f32(i32 23, float %1621)  ; Log(value)
  %1631 = fmul fast float %1630, 0x3FE62E4300000000
  %1632 = fmul fast float %1502, %1631
  %1633 = fsub fast float -0.000000e+00, %1632
  %1634 = fmul fast float %1503, %1631
  %1635 = fsub fast float -0.000000e+00, %1634
  %1636 = fmul fast float %1504, %1631
  %1637 = fsub fast float -0.000000e+00, %1636
  %1638 = fsub fast float 1.000000e+00, %1621
  %1639 = fdiv fast float %1633, %1638
  %1640 = fdiv fast float %1635, %1638
  %1641 = fdiv fast float %1637, %1638
  br label %1642

; <label>:1642                                    ; preds = %1629, %1606
  %1643 = phi float [ %1639, %1629 ], [ %1502, %1606 ]
  %1644 = phi float [ %1640, %1629 ], [ %1503, %1606 ]
  %1645 = phi float [ %1641, %1629 ], [ %1504, %1606 ]
  %1646 = phi float [ %1631, %1629 ], [ 0.000000e+00, %1606 ]
  %1647 = fcmp fast une float %1618, 1.000000e+00
  br i1 %1647, label %1648, label %1655, !dx.controlflow.hints !100

; <label>:1648                                    ; preds = %1642
  %1649 = call float @dx.op.unary.f32(i32 23, float %1618)  ; Log(value)
  %1650 = fmul fast float %1649, 0x3FE62E4300000000
  %1651 = fmul fast float %1615, %1650
  %1652 = fsub fast float -0.000000e+00, %1651
  %1653 = fsub fast float 1.000000e+00, %1618
  %1654 = fdiv fast float %1652, %1653
  br label %1655

; <label>:1655                                    ; preds = %1648, %1642
  %1656 = phi float [ %1654, %1648 ], [ %1615, %1642 ]
  %1657 = phi float [ %1650, %1648 ], [ 0.000000e+00, %1642 ]
  %1658 = fcmp fast une float %1619, 1.000000e+00
  br i1 %1658, label %1659, label %1666, !dx.controlflow.hints !100

; <label>:1659                                    ; preds = %1655
  %1660 = call float @dx.op.unary.f32(i32 23, float %1619)  ; Log(value)
  %1661 = fmul fast float %1660, 0x3FE62E4300000000
  %1662 = fmul fast float %1616, %1661
  %1663 = fsub fast float -0.000000e+00, %1662
  %1664 = fsub fast float 1.000000e+00, %1619
  %1665 = fdiv fast float %1663, %1664
  br label %1666

; <label>:1666                                    ; preds = %1659, %1655
  %1667 = phi float [ %1665, %1659 ], [ %1616, %1655 ]
  %1668 = phi float [ %1661, %1659 ], [ 0.000000e+00, %1655 ]
  %1669 = fcmp fast une float %1620, 1.000000e+00
  br i1 %1669, label %1670, label %1677, !dx.controlflow.hints !100

; <label>:1670                                    ; preds = %1666
  %1671 = call float @dx.op.unary.f32(i32 23, float %1620)  ; Log(value)
  %1672 = fmul fast float %1671, 0x3FE62E4300000000
  %1673 = fmul fast float %1617, %1672
  %1674 = fsub fast float -0.000000e+00, %1673
  %1675 = fsub fast float 1.000000e+00, %1620
  %1676 = fdiv fast float %1674, %1675
  br label %1677

; <label>:1677                                    ; preds = %1670, %1666
  %1678 = phi float [ %1676, %1670 ], [ %1617, %1666 ]
  %1679 = phi float [ %1672, %1670 ], [ 0.000000e+00, %1666 ]
  %1680 = fmul fast float %1643, %1627
  %1681 = fmul fast float %1644, %1627
  %1682 = fmul fast float %1645, %1627
  %1683 = fmul fast float %1646, %1627
  %1684 = fmul fast float %1656, %1625
  %1685 = fmul fast float %1667, %1625
  %1686 = fmul fast float %1678, %1625
  %1687 = fmul fast float %1657, %1625
  %1688 = fmul fast float %1668, %1625
  %1689 = fmul fast float %1679, %1625
  %1690 = fadd fast float %1684, %1680
  %1691 = fadd fast float %1685, %1681
  %1692 = fadd fast float %1686, %1682
  %1693 = fadd fast float %1687, %1683
  %1694 = fadd fast float %1688, %1683
  %1695 = fadd fast float %1689, %1683
  %1696 = fcmp fast une float %1693, 0.000000e+00
  br i1 %1696, label %1697, label %1704, !dx.controlflow.hints !101

; <label>:1697                                    ; preds = %1677
  %1698 = fmul fast float %1693, 0x3FF7154760000000
  %1699 = call float @dx.op.unary.f32(i32 21, float %1698)  ; Exp(value)
  %1700 = fsub fast float 1.000000e+00, %1699
  %1701 = fmul fast float %1690, %1700
  %1702 = fsub fast float -0.000000e+00, %1701
  %1703 = fdiv fast float %1702, %1693
  br label %1704

; <label>:1704                                    ; preds = %1697, %1677
  %1705 = phi float [ %1699, %1697 ], [ 1.000000e+00, %1677 ]
  %1706 = phi float [ %1703, %1697 ], [ %1690, %1677 ]
  %1707 = fcmp fast une float %1694, 0.000000e+00
  br i1 %1707, label %1708, label %1715, !dx.controlflow.hints !101

; <label>:1708                                    ; preds = %1704
  %1709 = fmul fast float %1694, 0x3FF7154760000000
  %1710 = call float @dx.op.unary.f32(i32 21, float %1709)  ; Exp(value)
  %1711 = fsub fast float 1.000000e+00, %1710
  %1712 = fmul fast float %1691, %1711
  %1713 = fsub fast float -0.000000e+00, %1712
  %1714 = fdiv fast float %1713, %1694
  br label %1715

; <label>:1715                                    ; preds = %1708, %1704
  %1716 = phi float [ %1710, %1708 ], [ 1.000000e+00, %1704 ]
  %1717 = phi float [ %1714, %1708 ], [ %1691, %1704 ]
  %1718 = fcmp fast une float %1695, 0.000000e+00
  br i1 %1718, label %1719, label %1726, !dx.controlflow.hints !101

; <label>:1719                                    ; preds = %1715
  %1720 = fmul fast float %1695, 0x3FF7154760000000
  %1721 = call float @dx.op.unary.f32(i32 21, float %1720)  ; Exp(value)
  %1722 = fsub fast float 1.000000e+00, %1721
  %1723 = fmul fast float %1692, %1722
  %1724 = fsub fast float -0.000000e+00, %1723
  %1725 = fdiv fast float %1724, %1695
  br label %1726

; <label>:1726                                    ; preds = %1719, %1715
  %1727 = phi float [ %1721, %1719 ], [ 1.000000e+00, %1715 ]
  %1728 = phi float [ %1725, %1719 ], [ %1692, %1715 ]
  %1729 = fcmp fast ogt float %1625, %1627
  br i1 %1729, label %1730, label %1750, !dx.controlflow.hints !102

; <label>:1730                                    ; preds = %1726
  %1731 = fsub fast float 1.000000e+00, %1627
  %1732 = fmul fast float %1643, %1731
  %1733 = fmul fast float %1644, %1731
  %1734 = fmul fast float %1645, %1731
  %1735 = fmul fast float %1646, %1731
  %1736 = fcmp fast une float %1735, 0.000000e+00
  br i1 %1736, label %1737, label %1788, !dx.controlflow.hints !103

; <label>:1737                                    ; preds = %1730
  %1738 = fmul fast float %1735, 0x3FF7154760000000
  %1739 = call float @dx.op.unary.f32(i32 21, float %1738)  ; Exp(value)
  %1740 = fsub fast float 1.000000e+00, %1739
  %1741 = fmul fast float %1732, %1740
  %1742 = fsub fast float -0.000000e+00, %1741
  %1743 = fmul fast float %1733, %1740
  %1744 = fsub fast float -0.000000e+00, %1743
  %1745 = fmul fast float %1734, %1740
  %1746 = fsub fast float -0.000000e+00, %1745
  %1747 = fdiv fast float %1742, %1735
  %1748 = fdiv fast float %1744, %1735
  %1749 = fdiv fast float %1746, %1735
  br label %1788

; <label>:1750                                    ; preds = %1726
  %1751 = fsub fast float 1.000000e+00, %1625
  %1752 = fmul fast float %1656, %1751
  %1753 = fmul fast float %1667, %1751
  %1754 = fmul fast float %1678, %1751
  %1755 = fmul fast float %1657, %1751
  %1756 = fmul fast float %1668, %1751
  %1757 = fmul fast float %1679, %1751
  %1758 = fcmp fast une float %1755, 0.000000e+00
  br i1 %1758, label %1759, label %1766, !dx.controlflow.hints !101

; <label>:1759                                    ; preds = %1750
  %1760 = fmul fast float %1755, 0x3FF7154760000000
  %1761 = call float @dx.op.unary.f32(i32 21, float %1760)  ; Exp(value)
  %1762 = fsub fast float 1.000000e+00, %1761
  %1763 = fmul fast float %1752, %1762
  %1764 = fsub fast float -0.000000e+00, %1763
  %1765 = fdiv fast float %1764, %1755
  br label %1766

; <label>:1766                                    ; preds = %1759, %1750
  %1767 = phi float [ %1765, %1759 ], [ %1752, %1750 ]
  %1768 = phi float [ %1761, %1759 ], [ 1.000000e+00, %1750 ]
  %1769 = fcmp fast une float %1756, 0.000000e+00
  br i1 %1769, label %1770, label %1777, !dx.controlflow.hints !101

; <label>:1770                                    ; preds = %1766
  %1771 = fmul fast float %1756, 0x3FF7154760000000
  %1772 = call float @dx.op.unary.f32(i32 21, float %1771)  ; Exp(value)
  %1773 = fsub fast float 1.000000e+00, %1772
  %1774 = fmul fast float %1753, %1773
  %1775 = fsub fast float -0.000000e+00, %1774
  %1776 = fdiv fast float %1775, %1756
  br label %1777

; <label>:1777                                    ; preds = %1770, %1766
  %1778 = phi float [ %1776, %1770 ], [ %1753, %1766 ]
  %1779 = phi float [ %1772, %1770 ], [ 1.000000e+00, %1766 ]
  %1780 = fcmp fast une float %1757, 0.000000e+00
  br i1 %1780, label %1781, label %1788, !dx.controlflow.hints !101

; <label>:1781                                    ; preds = %1777
  %1782 = fmul fast float %1757, 0x3FF7154760000000
  %1783 = call float @dx.op.unary.f32(i32 21, float %1782)  ; Exp(value)
  %1784 = fsub fast float 1.000000e+00, %1783
  %1785 = fmul fast float %1754, %1784
  %1786 = fsub fast float -0.000000e+00, %1785
  %1787 = fdiv fast float %1786, %1757
  br label %1788

; <label>:1788                                    ; preds = %1781, %1777, %1737, %1730
  %1789 = phi float [ %1787, %1781 ], [ %1749, %1737 ], [ %1734, %1730 ], [ %1754, %1777 ]
  %1790 = phi float [ %1778, %1781 ], [ %1748, %1737 ], [ %1733, %1730 ], [ %1778, %1777 ]
  %1791 = phi float [ %1767, %1781 ], [ %1747, %1737 ], [ %1732, %1730 ], [ %1767, %1777 ]
  %1792 = phi float [ %1783, %1781 ], [ %1739, %1737 ], [ 1.000000e+00, %1730 ], [ 1.000000e+00, %1777 ]
  %1793 = phi float [ %1779, %1781 ], [ %1739, %1737 ], [ 1.000000e+00, %1730 ], [ %1779, %1777 ]
  %1794 = phi float [ %1768, %1781 ], [ %1739, %1737 ], [ 1.000000e+00, %1730 ], [ %1768, %1777 ]
  %1795 = fmul fast float %1794, %1706
  %1796 = fmul fast float %1793, %1717
  %1797 = fmul fast float %1792, %1728
  %1798 = fadd fast float %1795, %1791
  %1799 = fadd fast float %1796, %1790
  %1800 = fadd fast float %1797, %1789
  %1801 = fmul fast float %1794, %1705
  %1802 = fmul fast float %1793, %1716
  %1803 = fmul fast float %1792, %1727
  br label %1804

; <label>:1804                                    ; preds = %1788, %1599
  %1805 = phi float [ %1605, %1599 ], [ %1803, %1788 ]
  %1806 = phi float [ %1604, %1599 ], [ %1802, %1788 ]
  %1807 = phi float [ %1603, %1599 ], [ %1801, %1788 ]
  %1808 = phi float [ %1602, %1599 ], [ %1800, %1788 ]
  %1809 = phi float [ %1601, %1599 ], [ %1799, %1788 ]
  %1810 = phi float [ %1600, %1599 ], [ %1798, %1788 ]
  %1811 = fmul fast float %1807, %948
  %1812 = fmul fast float %1806, %949
  %1813 = fmul fast float %1805, %950
  %1814 = fsub fast float 1.000000e+00, %1011
  %1815 = fmul fast float %1810, %1814
  %1816 = fmul fast float %1809, %1814
  %1817 = fmul fast float %1808, %1814
  %1818 = fadd fast float %1815, %1811
  %1819 = fadd fast float %1816, %1812
  %1820 = fadd fast float %1817, %1813
  %1821 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 423)  ; CBufferLoadLegacy(handle,regIndex)
  %1822 = extractvalue %dx.types.CBufRet.f32 %1821, 2
  %1823 = fmul fast float %1822, %1021
  %1824 = call float @dx.op.unary.f32(i32 7, float %1823)  ; Saturate(value)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %3, i32 %16, i32 %17, i32 undef, float %1011, float %1011, float %1011, float %1011, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %1825 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1826 = extractvalue %dx.types.CBufRet.f32 %1825, 0
  %1827 = fmul fast float %1826, %1818
  %1828 = fmul fast float %1826, %1819
  %1829 = fmul fast float %1826, %1820
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %4, i32 %16, i32 %17, i32 undef, float %1827, float %1828, float %1829, float %1827, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %16, i32 %17, i32 undef, float %1824, float %1824, float %1824, float %1824, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @dx.op.threadId.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.flattenedThreadIdInGroup.i32(i32) #0

; Function Attrs: nounwind readnone
declare float @dx.op.unary.f32(i32, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.dot2.f32(i32, float, float, float, float) #0

; Function Attrs: noduplicate nounwind
declare void @dx.op.barrier(i32, i32) #1

; Function Attrs: nounwind
declare void @dx.op.textureStore.f32(i32, %dx.types.Handle, i32, i32, i32, float, float, float, float, i8) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32) #3

; Function Attrs: nounwind readnone
declare float @dx.op.legacyF16ToF32(i32, i32) #0

; Function Attrs: nounwind readnone
declare float @dx.op.binary.f32(i32, float, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.tertiary.f32(i32, float, float, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.dot3.f32(i32, float, float, float, float, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #3

; Function Attrs: nounwind readnone
declare i32 @dx.op.binary.i32(i32, i32, i32) #0

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32, %dx.types.Handle, i32) #3

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32, %dx.types.Handle, i32) #3

; Function Attrs: nounwind readonly
declare %dx.types.Handle @dx.op.createHandle(i32, i8, i32, i32, i1) #3

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32, %dx.types.Handle, i32, i32) #3

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32, %dx.types.Handle, i32, i32) #3

attributes #0 = { nounwind readnone }
attributes #1 = { noduplicate nounwind }
attributes #2 = { nounwind }
attributes #3 = { nounwind readonly }

!llvm.ident = !{!0}
!dx.version = !{!1}
!dx.valver = !{!2}
!dx.shaderModel = !{!3}
!dx.resources = !{!4}
!dx.entryPoints = !{!27}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !15, !21, !24}
!5 = !{!6, !8, !9, !11, !12, !13, !14}
!6 = !{i32 0, %"class.Texture3D<float>"* undef, !"", i32 0, i32 3, i32 1, i32 4, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 18, i32 1, i32 2, i32 0, !7}
!9 = !{i32 2, %"class.StructuredBuffer<VolumetricBBoxGpu>"* undef, !"", i32 0, i32 25, i32 1, i32 12, i32 0, !10}
!10 = !{i32 1, i32 164}
!11 = !{i32 3, %"class.Texture1D<float>"* undef, !"", i32 0, i32 14, i32 1, i32 1, i32 0, !7}
!12 = !{i32 4, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 13, i32 1, i32 2, i32 0, !7}
!13 = !{i32 5, %"class.Texture2D<float>"* undef, !"", i32 0, i32 0, i32 1, i32 2, i32 0, !7}
!14 = !{i32 6, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 17, i32 1, i32 11, i32 0, null}
!15 = !{!16, !17, !18, !19}
!16 = !{i32 0, %"class.RWTexture2D<vector<float, 3> >"* undef, !"", i32 0, i32 0, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!17 = !{i32 1, %"class.RWTexture2D<float>"* undef, !"", i32 0, i32 1, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!18 = !{i32 2, %"class.RWTexture2D<float>"* undef, !"", i32 0, i32 2, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!19 = !{i32 3, %"class.RWTexture2DArray<vector<float, 4> >"* undef, !"", i32 0, i32 3, i32 1, i32 7, i1 false, i1 false, i1 false, !20}
!20 = !{i32 0, i32 14}
!21 = !{!22, !23}
!22 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!23 = !{i32 1, %FogRaymarchingConstBuffer_decl* undef, !"", i32 0, i32 0, i32 1, i32 112, null}
!24 = !{!25, !26}
!25 = !{i32 0, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!26 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!27 = !{void ()* @cs_fog_raymarching_particles, !"cs_fog_raymarching_particles", null, !4, !28}
!28 = !{i32 0, i64 272, i32 4, !29}
!29 = !{i32 8, i32 8, i32 1}
!30 = distinct !{!30, !"dx.controlflow.hints", i32 2}
!31 = distinct !{!31, !"dx.controlflow.hints", i32 2}
!32 = distinct !{!32, !"dx.controlflow.hints", i32 2}
!33 = distinct !{!33, !34}
!34 = !{!"llvm.loop.unroll.disable"}
!35 = distinct !{!35, !"dx.controlflow.hints", i32 2}
!36 = distinct !{!36, !"dx.controlflow.hints", i32 2}
!37 = distinct !{!37, !"dx.controlflow.hints", i32 2}
!38 = distinct !{!38, !"dx.controlflow.hints", i32 2}
!39 = distinct !{!39, !"dx.controlflow.hints", i32 2}
!40 = distinct !{!40, !"dx.controlflow.hints", i32 2}
!41 = distinct !{!41, !"dx.controlflow.hints", i32 1}
!42 = distinct !{!42, !"dx.controlflow.hints", i32 1}
!43 = distinct !{!43, !"dx.controlflow.hints", i32 2}
!44 = distinct !{!44, !"dx.controlflow.hints", i32 2}
!45 = distinct !{!45, !"dx.controlflow.hints", i32 2}
!46 = distinct !{!46, !"dx.controlflow.hints", i32 2}
!47 = distinct !{!47, !"dx.controlflow.hints", i32 2}
!48 = distinct !{!48, !"dx.controlflow.hints", i32 2}
!49 = distinct !{!49, !"dx.controlflow.hints", i32 1}
!50 = distinct !{!50, !"dx.controlflow.hints", i32 2}
!51 = distinct !{!51, !"dx.controlflow.hints", i32 2}
!52 = distinct !{!52, !"dx.controlflow.hints", i32 2}
!53 = distinct !{!53, !"dx.controlflow.hints", i32 2}
!54 = distinct !{!54, !"dx.controlflow.hints", i32 2}
!55 = distinct !{!55, !"dx.controlflow.hints", i32 2}
!56 = distinct !{!56, !"dx.controlflow.hints", i32 2}
!57 = distinct !{!57, !"dx.controlflow.hints", i32 2}
!58 = !{!59, !59, i64 0}
!59 = !{!"float", !60, i64 0}
!60 = !{!"omnipotent char", !61, i64 0}
!61 = !{!"Simple C/C++ TBAA"}
!62 = !{!63, !65, !67, !68, !70, !71, !72}
!63 = distinct !{!63, !64, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z: %cFogParams"}
!64 = distinct !{!64, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z"}
!65 = distinct !{!65, !66, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %scattering"}
!66 = distinct !{!66, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z"}
!67 = distinct !{!67, !66, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %extinction"}
!68 = distinct !{!68, !69, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z: %scattering"}
!69 = distinct !{!69, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z"}
!70 = distinct !{!70, !69, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z: %transmission"}
!71 = distinct !{!71, !69, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z: %depthDensityWeighted"}
!72 = distinct !{!72, !69, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z: %rawShadowmapData"}
!73 = distinct !{!73, !"dx.controlflow.hints", i32 2}
!74 = !{!75}
!75 = distinct !{!75, !76, !"\01?sort@@YAXAIAM00@Z: %c"}
!76 = distinct !{!76, !"\01?sort@@YAXAIAM00@Z"}
!77 = !{!78, !79, !63, !65, !67, !68, !70, !71, !72}
!78 = distinct !{!78, !76, !"\01?sort@@YAXAIAM00@Z: %a"}
!79 = distinct !{!79, !76, !"\01?sort@@YAXAIAM00@Z: %b"}
!80 = !{!79}
!81 = !{!78, !75, !63, !65, !67, !68, !70, !71, !72}
!82 = !{!78}
!83 = !{!79, !75, !63, !65, !67, !68, !70, !71, !72}
!84 = !{!85}
!85 = distinct !{!85, !86, !"\01?sort@@YAXAIAM00@Z: %c"}
!86 = distinct !{!86, !"\01?sort@@YAXAIAM00@Z"}
!87 = !{!88, !89, !63, !65, !67, !68, !70, !71, !72}
!88 = distinct !{!88, !86, !"\01?sort@@YAXAIAM00@Z: %a"}
!89 = distinct !{!89, !86, !"\01?sort@@YAXAIAM00@Z: %b"}
!90 = !{!89}
!91 = !{!88, !85, !63, !65, !67, !68, !70, !71, !72}
!92 = !{!88}
!93 = !{!89, !85, !63, !65, !67, !68, !70, !71, !72}
!94 = distinct !{!94, !"dx.controlflow.hints", i32 2}
!95 = distinct !{!95, !"dx.controlflow.hints", i32 2}
!96 = distinct !{!96, !"dx.controlflow.hints", i32 1}
!97 = distinct !{!97, !"dx.controlflow.hints", i32 2}
!98 = distinct !{!98, !"dx.controlflow.hints", i32 1}
!99 = distinct !{!99, !"dx.controlflow.hints", i32 1}
!100 = distinct !{!100, !"dx.controlflow.hints", i32 1}
!101 = distinct !{!101, !"dx.controlflow.hints", i32 1}
!102 = distinct !{!102, !"dx.controlflow.hints", i32 2}
!103 = distinct !{!103, !"dx.controlflow.hints", i32 1}

