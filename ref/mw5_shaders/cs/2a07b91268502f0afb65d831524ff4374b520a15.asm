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
; shader hash: 0649f24ba96d9e62796524197a0b5a9e
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
;                                   sampler      NA          NA      S2             s4     1
;                                   sampler      NA          NA      S3             s5     1
;                                   texture     f32          3d      T0             t1     1
;                                   texture     f32          3d      T1             t2     1
;                                   texture     f32          2d      T2             t8     1
;                                   texture     f32          2d      T3             t9     1
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
%"class.Texture3D<vector<float, 4> >" = type { <4 x float>, %"class.Texture3D<vector<float, 4> >::mips_type" }
%"class.Texture3D<vector<float, 4> >::mips_type" = type { i32 }
%"class.Texture2D<vector<float, 4> >" = type { <4 x float>, %"class.Texture2D<vector<float, 4> >::mips_type" }
%"class.Texture2D<vector<float, 4> >::mips_type" = type { i32 }
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

@"\01?tiledSharedMem@@3PAIA" = external addrspace(3) global [64 x i32], align 4

define void @cs_fog_raymarching_air_clouds() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 3, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 17, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 13, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 9, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 3, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call i32 @dx.op.threadId.i32(i32 93, i32 0)  ; ThreadId(component)
  %19 = call i32 @dx.op.threadId.i32(i32 93, i32 1)  ; ThreadId(component)
  %20 = call i32 @dx.op.flattenedThreadIdInGroup.i32(i32 96)  ; FlattenedThreadIdInGroup()
  %21 = alloca [3 x float], align 4
  %22 = alloca [3 x float], align 4
  %23 = add i32 %19, %18
  %24 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %17, i32 361)  ; CBufferLoadLegacy(handle,regIndex)
  %25 = extractvalue %dx.types.CBufRet.i32 %24, 1
  %26 = add i32 %23, %25
  %27 = lshr i32 %26, 1
  %28 = and i32 %27, 1
  %29 = and i32 %26, 1
  %30 = xor i32 %28, %29
  %31 = shl i32 %18, 1
  %32 = shl i32 %19, 1
  %33 = or i32 %30, %31
  %34 = or i32 %28, %32
  %35 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 48, i32 undef)  ; BufferLoad(srv,index,wot)
  %36 = extractvalue %dx.types.ResRet.i32 %35, 0
  %37 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 32, i32 undef)  ; BufferLoad(srv,index,wot)
  %38 = extractvalue %dx.types.ResRet.i32 %37, 0
  %39 = extractvalue %dx.types.ResRet.i32 %37, 1
  %40 = extractvalue %dx.types.ResRet.i32 %37, 2
  %41 = extractvalue %dx.types.ResRet.i32 %37, 3
  %42 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %43 = extractvalue %dx.types.ResRet.i32 %42, 0
  %44 = extractvalue %dx.types.ResRet.i32 %42, 1
  %45 = extractvalue %dx.types.ResRet.i32 %42, 2
  %46 = extractvalue %dx.types.ResRet.i32 %42, 3
  %47 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %48 = extractvalue %dx.types.ResRet.i32 %47, 0
  %49 = extractvalue %dx.types.ResRet.i32 %47, 1
  %50 = extractvalue %dx.types.ResRet.i32 %47, 2
  %51 = extractvalue %dx.types.ResRet.i32 %47, 3
  %52 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 396)  ; CBufferLoadLegacy(handle,regIndex)
  %53 = extractvalue %dx.types.CBufRet.f32 %52, 2
  %54 = fmul fast float %53, %53
  %55 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %56 = extractvalue %dx.types.CBufRet.f32 %55, 0
  %57 = extractvalue %dx.types.CBufRet.f32 %55, 1
  %58 = extractvalue %dx.types.CBufRet.f32 %55, 2
  %59 = fmul fast float %58, 0x3FF17B1420000000
  %60 = icmp eq i32 %20, 0
  br i1 %60, label %61, label %202, !dx.controlflow.hints !31

; <label>:61                                      ; preds = %0
  %62 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %63 = extractvalue %dx.types.CBufRet.f32 %62, 0
  %64 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %65 = extractvalue %dx.types.CBufRet.f32 %64, 3
  %66 = extractvalue %dx.types.ResRet.i32 %35, 1
  %67 = and i32 %66, 65535
  %68 = call float @dx.op.legacyF16ToF32(i32 131, i32 %67)  ; LegacyF16ToF32(value)
  %69 = lshr i32 %36, 16
  %70 = call float @dx.op.legacyF16ToF32(i32 131, i32 %69)  ; LegacyF16ToF32(value)
  %71 = and i32 %36, 65535
  %72 = call float @dx.op.legacyF16ToF32(i32 131, i32 %71)  ; LegacyF16ToF32(value)
  %73 = lshr i32 %41, 16
  %74 = call float @dx.op.legacyF16ToF32(i32 131, i32 %73)  ; LegacyF16ToF32(value)
  %75 = and i32 %41, 65535
  %76 = call float @dx.op.legacyF16ToF32(i32 131, i32 %75)  ; LegacyF16ToF32(value)
  %77 = lshr i32 %40, 16
  %78 = call float @dx.op.legacyF16ToF32(i32 131, i32 %77)  ; LegacyF16ToF32(value)
  %79 = and i32 %40, 65535
  %80 = call float @dx.op.legacyF16ToF32(i32 131, i32 %79)  ; LegacyF16ToF32(value)
  %81 = lshr i32 %39, 16
  %82 = call float @dx.op.legacyF16ToF32(i32 131, i32 %81)  ; LegacyF16ToF32(value)
  %83 = lshr i32 %38, 16
  %84 = call float @dx.op.legacyF16ToF32(i32 131, i32 %83)  ; LegacyF16ToF32(value)
  %85 = and i32 %38, 65535
  %86 = call float @dx.op.legacyF16ToF32(i32 131, i32 %85)  ; LegacyF16ToF32(value)
  %87 = lshr i32 %46, 16
  %88 = call float @dx.op.legacyF16ToF32(i32 131, i32 %87)  ; LegacyF16ToF32(value)
  %89 = and i32 %46, 65535
  %90 = call float @dx.op.legacyF16ToF32(i32 131, i32 %89)  ; LegacyF16ToF32(value)
  %91 = lshr i32 %45, 16
  %92 = call float @dx.op.legacyF16ToF32(i32 131, i32 %91)  ; LegacyF16ToF32(value)
  %93 = and i32 %45, 65535
  %94 = call float @dx.op.legacyF16ToF32(i32 131, i32 %93)  ; LegacyF16ToF32(value)
  %95 = lshr i32 %44, 16
  %96 = call float @dx.op.legacyF16ToF32(i32 131, i32 %95)  ; LegacyF16ToF32(value)
  %97 = and i32 %44, 65535
  %98 = call float @dx.op.legacyF16ToF32(i32 131, i32 %97)  ; LegacyF16ToF32(value)
  %99 = and i32 %43, 65535
  %100 = call float @dx.op.legacyF16ToF32(i32 131, i32 %99)  ; LegacyF16ToF32(value)
  %101 = lshr i32 %51, 16
  %102 = call float @dx.op.legacyF16ToF32(i32 131, i32 %101)  ; LegacyF16ToF32(value)
  %103 = and i32 %51, 65535
  %104 = call float @dx.op.legacyF16ToF32(i32 131, i32 %103)  ; LegacyF16ToF32(value)
  %105 = lshr i32 %50, 16
  %106 = call float @dx.op.legacyF16ToF32(i32 131, i32 %105)  ; LegacyF16ToF32(value)
  %107 = and i32 %50, 65535
  %108 = call float @dx.op.legacyF16ToF32(i32 131, i32 %107)  ; LegacyF16ToF32(value)
  %109 = lshr i32 %49, 16
  %110 = call float @dx.op.legacyF16ToF32(i32 131, i32 %109)  ; LegacyF16ToF32(value)
  %111 = and i32 %49, 65535
  %112 = call float @dx.op.legacyF16ToF32(i32 131, i32 %111)  ; LegacyF16ToF32(value)
  %113 = lshr i32 %48, 16
  %114 = call float @dx.op.legacyF16ToF32(i32 131, i32 %113)  ; LegacyF16ToF32(value)
  %115 = and i32 %39, 65535
  %116 = call float @dx.op.legacyF16ToF32(i32 131, i32 %115)  ; LegacyF16ToF32(value)
  %117 = lshr i32 %43, 16
  %118 = call float @dx.op.legacyF16ToF32(i32 131, i32 %117)  ; LegacyF16ToF32(value)
  %119 = and i32 %48, 65535
  %120 = call float @dx.op.legacyF16ToF32(i32 131, i32 %119)  ; LegacyF16ToF32(value)
  %121 = fmul fast float %116, 0x3FD20DD760000000
  %122 = fmul fast float %58, %53
  %123 = fmul fast float %122, %80
  %124 = fmul fast float %58, %58
  %125 = fmul fast float %124, 0x3FEE471020000000
  %126 = fadd fast float %125, 0xBFD42F6020000000
  %127 = fmul fast float %72, %126
  %128 = fmul fast float %78, %56
  %129 = fmul fast float %82, %57
  %130 = fmul fast float %56, %54
  %131 = fmul fast float %130, %59
  %132 = fmul fast float %131, %70
  %133 = fsub fast float -0.000000e+00, %132
  %134 = fmul fast float %57, %54
  %135 = fmul fast float %134, %59
  %136 = fmul fast float %135, %74
  %137 = fmul fast float %56, %56
  %138 = fmul fast float %57, %57
  %139 = fsub fast float %137, %138
  %140 = fmul fast float %139, 0x3FE17B1420000000
  %141 = fmul fast float %140, %68
  %142 = fmul fast float %57, 0x3FF17B1420000000
  %143 = fmul fast float %142, %56
  %144 = fmul fast float %143, %76
  %145 = fadd fast float %129, %128
  %146 = fmul fast float %145, %53
  %147 = fsub fast float %146, %123
  %148 = fmul fast float %147, 0x3FDF454380000000
  %149 = fadd fast float %127, %141
  %150 = fadd fast float %149, %144
  %151 = fmul fast float %150, %54
  %152 = fsub fast float %133, %136
  %153 = fadd fast float %152, %121
  %154 = fadd fast float %153, %148
  %155 = fadd fast float %154, %151
  %156 = fmul fast float %63, %65
  %157 = fmul fast float %156, %155
  %158 = fmul fast float %118, 0x3FD20DD760000000
  %159 = fmul fast float %122, %96
  %160 = fmul fast float %88, %126
  %161 = fmul fast float %94, %56
  %162 = fmul fast float %98, %57
  %163 = fmul fast float %131, %86
  %164 = fsub fast float -0.000000e+00, %163
  %165 = fmul fast float %135, %90
  %166 = fmul fast float %140, %84
  %167 = fmul fast float %143, %92
  %168 = fadd fast float %162, %161
  %169 = fmul fast float %168, %53
  %170 = fsub fast float %169, %159
  %171 = fmul fast float %170, 0x3FDF454380000000
  %172 = fadd fast float %160, %166
  %173 = fadd fast float %172, %167
  %174 = fmul fast float %173, %54
  %175 = fsub fast float %164, %165
  %176 = fadd fast float %175, %158
  %177 = fadd fast float %176, %171
  %178 = fadd fast float %177, %174
  %179 = fmul fast float %156, %178
  %180 = fmul fast float %120, 0x3FD20DD760000000
  %181 = fmul fast float %122, %112
  %182 = fmul fast float %104, %126
  %183 = fmul fast float %110, %56
  %184 = fmul fast float %114, %57
  %185 = fmul fast float %131, %102
  %186 = fsub fast float -0.000000e+00, %185
  %187 = fmul fast float %135, %106
  %188 = fmul fast float %140, %100
  %189 = fmul fast float %143, %108
  %190 = fadd fast float %184, %183
  %191 = fmul fast float %190, %53
  %192 = fsub fast float %191, %181
  %193 = fmul fast float %192, 0x3FDF454380000000
  %194 = fadd fast float %182, %188
  %195 = fadd fast float %194, %189
  %196 = fmul fast float %195, %54
  %197 = fsub fast float %186, %187
  %198 = fadd fast float %197, %180
  %199 = fadd fast float %198, %193
  %200 = fadd fast float %199, %196
  %201 = fmul fast float %156, %200
  br label %202

; <label>:202                                     ; preds = %61, %0
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %203 = uitofp i32 %33 to float
  %204 = uitofp i32 %34 to float
  %205 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %206 = extractvalue %dx.types.CBufRet.f32 %205, 2
  %207 = fmul fast float %206, 0x3FE3C6EF40000000
  %208 = frem fast float %203, 2.560000e+02
  %209 = frem fast float %204, 2.560000e+02
  %210 = fptoui float %208 to i32
  %211 = fptoui float %209 to i32
  %212 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %7, i32 0, i32 %210, i32 %211, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %213 = extractvalue %dx.types.ResRet.f32 %212, 1
  %214 = extractvalue %dx.types.ResRet.f32 %212, 2
  %215 = extractvalue %dx.types.ResRet.f32 %212, 3
  %216 = fadd fast float %213, %207
  %217 = fadd fast float %214, %207
  %218 = fadd fast float %215, %207
  %219 = call float @dx.op.unary.f32(i32 22, float %216)  ; Frc(value)
  %220 = call float @dx.op.unary.f32(i32 22, float %217)  ; Frc(value)
  %221 = call float @dx.op.unary.f32(i32 22, float %218)  ; Frc(value)
  %222 = fadd fast float %220, %203
  %223 = fadd fast float %221, %204
  %224 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %225 = extractvalue %dx.types.CBufRet.f32 %224, 2
  %226 = extractvalue %dx.types.CBufRet.f32 %224, 3
  %227 = fmul fast float %225, %222
  %228 = fmul fast float %226, %223
  %229 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %230 = extractvalue %dx.types.CBufRet.f32 %229, 0
  %231 = fsub fast float -0.000000e+00, %230
  %232 = extractvalue %dx.types.CBufRet.f32 %229, 1
  %233 = fsub fast float -0.000000e+00, %232
  %234 = extractvalue %dx.types.CBufRet.f32 %229, 2
  %235 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %236 = extractvalue %dx.types.CBufRet.f32 %235, 1
  %237 = fmul fast float %227, 2.000000e+00
  %238 = fmul fast float %228, 2.000000e+00
  %239 = fsub fast float 1.000000e+00, %237
  %240 = fsub fast float 1.000000e+00, %238
  %241 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %242 = extractvalue %dx.types.CBufRet.f32 %241, 0
  %243 = extractvalue %dx.types.CBufRet.f32 %241, 1
  %244 = extractvalue %dx.types.CBufRet.f32 %241, 2
  %245 = fmul fast float %242, %239
  %246 = fmul fast float %243, %239
  %247 = fmul fast float %244, %239
  %248 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %249 = extractvalue %dx.types.CBufRet.f32 %248, 0
  %250 = extractvalue %dx.types.CBufRet.f32 %248, 1
  %251 = extractvalue %dx.types.CBufRet.f32 %248, 2
  %252 = fmul fast float %249, %240
  %253 = fmul fast float %250, %240
  %254 = fmul fast float %251, %240
  %255 = fadd fast float %252, %245
  %256 = fadd fast float %253, %246
  %257 = fadd fast float %254, %247
  %258 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %259 = extractvalue %dx.types.CBufRet.f32 %258, 0
  %260 = extractvalue %dx.types.CBufRet.f32 %258, 1
  %261 = extractvalue %dx.types.CBufRet.f32 %258, 2
  %262 = fadd fast float %255, %259
  %263 = fadd fast float %256, %260
  %264 = fadd fast float %257, %261
  %265 = fmul fast float %262, %236
  %266 = fmul fast float %263, %236
  %267 = fmul fast float %264, %236
  %268 = fmul fast float %265, %265
  %269 = fmul fast float %266, %266
  %270 = fadd fast float %268, %269
  %271 = fmul fast float %267, %267
  %272 = fadd fast float %270, %271
  %273 = call float @dx.op.unary.f32(i32 24, float %272)  ; Sqrt(value)
  %274 = fdiv fast float 1.000000e+00, %273
  %275 = fmul fast float %265, %274
  %276 = fmul fast float %266, %274
  %277 = fmul fast float %267, %274
  %278 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %6, i32 0, i32 %33, i32 %34, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %279 = extractvalue %dx.types.ResRet.f32 %278, 0
  %280 = fcmp fast ogt float %279, -1.000000e+00
  %281 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %282 = extractvalue %dx.types.CBufRet.f32 %281, 1
  %283 = select i1 %280, float %282, float 1.000000e+00
  %284 = fadd fast float %279, 1.000000e+00
  %285 = fmul fast float %283, %284
  %286 = call float @dx.op.unary.f32(i32 6, float %285)  ; FAbs(value)
  %287 = fdiv fast float 1.000000e+00, %236
  %288 = fmul fast float %287, %273
  %289 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 423)  ; CBufferLoadLegacy(handle,regIndex)
  %290 = extractvalue %dx.types.CBufRet.f32 %289, 1
  %291 = fmul fast float %290, %288
  %292 = fmul fast float %288, %286
  %293 = extractvalue %dx.types.CBufRet.f32 %281, 3
  %294 = fcmp fast oge float %286, %293
  %295 = call float @dx.op.binary.f32(i32 36, float %292, float %291)  ; FMin(a,b)
  %296 = select i1 %294, float %291, float %295
  %297 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %298 = extractvalue %dx.types.CBufRet.f32 %297, 3
  %299 = fsub fast float %298, %234
  %300 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %231, float %233, float %299)  ; Dot3(ax,ay,az,bx,by,bz)
  %301 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %275, float %276, float %277)  ; Dot3(ax,ay,az,bx,by,bz)
  %302 = fdiv fast float 1.000000e+00, %301
  %303 = fmul fast float %302, %300
  %304 = fcmp fast olt float %303, 0.000000e+00
  %305 = fcmp fast ogt float %277, 0.000000e+00
  %306 = and i1 %305, %304
  br i1 %306, label %311, label %307, !dx.controlflow.hints !32

; <label>:307                                     ; preds = %202
  %308 = fcmp fast olt float %277, 0.000000e+00
  br i1 %308, label %309, label %311, !dx.controlflow.hints !33

; <label>:309                                     ; preds = %307
  %310 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %303)  ; FMax(a,b)
  br label %311

; <label>:311                                     ; preds = %309, %307, %202
  %312 = phi float [ 0.000000e+00, %202 ], [ %310, %309 ], [ 0.000000e+00, %307 ]
  %313 = phi float [ 0.000000e+00, %202 ], [ 0x47EFFFFFE0000000, %309 ], [ %303, %307 ]
  %314 = fcmp fast oeq float %313, 0.000000e+00
  br i1 %314, label %318, label %315, !dx.controlflow.hints !34

; <label>:315                                     ; preds = %311
  %316 = call float @dx.op.binary.f32(i32 36, float 0x47EFFFFFE0000000, float %312)  ; FMin(a,b)
  %317 = call float @dx.op.binary.f32(i32 35, float -1.000000e+00, float %313)  ; FMax(a,b)
  br label %318

; <label>:318                                     ; preds = %315, %311
  %319 = phi i32 [ 1, %315 ], [ 0, %311 ]
  %320 = phi float [ %317, %315 ], [ -1.000000e+00, %311 ]
  %321 = phi float [ %316, %315 ], [ 0x47EFFFFFE0000000, %311 ]
  %322 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %17, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %323 = extractvalue %dx.types.CBufRet.i32 %322, 3
  %324 = icmp eq i32 %323, 0
  %325 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 31)  ; CBufferLoadLegacy(handle,regIndex)
  %326 = extractvalue %dx.types.CBufRet.f32 %325, 2
  %327 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 32)  ; CBufferLoadLegacy(handle,regIndex)
  %328 = extractvalue %dx.types.CBufRet.f32 %327, 2
  %329 = fsub fast float %326, %234
  %330 = fadd fast float %329, %328
  br i1 %324, label %338, label %331, !dx.controlflow.hints !35

; <label>:331                                     ; preds = %318
  %332 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %231, float %233, float %330)  ; Dot3(ax,ay,az,bx,by,bz)
  %333 = fmul fast float %302, %332
  %334 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %231, float %233, float %329)  ; Dot3(ax,ay,az,bx,by,bz)
  %335 = fmul fast float %302, %334
  %336 = call float @dx.op.binary.f32(i32 36, float %333, float %335)  ; FMin(a,b)
  %337 = call float @dx.op.binary.f32(i32 35, float %333, float %335)  ; FMax(a,b)
  br label %371

; <label>:338                                     ; preds = %318
  %339 = fdiv fast float 1.000000e+00, %275
  %340 = fdiv fast float 1.000000e+00, %276
  %341 = fdiv fast float 1.000000e+00, %277
  %342 = extractvalue %dx.types.CBufRet.f32 %325, 0
  %343 = extractvalue %dx.types.CBufRet.f32 %325, 1
  %344 = extractvalue %dx.types.CBufRet.f32 %327, 0
  %345 = extractvalue %dx.types.CBufRet.f32 %327, 1
  %346 = fsub fast float %342, %230
  %347 = fmul fast float %346, %339
  %348 = fadd fast float %346, %344
  %349 = fmul fast float %348, %339
  %350 = call float @dx.op.binary.f32(i32 36, float %347, float %349)  ; FMin(a,b)
  %351 = call float @dx.op.binary.f32(i32 35, float %347, float %349)  ; FMax(a,b)
  %352 = fsub fast float %343, %232
  %353 = fmul fast float %352, %340
  %354 = fadd fast float %352, %345
  %355 = fmul fast float %354, %340
  %356 = call float @dx.op.binary.f32(i32 36, float %353, float %355)  ; FMin(a,b)
  %357 = call float @dx.op.binary.f32(i32 35, float %350, float %356)  ; FMax(a,b)
  %358 = call float @dx.op.binary.f32(i32 35, float %353, float %355)  ; FMax(a,b)
  %359 = call float @dx.op.binary.f32(i32 36, float %351, float %358)  ; FMin(a,b)
  %360 = fmul fast float %329, %341
  %361 = fmul fast float %330, %341
  %362 = call float @dx.op.binary.f32(i32 36, float %360, float %361)  ; FMin(a,b)
  %363 = call float @dx.op.binary.f32(i32 35, float %357, float %362)  ; FMax(a,b)
  %364 = call float @dx.op.binary.f32(i32 35, float %360, float %361)  ; FMax(a,b)
  %365 = call float @dx.op.binary.f32(i32 36, float %359, float %364)  ; FMin(a,b)
  %366 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %363)  ; FMax(a,b)
  %367 = fcmp fast ult float %365, %366
  br i1 %367, label %371, label %368, !dx.controlflow.hints !36

; <label>:368                                     ; preds = %338
  %369 = call float @dx.op.binary.f32(i32 36, float %363, float %365)  ; FMin(a,b)
  %370 = call float @dx.op.binary.f32(i32 35, float %363, float %365)  ; FMax(a,b)
  br label %371

; <label>:371                                     ; preds = %368, %338, %331
  %372 = phi float [ %336, %331 ], [ %369, %368 ], [ 0.000000e+00, %338 ]
  %373 = phi float [ %337, %331 ], [ %370, %368 ], [ 0.000000e+00, %338 ]
  %374 = fcmp fast oeq float %373, 0.000000e+00
  br i1 %374, label %378, label %375, !dx.controlflow.hints !37

; <label>:375                                     ; preds = %371
  %376 = call float @dx.op.binary.f32(i32 36, float %321, float %372)  ; FMin(a,b)
  %377 = call float @dx.op.binary.f32(i32 35, float %320, float %373)  ; FMax(a,b)
  br label %378

; <label>:378                                     ; preds = %375, %371
  %379 = phi i32 [ 1, %375 ], [ 0, %371 ]
  %380 = phi float [ %377, %375 ], [ %320, %371 ]
  %381 = phi float [ %376, %375 ], [ %321, %371 ]
  %382 = call float @dx.op.binary.f32(i32 36, float %296, float %380)  ; FMin(a,b)
  %383 = call float @dx.op.binary.f32(i32 35, float %273, float %381)  ; FMax(a,b)
  %384 = extractvalue %dx.types.CBufRet.f32 %297, 0
  %385 = fmul fast float %219, 2.000000e+00
  %386 = fadd fast float %385, -1.000000e+00
  %387 = fmul fast float %384, %386
  %388 = fadd fast float %387, %383
  %389 = fcmp fast olt float %388, %382
  %390 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %391 = extractvalue %dx.types.CBufRet.f32 %390, 2
  %392 = fcmp fast olt float %391, 1.000000e+00
  %393 = and i1 %392, %389
  br i1 %393, label %394, label %813

; <label>:394                                     ; preds = %378
  %395 = fmul fast float %388, %277
  %396 = fadd fast float %395, %234
  %397 = fmul fast float %388, %276
  %398 = fadd fast float %397, %232
  %399 = fmul fast float %388, %275
  %400 = fadd fast float %399, %230
  br label %401

; <label>:401                                     ; preds = %791, %394
  %402 = phi float [ %793, %791 ], [ 0.000000e+00, %394 ]
  %403 = phi float [ %794, %791 ], [ 1.000000e+00, %394 ]
  %404 = phi float [ %804, %791 ], [ %400, %394 ]
  %405 = phi float [ %805, %791 ], [ %398, %394 ]
  %406 = phi float [ %806, %791 ], [ %396, %394 ]
  %407 = phi float [ %792, %791 ], [ %388, %394 ]
  %408 = phi i32 [ %415, %791 ], [ 0, %394 ]
  %409 = phi float [ %795, %791 ], [ 0.000000e+00, %394 ]
  %410 = phi float [ %796, %791 ], [ 0.000000e+00, %394 ]
  %411 = phi float [ %797, %791 ], [ 0.000000e+00, %394 ]
  %412 = phi float [ %798, %791 ], [ 0.000000e+00, %394 ]
  %413 = phi float [ %799, %791 ], [ 0.000000e+00, %394 ]
  %414 = phi i32 [ %800, %791 ], [ 0, %394 ]
  %415 = add i32 %408, 1
  %416 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %417 = extractvalue %dx.types.CBufRet.f32 %416, 0
  %418 = icmp eq i32 %319, 0
  br i1 %418, label %431, label %419, !dx.controlflow.hints !38

; <label>:419                                     ; preds = %401
  %420 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %421 = extractvalue %dx.types.CBufRet.f32 %420, 3
  %422 = extractvalue %dx.types.CBufRet.f32 %420, 2
  %423 = fmul fast float %421, %407
  %424 = fdiv fast float %423, %382
  %425 = fadd fast float %424, 1.000000e+00
  %426 = call float @dx.op.unary.f32(i32 23, float %425)  ; Log(value)
  %427 = call float @dx.op.binary.f32(i32 36, float 1.000000e+00, float %426)  ; FMin(a,b)
  %428 = fmul fast float %422, %382
  %429 = fmul fast float %428, %427
  %430 = call float @dx.op.binary.f32(i32 36, float 0x47EFFFFFE0000000, float %429)  ; FMin(a,b)
  br label %431

; <label>:431                                     ; preds = %419, %401
  %432 = phi float [ %430, %419 ], [ 0x47EFFFFFE0000000, %401 ]
  %433 = icmp eq i32 %379, 0
  br i1 %433, label %490, label %434, !dx.controlflow.hints !39

; <label>:434                                     ; preds = %431
  %435 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 35)  ; CBufferLoadLegacy(handle,regIndex)
  %436 = extractvalue %dx.types.CBufRet.f32 %435, 0
  %437 = extractvalue %dx.types.CBufRet.f32 %435, 1
  %438 = extractvalue %dx.types.CBufRet.f32 %435, 2
  %439 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 31)  ; CBufferLoadLegacy(handle,regIndex)
  %440 = extractvalue %dx.types.CBufRet.f32 %439, 0
  %441 = extractvalue %dx.types.CBufRet.f32 %439, 1
  %442 = extractvalue %dx.types.CBufRet.f32 %439, 2
  %443 = fsub fast float %404, %440
  %444 = fsub fast float %405, %441
  %445 = fsub fast float %406, %442
  %446 = fmul fast float %443, %436
  %447 = fmul fast float %444, %437
  %448 = fmul fast float %445, %438
  %449 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %17, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %450 = extractvalue %dx.types.CBufRet.i32 %449, 3
  %451 = icmp eq i32 %450, 0
  br i1 %451, label %455, label %452, !dx.controlflow.hints !40

; <label>:452                                     ; preds = %434
  %453 = call float @dx.op.unary.f32(i32 22, float %446)  ; Frc(value)
  %454 = call float @dx.op.unary.f32(i32 22, float %447)  ; Frc(value)
  br label %455

; <label>:455                                     ; preds = %452, %434
  %456 = phi float [ %453, %452 ], [ %446, %434 ]
  %457 = phi float [ %454, %452 ], [ %447, %434 ]
  %458 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %13, float %456, float %457, float %448, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %459 = extractvalue %dx.types.ResRet.f32 %458, 0
  %460 = fmul fast float %459, 2.000000e+00
  %461 = fadd fast float %460, -1.000000e+00
  %462 = extractvalue %dx.types.CBufRet.f32 %435, 3
  %463 = fmul fast float %461, %462
  %464 = fcmp fast olt float %463, 0.000000e+00
  %465 = fcmp fast oge float %448, 0.000000e+00
  %466 = fcmp fast ole float %448, 1.000000e+00
  br i1 %451, label %469, label %467, !dx.controlflow.hints !41

; <label>:467                                     ; preds = %455
  %468 = and i1 %465, %466
  br label %479

; <label>:469                                     ; preds = %455
  %470 = fcmp fast oge float %446, 0.000000e+00
  %471 = fcmp fast oge float %447, 0.000000e+00
  %472 = and i1 %470, %471
  %473 = and i1 %465, %472
  %474 = fcmp fast ole float %446, 1.000000e+00
  %475 = fcmp fast ole float %447, 1.000000e+00
  %476 = and i1 %474, %475
  %477 = and i1 %466, %476
  %478 = and i1 %473, %477
  br label %479

; <label>:479                                     ; preds = %469, %467
  %480 = phi i1 [ %468, %467 ], [ %478, %469 ]
  %481 = and i1 %464, %480
  %482 = call float @dx.op.unary.f32(i32 6, float %463)  ; FAbs(value)
  %483 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %484 = extractvalue %dx.types.CBufRet.f32 %483, 1
  %485 = extractvalue %dx.types.CBufRet.f32 %483, 0
  %486 = call float @dx.op.binary.f32(i32 35, float %482, float %485)  ; FMax(a,b)
  %487 = select i1 %481, float %484, float %486
  %488 = zext i1 %481 to i32
  %489 = call float @dx.op.binary.f32(i32 36, float 0x47EFFFFFE0000000, float %487)  ; FMin(a,b)
  br label %490

; <label>:490                                     ; preds = %479, %431
  %491 = phi i32 [ %488, %479 ], [ 0, %431 ]
  %492 = phi float [ %489, %479 ], [ 0x47EFFFFFE0000000, %431 ]
  %493 = extractvalue %dx.types.CBufRet.f32 %416, 2
  %494 = fmul fast float %493, %407
  %495 = call float @dx.op.unary.f32(i32 23, float %494)  ; Log(value)
  %496 = fmul fast float %495, 0x3FE62E4300000000
  %497 = call float @dx.op.binary.f32(i32 35, float %496, float 1.000000e+00)  ; FMax(a,b)
  %498 = fmul fast float %497, %432
  %499 = call float @dx.op.binary.f32(i32 36, float %498, float %492)  ; FMin(a,b)
  %500 = call float @dx.op.binary.f32(i32 35, float %499, float %417)  ; FMax(a,b)
  %501 = fadd fast float %382, 0x3F1A36E2E0000000
  %502 = fsub fast float %501, %407
  %503 = call float @dx.op.binary.f32(i32 36, float %502, float %500)  ; FMin(a,b)
  br i1 %418, label %551, label %504, !dx.controlflow.hints !42

; <label>:504                                     ; preds = %490
  %505 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 399)  ; CBufferLoadLegacy(handle,regIndex)
  %506 = extractvalue %dx.types.CBufRet.f32 %505, 0
  %507 = fsub fast float -0.000000e+00, %404
  %508 = fsub fast float -0.000000e+00, %405
  %509 = fsub fast float %506, %406
  %510 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %507, float %508, float %509)  ; Dot3(ax,ay,az,bx,by,bz)
  %511 = fmul fast float %302, %510
  %512 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %511)  ; FMax(a,b)
  %513 = fcmp fast olt float %277, 0.000000e+00
  %514 = call float @dx.op.binary.f32(i32 36, float %503, float %512)  ; FMin(a,b)
  br i1 %513, label %516, label %515, !dx.controlflow.hints !43

; <label>:515                                     ; preds = %504
  br label %516

; <label>:516                                     ; preds = %515, %504
  %517 = phi float [ 0.000000e+00, %515 ], [ %514, %504 ]
  %518 = phi float [ %514, %515 ], [ %503, %504 ]
  %519 = phi float [ %514, %515 ], [ 0.000000e+00, %504 ]
  %520 = phi float [ %503, %515 ], [ %514, %504 ]
  %521 = fsub fast float %518, %517
  %522 = extractvalue %dx.types.CBufRet.f32 %505, 1
  %523 = call float @dx.op.binary.f32(i32 36, float 0xBF0FFB4800000000, float %522)  ; FMin(a,b)
  %524 = fsub fast float %406, %506
  %525 = fmul fast float %523, 0x3FF7154760000000
  %526 = fmul fast float %525, %524
  %527 = call float @dx.op.unary.f32(i32 21, float %526)  ; Exp(value)
  %528 = fmul fast float %277, 0x3FF7154760000000
  %529 = fmul fast float %528, %520
  %530 = fmul fast float %529, %523
  %531 = call float @dx.op.unary.f32(i32 21, float %530)  ; Exp(value)
  %532 = fmul fast float %528, %519
  %533 = fmul fast float %532, %523
  %534 = call float @dx.op.unary.f32(i32 21, float %533)  ; Exp(value)
  %535 = fsub fast float %531, %534
  %536 = fmul fast float %535, %527
  %537 = fmul fast float %523, %277
  %538 = fdiv fast float %536, %537
  %539 = fadd fast float %521, %538
  %540 = call float @dx.op.unary.f32(i32 6, float %277)  ; FAbs(value)
  %541 = fcmp fast olt float %540, 0x3F0FFB4800000000
  %542 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %524)  ; FMax(a,b)
  %543 = fmul fast float %542, 0x3FF7154760000000
  %544 = fmul fast float %543, %522
  %545 = call float @dx.op.unary.f32(i32 21, float %544)  ; Exp(value)
  %546 = fmul fast float %545, %503
  %547 = select i1 %541, float %546, float %539
  %548 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 396)  ; CBufferLoadLegacy(handle,regIndex)
  %549 = extractvalue %dx.types.CBufRet.f32 %548, 1
  %550 = fmul fast float %547, %549
  br label %551

; <label>:551                                     ; preds = %516, %490
  %552 = phi float [ %550, %516 ], [ 0.000000e+00, %490 ]
  %553 = icmp eq i32 %491, 0
  br i1 %553, label %734, label %554, !dx.controlflow.hints !44

; <label>:554                                     ; preds = %551
  %555 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %556 = extractvalue %dx.types.CBufRet.f32 %555, 3
  %557 = fmul fast float %556, %407
  %558 = fcmp fast oeq float %557, 0.000000e+00
  br i1 %558, label %573, label %559, !dx.controlflow.hints !45

; <label>:559                                     ; preds = %554
  %560 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 41)  ; CBufferLoadLegacy(handle,regIndex)
  %561 = extractvalue %dx.types.CBufRet.f32 %560, 3
  %562 = fmul fast float %561, %557
  %563 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 33)  ; CBufferLoadLegacy(handle,regIndex)
  %564 = extractvalue %dx.types.CBufRet.f32 %563, 0
  %565 = extractvalue %dx.types.CBufRet.f32 %563, 1
  %566 = extractvalue %dx.types.CBufRet.f32 %563, 2
  %567 = fmul fast float %564, %562
  %568 = fmul fast float %565, %562
  %569 = fmul fast float %566, %562
  %570 = call float @dx.op.unary.f32(i32 23, float %567)  ; Log(value)
  %571 = call float @dx.op.unary.f32(i32 23, float %568)  ; Log(value)
  %572 = call float @dx.op.unary.f32(i32 23, float %569)  ; Log(value)
  br label %573

; <label>:573                                     ; preds = %559, %554
  %574 = phi float [ %570, %559 ], [ 0.000000e+00, %554 ]
  %575 = phi float [ %571, %559 ], [ 0.000000e+00, %554 ]
  %576 = phi float [ %572, %559 ], [ 0.000000e+00, %554 ]
  %577 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 35)  ; CBufferLoadLegacy(handle,regIndex)
  %578 = extractvalue %dx.types.CBufRet.f32 %577, 0
  %579 = extractvalue %dx.types.CBufRet.f32 %577, 1
  %580 = extractvalue %dx.types.CBufRet.f32 %577, 2
  %581 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 31)  ; CBufferLoadLegacy(handle,regIndex)
  %582 = extractvalue %dx.types.CBufRet.f32 %581, 0
  %583 = extractvalue %dx.types.CBufRet.f32 %581, 1
  %584 = extractvalue %dx.types.CBufRet.f32 %581, 2
  %585 = fsub fast float %404, %582
  %586 = fsub fast float %405, %583
  %587 = fsub fast float %406, %584
  %588 = fmul fast float %585, %578
  %589 = fmul fast float %586, %579
  %590 = fmul fast float %587, %580
  %591 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %17, i32 29)  ; CBufferLoadLegacy(handle,regIndex)
  %592 = extractvalue %dx.types.CBufRet.i32 %591, 0
  %593 = extractvalue %dx.types.CBufRet.i32 %591, 1
  %594 = uitofp i32 %592 to float
  %595 = uitofp i32 %593 to float
  %596 = fmul fast float %588, %594
  %597 = fmul fast float %589, %595
  %598 = fadd fast float %596, 5.000000e-01
  %599 = fadd fast float %597, 5.000000e-01
  %600 = call float @dx.op.unary.f32(i32 22, float %598)  ; Frc(value)
  %601 = call float @dx.op.unary.f32(i32 22, float %599)  ; Frc(value)
  %602 = call float @dx.op.unary.f32(i32 27, float %598)  ; Round_ni(value)
  %603 = call float @dx.op.unary.f32(i32 27, float %599)  ; Round_ni(value)
  %604 = fadd fast float %602, 1.000000e+00
  %605 = fadd fast float %603, 1.000000e+00
  %606 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 30)  ; CBufferLoadLegacy(handle,regIndex)
  %607 = extractvalue %dx.types.CBufRet.f32 %606, 0
  %608 = extractvalue %dx.types.CBufRet.f32 %606, 1
  %609 = fmul fast float %607, %604
  %610 = fmul fast float %608, %605
  %611 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %9, %dx.types.Handle %14, float %609, float %610, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %612 = extractvalue %dx.types.ResRet.f32 %611, 0
  %613 = extractvalue %dx.types.ResRet.f32 %611, 1
  %614 = extractvalue %dx.types.ResRet.f32 %611, 2
  %615 = extractvalue %dx.types.ResRet.f32 %611, 3
  %616 = extractvalue %dx.types.CBufRet.i32 %591, 2
  %617 = extractvalue %dx.types.CBufRet.f32 %606, 2
  %618 = uitofp i32 %616 to float
  %619 = fadd fast float %618, -1.000000e+00
  %620 = fmul fast float %619, %612
  %621 = fmul fast float %619, %613
  %622 = fmul fast float %619, %614
  %623 = fmul fast float %619, %615
  %624 = fadd fast float %620, 5.000000e-01
  %625 = fadd fast float %621, 5.000000e-01
  %626 = fadd fast float %622, 5.000000e-01
  %627 = fadd fast float %623, 5.000000e-01
  %628 = fptoui float %624 to i32
  %629 = fptoui float %625 to i32
  %630 = fptoui float %626 to i32
  %631 = fptoui float %627 to i32
  %632 = uitofp i32 %628 to float
  %633 = uitofp i32 %629 to float
  %634 = uitofp i32 %630 to float
  %635 = uitofp i32 %631 to float
  %636 = fadd fast float %632, 5.000000e-01
  %637 = fadd fast float %633, 5.000000e-01
  %638 = fadd fast float %634, 5.000000e-01
  %639 = fadd fast float %635, 5.000000e-01
  %640 = fmul fast float %636, %617
  %641 = fmul fast float %637, %617
  %642 = fmul fast float %638, %617
  %643 = fmul fast float %639, %617
  %644 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %15, float %640, float %590, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %645 = extractvalue %dx.types.ResRet.f32 %644, 0
  %646 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %15, float %641, float %590, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %647 = extractvalue %dx.types.ResRet.f32 %646, 0
  %648 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %15, float %642, float %590, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %649 = extractvalue %dx.types.ResRet.f32 %648, 0
  %650 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %15, float %643, float %590, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %651 = extractvalue %dx.types.ResRet.f32 %650, 0
  %652 = fsub fast float %649, %651
  %653 = fmul fast float %652, %600
  %654 = fadd fast float %653, %651
  %655 = fsub fast float %647, %645
  %656 = fmul fast float %655, %600
  %657 = fadd fast float %656, %645
  %658 = fsub fast float %657, %654
  %659 = fmul fast float %658, %601
  %660 = fadd fast float %659, %654
  %661 = fcmp fast ogt float %660, 0.000000e+00
  br i1 %661, label %662, label %730, !dx.controlflow.hints !46

; <label>:662                                     ; preds = %573
  %663 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 33)  ; CBufferLoadLegacy(handle,regIndex)
  %664 = extractvalue %dx.types.CBufRet.f32 %663, 0
  %665 = extractvalue %dx.types.CBufRet.f32 %663, 1
  %666 = extractvalue %dx.types.CBufRet.f32 %663, 2
  %667 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 41)  ; CBufferLoadLegacy(handle,regIndex)
  %668 = extractvalue %dx.types.CBufRet.f32 %667, 0
  %669 = extractvalue %dx.types.CBufRet.f32 %667, 1
  %670 = extractvalue %dx.types.CBufRet.f32 %667, 2
  %671 = fmul fast float %586, %578
  %672 = fmul fast float %587, %578
  %673 = fadd fast float %588, %668
  %674 = fadd fast float %671, %669
  %675 = fadd fast float %672, %670
  %676 = fmul fast float %673, %664
  %677 = fmul fast float %674, %664
  %678 = fmul fast float %675, %664
  %679 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %12, float %676, float %677, float %678, float undef, i32 0, i32 0, i32 0, float %574)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %680 = extractvalue %dx.types.ResRet.f32 %679, 0
  %681 = fmul fast float %673, %665
  %682 = fmul fast float %674, %665
  %683 = fmul fast float %675, %665
  %684 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %12, float %681, float %682, float %683, float undef, i32 0, i32 0, i32 0, float %575)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %685 = extractvalue %dx.types.ResRet.f32 %684, 1
  %686 = fmul fast float %673, %666
  %687 = fmul fast float %674, %666
  %688 = fmul fast float %675, %666
  %689 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %12, float %686, float %687, float %688, float undef, i32 0, i32 0, i32 0, float %576)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %690 = extractvalue %dx.types.ResRet.f32 %689, 2
  %691 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 34)  ; CBufferLoadLegacy(handle,regIndex)
  %692 = extractvalue %dx.types.CBufRet.f32 %691, 1
  %693 = fmul fast float %685, %680
  %694 = fmul fast float %693, %690
  %695 = call float @dx.op.unary.f32(i32 23, float %694)  ; Log(value)
  %696 = fmul fast float %695, %692
  %697 = call float @dx.op.unary.f32(i32 21, float %696)  ; Exp(value)
  %698 = extractvalue %dx.types.CBufRet.f32 %691, 2
  %699 = fmul fast float %660, %660
  %700 = fmul fast float %699, %697
  %701 = fmul fast float %700, %698
  %702 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 32)  ; CBufferLoadLegacy(handle,regIndex)
  %703 = extractvalue %dx.types.CBufRet.f32 %702, 3
  %704 = fmul fast float %703, %701
  %705 = bitcast float %704 to i32
  %706 = sitofp i32 %705 to float
  %707 = fptosi float %706 to i32
  %708 = bitcast i32 %707 to float
  %709 = fsub fast float 1.000000e+00, %701
  %710 = bitcast float %709 to i32
  %711 = sitofp i32 %710 to float
  %712 = fptosi float %711 to i32
  %713 = bitcast i32 %712 to float
  %714 = fadd fast float %708, %713
  %715 = bitcast float %714 to i32
  %716 = sub nsw i32 2129859010, %715
  %717 = bitcast i32 %716 to float
  %718 = fmul fast float %717, %708
  %719 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %720 = extractvalue %dx.types.CBufRet.f32 %719, 2
  %721 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 37)  ; CBufferLoadLegacy(handle,regIndex)
  %722 = extractvalue %dx.types.CBufRet.f32 %721, 0
  %723 = fmul fast float %718, %722
  %724 = fadd fast float %723, 1.000000e+00
  %725 = bitcast float %724 to i32
  %726 = sub nsw i32 2129859010, %725
  %727 = bitcast i32 %726 to float
  %728 = fmul fast float %718, %720
  %729 = fmul fast float %728, %727
  br label %730

; <label>:730                                     ; preds = %662, %573
  %731 = phi float [ %729, %662 ], [ %660, %573 ]
  %732 = fmul fast float %731, %503
  %733 = fadd fast float %732, %552
  br label %734

; <label>:734                                     ; preds = %730, %551
  %735 = phi float [ %733, %730 ], [ %552, %551 ]
  %736 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %737 = extractvalue %dx.types.CBufRet.f32 %736, 1
  %738 = fcmp fast ogt float %735, %737
  br i1 %738, label %741, label %739, !dx.controlflow.hints !47

; <label>:739                                     ; preds = %734
  %740 = fadd fast float %503, %407
  br label %791

; <label>:741                                     ; preds = %734
  %742 = fmul fast float %735, 0xBFF7154760000000
  %743 = call float @dx.op.unary.f32(i32 21, float %742)  ; Exp(value)
  %744 = call float @dx.op.unary.f32(i32 7, float %743)  ; Saturate(value)
  %745 = fsub fast float 1.000000e+00, %744
  %746 = fdiv fast float %735, %503
  %747 = fadd fast float %503, %407
  %748 = fmul fast float %407, %407
  %749 = fmul fast float %747, %747
  %750 = fsub fast float %748, %749
  %751 = fmul fast float %750, -5.000000e-01
  %752 = fmul fast float %751, %746
  %753 = fadd fast float %752, %402
  %754 = fadd fast float %735, %409
  %755 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %17, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %756 = extractvalue %dx.types.CBufRet.i32 %755, 0
  %757 = icmp eq i32 %756, 0
  br i1 %757, label %784, label %758, !dx.controlflow.hints !48

; <label>:758                                     ; preds = %741
  %759 = icmp ne i32 %414, 0
  %760 = zext i1 %759 to i32
  %761 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %762 = extractvalue %dx.types.CBufRet.f32 %761, 2
  %763 = extractvalue %dx.types.CBufRet.f32 %761, 0
  %764 = fsub fast float %747, %763
  %765 = fmul fast float %764, %762
  %766 = call float @dx.op.unary.f32(i32 7, float %765)  ; Saturate(value)
  %767 = fadd fast float %766, -5.000000e-01
  %768 = fmul fast float %767, 2.000000e+00
  %769 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %770 = extractvalue %dx.types.CBufRet.f32 %769, 2
  %771 = fcmp fast olt float %768, %770
  br i1 %771, label %772, label %784, !dx.controlflow.hints !49

; <label>:772                                     ; preds = %758
  %773 = fmul fast float %768, %768
  %774 = fmul fast float %745, %403
  %775 = fmul fast float %768, %774
  %776 = fmul fast float %773, %774
  %777 = fmul fast float %775, %773
  %778 = fmul fast float %773, %773
  %779 = fmul fast float %778, %774
  %780 = fadd fast float %775, %410
  %781 = fadd fast float %776, %411
  %782 = fadd fast float %777, %412
  %783 = fadd fast float %779, %413
  br label %784

; <label>:784                                     ; preds = %772, %758, %741
  %785 = phi float [ %410, %741 ], [ %780, %772 ], [ %410, %758 ]
  %786 = phi float [ %411, %741 ], [ %781, %772 ], [ %411, %758 ]
  %787 = phi float [ %412, %741 ], [ %782, %772 ], [ %412, %758 ]
  %788 = phi float [ %413, %741 ], [ %783, %772 ], [ %413, %758 ]
  %789 = phi i32 [ %414, %741 ], [ 1, %772 ], [ %760, %758 ]
  %790 = fmul fast float %744, %403
  br label %791

; <label>:791                                     ; preds = %784, %739
  %792 = phi float [ %740, %739 ], [ %747, %784 ]
  %793 = phi float [ %402, %739 ], [ %753, %784 ]
  %794 = phi float [ %403, %739 ], [ %790, %784 ]
  %795 = phi float [ %409, %739 ], [ %754, %784 ]
  %796 = phi float [ %410, %739 ], [ %785, %784 ]
  %797 = phi float [ %411, %739 ], [ %786, %784 ]
  %798 = phi float [ %412, %739 ], [ %787, %784 ]
  %799 = phi float [ %413, %739 ], [ %788, %784 ]
  %800 = phi i32 [ %414, %739 ], [ %789, %784 ]
  %801 = fmul fast float %503, %275
  %802 = fmul fast float %503, %276
  %803 = fmul fast float %503, %277
  %804 = fadd fast float %801, %404
  %805 = fadd fast float %802, %405
  %806 = fadd fast float %803, %406
  %807 = fcmp fast olt float %792, %382
  %808 = extractvalue %dx.types.CBufRet.f32 %736, 2
  %809 = fcmp fast olt float %808, %794
  %810 = and i1 %807, %809
  br i1 %810, label %401, label %811

; <label>:811                                     ; preds = %791
  %812 = uitofp i32 %415 to float
  br label %813

; <label>:813                                     ; preds = %811, %378
  %814 = phi float [ 0.000000e+00, %378 ], [ %793, %811 ]
  %815 = phi float [ 1.000000e+00, %378 ], [ %794, %811 ]
  %816 = phi float [ 0.000000e+00, %378 ], [ %812, %811 ]
  %817 = phi float [ 0.000000e+00, %378 ], [ %795, %811 ]
  %818 = phi float [ 0.000000e+00, %378 ], [ %796, %811 ]
  %819 = phi float [ 0.000000e+00, %378 ], [ %797, %811 ]
  %820 = phi float [ 0.000000e+00, %378 ], [ %798, %811 ]
  %821 = phi float [ 0.000000e+00, %378 ], [ %799, %811 ]
  %822 = phi i32 [ 0, %378 ], [ %800, %811 ]
  %823 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %17, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %824 = extractvalue %dx.types.CBufRet.i32 %823, 0
  %825 = icmp eq i32 %824, 0
  br i1 %825, label %867, label %826, !dx.controlflow.hints !50

; <label>:826                                     ; preds = %813
  %827 = icmp eq i32 %822, 0
  br i1 %827, label %866, label %828, !dx.controlflow.hints !51

; <label>:828                                     ; preds = %826
  %829 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %17, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %830 = extractvalue %dx.types.CBufRet.i32 %829, 2
  %831 = icmp eq i32 %830, 0
  br i1 %831, label %838, label %832, !dx.controlflow.hints !52

; <label>:832                                     ; preds = %828
  %833 = fsub fast float 1.000000e+00, %815
  %834 = fdiv fast float %818, %833
  %835 = fdiv fast float %819, %833
  %836 = fdiv fast float %820, %833
  %837 = fdiv fast float %821, %833
  br label %843

; <label>:838                                     ; preds = %828
  %839 = fadd fast float %818, %815
  %840 = fadd fast float %819, %815
  %841 = fadd fast float %820, %815
  %842 = fadd fast float %821, %815
  br label %843

; <label>:843                                     ; preds = %838, %832
  %844 = phi float [ %834, %832 ], [ %839, %838 ]
  %845 = phi float [ %835, %832 ], [ %840, %838 ]
  %846 = phi float [ %836, %832 ], [ %841, %838 ]
  %847 = phi float [ %837, %832 ], [ %842, %838 ]
  %848 = call float @dx.op.binary.f32(i32 35, float %844, float -1.000000e+00)  ; FMax(a,b)
  %849 = call float @dx.op.binary.f32(i32 35, float %845, float -1.000000e+00)  ; FMax(a,b)
  %850 = call float @dx.op.binary.f32(i32 35, float %846, float -1.000000e+00)  ; FMax(a,b)
  %851 = call float @dx.op.binary.f32(i32 35, float %847, float -1.000000e+00)  ; FMax(a,b)
  %852 = call float @dx.op.binary.f32(i32 36, float %848, float 1.000000e+00)  ; FMin(a,b)
  %853 = call float @dx.op.binary.f32(i32 36, float %849, float 1.000000e+00)  ; FMin(a,b)
  %854 = call float @dx.op.binary.f32(i32 36, float %850, float 1.000000e+00)  ; FMin(a,b)
  %855 = call float @dx.op.binary.f32(i32 36, float %851, float 1.000000e+00)  ; FMin(a,b)
  %856 = fmul fast float %852, 1.500000e+00
  %857 = call float @dx.op.tertiary.f32(i32 46, float -2.000000e+00, float %854, float %856)  ; FMad(a,b,c)
  %858 = call float @dx.op.tertiary.f32(i32 46, float 4.000000e+00, float %853, float 0.000000e+00)  ; FMad(a,b,c)
  %859 = call float @dx.op.tertiary.f32(i32 46, float -4.000000e+00, float %855, float %858)  ; FMad(a,b,c)
  %860 = fmul fast float %852, 0x3FEBB67AE0000000
  %861 = call float @dx.op.tertiary.f32(i32 46, float 0xBFD8A23460000000, float %854, float %860)  ; FMad(a,b,c)
  %862 = call float @dx.op.tertiary.f32(i32 46, float 5.000000e-01, float %853, float 0.000000e+00)  ; FMad(a,b,c)
  %863 = call float @dx.op.tertiary.f32(i32 46, float 5.000000e-01, float %855, float %862)  ; FMad(a,b,c)
  %864 = fadd fast float %857, 5.000000e-01
  %865 = fadd fast float %861, 5.000000e-01
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %18, i32 %19, i32 0, float %864, float %859, float %865, float %863, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %867

; <label>:866                                     ; preds = %826
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %18, i32 %19, i32 0, float 0.000000e+00, float 0.000000e+00, float 0x3FEF6560C0000000, float 1.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %867

; <label>:867                                     ; preds = %866, %843, %813
  %868 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 419)  ; CBufferLoadLegacy(handle,regIndex)
  %869 = extractvalue %dx.types.CBufRet.f32 %868, 0
  %870 = extractvalue %dx.types.CBufRet.f32 %868, 1
  %871 = extractvalue %dx.types.CBufRet.f32 %868, 2
  %872 = call float @dx.op.dot3.f32(i32 55, float %275, float %276, float %277, float %869, float %870, float %871)  ; Dot3(ax,ay,az,bx,by,bz)
  %873 = fmul fast float %872, %814
  %874 = fcmp fast ogt float %817, 0.000000e+00
  %875 = fdiv fast float 1.000000e+00, %817
  %876 = fmul fast float %873, %875
  %877 = select i1 %874, float %876, float %286
  %878 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %879 = extractvalue %dx.types.CBufRet.f32 %878, 0
  %880 = extractvalue %dx.types.CBufRet.f32 %878, 1
  %881 = extractvalue %dx.types.CBufRet.f32 %878, 2
  %882 = fmul fast float %879, %239
  %883 = fmul fast float %880, %239
  %884 = fmul fast float %881, %239
  %885 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %886 = extractvalue %dx.types.CBufRet.f32 %885, 0
  %887 = extractvalue %dx.types.CBufRet.f32 %885, 1
  %888 = extractvalue %dx.types.CBufRet.f32 %885, 2
  %889 = fmul fast float %886, %240
  %890 = fmul fast float %887, %240
  %891 = fmul fast float %888, %240
  %892 = fadd fast float %889, %882
  %893 = fadd fast float %890, %883
  %894 = fadd fast float %891, %884
  %895 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %896 = extractvalue %dx.types.CBufRet.f32 %895, 0
  %897 = extractvalue %dx.types.CBufRet.f32 %895, 1
  %898 = extractvalue %dx.types.CBufRet.f32 %895, 2
  %899 = fadd fast float %892, %896
  %900 = fadd fast float %893, %897
  %901 = fadd fast float %894, %898
  %902 = fmul fast float %899, %877
  %903 = fmul fast float %900, %877
  %904 = fmul fast float %901, %877
  %905 = call float @dx.op.dot3.f32(i32 55, float %902, float %903, float %904, float %902, float %903, float %904)  ; Dot3(ax,ay,az,bx,by,bz)
  %906 = call float @dx.op.unary.f32(i32 25, float %905)  ; Rsqrt(value)
  %907 = fmul fast float %906, %905
  %908 = fmul fast float %906, %902
  %909 = fmul fast float %906, %903
  %910 = fmul fast float %906, %904
  %911 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %17, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %912 = extractvalue %dx.types.CBufRet.i32 %911, 1
  %913 = and i32 %912, 1
  %914 = icmp ne i32 %913, 0
  %915 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %916 = extractvalue %dx.types.CBufRet.f32 %915, 2
  %917 = fcmp fast ogt float %916, 0.000000e+00
  %918 = and i1 %914, %917
  br i1 %918, label %919, label %1077, !dx.controlflow.hints !53

; <label>:919                                     ; preds = %867
  %920 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %921 = extractvalue %dx.types.CBufRet.f32 %920, 2
  %922 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %923 = extractvalue %dx.types.CBufRet.f32 %922, 2
  %924 = fsub fast float %921, %923
  %925 = extractvalue %dx.types.CBufRet.i32 %911, 0
  %926 = call i32 @dx.op.binary.i32(i32 40, i32 %925, i32 3)  ; UMin(a,b)
  %927 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %928 = extractvalue %dx.types.CBufRet.f32 %927, 0
  %929 = extractvalue %dx.types.CBufRet.f32 %927, 1
  %930 = extractvalue %dx.types.CBufRet.f32 %922, 0
  %931 = extractvalue %dx.types.CBufRet.f32 %922, 1
  %932 = fsub fast float %928, %930
  %933 = fsub fast float %929, %931
  %934 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %935 = extractvalue %dx.types.CBufRet.f32 %934, 0
  %936 = fcmp fast ogt float %935, 0.000000e+00
  %937 = fsub fast float -0.000000e+00, %932
  %938 = fsub fast float -0.000000e+00, %933
  %939 = call float @dx.op.dot2.f32(i32 54, float %908, float %909, float %908, float %909)  ; Dot2(ax,ay,bx,by)
  %940 = call float @dx.op.dot2.f32(i32 54, float %908, float %909, float %937, float %938)  ; Dot2(ax,ay,bx,by)
  %941 = fmul fast float %940, 2.000000e+00
  %942 = call float @dx.op.dot2.f32(i32 54, float %937, float %938, float %937, float %938)  ; Dot2(ax,ay,bx,by)
  %943 = fmul fast float %935, %935
  %944 = fsub fast float %942, %943
  %945 = fmul fast float %941, %941
  %946 = fmul fast float %939, 4.000000e+00
  %947 = fmul fast float %946, %944
  %948 = fsub fast float %945, %947
  %949 = fcmp fast ogt float %948, 0.000000e+00
  br i1 %949, label %950, label %965, !dx.controlflow.hints !54

; <label>:950                                     ; preds = %919
  %951 = fcmp fast ogt float %941, 0.000000e+00
  %952 = call float @dx.op.unary.f32(i32 24, float %948)  ; Sqrt(value)
  %953 = fsub fast float -0.000000e+00, %952
  %954 = select i1 %951, float %952, float %953
  %955 = fadd fast float %954, %941
  %956 = fmul float %955, -5.000000e-01
  %957 = fdiv fast float %956, %939
  %958 = call float @dx.op.binary.f32(i32 35, float %957, float 0.000000e+00)  ; FMax(a,b)
  %959 = call float @dx.op.binary.f32(i32 36, float %907, float %958)  ; FMin(a,b)
  %960 = fdiv fast float %944, %956
  %961 = call float @dx.op.binary.f32(i32 35, float %960, float 0.000000e+00)  ; FMax(a,b)
  %962 = call float @dx.op.binary.f32(i32 36, float %907, float %961)  ; FMin(a,b)
  %963 = call float @dx.op.binary.f32(i32 36, float %959, float %962)  ; FMin(a,b)
  %964 = call float @dx.op.binary.f32(i32 35, float %959, float %962)  ; FMax(a,b)
  br label %965

; <label>:965                                     ; preds = %950, %919
  %966 = phi float [ %964, %950 ], [ -1.000000e+00, %919 ]
  %967 = phi float [ %963, %950 ], [ -1.000000e+00, %919 ]
  %968 = phi i1 [ true, %950 ], [ false, %919 ]
  %969 = and i1 %936, %968
  br i1 %969, label %970, label %972, !dx.controlflow.hints !55

; <label>:970                                     ; preds = %965
  %971 = fcmp fast oeq float %967, %966
  br i1 %971, label %1077, label %973, !dx.controlflow.hints !56

; <label>:972                                     ; preds = %965
  br i1 %936, label %1077, label %973, !dx.controlflow.hints !57

; <label>:973                                     ; preds = %972, %970
  %974 = phi float [ %907, %972 ], [ %966, %970 ]
  %975 = phi float [ 0.000000e+00, %972 ], [ %967, %970 ]
  %976 = fcmp fast oeq float %910, 0.000000e+00
  %977 = fdiv fast float %924, %910
  %978 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %977)  ; FMax(a,b)
  %979 = select i1 %976, float %974, float %978
  %980 = call float @dx.op.binary.f32(i32 36, float %974, float %979)  ; FMin(a,b)
  %981 = fcmp fast ogt float %910, 0.000000e+00
  %982 = fcmp fast olt float %924, 0.000000e+00
  br i1 %981, label %983, label %984, !dx.controlflow.hints !58

; <label>:983                                     ; preds = %973
  br i1 %982, label %1077, label %987, !dx.controlflow.hints !59

; <label>:984                                     ; preds = %973
  br i1 %982, label %985, label %987, !dx.controlflow.hints !60

; <label>:985                                     ; preds = %984
  %986 = call float @dx.op.binary.f32(i32 35, float %975, float %980)  ; FMax(a,b)
  br label %987

; <label>:987                                     ; preds = %985, %984, %983
  %988 = phi float [ %986, %985 ], [ %975, %984 ], [ %975, %983 ]
  %989 = getelementptr inbounds [3 x float], [3 x float]* %21, i32 0, i32 0
  store float -1.000000e+00, float* %989, align 4, !tbaa !61, !noalias !65
  %990 = getelementptr inbounds [3 x float], [3 x float]* %21, i32 0, i32 1
  store float -1.000000e+00, float* %990, align 4, !tbaa !61, !noalias !65
  %991 = getelementptr inbounds [3 x float], [3 x float]* %21, i32 0, i32 2
  store float -1.000000e+00, float* %991, align 4, !tbaa !61, !noalias !65
  %992 = getelementptr inbounds [3 x float], [3 x float]* %22, i32 0, i32 0
  store float -1.000000e+00, float* %992, align 4, !tbaa !61, !noalias !65
  %993 = getelementptr inbounds [3 x float], [3 x float]* %22, i32 0, i32 1
  store float -1.000000e+00, float* %993, align 4, !tbaa !61, !noalias !65
  %994 = getelementptr inbounds [3 x float], [3 x float]* %22, i32 0, i32 2
  store float -1.000000e+00, float* %994, align 4, !tbaa !61, !noalias !65
  %995 = icmp sgt i32 %926, 0
  br i1 %995, label %996, label %1054

; <label>:996                                     ; preds = %987
  br label %997

; <label>:997                                     ; preds = %1044, %996
  %998 = phi i32 [ %1045, %1044 ], [ 0, %996 ]
  %999 = add nuw i32 %998, 171
  %1000 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 %999)  ; CBufferLoadLegacy(handle,regIndex)
  %1001 = extractvalue %dx.types.CBufRet.f32 %1000, 0
  %1002 = extractvalue %dx.types.CBufRet.f32 %1000, 1
  %1003 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1004 = extractvalue %dx.types.CBufRet.f32 %1003, 0
  %1005 = extractvalue %dx.types.CBufRet.f32 %1003, 1
  %1006 = fsub fast float %1001, %1004
  %1007 = fsub fast float %1002, %1005
  %1008 = extractvalue %dx.types.CBufRet.f32 %1000, 2
  %1009 = fsub fast float -0.000000e+00, %1006
  %1010 = fsub fast float -0.000000e+00, %1007
  %1011 = call float @dx.op.dot2.f32(i32 54, float %908, float %909, float %1009, float %1010)  ; Dot2(ax,ay,bx,by)
  %1012 = fmul fast float %1011, 2.000000e+00
  %1013 = call float @dx.op.dot2.f32(i32 54, float %1009, float %1010, float %1009, float %1010)  ; Dot2(ax,ay,bx,by)
  %1014 = fmul fast float %1008, %1008
  %1015 = fsub fast float %1013, %1014
  %1016 = fmul fast float %1012, %1012
  %1017 = fmul fast float %946, %1015
  %1018 = fsub fast float %1016, %1017
  %1019 = fcmp fast ogt float %1018, 0.000000e+00
  br i1 %1019, label %1020, label %1035, !dx.controlflow.hints !54

; <label>:1020                                    ; preds = %997
  %1021 = fcmp fast ogt float %1012, 0.000000e+00
  %1022 = call float @dx.op.unary.f32(i32 24, float %1018)  ; Sqrt(value)
  %1023 = fsub fast float -0.000000e+00, %1022
  %1024 = select i1 %1021, float %1022, float %1023
  %1025 = fadd fast float %1024, %1012
  %1026 = fmul float %1025, -5.000000e-01
  %1027 = fdiv fast float %1026, %939
  %1028 = call float @dx.op.binary.f32(i32 35, float %1027, float 0.000000e+00)  ; FMax(a,b)
  %1029 = call float @dx.op.binary.f32(i32 36, float %974, float %1028)  ; FMin(a,b)
  %1030 = fdiv fast float %1015, %1026
  %1031 = call float @dx.op.binary.f32(i32 35, float %1030, float 0.000000e+00)  ; FMax(a,b)
  %1032 = call float @dx.op.binary.f32(i32 36, float %974, float %1031)  ; FMin(a,b)
  %1033 = call float @dx.op.binary.f32(i32 36, float %1029, float %1032)  ; FMin(a,b)
  %1034 = call float @dx.op.binary.f32(i32 35, float %1029, float %1032)  ; FMax(a,b)
  br label %1035

; <label>:1035                                    ; preds = %1020, %997
  %1036 = phi float [ %1034, %1020 ], [ -1.000000e+00, %997 ]
  %1037 = phi float [ %1033, %1020 ], [ -1.000000e+00, %997 ]
  %1038 = phi i1 [ true, %1020 ], [ false, %997 ]
  br i1 %1038, label %1039, label %1044, !dx.controlflow.hints !76

; <label>:1039                                    ; preds = %1035
  %1040 = call float @dx.op.binary.f32(i32 35, float %988, float %1037)  ; FMax(a,b)
  %1041 = getelementptr inbounds [3 x float], [3 x float]* %21, i32 0, i32 %998
  store float %1040, float* %1041, align 4, !tbaa !61, !noalias !65
  %1042 = call float @dx.op.binary.f32(i32 35, float %988, float %1036)  ; FMax(a,b)
  %1043 = getelementptr inbounds [3 x float], [3 x float]* %22, i32 0, i32 %998
  store float %1042, float* %1043, align 4, !tbaa !61, !noalias !65
  br label %1044

; <label>:1044                                    ; preds = %1039, %1035
  %1045 = add nuw nsw i32 %998, 1
  %1046 = icmp eq i32 %1045, %926
  br i1 %1046, label %1047, label %997

; <label>:1047                                    ; preds = %1044
  %1048 = load float, float* %991, align 4, !tbaa !61, !alias.scope !77, !noalias !80
  %1049 = load float, float* %990, align 4, !tbaa !61, !alias.scope !83, !noalias !84
  %1050 = load float, float* %989, align 4, !tbaa !61, !alias.scope !85, !noalias !86
  %1051 = load float, float* %994, align 4, !tbaa !61, !alias.scope !87, !noalias !90
  %1052 = load float, float* %993, align 4, !tbaa !61, !alias.scope !93, !noalias !94
  %1053 = load float, float* %992, align 4, !tbaa !61, !alias.scope !95, !noalias !96
  br label %1054

; <label>:1054                                    ; preds = %1047, %987
  %1055 = phi float [ -1.000000e+00, %987 ], [ %1053, %1047 ]
  %1056 = phi float [ -1.000000e+00, %987 ], [ %1052, %1047 ]
  %1057 = phi float [ -1.000000e+00, %987 ], [ %1051, %1047 ]
  %1058 = phi float [ -1.000000e+00, %987 ], [ %1050, %1047 ]
  %1059 = phi float [ -1.000000e+00, %987 ], [ %1049, %1047 ]
  %1060 = phi float [ -1.000000e+00, %987 ], [ %1048, %1047 ]
  %1061 = call float @dx.op.binary.f32(i32 36, float %1059, float %1060)  ; FMin(a,b)
  %1062 = call float @dx.op.binary.f32(i32 36, float %1058, float %1061)  ; FMin(a,b)
  %1063 = call float @dx.op.binary.f32(i32 35, float %1058, float %1059)  ; FMax(a,b)
  %1064 = call float @dx.op.binary.f32(i32 36, float %1063, float %1060)  ; FMin(a,b)
  %1065 = call float @dx.op.binary.f32(i32 36, float %1058, float %1059)  ; FMin(a,b)
  %1066 = call float @dx.op.binary.f32(i32 35, float %1065, float %1064)  ; FMax(a,b)
  %1067 = call float @dx.op.binary.f32(i32 35, float %1059, float %1060)  ; FMax(a,b)
  %1068 = call float @dx.op.binary.f32(i32 35, float %1058, float %1067)  ; FMax(a,b)
  store float %1062, float* %989, align 4, !tbaa !61, !alias.scope !85, !noalias !86
  store float %1066, float* %990, align 4, !tbaa !61, !alias.scope !83, !noalias !84
  store float %1068, float* %991, align 4, !tbaa !61, !alias.scope !77, !noalias !80
  %1069 = call float @dx.op.binary.f32(i32 36, float %1056, float %1057)  ; FMin(a,b)
  %1070 = call float @dx.op.binary.f32(i32 36, float %1055, float %1069)  ; FMin(a,b)
  %1071 = call float @dx.op.binary.f32(i32 35, float %1055, float %1056)  ; FMax(a,b)
  %1072 = call float @dx.op.binary.f32(i32 36, float %1071, float %1057)  ; FMin(a,b)
  %1073 = call float @dx.op.binary.f32(i32 36, float %1055, float %1056)  ; FMin(a,b)
  %1074 = call float @dx.op.binary.f32(i32 35, float %1073, float %1072)  ; FMax(a,b)
  %1075 = call float @dx.op.binary.f32(i32 35, float %1056, float %1057)  ; FMax(a,b)
  %1076 = call float @dx.op.binary.f32(i32 35, float %1055, float %1075)  ; FMax(a,b)
  store float %1070, float* %992, align 4, !tbaa !61, !alias.scope !95, !noalias !96
  store float %1074, float* %993, align 4, !tbaa !61, !alias.scope !93, !noalias !94
  store float %1076, float* %994, align 4, !tbaa !61, !alias.scope !87, !noalias !90
  br label %1077

; <label>:1077                                    ; preds = %1054, %983, %972, %970, %867
  %1078 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 423)  ; CBufferLoadLegacy(handle,regIndex)
  %1079 = extractvalue %dx.types.CBufRet.f32 %1078, 2
  %1080 = fmul fast float %1079, %877
  %1081 = call float @dx.op.unary.f32(i32 7, float %1080)  ; Saturate(value)
  %1082 = fptoui float %816 to i32
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1083 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %20
  store i32 %1082, i32 addrspace(3)* %1083, align 4, !tbaa !97
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1084 = and i32 %20, 63
  %1085 = icmp ult i32 %1084, 32
  br i1 %1085, label %1086, label %1092, !dx.controlflow.hints !99

; <label>:1086                                    ; preds = %1077
  %1087 = add i32 %20, 32
  %1088 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1087
  %1089 = load i32, i32 addrspace(3)* %1088, align 4, !tbaa !97
  %1090 = load i32, i32 addrspace(3)* %1083, align 4, !tbaa !97
  %1091 = call i32 @dx.op.binary.i32(i32 40, i32 %1090, i32 %1089)  ; UMin(a,b)
  store i32 %1091, i32 addrspace(3)* %1083, align 4, !tbaa !97
  br label %1092

; <label>:1092                                    ; preds = %1086, %1077
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %1093 = icmp ult i32 %1084, 16
  br i1 %1093, label %1094, label %1100, !dx.controlflow.hints !100

; <label>:1094                                    ; preds = %1092
  %1095 = add i32 %20, 16
  %1096 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1095
  %1097 = load i32, i32 addrspace(3)* %1096, align 4, !tbaa !97
  %1098 = load i32, i32 addrspace(3)* %1083, align 4, !tbaa !97
  %1099 = call i32 @dx.op.binary.i32(i32 40, i32 %1098, i32 %1097)  ; UMin(a,b)
  store i32 %1099, i32 addrspace(3)* %1083, align 4, !tbaa !97
  br label %1100

; <label>:1100                                    ; preds = %1094, %1092
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %1101 = icmp ult i32 %1084, 8
  br i1 %1101, label %1102, label %1108, !dx.controlflow.hints !101

; <label>:1102                                    ; preds = %1100
  %1103 = add i32 %20, 8
  %1104 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1103
  %1105 = load i32, i32 addrspace(3)* %1104, align 4, !tbaa !97
  %1106 = load i32, i32 addrspace(3)* %1083, align 4, !tbaa !97
  %1107 = call i32 @dx.op.binary.i32(i32 40, i32 %1106, i32 %1105)  ; UMin(a,b)
  store i32 %1107, i32 addrspace(3)* %1083, align 4, !tbaa !97
  br label %1108

; <label>:1108                                    ; preds = %1102, %1100
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %1109 = icmp ult i32 %1084, 4
  br i1 %1109, label %1110, label %1116, !dx.controlflow.hints !102

; <label>:1110                                    ; preds = %1108
  %1111 = add i32 %20, 4
  %1112 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1111
  %1113 = load i32, i32 addrspace(3)* %1112, align 4, !tbaa !97
  %1114 = load i32, i32 addrspace(3)* %1083, align 4, !tbaa !97
  %1115 = call i32 @dx.op.binary.i32(i32 40, i32 %1114, i32 %1113)  ; UMin(a,b)
  store i32 %1115, i32 addrspace(3)* %1083, align 4, !tbaa !97
  br label %1116

; <label>:1116                                    ; preds = %1110, %1108
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %1117 = icmp ult i32 %1084, 2
  br i1 %1117, label %1118, label %1124, !dx.controlflow.hints !103

; <label>:1118                                    ; preds = %1116
  %1119 = add i32 %20, 2
  %1120 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1119
  %1121 = load i32, i32 addrspace(3)* %1120, align 4, !tbaa !97
  %1122 = load i32, i32 addrspace(3)* %1083, align 4, !tbaa !97
  %1123 = call i32 @dx.op.binary.i32(i32 40, i32 %1122, i32 %1121)  ; UMin(a,b)
  store i32 %1123, i32 addrspace(3)* %1083, align 4, !tbaa !97
  br label %1124

; <label>:1124                                    ; preds = %1118, %1116
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %1125 = icmp eq i32 %1084, 0
  br i1 %1125, label %1126, label %1132, !dx.controlflow.hints !104

; <label>:1126                                    ; preds = %1124
  %1127 = add i32 %20, 1
  %1128 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1127
  %1129 = load i32, i32 addrspace(3)* %1128, align 4, !tbaa !97
  %1130 = load i32, i32 addrspace(3)* %1083, align 4, !tbaa !97
  %1131 = call i32 @dx.op.binary.i32(i32 40, i32 %1130, i32 %1129)  ; UMin(a,b)
  store i32 %1131, i32 addrspace(3)* %1083, align 4, !tbaa !97
  br label %1132

; <label>:1132                                    ; preds = %1126, %1124
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1133 = and i32 %20, -64
  %1134 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1133
  %1135 = load i32, i32 addrspace(3)* %1134, align 4, !tbaa !97
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  store i32 %1082, i32 addrspace(3)* %1083, align 4, !tbaa !97
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  br i1 %1085, label %1136, label %1142, !dx.controlflow.hints !105

; <label>:1136                                    ; preds = %1132
  %1137 = add i32 %20, 32
  %1138 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1137
  %1139 = load i32, i32 addrspace(3)* %1138, align 4, !tbaa !97
  %1140 = load i32, i32 addrspace(3)* %1083, align 4, !tbaa !97
  %1141 = call i32 @dx.op.binary.i32(i32 39, i32 %1140, i32 %1139)  ; UMax(a,b)
  store i32 %1141, i32 addrspace(3)* %1083, align 4, !tbaa !97
  br label %1142

; <label>:1142                                    ; preds = %1136, %1132
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %1093, label %1143, label %1149, !dx.controlflow.hints !106

; <label>:1143                                    ; preds = %1142
  %1144 = add i32 %20, 16
  %1145 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1144
  %1146 = load i32, i32 addrspace(3)* %1145, align 4, !tbaa !97
  %1147 = load i32, i32 addrspace(3)* %1083, align 4, !tbaa !97
  %1148 = call i32 @dx.op.binary.i32(i32 39, i32 %1147, i32 %1146)  ; UMax(a,b)
  store i32 %1148, i32 addrspace(3)* %1083, align 4, !tbaa !97
  br label %1149

; <label>:1149                                    ; preds = %1143, %1142
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %1101, label %1150, label %1156, !dx.controlflow.hints !107

; <label>:1150                                    ; preds = %1149
  %1151 = add i32 %20, 8
  %1152 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1151
  %1153 = load i32, i32 addrspace(3)* %1152, align 4, !tbaa !97
  %1154 = load i32, i32 addrspace(3)* %1083, align 4, !tbaa !97
  %1155 = call i32 @dx.op.binary.i32(i32 39, i32 %1154, i32 %1153)  ; UMax(a,b)
  store i32 %1155, i32 addrspace(3)* %1083, align 4, !tbaa !97
  br label %1156

; <label>:1156                                    ; preds = %1150, %1149
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %1109, label %1157, label %1163, !dx.controlflow.hints !108

; <label>:1157                                    ; preds = %1156
  %1158 = add i32 %20, 4
  %1159 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1158
  %1160 = load i32, i32 addrspace(3)* %1159, align 4, !tbaa !97
  %1161 = load i32, i32 addrspace(3)* %1083, align 4, !tbaa !97
  %1162 = call i32 @dx.op.binary.i32(i32 39, i32 %1161, i32 %1160)  ; UMax(a,b)
  store i32 %1162, i32 addrspace(3)* %1083, align 4, !tbaa !97
  br label %1163

; <label>:1163                                    ; preds = %1157, %1156
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %1117, label %1164, label %1170, !dx.controlflow.hints !109

; <label>:1164                                    ; preds = %1163
  %1165 = add i32 %20, 2
  %1166 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1165
  %1167 = load i32, i32 addrspace(3)* %1166, align 4, !tbaa !97
  %1168 = load i32, i32 addrspace(3)* %1083, align 4, !tbaa !97
  %1169 = call i32 @dx.op.binary.i32(i32 39, i32 %1168, i32 %1167)  ; UMax(a,b)
  store i32 %1169, i32 addrspace(3)* %1083, align 4, !tbaa !97
  br label %1170

; <label>:1170                                    ; preds = %1164, %1163
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %1125, label %1171, label %1177, !dx.controlflow.hints !110

; <label>:1171                                    ; preds = %1170
  %1172 = add i32 %20, 1
  %1173 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1172
  %1174 = load i32, i32 addrspace(3)* %1173, align 4, !tbaa !97
  %1175 = load i32, i32 addrspace(3)* %1083, align 4, !tbaa !97
  %1176 = call i32 @dx.op.binary.i32(i32 39, i32 %1175, i32 %1174)  ; UMax(a,b)
  store i32 %1176, i32 addrspace(3)* %1083, align 4, !tbaa !97
  br label %1177

; <label>:1177                                    ; preds = %1171, %1170
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1178 = load i32, i32 addrspace(3)* %1134, align 4, !tbaa !97
  %1179 = uitofp i32 %1178 to float
  %1180 = uitofp i32 %1135 to float
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %3, i32 %18, i32 %19, i32 undef, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %1181 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1182 = extractvalue %dx.types.CBufRet.f32 %1181, 0
  %1183 = fmul fast float %1182, %816
  %1184 = fmul fast float %1182, %1179
  %1185 = fmul fast float %1182, %1180
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %4, i32 %18, i32 %19, i32 undef, float %1183, float %1184, float %1185, float %1183, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %18, i32 %19, i32 undef, float %1081, float %1081, float %1081, float %1081, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
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
declare %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32) #3

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
!dx.entryPoints = !{!28}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !14, !20, !23}
!5 = !{!6, !8, !9, !10, !11, !12, !13}
!6 = !{i32 0, %"class.Texture3D<float>"* undef, !"", i32 0, i32 1, i32 1, i32 4, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 0, i32 2, i32 1, i32 4, i32 0, !7}
!9 = !{i32 2, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 8, i32 1, i32 2, i32 0, !7}
!10 = !{i32 3, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 9, i32 1, i32 2, i32 0, !7}
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
!23 = !{!24, !25, !26, !27}
!24 = !{i32 0, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!25 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 3, i32 1, i32 0, null}
!26 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!27 = !{i32 3, %struct.SamplerState* undef, !"", i32 0, i32 5, i32 1, i32 0, null}
!28 = !{void ()* @cs_fog_raymarching_air_clouds, !"cs_fog_raymarching_air_clouds", null, !4, !29}
!29 = !{i32 0, i64 272, i32 4, !30}
!30 = !{i32 8, i32 8, i32 1}
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
!43 = distinct !{!43, !"dx.controlflow.hints", i32 2}
!44 = distinct !{!44, !"dx.controlflow.hints", i32 2}
!45 = distinct !{!45, !"dx.controlflow.hints", i32 2}
!46 = distinct !{!46, !"dx.controlflow.hints", i32 2}
!47 = distinct !{!47, !"dx.controlflow.hints", i32 1}
!48 = distinct !{!48, !"dx.controlflow.hints", i32 2}
!49 = distinct !{!49, !"dx.controlflow.hints", i32 2}
!50 = distinct !{!50, !"dx.controlflow.hints", i32 2}
!51 = distinct !{!51, !"dx.controlflow.hints", i32 2}
!52 = distinct !{!52, !"dx.controlflow.hints", i32 2}
!53 = distinct !{!53, !"dx.controlflow.hints", i32 1}
!54 = distinct !{!54, !"dx.controlflow.hints", i32 2}
!55 = distinct !{!55, !"dx.controlflow.hints", i32 2}
!56 = distinct !{!56, !"dx.controlflow.hints", i32 2}
!57 = distinct !{!57, !"dx.controlflow.hints", i32 2}
!58 = distinct !{!58, !"dx.controlflow.hints", i32 2}
!59 = distinct !{!59, !"dx.controlflow.hints", i32 2}
!60 = distinct !{!60, !"dx.controlflow.hints", i32 2}
!61 = !{!62, !62, i64 0}
!62 = !{!"float", !63, i64 0}
!63 = !{!"omnipotent char", !64, i64 0}
!64 = !{!"Simple C/C++ TBAA"}
!65 = !{!66, !68, !70, !71, !73, !74, !75}
!66 = distinct !{!66, !67, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z: %cFogParams"}
!67 = distinct !{!67, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z"}
!68 = distinct !{!68, !69, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %scattering"}
!69 = distinct !{!69, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z"}
!70 = distinct !{!70, !69, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %extinction"}
!71 = distinct !{!71, !72, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z: %scattering"}
!72 = distinct !{!72, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z"}
!73 = distinct !{!73, !72, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z: %transmission"}
!74 = distinct !{!74, !72, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z: %depthDensityWeighted"}
!75 = distinct !{!75, !72, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z: %rawShadowmapData"}
!76 = distinct !{!76, !"dx.controlflow.hints", i32 2}
!77 = !{!78}
!78 = distinct !{!78, !79, !"\01?sort@@YAXAIAM00@Z: %c"}
!79 = distinct !{!79, !"\01?sort@@YAXAIAM00@Z"}
!80 = !{!81, !82, !66, !68, !70, !71, !73, !74, !75}
!81 = distinct !{!81, !79, !"\01?sort@@YAXAIAM00@Z: %a"}
!82 = distinct !{!82, !79, !"\01?sort@@YAXAIAM00@Z: %b"}
!83 = !{!82}
!84 = !{!81, !78, !66, !68, !70, !71, !73, !74, !75}
!85 = !{!81}
!86 = !{!82, !78, !66, !68, !70, !71, !73, !74, !75}
!87 = !{!88}
!88 = distinct !{!88, !89, !"\01?sort@@YAXAIAM00@Z: %c"}
!89 = distinct !{!89, !"\01?sort@@YAXAIAM00@Z"}
!90 = !{!91, !92, !66, !68, !70, !71, !73, !74, !75}
!91 = distinct !{!91, !89, !"\01?sort@@YAXAIAM00@Z: %a"}
!92 = distinct !{!92, !89, !"\01?sort@@YAXAIAM00@Z: %b"}
!93 = !{!92}
!94 = !{!91, !88, !66, !68, !70, !71, !73, !74, !75}
!95 = !{!91}
!96 = !{!92, !88, !66, !68, !70, !71, !73, !74, !75}
!97 = !{!98, !98, i64 0}
!98 = !{!"int", !63, i64 0}
!99 = distinct !{!99, !"dx.controlflow.hints", i32 2}
!100 = distinct !{!100, !"dx.controlflow.hints", i32 2}
!101 = distinct !{!101, !"dx.controlflow.hints", i32 2}
!102 = distinct !{!102, !"dx.controlflow.hints", i32 2}
!103 = distinct !{!103, !"dx.controlflow.hints", i32 2}
!104 = distinct !{!104, !"dx.controlflow.hints", i32 2}
!105 = distinct !{!105, !"dx.controlflow.hints", i32 2}
!106 = distinct !{!106, !"dx.controlflow.hints", i32 2}
!107 = distinct !{!107, !"dx.controlflow.hints", i32 2}
!108 = distinct !{!108, !"dx.controlflow.hints", i32 2}
!109 = distinct !{!109, !"dx.controlflow.hints", i32 2}
!110 = distinct !{!110, !"dx.controlflow.hints", i32 2}

