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
; shader hash: aad5235a0d43a5268f2827da3c3e71a4
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

define void @cs_fog_raymarching_clouds_brfog() {
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
  %237 = extractvalue %dx.types.CBufRet.f32 %235, 1
  %238 = extractvalue %dx.types.CBufRet.f32 %235, 2
  %239 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %240 = extractvalue %dx.types.CBufRet.f32 %239, 1
  %241 = fmul fast float %233, 2.000000e+00
  %242 = fmul fast float %234, 2.000000e+00
  %243 = fsub fast float 1.000000e+00, %241
  %244 = fsub fast float 1.000000e+00, %242
  %245 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %246 = extractvalue %dx.types.CBufRet.f32 %245, 0
  %247 = extractvalue %dx.types.CBufRet.f32 %245, 1
  %248 = extractvalue %dx.types.CBufRet.f32 %245, 2
  %249 = fmul fast float %246, %243
  %250 = fmul fast float %247, %243
  %251 = fmul fast float %248, %243
  %252 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %253 = extractvalue %dx.types.CBufRet.f32 %252, 0
  %254 = extractvalue %dx.types.CBufRet.f32 %252, 1
  %255 = extractvalue %dx.types.CBufRet.f32 %252, 2
  %256 = fmul fast float %253, %244
  %257 = fmul fast float %254, %244
  %258 = fmul fast float %255, %244
  %259 = fadd fast float %256, %249
  %260 = fadd fast float %257, %250
  %261 = fadd fast float %258, %251
  %262 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %263 = extractvalue %dx.types.CBufRet.f32 %262, 0
  %264 = extractvalue %dx.types.CBufRet.f32 %262, 1
  %265 = extractvalue %dx.types.CBufRet.f32 %262, 2
  %266 = fadd fast float %259, %263
  %267 = fadd fast float %260, %264
  %268 = fadd fast float %261, %265
  %269 = fmul fast float %266, %240
  %270 = fmul fast float %267, %240
  %271 = fmul fast float %268, %240
  %272 = fmul fast float %269, %269
  %273 = fmul fast float %270, %270
  %274 = fadd fast float %272, %273
  %275 = fmul fast float %271, %271
  %276 = fadd fast float %274, %275
  %277 = call float @dx.op.unary.f32(i32 24, float %276)  ; Sqrt(value)
  %278 = fdiv fast float 1.000000e+00, %277
  %279 = fmul fast float %269, %278
  %280 = fmul fast float %270, %278
  %281 = fmul fast float %271, %278
  %282 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %6, i32 0, i32 %36, i32 %37, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %283 = extractvalue %dx.types.ResRet.f32 %282, 0
  %284 = fcmp fast ogt float %283, -1.000000e+00
  %285 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %286 = extractvalue %dx.types.CBufRet.f32 %285, 1
  %287 = select i1 %284, float %286, float 1.000000e+00
  %288 = fadd fast float %283, 1.000000e+00
  %289 = fmul fast float %287, %288
  %290 = call float @dx.op.unary.f32(i32 6, float %289)  ; FAbs(value)
  %291 = fdiv fast float 1.000000e+00, %240
  %292 = fmul fast float %291, %277
  %293 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 423)  ; CBufferLoadLegacy(handle,regIndex)
  %294 = extractvalue %dx.types.CBufRet.f32 %293, 1
  %295 = fmul fast float %294, %292
  %296 = fmul fast float %292, %290
  %297 = extractvalue %dx.types.CBufRet.f32 %285, 3
  %298 = fcmp fast oge float %290, %297
  %299 = call float @dx.op.binary.f32(i32 36, float %296, float %295)  ; FMin(a,b)
  %300 = select i1 %298, float %295, float %299
  %301 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %302 = extractvalue %dx.types.CBufRet.i32 %301, 3
  %303 = icmp eq i32 %302, 0
  %304 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 31)  ; CBufferLoadLegacy(handle,regIndex)
  %305 = extractvalue %dx.types.CBufRet.f32 %304, 2
  %306 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 32)  ; CBufferLoadLegacy(handle,regIndex)
  %307 = extractvalue %dx.types.CBufRet.f32 %306, 2
  %308 = fsub fast float %305, %238
  %309 = fadd fast float %308, %307
  br i1 %303, label %321, label %310, !dx.controlflow.hints !35

; <label>:310                                     ; preds = %205
  %311 = fsub fast float -0.000000e+00, %237
  %312 = fsub fast float -0.000000e+00, %236
  %313 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %312, float %311, float %309)  ; Dot3(ax,ay,az,bx,by,bz)
  %314 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %279, float %280, float %281)  ; Dot3(ax,ay,az,bx,by,bz)
  %315 = fdiv fast float 1.000000e+00, %314
  %316 = fmul fast float %315, %313
  %317 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %312, float %311, float %308)  ; Dot3(ax,ay,az,bx,by,bz)
  %318 = fmul fast float %315, %317
  %319 = call float @dx.op.binary.f32(i32 36, float %316, float %318)  ; FMin(a,b)
  %320 = call float @dx.op.binary.f32(i32 35, float %316, float %318)  ; FMax(a,b)
  br label %354

; <label>:321                                     ; preds = %205
  %322 = fdiv fast float 1.000000e+00, %279
  %323 = fdiv fast float 1.000000e+00, %280
  %324 = fdiv fast float 1.000000e+00, %281
  %325 = extractvalue %dx.types.CBufRet.f32 %304, 0
  %326 = extractvalue %dx.types.CBufRet.f32 %304, 1
  %327 = extractvalue %dx.types.CBufRet.f32 %306, 0
  %328 = extractvalue %dx.types.CBufRet.f32 %306, 1
  %329 = fsub fast float %325, %236
  %330 = fmul fast float %329, %322
  %331 = fadd fast float %329, %327
  %332 = fmul fast float %331, %322
  %333 = call float @dx.op.binary.f32(i32 36, float %330, float %332)  ; FMin(a,b)
  %334 = call float @dx.op.binary.f32(i32 35, float %330, float %332)  ; FMax(a,b)
  %335 = fsub fast float %326, %237
  %336 = fmul fast float %335, %323
  %337 = fadd fast float %335, %328
  %338 = fmul fast float %337, %323
  %339 = call float @dx.op.binary.f32(i32 36, float %336, float %338)  ; FMin(a,b)
  %340 = call float @dx.op.binary.f32(i32 35, float %333, float %339)  ; FMax(a,b)
  %341 = call float @dx.op.binary.f32(i32 35, float %336, float %338)  ; FMax(a,b)
  %342 = call float @dx.op.binary.f32(i32 36, float %334, float %341)  ; FMin(a,b)
  %343 = fmul fast float %308, %324
  %344 = fmul fast float %309, %324
  %345 = call float @dx.op.binary.f32(i32 36, float %343, float %344)  ; FMin(a,b)
  %346 = call float @dx.op.binary.f32(i32 35, float %340, float %345)  ; FMax(a,b)
  %347 = call float @dx.op.binary.f32(i32 35, float %343, float %344)  ; FMax(a,b)
  %348 = call float @dx.op.binary.f32(i32 36, float %342, float %347)  ; FMin(a,b)
  %349 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %346)  ; FMax(a,b)
  %350 = fcmp fast ult float %348, %349
  br i1 %350, label %354, label %351, !dx.controlflow.hints !36

; <label>:351                                     ; preds = %321
  %352 = call float @dx.op.binary.f32(i32 36, float %346, float %348)  ; FMin(a,b)
  %353 = call float @dx.op.binary.f32(i32 35, float %346, float %348)  ; FMax(a,b)
  br label %354

; <label>:354                                     ; preds = %351, %321, %310
  %355 = phi float [ %319, %310 ], [ %352, %351 ], [ 0.000000e+00, %321 ]
  %356 = phi float [ %320, %310 ], [ %353, %351 ], [ 0.000000e+00, %321 ]
  %357 = fcmp fast oeq float %356, 0.000000e+00
  br i1 %357, label %361, label %358, !dx.controlflow.hints !37

; <label>:358                                     ; preds = %354
  %359 = call float @dx.op.binary.f32(i32 36, float 0x47EFFFFFE0000000, float %355)  ; FMin(a,b)
  %360 = call float @dx.op.binary.f32(i32 35, float -1.000000e+00, float %356)  ; FMax(a,b)
  br label %361

; <label>:361                                     ; preds = %358, %354
  %362 = phi i32 [ 1, %358 ], [ 0, %354 ]
  %363 = phi float [ %360, %358 ], [ -1.000000e+00, %354 ]
  %364 = phi float [ %359, %358 ], [ 0x47EFFFFFE0000000, %354 ]
  %365 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %366 = extractvalue %dx.types.CBufRet.f32 %365, 2
  %367 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %368 = extractvalue %dx.types.CBufRet.f32 %367, 3
  %369 = fsub fast float -0.000000e+00, %236
  %370 = fsub fast float -0.000000e+00, %237
  %371 = fsub fast float %366, %238
  %372 = fadd fast float %371, %368
  %373 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %369, float %370, float %372)  ; Dot3(ax,ay,az,bx,by,bz)
  %374 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %279, float %280, float %281)  ; Dot3(ax,ay,az,bx,by,bz)
  %375 = fdiv fast float 1.000000e+00, %374
  %376 = fmul fast float %375, %373
  %377 = fcmp fast olt float %376, 0.000000e+00
  %378 = fcmp fast ogt float %281, 0.000000e+00
  %379 = and i1 %378, %377
  br i1 %379, label %384, label %380, !dx.controlflow.hints !38

; <label>:380                                     ; preds = %361
  %381 = fcmp fast olt float %281, 0.000000e+00
  br i1 %381, label %382, label %384, !dx.controlflow.hints !39

; <label>:382                                     ; preds = %380
  %383 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %376)  ; FMax(a,b)
  br label %384

; <label>:384                                     ; preds = %382, %380, %361
  %385 = phi float [ 0.000000e+00, %361 ], [ %383, %382 ], [ 0.000000e+00, %380 ]
  %386 = phi float [ 0.000000e+00, %361 ], [ 0x47EFFFFFE0000000, %382 ], [ %376, %380 ]
  %387 = fcmp fast oeq float %386, 0.000000e+00
  br i1 %387, label %391, label %388, !dx.controlflow.hints !40

; <label>:388                                     ; preds = %384
  %389 = call float @dx.op.binary.f32(i32 36, float %364, float %385)  ; FMin(a,b)
  %390 = call float @dx.op.binary.f32(i32 35, float %363, float %386)  ; FMax(a,b)
  br label %391

; <label>:391                                     ; preds = %388, %384
  %392 = phi i32 [ 1, %388 ], [ 0, %384 ]
  %393 = phi float [ %390, %388 ], [ %363, %384 ]
  %394 = phi float [ %389, %388 ], [ %364, %384 ]
  %395 = call float @dx.op.binary.f32(i32 36, float %300, float %393)  ; FMin(a,b)
  %396 = call float @dx.op.binary.f32(i32 35, float %277, float %394)  ; FMax(a,b)
  %397 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %398 = extractvalue %dx.types.CBufRet.f32 %397, 0
  %399 = fmul fast float %225, 2.000000e+00
  %400 = fadd fast float %399, -1.000000e+00
  %401 = fmul fast float %398, %400
  %402 = fadd fast float %401, %396
  %403 = fcmp fast olt float %402, %395
  %404 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %405 = extractvalue %dx.types.CBufRet.f32 %404, 2
  %406 = fcmp fast olt float %405, 1.000000e+00
  %407 = and i1 %406, %403
  br i1 %407, label %408, label %1513

; <label>:408                                     ; preds = %391
  %409 = fmul fast float %402, %281
  %410 = fadd fast float %409, %238
  %411 = fmul fast float %402, %280
  %412 = fadd fast float %411, %237
  %413 = fmul fast float %402, %279
  %414 = fadd fast float %413, %236
  br label %415

; <label>:415                                     ; preds = %1487, %408
  %416 = phi i32 [ %1489, %1487 ], [ undef, %408 ]
  %417 = phi float [ %1490, %1487 ], [ undef, %408 ]
  %418 = phi i32 [ %671, %1487 ], [ undef, %408 ]
  %419 = phi float [ %673, %1487 ], [ undef, %408 ]
  %420 = phi float [ %1491, %1487 ], [ 0.000000e+00, %408 ]
  %421 = phi float [ %1492, %1487 ], [ 1.000000e+00, %408 ]
  %422 = phi float [ %1493, %1487 ], [ 0.000000e+00, %408 ]
  %423 = phi float [ %1494, %1487 ], [ 0.000000e+00, %408 ]
  %424 = phi float [ %1495, %1487 ], [ 0.000000e+00, %408 ]
  %425 = phi float [ %1505, %1487 ], [ %414, %408 ]
  %426 = phi float [ %1506, %1487 ], [ %412, %408 ]
  %427 = phi float [ %1507, %1487 ], [ %410, %408 ]
  %428 = phi float [ %1488, %1487 ], [ %402, %408 ]
  %429 = phi float [ %1496, %1487 ], [ 0.000000e+00, %408 ]
  %430 = phi float [ %1497, %1487 ], [ 0.000000e+00, %408 ]
  %431 = phi float [ %1498, %1487 ], [ 0.000000e+00, %408 ]
  %432 = phi float [ %1499, %1487 ], [ 0.000000e+00, %408 ]
  %433 = phi float [ %1500, %1487 ], [ 0.000000e+00, %408 ]
  %434 = phi i32 [ %1501, %1487 ], [ 0, %408 ]
  %435 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %436 = extractvalue %dx.types.CBufRet.f32 %435, 0
  %437 = icmp eq i32 %362, 0
  br i1 %437, label %494, label %438, !dx.controlflow.hints !41

; <label>:438                                     ; preds = %415
  %439 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 35)  ; CBufferLoadLegacy(handle,regIndex)
  %440 = extractvalue %dx.types.CBufRet.f32 %439, 0
  %441 = extractvalue %dx.types.CBufRet.f32 %439, 1
  %442 = extractvalue %dx.types.CBufRet.f32 %439, 2
  %443 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 31)  ; CBufferLoadLegacy(handle,regIndex)
  %444 = extractvalue %dx.types.CBufRet.f32 %443, 0
  %445 = extractvalue %dx.types.CBufRet.f32 %443, 1
  %446 = extractvalue %dx.types.CBufRet.f32 %443, 2
  %447 = fsub fast float %425, %444
  %448 = fsub fast float %426, %445
  %449 = fsub fast float %427, %446
  %450 = fmul fast float %447, %440
  %451 = fmul fast float %448, %441
  %452 = fmul fast float %449, %442
  %453 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %454 = extractvalue %dx.types.CBufRet.i32 %453, 3
  %455 = icmp eq i32 %454, 0
  br i1 %455, label %459, label %456, !dx.controlflow.hints !42

; <label>:456                                     ; preds = %438
  %457 = call float @dx.op.unary.f32(i32 22, float %450)  ; Frc(value)
  %458 = call float @dx.op.unary.f32(i32 22, float %451)  ; Frc(value)
  br label %459

; <label>:459                                     ; preds = %456, %438
  %460 = phi float [ %457, %456 ], [ %450, %438 ]
  %461 = phi float [ %458, %456 ], [ %451, %438 ]
  %462 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %16, float %460, float %461, float %452, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %463 = extractvalue %dx.types.ResRet.f32 %462, 0
  %464 = fmul fast float %463, 2.000000e+00
  %465 = fadd fast float %464, -1.000000e+00
  %466 = extractvalue %dx.types.CBufRet.f32 %439, 3
  %467 = fmul fast float %465, %466
  %468 = fcmp fast olt float %467, 0.000000e+00
  %469 = fcmp fast oge float %452, 0.000000e+00
  %470 = fcmp fast ole float %452, 1.000000e+00
  br i1 %455, label %473, label %471, !dx.controlflow.hints !43

; <label>:471                                     ; preds = %459
  %472 = and i1 %469, %470
  br label %483

; <label>:473                                     ; preds = %459
  %474 = fcmp fast oge float %450, 0.000000e+00
  %475 = fcmp fast oge float %451, 0.000000e+00
  %476 = and i1 %474, %475
  %477 = and i1 %469, %476
  %478 = fcmp fast ole float %450, 1.000000e+00
  %479 = fcmp fast ole float %451, 1.000000e+00
  %480 = and i1 %478, %479
  %481 = and i1 %470, %480
  %482 = and i1 %477, %481
  br label %483

; <label>:483                                     ; preds = %473, %471
  %484 = phi i1 [ %472, %471 ], [ %482, %473 ]
  %485 = and i1 %468, %484
  %486 = call float @dx.op.unary.f32(i32 6, float %467)  ; FAbs(value)
  %487 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %488 = extractvalue %dx.types.CBufRet.f32 %487, 1
  %489 = extractvalue %dx.types.CBufRet.f32 %487, 0
  %490 = call float @dx.op.binary.f32(i32 35, float %486, float %489)  ; FMax(a,b)
  %491 = select i1 %485, float %488, float %490
  %492 = zext i1 %485 to i32
  %493 = call float @dx.op.binary.f32(i32 36, float 0x47EFFFFFE0000000, float %491)  ; FMin(a,b)
  br label %494

; <label>:494                                     ; preds = %483, %415
  %495 = phi i32 [ %492, %483 ], [ 0, %415 ]
  %496 = phi float [ %493, %483 ], [ 0x47EFFFFFE0000000, %415 ]
  %497 = icmp eq i32 %392, 0
  br i1 %497, label %670, label %498, !dx.controlflow.hints !44

; <label>:498                                     ; preds = %494
  %499 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %500 = extractvalue %dx.types.CBufRet.i32 %499, 1
  %501 = and i32 %500, 1
  %502 = icmp eq i32 %501, 0
  br i1 %502, label %503, label %660, !dx.controlflow.hints !45

; <label>:503                                     ; preds = %498
  %504 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 204)  ; CBufferLoadLegacy(handle,regIndex)
  %505 = extractvalue %dx.types.CBufRet.f32 %504, 2
  %506 = extractvalue %dx.types.CBufRet.f32 %504, 3
  %507 = fmul fast float %505, %425
  %508 = fmul fast float %506, %426
  %509 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 205)  ; CBufferLoadLegacy(handle,regIndex)
  %510 = extractvalue %dx.types.CBufRet.f32 %509, 0
  %511 = extractvalue %dx.types.CBufRet.f32 %509, 1
  %512 = fadd fast float %507, %510
  %513 = fadd fast float %508, %511
  %514 = call float @dx.op.unary.f32(i32 7, float %512)  ; Saturate(value)
  %515 = call float @dx.op.unary.f32(i32 7, float %513)  ; Saturate(value)
  %516 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %18, float %514, float %515, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %517 = extractvalue %dx.types.ResRet.f32 %516, 0
  %518 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %519 = extractvalue %dx.types.CBufRet.f32 %518, 0
  %520 = fmul fast float %519, %517
  %521 = fsub fast float %512, %514
  %522 = fsub fast float %513, %515
  %523 = extractvalue %dx.types.CBufRet.f32 %504, 0
  %524 = extractvalue %dx.types.CBufRet.f32 %504, 1
  %525 = fmul fast float %523, %521
  %526 = fmul fast float %524, %522
  %527 = fmul fast float %525, %525
  %528 = fmul fast float %526, %526
  %529 = fadd fast float %527, %528
  %530 = call float @dx.op.unary.f32(i32 24, float %529)  ; Sqrt(value)
  %531 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %532 = extractvalue %dx.types.CBufRet.f32 %531, 3
  %533 = fmul fast float %532, %530
  %534 = call float @dx.op.unary.f32(i32 7, float %533)  ; Saturate(value)
  %535 = extractvalue %dx.types.CBufRet.f32 %531, 2
  %536 = fsub fast float %535, %520
  %537 = fmul fast float %536, %534
  %538 = extractvalue %dx.types.CBufRet.f32 %518, 1
  %539 = fsub fast float %427, %520
  %540 = fsub fast float %539, %538
  %541 = fsub fast float %540, %537
  %542 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %543 = extractvalue %dx.types.CBufRet.f32 %542, 2
  %544 = fsub fast float %541, %543
  %545 = fcmp fast olt float %544, 0.000000e+00
  %546 = call float @dx.op.unary.f32(i32 6, float %544)  ; FAbs(value)
  %547 = extractvalue %dx.types.CBufRet.i32 %499, 0
  %548 = icmp eq i32 %547, 0
  br i1 %548, label %602, label %549

; <label>:549                                     ; preds = %503
  br label %550

; <label>:550                                     ; preds = %589, %549
  %551 = phi i32 [ %595, %589 ], [ 1, %549 ]
  %552 = phi float [ %597, %589 ], [ 0x47EFFFFFE0000000, %549 ]
  %553 = phi i32 [ %598, %589 ], [ 0, %549 ]
  %554 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %555 = extractvalue %dx.types.CBufRet.f32 %554, 1
  %556 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %557 = extractvalue %dx.types.CBufRet.i32 %556, 1
  %558 = and i32 %557, 8
  %559 = icmp eq i32 %558, 0
  %560 = fcmp fast ogt float %555, %541
  %561 = or i1 %560, %559
  %562 = add i32 %553, 171
  %563 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 %562)  ; CBufferLoadLegacy(handle,regIndex)
  %564 = extractvalue %dx.types.CBufRet.f32 %563, 0
  %565 = extractvalue %dx.types.CBufRet.f32 %563, 1
  %566 = extractvalue %dx.types.CBufRet.f32 %563, 2
  br i1 %561, label %567, label %573, !dx.controlflow.hints !46

; <label>:567                                     ; preds = %550
  %568 = fsub fast float %564, %425
  %569 = fsub fast float %565, %426
  %570 = fmul fast float %568, %568
  %571 = fmul fast float %569, %569
  %572 = fadd fast float %570, %571
  br label %589

; <label>:573                                     ; preds = %550
  %574 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %575 = extractvalue %dx.types.CBufRet.f32 %574, 2
  %576 = extractvalue %dx.types.CBufRet.f32 %554, 2
  %577 = fmul fast float %576, %575
  %578 = fsub fast float %577, %555
  %579 = fdiv fast float %566, %578
  %580 = fsub fast float %425, %564
  %581 = fsub fast float %426, %565
  %582 = fsub fast float %541, %555
  %583 = fmul fast float %579, %582
  %584 = fmul fast float %580, %580
  %585 = fmul fast float %581, %581
  %586 = fadd fast float %584, %585
  %587 = fmul fast float %583, %583
  %588 = fadd fast float %586, %587
  br label %589

; <label>:589                                     ; preds = %573, %567
  %590 = phi float [ %572, %567 ], [ %588, %573 ]
  %591 = call float @dx.op.unary.f32(i32 24, float %590)  ; Sqrt(value)
  %592 = fsub float %566, %591
  %593 = fcmp fast olt float %592, 0.000000e+00
  %594 = zext i1 %593 to i32
  %595 = and i32 %594, %551
  %596 = call float @dx.op.unary.f32(i32 6, float %592)  ; FAbs(value)
  %597 = call float @dx.op.binary.f32(i32 36, float %552, float %596)  ; FMin(a,b)
  %598 = add i32 %553, 1
  %599 = extractvalue %dx.types.CBufRet.i32 %556, 0
  %600 = icmp ult i32 %598, %599
  br i1 %600, label %550, label %601

; <label>:601                                     ; preds = %589
  br label %602

; <label>:602                                     ; preds = %601, %503
  %603 = phi i32 [ 1, %503 ], [ %595, %601 ]
  %604 = phi float [ 0x47EFFFFFE0000000, %503 ], [ %597, %601 ]
  br label %605

; <label>:605                                     ; preds = %605, %602
  %606 = phi i32 [ %603, %602 ], [ %645, %605 ]
  %607 = phi float [ 0x47EFFFFFE0000000, %602 ], [ %647, %605 ]
  %608 = phi i32 [ 0, %602 ], [ %648, %605 ]
  %609 = add nuw nsw i32 %608, 191
  %610 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 %609)  ; CBufferLoadLegacy(handle,regIndex)
  %611 = extractvalue %dx.types.CBufRet.f32 %610, 0
  %612 = extractvalue %dx.types.CBufRet.f32 %610, 1
  %613 = extractvalue %dx.types.CBufRet.f32 %610, 2
  %614 = add nuw nsw i32 %608, 195
  %615 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 %614)  ; CBufferLoadLegacy(handle,regIndex)
  %616 = extractvalue %dx.types.CBufRet.f32 %615, 0
  %617 = extractvalue %dx.types.CBufRet.f32 %615, 1
  %618 = extractvalue %dx.types.CBufRet.f32 %615, 2
  %619 = fsub fast float %425, %611
  %620 = fsub fast float %426, %612
  %621 = fsub fast float %541, %613
  %622 = call float @dx.op.unary.f32(i32 6, float %619)  ; FAbs(value)
  %623 = call float @dx.op.unary.f32(i32 6, float %620)  ; FAbs(value)
  %624 = call float @dx.op.unary.f32(i32 6, float %621)  ; FAbs(value)
  %625 = fsub fast float %622, %616
  %626 = fsub fast float %623, %617
  %627 = fsub fast float %624, %618
  %628 = call float @dx.op.binary.f32(i32 35, float %625, float 0.000000e+00)  ; FMax(a,b)
  %629 = call float @dx.op.binary.f32(i32 35, float %626, float 0.000000e+00)  ; FMax(a,b)
  %630 = call float @dx.op.binary.f32(i32 35, float %627, float 0.000000e+00)  ; FMax(a,b)
  %631 = fmul fast float %628, %628
  %632 = fmul fast float %629, %629
  %633 = fadd fast float %632, %631
  %634 = fmul fast float %630, %630
  %635 = fadd fast float %633, %634
  %636 = call float @dx.op.unary.f32(i32 24, float %635)  ; Sqrt(value)
  %637 = call float @dx.op.binary.f32(i32 35, float %626, float %627)  ; FMax(a,b)
  %638 = call float @dx.op.binary.f32(i32 35, float %625, float %637)  ; FMax(a,b)
  %639 = call float @dx.op.binary.f32(i32 36, float %638, float 0.000000e+00)  ; FMin(a,b)
  %640 = fadd fast float %639, %636
  %641 = fsub fast float -0.000000e+00, %640
  %642 = fcmp ogt float %640, -0.000000e+00
  %643 = icmp ne i32 %606, 0
  %644 = and i1 %643, %642
  %645 = zext i1 %644 to i32
  %646 = call float @dx.op.unary.f32(i32 6, float %641)  ; FAbs(value)
  %647 = call float @dx.op.binary.f32(i32 36, float %607, float %646)  ; FMin(a,b)
  %648 = add nuw nsw i32 %608, 1
  %649 = icmp eq i32 %648, 4
  br i1 %649, label %650, label %605

; <label>:650                                     ; preds = %605
  %651 = call float @dx.op.binary.f32(i32 36, float %546, float %647)  ; FMin(a,b)
  %652 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %653 = extractvalue %dx.types.CBufRet.i32 %652, 1
  %654 = and i32 %653, 2
  %655 = icmp ne i32 %654, 0
  %656 = xor i1 %644, %655
  %657 = call float @dx.op.binary.f32(i32 36, float %651, float %604)  ; FMin(a,b)
  %658 = and i1 %656, %545
  %659 = zext i1 %658 to i32
  br label %660

; <label>:660                                     ; preds = %650, %498
  %661 = phi i32 [ %418, %498 ], [ %659, %650 ]
  %662 = phi float [ 0.000000e+00, %498 ], [ %657, %650 ]
  %663 = phi float [ %427, %498 ], [ %541, %650 ]
  %664 = icmp ne i32 %661, 0
  %665 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %666 = extractvalue %dx.types.CBufRet.f32 %665, 3
  %667 = call float @dx.op.binary.f32(i32 35, float %662, float %666)  ; FMax(a,b)
  %668 = call float @dx.op.binary.f32(i32 36, float 0x47EFFFFFE0000000, float %667)  ; FMin(a,b)
  %669 = zext i1 %664 to i32
  br label %670

; <label>:670                                     ; preds = %660, %494
  %671 = phi i32 [ %661, %660 ], [ %418, %494 ]
  %672 = phi i32 [ %669, %660 ], [ 0, %494 ]
  %673 = phi float [ %663, %660 ], [ %419, %494 ]
  %674 = phi float [ %668, %660 ], [ 0x47EFFFFFE0000000, %494 ]
  %675 = extractvalue %dx.types.CBufRet.f32 %435, 2
  %676 = fmul fast float %675, %428
  %677 = call float @dx.op.unary.f32(i32 23, float %676)  ; Log(value)
  %678 = fmul fast float %677, 0x3FE62E4300000000
  %679 = call float @dx.op.binary.f32(i32 35, float %678, float 1.000000e+00)  ; FMax(a,b)
  %680 = fmul fast float %679, %674
  %681 = call float @dx.op.binary.f32(i32 36, float %680, float %496)  ; FMin(a,b)
  %682 = call float @dx.op.binary.f32(i32 35, float %681, float %436)  ; FMax(a,b)
  %683 = fadd fast float %395, 0x3F1A36E2E0000000
  %684 = fsub fast float %683, %428
  %685 = call float @dx.op.binary.f32(i32 36, float %684, float %682)  ; FMin(a,b)
  %686 = icmp eq i32 %495, 0
  br i1 %686, label %876, label %687, !dx.controlflow.hints !47

; <label>:687                                     ; preds = %670
  %688 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %689 = extractvalue %dx.types.CBufRet.f32 %688, 3
  %690 = fmul fast float %689, %428
  %691 = fcmp fast oeq float %690, 0.000000e+00
  br i1 %691, label %706, label %692, !dx.controlflow.hints !48

; <label>:692                                     ; preds = %687
  %693 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 41)  ; CBufferLoadLegacy(handle,regIndex)
  %694 = extractvalue %dx.types.CBufRet.f32 %693, 3
  %695 = fmul fast float %694, %690
  %696 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 33)  ; CBufferLoadLegacy(handle,regIndex)
  %697 = extractvalue %dx.types.CBufRet.f32 %696, 0
  %698 = extractvalue %dx.types.CBufRet.f32 %696, 1
  %699 = extractvalue %dx.types.CBufRet.f32 %696, 2
  %700 = fmul fast float %697, %695
  %701 = fmul fast float %698, %695
  %702 = fmul fast float %699, %695
  %703 = call float @dx.op.unary.f32(i32 23, float %700)  ; Log(value)
  %704 = call float @dx.op.unary.f32(i32 23, float %701)  ; Log(value)
  %705 = call float @dx.op.unary.f32(i32 23, float %702)  ; Log(value)
  br label %706

; <label>:706                                     ; preds = %692, %687
  %707 = phi float [ %703, %692 ], [ 0.000000e+00, %687 ]
  %708 = phi float [ %704, %692 ], [ 0.000000e+00, %687 ]
  %709 = phi float [ %705, %692 ], [ 0.000000e+00, %687 ]
  %710 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 35)  ; CBufferLoadLegacy(handle,regIndex)
  %711 = extractvalue %dx.types.CBufRet.f32 %710, 0
  %712 = extractvalue %dx.types.CBufRet.f32 %710, 1
  %713 = extractvalue %dx.types.CBufRet.f32 %710, 2
  %714 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 31)  ; CBufferLoadLegacy(handle,regIndex)
  %715 = extractvalue %dx.types.CBufRet.f32 %714, 0
  %716 = extractvalue %dx.types.CBufRet.f32 %714, 1
  %717 = extractvalue %dx.types.CBufRet.f32 %714, 2
  %718 = fsub fast float %425, %715
  %719 = fsub fast float %426, %716
  %720 = fsub fast float %427, %717
  %721 = fmul fast float %718, %711
  %722 = fmul fast float %719, %712
  %723 = fmul fast float %720, %713
  %724 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 29)  ; CBufferLoadLegacy(handle,regIndex)
  %725 = extractvalue %dx.types.CBufRet.i32 %724, 0
  %726 = extractvalue %dx.types.CBufRet.i32 %724, 1
  %727 = uitofp i32 %725 to float
  %728 = uitofp i32 %726 to float
  %729 = fmul fast float %721, %727
  %730 = fmul fast float %722, %728
  %731 = fadd fast float %729, 5.000000e-01
  %732 = fadd fast float %730, 5.000000e-01
  %733 = call float @dx.op.unary.f32(i32 22, float %731)  ; Frc(value)
  %734 = call float @dx.op.unary.f32(i32 22, float %732)  ; Frc(value)
  %735 = call float @dx.op.unary.f32(i32 27, float %731)  ; Round_ni(value)
  %736 = call float @dx.op.unary.f32(i32 27, float %732)  ; Round_ni(value)
  %737 = fadd fast float %735, 1.000000e+00
  %738 = fadd fast float %736, 1.000000e+00
  %739 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 30)  ; CBufferLoadLegacy(handle,regIndex)
  %740 = extractvalue %dx.types.CBufRet.f32 %739, 0
  %741 = extractvalue %dx.types.CBufRet.f32 %739, 1
  %742 = fmul fast float %740, %737
  %743 = fmul fast float %741, %738
  %744 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %10, %dx.types.Handle %17, float %742, float %743, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %745 = extractvalue %dx.types.ResRet.f32 %744, 0
  %746 = extractvalue %dx.types.ResRet.f32 %744, 1
  %747 = extractvalue %dx.types.ResRet.f32 %744, 2
  %748 = extractvalue %dx.types.ResRet.f32 %744, 3
  %749 = extractvalue %dx.types.CBufRet.i32 %724, 2
  %750 = extractvalue %dx.types.CBufRet.f32 %739, 2
  %751 = uitofp i32 %749 to float
  %752 = fadd fast float %751, -1.000000e+00
  %753 = fmul fast float %752, %745
  %754 = fmul fast float %752, %746
  %755 = fmul fast float %752, %747
  %756 = fmul fast float %752, %748
  %757 = fadd fast float %753, 5.000000e-01
  %758 = fadd fast float %754, 5.000000e-01
  %759 = fadd fast float %755, 5.000000e-01
  %760 = fadd fast float %756, 5.000000e-01
  %761 = fptoui float %757 to i32
  %762 = fptoui float %758 to i32
  %763 = fptoui float %759 to i32
  %764 = fptoui float %760 to i32
  %765 = uitofp i32 %761 to float
  %766 = uitofp i32 %762 to float
  %767 = uitofp i32 %763 to float
  %768 = uitofp i32 %764 to float
  %769 = fadd fast float %765, 5.000000e-01
  %770 = fadd fast float %766, 5.000000e-01
  %771 = fadd fast float %767, 5.000000e-01
  %772 = fadd fast float %768, 5.000000e-01
  %773 = fmul fast float %769, %750
  %774 = fmul fast float %770, %750
  %775 = fmul fast float %771, %750
  %776 = fmul fast float %772, %750
  %777 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %18, float %773, float %723, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %778 = extractvalue %dx.types.ResRet.f32 %777, 0
  %779 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %18, float %774, float %723, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %780 = extractvalue %dx.types.ResRet.f32 %779, 0
  %781 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %18, float %775, float %723, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %782 = extractvalue %dx.types.ResRet.f32 %781, 0
  %783 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %18, float %776, float %723, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %784 = extractvalue %dx.types.ResRet.f32 %783, 0
  %785 = fsub fast float %782, %784
  %786 = fmul fast float %785, %733
  %787 = fadd fast float %786, %784
  %788 = fsub fast float %780, %778
  %789 = fmul fast float %788, %733
  %790 = fadd fast float %789, %778
  %791 = fsub fast float %790, %787
  %792 = fmul fast float %791, %734
  %793 = fadd fast float %792, %787
  %794 = fcmp fast ogt float %793, 0.000000e+00
  br i1 %794, label %795, label %863, !dx.controlflow.hints !49

; <label>:795                                     ; preds = %706
  %796 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 33)  ; CBufferLoadLegacy(handle,regIndex)
  %797 = extractvalue %dx.types.CBufRet.f32 %796, 0
  %798 = extractvalue %dx.types.CBufRet.f32 %796, 1
  %799 = extractvalue %dx.types.CBufRet.f32 %796, 2
  %800 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 41)  ; CBufferLoadLegacy(handle,regIndex)
  %801 = extractvalue %dx.types.CBufRet.f32 %800, 0
  %802 = extractvalue %dx.types.CBufRet.f32 %800, 1
  %803 = extractvalue %dx.types.CBufRet.f32 %800, 2
  %804 = fmul fast float %719, %711
  %805 = fmul fast float %720, %711
  %806 = fadd fast float %721, %801
  %807 = fadd fast float %804, %802
  %808 = fadd fast float %805, %803
  %809 = fmul fast float %806, %797
  %810 = fmul fast float %807, %797
  %811 = fmul fast float %808, %797
  %812 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %15, float %809, float %810, float %811, float undef, i32 0, i32 0, i32 0, float %707)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %813 = extractvalue %dx.types.ResRet.f32 %812, 0
  %814 = fmul fast float %806, %798
  %815 = fmul fast float %807, %798
  %816 = fmul fast float %808, %798
  %817 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %15, float %814, float %815, float %816, float undef, i32 0, i32 0, i32 0, float %708)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %818 = extractvalue %dx.types.ResRet.f32 %817, 1
  %819 = fmul fast float %806, %799
  %820 = fmul fast float %807, %799
  %821 = fmul fast float %808, %799
  %822 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %15, float %819, float %820, float %821, float undef, i32 0, i32 0, i32 0, float %709)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %823 = extractvalue %dx.types.ResRet.f32 %822, 2
  %824 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 34)  ; CBufferLoadLegacy(handle,regIndex)
  %825 = extractvalue %dx.types.CBufRet.f32 %824, 1
  %826 = fmul fast float %818, %813
  %827 = fmul fast float %826, %823
  %828 = call float @dx.op.unary.f32(i32 23, float %827)  ; Log(value)
  %829 = fmul fast float %828, %825
  %830 = call float @dx.op.unary.f32(i32 21, float %829)  ; Exp(value)
  %831 = extractvalue %dx.types.CBufRet.f32 %824, 2
  %832 = fmul fast float %793, %793
  %833 = fmul fast float %832, %830
  %834 = fmul fast float %833, %831
  %835 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 32)  ; CBufferLoadLegacy(handle,regIndex)
  %836 = extractvalue %dx.types.CBufRet.f32 %835, 3
  %837 = fmul fast float %836, %834
  %838 = bitcast float %837 to i32
  %839 = sitofp i32 %838 to float
  %840 = fptosi float %839 to i32
  %841 = bitcast i32 %840 to float
  %842 = fsub fast float 1.000000e+00, %834
  %843 = bitcast float %842 to i32
  %844 = sitofp i32 %843 to float
  %845 = fptosi float %844 to i32
  %846 = bitcast i32 %845 to float
  %847 = fadd fast float %841, %846
  %848 = bitcast float %847 to i32
  %849 = sub nsw i32 2129859010, %848
  %850 = bitcast i32 %849 to float
  %851 = fmul fast float %850, %841
  %852 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %853 = extractvalue %dx.types.CBufRet.f32 %852, 2
  %854 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 37)  ; CBufferLoadLegacy(handle,regIndex)
  %855 = extractvalue %dx.types.CBufRet.f32 %854, 0
  %856 = fmul fast float %851, %855
  %857 = fadd fast float %856, 1.000000e+00
  %858 = bitcast float %857 to i32
  %859 = sub nsw i32 2129859010, %858
  %860 = bitcast i32 %859 to float
  %861 = fmul fast float %851, %853
  %862 = fmul fast float %861, %860
  br label %863

; <label>:863                                     ; preds = %795, %706
  %864 = phi float [ %862, %795 ], [ %793, %706 ]
  %865 = fmul fast float %864, %685
  %866 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 36)  ; CBufferLoadLegacy(handle,regIndex)
  %867 = extractvalue %dx.types.CBufRet.f32 %866, 0
  %868 = extractvalue %dx.types.CBufRet.f32 %866, 1
  %869 = extractvalue %dx.types.CBufRet.f32 %866, 2
  %870 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 37)  ; CBufferLoadLegacy(handle,regIndex)
  %871 = extractvalue %dx.types.CBufRet.f32 %870, 1
  %872 = fmul fast float %867, %865
  %873 = fmul fast float %868, %865
  %874 = fmul fast float %869, %865
  %875 = fmul fast float %871, %865
  br label %876

; <label>:876                                     ; preds = %863, %670
  %877 = phi float [ %865, %863 ], [ 0.000000e+00, %670 ]
  %878 = phi float [ %875, %863 ], [ 0.000000e+00, %670 ]
  %879 = phi float [ %872, %863 ], [ 0.000000e+00, %670 ]
  %880 = phi float [ %873, %863 ], [ 0.000000e+00, %670 ]
  %881 = phi float [ %874, %863 ], [ 0.000000e+00, %670 ]
  %882 = icmp eq i32 %672, 0
  br i1 %882, label %926, label %883, !dx.controlflow.hints !50

; <label>:883                                     ; preds = %876
  %884 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 190)  ; CBufferLoadLegacy(handle,regIndex)
  %885 = extractvalue %dx.types.CBufRet.f32 %884, 1
  %886 = fsub fast float %685, %885
  %887 = extractvalue %dx.types.CBufRet.f32 %884, 3
  %888 = fmul fast float %886, %887
  %889 = call float @dx.op.unary.f32(i32 7, float %888)  ; Saturate(value)
  %890 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 188)  ; CBufferLoadLegacy(handle,regIndex)
  %891 = extractvalue %dx.types.CBufRet.f32 %890, 3
  %892 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %893 = extractvalue %dx.types.CBufRet.f32 %892, 2
  %894 = fsub fast float %893, %673
  %895 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 189)  ; CBufferLoadLegacy(handle,regIndex)
  %896 = extractvalue %dx.types.CBufRet.f32 %895, 3
  %897 = fmul fast float %894, %896
  %898 = call float @dx.op.unary.f32(i32 7, float %897)  ; Saturate(value)
  %899 = fmul fast float %898, %891
  %900 = extractvalue %dx.types.CBufRet.f32 %895, 0
  %901 = fsub fast float %428, %900
  %902 = extractvalue %dx.types.CBufRet.f32 %895, 1
  %903 = fmul fast float %901, %902
  %904 = call float @dx.op.unary.f32(i32 7, float %903)  ; Saturate(value)
  %905 = fsub fast float 1.000000e+00, %889
  %906 = fmul fast float %904, %905
  %907 = fadd fast float %906, %889
  %908 = extractvalue %dx.types.CBufRet.f32 %884, 0
  %909 = fsub fast float %899, %908
  %910 = fmul fast float %909, %907
  %911 = fadd fast float %910, %908
  %912 = extractvalue %dx.types.CBufRet.f32 %890, 0
  %913 = extractvalue %dx.types.CBufRet.f32 %890, 1
  %914 = extractvalue %dx.types.CBufRet.f32 %890, 2
  %915 = fmul fast float %911, %685
  %916 = extractvalue %dx.types.CBufRet.f32 %895, 2
  %917 = fmul fast float %915, %912
  %918 = fmul fast float %915, %913
  %919 = fmul fast float %915, %914
  %920 = fadd fast float %917, %879
  %921 = fadd fast float %918, %880
  %922 = fadd fast float %919, %881
  %923 = fmul fast float %915, %916
  %924 = fadd fast float %923, %878
  %925 = fadd fast float %915, %877
  br label %926

; <label>:926                                     ; preds = %883, %876
  %927 = phi float [ %925, %883 ], [ %877, %876 ]
  %928 = phi float [ %924, %883 ], [ %878, %876 ]
  %929 = phi float [ %920, %883 ], [ %879, %876 ]
  %930 = phi float [ %921, %883 ], [ %880, %876 ]
  %931 = phi float [ %922, %883 ], [ %881, %876 ]
  %932 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %933 = extractvalue %dx.types.CBufRet.f32 %932, 1
  %934 = fcmp fast ogt float %927, %933
  br i1 %934, label %935, label %941, !dx.controlflow.hints !51

; <label>:935                                     ; preds = %926
  %936 = fdiv fast float 1.000000e+00, %927
  %937 = fmul fast float %936, %929
  %938 = fmul fast float %936, %930
  %939 = fmul fast float %936, %931
  %940 = fmul fast float %936, %928
  br label %941

; <label>:941                                     ; preds = %935, %926
  %942 = phi float [ %940, %935 ], [ %928, %926 ]
  %943 = phi float [ %937, %935 ], [ %929, %926 ]
  %944 = phi float [ %938, %935 ], [ %930, %926 ]
  %945 = phi float [ %939, %935 ], [ %931, %926 ]
  br i1 %934, label %948, label %946, !dx.controlflow.hints !52

; <label>:946                                     ; preds = %941
  %947 = fadd fast float %685, %428
  br label %1487

; <label>:948                                     ; preds = %941
  %949 = fmul fast float %927, 0xBFF7154760000000
  %950 = call float @dx.op.unary.f32(i32 21, float %949)  ; Exp(value)
  %951 = call float @dx.op.unary.f32(i32 7, float %950)  ; Saturate(value)
  %952 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %953 = extractvalue %dx.types.CBufRet.f32 %952, 3
  %954 = fcmp fast une float %953, 0.000000e+00
  %955 = extractvalue %dx.types.CBufRet.f32 %952, 0
  %956 = extractvalue %dx.types.CBufRet.f32 %952, 1
  %957 = extractvalue %dx.types.CBufRet.f32 %952, 2
  br i1 %954, label %958, label %980, !dx.controlflow.hints !53

; <label>:958                                     ; preds = %948
  %959 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %960 = extractvalue %dx.types.CBufRet.f32 %959, 0
  %961 = extractvalue %dx.types.CBufRet.f32 %959, 1
  %962 = extractvalue %dx.types.CBufRet.f32 %959, 2
  %963 = call float @dx.op.dot3.f32(i32 55, float %955, float %956, float %957, float %279, float %280, float %281)  ; Dot3(ax,ay,az,bx,by,bz)
  %964 = fcmp fast ogt float %942, 0.000000e+00
  %965 = select i1 %964, float 1.000000e+00, float -1.000000e+00
  %966 = fmul fast float %965, 5.000000e-01
  %967 = fmul fast float %966, %963
  %968 = fmul fast float %965, %942
  %969 = fadd fast float %967, 4.921875e-01
  %970 = fadd fast float %968, -3.125000e-02
  %971 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %18, float %969, float 0x3FB25F3060000000, float %970, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %972 = extractvalue %dx.types.ResRet.f32 %971, 0
  %973 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 398)  ; CBufferLoadLegacy(handle,regIndex)
  %974 = extractvalue %dx.types.CBufRet.f32 %973, 0
  %975 = fmul fast float %972, 0x400921FB60000000
  %976 = fmul fast float %975, %974
  %977 = fmul fast float %976, %960
  %978 = fmul fast float %976, %961
  %979 = fmul fast float %976, %962
  br label %980

; <label>:980                                     ; preds = %958, %948
  %981 = phi float [ %977, %958 ], [ 0.000000e+00, %948 ]
  %982 = phi float [ %978, %958 ], [ 0.000000e+00, %948 ]
  %983 = phi float [ %979, %958 ], [ 0.000000e+00, %948 ]
  %984 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 427)  ; CBufferLoadLegacy(handle,regIndex)
  %985 = extractvalue %dx.types.CBufRet.f32 %984, 0
  %986 = fmul fast float %985, %955
  %987 = fmul fast float %985, %956
  %988 = fmul fast float %985, %957
  %989 = fadd fast float %986, %425
  %990 = fadd fast float %987, %426
  %991 = fadd fast float %988, %427
  br i1 %437, label %1041, label %992, !dx.controlflow.hints !41

; <label>:992                                     ; preds = %980
  %993 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 35)  ; CBufferLoadLegacy(handle,regIndex)
  %994 = extractvalue %dx.types.CBufRet.f32 %993, 0
  %995 = extractvalue %dx.types.CBufRet.f32 %993, 1
  %996 = extractvalue %dx.types.CBufRet.f32 %993, 2
  %997 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 31)  ; CBufferLoadLegacy(handle,regIndex)
  %998 = extractvalue %dx.types.CBufRet.f32 %997, 0
  %999 = extractvalue %dx.types.CBufRet.f32 %997, 1
  %1000 = extractvalue %dx.types.CBufRet.f32 %997, 2
  %1001 = fsub fast float %989, %998
  %1002 = fsub fast float %990, %999
  %1003 = fsub fast float %991, %1000
  %1004 = fmul fast float %1001, %994
  %1005 = fmul fast float %1002, %995
  %1006 = fmul fast float %1003, %996
  %1007 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %1008 = extractvalue %dx.types.CBufRet.i32 %1007, 3
  %1009 = icmp eq i32 %1008, 0
  br i1 %1009, label %1013, label %1010, !dx.controlflow.hints !42

; <label>:1010                                    ; preds = %992
  %1011 = call float @dx.op.unary.f32(i32 22, float %1004)  ; Frc(value)
  %1012 = call float @dx.op.unary.f32(i32 22, float %1005)  ; Frc(value)
  br label %1013

; <label>:1013                                    ; preds = %1010, %992
  %1014 = phi float [ %1011, %1010 ], [ %1004, %992 ]
  %1015 = phi float [ %1012, %1010 ], [ %1005, %992 ]
  %1016 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %16, float %1014, float %1015, float %1006, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1017 = extractvalue %dx.types.ResRet.f32 %1016, 0
  %1018 = fmul fast float %1017, 2.000000e+00
  %1019 = fadd fast float %1018, -1.000000e+00
  %1020 = extractvalue %dx.types.CBufRet.f32 %993, 3
  %1021 = fmul fast float %1019, %1020
  %1022 = fcmp fast olt float %1021, 0.000000e+00
  %1023 = fcmp fast oge float %1006, 0.000000e+00
  %1024 = fcmp fast ole float %1006, 1.000000e+00
  br i1 %1009, label %1027, label %1025, !dx.controlflow.hints !43

; <label>:1025                                    ; preds = %1013
  %1026 = and i1 %1023, %1024
  br label %1037

; <label>:1027                                    ; preds = %1013
  %1028 = fcmp fast oge float %1004, 0.000000e+00
  %1029 = fcmp fast oge float %1005, 0.000000e+00
  %1030 = and i1 %1028, %1029
  %1031 = and i1 %1023, %1030
  %1032 = fcmp fast ole float %1004, 1.000000e+00
  %1033 = fcmp fast ole float %1005, 1.000000e+00
  %1034 = and i1 %1032, %1033
  %1035 = and i1 %1024, %1034
  %1036 = and i1 %1031, %1035
  br label %1037

; <label>:1037                                    ; preds = %1027, %1025
  %1038 = phi i1 [ %1026, %1025 ], [ %1036, %1027 ]
  %1039 = and i1 %1022, %1038
  %1040 = zext i1 %1039 to i32
  br label %1041

; <label>:1041                                    ; preds = %1037, %980
  %1042 = phi i32 [ %1040, %1037 ], [ 0, %980 ]
  br i1 %497, label %1197, label %1043, !dx.controlflow.hints !44

; <label>:1043                                    ; preds = %1041
  %1044 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1045 = extractvalue %dx.types.CBufRet.i32 %1044, 1
  %1046 = and i32 %1045, 1
  %1047 = icmp eq i32 %1046, 0
  br i1 %1047, label %1048, label %1192, !dx.controlflow.hints !45

; <label>:1048                                    ; preds = %1043
  %1049 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 204)  ; CBufferLoadLegacy(handle,regIndex)
  %1050 = extractvalue %dx.types.CBufRet.f32 %1049, 2
  %1051 = extractvalue %dx.types.CBufRet.f32 %1049, 3
  %1052 = fmul fast float %1050, %989
  %1053 = fmul fast float %1051, %990
  %1054 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 205)  ; CBufferLoadLegacy(handle,regIndex)
  %1055 = extractvalue %dx.types.CBufRet.f32 %1054, 0
  %1056 = extractvalue %dx.types.CBufRet.f32 %1054, 1
  %1057 = fadd fast float %1052, %1055
  %1058 = fadd fast float %1053, %1056
  %1059 = call float @dx.op.unary.f32(i32 7, float %1057)  ; Saturate(value)
  %1060 = call float @dx.op.unary.f32(i32 7, float %1058)  ; Saturate(value)
  %1061 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %18, float %1059, float %1060, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1062 = extractvalue %dx.types.ResRet.f32 %1061, 0
  %1063 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %1064 = extractvalue %dx.types.CBufRet.f32 %1063, 0
  %1065 = fmul fast float %1064, %1062
  %1066 = fsub fast float %1057, %1059
  %1067 = fsub fast float %1058, %1060
  %1068 = extractvalue %dx.types.CBufRet.f32 %1049, 0
  %1069 = extractvalue %dx.types.CBufRet.f32 %1049, 1
  %1070 = fmul fast float %1068, %1066
  %1071 = fmul fast float %1069, %1067
  %1072 = fmul fast float %1070, %1070
  %1073 = fmul fast float %1071, %1071
  %1074 = fadd fast float %1072, %1073
  %1075 = call float @dx.op.unary.f32(i32 24, float %1074)  ; Sqrt(value)
  %1076 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %1077 = extractvalue %dx.types.CBufRet.f32 %1076, 3
  %1078 = fmul fast float %1077, %1075
  %1079 = call float @dx.op.unary.f32(i32 7, float %1078)  ; Saturate(value)
  %1080 = extractvalue %dx.types.CBufRet.f32 %1076, 2
  %1081 = fsub fast float %1080, %1065
  %1082 = fmul fast float %1081, %1079
  %1083 = extractvalue %dx.types.CBufRet.f32 %1063, 1
  %1084 = fsub fast float %991, %1065
  %1085 = fsub fast float %1084, %1083
  %1086 = fsub fast float %1085, %1082
  %1087 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1088 = extractvalue %dx.types.CBufRet.f32 %1087, 2
  %1089 = fsub fast float %1086, %1088
  %1090 = fcmp fast olt float %1089, 0.000000e+00
  %1091 = extractvalue %dx.types.CBufRet.i32 %1044, 0
  %1092 = icmp eq i32 %1091, 0
  br i1 %1092, label %1143, label %1093

; <label>:1093                                    ; preds = %1048
  br label %1094

; <label>:1094                                    ; preds = %1132, %1093
  %1095 = phi i32 [ %1138, %1132 ], [ 1, %1093 ]
  %1096 = phi i32 [ %1139, %1132 ], [ 0, %1093 ]
  %1097 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %1098 = extractvalue %dx.types.CBufRet.f32 %1097, 1
  %1099 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1100 = extractvalue %dx.types.CBufRet.i32 %1099, 1
  %1101 = and i32 %1100, 8
  %1102 = icmp eq i32 %1101, 0
  %1103 = fcmp fast ogt float %1098, %1086
  %1104 = or i1 %1103, %1102
  %1105 = add i32 %1096, 171
  %1106 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 %1105)  ; CBufferLoadLegacy(handle,regIndex)
  %1107 = extractvalue %dx.types.CBufRet.f32 %1106, 0
  %1108 = extractvalue %dx.types.CBufRet.f32 %1106, 1
  %1109 = extractvalue %dx.types.CBufRet.f32 %1106, 2
  br i1 %1104, label %1110, label %1116, !dx.controlflow.hints !46

; <label>:1110                                    ; preds = %1094
  %1111 = fsub fast float %1107, %989
  %1112 = fsub fast float %1108, %990
  %1113 = fmul fast float %1111, %1111
  %1114 = fmul fast float %1112, %1112
  %1115 = fadd fast float %1113, %1114
  br label %1132

; <label>:1116                                    ; preds = %1094
  %1117 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1118 = extractvalue %dx.types.CBufRet.f32 %1117, 2
  %1119 = extractvalue %dx.types.CBufRet.f32 %1097, 2
  %1120 = fmul fast float %1119, %1118
  %1121 = fsub fast float %1120, %1098
  %1122 = fdiv fast float %1109, %1121
  %1123 = fsub fast float %989, %1107
  %1124 = fsub fast float %990, %1108
  %1125 = fsub fast float %1086, %1098
  %1126 = fmul fast float %1122, %1125
  %1127 = fmul fast float %1123, %1123
  %1128 = fmul fast float %1124, %1124
  %1129 = fadd fast float %1127, %1128
  %1130 = fmul fast float %1126, %1126
  %1131 = fadd fast float %1129, %1130
  br label %1132

; <label>:1132                                    ; preds = %1116, %1110
  %1133 = phi float [ %1115, %1110 ], [ %1131, %1116 ]
  %1134 = call float @dx.op.unary.f32(i32 24, float %1133)  ; Sqrt(value)
  %1135 = fsub float %1109, %1134
  %1136 = fcmp fast olt float %1135, 0.000000e+00
  %1137 = zext i1 %1136 to i32
  %1138 = and i32 %1137, %1095
  %1139 = add i32 %1096, 1
  %1140 = extractvalue %dx.types.CBufRet.i32 %1099, 0
  %1141 = icmp ult i32 %1139, %1140
  br i1 %1141, label %1094, label %1142

; <label>:1142                                    ; preds = %1132
  br label %1143

; <label>:1143                                    ; preds = %1142, %1048
  %1144 = phi i32 [ 1, %1048 ], [ %1138, %1142 ]
  br label %1145

; <label>:1145                                    ; preds = %1145, %1143
  %1146 = phi i32 [ %1182, %1145 ], [ %1144, %1143 ]
  %1147 = phi i32 [ %1183, %1145 ], [ 0, %1143 ]
  %1148 = add nuw nsw i32 %1147, 191
  %1149 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 %1148)  ; CBufferLoadLegacy(handle,regIndex)
  %1150 = extractvalue %dx.types.CBufRet.f32 %1149, 0
  %1151 = extractvalue %dx.types.CBufRet.f32 %1149, 1
  %1152 = extractvalue %dx.types.CBufRet.f32 %1149, 2
  %1153 = add nuw nsw i32 %1147, 195
  %1154 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 %1153)  ; CBufferLoadLegacy(handle,regIndex)
  %1155 = extractvalue %dx.types.CBufRet.f32 %1154, 0
  %1156 = extractvalue %dx.types.CBufRet.f32 %1154, 1
  %1157 = extractvalue %dx.types.CBufRet.f32 %1154, 2
  %1158 = fsub fast float %989, %1150
  %1159 = fsub fast float %990, %1151
  %1160 = fsub fast float %1086, %1152
  %1161 = call float @dx.op.unary.f32(i32 6, float %1158)  ; FAbs(value)
  %1162 = call float @dx.op.unary.f32(i32 6, float %1159)  ; FAbs(value)
  %1163 = call float @dx.op.unary.f32(i32 6, float %1160)  ; FAbs(value)
  %1164 = fsub fast float %1161, %1155
  %1165 = fsub fast float %1162, %1156
  %1166 = fsub fast float %1163, %1157
  %1167 = call float @dx.op.binary.f32(i32 35, float %1164, float 0.000000e+00)  ; FMax(a,b)
  %1168 = call float @dx.op.binary.f32(i32 35, float %1165, float 0.000000e+00)  ; FMax(a,b)
  %1169 = call float @dx.op.binary.f32(i32 35, float %1166, float 0.000000e+00)  ; FMax(a,b)
  %1170 = fmul fast float %1167, %1167
  %1171 = fmul fast float %1168, %1168
  %1172 = fadd fast float %1171, %1170
  %1173 = fmul fast float %1169, %1169
  %1174 = fadd fast float %1172, %1173
  %1175 = call float @dx.op.unary.f32(i32 24, float %1174)  ; Sqrt(value)
  %1176 = call float @dx.op.binary.f32(i32 35, float %1165, float %1166)  ; FMax(a,b)
  %1177 = call float @dx.op.binary.f32(i32 35, float %1164, float %1176)  ; FMax(a,b)
  %1178 = call float @dx.op.binary.f32(i32 36, float %1177, float 0.000000e+00)  ; FMin(a,b)
  %1179 = fadd fast float %1178, %1175
  %1180 = fcmp ogt float %1179, -0.000000e+00
  %1181 = zext i1 %1180 to i32
  %1182 = and i32 %1181, %1146
  %1183 = add nuw nsw i32 %1147, 1
  %1184 = icmp eq i32 %1183, 4
  br i1 %1184, label %1185, label %1145

; <label>:1185                                    ; preds = %1145
  %1186 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1187 = extractvalue %dx.types.CBufRet.i32 %1186, 1
  %1188 = lshr i32 %1187, 1
  %1189 = xor i32 %1188, %1182
  %1190 = zext i1 %1090 to i32
  %1191 = and i32 %1189, %1190
  br label %1192

; <label>:1192                                    ; preds = %1185, %1043
  %1193 = phi i32 [ %416, %1043 ], [ %1191, %1185 ]
  %1194 = phi float [ %991, %1043 ], [ %1086, %1185 ]
  %1195 = icmp ne i32 %1193, 0
  %1196 = zext i1 %1195 to i32
  br label %1197

; <label>:1197                                    ; preds = %1192, %1041
  %1198 = phi i32 [ %1193, %1192 ], [ %416, %1041 ]
  %1199 = phi float [ %1194, %1192 ], [ %417, %1041 ]
  %1200 = phi i32 [ %1196, %1192 ], [ 0, %1041 ]
  %1201 = icmp eq i32 %1042, 0
  br i1 %1201, label %1381, label %1202, !dx.controlflow.hints !47

; <label>:1202                                    ; preds = %1197
  %1203 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %1204 = extractvalue %dx.types.CBufRet.f32 %1203, 3
  %1205 = fmul fast float %1204, %985
  %1206 = fcmp fast oeq float %1205, 0.000000e+00
  br i1 %1206, label %1221, label %1207, !dx.controlflow.hints !48

; <label>:1207                                    ; preds = %1202
  %1208 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 41)  ; CBufferLoadLegacy(handle,regIndex)
  %1209 = extractvalue %dx.types.CBufRet.f32 %1208, 3
  %1210 = fmul fast float %1209, %1205
  %1211 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 33)  ; CBufferLoadLegacy(handle,regIndex)
  %1212 = extractvalue %dx.types.CBufRet.f32 %1211, 0
  %1213 = extractvalue %dx.types.CBufRet.f32 %1211, 1
  %1214 = extractvalue %dx.types.CBufRet.f32 %1211, 2
  %1215 = fmul fast float %1212, %1210
  %1216 = fmul fast float %1213, %1210
  %1217 = fmul fast float %1214, %1210
  %1218 = call float @dx.op.unary.f32(i32 23, float %1215)  ; Log(value)
  %1219 = call float @dx.op.unary.f32(i32 23, float %1216)  ; Log(value)
  %1220 = call float @dx.op.unary.f32(i32 23, float %1217)  ; Log(value)
  br label %1221

; <label>:1221                                    ; preds = %1207, %1202
  %1222 = phi float [ %1218, %1207 ], [ 0.000000e+00, %1202 ]
  %1223 = phi float [ %1219, %1207 ], [ 0.000000e+00, %1202 ]
  %1224 = phi float [ %1220, %1207 ], [ 0.000000e+00, %1202 ]
  %1225 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 35)  ; CBufferLoadLegacy(handle,regIndex)
  %1226 = extractvalue %dx.types.CBufRet.f32 %1225, 0
  %1227 = extractvalue %dx.types.CBufRet.f32 %1225, 1
  %1228 = extractvalue %dx.types.CBufRet.f32 %1225, 2
  %1229 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 31)  ; CBufferLoadLegacy(handle,regIndex)
  %1230 = extractvalue %dx.types.CBufRet.f32 %1229, 0
  %1231 = extractvalue %dx.types.CBufRet.f32 %1229, 1
  %1232 = extractvalue %dx.types.CBufRet.f32 %1229, 2
  %1233 = fsub fast float %989, %1230
  %1234 = fsub fast float %990, %1231
  %1235 = fsub fast float %991, %1232
  %1236 = fmul fast float %1233, %1226
  %1237 = fmul fast float %1234, %1227
  %1238 = fmul fast float %1235, %1228
  %1239 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 29)  ; CBufferLoadLegacy(handle,regIndex)
  %1240 = extractvalue %dx.types.CBufRet.i32 %1239, 0
  %1241 = extractvalue %dx.types.CBufRet.i32 %1239, 1
  %1242 = uitofp i32 %1240 to float
  %1243 = uitofp i32 %1241 to float
  %1244 = fmul fast float %1236, %1242
  %1245 = fmul fast float %1237, %1243
  %1246 = fadd fast float %1244, 5.000000e-01
  %1247 = fadd fast float %1245, 5.000000e-01
  %1248 = call float @dx.op.unary.f32(i32 22, float %1246)  ; Frc(value)
  %1249 = call float @dx.op.unary.f32(i32 22, float %1247)  ; Frc(value)
  %1250 = call float @dx.op.unary.f32(i32 27, float %1246)  ; Round_ni(value)
  %1251 = call float @dx.op.unary.f32(i32 27, float %1247)  ; Round_ni(value)
  %1252 = fadd fast float %1250, 1.000000e+00
  %1253 = fadd fast float %1251, 1.000000e+00
  %1254 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 30)  ; CBufferLoadLegacy(handle,regIndex)
  %1255 = extractvalue %dx.types.CBufRet.f32 %1254, 0
  %1256 = extractvalue %dx.types.CBufRet.f32 %1254, 1
  %1257 = fmul fast float %1255, %1252
  %1258 = fmul fast float %1256, %1253
  %1259 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %10, %dx.types.Handle %17, float %1257, float %1258, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1260 = extractvalue %dx.types.ResRet.f32 %1259, 0
  %1261 = extractvalue %dx.types.ResRet.f32 %1259, 1
  %1262 = extractvalue %dx.types.ResRet.f32 %1259, 2
  %1263 = extractvalue %dx.types.ResRet.f32 %1259, 3
  %1264 = extractvalue %dx.types.CBufRet.i32 %1239, 2
  %1265 = extractvalue %dx.types.CBufRet.f32 %1254, 2
  %1266 = uitofp i32 %1264 to float
  %1267 = fadd fast float %1266, -1.000000e+00
  %1268 = fmul fast float %1267, %1260
  %1269 = fmul fast float %1267, %1261
  %1270 = fmul fast float %1267, %1262
  %1271 = fmul fast float %1267, %1263
  %1272 = fadd fast float %1268, 5.000000e-01
  %1273 = fadd fast float %1269, 5.000000e-01
  %1274 = fadd fast float %1270, 5.000000e-01
  %1275 = fadd fast float %1271, 5.000000e-01
  %1276 = fptoui float %1272 to i32
  %1277 = fptoui float %1273 to i32
  %1278 = fptoui float %1274 to i32
  %1279 = fptoui float %1275 to i32
  %1280 = uitofp i32 %1276 to float
  %1281 = uitofp i32 %1277 to float
  %1282 = uitofp i32 %1278 to float
  %1283 = uitofp i32 %1279 to float
  %1284 = fadd fast float %1280, 5.000000e-01
  %1285 = fadd fast float %1281, 5.000000e-01
  %1286 = fadd fast float %1282, 5.000000e-01
  %1287 = fadd fast float %1283, 5.000000e-01
  %1288 = fmul fast float %1284, %1265
  %1289 = fmul fast float %1285, %1265
  %1290 = fmul fast float %1286, %1265
  %1291 = fmul fast float %1287, %1265
  %1292 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %18, float %1288, float %1238, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1293 = extractvalue %dx.types.ResRet.f32 %1292, 0
  %1294 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %18, float %1289, float %1238, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1295 = extractvalue %dx.types.ResRet.f32 %1294, 0
  %1296 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %18, float %1290, float %1238, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1297 = extractvalue %dx.types.ResRet.f32 %1296, 0
  %1298 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %18, float %1291, float %1238, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1299 = extractvalue %dx.types.ResRet.f32 %1298, 0
  %1300 = fsub fast float %1297, %1299
  %1301 = fmul fast float %1300, %1248
  %1302 = fadd fast float %1301, %1299
  %1303 = fsub fast float %1295, %1293
  %1304 = fmul fast float %1303, %1248
  %1305 = fadd fast float %1304, %1293
  %1306 = fsub fast float %1305, %1302
  %1307 = fmul fast float %1306, %1249
  %1308 = fadd fast float %1307, %1302
  %1309 = fcmp fast ogt float %1308, 0.000000e+00
  br i1 %1309, label %1310, label %1378, !dx.controlflow.hints !49

; <label>:1310                                    ; preds = %1221
  %1311 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 33)  ; CBufferLoadLegacy(handle,regIndex)
  %1312 = extractvalue %dx.types.CBufRet.f32 %1311, 0
  %1313 = extractvalue %dx.types.CBufRet.f32 %1311, 1
  %1314 = extractvalue %dx.types.CBufRet.f32 %1311, 2
  %1315 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 41)  ; CBufferLoadLegacy(handle,regIndex)
  %1316 = extractvalue %dx.types.CBufRet.f32 %1315, 0
  %1317 = extractvalue %dx.types.CBufRet.f32 %1315, 1
  %1318 = extractvalue %dx.types.CBufRet.f32 %1315, 2
  %1319 = fmul fast float %1234, %1226
  %1320 = fmul fast float %1235, %1226
  %1321 = fadd fast float %1236, %1316
  %1322 = fadd fast float %1319, %1317
  %1323 = fadd fast float %1320, %1318
  %1324 = fmul fast float %1321, %1312
  %1325 = fmul fast float %1322, %1312
  %1326 = fmul fast float %1323, %1312
  %1327 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %15, float %1324, float %1325, float %1326, float undef, i32 0, i32 0, i32 0, float %1222)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1328 = extractvalue %dx.types.ResRet.f32 %1327, 0
  %1329 = fmul fast float %1321, %1313
  %1330 = fmul fast float %1322, %1313
  %1331 = fmul fast float %1323, %1313
  %1332 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %15, float %1329, float %1330, float %1331, float undef, i32 0, i32 0, i32 0, float %1223)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1333 = extractvalue %dx.types.ResRet.f32 %1332, 1
  %1334 = fmul fast float %1321, %1314
  %1335 = fmul fast float %1322, %1314
  %1336 = fmul fast float %1323, %1314
  %1337 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %15, float %1334, float %1335, float %1336, float undef, i32 0, i32 0, i32 0, float %1224)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1338 = extractvalue %dx.types.ResRet.f32 %1337, 2
  %1339 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 34)  ; CBufferLoadLegacy(handle,regIndex)
  %1340 = extractvalue %dx.types.CBufRet.f32 %1339, 1
  %1341 = fmul fast float %1333, %1328
  %1342 = fmul fast float %1341, %1338
  %1343 = call float @dx.op.unary.f32(i32 23, float %1342)  ; Log(value)
  %1344 = fmul fast float %1343, %1340
  %1345 = call float @dx.op.unary.f32(i32 21, float %1344)  ; Exp(value)
  %1346 = extractvalue %dx.types.CBufRet.f32 %1339, 2
  %1347 = fmul fast float %1308, %1308
  %1348 = fmul fast float %1347, %1345
  %1349 = fmul fast float %1348, %1346
  %1350 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 32)  ; CBufferLoadLegacy(handle,regIndex)
  %1351 = extractvalue %dx.types.CBufRet.f32 %1350, 3
  %1352 = fmul fast float %1351, %1349
  %1353 = bitcast float %1352 to i32
  %1354 = sitofp i32 %1353 to float
  %1355 = fptosi float %1354 to i32
  %1356 = bitcast i32 %1355 to float
  %1357 = fsub fast float 1.000000e+00, %1349
  %1358 = bitcast float %1357 to i32
  %1359 = sitofp i32 %1358 to float
  %1360 = fptosi float %1359 to i32
  %1361 = bitcast i32 %1360 to float
  %1362 = fadd fast float %1356, %1361
  %1363 = bitcast float %1362 to i32
  %1364 = sub nsw i32 2129859010, %1363
  %1365 = bitcast i32 %1364 to float
  %1366 = fmul fast float %1365, %1356
  %1367 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %1368 = extractvalue %dx.types.CBufRet.f32 %1367, 2
  %1369 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 37)  ; CBufferLoadLegacy(handle,regIndex)
  %1370 = extractvalue %dx.types.CBufRet.f32 %1369, 0
  %1371 = fmul fast float %1366, %1370
  %1372 = fadd fast float %1371, 1.000000e+00
  %1373 = bitcast float %1372 to i32
  %1374 = sub nsw i32 2129859010, %1373
  %1375 = bitcast i32 %1374 to float
  %1376 = fmul fast float %1366, %1368
  %1377 = fmul fast float %1376, %1375
  br label %1378

; <label>:1378                                    ; preds = %1310, %1221
  %1379 = phi float [ %1377, %1310 ], [ %1308, %1221 ]
  %1380 = fmul fast float %1379, %985
  br label %1381

; <label>:1381                                    ; preds = %1378, %1197
  %1382 = phi float [ %1380, %1378 ], [ 0.000000e+00, %1197 ]
  %1383 = icmp eq i32 %1200, 0
  br i1 %1383, label %1415, label %1384, !dx.controlflow.hints !50

; <label>:1384                                    ; preds = %1381
  %1385 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 190)  ; CBufferLoadLegacy(handle,regIndex)
  %1386 = extractvalue %dx.types.CBufRet.f32 %1385, 1
  %1387 = fsub fast float %985, %1386
  %1388 = extractvalue %dx.types.CBufRet.f32 %1385, 3
  %1389 = fmul fast float %1387, %1388
  %1390 = call float @dx.op.unary.f32(i32 7, float %1389)  ; Saturate(value)
  %1391 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 188)  ; CBufferLoadLegacy(handle,regIndex)
  %1392 = extractvalue %dx.types.CBufRet.f32 %1391, 3
  %1393 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1394 = extractvalue %dx.types.CBufRet.f32 %1393, 2
  %1395 = fsub fast float %1394, %1199
  %1396 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 189)  ; CBufferLoadLegacy(handle,regIndex)
  %1397 = extractvalue %dx.types.CBufRet.f32 %1396, 3
  %1398 = fmul fast float %1395, %1397
  %1399 = call float @dx.op.unary.f32(i32 7, float %1398)  ; Saturate(value)
  %1400 = fmul fast float %1399, %1392
  %1401 = extractvalue %dx.types.CBufRet.f32 %1396, 0
  %1402 = fsub fast float %985, %1401
  %1403 = extractvalue %dx.types.CBufRet.f32 %1396, 1
  %1404 = fmul fast float %1402, %1403
  %1405 = call float @dx.op.unary.f32(i32 7, float %1404)  ; Saturate(value)
  %1406 = fsub fast float 1.000000e+00, %1390
  %1407 = fmul fast float %1405, %1406
  %1408 = fadd fast float %1407, %1390
  %1409 = extractvalue %dx.types.CBufRet.f32 %1385, 0
  %1410 = fsub fast float %1400, %1409
  %1411 = fmul fast float %1410, %1408
  %1412 = fadd fast float %1411, %1409
  %1413 = fmul fast float %1412, %985
  %1414 = fadd fast float %1413, %1382
  br label %1415

; <label>:1415                                    ; preds = %1384, %1381
  %1416 = phi float [ %1414, %1384 ], [ %1382, %1381 ]
  %1417 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 36)  ; CBufferLoadLegacy(handle,regIndex)
  %1418 = extractvalue %dx.types.CBufRet.f32 %1417, 3
  %1419 = fmul fast float %1416, 0xBFF7154760000000
  %1420 = fmul fast float %1419, %1418
  %1421 = call float @dx.op.unary.f32(i32 21, float %1420)  ; Exp(value)
  %1422 = call float @dx.op.unary.f32(i32 7, float %1421)  ; Saturate(value)
  %1423 = fmul fast float %1422, %981
  %1424 = fmul fast float %1422, %982
  %1425 = fmul fast float %1422, %983
  %1426 = fadd fast float %1423, %206
  %1427 = fadd fast float %1424, %207
  %1428 = fadd fast float %1425, %208
  %1429 = fsub fast float 1.000000e+00, %951
  %1430 = fmul fast float %943, %421
  %1431 = fmul fast float %1430, %1429
  %1432 = fmul fast float %1431, %1426
  %1433 = fmul fast float %944, %421
  %1434 = fmul fast float %1433, %1429
  %1435 = fmul fast float %1434, %1427
  %1436 = fmul fast float %945, %421
  %1437 = fmul fast float %1436, %1429
  %1438 = fmul fast float %1437, %1428
  %1439 = fadd fast float %1432, %422
  %1440 = fadd fast float %1435, %423
  %1441 = fadd fast float %1438, %424
  %1442 = fdiv fast float %927, %685
  %1443 = fadd fast float %685, %428
  %1444 = fmul fast float %428, %428
  %1445 = fmul fast float %1443, %1443
  %1446 = fsub fast float %1444, %1445
  %1447 = fmul fast float %1446, -5.000000e-01
  %1448 = fmul fast float %1447, %1442
  %1449 = fadd fast float %1448, %420
  %1450 = fadd fast float %927, %429
  %1451 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %1452 = extractvalue %dx.types.CBufRet.i32 %1451, 0
  %1453 = icmp eq i32 %1452, 0
  br i1 %1453, label %1480, label %1454, !dx.controlflow.hints !54

; <label>:1454                                    ; preds = %1415
  %1455 = icmp ne i32 %434, 0
  %1456 = zext i1 %1455 to i32
  %1457 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %1458 = extractvalue %dx.types.CBufRet.f32 %1457, 2
  %1459 = extractvalue %dx.types.CBufRet.f32 %1457, 0
  %1460 = fsub fast float %1443, %1459
  %1461 = fmul fast float %1460, %1458
  %1462 = call float @dx.op.unary.f32(i32 7, float %1461)  ; Saturate(value)
  %1463 = fadd fast float %1462, -5.000000e-01
  %1464 = fmul fast float %1463, 2.000000e+00
  %1465 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %1466 = extractvalue %dx.types.CBufRet.f32 %1465, 2
  %1467 = fcmp fast olt float %1464, %1466
  br i1 %1467, label %1468, label %1480, !dx.controlflow.hints !55

; <label>:1468                                    ; preds = %1454
  %1469 = fmul fast float %1464, %1464
  %1470 = fmul fast float %1429, %421
  %1471 = fmul fast float %1464, %1470
  %1472 = fmul fast float %1469, %1470
  %1473 = fmul fast float %1471, %1469
  %1474 = fmul fast float %1469, %1469
  %1475 = fmul fast float %1474, %1470
  %1476 = fadd fast float %1471, %430
  %1477 = fadd fast float %1472, %431
  %1478 = fadd fast float %1473, %432
  %1479 = fadd fast float %1475, %433
  br label %1480

; <label>:1480                                    ; preds = %1468, %1454, %1415
  %1481 = phi float [ %430, %1415 ], [ %1476, %1468 ], [ %430, %1454 ]
  %1482 = phi float [ %431, %1415 ], [ %1477, %1468 ], [ %431, %1454 ]
  %1483 = phi float [ %432, %1415 ], [ %1478, %1468 ], [ %432, %1454 ]
  %1484 = phi float [ %433, %1415 ], [ %1479, %1468 ], [ %433, %1454 ]
  %1485 = phi i32 [ %434, %1415 ], [ 1, %1468 ], [ %1456, %1454 ]
  %1486 = fmul fast float %951, %421
  br label %1487

; <label>:1487                                    ; preds = %1480, %946
  %1488 = phi float [ %947, %946 ], [ %1443, %1480 ]
  %1489 = phi i32 [ %416, %946 ], [ %1198, %1480 ]
  %1490 = phi float [ %417, %946 ], [ %1199, %1480 ]
  %1491 = phi float [ %420, %946 ], [ %1449, %1480 ]
  %1492 = phi float [ %421, %946 ], [ %1486, %1480 ]
  %1493 = phi float [ %422, %946 ], [ %1439, %1480 ]
  %1494 = phi float [ %423, %946 ], [ %1440, %1480 ]
  %1495 = phi float [ %424, %946 ], [ %1441, %1480 ]
  %1496 = phi float [ %429, %946 ], [ %1450, %1480 ]
  %1497 = phi float [ %430, %946 ], [ %1481, %1480 ]
  %1498 = phi float [ %431, %946 ], [ %1482, %1480 ]
  %1499 = phi float [ %432, %946 ], [ %1483, %1480 ]
  %1500 = phi float [ %433, %946 ], [ %1484, %1480 ]
  %1501 = phi i32 [ %434, %946 ], [ %1485, %1480 ]
  %1502 = fmul fast float %685, %279
  %1503 = fmul fast float %685, %280
  %1504 = fmul fast float %685, %281
  %1505 = fadd fast float %1502, %425
  %1506 = fadd fast float %1503, %426
  %1507 = fadd fast float %1504, %427
  %1508 = fcmp fast olt float %1488, %395
  %1509 = extractvalue %dx.types.CBufRet.f32 %932, 2
  %1510 = fcmp fast olt float %1509, %1492
  %1511 = and i1 %1508, %1510
  br i1 %1511, label %415, label %1512

; <label>:1512                                    ; preds = %1487
  br label %1513

; <label>:1513                                    ; preds = %1512, %391
  %1514 = phi float [ 0.000000e+00, %391 ], [ %1491, %1512 ]
  %1515 = phi float [ 1.000000e+00, %391 ], [ %1492, %1512 ]
  %1516 = phi float [ 0.000000e+00, %391 ], [ %1493, %1512 ]
  %1517 = phi float [ 0.000000e+00, %391 ], [ %1494, %1512 ]
  %1518 = phi float [ 0.000000e+00, %391 ], [ %1495, %1512 ]
  %1519 = phi float [ 0.000000e+00, %391 ], [ %1496, %1512 ]
  %1520 = phi float [ 0.000000e+00, %391 ], [ %1497, %1512 ]
  %1521 = phi float [ 0.000000e+00, %391 ], [ %1498, %1512 ]
  %1522 = phi float [ 0.000000e+00, %391 ], [ %1499, %1512 ]
  %1523 = phi float [ 0.000000e+00, %391 ], [ %1500, %1512 ]
  %1524 = phi i32 [ 0, %391 ], [ %1501, %1512 ]
  %1525 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %1526 = extractvalue %dx.types.CBufRet.i32 %1525, 0
  %1527 = icmp eq i32 %1526, 0
  br i1 %1527, label %1569, label %1528, !dx.controlflow.hints !56

; <label>:1528                                    ; preds = %1513
  %1529 = icmp eq i32 %1524, 0
  br i1 %1529, label %1568, label %1530, !dx.controlflow.hints !57

; <label>:1530                                    ; preds = %1528
  %1531 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %1532 = extractvalue %dx.types.CBufRet.i32 %1531, 2
  %1533 = icmp eq i32 %1532, 0
  br i1 %1533, label %1540, label %1534, !dx.controlflow.hints !58

; <label>:1534                                    ; preds = %1530
  %1535 = fsub fast float 1.000000e+00, %1515
  %1536 = fdiv fast float %1520, %1535
  %1537 = fdiv fast float %1521, %1535
  %1538 = fdiv fast float %1522, %1535
  %1539 = fdiv fast float %1523, %1535
  br label %1545

; <label>:1540                                    ; preds = %1530
  %1541 = fadd fast float %1520, %1515
  %1542 = fadd fast float %1521, %1515
  %1543 = fadd fast float %1522, %1515
  %1544 = fadd fast float %1523, %1515
  br label %1545

; <label>:1545                                    ; preds = %1540, %1534
  %1546 = phi float [ %1536, %1534 ], [ %1541, %1540 ]
  %1547 = phi float [ %1537, %1534 ], [ %1542, %1540 ]
  %1548 = phi float [ %1538, %1534 ], [ %1543, %1540 ]
  %1549 = phi float [ %1539, %1534 ], [ %1544, %1540 ]
  %1550 = call float @dx.op.binary.f32(i32 35, float %1546, float -1.000000e+00)  ; FMax(a,b)
  %1551 = call float @dx.op.binary.f32(i32 35, float %1547, float -1.000000e+00)  ; FMax(a,b)
  %1552 = call float @dx.op.binary.f32(i32 35, float %1548, float -1.000000e+00)  ; FMax(a,b)
  %1553 = call float @dx.op.binary.f32(i32 35, float %1549, float -1.000000e+00)  ; FMax(a,b)
  %1554 = call float @dx.op.binary.f32(i32 36, float %1550, float 1.000000e+00)  ; FMin(a,b)
  %1555 = call float @dx.op.binary.f32(i32 36, float %1551, float 1.000000e+00)  ; FMin(a,b)
  %1556 = call float @dx.op.binary.f32(i32 36, float %1552, float 1.000000e+00)  ; FMin(a,b)
  %1557 = call float @dx.op.binary.f32(i32 36, float %1553, float 1.000000e+00)  ; FMin(a,b)
  %1558 = fmul fast float %1554, 1.500000e+00
  %1559 = call float @dx.op.tertiary.f32(i32 46, float -2.000000e+00, float %1556, float %1558)  ; FMad(a,b,c)
  %1560 = call float @dx.op.tertiary.f32(i32 46, float 4.000000e+00, float %1555, float 0.000000e+00)  ; FMad(a,b,c)
  %1561 = call float @dx.op.tertiary.f32(i32 46, float -4.000000e+00, float %1557, float %1560)  ; FMad(a,b,c)
  %1562 = fmul fast float %1554, 0x3FEBB67AE0000000
  %1563 = call float @dx.op.tertiary.f32(i32 46, float 0xBFD8A23460000000, float %1556, float %1562)  ; FMad(a,b,c)
  %1564 = call float @dx.op.tertiary.f32(i32 46, float 5.000000e-01, float %1555, float 0.000000e+00)  ; FMad(a,b,c)
  %1565 = call float @dx.op.tertiary.f32(i32 46, float 5.000000e-01, float %1557, float %1564)  ; FMad(a,b,c)
  %1566 = fadd fast float %1559, 5.000000e-01
  %1567 = fadd fast float %1563, 5.000000e-01
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %21, i32 %22, i32 0, float %1566, float %1561, float %1567, float %1565, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %1569

; <label>:1568                                    ; preds = %1528
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %21, i32 %22, i32 0, float 0.000000e+00, float 0.000000e+00, float 0x3FEF6560C0000000, float 1.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %1569

; <label>:1569                                    ; preds = %1568, %1545, %1513
  %1570 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %1571 = extractvalue %dx.types.CBufRet.f32 %1570, 2
  %1572 = fsub fast float %1515, %1571
  %1573 = fdiv fast float %1572, %1571
  %1574 = call float @dx.op.unary.f32(i32 7, float %1573)  ; Saturate(value)
  %1575 = fmul fast float %1574, 2.000000e+00
  %1576 = fsub fast float 3.000000e+00, %1575
  %1577 = fmul fast float %1574, %1574
  %1578 = fmul fast float %1577, %1515
  %1579 = fmul fast float %1578, %1576
  %1580 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 419)  ; CBufferLoadLegacy(handle,regIndex)
  %1581 = extractvalue %dx.types.CBufRet.f32 %1580, 0
  %1582 = extractvalue %dx.types.CBufRet.f32 %1580, 1
  %1583 = extractvalue %dx.types.CBufRet.f32 %1580, 2
  %1584 = call float @dx.op.dot3.f32(i32 55, float %279, float %280, float %281, float %1581, float %1582, float %1583)  ; Dot3(ax,ay,az,bx,by,bz)
  %1585 = fmul fast float %1584, %1514
  %1586 = fcmp fast ogt float %1519, 0.000000e+00
  %1587 = fdiv fast float 1.000000e+00, %1519
  %1588 = fmul fast float %1585, %1587
  %1589 = select i1 %1586, float %1588, float %290
  %1590 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %1591 = extractvalue %dx.types.CBufRet.f32 %1590, 0
  %1592 = extractvalue %dx.types.CBufRet.f32 %1590, 1
  %1593 = extractvalue %dx.types.CBufRet.f32 %1590, 2
  %1594 = fmul fast float %1591, %243
  %1595 = fmul fast float %1592, %243
  %1596 = fmul fast float %1593, %243
  %1597 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %1598 = extractvalue %dx.types.CBufRet.f32 %1597, 0
  %1599 = extractvalue %dx.types.CBufRet.f32 %1597, 1
  %1600 = extractvalue %dx.types.CBufRet.f32 %1597, 2
  %1601 = fmul fast float %1598, %244
  %1602 = fmul fast float %1599, %244
  %1603 = fmul fast float %1600, %244
  %1604 = fadd fast float %1601, %1594
  %1605 = fadd fast float %1602, %1595
  %1606 = fadd fast float %1603, %1596
  %1607 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %1608 = extractvalue %dx.types.CBufRet.f32 %1607, 0
  %1609 = extractvalue %dx.types.CBufRet.f32 %1607, 1
  %1610 = extractvalue %dx.types.CBufRet.f32 %1607, 2
  %1611 = fadd fast float %1604, %1608
  %1612 = fadd fast float %1605, %1609
  %1613 = fadd fast float %1606, %1610
  %1614 = fmul fast float %1611, %1589
  %1615 = fmul fast float %1612, %1589
  %1616 = fmul fast float %1613, %1589
  %1617 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %1618 = extractvalue %dx.types.CBufRet.f32 %1617, 0
  %1619 = extractvalue %dx.types.CBufRet.f32 %1617, 1
  %1620 = extractvalue %dx.types.CBufRet.f32 %1617, 2
  %1621 = extractvalue %dx.types.CBufRet.f32 %1617, 3
  %1622 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %1623 = extractvalue %dx.types.CBufRet.f32 %1622, 0
  %1624 = extractvalue %dx.types.CBufRet.f32 %1622, 1
  %1625 = extractvalue %dx.types.CBufRet.f32 %1622, 2
  %1626 = extractvalue %dx.types.CBufRet.f32 %1622, 3
  %1627 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %1628 = extractvalue %dx.types.CBufRet.f32 %1627, 0
  %1629 = extractvalue %dx.types.CBufRet.f32 %1627, 1
  %1630 = extractvalue %dx.types.CBufRet.f32 %1627, 2
  %1631 = extractvalue %dx.types.CBufRet.f32 %1627, 3
  %1632 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %1633 = extractvalue %dx.types.CBufRet.f32 %1632, 0
  %1634 = extractvalue %dx.types.CBufRet.f32 %1632, 1
  %1635 = extractvalue %dx.types.CBufRet.f32 %1632, 2
  %1636 = extractvalue %dx.types.CBufRet.f32 %1632, 3
  %1637 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %1638 = extractvalue %dx.types.CBufRet.f32 %1637, 3
  %1639 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %1640 = extractvalue %dx.types.CBufRet.f32 %1639, 3
  %1641 = extractvalue %dx.types.CBufRet.f32 %1639, 0
  %1642 = extractvalue %dx.types.CBufRet.f32 %1639, 1
  %1643 = extractvalue %dx.types.CBufRet.f32 %1639, 2
  %1644 = fcmp fast olt float %1643, -5.000000e-01
  %1645 = call float @dx.op.dot3.f32(i32 55, float %1614, float %1615, float %1616, float %1614, float %1615, float %1616)  ; Dot3(ax,ay,az,bx,by,bz)
  %1646 = call float @dx.op.unary.f32(i32 25, float %1645)  ; Rsqrt(value)
  %1647 = fmul fast float %1646, %1645
  %1648 = fmul fast float %1646, %1614
  %1649 = fmul fast float %1646, %1615
  %1650 = fmul fast float %1646, %1616
  %1651 = fadd fast float %1647, %1621
  %1652 = call float @dx.op.dot3.f32(i32 55, float %1648, float %1649, float %1650, float %1618, float %1619, float %1620)  ; Dot3(ax,ay,az,bx,by,bz)
  %1653 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1654 = extractvalue %dx.types.CBufRet.i32 %1653, 1
  %1655 = and i32 %1654, 1
  %1656 = icmp ne i32 %1655, 0
  %1657 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %1658 = extractvalue %dx.types.CBufRet.f32 %1657, 2
  %1659 = fcmp fast ogt float %1658, 0.000000e+00
  %1660 = and i1 %1656, %1659
  br i1 %1660, label %1661, label %2067, !dx.controlflow.hints !59

; <label>:1661                                    ; preds = %1569
  %1662 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %1663 = extractvalue %dx.types.CBufRet.f32 %1662, 3
  %1664 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1665 = extractvalue %dx.types.CBufRet.f32 %1664, 2
  %1666 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1667 = extractvalue %dx.types.CBufRet.f32 %1666, 2
  %1668 = fsub fast float %1665, %1667
  %1669 = and i32 %1654, 2
  %1670 = extractvalue %dx.types.CBufRet.i32 %1653, 0
  %1671 = call i32 @dx.op.binary.i32(i32 40, i32 %1670, i32 3)  ; UMin(a,b)
  %1672 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %1673 = extractvalue %dx.types.CBufRet.f32 %1672, 0
  %1674 = extractvalue %dx.types.CBufRet.f32 %1672, 1
  %1675 = extractvalue %dx.types.CBufRet.f32 %1666, 0
  %1676 = extractvalue %dx.types.CBufRet.f32 %1666, 1
  %1677 = fsub fast float %1673, %1675
  %1678 = fsub fast float %1674, %1676
  %1679 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %1680 = extractvalue %dx.types.CBufRet.f32 %1679, 0
  %1681 = fcmp fast ogt float %1680, 0.000000e+00
  %1682 = fsub fast float -0.000000e+00, %1677
  %1683 = fsub fast float -0.000000e+00, %1678
  %1684 = call float @dx.op.dot2.f32(i32 54, float %1648, float %1649, float %1648, float %1649)  ; Dot2(ax,ay,bx,by)
  %1685 = call float @dx.op.dot2.f32(i32 54, float %1648, float %1649, float %1682, float %1683)  ; Dot2(ax,ay,bx,by)
  %1686 = fmul fast float %1685, 2.000000e+00
  %1687 = call float @dx.op.dot2.f32(i32 54, float %1682, float %1683, float %1682, float %1683)  ; Dot2(ax,ay,bx,by)
  %1688 = fmul fast float %1680, %1680
  %1689 = fsub fast float %1687, %1688
  %1690 = fmul fast float %1686, %1686
  %1691 = fmul fast float %1684, 4.000000e+00
  %1692 = fmul fast float %1691, %1689
  %1693 = fsub fast float %1690, %1692
  %1694 = fcmp fast ogt float %1693, 0.000000e+00
  br i1 %1694, label %1695, label %1710, !dx.controlflow.hints !60

; <label>:1695                                    ; preds = %1661
  %1696 = fcmp fast ogt float %1686, 0.000000e+00
  %1697 = call float @dx.op.unary.f32(i32 24, float %1693)  ; Sqrt(value)
  %1698 = fsub fast float -0.000000e+00, %1697
  %1699 = select i1 %1696, float %1697, float %1698
  %1700 = fadd fast float %1699, %1686
  %1701 = fmul float %1700, -5.000000e-01
  %1702 = fdiv fast float %1701, %1684
  %1703 = call float @dx.op.binary.f32(i32 35, float %1702, float 0.000000e+00)  ; FMax(a,b)
  %1704 = call float @dx.op.binary.f32(i32 36, float %1647, float %1703)  ; FMin(a,b)
  %1705 = fdiv fast float %1689, %1701
  %1706 = call float @dx.op.binary.f32(i32 35, float %1705, float 0.000000e+00)  ; FMax(a,b)
  %1707 = call float @dx.op.binary.f32(i32 36, float %1647, float %1706)  ; FMin(a,b)
  %1708 = call float @dx.op.binary.f32(i32 36, float %1704, float %1707)  ; FMin(a,b)
  %1709 = call float @dx.op.binary.f32(i32 35, float %1704, float %1707)  ; FMax(a,b)
  br label %1710

; <label>:1710                                    ; preds = %1695, %1661
  %1711 = phi float [ %1709, %1695 ], [ -1.000000e+00, %1661 ]
  %1712 = phi float [ %1708, %1695 ], [ -1.000000e+00, %1661 ]
  %1713 = phi i1 [ true, %1695 ], [ false, %1661 ]
  %1714 = and i1 %1681, %1713
  br i1 %1714, label %1715, label %1717, !dx.controlflow.hints !61

; <label>:1715                                    ; preds = %1710
  %1716 = fcmp fast oeq float %1712, %1711
  br i1 %1716, label %2020, label %1718, !dx.controlflow.hints !62

; <label>:1717                                    ; preds = %1710
  br i1 %1681, label %2020, label %1718, !dx.controlflow.hints !63

; <label>:1718                                    ; preds = %1717, %1715
  %1719 = phi float [ %1647, %1717 ], [ %1711, %1715 ]
  %1720 = phi float [ 0.000000e+00, %1717 ], [ %1712, %1715 ]
  %1721 = icmp ne i32 %1669, 0
  %1722 = fmul fast float %1719, %1650
  %1723 = fadd fast float %1722, %1663
  %1724 = fmul fast float %1723, %1719
  %1725 = select i1 %1721, float 0.000000e+00, float %1724
  %1726 = fcmp fast oeq float %1650, 0.000000e+00
  %1727 = fdiv fast float %1668, %1650
  %1728 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1727)  ; FMax(a,b)
  %1729 = select i1 %1726, float %1719, float %1728
  %1730 = call float @dx.op.binary.f32(i32 36, float %1719, float %1729)  ; FMin(a,b)
  %1731 = fcmp fast ogt float %1650, 0.000000e+00
  %1732 = fcmp fast olt float %1668, 0.000000e+00
  br i1 %1731, label %1733, label %1790, !dx.controlflow.hints !64

; <label>:1733                                    ; preds = %1718
  %1734 = icmp eq i32 %1669, 0
  br i1 %1732, label %1735, label %1779, !dx.controlflow.hints !65

; <label>:1735                                    ; preds = %1733
  %1736 = select i1 %1734, float %1719, float 0.000000e+00
  %1737 = fsub fast float -0.000000e+00, %1736
  %1738 = call float @dx.op.unary.f32(i32 6, float %1737)  ; FAbs(value)
  %1739 = fmul fast float %1736, %1650
  %1740 = fadd fast float %1739, %1663
  %1741 = fmul fast float %1738, %1740
  %1742 = fsub fast float %1725, %1741
  %1743 = fsub fast float %1719, %1738
  %1744 = select i1 %1734, float %1743, float 0.000000e+00
  %1745 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %1746 = extractvalue %dx.types.CBufRet.f32 %1745, 0
  %1747 = extractvalue %dx.types.CBufRet.f32 %1745, 1
  %1748 = extractvalue %dx.types.CBufRet.f32 %1745, 2
  %1749 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %1750 = extractvalue %dx.types.CBufRet.f32 %1749, 0
  %1751 = extractvalue %dx.types.CBufRet.f32 %1749, 1
  %1752 = extractvalue %dx.types.CBufRet.f32 %1749, 2
  %1753 = extractvalue %dx.types.CBufRet.f32 %1749, 3
  %1754 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %1755 = extractvalue %dx.types.CBufRet.f32 %1754, 3
  %1756 = call float @dx.op.binary.f32(i32 36, float %1742, float %1755)  ; FMin(a,b)
  %1757 = fmul fast float %1753, %1744
  %1758 = call float @dx.op.unary.f32(i32 7, float %1757)  ; Saturate(value)
  %1759 = fsub fast float %1750, %1746
  %1760 = fsub fast float %1751, %1747
  %1761 = fsub fast float %1752, %1748
  %1762 = fmul fast float %1758, %1759
  %1763 = fmul fast float %1758, %1760
  %1764 = fmul fast float %1758, %1761
  %1765 = fadd fast float %1762, %1746
  %1766 = fadd fast float %1763, %1747
  %1767 = fadd fast float %1764, %1748
  %1768 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %1769 = extractvalue %dx.types.CBufRet.f32 %1768, 0
  %1770 = extractvalue %dx.types.CBufRet.f32 %1768, 1
  %1771 = fadd fast float %1770, %1769
  %1772 = call float @dx.op.unary.f32(i32 7, float %1771)  ; Saturate(value)
  %1773 = extractvalue %dx.types.CBufRet.f32 %1768, 2
  %1774 = extractvalue %dx.types.CBufRet.f32 %1768, 3
  %1775 = fadd fast float %1774, %1773
  %1776 = call float @dx.op.unary.f32(i32 7, float %1775)  ; Saturate(value)
  %1777 = fmul fast float %1772, %1756
  %1778 = fmul fast float %1777, %1776
  br label %2020

; <label>:1779                                    ; preds = %1733
  br i1 %1734, label %1780, label %1801, !dx.controlflow.hints !66

; <label>:1780                                    ; preds = %1779
  %1781 = call float @dx.op.binary.f32(i32 36, float %1730, float %1720)  ; FMin(a,b)
  %1782 = fsub fast float %1730, %1781
  %1783 = fsub fast float %1782, %1719
  %1784 = call float @dx.op.unary.f32(i32 6, float %1783)  ; FAbs(value)
  %1785 = fadd fast float %1782, %1719
  %1786 = fmul fast float %1785, %1650
  %1787 = fadd fast float %1786, %1663
  %1788 = fmul fast float %1787, %1784
  %1789 = fsub fast float %1725, %1788
  br label %1801

; <label>:1790                                    ; preds = %1718
  br i1 %1732, label %1791, label %1801, !dx.controlflow.hints !67

; <label>:1791                                    ; preds = %1790
  %1792 = call float @dx.op.binary.f32(i32 35, float %1720, float %1730)  ; FMax(a,b)
  %1793 = icmp eq i32 %1669, 0
  %1794 = select i1 %1793, float %1730, float 0.000000e+00
  %1795 = fsub fast float -0.000000e+00, %1794
  %1796 = call float @dx.op.unary.f32(i32 6, float %1795)  ; FAbs(value)
  %1797 = fmul fast float %1794, %1650
  %1798 = fadd fast float %1797, %1663
  %1799 = fmul fast float %1796, %1798
  %1800 = fsub fast float %1725, %1799
  br label %1801

; <label>:1801                                    ; preds = %1791, %1790, %1780, %1779
  %1802 = phi float [ %1720, %1779 ], [ %1720, %1780 ], [ %1792, %1791 ], [ %1720, %1790 ]
  %1803 = phi float [ 0.000000e+00, %1779 ], [ %1784, %1780 ], [ %1796, %1791 ], [ 0.000000e+00, %1790 ]
  %1804 = phi float [ %1725, %1779 ], [ %1789, %1780 ], [ %1800, %1791 ], [ %1725, %1790 ]
  %1805 = phi float [ %1730, %1779 ], [ %1730, %1780 ], [ %1719, %1791 ], [ %1719, %1790 ]
  %1806 = getelementptr inbounds [3 x float], [3 x float]* %24, i32 0, i32 0
  store float -1.000000e+00, float* %1806, align 4, !tbaa !68, !noalias !72
  %1807 = getelementptr inbounds [3 x float], [3 x float]* %24, i32 0, i32 1
  store float -1.000000e+00, float* %1807, align 4, !tbaa !68, !noalias !72
  %1808 = getelementptr inbounds [3 x float], [3 x float]* %24, i32 0, i32 2
  store float -1.000000e+00, float* %1808, align 4, !tbaa !68, !noalias !72
  %1809 = getelementptr inbounds [3 x float], [3 x float]* %25, i32 0, i32 0
  store float -1.000000e+00, float* %1809, align 4, !tbaa !68, !noalias !72
  %1810 = getelementptr inbounds [3 x float], [3 x float]* %25, i32 0, i32 1
  store float -1.000000e+00, float* %1810, align 4, !tbaa !68, !noalias !72
  %1811 = getelementptr inbounds [3 x float], [3 x float]* %25, i32 0, i32 2
  store float -1.000000e+00, float* %1811, align 4, !tbaa !68, !noalias !72
  %1812 = icmp sgt i32 %1671, 0
  br i1 %1812, label %1813, label %1874

; <label>:1813                                    ; preds = %1801
  br label %1814

; <label>:1814                                    ; preds = %1863, %1813
  %1815 = phi i32 [ %1864, %1863 ], [ 0, %1813 ]
  %1816 = phi i32 [ %1865, %1863 ], [ 0, %1813 ]
  %1817 = add nuw i32 %1816, 171
  %1818 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 %1817)  ; CBufferLoadLegacy(handle,regIndex)
  %1819 = extractvalue %dx.types.CBufRet.f32 %1818, 0
  %1820 = extractvalue %dx.types.CBufRet.f32 %1818, 1
  %1821 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1822 = extractvalue %dx.types.CBufRet.f32 %1821, 0
  %1823 = extractvalue %dx.types.CBufRet.f32 %1821, 1
  %1824 = fsub fast float %1819, %1822
  %1825 = fsub fast float %1820, %1823
  %1826 = extractvalue %dx.types.CBufRet.f32 %1818, 2
  %1827 = fsub fast float -0.000000e+00, %1824
  %1828 = fsub fast float -0.000000e+00, %1825
  %1829 = call float @dx.op.dot2.f32(i32 54, float %1648, float %1649, float %1827, float %1828)  ; Dot2(ax,ay,bx,by)
  %1830 = fmul fast float %1829, 2.000000e+00
  %1831 = call float @dx.op.dot2.f32(i32 54, float %1827, float %1828, float %1827, float %1828)  ; Dot2(ax,ay,bx,by)
  %1832 = fmul fast float %1826, %1826
  %1833 = fsub fast float %1831, %1832
  %1834 = fmul fast float %1830, %1830
  %1835 = fmul fast float %1691, %1833
  %1836 = fsub fast float %1834, %1835
  %1837 = fcmp fast ogt float %1836, 0.000000e+00
  br i1 %1837, label %1838, label %1853, !dx.controlflow.hints !60

; <label>:1838                                    ; preds = %1814
  %1839 = fcmp fast ogt float %1830, 0.000000e+00
  %1840 = call float @dx.op.unary.f32(i32 24, float %1836)  ; Sqrt(value)
  %1841 = fsub fast float -0.000000e+00, %1840
  %1842 = select i1 %1839, float %1840, float %1841
  %1843 = fadd fast float %1842, %1830
  %1844 = fmul float %1843, -5.000000e-01
  %1845 = fdiv fast float %1844, %1684
  %1846 = call float @dx.op.binary.f32(i32 35, float %1845, float 0.000000e+00)  ; FMax(a,b)
  %1847 = call float @dx.op.binary.f32(i32 36, float %1719, float %1846)  ; FMin(a,b)
  %1848 = fdiv fast float %1833, %1844
  %1849 = call float @dx.op.binary.f32(i32 35, float %1848, float 0.000000e+00)  ; FMax(a,b)
  %1850 = call float @dx.op.binary.f32(i32 36, float %1719, float %1849)  ; FMin(a,b)
  %1851 = call float @dx.op.binary.f32(i32 36, float %1847, float %1850)  ; FMin(a,b)
  %1852 = call float @dx.op.binary.f32(i32 35, float %1847, float %1850)  ; FMax(a,b)
  br label %1853

; <label>:1853                                    ; preds = %1838, %1814
  %1854 = phi float [ %1852, %1838 ], [ -1.000000e+00, %1814 ]
  %1855 = phi float [ %1851, %1838 ], [ -1.000000e+00, %1814 ]
  %1856 = phi i1 [ true, %1838 ], [ false, %1814 ]
  br i1 %1856, label %1857, label %1863, !dx.controlflow.hints !83

; <label>:1857                                    ; preds = %1853
  %1858 = call float @dx.op.binary.f32(i32 35, float %1802, float %1855)  ; FMax(a,b)
  %1859 = getelementptr inbounds [3 x float], [3 x float]* %24, i32 0, i32 %1816
  store float %1858, float* %1859, align 4, !tbaa !68, !noalias !72
  %1860 = call float @dx.op.binary.f32(i32 35, float %1802, float %1854)  ; FMax(a,b)
  %1861 = getelementptr inbounds [3 x float], [3 x float]* %25, i32 0, i32 %1816
  store float %1860, float* %1861, align 4, !tbaa !68, !noalias !72
  %1862 = add nsw i32 %1815, 1
  br label %1863

; <label>:1863                                    ; preds = %1857, %1853
  %1864 = phi i32 [ %1862, %1857 ], [ %1815, %1853 ]
  %1865 = add nuw nsw i32 %1816, 1
  %1866 = icmp eq i32 %1865, %1671
  br i1 %1866, label %1867, label %1814

; <label>:1867                                    ; preds = %1863
  %1868 = load float, float* %1808, align 4, !tbaa !68, !alias.scope !84, !noalias !87
  %1869 = load float, float* %1807, align 4, !tbaa !68, !alias.scope !90, !noalias !91
  %1870 = load float, float* %1806, align 4, !tbaa !68, !alias.scope !92, !noalias !93
  %1871 = load float, float* %1811, align 4, !tbaa !68, !alias.scope !94, !noalias !97
  %1872 = load float, float* %1810, align 4, !tbaa !68, !alias.scope !100, !noalias !101
  %1873 = load float, float* %1809, align 4, !tbaa !68, !alias.scope !102, !noalias !103
  br label %1874

; <label>:1874                                    ; preds = %1867, %1801
  %1875 = phi float [ -1.000000e+00, %1801 ], [ %1873, %1867 ]
  %1876 = phi float [ -1.000000e+00, %1801 ], [ %1872, %1867 ]
  %1877 = phi float [ -1.000000e+00, %1801 ], [ %1871, %1867 ]
  %1878 = phi float [ -1.000000e+00, %1801 ], [ %1870, %1867 ]
  %1879 = phi float [ -1.000000e+00, %1801 ], [ %1869, %1867 ]
  %1880 = phi float [ -1.000000e+00, %1801 ], [ %1868, %1867 ]
  %1881 = phi i32 [ 0, %1801 ], [ %1864, %1867 ]
  %1882 = call float @dx.op.binary.f32(i32 36, float %1879, float %1880)  ; FMin(a,b)
  %1883 = call float @dx.op.binary.f32(i32 36, float %1878, float %1882)  ; FMin(a,b)
  %1884 = call float @dx.op.binary.f32(i32 35, float %1878, float %1879)  ; FMax(a,b)
  %1885 = call float @dx.op.binary.f32(i32 36, float %1884, float %1880)  ; FMin(a,b)
  %1886 = call float @dx.op.binary.f32(i32 36, float %1878, float %1879)  ; FMin(a,b)
  %1887 = call float @dx.op.binary.f32(i32 35, float %1886, float %1885)  ; FMax(a,b)
  %1888 = call float @dx.op.binary.f32(i32 35, float %1879, float %1880)  ; FMax(a,b)
  %1889 = call float @dx.op.binary.f32(i32 35, float %1878, float %1888)  ; FMax(a,b)
  store float %1883, float* %1806, align 4, !tbaa !68, !alias.scope !92, !noalias !93
  store float %1887, float* %1807, align 4, !tbaa !68, !alias.scope !90, !noalias !91
  store float %1889, float* %1808, align 4, !tbaa !68, !alias.scope !84, !noalias !87
  %1890 = call float @dx.op.binary.f32(i32 36, float %1876, float %1877)  ; FMin(a,b)
  %1891 = call float @dx.op.binary.f32(i32 36, float %1875, float %1890)  ; FMin(a,b)
  %1892 = call float @dx.op.binary.f32(i32 35, float %1875, float %1876)  ; FMax(a,b)
  %1893 = call float @dx.op.binary.f32(i32 36, float %1892, float %1877)  ; FMin(a,b)
  %1894 = call float @dx.op.binary.f32(i32 36, float %1875, float %1876)  ; FMin(a,b)
  %1895 = call float @dx.op.binary.f32(i32 35, float %1894, float %1893)  ; FMax(a,b)
  %1896 = call float @dx.op.binary.f32(i32 35, float %1876, float %1877)  ; FMax(a,b)
  %1897 = call float @dx.op.binary.f32(i32 35, float %1875, float %1896)  ; FMax(a,b)
  store float %1891, float* %1809, align 4, !tbaa !68, !alias.scope !102, !noalias !103
  store float %1895, float* %1810, align 4, !tbaa !68, !alias.scope !100, !noalias !101
  store float %1897, float* %1811, align 4, !tbaa !68, !alias.scope !94, !noalias !97
  %1898 = sub nsw i32 3, %1881
  %1899 = icmp sgt i32 %1898, 2
  br i1 %1899, label %1900, label %1938, !dx.controlflow.hints !104

; <label>:1900                                    ; preds = %1874
  %1901 = icmp eq i32 %1669, 0
  %1902 = fsub fast float %1719, %1803
  %1903 = select i1 %1901, float %1902, float %1803
  %1904 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %1905 = extractvalue %dx.types.CBufRet.f32 %1904, 0
  %1906 = extractvalue %dx.types.CBufRet.f32 %1904, 1
  %1907 = extractvalue %dx.types.CBufRet.f32 %1904, 2
  %1908 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %1909 = extractvalue %dx.types.CBufRet.f32 %1908, 0
  %1910 = extractvalue %dx.types.CBufRet.f32 %1908, 1
  %1911 = extractvalue %dx.types.CBufRet.f32 %1908, 2
  %1912 = extractvalue %dx.types.CBufRet.f32 %1908, 3
  %1913 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %1914 = extractvalue %dx.types.CBufRet.f32 %1913, 3
  %1915 = call float @dx.op.binary.f32(i32 36, float %1804, float %1914)  ; FMin(a,b)
  %1916 = fmul fast float %1912, %1903
  %1917 = call float @dx.op.unary.f32(i32 7, float %1916)  ; Saturate(value)
  %1918 = fsub fast float %1909, %1905
  %1919 = fsub fast float %1910, %1906
  %1920 = fsub fast float %1911, %1907
  %1921 = fmul fast float %1917, %1918
  %1922 = fmul fast float %1917, %1919
  %1923 = fmul fast float %1917, %1920
  %1924 = fadd fast float %1921, %1905
  %1925 = fadd fast float %1922, %1906
  %1926 = fadd fast float %1923, %1907
  %1927 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %1928 = extractvalue %dx.types.CBufRet.f32 %1927, 0
  %1929 = extractvalue %dx.types.CBufRet.f32 %1927, 1
  %1930 = fadd fast float %1929, %1928
  %1931 = call float @dx.op.unary.f32(i32 7, float %1930)  ; Saturate(value)
  %1932 = extractvalue %dx.types.CBufRet.f32 %1927, 2
  %1933 = extractvalue %dx.types.CBufRet.f32 %1927, 3
  %1934 = fadd fast float %1933, %1932
  %1935 = call float @dx.op.unary.f32(i32 7, float %1934)  ; Saturate(value)
  %1936 = fmul fast float %1931, %1915
  %1937 = fmul fast float %1936, %1935
  br label %2020

; <label>:1938                                    ; preds = %1874
  %1939 = getelementptr inbounds [3 x float], [3 x float]* %24, i32 0, i32 %1898
  %1940 = load float, float* %1939, align 4, !tbaa !68, !noalias !72
  %1941 = fcmp fast olt float %1940, %1805
  %1942 = icmp sgt i32 %1881, 0
  %1943 = and i1 %1942, %1941
  br i1 %1943, label %1944, label %1981

; <label>:1944                                    ; preds = %1938
  br label %1945

; <label>:1945                                    ; preds = %1974, %1944
  %1946 = phi float [ %1975, %1974 ], [ %1803, %1944 ]
  %1947 = phi float [ %1976, %1974 ], [ %1804, %1944 ]
  %1948 = phi float [ %1956, %1974 ], [ %1940, %1944 ]
  %1949 = phi i32 [ %1953, %1974 ], [ %1898, %1944 ]
  %1950 = getelementptr inbounds [3 x float], [3 x float]* %25, i32 0, i32 %1949
  %1951 = load float, float* %1950, align 4, !tbaa !68, !noalias !72
  %1952 = icmp slt i32 %1949, 2
  %1953 = add nsw i32 %1949, 1
  %1954 = getelementptr inbounds [3 x float], [3 x float]* %24, i32 0, i32 %1953
  %1955 = load float, float* %1954, align 4, !tbaa !68, !noalias !72
  %1956 = select i1 %1952, float %1955, float %1719
  %1957 = call float @dx.op.binary.f32(i32 36, float %1956, float %1951)  ; FMin(a,b)
  %1958 = call float @dx.op.binary.f32(i32 36, float %1805, float %1957)  ; FMin(a,b)
  %1959 = icmp eq i32 %1669, 0
  %1960 = fadd fast float %1958, %1948
  %1961 = fmul fast float %1960, %1650
  %1962 = fadd fast float %1961, %1663
  br i1 %1959, label %1968, label %1963, !dx.controlflow.hints !105

; <label>:1963                                    ; preds = %1945
  %1964 = fsub fast float %1958, %1948
  %1965 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1964)  ; FMax(a,b)
  %1966 = fmul fast float %1965, %1962
  %1967 = fadd fast float %1966, %1947
  br label %1974

; <label>:1968                                    ; preds = %1945
  %1969 = fsub fast float %1948, %1958
  %1970 = call float @dx.op.unary.f32(i32 6, float %1969)  ; FAbs(value)
  %1971 = fadd fast float %1970, %1946
  %1972 = fmul fast float %1970, %1962
  %1973 = fsub fast float %1947, %1972
  br label %1974

; <label>:1974                                    ; preds = %1968, %1963
  %1975 = phi float [ %1965, %1963 ], [ %1971, %1968 ]
  %1976 = phi float [ %1967, %1963 ], [ %1973, %1968 ]
  %1977 = fcmp fast olt float %1956, %1805
  %1978 = icmp slt i32 %1953, 3
  %1979 = and i1 %1978, %1977
  br i1 %1979, label %1945, label %1980

; <label>:1980                                    ; preds = %1974
  br label %1981

; <label>:1981                                    ; preds = %1980, %1938
  %1982 = phi float [ %1803, %1938 ], [ %1975, %1980 ]
  %1983 = phi float [ %1804, %1938 ], [ %1976, %1980 ]
  %1984 = fsub fast float %1719, %1982
  %1985 = select i1 %1721, float %1982, float %1984
  %1986 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %1987 = extractvalue %dx.types.CBufRet.f32 %1986, 0
  %1988 = extractvalue %dx.types.CBufRet.f32 %1986, 1
  %1989 = extractvalue %dx.types.CBufRet.f32 %1986, 2
  %1990 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %1991 = extractvalue %dx.types.CBufRet.f32 %1990, 0
  %1992 = extractvalue %dx.types.CBufRet.f32 %1990, 1
  %1993 = extractvalue %dx.types.CBufRet.f32 %1990, 2
  %1994 = extractvalue %dx.types.CBufRet.f32 %1990, 3
  %1995 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %1996 = extractvalue %dx.types.CBufRet.f32 %1995, 3
  %1997 = call float @dx.op.binary.f32(i32 36, float %1983, float %1996)  ; FMin(a,b)
  %1998 = fmul fast float %1994, %1985
  %1999 = call float @dx.op.unary.f32(i32 7, float %1998)  ; Saturate(value)
  %2000 = fsub fast float %1991, %1987
  %2001 = fsub fast float %1992, %1988
  %2002 = fsub fast float %1993, %1989
  %2003 = fmul fast float %1999, %2000
  %2004 = fmul fast float %1999, %2001
  %2005 = fmul fast float %1999, %2002
  %2006 = fadd fast float %2003, %1987
  %2007 = fadd fast float %2004, %1988
  %2008 = fadd fast float %2005, %1989
  %2009 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %2010 = extractvalue %dx.types.CBufRet.f32 %2009, 0
  %2011 = extractvalue %dx.types.CBufRet.f32 %2009, 1
  %2012 = fadd fast float %2011, %2010
  %2013 = call float @dx.op.unary.f32(i32 7, float %2012)  ; Saturate(value)
  %2014 = extractvalue %dx.types.CBufRet.f32 %2009, 2
  %2015 = extractvalue %dx.types.CBufRet.f32 %2009, 3
  %2016 = fadd fast float %2015, %2014
  %2017 = call float @dx.op.unary.f32(i32 7, float %2016)  ; Saturate(value)
  %2018 = fmul fast float %2013, %1997
  %2019 = fmul fast float %2018, %2017
  br label %2020

; <label>:2020                                    ; preds = %1981, %1900, %1735, %1717, %1715
  %2021 = phi float [ %1744, %1735 ], [ %1903, %1900 ], [ %1985, %1981 ], [ 0.000000e+00, %1715 ], [ 0.000000e+00, %1717 ]
  %2022 = phi float [ %1778, %1735 ], [ %1937, %1900 ], [ %2019, %1981 ], [ 0.000000e+00, %1715 ], [ 0.000000e+00, %1717 ]
  %2023 = phi float [ %1765, %1735 ], [ %1924, %1900 ], [ %2006, %1981 ], [ 0.000000e+00, %1715 ], [ 0.000000e+00, %1717 ]
  %2024 = phi float [ %1766, %1735 ], [ %1925, %1900 ], [ %2007, %1981 ], [ 0.000000e+00, %1715 ], [ 0.000000e+00, %1717 ]
  %2025 = phi float [ %1767, %1735 ], [ %1926, %1900 ], [ %2008, %1981 ], [ 0.000000e+00, %1715 ], [ 0.000000e+00, %1717 ]
  %2026 = fmul fast float %1658, %2022
  %2027 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2028 = extractvalue %dx.types.CBufRet.f32 %2027, 2
  %2029 = fsub fast float %1665, %2028
  %2030 = fcmp fast olt float %2026, -2.000000e+01
  %2031 = call float @dx.op.unary.f32(i32 21, float %2026)  ; Exp(value)
  %2032 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %2033 = extractvalue %dx.types.CBufRet.f32 %2032, 2
  %2034 = extractvalue %dx.types.CBufRet.f32 %2032, 3
  %2035 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %2036 = extractvalue %dx.types.CBufRet.f32 %2035, 2
  %2037 = fmul fast float %2034, %2029
  %2038 = call float @dx.op.unary.f32(i32 7, float %2037)  ; Saturate(value)
  %2039 = fsub fast float 1.000000e+00, %2038
  %2040 = fmul fast float %1650, 5.000000e-01
  %2041 = fadd fast float %2040, 5.000000e-01
  %2042 = call float @dx.op.unary.f32(i32 7, float %2041)  ; Saturate(value)
  %2043 = fsub fast float 1.000000e+00, %2042
  %2044 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %2039)  ; FMax(a,b)
  %2045 = fdiv fast float %2043, %2044
  %2046 = fsub fast float %2029, %1616
  %2047 = call float @dx.op.unary.f32(i32 6, float %2046)  ; FAbs(value)
  %2048 = fmul fast float %2047, %2033
  %2049 = call float @dx.op.unary.f32(i32 7, float %2045)  ; Saturate(value)
  %2050 = fsub fast float 1.000000e+00, %2048
  %2051 = fmul fast float %2050, %2049
  %2052 = fadd fast float %2051, %2048
  %2053 = fmul fast float %2036, %2029
  %2054 = call float @dx.op.unary.f32(i32 7, float %2053)  ; Saturate(value)
  %2055 = fsub fast float 1.000000e+00, %2052
  %2056 = fmul fast float %2055, %2054
  %2057 = fadd fast float %2056, %2052
  %2058 = call float @dx.op.unary.f32(i32 7, float %2057)  ; Saturate(value)
  %2059 = fadd fast float %2031, -1.000000e+00
  %2060 = select i1 %2030, float -1.000000e+00, float %2059
  %2061 = fmul fast float %2058, %2060
  %2062 = fadd fast float %2061, 1.000000e+00
  %2063 = fsub fast float -0.000000e+00, %2061
  %2064 = fmul fast float %2023, %2063
  %2065 = fmul fast float %2024, %2063
  %2066 = fmul fast float %2025, %2063
  br label %2067

; <label>:2067                                    ; preds = %2020, %1569
  %2068 = phi float [ %2021, %2020 ], [ 0.000000e+00, %1569 ]
  %2069 = phi float [ %2062, %2020 ], [ 1.000000e+00, %1569 ]
  %2070 = phi float [ %2064, %2020 ], [ 0.000000e+00, %1569 ]
  %2071 = phi float [ %2065, %2020 ], [ 0.000000e+00, %1569 ]
  %2072 = phi float [ %2066, %2020 ], [ 0.000000e+00, %1569 ]
  %2073 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %2074 = extractvalue %dx.types.CBufRet.f32 %2073, 1
  %2075 = fsub fast float 1.000000e+00, %2069
  %2076 = fmul fast float %2075, %1651
  %2077 = fmul fast float %2076, %2074
  %2078 = fsub fast float %1651, %2077
  br i1 %1644, label %2079, label %2108, !dx.controlflow.hints !106

; <label>:2079                                    ; preds = %2067
  %2080 = fmul fast float %1652, %1641
  %2081 = fadd fast float %2080, %1642
  %2082 = call float @dx.op.unary.f32(i32 7, float %2081)  ; Saturate(value)
  %2083 = fmul fast float %1623, %2078
  %2084 = fsub fast float -0.000000e+00, %2083
  %2085 = fmul fast float %1624, %2078
  %2086 = fsub fast float -0.000000e+00, %2085
  %2087 = call float @dx.op.unary.f32(i32 21, float %2084)  ; Exp(value)
  %2088 = call float @dx.op.unary.f32(i32 21, float %2086)  ; Exp(value)
  %2089 = call float @dx.op.binary.f32(i32 35, float %1631, float %2087)  ; FMax(a,b)
  %2090 = call float @dx.op.binary.f32(i32 35, float %1631, float %2088)  ; FMax(a,b)
  %2091 = fsub fast float %2090, %2089
  %2092 = fmul fast float %2091, %2082
  %2093 = fadd fast float %2092, %2089
  %2094 = call float @dx.op.unary.f32(i32 7, float %2093)  ; Saturate(value)
  %2095 = fsub fast float %1628, %1633
  %2096 = fsub fast float %1629, %1634
  %2097 = fsub fast float %1630, %1635
  %2098 = fmul fast float %2082, %2095
  %2099 = fmul fast float %2082, %2096
  %2100 = fmul fast float %2082, %2097
  %2101 = fadd fast float %2098, %1633
  %2102 = fadd fast float %2099, %1634
  %2103 = fadd fast float %2100, %1635
  %2104 = fsub fast float 1.000000e+00, %2094
  %2105 = fmul fast float %2104, %2101
  %2106 = fmul fast float %2104, %2102
  %2107 = fmul fast float %2104, %2103
  br label %2167

; <label>:2108                                    ; preds = %2067
  %2109 = fmul fast float %2078, %1640
  %2110 = call float @dx.op.unary.f32(i32 7, float %2109)  ; Saturate(value)
  %2111 = fsub fast float 2.000000e+00, %2110
  %2112 = fmul fast float %2110, 9.921875e-01
  %2113 = fmul fast float %2112, %2111
  %2114 = fadd fast float %2113, 3.906250e-03
  %2115 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %18, float %2114, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2116 = extractvalue %dx.types.ResRet.f32 %2115, 0
  %2117 = fsub fast float %2110, %2116
  %2118 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2117)  ; FMax(a,b)
  %2119 = fmul fast float %1626, %1616
  %2120 = call float @dx.op.unary.f32(i32 6, float %2119)  ; FAbs(value)
  %2121 = fcmp fast ogt float %2120, 0x3EB0C6F7A0000000
  br i1 %2121, label %2122, label %2128, !dx.controlflow.hints !107

; <label>:2122                                    ; preds = %2108
  %2123 = fmul fast float %2119, 0xBFF7154760000000
  %2124 = call float @dx.op.unary.f32(i32 21, float %2123)  ; Exp(value)
  %2125 = fsub fast float 1.000000e+00, %2124
  %2126 = fdiv fast float %2125, %2119
  %2127 = fmul fast float %2126, %1636
  br label %2128

; <label>:2128                                    ; preds = %2122, %2108
  %2129 = phi float [ %2127, %2122 ], [ %1636, %2108 ]
  %2130 = fadd fast float %2129, %1638
  %2131 = fmul fast float %2130, %2118
  %2132 = fmul fast float %1623, %2131
  %2133 = fsub fast float -0.000000e+00, %2132
  %2134 = fmul fast float %1624, %2131
  %2135 = fsub fast float -0.000000e+00, %2134
  %2136 = fmul fast float %1625, %2131
  %2137 = fsub fast float -0.000000e+00, %2136
  %2138 = call float @dx.op.unary.f32(i32 21, float %2133)  ; Exp(value)
  %2139 = call float @dx.op.unary.f32(i32 21, float %2135)  ; Exp(value)
  %2140 = call float @dx.op.unary.f32(i32 21, float %2137)  ; Exp(value)
  %2141 = fmul fast float %1652, %1652
  %2142 = fadd fast float %2141, 1.000000e+00
  %2143 = fmul fast float %2142, 0x3FAE8EC8A0000000
  %2144 = fmul fast float %2143, %1633
  %2145 = fmul fast float %2143, %1634
  %2146 = fmul fast float %2143, %1635
  %2147 = fmul fast float %1652, %1631
  %2148 = fsub fast float 1.000000e+00, %2147
  %2149 = fmul fast float %1631, %1631
  %2150 = fsub fast float 1.000000e+00, %2149
  %2151 = fmul fast float %2150, 0x3FB45F3060000000
  %2152 = fmul fast float %2148, %2148
  %2153 = fdiv fast float 1.000000e+00, %2152
  %2154 = fmul fast float %2151, %2153
  %2155 = fmul fast float %2154, %1628
  %2156 = fmul fast float %2154, %1629
  %2157 = fmul fast float %2154, %1630
  %2158 = fadd fast float %2155, %2144
  %2159 = fadd fast float %2156, %2145
  %2160 = fadd fast float %2157, %2146
  %2161 = fsub fast float 1.000000e+00, %2138
  %2162 = fsub fast float 1.000000e+00, %2139
  %2163 = fsub fast float 1.000000e+00, %2140
  %2164 = fmul fast float %2158, %2161
  %2165 = fmul fast float %2159, %2162
  %2166 = fmul fast float %2160, %2163
  br label %2167

; <label>:2167                                    ; preds = %2128, %2079
  %2168 = phi float [ %2105, %2079 ], [ %2164, %2128 ]
  %2169 = phi float [ %2106, %2079 ], [ %2165, %2128 ]
  %2170 = phi float [ %2107, %2079 ], [ %2166, %2128 ]
  %2171 = phi float [ %2094, %2079 ], [ %2138, %2128 ]
  %2172 = phi float [ %2094, %2079 ], [ %2139, %2128 ]
  %2173 = phi float [ %2094, %2079 ], [ %2140, %2128 ]
  br i1 %1660, label %2174, label %2372, !dx.controlflow.hints !108

; <label>:2174                                    ; preds = %2167
  %2175 = extractvalue %dx.types.CBufRet.f32 %2073, 0
  %2176 = fmul fast float %2175, %2075
  %2177 = fsub fast float %2070, %2168
  %2178 = fsub fast float %2071, %2169
  %2179 = fsub fast float %2072, %2170
  %2180 = fmul fast float %2176, %2177
  %2181 = fmul fast float %2176, %2178
  %2182 = fmul fast float %2176, %2179
  %2183 = fadd fast float %2180, %2168
  %2184 = fadd fast float %2181, %2169
  %2185 = fadd fast float %2182, %2170
  %2186 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %2171)  ; FMax(a,b)
  %2187 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %2172)  ; FMax(a,b)
  %2188 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %2173)  ; FMax(a,b)
  %2189 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %2069)  ; FMax(a,b)
  %2190 = call float @dx.op.binary.f32(i32 35, float %2068, float %2078)  ; FMax(a,b)
  %2191 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %2190)  ; FMax(a,b)
  %2192 = fdiv fast float %2068, %2191
  %2193 = call float @dx.op.unary.f32(i32 7, float %2192)  ; Saturate(value)
  %2194 = fdiv fast float %2078, %2191
  %2195 = call float @dx.op.unary.f32(i32 7, float %2194)  ; Saturate(value)
  %2196 = fcmp fast une float %2189, 1.000000e+00
  br i1 %2196, label %2197, label %2210, !dx.controlflow.hints !109

; <label>:2197                                    ; preds = %2174
  %2198 = call float @dx.op.unary.f32(i32 23, float %2189)  ; Log(value)
  %2199 = fmul fast float %2198, 0x3FE62E4300000000
  %2200 = fmul fast float %2070, %2199
  %2201 = fsub fast float -0.000000e+00, %2200
  %2202 = fmul fast float %2071, %2199
  %2203 = fsub fast float -0.000000e+00, %2202
  %2204 = fmul fast float %2072, %2199
  %2205 = fsub fast float -0.000000e+00, %2204
  %2206 = fsub fast float 1.000000e+00, %2189
  %2207 = fdiv fast float %2201, %2206
  %2208 = fdiv fast float %2203, %2206
  %2209 = fdiv fast float %2205, %2206
  br label %2210

; <label>:2210                                    ; preds = %2197, %2174
  %2211 = phi float [ %2207, %2197 ], [ %2070, %2174 ]
  %2212 = phi float [ %2208, %2197 ], [ %2071, %2174 ]
  %2213 = phi float [ %2209, %2197 ], [ %2072, %2174 ]
  %2214 = phi float [ %2199, %2197 ], [ 0.000000e+00, %2174 ]
  %2215 = fcmp fast une float %2186, 1.000000e+00
  br i1 %2215, label %2216, label %2223, !dx.controlflow.hints !110

; <label>:2216                                    ; preds = %2210
  %2217 = call float @dx.op.unary.f32(i32 23, float %2186)  ; Log(value)
  %2218 = fmul fast float %2217, 0x3FE62E4300000000
  %2219 = fmul fast float %2183, %2218
  %2220 = fsub fast float -0.000000e+00, %2219
  %2221 = fsub fast float 1.000000e+00, %2186
  %2222 = fdiv fast float %2220, %2221
  br label %2223

; <label>:2223                                    ; preds = %2216, %2210
  %2224 = phi float [ %2222, %2216 ], [ %2183, %2210 ]
  %2225 = phi float [ %2218, %2216 ], [ 0.000000e+00, %2210 ]
  %2226 = fcmp fast une float %2187, 1.000000e+00
  br i1 %2226, label %2227, label %2234, !dx.controlflow.hints !110

; <label>:2227                                    ; preds = %2223
  %2228 = call float @dx.op.unary.f32(i32 23, float %2187)  ; Log(value)
  %2229 = fmul fast float %2228, 0x3FE62E4300000000
  %2230 = fmul fast float %2184, %2229
  %2231 = fsub fast float -0.000000e+00, %2230
  %2232 = fsub fast float 1.000000e+00, %2187
  %2233 = fdiv fast float %2231, %2232
  br label %2234

; <label>:2234                                    ; preds = %2227, %2223
  %2235 = phi float [ %2233, %2227 ], [ %2184, %2223 ]
  %2236 = phi float [ %2229, %2227 ], [ 0.000000e+00, %2223 ]
  %2237 = fcmp fast une float %2188, 1.000000e+00
  br i1 %2237, label %2238, label %2245, !dx.controlflow.hints !110

; <label>:2238                                    ; preds = %2234
  %2239 = call float @dx.op.unary.f32(i32 23, float %2188)  ; Log(value)
  %2240 = fmul fast float %2239, 0x3FE62E4300000000
  %2241 = fmul fast float %2185, %2240
  %2242 = fsub fast float -0.000000e+00, %2241
  %2243 = fsub fast float 1.000000e+00, %2188
  %2244 = fdiv fast float %2242, %2243
  br label %2245

; <label>:2245                                    ; preds = %2238, %2234
  %2246 = phi float [ %2244, %2238 ], [ %2185, %2234 ]
  %2247 = phi float [ %2240, %2238 ], [ 0.000000e+00, %2234 ]
  %2248 = fmul fast float %2211, %2195
  %2249 = fmul fast float %2212, %2195
  %2250 = fmul fast float %2213, %2195
  %2251 = fmul fast float %2214, %2195
  %2252 = fmul fast float %2224, %2193
  %2253 = fmul fast float %2235, %2193
  %2254 = fmul fast float %2246, %2193
  %2255 = fmul fast float %2225, %2193
  %2256 = fmul fast float %2236, %2193
  %2257 = fmul fast float %2247, %2193
  %2258 = fadd fast float %2252, %2248
  %2259 = fadd fast float %2253, %2249
  %2260 = fadd fast float %2254, %2250
  %2261 = fadd fast float %2255, %2251
  %2262 = fadd fast float %2256, %2251
  %2263 = fadd fast float %2257, %2251
  %2264 = fcmp fast une float %2261, 0.000000e+00
  br i1 %2264, label %2265, label %2272, !dx.controlflow.hints !111

; <label>:2265                                    ; preds = %2245
  %2266 = fmul fast float %2261, 0x3FF7154760000000
  %2267 = call float @dx.op.unary.f32(i32 21, float %2266)  ; Exp(value)
  %2268 = fsub fast float 1.000000e+00, %2267
  %2269 = fmul fast float %2258, %2268
  %2270 = fsub fast float -0.000000e+00, %2269
  %2271 = fdiv fast float %2270, %2261
  br label %2272

; <label>:2272                                    ; preds = %2265, %2245
  %2273 = phi float [ %2267, %2265 ], [ 1.000000e+00, %2245 ]
  %2274 = phi float [ %2271, %2265 ], [ %2258, %2245 ]
  %2275 = fcmp fast une float %2262, 0.000000e+00
  br i1 %2275, label %2276, label %2283, !dx.controlflow.hints !111

; <label>:2276                                    ; preds = %2272
  %2277 = fmul fast float %2262, 0x3FF7154760000000
  %2278 = call float @dx.op.unary.f32(i32 21, float %2277)  ; Exp(value)
  %2279 = fsub fast float 1.000000e+00, %2278
  %2280 = fmul fast float %2259, %2279
  %2281 = fsub fast float -0.000000e+00, %2280
  %2282 = fdiv fast float %2281, %2262
  br label %2283

; <label>:2283                                    ; preds = %2276, %2272
  %2284 = phi float [ %2278, %2276 ], [ 1.000000e+00, %2272 ]
  %2285 = phi float [ %2282, %2276 ], [ %2259, %2272 ]
  %2286 = fcmp fast une float %2263, 0.000000e+00
  br i1 %2286, label %2287, label %2294, !dx.controlflow.hints !111

; <label>:2287                                    ; preds = %2283
  %2288 = fmul fast float %2263, 0x3FF7154760000000
  %2289 = call float @dx.op.unary.f32(i32 21, float %2288)  ; Exp(value)
  %2290 = fsub fast float 1.000000e+00, %2289
  %2291 = fmul fast float %2260, %2290
  %2292 = fsub fast float -0.000000e+00, %2291
  %2293 = fdiv fast float %2292, %2263
  br label %2294

; <label>:2294                                    ; preds = %2287, %2283
  %2295 = phi float [ %2289, %2287 ], [ 1.000000e+00, %2283 ]
  %2296 = phi float [ %2293, %2287 ], [ %2260, %2283 ]
  %2297 = fcmp fast ogt float %2193, %2195
  br i1 %2297, label %2298, label %2318, !dx.controlflow.hints !112

; <label>:2298                                    ; preds = %2294
  %2299 = fsub fast float 1.000000e+00, %2195
  %2300 = fmul fast float %2211, %2299
  %2301 = fmul fast float %2212, %2299
  %2302 = fmul fast float %2213, %2299
  %2303 = fmul fast float %2214, %2299
  %2304 = fcmp fast une float %2303, 0.000000e+00
  br i1 %2304, label %2305, label %2356, !dx.controlflow.hints !113

; <label>:2305                                    ; preds = %2298
  %2306 = fmul fast float %2303, 0x3FF7154760000000
  %2307 = call float @dx.op.unary.f32(i32 21, float %2306)  ; Exp(value)
  %2308 = fsub fast float 1.000000e+00, %2307
  %2309 = fmul fast float %2300, %2308
  %2310 = fsub fast float -0.000000e+00, %2309
  %2311 = fmul fast float %2301, %2308
  %2312 = fsub fast float -0.000000e+00, %2311
  %2313 = fmul fast float %2302, %2308
  %2314 = fsub fast float -0.000000e+00, %2313
  %2315 = fdiv fast float %2310, %2303
  %2316 = fdiv fast float %2312, %2303
  %2317 = fdiv fast float %2314, %2303
  br label %2356

; <label>:2318                                    ; preds = %2294
  %2319 = fsub fast float 1.000000e+00, %2193
  %2320 = fmul fast float %2224, %2319
  %2321 = fmul fast float %2235, %2319
  %2322 = fmul fast float %2246, %2319
  %2323 = fmul fast float %2225, %2319
  %2324 = fmul fast float %2236, %2319
  %2325 = fmul fast float %2247, %2319
  %2326 = fcmp fast une float %2323, 0.000000e+00
  br i1 %2326, label %2327, label %2334, !dx.controlflow.hints !111

; <label>:2327                                    ; preds = %2318
  %2328 = fmul fast float %2323, 0x3FF7154760000000
  %2329 = call float @dx.op.unary.f32(i32 21, float %2328)  ; Exp(value)
  %2330 = fsub fast float 1.000000e+00, %2329
  %2331 = fmul fast float %2320, %2330
  %2332 = fsub fast float -0.000000e+00, %2331
  %2333 = fdiv fast float %2332, %2323
  br label %2334

; <label>:2334                                    ; preds = %2327, %2318
  %2335 = phi float [ %2333, %2327 ], [ %2320, %2318 ]
  %2336 = phi float [ %2329, %2327 ], [ 1.000000e+00, %2318 ]
  %2337 = fcmp fast une float %2324, 0.000000e+00
  br i1 %2337, label %2338, label %2345, !dx.controlflow.hints !111

; <label>:2338                                    ; preds = %2334
  %2339 = fmul fast float %2324, 0x3FF7154760000000
  %2340 = call float @dx.op.unary.f32(i32 21, float %2339)  ; Exp(value)
  %2341 = fsub fast float 1.000000e+00, %2340
  %2342 = fmul fast float %2321, %2341
  %2343 = fsub fast float -0.000000e+00, %2342
  %2344 = fdiv fast float %2343, %2324
  br label %2345

; <label>:2345                                    ; preds = %2338, %2334
  %2346 = phi float [ %2344, %2338 ], [ %2321, %2334 ]
  %2347 = phi float [ %2340, %2338 ], [ 1.000000e+00, %2334 ]
  %2348 = fcmp fast une float %2325, 0.000000e+00
  br i1 %2348, label %2349, label %2356, !dx.controlflow.hints !111

; <label>:2349                                    ; preds = %2345
  %2350 = fmul fast float %2325, 0x3FF7154760000000
  %2351 = call float @dx.op.unary.f32(i32 21, float %2350)  ; Exp(value)
  %2352 = fsub fast float 1.000000e+00, %2351
  %2353 = fmul fast float %2322, %2352
  %2354 = fsub fast float -0.000000e+00, %2353
  %2355 = fdiv fast float %2354, %2325
  br label %2356

; <label>:2356                                    ; preds = %2349, %2345, %2305, %2298
  %2357 = phi float [ %2355, %2349 ], [ %2317, %2305 ], [ %2302, %2298 ], [ %2322, %2345 ]
  %2358 = phi float [ %2346, %2349 ], [ %2316, %2305 ], [ %2301, %2298 ], [ %2346, %2345 ]
  %2359 = phi float [ %2335, %2349 ], [ %2315, %2305 ], [ %2300, %2298 ], [ %2335, %2345 ]
  %2360 = phi float [ %2351, %2349 ], [ %2307, %2305 ], [ 1.000000e+00, %2298 ], [ 1.000000e+00, %2345 ]
  %2361 = phi float [ %2347, %2349 ], [ %2307, %2305 ], [ 1.000000e+00, %2298 ], [ %2347, %2345 ]
  %2362 = phi float [ %2336, %2349 ], [ %2307, %2305 ], [ 1.000000e+00, %2298 ], [ %2336, %2345 ]
  %2363 = fmul fast float %2362, %2274
  %2364 = fmul fast float %2361, %2285
  %2365 = fmul fast float %2360, %2296
  %2366 = fadd fast float %2363, %2359
  %2367 = fadd fast float %2364, %2358
  %2368 = fadd fast float %2365, %2357
  %2369 = fmul fast float %2362, %2273
  %2370 = fmul fast float %2361, %2284
  %2371 = fmul fast float %2360, %2295
  br label %2372

; <label>:2372                                    ; preds = %2356, %2167
  %2373 = phi float [ %2173, %2167 ], [ %2371, %2356 ]
  %2374 = phi float [ %2172, %2167 ], [ %2370, %2356 ]
  %2375 = phi float [ %2171, %2167 ], [ %2369, %2356 ]
  %2376 = phi float [ %2170, %2167 ], [ %2368, %2356 ]
  %2377 = phi float [ %2169, %2167 ], [ %2367, %2356 ]
  %2378 = phi float [ %2168, %2167 ], [ %2366, %2356 ]
  %2379 = fmul fast float %2375, %1516
  %2380 = fmul fast float %2374, %1517
  %2381 = fmul fast float %2373, %1518
  %2382 = fsub fast float 1.000000e+00, %1579
  %2383 = fmul fast float %2378, %2382
  %2384 = fmul fast float %2377, %2382
  %2385 = fmul fast float %2376, %2382
  %2386 = fadd fast float %2383, %2379
  %2387 = fadd fast float %2384, %2380
  %2388 = fadd fast float %2385, %2381
  %2389 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 423)  ; CBufferLoadLegacy(handle,regIndex)
  %2390 = extractvalue %dx.types.CBufRet.f32 %2389, 2
  %2391 = fmul fast float %2390, %1589
  %2392 = call float @dx.op.unary.f32(i32 7, float %2391)  ; Saturate(value)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %3, i32 %21, i32 %22, i32 undef, float %1579, float %1579, float %1579, float %1579, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %2393 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2394 = extractvalue %dx.types.CBufRet.f32 %2393, 0
  %2395 = fmul fast float %2394, %2386
  %2396 = fmul fast float %2394, %2387
  %2397 = fmul fast float %2394, %2388
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %4, i32 %21, i32 %22, i32 undef, float %2395, float %2396, float %2397, float %2395, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %21, i32 %22, i32 undef, float %2392, float %2392, float %2392, float %2392, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
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
!31 = !{void ()* @cs_fog_raymarching_clouds_brfog, !"cs_fog_raymarching_clouds_brfog", null, !4, !32}
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
!45 = distinct !{!45, !"dx.controlflow.hints", i32 1}
!46 = distinct !{!46, !"dx.controlflow.hints", i32 2}
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

