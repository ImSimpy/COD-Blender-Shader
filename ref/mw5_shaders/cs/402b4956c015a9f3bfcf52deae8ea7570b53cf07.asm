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
; shader hash: 9bbbd4d2195fbb1a627f91b3126fd19d
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
;
; Resource Bindings:
;
; Name                                 Type  Format         Dim      ID      HLSL Bind  Count
; ------------------------------ ---------- ------- ----------- ------- -------------- ------
;                                   cbuffer      NA          NA     CB0            cb3     1
;                                   cbuffer      NA          NA     CB1            cb0     1
;                                   sampler      NA          NA      S0             s2     1
;                                   texture     f32          3d      T0             t3     1
;                                   texture     f32          2d      T1            t27     1
;                                   texture     f32          1d      T2            t14     1
;                                   texture     f32          2d      T3            t13     1
;                                   texture     f32          2d      T4             t0     1
;                                   texture    byte         r/o      T5            t17     1
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

define void @cs_fog_raymarching_brfog() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 3, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 17, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 13, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 14, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 27, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call i32 @dx.op.threadId.i32(i32 93, i32 0)  ; ThreadId(component)
  %15 = call i32 @dx.op.threadId.i32(i32 93, i32 1)  ; ThreadId(component)
  %16 = call i32 @dx.op.flattenedThreadIdInGroup.i32(i32 96)  ; FlattenedThreadIdInGroup()
  %17 = alloca [3 x float], align 4
  %18 = alloca [3 x float], align 4
  %19 = add i32 %15, %14
  %20 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %13, i32 361)  ; CBufferLoadLegacy(handle,regIndex)
  %21 = extractvalue %dx.types.CBufRet.i32 %20, 1
  %22 = add i32 %19, %21
  %23 = lshr i32 %22, 1
  %24 = and i32 %23, 1
  %25 = and i32 %22, 1
  %26 = xor i32 %24, %25
  %27 = shl i32 %14, 1
  %28 = shl i32 %15, 1
  %29 = or i32 %26, %27
  %30 = or i32 %24, %28
  %31 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 48, i32 undef)  ; BufferLoad(srv,index,wot)
  %32 = extractvalue %dx.types.ResRet.i32 %31, 0
  %33 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 32, i32 undef)  ; BufferLoad(srv,index,wot)
  %34 = extractvalue %dx.types.ResRet.i32 %33, 0
  %35 = extractvalue %dx.types.ResRet.i32 %33, 1
  %36 = extractvalue %dx.types.ResRet.i32 %33, 2
  %37 = extractvalue %dx.types.ResRet.i32 %33, 3
  %38 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %39 = extractvalue %dx.types.ResRet.i32 %38, 0
  %40 = extractvalue %dx.types.ResRet.i32 %38, 1
  %41 = extractvalue %dx.types.ResRet.i32 %38, 2
  %42 = extractvalue %dx.types.ResRet.i32 %38, 3
  %43 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %44 = extractvalue %dx.types.ResRet.i32 %43, 0
  %45 = extractvalue %dx.types.ResRet.i32 %43, 1
  %46 = extractvalue %dx.types.ResRet.i32 %43, 2
  %47 = extractvalue %dx.types.ResRet.i32 %43, 3
  %48 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 396)  ; CBufferLoadLegacy(handle,regIndex)
  %49 = extractvalue %dx.types.CBufRet.f32 %48, 2
  %50 = fmul fast float %49, %49
  %51 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %52 = extractvalue %dx.types.CBufRet.f32 %51, 0
  %53 = extractvalue %dx.types.CBufRet.f32 %51, 1
  %54 = extractvalue %dx.types.CBufRet.f32 %51, 2
  %55 = fmul fast float %54, 0x3FF17B1420000000
  %56 = icmp eq i32 %16, 0
  br i1 %56, label %57, label %198, !dx.controlflow.hints !27

; <label>:57                                      ; preds = %0
  %58 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %59 = extractvalue %dx.types.CBufRet.f32 %58, 0
  %60 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %61 = extractvalue %dx.types.CBufRet.f32 %60, 3
  %62 = extractvalue %dx.types.ResRet.i32 %31, 1
  %63 = and i32 %62, 65535
  %64 = call float @dx.op.legacyF16ToF32(i32 131, i32 %63)  ; LegacyF16ToF32(value)
  %65 = lshr i32 %32, 16
  %66 = call float @dx.op.legacyF16ToF32(i32 131, i32 %65)  ; LegacyF16ToF32(value)
  %67 = and i32 %32, 65535
  %68 = call float @dx.op.legacyF16ToF32(i32 131, i32 %67)  ; LegacyF16ToF32(value)
  %69 = lshr i32 %37, 16
  %70 = call float @dx.op.legacyF16ToF32(i32 131, i32 %69)  ; LegacyF16ToF32(value)
  %71 = and i32 %37, 65535
  %72 = call float @dx.op.legacyF16ToF32(i32 131, i32 %71)  ; LegacyF16ToF32(value)
  %73 = lshr i32 %36, 16
  %74 = call float @dx.op.legacyF16ToF32(i32 131, i32 %73)  ; LegacyF16ToF32(value)
  %75 = and i32 %36, 65535
  %76 = call float @dx.op.legacyF16ToF32(i32 131, i32 %75)  ; LegacyF16ToF32(value)
  %77 = lshr i32 %35, 16
  %78 = call float @dx.op.legacyF16ToF32(i32 131, i32 %77)  ; LegacyF16ToF32(value)
  %79 = lshr i32 %34, 16
  %80 = call float @dx.op.legacyF16ToF32(i32 131, i32 %79)  ; LegacyF16ToF32(value)
  %81 = and i32 %34, 65535
  %82 = call float @dx.op.legacyF16ToF32(i32 131, i32 %81)  ; LegacyF16ToF32(value)
  %83 = lshr i32 %42, 16
  %84 = call float @dx.op.legacyF16ToF32(i32 131, i32 %83)  ; LegacyF16ToF32(value)
  %85 = and i32 %42, 65535
  %86 = call float @dx.op.legacyF16ToF32(i32 131, i32 %85)  ; LegacyF16ToF32(value)
  %87 = lshr i32 %41, 16
  %88 = call float @dx.op.legacyF16ToF32(i32 131, i32 %87)  ; LegacyF16ToF32(value)
  %89 = and i32 %41, 65535
  %90 = call float @dx.op.legacyF16ToF32(i32 131, i32 %89)  ; LegacyF16ToF32(value)
  %91 = lshr i32 %40, 16
  %92 = call float @dx.op.legacyF16ToF32(i32 131, i32 %91)  ; LegacyF16ToF32(value)
  %93 = and i32 %40, 65535
  %94 = call float @dx.op.legacyF16ToF32(i32 131, i32 %93)  ; LegacyF16ToF32(value)
  %95 = and i32 %39, 65535
  %96 = call float @dx.op.legacyF16ToF32(i32 131, i32 %95)  ; LegacyF16ToF32(value)
  %97 = lshr i32 %47, 16
  %98 = call float @dx.op.legacyF16ToF32(i32 131, i32 %97)  ; LegacyF16ToF32(value)
  %99 = and i32 %47, 65535
  %100 = call float @dx.op.legacyF16ToF32(i32 131, i32 %99)  ; LegacyF16ToF32(value)
  %101 = lshr i32 %46, 16
  %102 = call float @dx.op.legacyF16ToF32(i32 131, i32 %101)  ; LegacyF16ToF32(value)
  %103 = and i32 %46, 65535
  %104 = call float @dx.op.legacyF16ToF32(i32 131, i32 %103)  ; LegacyF16ToF32(value)
  %105 = lshr i32 %45, 16
  %106 = call float @dx.op.legacyF16ToF32(i32 131, i32 %105)  ; LegacyF16ToF32(value)
  %107 = and i32 %45, 65535
  %108 = call float @dx.op.legacyF16ToF32(i32 131, i32 %107)  ; LegacyF16ToF32(value)
  %109 = lshr i32 %44, 16
  %110 = call float @dx.op.legacyF16ToF32(i32 131, i32 %109)  ; LegacyF16ToF32(value)
  %111 = and i32 %35, 65535
  %112 = call float @dx.op.legacyF16ToF32(i32 131, i32 %111)  ; LegacyF16ToF32(value)
  %113 = lshr i32 %39, 16
  %114 = call float @dx.op.legacyF16ToF32(i32 131, i32 %113)  ; LegacyF16ToF32(value)
  %115 = and i32 %44, 65535
  %116 = call float @dx.op.legacyF16ToF32(i32 131, i32 %115)  ; LegacyF16ToF32(value)
  %117 = fmul fast float %112, 0x3FD20DD760000000
  %118 = fmul fast float %54, %49
  %119 = fmul fast float %118, %76
  %120 = fmul fast float %54, %54
  %121 = fmul fast float %120, 0x3FEE471020000000
  %122 = fadd fast float %121, 0xBFD42F6020000000
  %123 = fmul fast float %68, %122
  %124 = fmul fast float %74, %52
  %125 = fmul fast float %78, %53
  %126 = fmul fast float %52, %50
  %127 = fmul fast float %126, %55
  %128 = fmul fast float %127, %66
  %129 = fsub fast float -0.000000e+00, %128
  %130 = fmul fast float %53, %50
  %131 = fmul fast float %130, %55
  %132 = fmul fast float %131, %70
  %133 = fmul fast float %52, %52
  %134 = fmul fast float %53, %53
  %135 = fsub fast float %133, %134
  %136 = fmul fast float %135, 0x3FE17B1420000000
  %137 = fmul fast float %136, %64
  %138 = fmul fast float %53, 0x3FF17B1420000000
  %139 = fmul fast float %138, %52
  %140 = fmul fast float %139, %72
  %141 = fadd fast float %125, %124
  %142 = fmul fast float %141, %49
  %143 = fsub fast float %142, %119
  %144 = fmul fast float %143, 0x3FDF454380000000
  %145 = fadd fast float %123, %137
  %146 = fadd fast float %145, %140
  %147 = fmul fast float %146, %50
  %148 = fsub fast float %129, %132
  %149 = fadd fast float %148, %117
  %150 = fadd fast float %149, %144
  %151 = fadd fast float %150, %147
  %152 = fmul fast float %59, %61
  %153 = fmul fast float %152, %151
  %154 = fmul fast float %114, 0x3FD20DD760000000
  %155 = fmul fast float %118, %92
  %156 = fmul fast float %84, %122
  %157 = fmul fast float %90, %52
  %158 = fmul fast float %94, %53
  %159 = fmul fast float %127, %82
  %160 = fsub fast float -0.000000e+00, %159
  %161 = fmul fast float %131, %86
  %162 = fmul fast float %136, %80
  %163 = fmul fast float %139, %88
  %164 = fadd fast float %158, %157
  %165 = fmul fast float %164, %49
  %166 = fsub fast float %165, %155
  %167 = fmul fast float %166, 0x3FDF454380000000
  %168 = fadd fast float %156, %162
  %169 = fadd fast float %168, %163
  %170 = fmul fast float %169, %50
  %171 = fsub fast float %160, %161
  %172 = fadd fast float %171, %154
  %173 = fadd fast float %172, %167
  %174 = fadd fast float %173, %170
  %175 = fmul fast float %152, %174
  %176 = fmul fast float %116, 0x3FD20DD760000000
  %177 = fmul fast float %118, %108
  %178 = fmul fast float %100, %122
  %179 = fmul fast float %106, %52
  %180 = fmul fast float %110, %53
  %181 = fmul fast float %127, %98
  %182 = fsub fast float -0.000000e+00, %181
  %183 = fmul fast float %131, %102
  %184 = fmul fast float %136, %96
  %185 = fmul fast float %139, %104
  %186 = fadd fast float %180, %179
  %187 = fmul fast float %186, %49
  %188 = fsub fast float %187, %177
  %189 = fmul fast float %188, 0x3FDF454380000000
  %190 = fadd fast float %178, %184
  %191 = fadd fast float %190, %185
  %192 = fmul fast float %191, %50
  %193 = fsub fast float %182, %183
  %194 = fadd fast float %193, %176
  %195 = fadd fast float %194, %189
  %196 = fadd fast float %195, %192
  %197 = fmul fast float %152, %196
  store float %197, float addrspace(3)* @"\01?ambientLightingLDS@@3V?$vector@M$02@@A.0", align 4
  store float %175, float addrspace(3)* @"\01?ambientLightingLDS@@3V?$vector@M$02@@A.1", align 4
  store float %153, float addrspace(3)* @"\01?ambientLightingLDS@@3V?$vector@M$02@@A.2", align 4
  br label %198

; <label>:198                                     ; preds = %57, %0
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %199 = load float, float addrspace(3)* @"\01?ambientLightingLDS@@3V?$vector@M$02@@A.0", align 4
  %200 = load float, float addrspace(3)* @"\01?ambientLightingLDS@@3V?$vector@M$02@@A.1", align 4
  %201 = load float, float addrspace(3)* @"\01?ambientLightingLDS@@3V?$vector@M$02@@A.2", align 4
  %202 = uitofp i32 %29 to float
  %203 = uitofp i32 %30 to float
  %204 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %205 = extractvalue %dx.types.CBufRet.f32 %204, 2
  %206 = fmul fast float %205, 0x3FE3C6EF40000000
  %207 = frem fast float %202, 2.560000e+02
  %208 = frem fast float %203, 2.560000e+02
  %209 = fptoui float %207 to i32
  %210 = fptoui float %208 to i32
  %211 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %7, i32 0, i32 %209, i32 %210, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %212 = extractvalue %dx.types.ResRet.f32 %211, 1
  %213 = extractvalue %dx.types.ResRet.f32 %211, 2
  %214 = extractvalue %dx.types.ResRet.f32 %211, 3
  %215 = fadd fast float %212, %206
  %216 = fadd fast float %213, %206
  %217 = fadd fast float %214, %206
  %218 = call float @dx.op.unary.f32(i32 22, float %215)  ; Frc(value)
  %219 = call float @dx.op.unary.f32(i32 22, float %216)  ; Frc(value)
  %220 = call float @dx.op.unary.f32(i32 22, float %217)  ; Frc(value)
  %221 = fadd fast float %219, %202
  %222 = fadd fast float %220, %203
  %223 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %224 = extractvalue %dx.types.CBufRet.f32 %223, 2
  %225 = extractvalue %dx.types.CBufRet.f32 %223, 3
  %226 = fmul fast float %224, %221
  %227 = fmul fast float %225, %222
  %228 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %229 = extractvalue %dx.types.CBufRet.f32 %228, 0
  %230 = extractvalue %dx.types.CBufRet.f32 %228, 1
  %231 = extractvalue %dx.types.CBufRet.f32 %228, 2
  %232 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %233 = extractvalue %dx.types.CBufRet.f32 %232, 1
  %234 = fmul fast float %226, 2.000000e+00
  %235 = fmul fast float %227, 2.000000e+00
  %236 = fsub fast float 1.000000e+00, %234
  %237 = fsub fast float 1.000000e+00, %235
  %238 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %239 = extractvalue %dx.types.CBufRet.f32 %238, 0
  %240 = extractvalue %dx.types.CBufRet.f32 %238, 1
  %241 = extractvalue %dx.types.CBufRet.f32 %238, 2
  %242 = fmul fast float %239, %236
  %243 = fmul fast float %240, %236
  %244 = fmul fast float %241, %236
  %245 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %246 = extractvalue %dx.types.CBufRet.f32 %245, 0
  %247 = extractvalue %dx.types.CBufRet.f32 %245, 1
  %248 = extractvalue %dx.types.CBufRet.f32 %245, 2
  %249 = fmul fast float %246, %237
  %250 = fmul fast float %247, %237
  %251 = fmul fast float %248, %237
  %252 = fadd fast float %249, %242
  %253 = fadd fast float %250, %243
  %254 = fadd fast float %251, %244
  %255 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %256 = extractvalue %dx.types.CBufRet.f32 %255, 0
  %257 = extractvalue %dx.types.CBufRet.f32 %255, 1
  %258 = extractvalue %dx.types.CBufRet.f32 %255, 2
  %259 = fadd fast float %252, %256
  %260 = fadd fast float %253, %257
  %261 = fadd fast float %254, %258
  %262 = fmul fast float %259, %233
  %263 = fmul fast float %260, %233
  %264 = fmul fast float %261, %233
  %265 = fmul fast float %262, %262
  %266 = fmul fast float %263, %263
  %267 = fadd fast float %265, %266
  %268 = fmul fast float %264, %264
  %269 = fadd fast float %267, %268
  %270 = call float @dx.op.unary.f32(i32 24, float %269)  ; Sqrt(value)
  %271 = fdiv fast float 1.000000e+00, %270
  %272 = fmul fast float %262, %271
  %273 = fmul fast float %263, %271
  %274 = fmul fast float %264, %271
  %275 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %6, i32 0, i32 %29, i32 %30, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %276 = extractvalue %dx.types.ResRet.f32 %275, 0
  %277 = fcmp fast ogt float %276, -1.000000e+00
  %278 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %279 = extractvalue %dx.types.CBufRet.f32 %278, 1
  %280 = select i1 %277, float %279, float 1.000000e+00
  %281 = fadd fast float %276, 1.000000e+00
  %282 = fmul fast float %280, %281
  %283 = call float @dx.op.unary.f32(i32 6, float %282)  ; FAbs(value)
  %284 = fdiv fast float 1.000000e+00, %233
  %285 = fmul fast float %284, %270
  %286 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 423)  ; CBufferLoadLegacy(handle,regIndex)
  %287 = extractvalue %dx.types.CBufRet.f32 %286, 1
  %288 = fmul fast float %287, %285
  %289 = fmul fast float %285, %283
  %290 = extractvalue %dx.types.CBufRet.f32 %278, 3
  %291 = fcmp fast oge float %283, %290
  %292 = call float @dx.op.binary.f32(i32 36, float %289, float %288)  ; FMin(a,b)
  %293 = select i1 %291, float %288, float %292
  %294 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %295 = extractvalue %dx.types.CBufRet.f32 %294, 2
  %296 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %297 = extractvalue %dx.types.CBufRet.f32 %296, 3
  %298 = fsub fast float -0.000000e+00, %229
  %299 = fsub fast float -0.000000e+00, %230
  %300 = fsub fast float %295, %231
  %301 = fadd fast float %300, %297
  %302 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %298, float %299, float %301)  ; Dot3(ax,ay,az,bx,by,bz)
  %303 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %272, float %273, float %274)  ; Dot3(ax,ay,az,bx,by,bz)
  %304 = fdiv fast float 1.000000e+00, %303
  %305 = fmul fast float %304, %302
  %306 = fcmp fast olt float %305, 0.000000e+00
  %307 = fcmp fast ogt float %274, 0.000000e+00
  %308 = and i1 %307, %306
  br i1 %308, label %313, label %309, !dx.controlflow.hints !28

; <label>:309                                     ; preds = %198
  %310 = fcmp fast olt float %274, 0.000000e+00
  br i1 %310, label %311, label %313, !dx.controlflow.hints !29

; <label>:311                                     ; preds = %309
  %312 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %305)  ; FMax(a,b)
  br label %313

; <label>:313                                     ; preds = %311, %309, %198
  %314 = phi float [ 0.000000e+00, %198 ], [ %312, %311 ], [ 0.000000e+00, %309 ]
  %315 = phi float [ 0.000000e+00, %198 ], [ 0x47EFFFFFE0000000, %311 ], [ %305, %309 ]
  %316 = fcmp fast oeq float %315, 0.000000e+00
  br i1 %316, label %320, label %317, !dx.controlflow.hints !30

; <label>:317                                     ; preds = %313
  %318 = call float @dx.op.binary.f32(i32 36, float 0x47EFFFFFE0000000, float %314)  ; FMin(a,b)
  %319 = call float @dx.op.binary.f32(i32 35, float -1.000000e+00, float %315)  ; FMax(a,b)
  br label %320

; <label>:320                                     ; preds = %317, %313
  %321 = phi i32 [ 1, %317 ], [ 0, %313 ]
  %322 = phi float [ %319, %317 ], [ -1.000000e+00, %313 ]
  %323 = phi float [ %318, %317 ], [ 0x47EFFFFFE0000000, %313 ]
  %324 = call float @dx.op.binary.f32(i32 36, float %293, float %322)  ; FMin(a,b)
  %325 = call float @dx.op.binary.f32(i32 35, float %270, float %323)  ; FMax(a,b)
  %326 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %327 = extractvalue %dx.types.CBufRet.f32 %326, 0
  %328 = fmul fast float %218, 2.000000e+00
  %329 = fadd fast float %328, -1.000000e+00
  %330 = fmul fast float %327, %329
  %331 = fadd fast float %330, %325
  %332 = fcmp fast olt float %331, %324
  %333 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %334 = extractvalue %dx.types.CBufRet.f32 %333, 2
  %335 = fcmp fast olt float %334, 1.000000e+00
  %336 = and i1 %335, %332
  br i1 %336, label %337, label %947

; <label>:337                                     ; preds = %320
  %338 = fmul fast float %331, %274
  %339 = fadd fast float %338, %231
  %340 = fmul fast float %331, %273
  %341 = fadd fast float %340, %230
  %342 = fmul fast float %331, %272
  %343 = fadd fast float %342, %229
  br label %344

; <label>:344                                     ; preds = %921, %337
  %345 = phi i32 [ %923, %921 ], [ undef, %337 ]
  %346 = phi float [ %924, %921 ], [ undef, %337 ]
  %347 = phi i32 [ %540, %921 ], [ undef, %337 ]
  %348 = phi float [ %542, %921 ], [ undef, %337 ]
  %349 = phi float [ %925, %921 ], [ 0.000000e+00, %337 ]
  %350 = phi float [ %926, %921 ], [ 1.000000e+00, %337 ]
  %351 = phi float [ %927, %921 ], [ 0.000000e+00, %337 ]
  %352 = phi float [ %928, %921 ], [ 0.000000e+00, %337 ]
  %353 = phi float [ %929, %921 ], [ 0.000000e+00, %337 ]
  %354 = phi float [ %939, %921 ], [ %343, %337 ]
  %355 = phi float [ %940, %921 ], [ %341, %337 ]
  %356 = phi float [ %941, %921 ], [ %339, %337 ]
  %357 = phi float [ %922, %921 ], [ %331, %337 ]
  %358 = phi float [ %930, %921 ], [ 0.000000e+00, %337 ]
  %359 = phi float [ %931, %921 ], [ 0.000000e+00, %337 ]
  %360 = phi float [ %932, %921 ], [ 0.000000e+00, %337 ]
  %361 = phi float [ %933, %921 ], [ 0.000000e+00, %337 ]
  %362 = phi float [ %934, %921 ], [ 0.000000e+00, %337 ]
  %363 = phi i32 [ %935, %921 ], [ 0, %337 ]
  %364 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %365 = extractvalue %dx.types.CBufRet.f32 %364, 0
  %366 = icmp eq i32 %321, 0
  br i1 %366, label %539, label %367, !dx.controlflow.hints !31

; <label>:367                                     ; preds = %344
  %368 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %13, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %369 = extractvalue %dx.types.CBufRet.i32 %368, 1
  %370 = and i32 %369, 1
  %371 = icmp eq i32 %370, 0
  br i1 %371, label %372, label %529, !dx.controlflow.hints !32

; <label>:372                                     ; preds = %367
  %373 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 204)  ; CBufferLoadLegacy(handle,regIndex)
  %374 = extractvalue %dx.types.CBufRet.f32 %373, 2
  %375 = extractvalue %dx.types.CBufRet.f32 %373, 3
  %376 = fmul fast float %374, %354
  %377 = fmul fast float %375, %355
  %378 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 205)  ; CBufferLoadLegacy(handle,regIndex)
  %379 = extractvalue %dx.types.CBufRet.f32 %378, 0
  %380 = extractvalue %dx.types.CBufRet.f32 %378, 1
  %381 = fadd fast float %376, %379
  %382 = fadd fast float %377, %380
  %383 = call float @dx.op.unary.f32(i32 7, float %381)  ; Saturate(value)
  %384 = call float @dx.op.unary.f32(i32 7, float %382)  ; Saturate(value)
  %385 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %11, float %383, float %384, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %386 = extractvalue %dx.types.ResRet.f32 %385, 0
  %387 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %388 = extractvalue %dx.types.CBufRet.f32 %387, 0
  %389 = fmul fast float %388, %386
  %390 = fsub fast float %381, %383
  %391 = fsub fast float %382, %384
  %392 = extractvalue %dx.types.CBufRet.f32 %373, 0
  %393 = extractvalue %dx.types.CBufRet.f32 %373, 1
  %394 = fmul fast float %392, %390
  %395 = fmul fast float %393, %391
  %396 = fmul fast float %394, %394
  %397 = fmul fast float %395, %395
  %398 = fadd fast float %396, %397
  %399 = call float @dx.op.unary.f32(i32 24, float %398)  ; Sqrt(value)
  %400 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %401 = extractvalue %dx.types.CBufRet.f32 %400, 3
  %402 = fmul fast float %401, %399
  %403 = call float @dx.op.unary.f32(i32 7, float %402)  ; Saturate(value)
  %404 = extractvalue %dx.types.CBufRet.f32 %400, 2
  %405 = fsub fast float %404, %389
  %406 = fmul fast float %405, %403
  %407 = extractvalue %dx.types.CBufRet.f32 %387, 1
  %408 = fsub fast float %356, %389
  %409 = fsub fast float %408, %407
  %410 = fsub fast float %409, %406
  %411 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %412 = extractvalue %dx.types.CBufRet.f32 %411, 2
  %413 = fsub fast float %410, %412
  %414 = fcmp fast olt float %413, 0.000000e+00
  %415 = call float @dx.op.unary.f32(i32 6, float %413)  ; FAbs(value)
  %416 = extractvalue %dx.types.CBufRet.i32 %368, 0
  %417 = icmp eq i32 %416, 0
  br i1 %417, label %471, label %418

; <label>:418                                     ; preds = %372
  br label %419

; <label>:419                                     ; preds = %458, %418
  %420 = phi i32 [ %464, %458 ], [ 1, %418 ]
  %421 = phi float [ %466, %458 ], [ 0x47EFFFFFE0000000, %418 ]
  %422 = phi i32 [ %467, %458 ], [ 0, %418 ]
  %423 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %424 = extractvalue %dx.types.CBufRet.f32 %423, 1
  %425 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %13, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %426 = extractvalue %dx.types.CBufRet.i32 %425, 1
  %427 = and i32 %426, 8
  %428 = icmp eq i32 %427, 0
  %429 = fcmp fast ogt float %424, %410
  %430 = or i1 %429, %428
  %431 = add i32 %422, 171
  %432 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 %431)  ; CBufferLoadLegacy(handle,regIndex)
  %433 = extractvalue %dx.types.CBufRet.f32 %432, 0
  %434 = extractvalue %dx.types.CBufRet.f32 %432, 1
  %435 = extractvalue %dx.types.CBufRet.f32 %432, 2
  br i1 %430, label %436, label %442, !dx.controlflow.hints !33

; <label>:436                                     ; preds = %419
  %437 = fsub fast float %433, %354
  %438 = fsub fast float %434, %355
  %439 = fmul fast float %437, %437
  %440 = fmul fast float %438, %438
  %441 = fadd fast float %439, %440
  br label %458

; <label>:442                                     ; preds = %419
  %443 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %444 = extractvalue %dx.types.CBufRet.f32 %443, 2
  %445 = extractvalue %dx.types.CBufRet.f32 %423, 2
  %446 = fmul fast float %445, %444
  %447 = fsub fast float %446, %424
  %448 = fdiv fast float %435, %447
  %449 = fsub fast float %354, %433
  %450 = fsub fast float %355, %434
  %451 = fsub fast float %410, %424
  %452 = fmul fast float %448, %451
  %453 = fmul fast float %449, %449
  %454 = fmul fast float %450, %450
  %455 = fadd fast float %453, %454
  %456 = fmul fast float %452, %452
  %457 = fadd fast float %455, %456
  br label %458

; <label>:458                                     ; preds = %442, %436
  %459 = phi float [ %441, %436 ], [ %457, %442 ]
  %460 = call float @dx.op.unary.f32(i32 24, float %459)  ; Sqrt(value)
  %461 = fsub float %435, %460
  %462 = fcmp fast olt float %461, 0.000000e+00
  %463 = zext i1 %462 to i32
  %464 = and i32 %463, %420
  %465 = call float @dx.op.unary.f32(i32 6, float %461)  ; FAbs(value)
  %466 = call float @dx.op.binary.f32(i32 36, float %421, float %465)  ; FMin(a,b)
  %467 = add i32 %422, 1
  %468 = extractvalue %dx.types.CBufRet.i32 %425, 0
  %469 = icmp ult i32 %467, %468
  br i1 %469, label %419, label %470

; <label>:470                                     ; preds = %458
  br label %471

; <label>:471                                     ; preds = %470, %372
  %472 = phi i32 [ 1, %372 ], [ %464, %470 ]
  %473 = phi float [ 0x47EFFFFFE0000000, %372 ], [ %466, %470 ]
  br label %474

; <label>:474                                     ; preds = %474, %471
  %475 = phi i32 [ %472, %471 ], [ %514, %474 ]
  %476 = phi float [ 0x47EFFFFFE0000000, %471 ], [ %516, %474 ]
  %477 = phi i32 [ 0, %471 ], [ %517, %474 ]
  %478 = add nuw nsw i32 %477, 191
  %479 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 %478)  ; CBufferLoadLegacy(handle,regIndex)
  %480 = extractvalue %dx.types.CBufRet.f32 %479, 0
  %481 = extractvalue %dx.types.CBufRet.f32 %479, 1
  %482 = extractvalue %dx.types.CBufRet.f32 %479, 2
  %483 = add nuw nsw i32 %477, 195
  %484 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 %483)  ; CBufferLoadLegacy(handle,regIndex)
  %485 = extractvalue %dx.types.CBufRet.f32 %484, 0
  %486 = extractvalue %dx.types.CBufRet.f32 %484, 1
  %487 = extractvalue %dx.types.CBufRet.f32 %484, 2
  %488 = fsub fast float %354, %480
  %489 = fsub fast float %355, %481
  %490 = fsub fast float %410, %482
  %491 = call float @dx.op.unary.f32(i32 6, float %488)  ; FAbs(value)
  %492 = call float @dx.op.unary.f32(i32 6, float %489)  ; FAbs(value)
  %493 = call float @dx.op.unary.f32(i32 6, float %490)  ; FAbs(value)
  %494 = fsub fast float %491, %485
  %495 = fsub fast float %492, %486
  %496 = fsub fast float %493, %487
  %497 = call float @dx.op.binary.f32(i32 35, float %494, float 0.000000e+00)  ; FMax(a,b)
  %498 = call float @dx.op.binary.f32(i32 35, float %495, float 0.000000e+00)  ; FMax(a,b)
  %499 = call float @dx.op.binary.f32(i32 35, float %496, float 0.000000e+00)  ; FMax(a,b)
  %500 = fmul fast float %497, %497
  %501 = fmul fast float %498, %498
  %502 = fadd fast float %501, %500
  %503 = fmul fast float %499, %499
  %504 = fadd fast float %502, %503
  %505 = call float @dx.op.unary.f32(i32 24, float %504)  ; Sqrt(value)
  %506 = call float @dx.op.binary.f32(i32 35, float %495, float %496)  ; FMax(a,b)
  %507 = call float @dx.op.binary.f32(i32 35, float %494, float %506)  ; FMax(a,b)
  %508 = call float @dx.op.binary.f32(i32 36, float %507, float 0.000000e+00)  ; FMin(a,b)
  %509 = fadd fast float %508, %505
  %510 = fsub fast float -0.000000e+00, %509
  %511 = fcmp ogt float %509, -0.000000e+00
  %512 = icmp ne i32 %475, 0
  %513 = and i1 %512, %511
  %514 = zext i1 %513 to i32
  %515 = call float @dx.op.unary.f32(i32 6, float %510)  ; FAbs(value)
  %516 = call float @dx.op.binary.f32(i32 36, float %476, float %515)  ; FMin(a,b)
  %517 = add nuw nsw i32 %477, 1
  %518 = icmp eq i32 %517, 4
  br i1 %518, label %519, label %474

; <label>:519                                     ; preds = %474
  %520 = call float @dx.op.binary.f32(i32 36, float %415, float %516)  ; FMin(a,b)
  %521 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %13, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %522 = extractvalue %dx.types.CBufRet.i32 %521, 1
  %523 = and i32 %522, 2
  %524 = icmp ne i32 %523, 0
  %525 = xor i1 %513, %524
  %526 = call float @dx.op.binary.f32(i32 36, float %520, float %473)  ; FMin(a,b)
  %527 = and i1 %525, %414
  %528 = zext i1 %527 to i32
  br label %529

; <label>:529                                     ; preds = %519, %367
  %530 = phi i32 [ %347, %367 ], [ %528, %519 ]
  %531 = phi float [ 0.000000e+00, %367 ], [ %526, %519 ]
  %532 = phi float [ %356, %367 ], [ %410, %519 ]
  %533 = icmp ne i32 %530, 0
  %534 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %535 = extractvalue %dx.types.CBufRet.f32 %534, 3
  %536 = call float @dx.op.binary.f32(i32 35, float %531, float %535)  ; FMax(a,b)
  %537 = call float @dx.op.binary.f32(i32 36, float 0x47EFFFFFE0000000, float %536)  ; FMin(a,b)
  %538 = zext i1 %533 to i32
  br label %539

; <label>:539                                     ; preds = %529, %344
  %540 = phi i32 [ %530, %529 ], [ %347, %344 ]
  %541 = phi i32 [ %538, %529 ], [ 0, %344 ]
  %542 = phi float [ %532, %529 ], [ %348, %344 ]
  %543 = phi float [ %537, %529 ], [ 0x47EFFFFFE0000000, %344 ]
  %544 = extractvalue %dx.types.CBufRet.f32 %364, 2
  %545 = fmul fast float %544, %357
  %546 = call float @dx.op.unary.f32(i32 23, float %545)  ; Log(value)
  %547 = fmul fast float %546, 0x3FE62E4300000000
  %548 = call float @dx.op.binary.f32(i32 35, float %547, float 1.000000e+00)  ; FMax(a,b)
  %549 = fmul fast float %548, %543
  %550 = call float @dx.op.binary.f32(i32 36, float %549, float 0x47EFFFFFE0000000)  ; FMin(a,b)
  %551 = call float @dx.op.binary.f32(i32 35, float %550, float %365)  ; FMax(a,b)
  %552 = fadd fast float %324, 0x3F1A36E2E0000000
  %553 = fsub fast float %552, %357
  %554 = call float @dx.op.binary.f32(i32 36, float %553, float %551)  ; FMin(a,b)
  %555 = icmp eq i32 %541, 0
  br i1 %555, label %594, label %556, !dx.controlflow.hints !34

; <label>:556                                     ; preds = %539
  %557 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 190)  ; CBufferLoadLegacy(handle,regIndex)
  %558 = extractvalue %dx.types.CBufRet.f32 %557, 1
  %559 = fsub fast float %554, %558
  %560 = extractvalue %dx.types.CBufRet.f32 %557, 3
  %561 = fmul fast float %559, %560
  %562 = call float @dx.op.unary.f32(i32 7, float %561)  ; Saturate(value)
  %563 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 188)  ; CBufferLoadLegacy(handle,regIndex)
  %564 = extractvalue %dx.types.CBufRet.f32 %563, 3
  %565 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %566 = extractvalue %dx.types.CBufRet.f32 %565, 2
  %567 = fsub fast float %566, %542
  %568 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 189)  ; CBufferLoadLegacy(handle,regIndex)
  %569 = extractvalue %dx.types.CBufRet.f32 %568, 3
  %570 = fmul fast float %567, %569
  %571 = call float @dx.op.unary.f32(i32 7, float %570)  ; Saturate(value)
  %572 = fmul fast float %571, %564
  %573 = extractvalue %dx.types.CBufRet.f32 %568, 0
  %574 = fsub fast float %357, %573
  %575 = extractvalue %dx.types.CBufRet.f32 %568, 1
  %576 = fmul fast float %574, %575
  %577 = call float @dx.op.unary.f32(i32 7, float %576)  ; Saturate(value)
  %578 = fsub fast float 1.000000e+00, %562
  %579 = fmul fast float %577, %578
  %580 = fadd fast float %579, %562
  %581 = extractvalue %dx.types.CBufRet.f32 %557, 0
  %582 = fsub fast float %572, %581
  %583 = fmul fast float %582, %580
  %584 = fadd fast float %583, %581
  %585 = extractvalue %dx.types.CBufRet.f32 %563, 0
  %586 = extractvalue %dx.types.CBufRet.f32 %563, 1
  %587 = extractvalue %dx.types.CBufRet.f32 %563, 2
  %588 = fmul fast float %584, %554
  %589 = extractvalue %dx.types.CBufRet.f32 %568, 2
  %590 = fmul fast float %588, %585
  %591 = fmul fast float %588, %586
  %592 = fmul fast float %588, %587
  %593 = fmul fast float %588, %589
  br label %594

; <label>:594                                     ; preds = %556, %539
  %595 = phi float [ %588, %556 ], [ 0.000000e+00, %539 ]
  %596 = phi float [ %593, %556 ], [ 0.000000e+00, %539 ]
  %597 = phi float [ %590, %556 ], [ 0.000000e+00, %539 ]
  %598 = phi float [ %591, %556 ], [ 0.000000e+00, %539 ]
  %599 = phi float [ %592, %556 ], [ 0.000000e+00, %539 ]
  %600 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %601 = extractvalue %dx.types.CBufRet.f32 %600, 1
  %602 = fcmp fast ogt float %595, %601
  br i1 %602, label %603, label %609, !dx.controlflow.hints !35

; <label>:603                                     ; preds = %594
  %604 = fdiv fast float 1.000000e+00, %595
  %605 = fmul fast float %604, %597
  %606 = fmul fast float %604, %598
  %607 = fmul fast float %604, %599
  %608 = fmul fast float %604, %596
  br label %609

; <label>:609                                     ; preds = %603, %594
  %610 = phi float [ %608, %603 ], [ %596, %594 ]
  %611 = phi float [ %605, %603 ], [ %597, %594 ]
  %612 = phi float [ %606, %603 ], [ %598, %594 ]
  %613 = phi float [ %607, %603 ], [ %599, %594 ]
  br i1 %602, label %616, label %614, !dx.controlflow.hints !36

; <label>:614                                     ; preds = %609
  %615 = fadd fast float %554, %357
  br label %921

; <label>:616                                     ; preds = %609
  %617 = fmul fast float %595, 0xBFF7154760000000
  %618 = call float @dx.op.unary.f32(i32 21, float %617)  ; Exp(value)
  %619 = call float @dx.op.unary.f32(i32 7, float %618)  ; Saturate(value)
  %620 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %621 = extractvalue %dx.types.CBufRet.f32 %620, 3
  %622 = fcmp fast une float %621, 0.000000e+00
  %623 = extractvalue %dx.types.CBufRet.f32 %620, 0
  %624 = extractvalue %dx.types.CBufRet.f32 %620, 1
  %625 = extractvalue %dx.types.CBufRet.f32 %620, 2
  br i1 %622, label %626, label %648, !dx.controlflow.hints !37

; <label>:626                                     ; preds = %616
  %627 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %628 = extractvalue %dx.types.CBufRet.f32 %627, 0
  %629 = extractvalue %dx.types.CBufRet.f32 %627, 1
  %630 = extractvalue %dx.types.CBufRet.f32 %627, 2
  %631 = call float @dx.op.dot3.f32(i32 55, float %623, float %624, float %625, float %272, float %273, float %274)  ; Dot3(ax,ay,az,bx,by,bz)
  %632 = fcmp fast ogt float %610, 0.000000e+00
  %633 = select i1 %632, float 1.000000e+00, float -1.000000e+00
  %634 = fmul fast float %633, 5.000000e-01
  %635 = fmul fast float %634, %631
  %636 = fmul fast float %633, %610
  %637 = fadd fast float %635, 4.921875e-01
  %638 = fadd fast float %636, -3.125000e-02
  %639 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %11, float %637, float 0x3FB25F3060000000, float %638, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %640 = extractvalue %dx.types.ResRet.f32 %639, 0
  %641 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 398)  ; CBufferLoadLegacy(handle,regIndex)
  %642 = extractvalue %dx.types.CBufRet.f32 %641, 0
  %643 = fmul fast float %640, 0x400921FB60000000
  %644 = fmul fast float %643, %642
  %645 = fmul fast float %644, %628
  %646 = fmul fast float %644, %629
  %647 = fmul fast float %644, %630
  br label %648

; <label>:648                                     ; preds = %626, %616
  %649 = phi float [ %645, %626 ], [ 0.000000e+00, %616 ]
  %650 = phi float [ %646, %626 ], [ 0.000000e+00, %616 ]
  %651 = phi float [ %647, %626 ], [ 0.000000e+00, %616 ]
  %652 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 427)  ; CBufferLoadLegacy(handle,regIndex)
  %653 = extractvalue %dx.types.CBufRet.f32 %652, 0
  %654 = fmul fast float %653, %623
  %655 = fmul fast float %653, %624
  %656 = fmul fast float %653, %625
  %657 = fadd fast float %654, %354
  %658 = fadd fast float %655, %355
  %659 = fadd fast float %656, %356
  br i1 %366, label %814, label %660, !dx.controlflow.hints !31

; <label>:660                                     ; preds = %648
  %661 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %13, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %662 = extractvalue %dx.types.CBufRet.i32 %661, 1
  %663 = and i32 %662, 1
  %664 = icmp eq i32 %663, 0
  br i1 %664, label %665, label %809, !dx.controlflow.hints !32

; <label>:665                                     ; preds = %660
  %666 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 204)  ; CBufferLoadLegacy(handle,regIndex)
  %667 = extractvalue %dx.types.CBufRet.f32 %666, 2
  %668 = extractvalue %dx.types.CBufRet.f32 %666, 3
  %669 = fmul fast float %667, %657
  %670 = fmul fast float %668, %658
  %671 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 205)  ; CBufferLoadLegacy(handle,regIndex)
  %672 = extractvalue %dx.types.CBufRet.f32 %671, 0
  %673 = extractvalue %dx.types.CBufRet.f32 %671, 1
  %674 = fadd fast float %669, %672
  %675 = fadd fast float %670, %673
  %676 = call float @dx.op.unary.f32(i32 7, float %674)  ; Saturate(value)
  %677 = call float @dx.op.unary.f32(i32 7, float %675)  ; Saturate(value)
  %678 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %11, float %676, float %677, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %679 = extractvalue %dx.types.ResRet.f32 %678, 0
  %680 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %681 = extractvalue %dx.types.CBufRet.f32 %680, 0
  %682 = fmul fast float %681, %679
  %683 = fsub fast float %674, %676
  %684 = fsub fast float %675, %677
  %685 = extractvalue %dx.types.CBufRet.f32 %666, 0
  %686 = extractvalue %dx.types.CBufRet.f32 %666, 1
  %687 = fmul fast float %685, %683
  %688 = fmul fast float %686, %684
  %689 = fmul fast float %687, %687
  %690 = fmul fast float %688, %688
  %691 = fadd fast float %689, %690
  %692 = call float @dx.op.unary.f32(i32 24, float %691)  ; Sqrt(value)
  %693 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %694 = extractvalue %dx.types.CBufRet.f32 %693, 3
  %695 = fmul fast float %694, %692
  %696 = call float @dx.op.unary.f32(i32 7, float %695)  ; Saturate(value)
  %697 = extractvalue %dx.types.CBufRet.f32 %693, 2
  %698 = fsub fast float %697, %682
  %699 = fmul fast float %698, %696
  %700 = extractvalue %dx.types.CBufRet.f32 %680, 1
  %701 = fsub fast float %659, %682
  %702 = fsub fast float %701, %700
  %703 = fsub fast float %702, %699
  %704 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %705 = extractvalue %dx.types.CBufRet.f32 %704, 2
  %706 = fsub fast float %703, %705
  %707 = fcmp fast olt float %706, 0.000000e+00
  %708 = extractvalue %dx.types.CBufRet.i32 %661, 0
  %709 = icmp eq i32 %708, 0
  br i1 %709, label %760, label %710

; <label>:710                                     ; preds = %665
  br label %711

; <label>:711                                     ; preds = %749, %710
  %712 = phi i32 [ %755, %749 ], [ 1, %710 ]
  %713 = phi i32 [ %756, %749 ], [ 0, %710 ]
  %714 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %715 = extractvalue %dx.types.CBufRet.f32 %714, 1
  %716 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %13, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %717 = extractvalue %dx.types.CBufRet.i32 %716, 1
  %718 = and i32 %717, 8
  %719 = icmp eq i32 %718, 0
  %720 = fcmp fast ogt float %715, %703
  %721 = or i1 %720, %719
  %722 = add i32 %713, 171
  %723 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 %722)  ; CBufferLoadLegacy(handle,regIndex)
  %724 = extractvalue %dx.types.CBufRet.f32 %723, 0
  %725 = extractvalue %dx.types.CBufRet.f32 %723, 1
  %726 = extractvalue %dx.types.CBufRet.f32 %723, 2
  br i1 %721, label %727, label %733, !dx.controlflow.hints !33

; <label>:727                                     ; preds = %711
  %728 = fsub fast float %724, %657
  %729 = fsub fast float %725, %658
  %730 = fmul fast float %728, %728
  %731 = fmul fast float %729, %729
  %732 = fadd fast float %730, %731
  br label %749

; <label>:733                                     ; preds = %711
  %734 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %735 = extractvalue %dx.types.CBufRet.f32 %734, 2
  %736 = extractvalue %dx.types.CBufRet.f32 %714, 2
  %737 = fmul fast float %736, %735
  %738 = fsub fast float %737, %715
  %739 = fdiv fast float %726, %738
  %740 = fsub fast float %657, %724
  %741 = fsub fast float %658, %725
  %742 = fsub fast float %703, %715
  %743 = fmul fast float %739, %742
  %744 = fmul fast float %740, %740
  %745 = fmul fast float %741, %741
  %746 = fadd fast float %744, %745
  %747 = fmul fast float %743, %743
  %748 = fadd fast float %746, %747
  br label %749

; <label>:749                                     ; preds = %733, %727
  %750 = phi float [ %732, %727 ], [ %748, %733 ]
  %751 = call float @dx.op.unary.f32(i32 24, float %750)  ; Sqrt(value)
  %752 = fsub float %726, %751
  %753 = fcmp fast olt float %752, 0.000000e+00
  %754 = zext i1 %753 to i32
  %755 = and i32 %754, %712
  %756 = add i32 %713, 1
  %757 = extractvalue %dx.types.CBufRet.i32 %716, 0
  %758 = icmp ult i32 %756, %757
  br i1 %758, label %711, label %759

; <label>:759                                     ; preds = %749
  br label %760

; <label>:760                                     ; preds = %759, %665
  %761 = phi i32 [ 1, %665 ], [ %755, %759 ]
  br label %762

; <label>:762                                     ; preds = %762, %760
  %763 = phi i32 [ %799, %762 ], [ %761, %760 ]
  %764 = phi i32 [ %800, %762 ], [ 0, %760 ]
  %765 = add nuw nsw i32 %764, 191
  %766 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 %765)  ; CBufferLoadLegacy(handle,regIndex)
  %767 = extractvalue %dx.types.CBufRet.f32 %766, 0
  %768 = extractvalue %dx.types.CBufRet.f32 %766, 1
  %769 = extractvalue %dx.types.CBufRet.f32 %766, 2
  %770 = add nuw nsw i32 %764, 195
  %771 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 %770)  ; CBufferLoadLegacy(handle,regIndex)
  %772 = extractvalue %dx.types.CBufRet.f32 %771, 0
  %773 = extractvalue %dx.types.CBufRet.f32 %771, 1
  %774 = extractvalue %dx.types.CBufRet.f32 %771, 2
  %775 = fsub fast float %657, %767
  %776 = fsub fast float %658, %768
  %777 = fsub fast float %703, %769
  %778 = call float @dx.op.unary.f32(i32 6, float %775)  ; FAbs(value)
  %779 = call float @dx.op.unary.f32(i32 6, float %776)  ; FAbs(value)
  %780 = call float @dx.op.unary.f32(i32 6, float %777)  ; FAbs(value)
  %781 = fsub fast float %778, %772
  %782 = fsub fast float %779, %773
  %783 = fsub fast float %780, %774
  %784 = call float @dx.op.binary.f32(i32 35, float %781, float 0.000000e+00)  ; FMax(a,b)
  %785 = call float @dx.op.binary.f32(i32 35, float %782, float 0.000000e+00)  ; FMax(a,b)
  %786 = call float @dx.op.binary.f32(i32 35, float %783, float 0.000000e+00)  ; FMax(a,b)
  %787 = fmul fast float %784, %784
  %788 = fmul fast float %785, %785
  %789 = fadd fast float %788, %787
  %790 = fmul fast float %786, %786
  %791 = fadd fast float %789, %790
  %792 = call float @dx.op.unary.f32(i32 24, float %791)  ; Sqrt(value)
  %793 = call float @dx.op.binary.f32(i32 35, float %782, float %783)  ; FMax(a,b)
  %794 = call float @dx.op.binary.f32(i32 35, float %781, float %793)  ; FMax(a,b)
  %795 = call float @dx.op.binary.f32(i32 36, float %794, float 0.000000e+00)  ; FMin(a,b)
  %796 = fadd fast float %795, %792
  %797 = fcmp ogt float %796, -0.000000e+00
  %798 = zext i1 %797 to i32
  %799 = and i32 %798, %763
  %800 = add nuw nsw i32 %764, 1
  %801 = icmp eq i32 %800, 4
  br i1 %801, label %802, label %762

; <label>:802                                     ; preds = %762
  %803 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %13, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %804 = extractvalue %dx.types.CBufRet.i32 %803, 1
  %805 = lshr i32 %804, 1
  %806 = xor i32 %805, %799
  %807 = zext i1 %707 to i32
  %808 = and i32 %806, %807
  br label %809

; <label>:809                                     ; preds = %802, %660
  %810 = phi i32 [ %345, %660 ], [ %808, %802 ]
  %811 = phi float [ %659, %660 ], [ %703, %802 ]
  %812 = icmp ne i32 %810, 0
  %813 = zext i1 %812 to i32
  br label %814

; <label>:814                                     ; preds = %809, %648
  %815 = phi i32 [ %810, %809 ], [ %345, %648 ]
  %816 = phi float [ %811, %809 ], [ %346, %648 ]
  %817 = phi i32 [ %813, %809 ], [ 0, %648 ]
  %818 = icmp eq i32 %817, 0
  br i1 %818, label %849, label %819, !dx.controlflow.hints !34

; <label>:819                                     ; preds = %814
  %820 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 190)  ; CBufferLoadLegacy(handle,regIndex)
  %821 = extractvalue %dx.types.CBufRet.f32 %820, 1
  %822 = fsub fast float %653, %821
  %823 = extractvalue %dx.types.CBufRet.f32 %820, 3
  %824 = fmul fast float %822, %823
  %825 = call float @dx.op.unary.f32(i32 7, float %824)  ; Saturate(value)
  %826 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 188)  ; CBufferLoadLegacy(handle,regIndex)
  %827 = extractvalue %dx.types.CBufRet.f32 %826, 3
  %828 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %829 = extractvalue %dx.types.CBufRet.f32 %828, 2
  %830 = fsub fast float %829, %816
  %831 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 189)  ; CBufferLoadLegacy(handle,regIndex)
  %832 = extractvalue %dx.types.CBufRet.f32 %831, 3
  %833 = fmul fast float %830, %832
  %834 = call float @dx.op.unary.f32(i32 7, float %833)  ; Saturate(value)
  %835 = fmul fast float %834, %827
  %836 = extractvalue %dx.types.CBufRet.f32 %831, 0
  %837 = fsub fast float %653, %836
  %838 = extractvalue %dx.types.CBufRet.f32 %831, 1
  %839 = fmul fast float %837, %838
  %840 = call float @dx.op.unary.f32(i32 7, float %839)  ; Saturate(value)
  %841 = fsub fast float 1.000000e+00, %825
  %842 = fmul fast float %840, %841
  %843 = fadd fast float %842, %825
  %844 = extractvalue %dx.types.CBufRet.f32 %820, 0
  %845 = fsub fast float %835, %844
  %846 = fmul fast float %845, %843
  %847 = fadd fast float %846, %844
  %848 = fmul fast float %847, %653
  br label %849

; <label>:849                                     ; preds = %819, %814
  %850 = phi float [ %848, %819 ], [ 0.000000e+00, %814 ]
  %851 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 36)  ; CBufferLoadLegacy(handle,regIndex)
  %852 = extractvalue %dx.types.CBufRet.f32 %851, 3
  %853 = fmul fast float %850, 0xBFF7154760000000
  %854 = fmul fast float %853, %852
  %855 = call float @dx.op.unary.f32(i32 21, float %854)  ; Exp(value)
  %856 = call float @dx.op.unary.f32(i32 7, float %855)  ; Saturate(value)
  %857 = fmul fast float %856, %649
  %858 = fmul fast float %856, %650
  %859 = fmul fast float %856, %651
  %860 = fadd fast float %857, %199
  %861 = fadd fast float %858, %200
  %862 = fadd fast float %859, %201
  %863 = fsub fast float 1.000000e+00, %619
  %864 = fmul fast float %611, %350
  %865 = fmul fast float %864, %863
  %866 = fmul fast float %865, %860
  %867 = fmul fast float %612, %350
  %868 = fmul fast float %867, %863
  %869 = fmul fast float %868, %861
  %870 = fmul fast float %613, %350
  %871 = fmul fast float %870, %863
  %872 = fmul fast float %871, %862
  %873 = fadd fast float %866, %351
  %874 = fadd fast float %869, %352
  %875 = fadd fast float %872, %353
  %876 = fdiv fast float %595, %554
  %877 = fadd fast float %554, %357
  %878 = fmul fast float %357, %357
  %879 = fmul fast float %877, %877
  %880 = fsub fast float %878, %879
  %881 = fmul fast float %880, -5.000000e-01
  %882 = fmul fast float %881, %876
  %883 = fadd fast float %882, %349
  %884 = fadd fast float %595, %358
  %885 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %13, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %886 = extractvalue %dx.types.CBufRet.i32 %885, 0
  %887 = icmp eq i32 %886, 0
  br i1 %887, label %914, label %888, !dx.controlflow.hints !38

; <label>:888                                     ; preds = %849
  %889 = icmp ne i32 %363, 0
  %890 = zext i1 %889 to i32
  %891 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %892 = extractvalue %dx.types.CBufRet.f32 %891, 2
  %893 = extractvalue %dx.types.CBufRet.f32 %891, 0
  %894 = fsub fast float %877, %893
  %895 = fmul fast float %894, %892
  %896 = call float @dx.op.unary.f32(i32 7, float %895)  ; Saturate(value)
  %897 = fadd fast float %896, -5.000000e-01
  %898 = fmul fast float %897, 2.000000e+00
  %899 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %900 = extractvalue %dx.types.CBufRet.f32 %899, 2
  %901 = fcmp fast olt float %898, %900
  br i1 %901, label %902, label %914, !dx.controlflow.hints !39

; <label>:902                                     ; preds = %888
  %903 = fmul fast float %898, %898
  %904 = fmul fast float %863, %350
  %905 = fmul fast float %898, %904
  %906 = fmul fast float %903, %904
  %907 = fmul fast float %905, %903
  %908 = fmul fast float %903, %903
  %909 = fmul fast float %908, %904
  %910 = fadd fast float %905, %359
  %911 = fadd fast float %906, %360
  %912 = fadd fast float %907, %361
  %913 = fadd fast float %909, %362
  br label %914

; <label>:914                                     ; preds = %902, %888, %849
  %915 = phi float [ %359, %849 ], [ %910, %902 ], [ %359, %888 ]
  %916 = phi float [ %360, %849 ], [ %911, %902 ], [ %360, %888 ]
  %917 = phi float [ %361, %849 ], [ %912, %902 ], [ %361, %888 ]
  %918 = phi float [ %362, %849 ], [ %913, %902 ], [ %362, %888 ]
  %919 = phi i32 [ %363, %849 ], [ 1, %902 ], [ %890, %888 ]
  %920 = fmul fast float %619, %350
  br label %921

; <label>:921                                     ; preds = %914, %614
  %922 = phi float [ %615, %614 ], [ %877, %914 ]
  %923 = phi i32 [ %345, %614 ], [ %815, %914 ]
  %924 = phi float [ %346, %614 ], [ %816, %914 ]
  %925 = phi float [ %349, %614 ], [ %883, %914 ]
  %926 = phi float [ %350, %614 ], [ %920, %914 ]
  %927 = phi float [ %351, %614 ], [ %873, %914 ]
  %928 = phi float [ %352, %614 ], [ %874, %914 ]
  %929 = phi float [ %353, %614 ], [ %875, %914 ]
  %930 = phi float [ %358, %614 ], [ %884, %914 ]
  %931 = phi float [ %359, %614 ], [ %915, %914 ]
  %932 = phi float [ %360, %614 ], [ %916, %914 ]
  %933 = phi float [ %361, %614 ], [ %917, %914 ]
  %934 = phi float [ %362, %614 ], [ %918, %914 ]
  %935 = phi i32 [ %363, %614 ], [ %919, %914 ]
  %936 = fmul fast float %554, %272
  %937 = fmul fast float %554, %273
  %938 = fmul fast float %554, %274
  %939 = fadd fast float %936, %354
  %940 = fadd fast float %937, %355
  %941 = fadd fast float %938, %356
  %942 = fcmp fast olt float %922, %324
  %943 = extractvalue %dx.types.CBufRet.f32 %600, 2
  %944 = fcmp fast olt float %943, %926
  %945 = and i1 %942, %944
  br i1 %945, label %344, label %946

; <label>:946                                     ; preds = %921
  br label %947

; <label>:947                                     ; preds = %946, %320
  %948 = phi float [ 0.000000e+00, %320 ], [ %925, %946 ]
  %949 = phi float [ 1.000000e+00, %320 ], [ %926, %946 ]
  %950 = phi float [ 0.000000e+00, %320 ], [ %927, %946 ]
  %951 = phi float [ 0.000000e+00, %320 ], [ %928, %946 ]
  %952 = phi float [ 0.000000e+00, %320 ], [ %929, %946 ]
  %953 = phi float [ 0.000000e+00, %320 ], [ %930, %946 ]
  %954 = phi float [ 0.000000e+00, %320 ], [ %931, %946 ]
  %955 = phi float [ 0.000000e+00, %320 ], [ %932, %946 ]
  %956 = phi float [ 0.000000e+00, %320 ], [ %933, %946 ]
  %957 = phi float [ 0.000000e+00, %320 ], [ %934, %946 ]
  %958 = phi i32 [ 0, %320 ], [ %935, %946 ]
  %959 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %13, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %960 = extractvalue %dx.types.CBufRet.i32 %959, 0
  %961 = icmp eq i32 %960, 0
  br i1 %961, label %1003, label %962, !dx.controlflow.hints !40

; <label>:962                                     ; preds = %947
  %963 = icmp eq i32 %958, 0
  br i1 %963, label %1002, label %964, !dx.controlflow.hints !41

; <label>:964                                     ; preds = %962
  %965 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %13, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %966 = extractvalue %dx.types.CBufRet.i32 %965, 2
  %967 = icmp eq i32 %966, 0
  br i1 %967, label %974, label %968, !dx.controlflow.hints !42

; <label>:968                                     ; preds = %964
  %969 = fsub fast float 1.000000e+00, %949
  %970 = fdiv fast float %954, %969
  %971 = fdiv fast float %955, %969
  %972 = fdiv fast float %956, %969
  %973 = fdiv fast float %957, %969
  br label %979

; <label>:974                                     ; preds = %964
  %975 = fadd fast float %954, %949
  %976 = fadd fast float %955, %949
  %977 = fadd fast float %956, %949
  %978 = fadd fast float %957, %949
  br label %979

; <label>:979                                     ; preds = %974, %968
  %980 = phi float [ %970, %968 ], [ %975, %974 ]
  %981 = phi float [ %971, %968 ], [ %976, %974 ]
  %982 = phi float [ %972, %968 ], [ %977, %974 ]
  %983 = phi float [ %973, %968 ], [ %978, %974 ]
  %984 = call float @dx.op.binary.f32(i32 35, float %980, float -1.000000e+00)  ; FMax(a,b)
  %985 = call float @dx.op.binary.f32(i32 35, float %981, float -1.000000e+00)  ; FMax(a,b)
  %986 = call float @dx.op.binary.f32(i32 35, float %982, float -1.000000e+00)  ; FMax(a,b)
  %987 = call float @dx.op.binary.f32(i32 35, float %983, float -1.000000e+00)  ; FMax(a,b)
  %988 = call float @dx.op.binary.f32(i32 36, float %984, float 1.000000e+00)  ; FMin(a,b)
  %989 = call float @dx.op.binary.f32(i32 36, float %985, float 1.000000e+00)  ; FMin(a,b)
  %990 = call float @dx.op.binary.f32(i32 36, float %986, float 1.000000e+00)  ; FMin(a,b)
  %991 = call float @dx.op.binary.f32(i32 36, float %987, float 1.000000e+00)  ; FMin(a,b)
  %992 = fmul fast float %988, 1.500000e+00
  %993 = call float @dx.op.tertiary.f32(i32 46, float -2.000000e+00, float %990, float %992)  ; FMad(a,b,c)
  %994 = call float @dx.op.tertiary.f32(i32 46, float 4.000000e+00, float %989, float 0.000000e+00)  ; FMad(a,b,c)
  %995 = call float @dx.op.tertiary.f32(i32 46, float -4.000000e+00, float %991, float %994)  ; FMad(a,b,c)
  %996 = fmul fast float %988, 0x3FEBB67AE0000000
  %997 = call float @dx.op.tertiary.f32(i32 46, float 0xBFD8A23460000000, float %990, float %996)  ; FMad(a,b,c)
  %998 = call float @dx.op.tertiary.f32(i32 46, float 5.000000e-01, float %989, float 0.000000e+00)  ; FMad(a,b,c)
  %999 = call float @dx.op.tertiary.f32(i32 46, float 5.000000e-01, float %991, float %998)  ; FMad(a,b,c)
  %1000 = fadd fast float %993, 5.000000e-01
  %1001 = fadd fast float %997, 5.000000e-01
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %14, i32 %15, i32 0, float %1000, float %995, float %1001, float %999, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %1003

; <label>:1002                                    ; preds = %962
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %14, i32 %15, i32 0, float 0.000000e+00, float 0.000000e+00, float 0x3FEF6560C0000000, float 1.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %1003

; <label>:1003                                    ; preds = %1002, %979, %947
  %1004 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %1005 = extractvalue %dx.types.CBufRet.f32 %1004, 2
  %1006 = fsub fast float %949, %1005
  %1007 = fdiv fast float %1006, %1005
  %1008 = call float @dx.op.unary.f32(i32 7, float %1007)  ; Saturate(value)
  %1009 = fmul fast float %1008, 2.000000e+00
  %1010 = fsub fast float 3.000000e+00, %1009
  %1011 = fmul fast float %1008, %1008
  %1012 = fmul fast float %1011, %949
  %1013 = fmul fast float %1012, %1010
  %1014 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 419)  ; CBufferLoadLegacy(handle,regIndex)
  %1015 = extractvalue %dx.types.CBufRet.f32 %1014, 0
  %1016 = extractvalue %dx.types.CBufRet.f32 %1014, 1
  %1017 = extractvalue %dx.types.CBufRet.f32 %1014, 2
  %1018 = call float @dx.op.dot3.f32(i32 55, float %272, float %273, float %274, float %1015, float %1016, float %1017)  ; Dot3(ax,ay,az,bx,by,bz)
  %1019 = fmul fast float %1018, %948
  %1020 = fcmp fast ogt float %953, 0.000000e+00
  %1021 = fdiv fast float 1.000000e+00, %953
  %1022 = fmul fast float %1019, %1021
  %1023 = select i1 %1020, float %1022, float %283
  %1024 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %1025 = extractvalue %dx.types.CBufRet.f32 %1024, 0
  %1026 = extractvalue %dx.types.CBufRet.f32 %1024, 1
  %1027 = extractvalue %dx.types.CBufRet.f32 %1024, 2
  %1028 = fmul fast float %1025, %236
  %1029 = fmul fast float %1026, %236
  %1030 = fmul fast float %1027, %236
  %1031 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %1032 = extractvalue %dx.types.CBufRet.f32 %1031, 0
  %1033 = extractvalue %dx.types.CBufRet.f32 %1031, 1
  %1034 = extractvalue %dx.types.CBufRet.f32 %1031, 2
  %1035 = fmul fast float %1032, %237
  %1036 = fmul fast float %1033, %237
  %1037 = fmul fast float %1034, %237
  %1038 = fadd fast float %1035, %1028
  %1039 = fadd fast float %1036, %1029
  %1040 = fadd fast float %1037, %1030
  %1041 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %1042 = extractvalue %dx.types.CBufRet.f32 %1041, 0
  %1043 = extractvalue %dx.types.CBufRet.f32 %1041, 1
  %1044 = extractvalue %dx.types.CBufRet.f32 %1041, 2
  %1045 = fadd fast float %1038, %1042
  %1046 = fadd fast float %1039, %1043
  %1047 = fadd fast float %1040, %1044
  %1048 = fmul fast float %1045, %1023
  %1049 = fmul fast float %1046, %1023
  %1050 = fmul fast float %1047, %1023
  %1051 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %1052 = extractvalue %dx.types.CBufRet.f32 %1051, 0
  %1053 = extractvalue %dx.types.CBufRet.f32 %1051, 1
  %1054 = extractvalue %dx.types.CBufRet.f32 %1051, 2
  %1055 = extractvalue %dx.types.CBufRet.f32 %1051, 3
  %1056 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %1057 = extractvalue %dx.types.CBufRet.f32 %1056, 0
  %1058 = extractvalue %dx.types.CBufRet.f32 %1056, 1
  %1059 = extractvalue %dx.types.CBufRet.f32 %1056, 2
  %1060 = extractvalue %dx.types.CBufRet.f32 %1056, 3
  %1061 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %1062 = extractvalue %dx.types.CBufRet.f32 %1061, 0
  %1063 = extractvalue %dx.types.CBufRet.f32 %1061, 1
  %1064 = extractvalue %dx.types.CBufRet.f32 %1061, 2
  %1065 = extractvalue %dx.types.CBufRet.f32 %1061, 3
  %1066 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %1067 = extractvalue %dx.types.CBufRet.f32 %1066, 0
  %1068 = extractvalue %dx.types.CBufRet.f32 %1066, 1
  %1069 = extractvalue %dx.types.CBufRet.f32 %1066, 2
  %1070 = extractvalue %dx.types.CBufRet.f32 %1066, 3
  %1071 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %1072 = extractvalue %dx.types.CBufRet.f32 %1071, 3
  %1073 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %1074 = extractvalue %dx.types.CBufRet.f32 %1073, 3
  %1075 = extractvalue %dx.types.CBufRet.f32 %1073, 0
  %1076 = extractvalue %dx.types.CBufRet.f32 %1073, 1
  %1077 = extractvalue %dx.types.CBufRet.f32 %1073, 2
  %1078 = fcmp fast olt float %1077, -5.000000e-01
  %1079 = call float @dx.op.dot3.f32(i32 55, float %1048, float %1049, float %1050, float %1048, float %1049, float %1050)  ; Dot3(ax,ay,az,bx,by,bz)
  %1080 = call float @dx.op.unary.f32(i32 25, float %1079)  ; Rsqrt(value)
  %1081 = fmul fast float %1080, %1079
  %1082 = fmul fast float %1080, %1048
  %1083 = fmul fast float %1080, %1049
  %1084 = fmul fast float %1080, %1050
  %1085 = fadd fast float %1081, %1055
  %1086 = call float @dx.op.dot3.f32(i32 55, float %1082, float %1083, float %1084, float %1052, float %1053, float %1054)  ; Dot3(ax,ay,az,bx,by,bz)
  %1087 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %13, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1088 = extractvalue %dx.types.CBufRet.i32 %1087, 1
  %1089 = and i32 %1088, 1
  %1090 = icmp ne i32 %1089, 0
  %1091 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %1092 = extractvalue %dx.types.CBufRet.f32 %1091, 2
  %1093 = fcmp fast ogt float %1092, 0.000000e+00
  %1094 = and i1 %1090, %1093
  br i1 %1094, label %1095, label %1501, !dx.controlflow.hints !43

; <label>:1095                                    ; preds = %1003
  %1096 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %1097 = extractvalue %dx.types.CBufRet.f32 %1096, 3
  %1098 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1099 = extractvalue %dx.types.CBufRet.f32 %1098, 2
  %1100 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1101 = extractvalue %dx.types.CBufRet.f32 %1100, 2
  %1102 = fsub fast float %1099, %1101
  %1103 = and i32 %1088, 2
  %1104 = extractvalue %dx.types.CBufRet.i32 %1087, 0
  %1105 = call i32 @dx.op.binary.i32(i32 40, i32 %1104, i32 3)  ; UMin(a,b)
  %1106 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %1107 = extractvalue %dx.types.CBufRet.f32 %1106, 0
  %1108 = extractvalue %dx.types.CBufRet.f32 %1106, 1
  %1109 = extractvalue %dx.types.CBufRet.f32 %1100, 0
  %1110 = extractvalue %dx.types.CBufRet.f32 %1100, 1
  %1111 = fsub fast float %1107, %1109
  %1112 = fsub fast float %1108, %1110
  %1113 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %1114 = extractvalue %dx.types.CBufRet.f32 %1113, 0
  %1115 = fcmp fast ogt float %1114, 0.000000e+00
  %1116 = fsub fast float -0.000000e+00, %1111
  %1117 = fsub fast float -0.000000e+00, %1112
  %1118 = call float @dx.op.dot2.f32(i32 54, float %1082, float %1083, float %1082, float %1083)  ; Dot2(ax,ay,bx,by)
  %1119 = call float @dx.op.dot2.f32(i32 54, float %1082, float %1083, float %1116, float %1117)  ; Dot2(ax,ay,bx,by)
  %1120 = fmul fast float %1119, 2.000000e+00
  %1121 = call float @dx.op.dot2.f32(i32 54, float %1116, float %1117, float %1116, float %1117)  ; Dot2(ax,ay,bx,by)
  %1122 = fmul fast float %1114, %1114
  %1123 = fsub fast float %1121, %1122
  %1124 = fmul fast float %1120, %1120
  %1125 = fmul fast float %1118, 4.000000e+00
  %1126 = fmul fast float %1125, %1123
  %1127 = fsub fast float %1124, %1126
  %1128 = fcmp fast ogt float %1127, 0.000000e+00
  br i1 %1128, label %1129, label %1144, !dx.controlflow.hints !44

; <label>:1129                                    ; preds = %1095
  %1130 = fcmp fast ogt float %1120, 0.000000e+00
  %1131 = call float @dx.op.unary.f32(i32 24, float %1127)  ; Sqrt(value)
  %1132 = fsub fast float -0.000000e+00, %1131
  %1133 = select i1 %1130, float %1131, float %1132
  %1134 = fadd fast float %1133, %1120
  %1135 = fmul float %1134, -5.000000e-01
  %1136 = fdiv fast float %1135, %1118
  %1137 = call float @dx.op.binary.f32(i32 35, float %1136, float 0.000000e+00)  ; FMax(a,b)
  %1138 = call float @dx.op.binary.f32(i32 36, float %1081, float %1137)  ; FMin(a,b)
  %1139 = fdiv fast float %1123, %1135
  %1140 = call float @dx.op.binary.f32(i32 35, float %1139, float 0.000000e+00)  ; FMax(a,b)
  %1141 = call float @dx.op.binary.f32(i32 36, float %1081, float %1140)  ; FMin(a,b)
  %1142 = call float @dx.op.binary.f32(i32 36, float %1138, float %1141)  ; FMin(a,b)
  %1143 = call float @dx.op.binary.f32(i32 35, float %1138, float %1141)  ; FMax(a,b)
  br label %1144

; <label>:1144                                    ; preds = %1129, %1095
  %1145 = phi float [ %1143, %1129 ], [ -1.000000e+00, %1095 ]
  %1146 = phi float [ %1142, %1129 ], [ -1.000000e+00, %1095 ]
  %1147 = phi i1 [ true, %1129 ], [ false, %1095 ]
  %1148 = and i1 %1115, %1147
  br i1 %1148, label %1149, label %1151, !dx.controlflow.hints !45

; <label>:1149                                    ; preds = %1144
  %1150 = fcmp fast oeq float %1146, %1145
  br i1 %1150, label %1454, label %1152, !dx.controlflow.hints !46

; <label>:1151                                    ; preds = %1144
  br i1 %1115, label %1454, label %1152, !dx.controlflow.hints !47

; <label>:1152                                    ; preds = %1151, %1149
  %1153 = phi float [ %1081, %1151 ], [ %1145, %1149 ]
  %1154 = phi float [ 0.000000e+00, %1151 ], [ %1146, %1149 ]
  %1155 = icmp ne i32 %1103, 0
  %1156 = fmul fast float %1153, %1084
  %1157 = fadd fast float %1156, %1097
  %1158 = fmul fast float %1157, %1153
  %1159 = select i1 %1155, float 0.000000e+00, float %1158
  %1160 = fcmp fast oeq float %1084, 0.000000e+00
  %1161 = fdiv fast float %1102, %1084
  %1162 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1161)  ; FMax(a,b)
  %1163 = select i1 %1160, float %1153, float %1162
  %1164 = call float @dx.op.binary.f32(i32 36, float %1153, float %1163)  ; FMin(a,b)
  %1165 = fcmp fast ogt float %1084, 0.000000e+00
  %1166 = fcmp fast olt float %1102, 0.000000e+00
  br i1 %1165, label %1167, label %1224, !dx.controlflow.hints !48

; <label>:1167                                    ; preds = %1152
  %1168 = icmp eq i32 %1103, 0
  br i1 %1166, label %1169, label %1213, !dx.controlflow.hints !49

; <label>:1169                                    ; preds = %1167
  %1170 = select i1 %1168, float %1153, float 0.000000e+00
  %1171 = fsub fast float -0.000000e+00, %1170
  %1172 = call float @dx.op.unary.f32(i32 6, float %1171)  ; FAbs(value)
  %1173 = fmul fast float %1170, %1084
  %1174 = fadd fast float %1173, %1097
  %1175 = fmul fast float %1172, %1174
  %1176 = fsub fast float %1159, %1175
  %1177 = fsub fast float %1153, %1172
  %1178 = select i1 %1168, float %1177, float 0.000000e+00
  %1179 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %1180 = extractvalue %dx.types.CBufRet.f32 %1179, 0
  %1181 = extractvalue %dx.types.CBufRet.f32 %1179, 1
  %1182 = extractvalue %dx.types.CBufRet.f32 %1179, 2
  %1183 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %1184 = extractvalue %dx.types.CBufRet.f32 %1183, 0
  %1185 = extractvalue %dx.types.CBufRet.f32 %1183, 1
  %1186 = extractvalue %dx.types.CBufRet.f32 %1183, 2
  %1187 = extractvalue %dx.types.CBufRet.f32 %1183, 3
  %1188 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %1189 = extractvalue %dx.types.CBufRet.f32 %1188, 3
  %1190 = call float @dx.op.binary.f32(i32 36, float %1176, float %1189)  ; FMin(a,b)
  %1191 = fmul fast float %1187, %1178
  %1192 = call float @dx.op.unary.f32(i32 7, float %1191)  ; Saturate(value)
  %1193 = fsub fast float %1184, %1180
  %1194 = fsub fast float %1185, %1181
  %1195 = fsub fast float %1186, %1182
  %1196 = fmul fast float %1192, %1193
  %1197 = fmul fast float %1192, %1194
  %1198 = fmul fast float %1192, %1195
  %1199 = fadd fast float %1196, %1180
  %1200 = fadd fast float %1197, %1181
  %1201 = fadd fast float %1198, %1182
  %1202 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %1203 = extractvalue %dx.types.CBufRet.f32 %1202, 0
  %1204 = extractvalue %dx.types.CBufRet.f32 %1202, 1
  %1205 = fadd fast float %1204, %1203
  %1206 = call float @dx.op.unary.f32(i32 7, float %1205)  ; Saturate(value)
  %1207 = extractvalue %dx.types.CBufRet.f32 %1202, 2
  %1208 = extractvalue %dx.types.CBufRet.f32 %1202, 3
  %1209 = fadd fast float %1208, %1207
  %1210 = call float @dx.op.unary.f32(i32 7, float %1209)  ; Saturate(value)
  %1211 = fmul fast float %1206, %1190
  %1212 = fmul fast float %1211, %1210
  br label %1454

; <label>:1213                                    ; preds = %1167
  br i1 %1168, label %1214, label %1235, !dx.controlflow.hints !50

; <label>:1214                                    ; preds = %1213
  %1215 = call float @dx.op.binary.f32(i32 36, float %1164, float %1154)  ; FMin(a,b)
  %1216 = fsub fast float %1164, %1215
  %1217 = fsub fast float %1216, %1153
  %1218 = call float @dx.op.unary.f32(i32 6, float %1217)  ; FAbs(value)
  %1219 = fadd fast float %1216, %1153
  %1220 = fmul fast float %1219, %1084
  %1221 = fadd fast float %1220, %1097
  %1222 = fmul fast float %1221, %1218
  %1223 = fsub fast float %1159, %1222
  br label %1235

; <label>:1224                                    ; preds = %1152
  br i1 %1166, label %1225, label %1235, !dx.controlflow.hints !51

; <label>:1225                                    ; preds = %1224
  %1226 = call float @dx.op.binary.f32(i32 35, float %1154, float %1164)  ; FMax(a,b)
  %1227 = icmp eq i32 %1103, 0
  %1228 = select i1 %1227, float %1164, float 0.000000e+00
  %1229 = fsub fast float -0.000000e+00, %1228
  %1230 = call float @dx.op.unary.f32(i32 6, float %1229)  ; FAbs(value)
  %1231 = fmul fast float %1228, %1084
  %1232 = fadd fast float %1231, %1097
  %1233 = fmul fast float %1230, %1232
  %1234 = fsub fast float %1159, %1233
  br label %1235

; <label>:1235                                    ; preds = %1225, %1224, %1214, %1213
  %1236 = phi float [ %1154, %1213 ], [ %1154, %1214 ], [ %1226, %1225 ], [ %1154, %1224 ]
  %1237 = phi float [ 0.000000e+00, %1213 ], [ %1218, %1214 ], [ %1230, %1225 ], [ 0.000000e+00, %1224 ]
  %1238 = phi float [ %1159, %1213 ], [ %1223, %1214 ], [ %1234, %1225 ], [ %1159, %1224 ]
  %1239 = phi float [ %1164, %1213 ], [ %1164, %1214 ], [ %1153, %1225 ], [ %1153, %1224 ]
  %1240 = getelementptr inbounds [3 x float], [3 x float]* %17, i32 0, i32 0
  store float -1.000000e+00, float* %1240, align 4, !tbaa !52, !noalias !56
  %1241 = getelementptr inbounds [3 x float], [3 x float]* %17, i32 0, i32 1
  store float -1.000000e+00, float* %1241, align 4, !tbaa !52, !noalias !56
  %1242 = getelementptr inbounds [3 x float], [3 x float]* %17, i32 0, i32 2
  store float -1.000000e+00, float* %1242, align 4, !tbaa !52, !noalias !56
  %1243 = getelementptr inbounds [3 x float], [3 x float]* %18, i32 0, i32 0
  store float -1.000000e+00, float* %1243, align 4, !tbaa !52, !noalias !56
  %1244 = getelementptr inbounds [3 x float], [3 x float]* %18, i32 0, i32 1
  store float -1.000000e+00, float* %1244, align 4, !tbaa !52, !noalias !56
  %1245 = getelementptr inbounds [3 x float], [3 x float]* %18, i32 0, i32 2
  store float -1.000000e+00, float* %1245, align 4, !tbaa !52, !noalias !56
  %1246 = icmp sgt i32 %1105, 0
  br i1 %1246, label %1247, label %1308

; <label>:1247                                    ; preds = %1235
  br label %1248

; <label>:1248                                    ; preds = %1297, %1247
  %1249 = phi i32 [ %1298, %1297 ], [ 0, %1247 ]
  %1250 = phi i32 [ %1299, %1297 ], [ 0, %1247 ]
  %1251 = add nuw i32 %1250, 171
  %1252 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 %1251)  ; CBufferLoadLegacy(handle,regIndex)
  %1253 = extractvalue %dx.types.CBufRet.f32 %1252, 0
  %1254 = extractvalue %dx.types.CBufRet.f32 %1252, 1
  %1255 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1256 = extractvalue %dx.types.CBufRet.f32 %1255, 0
  %1257 = extractvalue %dx.types.CBufRet.f32 %1255, 1
  %1258 = fsub fast float %1253, %1256
  %1259 = fsub fast float %1254, %1257
  %1260 = extractvalue %dx.types.CBufRet.f32 %1252, 2
  %1261 = fsub fast float -0.000000e+00, %1258
  %1262 = fsub fast float -0.000000e+00, %1259
  %1263 = call float @dx.op.dot2.f32(i32 54, float %1082, float %1083, float %1261, float %1262)  ; Dot2(ax,ay,bx,by)
  %1264 = fmul fast float %1263, 2.000000e+00
  %1265 = call float @dx.op.dot2.f32(i32 54, float %1261, float %1262, float %1261, float %1262)  ; Dot2(ax,ay,bx,by)
  %1266 = fmul fast float %1260, %1260
  %1267 = fsub fast float %1265, %1266
  %1268 = fmul fast float %1264, %1264
  %1269 = fmul fast float %1125, %1267
  %1270 = fsub fast float %1268, %1269
  %1271 = fcmp fast ogt float %1270, 0.000000e+00
  br i1 %1271, label %1272, label %1287, !dx.controlflow.hints !44

; <label>:1272                                    ; preds = %1248
  %1273 = fcmp fast ogt float %1264, 0.000000e+00
  %1274 = call float @dx.op.unary.f32(i32 24, float %1270)  ; Sqrt(value)
  %1275 = fsub fast float -0.000000e+00, %1274
  %1276 = select i1 %1273, float %1274, float %1275
  %1277 = fadd fast float %1276, %1264
  %1278 = fmul float %1277, -5.000000e-01
  %1279 = fdiv fast float %1278, %1118
  %1280 = call float @dx.op.binary.f32(i32 35, float %1279, float 0.000000e+00)  ; FMax(a,b)
  %1281 = call float @dx.op.binary.f32(i32 36, float %1153, float %1280)  ; FMin(a,b)
  %1282 = fdiv fast float %1267, %1278
  %1283 = call float @dx.op.binary.f32(i32 35, float %1282, float 0.000000e+00)  ; FMax(a,b)
  %1284 = call float @dx.op.binary.f32(i32 36, float %1153, float %1283)  ; FMin(a,b)
  %1285 = call float @dx.op.binary.f32(i32 36, float %1281, float %1284)  ; FMin(a,b)
  %1286 = call float @dx.op.binary.f32(i32 35, float %1281, float %1284)  ; FMax(a,b)
  br label %1287

; <label>:1287                                    ; preds = %1272, %1248
  %1288 = phi float [ %1286, %1272 ], [ -1.000000e+00, %1248 ]
  %1289 = phi float [ %1285, %1272 ], [ -1.000000e+00, %1248 ]
  %1290 = phi i1 [ true, %1272 ], [ false, %1248 ]
  br i1 %1290, label %1291, label %1297, !dx.controlflow.hints !67

; <label>:1291                                    ; preds = %1287
  %1292 = call float @dx.op.binary.f32(i32 35, float %1236, float %1289)  ; FMax(a,b)
  %1293 = getelementptr inbounds [3 x float], [3 x float]* %17, i32 0, i32 %1250
  store float %1292, float* %1293, align 4, !tbaa !52, !noalias !56
  %1294 = call float @dx.op.binary.f32(i32 35, float %1236, float %1288)  ; FMax(a,b)
  %1295 = getelementptr inbounds [3 x float], [3 x float]* %18, i32 0, i32 %1250
  store float %1294, float* %1295, align 4, !tbaa !52, !noalias !56
  %1296 = add nsw i32 %1249, 1
  br label %1297

; <label>:1297                                    ; preds = %1291, %1287
  %1298 = phi i32 [ %1296, %1291 ], [ %1249, %1287 ]
  %1299 = add nuw nsw i32 %1250, 1
  %1300 = icmp eq i32 %1299, %1105
  br i1 %1300, label %1301, label %1248

; <label>:1301                                    ; preds = %1297
  %1302 = load float, float* %1242, align 4, !tbaa !52, !alias.scope !68, !noalias !71
  %1303 = load float, float* %1241, align 4, !tbaa !52, !alias.scope !74, !noalias !75
  %1304 = load float, float* %1240, align 4, !tbaa !52, !alias.scope !76, !noalias !77
  %1305 = load float, float* %1245, align 4, !tbaa !52, !alias.scope !78, !noalias !81
  %1306 = load float, float* %1244, align 4, !tbaa !52, !alias.scope !84, !noalias !85
  %1307 = load float, float* %1243, align 4, !tbaa !52, !alias.scope !86, !noalias !87
  br label %1308

; <label>:1308                                    ; preds = %1301, %1235
  %1309 = phi float [ -1.000000e+00, %1235 ], [ %1307, %1301 ]
  %1310 = phi float [ -1.000000e+00, %1235 ], [ %1306, %1301 ]
  %1311 = phi float [ -1.000000e+00, %1235 ], [ %1305, %1301 ]
  %1312 = phi float [ -1.000000e+00, %1235 ], [ %1304, %1301 ]
  %1313 = phi float [ -1.000000e+00, %1235 ], [ %1303, %1301 ]
  %1314 = phi float [ -1.000000e+00, %1235 ], [ %1302, %1301 ]
  %1315 = phi i32 [ 0, %1235 ], [ %1298, %1301 ]
  %1316 = call float @dx.op.binary.f32(i32 36, float %1313, float %1314)  ; FMin(a,b)
  %1317 = call float @dx.op.binary.f32(i32 36, float %1312, float %1316)  ; FMin(a,b)
  %1318 = call float @dx.op.binary.f32(i32 35, float %1312, float %1313)  ; FMax(a,b)
  %1319 = call float @dx.op.binary.f32(i32 36, float %1318, float %1314)  ; FMin(a,b)
  %1320 = call float @dx.op.binary.f32(i32 36, float %1312, float %1313)  ; FMin(a,b)
  %1321 = call float @dx.op.binary.f32(i32 35, float %1320, float %1319)  ; FMax(a,b)
  %1322 = call float @dx.op.binary.f32(i32 35, float %1313, float %1314)  ; FMax(a,b)
  %1323 = call float @dx.op.binary.f32(i32 35, float %1312, float %1322)  ; FMax(a,b)
  store float %1317, float* %1240, align 4, !tbaa !52, !alias.scope !76, !noalias !77
  store float %1321, float* %1241, align 4, !tbaa !52, !alias.scope !74, !noalias !75
  store float %1323, float* %1242, align 4, !tbaa !52, !alias.scope !68, !noalias !71
  %1324 = call float @dx.op.binary.f32(i32 36, float %1310, float %1311)  ; FMin(a,b)
  %1325 = call float @dx.op.binary.f32(i32 36, float %1309, float %1324)  ; FMin(a,b)
  %1326 = call float @dx.op.binary.f32(i32 35, float %1309, float %1310)  ; FMax(a,b)
  %1327 = call float @dx.op.binary.f32(i32 36, float %1326, float %1311)  ; FMin(a,b)
  %1328 = call float @dx.op.binary.f32(i32 36, float %1309, float %1310)  ; FMin(a,b)
  %1329 = call float @dx.op.binary.f32(i32 35, float %1328, float %1327)  ; FMax(a,b)
  %1330 = call float @dx.op.binary.f32(i32 35, float %1310, float %1311)  ; FMax(a,b)
  %1331 = call float @dx.op.binary.f32(i32 35, float %1309, float %1330)  ; FMax(a,b)
  store float %1325, float* %1243, align 4, !tbaa !52, !alias.scope !86, !noalias !87
  store float %1329, float* %1244, align 4, !tbaa !52, !alias.scope !84, !noalias !85
  store float %1331, float* %1245, align 4, !tbaa !52, !alias.scope !78, !noalias !81
  %1332 = sub nsw i32 3, %1315
  %1333 = icmp sgt i32 %1332, 2
  br i1 %1333, label %1334, label %1372, !dx.controlflow.hints !88

; <label>:1334                                    ; preds = %1308
  %1335 = icmp eq i32 %1103, 0
  %1336 = fsub fast float %1153, %1237
  %1337 = select i1 %1335, float %1336, float %1237
  %1338 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %1339 = extractvalue %dx.types.CBufRet.f32 %1338, 0
  %1340 = extractvalue %dx.types.CBufRet.f32 %1338, 1
  %1341 = extractvalue %dx.types.CBufRet.f32 %1338, 2
  %1342 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %1343 = extractvalue %dx.types.CBufRet.f32 %1342, 0
  %1344 = extractvalue %dx.types.CBufRet.f32 %1342, 1
  %1345 = extractvalue %dx.types.CBufRet.f32 %1342, 2
  %1346 = extractvalue %dx.types.CBufRet.f32 %1342, 3
  %1347 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %1348 = extractvalue %dx.types.CBufRet.f32 %1347, 3
  %1349 = call float @dx.op.binary.f32(i32 36, float %1238, float %1348)  ; FMin(a,b)
  %1350 = fmul fast float %1346, %1337
  %1351 = call float @dx.op.unary.f32(i32 7, float %1350)  ; Saturate(value)
  %1352 = fsub fast float %1343, %1339
  %1353 = fsub fast float %1344, %1340
  %1354 = fsub fast float %1345, %1341
  %1355 = fmul fast float %1351, %1352
  %1356 = fmul fast float %1351, %1353
  %1357 = fmul fast float %1351, %1354
  %1358 = fadd fast float %1355, %1339
  %1359 = fadd fast float %1356, %1340
  %1360 = fadd fast float %1357, %1341
  %1361 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %1362 = extractvalue %dx.types.CBufRet.f32 %1361, 0
  %1363 = extractvalue %dx.types.CBufRet.f32 %1361, 1
  %1364 = fadd fast float %1363, %1362
  %1365 = call float @dx.op.unary.f32(i32 7, float %1364)  ; Saturate(value)
  %1366 = extractvalue %dx.types.CBufRet.f32 %1361, 2
  %1367 = extractvalue %dx.types.CBufRet.f32 %1361, 3
  %1368 = fadd fast float %1367, %1366
  %1369 = call float @dx.op.unary.f32(i32 7, float %1368)  ; Saturate(value)
  %1370 = fmul fast float %1365, %1349
  %1371 = fmul fast float %1370, %1369
  br label %1454

; <label>:1372                                    ; preds = %1308
  %1373 = getelementptr inbounds [3 x float], [3 x float]* %17, i32 0, i32 %1332
  %1374 = load float, float* %1373, align 4, !tbaa !52, !noalias !56
  %1375 = fcmp fast olt float %1374, %1239
  %1376 = icmp sgt i32 %1315, 0
  %1377 = and i1 %1376, %1375
  br i1 %1377, label %1378, label %1415

; <label>:1378                                    ; preds = %1372
  br label %1379

; <label>:1379                                    ; preds = %1408, %1378
  %1380 = phi float [ %1409, %1408 ], [ %1237, %1378 ]
  %1381 = phi float [ %1410, %1408 ], [ %1238, %1378 ]
  %1382 = phi float [ %1390, %1408 ], [ %1374, %1378 ]
  %1383 = phi i32 [ %1387, %1408 ], [ %1332, %1378 ]
  %1384 = getelementptr inbounds [3 x float], [3 x float]* %18, i32 0, i32 %1383
  %1385 = load float, float* %1384, align 4, !tbaa !52, !noalias !56
  %1386 = icmp slt i32 %1383, 2
  %1387 = add nsw i32 %1383, 1
  %1388 = getelementptr inbounds [3 x float], [3 x float]* %17, i32 0, i32 %1387
  %1389 = load float, float* %1388, align 4, !tbaa !52, !noalias !56
  %1390 = select i1 %1386, float %1389, float %1153
  %1391 = call float @dx.op.binary.f32(i32 36, float %1390, float %1385)  ; FMin(a,b)
  %1392 = call float @dx.op.binary.f32(i32 36, float %1239, float %1391)  ; FMin(a,b)
  %1393 = icmp eq i32 %1103, 0
  %1394 = fadd fast float %1392, %1382
  %1395 = fmul fast float %1394, %1084
  %1396 = fadd fast float %1395, %1097
  br i1 %1393, label %1402, label %1397, !dx.controlflow.hints !89

; <label>:1397                                    ; preds = %1379
  %1398 = fsub fast float %1392, %1382
  %1399 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1398)  ; FMax(a,b)
  %1400 = fmul fast float %1399, %1396
  %1401 = fadd fast float %1400, %1381
  br label %1408

; <label>:1402                                    ; preds = %1379
  %1403 = fsub fast float %1382, %1392
  %1404 = call float @dx.op.unary.f32(i32 6, float %1403)  ; FAbs(value)
  %1405 = fadd fast float %1404, %1380
  %1406 = fmul fast float %1404, %1396
  %1407 = fsub fast float %1381, %1406
  br label %1408

; <label>:1408                                    ; preds = %1402, %1397
  %1409 = phi float [ %1399, %1397 ], [ %1405, %1402 ]
  %1410 = phi float [ %1401, %1397 ], [ %1407, %1402 ]
  %1411 = fcmp fast olt float %1390, %1239
  %1412 = icmp slt i32 %1387, 3
  %1413 = and i1 %1412, %1411
  br i1 %1413, label %1379, label %1414

; <label>:1414                                    ; preds = %1408
  br label %1415

; <label>:1415                                    ; preds = %1414, %1372
  %1416 = phi float [ %1237, %1372 ], [ %1409, %1414 ]
  %1417 = phi float [ %1238, %1372 ], [ %1410, %1414 ]
  %1418 = fsub fast float %1153, %1416
  %1419 = select i1 %1155, float %1416, float %1418
  %1420 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %1421 = extractvalue %dx.types.CBufRet.f32 %1420, 0
  %1422 = extractvalue %dx.types.CBufRet.f32 %1420, 1
  %1423 = extractvalue %dx.types.CBufRet.f32 %1420, 2
  %1424 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %1425 = extractvalue %dx.types.CBufRet.f32 %1424, 0
  %1426 = extractvalue %dx.types.CBufRet.f32 %1424, 1
  %1427 = extractvalue %dx.types.CBufRet.f32 %1424, 2
  %1428 = extractvalue %dx.types.CBufRet.f32 %1424, 3
  %1429 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %1430 = extractvalue %dx.types.CBufRet.f32 %1429, 3
  %1431 = call float @dx.op.binary.f32(i32 36, float %1417, float %1430)  ; FMin(a,b)
  %1432 = fmul fast float %1428, %1419
  %1433 = call float @dx.op.unary.f32(i32 7, float %1432)  ; Saturate(value)
  %1434 = fsub fast float %1425, %1421
  %1435 = fsub fast float %1426, %1422
  %1436 = fsub fast float %1427, %1423
  %1437 = fmul fast float %1433, %1434
  %1438 = fmul fast float %1433, %1435
  %1439 = fmul fast float %1433, %1436
  %1440 = fadd fast float %1437, %1421
  %1441 = fadd fast float %1438, %1422
  %1442 = fadd fast float %1439, %1423
  %1443 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %1444 = extractvalue %dx.types.CBufRet.f32 %1443, 0
  %1445 = extractvalue %dx.types.CBufRet.f32 %1443, 1
  %1446 = fadd fast float %1445, %1444
  %1447 = call float @dx.op.unary.f32(i32 7, float %1446)  ; Saturate(value)
  %1448 = extractvalue %dx.types.CBufRet.f32 %1443, 2
  %1449 = extractvalue %dx.types.CBufRet.f32 %1443, 3
  %1450 = fadd fast float %1449, %1448
  %1451 = call float @dx.op.unary.f32(i32 7, float %1450)  ; Saturate(value)
  %1452 = fmul fast float %1447, %1431
  %1453 = fmul fast float %1452, %1451
  br label %1454

; <label>:1454                                    ; preds = %1415, %1334, %1169, %1151, %1149
  %1455 = phi float [ %1178, %1169 ], [ %1337, %1334 ], [ %1419, %1415 ], [ 0.000000e+00, %1149 ], [ 0.000000e+00, %1151 ]
  %1456 = phi float [ %1212, %1169 ], [ %1371, %1334 ], [ %1453, %1415 ], [ 0.000000e+00, %1149 ], [ 0.000000e+00, %1151 ]
  %1457 = phi float [ %1199, %1169 ], [ %1358, %1334 ], [ %1440, %1415 ], [ 0.000000e+00, %1149 ], [ 0.000000e+00, %1151 ]
  %1458 = phi float [ %1200, %1169 ], [ %1359, %1334 ], [ %1441, %1415 ], [ 0.000000e+00, %1149 ], [ 0.000000e+00, %1151 ]
  %1459 = phi float [ %1201, %1169 ], [ %1360, %1334 ], [ %1442, %1415 ], [ 0.000000e+00, %1149 ], [ 0.000000e+00, %1151 ]
  %1460 = fmul fast float %1092, %1456
  %1461 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1462 = extractvalue %dx.types.CBufRet.f32 %1461, 2
  %1463 = fsub fast float %1099, %1462
  %1464 = fcmp fast olt float %1460, -2.000000e+01
  %1465 = call float @dx.op.unary.f32(i32 21, float %1460)  ; Exp(value)
  %1466 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %1467 = extractvalue %dx.types.CBufRet.f32 %1466, 2
  %1468 = extractvalue %dx.types.CBufRet.f32 %1466, 3
  %1469 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %1470 = extractvalue %dx.types.CBufRet.f32 %1469, 2
  %1471 = fmul fast float %1468, %1463
  %1472 = call float @dx.op.unary.f32(i32 7, float %1471)  ; Saturate(value)
  %1473 = fsub fast float 1.000000e+00, %1472
  %1474 = fmul fast float %1084, 5.000000e-01
  %1475 = fadd fast float %1474, 5.000000e-01
  %1476 = call float @dx.op.unary.f32(i32 7, float %1475)  ; Saturate(value)
  %1477 = fsub fast float 1.000000e+00, %1476
  %1478 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %1473)  ; FMax(a,b)
  %1479 = fdiv fast float %1477, %1478
  %1480 = fsub fast float %1463, %1050
  %1481 = call float @dx.op.unary.f32(i32 6, float %1480)  ; FAbs(value)
  %1482 = fmul fast float %1481, %1467
  %1483 = call float @dx.op.unary.f32(i32 7, float %1479)  ; Saturate(value)
  %1484 = fsub fast float 1.000000e+00, %1482
  %1485 = fmul fast float %1484, %1483
  %1486 = fadd fast float %1485, %1482
  %1487 = fmul fast float %1470, %1463
  %1488 = call float @dx.op.unary.f32(i32 7, float %1487)  ; Saturate(value)
  %1489 = fsub fast float 1.000000e+00, %1486
  %1490 = fmul fast float %1489, %1488
  %1491 = fadd fast float %1490, %1486
  %1492 = call float @dx.op.unary.f32(i32 7, float %1491)  ; Saturate(value)
  %1493 = fadd fast float %1465, -1.000000e+00
  %1494 = select i1 %1464, float -1.000000e+00, float %1493
  %1495 = fmul fast float %1492, %1494
  %1496 = fadd fast float %1495, 1.000000e+00
  %1497 = fsub fast float -0.000000e+00, %1495
  %1498 = fmul fast float %1457, %1497
  %1499 = fmul fast float %1458, %1497
  %1500 = fmul fast float %1459, %1497
  br label %1501

; <label>:1501                                    ; preds = %1454, %1003
  %1502 = phi float [ %1455, %1454 ], [ 0.000000e+00, %1003 ]
  %1503 = phi float [ %1496, %1454 ], [ 1.000000e+00, %1003 ]
  %1504 = phi float [ %1498, %1454 ], [ 0.000000e+00, %1003 ]
  %1505 = phi float [ %1499, %1454 ], [ 0.000000e+00, %1003 ]
  %1506 = phi float [ %1500, %1454 ], [ 0.000000e+00, %1003 ]
  %1507 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %1508 = extractvalue %dx.types.CBufRet.f32 %1507, 1
  %1509 = fsub fast float 1.000000e+00, %1503
  %1510 = fmul fast float %1509, %1085
  %1511 = fmul fast float %1510, %1508
  %1512 = fsub fast float %1085, %1511
  br i1 %1078, label %1513, label %1542, !dx.controlflow.hints !90

; <label>:1513                                    ; preds = %1501
  %1514 = fmul fast float %1086, %1075
  %1515 = fadd fast float %1514, %1076
  %1516 = call float @dx.op.unary.f32(i32 7, float %1515)  ; Saturate(value)
  %1517 = fmul fast float %1057, %1512
  %1518 = fsub fast float -0.000000e+00, %1517
  %1519 = fmul fast float %1058, %1512
  %1520 = fsub fast float -0.000000e+00, %1519
  %1521 = call float @dx.op.unary.f32(i32 21, float %1518)  ; Exp(value)
  %1522 = call float @dx.op.unary.f32(i32 21, float %1520)  ; Exp(value)
  %1523 = call float @dx.op.binary.f32(i32 35, float %1065, float %1521)  ; FMax(a,b)
  %1524 = call float @dx.op.binary.f32(i32 35, float %1065, float %1522)  ; FMax(a,b)
  %1525 = fsub fast float %1524, %1523
  %1526 = fmul fast float %1525, %1516
  %1527 = fadd fast float %1526, %1523
  %1528 = call float @dx.op.unary.f32(i32 7, float %1527)  ; Saturate(value)
  %1529 = fsub fast float %1062, %1067
  %1530 = fsub fast float %1063, %1068
  %1531 = fsub fast float %1064, %1069
  %1532 = fmul fast float %1516, %1529
  %1533 = fmul fast float %1516, %1530
  %1534 = fmul fast float %1516, %1531
  %1535 = fadd fast float %1532, %1067
  %1536 = fadd fast float %1533, %1068
  %1537 = fadd fast float %1534, %1069
  %1538 = fsub fast float 1.000000e+00, %1528
  %1539 = fmul fast float %1538, %1535
  %1540 = fmul fast float %1538, %1536
  %1541 = fmul fast float %1538, %1537
  br label %1601

; <label>:1542                                    ; preds = %1501
  %1543 = fmul fast float %1512, %1074
  %1544 = call float @dx.op.unary.f32(i32 7, float %1543)  ; Saturate(value)
  %1545 = fsub fast float 2.000000e+00, %1544
  %1546 = fmul fast float %1544, 9.921875e-01
  %1547 = fmul fast float %1546, %1545
  %1548 = fadd fast float %1547, 3.906250e-03
  %1549 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %11, float %1548, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1550 = extractvalue %dx.types.ResRet.f32 %1549, 0
  %1551 = fsub fast float %1544, %1550
  %1552 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1551)  ; FMax(a,b)
  %1553 = fmul fast float %1060, %1050
  %1554 = call float @dx.op.unary.f32(i32 6, float %1553)  ; FAbs(value)
  %1555 = fcmp fast ogt float %1554, 0x3EB0C6F7A0000000
  br i1 %1555, label %1556, label %1562, !dx.controlflow.hints !91

; <label>:1556                                    ; preds = %1542
  %1557 = fmul fast float %1553, 0xBFF7154760000000
  %1558 = call float @dx.op.unary.f32(i32 21, float %1557)  ; Exp(value)
  %1559 = fsub fast float 1.000000e+00, %1558
  %1560 = fdiv fast float %1559, %1553
  %1561 = fmul fast float %1560, %1070
  br label %1562

; <label>:1562                                    ; preds = %1556, %1542
  %1563 = phi float [ %1561, %1556 ], [ %1070, %1542 ]
  %1564 = fadd fast float %1563, %1072
  %1565 = fmul fast float %1564, %1552
  %1566 = fmul fast float %1057, %1565
  %1567 = fsub fast float -0.000000e+00, %1566
  %1568 = fmul fast float %1058, %1565
  %1569 = fsub fast float -0.000000e+00, %1568
  %1570 = fmul fast float %1059, %1565
  %1571 = fsub fast float -0.000000e+00, %1570
  %1572 = call float @dx.op.unary.f32(i32 21, float %1567)  ; Exp(value)
  %1573 = call float @dx.op.unary.f32(i32 21, float %1569)  ; Exp(value)
  %1574 = call float @dx.op.unary.f32(i32 21, float %1571)  ; Exp(value)
  %1575 = fmul fast float %1086, %1086
  %1576 = fadd fast float %1575, 1.000000e+00
  %1577 = fmul fast float %1576, 0x3FAE8EC8A0000000
  %1578 = fmul fast float %1577, %1067
  %1579 = fmul fast float %1577, %1068
  %1580 = fmul fast float %1577, %1069
  %1581 = fmul fast float %1086, %1065
  %1582 = fsub fast float 1.000000e+00, %1581
  %1583 = fmul fast float %1065, %1065
  %1584 = fsub fast float 1.000000e+00, %1583
  %1585 = fmul fast float %1584, 0x3FB45F3060000000
  %1586 = fmul fast float %1582, %1582
  %1587 = fdiv fast float 1.000000e+00, %1586
  %1588 = fmul fast float %1585, %1587
  %1589 = fmul fast float %1588, %1062
  %1590 = fmul fast float %1588, %1063
  %1591 = fmul fast float %1588, %1064
  %1592 = fadd fast float %1589, %1578
  %1593 = fadd fast float %1590, %1579
  %1594 = fadd fast float %1591, %1580
  %1595 = fsub fast float 1.000000e+00, %1572
  %1596 = fsub fast float 1.000000e+00, %1573
  %1597 = fsub fast float 1.000000e+00, %1574
  %1598 = fmul fast float %1592, %1595
  %1599 = fmul fast float %1593, %1596
  %1600 = fmul fast float %1594, %1597
  br label %1601

; <label>:1601                                    ; preds = %1562, %1513
  %1602 = phi float [ %1539, %1513 ], [ %1598, %1562 ]
  %1603 = phi float [ %1540, %1513 ], [ %1599, %1562 ]
  %1604 = phi float [ %1541, %1513 ], [ %1600, %1562 ]
  %1605 = phi float [ %1528, %1513 ], [ %1572, %1562 ]
  %1606 = phi float [ %1528, %1513 ], [ %1573, %1562 ]
  %1607 = phi float [ %1528, %1513 ], [ %1574, %1562 ]
  br i1 %1094, label %1608, label %1806, !dx.controlflow.hints !92

; <label>:1608                                    ; preds = %1601
  %1609 = extractvalue %dx.types.CBufRet.f32 %1507, 0
  %1610 = fmul fast float %1609, %1509
  %1611 = fsub fast float %1504, %1602
  %1612 = fsub fast float %1505, %1603
  %1613 = fsub fast float %1506, %1604
  %1614 = fmul fast float %1610, %1611
  %1615 = fmul fast float %1610, %1612
  %1616 = fmul fast float %1610, %1613
  %1617 = fadd fast float %1614, %1602
  %1618 = fadd fast float %1615, %1603
  %1619 = fadd fast float %1616, %1604
  %1620 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %1605)  ; FMax(a,b)
  %1621 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %1606)  ; FMax(a,b)
  %1622 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %1607)  ; FMax(a,b)
  %1623 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %1503)  ; FMax(a,b)
  %1624 = call float @dx.op.binary.f32(i32 35, float %1502, float %1512)  ; FMax(a,b)
  %1625 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %1624)  ; FMax(a,b)
  %1626 = fdiv fast float %1502, %1625
  %1627 = call float @dx.op.unary.f32(i32 7, float %1626)  ; Saturate(value)
  %1628 = fdiv fast float %1512, %1625
  %1629 = call float @dx.op.unary.f32(i32 7, float %1628)  ; Saturate(value)
  %1630 = fcmp fast une float %1623, 1.000000e+00
  br i1 %1630, label %1631, label %1644, !dx.controlflow.hints !93

; <label>:1631                                    ; preds = %1608
  %1632 = call float @dx.op.unary.f32(i32 23, float %1623)  ; Log(value)
  %1633 = fmul fast float %1632, 0x3FE62E4300000000
  %1634 = fmul fast float %1504, %1633
  %1635 = fsub fast float -0.000000e+00, %1634
  %1636 = fmul fast float %1505, %1633
  %1637 = fsub fast float -0.000000e+00, %1636
  %1638 = fmul fast float %1506, %1633
  %1639 = fsub fast float -0.000000e+00, %1638
  %1640 = fsub fast float 1.000000e+00, %1623
  %1641 = fdiv fast float %1635, %1640
  %1642 = fdiv fast float %1637, %1640
  %1643 = fdiv fast float %1639, %1640
  br label %1644

; <label>:1644                                    ; preds = %1631, %1608
  %1645 = phi float [ %1641, %1631 ], [ %1504, %1608 ]
  %1646 = phi float [ %1642, %1631 ], [ %1505, %1608 ]
  %1647 = phi float [ %1643, %1631 ], [ %1506, %1608 ]
  %1648 = phi float [ %1633, %1631 ], [ 0.000000e+00, %1608 ]
  %1649 = fcmp fast une float %1620, 1.000000e+00
  br i1 %1649, label %1650, label %1657, !dx.controlflow.hints !94

; <label>:1650                                    ; preds = %1644
  %1651 = call float @dx.op.unary.f32(i32 23, float %1620)  ; Log(value)
  %1652 = fmul fast float %1651, 0x3FE62E4300000000
  %1653 = fmul fast float %1617, %1652
  %1654 = fsub fast float -0.000000e+00, %1653
  %1655 = fsub fast float 1.000000e+00, %1620
  %1656 = fdiv fast float %1654, %1655
  br label %1657

; <label>:1657                                    ; preds = %1650, %1644
  %1658 = phi float [ %1656, %1650 ], [ %1617, %1644 ]
  %1659 = phi float [ %1652, %1650 ], [ 0.000000e+00, %1644 ]
  %1660 = fcmp fast une float %1621, 1.000000e+00
  br i1 %1660, label %1661, label %1668, !dx.controlflow.hints !94

; <label>:1661                                    ; preds = %1657
  %1662 = call float @dx.op.unary.f32(i32 23, float %1621)  ; Log(value)
  %1663 = fmul fast float %1662, 0x3FE62E4300000000
  %1664 = fmul fast float %1618, %1663
  %1665 = fsub fast float -0.000000e+00, %1664
  %1666 = fsub fast float 1.000000e+00, %1621
  %1667 = fdiv fast float %1665, %1666
  br label %1668

; <label>:1668                                    ; preds = %1661, %1657
  %1669 = phi float [ %1667, %1661 ], [ %1618, %1657 ]
  %1670 = phi float [ %1663, %1661 ], [ 0.000000e+00, %1657 ]
  %1671 = fcmp fast une float %1622, 1.000000e+00
  br i1 %1671, label %1672, label %1679, !dx.controlflow.hints !94

; <label>:1672                                    ; preds = %1668
  %1673 = call float @dx.op.unary.f32(i32 23, float %1622)  ; Log(value)
  %1674 = fmul fast float %1673, 0x3FE62E4300000000
  %1675 = fmul fast float %1619, %1674
  %1676 = fsub fast float -0.000000e+00, %1675
  %1677 = fsub fast float 1.000000e+00, %1622
  %1678 = fdiv fast float %1676, %1677
  br label %1679

; <label>:1679                                    ; preds = %1672, %1668
  %1680 = phi float [ %1678, %1672 ], [ %1619, %1668 ]
  %1681 = phi float [ %1674, %1672 ], [ 0.000000e+00, %1668 ]
  %1682 = fmul fast float %1645, %1629
  %1683 = fmul fast float %1646, %1629
  %1684 = fmul fast float %1647, %1629
  %1685 = fmul fast float %1648, %1629
  %1686 = fmul fast float %1658, %1627
  %1687 = fmul fast float %1669, %1627
  %1688 = fmul fast float %1680, %1627
  %1689 = fmul fast float %1659, %1627
  %1690 = fmul fast float %1670, %1627
  %1691 = fmul fast float %1681, %1627
  %1692 = fadd fast float %1686, %1682
  %1693 = fadd fast float %1687, %1683
  %1694 = fadd fast float %1688, %1684
  %1695 = fadd fast float %1689, %1685
  %1696 = fadd fast float %1690, %1685
  %1697 = fadd fast float %1691, %1685
  %1698 = fcmp fast une float %1695, 0.000000e+00
  br i1 %1698, label %1699, label %1706, !dx.controlflow.hints !95

; <label>:1699                                    ; preds = %1679
  %1700 = fmul fast float %1695, 0x3FF7154760000000
  %1701 = call float @dx.op.unary.f32(i32 21, float %1700)  ; Exp(value)
  %1702 = fsub fast float 1.000000e+00, %1701
  %1703 = fmul fast float %1692, %1702
  %1704 = fsub fast float -0.000000e+00, %1703
  %1705 = fdiv fast float %1704, %1695
  br label %1706

; <label>:1706                                    ; preds = %1699, %1679
  %1707 = phi float [ %1701, %1699 ], [ 1.000000e+00, %1679 ]
  %1708 = phi float [ %1705, %1699 ], [ %1692, %1679 ]
  %1709 = fcmp fast une float %1696, 0.000000e+00
  br i1 %1709, label %1710, label %1717, !dx.controlflow.hints !95

; <label>:1710                                    ; preds = %1706
  %1711 = fmul fast float %1696, 0x3FF7154760000000
  %1712 = call float @dx.op.unary.f32(i32 21, float %1711)  ; Exp(value)
  %1713 = fsub fast float 1.000000e+00, %1712
  %1714 = fmul fast float %1693, %1713
  %1715 = fsub fast float -0.000000e+00, %1714
  %1716 = fdiv fast float %1715, %1696
  br label %1717

; <label>:1717                                    ; preds = %1710, %1706
  %1718 = phi float [ %1712, %1710 ], [ 1.000000e+00, %1706 ]
  %1719 = phi float [ %1716, %1710 ], [ %1693, %1706 ]
  %1720 = fcmp fast une float %1697, 0.000000e+00
  br i1 %1720, label %1721, label %1728, !dx.controlflow.hints !95

; <label>:1721                                    ; preds = %1717
  %1722 = fmul fast float %1697, 0x3FF7154760000000
  %1723 = call float @dx.op.unary.f32(i32 21, float %1722)  ; Exp(value)
  %1724 = fsub fast float 1.000000e+00, %1723
  %1725 = fmul fast float %1694, %1724
  %1726 = fsub fast float -0.000000e+00, %1725
  %1727 = fdiv fast float %1726, %1697
  br label %1728

; <label>:1728                                    ; preds = %1721, %1717
  %1729 = phi float [ %1723, %1721 ], [ 1.000000e+00, %1717 ]
  %1730 = phi float [ %1727, %1721 ], [ %1694, %1717 ]
  %1731 = fcmp fast ogt float %1627, %1629
  br i1 %1731, label %1732, label %1752, !dx.controlflow.hints !96

; <label>:1732                                    ; preds = %1728
  %1733 = fsub fast float 1.000000e+00, %1629
  %1734 = fmul fast float %1645, %1733
  %1735 = fmul fast float %1646, %1733
  %1736 = fmul fast float %1647, %1733
  %1737 = fmul fast float %1648, %1733
  %1738 = fcmp fast une float %1737, 0.000000e+00
  br i1 %1738, label %1739, label %1790, !dx.controlflow.hints !97

; <label>:1739                                    ; preds = %1732
  %1740 = fmul fast float %1737, 0x3FF7154760000000
  %1741 = call float @dx.op.unary.f32(i32 21, float %1740)  ; Exp(value)
  %1742 = fsub fast float 1.000000e+00, %1741
  %1743 = fmul fast float %1734, %1742
  %1744 = fsub fast float -0.000000e+00, %1743
  %1745 = fmul fast float %1735, %1742
  %1746 = fsub fast float -0.000000e+00, %1745
  %1747 = fmul fast float %1736, %1742
  %1748 = fsub fast float -0.000000e+00, %1747
  %1749 = fdiv fast float %1744, %1737
  %1750 = fdiv fast float %1746, %1737
  %1751 = fdiv fast float %1748, %1737
  br label %1790

; <label>:1752                                    ; preds = %1728
  %1753 = fsub fast float 1.000000e+00, %1627
  %1754 = fmul fast float %1658, %1753
  %1755 = fmul fast float %1669, %1753
  %1756 = fmul fast float %1680, %1753
  %1757 = fmul fast float %1659, %1753
  %1758 = fmul fast float %1670, %1753
  %1759 = fmul fast float %1681, %1753
  %1760 = fcmp fast une float %1757, 0.000000e+00
  br i1 %1760, label %1761, label %1768, !dx.controlflow.hints !95

; <label>:1761                                    ; preds = %1752
  %1762 = fmul fast float %1757, 0x3FF7154760000000
  %1763 = call float @dx.op.unary.f32(i32 21, float %1762)  ; Exp(value)
  %1764 = fsub fast float 1.000000e+00, %1763
  %1765 = fmul fast float %1754, %1764
  %1766 = fsub fast float -0.000000e+00, %1765
  %1767 = fdiv fast float %1766, %1757
  br label %1768

; <label>:1768                                    ; preds = %1761, %1752
  %1769 = phi float [ %1767, %1761 ], [ %1754, %1752 ]
  %1770 = phi float [ %1763, %1761 ], [ 1.000000e+00, %1752 ]
  %1771 = fcmp fast une float %1758, 0.000000e+00
  br i1 %1771, label %1772, label %1779, !dx.controlflow.hints !95

; <label>:1772                                    ; preds = %1768
  %1773 = fmul fast float %1758, 0x3FF7154760000000
  %1774 = call float @dx.op.unary.f32(i32 21, float %1773)  ; Exp(value)
  %1775 = fsub fast float 1.000000e+00, %1774
  %1776 = fmul fast float %1755, %1775
  %1777 = fsub fast float -0.000000e+00, %1776
  %1778 = fdiv fast float %1777, %1758
  br label %1779

; <label>:1779                                    ; preds = %1772, %1768
  %1780 = phi float [ %1778, %1772 ], [ %1755, %1768 ]
  %1781 = phi float [ %1774, %1772 ], [ 1.000000e+00, %1768 ]
  %1782 = fcmp fast une float %1759, 0.000000e+00
  br i1 %1782, label %1783, label %1790, !dx.controlflow.hints !95

; <label>:1783                                    ; preds = %1779
  %1784 = fmul fast float %1759, 0x3FF7154760000000
  %1785 = call float @dx.op.unary.f32(i32 21, float %1784)  ; Exp(value)
  %1786 = fsub fast float 1.000000e+00, %1785
  %1787 = fmul fast float %1756, %1786
  %1788 = fsub fast float -0.000000e+00, %1787
  %1789 = fdiv fast float %1788, %1759
  br label %1790

; <label>:1790                                    ; preds = %1783, %1779, %1739, %1732
  %1791 = phi float [ %1789, %1783 ], [ %1751, %1739 ], [ %1736, %1732 ], [ %1756, %1779 ]
  %1792 = phi float [ %1780, %1783 ], [ %1750, %1739 ], [ %1735, %1732 ], [ %1780, %1779 ]
  %1793 = phi float [ %1769, %1783 ], [ %1749, %1739 ], [ %1734, %1732 ], [ %1769, %1779 ]
  %1794 = phi float [ %1785, %1783 ], [ %1741, %1739 ], [ 1.000000e+00, %1732 ], [ 1.000000e+00, %1779 ]
  %1795 = phi float [ %1781, %1783 ], [ %1741, %1739 ], [ 1.000000e+00, %1732 ], [ %1781, %1779 ]
  %1796 = phi float [ %1770, %1783 ], [ %1741, %1739 ], [ 1.000000e+00, %1732 ], [ %1770, %1779 ]
  %1797 = fmul fast float %1796, %1708
  %1798 = fmul fast float %1795, %1719
  %1799 = fmul fast float %1794, %1730
  %1800 = fadd fast float %1797, %1793
  %1801 = fadd fast float %1798, %1792
  %1802 = fadd fast float %1799, %1791
  %1803 = fmul fast float %1796, %1707
  %1804 = fmul fast float %1795, %1718
  %1805 = fmul fast float %1794, %1729
  br label %1806

; <label>:1806                                    ; preds = %1790, %1601
  %1807 = phi float [ %1607, %1601 ], [ %1805, %1790 ]
  %1808 = phi float [ %1606, %1601 ], [ %1804, %1790 ]
  %1809 = phi float [ %1605, %1601 ], [ %1803, %1790 ]
  %1810 = phi float [ %1604, %1601 ], [ %1802, %1790 ]
  %1811 = phi float [ %1603, %1601 ], [ %1801, %1790 ]
  %1812 = phi float [ %1602, %1601 ], [ %1800, %1790 ]
  %1813 = fmul fast float %1809, %950
  %1814 = fmul fast float %1808, %951
  %1815 = fmul fast float %1807, %952
  %1816 = fsub fast float 1.000000e+00, %1013
  %1817 = fmul fast float %1812, %1816
  %1818 = fmul fast float %1811, %1816
  %1819 = fmul fast float %1810, %1816
  %1820 = fadd fast float %1817, %1813
  %1821 = fadd fast float %1818, %1814
  %1822 = fadd fast float %1819, %1815
  %1823 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 423)  ; CBufferLoadLegacy(handle,regIndex)
  %1824 = extractvalue %dx.types.CBufRet.f32 %1823, 2
  %1825 = fmul fast float %1824, %1023
  %1826 = call float @dx.op.unary.f32(i32 7, float %1825)  ; Saturate(value)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %3, i32 %14, i32 %15, i32 undef, float %1013, float %1013, float %1013, float %1013, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %1827 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1828 = extractvalue %dx.types.CBufRet.f32 %1827, 0
  %1829 = fmul fast float %1828, %1820
  %1830 = fmul fast float %1828, %1821
  %1831 = fmul fast float %1828, %1822
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %4, i32 %14, i32 %15, i32 undef, float %1829, float %1830, float %1831, float %1829, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %14, i32 %15, i32 undef, float %1826, float %1826, float %1826, float %1826, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
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

attributes #0 = { nounwind readnone }
attributes #1 = { noduplicate nounwind }
attributes #2 = { nounwind }
attributes #3 = { nounwind readonly }

!llvm.ident = !{!0}
!dx.version = !{!1}
!dx.valver = !{!2}
!dx.shaderModel = !{!3}
!dx.resources = !{!4}
!dx.entryPoints = !{!24}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !13, !19, !22}
!5 = !{!6, !8, !9, !10, !11, !12}
!6 = !{i32 0, %"class.Texture3D<float>"* undef, !"", i32 0, i32 3, i32 1, i32 4, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 27, i32 1, i32 2, i32 0, !7}
!9 = !{i32 2, %"class.Texture1D<float>"* undef, !"", i32 0, i32 14, i32 1, i32 1, i32 0, !7}
!10 = !{i32 3, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 13, i32 1, i32 2, i32 0, !7}
!11 = !{i32 4, %"class.Texture2D<float>"* undef, !"", i32 0, i32 0, i32 1, i32 2, i32 0, !7}
!12 = !{i32 5, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 17, i32 1, i32 11, i32 0, null}
!13 = !{!14, !15, !16, !17}
!14 = !{i32 0, %"class.RWTexture2D<vector<float, 3> >"* undef, !"", i32 0, i32 0, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!15 = !{i32 1, %"class.RWTexture2D<float>"* undef, !"", i32 0, i32 1, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!16 = !{i32 2, %"class.RWTexture2D<float>"* undef, !"", i32 0, i32 2, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!17 = !{i32 3, %"class.RWTexture2DArray<vector<float, 4> >"* undef, !"", i32 0, i32 3, i32 1, i32 7, i1 false, i1 false, i1 false, !18}
!18 = !{i32 0, i32 14}
!19 = !{!20, !21}
!20 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!21 = !{i32 1, %FogRaymarchingConstBuffer_decl* undef, !"", i32 0, i32 0, i32 1, i32 112, null}
!22 = !{!23}
!23 = !{i32 0, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!24 = !{void ()* @cs_fog_raymarching_brfog, !"cs_fog_raymarching_brfog", null, !4, !25}
!25 = !{i32 0, i64 272, i32 4, !26}
!26 = !{i32 8, i32 8, i32 1}
!27 = distinct !{!27, !"dx.controlflow.hints", i32 2}
!28 = distinct !{!28, !"dx.controlflow.hints", i32 2}
!29 = distinct !{!29, !"dx.controlflow.hints", i32 2}
!30 = distinct !{!30, !"dx.controlflow.hints", i32 2}
!31 = distinct !{!31, !"dx.controlflow.hints", i32 2}
!32 = distinct !{!32, !"dx.controlflow.hints", i32 1}
!33 = distinct !{!33, !"dx.controlflow.hints", i32 2}
!34 = distinct !{!34, !"dx.controlflow.hints", i32 2}
!35 = distinct !{!35, !"dx.controlflow.hints", i32 1}
!36 = distinct !{!36, !"dx.controlflow.hints", i32 1}
!37 = distinct !{!37, !"dx.controlflow.hints", i32 2}
!38 = distinct !{!38, !"dx.controlflow.hints", i32 2}
!39 = distinct !{!39, !"dx.controlflow.hints", i32 2}
!40 = distinct !{!40, !"dx.controlflow.hints", i32 2}
!41 = distinct !{!41, !"dx.controlflow.hints", i32 2}
!42 = distinct !{!42, !"dx.controlflow.hints", i32 2}
!43 = distinct !{!43, !"dx.controlflow.hints", i32 1}
!44 = distinct !{!44, !"dx.controlflow.hints", i32 2}
!45 = distinct !{!45, !"dx.controlflow.hints", i32 2}
!46 = distinct !{!46, !"dx.controlflow.hints", i32 2}
!47 = distinct !{!47, !"dx.controlflow.hints", i32 2}
!48 = distinct !{!48, !"dx.controlflow.hints", i32 2}
!49 = distinct !{!49, !"dx.controlflow.hints", i32 2}
!50 = distinct !{!50, !"dx.controlflow.hints", i32 2}
!51 = distinct !{!51, !"dx.controlflow.hints", i32 2}
!52 = !{!53, !53, i64 0}
!53 = !{!"float", !54, i64 0}
!54 = !{!"omnipotent char", !55, i64 0}
!55 = !{!"Simple C/C++ TBAA"}
!56 = !{!57, !59, !61, !62, !64, !65, !66}
!57 = distinct !{!57, !58, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z: %cFogParams"}
!58 = distinct !{!58, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z"}
!59 = distinct !{!59, !60, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %scattering"}
!60 = distinct !{!60, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z"}
!61 = distinct !{!61, !60, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %extinction"}
!62 = distinct !{!62, !63, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z: %scattering"}
!63 = distinct !{!63, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z"}
!64 = distinct !{!64, !63, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z: %transmission"}
!65 = distinct !{!65, !63, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z: %depthDensityWeighted"}
!66 = distinct !{!66, !63, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z: %rawShadowmapData"}
!67 = distinct !{!67, !"dx.controlflow.hints", i32 2}
!68 = !{!69}
!69 = distinct !{!69, !70, !"\01?sort@@YAXAIAM00@Z: %c"}
!70 = distinct !{!70, !"\01?sort@@YAXAIAM00@Z"}
!71 = !{!72, !73, !57, !59, !61, !62, !64, !65, !66}
!72 = distinct !{!72, !70, !"\01?sort@@YAXAIAM00@Z: %a"}
!73 = distinct !{!73, !70, !"\01?sort@@YAXAIAM00@Z: %b"}
!74 = !{!73}
!75 = !{!72, !69, !57, !59, !61, !62, !64, !65, !66}
!76 = !{!72}
!77 = !{!73, !69, !57, !59, !61, !62, !64, !65, !66}
!78 = !{!79}
!79 = distinct !{!79, !80, !"\01?sort@@YAXAIAM00@Z: %c"}
!80 = distinct !{!80, !"\01?sort@@YAXAIAM00@Z"}
!81 = !{!82, !83, !57, !59, !61, !62, !64, !65, !66}
!82 = distinct !{!82, !80, !"\01?sort@@YAXAIAM00@Z: %a"}
!83 = distinct !{!83, !80, !"\01?sort@@YAXAIAM00@Z: %b"}
!84 = !{!83}
!85 = !{!82, !79, !57, !59, !61, !62, !64, !65, !66}
!86 = !{!82}
!87 = !{!83, !79, !57, !59, !61, !62, !64, !65, !66}
!88 = distinct !{!88, !"dx.controlflow.hints", i32 2}
!89 = distinct !{!89, !"dx.controlflow.hints", i32 2}
!90 = distinct !{!90, !"dx.controlflow.hints", i32 1}
!91 = distinct !{!91, !"dx.controlflow.hints", i32 2}
!92 = distinct !{!92, !"dx.controlflow.hints", i32 1}
!93 = distinct !{!93, !"dx.controlflow.hints", i32 1}
!94 = distinct !{!94, !"dx.controlflow.hints", i32 1}
!95 = distinct !{!95, !"dx.controlflow.hints", i32 1}
!96 = distinct !{!96, !"dx.controlflow.hints", i32 2}
!97 = distinct !{!97, !"dx.controlflow.hints", i32 1}

