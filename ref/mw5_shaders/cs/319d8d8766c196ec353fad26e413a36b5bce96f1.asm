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
; shader hash: 4eebc793a8df252032ef1f678f55ea47
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

define void @cs_fog_raymarching_air_brfog() {
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
  %294 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %295 = extractvalue %dx.types.CBufRet.f32 %294, 3
  %296 = fsub fast float -0.000000e+00, %229
  %297 = fsub fast float -0.000000e+00, %230
  %298 = fsub fast float %295, %231
  %299 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %296, float %297, float %298)  ; Dot3(ax,ay,az,bx,by,bz)
  %300 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %272, float %273, float %274)  ; Dot3(ax,ay,az,bx,by,bz)
  %301 = fdiv fast float 1.000000e+00, %300
  %302 = fmul fast float %301, %299
  %303 = fcmp fast olt float %302, 0.000000e+00
  %304 = fcmp fast ogt float %274, 0.000000e+00
  %305 = and i1 %304, %303
  br i1 %305, label %310, label %306, !dx.controlflow.hints !28

; <label>:306                                     ; preds = %198
  %307 = fcmp fast olt float %274, 0.000000e+00
  br i1 %307, label %308, label %310, !dx.controlflow.hints !29

; <label>:308                                     ; preds = %306
  %309 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %302)  ; FMax(a,b)
  br label %310

; <label>:310                                     ; preds = %308, %306, %198
  %311 = phi float [ 0.000000e+00, %198 ], [ %309, %308 ], [ 0.000000e+00, %306 ]
  %312 = phi float [ 0.000000e+00, %198 ], [ 0x47EFFFFFE0000000, %308 ], [ %302, %306 ]
  %313 = fcmp fast oeq float %312, 0.000000e+00
  br i1 %313, label %317, label %314, !dx.controlflow.hints !30

; <label>:314                                     ; preds = %310
  %315 = call float @dx.op.binary.f32(i32 36, float 0x47EFFFFFE0000000, float %311)  ; FMin(a,b)
  %316 = call float @dx.op.binary.f32(i32 35, float -1.000000e+00, float %312)  ; FMax(a,b)
  br label %317

; <label>:317                                     ; preds = %314, %310
  %318 = phi i32 [ 1, %314 ], [ 0, %310 ]
  %319 = phi float [ %316, %314 ], [ -1.000000e+00, %310 ]
  %320 = phi float [ %315, %314 ], [ 0x47EFFFFFE0000000, %310 ]
  %321 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %322 = extractvalue %dx.types.CBufRet.f32 %321, 2
  %323 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %324 = extractvalue %dx.types.CBufRet.f32 %323, 3
  %325 = fsub fast float %322, %231
  %326 = fadd fast float %325, %324
  %327 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %296, float %297, float %326)  ; Dot3(ax,ay,az,bx,by,bz)
  %328 = fmul fast float %301, %327
  %329 = fcmp fast olt float %328, 0.000000e+00
  %330 = and i1 %304, %329
  br i1 %330, label %335, label %331, !dx.controlflow.hints !31

; <label>:331                                     ; preds = %317
  %332 = fcmp fast olt float %274, 0.000000e+00
  br i1 %332, label %333, label %335, !dx.controlflow.hints !32

; <label>:333                                     ; preds = %331
  %334 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %328)  ; FMax(a,b)
  br label %335

; <label>:335                                     ; preds = %333, %331, %317
  %336 = phi float [ 0.000000e+00, %317 ], [ %334, %333 ], [ 0.000000e+00, %331 ]
  %337 = phi float [ 0.000000e+00, %317 ], [ 0x47EFFFFFE0000000, %333 ], [ %328, %331 ]
  %338 = fcmp fast oeq float %337, 0.000000e+00
  br i1 %338, label %342, label %339, !dx.controlflow.hints !33

; <label>:339                                     ; preds = %335
  %340 = call float @dx.op.binary.f32(i32 36, float %320, float %336)  ; FMin(a,b)
  %341 = call float @dx.op.binary.f32(i32 35, float %319, float %337)  ; FMax(a,b)
  br label %342

; <label>:342                                     ; preds = %339, %335
  %343 = phi i32 [ 1, %339 ], [ 0, %335 ]
  %344 = phi float [ %341, %339 ], [ %319, %335 ]
  %345 = phi float [ %340, %339 ], [ %320, %335 ]
  %346 = call float @dx.op.binary.f32(i32 36, float %293, float %344)  ; FMin(a,b)
  %347 = call float @dx.op.binary.f32(i32 35, float %270, float %345)  ; FMax(a,b)
  %348 = extractvalue %dx.types.CBufRet.f32 %294, 0
  %349 = fmul fast float %218, 2.000000e+00
  %350 = fadd fast float %349, -1.000000e+00
  %351 = fmul fast float %348, %350
  %352 = fadd fast float %351, %347
  %353 = fcmp fast olt float %352, %346
  %354 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %355 = extractvalue %dx.types.CBufRet.f32 %354, 2
  %356 = fcmp fast olt float %355, 1.000000e+00
  %357 = and i1 %356, %353
  br i1 %357, label %358, label %1102

; <label>:358                                     ; preds = %342
  %359 = fmul fast float %352, %274
  %360 = fadd fast float %359, %231
  %361 = fmul fast float %352, %273
  %362 = fadd fast float %361, %230
  %363 = fmul fast float %352, %272
  %364 = fadd fast float %363, %229
  br label %365

; <label>:365                                     ; preds = %1076, %358
  %366 = phi i32 [ %1078, %1076 ], [ undef, %358 ]
  %367 = phi float [ %1079, %1076 ], [ undef, %358 ]
  %368 = phi i32 [ %576, %1076 ], [ undef, %358 ]
  %369 = phi float [ %578, %1076 ], [ undef, %358 ]
  %370 = phi float [ %1080, %1076 ], [ 0.000000e+00, %358 ]
  %371 = phi float [ %1081, %1076 ], [ 1.000000e+00, %358 ]
  %372 = phi float [ %1082, %1076 ], [ 0.000000e+00, %358 ]
  %373 = phi float [ %1083, %1076 ], [ 0.000000e+00, %358 ]
  %374 = phi float [ %1084, %1076 ], [ 0.000000e+00, %358 ]
  %375 = phi float [ %1094, %1076 ], [ %364, %358 ]
  %376 = phi float [ %1095, %1076 ], [ %362, %358 ]
  %377 = phi float [ %1096, %1076 ], [ %360, %358 ]
  %378 = phi float [ %1077, %1076 ], [ %352, %358 ]
  %379 = phi float [ %1085, %1076 ], [ 0.000000e+00, %358 ]
  %380 = phi float [ %1086, %1076 ], [ 0.000000e+00, %358 ]
  %381 = phi float [ %1087, %1076 ], [ 0.000000e+00, %358 ]
  %382 = phi float [ %1088, %1076 ], [ 0.000000e+00, %358 ]
  %383 = phi float [ %1089, %1076 ], [ 0.000000e+00, %358 ]
  %384 = phi i32 [ %1090, %1076 ], [ 0, %358 ]
  %385 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %386 = extractvalue %dx.types.CBufRet.f32 %385, 0
  %387 = icmp eq i32 %318, 0
  br i1 %387, label %400, label %388, !dx.controlflow.hints !34

; <label>:388                                     ; preds = %365
  %389 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %390 = extractvalue %dx.types.CBufRet.f32 %389, 3
  %391 = extractvalue %dx.types.CBufRet.f32 %389, 2
  %392 = fmul fast float %390, %378
  %393 = fdiv fast float %392, %346
  %394 = fadd fast float %393, 1.000000e+00
  %395 = call float @dx.op.unary.f32(i32 23, float %394)  ; Log(value)
  %396 = call float @dx.op.binary.f32(i32 36, float 1.000000e+00, float %395)  ; FMin(a,b)
  %397 = fmul fast float %391, %346
  %398 = fmul fast float %397, %396
  %399 = call float @dx.op.binary.f32(i32 36, float 0x47EFFFFFE0000000, float %398)  ; FMin(a,b)
  br label %400

; <label>:400                                     ; preds = %388, %365
  %401 = phi float [ %399, %388 ], [ 0x47EFFFFFE0000000, %365 ]
  %402 = icmp eq i32 %343, 0
  br i1 %402, label %575, label %403, !dx.controlflow.hints !35

; <label>:403                                     ; preds = %400
  %404 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %13, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %405 = extractvalue %dx.types.CBufRet.i32 %404, 1
  %406 = and i32 %405, 1
  %407 = icmp eq i32 %406, 0
  br i1 %407, label %408, label %565, !dx.controlflow.hints !36

; <label>:408                                     ; preds = %403
  %409 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 204)  ; CBufferLoadLegacy(handle,regIndex)
  %410 = extractvalue %dx.types.CBufRet.f32 %409, 2
  %411 = extractvalue %dx.types.CBufRet.f32 %409, 3
  %412 = fmul fast float %410, %375
  %413 = fmul fast float %411, %376
  %414 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 205)  ; CBufferLoadLegacy(handle,regIndex)
  %415 = extractvalue %dx.types.CBufRet.f32 %414, 0
  %416 = extractvalue %dx.types.CBufRet.f32 %414, 1
  %417 = fadd fast float %412, %415
  %418 = fadd fast float %413, %416
  %419 = call float @dx.op.unary.f32(i32 7, float %417)  ; Saturate(value)
  %420 = call float @dx.op.unary.f32(i32 7, float %418)  ; Saturate(value)
  %421 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %11, float %419, float %420, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %422 = extractvalue %dx.types.ResRet.f32 %421, 0
  %423 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %424 = extractvalue %dx.types.CBufRet.f32 %423, 0
  %425 = fmul fast float %424, %422
  %426 = fsub fast float %417, %419
  %427 = fsub fast float %418, %420
  %428 = extractvalue %dx.types.CBufRet.f32 %409, 0
  %429 = extractvalue %dx.types.CBufRet.f32 %409, 1
  %430 = fmul fast float %428, %426
  %431 = fmul fast float %429, %427
  %432 = fmul fast float %430, %430
  %433 = fmul fast float %431, %431
  %434 = fadd fast float %432, %433
  %435 = call float @dx.op.unary.f32(i32 24, float %434)  ; Sqrt(value)
  %436 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %437 = extractvalue %dx.types.CBufRet.f32 %436, 3
  %438 = fmul fast float %437, %435
  %439 = call float @dx.op.unary.f32(i32 7, float %438)  ; Saturate(value)
  %440 = extractvalue %dx.types.CBufRet.f32 %436, 2
  %441 = fsub fast float %440, %425
  %442 = fmul fast float %441, %439
  %443 = extractvalue %dx.types.CBufRet.f32 %423, 1
  %444 = fsub fast float %377, %425
  %445 = fsub fast float %444, %443
  %446 = fsub fast float %445, %442
  %447 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %448 = extractvalue %dx.types.CBufRet.f32 %447, 2
  %449 = fsub fast float %446, %448
  %450 = fcmp fast olt float %449, 0.000000e+00
  %451 = call float @dx.op.unary.f32(i32 6, float %449)  ; FAbs(value)
  %452 = extractvalue %dx.types.CBufRet.i32 %404, 0
  %453 = icmp eq i32 %452, 0
  br i1 %453, label %507, label %454

; <label>:454                                     ; preds = %408
  br label %455

; <label>:455                                     ; preds = %494, %454
  %456 = phi i32 [ %500, %494 ], [ 1, %454 ]
  %457 = phi float [ %502, %494 ], [ 0x47EFFFFFE0000000, %454 ]
  %458 = phi i32 [ %503, %494 ], [ 0, %454 ]
  %459 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %460 = extractvalue %dx.types.CBufRet.f32 %459, 1
  %461 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %13, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %462 = extractvalue %dx.types.CBufRet.i32 %461, 1
  %463 = and i32 %462, 8
  %464 = icmp eq i32 %463, 0
  %465 = fcmp fast ogt float %460, %446
  %466 = or i1 %465, %464
  %467 = add i32 %458, 171
  %468 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 %467)  ; CBufferLoadLegacy(handle,regIndex)
  %469 = extractvalue %dx.types.CBufRet.f32 %468, 0
  %470 = extractvalue %dx.types.CBufRet.f32 %468, 1
  %471 = extractvalue %dx.types.CBufRet.f32 %468, 2
  br i1 %466, label %472, label %478, !dx.controlflow.hints !37

; <label>:472                                     ; preds = %455
  %473 = fsub fast float %469, %375
  %474 = fsub fast float %470, %376
  %475 = fmul fast float %473, %473
  %476 = fmul fast float %474, %474
  %477 = fadd fast float %475, %476
  br label %494

; <label>:478                                     ; preds = %455
  %479 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %480 = extractvalue %dx.types.CBufRet.f32 %479, 2
  %481 = extractvalue %dx.types.CBufRet.f32 %459, 2
  %482 = fmul fast float %481, %480
  %483 = fsub fast float %482, %460
  %484 = fdiv fast float %471, %483
  %485 = fsub fast float %375, %469
  %486 = fsub fast float %376, %470
  %487 = fsub fast float %446, %460
  %488 = fmul fast float %484, %487
  %489 = fmul fast float %485, %485
  %490 = fmul fast float %486, %486
  %491 = fadd fast float %489, %490
  %492 = fmul fast float %488, %488
  %493 = fadd fast float %491, %492
  br label %494

; <label>:494                                     ; preds = %478, %472
  %495 = phi float [ %477, %472 ], [ %493, %478 ]
  %496 = call float @dx.op.unary.f32(i32 24, float %495)  ; Sqrt(value)
  %497 = fsub float %471, %496
  %498 = fcmp fast olt float %497, 0.000000e+00
  %499 = zext i1 %498 to i32
  %500 = and i32 %499, %456
  %501 = call float @dx.op.unary.f32(i32 6, float %497)  ; FAbs(value)
  %502 = call float @dx.op.binary.f32(i32 36, float %457, float %501)  ; FMin(a,b)
  %503 = add i32 %458, 1
  %504 = extractvalue %dx.types.CBufRet.i32 %461, 0
  %505 = icmp ult i32 %503, %504
  br i1 %505, label %455, label %506

; <label>:506                                     ; preds = %494
  br label %507

; <label>:507                                     ; preds = %506, %408
  %508 = phi i32 [ 1, %408 ], [ %500, %506 ]
  %509 = phi float [ 0x47EFFFFFE0000000, %408 ], [ %502, %506 ]
  br label %510

; <label>:510                                     ; preds = %510, %507
  %511 = phi i32 [ %508, %507 ], [ %550, %510 ]
  %512 = phi float [ 0x47EFFFFFE0000000, %507 ], [ %552, %510 ]
  %513 = phi i32 [ 0, %507 ], [ %553, %510 ]
  %514 = add nuw nsw i32 %513, 191
  %515 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 %514)  ; CBufferLoadLegacy(handle,regIndex)
  %516 = extractvalue %dx.types.CBufRet.f32 %515, 0
  %517 = extractvalue %dx.types.CBufRet.f32 %515, 1
  %518 = extractvalue %dx.types.CBufRet.f32 %515, 2
  %519 = add nuw nsw i32 %513, 195
  %520 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 %519)  ; CBufferLoadLegacy(handle,regIndex)
  %521 = extractvalue %dx.types.CBufRet.f32 %520, 0
  %522 = extractvalue %dx.types.CBufRet.f32 %520, 1
  %523 = extractvalue %dx.types.CBufRet.f32 %520, 2
  %524 = fsub fast float %375, %516
  %525 = fsub fast float %376, %517
  %526 = fsub fast float %446, %518
  %527 = call float @dx.op.unary.f32(i32 6, float %524)  ; FAbs(value)
  %528 = call float @dx.op.unary.f32(i32 6, float %525)  ; FAbs(value)
  %529 = call float @dx.op.unary.f32(i32 6, float %526)  ; FAbs(value)
  %530 = fsub fast float %527, %521
  %531 = fsub fast float %528, %522
  %532 = fsub fast float %529, %523
  %533 = call float @dx.op.binary.f32(i32 35, float %530, float 0.000000e+00)  ; FMax(a,b)
  %534 = call float @dx.op.binary.f32(i32 35, float %531, float 0.000000e+00)  ; FMax(a,b)
  %535 = call float @dx.op.binary.f32(i32 35, float %532, float 0.000000e+00)  ; FMax(a,b)
  %536 = fmul fast float %533, %533
  %537 = fmul fast float %534, %534
  %538 = fadd fast float %537, %536
  %539 = fmul fast float %535, %535
  %540 = fadd fast float %538, %539
  %541 = call float @dx.op.unary.f32(i32 24, float %540)  ; Sqrt(value)
  %542 = call float @dx.op.binary.f32(i32 35, float %531, float %532)  ; FMax(a,b)
  %543 = call float @dx.op.binary.f32(i32 35, float %530, float %542)  ; FMax(a,b)
  %544 = call float @dx.op.binary.f32(i32 36, float %543, float 0.000000e+00)  ; FMin(a,b)
  %545 = fadd fast float %544, %541
  %546 = fsub fast float -0.000000e+00, %545
  %547 = fcmp ogt float %545, -0.000000e+00
  %548 = icmp ne i32 %511, 0
  %549 = and i1 %548, %547
  %550 = zext i1 %549 to i32
  %551 = call float @dx.op.unary.f32(i32 6, float %546)  ; FAbs(value)
  %552 = call float @dx.op.binary.f32(i32 36, float %512, float %551)  ; FMin(a,b)
  %553 = add nuw nsw i32 %513, 1
  %554 = icmp eq i32 %553, 4
  br i1 %554, label %555, label %510

; <label>:555                                     ; preds = %510
  %556 = call float @dx.op.binary.f32(i32 36, float %451, float %552)  ; FMin(a,b)
  %557 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %13, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %558 = extractvalue %dx.types.CBufRet.i32 %557, 1
  %559 = and i32 %558, 2
  %560 = icmp ne i32 %559, 0
  %561 = xor i1 %549, %560
  %562 = call float @dx.op.binary.f32(i32 36, float %556, float %509)  ; FMin(a,b)
  %563 = and i1 %561, %450
  %564 = zext i1 %563 to i32
  br label %565

; <label>:565                                     ; preds = %555, %403
  %566 = phi i32 [ %368, %403 ], [ %564, %555 ]
  %567 = phi float [ 0.000000e+00, %403 ], [ %562, %555 ]
  %568 = phi float [ %377, %403 ], [ %446, %555 ]
  %569 = icmp ne i32 %566, 0
  %570 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %571 = extractvalue %dx.types.CBufRet.f32 %570, 3
  %572 = call float @dx.op.binary.f32(i32 35, float %567, float %571)  ; FMax(a,b)
  %573 = call float @dx.op.binary.f32(i32 36, float %401, float %572)  ; FMin(a,b)
  %574 = zext i1 %569 to i32
  br label %575

; <label>:575                                     ; preds = %565, %400
  %576 = phi i32 [ %566, %565 ], [ %368, %400 ]
  %577 = phi i32 [ %574, %565 ], [ 0, %400 ]
  %578 = phi float [ %568, %565 ], [ %369, %400 ]
  %579 = phi float [ %573, %565 ], [ %401, %400 ]
  %580 = extractvalue %dx.types.CBufRet.f32 %385, 2
  %581 = fmul fast float %580, %378
  %582 = call float @dx.op.unary.f32(i32 23, float %581)  ; Log(value)
  %583 = fmul fast float %582, 0x3FE62E4300000000
  %584 = call float @dx.op.binary.f32(i32 35, float %583, float 1.000000e+00)  ; FMax(a,b)
  %585 = fmul fast float %584, %579
  %586 = call float @dx.op.binary.f32(i32 36, float %585, float 0x47EFFFFFE0000000)  ; FMin(a,b)
  %587 = call float @dx.op.binary.f32(i32 35, float %586, float %386)  ; FMax(a,b)
  %588 = fadd fast float %346, 0x3F1A36E2E0000000
  %589 = fsub fast float %588, %378
  %590 = call float @dx.op.binary.f32(i32 36, float %589, float %587)  ; FMin(a,b)
  br i1 %387, label %647, label %591, !dx.controlflow.hints !38

; <label>:591                                     ; preds = %575
  %592 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 399)  ; CBufferLoadLegacy(handle,regIndex)
  %593 = extractvalue %dx.types.CBufRet.f32 %592, 0
  %594 = fsub fast float -0.000000e+00, %375
  %595 = fsub fast float -0.000000e+00, %376
  %596 = fsub fast float %593, %377
  %597 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %594, float %595, float %596)  ; Dot3(ax,ay,az,bx,by,bz)
  %598 = fmul fast float %301, %597
  %599 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %598)  ; FMax(a,b)
  %600 = fcmp fast olt float %274, 0.000000e+00
  %601 = call float @dx.op.binary.f32(i32 36, float %590, float %599)  ; FMin(a,b)
  br i1 %600, label %603, label %602, !dx.controlflow.hints !39

; <label>:602                                     ; preds = %591
  br label %603

; <label>:603                                     ; preds = %602, %591
  %604 = phi float [ 0.000000e+00, %602 ], [ %601, %591 ]
  %605 = phi float [ %601, %602 ], [ %590, %591 ]
  %606 = phi float [ %601, %602 ], [ 0.000000e+00, %591 ]
  %607 = phi float [ %590, %602 ], [ %601, %591 ]
  %608 = fsub fast float %605, %604
  %609 = extractvalue %dx.types.CBufRet.f32 %592, 1
  %610 = call float @dx.op.binary.f32(i32 36, float 0xBF0FFB4800000000, float %609)  ; FMin(a,b)
  %611 = fsub fast float %377, %593
  %612 = fmul fast float %610, 0x3FF7154760000000
  %613 = fmul fast float %612, %611
  %614 = call float @dx.op.unary.f32(i32 21, float %613)  ; Exp(value)
  %615 = fmul fast float %274, 0x3FF7154760000000
  %616 = fmul fast float %615, %607
  %617 = fmul fast float %616, %610
  %618 = call float @dx.op.unary.f32(i32 21, float %617)  ; Exp(value)
  %619 = fmul fast float %615, %606
  %620 = fmul fast float %619, %610
  %621 = call float @dx.op.unary.f32(i32 21, float %620)  ; Exp(value)
  %622 = fsub fast float %618, %621
  %623 = fmul fast float %622, %614
  %624 = fmul fast float %610, %274
  %625 = fdiv fast float %623, %624
  %626 = fadd fast float %608, %625
  %627 = call float @dx.op.unary.f32(i32 6, float %274)  ; FAbs(value)
  %628 = fcmp fast olt float %627, 0x3F0FFB4800000000
  %629 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %611)  ; FMax(a,b)
  %630 = fmul fast float %629, 0x3FF7154760000000
  %631 = fmul fast float %630, %609
  %632 = call float @dx.op.unary.f32(i32 21, float %631)  ; Exp(value)
  %633 = fmul fast float %632, %590
  %634 = select i1 %628, float %633, float %626
  %635 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 396)  ; CBufferLoadLegacy(handle,regIndex)
  %636 = extractvalue %dx.types.CBufRet.f32 %635, 1
  %637 = fmul fast float %634, %636
  %638 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 395)  ; CBufferLoadLegacy(handle,regIndex)
  %639 = extractvalue %dx.types.CBufRet.f32 %638, 0
  %640 = extractvalue %dx.types.CBufRet.f32 %638, 1
  %641 = extractvalue %dx.types.CBufRet.f32 %638, 2
  %642 = extractvalue %dx.types.CBufRet.f32 %635, 2
  %643 = fmul fast float %639, %637
  %644 = fmul fast float %640, %637
  %645 = fmul fast float %641, %637
  %646 = fmul fast float %642, %637
  br label %647

; <label>:647                                     ; preds = %603, %575
  %648 = phi float [ %637, %603 ], [ 0.000000e+00, %575 ]
  %649 = phi float [ %646, %603 ], [ 0.000000e+00, %575 ]
  %650 = phi float [ %643, %603 ], [ 0.000000e+00, %575 ]
  %651 = phi float [ %644, %603 ], [ 0.000000e+00, %575 ]
  %652 = phi float [ %645, %603 ], [ 0.000000e+00, %575 ]
  %653 = icmp eq i32 %577, 0
  br i1 %653, label %697, label %654, !dx.controlflow.hints !40

; <label>:654                                     ; preds = %647
  %655 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 190)  ; CBufferLoadLegacy(handle,regIndex)
  %656 = extractvalue %dx.types.CBufRet.f32 %655, 1
  %657 = fsub fast float %590, %656
  %658 = extractvalue %dx.types.CBufRet.f32 %655, 3
  %659 = fmul fast float %657, %658
  %660 = call float @dx.op.unary.f32(i32 7, float %659)  ; Saturate(value)
  %661 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 188)  ; CBufferLoadLegacy(handle,regIndex)
  %662 = extractvalue %dx.types.CBufRet.f32 %661, 3
  %663 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %664 = extractvalue %dx.types.CBufRet.f32 %663, 2
  %665 = fsub fast float %664, %578
  %666 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 189)  ; CBufferLoadLegacy(handle,regIndex)
  %667 = extractvalue %dx.types.CBufRet.f32 %666, 3
  %668 = fmul fast float %665, %667
  %669 = call float @dx.op.unary.f32(i32 7, float %668)  ; Saturate(value)
  %670 = fmul fast float %669, %662
  %671 = extractvalue %dx.types.CBufRet.f32 %666, 0
  %672 = fsub fast float %378, %671
  %673 = extractvalue %dx.types.CBufRet.f32 %666, 1
  %674 = fmul fast float %672, %673
  %675 = call float @dx.op.unary.f32(i32 7, float %674)  ; Saturate(value)
  %676 = fsub fast float 1.000000e+00, %660
  %677 = fmul fast float %675, %676
  %678 = fadd fast float %677, %660
  %679 = extractvalue %dx.types.CBufRet.f32 %655, 0
  %680 = fsub fast float %670, %679
  %681 = fmul fast float %680, %678
  %682 = fadd fast float %681, %679
  %683 = extractvalue %dx.types.CBufRet.f32 %661, 0
  %684 = extractvalue %dx.types.CBufRet.f32 %661, 1
  %685 = extractvalue %dx.types.CBufRet.f32 %661, 2
  %686 = fmul fast float %682, %590
  %687 = extractvalue %dx.types.CBufRet.f32 %666, 2
  %688 = fmul fast float %686, %683
  %689 = fmul fast float %686, %684
  %690 = fmul fast float %686, %685
  %691 = fadd fast float %688, %650
  %692 = fadd fast float %689, %651
  %693 = fadd fast float %690, %652
  %694 = fmul fast float %686, %687
  %695 = fadd fast float %694, %649
  %696 = fadd fast float %686, %648
  br label %697

; <label>:697                                     ; preds = %654, %647
  %698 = phi float [ %696, %654 ], [ %648, %647 ]
  %699 = phi float [ %695, %654 ], [ %649, %647 ]
  %700 = phi float [ %691, %654 ], [ %650, %647 ]
  %701 = phi float [ %692, %654 ], [ %651, %647 ]
  %702 = phi float [ %693, %654 ], [ %652, %647 ]
  %703 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %704 = extractvalue %dx.types.CBufRet.f32 %703, 1
  %705 = fcmp fast ogt float %698, %704
  br i1 %705, label %706, label %712, !dx.controlflow.hints !41

; <label>:706                                     ; preds = %697
  %707 = fdiv fast float 1.000000e+00, %698
  %708 = fmul fast float %707, %700
  %709 = fmul fast float %707, %701
  %710 = fmul fast float %707, %702
  %711 = fmul fast float %707, %699
  br label %712

; <label>:712                                     ; preds = %706, %697
  %713 = phi float [ %711, %706 ], [ %699, %697 ]
  %714 = phi float [ %708, %706 ], [ %700, %697 ]
  %715 = phi float [ %709, %706 ], [ %701, %697 ]
  %716 = phi float [ %710, %706 ], [ %702, %697 ]
  br i1 %705, label %719, label %717, !dx.controlflow.hints !42

; <label>:717                                     ; preds = %712
  %718 = fadd fast float %590, %378
  br label %1076

; <label>:719                                     ; preds = %712
  %720 = fmul fast float %698, 0xBFF7154760000000
  %721 = call float @dx.op.unary.f32(i32 21, float %720)  ; Exp(value)
  %722 = call float @dx.op.unary.f32(i32 7, float %721)  ; Saturate(value)
  %723 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %724 = extractvalue %dx.types.CBufRet.f32 %723, 3
  %725 = fcmp fast une float %724, 0.000000e+00
  %726 = extractvalue %dx.types.CBufRet.f32 %723, 0
  %727 = extractvalue %dx.types.CBufRet.f32 %723, 1
  %728 = extractvalue %dx.types.CBufRet.f32 %723, 2
  br i1 %725, label %729, label %751, !dx.controlflow.hints !43

; <label>:729                                     ; preds = %719
  %730 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %731 = extractvalue %dx.types.CBufRet.f32 %730, 0
  %732 = extractvalue %dx.types.CBufRet.f32 %730, 1
  %733 = extractvalue %dx.types.CBufRet.f32 %730, 2
  %734 = call float @dx.op.dot3.f32(i32 55, float %726, float %727, float %728, float %272, float %273, float %274)  ; Dot3(ax,ay,az,bx,by,bz)
  %735 = fcmp fast ogt float %713, 0.000000e+00
  %736 = select i1 %735, float 1.000000e+00, float -1.000000e+00
  %737 = fmul fast float %736, 5.000000e-01
  %738 = fmul fast float %737, %734
  %739 = fmul fast float %736, %713
  %740 = fadd fast float %738, 4.921875e-01
  %741 = fadd fast float %739, -3.125000e-02
  %742 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %11, float %740, float 0x3FB25F3060000000, float %741, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %743 = extractvalue %dx.types.ResRet.f32 %742, 0
  %744 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 398)  ; CBufferLoadLegacy(handle,regIndex)
  %745 = extractvalue %dx.types.CBufRet.f32 %744, 0
  %746 = fmul fast float %743, 0x400921FB60000000
  %747 = fmul fast float %746, %745
  %748 = fmul fast float %747, %731
  %749 = fmul fast float %747, %732
  %750 = fmul fast float %747, %733
  br label %751

; <label>:751                                     ; preds = %729, %719
  %752 = phi float [ %748, %729 ], [ 0.000000e+00, %719 ]
  %753 = phi float [ %749, %729 ], [ 0.000000e+00, %719 ]
  %754 = phi float [ %750, %729 ], [ 0.000000e+00, %719 ]
  %755 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 427)  ; CBufferLoadLegacy(handle,regIndex)
  %756 = extractvalue %dx.types.CBufRet.f32 %755, 0
  %757 = fmul fast float %756, %726
  %758 = fmul fast float %756, %727
  %759 = fmul fast float %756, %728
  %760 = fadd fast float %757, %375
  %761 = fadd fast float %758, %376
  %762 = fadd fast float %759, %377
  br i1 %402, label %917, label %763, !dx.controlflow.hints !35

; <label>:763                                     ; preds = %751
  %764 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %13, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %765 = extractvalue %dx.types.CBufRet.i32 %764, 1
  %766 = and i32 %765, 1
  %767 = icmp eq i32 %766, 0
  br i1 %767, label %768, label %912, !dx.controlflow.hints !36

; <label>:768                                     ; preds = %763
  %769 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 204)  ; CBufferLoadLegacy(handle,regIndex)
  %770 = extractvalue %dx.types.CBufRet.f32 %769, 2
  %771 = extractvalue %dx.types.CBufRet.f32 %769, 3
  %772 = fmul fast float %770, %760
  %773 = fmul fast float %771, %761
  %774 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 205)  ; CBufferLoadLegacy(handle,regIndex)
  %775 = extractvalue %dx.types.CBufRet.f32 %774, 0
  %776 = extractvalue %dx.types.CBufRet.f32 %774, 1
  %777 = fadd fast float %772, %775
  %778 = fadd fast float %773, %776
  %779 = call float @dx.op.unary.f32(i32 7, float %777)  ; Saturate(value)
  %780 = call float @dx.op.unary.f32(i32 7, float %778)  ; Saturate(value)
  %781 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %11, float %779, float %780, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %782 = extractvalue %dx.types.ResRet.f32 %781, 0
  %783 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %784 = extractvalue %dx.types.CBufRet.f32 %783, 0
  %785 = fmul fast float %784, %782
  %786 = fsub fast float %777, %779
  %787 = fsub fast float %778, %780
  %788 = extractvalue %dx.types.CBufRet.f32 %769, 0
  %789 = extractvalue %dx.types.CBufRet.f32 %769, 1
  %790 = fmul fast float %788, %786
  %791 = fmul fast float %789, %787
  %792 = fmul fast float %790, %790
  %793 = fmul fast float %791, %791
  %794 = fadd fast float %792, %793
  %795 = call float @dx.op.unary.f32(i32 24, float %794)  ; Sqrt(value)
  %796 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %797 = extractvalue %dx.types.CBufRet.f32 %796, 3
  %798 = fmul fast float %797, %795
  %799 = call float @dx.op.unary.f32(i32 7, float %798)  ; Saturate(value)
  %800 = extractvalue %dx.types.CBufRet.f32 %796, 2
  %801 = fsub fast float %800, %785
  %802 = fmul fast float %801, %799
  %803 = extractvalue %dx.types.CBufRet.f32 %783, 1
  %804 = fsub fast float %762, %785
  %805 = fsub fast float %804, %803
  %806 = fsub fast float %805, %802
  %807 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %808 = extractvalue %dx.types.CBufRet.f32 %807, 2
  %809 = fsub fast float %806, %808
  %810 = fcmp fast olt float %809, 0.000000e+00
  %811 = extractvalue %dx.types.CBufRet.i32 %764, 0
  %812 = icmp eq i32 %811, 0
  br i1 %812, label %863, label %813

; <label>:813                                     ; preds = %768
  br label %814

; <label>:814                                     ; preds = %852, %813
  %815 = phi i32 [ %858, %852 ], [ 1, %813 ]
  %816 = phi i32 [ %859, %852 ], [ 0, %813 ]
  %817 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %818 = extractvalue %dx.types.CBufRet.f32 %817, 1
  %819 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %13, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %820 = extractvalue %dx.types.CBufRet.i32 %819, 1
  %821 = and i32 %820, 8
  %822 = icmp eq i32 %821, 0
  %823 = fcmp fast ogt float %818, %806
  %824 = or i1 %823, %822
  %825 = add i32 %816, 171
  %826 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 %825)  ; CBufferLoadLegacy(handle,regIndex)
  %827 = extractvalue %dx.types.CBufRet.f32 %826, 0
  %828 = extractvalue %dx.types.CBufRet.f32 %826, 1
  %829 = extractvalue %dx.types.CBufRet.f32 %826, 2
  br i1 %824, label %830, label %836, !dx.controlflow.hints !37

; <label>:830                                     ; preds = %814
  %831 = fsub fast float %827, %760
  %832 = fsub fast float %828, %761
  %833 = fmul fast float %831, %831
  %834 = fmul fast float %832, %832
  %835 = fadd fast float %833, %834
  br label %852

; <label>:836                                     ; preds = %814
  %837 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %838 = extractvalue %dx.types.CBufRet.f32 %837, 2
  %839 = extractvalue %dx.types.CBufRet.f32 %817, 2
  %840 = fmul fast float %839, %838
  %841 = fsub fast float %840, %818
  %842 = fdiv fast float %829, %841
  %843 = fsub fast float %760, %827
  %844 = fsub fast float %761, %828
  %845 = fsub fast float %806, %818
  %846 = fmul fast float %842, %845
  %847 = fmul fast float %843, %843
  %848 = fmul fast float %844, %844
  %849 = fadd fast float %847, %848
  %850 = fmul fast float %846, %846
  %851 = fadd fast float %849, %850
  br label %852

; <label>:852                                     ; preds = %836, %830
  %853 = phi float [ %835, %830 ], [ %851, %836 ]
  %854 = call float @dx.op.unary.f32(i32 24, float %853)  ; Sqrt(value)
  %855 = fsub float %829, %854
  %856 = fcmp fast olt float %855, 0.000000e+00
  %857 = zext i1 %856 to i32
  %858 = and i32 %857, %815
  %859 = add i32 %816, 1
  %860 = extractvalue %dx.types.CBufRet.i32 %819, 0
  %861 = icmp ult i32 %859, %860
  br i1 %861, label %814, label %862

; <label>:862                                     ; preds = %852
  br label %863

; <label>:863                                     ; preds = %862, %768
  %864 = phi i32 [ 1, %768 ], [ %858, %862 ]
  br label %865

; <label>:865                                     ; preds = %865, %863
  %866 = phi i32 [ %902, %865 ], [ %864, %863 ]
  %867 = phi i32 [ %903, %865 ], [ 0, %863 ]
  %868 = add nuw nsw i32 %867, 191
  %869 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 %868)  ; CBufferLoadLegacy(handle,regIndex)
  %870 = extractvalue %dx.types.CBufRet.f32 %869, 0
  %871 = extractvalue %dx.types.CBufRet.f32 %869, 1
  %872 = extractvalue %dx.types.CBufRet.f32 %869, 2
  %873 = add nuw nsw i32 %867, 195
  %874 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 %873)  ; CBufferLoadLegacy(handle,regIndex)
  %875 = extractvalue %dx.types.CBufRet.f32 %874, 0
  %876 = extractvalue %dx.types.CBufRet.f32 %874, 1
  %877 = extractvalue %dx.types.CBufRet.f32 %874, 2
  %878 = fsub fast float %760, %870
  %879 = fsub fast float %761, %871
  %880 = fsub fast float %806, %872
  %881 = call float @dx.op.unary.f32(i32 6, float %878)  ; FAbs(value)
  %882 = call float @dx.op.unary.f32(i32 6, float %879)  ; FAbs(value)
  %883 = call float @dx.op.unary.f32(i32 6, float %880)  ; FAbs(value)
  %884 = fsub fast float %881, %875
  %885 = fsub fast float %882, %876
  %886 = fsub fast float %883, %877
  %887 = call float @dx.op.binary.f32(i32 35, float %884, float 0.000000e+00)  ; FMax(a,b)
  %888 = call float @dx.op.binary.f32(i32 35, float %885, float 0.000000e+00)  ; FMax(a,b)
  %889 = call float @dx.op.binary.f32(i32 35, float %886, float 0.000000e+00)  ; FMax(a,b)
  %890 = fmul fast float %887, %887
  %891 = fmul fast float %888, %888
  %892 = fadd fast float %891, %890
  %893 = fmul fast float %889, %889
  %894 = fadd fast float %892, %893
  %895 = call float @dx.op.unary.f32(i32 24, float %894)  ; Sqrt(value)
  %896 = call float @dx.op.binary.f32(i32 35, float %885, float %886)  ; FMax(a,b)
  %897 = call float @dx.op.binary.f32(i32 35, float %884, float %896)  ; FMax(a,b)
  %898 = call float @dx.op.binary.f32(i32 36, float %897, float 0.000000e+00)  ; FMin(a,b)
  %899 = fadd fast float %898, %895
  %900 = fcmp ogt float %899, -0.000000e+00
  %901 = zext i1 %900 to i32
  %902 = and i32 %901, %866
  %903 = add nuw nsw i32 %867, 1
  %904 = icmp eq i32 %903, 4
  br i1 %904, label %905, label %865

; <label>:905                                     ; preds = %865
  %906 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %13, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %907 = extractvalue %dx.types.CBufRet.i32 %906, 1
  %908 = lshr i32 %907, 1
  %909 = xor i32 %908, %902
  %910 = zext i1 %810 to i32
  %911 = and i32 %909, %910
  br label %912

; <label>:912                                     ; preds = %905, %763
  %913 = phi i32 [ %366, %763 ], [ %911, %905 ]
  %914 = phi float [ %762, %763 ], [ %806, %905 ]
  %915 = icmp ne i32 %913, 0
  %916 = zext i1 %915 to i32
  br label %917

; <label>:917                                     ; preds = %912, %751
  %918 = phi i32 [ %913, %912 ], [ %366, %751 ]
  %919 = phi float [ %914, %912 ], [ %367, %751 ]
  %920 = phi i32 [ %916, %912 ], [ 0, %751 ]
  br i1 %387, label %970, label %921, !dx.controlflow.hints !38

; <label>:921                                     ; preds = %917
  %922 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 399)  ; CBufferLoadLegacy(handle,regIndex)
  %923 = extractvalue %dx.types.CBufRet.f32 %922, 0
  %924 = fsub fast float -0.000000e+00, %760
  %925 = fsub fast float -0.000000e+00, %761
  %926 = fsub fast float %923, %762
  %927 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %924, float %925, float %926)  ; Dot3(ax,ay,az,bx,by,bz)
  %928 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %726, float %727, float %728)  ; Dot3(ax,ay,az,bx,by,bz)
  %929 = fdiv fast float 1.000000e+00, %928
  %930 = fmul fast float %929, %927
  %931 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %930)  ; FMax(a,b)
  %932 = fcmp fast olt float %728, 0.000000e+00
  %933 = call float @dx.op.binary.f32(i32 36, float %756, float %931)  ; FMin(a,b)
  br i1 %932, label %935, label %934, !dx.controlflow.hints !39

; <label>:934                                     ; preds = %921
  br label %935

; <label>:935                                     ; preds = %934, %921
  %936 = phi float [ 0.000000e+00, %934 ], [ %933, %921 ]
  %937 = phi float [ %933, %934 ], [ %756, %921 ]
  %938 = phi float [ %933, %934 ], [ 0.000000e+00, %921 ]
  %939 = phi float [ %756, %934 ], [ %933, %921 ]
  %940 = fsub fast float %937, %936
  %941 = extractvalue %dx.types.CBufRet.f32 %922, 1
  %942 = call float @dx.op.binary.f32(i32 36, float 0xBF0FFB4800000000, float %941)  ; FMin(a,b)
  %943 = fsub fast float %762, %923
  %944 = fmul fast float %942, 0x3FF7154760000000
  %945 = fmul fast float %944, %943
  %946 = call float @dx.op.unary.f32(i32 21, float %945)  ; Exp(value)
  %947 = fmul fast float %728, 0x3FF7154760000000
  %948 = fmul fast float %947, %939
  %949 = fmul fast float %948, %942
  %950 = call float @dx.op.unary.f32(i32 21, float %949)  ; Exp(value)
  %951 = fmul fast float %947, %938
  %952 = fmul fast float %951, %942
  %953 = call float @dx.op.unary.f32(i32 21, float %952)  ; Exp(value)
  %954 = fsub fast float %950, %953
  %955 = fmul fast float %954, %946
  %956 = fmul fast float %942, %728
  %957 = fdiv fast float %955, %956
  %958 = fadd fast float %940, %957
  %959 = call float @dx.op.unary.f32(i32 6, float %728)  ; FAbs(value)
  %960 = fcmp fast olt float %959, 0x3F0FFB4800000000
  %961 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %943)  ; FMax(a,b)
  %962 = fmul fast float %961, 0x3FF7154760000000
  %963 = fmul fast float %962, %941
  %964 = call float @dx.op.unary.f32(i32 21, float %963)  ; Exp(value)
  %965 = fmul fast float %964, %756
  %966 = select i1 %960, float %965, float %958
  %967 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 396)  ; CBufferLoadLegacy(handle,regIndex)
  %968 = extractvalue %dx.types.CBufRet.f32 %967, 1
  %969 = fmul fast float %966, %968
  br label %970

; <label>:970                                     ; preds = %935, %917
  %971 = phi float [ %969, %935 ], [ 0.000000e+00, %917 ]
  %972 = icmp eq i32 %920, 0
  br i1 %972, label %1004, label %973, !dx.controlflow.hints !40

; <label>:973                                     ; preds = %970
  %974 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 190)  ; CBufferLoadLegacy(handle,regIndex)
  %975 = extractvalue %dx.types.CBufRet.f32 %974, 1
  %976 = fsub fast float %756, %975
  %977 = extractvalue %dx.types.CBufRet.f32 %974, 3
  %978 = fmul fast float %976, %977
  %979 = call float @dx.op.unary.f32(i32 7, float %978)  ; Saturate(value)
  %980 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 188)  ; CBufferLoadLegacy(handle,regIndex)
  %981 = extractvalue %dx.types.CBufRet.f32 %980, 3
  %982 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %983 = extractvalue %dx.types.CBufRet.f32 %982, 2
  %984 = fsub fast float %983, %919
  %985 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 189)  ; CBufferLoadLegacy(handle,regIndex)
  %986 = extractvalue %dx.types.CBufRet.f32 %985, 3
  %987 = fmul fast float %984, %986
  %988 = call float @dx.op.unary.f32(i32 7, float %987)  ; Saturate(value)
  %989 = fmul fast float %988, %981
  %990 = extractvalue %dx.types.CBufRet.f32 %985, 0
  %991 = fsub fast float %756, %990
  %992 = extractvalue %dx.types.CBufRet.f32 %985, 1
  %993 = fmul fast float %991, %992
  %994 = call float @dx.op.unary.f32(i32 7, float %993)  ; Saturate(value)
  %995 = fsub fast float 1.000000e+00, %979
  %996 = fmul fast float %994, %995
  %997 = fadd fast float %996, %979
  %998 = extractvalue %dx.types.CBufRet.f32 %974, 0
  %999 = fsub fast float %989, %998
  %1000 = fmul fast float %999, %997
  %1001 = fadd fast float %1000, %998
  %1002 = fmul fast float %1001, %756
  %1003 = fadd fast float %1002, %971
  br label %1004

; <label>:1004                                    ; preds = %973, %970
  %1005 = phi float [ %1003, %973 ], [ %971, %970 ]
  %1006 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 36)  ; CBufferLoadLegacy(handle,regIndex)
  %1007 = extractvalue %dx.types.CBufRet.f32 %1006, 3
  %1008 = fmul fast float %1005, 0xBFF7154760000000
  %1009 = fmul fast float %1008, %1007
  %1010 = call float @dx.op.unary.f32(i32 21, float %1009)  ; Exp(value)
  %1011 = call float @dx.op.unary.f32(i32 7, float %1010)  ; Saturate(value)
  %1012 = fmul fast float %1011, %752
  %1013 = fmul fast float %1011, %753
  %1014 = fmul fast float %1011, %754
  %1015 = fadd fast float %1012, %199
  %1016 = fadd fast float %1013, %200
  %1017 = fadd fast float %1014, %201
  %1018 = fsub fast float 1.000000e+00, %722
  %1019 = fmul fast float %714, %371
  %1020 = fmul fast float %1019, %1018
  %1021 = fmul fast float %1020, %1015
  %1022 = fmul fast float %715, %371
  %1023 = fmul fast float %1022, %1018
  %1024 = fmul fast float %1023, %1016
  %1025 = fmul fast float %716, %371
  %1026 = fmul fast float %1025, %1018
  %1027 = fmul fast float %1026, %1017
  %1028 = fadd fast float %1021, %372
  %1029 = fadd fast float %1024, %373
  %1030 = fadd fast float %1027, %374
  %1031 = fdiv fast float %698, %590
  %1032 = fadd fast float %590, %378
  %1033 = fmul fast float %378, %378
  %1034 = fmul fast float %1032, %1032
  %1035 = fsub fast float %1033, %1034
  %1036 = fmul fast float %1035, -5.000000e-01
  %1037 = fmul fast float %1036, %1031
  %1038 = fadd fast float %1037, %370
  %1039 = fadd fast float %698, %379
  %1040 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %13, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %1041 = extractvalue %dx.types.CBufRet.i32 %1040, 0
  %1042 = icmp eq i32 %1041, 0
  br i1 %1042, label %1069, label %1043, !dx.controlflow.hints !44

; <label>:1043                                    ; preds = %1004
  %1044 = icmp ne i32 %384, 0
  %1045 = zext i1 %1044 to i32
  %1046 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %1047 = extractvalue %dx.types.CBufRet.f32 %1046, 2
  %1048 = extractvalue %dx.types.CBufRet.f32 %1046, 0
  %1049 = fsub fast float %1032, %1048
  %1050 = fmul fast float %1049, %1047
  %1051 = call float @dx.op.unary.f32(i32 7, float %1050)  ; Saturate(value)
  %1052 = fadd fast float %1051, -5.000000e-01
  %1053 = fmul fast float %1052, 2.000000e+00
  %1054 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %1055 = extractvalue %dx.types.CBufRet.f32 %1054, 2
  %1056 = fcmp fast olt float %1053, %1055
  br i1 %1056, label %1057, label %1069, !dx.controlflow.hints !45

; <label>:1057                                    ; preds = %1043
  %1058 = fmul fast float %1053, %1053
  %1059 = fmul fast float %1018, %371
  %1060 = fmul fast float %1053, %1059
  %1061 = fmul fast float %1058, %1059
  %1062 = fmul fast float %1060, %1058
  %1063 = fmul fast float %1058, %1058
  %1064 = fmul fast float %1063, %1059
  %1065 = fadd fast float %1060, %380
  %1066 = fadd fast float %1061, %381
  %1067 = fadd fast float %1062, %382
  %1068 = fadd fast float %1064, %383
  br label %1069

; <label>:1069                                    ; preds = %1057, %1043, %1004
  %1070 = phi float [ %380, %1004 ], [ %1065, %1057 ], [ %380, %1043 ]
  %1071 = phi float [ %381, %1004 ], [ %1066, %1057 ], [ %381, %1043 ]
  %1072 = phi float [ %382, %1004 ], [ %1067, %1057 ], [ %382, %1043 ]
  %1073 = phi float [ %383, %1004 ], [ %1068, %1057 ], [ %383, %1043 ]
  %1074 = phi i32 [ %384, %1004 ], [ 1, %1057 ], [ %1045, %1043 ]
  %1075 = fmul fast float %722, %371
  br label %1076

; <label>:1076                                    ; preds = %1069, %717
  %1077 = phi float [ %718, %717 ], [ %1032, %1069 ]
  %1078 = phi i32 [ %366, %717 ], [ %918, %1069 ]
  %1079 = phi float [ %367, %717 ], [ %919, %1069 ]
  %1080 = phi float [ %370, %717 ], [ %1038, %1069 ]
  %1081 = phi float [ %371, %717 ], [ %1075, %1069 ]
  %1082 = phi float [ %372, %717 ], [ %1028, %1069 ]
  %1083 = phi float [ %373, %717 ], [ %1029, %1069 ]
  %1084 = phi float [ %374, %717 ], [ %1030, %1069 ]
  %1085 = phi float [ %379, %717 ], [ %1039, %1069 ]
  %1086 = phi float [ %380, %717 ], [ %1070, %1069 ]
  %1087 = phi float [ %381, %717 ], [ %1071, %1069 ]
  %1088 = phi float [ %382, %717 ], [ %1072, %1069 ]
  %1089 = phi float [ %383, %717 ], [ %1073, %1069 ]
  %1090 = phi i32 [ %384, %717 ], [ %1074, %1069 ]
  %1091 = fmul fast float %590, %272
  %1092 = fmul fast float %590, %273
  %1093 = fmul fast float %590, %274
  %1094 = fadd fast float %1091, %375
  %1095 = fadd fast float %1092, %376
  %1096 = fadd fast float %1093, %377
  %1097 = fcmp fast olt float %1077, %346
  %1098 = extractvalue %dx.types.CBufRet.f32 %703, 2
  %1099 = fcmp fast olt float %1098, %1081
  %1100 = and i1 %1097, %1099
  br i1 %1100, label %365, label %1101

; <label>:1101                                    ; preds = %1076
  br label %1102

; <label>:1102                                    ; preds = %1101, %342
  %1103 = phi float [ 0.000000e+00, %342 ], [ %1080, %1101 ]
  %1104 = phi float [ 1.000000e+00, %342 ], [ %1081, %1101 ]
  %1105 = phi float [ 0.000000e+00, %342 ], [ %1082, %1101 ]
  %1106 = phi float [ 0.000000e+00, %342 ], [ %1083, %1101 ]
  %1107 = phi float [ 0.000000e+00, %342 ], [ %1084, %1101 ]
  %1108 = phi float [ 0.000000e+00, %342 ], [ %1085, %1101 ]
  %1109 = phi float [ 0.000000e+00, %342 ], [ %1086, %1101 ]
  %1110 = phi float [ 0.000000e+00, %342 ], [ %1087, %1101 ]
  %1111 = phi float [ 0.000000e+00, %342 ], [ %1088, %1101 ]
  %1112 = phi float [ 0.000000e+00, %342 ], [ %1089, %1101 ]
  %1113 = phi i32 [ 0, %342 ], [ %1090, %1101 ]
  %1114 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %13, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %1115 = extractvalue %dx.types.CBufRet.i32 %1114, 0
  %1116 = icmp eq i32 %1115, 0
  br i1 %1116, label %1158, label %1117, !dx.controlflow.hints !46

; <label>:1117                                    ; preds = %1102
  %1118 = icmp eq i32 %1113, 0
  br i1 %1118, label %1157, label %1119, !dx.controlflow.hints !47

; <label>:1119                                    ; preds = %1117
  %1120 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %13, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %1121 = extractvalue %dx.types.CBufRet.i32 %1120, 2
  %1122 = icmp eq i32 %1121, 0
  br i1 %1122, label %1129, label %1123, !dx.controlflow.hints !48

; <label>:1123                                    ; preds = %1119
  %1124 = fsub fast float 1.000000e+00, %1104
  %1125 = fdiv fast float %1109, %1124
  %1126 = fdiv fast float %1110, %1124
  %1127 = fdiv fast float %1111, %1124
  %1128 = fdiv fast float %1112, %1124
  br label %1134

; <label>:1129                                    ; preds = %1119
  %1130 = fadd fast float %1109, %1104
  %1131 = fadd fast float %1110, %1104
  %1132 = fadd fast float %1111, %1104
  %1133 = fadd fast float %1112, %1104
  br label %1134

; <label>:1134                                    ; preds = %1129, %1123
  %1135 = phi float [ %1125, %1123 ], [ %1130, %1129 ]
  %1136 = phi float [ %1126, %1123 ], [ %1131, %1129 ]
  %1137 = phi float [ %1127, %1123 ], [ %1132, %1129 ]
  %1138 = phi float [ %1128, %1123 ], [ %1133, %1129 ]
  %1139 = call float @dx.op.binary.f32(i32 35, float %1135, float -1.000000e+00)  ; FMax(a,b)
  %1140 = call float @dx.op.binary.f32(i32 35, float %1136, float -1.000000e+00)  ; FMax(a,b)
  %1141 = call float @dx.op.binary.f32(i32 35, float %1137, float -1.000000e+00)  ; FMax(a,b)
  %1142 = call float @dx.op.binary.f32(i32 35, float %1138, float -1.000000e+00)  ; FMax(a,b)
  %1143 = call float @dx.op.binary.f32(i32 36, float %1139, float 1.000000e+00)  ; FMin(a,b)
  %1144 = call float @dx.op.binary.f32(i32 36, float %1140, float 1.000000e+00)  ; FMin(a,b)
  %1145 = call float @dx.op.binary.f32(i32 36, float %1141, float 1.000000e+00)  ; FMin(a,b)
  %1146 = call float @dx.op.binary.f32(i32 36, float %1142, float 1.000000e+00)  ; FMin(a,b)
  %1147 = fmul fast float %1143, 1.500000e+00
  %1148 = call float @dx.op.tertiary.f32(i32 46, float -2.000000e+00, float %1145, float %1147)  ; FMad(a,b,c)
  %1149 = call float @dx.op.tertiary.f32(i32 46, float 4.000000e+00, float %1144, float 0.000000e+00)  ; FMad(a,b,c)
  %1150 = call float @dx.op.tertiary.f32(i32 46, float -4.000000e+00, float %1146, float %1149)  ; FMad(a,b,c)
  %1151 = fmul fast float %1143, 0x3FEBB67AE0000000
  %1152 = call float @dx.op.tertiary.f32(i32 46, float 0xBFD8A23460000000, float %1145, float %1151)  ; FMad(a,b,c)
  %1153 = call float @dx.op.tertiary.f32(i32 46, float 5.000000e-01, float %1144, float 0.000000e+00)  ; FMad(a,b,c)
  %1154 = call float @dx.op.tertiary.f32(i32 46, float 5.000000e-01, float %1146, float %1153)  ; FMad(a,b,c)
  %1155 = fadd fast float %1148, 5.000000e-01
  %1156 = fadd fast float %1152, 5.000000e-01
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %14, i32 %15, i32 0, float %1155, float %1150, float %1156, float %1154, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %1158

; <label>:1157                                    ; preds = %1117
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %14, i32 %15, i32 0, float 0.000000e+00, float 0.000000e+00, float 0x3FEF6560C0000000, float 1.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %1158

; <label>:1158                                    ; preds = %1157, %1134, %1102
  %1159 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %1160 = extractvalue %dx.types.CBufRet.f32 %1159, 2
  %1161 = fsub fast float %1104, %1160
  %1162 = fdiv fast float %1161, %1160
  %1163 = call float @dx.op.unary.f32(i32 7, float %1162)  ; Saturate(value)
  %1164 = fmul fast float %1163, 2.000000e+00
  %1165 = fsub fast float 3.000000e+00, %1164
  %1166 = fmul fast float %1163, %1163
  %1167 = fmul fast float %1166, %1104
  %1168 = fmul fast float %1167, %1165
  %1169 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 419)  ; CBufferLoadLegacy(handle,regIndex)
  %1170 = extractvalue %dx.types.CBufRet.f32 %1169, 0
  %1171 = extractvalue %dx.types.CBufRet.f32 %1169, 1
  %1172 = extractvalue %dx.types.CBufRet.f32 %1169, 2
  %1173 = call float @dx.op.dot3.f32(i32 55, float %272, float %273, float %274, float %1170, float %1171, float %1172)  ; Dot3(ax,ay,az,bx,by,bz)
  %1174 = fmul fast float %1173, %1103
  %1175 = fcmp fast ogt float %1108, 0.000000e+00
  %1176 = fdiv fast float 1.000000e+00, %1108
  %1177 = fmul fast float %1174, %1176
  %1178 = select i1 %1175, float %1177, float %283
  %1179 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %1180 = extractvalue %dx.types.CBufRet.f32 %1179, 0
  %1181 = extractvalue %dx.types.CBufRet.f32 %1179, 1
  %1182 = extractvalue %dx.types.CBufRet.f32 %1179, 2
  %1183 = fmul fast float %1180, %236
  %1184 = fmul fast float %1181, %236
  %1185 = fmul fast float %1182, %236
  %1186 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %1187 = extractvalue %dx.types.CBufRet.f32 %1186, 0
  %1188 = extractvalue %dx.types.CBufRet.f32 %1186, 1
  %1189 = extractvalue %dx.types.CBufRet.f32 %1186, 2
  %1190 = fmul fast float %1187, %237
  %1191 = fmul fast float %1188, %237
  %1192 = fmul fast float %1189, %237
  %1193 = fadd fast float %1190, %1183
  %1194 = fadd fast float %1191, %1184
  %1195 = fadd fast float %1192, %1185
  %1196 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %1197 = extractvalue %dx.types.CBufRet.f32 %1196, 0
  %1198 = extractvalue %dx.types.CBufRet.f32 %1196, 1
  %1199 = extractvalue %dx.types.CBufRet.f32 %1196, 2
  %1200 = fadd fast float %1193, %1197
  %1201 = fadd fast float %1194, %1198
  %1202 = fadd fast float %1195, %1199
  %1203 = fmul fast float %1200, %1178
  %1204 = fmul fast float %1201, %1178
  %1205 = fmul fast float %1202, %1178
  %1206 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %1207 = extractvalue %dx.types.CBufRet.f32 %1206, 0
  %1208 = extractvalue %dx.types.CBufRet.f32 %1206, 1
  %1209 = extractvalue %dx.types.CBufRet.f32 %1206, 2
  %1210 = extractvalue %dx.types.CBufRet.f32 %1206, 3
  %1211 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %1212 = extractvalue %dx.types.CBufRet.f32 %1211, 0
  %1213 = extractvalue %dx.types.CBufRet.f32 %1211, 1
  %1214 = extractvalue %dx.types.CBufRet.f32 %1211, 2
  %1215 = extractvalue %dx.types.CBufRet.f32 %1211, 3
  %1216 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %1217 = extractvalue %dx.types.CBufRet.f32 %1216, 0
  %1218 = extractvalue %dx.types.CBufRet.f32 %1216, 1
  %1219 = extractvalue %dx.types.CBufRet.f32 %1216, 2
  %1220 = extractvalue %dx.types.CBufRet.f32 %1216, 3
  %1221 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %1222 = extractvalue %dx.types.CBufRet.f32 %1221, 0
  %1223 = extractvalue %dx.types.CBufRet.f32 %1221, 1
  %1224 = extractvalue %dx.types.CBufRet.f32 %1221, 2
  %1225 = extractvalue %dx.types.CBufRet.f32 %1221, 3
  %1226 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %1227 = extractvalue %dx.types.CBufRet.f32 %1226, 3
  %1228 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %1229 = extractvalue %dx.types.CBufRet.f32 %1228, 3
  %1230 = extractvalue %dx.types.CBufRet.f32 %1228, 0
  %1231 = extractvalue %dx.types.CBufRet.f32 %1228, 1
  %1232 = extractvalue %dx.types.CBufRet.f32 %1228, 2
  %1233 = fcmp fast olt float %1232, -5.000000e-01
  %1234 = call float @dx.op.dot3.f32(i32 55, float %1203, float %1204, float %1205, float %1203, float %1204, float %1205)  ; Dot3(ax,ay,az,bx,by,bz)
  %1235 = call float @dx.op.unary.f32(i32 25, float %1234)  ; Rsqrt(value)
  %1236 = fmul fast float %1235, %1234
  %1237 = fmul fast float %1235, %1203
  %1238 = fmul fast float %1235, %1204
  %1239 = fmul fast float %1235, %1205
  %1240 = fadd fast float %1236, %1210
  %1241 = call float @dx.op.dot3.f32(i32 55, float %1237, float %1238, float %1239, float %1207, float %1208, float %1209)  ; Dot3(ax,ay,az,bx,by,bz)
  %1242 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %13, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1243 = extractvalue %dx.types.CBufRet.i32 %1242, 1
  %1244 = and i32 %1243, 1
  %1245 = icmp ne i32 %1244, 0
  %1246 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %1247 = extractvalue %dx.types.CBufRet.f32 %1246, 2
  %1248 = fcmp fast ogt float %1247, 0.000000e+00
  %1249 = and i1 %1245, %1248
  br i1 %1249, label %1250, label %1656, !dx.controlflow.hints !49

; <label>:1250                                    ; preds = %1158
  %1251 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %1252 = extractvalue %dx.types.CBufRet.f32 %1251, 3
  %1253 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1254 = extractvalue %dx.types.CBufRet.f32 %1253, 2
  %1255 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1256 = extractvalue %dx.types.CBufRet.f32 %1255, 2
  %1257 = fsub fast float %1254, %1256
  %1258 = and i32 %1243, 2
  %1259 = extractvalue %dx.types.CBufRet.i32 %1242, 0
  %1260 = call i32 @dx.op.binary.i32(i32 40, i32 %1259, i32 3)  ; UMin(a,b)
  %1261 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %1262 = extractvalue %dx.types.CBufRet.f32 %1261, 0
  %1263 = extractvalue %dx.types.CBufRet.f32 %1261, 1
  %1264 = extractvalue %dx.types.CBufRet.f32 %1255, 0
  %1265 = extractvalue %dx.types.CBufRet.f32 %1255, 1
  %1266 = fsub fast float %1262, %1264
  %1267 = fsub fast float %1263, %1265
  %1268 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %1269 = extractvalue %dx.types.CBufRet.f32 %1268, 0
  %1270 = fcmp fast ogt float %1269, 0.000000e+00
  %1271 = fsub fast float -0.000000e+00, %1266
  %1272 = fsub fast float -0.000000e+00, %1267
  %1273 = call float @dx.op.dot2.f32(i32 54, float %1237, float %1238, float %1237, float %1238)  ; Dot2(ax,ay,bx,by)
  %1274 = call float @dx.op.dot2.f32(i32 54, float %1237, float %1238, float %1271, float %1272)  ; Dot2(ax,ay,bx,by)
  %1275 = fmul fast float %1274, 2.000000e+00
  %1276 = call float @dx.op.dot2.f32(i32 54, float %1271, float %1272, float %1271, float %1272)  ; Dot2(ax,ay,bx,by)
  %1277 = fmul fast float %1269, %1269
  %1278 = fsub fast float %1276, %1277
  %1279 = fmul fast float %1275, %1275
  %1280 = fmul fast float %1273, 4.000000e+00
  %1281 = fmul fast float %1280, %1278
  %1282 = fsub fast float %1279, %1281
  %1283 = fcmp fast ogt float %1282, 0.000000e+00
  br i1 %1283, label %1284, label %1299, !dx.controlflow.hints !50

; <label>:1284                                    ; preds = %1250
  %1285 = fcmp fast ogt float %1275, 0.000000e+00
  %1286 = call float @dx.op.unary.f32(i32 24, float %1282)  ; Sqrt(value)
  %1287 = fsub fast float -0.000000e+00, %1286
  %1288 = select i1 %1285, float %1286, float %1287
  %1289 = fadd fast float %1288, %1275
  %1290 = fmul float %1289, -5.000000e-01
  %1291 = fdiv fast float %1290, %1273
  %1292 = call float @dx.op.binary.f32(i32 35, float %1291, float 0.000000e+00)  ; FMax(a,b)
  %1293 = call float @dx.op.binary.f32(i32 36, float %1236, float %1292)  ; FMin(a,b)
  %1294 = fdiv fast float %1278, %1290
  %1295 = call float @dx.op.binary.f32(i32 35, float %1294, float 0.000000e+00)  ; FMax(a,b)
  %1296 = call float @dx.op.binary.f32(i32 36, float %1236, float %1295)  ; FMin(a,b)
  %1297 = call float @dx.op.binary.f32(i32 36, float %1293, float %1296)  ; FMin(a,b)
  %1298 = call float @dx.op.binary.f32(i32 35, float %1293, float %1296)  ; FMax(a,b)
  br label %1299

; <label>:1299                                    ; preds = %1284, %1250
  %1300 = phi float [ %1298, %1284 ], [ -1.000000e+00, %1250 ]
  %1301 = phi float [ %1297, %1284 ], [ -1.000000e+00, %1250 ]
  %1302 = phi i1 [ true, %1284 ], [ false, %1250 ]
  %1303 = and i1 %1270, %1302
  br i1 %1303, label %1304, label %1306, !dx.controlflow.hints !51

; <label>:1304                                    ; preds = %1299
  %1305 = fcmp fast oeq float %1301, %1300
  br i1 %1305, label %1609, label %1307, !dx.controlflow.hints !52

; <label>:1306                                    ; preds = %1299
  br i1 %1270, label %1609, label %1307, !dx.controlflow.hints !53

; <label>:1307                                    ; preds = %1306, %1304
  %1308 = phi float [ %1236, %1306 ], [ %1300, %1304 ]
  %1309 = phi float [ 0.000000e+00, %1306 ], [ %1301, %1304 ]
  %1310 = icmp ne i32 %1258, 0
  %1311 = fmul fast float %1308, %1239
  %1312 = fadd fast float %1311, %1252
  %1313 = fmul fast float %1312, %1308
  %1314 = select i1 %1310, float 0.000000e+00, float %1313
  %1315 = fcmp fast oeq float %1239, 0.000000e+00
  %1316 = fdiv fast float %1257, %1239
  %1317 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1316)  ; FMax(a,b)
  %1318 = select i1 %1315, float %1308, float %1317
  %1319 = call float @dx.op.binary.f32(i32 36, float %1308, float %1318)  ; FMin(a,b)
  %1320 = fcmp fast ogt float %1239, 0.000000e+00
  %1321 = fcmp fast olt float %1257, 0.000000e+00
  br i1 %1320, label %1322, label %1379, !dx.controlflow.hints !54

; <label>:1322                                    ; preds = %1307
  %1323 = icmp eq i32 %1258, 0
  br i1 %1321, label %1324, label %1368, !dx.controlflow.hints !55

; <label>:1324                                    ; preds = %1322
  %1325 = select i1 %1323, float %1308, float 0.000000e+00
  %1326 = fsub fast float -0.000000e+00, %1325
  %1327 = call float @dx.op.unary.f32(i32 6, float %1326)  ; FAbs(value)
  %1328 = fmul fast float %1325, %1239
  %1329 = fadd fast float %1328, %1252
  %1330 = fmul fast float %1327, %1329
  %1331 = fsub fast float %1314, %1330
  %1332 = fsub fast float %1308, %1327
  %1333 = select i1 %1323, float %1332, float 0.000000e+00
  %1334 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %1335 = extractvalue %dx.types.CBufRet.f32 %1334, 0
  %1336 = extractvalue %dx.types.CBufRet.f32 %1334, 1
  %1337 = extractvalue %dx.types.CBufRet.f32 %1334, 2
  %1338 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %1339 = extractvalue %dx.types.CBufRet.f32 %1338, 0
  %1340 = extractvalue %dx.types.CBufRet.f32 %1338, 1
  %1341 = extractvalue %dx.types.CBufRet.f32 %1338, 2
  %1342 = extractvalue %dx.types.CBufRet.f32 %1338, 3
  %1343 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %1344 = extractvalue %dx.types.CBufRet.f32 %1343, 3
  %1345 = call float @dx.op.binary.f32(i32 36, float %1331, float %1344)  ; FMin(a,b)
  %1346 = fmul fast float %1342, %1333
  %1347 = call float @dx.op.unary.f32(i32 7, float %1346)  ; Saturate(value)
  %1348 = fsub fast float %1339, %1335
  %1349 = fsub fast float %1340, %1336
  %1350 = fsub fast float %1341, %1337
  %1351 = fmul fast float %1347, %1348
  %1352 = fmul fast float %1347, %1349
  %1353 = fmul fast float %1347, %1350
  %1354 = fadd fast float %1351, %1335
  %1355 = fadd fast float %1352, %1336
  %1356 = fadd fast float %1353, %1337
  %1357 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %1358 = extractvalue %dx.types.CBufRet.f32 %1357, 0
  %1359 = extractvalue %dx.types.CBufRet.f32 %1357, 1
  %1360 = fadd fast float %1359, %1358
  %1361 = call float @dx.op.unary.f32(i32 7, float %1360)  ; Saturate(value)
  %1362 = extractvalue %dx.types.CBufRet.f32 %1357, 2
  %1363 = extractvalue %dx.types.CBufRet.f32 %1357, 3
  %1364 = fadd fast float %1363, %1362
  %1365 = call float @dx.op.unary.f32(i32 7, float %1364)  ; Saturate(value)
  %1366 = fmul fast float %1361, %1345
  %1367 = fmul fast float %1366, %1365
  br label %1609

; <label>:1368                                    ; preds = %1322
  br i1 %1323, label %1369, label %1390, !dx.controlflow.hints !56

; <label>:1369                                    ; preds = %1368
  %1370 = call float @dx.op.binary.f32(i32 36, float %1319, float %1309)  ; FMin(a,b)
  %1371 = fsub fast float %1319, %1370
  %1372 = fsub fast float %1371, %1308
  %1373 = call float @dx.op.unary.f32(i32 6, float %1372)  ; FAbs(value)
  %1374 = fadd fast float %1371, %1308
  %1375 = fmul fast float %1374, %1239
  %1376 = fadd fast float %1375, %1252
  %1377 = fmul fast float %1376, %1373
  %1378 = fsub fast float %1314, %1377
  br label %1390

; <label>:1379                                    ; preds = %1307
  br i1 %1321, label %1380, label %1390, !dx.controlflow.hints !57

; <label>:1380                                    ; preds = %1379
  %1381 = call float @dx.op.binary.f32(i32 35, float %1309, float %1319)  ; FMax(a,b)
  %1382 = icmp eq i32 %1258, 0
  %1383 = select i1 %1382, float %1319, float 0.000000e+00
  %1384 = fsub fast float -0.000000e+00, %1383
  %1385 = call float @dx.op.unary.f32(i32 6, float %1384)  ; FAbs(value)
  %1386 = fmul fast float %1383, %1239
  %1387 = fadd fast float %1386, %1252
  %1388 = fmul fast float %1385, %1387
  %1389 = fsub fast float %1314, %1388
  br label %1390

; <label>:1390                                    ; preds = %1380, %1379, %1369, %1368
  %1391 = phi float [ %1309, %1368 ], [ %1309, %1369 ], [ %1381, %1380 ], [ %1309, %1379 ]
  %1392 = phi float [ 0.000000e+00, %1368 ], [ %1373, %1369 ], [ %1385, %1380 ], [ 0.000000e+00, %1379 ]
  %1393 = phi float [ %1314, %1368 ], [ %1378, %1369 ], [ %1389, %1380 ], [ %1314, %1379 ]
  %1394 = phi float [ %1319, %1368 ], [ %1319, %1369 ], [ %1308, %1380 ], [ %1308, %1379 ]
  %1395 = getelementptr inbounds [3 x float], [3 x float]* %17, i32 0, i32 0
  store float -1.000000e+00, float* %1395, align 4, !tbaa !58, !noalias !62
  %1396 = getelementptr inbounds [3 x float], [3 x float]* %17, i32 0, i32 1
  store float -1.000000e+00, float* %1396, align 4, !tbaa !58, !noalias !62
  %1397 = getelementptr inbounds [3 x float], [3 x float]* %17, i32 0, i32 2
  store float -1.000000e+00, float* %1397, align 4, !tbaa !58, !noalias !62
  %1398 = getelementptr inbounds [3 x float], [3 x float]* %18, i32 0, i32 0
  store float -1.000000e+00, float* %1398, align 4, !tbaa !58, !noalias !62
  %1399 = getelementptr inbounds [3 x float], [3 x float]* %18, i32 0, i32 1
  store float -1.000000e+00, float* %1399, align 4, !tbaa !58, !noalias !62
  %1400 = getelementptr inbounds [3 x float], [3 x float]* %18, i32 0, i32 2
  store float -1.000000e+00, float* %1400, align 4, !tbaa !58, !noalias !62
  %1401 = icmp sgt i32 %1260, 0
  br i1 %1401, label %1402, label %1463

; <label>:1402                                    ; preds = %1390
  br label %1403

; <label>:1403                                    ; preds = %1452, %1402
  %1404 = phi i32 [ %1453, %1452 ], [ 0, %1402 ]
  %1405 = phi i32 [ %1454, %1452 ], [ 0, %1402 ]
  %1406 = add nuw i32 %1405, 171
  %1407 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 %1406)  ; CBufferLoadLegacy(handle,regIndex)
  %1408 = extractvalue %dx.types.CBufRet.f32 %1407, 0
  %1409 = extractvalue %dx.types.CBufRet.f32 %1407, 1
  %1410 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1411 = extractvalue %dx.types.CBufRet.f32 %1410, 0
  %1412 = extractvalue %dx.types.CBufRet.f32 %1410, 1
  %1413 = fsub fast float %1408, %1411
  %1414 = fsub fast float %1409, %1412
  %1415 = extractvalue %dx.types.CBufRet.f32 %1407, 2
  %1416 = fsub fast float -0.000000e+00, %1413
  %1417 = fsub fast float -0.000000e+00, %1414
  %1418 = call float @dx.op.dot2.f32(i32 54, float %1237, float %1238, float %1416, float %1417)  ; Dot2(ax,ay,bx,by)
  %1419 = fmul fast float %1418, 2.000000e+00
  %1420 = call float @dx.op.dot2.f32(i32 54, float %1416, float %1417, float %1416, float %1417)  ; Dot2(ax,ay,bx,by)
  %1421 = fmul fast float %1415, %1415
  %1422 = fsub fast float %1420, %1421
  %1423 = fmul fast float %1419, %1419
  %1424 = fmul fast float %1280, %1422
  %1425 = fsub fast float %1423, %1424
  %1426 = fcmp fast ogt float %1425, 0.000000e+00
  br i1 %1426, label %1427, label %1442, !dx.controlflow.hints !50

; <label>:1427                                    ; preds = %1403
  %1428 = fcmp fast ogt float %1419, 0.000000e+00
  %1429 = call float @dx.op.unary.f32(i32 24, float %1425)  ; Sqrt(value)
  %1430 = fsub fast float -0.000000e+00, %1429
  %1431 = select i1 %1428, float %1429, float %1430
  %1432 = fadd fast float %1431, %1419
  %1433 = fmul float %1432, -5.000000e-01
  %1434 = fdiv fast float %1433, %1273
  %1435 = call float @dx.op.binary.f32(i32 35, float %1434, float 0.000000e+00)  ; FMax(a,b)
  %1436 = call float @dx.op.binary.f32(i32 36, float %1308, float %1435)  ; FMin(a,b)
  %1437 = fdiv fast float %1422, %1433
  %1438 = call float @dx.op.binary.f32(i32 35, float %1437, float 0.000000e+00)  ; FMax(a,b)
  %1439 = call float @dx.op.binary.f32(i32 36, float %1308, float %1438)  ; FMin(a,b)
  %1440 = call float @dx.op.binary.f32(i32 36, float %1436, float %1439)  ; FMin(a,b)
  %1441 = call float @dx.op.binary.f32(i32 35, float %1436, float %1439)  ; FMax(a,b)
  br label %1442

; <label>:1442                                    ; preds = %1427, %1403
  %1443 = phi float [ %1441, %1427 ], [ -1.000000e+00, %1403 ]
  %1444 = phi float [ %1440, %1427 ], [ -1.000000e+00, %1403 ]
  %1445 = phi i1 [ true, %1427 ], [ false, %1403 ]
  br i1 %1445, label %1446, label %1452, !dx.controlflow.hints !73

; <label>:1446                                    ; preds = %1442
  %1447 = call float @dx.op.binary.f32(i32 35, float %1391, float %1444)  ; FMax(a,b)
  %1448 = getelementptr inbounds [3 x float], [3 x float]* %17, i32 0, i32 %1405
  store float %1447, float* %1448, align 4, !tbaa !58, !noalias !62
  %1449 = call float @dx.op.binary.f32(i32 35, float %1391, float %1443)  ; FMax(a,b)
  %1450 = getelementptr inbounds [3 x float], [3 x float]* %18, i32 0, i32 %1405
  store float %1449, float* %1450, align 4, !tbaa !58, !noalias !62
  %1451 = add nsw i32 %1404, 1
  br label %1452

; <label>:1452                                    ; preds = %1446, %1442
  %1453 = phi i32 [ %1451, %1446 ], [ %1404, %1442 ]
  %1454 = add nuw nsw i32 %1405, 1
  %1455 = icmp eq i32 %1454, %1260
  br i1 %1455, label %1456, label %1403

; <label>:1456                                    ; preds = %1452
  %1457 = load float, float* %1397, align 4, !tbaa !58, !alias.scope !74, !noalias !77
  %1458 = load float, float* %1396, align 4, !tbaa !58, !alias.scope !80, !noalias !81
  %1459 = load float, float* %1395, align 4, !tbaa !58, !alias.scope !82, !noalias !83
  %1460 = load float, float* %1400, align 4, !tbaa !58, !alias.scope !84, !noalias !87
  %1461 = load float, float* %1399, align 4, !tbaa !58, !alias.scope !90, !noalias !91
  %1462 = load float, float* %1398, align 4, !tbaa !58, !alias.scope !92, !noalias !93
  br label %1463

; <label>:1463                                    ; preds = %1456, %1390
  %1464 = phi float [ -1.000000e+00, %1390 ], [ %1462, %1456 ]
  %1465 = phi float [ -1.000000e+00, %1390 ], [ %1461, %1456 ]
  %1466 = phi float [ -1.000000e+00, %1390 ], [ %1460, %1456 ]
  %1467 = phi float [ -1.000000e+00, %1390 ], [ %1459, %1456 ]
  %1468 = phi float [ -1.000000e+00, %1390 ], [ %1458, %1456 ]
  %1469 = phi float [ -1.000000e+00, %1390 ], [ %1457, %1456 ]
  %1470 = phi i32 [ 0, %1390 ], [ %1453, %1456 ]
  %1471 = call float @dx.op.binary.f32(i32 36, float %1468, float %1469)  ; FMin(a,b)
  %1472 = call float @dx.op.binary.f32(i32 36, float %1467, float %1471)  ; FMin(a,b)
  %1473 = call float @dx.op.binary.f32(i32 35, float %1467, float %1468)  ; FMax(a,b)
  %1474 = call float @dx.op.binary.f32(i32 36, float %1473, float %1469)  ; FMin(a,b)
  %1475 = call float @dx.op.binary.f32(i32 36, float %1467, float %1468)  ; FMin(a,b)
  %1476 = call float @dx.op.binary.f32(i32 35, float %1475, float %1474)  ; FMax(a,b)
  %1477 = call float @dx.op.binary.f32(i32 35, float %1468, float %1469)  ; FMax(a,b)
  %1478 = call float @dx.op.binary.f32(i32 35, float %1467, float %1477)  ; FMax(a,b)
  store float %1472, float* %1395, align 4, !tbaa !58, !alias.scope !82, !noalias !83
  store float %1476, float* %1396, align 4, !tbaa !58, !alias.scope !80, !noalias !81
  store float %1478, float* %1397, align 4, !tbaa !58, !alias.scope !74, !noalias !77
  %1479 = call float @dx.op.binary.f32(i32 36, float %1465, float %1466)  ; FMin(a,b)
  %1480 = call float @dx.op.binary.f32(i32 36, float %1464, float %1479)  ; FMin(a,b)
  %1481 = call float @dx.op.binary.f32(i32 35, float %1464, float %1465)  ; FMax(a,b)
  %1482 = call float @dx.op.binary.f32(i32 36, float %1481, float %1466)  ; FMin(a,b)
  %1483 = call float @dx.op.binary.f32(i32 36, float %1464, float %1465)  ; FMin(a,b)
  %1484 = call float @dx.op.binary.f32(i32 35, float %1483, float %1482)  ; FMax(a,b)
  %1485 = call float @dx.op.binary.f32(i32 35, float %1465, float %1466)  ; FMax(a,b)
  %1486 = call float @dx.op.binary.f32(i32 35, float %1464, float %1485)  ; FMax(a,b)
  store float %1480, float* %1398, align 4, !tbaa !58, !alias.scope !92, !noalias !93
  store float %1484, float* %1399, align 4, !tbaa !58, !alias.scope !90, !noalias !91
  store float %1486, float* %1400, align 4, !tbaa !58, !alias.scope !84, !noalias !87
  %1487 = sub nsw i32 3, %1470
  %1488 = icmp sgt i32 %1487, 2
  br i1 %1488, label %1489, label %1527, !dx.controlflow.hints !94

; <label>:1489                                    ; preds = %1463
  %1490 = icmp eq i32 %1258, 0
  %1491 = fsub fast float %1308, %1392
  %1492 = select i1 %1490, float %1491, float %1392
  %1493 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %1494 = extractvalue %dx.types.CBufRet.f32 %1493, 0
  %1495 = extractvalue %dx.types.CBufRet.f32 %1493, 1
  %1496 = extractvalue %dx.types.CBufRet.f32 %1493, 2
  %1497 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %1498 = extractvalue %dx.types.CBufRet.f32 %1497, 0
  %1499 = extractvalue %dx.types.CBufRet.f32 %1497, 1
  %1500 = extractvalue %dx.types.CBufRet.f32 %1497, 2
  %1501 = extractvalue %dx.types.CBufRet.f32 %1497, 3
  %1502 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %1503 = extractvalue %dx.types.CBufRet.f32 %1502, 3
  %1504 = call float @dx.op.binary.f32(i32 36, float %1393, float %1503)  ; FMin(a,b)
  %1505 = fmul fast float %1501, %1492
  %1506 = call float @dx.op.unary.f32(i32 7, float %1505)  ; Saturate(value)
  %1507 = fsub fast float %1498, %1494
  %1508 = fsub fast float %1499, %1495
  %1509 = fsub fast float %1500, %1496
  %1510 = fmul fast float %1506, %1507
  %1511 = fmul fast float %1506, %1508
  %1512 = fmul fast float %1506, %1509
  %1513 = fadd fast float %1510, %1494
  %1514 = fadd fast float %1511, %1495
  %1515 = fadd fast float %1512, %1496
  %1516 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %1517 = extractvalue %dx.types.CBufRet.f32 %1516, 0
  %1518 = extractvalue %dx.types.CBufRet.f32 %1516, 1
  %1519 = fadd fast float %1518, %1517
  %1520 = call float @dx.op.unary.f32(i32 7, float %1519)  ; Saturate(value)
  %1521 = extractvalue %dx.types.CBufRet.f32 %1516, 2
  %1522 = extractvalue %dx.types.CBufRet.f32 %1516, 3
  %1523 = fadd fast float %1522, %1521
  %1524 = call float @dx.op.unary.f32(i32 7, float %1523)  ; Saturate(value)
  %1525 = fmul fast float %1520, %1504
  %1526 = fmul fast float %1525, %1524
  br label %1609

; <label>:1527                                    ; preds = %1463
  %1528 = getelementptr inbounds [3 x float], [3 x float]* %17, i32 0, i32 %1487
  %1529 = load float, float* %1528, align 4, !tbaa !58, !noalias !62
  %1530 = fcmp fast olt float %1529, %1394
  %1531 = icmp sgt i32 %1470, 0
  %1532 = and i1 %1531, %1530
  br i1 %1532, label %1533, label %1570

; <label>:1533                                    ; preds = %1527
  br label %1534

; <label>:1534                                    ; preds = %1563, %1533
  %1535 = phi float [ %1564, %1563 ], [ %1392, %1533 ]
  %1536 = phi float [ %1565, %1563 ], [ %1393, %1533 ]
  %1537 = phi float [ %1545, %1563 ], [ %1529, %1533 ]
  %1538 = phi i32 [ %1542, %1563 ], [ %1487, %1533 ]
  %1539 = getelementptr inbounds [3 x float], [3 x float]* %18, i32 0, i32 %1538
  %1540 = load float, float* %1539, align 4, !tbaa !58, !noalias !62
  %1541 = icmp slt i32 %1538, 2
  %1542 = add nsw i32 %1538, 1
  %1543 = getelementptr inbounds [3 x float], [3 x float]* %17, i32 0, i32 %1542
  %1544 = load float, float* %1543, align 4, !tbaa !58, !noalias !62
  %1545 = select i1 %1541, float %1544, float %1308
  %1546 = call float @dx.op.binary.f32(i32 36, float %1545, float %1540)  ; FMin(a,b)
  %1547 = call float @dx.op.binary.f32(i32 36, float %1394, float %1546)  ; FMin(a,b)
  %1548 = icmp eq i32 %1258, 0
  %1549 = fadd fast float %1547, %1537
  %1550 = fmul fast float %1549, %1239
  %1551 = fadd fast float %1550, %1252
  br i1 %1548, label %1557, label %1552, !dx.controlflow.hints !95

; <label>:1552                                    ; preds = %1534
  %1553 = fsub fast float %1547, %1537
  %1554 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1553)  ; FMax(a,b)
  %1555 = fmul fast float %1554, %1551
  %1556 = fadd fast float %1555, %1536
  br label %1563

; <label>:1557                                    ; preds = %1534
  %1558 = fsub fast float %1537, %1547
  %1559 = call float @dx.op.unary.f32(i32 6, float %1558)  ; FAbs(value)
  %1560 = fadd fast float %1559, %1535
  %1561 = fmul fast float %1559, %1551
  %1562 = fsub fast float %1536, %1561
  br label %1563

; <label>:1563                                    ; preds = %1557, %1552
  %1564 = phi float [ %1554, %1552 ], [ %1560, %1557 ]
  %1565 = phi float [ %1556, %1552 ], [ %1562, %1557 ]
  %1566 = fcmp fast olt float %1545, %1394
  %1567 = icmp slt i32 %1542, 3
  %1568 = and i1 %1567, %1566
  br i1 %1568, label %1534, label %1569

; <label>:1569                                    ; preds = %1563
  br label %1570

; <label>:1570                                    ; preds = %1569, %1527
  %1571 = phi float [ %1392, %1527 ], [ %1564, %1569 ]
  %1572 = phi float [ %1393, %1527 ], [ %1565, %1569 ]
  %1573 = fsub fast float %1308, %1571
  %1574 = select i1 %1310, float %1571, float %1573
  %1575 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %1576 = extractvalue %dx.types.CBufRet.f32 %1575, 0
  %1577 = extractvalue %dx.types.CBufRet.f32 %1575, 1
  %1578 = extractvalue %dx.types.CBufRet.f32 %1575, 2
  %1579 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %1580 = extractvalue %dx.types.CBufRet.f32 %1579, 0
  %1581 = extractvalue %dx.types.CBufRet.f32 %1579, 1
  %1582 = extractvalue %dx.types.CBufRet.f32 %1579, 2
  %1583 = extractvalue %dx.types.CBufRet.f32 %1579, 3
  %1584 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %1585 = extractvalue %dx.types.CBufRet.f32 %1584, 3
  %1586 = call float @dx.op.binary.f32(i32 36, float %1572, float %1585)  ; FMin(a,b)
  %1587 = fmul fast float %1583, %1574
  %1588 = call float @dx.op.unary.f32(i32 7, float %1587)  ; Saturate(value)
  %1589 = fsub fast float %1580, %1576
  %1590 = fsub fast float %1581, %1577
  %1591 = fsub fast float %1582, %1578
  %1592 = fmul fast float %1588, %1589
  %1593 = fmul fast float %1588, %1590
  %1594 = fmul fast float %1588, %1591
  %1595 = fadd fast float %1592, %1576
  %1596 = fadd fast float %1593, %1577
  %1597 = fadd fast float %1594, %1578
  %1598 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %1599 = extractvalue %dx.types.CBufRet.f32 %1598, 0
  %1600 = extractvalue %dx.types.CBufRet.f32 %1598, 1
  %1601 = fadd fast float %1600, %1599
  %1602 = call float @dx.op.unary.f32(i32 7, float %1601)  ; Saturate(value)
  %1603 = extractvalue %dx.types.CBufRet.f32 %1598, 2
  %1604 = extractvalue %dx.types.CBufRet.f32 %1598, 3
  %1605 = fadd fast float %1604, %1603
  %1606 = call float @dx.op.unary.f32(i32 7, float %1605)  ; Saturate(value)
  %1607 = fmul fast float %1602, %1586
  %1608 = fmul fast float %1607, %1606
  br label %1609

; <label>:1609                                    ; preds = %1570, %1489, %1324, %1306, %1304
  %1610 = phi float [ %1333, %1324 ], [ %1492, %1489 ], [ %1574, %1570 ], [ 0.000000e+00, %1304 ], [ 0.000000e+00, %1306 ]
  %1611 = phi float [ %1367, %1324 ], [ %1526, %1489 ], [ %1608, %1570 ], [ 0.000000e+00, %1304 ], [ 0.000000e+00, %1306 ]
  %1612 = phi float [ %1354, %1324 ], [ %1513, %1489 ], [ %1595, %1570 ], [ 0.000000e+00, %1304 ], [ 0.000000e+00, %1306 ]
  %1613 = phi float [ %1355, %1324 ], [ %1514, %1489 ], [ %1596, %1570 ], [ 0.000000e+00, %1304 ], [ 0.000000e+00, %1306 ]
  %1614 = phi float [ %1356, %1324 ], [ %1515, %1489 ], [ %1597, %1570 ], [ 0.000000e+00, %1304 ], [ 0.000000e+00, %1306 ]
  %1615 = fmul fast float %1247, %1611
  %1616 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1617 = extractvalue %dx.types.CBufRet.f32 %1616, 2
  %1618 = fsub fast float %1254, %1617
  %1619 = fcmp fast olt float %1615, -2.000000e+01
  %1620 = call float @dx.op.unary.f32(i32 21, float %1615)  ; Exp(value)
  %1621 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %1622 = extractvalue %dx.types.CBufRet.f32 %1621, 2
  %1623 = extractvalue %dx.types.CBufRet.f32 %1621, 3
  %1624 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %1625 = extractvalue %dx.types.CBufRet.f32 %1624, 2
  %1626 = fmul fast float %1623, %1618
  %1627 = call float @dx.op.unary.f32(i32 7, float %1626)  ; Saturate(value)
  %1628 = fsub fast float 1.000000e+00, %1627
  %1629 = fmul fast float %1239, 5.000000e-01
  %1630 = fadd fast float %1629, 5.000000e-01
  %1631 = call float @dx.op.unary.f32(i32 7, float %1630)  ; Saturate(value)
  %1632 = fsub fast float 1.000000e+00, %1631
  %1633 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %1628)  ; FMax(a,b)
  %1634 = fdiv fast float %1632, %1633
  %1635 = fsub fast float %1618, %1205
  %1636 = call float @dx.op.unary.f32(i32 6, float %1635)  ; FAbs(value)
  %1637 = fmul fast float %1636, %1622
  %1638 = call float @dx.op.unary.f32(i32 7, float %1634)  ; Saturate(value)
  %1639 = fsub fast float 1.000000e+00, %1637
  %1640 = fmul fast float %1639, %1638
  %1641 = fadd fast float %1640, %1637
  %1642 = fmul fast float %1625, %1618
  %1643 = call float @dx.op.unary.f32(i32 7, float %1642)  ; Saturate(value)
  %1644 = fsub fast float 1.000000e+00, %1641
  %1645 = fmul fast float %1644, %1643
  %1646 = fadd fast float %1645, %1641
  %1647 = call float @dx.op.unary.f32(i32 7, float %1646)  ; Saturate(value)
  %1648 = fadd fast float %1620, -1.000000e+00
  %1649 = select i1 %1619, float -1.000000e+00, float %1648
  %1650 = fmul fast float %1647, %1649
  %1651 = fadd fast float %1650, 1.000000e+00
  %1652 = fsub fast float -0.000000e+00, %1650
  %1653 = fmul fast float %1612, %1652
  %1654 = fmul fast float %1613, %1652
  %1655 = fmul fast float %1614, %1652
  br label %1656

; <label>:1656                                    ; preds = %1609, %1158
  %1657 = phi float [ %1610, %1609 ], [ 0.000000e+00, %1158 ]
  %1658 = phi float [ %1651, %1609 ], [ 1.000000e+00, %1158 ]
  %1659 = phi float [ %1653, %1609 ], [ 0.000000e+00, %1158 ]
  %1660 = phi float [ %1654, %1609 ], [ 0.000000e+00, %1158 ]
  %1661 = phi float [ %1655, %1609 ], [ 0.000000e+00, %1158 ]
  %1662 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %1663 = extractvalue %dx.types.CBufRet.f32 %1662, 1
  %1664 = fsub fast float 1.000000e+00, %1658
  %1665 = fmul fast float %1664, %1240
  %1666 = fmul fast float %1665, %1663
  %1667 = fsub fast float %1240, %1666
  br i1 %1233, label %1668, label %1697, !dx.controlflow.hints !96

; <label>:1668                                    ; preds = %1656
  %1669 = fmul fast float %1241, %1230
  %1670 = fadd fast float %1669, %1231
  %1671 = call float @dx.op.unary.f32(i32 7, float %1670)  ; Saturate(value)
  %1672 = fmul fast float %1212, %1667
  %1673 = fsub fast float -0.000000e+00, %1672
  %1674 = fmul fast float %1213, %1667
  %1675 = fsub fast float -0.000000e+00, %1674
  %1676 = call float @dx.op.unary.f32(i32 21, float %1673)  ; Exp(value)
  %1677 = call float @dx.op.unary.f32(i32 21, float %1675)  ; Exp(value)
  %1678 = call float @dx.op.binary.f32(i32 35, float %1220, float %1676)  ; FMax(a,b)
  %1679 = call float @dx.op.binary.f32(i32 35, float %1220, float %1677)  ; FMax(a,b)
  %1680 = fsub fast float %1679, %1678
  %1681 = fmul fast float %1680, %1671
  %1682 = fadd fast float %1681, %1678
  %1683 = call float @dx.op.unary.f32(i32 7, float %1682)  ; Saturate(value)
  %1684 = fsub fast float %1217, %1222
  %1685 = fsub fast float %1218, %1223
  %1686 = fsub fast float %1219, %1224
  %1687 = fmul fast float %1671, %1684
  %1688 = fmul fast float %1671, %1685
  %1689 = fmul fast float %1671, %1686
  %1690 = fadd fast float %1687, %1222
  %1691 = fadd fast float %1688, %1223
  %1692 = fadd fast float %1689, %1224
  %1693 = fsub fast float 1.000000e+00, %1683
  %1694 = fmul fast float %1693, %1690
  %1695 = fmul fast float %1693, %1691
  %1696 = fmul fast float %1693, %1692
  br label %1756

; <label>:1697                                    ; preds = %1656
  %1698 = fmul fast float %1667, %1229
  %1699 = call float @dx.op.unary.f32(i32 7, float %1698)  ; Saturate(value)
  %1700 = fsub fast float 2.000000e+00, %1699
  %1701 = fmul fast float %1699, 9.921875e-01
  %1702 = fmul fast float %1701, %1700
  %1703 = fadd fast float %1702, 3.906250e-03
  %1704 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %11, float %1703, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1705 = extractvalue %dx.types.ResRet.f32 %1704, 0
  %1706 = fsub fast float %1699, %1705
  %1707 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1706)  ; FMax(a,b)
  %1708 = fmul fast float %1215, %1205
  %1709 = call float @dx.op.unary.f32(i32 6, float %1708)  ; FAbs(value)
  %1710 = fcmp fast ogt float %1709, 0x3EB0C6F7A0000000
  br i1 %1710, label %1711, label %1717, !dx.controlflow.hints !97

; <label>:1711                                    ; preds = %1697
  %1712 = fmul fast float %1708, 0xBFF7154760000000
  %1713 = call float @dx.op.unary.f32(i32 21, float %1712)  ; Exp(value)
  %1714 = fsub fast float 1.000000e+00, %1713
  %1715 = fdiv fast float %1714, %1708
  %1716 = fmul fast float %1715, %1225
  br label %1717

; <label>:1717                                    ; preds = %1711, %1697
  %1718 = phi float [ %1716, %1711 ], [ %1225, %1697 ]
  %1719 = fadd fast float %1718, %1227
  %1720 = fmul fast float %1719, %1707
  %1721 = fmul fast float %1212, %1720
  %1722 = fsub fast float -0.000000e+00, %1721
  %1723 = fmul fast float %1213, %1720
  %1724 = fsub fast float -0.000000e+00, %1723
  %1725 = fmul fast float %1214, %1720
  %1726 = fsub fast float -0.000000e+00, %1725
  %1727 = call float @dx.op.unary.f32(i32 21, float %1722)  ; Exp(value)
  %1728 = call float @dx.op.unary.f32(i32 21, float %1724)  ; Exp(value)
  %1729 = call float @dx.op.unary.f32(i32 21, float %1726)  ; Exp(value)
  %1730 = fmul fast float %1241, %1241
  %1731 = fadd fast float %1730, 1.000000e+00
  %1732 = fmul fast float %1731, 0x3FAE8EC8A0000000
  %1733 = fmul fast float %1732, %1222
  %1734 = fmul fast float %1732, %1223
  %1735 = fmul fast float %1732, %1224
  %1736 = fmul fast float %1241, %1220
  %1737 = fsub fast float 1.000000e+00, %1736
  %1738 = fmul fast float %1220, %1220
  %1739 = fsub fast float 1.000000e+00, %1738
  %1740 = fmul fast float %1739, 0x3FB45F3060000000
  %1741 = fmul fast float %1737, %1737
  %1742 = fdiv fast float 1.000000e+00, %1741
  %1743 = fmul fast float %1740, %1742
  %1744 = fmul fast float %1743, %1217
  %1745 = fmul fast float %1743, %1218
  %1746 = fmul fast float %1743, %1219
  %1747 = fadd fast float %1744, %1733
  %1748 = fadd fast float %1745, %1734
  %1749 = fadd fast float %1746, %1735
  %1750 = fsub fast float 1.000000e+00, %1727
  %1751 = fsub fast float 1.000000e+00, %1728
  %1752 = fsub fast float 1.000000e+00, %1729
  %1753 = fmul fast float %1747, %1750
  %1754 = fmul fast float %1748, %1751
  %1755 = fmul fast float %1749, %1752
  br label %1756

; <label>:1756                                    ; preds = %1717, %1668
  %1757 = phi float [ %1694, %1668 ], [ %1753, %1717 ]
  %1758 = phi float [ %1695, %1668 ], [ %1754, %1717 ]
  %1759 = phi float [ %1696, %1668 ], [ %1755, %1717 ]
  %1760 = phi float [ %1683, %1668 ], [ %1727, %1717 ]
  %1761 = phi float [ %1683, %1668 ], [ %1728, %1717 ]
  %1762 = phi float [ %1683, %1668 ], [ %1729, %1717 ]
  br i1 %1249, label %1763, label %1961, !dx.controlflow.hints !98

; <label>:1763                                    ; preds = %1756
  %1764 = extractvalue %dx.types.CBufRet.f32 %1662, 0
  %1765 = fmul fast float %1764, %1664
  %1766 = fsub fast float %1659, %1757
  %1767 = fsub fast float %1660, %1758
  %1768 = fsub fast float %1661, %1759
  %1769 = fmul fast float %1765, %1766
  %1770 = fmul fast float %1765, %1767
  %1771 = fmul fast float %1765, %1768
  %1772 = fadd fast float %1769, %1757
  %1773 = fadd fast float %1770, %1758
  %1774 = fadd fast float %1771, %1759
  %1775 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %1760)  ; FMax(a,b)
  %1776 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %1761)  ; FMax(a,b)
  %1777 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %1762)  ; FMax(a,b)
  %1778 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %1658)  ; FMax(a,b)
  %1779 = call float @dx.op.binary.f32(i32 35, float %1657, float %1667)  ; FMax(a,b)
  %1780 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %1779)  ; FMax(a,b)
  %1781 = fdiv fast float %1657, %1780
  %1782 = call float @dx.op.unary.f32(i32 7, float %1781)  ; Saturate(value)
  %1783 = fdiv fast float %1667, %1780
  %1784 = call float @dx.op.unary.f32(i32 7, float %1783)  ; Saturate(value)
  %1785 = fcmp fast une float %1778, 1.000000e+00
  br i1 %1785, label %1786, label %1799, !dx.controlflow.hints !99

; <label>:1786                                    ; preds = %1763
  %1787 = call float @dx.op.unary.f32(i32 23, float %1778)  ; Log(value)
  %1788 = fmul fast float %1787, 0x3FE62E4300000000
  %1789 = fmul fast float %1659, %1788
  %1790 = fsub fast float -0.000000e+00, %1789
  %1791 = fmul fast float %1660, %1788
  %1792 = fsub fast float -0.000000e+00, %1791
  %1793 = fmul fast float %1661, %1788
  %1794 = fsub fast float -0.000000e+00, %1793
  %1795 = fsub fast float 1.000000e+00, %1778
  %1796 = fdiv fast float %1790, %1795
  %1797 = fdiv fast float %1792, %1795
  %1798 = fdiv fast float %1794, %1795
  br label %1799

; <label>:1799                                    ; preds = %1786, %1763
  %1800 = phi float [ %1796, %1786 ], [ %1659, %1763 ]
  %1801 = phi float [ %1797, %1786 ], [ %1660, %1763 ]
  %1802 = phi float [ %1798, %1786 ], [ %1661, %1763 ]
  %1803 = phi float [ %1788, %1786 ], [ 0.000000e+00, %1763 ]
  %1804 = fcmp fast une float %1775, 1.000000e+00
  br i1 %1804, label %1805, label %1812, !dx.controlflow.hints !100

; <label>:1805                                    ; preds = %1799
  %1806 = call float @dx.op.unary.f32(i32 23, float %1775)  ; Log(value)
  %1807 = fmul fast float %1806, 0x3FE62E4300000000
  %1808 = fmul fast float %1772, %1807
  %1809 = fsub fast float -0.000000e+00, %1808
  %1810 = fsub fast float 1.000000e+00, %1775
  %1811 = fdiv fast float %1809, %1810
  br label %1812

; <label>:1812                                    ; preds = %1805, %1799
  %1813 = phi float [ %1811, %1805 ], [ %1772, %1799 ]
  %1814 = phi float [ %1807, %1805 ], [ 0.000000e+00, %1799 ]
  %1815 = fcmp fast une float %1776, 1.000000e+00
  br i1 %1815, label %1816, label %1823, !dx.controlflow.hints !100

; <label>:1816                                    ; preds = %1812
  %1817 = call float @dx.op.unary.f32(i32 23, float %1776)  ; Log(value)
  %1818 = fmul fast float %1817, 0x3FE62E4300000000
  %1819 = fmul fast float %1773, %1818
  %1820 = fsub fast float -0.000000e+00, %1819
  %1821 = fsub fast float 1.000000e+00, %1776
  %1822 = fdiv fast float %1820, %1821
  br label %1823

; <label>:1823                                    ; preds = %1816, %1812
  %1824 = phi float [ %1822, %1816 ], [ %1773, %1812 ]
  %1825 = phi float [ %1818, %1816 ], [ 0.000000e+00, %1812 ]
  %1826 = fcmp fast une float %1777, 1.000000e+00
  br i1 %1826, label %1827, label %1834, !dx.controlflow.hints !100

; <label>:1827                                    ; preds = %1823
  %1828 = call float @dx.op.unary.f32(i32 23, float %1777)  ; Log(value)
  %1829 = fmul fast float %1828, 0x3FE62E4300000000
  %1830 = fmul fast float %1774, %1829
  %1831 = fsub fast float -0.000000e+00, %1830
  %1832 = fsub fast float 1.000000e+00, %1777
  %1833 = fdiv fast float %1831, %1832
  br label %1834

; <label>:1834                                    ; preds = %1827, %1823
  %1835 = phi float [ %1833, %1827 ], [ %1774, %1823 ]
  %1836 = phi float [ %1829, %1827 ], [ 0.000000e+00, %1823 ]
  %1837 = fmul fast float %1800, %1784
  %1838 = fmul fast float %1801, %1784
  %1839 = fmul fast float %1802, %1784
  %1840 = fmul fast float %1803, %1784
  %1841 = fmul fast float %1813, %1782
  %1842 = fmul fast float %1824, %1782
  %1843 = fmul fast float %1835, %1782
  %1844 = fmul fast float %1814, %1782
  %1845 = fmul fast float %1825, %1782
  %1846 = fmul fast float %1836, %1782
  %1847 = fadd fast float %1841, %1837
  %1848 = fadd fast float %1842, %1838
  %1849 = fadd fast float %1843, %1839
  %1850 = fadd fast float %1844, %1840
  %1851 = fadd fast float %1845, %1840
  %1852 = fadd fast float %1846, %1840
  %1853 = fcmp fast une float %1850, 0.000000e+00
  br i1 %1853, label %1854, label %1861, !dx.controlflow.hints !101

; <label>:1854                                    ; preds = %1834
  %1855 = fmul fast float %1850, 0x3FF7154760000000
  %1856 = call float @dx.op.unary.f32(i32 21, float %1855)  ; Exp(value)
  %1857 = fsub fast float 1.000000e+00, %1856
  %1858 = fmul fast float %1847, %1857
  %1859 = fsub fast float -0.000000e+00, %1858
  %1860 = fdiv fast float %1859, %1850
  br label %1861

; <label>:1861                                    ; preds = %1854, %1834
  %1862 = phi float [ %1856, %1854 ], [ 1.000000e+00, %1834 ]
  %1863 = phi float [ %1860, %1854 ], [ %1847, %1834 ]
  %1864 = fcmp fast une float %1851, 0.000000e+00
  br i1 %1864, label %1865, label %1872, !dx.controlflow.hints !101

; <label>:1865                                    ; preds = %1861
  %1866 = fmul fast float %1851, 0x3FF7154760000000
  %1867 = call float @dx.op.unary.f32(i32 21, float %1866)  ; Exp(value)
  %1868 = fsub fast float 1.000000e+00, %1867
  %1869 = fmul fast float %1848, %1868
  %1870 = fsub fast float -0.000000e+00, %1869
  %1871 = fdiv fast float %1870, %1851
  br label %1872

; <label>:1872                                    ; preds = %1865, %1861
  %1873 = phi float [ %1867, %1865 ], [ 1.000000e+00, %1861 ]
  %1874 = phi float [ %1871, %1865 ], [ %1848, %1861 ]
  %1875 = fcmp fast une float %1852, 0.000000e+00
  br i1 %1875, label %1876, label %1883, !dx.controlflow.hints !101

; <label>:1876                                    ; preds = %1872
  %1877 = fmul fast float %1852, 0x3FF7154760000000
  %1878 = call float @dx.op.unary.f32(i32 21, float %1877)  ; Exp(value)
  %1879 = fsub fast float 1.000000e+00, %1878
  %1880 = fmul fast float %1849, %1879
  %1881 = fsub fast float -0.000000e+00, %1880
  %1882 = fdiv fast float %1881, %1852
  br label %1883

; <label>:1883                                    ; preds = %1876, %1872
  %1884 = phi float [ %1878, %1876 ], [ 1.000000e+00, %1872 ]
  %1885 = phi float [ %1882, %1876 ], [ %1849, %1872 ]
  %1886 = fcmp fast ogt float %1782, %1784
  br i1 %1886, label %1887, label %1907, !dx.controlflow.hints !102

; <label>:1887                                    ; preds = %1883
  %1888 = fsub fast float 1.000000e+00, %1784
  %1889 = fmul fast float %1800, %1888
  %1890 = fmul fast float %1801, %1888
  %1891 = fmul fast float %1802, %1888
  %1892 = fmul fast float %1803, %1888
  %1893 = fcmp fast une float %1892, 0.000000e+00
  br i1 %1893, label %1894, label %1945, !dx.controlflow.hints !103

; <label>:1894                                    ; preds = %1887
  %1895 = fmul fast float %1892, 0x3FF7154760000000
  %1896 = call float @dx.op.unary.f32(i32 21, float %1895)  ; Exp(value)
  %1897 = fsub fast float 1.000000e+00, %1896
  %1898 = fmul fast float %1889, %1897
  %1899 = fsub fast float -0.000000e+00, %1898
  %1900 = fmul fast float %1890, %1897
  %1901 = fsub fast float -0.000000e+00, %1900
  %1902 = fmul fast float %1891, %1897
  %1903 = fsub fast float -0.000000e+00, %1902
  %1904 = fdiv fast float %1899, %1892
  %1905 = fdiv fast float %1901, %1892
  %1906 = fdiv fast float %1903, %1892
  br label %1945

; <label>:1907                                    ; preds = %1883
  %1908 = fsub fast float 1.000000e+00, %1782
  %1909 = fmul fast float %1813, %1908
  %1910 = fmul fast float %1824, %1908
  %1911 = fmul fast float %1835, %1908
  %1912 = fmul fast float %1814, %1908
  %1913 = fmul fast float %1825, %1908
  %1914 = fmul fast float %1836, %1908
  %1915 = fcmp fast une float %1912, 0.000000e+00
  br i1 %1915, label %1916, label %1923, !dx.controlflow.hints !101

; <label>:1916                                    ; preds = %1907
  %1917 = fmul fast float %1912, 0x3FF7154760000000
  %1918 = call float @dx.op.unary.f32(i32 21, float %1917)  ; Exp(value)
  %1919 = fsub fast float 1.000000e+00, %1918
  %1920 = fmul fast float %1909, %1919
  %1921 = fsub fast float -0.000000e+00, %1920
  %1922 = fdiv fast float %1921, %1912
  br label %1923

; <label>:1923                                    ; preds = %1916, %1907
  %1924 = phi float [ %1922, %1916 ], [ %1909, %1907 ]
  %1925 = phi float [ %1918, %1916 ], [ 1.000000e+00, %1907 ]
  %1926 = fcmp fast une float %1913, 0.000000e+00
  br i1 %1926, label %1927, label %1934, !dx.controlflow.hints !101

; <label>:1927                                    ; preds = %1923
  %1928 = fmul fast float %1913, 0x3FF7154760000000
  %1929 = call float @dx.op.unary.f32(i32 21, float %1928)  ; Exp(value)
  %1930 = fsub fast float 1.000000e+00, %1929
  %1931 = fmul fast float %1910, %1930
  %1932 = fsub fast float -0.000000e+00, %1931
  %1933 = fdiv fast float %1932, %1913
  br label %1934

; <label>:1934                                    ; preds = %1927, %1923
  %1935 = phi float [ %1933, %1927 ], [ %1910, %1923 ]
  %1936 = phi float [ %1929, %1927 ], [ 1.000000e+00, %1923 ]
  %1937 = fcmp fast une float %1914, 0.000000e+00
  br i1 %1937, label %1938, label %1945, !dx.controlflow.hints !101

; <label>:1938                                    ; preds = %1934
  %1939 = fmul fast float %1914, 0x3FF7154760000000
  %1940 = call float @dx.op.unary.f32(i32 21, float %1939)  ; Exp(value)
  %1941 = fsub fast float 1.000000e+00, %1940
  %1942 = fmul fast float %1911, %1941
  %1943 = fsub fast float -0.000000e+00, %1942
  %1944 = fdiv fast float %1943, %1914
  br label %1945

; <label>:1945                                    ; preds = %1938, %1934, %1894, %1887
  %1946 = phi float [ %1944, %1938 ], [ %1906, %1894 ], [ %1891, %1887 ], [ %1911, %1934 ]
  %1947 = phi float [ %1935, %1938 ], [ %1905, %1894 ], [ %1890, %1887 ], [ %1935, %1934 ]
  %1948 = phi float [ %1924, %1938 ], [ %1904, %1894 ], [ %1889, %1887 ], [ %1924, %1934 ]
  %1949 = phi float [ %1940, %1938 ], [ %1896, %1894 ], [ 1.000000e+00, %1887 ], [ 1.000000e+00, %1934 ]
  %1950 = phi float [ %1936, %1938 ], [ %1896, %1894 ], [ 1.000000e+00, %1887 ], [ %1936, %1934 ]
  %1951 = phi float [ %1925, %1938 ], [ %1896, %1894 ], [ 1.000000e+00, %1887 ], [ %1925, %1934 ]
  %1952 = fmul fast float %1951, %1863
  %1953 = fmul fast float %1950, %1874
  %1954 = fmul fast float %1949, %1885
  %1955 = fadd fast float %1952, %1948
  %1956 = fadd fast float %1953, %1947
  %1957 = fadd fast float %1954, %1946
  %1958 = fmul fast float %1951, %1862
  %1959 = fmul fast float %1950, %1873
  %1960 = fmul fast float %1949, %1884
  br label %1961

; <label>:1961                                    ; preds = %1945, %1756
  %1962 = phi float [ %1762, %1756 ], [ %1960, %1945 ]
  %1963 = phi float [ %1761, %1756 ], [ %1959, %1945 ]
  %1964 = phi float [ %1760, %1756 ], [ %1958, %1945 ]
  %1965 = phi float [ %1759, %1756 ], [ %1957, %1945 ]
  %1966 = phi float [ %1758, %1756 ], [ %1956, %1945 ]
  %1967 = phi float [ %1757, %1756 ], [ %1955, %1945 ]
  %1968 = fmul fast float %1964, %1105
  %1969 = fmul fast float %1963, %1106
  %1970 = fmul fast float %1962, %1107
  %1971 = fsub fast float 1.000000e+00, %1168
  %1972 = fmul fast float %1967, %1971
  %1973 = fmul fast float %1966, %1971
  %1974 = fmul fast float %1965, %1971
  %1975 = fadd fast float %1972, %1968
  %1976 = fadd fast float %1973, %1969
  %1977 = fadd fast float %1974, %1970
  %1978 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 423)  ; CBufferLoadLegacy(handle,regIndex)
  %1979 = extractvalue %dx.types.CBufRet.f32 %1978, 2
  %1980 = fmul fast float %1979, %1178
  %1981 = call float @dx.op.unary.f32(i32 7, float %1980)  ; Saturate(value)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %3, i32 %14, i32 %15, i32 undef, float %1168, float %1168, float %1168, float %1168, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %1982 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1983 = extractvalue %dx.types.CBufRet.f32 %1982, 0
  %1984 = fmul fast float %1983, %1975
  %1985 = fmul fast float %1983, %1976
  %1986 = fmul fast float %1983, %1977
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %4, i32 %14, i32 %15, i32 undef, float %1984, float %1985, float %1986, float %1984, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %14, i32 %15, i32 undef, float %1981, float %1981, float %1981, float %1981, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
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
!24 = !{void ()* @cs_fog_raymarching_air_brfog, !"cs_fog_raymarching_air_brfog", null, !4, !25}
!25 = !{i32 0, i64 272, i32 4, !26}
!26 = !{i32 8, i32 8, i32 1}
!27 = distinct !{!27, !"dx.controlflow.hints", i32 2}
!28 = distinct !{!28, !"dx.controlflow.hints", i32 2}
!29 = distinct !{!29, !"dx.controlflow.hints", i32 2}
!30 = distinct !{!30, !"dx.controlflow.hints", i32 2}
!31 = distinct !{!31, !"dx.controlflow.hints", i32 2}
!32 = distinct !{!32, !"dx.controlflow.hints", i32 2}
!33 = distinct !{!33, !"dx.controlflow.hints", i32 2}
!34 = distinct !{!34, !"dx.controlflow.hints", i32 2}
!35 = distinct !{!35, !"dx.controlflow.hints", i32 2}
!36 = distinct !{!36, !"dx.controlflow.hints", i32 1}
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

