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
; shader hash: 74a686f2ce2dd4a9f790a6aa8f2448d2
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

define void @cs_fog_raymarching_air_clouds_brfog() {
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
  %232 = fsub fast float -0.000000e+00, %231
  %233 = extractvalue %dx.types.CBufRet.f32 %230, 1
  %234 = fsub fast float -0.000000e+00, %233
  %235 = extractvalue %dx.types.CBufRet.f32 %230, 2
  %236 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %237 = extractvalue %dx.types.CBufRet.f32 %236, 1
  %238 = fmul fast float %228, 2.000000e+00
  %239 = fmul fast float %229, 2.000000e+00
  %240 = fsub fast float 1.000000e+00, %238
  %241 = fsub fast float 1.000000e+00, %239
  %242 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %243 = extractvalue %dx.types.CBufRet.f32 %242, 0
  %244 = extractvalue %dx.types.CBufRet.f32 %242, 1
  %245 = extractvalue %dx.types.CBufRet.f32 %242, 2
  %246 = fmul fast float %243, %240
  %247 = fmul fast float %244, %240
  %248 = fmul fast float %245, %240
  %249 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %250 = extractvalue %dx.types.CBufRet.f32 %249, 0
  %251 = extractvalue %dx.types.CBufRet.f32 %249, 1
  %252 = extractvalue %dx.types.CBufRet.f32 %249, 2
  %253 = fmul fast float %250, %241
  %254 = fmul fast float %251, %241
  %255 = fmul fast float %252, %241
  %256 = fadd fast float %253, %246
  %257 = fadd fast float %254, %247
  %258 = fadd fast float %255, %248
  %259 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %260 = extractvalue %dx.types.CBufRet.f32 %259, 0
  %261 = extractvalue %dx.types.CBufRet.f32 %259, 1
  %262 = extractvalue %dx.types.CBufRet.f32 %259, 2
  %263 = fadd fast float %256, %260
  %264 = fadd fast float %257, %261
  %265 = fadd fast float %258, %262
  %266 = fmul fast float %263, %237
  %267 = fmul fast float %264, %237
  %268 = fmul fast float %265, %237
  %269 = fmul fast float %266, %266
  %270 = fmul fast float %267, %267
  %271 = fadd fast float %269, %270
  %272 = fmul fast float %268, %268
  %273 = fadd fast float %271, %272
  %274 = call float @dx.op.unary.f32(i32 24, float %273)  ; Sqrt(value)
  %275 = fdiv fast float 1.000000e+00, %274
  %276 = fmul fast float %266, %275
  %277 = fmul fast float %267, %275
  %278 = fmul fast float %268, %275
  %279 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %6, i32 0, i32 %34, i32 %35, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %280 = extractvalue %dx.types.ResRet.f32 %279, 0
  %281 = fcmp fast ogt float %280, -1.000000e+00
  %282 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %283 = extractvalue %dx.types.CBufRet.f32 %282, 1
  %284 = select i1 %281, float %283, float 1.000000e+00
  %285 = fadd fast float %280, 1.000000e+00
  %286 = fmul fast float %284, %285
  %287 = call float @dx.op.unary.f32(i32 6, float %286)  ; FAbs(value)
  %288 = fdiv fast float 1.000000e+00, %237
  %289 = fmul fast float %288, %274
  %290 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 423)  ; CBufferLoadLegacy(handle,regIndex)
  %291 = extractvalue %dx.types.CBufRet.f32 %290, 1
  %292 = fmul fast float %291, %289
  %293 = fmul fast float %289, %287
  %294 = extractvalue %dx.types.CBufRet.f32 %282, 3
  %295 = fcmp fast oge float %287, %294
  %296 = call float @dx.op.binary.f32(i32 36, float %293, float %292)  ; FMin(a,b)
  %297 = select i1 %295, float %292, float %296
  %298 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %299 = extractvalue %dx.types.CBufRet.f32 %298, 3
  %300 = fsub fast float %299, %235
  %301 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %232, float %234, float %300)  ; Dot3(ax,ay,az,bx,by,bz)
  %302 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %276, float %277, float %278)  ; Dot3(ax,ay,az,bx,by,bz)
  %303 = fdiv fast float 1.000000e+00, %302
  %304 = fmul fast float %303, %301
  %305 = fcmp fast olt float %304, 0.000000e+00
  %306 = fcmp fast ogt float %278, 0.000000e+00
  %307 = and i1 %306, %305
  br i1 %307, label %312, label %308, !dx.controlflow.hints !33

; <label>:308                                     ; preds = %203
  %309 = fcmp fast olt float %278, 0.000000e+00
  br i1 %309, label %310, label %312, !dx.controlflow.hints !34

; <label>:310                                     ; preds = %308
  %311 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %304)  ; FMax(a,b)
  br label %312

; <label>:312                                     ; preds = %310, %308, %203
  %313 = phi float [ 0.000000e+00, %203 ], [ %311, %310 ], [ 0.000000e+00, %308 ]
  %314 = phi float [ 0.000000e+00, %203 ], [ 0x47EFFFFFE0000000, %310 ], [ %304, %308 ]
  %315 = fcmp fast oeq float %314, 0.000000e+00
  br i1 %315, label %319, label %316, !dx.controlflow.hints !35

; <label>:316                                     ; preds = %312
  %317 = call float @dx.op.binary.f32(i32 36, float 0x47EFFFFFE0000000, float %313)  ; FMin(a,b)
  %318 = call float @dx.op.binary.f32(i32 35, float -1.000000e+00, float %314)  ; FMax(a,b)
  br label %319

; <label>:319                                     ; preds = %316, %312
  %320 = phi i32 [ 1, %316 ], [ 0, %312 ]
  %321 = phi float [ %318, %316 ], [ -1.000000e+00, %312 ]
  %322 = phi float [ %317, %316 ], [ 0x47EFFFFFE0000000, %312 ]
  %323 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %18, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %324 = extractvalue %dx.types.CBufRet.i32 %323, 3
  %325 = icmp eq i32 %324, 0
  %326 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 31)  ; CBufferLoadLegacy(handle,regIndex)
  %327 = extractvalue %dx.types.CBufRet.f32 %326, 2
  %328 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 32)  ; CBufferLoadLegacy(handle,regIndex)
  %329 = extractvalue %dx.types.CBufRet.f32 %328, 2
  %330 = fsub fast float %327, %235
  %331 = fadd fast float %330, %329
  br i1 %325, label %339, label %332, !dx.controlflow.hints !36

; <label>:332                                     ; preds = %319
  %333 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %232, float %234, float %331)  ; Dot3(ax,ay,az,bx,by,bz)
  %334 = fmul fast float %303, %333
  %335 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %232, float %234, float %330)  ; Dot3(ax,ay,az,bx,by,bz)
  %336 = fmul fast float %303, %335
  %337 = call float @dx.op.binary.f32(i32 36, float %334, float %336)  ; FMin(a,b)
  %338 = call float @dx.op.binary.f32(i32 35, float %334, float %336)  ; FMax(a,b)
  br label %372

; <label>:339                                     ; preds = %319
  %340 = fdiv fast float 1.000000e+00, %276
  %341 = fdiv fast float 1.000000e+00, %277
  %342 = fdiv fast float 1.000000e+00, %278
  %343 = extractvalue %dx.types.CBufRet.f32 %326, 0
  %344 = extractvalue %dx.types.CBufRet.f32 %326, 1
  %345 = extractvalue %dx.types.CBufRet.f32 %328, 0
  %346 = extractvalue %dx.types.CBufRet.f32 %328, 1
  %347 = fsub fast float %343, %231
  %348 = fmul fast float %347, %340
  %349 = fadd fast float %347, %345
  %350 = fmul fast float %349, %340
  %351 = call float @dx.op.binary.f32(i32 36, float %348, float %350)  ; FMin(a,b)
  %352 = call float @dx.op.binary.f32(i32 35, float %348, float %350)  ; FMax(a,b)
  %353 = fsub fast float %344, %233
  %354 = fmul fast float %353, %341
  %355 = fadd fast float %353, %346
  %356 = fmul fast float %355, %341
  %357 = call float @dx.op.binary.f32(i32 36, float %354, float %356)  ; FMin(a,b)
  %358 = call float @dx.op.binary.f32(i32 35, float %351, float %357)  ; FMax(a,b)
  %359 = call float @dx.op.binary.f32(i32 35, float %354, float %356)  ; FMax(a,b)
  %360 = call float @dx.op.binary.f32(i32 36, float %352, float %359)  ; FMin(a,b)
  %361 = fmul fast float %330, %342
  %362 = fmul fast float %331, %342
  %363 = call float @dx.op.binary.f32(i32 36, float %361, float %362)  ; FMin(a,b)
  %364 = call float @dx.op.binary.f32(i32 35, float %358, float %363)  ; FMax(a,b)
  %365 = call float @dx.op.binary.f32(i32 35, float %361, float %362)  ; FMax(a,b)
  %366 = call float @dx.op.binary.f32(i32 36, float %360, float %365)  ; FMin(a,b)
  %367 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %364)  ; FMax(a,b)
  %368 = fcmp fast ult float %366, %367
  br i1 %368, label %372, label %369, !dx.controlflow.hints !37

; <label>:369                                     ; preds = %339
  %370 = call float @dx.op.binary.f32(i32 36, float %364, float %366)  ; FMin(a,b)
  %371 = call float @dx.op.binary.f32(i32 35, float %364, float %366)  ; FMax(a,b)
  br label %372

; <label>:372                                     ; preds = %369, %339, %332
  %373 = phi float [ %337, %332 ], [ %370, %369 ], [ 0.000000e+00, %339 ]
  %374 = phi float [ %338, %332 ], [ %371, %369 ], [ 0.000000e+00, %339 ]
  %375 = fcmp fast oeq float %374, 0.000000e+00
  br i1 %375, label %379, label %376, !dx.controlflow.hints !38

; <label>:376                                     ; preds = %372
  %377 = call float @dx.op.binary.f32(i32 36, float %322, float %373)  ; FMin(a,b)
  %378 = call float @dx.op.binary.f32(i32 35, float %321, float %374)  ; FMax(a,b)
  br label %379

; <label>:379                                     ; preds = %376, %372
  %380 = phi i32 [ 1, %376 ], [ 0, %372 ]
  %381 = phi float [ %378, %376 ], [ %321, %372 ]
  %382 = phi float [ %377, %376 ], [ %322, %372 ]
  %383 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %384 = extractvalue %dx.types.CBufRet.f32 %383, 2
  %385 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %386 = extractvalue %dx.types.CBufRet.f32 %385, 3
  %387 = fsub fast float %384, %235
  %388 = fadd fast float %387, %386
  %389 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %232, float %234, float %388)  ; Dot3(ax,ay,az,bx,by,bz)
  %390 = fmul fast float %303, %389
  %391 = fcmp fast olt float %390, 0.000000e+00
  %392 = and i1 %306, %391
  br i1 %392, label %397, label %393, !dx.controlflow.hints !39

; <label>:393                                     ; preds = %379
  %394 = fcmp fast olt float %278, 0.000000e+00
  br i1 %394, label %395, label %397, !dx.controlflow.hints !40

; <label>:395                                     ; preds = %393
  %396 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %390)  ; FMax(a,b)
  br label %397

; <label>:397                                     ; preds = %395, %393, %379
  %398 = phi float [ 0.000000e+00, %379 ], [ %396, %395 ], [ 0.000000e+00, %393 ]
  %399 = phi float [ 0.000000e+00, %379 ], [ 0x47EFFFFFE0000000, %395 ], [ %390, %393 ]
  %400 = fcmp fast oeq float %399, 0.000000e+00
  br i1 %400, label %404, label %401, !dx.controlflow.hints !41

; <label>:401                                     ; preds = %397
  %402 = call float @dx.op.binary.f32(i32 36, float %382, float %398)  ; FMin(a,b)
  %403 = call float @dx.op.binary.f32(i32 35, float %381, float %399)  ; FMax(a,b)
  br label %404

; <label>:404                                     ; preds = %401, %397
  %405 = phi i32 [ 1, %401 ], [ 0, %397 ]
  %406 = phi float [ %403, %401 ], [ %381, %397 ]
  %407 = phi float [ %402, %401 ], [ %382, %397 ]
  %408 = call float @dx.op.binary.f32(i32 36, float %297, float %406)  ; FMin(a,b)
  %409 = call float @dx.op.binary.f32(i32 35, float %274, float %407)  ; FMax(a,b)
  %410 = extractvalue %dx.types.CBufRet.f32 %298, 0
  %411 = fmul fast float %220, 2.000000e+00
  %412 = fadd fast float %411, -1.000000e+00
  %413 = fmul fast float %410, %412
  %414 = fadd fast float %413, %409
  %415 = fcmp fast olt float %414, %408
  %416 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %417 = extractvalue %dx.types.CBufRet.f32 %416, 2
  %418 = fcmp fast olt float %417, 1.000000e+00
  %419 = and i1 %418, %415
  br i1 %419, label %420, label %1136

; <label>:420                                     ; preds = %404
  %421 = fmul fast float %414, %278
  %422 = fadd fast float %421, %235
  %423 = fmul fast float %414, %277
  %424 = fadd fast float %423, %233
  %425 = fmul fast float %414, %276
  %426 = fadd fast float %425, %231
  br label %427

; <label>:427                                     ; preds = %1114, %420
  %428 = phi i32 [ %695, %1114 ], [ undef, %420 ]
  %429 = phi float [ %697, %1114 ], [ undef, %420 ]
  %430 = phi float [ %1116, %1114 ], [ 0.000000e+00, %420 ]
  %431 = phi float [ %1117, %1114 ], [ 1.000000e+00, %420 ]
  %432 = phi float [ %1127, %1114 ], [ %426, %420 ]
  %433 = phi float [ %1128, %1114 ], [ %424, %420 ]
  %434 = phi float [ %1129, %1114 ], [ %422, %420 ]
  %435 = phi float [ %1115, %1114 ], [ %414, %420 ]
  %436 = phi i32 [ %443, %1114 ], [ 0, %420 ]
  %437 = phi float [ %1118, %1114 ], [ 0.000000e+00, %420 ]
  %438 = phi float [ %1119, %1114 ], [ 0.000000e+00, %420 ]
  %439 = phi float [ %1120, %1114 ], [ 0.000000e+00, %420 ]
  %440 = phi float [ %1121, %1114 ], [ 0.000000e+00, %420 ]
  %441 = phi float [ %1122, %1114 ], [ 0.000000e+00, %420 ]
  %442 = phi i32 [ %1123, %1114 ], [ 0, %420 ]
  %443 = add i32 %436, 1
  %444 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %445 = extractvalue %dx.types.CBufRet.f32 %444, 0
  %446 = icmp eq i32 %320, 0
  br i1 %446, label %459, label %447, !dx.controlflow.hints !42

; <label>:447                                     ; preds = %427
  %448 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %449 = extractvalue %dx.types.CBufRet.f32 %448, 3
  %450 = extractvalue %dx.types.CBufRet.f32 %448, 2
  %451 = fmul fast float %449, %435
  %452 = fdiv fast float %451, %408
  %453 = fadd fast float %452, 1.000000e+00
  %454 = call float @dx.op.unary.f32(i32 23, float %453)  ; Log(value)
  %455 = call float @dx.op.binary.f32(i32 36, float 1.000000e+00, float %454)  ; FMin(a,b)
  %456 = fmul fast float %450, %408
  %457 = fmul fast float %456, %455
  %458 = call float @dx.op.binary.f32(i32 36, float 0x47EFFFFFE0000000, float %457)  ; FMin(a,b)
  br label %459

; <label>:459                                     ; preds = %447, %427
  %460 = phi float [ %458, %447 ], [ 0x47EFFFFFE0000000, %427 ]
  %461 = icmp eq i32 %380, 0
  br i1 %461, label %518, label %462, !dx.controlflow.hints !43

; <label>:462                                     ; preds = %459
  %463 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 35)  ; CBufferLoadLegacy(handle,regIndex)
  %464 = extractvalue %dx.types.CBufRet.f32 %463, 0
  %465 = extractvalue %dx.types.CBufRet.f32 %463, 1
  %466 = extractvalue %dx.types.CBufRet.f32 %463, 2
  %467 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 31)  ; CBufferLoadLegacy(handle,regIndex)
  %468 = extractvalue %dx.types.CBufRet.f32 %467, 0
  %469 = extractvalue %dx.types.CBufRet.f32 %467, 1
  %470 = extractvalue %dx.types.CBufRet.f32 %467, 2
  %471 = fsub fast float %432, %468
  %472 = fsub fast float %433, %469
  %473 = fsub fast float %434, %470
  %474 = fmul fast float %471, %464
  %475 = fmul fast float %472, %465
  %476 = fmul fast float %473, %466
  %477 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %18, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %478 = extractvalue %dx.types.CBufRet.i32 %477, 3
  %479 = icmp eq i32 %478, 0
  br i1 %479, label %483, label %480, !dx.controlflow.hints !44

; <label>:480                                     ; preds = %462
  %481 = call float @dx.op.unary.f32(i32 22, float %474)  ; Frc(value)
  %482 = call float @dx.op.unary.f32(i32 22, float %475)  ; Frc(value)
  br label %483

; <label>:483                                     ; preds = %480, %462
  %484 = phi float [ %481, %480 ], [ %474, %462 ]
  %485 = phi float [ %482, %480 ], [ %475, %462 ]
  %486 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %14, float %484, float %485, float %476, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %487 = extractvalue %dx.types.ResRet.f32 %486, 0
  %488 = fmul fast float %487, 2.000000e+00
  %489 = fadd fast float %488, -1.000000e+00
  %490 = extractvalue %dx.types.CBufRet.f32 %463, 3
  %491 = fmul fast float %489, %490
  %492 = fcmp fast olt float %491, 0.000000e+00
  %493 = fcmp fast oge float %476, 0.000000e+00
  %494 = fcmp fast ole float %476, 1.000000e+00
  br i1 %479, label %497, label %495, !dx.controlflow.hints !45

; <label>:495                                     ; preds = %483
  %496 = and i1 %493, %494
  br label %507

; <label>:497                                     ; preds = %483
  %498 = fcmp fast oge float %474, 0.000000e+00
  %499 = fcmp fast oge float %475, 0.000000e+00
  %500 = and i1 %498, %499
  %501 = and i1 %493, %500
  %502 = fcmp fast ole float %474, 1.000000e+00
  %503 = fcmp fast ole float %475, 1.000000e+00
  %504 = and i1 %502, %503
  %505 = and i1 %494, %504
  %506 = and i1 %501, %505
  br label %507

; <label>:507                                     ; preds = %497, %495
  %508 = phi i1 [ %496, %495 ], [ %506, %497 ]
  %509 = and i1 %492, %508
  %510 = call float @dx.op.unary.f32(i32 6, float %491)  ; FAbs(value)
  %511 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %512 = extractvalue %dx.types.CBufRet.f32 %511, 1
  %513 = extractvalue %dx.types.CBufRet.f32 %511, 0
  %514 = call float @dx.op.binary.f32(i32 35, float %510, float %513)  ; FMax(a,b)
  %515 = select i1 %509, float %512, float %514
  %516 = zext i1 %509 to i32
  %517 = call float @dx.op.binary.f32(i32 36, float 0x47EFFFFFE0000000, float %515)  ; FMin(a,b)
  br label %518

; <label>:518                                     ; preds = %507, %459
  %519 = phi i32 [ %516, %507 ], [ 0, %459 ]
  %520 = phi float [ %517, %507 ], [ 0x47EFFFFFE0000000, %459 ]
  %521 = icmp eq i32 %405, 0
  br i1 %521, label %694, label %522, !dx.controlflow.hints !46

; <label>:522                                     ; preds = %518
  %523 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %18, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %524 = extractvalue %dx.types.CBufRet.i32 %523, 1
  %525 = and i32 %524, 1
  %526 = icmp eq i32 %525, 0
  br i1 %526, label %527, label %684, !dx.controlflow.hints !47

; <label>:527                                     ; preds = %522
  %528 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 204)  ; CBufferLoadLegacy(handle,regIndex)
  %529 = extractvalue %dx.types.CBufRet.f32 %528, 2
  %530 = extractvalue %dx.types.CBufRet.f32 %528, 3
  %531 = fmul fast float %529, %432
  %532 = fmul fast float %530, %433
  %533 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 205)  ; CBufferLoadLegacy(handle,regIndex)
  %534 = extractvalue %dx.types.CBufRet.f32 %533, 0
  %535 = extractvalue %dx.types.CBufRet.f32 %533, 1
  %536 = fadd fast float %531, %534
  %537 = fadd fast float %532, %535
  %538 = call float @dx.op.unary.f32(i32 7, float %536)  ; Saturate(value)
  %539 = call float @dx.op.unary.f32(i32 7, float %537)  ; Saturate(value)
  %540 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %16, float %538, float %539, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %541 = extractvalue %dx.types.ResRet.f32 %540, 0
  %542 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %543 = extractvalue %dx.types.CBufRet.f32 %542, 0
  %544 = fmul fast float %543, %541
  %545 = fsub fast float %536, %538
  %546 = fsub fast float %537, %539
  %547 = extractvalue %dx.types.CBufRet.f32 %528, 0
  %548 = extractvalue %dx.types.CBufRet.f32 %528, 1
  %549 = fmul fast float %547, %545
  %550 = fmul fast float %548, %546
  %551 = fmul fast float %549, %549
  %552 = fmul fast float %550, %550
  %553 = fadd fast float %551, %552
  %554 = call float @dx.op.unary.f32(i32 24, float %553)  ; Sqrt(value)
  %555 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %556 = extractvalue %dx.types.CBufRet.f32 %555, 3
  %557 = fmul fast float %556, %554
  %558 = call float @dx.op.unary.f32(i32 7, float %557)  ; Saturate(value)
  %559 = extractvalue %dx.types.CBufRet.f32 %555, 2
  %560 = fsub fast float %559, %544
  %561 = fmul fast float %560, %558
  %562 = extractvalue %dx.types.CBufRet.f32 %542, 1
  %563 = fsub fast float %434, %544
  %564 = fsub fast float %563, %562
  %565 = fsub fast float %564, %561
  %566 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %567 = extractvalue %dx.types.CBufRet.f32 %566, 2
  %568 = fsub fast float %565, %567
  %569 = fcmp fast olt float %568, 0.000000e+00
  %570 = call float @dx.op.unary.f32(i32 6, float %568)  ; FAbs(value)
  %571 = extractvalue %dx.types.CBufRet.i32 %523, 0
  %572 = icmp eq i32 %571, 0
  br i1 %572, label %626, label %573

; <label>:573                                     ; preds = %527
  br label %574

; <label>:574                                     ; preds = %613, %573
  %575 = phi i32 [ %619, %613 ], [ 1, %573 ]
  %576 = phi float [ %621, %613 ], [ 0x47EFFFFFE0000000, %573 ]
  %577 = phi i32 [ %622, %613 ], [ 0, %573 ]
  %578 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %579 = extractvalue %dx.types.CBufRet.f32 %578, 1
  %580 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %18, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %581 = extractvalue %dx.types.CBufRet.i32 %580, 1
  %582 = and i32 %581, 8
  %583 = icmp eq i32 %582, 0
  %584 = fcmp fast ogt float %579, %565
  %585 = or i1 %584, %583
  %586 = add i32 %577, 171
  %587 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 %586)  ; CBufferLoadLegacy(handle,regIndex)
  %588 = extractvalue %dx.types.CBufRet.f32 %587, 0
  %589 = extractvalue %dx.types.CBufRet.f32 %587, 1
  %590 = extractvalue %dx.types.CBufRet.f32 %587, 2
  br i1 %585, label %591, label %597, !dx.controlflow.hints !48

; <label>:591                                     ; preds = %574
  %592 = fsub fast float %588, %432
  %593 = fsub fast float %589, %433
  %594 = fmul fast float %592, %592
  %595 = fmul fast float %593, %593
  %596 = fadd fast float %594, %595
  br label %613

; <label>:597                                     ; preds = %574
  %598 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %599 = extractvalue %dx.types.CBufRet.f32 %598, 2
  %600 = extractvalue %dx.types.CBufRet.f32 %578, 2
  %601 = fmul fast float %600, %599
  %602 = fsub fast float %601, %579
  %603 = fdiv fast float %590, %602
  %604 = fsub fast float %432, %588
  %605 = fsub fast float %433, %589
  %606 = fsub fast float %565, %579
  %607 = fmul fast float %603, %606
  %608 = fmul fast float %604, %604
  %609 = fmul fast float %605, %605
  %610 = fadd fast float %608, %609
  %611 = fmul fast float %607, %607
  %612 = fadd fast float %610, %611
  br label %613

; <label>:613                                     ; preds = %597, %591
  %614 = phi float [ %596, %591 ], [ %612, %597 ]
  %615 = call float @dx.op.unary.f32(i32 24, float %614)  ; Sqrt(value)
  %616 = fsub float %590, %615
  %617 = fcmp fast olt float %616, 0.000000e+00
  %618 = zext i1 %617 to i32
  %619 = and i32 %618, %575
  %620 = call float @dx.op.unary.f32(i32 6, float %616)  ; FAbs(value)
  %621 = call float @dx.op.binary.f32(i32 36, float %576, float %620)  ; FMin(a,b)
  %622 = add i32 %577, 1
  %623 = extractvalue %dx.types.CBufRet.i32 %580, 0
  %624 = icmp ult i32 %622, %623
  br i1 %624, label %574, label %625

; <label>:625                                     ; preds = %613
  br label %626

; <label>:626                                     ; preds = %625, %527
  %627 = phi i32 [ 1, %527 ], [ %619, %625 ]
  %628 = phi float [ 0x47EFFFFFE0000000, %527 ], [ %621, %625 ]
  br label %629

; <label>:629                                     ; preds = %629, %626
  %630 = phi i32 [ %627, %626 ], [ %669, %629 ]
  %631 = phi float [ 0x47EFFFFFE0000000, %626 ], [ %671, %629 ]
  %632 = phi i32 [ 0, %626 ], [ %672, %629 ]
  %633 = add nuw nsw i32 %632, 191
  %634 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 %633)  ; CBufferLoadLegacy(handle,regIndex)
  %635 = extractvalue %dx.types.CBufRet.f32 %634, 0
  %636 = extractvalue %dx.types.CBufRet.f32 %634, 1
  %637 = extractvalue %dx.types.CBufRet.f32 %634, 2
  %638 = add nuw nsw i32 %632, 195
  %639 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 %638)  ; CBufferLoadLegacy(handle,regIndex)
  %640 = extractvalue %dx.types.CBufRet.f32 %639, 0
  %641 = extractvalue %dx.types.CBufRet.f32 %639, 1
  %642 = extractvalue %dx.types.CBufRet.f32 %639, 2
  %643 = fsub fast float %432, %635
  %644 = fsub fast float %433, %636
  %645 = fsub fast float %565, %637
  %646 = call float @dx.op.unary.f32(i32 6, float %643)  ; FAbs(value)
  %647 = call float @dx.op.unary.f32(i32 6, float %644)  ; FAbs(value)
  %648 = call float @dx.op.unary.f32(i32 6, float %645)  ; FAbs(value)
  %649 = fsub fast float %646, %640
  %650 = fsub fast float %647, %641
  %651 = fsub fast float %648, %642
  %652 = call float @dx.op.binary.f32(i32 35, float %649, float 0.000000e+00)  ; FMax(a,b)
  %653 = call float @dx.op.binary.f32(i32 35, float %650, float 0.000000e+00)  ; FMax(a,b)
  %654 = call float @dx.op.binary.f32(i32 35, float %651, float 0.000000e+00)  ; FMax(a,b)
  %655 = fmul fast float %652, %652
  %656 = fmul fast float %653, %653
  %657 = fadd fast float %656, %655
  %658 = fmul fast float %654, %654
  %659 = fadd fast float %657, %658
  %660 = call float @dx.op.unary.f32(i32 24, float %659)  ; Sqrt(value)
  %661 = call float @dx.op.binary.f32(i32 35, float %650, float %651)  ; FMax(a,b)
  %662 = call float @dx.op.binary.f32(i32 35, float %649, float %661)  ; FMax(a,b)
  %663 = call float @dx.op.binary.f32(i32 36, float %662, float 0.000000e+00)  ; FMin(a,b)
  %664 = fadd fast float %663, %660
  %665 = fsub fast float -0.000000e+00, %664
  %666 = fcmp ogt float %664, -0.000000e+00
  %667 = icmp ne i32 %630, 0
  %668 = and i1 %667, %666
  %669 = zext i1 %668 to i32
  %670 = call float @dx.op.unary.f32(i32 6, float %665)  ; FAbs(value)
  %671 = call float @dx.op.binary.f32(i32 36, float %631, float %670)  ; FMin(a,b)
  %672 = add nuw nsw i32 %632, 1
  %673 = icmp eq i32 %672, 4
  br i1 %673, label %674, label %629

; <label>:674                                     ; preds = %629
  %675 = call float @dx.op.binary.f32(i32 36, float %570, float %671)  ; FMin(a,b)
  %676 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %18, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %677 = extractvalue %dx.types.CBufRet.i32 %676, 1
  %678 = and i32 %677, 2
  %679 = icmp ne i32 %678, 0
  %680 = xor i1 %668, %679
  %681 = call float @dx.op.binary.f32(i32 36, float %675, float %628)  ; FMin(a,b)
  %682 = and i1 %680, %569
  %683 = zext i1 %682 to i32
  br label %684

; <label>:684                                     ; preds = %674, %522
  %685 = phi i32 [ %428, %522 ], [ %683, %674 ]
  %686 = phi float [ 0.000000e+00, %522 ], [ %681, %674 ]
  %687 = phi float [ %434, %522 ], [ %565, %674 ]
  %688 = icmp ne i32 %685, 0
  %689 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %690 = extractvalue %dx.types.CBufRet.f32 %689, 3
  %691 = call float @dx.op.binary.f32(i32 35, float %686, float %690)  ; FMax(a,b)
  %692 = call float @dx.op.binary.f32(i32 36, float %460, float %691)  ; FMin(a,b)
  %693 = zext i1 %688 to i32
  br label %694

; <label>:694                                     ; preds = %684, %518
  %695 = phi i32 [ %685, %684 ], [ %428, %518 ]
  %696 = phi i32 [ %693, %684 ], [ 0, %518 ]
  %697 = phi float [ %687, %684 ], [ %429, %518 ]
  %698 = phi float [ %692, %684 ], [ %460, %518 ]
  %699 = extractvalue %dx.types.CBufRet.f32 %444, 2
  %700 = fmul fast float %699, %435
  %701 = call float @dx.op.unary.f32(i32 23, float %700)  ; Log(value)
  %702 = fmul fast float %701, 0x3FE62E4300000000
  %703 = call float @dx.op.binary.f32(i32 35, float %702, float 1.000000e+00)  ; FMax(a,b)
  %704 = fmul fast float %703, %698
  %705 = call float @dx.op.binary.f32(i32 36, float %704, float %520)  ; FMin(a,b)
  %706 = call float @dx.op.binary.f32(i32 35, float %705, float %445)  ; FMax(a,b)
  %707 = fadd fast float %408, 0x3F1A36E2E0000000
  %708 = fsub fast float %707, %435
  %709 = call float @dx.op.binary.f32(i32 36, float %708, float %706)  ; FMin(a,b)
  br i1 %446, label %757, label %710, !dx.controlflow.hints !49

; <label>:710                                     ; preds = %694
  %711 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 399)  ; CBufferLoadLegacy(handle,regIndex)
  %712 = extractvalue %dx.types.CBufRet.f32 %711, 0
  %713 = fsub fast float -0.000000e+00, %432
  %714 = fsub fast float -0.000000e+00, %433
  %715 = fsub fast float %712, %434
  %716 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %713, float %714, float %715)  ; Dot3(ax,ay,az,bx,by,bz)
  %717 = fmul fast float %303, %716
  %718 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %717)  ; FMax(a,b)
  %719 = fcmp fast olt float %278, 0.000000e+00
  %720 = call float @dx.op.binary.f32(i32 36, float %709, float %718)  ; FMin(a,b)
  br i1 %719, label %722, label %721, !dx.controlflow.hints !50

; <label>:721                                     ; preds = %710
  br label %722

; <label>:722                                     ; preds = %721, %710
  %723 = phi float [ 0.000000e+00, %721 ], [ %720, %710 ]
  %724 = phi float [ %720, %721 ], [ %709, %710 ]
  %725 = phi float [ %720, %721 ], [ 0.000000e+00, %710 ]
  %726 = phi float [ %709, %721 ], [ %720, %710 ]
  %727 = fsub fast float %724, %723
  %728 = extractvalue %dx.types.CBufRet.f32 %711, 1
  %729 = call float @dx.op.binary.f32(i32 36, float 0xBF0FFB4800000000, float %728)  ; FMin(a,b)
  %730 = fsub fast float %434, %712
  %731 = fmul fast float %729, 0x3FF7154760000000
  %732 = fmul fast float %731, %730
  %733 = call float @dx.op.unary.f32(i32 21, float %732)  ; Exp(value)
  %734 = fmul fast float %278, 0x3FF7154760000000
  %735 = fmul fast float %734, %726
  %736 = fmul fast float %735, %729
  %737 = call float @dx.op.unary.f32(i32 21, float %736)  ; Exp(value)
  %738 = fmul fast float %734, %725
  %739 = fmul fast float %738, %729
  %740 = call float @dx.op.unary.f32(i32 21, float %739)  ; Exp(value)
  %741 = fsub fast float %737, %740
  %742 = fmul fast float %741, %733
  %743 = fmul fast float %729, %278
  %744 = fdiv fast float %742, %743
  %745 = fadd fast float %727, %744
  %746 = call float @dx.op.unary.f32(i32 6, float %278)  ; FAbs(value)
  %747 = fcmp fast olt float %746, 0x3F0FFB4800000000
  %748 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %730)  ; FMax(a,b)
  %749 = fmul fast float %748, 0x3FF7154760000000
  %750 = fmul fast float %749, %728
  %751 = call float @dx.op.unary.f32(i32 21, float %750)  ; Exp(value)
  %752 = fmul fast float %751, %709
  %753 = select i1 %747, float %752, float %745
  %754 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 396)  ; CBufferLoadLegacy(handle,regIndex)
  %755 = extractvalue %dx.types.CBufRet.f32 %754, 1
  %756 = fmul fast float %753, %755
  br label %757

; <label>:757                                     ; preds = %722, %694
  %758 = phi float [ %756, %722 ], [ 0.000000e+00, %694 ]
  %759 = icmp eq i32 %519, 0
  br i1 %759, label %940, label %760, !dx.controlflow.hints !51

; <label>:760                                     ; preds = %757
  %761 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %762 = extractvalue %dx.types.CBufRet.f32 %761, 3
  %763 = fmul fast float %762, %435
  %764 = fcmp fast oeq float %763, 0.000000e+00
  br i1 %764, label %779, label %765, !dx.controlflow.hints !52

; <label>:765                                     ; preds = %760
  %766 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 41)  ; CBufferLoadLegacy(handle,regIndex)
  %767 = extractvalue %dx.types.CBufRet.f32 %766, 3
  %768 = fmul fast float %767, %763
  %769 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 33)  ; CBufferLoadLegacy(handle,regIndex)
  %770 = extractvalue %dx.types.CBufRet.f32 %769, 0
  %771 = extractvalue %dx.types.CBufRet.f32 %769, 1
  %772 = extractvalue %dx.types.CBufRet.f32 %769, 2
  %773 = fmul fast float %770, %768
  %774 = fmul fast float %771, %768
  %775 = fmul fast float %772, %768
  %776 = call float @dx.op.unary.f32(i32 23, float %773)  ; Log(value)
  %777 = call float @dx.op.unary.f32(i32 23, float %774)  ; Log(value)
  %778 = call float @dx.op.unary.f32(i32 23, float %775)  ; Log(value)
  br label %779

; <label>:779                                     ; preds = %765, %760
  %780 = phi float [ %776, %765 ], [ 0.000000e+00, %760 ]
  %781 = phi float [ %777, %765 ], [ 0.000000e+00, %760 ]
  %782 = phi float [ %778, %765 ], [ 0.000000e+00, %760 ]
  %783 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 35)  ; CBufferLoadLegacy(handle,regIndex)
  %784 = extractvalue %dx.types.CBufRet.f32 %783, 0
  %785 = extractvalue %dx.types.CBufRet.f32 %783, 1
  %786 = extractvalue %dx.types.CBufRet.f32 %783, 2
  %787 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 31)  ; CBufferLoadLegacy(handle,regIndex)
  %788 = extractvalue %dx.types.CBufRet.f32 %787, 0
  %789 = extractvalue %dx.types.CBufRet.f32 %787, 1
  %790 = extractvalue %dx.types.CBufRet.f32 %787, 2
  %791 = fsub fast float %432, %788
  %792 = fsub fast float %433, %789
  %793 = fsub fast float %434, %790
  %794 = fmul fast float %791, %784
  %795 = fmul fast float %792, %785
  %796 = fmul fast float %793, %786
  %797 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %18, i32 29)  ; CBufferLoadLegacy(handle,regIndex)
  %798 = extractvalue %dx.types.CBufRet.i32 %797, 0
  %799 = extractvalue %dx.types.CBufRet.i32 %797, 1
  %800 = uitofp i32 %798 to float
  %801 = uitofp i32 %799 to float
  %802 = fmul fast float %794, %800
  %803 = fmul fast float %795, %801
  %804 = fadd fast float %802, 5.000000e-01
  %805 = fadd fast float %803, 5.000000e-01
  %806 = call float @dx.op.unary.f32(i32 22, float %804)  ; Frc(value)
  %807 = call float @dx.op.unary.f32(i32 22, float %805)  ; Frc(value)
  %808 = call float @dx.op.unary.f32(i32 27, float %804)  ; Round_ni(value)
  %809 = call float @dx.op.unary.f32(i32 27, float %805)  ; Round_ni(value)
  %810 = fadd fast float %808, 1.000000e+00
  %811 = fadd fast float %809, 1.000000e+00
  %812 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 30)  ; CBufferLoadLegacy(handle,regIndex)
  %813 = extractvalue %dx.types.CBufRet.f32 %812, 0
  %814 = extractvalue %dx.types.CBufRet.f32 %812, 1
  %815 = fmul fast float %813, %810
  %816 = fmul fast float %814, %811
  %817 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %9, %dx.types.Handle %15, float %815, float %816, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %818 = extractvalue %dx.types.ResRet.f32 %817, 0
  %819 = extractvalue %dx.types.ResRet.f32 %817, 1
  %820 = extractvalue %dx.types.ResRet.f32 %817, 2
  %821 = extractvalue %dx.types.ResRet.f32 %817, 3
  %822 = extractvalue %dx.types.CBufRet.i32 %797, 2
  %823 = extractvalue %dx.types.CBufRet.f32 %812, 2
  %824 = uitofp i32 %822 to float
  %825 = fadd fast float %824, -1.000000e+00
  %826 = fmul fast float %825, %818
  %827 = fmul fast float %825, %819
  %828 = fmul fast float %825, %820
  %829 = fmul fast float %825, %821
  %830 = fadd fast float %826, 5.000000e-01
  %831 = fadd fast float %827, 5.000000e-01
  %832 = fadd fast float %828, 5.000000e-01
  %833 = fadd fast float %829, 5.000000e-01
  %834 = fptoui float %830 to i32
  %835 = fptoui float %831 to i32
  %836 = fptoui float %832 to i32
  %837 = fptoui float %833 to i32
  %838 = uitofp i32 %834 to float
  %839 = uitofp i32 %835 to float
  %840 = uitofp i32 %836 to float
  %841 = uitofp i32 %837 to float
  %842 = fadd fast float %838, 5.000000e-01
  %843 = fadd fast float %839, 5.000000e-01
  %844 = fadd fast float %840, 5.000000e-01
  %845 = fadd fast float %841, 5.000000e-01
  %846 = fmul fast float %842, %823
  %847 = fmul fast float %843, %823
  %848 = fmul fast float %844, %823
  %849 = fmul fast float %845, %823
  %850 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %16, float %846, float %796, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %851 = extractvalue %dx.types.ResRet.f32 %850, 0
  %852 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %16, float %847, float %796, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %853 = extractvalue %dx.types.ResRet.f32 %852, 0
  %854 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %16, float %848, float %796, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %855 = extractvalue %dx.types.ResRet.f32 %854, 0
  %856 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %16, float %849, float %796, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %857 = extractvalue %dx.types.ResRet.f32 %856, 0
  %858 = fsub fast float %855, %857
  %859 = fmul fast float %858, %806
  %860 = fadd fast float %859, %857
  %861 = fsub fast float %853, %851
  %862 = fmul fast float %861, %806
  %863 = fadd fast float %862, %851
  %864 = fsub fast float %863, %860
  %865 = fmul fast float %864, %807
  %866 = fadd fast float %865, %860
  %867 = fcmp fast ogt float %866, 0.000000e+00
  br i1 %867, label %868, label %936, !dx.controlflow.hints !53

; <label>:868                                     ; preds = %779
  %869 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 33)  ; CBufferLoadLegacy(handle,regIndex)
  %870 = extractvalue %dx.types.CBufRet.f32 %869, 0
  %871 = extractvalue %dx.types.CBufRet.f32 %869, 1
  %872 = extractvalue %dx.types.CBufRet.f32 %869, 2
  %873 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 41)  ; CBufferLoadLegacy(handle,regIndex)
  %874 = extractvalue %dx.types.CBufRet.f32 %873, 0
  %875 = extractvalue %dx.types.CBufRet.f32 %873, 1
  %876 = extractvalue %dx.types.CBufRet.f32 %873, 2
  %877 = fmul fast float %792, %784
  %878 = fmul fast float %793, %784
  %879 = fadd fast float %794, %874
  %880 = fadd fast float %877, %875
  %881 = fadd fast float %878, %876
  %882 = fmul fast float %879, %870
  %883 = fmul fast float %880, %870
  %884 = fmul fast float %881, %870
  %885 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %13, float %882, float %883, float %884, float undef, i32 0, i32 0, i32 0, float %780)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %886 = extractvalue %dx.types.ResRet.f32 %885, 0
  %887 = fmul fast float %879, %871
  %888 = fmul fast float %880, %871
  %889 = fmul fast float %881, %871
  %890 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %13, float %887, float %888, float %889, float undef, i32 0, i32 0, i32 0, float %781)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %891 = extractvalue %dx.types.ResRet.f32 %890, 1
  %892 = fmul fast float %879, %872
  %893 = fmul fast float %880, %872
  %894 = fmul fast float %881, %872
  %895 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %13, float %892, float %893, float %894, float undef, i32 0, i32 0, i32 0, float %782)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %896 = extractvalue %dx.types.ResRet.f32 %895, 2
  %897 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 34)  ; CBufferLoadLegacy(handle,regIndex)
  %898 = extractvalue %dx.types.CBufRet.f32 %897, 1
  %899 = fmul fast float %891, %886
  %900 = fmul fast float %899, %896
  %901 = call float @dx.op.unary.f32(i32 23, float %900)  ; Log(value)
  %902 = fmul fast float %901, %898
  %903 = call float @dx.op.unary.f32(i32 21, float %902)  ; Exp(value)
  %904 = extractvalue %dx.types.CBufRet.f32 %897, 2
  %905 = fmul fast float %866, %866
  %906 = fmul fast float %905, %903
  %907 = fmul fast float %906, %904
  %908 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 32)  ; CBufferLoadLegacy(handle,regIndex)
  %909 = extractvalue %dx.types.CBufRet.f32 %908, 3
  %910 = fmul fast float %909, %907
  %911 = bitcast float %910 to i32
  %912 = sitofp i32 %911 to float
  %913 = fptosi float %912 to i32
  %914 = bitcast i32 %913 to float
  %915 = fsub fast float 1.000000e+00, %907
  %916 = bitcast float %915 to i32
  %917 = sitofp i32 %916 to float
  %918 = fptosi float %917 to i32
  %919 = bitcast i32 %918 to float
  %920 = fadd fast float %914, %919
  %921 = bitcast float %920 to i32
  %922 = sub nsw i32 2129859010, %921
  %923 = bitcast i32 %922 to float
  %924 = fmul fast float %923, %914
  %925 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %926 = extractvalue %dx.types.CBufRet.f32 %925, 2
  %927 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 37)  ; CBufferLoadLegacy(handle,regIndex)
  %928 = extractvalue %dx.types.CBufRet.f32 %927, 0
  %929 = fmul fast float %924, %928
  %930 = fadd fast float %929, 1.000000e+00
  %931 = bitcast float %930 to i32
  %932 = sub nsw i32 2129859010, %931
  %933 = bitcast i32 %932 to float
  %934 = fmul fast float %924, %926
  %935 = fmul fast float %934, %933
  br label %936

; <label>:936                                     ; preds = %868, %779
  %937 = phi float [ %935, %868 ], [ %866, %779 ]
  %938 = fmul fast float %937, %709
  %939 = fadd fast float %938, %758
  br label %940

; <label>:940                                     ; preds = %936, %757
  %941 = phi float [ %939, %936 ], [ %758, %757 ]
  %942 = icmp eq i32 %696, 0
  br i1 %942, label %974, label %943, !dx.controlflow.hints !54

; <label>:943                                     ; preds = %940
  %944 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 190)  ; CBufferLoadLegacy(handle,regIndex)
  %945 = extractvalue %dx.types.CBufRet.f32 %944, 1
  %946 = fsub fast float %709, %945
  %947 = extractvalue %dx.types.CBufRet.f32 %944, 3
  %948 = fmul fast float %946, %947
  %949 = call float @dx.op.unary.f32(i32 7, float %948)  ; Saturate(value)
  %950 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 188)  ; CBufferLoadLegacy(handle,regIndex)
  %951 = extractvalue %dx.types.CBufRet.f32 %950, 3
  %952 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %953 = extractvalue %dx.types.CBufRet.f32 %952, 2
  %954 = fsub fast float %953, %697
  %955 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 189)  ; CBufferLoadLegacy(handle,regIndex)
  %956 = extractvalue %dx.types.CBufRet.f32 %955, 3
  %957 = fmul fast float %954, %956
  %958 = call float @dx.op.unary.f32(i32 7, float %957)  ; Saturate(value)
  %959 = fmul fast float %958, %951
  %960 = extractvalue %dx.types.CBufRet.f32 %955, 0
  %961 = fsub fast float %435, %960
  %962 = extractvalue %dx.types.CBufRet.f32 %955, 1
  %963 = fmul fast float %961, %962
  %964 = call float @dx.op.unary.f32(i32 7, float %963)  ; Saturate(value)
  %965 = fsub fast float 1.000000e+00, %949
  %966 = fmul fast float %964, %965
  %967 = fadd fast float %966, %949
  %968 = extractvalue %dx.types.CBufRet.f32 %944, 0
  %969 = fsub fast float %959, %968
  %970 = fmul fast float %969, %967
  %971 = fadd fast float %970, %968
  %972 = fmul fast float %971, %709
  %973 = fadd fast float %972, %941
  br label %974

; <label>:974                                     ; preds = %943, %940
  %975 = phi float [ %973, %943 ], [ %941, %940 ]
  %976 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %977 = extractvalue %dx.types.CBufRet.f32 %976, 1
  %978 = fcmp fast ogt float %975, %977
  br i1 %978, label %981, label %979, !dx.controlflow.hints !55

; <label>:979                                     ; preds = %974
  %980 = fadd fast float %709, %435
  br label %1114

; <label>:981                                     ; preds = %974
  %982 = fmul fast float %975, 0xBFF7154760000000
  %983 = call float @dx.op.unary.f32(i32 21, float %982)  ; Exp(value)
  %984 = call float @dx.op.unary.f32(i32 7, float %983)  ; Saturate(value)
  %985 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %986 = extractvalue %dx.types.CBufRet.f32 %985, 0
  %987 = extractvalue %dx.types.CBufRet.f32 %985, 1
  %988 = extractvalue %dx.types.CBufRet.f32 %985, 2
  %989 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 427)  ; CBufferLoadLegacy(handle,regIndex)
  %990 = extractvalue %dx.types.CBufRet.f32 %989, 0
  %991 = fmul fast float %990, %986
  %992 = fmul fast float %990, %987
  %993 = fmul fast float %990, %988
  %994 = fadd fast float %991, %432
  %995 = fadd fast float %992, %433
  %996 = fadd fast float %993, %434
  br i1 %521, label %1067, label %997, !dx.controlflow.hints !46

; <label>:997                                     ; preds = %981
  %998 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %18, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %999 = extractvalue %dx.types.CBufRet.i32 %998, 1
  %1000 = and i32 %999, 1
  %1001 = icmp eq i32 %1000, 0
  br i1 %1001, label %1002, label %1067, !dx.controlflow.hints !47

; <label>:1002                                    ; preds = %997
  %1003 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 204)  ; CBufferLoadLegacy(handle,regIndex)
  %1004 = extractvalue %dx.types.CBufRet.f32 %1003, 2
  %1005 = extractvalue %dx.types.CBufRet.f32 %1003, 3
  %1006 = fmul fast float %1004, %994
  %1007 = fmul fast float %1005, %995
  %1008 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 205)  ; CBufferLoadLegacy(handle,regIndex)
  %1009 = extractvalue %dx.types.CBufRet.f32 %1008, 0
  %1010 = extractvalue %dx.types.CBufRet.f32 %1008, 1
  %1011 = fadd fast float %1006, %1009
  %1012 = fadd fast float %1007, %1010
  %1013 = call float @dx.op.unary.f32(i32 7, float %1011)  ; Saturate(value)
  %1014 = call float @dx.op.unary.f32(i32 7, float %1012)  ; Saturate(value)
  %1015 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %16, float %1013, float %1014, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1016 = extractvalue %dx.types.ResRet.f32 %1015, 0
  %1017 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %1018 = extractvalue %dx.types.CBufRet.f32 %1017, 0
  %1019 = fmul fast float %1018, %1016
  %1020 = fsub fast float %1011, %1013
  %1021 = fsub fast float %1012, %1014
  %1022 = extractvalue %dx.types.CBufRet.f32 %1003, 0
  %1023 = extractvalue %dx.types.CBufRet.f32 %1003, 1
  %1024 = fmul fast float %1022, %1020
  %1025 = fmul fast float %1023, %1021
  %1026 = fmul fast float %1024, %1024
  %1027 = fmul fast float %1025, %1025
  %1028 = fadd fast float %1026, %1027
  %1029 = call float @dx.op.unary.f32(i32 24, float %1028)  ; Sqrt(value)
  %1030 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %1031 = extractvalue %dx.types.CBufRet.f32 %1030, 3
  %1032 = fmul fast float %1031, %1029
  %1033 = call float @dx.op.unary.f32(i32 7, float %1032)  ; Saturate(value)
  %1034 = extractvalue %dx.types.CBufRet.f32 %1030, 2
  %1035 = fsub fast float %1034, %1019
  %1036 = fmul fast float %1035, %1033
  %1037 = extractvalue %dx.types.CBufRet.f32 %1017, 1
  %1038 = fsub fast float %996, %1019
  %1039 = fsub fast float %1038, %1037
  %1040 = fsub fast float %1039, %1036
  %1041 = extractvalue %dx.types.CBufRet.i32 %998, 0
  %1042 = icmp eq i32 %1041, 0
  br i1 %1042, label %1061, label %1043

; <label>:1043                                    ; preds = %1002
  br label %1044

; <label>:1044                                    ; preds = %1056, %1043
  %1045 = phi i32 [ %1057, %1056 ], [ 0, %1043 ]
  %1046 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %1047 = extractvalue %dx.types.CBufRet.f32 %1046, 1
  %1048 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %18, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1049 = extractvalue %dx.types.CBufRet.i32 %1048, 1
  %1050 = and i32 %1049, 8
  %1051 = icmp eq i32 %1050, 0
  %1052 = fcmp fast ogt float %1047, %1040
  %1053 = or i1 %1052, %1051
  br i1 %1053, label %1054, label %1055, !dx.controlflow.hints !48

; <label>:1054                                    ; preds = %1044
  br label %1056

; <label>:1055                                    ; preds = %1044
  br label %1056

; <label>:1056                                    ; preds = %1055, %1054
  %1057 = add i32 %1045, 1
  %1058 = extractvalue %dx.types.CBufRet.i32 %1048, 0
  %1059 = icmp ult i32 %1057, %1058
  br i1 %1059, label %1044, label %1060

; <label>:1060                                    ; preds = %1056
  br label %1061

; <label>:1061                                    ; preds = %1060, %1002
  br label %1062

; <label>:1062                                    ; preds = %1062, %1061
  %1063 = phi i32 [ %1064, %1062 ], [ 0, %1061 ]
  %1064 = add nuw nsw i32 %1063, 1
  %1065 = icmp eq i32 %1064, 4
  br i1 %1065, label %1066, label %1062

; <label>:1066                                    ; preds = %1062
  br label %1067

; <label>:1067                                    ; preds = %1066, %997, %981
  %1068 = fsub fast float 1.000000e+00, %984
  %1069 = fdiv fast float %975, %709
  %1070 = fadd fast float %709, %435
  %1071 = fmul fast float %435, %435
  %1072 = fmul fast float %1070, %1070
  %1073 = fsub fast float %1071, %1072
  %1074 = fmul fast float %1073, -5.000000e-01
  %1075 = fmul fast float %1074, %1069
  %1076 = fadd fast float %1075, %430
  %1077 = fadd fast float %975, %437
  %1078 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %18, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %1079 = extractvalue %dx.types.CBufRet.i32 %1078, 0
  %1080 = icmp eq i32 %1079, 0
  br i1 %1080, label %1107, label %1081, !dx.controlflow.hints !56

; <label>:1081                                    ; preds = %1067
  %1082 = icmp ne i32 %442, 0
  %1083 = zext i1 %1082 to i32
  %1084 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %1085 = extractvalue %dx.types.CBufRet.f32 %1084, 2
  %1086 = extractvalue %dx.types.CBufRet.f32 %1084, 0
  %1087 = fsub fast float %1070, %1086
  %1088 = fmul fast float %1087, %1085
  %1089 = call float @dx.op.unary.f32(i32 7, float %1088)  ; Saturate(value)
  %1090 = fadd fast float %1089, -5.000000e-01
  %1091 = fmul fast float %1090, 2.000000e+00
  %1092 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %1093 = extractvalue %dx.types.CBufRet.f32 %1092, 2
  %1094 = fcmp fast olt float %1091, %1093
  br i1 %1094, label %1095, label %1107, !dx.controlflow.hints !57

; <label>:1095                                    ; preds = %1081
  %1096 = fmul fast float %1091, %1091
  %1097 = fmul fast float %1068, %431
  %1098 = fmul fast float %1091, %1097
  %1099 = fmul fast float %1096, %1097
  %1100 = fmul fast float %1098, %1096
  %1101 = fmul fast float %1096, %1096
  %1102 = fmul fast float %1101, %1097
  %1103 = fadd fast float %1098, %438
  %1104 = fadd fast float %1099, %439
  %1105 = fadd fast float %1100, %440
  %1106 = fadd fast float %1102, %441
  br label %1107

; <label>:1107                                    ; preds = %1095, %1081, %1067
  %1108 = phi float [ %438, %1067 ], [ %1103, %1095 ], [ %438, %1081 ]
  %1109 = phi float [ %439, %1067 ], [ %1104, %1095 ], [ %439, %1081 ]
  %1110 = phi float [ %440, %1067 ], [ %1105, %1095 ], [ %440, %1081 ]
  %1111 = phi float [ %441, %1067 ], [ %1106, %1095 ], [ %441, %1081 ]
  %1112 = phi i32 [ %442, %1067 ], [ 1, %1095 ], [ %1083, %1081 ]
  %1113 = fmul fast float %984, %431
  br label %1114

; <label>:1114                                    ; preds = %1107, %979
  %1115 = phi float [ %980, %979 ], [ %1070, %1107 ]
  %1116 = phi float [ %430, %979 ], [ %1076, %1107 ]
  %1117 = phi float [ %431, %979 ], [ %1113, %1107 ]
  %1118 = phi float [ %437, %979 ], [ %1077, %1107 ]
  %1119 = phi float [ %438, %979 ], [ %1108, %1107 ]
  %1120 = phi float [ %439, %979 ], [ %1109, %1107 ]
  %1121 = phi float [ %440, %979 ], [ %1110, %1107 ]
  %1122 = phi float [ %441, %979 ], [ %1111, %1107 ]
  %1123 = phi i32 [ %442, %979 ], [ %1112, %1107 ]
  %1124 = fmul fast float %709, %276
  %1125 = fmul fast float %709, %277
  %1126 = fmul fast float %709, %278
  %1127 = fadd fast float %1124, %432
  %1128 = fadd fast float %1125, %433
  %1129 = fadd fast float %1126, %434
  %1130 = fcmp fast olt float %1115, %408
  %1131 = extractvalue %dx.types.CBufRet.f32 %976, 2
  %1132 = fcmp fast olt float %1131, %1117
  %1133 = and i1 %1130, %1132
  br i1 %1133, label %427, label %1134

; <label>:1134                                    ; preds = %1114
  %1135 = uitofp i32 %443 to float
  br label %1136

; <label>:1136                                    ; preds = %1134, %404
  %1137 = phi float [ 0.000000e+00, %404 ], [ %1116, %1134 ]
  %1138 = phi float [ 1.000000e+00, %404 ], [ %1117, %1134 ]
  %1139 = phi float [ 0.000000e+00, %404 ], [ %1135, %1134 ]
  %1140 = phi float [ 0.000000e+00, %404 ], [ %1118, %1134 ]
  %1141 = phi float [ 0.000000e+00, %404 ], [ %1119, %1134 ]
  %1142 = phi float [ 0.000000e+00, %404 ], [ %1120, %1134 ]
  %1143 = phi float [ 0.000000e+00, %404 ], [ %1121, %1134 ]
  %1144 = phi float [ 0.000000e+00, %404 ], [ %1122, %1134 ]
  %1145 = phi i32 [ 0, %404 ], [ %1123, %1134 ]
  %1146 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %18, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %1147 = extractvalue %dx.types.CBufRet.i32 %1146, 0
  %1148 = icmp eq i32 %1147, 0
  br i1 %1148, label %1190, label %1149, !dx.controlflow.hints !58

; <label>:1149                                    ; preds = %1136
  %1150 = icmp eq i32 %1145, 0
  br i1 %1150, label %1189, label %1151, !dx.controlflow.hints !59

; <label>:1151                                    ; preds = %1149
  %1152 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %18, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %1153 = extractvalue %dx.types.CBufRet.i32 %1152, 2
  %1154 = icmp eq i32 %1153, 0
  br i1 %1154, label %1161, label %1155, !dx.controlflow.hints !60

; <label>:1155                                    ; preds = %1151
  %1156 = fsub fast float 1.000000e+00, %1138
  %1157 = fdiv fast float %1141, %1156
  %1158 = fdiv fast float %1142, %1156
  %1159 = fdiv fast float %1143, %1156
  %1160 = fdiv fast float %1144, %1156
  br label %1166

; <label>:1161                                    ; preds = %1151
  %1162 = fadd fast float %1141, %1138
  %1163 = fadd fast float %1142, %1138
  %1164 = fadd fast float %1143, %1138
  %1165 = fadd fast float %1144, %1138
  br label %1166

; <label>:1166                                    ; preds = %1161, %1155
  %1167 = phi float [ %1157, %1155 ], [ %1162, %1161 ]
  %1168 = phi float [ %1158, %1155 ], [ %1163, %1161 ]
  %1169 = phi float [ %1159, %1155 ], [ %1164, %1161 ]
  %1170 = phi float [ %1160, %1155 ], [ %1165, %1161 ]
  %1171 = call float @dx.op.binary.f32(i32 35, float %1167, float -1.000000e+00)  ; FMax(a,b)
  %1172 = call float @dx.op.binary.f32(i32 35, float %1168, float -1.000000e+00)  ; FMax(a,b)
  %1173 = call float @dx.op.binary.f32(i32 35, float %1169, float -1.000000e+00)  ; FMax(a,b)
  %1174 = call float @dx.op.binary.f32(i32 35, float %1170, float -1.000000e+00)  ; FMax(a,b)
  %1175 = call float @dx.op.binary.f32(i32 36, float %1171, float 1.000000e+00)  ; FMin(a,b)
  %1176 = call float @dx.op.binary.f32(i32 36, float %1172, float 1.000000e+00)  ; FMin(a,b)
  %1177 = call float @dx.op.binary.f32(i32 36, float %1173, float 1.000000e+00)  ; FMin(a,b)
  %1178 = call float @dx.op.binary.f32(i32 36, float %1174, float 1.000000e+00)  ; FMin(a,b)
  %1179 = fmul fast float %1175, 1.500000e+00
  %1180 = call float @dx.op.tertiary.f32(i32 46, float -2.000000e+00, float %1177, float %1179)  ; FMad(a,b,c)
  %1181 = call float @dx.op.tertiary.f32(i32 46, float 4.000000e+00, float %1176, float 0.000000e+00)  ; FMad(a,b,c)
  %1182 = call float @dx.op.tertiary.f32(i32 46, float -4.000000e+00, float %1178, float %1181)  ; FMad(a,b,c)
  %1183 = fmul fast float %1175, 0x3FEBB67AE0000000
  %1184 = call float @dx.op.tertiary.f32(i32 46, float 0xBFD8A23460000000, float %1177, float %1183)  ; FMad(a,b,c)
  %1185 = call float @dx.op.tertiary.f32(i32 46, float 5.000000e-01, float %1176, float 0.000000e+00)  ; FMad(a,b,c)
  %1186 = call float @dx.op.tertiary.f32(i32 46, float 5.000000e-01, float %1178, float %1185)  ; FMad(a,b,c)
  %1187 = fadd fast float %1180, 5.000000e-01
  %1188 = fadd fast float %1184, 5.000000e-01
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %19, i32 %20, i32 0, float %1187, float %1182, float %1188, float %1186, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %1190

; <label>:1189                                    ; preds = %1149
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %19, i32 %20, i32 0, float 0.000000e+00, float 0.000000e+00, float 0x3FEF6560C0000000, float 1.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %1190

; <label>:1190                                    ; preds = %1189, %1166, %1136
  %1191 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 419)  ; CBufferLoadLegacy(handle,regIndex)
  %1192 = extractvalue %dx.types.CBufRet.f32 %1191, 0
  %1193 = extractvalue %dx.types.CBufRet.f32 %1191, 1
  %1194 = extractvalue %dx.types.CBufRet.f32 %1191, 2
  %1195 = call float @dx.op.dot3.f32(i32 55, float %276, float %277, float %278, float %1192, float %1193, float %1194)  ; Dot3(ax,ay,az,bx,by,bz)
  %1196 = fmul fast float %1195, %1137
  %1197 = fcmp fast ogt float %1140, 0.000000e+00
  %1198 = fdiv fast float 1.000000e+00, %1140
  %1199 = fmul fast float %1196, %1198
  %1200 = select i1 %1197, float %1199, float %287
  %1201 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %1202 = extractvalue %dx.types.CBufRet.f32 %1201, 0
  %1203 = extractvalue %dx.types.CBufRet.f32 %1201, 1
  %1204 = extractvalue %dx.types.CBufRet.f32 %1201, 2
  %1205 = fmul fast float %1202, %240
  %1206 = fmul fast float %1203, %240
  %1207 = fmul fast float %1204, %240
  %1208 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %1209 = extractvalue %dx.types.CBufRet.f32 %1208, 0
  %1210 = extractvalue %dx.types.CBufRet.f32 %1208, 1
  %1211 = extractvalue %dx.types.CBufRet.f32 %1208, 2
  %1212 = fmul fast float %1209, %241
  %1213 = fmul fast float %1210, %241
  %1214 = fmul fast float %1211, %241
  %1215 = fadd fast float %1212, %1205
  %1216 = fadd fast float %1213, %1206
  %1217 = fadd fast float %1214, %1207
  %1218 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %1219 = extractvalue %dx.types.CBufRet.f32 %1218, 0
  %1220 = extractvalue %dx.types.CBufRet.f32 %1218, 1
  %1221 = extractvalue %dx.types.CBufRet.f32 %1218, 2
  %1222 = fadd fast float %1215, %1219
  %1223 = fadd fast float %1216, %1220
  %1224 = fadd fast float %1217, %1221
  %1225 = fmul fast float %1222, %1200
  %1226 = fmul fast float %1223, %1200
  %1227 = fmul fast float %1224, %1200
  %1228 = call float @dx.op.dot3.f32(i32 55, float %1225, float %1226, float %1227, float %1225, float %1226, float %1227)  ; Dot3(ax,ay,az,bx,by,bz)
  %1229 = call float @dx.op.unary.f32(i32 25, float %1228)  ; Rsqrt(value)
  %1230 = fmul fast float %1229, %1228
  %1231 = fmul fast float %1229, %1225
  %1232 = fmul fast float %1229, %1226
  %1233 = fmul fast float %1229, %1227
  %1234 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %18, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1235 = extractvalue %dx.types.CBufRet.i32 %1234, 1
  %1236 = and i32 %1235, 1
  %1237 = icmp ne i32 %1236, 0
  %1238 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %1239 = extractvalue %dx.types.CBufRet.f32 %1238, 2
  %1240 = fcmp fast ogt float %1239, 0.000000e+00
  %1241 = and i1 %1237, %1240
  br i1 %1241, label %1242, label %1400, !dx.controlflow.hints !61

; <label>:1242                                    ; preds = %1190
  %1243 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1244 = extractvalue %dx.types.CBufRet.f32 %1243, 2
  %1245 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1246 = extractvalue %dx.types.CBufRet.f32 %1245, 2
  %1247 = fsub fast float %1244, %1246
  %1248 = extractvalue %dx.types.CBufRet.i32 %1234, 0
  %1249 = call i32 @dx.op.binary.i32(i32 40, i32 %1248, i32 3)  ; UMin(a,b)
  %1250 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %1251 = extractvalue %dx.types.CBufRet.f32 %1250, 0
  %1252 = extractvalue %dx.types.CBufRet.f32 %1250, 1
  %1253 = extractvalue %dx.types.CBufRet.f32 %1245, 0
  %1254 = extractvalue %dx.types.CBufRet.f32 %1245, 1
  %1255 = fsub fast float %1251, %1253
  %1256 = fsub fast float %1252, %1254
  %1257 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %1258 = extractvalue %dx.types.CBufRet.f32 %1257, 0
  %1259 = fcmp fast ogt float %1258, 0.000000e+00
  %1260 = fsub fast float -0.000000e+00, %1255
  %1261 = fsub fast float -0.000000e+00, %1256
  %1262 = call float @dx.op.dot2.f32(i32 54, float %1231, float %1232, float %1231, float %1232)  ; Dot2(ax,ay,bx,by)
  %1263 = call float @dx.op.dot2.f32(i32 54, float %1231, float %1232, float %1260, float %1261)  ; Dot2(ax,ay,bx,by)
  %1264 = fmul fast float %1263, 2.000000e+00
  %1265 = call float @dx.op.dot2.f32(i32 54, float %1260, float %1261, float %1260, float %1261)  ; Dot2(ax,ay,bx,by)
  %1266 = fmul fast float %1258, %1258
  %1267 = fsub fast float %1265, %1266
  %1268 = fmul fast float %1264, %1264
  %1269 = fmul fast float %1262, 4.000000e+00
  %1270 = fmul fast float %1269, %1267
  %1271 = fsub fast float %1268, %1270
  %1272 = fcmp fast ogt float %1271, 0.000000e+00
  br i1 %1272, label %1273, label %1288, !dx.controlflow.hints !62

; <label>:1273                                    ; preds = %1242
  %1274 = fcmp fast ogt float %1264, 0.000000e+00
  %1275 = call float @dx.op.unary.f32(i32 24, float %1271)  ; Sqrt(value)
  %1276 = fsub fast float -0.000000e+00, %1275
  %1277 = select i1 %1274, float %1275, float %1276
  %1278 = fadd fast float %1277, %1264
  %1279 = fmul float %1278, -5.000000e-01
  %1280 = fdiv fast float %1279, %1262
  %1281 = call float @dx.op.binary.f32(i32 35, float %1280, float 0.000000e+00)  ; FMax(a,b)
  %1282 = call float @dx.op.binary.f32(i32 36, float %1230, float %1281)  ; FMin(a,b)
  %1283 = fdiv fast float %1267, %1279
  %1284 = call float @dx.op.binary.f32(i32 35, float %1283, float 0.000000e+00)  ; FMax(a,b)
  %1285 = call float @dx.op.binary.f32(i32 36, float %1230, float %1284)  ; FMin(a,b)
  %1286 = call float @dx.op.binary.f32(i32 36, float %1282, float %1285)  ; FMin(a,b)
  %1287 = call float @dx.op.binary.f32(i32 35, float %1282, float %1285)  ; FMax(a,b)
  br label %1288

; <label>:1288                                    ; preds = %1273, %1242
  %1289 = phi float [ %1287, %1273 ], [ -1.000000e+00, %1242 ]
  %1290 = phi float [ %1286, %1273 ], [ -1.000000e+00, %1242 ]
  %1291 = phi i1 [ true, %1273 ], [ false, %1242 ]
  %1292 = and i1 %1259, %1291
  br i1 %1292, label %1293, label %1295, !dx.controlflow.hints !63

; <label>:1293                                    ; preds = %1288
  %1294 = fcmp fast oeq float %1290, %1289
  br i1 %1294, label %1400, label %1296, !dx.controlflow.hints !64

; <label>:1295                                    ; preds = %1288
  br i1 %1259, label %1400, label %1296, !dx.controlflow.hints !65

; <label>:1296                                    ; preds = %1295, %1293
  %1297 = phi float [ %1230, %1295 ], [ %1289, %1293 ]
  %1298 = phi float [ 0.000000e+00, %1295 ], [ %1290, %1293 ]
  %1299 = fcmp fast oeq float %1233, 0.000000e+00
  %1300 = fdiv fast float %1247, %1233
  %1301 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1300)  ; FMax(a,b)
  %1302 = select i1 %1299, float %1297, float %1301
  %1303 = call float @dx.op.binary.f32(i32 36, float %1297, float %1302)  ; FMin(a,b)
  %1304 = fcmp fast ogt float %1233, 0.000000e+00
  %1305 = fcmp fast olt float %1247, 0.000000e+00
  br i1 %1304, label %1306, label %1307, !dx.controlflow.hints !66

; <label>:1306                                    ; preds = %1296
  br i1 %1305, label %1400, label %1310, !dx.controlflow.hints !67

; <label>:1307                                    ; preds = %1296
  br i1 %1305, label %1308, label %1310, !dx.controlflow.hints !68

; <label>:1308                                    ; preds = %1307
  %1309 = call float @dx.op.binary.f32(i32 35, float %1298, float %1303)  ; FMax(a,b)
  br label %1310

; <label>:1310                                    ; preds = %1308, %1307, %1306
  %1311 = phi float [ %1309, %1308 ], [ %1298, %1307 ], [ %1298, %1306 ]
  %1312 = getelementptr inbounds [3 x float], [3 x float]* %22, i32 0, i32 0
  store float -1.000000e+00, float* %1312, align 4, !tbaa !69, !noalias !73
  %1313 = getelementptr inbounds [3 x float], [3 x float]* %22, i32 0, i32 1
  store float -1.000000e+00, float* %1313, align 4, !tbaa !69, !noalias !73
  %1314 = getelementptr inbounds [3 x float], [3 x float]* %22, i32 0, i32 2
  store float -1.000000e+00, float* %1314, align 4, !tbaa !69, !noalias !73
  %1315 = getelementptr inbounds [3 x float], [3 x float]* %23, i32 0, i32 0
  store float -1.000000e+00, float* %1315, align 4, !tbaa !69, !noalias !73
  %1316 = getelementptr inbounds [3 x float], [3 x float]* %23, i32 0, i32 1
  store float -1.000000e+00, float* %1316, align 4, !tbaa !69, !noalias !73
  %1317 = getelementptr inbounds [3 x float], [3 x float]* %23, i32 0, i32 2
  store float -1.000000e+00, float* %1317, align 4, !tbaa !69, !noalias !73
  %1318 = icmp sgt i32 %1249, 0
  br i1 %1318, label %1319, label %1377

; <label>:1319                                    ; preds = %1310
  br label %1320

; <label>:1320                                    ; preds = %1367, %1319
  %1321 = phi i32 [ %1368, %1367 ], [ 0, %1319 ]
  %1322 = add nuw i32 %1321, 171
  %1323 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 %1322)  ; CBufferLoadLegacy(handle,regIndex)
  %1324 = extractvalue %dx.types.CBufRet.f32 %1323, 0
  %1325 = extractvalue %dx.types.CBufRet.f32 %1323, 1
  %1326 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1327 = extractvalue %dx.types.CBufRet.f32 %1326, 0
  %1328 = extractvalue %dx.types.CBufRet.f32 %1326, 1
  %1329 = fsub fast float %1324, %1327
  %1330 = fsub fast float %1325, %1328
  %1331 = extractvalue %dx.types.CBufRet.f32 %1323, 2
  %1332 = fsub fast float -0.000000e+00, %1329
  %1333 = fsub fast float -0.000000e+00, %1330
  %1334 = call float @dx.op.dot2.f32(i32 54, float %1231, float %1232, float %1332, float %1333)  ; Dot2(ax,ay,bx,by)
  %1335 = fmul fast float %1334, 2.000000e+00
  %1336 = call float @dx.op.dot2.f32(i32 54, float %1332, float %1333, float %1332, float %1333)  ; Dot2(ax,ay,bx,by)
  %1337 = fmul fast float %1331, %1331
  %1338 = fsub fast float %1336, %1337
  %1339 = fmul fast float %1335, %1335
  %1340 = fmul fast float %1269, %1338
  %1341 = fsub fast float %1339, %1340
  %1342 = fcmp fast ogt float %1341, 0.000000e+00
  br i1 %1342, label %1343, label %1358, !dx.controlflow.hints !62

; <label>:1343                                    ; preds = %1320
  %1344 = fcmp fast ogt float %1335, 0.000000e+00
  %1345 = call float @dx.op.unary.f32(i32 24, float %1341)  ; Sqrt(value)
  %1346 = fsub fast float -0.000000e+00, %1345
  %1347 = select i1 %1344, float %1345, float %1346
  %1348 = fadd fast float %1347, %1335
  %1349 = fmul float %1348, -5.000000e-01
  %1350 = fdiv fast float %1349, %1262
  %1351 = call float @dx.op.binary.f32(i32 35, float %1350, float 0.000000e+00)  ; FMax(a,b)
  %1352 = call float @dx.op.binary.f32(i32 36, float %1297, float %1351)  ; FMin(a,b)
  %1353 = fdiv fast float %1338, %1349
  %1354 = call float @dx.op.binary.f32(i32 35, float %1353, float 0.000000e+00)  ; FMax(a,b)
  %1355 = call float @dx.op.binary.f32(i32 36, float %1297, float %1354)  ; FMin(a,b)
  %1356 = call float @dx.op.binary.f32(i32 36, float %1352, float %1355)  ; FMin(a,b)
  %1357 = call float @dx.op.binary.f32(i32 35, float %1352, float %1355)  ; FMax(a,b)
  br label %1358

; <label>:1358                                    ; preds = %1343, %1320
  %1359 = phi float [ %1357, %1343 ], [ -1.000000e+00, %1320 ]
  %1360 = phi float [ %1356, %1343 ], [ -1.000000e+00, %1320 ]
  %1361 = phi i1 [ true, %1343 ], [ false, %1320 ]
  br i1 %1361, label %1362, label %1367, !dx.controlflow.hints !84

; <label>:1362                                    ; preds = %1358
  %1363 = call float @dx.op.binary.f32(i32 35, float %1311, float %1360)  ; FMax(a,b)
  %1364 = getelementptr inbounds [3 x float], [3 x float]* %22, i32 0, i32 %1321
  store float %1363, float* %1364, align 4, !tbaa !69, !noalias !73
  %1365 = call float @dx.op.binary.f32(i32 35, float %1311, float %1359)  ; FMax(a,b)
  %1366 = getelementptr inbounds [3 x float], [3 x float]* %23, i32 0, i32 %1321
  store float %1365, float* %1366, align 4, !tbaa !69, !noalias !73
  br label %1367

; <label>:1367                                    ; preds = %1362, %1358
  %1368 = add nuw nsw i32 %1321, 1
  %1369 = icmp eq i32 %1368, %1249
  br i1 %1369, label %1370, label %1320

; <label>:1370                                    ; preds = %1367
  %1371 = load float, float* %1314, align 4, !tbaa !69, !alias.scope !85, !noalias !88
  %1372 = load float, float* %1313, align 4, !tbaa !69, !alias.scope !91, !noalias !92
  %1373 = load float, float* %1312, align 4, !tbaa !69, !alias.scope !93, !noalias !94
  %1374 = load float, float* %1317, align 4, !tbaa !69, !alias.scope !95, !noalias !98
  %1375 = load float, float* %1316, align 4, !tbaa !69, !alias.scope !101, !noalias !102
  %1376 = load float, float* %1315, align 4, !tbaa !69, !alias.scope !103, !noalias !104
  br label %1377

; <label>:1377                                    ; preds = %1370, %1310
  %1378 = phi float [ -1.000000e+00, %1310 ], [ %1376, %1370 ]
  %1379 = phi float [ -1.000000e+00, %1310 ], [ %1375, %1370 ]
  %1380 = phi float [ -1.000000e+00, %1310 ], [ %1374, %1370 ]
  %1381 = phi float [ -1.000000e+00, %1310 ], [ %1373, %1370 ]
  %1382 = phi float [ -1.000000e+00, %1310 ], [ %1372, %1370 ]
  %1383 = phi float [ -1.000000e+00, %1310 ], [ %1371, %1370 ]
  %1384 = call float @dx.op.binary.f32(i32 36, float %1382, float %1383)  ; FMin(a,b)
  %1385 = call float @dx.op.binary.f32(i32 36, float %1381, float %1384)  ; FMin(a,b)
  %1386 = call float @dx.op.binary.f32(i32 35, float %1381, float %1382)  ; FMax(a,b)
  %1387 = call float @dx.op.binary.f32(i32 36, float %1386, float %1383)  ; FMin(a,b)
  %1388 = call float @dx.op.binary.f32(i32 36, float %1381, float %1382)  ; FMin(a,b)
  %1389 = call float @dx.op.binary.f32(i32 35, float %1388, float %1387)  ; FMax(a,b)
  %1390 = call float @dx.op.binary.f32(i32 35, float %1382, float %1383)  ; FMax(a,b)
  %1391 = call float @dx.op.binary.f32(i32 35, float %1381, float %1390)  ; FMax(a,b)
  store float %1385, float* %1312, align 4, !tbaa !69, !alias.scope !93, !noalias !94
  store float %1389, float* %1313, align 4, !tbaa !69, !alias.scope !91, !noalias !92
  store float %1391, float* %1314, align 4, !tbaa !69, !alias.scope !85, !noalias !88
  %1392 = call float @dx.op.binary.f32(i32 36, float %1379, float %1380)  ; FMin(a,b)
  %1393 = call float @dx.op.binary.f32(i32 36, float %1378, float %1392)  ; FMin(a,b)
  %1394 = call float @dx.op.binary.f32(i32 35, float %1378, float %1379)  ; FMax(a,b)
  %1395 = call float @dx.op.binary.f32(i32 36, float %1394, float %1380)  ; FMin(a,b)
  %1396 = call float @dx.op.binary.f32(i32 36, float %1378, float %1379)  ; FMin(a,b)
  %1397 = call float @dx.op.binary.f32(i32 35, float %1396, float %1395)  ; FMax(a,b)
  %1398 = call float @dx.op.binary.f32(i32 35, float %1379, float %1380)  ; FMax(a,b)
  %1399 = call float @dx.op.binary.f32(i32 35, float %1378, float %1398)  ; FMax(a,b)
  store float %1393, float* %1315, align 4, !tbaa !69, !alias.scope !103, !noalias !104
  store float %1397, float* %1316, align 4, !tbaa !69, !alias.scope !101, !noalias !102
  store float %1399, float* %1317, align 4, !tbaa !69, !alias.scope !95, !noalias !98
  br label %1400

; <label>:1400                                    ; preds = %1377, %1306, %1295, %1293, %1190
  %1401 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 423)  ; CBufferLoadLegacy(handle,regIndex)
  %1402 = extractvalue %dx.types.CBufRet.f32 %1401, 2
  %1403 = fmul fast float %1402, %1200
  %1404 = call float @dx.op.unary.f32(i32 7, float %1403)  ; Saturate(value)
  %1405 = fptoui float %1139 to i32
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1406 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %21
  store i32 %1405, i32 addrspace(3)* %1406, align 4, !tbaa !105
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1407 = and i32 %21, 63
  %1408 = icmp ult i32 %1407, 32
  br i1 %1408, label %1409, label %1415, !dx.controlflow.hints !107

; <label>:1409                                    ; preds = %1400
  %1410 = add i32 %21, 32
  %1411 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1410
  %1412 = load i32, i32 addrspace(3)* %1411, align 4, !tbaa !105
  %1413 = load i32, i32 addrspace(3)* %1406, align 4, !tbaa !105
  %1414 = call i32 @dx.op.binary.i32(i32 40, i32 %1413, i32 %1412)  ; UMin(a,b)
  store i32 %1414, i32 addrspace(3)* %1406, align 4, !tbaa !105
  br label %1415

; <label>:1415                                    ; preds = %1409, %1400
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %1416 = icmp ult i32 %1407, 16
  br i1 %1416, label %1417, label %1423, !dx.controlflow.hints !108

; <label>:1417                                    ; preds = %1415
  %1418 = add i32 %21, 16
  %1419 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1418
  %1420 = load i32, i32 addrspace(3)* %1419, align 4, !tbaa !105
  %1421 = load i32, i32 addrspace(3)* %1406, align 4, !tbaa !105
  %1422 = call i32 @dx.op.binary.i32(i32 40, i32 %1421, i32 %1420)  ; UMin(a,b)
  store i32 %1422, i32 addrspace(3)* %1406, align 4, !tbaa !105
  br label %1423

; <label>:1423                                    ; preds = %1417, %1415
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %1424 = icmp ult i32 %1407, 8
  br i1 %1424, label %1425, label %1431, !dx.controlflow.hints !109

; <label>:1425                                    ; preds = %1423
  %1426 = add i32 %21, 8
  %1427 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1426
  %1428 = load i32, i32 addrspace(3)* %1427, align 4, !tbaa !105
  %1429 = load i32, i32 addrspace(3)* %1406, align 4, !tbaa !105
  %1430 = call i32 @dx.op.binary.i32(i32 40, i32 %1429, i32 %1428)  ; UMin(a,b)
  store i32 %1430, i32 addrspace(3)* %1406, align 4, !tbaa !105
  br label %1431

; <label>:1431                                    ; preds = %1425, %1423
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %1432 = icmp ult i32 %1407, 4
  br i1 %1432, label %1433, label %1439, !dx.controlflow.hints !110

; <label>:1433                                    ; preds = %1431
  %1434 = add i32 %21, 4
  %1435 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1434
  %1436 = load i32, i32 addrspace(3)* %1435, align 4, !tbaa !105
  %1437 = load i32, i32 addrspace(3)* %1406, align 4, !tbaa !105
  %1438 = call i32 @dx.op.binary.i32(i32 40, i32 %1437, i32 %1436)  ; UMin(a,b)
  store i32 %1438, i32 addrspace(3)* %1406, align 4, !tbaa !105
  br label %1439

; <label>:1439                                    ; preds = %1433, %1431
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %1440 = icmp ult i32 %1407, 2
  br i1 %1440, label %1441, label %1447, !dx.controlflow.hints !111

; <label>:1441                                    ; preds = %1439
  %1442 = add i32 %21, 2
  %1443 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1442
  %1444 = load i32, i32 addrspace(3)* %1443, align 4, !tbaa !105
  %1445 = load i32, i32 addrspace(3)* %1406, align 4, !tbaa !105
  %1446 = call i32 @dx.op.binary.i32(i32 40, i32 %1445, i32 %1444)  ; UMin(a,b)
  store i32 %1446, i32 addrspace(3)* %1406, align 4, !tbaa !105
  br label %1447

; <label>:1447                                    ; preds = %1441, %1439
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %1448 = icmp eq i32 %1407, 0
  br i1 %1448, label %1449, label %1455, !dx.controlflow.hints !112

; <label>:1449                                    ; preds = %1447
  %1450 = add i32 %21, 1
  %1451 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1450
  %1452 = load i32, i32 addrspace(3)* %1451, align 4, !tbaa !105
  %1453 = load i32, i32 addrspace(3)* %1406, align 4, !tbaa !105
  %1454 = call i32 @dx.op.binary.i32(i32 40, i32 %1453, i32 %1452)  ; UMin(a,b)
  store i32 %1454, i32 addrspace(3)* %1406, align 4, !tbaa !105
  br label %1455

; <label>:1455                                    ; preds = %1449, %1447
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1456 = and i32 %21, -64
  %1457 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1456
  %1458 = load i32, i32 addrspace(3)* %1457, align 4, !tbaa !105
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  store i32 %1405, i32 addrspace(3)* %1406, align 4, !tbaa !105
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  br i1 %1408, label %1459, label %1465, !dx.controlflow.hints !113

; <label>:1459                                    ; preds = %1455
  %1460 = add i32 %21, 32
  %1461 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1460
  %1462 = load i32, i32 addrspace(3)* %1461, align 4, !tbaa !105
  %1463 = load i32, i32 addrspace(3)* %1406, align 4, !tbaa !105
  %1464 = call i32 @dx.op.binary.i32(i32 39, i32 %1463, i32 %1462)  ; UMax(a,b)
  store i32 %1464, i32 addrspace(3)* %1406, align 4, !tbaa !105
  br label %1465

; <label>:1465                                    ; preds = %1459, %1455
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %1416, label %1466, label %1472, !dx.controlflow.hints !114

; <label>:1466                                    ; preds = %1465
  %1467 = add i32 %21, 16
  %1468 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1467
  %1469 = load i32, i32 addrspace(3)* %1468, align 4, !tbaa !105
  %1470 = load i32, i32 addrspace(3)* %1406, align 4, !tbaa !105
  %1471 = call i32 @dx.op.binary.i32(i32 39, i32 %1470, i32 %1469)  ; UMax(a,b)
  store i32 %1471, i32 addrspace(3)* %1406, align 4, !tbaa !105
  br label %1472

; <label>:1472                                    ; preds = %1466, %1465
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %1424, label %1473, label %1479, !dx.controlflow.hints !115

; <label>:1473                                    ; preds = %1472
  %1474 = add i32 %21, 8
  %1475 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1474
  %1476 = load i32, i32 addrspace(3)* %1475, align 4, !tbaa !105
  %1477 = load i32, i32 addrspace(3)* %1406, align 4, !tbaa !105
  %1478 = call i32 @dx.op.binary.i32(i32 39, i32 %1477, i32 %1476)  ; UMax(a,b)
  store i32 %1478, i32 addrspace(3)* %1406, align 4, !tbaa !105
  br label %1479

; <label>:1479                                    ; preds = %1473, %1472
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %1432, label %1480, label %1486, !dx.controlflow.hints !116

; <label>:1480                                    ; preds = %1479
  %1481 = add i32 %21, 4
  %1482 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1481
  %1483 = load i32, i32 addrspace(3)* %1482, align 4, !tbaa !105
  %1484 = load i32, i32 addrspace(3)* %1406, align 4, !tbaa !105
  %1485 = call i32 @dx.op.binary.i32(i32 39, i32 %1484, i32 %1483)  ; UMax(a,b)
  store i32 %1485, i32 addrspace(3)* %1406, align 4, !tbaa !105
  br label %1486

; <label>:1486                                    ; preds = %1480, %1479
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %1440, label %1487, label %1493, !dx.controlflow.hints !117

; <label>:1487                                    ; preds = %1486
  %1488 = add i32 %21, 2
  %1489 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1488
  %1490 = load i32, i32 addrspace(3)* %1489, align 4, !tbaa !105
  %1491 = load i32, i32 addrspace(3)* %1406, align 4, !tbaa !105
  %1492 = call i32 @dx.op.binary.i32(i32 39, i32 %1491, i32 %1490)  ; UMax(a,b)
  store i32 %1492, i32 addrspace(3)* %1406, align 4, !tbaa !105
  br label %1493

; <label>:1493                                    ; preds = %1487, %1486
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %1448, label %1494, label %1500, !dx.controlflow.hints !118

; <label>:1494                                    ; preds = %1493
  %1495 = add i32 %21, 1
  %1496 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1495
  %1497 = load i32, i32 addrspace(3)* %1496, align 4, !tbaa !105
  %1498 = load i32, i32 addrspace(3)* %1406, align 4, !tbaa !105
  %1499 = call i32 @dx.op.binary.i32(i32 39, i32 %1498, i32 %1497)  ; UMax(a,b)
  store i32 %1499, i32 addrspace(3)* %1406, align 4, !tbaa !105
  br label %1500

; <label>:1500                                    ; preds = %1494, %1493
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1501 = load i32, i32 addrspace(3)* %1457, align 4, !tbaa !105
  %1502 = uitofp i32 %1501 to float
  %1503 = uitofp i32 %1458 to float
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %3, i32 %19, i32 %20, i32 undef, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %1504 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1505 = extractvalue %dx.types.CBufRet.f32 %1504, 0
  %1506 = fmul fast float %1505, %1139
  %1507 = fmul fast float %1505, %1502
  %1508 = fmul fast float %1505, %1503
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %4, i32 %19, i32 %20, i32 undef, float %1506, float %1507, float %1508, float %1506, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %19, i32 %20, i32 undef, float %1404, float %1404, float %1404, float %1404, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
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
!29 = !{void ()* @cs_fog_raymarching_air_clouds_brfog, !"cs_fog_raymarching_air_clouds_brfog", null, !4, !30}
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
!46 = distinct !{!46, !"dx.controlflow.hints", i32 2}
!47 = distinct !{!47, !"dx.controlflow.hints", i32 1}
!48 = distinct !{!48, !"dx.controlflow.hints", i32 2}
!49 = distinct !{!49, !"dx.controlflow.hints", i32 2}
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
!61 = distinct !{!61, !"dx.controlflow.hints", i32 1}
!62 = distinct !{!62, !"dx.controlflow.hints", i32 2}
!63 = distinct !{!63, !"dx.controlflow.hints", i32 2}
!64 = distinct !{!64, !"dx.controlflow.hints", i32 2}
!65 = distinct !{!65, !"dx.controlflow.hints", i32 2}
!66 = distinct !{!66, !"dx.controlflow.hints", i32 2}
!67 = distinct !{!67, !"dx.controlflow.hints", i32 2}
!68 = distinct !{!68, !"dx.controlflow.hints", i32 2}
!69 = !{!70, !70, i64 0}
!70 = !{!"float", !71, i64 0}
!71 = !{!"omnipotent char", !72, i64 0}
!72 = !{!"Simple C/C++ TBAA"}
!73 = !{!74, !76, !78, !79, !81, !82, !83}
!74 = distinct !{!74, !75, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z: %cFogParams"}
!75 = distinct !{!75, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z"}
!76 = distinct !{!76, !77, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %scattering"}
!77 = distinct !{!77, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z"}
!78 = distinct !{!78, !77, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %extinction"}
!79 = distinct !{!79, !80, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z: %scattering"}
!80 = distinct !{!80, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z"}
!81 = distinct !{!81, !80, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z: %transmission"}
!82 = distinct !{!82, !80, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z: %depthDensityWeighted"}
!83 = distinct !{!83, !80, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z: %rawShadowmapData"}
!84 = distinct !{!84, !"dx.controlflow.hints", i32 2}
!85 = !{!86}
!86 = distinct !{!86, !87, !"\01?sort@@YAXAIAM00@Z: %c"}
!87 = distinct !{!87, !"\01?sort@@YAXAIAM00@Z"}
!88 = !{!89, !90, !74, !76, !78, !79, !81, !82, !83}
!89 = distinct !{!89, !87, !"\01?sort@@YAXAIAM00@Z: %a"}
!90 = distinct !{!90, !87, !"\01?sort@@YAXAIAM00@Z: %b"}
!91 = !{!90}
!92 = !{!89, !86, !74, !76, !78, !79, !81, !82, !83}
!93 = !{!89}
!94 = !{!90, !86, !74, !76, !78, !79, !81, !82, !83}
!95 = !{!96}
!96 = distinct !{!96, !97, !"\01?sort@@YAXAIAM00@Z: %c"}
!97 = distinct !{!97, !"\01?sort@@YAXAIAM00@Z"}
!98 = !{!99, !100, !74, !76, !78, !79, !81, !82, !83}
!99 = distinct !{!99, !97, !"\01?sort@@YAXAIAM00@Z: %a"}
!100 = distinct !{!100, !97, !"\01?sort@@YAXAIAM00@Z: %b"}
!101 = !{!100}
!102 = !{!99, !96, !74, !76, !78, !79, !81, !82, !83}
!103 = !{!99}
!104 = !{!100, !96, !74, !76, !78, !79, !81, !82, !83}
!105 = !{!106, !106, i64 0}
!106 = !{!"int", !71, i64 0}
!107 = distinct !{!107, !"dx.controlflow.hints", i32 2}
!108 = distinct !{!108, !"dx.controlflow.hints", i32 2}
!109 = distinct !{!109, !"dx.controlflow.hints", i32 2}
!110 = distinct !{!110, !"dx.controlflow.hints", i32 2}
!111 = distinct !{!111, !"dx.controlflow.hints", i32 2}
!112 = distinct !{!112, !"dx.controlflow.hints", i32 2}
!113 = distinct !{!113, !"dx.controlflow.hints", i32 2}
!114 = distinct !{!114, !"dx.controlflow.hints", i32 2}
!115 = distinct !{!115, !"dx.controlflow.hints", i32 2}
!116 = distinct !{!116, !"dx.controlflow.hints", i32 2}
!117 = distinct !{!117, !"dx.controlflow.hints", i32 2}
!118 = distinct !{!118, !"dx.controlflow.hints", i32 2}

