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
; shader hash: c5d9bd152b5b2acdd440a9c791004ec6
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

define void @cs_fog_raymarching_clouds_heightmap() {
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
  %369 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %18, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %370 = extractvalue %dx.types.CBufRet.i32 %369, 3
  %371 = icmp eq i32 %370, 0
  %372 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 31)  ; CBufferLoadLegacy(handle,regIndex)
  %373 = extractvalue %dx.types.CBufRet.f32 %372, 2
  %374 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 32)  ; CBufferLoadLegacy(handle,regIndex)
  %375 = extractvalue %dx.types.CBufRet.f32 %374, 2
  %376 = fsub fast float %373, %236
  %377 = fadd fast float %376, %375
  br i1 %371, label %389, label %378, !dx.controlflow.hints !36

; <label>:378                                     ; preds = %365
  %379 = fsub fast float -0.000000e+00, %234
  %380 = fsub fast float -0.000000e+00, %235
  %381 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %379, float %380, float %377)  ; Dot3(ax,ay,az,bx,by,bz)
  %382 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %277, float %278, float %279)  ; Dot3(ax,ay,az,bx,by,bz)
  %383 = fdiv fast float 1.000000e+00, %382
  %384 = fmul fast float %383, %381
  %385 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %379, float %380, float %376)  ; Dot3(ax,ay,az,bx,by,bz)
  %386 = fmul fast float %383, %385
  %387 = call float @dx.op.binary.f32(i32 36, float %384, float %386)  ; FMin(a,b)
  %388 = call float @dx.op.binary.f32(i32 35, float %384, float %386)  ; FMax(a,b)
  br label %422

; <label>:389                                     ; preds = %365
  %390 = fdiv fast float 1.000000e+00, %277
  %391 = fdiv fast float 1.000000e+00, %278
  %392 = fdiv fast float 1.000000e+00, %279
  %393 = extractvalue %dx.types.CBufRet.f32 %372, 0
  %394 = extractvalue %dx.types.CBufRet.f32 %372, 1
  %395 = extractvalue %dx.types.CBufRet.f32 %374, 0
  %396 = extractvalue %dx.types.CBufRet.f32 %374, 1
  %397 = fsub fast float %393, %234
  %398 = fmul fast float %397, %390
  %399 = fadd fast float %397, %395
  %400 = fmul fast float %399, %390
  %401 = call float @dx.op.binary.f32(i32 36, float %398, float %400)  ; FMin(a,b)
  %402 = call float @dx.op.binary.f32(i32 35, float %398, float %400)  ; FMax(a,b)
  %403 = fsub fast float %394, %235
  %404 = fmul fast float %403, %391
  %405 = fadd fast float %403, %396
  %406 = fmul fast float %405, %391
  %407 = call float @dx.op.binary.f32(i32 36, float %404, float %406)  ; FMin(a,b)
  %408 = call float @dx.op.binary.f32(i32 35, float %401, float %407)  ; FMax(a,b)
  %409 = call float @dx.op.binary.f32(i32 35, float %404, float %406)  ; FMax(a,b)
  %410 = call float @dx.op.binary.f32(i32 36, float %402, float %409)  ; FMin(a,b)
  %411 = fmul fast float %376, %392
  %412 = fmul fast float %377, %392
  %413 = call float @dx.op.binary.f32(i32 36, float %411, float %412)  ; FMin(a,b)
  %414 = call float @dx.op.binary.f32(i32 35, float %408, float %413)  ; FMax(a,b)
  %415 = call float @dx.op.binary.f32(i32 35, float %411, float %412)  ; FMax(a,b)
  %416 = call float @dx.op.binary.f32(i32 36, float %410, float %415)  ; FMin(a,b)
  %417 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %414)  ; FMax(a,b)
  %418 = fcmp fast ult float %416, %417
  br i1 %418, label %422, label %419, !dx.controlflow.hints !37

; <label>:419                                     ; preds = %389
  %420 = call float @dx.op.binary.f32(i32 36, float %414, float %416)  ; FMin(a,b)
  %421 = call float @dx.op.binary.f32(i32 35, float %414, float %416)  ; FMax(a,b)
  br label %422

; <label>:422                                     ; preds = %419, %389, %378
  %423 = phi float [ %387, %378 ], [ %420, %419 ], [ 0.000000e+00, %389 ]
  %424 = phi float [ %388, %378 ], [ %421, %419 ], [ 0.000000e+00, %389 ]
  %425 = fcmp fast oeq float %424, 0.000000e+00
  br i1 %425, label %429, label %426, !dx.controlflow.hints !38

; <label>:426                                     ; preds = %422
  %427 = call float @dx.op.binary.f32(i32 36, float %368, float %423)  ; FMin(a,b)
  %428 = call float @dx.op.binary.f32(i32 35, float %367, float %424)  ; FMax(a,b)
  br label %429

; <label>:429                                     ; preds = %426, %422
  %430 = phi i32 [ 1, %426 ], [ 0, %422 ]
  %431 = phi float [ %428, %426 ], [ %367, %422 ]
  %432 = phi float [ %427, %426 ], [ %368, %422 ]
  %433 = call float @dx.op.binary.f32(i32 36, float %298, float %431)  ; FMin(a,b)
  %434 = call float @dx.op.binary.f32(i32 35, float %275, float %432)  ; FMax(a,b)
  %435 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %436 = extractvalue %dx.types.CBufRet.f32 %435, 0
  %437 = fmul fast float %223, 2.000000e+00
  %438 = fadd fast float %437, -1.000000e+00
  %439 = fmul fast float %436, %438
  %440 = fadd fast float %439, %434
  %441 = fcmp fast olt float %440, %433
  %442 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %443 = extractvalue %dx.types.CBufRet.f32 %442, 2
  %444 = fcmp fast olt float %443, 1.000000e+00
  %445 = and i1 %441, %444
  br i1 %445, label %446, label %1081

; <label>:446                                     ; preds = %429
  %447 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %17, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %448 = extractvalue %dx.types.CBufRet.i32 %447, 1
  %449 = add i32 %448, -1
  %450 = fmul fast float %440, %279
  %451 = fadd fast float %450, %236
  %452 = fmul fast float %440, %278
  %453 = fadd fast float %452, %235
  %454 = fmul fast float %440, %277
  %455 = fadd fast float %454, %234
  br label %456

; <label>:456                                     ; preds = %1059, %446
  %457 = phi float [ %1061, %1059 ], [ 0.000000e+00, %446 ]
  %458 = phi float [ %1062, %1059 ], [ 1.000000e+00, %446 ]
  %459 = phi float [ %1072, %1059 ], [ %455, %446 ]
  %460 = phi float [ %1073, %1059 ], [ %453, %446 ]
  %461 = phi float [ %1074, %1059 ], [ %451, %446 ]
  %462 = phi float [ %1060, %1059 ], [ %440, %446 ]
  %463 = phi i32 [ %473, %1059 ], [ 0, %446 ]
  %464 = phi i32 [ %650, %1059 ], [ %449, %446 ]
  %465 = phi float [ %1063, %1059 ], [ 0.000000e+00, %446 ]
  %466 = phi float [ %1064, %1059 ], [ 0.000000e+00, %446 ]
  %467 = phi float [ %1065, %1059 ], [ 0.000000e+00, %446 ]
  %468 = phi float [ %1066, %1059 ], [ 0.000000e+00, %446 ]
  %469 = phi float [ %1067, %1059 ], [ 0.000000e+00, %446 ]
  %470 = phi i32 [ %1068, %1059 ], [ 0, %446 ]
  %471 = fsub fast float -0.000000e+00, %460
  %472 = fsub fast float -0.000000e+00, %459
  %473 = add i32 %463, 1
  %474 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %475 = extractvalue %dx.types.CBufRet.f32 %474, 0
  %476 = icmp eq i32 %366, 0
  br i1 %476, label %647, label %477, !dx.controlflow.hints !39

; <label>:477                                     ; preds = %456
  %478 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %17, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %479 = extractvalue %dx.types.CBufRet.i32 %478, 1
  %480 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 427)  ; CBufferLoadLegacy(handle,regIndex)
  %481 = extractvalue %dx.types.CBufRet.f32 %480, 1
  %482 = fcmp fast ogt float %481, %462
  br i1 %482, label %483, label %485, !dx.controlflow.hints !40

; <label>:483                                     ; preds = %477
  %484 = fsub fast float %481, %462
  br label %637

; <label>:485                                     ; preds = %477
  %486 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %18, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %487 = extractvalue %dx.types.CBufRet.i32 %486, 3
  %488 = icmp eq i32 %487, 0
  %489 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 401)  ; CBufferLoadLegacy(handle,regIndex)
  %490 = extractvalue %dx.types.CBufRet.f32 %489, 2
  %491 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %492 = extractvalue %dx.types.CBufRet.f32 %491, 2
  %493 = fsub fast float %490, %461
  %494 = fadd fast float %493, %492
  %495 = fsub fast float 0xC7EFFFFFE0000000, %461
  br i1 %488, label %505, label %496, !dx.controlflow.hints !33

; <label>:496                                     ; preds = %485
  %497 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %472, float %471, float %494)  ; Dot3(ax,ay,az,bx,by,bz)
  %498 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %277, float %278, float %279)  ; Dot3(ax,ay,az,bx,by,bz)
  %499 = fdiv fast float 1.000000e+00, %498
  %500 = fmul fast float %499, %497
  %501 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %472, float %471, float %495)  ; Dot3(ax,ay,az,bx,by,bz)
  %502 = fmul fast float %499, %501
  %503 = call float @dx.op.binary.f32(i32 36, float %500, float %502)  ; FMin(a,b)
  %504 = call float @dx.op.binary.f32(i32 35, float %500, float %502)  ; FMax(a,b)
  br label %538

; <label>:505                                     ; preds = %485
  %506 = extractvalue %dx.types.CBufRet.f32 %489, 0
  %507 = extractvalue %dx.types.CBufRet.f32 %489, 1
  %508 = extractvalue %dx.types.CBufRet.f32 %491, 0
  %509 = extractvalue %dx.types.CBufRet.f32 %491, 1
  %510 = fdiv fast float 1.000000e+00, %277
  %511 = fdiv fast float 1.000000e+00, %278
  %512 = fdiv fast float 1.000000e+00, %279
  %513 = fsub fast float %506, %459
  %514 = fmul fast float %510, %513
  %515 = fadd fast float %513, %508
  %516 = fmul fast float %515, %510
  %517 = call float @dx.op.binary.f32(i32 36, float %514, float %516)  ; FMin(a,b)
  %518 = call float @dx.op.binary.f32(i32 35, float %514, float %516)  ; FMax(a,b)
  %519 = fsub fast float %507, %460
  %520 = fmul fast float %511, %519
  %521 = fadd fast float %519, %509
  %522 = fmul fast float %521, %511
  %523 = call float @dx.op.binary.f32(i32 36, float %520, float %522)  ; FMin(a,b)
  %524 = call float @dx.op.binary.f32(i32 35, float %517, float %523)  ; FMax(a,b)
  %525 = call float @dx.op.binary.f32(i32 35, float %520, float %522)  ; FMax(a,b)
  %526 = call float @dx.op.binary.f32(i32 36, float %518, float %525)  ; FMin(a,b)
  %527 = fmul fast float %512, %495
  %528 = fmul fast float %512, %494
  %529 = call float @dx.op.binary.f32(i32 36, float %527, float %528)  ; FMin(a,b)
  %530 = call float @dx.op.binary.f32(i32 35, float %524, float %529)  ; FMax(a,b)
  %531 = call float @dx.op.binary.f32(i32 35, float %527, float %528)  ; FMax(a,b)
  %532 = call float @dx.op.binary.f32(i32 36, float %526, float %531)  ; FMin(a,b)
  %533 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %530)  ; FMax(a,b)
  %534 = fcmp fast ult float %532, %533
  br i1 %534, label %538, label %535, !dx.controlflow.hints !34

; <label>:535                                     ; preds = %505
  %536 = call float @dx.op.binary.f32(i32 36, float %530, float %532)  ; FMin(a,b)
  %537 = call float @dx.op.binary.f32(i32 35, float %530, float %532)  ; FMax(a,b)
  br label %538

; <label>:538                                     ; preds = %535, %505, %496
  %539 = phi float [ %503, %496 ], [ %536, %535 ], [ 0.000000e+00, %505 ]
  %540 = phi float [ %504, %496 ], [ %537, %535 ], [ 0.000000e+00, %505 ]
  %541 = fcmp fast ogt float %539, 0.000000e+00
  br i1 %541, label %637, label %542, !dx.controlflow.hints !41

; <label>:542                                     ; preds = %538
  %543 = fcmp fast ugt float %540, 0.000000e+00
  br i1 %543, label %544, label %637, !dx.controlflow.hints !42

; <label>:544                                     ; preds = %542
  %545 = icmp sgt i32 %464, 0
  br i1 %545, label %546, label %631

; <label>:546                                     ; preds = %544
  br label %547

; <label>:547                                     ; preds = %627, %546
  %548 = phi i32 [ %628, %627 ], [ %464, %546 ]
  %549 = sitofp i32 %548 to float
  %550 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 401)  ; CBufferLoadLegacy(handle,regIndex)
  %551 = extractvalue %dx.types.CBufRet.f32 %550, 0
  %552 = extractvalue %dx.types.CBufRet.f32 %550, 1
  %553 = fsub fast float %459, %551
  %554 = fsub fast float %460, %552
  %555 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 403)  ; CBufferLoadLegacy(handle,regIndex)
  %556 = extractvalue %dx.types.CBufRet.f32 %555, 0
  %557 = extractvalue %dx.types.CBufRet.f32 %555, 1
  %558 = fmul fast float %553, %556
  %559 = fmul fast float %554, %557
  %560 = fsub fast float 1.000000e+00, %559
  %561 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %18, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %562 = extractvalue %dx.types.CBufRet.i32 %561, 3
  %563 = icmp eq i32 %562, 0
  br i1 %563, label %570, label %564, !dx.controlflow.hints !43

; <label>:564                                     ; preds = %547
  %565 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %15, float %558, float %560, float undef, float undef, i32 0, i32 0, i32 undef, float %549)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %566 = extractvalue %dx.types.ResRet.f32 %565, 0
  %567 = extractvalue %dx.types.ResRet.f32 %565, 1
  %568 = extractvalue %dx.types.ResRet.f32 %565, 2
  %569 = extractvalue %dx.types.ResRet.f32 %565, 3
  br label %576

; <label>:570                                     ; preds = %547
  %571 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %16, float %558, float %560, float undef, float undef, i32 0, i32 0, i32 undef, float %549)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %572 = extractvalue %dx.types.ResRet.f32 %571, 0
  %573 = extractvalue %dx.types.ResRet.f32 %571, 1
  %574 = extractvalue %dx.types.ResRet.f32 %571, 2
  %575 = extractvalue %dx.types.ResRet.f32 %571, 3
  br label %576

; <label>:576                                     ; preds = %570, %564
  %577 = phi float [ %566, %564 ], [ %572, %570 ]
  %578 = phi float [ %567, %564 ], [ %573, %570 ]
  %579 = phi float [ %568, %564 ], [ %574, %570 ]
  %580 = phi float [ %569, %564 ], [ %575, %570 ]
  %581 = extractvalue %dx.types.CBufRet.f32 %555, 3
  %582 = fmul fast float %581, %577
  %583 = extractvalue %dx.types.CBufRet.f32 %550, 2
  %584 = fadd fast float %582, %583
  %585 = fmul fast float %581, %578
  %586 = fadd fast float %585, %583
  %587 = fmul fast float %581, %579
  %588 = fadd fast float %587, %583
  %589 = and i32 %548, 31
  %590 = shl i32 1, %589
  %591 = uitofp i32 %590 to float
  %592 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 402)  ; CBufferLoadLegacy(handle,regIndex)
  %593 = extractvalue %dx.types.CBufRet.f32 %592, 3
  %594 = fdiv fast float 1.000000e+00, %593
  %595 = fmul fast float %594, %591
  %596 = fmul fast float %595, %279
  %597 = fadd fast float %596, %461
  %598 = fcmp fast oeq float %580, 0.000000e+00
  %599 = fcmp fast ogt float %461, %586
  %600 = fcmp fast ogt float %597, %586
  %601 = and i1 %599, %600
  %602 = or i1 %598, %601
  br i1 %602, label %603, label %607, !dx.controlflow.hints !44

; <label>:603                                     ; preds = %576
  %604 = add nsw i32 %548, 1
  %605 = add nsw i32 %479, -1
  %606 = call i32 @dx.op.binary.i32(i32 38, i32 %604, i32 %605)  ; IMin(a,b)
  br label %637

; <label>:607                                     ; preds = %576
  %608 = fcmp fast olt float %461, %588
  %609 = fcmp fast olt float %597, %588
  %610 = and i1 %608, %609
  br i1 %610, label %611, label %615, !dx.controlflow.hints !45

; <label>:611                                     ; preds = %607
  %612 = add nsw i32 %548, 1
  %613 = add nsw i32 %479, -1
  %614 = call i32 @dx.op.binary.i32(i32 38, i32 %612, i32 %613)  ; IMin(a,b)
  br label %637

; <label>:615                                     ; preds = %607
  %616 = fcmp fast olt float %461, %584
  %617 = fcmp fast olt float %597, %584
  %618 = and i1 %616, %617
  br i1 %618, label %619, label %627, !dx.controlflow.hints !46

; <label>:619                                     ; preds = %615
  %620 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 406)  ; CBufferLoadLegacy(handle,regIndex)
  %621 = extractvalue %dx.types.CBufRet.f32 %620, 3
  %622 = extractvalue %dx.types.CBufRet.f32 %555, 2
  %623 = fcmp fast une float %621, %622
  br i1 %623, label %624, label %631, !dx.controlflow.hints !47

; <label>:624                                     ; preds = %619
  %625 = fsub fast float %461, %588
  %626 = call float @dx.op.binary.f32(i32 36, float %595, float %625)  ; FMin(a,b)
  br label %631

; <label>:627                                     ; preds = %615
  %628 = add nsw i32 %548, -1
  %629 = icmp sgt i32 %548, 1
  br i1 %629, label %547, label %630

; <label>:630                                     ; preds = %627
  br label %631

; <label>:631                                     ; preds = %630, %624, %619, %544
  %632 = phi float [ %626, %624 ], [ %595, %619 ], [ 0.000000e+00, %544 ], [ 0.000000e+00, %630 ]
  %633 = phi i32 [ %548, %624 ], [ %548, %619 ], [ %464, %544 ], [ %628, %630 ]
  %634 = add nsw i32 %633, 1
  %635 = add nsw i32 %479, -1
  %636 = call i32 @dx.op.binary.i32(i32 38, i32 %634, i32 %635)  ; IMin(a,b)
  br label %637

; <label>:637                                     ; preds = %631, %611, %603, %542, %538, %483
  %638 = phi float [ %484, %483 ], [ %595, %603 ], [ %595, %611 ], [ %632, %631 ], [ 0x47EFFFFFE0000000, %542 ], [ %539, %538 ]
  %639 = phi i32 [ %366, %483 ], [ %366, %603 ], [ %366, %611 ], [ %366, %631 ], [ 0, %542 ], [ %366, %538 ]
  %640 = phi i32 [ %464, %483 ], [ %606, %603 ], [ %614, %611 ], [ %636, %631 ], [ %464, %542 ], [ %464, %538 ]
  %641 = icmp ne i32 %639, 0
  %642 = zext i1 %641 to i32
  %643 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %644 = extractvalue %dx.types.CBufRet.f32 %643, 2
  %645 = call float @dx.op.binary.f32(i32 35, float %638, float %644)  ; FMax(a,b)
  %646 = call float @dx.op.binary.f32(i32 36, float 0x47EFFFFFE0000000, float %645)  ; FMin(a,b)
  br label %647

; <label>:647                                     ; preds = %637, %456
  %648 = phi i32 [ %642, %637 ], [ 0, %456 ]
  %649 = phi float [ %646, %637 ], [ 0x47EFFFFFE0000000, %456 ]
  %650 = phi i32 [ %640, %637 ], [ %464, %456 ]
  %651 = icmp eq i32 %430, 0
  br i1 %651, label %708, label %652, !dx.controlflow.hints !48

; <label>:652                                     ; preds = %647
  %653 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 35)  ; CBufferLoadLegacy(handle,regIndex)
  %654 = extractvalue %dx.types.CBufRet.f32 %653, 0
  %655 = extractvalue %dx.types.CBufRet.f32 %653, 1
  %656 = extractvalue %dx.types.CBufRet.f32 %653, 2
  %657 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 31)  ; CBufferLoadLegacy(handle,regIndex)
  %658 = extractvalue %dx.types.CBufRet.f32 %657, 0
  %659 = extractvalue %dx.types.CBufRet.f32 %657, 1
  %660 = extractvalue %dx.types.CBufRet.f32 %657, 2
  %661 = fsub fast float %459, %658
  %662 = fsub fast float %460, %659
  %663 = fsub fast float %461, %660
  %664 = fmul fast float %661, %654
  %665 = fmul fast float %662, %655
  %666 = fmul fast float %663, %656
  %667 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %18, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %668 = extractvalue %dx.types.CBufRet.i32 %667, 3
  %669 = icmp eq i32 %668, 0
  br i1 %669, label %673, label %670, !dx.controlflow.hints !49

; <label>:670                                     ; preds = %652
  %671 = call float @dx.op.unary.f32(i32 22, float %664)  ; Frc(value)
  %672 = call float @dx.op.unary.f32(i32 22, float %665)  ; Frc(value)
  br label %673

; <label>:673                                     ; preds = %670, %652
  %674 = phi float [ %671, %670 ], [ %664, %652 ]
  %675 = phi float [ %672, %670 ], [ %665, %652 ]
  %676 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %14, float %674, float %675, float %666, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %677 = extractvalue %dx.types.ResRet.f32 %676, 0
  %678 = fmul fast float %677, 2.000000e+00
  %679 = fadd fast float %678, -1.000000e+00
  %680 = extractvalue %dx.types.CBufRet.f32 %653, 3
  %681 = fmul fast float %679, %680
  %682 = fcmp fast olt float %681, 0.000000e+00
  %683 = fcmp fast oge float %666, 0.000000e+00
  %684 = fcmp fast ole float %666, 1.000000e+00
  br i1 %669, label %687, label %685, !dx.controlflow.hints !50

; <label>:685                                     ; preds = %673
  %686 = and i1 %683, %684
  br label %697

; <label>:687                                     ; preds = %673
  %688 = fcmp fast oge float %664, 0.000000e+00
  %689 = fcmp fast oge float %665, 0.000000e+00
  %690 = and i1 %688, %689
  %691 = and i1 %683, %690
  %692 = fcmp fast ole float %664, 1.000000e+00
  %693 = fcmp fast ole float %665, 1.000000e+00
  %694 = and i1 %692, %693
  %695 = and i1 %684, %694
  %696 = and i1 %691, %695
  br label %697

; <label>:697                                     ; preds = %687, %685
  %698 = phi i1 [ %686, %685 ], [ %696, %687 ]
  %699 = and i1 %682, %698
  %700 = call float @dx.op.unary.f32(i32 6, float %681)  ; FAbs(value)
  %701 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %702 = extractvalue %dx.types.CBufRet.f32 %701, 1
  %703 = extractvalue %dx.types.CBufRet.f32 %701, 0
  %704 = call float @dx.op.binary.f32(i32 35, float %700, float %703)  ; FMax(a,b)
  %705 = select i1 %699, float %702, float %704
  %706 = zext i1 %699 to i32
  %707 = call float @dx.op.binary.f32(i32 36, float %649, float %705)  ; FMin(a,b)
  br label %708

; <label>:708                                     ; preds = %697, %647
  %709 = phi i32 [ %706, %697 ], [ 0, %647 ]
  %710 = phi float [ %707, %697 ], [ %649, %647 ]
  %711 = extractvalue %dx.types.CBufRet.f32 %474, 2
  %712 = fmul fast float %711, %462
  %713 = call float @dx.op.unary.f32(i32 23, float %712)  ; Log(value)
  %714 = fmul fast float %713, 0x3FE62E4300000000
  %715 = call float @dx.op.binary.f32(i32 35, float %714, float 1.000000e+00)  ; FMax(a,b)
  %716 = fmul fast float %715, 0x47EFFFFFE0000000
  %717 = call float @dx.op.binary.f32(i32 36, float %716, float %710)  ; FMin(a,b)
  %718 = call float @dx.op.binary.f32(i32 35, float %717, float %475)  ; FMax(a,b)
  %719 = fsub fast float %433, %462
  %720 = fadd fast float %719, 0x3F1A36E2E0000000
  %721 = call float @dx.op.binary.f32(i32 36, float %720, float %718)  ; FMin(a,b)
  %722 = icmp eq i32 %648, 0
  br i1 %722, label %819, label %723, !dx.controlflow.hints !51

; <label>:723                                     ; preds = %708
  %724 = fcmp fast olt float %720, %718
  %725 = fmul fast float %279, %222
  %726 = fmul fast float %725, %721
  %727 = fadd fast float %726, %461
  %728 = fmul fast float %279, %223
  %729 = fmul fast float %728, %721
  %730 = fadd fast float %729, %461
  %731 = fmul fast float %279, %224
  %732 = fmul fast float %731, %721
  %733 = fadd fast float %732, %461
  br i1 %724, label %734, label %739, !dx.controlflow.hints !52

; <label>:734                                     ; preds = %723
  %735 = fmul fast float %721, %277
  %736 = fmul fast float %721, %278
  %737 = fadd fast float %735, %459
  %738 = fadd fast float %736, %460
  br label %739

; <label>:739                                     ; preds = %734, %723
  %740 = phi float [ %737, %734 ], [ %459, %723 ]
  %741 = phi float [ %738, %734 ], [ %460, %723 ]
  %742 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 401)  ; CBufferLoadLegacy(handle,regIndex)
  %743 = extractvalue %dx.types.CBufRet.f32 %742, 0
  %744 = extractvalue %dx.types.CBufRet.f32 %742, 1
  %745 = fsub fast float %740, %743
  %746 = fsub fast float %741, %744
  %747 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 403)  ; CBufferLoadLegacy(handle,regIndex)
  %748 = extractvalue %dx.types.CBufRet.f32 %747, 0
  %749 = extractvalue %dx.types.CBufRet.f32 %747, 1
  %750 = fmul fast float %745, %748
  %751 = fmul fast float %746, %749
  %752 = fsub fast float 1.000000e+00, %751
  %753 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %18, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %754 = extractvalue %dx.types.CBufRet.i32 %753, 3
  %755 = icmp eq i32 %754, 0
  br i1 %755, label %762, label %756, !dx.controlflow.hints !43

; <label>:756                                     ; preds = %739
  %757 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %15, float %750, float %752, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %758 = extractvalue %dx.types.ResRet.f32 %757, 0
  %759 = extractvalue %dx.types.ResRet.f32 %757, 1
  %760 = extractvalue %dx.types.ResRet.f32 %757, 2
  %761 = extractvalue %dx.types.ResRet.f32 %757, 3
  br label %768

; <label>:762                                     ; preds = %739
  %763 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %16, float %750, float %752, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %764 = extractvalue %dx.types.ResRet.f32 %763, 0
  %765 = extractvalue %dx.types.ResRet.f32 %763, 1
  %766 = extractvalue %dx.types.ResRet.f32 %763, 2
  %767 = extractvalue %dx.types.ResRet.f32 %763, 3
  br label %768

; <label>:768                                     ; preds = %762, %756
  %769 = phi float [ %758, %756 ], [ %764, %762 ]
  %770 = phi float [ %759, %756 ], [ %765, %762 ]
  %771 = phi float [ %760, %756 ], [ %766, %762 ]
  %772 = phi float [ %761, %756 ], [ %767, %762 ]
  %773 = extractvalue %dx.types.CBufRet.f32 %747, 3
  %774 = fmul fast float %773, %770
  %775 = fmul fast float %774, %769
  %776 = fsub fast float %774, %775
  %777 = fcmp fast ole float %776, 0.000000e+00
  %778 = extractvalue %dx.types.CBufRet.f32 %742, 2
  %779 = fadd fast float %775, %778
  %780 = fmul fast float %773, %771
  %781 = fadd fast float %780, %778
  %782 = fdiv fast float 1.000000e+00, %776
  %783 = select i1 %777, float 1.000000e+06, float %782
  %784 = fsub fast float %727, %779
  %785 = fmul fast float %783, %784
  %786 = call float @dx.op.unary.f32(i32 7, float %785)  ; Saturate(value)
  %787 = extractvalue %dx.types.CBufRet.f32 %747, 2
  %788 = fmul fast float %787, %786
  %789 = fsub fast float %787, %788
  %790 = fcmp fast olt float %727, %781
  %791 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 406)  ; CBufferLoadLegacy(handle,regIndex)
  %792 = extractvalue %dx.types.CBufRet.f32 %791, 3
  %793 = select i1 %790, float %792, float 1.000000e+00
  %794 = fmul fast float %789, %793
  %795 = fsub fast float %730, %779
  %796 = fmul fast float %783, %795
  %797 = call float @dx.op.unary.f32(i32 7, float %796)  ; Saturate(value)
  %798 = fmul fast float %787, %797
  %799 = fsub fast float %787, %798
  %800 = fcmp fast olt float %730, %781
  %801 = select i1 %800, float %792, float 1.000000e+00
  %802 = fmul fast float %799, %801
  %803 = fadd fast float %802, %794
  %804 = fsub fast float %733, %779
  %805 = fmul fast float %783, %804
  %806 = call float @dx.op.unary.f32(i32 7, float %805)  ; Saturate(value)
  %807 = fmul fast float %787, %806
  %808 = fsub fast float %787, %807
  %809 = fcmp fast olt float %733, %781
  %810 = select i1 %809, float %792, float 1.000000e+00
  %811 = fmul fast float %808, %810
  %812 = fadd fast float %803, %811
  %813 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 418)  ; CBufferLoadLegacy(handle,regIndex)
  %814 = extractvalue %dx.types.CBufRet.f32 %813, 2
  %815 = fmul fast float %721, 0x3FD5555560000000
  %816 = fmul fast float %815, %772
  %817 = fmul fast float %816, %814
  %818 = fmul fast float %817, %812
  br label %819

; <label>:819                                     ; preds = %768, %708
  %820 = phi float [ %818, %768 ], [ 0.000000e+00, %708 ]
  %821 = icmp eq i32 %709, 0
  br i1 %821, label %1002, label %822, !dx.controlflow.hints !53

; <label>:822                                     ; preds = %819
  %823 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %824 = extractvalue %dx.types.CBufRet.f32 %823, 3
  %825 = fmul fast float %824, %462
  %826 = fcmp fast oeq float %825, 0.000000e+00
  br i1 %826, label %841, label %827, !dx.controlflow.hints !54

; <label>:827                                     ; preds = %822
  %828 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 41)  ; CBufferLoadLegacy(handle,regIndex)
  %829 = extractvalue %dx.types.CBufRet.f32 %828, 3
  %830 = fmul fast float %829, %825
  %831 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 33)  ; CBufferLoadLegacy(handle,regIndex)
  %832 = extractvalue %dx.types.CBufRet.f32 %831, 0
  %833 = extractvalue %dx.types.CBufRet.f32 %831, 1
  %834 = extractvalue %dx.types.CBufRet.f32 %831, 2
  %835 = fmul fast float %832, %830
  %836 = fmul fast float %833, %830
  %837 = fmul fast float %834, %830
  %838 = call float @dx.op.unary.f32(i32 23, float %835)  ; Log(value)
  %839 = call float @dx.op.unary.f32(i32 23, float %836)  ; Log(value)
  %840 = call float @dx.op.unary.f32(i32 23, float %837)  ; Log(value)
  br label %841

; <label>:841                                     ; preds = %827, %822
  %842 = phi float [ %838, %827 ], [ 0.000000e+00, %822 ]
  %843 = phi float [ %839, %827 ], [ 0.000000e+00, %822 ]
  %844 = phi float [ %840, %827 ], [ 0.000000e+00, %822 ]
  %845 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 35)  ; CBufferLoadLegacy(handle,regIndex)
  %846 = extractvalue %dx.types.CBufRet.f32 %845, 0
  %847 = extractvalue %dx.types.CBufRet.f32 %845, 1
  %848 = extractvalue %dx.types.CBufRet.f32 %845, 2
  %849 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 31)  ; CBufferLoadLegacy(handle,regIndex)
  %850 = extractvalue %dx.types.CBufRet.f32 %849, 0
  %851 = extractvalue %dx.types.CBufRet.f32 %849, 1
  %852 = extractvalue %dx.types.CBufRet.f32 %849, 2
  %853 = fsub fast float %459, %850
  %854 = fsub fast float %460, %851
  %855 = fsub fast float %461, %852
  %856 = fmul fast float %853, %846
  %857 = fmul fast float %854, %847
  %858 = fmul fast float %855, %848
  %859 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %18, i32 29)  ; CBufferLoadLegacy(handle,regIndex)
  %860 = extractvalue %dx.types.CBufRet.i32 %859, 0
  %861 = extractvalue %dx.types.CBufRet.i32 %859, 1
  %862 = uitofp i32 %860 to float
  %863 = uitofp i32 %861 to float
  %864 = fmul fast float %856, %862
  %865 = fmul fast float %857, %863
  %866 = fadd fast float %864, 5.000000e-01
  %867 = fadd fast float %865, 5.000000e-01
  %868 = call float @dx.op.unary.f32(i32 22, float %866)  ; Frc(value)
  %869 = call float @dx.op.unary.f32(i32 22, float %867)  ; Frc(value)
  %870 = call float @dx.op.unary.f32(i32 27, float %866)  ; Round_ni(value)
  %871 = call float @dx.op.unary.f32(i32 27, float %867)  ; Round_ni(value)
  %872 = fadd fast float %870, 1.000000e+00
  %873 = fadd fast float %871, 1.000000e+00
  %874 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 30)  ; CBufferLoadLegacy(handle,regIndex)
  %875 = extractvalue %dx.types.CBufRet.f32 %874, 0
  %876 = extractvalue %dx.types.CBufRet.f32 %874, 1
  %877 = fmul fast float %875, %872
  %878 = fmul fast float %876, %873
  %879 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %9, %dx.types.Handle %15, float %877, float %878, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %880 = extractvalue %dx.types.ResRet.f32 %879, 0
  %881 = extractvalue %dx.types.ResRet.f32 %879, 1
  %882 = extractvalue %dx.types.ResRet.f32 %879, 2
  %883 = extractvalue %dx.types.ResRet.f32 %879, 3
  %884 = extractvalue %dx.types.CBufRet.i32 %859, 2
  %885 = extractvalue %dx.types.CBufRet.f32 %874, 2
  %886 = uitofp i32 %884 to float
  %887 = fadd fast float %886, -1.000000e+00
  %888 = fmul fast float %887, %880
  %889 = fmul fast float %887, %881
  %890 = fmul fast float %887, %882
  %891 = fmul fast float %887, %883
  %892 = fadd fast float %888, 5.000000e-01
  %893 = fadd fast float %889, 5.000000e-01
  %894 = fadd fast float %890, 5.000000e-01
  %895 = fadd fast float %891, 5.000000e-01
  %896 = fptoui float %892 to i32
  %897 = fptoui float %893 to i32
  %898 = fptoui float %894 to i32
  %899 = fptoui float %895 to i32
  %900 = uitofp i32 %896 to float
  %901 = uitofp i32 %897 to float
  %902 = uitofp i32 %898 to float
  %903 = uitofp i32 %899 to float
  %904 = fadd fast float %900, 5.000000e-01
  %905 = fadd fast float %901, 5.000000e-01
  %906 = fadd fast float %902, 5.000000e-01
  %907 = fadd fast float %903, 5.000000e-01
  %908 = fmul fast float %904, %885
  %909 = fmul fast float %905, %885
  %910 = fmul fast float %906, %885
  %911 = fmul fast float %907, %885
  %912 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %16, float %908, float %858, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %913 = extractvalue %dx.types.ResRet.f32 %912, 0
  %914 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %16, float %909, float %858, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %915 = extractvalue %dx.types.ResRet.f32 %914, 0
  %916 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %16, float %910, float %858, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %917 = extractvalue %dx.types.ResRet.f32 %916, 0
  %918 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %16, float %911, float %858, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %919 = extractvalue %dx.types.ResRet.f32 %918, 0
  %920 = fsub fast float %917, %919
  %921 = fmul fast float %920, %868
  %922 = fadd fast float %921, %919
  %923 = fsub fast float %915, %913
  %924 = fmul fast float %923, %868
  %925 = fadd fast float %924, %913
  %926 = fsub fast float %925, %922
  %927 = fmul fast float %926, %869
  %928 = fadd fast float %927, %922
  %929 = fcmp fast ogt float %928, 0.000000e+00
  br i1 %929, label %930, label %998, !dx.controlflow.hints !55

; <label>:930                                     ; preds = %841
  %931 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 33)  ; CBufferLoadLegacy(handle,regIndex)
  %932 = extractvalue %dx.types.CBufRet.f32 %931, 0
  %933 = extractvalue %dx.types.CBufRet.f32 %931, 1
  %934 = extractvalue %dx.types.CBufRet.f32 %931, 2
  %935 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 41)  ; CBufferLoadLegacy(handle,regIndex)
  %936 = extractvalue %dx.types.CBufRet.f32 %935, 0
  %937 = extractvalue %dx.types.CBufRet.f32 %935, 1
  %938 = extractvalue %dx.types.CBufRet.f32 %935, 2
  %939 = fmul fast float %854, %846
  %940 = fmul fast float %855, %846
  %941 = fadd fast float %856, %936
  %942 = fadd fast float %939, %937
  %943 = fadd fast float %940, %938
  %944 = fmul fast float %941, %932
  %945 = fmul fast float %942, %932
  %946 = fmul fast float %943, %932
  %947 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %13, float %944, float %945, float %946, float undef, i32 0, i32 0, i32 0, float %842)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %948 = extractvalue %dx.types.ResRet.f32 %947, 0
  %949 = fmul fast float %941, %933
  %950 = fmul fast float %942, %933
  %951 = fmul fast float %943, %933
  %952 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %13, float %949, float %950, float %951, float undef, i32 0, i32 0, i32 0, float %843)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %953 = extractvalue %dx.types.ResRet.f32 %952, 1
  %954 = fmul fast float %941, %934
  %955 = fmul fast float %942, %934
  %956 = fmul fast float %943, %934
  %957 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %13, float %954, float %955, float %956, float undef, i32 0, i32 0, i32 0, float %844)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %958 = extractvalue %dx.types.ResRet.f32 %957, 2
  %959 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 34)  ; CBufferLoadLegacy(handle,regIndex)
  %960 = extractvalue %dx.types.CBufRet.f32 %959, 1
  %961 = fmul fast float %953, %948
  %962 = fmul fast float %961, %958
  %963 = call float @dx.op.unary.f32(i32 23, float %962)  ; Log(value)
  %964 = fmul fast float %963, %960
  %965 = call float @dx.op.unary.f32(i32 21, float %964)  ; Exp(value)
  %966 = extractvalue %dx.types.CBufRet.f32 %959, 2
  %967 = fmul fast float %928, %928
  %968 = fmul fast float %967, %965
  %969 = fmul fast float %968, %966
  %970 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 32)  ; CBufferLoadLegacy(handle,regIndex)
  %971 = extractvalue %dx.types.CBufRet.f32 %970, 3
  %972 = fmul fast float %971, %969
  %973 = bitcast float %972 to i32
  %974 = sitofp i32 %973 to float
  %975 = fptosi float %974 to i32
  %976 = bitcast i32 %975 to float
  %977 = fsub fast float 1.000000e+00, %969
  %978 = bitcast float %977 to i32
  %979 = sitofp i32 %978 to float
  %980 = fptosi float %979 to i32
  %981 = bitcast i32 %980 to float
  %982 = fadd fast float %976, %981
  %983 = bitcast float %982 to i32
  %984 = sub nsw i32 2129859010, %983
  %985 = bitcast i32 %984 to float
  %986 = fmul fast float %985, %976
  %987 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %988 = extractvalue %dx.types.CBufRet.f32 %987, 2
  %989 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 37)  ; CBufferLoadLegacy(handle,regIndex)
  %990 = extractvalue %dx.types.CBufRet.f32 %989, 0
  %991 = fmul fast float %986, %990
  %992 = fadd fast float %991, 1.000000e+00
  %993 = bitcast float %992 to i32
  %994 = sub nsw i32 2129859010, %993
  %995 = bitcast i32 %994 to float
  %996 = fmul fast float %986, %988
  %997 = fmul fast float %996, %995
  br label %998

; <label>:998                                     ; preds = %930, %841
  %999 = phi float [ %997, %930 ], [ %928, %841 ]
  %1000 = fmul fast float %999, %721
  %1001 = fadd fast float %1000, %820
  br label %1002

; <label>:1002                                    ; preds = %998, %819
  %1003 = phi float [ %1001, %998 ], [ %820, %819 ]
  %1004 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %1005 = extractvalue %dx.types.CBufRet.f32 %1004, 1
  %1006 = fcmp fast ogt float %1003, %1005
  br i1 %1006, label %1009, label %1007, !dx.controlflow.hints !56

; <label>:1007                                    ; preds = %1002
  %1008 = fadd fast float %721, %462
  br label %1059

; <label>:1009                                    ; preds = %1002
  %1010 = fmul fast float %1003, 0xBFF7154760000000
  %1011 = call float @dx.op.unary.f32(i32 21, float %1010)  ; Exp(value)
  %1012 = call float @dx.op.unary.f32(i32 7, float %1011)  ; Saturate(value)
  %1013 = fsub fast float 1.000000e+00, %1012
  %1014 = fdiv fast float %1003, %721
  %1015 = fadd fast float %721, %462
  %1016 = fmul fast float %462, %462
  %1017 = fmul fast float %1015, %1015
  %1018 = fsub fast float %1016, %1017
  %1019 = fmul fast float %1018, -5.000000e-01
  %1020 = fmul fast float %1019, %1014
  %1021 = fadd fast float %1020, %457
  %1022 = fadd fast float %1003, %465
  %1023 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %18, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %1024 = extractvalue %dx.types.CBufRet.i32 %1023, 0
  %1025 = icmp eq i32 %1024, 0
  br i1 %1025, label %1052, label %1026, !dx.controlflow.hints !57

; <label>:1026                                    ; preds = %1009
  %1027 = icmp ne i32 %470, 0
  %1028 = zext i1 %1027 to i32
  %1029 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %1030 = extractvalue %dx.types.CBufRet.f32 %1029, 2
  %1031 = extractvalue %dx.types.CBufRet.f32 %1029, 0
  %1032 = fsub fast float %1015, %1031
  %1033 = fmul fast float %1032, %1030
  %1034 = call float @dx.op.unary.f32(i32 7, float %1033)  ; Saturate(value)
  %1035 = fadd fast float %1034, -5.000000e-01
  %1036 = fmul fast float %1035, 2.000000e+00
  %1037 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %1038 = extractvalue %dx.types.CBufRet.f32 %1037, 2
  %1039 = fcmp fast olt float %1036, %1038
  br i1 %1039, label %1040, label %1052, !dx.controlflow.hints !58

; <label>:1040                                    ; preds = %1026
  %1041 = fmul fast float %1036, %1036
  %1042 = fmul fast float %1013, %458
  %1043 = fmul fast float %1036, %1042
  %1044 = fmul fast float %1041, %1042
  %1045 = fmul fast float %1043, %1041
  %1046 = fmul fast float %1041, %1041
  %1047 = fmul fast float %1046, %1042
  %1048 = fadd fast float %1043, %466
  %1049 = fadd fast float %1044, %467
  %1050 = fadd fast float %1045, %468
  %1051 = fadd fast float %1047, %469
  br label %1052

; <label>:1052                                    ; preds = %1040, %1026, %1009
  %1053 = phi float [ %466, %1009 ], [ %1048, %1040 ], [ %466, %1026 ]
  %1054 = phi float [ %467, %1009 ], [ %1049, %1040 ], [ %467, %1026 ]
  %1055 = phi float [ %468, %1009 ], [ %1050, %1040 ], [ %468, %1026 ]
  %1056 = phi float [ %469, %1009 ], [ %1051, %1040 ], [ %469, %1026 ]
  %1057 = phi i32 [ %470, %1009 ], [ 1, %1040 ], [ %1028, %1026 ]
  %1058 = fmul fast float %1012, %458
  br label %1059

; <label>:1059                                    ; preds = %1052, %1007
  %1060 = phi float [ %1008, %1007 ], [ %1015, %1052 ]
  %1061 = phi float [ %457, %1007 ], [ %1021, %1052 ]
  %1062 = phi float [ %458, %1007 ], [ %1058, %1052 ]
  %1063 = phi float [ %465, %1007 ], [ %1022, %1052 ]
  %1064 = phi float [ %466, %1007 ], [ %1053, %1052 ]
  %1065 = phi float [ %467, %1007 ], [ %1054, %1052 ]
  %1066 = phi float [ %468, %1007 ], [ %1055, %1052 ]
  %1067 = phi float [ %469, %1007 ], [ %1056, %1052 ]
  %1068 = phi i32 [ %470, %1007 ], [ %1057, %1052 ]
  %1069 = fmul fast float %721, %277
  %1070 = fmul fast float %721, %278
  %1071 = fmul fast float %721, %279
  %1072 = fadd fast float %1069, %459
  %1073 = fadd fast float %1070, %460
  %1074 = fadd fast float %1071, %461
  %1075 = fcmp fast olt float %1060, %433
  %1076 = extractvalue %dx.types.CBufRet.f32 %1004, 2
  %1077 = fcmp fast olt float %1076, %1062
  %1078 = and i1 %1075, %1077
  br i1 %1078, label %456, label %1079

; <label>:1079                                    ; preds = %1059
  %1080 = uitofp i32 %473 to float
  br label %1081

; <label>:1081                                    ; preds = %1079, %429
  %1082 = phi float [ 0.000000e+00, %429 ], [ %1061, %1079 ]
  %1083 = phi float [ 1.000000e+00, %429 ], [ %1062, %1079 ]
  %1084 = phi float [ 0.000000e+00, %429 ], [ %1080, %1079 ]
  %1085 = phi float [ 0.000000e+00, %429 ], [ %1063, %1079 ]
  %1086 = phi float [ 0.000000e+00, %429 ], [ %1064, %1079 ]
  %1087 = phi float [ 0.000000e+00, %429 ], [ %1065, %1079 ]
  %1088 = phi float [ 0.000000e+00, %429 ], [ %1066, %1079 ]
  %1089 = phi float [ 0.000000e+00, %429 ], [ %1067, %1079 ]
  %1090 = phi i32 [ 0, %429 ], [ %1068, %1079 ]
  %1091 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %18, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %1092 = extractvalue %dx.types.CBufRet.i32 %1091, 0
  %1093 = icmp eq i32 %1092, 0
  br i1 %1093, label %1135, label %1094, !dx.controlflow.hints !59

; <label>:1094                                    ; preds = %1081
  %1095 = icmp eq i32 %1090, 0
  br i1 %1095, label %1134, label %1096, !dx.controlflow.hints !60

; <label>:1096                                    ; preds = %1094
  %1097 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %18, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %1098 = extractvalue %dx.types.CBufRet.i32 %1097, 2
  %1099 = icmp eq i32 %1098, 0
  br i1 %1099, label %1106, label %1100, !dx.controlflow.hints !61

; <label>:1100                                    ; preds = %1096
  %1101 = fsub fast float 1.000000e+00, %1083
  %1102 = fdiv fast float %1086, %1101
  %1103 = fdiv fast float %1087, %1101
  %1104 = fdiv fast float %1088, %1101
  %1105 = fdiv fast float %1089, %1101
  br label %1111

; <label>:1106                                    ; preds = %1096
  %1107 = fadd fast float %1086, %1083
  %1108 = fadd fast float %1087, %1083
  %1109 = fadd fast float %1088, %1083
  %1110 = fadd fast float %1089, %1083
  br label %1111

; <label>:1111                                    ; preds = %1106, %1100
  %1112 = phi float [ %1102, %1100 ], [ %1107, %1106 ]
  %1113 = phi float [ %1103, %1100 ], [ %1108, %1106 ]
  %1114 = phi float [ %1104, %1100 ], [ %1109, %1106 ]
  %1115 = phi float [ %1105, %1100 ], [ %1110, %1106 ]
  %1116 = call float @dx.op.binary.f32(i32 35, float %1112, float -1.000000e+00)  ; FMax(a,b)
  %1117 = call float @dx.op.binary.f32(i32 35, float %1113, float -1.000000e+00)  ; FMax(a,b)
  %1118 = call float @dx.op.binary.f32(i32 35, float %1114, float -1.000000e+00)  ; FMax(a,b)
  %1119 = call float @dx.op.binary.f32(i32 35, float %1115, float -1.000000e+00)  ; FMax(a,b)
  %1120 = call float @dx.op.binary.f32(i32 36, float %1116, float 1.000000e+00)  ; FMin(a,b)
  %1121 = call float @dx.op.binary.f32(i32 36, float %1117, float 1.000000e+00)  ; FMin(a,b)
  %1122 = call float @dx.op.binary.f32(i32 36, float %1118, float 1.000000e+00)  ; FMin(a,b)
  %1123 = call float @dx.op.binary.f32(i32 36, float %1119, float 1.000000e+00)  ; FMin(a,b)
  %1124 = fmul fast float %1120, 1.500000e+00
  %1125 = call float @dx.op.tertiary.f32(i32 46, float -2.000000e+00, float %1122, float %1124)  ; FMad(a,b,c)
  %1126 = call float @dx.op.tertiary.f32(i32 46, float 4.000000e+00, float %1121, float 0.000000e+00)  ; FMad(a,b,c)
  %1127 = call float @dx.op.tertiary.f32(i32 46, float -4.000000e+00, float %1123, float %1126)  ; FMad(a,b,c)
  %1128 = fmul fast float %1120, 0x3FEBB67AE0000000
  %1129 = call float @dx.op.tertiary.f32(i32 46, float 0xBFD8A23460000000, float %1122, float %1128)  ; FMad(a,b,c)
  %1130 = call float @dx.op.tertiary.f32(i32 46, float 5.000000e-01, float %1121, float 0.000000e+00)  ; FMad(a,b,c)
  %1131 = call float @dx.op.tertiary.f32(i32 46, float 5.000000e-01, float %1123, float %1130)  ; FMad(a,b,c)
  %1132 = fadd fast float %1125, 5.000000e-01
  %1133 = fadd fast float %1129, 5.000000e-01
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %19, i32 %20, i32 0, float %1132, float %1127, float %1133, float %1131, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %1135

; <label>:1134                                    ; preds = %1094
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %19, i32 %20, i32 0, float 0.000000e+00, float 0.000000e+00, float 0x3FEF6560C0000000, float 1.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %1135

; <label>:1135                                    ; preds = %1134, %1111, %1081
  %1136 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 419)  ; CBufferLoadLegacy(handle,regIndex)
  %1137 = extractvalue %dx.types.CBufRet.f32 %1136, 0
  %1138 = extractvalue %dx.types.CBufRet.f32 %1136, 1
  %1139 = extractvalue %dx.types.CBufRet.f32 %1136, 2
  %1140 = call float @dx.op.dot3.f32(i32 55, float %277, float %278, float %279, float %1137, float %1138, float %1139)  ; Dot3(ax,ay,az,bx,by,bz)
  %1141 = fmul fast float %1140, %1082
  %1142 = fcmp fast ogt float %1085, 0.000000e+00
  %1143 = fdiv fast float 1.000000e+00, %1085
  %1144 = fmul fast float %1141, %1143
  %1145 = select i1 %1142, float %1144, float %288
  %1146 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %1147 = extractvalue %dx.types.CBufRet.f32 %1146, 0
  %1148 = extractvalue %dx.types.CBufRet.f32 %1146, 1
  %1149 = extractvalue %dx.types.CBufRet.f32 %1146, 2
  %1150 = fmul fast float %1147, %241
  %1151 = fmul fast float %1148, %241
  %1152 = fmul fast float %1149, %241
  %1153 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %1154 = extractvalue %dx.types.CBufRet.f32 %1153, 0
  %1155 = extractvalue %dx.types.CBufRet.f32 %1153, 1
  %1156 = extractvalue %dx.types.CBufRet.f32 %1153, 2
  %1157 = fmul fast float %1154, %242
  %1158 = fmul fast float %1155, %242
  %1159 = fmul fast float %1156, %242
  %1160 = fadd fast float %1157, %1150
  %1161 = fadd fast float %1158, %1151
  %1162 = fadd fast float %1159, %1152
  %1163 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %1164 = extractvalue %dx.types.CBufRet.f32 %1163, 0
  %1165 = extractvalue %dx.types.CBufRet.f32 %1163, 1
  %1166 = extractvalue %dx.types.CBufRet.f32 %1163, 2
  %1167 = fadd fast float %1160, %1164
  %1168 = fadd fast float %1161, %1165
  %1169 = fadd fast float %1162, %1166
  %1170 = fmul fast float %1167, %1145
  %1171 = fmul fast float %1168, %1145
  %1172 = fmul fast float %1169, %1145
  %1173 = call float @dx.op.dot3.f32(i32 55, float %1170, float %1171, float %1172, float %1170, float %1171, float %1172)  ; Dot3(ax,ay,az,bx,by,bz)
  %1174 = call float @dx.op.unary.f32(i32 25, float %1173)  ; Rsqrt(value)
  %1175 = fmul fast float %1174, %1173
  %1176 = fmul fast float %1174, %1170
  %1177 = fmul fast float %1174, %1171
  %1178 = fmul fast float %1174, %1172
  %1179 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %18, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1180 = extractvalue %dx.types.CBufRet.i32 %1179, 1
  %1181 = and i32 %1180, 1
  %1182 = icmp ne i32 %1181, 0
  %1183 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %1184 = extractvalue %dx.types.CBufRet.f32 %1183, 2
  %1185 = fcmp fast ogt float %1184, 0.000000e+00
  %1186 = and i1 %1182, %1185
  br i1 %1186, label %1187, label %1345, !dx.controlflow.hints !62

; <label>:1187                                    ; preds = %1135
  %1188 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1189 = extractvalue %dx.types.CBufRet.f32 %1188, 2
  %1190 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1191 = extractvalue %dx.types.CBufRet.f32 %1190, 2
  %1192 = fsub fast float %1189, %1191
  %1193 = extractvalue %dx.types.CBufRet.i32 %1179, 0
  %1194 = call i32 @dx.op.binary.i32(i32 40, i32 %1193, i32 3)  ; UMin(a,b)
  %1195 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %1196 = extractvalue %dx.types.CBufRet.f32 %1195, 0
  %1197 = extractvalue %dx.types.CBufRet.f32 %1195, 1
  %1198 = extractvalue %dx.types.CBufRet.f32 %1190, 0
  %1199 = extractvalue %dx.types.CBufRet.f32 %1190, 1
  %1200 = fsub fast float %1196, %1198
  %1201 = fsub fast float %1197, %1199
  %1202 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %1203 = extractvalue %dx.types.CBufRet.f32 %1202, 0
  %1204 = fcmp fast ogt float %1203, 0.000000e+00
  %1205 = fsub fast float -0.000000e+00, %1200
  %1206 = fsub fast float -0.000000e+00, %1201
  %1207 = call float @dx.op.dot2.f32(i32 54, float %1176, float %1177, float %1176, float %1177)  ; Dot2(ax,ay,bx,by)
  %1208 = call float @dx.op.dot2.f32(i32 54, float %1176, float %1177, float %1205, float %1206)  ; Dot2(ax,ay,bx,by)
  %1209 = fmul fast float %1208, 2.000000e+00
  %1210 = call float @dx.op.dot2.f32(i32 54, float %1205, float %1206, float %1205, float %1206)  ; Dot2(ax,ay,bx,by)
  %1211 = fmul fast float %1203, %1203
  %1212 = fsub fast float %1210, %1211
  %1213 = fmul fast float %1209, %1209
  %1214 = fmul fast float %1207, 4.000000e+00
  %1215 = fmul fast float %1214, %1212
  %1216 = fsub fast float %1213, %1215
  %1217 = fcmp fast ogt float %1216, 0.000000e+00
  br i1 %1217, label %1218, label %1233, !dx.controlflow.hints !63

; <label>:1218                                    ; preds = %1187
  %1219 = fcmp fast ogt float %1209, 0.000000e+00
  %1220 = call float @dx.op.unary.f32(i32 24, float %1216)  ; Sqrt(value)
  %1221 = fsub fast float -0.000000e+00, %1220
  %1222 = select i1 %1219, float %1220, float %1221
  %1223 = fadd fast float %1222, %1209
  %1224 = fmul float %1223, -5.000000e-01
  %1225 = fdiv fast float %1224, %1207
  %1226 = call float @dx.op.binary.f32(i32 35, float %1225, float 0.000000e+00)  ; FMax(a,b)
  %1227 = call float @dx.op.binary.f32(i32 36, float %1175, float %1226)  ; FMin(a,b)
  %1228 = fdiv fast float %1212, %1224
  %1229 = call float @dx.op.binary.f32(i32 35, float %1228, float 0.000000e+00)  ; FMax(a,b)
  %1230 = call float @dx.op.binary.f32(i32 36, float %1175, float %1229)  ; FMin(a,b)
  %1231 = call float @dx.op.binary.f32(i32 36, float %1227, float %1230)  ; FMin(a,b)
  %1232 = call float @dx.op.binary.f32(i32 35, float %1227, float %1230)  ; FMax(a,b)
  br label %1233

; <label>:1233                                    ; preds = %1218, %1187
  %1234 = phi float [ %1232, %1218 ], [ -1.000000e+00, %1187 ]
  %1235 = phi float [ %1231, %1218 ], [ -1.000000e+00, %1187 ]
  %1236 = phi i1 [ true, %1218 ], [ false, %1187 ]
  %1237 = and i1 %1204, %1236
  br i1 %1237, label %1238, label %1240, !dx.controlflow.hints !64

; <label>:1238                                    ; preds = %1233
  %1239 = fcmp fast oeq float %1235, %1234
  br i1 %1239, label %1345, label %1241, !dx.controlflow.hints !65

; <label>:1240                                    ; preds = %1233
  br i1 %1204, label %1345, label %1241, !dx.controlflow.hints !66

; <label>:1241                                    ; preds = %1240, %1238
  %1242 = phi float [ %1175, %1240 ], [ %1234, %1238 ]
  %1243 = phi float [ 0.000000e+00, %1240 ], [ %1235, %1238 ]
  %1244 = fcmp fast oeq float %1178, 0.000000e+00
  %1245 = fdiv fast float %1192, %1178
  %1246 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1245)  ; FMax(a,b)
  %1247 = select i1 %1244, float %1242, float %1246
  %1248 = call float @dx.op.binary.f32(i32 36, float %1242, float %1247)  ; FMin(a,b)
  %1249 = fcmp fast ogt float %1178, 0.000000e+00
  %1250 = fcmp fast olt float %1192, 0.000000e+00
  br i1 %1249, label %1251, label %1252, !dx.controlflow.hints !67

; <label>:1251                                    ; preds = %1241
  br i1 %1250, label %1345, label %1255, !dx.controlflow.hints !68

; <label>:1252                                    ; preds = %1241
  br i1 %1250, label %1253, label %1255, !dx.controlflow.hints !69

; <label>:1253                                    ; preds = %1252
  %1254 = call float @dx.op.binary.f32(i32 35, float %1243, float %1248)  ; FMax(a,b)
  br label %1255

; <label>:1255                                    ; preds = %1253, %1252, %1251
  %1256 = phi float [ %1254, %1253 ], [ %1243, %1252 ], [ %1243, %1251 ]
  %1257 = getelementptr inbounds [3 x float], [3 x float]* %22, i32 0, i32 0
  store float -1.000000e+00, float* %1257, align 4, !tbaa !70, !noalias !74
  %1258 = getelementptr inbounds [3 x float], [3 x float]* %22, i32 0, i32 1
  store float -1.000000e+00, float* %1258, align 4, !tbaa !70, !noalias !74
  %1259 = getelementptr inbounds [3 x float], [3 x float]* %22, i32 0, i32 2
  store float -1.000000e+00, float* %1259, align 4, !tbaa !70, !noalias !74
  %1260 = getelementptr inbounds [3 x float], [3 x float]* %23, i32 0, i32 0
  store float -1.000000e+00, float* %1260, align 4, !tbaa !70, !noalias !74
  %1261 = getelementptr inbounds [3 x float], [3 x float]* %23, i32 0, i32 1
  store float -1.000000e+00, float* %1261, align 4, !tbaa !70, !noalias !74
  %1262 = getelementptr inbounds [3 x float], [3 x float]* %23, i32 0, i32 2
  store float -1.000000e+00, float* %1262, align 4, !tbaa !70, !noalias !74
  %1263 = icmp sgt i32 %1194, 0
  br i1 %1263, label %1264, label %1322

; <label>:1264                                    ; preds = %1255
  br label %1265

; <label>:1265                                    ; preds = %1312, %1264
  %1266 = phi i32 [ %1313, %1312 ], [ 0, %1264 ]
  %1267 = add nuw i32 %1266, 171
  %1268 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 %1267)  ; CBufferLoadLegacy(handle,regIndex)
  %1269 = extractvalue %dx.types.CBufRet.f32 %1268, 0
  %1270 = extractvalue %dx.types.CBufRet.f32 %1268, 1
  %1271 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1272 = extractvalue %dx.types.CBufRet.f32 %1271, 0
  %1273 = extractvalue %dx.types.CBufRet.f32 %1271, 1
  %1274 = fsub fast float %1269, %1272
  %1275 = fsub fast float %1270, %1273
  %1276 = extractvalue %dx.types.CBufRet.f32 %1268, 2
  %1277 = fsub fast float -0.000000e+00, %1274
  %1278 = fsub fast float -0.000000e+00, %1275
  %1279 = call float @dx.op.dot2.f32(i32 54, float %1176, float %1177, float %1277, float %1278)  ; Dot2(ax,ay,bx,by)
  %1280 = fmul fast float %1279, 2.000000e+00
  %1281 = call float @dx.op.dot2.f32(i32 54, float %1277, float %1278, float %1277, float %1278)  ; Dot2(ax,ay,bx,by)
  %1282 = fmul fast float %1276, %1276
  %1283 = fsub fast float %1281, %1282
  %1284 = fmul fast float %1280, %1280
  %1285 = fmul fast float %1214, %1283
  %1286 = fsub fast float %1284, %1285
  %1287 = fcmp fast ogt float %1286, 0.000000e+00
  br i1 %1287, label %1288, label %1303, !dx.controlflow.hints !63

; <label>:1288                                    ; preds = %1265
  %1289 = fcmp fast ogt float %1280, 0.000000e+00
  %1290 = call float @dx.op.unary.f32(i32 24, float %1286)  ; Sqrt(value)
  %1291 = fsub fast float -0.000000e+00, %1290
  %1292 = select i1 %1289, float %1290, float %1291
  %1293 = fadd fast float %1292, %1280
  %1294 = fmul float %1293, -5.000000e-01
  %1295 = fdiv fast float %1294, %1207
  %1296 = call float @dx.op.binary.f32(i32 35, float %1295, float 0.000000e+00)  ; FMax(a,b)
  %1297 = call float @dx.op.binary.f32(i32 36, float %1242, float %1296)  ; FMin(a,b)
  %1298 = fdiv fast float %1283, %1294
  %1299 = call float @dx.op.binary.f32(i32 35, float %1298, float 0.000000e+00)  ; FMax(a,b)
  %1300 = call float @dx.op.binary.f32(i32 36, float %1242, float %1299)  ; FMin(a,b)
  %1301 = call float @dx.op.binary.f32(i32 36, float %1297, float %1300)  ; FMin(a,b)
  %1302 = call float @dx.op.binary.f32(i32 35, float %1297, float %1300)  ; FMax(a,b)
  br label %1303

; <label>:1303                                    ; preds = %1288, %1265
  %1304 = phi float [ %1302, %1288 ], [ -1.000000e+00, %1265 ]
  %1305 = phi float [ %1301, %1288 ], [ -1.000000e+00, %1265 ]
  %1306 = phi i1 [ true, %1288 ], [ false, %1265 ]
  br i1 %1306, label %1307, label %1312, !dx.controlflow.hints !85

; <label>:1307                                    ; preds = %1303
  %1308 = call float @dx.op.binary.f32(i32 35, float %1256, float %1305)  ; FMax(a,b)
  %1309 = getelementptr inbounds [3 x float], [3 x float]* %22, i32 0, i32 %1266
  store float %1308, float* %1309, align 4, !tbaa !70, !noalias !74
  %1310 = call float @dx.op.binary.f32(i32 35, float %1256, float %1304)  ; FMax(a,b)
  %1311 = getelementptr inbounds [3 x float], [3 x float]* %23, i32 0, i32 %1266
  store float %1310, float* %1311, align 4, !tbaa !70, !noalias !74
  br label %1312

; <label>:1312                                    ; preds = %1307, %1303
  %1313 = add nuw nsw i32 %1266, 1
  %1314 = icmp eq i32 %1313, %1194
  br i1 %1314, label %1315, label %1265

; <label>:1315                                    ; preds = %1312
  %1316 = load float, float* %1259, align 4, !tbaa !70, !alias.scope !86, !noalias !89
  %1317 = load float, float* %1258, align 4, !tbaa !70, !alias.scope !92, !noalias !93
  %1318 = load float, float* %1257, align 4, !tbaa !70, !alias.scope !94, !noalias !95
  %1319 = load float, float* %1262, align 4, !tbaa !70, !alias.scope !96, !noalias !99
  %1320 = load float, float* %1261, align 4, !tbaa !70, !alias.scope !102, !noalias !103
  %1321 = load float, float* %1260, align 4, !tbaa !70, !alias.scope !104, !noalias !105
  br label %1322

; <label>:1322                                    ; preds = %1315, %1255
  %1323 = phi float [ -1.000000e+00, %1255 ], [ %1321, %1315 ]
  %1324 = phi float [ -1.000000e+00, %1255 ], [ %1320, %1315 ]
  %1325 = phi float [ -1.000000e+00, %1255 ], [ %1319, %1315 ]
  %1326 = phi float [ -1.000000e+00, %1255 ], [ %1318, %1315 ]
  %1327 = phi float [ -1.000000e+00, %1255 ], [ %1317, %1315 ]
  %1328 = phi float [ -1.000000e+00, %1255 ], [ %1316, %1315 ]
  %1329 = call float @dx.op.binary.f32(i32 36, float %1327, float %1328)  ; FMin(a,b)
  %1330 = call float @dx.op.binary.f32(i32 36, float %1326, float %1329)  ; FMin(a,b)
  %1331 = call float @dx.op.binary.f32(i32 35, float %1326, float %1327)  ; FMax(a,b)
  %1332 = call float @dx.op.binary.f32(i32 36, float %1331, float %1328)  ; FMin(a,b)
  %1333 = call float @dx.op.binary.f32(i32 36, float %1326, float %1327)  ; FMin(a,b)
  %1334 = call float @dx.op.binary.f32(i32 35, float %1333, float %1332)  ; FMax(a,b)
  %1335 = call float @dx.op.binary.f32(i32 35, float %1327, float %1328)  ; FMax(a,b)
  %1336 = call float @dx.op.binary.f32(i32 35, float %1326, float %1335)  ; FMax(a,b)
  store float %1330, float* %1257, align 4, !tbaa !70, !alias.scope !94, !noalias !95
  store float %1334, float* %1258, align 4, !tbaa !70, !alias.scope !92, !noalias !93
  store float %1336, float* %1259, align 4, !tbaa !70, !alias.scope !86, !noalias !89
  %1337 = call float @dx.op.binary.f32(i32 36, float %1324, float %1325)  ; FMin(a,b)
  %1338 = call float @dx.op.binary.f32(i32 36, float %1323, float %1337)  ; FMin(a,b)
  %1339 = call float @dx.op.binary.f32(i32 35, float %1323, float %1324)  ; FMax(a,b)
  %1340 = call float @dx.op.binary.f32(i32 36, float %1339, float %1325)  ; FMin(a,b)
  %1341 = call float @dx.op.binary.f32(i32 36, float %1323, float %1324)  ; FMin(a,b)
  %1342 = call float @dx.op.binary.f32(i32 35, float %1341, float %1340)  ; FMax(a,b)
  %1343 = call float @dx.op.binary.f32(i32 35, float %1324, float %1325)  ; FMax(a,b)
  %1344 = call float @dx.op.binary.f32(i32 35, float %1323, float %1343)  ; FMax(a,b)
  store float %1338, float* %1260, align 4, !tbaa !70, !alias.scope !104, !noalias !105
  store float %1342, float* %1261, align 4, !tbaa !70, !alias.scope !102, !noalias !103
  store float %1344, float* %1262, align 4, !tbaa !70, !alias.scope !96, !noalias !99
  br label %1345

; <label>:1345                                    ; preds = %1322, %1251, %1240, %1238, %1135
  %1346 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 423)  ; CBufferLoadLegacy(handle,regIndex)
  %1347 = extractvalue %dx.types.CBufRet.f32 %1346, 2
  %1348 = fmul fast float %1347, %1145
  %1349 = call float @dx.op.unary.f32(i32 7, float %1348)  ; Saturate(value)
  %1350 = fptoui float %1084 to i32
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1351 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %21
  store i32 %1350, i32 addrspace(3)* %1351, align 4, !tbaa !106
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1352 = and i32 %21, 63
  %1353 = icmp ult i32 %1352, 32
  br i1 %1353, label %1354, label %1360, !dx.controlflow.hints !108

; <label>:1354                                    ; preds = %1345
  %1355 = add i32 %21, 32
  %1356 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1355
  %1357 = load i32, i32 addrspace(3)* %1356, align 4, !tbaa !106
  %1358 = load i32, i32 addrspace(3)* %1351, align 4, !tbaa !106
  %1359 = call i32 @dx.op.binary.i32(i32 40, i32 %1358, i32 %1357)  ; UMin(a,b)
  store i32 %1359, i32 addrspace(3)* %1351, align 4, !tbaa !106
  br label %1360

; <label>:1360                                    ; preds = %1354, %1345
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %1361 = icmp ult i32 %1352, 16
  br i1 %1361, label %1362, label %1368, !dx.controlflow.hints !109

; <label>:1362                                    ; preds = %1360
  %1363 = add i32 %21, 16
  %1364 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1363
  %1365 = load i32, i32 addrspace(3)* %1364, align 4, !tbaa !106
  %1366 = load i32, i32 addrspace(3)* %1351, align 4, !tbaa !106
  %1367 = call i32 @dx.op.binary.i32(i32 40, i32 %1366, i32 %1365)  ; UMin(a,b)
  store i32 %1367, i32 addrspace(3)* %1351, align 4, !tbaa !106
  br label %1368

; <label>:1368                                    ; preds = %1362, %1360
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %1369 = icmp ult i32 %1352, 8
  br i1 %1369, label %1370, label %1376, !dx.controlflow.hints !110

; <label>:1370                                    ; preds = %1368
  %1371 = add i32 %21, 8
  %1372 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1371
  %1373 = load i32, i32 addrspace(3)* %1372, align 4, !tbaa !106
  %1374 = load i32, i32 addrspace(3)* %1351, align 4, !tbaa !106
  %1375 = call i32 @dx.op.binary.i32(i32 40, i32 %1374, i32 %1373)  ; UMin(a,b)
  store i32 %1375, i32 addrspace(3)* %1351, align 4, !tbaa !106
  br label %1376

; <label>:1376                                    ; preds = %1370, %1368
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %1377 = icmp ult i32 %1352, 4
  br i1 %1377, label %1378, label %1384, !dx.controlflow.hints !111

; <label>:1378                                    ; preds = %1376
  %1379 = add i32 %21, 4
  %1380 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1379
  %1381 = load i32, i32 addrspace(3)* %1380, align 4, !tbaa !106
  %1382 = load i32, i32 addrspace(3)* %1351, align 4, !tbaa !106
  %1383 = call i32 @dx.op.binary.i32(i32 40, i32 %1382, i32 %1381)  ; UMin(a,b)
  store i32 %1383, i32 addrspace(3)* %1351, align 4, !tbaa !106
  br label %1384

; <label>:1384                                    ; preds = %1378, %1376
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %1385 = icmp ult i32 %1352, 2
  br i1 %1385, label %1386, label %1392, !dx.controlflow.hints !112

; <label>:1386                                    ; preds = %1384
  %1387 = add i32 %21, 2
  %1388 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1387
  %1389 = load i32, i32 addrspace(3)* %1388, align 4, !tbaa !106
  %1390 = load i32, i32 addrspace(3)* %1351, align 4, !tbaa !106
  %1391 = call i32 @dx.op.binary.i32(i32 40, i32 %1390, i32 %1389)  ; UMin(a,b)
  store i32 %1391, i32 addrspace(3)* %1351, align 4, !tbaa !106
  br label %1392

; <label>:1392                                    ; preds = %1386, %1384
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %1393 = icmp eq i32 %1352, 0
  br i1 %1393, label %1394, label %1400, !dx.controlflow.hints !113

; <label>:1394                                    ; preds = %1392
  %1395 = add i32 %21, 1
  %1396 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1395
  %1397 = load i32, i32 addrspace(3)* %1396, align 4, !tbaa !106
  %1398 = load i32, i32 addrspace(3)* %1351, align 4, !tbaa !106
  %1399 = call i32 @dx.op.binary.i32(i32 40, i32 %1398, i32 %1397)  ; UMin(a,b)
  store i32 %1399, i32 addrspace(3)* %1351, align 4, !tbaa !106
  br label %1400

; <label>:1400                                    ; preds = %1394, %1392
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1401 = and i32 %21, -64
  %1402 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1401
  %1403 = load i32, i32 addrspace(3)* %1402, align 4, !tbaa !106
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  store i32 %1350, i32 addrspace(3)* %1351, align 4, !tbaa !106
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  br i1 %1353, label %1404, label %1410, !dx.controlflow.hints !114

; <label>:1404                                    ; preds = %1400
  %1405 = add i32 %21, 32
  %1406 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1405
  %1407 = load i32, i32 addrspace(3)* %1406, align 4, !tbaa !106
  %1408 = load i32, i32 addrspace(3)* %1351, align 4, !tbaa !106
  %1409 = call i32 @dx.op.binary.i32(i32 39, i32 %1408, i32 %1407)  ; UMax(a,b)
  store i32 %1409, i32 addrspace(3)* %1351, align 4, !tbaa !106
  br label %1410

; <label>:1410                                    ; preds = %1404, %1400
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %1361, label %1411, label %1417, !dx.controlflow.hints !115

; <label>:1411                                    ; preds = %1410
  %1412 = add i32 %21, 16
  %1413 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1412
  %1414 = load i32, i32 addrspace(3)* %1413, align 4, !tbaa !106
  %1415 = load i32, i32 addrspace(3)* %1351, align 4, !tbaa !106
  %1416 = call i32 @dx.op.binary.i32(i32 39, i32 %1415, i32 %1414)  ; UMax(a,b)
  store i32 %1416, i32 addrspace(3)* %1351, align 4, !tbaa !106
  br label %1417

; <label>:1417                                    ; preds = %1411, %1410
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %1369, label %1418, label %1424, !dx.controlflow.hints !116

; <label>:1418                                    ; preds = %1417
  %1419 = add i32 %21, 8
  %1420 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1419
  %1421 = load i32, i32 addrspace(3)* %1420, align 4, !tbaa !106
  %1422 = load i32, i32 addrspace(3)* %1351, align 4, !tbaa !106
  %1423 = call i32 @dx.op.binary.i32(i32 39, i32 %1422, i32 %1421)  ; UMax(a,b)
  store i32 %1423, i32 addrspace(3)* %1351, align 4, !tbaa !106
  br label %1424

; <label>:1424                                    ; preds = %1418, %1417
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %1377, label %1425, label %1431, !dx.controlflow.hints !117

; <label>:1425                                    ; preds = %1424
  %1426 = add i32 %21, 4
  %1427 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1426
  %1428 = load i32, i32 addrspace(3)* %1427, align 4, !tbaa !106
  %1429 = load i32, i32 addrspace(3)* %1351, align 4, !tbaa !106
  %1430 = call i32 @dx.op.binary.i32(i32 39, i32 %1429, i32 %1428)  ; UMax(a,b)
  store i32 %1430, i32 addrspace(3)* %1351, align 4, !tbaa !106
  br label %1431

; <label>:1431                                    ; preds = %1425, %1424
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %1385, label %1432, label %1438, !dx.controlflow.hints !118

; <label>:1432                                    ; preds = %1431
  %1433 = add i32 %21, 2
  %1434 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1433
  %1435 = load i32, i32 addrspace(3)* %1434, align 4, !tbaa !106
  %1436 = load i32, i32 addrspace(3)* %1351, align 4, !tbaa !106
  %1437 = call i32 @dx.op.binary.i32(i32 39, i32 %1436, i32 %1435)  ; UMax(a,b)
  store i32 %1437, i32 addrspace(3)* %1351, align 4, !tbaa !106
  br label %1438

; <label>:1438                                    ; preds = %1432, %1431
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %1393, label %1439, label %1445, !dx.controlflow.hints !119

; <label>:1439                                    ; preds = %1438
  %1440 = add i32 %21, 1
  %1441 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1440
  %1442 = load i32, i32 addrspace(3)* %1441, align 4, !tbaa !106
  %1443 = load i32, i32 addrspace(3)* %1351, align 4, !tbaa !106
  %1444 = call i32 @dx.op.binary.i32(i32 39, i32 %1443, i32 %1442)  ; UMax(a,b)
  store i32 %1444, i32 addrspace(3)* %1351, align 4, !tbaa !106
  br label %1445

; <label>:1445                                    ; preds = %1439, %1438
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1446 = load i32, i32 addrspace(3)* %1402, align 4, !tbaa !106
  %1447 = uitofp i32 %1446 to float
  %1448 = uitofp i32 %1403 to float
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %3, i32 %19, i32 %20, i32 undef, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %1449 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1450 = extractvalue %dx.types.CBufRet.f32 %1449, 0
  %1451 = fmul fast float %1450, %1084
  %1452 = fmul fast float %1450, %1447
  %1453 = fmul fast float %1450, %1448
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %4, i32 %19, i32 %20, i32 undef, float %1451, float %1452, float %1453, float %1451, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %19, i32 %20, i32 undef, float %1349, float %1349, float %1349, float %1349, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
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
!29 = !{void ()* @cs_fog_raymarching_clouds_heightmap, !"cs_fog_raymarching_clouds_heightmap", null, !4, !30}
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
!49 = distinct !{!49, !"dx.controlflow.hints", i32 2}
!50 = distinct !{!50, !"dx.controlflow.hints", i32 2}
!51 = distinct !{!51, !"dx.controlflow.hints", i32 2}
!52 = distinct !{!52, !"dx.controlflow.hints", i32 2}
!53 = distinct !{!53, !"dx.controlflow.hints", i32 2}
!54 = distinct !{!54, !"dx.controlflow.hints", i32 2}
!55 = distinct !{!55, !"dx.controlflow.hints", i32 2}
!56 = distinct !{!56, !"dx.controlflow.hints", i32 1}
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
!68 = distinct !{!68, !"dx.controlflow.hints", i32 2}
!69 = distinct !{!69, !"dx.controlflow.hints", i32 2}
!70 = !{!71, !71, i64 0}
!71 = !{!"float", !72, i64 0}
!72 = !{!"omnipotent char", !73, i64 0}
!73 = !{!"Simple C/C++ TBAA"}
!74 = !{!75, !77, !79, !80, !82, !83, !84}
!75 = distinct !{!75, !76, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z: %cFogParams"}
!76 = distinct !{!76, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z"}
!77 = distinct !{!77, !78, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %scattering"}
!78 = distinct !{!78, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z"}
!79 = distinct !{!79, !78, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %extinction"}
!80 = distinct !{!80, !81, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z: %scattering"}
!81 = distinct !{!81, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z"}
!82 = distinct !{!82, !81, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z: %transmission"}
!83 = distinct !{!83, !81, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z: %depthDensityWeighted"}
!84 = distinct !{!84, !81, !"\01?FogRaymarching@@YAXV?$vector@I$01@@0IV?$vector@M$02@@UFogSettings@@AIAV2@AIAM43@Z: %rawShadowmapData"}
!85 = distinct !{!85, !"dx.controlflow.hints", i32 2}
!86 = !{!87}
!87 = distinct !{!87, !88, !"\01?sort@@YAXAIAM00@Z: %c"}
!88 = distinct !{!88, !"\01?sort@@YAXAIAM00@Z"}
!89 = !{!90, !91, !75, !77, !79, !80, !82, !83, !84}
!90 = distinct !{!90, !88, !"\01?sort@@YAXAIAM00@Z: %a"}
!91 = distinct !{!91, !88, !"\01?sort@@YAXAIAM00@Z: %b"}
!92 = !{!91}
!93 = !{!90, !87, !75, !77, !79, !80, !82, !83, !84}
!94 = !{!90}
!95 = !{!91, !87, !75, !77, !79, !80, !82, !83, !84}
!96 = !{!97}
!97 = distinct !{!97, !98, !"\01?sort@@YAXAIAM00@Z: %c"}
!98 = distinct !{!98, !"\01?sort@@YAXAIAM00@Z"}
!99 = !{!100, !101, !75, !77, !79, !80, !82, !83, !84}
!100 = distinct !{!100, !98, !"\01?sort@@YAXAIAM00@Z: %a"}
!101 = distinct !{!101, !98, !"\01?sort@@YAXAIAM00@Z: %b"}
!102 = !{!101}
!103 = !{!100, !97, !75, !77, !79, !80, !82, !83, !84}
!104 = !{!100}
!105 = !{!101, !97, !75, !77, !79, !80, !82, !83, !84}
!106 = !{!107, !107, i64 0}
!107 = !{!"int", !72, i64 0}
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
!119 = distinct !{!119, !"dx.controlflow.hints", i32 2}

