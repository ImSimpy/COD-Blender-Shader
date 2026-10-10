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
; shader hash: 82508e950135f306d13ebb122e7004b5
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

define void @cs_fog_raymarching_air_heightmap_brfog() {
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
  %369 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %370 = extractvalue %dx.types.CBufRet.f32 %369, 3
  %371 = fsub fast float -0.000000e+00, %234
  %372 = fsub fast float -0.000000e+00, %235
  %373 = fsub fast float %370, %236
  %374 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %371, float %372, float %373)  ; Dot3(ax,ay,az,bx,by,bz)
  %375 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %277, float %278, float %279)  ; Dot3(ax,ay,az,bx,by,bz)
  %376 = fdiv fast float 1.000000e+00, %375
  %377 = fmul fast float %376, %374
  %378 = fcmp fast olt float %377, 0.000000e+00
  %379 = fcmp fast ogt float %279, 0.000000e+00
  %380 = and i1 %379, %378
  br i1 %380, label %385, label %381, !dx.controlflow.hints !33

; <label>:381                                     ; preds = %365
  %382 = fcmp fast olt float %279, 0.000000e+00
  br i1 %382, label %383, label %385, !dx.controlflow.hints !34

; <label>:383                                     ; preds = %381
  %384 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %377)  ; FMax(a,b)
  br label %385

; <label>:385                                     ; preds = %383, %381, %365
  %386 = phi float [ 0.000000e+00, %365 ], [ %384, %383 ], [ 0.000000e+00, %381 ]
  %387 = phi float [ 0.000000e+00, %365 ], [ 0x47EFFFFFE0000000, %383 ], [ %377, %381 ]
  %388 = fcmp fast oeq float %387, 0.000000e+00
  br i1 %388, label %392, label %389, !dx.controlflow.hints !35

; <label>:389                                     ; preds = %385
  %390 = call float @dx.op.binary.f32(i32 36, float %368, float %386)  ; FMin(a,b)
  %391 = call float @dx.op.binary.f32(i32 35, float %367, float %387)  ; FMax(a,b)
  br label %392

; <label>:392                                     ; preds = %389, %385
  %393 = phi i32 [ 1, %389 ], [ 0, %385 ]
  %394 = phi float [ %391, %389 ], [ %367, %385 ]
  %395 = phi float [ %390, %389 ], [ %368, %385 ]
  %396 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %397 = extractvalue %dx.types.CBufRet.f32 %396, 2
  %398 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %399 = extractvalue %dx.types.CBufRet.f32 %398, 3
  %400 = fsub fast float %397, %236
  %401 = fadd fast float %400, %399
  %402 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %371, float %372, float %401)  ; Dot3(ax,ay,az,bx,by,bz)
  %403 = fmul fast float %376, %402
  %404 = fcmp fast olt float %403, 0.000000e+00
  %405 = and i1 %379, %404
  br i1 %405, label %410, label %406, !dx.controlflow.hints !36

; <label>:406                                     ; preds = %392
  %407 = fcmp fast olt float %279, 0.000000e+00
  br i1 %407, label %408, label %410, !dx.controlflow.hints !37

; <label>:408                                     ; preds = %406
  %409 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %403)  ; FMax(a,b)
  br label %410

; <label>:410                                     ; preds = %408, %406, %392
  %411 = phi float [ 0.000000e+00, %392 ], [ %409, %408 ], [ 0.000000e+00, %406 ]
  %412 = phi float [ 0.000000e+00, %392 ], [ 0x47EFFFFFE0000000, %408 ], [ %403, %406 ]
  %413 = fcmp fast oeq float %412, 0.000000e+00
  br i1 %413, label %417, label %414, !dx.controlflow.hints !38

; <label>:414                                     ; preds = %410
  %415 = call float @dx.op.binary.f32(i32 36, float %395, float %411)  ; FMin(a,b)
  %416 = call float @dx.op.binary.f32(i32 35, float %394, float %412)  ; FMax(a,b)
  br label %417

; <label>:417                                     ; preds = %414, %410
  %418 = phi i32 [ 1, %414 ], [ 0, %410 ]
  %419 = phi float [ %416, %414 ], [ %394, %410 ]
  %420 = phi float [ %415, %414 ], [ %395, %410 ]
  %421 = call float @dx.op.binary.f32(i32 36, float %298, float %419)  ; FMin(a,b)
  %422 = call float @dx.op.binary.f32(i32 35, float %275, float %420)  ; FMax(a,b)
  %423 = extractvalue %dx.types.CBufRet.f32 %369, 0
  %424 = fmul fast float %223, 2.000000e+00
  %425 = fadd fast float %424, -1.000000e+00
  %426 = fmul fast float %423, %425
  %427 = fadd fast float %426, %422
  %428 = fcmp fast olt float %427, %421
  %429 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %430 = extractvalue %dx.types.CBufRet.f32 %429, 2
  %431 = fcmp fast olt float %430, 1.000000e+00
  %432 = and i1 %428, %431
  br i1 %432, label %433, label %1658

; <label>:433                                     ; preds = %417
  %434 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %14, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %435 = extractvalue %dx.types.CBufRet.i32 %434, 1
  %436 = add i32 %435, -1
  %437 = fmul fast float %427, %279
  %438 = fadd fast float %437, %236
  %439 = fmul fast float %427, %278
  %440 = fadd fast float %439, %235
  %441 = fmul fast float %427, %277
  %442 = fadd fast float %441, %234
  br label %443

; <label>:443                                     ; preds = %1632, %433
  %444 = phi i32 [ %1634, %1632 ], [ undef, %433 ]
  %445 = phi float [ %1635, %1632 ], [ undef, %433 ]
  %446 = phi i32 [ %830, %1632 ], [ undef, %433 ]
  %447 = phi float [ %832, %1632 ], [ undef, %433 ]
  %448 = phi float [ %1636, %1632 ], [ 0.000000e+00, %433 ]
  %449 = phi float [ %1637, %1632 ], [ 1.000000e+00, %433 ]
  %450 = phi float [ %1638, %1632 ], [ 0.000000e+00, %433 ]
  %451 = phi float [ %1639, %1632 ], [ 0.000000e+00, %433 ]
  %452 = phi float [ %1640, %1632 ], [ 0.000000e+00, %433 ]
  %453 = phi float [ %1650, %1632 ], [ %442, %433 ]
  %454 = phi float [ %1651, %1632 ], [ %440, %433 ]
  %455 = phi float [ %1652, %1632 ], [ %438, %433 ]
  %456 = phi float [ %1633, %1632 ], [ %427, %433 ]
  %457 = phi i32 [ %640, %1632 ], [ %436, %433 ]
  %458 = phi float [ %1641, %1632 ], [ 0.000000e+00, %433 ]
  %459 = phi float [ %1642, %1632 ], [ 0.000000e+00, %433 ]
  %460 = phi float [ %1643, %1632 ], [ 0.000000e+00, %433 ]
  %461 = phi float [ %1644, %1632 ], [ 0.000000e+00, %433 ]
  %462 = phi float [ %1645, %1632 ], [ 0.000000e+00, %433 ]
  %463 = phi i32 [ %1646, %1632 ], [ 0, %433 ]
  %464 = fsub fast float -0.000000e+00, %454
  %465 = fsub fast float -0.000000e+00, %453
  %466 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %467 = extractvalue %dx.types.CBufRet.f32 %466, 0
  %468 = icmp eq i32 %366, 0
  br i1 %468, label %637, label %469, !dx.controlflow.hints !39

; <label>:469                                     ; preds = %443
  %470 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %14, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %471 = extractvalue %dx.types.CBufRet.i32 %470, 1
  %472 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 427)  ; CBufferLoadLegacy(handle,regIndex)
  %473 = extractvalue %dx.types.CBufRet.f32 %472, 1
  %474 = fcmp fast ogt float %473, %456
  br i1 %474, label %475, label %477, !dx.controlflow.hints !40

; <label>:475                                     ; preds = %469
  %476 = fsub fast float %473, %456
  br label %627

; <label>:477                                     ; preds = %469
  %478 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %15, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %479 = extractvalue %dx.types.CBufRet.i32 %478, 3
  %480 = icmp eq i32 %479, 0
  %481 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 401)  ; CBufferLoadLegacy(handle,regIndex)
  %482 = extractvalue %dx.types.CBufRet.f32 %481, 2
  %483 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %484 = extractvalue %dx.types.CBufRet.f32 %483, 2
  %485 = fsub fast float %482, %455
  %486 = fadd fast float %485, %484
  %487 = fsub fast float 0xC7EFFFFFE0000000, %455
  br i1 %480, label %495, label %488, !dx.controlflow.hints !30

; <label>:488                                     ; preds = %477
  %489 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %465, float %464, float %486)  ; Dot3(ax,ay,az,bx,by,bz)
  %490 = fmul fast float %376, %489
  %491 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %465, float %464, float %487)  ; Dot3(ax,ay,az,bx,by,bz)
  %492 = fmul fast float %376, %491
  %493 = call float @dx.op.binary.f32(i32 36, float %490, float %492)  ; FMin(a,b)
  %494 = call float @dx.op.binary.f32(i32 35, float %490, float %492)  ; FMax(a,b)
  br label %528

; <label>:495                                     ; preds = %477
  %496 = extractvalue %dx.types.CBufRet.f32 %481, 0
  %497 = extractvalue %dx.types.CBufRet.f32 %481, 1
  %498 = extractvalue %dx.types.CBufRet.f32 %483, 0
  %499 = extractvalue %dx.types.CBufRet.f32 %483, 1
  %500 = fdiv fast float 1.000000e+00, %277
  %501 = fdiv fast float 1.000000e+00, %278
  %502 = fdiv fast float 1.000000e+00, %279
  %503 = fsub fast float %496, %453
  %504 = fmul fast float %500, %503
  %505 = fadd fast float %503, %498
  %506 = fmul fast float %505, %500
  %507 = call float @dx.op.binary.f32(i32 36, float %504, float %506)  ; FMin(a,b)
  %508 = call float @dx.op.binary.f32(i32 35, float %504, float %506)  ; FMax(a,b)
  %509 = fsub fast float %497, %454
  %510 = fmul fast float %501, %509
  %511 = fadd fast float %509, %499
  %512 = fmul fast float %511, %501
  %513 = call float @dx.op.binary.f32(i32 36, float %510, float %512)  ; FMin(a,b)
  %514 = call float @dx.op.binary.f32(i32 35, float %507, float %513)  ; FMax(a,b)
  %515 = call float @dx.op.binary.f32(i32 35, float %510, float %512)  ; FMax(a,b)
  %516 = call float @dx.op.binary.f32(i32 36, float %508, float %515)  ; FMin(a,b)
  %517 = fmul fast float %502, %487
  %518 = fmul fast float %502, %486
  %519 = call float @dx.op.binary.f32(i32 36, float %517, float %518)  ; FMin(a,b)
  %520 = call float @dx.op.binary.f32(i32 35, float %514, float %519)  ; FMax(a,b)
  %521 = call float @dx.op.binary.f32(i32 35, float %517, float %518)  ; FMax(a,b)
  %522 = call float @dx.op.binary.f32(i32 36, float %516, float %521)  ; FMin(a,b)
  %523 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %520)  ; FMax(a,b)
  %524 = fcmp fast ult float %522, %523
  br i1 %524, label %528, label %525, !dx.controlflow.hints !31

; <label>:525                                     ; preds = %495
  %526 = call float @dx.op.binary.f32(i32 36, float %520, float %522)  ; FMin(a,b)
  %527 = call float @dx.op.binary.f32(i32 35, float %520, float %522)  ; FMax(a,b)
  br label %528

; <label>:528                                     ; preds = %525, %495, %488
  %529 = phi float [ %493, %488 ], [ %526, %525 ], [ 0.000000e+00, %495 ]
  %530 = phi float [ %494, %488 ], [ %527, %525 ], [ 0.000000e+00, %495 ]
  %531 = fcmp fast ogt float %529, 0.000000e+00
  br i1 %531, label %627, label %532, !dx.controlflow.hints !41

; <label>:532                                     ; preds = %528
  %533 = fcmp fast ugt float %530, 0.000000e+00
  br i1 %533, label %534, label %627, !dx.controlflow.hints !42

; <label>:534                                     ; preds = %532
  %535 = icmp sgt i32 %457, 0
  br i1 %535, label %536, label %621

; <label>:536                                     ; preds = %534
  br label %537

; <label>:537                                     ; preds = %617, %536
  %538 = phi i32 [ %618, %617 ], [ %457, %536 ]
  %539 = sitofp i32 %538 to float
  %540 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 401)  ; CBufferLoadLegacy(handle,regIndex)
  %541 = extractvalue %dx.types.CBufRet.f32 %540, 0
  %542 = extractvalue %dx.types.CBufRet.f32 %540, 1
  %543 = fsub fast float %453, %541
  %544 = fsub fast float %454, %542
  %545 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 403)  ; CBufferLoadLegacy(handle,regIndex)
  %546 = extractvalue %dx.types.CBufRet.f32 %545, 0
  %547 = extractvalue %dx.types.CBufRet.f32 %545, 1
  %548 = fmul fast float %543, %546
  %549 = fmul fast float %544, %547
  %550 = fsub fast float 1.000000e+00, %549
  %551 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %15, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %552 = extractvalue %dx.types.CBufRet.i32 %551, 3
  %553 = icmp eq i32 %552, 0
  br i1 %553, label %560, label %554, !dx.controlflow.hints !43

; <label>:554                                     ; preds = %537
  %555 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %12, float %548, float %550, float undef, float undef, i32 0, i32 0, i32 undef, float %539)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %556 = extractvalue %dx.types.ResRet.f32 %555, 0
  %557 = extractvalue %dx.types.ResRet.f32 %555, 1
  %558 = extractvalue %dx.types.ResRet.f32 %555, 2
  %559 = extractvalue %dx.types.ResRet.f32 %555, 3
  br label %566

; <label>:560                                     ; preds = %537
  %561 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %13, float %548, float %550, float undef, float undef, i32 0, i32 0, i32 undef, float %539)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %562 = extractvalue %dx.types.ResRet.f32 %561, 0
  %563 = extractvalue %dx.types.ResRet.f32 %561, 1
  %564 = extractvalue %dx.types.ResRet.f32 %561, 2
  %565 = extractvalue %dx.types.ResRet.f32 %561, 3
  br label %566

; <label>:566                                     ; preds = %560, %554
  %567 = phi float [ %556, %554 ], [ %562, %560 ]
  %568 = phi float [ %557, %554 ], [ %563, %560 ]
  %569 = phi float [ %558, %554 ], [ %564, %560 ]
  %570 = phi float [ %559, %554 ], [ %565, %560 ]
  %571 = extractvalue %dx.types.CBufRet.f32 %545, 3
  %572 = fmul fast float %571, %567
  %573 = extractvalue %dx.types.CBufRet.f32 %540, 2
  %574 = fadd fast float %572, %573
  %575 = fmul fast float %571, %568
  %576 = fadd fast float %575, %573
  %577 = fmul fast float %571, %569
  %578 = fadd fast float %577, %573
  %579 = and i32 %538, 31
  %580 = shl i32 1, %579
  %581 = uitofp i32 %580 to float
  %582 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 402)  ; CBufferLoadLegacy(handle,regIndex)
  %583 = extractvalue %dx.types.CBufRet.f32 %582, 3
  %584 = fdiv fast float 1.000000e+00, %583
  %585 = fmul fast float %584, %581
  %586 = fmul fast float %585, %279
  %587 = fadd fast float %586, %455
  %588 = fcmp fast oeq float %570, 0.000000e+00
  %589 = fcmp fast ogt float %455, %576
  %590 = fcmp fast ogt float %587, %576
  %591 = and i1 %589, %590
  %592 = or i1 %588, %591
  br i1 %592, label %593, label %597, !dx.controlflow.hints !44

; <label>:593                                     ; preds = %566
  %594 = add nsw i32 %538, 1
  %595 = add nsw i32 %471, -1
  %596 = call i32 @dx.op.binary.i32(i32 38, i32 %594, i32 %595)  ; IMin(a,b)
  br label %627

; <label>:597                                     ; preds = %566
  %598 = fcmp fast olt float %455, %578
  %599 = fcmp fast olt float %587, %578
  %600 = and i1 %598, %599
  br i1 %600, label %601, label %605, !dx.controlflow.hints !45

; <label>:601                                     ; preds = %597
  %602 = add nsw i32 %538, 1
  %603 = add nsw i32 %471, -1
  %604 = call i32 @dx.op.binary.i32(i32 38, i32 %602, i32 %603)  ; IMin(a,b)
  br label %627

; <label>:605                                     ; preds = %597
  %606 = fcmp fast olt float %455, %574
  %607 = fcmp fast olt float %587, %574
  %608 = and i1 %606, %607
  br i1 %608, label %609, label %617, !dx.controlflow.hints !46

; <label>:609                                     ; preds = %605
  %610 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 406)  ; CBufferLoadLegacy(handle,regIndex)
  %611 = extractvalue %dx.types.CBufRet.f32 %610, 3
  %612 = extractvalue %dx.types.CBufRet.f32 %545, 2
  %613 = fcmp fast une float %611, %612
  br i1 %613, label %614, label %621, !dx.controlflow.hints !47

; <label>:614                                     ; preds = %609
  %615 = fsub fast float %455, %578
  %616 = call float @dx.op.binary.f32(i32 36, float %585, float %615)  ; FMin(a,b)
  br label %621

; <label>:617                                     ; preds = %605
  %618 = add nsw i32 %538, -1
  %619 = icmp sgt i32 %538, 1
  br i1 %619, label %537, label %620

; <label>:620                                     ; preds = %617
  br label %621

; <label>:621                                     ; preds = %620, %614, %609, %534
  %622 = phi float [ %616, %614 ], [ %585, %609 ], [ 0.000000e+00, %534 ], [ 0.000000e+00, %620 ]
  %623 = phi i32 [ %538, %614 ], [ %538, %609 ], [ %457, %534 ], [ %618, %620 ]
  %624 = add nsw i32 %623, 1
  %625 = add nsw i32 %471, -1
  %626 = call i32 @dx.op.binary.i32(i32 38, i32 %624, i32 %625)  ; IMin(a,b)
  br label %627

; <label>:627                                     ; preds = %621, %601, %593, %532, %528, %475
  %628 = phi float [ %476, %475 ], [ %585, %593 ], [ %585, %601 ], [ %622, %621 ], [ 0x47EFFFFFE0000000, %532 ], [ %529, %528 ]
  %629 = phi i32 [ %366, %475 ], [ %366, %593 ], [ %366, %601 ], [ %366, %621 ], [ 0, %532 ], [ %366, %528 ]
  %630 = phi i32 [ %457, %475 ], [ %596, %593 ], [ %604, %601 ], [ %626, %621 ], [ %457, %532 ], [ %457, %528 ]
  %631 = icmp ne i32 %629, 0
  %632 = zext i1 %631 to i32
  %633 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %634 = extractvalue %dx.types.CBufRet.f32 %633, 2
  %635 = call float @dx.op.binary.f32(i32 35, float %628, float %634)  ; FMax(a,b)
  %636 = call float @dx.op.binary.f32(i32 36, float 0x47EFFFFFE0000000, float %635)  ; FMin(a,b)
  br label %637

; <label>:637                                     ; preds = %627, %443
  %638 = phi i32 [ %632, %627 ], [ 0, %443 ]
  %639 = phi float [ %636, %627 ], [ 0x47EFFFFFE0000000, %443 ]
  %640 = phi i32 [ %630, %627 ], [ %457, %443 ]
  %641 = icmp eq i32 %393, 0
  br i1 %641, label %654, label %642, !dx.controlflow.hints !48

; <label>:642                                     ; preds = %637
  %643 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %644 = extractvalue %dx.types.CBufRet.f32 %643, 3
  %645 = extractvalue %dx.types.CBufRet.f32 %643, 2
  %646 = fmul fast float %644, %456
  %647 = fdiv fast float %646, %421
  %648 = fadd fast float %647, 1.000000e+00
  %649 = call float @dx.op.unary.f32(i32 23, float %648)  ; Log(value)
  %650 = call float @dx.op.binary.f32(i32 36, float 1.000000e+00, float %649)  ; FMin(a,b)
  %651 = fmul fast float %645, %421
  %652 = fmul fast float %651, %650
  %653 = call float @dx.op.binary.f32(i32 36, float 0x47EFFFFFE0000000, float %652)  ; FMin(a,b)
  br label %654

; <label>:654                                     ; preds = %642, %637
  %655 = phi float [ %653, %642 ], [ 0x47EFFFFFE0000000, %637 ]
  %656 = icmp eq i32 %418, 0
  br i1 %656, label %829, label %657, !dx.controlflow.hints !49

; <label>:657                                     ; preds = %654
  %658 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %15, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %659 = extractvalue %dx.types.CBufRet.i32 %658, 1
  %660 = and i32 %659, 1
  %661 = icmp eq i32 %660, 0
  br i1 %661, label %662, label %819, !dx.controlflow.hints !50

; <label>:662                                     ; preds = %657
  %663 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 204)  ; CBufferLoadLegacy(handle,regIndex)
  %664 = extractvalue %dx.types.CBufRet.f32 %663, 2
  %665 = extractvalue %dx.types.CBufRet.f32 %663, 3
  %666 = fmul fast float %664, %453
  %667 = fmul fast float %665, %454
  %668 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 205)  ; CBufferLoadLegacy(handle,regIndex)
  %669 = extractvalue %dx.types.CBufRet.f32 %668, 0
  %670 = extractvalue %dx.types.CBufRet.f32 %668, 1
  %671 = fadd fast float %666, %669
  %672 = fadd fast float %667, %670
  %673 = call float @dx.op.unary.f32(i32 7, float %671)  ; Saturate(value)
  %674 = call float @dx.op.unary.f32(i32 7, float %672)  ; Saturate(value)
  %675 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %13, float %673, float %674, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %676 = extractvalue %dx.types.ResRet.f32 %675, 0
  %677 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %678 = extractvalue %dx.types.CBufRet.f32 %677, 0
  %679 = fmul fast float %678, %676
  %680 = fsub fast float %671, %673
  %681 = fsub fast float %672, %674
  %682 = extractvalue %dx.types.CBufRet.f32 %663, 0
  %683 = extractvalue %dx.types.CBufRet.f32 %663, 1
  %684 = fmul fast float %682, %680
  %685 = fmul fast float %683, %681
  %686 = fmul fast float %684, %684
  %687 = fmul fast float %685, %685
  %688 = fadd fast float %686, %687
  %689 = call float @dx.op.unary.f32(i32 24, float %688)  ; Sqrt(value)
  %690 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %691 = extractvalue %dx.types.CBufRet.f32 %690, 3
  %692 = fmul fast float %691, %689
  %693 = call float @dx.op.unary.f32(i32 7, float %692)  ; Saturate(value)
  %694 = extractvalue %dx.types.CBufRet.f32 %690, 2
  %695 = fsub fast float %694, %679
  %696 = fmul fast float %695, %693
  %697 = extractvalue %dx.types.CBufRet.f32 %677, 1
  %698 = fsub fast float %455, %679
  %699 = fsub fast float %698, %697
  %700 = fsub fast float %699, %696
  %701 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %702 = extractvalue %dx.types.CBufRet.f32 %701, 2
  %703 = fsub fast float %700, %702
  %704 = fcmp fast olt float %703, 0.000000e+00
  %705 = call float @dx.op.unary.f32(i32 6, float %703)  ; FAbs(value)
  %706 = extractvalue %dx.types.CBufRet.i32 %658, 0
  %707 = icmp eq i32 %706, 0
  br i1 %707, label %761, label %708

; <label>:708                                     ; preds = %662
  br label %709

; <label>:709                                     ; preds = %748, %708
  %710 = phi i32 [ %754, %748 ], [ 1, %708 ]
  %711 = phi float [ %756, %748 ], [ 0x47EFFFFFE0000000, %708 ]
  %712 = phi i32 [ %757, %748 ], [ 0, %708 ]
  %713 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %714 = extractvalue %dx.types.CBufRet.f32 %713, 1
  %715 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %15, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %716 = extractvalue %dx.types.CBufRet.i32 %715, 1
  %717 = and i32 %716, 8
  %718 = icmp eq i32 %717, 0
  %719 = fcmp fast ogt float %714, %700
  %720 = or i1 %719, %718
  %721 = add i32 %712, 171
  %722 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 %721)  ; CBufferLoadLegacy(handle,regIndex)
  %723 = extractvalue %dx.types.CBufRet.f32 %722, 0
  %724 = extractvalue %dx.types.CBufRet.f32 %722, 1
  %725 = extractvalue %dx.types.CBufRet.f32 %722, 2
  br i1 %720, label %726, label %732, !dx.controlflow.hints !51

; <label>:726                                     ; preds = %709
  %727 = fsub fast float %723, %453
  %728 = fsub fast float %724, %454
  %729 = fmul fast float %727, %727
  %730 = fmul fast float %728, %728
  %731 = fadd fast float %729, %730
  br label %748

; <label>:732                                     ; preds = %709
  %733 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %734 = extractvalue %dx.types.CBufRet.f32 %733, 2
  %735 = extractvalue %dx.types.CBufRet.f32 %713, 2
  %736 = fmul fast float %735, %734
  %737 = fsub fast float %736, %714
  %738 = fdiv fast float %725, %737
  %739 = fsub fast float %453, %723
  %740 = fsub fast float %454, %724
  %741 = fsub fast float %700, %714
  %742 = fmul fast float %738, %741
  %743 = fmul fast float %739, %739
  %744 = fmul fast float %740, %740
  %745 = fadd fast float %743, %744
  %746 = fmul fast float %742, %742
  %747 = fadd fast float %745, %746
  br label %748

; <label>:748                                     ; preds = %732, %726
  %749 = phi float [ %731, %726 ], [ %747, %732 ]
  %750 = call float @dx.op.unary.f32(i32 24, float %749)  ; Sqrt(value)
  %751 = fsub float %725, %750
  %752 = fcmp fast olt float %751, 0.000000e+00
  %753 = zext i1 %752 to i32
  %754 = and i32 %753, %710
  %755 = call float @dx.op.unary.f32(i32 6, float %751)  ; FAbs(value)
  %756 = call float @dx.op.binary.f32(i32 36, float %711, float %755)  ; FMin(a,b)
  %757 = add i32 %712, 1
  %758 = extractvalue %dx.types.CBufRet.i32 %715, 0
  %759 = icmp ult i32 %757, %758
  br i1 %759, label %709, label %760

; <label>:760                                     ; preds = %748
  br label %761

; <label>:761                                     ; preds = %760, %662
  %762 = phi i32 [ 1, %662 ], [ %754, %760 ]
  %763 = phi float [ 0x47EFFFFFE0000000, %662 ], [ %756, %760 ]
  br label %764

; <label>:764                                     ; preds = %764, %761
  %765 = phi i32 [ %762, %761 ], [ %804, %764 ]
  %766 = phi float [ 0x47EFFFFFE0000000, %761 ], [ %806, %764 ]
  %767 = phi i32 [ 0, %761 ], [ %807, %764 ]
  %768 = add nuw nsw i32 %767, 191
  %769 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 %768)  ; CBufferLoadLegacy(handle,regIndex)
  %770 = extractvalue %dx.types.CBufRet.f32 %769, 0
  %771 = extractvalue %dx.types.CBufRet.f32 %769, 1
  %772 = extractvalue %dx.types.CBufRet.f32 %769, 2
  %773 = add nuw nsw i32 %767, 195
  %774 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 %773)  ; CBufferLoadLegacy(handle,regIndex)
  %775 = extractvalue %dx.types.CBufRet.f32 %774, 0
  %776 = extractvalue %dx.types.CBufRet.f32 %774, 1
  %777 = extractvalue %dx.types.CBufRet.f32 %774, 2
  %778 = fsub fast float %453, %770
  %779 = fsub fast float %454, %771
  %780 = fsub fast float %700, %772
  %781 = call float @dx.op.unary.f32(i32 6, float %778)  ; FAbs(value)
  %782 = call float @dx.op.unary.f32(i32 6, float %779)  ; FAbs(value)
  %783 = call float @dx.op.unary.f32(i32 6, float %780)  ; FAbs(value)
  %784 = fsub fast float %781, %775
  %785 = fsub fast float %782, %776
  %786 = fsub fast float %783, %777
  %787 = call float @dx.op.binary.f32(i32 35, float %784, float 0.000000e+00)  ; FMax(a,b)
  %788 = call float @dx.op.binary.f32(i32 35, float %785, float 0.000000e+00)  ; FMax(a,b)
  %789 = call float @dx.op.binary.f32(i32 35, float %786, float 0.000000e+00)  ; FMax(a,b)
  %790 = fmul fast float %787, %787
  %791 = fmul fast float %788, %788
  %792 = fadd fast float %791, %790
  %793 = fmul fast float %789, %789
  %794 = fadd fast float %792, %793
  %795 = call float @dx.op.unary.f32(i32 24, float %794)  ; Sqrt(value)
  %796 = call float @dx.op.binary.f32(i32 35, float %785, float %786)  ; FMax(a,b)
  %797 = call float @dx.op.binary.f32(i32 35, float %784, float %796)  ; FMax(a,b)
  %798 = call float @dx.op.binary.f32(i32 36, float %797, float 0.000000e+00)  ; FMin(a,b)
  %799 = fadd fast float %798, %795
  %800 = fsub fast float -0.000000e+00, %799
  %801 = fcmp ogt float %799, -0.000000e+00
  %802 = icmp ne i32 %765, 0
  %803 = and i1 %802, %801
  %804 = zext i1 %803 to i32
  %805 = call float @dx.op.unary.f32(i32 6, float %800)  ; FAbs(value)
  %806 = call float @dx.op.binary.f32(i32 36, float %766, float %805)  ; FMin(a,b)
  %807 = add nuw nsw i32 %767, 1
  %808 = icmp eq i32 %807, 4
  br i1 %808, label %809, label %764

; <label>:809                                     ; preds = %764
  %810 = call float @dx.op.binary.f32(i32 36, float %705, float %806)  ; FMin(a,b)
  %811 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %15, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %812 = extractvalue %dx.types.CBufRet.i32 %811, 1
  %813 = and i32 %812, 2
  %814 = icmp ne i32 %813, 0
  %815 = xor i1 %803, %814
  %816 = call float @dx.op.binary.f32(i32 36, float %810, float %763)  ; FMin(a,b)
  %817 = and i1 %815, %704
  %818 = zext i1 %817 to i32
  br label %819

; <label>:819                                     ; preds = %809, %657
  %820 = phi i32 [ %446, %657 ], [ %818, %809 ]
  %821 = phi float [ 0.000000e+00, %657 ], [ %816, %809 ]
  %822 = phi float [ %455, %657 ], [ %700, %809 ]
  %823 = icmp ne i32 %820, 0
  %824 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %825 = extractvalue %dx.types.CBufRet.f32 %824, 3
  %826 = call float @dx.op.binary.f32(i32 35, float %821, float %825)  ; FMax(a,b)
  %827 = call float @dx.op.binary.f32(i32 36, float %655, float %826)  ; FMin(a,b)
  %828 = zext i1 %823 to i32
  br label %829

; <label>:829                                     ; preds = %819, %654
  %830 = phi i32 [ %820, %819 ], [ %446, %654 ]
  %831 = phi i32 [ %828, %819 ], [ 0, %654 ]
  %832 = phi float [ %822, %819 ], [ %447, %654 ]
  %833 = phi float [ %827, %819 ], [ %655, %654 ]
  %834 = extractvalue %dx.types.CBufRet.f32 %466, 2
  %835 = fmul fast float %834, %456
  %836 = call float @dx.op.unary.f32(i32 23, float %835)  ; Log(value)
  %837 = fmul fast float %836, 0x3FE62E4300000000
  %838 = call float @dx.op.binary.f32(i32 35, float %837, float 1.000000e+00)  ; FMax(a,b)
  %839 = fmul fast float %838, %833
  %840 = call float @dx.op.binary.f32(i32 36, float %839, float %639)  ; FMin(a,b)
  %841 = call float @dx.op.binary.f32(i32 35, float %840, float %467)  ; FMax(a,b)
  %842 = fsub fast float %421, %456
  %843 = fadd fast float %842, 0x3F1A36E2E0000000
  %844 = call float @dx.op.binary.f32(i32 36, float %843, float %841)  ; FMin(a,b)
  %845 = icmp eq i32 %638, 0
  br i1 %845, label %951, label %846, !dx.controlflow.hints !52

; <label>:846                                     ; preds = %829
  %847 = fcmp fast olt float %843, %841
  %848 = fmul fast float %279, %222
  %849 = fmul fast float %848, %844
  %850 = fadd fast float %849, %455
  %851 = fmul fast float %279, %223
  %852 = fmul fast float %851, %844
  %853 = fadd fast float %852, %455
  %854 = fmul fast float %279, %224
  %855 = fmul fast float %854, %844
  %856 = fadd fast float %855, %455
  br i1 %847, label %857, label %862, !dx.controlflow.hints !53

; <label>:857                                     ; preds = %846
  %858 = fmul fast float %844, %277
  %859 = fmul fast float %844, %278
  %860 = fadd fast float %858, %453
  %861 = fadd fast float %859, %454
  br label %862

; <label>:862                                     ; preds = %857, %846
  %863 = phi float [ %860, %857 ], [ %453, %846 ]
  %864 = phi float [ %861, %857 ], [ %454, %846 ]
  %865 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 401)  ; CBufferLoadLegacy(handle,regIndex)
  %866 = extractvalue %dx.types.CBufRet.f32 %865, 0
  %867 = extractvalue %dx.types.CBufRet.f32 %865, 1
  %868 = fsub fast float %863, %866
  %869 = fsub fast float %864, %867
  %870 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 403)  ; CBufferLoadLegacy(handle,regIndex)
  %871 = extractvalue %dx.types.CBufRet.f32 %870, 0
  %872 = extractvalue %dx.types.CBufRet.f32 %870, 1
  %873 = fmul fast float %868, %871
  %874 = fmul fast float %869, %872
  %875 = fsub fast float 1.000000e+00, %874
  %876 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %15, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %877 = extractvalue %dx.types.CBufRet.i32 %876, 3
  %878 = icmp eq i32 %877, 0
  br i1 %878, label %885, label %879, !dx.controlflow.hints !43

; <label>:879                                     ; preds = %862
  %880 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %12, float %873, float %875, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %881 = extractvalue %dx.types.ResRet.f32 %880, 0
  %882 = extractvalue %dx.types.ResRet.f32 %880, 1
  %883 = extractvalue %dx.types.ResRet.f32 %880, 2
  %884 = extractvalue %dx.types.ResRet.f32 %880, 3
  br label %891

; <label>:885                                     ; preds = %862
  %886 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %13, float %873, float %875, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %887 = extractvalue %dx.types.ResRet.f32 %886, 0
  %888 = extractvalue %dx.types.ResRet.f32 %886, 1
  %889 = extractvalue %dx.types.ResRet.f32 %886, 2
  %890 = extractvalue %dx.types.ResRet.f32 %886, 3
  br label %891

; <label>:891                                     ; preds = %885, %879
  %892 = phi float [ %881, %879 ], [ %887, %885 ]
  %893 = phi float [ %882, %879 ], [ %888, %885 ]
  %894 = phi float [ %883, %879 ], [ %889, %885 ]
  %895 = phi float [ %884, %879 ], [ %890, %885 ]
  %896 = extractvalue %dx.types.CBufRet.f32 %870, 3
  %897 = fmul fast float %896, %893
  %898 = fmul fast float %897, %892
  %899 = fsub fast float %897, %898
  %900 = fcmp fast ole float %899, 0.000000e+00
  %901 = extractvalue %dx.types.CBufRet.f32 %865, 2
  %902 = fadd fast float %898, %901
  %903 = fmul fast float %896, %894
  %904 = fadd fast float %903, %901
  %905 = fdiv fast float 1.000000e+00, %899
  %906 = select i1 %900, float 1.000000e+06, float %905
  %907 = fsub fast float %850, %902
  %908 = fmul fast float %906, %907
  %909 = call float @dx.op.unary.f32(i32 7, float %908)  ; Saturate(value)
  %910 = extractvalue %dx.types.CBufRet.f32 %870, 2
  %911 = fmul fast float %910, %909
  %912 = fsub fast float %910, %911
  %913 = fcmp fast olt float %850, %904
  %914 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 406)  ; CBufferLoadLegacy(handle,regIndex)
  %915 = extractvalue %dx.types.CBufRet.f32 %914, 3
  %916 = select i1 %913, float %915, float 1.000000e+00
  %917 = fmul fast float %912, %916
  %918 = fsub fast float %853, %902
  %919 = fmul fast float %906, %918
  %920 = call float @dx.op.unary.f32(i32 7, float %919)  ; Saturate(value)
  %921 = fmul fast float %910, %920
  %922 = fsub fast float %910, %921
  %923 = fcmp fast olt float %853, %904
  %924 = select i1 %923, float %915, float 1.000000e+00
  %925 = fmul fast float %922, %924
  %926 = fadd fast float %925, %917
  %927 = fsub fast float %856, %902
  %928 = fmul fast float %906, %927
  %929 = call float @dx.op.unary.f32(i32 7, float %928)  ; Saturate(value)
  %930 = fmul fast float %910, %929
  %931 = fsub fast float %910, %930
  %932 = fcmp fast olt float %856, %904
  %933 = select i1 %932, float %915, float 1.000000e+00
  %934 = fmul fast float %931, %933
  %935 = fadd fast float %926, %934
  %936 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 418)  ; CBufferLoadLegacy(handle,regIndex)
  %937 = extractvalue %dx.types.CBufRet.f32 %936, 2
  %938 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 402)  ; CBufferLoadLegacy(handle,regIndex)
  %939 = extractvalue %dx.types.CBufRet.f32 %938, 0
  %940 = extractvalue %dx.types.CBufRet.f32 %938, 1
  %941 = extractvalue %dx.types.CBufRet.f32 %938, 2
  %942 = fmul fast float %844, 0x3FD5555560000000
  %943 = fmul fast float %942, %895
  %944 = fmul fast float %943, %937
  %945 = fmul fast float %944, %935
  %946 = extractvalue %dx.types.CBufRet.f32 %914, 0
  %947 = fmul fast float %945, %939
  %948 = fmul fast float %945, %940
  %949 = fmul fast float %945, %941
  %950 = fmul fast float %945, %946
  br label %951

; <label>:951                                     ; preds = %891, %829
  %952 = phi float [ %945, %891 ], [ 0.000000e+00, %829 ]
  %953 = phi float [ %950, %891 ], [ 0.000000e+00, %829 ]
  %954 = phi float [ %947, %891 ], [ 0.000000e+00, %829 ]
  %955 = phi float [ %948, %891 ], [ 0.000000e+00, %829 ]
  %956 = phi float [ %949, %891 ], [ 0.000000e+00, %829 ]
  br i1 %641, label %1016, label %957, !dx.controlflow.hints !54

; <label>:957                                     ; preds = %951
  %958 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 399)  ; CBufferLoadLegacy(handle,regIndex)
  %959 = extractvalue %dx.types.CBufRet.f32 %958, 0
  %960 = fsub fast float %959, %455
  %961 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %465, float %464, float %960)  ; Dot3(ax,ay,az,bx,by,bz)
  %962 = fmul fast float %376, %961
  %963 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %962)  ; FMax(a,b)
  %964 = fcmp fast olt float %279, 0.000000e+00
  %965 = call float @dx.op.binary.f32(i32 36, float %844, float %963)  ; FMin(a,b)
  br i1 %964, label %967, label %966, !dx.controlflow.hints !55

; <label>:966                                     ; preds = %957
  br label %967

; <label>:967                                     ; preds = %966, %957
  %968 = phi float [ 0.000000e+00, %966 ], [ %965, %957 ]
  %969 = phi float [ %965, %966 ], [ %844, %957 ]
  %970 = phi float [ %965, %966 ], [ 0.000000e+00, %957 ]
  %971 = phi float [ %844, %966 ], [ %965, %957 ]
  %972 = fsub fast float %969, %968
  %973 = extractvalue %dx.types.CBufRet.f32 %958, 1
  %974 = call float @dx.op.binary.f32(i32 36, float 0xBF0FFB4800000000, float %973)  ; FMin(a,b)
  %975 = fsub fast float %455, %959
  %976 = fmul fast float %974, 0x3FF7154760000000
  %977 = fmul fast float %976, %975
  %978 = call float @dx.op.unary.f32(i32 21, float %977)  ; Exp(value)
  %979 = fmul fast float %279, 0x3FF7154760000000
  %980 = fmul fast float %979, %971
  %981 = fmul fast float %980, %974
  %982 = call float @dx.op.unary.f32(i32 21, float %981)  ; Exp(value)
  %983 = fmul fast float %979, %970
  %984 = fmul fast float %983, %974
  %985 = call float @dx.op.unary.f32(i32 21, float %984)  ; Exp(value)
  %986 = fsub fast float %982, %985
  %987 = fmul fast float %986, %978
  %988 = fmul fast float %974, %279
  %989 = fdiv fast float %987, %988
  %990 = fadd fast float %972, %989
  %991 = call float @dx.op.unary.f32(i32 6, float %279)  ; FAbs(value)
  %992 = fcmp fast olt float %991, 0x3F0FFB4800000000
  %993 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %975)  ; FMax(a,b)
  %994 = fmul fast float %993, 0x3FF7154760000000
  %995 = fmul fast float %994, %973
  %996 = call float @dx.op.unary.f32(i32 21, float %995)  ; Exp(value)
  %997 = fmul fast float %996, %844
  %998 = select i1 %992, float %997, float %990
  %999 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 396)  ; CBufferLoadLegacy(handle,regIndex)
  %1000 = extractvalue %dx.types.CBufRet.f32 %999, 1
  %1001 = fmul fast float %998, %1000
  %1002 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 395)  ; CBufferLoadLegacy(handle,regIndex)
  %1003 = extractvalue %dx.types.CBufRet.f32 %1002, 0
  %1004 = extractvalue %dx.types.CBufRet.f32 %1002, 1
  %1005 = extractvalue %dx.types.CBufRet.f32 %1002, 2
  %1006 = extractvalue %dx.types.CBufRet.f32 %999, 2
  %1007 = fmul fast float %1003, %1001
  %1008 = fmul fast float %1004, %1001
  %1009 = fmul fast float %1005, %1001
  %1010 = fadd fast float %1007, %954
  %1011 = fadd fast float %1008, %955
  %1012 = fadd fast float %1009, %956
  %1013 = fmul fast float %1006, %1001
  %1014 = fadd fast float %1013, %953
  %1015 = fadd fast float %1001, %952
  br label %1016

; <label>:1016                                    ; preds = %967, %951
  %1017 = phi float [ %1015, %967 ], [ %952, %951 ]
  %1018 = phi float [ %1014, %967 ], [ %953, %951 ]
  %1019 = phi float [ %1010, %967 ], [ %954, %951 ]
  %1020 = phi float [ %1011, %967 ], [ %955, %951 ]
  %1021 = phi float [ %1012, %967 ], [ %956, %951 ]
  %1022 = icmp eq i32 %831, 0
  br i1 %1022, label %1066, label %1023, !dx.controlflow.hints !56

; <label>:1023                                    ; preds = %1016
  %1024 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 190)  ; CBufferLoadLegacy(handle,regIndex)
  %1025 = extractvalue %dx.types.CBufRet.f32 %1024, 1
  %1026 = fsub fast float %844, %1025
  %1027 = extractvalue %dx.types.CBufRet.f32 %1024, 3
  %1028 = fmul fast float %1026, %1027
  %1029 = call float @dx.op.unary.f32(i32 7, float %1028)  ; Saturate(value)
  %1030 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 188)  ; CBufferLoadLegacy(handle,regIndex)
  %1031 = extractvalue %dx.types.CBufRet.f32 %1030, 3
  %1032 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1033 = extractvalue %dx.types.CBufRet.f32 %1032, 2
  %1034 = fsub fast float %1033, %832
  %1035 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 189)  ; CBufferLoadLegacy(handle,regIndex)
  %1036 = extractvalue %dx.types.CBufRet.f32 %1035, 3
  %1037 = fmul fast float %1034, %1036
  %1038 = call float @dx.op.unary.f32(i32 7, float %1037)  ; Saturate(value)
  %1039 = fmul fast float %1038, %1031
  %1040 = extractvalue %dx.types.CBufRet.f32 %1035, 0
  %1041 = fsub fast float %456, %1040
  %1042 = extractvalue %dx.types.CBufRet.f32 %1035, 1
  %1043 = fmul fast float %1041, %1042
  %1044 = call float @dx.op.unary.f32(i32 7, float %1043)  ; Saturate(value)
  %1045 = fsub fast float 1.000000e+00, %1029
  %1046 = fmul fast float %1044, %1045
  %1047 = fadd fast float %1046, %1029
  %1048 = extractvalue %dx.types.CBufRet.f32 %1024, 0
  %1049 = fsub fast float %1039, %1048
  %1050 = fmul fast float %1049, %1047
  %1051 = fadd fast float %1050, %1048
  %1052 = extractvalue %dx.types.CBufRet.f32 %1030, 0
  %1053 = extractvalue %dx.types.CBufRet.f32 %1030, 1
  %1054 = extractvalue %dx.types.CBufRet.f32 %1030, 2
  %1055 = fmul fast float %1051, %844
  %1056 = extractvalue %dx.types.CBufRet.f32 %1035, 2
  %1057 = fmul fast float %1055, %1052
  %1058 = fmul fast float %1055, %1053
  %1059 = fmul fast float %1055, %1054
  %1060 = fadd fast float %1057, %1019
  %1061 = fadd fast float %1058, %1020
  %1062 = fadd fast float %1059, %1021
  %1063 = fmul fast float %1055, %1056
  %1064 = fadd fast float %1063, %1018
  %1065 = fadd fast float %1055, %1017
  br label %1066

; <label>:1066                                    ; preds = %1023, %1016
  %1067 = phi float [ %1065, %1023 ], [ %1017, %1016 ]
  %1068 = phi float [ %1064, %1023 ], [ %1018, %1016 ]
  %1069 = phi float [ %1060, %1023 ], [ %1019, %1016 ]
  %1070 = phi float [ %1061, %1023 ], [ %1020, %1016 ]
  %1071 = phi float [ %1062, %1023 ], [ %1021, %1016 ]
  %1072 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %1073 = extractvalue %dx.types.CBufRet.f32 %1072, 1
  %1074 = fcmp fast ogt float %1067, %1073
  br i1 %1074, label %1075, label %1081, !dx.controlflow.hints !57

; <label>:1075                                    ; preds = %1066
  %1076 = fdiv fast float 1.000000e+00, %1067
  %1077 = fmul fast float %1076, %1069
  %1078 = fmul fast float %1076, %1070
  %1079 = fmul fast float %1076, %1071
  %1080 = fmul fast float %1076, %1068
  br label %1081

; <label>:1081                                    ; preds = %1075, %1066
  %1082 = phi float [ %1080, %1075 ], [ %1068, %1066 ]
  %1083 = phi float [ %1077, %1075 ], [ %1069, %1066 ]
  %1084 = phi float [ %1078, %1075 ], [ %1070, %1066 ]
  %1085 = phi float [ %1079, %1075 ], [ %1071, %1066 ]
  br i1 %1074, label %1088, label %1086, !dx.controlflow.hints !58

; <label>:1086                                    ; preds = %1081
  %1087 = fadd fast float %844, %456
  br label %1632

; <label>:1088                                    ; preds = %1081
  %1089 = fmul fast float %1067, 0xBFF7154760000000
  %1090 = call float @dx.op.unary.f32(i32 21, float %1089)  ; Exp(value)
  %1091 = call float @dx.op.unary.f32(i32 7, float %1090)  ; Saturate(value)
  %1092 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %1093 = extractvalue %dx.types.CBufRet.f32 %1092, 3
  %1094 = fcmp fast une float %1093, 0.000000e+00
  %1095 = extractvalue %dx.types.CBufRet.f32 %1092, 0
  %1096 = extractvalue %dx.types.CBufRet.f32 %1092, 1
  %1097 = extractvalue %dx.types.CBufRet.f32 %1092, 2
  br i1 %1094, label %1098, label %1120, !dx.controlflow.hints !59

; <label>:1098                                    ; preds = %1088
  %1099 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %1100 = extractvalue %dx.types.CBufRet.f32 %1099, 0
  %1101 = extractvalue %dx.types.CBufRet.f32 %1099, 1
  %1102 = extractvalue %dx.types.CBufRet.f32 %1099, 2
  %1103 = call float @dx.op.dot3.f32(i32 55, float %1095, float %1096, float %1097, float %277, float %278, float %279)  ; Dot3(ax,ay,az,bx,by,bz)
  %1104 = fcmp fast ogt float %1082, 0.000000e+00
  %1105 = select i1 %1104, float 1.000000e+00, float -1.000000e+00
  %1106 = fmul fast float %1105, 5.000000e-01
  %1107 = fmul fast float %1106, %1103
  %1108 = fmul fast float %1105, %1082
  %1109 = fadd fast float %1107, 4.921875e-01
  %1110 = fadd fast float %1108, -3.125000e-02
  %1111 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %13, float %1109, float 0x3FB25F3060000000, float %1110, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1112 = extractvalue %dx.types.ResRet.f32 %1111, 0
  %1113 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 398)  ; CBufferLoadLegacy(handle,regIndex)
  %1114 = extractvalue %dx.types.CBufRet.f32 %1113, 0
  %1115 = fmul fast float %1112, 0x400921FB60000000
  %1116 = fmul fast float %1115, %1114
  %1117 = fmul fast float %1116, %1100
  %1118 = fmul fast float %1116, %1101
  %1119 = fmul fast float %1116, %1102
  br label %1120

; <label>:1120                                    ; preds = %1098, %1088
  %1121 = phi float [ %1117, %1098 ], [ 0.000000e+00, %1088 ]
  %1122 = phi float [ %1118, %1098 ], [ 0.000000e+00, %1088 ]
  %1123 = phi float [ %1119, %1098 ], [ 0.000000e+00, %1088 ]
  %1124 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 427)  ; CBufferLoadLegacy(handle,regIndex)
  %1125 = extractvalue %dx.types.CBufRet.f32 %1124, 0
  %1126 = fmul fast float %1125, %1095
  %1127 = fmul fast float %1125, %1096
  %1128 = fmul fast float %1125, %1097
  %1129 = fadd fast float %1126, %453
  %1130 = fsub fast float -0.000000e+00, %1129
  %1131 = fadd fast float %1127, %454
  %1132 = fsub fast float -0.000000e+00, %1131
  %1133 = fadd fast float %1128, %455
  br i1 %468, label %1208, label %1134, !dx.controlflow.hints !39

; <label>:1134                                    ; preds = %1120
  %1135 = extractvalue %dx.types.CBufRet.f32 %1124, 1
  %1136 = fcmp fast ogt float %1135, %1125
  br i1 %1136, label %1137, label %1139, !dx.controlflow.hints !40

; <label>:1137                                    ; preds = %1134
  %1138 = fsub fast float %1135, %1125
  br label %1199

; <label>:1139                                    ; preds = %1134
  %1140 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %15, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %1141 = extractvalue %dx.types.CBufRet.i32 %1140, 3
  %1142 = icmp eq i32 %1141, 0
  %1143 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 401)  ; CBufferLoadLegacy(handle,regIndex)
  %1144 = extractvalue %dx.types.CBufRet.f32 %1143, 2
  %1145 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %1146 = extractvalue %dx.types.CBufRet.f32 %1145, 2
  %1147 = fsub fast float %1144, %1133
  %1148 = fadd fast float %1147, %1146
  %1149 = fsub fast float 0xC7EFFFFFE0000000, %1133
  br i1 %1142, label %1159, label %1150, !dx.controlflow.hints !30

; <label>:1150                                    ; preds = %1139
  %1151 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %1130, float %1132, float %1148)  ; Dot3(ax,ay,az,bx,by,bz)
  %1152 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %1095, float %1096, float %1097)  ; Dot3(ax,ay,az,bx,by,bz)
  %1153 = fdiv fast float 1.000000e+00, %1152
  %1154 = fmul fast float %1153, %1151
  %1155 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %1130, float %1132, float %1149)  ; Dot3(ax,ay,az,bx,by,bz)
  %1156 = fmul fast float %1153, %1155
  %1157 = call float @dx.op.binary.f32(i32 36, float %1154, float %1156)  ; FMin(a,b)
  %1158 = call float @dx.op.binary.f32(i32 35, float %1154, float %1156)  ; FMax(a,b)
  br label %1192

; <label>:1159                                    ; preds = %1139
  %1160 = extractvalue %dx.types.CBufRet.f32 %1143, 0
  %1161 = extractvalue %dx.types.CBufRet.f32 %1143, 1
  %1162 = extractvalue %dx.types.CBufRet.f32 %1145, 0
  %1163 = extractvalue %dx.types.CBufRet.f32 %1145, 1
  %1164 = fdiv fast float 1.000000e+00, %1095
  %1165 = fdiv fast float 1.000000e+00, %1096
  %1166 = fdiv fast float 1.000000e+00, %1097
  %1167 = fsub fast float %1160, %1129
  %1168 = fmul fast float %1164, %1167
  %1169 = fadd fast float %1167, %1162
  %1170 = fmul fast float %1169, %1164
  %1171 = call float @dx.op.binary.f32(i32 36, float %1168, float %1170)  ; FMin(a,b)
  %1172 = call float @dx.op.binary.f32(i32 35, float %1168, float %1170)  ; FMax(a,b)
  %1173 = fsub fast float %1161, %1131
  %1174 = fmul fast float %1165, %1173
  %1175 = fadd fast float %1173, %1163
  %1176 = fmul fast float %1175, %1165
  %1177 = call float @dx.op.binary.f32(i32 36, float %1174, float %1176)  ; FMin(a,b)
  %1178 = call float @dx.op.binary.f32(i32 35, float %1171, float %1177)  ; FMax(a,b)
  %1179 = call float @dx.op.binary.f32(i32 35, float %1174, float %1176)  ; FMax(a,b)
  %1180 = call float @dx.op.binary.f32(i32 36, float %1172, float %1179)  ; FMin(a,b)
  %1181 = fmul fast float %1166, %1149
  %1182 = fmul fast float %1166, %1148
  %1183 = call float @dx.op.binary.f32(i32 36, float %1181, float %1182)  ; FMin(a,b)
  %1184 = call float @dx.op.binary.f32(i32 35, float %1178, float %1183)  ; FMax(a,b)
  %1185 = call float @dx.op.binary.f32(i32 35, float %1181, float %1182)  ; FMax(a,b)
  %1186 = call float @dx.op.binary.f32(i32 36, float %1180, float %1185)  ; FMin(a,b)
  %1187 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1184)  ; FMax(a,b)
  %1188 = fcmp fast ult float %1186, %1187
  br i1 %1188, label %1192, label %1189, !dx.controlflow.hints !31

; <label>:1189                                    ; preds = %1159
  %1190 = call float @dx.op.binary.f32(i32 36, float %1184, float %1186)  ; FMin(a,b)
  %1191 = call float @dx.op.binary.f32(i32 35, float %1184, float %1186)  ; FMax(a,b)
  br label %1192

; <label>:1192                                    ; preds = %1189, %1159, %1150
  %1193 = phi float [ %1157, %1150 ], [ %1190, %1189 ], [ 0.000000e+00, %1159 ]
  %1194 = phi float [ %1158, %1150 ], [ %1191, %1189 ], [ 0.000000e+00, %1159 ]
  %1195 = fcmp fast ogt float %1193, 0.000000e+00
  br i1 %1195, label %1199, label %1196, !dx.controlflow.hints !41

; <label>:1196                                    ; preds = %1192
  %1197 = fcmp fast ugt float %1194, 0.000000e+00
  br i1 %1197, label %1198, label %1199, !dx.controlflow.hints !42

; <label>:1198                                    ; preds = %1196
  br label %1199

; <label>:1199                                    ; preds = %1198, %1196, %1192, %1137
  %1200 = phi float [ %1138, %1137 ], [ 0.000000e+00, %1198 ], [ 0x47EFFFFFE0000000, %1196 ], [ %1193, %1192 ]
  %1201 = phi i32 [ %366, %1137 ], [ %366, %1198 ], [ 0, %1196 ], [ %366, %1192 ]
  %1202 = icmp ne i32 %1201, 0
  %1203 = zext i1 %1202 to i32
  %1204 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %1205 = extractvalue %dx.types.CBufRet.f32 %1204, 2
  %1206 = call float @dx.op.binary.f32(i32 35, float %1200, float %1205)  ; FMax(a,b)
  %1207 = call float @dx.op.binary.f32(i32 36, float 0x47EFFFFFE0000000, float %1206)  ; FMin(a,b)
  br label %1208

; <label>:1208                                    ; preds = %1199, %1120
  %1209 = phi float [ %1207, %1199 ], [ 0x47EFFFFFE0000000, %1120 ]
  %1210 = phi i32 [ %1203, %1199 ], [ 0, %1120 ]
  br i1 %641, label %1223, label %1211, !dx.controlflow.hints !48

; <label>:1211                                    ; preds = %1208
  %1212 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %1213 = extractvalue %dx.types.CBufRet.f32 %1212, 3
  %1214 = extractvalue %dx.types.CBufRet.f32 %1212, 2
  %1215 = fmul fast float %1213, %1125
  %1216 = fdiv fast float %1215, %1125
  %1217 = fadd fast float %1216, 1.000000e+00
  %1218 = call float @dx.op.unary.f32(i32 23, float %1217)  ; Log(value)
  %1219 = call float @dx.op.binary.f32(i32 36, float 1.000000e+00, float %1218)  ; FMin(a,b)
  %1220 = fmul fast float %1214, %1125
  %1221 = fmul fast float %1220, %1219
  %1222 = call float @dx.op.binary.f32(i32 36, float 0x47EFFFFFE0000000, float %1221)  ; FMin(a,b)
  br label %1223

; <label>:1223                                    ; preds = %1211, %1208
  %1224 = phi float [ %1222, %1211 ], [ 0x47EFFFFFE0000000, %1208 ]
  br i1 %656, label %1397, label %1225, !dx.controlflow.hints !49

; <label>:1225                                    ; preds = %1223
  %1226 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %15, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1227 = extractvalue %dx.types.CBufRet.i32 %1226, 1
  %1228 = and i32 %1227, 1
  %1229 = icmp eq i32 %1228, 0
  br i1 %1229, label %1230, label %1387, !dx.controlflow.hints !50

; <label>:1230                                    ; preds = %1225
  %1231 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 204)  ; CBufferLoadLegacy(handle,regIndex)
  %1232 = extractvalue %dx.types.CBufRet.f32 %1231, 2
  %1233 = extractvalue %dx.types.CBufRet.f32 %1231, 3
  %1234 = fmul fast float %1232, %1129
  %1235 = fmul fast float %1233, %1131
  %1236 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 205)  ; CBufferLoadLegacy(handle,regIndex)
  %1237 = extractvalue %dx.types.CBufRet.f32 %1236, 0
  %1238 = extractvalue %dx.types.CBufRet.f32 %1236, 1
  %1239 = fadd fast float %1234, %1237
  %1240 = fadd fast float %1235, %1238
  %1241 = call float @dx.op.unary.f32(i32 7, float %1239)  ; Saturate(value)
  %1242 = call float @dx.op.unary.f32(i32 7, float %1240)  ; Saturate(value)
  %1243 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %13, float %1241, float %1242, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1244 = extractvalue %dx.types.ResRet.f32 %1243, 0
  %1245 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %1246 = extractvalue %dx.types.CBufRet.f32 %1245, 0
  %1247 = fmul fast float %1246, %1244
  %1248 = fsub fast float %1239, %1241
  %1249 = fsub fast float %1240, %1242
  %1250 = extractvalue %dx.types.CBufRet.f32 %1231, 0
  %1251 = extractvalue %dx.types.CBufRet.f32 %1231, 1
  %1252 = fmul fast float %1250, %1248
  %1253 = fmul fast float %1251, %1249
  %1254 = fmul fast float %1252, %1252
  %1255 = fmul fast float %1253, %1253
  %1256 = fadd fast float %1254, %1255
  %1257 = call float @dx.op.unary.f32(i32 24, float %1256)  ; Sqrt(value)
  %1258 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %1259 = extractvalue %dx.types.CBufRet.f32 %1258, 3
  %1260 = fmul fast float %1259, %1257
  %1261 = call float @dx.op.unary.f32(i32 7, float %1260)  ; Saturate(value)
  %1262 = extractvalue %dx.types.CBufRet.f32 %1258, 2
  %1263 = fsub fast float %1262, %1247
  %1264 = fmul fast float %1263, %1261
  %1265 = extractvalue %dx.types.CBufRet.f32 %1245, 1
  %1266 = fsub fast float %1133, %1247
  %1267 = fsub fast float %1266, %1265
  %1268 = fsub fast float %1267, %1264
  %1269 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1270 = extractvalue %dx.types.CBufRet.f32 %1269, 2
  %1271 = fsub fast float %1268, %1270
  %1272 = fcmp fast olt float %1271, 0.000000e+00
  %1273 = call float @dx.op.unary.f32(i32 6, float %1271)  ; FAbs(value)
  %1274 = extractvalue %dx.types.CBufRet.i32 %1226, 0
  %1275 = icmp eq i32 %1274, 0
  br i1 %1275, label %1329, label %1276

; <label>:1276                                    ; preds = %1230
  br label %1277

; <label>:1277                                    ; preds = %1316, %1276
  %1278 = phi i32 [ %1322, %1316 ], [ 1, %1276 ]
  %1279 = phi float [ %1324, %1316 ], [ 0x47EFFFFFE0000000, %1276 ]
  %1280 = phi i32 [ %1325, %1316 ], [ 0, %1276 ]
  %1281 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %1282 = extractvalue %dx.types.CBufRet.f32 %1281, 1
  %1283 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %15, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1284 = extractvalue %dx.types.CBufRet.i32 %1283, 1
  %1285 = and i32 %1284, 8
  %1286 = icmp eq i32 %1285, 0
  %1287 = fcmp fast ogt float %1282, %1268
  %1288 = or i1 %1287, %1286
  %1289 = add i32 %1280, 171
  %1290 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 %1289)  ; CBufferLoadLegacy(handle,regIndex)
  %1291 = extractvalue %dx.types.CBufRet.f32 %1290, 0
  %1292 = extractvalue %dx.types.CBufRet.f32 %1290, 1
  %1293 = extractvalue %dx.types.CBufRet.f32 %1290, 2
  br i1 %1288, label %1294, label %1300, !dx.controlflow.hints !51

; <label>:1294                                    ; preds = %1277
  %1295 = fsub fast float %1291, %1129
  %1296 = fsub fast float %1292, %1131
  %1297 = fmul fast float %1295, %1295
  %1298 = fmul fast float %1296, %1296
  %1299 = fadd fast float %1297, %1298
  br label %1316

; <label>:1300                                    ; preds = %1277
  %1301 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1302 = extractvalue %dx.types.CBufRet.f32 %1301, 2
  %1303 = extractvalue %dx.types.CBufRet.f32 %1281, 2
  %1304 = fmul fast float %1303, %1302
  %1305 = fsub fast float %1304, %1282
  %1306 = fdiv fast float %1293, %1305
  %1307 = fsub fast float %1129, %1291
  %1308 = fsub fast float %1131, %1292
  %1309 = fsub fast float %1268, %1282
  %1310 = fmul fast float %1306, %1309
  %1311 = fmul fast float %1307, %1307
  %1312 = fmul fast float %1308, %1308
  %1313 = fadd fast float %1311, %1312
  %1314 = fmul fast float %1310, %1310
  %1315 = fadd fast float %1313, %1314
  br label %1316

; <label>:1316                                    ; preds = %1300, %1294
  %1317 = phi float [ %1299, %1294 ], [ %1315, %1300 ]
  %1318 = call float @dx.op.unary.f32(i32 24, float %1317)  ; Sqrt(value)
  %1319 = fsub float %1293, %1318
  %1320 = fcmp fast olt float %1319, 0.000000e+00
  %1321 = zext i1 %1320 to i32
  %1322 = and i32 %1321, %1278
  %1323 = call float @dx.op.unary.f32(i32 6, float %1319)  ; FAbs(value)
  %1324 = call float @dx.op.binary.f32(i32 36, float %1279, float %1323)  ; FMin(a,b)
  %1325 = add i32 %1280, 1
  %1326 = extractvalue %dx.types.CBufRet.i32 %1283, 0
  %1327 = icmp ult i32 %1325, %1326
  br i1 %1327, label %1277, label %1328

; <label>:1328                                    ; preds = %1316
  br label %1329

; <label>:1329                                    ; preds = %1328, %1230
  %1330 = phi i32 [ 1, %1230 ], [ %1322, %1328 ]
  %1331 = phi float [ 0x47EFFFFFE0000000, %1230 ], [ %1324, %1328 ]
  br label %1332

; <label>:1332                                    ; preds = %1332, %1329
  %1333 = phi i32 [ %1330, %1329 ], [ %1372, %1332 ]
  %1334 = phi float [ 0x47EFFFFFE0000000, %1329 ], [ %1374, %1332 ]
  %1335 = phi i32 [ 0, %1329 ], [ %1375, %1332 ]
  %1336 = add nuw nsw i32 %1335, 191
  %1337 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 %1336)  ; CBufferLoadLegacy(handle,regIndex)
  %1338 = extractvalue %dx.types.CBufRet.f32 %1337, 0
  %1339 = extractvalue %dx.types.CBufRet.f32 %1337, 1
  %1340 = extractvalue %dx.types.CBufRet.f32 %1337, 2
  %1341 = add nuw nsw i32 %1335, 195
  %1342 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 %1341)  ; CBufferLoadLegacy(handle,regIndex)
  %1343 = extractvalue %dx.types.CBufRet.f32 %1342, 0
  %1344 = extractvalue %dx.types.CBufRet.f32 %1342, 1
  %1345 = extractvalue %dx.types.CBufRet.f32 %1342, 2
  %1346 = fsub fast float %1129, %1338
  %1347 = fsub fast float %1131, %1339
  %1348 = fsub fast float %1268, %1340
  %1349 = call float @dx.op.unary.f32(i32 6, float %1346)  ; FAbs(value)
  %1350 = call float @dx.op.unary.f32(i32 6, float %1347)  ; FAbs(value)
  %1351 = call float @dx.op.unary.f32(i32 6, float %1348)  ; FAbs(value)
  %1352 = fsub fast float %1349, %1343
  %1353 = fsub fast float %1350, %1344
  %1354 = fsub fast float %1351, %1345
  %1355 = call float @dx.op.binary.f32(i32 35, float %1352, float 0.000000e+00)  ; FMax(a,b)
  %1356 = call float @dx.op.binary.f32(i32 35, float %1353, float 0.000000e+00)  ; FMax(a,b)
  %1357 = call float @dx.op.binary.f32(i32 35, float %1354, float 0.000000e+00)  ; FMax(a,b)
  %1358 = fmul fast float %1355, %1355
  %1359 = fmul fast float %1356, %1356
  %1360 = fadd fast float %1359, %1358
  %1361 = fmul fast float %1357, %1357
  %1362 = fadd fast float %1360, %1361
  %1363 = call float @dx.op.unary.f32(i32 24, float %1362)  ; Sqrt(value)
  %1364 = call float @dx.op.binary.f32(i32 35, float %1353, float %1354)  ; FMax(a,b)
  %1365 = call float @dx.op.binary.f32(i32 35, float %1352, float %1364)  ; FMax(a,b)
  %1366 = call float @dx.op.binary.f32(i32 36, float %1365, float 0.000000e+00)  ; FMin(a,b)
  %1367 = fadd fast float %1366, %1363
  %1368 = fsub fast float -0.000000e+00, %1367
  %1369 = fcmp ogt float %1367, -0.000000e+00
  %1370 = icmp ne i32 %1333, 0
  %1371 = and i1 %1370, %1369
  %1372 = zext i1 %1371 to i32
  %1373 = call float @dx.op.unary.f32(i32 6, float %1368)  ; FAbs(value)
  %1374 = call float @dx.op.binary.f32(i32 36, float %1334, float %1373)  ; FMin(a,b)
  %1375 = add nuw nsw i32 %1335, 1
  %1376 = icmp eq i32 %1375, 4
  br i1 %1376, label %1377, label %1332

; <label>:1377                                    ; preds = %1332
  %1378 = call float @dx.op.binary.f32(i32 36, float %1273, float %1374)  ; FMin(a,b)
  %1379 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %15, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1380 = extractvalue %dx.types.CBufRet.i32 %1379, 1
  %1381 = and i32 %1380, 2
  %1382 = icmp ne i32 %1381, 0
  %1383 = xor i1 %1371, %1382
  %1384 = call float @dx.op.binary.f32(i32 36, float %1378, float %1331)  ; FMin(a,b)
  %1385 = and i1 %1383, %1272
  %1386 = zext i1 %1385 to i32
  br label %1387

; <label>:1387                                    ; preds = %1377, %1225
  %1388 = phi i32 [ %444, %1225 ], [ %1386, %1377 ]
  %1389 = phi float [ 0.000000e+00, %1225 ], [ %1384, %1377 ]
  %1390 = phi float [ %1133, %1225 ], [ %1268, %1377 ]
  %1391 = icmp ne i32 %1388, 0
  %1392 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %1393 = extractvalue %dx.types.CBufRet.f32 %1392, 3
  %1394 = call float @dx.op.binary.f32(i32 35, float %1389, float %1393)  ; FMax(a,b)
  %1395 = call float @dx.op.binary.f32(i32 36, float %1224, float %1394)  ; FMin(a,b)
  %1396 = zext i1 %1391 to i32
  br label %1397

; <label>:1397                                    ; preds = %1387, %1223
  %1398 = phi i32 [ %1388, %1387 ], [ %444, %1223 ]
  %1399 = phi float [ %1390, %1387 ], [ %445, %1223 ]
  %1400 = phi float [ %1395, %1387 ], [ %1224, %1223 ]
  %1401 = phi i32 [ %1396, %1387 ], [ 0, %1223 ]
  %1402 = icmp eq i32 %1210, 0
  br i1 %1402, label %1476, label %1403, !dx.controlflow.hints !52

; <label>:1403                                    ; preds = %1397
  %1404 = fmul fast float %834, %1125
  %1405 = call float @dx.op.unary.f32(i32 23, float %1404)  ; Log(value)
  %1406 = fmul fast float %1405, 0x3FE62E4300000000
  %1407 = call float @dx.op.binary.f32(i32 35, float %1406, float 1.000000e+00)  ; FMax(a,b)
  %1408 = fmul fast float %1407, %1400
  %1409 = call float @dx.op.binary.f32(i32 36, float %1408, float %1209)  ; FMin(a,b)
  %1410 = call float @dx.op.binary.f32(i32 35, float %1409, float 0.000000e+00)  ; FMax(a,b)
  %1411 = fcmp fast ogt float %1410, 0x3F1A36E2E0000000
  %1412 = fadd fast float %1126, %1129
  %1413 = fadd fast float %1127, %1131
  %1414 = select i1 %1411, float %1412, float %1129
  %1415 = select i1 %1411, float %1413, float %1131
  %1416 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 401)  ; CBufferLoadLegacy(handle,regIndex)
  %1417 = extractvalue %dx.types.CBufRet.f32 %1416, 0
  %1418 = extractvalue %dx.types.CBufRet.f32 %1416, 1
  %1419 = fsub fast float %1414, %1417
  %1420 = fsub fast float %1415, %1418
  %1421 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 403)  ; CBufferLoadLegacy(handle,regIndex)
  %1422 = extractvalue %dx.types.CBufRet.f32 %1421, 0
  %1423 = extractvalue %dx.types.CBufRet.f32 %1421, 1
  %1424 = fmul fast float %1419, %1422
  %1425 = fmul fast float %1420, %1423
  %1426 = fsub fast float 1.000000e+00, %1425
  %1427 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %15, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %1428 = extractvalue %dx.types.CBufRet.i32 %1427, 3
  %1429 = icmp eq i32 %1428, 0
  br i1 %1429, label %1436, label %1430, !dx.controlflow.hints !43

; <label>:1430                                    ; preds = %1403
  %1431 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %12, float %1424, float %1426, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1432 = extractvalue %dx.types.ResRet.f32 %1431, 0
  %1433 = extractvalue %dx.types.ResRet.f32 %1431, 1
  %1434 = extractvalue %dx.types.ResRet.f32 %1431, 2
  %1435 = extractvalue %dx.types.ResRet.f32 %1431, 3
  br label %1442

; <label>:1436                                    ; preds = %1403
  %1437 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %13, float %1424, float %1426, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1438 = extractvalue %dx.types.ResRet.f32 %1437, 0
  %1439 = extractvalue %dx.types.ResRet.f32 %1437, 1
  %1440 = extractvalue %dx.types.ResRet.f32 %1437, 2
  %1441 = extractvalue %dx.types.ResRet.f32 %1437, 3
  br label %1442

; <label>:1442                                    ; preds = %1436, %1430
  %1443 = phi float [ %1432, %1430 ], [ %1438, %1436 ]
  %1444 = phi float [ %1433, %1430 ], [ %1439, %1436 ]
  %1445 = phi float [ %1434, %1430 ], [ %1440, %1436 ]
  %1446 = phi float [ %1435, %1430 ], [ %1441, %1436 ]
  %1447 = extractvalue %dx.types.CBufRet.f32 %1421, 3
  %1448 = fmul fast float %1447, %1444
  %1449 = fmul fast float %1448, %1443
  %1450 = fsub fast float %1448, %1449
  %1451 = fcmp fast ole float %1450, 0.000000e+00
  %1452 = extractvalue %dx.types.CBufRet.f32 %1416, 2
  %1453 = fadd fast float %1449, %1452
  %1454 = fmul fast float %1447, %1445
  %1455 = fadd fast float %1454, %1452
  %1456 = fdiv fast float 1.000000e+00, %1450
  %1457 = select i1 %1451, float 1.000000e+06, float %1456
  %1458 = fsub fast float %1133, %1453
  %1459 = fmul fast float %1457, %1458
  %1460 = call float @dx.op.unary.f32(i32 7, float %1459)  ; Saturate(value)
  %1461 = extractvalue %dx.types.CBufRet.f32 %1421, 2
  %1462 = fmul fast float %1461, %1460
  %1463 = fsub fast float %1461, %1462
  %1464 = fcmp fast olt float %1133, %1455
  %1465 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 406)  ; CBufferLoadLegacy(handle,regIndex)
  %1466 = extractvalue %dx.types.CBufRet.f32 %1465, 3
  %1467 = fmul fast float %1466, 3.000000e+00
  %1468 = select i1 %1464, float %1467, float 3.000000e+00
  %1469 = fmul fast float %1463, %1468
  %1470 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 418)  ; CBufferLoadLegacy(handle,regIndex)
  %1471 = extractvalue %dx.types.CBufRet.f32 %1470, 2
  %1472 = fmul fast float %1125, 0x3FD5555560000000
  %1473 = fmul fast float %1472, %1446
  %1474 = fmul fast float %1473, %1471
  %1475 = fmul fast float %1474, %1469
  br label %1476

; <label>:1476                                    ; preds = %1442, %1397
  %1477 = phi float [ %1475, %1442 ], [ 0.000000e+00, %1397 ]
  br i1 %641, label %1526, label %1478, !dx.controlflow.hints !54

; <label>:1478                                    ; preds = %1476
  %1479 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 399)  ; CBufferLoadLegacy(handle,regIndex)
  %1480 = extractvalue %dx.types.CBufRet.f32 %1479, 0
  %1481 = fsub fast float %1480, %1133
  %1482 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %1130, float %1132, float %1481)  ; Dot3(ax,ay,az,bx,by,bz)
  %1483 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %1095, float %1096, float %1097)  ; Dot3(ax,ay,az,bx,by,bz)
  %1484 = fdiv fast float 1.000000e+00, %1483
  %1485 = fmul fast float %1484, %1482
  %1486 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1485)  ; FMax(a,b)
  %1487 = fcmp fast olt float %1097, 0.000000e+00
  %1488 = call float @dx.op.binary.f32(i32 36, float %1125, float %1486)  ; FMin(a,b)
  br i1 %1487, label %1490, label %1489, !dx.controlflow.hints !55

; <label>:1489                                    ; preds = %1478
  br label %1490

; <label>:1490                                    ; preds = %1489, %1478
  %1491 = phi float [ 0.000000e+00, %1489 ], [ %1488, %1478 ]
  %1492 = phi float [ %1488, %1489 ], [ %1125, %1478 ]
  %1493 = phi float [ %1488, %1489 ], [ 0.000000e+00, %1478 ]
  %1494 = phi float [ %1125, %1489 ], [ %1488, %1478 ]
  %1495 = fsub fast float %1492, %1491
  %1496 = extractvalue %dx.types.CBufRet.f32 %1479, 1
  %1497 = call float @dx.op.binary.f32(i32 36, float 0xBF0FFB4800000000, float %1496)  ; FMin(a,b)
  %1498 = fsub fast float %1133, %1480
  %1499 = fmul fast float %1497, 0x3FF7154760000000
  %1500 = fmul fast float %1499, %1498
  %1501 = call float @dx.op.unary.f32(i32 21, float %1500)  ; Exp(value)
  %1502 = fmul fast float %1097, 0x3FF7154760000000
  %1503 = fmul fast float %1502, %1494
  %1504 = fmul fast float %1503, %1497
  %1505 = call float @dx.op.unary.f32(i32 21, float %1504)  ; Exp(value)
  %1506 = fmul fast float %1502, %1493
  %1507 = fmul fast float %1506, %1497
  %1508 = call float @dx.op.unary.f32(i32 21, float %1507)  ; Exp(value)
  %1509 = fsub fast float %1505, %1508
  %1510 = fmul fast float %1509, %1501
  %1511 = fmul fast float %1497, %1097
  %1512 = fdiv fast float %1510, %1511
  %1513 = fadd fast float %1495, %1512
  %1514 = call float @dx.op.unary.f32(i32 6, float %1097)  ; FAbs(value)
  %1515 = fcmp fast olt float %1514, 0x3F0FFB4800000000
  %1516 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1498)  ; FMax(a,b)
  %1517 = fmul fast float %1516, 0x3FF7154760000000
  %1518 = fmul fast float %1517, %1496
  %1519 = call float @dx.op.unary.f32(i32 21, float %1518)  ; Exp(value)
  %1520 = fmul fast float %1519, %1125
  %1521 = select i1 %1515, float %1520, float %1513
  %1522 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 396)  ; CBufferLoadLegacy(handle,regIndex)
  %1523 = extractvalue %dx.types.CBufRet.f32 %1522, 1
  %1524 = fmul fast float %1521, %1523
  %1525 = fadd fast float %1524, %1477
  br label %1526

; <label>:1526                                    ; preds = %1490, %1476
  %1527 = phi float [ %1525, %1490 ], [ %1477, %1476 ]
  %1528 = icmp eq i32 %1401, 0
  br i1 %1528, label %1560, label %1529, !dx.controlflow.hints !56

; <label>:1529                                    ; preds = %1526
  %1530 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 190)  ; CBufferLoadLegacy(handle,regIndex)
  %1531 = extractvalue %dx.types.CBufRet.f32 %1530, 1
  %1532 = fsub fast float %1125, %1531
  %1533 = extractvalue %dx.types.CBufRet.f32 %1530, 3
  %1534 = fmul fast float %1532, %1533
  %1535 = call float @dx.op.unary.f32(i32 7, float %1534)  ; Saturate(value)
  %1536 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 188)  ; CBufferLoadLegacy(handle,regIndex)
  %1537 = extractvalue %dx.types.CBufRet.f32 %1536, 3
  %1538 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1539 = extractvalue %dx.types.CBufRet.f32 %1538, 2
  %1540 = fsub fast float %1539, %1399
  %1541 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 189)  ; CBufferLoadLegacy(handle,regIndex)
  %1542 = extractvalue %dx.types.CBufRet.f32 %1541, 3
  %1543 = fmul fast float %1540, %1542
  %1544 = call float @dx.op.unary.f32(i32 7, float %1543)  ; Saturate(value)
  %1545 = fmul fast float %1544, %1537
  %1546 = extractvalue %dx.types.CBufRet.f32 %1541, 0
  %1547 = fsub fast float %1125, %1546
  %1548 = extractvalue %dx.types.CBufRet.f32 %1541, 1
  %1549 = fmul fast float %1547, %1548
  %1550 = call float @dx.op.unary.f32(i32 7, float %1549)  ; Saturate(value)
  %1551 = fsub fast float 1.000000e+00, %1535
  %1552 = fmul fast float %1550, %1551
  %1553 = fadd fast float %1552, %1535
  %1554 = extractvalue %dx.types.CBufRet.f32 %1530, 0
  %1555 = fsub fast float %1545, %1554
  %1556 = fmul fast float %1555, %1553
  %1557 = fadd fast float %1556, %1554
  %1558 = fmul fast float %1557, %1125
  %1559 = fadd fast float %1558, %1527
  br label %1560

; <label>:1560                                    ; preds = %1529, %1526
  %1561 = phi float [ %1559, %1529 ], [ %1527, %1526 ]
  %1562 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 36)  ; CBufferLoadLegacy(handle,regIndex)
  %1563 = extractvalue %dx.types.CBufRet.f32 %1562, 3
  %1564 = fmul fast float %1561, 0xBFF7154760000000
  %1565 = fmul fast float %1564, %1563
  %1566 = call float @dx.op.unary.f32(i32 21, float %1565)  ; Exp(value)
  %1567 = call float @dx.op.unary.f32(i32 7, float %1566)  ; Saturate(value)
  %1568 = fmul fast float %1567, %1121
  %1569 = fmul fast float %1567, %1122
  %1570 = fmul fast float %1567, %1123
  %1571 = fadd fast float %1568, %201
  %1572 = fadd fast float %1569, %202
  %1573 = fadd fast float %1570, %203
  %1574 = fsub fast float 1.000000e+00, %1091
  %1575 = fmul fast float %1083, %449
  %1576 = fmul fast float %1575, %1574
  %1577 = fmul fast float %1576, %1571
  %1578 = fmul fast float %1084, %449
  %1579 = fmul fast float %1578, %1574
  %1580 = fmul fast float %1579, %1572
  %1581 = fmul fast float %1085, %449
  %1582 = fmul fast float %1581, %1574
  %1583 = fmul fast float %1582, %1573
  %1584 = fadd fast float %1577, %450
  %1585 = fadd fast float %1580, %451
  %1586 = fadd fast float %1583, %452
  %1587 = fdiv fast float %1067, %844
  %1588 = fadd fast float %844, %456
  %1589 = fmul fast float %456, %456
  %1590 = fmul fast float %1588, %1588
  %1591 = fsub fast float %1589, %1590
  %1592 = fmul fast float %1591, -5.000000e-01
  %1593 = fmul fast float %1592, %1587
  %1594 = fadd fast float %1593, %448
  %1595 = fadd fast float %1067, %458
  %1596 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %15, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %1597 = extractvalue %dx.types.CBufRet.i32 %1596, 0
  %1598 = icmp eq i32 %1597, 0
  br i1 %1598, label %1625, label %1599, !dx.controlflow.hints !60

; <label>:1599                                    ; preds = %1560
  %1600 = icmp ne i32 %463, 0
  %1601 = zext i1 %1600 to i32
  %1602 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %1603 = extractvalue %dx.types.CBufRet.f32 %1602, 2
  %1604 = extractvalue %dx.types.CBufRet.f32 %1602, 0
  %1605 = fsub fast float %1588, %1604
  %1606 = fmul fast float %1605, %1603
  %1607 = call float @dx.op.unary.f32(i32 7, float %1606)  ; Saturate(value)
  %1608 = fadd fast float %1607, -5.000000e-01
  %1609 = fmul fast float %1608, 2.000000e+00
  %1610 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %1611 = extractvalue %dx.types.CBufRet.f32 %1610, 2
  %1612 = fcmp fast olt float %1609, %1611
  br i1 %1612, label %1613, label %1625, !dx.controlflow.hints !61

; <label>:1613                                    ; preds = %1599
  %1614 = fmul fast float %1609, %1609
  %1615 = fmul fast float %1574, %449
  %1616 = fmul fast float %1609, %1615
  %1617 = fmul fast float %1614, %1615
  %1618 = fmul fast float %1616, %1614
  %1619 = fmul fast float %1614, %1614
  %1620 = fmul fast float %1619, %1615
  %1621 = fadd fast float %1616, %459
  %1622 = fadd fast float %1617, %460
  %1623 = fadd fast float %1618, %461
  %1624 = fadd fast float %1620, %462
  br label %1625

; <label>:1625                                    ; preds = %1613, %1599, %1560
  %1626 = phi float [ %459, %1560 ], [ %1621, %1613 ], [ %459, %1599 ]
  %1627 = phi float [ %460, %1560 ], [ %1622, %1613 ], [ %460, %1599 ]
  %1628 = phi float [ %461, %1560 ], [ %1623, %1613 ], [ %461, %1599 ]
  %1629 = phi float [ %462, %1560 ], [ %1624, %1613 ], [ %462, %1599 ]
  %1630 = phi i32 [ %463, %1560 ], [ 1, %1613 ], [ %1601, %1599 ]
  %1631 = fmul fast float %1091, %449
  br label %1632

; <label>:1632                                    ; preds = %1625, %1086
  %1633 = phi float [ %1087, %1086 ], [ %1588, %1625 ]
  %1634 = phi i32 [ %444, %1086 ], [ %1398, %1625 ]
  %1635 = phi float [ %445, %1086 ], [ %1399, %1625 ]
  %1636 = phi float [ %448, %1086 ], [ %1594, %1625 ]
  %1637 = phi float [ %449, %1086 ], [ %1631, %1625 ]
  %1638 = phi float [ %450, %1086 ], [ %1584, %1625 ]
  %1639 = phi float [ %451, %1086 ], [ %1585, %1625 ]
  %1640 = phi float [ %452, %1086 ], [ %1586, %1625 ]
  %1641 = phi float [ %458, %1086 ], [ %1595, %1625 ]
  %1642 = phi float [ %459, %1086 ], [ %1626, %1625 ]
  %1643 = phi float [ %460, %1086 ], [ %1627, %1625 ]
  %1644 = phi float [ %461, %1086 ], [ %1628, %1625 ]
  %1645 = phi float [ %462, %1086 ], [ %1629, %1625 ]
  %1646 = phi i32 [ %463, %1086 ], [ %1630, %1625 ]
  %1647 = fmul fast float %844, %277
  %1648 = fmul fast float %844, %278
  %1649 = fmul fast float %844, %279
  %1650 = fadd fast float %1647, %453
  %1651 = fadd fast float %1648, %454
  %1652 = fadd fast float %1649, %455
  %1653 = fcmp fast olt float %1633, %421
  %1654 = extractvalue %dx.types.CBufRet.f32 %1072, 2
  %1655 = fcmp fast olt float %1654, %1637
  %1656 = and i1 %1653, %1655
  br i1 %1656, label %443, label %1657

; <label>:1657                                    ; preds = %1632
  br label %1658

; <label>:1658                                    ; preds = %1657, %417
  %1659 = phi float [ 0.000000e+00, %417 ], [ %1636, %1657 ]
  %1660 = phi float [ 1.000000e+00, %417 ], [ %1637, %1657 ]
  %1661 = phi float [ 0.000000e+00, %417 ], [ %1638, %1657 ]
  %1662 = phi float [ 0.000000e+00, %417 ], [ %1639, %1657 ]
  %1663 = phi float [ 0.000000e+00, %417 ], [ %1640, %1657 ]
  %1664 = phi float [ 0.000000e+00, %417 ], [ %1641, %1657 ]
  %1665 = phi float [ 0.000000e+00, %417 ], [ %1642, %1657 ]
  %1666 = phi float [ 0.000000e+00, %417 ], [ %1643, %1657 ]
  %1667 = phi float [ 0.000000e+00, %417 ], [ %1644, %1657 ]
  %1668 = phi float [ 0.000000e+00, %417 ], [ %1645, %1657 ]
  %1669 = phi i32 [ 0, %417 ], [ %1646, %1657 ]
  %1670 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %15, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %1671 = extractvalue %dx.types.CBufRet.i32 %1670, 0
  %1672 = icmp eq i32 %1671, 0
  br i1 %1672, label %1714, label %1673, !dx.controlflow.hints !62

; <label>:1673                                    ; preds = %1658
  %1674 = icmp eq i32 %1669, 0
  br i1 %1674, label %1713, label %1675, !dx.controlflow.hints !63

; <label>:1675                                    ; preds = %1673
  %1676 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %15, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %1677 = extractvalue %dx.types.CBufRet.i32 %1676, 2
  %1678 = icmp eq i32 %1677, 0
  br i1 %1678, label %1685, label %1679, !dx.controlflow.hints !64

; <label>:1679                                    ; preds = %1675
  %1680 = fsub fast float 1.000000e+00, %1660
  %1681 = fdiv fast float %1665, %1680
  %1682 = fdiv fast float %1666, %1680
  %1683 = fdiv fast float %1667, %1680
  %1684 = fdiv fast float %1668, %1680
  br label %1690

; <label>:1685                                    ; preds = %1675
  %1686 = fadd fast float %1665, %1660
  %1687 = fadd fast float %1666, %1660
  %1688 = fadd fast float %1667, %1660
  %1689 = fadd fast float %1668, %1660
  br label %1690

; <label>:1690                                    ; preds = %1685, %1679
  %1691 = phi float [ %1681, %1679 ], [ %1686, %1685 ]
  %1692 = phi float [ %1682, %1679 ], [ %1687, %1685 ]
  %1693 = phi float [ %1683, %1679 ], [ %1688, %1685 ]
  %1694 = phi float [ %1684, %1679 ], [ %1689, %1685 ]
  %1695 = call float @dx.op.binary.f32(i32 35, float %1691, float -1.000000e+00)  ; FMax(a,b)
  %1696 = call float @dx.op.binary.f32(i32 35, float %1692, float -1.000000e+00)  ; FMax(a,b)
  %1697 = call float @dx.op.binary.f32(i32 35, float %1693, float -1.000000e+00)  ; FMax(a,b)
  %1698 = call float @dx.op.binary.f32(i32 35, float %1694, float -1.000000e+00)  ; FMax(a,b)
  %1699 = call float @dx.op.binary.f32(i32 36, float %1695, float 1.000000e+00)  ; FMin(a,b)
  %1700 = call float @dx.op.binary.f32(i32 36, float %1696, float 1.000000e+00)  ; FMin(a,b)
  %1701 = call float @dx.op.binary.f32(i32 36, float %1697, float 1.000000e+00)  ; FMin(a,b)
  %1702 = call float @dx.op.binary.f32(i32 36, float %1698, float 1.000000e+00)  ; FMin(a,b)
  %1703 = fmul fast float %1699, 1.500000e+00
  %1704 = call float @dx.op.tertiary.f32(i32 46, float -2.000000e+00, float %1701, float %1703)  ; FMad(a,b,c)
  %1705 = call float @dx.op.tertiary.f32(i32 46, float 4.000000e+00, float %1700, float 0.000000e+00)  ; FMad(a,b,c)
  %1706 = call float @dx.op.tertiary.f32(i32 46, float -4.000000e+00, float %1702, float %1705)  ; FMad(a,b,c)
  %1707 = fmul fast float %1699, 0x3FEBB67AE0000000
  %1708 = call float @dx.op.tertiary.f32(i32 46, float 0xBFD8A23460000000, float %1701, float %1707)  ; FMad(a,b,c)
  %1709 = call float @dx.op.tertiary.f32(i32 46, float 5.000000e-01, float %1700, float 0.000000e+00)  ; FMad(a,b,c)
  %1710 = call float @dx.op.tertiary.f32(i32 46, float 5.000000e-01, float %1702, float %1709)  ; FMad(a,b,c)
  %1711 = fadd fast float %1704, 5.000000e-01
  %1712 = fadd fast float %1708, 5.000000e-01
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %16, i32 %17, i32 0, float %1711, float %1706, float %1712, float %1710, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %1714

; <label>:1713                                    ; preds = %1673
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %16, i32 %17, i32 0, float 0.000000e+00, float 0.000000e+00, float 0x3FEF6560C0000000, float 1.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %1714

; <label>:1714                                    ; preds = %1713, %1690, %1658
  %1715 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %1716 = extractvalue %dx.types.CBufRet.f32 %1715, 2
  %1717 = fsub fast float %1660, %1716
  %1718 = fdiv fast float %1717, %1716
  %1719 = call float @dx.op.unary.f32(i32 7, float %1718)  ; Saturate(value)
  %1720 = fmul fast float %1719, 2.000000e+00
  %1721 = fsub fast float 3.000000e+00, %1720
  %1722 = fmul fast float %1719, %1719
  %1723 = fmul fast float %1722, %1660
  %1724 = fmul fast float %1723, %1721
  %1725 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 419)  ; CBufferLoadLegacy(handle,regIndex)
  %1726 = extractvalue %dx.types.CBufRet.f32 %1725, 0
  %1727 = extractvalue %dx.types.CBufRet.f32 %1725, 1
  %1728 = extractvalue %dx.types.CBufRet.f32 %1725, 2
  %1729 = call float @dx.op.dot3.f32(i32 55, float %277, float %278, float %279, float %1726, float %1727, float %1728)  ; Dot3(ax,ay,az,bx,by,bz)
  %1730 = fmul fast float %1729, %1659
  %1731 = fcmp fast ogt float %1664, 0.000000e+00
  %1732 = fdiv fast float 1.000000e+00, %1664
  %1733 = fmul fast float %1730, %1732
  %1734 = select i1 %1731, float %1733, float %288
  %1735 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %1736 = extractvalue %dx.types.CBufRet.f32 %1735, 0
  %1737 = extractvalue %dx.types.CBufRet.f32 %1735, 1
  %1738 = extractvalue %dx.types.CBufRet.f32 %1735, 2
  %1739 = fmul fast float %1736, %241
  %1740 = fmul fast float %1737, %241
  %1741 = fmul fast float %1738, %241
  %1742 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %1743 = extractvalue %dx.types.CBufRet.f32 %1742, 0
  %1744 = extractvalue %dx.types.CBufRet.f32 %1742, 1
  %1745 = extractvalue %dx.types.CBufRet.f32 %1742, 2
  %1746 = fmul fast float %1743, %242
  %1747 = fmul fast float %1744, %242
  %1748 = fmul fast float %1745, %242
  %1749 = fadd fast float %1746, %1739
  %1750 = fadd fast float %1747, %1740
  %1751 = fadd fast float %1748, %1741
  %1752 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %1753 = extractvalue %dx.types.CBufRet.f32 %1752, 0
  %1754 = extractvalue %dx.types.CBufRet.f32 %1752, 1
  %1755 = extractvalue %dx.types.CBufRet.f32 %1752, 2
  %1756 = fadd fast float %1749, %1753
  %1757 = fadd fast float %1750, %1754
  %1758 = fadd fast float %1751, %1755
  %1759 = fmul fast float %1756, %1734
  %1760 = fmul fast float %1757, %1734
  %1761 = fmul fast float %1758, %1734
  %1762 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %1763 = extractvalue %dx.types.CBufRet.f32 %1762, 0
  %1764 = extractvalue %dx.types.CBufRet.f32 %1762, 1
  %1765 = extractvalue %dx.types.CBufRet.f32 %1762, 2
  %1766 = extractvalue %dx.types.CBufRet.f32 %1762, 3
  %1767 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %1768 = extractvalue %dx.types.CBufRet.f32 %1767, 0
  %1769 = extractvalue %dx.types.CBufRet.f32 %1767, 1
  %1770 = extractvalue %dx.types.CBufRet.f32 %1767, 2
  %1771 = extractvalue %dx.types.CBufRet.f32 %1767, 3
  %1772 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %1773 = extractvalue %dx.types.CBufRet.f32 %1772, 0
  %1774 = extractvalue %dx.types.CBufRet.f32 %1772, 1
  %1775 = extractvalue %dx.types.CBufRet.f32 %1772, 2
  %1776 = extractvalue %dx.types.CBufRet.f32 %1772, 3
  %1777 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %1778 = extractvalue %dx.types.CBufRet.f32 %1777, 0
  %1779 = extractvalue %dx.types.CBufRet.f32 %1777, 1
  %1780 = extractvalue %dx.types.CBufRet.f32 %1777, 2
  %1781 = extractvalue %dx.types.CBufRet.f32 %1777, 3
  %1782 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %1783 = extractvalue %dx.types.CBufRet.f32 %1782, 3
  %1784 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %1785 = extractvalue %dx.types.CBufRet.f32 %1784, 3
  %1786 = extractvalue %dx.types.CBufRet.f32 %1784, 0
  %1787 = extractvalue %dx.types.CBufRet.f32 %1784, 1
  %1788 = extractvalue %dx.types.CBufRet.f32 %1784, 2
  %1789 = fcmp fast olt float %1788, -5.000000e-01
  %1790 = call float @dx.op.dot3.f32(i32 55, float %1759, float %1760, float %1761, float %1759, float %1760, float %1761)  ; Dot3(ax,ay,az,bx,by,bz)
  %1791 = call float @dx.op.unary.f32(i32 25, float %1790)  ; Rsqrt(value)
  %1792 = fmul fast float %1791, %1790
  %1793 = fmul fast float %1791, %1759
  %1794 = fmul fast float %1791, %1760
  %1795 = fmul fast float %1791, %1761
  %1796 = fadd fast float %1792, %1766
  %1797 = call float @dx.op.dot3.f32(i32 55, float %1793, float %1794, float %1795, float %1763, float %1764, float %1765)  ; Dot3(ax,ay,az,bx,by,bz)
  %1798 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %15, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1799 = extractvalue %dx.types.CBufRet.i32 %1798, 1
  %1800 = and i32 %1799, 1
  %1801 = icmp ne i32 %1800, 0
  %1802 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %1803 = extractvalue %dx.types.CBufRet.f32 %1802, 2
  %1804 = fcmp fast ogt float %1803, 0.000000e+00
  %1805 = and i1 %1801, %1804
  br i1 %1805, label %1806, label %2212, !dx.controlflow.hints !65

; <label>:1806                                    ; preds = %1714
  %1807 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %1808 = extractvalue %dx.types.CBufRet.f32 %1807, 3
  %1809 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1810 = extractvalue %dx.types.CBufRet.f32 %1809, 2
  %1811 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1812 = extractvalue %dx.types.CBufRet.f32 %1811, 2
  %1813 = fsub fast float %1810, %1812
  %1814 = and i32 %1799, 2
  %1815 = extractvalue %dx.types.CBufRet.i32 %1798, 0
  %1816 = call i32 @dx.op.binary.i32(i32 40, i32 %1815, i32 3)  ; UMin(a,b)
  %1817 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %1818 = extractvalue %dx.types.CBufRet.f32 %1817, 0
  %1819 = extractvalue %dx.types.CBufRet.f32 %1817, 1
  %1820 = extractvalue %dx.types.CBufRet.f32 %1811, 0
  %1821 = extractvalue %dx.types.CBufRet.f32 %1811, 1
  %1822 = fsub fast float %1818, %1820
  %1823 = fsub fast float %1819, %1821
  %1824 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %1825 = extractvalue %dx.types.CBufRet.f32 %1824, 0
  %1826 = fcmp fast ogt float %1825, 0.000000e+00
  %1827 = fsub fast float -0.000000e+00, %1822
  %1828 = fsub fast float -0.000000e+00, %1823
  %1829 = call float @dx.op.dot2.f32(i32 54, float %1793, float %1794, float %1793, float %1794)  ; Dot2(ax,ay,bx,by)
  %1830 = call float @dx.op.dot2.f32(i32 54, float %1793, float %1794, float %1827, float %1828)  ; Dot2(ax,ay,bx,by)
  %1831 = fmul fast float %1830, 2.000000e+00
  %1832 = call float @dx.op.dot2.f32(i32 54, float %1827, float %1828, float %1827, float %1828)  ; Dot2(ax,ay,bx,by)
  %1833 = fmul fast float %1825, %1825
  %1834 = fsub fast float %1832, %1833
  %1835 = fmul fast float %1831, %1831
  %1836 = fmul fast float %1829, 4.000000e+00
  %1837 = fmul fast float %1836, %1834
  %1838 = fsub fast float %1835, %1837
  %1839 = fcmp fast ogt float %1838, 0.000000e+00
  br i1 %1839, label %1840, label %1855, !dx.controlflow.hints !66

; <label>:1840                                    ; preds = %1806
  %1841 = fcmp fast ogt float %1831, 0.000000e+00
  %1842 = call float @dx.op.unary.f32(i32 24, float %1838)  ; Sqrt(value)
  %1843 = fsub fast float -0.000000e+00, %1842
  %1844 = select i1 %1841, float %1842, float %1843
  %1845 = fadd fast float %1844, %1831
  %1846 = fmul float %1845, -5.000000e-01
  %1847 = fdiv fast float %1846, %1829
  %1848 = call float @dx.op.binary.f32(i32 35, float %1847, float 0.000000e+00)  ; FMax(a,b)
  %1849 = call float @dx.op.binary.f32(i32 36, float %1792, float %1848)  ; FMin(a,b)
  %1850 = fdiv fast float %1834, %1846
  %1851 = call float @dx.op.binary.f32(i32 35, float %1850, float 0.000000e+00)  ; FMax(a,b)
  %1852 = call float @dx.op.binary.f32(i32 36, float %1792, float %1851)  ; FMin(a,b)
  %1853 = call float @dx.op.binary.f32(i32 36, float %1849, float %1852)  ; FMin(a,b)
  %1854 = call float @dx.op.binary.f32(i32 35, float %1849, float %1852)  ; FMax(a,b)
  br label %1855

; <label>:1855                                    ; preds = %1840, %1806
  %1856 = phi float [ %1854, %1840 ], [ -1.000000e+00, %1806 ]
  %1857 = phi float [ %1853, %1840 ], [ -1.000000e+00, %1806 ]
  %1858 = phi i1 [ true, %1840 ], [ false, %1806 ]
  %1859 = and i1 %1826, %1858
  br i1 %1859, label %1860, label %1862, !dx.controlflow.hints !67

; <label>:1860                                    ; preds = %1855
  %1861 = fcmp fast oeq float %1857, %1856
  br i1 %1861, label %2165, label %1863, !dx.controlflow.hints !68

; <label>:1862                                    ; preds = %1855
  br i1 %1826, label %2165, label %1863, !dx.controlflow.hints !69

; <label>:1863                                    ; preds = %1862, %1860
  %1864 = phi float [ %1792, %1862 ], [ %1856, %1860 ]
  %1865 = phi float [ 0.000000e+00, %1862 ], [ %1857, %1860 ]
  %1866 = icmp ne i32 %1814, 0
  %1867 = fmul fast float %1864, %1795
  %1868 = fadd fast float %1867, %1808
  %1869 = fmul fast float %1868, %1864
  %1870 = select i1 %1866, float 0.000000e+00, float %1869
  %1871 = fcmp fast oeq float %1795, 0.000000e+00
  %1872 = fdiv fast float %1813, %1795
  %1873 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1872)  ; FMax(a,b)
  %1874 = select i1 %1871, float %1864, float %1873
  %1875 = call float @dx.op.binary.f32(i32 36, float %1864, float %1874)  ; FMin(a,b)
  %1876 = fcmp fast ogt float %1795, 0.000000e+00
  %1877 = fcmp fast olt float %1813, 0.000000e+00
  br i1 %1876, label %1878, label %1935, !dx.controlflow.hints !70

; <label>:1878                                    ; preds = %1863
  %1879 = icmp eq i32 %1814, 0
  br i1 %1877, label %1880, label %1924, !dx.controlflow.hints !71

; <label>:1880                                    ; preds = %1878
  %1881 = select i1 %1879, float %1864, float 0.000000e+00
  %1882 = fsub fast float -0.000000e+00, %1881
  %1883 = call float @dx.op.unary.f32(i32 6, float %1882)  ; FAbs(value)
  %1884 = fmul fast float %1881, %1795
  %1885 = fadd fast float %1884, %1808
  %1886 = fmul fast float %1883, %1885
  %1887 = fsub fast float %1870, %1886
  %1888 = fsub fast float %1864, %1883
  %1889 = select i1 %1879, float %1888, float 0.000000e+00
  %1890 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %1891 = extractvalue %dx.types.CBufRet.f32 %1890, 0
  %1892 = extractvalue %dx.types.CBufRet.f32 %1890, 1
  %1893 = extractvalue %dx.types.CBufRet.f32 %1890, 2
  %1894 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %1895 = extractvalue %dx.types.CBufRet.f32 %1894, 0
  %1896 = extractvalue %dx.types.CBufRet.f32 %1894, 1
  %1897 = extractvalue %dx.types.CBufRet.f32 %1894, 2
  %1898 = extractvalue %dx.types.CBufRet.f32 %1894, 3
  %1899 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %1900 = extractvalue %dx.types.CBufRet.f32 %1899, 3
  %1901 = call float @dx.op.binary.f32(i32 36, float %1887, float %1900)  ; FMin(a,b)
  %1902 = fmul fast float %1898, %1889
  %1903 = call float @dx.op.unary.f32(i32 7, float %1902)  ; Saturate(value)
  %1904 = fsub fast float %1895, %1891
  %1905 = fsub fast float %1896, %1892
  %1906 = fsub fast float %1897, %1893
  %1907 = fmul fast float %1903, %1904
  %1908 = fmul fast float %1903, %1905
  %1909 = fmul fast float %1903, %1906
  %1910 = fadd fast float %1907, %1891
  %1911 = fadd fast float %1908, %1892
  %1912 = fadd fast float %1909, %1893
  %1913 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %1914 = extractvalue %dx.types.CBufRet.f32 %1913, 0
  %1915 = extractvalue %dx.types.CBufRet.f32 %1913, 1
  %1916 = fadd fast float %1915, %1914
  %1917 = call float @dx.op.unary.f32(i32 7, float %1916)  ; Saturate(value)
  %1918 = extractvalue %dx.types.CBufRet.f32 %1913, 2
  %1919 = extractvalue %dx.types.CBufRet.f32 %1913, 3
  %1920 = fadd fast float %1919, %1918
  %1921 = call float @dx.op.unary.f32(i32 7, float %1920)  ; Saturate(value)
  %1922 = fmul fast float %1917, %1901
  %1923 = fmul fast float %1922, %1921
  br label %2165

; <label>:1924                                    ; preds = %1878
  br i1 %1879, label %1925, label %1946, !dx.controlflow.hints !72

; <label>:1925                                    ; preds = %1924
  %1926 = call float @dx.op.binary.f32(i32 36, float %1875, float %1865)  ; FMin(a,b)
  %1927 = fsub fast float %1875, %1926
  %1928 = fsub fast float %1927, %1864
  %1929 = call float @dx.op.unary.f32(i32 6, float %1928)  ; FAbs(value)
  %1930 = fadd fast float %1927, %1864
  %1931 = fmul fast float %1930, %1795
  %1932 = fadd fast float %1931, %1808
  %1933 = fmul fast float %1932, %1929
  %1934 = fsub fast float %1870, %1933
  br label %1946

; <label>:1935                                    ; preds = %1863
  br i1 %1877, label %1936, label %1946, !dx.controlflow.hints !73

; <label>:1936                                    ; preds = %1935
  %1937 = call float @dx.op.binary.f32(i32 35, float %1865, float %1875)  ; FMax(a,b)
  %1938 = icmp eq i32 %1814, 0
  %1939 = select i1 %1938, float %1875, float 0.000000e+00
  %1940 = fsub fast float -0.000000e+00, %1939
  %1941 = call float @dx.op.unary.f32(i32 6, float %1940)  ; FAbs(value)
  %1942 = fmul fast float %1939, %1795
  %1943 = fadd fast float %1942, %1808
  %1944 = fmul fast float %1941, %1943
  %1945 = fsub fast float %1870, %1944
  br label %1946

; <label>:1946                                    ; preds = %1936, %1935, %1925, %1924
  %1947 = phi float [ %1865, %1924 ], [ %1865, %1925 ], [ %1937, %1936 ], [ %1865, %1935 ]
  %1948 = phi float [ 0.000000e+00, %1924 ], [ %1929, %1925 ], [ %1941, %1936 ], [ 0.000000e+00, %1935 ]
  %1949 = phi float [ %1870, %1924 ], [ %1934, %1925 ], [ %1945, %1936 ], [ %1870, %1935 ]
  %1950 = phi float [ %1875, %1924 ], [ %1875, %1925 ], [ %1864, %1936 ], [ %1864, %1935 ]
  %1951 = getelementptr inbounds [3 x float], [3 x float]* %19, i32 0, i32 0
  store float -1.000000e+00, float* %1951, align 4, !tbaa !74, !noalias !78
  %1952 = getelementptr inbounds [3 x float], [3 x float]* %19, i32 0, i32 1
  store float -1.000000e+00, float* %1952, align 4, !tbaa !74, !noalias !78
  %1953 = getelementptr inbounds [3 x float], [3 x float]* %19, i32 0, i32 2
  store float -1.000000e+00, float* %1953, align 4, !tbaa !74, !noalias !78
  %1954 = getelementptr inbounds [3 x float], [3 x float]* %20, i32 0, i32 0
  store float -1.000000e+00, float* %1954, align 4, !tbaa !74, !noalias !78
  %1955 = getelementptr inbounds [3 x float], [3 x float]* %20, i32 0, i32 1
  store float -1.000000e+00, float* %1955, align 4, !tbaa !74, !noalias !78
  %1956 = getelementptr inbounds [3 x float], [3 x float]* %20, i32 0, i32 2
  store float -1.000000e+00, float* %1956, align 4, !tbaa !74, !noalias !78
  %1957 = icmp sgt i32 %1816, 0
  br i1 %1957, label %1958, label %2019

; <label>:1958                                    ; preds = %1946
  br label %1959

; <label>:1959                                    ; preds = %2008, %1958
  %1960 = phi i32 [ %2009, %2008 ], [ 0, %1958 ]
  %1961 = phi i32 [ %2010, %2008 ], [ 0, %1958 ]
  %1962 = add nuw i32 %1961, 171
  %1963 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 %1962)  ; CBufferLoadLegacy(handle,regIndex)
  %1964 = extractvalue %dx.types.CBufRet.f32 %1963, 0
  %1965 = extractvalue %dx.types.CBufRet.f32 %1963, 1
  %1966 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1967 = extractvalue %dx.types.CBufRet.f32 %1966, 0
  %1968 = extractvalue %dx.types.CBufRet.f32 %1966, 1
  %1969 = fsub fast float %1964, %1967
  %1970 = fsub fast float %1965, %1968
  %1971 = extractvalue %dx.types.CBufRet.f32 %1963, 2
  %1972 = fsub fast float -0.000000e+00, %1969
  %1973 = fsub fast float -0.000000e+00, %1970
  %1974 = call float @dx.op.dot2.f32(i32 54, float %1793, float %1794, float %1972, float %1973)  ; Dot2(ax,ay,bx,by)
  %1975 = fmul fast float %1974, 2.000000e+00
  %1976 = call float @dx.op.dot2.f32(i32 54, float %1972, float %1973, float %1972, float %1973)  ; Dot2(ax,ay,bx,by)
  %1977 = fmul fast float %1971, %1971
  %1978 = fsub fast float %1976, %1977
  %1979 = fmul fast float %1975, %1975
  %1980 = fmul fast float %1836, %1978
  %1981 = fsub fast float %1979, %1980
  %1982 = fcmp fast ogt float %1981, 0.000000e+00
  br i1 %1982, label %1983, label %1998, !dx.controlflow.hints !66

; <label>:1983                                    ; preds = %1959
  %1984 = fcmp fast ogt float %1975, 0.000000e+00
  %1985 = call float @dx.op.unary.f32(i32 24, float %1981)  ; Sqrt(value)
  %1986 = fsub fast float -0.000000e+00, %1985
  %1987 = select i1 %1984, float %1985, float %1986
  %1988 = fadd fast float %1987, %1975
  %1989 = fmul float %1988, -5.000000e-01
  %1990 = fdiv fast float %1989, %1829
  %1991 = call float @dx.op.binary.f32(i32 35, float %1990, float 0.000000e+00)  ; FMax(a,b)
  %1992 = call float @dx.op.binary.f32(i32 36, float %1864, float %1991)  ; FMin(a,b)
  %1993 = fdiv fast float %1978, %1989
  %1994 = call float @dx.op.binary.f32(i32 35, float %1993, float 0.000000e+00)  ; FMax(a,b)
  %1995 = call float @dx.op.binary.f32(i32 36, float %1864, float %1994)  ; FMin(a,b)
  %1996 = call float @dx.op.binary.f32(i32 36, float %1992, float %1995)  ; FMin(a,b)
  %1997 = call float @dx.op.binary.f32(i32 35, float %1992, float %1995)  ; FMax(a,b)
  br label %1998

; <label>:1998                                    ; preds = %1983, %1959
  %1999 = phi float [ %1997, %1983 ], [ -1.000000e+00, %1959 ]
  %2000 = phi float [ %1996, %1983 ], [ -1.000000e+00, %1959 ]
  %2001 = phi i1 [ true, %1983 ], [ false, %1959 ]
  br i1 %2001, label %2002, label %2008, !dx.controlflow.hints !89

; <label>:2002                                    ; preds = %1998
  %2003 = call float @dx.op.binary.f32(i32 35, float %1947, float %2000)  ; FMax(a,b)
  %2004 = getelementptr inbounds [3 x float], [3 x float]* %19, i32 0, i32 %1961
  store float %2003, float* %2004, align 4, !tbaa !74, !noalias !78
  %2005 = call float @dx.op.binary.f32(i32 35, float %1947, float %1999)  ; FMax(a,b)
  %2006 = getelementptr inbounds [3 x float], [3 x float]* %20, i32 0, i32 %1961
  store float %2005, float* %2006, align 4, !tbaa !74, !noalias !78
  %2007 = add nsw i32 %1960, 1
  br label %2008

; <label>:2008                                    ; preds = %2002, %1998
  %2009 = phi i32 [ %2007, %2002 ], [ %1960, %1998 ]
  %2010 = add nuw nsw i32 %1961, 1
  %2011 = icmp eq i32 %2010, %1816
  br i1 %2011, label %2012, label %1959

; <label>:2012                                    ; preds = %2008
  %2013 = load float, float* %1953, align 4, !tbaa !74, !alias.scope !90, !noalias !93
  %2014 = load float, float* %1952, align 4, !tbaa !74, !alias.scope !96, !noalias !97
  %2015 = load float, float* %1951, align 4, !tbaa !74, !alias.scope !98, !noalias !99
  %2016 = load float, float* %1956, align 4, !tbaa !74, !alias.scope !100, !noalias !103
  %2017 = load float, float* %1955, align 4, !tbaa !74, !alias.scope !106, !noalias !107
  %2018 = load float, float* %1954, align 4, !tbaa !74, !alias.scope !108, !noalias !109
  br label %2019

; <label>:2019                                    ; preds = %2012, %1946
  %2020 = phi float [ -1.000000e+00, %1946 ], [ %2018, %2012 ]
  %2021 = phi float [ -1.000000e+00, %1946 ], [ %2017, %2012 ]
  %2022 = phi float [ -1.000000e+00, %1946 ], [ %2016, %2012 ]
  %2023 = phi float [ -1.000000e+00, %1946 ], [ %2015, %2012 ]
  %2024 = phi float [ -1.000000e+00, %1946 ], [ %2014, %2012 ]
  %2025 = phi float [ -1.000000e+00, %1946 ], [ %2013, %2012 ]
  %2026 = phi i32 [ 0, %1946 ], [ %2009, %2012 ]
  %2027 = call float @dx.op.binary.f32(i32 36, float %2024, float %2025)  ; FMin(a,b)
  %2028 = call float @dx.op.binary.f32(i32 36, float %2023, float %2027)  ; FMin(a,b)
  %2029 = call float @dx.op.binary.f32(i32 35, float %2023, float %2024)  ; FMax(a,b)
  %2030 = call float @dx.op.binary.f32(i32 36, float %2029, float %2025)  ; FMin(a,b)
  %2031 = call float @dx.op.binary.f32(i32 36, float %2023, float %2024)  ; FMin(a,b)
  %2032 = call float @dx.op.binary.f32(i32 35, float %2031, float %2030)  ; FMax(a,b)
  %2033 = call float @dx.op.binary.f32(i32 35, float %2024, float %2025)  ; FMax(a,b)
  %2034 = call float @dx.op.binary.f32(i32 35, float %2023, float %2033)  ; FMax(a,b)
  store float %2028, float* %1951, align 4, !tbaa !74, !alias.scope !98, !noalias !99
  store float %2032, float* %1952, align 4, !tbaa !74, !alias.scope !96, !noalias !97
  store float %2034, float* %1953, align 4, !tbaa !74, !alias.scope !90, !noalias !93
  %2035 = call float @dx.op.binary.f32(i32 36, float %2021, float %2022)  ; FMin(a,b)
  %2036 = call float @dx.op.binary.f32(i32 36, float %2020, float %2035)  ; FMin(a,b)
  %2037 = call float @dx.op.binary.f32(i32 35, float %2020, float %2021)  ; FMax(a,b)
  %2038 = call float @dx.op.binary.f32(i32 36, float %2037, float %2022)  ; FMin(a,b)
  %2039 = call float @dx.op.binary.f32(i32 36, float %2020, float %2021)  ; FMin(a,b)
  %2040 = call float @dx.op.binary.f32(i32 35, float %2039, float %2038)  ; FMax(a,b)
  %2041 = call float @dx.op.binary.f32(i32 35, float %2021, float %2022)  ; FMax(a,b)
  %2042 = call float @dx.op.binary.f32(i32 35, float %2020, float %2041)  ; FMax(a,b)
  store float %2036, float* %1954, align 4, !tbaa !74, !alias.scope !108, !noalias !109
  store float %2040, float* %1955, align 4, !tbaa !74, !alias.scope !106, !noalias !107
  store float %2042, float* %1956, align 4, !tbaa !74, !alias.scope !100, !noalias !103
  %2043 = sub nsw i32 3, %2026
  %2044 = icmp sgt i32 %2043, 2
  br i1 %2044, label %2045, label %2083, !dx.controlflow.hints !110

; <label>:2045                                    ; preds = %2019
  %2046 = icmp eq i32 %1814, 0
  %2047 = fsub fast float %1864, %1948
  %2048 = select i1 %2046, float %2047, float %1948
  %2049 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %2050 = extractvalue %dx.types.CBufRet.f32 %2049, 0
  %2051 = extractvalue %dx.types.CBufRet.f32 %2049, 1
  %2052 = extractvalue %dx.types.CBufRet.f32 %2049, 2
  %2053 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %2054 = extractvalue %dx.types.CBufRet.f32 %2053, 0
  %2055 = extractvalue %dx.types.CBufRet.f32 %2053, 1
  %2056 = extractvalue %dx.types.CBufRet.f32 %2053, 2
  %2057 = extractvalue %dx.types.CBufRet.f32 %2053, 3
  %2058 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %2059 = extractvalue %dx.types.CBufRet.f32 %2058, 3
  %2060 = call float @dx.op.binary.f32(i32 36, float %1949, float %2059)  ; FMin(a,b)
  %2061 = fmul fast float %2057, %2048
  %2062 = call float @dx.op.unary.f32(i32 7, float %2061)  ; Saturate(value)
  %2063 = fsub fast float %2054, %2050
  %2064 = fsub fast float %2055, %2051
  %2065 = fsub fast float %2056, %2052
  %2066 = fmul fast float %2062, %2063
  %2067 = fmul fast float %2062, %2064
  %2068 = fmul fast float %2062, %2065
  %2069 = fadd fast float %2066, %2050
  %2070 = fadd fast float %2067, %2051
  %2071 = fadd fast float %2068, %2052
  %2072 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %2073 = extractvalue %dx.types.CBufRet.f32 %2072, 0
  %2074 = extractvalue %dx.types.CBufRet.f32 %2072, 1
  %2075 = fadd fast float %2074, %2073
  %2076 = call float @dx.op.unary.f32(i32 7, float %2075)  ; Saturate(value)
  %2077 = extractvalue %dx.types.CBufRet.f32 %2072, 2
  %2078 = extractvalue %dx.types.CBufRet.f32 %2072, 3
  %2079 = fadd fast float %2078, %2077
  %2080 = call float @dx.op.unary.f32(i32 7, float %2079)  ; Saturate(value)
  %2081 = fmul fast float %2076, %2060
  %2082 = fmul fast float %2081, %2080
  br label %2165

; <label>:2083                                    ; preds = %2019
  %2084 = getelementptr inbounds [3 x float], [3 x float]* %19, i32 0, i32 %2043
  %2085 = load float, float* %2084, align 4, !tbaa !74, !noalias !78
  %2086 = fcmp fast olt float %2085, %1950
  %2087 = icmp sgt i32 %2026, 0
  %2088 = and i1 %2087, %2086
  br i1 %2088, label %2089, label %2126

; <label>:2089                                    ; preds = %2083
  br label %2090

; <label>:2090                                    ; preds = %2119, %2089
  %2091 = phi float [ %2120, %2119 ], [ %1948, %2089 ]
  %2092 = phi float [ %2121, %2119 ], [ %1949, %2089 ]
  %2093 = phi float [ %2101, %2119 ], [ %2085, %2089 ]
  %2094 = phi i32 [ %2098, %2119 ], [ %2043, %2089 ]
  %2095 = getelementptr inbounds [3 x float], [3 x float]* %20, i32 0, i32 %2094
  %2096 = load float, float* %2095, align 4, !tbaa !74, !noalias !78
  %2097 = icmp slt i32 %2094, 2
  %2098 = add nsw i32 %2094, 1
  %2099 = getelementptr inbounds [3 x float], [3 x float]* %19, i32 0, i32 %2098
  %2100 = load float, float* %2099, align 4, !tbaa !74, !noalias !78
  %2101 = select i1 %2097, float %2100, float %1864
  %2102 = call float @dx.op.binary.f32(i32 36, float %2101, float %2096)  ; FMin(a,b)
  %2103 = call float @dx.op.binary.f32(i32 36, float %1950, float %2102)  ; FMin(a,b)
  %2104 = icmp eq i32 %1814, 0
  %2105 = fadd fast float %2103, %2093
  %2106 = fmul fast float %2105, %1795
  %2107 = fadd fast float %2106, %1808
  br i1 %2104, label %2113, label %2108, !dx.controlflow.hints !111

; <label>:2108                                    ; preds = %2090
  %2109 = fsub fast float %2103, %2093
  %2110 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2109)  ; FMax(a,b)
  %2111 = fmul fast float %2110, %2107
  %2112 = fadd fast float %2111, %2092
  br label %2119

; <label>:2113                                    ; preds = %2090
  %2114 = fsub fast float %2093, %2103
  %2115 = call float @dx.op.unary.f32(i32 6, float %2114)  ; FAbs(value)
  %2116 = fadd fast float %2115, %2091
  %2117 = fmul fast float %2115, %2107
  %2118 = fsub fast float %2092, %2117
  br label %2119

; <label>:2119                                    ; preds = %2113, %2108
  %2120 = phi float [ %2110, %2108 ], [ %2116, %2113 ]
  %2121 = phi float [ %2112, %2108 ], [ %2118, %2113 ]
  %2122 = fcmp fast olt float %2101, %1950
  %2123 = icmp slt i32 %2098, 3
  %2124 = and i1 %2123, %2122
  br i1 %2124, label %2090, label %2125

; <label>:2125                                    ; preds = %2119
  br label %2126

; <label>:2126                                    ; preds = %2125, %2083
  %2127 = phi float [ %1948, %2083 ], [ %2120, %2125 ]
  %2128 = phi float [ %1949, %2083 ], [ %2121, %2125 ]
  %2129 = fsub fast float %1864, %2127
  %2130 = select i1 %1866, float %2127, float %2129
  %2131 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %2132 = extractvalue %dx.types.CBufRet.f32 %2131, 0
  %2133 = extractvalue %dx.types.CBufRet.f32 %2131, 1
  %2134 = extractvalue %dx.types.CBufRet.f32 %2131, 2
  %2135 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %2136 = extractvalue %dx.types.CBufRet.f32 %2135, 0
  %2137 = extractvalue %dx.types.CBufRet.f32 %2135, 1
  %2138 = extractvalue %dx.types.CBufRet.f32 %2135, 2
  %2139 = extractvalue %dx.types.CBufRet.f32 %2135, 3
  %2140 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %2141 = extractvalue %dx.types.CBufRet.f32 %2140, 3
  %2142 = call float @dx.op.binary.f32(i32 36, float %2128, float %2141)  ; FMin(a,b)
  %2143 = fmul fast float %2139, %2130
  %2144 = call float @dx.op.unary.f32(i32 7, float %2143)  ; Saturate(value)
  %2145 = fsub fast float %2136, %2132
  %2146 = fsub fast float %2137, %2133
  %2147 = fsub fast float %2138, %2134
  %2148 = fmul fast float %2144, %2145
  %2149 = fmul fast float %2144, %2146
  %2150 = fmul fast float %2144, %2147
  %2151 = fadd fast float %2148, %2132
  %2152 = fadd fast float %2149, %2133
  %2153 = fadd fast float %2150, %2134
  %2154 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %2155 = extractvalue %dx.types.CBufRet.f32 %2154, 0
  %2156 = extractvalue %dx.types.CBufRet.f32 %2154, 1
  %2157 = fadd fast float %2156, %2155
  %2158 = call float @dx.op.unary.f32(i32 7, float %2157)  ; Saturate(value)
  %2159 = extractvalue %dx.types.CBufRet.f32 %2154, 2
  %2160 = extractvalue %dx.types.CBufRet.f32 %2154, 3
  %2161 = fadd fast float %2160, %2159
  %2162 = call float @dx.op.unary.f32(i32 7, float %2161)  ; Saturate(value)
  %2163 = fmul fast float %2158, %2142
  %2164 = fmul fast float %2163, %2162
  br label %2165

; <label>:2165                                    ; preds = %2126, %2045, %1880, %1862, %1860
  %2166 = phi float [ %1889, %1880 ], [ %2048, %2045 ], [ %2130, %2126 ], [ 0.000000e+00, %1860 ], [ 0.000000e+00, %1862 ]
  %2167 = phi float [ %1923, %1880 ], [ %2082, %2045 ], [ %2164, %2126 ], [ 0.000000e+00, %1860 ], [ 0.000000e+00, %1862 ]
  %2168 = phi float [ %1910, %1880 ], [ %2069, %2045 ], [ %2151, %2126 ], [ 0.000000e+00, %1860 ], [ 0.000000e+00, %1862 ]
  %2169 = phi float [ %1911, %1880 ], [ %2070, %2045 ], [ %2152, %2126 ], [ 0.000000e+00, %1860 ], [ 0.000000e+00, %1862 ]
  %2170 = phi float [ %1912, %1880 ], [ %2071, %2045 ], [ %2153, %2126 ], [ 0.000000e+00, %1860 ], [ 0.000000e+00, %1862 ]
  %2171 = fmul fast float %1803, %2167
  %2172 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2173 = extractvalue %dx.types.CBufRet.f32 %2172, 2
  %2174 = fsub fast float %1810, %2173
  %2175 = fcmp fast olt float %2171, -2.000000e+01
  %2176 = call float @dx.op.unary.f32(i32 21, float %2171)  ; Exp(value)
  %2177 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %2178 = extractvalue %dx.types.CBufRet.f32 %2177, 2
  %2179 = extractvalue %dx.types.CBufRet.f32 %2177, 3
  %2180 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %2181 = extractvalue %dx.types.CBufRet.f32 %2180, 2
  %2182 = fmul fast float %2179, %2174
  %2183 = call float @dx.op.unary.f32(i32 7, float %2182)  ; Saturate(value)
  %2184 = fsub fast float 1.000000e+00, %2183
  %2185 = fmul fast float %1795, 5.000000e-01
  %2186 = fadd fast float %2185, 5.000000e-01
  %2187 = call float @dx.op.unary.f32(i32 7, float %2186)  ; Saturate(value)
  %2188 = fsub fast float 1.000000e+00, %2187
  %2189 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %2184)  ; FMax(a,b)
  %2190 = fdiv fast float %2188, %2189
  %2191 = fsub fast float %2174, %1761
  %2192 = call float @dx.op.unary.f32(i32 6, float %2191)  ; FAbs(value)
  %2193 = fmul fast float %2192, %2178
  %2194 = call float @dx.op.unary.f32(i32 7, float %2190)  ; Saturate(value)
  %2195 = fsub fast float 1.000000e+00, %2193
  %2196 = fmul fast float %2195, %2194
  %2197 = fadd fast float %2196, %2193
  %2198 = fmul fast float %2181, %2174
  %2199 = call float @dx.op.unary.f32(i32 7, float %2198)  ; Saturate(value)
  %2200 = fsub fast float 1.000000e+00, %2197
  %2201 = fmul fast float %2200, %2199
  %2202 = fadd fast float %2201, %2197
  %2203 = call float @dx.op.unary.f32(i32 7, float %2202)  ; Saturate(value)
  %2204 = fadd fast float %2176, -1.000000e+00
  %2205 = select i1 %2175, float -1.000000e+00, float %2204
  %2206 = fmul fast float %2203, %2205
  %2207 = fadd fast float %2206, 1.000000e+00
  %2208 = fsub fast float -0.000000e+00, %2206
  %2209 = fmul fast float %2168, %2208
  %2210 = fmul fast float %2169, %2208
  %2211 = fmul fast float %2170, %2208
  br label %2212

; <label>:2212                                    ; preds = %2165, %1714
  %2213 = phi float [ %2166, %2165 ], [ 0.000000e+00, %1714 ]
  %2214 = phi float [ %2207, %2165 ], [ 1.000000e+00, %1714 ]
  %2215 = phi float [ %2209, %2165 ], [ 0.000000e+00, %1714 ]
  %2216 = phi float [ %2210, %2165 ], [ 0.000000e+00, %1714 ]
  %2217 = phi float [ %2211, %2165 ], [ 0.000000e+00, %1714 ]
  %2218 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %2219 = extractvalue %dx.types.CBufRet.f32 %2218, 1
  %2220 = fsub fast float 1.000000e+00, %2214
  %2221 = fmul fast float %2220, %1796
  %2222 = fmul fast float %2221, %2219
  %2223 = fsub fast float %1796, %2222
  br i1 %1789, label %2224, label %2253, !dx.controlflow.hints !112

; <label>:2224                                    ; preds = %2212
  %2225 = fmul fast float %1797, %1786
  %2226 = fadd fast float %2225, %1787
  %2227 = call float @dx.op.unary.f32(i32 7, float %2226)  ; Saturate(value)
  %2228 = fmul fast float %1768, %2223
  %2229 = fsub fast float -0.000000e+00, %2228
  %2230 = fmul fast float %1769, %2223
  %2231 = fsub fast float -0.000000e+00, %2230
  %2232 = call float @dx.op.unary.f32(i32 21, float %2229)  ; Exp(value)
  %2233 = call float @dx.op.unary.f32(i32 21, float %2231)  ; Exp(value)
  %2234 = call float @dx.op.binary.f32(i32 35, float %1776, float %2232)  ; FMax(a,b)
  %2235 = call float @dx.op.binary.f32(i32 35, float %1776, float %2233)  ; FMax(a,b)
  %2236 = fsub fast float %2235, %2234
  %2237 = fmul fast float %2236, %2227
  %2238 = fadd fast float %2237, %2234
  %2239 = call float @dx.op.unary.f32(i32 7, float %2238)  ; Saturate(value)
  %2240 = fsub fast float %1773, %1778
  %2241 = fsub fast float %1774, %1779
  %2242 = fsub fast float %1775, %1780
  %2243 = fmul fast float %2227, %2240
  %2244 = fmul fast float %2227, %2241
  %2245 = fmul fast float %2227, %2242
  %2246 = fadd fast float %2243, %1778
  %2247 = fadd fast float %2244, %1779
  %2248 = fadd fast float %2245, %1780
  %2249 = fsub fast float 1.000000e+00, %2239
  %2250 = fmul fast float %2249, %2246
  %2251 = fmul fast float %2249, %2247
  %2252 = fmul fast float %2249, %2248
  br label %2312

; <label>:2253                                    ; preds = %2212
  %2254 = fmul fast float %2223, %1785
  %2255 = call float @dx.op.unary.f32(i32 7, float %2254)  ; Saturate(value)
  %2256 = fsub fast float 2.000000e+00, %2255
  %2257 = fmul fast float %2255, 9.921875e-01
  %2258 = fmul fast float %2257, %2256
  %2259 = fadd fast float %2258, 3.906250e-03
  %2260 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %13, float %2259, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2261 = extractvalue %dx.types.ResRet.f32 %2260, 0
  %2262 = fsub fast float %2255, %2261
  %2263 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2262)  ; FMax(a,b)
  %2264 = fmul fast float %1771, %1761
  %2265 = call float @dx.op.unary.f32(i32 6, float %2264)  ; FAbs(value)
  %2266 = fcmp fast ogt float %2265, 0x3EB0C6F7A0000000
  br i1 %2266, label %2267, label %2273, !dx.controlflow.hints !113

; <label>:2267                                    ; preds = %2253
  %2268 = fmul fast float %2264, 0xBFF7154760000000
  %2269 = call float @dx.op.unary.f32(i32 21, float %2268)  ; Exp(value)
  %2270 = fsub fast float 1.000000e+00, %2269
  %2271 = fdiv fast float %2270, %2264
  %2272 = fmul fast float %2271, %1781
  br label %2273

; <label>:2273                                    ; preds = %2267, %2253
  %2274 = phi float [ %2272, %2267 ], [ %1781, %2253 ]
  %2275 = fadd fast float %2274, %1783
  %2276 = fmul fast float %2275, %2263
  %2277 = fmul fast float %1768, %2276
  %2278 = fsub fast float -0.000000e+00, %2277
  %2279 = fmul fast float %1769, %2276
  %2280 = fsub fast float -0.000000e+00, %2279
  %2281 = fmul fast float %1770, %2276
  %2282 = fsub fast float -0.000000e+00, %2281
  %2283 = call float @dx.op.unary.f32(i32 21, float %2278)  ; Exp(value)
  %2284 = call float @dx.op.unary.f32(i32 21, float %2280)  ; Exp(value)
  %2285 = call float @dx.op.unary.f32(i32 21, float %2282)  ; Exp(value)
  %2286 = fmul fast float %1797, %1797
  %2287 = fadd fast float %2286, 1.000000e+00
  %2288 = fmul fast float %2287, 0x3FAE8EC8A0000000
  %2289 = fmul fast float %2288, %1778
  %2290 = fmul fast float %2288, %1779
  %2291 = fmul fast float %2288, %1780
  %2292 = fmul fast float %1797, %1776
  %2293 = fsub fast float 1.000000e+00, %2292
  %2294 = fmul fast float %1776, %1776
  %2295 = fsub fast float 1.000000e+00, %2294
  %2296 = fmul fast float %2295, 0x3FB45F3060000000
  %2297 = fmul fast float %2293, %2293
  %2298 = fdiv fast float 1.000000e+00, %2297
  %2299 = fmul fast float %2296, %2298
  %2300 = fmul fast float %2299, %1773
  %2301 = fmul fast float %2299, %1774
  %2302 = fmul fast float %2299, %1775
  %2303 = fadd fast float %2300, %2289
  %2304 = fadd fast float %2301, %2290
  %2305 = fadd fast float %2302, %2291
  %2306 = fsub fast float 1.000000e+00, %2283
  %2307 = fsub fast float 1.000000e+00, %2284
  %2308 = fsub fast float 1.000000e+00, %2285
  %2309 = fmul fast float %2303, %2306
  %2310 = fmul fast float %2304, %2307
  %2311 = fmul fast float %2305, %2308
  br label %2312

; <label>:2312                                    ; preds = %2273, %2224
  %2313 = phi float [ %2250, %2224 ], [ %2309, %2273 ]
  %2314 = phi float [ %2251, %2224 ], [ %2310, %2273 ]
  %2315 = phi float [ %2252, %2224 ], [ %2311, %2273 ]
  %2316 = phi float [ %2239, %2224 ], [ %2283, %2273 ]
  %2317 = phi float [ %2239, %2224 ], [ %2284, %2273 ]
  %2318 = phi float [ %2239, %2224 ], [ %2285, %2273 ]
  br i1 %1805, label %2319, label %2517, !dx.controlflow.hints !114

; <label>:2319                                    ; preds = %2312
  %2320 = extractvalue %dx.types.CBufRet.f32 %2218, 0
  %2321 = fmul fast float %2320, %2220
  %2322 = fsub fast float %2215, %2313
  %2323 = fsub fast float %2216, %2314
  %2324 = fsub fast float %2217, %2315
  %2325 = fmul fast float %2321, %2322
  %2326 = fmul fast float %2321, %2323
  %2327 = fmul fast float %2321, %2324
  %2328 = fadd fast float %2325, %2313
  %2329 = fadd fast float %2326, %2314
  %2330 = fadd fast float %2327, %2315
  %2331 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %2316)  ; FMax(a,b)
  %2332 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %2317)  ; FMax(a,b)
  %2333 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %2318)  ; FMax(a,b)
  %2334 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %2214)  ; FMax(a,b)
  %2335 = call float @dx.op.binary.f32(i32 35, float %2213, float %2223)  ; FMax(a,b)
  %2336 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %2335)  ; FMax(a,b)
  %2337 = fdiv fast float %2213, %2336
  %2338 = call float @dx.op.unary.f32(i32 7, float %2337)  ; Saturate(value)
  %2339 = fdiv fast float %2223, %2336
  %2340 = call float @dx.op.unary.f32(i32 7, float %2339)  ; Saturate(value)
  %2341 = fcmp fast une float %2334, 1.000000e+00
  br i1 %2341, label %2342, label %2355, !dx.controlflow.hints !115

; <label>:2342                                    ; preds = %2319
  %2343 = call float @dx.op.unary.f32(i32 23, float %2334)  ; Log(value)
  %2344 = fmul fast float %2343, 0x3FE62E4300000000
  %2345 = fmul fast float %2215, %2344
  %2346 = fsub fast float -0.000000e+00, %2345
  %2347 = fmul fast float %2216, %2344
  %2348 = fsub fast float -0.000000e+00, %2347
  %2349 = fmul fast float %2217, %2344
  %2350 = fsub fast float -0.000000e+00, %2349
  %2351 = fsub fast float 1.000000e+00, %2334
  %2352 = fdiv fast float %2346, %2351
  %2353 = fdiv fast float %2348, %2351
  %2354 = fdiv fast float %2350, %2351
  br label %2355

; <label>:2355                                    ; preds = %2342, %2319
  %2356 = phi float [ %2352, %2342 ], [ %2215, %2319 ]
  %2357 = phi float [ %2353, %2342 ], [ %2216, %2319 ]
  %2358 = phi float [ %2354, %2342 ], [ %2217, %2319 ]
  %2359 = phi float [ %2344, %2342 ], [ 0.000000e+00, %2319 ]
  %2360 = fcmp fast une float %2331, 1.000000e+00
  br i1 %2360, label %2361, label %2368, !dx.controlflow.hints !116

; <label>:2361                                    ; preds = %2355
  %2362 = call float @dx.op.unary.f32(i32 23, float %2331)  ; Log(value)
  %2363 = fmul fast float %2362, 0x3FE62E4300000000
  %2364 = fmul fast float %2328, %2363
  %2365 = fsub fast float -0.000000e+00, %2364
  %2366 = fsub fast float 1.000000e+00, %2331
  %2367 = fdiv fast float %2365, %2366
  br label %2368

; <label>:2368                                    ; preds = %2361, %2355
  %2369 = phi float [ %2367, %2361 ], [ %2328, %2355 ]
  %2370 = phi float [ %2363, %2361 ], [ 0.000000e+00, %2355 ]
  %2371 = fcmp fast une float %2332, 1.000000e+00
  br i1 %2371, label %2372, label %2379, !dx.controlflow.hints !116

; <label>:2372                                    ; preds = %2368
  %2373 = call float @dx.op.unary.f32(i32 23, float %2332)  ; Log(value)
  %2374 = fmul fast float %2373, 0x3FE62E4300000000
  %2375 = fmul fast float %2329, %2374
  %2376 = fsub fast float -0.000000e+00, %2375
  %2377 = fsub fast float 1.000000e+00, %2332
  %2378 = fdiv fast float %2376, %2377
  br label %2379

; <label>:2379                                    ; preds = %2372, %2368
  %2380 = phi float [ %2378, %2372 ], [ %2329, %2368 ]
  %2381 = phi float [ %2374, %2372 ], [ 0.000000e+00, %2368 ]
  %2382 = fcmp fast une float %2333, 1.000000e+00
  br i1 %2382, label %2383, label %2390, !dx.controlflow.hints !116

; <label>:2383                                    ; preds = %2379
  %2384 = call float @dx.op.unary.f32(i32 23, float %2333)  ; Log(value)
  %2385 = fmul fast float %2384, 0x3FE62E4300000000
  %2386 = fmul fast float %2330, %2385
  %2387 = fsub fast float -0.000000e+00, %2386
  %2388 = fsub fast float 1.000000e+00, %2333
  %2389 = fdiv fast float %2387, %2388
  br label %2390

; <label>:2390                                    ; preds = %2383, %2379
  %2391 = phi float [ %2389, %2383 ], [ %2330, %2379 ]
  %2392 = phi float [ %2385, %2383 ], [ 0.000000e+00, %2379 ]
  %2393 = fmul fast float %2356, %2340
  %2394 = fmul fast float %2357, %2340
  %2395 = fmul fast float %2358, %2340
  %2396 = fmul fast float %2359, %2340
  %2397 = fmul fast float %2369, %2338
  %2398 = fmul fast float %2380, %2338
  %2399 = fmul fast float %2391, %2338
  %2400 = fmul fast float %2370, %2338
  %2401 = fmul fast float %2381, %2338
  %2402 = fmul fast float %2392, %2338
  %2403 = fadd fast float %2397, %2393
  %2404 = fadd fast float %2398, %2394
  %2405 = fadd fast float %2399, %2395
  %2406 = fadd fast float %2400, %2396
  %2407 = fadd fast float %2401, %2396
  %2408 = fadd fast float %2402, %2396
  %2409 = fcmp fast une float %2406, 0.000000e+00
  br i1 %2409, label %2410, label %2417, !dx.controlflow.hints !117

; <label>:2410                                    ; preds = %2390
  %2411 = fmul fast float %2406, 0x3FF7154760000000
  %2412 = call float @dx.op.unary.f32(i32 21, float %2411)  ; Exp(value)
  %2413 = fsub fast float 1.000000e+00, %2412
  %2414 = fmul fast float %2403, %2413
  %2415 = fsub fast float -0.000000e+00, %2414
  %2416 = fdiv fast float %2415, %2406
  br label %2417

; <label>:2417                                    ; preds = %2410, %2390
  %2418 = phi float [ %2412, %2410 ], [ 1.000000e+00, %2390 ]
  %2419 = phi float [ %2416, %2410 ], [ %2403, %2390 ]
  %2420 = fcmp fast une float %2407, 0.000000e+00
  br i1 %2420, label %2421, label %2428, !dx.controlflow.hints !117

; <label>:2421                                    ; preds = %2417
  %2422 = fmul fast float %2407, 0x3FF7154760000000
  %2423 = call float @dx.op.unary.f32(i32 21, float %2422)  ; Exp(value)
  %2424 = fsub fast float 1.000000e+00, %2423
  %2425 = fmul fast float %2404, %2424
  %2426 = fsub fast float -0.000000e+00, %2425
  %2427 = fdiv fast float %2426, %2407
  br label %2428

; <label>:2428                                    ; preds = %2421, %2417
  %2429 = phi float [ %2423, %2421 ], [ 1.000000e+00, %2417 ]
  %2430 = phi float [ %2427, %2421 ], [ %2404, %2417 ]
  %2431 = fcmp fast une float %2408, 0.000000e+00
  br i1 %2431, label %2432, label %2439, !dx.controlflow.hints !117

; <label>:2432                                    ; preds = %2428
  %2433 = fmul fast float %2408, 0x3FF7154760000000
  %2434 = call float @dx.op.unary.f32(i32 21, float %2433)  ; Exp(value)
  %2435 = fsub fast float 1.000000e+00, %2434
  %2436 = fmul fast float %2405, %2435
  %2437 = fsub fast float -0.000000e+00, %2436
  %2438 = fdiv fast float %2437, %2408
  br label %2439

; <label>:2439                                    ; preds = %2432, %2428
  %2440 = phi float [ %2434, %2432 ], [ 1.000000e+00, %2428 ]
  %2441 = phi float [ %2438, %2432 ], [ %2405, %2428 ]
  %2442 = fcmp fast ogt float %2338, %2340
  br i1 %2442, label %2443, label %2463, !dx.controlflow.hints !118

; <label>:2443                                    ; preds = %2439
  %2444 = fsub fast float 1.000000e+00, %2340
  %2445 = fmul fast float %2356, %2444
  %2446 = fmul fast float %2357, %2444
  %2447 = fmul fast float %2358, %2444
  %2448 = fmul fast float %2359, %2444
  %2449 = fcmp fast une float %2448, 0.000000e+00
  br i1 %2449, label %2450, label %2501, !dx.controlflow.hints !119

; <label>:2450                                    ; preds = %2443
  %2451 = fmul fast float %2448, 0x3FF7154760000000
  %2452 = call float @dx.op.unary.f32(i32 21, float %2451)  ; Exp(value)
  %2453 = fsub fast float 1.000000e+00, %2452
  %2454 = fmul fast float %2445, %2453
  %2455 = fsub fast float -0.000000e+00, %2454
  %2456 = fmul fast float %2446, %2453
  %2457 = fsub fast float -0.000000e+00, %2456
  %2458 = fmul fast float %2447, %2453
  %2459 = fsub fast float -0.000000e+00, %2458
  %2460 = fdiv fast float %2455, %2448
  %2461 = fdiv fast float %2457, %2448
  %2462 = fdiv fast float %2459, %2448
  br label %2501

; <label>:2463                                    ; preds = %2439
  %2464 = fsub fast float 1.000000e+00, %2338
  %2465 = fmul fast float %2369, %2464
  %2466 = fmul fast float %2380, %2464
  %2467 = fmul fast float %2391, %2464
  %2468 = fmul fast float %2370, %2464
  %2469 = fmul fast float %2381, %2464
  %2470 = fmul fast float %2392, %2464
  %2471 = fcmp fast une float %2468, 0.000000e+00
  br i1 %2471, label %2472, label %2479, !dx.controlflow.hints !117

; <label>:2472                                    ; preds = %2463
  %2473 = fmul fast float %2468, 0x3FF7154760000000
  %2474 = call float @dx.op.unary.f32(i32 21, float %2473)  ; Exp(value)
  %2475 = fsub fast float 1.000000e+00, %2474
  %2476 = fmul fast float %2465, %2475
  %2477 = fsub fast float -0.000000e+00, %2476
  %2478 = fdiv fast float %2477, %2468
  br label %2479

; <label>:2479                                    ; preds = %2472, %2463
  %2480 = phi float [ %2478, %2472 ], [ %2465, %2463 ]
  %2481 = phi float [ %2474, %2472 ], [ 1.000000e+00, %2463 ]
  %2482 = fcmp fast une float %2469, 0.000000e+00
  br i1 %2482, label %2483, label %2490, !dx.controlflow.hints !117

; <label>:2483                                    ; preds = %2479
  %2484 = fmul fast float %2469, 0x3FF7154760000000
  %2485 = call float @dx.op.unary.f32(i32 21, float %2484)  ; Exp(value)
  %2486 = fsub fast float 1.000000e+00, %2485
  %2487 = fmul fast float %2466, %2486
  %2488 = fsub fast float -0.000000e+00, %2487
  %2489 = fdiv fast float %2488, %2469
  br label %2490

; <label>:2490                                    ; preds = %2483, %2479
  %2491 = phi float [ %2489, %2483 ], [ %2466, %2479 ]
  %2492 = phi float [ %2485, %2483 ], [ 1.000000e+00, %2479 ]
  %2493 = fcmp fast une float %2470, 0.000000e+00
  br i1 %2493, label %2494, label %2501, !dx.controlflow.hints !117

; <label>:2494                                    ; preds = %2490
  %2495 = fmul fast float %2470, 0x3FF7154760000000
  %2496 = call float @dx.op.unary.f32(i32 21, float %2495)  ; Exp(value)
  %2497 = fsub fast float 1.000000e+00, %2496
  %2498 = fmul fast float %2467, %2497
  %2499 = fsub fast float -0.000000e+00, %2498
  %2500 = fdiv fast float %2499, %2470
  br label %2501

; <label>:2501                                    ; preds = %2494, %2490, %2450, %2443
  %2502 = phi float [ %2500, %2494 ], [ %2462, %2450 ], [ %2447, %2443 ], [ %2467, %2490 ]
  %2503 = phi float [ %2491, %2494 ], [ %2461, %2450 ], [ %2446, %2443 ], [ %2491, %2490 ]
  %2504 = phi float [ %2480, %2494 ], [ %2460, %2450 ], [ %2445, %2443 ], [ %2480, %2490 ]
  %2505 = phi float [ %2496, %2494 ], [ %2452, %2450 ], [ 1.000000e+00, %2443 ], [ 1.000000e+00, %2490 ]
  %2506 = phi float [ %2492, %2494 ], [ %2452, %2450 ], [ 1.000000e+00, %2443 ], [ %2492, %2490 ]
  %2507 = phi float [ %2481, %2494 ], [ %2452, %2450 ], [ 1.000000e+00, %2443 ], [ %2481, %2490 ]
  %2508 = fmul fast float %2507, %2419
  %2509 = fmul fast float %2506, %2430
  %2510 = fmul fast float %2505, %2441
  %2511 = fadd fast float %2508, %2504
  %2512 = fadd fast float %2509, %2503
  %2513 = fadd fast float %2510, %2502
  %2514 = fmul fast float %2507, %2418
  %2515 = fmul fast float %2506, %2429
  %2516 = fmul fast float %2505, %2440
  br label %2517

; <label>:2517                                    ; preds = %2501, %2312
  %2518 = phi float [ %2318, %2312 ], [ %2516, %2501 ]
  %2519 = phi float [ %2317, %2312 ], [ %2515, %2501 ]
  %2520 = phi float [ %2316, %2312 ], [ %2514, %2501 ]
  %2521 = phi float [ %2315, %2312 ], [ %2513, %2501 ]
  %2522 = phi float [ %2314, %2312 ], [ %2512, %2501 ]
  %2523 = phi float [ %2313, %2312 ], [ %2511, %2501 ]
  %2524 = fmul fast float %2520, %1661
  %2525 = fmul fast float %2519, %1662
  %2526 = fmul fast float %2518, %1663
  %2527 = fsub fast float 1.000000e+00, %1724
  %2528 = fmul fast float %2523, %2527
  %2529 = fmul fast float %2522, %2527
  %2530 = fmul fast float %2521, %2527
  %2531 = fadd fast float %2528, %2524
  %2532 = fadd fast float %2529, %2525
  %2533 = fadd fast float %2530, %2526
  %2534 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 423)  ; CBufferLoadLegacy(handle,regIndex)
  %2535 = extractvalue %dx.types.CBufRet.f32 %2534, 2
  %2536 = fmul fast float %2535, %1734
  %2537 = call float @dx.op.unary.f32(i32 7, float %2536)  ; Saturate(value)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %3, i32 %16, i32 %17, i32 undef, float %1724, float %1724, float %1724, float %1724, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %2538 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2539 = extractvalue %dx.types.CBufRet.f32 %2538, 0
  %2540 = fmul fast float %2539, %2531
  %2541 = fmul fast float %2539, %2532
  %2542 = fmul fast float %2539, %2533
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %4, i32 %16, i32 %17, i32 undef, float %2540, float %2541, float %2542, float %2540, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %16, i32 %17, i32 undef, float %2537, float %2537, float %2537, float %2537, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
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
!26 = !{void ()* @cs_fog_raymarching_air_heightmap_brfog, !"cs_fog_raymarching_air_heightmap_brfog", null, !4, !27}
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
!50 = distinct !{!50, !"dx.controlflow.hints", i32 1}
!51 = distinct !{!51, !"dx.controlflow.hints", i32 2}
!52 = distinct !{!52, !"dx.controlflow.hints", i32 2}
!53 = distinct !{!53, !"dx.controlflow.hints", i32 2}
!54 = distinct !{!54, !"dx.controlflow.hints", i32 2}
!55 = distinct !{!55, !"dx.controlflow.hints", i32 2}
!56 = distinct !{!56, !"dx.controlflow.hints", i32 2}
!57 = distinct !{!57, !"dx.controlflow.hints", i32 1}
!58 = distinct !{!58, !"dx.controlflow.hints", i32 1}
!59 = distinct !{!59, !"dx.controlflow.hints", i32 2}
!60 = distinct !{!60, !"dx.controlflow.hints", i32 2}
!61 = distinct !{!61, !"dx.controlflow.hints", i32 2}
!62 = distinct !{!62, !"dx.controlflow.hints", i32 2}
!63 = distinct !{!63, !"dx.controlflow.hints", i32 2}
!64 = distinct !{!64, !"dx.controlflow.hints", i32 2}
!65 = distinct !{!65, !"dx.controlflow.hints", i32 1}
!66 = distinct !{!66, !"dx.controlflow.hints", i32 2}
!67 = distinct !{!67, !"dx.controlflow.hints", i32 2}
!68 = distinct !{!68, !"dx.controlflow.hints", i32 2}
!69 = distinct !{!69, !"dx.controlflow.hints", i32 2}
!70 = distinct !{!70, !"dx.controlflow.hints", i32 2}
!71 = distinct !{!71, !"dx.controlflow.hints", i32 2}
!72 = distinct !{!72, !"dx.controlflow.hints", i32 2}
!73 = distinct !{!73, !"dx.controlflow.hints", i32 2}
!74 = !{!75, !75, i64 0}
!75 = !{!"float", !76, i64 0}
!76 = !{!"omnipotent char", !77, i64 0}
!77 = !{!"Simple C/C++ TBAA"}
!78 = !{!79, !81, !83, !84, !86, !87, !88}
!79 = distinct !{!79, !80, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z: %cFogParams"}
!80 = distinct !{!80, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z"}
!81 = distinct !{!81, !82, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %scattering"}
!82 = distinct !{!82, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z"}
!83 = distinct !{!83, !82, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %extinction"}
!84 = distinct !{!84, !85, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z: %scattering"}
!85 = distinct !{!85, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z"}
!86 = distinct !{!86, !85, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z: %transmission"}
!87 = distinct !{!87, !85, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z: %depthDensityWeighted"}
!88 = distinct !{!88, !85, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z: %rawShadowmapData"}
!89 = distinct !{!89, !"dx.controlflow.hints", i32 2}
!90 = !{!91}
!91 = distinct !{!91, !92, !"\01?sort@@YAXAIAM00@Z: %c"}
!92 = distinct !{!92, !"\01?sort@@YAXAIAM00@Z"}
!93 = !{!94, !95, !79, !81, !83, !84, !86, !87, !88}
!94 = distinct !{!94, !92, !"\01?sort@@YAXAIAM00@Z: %a"}
!95 = distinct !{!95, !92, !"\01?sort@@YAXAIAM00@Z: %b"}
!96 = !{!95}
!97 = !{!94, !91, !79, !81, !83, !84, !86, !87, !88}
!98 = !{!94}
!99 = !{!95, !91, !79, !81, !83, !84, !86, !87, !88}
!100 = !{!101}
!101 = distinct !{!101, !102, !"\01?sort@@YAXAIAM00@Z: %c"}
!102 = distinct !{!102, !"\01?sort@@YAXAIAM00@Z"}
!103 = !{!104, !105, !79, !81, !83, !84, !86, !87, !88}
!104 = distinct !{!104, !102, !"\01?sort@@YAXAIAM00@Z: %a"}
!105 = distinct !{!105, !102, !"\01?sort@@YAXAIAM00@Z: %b"}
!106 = !{!105}
!107 = !{!104, !101, !79, !81, !83, !84, !86, !87, !88}
!108 = !{!104}
!109 = !{!105, !101, !79, !81, !83, !84, !86, !87, !88}
!110 = distinct !{!110, !"dx.controlflow.hints", i32 2}
!111 = distinct !{!111, !"dx.controlflow.hints", i32 2}
!112 = distinct !{!112, !"dx.controlflow.hints", i32 1}
!113 = distinct !{!113, !"dx.controlflow.hints", i32 2}
!114 = distinct !{!114, !"dx.controlflow.hints", i32 1}
!115 = distinct !{!115, !"dx.controlflow.hints", i32 1}
!116 = distinct !{!116, !"dx.controlflow.hints", i32 1}
!117 = distinct !{!117, !"dx.controlflow.hints", i32 1}
!118 = distinct !{!118, !"dx.controlflow.hints", i32 2}
!119 = distinct !{!119, !"dx.controlflow.hints", i32 1}

