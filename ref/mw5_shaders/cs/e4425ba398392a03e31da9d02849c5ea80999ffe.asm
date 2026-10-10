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
; shader hash: 967f906c1a21ba5244c4c1915ae90bc9
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

define void @cs_fog_raymarching_clouds_heightmap() {
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
  %374 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %375 = extractvalue %dx.types.CBufRet.i32 %374, 3
  %376 = icmp eq i32 %375, 0
  %377 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 31)  ; CBufferLoadLegacy(handle,regIndex)
  %378 = extractvalue %dx.types.CBufRet.f32 %377, 2
  %379 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 32)  ; CBufferLoadLegacy(handle,regIndex)
  %380 = extractvalue %dx.types.CBufRet.f32 %379, 2
  %381 = fsub fast float %378, %241
  %382 = fadd fast float %381, %380
  br i1 %376, label %394, label %383, !dx.controlflow.hints !38

; <label>:383                                     ; preds = %370
  %384 = fsub fast float -0.000000e+00, %239
  %385 = fsub fast float -0.000000e+00, %240
  %386 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %384, float %385, float %382)  ; Dot3(ax,ay,az,bx,by,bz)
  %387 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %282, float %283, float %284)  ; Dot3(ax,ay,az,bx,by,bz)
  %388 = fdiv fast float 1.000000e+00, %387
  %389 = fmul fast float %388, %386
  %390 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %384, float %385, float %381)  ; Dot3(ax,ay,az,bx,by,bz)
  %391 = fmul fast float %388, %390
  %392 = call float @dx.op.binary.f32(i32 36, float %389, float %391)  ; FMin(a,b)
  %393 = call float @dx.op.binary.f32(i32 35, float %389, float %391)  ; FMax(a,b)
  br label %427

; <label>:394                                     ; preds = %370
  %395 = fdiv fast float 1.000000e+00, %282
  %396 = fdiv fast float 1.000000e+00, %283
  %397 = fdiv fast float 1.000000e+00, %284
  %398 = extractvalue %dx.types.CBufRet.f32 %377, 0
  %399 = extractvalue %dx.types.CBufRet.f32 %377, 1
  %400 = extractvalue %dx.types.CBufRet.f32 %379, 0
  %401 = extractvalue %dx.types.CBufRet.f32 %379, 1
  %402 = fsub fast float %398, %239
  %403 = fmul fast float %402, %395
  %404 = fadd fast float %402, %400
  %405 = fmul fast float %404, %395
  %406 = call float @dx.op.binary.f32(i32 36, float %403, float %405)  ; FMin(a,b)
  %407 = call float @dx.op.binary.f32(i32 35, float %403, float %405)  ; FMax(a,b)
  %408 = fsub fast float %399, %240
  %409 = fmul fast float %408, %396
  %410 = fadd fast float %408, %401
  %411 = fmul fast float %410, %396
  %412 = call float @dx.op.binary.f32(i32 36, float %409, float %411)  ; FMin(a,b)
  %413 = call float @dx.op.binary.f32(i32 35, float %406, float %412)  ; FMax(a,b)
  %414 = call float @dx.op.binary.f32(i32 35, float %409, float %411)  ; FMax(a,b)
  %415 = call float @dx.op.binary.f32(i32 36, float %407, float %414)  ; FMin(a,b)
  %416 = fmul fast float %381, %397
  %417 = fmul fast float %382, %397
  %418 = call float @dx.op.binary.f32(i32 36, float %416, float %417)  ; FMin(a,b)
  %419 = call float @dx.op.binary.f32(i32 35, float %413, float %418)  ; FMax(a,b)
  %420 = call float @dx.op.binary.f32(i32 35, float %416, float %417)  ; FMax(a,b)
  %421 = call float @dx.op.binary.f32(i32 36, float %415, float %420)  ; FMin(a,b)
  %422 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %419)  ; FMax(a,b)
  %423 = fcmp fast ult float %421, %422
  br i1 %423, label %427, label %424, !dx.controlflow.hints !39

; <label>:424                                     ; preds = %394
  %425 = call float @dx.op.binary.f32(i32 36, float %419, float %421)  ; FMin(a,b)
  %426 = call float @dx.op.binary.f32(i32 35, float %419, float %421)  ; FMax(a,b)
  br label %427

; <label>:427                                     ; preds = %424, %394, %383
  %428 = phi float [ %392, %383 ], [ %425, %424 ], [ 0.000000e+00, %394 ]
  %429 = phi float [ %393, %383 ], [ %426, %424 ], [ 0.000000e+00, %394 ]
  %430 = fcmp fast oeq float %429, 0.000000e+00
  br i1 %430, label %434, label %431, !dx.controlflow.hints !40

; <label>:431                                     ; preds = %427
  %432 = call float @dx.op.binary.f32(i32 36, float %373, float %428)  ; FMin(a,b)
  %433 = call float @dx.op.binary.f32(i32 35, float %372, float %429)  ; FMax(a,b)
  br label %434

; <label>:434                                     ; preds = %431, %427
  %435 = phi i32 [ 1, %431 ], [ 0, %427 ]
  %436 = phi float [ %433, %431 ], [ %372, %427 ]
  %437 = phi float [ %432, %431 ], [ %373, %427 ]
  %438 = call float @dx.op.binary.f32(i32 36, float %303, float %436)  ; FMin(a,b)
  %439 = call float @dx.op.binary.f32(i32 35, float %280, float %437)  ; FMax(a,b)
  %440 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %441 = extractvalue %dx.types.CBufRet.f32 %440, 0
  %442 = fmul fast float %228, 2.000000e+00
  %443 = fadd fast float %442, -1.000000e+00
  %444 = fmul fast float %441, %443
  %445 = fadd fast float %444, %439
  %446 = fcmp fast olt float %445, %438
  %447 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %448 = extractvalue %dx.types.CBufRet.f32 %447, 2
  %449 = fcmp fast olt float %448, 1.000000e+00
  %450 = and i1 %446, %449
  br i1 %450, label %451, label %1592

; <label>:451                                     ; preds = %434
  %452 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %19, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %453 = extractvalue %dx.types.CBufRet.i32 %452, 1
  %454 = add i32 %453, -1
  %455 = fmul fast float %445, %284
  %456 = fadd fast float %455, %241
  %457 = fmul fast float %445, %283
  %458 = fadd fast float %457, %240
  %459 = fmul fast float %445, %282
  %460 = fadd fast float %459, %239
  br label %461

; <label>:461                                     ; preds = %1568, %451
  %462 = phi float [ %1570, %1568 ], [ 0.000000e+00, %451 ]
  %463 = phi float [ %1571, %1568 ], [ 1.000000e+00, %451 ]
  %464 = phi float [ %1572, %1568 ], [ 0.000000e+00, %451 ]
  %465 = phi float [ %1573, %1568 ], [ 0.000000e+00, %451 ]
  %466 = phi float [ %1574, %1568 ], [ 0.000000e+00, %451 ]
  %467 = phi float [ %1584, %1568 ], [ %460, %451 ]
  %468 = phi float [ %1585, %1568 ], [ %458, %451 ]
  %469 = phi float [ %1586, %1568 ], [ %456, %451 ]
  %470 = phi float [ %1569, %1568 ], [ %445, %451 ]
  %471 = phi i32 [ %656, %1568 ], [ %454, %451 ]
  %472 = phi float [ %1575, %1568 ], [ 0.000000e+00, %451 ]
  %473 = phi float [ %1576, %1568 ], [ 0.000000e+00, %451 ]
  %474 = phi float [ %1577, %1568 ], [ 0.000000e+00, %451 ]
  %475 = phi float [ %1578, %1568 ], [ 0.000000e+00, %451 ]
  %476 = phi float [ %1579, %1568 ], [ 0.000000e+00, %451 ]
  %477 = phi i32 [ %1580, %1568 ], [ 0, %451 ]
  %478 = fsub fast float -0.000000e+00, %468
  %479 = fsub fast float -0.000000e+00, %467
  %480 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %481 = extractvalue %dx.types.CBufRet.f32 %480, 0
  %482 = icmp eq i32 %371, 0
  br i1 %482, label %653, label %483, !dx.controlflow.hints !41

; <label>:483                                     ; preds = %461
  %484 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %19, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %485 = extractvalue %dx.types.CBufRet.i32 %484, 1
  %486 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 427)  ; CBufferLoadLegacy(handle,regIndex)
  %487 = extractvalue %dx.types.CBufRet.f32 %486, 1
  %488 = fcmp fast ogt float %487, %470
  br i1 %488, label %489, label %491, !dx.controlflow.hints !42

; <label>:489                                     ; preds = %483
  %490 = fsub fast float %487, %470
  br label %643

; <label>:491                                     ; preds = %483
  %492 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %493 = extractvalue %dx.types.CBufRet.i32 %492, 3
  %494 = icmp eq i32 %493, 0
  %495 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 401)  ; CBufferLoadLegacy(handle,regIndex)
  %496 = extractvalue %dx.types.CBufRet.f32 %495, 2
  %497 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %498 = extractvalue %dx.types.CBufRet.f32 %497, 2
  %499 = fsub fast float %496, %469
  %500 = fadd fast float %499, %498
  %501 = fsub fast float 0xC7EFFFFFE0000000, %469
  br i1 %494, label %511, label %502, !dx.controlflow.hints !35

; <label>:502                                     ; preds = %491
  %503 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %479, float %478, float %500)  ; Dot3(ax,ay,az,bx,by,bz)
  %504 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %282, float %283, float %284)  ; Dot3(ax,ay,az,bx,by,bz)
  %505 = fdiv fast float 1.000000e+00, %504
  %506 = fmul fast float %505, %503
  %507 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %479, float %478, float %501)  ; Dot3(ax,ay,az,bx,by,bz)
  %508 = fmul fast float %505, %507
  %509 = call float @dx.op.binary.f32(i32 36, float %506, float %508)  ; FMin(a,b)
  %510 = call float @dx.op.binary.f32(i32 35, float %506, float %508)  ; FMax(a,b)
  br label %544

; <label>:511                                     ; preds = %491
  %512 = extractvalue %dx.types.CBufRet.f32 %495, 0
  %513 = extractvalue %dx.types.CBufRet.f32 %495, 1
  %514 = extractvalue %dx.types.CBufRet.f32 %497, 0
  %515 = extractvalue %dx.types.CBufRet.f32 %497, 1
  %516 = fdiv fast float 1.000000e+00, %282
  %517 = fdiv fast float 1.000000e+00, %283
  %518 = fdiv fast float 1.000000e+00, %284
  %519 = fsub fast float %512, %467
  %520 = fmul fast float %516, %519
  %521 = fadd fast float %519, %514
  %522 = fmul fast float %521, %516
  %523 = call float @dx.op.binary.f32(i32 36, float %520, float %522)  ; FMin(a,b)
  %524 = call float @dx.op.binary.f32(i32 35, float %520, float %522)  ; FMax(a,b)
  %525 = fsub fast float %513, %468
  %526 = fmul fast float %517, %525
  %527 = fadd fast float %525, %515
  %528 = fmul fast float %527, %517
  %529 = call float @dx.op.binary.f32(i32 36, float %526, float %528)  ; FMin(a,b)
  %530 = call float @dx.op.binary.f32(i32 35, float %523, float %529)  ; FMax(a,b)
  %531 = call float @dx.op.binary.f32(i32 35, float %526, float %528)  ; FMax(a,b)
  %532 = call float @dx.op.binary.f32(i32 36, float %524, float %531)  ; FMin(a,b)
  %533 = fmul fast float %518, %501
  %534 = fmul fast float %518, %500
  %535 = call float @dx.op.binary.f32(i32 36, float %533, float %534)  ; FMin(a,b)
  %536 = call float @dx.op.binary.f32(i32 35, float %530, float %535)  ; FMax(a,b)
  %537 = call float @dx.op.binary.f32(i32 35, float %533, float %534)  ; FMax(a,b)
  %538 = call float @dx.op.binary.f32(i32 36, float %532, float %537)  ; FMin(a,b)
  %539 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %536)  ; FMax(a,b)
  %540 = fcmp fast ult float %538, %539
  br i1 %540, label %544, label %541, !dx.controlflow.hints !36

; <label>:541                                     ; preds = %511
  %542 = call float @dx.op.binary.f32(i32 36, float %536, float %538)  ; FMin(a,b)
  %543 = call float @dx.op.binary.f32(i32 35, float %536, float %538)  ; FMax(a,b)
  br label %544

; <label>:544                                     ; preds = %541, %511, %502
  %545 = phi float [ %509, %502 ], [ %542, %541 ], [ 0.000000e+00, %511 ]
  %546 = phi float [ %510, %502 ], [ %543, %541 ], [ 0.000000e+00, %511 ]
  %547 = fcmp fast ogt float %545, 0.000000e+00
  br i1 %547, label %643, label %548, !dx.controlflow.hints !43

; <label>:548                                     ; preds = %544
  %549 = fcmp fast ugt float %546, 0.000000e+00
  br i1 %549, label %550, label %643, !dx.controlflow.hints !44

; <label>:550                                     ; preds = %548
  %551 = icmp sgt i32 %471, 0
  br i1 %551, label %552, label %637

; <label>:552                                     ; preds = %550
  br label %553

; <label>:553                                     ; preds = %633, %552
  %554 = phi i32 [ %634, %633 ], [ %471, %552 ]
  %555 = sitofp i32 %554 to float
  %556 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 401)  ; CBufferLoadLegacy(handle,regIndex)
  %557 = extractvalue %dx.types.CBufRet.f32 %556, 0
  %558 = extractvalue %dx.types.CBufRet.f32 %556, 1
  %559 = fsub fast float %467, %557
  %560 = fsub fast float %468, %558
  %561 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 403)  ; CBufferLoadLegacy(handle,regIndex)
  %562 = extractvalue %dx.types.CBufRet.f32 %561, 0
  %563 = extractvalue %dx.types.CBufRet.f32 %561, 1
  %564 = fmul fast float %559, %562
  %565 = fmul fast float %560, %563
  %566 = fsub fast float 1.000000e+00, %565
  %567 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %568 = extractvalue %dx.types.CBufRet.i32 %567, 3
  %569 = icmp eq i32 %568, 0
  br i1 %569, label %576, label %570, !dx.controlflow.hints !45

; <label>:570                                     ; preds = %553
  %571 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %17, float %564, float %566, float undef, float undef, i32 0, i32 0, i32 undef, float %555)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %572 = extractvalue %dx.types.ResRet.f32 %571, 0
  %573 = extractvalue %dx.types.ResRet.f32 %571, 1
  %574 = extractvalue %dx.types.ResRet.f32 %571, 2
  %575 = extractvalue %dx.types.ResRet.f32 %571, 3
  br label %582

; <label>:576                                     ; preds = %553
  %577 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %18, float %564, float %566, float undef, float undef, i32 0, i32 0, i32 undef, float %555)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %578 = extractvalue %dx.types.ResRet.f32 %577, 0
  %579 = extractvalue %dx.types.ResRet.f32 %577, 1
  %580 = extractvalue %dx.types.ResRet.f32 %577, 2
  %581 = extractvalue %dx.types.ResRet.f32 %577, 3
  br label %582

; <label>:582                                     ; preds = %576, %570
  %583 = phi float [ %572, %570 ], [ %578, %576 ]
  %584 = phi float [ %573, %570 ], [ %579, %576 ]
  %585 = phi float [ %574, %570 ], [ %580, %576 ]
  %586 = phi float [ %575, %570 ], [ %581, %576 ]
  %587 = extractvalue %dx.types.CBufRet.f32 %561, 3
  %588 = fmul fast float %587, %583
  %589 = extractvalue %dx.types.CBufRet.f32 %556, 2
  %590 = fadd fast float %588, %589
  %591 = fmul fast float %587, %584
  %592 = fadd fast float %591, %589
  %593 = fmul fast float %587, %585
  %594 = fadd fast float %593, %589
  %595 = and i32 %554, 31
  %596 = shl i32 1, %595
  %597 = uitofp i32 %596 to float
  %598 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 402)  ; CBufferLoadLegacy(handle,regIndex)
  %599 = extractvalue %dx.types.CBufRet.f32 %598, 3
  %600 = fdiv fast float 1.000000e+00, %599
  %601 = fmul fast float %600, %597
  %602 = fmul fast float %601, %284
  %603 = fadd fast float %602, %469
  %604 = fcmp fast oeq float %586, 0.000000e+00
  %605 = fcmp fast ogt float %469, %592
  %606 = fcmp fast ogt float %603, %592
  %607 = and i1 %605, %606
  %608 = or i1 %604, %607
  br i1 %608, label %609, label %613, !dx.controlflow.hints !46

; <label>:609                                     ; preds = %582
  %610 = add nsw i32 %554, 1
  %611 = add nsw i32 %485, -1
  %612 = call i32 @dx.op.binary.i32(i32 38, i32 %610, i32 %611)  ; IMin(a,b)
  br label %643

; <label>:613                                     ; preds = %582
  %614 = fcmp fast olt float %469, %594
  %615 = fcmp fast olt float %603, %594
  %616 = and i1 %614, %615
  br i1 %616, label %617, label %621, !dx.controlflow.hints !47

; <label>:617                                     ; preds = %613
  %618 = add nsw i32 %554, 1
  %619 = add nsw i32 %485, -1
  %620 = call i32 @dx.op.binary.i32(i32 38, i32 %618, i32 %619)  ; IMin(a,b)
  br label %643

; <label>:621                                     ; preds = %613
  %622 = fcmp fast olt float %469, %590
  %623 = fcmp fast olt float %603, %590
  %624 = and i1 %622, %623
  br i1 %624, label %625, label %633, !dx.controlflow.hints !48

; <label>:625                                     ; preds = %621
  %626 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 406)  ; CBufferLoadLegacy(handle,regIndex)
  %627 = extractvalue %dx.types.CBufRet.f32 %626, 3
  %628 = extractvalue %dx.types.CBufRet.f32 %561, 2
  %629 = fcmp fast une float %627, %628
  br i1 %629, label %630, label %637, !dx.controlflow.hints !49

; <label>:630                                     ; preds = %625
  %631 = fsub fast float %469, %594
  %632 = call float @dx.op.binary.f32(i32 36, float %601, float %631)  ; FMin(a,b)
  br label %637

; <label>:633                                     ; preds = %621
  %634 = add nsw i32 %554, -1
  %635 = icmp sgt i32 %554, 1
  br i1 %635, label %553, label %636

; <label>:636                                     ; preds = %633
  br label %637

; <label>:637                                     ; preds = %636, %630, %625, %550
  %638 = phi float [ %632, %630 ], [ %601, %625 ], [ 0.000000e+00, %550 ], [ 0.000000e+00, %636 ]
  %639 = phi i32 [ %554, %630 ], [ %554, %625 ], [ %471, %550 ], [ %634, %636 ]
  %640 = add nsw i32 %639, 1
  %641 = add nsw i32 %485, -1
  %642 = call i32 @dx.op.binary.i32(i32 38, i32 %640, i32 %641)  ; IMin(a,b)
  br label %643

; <label>:643                                     ; preds = %637, %617, %609, %548, %544, %489
  %644 = phi float [ %490, %489 ], [ %601, %609 ], [ %601, %617 ], [ %638, %637 ], [ 0x47EFFFFFE0000000, %548 ], [ %545, %544 ]
  %645 = phi i32 [ %371, %489 ], [ %371, %609 ], [ %371, %617 ], [ %371, %637 ], [ 0, %548 ], [ %371, %544 ]
  %646 = phi i32 [ %471, %489 ], [ %612, %609 ], [ %620, %617 ], [ %642, %637 ], [ %471, %548 ], [ %471, %544 ]
  %647 = icmp ne i32 %645, 0
  %648 = zext i1 %647 to i32
  %649 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %650 = extractvalue %dx.types.CBufRet.f32 %649, 2
  %651 = call float @dx.op.binary.f32(i32 35, float %644, float %650)  ; FMax(a,b)
  %652 = call float @dx.op.binary.f32(i32 36, float 0x47EFFFFFE0000000, float %651)  ; FMin(a,b)
  br label %653

; <label>:653                                     ; preds = %643, %461
  %654 = phi i32 [ %648, %643 ], [ 0, %461 ]
  %655 = phi float [ %652, %643 ], [ 0x47EFFFFFE0000000, %461 ]
  %656 = phi i32 [ %646, %643 ], [ %471, %461 ]
  %657 = icmp eq i32 %435, 0
  br i1 %657, label %714, label %658, !dx.controlflow.hints !50

; <label>:658                                     ; preds = %653
  %659 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 35)  ; CBufferLoadLegacy(handle,regIndex)
  %660 = extractvalue %dx.types.CBufRet.f32 %659, 0
  %661 = extractvalue %dx.types.CBufRet.f32 %659, 1
  %662 = extractvalue %dx.types.CBufRet.f32 %659, 2
  %663 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 31)  ; CBufferLoadLegacy(handle,regIndex)
  %664 = extractvalue %dx.types.CBufRet.f32 %663, 0
  %665 = extractvalue %dx.types.CBufRet.f32 %663, 1
  %666 = extractvalue %dx.types.CBufRet.f32 %663, 2
  %667 = fsub fast float %467, %664
  %668 = fsub fast float %468, %665
  %669 = fsub fast float %469, %666
  %670 = fmul fast float %667, %660
  %671 = fmul fast float %668, %661
  %672 = fmul fast float %669, %662
  %673 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %674 = extractvalue %dx.types.CBufRet.i32 %673, 3
  %675 = icmp eq i32 %674, 0
  br i1 %675, label %679, label %676, !dx.controlflow.hints !51

; <label>:676                                     ; preds = %658
  %677 = call float @dx.op.unary.f32(i32 22, float %670)  ; Frc(value)
  %678 = call float @dx.op.unary.f32(i32 22, float %671)  ; Frc(value)
  br label %679

; <label>:679                                     ; preds = %676, %658
  %680 = phi float [ %677, %676 ], [ %670, %658 ]
  %681 = phi float [ %678, %676 ], [ %671, %658 ]
  %682 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %16, float %680, float %681, float %672, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %683 = extractvalue %dx.types.ResRet.f32 %682, 0
  %684 = fmul fast float %683, 2.000000e+00
  %685 = fadd fast float %684, -1.000000e+00
  %686 = extractvalue %dx.types.CBufRet.f32 %659, 3
  %687 = fmul fast float %685, %686
  %688 = fcmp fast olt float %687, 0.000000e+00
  %689 = fcmp fast oge float %672, 0.000000e+00
  %690 = fcmp fast ole float %672, 1.000000e+00
  br i1 %675, label %693, label %691, !dx.controlflow.hints !52

; <label>:691                                     ; preds = %679
  %692 = and i1 %689, %690
  br label %703

; <label>:693                                     ; preds = %679
  %694 = fcmp fast oge float %670, 0.000000e+00
  %695 = fcmp fast oge float %671, 0.000000e+00
  %696 = and i1 %694, %695
  %697 = and i1 %689, %696
  %698 = fcmp fast ole float %670, 1.000000e+00
  %699 = fcmp fast ole float %671, 1.000000e+00
  %700 = and i1 %698, %699
  %701 = and i1 %690, %700
  %702 = and i1 %697, %701
  br label %703

; <label>:703                                     ; preds = %693, %691
  %704 = phi i1 [ %692, %691 ], [ %702, %693 ]
  %705 = and i1 %688, %704
  %706 = call float @dx.op.unary.f32(i32 6, float %687)  ; FAbs(value)
  %707 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %708 = extractvalue %dx.types.CBufRet.f32 %707, 1
  %709 = extractvalue %dx.types.CBufRet.f32 %707, 0
  %710 = call float @dx.op.binary.f32(i32 35, float %706, float %709)  ; FMax(a,b)
  %711 = select i1 %705, float %708, float %710
  %712 = zext i1 %705 to i32
  %713 = call float @dx.op.binary.f32(i32 36, float %655, float %711)  ; FMin(a,b)
  br label %714

; <label>:714                                     ; preds = %703, %653
  %715 = phi i32 [ %712, %703 ], [ 0, %653 ]
  %716 = phi float [ %713, %703 ], [ %655, %653 ]
  %717 = extractvalue %dx.types.CBufRet.f32 %480, 2
  %718 = fmul fast float %717, %470
  %719 = call float @dx.op.unary.f32(i32 23, float %718)  ; Log(value)
  %720 = fmul fast float %719, 0x3FE62E4300000000
  %721 = call float @dx.op.binary.f32(i32 35, float %720, float 1.000000e+00)  ; FMax(a,b)
  %722 = fmul fast float %721, 0x47EFFFFFE0000000
  %723 = call float @dx.op.binary.f32(i32 36, float %722, float %716)  ; FMin(a,b)
  %724 = call float @dx.op.binary.f32(i32 35, float %723, float %481)  ; FMax(a,b)
  %725 = fsub fast float %438, %470
  %726 = fadd fast float %725, 0x3F1A36E2E0000000
  %727 = call float @dx.op.binary.f32(i32 36, float %726, float %724)  ; FMin(a,b)
  %728 = icmp eq i32 %654, 0
  br i1 %728, label %834, label %729, !dx.controlflow.hints !53

; <label>:729                                     ; preds = %714
  %730 = fcmp fast olt float %726, %724
  %731 = fmul fast float %284, %227
  %732 = fmul fast float %731, %727
  %733 = fadd fast float %732, %469
  %734 = fmul fast float %284, %228
  %735 = fmul fast float %734, %727
  %736 = fadd fast float %735, %469
  %737 = fmul fast float %284, %229
  %738 = fmul fast float %737, %727
  %739 = fadd fast float %738, %469
  br i1 %730, label %740, label %745, !dx.controlflow.hints !54

; <label>:740                                     ; preds = %729
  %741 = fmul fast float %727, %282
  %742 = fmul fast float %727, %283
  %743 = fadd fast float %741, %467
  %744 = fadd fast float %742, %468
  br label %745

; <label>:745                                     ; preds = %740, %729
  %746 = phi float [ %743, %740 ], [ %467, %729 ]
  %747 = phi float [ %744, %740 ], [ %468, %729 ]
  %748 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 401)  ; CBufferLoadLegacy(handle,regIndex)
  %749 = extractvalue %dx.types.CBufRet.f32 %748, 0
  %750 = extractvalue %dx.types.CBufRet.f32 %748, 1
  %751 = fsub fast float %746, %749
  %752 = fsub fast float %747, %750
  %753 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 403)  ; CBufferLoadLegacy(handle,regIndex)
  %754 = extractvalue %dx.types.CBufRet.f32 %753, 0
  %755 = extractvalue %dx.types.CBufRet.f32 %753, 1
  %756 = fmul fast float %751, %754
  %757 = fmul fast float %752, %755
  %758 = fsub fast float 1.000000e+00, %757
  %759 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %760 = extractvalue %dx.types.CBufRet.i32 %759, 3
  %761 = icmp eq i32 %760, 0
  br i1 %761, label %768, label %762, !dx.controlflow.hints !45

; <label>:762                                     ; preds = %745
  %763 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %17, float %756, float %758, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %764 = extractvalue %dx.types.ResRet.f32 %763, 0
  %765 = extractvalue %dx.types.ResRet.f32 %763, 1
  %766 = extractvalue %dx.types.ResRet.f32 %763, 2
  %767 = extractvalue %dx.types.ResRet.f32 %763, 3
  br label %774

; <label>:768                                     ; preds = %745
  %769 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %18, float %756, float %758, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %770 = extractvalue %dx.types.ResRet.f32 %769, 0
  %771 = extractvalue %dx.types.ResRet.f32 %769, 1
  %772 = extractvalue %dx.types.ResRet.f32 %769, 2
  %773 = extractvalue %dx.types.ResRet.f32 %769, 3
  br label %774

; <label>:774                                     ; preds = %768, %762
  %775 = phi float [ %764, %762 ], [ %770, %768 ]
  %776 = phi float [ %765, %762 ], [ %771, %768 ]
  %777 = phi float [ %766, %762 ], [ %772, %768 ]
  %778 = phi float [ %767, %762 ], [ %773, %768 ]
  %779 = extractvalue %dx.types.CBufRet.f32 %753, 3
  %780 = fmul fast float %779, %776
  %781 = fmul fast float %780, %775
  %782 = fsub fast float %780, %781
  %783 = fcmp fast ole float %782, 0.000000e+00
  %784 = extractvalue %dx.types.CBufRet.f32 %748, 2
  %785 = fadd fast float %781, %784
  %786 = fmul fast float %779, %777
  %787 = fadd fast float %786, %784
  %788 = fdiv fast float 1.000000e+00, %782
  %789 = select i1 %783, float 1.000000e+06, float %788
  %790 = fsub fast float %733, %785
  %791 = fmul fast float %789, %790
  %792 = call float @dx.op.unary.f32(i32 7, float %791)  ; Saturate(value)
  %793 = extractvalue %dx.types.CBufRet.f32 %753, 2
  %794 = fmul fast float %793, %792
  %795 = fsub fast float %793, %794
  %796 = fcmp fast olt float %733, %787
  %797 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 406)  ; CBufferLoadLegacy(handle,regIndex)
  %798 = extractvalue %dx.types.CBufRet.f32 %797, 3
  %799 = select i1 %796, float %798, float 1.000000e+00
  %800 = fmul fast float %795, %799
  %801 = fsub fast float %736, %785
  %802 = fmul fast float %789, %801
  %803 = call float @dx.op.unary.f32(i32 7, float %802)  ; Saturate(value)
  %804 = fmul fast float %793, %803
  %805 = fsub fast float %793, %804
  %806 = fcmp fast olt float %736, %787
  %807 = select i1 %806, float %798, float 1.000000e+00
  %808 = fmul fast float %805, %807
  %809 = fadd fast float %808, %800
  %810 = fsub fast float %739, %785
  %811 = fmul fast float %789, %810
  %812 = call float @dx.op.unary.f32(i32 7, float %811)  ; Saturate(value)
  %813 = fmul fast float %793, %812
  %814 = fsub fast float %793, %813
  %815 = fcmp fast olt float %739, %787
  %816 = select i1 %815, float %798, float 1.000000e+00
  %817 = fmul fast float %814, %816
  %818 = fadd fast float %809, %817
  %819 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 418)  ; CBufferLoadLegacy(handle,regIndex)
  %820 = extractvalue %dx.types.CBufRet.f32 %819, 2
  %821 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 402)  ; CBufferLoadLegacy(handle,regIndex)
  %822 = extractvalue %dx.types.CBufRet.f32 %821, 0
  %823 = extractvalue %dx.types.CBufRet.f32 %821, 1
  %824 = extractvalue %dx.types.CBufRet.f32 %821, 2
  %825 = fmul fast float %727, 0x3FD5555560000000
  %826 = fmul fast float %825, %778
  %827 = fmul fast float %826, %820
  %828 = fmul fast float %827, %818
  %829 = extractvalue %dx.types.CBufRet.f32 %797, 0
  %830 = fmul fast float %828, %822
  %831 = fmul fast float %828, %823
  %832 = fmul fast float %828, %824
  %833 = fmul fast float %828, %829
  br label %834

; <label>:834                                     ; preds = %774, %714
  %835 = phi float [ %828, %774 ], [ 0.000000e+00, %714 ]
  %836 = phi float [ %833, %774 ], [ 0.000000e+00, %714 ]
  %837 = phi float [ %830, %774 ], [ 0.000000e+00, %714 ]
  %838 = phi float [ %831, %774 ], [ 0.000000e+00, %714 ]
  %839 = phi float [ %832, %774 ], [ 0.000000e+00, %714 ]
  %840 = icmp eq i32 %715, 0
  br i1 %840, label %1035, label %841, !dx.controlflow.hints !55

; <label>:841                                     ; preds = %834
  %842 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %843 = extractvalue %dx.types.CBufRet.f32 %842, 3
  %844 = fmul fast float %843, %470
  %845 = fcmp fast oeq float %844, 0.000000e+00
  br i1 %845, label %860, label %846, !dx.controlflow.hints !56

; <label>:846                                     ; preds = %841
  %847 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 41)  ; CBufferLoadLegacy(handle,regIndex)
  %848 = extractvalue %dx.types.CBufRet.f32 %847, 3
  %849 = fmul fast float %848, %844
  %850 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 33)  ; CBufferLoadLegacy(handle,regIndex)
  %851 = extractvalue %dx.types.CBufRet.f32 %850, 0
  %852 = extractvalue %dx.types.CBufRet.f32 %850, 1
  %853 = extractvalue %dx.types.CBufRet.f32 %850, 2
  %854 = fmul fast float %851, %849
  %855 = fmul fast float %852, %849
  %856 = fmul fast float %853, %849
  %857 = call float @dx.op.unary.f32(i32 23, float %854)  ; Log(value)
  %858 = call float @dx.op.unary.f32(i32 23, float %855)  ; Log(value)
  %859 = call float @dx.op.unary.f32(i32 23, float %856)  ; Log(value)
  br label %860

; <label>:860                                     ; preds = %846, %841
  %861 = phi float [ %857, %846 ], [ 0.000000e+00, %841 ]
  %862 = phi float [ %858, %846 ], [ 0.000000e+00, %841 ]
  %863 = phi float [ %859, %846 ], [ 0.000000e+00, %841 ]
  %864 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 35)  ; CBufferLoadLegacy(handle,regIndex)
  %865 = extractvalue %dx.types.CBufRet.f32 %864, 0
  %866 = extractvalue %dx.types.CBufRet.f32 %864, 1
  %867 = extractvalue %dx.types.CBufRet.f32 %864, 2
  %868 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 31)  ; CBufferLoadLegacy(handle,regIndex)
  %869 = extractvalue %dx.types.CBufRet.f32 %868, 0
  %870 = extractvalue %dx.types.CBufRet.f32 %868, 1
  %871 = extractvalue %dx.types.CBufRet.f32 %868, 2
  %872 = fsub fast float %467, %869
  %873 = fsub fast float %468, %870
  %874 = fsub fast float %469, %871
  %875 = fmul fast float %872, %865
  %876 = fmul fast float %873, %866
  %877 = fmul fast float %874, %867
  %878 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 29)  ; CBufferLoadLegacy(handle,regIndex)
  %879 = extractvalue %dx.types.CBufRet.i32 %878, 0
  %880 = extractvalue %dx.types.CBufRet.i32 %878, 1
  %881 = uitofp i32 %879 to float
  %882 = uitofp i32 %880 to float
  %883 = fmul fast float %875, %881
  %884 = fmul fast float %876, %882
  %885 = fadd fast float %883, 5.000000e-01
  %886 = fadd fast float %884, 5.000000e-01
  %887 = call float @dx.op.unary.f32(i32 22, float %885)  ; Frc(value)
  %888 = call float @dx.op.unary.f32(i32 22, float %886)  ; Frc(value)
  %889 = call float @dx.op.unary.f32(i32 27, float %885)  ; Round_ni(value)
  %890 = call float @dx.op.unary.f32(i32 27, float %886)  ; Round_ni(value)
  %891 = fadd fast float %889, 1.000000e+00
  %892 = fadd fast float %890, 1.000000e+00
  %893 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 30)  ; CBufferLoadLegacy(handle,regIndex)
  %894 = extractvalue %dx.types.CBufRet.f32 %893, 0
  %895 = extractvalue %dx.types.CBufRet.f32 %893, 1
  %896 = fmul fast float %894, %891
  %897 = fmul fast float %895, %892
  %898 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %10, %dx.types.Handle %17, float %896, float %897, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %899 = extractvalue %dx.types.ResRet.f32 %898, 0
  %900 = extractvalue %dx.types.ResRet.f32 %898, 1
  %901 = extractvalue %dx.types.ResRet.f32 %898, 2
  %902 = extractvalue %dx.types.ResRet.f32 %898, 3
  %903 = extractvalue %dx.types.CBufRet.i32 %878, 2
  %904 = extractvalue %dx.types.CBufRet.f32 %893, 2
  %905 = uitofp i32 %903 to float
  %906 = fadd fast float %905, -1.000000e+00
  %907 = fmul fast float %906, %899
  %908 = fmul fast float %906, %900
  %909 = fmul fast float %906, %901
  %910 = fmul fast float %906, %902
  %911 = fadd fast float %907, 5.000000e-01
  %912 = fadd fast float %908, 5.000000e-01
  %913 = fadd fast float %909, 5.000000e-01
  %914 = fadd fast float %910, 5.000000e-01
  %915 = fptoui float %911 to i32
  %916 = fptoui float %912 to i32
  %917 = fptoui float %913 to i32
  %918 = fptoui float %914 to i32
  %919 = uitofp i32 %915 to float
  %920 = uitofp i32 %916 to float
  %921 = uitofp i32 %917 to float
  %922 = uitofp i32 %918 to float
  %923 = fadd fast float %919, 5.000000e-01
  %924 = fadd fast float %920, 5.000000e-01
  %925 = fadd fast float %921, 5.000000e-01
  %926 = fadd fast float %922, 5.000000e-01
  %927 = fmul fast float %923, %904
  %928 = fmul fast float %924, %904
  %929 = fmul fast float %925, %904
  %930 = fmul fast float %926, %904
  %931 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %18, float %927, float %877, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %932 = extractvalue %dx.types.ResRet.f32 %931, 0
  %933 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %18, float %928, float %877, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %934 = extractvalue %dx.types.ResRet.f32 %933, 0
  %935 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %18, float %929, float %877, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %936 = extractvalue %dx.types.ResRet.f32 %935, 0
  %937 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %18, float %930, float %877, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %938 = extractvalue %dx.types.ResRet.f32 %937, 0
  %939 = fsub fast float %936, %938
  %940 = fmul fast float %939, %887
  %941 = fadd fast float %940, %938
  %942 = fsub fast float %934, %932
  %943 = fmul fast float %942, %887
  %944 = fadd fast float %943, %932
  %945 = fsub fast float %944, %941
  %946 = fmul fast float %945, %888
  %947 = fadd fast float %946, %941
  %948 = fcmp fast ogt float %947, 0.000000e+00
  br i1 %948, label %949, label %1017, !dx.controlflow.hints !57

; <label>:949                                     ; preds = %860
  %950 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 33)  ; CBufferLoadLegacy(handle,regIndex)
  %951 = extractvalue %dx.types.CBufRet.f32 %950, 0
  %952 = extractvalue %dx.types.CBufRet.f32 %950, 1
  %953 = extractvalue %dx.types.CBufRet.f32 %950, 2
  %954 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 41)  ; CBufferLoadLegacy(handle,regIndex)
  %955 = extractvalue %dx.types.CBufRet.f32 %954, 0
  %956 = extractvalue %dx.types.CBufRet.f32 %954, 1
  %957 = extractvalue %dx.types.CBufRet.f32 %954, 2
  %958 = fmul fast float %873, %865
  %959 = fmul fast float %874, %865
  %960 = fadd fast float %875, %955
  %961 = fadd fast float %958, %956
  %962 = fadd fast float %959, %957
  %963 = fmul fast float %960, %951
  %964 = fmul fast float %961, %951
  %965 = fmul fast float %962, %951
  %966 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %15, float %963, float %964, float %965, float undef, i32 0, i32 0, i32 0, float %861)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %967 = extractvalue %dx.types.ResRet.f32 %966, 0
  %968 = fmul fast float %960, %952
  %969 = fmul fast float %961, %952
  %970 = fmul fast float %962, %952
  %971 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %15, float %968, float %969, float %970, float undef, i32 0, i32 0, i32 0, float %862)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %972 = extractvalue %dx.types.ResRet.f32 %971, 1
  %973 = fmul fast float %960, %953
  %974 = fmul fast float %961, %953
  %975 = fmul fast float %962, %953
  %976 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %15, float %973, float %974, float %975, float undef, i32 0, i32 0, i32 0, float %863)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %977 = extractvalue %dx.types.ResRet.f32 %976, 2
  %978 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 34)  ; CBufferLoadLegacy(handle,regIndex)
  %979 = extractvalue %dx.types.CBufRet.f32 %978, 1
  %980 = fmul fast float %972, %967
  %981 = fmul fast float %980, %977
  %982 = call float @dx.op.unary.f32(i32 23, float %981)  ; Log(value)
  %983 = fmul fast float %982, %979
  %984 = call float @dx.op.unary.f32(i32 21, float %983)  ; Exp(value)
  %985 = extractvalue %dx.types.CBufRet.f32 %978, 2
  %986 = fmul fast float %947, %947
  %987 = fmul fast float %986, %984
  %988 = fmul fast float %987, %985
  %989 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 32)  ; CBufferLoadLegacy(handle,regIndex)
  %990 = extractvalue %dx.types.CBufRet.f32 %989, 3
  %991 = fmul fast float %990, %988
  %992 = bitcast float %991 to i32
  %993 = sitofp i32 %992 to float
  %994 = fptosi float %993 to i32
  %995 = bitcast i32 %994 to float
  %996 = fsub fast float 1.000000e+00, %988
  %997 = bitcast float %996 to i32
  %998 = sitofp i32 %997 to float
  %999 = fptosi float %998 to i32
  %1000 = bitcast i32 %999 to float
  %1001 = fadd fast float %995, %1000
  %1002 = bitcast float %1001 to i32
  %1003 = sub nsw i32 2129859010, %1002
  %1004 = bitcast i32 %1003 to float
  %1005 = fmul fast float %1004, %995
  %1006 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %1007 = extractvalue %dx.types.CBufRet.f32 %1006, 2
  %1008 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 37)  ; CBufferLoadLegacy(handle,regIndex)
  %1009 = extractvalue %dx.types.CBufRet.f32 %1008, 0
  %1010 = fmul fast float %1005, %1009
  %1011 = fadd fast float %1010, 1.000000e+00
  %1012 = bitcast float %1011 to i32
  %1013 = sub nsw i32 2129859010, %1012
  %1014 = bitcast i32 %1013 to float
  %1015 = fmul fast float %1005, %1007
  %1016 = fmul fast float %1015, %1014
  br label %1017

; <label>:1017                                    ; preds = %949, %860
  %1018 = phi float [ %1016, %949 ], [ %947, %860 ]
  %1019 = fmul fast float %1018, %727
  %1020 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 36)  ; CBufferLoadLegacy(handle,regIndex)
  %1021 = extractvalue %dx.types.CBufRet.f32 %1020, 0
  %1022 = extractvalue %dx.types.CBufRet.f32 %1020, 1
  %1023 = extractvalue %dx.types.CBufRet.f32 %1020, 2
  %1024 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 37)  ; CBufferLoadLegacy(handle,regIndex)
  %1025 = extractvalue %dx.types.CBufRet.f32 %1024, 1
  %1026 = fmul fast float %1021, %1019
  %1027 = fmul fast float %1022, %1019
  %1028 = fmul fast float %1023, %1019
  %1029 = fadd fast float %1026, %837
  %1030 = fadd fast float %1027, %838
  %1031 = fadd fast float %1028, %839
  %1032 = fmul fast float %1025, %1019
  %1033 = fadd fast float %1032, %836
  %1034 = fadd fast float %1019, %835
  br label %1035

; <label>:1035                                    ; preds = %1017, %834
  %1036 = phi float [ %1034, %1017 ], [ %835, %834 ]
  %1037 = phi float [ %1033, %1017 ], [ %836, %834 ]
  %1038 = phi float [ %1029, %1017 ], [ %837, %834 ]
  %1039 = phi float [ %1030, %1017 ], [ %838, %834 ]
  %1040 = phi float [ %1031, %1017 ], [ %839, %834 ]
  %1041 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %1042 = extractvalue %dx.types.CBufRet.f32 %1041, 1
  %1043 = fcmp fast ogt float %1036, %1042
  br i1 %1043, label %1044, label %1050, !dx.controlflow.hints !58

; <label>:1044                                    ; preds = %1035
  %1045 = fdiv fast float 1.000000e+00, %1036
  %1046 = fmul fast float %1045, %1038
  %1047 = fmul fast float %1045, %1039
  %1048 = fmul fast float %1045, %1040
  %1049 = fmul fast float %1045, %1037
  br label %1050

; <label>:1050                                    ; preds = %1044, %1035
  %1051 = phi float [ %1049, %1044 ], [ %1037, %1035 ]
  %1052 = phi float [ %1046, %1044 ], [ %1038, %1035 ]
  %1053 = phi float [ %1047, %1044 ], [ %1039, %1035 ]
  %1054 = phi float [ %1048, %1044 ], [ %1040, %1035 ]
  br i1 %1043, label %1057, label %1055, !dx.controlflow.hints !59

; <label>:1055                                    ; preds = %1050
  %1056 = fadd fast float %727, %470
  br label %1568

; <label>:1057                                    ; preds = %1050
  %1058 = fmul fast float %1036, 0xBFF7154760000000
  %1059 = call float @dx.op.unary.f32(i32 21, float %1058)  ; Exp(value)
  %1060 = call float @dx.op.unary.f32(i32 7, float %1059)  ; Saturate(value)
  %1061 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %1062 = extractvalue %dx.types.CBufRet.f32 %1061, 3
  %1063 = fcmp fast une float %1062, 0.000000e+00
  %1064 = extractvalue %dx.types.CBufRet.f32 %1061, 0
  %1065 = extractvalue %dx.types.CBufRet.f32 %1061, 1
  %1066 = extractvalue %dx.types.CBufRet.f32 %1061, 2
  br i1 %1063, label %1067, label %1089, !dx.controlflow.hints !60

; <label>:1067                                    ; preds = %1057
  %1068 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %1069 = extractvalue %dx.types.CBufRet.f32 %1068, 0
  %1070 = extractvalue %dx.types.CBufRet.f32 %1068, 1
  %1071 = extractvalue %dx.types.CBufRet.f32 %1068, 2
  %1072 = call float @dx.op.dot3.f32(i32 55, float %1064, float %1065, float %1066, float %282, float %283, float %284)  ; Dot3(ax,ay,az,bx,by,bz)
  %1073 = fcmp fast ogt float %1051, 0.000000e+00
  %1074 = select i1 %1073, float 1.000000e+00, float -1.000000e+00
  %1075 = fmul fast float %1074, 5.000000e-01
  %1076 = fmul fast float %1075, %1072
  %1077 = fmul fast float %1074, %1051
  %1078 = fadd fast float %1076, 4.921875e-01
  %1079 = fadd fast float %1077, -3.125000e-02
  %1080 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %18, float %1078, float 0x3FB25F3060000000, float %1079, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1081 = extractvalue %dx.types.ResRet.f32 %1080, 0
  %1082 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 398)  ; CBufferLoadLegacy(handle,regIndex)
  %1083 = extractvalue %dx.types.CBufRet.f32 %1082, 0
  %1084 = fmul fast float %1081, 0x400921FB60000000
  %1085 = fmul fast float %1084, %1083
  %1086 = fmul fast float %1085, %1069
  %1087 = fmul fast float %1085, %1070
  %1088 = fmul fast float %1085, %1071
  br label %1089

; <label>:1089                                    ; preds = %1067, %1057
  %1090 = phi float [ %1086, %1067 ], [ 0.000000e+00, %1057 ]
  %1091 = phi float [ %1087, %1067 ], [ 0.000000e+00, %1057 ]
  %1092 = phi float [ %1088, %1067 ], [ 0.000000e+00, %1057 ]
  %1093 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 427)  ; CBufferLoadLegacy(handle,regIndex)
  %1094 = extractvalue %dx.types.CBufRet.f32 %1093, 0
  %1095 = fmul fast float %1094, %1064
  %1096 = fmul fast float %1094, %1065
  %1097 = fmul fast float %1094, %1066
  %1098 = fadd fast float %1095, %467
  %1099 = fsub fast float -0.000000e+00, %1098
  %1100 = fadd fast float %1096, %468
  %1101 = fsub fast float -0.000000e+00, %1100
  %1102 = fadd fast float %1097, %469
  br i1 %482, label %1177, label %1103, !dx.controlflow.hints !41

; <label>:1103                                    ; preds = %1089
  %1104 = extractvalue %dx.types.CBufRet.f32 %1093, 1
  %1105 = fcmp fast ogt float %1104, %1094
  br i1 %1105, label %1106, label %1108, !dx.controlflow.hints !42

; <label>:1106                                    ; preds = %1103
  %1107 = fsub fast float %1104, %1094
  br label %1168

; <label>:1108                                    ; preds = %1103
  %1109 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %1110 = extractvalue %dx.types.CBufRet.i32 %1109, 3
  %1111 = icmp eq i32 %1110, 0
  %1112 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 401)  ; CBufferLoadLegacy(handle,regIndex)
  %1113 = extractvalue %dx.types.CBufRet.f32 %1112, 2
  %1114 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %1115 = extractvalue %dx.types.CBufRet.f32 %1114, 2
  %1116 = fsub fast float %1113, %1102
  %1117 = fadd fast float %1116, %1115
  %1118 = fsub fast float 0xC7EFFFFFE0000000, %1102
  br i1 %1111, label %1128, label %1119, !dx.controlflow.hints !35

; <label>:1119                                    ; preds = %1108
  %1120 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %1099, float %1101, float %1117)  ; Dot3(ax,ay,az,bx,by,bz)
  %1121 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %1064, float %1065, float %1066)  ; Dot3(ax,ay,az,bx,by,bz)
  %1122 = fdiv fast float 1.000000e+00, %1121
  %1123 = fmul fast float %1122, %1120
  %1124 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %1099, float %1101, float %1118)  ; Dot3(ax,ay,az,bx,by,bz)
  %1125 = fmul fast float %1122, %1124
  %1126 = call float @dx.op.binary.f32(i32 36, float %1123, float %1125)  ; FMin(a,b)
  %1127 = call float @dx.op.binary.f32(i32 35, float %1123, float %1125)  ; FMax(a,b)
  br label %1161

; <label>:1128                                    ; preds = %1108
  %1129 = extractvalue %dx.types.CBufRet.f32 %1112, 0
  %1130 = extractvalue %dx.types.CBufRet.f32 %1112, 1
  %1131 = extractvalue %dx.types.CBufRet.f32 %1114, 0
  %1132 = extractvalue %dx.types.CBufRet.f32 %1114, 1
  %1133 = fdiv fast float 1.000000e+00, %1064
  %1134 = fdiv fast float 1.000000e+00, %1065
  %1135 = fdiv fast float 1.000000e+00, %1066
  %1136 = fsub fast float %1129, %1098
  %1137 = fmul fast float %1133, %1136
  %1138 = fadd fast float %1136, %1131
  %1139 = fmul fast float %1138, %1133
  %1140 = call float @dx.op.binary.f32(i32 36, float %1137, float %1139)  ; FMin(a,b)
  %1141 = call float @dx.op.binary.f32(i32 35, float %1137, float %1139)  ; FMax(a,b)
  %1142 = fsub fast float %1130, %1100
  %1143 = fmul fast float %1134, %1142
  %1144 = fadd fast float %1142, %1132
  %1145 = fmul fast float %1144, %1134
  %1146 = call float @dx.op.binary.f32(i32 36, float %1143, float %1145)  ; FMin(a,b)
  %1147 = call float @dx.op.binary.f32(i32 35, float %1140, float %1146)  ; FMax(a,b)
  %1148 = call float @dx.op.binary.f32(i32 35, float %1143, float %1145)  ; FMax(a,b)
  %1149 = call float @dx.op.binary.f32(i32 36, float %1141, float %1148)  ; FMin(a,b)
  %1150 = fmul fast float %1135, %1118
  %1151 = fmul fast float %1135, %1117
  %1152 = call float @dx.op.binary.f32(i32 36, float %1150, float %1151)  ; FMin(a,b)
  %1153 = call float @dx.op.binary.f32(i32 35, float %1147, float %1152)  ; FMax(a,b)
  %1154 = call float @dx.op.binary.f32(i32 35, float %1150, float %1151)  ; FMax(a,b)
  %1155 = call float @dx.op.binary.f32(i32 36, float %1149, float %1154)  ; FMin(a,b)
  %1156 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1153)  ; FMax(a,b)
  %1157 = fcmp fast ult float %1155, %1156
  br i1 %1157, label %1161, label %1158, !dx.controlflow.hints !36

; <label>:1158                                    ; preds = %1128
  %1159 = call float @dx.op.binary.f32(i32 36, float %1153, float %1155)  ; FMin(a,b)
  %1160 = call float @dx.op.binary.f32(i32 35, float %1153, float %1155)  ; FMax(a,b)
  br label %1161

; <label>:1161                                    ; preds = %1158, %1128, %1119
  %1162 = phi float [ %1126, %1119 ], [ %1159, %1158 ], [ 0.000000e+00, %1128 ]
  %1163 = phi float [ %1127, %1119 ], [ %1160, %1158 ], [ 0.000000e+00, %1128 ]
  %1164 = fcmp fast ogt float %1162, 0.000000e+00
  br i1 %1164, label %1168, label %1165, !dx.controlflow.hints !43

; <label>:1165                                    ; preds = %1161
  %1166 = fcmp fast ugt float %1163, 0.000000e+00
  br i1 %1166, label %1167, label %1168, !dx.controlflow.hints !44

; <label>:1167                                    ; preds = %1165
  br label %1168

; <label>:1168                                    ; preds = %1167, %1165, %1161, %1106
  %1169 = phi float [ %1107, %1106 ], [ 0.000000e+00, %1167 ], [ 0x47EFFFFFE0000000, %1165 ], [ %1162, %1161 ]
  %1170 = phi i32 [ %371, %1106 ], [ %371, %1167 ], [ 0, %1165 ], [ %371, %1161 ]
  %1171 = icmp ne i32 %1170, 0
  %1172 = zext i1 %1171 to i32
  %1173 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %1174 = extractvalue %dx.types.CBufRet.f32 %1173, 2
  %1175 = call float @dx.op.binary.f32(i32 35, float %1169, float %1174)  ; FMax(a,b)
  %1176 = call float @dx.op.binary.f32(i32 36, float 0x47EFFFFFE0000000, float %1175)  ; FMin(a,b)
  br label %1177

; <label>:1177                                    ; preds = %1168, %1089
  %1178 = phi float [ %1176, %1168 ], [ 0x47EFFFFFE0000000, %1089 ]
  %1179 = phi i32 [ %1172, %1168 ], [ 0, %1089 ]
  br i1 %657, label %1236, label %1180, !dx.controlflow.hints !50

; <label>:1180                                    ; preds = %1177
  %1181 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 35)  ; CBufferLoadLegacy(handle,regIndex)
  %1182 = extractvalue %dx.types.CBufRet.f32 %1181, 0
  %1183 = extractvalue %dx.types.CBufRet.f32 %1181, 1
  %1184 = extractvalue %dx.types.CBufRet.f32 %1181, 2
  %1185 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 31)  ; CBufferLoadLegacy(handle,regIndex)
  %1186 = extractvalue %dx.types.CBufRet.f32 %1185, 0
  %1187 = extractvalue %dx.types.CBufRet.f32 %1185, 1
  %1188 = extractvalue %dx.types.CBufRet.f32 %1185, 2
  %1189 = fsub fast float %1098, %1186
  %1190 = fsub fast float %1100, %1187
  %1191 = fsub fast float %1102, %1188
  %1192 = fmul fast float %1189, %1182
  %1193 = fmul fast float %1190, %1183
  %1194 = fmul fast float %1191, %1184
  %1195 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %1196 = extractvalue %dx.types.CBufRet.i32 %1195, 3
  %1197 = icmp eq i32 %1196, 0
  br i1 %1197, label %1201, label %1198, !dx.controlflow.hints !51

; <label>:1198                                    ; preds = %1180
  %1199 = call float @dx.op.unary.f32(i32 22, float %1192)  ; Frc(value)
  %1200 = call float @dx.op.unary.f32(i32 22, float %1193)  ; Frc(value)
  br label %1201

; <label>:1201                                    ; preds = %1198, %1180
  %1202 = phi float [ %1199, %1198 ], [ %1192, %1180 ]
  %1203 = phi float [ %1200, %1198 ], [ %1193, %1180 ]
  %1204 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %16, float %1202, float %1203, float %1194, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1205 = extractvalue %dx.types.ResRet.f32 %1204, 0
  %1206 = fmul fast float %1205, 2.000000e+00
  %1207 = fadd fast float %1206, -1.000000e+00
  %1208 = extractvalue %dx.types.CBufRet.f32 %1181, 3
  %1209 = fmul fast float %1207, %1208
  %1210 = fcmp fast olt float %1209, 0.000000e+00
  %1211 = fcmp fast oge float %1194, 0.000000e+00
  %1212 = fcmp fast ole float %1194, 1.000000e+00
  br i1 %1197, label %1215, label %1213, !dx.controlflow.hints !52

; <label>:1213                                    ; preds = %1201
  %1214 = and i1 %1211, %1212
  br label %1225

; <label>:1215                                    ; preds = %1201
  %1216 = fcmp fast oge float %1192, 0.000000e+00
  %1217 = fcmp fast oge float %1193, 0.000000e+00
  %1218 = and i1 %1216, %1217
  %1219 = and i1 %1211, %1218
  %1220 = fcmp fast ole float %1192, 1.000000e+00
  %1221 = fcmp fast ole float %1193, 1.000000e+00
  %1222 = and i1 %1220, %1221
  %1223 = and i1 %1212, %1222
  %1224 = and i1 %1219, %1223
  br label %1225

; <label>:1225                                    ; preds = %1215, %1213
  %1226 = phi i1 [ %1214, %1213 ], [ %1224, %1215 ]
  %1227 = and i1 %1210, %1226
  %1228 = call float @dx.op.unary.f32(i32 6, float %1209)  ; FAbs(value)
  %1229 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %1230 = extractvalue %dx.types.CBufRet.f32 %1229, 1
  %1231 = extractvalue %dx.types.CBufRet.f32 %1229, 0
  %1232 = call float @dx.op.binary.f32(i32 35, float %1228, float %1231)  ; FMax(a,b)
  %1233 = select i1 %1227, float %1230, float %1232
  %1234 = zext i1 %1227 to i32
  %1235 = call float @dx.op.binary.f32(i32 36, float %1178, float %1233)  ; FMin(a,b)
  br label %1236

; <label>:1236                                    ; preds = %1225, %1177
  %1237 = phi float [ %1235, %1225 ], [ %1178, %1177 ]
  %1238 = phi i32 [ %1234, %1225 ], [ 0, %1177 ]
  %1239 = icmp eq i32 %1179, 0
  br i1 %1239, label %1313, label %1240, !dx.controlflow.hints !53

; <label>:1240                                    ; preds = %1236
  %1241 = fmul fast float %717, %1094
  %1242 = call float @dx.op.unary.f32(i32 23, float %1241)  ; Log(value)
  %1243 = fmul fast float %1242, 0x3FE62E4300000000
  %1244 = call float @dx.op.binary.f32(i32 35, float %1243, float 1.000000e+00)  ; FMax(a,b)
  %1245 = fmul fast float %1244, 0x47EFFFFFE0000000
  %1246 = call float @dx.op.binary.f32(i32 36, float %1245, float %1237)  ; FMin(a,b)
  %1247 = call float @dx.op.binary.f32(i32 35, float %1246, float 0.000000e+00)  ; FMax(a,b)
  %1248 = fcmp fast ogt float %1247, 0x3F1A36E2E0000000
  %1249 = fadd fast float %1095, %1098
  %1250 = fadd fast float %1096, %1100
  %1251 = select i1 %1248, float %1249, float %1098
  %1252 = select i1 %1248, float %1250, float %1100
  %1253 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 401)  ; CBufferLoadLegacy(handle,regIndex)
  %1254 = extractvalue %dx.types.CBufRet.f32 %1253, 0
  %1255 = extractvalue %dx.types.CBufRet.f32 %1253, 1
  %1256 = fsub fast float %1251, %1254
  %1257 = fsub fast float %1252, %1255
  %1258 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 403)  ; CBufferLoadLegacy(handle,regIndex)
  %1259 = extractvalue %dx.types.CBufRet.f32 %1258, 0
  %1260 = extractvalue %dx.types.CBufRet.f32 %1258, 1
  %1261 = fmul fast float %1256, %1259
  %1262 = fmul fast float %1257, %1260
  %1263 = fsub fast float 1.000000e+00, %1262
  %1264 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %1265 = extractvalue %dx.types.CBufRet.i32 %1264, 3
  %1266 = icmp eq i32 %1265, 0
  br i1 %1266, label %1273, label %1267, !dx.controlflow.hints !45

; <label>:1267                                    ; preds = %1240
  %1268 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %17, float %1261, float %1263, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1269 = extractvalue %dx.types.ResRet.f32 %1268, 0
  %1270 = extractvalue %dx.types.ResRet.f32 %1268, 1
  %1271 = extractvalue %dx.types.ResRet.f32 %1268, 2
  %1272 = extractvalue %dx.types.ResRet.f32 %1268, 3
  br label %1279

; <label>:1273                                    ; preds = %1240
  %1274 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %18, float %1261, float %1263, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1275 = extractvalue %dx.types.ResRet.f32 %1274, 0
  %1276 = extractvalue %dx.types.ResRet.f32 %1274, 1
  %1277 = extractvalue %dx.types.ResRet.f32 %1274, 2
  %1278 = extractvalue %dx.types.ResRet.f32 %1274, 3
  br label %1279

; <label>:1279                                    ; preds = %1273, %1267
  %1280 = phi float [ %1269, %1267 ], [ %1275, %1273 ]
  %1281 = phi float [ %1270, %1267 ], [ %1276, %1273 ]
  %1282 = phi float [ %1271, %1267 ], [ %1277, %1273 ]
  %1283 = phi float [ %1272, %1267 ], [ %1278, %1273 ]
  %1284 = extractvalue %dx.types.CBufRet.f32 %1258, 3
  %1285 = fmul fast float %1284, %1281
  %1286 = fmul fast float %1285, %1280
  %1287 = fsub fast float %1285, %1286
  %1288 = fcmp fast ole float %1287, 0.000000e+00
  %1289 = extractvalue %dx.types.CBufRet.f32 %1253, 2
  %1290 = fadd fast float %1286, %1289
  %1291 = fmul fast float %1284, %1282
  %1292 = fadd fast float %1291, %1289
  %1293 = fdiv fast float 1.000000e+00, %1287
  %1294 = select i1 %1288, float 1.000000e+06, float %1293
  %1295 = fsub fast float %1102, %1290
  %1296 = fmul fast float %1294, %1295
  %1297 = call float @dx.op.unary.f32(i32 7, float %1296)  ; Saturate(value)
  %1298 = extractvalue %dx.types.CBufRet.f32 %1258, 2
  %1299 = fmul fast float %1298, %1297
  %1300 = fsub fast float %1298, %1299
  %1301 = fcmp fast olt float %1102, %1292
  %1302 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 406)  ; CBufferLoadLegacy(handle,regIndex)
  %1303 = extractvalue %dx.types.CBufRet.f32 %1302, 3
  %1304 = fmul fast float %1303, 3.000000e+00
  %1305 = select i1 %1301, float %1304, float 3.000000e+00
  %1306 = fmul fast float %1300, %1305
  %1307 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 418)  ; CBufferLoadLegacy(handle,regIndex)
  %1308 = extractvalue %dx.types.CBufRet.f32 %1307, 2
  %1309 = fmul fast float %1094, 0x3FD5555560000000
  %1310 = fmul fast float %1309, %1283
  %1311 = fmul fast float %1310, %1308
  %1312 = fmul fast float %1311, %1306
  br label %1313

; <label>:1313                                    ; preds = %1279, %1236
  %1314 = phi float [ %1312, %1279 ], [ 0.000000e+00, %1236 ]
  %1315 = icmp eq i32 %1238, 0
  br i1 %1315, label %1496, label %1316, !dx.controlflow.hints !55

; <label>:1316                                    ; preds = %1313
  %1317 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %1318 = extractvalue %dx.types.CBufRet.f32 %1317, 3
  %1319 = fmul fast float %1318, %1094
  %1320 = fcmp fast oeq float %1319, 0.000000e+00
  br i1 %1320, label %1335, label %1321, !dx.controlflow.hints !56

; <label>:1321                                    ; preds = %1316
  %1322 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 41)  ; CBufferLoadLegacy(handle,regIndex)
  %1323 = extractvalue %dx.types.CBufRet.f32 %1322, 3
  %1324 = fmul fast float %1323, %1319
  %1325 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 33)  ; CBufferLoadLegacy(handle,regIndex)
  %1326 = extractvalue %dx.types.CBufRet.f32 %1325, 0
  %1327 = extractvalue %dx.types.CBufRet.f32 %1325, 1
  %1328 = extractvalue %dx.types.CBufRet.f32 %1325, 2
  %1329 = fmul fast float %1326, %1324
  %1330 = fmul fast float %1327, %1324
  %1331 = fmul fast float %1328, %1324
  %1332 = call float @dx.op.unary.f32(i32 23, float %1329)  ; Log(value)
  %1333 = call float @dx.op.unary.f32(i32 23, float %1330)  ; Log(value)
  %1334 = call float @dx.op.unary.f32(i32 23, float %1331)  ; Log(value)
  br label %1335

; <label>:1335                                    ; preds = %1321, %1316
  %1336 = phi float [ %1332, %1321 ], [ 0.000000e+00, %1316 ]
  %1337 = phi float [ %1333, %1321 ], [ 0.000000e+00, %1316 ]
  %1338 = phi float [ %1334, %1321 ], [ 0.000000e+00, %1316 ]
  %1339 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 35)  ; CBufferLoadLegacy(handle,regIndex)
  %1340 = extractvalue %dx.types.CBufRet.f32 %1339, 0
  %1341 = extractvalue %dx.types.CBufRet.f32 %1339, 1
  %1342 = extractvalue %dx.types.CBufRet.f32 %1339, 2
  %1343 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 31)  ; CBufferLoadLegacy(handle,regIndex)
  %1344 = extractvalue %dx.types.CBufRet.f32 %1343, 0
  %1345 = extractvalue %dx.types.CBufRet.f32 %1343, 1
  %1346 = extractvalue %dx.types.CBufRet.f32 %1343, 2
  %1347 = fsub fast float %1098, %1344
  %1348 = fsub fast float %1100, %1345
  %1349 = fsub fast float %1102, %1346
  %1350 = fmul fast float %1347, %1340
  %1351 = fmul fast float %1348, %1341
  %1352 = fmul fast float %1349, %1342
  %1353 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 29)  ; CBufferLoadLegacy(handle,regIndex)
  %1354 = extractvalue %dx.types.CBufRet.i32 %1353, 0
  %1355 = extractvalue %dx.types.CBufRet.i32 %1353, 1
  %1356 = uitofp i32 %1354 to float
  %1357 = uitofp i32 %1355 to float
  %1358 = fmul fast float %1350, %1356
  %1359 = fmul fast float %1351, %1357
  %1360 = fadd fast float %1358, 5.000000e-01
  %1361 = fadd fast float %1359, 5.000000e-01
  %1362 = call float @dx.op.unary.f32(i32 22, float %1360)  ; Frc(value)
  %1363 = call float @dx.op.unary.f32(i32 22, float %1361)  ; Frc(value)
  %1364 = call float @dx.op.unary.f32(i32 27, float %1360)  ; Round_ni(value)
  %1365 = call float @dx.op.unary.f32(i32 27, float %1361)  ; Round_ni(value)
  %1366 = fadd fast float %1364, 1.000000e+00
  %1367 = fadd fast float %1365, 1.000000e+00
  %1368 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 30)  ; CBufferLoadLegacy(handle,regIndex)
  %1369 = extractvalue %dx.types.CBufRet.f32 %1368, 0
  %1370 = extractvalue %dx.types.CBufRet.f32 %1368, 1
  %1371 = fmul fast float %1369, %1366
  %1372 = fmul fast float %1370, %1367
  %1373 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %10, %dx.types.Handle %17, float %1371, float %1372, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1374 = extractvalue %dx.types.ResRet.f32 %1373, 0
  %1375 = extractvalue %dx.types.ResRet.f32 %1373, 1
  %1376 = extractvalue %dx.types.ResRet.f32 %1373, 2
  %1377 = extractvalue %dx.types.ResRet.f32 %1373, 3
  %1378 = extractvalue %dx.types.CBufRet.i32 %1353, 2
  %1379 = extractvalue %dx.types.CBufRet.f32 %1368, 2
  %1380 = uitofp i32 %1378 to float
  %1381 = fadd fast float %1380, -1.000000e+00
  %1382 = fmul fast float %1381, %1374
  %1383 = fmul fast float %1381, %1375
  %1384 = fmul fast float %1381, %1376
  %1385 = fmul fast float %1381, %1377
  %1386 = fadd fast float %1382, 5.000000e-01
  %1387 = fadd fast float %1383, 5.000000e-01
  %1388 = fadd fast float %1384, 5.000000e-01
  %1389 = fadd fast float %1385, 5.000000e-01
  %1390 = fptoui float %1386 to i32
  %1391 = fptoui float %1387 to i32
  %1392 = fptoui float %1388 to i32
  %1393 = fptoui float %1389 to i32
  %1394 = uitofp i32 %1390 to float
  %1395 = uitofp i32 %1391 to float
  %1396 = uitofp i32 %1392 to float
  %1397 = uitofp i32 %1393 to float
  %1398 = fadd fast float %1394, 5.000000e-01
  %1399 = fadd fast float %1395, 5.000000e-01
  %1400 = fadd fast float %1396, 5.000000e-01
  %1401 = fadd fast float %1397, 5.000000e-01
  %1402 = fmul fast float %1398, %1379
  %1403 = fmul fast float %1399, %1379
  %1404 = fmul fast float %1400, %1379
  %1405 = fmul fast float %1401, %1379
  %1406 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %18, float %1402, float %1352, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1407 = extractvalue %dx.types.ResRet.f32 %1406, 0
  %1408 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %18, float %1403, float %1352, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1409 = extractvalue %dx.types.ResRet.f32 %1408, 0
  %1410 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %18, float %1404, float %1352, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1411 = extractvalue %dx.types.ResRet.f32 %1410, 0
  %1412 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %18, float %1405, float %1352, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1413 = extractvalue %dx.types.ResRet.f32 %1412, 0
  %1414 = fsub fast float %1411, %1413
  %1415 = fmul fast float %1414, %1362
  %1416 = fadd fast float %1415, %1413
  %1417 = fsub fast float %1409, %1407
  %1418 = fmul fast float %1417, %1362
  %1419 = fadd fast float %1418, %1407
  %1420 = fsub fast float %1419, %1416
  %1421 = fmul fast float %1420, %1363
  %1422 = fadd fast float %1421, %1416
  %1423 = fcmp fast ogt float %1422, 0.000000e+00
  br i1 %1423, label %1424, label %1492, !dx.controlflow.hints !57

; <label>:1424                                    ; preds = %1335
  %1425 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 33)  ; CBufferLoadLegacy(handle,regIndex)
  %1426 = extractvalue %dx.types.CBufRet.f32 %1425, 0
  %1427 = extractvalue %dx.types.CBufRet.f32 %1425, 1
  %1428 = extractvalue %dx.types.CBufRet.f32 %1425, 2
  %1429 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 41)  ; CBufferLoadLegacy(handle,regIndex)
  %1430 = extractvalue %dx.types.CBufRet.f32 %1429, 0
  %1431 = extractvalue %dx.types.CBufRet.f32 %1429, 1
  %1432 = extractvalue %dx.types.CBufRet.f32 %1429, 2
  %1433 = fmul fast float %1348, %1340
  %1434 = fmul fast float %1349, %1340
  %1435 = fadd fast float %1350, %1430
  %1436 = fadd fast float %1433, %1431
  %1437 = fadd fast float %1434, %1432
  %1438 = fmul fast float %1435, %1426
  %1439 = fmul fast float %1436, %1426
  %1440 = fmul fast float %1437, %1426
  %1441 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %15, float %1438, float %1439, float %1440, float undef, i32 0, i32 0, i32 0, float %1336)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1442 = extractvalue %dx.types.ResRet.f32 %1441, 0
  %1443 = fmul fast float %1435, %1427
  %1444 = fmul fast float %1436, %1427
  %1445 = fmul fast float %1437, %1427
  %1446 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %15, float %1443, float %1444, float %1445, float undef, i32 0, i32 0, i32 0, float %1337)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1447 = extractvalue %dx.types.ResRet.f32 %1446, 1
  %1448 = fmul fast float %1435, %1428
  %1449 = fmul fast float %1436, %1428
  %1450 = fmul fast float %1437, %1428
  %1451 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %15, float %1448, float %1449, float %1450, float undef, i32 0, i32 0, i32 0, float %1338)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1452 = extractvalue %dx.types.ResRet.f32 %1451, 2
  %1453 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 34)  ; CBufferLoadLegacy(handle,regIndex)
  %1454 = extractvalue %dx.types.CBufRet.f32 %1453, 1
  %1455 = fmul fast float %1447, %1442
  %1456 = fmul fast float %1455, %1452
  %1457 = call float @dx.op.unary.f32(i32 23, float %1456)  ; Log(value)
  %1458 = fmul fast float %1457, %1454
  %1459 = call float @dx.op.unary.f32(i32 21, float %1458)  ; Exp(value)
  %1460 = extractvalue %dx.types.CBufRet.f32 %1453, 2
  %1461 = fmul fast float %1422, %1422
  %1462 = fmul fast float %1461, %1459
  %1463 = fmul fast float %1462, %1460
  %1464 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 32)  ; CBufferLoadLegacy(handle,regIndex)
  %1465 = extractvalue %dx.types.CBufRet.f32 %1464, 3
  %1466 = fmul fast float %1465, %1463
  %1467 = bitcast float %1466 to i32
  %1468 = sitofp i32 %1467 to float
  %1469 = fptosi float %1468 to i32
  %1470 = bitcast i32 %1469 to float
  %1471 = fsub fast float 1.000000e+00, %1463
  %1472 = bitcast float %1471 to i32
  %1473 = sitofp i32 %1472 to float
  %1474 = fptosi float %1473 to i32
  %1475 = bitcast i32 %1474 to float
  %1476 = fadd fast float %1470, %1475
  %1477 = bitcast float %1476 to i32
  %1478 = sub nsw i32 2129859010, %1477
  %1479 = bitcast i32 %1478 to float
  %1480 = fmul fast float %1479, %1470
  %1481 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %1482 = extractvalue %dx.types.CBufRet.f32 %1481, 2
  %1483 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 37)  ; CBufferLoadLegacy(handle,regIndex)
  %1484 = extractvalue %dx.types.CBufRet.f32 %1483, 0
  %1485 = fmul fast float %1480, %1484
  %1486 = fadd fast float %1485, 1.000000e+00
  %1487 = bitcast float %1486 to i32
  %1488 = sub nsw i32 2129859010, %1487
  %1489 = bitcast i32 %1488 to float
  %1490 = fmul fast float %1480, %1482
  %1491 = fmul fast float %1490, %1489
  br label %1492

; <label>:1492                                    ; preds = %1424, %1335
  %1493 = phi float [ %1491, %1424 ], [ %1422, %1335 ]
  %1494 = fmul fast float %1493, %1094
  %1495 = fadd fast float %1494, %1314
  br label %1496

; <label>:1496                                    ; preds = %1492, %1313
  %1497 = phi float [ %1495, %1492 ], [ %1314, %1313 ]
  %1498 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 36)  ; CBufferLoadLegacy(handle,regIndex)
  %1499 = extractvalue %dx.types.CBufRet.f32 %1498, 3
  %1500 = fmul fast float %1497, 0xBFF7154760000000
  %1501 = fmul fast float %1500, %1499
  %1502 = call float @dx.op.unary.f32(i32 21, float %1501)  ; Exp(value)
  %1503 = call float @dx.op.unary.f32(i32 7, float %1502)  ; Saturate(value)
  %1504 = fmul fast float %1503, %1090
  %1505 = fmul fast float %1503, %1091
  %1506 = fmul fast float %1503, %1092
  %1507 = fadd fast float %1504, %206
  %1508 = fadd fast float %1505, %207
  %1509 = fadd fast float %1506, %208
  %1510 = fsub fast float 1.000000e+00, %1060
  %1511 = fmul fast float %1052, %463
  %1512 = fmul fast float %1511, %1510
  %1513 = fmul fast float %1512, %1507
  %1514 = fmul fast float %1053, %463
  %1515 = fmul fast float %1514, %1510
  %1516 = fmul fast float %1515, %1508
  %1517 = fmul fast float %1054, %463
  %1518 = fmul fast float %1517, %1510
  %1519 = fmul fast float %1518, %1509
  %1520 = fadd fast float %1513, %464
  %1521 = fadd fast float %1516, %465
  %1522 = fadd fast float %1519, %466
  %1523 = fdiv fast float %1036, %727
  %1524 = fadd fast float %727, %470
  %1525 = fmul fast float %470, %470
  %1526 = fmul fast float %1524, %1524
  %1527 = fsub fast float %1525, %1526
  %1528 = fmul fast float %1527, -5.000000e-01
  %1529 = fmul fast float %1528, %1523
  %1530 = fadd fast float %1529, %462
  %1531 = fadd fast float %1036, %472
  %1532 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %1533 = extractvalue %dx.types.CBufRet.i32 %1532, 0
  %1534 = icmp eq i32 %1533, 0
  br i1 %1534, label %1561, label %1535, !dx.controlflow.hints !61

; <label>:1535                                    ; preds = %1496
  %1536 = icmp ne i32 %477, 0
  %1537 = zext i1 %1536 to i32
  %1538 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %1539 = extractvalue %dx.types.CBufRet.f32 %1538, 2
  %1540 = extractvalue %dx.types.CBufRet.f32 %1538, 0
  %1541 = fsub fast float %1524, %1540
  %1542 = fmul fast float %1541, %1539
  %1543 = call float @dx.op.unary.f32(i32 7, float %1542)  ; Saturate(value)
  %1544 = fadd fast float %1543, -5.000000e-01
  %1545 = fmul fast float %1544, 2.000000e+00
  %1546 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %1547 = extractvalue %dx.types.CBufRet.f32 %1546, 2
  %1548 = fcmp fast olt float %1545, %1547
  br i1 %1548, label %1549, label %1561, !dx.controlflow.hints !62

; <label>:1549                                    ; preds = %1535
  %1550 = fmul fast float %1545, %1545
  %1551 = fmul fast float %1510, %463
  %1552 = fmul fast float %1545, %1551
  %1553 = fmul fast float %1550, %1551
  %1554 = fmul fast float %1552, %1550
  %1555 = fmul fast float %1550, %1550
  %1556 = fmul fast float %1555, %1551
  %1557 = fadd fast float %1552, %473
  %1558 = fadd fast float %1553, %474
  %1559 = fadd fast float %1554, %475
  %1560 = fadd fast float %1556, %476
  br label %1561

; <label>:1561                                    ; preds = %1549, %1535, %1496
  %1562 = phi float [ %473, %1496 ], [ %1557, %1549 ], [ %473, %1535 ]
  %1563 = phi float [ %474, %1496 ], [ %1558, %1549 ], [ %474, %1535 ]
  %1564 = phi float [ %475, %1496 ], [ %1559, %1549 ], [ %475, %1535 ]
  %1565 = phi float [ %476, %1496 ], [ %1560, %1549 ], [ %476, %1535 ]
  %1566 = phi i32 [ %477, %1496 ], [ 1, %1549 ], [ %1537, %1535 ]
  %1567 = fmul fast float %1060, %463
  br label %1568

; <label>:1568                                    ; preds = %1561, %1055
  %1569 = phi float [ %1056, %1055 ], [ %1524, %1561 ]
  %1570 = phi float [ %462, %1055 ], [ %1530, %1561 ]
  %1571 = phi float [ %463, %1055 ], [ %1567, %1561 ]
  %1572 = phi float [ %464, %1055 ], [ %1520, %1561 ]
  %1573 = phi float [ %465, %1055 ], [ %1521, %1561 ]
  %1574 = phi float [ %466, %1055 ], [ %1522, %1561 ]
  %1575 = phi float [ %472, %1055 ], [ %1531, %1561 ]
  %1576 = phi float [ %473, %1055 ], [ %1562, %1561 ]
  %1577 = phi float [ %474, %1055 ], [ %1563, %1561 ]
  %1578 = phi float [ %475, %1055 ], [ %1564, %1561 ]
  %1579 = phi float [ %476, %1055 ], [ %1565, %1561 ]
  %1580 = phi i32 [ %477, %1055 ], [ %1566, %1561 ]
  %1581 = fmul fast float %727, %282
  %1582 = fmul fast float %727, %283
  %1583 = fmul fast float %727, %284
  %1584 = fadd fast float %1581, %467
  %1585 = fadd fast float %1582, %468
  %1586 = fadd fast float %1583, %469
  %1587 = fcmp fast olt float %1569, %438
  %1588 = extractvalue %dx.types.CBufRet.f32 %1041, 2
  %1589 = fcmp fast olt float %1588, %1571
  %1590 = and i1 %1587, %1589
  br i1 %1590, label %461, label %1591

; <label>:1591                                    ; preds = %1568
  br label %1592

; <label>:1592                                    ; preds = %1591, %434
  %1593 = phi float [ 0.000000e+00, %434 ], [ %1570, %1591 ]
  %1594 = phi float [ 1.000000e+00, %434 ], [ %1571, %1591 ]
  %1595 = phi float [ 0.000000e+00, %434 ], [ %1572, %1591 ]
  %1596 = phi float [ 0.000000e+00, %434 ], [ %1573, %1591 ]
  %1597 = phi float [ 0.000000e+00, %434 ], [ %1574, %1591 ]
  %1598 = phi float [ 0.000000e+00, %434 ], [ %1575, %1591 ]
  %1599 = phi float [ 0.000000e+00, %434 ], [ %1576, %1591 ]
  %1600 = phi float [ 0.000000e+00, %434 ], [ %1577, %1591 ]
  %1601 = phi float [ 0.000000e+00, %434 ], [ %1578, %1591 ]
  %1602 = phi float [ 0.000000e+00, %434 ], [ %1579, %1591 ]
  %1603 = phi i32 [ 0, %434 ], [ %1580, %1591 ]
  %1604 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %1605 = extractvalue %dx.types.CBufRet.i32 %1604, 0
  %1606 = icmp eq i32 %1605, 0
  br i1 %1606, label %1648, label %1607, !dx.controlflow.hints !63

; <label>:1607                                    ; preds = %1592
  %1608 = icmp eq i32 %1603, 0
  br i1 %1608, label %1647, label %1609, !dx.controlflow.hints !64

; <label>:1609                                    ; preds = %1607
  %1610 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %1611 = extractvalue %dx.types.CBufRet.i32 %1610, 2
  %1612 = icmp eq i32 %1611, 0
  br i1 %1612, label %1619, label %1613, !dx.controlflow.hints !65

; <label>:1613                                    ; preds = %1609
  %1614 = fsub fast float 1.000000e+00, %1594
  %1615 = fdiv fast float %1599, %1614
  %1616 = fdiv fast float %1600, %1614
  %1617 = fdiv fast float %1601, %1614
  %1618 = fdiv fast float %1602, %1614
  br label %1624

; <label>:1619                                    ; preds = %1609
  %1620 = fadd fast float %1599, %1594
  %1621 = fadd fast float %1600, %1594
  %1622 = fadd fast float %1601, %1594
  %1623 = fadd fast float %1602, %1594
  br label %1624

; <label>:1624                                    ; preds = %1619, %1613
  %1625 = phi float [ %1615, %1613 ], [ %1620, %1619 ]
  %1626 = phi float [ %1616, %1613 ], [ %1621, %1619 ]
  %1627 = phi float [ %1617, %1613 ], [ %1622, %1619 ]
  %1628 = phi float [ %1618, %1613 ], [ %1623, %1619 ]
  %1629 = call float @dx.op.binary.f32(i32 35, float %1625, float -1.000000e+00)  ; FMax(a,b)
  %1630 = call float @dx.op.binary.f32(i32 35, float %1626, float -1.000000e+00)  ; FMax(a,b)
  %1631 = call float @dx.op.binary.f32(i32 35, float %1627, float -1.000000e+00)  ; FMax(a,b)
  %1632 = call float @dx.op.binary.f32(i32 35, float %1628, float -1.000000e+00)  ; FMax(a,b)
  %1633 = call float @dx.op.binary.f32(i32 36, float %1629, float 1.000000e+00)  ; FMin(a,b)
  %1634 = call float @dx.op.binary.f32(i32 36, float %1630, float 1.000000e+00)  ; FMin(a,b)
  %1635 = call float @dx.op.binary.f32(i32 36, float %1631, float 1.000000e+00)  ; FMin(a,b)
  %1636 = call float @dx.op.binary.f32(i32 36, float %1632, float 1.000000e+00)  ; FMin(a,b)
  %1637 = fmul fast float %1633, 1.500000e+00
  %1638 = call float @dx.op.tertiary.f32(i32 46, float -2.000000e+00, float %1635, float %1637)  ; FMad(a,b,c)
  %1639 = call float @dx.op.tertiary.f32(i32 46, float 4.000000e+00, float %1634, float 0.000000e+00)  ; FMad(a,b,c)
  %1640 = call float @dx.op.tertiary.f32(i32 46, float -4.000000e+00, float %1636, float %1639)  ; FMad(a,b,c)
  %1641 = fmul fast float %1633, 0x3FEBB67AE0000000
  %1642 = call float @dx.op.tertiary.f32(i32 46, float 0xBFD8A23460000000, float %1635, float %1641)  ; FMad(a,b,c)
  %1643 = call float @dx.op.tertiary.f32(i32 46, float 5.000000e-01, float %1634, float 0.000000e+00)  ; FMad(a,b,c)
  %1644 = call float @dx.op.tertiary.f32(i32 46, float 5.000000e-01, float %1636, float %1643)  ; FMad(a,b,c)
  %1645 = fadd fast float %1638, 5.000000e-01
  %1646 = fadd fast float %1642, 5.000000e-01
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %21, i32 %22, i32 0, float %1645, float %1640, float %1646, float %1644, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %1648

; <label>:1647                                    ; preds = %1607
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %21, i32 %22, i32 0, float 0.000000e+00, float 0.000000e+00, float 0x3FEF6560C0000000, float 1.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %1648

; <label>:1648                                    ; preds = %1647, %1624, %1592
  %1649 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %1650 = extractvalue %dx.types.CBufRet.f32 %1649, 2
  %1651 = fsub fast float %1594, %1650
  %1652 = fdiv fast float %1651, %1650
  %1653 = call float @dx.op.unary.f32(i32 7, float %1652)  ; Saturate(value)
  %1654 = fmul fast float %1653, 2.000000e+00
  %1655 = fsub fast float 3.000000e+00, %1654
  %1656 = fmul fast float %1653, %1653
  %1657 = fmul fast float %1656, %1594
  %1658 = fmul fast float %1657, %1655
  %1659 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 419)  ; CBufferLoadLegacy(handle,regIndex)
  %1660 = extractvalue %dx.types.CBufRet.f32 %1659, 0
  %1661 = extractvalue %dx.types.CBufRet.f32 %1659, 1
  %1662 = extractvalue %dx.types.CBufRet.f32 %1659, 2
  %1663 = call float @dx.op.dot3.f32(i32 55, float %282, float %283, float %284, float %1660, float %1661, float %1662)  ; Dot3(ax,ay,az,bx,by,bz)
  %1664 = fmul fast float %1663, %1593
  %1665 = fcmp fast ogt float %1598, 0.000000e+00
  %1666 = fdiv fast float 1.000000e+00, %1598
  %1667 = fmul fast float %1664, %1666
  %1668 = select i1 %1665, float %1667, float %293
  %1669 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %1670 = extractvalue %dx.types.CBufRet.f32 %1669, 0
  %1671 = extractvalue %dx.types.CBufRet.f32 %1669, 1
  %1672 = extractvalue %dx.types.CBufRet.f32 %1669, 2
  %1673 = fmul fast float %1670, %246
  %1674 = fmul fast float %1671, %246
  %1675 = fmul fast float %1672, %246
  %1676 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %1677 = extractvalue %dx.types.CBufRet.f32 %1676, 0
  %1678 = extractvalue %dx.types.CBufRet.f32 %1676, 1
  %1679 = extractvalue %dx.types.CBufRet.f32 %1676, 2
  %1680 = fmul fast float %1677, %247
  %1681 = fmul fast float %1678, %247
  %1682 = fmul fast float %1679, %247
  %1683 = fadd fast float %1680, %1673
  %1684 = fadd fast float %1681, %1674
  %1685 = fadd fast float %1682, %1675
  %1686 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %1687 = extractvalue %dx.types.CBufRet.f32 %1686, 0
  %1688 = extractvalue %dx.types.CBufRet.f32 %1686, 1
  %1689 = extractvalue %dx.types.CBufRet.f32 %1686, 2
  %1690 = fadd fast float %1683, %1687
  %1691 = fadd fast float %1684, %1688
  %1692 = fadd fast float %1685, %1689
  %1693 = fmul fast float %1690, %1668
  %1694 = fmul fast float %1691, %1668
  %1695 = fmul fast float %1692, %1668
  %1696 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %1697 = extractvalue %dx.types.CBufRet.f32 %1696, 0
  %1698 = extractvalue %dx.types.CBufRet.f32 %1696, 1
  %1699 = extractvalue %dx.types.CBufRet.f32 %1696, 2
  %1700 = extractvalue %dx.types.CBufRet.f32 %1696, 3
  %1701 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %1702 = extractvalue %dx.types.CBufRet.f32 %1701, 0
  %1703 = extractvalue %dx.types.CBufRet.f32 %1701, 1
  %1704 = extractvalue %dx.types.CBufRet.f32 %1701, 2
  %1705 = extractvalue %dx.types.CBufRet.f32 %1701, 3
  %1706 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %1707 = extractvalue %dx.types.CBufRet.f32 %1706, 0
  %1708 = extractvalue %dx.types.CBufRet.f32 %1706, 1
  %1709 = extractvalue %dx.types.CBufRet.f32 %1706, 2
  %1710 = extractvalue %dx.types.CBufRet.f32 %1706, 3
  %1711 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %1712 = extractvalue %dx.types.CBufRet.f32 %1711, 0
  %1713 = extractvalue %dx.types.CBufRet.f32 %1711, 1
  %1714 = extractvalue %dx.types.CBufRet.f32 %1711, 2
  %1715 = extractvalue %dx.types.CBufRet.f32 %1711, 3
  %1716 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %1717 = extractvalue %dx.types.CBufRet.f32 %1716, 3
  %1718 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %1719 = extractvalue %dx.types.CBufRet.f32 %1718, 3
  %1720 = extractvalue %dx.types.CBufRet.f32 %1718, 0
  %1721 = extractvalue %dx.types.CBufRet.f32 %1718, 1
  %1722 = extractvalue %dx.types.CBufRet.f32 %1718, 2
  %1723 = fcmp fast olt float %1722, -5.000000e-01
  %1724 = call float @dx.op.dot3.f32(i32 55, float %1693, float %1694, float %1695, float %1693, float %1694, float %1695)  ; Dot3(ax,ay,az,bx,by,bz)
  %1725 = call float @dx.op.unary.f32(i32 25, float %1724)  ; Rsqrt(value)
  %1726 = fmul fast float %1725, %1724
  %1727 = fmul fast float %1725, %1693
  %1728 = fmul fast float %1725, %1694
  %1729 = fmul fast float %1725, %1695
  %1730 = fadd fast float %1726, %1700
  %1731 = call float @dx.op.dot3.f32(i32 55, float %1727, float %1728, float %1729, float %1697, float %1698, float %1699)  ; Dot3(ax,ay,az,bx,by,bz)
  %1732 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1733 = extractvalue %dx.types.CBufRet.i32 %1732, 1
  %1734 = and i32 %1733, 1
  %1735 = icmp ne i32 %1734, 0
  %1736 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %1737 = extractvalue %dx.types.CBufRet.f32 %1736, 2
  %1738 = fcmp fast ogt float %1737, 0.000000e+00
  %1739 = and i1 %1735, %1738
  br i1 %1739, label %1740, label %2146, !dx.controlflow.hints !66

; <label>:1740                                    ; preds = %1648
  %1741 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %1742 = extractvalue %dx.types.CBufRet.f32 %1741, 3
  %1743 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1744 = extractvalue %dx.types.CBufRet.f32 %1743, 2
  %1745 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1746 = extractvalue %dx.types.CBufRet.f32 %1745, 2
  %1747 = fsub fast float %1744, %1746
  %1748 = and i32 %1733, 2
  %1749 = extractvalue %dx.types.CBufRet.i32 %1732, 0
  %1750 = call i32 @dx.op.binary.i32(i32 40, i32 %1749, i32 3)  ; UMin(a,b)
  %1751 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %1752 = extractvalue %dx.types.CBufRet.f32 %1751, 0
  %1753 = extractvalue %dx.types.CBufRet.f32 %1751, 1
  %1754 = extractvalue %dx.types.CBufRet.f32 %1745, 0
  %1755 = extractvalue %dx.types.CBufRet.f32 %1745, 1
  %1756 = fsub fast float %1752, %1754
  %1757 = fsub fast float %1753, %1755
  %1758 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %1759 = extractvalue %dx.types.CBufRet.f32 %1758, 0
  %1760 = fcmp fast ogt float %1759, 0.000000e+00
  %1761 = fsub fast float -0.000000e+00, %1756
  %1762 = fsub fast float -0.000000e+00, %1757
  %1763 = call float @dx.op.dot2.f32(i32 54, float %1727, float %1728, float %1727, float %1728)  ; Dot2(ax,ay,bx,by)
  %1764 = call float @dx.op.dot2.f32(i32 54, float %1727, float %1728, float %1761, float %1762)  ; Dot2(ax,ay,bx,by)
  %1765 = fmul fast float %1764, 2.000000e+00
  %1766 = call float @dx.op.dot2.f32(i32 54, float %1761, float %1762, float %1761, float %1762)  ; Dot2(ax,ay,bx,by)
  %1767 = fmul fast float %1759, %1759
  %1768 = fsub fast float %1766, %1767
  %1769 = fmul fast float %1765, %1765
  %1770 = fmul fast float %1763, 4.000000e+00
  %1771 = fmul fast float %1770, %1768
  %1772 = fsub fast float %1769, %1771
  %1773 = fcmp fast ogt float %1772, 0.000000e+00
  br i1 %1773, label %1774, label %1789, !dx.controlflow.hints !67

; <label>:1774                                    ; preds = %1740
  %1775 = fcmp fast ogt float %1765, 0.000000e+00
  %1776 = call float @dx.op.unary.f32(i32 24, float %1772)  ; Sqrt(value)
  %1777 = fsub fast float -0.000000e+00, %1776
  %1778 = select i1 %1775, float %1776, float %1777
  %1779 = fadd fast float %1778, %1765
  %1780 = fmul float %1779, -5.000000e-01
  %1781 = fdiv fast float %1780, %1763
  %1782 = call float @dx.op.binary.f32(i32 35, float %1781, float 0.000000e+00)  ; FMax(a,b)
  %1783 = call float @dx.op.binary.f32(i32 36, float %1726, float %1782)  ; FMin(a,b)
  %1784 = fdiv fast float %1768, %1780
  %1785 = call float @dx.op.binary.f32(i32 35, float %1784, float 0.000000e+00)  ; FMax(a,b)
  %1786 = call float @dx.op.binary.f32(i32 36, float %1726, float %1785)  ; FMin(a,b)
  %1787 = call float @dx.op.binary.f32(i32 36, float %1783, float %1786)  ; FMin(a,b)
  %1788 = call float @dx.op.binary.f32(i32 35, float %1783, float %1786)  ; FMax(a,b)
  br label %1789

; <label>:1789                                    ; preds = %1774, %1740
  %1790 = phi float [ %1788, %1774 ], [ -1.000000e+00, %1740 ]
  %1791 = phi float [ %1787, %1774 ], [ -1.000000e+00, %1740 ]
  %1792 = phi i1 [ true, %1774 ], [ false, %1740 ]
  %1793 = and i1 %1760, %1792
  br i1 %1793, label %1794, label %1796, !dx.controlflow.hints !68

; <label>:1794                                    ; preds = %1789
  %1795 = fcmp fast oeq float %1791, %1790
  br i1 %1795, label %2099, label %1797, !dx.controlflow.hints !69

; <label>:1796                                    ; preds = %1789
  br i1 %1760, label %2099, label %1797, !dx.controlflow.hints !70

; <label>:1797                                    ; preds = %1796, %1794
  %1798 = phi float [ %1726, %1796 ], [ %1790, %1794 ]
  %1799 = phi float [ 0.000000e+00, %1796 ], [ %1791, %1794 ]
  %1800 = icmp ne i32 %1748, 0
  %1801 = fmul fast float %1798, %1729
  %1802 = fadd fast float %1801, %1742
  %1803 = fmul fast float %1802, %1798
  %1804 = select i1 %1800, float 0.000000e+00, float %1803
  %1805 = fcmp fast oeq float %1729, 0.000000e+00
  %1806 = fdiv fast float %1747, %1729
  %1807 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1806)  ; FMax(a,b)
  %1808 = select i1 %1805, float %1798, float %1807
  %1809 = call float @dx.op.binary.f32(i32 36, float %1798, float %1808)  ; FMin(a,b)
  %1810 = fcmp fast ogt float %1729, 0.000000e+00
  %1811 = fcmp fast olt float %1747, 0.000000e+00
  br i1 %1810, label %1812, label %1869, !dx.controlflow.hints !71

; <label>:1812                                    ; preds = %1797
  %1813 = icmp eq i32 %1748, 0
  br i1 %1811, label %1814, label %1858, !dx.controlflow.hints !72

; <label>:1814                                    ; preds = %1812
  %1815 = select i1 %1813, float %1798, float 0.000000e+00
  %1816 = fsub fast float -0.000000e+00, %1815
  %1817 = call float @dx.op.unary.f32(i32 6, float %1816)  ; FAbs(value)
  %1818 = fmul fast float %1815, %1729
  %1819 = fadd fast float %1818, %1742
  %1820 = fmul fast float %1817, %1819
  %1821 = fsub fast float %1804, %1820
  %1822 = fsub fast float %1798, %1817
  %1823 = select i1 %1813, float %1822, float 0.000000e+00
  %1824 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %1825 = extractvalue %dx.types.CBufRet.f32 %1824, 0
  %1826 = extractvalue %dx.types.CBufRet.f32 %1824, 1
  %1827 = extractvalue %dx.types.CBufRet.f32 %1824, 2
  %1828 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %1829 = extractvalue %dx.types.CBufRet.f32 %1828, 0
  %1830 = extractvalue %dx.types.CBufRet.f32 %1828, 1
  %1831 = extractvalue %dx.types.CBufRet.f32 %1828, 2
  %1832 = extractvalue %dx.types.CBufRet.f32 %1828, 3
  %1833 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %1834 = extractvalue %dx.types.CBufRet.f32 %1833, 3
  %1835 = call float @dx.op.binary.f32(i32 36, float %1821, float %1834)  ; FMin(a,b)
  %1836 = fmul fast float %1832, %1823
  %1837 = call float @dx.op.unary.f32(i32 7, float %1836)  ; Saturate(value)
  %1838 = fsub fast float %1829, %1825
  %1839 = fsub fast float %1830, %1826
  %1840 = fsub fast float %1831, %1827
  %1841 = fmul fast float %1837, %1838
  %1842 = fmul fast float %1837, %1839
  %1843 = fmul fast float %1837, %1840
  %1844 = fadd fast float %1841, %1825
  %1845 = fadd fast float %1842, %1826
  %1846 = fadd fast float %1843, %1827
  %1847 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %1848 = extractvalue %dx.types.CBufRet.f32 %1847, 0
  %1849 = extractvalue %dx.types.CBufRet.f32 %1847, 1
  %1850 = fadd fast float %1849, %1848
  %1851 = call float @dx.op.unary.f32(i32 7, float %1850)  ; Saturate(value)
  %1852 = extractvalue %dx.types.CBufRet.f32 %1847, 2
  %1853 = extractvalue %dx.types.CBufRet.f32 %1847, 3
  %1854 = fadd fast float %1853, %1852
  %1855 = call float @dx.op.unary.f32(i32 7, float %1854)  ; Saturate(value)
  %1856 = fmul fast float %1851, %1835
  %1857 = fmul fast float %1856, %1855
  br label %2099

; <label>:1858                                    ; preds = %1812
  br i1 %1813, label %1859, label %1880, !dx.controlflow.hints !73

; <label>:1859                                    ; preds = %1858
  %1860 = call float @dx.op.binary.f32(i32 36, float %1809, float %1799)  ; FMin(a,b)
  %1861 = fsub fast float %1809, %1860
  %1862 = fsub fast float %1861, %1798
  %1863 = call float @dx.op.unary.f32(i32 6, float %1862)  ; FAbs(value)
  %1864 = fadd fast float %1861, %1798
  %1865 = fmul fast float %1864, %1729
  %1866 = fadd fast float %1865, %1742
  %1867 = fmul fast float %1866, %1863
  %1868 = fsub fast float %1804, %1867
  br label %1880

; <label>:1869                                    ; preds = %1797
  br i1 %1811, label %1870, label %1880, !dx.controlflow.hints !74

; <label>:1870                                    ; preds = %1869
  %1871 = call float @dx.op.binary.f32(i32 35, float %1799, float %1809)  ; FMax(a,b)
  %1872 = icmp eq i32 %1748, 0
  %1873 = select i1 %1872, float %1809, float 0.000000e+00
  %1874 = fsub fast float -0.000000e+00, %1873
  %1875 = call float @dx.op.unary.f32(i32 6, float %1874)  ; FAbs(value)
  %1876 = fmul fast float %1873, %1729
  %1877 = fadd fast float %1876, %1742
  %1878 = fmul fast float %1875, %1877
  %1879 = fsub fast float %1804, %1878
  br label %1880

; <label>:1880                                    ; preds = %1870, %1869, %1859, %1858
  %1881 = phi float [ %1799, %1858 ], [ %1799, %1859 ], [ %1871, %1870 ], [ %1799, %1869 ]
  %1882 = phi float [ 0.000000e+00, %1858 ], [ %1863, %1859 ], [ %1875, %1870 ], [ 0.000000e+00, %1869 ]
  %1883 = phi float [ %1804, %1858 ], [ %1868, %1859 ], [ %1879, %1870 ], [ %1804, %1869 ]
  %1884 = phi float [ %1809, %1858 ], [ %1809, %1859 ], [ %1798, %1870 ], [ %1798, %1869 ]
  %1885 = getelementptr inbounds [3 x float], [3 x float]* %24, i32 0, i32 0
  store float -1.000000e+00, float* %1885, align 4, !tbaa !75, !noalias !79
  %1886 = getelementptr inbounds [3 x float], [3 x float]* %24, i32 0, i32 1
  store float -1.000000e+00, float* %1886, align 4, !tbaa !75, !noalias !79
  %1887 = getelementptr inbounds [3 x float], [3 x float]* %24, i32 0, i32 2
  store float -1.000000e+00, float* %1887, align 4, !tbaa !75, !noalias !79
  %1888 = getelementptr inbounds [3 x float], [3 x float]* %25, i32 0, i32 0
  store float -1.000000e+00, float* %1888, align 4, !tbaa !75, !noalias !79
  %1889 = getelementptr inbounds [3 x float], [3 x float]* %25, i32 0, i32 1
  store float -1.000000e+00, float* %1889, align 4, !tbaa !75, !noalias !79
  %1890 = getelementptr inbounds [3 x float], [3 x float]* %25, i32 0, i32 2
  store float -1.000000e+00, float* %1890, align 4, !tbaa !75, !noalias !79
  %1891 = icmp sgt i32 %1750, 0
  br i1 %1891, label %1892, label %1953

; <label>:1892                                    ; preds = %1880
  br label %1893

; <label>:1893                                    ; preds = %1942, %1892
  %1894 = phi i32 [ %1943, %1942 ], [ 0, %1892 ]
  %1895 = phi i32 [ %1944, %1942 ], [ 0, %1892 ]
  %1896 = add nuw i32 %1895, 171
  %1897 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 %1896)  ; CBufferLoadLegacy(handle,regIndex)
  %1898 = extractvalue %dx.types.CBufRet.f32 %1897, 0
  %1899 = extractvalue %dx.types.CBufRet.f32 %1897, 1
  %1900 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1901 = extractvalue %dx.types.CBufRet.f32 %1900, 0
  %1902 = extractvalue %dx.types.CBufRet.f32 %1900, 1
  %1903 = fsub fast float %1898, %1901
  %1904 = fsub fast float %1899, %1902
  %1905 = extractvalue %dx.types.CBufRet.f32 %1897, 2
  %1906 = fsub fast float -0.000000e+00, %1903
  %1907 = fsub fast float -0.000000e+00, %1904
  %1908 = call float @dx.op.dot2.f32(i32 54, float %1727, float %1728, float %1906, float %1907)  ; Dot2(ax,ay,bx,by)
  %1909 = fmul fast float %1908, 2.000000e+00
  %1910 = call float @dx.op.dot2.f32(i32 54, float %1906, float %1907, float %1906, float %1907)  ; Dot2(ax,ay,bx,by)
  %1911 = fmul fast float %1905, %1905
  %1912 = fsub fast float %1910, %1911
  %1913 = fmul fast float %1909, %1909
  %1914 = fmul fast float %1770, %1912
  %1915 = fsub fast float %1913, %1914
  %1916 = fcmp fast ogt float %1915, 0.000000e+00
  br i1 %1916, label %1917, label %1932, !dx.controlflow.hints !67

; <label>:1917                                    ; preds = %1893
  %1918 = fcmp fast ogt float %1909, 0.000000e+00
  %1919 = call float @dx.op.unary.f32(i32 24, float %1915)  ; Sqrt(value)
  %1920 = fsub fast float -0.000000e+00, %1919
  %1921 = select i1 %1918, float %1919, float %1920
  %1922 = fadd fast float %1921, %1909
  %1923 = fmul float %1922, -5.000000e-01
  %1924 = fdiv fast float %1923, %1763
  %1925 = call float @dx.op.binary.f32(i32 35, float %1924, float 0.000000e+00)  ; FMax(a,b)
  %1926 = call float @dx.op.binary.f32(i32 36, float %1798, float %1925)  ; FMin(a,b)
  %1927 = fdiv fast float %1912, %1923
  %1928 = call float @dx.op.binary.f32(i32 35, float %1927, float 0.000000e+00)  ; FMax(a,b)
  %1929 = call float @dx.op.binary.f32(i32 36, float %1798, float %1928)  ; FMin(a,b)
  %1930 = call float @dx.op.binary.f32(i32 36, float %1926, float %1929)  ; FMin(a,b)
  %1931 = call float @dx.op.binary.f32(i32 35, float %1926, float %1929)  ; FMax(a,b)
  br label %1932

; <label>:1932                                    ; preds = %1917, %1893
  %1933 = phi float [ %1931, %1917 ], [ -1.000000e+00, %1893 ]
  %1934 = phi float [ %1930, %1917 ], [ -1.000000e+00, %1893 ]
  %1935 = phi i1 [ true, %1917 ], [ false, %1893 ]
  br i1 %1935, label %1936, label %1942, !dx.controlflow.hints !90

; <label>:1936                                    ; preds = %1932
  %1937 = call float @dx.op.binary.f32(i32 35, float %1881, float %1934)  ; FMax(a,b)
  %1938 = getelementptr inbounds [3 x float], [3 x float]* %24, i32 0, i32 %1895
  store float %1937, float* %1938, align 4, !tbaa !75, !noalias !79
  %1939 = call float @dx.op.binary.f32(i32 35, float %1881, float %1933)  ; FMax(a,b)
  %1940 = getelementptr inbounds [3 x float], [3 x float]* %25, i32 0, i32 %1895
  store float %1939, float* %1940, align 4, !tbaa !75, !noalias !79
  %1941 = add nsw i32 %1894, 1
  br label %1942

; <label>:1942                                    ; preds = %1936, %1932
  %1943 = phi i32 [ %1941, %1936 ], [ %1894, %1932 ]
  %1944 = add nuw nsw i32 %1895, 1
  %1945 = icmp eq i32 %1944, %1750
  br i1 %1945, label %1946, label %1893

; <label>:1946                                    ; preds = %1942
  %1947 = load float, float* %1887, align 4, !tbaa !75, !alias.scope !91, !noalias !94
  %1948 = load float, float* %1886, align 4, !tbaa !75, !alias.scope !97, !noalias !98
  %1949 = load float, float* %1885, align 4, !tbaa !75, !alias.scope !99, !noalias !100
  %1950 = load float, float* %1890, align 4, !tbaa !75, !alias.scope !101, !noalias !104
  %1951 = load float, float* %1889, align 4, !tbaa !75, !alias.scope !107, !noalias !108
  %1952 = load float, float* %1888, align 4, !tbaa !75, !alias.scope !109, !noalias !110
  br label %1953

; <label>:1953                                    ; preds = %1946, %1880
  %1954 = phi float [ -1.000000e+00, %1880 ], [ %1952, %1946 ]
  %1955 = phi float [ -1.000000e+00, %1880 ], [ %1951, %1946 ]
  %1956 = phi float [ -1.000000e+00, %1880 ], [ %1950, %1946 ]
  %1957 = phi float [ -1.000000e+00, %1880 ], [ %1949, %1946 ]
  %1958 = phi float [ -1.000000e+00, %1880 ], [ %1948, %1946 ]
  %1959 = phi float [ -1.000000e+00, %1880 ], [ %1947, %1946 ]
  %1960 = phi i32 [ 0, %1880 ], [ %1943, %1946 ]
  %1961 = call float @dx.op.binary.f32(i32 36, float %1958, float %1959)  ; FMin(a,b)
  %1962 = call float @dx.op.binary.f32(i32 36, float %1957, float %1961)  ; FMin(a,b)
  %1963 = call float @dx.op.binary.f32(i32 35, float %1957, float %1958)  ; FMax(a,b)
  %1964 = call float @dx.op.binary.f32(i32 36, float %1963, float %1959)  ; FMin(a,b)
  %1965 = call float @dx.op.binary.f32(i32 36, float %1957, float %1958)  ; FMin(a,b)
  %1966 = call float @dx.op.binary.f32(i32 35, float %1965, float %1964)  ; FMax(a,b)
  %1967 = call float @dx.op.binary.f32(i32 35, float %1958, float %1959)  ; FMax(a,b)
  %1968 = call float @dx.op.binary.f32(i32 35, float %1957, float %1967)  ; FMax(a,b)
  store float %1962, float* %1885, align 4, !tbaa !75, !alias.scope !99, !noalias !100
  store float %1966, float* %1886, align 4, !tbaa !75, !alias.scope !97, !noalias !98
  store float %1968, float* %1887, align 4, !tbaa !75, !alias.scope !91, !noalias !94
  %1969 = call float @dx.op.binary.f32(i32 36, float %1955, float %1956)  ; FMin(a,b)
  %1970 = call float @dx.op.binary.f32(i32 36, float %1954, float %1969)  ; FMin(a,b)
  %1971 = call float @dx.op.binary.f32(i32 35, float %1954, float %1955)  ; FMax(a,b)
  %1972 = call float @dx.op.binary.f32(i32 36, float %1971, float %1956)  ; FMin(a,b)
  %1973 = call float @dx.op.binary.f32(i32 36, float %1954, float %1955)  ; FMin(a,b)
  %1974 = call float @dx.op.binary.f32(i32 35, float %1973, float %1972)  ; FMax(a,b)
  %1975 = call float @dx.op.binary.f32(i32 35, float %1955, float %1956)  ; FMax(a,b)
  %1976 = call float @dx.op.binary.f32(i32 35, float %1954, float %1975)  ; FMax(a,b)
  store float %1970, float* %1888, align 4, !tbaa !75, !alias.scope !109, !noalias !110
  store float %1974, float* %1889, align 4, !tbaa !75, !alias.scope !107, !noalias !108
  store float %1976, float* %1890, align 4, !tbaa !75, !alias.scope !101, !noalias !104
  %1977 = sub nsw i32 3, %1960
  %1978 = icmp sgt i32 %1977, 2
  br i1 %1978, label %1979, label %2017, !dx.controlflow.hints !111

; <label>:1979                                    ; preds = %1953
  %1980 = icmp eq i32 %1748, 0
  %1981 = fsub fast float %1798, %1882
  %1982 = select i1 %1980, float %1981, float %1882
  %1983 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %1984 = extractvalue %dx.types.CBufRet.f32 %1983, 0
  %1985 = extractvalue %dx.types.CBufRet.f32 %1983, 1
  %1986 = extractvalue %dx.types.CBufRet.f32 %1983, 2
  %1987 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %1988 = extractvalue %dx.types.CBufRet.f32 %1987, 0
  %1989 = extractvalue %dx.types.CBufRet.f32 %1987, 1
  %1990 = extractvalue %dx.types.CBufRet.f32 %1987, 2
  %1991 = extractvalue %dx.types.CBufRet.f32 %1987, 3
  %1992 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %1993 = extractvalue %dx.types.CBufRet.f32 %1992, 3
  %1994 = call float @dx.op.binary.f32(i32 36, float %1883, float %1993)  ; FMin(a,b)
  %1995 = fmul fast float %1991, %1982
  %1996 = call float @dx.op.unary.f32(i32 7, float %1995)  ; Saturate(value)
  %1997 = fsub fast float %1988, %1984
  %1998 = fsub fast float %1989, %1985
  %1999 = fsub fast float %1990, %1986
  %2000 = fmul fast float %1996, %1997
  %2001 = fmul fast float %1996, %1998
  %2002 = fmul fast float %1996, %1999
  %2003 = fadd fast float %2000, %1984
  %2004 = fadd fast float %2001, %1985
  %2005 = fadd fast float %2002, %1986
  %2006 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %2007 = extractvalue %dx.types.CBufRet.f32 %2006, 0
  %2008 = extractvalue %dx.types.CBufRet.f32 %2006, 1
  %2009 = fadd fast float %2008, %2007
  %2010 = call float @dx.op.unary.f32(i32 7, float %2009)  ; Saturate(value)
  %2011 = extractvalue %dx.types.CBufRet.f32 %2006, 2
  %2012 = extractvalue %dx.types.CBufRet.f32 %2006, 3
  %2013 = fadd fast float %2012, %2011
  %2014 = call float @dx.op.unary.f32(i32 7, float %2013)  ; Saturate(value)
  %2015 = fmul fast float %2010, %1994
  %2016 = fmul fast float %2015, %2014
  br label %2099

; <label>:2017                                    ; preds = %1953
  %2018 = getelementptr inbounds [3 x float], [3 x float]* %24, i32 0, i32 %1977
  %2019 = load float, float* %2018, align 4, !tbaa !75, !noalias !79
  %2020 = fcmp fast olt float %2019, %1884
  %2021 = icmp sgt i32 %1960, 0
  %2022 = and i1 %2021, %2020
  br i1 %2022, label %2023, label %2060

; <label>:2023                                    ; preds = %2017
  br label %2024

; <label>:2024                                    ; preds = %2053, %2023
  %2025 = phi float [ %2054, %2053 ], [ %1882, %2023 ]
  %2026 = phi float [ %2055, %2053 ], [ %1883, %2023 ]
  %2027 = phi float [ %2035, %2053 ], [ %2019, %2023 ]
  %2028 = phi i32 [ %2032, %2053 ], [ %1977, %2023 ]
  %2029 = getelementptr inbounds [3 x float], [3 x float]* %25, i32 0, i32 %2028
  %2030 = load float, float* %2029, align 4, !tbaa !75, !noalias !79
  %2031 = icmp slt i32 %2028, 2
  %2032 = add nsw i32 %2028, 1
  %2033 = getelementptr inbounds [3 x float], [3 x float]* %24, i32 0, i32 %2032
  %2034 = load float, float* %2033, align 4, !tbaa !75, !noalias !79
  %2035 = select i1 %2031, float %2034, float %1798
  %2036 = call float @dx.op.binary.f32(i32 36, float %2035, float %2030)  ; FMin(a,b)
  %2037 = call float @dx.op.binary.f32(i32 36, float %1884, float %2036)  ; FMin(a,b)
  %2038 = icmp eq i32 %1748, 0
  %2039 = fadd fast float %2037, %2027
  %2040 = fmul fast float %2039, %1729
  %2041 = fadd fast float %2040, %1742
  br i1 %2038, label %2047, label %2042, !dx.controlflow.hints !112

; <label>:2042                                    ; preds = %2024
  %2043 = fsub fast float %2037, %2027
  %2044 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2043)  ; FMax(a,b)
  %2045 = fmul fast float %2044, %2041
  %2046 = fadd fast float %2045, %2026
  br label %2053

; <label>:2047                                    ; preds = %2024
  %2048 = fsub fast float %2027, %2037
  %2049 = call float @dx.op.unary.f32(i32 6, float %2048)  ; FAbs(value)
  %2050 = fadd fast float %2049, %2025
  %2051 = fmul fast float %2049, %2041
  %2052 = fsub fast float %2026, %2051
  br label %2053

; <label>:2053                                    ; preds = %2047, %2042
  %2054 = phi float [ %2044, %2042 ], [ %2050, %2047 ]
  %2055 = phi float [ %2046, %2042 ], [ %2052, %2047 ]
  %2056 = fcmp fast olt float %2035, %1884
  %2057 = icmp slt i32 %2032, 3
  %2058 = and i1 %2057, %2056
  br i1 %2058, label %2024, label %2059

; <label>:2059                                    ; preds = %2053
  br label %2060

; <label>:2060                                    ; preds = %2059, %2017
  %2061 = phi float [ %1882, %2017 ], [ %2054, %2059 ]
  %2062 = phi float [ %1883, %2017 ], [ %2055, %2059 ]
  %2063 = fsub fast float %1798, %2061
  %2064 = select i1 %1800, float %2061, float %2063
  %2065 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %2066 = extractvalue %dx.types.CBufRet.f32 %2065, 0
  %2067 = extractvalue %dx.types.CBufRet.f32 %2065, 1
  %2068 = extractvalue %dx.types.CBufRet.f32 %2065, 2
  %2069 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %2070 = extractvalue %dx.types.CBufRet.f32 %2069, 0
  %2071 = extractvalue %dx.types.CBufRet.f32 %2069, 1
  %2072 = extractvalue %dx.types.CBufRet.f32 %2069, 2
  %2073 = extractvalue %dx.types.CBufRet.f32 %2069, 3
  %2074 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %2075 = extractvalue %dx.types.CBufRet.f32 %2074, 3
  %2076 = call float @dx.op.binary.f32(i32 36, float %2062, float %2075)  ; FMin(a,b)
  %2077 = fmul fast float %2073, %2064
  %2078 = call float @dx.op.unary.f32(i32 7, float %2077)  ; Saturate(value)
  %2079 = fsub fast float %2070, %2066
  %2080 = fsub fast float %2071, %2067
  %2081 = fsub fast float %2072, %2068
  %2082 = fmul fast float %2078, %2079
  %2083 = fmul fast float %2078, %2080
  %2084 = fmul fast float %2078, %2081
  %2085 = fadd fast float %2082, %2066
  %2086 = fadd fast float %2083, %2067
  %2087 = fadd fast float %2084, %2068
  %2088 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %2089 = extractvalue %dx.types.CBufRet.f32 %2088, 0
  %2090 = extractvalue %dx.types.CBufRet.f32 %2088, 1
  %2091 = fadd fast float %2090, %2089
  %2092 = call float @dx.op.unary.f32(i32 7, float %2091)  ; Saturate(value)
  %2093 = extractvalue %dx.types.CBufRet.f32 %2088, 2
  %2094 = extractvalue %dx.types.CBufRet.f32 %2088, 3
  %2095 = fadd fast float %2094, %2093
  %2096 = call float @dx.op.unary.f32(i32 7, float %2095)  ; Saturate(value)
  %2097 = fmul fast float %2092, %2076
  %2098 = fmul fast float %2097, %2096
  br label %2099

; <label>:2099                                    ; preds = %2060, %1979, %1814, %1796, %1794
  %2100 = phi float [ %1823, %1814 ], [ %1982, %1979 ], [ %2064, %2060 ], [ 0.000000e+00, %1794 ], [ 0.000000e+00, %1796 ]
  %2101 = phi float [ %1857, %1814 ], [ %2016, %1979 ], [ %2098, %2060 ], [ 0.000000e+00, %1794 ], [ 0.000000e+00, %1796 ]
  %2102 = phi float [ %1844, %1814 ], [ %2003, %1979 ], [ %2085, %2060 ], [ 0.000000e+00, %1794 ], [ 0.000000e+00, %1796 ]
  %2103 = phi float [ %1845, %1814 ], [ %2004, %1979 ], [ %2086, %2060 ], [ 0.000000e+00, %1794 ], [ 0.000000e+00, %1796 ]
  %2104 = phi float [ %1846, %1814 ], [ %2005, %1979 ], [ %2087, %2060 ], [ 0.000000e+00, %1794 ], [ 0.000000e+00, %1796 ]
  %2105 = fmul fast float %1737, %2101
  %2106 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2107 = extractvalue %dx.types.CBufRet.f32 %2106, 2
  %2108 = fsub fast float %1744, %2107
  %2109 = fcmp fast olt float %2105, -2.000000e+01
  %2110 = call float @dx.op.unary.f32(i32 21, float %2105)  ; Exp(value)
  %2111 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %2112 = extractvalue %dx.types.CBufRet.f32 %2111, 2
  %2113 = extractvalue %dx.types.CBufRet.f32 %2111, 3
  %2114 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %2115 = extractvalue %dx.types.CBufRet.f32 %2114, 2
  %2116 = fmul fast float %2113, %2108
  %2117 = call float @dx.op.unary.f32(i32 7, float %2116)  ; Saturate(value)
  %2118 = fsub fast float 1.000000e+00, %2117
  %2119 = fmul fast float %1729, 5.000000e-01
  %2120 = fadd fast float %2119, 5.000000e-01
  %2121 = call float @dx.op.unary.f32(i32 7, float %2120)  ; Saturate(value)
  %2122 = fsub fast float 1.000000e+00, %2121
  %2123 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %2118)  ; FMax(a,b)
  %2124 = fdiv fast float %2122, %2123
  %2125 = fsub fast float %2108, %1695
  %2126 = call float @dx.op.unary.f32(i32 6, float %2125)  ; FAbs(value)
  %2127 = fmul fast float %2126, %2112
  %2128 = call float @dx.op.unary.f32(i32 7, float %2124)  ; Saturate(value)
  %2129 = fsub fast float 1.000000e+00, %2127
  %2130 = fmul fast float %2129, %2128
  %2131 = fadd fast float %2130, %2127
  %2132 = fmul fast float %2115, %2108
  %2133 = call float @dx.op.unary.f32(i32 7, float %2132)  ; Saturate(value)
  %2134 = fsub fast float 1.000000e+00, %2131
  %2135 = fmul fast float %2134, %2133
  %2136 = fadd fast float %2135, %2131
  %2137 = call float @dx.op.unary.f32(i32 7, float %2136)  ; Saturate(value)
  %2138 = fadd fast float %2110, -1.000000e+00
  %2139 = select i1 %2109, float -1.000000e+00, float %2138
  %2140 = fmul fast float %2137, %2139
  %2141 = fadd fast float %2140, 1.000000e+00
  %2142 = fsub fast float -0.000000e+00, %2140
  %2143 = fmul fast float %2102, %2142
  %2144 = fmul fast float %2103, %2142
  %2145 = fmul fast float %2104, %2142
  br label %2146

; <label>:2146                                    ; preds = %2099, %1648
  %2147 = phi float [ %2100, %2099 ], [ 0.000000e+00, %1648 ]
  %2148 = phi float [ %2141, %2099 ], [ 1.000000e+00, %1648 ]
  %2149 = phi float [ %2143, %2099 ], [ 0.000000e+00, %1648 ]
  %2150 = phi float [ %2144, %2099 ], [ 0.000000e+00, %1648 ]
  %2151 = phi float [ %2145, %2099 ], [ 0.000000e+00, %1648 ]
  %2152 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %2153 = extractvalue %dx.types.CBufRet.f32 %2152, 1
  %2154 = fsub fast float 1.000000e+00, %2148
  %2155 = fmul fast float %2154, %1730
  %2156 = fmul fast float %2155, %2153
  %2157 = fsub fast float %1730, %2156
  br i1 %1723, label %2158, label %2187, !dx.controlflow.hints !113

; <label>:2158                                    ; preds = %2146
  %2159 = fmul fast float %1731, %1720
  %2160 = fadd fast float %2159, %1721
  %2161 = call float @dx.op.unary.f32(i32 7, float %2160)  ; Saturate(value)
  %2162 = fmul fast float %1702, %2157
  %2163 = fsub fast float -0.000000e+00, %2162
  %2164 = fmul fast float %1703, %2157
  %2165 = fsub fast float -0.000000e+00, %2164
  %2166 = call float @dx.op.unary.f32(i32 21, float %2163)  ; Exp(value)
  %2167 = call float @dx.op.unary.f32(i32 21, float %2165)  ; Exp(value)
  %2168 = call float @dx.op.binary.f32(i32 35, float %1710, float %2166)  ; FMax(a,b)
  %2169 = call float @dx.op.binary.f32(i32 35, float %1710, float %2167)  ; FMax(a,b)
  %2170 = fsub fast float %2169, %2168
  %2171 = fmul fast float %2170, %2161
  %2172 = fadd fast float %2171, %2168
  %2173 = call float @dx.op.unary.f32(i32 7, float %2172)  ; Saturate(value)
  %2174 = fsub fast float %1707, %1712
  %2175 = fsub fast float %1708, %1713
  %2176 = fsub fast float %1709, %1714
  %2177 = fmul fast float %2161, %2174
  %2178 = fmul fast float %2161, %2175
  %2179 = fmul fast float %2161, %2176
  %2180 = fadd fast float %2177, %1712
  %2181 = fadd fast float %2178, %1713
  %2182 = fadd fast float %2179, %1714
  %2183 = fsub fast float 1.000000e+00, %2173
  %2184 = fmul fast float %2183, %2180
  %2185 = fmul fast float %2183, %2181
  %2186 = fmul fast float %2183, %2182
  br label %2246

; <label>:2187                                    ; preds = %2146
  %2188 = fmul fast float %2157, %1719
  %2189 = call float @dx.op.unary.f32(i32 7, float %2188)  ; Saturate(value)
  %2190 = fsub fast float 2.000000e+00, %2189
  %2191 = fmul fast float %2189, 9.921875e-01
  %2192 = fmul fast float %2191, %2190
  %2193 = fadd fast float %2192, 3.906250e-03
  %2194 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %18, float %2193, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2195 = extractvalue %dx.types.ResRet.f32 %2194, 0
  %2196 = fsub fast float %2189, %2195
  %2197 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2196)  ; FMax(a,b)
  %2198 = fmul fast float %1705, %1695
  %2199 = call float @dx.op.unary.f32(i32 6, float %2198)  ; FAbs(value)
  %2200 = fcmp fast ogt float %2199, 0x3EB0C6F7A0000000
  br i1 %2200, label %2201, label %2207, !dx.controlflow.hints !114

; <label>:2201                                    ; preds = %2187
  %2202 = fmul fast float %2198, 0xBFF7154760000000
  %2203 = call float @dx.op.unary.f32(i32 21, float %2202)  ; Exp(value)
  %2204 = fsub fast float 1.000000e+00, %2203
  %2205 = fdiv fast float %2204, %2198
  %2206 = fmul fast float %2205, %1715
  br label %2207

; <label>:2207                                    ; preds = %2201, %2187
  %2208 = phi float [ %2206, %2201 ], [ %1715, %2187 ]
  %2209 = fadd fast float %2208, %1717
  %2210 = fmul fast float %2209, %2197
  %2211 = fmul fast float %1702, %2210
  %2212 = fsub fast float -0.000000e+00, %2211
  %2213 = fmul fast float %1703, %2210
  %2214 = fsub fast float -0.000000e+00, %2213
  %2215 = fmul fast float %1704, %2210
  %2216 = fsub fast float -0.000000e+00, %2215
  %2217 = call float @dx.op.unary.f32(i32 21, float %2212)  ; Exp(value)
  %2218 = call float @dx.op.unary.f32(i32 21, float %2214)  ; Exp(value)
  %2219 = call float @dx.op.unary.f32(i32 21, float %2216)  ; Exp(value)
  %2220 = fmul fast float %1731, %1731
  %2221 = fadd fast float %2220, 1.000000e+00
  %2222 = fmul fast float %2221, 0x3FAE8EC8A0000000
  %2223 = fmul fast float %2222, %1712
  %2224 = fmul fast float %2222, %1713
  %2225 = fmul fast float %2222, %1714
  %2226 = fmul fast float %1731, %1710
  %2227 = fsub fast float 1.000000e+00, %2226
  %2228 = fmul fast float %1710, %1710
  %2229 = fsub fast float 1.000000e+00, %2228
  %2230 = fmul fast float %2229, 0x3FB45F3060000000
  %2231 = fmul fast float %2227, %2227
  %2232 = fdiv fast float 1.000000e+00, %2231
  %2233 = fmul fast float %2230, %2232
  %2234 = fmul fast float %2233, %1707
  %2235 = fmul fast float %2233, %1708
  %2236 = fmul fast float %2233, %1709
  %2237 = fadd fast float %2234, %2223
  %2238 = fadd fast float %2235, %2224
  %2239 = fadd fast float %2236, %2225
  %2240 = fsub fast float 1.000000e+00, %2217
  %2241 = fsub fast float 1.000000e+00, %2218
  %2242 = fsub fast float 1.000000e+00, %2219
  %2243 = fmul fast float %2237, %2240
  %2244 = fmul fast float %2238, %2241
  %2245 = fmul fast float %2239, %2242
  br label %2246

; <label>:2246                                    ; preds = %2207, %2158
  %2247 = phi float [ %2184, %2158 ], [ %2243, %2207 ]
  %2248 = phi float [ %2185, %2158 ], [ %2244, %2207 ]
  %2249 = phi float [ %2186, %2158 ], [ %2245, %2207 ]
  %2250 = phi float [ %2173, %2158 ], [ %2217, %2207 ]
  %2251 = phi float [ %2173, %2158 ], [ %2218, %2207 ]
  %2252 = phi float [ %2173, %2158 ], [ %2219, %2207 ]
  br i1 %1739, label %2253, label %2451, !dx.controlflow.hints !115

; <label>:2253                                    ; preds = %2246
  %2254 = extractvalue %dx.types.CBufRet.f32 %2152, 0
  %2255 = fmul fast float %2254, %2154
  %2256 = fsub fast float %2149, %2247
  %2257 = fsub fast float %2150, %2248
  %2258 = fsub fast float %2151, %2249
  %2259 = fmul fast float %2255, %2256
  %2260 = fmul fast float %2255, %2257
  %2261 = fmul fast float %2255, %2258
  %2262 = fadd fast float %2259, %2247
  %2263 = fadd fast float %2260, %2248
  %2264 = fadd fast float %2261, %2249
  %2265 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %2250)  ; FMax(a,b)
  %2266 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %2251)  ; FMax(a,b)
  %2267 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %2252)  ; FMax(a,b)
  %2268 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %2148)  ; FMax(a,b)
  %2269 = call float @dx.op.binary.f32(i32 35, float %2147, float %2157)  ; FMax(a,b)
  %2270 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %2269)  ; FMax(a,b)
  %2271 = fdiv fast float %2147, %2270
  %2272 = call float @dx.op.unary.f32(i32 7, float %2271)  ; Saturate(value)
  %2273 = fdiv fast float %2157, %2270
  %2274 = call float @dx.op.unary.f32(i32 7, float %2273)  ; Saturate(value)
  %2275 = fcmp fast une float %2268, 1.000000e+00
  br i1 %2275, label %2276, label %2289, !dx.controlflow.hints !116

; <label>:2276                                    ; preds = %2253
  %2277 = call float @dx.op.unary.f32(i32 23, float %2268)  ; Log(value)
  %2278 = fmul fast float %2277, 0x3FE62E4300000000
  %2279 = fmul fast float %2149, %2278
  %2280 = fsub fast float -0.000000e+00, %2279
  %2281 = fmul fast float %2150, %2278
  %2282 = fsub fast float -0.000000e+00, %2281
  %2283 = fmul fast float %2151, %2278
  %2284 = fsub fast float -0.000000e+00, %2283
  %2285 = fsub fast float 1.000000e+00, %2268
  %2286 = fdiv fast float %2280, %2285
  %2287 = fdiv fast float %2282, %2285
  %2288 = fdiv fast float %2284, %2285
  br label %2289

; <label>:2289                                    ; preds = %2276, %2253
  %2290 = phi float [ %2286, %2276 ], [ %2149, %2253 ]
  %2291 = phi float [ %2287, %2276 ], [ %2150, %2253 ]
  %2292 = phi float [ %2288, %2276 ], [ %2151, %2253 ]
  %2293 = phi float [ %2278, %2276 ], [ 0.000000e+00, %2253 ]
  %2294 = fcmp fast une float %2265, 1.000000e+00
  br i1 %2294, label %2295, label %2302, !dx.controlflow.hints !117

; <label>:2295                                    ; preds = %2289
  %2296 = call float @dx.op.unary.f32(i32 23, float %2265)  ; Log(value)
  %2297 = fmul fast float %2296, 0x3FE62E4300000000
  %2298 = fmul fast float %2262, %2297
  %2299 = fsub fast float -0.000000e+00, %2298
  %2300 = fsub fast float 1.000000e+00, %2265
  %2301 = fdiv fast float %2299, %2300
  br label %2302

; <label>:2302                                    ; preds = %2295, %2289
  %2303 = phi float [ %2301, %2295 ], [ %2262, %2289 ]
  %2304 = phi float [ %2297, %2295 ], [ 0.000000e+00, %2289 ]
  %2305 = fcmp fast une float %2266, 1.000000e+00
  br i1 %2305, label %2306, label %2313, !dx.controlflow.hints !117

; <label>:2306                                    ; preds = %2302
  %2307 = call float @dx.op.unary.f32(i32 23, float %2266)  ; Log(value)
  %2308 = fmul fast float %2307, 0x3FE62E4300000000
  %2309 = fmul fast float %2263, %2308
  %2310 = fsub fast float -0.000000e+00, %2309
  %2311 = fsub fast float 1.000000e+00, %2266
  %2312 = fdiv fast float %2310, %2311
  br label %2313

; <label>:2313                                    ; preds = %2306, %2302
  %2314 = phi float [ %2312, %2306 ], [ %2263, %2302 ]
  %2315 = phi float [ %2308, %2306 ], [ 0.000000e+00, %2302 ]
  %2316 = fcmp fast une float %2267, 1.000000e+00
  br i1 %2316, label %2317, label %2324, !dx.controlflow.hints !117

; <label>:2317                                    ; preds = %2313
  %2318 = call float @dx.op.unary.f32(i32 23, float %2267)  ; Log(value)
  %2319 = fmul fast float %2318, 0x3FE62E4300000000
  %2320 = fmul fast float %2264, %2319
  %2321 = fsub fast float -0.000000e+00, %2320
  %2322 = fsub fast float 1.000000e+00, %2267
  %2323 = fdiv fast float %2321, %2322
  br label %2324

; <label>:2324                                    ; preds = %2317, %2313
  %2325 = phi float [ %2323, %2317 ], [ %2264, %2313 ]
  %2326 = phi float [ %2319, %2317 ], [ 0.000000e+00, %2313 ]
  %2327 = fmul fast float %2290, %2274
  %2328 = fmul fast float %2291, %2274
  %2329 = fmul fast float %2292, %2274
  %2330 = fmul fast float %2293, %2274
  %2331 = fmul fast float %2303, %2272
  %2332 = fmul fast float %2314, %2272
  %2333 = fmul fast float %2325, %2272
  %2334 = fmul fast float %2304, %2272
  %2335 = fmul fast float %2315, %2272
  %2336 = fmul fast float %2326, %2272
  %2337 = fadd fast float %2331, %2327
  %2338 = fadd fast float %2332, %2328
  %2339 = fadd fast float %2333, %2329
  %2340 = fadd fast float %2334, %2330
  %2341 = fadd fast float %2335, %2330
  %2342 = fadd fast float %2336, %2330
  %2343 = fcmp fast une float %2340, 0.000000e+00
  br i1 %2343, label %2344, label %2351, !dx.controlflow.hints !118

; <label>:2344                                    ; preds = %2324
  %2345 = fmul fast float %2340, 0x3FF7154760000000
  %2346 = call float @dx.op.unary.f32(i32 21, float %2345)  ; Exp(value)
  %2347 = fsub fast float 1.000000e+00, %2346
  %2348 = fmul fast float %2337, %2347
  %2349 = fsub fast float -0.000000e+00, %2348
  %2350 = fdiv fast float %2349, %2340
  br label %2351

; <label>:2351                                    ; preds = %2344, %2324
  %2352 = phi float [ %2346, %2344 ], [ 1.000000e+00, %2324 ]
  %2353 = phi float [ %2350, %2344 ], [ %2337, %2324 ]
  %2354 = fcmp fast une float %2341, 0.000000e+00
  br i1 %2354, label %2355, label %2362, !dx.controlflow.hints !118

; <label>:2355                                    ; preds = %2351
  %2356 = fmul fast float %2341, 0x3FF7154760000000
  %2357 = call float @dx.op.unary.f32(i32 21, float %2356)  ; Exp(value)
  %2358 = fsub fast float 1.000000e+00, %2357
  %2359 = fmul fast float %2338, %2358
  %2360 = fsub fast float -0.000000e+00, %2359
  %2361 = fdiv fast float %2360, %2341
  br label %2362

; <label>:2362                                    ; preds = %2355, %2351
  %2363 = phi float [ %2357, %2355 ], [ 1.000000e+00, %2351 ]
  %2364 = phi float [ %2361, %2355 ], [ %2338, %2351 ]
  %2365 = fcmp fast une float %2342, 0.000000e+00
  br i1 %2365, label %2366, label %2373, !dx.controlflow.hints !118

; <label>:2366                                    ; preds = %2362
  %2367 = fmul fast float %2342, 0x3FF7154760000000
  %2368 = call float @dx.op.unary.f32(i32 21, float %2367)  ; Exp(value)
  %2369 = fsub fast float 1.000000e+00, %2368
  %2370 = fmul fast float %2339, %2369
  %2371 = fsub fast float -0.000000e+00, %2370
  %2372 = fdiv fast float %2371, %2342
  br label %2373

; <label>:2373                                    ; preds = %2366, %2362
  %2374 = phi float [ %2368, %2366 ], [ 1.000000e+00, %2362 ]
  %2375 = phi float [ %2372, %2366 ], [ %2339, %2362 ]
  %2376 = fcmp fast ogt float %2272, %2274
  br i1 %2376, label %2377, label %2397, !dx.controlflow.hints !119

; <label>:2377                                    ; preds = %2373
  %2378 = fsub fast float 1.000000e+00, %2274
  %2379 = fmul fast float %2290, %2378
  %2380 = fmul fast float %2291, %2378
  %2381 = fmul fast float %2292, %2378
  %2382 = fmul fast float %2293, %2378
  %2383 = fcmp fast une float %2382, 0.000000e+00
  br i1 %2383, label %2384, label %2435, !dx.controlflow.hints !120

; <label>:2384                                    ; preds = %2377
  %2385 = fmul fast float %2382, 0x3FF7154760000000
  %2386 = call float @dx.op.unary.f32(i32 21, float %2385)  ; Exp(value)
  %2387 = fsub fast float 1.000000e+00, %2386
  %2388 = fmul fast float %2379, %2387
  %2389 = fsub fast float -0.000000e+00, %2388
  %2390 = fmul fast float %2380, %2387
  %2391 = fsub fast float -0.000000e+00, %2390
  %2392 = fmul fast float %2381, %2387
  %2393 = fsub fast float -0.000000e+00, %2392
  %2394 = fdiv fast float %2389, %2382
  %2395 = fdiv fast float %2391, %2382
  %2396 = fdiv fast float %2393, %2382
  br label %2435

; <label>:2397                                    ; preds = %2373
  %2398 = fsub fast float 1.000000e+00, %2272
  %2399 = fmul fast float %2303, %2398
  %2400 = fmul fast float %2314, %2398
  %2401 = fmul fast float %2325, %2398
  %2402 = fmul fast float %2304, %2398
  %2403 = fmul fast float %2315, %2398
  %2404 = fmul fast float %2326, %2398
  %2405 = fcmp fast une float %2402, 0.000000e+00
  br i1 %2405, label %2406, label %2413, !dx.controlflow.hints !118

; <label>:2406                                    ; preds = %2397
  %2407 = fmul fast float %2402, 0x3FF7154760000000
  %2408 = call float @dx.op.unary.f32(i32 21, float %2407)  ; Exp(value)
  %2409 = fsub fast float 1.000000e+00, %2408
  %2410 = fmul fast float %2399, %2409
  %2411 = fsub fast float -0.000000e+00, %2410
  %2412 = fdiv fast float %2411, %2402
  br label %2413

; <label>:2413                                    ; preds = %2406, %2397
  %2414 = phi float [ %2412, %2406 ], [ %2399, %2397 ]
  %2415 = phi float [ %2408, %2406 ], [ 1.000000e+00, %2397 ]
  %2416 = fcmp fast une float %2403, 0.000000e+00
  br i1 %2416, label %2417, label %2424, !dx.controlflow.hints !118

; <label>:2417                                    ; preds = %2413
  %2418 = fmul fast float %2403, 0x3FF7154760000000
  %2419 = call float @dx.op.unary.f32(i32 21, float %2418)  ; Exp(value)
  %2420 = fsub fast float 1.000000e+00, %2419
  %2421 = fmul fast float %2400, %2420
  %2422 = fsub fast float -0.000000e+00, %2421
  %2423 = fdiv fast float %2422, %2403
  br label %2424

; <label>:2424                                    ; preds = %2417, %2413
  %2425 = phi float [ %2423, %2417 ], [ %2400, %2413 ]
  %2426 = phi float [ %2419, %2417 ], [ 1.000000e+00, %2413 ]
  %2427 = fcmp fast une float %2404, 0.000000e+00
  br i1 %2427, label %2428, label %2435, !dx.controlflow.hints !118

; <label>:2428                                    ; preds = %2424
  %2429 = fmul fast float %2404, 0x3FF7154760000000
  %2430 = call float @dx.op.unary.f32(i32 21, float %2429)  ; Exp(value)
  %2431 = fsub fast float 1.000000e+00, %2430
  %2432 = fmul fast float %2401, %2431
  %2433 = fsub fast float -0.000000e+00, %2432
  %2434 = fdiv fast float %2433, %2404
  br label %2435

; <label>:2435                                    ; preds = %2428, %2424, %2384, %2377
  %2436 = phi float [ %2434, %2428 ], [ %2396, %2384 ], [ %2381, %2377 ], [ %2401, %2424 ]
  %2437 = phi float [ %2425, %2428 ], [ %2395, %2384 ], [ %2380, %2377 ], [ %2425, %2424 ]
  %2438 = phi float [ %2414, %2428 ], [ %2394, %2384 ], [ %2379, %2377 ], [ %2414, %2424 ]
  %2439 = phi float [ %2430, %2428 ], [ %2386, %2384 ], [ 1.000000e+00, %2377 ], [ 1.000000e+00, %2424 ]
  %2440 = phi float [ %2426, %2428 ], [ %2386, %2384 ], [ 1.000000e+00, %2377 ], [ %2426, %2424 ]
  %2441 = phi float [ %2415, %2428 ], [ %2386, %2384 ], [ 1.000000e+00, %2377 ], [ %2415, %2424 ]
  %2442 = fmul fast float %2441, %2353
  %2443 = fmul fast float %2440, %2364
  %2444 = fmul fast float %2439, %2375
  %2445 = fadd fast float %2442, %2438
  %2446 = fadd fast float %2443, %2437
  %2447 = fadd fast float %2444, %2436
  %2448 = fmul fast float %2441, %2352
  %2449 = fmul fast float %2440, %2363
  %2450 = fmul fast float %2439, %2374
  br label %2451

; <label>:2451                                    ; preds = %2435, %2246
  %2452 = phi float [ %2252, %2246 ], [ %2450, %2435 ]
  %2453 = phi float [ %2251, %2246 ], [ %2449, %2435 ]
  %2454 = phi float [ %2250, %2246 ], [ %2448, %2435 ]
  %2455 = phi float [ %2249, %2246 ], [ %2447, %2435 ]
  %2456 = phi float [ %2248, %2246 ], [ %2446, %2435 ]
  %2457 = phi float [ %2247, %2246 ], [ %2445, %2435 ]
  %2458 = fmul fast float %2454, %1595
  %2459 = fmul fast float %2453, %1596
  %2460 = fmul fast float %2452, %1597
  %2461 = fsub fast float 1.000000e+00, %1658
  %2462 = fmul fast float %2457, %2461
  %2463 = fmul fast float %2456, %2461
  %2464 = fmul fast float %2455, %2461
  %2465 = fadd fast float %2462, %2458
  %2466 = fadd fast float %2463, %2459
  %2467 = fadd fast float %2464, %2460
  %2468 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 423)  ; CBufferLoadLegacy(handle,regIndex)
  %2469 = extractvalue %dx.types.CBufRet.f32 %2468, 2
  %2470 = fmul fast float %2469, %1668
  %2471 = call float @dx.op.unary.f32(i32 7, float %2470)  ; Saturate(value)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %3, i32 %21, i32 %22, i32 undef, float %1658, float %1658, float %1658, float %1658, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %2472 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2473 = extractvalue %dx.types.CBufRet.f32 %2472, 0
  %2474 = fmul fast float %2473, %2465
  %2475 = fmul fast float %2473, %2466
  %2476 = fmul fast float %2473, %2467
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %4, i32 %21, i32 %22, i32 undef, float %2474, float %2475, float %2476, float %2474, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %21, i32 %22, i32 undef, float %2471, float %2471, float %2471, float %2471, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
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
!31 = !{void ()* @cs_fog_raymarching_clouds_heightmap, !"cs_fog_raymarching_clouds_heightmap", null, !4, !32}
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
!51 = distinct !{!51, !"dx.controlflow.hints", i32 2}
!52 = distinct !{!52, !"dx.controlflow.hints", i32 2}
!53 = distinct !{!53, !"dx.controlflow.hints", i32 2}
!54 = distinct !{!54, !"dx.controlflow.hints", i32 2}
!55 = distinct !{!55, !"dx.controlflow.hints", i32 2}
!56 = distinct !{!56, !"dx.controlflow.hints", i32 2}
!57 = distinct !{!57, !"dx.controlflow.hints", i32 2}
!58 = distinct !{!58, !"dx.controlflow.hints", i32 1}
!59 = distinct !{!59, !"dx.controlflow.hints", i32 1}
!60 = distinct !{!60, !"dx.controlflow.hints", i32 2}
!61 = distinct !{!61, !"dx.controlflow.hints", i32 2}
!62 = distinct !{!62, !"dx.controlflow.hints", i32 2}
!63 = distinct !{!63, !"dx.controlflow.hints", i32 2}
!64 = distinct !{!64, !"dx.controlflow.hints", i32 2}
!65 = distinct !{!65, !"dx.controlflow.hints", i32 2}
!66 = distinct !{!66, !"dx.controlflow.hints", i32 1}
!67 = distinct !{!67, !"dx.controlflow.hints", i32 2}
!68 = distinct !{!68, !"dx.controlflow.hints", i32 2}
!69 = distinct !{!69, !"dx.controlflow.hints", i32 2}
!70 = distinct !{!70, !"dx.controlflow.hints", i32 2}
!71 = distinct !{!71, !"dx.controlflow.hints", i32 2}
!72 = distinct !{!72, !"dx.controlflow.hints", i32 2}
!73 = distinct !{!73, !"dx.controlflow.hints", i32 2}
!74 = distinct !{!74, !"dx.controlflow.hints", i32 2}
!75 = !{!76, !76, i64 0}
!76 = !{!"float", !77, i64 0}
!77 = !{!"omnipotent char", !78, i64 0}
!78 = !{!"Simple C/C++ TBAA"}
!79 = !{!80, !82, !84, !85, !87, !88, !89}
!80 = distinct !{!80, !81, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z: %cFogParams"}
!81 = distinct !{!81, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z"}
!82 = distinct !{!82, !83, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %scattering"}
!83 = distinct !{!83, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z"}
!84 = distinct !{!84, !83, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %extinction"}
!85 = distinct !{!85, !86, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z: %scattering"}
!86 = distinct !{!86, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z"}
!87 = distinct !{!87, !86, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z: %transmission"}
!88 = distinct !{!88, !86, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z: %depthDensityWeighted"}
!89 = distinct !{!89, !86, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z: %rawShadowmapData"}
!90 = distinct !{!90, !"dx.controlflow.hints", i32 2}
!91 = !{!92}
!92 = distinct !{!92, !93, !"\01?sort@@YAXAIAM00@Z: %c"}
!93 = distinct !{!93, !"\01?sort@@YAXAIAM00@Z"}
!94 = !{!95, !96, !80, !82, !84, !85, !87, !88, !89}
!95 = distinct !{!95, !93, !"\01?sort@@YAXAIAM00@Z: %a"}
!96 = distinct !{!96, !93, !"\01?sort@@YAXAIAM00@Z: %b"}
!97 = !{!96}
!98 = !{!95, !92, !80, !82, !84, !85, !87, !88, !89}
!99 = !{!95}
!100 = !{!96, !92, !80, !82, !84, !85, !87, !88, !89}
!101 = !{!102}
!102 = distinct !{!102, !103, !"\01?sort@@YAXAIAM00@Z: %c"}
!103 = distinct !{!103, !"\01?sort@@YAXAIAM00@Z"}
!104 = !{!105, !106, !80, !82, !84, !85, !87, !88, !89}
!105 = distinct !{!105, !103, !"\01?sort@@YAXAIAM00@Z: %a"}
!106 = distinct !{!106, !103, !"\01?sort@@YAXAIAM00@Z: %b"}
!107 = !{!106}
!108 = !{!105, !102, !80, !82, !84, !85, !87, !88, !89}
!109 = !{!105}
!110 = !{!106, !102, !80, !82, !84, !85, !87, !88, !89}
!111 = distinct !{!111, !"dx.controlflow.hints", i32 2}
!112 = distinct !{!112, !"dx.controlflow.hints", i32 2}
!113 = distinct !{!113, !"dx.controlflow.hints", i32 1}
!114 = distinct !{!114, !"dx.controlflow.hints", i32 2}
!115 = distinct !{!115, !"dx.controlflow.hints", i32 1}
!116 = distinct !{!116, !"dx.controlflow.hints", i32 1}
!117 = distinct !{!117, !"dx.controlflow.hints", i32 1}
!118 = distinct !{!118, !"dx.controlflow.hints", i32 1}
!119 = distinct !{!119, !"dx.controlflow.hints", i32 2}
!120 = distinct !{!120, !"dx.controlflow.hints", i32 1}

