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
; shader hash: 9db76abcd35e63b6e87841a2ec9d7ddd
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
;                                   texture     f32          2d      T0            t16     1
;                                   texture     f32          3d      T1             t1     1
;                                   texture     f32          3d      T2             t2     1
;                                   texture     f32          2d      T3             t8     1
;                                   texture     f32          2d      T4             t9     1
;                                   texture     f32          2d      T5            t13     1
;                                   texture     f32          2d      T6             t0     1
;                                   texture    byte         r/o      T7            t17     1
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
%"class.Texture2D<vector<float, 4> >" = type { <4 x float>, %"class.Texture2D<vector<float, 4> >::mips_type" }
%"class.Texture2D<vector<float, 4> >::mips_type" = type { i32 }
%"class.Texture3D<float>" = type { float, %"class.Texture3D<float>::mips_type" }
%"class.Texture3D<float>::mips_type" = type { i32 }
%"class.Texture3D<vector<float, 4> >" = type { <4 x float>, %"class.Texture3D<vector<float, 4> >::mips_type" }
%"class.Texture3D<vector<float, 4> >::mips_type" = type { i32 }
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

define void @cs_fog_raymarching_air_clouds_heightmap() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 3, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 17, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 13, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 9, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 16, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 3, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call i32 @dx.op.threadId.i32(i32 93, i32 0)  ; ThreadId(component)
  %20 = call i32 @dx.op.threadId.i32(i32 93, i32 1)  ; ThreadId(component)
  %21 = call i32 @dx.op.flattenedThreadIdInGroup.i32(i32 96)  ; FlattenedThreadIdInGroup()
  %22 = alloca [3 x float], align 4
  %23 = alloca [3 x float], align 4
  %24 = add i32 %20, %19
  %25 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %18, i32 361)  ; CBufferLoadLegacy(handle,regIndex)
  %26 = extractvalue %dx.types.CBufRet.i32 %25, 1
  %27 = add i32 %24, %26
  %28 = lshr i32 %27, 1
  %29 = and i32 %28, 1
  %30 = and i32 %27, 1
  %31 = xor i32 %29, %30
  %32 = shl i32 %19, 1
  %33 = shl i32 %20, 1
  %34 = or i32 %31, %32
  %35 = or i32 %29, %33
  %36 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 48, i32 undef)  ; BufferLoad(srv,index,wot)
  %37 = extractvalue %dx.types.ResRet.i32 %36, 0
  %38 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 32, i32 undef)  ; BufferLoad(srv,index,wot)
  %39 = extractvalue %dx.types.ResRet.i32 %38, 0
  %40 = extractvalue %dx.types.ResRet.i32 %38, 1
  %41 = extractvalue %dx.types.ResRet.i32 %38, 2
  %42 = extractvalue %dx.types.ResRet.i32 %38, 3
  %43 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %44 = extractvalue %dx.types.ResRet.i32 %43, 0
  %45 = extractvalue %dx.types.ResRet.i32 %43, 1
  %46 = extractvalue %dx.types.ResRet.i32 %43, 2
  %47 = extractvalue %dx.types.ResRet.i32 %43, 3
  %48 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %49 = extractvalue %dx.types.ResRet.i32 %48, 0
  %50 = extractvalue %dx.types.ResRet.i32 %48, 1
  %51 = extractvalue %dx.types.ResRet.i32 %48, 2
  %52 = extractvalue %dx.types.ResRet.i32 %48, 3
  %53 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 396)  ; CBufferLoadLegacy(handle,regIndex)
  %54 = extractvalue %dx.types.CBufRet.f32 %53, 2
  %55 = fmul fast float %54, %54
  %56 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %57 = extractvalue %dx.types.CBufRet.f32 %56, 0
  %58 = extractvalue %dx.types.CBufRet.f32 %56, 1
  %59 = extractvalue %dx.types.CBufRet.f32 %56, 2
  %60 = fmul fast float %59, 0x3FF17B1420000000
  %61 = icmp eq i32 %21, 0
  br i1 %61, label %62, label %203, !dx.controlflow.hints !32

; <label>:62                                      ; preds = %0
  %63 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %64 = extractvalue %dx.types.CBufRet.f32 %63, 0
  %65 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %66 = extractvalue %dx.types.CBufRet.f32 %65, 3
  %67 = extractvalue %dx.types.ResRet.i32 %36, 1
  %68 = and i32 %67, 65535
  %69 = call float @dx.op.legacyF16ToF32(i32 131, i32 %68)  ; LegacyF16ToF32(value)
  %70 = lshr i32 %37, 16
  %71 = call float @dx.op.legacyF16ToF32(i32 131, i32 %70)  ; LegacyF16ToF32(value)
  %72 = and i32 %37, 65535
  %73 = call float @dx.op.legacyF16ToF32(i32 131, i32 %72)  ; LegacyF16ToF32(value)
  %74 = lshr i32 %42, 16
  %75 = call float @dx.op.legacyF16ToF32(i32 131, i32 %74)  ; LegacyF16ToF32(value)
  %76 = and i32 %42, 65535
  %77 = call float @dx.op.legacyF16ToF32(i32 131, i32 %76)  ; LegacyF16ToF32(value)
  %78 = lshr i32 %41, 16
  %79 = call float @dx.op.legacyF16ToF32(i32 131, i32 %78)  ; LegacyF16ToF32(value)
  %80 = and i32 %41, 65535
  %81 = call float @dx.op.legacyF16ToF32(i32 131, i32 %80)  ; LegacyF16ToF32(value)
  %82 = lshr i32 %40, 16
  %83 = call float @dx.op.legacyF16ToF32(i32 131, i32 %82)  ; LegacyF16ToF32(value)
  %84 = lshr i32 %39, 16
  %85 = call float @dx.op.legacyF16ToF32(i32 131, i32 %84)  ; LegacyF16ToF32(value)
  %86 = and i32 %39, 65535
  %87 = call float @dx.op.legacyF16ToF32(i32 131, i32 %86)  ; LegacyF16ToF32(value)
  %88 = lshr i32 %47, 16
  %89 = call float @dx.op.legacyF16ToF32(i32 131, i32 %88)  ; LegacyF16ToF32(value)
  %90 = and i32 %47, 65535
  %91 = call float @dx.op.legacyF16ToF32(i32 131, i32 %90)  ; LegacyF16ToF32(value)
  %92 = lshr i32 %46, 16
  %93 = call float @dx.op.legacyF16ToF32(i32 131, i32 %92)  ; LegacyF16ToF32(value)
  %94 = and i32 %46, 65535
  %95 = call float @dx.op.legacyF16ToF32(i32 131, i32 %94)  ; LegacyF16ToF32(value)
  %96 = lshr i32 %45, 16
  %97 = call float @dx.op.legacyF16ToF32(i32 131, i32 %96)  ; LegacyF16ToF32(value)
  %98 = and i32 %45, 65535
  %99 = call float @dx.op.legacyF16ToF32(i32 131, i32 %98)  ; LegacyF16ToF32(value)
  %100 = and i32 %44, 65535
  %101 = call float @dx.op.legacyF16ToF32(i32 131, i32 %100)  ; LegacyF16ToF32(value)
  %102 = lshr i32 %52, 16
  %103 = call float @dx.op.legacyF16ToF32(i32 131, i32 %102)  ; LegacyF16ToF32(value)
  %104 = and i32 %52, 65535
  %105 = call float @dx.op.legacyF16ToF32(i32 131, i32 %104)  ; LegacyF16ToF32(value)
  %106 = lshr i32 %51, 16
  %107 = call float @dx.op.legacyF16ToF32(i32 131, i32 %106)  ; LegacyF16ToF32(value)
  %108 = and i32 %51, 65535
  %109 = call float @dx.op.legacyF16ToF32(i32 131, i32 %108)  ; LegacyF16ToF32(value)
  %110 = lshr i32 %50, 16
  %111 = call float @dx.op.legacyF16ToF32(i32 131, i32 %110)  ; LegacyF16ToF32(value)
  %112 = and i32 %50, 65535
  %113 = call float @dx.op.legacyF16ToF32(i32 131, i32 %112)  ; LegacyF16ToF32(value)
  %114 = lshr i32 %49, 16
  %115 = call float @dx.op.legacyF16ToF32(i32 131, i32 %114)  ; LegacyF16ToF32(value)
  %116 = and i32 %40, 65535
  %117 = call float @dx.op.legacyF16ToF32(i32 131, i32 %116)  ; LegacyF16ToF32(value)
  %118 = lshr i32 %44, 16
  %119 = call float @dx.op.legacyF16ToF32(i32 131, i32 %118)  ; LegacyF16ToF32(value)
  %120 = and i32 %49, 65535
  %121 = call float @dx.op.legacyF16ToF32(i32 131, i32 %120)  ; LegacyF16ToF32(value)
  %122 = fmul fast float %117, 0x3FD20DD760000000
  %123 = fmul fast float %59, %54
  %124 = fmul fast float %123, %81
  %125 = fmul fast float %59, %59
  %126 = fmul fast float %125, 0x3FEE471020000000
  %127 = fadd fast float %126, 0xBFD42F6020000000
  %128 = fmul fast float %73, %127
  %129 = fmul fast float %79, %57
  %130 = fmul fast float %83, %58
  %131 = fmul fast float %57, %55
  %132 = fmul fast float %131, %60
  %133 = fmul fast float %132, %71
  %134 = fsub fast float -0.000000e+00, %133
  %135 = fmul fast float %58, %55
  %136 = fmul fast float %135, %60
  %137 = fmul fast float %136, %75
  %138 = fmul fast float %57, %57
  %139 = fmul fast float %58, %58
  %140 = fsub fast float %138, %139
  %141 = fmul fast float %140, 0x3FE17B1420000000
  %142 = fmul fast float %141, %69
  %143 = fmul fast float %58, 0x3FF17B1420000000
  %144 = fmul fast float %143, %57
  %145 = fmul fast float %144, %77
  %146 = fadd fast float %130, %129
  %147 = fmul fast float %146, %54
  %148 = fsub fast float %147, %124
  %149 = fmul fast float %148, 0x3FDF454380000000
  %150 = fadd fast float %128, %142
  %151 = fadd fast float %150, %145
  %152 = fmul fast float %151, %55
  %153 = fsub fast float %134, %137
  %154 = fadd fast float %153, %122
  %155 = fadd fast float %154, %149
  %156 = fadd fast float %155, %152
  %157 = fmul fast float %64, %66
  %158 = fmul fast float %157, %156
  %159 = fmul fast float %119, 0x3FD20DD760000000
  %160 = fmul fast float %123, %97
  %161 = fmul fast float %89, %127
  %162 = fmul fast float %95, %57
  %163 = fmul fast float %99, %58
  %164 = fmul fast float %132, %87
  %165 = fsub fast float -0.000000e+00, %164
  %166 = fmul fast float %136, %91
  %167 = fmul fast float %141, %85
  %168 = fmul fast float %144, %93
  %169 = fadd fast float %163, %162
  %170 = fmul fast float %169, %54
  %171 = fsub fast float %170, %160
  %172 = fmul fast float %171, 0x3FDF454380000000
  %173 = fadd fast float %161, %167
  %174 = fadd fast float %173, %168
  %175 = fmul fast float %174, %55
  %176 = fsub fast float %165, %166
  %177 = fadd fast float %176, %159
  %178 = fadd fast float %177, %172
  %179 = fadd fast float %178, %175
  %180 = fmul fast float %157, %179
  %181 = fmul fast float %121, 0x3FD20DD760000000
  %182 = fmul fast float %123, %113
  %183 = fmul fast float %105, %127
  %184 = fmul fast float %111, %57
  %185 = fmul fast float %115, %58
  %186 = fmul fast float %132, %103
  %187 = fsub fast float -0.000000e+00, %186
  %188 = fmul fast float %136, %107
  %189 = fmul fast float %141, %101
  %190 = fmul fast float %144, %109
  %191 = fadd fast float %185, %184
  %192 = fmul fast float %191, %54
  %193 = fsub fast float %192, %182
  %194 = fmul fast float %193, 0x3FDF454380000000
  %195 = fadd fast float %183, %189
  %196 = fadd fast float %195, %190
  %197 = fmul fast float %196, %55
  %198 = fsub fast float %187, %188
  %199 = fadd fast float %198, %181
  %200 = fadd fast float %199, %194
  %201 = fadd fast float %200, %197
  %202 = fmul fast float %157, %201
  br label %203

; <label>:203                                     ; preds = %62, %0
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %204 = uitofp i32 %34 to float
  %205 = uitofp i32 %35 to float
  %206 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
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
  %228 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %229 = extractvalue %dx.types.CBufRet.f32 %228, 2
  %230 = extractvalue %dx.types.CBufRet.f32 %228, 3
  %231 = fmul fast float %229, %226
  %232 = fmul fast float %230, %227
  %233 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %234 = extractvalue %dx.types.CBufRet.f32 %233, 0
  %235 = extractvalue %dx.types.CBufRet.f32 %233, 1
  %236 = extractvalue %dx.types.CBufRet.f32 %233, 2
  %237 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %238 = extractvalue %dx.types.CBufRet.f32 %237, 1
  %239 = fmul fast float %231, 2.000000e+00
  %240 = fmul fast float %232, 2.000000e+00
  %241 = fsub fast float 1.000000e+00, %239
  %242 = fsub fast float 1.000000e+00, %240
  %243 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %244 = extractvalue %dx.types.CBufRet.f32 %243, 0
  %245 = extractvalue %dx.types.CBufRet.f32 %243, 1
  %246 = extractvalue %dx.types.CBufRet.f32 %243, 2
  %247 = fmul fast float %244, %241
  %248 = fmul fast float %245, %241
  %249 = fmul fast float %246, %241
  %250 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %251 = extractvalue %dx.types.CBufRet.f32 %250, 0
  %252 = extractvalue %dx.types.CBufRet.f32 %250, 1
  %253 = extractvalue %dx.types.CBufRet.f32 %250, 2
  %254 = fmul fast float %251, %242
  %255 = fmul fast float %252, %242
  %256 = fmul fast float %253, %242
  %257 = fadd fast float %254, %247
  %258 = fadd fast float %255, %248
  %259 = fadd fast float %256, %249
  %260 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
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
  %280 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %6, i32 0, i32 %34, i32 %35, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %281 = extractvalue %dx.types.ResRet.f32 %280, 0
  %282 = fcmp fast ogt float %281, -1.000000e+00
  %283 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %284 = extractvalue %dx.types.CBufRet.f32 %283, 1
  %285 = select i1 %282, float %284, float 1.000000e+00
  %286 = fadd fast float %281, 1.000000e+00
  %287 = fmul fast float %285, %286
  %288 = call float @dx.op.unary.f32(i32 6, float %287)  ; FAbs(value)
  %289 = fdiv fast float 1.000000e+00, %238
  %290 = fmul fast float %289, %275
  %291 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 423)  ; CBufferLoadLegacy(handle,regIndex)
  %292 = extractvalue %dx.types.CBufRet.f32 %291, 1
  %293 = fmul fast float %292, %290
  %294 = fmul fast float %290, %288
  %295 = extractvalue %dx.types.CBufRet.f32 %283, 3
  %296 = fcmp fast oge float %288, %295
  %297 = call float @dx.op.binary.f32(i32 36, float %294, float %293)  ; FMin(a,b)
  %298 = select i1 %296, float %293, float %297
  %299 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %18, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %300 = extractvalue %dx.types.CBufRet.i32 %299, 3
  %301 = icmp eq i32 %300, 0
  %302 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 401)  ; CBufferLoadLegacy(handle,regIndex)
  %303 = extractvalue %dx.types.CBufRet.f32 %302, 2
  %304 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %305 = extractvalue %dx.types.CBufRet.f32 %304, 2
  %306 = fsub fast float %303, %236
  %307 = fadd fast float %306, %305
  %308 = fsub fast float 0xC7EFFFFFE0000000, %236
  br i1 %301, label %320, label %309, !dx.controlflow.hints !33

; <label>:309                                     ; preds = %203
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

; <label>:320                                     ; preds = %203
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
  br i1 %349, label %353, label %350, !dx.controlflow.hints !34

; <label>:350                                     ; preds = %320
  %351 = call float @dx.op.binary.f32(i32 36, float %345, float %347)  ; FMin(a,b)
  %352 = call float @dx.op.binary.f32(i32 35, float %345, float %347)  ; FMax(a,b)
  br label %353

; <label>:353                                     ; preds = %350, %320, %309
  %354 = phi float [ %318, %309 ], [ %351, %350 ], [ 0.000000e+00, %320 ]
  %355 = phi float [ %319, %309 ], [ %352, %350 ], [ 0.000000e+00, %320 ]
  %356 = fcmp fast oeq float %355, 0.000000e+00
  %357 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 427)  ; CBufferLoadLegacy(handle,regIndex)
  %358 = extractvalue %dx.types.CBufRet.f32 %357, 1
  %359 = fcmp fast olt float %355, %358
  %360 = or i1 %356, %359
  br i1 %360, label %365, label %361, !dx.controlflow.hints !35

; <label>:361                                     ; preds = %353
  %362 = call float @dx.op.binary.f32(i32 35, float %358, float %354)  ; FMax(a,b)
  %363 = call float @dx.op.binary.f32(i32 36, float 0x47EFFFFFE0000000, float %362)  ; FMin(a,b)
  %364 = call float @dx.op.binary.f32(i32 35, float -1.000000e+00, float %355)  ; FMax(a,b)
  br label %365

; <label>:365                                     ; preds = %361, %353
  %366 = phi i32 [ 1, %361 ], [ 0, %353 ]
  %367 = phi float [ %364, %361 ], [ -1.000000e+00, %353 ]
  %368 = phi float [ %363, %361 ], [ 0x47EFFFFFE0000000, %353 ]
  %369 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
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
  br i1 %380, label %385, label %381, !dx.controlflow.hints !36

; <label>:381                                     ; preds = %365
  %382 = fcmp fast olt float %279, 0.000000e+00
  br i1 %382, label %383, label %385, !dx.controlflow.hints !37

; <label>:383                                     ; preds = %381
  %384 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %377)  ; FMax(a,b)
  br label %385

; <label>:385                                     ; preds = %383, %381, %365
  %386 = phi float [ 0.000000e+00, %365 ], [ %384, %383 ], [ 0.000000e+00, %381 ]
  %387 = phi float [ 0.000000e+00, %365 ], [ 0x47EFFFFFE0000000, %383 ], [ %377, %381 ]
  %388 = fcmp fast oeq float %387, 0.000000e+00
  br i1 %388, label %392, label %389, !dx.controlflow.hints !38

; <label>:389                                     ; preds = %385
  %390 = call float @dx.op.binary.f32(i32 36, float %368, float %386)  ; FMin(a,b)
  %391 = call float @dx.op.binary.f32(i32 35, float %367, float %387)  ; FMax(a,b)
  br label %392

; <label>:392                                     ; preds = %389, %385
  %393 = phi i32 [ 1, %389 ], [ 0, %385 ]
  %394 = phi float [ %391, %389 ], [ %367, %385 ]
  %395 = phi float [ %390, %389 ], [ %368, %385 ]
  %396 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %18, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %397 = extractvalue %dx.types.CBufRet.i32 %396, 3
  %398 = icmp eq i32 %397, 0
  %399 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 31)  ; CBufferLoadLegacy(handle,regIndex)
  %400 = extractvalue %dx.types.CBufRet.f32 %399, 2
  %401 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 32)  ; CBufferLoadLegacy(handle,regIndex)
  %402 = extractvalue %dx.types.CBufRet.f32 %401, 2
  %403 = fsub fast float %400, %236
  %404 = fadd fast float %403, %402
  br i1 %398, label %412, label %405, !dx.controlflow.hints !39

; <label>:405                                     ; preds = %392
  %406 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %371, float %372, float %404)  ; Dot3(ax,ay,az,bx,by,bz)
  %407 = fmul fast float %376, %406
  %408 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %371, float %372, float %403)  ; Dot3(ax,ay,az,bx,by,bz)
  %409 = fmul fast float %376, %408
  %410 = call float @dx.op.binary.f32(i32 36, float %407, float %409)  ; FMin(a,b)
  %411 = call float @dx.op.binary.f32(i32 35, float %407, float %409)  ; FMax(a,b)
  br label %445

; <label>:412                                     ; preds = %392
  %413 = fdiv fast float 1.000000e+00, %277
  %414 = fdiv fast float 1.000000e+00, %278
  %415 = fdiv fast float 1.000000e+00, %279
  %416 = extractvalue %dx.types.CBufRet.f32 %399, 0
  %417 = extractvalue %dx.types.CBufRet.f32 %399, 1
  %418 = extractvalue %dx.types.CBufRet.f32 %401, 0
  %419 = extractvalue %dx.types.CBufRet.f32 %401, 1
  %420 = fsub fast float %416, %234
  %421 = fmul fast float %420, %413
  %422 = fadd fast float %420, %418
  %423 = fmul fast float %422, %413
  %424 = call float @dx.op.binary.f32(i32 36, float %421, float %423)  ; FMin(a,b)
  %425 = call float @dx.op.binary.f32(i32 35, float %421, float %423)  ; FMax(a,b)
  %426 = fsub fast float %417, %235
  %427 = fmul fast float %426, %414
  %428 = fadd fast float %426, %419
  %429 = fmul fast float %428, %414
  %430 = call float @dx.op.binary.f32(i32 36, float %427, float %429)  ; FMin(a,b)
  %431 = call float @dx.op.binary.f32(i32 35, float %424, float %430)  ; FMax(a,b)
  %432 = call float @dx.op.binary.f32(i32 35, float %427, float %429)  ; FMax(a,b)
  %433 = call float @dx.op.binary.f32(i32 36, float %425, float %432)  ; FMin(a,b)
  %434 = fmul fast float %403, %415
  %435 = fmul fast float %404, %415
  %436 = call float @dx.op.binary.f32(i32 36, float %434, float %435)  ; FMin(a,b)
  %437 = call float @dx.op.binary.f32(i32 35, float %431, float %436)  ; FMax(a,b)
  %438 = call float @dx.op.binary.f32(i32 35, float %434, float %435)  ; FMax(a,b)
  %439 = call float @dx.op.binary.f32(i32 36, float %433, float %438)  ; FMin(a,b)
  %440 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %437)  ; FMax(a,b)
  %441 = fcmp fast ult float %439, %440
  br i1 %441, label %445, label %442, !dx.controlflow.hints !40

; <label>:442                                     ; preds = %412
  %443 = call float @dx.op.binary.f32(i32 36, float %437, float %439)  ; FMin(a,b)
  %444 = call float @dx.op.binary.f32(i32 35, float %437, float %439)  ; FMax(a,b)
  br label %445

; <label>:445                                     ; preds = %442, %412, %405
  %446 = phi float [ %410, %405 ], [ %443, %442 ], [ 0.000000e+00, %412 ]
  %447 = phi float [ %411, %405 ], [ %444, %442 ], [ 0.000000e+00, %412 ]
  %448 = fcmp fast oeq float %447, 0.000000e+00
  br i1 %448, label %452, label %449, !dx.controlflow.hints !41

; <label>:449                                     ; preds = %445
  %450 = call float @dx.op.binary.f32(i32 36, float %395, float %446)  ; FMin(a,b)
  %451 = call float @dx.op.binary.f32(i32 35, float %394, float %447)  ; FMax(a,b)
  br label %452

; <label>:452                                     ; preds = %449, %445
  %453 = phi i32 [ 1, %449 ], [ 0, %445 ]
  %454 = phi float [ %451, %449 ], [ %394, %445 ]
  %455 = phi float [ %450, %449 ], [ %395, %445 ]
  %456 = call float @dx.op.binary.f32(i32 36, float %298, float %454)  ; FMin(a,b)
  %457 = call float @dx.op.binary.f32(i32 35, float %275, float %455)  ; FMax(a,b)
  %458 = extractvalue %dx.types.CBufRet.f32 %369, 0
  %459 = fmul fast float %223, 2.000000e+00
  %460 = fadd fast float %459, -1.000000e+00
  %461 = fmul fast float %458, %460
  %462 = fadd fast float %461, %457
  %463 = fcmp fast olt float %462, %456
  %464 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %465 = extractvalue %dx.types.CBufRet.f32 %464, 2
  %466 = fcmp fast olt float %465, 1.000000e+00
  %467 = and i1 %463, %466
  br i1 %467, label %468, label %1164

; <label>:468                                     ; preds = %452
  %469 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %17, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %470 = extractvalue %dx.types.CBufRet.i32 %469, 1
  %471 = add i32 %470, -1
  %472 = fmul fast float %462, %279
  %473 = fadd fast float %472, %236
  %474 = fmul fast float %462, %278
  %475 = fadd fast float %474, %235
  %476 = fmul fast float %462, %277
  %477 = fadd fast float %476, %234
  br label %478

; <label>:478                                     ; preds = %1142, %468
  %479 = phi float [ %1144, %1142 ], [ 0.000000e+00, %468 ]
  %480 = phi float [ %1145, %1142 ], [ 1.000000e+00, %468 ]
  %481 = phi float [ %1155, %1142 ], [ %477, %468 ]
  %482 = phi float [ %1156, %1142 ], [ %475, %468 ]
  %483 = phi float [ %1157, %1142 ], [ %473, %468 ]
  %484 = phi float [ %1143, %1142 ], [ %462, %468 ]
  %485 = phi i32 [ %495, %1142 ], [ 0, %468 ]
  %486 = phi i32 [ %670, %1142 ], [ %471, %468 ]
  %487 = phi float [ %1146, %1142 ], [ 0.000000e+00, %468 ]
  %488 = phi float [ %1147, %1142 ], [ 0.000000e+00, %468 ]
  %489 = phi float [ %1148, %1142 ], [ 0.000000e+00, %468 ]
  %490 = phi float [ %1149, %1142 ], [ 0.000000e+00, %468 ]
  %491 = phi float [ %1150, %1142 ], [ 0.000000e+00, %468 ]
  %492 = phi i32 [ %1151, %1142 ], [ 0, %468 ]
  %493 = fsub fast float -0.000000e+00, %482
  %494 = fsub fast float -0.000000e+00, %481
  %495 = add i32 %485, 1
  %496 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %497 = extractvalue %dx.types.CBufRet.f32 %496, 0
  %498 = icmp eq i32 %366, 0
  br i1 %498, label %667, label %499, !dx.controlflow.hints !42

; <label>:499                                     ; preds = %478
  %500 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %17, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %501 = extractvalue %dx.types.CBufRet.i32 %500, 1
  %502 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 427)  ; CBufferLoadLegacy(handle,regIndex)
  %503 = extractvalue %dx.types.CBufRet.f32 %502, 1
  %504 = fcmp fast ogt float %503, %484
  br i1 %504, label %505, label %507, !dx.controlflow.hints !43

; <label>:505                                     ; preds = %499
  %506 = fsub fast float %503, %484
  br label %657

; <label>:507                                     ; preds = %499
  %508 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %18, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %509 = extractvalue %dx.types.CBufRet.i32 %508, 3
  %510 = icmp eq i32 %509, 0
  %511 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 401)  ; CBufferLoadLegacy(handle,regIndex)
  %512 = extractvalue %dx.types.CBufRet.f32 %511, 2
  %513 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %514 = extractvalue %dx.types.CBufRet.f32 %513, 2
  %515 = fsub fast float %512, %483
  %516 = fadd fast float %515, %514
  %517 = fsub fast float 0xC7EFFFFFE0000000, %483
  br i1 %510, label %525, label %518, !dx.controlflow.hints !33

; <label>:518                                     ; preds = %507
  %519 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %494, float %493, float %516)  ; Dot3(ax,ay,az,bx,by,bz)
  %520 = fmul fast float %376, %519
  %521 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %494, float %493, float %517)  ; Dot3(ax,ay,az,bx,by,bz)
  %522 = fmul fast float %376, %521
  %523 = call float @dx.op.binary.f32(i32 36, float %520, float %522)  ; FMin(a,b)
  %524 = call float @dx.op.binary.f32(i32 35, float %520, float %522)  ; FMax(a,b)
  br label %558

; <label>:525                                     ; preds = %507
  %526 = extractvalue %dx.types.CBufRet.f32 %511, 0
  %527 = extractvalue %dx.types.CBufRet.f32 %511, 1
  %528 = extractvalue %dx.types.CBufRet.f32 %513, 0
  %529 = extractvalue %dx.types.CBufRet.f32 %513, 1
  %530 = fdiv fast float 1.000000e+00, %277
  %531 = fdiv fast float 1.000000e+00, %278
  %532 = fdiv fast float 1.000000e+00, %279
  %533 = fsub fast float %526, %481
  %534 = fmul fast float %530, %533
  %535 = fadd fast float %533, %528
  %536 = fmul fast float %535, %530
  %537 = call float @dx.op.binary.f32(i32 36, float %534, float %536)  ; FMin(a,b)
  %538 = call float @dx.op.binary.f32(i32 35, float %534, float %536)  ; FMax(a,b)
  %539 = fsub fast float %527, %482
  %540 = fmul fast float %531, %539
  %541 = fadd fast float %539, %529
  %542 = fmul fast float %541, %531
  %543 = call float @dx.op.binary.f32(i32 36, float %540, float %542)  ; FMin(a,b)
  %544 = call float @dx.op.binary.f32(i32 35, float %537, float %543)  ; FMax(a,b)
  %545 = call float @dx.op.binary.f32(i32 35, float %540, float %542)  ; FMax(a,b)
  %546 = call float @dx.op.binary.f32(i32 36, float %538, float %545)  ; FMin(a,b)
  %547 = fmul fast float %532, %517
  %548 = fmul fast float %532, %516
  %549 = call float @dx.op.binary.f32(i32 36, float %547, float %548)  ; FMin(a,b)
  %550 = call float @dx.op.binary.f32(i32 35, float %544, float %549)  ; FMax(a,b)
  %551 = call float @dx.op.binary.f32(i32 35, float %547, float %548)  ; FMax(a,b)
  %552 = call float @dx.op.binary.f32(i32 36, float %546, float %551)  ; FMin(a,b)
  %553 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %550)  ; FMax(a,b)
  %554 = fcmp fast ult float %552, %553
  br i1 %554, label %558, label %555, !dx.controlflow.hints !34

; <label>:555                                     ; preds = %525
  %556 = call float @dx.op.binary.f32(i32 36, float %550, float %552)  ; FMin(a,b)
  %557 = call float @dx.op.binary.f32(i32 35, float %550, float %552)  ; FMax(a,b)
  br label %558

; <label>:558                                     ; preds = %555, %525, %518
  %559 = phi float [ %523, %518 ], [ %556, %555 ], [ 0.000000e+00, %525 ]
  %560 = phi float [ %524, %518 ], [ %557, %555 ], [ 0.000000e+00, %525 ]
  %561 = fcmp fast ogt float %559, 0.000000e+00
  br i1 %561, label %657, label %562, !dx.controlflow.hints !44

; <label>:562                                     ; preds = %558
  %563 = fcmp fast ugt float %560, 0.000000e+00
  br i1 %563, label %564, label %657, !dx.controlflow.hints !45

; <label>:564                                     ; preds = %562
  %565 = icmp sgt i32 %486, 0
  br i1 %565, label %566, label %651

; <label>:566                                     ; preds = %564
  br label %567

; <label>:567                                     ; preds = %647, %566
  %568 = phi i32 [ %648, %647 ], [ %486, %566 ]
  %569 = sitofp i32 %568 to float
  %570 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 401)  ; CBufferLoadLegacy(handle,regIndex)
  %571 = extractvalue %dx.types.CBufRet.f32 %570, 0
  %572 = extractvalue %dx.types.CBufRet.f32 %570, 1
  %573 = fsub fast float %481, %571
  %574 = fsub fast float %482, %572
  %575 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 403)  ; CBufferLoadLegacy(handle,regIndex)
  %576 = extractvalue %dx.types.CBufRet.f32 %575, 0
  %577 = extractvalue %dx.types.CBufRet.f32 %575, 1
  %578 = fmul fast float %573, %576
  %579 = fmul fast float %574, %577
  %580 = fsub fast float 1.000000e+00, %579
  %581 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %18, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %582 = extractvalue %dx.types.CBufRet.i32 %581, 3
  %583 = icmp eq i32 %582, 0
  br i1 %583, label %590, label %584, !dx.controlflow.hints !46

; <label>:584                                     ; preds = %567
  %585 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %15, float %578, float %580, float undef, float undef, i32 0, i32 0, i32 undef, float %569)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %586 = extractvalue %dx.types.ResRet.f32 %585, 0
  %587 = extractvalue %dx.types.ResRet.f32 %585, 1
  %588 = extractvalue %dx.types.ResRet.f32 %585, 2
  %589 = extractvalue %dx.types.ResRet.f32 %585, 3
  br label %596

; <label>:590                                     ; preds = %567
  %591 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %16, float %578, float %580, float undef, float undef, i32 0, i32 0, i32 undef, float %569)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %592 = extractvalue %dx.types.ResRet.f32 %591, 0
  %593 = extractvalue %dx.types.ResRet.f32 %591, 1
  %594 = extractvalue %dx.types.ResRet.f32 %591, 2
  %595 = extractvalue %dx.types.ResRet.f32 %591, 3
  br label %596

; <label>:596                                     ; preds = %590, %584
  %597 = phi float [ %586, %584 ], [ %592, %590 ]
  %598 = phi float [ %587, %584 ], [ %593, %590 ]
  %599 = phi float [ %588, %584 ], [ %594, %590 ]
  %600 = phi float [ %589, %584 ], [ %595, %590 ]
  %601 = extractvalue %dx.types.CBufRet.f32 %575, 3
  %602 = fmul fast float %601, %597
  %603 = extractvalue %dx.types.CBufRet.f32 %570, 2
  %604 = fadd fast float %602, %603
  %605 = fmul fast float %601, %598
  %606 = fadd fast float %605, %603
  %607 = fmul fast float %601, %599
  %608 = fadd fast float %607, %603
  %609 = and i32 %568, 31
  %610 = shl i32 1, %609
  %611 = uitofp i32 %610 to float
  %612 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 402)  ; CBufferLoadLegacy(handle,regIndex)
  %613 = extractvalue %dx.types.CBufRet.f32 %612, 3
  %614 = fdiv fast float 1.000000e+00, %613
  %615 = fmul fast float %614, %611
  %616 = fmul fast float %615, %279
  %617 = fadd fast float %616, %483
  %618 = fcmp fast oeq float %600, 0.000000e+00
  %619 = fcmp fast ogt float %483, %606
  %620 = fcmp fast ogt float %617, %606
  %621 = and i1 %619, %620
  %622 = or i1 %618, %621
  br i1 %622, label %623, label %627, !dx.controlflow.hints !47

; <label>:623                                     ; preds = %596
  %624 = add nsw i32 %568, 1
  %625 = add nsw i32 %501, -1
  %626 = call i32 @dx.op.binary.i32(i32 38, i32 %624, i32 %625)  ; IMin(a,b)
  br label %657

; <label>:627                                     ; preds = %596
  %628 = fcmp fast olt float %483, %608
  %629 = fcmp fast olt float %617, %608
  %630 = and i1 %628, %629
  br i1 %630, label %631, label %635, !dx.controlflow.hints !48

; <label>:631                                     ; preds = %627
  %632 = add nsw i32 %568, 1
  %633 = add nsw i32 %501, -1
  %634 = call i32 @dx.op.binary.i32(i32 38, i32 %632, i32 %633)  ; IMin(a,b)
  br label %657

; <label>:635                                     ; preds = %627
  %636 = fcmp fast olt float %483, %604
  %637 = fcmp fast olt float %617, %604
  %638 = and i1 %636, %637
  br i1 %638, label %639, label %647, !dx.controlflow.hints !49

; <label>:639                                     ; preds = %635
  %640 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 406)  ; CBufferLoadLegacy(handle,regIndex)
  %641 = extractvalue %dx.types.CBufRet.f32 %640, 3
  %642 = extractvalue %dx.types.CBufRet.f32 %575, 2
  %643 = fcmp fast une float %641, %642
  br i1 %643, label %644, label %651, !dx.controlflow.hints !50

; <label>:644                                     ; preds = %639
  %645 = fsub fast float %483, %608
  %646 = call float @dx.op.binary.f32(i32 36, float %615, float %645)  ; FMin(a,b)
  br label %651

; <label>:647                                     ; preds = %635
  %648 = add nsw i32 %568, -1
  %649 = icmp sgt i32 %568, 1
  br i1 %649, label %567, label %650

; <label>:650                                     ; preds = %647
  br label %651

; <label>:651                                     ; preds = %650, %644, %639, %564
  %652 = phi float [ %646, %644 ], [ %615, %639 ], [ 0.000000e+00, %564 ], [ 0.000000e+00, %650 ]
  %653 = phi i32 [ %568, %644 ], [ %568, %639 ], [ %486, %564 ], [ %648, %650 ]
  %654 = add nsw i32 %653, 1
  %655 = add nsw i32 %501, -1
  %656 = call i32 @dx.op.binary.i32(i32 38, i32 %654, i32 %655)  ; IMin(a,b)
  br label %657

; <label>:657                                     ; preds = %651, %631, %623, %562, %558, %505
  %658 = phi float [ %506, %505 ], [ %615, %623 ], [ %615, %631 ], [ %652, %651 ], [ 0x47EFFFFFE0000000, %562 ], [ %559, %558 ]
  %659 = phi i32 [ %366, %505 ], [ %366, %623 ], [ %366, %631 ], [ %366, %651 ], [ 0, %562 ], [ %366, %558 ]
  %660 = phi i32 [ %486, %505 ], [ %626, %623 ], [ %634, %631 ], [ %656, %651 ], [ %486, %562 ], [ %486, %558 ]
  %661 = icmp ne i32 %659, 0
  %662 = zext i1 %661 to i32
  %663 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %664 = extractvalue %dx.types.CBufRet.f32 %663, 2
  %665 = call float @dx.op.binary.f32(i32 35, float %658, float %664)  ; FMax(a,b)
  %666 = call float @dx.op.binary.f32(i32 36, float 0x47EFFFFFE0000000, float %665)  ; FMin(a,b)
  br label %667

; <label>:667                                     ; preds = %657, %478
  %668 = phi i32 [ %662, %657 ], [ 0, %478 ]
  %669 = phi float [ %666, %657 ], [ 0x47EFFFFFE0000000, %478 ]
  %670 = phi i32 [ %660, %657 ], [ %486, %478 ]
  %671 = icmp eq i32 %393, 0
  br i1 %671, label %684, label %672, !dx.controlflow.hints !51

; <label>:672                                     ; preds = %667
  %673 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %674 = extractvalue %dx.types.CBufRet.f32 %673, 3
  %675 = extractvalue %dx.types.CBufRet.f32 %673, 2
  %676 = fmul fast float %674, %484
  %677 = fdiv fast float %676, %456
  %678 = fadd fast float %677, 1.000000e+00
  %679 = call float @dx.op.unary.f32(i32 23, float %678)  ; Log(value)
  %680 = call float @dx.op.binary.f32(i32 36, float 1.000000e+00, float %679)  ; FMin(a,b)
  %681 = fmul fast float %675, %456
  %682 = fmul fast float %681, %680
  %683 = call float @dx.op.binary.f32(i32 36, float 0x47EFFFFFE0000000, float %682)  ; FMin(a,b)
  br label %684

; <label>:684                                     ; preds = %672, %667
  %685 = phi float [ %683, %672 ], [ 0x47EFFFFFE0000000, %667 ]
  %686 = icmp eq i32 %453, 0
  br i1 %686, label %743, label %687, !dx.controlflow.hints !52

; <label>:687                                     ; preds = %684
  %688 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 35)  ; CBufferLoadLegacy(handle,regIndex)
  %689 = extractvalue %dx.types.CBufRet.f32 %688, 0
  %690 = extractvalue %dx.types.CBufRet.f32 %688, 1
  %691 = extractvalue %dx.types.CBufRet.f32 %688, 2
  %692 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 31)  ; CBufferLoadLegacy(handle,regIndex)
  %693 = extractvalue %dx.types.CBufRet.f32 %692, 0
  %694 = extractvalue %dx.types.CBufRet.f32 %692, 1
  %695 = extractvalue %dx.types.CBufRet.f32 %692, 2
  %696 = fsub fast float %481, %693
  %697 = fsub fast float %482, %694
  %698 = fsub fast float %483, %695
  %699 = fmul fast float %696, %689
  %700 = fmul fast float %697, %690
  %701 = fmul fast float %698, %691
  %702 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %18, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %703 = extractvalue %dx.types.CBufRet.i32 %702, 3
  %704 = icmp eq i32 %703, 0
  br i1 %704, label %708, label %705, !dx.controlflow.hints !53

; <label>:705                                     ; preds = %687
  %706 = call float @dx.op.unary.f32(i32 22, float %699)  ; Frc(value)
  %707 = call float @dx.op.unary.f32(i32 22, float %700)  ; Frc(value)
  br label %708

; <label>:708                                     ; preds = %705, %687
  %709 = phi float [ %706, %705 ], [ %699, %687 ]
  %710 = phi float [ %707, %705 ], [ %700, %687 ]
  %711 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %14, float %709, float %710, float %701, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %712 = extractvalue %dx.types.ResRet.f32 %711, 0
  %713 = fmul fast float %712, 2.000000e+00
  %714 = fadd fast float %713, -1.000000e+00
  %715 = extractvalue %dx.types.CBufRet.f32 %688, 3
  %716 = fmul fast float %714, %715
  %717 = fcmp fast olt float %716, 0.000000e+00
  %718 = fcmp fast oge float %701, 0.000000e+00
  %719 = fcmp fast ole float %701, 1.000000e+00
  br i1 %704, label %722, label %720, !dx.controlflow.hints !54

; <label>:720                                     ; preds = %708
  %721 = and i1 %718, %719
  br label %732

; <label>:722                                     ; preds = %708
  %723 = fcmp fast oge float %699, 0.000000e+00
  %724 = fcmp fast oge float %700, 0.000000e+00
  %725 = and i1 %723, %724
  %726 = and i1 %718, %725
  %727 = fcmp fast ole float %699, 1.000000e+00
  %728 = fcmp fast ole float %700, 1.000000e+00
  %729 = and i1 %727, %728
  %730 = and i1 %719, %729
  %731 = and i1 %726, %730
  br label %732

; <label>:732                                     ; preds = %722, %720
  %733 = phi i1 [ %721, %720 ], [ %731, %722 ]
  %734 = and i1 %717, %733
  %735 = call float @dx.op.unary.f32(i32 6, float %716)  ; FAbs(value)
  %736 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %737 = extractvalue %dx.types.CBufRet.f32 %736, 1
  %738 = extractvalue %dx.types.CBufRet.f32 %736, 0
  %739 = call float @dx.op.binary.f32(i32 35, float %735, float %738)  ; FMax(a,b)
  %740 = select i1 %734, float %737, float %739
  %741 = zext i1 %734 to i32
  %742 = call float @dx.op.binary.f32(i32 36, float %669, float %740)  ; FMin(a,b)
  br label %743

; <label>:743                                     ; preds = %732, %684
  %744 = phi i32 [ %741, %732 ], [ 0, %684 ]
  %745 = phi float [ %742, %732 ], [ %669, %684 ]
  %746 = extractvalue %dx.types.CBufRet.f32 %496, 2
  %747 = fmul fast float %746, %484
  %748 = call float @dx.op.unary.f32(i32 23, float %747)  ; Log(value)
  %749 = fmul fast float %748, 0x3FE62E4300000000
  %750 = call float @dx.op.binary.f32(i32 35, float %749, float 1.000000e+00)  ; FMax(a,b)
  %751 = fmul fast float %750, %685
  %752 = call float @dx.op.binary.f32(i32 36, float %751, float %745)  ; FMin(a,b)
  %753 = call float @dx.op.binary.f32(i32 35, float %752, float %497)  ; FMax(a,b)
  %754 = fsub fast float %456, %484
  %755 = fadd fast float %754, 0x3F1A36E2E0000000
  %756 = call float @dx.op.binary.f32(i32 36, float %755, float %753)  ; FMin(a,b)
  %757 = icmp eq i32 %668, 0
  br i1 %757, label %854, label %758, !dx.controlflow.hints !55

; <label>:758                                     ; preds = %743
  %759 = fcmp fast olt float %755, %753
  %760 = fmul fast float %279, %222
  %761 = fmul fast float %760, %756
  %762 = fadd fast float %761, %483
  %763 = fmul fast float %279, %223
  %764 = fmul fast float %763, %756
  %765 = fadd fast float %764, %483
  %766 = fmul fast float %279, %224
  %767 = fmul fast float %766, %756
  %768 = fadd fast float %767, %483
  br i1 %759, label %769, label %774, !dx.controlflow.hints !56

; <label>:769                                     ; preds = %758
  %770 = fmul fast float %756, %277
  %771 = fmul fast float %756, %278
  %772 = fadd fast float %770, %481
  %773 = fadd fast float %771, %482
  br label %774

; <label>:774                                     ; preds = %769, %758
  %775 = phi float [ %772, %769 ], [ %481, %758 ]
  %776 = phi float [ %773, %769 ], [ %482, %758 ]
  %777 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 401)  ; CBufferLoadLegacy(handle,regIndex)
  %778 = extractvalue %dx.types.CBufRet.f32 %777, 0
  %779 = extractvalue %dx.types.CBufRet.f32 %777, 1
  %780 = fsub fast float %775, %778
  %781 = fsub fast float %776, %779
  %782 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 403)  ; CBufferLoadLegacy(handle,regIndex)
  %783 = extractvalue %dx.types.CBufRet.f32 %782, 0
  %784 = extractvalue %dx.types.CBufRet.f32 %782, 1
  %785 = fmul fast float %780, %783
  %786 = fmul fast float %781, %784
  %787 = fsub fast float 1.000000e+00, %786
  %788 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %18, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %789 = extractvalue %dx.types.CBufRet.i32 %788, 3
  %790 = icmp eq i32 %789, 0
  br i1 %790, label %797, label %791, !dx.controlflow.hints !46

; <label>:791                                     ; preds = %774
  %792 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %15, float %785, float %787, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %793 = extractvalue %dx.types.ResRet.f32 %792, 0
  %794 = extractvalue %dx.types.ResRet.f32 %792, 1
  %795 = extractvalue %dx.types.ResRet.f32 %792, 2
  %796 = extractvalue %dx.types.ResRet.f32 %792, 3
  br label %803

; <label>:797                                     ; preds = %774
  %798 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %16, float %785, float %787, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %799 = extractvalue %dx.types.ResRet.f32 %798, 0
  %800 = extractvalue %dx.types.ResRet.f32 %798, 1
  %801 = extractvalue %dx.types.ResRet.f32 %798, 2
  %802 = extractvalue %dx.types.ResRet.f32 %798, 3
  br label %803

; <label>:803                                     ; preds = %797, %791
  %804 = phi float [ %793, %791 ], [ %799, %797 ]
  %805 = phi float [ %794, %791 ], [ %800, %797 ]
  %806 = phi float [ %795, %791 ], [ %801, %797 ]
  %807 = phi float [ %796, %791 ], [ %802, %797 ]
  %808 = extractvalue %dx.types.CBufRet.f32 %782, 3
  %809 = fmul fast float %808, %805
  %810 = fmul fast float %809, %804
  %811 = fsub fast float %809, %810
  %812 = fcmp fast ole float %811, 0.000000e+00
  %813 = extractvalue %dx.types.CBufRet.f32 %777, 2
  %814 = fadd fast float %810, %813
  %815 = fmul fast float %808, %806
  %816 = fadd fast float %815, %813
  %817 = fdiv fast float 1.000000e+00, %811
  %818 = select i1 %812, float 1.000000e+06, float %817
  %819 = fsub fast float %762, %814
  %820 = fmul fast float %818, %819
  %821 = call float @dx.op.unary.f32(i32 7, float %820)  ; Saturate(value)
  %822 = extractvalue %dx.types.CBufRet.f32 %782, 2
  %823 = fmul fast float %822, %821
  %824 = fsub fast float %822, %823
  %825 = fcmp fast olt float %762, %816
  %826 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 406)  ; CBufferLoadLegacy(handle,regIndex)
  %827 = extractvalue %dx.types.CBufRet.f32 %826, 3
  %828 = select i1 %825, float %827, float 1.000000e+00
  %829 = fmul fast float %824, %828
  %830 = fsub fast float %765, %814
  %831 = fmul fast float %818, %830
  %832 = call float @dx.op.unary.f32(i32 7, float %831)  ; Saturate(value)
  %833 = fmul fast float %822, %832
  %834 = fsub fast float %822, %833
  %835 = fcmp fast olt float %765, %816
  %836 = select i1 %835, float %827, float 1.000000e+00
  %837 = fmul fast float %834, %836
  %838 = fadd fast float %837, %829
  %839 = fsub fast float %768, %814
  %840 = fmul fast float %818, %839
  %841 = call float @dx.op.unary.f32(i32 7, float %840)  ; Saturate(value)
  %842 = fmul fast float %822, %841
  %843 = fsub fast float %822, %842
  %844 = fcmp fast olt float %768, %816
  %845 = select i1 %844, float %827, float 1.000000e+00
  %846 = fmul fast float %843, %845
  %847 = fadd fast float %838, %846
  %848 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 418)  ; CBufferLoadLegacy(handle,regIndex)
  %849 = extractvalue %dx.types.CBufRet.f32 %848, 2
  %850 = fmul fast float %756, 0x3FD5555560000000
  %851 = fmul fast float %850, %807
  %852 = fmul fast float %851, %849
  %853 = fmul fast float %852, %847
  br label %854

; <label>:854                                     ; preds = %803, %743
  %855 = phi float [ %853, %803 ], [ 0.000000e+00, %743 ]
  br i1 %671, label %902, label %856, !dx.controlflow.hints !57

; <label>:856                                     ; preds = %854
  %857 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 399)  ; CBufferLoadLegacy(handle,regIndex)
  %858 = extractvalue %dx.types.CBufRet.f32 %857, 0
  %859 = fsub fast float %858, %483
  %860 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %494, float %493, float %859)  ; Dot3(ax,ay,az,bx,by,bz)
  %861 = fmul fast float %376, %860
  %862 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %861)  ; FMax(a,b)
  %863 = fcmp fast olt float %279, 0.000000e+00
  %864 = call float @dx.op.binary.f32(i32 36, float %756, float %862)  ; FMin(a,b)
  br i1 %863, label %866, label %865, !dx.controlflow.hints !58

; <label>:865                                     ; preds = %856
  br label %866

; <label>:866                                     ; preds = %865, %856
  %867 = phi float [ 0.000000e+00, %865 ], [ %864, %856 ]
  %868 = phi float [ %864, %865 ], [ %756, %856 ]
  %869 = phi float [ %864, %865 ], [ 0.000000e+00, %856 ]
  %870 = phi float [ %756, %865 ], [ %864, %856 ]
  %871 = fsub fast float %868, %867
  %872 = extractvalue %dx.types.CBufRet.f32 %857, 1
  %873 = call float @dx.op.binary.f32(i32 36, float 0xBF0FFB4800000000, float %872)  ; FMin(a,b)
  %874 = fsub fast float %483, %858
  %875 = fmul fast float %873, 0x3FF7154760000000
  %876 = fmul fast float %875, %874
  %877 = call float @dx.op.unary.f32(i32 21, float %876)  ; Exp(value)
  %878 = fmul fast float %279, 0x3FF7154760000000
  %879 = fmul fast float %878, %870
  %880 = fmul fast float %879, %873
  %881 = call float @dx.op.unary.f32(i32 21, float %880)  ; Exp(value)
  %882 = fmul fast float %878, %869
  %883 = fmul fast float %882, %873
  %884 = call float @dx.op.unary.f32(i32 21, float %883)  ; Exp(value)
  %885 = fsub fast float %881, %884
  %886 = fmul fast float %885, %877
  %887 = fmul fast float %873, %279
  %888 = fdiv fast float %886, %887
  %889 = fadd fast float %871, %888
  %890 = call float @dx.op.unary.f32(i32 6, float %279)  ; FAbs(value)
  %891 = fcmp fast olt float %890, 0x3F0FFB4800000000
  %892 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %874)  ; FMax(a,b)
  %893 = fmul fast float %892, 0x3FF7154760000000
  %894 = fmul fast float %893, %872
  %895 = call float @dx.op.unary.f32(i32 21, float %894)  ; Exp(value)
  %896 = fmul fast float %895, %756
  %897 = select i1 %891, float %896, float %889
  %898 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 396)  ; CBufferLoadLegacy(handle,regIndex)
  %899 = extractvalue %dx.types.CBufRet.f32 %898, 1
  %900 = fmul fast float %897, %899
  %901 = fadd fast float %900, %855
  br label %902

; <label>:902                                     ; preds = %866, %854
  %903 = phi float [ %901, %866 ], [ %855, %854 ]
  %904 = icmp eq i32 %744, 0
  br i1 %904, label %1085, label %905, !dx.controlflow.hints !59

; <label>:905                                     ; preds = %902
  %906 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %907 = extractvalue %dx.types.CBufRet.f32 %906, 3
  %908 = fmul fast float %907, %484
  %909 = fcmp fast oeq float %908, 0.000000e+00
  br i1 %909, label %924, label %910, !dx.controlflow.hints !60

; <label>:910                                     ; preds = %905
  %911 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 41)  ; CBufferLoadLegacy(handle,regIndex)
  %912 = extractvalue %dx.types.CBufRet.f32 %911, 3
  %913 = fmul fast float %912, %908
  %914 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 33)  ; CBufferLoadLegacy(handle,regIndex)
  %915 = extractvalue %dx.types.CBufRet.f32 %914, 0
  %916 = extractvalue %dx.types.CBufRet.f32 %914, 1
  %917 = extractvalue %dx.types.CBufRet.f32 %914, 2
  %918 = fmul fast float %915, %913
  %919 = fmul fast float %916, %913
  %920 = fmul fast float %917, %913
  %921 = call float @dx.op.unary.f32(i32 23, float %918)  ; Log(value)
  %922 = call float @dx.op.unary.f32(i32 23, float %919)  ; Log(value)
  %923 = call float @dx.op.unary.f32(i32 23, float %920)  ; Log(value)
  br label %924

; <label>:924                                     ; preds = %910, %905
  %925 = phi float [ %921, %910 ], [ 0.000000e+00, %905 ]
  %926 = phi float [ %922, %910 ], [ 0.000000e+00, %905 ]
  %927 = phi float [ %923, %910 ], [ 0.000000e+00, %905 ]
  %928 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 35)  ; CBufferLoadLegacy(handle,regIndex)
  %929 = extractvalue %dx.types.CBufRet.f32 %928, 0
  %930 = extractvalue %dx.types.CBufRet.f32 %928, 1
  %931 = extractvalue %dx.types.CBufRet.f32 %928, 2
  %932 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 31)  ; CBufferLoadLegacy(handle,regIndex)
  %933 = extractvalue %dx.types.CBufRet.f32 %932, 0
  %934 = extractvalue %dx.types.CBufRet.f32 %932, 1
  %935 = extractvalue %dx.types.CBufRet.f32 %932, 2
  %936 = fsub fast float %481, %933
  %937 = fsub fast float %482, %934
  %938 = fsub fast float %483, %935
  %939 = fmul fast float %936, %929
  %940 = fmul fast float %937, %930
  %941 = fmul fast float %938, %931
  %942 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %18, i32 29)  ; CBufferLoadLegacy(handle,regIndex)
  %943 = extractvalue %dx.types.CBufRet.i32 %942, 0
  %944 = extractvalue %dx.types.CBufRet.i32 %942, 1
  %945 = uitofp i32 %943 to float
  %946 = uitofp i32 %944 to float
  %947 = fmul fast float %939, %945
  %948 = fmul fast float %940, %946
  %949 = fadd fast float %947, 5.000000e-01
  %950 = fadd fast float %948, 5.000000e-01
  %951 = call float @dx.op.unary.f32(i32 22, float %949)  ; Frc(value)
  %952 = call float @dx.op.unary.f32(i32 22, float %950)  ; Frc(value)
  %953 = call float @dx.op.unary.f32(i32 27, float %949)  ; Round_ni(value)
  %954 = call float @dx.op.unary.f32(i32 27, float %950)  ; Round_ni(value)
  %955 = fadd fast float %953, 1.000000e+00
  %956 = fadd fast float %954, 1.000000e+00
  %957 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 30)  ; CBufferLoadLegacy(handle,regIndex)
  %958 = extractvalue %dx.types.CBufRet.f32 %957, 0
  %959 = extractvalue %dx.types.CBufRet.f32 %957, 1
  %960 = fmul fast float %958, %955
  %961 = fmul fast float %959, %956
  %962 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %9, %dx.types.Handle %15, float %960, float %961, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %963 = extractvalue %dx.types.ResRet.f32 %962, 0
  %964 = extractvalue %dx.types.ResRet.f32 %962, 1
  %965 = extractvalue %dx.types.ResRet.f32 %962, 2
  %966 = extractvalue %dx.types.ResRet.f32 %962, 3
  %967 = extractvalue %dx.types.CBufRet.i32 %942, 2
  %968 = extractvalue %dx.types.CBufRet.f32 %957, 2
  %969 = uitofp i32 %967 to float
  %970 = fadd fast float %969, -1.000000e+00
  %971 = fmul fast float %970, %963
  %972 = fmul fast float %970, %964
  %973 = fmul fast float %970, %965
  %974 = fmul fast float %970, %966
  %975 = fadd fast float %971, 5.000000e-01
  %976 = fadd fast float %972, 5.000000e-01
  %977 = fadd fast float %973, 5.000000e-01
  %978 = fadd fast float %974, 5.000000e-01
  %979 = fptoui float %975 to i32
  %980 = fptoui float %976 to i32
  %981 = fptoui float %977 to i32
  %982 = fptoui float %978 to i32
  %983 = uitofp i32 %979 to float
  %984 = uitofp i32 %980 to float
  %985 = uitofp i32 %981 to float
  %986 = uitofp i32 %982 to float
  %987 = fadd fast float %983, 5.000000e-01
  %988 = fadd fast float %984, 5.000000e-01
  %989 = fadd fast float %985, 5.000000e-01
  %990 = fadd fast float %986, 5.000000e-01
  %991 = fmul fast float %987, %968
  %992 = fmul fast float %988, %968
  %993 = fmul fast float %989, %968
  %994 = fmul fast float %990, %968
  %995 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %16, float %991, float %941, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %996 = extractvalue %dx.types.ResRet.f32 %995, 0
  %997 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %16, float %992, float %941, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %998 = extractvalue %dx.types.ResRet.f32 %997, 0
  %999 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %16, float %993, float %941, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1000 = extractvalue %dx.types.ResRet.f32 %999, 0
  %1001 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %16, float %994, float %941, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1002 = extractvalue %dx.types.ResRet.f32 %1001, 0
  %1003 = fsub fast float %1000, %1002
  %1004 = fmul fast float %1003, %951
  %1005 = fadd fast float %1004, %1002
  %1006 = fsub fast float %998, %996
  %1007 = fmul fast float %1006, %951
  %1008 = fadd fast float %1007, %996
  %1009 = fsub fast float %1008, %1005
  %1010 = fmul fast float %1009, %952
  %1011 = fadd fast float %1010, %1005
  %1012 = fcmp fast ogt float %1011, 0.000000e+00
  br i1 %1012, label %1013, label %1081, !dx.controlflow.hints !61

; <label>:1013                                    ; preds = %924
  %1014 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 33)  ; CBufferLoadLegacy(handle,regIndex)
  %1015 = extractvalue %dx.types.CBufRet.f32 %1014, 0
  %1016 = extractvalue %dx.types.CBufRet.f32 %1014, 1
  %1017 = extractvalue %dx.types.CBufRet.f32 %1014, 2
  %1018 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 41)  ; CBufferLoadLegacy(handle,regIndex)
  %1019 = extractvalue %dx.types.CBufRet.f32 %1018, 0
  %1020 = extractvalue %dx.types.CBufRet.f32 %1018, 1
  %1021 = extractvalue %dx.types.CBufRet.f32 %1018, 2
  %1022 = fmul fast float %937, %929
  %1023 = fmul fast float %938, %929
  %1024 = fadd fast float %939, %1019
  %1025 = fadd fast float %1022, %1020
  %1026 = fadd fast float %1023, %1021
  %1027 = fmul fast float %1024, %1015
  %1028 = fmul fast float %1025, %1015
  %1029 = fmul fast float %1026, %1015
  %1030 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %13, float %1027, float %1028, float %1029, float undef, i32 0, i32 0, i32 0, float %925)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1031 = extractvalue %dx.types.ResRet.f32 %1030, 0
  %1032 = fmul fast float %1024, %1016
  %1033 = fmul fast float %1025, %1016
  %1034 = fmul fast float %1026, %1016
  %1035 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %13, float %1032, float %1033, float %1034, float undef, i32 0, i32 0, i32 0, float %926)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1036 = extractvalue %dx.types.ResRet.f32 %1035, 1
  %1037 = fmul fast float %1024, %1017
  %1038 = fmul fast float %1025, %1017
  %1039 = fmul fast float %1026, %1017
  %1040 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %13, float %1037, float %1038, float %1039, float undef, i32 0, i32 0, i32 0, float %927)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1041 = extractvalue %dx.types.ResRet.f32 %1040, 2
  %1042 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 34)  ; CBufferLoadLegacy(handle,regIndex)
  %1043 = extractvalue %dx.types.CBufRet.f32 %1042, 1
  %1044 = fmul fast float %1036, %1031
  %1045 = fmul fast float %1044, %1041
  %1046 = call float @dx.op.unary.f32(i32 23, float %1045)  ; Log(value)
  %1047 = fmul fast float %1046, %1043
  %1048 = call float @dx.op.unary.f32(i32 21, float %1047)  ; Exp(value)
  %1049 = extractvalue %dx.types.CBufRet.f32 %1042, 2
  %1050 = fmul fast float %1011, %1011
  %1051 = fmul fast float %1050, %1048
  %1052 = fmul fast float %1051, %1049
  %1053 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 32)  ; CBufferLoadLegacy(handle,regIndex)
  %1054 = extractvalue %dx.types.CBufRet.f32 %1053, 3
  %1055 = fmul fast float %1054, %1052
  %1056 = bitcast float %1055 to i32
  %1057 = sitofp i32 %1056 to float
  %1058 = fptosi float %1057 to i32
  %1059 = bitcast i32 %1058 to float
  %1060 = fsub fast float 1.000000e+00, %1052
  %1061 = bitcast float %1060 to i32
  %1062 = sitofp i32 %1061 to float
  %1063 = fptosi float %1062 to i32
  %1064 = bitcast i32 %1063 to float
  %1065 = fadd fast float %1059, %1064
  %1066 = bitcast float %1065 to i32
  %1067 = sub nsw i32 2129859010, %1066
  %1068 = bitcast i32 %1067 to float
  %1069 = fmul fast float %1068, %1059
  %1070 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %1071 = extractvalue %dx.types.CBufRet.f32 %1070, 2
  %1072 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 37)  ; CBufferLoadLegacy(handle,regIndex)
  %1073 = extractvalue %dx.types.CBufRet.f32 %1072, 0
  %1074 = fmul fast float %1069, %1073
  %1075 = fadd fast float %1074, 1.000000e+00
  %1076 = bitcast float %1075 to i32
  %1077 = sub nsw i32 2129859010, %1076
  %1078 = bitcast i32 %1077 to float
  %1079 = fmul fast float %1069, %1071
  %1080 = fmul fast float %1079, %1078
  br label %1081

; <label>:1081                                    ; preds = %1013, %924
  %1082 = phi float [ %1080, %1013 ], [ %1011, %924 ]
  %1083 = fmul fast float %1082, %756
  %1084 = fadd fast float %1083, %903
  br label %1085

; <label>:1085                                    ; preds = %1081, %902
  %1086 = phi float [ %1084, %1081 ], [ %903, %902 ]
  %1087 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %1088 = extractvalue %dx.types.CBufRet.f32 %1087, 1
  %1089 = fcmp fast ogt float %1086, %1088
  br i1 %1089, label %1092, label %1090, !dx.controlflow.hints !62

; <label>:1090                                    ; preds = %1085
  %1091 = fadd fast float %756, %484
  br label %1142

; <label>:1092                                    ; preds = %1085
  %1093 = fmul fast float %1086, 0xBFF7154760000000
  %1094 = call float @dx.op.unary.f32(i32 21, float %1093)  ; Exp(value)
  %1095 = call float @dx.op.unary.f32(i32 7, float %1094)  ; Saturate(value)
  %1096 = fsub fast float 1.000000e+00, %1095
  %1097 = fdiv fast float %1086, %756
  %1098 = fadd fast float %756, %484
  %1099 = fmul fast float %484, %484
  %1100 = fmul fast float %1098, %1098
  %1101 = fsub fast float %1099, %1100
  %1102 = fmul fast float %1101, -5.000000e-01
  %1103 = fmul fast float %1102, %1097
  %1104 = fadd fast float %1103, %479
  %1105 = fadd fast float %1086, %487
  %1106 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %18, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %1107 = extractvalue %dx.types.CBufRet.i32 %1106, 0
  %1108 = icmp eq i32 %1107, 0
  br i1 %1108, label %1135, label %1109, !dx.controlflow.hints !63

; <label>:1109                                    ; preds = %1092
  %1110 = icmp ne i32 %492, 0
  %1111 = zext i1 %1110 to i32
  %1112 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %1113 = extractvalue %dx.types.CBufRet.f32 %1112, 2
  %1114 = extractvalue %dx.types.CBufRet.f32 %1112, 0
  %1115 = fsub fast float %1098, %1114
  %1116 = fmul fast float %1115, %1113
  %1117 = call float @dx.op.unary.f32(i32 7, float %1116)  ; Saturate(value)
  %1118 = fadd fast float %1117, -5.000000e-01
  %1119 = fmul fast float %1118, 2.000000e+00
  %1120 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %1121 = extractvalue %dx.types.CBufRet.f32 %1120, 2
  %1122 = fcmp fast olt float %1119, %1121
  br i1 %1122, label %1123, label %1135, !dx.controlflow.hints !64

; <label>:1123                                    ; preds = %1109
  %1124 = fmul fast float %1119, %1119
  %1125 = fmul fast float %1096, %480
  %1126 = fmul fast float %1119, %1125
  %1127 = fmul fast float %1124, %1125
  %1128 = fmul fast float %1126, %1124
  %1129 = fmul fast float %1124, %1124
  %1130 = fmul fast float %1129, %1125
  %1131 = fadd fast float %1126, %488
  %1132 = fadd fast float %1127, %489
  %1133 = fadd fast float %1128, %490
  %1134 = fadd fast float %1130, %491
  br label %1135

; <label>:1135                                    ; preds = %1123, %1109, %1092
  %1136 = phi float [ %488, %1092 ], [ %1131, %1123 ], [ %488, %1109 ]
  %1137 = phi float [ %489, %1092 ], [ %1132, %1123 ], [ %489, %1109 ]
  %1138 = phi float [ %490, %1092 ], [ %1133, %1123 ], [ %490, %1109 ]
  %1139 = phi float [ %491, %1092 ], [ %1134, %1123 ], [ %491, %1109 ]
  %1140 = phi i32 [ %492, %1092 ], [ 1, %1123 ], [ %1111, %1109 ]
  %1141 = fmul fast float %1095, %480
  br label %1142

; <label>:1142                                    ; preds = %1135, %1090
  %1143 = phi float [ %1091, %1090 ], [ %1098, %1135 ]
  %1144 = phi float [ %479, %1090 ], [ %1104, %1135 ]
  %1145 = phi float [ %480, %1090 ], [ %1141, %1135 ]
  %1146 = phi float [ %487, %1090 ], [ %1105, %1135 ]
  %1147 = phi float [ %488, %1090 ], [ %1136, %1135 ]
  %1148 = phi float [ %489, %1090 ], [ %1137, %1135 ]
  %1149 = phi float [ %490, %1090 ], [ %1138, %1135 ]
  %1150 = phi float [ %491, %1090 ], [ %1139, %1135 ]
  %1151 = phi i32 [ %492, %1090 ], [ %1140, %1135 ]
  %1152 = fmul fast float %756, %277
  %1153 = fmul fast float %756, %278
  %1154 = fmul fast float %756, %279
  %1155 = fadd fast float %1152, %481
  %1156 = fadd fast float %1153, %482
  %1157 = fadd fast float %1154, %483
  %1158 = fcmp fast olt float %1143, %456
  %1159 = extractvalue %dx.types.CBufRet.f32 %1087, 2
  %1160 = fcmp fast olt float %1159, %1145
  %1161 = and i1 %1158, %1160
  br i1 %1161, label %478, label %1162

; <label>:1162                                    ; preds = %1142
  %1163 = uitofp i32 %495 to float
  br label %1164

; <label>:1164                                    ; preds = %1162, %452
  %1165 = phi float [ 0.000000e+00, %452 ], [ %1144, %1162 ]
  %1166 = phi float [ 1.000000e+00, %452 ], [ %1145, %1162 ]
  %1167 = phi float [ 0.000000e+00, %452 ], [ %1163, %1162 ]
  %1168 = phi float [ 0.000000e+00, %452 ], [ %1146, %1162 ]
  %1169 = phi float [ 0.000000e+00, %452 ], [ %1147, %1162 ]
  %1170 = phi float [ 0.000000e+00, %452 ], [ %1148, %1162 ]
  %1171 = phi float [ 0.000000e+00, %452 ], [ %1149, %1162 ]
  %1172 = phi float [ 0.000000e+00, %452 ], [ %1150, %1162 ]
  %1173 = phi i32 [ 0, %452 ], [ %1151, %1162 ]
  %1174 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %18, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %1175 = extractvalue %dx.types.CBufRet.i32 %1174, 0
  %1176 = icmp eq i32 %1175, 0
  br i1 %1176, label %1218, label %1177, !dx.controlflow.hints !65

; <label>:1177                                    ; preds = %1164
  %1178 = icmp eq i32 %1173, 0
  br i1 %1178, label %1217, label %1179, !dx.controlflow.hints !66

; <label>:1179                                    ; preds = %1177
  %1180 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %18, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %1181 = extractvalue %dx.types.CBufRet.i32 %1180, 2
  %1182 = icmp eq i32 %1181, 0
  br i1 %1182, label %1189, label %1183, !dx.controlflow.hints !67

; <label>:1183                                    ; preds = %1179
  %1184 = fsub fast float 1.000000e+00, %1166
  %1185 = fdiv fast float %1169, %1184
  %1186 = fdiv fast float %1170, %1184
  %1187 = fdiv fast float %1171, %1184
  %1188 = fdiv fast float %1172, %1184
  br label %1194

; <label>:1189                                    ; preds = %1179
  %1190 = fadd fast float %1169, %1166
  %1191 = fadd fast float %1170, %1166
  %1192 = fadd fast float %1171, %1166
  %1193 = fadd fast float %1172, %1166
  br label %1194

; <label>:1194                                    ; preds = %1189, %1183
  %1195 = phi float [ %1185, %1183 ], [ %1190, %1189 ]
  %1196 = phi float [ %1186, %1183 ], [ %1191, %1189 ]
  %1197 = phi float [ %1187, %1183 ], [ %1192, %1189 ]
  %1198 = phi float [ %1188, %1183 ], [ %1193, %1189 ]
  %1199 = call float @dx.op.binary.f32(i32 35, float %1195, float -1.000000e+00)  ; FMax(a,b)
  %1200 = call float @dx.op.binary.f32(i32 35, float %1196, float -1.000000e+00)  ; FMax(a,b)
  %1201 = call float @dx.op.binary.f32(i32 35, float %1197, float -1.000000e+00)  ; FMax(a,b)
  %1202 = call float @dx.op.binary.f32(i32 35, float %1198, float -1.000000e+00)  ; FMax(a,b)
  %1203 = call float @dx.op.binary.f32(i32 36, float %1199, float 1.000000e+00)  ; FMin(a,b)
  %1204 = call float @dx.op.binary.f32(i32 36, float %1200, float 1.000000e+00)  ; FMin(a,b)
  %1205 = call float @dx.op.binary.f32(i32 36, float %1201, float 1.000000e+00)  ; FMin(a,b)
  %1206 = call float @dx.op.binary.f32(i32 36, float %1202, float 1.000000e+00)  ; FMin(a,b)
  %1207 = fmul fast float %1203, 1.500000e+00
  %1208 = call float @dx.op.tertiary.f32(i32 46, float -2.000000e+00, float %1205, float %1207)  ; FMad(a,b,c)
  %1209 = call float @dx.op.tertiary.f32(i32 46, float 4.000000e+00, float %1204, float 0.000000e+00)  ; FMad(a,b,c)
  %1210 = call float @dx.op.tertiary.f32(i32 46, float -4.000000e+00, float %1206, float %1209)  ; FMad(a,b,c)
  %1211 = fmul fast float %1203, 0x3FEBB67AE0000000
  %1212 = call float @dx.op.tertiary.f32(i32 46, float 0xBFD8A23460000000, float %1205, float %1211)  ; FMad(a,b,c)
  %1213 = call float @dx.op.tertiary.f32(i32 46, float 5.000000e-01, float %1204, float 0.000000e+00)  ; FMad(a,b,c)
  %1214 = call float @dx.op.tertiary.f32(i32 46, float 5.000000e-01, float %1206, float %1213)  ; FMad(a,b,c)
  %1215 = fadd fast float %1208, 5.000000e-01
  %1216 = fadd fast float %1212, 5.000000e-01
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %19, i32 %20, i32 0, float %1215, float %1210, float %1216, float %1214, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %1218

; <label>:1217                                    ; preds = %1177
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %19, i32 %20, i32 0, float 0.000000e+00, float 0.000000e+00, float 0x3FEF6560C0000000, float 1.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %1218

; <label>:1218                                    ; preds = %1217, %1194, %1164
  %1219 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 419)  ; CBufferLoadLegacy(handle,regIndex)
  %1220 = extractvalue %dx.types.CBufRet.f32 %1219, 0
  %1221 = extractvalue %dx.types.CBufRet.f32 %1219, 1
  %1222 = extractvalue %dx.types.CBufRet.f32 %1219, 2
  %1223 = call float @dx.op.dot3.f32(i32 55, float %277, float %278, float %279, float %1220, float %1221, float %1222)  ; Dot3(ax,ay,az,bx,by,bz)
  %1224 = fmul fast float %1223, %1165
  %1225 = fcmp fast ogt float %1168, 0.000000e+00
  %1226 = fdiv fast float 1.000000e+00, %1168
  %1227 = fmul fast float %1224, %1226
  %1228 = select i1 %1225, float %1227, float %288
  %1229 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %1230 = extractvalue %dx.types.CBufRet.f32 %1229, 0
  %1231 = extractvalue %dx.types.CBufRet.f32 %1229, 1
  %1232 = extractvalue %dx.types.CBufRet.f32 %1229, 2
  %1233 = fmul fast float %1230, %241
  %1234 = fmul fast float %1231, %241
  %1235 = fmul fast float %1232, %241
  %1236 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %1237 = extractvalue %dx.types.CBufRet.f32 %1236, 0
  %1238 = extractvalue %dx.types.CBufRet.f32 %1236, 1
  %1239 = extractvalue %dx.types.CBufRet.f32 %1236, 2
  %1240 = fmul fast float %1237, %242
  %1241 = fmul fast float %1238, %242
  %1242 = fmul fast float %1239, %242
  %1243 = fadd fast float %1240, %1233
  %1244 = fadd fast float %1241, %1234
  %1245 = fadd fast float %1242, %1235
  %1246 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %1247 = extractvalue %dx.types.CBufRet.f32 %1246, 0
  %1248 = extractvalue %dx.types.CBufRet.f32 %1246, 1
  %1249 = extractvalue %dx.types.CBufRet.f32 %1246, 2
  %1250 = fadd fast float %1243, %1247
  %1251 = fadd fast float %1244, %1248
  %1252 = fadd fast float %1245, %1249
  %1253 = fmul fast float %1250, %1228
  %1254 = fmul fast float %1251, %1228
  %1255 = fmul fast float %1252, %1228
  %1256 = call float @dx.op.dot3.f32(i32 55, float %1253, float %1254, float %1255, float %1253, float %1254, float %1255)  ; Dot3(ax,ay,az,bx,by,bz)
  %1257 = call float @dx.op.unary.f32(i32 25, float %1256)  ; Rsqrt(value)
  %1258 = fmul fast float %1257, %1256
  %1259 = fmul fast float %1257, %1253
  %1260 = fmul fast float %1257, %1254
  %1261 = fmul fast float %1257, %1255
  %1262 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %18, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1263 = extractvalue %dx.types.CBufRet.i32 %1262, 1
  %1264 = and i32 %1263, 1
  %1265 = icmp ne i32 %1264, 0
  %1266 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %1267 = extractvalue %dx.types.CBufRet.f32 %1266, 2
  %1268 = fcmp fast ogt float %1267, 0.000000e+00
  %1269 = and i1 %1265, %1268
  br i1 %1269, label %1270, label %1428, !dx.controlflow.hints !68

; <label>:1270                                    ; preds = %1218
  %1271 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1272 = extractvalue %dx.types.CBufRet.f32 %1271, 2
  %1273 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1274 = extractvalue %dx.types.CBufRet.f32 %1273, 2
  %1275 = fsub fast float %1272, %1274
  %1276 = extractvalue %dx.types.CBufRet.i32 %1262, 0
  %1277 = call i32 @dx.op.binary.i32(i32 40, i32 %1276, i32 3)  ; UMin(a,b)
  %1278 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %1279 = extractvalue %dx.types.CBufRet.f32 %1278, 0
  %1280 = extractvalue %dx.types.CBufRet.f32 %1278, 1
  %1281 = extractvalue %dx.types.CBufRet.f32 %1273, 0
  %1282 = extractvalue %dx.types.CBufRet.f32 %1273, 1
  %1283 = fsub fast float %1279, %1281
  %1284 = fsub fast float %1280, %1282
  %1285 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %1286 = extractvalue %dx.types.CBufRet.f32 %1285, 0
  %1287 = fcmp fast ogt float %1286, 0.000000e+00
  %1288 = fsub fast float -0.000000e+00, %1283
  %1289 = fsub fast float -0.000000e+00, %1284
  %1290 = call float @dx.op.dot2.f32(i32 54, float %1259, float %1260, float %1259, float %1260)  ; Dot2(ax,ay,bx,by)
  %1291 = call float @dx.op.dot2.f32(i32 54, float %1259, float %1260, float %1288, float %1289)  ; Dot2(ax,ay,bx,by)
  %1292 = fmul fast float %1291, 2.000000e+00
  %1293 = call float @dx.op.dot2.f32(i32 54, float %1288, float %1289, float %1288, float %1289)  ; Dot2(ax,ay,bx,by)
  %1294 = fmul fast float %1286, %1286
  %1295 = fsub fast float %1293, %1294
  %1296 = fmul fast float %1292, %1292
  %1297 = fmul fast float %1290, 4.000000e+00
  %1298 = fmul fast float %1297, %1295
  %1299 = fsub fast float %1296, %1298
  %1300 = fcmp fast ogt float %1299, 0.000000e+00
  br i1 %1300, label %1301, label %1316, !dx.controlflow.hints !69

; <label>:1301                                    ; preds = %1270
  %1302 = fcmp fast ogt float %1292, 0.000000e+00
  %1303 = call float @dx.op.unary.f32(i32 24, float %1299)  ; Sqrt(value)
  %1304 = fsub fast float -0.000000e+00, %1303
  %1305 = select i1 %1302, float %1303, float %1304
  %1306 = fadd fast float %1305, %1292
  %1307 = fmul float %1306, -5.000000e-01
  %1308 = fdiv fast float %1307, %1290
  %1309 = call float @dx.op.binary.f32(i32 35, float %1308, float 0.000000e+00)  ; FMax(a,b)
  %1310 = call float @dx.op.binary.f32(i32 36, float %1258, float %1309)  ; FMin(a,b)
  %1311 = fdiv fast float %1295, %1307
  %1312 = call float @dx.op.binary.f32(i32 35, float %1311, float 0.000000e+00)  ; FMax(a,b)
  %1313 = call float @dx.op.binary.f32(i32 36, float %1258, float %1312)  ; FMin(a,b)
  %1314 = call float @dx.op.binary.f32(i32 36, float %1310, float %1313)  ; FMin(a,b)
  %1315 = call float @dx.op.binary.f32(i32 35, float %1310, float %1313)  ; FMax(a,b)
  br label %1316

; <label>:1316                                    ; preds = %1301, %1270
  %1317 = phi float [ %1315, %1301 ], [ -1.000000e+00, %1270 ]
  %1318 = phi float [ %1314, %1301 ], [ -1.000000e+00, %1270 ]
  %1319 = phi i1 [ true, %1301 ], [ false, %1270 ]
  %1320 = and i1 %1287, %1319
  br i1 %1320, label %1321, label %1323, !dx.controlflow.hints !70

; <label>:1321                                    ; preds = %1316
  %1322 = fcmp fast oeq float %1318, %1317
  br i1 %1322, label %1428, label %1324, !dx.controlflow.hints !71

; <label>:1323                                    ; preds = %1316
  br i1 %1287, label %1428, label %1324, !dx.controlflow.hints !72

; <label>:1324                                    ; preds = %1323, %1321
  %1325 = phi float [ %1258, %1323 ], [ %1317, %1321 ]
  %1326 = phi float [ 0.000000e+00, %1323 ], [ %1318, %1321 ]
  %1327 = fcmp fast oeq float %1261, 0.000000e+00
  %1328 = fdiv fast float %1275, %1261
  %1329 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1328)  ; FMax(a,b)
  %1330 = select i1 %1327, float %1325, float %1329
  %1331 = call float @dx.op.binary.f32(i32 36, float %1325, float %1330)  ; FMin(a,b)
  %1332 = fcmp fast ogt float %1261, 0.000000e+00
  %1333 = fcmp fast olt float %1275, 0.000000e+00
  br i1 %1332, label %1334, label %1335, !dx.controlflow.hints !73

; <label>:1334                                    ; preds = %1324
  br i1 %1333, label %1428, label %1338, !dx.controlflow.hints !74

; <label>:1335                                    ; preds = %1324
  br i1 %1333, label %1336, label %1338, !dx.controlflow.hints !75

; <label>:1336                                    ; preds = %1335
  %1337 = call float @dx.op.binary.f32(i32 35, float %1326, float %1331)  ; FMax(a,b)
  br label %1338

; <label>:1338                                    ; preds = %1336, %1335, %1334
  %1339 = phi float [ %1337, %1336 ], [ %1326, %1335 ], [ %1326, %1334 ]
  %1340 = getelementptr inbounds [3 x float], [3 x float]* %22, i32 0, i32 0
  store float -1.000000e+00, float* %1340, align 4, !tbaa !76, !noalias !80
  %1341 = getelementptr inbounds [3 x float], [3 x float]* %22, i32 0, i32 1
  store float -1.000000e+00, float* %1341, align 4, !tbaa !76, !noalias !80
  %1342 = getelementptr inbounds [3 x float], [3 x float]* %22, i32 0, i32 2
  store float -1.000000e+00, float* %1342, align 4, !tbaa !76, !noalias !80
  %1343 = getelementptr inbounds [3 x float], [3 x float]* %23, i32 0, i32 0
  store float -1.000000e+00, float* %1343, align 4, !tbaa !76, !noalias !80
  %1344 = getelementptr inbounds [3 x float], [3 x float]* %23, i32 0, i32 1
  store float -1.000000e+00, float* %1344, align 4, !tbaa !76, !noalias !80
  %1345 = getelementptr inbounds [3 x float], [3 x float]* %23, i32 0, i32 2
  store float -1.000000e+00, float* %1345, align 4, !tbaa !76, !noalias !80
  %1346 = icmp sgt i32 %1277, 0
  br i1 %1346, label %1347, label %1405

; <label>:1347                                    ; preds = %1338
  br label %1348

; <label>:1348                                    ; preds = %1395, %1347
  %1349 = phi i32 [ %1396, %1395 ], [ 0, %1347 ]
  %1350 = add nuw i32 %1349, 171
  %1351 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 %1350)  ; CBufferLoadLegacy(handle,regIndex)
  %1352 = extractvalue %dx.types.CBufRet.f32 %1351, 0
  %1353 = extractvalue %dx.types.CBufRet.f32 %1351, 1
  %1354 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1355 = extractvalue %dx.types.CBufRet.f32 %1354, 0
  %1356 = extractvalue %dx.types.CBufRet.f32 %1354, 1
  %1357 = fsub fast float %1352, %1355
  %1358 = fsub fast float %1353, %1356
  %1359 = extractvalue %dx.types.CBufRet.f32 %1351, 2
  %1360 = fsub fast float -0.000000e+00, %1357
  %1361 = fsub fast float -0.000000e+00, %1358
  %1362 = call float @dx.op.dot2.f32(i32 54, float %1259, float %1260, float %1360, float %1361)  ; Dot2(ax,ay,bx,by)
  %1363 = fmul fast float %1362, 2.000000e+00
  %1364 = call float @dx.op.dot2.f32(i32 54, float %1360, float %1361, float %1360, float %1361)  ; Dot2(ax,ay,bx,by)
  %1365 = fmul fast float %1359, %1359
  %1366 = fsub fast float %1364, %1365
  %1367 = fmul fast float %1363, %1363
  %1368 = fmul fast float %1297, %1366
  %1369 = fsub fast float %1367, %1368
  %1370 = fcmp fast ogt float %1369, 0.000000e+00
  br i1 %1370, label %1371, label %1386, !dx.controlflow.hints !69

; <label>:1371                                    ; preds = %1348
  %1372 = fcmp fast ogt float %1363, 0.000000e+00
  %1373 = call float @dx.op.unary.f32(i32 24, float %1369)  ; Sqrt(value)
  %1374 = fsub fast float -0.000000e+00, %1373
  %1375 = select i1 %1372, float %1373, float %1374
  %1376 = fadd fast float %1375, %1363
  %1377 = fmul float %1376, -5.000000e-01
  %1378 = fdiv fast float %1377, %1290
  %1379 = call float @dx.op.binary.f32(i32 35, float %1378, float 0.000000e+00)  ; FMax(a,b)
  %1380 = call float @dx.op.binary.f32(i32 36, float %1325, float %1379)  ; FMin(a,b)
  %1381 = fdiv fast float %1366, %1377
  %1382 = call float @dx.op.binary.f32(i32 35, float %1381, float 0.000000e+00)  ; FMax(a,b)
  %1383 = call float @dx.op.binary.f32(i32 36, float %1325, float %1382)  ; FMin(a,b)
  %1384 = call float @dx.op.binary.f32(i32 36, float %1380, float %1383)  ; FMin(a,b)
  %1385 = call float @dx.op.binary.f32(i32 35, float %1380, float %1383)  ; FMax(a,b)
  br label %1386

; <label>:1386                                    ; preds = %1371, %1348
  %1387 = phi float [ %1385, %1371 ], [ -1.000000e+00, %1348 ]
  %1388 = phi float [ %1384, %1371 ], [ -1.000000e+00, %1348 ]
  %1389 = phi i1 [ true, %1371 ], [ false, %1348 ]
  br i1 %1389, label %1390, label %1395, !dx.controlflow.hints !91

; <label>:1390                                    ; preds = %1386
  %1391 = call float @dx.op.binary.f32(i32 35, float %1339, float %1388)  ; FMax(a,b)
  %1392 = getelementptr inbounds [3 x float], [3 x float]* %22, i32 0, i32 %1349
  store float %1391, float* %1392, align 4, !tbaa !76, !noalias !80
  %1393 = call float @dx.op.binary.f32(i32 35, float %1339, float %1387)  ; FMax(a,b)
  %1394 = getelementptr inbounds [3 x float], [3 x float]* %23, i32 0, i32 %1349
  store float %1393, float* %1394, align 4, !tbaa !76, !noalias !80
  br label %1395

; <label>:1395                                    ; preds = %1390, %1386
  %1396 = add nuw nsw i32 %1349, 1
  %1397 = icmp eq i32 %1396, %1277
  br i1 %1397, label %1398, label %1348

; <label>:1398                                    ; preds = %1395
  %1399 = load float, float* %1342, align 4, !tbaa !76, !alias.scope !92, !noalias !95
  %1400 = load float, float* %1341, align 4, !tbaa !76, !alias.scope !98, !noalias !99
  %1401 = load float, float* %1340, align 4, !tbaa !76, !alias.scope !100, !noalias !101
  %1402 = load float, float* %1345, align 4, !tbaa !76, !alias.scope !102, !noalias !105
  %1403 = load float, float* %1344, align 4, !tbaa !76, !alias.scope !108, !noalias !109
  %1404 = load float, float* %1343, align 4, !tbaa !76, !alias.scope !110, !noalias !111
  br label %1405

; <label>:1405                                    ; preds = %1398, %1338
  %1406 = phi float [ -1.000000e+00, %1338 ], [ %1404, %1398 ]
  %1407 = phi float [ -1.000000e+00, %1338 ], [ %1403, %1398 ]
  %1408 = phi float [ -1.000000e+00, %1338 ], [ %1402, %1398 ]
  %1409 = phi float [ -1.000000e+00, %1338 ], [ %1401, %1398 ]
  %1410 = phi float [ -1.000000e+00, %1338 ], [ %1400, %1398 ]
  %1411 = phi float [ -1.000000e+00, %1338 ], [ %1399, %1398 ]
  %1412 = call float @dx.op.binary.f32(i32 36, float %1410, float %1411)  ; FMin(a,b)
  %1413 = call float @dx.op.binary.f32(i32 36, float %1409, float %1412)  ; FMin(a,b)
  %1414 = call float @dx.op.binary.f32(i32 35, float %1409, float %1410)  ; FMax(a,b)
  %1415 = call float @dx.op.binary.f32(i32 36, float %1414, float %1411)  ; FMin(a,b)
  %1416 = call float @dx.op.binary.f32(i32 36, float %1409, float %1410)  ; FMin(a,b)
  %1417 = call float @dx.op.binary.f32(i32 35, float %1416, float %1415)  ; FMax(a,b)
  %1418 = call float @dx.op.binary.f32(i32 35, float %1410, float %1411)  ; FMax(a,b)
  %1419 = call float @dx.op.binary.f32(i32 35, float %1409, float %1418)  ; FMax(a,b)
  store float %1413, float* %1340, align 4, !tbaa !76, !alias.scope !100, !noalias !101
  store float %1417, float* %1341, align 4, !tbaa !76, !alias.scope !98, !noalias !99
  store float %1419, float* %1342, align 4, !tbaa !76, !alias.scope !92, !noalias !95
  %1420 = call float @dx.op.binary.f32(i32 36, float %1407, float %1408)  ; FMin(a,b)
  %1421 = call float @dx.op.binary.f32(i32 36, float %1406, float %1420)  ; FMin(a,b)
  %1422 = call float @dx.op.binary.f32(i32 35, float %1406, float %1407)  ; FMax(a,b)
  %1423 = call float @dx.op.binary.f32(i32 36, float %1422, float %1408)  ; FMin(a,b)
  %1424 = call float @dx.op.binary.f32(i32 36, float %1406, float %1407)  ; FMin(a,b)
  %1425 = call float @dx.op.binary.f32(i32 35, float %1424, float %1423)  ; FMax(a,b)
  %1426 = call float @dx.op.binary.f32(i32 35, float %1407, float %1408)  ; FMax(a,b)
  %1427 = call float @dx.op.binary.f32(i32 35, float %1406, float %1426)  ; FMax(a,b)
  store float %1421, float* %1343, align 4, !tbaa !76, !alias.scope !110, !noalias !111
  store float %1425, float* %1344, align 4, !tbaa !76, !alias.scope !108, !noalias !109
  store float %1427, float* %1345, align 4, !tbaa !76, !alias.scope !102, !noalias !105
  br label %1428

; <label>:1428                                    ; preds = %1405, %1334, %1323, %1321, %1218
  %1429 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 423)  ; CBufferLoadLegacy(handle,regIndex)
  %1430 = extractvalue %dx.types.CBufRet.f32 %1429, 2
  %1431 = fmul fast float %1430, %1228
  %1432 = call float @dx.op.unary.f32(i32 7, float %1431)  ; Saturate(value)
  %1433 = fptoui float %1167 to i32
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1434 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %21
  store i32 %1433, i32 addrspace(3)* %1434, align 4, !tbaa !112
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1435 = and i32 %21, 63
  %1436 = icmp ult i32 %1435, 32
  br i1 %1436, label %1437, label %1443, !dx.controlflow.hints !114

; <label>:1437                                    ; preds = %1428
  %1438 = add i32 %21, 32
  %1439 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1438
  %1440 = load i32, i32 addrspace(3)* %1439, align 4, !tbaa !112
  %1441 = load i32, i32 addrspace(3)* %1434, align 4, !tbaa !112
  %1442 = call i32 @dx.op.binary.i32(i32 40, i32 %1441, i32 %1440)  ; UMin(a,b)
  store i32 %1442, i32 addrspace(3)* %1434, align 4, !tbaa !112
  br label %1443

; <label>:1443                                    ; preds = %1437, %1428
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %1444 = icmp ult i32 %1435, 16
  br i1 %1444, label %1445, label %1451, !dx.controlflow.hints !115

; <label>:1445                                    ; preds = %1443
  %1446 = add i32 %21, 16
  %1447 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1446
  %1448 = load i32, i32 addrspace(3)* %1447, align 4, !tbaa !112
  %1449 = load i32, i32 addrspace(3)* %1434, align 4, !tbaa !112
  %1450 = call i32 @dx.op.binary.i32(i32 40, i32 %1449, i32 %1448)  ; UMin(a,b)
  store i32 %1450, i32 addrspace(3)* %1434, align 4, !tbaa !112
  br label %1451

; <label>:1451                                    ; preds = %1445, %1443
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %1452 = icmp ult i32 %1435, 8
  br i1 %1452, label %1453, label %1459, !dx.controlflow.hints !116

; <label>:1453                                    ; preds = %1451
  %1454 = add i32 %21, 8
  %1455 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1454
  %1456 = load i32, i32 addrspace(3)* %1455, align 4, !tbaa !112
  %1457 = load i32, i32 addrspace(3)* %1434, align 4, !tbaa !112
  %1458 = call i32 @dx.op.binary.i32(i32 40, i32 %1457, i32 %1456)  ; UMin(a,b)
  store i32 %1458, i32 addrspace(3)* %1434, align 4, !tbaa !112
  br label %1459

; <label>:1459                                    ; preds = %1453, %1451
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %1460 = icmp ult i32 %1435, 4
  br i1 %1460, label %1461, label %1467, !dx.controlflow.hints !117

; <label>:1461                                    ; preds = %1459
  %1462 = add i32 %21, 4
  %1463 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1462
  %1464 = load i32, i32 addrspace(3)* %1463, align 4, !tbaa !112
  %1465 = load i32, i32 addrspace(3)* %1434, align 4, !tbaa !112
  %1466 = call i32 @dx.op.binary.i32(i32 40, i32 %1465, i32 %1464)  ; UMin(a,b)
  store i32 %1466, i32 addrspace(3)* %1434, align 4, !tbaa !112
  br label %1467

; <label>:1467                                    ; preds = %1461, %1459
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %1468 = icmp ult i32 %1435, 2
  br i1 %1468, label %1469, label %1475, !dx.controlflow.hints !118

; <label>:1469                                    ; preds = %1467
  %1470 = add i32 %21, 2
  %1471 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1470
  %1472 = load i32, i32 addrspace(3)* %1471, align 4, !tbaa !112
  %1473 = load i32, i32 addrspace(3)* %1434, align 4, !tbaa !112
  %1474 = call i32 @dx.op.binary.i32(i32 40, i32 %1473, i32 %1472)  ; UMin(a,b)
  store i32 %1474, i32 addrspace(3)* %1434, align 4, !tbaa !112
  br label %1475

; <label>:1475                                    ; preds = %1469, %1467
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %1476 = icmp eq i32 %1435, 0
  br i1 %1476, label %1477, label %1483, !dx.controlflow.hints !119

; <label>:1477                                    ; preds = %1475
  %1478 = add i32 %21, 1
  %1479 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1478
  %1480 = load i32, i32 addrspace(3)* %1479, align 4, !tbaa !112
  %1481 = load i32, i32 addrspace(3)* %1434, align 4, !tbaa !112
  %1482 = call i32 @dx.op.binary.i32(i32 40, i32 %1481, i32 %1480)  ; UMin(a,b)
  store i32 %1482, i32 addrspace(3)* %1434, align 4, !tbaa !112
  br label %1483

; <label>:1483                                    ; preds = %1477, %1475
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1484 = and i32 %21, -64
  %1485 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1484
  %1486 = load i32, i32 addrspace(3)* %1485, align 4, !tbaa !112
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  store i32 %1433, i32 addrspace(3)* %1434, align 4, !tbaa !112
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  br i1 %1436, label %1487, label %1493, !dx.controlflow.hints !120

; <label>:1487                                    ; preds = %1483
  %1488 = add i32 %21, 32
  %1489 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1488
  %1490 = load i32, i32 addrspace(3)* %1489, align 4, !tbaa !112
  %1491 = load i32, i32 addrspace(3)* %1434, align 4, !tbaa !112
  %1492 = call i32 @dx.op.binary.i32(i32 39, i32 %1491, i32 %1490)  ; UMax(a,b)
  store i32 %1492, i32 addrspace(3)* %1434, align 4, !tbaa !112
  br label %1493

; <label>:1493                                    ; preds = %1487, %1483
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %1444, label %1494, label %1500, !dx.controlflow.hints !121

; <label>:1494                                    ; preds = %1493
  %1495 = add i32 %21, 16
  %1496 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1495
  %1497 = load i32, i32 addrspace(3)* %1496, align 4, !tbaa !112
  %1498 = load i32, i32 addrspace(3)* %1434, align 4, !tbaa !112
  %1499 = call i32 @dx.op.binary.i32(i32 39, i32 %1498, i32 %1497)  ; UMax(a,b)
  store i32 %1499, i32 addrspace(3)* %1434, align 4, !tbaa !112
  br label %1500

; <label>:1500                                    ; preds = %1494, %1493
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %1452, label %1501, label %1507, !dx.controlflow.hints !122

; <label>:1501                                    ; preds = %1500
  %1502 = add i32 %21, 8
  %1503 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1502
  %1504 = load i32, i32 addrspace(3)* %1503, align 4, !tbaa !112
  %1505 = load i32, i32 addrspace(3)* %1434, align 4, !tbaa !112
  %1506 = call i32 @dx.op.binary.i32(i32 39, i32 %1505, i32 %1504)  ; UMax(a,b)
  store i32 %1506, i32 addrspace(3)* %1434, align 4, !tbaa !112
  br label %1507

; <label>:1507                                    ; preds = %1501, %1500
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %1460, label %1508, label %1514, !dx.controlflow.hints !123

; <label>:1508                                    ; preds = %1507
  %1509 = add i32 %21, 4
  %1510 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1509
  %1511 = load i32, i32 addrspace(3)* %1510, align 4, !tbaa !112
  %1512 = load i32, i32 addrspace(3)* %1434, align 4, !tbaa !112
  %1513 = call i32 @dx.op.binary.i32(i32 39, i32 %1512, i32 %1511)  ; UMax(a,b)
  store i32 %1513, i32 addrspace(3)* %1434, align 4, !tbaa !112
  br label %1514

; <label>:1514                                    ; preds = %1508, %1507
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %1468, label %1515, label %1521, !dx.controlflow.hints !124

; <label>:1515                                    ; preds = %1514
  %1516 = add i32 %21, 2
  %1517 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1516
  %1518 = load i32, i32 addrspace(3)* %1517, align 4, !tbaa !112
  %1519 = load i32, i32 addrspace(3)* %1434, align 4, !tbaa !112
  %1520 = call i32 @dx.op.binary.i32(i32 39, i32 %1519, i32 %1518)  ; UMax(a,b)
  store i32 %1520, i32 addrspace(3)* %1434, align 4, !tbaa !112
  br label %1521

; <label>:1521                                    ; preds = %1515, %1514
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %1476, label %1522, label %1528, !dx.controlflow.hints !125

; <label>:1522                                    ; preds = %1521
  %1523 = add i32 %21, 1
  %1524 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1523
  %1525 = load i32, i32 addrspace(3)* %1524, align 4, !tbaa !112
  %1526 = load i32, i32 addrspace(3)* %1434, align 4, !tbaa !112
  %1527 = call i32 @dx.op.binary.i32(i32 39, i32 %1526, i32 %1525)  ; UMax(a,b)
  store i32 %1527, i32 addrspace(3)* %1434, align 4, !tbaa !112
  br label %1528

; <label>:1528                                    ; preds = %1522, %1521
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1529 = load i32, i32 addrspace(3)* %1485, align 4, !tbaa !112
  %1530 = uitofp i32 %1529 to float
  %1531 = uitofp i32 %1486 to float
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %3, i32 %19, i32 %20, i32 undef, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %1532 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1533 = extractvalue %dx.types.CBufRet.f32 %1532, 0
  %1534 = fmul fast float %1533, %1167
  %1535 = fmul fast float %1533, %1530
  %1536 = fmul fast float %1533, %1531
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %4, i32 %19, i32 %20, i32 undef, float %1534, float %1535, float %1536, float %1534, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %19, i32 %20, i32 undef, float %1432, float %1432, float %1432, float %1432, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
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
!dx.entryPoints = !{!29}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !15, !21, !24}
!5 = !{!6, !8, !9, !10, !11, !12, !13, !14}
!6 = !{i32 0, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 16, i32 1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, %"class.Texture3D<float>"* undef, !"", i32 0, i32 1, i32 1, i32 4, i32 0, !7}
!9 = !{i32 2, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 0, i32 2, i32 1, i32 4, i32 0, !7}
!10 = !{i32 3, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 8, i32 1, i32 2, i32 0, !7}
!11 = !{i32 4, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 9, i32 1, i32 2, i32 0, !7}
!12 = !{i32 5, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 13, i32 1, i32 2, i32 0, !7}
!13 = !{i32 6, %"class.Texture2D<float>"* undef, !"", i32 0, i32 0, i32 1, i32 2, i32 0, !7}
!14 = !{i32 7, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 17, i32 1, i32 11, i32 0, null}
!15 = !{!16, !17, !18, !19}
!16 = !{i32 0, %"class.RWTexture2D<vector<float, 3> >"* undef, !"", i32 0, i32 0, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!17 = !{i32 1, %"class.RWTexture2D<float>"* undef, !"", i32 0, i32 1, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!18 = !{i32 2, %"class.RWTexture2D<float>"* undef, !"", i32 0, i32 2, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!19 = !{i32 3, %"class.RWTexture2DArray<vector<float, 4> >"* undef, !"", i32 0, i32 3, i32 1, i32 7, i1 false, i1 false, i1 false, !20}
!20 = !{i32 0, i32 14}
!21 = !{!22, !23}
!22 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!23 = !{i32 1, %FogRaymarchingConstBuffer_decl* undef, !"", i32 0, i32 0, i32 1, i32 112, null}
!24 = !{!25, !26, !27, !28}
!25 = !{i32 0, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!26 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 3, i32 1, i32 0, null}
!27 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!28 = !{i32 3, %struct.SamplerState* undef, !"", i32 0, i32 5, i32 1, i32 0, null}
!29 = !{void ()* @cs_fog_raymarching_air_clouds_heightmap, !"cs_fog_raymarching_air_clouds_heightmap", null, !4, !30}
!30 = !{i32 0, i64 272, i32 4, !31}
!31 = !{i32 8, i32 8, i32 1}
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
!46 = distinct !{!46, !"dx.controlflow.hints", i32 1}
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
!58 = distinct !{!58, !"dx.controlflow.hints", i32 2}
!59 = distinct !{!59, !"dx.controlflow.hints", i32 2}
!60 = distinct !{!60, !"dx.controlflow.hints", i32 2}
!61 = distinct !{!61, !"dx.controlflow.hints", i32 2}
!62 = distinct !{!62, !"dx.controlflow.hints", i32 1}
!63 = distinct !{!63, !"dx.controlflow.hints", i32 2}
!64 = distinct !{!64, !"dx.controlflow.hints", i32 2}
!65 = distinct !{!65, !"dx.controlflow.hints", i32 2}
!66 = distinct !{!66, !"dx.controlflow.hints", i32 2}
!67 = distinct !{!67, !"dx.controlflow.hints", i32 2}
!68 = distinct !{!68, !"dx.controlflow.hints", i32 1}
!69 = distinct !{!69, !"dx.controlflow.hints", i32 2}
!70 = distinct !{!70, !"dx.controlflow.hints", i32 2}
!71 = distinct !{!71, !"dx.controlflow.hints", i32 2}
!72 = distinct !{!72, !"dx.controlflow.hints", i32 2}
!73 = distinct !{!73, !"dx.controlflow.hints", i32 2}
!74 = distinct !{!74, !"dx.controlflow.hints", i32 2}
!75 = distinct !{!75, !"dx.controlflow.hints", i32 2}
!76 = !{!77, !77, i64 0}
!77 = !{!"float", !78, i64 0}
!78 = !{!"omnipotent char", !79, i64 0}
!79 = !{!"Simple C/C++ TBAA"}
!80 = !{!81, !83, !85, !86, !88, !89, !90}
!81 = distinct !{!81, !82, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z: %cFogParams"}
!82 = distinct !{!82, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z"}
!83 = distinct !{!83, !84, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %scattering"}
!84 = distinct !{!84, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z"}
!85 = distinct !{!85, !84, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %extinction"}
!86 = distinct !{!86, !87, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z: %scattering"}
!87 = distinct !{!87, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z"}
!88 = distinct !{!88, !87, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z: %transmission"}
!89 = distinct !{!89, !87, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z: %depthDensityWeighted"}
!90 = distinct !{!90, !87, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z: %rawShadowmapData"}
!91 = distinct !{!91, !"dx.controlflow.hints", i32 2}
!92 = !{!93}
!93 = distinct !{!93, !94, !"\01?sort@@YAXAIAM00@Z: %c"}
!94 = distinct !{!94, !"\01?sort@@YAXAIAM00@Z"}
!95 = !{!96, !97, !81, !83, !85, !86, !88, !89, !90}
!96 = distinct !{!96, !94, !"\01?sort@@YAXAIAM00@Z: %a"}
!97 = distinct !{!97, !94, !"\01?sort@@YAXAIAM00@Z: %b"}
!98 = !{!97}
!99 = !{!96, !93, !81, !83, !85, !86, !88, !89, !90}
!100 = !{!96}
!101 = !{!97, !93, !81, !83, !85, !86, !88, !89, !90}
!102 = !{!103}
!103 = distinct !{!103, !104, !"\01?sort@@YAXAIAM00@Z: %c"}
!104 = distinct !{!104, !"\01?sort@@YAXAIAM00@Z"}
!105 = !{!106, !107, !81, !83, !85, !86, !88, !89, !90}
!106 = distinct !{!106, !104, !"\01?sort@@YAXAIAM00@Z: %a"}
!107 = distinct !{!107, !104, !"\01?sort@@YAXAIAM00@Z: %b"}
!108 = !{!107}
!109 = !{!106, !103, !81, !83, !85, !86, !88, !89, !90}
!110 = !{!106}
!111 = !{!107, !103, !81, !83, !85, !86, !88, !89, !90}
!112 = !{!113, !113, i64 0}
!113 = !{!"int", !78, i64 0}
!114 = distinct !{!114, !"dx.controlflow.hints", i32 2}
!115 = distinct !{!115, !"dx.controlflow.hints", i32 2}
!116 = distinct !{!116, !"dx.controlflow.hints", i32 2}
!117 = distinct !{!117, !"dx.controlflow.hints", i32 2}
!118 = distinct !{!118, !"dx.controlflow.hints", i32 2}
!119 = distinct !{!119, !"dx.controlflow.hints", i32 2}
!120 = distinct !{!120, !"dx.controlflow.hints", i32 2}
!121 = distinct !{!121, !"dx.controlflow.hints", i32 2}
!122 = distinct !{!122, !"dx.controlflow.hints", i32 2}
!123 = distinct !{!123, !"dx.controlflow.hints", i32 2}
!124 = distinct !{!124, !"dx.controlflow.hints", i32 2}
!125 = distinct !{!125, !"dx.controlflow.hints", i32 2}

