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
; shader hash: 6356056a4e473f88dd25e0ca11c34bca
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

define void @cs_fog_raymarching_clouds() {
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
  %231 = extractvalue %dx.types.CBufRet.f32 %229, 1
  %232 = extractvalue %dx.types.CBufRet.f32 %229, 2
  %233 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %234 = extractvalue %dx.types.CBufRet.f32 %233, 1
  %235 = fmul fast float %227, 2.000000e+00
  %236 = fmul fast float %228, 2.000000e+00
  %237 = fsub fast float 1.000000e+00, %235
  %238 = fsub fast float 1.000000e+00, %236
  %239 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %240 = extractvalue %dx.types.CBufRet.f32 %239, 0
  %241 = extractvalue %dx.types.CBufRet.f32 %239, 1
  %242 = extractvalue %dx.types.CBufRet.f32 %239, 2
  %243 = fmul fast float %240, %237
  %244 = fmul fast float %241, %237
  %245 = fmul fast float %242, %237
  %246 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %247 = extractvalue %dx.types.CBufRet.f32 %246, 0
  %248 = extractvalue %dx.types.CBufRet.f32 %246, 1
  %249 = extractvalue %dx.types.CBufRet.f32 %246, 2
  %250 = fmul fast float %247, %238
  %251 = fmul fast float %248, %238
  %252 = fmul fast float %249, %238
  %253 = fadd fast float %250, %243
  %254 = fadd fast float %251, %244
  %255 = fadd fast float %252, %245
  %256 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %257 = extractvalue %dx.types.CBufRet.f32 %256, 0
  %258 = extractvalue %dx.types.CBufRet.f32 %256, 1
  %259 = extractvalue %dx.types.CBufRet.f32 %256, 2
  %260 = fadd fast float %253, %257
  %261 = fadd fast float %254, %258
  %262 = fadd fast float %255, %259
  %263 = fmul fast float %260, %234
  %264 = fmul fast float %261, %234
  %265 = fmul fast float %262, %234
  %266 = fmul fast float %263, %263
  %267 = fmul fast float %264, %264
  %268 = fadd fast float %266, %267
  %269 = fmul fast float %265, %265
  %270 = fadd fast float %268, %269
  %271 = call float @dx.op.unary.f32(i32 24, float %270)  ; Sqrt(value)
  %272 = fdiv fast float 1.000000e+00, %271
  %273 = fmul fast float %263, %272
  %274 = fmul fast float %264, %272
  %275 = fmul fast float %265, %272
  %276 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %6, i32 0, i32 %33, i32 %34, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %277 = extractvalue %dx.types.ResRet.f32 %276, 0
  %278 = fcmp fast ogt float %277, -1.000000e+00
  %279 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %280 = extractvalue %dx.types.CBufRet.f32 %279, 1
  %281 = select i1 %278, float %280, float 1.000000e+00
  %282 = fadd fast float %277, 1.000000e+00
  %283 = fmul fast float %281, %282
  %284 = call float @dx.op.unary.f32(i32 6, float %283)  ; FAbs(value)
  %285 = fdiv fast float 1.000000e+00, %234
  %286 = fmul fast float %285, %271
  %287 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 423)  ; CBufferLoadLegacy(handle,regIndex)
  %288 = extractvalue %dx.types.CBufRet.f32 %287, 1
  %289 = fmul fast float %288, %286
  %290 = fmul fast float %286, %284
  %291 = extractvalue %dx.types.CBufRet.f32 %279, 3
  %292 = fcmp fast oge float %284, %291
  %293 = call float @dx.op.binary.f32(i32 36, float %290, float %289)  ; FMin(a,b)
  %294 = select i1 %292, float %289, float %293
  %295 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %17, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %296 = extractvalue %dx.types.CBufRet.i32 %295, 3
  %297 = icmp eq i32 %296, 0
  %298 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 31)  ; CBufferLoadLegacy(handle,regIndex)
  %299 = extractvalue %dx.types.CBufRet.f32 %298, 2
  %300 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 32)  ; CBufferLoadLegacy(handle,regIndex)
  %301 = extractvalue %dx.types.CBufRet.f32 %300, 2
  %302 = fsub fast float %299, %232
  %303 = fadd fast float %302, %301
  br i1 %297, label %315, label %304, !dx.controlflow.hints !32

; <label>:304                                     ; preds = %202
  %305 = fsub fast float -0.000000e+00, %231
  %306 = fsub fast float -0.000000e+00, %230
  %307 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %306, float %305, float %303)  ; Dot3(ax,ay,az,bx,by,bz)
  %308 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %273, float %274, float %275)  ; Dot3(ax,ay,az,bx,by,bz)
  %309 = fdiv fast float 1.000000e+00, %308
  %310 = fmul fast float %309, %307
  %311 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %306, float %305, float %302)  ; Dot3(ax,ay,az,bx,by,bz)
  %312 = fmul fast float %309, %311
  %313 = call float @dx.op.binary.f32(i32 36, float %310, float %312)  ; FMin(a,b)
  %314 = call float @dx.op.binary.f32(i32 35, float %310, float %312)  ; FMax(a,b)
  br label %348

; <label>:315                                     ; preds = %202
  %316 = fdiv fast float 1.000000e+00, %273
  %317 = fdiv fast float 1.000000e+00, %274
  %318 = fdiv fast float 1.000000e+00, %275
  %319 = extractvalue %dx.types.CBufRet.f32 %298, 0
  %320 = extractvalue %dx.types.CBufRet.f32 %298, 1
  %321 = extractvalue %dx.types.CBufRet.f32 %300, 0
  %322 = extractvalue %dx.types.CBufRet.f32 %300, 1
  %323 = fsub fast float %319, %230
  %324 = fmul fast float %323, %316
  %325 = fadd fast float %323, %321
  %326 = fmul fast float %325, %316
  %327 = call float @dx.op.binary.f32(i32 36, float %324, float %326)  ; FMin(a,b)
  %328 = call float @dx.op.binary.f32(i32 35, float %324, float %326)  ; FMax(a,b)
  %329 = fsub fast float %320, %231
  %330 = fmul fast float %329, %317
  %331 = fadd fast float %329, %322
  %332 = fmul fast float %331, %317
  %333 = call float @dx.op.binary.f32(i32 36, float %330, float %332)  ; FMin(a,b)
  %334 = call float @dx.op.binary.f32(i32 35, float %327, float %333)  ; FMax(a,b)
  %335 = call float @dx.op.binary.f32(i32 35, float %330, float %332)  ; FMax(a,b)
  %336 = call float @dx.op.binary.f32(i32 36, float %328, float %335)  ; FMin(a,b)
  %337 = fmul fast float %302, %318
  %338 = fmul fast float %303, %318
  %339 = call float @dx.op.binary.f32(i32 36, float %337, float %338)  ; FMin(a,b)
  %340 = call float @dx.op.binary.f32(i32 35, float %334, float %339)  ; FMax(a,b)
  %341 = call float @dx.op.binary.f32(i32 35, float %337, float %338)  ; FMax(a,b)
  %342 = call float @dx.op.binary.f32(i32 36, float %336, float %341)  ; FMin(a,b)
  %343 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %340)  ; FMax(a,b)
  %344 = fcmp fast ult float %342, %343
  br i1 %344, label %348, label %345, !dx.controlflow.hints !33

; <label>:345                                     ; preds = %315
  %346 = call float @dx.op.binary.f32(i32 36, float %340, float %342)  ; FMin(a,b)
  %347 = call float @dx.op.binary.f32(i32 35, float %340, float %342)  ; FMax(a,b)
  br label %348

; <label>:348                                     ; preds = %345, %315, %304
  %349 = phi float [ %313, %304 ], [ %346, %345 ], [ 0.000000e+00, %315 ]
  %350 = phi float [ %314, %304 ], [ %347, %345 ], [ 0.000000e+00, %315 ]
  %351 = fcmp fast oeq float %350, 0.000000e+00
  br i1 %351, label %355, label %352, !dx.controlflow.hints !34

; <label>:352                                     ; preds = %348
  %353 = call float @dx.op.binary.f32(i32 36, float 0x47EFFFFFE0000000, float %349)  ; FMin(a,b)
  %354 = call float @dx.op.binary.f32(i32 35, float -1.000000e+00, float %350)  ; FMax(a,b)
  br label %355

; <label>:355                                     ; preds = %352, %348
  %356 = phi i32 [ 1, %352 ], [ 0, %348 ]
  %357 = phi float [ %354, %352 ], [ -1.000000e+00, %348 ]
  %358 = phi float [ %353, %352 ], [ 0x47EFFFFFE0000000, %348 ]
  %359 = call float @dx.op.binary.f32(i32 36, float %294, float %357)  ; FMin(a,b)
  %360 = call float @dx.op.binary.f32(i32 35, float %271, float %358)  ; FMax(a,b)
  %361 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %362 = extractvalue %dx.types.CBufRet.f32 %361, 0
  %363 = fmul fast float %219, 2.000000e+00
  %364 = fadd fast float %363, -1.000000e+00
  %365 = fmul fast float %362, %364
  %366 = fadd fast float %365, %360
  %367 = fcmp fast olt float %366, %359
  %368 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %369 = extractvalue %dx.types.CBufRet.f32 %368, 2
  %370 = fcmp fast olt float %369, 1.000000e+00
  %371 = and i1 %370, %367
  br i1 %371, label %372, label %726

; <label>:372                                     ; preds = %355
  %373 = fmul fast float %366, %275
  %374 = fadd fast float %373, %232
  %375 = fmul fast float %366, %274
  %376 = fadd fast float %375, %231
  %377 = fmul fast float %366, %273
  %378 = fadd fast float %377, %230
  br label %379

; <label>:379                                     ; preds = %704, %372
  %380 = phi float [ %706, %704 ], [ 0.000000e+00, %372 ]
  %381 = phi float [ %707, %704 ], [ 1.000000e+00, %372 ]
  %382 = phi float [ %717, %704 ], [ %378, %372 ]
  %383 = phi float [ %718, %704 ], [ %376, %372 ]
  %384 = phi float [ %719, %704 ], [ %374, %372 ]
  %385 = phi float [ %705, %704 ], [ %366, %372 ]
  %386 = phi i32 [ %393, %704 ], [ 0, %372 ]
  %387 = phi float [ %708, %704 ], [ 0.000000e+00, %372 ]
  %388 = phi float [ %709, %704 ], [ 0.000000e+00, %372 ]
  %389 = phi float [ %710, %704 ], [ 0.000000e+00, %372 ]
  %390 = phi float [ %711, %704 ], [ 0.000000e+00, %372 ]
  %391 = phi float [ %712, %704 ], [ 0.000000e+00, %372 ]
  %392 = phi i32 [ %713, %704 ], [ 0, %372 ]
  %393 = add i32 %386, 1
  %394 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %395 = extractvalue %dx.types.CBufRet.f32 %394, 0
  %396 = icmp eq i32 %356, 0
  br i1 %396, label %453, label %397, !dx.controlflow.hints !35

; <label>:397                                     ; preds = %379
  %398 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 35)  ; CBufferLoadLegacy(handle,regIndex)
  %399 = extractvalue %dx.types.CBufRet.f32 %398, 0
  %400 = extractvalue %dx.types.CBufRet.f32 %398, 1
  %401 = extractvalue %dx.types.CBufRet.f32 %398, 2
  %402 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 31)  ; CBufferLoadLegacy(handle,regIndex)
  %403 = extractvalue %dx.types.CBufRet.f32 %402, 0
  %404 = extractvalue %dx.types.CBufRet.f32 %402, 1
  %405 = extractvalue %dx.types.CBufRet.f32 %402, 2
  %406 = fsub fast float %382, %403
  %407 = fsub fast float %383, %404
  %408 = fsub fast float %384, %405
  %409 = fmul fast float %406, %399
  %410 = fmul fast float %407, %400
  %411 = fmul fast float %408, %401
  %412 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %17, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %413 = extractvalue %dx.types.CBufRet.i32 %412, 3
  %414 = icmp eq i32 %413, 0
  br i1 %414, label %418, label %415, !dx.controlflow.hints !36

; <label>:415                                     ; preds = %397
  %416 = call float @dx.op.unary.f32(i32 22, float %409)  ; Frc(value)
  %417 = call float @dx.op.unary.f32(i32 22, float %410)  ; Frc(value)
  br label %418

; <label>:418                                     ; preds = %415, %397
  %419 = phi float [ %416, %415 ], [ %409, %397 ]
  %420 = phi float [ %417, %415 ], [ %410, %397 ]
  %421 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %13, float %419, float %420, float %411, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %422 = extractvalue %dx.types.ResRet.f32 %421, 0
  %423 = fmul fast float %422, 2.000000e+00
  %424 = fadd fast float %423, -1.000000e+00
  %425 = extractvalue %dx.types.CBufRet.f32 %398, 3
  %426 = fmul fast float %424, %425
  %427 = fcmp fast olt float %426, 0.000000e+00
  %428 = fcmp fast oge float %411, 0.000000e+00
  %429 = fcmp fast ole float %411, 1.000000e+00
  br i1 %414, label %432, label %430, !dx.controlflow.hints !37

; <label>:430                                     ; preds = %418
  %431 = and i1 %428, %429
  br label %442

; <label>:432                                     ; preds = %418
  %433 = fcmp fast oge float %409, 0.000000e+00
  %434 = fcmp fast oge float %410, 0.000000e+00
  %435 = and i1 %433, %434
  %436 = and i1 %428, %435
  %437 = fcmp fast ole float %409, 1.000000e+00
  %438 = fcmp fast ole float %410, 1.000000e+00
  %439 = and i1 %437, %438
  %440 = and i1 %429, %439
  %441 = and i1 %436, %440
  br label %442

; <label>:442                                     ; preds = %432, %430
  %443 = phi i1 [ %431, %430 ], [ %441, %432 ]
  %444 = and i1 %427, %443
  %445 = call float @dx.op.unary.f32(i32 6, float %426)  ; FAbs(value)
  %446 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %447 = extractvalue %dx.types.CBufRet.f32 %446, 1
  %448 = extractvalue %dx.types.CBufRet.f32 %446, 0
  %449 = call float @dx.op.binary.f32(i32 35, float %445, float %448)  ; FMax(a,b)
  %450 = select i1 %444, float %447, float %449
  %451 = zext i1 %444 to i32
  %452 = call float @dx.op.binary.f32(i32 36, float 0x47EFFFFFE0000000, float %450)  ; FMin(a,b)
  br label %453

; <label>:453                                     ; preds = %442, %379
  %454 = phi i32 [ %451, %442 ], [ 0, %379 ]
  %455 = phi float [ %452, %442 ], [ 0x47EFFFFFE0000000, %379 ]
  %456 = extractvalue %dx.types.CBufRet.f32 %394, 2
  %457 = fmul fast float %456, %385
  %458 = call float @dx.op.unary.f32(i32 23, float %457)  ; Log(value)
  %459 = fmul fast float %458, 0x3FE62E4300000000
  %460 = call float @dx.op.binary.f32(i32 35, float %459, float 1.000000e+00)  ; FMax(a,b)
  %461 = fmul fast float %460, 0x47EFFFFFE0000000
  %462 = call float @dx.op.binary.f32(i32 36, float %461, float %455)  ; FMin(a,b)
  %463 = call float @dx.op.binary.f32(i32 35, float %462, float %395)  ; FMax(a,b)
  %464 = fadd fast float %359, 0x3F1A36E2E0000000
  %465 = fsub fast float %464, %385
  %466 = call float @dx.op.binary.f32(i32 36, float %465, float %463)  ; FMin(a,b)
  %467 = icmp eq i32 %454, 0
  br i1 %467, label %647, label %468, !dx.controlflow.hints !38

; <label>:468                                     ; preds = %453
  %469 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %470 = extractvalue %dx.types.CBufRet.f32 %469, 3
  %471 = fmul fast float %470, %385
  %472 = fcmp fast oeq float %471, 0.000000e+00
  br i1 %472, label %487, label %473, !dx.controlflow.hints !39

; <label>:473                                     ; preds = %468
  %474 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 41)  ; CBufferLoadLegacy(handle,regIndex)
  %475 = extractvalue %dx.types.CBufRet.f32 %474, 3
  %476 = fmul fast float %475, %471
  %477 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 33)  ; CBufferLoadLegacy(handle,regIndex)
  %478 = extractvalue %dx.types.CBufRet.f32 %477, 0
  %479 = extractvalue %dx.types.CBufRet.f32 %477, 1
  %480 = extractvalue %dx.types.CBufRet.f32 %477, 2
  %481 = fmul fast float %478, %476
  %482 = fmul fast float %479, %476
  %483 = fmul fast float %480, %476
  %484 = call float @dx.op.unary.f32(i32 23, float %481)  ; Log(value)
  %485 = call float @dx.op.unary.f32(i32 23, float %482)  ; Log(value)
  %486 = call float @dx.op.unary.f32(i32 23, float %483)  ; Log(value)
  br label %487

; <label>:487                                     ; preds = %473, %468
  %488 = phi float [ %484, %473 ], [ 0.000000e+00, %468 ]
  %489 = phi float [ %485, %473 ], [ 0.000000e+00, %468 ]
  %490 = phi float [ %486, %473 ], [ 0.000000e+00, %468 ]
  %491 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 35)  ; CBufferLoadLegacy(handle,regIndex)
  %492 = extractvalue %dx.types.CBufRet.f32 %491, 0
  %493 = extractvalue %dx.types.CBufRet.f32 %491, 1
  %494 = extractvalue %dx.types.CBufRet.f32 %491, 2
  %495 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 31)  ; CBufferLoadLegacy(handle,regIndex)
  %496 = extractvalue %dx.types.CBufRet.f32 %495, 0
  %497 = extractvalue %dx.types.CBufRet.f32 %495, 1
  %498 = extractvalue %dx.types.CBufRet.f32 %495, 2
  %499 = fsub fast float %382, %496
  %500 = fsub fast float %383, %497
  %501 = fsub fast float %384, %498
  %502 = fmul fast float %499, %492
  %503 = fmul fast float %500, %493
  %504 = fmul fast float %501, %494
  %505 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %17, i32 29)  ; CBufferLoadLegacy(handle,regIndex)
  %506 = extractvalue %dx.types.CBufRet.i32 %505, 0
  %507 = extractvalue %dx.types.CBufRet.i32 %505, 1
  %508 = uitofp i32 %506 to float
  %509 = uitofp i32 %507 to float
  %510 = fmul fast float %502, %508
  %511 = fmul fast float %503, %509
  %512 = fadd fast float %510, 5.000000e-01
  %513 = fadd fast float %511, 5.000000e-01
  %514 = call float @dx.op.unary.f32(i32 22, float %512)  ; Frc(value)
  %515 = call float @dx.op.unary.f32(i32 22, float %513)  ; Frc(value)
  %516 = call float @dx.op.unary.f32(i32 27, float %512)  ; Round_ni(value)
  %517 = call float @dx.op.unary.f32(i32 27, float %513)  ; Round_ni(value)
  %518 = fadd fast float %516, 1.000000e+00
  %519 = fadd fast float %517, 1.000000e+00
  %520 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 30)  ; CBufferLoadLegacy(handle,regIndex)
  %521 = extractvalue %dx.types.CBufRet.f32 %520, 0
  %522 = extractvalue %dx.types.CBufRet.f32 %520, 1
  %523 = fmul fast float %521, %518
  %524 = fmul fast float %522, %519
  %525 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %9, %dx.types.Handle %14, float %523, float %524, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %526 = extractvalue %dx.types.ResRet.f32 %525, 0
  %527 = extractvalue %dx.types.ResRet.f32 %525, 1
  %528 = extractvalue %dx.types.ResRet.f32 %525, 2
  %529 = extractvalue %dx.types.ResRet.f32 %525, 3
  %530 = extractvalue %dx.types.CBufRet.i32 %505, 2
  %531 = extractvalue %dx.types.CBufRet.f32 %520, 2
  %532 = uitofp i32 %530 to float
  %533 = fadd fast float %532, -1.000000e+00
  %534 = fmul fast float %533, %526
  %535 = fmul fast float %533, %527
  %536 = fmul fast float %533, %528
  %537 = fmul fast float %533, %529
  %538 = fadd fast float %534, 5.000000e-01
  %539 = fadd fast float %535, 5.000000e-01
  %540 = fadd fast float %536, 5.000000e-01
  %541 = fadd fast float %537, 5.000000e-01
  %542 = fptoui float %538 to i32
  %543 = fptoui float %539 to i32
  %544 = fptoui float %540 to i32
  %545 = fptoui float %541 to i32
  %546 = uitofp i32 %542 to float
  %547 = uitofp i32 %543 to float
  %548 = uitofp i32 %544 to float
  %549 = uitofp i32 %545 to float
  %550 = fadd fast float %546, 5.000000e-01
  %551 = fadd fast float %547, 5.000000e-01
  %552 = fadd fast float %548, 5.000000e-01
  %553 = fadd fast float %549, 5.000000e-01
  %554 = fmul fast float %550, %531
  %555 = fmul fast float %551, %531
  %556 = fmul fast float %552, %531
  %557 = fmul fast float %553, %531
  %558 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %15, float %554, float %504, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %559 = extractvalue %dx.types.ResRet.f32 %558, 0
  %560 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %15, float %555, float %504, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %561 = extractvalue %dx.types.ResRet.f32 %560, 0
  %562 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %15, float %556, float %504, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %563 = extractvalue %dx.types.ResRet.f32 %562, 0
  %564 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %15, float %557, float %504, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %565 = extractvalue %dx.types.ResRet.f32 %564, 0
  %566 = fsub fast float %563, %565
  %567 = fmul fast float %566, %514
  %568 = fadd fast float %567, %565
  %569 = fsub fast float %561, %559
  %570 = fmul fast float %569, %514
  %571 = fadd fast float %570, %559
  %572 = fsub fast float %571, %568
  %573 = fmul fast float %572, %515
  %574 = fadd fast float %573, %568
  %575 = fcmp fast ogt float %574, 0.000000e+00
  br i1 %575, label %576, label %644, !dx.controlflow.hints !40

; <label>:576                                     ; preds = %487
  %577 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 33)  ; CBufferLoadLegacy(handle,regIndex)
  %578 = extractvalue %dx.types.CBufRet.f32 %577, 0
  %579 = extractvalue %dx.types.CBufRet.f32 %577, 1
  %580 = extractvalue %dx.types.CBufRet.f32 %577, 2
  %581 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 41)  ; CBufferLoadLegacy(handle,regIndex)
  %582 = extractvalue %dx.types.CBufRet.f32 %581, 0
  %583 = extractvalue %dx.types.CBufRet.f32 %581, 1
  %584 = extractvalue %dx.types.CBufRet.f32 %581, 2
  %585 = fmul fast float %500, %492
  %586 = fmul fast float %501, %492
  %587 = fadd fast float %502, %582
  %588 = fadd fast float %585, %583
  %589 = fadd fast float %586, %584
  %590 = fmul fast float %587, %578
  %591 = fmul fast float %588, %578
  %592 = fmul fast float %589, %578
  %593 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %12, float %590, float %591, float %592, float undef, i32 0, i32 0, i32 0, float %488)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %594 = extractvalue %dx.types.ResRet.f32 %593, 0
  %595 = fmul fast float %587, %579
  %596 = fmul fast float %588, %579
  %597 = fmul fast float %589, %579
  %598 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %12, float %595, float %596, float %597, float undef, i32 0, i32 0, i32 0, float %489)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %599 = extractvalue %dx.types.ResRet.f32 %598, 1
  %600 = fmul fast float %587, %580
  %601 = fmul fast float %588, %580
  %602 = fmul fast float %589, %580
  %603 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %12, float %600, float %601, float %602, float undef, i32 0, i32 0, i32 0, float %490)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %604 = extractvalue %dx.types.ResRet.f32 %603, 2
  %605 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 34)  ; CBufferLoadLegacy(handle,regIndex)
  %606 = extractvalue %dx.types.CBufRet.f32 %605, 1
  %607 = fmul fast float %599, %594
  %608 = fmul fast float %607, %604
  %609 = call float @dx.op.unary.f32(i32 23, float %608)  ; Log(value)
  %610 = fmul fast float %609, %606
  %611 = call float @dx.op.unary.f32(i32 21, float %610)  ; Exp(value)
  %612 = extractvalue %dx.types.CBufRet.f32 %605, 2
  %613 = fmul fast float %574, %574
  %614 = fmul fast float %613, %611
  %615 = fmul fast float %614, %612
  %616 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 32)  ; CBufferLoadLegacy(handle,regIndex)
  %617 = extractvalue %dx.types.CBufRet.f32 %616, 3
  %618 = fmul fast float %617, %615
  %619 = bitcast float %618 to i32
  %620 = sitofp i32 %619 to float
  %621 = fptosi float %620 to i32
  %622 = bitcast i32 %621 to float
  %623 = fsub fast float 1.000000e+00, %615
  %624 = bitcast float %623 to i32
  %625 = sitofp i32 %624 to float
  %626 = fptosi float %625 to i32
  %627 = bitcast i32 %626 to float
  %628 = fadd fast float %622, %627
  %629 = bitcast float %628 to i32
  %630 = sub nsw i32 2129859010, %629
  %631 = bitcast i32 %630 to float
  %632 = fmul fast float %631, %622
  %633 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %634 = extractvalue %dx.types.CBufRet.f32 %633, 2
  %635 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 37)  ; CBufferLoadLegacy(handle,regIndex)
  %636 = extractvalue %dx.types.CBufRet.f32 %635, 0
  %637 = fmul fast float %632, %636
  %638 = fadd fast float %637, 1.000000e+00
  %639 = bitcast float %638 to i32
  %640 = sub nsw i32 2129859010, %639
  %641 = bitcast i32 %640 to float
  %642 = fmul fast float %632, %634
  %643 = fmul fast float %642, %641
  br label %644

; <label>:644                                     ; preds = %576, %487
  %645 = phi float [ %643, %576 ], [ %574, %487 ]
  %646 = fmul fast float %645, %466
  br label %647

; <label>:647                                     ; preds = %644, %453
  %648 = phi float [ %646, %644 ], [ 0.000000e+00, %453 ]
  %649 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %650 = extractvalue %dx.types.CBufRet.f32 %649, 1
  %651 = fcmp fast ogt float %648, %650
  br i1 %651, label %654, label %652, !dx.controlflow.hints !41

; <label>:652                                     ; preds = %647
  %653 = fadd fast float %466, %385
  br label %704

; <label>:654                                     ; preds = %647
  %655 = fmul fast float %648, 0xBFF7154760000000
  %656 = call float @dx.op.unary.f32(i32 21, float %655)  ; Exp(value)
  %657 = call float @dx.op.unary.f32(i32 7, float %656)  ; Saturate(value)
  %658 = fsub fast float 1.000000e+00, %657
  %659 = fdiv fast float %648, %466
  %660 = fadd fast float %466, %385
  %661 = fmul fast float %385, %385
  %662 = fmul fast float %660, %660
  %663 = fsub fast float %661, %662
  %664 = fmul fast float %663, -5.000000e-01
  %665 = fmul fast float %664, %659
  %666 = fadd fast float %665, %380
  %667 = fadd fast float %648, %387
  %668 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %17, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %669 = extractvalue %dx.types.CBufRet.i32 %668, 0
  %670 = icmp eq i32 %669, 0
  br i1 %670, label %697, label %671, !dx.controlflow.hints !42

; <label>:671                                     ; preds = %654
  %672 = icmp ne i32 %392, 0
  %673 = zext i1 %672 to i32
  %674 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %675 = extractvalue %dx.types.CBufRet.f32 %674, 2
  %676 = extractvalue %dx.types.CBufRet.f32 %674, 0
  %677 = fsub fast float %660, %676
  %678 = fmul fast float %677, %675
  %679 = call float @dx.op.unary.f32(i32 7, float %678)  ; Saturate(value)
  %680 = fadd fast float %679, -5.000000e-01
  %681 = fmul fast float %680, 2.000000e+00
  %682 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %683 = extractvalue %dx.types.CBufRet.f32 %682, 2
  %684 = fcmp fast olt float %681, %683
  br i1 %684, label %685, label %697, !dx.controlflow.hints !43

; <label>:685                                     ; preds = %671
  %686 = fmul fast float %681, %681
  %687 = fmul fast float %658, %381
  %688 = fmul fast float %681, %687
  %689 = fmul fast float %686, %687
  %690 = fmul fast float %688, %686
  %691 = fmul fast float %686, %686
  %692 = fmul fast float %691, %687
  %693 = fadd fast float %688, %388
  %694 = fadd fast float %689, %389
  %695 = fadd fast float %690, %390
  %696 = fadd fast float %692, %391
  br label %697

; <label>:697                                     ; preds = %685, %671, %654
  %698 = phi float [ %388, %654 ], [ %693, %685 ], [ %388, %671 ]
  %699 = phi float [ %389, %654 ], [ %694, %685 ], [ %389, %671 ]
  %700 = phi float [ %390, %654 ], [ %695, %685 ], [ %390, %671 ]
  %701 = phi float [ %391, %654 ], [ %696, %685 ], [ %391, %671 ]
  %702 = phi i32 [ %392, %654 ], [ 1, %685 ], [ %673, %671 ]
  %703 = fmul fast float %657, %381
  br label %704

; <label>:704                                     ; preds = %697, %652
  %705 = phi float [ %653, %652 ], [ %660, %697 ]
  %706 = phi float [ %380, %652 ], [ %666, %697 ]
  %707 = phi float [ %381, %652 ], [ %703, %697 ]
  %708 = phi float [ %387, %652 ], [ %667, %697 ]
  %709 = phi float [ %388, %652 ], [ %698, %697 ]
  %710 = phi float [ %389, %652 ], [ %699, %697 ]
  %711 = phi float [ %390, %652 ], [ %700, %697 ]
  %712 = phi float [ %391, %652 ], [ %701, %697 ]
  %713 = phi i32 [ %392, %652 ], [ %702, %697 ]
  %714 = fmul fast float %466, %273
  %715 = fmul fast float %466, %274
  %716 = fmul fast float %466, %275
  %717 = fadd fast float %714, %382
  %718 = fadd fast float %715, %383
  %719 = fadd fast float %716, %384
  %720 = fcmp fast olt float %705, %359
  %721 = extractvalue %dx.types.CBufRet.f32 %649, 2
  %722 = fcmp fast olt float %721, %707
  %723 = and i1 %720, %722
  br i1 %723, label %379, label %724

; <label>:724                                     ; preds = %704
  %725 = uitofp i32 %393 to float
  br label %726

; <label>:726                                     ; preds = %724, %355
  %727 = phi float [ 0.000000e+00, %355 ], [ %706, %724 ]
  %728 = phi float [ 1.000000e+00, %355 ], [ %707, %724 ]
  %729 = phi float [ 0.000000e+00, %355 ], [ %725, %724 ]
  %730 = phi float [ 0.000000e+00, %355 ], [ %708, %724 ]
  %731 = phi float [ 0.000000e+00, %355 ], [ %709, %724 ]
  %732 = phi float [ 0.000000e+00, %355 ], [ %710, %724 ]
  %733 = phi float [ 0.000000e+00, %355 ], [ %711, %724 ]
  %734 = phi float [ 0.000000e+00, %355 ], [ %712, %724 ]
  %735 = phi i32 [ 0, %355 ], [ %713, %724 ]
  %736 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %17, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %737 = extractvalue %dx.types.CBufRet.i32 %736, 0
  %738 = icmp eq i32 %737, 0
  br i1 %738, label %780, label %739, !dx.controlflow.hints !44

; <label>:739                                     ; preds = %726
  %740 = icmp eq i32 %735, 0
  br i1 %740, label %779, label %741, !dx.controlflow.hints !45

; <label>:741                                     ; preds = %739
  %742 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %17, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %743 = extractvalue %dx.types.CBufRet.i32 %742, 2
  %744 = icmp eq i32 %743, 0
  br i1 %744, label %751, label %745, !dx.controlflow.hints !46

; <label>:745                                     ; preds = %741
  %746 = fsub fast float 1.000000e+00, %728
  %747 = fdiv fast float %731, %746
  %748 = fdiv fast float %732, %746
  %749 = fdiv fast float %733, %746
  %750 = fdiv fast float %734, %746
  br label %756

; <label>:751                                     ; preds = %741
  %752 = fadd fast float %731, %728
  %753 = fadd fast float %732, %728
  %754 = fadd fast float %733, %728
  %755 = fadd fast float %734, %728
  br label %756

; <label>:756                                     ; preds = %751, %745
  %757 = phi float [ %747, %745 ], [ %752, %751 ]
  %758 = phi float [ %748, %745 ], [ %753, %751 ]
  %759 = phi float [ %749, %745 ], [ %754, %751 ]
  %760 = phi float [ %750, %745 ], [ %755, %751 ]
  %761 = call float @dx.op.binary.f32(i32 35, float %757, float -1.000000e+00)  ; FMax(a,b)
  %762 = call float @dx.op.binary.f32(i32 35, float %758, float -1.000000e+00)  ; FMax(a,b)
  %763 = call float @dx.op.binary.f32(i32 35, float %759, float -1.000000e+00)  ; FMax(a,b)
  %764 = call float @dx.op.binary.f32(i32 35, float %760, float -1.000000e+00)  ; FMax(a,b)
  %765 = call float @dx.op.binary.f32(i32 36, float %761, float 1.000000e+00)  ; FMin(a,b)
  %766 = call float @dx.op.binary.f32(i32 36, float %762, float 1.000000e+00)  ; FMin(a,b)
  %767 = call float @dx.op.binary.f32(i32 36, float %763, float 1.000000e+00)  ; FMin(a,b)
  %768 = call float @dx.op.binary.f32(i32 36, float %764, float 1.000000e+00)  ; FMin(a,b)
  %769 = fmul fast float %765, 1.500000e+00
  %770 = call float @dx.op.tertiary.f32(i32 46, float -2.000000e+00, float %767, float %769)  ; FMad(a,b,c)
  %771 = call float @dx.op.tertiary.f32(i32 46, float 4.000000e+00, float %766, float 0.000000e+00)  ; FMad(a,b,c)
  %772 = call float @dx.op.tertiary.f32(i32 46, float -4.000000e+00, float %768, float %771)  ; FMad(a,b,c)
  %773 = fmul fast float %765, 0x3FEBB67AE0000000
  %774 = call float @dx.op.tertiary.f32(i32 46, float 0xBFD8A23460000000, float %767, float %773)  ; FMad(a,b,c)
  %775 = call float @dx.op.tertiary.f32(i32 46, float 5.000000e-01, float %766, float 0.000000e+00)  ; FMad(a,b,c)
  %776 = call float @dx.op.tertiary.f32(i32 46, float 5.000000e-01, float %768, float %775)  ; FMad(a,b,c)
  %777 = fadd fast float %770, 5.000000e-01
  %778 = fadd fast float %774, 5.000000e-01
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %18, i32 %19, i32 0, float %777, float %772, float %778, float %776, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %780

; <label>:779                                     ; preds = %739
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %18, i32 %19, i32 0, float 0.000000e+00, float 0.000000e+00, float 0x3FEF6560C0000000, float 1.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %780

; <label>:780                                     ; preds = %779, %756, %726
  %781 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 419)  ; CBufferLoadLegacy(handle,regIndex)
  %782 = extractvalue %dx.types.CBufRet.f32 %781, 0
  %783 = extractvalue %dx.types.CBufRet.f32 %781, 1
  %784 = extractvalue %dx.types.CBufRet.f32 %781, 2
  %785 = call float @dx.op.dot3.f32(i32 55, float %273, float %274, float %275, float %782, float %783, float %784)  ; Dot3(ax,ay,az,bx,by,bz)
  %786 = fmul fast float %785, %727
  %787 = fcmp fast ogt float %730, 0.000000e+00
  %788 = fdiv fast float 1.000000e+00, %730
  %789 = fmul fast float %786, %788
  %790 = select i1 %787, float %789, float %284
  %791 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %792 = extractvalue %dx.types.CBufRet.f32 %791, 0
  %793 = extractvalue %dx.types.CBufRet.f32 %791, 1
  %794 = extractvalue %dx.types.CBufRet.f32 %791, 2
  %795 = fmul fast float %792, %237
  %796 = fmul fast float %793, %237
  %797 = fmul fast float %794, %237
  %798 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %799 = extractvalue %dx.types.CBufRet.f32 %798, 0
  %800 = extractvalue %dx.types.CBufRet.f32 %798, 1
  %801 = extractvalue %dx.types.CBufRet.f32 %798, 2
  %802 = fmul fast float %799, %238
  %803 = fmul fast float %800, %238
  %804 = fmul fast float %801, %238
  %805 = fadd fast float %802, %795
  %806 = fadd fast float %803, %796
  %807 = fadd fast float %804, %797
  %808 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %809 = extractvalue %dx.types.CBufRet.f32 %808, 0
  %810 = extractvalue %dx.types.CBufRet.f32 %808, 1
  %811 = extractvalue %dx.types.CBufRet.f32 %808, 2
  %812 = fadd fast float %805, %809
  %813 = fadd fast float %806, %810
  %814 = fadd fast float %807, %811
  %815 = fmul fast float %812, %790
  %816 = fmul fast float %813, %790
  %817 = fmul fast float %814, %790
  %818 = call float @dx.op.dot3.f32(i32 55, float %815, float %816, float %817, float %815, float %816, float %817)  ; Dot3(ax,ay,az,bx,by,bz)
  %819 = call float @dx.op.unary.f32(i32 25, float %818)  ; Rsqrt(value)
  %820 = fmul fast float %819, %818
  %821 = fmul fast float %819, %815
  %822 = fmul fast float %819, %816
  %823 = fmul fast float %819, %817
  %824 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %17, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %825 = extractvalue %dx.types.CBufRet.i32 %824, 1
  %826 = and i32 %825, 1
  %827 = icmp ne i32 %826, 0
  %828 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %829 = extractvalue %dx.types.CBufRet.f32 %828, 2
  %830 = fcmp fast ogt float %829, 0.000000e+00
  %831 = and i1 %827, %830
  br i1 %831, label %832, label %990, !dx.controlflow.hints !47

; <label>:832                                     ; preds = %780
  %833 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %834 = extractvalue %dx.types.CBufRet.f32 %833, 2
  %835 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %836 = extractvalue %dx.types.CBufRet.f32 %835, 2
  %837 = fsub fast float %834, %836
  %838 = extractvalue %dx.types.CBufRet.i32 %824, 0
  %839 = call i32 @dx.op.binary.i32(i32 40, i32 %838, i32 3)  ; UMin(a,b)
  %840 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %841 = extractvalue %dx.types.CBufRet.f32 %840, 0
  %842 = extractvalue %dx.types.CBufRet.f32 %840, 1
  %843 = extractvalue %dx.types.CBufRet.f32 %835, 0
  %844 = extractvalue %dx.types.CBufRet.f32 %835, 1
  %845 = fsub fast float %841, %843
  %846 = fsub fast float %842, %844
  %847 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %848 = extractvalue %dx.types.CBufRet.f32 %847, 0
  %849 = fcmp fast ogt float %848, 0.000000e+00
  %850 = fsub fast float -0.000000e+00, %845
  %851 = fsub fast float -0.000000e+00, %846
  %852 = call float @dx.op.dot2.f32(i32 54, float %821, float %822, float %821, float %822)  ; Dot2(ax,ay,bx,by)
  %853 = call float @dx.op.dot2.f32(i32 54, float %821, float %822, float %850, float %851)  ; Dot2(ax,ay,bx,by)
  %854 = fmul fast float %853, 2.000000e+00
  %855 = call float @dx.op.dot2.f32(i32 54, float %850, float %851, float %850, float %851)  ; Dot2(ax,ay,bx,by)
  %856 = fmul fast float %848, %848
  %857 = fsub fast float %855, %856
  %858 = fmul fast float %854, %854
  %859 = fmul fast float %852, 4.000000e+00
  %860 = fmul fast float %859, %857
  %861 = fsub fast float %858, %860
  %862 = fcmp fast ogt float %861, 0.000000e+00
  br i1 %862, label %863, label %878, !dx.controlflow.hints !48

; <label>:863                                     ; preds = %832
  %864 = fcmp fast ogt float %854, 0.000000e+00
  %865 = call float @dx.op.unary.f32(i32 24, float %861)  ; Sqrt(value)
  %866 = fsub fast float -0.000000e+00, %865
  %867 = select i1 %864, float %865, float %866
  %868 = fadd fast float %867, %854
  %869 = fmul float %868, -5.000000e-01
  %870 = fdiv fast float %869, %852
  %871 = call float @dx.op.binary.f32(i32 35, float %870, float 0.000000e+00)  ; FMax(a,b)
  %872 = call float @dx.op.binary.f32(i32 36, float %820, float %871)  ; FMin(a,b)
  %873 = fdiv fast float %857, %869
  %874 = call float @dx.op.binary.f32(i32 35, float %873, float 0.000000e+00)  ; FMax(a,b)
  %875 = call float @dx.op.binary.f32(i32 36, float %820, float %874)  ; FMin(a,b)
  %876 = call float @dx.op.binary.f32(i32 36, float %872, float %875)  ; FMin(a,b)
  %877 = call float @dx.op.binary.f32(i32 35, float %872, float %875)  ; FMax(a,b)
  br label %878

; <label>:878                                     ; preds = %863, %832
  %879 = phi float [ %877, %863 ], [ -1.000000e+00, %832 ]
  %880 = phi float [ %876, %863 ], [ -1.000000e+00, %832 ]
  %881 = phi i1 [ true, %863 ], [ false, %832 ]
  %882 = and i1 %849, %881
  br i1 %882, label %883, label %885, !dx.controlflow.hints !49

; <label>:883                                     ; preds = %878
  %884 = fcmp fast oeq float %880, %879
  br i1 %884, label %990, label %886, !dx.controlflow.hints !50

; <label>:885                                     ; preds = %878
  br i1 %849, label %990, label %886, !dx.controlflow.hints !51

; <label>:886                                     ; preds = %885, %883
  %887 = phi float [ %820, %885 ], [ %879, %883 ]
  %888 = phi float [ 0.000000e+00, %885 ], [ %880, %883 ]
  %889 = fcmp fast oeq float %823, 0.000000e+00
  %890 = fdiv fast float %837, %823
  %891 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %890)  ; FMax(a,b)
  %892 = select i1 %889, float %887, float %891
  %893 = call float @dx.op.binary.f32(i32 36, float %887, float %892)  ; FMin(a,b)
  %894 = fcmp fast ogt float %823, 0.000000e+00
  %895 = fcmp fast olt float %837, 0.000000e+00
  br i1 %894, label %896, label %897, !dx.controlflow.hints !52

; <label>:896                                     ; preds = %886
  br i1 %895, label %990, label %900, !dx.controlflow.hints !53

; <label>:897                                     ; preds = %886
  br i1 %895, label %898, label %900, !dx.controlflow.hints !54

; <label>:898                                     ; preds = %897
  %899 = call float @dx.op.binary.f32(i32 35, float %888, float %893)  ; FMax(a,b)
  br label %900

; <label>:900                                     ; preds = %898, %897, %896
  %901 = phi float [ %899, %898 ], [ %888, %897 ], [ %888, %896 ]
  %902 = getelementptr inbounds [3 x float], [3 x float]* %21, i32 0, i32 0
  store float -1.000000e+00, float* %902, align 4, !tbaa !55, !noalias !59
  %903 = getelementptr inbounds [3 x float], [3 x float]* %21, i32 0, i32 1
  store float -1.000000e+00, float* %903, align 4, !tbaa !55, !noalias !59
  %904 = getelementptr inbounds [3 x float], [3 x float]* %21, i32 0, i32 2
  store float -1.000000e+00, float* %904, align 4, !tbaa !55, !noalias !59
  %905 = getelementptr inbounds [3 x float], [3 x float]* %22, i32 0, i32 0
  store float -1.000000e+00, float* %905, align 4, !tbaa !55, !noalias !59
  %906 = getelementptr inbounds [3 x float], [3 x float]* %22, i32 0, i32 1
  store float -1.000000e+00, float* %906, align 4, !tbaa !55, !noalias !59
  %907 = getelementptr inbounds [3 x float], [3 x float]* %22, i32 0, i32 2
  store float -1.000000e+00, float* %907, align 4, !tbaa !55, !noalias !59
  %908 = icmp sgt i32 %839, 0
  br i1 %908, label %909, label %967

; <label>:909                                     ; preds = %900
  br label %910

; <label>:910                                     ; preds = %957, %909
  %911 = phi i32 [ %958, %957 ], [ 0, %909 ]
  %912 = add nuw i32 %911, 171
  %913 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 %912)  ; CBufferLoadLegacy(handle,regIndex)
  %914 = extractvalue %dx.types.CBufRet.f32 %913, 0
  %915 = extractvalue %dx.types.CBufRet.f32 %913, 1
  %916 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %917 = extractvalue %dx.types.CBufRet.f32 %916, 0
  %918 = extractvalue %dx.types.CBufRet.f32 %916, 1
  %919 = fsub fast float %914, %917
  %920 = fsub fast float %915, %918
  %921 = extractvalue %dx.types.CBufRet.f32 %913, 2
  %922 = fsub fast float -0.000000e+00, %919
  %923 = fsub fast float -0.000000e+00, %920
  %924 = call float @dx.op.dot2.f32(i32 54, float %821, float %822, float %922, float %923)  ; Dot2(ax,ay,bx,by)
  %925 = fmul fast float %924, 2.000000e+00
  %926 = call float @dx.op.dot2.f32(i32 54, float %922, float %923, float %922, float %923)  ; Dot2(ax,ay,bx,by)
  %927 = fmul fast float %921, %921
  %928 = fsub fast float %926, %927
  %929 = fmul fast float %925, %925
  %930 = fmul fast float %859, %928
  %931 = fsub fast float %929, %930
  %932 = fcmp fast ogt float %931, 0.000000e+00
  br i1 %932, label %933, label %948, !dx.controlflow.hints !48

; <label>:933                                     ; preds = %910
  %934 = fcmp fast ogt float %925, 0.000000e+00
  %935 = call float @dx.op.unary.f32(i32 24, float %931)  ; Sqrt(value)
  %936 = fsub fast float -0.000000e+00, %935
  %937 = select i1 %934, float %935, float %936
  %938 = fadd fast float %937, %925
  %939 = fmul float %938, -5.000000e-01
  %940 = fdiv fast float %939, %852
  %941 = call float @dx.op.binary.f32(i32 35, float %940, float 0.000000e+00)  ; FMax(a,b)
  %942 = call float @dx.op.binary.f32(i32 36, float %887, float %941)  ; FMin(a,b)
  %943 = fdiv fast float %928, %939
  %944 = call float @dx.op.binary.f32(i32 35, float %943, float 0.000000e+00)  ; FMax(a,b)
  %945 = call float @dx.op.binary.f32(i32 36, float %887, float %944)  ; FMin(a,b)
  %946 = call float @dx.op.binary.f32(i32 36, float %942, float %945)  ; FMin(a,b)
  %947 = call float @dx.op.binary.f32(i32 35, float %942, float %945)  ; FMax(a,b)
  br label %948

; <label>:948                                     ; preds = %933, %910
  %949 = phi float [ %947, %933 ], [ -1.000000e+00, %910 ]
  %950 = phi float [ %946, %933 ], [ -1.000000e+00, %910 ]
  %951 = phi i1 [ true, %933 ], [ false, %910 ]
  br i1 %951, label %952, label %957, !dx.controlflow.hints !70

; <label>:952                                     ; preds = %948
  %953 = call float @dx.op.binary.f32(i32 35, float %901, float %950)  ; FMax(a,b)
  %954 = getelementptr inbounds [3 x float], [3 x float]* %21, i32 0, i32 %911
  store float %953, float* %954, align 4, !tbaa !55, !noalias !59
  %955 = call float @dx.op.binary.f32(i32 35, float %901, float %949)  ; FMax(a,b)
  %956 = getelementptr inbounds [3 x float], [3 x float]* %22, i32 0, i32 %911
  store float %955, float* %956, align 4, !tbaa !55, !noalias !59
  br label %957

; <label>:957                                     ; preds = %952, %948
  %958 = add nuw nsw i32 %911, 1
  %959 = icmp eq i32 %958, %839
  br i1 %959, label %960, label %910

; <label>:960                                     ; preds = %957
  %961 = load float, float* %904, align 4, !tbaa !55, !alias.scope !71, !noalias !74
  %962 = load float, float* %903, align 4, !tbaa !55, !alias.scope !77, !noalias !78
  %963 = load float, float* %902, align 4, !tbaa !55, !alias.scope !79, !noalias !80
  %964 = load float, float* %907, align 4, !tbaa !55, !alias.scope !81, !noalias !84
  %965 = load float, float* %906, align 4, !tbaa !55, !alias.scope !87, !noalias !88
  %966 = load float, float* %905, align 4, !tbaa !55, !alias.scope !89, !noalias !90
  br label %967

; <label>:967                                     ; preds = %960, %900
  %968 = phi float [ -1.000000e+00, %900 ], [ %966, %960 ]
  %969 = phi float [ -1.000000e+00, %900 ], [ %965, %960 ]
  %970 = phi float [ -1.000000e+00, %900 ], [ %964, %960 ]
  %971 = phi float [ -1.000000e+00, %900 ], [ %963, %960 ]
  %972 = phi float [ -1.000000e+00, %900 ], [ %962, %960 ]
  %973 = phi float [ -1.000000e+00, %900 ], [ %961, %960 ]
  %974 = call float @dx.op.binary.f32(i32 36, float %972, float %973)  ; FMin(a,b)
  %975 = call float @dx.op.binary.f32(i32 36, float %971, float %974)  ; FMin(a,b)
  %976 = call float @dx.op.binary.f32(i32 35, float %971, float %972)  ; FMax(a,b)
  %977 = call float @dx.op.binary.f32(i32 36, float %976, float %973)  ; FMin(a,b)
  %978 = call float @dx.op.binary.f32(i32 36, float %971, float %972)  ; FMin(a,b)
  %979 = call float @dx.op.binary.f32(i32 35, float %978, float %977)  ; FMax(a,b)
  %980 = call float @dx.op.binary.f32(i32 35, float %972, float %973)  ; FMax(a,b)
  %981 = call float @dx.op.binary.f32(i32 35, float %971, float %980)  ; FMax(a,b)
  store float %975, float* %902, align 4, !tbaa !55, !alias.scope !79, !noalias !80
  store float %979, float* %903, align 4, !tbaa !55, !alias.scope !77, !noalias !78
  store float %981, float* %904, align 4, !tbaa !55, !alias.scope !71, !noalias !74
  %982 = call float @dx.op.binary.f32(i32 36, float %969, float %970)  ; FMin(a,b)
  %983 = call float @dx.op.binary.f32(i32 36, float %968, float %982)  ; FMin(a,b)
  %984 = call float @dx.op.binary.f32(i32 35, float %968, float %969)  ; FMax(a,b)
  %985 = call float @dx.op.binary.f32(i32 36, float %984, float %970)  ; FMin(a,b)
  %986 = call float @dx.op.binary.f32(i32 36, float %968, float %969)  ; FMin(a,b)
  %987 = call float @dx.op.binary.f32(i32 35, float %986, float %985)  ; FMax(a,b)
  %988 = call float @dx.op.binary.f32(i32 35, float %969, float %970)  ; FMax(a,b)
  %989 = call float @dx.op.binary.f32(i32 35, float %968, float %988)  ; FMax(a,b)
  store float %983, float* %905, align 4, !tbaa !55, !alias.scope !89, !noalias !90
  store float %987, float* %906, align 4, !tbaa !55, !alias.scope !87, !noalias !88
  store float %989, float* %907, align 4, !tbaa !55, !alias.scope !81, !noalias !84
  br label %990

; <label>:990                                     ; preds = %967, %896, %885, %883, %780
  %991 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 423)  ; CBufferLoadLegacy(handle,regIndex)
  %992 = extractvalue %dx.types.CBufRet.f32 %991, 2
  %993 = fmul fast float %992, %790
  %994 = call float @dx.op.unary.f32(i32 7, float %993)  ; Saturate(value)
  %995 = fptoui float %729 to i32
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %996 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %20
  store i32 %995, i32 addrspace(3)* %996, align 4, !tbaa !91
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %997 = and i32 %20, 63
  %998 = icmp ult i32 %997, 32
  br i1 %998, label %999, label %1005, !dx.controlflow.hints !93

; <label>:999                                     ; preds = %990
  %1000 = add i32 %20, 32
  %1001 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1000
  %1002 = load i32, i32 addrspace(3)* %1001, align 4, !tbaa !91
  %1003 = load i32, i32 addrspace(3)* %996, align 4, !tbaa !91
  %1004 = call i32 @dx.op.binary.i32(i32 40, i32 %1003, i32 %1002)  ; UMin(a,b)
  store i32 %1004, i32 addrspace(3)* %996, align 4, !tbaa !91
  br label %1005

; <label>:1005                                    ; preds = %999, %990
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %1006 = icmp ult i32 %997, 16
  br i1 %1006, label %1007, label %1013, !dx.controlflow.hints !94

; <label>:1007                                    ; preds = %1005
  %1008 = add i32 %20, 16
  %1009 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1008
  %1010 = load i32, i32 addrspace(3)* %1009, align 4, !tbaa !91
  %1011 = load i32, i32 addrspace(3)* %996, align 4, !tbaa !91
  %1012 = call i32 @dx.op.binary.i32(i32 40, i32 %1011, i32 %1010)  ; UMin(a,b)
  store i32 %1012, i32 addrspace(3)* %996, align 4, !tbaa !91
  br label %1013

; <label>:1013                                    ; preds = %1007, %1005
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %1014 = icmp ult i32 %997, 8
  br i1 %1014, label %1015, label %1021, !dx.controlflow.hints !95

; <label>:1015                                    ; preds = %1013
  %1016 = add i32 %20, 8
  %1017 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1016
  %1018 = load i32, i32 addrspace(3)* %1017, align 4, !tbaa !91
  %1019 = load i32, i32 addrspace(3)* %996, align 4, !tbaa !91
  %1020 = call i32 @dx.op.binary.i32(i32 40, i32 %1019, i32 %1018)  ; UMin(a,b)
  store i32 %1020, i32 addrspace(3)* %996, align 4, !tbaa !91
  br label %1021

; <label>:1021                                    ; preds = %1015, %1013
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %1022 = icmp ult i32 %997, 4
  br i1 %1022, label %1023, label %1029, !dx.controlflow.hints !96

; <label>:1023                                    ; preds = %1021
  %1024 = add i32 %20, 4
  %1025 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1024
  %1026 = load i32, i32 addrspace(3)* %1025, align 4, !tbaa !91
  %1027 = load i32, i32 addrspace(3)* %996, align 4, !tbaa !91
  %1028 = call i32 @dx.op.binary.i32(i32 40, i32 %1027, i32 %1026)  ; UMin(a,b)
  store i32 %1028, i32 addrspace(3)* %996, align 4, !tbaa !91
  br label %1029

; <label>:1029                                    ; preds = %1023, %1021
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %1030 = icmp ult i32 %997, 2
  br i1 %1030, label %1031, label %1037, !dx.controlflow.hints !97

; <label>:1031                                    ; preds = %1029
  %1032 = add i32 %20, 2
  %1033 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1032
  %1034 = load i32, i32 addrspace(3)* %1033, align 4, !tbaa !91
  %1035 = load i32, i32 addrspace(3)* %996, align 4, !tbaa !91
  %1036 = call i32 @dx.op.binary.i32(i32 40, i32 %1035, i32 %1034)  ; UMin(a,b)
  store i32 %1036, i32 addrspace(3)* %996, align 4, !tbaa !91
  br label %1037

; <label>:1037                                    ; preds = %1031, %1029
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %1038 = icmp eq i32 %997, 0
  br i1 %1038, label %1039, label %1045, !dx.controlflow.hints !98

; <label>:1039                                    ; preds = %1037
  %1040 = add i32 %20, 1
  %1041 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1040
  %1042 = load i32, i32 addrspace(3)* %1041, align 4, !tbaa !91
  %1043 = load i32, i32 addrspace(3)* %996, align 4, !tbaa !91
  %1044 = call i32 @dx.op.binary.i32(i32 40, i32 %1043, i32 %1042)  ; UMin(a,b)
  store i32 %1044, i32 addrspace(3)* %996, align 4, !tbaa !91
  br label %1045

; <label>:1045                                    ; preds = %1039, %1037
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1046 = and i32 %20, -64
  %1047 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1046
  %1048 = load i32, i32 addrspace(3)* %1047, align 4, !tbaa !91
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  store i32 %995, i32 addrspace(3)* %996, align 4, !tbaa !91
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  br i1 %998, label %1049, label %1055, !dx.controlflow.hints !99

; <label>:1049                                    ; preds = %1045
  %1050 = add i32 %20, 32
  %1051 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1050
  %1052 = load i32, i32 addrspace(3)* %1051, align 4, !tbaa !91
  %1053 = load i32, i32 addrspace(3)* %996, align 4, !tbaa !91
  %1054 = call i32 @dx.op.binary.i32(i32 39, i32 %1053, i32 %1052)  ; UMax(a,b)
  store i32 %1054, i32 addrspace(3)* %996, align 4, !tbaa !91
  br label %1055

; <label>:1055                                    ; preds = %1049, %1045
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %1006, label %1056, label %1062, !dx.controlflow.hints !100

; <label>:1056                                    ; preds = %1055
  %1057 = add i32 %20, 16
  %1058 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1057
  %1059 = load i32, i32 addrspace(3)* %1058, align 4, !tbaa !91
  %1060 = load i32, i32 addrspace(3)* %996, align 4, !tbaa !91
  %1061 = call i32 @dx.op.binary.i32(i32 39, i32 %1060, i32 %1059)  ; UMax(a,b)
  store i32 %1061, i32 addrspace(3)* %996, align 4, !tbaa !91
  br label %1062

; <label>:1062                                    ; preds = %1056, %1055
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %1014, label %1063, label %1069, !dx.controlflow.hints !101

; <label>:1063                                    ; preds = %1062
  %1064 = add i32 %20, 8
  %1065 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1064
  %1066 = load i32, i32 addrspace(3)* %1065, align 4, !tbaa !91
  %1067 = load i32, i32 addrspace(3)* %996, align 4, !tbaa !91
  %1068 = call i32 @dx.op.binary.i32(i32 39, i32 %1067, i32 %1066)  ; UMax(a,b)
  store i32 %1068, i32 addrspace(3)* %996, align 4, !tbaa !91
  br label %1069

; <label>:1069                                    ; preds = %1063, %1062
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %1022, label %1070, label %1076, !dx.controlflow.hints !102

; <label>:1070                                    ; preds = %1069
  %1071 = add i32 %20, 4
  %1072 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1071
  %1073 = load i32, i32 addrspace(3)* %1072, align 4, !tbaa !91
  %1074 = load i32, i32 addrspace(3)* %996, align 4, !tbaa !91
  %1075 = call i32 @dx.op.binary.i32(i32 39, i32 %1074, i32 %1073)  ; UMax(a,b)
  store i32 %1075, i32 addrspace(3)* %996, align 4, !tbaa !91
  br label %1076

; <label>:1076                                    ; preds = %1070, %1069
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %1030, label %1077, label %1083, !dx.controlflow.hints !103

; <label>:1077                                    ; preds = %1076
  %1078 = add i32 %20, 2
  %1079 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1078
  %1080 = load i32, i32 addrspace(3)* %1079, align 4, !tbaa !91
  %1081 = load i32, i32 addrspace(3)* %996, align 4, !tbaa !91
  %1082 = call i32 @dx.op.binary.i32(i32 39, i32 %1081, i32 %1080)  ; UMax(a,b)
  store i32 %1082, i32 addrspace(3)* %996, align 4, !tbaa !91
  br label %1083

; <label>:1083                                    ; preds = %1077, %1076
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %1038, label %1084, label %1090, !dx.controlflow.hints !104

; <label>:1084                                    ; preds = %1083
  %1085 = add i32 %20, 1
  %1086 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1085
  %1087 = load i32, i32 addrspace(3)* %1086, align 4, !tbaa !91
  %1088 = load i32, i32 addrspace(3)* %996, align 4, !tbaa !91
  %1089 = call i32 @dx.op.binary.i32(i32 39, i32 %1088, i32 %1087)  ; UMax(a,b)
  store i32 %1089, i32 addrspace(3)* %996, align 4, !tbaa !91
  br label %1090

; <label>:1090                                    ; preds = %1084, %1083
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1091 = load i32, i32 addrspace(3)* %1047, align 4, !tbaa !91
  %1092 = uitofp i32 %1091 to float
  %1093 = uitofp i32 %1048 to float
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %3, i32 %18, i32 %19, i32 undef, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %1094 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1095 = extractvalue %dx.types.CBufRet.f32 %1094, 0
  %1096 = fmul fast float %1095, %729
  %1097 = fmul fast float %1095, %1092
  %1098 = fmul fast float %1095, %1093
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %4, i32 %18, i32 %19, i32 undef, float %1096, float %1097, float %1098, float %1096, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %18, i32 %19, i32 undef, float %994, float %994, float %994, float %994, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
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
!28 = !{void ()* @cs_fog_raymarching_clouds, !"cs_fog_raymarching_clouds", null, !4, !29}
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
!41 = distinct !{!41, !"dx.controlflow.hints", i32 1}
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
!53 = distinct !{!53, !"dx.controlflow.hints", i32 2}
!54 = distinct !{!54, !"dx.controlflow.hints", i32 2}
!55 = !{!56, !56, i64 0}
!56 = !{!"float", !57, i64 0}
!57 = !{!"omnipotent char", !58, i64 0}
!58 = !{!"Simple C/C++ TBAA"}
!59 = !{!60, !62, !64, !65, !67, !68, !69}
!60 = distinct !{!60, !61, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z: %cFogParams"}
!61 = distinct !{!61, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z"}
!62 = distinct !{!62, !63, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %scattering"}
!63 = distinct !{!63, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z"}
!64 = distinct !{!64, !63, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %extinction"}
!65 = distinct !{!65, !66, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z: %scattering"}
!66 = distinct !{!66, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z"}
!67 = distinct !{!67, !66, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z: %transmission"}
!68 = distinct !{!68, !66, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z: %depthDensityWeighted"}
!69 = distinct !{!69, !66, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z: %rawShadowmapData"}
!70 = distinct !{!70, !"dx.controlflow.hints", i32 2}
!71 = !{!72}
!72 = distinct !{!72, !73, !"\01?sort@@YAXAIAM00@Z: %c"}
!73 = distinct !{!73, !"\01?sort@@YAXAIAM00@Z"}
!74 = !{!75, !76, !60, !62, !64, !65, !67, !68, !69}
!75 = distinct !{!75, !73, !"\01?sort@@YAXAIAM00@Z: %a"}
!76 = distinct !{!76, !73, !"\01?sort@@YAXAIAM00@Z: %b"}
!77 = !{!76}
!78 = !{!75, !72, !60, !62, !64, !65, !67, !68, !69}
!79 = !{!75}
!80 = !{!76, !72, !60, !62, !64, !65, !67, !68, !69}
!81 = !{!82}
!82 = distinct !{!82, !83, !"\01?sort@@YAXAIAM00@Z: %c"}
!83 = distinct !{!83, !"\01?sort@@YAXAIAM00@Z"}
!84 = !{!85, !86, !60, !62, !64, !65, !67, !68, !69}
!85 = distinct !{!85, !83, !"\01?sort@@YAXAIAM00@Z: %a"}
!86 = distinct !{!86, !83, !"\01?sort@@YAXAIAM00@Z: %b"}
!87 = !{!86}
!88 = !{!85, !82, !60, !62, !64, !65, !67, !68, !69}
!89 = !{!85}
!90 = !{!86, !82, !60, !62, !64, !65, !67, !68, !69}
!91 = !{!92, !92, i64 0}
!92 = !{!"int", !57, i64 0}
!93 = distinct !{!93, !"dx.controlflow.hints", i32 2}
!94 = distinct !{!94, !"dx.controlflow.hints", i32 2}
!95 = distinct !{!95, !"dx.controlflow.hints", i32 2}
!96 = distinct !{!96, !"dx.controlflow.hints", i32 2}
!97 = distinct !{!97, !"dx.controlflow.hints", i32 2}
!98 = distinct !{!98, !"dx.controlflow.hints", i32 2}
!99 = distinct !{!99, !"dx.controlflow.hints", i32 2}
!100 = distinct !{!100, !"dx.controlflow.hints", i32 2}
!101 = distinct !{!101, !"dx.controlflow.hints", i32 2}
!102 = distinct !{!102, !"dx.controlflow.hints", i32 2}
!103 = distinct !{!103, !"dx.controlflow.hints", i32 2}
!104 = distinct !{!104, !"dx.controlflow.hints", i32 2}

