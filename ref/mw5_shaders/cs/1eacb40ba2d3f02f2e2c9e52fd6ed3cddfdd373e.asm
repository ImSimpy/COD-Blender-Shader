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
; shader hash: b0f562d2b93ae09af733c5e8acf9e3fa
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
;                                   texture     f32          3d      T0             t3     1
;                                   texture     f32          2d      T1            t16     1
;                                   texture     f32          3d      T2             t1     1
;                                   texture     f32          3d      T3             t2     1
;                                   texture     f32          2d      T4             t8     1
;                                   texture     f32          2d      T5             t9     1
;                                   texture     f32          1d      T6            t14     1
;                                   texture     f32          2d      T7            t13     1
;                                   texture     f32          2d      T8             t0     1
;                                   texture    byte         r/o      T9            t17     1
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
%"class.Texture3D<vector<float, 4> >" = type { <4 x float>, %"class.Texture3D<vector<float, 4> >::mips_type" }
%"class.Texture3D<vector<float, 4> >::mips_type" = type { i32 }
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

define void @cs_fog_raymarching_air_clouds_heightmap() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 3, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 17, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 13, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 14, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 9, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 16, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 3, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %21 = call i32 @dx.op.threadId.i32(i32 93, i32 0)  ; ThreadId(component)
  %22 = call i32 @dx.op.threadId.i32(i32 93, i32 1)  ; ThreadId(component)
  %23 = call i32 @dx.op.flattenedThreadIdInGroup.i32(i32 96)  ; FlattenedThreadIdInGroup()
  %24 = alloca [3 x float], align 4
  %25 = alloca [3 x float], align 4
  %26 = add i32 %22, %21
  %27 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 361)  ; CBufferLoadLegacy(handle,regIndex)
  %28 = extractvalue %dx.types.CBufRet.i32 %27, 1
  %29 = add i32 %26, %28
  %30 = lshr i32 %29, 1
  %31 = and i32 %30, 1
  %32 = and i32 %29, 1
  %33 = xor i32 %31, %32
  %34 = shl i32 %21, 1
  %35 = shl i32 %22, 1
  %36 = or i32 %33, %34
  %37 = or i32 %31, %35
  %38 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 48, i32 undef)  ; BufferLoad(srv,index,wot)
  %39 = extractvalue %dx.types.ResRet.i32 %38, 0
  %40 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 32, i32 undef)  ; BufferLoad(srv,index,wot)
  %41 = extractvalue %dx.types.ResRet.i32 %40, 0
  %42 = extractvalue %dx.types.ResRet.i32 %40, 1
  %43 = extractvalue %dx.types.ResRet.i32 %40, 2
  %44 = extractvalue %dx.types.ResRet.i32 %40, 3
  %45 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %46 = extractvalue %dx.types.ResRet.i32 %45, 0
  %47 = extractvalue %dx.types.ResRet.i32 %45, 1
  %48 = extractvalue %dx.types.ResRet.i32 %45, 2
  %49 = extractvalue %dx.types.ResRet.i32 %45, 3
  %50 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %51 = extractvalue %dx.types.ResRet.i32 %50, 0
  %52 = extractvalue %dx.types.ResRet.i32 %50, 1
  %53 = extractvalue %dx.types.ResRet.i32 %50, 2
  %54 = extractvalue %dx.types.ResRet.i32 %50, 3
  %55 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 396)  ; CBufferLoadLegacy(handle,regIndex)
  %56 = extractvalue %dx.types.CBufRet.f32 %55, 2
  %57 = fmul fast float %56, %56
  %58 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %59 = extractvalue %dx.types.CBufRet.f32 %58, 0
  %60 = extractvalue %dx.types.CBufRet.f32 %58, 1
  %61 = extractvalue %dx.types.CBufRet.f32 %58, 2
  %62 = fmul fast float %61, 0x3FF17B1420000000
  %63 = icmp eq i32 %23, 0
  br i1 %63, label %64, label %205, !dx.controlflow.hints !34

; <label>:64                                      ; preds = %0
  %65 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %66 = extractvalue %dx.types.CBufRet.f32 %65, 0
  %67 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %68 = extractvalue %dx.types.CBufRet.f32 %67, 3
  %69 = extractvalue %dx.types.ResRet.i32 %38, 1
  %70 = and i32 %69, 65535
  %71 = call float @dx.op.legacyF16ToF32(i32 131, i32 %70)  ; LegacyF16ToF32(value)
  %72 = lshr i32 %39, 16
  %73 = call float @dx.op.legacyF16ToF32(i32 131, i32 %72)  ; LegacyF16ToF32(value)
  %74 = and i32 %39, 65535
  %75 = call float @dx.op.legacyF16ToF32(i32 131, i32 %74)  ; LegacyF16ToF32(value)
  %76 = lshr i32 %44, 16
  %77 = call float @dx.op.legacyF16ToF32(i32 131, i32 %76)  ; LegacyF16ToF32(value)
  %78 = and i32 %44, 65535
  %79 = call float @dx.op.legacyF16ToF32(i32 131, i32 %78)  ; LegacyF16ToF32(value)
  %80 = lshr i32 %43, 16
  %81 = call float @dx.op.legacyF16ToF32(i32 131, i32 %80)  ; LegacyF16ToF32(value)
  %82 = and i32 %43, 65535
  %83 = call float @dx.op.legacyF16ToF32(i32 131, i32 %82)  ; LegacyF16ToF32(value)
  %84 = lshr i32 %42, 16
  %85 = call float @dx.op.legacyF16ToF32(i32 131, i32 %84)  ; LegacyF16ToF32(value)
  %86 = lshr i32 %41, 16
  %87 = call float @dx.op.legacyF16ToF32(i32 131, i32 %86)  ; LegacyF16ToF32(value)
  %88 = and i32 %41, 65535
  %89 = call float @dx.op.legacyF16ToF32(i32 131, i32 %88)  ; LegacyF16ToF32(value)
  %90 = lshr i32 %49, 16
  %91 = call float @dx.op.legacyF16ToF32(i32 131, i32 %90)  ; LegacyF16ToF32(value)
  %92 = and i32 %49, 65535
  %93 = call float @dx.op.legacyF16ToF32(i32 131, i32 %92)  ; LegacyF16ToF32(value)
  %94 = lshr i32 %48, 16
  %95 = call float @dx.op.legacyF16ToF32(i32 131, i32 %94)  ; LegacyF16ToF32(value)
  %96 = and i32 %48, 65535
  %97 = call float @dx.op.legacyF16ToF32(i32 131, i32 %96)  ; LegacyF16ToF32(value)
  %98 = lshr i32 %47, 16
  %99 = call float @dx.op.legacyF16ToF32(i32 131, i32 %98)  ; LegacyF16ToF32(value)
  %100 = and i32 %47, 65535
  %101 = call float @dx.op.legacyF16ToF32(i32 131, i32 %100)  ; LegacyF16ToF32(value)
  %102 = and i32 %46, 65535
  %103 = call float @dx.op.legacyF16ToF32(i32 131, i32 %102)  ; LegacyF16ToF32(value)
  %104 = lshr i32 %54, 16
  %105 = call float @dx.op.legacyF16ToF32(i32 131, i32 %104)  ; LegacyF16ToF32(value)
  %106 = and i32 %54, 65535
  %107 = call float @dx.op.legacyF16ToF32(i32 131, i32 %106)  ; LegacyF16ToF32(value)
  %108 = lshr i32 %53, 16
  %109 = call float @dx.op.legacyF16ToF32(i32 131, i32 %108)  ; LegacyF16ToF32(value)
  %110 = and i32 %53, 65535
  %111 = call float @dx.op.legacyF16ToF32(i32 131, i32 %110)  ; LegacyF16ToF32(value)
  %112 = lshr i32 %52, 16
  %113 = call float @dx.op.legacyF16ToF32(i32 131, i32 %112)  ; LegacyF16ToF32(value)
  %114 = and i32 %52, 65535
  %115 = call float @dx.op.legacyF16ToF32(i32 131, i32 %114)  ; LegacyF16ToF32(value)
  %116 = lshr i32 %51, 16
  %117 = call float @dx.op.legacyF16ToF32(i32 131, i32 %116)  ; LegacyF16ToF32(value)
  %118 = and i32 %42, 65535
  %119 = call float @dx.op.legacyF16ToF32(i32 131, i32 %118)  ; LegacyF16ToF32(value)
  %120 = lshr i32 %46, 16
  %121 = call float @dx.op.legacyF16ToF32(i32 131, i32 %120)  ; LegacyF16ToF32(value)
  %122 = and i32 %51, 65535
  %123 = call float @dx.op.legacyF16ToF32(i32 131, i32 %122)  ; LegacyF16ToF32(value)
  %124 = fmul fast float %119, 0x3FD20DD760000000
  %125 = fmul fast float %61, %56
  %126 = fmul fast float %125, %83
  %127 = fmul fast float %61, %61
  %128 = fmul fast float %127, 0x3FEE471020000000
  %129 = fadd fast float %128, 0xBFD42F6020000000
  %130 = fmul fast float %75, %129
  %131 = fmul fast float %81, %59
  %132 = fmul fast float %85, %60
  %133 = fmul fast float %59, %57
  %134 = fmul fast float %133, %62
  %135 = fmul fast float %134, %73
  %136 = fsub fast float -0.000000e+00, %135
  %137 = fmul fast float %60, %57
  %138 = fmul fast float %137, %62
  %139 = fmul fast float %138, %77
  %140 = fmul fast float %59, %59
  %141 = fmul fast float %60, %60
  %142 = fsub fast float %140, %141
  %143 = fmul fast float %142, 0x3FE17B1420000000
  %144 = fmul fast float %143, %71
  %145 = fmul fast float %60, 0x3FF17B1420000000
  %146 = fmul fast float %145, %59
  %147 = fmul fast float %146, %79
  %148 = fadd fast float %132, %131
  %149 = fmul fast float %148, %56
  %150 = fsub fast float %149, %126
  %151 = fmul fast float %150, 0x3FDF454380000000
  %152 = fadd fast float %130, %144
  %153 = fadd fast float %152, %147
  %154 = fmul fast float %153, %57
  %155 = fsub fast float %136, %139
  %156 = fadd fast float %155, %124
  %157 = fadd fast float %156, %151
  %158 = fadd fast float %157, %154
  %159 = fmul fast float %66, %68
  %160 = fmul fast float %159, %158
  %161 = fmul fast float %121, 0x3FD20DD760000000
  %162 = fmul fast float %125, %99
  %163 = fmul fast float %91, %129
  %164 = fmul fast float %97, %59
  %165 = fmul fast float %101, %60
  %166 = fmul fast float %134, %89
  %167 = fsub fast float -0.000000e+00, %166
  %168 = fmul fast float %138, %93
  %169 = fmul fast float %143, %87
  %170 = fmul fast float %146, %95
  %171 = fadd fast float %165, %164
  %172 = fmul fast float %171, %56
  %173 = fsub fast float %172, %162
  %174 = fmul fast float %173, 0x3FDF454380000000
  %175 = fadd fast float %163, %169
  %176 = fadd fast float %175, %170
  %177 = fmul fast float %176, %57
  %178 = fsub fast float %167, %168
  %179 = fadd fast float %178, %161
  %180 = fadd fast float %179, %174
  %181 = fadd fast float %180, %177
  %182 = fmul fast float %159, %181
  %183 = fmul fast float %123, 0x3FD20DD760000000
  %184 = fmul fast float %125, %115
  %185 = fmul fast float %107, %129
  %186 = fmul fast float %113, %59
  %187 = fmul fast float %117, %60
  %188 = fmul fast float %134, %105
  %189 = fsub fast float -0.000000e+00, %188
  %190 = fmul fast float %138, %109
  %191 = fmul fast float %143, %103
  %192 = fmul fast float %146, %111
  %193 = fadd fast float %187, %186
  %194 = fmul fast float %193, %56
  %195 = fsub fast float %194, %184
  %196 = fmul fast float %195, 0x3FDF454380000000
  %197 = fadd fast float %185, %191
  %198 = fadd fast float %197, %192
  %199 = fmul fast float %198, %57
  %200 = fsub fast float %189, %190
  %201 = fadd fast float %200, %183
  %202 = fadd fast float %201, %196
  %203 = fadd fast float %202, %199
  %204 = fmul fast float %159, %203
  store float %204, float addrspace(3)* @"\01?ambientLightingLDS@@3V?$vector@M$02@@A.0", align 4
  store float %182, float addrspace(3)* @"\01?ambientLightingLDS@@3V?$vector@M$02@@A.1", align 4
  store float %160, float addrspace(3)* @"\01?ambientLightingLDS@@3V?$vector@M$02@@A.2", align 4
  br label %205

; <label>:205                                     ; preds = %64, %0
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %206 = load float, float addrspace(3)* @"\01?ambientLightingLDS@@3V?$vector@M$02@@A.0", align 4
  %207 = load float, float addrspace(3)* @"\01?ambientLightingLDS@@3V?$vector@M$02@@A.1", align 4
  %208 = load float, float addrspace(3)* @"\01?ambientLightingLDS@@3V?$vector@M$02@@A.2", align 4
  %209 = uitofp i32 %36 to float
  %210 = uitofp i32 %37 to float
  %211 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %212 = extractvalue %dx.types.CBufRet.f32 %211, 2
  %213 = fmul fast float %212, 0x3FE3C6EF40000000
  %214 = frem fast float %209, 2.560000e+02
  %215 = frem fast float %210, 2.560000e+02
  %216 = fptoui float %214 to i32
  %217 = fptoui float %215 to i32
  %218 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %7, i32 0, i32 %216, i32 %217, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %219 = extractvalue %dx.types.ResRet.f32 %218, 0
  %220 = extractvalue %dx.types.ResRet.f32 %218, 1
  %221 = extractvalue %dx.types.ResRet.f32 %218, 2
  %222 = extractvalue %dx.types.ResRet.f32 %218, 3
  %223 = fadd fast float %219, %213
  %224 = fadd fast float %220, %213
  %225 = fadd fast float %221, %213
  %226 = fadd fast float %222, %213
  %227 = call float @dx.op.unary.f32(i32 22, float %223)  ; Frc(value)
  %228 = call float @dx.op.unary.f32(i32 22, float %224)  ; Frc(value)
  %229 = call float @dx.op.unary.f32(i32 22, float %225)  ; Frc(value)
  %230 = call float @dx.op.unary.f32(i32 22, float %226)  ; Frc(value)
  %231 = fadd fast float %229, %209
  %232 = fadd fast float %230, %210
  %233 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %234 = extractvalue %dx.types.CBufRet.f32 %233, 2
  %235 = extractvalue %dx.types.CBufRet.f32 %233, 3
  %236 = fmul fast float %234, %231
  %237 = fmul fast float %235, %232
  %238 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %239 = extractvalue %dx.types.CBufRet.f32 %238, 0
  %240 = extractvalue %dx.types.CBufRet.f32 %238, 1
  %241 = extractvalue %dx.types.CBufRet.f32 %238, 2
  %242 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %243 = extractvalue %dx.types.CBufRet.f32 %242, 1
  %244 = fmul fast float %236, 2.000000e+00
  %245 = fmul fast float %237, 2.000000e+00
  %246 = fsub fast float 1.000000e+00, %244
  %247 = fsub fast float 1.000000e+00, %245
  %248 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %249 = extractvalue %dx.types.CBufRet.f32 %248, 0
  %250 = extractvalue %dx.types.CBufRet.f32 %248, 1
  %251 = extractvalue %dx.types.CBufRet.f32 %248, 2
  %252 = fmul fast float %249, %246
  %253 = fmul fast float %250, %246
  %254 = fmul fast float %251, %246
  %255 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %256 = extractvalue %dx.types.CBufRet.f32 %255, 0
  %257 = extractvalue %dx.types.CBufRet.f32 %255, 1
  %258 = extractvalue %dx.types.CBufRet.f32 %255, 2
  %259 = fmul fast float %256, %247
  %260 = fmul fast float %257, %247
  %261 = fmul fast float %258, %247
  %262 = fadd fast float %259, %252
  %263 = fadd fast float %260, %253
  %264 = fadd fast float %261, %254
  %265 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %266 = extractvalue %dx.types.CBufRet.f32 %265, 0
  %267 = extractvalue %dx.types.CBufRet.f32 %265, 1
  %268 = extractvalue %dx.types.CBufRet.f32 %265, 2
  %269 = fadd fast float %262, %266
  %270 = fadd fast float %263, %267
  %271 = fadd fast float %264, %268
  %272 = fmul fast float %269, %243
  %273 = fmul fast float %270, %243
  %274 = fmul fast float %271, %243
  %275 = fmul fast float %272, %272
  %276 = fmul fast float %273, %273
  %277 = fadd fast float %275, %276
  %278 = fmul fast float %274, %274
  %279 = fadd fast float %277, %278
  %280 = call float @dx.op.unary.f32(i32 24, float %279)  ; Sqrt(value)
  %281 = fdiv fast float 1.000000e+00, %280
  %282 = fmul fast float %272, %281
  %283 = fmul fast float %273, %281
  %284 = fmul fast float %274, %281
  %285 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %6, i32 0, i32 %36, i32 %37, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %286 = extractvalue %dx.types.ResRet.f32 %285, 0
  %287 = fcmp fast ogt float %286, -1.000000e+00
  %288 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %289 = extractvalue %dx.types.CBufRet.f32 %288, 1
  %290 = select i1 %287, float %289, float 1.000000e+00
  %291 = fadd fast float %286, 1.000000e+00
  %292 = fmul fast float %290, %291
  %293 = call float @dx.op.unary.f32(i32 6, float %292)  ; FAbs(value)
  %294 = fdiv fast float 1.000000e+00, %243
  %295 = fmul fast float %294, %280
  %296 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 423)  ; CBufferLoadLegacy(handle,regIndex)
  %297 = extractvalue %dx.types.CBufRet.f32 %296, 1
  %298 = fmul fast float %297, %295
  %299 = fmul fast float %295, %293
  %300 = extractvalue %dx.types.CBufRet.f32 %288, 3
  %301 = fcmp fast oge float %293, %300
  %302 = call float @dx.op.binary.f32(i32 36, float %299, float %298)  ; FMin(a,b)
  %303 = select i1 %301, float %298, float %302
  %304 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %305 = extractvalue %dx.types.CBufRet.i32 %304, 3
  %306 = icmp eq i32 %305, 0
  %307 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 401)  ; CBufferLoadLegacy(handle,regIndex)
  %308 = extractvalue %dx.types.CBufRet.f32 %307, 2
  %309 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %310 = extractvalue %dx.types.CBufRet.f32 %309, 2
  %311 = fsub fast float %308, %241
  %312 = fadd fast float %311, %310
  %313 = fsub fast float 0xC7EFFFFFE0000000, %241
  br i1 %306, label %325, label %314, !dx.controlflow.hints !35

; <label>:314                                     ; preds = %205
  %315 = fsub fast float -0.000000e+00, %240
  %316 = fsub fast float -0.000000e+00, %239
  %317 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %316, float %315, float %312)  ; Dot3(ax,ay,az,bx,by,bz)
  %318 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %282, float %283, float %284)  ; Dot3(ax,ay,az,bx,by,bz)
  %319 = fdiv fast float 1.000000e+00, %318
  %320 = fmul fast float %319, %317
  %321 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %316, float %315, float %313)  ; Dot3(ax,ay,az,bx,by,bz)
  %322 = fmul fast float %319, %321
  %323 = call float @dx.op.binary.f32(i32 36, float %320, float %322)  ; FMin(a,b)
  %324 = call float @dx.op.binary.f32(i32 35, float %320, float %322)  ; FMax(a,b)
  br label %358

; <label>:325                                     ; preds = %205
  %326 = extractvalue %dx.types.CBufRet.f32 %307, 0
  %327 = extractvalue %dx.types.CBufRet.f32 %307, 1
  %328 = extractvalue %dx.types.CBufRet.f32 %309, 0
  %329 = extractvalue %dx.types.CBufRet.f32 %309, 1
  %330 = fdiv fast float 1.000000e+00, %282
  %331 = fdiv fast float 1.000000e+00, %283
  %332 = fdiv fast float 1.000000e+00, %284
  %333 = fsub fast float %326, %239
  %334 = fmul fast float %330, %333
  %335 = fadd fast float %333, %328
  %336 = fmul fast float %335, %330
  %337 = call float @dx.op.binary.f32(i32 36, float %334, float %336)  ; FMin(a,b)
  %338 = call float @dx.op.binary.f32(i32 35, float %334, float %336)  ; FMax(a,b)
  %339 = fsub fast float %327, %240
  %340 = fmul fast float %331, %339
  %341 = fadd fast float %339, %329
  %342 = fmul fast float %341, %331
  %343 = call float @dx.op.binary.f32(i32 36, float %340, float %342)  ; FMin(a,b)
  %344 = call float @dx.op.binary.f32(i32 35, float %337, float %343)  ; FMax(a,b)
  %345 = call float @dx.op.binary.f32(i32 35, float %340, float %342)  ; FMax(a,b)
  %346 = call float @dx.op.binary.f32(i32 36, float %338, float %345)  ; FMin(a,b)
  %347 = fmul fast float %332, %313
  %348 = fmul fast float %332, %312
  %349 = call float @dx.op.binary.f32(i32 36, float %347, float %348)  ; FMin(a,b)
  %350 = call float @dx.op.binary.f32(i32 35, float %344, float %349)  ; FMax(a,b)
  %351 = call float @dx.op.binary.f32(i32 35, float %347, float %348)  ; FMax(a,b)
  %352 = call float @dx.op.binary.f32(i32 36, float %346, float %351)  ; FMin(a,b)
  %353 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %350)  ; FMax(a,b)
  %354 = fcmp fast ult float %352, %353
  br i1 %354, label %358, label %355, !dx.controlflow.hints !36

; <label>:355                                     ; preds = %325
  %356 = call float @dx.op.binary.f32(i32 36, float %350, float %352)  ; FMin(a,b)
  %357 = call float @dx.op.binary.f32(i32 35, float %350, float %352)  ; FMax(a,b)
  br label %358

; <label>:358                                     ; preds = %355, %325, %314
  %359 = phi float [ %323, %314 ], [ %356, %355 ], [ 0.000000e+00, %325 ]
  %360 = phi float [ %324, %314 ], [ %357, %355 ], [ 0.000000e+00, %325 ]
  %361 = fcmp fast oeq float %360, 0.000000e+00
  %362 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 427)  ; CBufferLoadLegacy(handle,regIndex)
  %363 = extractvalue %dx.types.CBufRet.f32 %362, 1
  %364 = fcmp fast olt float %360, %363
  %365 = or i1 %361, %364
  br i1 %365, label %370, label %366, !dx.controlflow.hints !37

; <label>:366                                     ; preds = %358
  %367 = call float @dx.op.binary.f32(i32 35, float %363, float %359)  ; FMax(a,b)
  %368 = call float @dx.op.binary.f32(i32 36, float 0x47EFFFFFE0000000, float %367)  ; FMin(a,b)
  %369 = call float @dx.op.binary.f32(i32 35, float -1.000000e+00, float %360)  ; FMax(a,b)
  br label %370

; <label>:370                                     ; preds = %366, %358
  %371 = phi i32 [ 1, %366 ], [ 0, %358 ]
  %372 = phi float [ %369, %366 ], [ -1.000000e+00, %358 ]
  %373 = phi float [ %368, %366 ], [ 0x47EFFFFFE0000000, %358 ]
  %374 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %375 = extractvalue %dx.types.CBufRet.f32 %374, 3
  %376 = fsub fast float -0.000000e+00, %239
  %377 = fsub fast float -0.000000e+00, %240
  %378 = fsub fast float %375, %241
  %379 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %376, float %377, float %378)  ; Dot3(ax,ay,az,bx,by,bz)
  %380 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %282, float %283, float %284)  ; Dot3(ax,ay,az,bx,by,bz)
  %381 = fdiv fast float 1.000000e+00, %380
  %382 = fmul fast float %381, %379
  %383 = fcmp fast olt float %382, 0.000000e+00
  %384 = fcmp fast ogt float %284, 0.000000e+00
  %385 = and i1 %384, %383
  br i1 %385, label %390, label %386, !dx.controlflow.hints !38

; <label>:386                                     ; preds = %370
  %387 = fcmp fast olt float %284, 0.000000e+00
  br i1 %387, label %388, label %390, !dx.controlflow.hints !39

; <label>:388                                     ; preds = %386
  %389 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %382)  ; FMax(a,b)
  br label %390

; <label>:390                                     ; preds = %388, %386, %370
  %391 = phi float [ 0.000000e+00, %370 ], [ %389, %388 ], [ 0.000000e+00, %386 ]
  %392 = phi float [ 0.000000e+00, %370 ], [ 0x47EFFFFFE0000000, %388 ], [ %382, %386 ]
  %393 = fcmp fast oeq float %392, 0.000000e+00
  br i1 %393, label %397, label %394, !dx.controlflow.hints !40

; <label>:394                                     ; preds = %390
  %395 = call float @dx.op.binary.f32(i32 36, float %373, float %391)  ; FMin(a,b)
  %396 = call float @dx.op.binary.f32(i32 35, float %372, float %392)  ; FMax(a,b)
  br label %397

; <label>:397                                     ; preds = %394, %390
  %398 = phi i32 [ 1, %394 ], [ 0, %390 ]
  %399 = phi float [ %396, %394 ], [ %372, %390 ]
  %400 = phi float [ %395, %394 ], [ %373, %390 ]
  %401 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %402 = extractvalue %dx.types.CBufRet.i32 %401, 3
  %403 = icmp eq i32 %402, 0
  %404 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 31)  ; CBufferLoadLegacy(handle,regIndex)
  %405 = extractvalue %dx.types.CBufRet.f32 %404, 2
  %406 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 32)  ; CBufferLoadLegacy(handle,regIndex)
  %407 = extractvalue %dx.types.CBufRet.f32 %406, 2
  %408 = fsub fast float %405, %241
  %409 = fadd fast float %408, %407
  br i1 %403, label %417, label %410, !dx.controlflow.hints !41

; <label>:410                                     ; preds = %397
  %411 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %376, float %377, float %409)  ; Dot3(ax,ay,az,bx,by,bz)
  %412 = fmul fast float %381, %411
  %413 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %376, float %377, float %408)  ; Dot3(ax,ay,az,bx,by,bz)
  %414 = fmul fast float %381, %413
  %415 = call float @dx.op.binary.f32(i32 36, float %412, float %414)  ; FMin(a,b)
  %416 = call float @dx.op.binary.f32(i32 35, float %412, float %414)  ; FMax(a,b)
  br label %450

; <label>:417                                     ; preds = %397
  %418 = fdiv fast float 1.000000e+00, %282
  %419 = fdiv fast float 1.000000e+00, %283
  %420 = fdiv fast float 1.000000e+00, %284
  %421 = extractvalue %dx.types.CBufRet.f32 %404, 0
  %422 = extractvalue %dx.types.CBufRet.f32 %404, 1
  %423 = extractvalue %dx.types.CBufRet.f32 %406, 0
  %424 = extractvalue %dx.types.CBufRet.f32 %406, 1
  %425 = fsub fast float %421, %239
  %426 = fmul fast float %425, %418
  %427 = fadd fast float %425, %423
  %428 = fmul fast float %427, %418
  %429 = call float @dx.op.binary.f32(i32 36, float %426, float %428)  ; FMin(a,b)
  %430 = call float @dx.op.binary.f32(i32 35, float %426, float %428)  ; FMax(a,b)
  %431 = fsub fast float %422, %240
  %432 = fmul fast float %431, %419
  %433 = fadd fast float %431, %424
  %434 = fmul fast float %433, %419
  %435 = call float @dx.op.binary.f32(i32 36, float %432, float %434)  ; FMin(a,b)
  %436 = call float @dx.op.binary.f32(i32 35, float %429, float %435)  ; FMax(a,b)
  %437 = call float @dx.op.binary.f32(i32 35, float %432, float %434)  ; FMax(a,b)
  %438 = call float @dx.op.binary.f32(i32 36, float %430, float %437)  ; FMin(a,b)
  %439 = fmul fast float %408, %420
  %440 = fmul fast float %409, %420
  %441 = call float @dx.op.binary.f32(i32 36, float %439, float %440)  ; FMin(a,b)
  %442 = call float @dx.op.binary.f32(i32 35, float %436, float %441)  ; FMax(a,b)
  %443 = call float @dx.op.binary.f32(i32 35, float %439, float %440)  ; FMax(a,b)
  %444 = call float @dx.op.binary.f32(i32 36, float %438, float %443)  ; FMin(a,b)
  %445 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %442)  ; FMax(a,b)
  %446 = fcmp fast ult float %444, %445
  br i1 %446, label %450, label %447, !dx.controlflow.hints !42

; <label>:447                                     ; preds = %417
  %448 = call float @dx.op.binary.f32(i32 36, float %442, float %444)  ; FMin(a,b)
  %449 = call float @dx.op.binary.f32(i32 35, float %442, float %444)  ; FMax(a,b)
  br label %450

; <label>:450                                     ; preds = %447, %417, %410
  %451 = phi float [ %415, %410 ], [ %448, %447 ], [ 0.000000e+00, %417 ]
  %452 = phi float [ %416, %410 ], [ %449, %447 ], [ 0.000000e+00, %417 ]
  %453 = fcmp fast oeq float %452, 0.000000e+00
  br i1 %453, label %457, label %454, !dx.controlflow.hints !43

; <label>:454                                     ; preds = %450
  %455 = call float @dx.op.binary.f32(i32 36, float %400, float %451)  ; FMin(a,b)
  %456 = call float @dx.op.binary.f32(i32 35, float %399, float %452)  ; FMax(a,b)
  br label %457

; <label>:457                                     ; preds = %454, %450
  %458 = phi i32 [ 1, %454 ], [ 0, %450 ]
  %459 = phi float [ %456, %454 ], [ %399, %450 ]
  %460 = phi float [ %455, %454 ], [ %400, %450 ]
  %461 = call float @dx.op.binary.f32(i32 36, float %303, float %459)  ; FMin(a,b)
  %462 = call float @dx.op.binary.f32(i32 35, float %280, float %460)  ; FMax(a,b)
  %463 = extractvalue %dx.types.CBufRet.f32 %374, 0
  %464 = fmul fast float %228, 2.000000e+00
  %465 = fadd fast float %464, -1.000000e+00
  %466 = fmul fast float %463, %465
  %467 = fadd fast float %466, %462
  %468 = fcmp fast olt float %467, %461
  %469 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %470 = extractvalue %dx.types.CBufRet.f32 %469, 2
  %471 = fcmp fast olt float %470, 1.000000e+00
  %472 = and i1 %468, %471
  br i1 %472, label %473, label %1756

; <label>:473                                     ; preds = %457
  %474 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %19, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %475 = extractvalue %dx.types.CBufRet.i32 %474, 1
  %476 = add i32 %475, -1
  %477 = fmul fast float %467, %284
  %478 = fadd fast float %477, %241
  %479 = fmul fast float %467, %283
  %480 = fadd fast float %479, %240
  %481 = fmul fast float %467, %282
  %482 = fadd fast float %481, %239
  br label %483

; <label>:483                                     ; preds = %1732, %473
  %484 = phi float [ %1734, %1732 ], [ 0.000000e+00, %473 ]
  %485 = phi float [ %1735, %1732 ], [ 1.000000e+00, %473 ]
  %486 = phi float [ %1736, %1732 ], [ 0.000000e+00, %473 ]
  %487 = phi float [ %1737, %1732 ], [ 0.000000e+00, %473 ]
  %488 = phi float [ %1738, %1732 ], [ 0.000000e+00, %473 ]
  %489 = phi float [ %1748, %1732 ], [ %482, %473 ]
  %490 = phi float [ %1749, %1732 ], [ %480, %473 ]
  %491 = phi float [ %1750, %1732 ], [ %478, %473 ]
  %492 = phi float [ %1733, %1732 ], [ %467, %473 ]
  %493 = phi i32 [ %676, %1732 ], [ %476, %473 ]
  %494 = phi float [ %1739, %1732 ], [ 0.000000e+00, %473 ]
  %495 = phi float [ %1740, %1732 ], [ 0.000000e+00, %473 ]
  %496 = phi float [ %1741, %1732 ], [ 0.000000e+00, %473 ]
  %497 = phi float [ %1742, %1732 ], [ 0.000000e+00, %473 ]
  %498 = phi float [ %1743, %1732 ], [ 0.000000e+00, %473 ]
  %499 = phi i32 [ %1744, %1732 ], [ 0, %473 ]
  %500 = fsub fast float -0.000000e+00, %490
  %501 = fsub fast float -0.000000e+00, %489
  %502 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %503 = extractvalue %dx.types.CBufRet.f32 %502, 0
  %504 = icmp eq i32 %371, 0
  br i1 %504, label %673, label %505, !dx.controlflow.hints !44

; <label>:505                                     ; preds = %483
  %506 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %19, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %507 = extractvalue %dx.types.CBufRet.i32 %506, 1
  %508 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 427)  ; CBufferLoadLegacy(handle,regIndex)
  %509 = extractvalue %dx.types.CBufRet.f32 %508, 1
  %510 = fcmp fast ogt float %509, %492
  br i1 %510, label %511, label %513, !dx.controlflow.hints !45

; <label>:511                                     ; preds = %505
  %512 = fsub fast float %509, %492
  br label %663

; <label>:513                                     ; preds = %505
  %514 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %515 = extractvalue %dx.types.CBufRet.i32 %514, 3
  %516 = icmp eq i32 %515, 0
  %517 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 401)  ; CBufferLoadLegacy(handle,regIndex)
  %518 = extractvalue %dx.types.CBufRet.f32 %517, 2
  %519 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %520 = extractvalue %dx.types.CBufRet.f32 %519, 2
  %521 = fsub fast float %518, %491
  %522 = fadd fast float %521, %520
  %523 = fsub fast float 0xC7EFFFFFE0000000, %491
  br i1 %516, label %531, label %524, !dx.controlflow.hints !35

; <label>:524                                     ; preds = %513
  %525 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %501, float %500, float %522)  ; Dot3(ax,ay,az,bx,by,bz)
  %526 = fmul fast float %381, %525
  %527 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %501, float %500, float %523)  ; Dot3(ax,ay,az,bx,by,bz)
  %528 = fmul fast float %381, %527
  %529 = call float @dx.op.binary.f32(i32 36, float %526, float %528)  ; FMin(a,b)
  %530 = call float @dx.op.binary.f32(i32 35, float %526, float %528)  ; FMax(a,b)
  br label %564

; <label>:531                                     ; preds = %513
  %532 = extractvalue %dx.types.CBufRet.f32 %517, 0
  %533 = extractvalue %dx.types.CBufRet.f32 %517, 1
  %534 = extractvalue %dx.types.CBufRet.f32 %519, 0
  %535 = extractvalue %dx.types.CBufRet.f32 %519, 1
  %536 = fdiv fast float 1.000000e+00, %282
  %537 = fdiv fast float 1.000000e+00, %283
  %538 = fdiv fast float 1.000000e+00, %284
  %539 = fsub fast float %532, %489
  %540 = fmul fast float %536, %539
  %541 = fadd fast float %539, %534
  %542 = fmul fast float %541, %536
  %543 = call float @dx.op.binary.f32(i32 36, float %540, float %542)  ; FMin(a,b)
  %544 = call float @dx.op.binary.f32(i32 35, float %540, float %542)  ; FMax(a,b)
  %545 = fsub fast float %533, %490
  %546 = fmul fast float %537, %545
  %547 = fadd fast float %545, %535
  %548 = fmul fast float %547, %537
  %549 = call float @dx.op.binary.f32(i32 36, float %546, float %548)  ; FMin(a,b)
  %550 = call float @dx.op.binary.f32(i32 35, float %543, float %549)  ; FMax(a,b)
  %551 = call float @dx.op.binary.f32(i32 35, float %546, float %548)  ; FMax(a,b)
  %552 = call float @dx.op.binary.f32(i32 36, float %544, float %551)  ; FMin(a,b)
  %553 = fmul fast float %538, %523
  %554 = fmul fast float %538, %522
  %555 = call float @dx.op.binary.f32(i32 36, float %553, float %554)  ; FMin(a,b)
  %556 = call float @dx.op.binary.f32(i32 35, float %550, float %555)  ; FMax(a,b)
  %557 = call float @dx.op.binary.f32(i32 35, float %553, float %554)  ; FMax(a,b)
  %558 = call float @dx.op.binary.f32(i32 36, float %552, float %557)  ; FMin(a,b)
  %559 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %556)  ; FMax(a,b)
  %560 = fcmp fast ult float %558, %559
  br i1 %560, label %564, label %561, !dx.controlflow.hints !36

; <label>:561                                     ; preds = %531
  %562 = call float @dx.op.binary.f32(i32 36, float %556, float %558)  ; FMin(a,b)
  %563 = call float @dx.op.binary.f32(i32 35, float %556, float %558)  ; FMax(a,b)
  br label %564

; <label>:564                                     ; preds = %561, %531, %524
  %565 = phi float [ %529, %524 ], [ %562, %561 ], [ 0.000000e+00, %531 ]
  %566 = phi float [ %530, %524 ], [ %563, %561 ], [ 0.000000e+00, %531 ]
  %567 = fcmp fast ogt float %565, 0.000000e+00
  br i1 %567, label %663, label %568, !dx.controlflow.hints !46

; <label>:568                                     ; preds = %564
  %569 = fcmp fast ugt float %566, 0.000000e+00
  br i1 %569, label %570, label %663, !dx.controlflow.hints !47

; <label>:570                                     ; preds = %568
  %571 = icmp sgt i32 %493, 0
  br i1 %571, label %572, label %657

; <label>:572                                     ; preds = %570
  br label %573

; <label>:573                                     ; preds = %653, %572
  %574 = phi i32 [ %654, %653 ], [ %493, %572 ]
  %575 = sitofp i32 %574 to float
  %576 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 401)  ; CBufferLoadLegacy(handle,regIndex)
  %577 = extractvalue %dx.types.CBufRet.f32 %576, 0
  %578 = extractvalue %dx.types.CBufRet.f32 %576, 1
  %579 = fsub fast float %489, %577
  %580 = fsub fast float %490, %578
  %581 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 403)  ; CBufferLoadLegacy(handle,regIndex)
  %582 = extractvalue %dx.types.CBufRet.f32 %581, 0
  %583 = extractvalue %dx.types.CBufRet.f32 %581, 1
  %584 = fmul fast float %579, %582
  %585 = fmul fast float %580, %583
  %586 = fsub fast float 1.000000e+00, %585
  %587 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %588 = extractvalue %dx.types.CBufRet.i32 %587, 3
  %589 = icmp eq i32 %588, 0
  br i1 %589, label %596, label %590, !dx.controlflow.hints !48

; <label>:590                                     ; preds = %573
  %591 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %17, float %584, float %586, float undef, float undef, i32 0, i32 0, i32 undef, float %575)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %592 = extractvalue %dx.types.ResRet.f32 %591, 0
  %593 = extractvalue %dx.types.ResRet.f32 %591, 1
  %594 = extractvalue %dx.types.ResRet.f32 %591, 2
  %595 = extractvalue %dx.types.ResRet.f32 %591, 3
  br label %602

; <label>:596                                     ; preds = %573
  %597 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %18, float %584, float %586, float undef, float undef, i32 0, i32 0, i32 undef, float %575)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %598 = extractvalue %dx.types.ResRet.f32 %597, 0
  %599 = extractvalue %dx.types.ResRet.f32 %597, 1
  %600 = extractvalue %dx.types.ResRet.f32 %597, 2
  %601 = extractvalue %dx.types.ResRet.f32 %597, 3
  br label %602

; <label>:602                                     ; preds = %596, %590
  %603 = phi float [ %592, %590 ], [ %598, %596 ]
  %604 = phi float [ %593, %590 ], [ %599, %596 ]
  %605 = phi float [ %594, %590 ], [ %600, %596 ]
  %606 = phi float [ %595, %590 ], [ %601, %596 ]
  %607 = extractvalue %dx.types.CBufRet.f32 %581, 3
  %608 = fmul fast float %607, %603
  %609 = extractvalue %dx.types.CBufRet.f32 %576, 2
  %610 = fadd fast float %608, %609
  %611 = fmul fast float %607, %604
  %612 = fadd fast float %611, %609
  %613 = fmul fast float %607, %605
  %614 = fadd fast float %613, %609
  %615 = and i32 %574, 31
  %616 = shl i32 1, %615
  %617 = uitofp i32 %616 to float
  %618 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 402)  ; CBufferLoadLegacy(handle,regIndex)
  %619 = extractvalue %dx.types.CBufRet.f32 %618, 3
  %620 = fdiv fast float 1.000000e+00, %619
  %621 = fmul fast float %620, %617
  %622 = fmul fast float %621, %284
  %623 = fadd fast float %622, %491
  %624 = fcmp fast oeq float %606, 0.000000e+00
  %625 = fcmp fast ogt float %491, %612
  %626 = fcmp fast ogt float %623, %612
  %627 = and i1 %625, %626
  %628 = or i1 %624, %627
  br i1 %628, label %629, label %633, !dx.controlflow.hints !49

; <label>:629                                     ; preds = %602
  %630 = add nsw i32 %574, 1
  %631 = add nsw i32 %507, -1
  %632 = call i32 @dx.op.binary.i32(i32 38, i32 %630, i32 %631)  ; IMin(a,b)
  br label %663

; <label>:633                                     ; preds = %602
  %634 = fcmp fast olt float %491, %614
  %635 = fcmp fast olt float %623, %614
  %636 = and i1 %634, %635
  br i1 %636, label %637, label %641, !dx.controlflow.hints !50

; <label>:637                                     ; preds = %633
  %638 = add nsw i32 %574, 1
  %639 = add nsw i32 %507, -1
  %640 = call i32 @dx.op.binary.i32(i32 38, i32 %638, i32 %639)  ; IMin(a,b)
  br label %663

; <label>:641                                     ; preds = %633
  %642 = fcmp fast olt float %491, %610
  %643 = fcmp fast olt float %623, %610
  %644 = and i1 %642, %643
  br i1 %644, label %645, label %653, !dx.controlflow.hints !51

; <label>:645                                     ; preds = %641
  %646 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 406)  ; CBufferLoadLegacy(handle,regIndex)
  %647 = extractvalue %dx.types.CBufRet.f32 %646, 3
  %648 = extractvalue %dx.types.CBufRet.f32 %581, 2
  %649 = fcmp fast une float %647, %648
  br i1 %649, label %650, label %657, !dx.controlflow.hints !52

; <label>:650                                     ; preds = %645
  %651 = fsub fast float %491, %614
  %652 = call float @dx.op.binary.f32(i32 36, float %621, float %651)  ; FMin(a,b)
  br label %657

; <label>:653                                     ; preds = %641
  %654 = add nsw i32 %574, -1
  %655 = icmp sgt i32 %574, 1
  br i1 %655, label %573, label %656

; <label>:656                                     ; preds = %653
  br label %657

; <label>:657                                     ; preds = %656, %650, %645, %570
  %658 = phi float [ %652, %650 ], [ %621, %645 ], [ 0.000000e+00, %570 ], [ 0.000000e+00, %656 ]
  %659 = phi i32 [ %574, %650 ], [ %574, %645 ], [ %493, %570 ], [ %654, %656 ]
  %660 = add nsw i32 %659, 1
  %661 = add nsw i32 %507, -1
  %662 = call i32 @dx.op.binary.i32(i32 38, i32 %660, i32 %661)  ; IMin(a,b)
  br label %663

; <label>:663                                     ; preds = %657, %637, %629, %568, %564, %511
  %664 = phi float [ %512, %511 ], [ %621, %629 ], [ %621, %637 ], [ %658, %657 ], [ 0x47EFFFFFE0000000, %568 ], [ %565, %564 ]
  %665 = phi i32 [ %371, %511 ], [ %371, %629 ], [ %371, %637 ], [ %371, %657 ], [ 0, %568 ], [ %371, %564 ]
  %666 = phi i32 [ %493, %511 ], [ %632, %629 ], [ %640, %637 ], [ %662, %657 ], [ %493, %568 ], [ %493, %564 ]
  %667 = icmp ne i32 %665, 0
  %668 = zext i1 %667 to i32
  %669 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %670 = extractvalue %dx.types.CBufRet.f32 %669, 2
  %671 = call float @dx.op.binary.f32(i32 35, float %664, float %670)  ; FMax(a,b)
  %672 = call float @dx.op.binary.f32(i32 36, float 0x47EFFFFFE0000000, float %671)  ; FMin(a,b)
  br label %673

; <label>:673                                     ; preds = %663, %483
  %674 = phi i32 [ %668, %663 ], [ 0, %483 ]
  %675 = phi float [ %672, %663 ], [ 0x47EFFFFFE0000000, %483 ]
  %676 = phi i32 [ %666, %663 ], [ %493, %483 ]
  %677 = icmp eq i32 %398, 0
  br i1 %677, label %690, label %678, !dx.controlflow.hints !53

; <label>:678                                     ; preds = %673
  %679 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %680 = extractvalue %dx.types.CBufRet.f32 %679, 3
  %681 = extractvalue %dx.types.CBufRet.f32 %679, 2
  %682 = fmul fast float %680, %492
  %683 = fdiv fast float %682, %461
  %684 = fadd fast float %683, 1.000000e+00
  %685 = call float @dx.op.unary.f32(i32 23, float %684)  ; Log(value)
  %686 = call float @dx.op.binary.f32(i32 36, float 1.000000e+00, float %685)  ; FMin(a,b)
  %687 = fmul fast float %681, %461
  %688 = fmul fast float %687, %686
  %689 = call float @dx.op.binary.f32(i32 36, float 0x47EFFFFFE0000000, float %688)  ; FMin(a,b)
  br label %690

; <label>:690                                     ; preds = %678, %673
  %691 = phi float [ %689, %678 ], [ 0x47EFFFFFE0000000, %673 ]
  %692 = icmp eq i32 %458, 0
  br i1 %692, label %749, label %693, !dx.controlflow.hints !54

; <label>:693                                     ; preds = %690
  %694 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 35)  ; CBufferLoadLegacy(handle,regIndex)
  %695 = extractvalue %dx.types.CBufRet.f32 %694, 0
  %696 = extractvalue %dx.types.CBufRet.f32 %694, 1
  %697 = extractvalue %dx.types.CBufRet.f32 %694, 2
  %698 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 31)  ; CBufferLoadLegacy(handle,regIndex)
  %699 = extractvalue %dx.types.CBufRet.f32 %698, 0
  %700 = extractvalue %dx.types.CBufRet.f32 %698, 1
  %701 = extractvalue %dx.types.CBufRet.f32 %698, 2
  %702 = fsub fast float %489, %699
  %703 = fsub fast float %490, %700
  %704 = fsub fast float %491, %701
  %705 = fmul fast float %702, %695
  %706 = fmul fast float %703, %696
  %707 = fmul fast float %704, %697
  %708 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %709 = extractvalue %dx.types.CBufRet.i32 %708, 3
  %710 = icmp eq i32 %709, 0
  br i1 %710, label %714, label %711, !dx.controlflow.hints !55

; <label>:711                                     ; preds = %693
  %712 = call float @dx.op.unary.f32(i32 22, float %705)  ; Frc(value)
  %713 = call float @dx.op.unary.f32(i32 22, float %706)  ; Frc(value)
  br label %714

; <label>:714                                     ; preds = %711, %693
  %715 = phi float [ %712, %711 ], [ %705, %693 ]
  %716 = phi float [ %713, %711 ], [ %706, %693 ]
  %717 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %16, float %715, float %716, float %707, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %718 = extractvalue %dx.types.ResRet.f32 %717, 0
  %719 = fmul fast float %718, 2.000000e+00
  %720 = fadd fast float %719, -1.000000e+00
  %721 = extractvalue %dx.types.CBufRet.f32 %694, 3
  %722 = fmul fast float %720, %721
  %723 = fcmp fast olt float %722, 0.000000e+00
  %724 = fcmp fast oge float %707, 0.000000e+00
  %725 = fcmp fast ole float %707, 1.000000e+00
  br i1 %710, label %728, label %726, !dx.controlflow.hints !56

; <label>:726                                     ; preds = %714
  %727 = and i1 %724, %725
  br label %738

; <label>:728                                     ; preds = %714
  %729 = fcmp fast oge float %705, 0.000000e+00
  %730 = fcmp fast oge float %706, 0.000000e+00
  %731 = and i1 %729, %730
  %732 = and i1 %724, %731
  %733 = fcmp fast ole float %705, 1.000000e+00
  %734 = fcmp fast ole float %706, 1.000000e+00
  %735 = and i1 %733, %734
  %736 = and i1 %725, %735
  %737 = and i1 %732, %736
  br label %738

; <label>:738                                     ; preds = %728, %726
  %739 = phi i1 [ %727, %726 ], [ %737, %728 ]
  %740 = and i1 %723, %739
  %741 = call float @dx.op.unary.f32(i32 6, float %722)  ; FAbs(value)
  %742 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %743 = extractvalue %dx.types.CBufRet.f32 %742, 1
  %744 = extractvalue %dx.types.CBufRet.f32 %742, 0
  %745 = call float @dx.op.binary.f32(i32 35, float %741, float %744)  ; FMax(a,b)
  %746 = select i1 %740, float %743, float %745
  %747 = zext i1 %740 to i32
  %748 = call float @dx.op.binary.f32(i32 36, float %675, float %746)  ; FMin(a,b)
  br label %749

; <label>:749                                     ; preds = %738, %690
  %750 = phi i32 [ %747, %738 ], [ 0, %690 ]
  %751 = phi float [ %748, %738 ], [ %675, %690 ]
  %752 = extractvalue %dx.types.CBufRet.f32 %502, 2
  %753 = fmul fast float %752, %492
  %754 = call float @dx.op.unary.f32(i32 23, float %753)  ; Log(value)
  %755 = fmul fast float %754, 0x3FE62E4300000000
  %756 = call float @dx.op.binary.f32(i32 35, float %755, float 1.000000e+00)  ; FMax(a,b)
  %757 = fmul fast float %756, %691
  %758 = call float @dx.op.binary.f32(i32 36, float %757, float %751)  ; FMin(a,b)
  %759 = call float @dx.op.binary.f32(i32 35, float %758, float %503)  ; FMax(a,b)
  %760 = fsub fast float %461, %492
  %761 = fadd fast float %760, 0x3F1A36E2E0000000
  %762 = call float @dx.op.binary.f32(i32 36, float %761, float %759)  ; FMin(a,b)
  %763 = icmp eq i32 %674, 0
  br i1 %763, label %869, label %764, !dx.controlflow.hints !57

; <label>:764                                     ; preds = %749
  %765 = fcmp fast olt float %761, %759
  %766 = fmul fast float %284, %227
  %767 = fmul fast float %766, %762
  %768 = fadd fast float %767, %491
  %769 = fmul fast float %284, %228
  %770 = fmul fast float %769, %762
  %771 = fadd fast float %770, %491
  %772 = fmul fast float %284, %229
  %773 = fmul fast float %772, %762
  %774 = fadd fast float %773, %491
  br i1 %765, label %775, label %780, !dx.controlflow.hints !58

; <label>:775                                     ; preds = %764
  %776 = fmul fast float %762, %282
  %777 = fmul fast float %762, %283
  %778 = fadd fast float %776, %489
  %779 = fadd fast float %777, %490
  br label %780

; <label>:780                                     ; preds = %775, %764
  %781 = phi float [ %778, %775 ], [ %489, %764 ]
  %782 = phi float [ %779, %775 ], [ %490, %764 ]
  %783 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 401)  ; CBufferLoadLegacy(handle,regIndex)
  %784 = extractvalue %dx.types.CBufRet.f32 %783, 0
  %785 = extractvalue %dx.types.CBufRet.f32 %783, 1
  %786 = fsub fast float %781, %784
  %787 = fsub fast float %782, %785
  %788 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 403)  ; CBufferLoadLegacy(handle,regIndex)
  %789 = extractvalue %dx.types.CBufRet.f32 %788, 0
  %790 = extractvalue %dx.types.CBufRet.f32 %788, 1
  %791 = fmul fast float %786, %789
  %792 = fmul fast float %787, %790
  %793 = fsub fast float 1.000000e+00, %792
  %794 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %795 = extractvalue %dx.types.CBufRet.i32 %794, 3
  %796 = icmp eq i32 %795, 0
  br i1 %796, label %803, label %797, !dx.controlflow.hints !48

; <label>:797                                     ; preds = %780
  %798 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %17, float %791, float %793, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %799 = extractvalue %dx.types.ResRet.f32 %798, 0
  %800 = extractvalue %dx.types.ResRet.f32 %798, 1
  %801 = extractvalue %dx.types.ResRet.f32 %798, 2
  %802 = extractvalue %dx.types.ResRet.f32 %798, 3
  br label %809

; <label>:803                                     ; preds = %780
  %804 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %18, float %791, float %793, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %805 = extractvalue %dx.types.ResRet.f32 %804, 0
  %806 = extractvalue %dx.types.ResRet.f32 %804, 1
  %807 = extractvalue %dx.types.ResRet.f32 %804, 2
  %808 = extractvalue %dx.types.ResRet.f32 %804, 3
  br label %809

; <label>:809                                     ; preds = %803, %797
  %810 = phi float [ %799, %797 ], [ %805, %803 ]
  %811 = phi float [ %800, %797 ], [ %806, %803 ]
  %812 = phi float [ %801, %797 ], [ %807, %803 ]
  %813 = phi float [ %802, %797 ], [ %808, %803 ]
  %814 = extractvalue %dx.types.CBufRet.f32 %788, 3
  %815 = fmul fast float %814, %811
  %816 = fmul fast float %815, %810
  %817 = fsub fast float %815, %816
  %818 = fcmp fast ole float %817, 0.000000e+00
  %819 = extractvalue %dx.types.CBufRet.f32 %783, 2
  %820 = fadd fast float %816, %819
  %821 = fmul fast float %814, %812
  %822 = fadd fast float %821, %819
  %823 = fdiv fast float 1.000000e+00, %817
  %824 = select i1 %818, float 1.000000e+06, float %823
  %825 = fsub fast float %768, %820
  %826 = fmul fast float %824, %825
  %827 = call float @dx.op.unary.f32(i32 7, float %826)  ; Saturate(value)
  %828 = extractvalue %dx.types.CBufRet.f32 %788, 2
  %829 = fmul fast float %828, %827
  %830 = fsub fast float %828, %829
  %831 = fcmp fast olt float %768, %822
  %832 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 406)  ; CBufferLoadLegacy(handle,regIndex)
  %833 = extractvalue %dx.types.CBufRet.f32 %832, 3
  %834 = select i1 %831, float %833, float 1.000000e+00
  %835 = fmul fast float %830, %834
  %836 = fsub fast float %771, %820
  %837 = fmul fast float %824, %836
  %838 = call float @dx.op.unary.f32(i32 7, float %837)  ; Saturate(value)
  %839 = fmul fast float %828, %838
  %840 = fsub fast float %828, %839
  %841 = fcmp fast olt float %771, %822
  %842 = select i1 %841, float %833, float 1.000000e+00
  %843 = fmul fast float %840, %842
  %844 = fadd fast float %843, %835
  %845 = fsub fast float %774, %820
  %846 = fmul fast float %824, %845
  %847 = call float @dx.op.unary.f32(i32 7, float %846)  ; Saturate(value)
  %848 = fmul fast float %828, %847
  %849 = fsub fast float %828, %848
  %850 = fcmp fast olt float %774, %822
  %851 = select i1 %850, float %833, float 1.000000e+00
  %852 = fmul fast float %849, %851
  %853 = fadd fast float %844, %852
  %854 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 418)  ; CBufferLoadLegacy(handle,regIndex)
  %855 = extractvalue %dx.types.CBufRet.f32 %854, 2
  %856 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 402)  ; CBufferLoadLegacy(handle,regIndex)
  %857 = extractvalue %dx.types.CBufRet.f32 %856, 0
  %858 = extractvalue %dx.types.CBufRet.f32 %856, 1
  %859 = extractvalue %dx.types.CBufRet.f32 %856, 2
  %860 = fmul fast float %762, 0x3FD5555560000000
  %861 = fmul fast float %860, %813
  %862 = fmul fast float %861, %855
  %863 = fmul fast float %862, %853
  %864 = extractvalue %dx.types.CBufRet.f32 %832, 0
  %865 = fmul fast float %863, %857
  %866 = fmul fast float %863, %858
  %867 = fmul fast float %863, %859
  %868 = fmul fast float %863, %864
  br label %869

; <label>:869                                     ; preds = %809, %749
  %870 = phi float [ %863, %809 ], [ 0.000000e+00, %749 ]
  %871 = phi float [ %868, %809 ], [ 0.000000e+00, %749 ]
  %872 = phi float [ %865, %809 ], [ 0.000000e+00, %749 ]
  %873 = phi float [ %866, %809 ], [ 0.000000e+00, %749 ]
  %874 = phi float [ %867, %809 ], [ 0.000000e+00, %749 ]
  br i1 %677, label %934, label %875, !dx.controlflow.hints !59

; <label>:875                                     ; preds = %869
  %876 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 399)  ; CBufferLoadLegacy(handle,regIndex)
  %877 = extractvalue %dx.types.CBufRet.f32 %876, 0
  %878 = fsub fast float %877, %491
  %879 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %501, float %500, float %878)  ; Dot3(ax,ay,az,bx,by,bz)
  %880 = fmul fast float %381, %879
  %881 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %880)  ; FMax(a,b)
  %882 = fcmp fast olt float %284, 0.000000e+00
  %883 = call float @dx.op.binary.f32(i32 36, float %762, float %881)  ; FMin(a,b)
  br i1 %882, label %885, label %884, !dx.controlflow.hints !60

; <label>:884                                     ; preds = %875
  br label %885

; <label>:885                                     ; preds = %884, %875
  %886 = phi float [ 0.000000e+00, %884 ], [ %883, %875 ]
  %887 = phi float [ %883, %884 ], [ %762, %875 ]
  %888 = phi float [ %883, %884 ], [ 0.000000e+00, %875 ]
  %889 = phi float [ %762, %884 ], [ %883, %875 ]
  %890 = fsub fast float %887, %886
  %891 = extractvalue %dx.types.CBufRet.f32 %876, 1
  %892 = call float @dx.op.binary.f32(i32 36, float 0xBF0FFB4800000000, float %891)  ; FMin(a,b)
  %893 = fsub fast float %491, %877
  %894 = fmul fast float %892, 0x3FF7154760000000
  %895 = fmul fast float %894, %893
  %896 = call float @dx.op.unary.f32(i32 21, float %895)  ; Exp(value)
  %897 = fmul fast float %284, 0x3FF7154760000000
  %898 = fmul fast float %897, %889
  %899 = fmul fast float %898, %892
  %900 = call float @dx.op.unary.f32(i32 21, float %899)  ; Exp(value)
  %901 = fmul fast float %897, %888
  %902 = fmul fast float %901, %892
  %903 = call float @dx.op.unary.f32(i32 21, float %902)  ; Exp(value)
  %904 = fsub fast float %900, %903
  %905 = fmul fast float %904, %896
  %906 = fmul fast float %892, %284
  %907 = fdiv fast float %905, %906
  %908 = fadd fast float %890, %907
  %909 = call float @dx.op.unary.f32(i32 6, float %284)  ; FAbs(value)
  %910 = fcmp fast olt float %909, 0x3F0FFB4800000000
  %911 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %893)  ; FMax(a,b)
  %912 = fmul fast float %911, 0x3FF7154760000000
  %913 = fmul fast float %912, %891
  %914 = call float @dx.op.unary.f32(i32 21, float %913)  ; Exp(value)
  %915 = fmul fast float %914, %762
  %916 = select i1 %910, float %915, float %908
  %917 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 396)  ; CBufferLoadLegacy(handle,regIndex)
  %918 = extractvalue %dx.types.CBufRet.f32 %917, 1
  %919 = fmul fast float %916, %918
  %920 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 395)  ; CBufferLoadLegacy(handle,regIndex)
  %921 = extractvalue %dx.types.CBufRet.f32 %920, 0
  %922 = extractvalue %dx.types.CBufRet.f32 %920, 1
  %923 = extractvalue %dx.types.CBufRet.f32 %920, 2
  %924 = extractvalue %dx.types.CBufRet.f32 %917, 2
  %925 = fmul fast float %921, %919
  %926 = fmul fast float %922, %919
  %927 = fmul fast float %923, %919
  %928 = fadd fast float %925, %872
  %929 = fadd fast float %926, %873
  %930 = fadd fast float %927, %874
  %931 = fmul fast float %924, %919
  %932 = fadd fast float %931, %871
  %933 = fadd fast float %919, %870
  br label %934

; <label>:934                                     ; preds = %885, %869
  %935 = phi float [ %933, %885 ], [ %870, %869 ]
  %936 = phi float [ %932, %885 ], [ %871, %869 ]
  %937 = phi float [ %928, %885 ], [ %872, %869 ]
  %938 = phi float [ %929, %885 ], [ %873, %869 ]
  %939 = phi float [ %930, %885 ], [ %874, %869 ]
  %940 = icmp eq i32 %750, 0
  br i1 %940, label %1135, label %941, !dx.controlflow.hints !61

; <label>:941                                     ; preds = %934
  %942 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %943 = extractvalue %dx.types.CBufRet.f32 %942, 3
  %944 = fmul fast float %943, %492
  %945 = fcmp fast oeq float %944, 0.000000e+00
  br i1 %945, label %960, label %946, !dx.controlflow.hints !62

; <label>:946                                     ; preds = %941
  %947 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 41)  ; CBufferLoadLegacy(handle,regIndex)
  %948 = extractvalue %dx.types.CBufRet.f32 %947, 3
  %949 = fmul fast float %948, %944
  %950 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 33)  ; CBufferLoadLegacy(handle,regIndex)
  %951 = extractvalue %dx.types.CBufRet.f32 %950, 0
  %952 = extractvalue %dx.types.CBufRet.f32 %950, 1
  %953 = extractvalue %dx.types.CBufRet.f32 %950, 2
  %954 = fmul fast float %951, %949
  %955 = fmul fast float %952, %949
  %956 = fmul fast float %953, %949
  %957 = call float @dx.op.unary.f32(i32 23, float %954)  ; Log(value)
  %958 = call float @dx.op.unary.f32(i32 23, float %955)  ; Log(value)
  %959 = call float @dx.op.unary.f32(i32 23, float %956)  ; Log(value)
  br label %960

; <label>:960                                     ; preds = %946, %941
  %961 = phi float [ %957, %946 ], [ 0.000000e+00, %941 ]
  %962 = phi float [ %958, %946 ], [ 0.000000e+00, %941 ]
  %963 = phi float [ %959, %946 ], [ 0.000000e+00, %941 ]
  %964 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 35)  ; CBufferLoadLegacy(handle,regIndex)
  %965 = extractvalue %dx.types.CBufRet.f32 %964, 0
  %966 = extractvalue %dx.types.CBufRet.f32 %964, 1
  %967 = extractvalue %dx.types.CBufRet.f32 %964, 2
  %968 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 31)  ; CBufferLoadLegacy(handle,regIndex)
  %969 = extractvalue %dx.types.CBufRet.f32 %968, 0
  %970 = extractvalue %dx.types.CBufRet.f32 %968, 1
  %971 = extractvalue %dx.types.CBufRet.f32 %968, 2
  %972 = fsub fast float %489, %969
  %973 = fsub fast float %490, %970
  %974 = fsub fast float %491, %971
  %975 = fmul fast float %972, %965
  %976 = fmul fast float %973, %966
  %977 = fmul fast float %974, %967
  %978 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 29)  ; CBufferLoadLegacy(handle,regIndex)
  %979 = extractvalue %dx.types.CBufRet.i32 %978, 0
  %980 = extractvalue %dx.types.CBufRet.i32 %978, 1
  %981 = uitofp i32 %979 to float
  %982 = uitofp i32 %980 to float
  %983 = fmul fast float %975, %981
  %984 = fmul fast float %976, %982
  %985 = fadd fast float %983, 5.000000e-01
  %986 = fadd fast float %984, 5.000000e-01
  %987 = call float @dx.op.unary.f32(i32 22, float %985)  ; Frc(value)
  %988 = call float @dx.op.unary.f32(i32 22, float %986)  ; Frc(value)
  %989 = call float @dx.op.unary.f32(i32 27, float %985)  ; Round_ni(value)
  %990 = call float @dx.op.unary.f32(i32 27, float %986)  ; Round_ni(value)
  %991 = fadd fast float %989, 1.000000e+00
  %992 = fadd fast float %990, 1.000000e+00
  %993 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 30)  ; CBufferLoadLegacy(handle,regIndex)
  %994 = extractvalue %dx.types.CBufRet.f32 %993, 0
  %995 = extractvalue %dx.types.CBufRet.f32 %993, 1
  %996 = fmul fast float %994, %991
  %997 = fmul fast float %995, %992
  %998 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %10, %dx.types.Handle %17, float %996, float %997, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %999 = extractvalue %dx.types.ResRet.f32 %998, 0
  %1000 = extractvalue %dx.types.ResRet.f32 %998, 1
  %1001 = extractvalue %dx.types.ResRet.f32 %998, 2
  %1002 = extractvalue %dx.types.ResRet.f32 %998, 3
  %1003 = extractvalue %dx.types.CBufRet.i32 %978, 2
  %1004 = extractvalue %dx.types.CBufRet.f32 %993, 2
  %1005 = uitofp i32 %1003 to float
  %1006 = fadd fast float %1005, -1.000000e+00
  %1007 = fmul fast float %1006, %999
  %1008 = fmul fast float %1006, %1000
  %1009 = fmul fast float %1006, %1001
  %1010 = fmul fast float %1006, %1002
  %1011 = fadd fast float %1007, 5.000000e-01
  %1012 = fadd fast float %1008, 5.000000e-01
  %1013 = fadd fast float %1009, 5.000000e-01
  %1014 = fadd fast float %1010, 5.000000e-01
  %1015 = fptoui float %1011 to i32
  %1016 = fptoui float %1012 to i32
  %1017 = fptoui float %1013 to i32
  %1018 = fptoui float %1014 to i32
  %1019 = uitofp i32 %1015 to float
  %1020 = uitofp i32 %1016 to float
  %1021 = uitofp i32 %1017 to float
  %1022 = uitofp i32 %1018 to float
  %1023 = fadd fast float %1019, 5.000000e-01
  %1024 = fadd fast float %1020, 5.000000e-01
  %1025 = fadd fast float %1021, 5.000000e-01
  %1026 = fadd fast float %1022, 5.000000e-01
  %1027 = fmul fast float %1023, %1004
  %1028 = fmul fast float %1024, %1004
  %1029 = fmul fast float %1025, %1004
  %1030 = fmul fast float %1026, %1004
  %1031 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %18, float %1027, float %977, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1032 = extractvalue %dx.types.ResRet.f32 %1031, 0
  %1033 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %18, float %1028, float %977, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1034 = extractvalue %dx.types.ResRet.f32 %1033, 0
  %1035 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %18, float %1029, float %977, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1036 = extractvalue %dx.types.ResRet.f32 %1035, 0
  %1037 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %18, float %1030, float %977, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1038 = extractvalue %dx.types.ResRet.f32 %1037, 0
  %1039 = fsub fast float %1036, %1038
  %1040 = fmul fast float %1039, %987
  %1041 = fadd fast float %1040, %1038
  %1042 = fsub fast float %1034, %1032
  %1043 = fmul fast float %1042, %987
  %1044 = fadd fast float %1043, %1032
  %1045 = fsub fast float %1044, %1041
  %1046 = fmul fast float %1045, %988
  %1047 = fadd fast float %1046, %1041
  %1048 = fcmp fast ogt float %1047, 0.000000e+00
  br i1 %1048, label %1049, label %1117, !dx.controlflow.hints !63

; <label>:1049                                    ; preds = %960
  %1050 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 33)  ; CBufferLoadLegacy(handle,regIndex)
  %1051 = extractvalue %dx.types.CBufRet.f32 %1050, 0
  %1052 = extractvalue %dx.types.CBufRet.f32 %1050, 1
  %1053 = extractvalue %dx.types.CBufRet.f32 %1050, 2
  %1054 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 41)  ; CBufferLoadLegacy(handle,regIndex)
  %1055 = extractvalue %dx.types.CBufRet.f32 %1054, 0
  %1056 = extractvalue %dx.types.CBufRet.f32 %1054, 1
  %1057 = extractvalue %dx.types.CBufRet.f32 %1054, 2
  %1058 = fmul fast float %973, %965
  %1059 = fmul fast float %974, %965
  %1060 = fadd fast float %975, %1055
  %1061 = fadd fast float %1058, %1056
  %1062 = fadd fast float %1059, %1057
  %1063 = fmul fast float %1060, %1051
  %1064 = fmul fast float %1061, %1051
  %1065 = fmul fast float %1062, %1051
  %1066 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %15, float %1063, float %1064, float %1065, float undef, i32 0, i32 0, i32 0, float %961)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1067 = extractvalue %dx.types.ResRet.f32 %1066, 0
  %1068 = fmul fast float %1060, %1052
  %1069 = fmul fast float %1061, %1052
  %1070 = fmul fast float %1062, %1052
  %1071 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %15, float %1068, float %1069, float %1070, float undef, i32 0, i32 0, i32 0, float %962)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1072 = extractvalue %dx.types.ResRet.f32 %1071, 1
  %1073 = fmul fast float %1060, %1053
  %1074 = fmul fast float %1061, %1053
  %1075 = fmul fast float %1062, %1053
  %1076 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %15, float %1073, float %1074, float %1075, float undef, i32 0, i32 0, i32 0, float %963)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1077 = extractvalue %dx.types.ResRet.f32 %1076, 2
  %1078 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 34)  ; CBufferLoadLegacy(handle,regIndex)
  %1079 = extractvalue %dx.types.CBufRet.f32 %1078, 1
  %1080 = fmul fast float %1072, %1067
  %1081 = fmul fast float %1080, %1077
  %1082 = call float @dx.op.unary.f32(i32 23, float %1081)  ; Log(value)
  %1083 = fmul fast float %1082, %1079
  %1084 = call float @dx.op.unary.f32(i32 21, float %1083)  ; Exp(value)
  %1085 = extractvalue %dx.types.CBufRet.f32 %1078, 2
  %1086 = fmul fast float %1047, %1047
  %1087 = fmul fast float %1086, %1084
  %1088 = fmul fast float %1087, %1085
  %1089 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 32)  ; CBufferLoadLegacy(handle,regIndex)
  %1090 = extractvalue %dx.types.CBufRet.f32 %1089, 3
  %1091 = fmul fast float %1090, %1088
  %1092 = bitcast float %1091 to i32
  %1093 = sitofp i32 %1092 to float
  %1094 = fptosi float %1093 to i32
  %1095 = bitcast i32 %1094 to float
  %1096 = fsub fast float 1.000000e+00, %1088
  %1097 = bitcast float %1096 to i32
  %1098 = sitofp i32 %1097 to float
  %1099 = fptosi float %1098 to i32
  %1100 = bitcast i32 %1099 to float
  %1101 = fadd fast float %1095, %1100
  %1102 = bitcast float %1101 to i32
  %1103 = sub nsw i32 2129859010, %1102
  %1104 = bitcast i32 %1103 to float
  %1105 = fmul fast float %1104, %1095
  %1106 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %1107 = extractvalue %dx.types.CBufRet.f32 %1106, 2
  %1108 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 37)  ; CBufferLoadLegacy(handle,regIndex)
  %1109 = extractvalue %dx.types.CBufRet.f32 %1108, 0
  %1110 = fmul fast float %1105, %1109
  %1111 = fadd fast float %1110, 1.000000e+00
  %1112 = bitcast float %1111 to i32
  %1113 = sub nsw i32 2129859010, %1112
  %1114 = bitcast i32 %1113 to float
  %1115 = fmul fast float %1105, %1107
  %1116 = fmul fast float %1115, %1114
  br label %1117

; <label>:1117                                    ; preds = %1049, %960
  %1118 = phi float [ %1116, %1049 ], [ %1047, %960 ]
  %1119 = fmul fast float %1118, %762
  %1120 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 36)  ; CBufferLoadLegacy(handle,regIndex)
  %1121 = extractvalue %dx.types.CBufRet.f32 %1120, 0
  %1122 = extractvalue %dx.types.CBufRet.f32 %1120, 1
  %1123 = extractvalue %dx.types.CBufRet.f32 %1120, 2
  %1124 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 37)  ; CBufferLoadLegacy(handle,regIndex)
  %1125 = extractvalue %dx.types.CBufRet.f32 %1124, 1
  %1126 = fmul fast float %1121, %1119
  %1127 = fmul fast float %1122, %1119
  %1128 = fmul fast float %1123, %1119
  %1129 = fadd fast float %1126, %937
  %1130 = fadd fast float %1127, %938
  %1131 = fadd fast float %1128, %939
  %1132 = fmul fast float %1125, %1119
  %1133 = fadd fast float %1132, %936
  %1134 = fadd fast float %1119, %935
  br label %1135

; <label>:1135                                    ; preds = %1117, %934
  %1136 = phi float [ %1134, %1117 ], [ %935, %934 ]
  %1137 = phi float [ %1133, %1117 ], [ %936, %934 ]
  %1138 = phi float [ %1129, %1117 ], [ %937, %934 ]
  %1139 = phi float [ %1130, %1117 ], [ %938, %934 ]
  %1140 = phi float [ %1131, %1117 ], [ %939, %934 ]
  %1141 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %1142 = extractvalue %dx.types.CBufRet.f32 %1141, 1
  %1143 = fcmp fast ogt float %1136, %1142
  br i1 %1143, label %1144, label %1150, !dx.controlflow.hints !64

; <label>:1144                                    ; preds = %1135
  %1145 = fdiv fast float 1.000000e+00, %1136
  %1146 = fmul fast float %1145, %1138
  %1147 = fmul fast float %1145, %1139
  %1148 = fmul fast float %1145, %1140
  %1149 = fmul fast float %1145, %1137
  br label %1150

; <label>:1150                                    ; preds = %1144, %1135
  %1151 = phi float [ %1149, %1144 ], [ %1137, %1135 ]
  %1152 = phi float [ %1146, %1144 ], [ %1138, %1135 ]
  %1153 = phi float [ %1147, %1144 ], [ %1139, %1135 ]
  %1154 = phi float [ %1148, %1144 ], [ %1140, %1135 ]
  br i1 %1143, label %1157, label %1155, !dx.controlflow.hints !65

; <label>:1155                                    ; preds = %1150
  %1156 = fadd fast float %762, %492
  br label %1732

; <label>:1157                                    ; preds = %1150
  %1158 = fmul fast float %1136, 0xBFF7154760000000
  %1159 = call float @dx.op.unary.f32(i32 21, float %1158)  ; Exp(value)
  %1160 = call float @dx.op.unary.f32(i32 7, float %1159)  ; Saturate(value)
  %1161 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %1162 = extractvalue %dx.types.CBufRet.f32 %1161, 3
  %1163 = fcmp fast une float %1162, 0.000000e+00
  %1164 = extractvalue %dx.types.CBufRet.f32 %1161, 0
  %1165 = extractvalue %dx.types.CBufRet.f32 %1161, 1
  %1166 = extractvalue %dx.types.CBufRet.f32 %1161, 2
  br i1 %1163, label %1167, label %1189, !dx.controlflow.hints !66

; <label>:1167                                    ; preds = %1157
  %1168 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %1169 = extractvalue %dx.types.CBufRet.f32 %1168, 0
  %1170 = extractvalue %dx.types.CBufRet.f32 %1168, 1
  %1171 = extractvalue %dx.types.CBufRet.f32 %1168, 2
  %1172 = call float @dx.op.dot3.f32(i32 55, float %1164, float %1165, float %1166, float %282, float %283, float %284)  ; Dot3(ax,ay,az,bx,by,bz)
  %1173 = fcmp fast ogt float %1151, 0.000000e+00
  %1174 = select i1 %1173, float 1.000000e+00, float -1.000000e+00
  %1175 = fmul fast float %1174, 5.000000e-01
  %1176 = fmul fast float %1175, %1172
  %1177 = fmul fast float %1174, %1151
  %1178 = fadd fast float %1176, 4.921875e-01
  %1179 = fadd fast float %1177, -3.125000e-02
  %1180 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %18, float %1178, float 0x3FB25F3060000000, float %1179, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1181 = extractvalue %dx.types.ResRet.f32 %1180, 0
  %1182 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 398)  ; CBufferLoadLegacy(handle,regIndex)
  %1183 = extractvalue %dx.types.CBufRet.f32 %1182, 0
  %1184 = fmul fast float %1181, 0x400921FB60000000
  %1185 = fmul fast float %1184, %1183
  %1186 = fmul fast float %1185, %1169
  %1187 = fmul fast float %1185, %1170
  %1188 = fmul fast float %1185, %1171
  br label %1189

; <label>:1189                                    ; preds = %1167, %1157
  %1190 = phi float [ %1186, %1167 ], [ 0.000000e+00, %1157 ]
  %1191 = phi float [ %1187, %1167 ], [ 0.000000e+00, %1157 ]
  %1192 = phi float [ %1188, %1167 ], [ 0.000000e+00, %1157 ]
  %1193 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 427)  ; CBufferLoadLegacy(handle,regIndex)
  %1194 = extractvalue %dx.types.CBufRet.f32 %1193, 0
  %1195 = fmul fast float %1194, %1164
  %1196 = fmul fast float %1194, %1165
  %1197 = fmul fast float %1194, %1166
  %1198 = fadd fast float %1195, %489
  %1199 = fsub fast float -0.000000e+00, %1198
  %1200 = fadd fast float %1196, %490
  %1201 = fsub fast float -0.000000e+00, %1200
  %1202 = fadd fast float %1197, %491
  br i1 %504, label %1277, label %1203, !dx.controlflow.hints !44

; <label>:1203                                    ; preds = %1189
  %1204 = extractvalue %dx.types.CBufRet.f32 %1193, 1
  %1205 = fcmp fast ogt float %1204, %1194
  br i1 %1205, label %1206, label %1208, !dx.controlflow.hints !45

; <label>:1206                                    ; preds = %1203
  %1207 = fsub fast float %1204, %1194
  br label %1268

; <label>:1208                                    ; preds = %1203
  %1209 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %1210 = extractvalue %dx.types.CBufRet.i32 %1209, 3
  %1211 = icmp eq i32 %1210, 0
  %1212 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 401)  ; CBufferLoadLegacy(handle,regIndex)
  %1213 = extractvalue %dx.types.CBufRet.f32 %1212, 2
  %1214 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %1215 = extractvalue %dx.types.CBufRet.f32 %1214, 2
  %1216 = fsub fast float %1213, %1202
  %1217 = fadd fast float %1216, %1215
  %1218 = fsub fast float 0xC7EFFFFFE0000000, %1202
  br i1 %1211, label %1228, label %1219, !dx.controlflow.hints !35

; <label>:1219                                    ; preds = %1208
  %1220 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %1199, float %1201, float %1217)  ; Dot3(ax,ay,az,bx,by,bz)
  %1221 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %1164, float %1165, float %1166)  ; Dot3(ax,ay,az,bx,by,bz)
  %1222 = fdiv fast float 1.000000e+00, %1221
  %1223 = fmul fast float %1222, %1220
  %1224 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %1199, float %1201, float %1218)  ; Dot3(ax,ay,az,bx,by,bz)
  %1225 = fmul fast float %1222, %1224
  %1226 = call float @dx.op.binary.f32(i32 36, float %1223, float %1225)  ; FMin(a,b)
  %1227 = call float @dx.op.binary.f32(i32 35, float %1223, float %1225)  ; FMax(a,b)
  br label %1261

; <label>:1228                                    ; preds = %1208
  %1229 = extractvalue %dx.types.CBufRet.f32 %1212, 0
  %1230 = extractvalue %dx.types.CBufRet.f32 %1212, 1
  %1231 = extractvalue %dx.types.CBufRet.f32 %1214, 0
  %1232 = extractvalue %dx.types.CBufRet.f32 %1214, 1
  %1233 = fdiv fast float 1.000000e+00, %1164
  %1234 = fdiv fast float 1.000000e+00, %1165
  %1235 = fdiv fast float 1.000000e+00, %1166
  %1236 = fsub fast float %1229, %1198
  %1237 = fmul fast float %1233, %1236
  %1238 = fadd fast float %1236, %1231
  %1239 = fmul fast float %1238, %1233
  %1240 = call float @dx.op.binary.f32(i32 36, float %1237, float %1239)  ; FMin(a,b)
  %1241 = call float @dx.op.binary.f32(i32 35, float %1237, float %1239)  ; FMax(a,b)
  %1242 = fsub fast float %1230, %1200
  %1243 = fmul fast float %1234, %1242
  %1244 = fadd fast float %1242, %1232
  %1245 = fmul fast float %1244, %1234
  %1246 = call float @dx.op.binary.f32(i32 36, float %1243, float %1245)  ; FMin(a,b)
  %1247 = call float @dx.op.binary.f32(i32 35, float %1240, float %1246)  ; FMax(a,b)
  %1248 = call float @dx.op.binary.f32(i32 35, float %1243, float %1245)  ; FMax(a,b)
  %1249 = call float @dx.op.binary.f32(i32 36, float %1241, float %1248)  ; FMin(a,b)
  %1250 = fmul fast float %1235, %1218
  %1251 = fmul fast float %1235, %1217
  %1252 = call float @dx.op.binary.f32(i32 36, float %1250, float %1251)  ; FMin(a,b)
  %1253 = call float @dx.op.binary.f32(i32 35, float %1247, float %1252)  ; FMax(a,b)
  %1254 = call float @dx.op.binary.f32(i32 35, float %1250, float %1251)  ; FMax(a,b)
  %1255 = call float @dx.op.binary.f32(i32 36, float %1249, float %1254)  ; FMin(a,b)
  %1256 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1253)  ; FMax(a,b)
  %1257 = fcmp fast ult float %1255, %1256
  br i1 %1257, label %1261, label %1258, !dx.controlflow.hints !36

; <label>:1258                                    ; preds = %1228
  %1259 = call float @dx.op.binary.f32(i32 36, float %1253, float %1255)  ; FMin(a,b)
  %1260 = call float @dx.op.binary.f32(i32 35, float %1253, float %1255)  ; FMax(a,b)
  br label %1261

; <label>:1261                                    ; preds = %1258, %1228, %1219
  %1262 = phi float [ %1226, %1219 ], [ %1259, %1258 ], [ 0.000000e+00, %1228 ]
  %1263 = phi float [ %1227, %1219 ], [ %1260, %1258 ], [ 0.000000e+00, %1228 ]
  %1264 = fcmp fast ogt float %1262, 0.000000e+00
  br i1 %1264, label %1268, label %1265, !dx.controlflow.hints !46

; <label>:1265                                    ; preds = %1261
  %1266 = fcmp fast ugt float %1263, 0.000000e+00
  br i1 %1266, label %1267, label %1268, !dx.controlflow.hints !47

; <label>:1267                                    ; preds = %1265
  br label %1268

; <label>:1268                                    ; preds = %1267, %1265, %1261, %1206
  %1269 = phi float [ %1207, %1206 ], [ 0.000000e+00, %1267 ], [ 0x47EFFFFFE0000000, %1265 ], [ %1262, %1261 ]
  %1270 = phi i32 [ %371, %1206 ], [ %371, %1267 ], [ 0, %1265 ], [ %371, %1261 ]
  %1271 = icmp ne i32 %1270, 0
  %1272 = zext i1 %1271 to i32
  %1273 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %1274 = extractvalue %dx.types.CBufRet.f32 %1273, 2
  %1275 = call float @dx.op.binary.f32(i32 35, float %1269, float %1274)  ; FMax(a,b)
  %1276 = call float @dx.op.binary.f32(i32 36, float 0x47EFFFFFE0000000, float %1275)  ; FMin(a,b)
  br label %1277

; <label>:1277                                    ; preds = %1268, %1189
  %1278 = phi float [ %1276, %1268 ], [ 0x47EFFFFFE0000000, %1189 ]
  %1279 = phi i32 [ %1272, %1268 ], [ 0, %1189 ]
  br i1 %677, label %1292, label %1280, !dx.controlflow.hints !53

; <label>:1280                                    ; preds = %1277
  %1281 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %1282 = extractvalue %dx.types.CBufRet.f32 %1281, 3
  %1283 = extractvalue %dx.types.CBufRet.f32 %1281, 2
  %1284 = fmul fast float %1282, %1194
  %1285 = fdiv fast float %1284, %1194
  %1286 = fadd fast float %1285, 1.000000e+00
  %1287 = call float @dx.op.unary.f32(i32 23, float %1286)  ; Log(value)
  %1288 = call float @dx.op.binary.f32(i32 36, float 1.000000e+00, float %1287)  ; FMin(a,b)
  %1289 = fmul fast float %1283, %1194
  %1290 = fmul fast float %1289, %1288
  %1291 = call float @dx.op.binary.f32(i32 36, float 0x47EFFFFFE0000000, float %1290)  ; FMin(a,b)
  br label %1292

; <label>:1292                                    ; preds = %1280, %1277
  %1293 = phi float [ %1291, %1280 ], [ 0x47EFFFFFE0000000, %1277 ]
  br i1 %692, label %1350, label %1294, !dx.controlflow.hints !54

; <label>:1294                                    ; preds = %1292
  %1295 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 35)  ; CBufferLoadLegacy(handle,regIndex)
  %1296 = extractvalue %dx.types.CBufRet.f32 %1295, 0
  %1297 = extractvalue %dx.types.CBufRet.f32 %1295, 1
  %1298 = extractvalue %dx.types.CBufRet.f32 %1295, 2
  %1299 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 31)  ; CBufferLoadLegacy(handle,regIndex)
  %1300 = extractvalue %dx.types.CBufRet.f32 %1299, 0
  %1301 = extractvalue %dx.types.CBufRet.f32 %1299, 1
  %1302 = extractvalue %dx.types.CBufRet.f32 %1299, 2
  %1303 = fsub fast float %1198, %1300
  %1304 = fsub fast float %1200, %1301
  %1305 = fsub fast float %1202, %1302
  %1306 = fmul fast float %1303, %1296
  %1307 = fmul fast float %1304, %1297
  %1308 = fmul fast float %1305, %1298
  %1309 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %1310 = extractvalue %dx.types.CBufRet.i32 %1309, 3
  %1311 = icmp eq i32 %1310, 0
  br i1 %1311, label %1315, label %1312, !dx.controlflow.hints !55

; <label>:1312                                    ; preds = %1294
  %1313 = call float @dx.op.unary.f32(i32 22, float %1306)  ; Frc(value)
  %1314 = call float @dx.op.unary.f32(i32 22, float %1307)  ; Frc(value)
  br label %1315

; <label>:1315                                    ; preds = %1312, %1294
  %1316 = phi float [ %1313, %1312 ], [ %1306, %1294 ]
  %1317 = phi float [ %1314, %1312 ], [ %1307, %1294 ]
  %1318 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %16, float %1316, float %1317, float %1308, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1319 = extractvalue %dx.types.ResRet.f32 %1318, 0
  %1320 = fmul fast float %1319, 2.000000e+00
  %1321 = fadd fast float %1320, -1.000000e+00
  %1322 = extractvalue %dx.types.CBufRet.f32 %1295, 3
  %1323 = fmul fast float %1321, %1322
  %1324 = fcmp fast olt float %1323, 0.000000e+00
  %1325 = fcmp fast oge float %1308, 0.000000e+00
  %1326 = fcmp fast ole float %1308, 1.000000e+00
  br i1 %1311, label %1329, label %1327, !dx.controlflow.hints !56

; <label>:1327                                    ; preds = %1315
  %1328 = and i1 %1325, %1326
  br label %1339

; <label>:1329                                    ; preds = %1315
  %1330 = fcmp fast oge float %1306, 0.000000e+00
  %1331 = fcmp fast oge float %1307, 0.000000e+00
  %1332 = and i1 %1330, %1331
  %1333 = and i1 %1325, %1332
  %1334 = fcmp fast ole float %1306, 1.000000e+00
  %1335 = fcmp fast ole float %1307, 1.000000e+00
  %1336 = and i1 %1334, %1335
  %1337 = and i1 %1326, %1336
  %1338 = and i1 %1333, %1337
  br label %1339

; <label>:1339                                    ; preds = %1329, %1327
  %1340 = phi i1 [ %1328, %1327 ], [ %1338, %1329 ]
  %1341 = and i1 %1324, %1340
  %1342 = call float @dx.op.unary.f32(i32 6, float %1323)  ; FAbs(value)
  %1343 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %1344 = extractvalue %dx.types.CBufRet.f32 %1343, 1
  %1345 = extractvalue %dx.types.CBufRet.f32 %1343, 0
  %1346 = call float @dx.op.binary.f32(i32 35, float %1342, float %1345)  ; FMax(a,b)
  %1347 = select i1 %1341, float %1344, float %1346
  %1348 = zext i1 %1341 to i32
  %1349 = call float @dx.op.binary.f32(i32 36, float %1278, float %1347)  ; FMin(a,b)
  br label %1350

; <label>:1350                                    ; preds = %1339, %1292
  %1351 = phi float [ %1349, %1339 ], [ %1278, %1292 ]
  %1352 = phi i32 [ %1348, %1339 ], [ 0, %1292 ]
  %1353 = icmp eq i32 %1279, 0
  br i1 %1353, label %1427, label %1354, !dx.controlflow.hints !57

; <label>:1354                                    ; preds = %1350
  %1355 = fmul fast float %752, %1194
  %1356 = call float @dx.op.unary.f32(i32 23, float %1355)  ; Log(value)
  %1357 = fmul fast float %1356, 0x3FE62E4300000000
  %1358 = call float @dx.op.binary.f32(i32 35, float %1357, float 1.000000e+00)  ; FMax(a,b)
  %1359 = fmul fast float %1358, %1293
  %1360 = call float @dx.op.binary.f32(i32 36, float %1359, float %1351)  ; FMin(a,b)
  %1361 = call float @dx.op.binary.f32(i32 35, float %1360, float 0.000000e+00)  ; FMax(a,b)
  %1362 = fcmp fast ogt float %1361, 0x3F1A36E2E0000000
  %1363 = fadd fast float %1195, %1198
  %1364 = fadd fast float %1196, %1200
  %1365 = select i1 %1362, float %1363, float %1198
  %1366 = select i1 %1362, float %1364, float %1200
  %1367 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 401)  ; CBufferLoadLegacy(handle,regIndex)
  %1368 = extractvalue %dx.types.CBufRet.f32 %1367, 0
  %1369 = extractvalue %dx.types.CBufRet.f32 %1367, 1
  %1370 = fsub fast float %1365, %1368
  %1371 = fsub fast float %1366, %1369
  %1372 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 403)  ; CBufferLoadLegacy(handle,regIndex)
  %1373 = extractvalue %dx.types.CBufRet.f32 %1372, 0
  %1374 = extractvalue %dx.types.CBufRet.f32 %1372, 1
  %1375 = fmul fast float %1370, %1373
  %1376 = fmul fast float %1371, %1374
  %1377 = fsub fast float 1.000000e+00, %1376
  %1378 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %1379 = extractvalue %dx.types.CBufRet.i32 %1378, 3
  %1380 = icmp eq i32 %1379, 0
  br i1 %1380, label %1387, label %1381, !dx.controlflow.hints !48

; <label>:1381                                    ; preds = %1354
  %1382 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %17, float %1375, float %1377, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1383 = extractvalue %dx.types.ResRet.f32 %1382, 0
  %1384 = extractvalue %dx.types.ResRet.f32 %1382, 1
  %1385 = extractvalue %dx.types.ResRet.f32 %1382, 2
  %1386 = extractvalue %dx.types.ResRet.f32 %1382, 3
  br label %1393

; <label>:1387                                    ; preds = %1354
  %1388 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %18, float %1375, float %1377, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1389 = extractvalue %dx.types.ResRet.f32 %1388, 0
  %1390 = extractvalue %dx.types.ResRet.f32 %1388, 1
  %1391 = extractvalue %dx.types.ResRet.f32 %1388, 2
  %1392 = extractvalue %dx.types.ResRet.f32 %1388, 3
  br label %1393

; <label>:1393                                    ; preds = %1387, %1381
  %1394 = phi float [ %1383, %1381 ], [ %1389, %1387 ]
  %1395 = phi float [ %1384, %1381 ], [ %1390, %1387 ]
  %1396 = phi float [ %1385, %1381 ], [ %1391, %1387 ]
  %1397 = phi float [ %1386, %1381 ], [ %1392, %1387 ]
  %1398 = extractvalue %dx.types.CBufRet.f32 %1372, 3
  %1399 = fmul fast float %1398, %1395
  %1400 = fmul fast float %1399, %1394
  %1401 = fsub fast float %1399, %1400
  %1402 = fcmp fast ole float %1401, 0.000000e+00
  %1403 = extractvalue %dx.types.CBufRet.f32 %1367, 2
  %1404 = fadd fast float %1400, %1403
  %1405 = fmul fast float %1398, %1396
  %1406 = fadd fast float %1405, %1403
  %1407 = fdiv fast float 1.000000e+00, %1401
  %1408 = select i1 %1402, float 1.000000e+06, float %1407
  %1409 = fsub fast float %1202, %1404
  %1410 = fmul fast float %1408, %1409
  %1411 = call float @dx.op.unary.f32(i32 7, float %1410)  ; Saturate(value)
  %1412 = extractvalue %dx.types.CBufRet.f32 %1372, 2
  %1413 = fmul fast float %1412, %1411
  %1414 = fsub fast float %1412, %1413
  %1415 = fcmp fast olt float %1202, %1406
  %1416 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 406)  ; CBufferLoadLegacy(handle,regIndex)
  %1417 = extractvalue %dx.types.CBufRet.f32 %1416, 3
  %1418 = fmul fast float %1417, 3.000000e+00
  %1419 = select i1 %1415, float %1418, float 3.000000e+00
  %1420 = fmul fast float %1414, %1419
  %1421 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 418)  ; CBufferLoadLegacy(handle,regIndex)
  %1422 = extractvalue %dx.types.CBufRet.f32 %1421, 2
  %1423 = fmul fast float %1194, 0x3FD5555560000000
  %1424 = fmul fast float %1423, %1397
  %1425 = fmul fast float %1424, %1422
  %1426 = fmul fast float %1425, %1420
  br label %1427

; <label>:1427                                    ; preds = %1393, %1350
  %1428 = phi float [ %1426, %1393 ], [ 0.000000e+00, %1350 ]
  br i1 %677, label %1477, label %1429, !dx.controlflow.hints !59

; <label>:1429                                    ; preds = %1427
  %1430 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 399)  ; CBufferLoadLegacy(handle,regIndex)
  %1431 = extractvalue %dx.types.CBufRet.f32 %1430, 0
  %1432 = fsub fast float %1431, %1202
  %1433 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %1199, float %1201, float %1432)  ; Dot3(ax,ay,az,bx,by,bz)
  %1434 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %1164, float %1165, float %1166)  ; Dot3(ax,ay,az,bx,by,bz)
  %1435 = fdiv fast float 1.000000e+00, %1434
  %1436 = fmul fast float %1435, %1433
  %1437 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1436)  ; FMax(a,b)
  %1438 = fcmp fast olt float %1166, 0.000000e+00
  %1439 = call float @dx.op.binary.f32(i32 36, float %1194, float %1437)  ; FMin(a,b)
  br i1 %1438, label %1441, label %1440, !dx.controlflow.hints !60

; <label>:1440                                    ; preds = %1429
  br label %1441

; <label>:1441                                    ; preds = %1440, %1429
  %1442 = phi float [ 0.000000e+00, %1440 ], [ %1439, %1429 ]
  %1443 = phi float [ %1439, %1440 ], [ %1194, %1429 ]
  %1444 = phi float [ %1439, %1440 ], [ 0.000000e+00, %1429 ]
  %1445 = phi float [ %1194, %1440 ], [ %1439, %1429 ]
  %1446 = fsub fast float %1443, %1442
  %1447 = extractvalue %dx.types.CBufRet.f32 %1430, 1
  %1448 = call float @dx.op.binary.f32(i32 36, float 0xBF0FFB4800000000, float %1447)  ; FMin(a,b)
  %1449 = fsub fast float %1202, %1431
  %1450 = fmul fast float %1448, 0x3FF7154760000000
  %1451 = fmul fast float %1450, %1449
  %1452 = call float @dx.op.unary.f32(i32 21, float %1451)  ; Exp(value)
  %1453 = fmul fast float %1166, 0x3FF7154760000000
  %1454 = fmul fast float %1453, %1445
  %1455 = fmul fast float %1454, %1448
  %1456 = call float @dx.op.unary.f32(i32 21, float %1455)  ; Exp(value)
  %1457 = fmul fast float %1453, %1444
  %1458 = fmul fast float %1457, %1448
  %1459 = call float @dx.op.unary.f32(i32 21, float %1458)  ; Exp(value)
  %1460 = fsub fast float %1456, %1459
  %1461 = fmul fast float %1460, %1452
  %1462 = fmul fast float %1448, %1166
  %1463 = fdiv fast float %1461, %1462
  %1464 = fadd fast float %1446, %1463
  %1465 = call float @dx.op.unary.f32(i32 6, float %1166)  ; FAbs(value)
  %1466 = fcmp fast olt float %1465, 0x3F0FFB4800000000
  %1467 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1449)  ; FMax(a,b)
  %1468 = fmul fast float %1467, 0x3FF7154760000000
  %1469 = fmul fast float %1468, %1447
  %1470 = call float @dx.op.unary.f32(i32 21, float %1469)  ; Exp(value)
  %1471 = fmul fast float %1470, %1194
  %1472 = select i1 %1466, float %1471, float %1464
  %1473 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 396)  ; CBufferLoadLegacy(handle,regIndex)
  %1474 = extractvalue %dx.types.CBufRet.f32 %1473, 1
  %1475 = fmul fast float %1472, %1474
  %1476 = fadd fast float %1475, %1428
  br label %1477

; <label>:1477                                    ; preds = %1441, %1427
  %1478 = phi float [ %1476, %1441 ], [ %1428, %1427 ]
  %1479 = icmp eq i32 %1352, 0
  br i1 %1479, label %1660, label %1480, !dx.controlflow.hints !61

; <label>:1480                                    ; preds = %1477
  %1481 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %1482 = extractvalue %dx.types.CBufRet.f32 %1481, 3
  %1483 = fmul fast float %1482, %1194
  %1484 = fcmp fast oeq float %1483, 0.000000e+00
  br i1 %1484, label %1499, label %1485, !dx.controlflow.hints !62

; <label>:1485                                    ; preds = %1480
  %1486 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 41)  ; CBufferLoadLegacy(handle,regIndex)
  %1487 = extractvalue %dx.types.CBufRet.f32 %1486, 3
  %1488 = fmul fast float %1487, %1483
  %1489 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 33)  ; CBufferLoadLegacy(handle,regIndex)
  %1490 = extractvalue %dx.types.CBufRet.f32 %1489, 0
  %1491 = extractvalue %dx.types.CBufRet.f32 %1489, 1
  %1492 = extractvalue %dx.types.CBufRet.f32 %1489, 2
  %1493 = fmul fast float %1490, %1488
  %1494 = fmul fast float %1491, %1488
  %1495 = fmul fast float %1492, %1488
  %1496 = call float @dx.op.unary.f32(i32 23, float %1493)  ; Log(value)
  %1497 = call float @dx.op.unary.f32(i32 23, float %1494)  ; Log(value)
  %1498 = call float @dx.op.unary.f32(i32 23, float %1495)  ; Log(value)
  br label %1499

; <label>:1499                                    ; preds = %1485, %1480
  %1500 = phi float [ %1496, %1485 ], [ 0.000000e+00, %1480 ]
  %1501 = phi float [ %1497, %1485 ], [ 0.000000e+00, %1480 ]
  %1502 = phi float [ %1498, %1485 ], [ 0.000000e+00, %1480 ]
  %1503 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 35)  ; CBufferLoadLegacy(handle,regIndex)
  %1504 = extractvalue %dx.types.CBufRet.f32 %1503, 0
  %1505 = extractvalue %dx.types.CBufRet.f32 %1503, 1
  %1506 = extractvalue %dx.types.CBufRet.f32 %1503, 2
  %1507 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 31)  ; CBufferLoadLegacy(handle,regIndex)
  %1508 = extractvalue %dx.types.CBufRet.f32 %1507, 0
  %1509 = extractvalue %dx.types.CBufRet.f32 %1507, 1
  %1510 = extractvalue %dx.types.CBufRet.f32 %1507, 2
  %1511 = fsub fast float %1198, %1508
  %1512 = fsub fast float %1200, %1509
  %1513 = fsub fast float %1202, %1510
  %1514 = fmul fast float %1511, %1504
  %1515 = fmul fast float %1512, %1505
  %1516 = fmul fast float %1513, %1506
  %1517 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 29)  ; CBufferLoadLegacy(handle,regIndex)
  %1518 = extractvalue %dx.types.CBufRet.i32 %1517, 0
  %1519 = extractvalue %dx.types.CBufRet.i32 %1517, 1
  %1520 = uitofp i32 %1518 to float
  %1521 = uitofp i32 %1519 to float
  %1522 = fmul fast float %1514, %1520
  %1523 = fmul fast float %1515, %1521
  %1524 = fadd fast float %1522, 5.000000e-01
  %1525 = fadd fast float %1523, 5.000000e-01
  %1526 = call float @dx.op.unary.f32(i32 22, float %1524)  ; Frc(value)
  %1527 = call float @dx.op.unary.f32(i32 22, float %1525)  ; Frc(value)
  %1528 = call float @dx.op.unary.f32(i32 27, float %1524)  ; Round_ni(value)
  %1529 = call float @dx.op.unary.f32(i32 27, float %1525)  ; Round_ni(value)
  %1530 = fadd fast float %1528, 1.000000e+00
  %1531 = fadd fast float %1529, 1.000000e+00
  %1532 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 30)  ; CBufferLoadLegacy(handle,regIndex)
  %1533 = extractvalue %dx.types.CBufRet.f32 %1532, 0
  %1534 = extractvalue %dx.types.CBufRet.f32 %1532, 1
  %1535 = fmul fast float %1533, %1530
  %1536 = fmul fast float %1534, %1531
  %1537 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %10, %dx.types.Handle %17, float %1535, float %1536, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1538 = extractvalue %dx.types.ResRet.f32 %1537, 0
  %1539 = extractvalue %dx.types.ResRet.f32 %1537, 1
  %1540 = extractvalue %dx.types.ResRet.f32 %1537, 2
  %1541 = extractvalue %dx.types.ResRet.f32 %1537, 3
  %1542 = extractvalue %dx.types.CBufRet.i32 %1517, 2
  %1543 = extractvalue %dx.types.CBufRet.f32 %1532, 2
  %1544 = uitofp i32 %1542 to float
  %1545 = fadd fast float %1544, -1.000000e+00
  %1546 = fmul fast float %1545, %1538
  %1547 = fmul fast float %1545, %1539
  %1548 = fmul fast float %1545, %1540
  %1549 = fmul fast float %1545, %1541
  %1550 = fadd fast float %1546, 5.000000e-01
  %1551 = fadd fast float %1547, 5.000000e-01
  %1552 = fadd fast float %1548, 5.000000e-01
  %1553 = fadd fast float %1549, 5.000000e-01
  %1554 = fptoui float %1550 to i32
  %1555 = fptoui float %1551 to i32
  %1556 = fptoui float %1552 to i32
  %1557 = fptoui float %1553 to i32
  %1558 = uitofp i32 %1554 to float
  %1559 = uitofp i32 %1555 to float
  %1560 = uitofp i32 %1556 to float
  %1561 = uitofp i32 %1557 to float
  %1562 = fadd fast float %1558, 5.000000e-01
  %1563 = fadd fast float %1559, 5.000000e-01
  %1564 = fadd fast float %1560, 5.000000e-01
  %1565 = fadd fast float %1561, 5.000000e-01
  %1566 = fmul fast float %1562, %1543
  %1567 = fmul fast float %1563, %1543
  %1568 = fmul fast float %1564, %1543
  %1569 = fmul fast float %1565, %1543
  %1570 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %18, float %1566, float %1516, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1571 = extractvalue %dx.types.ResRet.f32 %1570, 0
  %1572 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %18, float %1567, float %1516, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1573 = extractvalue %dx.types.ResRet.f32 %1572, 0
  %1574 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %18, float %1568, float %1516, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1575 = extractvalue %dx.types.ResRet.f32 %1574, 0
  %1576 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %18, float %1569, float %1516, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1577 = extractvalue %dx.types.ResRet.f32 %1576, 0
  %1578 = fsub fast float %1575, %1577
  %1579 = fmul fast float %1578, %1526
  %1580 = fadd fast float %1579, %1577
  %1581 = fsub fast float %1573, %1571
  %1582 = fmul fast float %1581, %1526
  %1583 = fadd fast float %1582, %1571
  %1584 = fsub fast float %1583, %1580
  %1585 = fmul fast float %1584, %1527
  %1586 = fadd fast float %1585, %1580
  %1587 = fcmp fast ogt float %1586, 0.000000e+00
  br i1 %1587, label %1588, label %1656, !dx.controlflow.hints !63

; <label>:1588                                    ; preds = %1499
  %1589 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 33)  ; CBufferLoadLegacy(handle,regIndex)
  %1590 = extractvalue %dx.types.CBufRet.f32 %1589, 0
  %1591 = extractvalue %dx.types.CBufRet.f32 %1589, 1
  %1592 = extractvalue %dx.types.CBufRet.f32 %1589, 2
  %1593 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 41)  ; CBufferLoadLegacy(handle,regIndex)
  %1594 = extractvalue %dx.types.CBufRet.f32 %1593, 0
  %1595 = extractvalue %dx.types.CBufRet.f32 %1593, 1
  %1596 = extractvalue %dx.types.CBufRet.f32 %1593, 2
  %1597 = fmul fast float %1512, %1504
  %1598 = fmul fast float %1513, %1504
  %1599 = fadd fast float %1514, %1594
  %1600 = fadd fast float %1597, %1595
  %1601 = fadd fast float %1598, %1596
  %1602 = fmul fast float %1599, %1590
  %1603 = fmul fast float %1600, %1590
  %1604 = fmul fast float %1601, %1590
  %1605 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %15, float %1602, float %1603, float %1604, float undef, i32 0, i32 0, i32 0, float %1500)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1606 = extractvalue %dx.types.ResRet.f32 %1605, 0
  %1607 = fmul fast float %1599, %1591
  %1608 = fmul fast float %1600, %1591
  %1609 = fmul fast float %1601, %1591
  %1610 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %15, float %1607, float %1608, float %1609, float undef, i32 0, i32 0, i32 0, float %1501)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1611 = extractvalue %dx.types.ResRet.f32 %1610, 1
  %1612 = fmul fast float %1599, %1592
  %1613 = fmul fast float %1600, %1592
  %1614 = fmul fast float %1601, %1592
  %1615 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %15, float %1612, float %1613, float %1614, float undef, i32 0, i32 0, i32 0, float %1502)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1616 = extractvalue %dx.types.ResRet.f32 %1615, 2
  %1617 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 34)  ; CBufferLoadLegacy(handle,regIndex)
  %1618 = extractvalue %dx.types.CBufRet.f32 %1617, 1
  %1619 = fmul fast float %1611, %1606
  %1620 = fmul fast float %1619, %1616
  %1621 = call float @dx.op.unary.f32(i32 23, float %1620)  ; Log(value)
  %1622 = fmul fast float %1621, %1618
  %1623 = call float @dx.op.unary.f32(i32 21, float %1622)  ; Exp(value)
  %1624 = extractvalue %dx.types.CBufRet.f32 %1617, 2
  %1625 = fmul fast float %1586, %1586
  %1626 = fmul fast float %1625, %1623
  %1627 = fmul fast float %1626, %1624
  %1628 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 32)  ; CBufferLoadLegacy(handle,regIndex)
  %1629 = extractvalue %dx.types.CBufRet.f32 %1628, 3
  %1630 = fmul fast float %1629, %1627
  %1631 = bitcast float %1630 to i32
  %1632 = sitofp i32 %1631 to float
  %1633 = fptosi float %1632 to i32
  %1634 = bitcast i32 %1633 to float
  %1635 = fsub fast float 1.000000e+00, %1627
  %1636 = bitcast float %1635 to i32
  %1637 = sitofp i32 %1636 to float
  %1638 = fptosi float %1637 to i32
  %1639 = bitcast i32 %1638 to float
  %1640 = fadd fast float %1634, %1639
  %1641 = bitcast float %1640 to i32
  %1642 = sub nsw i32 2129859010, %1641
  %1643 = bitcast i32 %1642 to float
  %1644 = fmul fast float %1643, %1634
  %1645 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %1646 = extractvalue %dx.types.CBufRet.f32 %1645, 2
  %1647 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 37)  ; CBufferLoadLegacy(handle,regIndex)
  %1648 = extractvalue %dx.types.CBufRet.f32 %1647, 0
  %1649 = fmul fast float %1644, %1648
  %1650 = fadd fast float %1649, 1.000000e+00
  %1651 = bitcast float %1650 to i32
  %1652 = sub nsw i32 2129859010, %1651
  %1653 = bitcast i32 %1652 to float
  %1654 = fmul fast float %1644, %1646
  %1655 = fmul fast float %1654, %1653
  br label %1656

; <label>:1656                                    ; preds = %1588, %1499
  %1657 = phi float [ %1655, %1588 ], [ %1586, %1499 ]
  %1658 = fmul fast float %1657, %1194
  %1659 = fadd fast float %1658, %1478
  br label %1660

; <label>:1660                                    ; preds = %1656, %1477
  %1661 = phi float [ %1659, %1656 ], [ %1478, %1477 ]
  %1662 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 36)  ; CBufferLoadLegacy(handle,regIndex)
  %1663 = extractvalue %dx.types.CBufRet.f32 %1662, 3
  %1664 = fmul fast float %1661, 0xBFF7154760000000
  %1665 = fmul fast float %1664, %1663
  %1666 = call float @dx.op.unary.f32(i32 21, float %1665)  ; Exp(value)
  %1667 = call float @dx.op.unary.f32(i32 7, float %1666)  ; Saturate(value)
  %1668 = fmul fast float %1667, %1190
  %1669 = fmul fast float %1667, %1191
  %1670 = fmul fast float %1667, %1192
  %1671 = fadd fast float %1668, %206
  %1672 = fadd fast float %1669, %207
  %1673 = fadd fast float %1670, %208
  %1674 = fsub fast float 1.000000e+00, %1160
  %1675 = fmul fast float %1152, %485
  %1676 = fmul fast float %1675, %1674
  %1677 = fmul fast float %1676, %1671
  %1678 = fmul fast float %1153, %485
  %1679 = fmul fast float %1678, %1674
  %1680 = fmul fast float %1679, %1672
  %1681 = fmul fast float %1154, %485
  %1682 = fmul fast float %1681, %1674
  %1683 = fmul fast float %1682, %1673
  %1684 = fadd fast float %1677, %486
  %1685 = fadd fast float %1680, %487
  %1686 = fadd fast float %1683, %488
  %1687 = fdiv fast float %1136, %762
  %1688 = fadd fast float %762, %492
  %1689 = fmul fast float %492, %492
  %1690 = fmul fast float %1688, %1688
  %1691 = fsub fast float %1689, %1690
  %1692 = fmul fast float %1691, -5.000000e-01
  %1693 = fmul fast float %1692, %1687
  %1694 = fadd fast float %1693, %484
  %1695 = fadd fast float %1136, %494
  %1696 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %1697 = extractvalue %dx.types.CBufRet.i32 %1696, 0
  %1698 = icmp eq i32 %1697, 0
  br i1 %1698, label %1725, label %1699, !dx.controlflow.hints !67

; <label>:1699                                    ; preds = %1660
  %1700 = icmp ne i32 %499, 0
  %1701 = zext i1 %1700 to i32
  %1702 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %1703 = extractvalue %dx.types.CBufRet.f32 %1702, 2
  %1704 = extractvalue %dx.types.CBufRet.f32 %1702, 0
  %1705 = fsub fast float %1688, %1704
  %1706 = fmul fast float %1705, %1703
  %1707 = call float @dx.op.unary.f32(i32 7, float %1706)  ; Saturate(value)
  %1708 = fadd fast float %1707, -5.000000e-01
  %1709 = fmul fast float %1708, 2.000000e+00
  %1710 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %1711 = extractvalue %dx.types.CBufRet.f32 %1710, 2
  %1712 = fcmp fast olt float %1709, %1711
  br i1 %1712, label %1713, label %1725, !dx.controlflow.hints !68

; <label>:1713                                    ; preds = %1699
  %1714 = fmul fast float %1709, %1709
  %1715 = fmul fast float %1674, %485
  %1716 = fmul fast float %1709, %1715
  %1717 = fmul fast float %1714, %1715
  %1718 = fmul fast float %1716, %1714
  %1719 = fmul fast float %1714, %1714
  %1720 = fmul fast float %1719, %1715
  %1721 = fadd fast float %1716, %495
  %1722 = fadd fast float %1717, %496
  %1723 = fadd fast float %1718, %497
  %1724 = fadd fast float %1720, %498
  br label %1725

; <label>:1725                                    ; preds = %1713, %1699, %1660
  %1726 = phi float [ %495, %1660 ], [ %1721, %1713 ], [ %495, %1699 ]
  %1727 = phi float [ %496, %1660 ], [ %1722, %1713 ], [ %496, %1699 ]
  %1728 = phi float [ %497, %1660 ], [ %1723, %1713 ], [ %497, %1699 ]
  %1729 = phi float [ %498, %1660 ], [ %1724, %1713 ], [ %498, %1699 ]
  %1730 = phi i32 [ %499, %1660 ], [ 1, %1713 ], [ %1701, %1699 ]
  %1731 = fmul fast float %1160, %485
  br label %1732

; <label>:1732                                    ; preds = %1725, %1155
  %1733 = phi float [ %1156, %1155 ], [ %1688, %1725 ]
  %1734 = phi float [ %484, %1155 ], [ %1694, %1725 ]
  %1735 = phi float [ %485, %1155 ], [ %1731, %1725 ]
  %1736 = phi float [ %486, %1155 ], [ %1684, %1725 ]
  %1737 = phi float [ %487, %1155 ], [ %1685, %1725 ]
  %1738 = phi float [ %488, %1155 ], [ %1686, %1725 ]
  %1739 = phi float [ %494, %1155 ], [ %1695, %1725 ]
  %1740 = phi float [ %495, %1155 ], [ %1726, %1725 ]
  %1741 = phi float [ %496, %1155 ], [ %1727, %1725 ]
  %1742 = phi float [ %497, %1155 ], [ %1728, %1725 ]
  %1743 = phi float [ %498, %1155 ], [ %1729, %1725 ]
  %1744 = phi i32 [ %499, %1155 ], [ %1730, %1725 ]
  %1745 = fmul fast float %762, %282
  %1746 = fmul fast float %762, %283
  %1747 = fmul fast float %762, %284
  %1748 = fadd fast float %1745, %489
  %1749 = fadd fast float %1746, %490
  %1750 = fadd fast float %1747, %491
  %1751 = fcmp fast olt float %1733, %461
  %1752 = extractvalue %dx.types.CBufRet.f32 %1141, 2
  %1753 = fcmp fast olt float %1752, %1735
  %1754 = and i1 %1751, %1753
  br i1 %1754, label %483, label %1755

; <label>:1755                                    ; preds = %1732
  br label %1756

; <label>:1756                                    ; preds = %1755, %457
  %1757 = phi float [ 0.000000e+00, %457 ], [ %1734, %1755 ]
  %1758 = phi float [ 1.000000e+00, %457 ], [ %1735, %1755 ]
  %1759 = phi float [ 0.000000e+00, %457 ], [ %1736, %1755 ]
  %1760 = phi float [ 0.000000e+00, %457 ], [ %1737, %1755 ]
  %1761 = phi float [ 0.000000e+00, %457 ], [ %1738, %1755 ]
  %1762 = phi float [ 0.000000e+00, %457 ], [ %1739, %1755 ]
  %1763 = phi float [ 0.000000e+00, %457 ], [ %1740, %1755 ]
  %1764 = phi float [ 0.000000e+00, %457 ], [ %1741, %1755 ]
  %1765 = phi float [ 0.000000e+00, %457 ], [ %1742, %1755 ]
  %1766 = phi float [ 0.000000e+00, %457 ], [ %1743, %1755 ]
  %1767 = phi i32 [ 0, %457 ], [ %1744, %1755 ]
  %1768 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %1769 = extractvalue %dx.types.CBufRet.i32 %1768, 0
  %1770 = icmp eq i32 %1769, 0
  br i1 %1770, label %1812, label %1771, !dx.controlflow.hints !69

; <label>:1771                                    ; preds = %1756
  %1772 = icmp eq i32 %1767, 0
  br i1 %1772, label %1811, label %1773, !dx.controlflow.hints !70

; <label>:1773                                    ; preds = %1771
  %1774 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %1775 = extractvalue %dx.types.CBufRet.i32 %1774, 2
  %1776 = icmp eq i32 %1775, 0
  br i1 %1776, label %1783, label %1777, !dx.controlflow.hints !71

; <label>:1777                                    ; preds = %1773
  %1778 = fsub fast float 1.000000e+00, %1758
  %1779 = fdiv fast float %1763, %1778
  %1780 = fdiv fast float %1764, %1778
  %1781 = fdiv fast float %1765, %1778
  %1782 = fdiv fast float %1766, %1778
  br label %1788

; <label>:1783                                    ; preds = %1773
  %1784 = fadd fast float %1763, %1758
  %1785 = fadd fast float %1764, %1758
  %1786 = fadd fast float %1765, %1758
  %1787 = fadd fast float %1766, %1758
  br label %1788

; <label>:1788                                    ; preds = %1783, %1777
  %1789 = phi float [ %1779, %1777 ], [ %1784, %1783 ]
  %1790 = phi float [ %1780, %1777 ], [ %1785, %1783 ]
  %1791 = phi float [ %1781, %1777 ], [ %1786, %1783 ]
  %1792 = phi float [ %1782, %1777 ], [ %1787, %1783 ]
  %1793 = call float @dx.op.binary.f32(i32 35, float %1789, float -1.000000e+00)  ; FMax(a,b)
  %1794 = call float @dx.op.binary.f32(i32 35, float %1790, float -1.000000e+00)  ; FMax(a,b)
  %1795 = call float @dx.op.binary.f32(i32 35, float %1791, float -1.000000e+00)  ; FMax(a,b)
  %1796 = call float @dx.op.binary.f32(i32 35, float %1792, float -1.000000e+00)  ; FMax(a,b)
  %1797 = call float @dx.op.binary.f32(i32 36, float %1793, float 1.000000e+00)  ; FMin(a,b)
  %1798 = call float @dx.op.binary.f32(i32 36, float %1794, float 1.000000e+00)  ; FMin(a,b)
  %1799 = call float @dx.op.binary.f32(i32 36, float %1795, float 1.000000e+00)  ; FMin(a,b)
  %1800 = call float @dx.op.binary.f32(i32 36, float %1796, float 1.000000e+00)  ; FMin(a,b)
  %1801 = fmul fast float %1797, 1.500000e+00
  %1802 = call float @dx.op.tertiary.f32(i32 46, float -2.000000e+00, float %1799, float %1801)  ; FMad(a,b,c)
  %1803 = call float @dx.op.tertiary.f32(i32 46, float 4.000000e+00, float %1798, float 0.000000e+00)  ; FMad(a,b,c)
  %1804 = call float @dx.op.tertiary.f32(i32 46, float -4.000000e+00, float %1800, float %1803)  ; FMad(a,b,c)
  %1805 = fmul fast float %1797, 0x3FEBB67AE0000000
  %1806 = call float @dx.op.tertiary.f32(i32 46, float 0xBFD8A23460000000, float %1799, float %1805)  ; FMad(a,b,c)
  %1807 = call float @dx.op.tertiary.f32(i32 46, float 5.000000e-01, float %1798, float 0.000000e+00)  ; FMad(a,b,c)
  %1808 = call float @dx.op.tertiary.f32(i32 46, float 5.000000e-01, float %1800, float %1807)  ; FMad(a,b,c)
  %1809 = fadd fast float %1802, 5.000000e-01
  %1810 = fadd fast float %1806, 5.000000e-01
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %21, i32 %22, i32 0, float %1809, float %1804, float %1810, float %1808, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %1812

; <label>:1811                                    ; preds = %1771
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %21, i32 %22, i32 0, float 0.000000e+00, float 0.000000e+00, float 0x3FEF6560C0000000, float 1.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %1812

; <label>:1812                                    ; preds = %1811, %1788, %1756
  %1813 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %1814 = extractvalue %dx.types.CBufRet.f32 %1813, 2
  %1815 = fsub fast float %1758, %1814
  %1816 = fdiv fast float %1815, %1814
  %1817 = call float @dx.op.unary.f32(i32 7, float %1816)  ; Saturate(value)
  %1818 = fmul fast float %1817, 2.000000e+00
  %1819 = fsub fast float 3.000000e+00, %1818
  %1820 = fmul fast float %1817, %1817
  %1821 = fmul fast float %1820, %1758
  %1822 = fmul fast float %1821, %1819
  %1823 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 419)  ; CBufferLoadLegacy(handle,regIndex)
  %1824 = extractvalue %dx.types.CBufRet.f32 %1823, 0
  %1825 = extractvalue %dx.types.CBufRet.f32 %1823, 1
  %1826 = extractvalue %dx.types.CBufRet.f32 %1823, 2
  %1827 = call float @dx.op.dot3.f32(i32 55, float %282, float %283, float %284, float %1824, float %1825, float %1826)  ; Dot3(ax,ay,az,bx,by,bz)
  %1828 = fmul fast float %1827, %1757
  %1829 = fcmp fast ogt float %1762, 0.000000e+00
  %1830 = fdiv fast float 1.000000e+00, %1762
  %1831 = fmul fast float %1828, %1830
  %1832 = select i1 %1829, float %1831, float %293
  %1833 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %1834 = extractvalue %dx.types.CBufRet.f32 %1833, 0
  %1835 = extractvalue %dx.types.CBufRet.f32 %1833, 1
  %1836 = extractvalue %dx.types.CBufRet.f32 %1833, 2
  %1837 = fmul fast float %1834, %246
  %1838 = fmul fast float %1835, %246
  %1839 = fmul fast float %1836, %246
  %1840 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %1841 = extractvalue %dx.types.CBufRet.f32 %1840, 0
  %1842 = extractvalue %dx.types.CBufRet.f32 %1840, 1
  %1843 = extractvalue %dx.types.CBufRet.f32 %1840, 2
  %1844 = fmul fast float %1841, %247
  %1845 = fmul fast float %1842, %247
  %1846 = fmul fast float %1843, %247
  %1847 = fadd fast float %1844, %1837
  %1848 = fadd fast float %1845, %1838
  %1849 = fadd fast float %1846, %1839
  %1850 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %1851 = extractvalue %dx.types.CBufRet.f32 %1850, 0
  %1852 = extractvalue %dx.types.CBufRet.f32 %1850, 1
  %1853 = extractvalue %dx.types.CBufRet.f32 %1850, 2
  %1854 = fadd fast float %1847, %1851
  %1855 = fadd fast float %1848, %1852
  %1856 = fadd fast float %1849, %1853
  %1857 = fmul fast float %1854, %1832
  %1858 = fmul fast float %1855, %1832
  %1859 = fmul fast float %1856, %1832
  %1860 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %1861 = extractvalue %dx.types.CBufRet.f32 %1860, 0
  %1862 = extractvalue %dx.types.CBufRet.f32 %1860, 1
  %1863 = extractvalue %dx.types.CBufRet.f32 %1860, 2
  %1864 = extractvalue %dx.types.CBufRet.f32 %1860, 3
  %1865 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %1866 = extractvalue %dx.types.CBufRet.f32 %1865, 0
  %1867 = extractvalue %dx.types.CBufRet.f32 %1865, 1
  %1868 = extractvalue %dx.types.CBufRet.f32 %1865, 2
  %1869 = extractvalue %dx.types.CBufRet.f32 %1865, 3
  %1870 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %1871 = extractvalue %dx.types.CBufRet.f32 %1870, 0
  %1872 = extractvalue %dx.types.CBufRet.f32 %1870, 1
  %1873 = extractvalue %dx.types.CBufRet.f32 %1870, 2
  %1874 = extractvalue %dx.types.CBufRet.f32 %1870, 3
  %1875 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %1876 = extractvalue %dx.types.CBufRet.f32 %1875, 0
  %1877 = extractvalue %dx.types.CBufRet.f32 %1875, 1
  %1878 = extractvalue %dx.types.CBufRet.f32 %1875, 2
  %1879 = extractvalue %dx.types.CBufRet.f32 %1875, 3
  %1880 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %1881 = extractvalue %dx.types.CBufRet.f32 %1880, 3
  %1882 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %1883 = extractvalue %dx.types.CBufRet.f32 %1882, 3
  %1884 = extractvalue %dx.types.CBufRet.f32 %1882, 0
  %1885 = extractvalue %dx.types.CBufRet.f32 %1882, 1
  %1886 = extractvalue %dx.types.CBufRet.f32 %1882, 2
  %1887 = fcmp fast olt float %1886, -5.000000e-01
  %1888 = call float @dx.op.dot3.f32(i32 55, float %1857, float %1858, float %1859, float %1857, float %1858, float %1859)  ; Dot3(ax,ay,az,bx,by,bz)
  %1889 = call float @dx.op.unary.f32(i32 25, float %1888)  ; Rsqrt(value)
  %1890 = fmul fast float %1889, %1888
  %1891 = fmul fast float %1889, %1857
  %1892 = fmul fast float %1889, %1858
  %1893 = fmul fast float %1889, %1859
  %1894 = fadd fast float %1890, %1864
  %1895 = call float @dx.op.dot3.f32(i32 55, float %1891, float %1892, float %1893, float %1861, float %1862, float %1863)  ; Dot3(ax,ay,az,bx,by,bz)
  %1896 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1897 = extractvalue %dx.types.CBufRet.i32 %1896, 1
  %1898 = and i32 %1897, 1
  %1899 = icmp ne i32 %1898, 0
  %1900 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %1901 = extractvalue %dx.types.CBufRet.f32 %1900, 2
  %1902 = fcmp fast ogt float %1901, 0.000000e+00
  %1903 = and i1 %1899, %1902
  br i1 %1903, label %1904, label %2310, !dx.controlflow.hints !72

; <label>:1904                                    ; preds = %1812
  %1905 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %1906 = extractvalue %dx.types.CBufRet.f32 %1905, 3
  %1907 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1908 = extractvalue %dx.types.CBufRet.f32 %1907, 2
  %1909 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1910 = extractvalue %dx.types.CBufRet.f32 %1909, 2
  %1911 = fsub fast float %1908, %1910
  %1912 = and i32 %1897, 2
  %1913 = extractvalue %dx.types.CBufRet.i32 %1896, 0
  %1914 = call i32 @dx.op.binary.i32(i32 40, i32 %1913, i32 3)  ; UMin(a,b)
  %1915 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %1916 = extractvalue %dx.types.CBufRet.f32 %1915, 0
  %1917 = extractvalue %dx.types.CBufRet.f32 %1915, 1
  %1918 = extractvalue %dx.types.CBufRet.f32 %1909, 0
  %1919 = extractvalue %dx.types.CBufRet.f32 %1909, 1
  %1920 = fsub fast float %1916, %1918
  %1921 = fsub fast float %1917, %1919
  %1922 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %1923 = extractvalue %dx.types.CBufRet.f32 %1922, 0
  %1924 = fcmp fast ogt float %1923, 0.000000e+00
  %1925 = fsub fast float -0.000000e+00, %1920
  %1926 = fsub fast float -0.000000e+00, %1921
  %1927 = call float @dx.op.dot2.f32(i32 54, float %1891, float %1892, float %1891, float %1892)  ; Dot2(ax,ay,bx,by)
  %1928 = call float @dx.op.dot2.f32(i32 54, float %1891, float %1892, float %1925, float %1926)  ; Dot2(ax,ay,bx,by)
  %1929 = fmul fast float %1928, 2.000000e+00
  %1930 = call float @dx.op.dot2.f32(i32 54, float %1925, float %1926, float %1925, float %1926)  ; Dot2(ax,ay,bx,by)
  %1931 = fmul fast float %1923, %1923
  %1932 = fsub fast float %1930, %1931
  %1933 = fmul fast float %1929, %1929
  %1934 = fmul fast float %1927, 4.000000e+00
  %1935 = fmul fast float %1934, %1932
  %1936 = fsub fast float %1933, %1935
  %1937 = fcmp fast ogt float %1936, 0.000000e+00
  br i1 %1937, label %1938, label %1953, !dx.controlflow.hints !73

; <label>:1938                                    ; preds = %1904
  %1939 = fcmp fast ogt float %1929, 0.000000e+00
  %1940 = call float @dx.op.unary.f32(i32 24, float %1936)  ; Sqrt(value)
  %1941 = fsub fast float -0.000000e+00, %1940
  %1942 = select i1 %1939, float %1940, float %1941
  %1943 = fadd fast float %1942, %1929
  %1944 = fmul float %1943, -5.000000e-01
  %1945 = fdiv fast float %1944, %1927
  %1946 = call float @dx.op.binary.f32(i32 35, float %1945, float 0.000000e+00)  ; FMax(a,b)
  %1947 = call float @dx.op.binary.f32(i32 36, float %1890, float %1946)  ; FMin(a,b)
  %1948 = fdiv fast float %1932, %1944
  %1949 = call float @dx.op.binary.f32(i32 35, float %1948, float 0.000000e+00)  ; FMax(a,b)
  %1950 = call float @dx.op.binary.f32(i32 36, float %1890, float %1949)  ; FMin(a,b)
  %1951 = call float @dx.op.binary.f32(i32 36, float %1947, float %1950)  ; FMin(a,b)
  %1952 = call float @dx.op.binary.f32(i32 35, float %1947, float %1950)  ; FMax(a,b)
  br label %1953

; <label>:1953                                    ; preds = %1938, %1904
  %1954 = phi float [ %1952, %1938 ], [ -1.000000e+00, %1904 ]
  %1955 = phi float [ %1951, %1938 ], [ -1.000000e+00, %1904 ]
  %1956 = phi i1 [ true, %1938 ], [ false, %1904 ]
  %1957 = and i1 %1924, %1956
  br i1 %1957, label %1958, label %1960, !dx.controlflow.hints !74

; <label>:1958                                    ; preds = %1953
  %1959 = fcmp fast oeq float %1955, %1954
  br i1 %1959, label %2263, label %1961, !dx.controlflow.hints !75

; <label>:1960                                    ; preds = %1953
  br i1 %1924, label %2263, label %1961, !dx.controlflow.hints !76

; <label>:1961                                    ; preds = %1960, %1958
  %1962 = phi float [ %1890, %1960 ], [ %1954, %1958 ]
  %1963 = phi float [ 0.000000e+00, %1960 ], [ %1955, %1958 ]
  %1964 = icmp ne i32 %1912, 0
  %1965 = fmul fast float %1962, %1893
  %1966 = fadd fast float %1965, %1906
  %1967 = fmul fast float %1966, %1962
  %1968 = select i1 %1964, float 0.000000e+00, float %1967
  %1969 = fcmp fast oeq float %1893, 0.000000e+00
  %1970 = fdiv fast float %1911, %1893
  %1971 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1970)  ; FMax(a,b)
  %1972 = select i1 %1969, float %1962, float %1971
  %1973 = call float @dx.op.binary.f32(i32 36, float %1962, float %1972)  ; FMin(a,b)
  %1974 = fcmp fast ogt float %1893, 0.000000e+00
  %1975 = fcmp fast olt float %1911, 0.000000e+00
  br i1 %1974, label %1976, label %2033, !dx.controlflow.hints !77

; <label>:1976                                    ; preds = %1961
  %1977 = icmp eq i32 %1912, 0
  br i1 %1975, label %1978, label %2022, !dx.controlflow.hints !78

; <label>:1978                                    ; preds = %1976
  %1979 = select i1 %1977, float %1962, float 0.000000e+00
  %1980 = fsub fast float -0.000000e+00, %1979
  %1981 = call float @dx.op.unary.f32(i32 6, float %1980)  ; FAbs(value)
  %1982 = fmul fast float %1979, %1893
  %1983 = fadd fast float %1982, %1906
  %1984 = fmul fast float %1981, %1983
  %1985 = fsub fast float %1968, %1984
  %1986 = fsub fast float %1962, %1981
  %1987 = select i1 %1977, float %1986, float 0.000000e+00
  %1988 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %1989 = extractvalue %dx.types.CBufRet.f32 %1988, 0
  %1990 = extractvalue %dx.types.CBufRet.f32 %1988, 1
  %1991 = extractvalue %dx.types.CBufRet.f32 %1988, 2
  %1992 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %1993 = extractvalue %dx.types.CBufRet.f32 %1992, 0
  %1994 = extractvalue %dx.types.CBufRet.f32 %1992, 1
  %1995 = extractvalue %dx.types.CBufRet.f32 %1992, 2
  %1996 = extractvalue %dx.types.CBufRet.f32 %1992, 3
  %1997 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %1998 = extractvalue %dx.types.CBufRet.f32 %1997, 3
  %1999 = call float @dx.op.binary.f32(i32 36, float %1985, float %1998)  ; FMin(a,b)
  %2000 = fmul fast float %1996, %1987
  %2001 = call float @dx.op.unary.f32(i32 7, float %2000)  ; Saturate(value)
  %2002 = fsub fast float %1993, %1989
  %2003 = fsub fast float %1994, %1990
  %2004 = fsub fast float %1995, %1991
  %2005 = fmul fast float %2001, %2002
  %2006 = fmul fast float %2001, %2003
  %2007 = fmul fast float %2001, %2004
  %2008 = fadd fast float %2005, %1989
  %2009 = fadd fast float %2006, %1990
  %2010 = fadd fast float %2007, %1991
  %2011 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %2012 = extractvalue %dx.types.CBufRet.f32 %2011, 0
  %2013 = extractvalue %dx.types.CBufRet.f32 %2011, 1
  %2014 = fadd fast float %2013, %2012
  %2015 = call float @dx.op.unary.f32(i32 7, float %2014)  ; Saturate(value)
  %2016 = extractvalue %dx.types.CBufRet.f32 %2011, 2
  %2017 = extractvalue %dx.types.CBufRet.f32 %2011, 3
  %2018 = fadd fast float %2017, %2016
  %2019 = call float @dx.op.unary.f32(i32 7, float %2018)  ; Saturate(value)
  %2020 = fmul fast float %2015, %1999
  %2021 = fmul fast float %2020, %2019
  br label %2263

; <label>:2022                                    ; preds = %1976
  br i1 %1977, label %2023, label %2044, !dx.controlflow.hints !79

; <label>:2023                                    ; preds = %2022
  %2024 = call float @dx.op.binary.f32(i32 36, float %1973, float %1963)  ; FMin(a,b)
  %2025 = fsub fast float %1973, %2024
  %2026 = fsub fast float %2025, %1962
  %2027 = call float @dx.op.unary.f32(i32 6, float %2026)  ; FAbs(value)
  %2028 = fadd fast float %2025, %1962
  %2029 = fmul fast float %2028, %1893
  %2030 = fadd fast float %2029, %1906
  %2031 = fmul fast float %2030, %2027
  %2032 = fsub fast float %1968, %2031
  br label %2044

; <label>:2033                                    ; preds = %1961
  br i1 %1975, label %2034, label %2044, !dx.controlflow.hints !80

; <label>:2034                                    ; preds = %2033
  %2035 = call float @dx.op.binary.f32(i32 35, float %1963, float %1973)  ; FMax(a,b)
  %2036 = icmp eq i32 %1912, 0
  %2037 = select i1 %2036, float %1973, float 0.000000e+00
  %2038 = fsub fast float -0.000000e+00, %2037
  %2039 = call float @dx.op.unary.f32(i32 6, float %2038)  ; FAbs(value)
  %2040 = fmul fast float %2037, %1893
  %2041 = fadd fast float %2040, %1906
  %2042 = fmul fast float %2039, %2041
  %2043 = fsub fast float %1968, %2042
  br label %2044

; <label>:2044                                    ; preds = %2034, %2033, %2023, %2022
  %2045 = phi float [ %1963, %2022 ], [ %1963, %2023 ], [ %2035, %2034 ], [ %1963, %2033 ]
  %2046 = phi float [ 0.000000e+00, %2022 ], [ %2027, %2023 ], [ %2039, %2034 ], [ 0.000000e+00, %2033 ]
  %2047 = phi float [ %1968, %2022 ], [ %2032, %2023 ], [ %2043, %2034 ], [ %1968, %2033 ]
  %2048 = phi float [ %1973, %2022 ], [ %1973, %2023 ], [ %1962, %2034 ], [ %1962, %2033 ]
  %2049 = getelementptr inbounds [3 x float], [3 x float]* %24, i32 0, i32 0
  store float -1.000000e+00, float* %2049, align 4, !tbaa !81, !noalias !85
  %2050 = getelementptr inbounds [3 x float], [3 x float]* %24, i32 0, i32 1
  store float -1.000000e+00, float* %2050, align 4, !tbaa !81, !noalias !85
  %2051 = getelementptr inbounds [3 x float], [3 x float]* %24, i32 0, i32 2
  store float -1.000000e+00, float* %2051, align 4, !tbaa !81, !noalias !85
  %2052 = getelementptr inbounds [3 x float], [3 x float]* %25, i32 0, i32 0
  store float -1.000000e+00, float* %2052, align 4, !tbaa !81, !noalias !85
  %2053 = getelementptr inbounds [3 x float], [3 x float]* %25, i32 0, i32 1
  store float -1.000000e+00, float* %2053, align 4, !tbaa !81, !noalias !85
  %2054 = getelementptr inbounds [3 x float], [3 x float]* %25, i32 0, i32 2
  store float -1.000000e+00, float* %2054, align 4, !tbaa !81, !noalias !85
  %2055 = icmp sgt i32 %1914, 0
  br i1 %2055, label %2056, label %2117

; <label>:2056                                    ; preds = %2044
  br label %2057

; <label>:2057                                    ; preds = %2106, %2056
  %2058 = phi i32 [ %2107, %2106 ], [ 0, %2056 ]
  %2059 = phi i32 [ %2108, %2106 ], [ 0, %2056 ]
  %2060 = add nuw i32 %2059, 171
  %2061 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 %2060)  ; CBufferLoadLegacy(handle,regIndex)
  %2062 = extractvalue %dx.types.CBufRet.f32 %2061, 0
  %2063 = extractvalue %dx.types.CBufRet.f32 %2061, 1
  %2064 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2065 = extractvalue %dx.types.CBufRet.f32 %2064, 0
  %2066 = extractvalue %dx.types.CBufRet.f32 %2064, 1
  %2067 = fsub fast float %2062, %2065
  %2068 = fsub fast float %2063, %2066
  %2069 = extractvalue %dx.types.CBufRet.f32 %2061, 2
  %2070 = fsub fast float -0.000000e+00, %2067
  %2071 = fsub fast float -0.000000e+00, %2068
  %2072 = call float @dx.op.dot2.f32(i32 54, float %1891, float %1892, float %2070, float %2071)  ; Dot2(ax,ay,bx,by)
  %2073 = fmul fast float %2072, 2.000000e+00
  %2074 = call float @dx.op.dot2.f32(i32 54, float %2070, float %2071, float %2070, float %2071)  ; Dot2(ax,ay,bx,by)
  %2075 = fmul fast float %2069, %2069
  %2076 = fsub fast float %2074, %2075
  %2077 = fmul fast float %2073, %2073
  %2078 = fmul fast float %1934, %2076
  %2079 = fsub fast float %2077, %2078
  %2080 = fcmp fast ogt float %2079, 0.000000e+00
  br i1 %2080, label %2081, label %2096, !dx.controlflow.hints !73

; <label>:2081                                    ; preds = %2057
  %2082 = fcmp fast ogt float %2073, 0.000000e+00
  %2083 = call float @dx.op.unary.f32(i32 24, float %2079)  ; Sqrt(value)
  %2084 = fsub fast float -0.000000e+00, %2083
  %2085 = select i1 %2082, float %2083, float %2084
  %2086 = fadd fast float %2085, %2073
  %2087 = fmul float %2086, -5.000000e-01
  %2088 = fdiv fast float %2087, %1927
  %2089 = call float @dx.op.binary.f32(i32 35, float %2088, float 0.000000e+00)  ; FMax(a,b)
  %2090 = call float @dx.op.binary.f32(i32 36, float %1962, float %2089)  ; FMin(a,b)
  %2091 = fdiv fast float %2076, %2087
  %2092 = call float @dx.op.binary.f32(i32 35, float %2091, float 0.000000e+00)  ; FMax(a,b)
  %2093 = call float @dx.op.binary.f32(i32 36, float %1962, float %2092)  ; FMin(a,b)
  %2094 = call float @dx.op.binary.f32(i32 36, float %2090, float %2093)  ; FMin(a,b)
  %2095 = call float @dx.op.binary.f32(i32 35, float %2090, float %2093)  ; FMax(a,b)
  br label %2096

; <label>:2096                                    ; preds = %2081, %2057
  %2097 = phi float [ %2095, %2081 ], [ -1.000000e+00, %2057 ]
  %2098 = phi float [ %2094, %2081 ], [ -1.000000e+00, %2057 ]
  %2099 = phi i1 [ true, %2081 ], [ false, %2057 ]
  br i1 %2099, label %2100, label %2106, !dx.controlflow.hints !96

; <label>:2100                                    ; preds = %2096
  %2101 = call float @dx.op.binary.f32(i32 35, float %2045, float %2098)  ; FMax(a,b)
  %2102 = getelementptr inbounds [3 x float], [3 x float]* %24, i32 0, i32 %2059
  store float %2101, float* %2102, align 4, !tbaa !81, !noalias !85
  %2103 = call float @dx.op.binary.f32(i32 35, float %2045, float %2097)  ; FMax(a,b)
  %2104 = getelementptr inbounds [3 x float], [3 x float]* %25, i32 0, i32 %2059
  store float %2103, float* %2104, align 4, !tbaa !81, !noalias !85
  %2105 = add nsw i32 %2058, 1
  br label %2106

; <label>:2106                                    ; preds = %2100, %2096
  %2107 = phi i32 [ %2105, %2100 ], [ %2058, %2096 ]
  %2108 = add nuw nsw i32 %2059, 1
  %2109 = icmp eq i32 %2108, %1914
  br i1 %2109, label %2110, label %2057

; <label>:2110                                    ; preds = %2106
  %2111 = load float, float* %2051, align 4, !tbaa !81, !alias.scope !97, !noalias !100
  %2112 = load float, float* %2050, align 4, !tbaa !81, !alias.scope !103, !noalias !104
  %2113 = load float, float* %2049, align 4, !tbaa !81, !alias.scope !105, !noalias !106
  %2114 = load float, float* %2054, align 4, !tbaa !81, !alias.scope !107, !noalias !110
  %2115 = load float, float* %2053, align 4, !tbaa !81, !alias.scope !113, !noalias !114
  %2116 = load float, float* %2052, align 4, !tbaa !81, !alias.scope !115, !noalias !116
  br label %2117

; <label>:2117                                    ; preds = %2110, %2044
  %2118 = phi float [ -1.000000e+00, %2044 ], [ %2116, %2110 ]
  %2119 = phi float [ -1.000000e+00, %2044 ], [ %2115, %2110 ]
  %2120 = phi float [ -1.000000e+00, %2044 ], [ %2114, %2110 ]
  %2121 = phi float [ -1.000000e+00, %2044 ], [ %2113, %2110 ]
  %2122 = phi float [ -1.000000e+00, %2044 ], [ %2112, %2110 ]
  %2123 = phi float [ -1.000000e+00, %2044 ], [ %2111, %2110 ]
  %2124 = phi i32 [ 0, %2044 ], [ %2107, %2110 ]
  %2125 = call float @dx.op.binary.f32(i32 36, float %2122, float %2123)  ; FMin(a,b)
  %2126 = call float @dx.op.binary.f32(i32 36, float %2121, float %2125)  ; FMin(a,b)
  %2127 = call float @dx.op.binary.f32(i32 35, float %2121, float %2122)  ; FMax(a,b)
  %2128 = call float @dx.op.binary.f32(i32 36, float %2127, float %2123)  ; FMin(a,b)
  %2129 = call float @dx.op.binary.f32(i32 36, float %2121, float %2122)  ; FMin(a,b)
  %2130 = call float @dx.op.binary.f32(i32 35, float %2129, float %2128)  ; FMax(a,b)
  %2131 = call float @dx.op.binary.f32(i32 35, float %2122, float %2123)  ; FMax(a,b)
  %2132 = call float @dx.op.binary.f32(i32 35, float %2121, float %2131)  ; FMax(a,b)
  store float %2126, float* %2049, align 4, !tbaa !81, !alias.scope !105, !noalias !106
  store float %2130, float* %2050, align 4, !tbaa !81, !alias.scope !103, !noalias !104
  store float %2132, float* %2051, align 4, !tbaa !81, !alias.scope !97, !noalias !100
  %2133 = call float @dx.op.binary.f32(i32 36, float %2119, float %2120)  ; FMin(a,b)
  %2134 = call float @dx.op.binary.f32(i32 36, float %2118, float %2133)  ; FMin(a,b)
  %2135 = call float @dx.op.binary.f32(i32 35, float %2118, float %2119)  ; FMax(a,b)
  %2136 = call float @dx.op.binary.f32(i32 36, float %2135, float %2120)  ; FMin(a,b)
  %2137 = call float @dx.op.binary.f32(i32 36, float %2118, float %2119)  ; FMin(a,b)
  %2138 = call float @dx.op.binary.f32(i32 35, float %2137, float %2136)  ; FMax(a,b)
  %2139 = call float @dx.op.binary.f32(i32 35, float %2119, float %2120)  ; FMax(a,b)
  %2140 = call float @dx.op.binary.f32(i32 35, float %2118, float %2139)  ; FMax(a,b)
  store float %2134, float* %2052, align 4, !tbaa !81, !alias.scope !115, !noalias !116
  store float %2138, float* %2053, align 4, !tbaa !81, !alias.scope !113, !noalias !114
  store float %2140, float* %2054, align 4, !tbaa !81, !alias.scope !107, !noalias !110
  %2141 = sub nsw i32 3, %2124
  %2142 = icmp sgt i32 %2141, 2
  br i1 %2142, label %2143, label %2181, !dx.controlflow.hints !117

; <label>:2143                                    ; preds = %2117
  %2144 = icmp eq i32 %1912, 0
  %2145 = fsub fast float %1962, %2046
  %2146 = select i1 %2144, float %2145, float %2046
  %2147 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %2148 = extractvalue %dx.types.CBufRet.f32 %2147, 0
  %2149 = extractvalue %dx.types.CBufRet.f32 %2147, 1
  %2150 = extractvalue %dx.types.CBufRet.f32 %2147, 2
  %2151 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %2152 = extractvalue %dx.types.CBufRet.f32 %2151, 0
  %2153 = extractvalue %dx.types.CBufRet.f32 %2151, 1
  %2154 = extractvalue %dx.types.CBufRet.f32 %2151, 2
  %2155 = extractvalue %dx.types.CBufRet.f32 %2151, 3
  %2156 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %2157 = extractvalue %dx.types.CBufRet.f32 %2156, 3
  %2158 = call float @dx.op.binary.f32(i32 36, float %2047, float %2157)  ; FMin(a,b)
  %2159 = fmul fast float %2155, %2146
  %2160 = call float @dx.op.unary.f32(i32 7, float %2159)  ; Saturate(value)
  %2161 = fsub fast float %2152, %2148
  %2162 = fsub fast float %2153, %2149
  %2163 = fsub fast float %2154, %2150
  %2164 = fmul fast float %2160, %2161
  %2165 = fmul fast float %2160, %2162
  %2166 = fmul fast float %2160, %2163
  %2167 = fadd fast float %2164, %2148
  %2168 = fadd fast float %2165, %2149
  %2169 = fadd fast float %2166, %2150
  %2170 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %2171 = extractvalue %dx.types.CBufRet.f32 %2170, 0
  %2172 = extractvalue %dx.types.CBufRet.f32 %2170, 1
  %2173 = fadd fast float %2172, %2171
  %2174 = call float @dx.op.unary.f32(i32 7, float %2173)  ; Saturate(value)
  %2175 = extractvalue %dx.types.CBufRet.f32 %2170, 2
  %2176 = extractvalue %dx.types.CBufRet.f32 %2170, 3
  %2177 = fadd fast float %2176, %2175
  %2178 = call float @dx.op.unary.f32(i32 7, float %2177)  ; Saturate(value)
  %2179 = fmul fast float %2174, %2158
  %2180 = fmul fast float %2179, %2178
  br label %2263

; <label>:2181                                    ; preds = %2117
  %2182 = getelementptr inbounds [3 x float], [3 x float]* %24, i32 0, i32 %2141
  %2183 = load float, float* %2182, align 4, !tbaa !81, !noalias !85
  %2184 = fcmp fast olt float %2183, %2048
  %2185 = icmp sgt i32 %2124, 0
  %2186 = and i1 %2185, %2184
  br i1 %2186, label %2187, label %2224

; <label>:2187                                    ; preds = %2181
  br label %2188

; <label>:2188                                    ; preds = %2217, %2187
  %2189 = phi float [ %2218, %2217 ], [ %2046, %2187 ]
  %2190 = phi float [ %2219, %2217 ], [ %2047, %2187 ]
  %2191 = phi float [ %2199, %2217 ], [ %2183, %2187 ]
  %2192 = phi i32 [ %2196, %2217 ], [ %2141, %2187 ]
  %2193 = getelementptr inbounds [3 x float], [3 x float]* %25, i32 0, i32 %2192
  %2194 = load float, float* %2193, align 4, !tbaa !81, !noalias !85
  %2195 = icmp slt i32 %2192, 2
  %2196 = add nsw i32 %2192, 1
  %2197 = getelementptr inbounds [3 x float], [3 x float]* %24, i32 0, i32 %2196
  %2198 = load float, float* %2197, align 4, !tbaa !81, !noalias !85
  %2199 = select i1 %2195, float %2198, float %1962
  %2200 = call float @dx.op.binary.f32(i32 36, float %2199, float %2194)  ; FMin(a,b)
  %2201 = call float @dx.op.binary.f32(i32 36, float %2048, float %2200)  ; FMin(a,b)
  %2202 = icmp eq i32 %1912, 0
  %2203 = fadd fast float %2201, %2191
  %2204 = fmul fast float %2203, %1893
  %2205 = fadd fast float %2204, %1906
  br i1 %2202, label %2211, label %2206, !dx.controlflow.hints !118

; <label>:2206                                    ; preds = %2188
  %2207 = fsub fast float %2201, %2191
  %2208 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2207)  ; FMax(a,b)
  %2209 = fmul fast float %2208, %2205
  %2210 = fadd fast float %2209, %2190
  br label %2217

; <label>:2211                                    ; preds = %2188
  %2212 = fsub fast float %2191, %2201
  %2213 = call float @dx.op.unary.f32(i32 6, float %2212)  ; FAbs(value)
  %2214 = fadd fast float %2213, %2189
  %2215 = fmul fast float %2213, %2205
  %2216 = fsub fast float %2190, %2215
  br label %2217

; <label>:2217                                    ; preds = %2211, %2206
  %2218 = phi float [ %2208, %2206 ], [ %2214, %2211 ]
  %2219 = phi float [ %2210, %2206 ], [ %2216, %2211 ]
  %2220 = fcmp fast olt float %2199, %2048
  %2221 = icmp slt i32 %2196, 3
  %2222 = and i1 %2221, %2220
  br i1 %2222, label %2188, label %2223

; <label>:2223                                    ; preds = %2217
  br label %2224

; <label>:2224                                    ; preds = %2223, %2181
  %2225 = phi float [ %2046, %2181 ], [ %2218, %2223 ]
  %2226 = phi float [ %2047, %2181 ], [ %2219, %2223 ]
  %2227 = fsub fast float %1962, %2225
  %2228 = select i1 %1964, float %2225, float %2227
  %2229 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %2230 = extractvalue %dx.types.CBufRet.f32 %2229, 0
  %2231 = extractvalue %dx.types.CBufRet.f32 %2229, 1
  %2232 = extractvalue %dx.types.CBufRet.f32 %2229, 2
  %2233 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %2234 = extractvalue %dx.types.CBufRet.f32 %2233, 0
  %2235 = extractvalue %dx.types.CBufRet.f32 %2233, 1
  %2236 = extractvalue %dx.types.CBufRet.f32 %2233, 2
  %2237 = extractvalue %dx.types.CBufRet.f32 %2233, 3
  %2238 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %2239 = extractvalue %dx.types.CBufRet.f32 %2238, 3
  %2240 = call float @dx.op.binary.f32(i32 36, float %2226, float %2239)  ; FMin(a,b)
  %2241 = fmul fast float %2237, %2228
  %2242 = call float @dx.op.unary.f32(i32 7, float %2241)  ; Saturate(value)
  %2243 = fsub fast float %2234, %2230
  %2244 = fsub fast float %2235, %2231
  %2245 = fsub fast float %2236, %2232
  %2246 = fmul fast float %2242, %2243
  %2247 = fmul fast float %2242, %2244
  %2248 = fmul fast float %2242, %2245
  %2249 = fadd fast float %2246, %2230
  %2250 = fadd fast float %2247, %2231
  %2251 = fadd fast float %2248, %2232
  %2252 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %2253 = extractvalue %dx.types.CBufRet.f32 %2252, 0
  %2254 = extractvalue %dx.types.CBufRet.f32 %2252, 1
  %2255 = fadd fast float %2254, %2253
  %2256 = call float @dx.op.unary.f32(i32 7, float %2255)  ; Saturate(value)
  %2257 = extractvalue %dx.types.CBufRet.f32 %2252, 2
  %2258 = extractvalue %dx.types.CBufRet.f32 %2252, 3
  %2259 = fadd fast float %2258, %2257
  %2260 = call float @dx.op.unary.f32(i32 7, float %2259)  ; Saturate(value)
  %2261 = fmul fast float %2256, %2240
  %2262 = fmul fast float %2261, %2260
  br label %2263

; <label>:2263                                    ; preds = %2224, %2143, %1978, %1960, %1958
  %2264 = phi float [ %1987, %1978 ], [ %2146, %2143 ], [ %2228, %2224 ], [ 0.000000e+00, %1958 ], [ 0.000000e+00, %1960 ]
  %2265 = phi float [ %2021, %1978 ], [ %2180, %2143 ], [ %2262, %2224 ], [ 0.000000e+00, %1958 ], [ 0.000000e+00, %1960 ]
  %2266 = phi float [ %2008, %1978 ], [ %2167, %2143 ], [ %2249, %2224 ], [ 0.000000e+00, %1958 ], [ 0.000000e+00, %1960 ]
  %2267 = phi float [ %2009, %1978 ], [ %2168, %2143 ], [ %2250, %2224 ], [ 0.000000e+00, %1958 ], [ 0.000000e+00, %1960 ]
  %2268 = phi float [ %2010, %1978 ], [ %2169, %2143 ], [ %2251, %2224 ], [ 0.000000e+00, %1958 ], [ 0.000000e+00, %1960 ]
  %2269 = fmul fast float %1901, %2265
  %2270 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2271 = extractvalue %dx.types.CBufRet.f32 %2270, 2
  %2272 = fsub fast float %1908, %2271
  %2273 = fcmp fast olt float %2269, -2.000000e+01
  %2274 = call float @dx.op.unary.f32(i32 21, float %2269)  ; Exp(value)
  %2275 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %2276 = extractvalue %dx.types.CBufRet.f32 %2275, 2
  %2277 = extractvalue %dx.types.CBufRet.f32 %2275, 3
  %2278 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %2279 = extractvalue %dx.types.CBufRet.f32 %2278, 2
  %2280 = fmul fast float %2277, %2272
  %2281 = call float @dx.op.unary.f32(i32 7, float %2280)  ; Saturate(value)
  %2282 = fsub fast float 1.000000e+00, %2281
  %2283 = fmul fast float %1893, 5.000000e-01
  %2284 = fadd fast float %2283, 5.000000e-01
  %2285 = call float @dx.op.unary.f32(i32 7, float %2284)  ; Saturate(value)
  %2286 = fsub fast float 1.000000e+00, %2285
  %2287 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %2282)  ; FMax(a,b)
  %2288 = fdiv fast float %2286, %2287
  %2289 = fsub fast float %2272, %1859
  %2290 = call float @dx.op.unary.f32(i32 6, float %2289)  ; FAbs(value)
  %2291 = fmul fast float %2290, %2276
  %2292 = call float @dx.op.unary.f32(i32 7, float %2288)  ; Saturate(value)
  %2293 = fsub fast float 1.000000e+00, %2291
  %2294 = fmul fast float %2293, %2292
  %2295 = fadd fast float %2294, %2291
  %2296 = fmul fast float %2279, %2272
  %2297 = call float @dx.op.unary.f32(i32 7, float %2296)  ; Saturate(value)
  %2298 = fsub fast float 1.000000e+00, %2295
  %2299 = fmul fast float %2298, %2297
  %2300 = fadd fast float %2299, %2295
  %2301 = call float @dx.op.unary.f32(i32 7, float %2300)  ; Saturate(value)
  %2302 = fadd fast float %2274, -1.000000e+00
  %2303 = select i1 %2273, float -1.000000e+00, float %2302
  %2304 = fmul fast float %2301, %2303
  %2305 = fadd fast float %2304, 1.000000e+00
  %2306 = fsub fast float -0.000000e+00, %2304
  %2307 = fmul fast float %2266, %2306
  %2308 = fmul fast float %2267, %2306
  %2309 = fmul fast float %2268, %2306
  br label %2310

; <label>:2310                                    ; preds = %2263, %1812
  %2311 = phi float [ %2264, %2263 ], [ 0.000000e+00, %1812 ]
  %2312 = phi float [ %2305, %2263 ], [ 1.000000e+00, %1812 ]
  %2313 = phi float [ %2307, %2263 ], [ 0.000000e+00, %1812 ]
  %2314 = phi float [ %2308, %2263 ], [ 0.000000e+00, %1812 ]
  %2315 = phi float [ %2309, %2263 ], [ 0.000000e+00, %1812 ]
  %2316 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %2317 = extractvalue %dx.types.CBufRet.f32 %2316, 1
  %2318 = fsub fast float 1.000000e+00, %2312
  %2319 = fmul fast float %2318, %1894
  %2320 = fmul fast float %2319, %2317
  %2321 = fsub fast float %1894, %2320
  br i1 %1887, label %2322, label %2351, !dx.controlflow.hints !119

; <label>:2322                                    ; preds = %2310
  %2323 = fmul fast float %1895, %1884
  %2324 = fadd fast float %2323, %1885
  %2325 = call float @dx.op.unary.f32(i32 7, float %2324)  ; Saturate(value)
  %2326 = fmul fast float %1866, %2321
  %2327 = fsub fast float -0.000000e+00, %2326
  %2328 = fmul fast float %1867, %2321
  %2329 = fsub fast float -0.000000e+00, %2328
  %2330 = call float @dx.op.unary.f32(i32 21, float %2327)  ; Exp(value)
  %2331 = call float @dx.op.unary.f32(i32 21, float %2329)  ; Exp(value)
  %2332 = call float @dx.op.binary.f32(i32 35, float %1874, float %2330)  ; FMax(a,b)
  %2333 = call float @dx.op.binary.f32(i32 35, float %1874, float %2331)  ; FMax(a,b)
  %2334 = fsub fast float %2333, %2332
  %2335 = fmul fast float %2334, %2325
  %2336 = fadd fast float %2335, %2332
  %2337 = call float @dx.op.unary.f32(i32 7, float %2336)  ; Saturate(value)
  %2338 = fsub fast float %1871, %1876
  %2339 = fsub fast float %1872, %1877
  %2340 = fsub fast float %1873, %1878
  %2341 = fmul fast float %2325, %2338
  %2342 = fmul fast float %2325, %2339
  %2343 = fmul fast float %2325, %2340
  %2344 = fadd fast float %2341, %1876
  %2345 = fadd fast float %2342, %1877
  %2346 = fadd fast float %2343, %1878
  %2347 = fsub fast float 1.000000e+00, %2337
  %2348 = fmul fast float %2347, %2344
  %2349 = fmul fast float %2347, %2345
  %2350 = fmul fast float %2347, %2346
  br label %2410

; <label>:2351                                    ; preds = %2310
  %2352 = fmul fast float %2321, %1883
  %2353 = call float @dx.op.unary.f32(i32 7, float %2352)  ; Saturate(value)
  %2354 = fsub fast float 2.000000e+00, %2353
  %2355 = fmul fast float %2353, 9.921875e-01
  %2356 = fmul fast float %2355, %2354
  %2357 = fadd fast float %2356, 3.906250e-03
  %2358 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %18, float %2357, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2359 = extractvalue %dx.types.ResRet.f32 %2358, 0
  %2360 = fsub fast float %2353, %2359
  %2361 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2360)  ; FMax(a,b)
  %2362 = fmul fast float %1869, %1859
  %2363 = call float @dx.op.unary.f32(i32 6, float %2362)  ; FAbs(value)
  %2364 = fcmp fast ogt float %2363, 0x3EB0C6F7A0000000
  br i1 %2364, label %2365, label %2371, !dx.controlflow.hints !120

; <label>:2365                                    ; preds = %2351
  %2366 = fmul fast float %2362, 0xBFF7154760000000
  %2367 = call float @dx.op.unary.f32(i32 21, float %2366)  ; Exp(value)
  %2368 = fsub fast float 1.000000e+00, %2367
  %2369 = fdiv fast float %2368, %2362
  %2370 = fmul fast float %2369, %1879
  br label %2371

; <label>:2371                                    ; preds = %2365, %2351
  %2372 = phi float [ %2370, %2365 ], [ %1879, %2351 ]
  %2373 = fadd fast float %2372, %1881
  %2374 = fmul fast float %2373, %2361
  %2375 = fmul fast float %1866, %2374
  %2376 = fsub fast float -0.000000e+00, %2375
  %2377 = fmul fast float %1867, %2374
  %2378 = fsub fast float -0.000000e+00, %2377
  %2379 = fmul fast float %1868, %2374
  %2380 = fsub fast float -0.000000e+00, %2379
  %2381 = call float @dx.op.unary.f32(i32 21, float %2376)  ; Exp(value)
  %2382 = call float @dx.op.unary.f32(i32 21, float %2378)  ; Exp(value)
  %2383 = call float @dx.op.unary.f32(i32 21, float %2380)  ; Exp(value)
  %2384 = fmul fast float %1895, %1895
  %2385 = fadd fast float %2384, 1.000000e+00
  %2386 = fmul fast float %2385, 0x3FAE8EC8A0000000
  %2387 = fmul fast float %2386, %1876
  %2388 = fmul fast float %2386, %1877
  %2389 = fmul fast float %2386, %1878
  %2390 = fmul fast float %1895, %1874
  %2391 = fsub fast float 1.000000e+00, %2390
  %2392 = fmul fast float %1874, %1874
  %2393 = fsub fast float 1.000000e+00, %2392
  %2394 = fmul fast float %2393, 0x3FB45F3060000000
  %2395 = fmul fast float %2391, %2391
  %2396 = fdiv fast float 1.000000e+00, %2395
  %2397 = fmul fast float %2394, %2396
  %2398 = fmul fast float %2397, %1871
  %2399 = fmul fast float %2397, %1872
  %2400 = fmul fast float %2397, %1873
  %2401 = fadd fast float %2398, %2387
  %2402 = fadd fast float %2399, %2388
  %2403 = fadd fast float %2400, %2389
  %2404 = fsub fast float 1.000000e+00, %2381
  %2405 = fsub fast float 1.000000e+00, %2382
  %2406 = fsub fast float 1.000000e+00, %2383
  %2407 = fmul fast float %2401, %2404
  %2408 = fmul fast float %2402, %2405
  %2409 = fmul fast float %2403, %2406
  br label %2410

; <label>:2410                                    ; preds = %2371, %2322
  %2411 = phi float [ %2348, %2322 ], [ %2407, %2371 ]
  %2412 = phi float [ %2349, %2322 ], [ %2408, %2371 ]
  %2413 = phi float [ %2350, %2322 ], [ %2409, %2371 ]
  %2414 = phi float [ %2337, %2322 ], [ %2381, %2371 ]
  %2415 = phi float [ %2337, %2322 ], [ %2382, %2371 ]
  %2416 = phi float [ %2337, %2322 ], [ %2383, %2371 ]
  br i1 %1903, label %2417, label %2615, !dx.controlflow.hints !121

; <label>:2417                                    ; preds = %2410
  %2418 = extractvalue %dx.types.CBufRet.f32 %2316, 0
  %2419 = fmul fast float %2418, %2318
  %2420 = fsub fast float %2313, %2411
  %2421 = fsub fast float %2314, %2412
  %2422 = fsub fast float %2315, %2413
  %2423 = fmul fast float %2419, %2420
  %2424 = fmul fast float %2419, %2421
  %2425 = fmul fast float %2419, %2422
  %2426 = fadd fast float %2423, %2411
  %2427 = fadd fast float %2424, %2412
  %2428 = fadd fast float %2425, %2413
  %2429 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %2414)  ; FMax(a,b)
  %2430 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %2415)  ; FMax(a,b)
  %2431 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %2416)  ; FMax(a,b)
  %2432 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %2312)  ; FMax(a,b)
  %2433 = call float @dx.op.binary.f32(i32 35, float %2311, float %2321)  ; FMax(a,b)
  %2434 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %2433)  ; FMax(a,b)
  %2435 = fdiv fast float %2311, %2434
  %2436 = call float @dx.op.unary.f32(i32 7, float %2435)  ; Saturate(value)
  %2437 = fdiv fast float %2321, %2434
  %2438 = call float @dx.op.unary.f32(i32 7, float %2437)  ; Saturate(value)
  %2439 = fcmp fast une float %2432, 1.000000e+00
  br i1 %2439, label %2440, label %2453, !dx.controlflow.hints !122

; <label>:2440                                    ; preds = %2417
  %2441 = call float @dx.op.unary.f32(i32 23, float %2432)  ; Log(value)
  %2442 = fmul fast float %2441, 0x3FE62E4300000000
  %2443 = fmul fast float %2313, %2442
  %2444 = fsub fast float -0.000000e+00, %2443
  %2445 = fmul fast float %2314, %2442
  %2446 = fsub fast float -0.000000e+00, %2445
  %2447 = fmul fast float %2315, %2442
  %2448 = fsub fast float -0.000000e+00, %2447
  %2449 = fsub fast float 1.000000e+00, %2432
  %2450 = fdiv fast float %2444, %2449
  %2451 = fdiv fast float %2446, %2449
  %2452 = fdiv fast float %2448, %2449
  br label %2453

; <label>:2453                                    ; preds = %2440, %2417
  %2454 = phi float [ %2450, %2440 ], [ %2313, %2417 ]
  %2455 = phi float [ %2451, %2440 ], [ %2314, %2417 ]
  %2456 = phi float [ %2452, %2440 ], [ %2315, %2417 ]
  %2457 = phi float [ %2442, %2440 ], [ 0.000000e+00, %2417 ]
  %2458 = fcmp fast une float %2429, 1.000000e+00
  br i1 %2458, label %2459, label %2466, !dx.controlflow.hints !123

; <label>:2459                                    ; preds = %2453
  %2460 = call float @dx.op.unary.f32(i32 23, float %2429)  ; Log(value)
  %2461 = fmul fast float %2460, 0x3FE62E4300000000
  %2462 = fmul fast float %2426, %2461
  %2463 = fsub fast float -0.000000e+00, %2462
  %2464 = fsub fast float 1.000000e+00, %2429
  %2465 = fdiv fast float %2463, %2464
  br label %2466

; <label>:2466                                    ; preds = %2459, %2453
  %2467 = phi float [ %2465, %2459 ], [ %2426, %2453 ]
  %2468 = phi float [ %2461, %2459 ], [ 0.000000e+00, %2453 ]
  %2469 = fcmp fast une float %2430, 1.000000e+00
  br i1 %2469, label %2470, label %2477, !dx.controlflow.hints !123

; <label>:2470                                    ; preds = %2466
  %2471 = call float @dx.op.unary.f32(i32 23, float %2430)  ; Log(value)
  %2472 = fmul fast float %2471, 0x3FE62E4300000000
  %2473 = fmul fast float %2427, %2472
  %2474 = fsub fast float -0.000000e+00, %2473
  %2475 = fsub fast float 1.000000e+00, %2430
  %2476 = fdiv fast float %2474, %2475
  br label %2477

; <label>:2477                                    ; preds = %2470, %2466
  %2478 = phi float [ %2476, %2470 ], [ %2427, %2466 ]
  %2479 = phi float [ %2472, %2470 ], [ 0.000000e+00, %2466 ]
  %2480 = fcmp fast une float %2431, 1.000000e+00
  br i1 %2480, label %2481, label %2488, !dx.controlflow.hints !123

; <label>:2481                                    ; preds = %2477
  %2482 = call float @dx.op.unary.f32(i32 23, float %2431)  ; Log(value)
  %2483 = fmul fast float %2482, 0x3FE62E4300000000
  %2484 = fmul fast float %2428, %2483
  %2485 = fsub fast float -0.000000e+00, %2484
  %2486 = fsub fast float 1.000000e+00, %2431
  %2487 = fdiv fast float %2485, %2486
  br label %2488

; <label>:2488                                    ; preds = %2481, %2477
  %2489 = phi float [ %2487, %2481 ], [ %2428, %2477 ]
  %2490 = phi float [ %2483, %2481 ], [ 0.000000e+00, %2477 ]
  %2491 = fmul fast float %2454, %2438
  %2492 = fmul fast float %2455, %2438
  %2493 = fmul fast float %2456, %2438
  %2494 = fmul fast float %2457, %2438
  %2495 = fmul fast float %2467, %2436
  %2496 = fmul fast float %2478, %2436
  %2497 = fmul fast float %2489, %2436
  %2498 = fmul fast float %2468, %2436
  %2499 = fmul fast float %2479, %2436
  %2500 = fmul fast float %2490, %2436
  %2501 = fadd fast float %2495, %2491
  %2502 = fadd fast float %2496, %2492
  %2503 = fadd fast float %2497, %2493
  %2504 = fadd fast float %2498, %2494
  %2505 = fadd fast float %2499, %2494
  %2506 = fadd fast float %2500, %2494
  %2507 = fcmp fast une float %2504, 0.000000e+00
  br i1 %2507, label %2508, label %2515, !dx.controlflow.hints !124

; <label>:2508                                    ; preds = %2488
  %2509 = fmul fast float %2504, 0x3FF7154760000000
  %2510 = call float @dx.op.unary.f32(i32 21, float %2509)  ; Exp(value)
  %2511 = fsub fast float 1.000000e+00, %2510
  %2512 = fmul fast float %2501, %2511
  %2513 = fsub fast float -0.000000e+00, %2512
  %2514 = fdiv fast float %2513, %2504
  br label %2515

; <label>:2515                                    ; preds = %2508, %2488
  %2516 = phi float [ %2510, %2508 ], [ 1.000000e+00, %2488 ]
  %2517 = phi float [ %2514, %2508 ], [ %2501, %2488 ]
  %2518 = fcmp fast une float %2505, 0.000000e+00
  br i1 %2518, label %2519, label %2526, !dx.controlflow.hints !124

; <label>:2519                                    ; preds = %2515
  %2520 = fmul fast float %2505, 0x3FF7154760000000
  %2521 = call float @dx.op.unary.f32(i32 21, float %2520)  ; Exp(value)
  %2522 = fsub fast float 1.000000e+00, %2521
  %2523 = fmul fast float %2502, %2522
  %2524 = fsub fast float -0.000000e+00, %2523
  %2525 = fdiv fast float %2524, %2505
  br label %2526

; <label>:2526                                    ; preds = %2519, %2515
  %2527 = phi float [ %2521, %2519 ], [ 1.000000e+00, %2515 ]
  %2528 = phi float [ %2525, %2519 ], [ %2502, %2515 ]
  %2529 = fcmp fast une float %2506, 0.000000e+00
  br i1 %2529, label %2530, label %2537, !dx.controlflow.hints !124

; <label>:2530                                    ; preds = %2526
  %2531 = fmul fast float %2506, 0x3FF7154760000000
  %2532 = call float @dx.op.unary.f32(i32 21, float %2531)  ; Exp(value)
  %2533 = fsub fast float 1.000000e+00, %2532
  %2534 = fmul fast float %2503, %2533
  %2535 = fsub fast float -0.000000e+00, %2534
  %2536 = fdiv fast float %2535, %2506
  br label %2537

; <label>:2537                                    ; preds = %2530, %2526
  %2538 = phi float [ %2532, %2530 ], [ 1.000000e+00, %2526 ]
  %2539 = phi float [ %2536, %2530 ], [ %2503, %2526 ]
  %2540 = fcmp fast ogt float %2436, %2438
  br i1 %2540, label %2541, label %2561, !dx.controlflow.hints !125

; <label>:2541                                    ; preds = %2537
  %2542 = fsub fast float 1.000000e+00, %2438
  %2543 = fmul fast float %2454, %2542
  %2544 = fmul fast float %2455, %2542
  %2545 = fmul fast float %2456, %2542
  %2546 = fmul fast float %2457, %2542
  %2547 = fcmp fast une float %2546, 0.000000e+00
  br i1 %2547, label %2548, label %2599, !dx.controlflow.hints !126

; <label>:2548                                    ; preds = %2541
  %2549 = fmul fast float %2546, 0x3FF7154760000000
  %2550 = call float @dx.op.unary.f32(i32 21, float %2549)  ; Exp(value)
  %2551 = fsub fast float 1.000000e+00, %2550
  %2552 = fmul fast float %2543, %2551
  %2553 = fsub fast float -0.000000e+00, %2552
  %2554 = fmul fast float %2544, %2551
  %2555 = fsub fast float -0.000000e+00, %2554
  %2556 = fmul fast float %2545, %2551
  %2557 = fsub fast float -0.000000e+00, %2556
  %2558 = fdiv fast float %2553, %2546
  %2559 = fdiv fast float %2555, %2546
  %2560 = fdiv fast float %2557, %2546
  br label %2599

; <label>:2561                                    ; preds = %2537
  %2562 = fsub fast float 1.000000e+00, %2436
  %2563 = fmul fast float %2467, %2562
  %2564 = fmul fast float %2478, %2562
  %2565 = fmul fast float %2489, %2562
  %2566 = fmul fast float %2468, %2562
  %2567 = fmul fast float %2479, %2562
  %2568 = fmul fast float %2490, %2562
  %2569 = fcmp fast une float %2566, 0.000000e+00
  br i1 %2569, label %2570, label %2577, !dx.controlflow.hints !124

; <label>:2570                                    ; preds = %2561
  %2571 = fmul fast float %2566, 0x3FF7154760000000
  %2572 = call float @dx.op.unary.f32(i32 21, float %2571)  ; Exp(value)
  %2573 = fsub fast float 1.000000e+00, %2572
  %2574 = fmul fast float %2563, %2573
  %2575 = fsub fast float -0.000000e+00, %2574
  %2576 = fdiv fast float %2575, %2566
  br label %2577

; <label>:2577                                    ; preds = %2570, %2561
  %2578 = phi float [ %2576, %2570 ], [ %2563, %2561 ]
  %2579 = phi float [ %2572, %2570 ], [ 1.000000e+00, %2561 ]
  %2580 = fcmp fast une float %2567, 0.000000e+00
  br i1 %2580, label %2581, label %2588, !dx.controlflow.hints !124

; <label>:2581                                    ; preds = %2577
  %2582 = fmul fast float %2567, 0x3FF7154760000000
  %2583 = call float @dx.op.unary.f32(i32 21, float %2582)  ; Exp(value)
  %2584 = fsub fast float 1.000000e+00, %2583
  %2585 = fmul fast float %2564, %2584
  %2586 = fsub fast float -0.000000e+00, %2585
  %2587 = fdiv fast float %2586, %2567
  br label %2588

; <label>:2588                                    ; preds = %2581, %2577
  %2589 = phi float [ %2587, %2581 ], [ %2564, %2577 ]
  %2590 = phi float [ %2583, %2581 ], [ 1.000000e+00, %2577 ]
  %2591 = fcmp fast une float %2568, 0.000000e+00
  br i1 %2591, label %2592, label %2599, !dx.controlflow.hints !124

; <label>:2592                                    ; preds = %2588
  %2593 = fmul fast float %2568, 0x3FF7154760000000
  %2594 = call float @dx.op.unary.f32(i32 21, float %2593)  ; Exp(value)
  %2595 = fsub fast float 1.000000e+00, %2594
  %2596 = fmul fast float %2565, %2595
  %2597 = fsub fast float -0.000000e+00, %2596
  %2598 = fdiv fast float %2597, %2568
  br label %2599

; <label>:2599                                    ; preds = %2592, %2588, %2548, %2541
  %2600 = phi float [ %2598, %2592 ], [ %2560, %2548 ], [ %2545, %2541 ], [ %2565, %2588 ]
  %2601 = phi float [ %2589, %2592 ], [ %2559, %2548 ], [ %2544, %2541 ], [ %2589, %2588 ]
  %2602 = phi float [ %2578, %2592 ], [ %2558, %2548 ], [ %2543, %2541 ], [ %2578, %2588 ]
  %2603 = phi float [ %2594, %2592 ], [ %2550, %2548 ], [ 1.000000e+00, %2541 ], [ 1.000000e+00, %2588 ]
  %2604 = phi float [ %2590, %2592 ], [ %2550, %2548 ], [ 1.000000e+00, %2541 ], [ %2590, %2588 ]
  %2605 = phi float [ %2579, %2592 ], [ %2550, %2548 ], [ 1.000000e+00, %2541 ], [ %2579, %2588 ]
  %2606 = fmul fast float %2605, %2517
  %2607 = fmul fast float %2604, %2528
  %2608 = fmul fast float %2603, %2539
  %2609 = fadd fast float %2606, %2602
  %2610 = fadd fast float %2607, %2601
  %2611 = fadd fast float %2608, %2600
  %2612 = fmul fast float %2605, %2516
  %2613 = fmul fast float %2604, %2527
  %2614 = fmul fast float %2603, %2538
  br label %2615

; <label>:2615                                    ; preds = %2599, %2410
  %2616 = phi float [ %2416, %2410 ], [ %2614, %2599 ]
  %2617 = phi float [ %2415, %2410 ], [ %2613, %2599 ]
  %2618 = phi float [ %2414, %2410 ], [ %2612, %2599 ]
  %2619 = phi float [ %2413, %2410 ], [ %2611, %2599 ]
  %2620 = phi float [ %2412, %2410 ], [ %2610, %2599 ]
  %2621 = phi float [ %2411, %2410 ], [ %2609, %2599 ]
  %2622 = fmul fast float %2618, %1759
  %2623 = fmul fast float %2617, %1760
  %2624 = fmul fast float %2616, %1761
  %2625 = fsub fast float 1.000000e+00, %1822
  %2626 = fmul fast float %2621, %2625
  %2627 = fmul fast float %2620, %2625
  %2628 = fmul fast float %2619, %2625
  %2629 = fadd fast float %2626, %2622
  %2630 = fadd fast float %2627, %2623
  %2631 = fadd fast float %2628, %2624
  %2632 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 423)  ; CBufferLoadLegacy(handle,regIndex)
  %2633 = extractvalue %dx.types.CBufRet.f32 %2632, 2
  %2634 = fmul fast float %2633, %1832
  %2635 = call float @dx.op.unary.f32(i32 7, float %2634)  ; Saturate(value)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %3, i32 %21, i32 %22, i32 undef, float %1822, float %1822, float %1822, float %1822, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %2636 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2637 = extractvalue %dx.types.CBufRet.f32 %2636, 0
  %2638 = fmul fast float %2637, %2629
  %2639 = fmul fast float %2637, %2630
  %2640 = fmul fast float %2637, %2631
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %4, i32 %21, i32 %22, i32 undef, float %2638, float %2639, float %2640, float %2638, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %21, i32 %22, i32 undef, float %2635, float %2635, float %2635, float %2635, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
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
!dx.entryPoints = !{!31}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !17, !23, !26}
!5 = !{!6, !8, !9, !10, !11, !12, !13, !14, !15, !16}
!6 = !{i32 0, %"class.Texture3D<float>"* undef, !"", i32 0, i32 3, i32 1, i32 4, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 16, i32 1, i32 2, i32 0, !7}
!9 = !{i32 2, %"class.Texture3D<float>"* undef, !"", i32 0, i32 1, i32 1, i32 4, i32 0, !7}
!10 = !{i32 3, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 0, i32 2, i32 1, i32 4, i32 0, !7}
!11 = !{i32 4, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 8, i32 1, i32 2, i32 0, !7}
!12 = !{i32 5, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 9, i32 1, i32 2, i32 0, !7}
!13 = !{i32 6, %"class.Texture1D<float>"* undef, !"", i32 0, i32 14, i32 1, i32 1, i32 0, !7}
!14 = !{i32 7, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 13, i32 1, i32 2, i32 0, !7}
!15 = !{i32 8, %"class.Texture2D<float>"* undef, !"", i32 0, i32 0, i32 1, i32 2, i32 0, !7}
!16 = !{i32 9, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 17, i32 1, i32 11, i32 0, null}
!17 = !{!18, !19, !20, !21}
!18 = !{i32 0, %"class.RWTexture2D<vector<float, 3> >"* undef, !"", i32 0, i32 0, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!19 = !{i32 1, %"class.RWTexture2D<float>"* undef, !"", i32 0, i32 1, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!20 = !{i32 2, %"class.RWTexture2D<float>"* undef, !"", i32 0, i32 2, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!21 = !{i32 3, %"class.RWTexture2DArray<vector<float, 4> >"* undef, !"", i32 0, i32 3, i32 1, i32 7, i1 false, i1 false, i1 false, !22}
!22 = !{i32 0, i32 14}
!23 = !{!24, !25}
!24 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!25 = !{i32 1, %FogRaymarchingConstBuffer_decl* undef, !"", i32 0, i32 0, i32 1, i32 112, null}
!26 = !{!27, !28, !29, !30}
!27 = !{i32 0, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!28 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 3, i32 1, i32 0, null}
!29 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!30 = !{i32 3, %struct.SamplerState* undef, !"", i32 0, i32 5, i32 1, i32 0, null}
!31 = !{void ()* @cs_fog_raymarching_air_clouds_heightmap, !"cs_fog_raymarching_air_clouds_heightmap", null, !4, !32}
!32 = !{i32 0, i64 272, i32 4, !33}
!33 = !{i32 8, i32 8, i32 1}
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
!47 = distinct !{!47, !"dx.controlflow.hints", i32 2}
!48 = distinct !{!48, !"dx.controlflow.hints", i32 1}
!49 = distinct !{!49, !"dx.controlflow.hints", i32 2}
!50 = distinct !{!50, !"dx.controlflow.hints", i32 2}
!51 = distinct !{!51, !"dx.controlflow.hints", i32 2}
!52 = distinct !{!52, !"dx.controlflow.hints", i32 2}
!53 = distinct !{!53, !"dx.controlflow.hints", i32 2}
!54 = distinct !{!54, !"dx.controlflow.hints", i32 2}
!55 = distinct !{!55, !"dx.controlflow.hints", i32 2}
!56 = distinct !{!56, !"dx.controlflow.hints", i32 2}
!57 = distinct !{!57, !"dx.controlflow.hints", i32 2}
!58 = distinct !{!58, !"dx.controlflow.hints", i32 2}
!59 = distinct !{!59, !"dx.controlflow.hints", i32 2}
!60 = distinct !{!60, !"dx.controlflow.hints", i32 2}
!61 = distinct !{!61, !"dx.controlflow.hints", i32 2}
!62 = distinct !{!62, !"dx.controlflow.hints", i32 2}
!63 = distinct !{!63, !"dx.controlflow.hints", i32 2}
!64 = distinct !{!64, !"dx.controlflow.hints", i32 1}
!65 = distinct !{!65, !"dx.controlflow.hints", i32 1}
!66 = distinct !{!66, !"dx.controlflow.hints", i32 2}
!67 = distinct !{!67, !"dx.controlflow.hints", i32 2}
!68 = distinct !{!68, !"dx.controlflow.hints", i32 2}
!69 = distinct !{!69, !"dx.controlflow.hints", i32 2}
!70 = distinct !{!70, !"dx.controlflow.hints", i32 2}
!71 = distinct !{!71, !"dx.controlflow.hints", i32 2}
!72 = distinct !{!72, !"dx.controlflow.hints", i32 1}
!73 = distinct !{!73, !"dx.controlflow.hints", i32 2}
!74 = distinct !{!74, !"dx.controlflow.hints", i32 2}
!75 = distinct !{!75, !"dx.controlflow.hints", i32 2}
!76 = distinct !{!76, !"dx.controlflow.hints", i32 2}
!77 = distinct !{!77, !"dx.controlflow.hints", i32 2}
!78 = distinct !{!78, !"dx.controlflow.hints", i32 2}
!79 = distinct !{!79, !"dx.controlflow.hints", i32 2}
!80 = distinct !{!80, !"dx.controlflow.hints", i32 2}
!81 = !{!82, !82, i64 0}
!82 = !{!"float", !83, i64 0}
!83 = !{!"omnipotent char", !84, i64 0}
!84 = !{!"Simple C/C++ TBAA"}
!85 = !{!86, !88, !90, !91, !93, !94, !95}
!86 = distinct !{!86, !87, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z: %cFogParams"}
!87 = distinct !{!87, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z"}
!88 = distinct !{!88, !89, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %scattering"}
!89 = distinct !{!89, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z"}
!90 = distinct !{!90, !89, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %extinction"}
!91 = distinct !{!91, !92, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z: %scattering"}
!92 = distinct !{!92, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z"}
!93 = distinct !{!93, !92, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z: %transmission"}
!94 = distinct !{!94, !92, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z: %depthDensityWeighted"}
!95 = distinct !{!95, !92, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z: %rawShadowmapData"}
!96 = distinct !{!96, !"dx.controlflow.hints", i32 2}
!97 = !{!98}
!98 = distinct !{!98, !99, !"\01?sort@@YAXAIAM00@Z: %c"}
!99 = distinct !{!99, !"\01?sort@@YAXAIAM00@Z"}
!100 = !{!101, !102, !86, !88, !90, !91, !93, !94, !95}
!101 = distinct !{!101, !99, !"\01?sort@@YAXAIAM00@Z: %a"}
!102 = distinct !{!102, !99, !"\01?sort@@YAXAIAM00@Z: %b"}
!103 = !{!102}
!104 = !{!101, !98, !86, !88, !90, !91, !93, !94, !95}
!105 = !{!101}
!106 = !{!102, !98, !86, !88, !90, !91, !93, !94, !95}
!107 = !{!108}
!108 = distinct !{!108, !109, !"\01?sort@@YAXAIAM00@Z: %c"}
!109 = distinct !{!109, !"\01?sort@@YAXAIAM00@Z"}
!110 = !{!111, !112, !86, !88, !90, !91, !93, !94, !95}
!111 = distinct !{!111, !109, !"\01?sort@@YAXAIAM00@Z: %a"}
!112 = distinct !{!112, !109, !"\01?sort@@YAXAIAM00@Z: %b"}
!113 = !{!112}
!114 = !{!111, !108, !86, !88, !90, !91, !93, !94, !95}
!115 = !{!111}
!116 = !{!112, !108, !86, !88, !90, !91, !93, !94, !95}
!117 = distinct !{!117, !"dx.controlflow.hints", i32 2}
!118 = distinct !{!118, !"dx.controlflow.hints", i32 2}
!119 = distinct !{!119, !"dx.controlflow.hints", i32 1}
!120 = distinct !{!120, !"dx.controlflow.hints", i32 2}
!121 = distinct !{!121, !"dx.controlflow.hints", i32 1}
!122 = distinct !{!122, !"dx.controlflow.hints", i32 1}
!123 = distinct !{!123, !"dx.controlflow.hints", i32 1}
!124 = distinct !{!124, !"dx.controlflow.hints", i32 1}
!125 = distinct !{!125, !"dx.controlflow.hints", i32 2}
!126 = distinct !{!126, !"dx.controlflow.hints", i32 1}

