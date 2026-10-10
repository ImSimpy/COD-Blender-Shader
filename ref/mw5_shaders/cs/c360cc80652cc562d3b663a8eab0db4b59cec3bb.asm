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
; shader hash: 854c67168ae479ba853c1f499bb9b567
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
;                                   texture     f32          2d      T0            t27     1
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

define void @cs_fog_raymarching_clouds_brfog() {
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
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 27, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
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
  %214 = extractvalue %dx.types.ResRet.f32 %213, 1
  %215 = extractvalue %dx.types.ResRet.f32 %213, 2
  %216 = extractvalue %dx.types.ResRet.f32 %213, 3
  %217 = fadd fast float %214, %208
  %218 = fadd fast float %215, %208
  %219 = fadd fast float %216, %208
  %220 = call float @dx.op.unary.f32(i32 22, float %217)  ; Frc(value)
  %221 = call float @dx.op.unary.f32(i32 22, float %218)  ; Frc(value)
  %222 = call float @dx.op.unary.f32(i32 22, float %219)  ; Frc(value)
  %223 = fadd fast float %221, %204
  %224 = fadd fast float %222, %205
  %225 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %226 = extractvalue %dx.types.CBufRet.f32 %225, 2
  %227 = extractvalue %dx.types.CBufRet.f32 %225, 3
  %228 = fmul fast float %226, %223
  %229 = fmul fast float %227, %224
  %230 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %231 = extractvalue %dx.types.CBufRet.f32 %230, 0
  %232 = extractvalue %dx.types.CBufRet.f32 %230, 1
  %233 = extractvalue %dx.types.CBufRet.f32 %230, 2
  %234 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %235 = extractvalue %dx.types.CBufRet.f32 %234, 1
  %236 = fmul fast float %228, 2.000000e+00
  %237 = fmul fast float %229, 2.000000e+00
  %238 = fsub fast float 1.000000e+00, %236
  %239 = fsub fast float 1.000000e+00, %237
  %240 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %241 = extractvalue %dx.types.CBufRet.f32 %240, 0
  %242 = extractvalue %dx.types.CBufRet.f32 %240, 1
  %243 = extractvalue %dx.types.CBufRet.f32 %240, 2
  %244 = fmul fast float %241, %238
  %245 = fmul fast float %242, %238
  %246 = fmul fast float %243, %238
  %247 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %248 = extractvalue %dx.types.CBufRet.f32 %247, 0
  %249 = extractvalue %dx.types.CBufRet.f32 %247, 1
  %250 = extractvalue %dx.types.CBufRet.f32 %247, 2
  %251 = fmul fast float %248, %239
  %252 = fmul fast float %249, %239
  %253 = fmul fast float %250, %239
  %254 = fadd fast float %251, %244
  %255 = fadd fast float %252, %245
  %256 = fadd fast float %253, %246
  %257 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %258 = extractvalue %dx.types.CBufRet.f32 %257, 0
  %259 = extractvalue %dx.types.CBufRet.f32 %257, 1
  %260 = extractvalue %dx.types.CBufRet.f32 %257, 2
  %261 = fadd fast float %254, %258
  %262 = fadd fast float %255, %259
  %263 = fadd fast float %256, %260
  %264 = fmul fast float %261, %235
  %265 = fmul fast float %262, %235
  %266 = fmul fast float %263, %235
  %267 = fmul fast float %264, %264
  %268 = fmul fast float %265, %265
  %269 = fadd fast float %267, %268
  %270 = fmul fast float %266, %266
  %271 = fadd fast float %269, %270
  %272 = call float @dx.op.unary.f32(i32 24, float %271)  ; Sqrt(value)
  %273 = fdiv fast float 1.000000e+00, %272
  %274 = fmul fast float %264, %273
  %275 = fmul fast float %265, %273
  %276 = fmul fast float %266, %273
  %277 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %6, i32 0, i32 %34, i32 %35, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %278 = extractvalue %dx.types.ResRet.f32 %277, 0
  %279 = fcmp fast ogt float %278, -1.000000e+00
  %280 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %281 = extractvalue %dx.types.CBufRet.f32 %280, 1
  %282 = select i1 %279, float %281, float 1.000000e+00
  %283 = fadd fast float %278, 1.000000e+00
  %284 = fmul fast float %282, %283
  %285 = call float @dx.op.unary.f32(i32 6, float %284)  ; FAbs(value)
  %286 = fdiv fast float 1.000000e+00, %235
  %287 = fmul fast float %286, %272
  %288 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 423)  ; CBufferLoadLegacy(handle,regIndex)
  %289 = extractvalue %dx.types.CBufRet.f32 %288, 1
  %290 = fmul fast float %289, %287
  %291 = fmul fast float %287, %285
  %292 = extractvalue %dx.types.CBufRet.f32 %280, 3
  %293 = fcmp fast oge float %285, %292
  %294 = call float @dx.op.binary.f32(i32 36, float %291, float %290)  ; FMin(a,b)
  %295 = select i1 %293, float %290, float %294
  %296 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %18, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %297 = extractvalue %dx.types.CBufRet.i32 %296, 3
  %298 = icmp eq i32 %297, 0
  %299 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 31)  ; CBufferLoadLegacy(handle,regIndex)
  %300 = extractvalue %dx.types.CBufRet.f32 %299, 2
  %301 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 32)  ; CBufferLoadLegacy(handle,regIndex)
  %302 = extractvalue %dx.types.CBufRet.f32 %301, 2
  %303 = fsub fast float %300, %233
  %304 = fadd fast float %303, %302
  br i1 %298, label %316, label %305, !dx.controlflow.hints !33

; <label>:305                                     ; preds = %203
  %306 = fsub fast float -0.000000e+00, %232
  %307 = fsub fast float -0.000000e+00, %231
  %308 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %307, float %306, float %304)  ; Dot3(ax,ay,az,bx,by,bz)
  %309 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %274, float %275, float %276)  ; Dot3(ax,ay,az,bx,by,bz)
  %310 = fdiv fast float 1.000000e+00, %309
  %311 = fmul fast float %310, %308
  %312 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %307, float %306, float %303)  ; Dot3(ax,ay,az,bx,by,bz)
  %313 = fmul fast float %310, %312
  %314 = call float @dx.op.binary.f32(i32 36, float %311, float %313)  ; FMin(a,b)
  %315 = call float @dx.op.binary.f32(i32 35, float %311, float %313)  ; FMax(a,b)
  br label %349

; <label>:316                                     ; preds = %203
  %317 = fdiv fast float 1.000000e+00, %274
  %318 = fdiv fast float 1.000000e+00, %275
  %319 = fdiv fast float 1.000000e+00, %276
  %320 = extractvalue %dx.types.CBufRet.f32 %299, 0
  %321 = extractvalue %dx.types.CBufRet.f32 %299, 1
  %322 = extractvalue %dx.types.CBufRet.f32 %301, 0
  %323 = extractvalue %dx.types.CBufRet.f32 %301, 1
  %324 = fsub fast float %320, %231
  %325 = fmul fast float %324, %317
  %326 = fadd fast float %324, %322
  %327 = fmul fast float %326, %317
  %328 = call float @dx.op.binary.f32(i32 36, float %325, float %327)  ; FMin(a,b)
  %329 = call float @dx.op.binary.f32(i32 35, float %325, float %327)  ; FMax(a,b)
  %330 = fsub fast float %321, %232
  %331 = fmul fast float %330, %318
  %332 = fadd fast float %330, %323
  %333 = fmul fast float %332, %318
  %334 = call float @dx.op.binary.f32(i32 36, float %331, float %333)  ; FMin(a,b)
  %335 = call float @dx.op.binary.f32(i32 35, float %328, float %334)  ; FMax(a,b)
  %336 = call float @dx.op.binary.f32(i32 35, float %331, float %333)  ; FMax(a,b)
  %337 = call float @dx.op.binary.f32(i32 36, float %329, float %336)  ; FMin(a,b)
  %338 = fmul fast float %303, %319
  %339 = fmul fast float %304, %319
  %340 = call float @dx.op.binary.f32(i32 36, float %338, float %339)  ; FMin(a,b)
  %341 = call float @dx.op.binary.f32(i32 35, float %335, float %340)  ; FMax(a,b)
  %342 = call float @dx.op.binary.f32(i32 35, float %338, float %339)  ; FMax(a,b)
  %343 = call float @dx.op.binary.f32(i32 36, float %337, float %342)  ; FMin(a,b)
  %344 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %341)  ; FMax(a,b)
  %345 = fcmp fast ult float %343, %344
  br i1 %345, label %349, label %346, !dx.controlflow.hints !34

; <label>:346                                     ; preds = %316
  %347 = call float @dx.op.binary.f32(i32 36, float %341, float %343)  ; FMin(a,b)
  %348 = call float @dx.op.binary.f32(i32 35, float %341, float %343)  ; FMax(a,b)
  br label %349

; <label>:349                                     ; preds = %346, %316, %305
  %350 = phi float [ %314, %305 ], [ %347, %346 ], [ 0.000000e+00, %316 ]
  %351 = phi float [ %315, %305 ], [ %348, %346 ], [ 0.000000e+00, %316 ]
  %352 = fcmp fast oeq float %351, 0.000000e+00
  br i1 %352, label %356, label %353, !dx.controlflow.hints !35

; <label>:353                                     ; preds = %349
  %354 = call float @dx.op.binary.f32(i32 36, float 0x47EFFFFFE0000000, float %350)  ; FMin(a,b)
  %355 = call float @dx.op.binary.f32(i32 35, float -1.000000e+00, float %351)  ; FMax(a,b)
  br label %356

; <label>:356                                     ; preds = %353, %349
  %357 = phi i32 [ 1, %353 ], [ 0, %349 ]
  %358 = phi float [ %355, %353 ], [ -1.000000e+00, %349 ]
  %359 = phi float [ %354, %353 ], [ 0x47EFFFFFE0000000, %349 ]
  %360 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %361 = extractvalue %dx.types.CBufRet.f32 %360, 2
  %362 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %363 = extractvalue %dx.types.CBufRet.f32 %362, 3
  %364 = fsub fast float -0.000000e+00, %231
  %365 = fsub fast float -0.000000e+00, %232
  %366 = fsub fast float %361, %233
  %367 = fadd fast float %366, %363
  %368 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %364, float %365, float %367)  ; Dot3(ax,ay,az,bx,by,bz)
  %369 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %274, float %275, float %276)  ; Dot3(ax,ay,az,bx,by,bz)
  %370 = fdiv fast float 1.000000e+00, %369
  %371 = fmul fast float %370, %368
  %372 = fcmp fast olt float %371, 0.000000e+00
  %373 = fcmp fast ogt float %276, 0.000000e+00
  %374 = and i1 %373, %372
  br i1 %374, label %379, label %375, !dx.controlflow.hints !36

; <label>:375                                     ; preds = %356
  %376 = fcmp fast olt float %276, 0.000000e+00
  br i1 %376, label %377, label %379, !dx.controlflow.hints !37

; <label>:377                                     ; preds = %375
  %378 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %371)  ; FMax(a,b)
  br label %379

; <label>:379                                     ; preds = %377, %375, %356
  %380 = phi float [ 0.000000e+00, %356 ], [ %378, %377 ], [ 0.000000e+00, %375 ]
  %381 = phi float [ 0.000000e+00, %356 ], [ 0x47EFFFFFE0000000, %377 ], [ %371, %375 ]
  %382 = fcmp fast oeq float %381, 0.000000e+00
  br i1 %382, label %386, label %383, !dx.controlflow.hints !38

; <label>:383                                     ; preds = %379
  %384 = call float @dx.op.binary.f32(i32 36, float %359, float %380)  ; FMin(a,b)
  %385 = call float @dx.op.binary.f32(i32 35, float %358, float %381)  ; FMax(a,b)
  br label %386

; <label>:386                                     ; preds = %383, %379
  %387 = phi i32 [ 1, %383 ], [ 0, %379 ]
  %388 = phi float [ %385, %383 ], [ %358, %379 ]
  %389 = phi float [ %384, %383 ], [ %359, %379 ]
  %390 = call float @dx.op.binary.f32(i32 36, float %295, float %388)  ; FMin(a,b)
  %391 = call float @dx.op.binary.f32(i32 35, float %272, float %389)  ; FMax(a,b)
  %392 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %393 = extractvalue %dx.types.CBufRet.f32 %392, 0
  %394 = fmul fast float %220, 2.000000e+00
  %395 = fadd fast float %394, -1.000000e+00
  %396 = fmul fast float %393, %395
  %397 = fadd fast float %396, %391
  %398 = fcmp fast olt float %397, %390
  %399 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %400 = extractvalue %dx.types.CBufRet.f32 %399, 2
  %401 = fcmp fast olt float %400, 1.000000e+00
  %402 = and i1 %401, %398
  br i1 %402, label %403, label %1054

; <label>:403                                     ; preds = %386
  %404 = fmul fast float %397, %276
  %405 = fadd fast float %404, %233
  %406 = fmul fast float %397, %275
  %407 = fadd fast float %406, %232
  %408 = fmul fast float %397, %274
  %409 = fadd fast float %408, %231
  br label %410

; <label>:410                                     ; preds = %1032, %403
  %411 = phi i32 [ %663, %1032 ], [ undef, %403 ]
  %412 = phi float [ %665, %1032 ], [ undef, %403 ]
  %413 = phi float [ %1034, %1032 ], [ 0.000000e+00, %403 ]
  %414 = phi float [ %1035, %1032 ], [ 1.000000e+00, %403 ]
  %415 = phi float [ %1045, %1032 ], [ %409, %403 ]
  %416 = phi float [ %1046, %1032 ], [ %407, %403 ]
  %417 = phi float [ %1047, %1032 ], [ %405, %403 ]
  %418 = phi float [ %1033, %1032 ], [ %397, %403 ]
  %419 = phi i32 [ %426, %1032 ], [ 0, %403 ]
  %420 = phi float [ %1036, %1032 ], [ 0.000000e+00, %403 ]
  %421 = phi float [ %1037, %1032 ], [ 0.000000e+00, %403 ]
  %422 = phi float [ %1038, %1032 ], [ 0.000000e+00, %403 ]
  %423 = phi float [ %1039, %1032 ], [ 0.000000e+00, %403 ]
  %424 = phi float [ %1040, %1032 ], [ 0.000000e+00, %403 ]
  %425 = phi i32 [ %1041, %1032 ], [ 0, %403 ]
  %426 = add i32 %419, 1
  %427 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %428 = extractvalue %dx.types.CBufRet.f32 %427, 0
  %429 = icmp eq i32 %357, 0
  br i1 %429, label %486, label %430, !dx.controlflow.hints !39

; <label>:430                                     ; preds = %410
  %431 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 35)  ; CBufferLoadLegacy(handle,regIndex)
  %432 = extractvalue %dx.types.CBufRet.f32 %431, 0
  %433 = extractvalue %dx.types.CBufRet.f32 %431, 1
  %434 = extractvalue %dx.types.CBufRet.f32 %431, 2
  %435 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 31)  ; CBufferLoadLegacy(handle,regIndex)
  %436 = extractvalue %dx.types.CBufRet.f32 %435, 0
  %437 = extractvalue %dx.types.CBufRet.f32 %435, 1
  %438 = extractvalue %dx.types.CBufRet.f32 %435, 2
  %439 = fsub fast float %415, %436
  %440 = fsub fast float %416, %437
  %441 = fsub fast float %417, %438
  %442 = fmul fast float %439, %432
  %443 = fmul fast float %440, %433
  %444 = fmul fast float %441, %434
  %445 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %18, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %446 = extractvalue %dx.types.CBufRet.i32 %445, 3
  %447 = icmp eq i32 %446, 0
  br i1 %447, label %451, label %448, !dx.controlflow.hints !40

; <label>:448                                     ; preds = %430
  %449 = call float @dx.op.unary.f32(i32 22, float %442)  ; Frc(value)
  %450 = call float @dx.op.unary.f32(i32 22, float %443)  ; Frc(value)
  br label %451

; <label>:451                                     ; preds = %448, %430
  %452 = phi float [ %449, %448 ], [ %442, %430 ]
  %453 = phi float [ %450, %448 ], [ %443, %430 ]
  %454 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %14, float %452, float %453, float %444, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %455 = extractvalue %dx.types.ResRet.f32 %454, 0
  %456 = fmul fast float %455, 2.000000e+00
  %457 = fadd fast float %456, -1.000000e+00
  %458 = extractvalue %dx.types.CBufRet.f32 %431, 3
  %459 = fmul fast float %457, %458
  %460 = fcmp fast olt float %459, 0.000000e+00
  %461 = fcmp fast oge float %444, 0.000000e+00
  %462 = fcmp fast ole float %444, 1.000000e+00
  br i1 %447, label %465, label %463, !dx.controlflow.hints !41

; <label>:463                                     ; preds = %451
  %464 = and i1 %461, %462
  br label %475

; <label>:465                                     ; preds = %451
  %466 = fcmp fast oge float %442, 0.000000e+00
  %467 = fcmp fast oge float %443, 0.000000e+00
  %468 = and i1 %466, %467
  %469 = and i1 %461, %468
  %470 = fcmp fast ole float %442, 1.000000e+00
  %471 = fcmp fast ole float %443, 1.000000e+00
  %472 = and i1 %470, %471
  %473 = and i1 %462, %472
  %474 = and i1 %469, %473
  br label %475

; <label>:475                                     ; preds = %465, %463
  %476 = phi i1 [ %464, %463 ], [ %474, %465 ]
  %477 = and i1 %460, %476
  %478 = call float @dx.op.unary.f32(i32 6, float %459)  ; FAbs(value)
  %479 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %480 = extractvalue %dx.types.CBufRet.f32 %479, 1
  %481 = extractvalue %dx.types.CBufRet.f32 %479, 0
  %482 = call float @dx.op.binary.f32(i32 35, float %478, float %481)  ; FMax(a,b)
  %483 = select i1 %477, float %480, float %482
  %484 = zext i1 %477 to i32
  %485 = call float @dx.op.binary.f32(i32 36, float 0x47EFFFFFE0000000, float %483)  ; FMin(a,b)
  br label %486

; <label>:486                                     ; preds = %475, %410
  %487 = phi i32 [ %484, %475 ], [ 0, %410 ]
  %488 = phi float [ %485, %475 ], [ 0x47EFFFFFE0000000, %410 ]
  %489 = icmp eq i32 %387, 0
  br i1 %489, label %662, label %490, !dx.controlflow.hints !42

; <label>:490                                     ; preds = %486
  %491 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %18, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %492 = extractvalue %dx.types.CBufRet.i32 %491, 1
  %493 = and i32 %492, 1
  %494 = icmp eq i32 %493, 0
  br i1 %494, label %495, label %652, !dx.controlflow.hints !43

; <label>:495                                     ; preds = %490
  %496 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 204)  ; CBufferLoadLegacy(handle,regIndex)
  %497 = extractvalue %dx.types.CBufRet.f32 %496, 2
  %498 = extractvalue %dx.types.CBufRet.f32 %496, 3
  %499 = fmul fast float %497, %415
  %500 = fmul fast float %498, %416
  %501 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 205)  ; CBufferLoadLegacy(handle,regIndex)
  %502 = extractvalue %dx.types.CBufRet.f32 %501, 0
  %503 = extractvalue %dx.types.CBufRet.f32 %501, 1
  %504 = fadd fast float %499, %502
  %505 = fadd fast float %500, %503
  %506 = call float @dx.op.unary.f32(i32 7, float %504)  ; Saturate(value)
  %507 = call float @dx.op.unary.f32(i32 7, float %505)  ; Saturate(value)
  %508 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %16, float %506, float %507, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %509 = extractvalue %dx.types.ResRet.f32 %508, 0
  %510 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %511 = extractvalue %dx.types.CBufRet.f32 %510, 0
  %512 = fmul fast float %511, %509
  %513 = fsub fast float %504, %506
  %514 = fsub fast float %505, %507
  %515 = extractvalue %dx.types.CBufRet.f32 %496, 0
  %516 = extractvalue %dx.types.CBufRet.f32 %496, 1
  %517 = fmul fast float %515, %513
  %518 = fmul fast float %516, %514
  %519 = fmul fast float %517, %517
  %520 = fmul fast float %518, %518
  %521 = fadd fast float %519, %520
  %522 = call float @dx.op.unary.f32(i32 24, float %521)  ; Sqrt(value)
  %523 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %524 = extractvalue %dx.types.CBufRet.f32 %523, 3
  %525 = fmul fast float %524, %522
  %526 = call float @dx.op.unary.f32(i32 7, float %525)  ; Saturate(value)
  %527 = extractvalue %dx.types.CBufRet.f32 %523, 2
  %528 = fsub fast float %527, %512
  %529 = fmul fast float %528, %526
  %530 = extractvalue %dx.types.CBufRet.f32 %510, 1
  %531 = fsub fast float %417, %512
  %532 = fsub fast float %531, %530
  %533 = fsub fast float %532, %529
  %534 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %535 = extractvalue %dx.types.CBufRet.f32 %534, 2
  %536 = fsub fast float %533, %535
  %537 = fcmp fast olt float %536, 0.000000e+00
  %538 = call float @dx.op.unary.f32(i32 6, float %536)  ; FAbs(value)
  %539 = extractvalue %dx.types.CBufRet.i32 %491, 0
  %540 = icmp eq i32 %539, 0
  br i1 %540, label %594, label %541

; <label>:541                                     ; preds = %495
  br label %542

; <label>:542                                     ; preds = %581, %541
  %543 = phi i32 [ %587, %581 ], [ 1, %541 ]
  %544 = phi float [ %589, %581 ], [ 0x47EFFFFFE0000000, %541 ]
  %545 = phi i32 [ %590, %581 ], [ 0, %541 ]
  %546 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %547 = extractvalue %dx.types.CBufRet.f32 %546, 1
  %548 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %18, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %549 = extractvalue %dx.types.CBufRet.i32 %548, 1
  %550 = and i32 %549, 8
  %551 = icmp eq i32 %550, 0
  %552 = fcmp fast ogt float %547, %533
  %553 = or i1 %552, %551
  %554 = add i32 %545, 171
  %555 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 %554)  ; CBufferLoadLegacy(handle,regIndex)
  %556 = extractvalue %dx.types.CBufRet.f32 %555, 0
  %557 = extractvalue %dx.types.CBufRet.f32 %555, 1
  %558 = extractvalue %dx.types.CBufRet.f32 %555, 2
  br i1 %553, label %559, label %565, !dx.controlflow.hints !44

; <label>:559                                     ; preds = %542
  %560 = fsub fast float %556, %415
  %561 = fsub fast float %557, %416
  %562 = fmul fast float %560, %560
  %563 = fmul fast float %561, %561
  %564 = fadd fast float %562, %563
  br label %581

; <label>:565                                     ; preds = %542
  %566 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %567 = extractvalue %dx.types.CBufRet.f32 %566, 2
  %568 = extractvalue %dx.types.CBufRet.f32 %546, 2
  %569 = fmul fast float %568, %567
  %570 = fsub fast float %569, %547
  %571 = fdiv fast float %558, %570
  %572 = fsub fast float %415, %556
  %573 = fsub fast float %416, %557
  %574 = fsub fast float %533, %547
  %575 = fmul fast float %571, %574
  %576 = fmul fast float %572, %572
  %577 = fmul fast float %573, %573
  %578 = fadd fast float %576, %577
  %579 = fmul fast float %575, %575
  %580 = fadd fast float %578, %579
  br label %581

; <label>:581                                     ; preds = %565, %559
  %582 = phi float [ %564, %559 ], [ %580, %565 ]
  %583 = call float @dx.op.unary.f32(i32 24, float %582)  ; Sqrt(value)
  %584 = fsub float %558, %583
  %585 = fcmp fast olt float %584, 0.000000e+00
  %586 = zext i1 %585 to i32
  %587 = and i32 %586, %543
  %588 = call float @dx.op.unary.f32(i32 6, float %584)  ; FAbs(value)
  %589 = call float @dx.op.binary.f32(i32 36, float %544, float %588)  ; FMin(a,b)
  %590 = add i32 %545, 1
  %591 = extractvalue %dx.types.CBufRet.i32 %548, 0
  %592 = icmp ult i32 %590, %591
  br i1 %592, label %542, label %593

; <label>:593                                     ; preds = %581
  br label %594

; <label>:594                                     ; preds = %593, %495
  %595 = phi i32 [ 1, %495 ], [ %587, %593 ]
  %596 = phi float [ 0x47EFFFFFE0000000, %495 ], [ %589, %593 ]
  br label %597

; <label>:597                                     ; preds = %597, %594
  %598 = phi i32 [ %595, %594 ], [ %637, %597 ]
  %599 = phi float [ 0x47EFFFFFE0000000, %594 ], [ %639, %597 ]
  %600 = phi i32 [ 0, %594 ], [ %640, %597 ]
  %601 = add nuw nsw i32 %600, 191
  %602 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 %601)  ; CBufferLoadLegacy(handle,regIndex)
  %603 = extractvalue %dx.types.CBufRet.f32 %602, 0
  %604 = extractvalue %dx.types.CBufRet.f32 %602, 1
  %605 = extractvalue %dx.types.CBufRet.f32 %602, 2
  %606 = add nuw nsw i32 %600, 195
  %607 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 %606)  ; CBufferLoadLegacy(handle,regIndex)
  %608 = extractvalue %dx.types.CBufRet.f32 %607, 0
  %609 = extractvalue %dx.types.CBufRet.f32 %607, 1
  %610 = extractvalue %dx.types.CBufRet.f32 %607, 2
  %611 = fsub fast float %415, %603
  %612 = fsub fast float %416, %604
  %613 = fsub fast float %533, %605
  %614 = call float @dx.op.unary.f32(i32 6, float %611)  ; FAbs(value)
  %615 = call float @dx.op.unary.f32(i32 6, float %612)  ; FAbs(value)
  %616 = call float @dx.op.unary.f32(i32 6, float %613)  ; FAbs(value)
  %617 = fsub fast float %614, %608
  %618 = fsub fast float %615, %609
  %619 = fsub fast float %616, %610
  %620 = call float @dx.op.binary.f32(i32 35, float %617, float 0.000000e+00)  ; FMax(a,b)
  %621 = call float @dx.op.binary.f32(i32 35, float %618, float 0.000000e+00)  ; FMax(a,b)
  %622 = call float @dx.op.binary.f32(i32 35, float %619, float 0.000000e+00)  ; FMax(a,b)
  %623 = fmul fast float %620, %620
  %624 = fmul fast float %621, %621
  %625 = fadd fast float %624, %623
  %626 = fmul fast float %622, %622
  %627 = fadd fast float %625, %626
  %628 = call float @dx.op.unary.f32(i32 24, float %627)  ; Sqrt(value)
  %629 = call float @dx.op.binary.f32(i32 35, float %618, float %619)  ; FMax(a,b)
  %630 = call float @dx.op.binary.f32(i32 35, float %617, float %629)  ; FMax(a,b)
  %631 = call float @dx.op.binary.f32(i32 36, float %630, float 0.000000e+00)  ; FMin(a,b)
  %632 = fadd fast float %631, %628
  %633 = fsub fast float -0.000000e+00, %632
  %634 = fcmp ogt float %632, -0.000000e+00
  %635 = icmp ne i32 %598, 0
  %636 = and i1 %635, %634
  %637 = zext i1 %636 to i32
  %638 = call float @dx.op.unary.f32(i32 6, float %633)  ; FAbs(value)
  %639 = call float @dx.op.binary.f32(i32 36, float %599, float %638)  ; FMin(a,b)
  %640 = add nuw nsw i32 %600, 1
  %641 = icmp eq i32 %640, 4
  br i1 %641, label %642, label %597

; <label>:642                                     ; preds = %597
  %643 = call float @dx.op.binary.f32(i32 36, float %538, float %639)  ; FMin(a,b)
  %644 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %18, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %645 = extractvalue %dx.types.CBufRet.i32 %644, 1
  %646 = and i32 %645, 2
  %647 = icmp ne i32 %646, 0
  %648 = xor i1 %636, %647
  %649 = call float @dx.op.binary.f32(i32 36, float %643, float %596)  ; FMin(a,b)
  %650 = and i1 %648, %537
  %651 = zext i1 %650 to i32
  br label %652

; <label>:652                                     ; preds = %642, %490
  %653 = phi i32 [ %411, %490 ], [ %651, %642 ]
  %654 = phi float [ 0.000000e+00, %490 ], [ %649, %642 ]
  %655 = phi float [ %417, %490 ], [ %533, %642 ]
  %656 = icmp ne i32 %653, 0
  %657 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %658 = extractvalue %dx.types.CBufRet.f32 %657, 3
  %659 = call float @dx.op.binary.f32(i32 35, float %654, float %658)  ; FMax(a,b)
  %660 = call float @dx.op.binary.f32(i32 36, float 0x47EFFFFFE0000000, float %659)  ; FMin(a,b)
  %661 = zext i1 %656 to i32
  br label %662

; <label>:662                                     ; preds = %652, %486
  %663 = phi i32 [ %653, %652 ], [ %411, %486 ]
  %664 = phi i32 [ %661, %652 ], [ 0, %486 ]
  %665 = phi float [ %655, %652 ], [ %412, %486 ]
  %666 = phi float [ %660, %652 ], [ 0x47EFFFFFE0000000, %486 ]
  %667 = extractvalue %dx.types.CBufRet.f32 %427, 2
  %668 = fmul fast float %667, %418
  %669 = call float @dx.op.unary.f32(i32 23, float %668)  ; Log(value)
  %670 = fmul fast float %669, 0x3FE62E4300000000
  %671 = call float @dx.op.binary.f32(i32 35, float %670, float 1.000000e+00)  ; FMax(a,b)
  %672 = fmul fast float %671, %666
  %673 = call float @dx.op.binary.f32(i32 36, float %672, float %488)  ; FMin(a,b)
  %674 = call float @dx.op.binary.f32(i32 35, float %673, float %428)  ; FMax(a,b)
  %675 = fadd fast float %390, 0x3F1A36E2E0000000
  %676 = fsub fast float %675, %418
  %677 = call float @dx.op.binary.f32(i32 36, float %676, float %674)  ; FMin(a,b)
  %678 = icmp eq i32 %487, 0
  br i1 %678, label %858, label %679, !dx.controlflow.hints !45

; <label>:679                                     ; preds = %662
  %680 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %681 = extractvalue %dx.types.CBufRet.f32 %680, 3
  %682 = fmul fast float %681, %418
  %683 = fcmp fast oeq float %682, 0.000000e+00
  br i1 %683, label %698, label %684, !dx.controlflow.hints !46

; <label>:684                                     ; preds = %679
  %685 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 41)  ; CBufferLoadLegacy(handle,regIndex)
  %686 = extractvalue %dx.types.CBufRet.f32 %685, 3
  %687 = fmul fast float %686, %682
  %688 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 33)  ; CBufferLoadLegacy(handle,regIndex)
  %689 = extractvalue %dx.types.CBufRet.f32 %688, 0
  %690 = extractvalue %dx.types.CBufRet.f32 %688, 1
  %691 = extractvalue %dx.types.CBufRet.f32 %688, 2
  %692 = fmul fast float %689, %687
  %693 = fmul fast float %690, %687
  %694 = fmul fast float %691, %687
  %695 = call float @dx.op.unary.f32(i32 23, float %692)  ; Log(value)
  %696 = call float @dx.op.unary.f32(i32 23, float %693)  ; Log(value)
  %697 = call float @dx.op.unary.f32(i32 23, float %694)  ; Log(value)
  br label %698

; <label>:698                                     ; preds = %684, %679
  %699 = phi float [ %695, %684 ], [ 0.000000e+00, %679 ]
  %700 = phi float [ %696, %684 ], [ 0.000000e+00, %679 ]
  %701 = phi float [ %697, %684 ], [ 0.000000e+00, %679 ]
  %702 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 35)  ; CBufferLoadLegacy(handle,regIndex)
  %703 = extractvalue %dx.types.CBufRet.f32 %702, 0
  %704 = extractvalue %dx.types.CBufRet.f32 %702, 1
  %705 = extractvalue %dx.types.CBufRet.f32 %702, 2
  %706 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 31)  ; CBufferLoadLegacy(handle,regIndex)
  %707 = extractvalue %dx.types.CBufRet.f32 %706, 0
  %708 = extractvalue %dx.types.CBufRet.f32 %706, 1
  %709 = extractvalue %dx.types.CBufRet.f32 %706, 2
  %710 = fsub fast float %415, %707
  %711 = fsub fast float %416, %708
  %712 = fsub fast float %417, %709
  %713 = fmul fast float %710, %703
  %714 = fmul fast float %711, %704
  %715 = fmul fast float %712, %705
  %716 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %18, i32 29)  ; CBufferLoadLegacy(handle,regIndex)
  %717 = extractvalue %dx.types.CBufRet.i32 %716, 0
  %718 = extractvalue %dx.types.CBufRet.i32 %716, 1
  %719 = uitofp i32 %717 to float
  %720 = uitofp i32 %718 to float
  %721 = fmul fast float %713, %719
  %722 = fmul fast float %714, %720
  %723 = fadd fast float %721, 5.000000e-01
  %724 = fadd fast float %722, 5.000000e-01
  %725 = call float @dx.op.unary.f32(i32 22, float %723)  ; Frc(value)
  %726 = call float @dx.op.unary.f32(i32 22, float %724)  ; Frc(value)
  %727 = call float @dx.op.unary.f32(i32 27, float %723)  ; Round_ni(value)
  %728 = call float @dx.op.unary.f32(i32 27, float %724)  ; Round_ni(value)
  %729 = fadd fast float %727, 1.000000e+00
  %730 = fadd fast float %728, 1.000000e+00
  %731 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 30)  ; CBufferLoadLegacy(handle,regIndex)
  %732 = extractvalue %dx.types.CBufRet.f32 %731, 0
  %733 = extractvalue %dx.types.CBufRet.f32 %731, 1
  %734 = fmul fast float %732, %729
  %735 = fmul fast float %733, %730
  %736 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %9, %dx.types.Handle %15, float %734, float %735, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %737 = extractvalue %dx.types.ResRet.f32 %736, 0
  %738 = extractvalue %dx.types.ResRet.f32 %736, 1
  %739 = extractvalue %dx.types.ResRet.f32 %736, 2
  %740 = extractvalue %dx.types.ResRet.f32 %736, 3
  %741 = extractvalue %dx.types.CBufRet.i32 %716, 2
  %742 = extractvalue %dx.types.CBufRet.f32 %731, 2
  %743 = uitofp i32 %741 to float
  %744 = fadd fast float %743, -1.000000e+00
  %745 = fmul fast float %744, %737
  %746 = fmul fast float %744, %738
  %747 = fmul fast float %744, %739
  %748 = fmul fast float %744, %740
  %749 = fadd fast float %745, 5.000000e-01
  %750 = fadd fast float %746, 5.000000e-01
  %751 = fadd fast float %747, 5.000000e-01
  %752 = fadd fast float %748, 5.000000e-01
  %753 = fptoui float %749 to i32
  %754 = fptoui float %750 to i32
  %755 = fptoui float %751 to i32
  %756 = fptoui float %752 to i32
  %757 = uitofp i32 %753 to float
  %758 = uitofp i32 %754 to float
  %759 = uitofp i32 %755 to float
  %760 = uitofp i32 %756 to float
  %761 = fadd fast float %757, 5.000000e-01
  %762 = fadd fast float %758, 5.000000e-01
  %763 = fadd fast float %759, 5.000000e-01
  %764 = fadd fast float %760, 5.000000e-01
  %765 = fmul fast float %761, %742
  %766 = fmul fast float %762, %742
  %767 = fmul fast float %763, %742
  %768 = fmul fast float %764, %742
  %769 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %16, float %765, float %715, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %770 = extractvalue %dx.types.ResRet.f32 %769, 0
  %771 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %16, float %766, float %715, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %772 = extractvalue %dx.types.ResRet.f32 %771, 0
  %773 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %16, float %767, float %715, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %774 = extractvalue %dx.types.ResRet.f32 %773, 0
  %775 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %16, float %768, float %715, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %776 = extractvalue %dx.types.ResRet.f32 %775, 0
  %777 = fsub fast float %774, %776
  %778 = fmul fast float %777, %725
  %779 = fadd fast float %778, %776
  %780 = fsub fast float %772, %770
  %781 = fmul fast float %780, %725
  %782 = fadd fast float %781, %770
  %783 = fsub fast float %782, %779
  %784 = fmul fast float %783, %726
  %785 = fadd fast float %784, %779
  %786 = fcmp fast ogt float %785, 0.000000e+00
  br i1 %786, label %787, label %855, !dx.controlflow.hints !47

; <label>:787                                     ; preds = %698
  %788 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 33)  ; CBufferLoadLegacy(handle,regIndex)
  %789 = extractvalue %dx.types.CBufRet.f32 %788, 0
  %790 = extractvalue %dx.types.CBufRet.f32 %788, 1
  %791 = extractvalue %dx.types.CBufRet.f32 %788, 2
  %792 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 41)  ; CBufferLoadLegacy(handle,regIndex)
  %793 = extractvalue %dx.types.CBufRet.f32 %792, 0
  %794 = extractvalue %dx.types.CBufRet.f32 %792, 1
  %795 = extractvalue %dx.types.CBufRet.f32 %792, 2
  %796 = fmul fast float %711, %703
  %797 = fmul fast float %712, %703
  %798 = fadd fast float %713, %793
  %799 = fadd fast float %796, %794
  %800 = fadd fast float %797, %795
  %801 = fmul fast float %798, %789
  %802 = fmul fast float %799, %789
  %803 = fmul fast float %800, %789
  %804 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %13, float %801, float %802, float %803, float undef, i32 0, i32 0, i32 0, float %699)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %805 = extractvalue %dx.types.ResRet.f32 %804, 0
  %806 = fmul fast float %798, %790
  %807 = fmul fast float %799, %790
  %808 = fmul fast float %800, %790
  %809 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %13, float %806, float %807, float %808, float undef, i32 0, i32 0, i32 0, float %700)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %810 = extractvalue %dx.types.ResRet.f32 %809, 1
  %811 = fmul fast float %798, %791
  %812 = fmul fast float %799, %791
  %813 = fmul fast float %800, %791
  %814 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %13, float %811, float %812, float %813, float undef, i32 0, i32 0, i32 0, float %701)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %815 = extractvalue %dx.types.ResRet.f32 %814, 2
  %816 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 34)  ; CBufferLoadLegacy(handle,regIndex)
  %817 = extractvalue %dx.types.CBufRet.f32 %816, 1
  %818 = fmul fast float %810, %805
  %819 = fmul fast float %818, %815
  %820 = call float @dx.op.unary.f32(i32 23, float %819)  ; Log(value)
  %821 = fmul fast float %820, %817
  %822 = call float @dx.op.unary.f32(i32 21, float %821)  ; Exp(value)
  %823 = extractvalue %dx.types.CBufRet.f32 %816, 2
  %824 = fmul fast float %785, %785
  %825 = fmul fast float %824, %822
  %826 = fmul fast float %825, %823
  %827 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 32)  ; CBufferLoadLegacy(handle,regIndex)
  %828 = extractvalue %dx.types.CBufRet.f32 %827, 3
  %829 = fmul fast float %828, %826
  %830 = bitcast float %829 to i32
  %831 = sitofp i32 %830 to float
  %832 = fptosi float %831 to i32
  %833 = bitcast i32 %832 to float
  %834 = fsub fast float 1.000000e+00, %826
  %835 = bitcast float %834 to i32
  %836 = sitofp i32 %835 to float
  %837 = fptosi float %836 to i32
  %838 = bitcast i32 %837 to float
  %839 = fadd fast float %833, %838
  %840 = bitcast float %839 to i32
  %841 = sub nsw i32 2129859010, %840
  %842 = bitcast i32 %841 to float
  %843 = fmul fast float %842, %833
  %844 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %845 = extractvalue %dx.types.CBufRet.f32 %844, 2
  %846 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 37)  ; CBufferLoadLegacy(handle,regIndex)
  %847 = extractvalue %dx.types.CBufRet.f32 %846, 0
  %848 = fmul fast float %843, %847
  %849 = fadd fast float %848, 1.000000e+00
  %850 = bitcast float %849 to i32
  %851 = sub nsw i32 2129859010, %850
  %852 = bitcast i32 %851 to float
  %853 = fmul fast float %843, %845
  %854 = fmul fast float %853, %852
  br label %855

; <label>:855                                     ; preds = %787, %698
  %856 = phi float [ %854, %787 ], [ %785, %698 ]
  %857 = fmul fast float %856, %677
  br label %858

; <label>:858                                     ; preds = %855, %662
  %859 = phi float [ %857, %855 ], [ 0.000000e+00, %662 ]
  %860 = icmp eq i32 %664, 0
  br i1 %860, label %892, label %861, !dx.controlflow.hints !48

; <label>:861                                     ; preds = %858
  %862 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 190)  ; CBufferLoadLegacy(handle,regIndex)
  %863 = extractvalue %dx.types.CBufRet.f32 %862, 1
  %864 = fsub fast float %677, %863
  %865 = extractvalue %dx.types.CBufRet.f32 %862, 3
  %866 = fmul fast float %864, %865
  %867 = call float @dx.op.unary.f32(i32 7, float %866)  ; Saturate(value)
  %868 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 188)  ; CBufferLoadLegacy(handle,regIndex)
  %869 = extractvalue %dx.types.CBufRet.f32 %868, 3
  %870 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %871 = extractvalue %dx.types.CBufRet.f32 %870, 2
  %872 = fsub fast float %871, %665
  %873 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 189)  ; CBufferLoadLegacy(handle,regIndex)
  %874 = extractvalue %dx.types.CBufRet.f32 %873, 3
  %875 = fmul fast float %872, %874
  %876 = call float @dx.op.unary.f32(i32 7, float %875)  ; Saturate(value)
  %877 = fmul fast float %876, %869
  %878 = extractvalue %dx.types.CBufRet.f32 %873, 0
  %879 = fsub fast float %418, %878
  %880 = extractvalue %dx.types.CBufRet.f32 %873, 1
  %881 = fmul fast float %879, %880
  %882 = call float @dx.op.unary.f32(i32 7, float %881)  ; Saturate(value)
  %883 = fsub fast float 1.000000e+00, %867
  %884 = fmul fast float %882, %883
  %885 = fadd fast float %884, %867
  %886 = extractvalue %dx.types.CBufRet.f32 %862, 0
  %887 = fsub fast float %877, %886
  %888 = fmul fast float %887, %885
  %889 = fadd fast float %888, %886
  %890 = fmul fast float %889, %677
  %891 = fadd fast float %890, %859
  br label %892

; <label>:892                                     ; preds = %861, %858
  %893 = phi float [ %891, %861 ], [ %859, %858 ]
  %894 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %895 = extractvalue %dx.types.CBufRet.f32 %894, 1
  %896 = fcmp fast ogt float %893, %895
  br i1 %896, label %899, label %897, !dx.controlflow.hints !49

; <label>:897                                     ; preds = %892
  %898 = fadd fast float %677, %418
  br label %1032

; <label>:899                                     ; preds = %892
  %900 = fmul fast float %893, 0xBFF7154760000000
  %901 = call float @dx.op.unary.f32(i32 21, float %900)  ; Exp(value)
  %902 = call float @dx.op.unary.f32(i32 7, float %901)  ; Saturate(value)
  %903 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %904 = extractvalue %dx.types.CBufRet.f32 %903, 0
  %905 = extractvalue %dx.types.CBufRet.f32 %903, 1
  %906 = extractvalue %dx.types.CBufRet.f32 %903, 2
  %907 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 427)  ; CBufferLoadLegacy(handle,regIndex)
  %908 = extractvalue %dx.types.CBufRet.f32 %907, 0
  %909 = fmul fast float %908, %904
  %910 = fmul fast float %908, %905
  %911 = fmul fast float %908, %906
  %912 = fadd fast float %909, %415
  %913 = fadd fast float %910, %416
  %914 = fadd fast float %911, %417
  br i1 %489, label %985, label %915, !dx.controlflow.hints !42

; <label>:915                                     ; preds = %899
  %916 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %18, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %917 = extractvalue %dx.types.CBufRet.i32 %916, 1
  %918 = and i32 %917, 1
  %919 = icmp eq i32 %918, 0
  br i1 %919, label %920, label %985, !dx.controlflow.hints !43

; <label>:920                                     ; preds = %915
  %921 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 204)  ; CBufferLoadLegacy(handle,regIndex)
  %922 = extractvalue %dx.types.CBufRet.f32 %921, 2
  %923 = extractvalue %dx.types.CBufRet.f32 %921, 3
  %924 = fmul fast float %922, %912
  %925 = fmul fast float %923, %913
  %926 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 205)  ; CBufferLoadLegacy(handle,regIndex)
  %927 = extractvalue %dx.types.CBufRet.f32 %926, 0
  %928 = extractvalue %dx.types.CBufRet.f32 %926, 1
  %929 = fadd fast float %924, %927
  %930 = fadd fast float %925, %928
  %931 = call float @dx.op.unary.f32(i32 7, float %929)  ; Saturate(value)
  %932 = call float @dx.op.unary.f32(i32 7, float %930)  ; Saturate(value)
  %933 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %16, float %931, float %932, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %934 = extractvalue %dx.types.ResRet.f32 %933, 0
  %935 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %936 = extractvalue %dx.types.CBufRet.f32 %935, 0
  %937 = fmul fast float %936, %934
  %938 = fsub fast float %929, %931
  %939 = fsub fast float %930, %932
  %940 = extractvalue %dx.types.CBufRet.f32 %921, 0
  %941 = extractvalue %dx.types.CBufRet.f32 %921, 1
  %942 = fmul fast float %940, %938
  %943 = fmul fast float %941, %939
  %944 = fmul fast float %942, %942
  %945 = fmul fast float %943, %943
  %946 = fadd fast float %944, %945
  %947 = call float @dx.op.unary.f32(i32 24, float %946)  ; Sqrt(value)
  %948 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %949 = extractvalue %dx.types.CBufRet.f32 %948, 3
  %950 = fmul fast float %949, %947
  %951 = call float @dx.op.unary.f32(i32 7, float %950)  ; Saturate(value)
  %952 = extractvalue %dx.types.CBufRet.f32 %948, 2
  %953 = fsub fast float %952, %937
  %954 = fmul fast float %953, %951
  %955 = extractvalue %dx.types.CBufRet.f32 %935, 1
  %956 = fsub fast float %914, %937
  %957 = fsub fast float %956, %955
  %958 = fsub fast float %957, %954
  %959 = extractvalue %dx.types.CBufRet.i32 %916, 0
  %960 = icmp eq i32 %959, 0
  br i1 %960, label %979, label %961

; <label>:961                                     ; preds = %920
  br label %962

; <label>:962                                     ; preds = %974, %961
  %963 = phi i32 [ %975, %974 ], [ 0, %961 ]
  %964 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %965 = extractvalue %dx.types.CBufRet.f32 %964, 1
  %966 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %18, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %967 = extractvalue %dx.types.CBufRet.i32 %966, 1
  %968 = and i32 %967, 8
  %969 = icmp eq i32 %968, 0
  %970 = fcmp fast ogt float %965, %958
  %971 = or i1 %970, %969
  br i1 %971, label %972, label %973, !dx.controlflow.hints !44

; <label>:972                                     ; preds = %962
  br label %974

; <label>:973                                     ; preds = %962
  br label %974

; <label>:974                                     ; preds = %973, %972
  %975 = add i32 %963, 1
  %976 = extractvalue %dx.types.CBufRet.i32 %966, 0
  %977 = icmp ult i32 %975, %976
  br i1 %977, label %962, label %978

; <label>:978                                     ; preds = %974
  br label %979

; <label>:979                                     ; preds = %978, %920
  br label %980

; <label>:980                                     ; preds = %980, %979
  %981 = phi i32 [ %982, %980 ], [ 0, %979 ]
  %982 = add nuw nsw i32 %981, 1
  %983 = icmp eq i32 %982, 4
  br i1 %983, label %984, label %980

; <label>:984                                     ; preds = %980
  br label %985

; <label>:985                                     ; preds = %984, %915, %899
  %986 = fsub fast float 1.000000e+00, %902
  %987 = fdiv fast float %893, %677
  %988 = fadd fast float %677, %418
  %989 = fmul fast float %418, %418
  %990 = fmul fast float %988, %988
  %991 = fsub fast float %989, %990
  %992 = fmul fast float %991, -5.000000e-01
  %993 = fmul fast float %992, %987
  %994 = fadd fast float %993, %413
  %995 = fadd fast float %893, %420
  %996 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %18, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %997 = extractvalue %dx.types.CBufRet.i32 %996, 0
  %998 = icmp eq i32 %997, 0
  br i1 %998, label %1025, label %999, !dx.controlflow.hints !50

; <label>:999                                     ; preds = %985
  %1000 = icmp ne i32 %425, 0
  %1001 = zext i1 %1000 to i32
  %1002 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %1003 = extractvalue %dx.types.CBufRet.f32 %1002, 2
  %1004 = extractvalue %dx.types.CBufRet.f32 %1002, 0
  %1005 = fsub fast float %988, %1004
  %1006 = fmul fast float %1005, %1003
  %1007 = call float @dx.op.unary.f32(i32 7, float %1006)  ; Saturate(value)
  %1008 = fadd fast float %1007, -5.000000e-01
  %1009 = fmul fast float %1008, 2.000000e+00
  %1010 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %1011 = extractvalue %dx.types.CBufRet.f32 %1010, 2
  %1012 = fcmp fast olt float %1009, %1011
  br i1 %1012, label %1013, label %1025, !dx.controlflow.hints !51

; <label>:1013                                    ; preds = %999
  %1014 = fmul fast float %1009, %1009
  %1015 = fmul fast float %986, %414
  %1016 = fmul fast float %1009, %1015
  %1017 = fmul fast float %1014, %1015
  %1018 = fmul fast float %1016, %1014
  %1019 = fmul fast float %1014, %1014
  %1020 = fmul fast float %1019, %1015
  %1021 = fadd fast float %1016, %421
  %1022 = fadd fast float %1017, %422
  %1023 = fadd fast float %1018, %423
  %1024 = fadd fast float %1020, %424
  br label %1025

; <label>:1025                                    ; preds = %1013, %999, %985
  %1026 = phi float [ %421, %985 ], [ %1021, %1013 ], [ %421, %999 ]
  %1027 = phi float [ %422, %985 ], [ %1022, %1013 ], [ %422, %999 ]
  %1028 = phi float [ %423, %985 ], [ %1023, %1013 ], [ %423, %999 ]
  %1029 = phi float [ %424, %985 ], [ %1024, %1013 ], [ %424, %999 ]
  %1030 = phi i32 [ %425, %985 ], [ 1, %1013 ], [ %1001, %999 ]
  %1031 = fmul fast float %902, %414
  br label %1032

; <label>:1032                                    ; preds = %1025, %897
  %1033 = phi float [ %898, %897 ], [ %988, %1025 ]
  %1034 = phi float [ %413, %897 ], [ %994, %1025 ]
  %1035 = phi float [ %414, %897 ], [ %1031, %1025 ]
  %1036 = phi float [ %420, %897 ], [ %995, %1025 ]
  %1037 = phi float [ %421, %897 ], [ %1026, %1025 ]
  %1038 = phi float [ %422, %897 ], [ %1027, %1025 ]
  %1039 = phi float [ %423, %897 ], [ %1028, %1025 ]
  %1040 = phi float [ %424, %897 ], [ %1029, %1025 ]
  %1041 = phi i32 [ %425, %897 ], [ %1030, %1025 ]
  %1042 = fmul fast float %677, %274
  %1043 = fmul fast float %677, %275
  %1044 = fmul fast float %677, %276
  %1045 = fadd fast float %1042, %415
  %1046 = fadd fast float %1043, %416
  %1047 = fadd fast float %1044, %417
  %1048 = fcmp fast olt float %1033, %390
  %1049 = extractvalue %dx.types.CBufRet.f32 %894, 2
  %1050 = fcmp fast olt float %1049, %1035
  %1051 = and i1 %1048, %1050
  br i1 %1051, label %410, label %1052

; <label>:1052                                    ; preds = %1032
  %1053 = uitofp i32 %426 to float
  br label %1054

; <label>:1054                                    ; preds = %1052, %386
  %1055 = phi float [ 0.000000e+00, %386 ], [ %1034, %1052 ]
  %1056 = phi float [ 1.000000e+00, %386 ], [ %1035, %1052 ]
  %1057 = phi float [ 0.000000e+00, %386 ], [ %1053, %1052 ]
  %1058 = phi float [ 0.000000e+00, %386 ], [ %1036, %1052 ]
  %1059 = phi float [ 0.000000e+00, %386 ], [ %1037, %1052 ]
  %1060 = phi float [ 0.000000e+00, %386 ], [ %1038, %1052 ]
  %1061 = phi float [ 0.000000e+00, %386 ], [ %1039, %1052 ]
  %1062 = phi float [ 0.000000e+00, %386 ], [ %1040, %1052 ]
  %1063 = phi i32 [ 0, %386 ], [ %1041, %1052 ]
  %1064 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %18, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %1065 = extractvalue %dx.types.CBufRet.i32 %1064, 0
  %1066 = icmp eq i32 %1065, 0
  br i1 %1066, label %1108, label %1067, !dx.controlflow.hints !52

; <label>:1067                                    ; preds = %1054
  %1068 = icmp eq i32 %1063, 0
  br i1 %1068, label %1107, label %1069, !dx.controlflow.hints !53

; <label>:1069                                    ; preds = %1067
  %1070 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %18, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %1071 = extractvalue %dx.types.CBufRet.i32 %1070, 2
  %1072 = icmp eq i32 %1071, 0
  br i1 %1072, label %1079, label %1073, !dx.controlflow.hints !54

; <label>:1073                                    ; preds = %1069
  %1074 = fsub fast float 1.000000e+00, %1056
  %1075 = fdiv fast float %1059, %1074
  %1076 = fdiv fast float %1060, %1074
  %1077 = fdiv fast float %1061, %1074
  %1078 = fdiv fast float %1062, %1074
  br label %1084

; <label>:1079                                    ; preds = %1069
  %1080 = fadd fast float %1059, %1056
  %1081 = fadd fast float %1060, %1056
  %1082 = fadd fast float %1061, %1056
  %1083 = fadd fast float %1062, %1056
  br label %1084

; <label>:1084                                    ; preds = %1079, %1073
  %1085 = phi float [ %1075, %1073 ], [ %1080, %1079 ]
  %1086 = phi float [ %1076, %1073 ], [ %1081, %1079 ]
  %1087 = phi float [ %1077, %1073 ], [ %1082, %1079 ]
  %1088 = phi float [ %1078, %1073 ], [ %1083, %1079 ]
  %1089 = call float @dx.op.binary.f32(i32 35, float %1085, float -1.000000e+00)  ; FMax(a,b)
  %1090 = call float @dx.op.binary.f32(i32 35, float %1086, float -1.000000e+00)  ; FMax(a,b)
  %1091 = call float @dx.op.binary.f32(i32 35, float %1087, float -1.000000e+00)  ; FMax(a,b)
  %1092 = call float @dx.op.binary.f32(i32 35, float %1088, float -1.000000e+00)  ; FMax(a,b)
  %1093 = call float @dx.op.binary.f32(i32 36, float %1089, float 1.000000e+00)  ; FMin(a,b)
  %1094 = call float @dx.op.binary.f32(i32 36, float %1090, float 1.000000e+00)  ; FMin(a,b)
  %1095 = call float @dx.op.binary.f32(i32 36, float %1091, float 1.000000e+00)  ; FMin(a,b)
  %1096 = call float @dx.op.binary.f32(i32 36, float %1092, float 1.000000e+00)  ; FMin(a,b)
  %1097 = fmul fast float %1093, 1.500000e+00
  %1098 = call float @dx.op.tertiary.f32(i32 46, float -2.000000e+00, float %1095, float %1097)  ; FMad(a,b,c)
  %1099 = call float @dx.op.tertiary.f32(i32 46, float 4.000000e+00, float %1094, float 0.000000e+00)  ; FMad(a,b,c)
  %1100 = call float @dx.op.tertiary.f32(i32 46, float -4.000000e+00, float %1096, float %1099)  ; FMad(a,b,c)
  %1101 = fmul fast float %1093, 0x3FEBB67AE0000000
  %1102 = call float @dx.op.tertiary.f32(i32 46, float 0xBFD8A23460000000, float %1095, float %1101)  ; FMad(a,b,c)
  %1103 = call float @dx.op.tertiary.f32(i32 46, float 5.000000e-01, float %1094, float 0.000000e+00)  ; FMad(a,b,c)
  %1104 = call float @dx.op.tertiary.f32(i32 46, float 5.000000e-01, float %1096, float %1103)  ; FMad(a,b,c)
  %1105 = fadd fast float %1098, 5.000000e-01
  %1106 = fadd fast float %1102, 5.000000e-01
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %19, i32 %20, i32 0, float %1105, float %1100, float %1106, float %1104, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %1108

; <label>:1107                                    ; preds = %1067
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %19, i32 %20, i32 0, float 0.000000e+00, float 0.000000e+00, float 0x3FEF6560C0000000, float 1.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %1108

; <label>:1108                                    ; preds = %1107, %1084, %1054
  %1109 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 419)  ; CBufferLoadLegacy(handle,regIndex)
  %1110 = extractvalue %dx.types.CBufRet.f32 %1109, 0
  %1111 = extractvalue %dx.types.CBufRet.f32 %1109, 1
  %1112 = extractvalue %dx.types.CBufRet.f32 %1109, 2
  %1113 = call float @dx.op.dot3.f32(i32 55, float %274, float %275, float %276, float %1110, float %1111, float %1112)  ; Dot3(ax,ay,az,bx,by,bz)
  %1114 = fmul fast float %1113, %1055
  %1115 = fcmp fast ogt float %1058, 0.000000e+00
  %1116 = fdiv fast float 1.000000e+00, %1058
  %1117 = fmul fast float %1114, %1116
  %1118 = select i1 %1115, float %1117, float %285
  %1119 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %1120 = extractvalue %dx.types.CBufRet.f32 %1119, 0
  %1121 = extractvalue %dx.types.CBufRet.f32 %1119, 1
  %1122 = extractvalue %dx.types.CBufRet.f32 %1119, 2
  %1123 = fmul fast float %1120, %238
  %1124 = fmul fast float %1121, %238
  %1125 = fmul fast float %1122, %238
  %1126 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %1127 = extractvalue %dx.types.CBufRet.f32 %1126, 0
  %1128 = extractvalue %dx.types.CBufRet.f32 %1126, 1
  %1129 = extractvalue %dx.types.CBufRet.f32 %1126, 2
  %1130 = fmul fast float %1127, %239
  %1131 = fmul fast float %1128, %239
  %1132 = fmul fast float %1129, %239
  %1133 = fadd fast float %1130, %1123
  %1134 = fadd fast float %1131, %1124
  %1135 = fadd fast float %1132, %1125
  %1136 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %1137 = extractvalue %dx.types.CBufRet.f32 %1136, 0
  %1138 = extractvalue %dx.types.CBufRet.f32 %1136, 1
  %1139 = extractvalue %dx.types.CBufRet.f32 %1136, 2
  %1140 = fadd fast float %1133, %1137
  %1141 = fadd fast float %1134, %1138
  %1142 = fadd fast float %1135, %1139
  %1143 = fmul fast float %1140, %1118
  %1144 = fmul fast float %1141, %1118
  %1145 = fmul fast float %1142, %1118
  %1146 = call float @dx.op.dot3.f32(i32 55, float %1143, float %1144, float %1145, float %1143, float %1144, float %1145)  ; Dot3(ax,ay,az,bx,by,bz)
  %1147 = call float @dx.op.unary.f32(i32 25, float %1146)  ; Rsqrt(value)
  %1148 = fmul fast float %1147, %1146
  %1149 = fmul fast float %1147, %1143
  %1150 = fmul fast float %1147, %1144
  %1151 = fmul fast float %1147, %1145
  %1152 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %18, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1153 = extractvalue %dx.types.CBufRet.i32 %1152, 1
  %1154 = and i32 %1153, 1
  %1155 = icmp ne i32 %1154, 0
  %1156 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %1157 = extractvalue %dx.types.CBufRet.f32 %1156, 2
  %1158 = fcmp fast ogt float %1157, 0.000000e+00
  %1159 = and i1 %1155, %1158
  br i1 %1159, label %1160, label %1318, !dx.controlflow.hints !55

; <label>:1160                                    ; preds = %1108
  %1161 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1162 = extractvalue %dx.types.CBufRet.f32 %1161, 2
  %1163 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1164 = extractvalue %dx.types.CBufRet.f32 %1163, 2
  %1165 = fsub fast float %1162, %1164
  %1166 = extractvalue %dx.types.CBufRet.i32 %1152, 0
  %1167 = call i32 @dx.op.binary.i32(i32 40, i32 %1166, i32 3)  ; UMin(a,b)
  %1168 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %1169 = extractvalue %dx.types.CBufRet.f32 %1168, 0
  %1170 = extractvalue %dx.types.CBufRet.f32 %1168, 1
  %1171 = extractvalue %dx.types.CBufRet.f32 %1163, 0
  %1172 = extractvalue %dx.types.CBufRet.f32 %1163, 1
  %1173 = fsub fast float %1169, %1171
  %1174 = fsub fast float %1170, %1172
  %1175 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %1176 = extractvalue %dx.types.CBufRet.f32 %1175, 0
  %1177 = fcmp fast ogt float %1176, 0.000000e+00
  %1178 = fsub fast float -0.000000e+00, %1173
  %1179 = fsub fast float -0.000000e+00, %1174
  %1180 = call float @dx.op.dot2.f32(i32 54, float %1149, float %1150, float %1149, float %1150)  ; Dot2(ax,ay,bx,by)
  %1181 = call float @dx.op.dot2.f32(i32 54, float %1149, float %1150, float %1178, float %1179)  ; Dot2(ax,ay,bx,by)
  %1182 = fmul fast float %1181, 2.000000e+00
  %1183 = call float @dx.op.dot2.f32(i32 54, float %1178, float %1179, float %1178, float %1179)  ; Dot2(ax,ay,bx,by)
  %1184 = fmul fast float %1176, %1176
  %1185 = fsub fast float %1183, %1184
  %1186 = fmul fast float %1182, %1182
  %1187 = fmul fast float %1180, 4.000000e+00
  %1188 = fmul fast float %1187, %1185
  %1189 = fsub fast float %1186, %1188
  %1190 = fcmp fast ogt float %1189, 0.000000e+00
  br i1 %1190, label %1191, label %1206, !dx.controlflow.hints !56

; <label>:1191                                    ; preds = %1160
  %1192 = fcmp fast ogt float %1182, 0.000000e+00
  %1193 = call float @dx.op.unary.f32(i32 24, float %1189)  ; Sqrt(value)
  %1194 = fsub fast float -0.000000e+00, %1193
  %1195 = select i1 %1192, float %1193, float %1194
  %1196 = fadd fast float %1195, %1182
  %1197 = fmul float %1196, -5.000000e-01
  %1198 = fdiv fast float %1197, %1180
  %1199 = call float @dx.op.binary.f32(i32 35, float %1198, float 0.000000e+00)  ; FMax(a,b)
  %1200 = call float @dx.op.binary.f32(i32 36, float %1148, float %1199)  ; FMin(a,b)
  %1201 = fdiv fast float %1185, %1197
  %1202 = call float @dx.op.binary.f32(i32 35, float %1201, float 0.000000e+00)  ; FMax(a,b)
  %1203 = call float @dx.op.binary.f32(i32 36, float %1148, float %1202)  ; FMin(a,b)
  %1204 = call float @dx.op.binary.f32(i32 36, float %1200, float %1203)  ; FMin(a,b)
  %1205 = call float @dx.op.binary.f32(i32 35, float %1200, float %1203)  ; FMax(a,b)
  br label %1206

; <label>:1206                                    ; preds = %1191, %1160
  %1207 = phi float [ %1205, %1191 ], [ -1.000000e+00, %1160 ]
  %1208 = phi float [ %1204, %1191 ], [ -1.000000e+00, %1160 ]
  %1209 = phi i1 [ true, %1191 ], [ false, %1160 ]
  %1210 = and i1 %1177, %1209
  br i1 %1210, label %1211, label %1213, !dx.controlflow.hints !57

; <label>:1211                                    ; preds = %1206
  %1212 = fcmp fast oeq float %1208, %1207
  br i1 %1212, label %1318, label %1214, !dx.controlflow.hints !58

; <label>:1213                                    ; preds = %1206
  br i1 %1177, label %1318, label %1214, !dx.controlflow.hints !59

; <label>:1214                                    ; preds = %1213, %1211
  %1215 = phi float [ %1148, %1213 ], [ %1207, %1211 ]
  %1216 = phi float [ 0.000000e+00, %1213 ], [ %1208, %1211 ]
  %1217 = fcmp fast oeq float %1151, 0.000000e+00
  %1218 = fdiv fast float %1165, %1151
  %1219 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1218)  ; FMax(a,b)
  %1220 = select i1 %1217, float %1215, float %1219
  %1221 = call float @dx.op.binary.f32(i32 36, float %1215, float %1220)  ; FMin(a,b)
  %1222 = fcmp fast ogt float %1151, 0.000000e+00
  %1223 = fcmp fast olt float %1165, 0.000000e+00
  br i1 %1222, label %1224, label %1225, !dx.controlflow.hints !60

; <label>:1224                                    ; preds = %1214
  br i1 %1223, label %1318, label %1228, !dx.controlflow.hints !61

; <label>:1225                                    ; preds = %1214
  br i1 %1223, label %1226, label %1228, !dx.controlflow.hints !62

; <label>:1226                                    ; preds = %1225
  %1227 = call float @dx.op.binary.f32(i32 35, float %1216, float %1221)  ; FMax(a,b)
  br label %1228

; <label>:1228                                    ; preds = %1226, %1225, %1224
  %1229 = phi float [ %1227, %1226 ], [ %1216, %1225 ], [ %1216, %1224 ]
  %1230 = getelementptr inbounds [3 x float], [3 x float]* %22, i32 0, i32 0
  store float -1.000000e+00, float* %1230, align 4, !tbaa !63, !noalias !67
  %1231 = getelementptr inbounds [3 x float], [3 x float]* %22, i32 0, i32 1
  store float -1.000000e+00, float* %1231, align 4, !tbaa !63, !noalias !67
  %1232 = getelementptr inbounds [3 x float], [3 x float]* %22, i32 0, i32 2
  store float -1.000000e+00, float* %1232, align 4, !tbaa !63, !noalias !67
  %1233 = getelementptr inbounds [3 x float], [3 x float]* %23, i32 0, i32 0
  store float -1.000000e+00, float* %1233, align 4, !tbaa !63, !noalias !67
  %1234 = getelementptr inbounds [3 x float], [3 x float]* %23, i32 0, i32 1
  store float -1.000000e+00, float* %1234, align 4, !tbaa !63, !noalias !67
  %1235 = getelementptr inbounds [3 x float], [3 x float]* %23, i32 0, i32 2
  store float -1.000000e+00, float* %1235, align 4, !tbaa !63, !noalias !67
  %1236 = icmp sgt i32 %1167, 0
  br i1 %1236, label %1237, label %1295

; <label>:1237                                    ; preds = %1228
  br label %1238

; <label>:1238                                    ; preds = %1285, %1237
  %1239 = phi i32 [ %1286, %1285 ], [ 0, %1237 ]
  %1240 = add nuw i32 %1239, 171
  %1241 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 %1240)  ; CBufferLoadLegacy(handle,regIndex)
  %1242 = extractvalue %dx.types.CBufRet.f32 %1241, 0
  %1243 = extractvalue %dx.types.CBufRet.f32 %1241, 1
  %1244 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1245 = extractvalue %dx.types.CBufRet.f32 %1244, 0
  %1246 = extractvalue %dx.types.CBufRet.f32 %1244, 1
  %1247 = fsub fast float %1242, %1245
  %1248 = fsub fast float %1243, %1246
  %1249 = extractvalue %dx.types.CBufRet.f32 %1241, 2
  %1250 = fsub fast float -0.000000e+00, %1247
  %1251 = fsub fast float -0.000000e+00, %1248
  %1252 = call float @dx.op.dot2.f32(i32 54, float %1149, float %1150, float %1250, float %1251)  ; Dot2(ax,ay,bx,by)
  %1253 = fmul fast float %1252, 2.000000e+00
  %1254 = call float @dx.op.dot2.f32(i32 54, float %1250, float %1251, float %1250, float %1251)  ; Dot2(ax,ay,bx,by)
  %1255 = fmul fast float %1249, %1249
  %1256 = fsub fast float %1254, %1255
  %1257 = fmul fast float %1253, %1253
  %1258 = fmul fast float %1187, %1256
  %1259 = fsub fast float %1257, %1258
  %1260 = fcmp fast ogt float %1259, 0.000000e+00
  br i1 %1260, label %1261, label %1276, !dx.controlflow.hints !56

; <label>:1261                                    ; preds = %1238
  %1262 = fcmp fast ogt float %1253, 0.000000e+00
  %1263 = call float @dx.op.unary.f32(i32 24, float %1259)  ; Sqrt(value)
  %1264 = fsub fast float -0.000000e+00, %1263
  %1265 = select i1 %1262, float %1263, float %1264
  %1266 = fadd fast float %1265, %1253
  %1267 = fmul float %1266, -5.000000e-01
  %1268 = fdiv fast float %1267, %1180
  %1269 = call float @dx.op.binary.f32(i32 35, float %1268, float 0.000000e+00)  ; FMax(a,b)
  %1270 = call float @dx.op.binary.f32(i32 36, float %1215, float %1269)  ; FMin(a,b)
  %1271 = fdiv fast float %1256, %1267
  %1272 = call float @dx.op.binary.f32(i32 35, float %1271, float 0.000000e+00)  ; FMax(a,b)
  %1273 = call float @dx.op.binary.f32(i32 36, float %1215, float %1272)  ; FMin(a,b)
  %1274 = call float @dx.op.binary.f32(i32 36, float %1270, float %1273)  ; FMin(a,b)
  %1275 = call float @dx.op.binary.f32(i32 35, float %1270, float %1273)  ; FMax(a,b)
  br label %1276

; <label>:1276                                    ; preds = %1261, %1238
  %1277 = phi float [ %1275, %1261 ], [ -1.000000e+00, %1238 ]
  %1278 = phi float [ %1274, %1261 ], [ -1.000000e+00, %1238 ]
  %1279 = phi i1 [ true, %1261 ], [ false, %1238 ]
  br i1 %1279, label %1280, label %1285, !dx.controlflow.hints !78

; <label>:1280                                    ; preds = %1276
  %1281 = call float @dx.op.binary.f32(i32 35, float %1229, float %1278)  ; FMax(a,b)
  %1282 = getelementptr inbounds [3 x float], [3 x float]* %22, i32 0, i32 %1239
  store float %1281, float* %1282, align 4, !tbaa !63, !noalias !67
  %1283 = call float @dx.op.binary.f32(i32 35, float %1229, float %1277)  ; FMax(a,b)
  %1284 = getelementptr inbounds [3 x float], [3 x float]* %23, i32 0, i32 %1239
  store float %1283, float* %1284, align 4, !tbaa !63, !noalias !67
  br label %1285

; <label>:1285                                    ; preds = %1280, %1276
  %1286 = add nuw nsw i32 %1239, 1
  %1287 = icmp eq i32 %1286, %1167
  br i1 %1287, label %1288, label %1238

; <label>:1288                                    ; preds = %1285
  %1289 = load float, float* %1232, align 4, !tbaa !63, !alias.scope !79, !noalias !82
  %1290 = load float, float* %1231, align 4, !tbaa !63, !alias.scope !85, !noalias !86
  %1291 = load float, float* %1230, align 4, !tbaa !63, !alias.scope !87, !noalias !88
  %1292 = load float, float* %1235, align 4, !tbaa !63, !alias.scope !89, !noalias !92
  %1293 = load float, float* %1234, align 4, !tbaa !63, !alias.scope !95, !noalias !96
  %1294 = load float, float* %1233, align 4, !tbaa !63, !alias.scope !97, !noalias !98
  br label %1295

; <label>:1295                                    ; preds = %1288, %1228
  %1296 = phi float [ -1.000000e+00, %1228 ], [ %1294, %1288 ]
  %1297 = phi float [ -1.000000e+00, %1228 ], [ %1293, %1288 ]
  %1298 = phi float [ -1.000000e+00, %1228 ], [ %1292, %1288 ]
  %1299 = phi float [ -1.000000e+00, %1228 ], [ %1291, %1288 ]
  %1300 = phi float [ -1.000000e+00, %1228 ], [ %1290, %1288 ]
  %1301 = phi float [ -1.000000e+00, %1228 ], [ %1289, %1288 ]
  %1302 = call float @dx.op.binary.f32(i32 36, float %1300, float %1301)  ; FMin(a,b)
  %1303 = call float @dx.op.binary.f32(i32 36, float %1299, float %1302)  ; FMin(a,b)
  %1304 = call float @dx.op.binary.f32(i32 35, float %1299, float %1300)  ; FMax(a,b)
  %1305 = call float @dx.op.binary.f32(i32 36, float %1304, float %1301)  ; FMin(a,b)
  %1306 = call float @dx.op.binary.f32(i32 36, float %1299, float %1300)  ; FMin(a,b)
  %1307 = call float @dx.op.binary.f32(i32 35, float %1306, float %1305)  ; FMax(a,b)
  %1308 = call float @dx.op.binary.f32(i32 35, float %1300, float %1301)  ; FMax(a,b)
  %1309 = call float @dx.op.binary.f32(i32 35, float %1299, float %1308)  ; FMax(a,b)
  store float %1303, float* %1230, align 4, !tbaa !63, !alias.scope !87, !noalias !88
  store float %1307, float* %1231, align 4, !tbaa !63, !alias.scope !85, !noalias !86
  store float %1309, float* %1232, align 4, !tbaa !63, !alias.scope !79, !noalias !82
  %1310 = call float @dx.op.binary.f32(i32 36, float %1297, float %1298)  ; FMin(a,b)
  %1311 = call float @dx.op.binary.f32(i32 36, float %1296, float %1310)  ; FMin(a,b)
  %1312 = call float @dx.op.binary.f32(i32 35, float %1296, float %1297)  ; FMax(a,b)
  %1313 = call float @dx.op.binary.f32(i32 36, float %1312, float %1298)  ; FMin(a,b)
  %1314 = call float @dx.op.binary.f32(i32 36, float %1296, float %1297)  ; FMin(a,b)
  %1315 = call float @dx.op.binary.f32(i32 35, float %1314, float %1313)  ; FMax(a,b)
  %1316 = call float @dx.op.binary.f32(i32 35, float %1297, float %1298)  ; FMax(a,b)
  %1317 = call float @dx.op.binary.f32(i32 35, float %1296, float %1316)  ; FMax(a,b)
  store float %1311, float* %1233, align 4, !tbaa !63, !alias.scope !97, !noalias !98
  store float %1315, float* %1234, align 4, !tbaa !63, !alias.scope !95, !noalias !96
  store float %1317, float* %1235, align 4, !tbaa !63, !alias.scope !89, !noalias !92
  br label %1318

; <label>:1318                                    ; preds = %1295, %1224, %1213, %1211, %1108
  %1319 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 423)  ; CBufferLoadLegacy(handle,regIndex)
  %1320 = extractvalue %dx.types.CBufRet.f32 %1319, 2
  %1321 = fmul fast float %1320, %1118
  %1322 = call float @dx.op.unary.f32(i32 7, float %1321)  ; Saturate(value)
  %1323 = fptoui float %1057 to i32
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1324 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %21
  store i32 %1323, i32 addrspace(3)* %1324, align 4, !tbaa !99
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1325 = and i32 %21, 63
  %1326 = icmp ult i32 %1325, 32
  br i1 %1326, label %1327, label %1333, !dx.controlflow.hints !101

; <label>:1327                                    ; preds = %1318
  %1328 = add i32 %21, 32
  %1329 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1328
  %1330 = load i32, i32 addrspace(3)* %1329, align 4, !tbaa !99
  %1331 = load i32, i32 addrspace(3)* %1324, align 4, !tbaa !99
  %1332 = call i32 @dx.op.binary.i32(i32 40, i32 %1331, i32 %1330)  ; UMin(a,b)
  store i32 %1332, i32 addrspace(3)* %1324, align 4, !tbaa !99
  br label %1333

; <label>:1333                                    ; preds = %1327, %1318
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %1334 = icmp ult i32 %1325, 16
  br i1 %1334, label %1335, label %1341, !dx.controlflow.hints !102

; <label>:1335                                    ; preds = %1333
  %1336 = add i32 %21, 16
  %1337 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1336
  %1338 = load i32, i32 addrspace(3)* %1337, align 4, !tbaa !99
  %1339 = load i32, i32 addrspace(3)* %1324, align 4, !tbaa !99
  %1340 = call i32 @dx.op.binary.i32(i32 40, i32 %1339, i32 %1338)  ; UMin(a,b)
  store i32 %1340, i32 addrspace(3)* %1324, align 4, !tbaa !99
  br label %1341

; <label>:1341                                    ; preds = %1335, %1333
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %1342 = icmp ult i32 %1325, 8
  br i1 %1342, label %1343, label %1349, !dx.controlflow.hints !103

; <label>:1343                                    ; preds = %1341
  %1344 = add i32 %21, 8
  %1345 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1344
  %1346 = load i32, i32 addrspace(3)* %1345, align 4, !tbaa !99
  %1347 = load i32, i32 addrspace(3)* %1324, align 4, !tbaa !99
  %1348 = call i32 @dx.op.binary.i32(i32 40, i32 %1347, i32 %1346)  ; UMin(a,b)
  store i32 %1348, i32 addrspace(3)* %1324, align 4, !tbaa !99
  br label %1349

; <label>:1349                                    ; preds = %1343, %1341
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %1350 = icmp ult i32 %1325, 4
  br i1 %1350, label %1351, label %1357, !dx.controlflow.hints !104

; <label>:1351                                    ; preds = %1349
  %1352 = add i32 %21, 4
  %1353 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1352
  %1354 = load i32, i32 addrspace(3)* %1353, align 4, !tbaa !99
  %1355 = load i32, i32 addrspace(3)* %1324, align 4, !tbaa !99
  %1356 = call i32 @dx.op.binary.i32(i32 40, i32 %1355, i32 %1354)  ; UMin(a,b)
  store i32 %1356, i32 addrspace(3)* %1324, align 4, !tbaa !99
  br label %1357

; <label>:1357                                    ; preds = %1351, %1349
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %1358 = icmp ult i32 %1325, 2
  br i1 %1358, label %1359, label %1365, !dx.controlflow.hints !105

; <label>:1359                                    ; preds = %1357
  %1360 = add i32 %21, 2
  %1361 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1360
  %1362 = load i32, i32 addrspace(3)* %1361, align 4, !tbaa !99
  %1363 = load i32, i32 addrspace(3)* %1324, align 4, !tbaa !99
  %1364 = call i32 @dx.op.binary.i32(i32 40, i32 %1363, i32 %1362)  ; UMin(a,b)
  store i32 %1364, i32 addrspace(3)* %1324, align 4, !tbaa !99
  br label %1365

; <label>:1365                                    ; preds = %1359, %1357
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %1366 = icmp eq i32 %1325, 0
  br i1 %1366, label %1367, label %1373, !dx.controlflow.hints !106

; <label>:1367                                    ; preds = %1365
  %1368 = add i32 %21, 1
  %1369 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1368
  %1370 = load i32, i32 addrspace(3)* %1369, align 4, !tbaa !99
  %1371 = load i32, i32 addrspace(3)* %1324, align 4, !tbaa !99
  %1372 = call i32 @dx.op.binary.i32(i32 40, i32 %1371, i32 %1370)  ; UMin(a,b)
  store i32 %1372, i32 addrspace(3)* %1324, align 4, !tbaa !99
  br label %1373

; <label>:1373                                    ; preds = %1367, %1365
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1374 = and i32 %21, -64
  %1375 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1374
  %1376 = load i32, i32 addrspace(3)* %1375, align 4, !tbaa !99
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  store i32 %1323, i32 addrspace(3)* %1324, align 4, !tbaa !99
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  br i1 %1326, label %1377, label %1383, !dx.controlflow.hints !107

; <label>:1377                                    ; preds = %1373
  %1378 = add i32 %21, 32
  %1379 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1378
  %1380 = load i32, i32 addrspace(3)* %1379, align 4, !tbaa !99
  %1381 = load i32, i32 addrspace(3)* %1324, align 4, !tbaa !99
  %1382 = call i32 @dx.op.binary.i32(i32 39, i32 %1381, i32 %1380)  ; UMax(a,b)
  store i32 %1382, i32 addrspace(3)* %1324, align 4, !tbaa !99
  br label %1383

; <label>:1383                                    ; preds = %1377, %1373
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %1334, label %1384, label %1390, !dx.controlflow.hints !108

; <label>:1384                                    ; preds = %1383
  %1385 = add i32 %21, 16
  %1386 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1385
  %1387 = load i32, i32 addrspace(3)* %1386, align 4, !tbaa !99
  %1388 = load i32, i32 addrspace(3)* %1324, align 4, !tbaa !99
  %1389 = call i32 @dx.op.binary.i32(i32 39, i32 %1388, i32 %1387)  ; UMax(a,b)
  store i32 %1389, i32 addrspace(3)* %1324, align 4, !tbaa !99
  br label %1390

; <label>:1390                                    ; preds = %1384, %1383
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %1342, label %1391, label %1397, !dx.controlflow.hints !109

; <label>:1391                                    ; preds = %1390
  %1392 = add i32 %21, 8
  %1393 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1392
  %1394 = load i32, i32 addrspace(3)* %1393, align 4, !tbaa !99
  %1395 = load i32, i32 addrspace(3)* %1324, align 4, !tbaa !99
  %1396 = call i32 @dx.op.binary.i32(i32 39, i32 %1395, i32 %1394)  ; UMax(a,b)
  store i32 %1396, i32 addrspace(3)* %1324, align 4, !tbaa !99
  br label %1397

; <label>:1397                                    ; preds = %1391, %1390
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %1350, label %1398, label %1404, !dx.controlflow.hints !110

; <label>:1398                                    ; preds = %1397
  %1399 = add i32 %21, 4
  %1400 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1399
  %1401 = load i32, i32 addrspace(3)* %1400, align 4, !tbaa !99
  %1402 = load i32, i32 addrspace(3)* %1324, align 4, !tbaa !99
  %1403 = call i32 @dx.op.binary.i32(i32 39, i32 %1402, i32 %1401)  ; UMax(a,b)
  store i32 %1403, i32 addrspace(3)* %1324, align 4, !tbaa !99
  br label %1404

; <label>:1404                                    ; preds = %1398, %1397
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %1358, label %1405, label %1411, !dx.controlflow.hints !111

; <label>:1405                                    ; preds = %1404
  %1406 = add i32 %21, 2
  %1407 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1406
  %1408 = load i32, i32 addrspace(3)* %1407, align 4, !tbaa !99
  %1409 = load i32, i32 addrspace(3)* %1324, align 4, !tbaa !99
  %1410 = call i32 @dx.op.binary.i32(i32 39, i32 %1409, i32 %1408)  ; UMax(a,b)
  store i32 %1410, i32 addrspace(3)* %1324, align 4, !tbaa !99
  br label %1411

; <label>:1411                                    ; preds = %1405, %1404
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %1366, label %1412, label %1418, !dx.controlflow.hints !112

; <label>:1412                                    ; preds = %1411
  %1413 = add i32 %21, 1
  %1414 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1413
  %1415 = load i32, i32 addrspace(3)* %1414, align 4, !tbaa !99
  %1416 = load i32, i32 addrspace(3)* %1324, align 4, !tbaa !99
  %1417 = call i32 @dx.op.binary.i32(i32 39, i32 %1416, i32 %1415)  ; UMax(a,b)
  store i32 %1417, i32 addrspace(3)* %1324, align 4, !tbaa !99
  br label %1418

; <label>:1418                                    ; preds = %1412, %1411
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1419 = load i32, i32 addrspace(3)* %1375, align 4, !tbaa !99
  %1420 = uitofp i32 %1419 to float
  %1421 = uitofp i32 %1376 to float
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %3, i32 %19, i32 %20, i32 undef, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %1422 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1423 = extractvalue %dx.types.CBufRet.f32 %1422, 0
  %1424 = fmul fast float %1423, %1057
  %1425 = fmul fast float %1423, %1420
  %1426 = fmul fast float %1423, %1421
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %4, i32 %19, i32 %20, i32 undef, float %1424, float %1425, float %1426, float %1424, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %19, i32 %20, i32 undef, float %1322, float %1322, float %1322, float %1322, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
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
!6 = !{i32 0, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 27, i32 1, i32 2, i32 0, !7}
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
!29 = !{void ()* @cs_fog_raymarching_clouds_brfog, !"cs_fog_raymarching_clouds_brfog", null, !4, !30}
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
!43 = distinct !{!43, !"dx.controlflow.hints", i32 1}
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
!55 = distinct !{!55, !"dx.controlflow.hints", i32 1}
!56 = distinct !{!56, !"dx.controlflow.hints", i32 2}
!57 = distinct !{!57, !"dx.controlflow.hints", i32 2}
!58 = distinct !{!58, !"dx.controlflow.hints", i32 2}
!59 = distinct !{!59, !"dx.controlflow.hints", i32 2}
!60 = distinct !{!60, !"dx.controlflow.hints", i32 2}
!61 = distinct !{!61, !"dx.controlflow.hints", i32 2}
!62 = distinct !{!62, !"dx.controlflow.hints", i32 2}
!63 = !{!64, !64, i64 0}
!64 = !{!"float", !65, i64 0}
!65 = !{!"omnipotent char", !66, i64 0}
!66 = !{!"Simple C/C++ TBAA"}
!67 = !{!68, !70, !72, !73, !75, !76, !77}
!68 = distinct !{!68, !69, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z: %cFogParams"}
!69 = distinct !{!69, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z"}
!70 = distinct !{!70, !71, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %scattering"}
!71 = distinct !{!71, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z"}
!72 = distinct !{!72, !71, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %extinction"}
!73 = distinct !{!73, !74, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z: %scattering"}
!74 = distinct !{!74, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z"}
!75 = distinct !{!75, !74, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z: %transmission"}
!76 = distinct !{!76, !74, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z: %depthDensityWeighted"}
!77 = distinct !{!77, !74, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z: %rawShadowmapData"}
!78 = distinct !{!78, !"dx.controlflow.hints", i32 2}
!79 = !{!80}
!80 = distinct !{!80, !81, !"\01?sort@@YAXAIAM00@Z: %c"}
!81 = distinct !{!81, !"\01?sort@@YAXAIAM00@Z"}
!82 = !{!83, !84, !68, !70, !72, !73, !75, !76, !77}
!83 = distinct !{!83, !81, !"\01?sort@@YAXAIAM00@Z: %a"}
!84 = distinct !{!84, !81, !"\01?sort@@YAXAIAM00@Z: %b"}
!85 = !{!84}
!86 = !{!83, !80, !68, !70, !72, !73, !75, !76, !77}
!87 = !{!83}
!88 = !{!84, !80, !68, !70, !72, !73, !75, !76, !77}
!89 = !{!90}
!90 = distinct !{!90, !91, !"\01?sort@@YAXAIAM00@Z: %c"}
!91 = distinct !{!91, !"\01?sort@@YAXAIAM00@Z"}
!92 = !{!93, !94, !68, !70, !72, !73, !75, !76, !77}
!93 = distinct !{!93, !91, !"\01?sort@@YAXAIAM00@Z: %a"}
!94 = distinct !{!94, !91, !"\01?sort@@YAXAIAM00@Z: %b"}
!95 = !{!94}
!96 = !{!93, !90, !68, !70, !72, !73, !75, !76, !77}
!97 = !{!93}
!98 = !{!94, !90, !68, !70, !72, !73, !75, !76, !77}
!99 = !{!100, !100, i64 0}
!100 = !{!"int", !65, i64 0}
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
!111 = distinct !{!111, !"dx.controlflow.hints", i32 2}
!112 = distinct !{!112, !"dx.controlflow.hints", i32 2}

