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
; shader hash: 6d0d27a5c1604c5dc6b2593b2012a9c6
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
;                                   texture     f32          2d      T1            t27     1
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

define void @cs_fog_raymarching_air_clouds_brfog() {
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
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 27, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
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
  %219 = extractvalue %dx.types.ResRet.f32 %218, 1
  %220 = extractvalue %dx.types.ResRet.f32 %218, 2
  %221 = extractvalue %dx.types.ResRet.f32 %218, 3
  %222 = fadd fast float %219, %213
  %223 = fadd fast float %220, %213
  %224 = fadd fast float %221, %213
  %225 = call float @dx.op.unary.f32(i32 22, float %222)  ; Frc(value)
  %226 = call float @dx.op.unary.f32(i32 22, float %223)  ; Frc(value)
  %227 = call float @dx.op.unary.f32(i32 22, float %224)  ; Frc(value)
  %228 = fadd fast float %226, %209
  %229 = fadd fast float %227, %210
  %230 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %231 = extractvalue %dx.types.CBufRet.f32 %230, 2
  %232 = extractvalue %dx.types.CBufRet.f32 %230, 3
  %233 = fmul fast float %231, %228
  %234 = fmul fast float %232, %229
  %235 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %236 = extractvalue %dx.types.CBufRet.f32 %235, 0
  %237 = fsub fast float -0.000000e+00, %236
  %238 = extractvalue %dx.types.CBufRet.f32 %235, 1
  %239 = fsub fast float -0.000000e+00, %238
  %240 = extractvalue %dx.types.CBufRet.f32 %235, 2
  %241 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %242 = extractvalue %dx.types.CBufRet.f32 %241, 1
  %243 = fmul fast float %233, 2.000000e+00
  %244 = fmul fast float %234, 2.000000e+00
  %245 = fsub fast float 1.000000e+00, %243
  %246 = fsub fast float 1.000000e+00, %244
  %247 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %248 = extractvalue %dx.types.CBufRet.f32 %247, 0
  %249 = extractvalue %dx.types.CBufRet.f32 %247, 1
  %250 = extractvalue %dx.types.CBufRet.f32 %247, 2
  %251 = fmul fast float %248, %245
  %252 = fmul fast float %249, %245
  %253 = fmul fast float %250, %245
  %254 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %255 = extractvalue %dx.types.CBufRet.f32 %254, 0
  %256 = extractvalue %dx.types.CBufRet.f32 %254, 1
  %257 = extractvalue %dx.types.CBufRet.f32 %254, 2
  %258 = fmul fast float %255, %246
  %259 = fmul fast float %256, %246
  %260 = fmul fast float %257, %246
  %261 = fadd fast float %258, %251
  %262 = fadd fast float %259, %252
  %263 = fadd fast float %260, %253
  %264 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %265 = extractvalue %dx.types.CBufRet.f32 %264, 0
  %266 = extractvalue %dx.types.CBufRet.f32 %264, 1
  %267 = extractvalue %dx.types.CBufRet.f32 %264, 2
  %268 = fadd fast float %261, %265
  %269 = fadd fast float %262, %266
  %270 = fadd fast float %263, %267
  %271 = fmul fast float %268, %242
  %272 = fmul fast float %269, %242
  %273 = fmul fast float %270, %242
  %274 = fmul fast float %271, %271
  %275 = fmul fast float %272, %272
  %276 = fadd fast float %274, %275
  %277 = fmul fast float %273, %273
  %278 = fadd fast float %276, %277
  %279 = call float @dx.op.unary.f32(i32 24, float %278)  ; Sqrt(value)
  %280 = fdiv fast float 1.000000e+00, %279
  %281 = fmul fast float %271, %280
  %282 = fmul fast float %272, %280
  %283 = fmul fast float %273, %280
  %284 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %6, i32 0, i32 %36, i32 %37, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %285 = extractvalue %dx.types.ResRet.f32 %284, 0
  %286 = fcmp fast ogt float %285, -1.000000e+00
  %287 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %288 = extractvalue %dx.types.CBufRet.f32 %287, 1
  %289 = select i1 %286, float %288, float 1.000000e+00
  %290 = fadd fast float %285, 1.000000e+00
  %291 = fmul fast float %289, %290
  %292 = call float @dx.op.unary.f32(i32 6, float %291)  ; FAbs(value)
  %293 = fdiv fast float 1.000000e+00, %242
  %294 = fmul fast float %293, %279
  %295 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 423)  ; CBufferLoadLegacy(handle,regIndex)
  %296 = extractvalue %dx.types.CBufRet.f32 %295, 1
  %297 = fmul fast float %296, %294
  %298 = fmul fast float %294, %292
  %299 = extractvalue %dx.types.CBufRet.f32 %287, 3
  %300 = fcmp fast oge float %292, %299
  %301 = call float @dx.op.binary.f32(i32 36, float %298, float %297)  ; FMin(a,b)
  %302 = select i1 %300, float %297, float %301
  %303 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %304 = extractvalue %dx.types.CBufRet.f32 %303, 3
  %305 = fsub fast float %304, %240
  %306 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %237, float %239, float %305)  ; Dot3(ax,ay,az,bx,by,bz)
  %307 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %281, float %282, float %283)  ; Dot3(ax,ay,az,bx,by,bz)
  %308 = fdiv fast float 1.000000e+00, %307
  %309 = fmul fast float %308, %306
  %310 = fcmp fast olt float %309, 0.000000e+00
  %311 = fcmp fast ogt float %283, 0.000000e+00
  %312 = and i1 %311, %310
  br i1 %312, label %317, label %313, !dx.controlflow.hints !35

; <label>:313                                     ; preds = %205
  %314 = fcmp fast olt float %283, 0.000000e+00
  br i1 %314, label %315, label %317, !dx.controlflow.hints !36

; <label>:315                                     ; preds = %313
  %316 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %309)  ; FMax(a,b)
  br label %317

; <label>:317                                     ; preds = %315, %313, %205
  %318 = phi float [ 0.000000e+00, %205 ], [ %316, %315 ], [ 0.000000e+00, %313 ]
  %319 = phi float [ 0.000000e+00, %205 ], [ 0x47EFFFFFE0000000, %315 ], [ %309, %313 ]
  %320 = fcmp fast oeq float %319, 0.000000e+00
  br i1 %320, label %324, label %321, !dx.controlflow.hints !37

; <label>:321                                     ; preds = %317
  %322 = call float @dx.op.binary.f32(i32 36, float 0x47EFFFFFE0000000, float %318)  ; FMin(a,b)
  %323 = call float @dx.op.binary.f32(i32 35, float -1.000000e+00, float %319)  ; FMax(a,b)
  br label %324

; <label>:324                                     ; preds = %321, %317
  %325 = phi i32 [ 1, %321 ], [ 0, %317 ]
  %326 = phi float [ %323, %321 ], [ -1.000000e+00, %317 ]
  %327 = phi float [ %322, %321 ], [ 0x47EFFFFFE0000000, %317 ]
  %328 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %329 = extractvalue %dx.types.CBufRet.i32 %328, 3
  %330 = icmp eq i32 %329, 0
  %331 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 31)  ; CBufferLoadLegacy(handle,regIndex)
  %332 = extractvalue %dx.types.CBufRet.f32 %331, 2
  %333 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 32)  ; CBufferLoadLegacy(handle,regIndex)
  %334 = extractvalue %dx.types.CBufRet.f32 %333, 2
  %335 = fsub fast float %332, %240
  %336 = fadd fast float %335, %334
  br i1 %330, label %344, label %337, !dx.controlflow.hints !38

; <label>:337                                     ; preds = %324
  %338 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %237, float %239, float %336)  ; Dot3(ax,ay,az,bx,by,bz)
  %339 = fmul fast float %308, %338
  %340 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %237, float %239, float %335)  ; Dot3(ax,ay,az,bx,by,bz)
  %341 = fmul fast float %308, %340
  %342 = call float @dx.op.binary.f32(i32 36, float %339, float %341)  ; FMin(a,b)
  %343 = call float @dx.op.binary.f32(i32 35, float %339, float %341)  ; FMax(a,b)
  br label %377

; <label>:344                                     ; preds = %324
  %345 = fdiv fast float 1.000000e+00, %281
  %346 = fdiv fast float 1.000000e+00, %282
  %347 = fdiv fast float 1.000000e+00, %283
  %348 = extractvalue %dx.types.CBufRet.f32 %331, 0
  %349 = extractvalue %dx.types.CBufRet.f32 %331, 1
  %350 = extractvalue %dx.types.CBufRet.f32 %333, 0
  %351 = extractvalue %dx.types.CBufRet.f32 %333, 1
  %352 = fsub fast float %348, %236
  %353 = fmul fast float %352, %345
  %354 = fadd fast float %352, %350
  %355 = fmul fast float %354, %345
  %356 = call float @dx.op.binary.f32(i32 36, float %353, float %355)  ; FMin(a,b)
  %357 = call float @dx.op.binary.f32(i32 35, float %353, float %355)  ; FMax(a,b)
  %358 = fsub fast float %349, %238
  %359 = fmul fast float %358, %346
  %360 = fadd fast float %358, %351
  %361 = fmul fast float %360, %346
  %362 = call float @dx.op.binary.f32(i32 36, float %359, float %361)  ; FMin(a,b)
  %363 = call float @dx.op.binary.f32(i32 35, float %356, float %362)  ; FMax(a,b)
  %364 = call float @dx.op.binary.f32(i32 35, float %359, float %361)  ; FMax(a,b)
  %365 = call float @dx.op.binary.f32(i32 36, float %357, float %364)  ; FMin(a,b)
  %366 = fmul fast float %335, %347
  %367 = fmul fast float %336, %347
  %368 = call float @dx.op.binary.f32(i32 36, float %366, float %367)  ; FMin(a,b)
  %369 = call float @dx.op.binary.f32(i32 35, float %363, float %368)  ; FMax(a,b)
  %370 = call float @dx.op.binary.f32(i32 35, float %366, float %367)  ; FMax(a,b)
  %371 = call float @dx.op.binary.f32(i32 36, float %365, float %370)  ; FMin(a,b)
  %372 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %369)  ; FMax(a,b)
  %373 = fcmp fast ult float %371, %372
  br i1 %373, label %377, label %374, !dx.controlflow.hints !39

; <label>:374                                     ; preds = %344
  %375 = call float @dx.op.binary.f32(i32 36, float %369, float %371)  ; FMin(a,b)
  %376 = call float @dx.op.binary.f32(i32 35, float %369, float %371)  ; FMax(a,b)
  br label %377

; <label>:377                                     ; preds = %374, %344, %337
  %378 = phi float [ %342, %337 ], [ %375, %374 ], [ 0.000000e+00, %344 ]
  %379 = phi float [ %343, %337 ], [ %376, %374 ], [ 0.000000e+00, %344 ]
  %380 = fcmp fast oeq float %379, 0.000000e+00
  br i1 %380, label %384, label %381, !dx.controlflow.hints !40

; <label>:381                                     ; preds = %377
  %382 = call float @dx.op.binary.f32(i32 36, float %327, float %378)  ; FMin(a,b)
  %383 = call float @dx.op.binary.f32(i32 35, float %326, float %379)  ; FMax(a,b)
  br label %384

; <label>:384                                     ; preds = %381, %377
  %385 = phi i32 [ 1, %381 ], [ 0, %377 ]
  %386 = phi float [ %383, %381 ], [ %326, %377 ]
  %387 = phi float [ %382, %381 ], [ %327, %377 ]
  %388 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %389 = extractvalue %dx.types.CBufRet.f32 %388, 2
  %390 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %391 = extractvalue %dx.types.CBufRet.f32 %390, 3
  %392 = fsub fast float %389, %240
  %393 = fadd fast float %392, %391
  %394 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %237, float %239, float %393)  ; Dot3(ax,ay,az,bx,by,bz)
  %395 = fmul fast float %308, %394
  %396 = fcmp fast olt float %395, 0.000000e+00
  %397 = and i1 %311, %396
  br i1 %397, label %402, label %398, !dx.controlflow.hints !41

; <label>:398                                     ; preds = %384
  %399 = fcmp fast olt float %283, 0.000000e+00
  br i1 %399, label %400, label %402, !dx.controlflow.hints !42

; <label>:400                                     ; preds = %398
  %401 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %395)  ; FMax(a,b)
  br label %402

; <label>:402                                     ; preds = %400, %398, %384
  %403 = phi float [ 0.000000e+00, %384 ], [ %401, %400 ], [ 0.000000e+00, %398 ]
  %404 = phi float [ 0.000000e+00, %384 ], [ 0x47EFFFFFE0000000, %400 ], [ %395, %398 ]
  %405 = fcmp fast oeq float %404, 0.000000e+00
  br i1 %405, label %409, label %406, !dx.controlflow.hints !43

; <label>:406                                     ; preds = %402
  %407 = call float @dx.op.binary.f32(i32 36, float %387, float %403)  ; FMin(a,b)
  %408 = call float @dx.op.binary.f32(i32 35, float %386, float %404)  ; FMax(a,b)
  br label %409

; <label>:409                                     ; preds = %406, %402
  %410 = phi i32 [ 1, %406 ], [ 0, %402 ]
  %411 = phi float [ %408, %406 ], [ %386, %402 ]
  %412 = phi float [ %407, %406 ], [ %387, %402 ]
  %413 = call float @dx.op.binary.f32(i32 36, float %302, float %411)  ; FMin(a,b)
  %414 = call float @dx.op.binary.f32(i32 35, float %279, float %412)  ; FMax(a,b)
  %415 = extractvalue %dx.types.CBufRet.f32 %303, 0
  %416 = fmul fast float %225, 2.000000e+00
  %417 = fadd fast float %416, -1.000000e+00
  %418 = fmul fast float %415, %417
  %419 = fadd fast float %418, %414
  %420 = fcmp fast olt float %419, %413
  %421 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %422 = extractvalue %dx.types.CBufRet.f32 %421, 2
  %423 = fcmp fast olt float %422, 1.000000e+00
  %424 = and i1 %423, %420
  br i1 %424, label %425, label %1664

; <label>:425                                     ; preds = %409
  %426 = fmul fast float %419, %283
  %427 = fadd fast float %426, %240
  %428 = fmul fast float %419, %282
  %429 = fadd fast float %428, %238
  %430 = fmul fast float %419, %281
  %431 = fadd fast float %430, %236
  br label %432

; <label>:432                                     ; preds = %1638, %425
  %433 = phi i32 [ %1640, %1638 ], [ undef, %425 ]
  %434 = phi float [ %1641, %1638 ], [ undef, %425 ]
  %435 = phi i32 [ %703, %1638 ], [ undef, %425 ]
  %436 = phi float [ %705, %1638 ], [ undef, %425 ]
  %437 = phi float [ %1642, %1638 ], [ 0.000000e+00, %425 ]
  %438 = phi float [ %1643, %1638 ], [ 1.000000e+00, %425 ]
  %439 = phi float [ %1644, %1638 ], [ 0.000000e+00, %425 ]
  %440 = phi float [ %1645, %1638 ], [ 0.000000e+00, %425 ]
  %441 = phi float [ %1646, %1638 ], [ 0.000000e+00, %425 ]
  %442 = phi float [ %1656, %1638 ], [ %431, %425 ]
  %443 = phi float [ %1657, %1638 ], [ %429, %425 ]
  %444 = phi float [ %1658, %1638 ], [ %427, %425 ]
  %445 = phi float [ %1639, %1638 ], [ %419, %425 ]
  %446 = phi float [ %1647, %1638 ], [ 0.000000e+00, %425 ]
  %447 = phi float [ %1648, %1638 ], [ 0.000000e+00, %425 ]
  %448 = phi float [ %1649, %1638 ], [ 0.000000e+00, %425 ]
  %449 = phi float [ %1650, %1638 ], [ 0.000000e+00, %425 ]
  %450 = phi float [ %1651, %1638 ], [ 0.000000e+00, %425 ]
  %451 = phi i32 [ %1652, %1638 ], [ 0, %425 ]
  %452 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %453 = extractvalue %dx.types.CBufRet.f32 %452, 0
  %454 = icmp eq i32 %325, 0
  br i1 %454, label %467, label %455, !dx.controlflow.hints !44

; <label>:455                                     ; preds = %432
  %456 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %457 = extractvalue %dx.types.CBufRet.f32 %456, 3
  %458 = extractvalue %dx.types.CBufRet.f32 %456, 2
  %459 = fmul fast float %457, %445
  %460 = fdiv fast float %459, %413
  %461 = fadd fast float %460, 1.000000e+00
  %462 = call float @dx.op.unary.f32(i32 23, float %461)  ; Log(value)
  %463 = call float @dx.op.binary.f32(i32 36, float 1.000000e+00, float %462)  ; FMin(a,b)
  %464 = fmul fast float %458, %413
  %465 = fmul fast float %464, %463
  %466 = call float @dx.op.binary.f32(i32 36, float 0x47EFFFFFE0000000, float %465)  ; FMin(a,b)
  br label %467

; <label>:467                                     ; preds = %455, %432
  %468 = phi float [ %466, %455 ], [ 0x47EFFFFFE0000000, %432 ]
  %469 = icmp eq i32 %385, 0
  br i1 %469, label %526, label %470, !dx.controlflow.hints !45

; <label>:470                                     ; preds = %467
  %471 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 35)  ; CBufferLoadLegacy(handle,regIndex)
  %472 = extractvalue %dx.types.CBufRet.f32 %471, 0
  %473 = extractvalue %dx.types.CBufRet.f32 %471, 1
  %474 = extractvalue %dx.types.CBufRet.f32 %471, 2
  %475 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 31)  ; CBufferLoadLegacy(handle,regIndex)
  %476 = extractvalue %dx.types.CBufRet.f32 %475, 0
  %477 = extractvalue %dx.types.CBufRet.f32 %475, 1
  %478 = extractvalue %dx.types.CBufRet.f32 %475, 2
  %479 = fsub fast float %442, %476
  %480 = fsub fast float %443, %477
  %481 = fsub fast float %444, %478
  %482 = fmul fast float %479, %472
  %483 = fmul fast float %480, %473
  %484 = fmul fast float %481, %474
  %485 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %486 = extractvalue %dx.types.CBufRet.i32 %485, 3
  %487 = icmp eq i32 %486, 0
  br i1 %487, label %491, label %488, !dx.controlflow.hints !46

; <label>:488                                     ; preds = %470
  %489 = call float @dx.op.unary.f32(i32 22, float %482)  ; Frc(value)
  %490 = call float @dx.op.unary.f32(i32 22, float %483)  ; Frc(value)
  br label %491

; <label>:491                                     ; preds = %488, %470
  %492 = phi float [ %489, %488 ], [ %482, %470 ]
  %493 = phi float [ %490, %488 ], [ %483, %470 ]
  %494 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %16, float %492, float %493, float %484, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %495 = extractvalue %dx.types.ResRet.f32 %494, 0
  %496 = fmul fast float %495, 2.000000e+00
  %497 = fadd fast float %496, -1.000000e+00
  %498 = extractvalue %dx.types.CBufRet.f32 %471, 3
  %499 = fmul fast float %497, %498
  %500 = fcmp fast olt float %499, 0.000000e+00
  %501 = fcmp fast oge float %484, 0.000000e+00
  %502 = fcmp fast ole float %484, 1.000000e+00
  br i1 %487, label %505, label %503, !dx.controlflow.hints !47

; <label>:503                                     ; preds = %491
  %504 = and i1 %501, %502
  br label %515

; <label>:505                                     ; preds = %491
  %506 = fcmp fast oge float %482, 0.000000e+00
  %507 = fcmp fast oge float %483, 0.000000e+00
  %508 = and i1 %506, %507
  %509 = and i1 %501, %508
  %510 = fcmp fast ole float %482, 1.000000e+00
  %511 = fcmp fast ole float %483, 1.000000e+00
  %512 = and i1 %510, %511
  %513 = and i1 %502, %512
  %514 = and i1 %509, %513
  br label %515

; <label>:515                                     ; preds = %505, %503
  %516 = phi i1 [ %504, %503 ], [ %514, %505 ]
  %517 = and i1 %500, %516
  %518 = call float @dx.op.unary.f32(i32 6, float %499)  ; FAbs(value)
  %519 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %520 = extractvalue %dx.types.CBufRet.f32 %519, 1
  %521 = extractvalue %dx.types.CBufRet.f32 %519, 0
  %522 = call float @dx.op.binary.f32(i32 35, float %518, float %521)  ; FMax(a,b)
  %523 = select i1 %517, float %520, float %522
  %524 = zext i1 %517 to i32
  %525 = call float @dx.op.binary.f32(i32 36, float 0x47EFFFFFE0000000, float %523)  ; FMin(a,b)
  br label %526

; <label>:526                                     ; preds = %515, %467
  %527 = phi i32 [ %524, %515 ], [ 0, %467 ]
  %528 = phi float [ %525, %515 ], [ 0x47EFFFFFE0000000, %467 ]
  %529 = icmp eq i32 %410, 0
  br i1 %529, label %702, label %530, !dx.controlflow.hints !48

; <label>:530                                     ; preds = %526
  %531 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %532 = extractvalue %dx.types.CBufRet.i32 %531, 1
  %533 = and i32 %532, 1
  %534 = icmp eq i32 %533, 0
  br i1 %534, label %535, label %692, !dx.controlflow.hints !49

; <label>:535                                     ; preds = %530
  %536 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 204)  ; CBufferLoadLegacy(handle,regIndex)
  %537 = extractvalue %dx.types.CBufRet.f32 %536, 2
  %538 = extractvalue %dx.types.CBufRet.f32 %536, 3
  %539 = fmul fast float %537, %442
  %540 = fmul fast float %538, %443
  %541 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 205)  ; CBufferLoadLegacy(handle,regIndex)
  %542 = extractvalue %dx.types.CBufRet.f32 %541, 0
  %543 = extractvalue %dx.types.CBufRet.f32 %541, 1
  %544 = fadd fast float %539, %542
  %545 = fadd fast float %540, %543
  %546 = call float @dx.op.unary.f32(i32 7, float %544)  ; Saturate(value)
  %547 = call float @dx.op.unary.f32(i32 7, float %545)  ; Saturate(value)
  %548 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %18, float %546, float %547, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %549 = extractvalue %dx.types.ResRet.f32 %548, 0
  %550 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %551 = extractvalue %dx.types.CBufRet.f32 %550, 0
  %552 = fmul fast float %551, %549
  %553 = fsub fast float %544, %546
  %554 = fsub fast float %545, %547
  %555 = extractvalue %dx.types.CBufRet.f32 %536, 0
  %556 = extractvalue %dx.types.CBufRet.f32 %536, 1
  %557 = fmul fast float %555, %553
  %558 = fmul fast float %556, %554
  %559 = fmul fast float %557, %557
  %560 = fmul fast float %558, %558
  %561 = fadd fast float %559, %560
  %562 = call float @dx.op.unary.f32(i32 24, float %561)  ; Sqrt(value)
  %563 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %564 = extractvalue %dx.types.CBufRet.f32 %563, 3
  %565 = fmul fast float %564, %562
  %566 = call float @dx.op.unary.f32(i32 7, float %565)  ; Saturate(value)
  %567 = extractvalue %dx.types.CBufRet.f32 %563, 2
  %568 = fsub fast float %567, %552
  %569 = fmul fast float %568, %566
  %570 = extractvalue %dx.types.CBufRet.f32 %550, 1
  %571 = fsub fast float %444, %552
  %572 = fsub fast float %571, %570
  %573 = fsub fast float %572, %569
  %574 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %575 = extractvalue %dx.types.CBufRet.f32 %574, 2
  %576 = fsub fast float %573, %575
  %577 = fcmp fast olt float %576, 0.000000e+00
  %578 = call float @dx.op.unary.f32(i32 6, float %576)  ; FAbs(value)
  %579 = extractvalue %dx.types.CBufRet.i32 %531, 0
  %580 = icmp eq i32 %579, 0
  br i1 %580, label %634, label %581

; <label>:581                                     ; preds = %535
  br label %582

; <label>:582                                     ; preds = %621, %581
  %583 = phi i32 [ %627, %621 ], [ 1, %581 ]
  %584 = phi float [ %629, %621 ], [ 0x47EFFFFFE0000000, %581 ]
  %585 = phi i32 [ %630, %621 ], [ 0, %581 ]
  %586 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %587 = extractvalue %dx.types.CBufRet.f32 %586, 1
  %588 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %589 = extractvalue %dx.types.CBufRet.i32 %588, 1
  %590 = and i32 %589, 8
  %591 = icmp eq i32 %590, 0
  %592 = fcmp fast ogt float %587, %573
  %593 = or i1 %592, %591
  %594 = add i32 %585, 171
  %595 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 %594)  ; CBufferLoadLegacy(handle,regIndex)
  %596 = extractvalue %dx.types.CBufRet.f32 %595, 0
  %597 = extractvalue %dx.types.CBufRet.f32 %595, 1
  %598 = extractvalue %dx.types.CBufRet.f32 %595, 2
  br i1 %593, label %599, label %605, !dx.controlflow.hints !50

; <label>:599                                     ; preds = %582
  %600 = fsub fast float %596, %442
  %601 = fsub fast float %597, %443
  %602 = fmul fast float %600, %600
  %603 = fmul fast float %601, %601
  %604 = fadd fast float %602, %603
  br label %621

; <label>:605                                     ; preds = %582
  %606 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %607 = extractvalue %dx.types.CBufRet.f32 %606, 2
  %608 = extractvalue %dx.types.CBufRet.f32 %586, 2
  %609 = fmul fast float %608, %607
  %610 = fsub fast float %609, %587
  %611 = fdiv fast float %598, %610
  %612 = fsub fast float %442, %596
  %613 = fsub fast float %443, %597
  %614 = fsub fast float %573, %587
  %615 = fmul fast float %611, %614
  %616 = fmul fast float %612, %612
  %617 = fmul fast float %613, %613
  %618 = fadd fast float %616, %617
  %619 = fmul fast float %615, %615
  %620 = fadd fast float %618, %619
  br label %621

; <label>:621                                     ; preds = %605, %599
  %622 = phi float [ %604, %599 ], [ %620, %605 ]
  %623 = call float @dx.op.unary.f32(i32 24, float %622)  ; Sqrt(value)
  %624 = fsub float %598, %623
  %625 = fcmp fast olt float %624, 0.000000e+00
  %626 = zext i1 %625 to i32
  %627 = and i32 %626, %583
  %628 = call float @dx.op.unary.f32(i32 6, float %624)  ; FAbs(value)
  %629 = call float @dx.op.binary.f32(i32 36, float %584, float %628)  ; FMin(a,b)
  %630 = add i32 %585, 1
  %631 = extractvalue %dx.types.CBufRet.i32 %588, 0
  %632 = icmp ult i32 %630, %631
  br i1 %632, label %582, label %633

; <label>:633                                     ; preds = %621
  br label %634

; <label>:634                                     ; preds = %633, %535
  %635 = phi i32 [ 1, %535 ], [ %627, %633 ]
  %636 = phi float [ 0x47EFFFFFE0000000, %535 ], [ %629, %633 ]
  br label %637

; <label>:637                                     ; preds = %637, %634
  %638 = phi i32 [ %635, %634 ], [ %677, %637 ]
  %639 = phi float [ 0x47EFFFFFE0000000, %634 ], [ %679, %637 ]
  %640 = phi i32 [ 0, %634 ], [ %680, %637 ]
  %641 = add nuw nsw i32 %640, 191
  %642 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 %641)  ; CBufferLoadLegacy(handle,regIndex)
  %643 = extractvalue %dx.types.CBufRet.f32 %642, 0
  %644 = extractvalue %dx.types.CBufRet.f32 %642, 1
  %645 = extractvalue %dx.types.CBufRet.f32 %642, 2
  %646 = add nuw nsw i32 %640, 195
  %647 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 %646)  ; CBufferLoadLegacy(handle,regIndex)
  %648 = extractvalue %dx.types.CBufRet.f32 %647, 0
  %649 = extractvalue %dx.types.CBufRet.f32 %647, 1
  %650 = extractvalue %dx.types.CBufRet.f32 %647, 2
  %651 = fsub fast float %442, %643
  %652 = fsub fast float %443, %644
  %653 = fsub fast float %573, %645
  %654 = call float @dx.op.unary.f32(i32 6, float %651)  ; FAbs(value)
  %655 = call float @dx.op.unary.f32(i32 6, float %652)  ; FAbs(value)
  %656 = call float @dx.op.unary.f32(i32 6, float %653)  ; FAbs(value)
  %657 = fsub fast float %654, %648
  %658 = fsub fast float %655, %649
  %659 = fsub fast float %656, %650
  %660 = call float @dx.op.binary.f32(i32 35, float %657, float 0.000000e+00)  ; FMax(a,b)
  %661 = call float @dx.op.binary.f32(i32 35, float %658, float 0.000000e+00)  ; FMax(a,b)
  %662 = call float @dx.op.binary.f32(i32 35, float %659, float 0.000000e+00)  ; FMax(a,b)
  %663 = fmul fast float %660, %660
  %664 = fmul fast float %661, %661
  %665 = fadd fast float %664, %663
  %666 = fmul fast float %662, %662
  %667 = fadd fast float %665, %666
  %668 = call float @dx.op.unary.f32(i32 24, float %667)  ; Sqrt(value)
  %669 = call float @dx.op.binary.f32(i32 35, float %658, float %659)  ; FMax(a,b)
  %670 = call float @dx.op.binary.f32(i32 35, float %657, float %669)  ; FMax(a,b)
  %671 = call float @dx.op.binary.f32(i32 36, float %670, float 0.000000e+00)  ; FMin(a,b)
  %672 = fadd fast float %671, %668
  %673 = fsub fast float -0.000000e+00, %672
  %674 = fcmp ogt float %672, -0.000000e+00
  %675 = icmp ne i32 %638, 0
  %676 = and i1 %675, %674
  %677 = zext i1 %676 to i32
  %678 = call float @dx.op.unary.f32(i32 6, float %673)  ; FAbs(value)
  %679 = call float @dx.op.binary.f32(i32 36, float %639, float %678)  ; FMin(a,b)
  %680 = add nuw nsw i32 %640, 1
  %681 = icmp eq i32 %680, 4
  br i1 %681, label %682, label %637

; <label>:682                                     ; preds = %637
  %683 = call float @dx.op.binary.f32(i32 36, float %578, float %679)  ; FMin(a,b)
  %684 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %685 = extractvalue %dx.types.CBufRet.i32 %684, 1
  %686 = and i32 %685, 2
  %687 = icmp ne i32 %686, 0
  %688 = xor i1 %676, %687
  %689 = call float @dx.op.binary.f32(i32 36, float %683, float %636)  ; FMin(a,b)
  %690 = and i1 %688, %577
  %691 = zext i1 %690 to i32
  br label %692

; <label>:692                                     ; preds = %682, %530
  %693 = phi i32 [ %435, %530 ], [ %691, %682 ]
  %694 = phi float [ 0.000000e+00, %530 ], [ %689, %682 ]
  %695 = phi float [ %444, %530 ], [ %573, %682 ]
  %696 = icmp ne i32 %693, 0
  %697 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %698 = extractvalue %dx.types.CBufRet.f32 %697, 3
  %699 = call float @dx.op.binary.f32(i32 35, float %694, float %698)  ; FMax(a,b)
  %700 = call float @dx.op.binary.f32(i32 36, float %468, float %699)  ; FMin(a,b)
  %701 = zext i1 %696 to i32
  br label %702

; <label>:702                                     ; preds = %692, %526
  %703 = phi i32 [ %693, %692 ], [ %435, %526 ]
  %704 = phi i32 [ %701, %692 ], [ 0, %526 ]
  %705 = phi float [ %695, %692 ], [ %436, %526 ]
  %706 = phi float [ %700, %692 ], [ %468, %526 ]
  %707 = extractvalue %dx.types.CBufRet.f32 %452, 2
  %708 = fmul fast float %707, %445
  %709 = call float @dx.op.unary.f32(i32 23, float %708)  ; Log(value)
  %710 = fmul fast float %709, 0x3FE62E4300000000
  %711 = call float @dx.op.binary.f32(i32 35, float %710, float 1.000000e+00)  ; FMax(a,b)
  %712 = fmul fast float %711, %706
  %713 = call float @dx.op.binary.f32(i32 36, float %712, float %528)  ; FMin(a,b)
  %714 = call float @dx.op.binary.f32(i32 35, float %713, float %453)  ; FMax(a,b)
  %715 = fadd fast float %413, 0x3F1A36E2E0000000
  %716 = fsub fast float %715, %445
  %717 = call float @dx.op.binary.f32(i32 36, float %716, float %714)  ; FMin(a,b)
  br i1 %454, label %774, label %718, !dx.controlflow.hints !51

; <label>:718                                     ; preds = %702
  %719 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 399)  ; CBufferLoadLegacy(handle,regIndex)
  %720 = extractvalue %dx.types.CBufRet.f32 %719, 0
  %721 = fsub fast float -0.000000e+00, %442
  %722 = fsub fast float -0.000000e+00, %443
  %723 = fsub fast float %720, %444
  %724 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %721, float %722, float %723)  ; Dot3(ax,ay,az,bx,by,bz)
  %725 = fmul fast float %308, %724
  %726 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %725)  ; FMax(a,b)
  %727 = fcmp fast olt float %283, 0.000000e+00
  %728 = call float @dx.op.binary.f32(i32 36, float %717, float %726)  ; FMin(a,b)
  br i1 %727, label %730, label %729, !dx.controlflow.hints !52

; <label>:729                                     ; preds = %718
  br label %730

; <label>:730                                     ; preds = %729, %718
  %731 = phi float [ 0.000000e+00, %729 ], [ %728, %718 ]
  %732 = phi float [ %728, %729 ], [ %717, %718 ]
  %733 = phi float [ %728, %729 ], [ 0.000000e+00, %718 ]
  %734 = phi float [ %717, %729 ], [ %728, %718 ]
  %735 = fsub fast float %732, %731
  %736 = extractvalue %dx.types.CBufRet.f32 %719, 1
  %737 = call float @dx.op.binary.f32(i32 36, float 0xBF0FFB4800000000, float %736)  ; FMin(a,b)
  %738 = fsub fast float %444, %720
  %739 = fmul fast float %737, 0x3FF7154760000000
  %740 = fmul fast float %739, %738
  %741 = call float @dx.op.unary.f32(i32 21, float %740)  ; Exp(value)
  %742 = fmul fast float %283, 0x3FF7154760000000
  %743 = fmul fast float %742, %734
  %744 = fmul fast float %743, %737
  %745 = call float @dx.op.unary.f32(i32 21, float %744)  ; Exp(value)
  %746 = fmul fast float %742, %733
  %747 = fmul fast float %746, %737
  %748 = call float @dx.op.unary.f32(i32 21, float %747)  ; Exp(value)
  %749 = fsub fast float %745, %748
  %750 = fmul fast float %749, %741
  %751 = fmul fast float %737, %283
  %752 = fdiv fast float %750, %751
  %753 = fadd fast float %735, %752
  %754 = call float @dx.op.unary.f32(i32 6, float %283)  ; FAbs(value)
  %755 = fcmp fast olt float %754, 0x3F0FFB4800000000
  %756 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %738)  ; FMax(a,b)
  %757 = fmul fast float %756, 0x3FF7154760000000
  %758 = fmul fast float %757, %736
  %759 = call float @dx.op.unary.f32(i32 21, float %758)  ; Exp(value)
  %760 = fmul fast float %759, %717
  %761 = select i1 %755, float %760, float %753
  %762 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 396)  ; CBufferLoadLegacy(handle,regIndex)
  %763 = extractvalue %dx.types.CBufRet.f32 %762, 1
  %764 = fmul fast float %761, %763
  %765 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 395)  ; CBufferLoadLegacy(handle,regIndex)
  %766 = extractvalue %dx.types.CBufRet.f32 %765, 0
  %767 = extractvalue %dx.types.CBufRet.f32 %765, 1
  %768 = extractvalue %dx.types.CBufRet.f32 %765, 2
  %769 = extractvalue %dx.types.CBufRet.f32 %762, 2
  %770 = fmul fast float %766, %764
  %771 = fmul fast float %767, %764
  %772 = fmul fast float %768, %764
  %773 = fmul fast float %769, %764
  br label %774

; <label>:774                                     ; preds = %730, %702
  %775 = phi float [ %764, %730 ], [ 0.000000e+00, %702 ]
  %776 = phi float [ %773, %730 ], [ 0.000000e+00, %702 ]
  %777 = phi float [ %770, %730 ], [ 0.000000e+00, %702 ]
  %778 = phi float [ %771, %730 ], [ 0.000000e+00, %702 ]
  %779 = phi float [ %772, %730 ], [ 0.000000e+00, %702 ]
  %780 = icmp eq i32 %527, 0
  br i1 %780, label %975, label %781, !dx.controlflow.hints !53

; <label>:781                                     ; preds = %774
  %782 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %783 = extractvalue %dx.types.CBufRet.f32 %782, 3
  %784 = fmul fast float %783, %445
  %785 = fcmp fast oeq float %784, 0.000000e+00
  br i1 %785, label %800, label %786, !dx.controlflow.hints !54

; <label>:786                                     ; preds = %781
  %787 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 41)  ; CBufferLoadLegacy(handle,regIndex)
  %788 = extractvalue %dx.types.CBufRet.f32 %787, 3
  %789 = fmul fast float %788, %784
  %790 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 33)  ; CBufferLoadLegacy(handle,regIndex)
  %791 = extractvalue %dx.types.CBufRet.f32 %790, 0
  %792 = extractvalue %dx.types.CBufRet.f32 %790, 1
  %793 = extractvalue %dx.types.CBufRet.f32 %790, 2
  %794 = fmul fast float %791, %789
  %795 = fmul fast float %792, %789
  %796 = fmul fast float %793, %789
  %797 = call float @dx.op.unary.f32(i32 23, float %794)  ; Log(value)
  %798 = call float @dx.op.unary.f32(i32 23, float %795)  ; Log(value)
  %799 = call float @dx.op.unary.f32(i32 23, float %796)  ; Log(value)
  br label %800

; <label>:800                                     ; preds = %786, %781
  %801 = phi float [ %797, %786 ], [ 0.000000e+00, %781 ]
  %802 = phi float [ %798, %786 ], [ 0.000000e+00, %781 ]
  %803 = phi float [ %799, %786 ], [ 0.000000e+00, %781 ]
  %804 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 35)  ; CBufferLoadLegacy(handle,regIndex)
  %805 = extractvalue %dx.types.CBufRet.f32 %804, 0
  %806 = extractvalue %dx.types.CBufRet.f32 %804, 1
  %807 = extractvalue %dx.types.CBufRet.f32 %804, 2
  %808 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 31)  ; CBufferLoadLegacy(handle,regIndex)
  %809 = extractvalue %dx.types.CBufRet.f32 %808, 0
  %810 = extractvalue %dx.types.CBufRet.f32 %808, 1
  %811 = extractvalue %dx.types.CBufRet.f32 %808, 2
  %812 = fsub fast float %442, %809
  %813 = fsub fast float %443, %810
  %814 = fsub fast float %444, %811
  %815 = fmul fast float %812, %805
  %816 = fmul fast float %813, %806
  %817 = fmul fast float %814, %807
  %818 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 29)  ; CBufferLoadLegacy(handle,regIndex)
  %819 = extractvalue %dx.types.CBufRet.i32 %818, 0
  %820 = extractvalue %dx.types.CBufRet.i32 %818, 1
  %821 = uitofp i32 %819 to float
  %822 = uitofp i32 %820 to float
  %823 = fmul fast float %815, %821
  %824 = fmul fast float %816, %822
  %825 = fadd fast float %823, 5.000000e-01
  %826 = fadd fast float %824, 5.000000e-01
  %827 = call float @dx.op.unary.f32(i32 22, float %825)  ; Frc(value)
  %828 = call float @dx.op.unary.f32(i32 22, float %826)  ; Frc(value)
  %829 = call float @dx.op.unary.f32(i32 27, float %825)  ; Round_ni(value)
  %830 = call float @dx.op.unary.f32(i32 27, float %826)  ; Round_ni(value)
  %831 = fadd fast float %829, 1.000000e+00
  %832 = fadd fast float %830, 1.000000e+00
  %833 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 30)  ; CBufferLoadLegacy(handle,regIndex)
  %834 = extractvalue %dx.types.CBufRet.f32 %833, 0
  %835 = extractvalue %dx.types.CBufRet.f32 %833, 1
  %836 = fmul fast float %834, %831
  %837 = fmul fast float %835, %832
  %838 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %10, %dx.types.Handle %17, float %836, float %837, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %839 = extractvalue %dx.types.ResRet.f32 %838, 0
  %840 = extractvalue %dx.types.ResRet.f32 %838, 1
  %841 = extractvalue %dx.types.ResRet.f32 %838, 2
  %842 = extractvalue %dx.types.ResRet.f32 %838, 3
  %843 = extractvalue %dx.types.CBufRet.i32 %818, 2
  %844 = extractvalue %dx.types.CBufRet.f32 %833, 2
  %845 = uitofp i32 %843 to float
  %846 = fadd fast float %845, -1.000000e+00
  %847 = fmul fast float %846, %839
  %848 = fmul fast float %846, %840
  %849 = fmul fast float %846, %841
  %850 = fmul fast float %846, %842
  %851 = fadd fast float %847, 5.000000e-01
  %852 = fadd fast float %848, 5.000000e-01
  %853 = fadd fast float %849, 5.000000e-01
  %854 = fadd fast float %850, 5.000000e-01
  %855 = fptoui float %851 to i32
  %856 = fptoui float %852 to i32
  %857 = fptoui float %853 to i32
  %858 = fptoui float %854 to i32
  %859 = uitofp i32 %855 to float
  %860 = uitofp i32 %856 to float
  %861 = uitofp i32 %857 to float
  %862 = uitofp i32 %858 to float
  %863 = fadd fast float %859, 5.000000e-01
  %864 = fadd fast float %860, 5.000000e-01
  %865 = fadd fast float %861, 5.000000e-01
  %866 = fadd fast float %862, 5.000000e-01
  %867 = fmul fast float %863, %844
  %868 = fmul fast float %864, %844
  %869 = fmul fast float %865, %844
  %870 = fmul fast float %866, %844
  %871 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %18, float %867, float %817, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %872 = extractvalue %dx.types.ResRet.f32 %871, 0
  %873 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %18, float %868, float %817, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %874 = extractvalue %dx.types.ResRet.f32 %873, 0
  %875 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %18, float %869, float %817, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %876 = extractvalue %dx.types.ResRet.f32 %875, 0
  %877 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %18, float %870, float %817, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %878 = extractvalue %dx.types.ResRet.f32 %877, 0
  %879 = fsub fast float %876, %878
  %880 = fmul fast float %879, %827
  %881 = fadd fast float %880, %878
  %882 = fsub fast float %874, %872
  %883 = fmul fast float %882, %827
  %884 = fadd fast float %883, %872
  %885 = fsub fast float %884, %881
  %886 = fmul fast float %885, %828
  %887 = fadd fast float %886, %881
  %888 = fcmp fast ogt float %887, 0.000000e+00
  br i1 %888, label %889, label %957, !dx.controlflow.hints !55

; <label>:889                                     ; preds = %800
  %890 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 33)  ; CBufferLoadLegacy(handle,regIndex)
  %891 = extractvalue %dx.types.CBufRet.f32 %890, 0
  %892 = extractvalue %dx.types.CBufRet.f32 %890, 1
  %893 = extractvalue %dx.types.CBufRet.f32 %890, 2
  %894 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 41)  ; CBufferLoadLegacy(handle,regIndex)
  %895 = extractvalue %dx.types.CBufRet.f32 %894, 0
  %896 = extractvalue %dx.types.CBufRet.f32 %894, 1
  %897 = extractvalue %dx.types.CBufRet.f32 %894, 2
  %898 = fmul fast float %813, %805
  %899 = fmul fast float %814, %805
  %900 = fadd fast float %815, %895
  %901 = fadd fast float %898, %896
  %902 = fadd fast float %899, %897
  %903 = fmul fast float %900, %891
  %904 = fmul fast float %901, %891
  %905 = fmul fast float %902, %891
  %906 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %15, float %903, float %904, float %905, float undef, i32 0, i32 0, i32 0, float %801)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %907 = extractvalue %dx.types.ResRet.f32 %906, 0
  %908 = fmul fast float %900, %892
  %909 = fmul fast float %901, %892
  %910 = fmul fast float %902, %892
  %911 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %15, float %908, float %909, float %910, float undef, i32 0, i32 0, i32 0, float %802)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %912 = extractvalue %dx.types.ResRet.f32 %911, 1
  %913 = fmul fast float %900, %893
  %914 = fmul fast float %901, %893
  %915 = fmul fast float %902, %893
  %916 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %15, float %913, float %914, float %915, float undef, i32 0, i32 0, i32 0, float %803)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %917 = extractvalue %dx.types.ResRet.f32 %916, 2
  %918 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 34)  ; CBufferLoadLegacy(handle,regIndex)
  %919 = extractvalue %dx.types.CBufRet.f32 %918, 1
  %920 = fmul fast float %912, %907
  %921 = fmul fast float %920, %917
  %922 = call float @dx.op.unary.f32(i32 23, float %921)  ; Log(value)
  %923 = fmul fast float %922, %919
  %924 = call float @dx.op.unary.f32(i32 21, float %923)  ; Exp(value)
  %925 = extractvalue %dx.types.CBufRet.f32 %918, 2
  %926 = fmul fast float %887, %887
  %927 = fmul fast float %926, %924
  %928 = fmul fast float %927, %925
  %929 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 32)  ; CBufferLoadLegacy(handle,regIndex)
  %930 = extractvalue %dx.types.CBufRet.f32 %929, 3
  %931 = fmul fast float %930, %928
  %932 = bitcast float %931 to i32
  %933 = sitofp i32 %932 to float
  %934 = fptosi float %933 to i32
  %935 = bitcast i32 %934 to float
  %936 = fsub fast float 1.000000e+00, %928
  %937 = bitcast float %936 to i32
  %938 = sitofp i32 %937 to float
  %939 = fptosi float %938 to i32
  %940 = bitcast i32 %939 to float
  %941 = fadd fast float %935, %940
  %942 = bitcast float %941 to i32
  %943 = sub nsw i32 2129859010, %942
  %944 = bitcast i32 %943 to float
  %945 = fmul fast float %944, %935
  %946 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %947 = extractvalue %dx.types.CBufRet.f32 %946, 2
  %948 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 37)  ; CBufferLoadLegacy(handle,regIndex)
  %949 = extractvalue %dx.types.CBufRet.f32 %948, 0
  %950 = fmul fast float %945, %949
  %951 = fadd fast float %950, 1.000000e+00
  %952 = bitcast float %951 to i32
  %953 = sub nsw i32 2129859010, %952
  %954 = bitcast i32 %953 to float
  %955 = fmul fast float %945, %947
  %956 = fmul fast float %955, %954
  br label %957

; <label>:957                                     ; preds = %889, %800
  %958 = phi float [ %956, %889 ], [ %887, %800 ]
  %959 = fmul fast float %958, %717
  %960 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 36)  ; CBufferLoadLegacy(handle,regIndex)
  %961 = extractvalue %dx.types.CBufRet.f32 %960, 0
  %962 = extractvalue %dx.types.CBufRet.f32 %960, 1
  %963 = extractvalue %dx.types.CBufRet.f32 %960, 2
  %964 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 37)  ; CBufferLoadLegacy(handle,regIndex)
  %965 = extractvalue %dx.types.CBufRet.f32 %964, 1
  %966 = fmul fast float %961, %959
  %967 = fmul fast float %962, %959
  %968 = fmul fast float %963, %959
  %969 = fadd fast float %966, %777
  %970 = fadd fast float %967, %778
  %971 = fadd fast float %968, %779
  %972 = fmul fast float %965, %959
  %973 = fadd fast float %972, %776
  %974 = fadd fast float %959, %775
  br label %975

; <label>:975                                     ; preds = %957, %774
  %976 = phi float [ %974, %957 ], [ %775, %774 ]
  %977 = phi float [ %973, %957 ], [ %776, %774 ]
  %978 = phi float [ %969, %957 ], [ %777, %774 ]
  %979 = phi float [ %970, %957 ], [ %778, %774 ]
  %980 = phi float [ %971, %957 ], [ %779, %774 ]
  %981 = icmp eq i32 %704, 0
  br i1 %981, label %1025, label %982, !dx.controlflow.hints !56

; <label>:982                                     ; preds = %975
  %983 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 190)  ; CBufferLoadLegacy(handle,regIndex)
  %984 = extractvalue %dx.types.CBufRet.f32 %983, 1
  %985 = fsub fast float %717, %984
  %986 = extractvalue %dx.types.CBufRet.f32 %983, 3
  %987 = fmul fast float %985, %986
  %988 = call float @dx.op.unary.f32(i32 7, float %987)  ; Saturate(value)
  %989 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 188)  ; CBufferLoadLegacy(handle,regIndex)
  %990 = extractvalue %dx.types.CBufRet.f32 %989, 3
  %991 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %992 = extractvalue %dx.types.CBufRet.f32 %991, 2
  %993 = fsub fast float %992, %705
  %994 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 189)  ; CBufferLoadLegacy(handle,regIndex)
  %995 = extractvalue %dx.types.CBufRet.f32 %994, 3
  %996 = fmul fast float %993, %995
  %997 = call float @dx.op.unary.f32(i32 7, float %996)  ; Saturate(value)
  %998 = fmul fast float %997, %990
  %999 = extractvalue %dx.types.CBufRet.f32 %994, 0
  %1000 = fsub fast float %445, %999
  %1001 = extractvalue %dx.types.CBufRet.f32 %994, 1
  %1002 = fmul fast float %1000, %1001
  %1003 = call float @dx.op.unary.f32(i32 7, float %1002)  ; Saturate(value)
  %1004 = fsub fast float 1.000000e+00, %988
  %1005 = fmul fast float %1003, %1004
  %1006 = fadd fast float %1005, %988
  %1007 = extractvalue %dx.types.CBufRet.f32 %983, 0
  %1008 = fsub fast float %998, %1007
  %1009 = fmul fast float %1008, %1006
  %1010 = fadd fast float %1009, %1007
  %1011 = extractvalue %dx.types.CBufRet.f32 %989, 0
  %1012 = extractvalue %dx.types.CBufRet.f32 %989, 1
  %1013 = extractvalue %dx.types.CBufRet.f32 %989, 2
  %1014 = fmul fast float %1010, %717
  %1015 = extractvalue %dx.types.CBufRet.f32 %994, 2
  %1016 = fmul fast float %1014, %1011
  %1017 = fmul fast float %1014, %1012
  %1018 = fmul fast float %1014, %1013
  %1019 = fadd fast float %1016, %978
  %1020 = fadd fast float %1017, %979
  %1021 = fadd fast float %1018, %980
  %1022 = fmul fast float %1014, %1015
  %1023 = fadd fast float %1022, %977
  %1024 = fadd fast float %1014, %976
  br label %1025

; <label>:1025                                    ; preds = %982, %975
  %1026 = phi float [ %1024, %982 ], [ %976, %975 ]
  %1027 = phi float [ %1023, %982 ], [ %977, %975 ]
  %1028 = phi float [ %1019, %982 ], [ %978, %975 ]
  %1029 = phi float [ %1020, %982 ], [ %979, %975 ]
  %1030 = phi float [ %1021, %982 ], [ %980, %975 ]
  %1031 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %1032 = extractvalue %dx.types.CBufRet.f32 %1031, 1
  %1033 = fcmp fast ogt float %1026, %1032
  br i1 %1033, label %1034, label %1040, !dx.controlflow.hints !57

; <label>:1034                                    ; preds = %1025
  %1035 = fdiv fast float 1.000000e+00, %1026
  %1036 = fmul fast float %1035, %1028
  %1037 = fmul fast float %1035, %1029
  %1038 = fmul fast float %1035, %1030
  %1039 = fmul fast float %1035, %1027
  br label %1040

; <label>:1040                                    ; preds = %1034, %1025
  %1041 = phi float [ %1039, %1034 ], [ %1027, %1025 ]
  %1042 = phi float [ %1036, %1034 ], [ %1028, %1025 ]
  %1043 = phi float [ %1037, %1034 ], [ %1029, %1025 ]
  %1044 = phi float [ %1038, %1034 ], [ %1030, %1025 ]
  br i1 %1033, label %1047, label %1045, !dx.controlflow.hints !58

; <label>:1045                                    ; preds = %1040
  %1046 = fadd fast float %717, %445
  br label %1638

; <label>:1047                                    ; preds = %1040
  %1048 = fmul fast float %1026, 0xBFF7154760000000
  %1049 = call float @dx.op.unary.f32(i32 21, float %1048)  ; Exp(value)
  %1050 = call float @dx.op.unary.f32(i32 7, float %1049)  ; Saturate(value)
  %1051 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %1052 = extractvalue %dx.types.CBufRet.f32 %1051, 3
  %1053 = fcmp fast une float %1052, 0.000000e+00
  %1054 = extractvalue %dx.types.CBufRet.f32 %1051, 0
  %1055 = extractvalue %dx.types.CBufRet.f32 %1051, 1
  %1056 = extractvalue %dx.types.CBufRet.f32 %1051, 2
  br i1 %1053, label %1057, label %1079, !dx.controlflow.hints !59

; <label>:1057                                    ; preds = %1047
  %1058 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %1059 = extractvalue %dx.types.CBufRet.f32 %1058, 0
  %1060 = extractvalue %dx.types.CBufRet.f32 %1058, 1
  %1061 = extractvalue %dx.types.CBufRet.f32 %1058, 2
  %1062 = call float @dx.op.dot3.f32(i32 55, float %1054, float %1055, float %1056, float %281, float %282, float %283)  ; Dot3(ax,ay,az,bx,by,bz)
  %1063 = fcmp fast ogt float %1041, 0.000000e+00
  %1064 = select i1 %1063, float 1.000000e+00, float -1.000000e+00
  %1065 = fmul fast float %1064, 5.000000e-01
  %1066 = fmul fast float %1065, %1062
  %1067 = fmul fast float %1064, %1041
  %1068 = fadd fast float %1066, 4.921875e-01
  %1069 = fadd fast float %1067, -3.125000e-02
  %1070 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %18, float %1068, float 0x3FB25F3060000000, float %1069, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1071 = extractvalue %dx.types.ResRet.f32 %1070, 0
  %1072 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 398)  ; CBufferLoadLegacy(handle,regIndex)
  %1073 = extractvalue %dx.types.CBufRet.f32 %1072, 0
  %1074 = fmul fast float %1071, 0x400921FB60000000
  %1075 = fmul fast float %1074, %1073
  %1076 = fmul fast float %1075, %1059
  %1077 = fmul fast float %1075, %1060
  %1078 = fmul fast float %1075, %1061
  br label %1079

; <label>:1079                                    ; preds = %1057, %1047
  %1080 = phi float [ %1076, %1057 ], [ 0.000000e+00, %1047 ]
  %1081 = phi float [ %1077, %1057 ], [ 0.000000e+00, %1047 ]
  %1082 = phi float [ %1078, %1057 ], [ 0.000000e+00, %1047 ]
  %1083 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 427)  ; CBufferLoadLegacy(handle,regIndex)
  %1084 = extractvalue %dx.types.CBufRet.f32 %1083, 0
  %1085 = fmul fast float %1084, %1054
  %1086 = fmul fast float %1084, %1055
  %1087 = fmul fast float %1084, %1056
  %1088 = fadd fast float %1085, %442
  %1089 = fadd fast float %1086, %443
  %1090 = fadd fast float %1087, %444
  br i1 %469, label %1140, label %1091, !dx.controlflow.hints !45

; <label>:1091                                    ; preds = %1079
  %1092 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 35)  ; CBufferLoadLegacy(handle,regIndex)
  %1093 = extractvalue %dx.types.CBufRet.f32 %1092, 0
  %1094 = extractvalue %dx.types.CBufRet.f32 %1092, 1
  %1095 = extractvalue %dx.types.CBufRet.f32 %1092, 2
  %1096 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 31)  ; CBufferLoadLegacy(handle,regIndex)
  %1097 = extractvalue %dx.types.CBufRet.f32 %1096, 0
  %1098 = extractvalue %dx.types.CBufRet.f32 %1096, 1
  %1099 = extractvalue %dx.types.CBufRet.f32 %1096, 2
  %1100 = fsub fast float %1088, %1097
  %1101 = fsub fast float %1089, %1098
  %1102 = fsub fast float %1090, %1099
  %1103 = fmul fast float %1100, %1093
  %1104 = fmul fast float %1101, %1094
  %1105 = fmul fast float %1102, %1095
  %1106 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %1107 = extractvalue %dx.types.CBufRet.i32 %1106, 3
  %1108 = icmp eq i32 %1107, 0
  br i1 %1108, label %1112, label %1109, !dx.controlflow.hints !46

; <label>:1109                                    ; preds = %1091
  %1110 = call float @dx.op.unary.f32(i32 22, float %1103)  ; Frc(value)
  %1111 = call float @dx.op.unary.f32(i32 22, float %1104)  ; Frc(value)
  br label %1112

; <label>:1112                                    ; preds = %1109, %1091
  %1113 = phi float [ %1110, %1109 ], [ %1103, %1091 ]
  %1114 = phi float [ %1111, %1109 ], [ %1104, %1091 ]
  %1115 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %16, float %1113, float %1114, float %1105, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1116 = extractvalue %dx.types.ResRet.f32 %1115, 0
  %1117 = fmul fast float %1116, 2.000000e+00
  %1118 = fadd fast float %1117, -1.000000e+00
  %1119 = extractvalue %dx.types.CBufRet.f32 %1092, 3
  %1120 = fmul fast float %1118, %1119
  %1121 = fcmp fast olt float %1120, 0.000000e+00
  %1122 = fcmp fast oge float %1105, 0.000000e+00
  %1123 = fcmp fast ole float %1105, 1.000000e+00
  br i1 %1108, label %1126, label %1124, !dx.controlflow.hints !47

; <label>:1124                                    ; preds = %1112
  %1125 = and i1 %1122, %1123
  br label %1136

; <label>:1126                                    ; preds = %1112
  %1127 = fcmp fast oge float %1103, 0.000000e+00
  %1128 = fcmp fast oge float %1104, 0.000000e+00
  %1129 = and i1 %1127, %1128
  %1130 = and i1 %1122, %1129
  %1131 = fcmp fast ole float %1103, 1.000000e+00
  %1132 = fcmp fast ole float %1104, 1.000000e+00
  %1133 = and i1 %1131, %1132
  %1134 = and i1 %1123, %1133
  %1135 = and i1 %1130, %1134
  br label %1136

; <label>:1136                                    ; preds = %1126, %1124
  %1137 = phi i1 [ %1125, %1124 ], [ %1135, %1126 ]
  %1138 = and i1 %1121, %1137
  %1139 = zext i1 %1138 to i32
  br label %1140

; <label>:1140                                    ; preds = %1136, %1079
  %1141 = phi i32 [ %1139, %1136 ], [ 0, %1079 ]
  br i1 %529, label %1296, label %1142, !dx.controlflow.hints !48

; <label>:1142                                    ; preds = %1140
  %1143 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1144 = extractvalue %dx.types.CBufRet.i32 %1143, 1
  %1145 = and i32 %1144, 1
  %1146 = icmp eq i32 %1145, 0
  br i1 %1146, label %1147, label %1291, !dx.controlflow.hints !49

; <label>:1147                                    ; preds = %1142
  %1148 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 204)  ; CBufferLoadLegacy(handle,regIndex)
  %1149 = extractvalue %dx.types.CBufRet.f32 %1148, 2
  %1150 = extractvalue %dx.types.CBufRet.f32 %1148, 3
  %1151 = fmul fast float %1149, %1088
  %1152 = fmul fast float %1150, %1089
  %1153 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 205)  ; CBufferLoadLegacy(handle,regIndex)
  %1154 = extractvalue %dx.types.CBufRet.f32 %1153, 0
  %1155 = extractvalue %dx.types.CBufRet.f32 %1153, 1
  %1156 = fadd fast float %1151, %1154
  %1157 = fadd fast float %1152, %1155
  %1158 = call float @dx.op.unary.f32(i32 7, float %1156)  ; Saturate(value)
  %1159 = call float @dx.op.unary.f32(i32 7, float %1157)  ; Saturate(value)
  %1160 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %18, float %1158, float %1159, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1161 = extractvalue %dx.types.ResRet.f32 %1160, 0
  %1162 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %1163 = extractvalue %dx.types.CBufRet.f32 %1162, 0
  %1164 = fmul fast float %1163, %1161
  %1165 = fsub fast float %1156, %1158
  %1166 = fsub fast float %1157, %1159
  %1167 = extractvalue %dx.types.CBufRet.f32 %1148, 0
  %1168 = extractvalue %dx.types.CBufRet.f32 %1148, 1
  %1169 = fmul fast float %1167, %1165
  %1170 = fmul fast float %1168, %1166
  %1171 = fmul fast float %1169, %1169
  %1172 = fmul fast float %1170, %1170
  %1173 = fadd fast float %1171, %1172
  %1174 = call float @dx.op.unary.f32(i32 24, float %1173)  ; Sqrt(value)
  %1175 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %1176 = extractvalue %dx.types.CBufRet.f32 %1175, 3
  %1177 = fmul fast float %1176, %1174
  %1178 = call float @dx.op.unary.f32(i32 7, float %1177)  ; Saturate(value)
  %1179 = extractvalue %dx.types.CBufRet.f32 %1175, 2
  %1180 = fsub fast float %1179, %1164
  %1181 = fmul fast float %1180, %1178
  %1182 = extractvalue %dx.types.CBufRet.f32 %1162, 1
  %1183 = fsub fast float %1090, %1164
  %1184 = fsub fast float %1183, %1182
  %1185 = fsub fast float %1184, %1181
  %1186 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1187 = extractvalue %dx.types.CBufRet.f32 %1186, 2
  %1188 = fsub fast float %1185, %1187
  %1189 = fcmp fast olt float %1188, 0.000000e+00
  %1190 = extractvalue %dx.types.CBufRet.i32 %1143, 0
  %1191 = icmp eq i32 %1190, 0
  br i1 %1191, label %1242, label %1192

; <label>:1192                                    ; preds = %1147
  br label %1193

; <label>:1193                                    ; preds = %1231, %1192
  %1194 = phi i32 [ %1237, %1231 ], [ 1, %1192 ]
  %1195 = phi i32 [ %1238, %1231 ], [ 0, %1192 ]
  %1196 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %1197 = extractvalue %dx.types.CBufRet.f32 %1196, 1
  %1198 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1199 = extractvalue %dx.types.CBufRet.i32 %1198, 1
  %1200 = and i32 %1199, 8
  %1201 = icmp eq i32 %1200, 0
  %1202 = fcmp fast ogt float %1197, %1185
  %1203 = or i1 %1202, %1201
  %1204 = add i32 %1195, 171
  %1205 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 %1204)  ; CBufferLoadLegacy(handle,regIndex)
  %1206 = extractvalue %dx.types.CBufRet.f32 %1205, 0
  %1207 = extractvalue %dx.types.CBufRet.f32 %1205, 1
  %1208 = extractvalue %dx.types.CBufRet.f32 %1205, 2
  br i1 %1203, label %1209, label %1215, !dx.controlflow.hints !50

; <label>:1209                                    ; preds = %1193
  %1210 = fsub fast float %1206, %1088
  %1211 = fsub fast float %1207, %1089
  %1212 = fmul fast float %1210, %1210
  %1213 = fmul fast float %1211, %1211
  %1214 = fadd fast float %1212, %1213
  br label %1231

; <label>:1215                                    ; preds = %1193
  %1216 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1217 = extractvalue %dx.types.CBufRet.f32 %1216, 2
  %1218 = extractvalue %dx.types.CBufRet.f32 %1196, 2
  %1219 = fmul fast float %1218, %1217
  %1220 = fsub fast float %1219, %1197
  %1221 = fdiv fast float %1208, %1220
  %1222 = fsub fast float %1088, %1206
  %1223 = fsub fast float %1089, %1207
  %1224 = fsub fast float %1185, %1197
  %1225 = fmul fast float %1221, %1224
  %1226 = fmul fast float %1222, %1222
  %1227 = fmul fast float %1223, %1223
  %1228 = fadd fast float %1226, %1227
  %1229 = fmul fast float %1225, %1225
  %1230 = fadd fast float %1228, %1229
  br label %1231

; <label>:1231                                    ; preds = %1215, %1209
  %1232 = phi float [ %1214, %1209 ], [ %1230, %1215 ]
  %1233 = call float @dx.op.unary.f32(i32 24, float %1232)  ; Sqrt(value)
  %1234 = fsub float %1208, %1233
  %1235 = fcmp fast olt float %1234, 0.000000e+00
  %1236 = zext i1 %1235 to i32
  %1237 = and i32 %1236, %1194
  %1238 = add i32 %1195, 1
  %1239 = extractvalue %dx.types.CBufRet.i32 %1198, 0
  %1240 = icmp ult i32 %1238, %1239
  br i1 %1240, label %1193, label %1241

; <label>:1241                                    ; preds = %1231
  br label %1242

; <label>:1242                                    ; preds = %1241, %1147
  %1243 = phi i32 [ 1, %1147 ], [ %1237, %1241 ]
  br label %1244

; <label>:1244                                    ; preds = %1244, %1242
  %1245 = phi i32 [ %1281, %1244 ], [ %1243, %1242 ]
  %1246 = phi i32 [ %1282, %1244 ], [ 0, %1242 ]
  %1247 = add nuw nsw i32 %1246, 191
  %1248 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 %1247)  ; CBufferLoadLegacy(handle,regIndex)
  %1249 = extractvalue %dx.types.CBufRet.f32 %1248, 0
  %1250 = extractvalue %dx.types.CBufRet.f32 %1248, 1
  %1251 = extractvalue %dx.types.CBufRet.f32 %1248, 2
  %1252 = add nuw nsw i32 %1246, 195
  %1253 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 %1252)  ; CBufferLoadLegacy(handle,regIndex)
  %1254 = extractvalue %dx.types.CBufRet.f32 %1253, 0
  %1255 = extractvalue %dx.types.CBufRet.f32 %1253, 1
  %1256 = extractvalue %dx.types.CBufRet.f32 %1253, 2
  %1257 = fsub fast float %1088, %1249
  %1258 = fsub fast float %1089, %1250
  %1259 = fsub fast float %1185, %1251
  %1260 = call float @dx.op.unary.f32(i32 6, float %1257)  ; FAbs(value)
  %1261 = call float @dx.op.unary.f32(i32 6, float %1258)  ; FAbs(value)
  %1262 = call float @dx.op.unary.f32(i32 6, float %1259)  ; FAbs(value)
  %1263 = fsub fast float %1260, %1254
  %1264 = fsub fast float %1261, %1255
  %1265 = fsub fast float %1262, %1256
  %1266 = call float @dx.op.binary.f32(i32 35, float %1263, float 0.000000e+00)  ; FMax(a,b)
  %1267 = call float @dx.op.binary.f32(i32 35, float %1264, float 0.000000e+00)  ; FMax(a,b)
  %1268 = call float @dx.op.binary.f32(i32 35, float %1265, float 0.000000e+00)  ; FMax(a,b)
  %1269 = fmul fast float %1266, %1266
  %1270 = fmul fast float %1267, %1267
  %1271 = fadd fast float %1270, %1269
  %1272 = fmul fast float %1268, %1268
  %1273 = fadd fast float %1271, %1272
  %1274 = call float @dx.op.unary.f32(i32 24, float %1273)  ; Sqrt(value)
  %1275 = call float @dx.op.binary.f32(i32 35, float %1264, float %1265)  ; FMax(a,b)
  %1276 = call float @dx.op.binary.f32(i32 35, float %1263, float %1275)  ; FMax(a,b)
  %1277 = call float @dx.op.binary.f32(i32 36, float %1276, float 0.000000e+00)  ; FMin(a,b)
  %1278 = fadd fast float %1277, %1274
  %1279 = fcmp ogt float %1278, -0.000000e+00
  %1280 = zext i1 %1279 to i32
  %1281 = and i32 %1280, %1245
  %1282 = add nuw nsw i32 %1246, 1
  %1283 = icmp eq i32 %1282, 4
  br i1 %1283, label %1284, label %1244

; <label>:1284                                    ; preds = %1244
  %1285 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1286 = extractvalue %dx.types.CBufRet.i32 %1285, 1
  %1287 = lshr i32 %1286, 1
  %1288 = xor i32 %1287, %1281
  %1289 = zext i1 %1189 to i32
  %1290 = and i32 %1288, %1289
  br label %1291

; <label>:1291                                    ; preds = %1284, %1142
  %1292 = phi i32 [ %433, %1142 ], [ %1290, %1284 ]
  %1293 = phi float [ %1090, %1142 ], [ %1185, %1284 ]
  %1294 = icmp ne i32 %1292, 0
  %1295 = zext i1 %1294 to i32
  br label %1296

; <label>:1296                                    ; preds = %1291, %1140
  %1297 = phi i32 [ %1292, %1291 ], [ %433, %1140 ]
  %1298 = phi float [ %1293, %1291 ], [ %434, %1140 ]
  %1299 = phi i32 [ %1295, %1291 ], [ 0, %1140 ]
  br i1 %454, label %1349, label %1300, !dx.controlflow.hints !51

; <label>:1300                                    ; preds = %1296
  %1301 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 399)  ; CBufferLoadLegacy(handle,regIndex)
  %1302 = extractvalue %dx.types.CBufRet.f32 %1301, 0
  %1303 = fsub fast float -0.000000e+00, %1088
  %1304 = fsub fast float -0.000000e+00, %1089
  %1305 = fsub fast float %1302, %1090
  %1306 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %1303, float %1304, float %1305)  ; Dot3(ax,ay,az,bx,by,bz)
  %1307 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %1054, float %1055, float %1056)  ; Dot3(ax,ay,az,bx,by,bz)
  %1308 = fdiv fast float 1.000000e+00, %1307
  %1309 = fmul fast float %1308, %1306
  %1310 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1309)  ; FMax(a,b)
  %1311 = fcmp fast olt float %1056, 0.000000e+00
  %1312 = call float @dx.op.binary.f32(i32 36, float %1084, float %1310)  ; FMin(a,b)
  br i1 %1311, label %1314, label %1313, !dx.controlflow.hints !52

; <label>:1313                                    ; preds = %1300
  br label %1314

; <label>:1314                                    ; preds = %1313, %1300
  %1315 = phi float [ 0.000000e+00, %1313 ], [ %1312, %1300 ]
  %1316 = phi float [ %1312, %1313 ], [ %1084, %1300 ]
  %1317 = phi float [ %1312, %1313 ], [ 0.000000e+00, %1300 ]
  %1318 = phi float [ %1084, %1313 ], [ %1312, %1300 ]
  %1319 = fsub fast float %1316, %1315
  %1320 = extractvalue %dx.types.CBufRet.f32 %1301, 1
  %1321 = call float @dx.op.binary.f32(i32 36, float 0xBF0FFB4800000000, float %1320)  ; FMin(a,b)
  %1322 = fsub fast float %1090, %1302
  %1323 = fmul fast float %1321, 0x3FF7154760000000
  %1324 = fmul fast float %1323, %1322
  %1325 = call float @dx.op.unary.f32(i32 21, float %1324)  ; Exp(value)
  %1326 = fmul fast float %1056, 0x3FF7154760000000
  %1327 = fmul fast float %1326, %1318
  %1328 = fmul fast float %1327, %1321
  %1329 = call float @dx.op.unary.f32(i32 21, float %1328)  ; Exp(value)
  %1330 = fmul fast float %1326, %1317
  %1331 = fmul fast float %1330, %1321
  %1332 = call float @dx.op.unary.f32(i32 21, float %1331)  ; Exp(value)
  %1333 = fsub fast float %1329, %1332
  %1334 = fmul fast float %1333, %1325
  %1335 = fmul fast float %1321, %1056
  %1336 = fdiv fast float %1334, %1335
  %1337 = fadd fast float %1319, %1336
  %1338 = call float @dx.op.unary.f32(i32 6, float %1056)  ; FAbs(value)
  %1339 = fcmp fast olt float %1338, 0x3F0FFB4800000000
  %1340 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1322)  ; FMax(a,b)
  %1341 = fmul fast float %1340, 0x3FF7154760000000
  %1342 = fmul fast float %1341, %1320
  %1343 = call float @dx.op.unary.f32(i32 21, float %1342)  ; Exp(value)
  %1344 = fmul fast float %1343, %1084
  %1345 = select i1 %1339, float %1344, float %1337
  %1346 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 396)  ; CBufferLoadLegacy(handle,regIndex)
  %1347 = extractvalue %dx.types.CBufRet.f32 %1346, 1
  %1348 = fmul fast float %1345, %1347
  br label %1349

; <label>:1349                                    ; preds = %1314, %1296
  %1350 = phi float [ %1348, %1314 ], [ 0.000000e+00, %1296 ]
  %1351 = icmp eq i32 %1141, 0
  br i1 %1351, label %1532, label %1352, !dx.controlflow.hints !53

; <label>:1352                                    ; preds = %1349
  %1353 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %1354 = extractvalue %dx.types.CBufRet.f32 %1353, 3
  %1355 = fmul fast float %1354, %1084
  %1356 = fcmp fast oeq float %1355, 0.000000e+00
  br i1 %1356, label %1371, label %1357, !dx.controlflow.hints !54

; <label>:1357                                    ; preds = %1352
  %1358 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 41)  ; CBufferLoadLegacy(handle,regIndex)
  %1359 = extractvalue %dx.types.CBufRet.f32 %1358, 3
  %1360 = fmul fast float %1359, %1355
  %1361 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 33)  ; CBufferLoadLegacy(handle,regIndex)
  %1362 = extractvalue %dx.types.CBufRet.f32 %1361, 0
  %1363 = extractvalue %dx.types.CBufRet.f32 %1361, 1
  %1364 = extractvalue %dx.types.CBufRet.f32 %1361, 2
  %1365 = fmul fast float %1362, %1360
  %1366 = fmul fast float %1363, %1360
  %1367 = fmul fast float %1364, %1360
  %1368 = call float @dx.op.unary.f32(i32 23, float %1365)  ; Log(value)
  %1369 = call float @dx.op.unary.f32(i32 23, float %1366)  ; Log(value)
  %1370 = call float @dx.op.unary.f32(i32 23, float %1367)  ; Log(value)
  br label %1371

; <label>:1371                                    ; preds = %1357, %1352
  %1372 = phi float [ %1368, %1357 ], [ 0.000000e+00, %1352 ]
  %1373 = phi float [ %1369, %1357 ], [ 0.000000e+00, %1352 ]
  %1374 = phi float [ %1370, %1357 ], [ 0.000000e+00, %1352 ]
  %1375 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 35)  ; CBufferLoadLegacy(handle,regIndex)
  %1376 = extractvalue %dx.types.CBufRet.f32 %1375, 0
  %1377 = extractvalue %dx.types.CBufRet.f32 %1375, 1
  %1378 = extractvalue %dx.types.CBufRet.f32 %1375, 2
  %1379 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 31)  ; CBufferLoadLegacy(handle,regIndex)
  %1380 = extractvalue %dx.types.CBufRet.f32 %1379, 0
  %1381 = extractvalue %dx.types.CBufRet.f32 %1379, 1
  %1382 = extractvalue %dx.types.CBufRet.f32 %1379, 2
  %1383 = fsub fast float %1088, %1380
  %1384 = fsub fast float %1089, %1381
  %1385 = fsub fast float %1090, %1382
  %1386 = fmul fast float %1383, %1376
  %1387 = fmul fast float %1384, %1377
  %1388 = fmul fast float %1385, %1378
  %1389 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 29)  ; CBufferLoadLegacy(handle,regIndex)
  %1390 = extractvalue %dx.types.CBufRet.i32 %1389, 0
  %1391 = extractvalue %dx.types.CBufRet.i32 %1389, 1
  %1392 = uitofp i32 %1390 to float
  %1393 = uitofp i32 %1391 to float
  %1394 = fmul fast float %1386, %1392
  %1395 = fmul fast float %1387, %1393
  %1396 = fadd fast float %1394, 5.000000e-01
  %1397 = fadd fast float %1395, 5.000000e-01
  %1398 = call float @dx.op.unary.f32(i32 22, float %1396)  ; Frc(value)
  %1399 = call float @dx.op.unary.f32(i32 22, float %1397)  ; Frc(value)
  %1400 = call float @dx.op.unary.f32(i32 27, float %1396)  ; Round_ni(value)
  %1401 = call float @dx.op.unary.f32(i32 27, float %1397)  ; Round_ni(value)
  %1402 = fadd fast float %1400, 1.000000e+00
  %1403 = fadd fast float %1401, 1.000000e+00
  %1404 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 30)  ; CBufferLoadLegacy(handle,regIndex)
  %1405 = extractvalue %dx.types.CBufRet.f32 %1404, 0
  %1406 = extractvalue %dx.types.CBufRet.f32 %1404, 1
  %1407 = fmul fast float %1405, %1402
  %1408 = fmul fast float %1406, %1403
  %1409 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %10, %dx.types.Handle %17, float %1407, float %1408, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1410 = extractvalue %dx.types.ResRet.f32 %1409, 0
  %1411 = extractvalue %dx.types.ResRet.f32 %1409, 1
  %1412 = extractvalue %dx.types.ResRet.f32 %1409, 2
  %1413 = extractvalue %dx.types.ResRet.f32 %1409, 3
  %1414 = extractvalue %dx.types.CBufRet.i32 %1389, 2
  %1415 = extractvalue %dx.types.CBufRet.f32 %1404, 2
  %1416 = uitofp i32 %1414 to float
  %1417 = fadd fast float %1416, -1.000000e+00
  %1418 = fmul fast float %1417, %1410
  %1419 = fmul fast float %1417, %1411
  %1420 = fmul fast float %1417, %1412
  %1421 = fmul fast float %1417, %1413
  %1422 = fadd fast float %1418, 5.000000e-01
  %1423 = fadd fast float %1419, 5.000000e-01
  %1424 = fadd fast float %1420, 5.000000e-01
  %1425 = fadd fast float %1421, 5.000000e-01
  %1426 = fptoui float %1422 to i32
  %1427 = fptoui float %1423 to i32
  %1428 = fptoui float %1424 to i32
  %1429 = fptoui float %1425 to i32
  %1430 = uitofp i32 %1426 to float
  %1431 = uitofp i32 %1427 to float
  %1432 = uitofp i32 %1428 to float
  %1433 = uitofp i32 %1429 to float
  %1434 = fadd fast float %1430, 5.000000e-01
  %1435 = fadd fast float %1431, 5.000000e-01
  %1436 = fadd fast float %1432, 5.000000e-01
  %1437 = fadd fast float %1433, 5.000000e-01
  %1438 = fmul fast float %1434, %1415
  %1439 = fmul fast float %1435, %1415
  %1440 = fmul fast float %1436, %1415
  %1441 = fmul fast float %1437, %1415
  %1442 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %18, float %1438, float %1388, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1443 = extractvalue %dx.types.ResRet.f32 %1442, 0
  %1444 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %18, float %1439, float %1388, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1445 = extractvalue %dx.types.ResRet.f32 %1444, 0
  %1446 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %18, float %1440, float %1388, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1447 = extractvalue %dx.types.ResRet.f32 %1446, 0
  %1448 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %18, float %1441, float %1388, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1449 = extractvalue %dx.types.ResRet.f32 %1448, 0
  %1450 = fsub fast float %1447, %1449
  %1451 = fmul fast float %1450, %1398
  %1452 = fadd fast float %1451, %1449
  %1453 = fsub fast float %1445, %1443
  %1454 = fmul fast float %1453, %1398
  %1455 = fadd fast float %1454, %1443
  %1456 = fsub fast float %1455, %1452
  %1457 = fmul fast float %1456, %1399
  %1458 = fadd fast float %1457, %1452
  %1459 = fcmp fast ogt float %1458, 0.000000e+00
  br i1 %1459, label %1460, label %1528, !dx.controlflow.hints !55

; <label>:1460                                    ; preds = %1371
  %1461 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 33)  ; CBufferLoadLegacy(handle,regIndex)
  %1462 = extractvalue %dx.types.CBufRet.f32 %1461, 0
  %1463 = extractvalue %dx.types.CBufRet.f32 %1461, 1
  %1464 = extractvalue %dx.types.CBufRet.f32 %1461, 2
  %1465 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 41)  ; CBufferLoadLegacy(handle,regIndex)
  %1466 = extractvalue %dx.types.CBufRet.f32 %1465, 0
  %1467 = extractvalue %dx.types.CBufRet.f32 %1465, 1
  %1468 = extractvalue %dx.types.CBufRet.f32 %1465, 2
  %1469 = fmul fast float %1384, %1376
  %1470 = fmul fast float %1385, %1376
  %1471 = fadd fast float %1386, %1466
  %1472 = fadd fast float %1469, %1467
  %1473 = fadd fast float %1470, %1468
  %1474 = fmul fast float %1471, %1462
  %1475 = fmul fast float %1472, %1462
  %1476 = fmul fast float %1473, %1462
  %1477 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %15, float %1474, float %1475, float %1476, float undef, i32 0, i32 0, i32 0, float %1372)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1478 = extractvalue %dx.types.ResRet.f32 %1477, 0
  %1479 = fmul fast float %1471, %1463
  %1480 = fmul fast float %1472, %1463
  %1481 = fmul fast float %1473, %1463
  %1482 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %15, float %1479, float %1480, float %1481, float undef, i32 0, i32 0, i32 0, float %1373)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1483 = extractvalue %dx.types.ResRet.f32 %1482, 1
  %1484 = fmul fast float %1471, %1464
  %1485 = fmul fast float %1472, %1464
  %1486 = fmul fast float %1473, %1464
  %1487 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %15, float %1484, float %1485, float %1486, float undef, i32 0, i32 0, i32 0, float %1374)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1488 = extractvalue %dx.types.ResRet.f32 %1487, 2
  %1489 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 34)  ; CBufferLoadLegacy(handle,regIndex)
  %1490 = extractvalue %dx.types.CBufRet.f32 %1489, 1
  %1491 = fmul fast float %1483, %1478
  %1492 = fmul fast float %1491, %1488
  %1493 = call float @dx.op.unary.f32(i32 23, float %1492)  ; Log(value)
  %1494 = fmul fast float %1493, %1490
  %1495 = call float @dx.op.unary.f32(i32 21, float %1494)  ; Exp(value)
  %1496 = extractvalue %dx.types.CBufRet.f32 %1489, 2
  %1497 = fmul fast float %1458, %1458
  %1498 = fmul fast float %1497, %1495
  %1499 = fmul fast float %1498, %1496
  %1500 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 32)  ; CBufferLoadLegacy(handle,regIndex)
  %1501 = extractvalue %dx.types.CBufRet.f32 %1500, 3
  %1502 = fmul fast float %1501, %1499
  %1503 = bitcast float %1502 to i32
  %1504 = sitofp i32 %1503 to float
  %1505 = fptosi float %1504 to i32
  %1506 = bitcast i32 %1505 to float
  %1507 = fsub fast float 1.000000e+00, %1499
  %1508 = bitcast float %1507 to i32
  %1509 = sitofp i32 %1508 to float
  %1510 = fptosi float %1509 to i32
  %1511 = bitcast i32 %1510 to float
  %1512 = fadd fast float %1506, %1511
  %1513 = bitcast float %1512 to i32
  %1514 = sub nsw i32 2129859010, %1513
  %1515 = bitcast i32 %1514 to float
  %1516 = fmul fast float %1515, %1506
  %1517 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %1518 = extractvalue %dx.types.CBufRet.f32 %1517, 2
  %1519 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 37)  ; CBufferLoadLegacy(handle,regIndex)
  %1520 = extractvalue %dx.types.CBufRet.f32 %1519, 0
  %1521 = fmul fast float %1516, %1520
  %1522 = fadd fast float %1521, 1.000000e+00
  %1523 = bitcast float %1522 to i32
  %1524 = sub nsw i32 2129859010, %1523
  %1525 = bitcast i32 %1524 to float
  %1526 = fmul fast float %1516, %1518
  %1527 = fmul fast float %1526, %1525
  br label %1528

; <label>:1528                                    ; preds = %1460, %1371
  %1529 = phi float [ %1527, %1460 ], [ %1458, %1371 ]
  %1530 = fmul fast float %1529, %1084
  %1531 = fadd fast float %1530, %1350
  br label %1532

; <label>:1532                                    ; preds = %1528, %1349
  %1533 = phi float [ %1531, %1528 ], [ %1350, %1349 ]
  %1534 = icmp eq i32 %1299, 0
  br i1 %1534, label %1566, label %1535, !dx.controlflow.hints !56

; <label>:1535                                    ; preds = %1532
  %1536 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 190)  ; CBufferLoadLegacy(handle,regIndex)
  %1537 = extractvalue %dx.types.CBufRet.f32 %1536, 1
  %1538 = fsub fast float %1084, %1537
  %1539 = extractvalue %dx.types.CBufRet.f32 %1536, 3
  %1540 = fmul fast float %1538, %1539
  %1541 = call float @dx.op.unary.f32(i32 7, float %1540)  ; Saturate(value)
  %1542 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 188)  ; CBufferLoadLegacy(handle,regIndex)
  %1543 = extractvalue %dx.types.CBufRet.f32 %1542, 3
  %1544 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1545 = extractvalue %dx.types.CBufRet.f32 %1544, 2
  %1546 = fsub fast float %1545, %1298
  %1547 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 189)  ; CBufferLoadLegacy(handle,regIndex)
  %1548 = extractvalue %dx.types.CBufRet.f32 %1547, 3
  %1549 = fmul fast float %1546, %1548
  %1550 = call float @dx.op.unary.f32(i32 7, float %1549)  ; Saturate(value)
  %1551 = fmul fast float %1550, %1543
  %1552 = extractvalue %dx.types.CBufRet.f32 %1547, 0
  %1553 = fsub fast float %1084, %1552
  %1554 = extractvalue %dx.types.CBufRet.f32 %1547, 1
  %1555 = fmul fast float %1553, %1554
  %1556 = call float @dx.op.unary.f32(i32 7, float %1555)  ; Saturate(value)
  %1557 = fsub fast float 1.000000e+00, %1541
  %1558 = fmul fast float %1556, %1557
  %1559 = fadd fast float %1558, %1541
  %1560 = extractvalue %dx.types.CBufRet.f32 %1536, 0
  %1561 = fsub fast float %1551, %1560
  %1562 = fmul fast float %1561, %1559
  %1563 = fadd fast float %1562, %1560
  %1564 = fmul fast float %1563, %1084
  %1565 = fadd fast float %1564, %1533
  br label %1566

; <label>:1566                                    ; preds = %1535, %1532
  %1567 = phi float [ %1565, %1535 ], [ %1533, %1532 ]
  %1568 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 36)  ; CBufferLoadLegacy(handle,regIndex)
  %1569 = extractvalue %dx.types.CBufRet.f32 %1568, 3
  %1570 = fmul fast float %1567, 0xBFF7154760000000
  %1571 = fmul fast float %1570, %1569
  %1572 = call float @dx.op.unary.f32(i32 21, float %1571)  ; Exp(value)
  %1573 = call float @dx.op.unary.f32(i32 7, float %1572)  ; Saturate(value)
  %1574 = fmul fast float %1573, %1080
  %1575 = fmul fast float %1573, %1081
  %1576 = fmul fast float %1573, %1082
  %1577 = fadd fast float %1574, %206
  %1578 = fadd fast float %1575, %207
  %1579 = fadd fast float %1576, %208
  %1580 = fsub fast float 1.000000e+00, %1050
  %1581 = fmul fast float %1042, %438
  %1582 = fmul fast float %1581, %1580
  %1583 = fmul fast float %1582, %1577
  %1584 = fmul fast float %1043, %438
  %1585 = fmul fast float %1584, %1580
  %1586 = fmul fast float %1585, %1578
  %1587 = fmul fast float %1044, %438
  %1588 = fmul fast float %1587, %1580
  %1589 = fmul fast float %1588, %1579
  %1590 = fadd fast float %1583, %439
  %1591 = fadd fast float %1586, %440
  %1592 = fadd fast float %1589, %441
  %1593 = fdiv fast float %1026, %717
  %1594 = fadd fast float %717, %445
  %1595 = fmul fast float %445, %445
  %1596 = fmul fast float %1594, %1594
  %1597 = fsub fast float %1595, %1596
  %1598 = fmul fast float %1597, -5.000000e-01
  %1599 = fmul fast float %1598, %1593
  %1600 = fadd fast float %1599, %437
  %1601 = fadd fast float %1026, %446
  %1602 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %1603 = extractvalue %dx.types.CBufRet.i32 %1602, 0
  %1604 = icmp eq i32 %1603, 0
  br i1 %1604, label %1631, label %1605, !dx.controlflow.hints !60

; <label>:1605                                    ; preds = %1566
  %1606 = icmp ne i32 %451, 0
  %1607 = zext i1 %1606 to i32
  %1608 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %1609 = extractvalue %dx.types.CBufRet.f32 %1608, 2
  %1610 = extractvalue %dx.types.CBufRet.f32 %1608, 0
  %1611 = fsub fast float %1594, %1610
  %1612 = fmul fast float %1611, %1609
  %1613 = call float @dx.op.unary.f32(i32 7, float %1612)  ; Saturate(value)
  %1614 = fadd fast float %1613, -5.000000e-01
  %1615 = fmul fast float %1614, 2.000000e+00
  %1616 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %1617 = extractvalue %dx.types.CBufRet.f32 %1616, 2
  %1618 = fcmp fast olt float %1615, %1617
  br i1 %1618, label %1619, label %1631, !dx.controlflow.hints !61

; <label>:1619                                    ; preds = %1605
  %1620 = fmul fast float %1615, %1615
  %1621 = fmul fast float %1580, %438
  %1622 = fmul fast float %1615, %1621
  %1623 = fmul fast float %1620, %1621
  %1624 = fmul fast float %1622, %1620
  %1625 = fmul fast float %1620, %1620
  %1626 = fmul fast float %1625, %1621
  %1627 = fadd fast float %1622, %447
  %1628 = fadd fast float %1623, %448
  %1629 = fadd fast float %1624, %449
  %1630 = fadd fast float %1626, %450
  br label %1631

; <label>:1631                                    ; preds = %1619, %1605, %1566
  %1632 = phi float [ %447, %1566 ], [ %1627, %1619 ], [ %447, %1605 ]
  %1633 = phi float [ %448, %1566 ], [ %1628, %1619 ], [ %448, %1605 ]
  %1634 = phi float [ %449, %1566 ], [ %1629, %1619 ], [ %449, %1605 ]
  %1635 = phi float [ %450, %1566 ], [ %1630, %1619 ], [ %450, %1605 ]
  %1636 = phi i32 [ %451, %1566 ], [ 1, %1619 ], [ %1607, %1605 ]
  %1637 = fmul fast float %1050, %438
  br label %1638

; <label>:1638                                    ; preds = %1631, %1045
  %1639 = phi float [ %1046, %1045 ], [ %1594, %1631 ]
  %1640 = phi i32 [ %433, %1045 ], [ %1297, %1631 ]
  %1641 = phi float [ %434, %1045 ], [ %1298, %1631 ]
  %1642 = phi float [ %437, %1045 ], [ %1600, %1631 ]
  %1643 = phi float [ %438, %1045 ], [ %1637, %1631 ]
  %1644 = phi float [ %439, %1045 ], [ %1590, %1631 ]
  %1645 = phi float [ %440, %1045 ], [ %1591, %1631 ]
  %1646 = phi float [ %441, %1045 ], [ %1592, %1631 ]
  %1647 = phi float [ %446, %1045 ], [ %1601, %1631 ]
  %1648 = phi float [ %447, %1045 ], [ %1632, %1631 ]
  %1649 = phi float [ %448, %1045 ], [ %1633, %1631 ]
  %1650 = phi float [ %449, %1045 ], [ %1634, %1631 ]
  %1651 = phi float [ %450, %1045 ], [ %1635, %1631 ]
  %1652 = phi i32 [ %451, %1045 ], [ %1636, %1631 ]
  %1653 = fmul fast float %717, %281
  %1654 = fmul fast float %717, %282
  %1655 = fmul fast float %717, %283
  %1656 = fadd fast float %1653, %442
  %1657 = fadd fast float %1654, %443
  %1658 = fadd fast float %1655, %444
  %1659 = fcmp fast olt float %1639, %413
  %1660 = extractvalue %dx.types.CBufRet.f32 %1031, 2
  %1661 = fcmp fast olt float %1660, %1643
  %1662 = and i1 %1659, %1661
  br i1 %1662, label %432, label %1663

; <label>:1663                                    ; preds = %1638
  br label %1664

; <label>:1664                                    ; preds = %1663, %409
  %1665 = phi float [ 0.000000e+00, %409 ], [ %1642, %1663 ]
  %1666 = phi float [ 1.000000e+00, %409 ], [ %1643, %1663 ]
  %1667 = phi float [ 0.000000e+00, %409 ], [ %1644, %1663 ]
  %1668 = phi float [ 0.000000e+00, %409 ], [ %1645, %1663 ]
  %1669 = phi float [ 0.000000e+00, %409 ], [ %1646, %1663 ]
  %1670 = phi float [ 0.000000e+00, %409 ], [ %1647, %1663 ]
  %1671 = phi float [ 0.000000e+00, %409 ], [ %1648, %1663 ]
  %1672 = phi float [ 0.000000e+00, %409 ], [ %1649, %1663 ]
  %1673 = phi float [ 0.000000e+00, %409 ], [ %1650, %1663 ]
  %1674 = phi float [ 0.000000e+00, %409 ], [ %1651, %1663 ]
  %1675 = phi i32 [ 0, %409 ], [ %1652, %1663 ]
  %1676 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %1677 = extractvalue %dx.types.CBufRet.i32 %1676, 0
  %1678 = icmp eq i32 %1677, 0
  br i1 %1678, label %1720, label %1679, !dx.controlflow.hints !62

; <label>:1679                                    ; preds = %1664
  %1680 = icmp eq i32 %1675, 0
  br i1 %1680, label %1719, label %1681, !dx.controlflow.hints !63

; <label>:1681                                    ; preds = %1679
  %1682 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %1683 = extractvalue %dx.types.CBufRet.i32 %1682, 2
  %1684 = icmp eq i32 %1683, 0
  br i1 %1684, label %1691, label %1685, !dx.controlflow.hints !64

; <label>:1685                                    ; preds = %1681
  %1686 = fsub fast float 1.000000e+00, %1666
  %1687 = fdiv fast float %1671, %1686
  %1688 = fdiv fast float %1672, %1686
  %1689 = fdiv fast float %1673, %1686
  %1690 = fdiv fast float %1674, %1686
  br label %1696

; <label>:1691                                    ; preds = %1681
  %1692 = fadd fast float %1671, %1666
  %1693 = fadd fast float %1672, %1666
  %1694 = fadd fast float %1673, %1666
  %1695 = fadd fast float %1674, %1666
  br label %1696

; <label>:1696                                    ; preds = %1691, %1685
  %1697 = phi float [ %1687, %1685 ], [ %1692, %1691 ]
  %1698 = phi float [ %1688, %1685 ], [ %1693, %1691 ]
  %1699 = phi float [ %1689, %1685 ], [ %1694, %1691 ]
  %1700 = phi float [ %1690, %1685 ], [ %1695, %1691 ]
  %1701 = call float @dx.op.binary.f32(i32 35, float %1697, float -1.000000e+00)  ; FMax(a,b)
  %1702 = call float @dx.op.binary.f32(i32 35, float %1698, float -1.000000e+00)  ; FMax(a,b)
  %1703 = call float @dx.op.binary.f32(i32 35, float %1699, float -1.000000e+00)  ; FMax(a,b)
  %1704 = call float @dx.op.binary.f32(i32 35, float %1700, float -1.000000e+00)  ; FMax(a,b)
  %1705 = call float @dx.op.binary.f32(i32 36, float %1701, float 1.000000e+00)  ; FMin(a,b)
  %1706 = call float @dx.op.binary.f32(i32 36, float %1702, float 1.000000e+00)  ; FMin(a,b)
  %1707 = call float @dx.op.binary.f32(i32 36, float %1703, float 1.000000e+00)  ; FMin(a,b)
  %1708 = call float @dx.op.binary.f32(i32 36, float %1704, float 1.000000e+00)  ; FMin(a,b)
  %1709 = fmul fast float %1705, 1.500000e+00
  %1710 = call float @dx.op.tertiary.f32(i32 46, float -2.000000e+00, float %1707, float %1709)  ; FMad(a,b,c)
  %1711 = call float @dx.op.tertiary.f32(i32 46, float 4.000000e+00, float %1706, float 0.000000e+00)  ; FMad(a,b,c)
  %1712 = call float @dx.op.tertiary.f32(i32 46, float -4.000000e+00, float %1708, float %1711)  ; FMad(a,b,c)
  %1713 = fmul fast float %1705, 0x3FEBB67AE0000000
  %1714 = call float @dx.op.tertiary.f32(i32 46, float 0xBFD8A23460000000, float %1707, float %1713)  ; FMad(a,b,c)
  %1715 = call float @dx.op.tertiary.f32(i32 46, float 5.000000e-01, float %1706, float 0.000000e+00)  ; FMad(a,b,c)
  %1716 = call float @dx.op.tertiary.f32(i32 46, float 5.000000e-01, float %1708, float %1715)  ; FMad(a,b,c)
  %1717 = fadd fast float %1710, 5.000000e-01
  %1718 = fadd fast float %1714, 5.000000e-01
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %21, i32 %22, i32 0, float %1717, float %1712, float %1718, float %1716, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %1720

; <label>:1719                                    ; preds = %1679
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %21, i32 %22, i32 0, float 0.000000e+00, float 0.000000e+00, float 0x3FEF6560C0000000, float 1.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %1720

; <label>:1720                                    ; preds = %1719, %1696, %1664
  %1721 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %1722 = extractvalue %dx.types.CBufRet.f32 %1721, 2
  %1723 = fsub fast float %1666, %1722
  %1724 = fdiv fast float %1723, %1722
  %1725 = call float @dx.op.unary.f32(i32 7, float %1724)  ; Saturate(value)
  %1726 = fmul fast float %1725, 2.000000e+00
  %1727 = fsub fast float 3.000000e+00, %1726
  %1728 = fmul fast float %1725, %1725
  %1729 = fmul fast float %1728, %1666
  %1730 = fmul fast float %1729, %1727
  %1731 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 419)  ; CBufferLoadLegacy(handle,regIndex)
  %1732 = extractvalue %dx.types.CBufRet.f32 %1731, 0
  %1733 = extractvalue %dx.types.CBufRet.f32 %1731, 1
  %1734 = extractvalue %dx.types.CBufRet.f32 %1731, 2
  %1735 = call float @dx.op.dot3.f32(i32 55, float %281, float %282, float %283, float %1732, float %1733, float %1734)  ; Dot3(ax,ay,az,bx,by,bz)
  %1736 = fmul fast float %1735, %1665
  %1737 = fcmp fast ogt float %1670, 0.000000e+00
  %1738 = fdiv fast float 1.000000e+00, %1670
  %1739 = fmul fast float %1736, %1738
  %1740 = select i1 %1737, float %1739, float %292
  %1741 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %1742 = extractvalue %dx.types.CBufRet.f32 %1741, 0
  %1743 = extractvalue %dx.types.CBufRet.f32 %1741, 1
  %1744 = extractvalue %dx.types.CBufRet.f32 %1741, 2
  %1745 = fmul fast float %1742, %245
  %1746 = fmul fast float %1743, %245
  %1747 = fmul fast float %1744, %245
  %1748 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %1749 = extractvalue %dx.types.CBufRet.f32 %1748, 0
  %1750 = extractvalue %dx.types.CBufRet.f32 %1748, 1
  %1751 = extractvalue %dx.types.CBufRet.f32 %1748, 2
  %1752 = fmul fast float %1749, %246
  %1753 = fmul fast float %1750, %246
  %1754 = fmul fast float %1751, %246
  %1755 = fadd fast float %1752, %1745
  %1756 = fadd fast float %1753, %1746
  %1757 = fadd fast float %1754, %1747
  %1758 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %1759 = extractvalue %dx.types.CBufRet.f32 %1758, 0
  %1760 = extractvalue %dx.types.CBufRet.f32 %1758, 1
  %1761 = extractvalue %dx.types.CBufRet.f32 %1758, 2
  %1762 = fadd fast float %1755, %1759
  %1763 = fadd fast float %1756, %1760
  %1764 = fadd fast float %1757, %1761
  %1765 = fmul fast float %1762, %1740
  %1766 = fmul fast float %1763, %1740
  %1767 = fmul fast float %1764, %1740
  %1768 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %1769 = extractvalue %dx.types.CBufRet.f32 %1768, 0
  %1770 = extractvalue %dx.types.CBufRet.f32 %1768, 1
  %1771 = extractvalue %dx.types.CBufRet.f32 %1768, 2
  %1772 = extractvalue %dx.types.CBufRet.f32 %1768, 3
  %1773 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %1774 = extractvalue %dx.types.CBufRet.f32 %1773, 0
  %1775 = extractvalue %dx.types.CBufRet.f32 %1773, 1
  %1776 = extractvalue %dx.types.CBufRet.f32 %1773, 2
  %1777 = extractvalue %dx.types.CBufRet.f32 %1773, 3
  %1778 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %1779 = extractvalue %dx.types.CBufRet.f32 %1778, 0
  %1780 = extractvalue %dx.types.CBufRet.f32 %1778, 1
  %1781 = extractvalue %dx.types.CBufRet.f32 %1778, 2
  %1782 = extractvalue %dx.types.CBufRet.f32 %1778, 3
  %1783 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %1784 = extractvalue %dx.types.CBufRet.f32 %1783, 0
  %1785 = extractvalue %dx.types.CBufRet.f32 %1783, 1
  %1786 = extractvalue %dx.types.CBufRet.f32 %1783, 2
  %1787 = extractvalue %dx.types.CBufRet.f32 %1783, 3
  %1788 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %1789 = extractvalue %dx.types.CBufRet.f32 %1788, 3
  %1790 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %1791 = extractvalue %dx.types.CBufRet.f32 %1790, 3
  %1792 = extractvalue %dx.types.CBufRet.f32 %1790, 0
  %1793 = extractvalue %dx.types.CBufRet.f32 %1790, 1
  %1794 = extractvalue %dx.types.CBufRet.f32 %1790, 2
  %1795 = fcmp fast olt float %1794, -5.000000e-01
  %1796 = call float @dx.op.dot3.f32(i32 55, float %1765, float %1766, float %1767, float %1765, float %1766, float %1767)  ; Dot3(ax,ay,az,bx,by,bz)
  %1797 = call float @dx.op.unary.f32(i32 25, float %1796)  ; Rsqrt(value)
  %1798 = fmul fast float %1797, %1796
  %1799 = fmul fast float %1797, %1765
  %1800 = fmul fast float %1797, %1766
  %1801 = fmul fast float %1797, %1767
  %1802 = fadd fast float %1798, %1772
  %1803 = call float @dx.op.dot3.f32(i32 55, float %1799, float %1800, float %1801, float %1769, float %1770, float %1771)  ; Dot3(ax,ay,az,bx,by,bz)
  %1804 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1805 = extractvalue %dx.types.CBufRet.i32 %1804, 1
  %1806 = and i32 %1805, 1
  %1807 = icmp ne i32 %1806, 0
  %1808 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %1809 = extractvalue %dx.types.CBufRet.f32 %1808, 2
  %1810 = fcmp fast ogt float %1809, 0.000000e+00
  %1811 = and i1 %1807, %1810
  br i1 %1811, label %1812, label %2218, !dx.controlflow.hints !65

; <label>:1812                                    ; preds = %1720
  %1813 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %1814 = extractvalue %dx.types.CBufRet.f32 %1813, 3
  %1815 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1816 = extractvalue %dx.types.CBufRet.f32 %1815, 2
  %1817 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1818 = extractvalue %dx.types.CBufRet.f32 %1817, 2
  %1819 = fsub fast float %1816, %1818
  %1820 = and i32 %1805, 2
  %1821 = extractvalue %dx.types.CBufRet.i32 %1804, 0
  %1822 = call i32 @dx.op.binary.i32(i32 40, i32 %1821, i32 3)  ; UMin(a,b)
  %1823 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %1824 = extractvalue %dx.types.CBufRet.f32 %1823, 0
  %1825 = extractvalue %dx.types.CBufRet.f32 %1823, 1
  %1826 = extractvalue %dx.types.CBufRet.f32 %1817, 0
  %1827 = extractvalue %dx.types.CBufRet.f32 %1817, 1
  %1828 = fsub fast float %1824, %1826
  %1829 = fsub fast float %1825, %1827
  %1830 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %1831 = extractvalue %dx.types.CBufRet.f32 %1830, 0
  %1832 = fcmp fast ogt float %1831, 0.000000e+00
  %1833 = fsub fast float -0.000000e+00, %1828
  %1834 = fsub fast float -0.000000e+00, %1829
  %1835 = call float @dx.op.dot2.f32(i32 54, float %1799, float %1800, float %1799, float %1800)  ; Dot2(ax,ay,bx,by)
  %1836 = call float @dx.op.dot2.f32(i32 54, float %1799, float %1800, float %1833, float %1834)  ; Dot2(ax,ay,bx,by)
  %1837 = fmul fast float %1836, 2.000000e+00
  %1838 = call float @dx.op.dot2.f32(i32 54, float %1833, float %1834, float %1833, float %1834)  ; Dot2(ax,ay,bx,by)
  %1839 = fmul fast float %1831, %1831
  %1840 = fsub fast float %1838, %1839
  %1841 = fmul fast float %1837, %1837
  %1842 = fmul fast float %1835, 4.000000e+00
  %1843 = fmul fast float %1842, %1840
  %1844 = fsub fast float %1841, %1843
  %1845 = fcmp fast ogt float %1844, 0.000000e+00
  br i1 %1845, label %1846, label %1861, !dx.controlflow.hints !66

; <label>:1846                                    ; preds = %1812
  %1847 = fcmp fast ogt float %1837, 0.000000e+00
  %1848 = call float @dx.op.unary.f32(i32 24, float %1844)  ; Sqrt(value)
  %1849 = fsub fast float -0.000000e+00, %1848
  %1850 = select i1 %1847, float %1848, float %1849
  %1851 = fadd fast float %1850, %1837
  %1852 = fmul float %1851, -5.000000e-01
  %1853 = fdiv fast float %1852, %1835
  %1854 = call float @dx.op.binary.f32(i32 35, float %1853, float 0.000000e+00)  ; FMax(a,b)
  %1855 = call float @dx.op.binary.f32(i32 36, float %1798, float %1854)  ; FMin(a,b)
  %1856 = fdiv fast float %1840, %1852
  %1857 = call float @dx.op.binary.f32(i32 35, float %1856, float 0.000000e+00)  ; FMax(a,b)
  %1858 = call float @dx.op.binary.f32(i32 36, float %1798, float %1857)  ; FMin(a,b)
  %1859 = call float @dx.op.binary.f32(i32 36, float %1855, float %1858)  ; FMin(a,b)
  %1860 = call float @dx.op.binary.f32(i32 35, float %1855, float %1858)  ; FMax(a,b)
  br label %1861

; <label>:1861                                    ; preds = %1846, %1812
  %1862 = phi float [ %1860, %1846 ], [ -1.000000e+00, %1812 ]
  %1863 = phi float [ %1859, %1846 ], [ -1.000000e+00, %1812 ]
  %1864 = phi i1 [ true, %1846 ], [ false, %1812 ]
  %1865 = and i1 %1832, %1864
  br i1 %1865, label %1866, label %1868, !dx.controlflow.hints !67

; <label>:1866                                    ; preds = %1861
  %1867 = fcmp fast oeq float %1863, %1862
  br i1 %1867, label %2171, label %1869, !dx.controlflow.hints !68

; <label>:1868                                    ; preds = %1861
  br i1 %1832, label %2171, label %1869, !dx.controlflow.hints !69

; <label>:1869                                    ; preds = %1868, %1866
  %1870 = phi float [ %1798, %1868 ], [ %1862, %1866 ]
  %1871 = phi float [ 0.000000e+00, %1868 ], [ %1863, %1866 ]
  %1872 = icmp ne i32 %1820, 0
  %1873 = fmul fast float %1870, %1801
  %1874 = fadd fast float %1873, %1814
  %1875 = fmul fast float %1874, %1870
  %1876 = select i1 %1872, float 0.000000e+00, float %1875
  %1877 = fcmp fast oeq float %1801, 0.000000e+00
  %1878 = fdiv fast float %1819, %1801
  %1879 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1878)  ; FMax(a,b)
  %1880 = select i1 %1877, float %1870, float %1879
  %1881 = call float @dx.op.binary.f32(i32 36, float %1870, float %1880)  ; FMin(a,b)
  %1882 = fcmp fast ogt float %1801, 0.000000e+00
  %1883 = fcmp fast olt float %1819, 0.000000e+00
  br i1 %1882, label %1884, label %1941, !dx.controlflow.hints !70

; <label>:1884                                    ; preds = %1869
  %1885 = icmp eq i32 %1820, 0
  br i1 %1883, label %1886, label %1930, !dx.controlflow.hints !71

; <label>:1886                                    ; preds = %1884
  %1887 = select i1 %1885, float %1870, float 0.000000e+00
  %1888 = fsub fast float -0.000000e+00, %1887
  %1889 = call float @dx.op.unary.f32(i32 6, float %1888)  ; FAbs(value)
  %1890 = fmul fast float %1887, %1801
  %1891 = fadd fast float %1890, %1814
  %1892 = fmul fast float %1889, %1891
  %1893 = fsub fast float %1876, %1892
  %1894 = fsub fast float %1870, %1889
  %1895 = select i1 %1885, float %1894, float 0.000000e+00
  %1896 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %1897 = extractvalue %dx.types.CBufRet.f32 %1896, 0
  %1898 = extractvalue %dx.types.CBufRet.f32 %1896, 1
  %1899 = extractvalue %dx.types.CBufRet.f32 %1896, 2
  %1900 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %1901 = extractvalue %dx.types.CBufRet.f32 %1900, 0
  %1902 = extractvalue %dx.types.CBufRet.f32 %1900, 1
  %1903 = extractvalue %dx.types.CBufRet.f32 %1900, 2
  %1904 = extractvalue %dx.types.CBufRet.f32 %1900, 3
  %1905 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %1906 = extractvalue %dx.types.CBufRet.f32 %1905, 3
  %1907 = call float @dx.op.binary.f32(i32 36, float %1893, float %1906)  ; FMin(a,b)
  %1908 = fmul fast float %1904, %1895
  %1909 = call float @dx.op.unary.f32(i32 7, float %1908)  ; Saturate(value)
  %1910 = fsub fast float %1901, %1897
  %1911 = fsub fast float %1902, %1898
  %1912 = fsub fast float %1903, %1899
  %1913 = fmul fast float %1909, %1910
  %1914 = fmul fast float %1909, %1911
  %1915 = fmul fast float %1909, %1912
  %1916 = fadd fast float %1913, %1897
  %1917 = fadd fast float %1914, %1898
  %1918 = fadd fast float %1915, %1899
  %1919 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %1920 = extractvalue %dx.types.CBufRet.f32 %1919, 0
  %1921 = extractvalue %dx.types.CBufRet.f32 %1919, 1
  %1922 = fadd fast float %1921, %1920
  %1923 = call float @dx.op.unary.f32(i32 7, float %1922)  ; Saturate(value)
  %1924 = extractvalue %dx.types.CBufRet.f32 %1919, 2
  %1925 = extractvalue %dx.types.CBufRet.f32 %1919, 3
  %1926 = fadd fast float %1925, %1924
  %1927 = call float @dx.op.unary.f32(i32 7, float %1926)  ; Saturate(value)
  %1928 = fmul fast float %1923, %1907
  %1929 = fmul fast float %1928, %1927
  br label %2171

; <label>:1930                                    ; preds = %1884
  br i1 %1885, label %1931, label %1952, !dx.controlflow.hints !72

; <label>:1931                                    ; preds = %1930
  %1932 = call float @dx.op.binary.f32(i32 36, float %1881, float %1871)  ; FMin(a,b)
  %1933 = fsub fast float %1881, %1932
  %1934 = fsub fast float %1933, %1870
  %1935 = call float @dx.op.unary.f32(i32 6, float %1934)  ; FAbs(value)
  %1936 = fadd fast float %1933, %1870
  %1937 = fmul fast float %1936, %1801
  %1938 = fadd fast float %1937, %1814
  %1939 = fmul fast float %1938, %1935
  %1940 = fsub fast float %1876, %1939
  br label %1952

; <label>:1941                                    ; preds = %1869
  br i1 %1883, label %1942, label %1952, !dx.controlflow.hints !73

; <label>:1942                                    ; preds = %1941
  %1943 = call float @dx.op.binary.f32(i32 35, float %1871, float %1881)  ; FMax(a,b)
  %1944 = icmp eq i32 %1820, 0
  %1945 = select i1 %1944, float %1881, float 0.000000e+00
  %1946 = fsub fast float -0.000000e+00, %1945
  %1947 = call float @dx.op.unary.f32(i32 6, float %1946)  ; FAbs(value)
  %1948 = fmul fast float %1945, %1801
  %1949 = fadd fast float %1948, %1814
  %1950 = fmul fast float %1947, %1949
  %1951 = fsub fast float %1876, %1950
  br label %1952

; <label>:1952                                    ; preds = %1942, %1941, %1931, %1930
  %1953 = phi float [ %1871, %1930 ], [ %1871, %1931 ], [ %1943, %1942 ], [ %1871, %1941 ]
  %1954 = phi float [ 0.000000e+00, %1930 ], [ %1935, %1931 ], [ %1947, %1942 ], [ 0.000000e+00, %1941 ]
  %1955 = phi float [ %1876, %1930 ], [ %1940, %1931 ], [ %1951, %1942 ], [ %1876, %1941 ]
  %1956 = phi float [ %1881, %1930 ], [ %1881, %1931 ], [ %1870, %1942 ], [ %1870, %1941 ]
  %1957 = getelementptr inbounds [3 x float], [3 x float]* %24, i32 0, i32 0
  store float -1.000000e+00, float* %1957, align 4, !tbaa !74, !noalias !78
  %1958 = getelementptr inbounds [3 x float], [3 x float]* %24, i32 0, i32 1
  store float -1.000000e+00, float* %1958, align 4, !tbaa !74, !noalias !78
  %1959 = getelementptr inbounds [3 x float], [3 x float]* %24, i32 0, i32 2
  store float -1.000000e+00, float* %1959, align 4, !tbaa !74, !noalias !78
  %1960 = getelementptr inbounds [3 x float], [3 x float]* %25, i32 0, i32 0
  store float -1.000000e+00, float* %1960, align 4, !tbaa !74, !noalias !78
  %1961 = getelementptr inbounds [3 x float], [3 x float]* %25, i32 0, i32 1
  store float -1.000000e+00, float* %1961, align 4, !tbaa !74, !noalias !78
  %1962 = getelementptr inbounds [3 x float], [3 x float]* %25, i32 0, i32 2
  store float -1.000000e+00, float* %1962, align 4, !tbaa !74, !noalias !78
  %1963 = icmp sgt i32 %1822, 0
  br i1 %1963, label %1964, label %2025

; <label>:1964                                    ; preds = %1952
  br label %1965

; <label>:1965                                    ; preds = %2014, %1964
  %1966 = phi i32 [ %2015, %2014 ], [ 0, %1964 ]
  %1967 = phi i32 [ %2016, %2014 ], [ 0, %1964 ]
  %1968 = add nuw i32 %1967, 171
  %1969 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 %1968)  ; CBufferLoadLegacy(handle,regIndex)
  %1970 = extractvalue %dx.types.CBufRet.f32 %1969, 0
  %1971 = extractvalue %dx.types.CBufRet.f32 %1969, 1
  %1972 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1973 = extractvalue %dx.types.CBufRet.f32 %1972, 0
  %1974 = extractvalue %dx.types.CBufRet.f32 %1972, 1
  %1975 = fsub fast float %1970, %1973
  %1976 = fsub fast float %1971, %1974
  %1977 = extractvalue %dx.types.CBufRet.f32 %1969, 2
  %1978 = fsub fast float -0.000000e+00, %1975
  %1979 = fsub fast float -0.000000e+00, %1976
  %1980 = call float @dx.op.dot2.f32(i32 54, float %1799, float %1800, float %1978, float %1979)  ; Dot2(ax,ay,bx,by)
  %1981 = fmul fast float %1980, 2.000000e+00
  %1982 = call float @dx.op.dot2.f32(i32 54, float %1978, float %1979, float %1978, float %1979)  ; Dot2(ax,ay,bx,by)
  %1983 = fmul fast float %1977, %1977
  %1984 = fsub fast float %1982, %1983
  %1985 = fmul fast float %1981, %1981
  %1986 = fmul fast float %1842, %1984
  %1987 = fsub fast float %1985, %1986
  %1988 = fcmp fast ogt float %1987, 0.000000e+00
  br i1 %1988, label %1989, label %2004, !dx.controlflow.hints !66

; <label>:1989                                    ; preds = %1965
  %1990 = fcmp fast ogt float %1981, 0.000000e+00
  %1991 = call float @dx.op.unary.f32(i32 24, float %1987)  ; Sqrt(value)
  %1992 = fsub fast float -0.000000e+00, %1991
  %1993 = select i1 %1990, float %1991, float %1992
  %1994 = fadd fast float %1993, %1981
  %1995 = fmul float %1994, -5.000000e-01
  %1996 = fdiv fast float %1995, %1835
  %1997 = call float @dx.op.binary.f32(i32 35, float %1996, float 0.000000e+00)  ; FMax(a,b)
  %1998 = call float @dx.op.binary.f32(i32 36, float %1870, float %1997)  ; FMin(a,b)
  %1999 = fdiv fast float %1984, %1995
  %2000 = call float @dx.op.binary.f32(i32 35, float %1999, float 0.000000e+00)  ; FMax(a,b)
  %2001 = call float @dx.op.binary.f32(i32 36, float %1870, float %2000)  ; FMin(a,b)
  %2002 = call float @dx.op.binary.f32(i32 36, float %1998, float %2001)  ; FMin(a,b)
  %2003 = call float @dx.op.binary.f32(i32 35, float %1998, float %2001)  ; FMax(a,b)
  br label %2004

; <label>:2004                                    ; preds = %1989, %1965
  %2005 = phi float [ %2003, %1989 ], [ -1.000000e+00, %1965 ]
  %2006 = phi float [ %2002, %1989 ], [ -1.000000e+00, %1965 ]
  %2007 = phi i1 [ true, %1989 ], [ false, %1965 ]
  br i1 %2007, label %2008, label %2014, !dx.controlflow.hints !89

; <label>:2008                                    ; preds = %2004
  %2009 = call float @dx.op.binary.f32(i32 35, float %1953, float %2006)  ; FMax(a,b)
  %2010 = getelementptr inbounds [3 x float], [3 x float]* %24, i32 0, i32 %1967
  store float %2009, float* %2010, align 4, !tbaa !74, !noalias !78
  %2011 = call float @dx.op.binary.f32(i32 35, float %1953, float %2005)  ; FMax(a,b)
  %2012 = getelementptr inbounds [3 x float], [3 x float]* %25, i32 0, i32 %1967
  store float %2011, float* %2012, align 4, !tbaa !74, !noalias !78
  %2013 = add nsw i32 %1966, 1
  br label %2014

; <label>:2014                                    ; preds = %2008, %2004
  %2015 = phi i32 [ %2013, %2008 ], [ %1966, %2004 ]
  %2016 = add nuw nsw i32 %1967, 1
  %2017 = icmp eq i32 %2016, %1822
  br i1 %2017, label %2018, label %1965

; <label>:2018                                    ; preds = %2014
  %2019 = load float, float* %1959, align 4, !tbaa !74, !alias.scope !90, !noalias !93
  %2020 = load float, float* %1958, align 4, !tbaa !74, !alias.scope !96, !noalias !97
  %2021 = load float, float* %1957, align 4, !tbaa !74, !alias.scope !98, !noalias !99
  %2022 = load float, float* %1962, align 4, !tbaa !74, !alias.scope !100, !noalias !103
  %2023 = load float, float* %1961, align 4, !tbaa !74, !alias.scope !106, !noalias !107
  %2024 = load float, float* %1960, align 4, !tbaa !74, !alias.scope !108, !noalias !109
  br label %2025

; <label>:2025                                    ; preds = %2018, %1952
  %2026 = phi float [ -1.000000e+00, %1952 ], [ %2024, %2018 ]
  %2027 = phi float [ -1.000000e+00, %1952 ], [ %2023, %2018 ]
  %2028 = phi float [ -1.000000e+00, %1952 ], [ %2022, %2018 ]
  %2029 = phi float [ -1.000000e+00, %1952 ], [ %2021, %2018 ]
  %2030 = phi float [ -1.000000e+00, %1952 ], [ %2020, %2018 ]
  %2031 = phi float [ -1.000000e+00, %1952 ], [ %2019, %2018 ]
  %2032 = phi i32 [ 0, %1952 ], [ %2015, %2018 ]
  %2033 = call float @dx.op.binary.f32(i32 36, float %2030, float %2031)  ; FMin(a,b)
  %2034 = call float @dx.op.binary.f32(i32 36, float %2029, float %2033)  ; FMin(a,b)
  %2035 = call float @dx.op.binary.f32(i32 35, float %2029, float %2030)  ; FMax(a,b)
  %2036 = call float @dx.op.binary.f32(i32 36, float %2035, float %2031)  ; FMin(a,b)
  %2037 = call float @dx.op.binary.f32(i32 36, float %2029, float %2030)  ; FMin(a,b)
  %2038 = call float @dx.op.binary.f32(i32 35, float %2037, float %2036)  ; FMax(a,b)
  %2039 = call float @dx.op.binary.f32(i32 35, float %2030, float %2031)  ; FMax(a,b)
  %2040 = call float @dx.op.binary.f32(i32 35, float %2029, float %2039)  ; FMax(a,b)
  store float %2034, float* %1957, align 4, !tbaa !74, !alias.scope !98, !noalias !99
  store float %2038, float* %1958, align 4, !tbaa !74, !alias.scope !96, !noalias !97
  store float %2040, float* %1959, align 4, !tbaa !74, !alias.scope !90, !noalias !93
  %2041 = call float @dx.op.binary.f32(i32 36, float %2027, float %2028)  ; FMin(a,b)
  %2042 = call float @dx.op.binary.f32(i32 36, float %2026, float %2041)  ; FMin(a,b)
  %2043 = call float @dx.op.binary.f32(i32 35, float %2026, float %2027)  ; FMax(a,b)
  %2044 = call float @dx.op.binary.f32(i32 36, float %2043, float %2028)  ; FMin(a,b)
  %2045 = call float @dx.op.binary.f32(i32 36, float %2026, float %2027)  ; FMin(a,b)
  %2046 = call float @dx.op.binary.f32(i32 35, float %2045, float %2044)  ; FMax(a,b)
  %2047 = call float @dx.op.binary.f32(i32 35, float %2027, float %2028)  ; FMax(a,b)
  %2048 = call float @dx.op.binary.f32(i32 35, float %2026, float %2047)  ; FMax(a,b)
  store float %2042, float* %1960, align 4, !tbaa !74, !alias.scope !108, !noalias !109
  store float %2046, float* %1961, align 4, !tbaa !74, !alias.scope !106, !noalias !107
  store float %2048, float* %1962, align 4, !tbaa !74, !alias.scope !100, !noalias !103
  %2049 = sub nsw i32 3, %2032
  %2050 = icmp sgt i32 %2049, 2
  br i1 %2050, label %2051, label %2089, !dx.controlflow.hints !110

; <label>:2051                                    ; preds = %2025
  %2052 = icmp eq i32 %1820, 0
  %2053 = fsub fast float %1870, %1954
  %2054 = select i1 %2052, float %2053, float %1954
  %2055 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %2056 = extractvalue %dx.types.CBufRet.f32 %2055, 0
  %2057 = extractvalue %dx.types.CBufRet.f32 %2055, 1
  %2058 = extractvalue %dx.types.CBufRet.f32 %2055, 2
  %2059 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %2060 = extractvalue %dx.types.CBufRet.f32 %2059, 0
  %2061 = extractvalue %dx.types.CBufRet.f32 %2059, 1
  %2062 = extractvalue %dx.types.CBufRet.f32 %2059, 2
  %2063 = extractvalue %dx.types.CBufRet.f32 %2059, 3
  %2064 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %2065 = extractvalue %dx.types.CBufRet.f32 %2064, 3
  %2066 = call float @dx.op.binary.f32(i32 36, float %1955, float %2065)  ; FMin(a,b)
  %2067 = fmul fast float %2063, %2054
  %2068 = call float @dx.op.unary.f32(i32 7, float %2067)  ; Saturate(value)
  %2069 = fsub fast float %2060, %2056
  %2070 = fsub fast float %2061, %2057
  %2071 = fsub fast float %2062, %2058
  %2072 = fmul fast float %2068, %2069
  %2073 = fmul fast float %2068, %2070
  %2074 = fmul fast float %2068, %2071
  %2075 = fadd fast float %2072, %2056
  %2076 = fadd fast float %2073, %2057
  %2077 = fadd fast float %2074, %2058
  %2078 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %2079 = extractvalue %dx.types.CBufRet.f32 %2078, 0
  %2080 = extractvalue %dx.types.CBufRet.f32 %2078, 1
  %2081 = fadd fast float %2080, %2079
  %2082 = call float @dx.op.unary.f32(i32 7, float %2081)  ; Saturate(value)
  %2083 = extractvalue %dx.types.CBufRet.f32 %2078, 2
  %2084 = extractvalue %dx.types.CBufRet.f32 %2078, 3
  %2085 = fadd fast float %2084, %2083
  %2086 = call float @dx.op.unary.f32(i32 7, float %2085)  ; Saturate(value)
  %2087 = fmul fast float %2082, %2066
  %2088 = fmul fast float %2087, %2086
  br label %2171

; <label>:2089                                    ; preds = %2025
  %2090 = getelementptr inbounds [3 x float], [3 x float]* %24, i32 0, i32 %2049
  %2091 = load float, float* %2090, align 4, !tbaa !74, !noalias !78
  %2092 = fcmp fast olt float %2091, %1956
  %2093 = icmp sgt i32 %2032, 0
  %2094 = and i1 %2093, %2092
  br i1 %2094, label %2095, label %2132

; <label>:2095                                    ; preds = %2089
  br label %2096

; <label>:2096                                    ; preds = %2125, %2095
  %2097 = phi float [ %2126, %2125 ], [ %1954, %2095 ]
  %2098 = phi float [ %2127, %2125 ], [ %1955, %2095 ]
  %2099 = phi float [ %2107, %2125 ], [ %2091, %2095 ]
  %2100 = phi i32 [ %2104, %2125 ], [ %2049, %2095 ]
  %2101 = getelementptr inbounds [3 x float], [3 x float]* %25, i32 0, i32 %2100
  %2102 = load float, float* %2101, align 4, !tbaa !74, !noalias !78
  %2103 = icmp slt i32 %2100, 2
  %2104 = add nsw i32 %2100, 1
  %2105 = getelementptr inbounds [3 x float], [3 x float]* %24, i32 0, i32 %2104
  %2106 = load float, float* %2105, align 4, !tbaa !74, !noalias !78
  %2107 = select i1 %2103, float %2106, float %1870
  %2108 = call float @dx.op.binary.f32(i32 36, float %2107, float %2102)  ; FMin(a,b)
  %2109 = call float @dx.op.binary.f32(i32 36, float %1956, float %2108)  ; FMin(a,b)
  %2110 = icmp eq i32 %1820, 0
  %2111 = fadd fast float %2109, %2099
  %2112 = fmul fast float %2111, %1801
  %2113 = fadd fast float %2112, %1814
  br i1 %2110, label %2119, label %2114, !dx.controlflow.hints !111

; <label>:2114                                    ; preds = %2096
  %2115 = fsub fast float %2109, %2099
  %2116 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2115)  ; FMax(a,b)
  %2117 = fmul fast float %2116, %2113
  %2118 = fadd fast float %2117, %2098
  br label %2125

; <label>:2119                                    ; preds = %2096
  %2120 = fsub fast float %2099, %2109
  %2121 = call float @dx.op.unary.f32(i32 6, float %2120)  ; FAbs(value)
  %2122 = fadd fast float %2121, %2097
  %2123 = fmul fast float %2121, %2113
  %2124 = fsub fast float %2098, %2123
  br label %2125

; <label>:2125                                    ; preds = %2119, %2114
  %2126 = phi float [ %2116, %2114 ], [ %2122, %2119 ]
  %2127 = phi float [ %2118, %2114 ], [ %2124, %2119 ]
  %2128 = fcmp fast olt float %2107, %1956
  %2129 = icmp slt i32 %2104, 3
  %2130 = and i1 %2129, %2128
  br i1 %2130, label %2096, label %2131

; <label>:2131                                    ; preds = %2125
  br label %2132

; <label>:2132                                    ; preds = %2131, %2089
  %2133 = phi float [ %1954, %2089 ], [ %2126, %2131 ]
  %2134 = phi float [ %1955, %2089 ], [ %2127, %2131 ]
  %2135 = fsub fast float %1870, %2133
  %2136 = select i1 %1872, float %2133, float %2135
  %2137 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %2138 = extractvalue %dx.types.CBufRet.f32 %2137, 0
  %2139 = extractvalue %dx.types.CBufRet.f32 %2137, 1
  %2140 = extractvalue %dx.types.CBufRet.f32 %2137, 2
  %2141 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %2142 = extractvalue %dx.types.CBufRet.f32 %2141, 0
  %2143 = extractvalue %dx.types.CBufRet.f32 %2141, 1
  %2144 = extractvalue %dx.types.CBufRet.f32 %2141, 2
  %2145 = extractvalue %dx.types.CBufRet.f32 %2141, 3
  %2146 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %2147 = extractvalue %dx.types.CBufRet.f32 %2146, 3
  %2148 = call float @dx.op.binary.f32(i32 36, float %2134, float %2147)  ; FMin(a,b)
  %2149 = fmul fast float %2145, %2136
  %2150 = call float @dx.op.unary.f32(i32 7, float %2149)  ; Saturate(value)
  %2151 = fsub fast float %2142, %2138
  %2152 = fsub fast float %2143, %2139
  %2153 = fsub fast float %2144, %2140
  %2154 = fmul fast float %2150, %2151
  %2155 = fmul fast float %2150, %2152
  %2156 = fmul fast float %2150, %2153
  %2157 = fadd fast float %2154, %2138
  %2158 = fadd fast float %2155, %2139
  %2159 = fadd fast float %2156, %2140
  %2160 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %2161 = extractvalue %dx.types.CBufRet.f32 %2160, 0
  %2162 = extractvalue %dx.types.CBufRet.f32 %2160, 1
  %2163 = fadd fast float %2162, %2161
  %2164 = call float @dx.op.unary.f32(i32 7, float %2163)  ; Saturate(value)
  %2165 = extractvalue %dx.types.CBufRet.f32 %2160, 2
  %2166 = extractvalue %dx.types.CBufRet.f32 %2160, 3
  %2167 = fadd fast float %2166, %2165
  %2168 = call float @dx.op.unary.f32(i32 7, float %2167)  ; Saturate(value)
  %2169 = fmul fast float %2164, %2148
  %2170 = fmul fast float %2169, %2168
  br label %2171

; <label>:2171                                    ; preds = %2132, %2051, %1886, %1868, %1866
  %2172 = phi float [ %1895, %1886 ], [ %2054, %2051 ], [ %2136, %2132 ], [ 0.000000e+00, %1866 ], [ 0.000000e+00, %1868 ]
  %2173 = phi float [ %1929, %1886 ], [ %2088, %2051 ], [ %2170, %2132 ], [ 0.000000e+00, %1866 ], [ 0.000000e+00, %1868 ]
  %2174 = phi float [ %1916, %1886 ], [ %2075, %2051 ], [ %2157, %2132 ], [ 0.000000e+00, %1866 ], [ 0.000000e+00, %1868 ]
  %2175 = phi float [ %1917, %1886 ], [ %2076, %2051 ], [ %2158, %2132 ], [ 0.000000e+00, %1866 ], [ 0.000000e+00, %1868 ]
  %2176 = phi float [ %1918, %1886 ], [ %2077, %2051 ], [ %2159, %2132 ], [ 0.000000e+00, %1866 ], [ 0.000000e+00, %1868 ]
  %2177 = fmul fast float %1809, %2173
  %2178 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2179 = extractvalue %dx.types.CBufRet.f32 %2178, 2
  %2180 = fsub fast float %1816, %2179
  %2181 = fcmp fast olt float %2177, -2.000000e+01
  %2182 = call float @dx.op.unary.f32(i32 21, float %2177)  ; Exp(value)
  %2183 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %2184 = extractvalue %dx.types.CBufRet.f32 %2183, 2
  %2185 = extractvalue %dx.types.CBufRet.f32 %2183, 3
  %2186 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %2187 = extractvalue %dx.types.CBufRet.f32 %2186, 2
  %2188 = fmul fast float %2185, %2180
  %2189 = call float @dx.op.unary.f32(i32 7, float %2188)  ; Saturate(value)
  %2190 = fsub fast float 1.000000e+00, %2189
  %2191 = fmul fast float %1801, 5.000000e-01
  %2192 = fadd fast float %2191, 5.000000e-01
  %2193 = call float @dx.op.unary.f32(i32 7, float %2192)  ; Saturate(value)
  %2194 = fsub fast float 1.000000e+00, %2193
  %2195 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %2190)  ; FMax(a,b)
  %2196 = fdiv fast float %2194, %2195
  %2197 = fsub fast float %2180, %1767
  %2198 = call float @dx.op.unary.f32(i32 6, float %2197)  ; FAbs(value)
  %2199 = fmul fast float %2198, %2184
  %2200 = call float @dx.op.unary.f32(i32 7, float %2196)  ; Saturate(value)
  %2201 = fsub fast float 1.000000e+00, %2199
  %2202 = fmul fast float %2201, %2200
  %2203 = fadd fast float %2202, %2199
  %2204 = fmul fast float %2187, %2180
  %2205 = call float @dx.op.unary.f32(i32 7, float %2204)  ; Saturate(value)
  %2206 = fsub fast float 1.000000e+00, %2203
  %2207 = fmul fast float %2206, %2205
  %2208 = fadd fast float %2207, %2203
  %2209 = call float @dx.op.unary.f32(i32 7, float %2208)  ; Saturate(value)
  %2210 = fadd fast float %2182, -1.000000e+00
  %2211 = select i1 %2181, float -1.000000e+00, float %2210
  %2212 = fmul fast float %2209, %2211
  %2213 = fadd fast float %2212, 1.000000e+00
  %2214 = fsub fast float -0.000000e+00, %2212
  %2215 = fmul fast float %2174, %2214
  %2216 = fmul fast float %2175, %2214
  %2217 = fmul fast float %2176, %2214
  br label %2218

; <label>:2218                                    ; preds = %2171, %1720
  %2219 = phi float [ %2172, %2171 ], [ 0.000000e+00, %1720 ]
  %2220 = phi float [ %2213, %2171 ], [ 1.000000e+00, %1720 ]
  %2221 = phi float [ %2215, %2171 ], [ 0.000000e+00, %1720 ]
  %2222 = phi float [ %2216, %2171 ], [ 0.000000e+00, %1720 ]
  %2223 = phi float [ %2217, %2171 ], [ 0.000000e+00, %1720 ]
  %2224 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %2225 = extractvalue %dx.types.CBufRet.f32 %2224, 1
  %2226 = fsub fast float 1.000000e+00, %2220
  %2227 = fmul fast float %2226, %1802
  %2228 = fmul fast float %2227, %2225
  %2229 = fsub fast float %1802, %2228
  br i1 %1795, label %2230, label %2259, !dx.controlflow.hints !112

; <label>:2230                                    ; preds = %2218
  %2231 = fmul fast float %1803, %1792
  %2232 = fadd fast float %2231, %1793
  %2233 = call float @dx.op.unary.f32(i32 7, float %2232)  ; Saturate(value)
  %2234 = fmul fast float %1774, %2229
  %2235 = fsub fast float -0.000000e+00, %2234
  %2236 = fmul fast float %1775, %2229
  %2237 = fsub fast float -0.000000e+00, %2236
  %2238 = call float @dx.op.unary.f32(i32 21, float %2235)  ; Exp(value)
  %2239 = call float @dx.op.unary.f32(i32 21, float %2237)  ; Exp(value)
  %2240 = call float @dx.op.binary.f32(i32 35, float %1782, float %2238)  ; FMax(a,b)
  %2241 = call float @dx.op.binary.f32(i32 35, float %1782, float %2239)  ; FMax(a,b)
  %2242 = fsub fast float %2241, %2240
  %2243 = fmul fast float %2242, %2233
  %2244 = fadd fast float %2243, %2240
  %2245 = call float @dx.op.unary.f32(i32 7, float %2244)  ; Saturate(value)
  %2246 = fsub fast float %1779, %1784
  %2247 = fsub fast float %1780, %1785
  %2248 = fsub fast float %1781, %1786
  %2249 = fmul fast float %2233, %2246
  %2250 = fmul fast float %2233, %2247
  %2251 = fmul fast float %2233, %2248
  %2252 = fadd fast float %2249, %1784
  %2253 = fadd fast float %2250, %1785
  %2254 = fadd fast float %2251, %1786
  %2255 = fsub fast float 1.000000e+00, %2245
  %2256 = fmul fast float %2255, %2252
  %2257 = fmul fast float %2255, %2253
  %2258 = fmul fast float %2255, %2254
  br label %2318

; <label>:2259                                    ; preds = %2218
  %2260 = fmul fast float %2229, %1791
  %2261 = call float @dx.op.unary.f32(i32 7, float %2260)  ; Saturate(value)
  %2262 = fsub fast float 2.000000e+00, %2261
  %2263 = fmul fast float %2261, 9.921875e-01
  %2264 = fmul fast float %2263, %2262
  %2265 = fadd fast float %2264, 3.906250e-03
  %2266 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %18, float %2265, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2267 = extractvalue %dx.types.ResRet.f32 %2266, 0
  %2268 = fsub fast float %2261, %2267
  %2269 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2268)  ; FMax(a,b)
  %2270 = fmul fast float %1777, %1767
  %2271 = call float @dx.op.unary.f32(i32 6, float %2270)  ; FAbs(value)
  %2272 = fcmp fast ogt float %2271, 0x3EB0C6F7A0000000
  br i1 %2272, label %2273, label %2279, !dx.controlflow.hints !113

; <label>:2273                                    ; preds = %2259
  %2274 = fmul fast float %2270, 0xBFF7154760000000
  %2275 = call float @dx.op.unary.f32(i32 21, float %2274)  ; Exp(value)
  %2276 = fsub fast float 1.000000e+00, %2275
  %2277 = fdiv fast float %2276, %2270
  %2278 = fmul fast float %2277, %1787
  br label %2279

; <label>:2279                                    ; preds = %2273, %2259
  %2280 = phi float [ %2278, %2273 ], [ %1787, %2259 ]
  %2281 = fadd fast float %2280, %1789
  %2282 = fmul fast float %2281, %2269
  %2283 = fmul fast float %1774, %2282
  %2284 = fsub fast float -0.000000e+00, %2283
  %2285 = fmul fast float %1775, %2282
  %2286 = fsub fast float -0.000000e+00, %2285
  %2287 = fmul fast float %1776, %2282
  %2288 = fsub fast float -0.000000e+00, %2287
  %2289 = call float @dx.op.unary.f32(i32 21, float %2284)  ; Exp(value)
  %2290 = call float @dx.op.unary.f32(i32 21, float %2286)  ; Exp(value)
  %2291 = call float @dx.op.unary.f32(i32 21, float %2288)  ; Exp(value)
  %2292 = fmul fast float %1803, %1803
  %2293 = fadd fast float %2292, 1.000000e+00
  %2294 = fmul fast float %2293, 0x3FAE8EC8A0000000
  %2295 = fmul fast float %2294, %1784
  %2296 = fmul fast float %2294, %1785
  %2297 = fmul fast float %2294, %1786
  %2298 = fmul fast float %1803, %1782
  %2299 = fsub fast float 1.000000e+00, %2298
  %2300 = fmul fast float %1782, %1782
  %2301 = fsub fast float 1.000000e+00, %2300
  %2302 = fmul fast float %2301, 0x3FB45F3060000000
  %2303 = fmul fast float %2299, %2299
  %2304 = fdiv fast float 1.000000e+00, %2303
  %2305 = fmul fast float %2302, %2304
  %2306 = fmul fast float %2305, %1779
  %2307 = fmul fast float %2305, %1780
  %2308 = fmul fast float %2305, %1781
  %2309 = fadd fast float %2306, %2295
  %2310 = fadd fast float %2307, %2296
  %2311 = fadd fast float %2308, %2297
  %2312 = fsub fast float 1.000000e+00, %2289
  %2313 = fsub fast float 1.000000e+00, %2290
  %2314 = fsub fast float 1.000000e+00, %2291
  %2315 = fmul fast float %2309, %2312
  %2316 = fmul fast float %2310, %2313
  %2317 = fmul fast float %2311, %2314
  br label %2318

; <label>:2318                                    ; preds = %2279, %2230
  %2319 = phi float [ %2256, %2230 ], [ %2315, %2279 ]
  %2320 = phi float [ %2257, %2230 ], [ %2316, %2279 ]
  %2321 = phi float [ %2258, %2230 ], [ %2317, %2279 ]
  %2322 = phi float [ %2245, %2230 ], [ %2289, %2279 ]
  %2323 = phi float [ %2245, %2230 ], [ %2290, %2279 ]
  %2324 = phi float [ %2245, %2230 ], [ %2291, %2279 ]
  br i1 %1811, label %2325, label %2523, !dx.controlflow.hints !114

; <label>:2325                                    ; preds = %2318
  %2326 = extractvalue %dx.types.CBufRet.f32 %2224, 0
  %2327 = fmul fast float %2326, %2226
  %2328 = fsub fast float %2221, %2319
  %2329 = fsub fast float %2222, %2320
  %2330 = fsub fast float %2223, %2321
  %2331 = fmul fast float %2327, %2328
  %2332 = fmul fast float %2327, %2329
  %2333 = fmul fast float %2327, %2330
  %2334 = fadd fast float %2331, %2319
  %2335 = fadd fast float %2332, %2320
  %2336 = fadd fast float %2333, %2321
  %2337 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %2322)  ; FMax(a,b)
  %2338 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %2323)  ; FMax(a,b)
  %2339 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %2324)  ; FMax(a,b)
  %2340 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %2220)  ; FMax(a,b)
  %2341 = call float @dx.op.binary.f32(i32 35, float %2219, float %2229)  ; FMax(a,b)
  %2342 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %2341)  ; FMax(a,b)
  %2343 = fdiv fast float %2219, %2342
  %2344 = call float @dx.op.unary.f32(i32 7, float %2343)  ; Saturate(value)
  %2345 = fdiv fast float %2229, %2342
  %2346 = call float @dx.op.unary.f32(i32 7, float %2345)  ; Saturate(value)
  %2347 = fcmp fast une float %2340, 1.000000e+00
  br i1 %2347, label %2348, label %2361, !dx.controlflow.hints !115

; <label>:2348                                    ; preds = %2325
  %2349 = call float @dx.op.unary.f32(i32 23, float %2340)  ; Log(value)
  %2350 = fmul fast float %2349, 0x3FE62E4300000000
  %2351 = fmul fast float %2221, %2350
  %2352 = fsub fast float -0.000000e+00, %2351
  %2353 = fmul fast float %2222, %2350
  %2354 = fsub fast float -0.000000e+00, %2353
  %2355 = fmul fast float %2223, %2350
  %2356 = fsub fast float -0.000000e+00, %2355
  %2357 = fsub fast float 1.000000e+00, %2340
  %2358 = fdiv fast float %2352, %2357
  %2359 = fdiv fast float %2354, %2357
  %2360 = fdiv fast float %2356, %2357
  br label %2361

; <label>:2361                                    ; preds = %2348, %2325
  %2362 = phi float [ %2358, %2348 ], [ %2221, %2325 ]
  %2363 = phi float [ %2359, %2348 ], [ %2222, %2325 ]
  %2364 = phi float [ %2360, %2348 ], [ %2223, %2325 ]
  %2365 = phi float [ %2350, %2348 ], [ 0.000000e+00, %2325 ]
  %2366 = fcmp fast une float %2337, 1.000000e+00
  br i1 %2366, label %2367, label %2374, !dx.controlflow.hints !116

; <label>:2367                                    ; preds = %2361
  %2368 = call float @dx.op.unary.f32(i32 23, float %2337)  ; Log(value)
  %2369 = fmul fast float %2368, 0x3FE62E4300000000
  %2370 = fmul fast float %2334, %2369
  %2371 = fsub fast float -0.000000e+00, %2370
  %2372 = fsub fast float 1.000000e+00, %2337
  %2373 = fdiv fast float %2371, %2372
  br label %2374

; <label>:2374                                    ; preds = %2367, %2361
  %2375 = phi float [ %2373, %2367 ], [ %2334, %2361 ]
  %2376 = phi float [ %2369, %2367 ], [ 0.000000e+00, %2361 ]
  %2377 = fcmp fast une float %2338, 1.000000e+00
  br i1 %2377, label %2378, label %2385, !dx.controlflow.hints !116

; <label>:2378                                    ; preds = %2374
  %2379 = call float @dx.op.unary.f32(i32 23, float %2338)  ; Log(value)
  %2380 = fmul fast float %2379, 0x3FE62E4300000000
  %2381 = fmul fast float %2335, %2380
  %2382 = fsub fast float -0.000000e+00, %2381
  %2383 = fsub fast float 1.000000e+00, %2338
  %2384 = fdiv fast float %2382, %2383
  br label %2385

; <label>:2385                                    ; preds = %2378, %2374
  %2386 = phi float [ %2384, %2378 ], [ %2335, %2374 ]
  %2387 = phi float [ %2380, %2378 ], [ 0.000000e+00, %2374 ]
  %2388 = fcmp fast une float %2339, 1.000000e+00
  br i1 %2388, label %2389, label %2396, !dx.controlflow.hints !116

; <label>:2389                                    ; preds = %2385
  %2390 = call float @dx.op.unary.f32(i32 23, float %2339)  ; Log(value)
  %2391 = fmul fast float %2390, 0x3FE62E4300000000
  %2392 = fmul fast float %2336, %2391
  %2393 = fsub fast float -0.000000e+00, %2392
  %2394 = fsub fast float 1.000000e+00, %2339
  %2395 = fdiv fast float %2393, %2394
  br label %2396

; <label>:2396                                    ; preds = %2389, %2385
  %2397 = phi float [ %2395, %2389 ], [ %2336, %2385 ]
  %2398 = phi float [ %2391, %2389 ], [ 0.000000e+00, %2385 ]
  %2399 = fmul fast float %2362, %2346
  %2400 = fmul fast float %2363, %2346
  %2401 = fmul fast float %2364, %2346
  %2402 = fmul fast float %2365, %2346
  %2403 = fmul fast float %2375, %2344
  %2404 = fmul fast float %2386, %2344
  %2405 = fmul fast float %2397, %2344
  %2406 = fmul fast float %2376, %2344
  %2407 = fmul fast float %2387, %2344
  %2408 = fmul fast float %2398, %2344
  %2409 = fadd fast float %2403, %2399
  %2410 = fadd fast float %2404, %2400
  %2411 = fadd fast float %2405, %2401
  %2412 = fadd fast float %2406, %2402
  %2413 = fadd fast float %2407, %2402
  %2414 = fadd fast float %2408, %2402
  %2415 = fcmp fast une float %2412, 0.000000e+00
  br i1 %2415, label %2416, label %2423, !dx.controlflow.hints !117

; <label>:2416                                    ; preds = %2396
  %2417 = fmul fast float %2412, 0x3FF7154760000000
  %2418 = call float @dx.op.unary.f32(i32 21, float %2417)  ; Exp(value)
  %2419 = fsub fast float 1.000000e+00, %2418
  %2420 = fmul fast float %2409, %2419
  %2421 = fsub fast float -0.000000e+00, %2420
  %2422 = fdiv fast float %2421, %2412
  br label %2423

; <label>:2423                                    ; preds = %2416, %2396
  %2424 = phi float [ %2418, %2416 ], [ 1.000000e+00, %2396 ]
  %2425 = phi float [ %2422, %2416 ], [ %2409, %2396 ]
  %2426 = fcmp fast une float %2413, 0.000000e+00
  br i1 %2426, label %2427, label %2434, !dx.controlflow.hints !117

; <label>:2427                                    ; preds = %2423
  %2428 = fmul fast float %2413, 0x3FF7154760000000
  %2429 = call float @dx.op.unary.f32(i32 21, float %2428)  ; Exp(value)
  %2430 = fsub fast float 1.000000e+00, %2429
  %2431 = fmul fast float %2410, %2430
  %2432 = fsub fast float -0.000000e+00, %2431
  %2433 = fdiv fast float %2432, %2413
  br label %2434

; <label>:2434                                    ; preds = %2427, %2423
  %2435 = phi float [ %2429, %2427 ], [ 1.000000e+00, %2423 ]
  %2436 = phi float [ %2433, %2427 ], [ %2410, %2423 ]
  %2437 = fcmp fast une float %2414, 0.000000e+00
  br i1 %2437, label %2438, label %2445, !dx.controlflow.hints !117

; <label>:2438                                    ; preds = %2434
  %2439 = fmul fast float %2414, 0x3FF7154760000000
  %2440 = call float @dx.op.unary.f32(i32 21, float %2439)  ; Exp(value)
  %2441 = fsub fast float 1.000000e+00, %2440
  %2442 = fmul fast float %2411, %2441
  %2443 = fsub fast float -0.000000e+00, %2442
  %2444 = fdiv fast float %2443, %2414
  br label %2445

; <label>:2445                                    ; preds = %2438, %2434
  %2446 = phi float [ %2440, %2438 ], [ 1.000000e+00, %2434 ]
  %2447 = phi float [ %2444, %2438 ], [ %2411, %2434 ]
  %2448 = fcmp fast ogt float %2344, %2346
  br i1 %2448, label %2449, label %2469, !dx.controlflow.hints !118

; <label>:2449                                    ; preds = %2445
  %2450 = fsub fast float 1.000000e+00, %2346
  %2451 = fmul fast float %2362, %2450
  %2452 = fmul fast float %2363, %2450
  %2453 = fmul fast float %2364, %2450
  %2454 = fmul fast float %2365, %2450
  %2455 = fcmp fast une float %2454, 0.000000e+00
  br i1 %2455, label %2456, label %2507, !dx.controlflow.hints !119

; <label>:2456                                    ; preds = %2449
  %2457 = fmul fast float %2454, 0x3FF7154760000000
  %2458 = call float @dx.op.unary.f32(i32 21, float %2457)  ; Exp(value)
  %2459 = fsub fast float 1.000000e+00, %2458
  %2460 = fmul fast float %2451, %2459
  %2461 = fsub fast float -0.000000e+00, %2460
  %2462 = fmul fast float %2452, %2459
  %2463 = fsub fast float -0.000000e+00, %2462
  %2464 = fmul fast float %2453, %2459
  %2465 = fsub fast float -0.000000e+00, %2464
  %2466 = fdiv fast float %2461, %2454
  %2467 = fdiv fast float %2463, %2454
  %2468 = fdiv fast float %2465, %2454
  br label %2507

; <label>:2469                                    ; preds = %2445
  %2470 = fsub fast float 1.000000e+00, %2344
  %2471 = fmul fast float %2375, %2470
  %2472 = fmul fast float %2386, %2470
  %2473 = fmul fast float %2397, %2470
  %2474 = fmul fast float %2376, %2470
  %2475 = fmul fast float %2387, %2470
  %2476 = fmul fast float %2398, %2470
  %2477 = fcmp fast une float %2474, 0.000000e+00
  br i1 %2477, label %2478, label %2485, !dx.controlflow.hints !117

; <label>:2478                                    ; preds = %2469
  %2479 = fmul fast float %2474, 0x3FF7154760000000
  %2480 = call float @dx.op.unary.f32(i32 21, float %2479)  ; Exp(value)
  %2481 = fsub fast float 1.000000e+00, %2480
  %2482 = fmul fast float %2471, %2481
  %2483 = fsub fast float -0.000000e+00, %2482
  %2484 = fdiv fast float %2483, %2474
  br label %2485

; <label>:2485                                    ; preds = %2478, %2469
  %2486 = phi float [ %2484, %2478 ], [ %2471, %2469 ]
  %2487 = phi float [ %2480, %2478 ], [ 1.000000e+00, %2469 ]
  %2488 = fcmp fast une float %2475, 0.000000e+00
  br i1 %2488, label %2489, label %2496, !dx.controlflow.hints !117

; <label>:2489                                    ; preds = %2485
  %2490 = fmul fast float %2475, 0x3FF7154760000000
  %2491 = call float @dx.op.unary.f32(i32 21, float %2490)  ; Exp(value)
  %2492 = fsub fast float 1.000000e+00, %2491
  %2493 = fmul fast float %2472, %2492
  %2494 = fsub fast float -0.000000e+00, %2493
  %2495 = fdiv fast float %2494, %2475
  br label %2496

; <label>:2496                                    ; preds = %2489, %2485
  %2497 = phi float [ %2495, %2489 ], [ %2472, %2485 ]
  %2498 = phi float [ %2491, %2489 ], [ 1.000000e+00, %2485 ]
  %2499 = fcmp fast une float %2476, 0.000000e+00
  br i1 %2499, label %2500, label %2507, !dx.controlflow.hints !117

; <label>:2500                                    ; preds = %2496
  %2501 = fmul fast float %2476, 0x3FF7154760000000
  %2502 = call float @dx.op.unary.f32(i32 21, float %2501)  ; Exp(value)
  %2503 = fsub fast float 1.000000e+00, %2502
  %2504 = fmul fast float %2473, %2503
  %2505 = fsub fast float -0.000000e+00, %2504
  %2506 = fdiv fast float %2505, %2476
  br label %2507

; <label>:2507                                    ; preds = %2500, %2496, %2456, %2449
  %2508 = phi float [ %2506, %2500 ], [ %2468, %2456 ], [ %2453, %2449 ], [ %2473, %2496 ]
  %2509 = phi float [ %2497, %2500 ], [ %2467, %2456 ], [ %2452, %2449 ], [ %2497, %2496 ]
  %2510 = phi float [ %2486, %2500 ], [ %2466, %2456 ], [ %2451, %2449 ], [ %2486, %2496 ]
  %2511 = phi float [ %2502, %2500 ], [ %2458, %2456 ], [ 1.000000e+00, %2449 ], [ 1.000000e+00, %2496 ]
  %2512 = phi float [ %2498, %2500 ], [ %2458, %2456 ], [ 1.000000e+00, %2449 ], [ %2498, %2496 ]
  %2513 = phi float [ %2487, %2500 ], [ %2458, %2456 ], [ 1.000000e+00, %2449 ], [ %2487, %2496 ]
  %2514 = fmul fast float %2513, %2425
  %2515 = fmul fast float %2512, %2436
  %2516 = fmul fast float %2511, %2447
  %2517 = fadd fast float %2514, %2510
  %2518 = fadd fast float %2515, %2509
  %2519 = fadd fast float %2516, %2508
  %2520 = fmul fast float %2513, %2424
  %2521 = fmul fast float %2512, %2435
  %2522 = fmul fast float %2511, %2446
  br label %2523

; <label>:2523                                    ; preds = %2507, %2318
  %2524 = phi float [ %2324, %2318 ], [ %2522, %2507 ]
  %2525 = phi float [ %2323, %2318 ], [ %2521, %2507 ]
  %2526 = phi float [ %2322, %2318 ], [ %2520, %2507 ]
  %2527 = phi float [ %2321, %2318 ], [ %2519, %2507 ]
  %2528 = phi float [ %2320, %2318 ], [ %2518, %2507 ]
  %2529 = phi float [ %2319, %2318 ], [ %2517, %2507 ]
  %2530 = fmul fast float %2526, %1667
  %2531 = fmul fast float %2525, %1668
  %2532 = fmul fast float %2524, %1669
  %2533 = fsub fast float 1.000000e+00, %1730
  %2534 = fmul fast float %2529, %2533
  %2535 = fmul fast float %2528, %2533
  %2536 = fmul fast float %2527, %2533
  %2537 = fadd fast float %2534, %2530
  %2538 = fadd fast float %2535, %2531
  %2539 = fadd fast float %2536, %2532
  %2540 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 423)  ; CBufferLoadLegacy(handle,regIndex)
  %2541 = extractvalue %dx.types.CBufRet.f32 %2540, 2
  %2542 = fmul fast float %2541, %1740
  %2543 = call float @dx.op.unary.f32(i32 7, float %2542)  ; Saturate(value)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %3, i32 %21, i32 %22, i32 undef, float %1730, float %1730, float %1730, float %1730, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %2544 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2545 = extractvalue %dx.types.CBufRet.f32 %2544, 0
  %2546 = fmul fast float %2545, %2537
  %2547 = fmul fast float %2545, %2538
  %2548 = fmul fast float %2545, %2539
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %4, i32 %21, i32 %22, i32 undef, float %2546, float %2547, float %2548, float %2546, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %21, i32 %22, i32 undef, float %2543, float %2543, float %2543, float %2543, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
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
!8 = !{i32 1, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 27, i32 1, i32 2, i32 0, !7}
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
!31 = !{void ()* @cs_fog_raymarching_air_clouds_brfog, !"cs_fog_raymarching_air_clouds_brfog", null, !4, !32}
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
!48 = distinct !{!48, !"dx.controlflow.hints", i32 2}
!49 = distinct !{!49, !"dx.controlflow.hints", i32 1}
!50 = distinct !{!50, !"dx.controlflow.hints", i32 2}
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

