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
; shader hash: 9213729302732cba255a45c7d75b76f7
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
;                                   sampler      NA          NA      S1             s3     1
;                                   texture     f32          3d      T0             t3     1
;                                   texture     f32          2d      T1            t16     1
;                                   texture     f32          2d      T2            t27     1
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

define void @cs_fog_raymarching_heightmap_brfog() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 3, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 17, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 13, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 14, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 27, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 16, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
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
  br i1 %58, label %59, label %200, !dx.controlflow.hints !29

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
  %214 = extractvalue %dx.types.ResRet.f32 %213, 0
  %215 = extractvalue %dx.types.ResRet.f32 %213, 1
  %216 = extractvalue %dx.types.ResRet.f32 %213, 2
  %217 = extractvalue %dx.types.ResRet.f32 %213, 3
  %218 = fadd fast float %214, %208
  %219 = fadd fast float %215, %208
  %220 = fadd fast float %216, %208
  %221 = fadd fast float %217, %208
  %222 = call float @dx.op.unary.f32(i32 22, float %218)  ; Frc(value)
  %223 = call float @dx.op.unary.f32(i32 22, float %219)  ; Frc(value)
  %224 = call float @dx.op.unary.f32(i32 22, float %220)  ; Frc(value)
  %225 = call float @dx.op.unary.f32(i32 22, float %221)  ; Frc(value)
  %226 = fadd fast float %224, %204
  %227 = fadd fast float %225, %205
  %228 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %229 = extractvalue %dx.types.CBufRet.f32 %228, 2
  %230 = extractvalue %dx.types.CBufRet.f32 %228, 3
  %231 = fmul fast float %229, %226
  %232 = fmul fast float %230, %227
  %233 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %234 = extractvalue %dx.types.CBufRet.f32 %233, 0
  %235 = extractvalue %dx.types.CBufRet.f32 %233, 1
  %236 = extractvalue %dx.types.CBufRet.f32 %233, 2
  %237 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %238 = extractvalue %dx.types.CBufRet.f32 %237, 1
  %239 = fmul fast float %231, 2.000000e+00
  %240 = fmul fast float %232, 2.000000e+00
  %241 = fsub fast float 1.000000e+00, %239
  %242 = fsub fast float 1.000000e+00, %240
  %243 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %244 = extractvalue %dx.types.CBufRet.f32 %243, 0
  %245 = extractvalue %dx.types.CBufRet.f32 %243, 1
  %246 = extractvalue %dx.types.CBufRet.f32 %243, 2
  %247 = fmul fast float %244, %241
  %248 = fmul fast float %245, %241
  %249 = fmul fast float %246, %241
  %250 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %251 = extractvalue %dx.types.CBufRet.f32 %250, 0
  %252 = extractvalue %dx.types.CBufRet.f32 %250, 1
  %253 = extractvalue %dx.types.CBufRet.f32 %250, 2
  %254 = fmul fast float %251, %242
  %255 = fmul fast float %252, %242
  %256 = fmul fast float %253, %242
  %257 = fadd fast float %254, %247
  %258 = fadd fast float %255, %248
  %259 = fadd fast float %256, %249
  %260 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %261 = extractvalue %dx.types.CBufRet.f32 %260, 0
  %262 = extractvalue %dx.types.CBufRet.f32 %260, 1
  %263 = extractvalue %dx.types.CBufRet.f32 %260, 2
  %264 = fadd fast float %257, %261
  %265 = fadd fast float %258, %262
  %266 = fadd fast float %259, %263
  %267 = fmul fast float %264, %238
  %268 = fmul fast float %265, %238
  %269 = fmul fast float %266, %238
  %270 = fmul fast float %267, %267
  %271 = fmul fast float %268, %268
  %272 = fadd fast float %270, %271
  %273 = fmul fast float %269, %269
  %274 = fadd fast float %272, %273
  %275 = call float @dx.op.unary.f32(i32 24, float %274)  ; Sqrt(value)
  %276 = fdiv fast float 1.000000e+00, %275
  %277 = fmul fast float %267, %276
  %278 = fmul fast float %268, %276
  %279 = fmul fast float %269, %276
  %280 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %6, i32 0, i32 %31, i32 %32, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %281 = extractvalue %dx.types.ResRet.f32 %280, 0
  %282 = fcmp fast ogt float %281, -1.000000e+00
  %283 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %284 = extractvalue %dx.types.CBufRet.f32 %283, 1
  %285 = select i1 %282, float %284, float 1.000000e+00
  %286 = fadd fast float %281, 1.000000e+00
  %287 = fmul fast float %285, %286
  %288 = call float @dx.op.unary.f32(i32 6, float %287)  ; FAbs(value)
  %289 = fdiv fast float 1.000000e+00, %238
  %290 = fmul fast float %289, %275
  %291 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 423)  ; CBufferLoadLegacy(handle,regIndex)
  %292 = extractvalue %dx.types.CBufRet.f32 %291, 1
  %293 = fmul fast float %292, %290
  %294 = fmul fast float %290, %288
  %295 = extractvalue %dx.types.CBufRet.f32 %283, 3
  %296 = fcmp fast oge float %288, %295
  %297 = call float @dx.op.binary.f32(i32 36, float %294, float %293)  ; FMin(a,b)
  %298 = select i1 %296, float %293, float %297
  %299 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %15, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %300 = extractvalue %dx.types.CBufRet.i32 %299, 3
  %301 = icmp eq i32 %300, 0
  %302 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 401)  ; CBufferLoadLegacy(handle,regIndex)
  %303 = extractvalue %dx.types.CBufRet.f32 %302, 2
  %304 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %305 = extractvalue %dx.types.CBufRet.f32 %304, 2
  %306 = fsub fast float %303, %236
  %307 = fadd fast float %306, %305
  %308 = fsub fast float 0xC7EFFFFFE0000000, %236
  br i1 %301, label %320, label %309, !dx.controlflow.hints !30

; <label>:309                                     ; preds = %200
  %310 = fsub fast float -0.000000e+00, %235
  %311 = fsub fast float -0.000000e+00, %234
  %312 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %311, float %310, float %307)  ; Dot3(ax,ay,az,bx,by,bz)
  %313 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %277, float %278, float %279)  ; Dot3(ax,ay,az,bx,by,bz)
  %314 = fdiv fast float 1.000000e+00, %313
  %315 = fmul fast float %314, %312
  %316 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %311, float %310, float %308)  ; Dot3(ax,ay,az,bx,by,bz)
  %317 = fmul fast float %314, %316
  %318 = call float @dx.op.binary.f32(i32 36, float %315, float %317)  ; FMin(a,b)
  %319 = call float @dx.op.binary.f32(i32 35, float %315, float %317)  ; FMax(a,b)
  br label %353

; <label>:320                                     ; preds = %200
  %321 = extractvalue %dx.types.CBufRet.f32 %302, 0
  %322 = extractvalue %dx.types.CBufRet.f32 %302, 1
  %323 = extractvalue %dx.types.CBufRet.f32 %304, 0
  %324 = extractvalue %dx.types.CBufRet.f32 %304, 1
  %325 = fdiv fast float 1.000000e+00, %277
  %326 = fdiv fast float 1.000000e+00, %278
  %327 = fdiv fast float 1.000000e+00, %279
  %328 = fsub fast float %321, %234
  %329 = fmul fast float %325, %328
  %330 = fadd fast float %328, %323
  %331 = fmul fast float %330, %325
  %332 = call float @dx.op.binary.f32(i32 36, float %329, float %331)  ; FMin(a,b)
  %333 = call float @dx.op.binary.f32(i32 35, float %329, float %331)  ; FMax(a,b)
  %334 = fsub fast float %322, %235
  %335 = fmul fast float %326, %334
  %336 = fadd fast float %334, %324
  %337 = fmul fast float %336, %326
  %338 = call float @dx.op.binary.f32(i32 36, float %335, float %337)  ; FMin(a,b)
  %339 = call float @dx.op.binary.f32(i32 35, float %332, float %338)  ; FMax(a,b)
  %340 = call float @dx.op.binary.f32(i32 35, float %335, float %337)  ; FMax(a,b)
  %341 = call float @dx.op.binary.f32(i32 36, float %333, float %340)  ; FMin(a,b)
  %342 = fmul fast float %327, %308
  %343 = fmul fast float %327, %307
  %344 = call float @dx.op.binary.f32(i32 36, float %342, float %343)  ; FMin(a,b)
  %345 = call float @dx.op.binary.f32(i32 35, float %339, float %344)  ; FMax(a,b)
  %346 = call float @dx.op.binary.f32(i32 35, float %342, float %343)  ; FMax(a,b)
  %347 = call float @dx.op.binary.f32(i32 36, float %341, float %346)  ; FMin(a,b)
  %348 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %345)  ; FMax(a,b)
  %349 = fcmp fast ult float %347, %348
  br i1 %349, label %353, label %350, !dx.controlflow.hints !31

; <label>:350                                     ; preds = %320
  %351 = call float @dx.op.binary.f32(i32 36, float %345, float %347)  ; FMin(a,b)
  %352 = call float @dx.op.binary.f32(i32 35, float %345, float %347)  ; FMax(a,b)
  br label %353

; <label>:353                                     ; preds = %350, %320, %309
  %354 = phi float [ %318, %309 ], [ %351, %350 ], [ 0.000000e+00, %320 ]
  %355 = phi float [ %319, %309 ], [ %352, %350 ], [ 0.000000e+00, %320 ]
  %356 = fcmp fast oeq float %355, 0.000000e+00
  %357 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 427)  ; CBufferLoadLegacy(handle,regIndex)
  %358 = extractvalue %dx.types.CBufRet.f32 %357, 1
  %359 = fcmp fast olt float %355, %358
  %360 = or i1 %356, %359
  br i1 %360, label %365, label %361, !dx.controlflow.hints !32

; <label>:361                                     ; preds = %353
  %362 = call float @dx.op.binary.f32(i32 35, float %358, float %354)  ; FMax(a,b)
  %363 = call float @dx.op.binary.f32(i32 36, float 0x47EFFFFFE0000000, float %362)  ; FMin(a,b)
  %364 = call float @dx.op.binary.f32(i32 35, float -1.000000e+00, float %355)  ; FMax(a,b)
  br label %365

; <label>:365                                     ; preds = %361, %353
  %366 = phi i32 [ 1, %361 ], [ 0, %353 ]
  %367 = phi float [ %364, %361 ], [ -1.000000e+00, %353 ]
  %368 = phi float [ %363, %361 ], [ 0x47EFFFFFE0000000, %353 ]
  %369 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %370 = extractvalue %dx.types.CBufRet.f32 %369, 2
  %371 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %372 = extractvalue %dx.types.CBufRet.f32 %371, 3
  %373 = fsub fast float -0.000000e+00, %234
  %374 = fsub fast float -0.000000e+00, %235
  %375 = fsub fast float %370, %236
  %376 = fadd fast float %375, %372
  %377 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %373, float %374, float %376)  ; Dot3(ax,ay,az,bx,by,bz)
  %378 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %277, float %278, float %279)  ; Dot3(ax,ay,az,bx,by,bz)
  %379 = fdiv fast float 1.000000e+00, %378
  %380 = fmul fast float %379, %377
  %381 = fcmp fast olt float %380, 0.000000e+00
  %382 = fcmp fast ogt float %279, 0.000000e+00
  %383 = and i1 %382, %381
  br i1 %383, label %388, label %384, !dx.controlflow.hints !33

; <label>:384                                     ; preds = %365
  %385 = fcmp fast olt float %279, 0.000000e+00
  br i1 %385, label %386, label %388, !dx.controlflow.hints !34

; <label>:386                                     ; preds = %384
  %387 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %380)  ; FMax(a,b)
  br label %388

; <label>:388                                     ; preds = %386, %384, %365
  %389 = phi float [ 0.000000e+00, %365 ], [ %387, %386 ], [ 0.000000e+00, %384 ]
  %390 = phi float [ 0.000000e+00, %365 ], [ 0x47EFFFFFE0000000, %386 ], [ %380, %384 ]
  %391 = fcmp fast oeq float %390, 0.000000e+00
  br i1 %391, label %395, label %392, !dx.controlflow.hints !35

; <label>:392                                     ; preds = %388
  %393 = call float @dx.op.binary.f32(i32 36, float %368, float %389)  ; FMin(a,b)
  %394 = call float @dx.op.binary.f32(i32 35, float %367, float %390)  ; FMax(a,b)
  br label %395

; <label>:395                                     ; preds = %392, %388
  %396 = phi i32 [ 1, %392 ], [ 0, %388 ]
  %397 = phi float [ %394, %392 ], [ %367, %388 ]
  %398 = phi float [ %393, %392 ], [ %368, %388 ]
  %399 = call float @dx.op.binary.f32(i32 36, float %298, float %397)  ; FMin(a,b)
  %400 = call float @dx.op.binary.f32(i32 35, float %275, float %398)  ; FMax(a,b)
  %401 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %402 = extractvalue %dx.types.CBufRet.f32 %401, 0
  %403 = fmul fast float %223, 2.000000e+00
  %404 = fadd fast float %403, -1.000000e+00
  %405 = fmul fast float %402, %404
  %406 = fadd fast float %405, %400
  %407 = fcmp fast olt float %406, %399
  %408 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %409 = extractvalue %dx.types.CBufRet.f32 %408, 2
  %410 = fcmp fast olt float %409, 1.000000e+00
  %411 = and i1 %407, %410
  br i1 %411, label %412, label %1493

; <label>:412                                     ; preds = %395
  %413 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %14, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %414 = extractvalue %dx.types.CBufRet.i32 %413, 1
  %415 = add i32 %414, -1
  %416 = fmul fast float %406, %279
  %417 = fadd fast float %416, %236
  %418 = fmul fast float %406, %278
  %419 = fadd fast float %418, %235
  %420 = fmul fast float %406, %277
  %421 = fadd fast float %420, %234
  br label %422

; <label>:422                                     ; preds = %1467, %412
  %423 = phi i32 [ %1469, %1467 ], [ undef, %412 ]
  %424 = phi float [ %1470, %1467 ], [ undef, %412 ]
  %425 = phi i32 [ %794, %1467 ], [ undef, %412 ]
  %426 = phi float [ %796, %1467 ], [ undef, %412 ]
  %427 = phi float [ %1471, %1467 ], [ 0.000000e+00, %412 ]
  %428 = phi float [ %1472, %1467 ], [ 1.000000e+00, %412 ]
  %429 = phi float [ %1473, %1467 ], [ 0.000000e+00, %412 ]
  %430 = phi float [ %1474, %1467 ], [ 0.000000e+00, %412 ]
  %431 = phi float [ %1475, %1467 ], [ 0.000000e+00, %412 ]
  %432 = phi float [ %1485, %1467 ], [ %421, %412 ]
  %433 = phi float [ %1486, %1467 ], [ %419, %412 ]
  %434 = phi float [ %1487, %1467 ], [ %417, %412 ]
  %435 = phi float [ %1468, %1467 ], [ %406, %412 ]
  %436 = phi i32 [ %619, %1467 ], [ %415, %412 ]
  %437 = phi float [ %1476, %1467 ], [ 0.000000e+00, %412 ]
  %438 = phi float [ %1477, %1467 ], [ 0.000000e+00, %412 ]
  %439 = phi float [ %1478, %1467 ], [ 0.000000e+00, %412 ]
  %440 = phi float [ %1479, %1467 ], [ 0.000000e+00, %412 ]
  %441 = phi float [ %1480, %1467 ], [ 0.000000e+00, %412 ]
  %442 = phi i32 [ %1481, %1467 ], [ 0, %412 ]
  %443 = fsub fast float -0.000000e+00, %433
  %444 = fsub fast float -0.000000e+00, %432
  %445 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %446 = extractvalue %dx.types.CBufRet.f32 %445, 0
  %447 = icmp eq i32 %366, 0
  br i1 %447, label %616, label %448, !dx.controlflow.hints !36

; <label>:448                                     ; preds = %422
  %449 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %14, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %450 = extractvalue %dx.types.CBufRet.i32 %449, 1
  %451 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 427)  ; CBufferLoadLegacy(handle,regIndex)
  %452 = extractvalue %dx.types.CBufRet.f32 %451, 1
  %453 = fcmp fast ogt float %452, %435
  br i1 %453, label %454, label %456, !dx.controlflow.hints !37

; <label>:454                                     ; preds = %448
  %455 = fsub fast float %452, %435
  br label %606

; <label>:456                                     ; preds = %448
  %457 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %15, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %458 = extractvalue %dx.types.CBufRet.i32 %457, 3
  %459 = icmp eq i32 %458, 0
  %460 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 401)  ; CBufferLoadLegacy(handle,regIndex)
  %461 = extractvalue %dx.types.CBufRet.f32 %460, 2
  %462 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %463 = extractvalue %dx.types.CBufRet.f32 %462, 2
  %464 = fsub fast float %461, %434
  %465 = fadd fast float %464, %463
  %466 = fsub fast float 0xC7EFFFFFE0000000, %434
  br i1 %459, label %474, label %467, !dx.controlflow.hints !30

; <label>:467                                     ; preds = %456
  %468 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %444, float %443, float %465)  ; Dot3(ax,ay,az,bx,by,bz)
  %469 = fmul fast float %379, %468
  %470 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %444, float %443, float %466)  ; Dot3(ax,ay,az,bx,by,bz)
  %471 = fmul fast float %379, %470
  %472 = call float @dx.op.binary.f32(i32 36, float %469, float %471)  ; FMin(a,b)
  %473 = call float @dx.op.binary.f32(i32 35, float %469, float %471)  ; FMax(a,b)
  br label %507

; <label>:474                                     ; preds = %456
  %475 = extractvalue %dx.types.CBufRet.f32 %460, 0
  %476 = extractvalue %dx.types.CBufRet.f32 %460, 1
  %477 = extractvalue %dx.types.CBufRet.f32 %462, 0
  %478 = extractvalue %dx.types.CBufRet.f32 %462, 1
  %479 = fdiv fast float 1.000000e+00, %277
  %480 = fdiv fast float 1.000000e+00, %278
  %481 = fdiv fast float 1.000000e+00, %279
  %482 = fsub fast float %475, %432
  %483 = fmul fast float %479, %482
  %484 = fadd fast float %482, %477
  %485 = fmul fast float %484, %479
  %486 = call float @dx.op.binary.f32(i32 36, float %483, float %485)  ; FMin(a,b)
  %487 = call float @dx.op.binary.f32(i32 35, float %483, float %485)  ; FMax(a,b)
  %488 = fsub fast float %476, %433
  %489 = fmul fast float %480, %488
  %490 = fadd fast float %488, %478
  %491 = fmul fast float %490, %480
  %492 = call float @dx.op.binary.f32(i32 36, float %489, float %491)  ; FMin(a,b)
  %493 = call float @dx.op.binary.f32(i32 35, float %486, float %492)  ; FMax(a,b)
  %494 = call float @dx.op.binary.f32(i32 35, float %489, float %491)  ; FMax(a,b)
  %495 = call float @dx.op.binary.f32(i32 36, float %487, float %494)  ; FMin(a,b)
  %496 = fmul fast float %481, %466
  %497 = fmul fast float %481, %465
  %498 = call float @dx.op.binary.f32(i32 36, float %496, float %497)  ; FMin(a,b)
  %499 = call float @dx.op.binary.f32(i32 35, float %493, float %498)  ; FMax(a,b)
  %500 = call float @dx.op.binary.f32(i32 35, float %496, float %497)  ; FMax(a,b)
  %501 = call float @dx.op.binary.f32(i32 36, float %495, float %500)  ; FMin(a,b)
  %502 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %499)  ; FMax(a,b)
  %503 = fcmp fast ult float %501, %502
  br i1 %503, label %507, label %504, !dx.controlflow.hints !31

; <label>:504                                     ; preds = %474
  %505 = call float @dx.op.binary.f32(i32 36, float %499, float %501)  ; FMin(a,b)
  %506 = call float @dx.op.binary.f32(i32 35, float %499, float %501)  ; FMax(a,b)
  br label %507

; <label>:507                                     ; preds = %504, %474, %467
  %508 = phi float [ %472, %467 ], [ %505, %504 ], [ 0.000000e+00, %474 ]
  %509 = phi float [ %473, %467 ], [ %506, %504 ], [ 0.000000e+00, %474 ]
  %510 = fcmp fast ogt float %508, 0.000000e+00
  br i1 %510, label %606, label %511, !dx.controlflow.hints !38

; <label>:511                                     ; preds = %507
  %512 = fcmp fast ugt float %509, 0.000000e+00
  br i1 %512, label %513, label %606, !dx.controlflow.hints !39

; <label>:513                                     ; preds = %511
  %514 = icmp sgt i32 %436, 0
  br i1 %514, label %515, label %600

; <label>:515                                     ; preds = %513
  br label %516

; <label>:516                                     ; preds = %596, %515
  %517 = phi i32 [ %597, %596 ], [ %436, %515 ]
  %518 = sitofp i32 %517 to float
  %519 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 401)  ; CBufferLoadLegacy(handle,regIndex)
  %520 = extractvalue %dx.types.CBufRet.f32 %519, 0
  %521 = extractvalue %dx.types.CBufRet.f32 %519, 1
  %522 = fsub fast float %432, %520
  %523 = fsub fast float %433, %521
  %524 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 403)  ; CBufferLoadLegacy(handle,regIndex)
  %525 = extractvalue %dx.types.CBufRet.f32 %524, 0
  %526 = extractvalue %dx.types.CBufRet.f32 %524, 1
  %527 = fmul fast float %522, %525
  %528 = fmul fast float %523, %526
  %529 = fsub fast float 1.000000e+00, %528
  %530 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %15, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %531 = extractvalue %dx.types.CBufRet.i32 %530, 3
  %532 = icmp eq i32 %531, 0
  br i1 %532, label %539, label %533, !dx.controlflow.hints !40

; <label>:533                                     ; preds = %516
  %534 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %12, float %527, float %529, float undef, float undef, i32 0, i32 0, i32 undef, float %518)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %535 = extractvalue %dx.types.ResRet.f32 %534, 0
  %536 = extractvalue %dx.types.ResRet.f32 %534, 1
  %537 = extractvalue %dx.types.ResRet.f32 %534, 2
  %538 = extractvalue %dx.types.ResRet.f32 %534, 3
  br label %545

; <label>:539                                     ; preds = %516
  %540 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %13, float %527, float %529, float undef, float undef, i32 0, i32 0, i32 undef, float %518)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %541 = extractvalue %dx.types.ResRet.f32 %540, 0
  %542 = extractvalue %dx.types.ResRet.f32 %540, 1
  %543 = extractvalue %dx.types.ResRet.f32 %540, 2
  %544 = extractvalue %dx.types.ResRet.f32 %540, 3
  br label %545

; <label>:545                                     ; preds = %539, %533
  %546 = phi float [ %535, %533 ], [ %541, %539 ]
  %547 = phi float [ %536, %533 ], [ %542, %539 ]
  %548 = phi float [ %537, %533 ], [ %543, %539 ]
  %549 = phi float [ %538, %533 ], [ %544, %539 ]
  %550 = extractvalue %dx.types.CBufRet.f32 %524, 3
  %551 = fmul fast float %550, %546
  %552 = extractvalue %dx.types.CBufRet.f32 %519, 2
  %553 = fadd fast float %551, %552
  %554 = fmul fast float %550, %547
  %555 = fadd fast float %554, %552
  %556 = fmul fast float %550, %548
  %557 = fadd fast float %556, %552
  %558 = and i32 %517, 31
  %559 = shl i32 1, %558
  %560 = uitofp i32 %559 to float
  %561 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 402)  ; CBufferLoadLegacy(handle,regIndex)
  %562 = extractvalue %dx.types.CBufRet.f32 %561, 3
  %563 = fdiv fast float 1.000000e+00, %562
  %564 = fmul fast float %563, %560
  %565 = fmul fast float %564, %279
  %566 = fadd fast float %565, %434
  %567 = fcmp fast oeq float %549, 0.000000e+00
  %568 = fcmp fast ogt float %434, %555
  %569 = fcmp fast ogt float %566, %555
  %570 = and i1 %568, %569
  %571 = or i1 %567, %570
  br i1 %571, label %572, label %576, !dx.controlflow.hints !41

; <label>:572                                     ; preds = %545
  %573 = add nsw i32 %517, 1
  %574 = add nsw i32 %450, -1
  %575 = call i32 @dx.op.binary.i32(i32 38, i32 %573, i32 %574)  ; IMin(a,b)
  br label %606

; <label>:576                                     ; preds = %545
  %577 = fcmp fast olt float %434, %557
  %578 = fcmp fast olt float %566, %557
  %579 = and i1 %577, %578
  br i1 %579, label %580, label %584, !dx.controlflow.hints !42

; <label>:580                                     ; preds = %576
  %581 = add nsw i32 %517, 1
  %582 = add nsw i32 %450, -1
  %583 = call i32 @dx.op.binary.i32(i32 38, i32 %581, i32 %582)  ; IMin(a,b)
  br label %606

; <label>:584                                     ; preds = %576
  %585 = fcmp fast olt float %434, %553
  %586 = fcmp fast olt float %566, %553
  %587 = and i1 %585, %586
  br i1 %587, label %588, label %596, !dx.controlflow.hints !43

; <label>:588                                     ; preds = %584
  %589 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 406)  ; CBufferLoadLegacy(handle,regIndex)
  %590 = extractvalue %dx.types.CBufRet.f32 %589, 3
  %591 = extractvalue %dx.types.CBufRet.f32 %524, 2
  %592 = fcmp fast une float %590, %591
  br i1 %592, label %593, label %600, !dx.controlflow.hints !44

; <label>:593                                     ; preds = %588
  %594 = fsub fast float %434, %557
  %595 = call float @dx.op.binary.f32(i32 36, float %564, float %594)  ; FMin(a,b)
  br label %600

; <label>:596                                     ; preds = %584
  %597 = add nsw i32 %517, -1
  %598 = icmp sgt i32 %517, 1
  br i1 %598, label %516, label %599

; <label>:599                                     ; preds = %596
  br label %600

; <label>:600                                     ; preds = %599, %593, %588, %513
  %601 = phi float [ %595, %593 ], [ %564, %588 ], [ 0.000000e+00, %513 ], [ 0.000000e+00, %599 ]
  %602 = phi i32 [ %517, %593 ], [ %517, %588 ], [ %436, %513 ], [ %597, %599 ]
  %603 = add nsw i32 %602, 1
  %604 = add nsw i32 %450, -1
  %605 = call i32 @dx.op.binary.i32(i32 38, i32 %603, i32 %604)  ; IMin(a,b)
  br label %606

; <label>:606                                     ; preds = %600, %580, %572, %511, %507, %454
  %607 = phi float [ %455, %454 ], [ %564, %572 ], [ %564, %580 ], [ %601, %600 ], [ 0x47EFFFFFE0000000, %511 ], [ %508, %507 ]
  %608 = phi i32 [ %366, %454 ], [ %366, %572 ], [ %366, %580 ], [ %366, %600 ], [ 0, %511 ], [ %366, %507 ]
  %609 = phi i32 [ %436, %454 ], [ %575, %572 ], [ %583, %580 ], [ %605, %600 ], [ %436, %511 ], [ %436, %507 ]
  %610 = icmp ne i32 %608, 0
  %611 = zext i1 %610 to i32
  %612 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %613 = extractvalue %dx.types.CBufRet.f32 %612, 2
  %614 = call float @dx.op.binary.f32(i32 35, float %607, float %613)  ; FMax(a,b)
  %615 = call float @dx.op.binary.f32(i32 36, float 0x47EFFFFFE0000000, float %614)  ; FMin(a,b)
  br label %616

; <label>:616                                     ; preds = %606, %422
  %617 = phi i32 [ %611, %606 ], [ 0, %422 ]
  %618 = phi float [ %615, %606 ], [ 0x47EFFFFFE0000000, %422 ]
  %619 = phi i32 [ %609, %606 ], [ %436, %422 ]
  %620 = icmp eq i32 %396, 0
  br i1 %620, label %793, label %621, !dx.controlflow.hints !45

; <label>:621                                     ; preds = %616
  %622 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %15, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %623 = extractvalue %dx.types.CBufRet.i32 %622, 1
  %624 = and i32 %623, 1
  %625 = icmp eq i32 %624, 0
  br i1 %625, label %626, label %783, !dx.controlflow.hints !46

; <label>:626                                     ; preds = %621
  %627 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 204)  ; CBufferLoadLegacy(handle,regIndex)
  %628 = extractvalue %dx.types.CBufRet.f32 %627, 2
  %629 = extractvalue %dx.types.CBufRet.f32 %627, 3
  %630 = fmul fast float %628, %432
  %631 = fmul fast float %629, %433
  %632 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 205)  ; CBufferLoadLegacy(handle,regIndex)
  %633 = extractvalue %dx.types.CBufRet.f32 %632, 0
  %634 = extractvalue %dx.types.CBufRet.f32 %632, 1
  %635 = fadd fast float %630, %633
  %636 = fadd fast float %631, %634
  %637 = call float @dx.op.unary.f32(i32 7, float %635)  ; Saturate(value)
  %638 = call float @dx.op.unary.f32(i32 7, float %636)  ; Saturate(value)
  %639 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %13, float %637, float %638, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %640 = extractvalue %dx.types.ResRet.f32 %639, 0
  %641 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %642 = extractvalue %dx.types.CBufRet.f32 %641, 0
  %643 = fmul fast float %642, %640
  %644 = fsub fast float %635, %637
  %645 = fsub fast float %636, %638
  %646 = extractvalue %dx.types.CBufRet.f32 %627, 0
  %647 = extractvalue %dx.types.CBufRet.f32 %627, 1
  %648 = fmul fast float %646, %644
  %649 = fmul fast float %647, %645
  %650 = fmul fast float %648, %648
  %651 = fmul fast float %649, %649
  %652 = fadd fast float %650, %651
  %653 = call float @dx.op.unary.f32(i32 24, float %652)  ; Sqrt(value)
  %654 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %655 = extractvalue %dx.types.CBufRet.f32 %654, 3
  %656 = fmul fast float %655, %653
  %657 = call float @dx.op.unary.f32(i32 7, float %656)  ; Saturate(value)
  %658 = extractvalue %dx.types.CBufRet.f32 %654, 2
  %659 = fsub fast float %658, %643
  %660 = fmul fast float %659, %657
  %661 = extractvalue %dx.types.CBufRet.f32 %641, 1
  %662 = fsub fast float %434, %643
  %663 = fsub fast float %662, %661
  %664 = fsub fast float %663, %660
  %665 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %666 = extractvalue %dx.types.CBufRet.f32 %665, 2
  %667 = fsub fast float %664, %666
  %668 = fcmp fast olt float %667, 0.000000e+00
  %669 = call float @dx.op.unary.f32(i32 6, float %667)  ; FAbs(value)
  %670 = extractvalue %dx.types.CBufRet.i32 %622, 0
  %671 = icmp eq i32 %670, 0
  br i1 %671, label %725, label %672

; <label>:672                                     ; preds = %626
  br label %673

; <label>:673                                     ; preds = %712, %672
  %674 = phi i32 [ %718, %712 ], [ 1, %672 ]
  %675 = phi float [ %720, %712 ], [ 0x47EFFFFFE0000000, %672 ]
  %676 = phi i32 [ %721, %712 ], [ 0, %672 ]
  %677 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %678 = extractvalue %dx.types.CBufRet.f32 %677, 1
  %679 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %15, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %680 = extractvalue %dx.types.CBufRet.i32 %679, 1
  %681 = and i32 %680, 8
  %682 = icmp eq i32 %681, 0
  %683 = fcmp fast ogt float %678, %664
  %684 = or i1 %683, %682
  %685 = add i32 %676, 171
  %686 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 %685)  ; CBufferLoadLegacy(handle,regIndex)
  %687 = extractvalue %dx.types.CBufRet.f32 %686, 0
  %688 = extractvalue %dx.types.CBufRet.f32 %686, 1
  %689 = extractvalue %dx.types.CBufRet.f32 %686, 2
  br i1 %684, label %690, label %696, !dx.controlflow.hints !47

; <label>:690                                     ; preds = %673
  %691 = fsub fast float %687, %432
  %692 = fsub fast float %688, %433
  %693 = fmul fast float %691, %691
  %694 = fmul fast float %692, %692
  %695 = fadd fast float %693, %694
  br label %712

; <label>:696                                     ; preds = %673
  %697 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %698 = extractvalue %dx.types.CBufRet.f32 %697, 2
  %699 = extractvalue %dx.types.CBufRet.f32 %677, 2
  %700 = fmul fast float %699, %698
  %701 = fsub fast float %700, %678
  %702 = fdiv fast float %689, %701
  %703 = fsub fast float %432, %687
  %704 = fsub fast float %433, %688
  %705 = fsub fast float %664, %678
  %706 = fmul fast float %702, %705
  %707 = fmul fast float %703, %703
  %708 = fmul fast float %704, %704
  %709 = fadd fast float %707, %708
  %710 = fmul fast float %706, %706
  %711 = fadd fast float %709, %710
  br label %712

; <label>:712                                     ; preds = %696, %690
  %713 = phi float [ %695, %690 ], [ %711, %696 ]
  %714 = call float @dx.op.unary.f32(i32 24, float %713)  ; Sqrt(value)
  %715 = fsub float %689, %714
  %716 = fcmp fast olt float %715, 0.000000e+00
  %717 = zext i1 %716 to i32
  %718 = and i32 %717, %674
  %719 = call float @dx.op.unary.f32(i32 6, float %715)  ; FAbs(value)
  %720 = call float @dx.op.binary.f32(i32 36, float %675, float %719)  ; FMin(a,b)
  %721 = add i32 %676, 1
  %722 = extractvalue %dx.types.CBufRet.i32 %679, 0
  %723 = icmp ult i32 %721, %722
  br i1 %723, label %673, label %724

; <label>:724                                     ; preds = %712
  br label %725

; <label>:725                                     ; preds = %724, %626
  %726 = phi i32 [ 1, %626 ], [ %718, %724 ]
  %727 = phi float [ 0x47EFFFFFE0000000, %626 ], [ %720, %724 ]
  br label %728

; <label>:728                                     ; preds = %728, %725
  %729 = phi i32 [ %726, %725 ], [ %768, %728 ]
  %730 = phi float [ 0x47EFFFFFE0000000, %725 ], [ %770, %728 ]
  %731 = phi i32 [ 0, %725 ], [ %771, %728 ]
  %732 = add nuw nsw i32 %731, 191
  %733 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 %732)  ; CBufferLoadLegacy(handle,regIndex)
  %734 = extractvalue %dx.types.CBufRet.f32 %733, 0
  %735 = extractvalue %dx.types.CBufRet.f32 %733, 1
  %736 = extractvalue %dx.types.CBufRet.f32 %733, 2
  %737 = add nuw nsw i32 %731, 195
  %738 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 %737)  ; CBufferLoadLegacy(handle,regIndex)
  %739 = extractvalue %dx.types.CBufRet.f32 %738, 0
  %740 = extractvalue %dx.types.CBufRet.f32 %738, 1
  %741 = extractvalue %dx.types.CBufRet.f32 %738, 2
  %742 = fsub fast float %432, %734
  %743 = fsub fast float %433, %735
  %744 = fsub fast float %664, %736
  %745 = call float @dx.op.unary.f32(i32 6, float %742)  ; FAbs(value)
  %746 = call float @dx.op.unary.f32(i32 6, float %743)  ; FAbs(value)
  %747 = call float @dx.op.unary.f32(i32 6, float %744)  ; FAbs(value)
  %748 = fsub fast float %745, %739
  %749 = fsub fast float %746, %740
  %750 = fsub fast float %747, %741
  %751 = call float @dx.op.binary.f32(i32 35, float %748, float 0.000000e+00)  ; FMax(a,b)
  %752 = call float @dx.op.binary.f32(i32 35, float %749, float 0.000000e+00)  ; FMax(a,b)
  %753 = call float @dx.op.binary.f32(i32 35, float %750, float 0.000000e+00)  ; FMax(a,b)
  %754 = fmul fast float %751, %751
  %755 = fmul fast float %752, %752
  %756 = fadd fast float %755, %754
  %757 = fmul fast float %753, %753
  %758 = fadd fast float %756, %757
  %759 = call float @dx.op.unary.f32(i32 24, float %758)  ; Sqrt(value)
  %760 = call float @dx.op.binary.f32(i32 35, float %749, float %750)  ; FMax(a,b)
  %761 = call float @dx.op.binary.f32(i32 35, float %748, float %760)  ; FMax(a,b)
  %762 = call float @dx.op.binary.f32(i32 36, float %761, float 0.000000e+00)  ; FMin(a,b)
  %763 = fadd fast float %762, %759
  %764 = fsub fast float -0.000000e+00, %763
  %765 = fcmp ogt float %763, -0.000000e+00
  %766 = icmp ne i32 %729, 0
  %767 = and i1 %766, %765
  %768 = zext i1 %767 to i32
  %769 = call float @dx.op.unary.f32(i32 6, float %764)  ; FAbs(value)
  %770 = call float @dx.op.binary.f32(i32 36, float %730, float %769)  ; FMin(a,b)
  %771 = add nuw nsw i32 %731, 1
  %772 = icmp eq i32 %771, 4
  br i1 %772, label %773, label %728

; <label>:773                                     ; preds = %728
  %774 = call float @dx.op.binary.f32(i32 36, float %669, float %770)  ; FMin(a,b)
  %775 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %15, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %776 = extractvalue %dx.types.CBufRet.i32 %775, 1
  %777 = and i32 %776, 2
  %778 = icmp ne i32 %777, 0
  %779 = xor i1 %767, %778
  %780 = call float @dx.op.binary.f32(i32 36, float %774, float %727)  ; FMin(a,b)
  %781 = and i1 %779, %668
  %782 = zext i1 %781 to i32
  br label %783

; <label>:783                                     ; preds = %773, %621
  %784 = phi i32 [ %425, %621 ], [ %782, %773 ]
  %785 = phi float [ 0.000000e+00, %621 ], [ %780, %773 ]
  %786 = phi float [ %434, %621 ], [ %664, %773 ]
  %787 = icmp ne i32 %784, 0
  %788 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %789 = extractvalue %dx.types.CBufRet.f32 %788, 3
  %790 = call float @dx.op.binary.f32(i32 35, float %785, float %789)  ; FMax(a,b)
  %791 = call float @dx.op.binary.f32(i32 36, float 0x47EFFFFFE0000000, float %790)  ; FMin(a,b)
  %792 = zext i1 %787 to i32
  br label %793

; <label>:793                                     ; preds = %783, %616
  %794 = phi i32 [ %784, %783 ], [ %425, %616 ]
  %795 = phi i32 [ %792, %783 ], [ 0, %616 ]
  %796 = phi float [ %786, %783 ], [ %426, %616 ]
  %797 = phi float [ %791, %783 ], [ 0x47EFFFFFE0000000, %616 ]
  %798 = extractvalue %dx.types.CBufRet.f32 %445, 2
  %799 = fmul fast float %798, %435
  %800 = call float @dx.op.unary.f32(i32 23, float %799)  ; Log(value)
  %801 = fmul fast float %800, 0x3FE62E4300000000
  %802 = call float @dx.op.binary.f32(i32 35, float %801, float 1.000000e+00)  ; FMax(a,b)
  %803 = fmul fast float %802, %797
  %804 = call float @dx.op.binary.f32(i32 36, float %803, float %618)  ; FMin(a,b)
  %805 = call float @dx.op.binary.f32(i32 35, float %804, float %446)  ; FMax(a,b)
  %806 = fsub fast float %399, %435
  %807 = fadd fast float %806, 0x3F1A36E2E0000000
  %808 = call float @dx.op.binary.f32(i32 36, float %807, float %805)  ; FMin(a,b)
  %809 = icmp eq i32 %617, 0
  br i1 %809, label %915, label %810, !dx.controlflow.hints !48

; <label>:810                                     ; preds = %793
  %811 = fcmp fast olt float %807, %805
  %812 = fmul fast float %279, %222
  %813 = fmul fast float %812, %808
  %814 = fadd fast float %813, %434
  %815 = fmul fast float %279, %223
  %816 = fmul fast float %815, %808
  %817 = fadd fast float %816, %434
  %818 = fmul fast float %279, %224
  %819 = fmul fast float %818, %808
  %820 = fadd fast float %819, %434
  br i1 %811, label %821, label %826, !dx.controlflow.hints !49

; <label>:821                                     ; preds = %810
  %822 = fmul fast float %808, %277
  %823 = fmul fast float %808, %278
  %824 = fadd fast float %822, %432
  %825 = fadd fast float %823, %433
  br label %826

; <label>:826                                     ; preds = %821, %810
  %827 = phi float [ %824, %821 ], [ %432, %810 ]
  %828 = phi float [ %825, %821 ], [ %433, %810 ]
  %829 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 401)  ; CBufferLoadLegacy(handle,regIndex)
  %830 = extractvalue %dx.types.CBufRet.f32 %829, 0
  %831 = extractvalue %dx.types.CBufRet.f32 %829, 1
  %832 = fsub fast float %827, %830
  %833 = fsub fast float %828, %831
  %834 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 403)  ; CBufferLoadLegacy(handle,regIndex)
  %835 = extractvalue %dx.types.CBufRet.f32 %834, 0
  %836 = extractvalue %dx.types.CBufRet.f32 %834, 1
  %837 = fmul fast float %832, %835
  %838 = fmul fast float %833, %836
  %839 = fsub fast float 1.000000e+00, %838
  %840 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %15, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %841 = extractvalue %dx.types.CBufRet.i32 %840, 3
  %842 = icmp eq i32 %841, 0
  br i1 %842, label %849, label %843, !dx.controlflow.hints !40

; <label>:843                                     ; preds = %826
  %844 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %12, float %837, float %839, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %845 = extractvalue %dx.types.ResRet.f32 %844, 0
  %846 = extractvalue %dx.types.ResRet.f32 %844, 1
  %847 = extractvalue %dx.types.ResRet.f32 %844, 2
  %848 = extractvalue %dx.types.ResRet.f32 %844, 3
  br label %855

; <label>:849                                     ; preds = %826
  %850 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %13, float %837, float %839, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %851 = extractvalue %dx.types.ResRet.f32 %850, 0
  %852 = extractvalue %dx.types.ResRet.f32 %850, 1
  %853 = extractvalue %dx.types.ResRet.f32 %850, 2
  %854 = extractvalue %dx.types.ResRet.f32 %850, 3
  br label %855

; <label>:855                                     ; preds = %849, %843
  %856 = phi float [ %845, %843 ], [ %851, %849 ]
  %857 = phi float [ %846, %843 ], [ %852, %849 ]
  %858 = phi float [ %847, %843 ], [ %853, %849 ]
  %859 = phi float [ %848, %843 ], [ %854, %849 ]
  %860 = extractvalue %dx.types.CBufRet.f32 %834, 3
  %861 = fmul fast float %860, %857
  %862 = fmul fast float %861, %856
  %863 = fsub fast float %861, %862
  %864 = fcmp fast ole float %863, 0.000000e+00
  %865 = extractvalue %dx.types.CBufRet.f32 %829, 2
  %866 = fadd fast float %862, %865
  %867 = fmul fast float %860, %858
  %868 = fadd fast float %867, %865
  %869 = fdiv fast float 1.000000e+00, %863
  %870 = select i1 %864, float 1.000000e+06, float %869
  %871 = fsub fast float %814, %866
  %872 = fmul fast float %870, %871
  %873 = call float @dx.op.unary.f32(i32 7, float %872)  ; Saturate(value)
  %874 = extractvalue %dx.types.CBufRet.f32 %834, 2
  %875 = fmul fast float %874, %873
  %876 = fsub fast float %874, %875
  %877 = fcmp fast olt float %814, %868
  %878 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 406)  ; CBufferLoadLegacy(handle,regIndex)
  %879 = extractvalue %dx.types.CBufRet.f32 %878, 3
  %880 = select i1 %877, float %879, float 1.000000e+00
  %881 = fmul fast float %876, %880
  %882 = fsub fast float %817, %866
  %883 = fmul fast float %870, %882
  %884 = call float @dx.op.unary.f32(i32 7, float %883)  ; Saturate(value)
  %885 = fmul fast float %874, %884
  %886 = fsub fast float %874, %885
  %887 = fcmp fast olt float %817, %868
  %888 = select i1 %887, float %879, float 1.000000e+00
  %889 = fmul fast float %886, %888
  %890 = fadd fast float %889, %881
  %891 = fsub fast float %820, %866
  %892 = fmul fast float %870, %891
  %893 = call float @dx.op.unary.f32(i32 7, float %892)  ; Saturate(value)
  %894 = fmul fast float %874, %893
  %895 = fsub fast float %874, %894
  %896 = fcmp fast olt float %820, %868
  %897 = select i1 %896, float %879, float 1.000000e+00
  %898 = fmul fast float %895, %897
  %899 = fadd fast float %890, %898
  %900 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 418)  ; CBufferLoadLegacy(handle,regIndex)
  %901 = extractvalue %dx.types.CBufRet.f32 %900, 2
  %902 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 402)  ; CBufferLoadLegacy(handle,regIndex)
  %903 = extractvalue %dx.types.CBufRet.f32 %902, 0
  %904 = extractvalue %dx.types.CBufRet.f32 %902, 1
  %905 = extractvalue %dx.types.CBufRet.f32 %902, 2
  %906 = fmul fast float %808, 0x3FD5555560000000
  %907 = fmul fast float %906, %859
  %908 = fmul fast float %907, %901
  %909 = fmul fast float %908, %899
  %910 = extractvalue %dx.types.CBufRet.f32 %878, 0
  %911 = fmul fast float %909, %903
  %912 = fmul fast float %909, %904
  %913 = fmul fast float %909, %905
  %914 = fmul fast float %909, %910
  br label %915

; <label>:915                                     ; preds = %855, %793
  %916 = phi float [ %909, %855 ], [ 0.000000e+00, %793 ]
  %917 = phi float [ %914, %855 ], [ 0.000000e+00, %793 ]
  %918 = phi float [ %911, %855 ], [ 0.000000e+00, %793 ]
  %919 = phi float [ %912, %855 ], [ 0.000000e+00, %793 ]
  %920 = phi float [ %913, %855 ], [ 0.000000e+00, %793 ]
  %921 = icmp eq i32 %795, 0
  br i1 %921, label %965, label %922, !dx.controlflow.hints !50

; <label>:922                                     ; preds = %915
  %923 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 190)  ; CBufferLoadLegacy(handle,regIndex)
  %924 = extractvalue %dx.types.CBufRet.f32 %923, 1
  %925 = fsub fast float %808, %924
  %926 = extractvalue %dx.types.CBufRet.f32 %923, 3
  %927 = fmul fast float %925, %926
  %928 = call float @dx.op.unary.f32(i32 7, float %927)  ; Saturate(value)
  %929 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 188)  ; CBufferLoadLegacy(handle,regIndex)
  %930 = extractvalue %dx.types.CBufRet.f32 %929, 3
  %931 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %932 = extractvalue %dx.types.CBufRet.f32 %931, 2
  %933 = fsub fast float %932, %796
  %934 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 189)  ; CBufferLoadLegacy(handle,regIndex)
  %935 = extractvalue %dx.types.CBufRet.f32 %934, 3
  %936 = fmul fast float %933, %935
  %937 = call float @dx.op.unary.f32(i32 7, float %936)  ; Saturate(value)
  %938 = fmul fast float %937, %930
  %939 = extractvalue %dx.types.CBufRet.f32 %934, 0
  %940 = fsub fast float %435, %939
  %941 = extractvalue %dx.types.CBufRet.f32 %934, 1
  %942 = fmul fast float %940, %941
  %943 = call float @dx.op.unary.f32(i32 7, float %942)  ; Saturate(value)
  %944 = fsub fast float 1.000000e+00, %928
  %945 = fmul fast float %943, %944
  %946 = fadd fast float %945, %928
  %947 = extractvalue %dx.types.CBufRet.f32 %923, 0
  %948 = fsub fast float %938, %947
  %949 = fmul fast float %948, %946
  %950 = fadd fast float %949, %947
  %951 = extractvalue %dx.types.CBufRet.f32 %929, 0
  %952 = extractvalue %dx.types.CBufRet.f32 %929, 1
  %953 = extractvalue %dx.types.CBufRet.f32 %929, 2
  %954 = fmul fast float %950, %808
  %955 = extractvalue %dx.types.CBufRet.f32 %934, 2
  %956 = fmul fast float %954, %951
  %957 = fmul fast float %954, %952
  %958 = fmul fast float %954, %953
  %959 = fadd fast float %956, %918
  %960 = fadd fast float %957, %919
  %961 = fadd fast float %958, %920
  %962 = fmul fast float %954, %955
  %963 = fadd fast float %962, %917
  %964 = fadd fast float %954, %916
  br label %965

; <label>:965                                     ; preds = %922, %915
  %966 = phi float [ %964, %922 ], [ %916, %915 ]
  %967 = phi float [ %963, %922 ], [ %917, %915 ]
  %968 = phi float [ %959, %922 ], [ %918, %915 ]
  %969 = phi float [ %960, %922 ], [ %919, %915 ]
  %970 = phi float [ %961, %922 ], [ %920, %915 ]
  %971 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %972 = extractvalue %dx.types.CBufRet.f32 %971, 1
  %973 = fcmp fast ogt float %966, %972
  br i1 %973, label %974, label %980, !dx.controlflow.hints !51

; <label>:974                                     ; preds = %965
  %975 = fdiv fast float 1.000000e+00, %966
  %976 = fmul fast float %975, %968
  %977 = fmul fast float %975, %969
  %978 = fmul fast float %975, %970
  %979 = fmul fast float %975, %967
  br label %980

; <label>:980                                     ; preds = %974, %965
  %981 = phi float [ %979, %974 ], [ %967, %965 ]
  %982 = phi float [ %976, %974 ], [ %968, %965 ]
  %983 = phi float [ %977, %974 ], [ %969, %965 ]
  %984 = phi float [ %978, %974 ], [ %970, %965 ]
  br i1 %973, label %987, label %985, !dx.controlflow.hints !52

; <label>:985                                     ; preds = %980
  %986 = fadd fast float %808, %435
  br label %1467

; <label>:987                                     ; preds = %980
  %988 = fmul fast float %966, 0xBFF7154760000000
  %989 = call float @dx.op.unary.f32(i32 21, float %988)  ; Exp(value)
  %990 = call float @dx.op.unary.f32(i32 7, float %989)  ; Saturate(value)
  %991 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %992 = extractvalue %dx.types.CBufRet.f32 %991, 3
  %993 = fcmp fast une float %992, 0.000000e+00
  %994 = extractvalue %dx.types.CBufRet.f32 %991, 0
  %995 = extractvalue %dx.types.CBufRet.f32 %991, 1
  %996 = extractvalue %dx.types.CBufRet.f32 %991, 2
  br i1 %993, label %997, label %1019, !dx.controlflow.hints !53

; <label>:997                                     ; preds = %987
  %998 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %999 = extractvalue %dx.types.CBufRet.f32 %998, 0
  %1000 = extractvalue %dx.types.CBufRet.f32 %998, 1
  %1001 = extractvalue %dx.types.CBufRet.f32 %998, 2
  %1002 = call float @dx.op.dot3.f32(i32 55, float %994, float %995, float %996, float %277, float %278, float %279)  ; Dot3(ax,ay,az,bx,by,bz)
  %1003 = fcmp fast ogt float %981, 0.000000e+00
  %1004 = select i1 %1003, float 1.000000e+00, float -1.000000e+00
  %1005 = fmul fast float %1004, 5.000000e-01
  %1006 = fmul fast float %1005, %1002
  %1007 = fmul fast float %1004, %981
  %1008 = fadd fast float %1006, 4.921875e-01
  %1009 = fadd fast float %1007, -3.125000e-02
  %1010 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %13, float %1008, float 0x3FB25F3060000000, float %1009, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1011 = extractvalue %dx.types.ResRet.f32 %1010, 0
  %1012 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 398)  ; CBufferLoadLegacy(handle,regIndex)
  %1013 = extractvalue %dx.types.CBufRet.f32 %1012, 0
  %1014 = fmul fast float %1011, 0x400921FB60000000
  %1015 = fmul fast float %1014, %1013
  %1016 = fmul fast float %1015, %999
  %1017 = fmul fast float %1015, %1000
  %1018 = fmul fast float %1015, %1001
  br label %1019

; <label>:1019                                    ; preds = %997, %987
  %1020 = phi float [ %1016, %997 ], [ 0.000000e+00, %987 ]
  %1021 = phi float [ %1017, %997 ], [ 0.000000e+00, %987 ]
  %1022 = phi float [ %1018, %997 ], [ 0.000000e+00, %987 ]
  %1023 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 427)  ; CBufferLoadLegacy(handle,regIndex)
  %1024 = extractvalue %dx.types.CBufRet.f32 %1023, 0
  %1025 = fmul fast float %1024, %994
  %1026 = fmul fast float %1024, %995
  %1027 = fmul fast float %1024, %996
  %1028 = fadd fast float %1025, %432
  %1029 = fsub fast float -0.000000e+00, %1028
  %1030 = fadd fast float %1026, %433
  %1031 = fsub fast float -0.000000e+00, %1030
  %1032 = fadd fast float %1027, %434
  br i1 %447, label %1107, label %1033, !dx.controlflow.hints !36

; <label>:1033                                    ; preds = %1019
  %1034 = extractvalue %dx.types.CBufRet.f32 %1023, 1
  %1035 = fcmp fast ogt float %1034, %1024
  br i1 %1035, label %1036, label %1038, !dx.controlflow.hints !37

; <label>:1036                                    ; preds = %1033
  %1037 = fsub fast float %1034, %1024
  br label %1098

; <label>:1038                                    ; preds = %1033
  %1039 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %15, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %1040 = extractvalue %dx.types.CBufRet.i32 %1039, 3
  %1041 = icmp eq i32 %1040, 0
  %1042 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 401)  ; CBufferLoadLegacy(handle,regIndex)
  %1043 = extractvalue %dx.types.CBufRet.f32 %1042, 2
  %1044 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %1045 = extractvalue %dx.types.CBufRet.f32 %1044, 2
  %1046 = fsub fast float %1043, %1032
  %1047 = fadd fast float %1046, %1045
  %1048 = fsub fast float 0xC7EFFFFFE0000000, %1032
  br i1 %1041, label %1058, label %1049, !dx.controlflow.hints !30

; <label>:1049                                    ; preds = %1038
  %1050 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %1029, float %1031, float %1047)  ; Dot3(ax,ay,az,bx,by,bz)
  %1051 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %994, float %995, float %996)  ; Dot3(ax,ay,az,bx,by,bz)
  %1052 = fdiv fast float 1.000000e+00, %1051
  %1053 = fmul fast float %1052, %1050
  %1054 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %1029, float %1031, float %1048)  ; Dot3(ax,ay,az,bx,by,bz)
  %1055 = fmul fast float %1052, %1054
  %1056 = call float @dx.op.binary.f32(i32 36, float %1053, float %1055)  ; FMin(a,b)
  %1057 = call float @dx.op.binary.f32(i32 35, float %1053, float %1055)  ; FMax(a,b)
  br label %1091

; <label>:1058                                    ; preds = %1038
  %1059 = extractvalue %dx.types.CBufRet.f32 %1042, 0
  %1060 = extractvalue %dx.types.CBufRet.f32 %1042, 1
  %1061 = extractvalue %dx.types.CBufRet.f32 %1044, 0
  %1062 = extractvalue %dx.types.CBufRet.f32 %1044, 1
  %1063 = fdiv fast float 1.000000e+00, %994
  %1064 = fdiv fast float 1.000000e+00, %995
  %1065 = fdiv fast float 1.000000e+00, %996
  %1066 = fsub fast float %1059, %1028
  %1067 = fmul fast float %1063, %1066
  %1068 = fadd fast float %1066, %1061
  %1069 = fmul fast float %1068, %1063
  %1070 = call float @dx.op.binary.f32(i32 36, float %1067, float %1069)  ; FMin(a,b)
  %1071 = call float @dx.op.binary.f32(i32 35, float %1067, float %1069)  ; FMax(a,b)
  %1072 = fsub fast float %1060, %1030
  %1073 = fmul fast float %1064, %1072
  %1074 = fadd fast float %1072, %1062
  %1075 = fmul fast float %1074, %1064
  %1076 = call float @dx.op.binary.f32(i32 36, float %1073, float %1075)  ; FMin(a,b)
  %1077 = call float @dx.op.binary.f32(i32 35, float %1070, float %1076)  ; FMax(a,b)
  %1078 = call float @dx.op.binary.f32(i32 35, float %1073, float %1075)  ; FMax(a,b)
  %1079 = call float @dx.op.binary.f32(i32 36, float %1071, float %1078)  ; FMin(a,b)
  %1080 = fmul fast float %1065, %1048
  %1081 = fmul fast float %1065, %1047
  %1082 = call float @dx.op.binary.f32(i32 36, float %1080, float %1081)  ; FMin(a,b)
  %1083 = call float @dx.op.binary.f32(i32 35, float %1077, float %1082)  ; FMax(a,b)
  %1084 = call float @dx.op.binary.f32(i32 35, float %1080, float %1081)  ; FMax(a,b)
  %1085 = call float @dx.op.binary.f32(i32 36, float %1079, float %1084)  ; FMin(a,b)
  %1086 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1083)  ; FMax(a,b)
  %1087 = fcmp fast ult float %1085, %1086
  br i1 %1087, label %1091, label %1088, !dx.controlflow.hints !31

; <label>:1088                                    ; preds = %1058
  %1089 = call float @dx.op.binary.f32(i32 36, float %1083, float %1085)  ; FMin(a,b)
  %1090 = call float @dx.op.binary.f32(i32 35, float %1083, float %1085)  ; FMax(a,b)
  br label %1091

; <label>:1091                                    ; preds = %1088, %1058, %1049
  %1092 = phi float [ %1056, %1049 ], [ %1089, %1088 ], [ 0.000000e+00, %1058 ]
  %1093 = phi float [ %1057, %1049 ], [ %1090, %1088 ], [ 0.000000e+00, %1058 ]
  %1094 = fcmp fast ogt float %1092, 0.000000e+00
  br i1 %1094, label %1098, label %1095, !dx.controlflow.hints !38

; <label>:1095                                    ; preds = %1091
  %1096 = fcmp fast ugt float %1093, 0.000000e+00
  br i1 %1096, label %1097, label %1098, !dx.controlflow.hints !39

; <label>:1097                                    ; preds = %1095
  br label %1098

; <label>:1098                                    ; preds = %1097, %1095, %1091, %1036
  %1099 = phi float [ %1037, %1036 ], [ 0.000000e+00, %1097 ], [ 0x47EFFFFFE0000000, %1095 ], [ %1092, %1091 ]
  %1100 = phi i32 [ %366, %1036 ], [ %366, %1097 ], [ 0, %1095 ], [ %366, %1091 ]
  %1101 = icmp ne i32 %1100, 0
  %1102 = zext i1 %1101 to i32
  %1103 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %1104 = extractvalue %dx.types.CBufRet.f32 %1103, 2
  %1105 = call float @dx.op.binary.f32(i32 35, float %1099, float %1104)  ; FMax(a,b)
  %1106 = call float @dx.op.binary.f32(i32 36, float 0x47EFFFFFE0000000, float %1105)  ; FMin(a,b)
  br label %1107

; <label>:1107                                    ; preds = %1098, %1019
  %1108 = phi float [ %1106, %1098 ], [ 0x47EFFFFFE0000000, %1019 ]
  %1109 = phi i32 [ %1102, %1098 ], [ 0, %1019 ]
  br i1 %620, label %1282, label %1110, !dx.controlflow.hints !45

; <label>:1110                                    ; preds = %1107
  %1111 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %15, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1112 = extractvalue %dx.types.CBufRet.i32 %1111, 1
  %1113 = and i32 %1112, 1
  %1114 = icmp eq i32 %1113, 0
  br i1 %1114, label %1115, label %1272, !dx.controlflow.hints !46

; <label>:1115                                    ; preds = %1110
  %1116 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 204)  ; CBufferLoadLegacy(handle,regIndex)
  %1117 = extractvalue %dx.types.CBufRet.f32 %1116, 2
  %1118 = extractvalue %dx.types.CBufRet.f32 %1116, 3
  %1119 = fmul fast float %1117, %1028
  %1120 = fmul fast float %1118, %1030
  %1121 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 205)  ; CBufferLoadLegacy(handle,regIndex)
  %1122 = extractvalue %dx.types.CBufRet.f32 %1121, 0
  %1123 = extractvalue %dx.types.CBufRet.f32 %1121, 1
  %1124 = fadd fast float %1119, %1122
  %1125 = fadd fast float %1120, %1123
  %1126 = call float @dx.op.unary.f32(i32 7, float %1124)  ; Saturate(value)
  %1127 = call float @dx.op.unary.f32(i32 7, float %1125)  ; Saturate(value)
  %1128 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %13, float %1126, float %1127, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1129 = extractvalue %dx.types.ResRet.f32 %1128, 0
  %1130 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %1131 = extractvalue %dx.types.CBufRet.f32 %1130, 0
  %1132 = fmul fast float %1131, %1129
  %1133 = fsub fast float %1124, %1126
  %1134 = fsub fast float %1125, %1127
  %1135 = extractvalue %dx.types.CBufRet.f32 %1116, 0
  %1136 = extractvalue %dx.types.CBufRet.f32 %1116, 1
  %1137 = fmul fast float %1135, %1133
  %1138 = fmul fast float %1136, %1134
  %1139 = fmul fast float %1137, %1137
  %1140 = fmul fast float %1138, %1138
  %1141 = fadd fast float %1139, %1140
  %1142 = call float @dx.op.unary.f32(i32 24, float %1141)  ; Sqrt(value)
  %1143 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %1144 = extractvalue %dx.types.CBufRet.f32 %1143, 3
  %1145 = fmul fast float %1144, %1142
  %1146 = call float @dx.op.unary.f32(i32 7, float %1145)  ; Saturate(value)
  %1147 = extractvalue %dx.types.CBufRet.f32 %1143, 2
  %1148 = fsub fast float %1147, %1132
  %1149 = fmul fast float %1148, %1146
  %1150 = extractvalue %dx.types.CBufRet.f32 %1130, 1
  %1151 = fsub fast float %1032, %1132
  %1152 = fsub fast float %1151, %1150
  %1153 = fsub fast float %1152, %1149
  %1154 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1155 = extractvalue %dx.types.CBufRet.f32 %1154, 2
  %1156 = fsub fast float %1153, %1155
  %1157 = fcmp fast olt float %1156, 0.000000e+00
  %1158 = call float @dx.op.unary.f32(i32 6, float %1156)  ; FAbs(value)
  %1159 = extractvalue %dx.types.CBufRet.i32 %1111, 0
  %1160 = icmp eq i32 %1159, 0
  br i1 %1160, label %1214, label %1161

; <label>:1161                                    ; preds = %1115
  br label %1162

; <label>:1162                                    ; preds = %1201, %1161
  %1163 = phi i32 [ %1207, %1201 ], [ 1, %1161 ]
  %1164 = phi float [ %1209, %1201 ], [ 0x47EFFFFFE0000000, %1161 ]
  %1165 = phi i32 [ %1210, %1201 ], [ 0, %1161 ]
  %1166 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %1167 = extractvalue %dx.types.CBufRet.f32 %1166, 1
  %1168 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %15, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1169 = extractvalue %dx.types.CBufRet.i32 %1168, 1
  %1170 = and i32 %1169, 8
  %1171 = icmp eq i32 %1170, 0
  %1172 = fcmp fast ogt float %1167, %1153
  %1173 = or i1 %1172, %1171
  %1174 = add i32 %1165, 171
  %1175 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 %1174)  ; CBufferLoadLegacy(handle,regIndex)
  %1176 = extractvalue %dx.types.CBufRet.f32 %1175, 0
  %1177 = extractvalue %dx.types.CBufRet.f32 %1175, 1
  %1178 = extractvalue %dx.types.CBufRet.f32 %1175, 2
  br i1 %1173, label %1179, label %1185, !dx.controlflow.hints !47

; <label>:1179                                    ; preds = %1162
  %1180 = fsub fast float %1176, %1028
  %1181 = fsub fast float %1177, %1030
  %1182 = fmul fast float %1180, %1180
  %1183 = fmul fast float %1181, %1181
  %1184 = fadd fast float %1182, %1183
  br label %1201

; <label>:1185                                    ; preds = %1162
  %1186 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1187 = extractvalue %dx.types.CBufRet.f32 %1186, 2
  %1188 = extractvalue %dx.types.CBufRet.f32 %1166, 2
  %1189 = fmul fast float %1188, %1187
  %1190 = fsub fast float %1189, %1167
  %1191 = fdiv fast float %1178, %1190
  %1192 = fsub fast float %1028, %1176
  %1193 = fsub fast float %1030, %1177
  %1194 = fsub fast float %1153, %1167
  %1195 = fmul fast float %1191, %1194
  %1196 = fmul fast float %1192, %1192
  %1197 = fmul fast float %1193, %1193
  %1198 = fadd fast float %1196, %1197
  %1199 = fmul fast float %1195, %1195
  %1200 = fadd fast float %1198, %1199
  br label %1201

; <label>:1201                                    ; preds = %1185, %1179
  %1202 = phi float [ %1184, %1179 ], [ %1200, %1185 ]
  %1203 = call float @dx.op.unary.f32(i32 24, float %1202)  ; Sqrt(value)
  %1204 = fsub float %1178, %1203
  %1205 = fcmp fast olt float %1204, 0.000000e+00
  %1206 = zext i1 %1205 to i32
  %1207 = and i32 %1206, %1163
  %1208 = call float @dx.op.unary.f32(i32 6, float %1204)  ; FAbs(value)
  %1209 = call float @dx.op.binary.f32(i32 36, float %1164, float %1208)  ; FMin(a,b)
  %1210 = add i32 %1165, 1
  %1211 = extractvalue %dx.types.CBufRet.i32 %1168, 0
  %1212 = icmp ult i32 %1210, %1211
  br i1 %1212, label %1162, label %1213

; <label>:1213                                    ; preds = %1201
  br label %1214

; <label>:1214                                    ; preds = %1213, %1115
  %1215 = phi i32 [ 1, %1115 ], [ %1207, %1213 ]
  %1216 = phi float [ 0x47EFFFFFE0000000, %1115 ], [ %1209, %1213 ]
  br label %1217

; <label>:1217                                    ; preds = %1217, %1214
  %1218 = phi i32 [ %1215, %1214 ], [ %1257, %1217 ]
  %1219 = phi float [ 0x47EFFFFFE0000000, %1214 ], [ %1259, %1217 ]
  %1220 = phi i32 [ 0, %1214 ], [ %1260, %1217 ]
  %1221 = add nuw nsw i32 %1220, 191
  %1222 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 %1221)  ; CBufferLoadLegacy(handle,regIndex)
  %1223 = extractvalue %dx.types.CBufRet.f32 %1222, 0
  %1224 = extractvalue %dx.types.CBufRet.f32 %1222, 1
  %1225 = extractvalue %dx.types.CBufRet.f32 %1222, 2
  %1226 = add nuw nsw i32 %1220, 195
  %1227 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 %1226)  ; CBufferLoadLegacy(handle,regIndex)
  %1228 = extractvalue %dx.types.CBufRet.f32 %1227, 0
  %1229 = extractvalue %dx.types.CBufRet.f32 %1227, 1
  %1230 = extractvalue %dx.types.CBufRet.f32 %1227, 2
  %1231 = fsub fast float %1028, %1223
  %1232 = fsub fast float %1030, %1224
  %1233 = fsub fast float %1153, %1225
  %1234 = call float @dx.op.unary.f32(i32 6, float %1231)  ; FAbs(value)
  %1235 = call float @dx.op.unary.f32(i32 6, float %1232)  ; FAbs(value)
  %1236 = call float @dx.op.unary.f32(i32 6, float %1233)  ; FAbs(value)
  %1237 = fsub fast float %1234, %1228
  %1238 = fsub fast float %1235, %1229
  %1239 = fsub fast float %1236, %1230
  %1240 = call float @dx.op.binary.f32(i32 35, float %1237, float 0.000000e+00)  ; FMax(a,b)
  %1241 = call float @dx.op.binary.f32(i32 35, float %1238, float 0.000000e+00)  ; FMax(a,b)
  %1242 = call float @dx.op.binary.f32(i32 35, float %1239, float 0.000000e+00)  ; FMax(a,b)
  %1243 = fmul fast float %1240, %1240
  %1244 = fmul fast float %1241, %1241
  %1245 = fadd fast float %1244, %1243
  %1246 = fmul fast float %1242, %1242
  %1247 = fadd fast float %1245, %1246
  %1248 = call float @dx.op.unary.f32(i32 24, float %1247)  ; Sqrt(value)
  %1249 = call float @dx.op.binary.f32(i32 35, float %1238, float %1239)  ; FMax(a,b)
  %1250 = call float @dx.op.binary.f32(i32 35, float %1237, float %1249)  ; FMax(a,b)
  %1251 = call float @dx.op.binary.f32(i32 36, float %1250, float 0.000000e+00)  ; FMin(a,b)
  %1252 = fadd fast float %1251, %1248
  %1253 = fsub fast float -0.000000e+00, %1252
  %1254 = fcmp ogt float %1252, -0.000000e+00
  %1255 = icmp ne i32 %1218, 0
  %1256 = and i1 %1255, %1254
  %1257 = zext i1 %1256 to i32
  %1258 = call float @dx.op.unary.f32(i32 6, float %1253)  ; FAbs(value)
  %1259 = call float @dx.op.binary.f32(i32 36, float %1219, float %1258)  ; FMin(a,b)
  %1260 = add nuw nsw i32 %1220, 1
  %1261 = icmp eq i32 %1260, 4
  br i1 %1261, label %1262, label %1217

; <label>:1262                                    ; preds = %1217
  %1263 = call float @dx.op.binary.f32(i32 36, float %1158, float %1259)  ; FMin(a,b)
  %1264 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %15, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1265 = extractvalue %dx.types.CBufRet.i32 %1264, 1
  %1266 = and i32 %1265, 2
  %1267 = icmp ne i32 %1266, 0
  %1268 = xor i1 %1256, %1267
  %1269 = call float @dx.op.binary.f32(i32 36, float %1263, float %1216)  ; FMin(a,b)
  %1270 = and i1 %1268, %1157
  %1271 = zext i1 %1270 to i32
  br label %1272

; <label>:1272                                    ; preds = %1262, %1110
  %1273 = phi i32 [ %423, %1110 ], [ %1271, %1262 ]
  %1274 = phi float [ 0.000000e+00, %1110 ], [ %1269, %1262 ]
  %1275 = phi float [ %1032, %1110 ], [ %1153, %1262 ]
  %1276 = icmp ne i32 %1273, 0
  %1277 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %1278 = extractvalue %dx.types.CBufRet.f32 %1277, 3
  %1279 = call float @dx.op.binary.f32(i32 35, float %1274, float %1278)  ; FMax(a,b)
  %1280 = call float @dx.op.binary.f32(i32 36, float 0x47EFFFFFE0000000, float %1279)  ; FMin(a,b)
  %1281 = zext i1 %1276 to i32
  br label %1282

; <label>:1282                                    ; preds = %1272, %1107
  %1283 = phi i32 [ %1273, %1272 ], [ %423, %1107 ]
  %1284 = phi float [ %1275, %1272 ], [ %424, %1107 ]
  %1285 = phi float [ %1280, %1272 ], [ 0x47EFFFFFE0000000, %1107 ]
  %1286 = phi i32 [ %1281, %1272 ], [ 0, %1107 ]
  %1287 = icmp eq i32 %1109, 0
  br i1 %1287, label %1361, label %1288, !dx.controlflow.hints !48

; <label>:1288                                    ; preds = %1282
  %1289 = fmul fast float %798, %1024
  %1290 = call float @dx.op.unary.f32(i32 23, float %1289)  ; Log(value)
  %1291 = fmul fast float %1290, 0x3FE62E4300000000
  %1292 = call float @dx.op.binary.f32(i32 35, float %1291, float 1.000000e+00)  ; FMax(a,b)
  %1293 = fmul fast float %1292, %1285
  %1294 = call float @dx.op.binary.f32(i32 36, float %1293, float %1108)  ; FMin(a,b)
  %1295 = call float @dx.op.binary.f32(i32 35, float %1294, float 0.000000e+00)  ; FMax(a,b)
  %1296 = fcmp fast ogt float %1295, 0x3F1A36E2E0000000
  %1297 = fadd fast float %1025, %1028
  %1298 = fadd fast float %1026, %1030
  %1299 = select i1 %1296, float %1297, float %1028
  %1300 = select i1 %1296, float %1298, float %1030
  %1301 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 401)  ; CBufferLoadLegacy(handle,regIndex)
  %1302 = extractvalue %dx.types.CBufRet.f32 %1301, 0
  %1303 = extractvalue %dx.types.CBufRet.f32 %1301, 1
  %1304 = fsub fast float %1299, %1302
  %1305 = fsub fast float %1300, %1303
  %1306 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 403)  ; CBufferLoadLegacy(handle,regIndex)
  %1307 = extractvalue %dx.types.CBufRet.f32 %1306, 0
  %1308 = extractvalue %dx.types.CBufRet.f32 %1306, 1
  %1309 = fmul fast float %1304, %1307
  %1310 = fmul fast float %1305, %1308
  %1311 = fsub fast float 1.000000e+00, %1310
  %1312 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %15, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %1313 = extractvalue %dx.types.CBufRet.i32 %1312, 3
  %1314 = icmp eq i32 %1313, 0
  br i1 %1314, label %1321, label %1315, !dx.controlflow.hints !40

; <label>:1315                                    ; preds = %1288
  %1316 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %12, float %1309, float %1311, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1317 = extractvalue %dx.types.ResRet.f32 %1316, 0
  %1318 = extractvalue %dx.types.ResRet.f32 %1316, 1
  %1319 = extractvalue %dx.types.ResRet.f32 %1316, 2
  %1320 = extractvalue %dx.types.ResRet.f32 %1316, 3
  br label %1327

; <label>:1321                                    ; preds = %1288
  %1322 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %13, float %1309, float %1311, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1323 = extractvalue %dx.types.ResRet.f32 %1322, 0
  %1324 = extractvalue %dx.types.ResRet.f32 %1322, 1
  %1325 = extractvalue %dx.types.ResRet.f32 %1322, 2
  %1326 = extractvalue %dx.types.ResRet.f32 %1322, 3
  br label %1327

; <label>:1327                                    ; preds = %1321, %1315
  %1328 = phi float [ %1317, %1315 ], [ %1323, %1321 ]
  %1329 = phi float [ %1318, %1315 ], [ %1324, %1321 ]
  %1330 = phi float [ %1319, %1315 ], [ %1325, %1321 ]
  %1331 = phi float [ %1320, %1315 ], [ %1326, %1321 ]
  %1332 = extractvalue %dx.types.CBufRet.f32 %1306, 3
  %1333 = fmul fast float %1332, %1329
  %1334 = fmul fast float %1333, %1328
  %1335 = fsub fast float %1333, %1334
  %1336 = fcmp fast ole float %1335, 0.000000e+00
  %1337 = extractvalue %dx.types.CBufRet.f32 %1301, 2
  %1338 = fadd fast float %1334, %1337
  %1339 = fmul fast float %1332, %1330
  %1340 = fadd fast float %1339, %1337
  %1341 = fdiv fast float 1.000000e+00, %1335
  %1342 = select i1 %1336, float 1.000000e+06, float %1341
  %1343 = fsub fast float %1032, %1338
  %1344 = fmul fast float %1342, %1343
  %1345 = call float @dx.op.unary.f32(i32 7, float %1344)  ; Saturate(value)
  %1346 = extractvalue %dx.types.CBufRet.f32 %1306, 2
  %1347 = fmul fast float %1346, %1345
  %1348 = fsub fast float %1346, %1347
  %1349 = fcmp fast olt float %1032, %1340
  %1350 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 406)  ; CBufferLoadLegacy(handle,regIndex)
  %1351 = extractvalue %dx.types.CBufRet.f32 %1350, 3
  %1352 = fmul fast float %1351, 3.000000e+00
  %1353 = select i1 %1349, float %1352, float 3.000000e+00
  %1354 = fmul fast float %1348, %1353
  %1355 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 418)  ; CBufferLoadLegacy(handle,regIndex)
  %1356 = extractvalue %dx.types.CBufRet.f32 %1355, 2
  %1357 = fmul fast float %1024, 0x3FD5555560000000
  %1358 = fmul fast float %1357, %1331
  %1359 = fmul fast float %1358, %1356
  %1360 = fmul fast float %1359, %1354
  br label %1361

; <label>:1361                                    ; preds = %1327, %1282
  %1362 = phi float [ %1360, %1327 ], [ 0.000000e+00, %1282 ]
  %1363 = icmp eq i32 %1286, 0
  br i1 %1363, label %1395, label %1364, !dx.controlflow.hints !50

; <label>:1364                                    ; preds = %1361
  %1365 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 190)  ; CBufferLoadLegacy(handle,regIndex)
  %1366 = extractvalue %dx.types.CBufRet.f32 %1365, 1
  %1367 = fsub fast float %1024, %1366
  %1368 = extractvalue %dx.types.CBufRet.f32 %1365, 3
  %1369 = fmul fast float %1367, %1368
  %1370 = call float @dx.op.unary.f32(i32 7, float %1369)  ; Saturate(value)
  %1371 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 188)  ; CBufferLoadLegacy(handle,regIndex)
  %1372 = extractvalue %dx.types.CBufRet.f32 %1371, 3
  %1373 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1374 = extractvalue %dx.types.CBufRet.f32 %1373, 2
  %1375 = fsub fast float %1374, %1284
  %1376 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 189)  ; CBufferLoadLegacy(handle,regIndex)
  %1377 = extractvalue %dx.types.CBufRet.f32 %1376, 3
  %1378 = fmul fast float %1375, %1377
  %1379 = call float @dx.op.unary.f32(i32 7, float %1378)  ; Saturate(value)
  %1380 = fmul fast float %1379, %1372
  %1381 = extractvalue %dx.types.CBufRet.f32 %1376, 0
  %1382 = fsub fast float %1024, %1381
  %1383 = extractvalue %dx.types.CBufRet.f32 %1376, 1
  %1384 = fmul fast float %1382, %1383
  %1385 = call float @dx.op.unary.f32(i32 7, float %1384)  ; Saturate(value)
  %1386 = fsub fast float 1.000000e+00, %1370
  %1387 = fmul fast float %1385, %1386
  %1388 = fadd fast float %1387, %1370
  %1389 = extractvalue %dx.types.CBufRet.f32 %1365, 0
  %1390 = fsub fast float %1380, %1389
  %1391 = fmul fast float %1390, %1388
  %1392 = fadd fast float %1391, %1389
  %1393 = fmul fast float %1392, %1024
  %1394 = fadd fast float %1393, %1362
  br label %1395

; <label>:1395                                    ; preds = %1364, %1361
  %1396 = phi float [ %1394, %1364 ], [ %1362, %1361 ]
  %1397 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 36)  ; CBufferLoadLegacy(handle,regIndex)
  %1398 = extractvalue %dx.types.CBufRet.f32 %1397, 3
  %1399 = fmul fast float %1396, 0xBFF7154760000000
  %1400 = fmul fast float %1399, %1398
  %1401 = call float @dx.op.unary.f32(i32 21, float %1400)  ; Exp(value)
  %1402 = call float @dx.op.unary.f32(i32 7, float %1401)  ; Saturate(value)
  %1403 = fmul fast float %1402, %1020
  %1404 = fmul fast float %1402, %1021
  %1405 = fmul fast float %1402, %1022
  %1406 = fadd fast float %1403, %201
  %1407 = fadd fast float %1404, %202
  %1408 = fadd fast float %1405, %203
  %1409 = fsub fast float 1.000000e+00, %990
  %1410 = fmul fast float %982, %428
  %1411 = fmul fast float %1410, %1409
  %1412 = fmul fast float %1411, %1406
  %1413 = fmul fast float %983, %428
  %1414 = fmul fast float %1413, %1409
  %1415 = fmul fast float %1414, %1407
  %1416 = fmul fast float %984, %428
  %1417 = fmul fast float %1416, %1409
  %1418 = fmul fast float %1417, %1408
  %1419 = fadd fast float %1412, %429
  %1420 = fadd fast float %1415, %430
  %1421 = fadd fast float %1418, %431
  %1422 = fdiv fast float %966, %808
  %1423 = fadd fast float %808, %435
  %1424 = fmul fast float %435, %435
  %1425 = fmul fast float %1423, %1423
  %1426 = fsub fast float %1424, %1425
  %1427 = fmul fast float %1426, -5.000000e-01
  %1428 = fmul fast float %1427, %1422
  %1429 = fadd fast float %1428, %427
  %1430 = fadd fast float %966, %437
  %1431 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %15, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %1432 = extractvalue %dx.types.CBufRet.i32 %1431, 0
  %1433 = icmp eq i32 %1432, 0
  br i1 %1433, label %1460, label %1434, !dx.controlflow.hints !54

; <label>:1434                                    ; preds = %1395
  %1435 = icmp ne i32 %442, 0
  %1436 = zext i1 %1435 to i32
  %1437 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %1438 = extractvalue %dx.types.CBufRet.f32 %1437, 2
  %1439 = extractvalue %dx.types.CBufRet.f32 %1437, 0
  %1440 = fsub fast float %1423, %1439
  %1441 = fmul fast float %1440, %1438
  %1442 = call float @dx.op.unary.f32(i32 7, float %1441)  ; Saturate(value)
  %1443 = fadd fast float %1442, -5.000000e-01
  %1444 = fmul fast float %1443, 2.000000e+00
  %1445 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %1446 = extractvalue %dx.types.CBufRet.f32 %1445, 2
  %1447 = fcmp fast olt float %1444, %1446
  br i1 %1447, label %1448, label %1460, !dx.controlflow.hints !55

; <label>:1448                                    ; preds = %1434
  %1449 = fmul fast float %1444, %1444
  %1450 = fmul fast float %1409, %428
  %1451 = fmul fast float %1444, %1450
  %1452 = fmul fast float %1449, %1450
  %1453 = fmul fast float %1451, %1449
  %1454 = fmul fast float %1449, %1449
  %1455 = fmul fast float %1454, %1450
  %1456 = fadd fast float %1451, %438
  %1457 = fadd fast float %1452, %439
  %1458 = fadd fast float %1453, %440
  %1459 = fadd fast float %1455, %441
  br label %1460

; <label>:1460                                    ; preds = %1448, %1434, %1395
  %1461 = phi float [ %438, %1395 ], [ %1456, %1448 ], [ %438, %1434 ]
  %1462 = phi float [ %439, %1395 ], [ %1457, %1448 ], [ %439, %1434 ]
  %1463 = phi float [ %440, %1395 ], [ %1458, %1448 ], [ %440, %1434 ]
  %1464 = phi float [ %441, %1395 ], [ %1459, %1448 ], [ %441, %1434 ]
  %1465 = phi i32 [ %442, %1395 ], [ 1, %1448 ], [ %1436, %1434 ]
  %1466 = fmul fast float %990, %428
  br label %1467

; <label>:1467                                    ; preds = %1460, %985
  %1468 = phi float [ %986, %985 ], [ %1423, %1460 ]
  %1469 = phi i32 [ %423, %985 ], [ %1283, %1460 ]
  %1470 = phi float [ %424, %985 ], [ %1284, %1460 ]
  %1471 = phi float [ %427, %985 ], [ %1429, %1460 ]
  %1472 = phi float [ %428, %985 ], [ %1466, %1460 ]
  %1473 = phi float [ %429, %985 ], [ %1419, %1460 ]
  %1474 = phi float [ %430, %985 ], [ %1420, %1460 ]
  %1475 = phi float [ %431, %985 ], [ %1421, %1460 ]
  %1476 = phi float [ %437, %985 ], [ %1430, %1460 ]
  %1477 = phi float [ %438, %985 ], [ %1461, %1460 ]
  %1478 = phi float [ %439, %985 ], [ %1462, %1460 ]
  %1479 = phi float [ %440, %985 ], [ %1463, %1460 ]
  %1480 = phi float [ %441, %985 ], [ %1464, %1460 ]
  %1481 = phi i32 [ %442, %985 ], [ %1465, %1460 ]
  %1482 = fmul fast float %808, %277
  %1483 = fmul fast float %808, %278
  %1484 = fmul fast float %808, %279
  %1485 = fadd fast float %1482, %432
  %1486 = fadd fast float %1483, %433
  %1487 = fadd fast float %1484, %434
  %1488 = fcmp fast olt float %1468, %399
  %1489 = extractvalue %dx.types.CBufRet.f32 %971, 2
  %1490 = fcmp fast olt float %1489, %1472
  %1491 = and i1 %1488, %1490
  br i1 %1491, label %422, label %1492

; <label>:1492                                    ; preds = %1467
  br label %1493

; <label>:1493                                    ; preds = %1492, %395
  %1494 = phi float [ 0.000000e+00, %395 ], [ %1471, %1492 ]
  %1495 = phi float [ 1.000000e+00, %395 ], [ %1472, %1492 ]
  %1496 = phi float [ 0.000000e+00, %395 ], [ %1473, %1492 ]
  %1497 = phi float [ 0.000000e+00, %395 ], [ %1474, %1492 ]
  %1498 = phi float [ 0.000000e+00, %395 ], [ %1475, %1492 ]
  %1499 = phi float [ 0.000000e+00, %395 ], [ %1476, %1492 ]
  %1500 = phi float [ 0.000000e+00, %395 ], [ %1477, %1492 ]
  %1501 = phi float [ 0.000000e+00, %395 ], [ %1478, %1492 ]
  %1502 = phi float [ 0.000000e+00, %395 ], [ %1479, %1492 ]
  %1503 = phi float [ 0.000000e+00, %395 ], [ %1480, %1492 ]
  %1504 = phi i32 [ 0, %395 ], [ %1481, %1492 ]
  %1505 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %15, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %1506 = extractvalue %dx.types.CBufRet.i32 %1505, 0
  %1507 = icmp eq i32 %1506, 0
  br i1 %1507, label %1549, label %1508, !dx.controlflow.hints !56

; <label>:1508                                    ; preds = %1493
  %1509 = icmp eq i32 %1504, 0
  br i1 %1509, label %1548, label %1510, !dx.controlflow.hints !57

; <label>:1510                                    ; preds = %1508
  %1511 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %15, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %1512 = extractvalue %dx.types.CBufRet.i32 %1511, 2
  %1513 = icmp eq i32 %1512, 0
  br i1 %1513, label %1520, label %1514, !dx.controlflow.hints !58

; <label>:1514                                    ; preds = %1510
  %1515 = fsub fast float 1.000000e+00, %1495
  %1516 = fdiv fast float %1500, %1515
  %1517 = fdiv fast float %1501, %1515
  %1518 = fdiv fast float %1502, %1515
  %1519 = fdiv fast float %1503, %1515
  br label %1525

; <label>:1520                                    ; preds = %1510
  %1521 = fadd fast float %1500, %1495
  %1522 = fadd fast float %1501, %1495
  %1523 = fadd fast float %1502, %1495
  %1524 = fadd fast float %1503, %1495
  br label %1525

; <label>:1525                                    ; preds = %1520, %1514
  %1526 = phi float [ %1516, %1514 ], [ %1521, %1520 ]
  %1527 = phi float [ %1517, %1514 ], [ %1522, %1520 ]
  %1528 = phi float [ %1518, %1514 ], [ %1523, %1520 ]
  %1529 = phi float [ %1519, %1514 ], [ %1524, %1520 ]
  %1530 = call float @dx.op.binary.f32(i32 35, float %1526, float -1.000000e+00)  ; FMax(a,b)
  %1531 = call float @dx.op.binary.f32(i32 35, float %1527, float -1.000000e+00)  ; FMax(a,b)
  %1532 = call float @dx.op.binary.f32(i32 35, float %1528, float -1.000000e+00)  ; FMax(a,b)
  %1533 = call float @dx.op.binary.f32(i32 35, float %1529, float -1.000000e+00)  ; FMax(a,b)
  %1534 = call float @dx.op.binary.f32(i32 36, float %1530, float 1.000000e+00)  ; FMin(a,b)
  %1535 = call float @dx.op.binary.f32(i32 36, float %1531, float 1.000000e+00)  ; FMin(a,b)
  %1536 = call float @dx.op.binary.f32(i32 36, float %1532, float 1.000000e+00)  ; FMin(a,b)
  %1537 = call float @dx.op.binary.f32(i32 36, float %1533, float 1.000000e+00)  ; FMin(a,b)
  %1538 = fmul fast float %1534, 1.500000e+00
  %1539 = call float @dx.op.tertiary.f32(i32 46, float -2.000000e+00, float %1536, float %1538)  ; FMad(a,b,c)
  %1540 = call float @dx.op.tertiary.f32(i32 46, float 4.000000e+00, float %1535, float 0.000000e+00)  ; FMad(a,b,c)
  %1541 = call float @dx.op.tertiary.f32(i32 46, float -4.000000e+00, float %1537, float %1540)  ; FMad(a,b,c)
  %1542 = fmul fast float %1534, 0x3FEBB67AE0000000
  %1543 = call float @dx.op.tertiary.f32(i32 46, float 0xBFD8A23460000000, float %1536, float %1542)  ; FMad(a,b,c)
  %1544 = call float @dx.op.tertiary.f32(i32 46, float 5.000000e-01, float %1535, float 0.000000e+00)  ; FMad(a,b,c)
  %1545 = call float @dx.op.tertiary.f32(i32 46, float 5.000000e-01, float %1537, float %1544)  ; FMad(a,b,c)
  %1546 = fadd fast float %1539, 5.000000e-01
  %1547 = fadd fast float %1543, 5.000000e-01
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %16, i32 %17, i32 0, float %1546, float %1541, float %1547, float %1545, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %1549

; <label>:1548                                    ; preds = %1508
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %16, i32 %17, i32 0, float 0.000000e+00, float 0.000000e+00, float 0x3FEF6560C0000000, float 1.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %1549

; <label>:1549                                    ; preds = %1548, %1525, %1493
  %1550 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %1551 = extractvalue %dx.types.CBufRet.f32 %1550, 2
  %1552 = fsub fast float %1495, %1551
  %1553 = fdiv fast float %1552, %1551
  %1554 = call float @dx.op.unary.f32(i32 7, float %1553)  ; Saturate(value)
  %1555 = fmul fast float %1554, 2.000000e+00
  %1556 = fsub fast float 3.000000e+00, %1555
  %1557 = fmul fast float %1554, %1554
  %1558 = fmul fast float %1557, %1495
  %1559 = fmul fast float %1558, %1556
  %1560 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 419)  ; CBufferLoadLegacy(handle,regIndex)
  %1561 = extractvalue %dx.types.CBufRet.f32 %1560, 0
  %1562 = extractvalue %dx.types.CBufRet.f32 %1560, 1
  %1563 = extractvalue %dx.types.CBufRet.f32 %1560, 2
  %1564 = call float @dx.op.dot3.f32(i32 55, float %277, float %278, float %279, float %1561, float %1562, float %1563)  ; Dot3(ax,ay,az,bx,by,bz)
  %1565 = fmul fast float %1564, %1494
  %1566 = fcmp fast ogt float %1499, 0.000000e+00
  %1567 = fdiv fast float 1.000000e+00, %1499
  %1568 = fmul fast float %1565, %1567
  %1569 = select i1 %1566, float %1568, float %288
  %1570 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %1571 = extractvalue %dx.types.CBufRet.f32 %1570, 0
  %1572 = extractvalue %dx.types.CBufRet.f32 %1570, 1
  %1573 = extractvalue %dx.types.CBufRet.f32 %1570, 2
  %1574 = fmul fast float %1571, %241
  %1575 = fmul fast float %1572, %241
  %1576 = fmul fast float %1573, %241
  %1577 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %1578 = extractvalue %dx.types.CBufRet.f32 %1577, 0
  %1579 = extractvalue %dx.types.CBufRet.f32 %1577, 1
  %1580 = extractvalue %dx.types.CBufRet.f32 %1577, 2
  %1581 = fmul fast float %1578, %242
  %1582 = fmul fast float %1579, %242
  %1583 = fmul fast float %1580, %242
  %1584 = fadd fast float %1581, %1574
  %1585 = fadd fast float %1582, %1575
  %1586 = fadd fast float %1583, %1576
  %1587 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %1588 = extractvalue %dx.types.CBufRet.f32 %1587, 0
  %1589 = extractvalue %dx.types.CBufRet.f32 %1587, 1
  %1590 = extractvalue %dx.types.CBufRet.f32 %1587, 2
  %1591 = fadd fast float %1584, %1588
  %1592 = fadd fast float %1585, %1589
  %1593 = fadd fast float %1586, %1590
  %1594 = fmul fast float %1591, %1569
  %1595 = fmul fast float %1592, %1569
  %1596 = fmul fast float %1593, %1569
  %1597 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %1598 = extractvalue %dx.types.CBufRet.f32 %1597, 0
  %1599 = extractvalue %dx.types.CBufRet.f32 %1597, 1
  %1600 = extractvalue %dx.types.CBufRet.f32 %1597, 2
  %1601 = extractvalue %dx.types.CBufRet.f32 %1597, 3
  %1602 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %1603 = extractvalue %dx.types.CBufRet.f32 %1602, 0
  %1604 = extractvalue %dx.types.CBufRet.f32 %1602, 1
  %1605 = extractvalue %dx.types.CBufRet.f32 %1602, 2
  %1606 = extractvalue %dx.types.CBufRet.f32 %1602, 3
  %1607 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %1608 = extractvalue %dx.types.CBufRet.f32 %1607, 0
  %1609 = extractvalue %dx.types.CBufRet.f32 %1607, 1
  %1610 = extractvalue %dx.types.CBufRet.f32 %1607, 2
  %1611 = extractvalue %dx.types.CBufRet.f32 %1607, 3
  %1612 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %1613 = extractvalue %dx.types.CBufRet.f32 %1612, 0
  %1614 = extractvalue %dx.types.CBufRet.f32 %1612, 1
  %1615 = extractvalue %dx.types.CBufRet.f32 %1612, 2
  %1616 = extractvalue %dx.types.CBufRet.f32 %1612, 3
  %1617 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %1618 = extractvalue %dx.types.CBufRet.f32 %1617, 3
  %1619 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %1620 = extractvalue %dx.types.CBufRet.f32 %1619, 3
  %1621 = extractvalue %dx.types.CBufRet.f32 %1619, 0
  %1622 = extractvalue %dx.types.CBufRet.f32 %1619, 1
  %1623 = extractvalue %dx.types.CBufRet.f32 %1619, 2
  %1624 = fcmp fast olt float %1623, -5.000000e-01
  %1625 = call float @dx.op.dot3.f32(i32 55, float %1594, float %1595, float %1596, float %1594, float %1595, float %1596)  ; Dot3(ax,ay,az,bx,by,bz)
  %1626 = call float @dx.op.unary.f32(i32 25, float %1625)  ; Rsqrt(value)
  %1627 = fmul fast float %1626, %1625
  %1628 = fmul fast float %1626, %1594
  %1629 = fmul fast float %1626, %1595
  %1630 = fmul fast float %1626, %1596
  %1631 = fadd fast float %1627, %1601
  %1632 = call float @dx.op.dot3.f32(i32 55, float %1628, float %1629, float %1630, float %1598, float %1599, float %1600)  ; Dot3(ax,ay,az,bx,by,bz)
  %1633 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %15, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1634 = extractvalue %dx.types.CBufRet.i32 %1633, 1
  %1635 = and i32 %1634, 1
  %1636 = icmp ne i32 %1635, 0
  %1637 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %1638 = extractvalue %dx.types.CBufRet.f32 %1637, 2
  %1639 = fcmp fast ogt float %1638, 0.000000e+00
  %1640 = and i1 %1636, %1639
  br i1 %1640, label %1641, label %2047, !dx.controlflow.hints !59

; <label>:1641                                    ; preds = %1549
  %1642 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %1643 = extractvalue %dx.types.CBufRet.f32 %1642, 3
  %1644 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1645 = extractvalue %dx.types.CBufRet.f32 %1644, 2
  %1646 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1647 = extractvalue %dx.types.CBufRet.f32 %1646, 2
  %1648 = fsub fast float %1645, %1647
  %1649 = and i32 %1634, 2
  %1650 = extractvalue %dx.types.CBufRet.i32 %1633, 0
  %1651 = call i32 @dx.op.binary.i32(i32 40, i32 %1650, i32 3)  ; UMin(a,b)
  %1652 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %1653 = extractvalue %dx.types.CBufRet.f32 %1652, 0
  %1654 = extractvalue %dx.types.CBufRet.f32 %1652, 1
  %1655 = extractvalue %dx.types.CBufRet.f32 %1646, 0
  %1656 = extractvalue %dx.types.CBufRet.f32 %1646, 1
  %1657 = fsub fast float %1653, %1655
  %1658 = fsub fast float %1654, %1656
  %1659 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %1660 = extractvalue %dx.types.CBufRet.f32 %1659, 0
  %1661 = fcmp fast ogt float %1660, 0.000000e+00
  %1662 = fsub fast float -0.000000e+00, %1657
  %1663 = fsub fast float -0.000000e+00, %1658
  %1664 = call float @dx.op.dot2.f32(i32 54, float %1628, float %1629, float %1628, float %1629)  ; Dot2(ax,ay,bx,by)
  %1665 = call float @dx.op.dot2.f32(i32 54, float %1628, float %1629, float %1662, float %1663)  ; Dot2(ax,ay,bx,by)
  %1666 = fmul fast float %1665, 2.000000e+00
  %1667 = call float @dx.op.dot2.f32(i32 54, float %1662, float %1663, float %1662, float %1663)  ; Dot2(ax,ay,bx,by)
  %1668 = fmul fast float %1660, %1660
  %1669 = fsub fast float %1667, %1668
  %1670 = fmul fast float %1666, %1666
  %1671 = fmul fast float %1664, 4.000000e+00
  %1672 = fmul fast float %1671, %1669
  %1673 = fsub fast float %1670, %1672
  %1674 = fcmp fast ogt float %1673, 0.000000e+00
  br i1 %1674, label %1675, label %1690, !dx.controlflow.hints !60

; <label>:1675                                    ; preds = %1641
  %1676 = fcmp fast ogt float %1666, 0.000000e+00
  %1677 = call float @dx.op.unary.f32(i32 24, float %1673)  ; Sqrt(value)
  %1678 = fsub fast float -0.000000e+00, %1677
  %1679 = select i1 %1676, float %1677, float %1678
  %1680 = fadd fast float %1679, %1666
  %1681 = fmul float %1680, -5.000000e-01
  %1682 = fdiv fast float %1681, %1664
  %1683 = call float @dx.op.binary.f32(i32 35, float %1682, float 0.000000e+00)  ; FMax(a,b)
  %1684 = call float @dx.op.binary.f32(i32 36, float %1627, float %1683)  ; FMin(a,b)
  %1685 = fdiv fast float %1669, %1681
  %1686 = call float @dx.op.binary.f32(i32 35, float %1685, float 0.000000e+00)  ; FMax(a,b)
  %1687 = call float @dx.op.binary.f32(i32 36, float %1627, float %1686)  ; FMin(a,b)
  %1688 = call float @dx.op.binary.f32(i32 36, float %1684, float %1687)  ; FMin(a,b)
  %1689 = call float @dx.op.binary.f32(i32 35, float %1684, float %1687)  ; FMax(a,b)
  br label %1690

; <label>:1690                                    ; preds = %1675, %1641
  %1691 = phi float [ %1689, %1675 ], [ -1.000000e+00, %1641 ]
  %1692 = phi float [ %1688, %1675 ], [ -1.000000e+00, %1641 ]
  %1693 = phi i1 [ true, %1675 ], [ false, %1641 ]
  %1694 = and i1 %1661, %1693
  br i1 %1694, label %1695, label %1697, !dx.controlflow.hints !61

; <label>:1695                                    ; preds = %1690
  %1696 = fcmp fast oeq float %1692, %1691
  br i1 %1696, label %2000, label %1698, !dx.controlflow.hints !62

; <label>:1697                                    ; preds = %1690
  br i1 %1661, label %2000, label %1698, !dx.controlflow.hints !63

; <label>:1698                                    ; preds = %1697, %1695
  %1699 = phi float [ %1627, %1697 ], [ %1691, %1695 ]
  %1700 = phi float [ 0.000000e+00, %1697 ], [ %1692, %1695 ]
  %1701 = icmp ne i32 %1649, 0
  %1702 = fmul fast float %1699, %1630
  %1703 = fadd fast float %1702, %1643
  %1704 = fmul fast float %1703, %1699
  %1705 = select i1 %1701, float 0.000000e+00, float %1704
  %1706 = fcmp fast oeq float %1630, 0.000000e+00
  %1707 = fdiv fast float %1648, %1630
  %1708 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1707)  ; FMax(a,b)
  %1709 = select i1 %1706, float %1699, float %1708
  %1710 = call float @dx.op.binary.f32(i32 36, float %1699, float %1709)  ; FMin(a,b)
  %1711 = fcmp fast ogt float %1630, 0.000000e+00
  %1712 = fcmp fast olt float %1648, 0.000000e+00
  br i1 %1711, label %1713, label %1770, !dx.controlflow.hints !64

; <label>:1713                                    ; preds = %1698
  %1714 = icmp eq i32 %1649, 0
  br i1 %1712, label %1715, label %1759, !dx.controlflow.hints !65

; <label>:1715                                    ; preds = %1713
  %1716 = select i1 %1714, float %1699, float 0.000000e+00
  %1717 = fsub fast float -0.000000e+00, %1716
  %1718 = call float @dx.op.unary.f32(i32 6, float %1717)  ; FAbs(value)
  %1719 = fmul fast float %1716, %1630
  %1720 = fadd fast float %1719, %1643
  %1721 = fmul fast float %1718, %1720
  %1722 = fsub fast float %1705, %1721
  %1723 = fsub fast float %1699, %1718
  %1724 = select i1 %1714, float %1723, float 0.000000e+00
  %1725 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %1726 = extractvalue %dx.types.CBufRet.f32 %1725, 0
  %1727 = extractvalue %dx.types.CBufRet.f32 %1725, 1
  %1728 = extractvalue %dx.types.CBufRet.f32 %1725, 2
  %1729 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %1730 = extractvalue %dx.types.CBufRet.f32 %1729, 0
  %1731 = extractvalue %dx.types.CBufRet.f32 %1729, 1
  %1732 = extractvalue %dx.types.CBufRet.f32 %1729, 2
  %1733 = extractvalue %dx.types.CBufRet.f32 %1729, 3
  %1734 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %1735 = extractvalue %dx.types.CBufRet.f32 %1734, 3
  %1736 = call float @dx.op.binary.f32(i32 36, float %1722, float %1735)  ; FMin(a,b)
  %1737 = fmul fast float %1733, %1724
  %1738 = call float @dx.op.unary.f32(i32 7, float %1737)  ; Saturate(value)
  %1739 = fsub fast float %1730, %1726
  %1740 = fsub fast float %1731, %1727
  %1741 = fsub fast float %1732, %1728
  %1742 = fmul fast float %1738, %1739
  %1743 = fmul fast float %1738, %1740
  %1744 = fmul fast float %1738, %1741
  %1745 = fadd fast float %1742, %1726
  %1746 = fadd fast float %1743, %1727
  %1747 = fadd fast float %1744, %1728
  %1748 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %1749 = extractvalue %dx.types.CBufRet.f32 %1748, 0
  %1750 = extractvalue %dx.types.CBufRet.f32 %1748, 1
  %1751 = fadd fast float %1750, %1749
  %1752 = call float @dx.op.unary.f32(i32 7, float %1751)  ; Saturate(value)
  %1753 = extractvalue %dx.types.CBufRet.f32 %1748, 2
  %1754 = extractvalue %dx.types.CBufRet.f32 %1748, 3
  %1755 = fadd fast float %1754, %1753
  %1756 = call float @dx.op.unary.f32(i32 7, float %1755)  ; Saturate(value)
  %1757 = fmul fast float %1752, %1736
  %1758 = fmul fast float %1757, %1756
  br label %2000

; <label>:1759                                    ; preds = %1713
  br i1 %1714, label %1760, label %1781, !dx.controlflow.hints !66

; <label>:1760                                    ; preds = %1759
  %1761 = call float @dx.op.binary.f32(i32 36, float %1710, float %1700)  ; FMin(a,b)
  %1762 = fsub fast float %1710, %1761
  %1763 = fsub fast float %1762, %1699
  %1764 = call float @dx.op.unary.f32(i32 6, float %1763)  ; FAbs(value)
  %1765 = fadd fast float %1762, %1699
  %1766 = fmul fast float %1765, %1630
  %1767 = fadd fast float %1766, %1643
  %1768 = fmul fast float %1767, %1764
  %1769 = fsub fast float %1705, %1768
  br label %1781

; <label>:1770                                    ; preds = %1698
  br i1 %1712, label %1771, label %1781, !dx.controlflow.hints !67

; <label>:1771                                    ; preds = %1770
  %1772 = call float @dx.op.binary.f32(i32 35, float %1700, float %1710)  ; FMax(a,b)
  %1773 = icmp eq i32 %1649, 0
  %1774 = select i1 %1773, float %1710, float 0.000000e+00
  %1775 = fsub fast float -0.000000e+00, %1774
  %1776 = call float @dx.op.unary.f32(i32 6, float %1775)  ; FAbs(value)
  %1777 = fmul fast float %1774, %1630
  %1778 = fadd fast float %1777, %1643
  %1779 = fmul fast float %1776, %1778
  %1780 = fsub fast float %1705, %1779
  br label %1781

; <label>:1781                                    ; preds = %1771, %1770, %1760, %1759
  %1782 = phi float [ %1700, %1759 ], [ %1700, %1760 ], [ %1772, %1771 ], [ %1700, %1770 ]
  %1783 = phi float [ 0.000000e+00, %1759 ], [ %1764, %1760 ], [ %1776, %1771 ], [ 0.000000e+00, %1770 ]
  %1784 = phi float [ %1705, %1759 ], [ %1769, %1760 ], [ %1780, %1771 ], [ %1705, %1770 ]
  %1785 = phi float [ %1710, %1759 ], [ %1710, %1760 ], [ %1699, %1771 ], [ %1699, %1770 ]
  %1786 = getelementptr inbounds [3 x float], [3 x float]* %19, i32 0, i32 0
  store float -1.000000e+00, float* %1786, align 4, !tbaa !68, !noalias !72
  %1787 = getelementptr inbounds [3 x float], [3 x float]* %19, i32 0, i32 1
  store float -1.000000e+00, float* %1787, align 4, !tbaa !68, !noalias !72
  %1788 = getelementptr inbounds [3 x float], [3 x float]* %19, i32 0, i32 2
  store float -1.000000e+00, float* %1788, align 4, !tbaa !68, !noalias !72
  %1789 = getelementptr inbounds [3 x float], [3 x float]* %20, i32 0, i32 0
  store float -1.000000e+00, float* %1789, align 4, !tbaa !68, !noalias !72
  %1790 = getelementptr inbounds [3 x float], [3 x float]* %20, i32 0, i32 1
  store float -1.000000e+00, float* %1790, align 4, !tbaa !68, !noalias !72
  %1791 = getelementptr inbounds [3 x float], [3 x float]* %20, i32 0, i32 2
  store float -1.000000e+00, float* %1791, align 4, !tbaa !68, !noalias !72
  %1792 = icmp sgt i32 %1651, 0
  br i1 %1792, label %1793, label %1854

; <label>:1793                                    ; preds = %1781
  br label %1794

; <label>:1794                                    ; preds = %1843, %1793
  %1795 = phi i32 [ %1844, %1843 ], [ 0, %1793 ]
  %1796 = phi i32 [ %1845, %1843 ], [ 0, %1793 ]
  %1797 = add nuw i32 %1796, 171
  %1798 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 %1797)  ; CBufferLoadLegacy(handle,regIndex)
  %1799 = extractvalue %dx.types.CBufRet.f32 %1798, 0
  %1800 = extractvalue %dx.types.CBufRet.f32 %1798, 1
  %1801 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1802 = extractvalue %dx.types.CBufRet.f32 %1801, 0
  %1803 = extractvalue %dx.types.CBufRet.f32 %1801, 1
  %1804 = fsub fast float %1799, %1802
  %1805 = fsub fast float %1800, %1803
  %1806 = extractvalue %dx.types.CBufRet.f32 %1798, 2
  %1807 = fsub fast float -0.000000e+00, %1804
  %1808 = fsub fast float -0.000000e+00, %1805
  %1809 = call float @dx.op.dot2.f32(i32 54, float %1628, float %1629, float %1807, float %1808)  ; Dot2(ax,ay,bx,by)
  %1810 = fmul fast float %1809, 2.000000e+00
  %1811 = call float @dx.op.dot2.f32(i32 54, float %1807, float %1808, float %1807, float %1808)  ; Dot2(ax,ay,bx,by)
  %1812 = fmul fast float %1806, %1806
  %1813 = fsub fast float %1811, %1812
  %1814 = fmul fast float %1810, %1810
  %1815 = fmul fast float %1671, %1813
  %1816 = fsub fast float %1814, %1815
  %1817 = fcmp fast ogt float %1816, 0.000000e+00
  br i1 %1817, label %1818, label %1833, !dx.controlflow.hints !60

; <label>:1818                                    ; preds = %1794
  %1819 = fcmp fast ogt float %1810, 0.000000e+00
  %1820 = call float @dx.op.unary.f32(i32 24, float %1816)  ; Sqrt(value)
  %1821 = fsub fast float -0.000000e+00, %1820
  %1822 = select i1 %1819, float %1820, float %1821
  %1823 = fadd fast float %1822, %1810
  %1824 = fmul float %1823, -5.000000e-01
  %1825 = fdiv fast float %1824, %1664
  %1826 = call float @dx.op.binary.f32(i32 35, float %1825, float 0.000000e+00)  ; FMax(a,b)
  %1827 = call float @dx.op.binary.f32(i32 36, float %1699, float %1826)  ; FMin(a,b)
  %1828 = fdiv fast float %1813, %1824
  %1829 = call float @dx.op.binary.f32(i32 35, float %1828, float 0.000000e+00)  ; FMax(a,b)
  %1830 = call float @dx.op.binary.f32(i32 36, float %1699, float %1829)  ; FMin(a,b)
  %1831 = call float @dx.op.binary.f32(i32 36, float %1827, float %1830)  ; FMin(a,b)
  %1832 = call float @dx.op.binary.f32(i32 35, float %1827, float %1830)  ; FMax(a,b)
  br label %1833

; <label>:1833                                    ; preds = %1818, %1794
  %1834 = phi float [ %1832, %1818 ], [ -1.000000e+00, %1794 ]
  %1835 = phi float [ %1831, %1818 ], [ -1.000000e+00, %1794 ]
  %1836 = phi i1 [ true, %1818 ], [ false, %1794 ]
  br i1 %1836, label %1837, label %1843, !dx.controlflow.hints !83

; <label>:1837                                    ; preds = %1833
  %1838 = call float @dx.op.binary.f32(i32 35, float %1782, float %1835)  ; FMax(a,b)
  %1839 = getelementptr inbounds [3 x float], [3 x float]* %19, i32 0, i32 %1796
  store float %1838, float* %1839, align 4, !tbaa !68, !noalias !72
  %1840 = call float @dx.op.binary.f32(i32 35, float %1782, float %1834)  ; FMax(a,b)
  %1841 = getelementptr inbounds [3 x float], [3 x float]* %20, i32 0, i32 %1796
  store float %1840, float* %1841, align 4, !tbaa !68, !noalias !72
  %1842 = add nsw i32 %1795, 1
  br label %1843

; <label>:1843                                    ; preds = %1837, %1833
  %1844 = phi i32 [ %1842, %1837 ], [ %1795, %1833 ]
  %1845 = add nuw nsw i32 %1796, 1
  %1846 = icmp eq i32 %1845, %1651
  br i1 %1846, label %1847, label %1794

; <label>:1847                                    ; preds = %1843
  %1848 = load float, float* %1788, align 4, !tbaa !68, !alias.scope !84, !noalias !87
  %1849 = load float, float* %1787, align 4, !tbaa !68, !alias.scope !90, !noalias !91
  %1850 = load float, float* %1786, align 4, !tbaa !68, !alias.scope !92, !noalias !93
  %1851 = load float, float* %1791, align 4, !tbaa !68, !alias.scope !94, !noalias !97
  %1852 = load float, float* %1790, align 4, !tbaa !68, !alias.scope !100, !noalias !101
  %1853 = load float, float* %1789, align 4, !tbaa !68, !alias.scope !102, !noalias !103
  br label %1854

; <label>:1854                                    ; preds = %1847, %1781
  %1855 = phi float [ -1.000000e+00, %1781 ], [ %1853, %1847 ]
  %1856 = phi float [ -1.000000e+00, %1781 ], [ %1852, %1847 ]
  %1857 = phi float [ -1.000000e+00, %1781 ], [ %1851, %1847 ]
  %1858 = phi float [ -1.000000e+00, %1781 ], [ %1850, %1847 ]
  %1859 = phi float [ -1.000000e+00, %1781 ], [ %1849, %1847 ]
  %1860 = phi float [ -1.000000e+00, %1781 ], [ %1848, %1847 ]
  %1861 = phi i32 [ 0, %1781 ], [ %1844, %1847 ]
  %1862 = call float @dx.op.binary.f32(i32 36, float %1859, float %1860)  ; FMin(a,b)
  %1863 = call float @dx.op.binary.f32(i32 36, float %1858, float %1862)  ; FMin(a,b)
  %1864 = call float @dx.op.binary.f32(i32 35, float %1858, float %1859)  ; FMax(a,b)
  %1865 = call float @dx.op.binary.f32(i32 36, float %1864, float %1860)  ; FMin(a,b)
  %1866 = call float @dx.op.binary.f32(i32 36, float %1858, float %1859)  ; FMin(a,b)
  %1867 = call float @dx.op.binary.f32(i32 35, float %1866, float %1865)  ; FMax(a,b)
  %1868 = call float @dx.op.binary.f32(i32 35, float %1859, float %1860)  ; FMax(a,b)
  %1869 = call float @dx.op.binary.f32(i32 35, float %1858, float %1868)  ; FMax(a,b)
  store float %1863, float* %1786, align 4, !tbaa !68, !alias.scope !92, !noalias !93
  store float %1867, float* %1787, align 4, !tbaa !68, !alias.scope !90, !noalias !91
  store float %1869, float* %1788, align 4, !tbaa !68, !alias.scope !84, !noalias !87
  %1870 = call float @dx.op.binary.f32(i32 36, float %1856, float %1857)  ; FMin(a,b)
  %1871 = call float @dx.op.binary.f32(i32 36, float %1855, float %1870)  ; FMin(a,b)
  %1872 = call float @dx.op.binary.f32(i32 35, float %1855, float %1856)  ; FMax(a,b)
  %1873 = call float @dx.op.binary.f32(i32 36, float %1872, float %1857)  ; FMin(a,b)
  %1874 = call float @dx.op.binary.f32(i32 36, float %1855, float %1856)  ; FMin(a,b)
  %1875 = call float @dx.op.binary.f32(i32 35, float %1874, float %1873)  ; FMax(a,b)
  %1876 = call float @dx.op.binary.f32(i32 35, float %1856, float %1857)  ; FMax(a,b)
  %1877 = call float @dx.op.binary.f32(i32 35, float %1855, float %1876)  ; FMax(a,b)
  store float %1871, float* %1789, align 4, !tbaa !68, !alias.scope !102, !noalias !103
  store float %1875, float* %1790, align 4, !tbaa !68, !alias.scope !100, !noalias !101
  store float %1877, float* %1791, align 4, !tbaa !68, !alias.scope !94, !noalias !97
  %1878 = sub nsw i32 3, %1861
  %1879 = icmp sgt i32 %1878, 2
  br i1 %1879, label %1880, label %1918, !dx.controlflow.hints !104

; <label>:1880                                    ; preds = %1854
  %1881 = icmp eq i32 %1649, 0
  %1882 = fsub fast float %1699, %1783
  %1883 = select i1 %1881, float %1882, float %1783
  %1884 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %1885 = extractvalue %dx.types.CBufRet.f32 %1884, 0
  %1886 = extractvalue %dx.types.CBufRet.f32 %1884, 1
  %1887 = extractvalue %dx.types.CBufRet.f32 %1884, 2
  %1888 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %1889 = extractvalue %dx.types.CBufRet.f32 %1888, 0
  %1890 = extractvalue %dx.types.CBufRet.f32 %1888, 1
  %1891 = extractvalue %dx.types.CBufRet.f32 %1888, 2
  %1892 = extractvalue %dx.types.CBufRet.f32 %1888, 3
  %1893 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %1894 = extractvalue %dx.types.CBufRet.f32 %1893, 3
  %1895 = call float @dx.op.binary.f32(i32 36, float %1784, float %1894)  ; FMin(a,b)
  %1896 = fmul fast float %1892, %1883
  %1897 = call float @dx.op.unary.f32(i32 7, float %1896)  ; Saturate(value)
  %1898 = fsub fast float %1889, %1885
  %1899 = fsub fast float %1890, %1886
  %1900 = fsub fast float %1891, %1887
  %1901 = fmul fast float %1897, %1898
  %1902 = fmul fast float %1897, %1899
  %1903 = fmul fast float %1897, %1900
  %1904 = fadd fast float %1901, %1885
  %1905 = fadd fast float %1902, %1886
  %1906 = fadd fast float %1903, %1887
  %1907 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %1908 = extractvalue %dx.types.CBufRet.f32 %1907, 0
  %1909 = extractvalue %dx.types.CBufRet.f32 %1907, 1
  %1910 = fadd fast float %1909, %1908
  %1911 = call float @dx.op.unary.f32(i32 7, float %1910)  ; Saturate(value)
  %1912 = extractvalue %dx.types.CBufRet.f32 %1907, 2
  %1913 = extractvalue %dx.types.CBufRet.f32 %1907, 3
  %1914 = fadd fast float %1913, %1912
  %1915 = call float @dx.op.unary.f32(i32 7, float %1914)  ; Saturate(value)
  %1916 = fmul fast float %1911, %1895
  %1917 = fmul fast float %1916, %1915
  br label %2000

; <label>:1918                                    ; preds = %1854
  %1919 = getelementptr inbounds [3 x float], [3 x float]* %19, i32 0, i32 %1878
  %1920 = load float, float* %1919, align 4, !tbaa !68, !noalias !72
  %1921 = fcmp fast olt float %1920, %1785
  %1922 = icmp sgt i32 %1861, 0
  %1923 = and i1 %1922, %1921
  br i1 %1923, label %1924, label %1961

; <label>:1924                                    ; preds = %1918
  br label %1925

; <label>:1925                                    ; preds = %1954, %1924
  %1926 = phi float [ %1955, %1954 ], [ %1783, %1924 ]
  %1927 = phi float [ %1956, %1954 ], [ %1784, %1924 ]
  %1928 = phi float [ %1936, %1954 ], [ %1920, %1924 ]
  %1929 = phi i32 [ %1933, %1954 ], [ %1878, %1924 ]
  %1930 = getelementptr inbounds [3 x float], [3 x float]* %20, i32 0, i32 %1929
  %1931 = load float, float* %1930, align 4, !tbaa !68, !noalias !72
  %1932 = icmp slt i32 %1929, 2
  %1933 = add nsw i32 %1929, 1
  %1934 = getelementptr inbounds [3 x float], [3 x float]* %19, i32 0, i32 %1933
  %1935 = load float, float* %1934, align 4, !tbaa !68, !noalias !72
  %1936 = select i1 %1932, float %1935, float %1699
  %1937 = call float @dx.op.binary.f32(i32 36, float %1936, float %1931)  ; FMin(a,b)
  %1938 = call float @dx.op.binary.f32(i32 36, float %1785, float %1937)  ; FMin(a,b)
  %1939 = icmp eq i32 %1649, 0
  %1940 = fadd fast float %1938, %1928
  %1941 = fmul fast float %1940, %1630
  %1942 = fadd fast float %1941, %1643
  br i1 %1939, label %1948, label %1943, !dx.controlflow.hints !105

; <label>:1943                                    ; preds = %1925
  %1944 = fsub fast float %1938, %1928
  %1945 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1944)  ; FMax(a,b)
  %1946 = fmul fast float %1945, %1942
  %1947 = fadd fast float %1946, %1927
  br label %1954

; <label>:1948                                    ; preds = %1925
  %1949 = fsub fast float %1928, %1938
  %1950 = call float @dx.op.unary.f32(i32 6, float %1949)  ; FAbs(value)
  %1951 = fadd fast float %1950, %1926
  %1952 = fmul fast float %1950, %1942
  %1953 = fsub fast float %1927, %1952
  br label %1954

; <label>:1954                                    ; preds = %1948, %1943
  %1955 = phi float [ %1945, %1943 ], [ %1951, %1948 ]
  %1956 = phi float [ %1947, %1943 ], [ %1953, %1948 ]
  %1957 = fcmp fast olt float %1936, %1785
  %1958 = icmp slt i32 %1933, 3
  %1959 = and i1 %1958, %1957
  br i1 %1959, label %1925, label %1960

; <label>:1960                                    ; preds = %1954
  br label %1961

; <label>:1961                                    ; preds = %1960, %1918
  %1962 = phi float [ %1783, %1918 ], [ %1955, %1960 ]
  %1963 = phi float [ %1784, %1918 ], [ %1956, %1960 ]
  %1964 = fsub fast float %1699, %1962
  %1965 = select i1 %1701, float %1962, float %1964
  %1966 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %1967 = extractvalue %dx.types.CBufRet.f32 %1966, 0
  %1968 = extractvalue %dx.types.CBufRet.f32 %1966, 1
  %1969 = extractvalue %dx.types.CBufRet.f32 %1966, 2
  %1970 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %1971 = extractvalue %dx.types.CBufRet.f32 %1970, 0
  %1972 = extractvalue %dx.types.CBufRet.f32 %1970, 1
  %1973 = extractvalue %dx.types.CBufRet.f32 %1970, 2
  %1974 = extractvalue %dx.types.CBufRet.f32 %1970, 3
  %1975 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %1976 = extractvalue %dx.types.CBufRet.f32 %1975, 3
  %1977 = call float @dx.op.binary.f32(i32 36, float %1963, float %1976)  ; FMin(a,b)
  %1978 = fmul fast float %1974, %1965
  %1979 = call float @dx.op.unary.f32(i32 7, float %1978)  ; Saturate(value)
  %1980 = fsub fast float %1971, %1967
  %1981 = fsub fast float %1972, %1968
  %1982 = fsub fast float %1973, %1969
  %1983 = fmul fast float %1979, %1980
  %1984 = fmul fast float %1979, %1981
  %1985 = fmul fast float %1979, %1982
  %1986 = fadd fast float %1983, %1967
  %1987 = fadd fast float %1984, %1968
  %1988 = fadd fast float %1985, %1969
  %1989 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %1990 = extractvalue %dx.types.CBufRet.f32 %1989, 0
  %1991 = extractvalue %dx.types.CBufRet.f32 %1989, 1
  %1992 = fadd fast float %1991, %1990
  %1993 = call float @dx.op.unary.f32(i32 7, float %1992)  ; Saturate(value)
  %1994 = extractvalue %dx.types.CBufRet.f32 %1989, 2
  %1995 = extractvalue %dx.types.CBufRet.f32 %1989, 3
  %1996 = fadd fast float %1995, %1994
  %1997 = call float @dx.op.unary.f32(i32 7, float %1996)  ; Saturate(value)
  %1998 = fmul fast float %1993, %1977
  %1999 = fmul fast float %1998, %1997
  br label %2000

; <label>:2000                                    ; preds = %1961, %1880, %1715, %1697, %1695
  %2001 = phi float [ %1724, %1715 ], [ %1883, %1880 ], [ %1965, %1961 ], [ 0.000000e+00, %1695 ], [ 0.000000e+00, %1697 ]
  %2002 = phi float [ %1758, %1715 ], [ %1917, %1880 ], [ %1999, %1961 ], [ 0.000000e+00, %1695 ], [ 0.000000e+00, %1697 ]
  %2003 = phi float [ %1745, %1715 ], [ %1904, %1880 ], [ %1986, %1961 ], [ 0.000000e+00, %1695 ], [ 0.000000e+00, %1697 ]
  %2004 = phi float [ %1746, %1715 ], [ %1905, %1880 ], [ %1987, %1961 ], [ 0.000000e+00, %1695 ], [ 0.000000e+00, %1697 ]
  %2005 = phi float [ %1747, %1715 ], [ %1906, %1880 ], [ %1988, %1961 ], [ 0.000000e+00, %1695 ], [ 0.000000e+00, %1697 ]
  %2006 = fmul fast float %1638, %2002
  %2007 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2008 = extractvalue %dx.types.CBufRet.f32 %2007, 2
  %2009 = fsub fast float %1645, %2008
  %2010 = fcmp fast olt float %2006, -2.000000e+01
  %2011 = call float @dx.op.unary.f32(i32 21, float %2006)  ; Exp(value)
  %2012 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %2013 = extractvalue %dx.types.CBufRet.f32 %2012, 2
  %2014 = extractvalue %dx.types.CBufRet.f32 %2012, 3
  %2015 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %2016 = extractvalue %dx.types.CBufRet.f32 %2015, 2
  %2017 = fmul fast float %2014, %2009
  %2018 = call float @dx.op.unary.f32(i32 7, float %2017)  ; Saturate(value)
  %2019 = fsub fast float 1.000000e+00, %2018
  %2020 = fmul fast float %1630, 5.000000e-01
  %2021 = fadd fast float %2020, 5.000000e-01
  %2022 = call float @dx.op.unary.f32(i32 7, float %2021)  ; Saturate(value)
  %2023 = fsub fast float 1.000000e+00, %2022
  %2024 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %2019)  ; FMax(a,b)
  %2025 = fdiv fast float %2023, %2024
  %2026 = fsub fast float %2009, %1596
  %2027 = call float @dx.op.unary.f32(i32 6, float %2026)  ; FAbs(value)
  %2028 = fmul fast float %2027, %2013
  %2029 = call float @dx.op.unary.f32(i32 7, float %2025)  ; Saturate(value)
  %2030 = fsub fast float 1.000000e+00, %2028
  %2031 = fmul fast float %2030, %2029
  %2032 = fadd fast float %2031, %2028
  %2033 = fmul fast float %2016, %2009
  %2034 = call float @dx.op.unary.f32(i32 7, float %2033)  ; Saturate(value)
  %2035 = fsub fast float 1.000000e+00, %2032
  %2036 = fmul fast float %2035, %2034
  %2037 = fadd fast float %2036, %2032
  %2038 = call float @dx.op.unary.f32(i32 7, float %2037)  ; Saturate(value)
  %2039 = fadd fast float %2011, -1.000000e+00
  %2040 = select i1 %2010, float -1.000000e+00, float %2039
  %2041 = fmul fast float %2038, %2040
  %2042 = fadd fast float %2041, 1.000000e+00
  %2043 = fsub fast float -0.000000e+00, %2041
  %2044 = fmul fast float %2003, %2043
  %2045 = fmul fast float %2004, %2043
  %2046 = fmul fast float %2005, %2043
  br label %2047

; <label>:2047                                    ; preds = %2000, %1549
  %2048 = phi float [ %2001, %2000 ], [ 0.000000e+00, %1549 ]
  %2049 = phi float [ %2042, %2000 ], [ 1.000000e+00, %1549 ]
  %2050 = phi float [ %2044, %2000 ], [ 0.000000e+00, %1549 ]
  %2051 = phi float [ %2045, %2000 ], [ 0.000000e+00, %1549 ]
  %2052 = phi float [ %2046, %2000 ], [ 0.000000e+00, %1549 ]
  %2053 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %2054 = extractvalue %dx.types.CBufRet.f32 %2053, 1
  %2055 = fsub fast float 1.000000e+00, %2049
  %2056 = fmul fast float %2055, %1631
  %2057 = fmul fast float %2056, %2054
  %2058 = fsub fast float %1631, %2057
  br i1 %1624, label %2059, label %2088, !dx.controlflow.hints !106

; <label>:2059                                    ; preds = %2047
  %2060 = fmul fast float %1632, %1621
  %2061 = fadd fast float %2060, %1622
  %2062 = call float @dx.op.unary.f32(i32 7, float %2061)  ; Saturate(value)
  %2063 = fmul fast float %1603, %2058
  %2064 = fsub fast float -0.000000e+00, %2063
  %2065 = fmul fast float %1604, %2058
  %2066 = fsub fast float -0.000000e+00, %2065
  %2067 = call float @dx.op.unary.f32(i32 21, float %2064)  ; Exp(value)
  %2068 = call float @dx.op.unary.f32(i32 21, float %2066)  ; Exp(value)
  %2069 = call float @dx.op.binary.f32(i32 35, float %1611, float %2067)  ; FMax(a,b)
  %2070 = call float @dx.op.binary.f32(i32 35, float %1611, float %2068)  ; FMax(a,b)
  %2071 = fsub fast float %2070, %2069
  %2072 = fmul fast float %2071, %2062
  %2073 = fadd fast float %2072, %2069
  %2074 = call float @dx.op.unary.f32(i32 7, float %2073)  ; Saturate(value)
  %2075 = fsub fast float %1608, %1613
  %2076 = fsub fast float %1609, %1614
  %2077 = fsub fast float %1610, %1615
  %2078 = fmul fast float %2062, %2075
  %2079 = fmul fast float %2062, %2076
  %2080 = fmul fast float %2062, %2077
  %2081 = fadd fast float %2078, %1613
  %2082 = fadd fast float %2079, %1614
  %2083 = fadd fast float %2080, %1615
  %2084 = fsub fast float 1.000000e+00, %2074
  %2085 = fmul fast float %2084, %2081
  %2086 = fmul fast float %2084, %2082
  %2087 = fmul fast float %2084, %2083
  br label %2147

; <label>:2088                                    ; preds = %2047
  %2089 = fmul fast float %2058, %1620
  %2090 = call float @dx.op.unary.f32(i32 7, float %2089)  ; Saturate(value)
  %2091 = fsub fast float 2.000000e+00, %2090
  %2092 = fmul fast float %2090, 9.921875e-01
  %2093 = fmul fast float %2092, %2091
  %2094 = fadd fast float %2093, 3.906250e-03
  %2095 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %13, float %2094, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2096 = extractvalue %dx.types.ResRet.f32 %2095, 0
  %2097 = fsub fast float %2090, %2096
  %2098 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2097)  ; FMax(a,b)
  %2099 = fmul fast float %1606, %1596
  %2100 = call float @dx.op.unary.f32(i32 6, float %2099)  ; FAbs(value)
  %2101 = fcmp fast ogt float %2100, 0x3EB0C6F7A0000000
  br i1 %2101, label %2102, label %2108, !dx.controlflow.hints !107

; <label>:2102                                    ; preds = %2088
  %2103 = fmul fast float %2099, 0xBFF7154760000000
  %2104 = call float @dx.op.unary.f32(i32 21, float %2103)  ; Exp(value)
  %2105 = fsub fast float 1.000000e+00, %2104
  %2106 = fdiv fast float %2105, %2099
  %2107 = fmul fast float %2106, %1616
  br label %2108

; <label>:2108                                    ; preds = %2102, %2088
  %2109 = phi float [ %2107, %2102 ], [ %1616, %2088 ]
  %2110 = fadd fast float %2109, %1618
  %2111 = fmul fast float %2110, %2098
  %2112 = fmul fast float %1603, %2111
  %2113 = fsub fast float -0.000000e+00, %2112
  %2114 = fmul fast float %1604, %2111
  %2115 = fsub fast float -0.000000e+00, %2114
  %2116 = fmul fast float %1605, %2111
  %2117 = fsub fast float -0.000000e+00, %2116
  %2118 = call float @dx.op.unary.f32(i32 21, float %2113)  ; Exp(value)
  %2119 = call float @dx.op.unary.f32(i32 21, float %2115)  ; Exp(value)
  %2120 = call float @dx.op.unary.f32(i32 21, float %2117)  ; Exp(value)
  %2121 = fmul fast float %1632, %1632
  %2122 = fadd fast float %2121, 1.000000e+00
  %2123 = fmul fast float %2122, 0x3FAE8EC8A0000000
  %2124 = fmul fast float %2123, %1613
  %2125 = fmul fast float %2123, %1614
  %2126 = fmul fast float %2123, %1615
  %2127 = fmul fast float %1632, %1611
  %2128 = fsub fast float 1.000000e+00, %2127
  %2129 = fmul fast float %1611, %1611
  %2130 = fsub fast float 1.000000e+00, %2129
  %2131 = fmul fast float %2130, 0x3FB45F3060000000
  %2132 = fmul fast float %2128, %2128
  %2133 = fdiv fast float 1.000000e+00, %2132
  %2134 = fmul fast float %2131, %2133
  %2135 = fmul fast float %2134, %1608
  %2136 = fmul fast float %2134, %1609
  %2137 = fmul fast float %2134, %1610
  %2138 = fadd fast float %2135, %2124
  %2139 = fadd fast float %2136, %2125
  %2140 = fadd fast float %2137, %2126
  %2141 = fsub fast float 1.000000e+00, %2118
  %2142 = fsub fast float 1.000000e+00, %2119
  %2143 = fsub fast float 1.000000e+00, %2120
  %2144 = fmul fast float %2138, %2141
  %2145 = fmul fast float %2139, %2142
  %2146 = fmul fast float %2140, %2143
  br label %2147

; <label>:2147                                    ; preds = %2108, %2059
  %2148 = phi float [ %2085, %2059 ], [ %2144, %2108 ]
  %2149 = phi float [ %2086, %2059 ], [ %2145, %2108 ]
  %2150 = phi float [ %2087, %2059 ], [ %2146, %2108 ]
  %2151 = phi float [ %2074, %2059 ], [ %2118, %2108 ]
  %2152 = phi float [ %2074, %2059 ], [ %2119, %2108 ]
  %2153 = phi float [ %2074, %2059 ], [ %2120, %2108 ]
  br i1 %1640, label %2154, label %2352, !dx.controlflow.hints !108

; <label>:2154                                    ; preds = %2147
  %2155 = extractvalue %dx.types.CBufRet.f32 %2053, 0
  %2156 = fmul fast float %2155, %2055
  %2157 = fsub fast float %2050, %2148
  %2158 = fsub fast float %2051, %2149
  %2159 = fsub fast float %2052, %2150
  %2160 = fmul fast float %2156, %2157
  %2161 = fmul fast float %2156, %2158
  %2162 = fmul fast float %2156, %2159
  %2163 = fadd fast float %2160, %2148
  %2164 = fadd fast float %2161, %2149
  %2165 = fadd fast float %2162, %2150
  %2166 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %2151)  ; FMax(a,b)
  %2167 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %2152)  ; FMax(a,b)
  %2168 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %2153)  ; FMax(a,b)
  %2169 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %2049)  ; FMax(a,b)
  %2170 = call float @dx.op.binary.f32(i32 35, float %2048, float %2058)  ; FMax(a,b)
  %2171 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %2170)  ; FMax(a,b)
  %2172 = fdiv fast float %2048, %2171
  %2173 = call float @dx.op.unary.f32(i32 7, float %2172)  ; Saturate(value)
  %2174 = fdiv fast float %2058, %2171
  %2175 = call float @dx.op.unary.f32(i32 7, float %2174)  ; Saturate(value)
  %2176 = fcmp fast une float %2169, 1.000000e+00
  br i1 %2176, label %2177, label %2190, !dx.controlflow.hints !109

; <label>:2177                                    ; preds = %2154
  %2178 = call float @dx.op.unary.f32(i32 23, float %2169)  ; Log(value)
  %2179 = fmul fast float %2178, 0x3FE62E4300000000
  %2180 = fmul fast float %2050, %2179
  %2181 = fsub fast float -0.000000e+00, %2180
  %2182 = fmul fast float %2051, %2179
  %2183 = fsub fast float -0.000000e+00, %2182
  %2184 = fmul fast float %2052, %2179
  %2185 = fsub fast float -0.000000e+00, %2184
  %2186 = fsub fast float 1.000000e+00, %2169
  %2187 = fdiv fast float %2181, %2186
  %2188 = fdiv fast float %2183, %2186
  %2189 = fdiv fast float %2185, %2186
  br label %2190

; <label>:2190                                    ; preds = %2177, %2154
  %2191 = phi float [ %2187, %2177 ], [ %2050, %2154 ]
  %2192 = phi float [ %2188, %2177 ], [ %2051, %2154 ]
  %2193 = phi float [ %2189, %2177 ], [ %2052, %2154 ]
  %2194 = phi float [ %2179, %2177 ], [ 0.000000e+00, %2154 ]
  %2195 = fcmp fast une float %2166, 1.000000e+00
  br i1 %2195, label %2196, label %2203, !dx.controlflow.hints !110

; <label>:2196                                    ; preds = %2190
  %2197 = call float @dx.op.unary.f32(i32 23, float %2166)  ; Log(value)
  %2198 = fmul fast float %2197, 0x3FE62E4300000000
  %2199 = fmul fast float %2163, %2198
  %2200 = fsub fast float -0.000000e+00, %2199
  %2201 = fsub fast float 1.000000e+00, %2166
  %2202 = fdiv fast float %2200, %2201
  br label %2203

; <label>:2203                                    ; preds = %2196, %2190
  %2204 = phi float [ %2202, %2196 ], [ %2163, %2190 ]
  %2205 = phi float [ %2198, %2196 ], [ 0.000000e+00, %2190 ]
  %2206 = fcmp fast une float %2167, 1.000000e+00
  br i1 %2206, label %2207, label %2214, !dx.controlflow.hints !110

; <label>:2207                                    ; preds = %2203
  %2208 = call float @dx.op.unary.f32(i32 23, float %2167)  ; Log(value)
  %2209 = fmul fast float %2208, 0x3FE62E4300000000
  %2210 = fmul fast float %2164, %2209
  %2211 = fsub fast float -0.000000e+00, %2210
  %2212 = fsub fast float 1.000000e+00, %2167
  %2213 = fdiv fast float %2211, %2212
  br label %2214

; <label>:2214                                    ; preds = %2207, %2203
  %2215 = phi float [ %2213, %2207 ], [ %2164, %2203 ]
  %2216 = phi float [ %2209, %2207 ], [ 0.000000e+00, %2203 ]
  %2217 = fcmp fast une float %2168, 1.000000e+00
  br i1 %2217, label %2218, label %2225, !dx.controlflow.hints !110

; <label>:2218                                    ; preds = %2214
  %2219 = call float @dx.op.unary.f32(i32 23, float %2168)  ; Log(value)
  %2220 = fmul fast float %2219, 0x3FE62E4300000000
  %2221 = fmul fast float %2165, %2220
  %2222 = fsub fast float -0.000000e+00, %2221
  %2223 = fsub fast float 1.000000e+00, %2168
  %2224 = fdiv fast float %2222, %2223
  br label %2225

; <label>:2225                                    ; preds = %2218, %2214
  %2226 = phi float [ %2224, %2218 ], [ %2165, %2214 ]
  %2227 = phi float [ %2220, %2218 ], [ 0.000000e+00, %2214 ]
  %2228 = fmul fast float %2191, %2175
  %2229 = fmul fast float %2192, %2175
  %2230 = fmul fast float %2193, %2175
  %2231 = fmul fast float %2194, %2175
  %2232 = fmul fast float %2204, %2173
  %2233 = fmul fast float %2215, %2173
  %2234 = fmul fast float %2226, %2173
  %2235 = fmul fast float %2205, %2173
  %2236 = fmul fast float %2216, %2173
  %2237 = fmul fast float %2227, %2173
  %2238 = fadd fast float %2232, %2228
  %2239 = fadd fast float %2233, %2229
  %2240 = fadd fast float %2234, %2230
  %2241 = fadd fast float %2235, %2231
  %2242 = fadd fast float %2236, %2231
  %2243 = fadd fast float %2237, %2231
  %2244 = fcmp fast une float %2241, 0.000000e+00
  br i1 %2244, label %2245, label %2252, !dx.controlflow.hints !111

; <label>:2245                                    ; preds = %2225
  %2246 = fmul fast float %2241, 0x3FF7154760000000
  %2247 = call float @dx.op.unary.f32(i32 21, float %2246)  ; Exp(value)
  %2248 = fsub fast float 1.000000e+00, %2247
  %2249 = fmul fast float %2238, %2248
  %2250 = fsub fast float -0.000000e+00, %2249
  %2251 = fdiv fast float %2250, %2241
  br label %2252

; <label>:2252                                    ; preds = %2245, %2225
  %2253 = phi float [ %2247, %2245 ], [ 1.000000e+00, %2225 ]
  %2254 = phi float [ %2251, %2245 ], [ %2238, %2225 ]
  %2255 = fcmp fast une float %2242, 0.000000e+00
  br i1 %2255, label %2256, label %2263, !dx.controlflow.hints !111

; <label>:2256                                    ; preds = %2252
  %2257 = fmul fast float %2242, 0x3FF7154760000000
  %2258 = call float @dx.op.unary.f32(i32 21, float %2257)  ; Exp(value)
  %2259 = fsub fast float 1.000000e+00, %2258
  %2260 = fmul fast float %2239, %2259
  %2261 = fsub fast float -0.000000e+00, %2260
  %2262 = fdiv fast float %2261, %2242
  br label %2263

; <label>:2263                                    ; preds = %2256, %2252
  %2264 = phi float [ %2258, %2256 ], [ 1.000000e+00, %2252 ]
  %2265 = phi float [ %2262, %2256 ], [ %2239, %2252 ]
  %2266 = fcmp fast une float %2243, 0.000000e+00
  br i1 %2266, label %2267, label %2274, !dx.controlflow.hints !111

; <label>:2267                                    ; preds = %2263
  %2268 = fmul fast float %2243, 0x3FF7154760000000
  %2269 = call float @dx.op.unary.f32(i32 21, float %2268)  ; Exp(value)
  %2270 = fsub fast float 1.000000e+00, %2269
  %2271 = fmul fast float %2240, %2270
  %2272 = fsub fast float -0.000000e+00, %2271
  %2273 = fdiv fast float %2272, %2243
  br label %2274

; <label>:2274                                    ; preds = %2267, %2263
  %2275 = phi float [ %2269, %2267 ], [ 1.000000e+00, %2263 ]
  %2276 = phi float [ %2273, %2267 ], [ %2240, %2263 ]
  %2277 = fcmp fast ogt float %2173, %2175
  br i1 %2277, label %2278, label %2298, !dx.controlflow.hints !112

; <label>:2278                                    ; preds = %2274
  %2279 = fsub fast float 1.000000e+00, %2175
  %2280 = fmul fast float %2191, %2279
  %2281 = fmul fast float %2192, %2279
  %2282 = fmul fast float %2193, %2279
  %2283 = fmul fast float %2194, %2279
  %2284 = fcmp fast une float %2283, 0.000000e+00
  br i1 %2284, label %2285, label %2336, !dx.controlflow.hints !113

; <label>:2285                                    ; preds = %2278
  %2286 = fmul fast float %2283, 0x3FF7154760000000
  %2287 = call float @dx.op.unary.f32(i32 21, float %2286)  ; Exp(value)
  %2288 = fsub fast float 1.000000e+00, %2287
  %2289 = fmul fast float %2280, %2288
  %2290 = fsub fast float -0.000000e+00, %2289
  %2291 = fmul fast float %2281, %2288
  %2292 = fsub fast float -0.000000e+00, %2291
  %2293 = fmul fast float %2282, %2288
  %2294 = fsub fast float -0.000000e+00, %2293
  %2295 = fdiv fast float %2290, %2283
  %2296 = fdiv fast float %2292, %2283
  %2297 = fdiv fast float %2294, %2283
  br label %2336

; <label>:2298                                    ; preds = %2274
  %2299 = fsub fast float 1.000000e+00, %2173
  %2300 = fmul fast float %2204, %2299
  %2301 = fmul fast float %2215, %2299
  %2302 = fmul fast float %2226, %2299
  %2303 = fmul fast float %2205, %2299
  %2304 = fmul fast float %2216, %2299
  %2305 = fmul fast float %2227, %2299
  %2306 = fcmp fast une float %2303, 0.000000e+00
  br i1 %2306, label %2307, label %2314, !dx.controlflow.hints !111

; <label>:2307                                    ; preds = %2298
  %2308 = fmul fast float %2303, 0x3FF7154760000000
  %2309 = call float @dx.op.unary.f32(i32 21, float %2308)  ; Exp(value)
  %2310 = fsub fast float 1.000000e+00, %2309
  %2311 = fmul fast float %2300, %2310
  %2312 = fsub fast float -0.000000e+00, %2311
  %2313 = fdiv fast float %2312, %2303
  br label %2314

; <label>:2314                                    ; preds = %2307, %2298
  %2315 = phi float [ %2313, %2307 ], [ %2300, %2298 ]
  %2316 = phi float [ %2309, %2307 ], [ 1.000000e+00, %2298 ]
  %2317 = fcmp fast une float %2304, 0.000000e+00
  br i1 %2317, label %2318, label %2325, !dx.controlflow.hints !111

; <label>:2318                                    ; preds = %2314
  %2319 = fmul fast float %2304, 0x3FF7154760000000
  %2320 = call float @dx.op.unary.f32(i32 21, float %2319)  ; Exp(value)
  %2321 = fsub fast float 1.000000e+00, %2320
  %2322 = fmul fast float %2301, %2321
  %2323 = fsub fast float -0.000000e+00, %2322
  %2324 = fdiv fast float %2323, %2304
  br label %2325

; <label>:2325                                    ; preds = %2318, %2314
  %2326 = phi float [ %2324, %2318 ], [ %2301, %2314 ]
  %2327 = phi float [ %2320, %2318 ], [ 1.000000e+00, %2314 ]
  %2328 = fcmp fast une float %2305, 0.000000e+00
  br i1 %2328, label %2329, label %2336, !dx.controlflow.hints !111

; <label>:2329                                    ; preds = %2325
  %2330 = fmul fast float %2305, 0x3FF7154760000000
  %2331 = call float @dx.op.unary.f32(i32 21, float %2330)  ; Exp(value)
  %2332 = fsub fast float 1.000000e+00, %2331
  %2333 = fmul fast float %2302, %2332
  %2334 = fsub fast float -0.000000e+00, %2333
  %2335 = fdiv fast float %2334, %2305
  br label %2336

; <label>:2336                                    ; preds = %2329, %2325, %2285, %2278
  %2337 = phi float [ %2335, %2329 ], [ %2297, %2285 ], [ %2282, %2278 ], [ %2302, %2325 ]
  %2338 = phi float [ %2326, %2329 ], [ %2296, %2285 ], [ %2281, %2278 ], [ %2326, %2325 ]
  %2339 = phi float [ %2315, %2329 ], [ %2295, %2285 ], [ %2280, %2278 ], [ %2315, %2325 ]
  %2340 = phi float [ %2331, %2329 ], [ %2287, %2285 ], [ 1.000000e+00, %2278 ], [ 1.000000e+00, %2325 ]
  %2341 = phi float [ %2327, %2329 ], [ %2287, %2285 ], [ 1.000000e+00, %2278 ], [ %2327, %2325 ]
  %2342 = phi float [ %2316, %2329 ], [ %2287, %2285 ], [ 1.000000e+00, %2278 ], [ %2316, %2325 ]
  %2343 = fmul fast float %2342, %2254
  %2344 = fmul fast float %2341, %2265
  %2345 = fmul fast float %2340, %2276
  %2346 = fadd fast float %2343, %2339
  %2347 = fadd fast float %2344, %2338
  %2348 = fadd fast float %2345, %2337
  %2349 = fmul fast float %2342, %2253
  %2350 = fmul fast float %2341, %2264
  %2351 = fmul fast float %2340, %2275
  br label %2352

; <label>:2352                                    ; preds = %2336, %2147
  %2353 = phi float [ %2153, %2147 ], [ %2351, %2336 ]
  %2354 = phi float [ %2152, %2147 ], [ %2350, %2336 ]
  %2355 = phi float [ %2151, %2147 ], [ %2349, %2336 ]
  %2356 = phi float [ %2150, %2147 ], [ %2348, %2336 ]
  %2357 = phi float [ %2149, %2147 ], [ %2347, %2336 ]
  %2358 = phi float [ %2148, %2147 ], [ %2346, %2336 ]
  %2359 = fmul fast float %2355, %1496
  %2360 = fmul fast float %2354, %1497
  %2361 = fmul fast float %2353, %1498
  %2362 = fsub fast float 1.000000e+00, %1559
  %2363 = fmul fast float %2358, %2362
  %2364 = fmul fast float %2357, %2362
  %2365 = fmul fast float %2356, %2362
  %2366 = fadd fast float %2363, %2359
  %2367 = fadd fast float %2364, %2360
  %2368 = fadd fast float %2365, %2361
  %2369 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 423)  ; CBufferLoadLegacy(handle,regIndex)
  %2370 = extractvalue %dx.types.CBufRet.f32 %2369, 2
  %2371 = fmul fast float %2370, %1569
  %2372 = call float @dx.op.unary.f32(i32 7, float %2371)  ; Saturate(value)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %3, i32 %16, i32 %17, i32 undef, float %1559, float %1559, float %1559, float %1559, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %2373 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2374 = extractvalue %dx.types.CBufRet.f32 %2373, 0
  %2375 = fmul fast float %2374, %2366
  %2376 = fmul fast float %2374, %2367
  %2377 = fmul fast float %2374, %2368
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %4, i32 %16, i32 %17, i32 undef, float %2375, float %2376, float %2377, float %2375, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %16, i32 %17, i32 undef, float %2372, float %2372, float %2372, float %2372, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
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
!dx.entryPoints = !{!26}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !14, !20, !23}
!5 = !{!6, !8, !9, !10, !11, !12, !13}
!6 = !{i32 0, %"class.Texture3D<float>"* undef, !"", i32 0, i32 3, i32 1, i32 4, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 16, i32 1, i32 2, i32 0, !7}
!9 = !{i32 2, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 27, i32 1, i32 2, i32 0, !7}
!10 = !{i32 3, %"class.Texture1D<float>"* undef, !"", i32 0, i32 14, i32 1, i32 1, i32 0, !7}
!11 = !{i32 4, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 13, i32 1, i32 2, i32 0, !7}
!12 = !{i32 5, %"class.Texture2D<float>"* undef, !"", i32 0, i32 0, i32 1, i32 2, i32 0, !7}
!13 = !{i32 6, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 17, i32 1, i32 11, i32 0, null}
!14 = !{!15, !16, !17, !18}
!15 = !{i32 0, %"class.RWTexture2D<vector<float, 3> >"* undef, !"", i32 0, i32 0, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!16 = !{i32 1, %"class.RWTexture2D<float>"* undef, !"", i32 0, i32 1, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!17 = !{i32 2, %"class.RWTexture2D<float>"* undef, !"", i32 0, i32 2, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!18 = !{i32 3, %"class.RWTexture2DArray<vector<float, 4> >"* undef, !"", i32 0, i32 3, i32 1, i32 7, i1 false, i1 false, i1 false, !19}
!19 = !{i32 0, i32 14}
!20 = !{!21, !22}
!21 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!22 = !{i32 1, %FogRaymarchingConstBuffer_decl* undef, !"", i32 0, i32 0, i32 1, i32 112, null}
!23 = !{!24, !25}
!24 = !{i32 0, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!25 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 3, i32 1, i32 0, null}
!26 = !{void ()* @cs_fog_raymarching_heightmap_brfog, !"cs_fog_raymarching_heightmap_brfog", null, !4, !27}
!27 = !{i32 0, i64 272, i32 4, !28}
!28 = !{i32 8, i32 8, i32 1}
!29 = distinct !{!29, !"dx.controlflow.hints", i32 2}
!30 = distinct !{!30, !"dx.controlflow.hints", i32 2}
!31 = distinct !{!31, !"dx.controlflow.hints", i32 2}
!32 = distinct !{!32, !"dx.controlflow.hints", i32 2}
!33 = distinct !{!33, !"dx.controlflow.hints", i32 2}
!34 = distinct !{!34, !"dx.controlflow.hints", i32 2}
!35 = distinct !{!35, !"dx.controlflow.hints", i32 2}
!36 = distinct !{!36, !"dx.controlflow.hints", i32 2}
!37 = distinct !{!37, !"dx.controlflow.hints", i32 2}
!38 = distinct !{!38, !"dx.controlflow.hints", i32 2}
!39 = distinct !{!39, !"dx.controlflow.hints", i32 2}
!40 = distinct !{!40, !"dx.controlflow.hints", i32 1}
!41 = distinct !{!41, !"dx.controlflow.hints", i32 2}
!42 = distinct !{!42, !"dx.controlflow.hints", i32 2}
!43 = distinct !{!43, !"dx.controlflow.hints", i32 2}
!44 = distinct !{!44, !"dx.controlflow.hints", i32 2}
!45 = distinct !{!45, !"dx.controlflow.hints", i32 2}
!46 = distinct !{!46, !"dx.controlflow.hints", i32 1}
!47 = distinct !{!47, !"dx.controlflow.hints", i32 2}
!48 = distinct !{!48, !"dx.controlflow.hints", i32 2}
!49 = distinct !{!49, !"dx.controlflow.hints", i32 2}
!50 = distinct !{!50, !"dx.controlflow.hints", i32 2}
!51 = distinct !{!51, !"dx.controlflow.hints", i32 1}
!52 = distinct !{!52, !"dx.controlflow.hints", i32 1}
!53 = distinct !{!53, !"dx.controlflow.hints", i32 2}
!54 = distinct !{!54, !"dx.controlflow.hints", i32 2}
!55 = distinct !{!55, !"dx.controlflow.hints", i32 2}
!56 = distinct !{!56, !"dx.controlflow.hints", i32 2}
!57 = distinct !{!57, !"dx.controlflow.hints", i32 2}
!58 = distinct !{!58, !"dx.controlflow.hints", i32 2}
!59 = distinct !{!59, !"dx.controlflow.hints", i32 1}
!60 = distinct !{!60, !"dx.controlflow.hints", i32 2}
!61 = distinct !{!61, !"dx.controlflow.hints", i32 2}
!62 = distinct !{!62, !"dx.controlflow.hints", i32 2}
!63 = distinct !{!63, !"dx.controlflow.hints", i32 2}
!64 = distinct !{!64, !"dx.controlflow.hints", i32 2}
!65 = distinct !{!65, !"dx.controlflow.hints", i32 2}
!66 = distinct !{!66, !"dx.controlflow.hints", i32 2}
!67 = distinct !{!67, !"dx.controlflow.hints", i32 2}
!68 = !{!69, !69, i64 0}
!69 = !{!"float", !70, i64 0}
!70 = !{!"omnipotent char", !71, i64 0}
!71 = !{!"Simple C/C++ TBAA"}
!72 = !{!73, !75, !77, !78, !80, !81, !82}
!73 = distinct !{!73, !74, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z: %cFogParams"}
!74 = distinct !{!74, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z"}
!75 = distinct !{!75, !76, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %scattering"}
!76 = distinct !{!76, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z"}
!77 = distinct !{!77, !76, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %extinction"}
!78 = distinct !{!78, !79, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z: %scattering"}
!79 = distinct !{!79, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z"}
!80 = distinct !{!80, !79, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z: %transmission"}
!81 = distinct !{!81, !79, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z: %depthDensityWeighted"}
!82 = distinct !{!82, !79, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z: %rawShadowmapData"}
!83 = distinct !{!83, !"dx.controlflow.hints", i32 2}
!84 = !{!85}
!85 = distinct !{!85, !86, !"\01?sort@@YAXAIAM00@Z: %c"}
!86 = distinct !{!86, !"\01?sort@@YAXAIAM00@Z"}
!87 = !{!88, !89, !73, !75, !77, !78, !80, !81, !82}
!88 = distinct !{!88, !86, !"\01?sort@@YAXAIAM00@Z: %a"}
!89 = distinct !{!89, !86, !"\01?sort@@YAXAIAM00@Z: %b"}
!90 = !{!89}
!91 = !{!88, !85, !73, !75, !77, !78, !80, !81, !82}
!92 = !{!88}
!93 = !{!89, !85, !73, !75, !77, !78, !80, !81, !82}
!94 = !{!95}
!95 = distinct !{!95, !96, !"\01?sort@@YAXAIAM00@Z: %c"}
!96 = distinct !{!96, !"\01?sort@@YAXAIAM00@Z"}
!97 = !{!98, !99, !73, !75, !77, !78, !80, !81, !82}
!98 = distinct !{!98, !96, !"\01?sort@@YAXAIAM00@Z: %a"}
!99 = distinct !{!99, !96, !"\01?sort@@YAXAIAM00@Z: %b"}
!100 = !{!99}
!101 = !{!98, !95, !73, !75, !77, !78, !80, !81, !82}
!102 = !{!98}
!103 = !{!99, !95, !73, !75, !77, !78, !80, !81, !82}
!104 = distinct !{!104, !"dx.controlflow.hints", i32 2}
!105 = distinct !{!105, !"dx.controlflow.hints", i32 2}
!106 = distinct !{!106, !"dx.controlflow.hints", i32 1}
!107 = distinct !{!107, !"dx.controlflow.hints", i32 2}
!108 = distinct !{!108, !"dx.controlflow.hints", i32 1}
!109 = distinct !{!109, !"dx.controlflow.hints", i32 1}
!110 = distinct !{!110, !"dx.controlflow.hints", i32 1}
!111 = distinct !{!111, !"dx.controlflow.hints", i32 1}
!112 = distinct !{!112, !"dx.controlflow.hints", i32 2}
!113 = distinct !{!113, !"dx.controlflow.hints", i32 1}

