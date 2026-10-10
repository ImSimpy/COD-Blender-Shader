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
; shader hash: 28471dc0b0538ae60138313f3ec2e95e
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
;   [240 x i8] (type annotation not present)
;
; }
;
; Resource bind info for 
; {
;
;   [4 x i8] (type annotation not present)
;
; }
;
;
; Resource Bindings:
;
; Name                                 Type  Format         Dim      ID      HLSL Bind  Count
; ------------------------------ ---------- ------- ----------- ------- -------------- ------
;                                   cbuffer      NA          NA     CB0            cb3     1
;                                   cbuffer      NA          NA     CB1            cb1     1
;                                   texture    byte         r/o      T0            t28     1
;                                   texture  struct         r/o      T1            t37     1
;                                   texture     f32     2darray      T2            t29     1
;                                       UAV     f32     2darray      U0             u0     1
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.CBufRet.i32 = type { i32, i32, i32, i32 }
%dx.types.ResRet.i32 = type { i32, i32, i32, i32, i32 }
%dx.types.CBufRet.f32 = type { float, float, float, float }
%dx.types.ResRet.f32 = type { float, float, float, float, i32 }
%struct.ByteAddressBuffer = type { i32 }
%"class.StructuredBuffer<unsigned int>" = type { i32 }
%"class.Texture2DArray<vector<float, 4> >" = type { <4 x float>, %"class.Texture2DArray<vector<float, 4> >::mips_type" }
%"class.Texture2DArray<vector<float, 4> >::mips_type" = type { i32 }
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
%DeferredEffectLightConsts_decl = type { %struct.DeferredEffectLightConsts }
%struct.DeferredEffectLightConsts = type { i32, float, float, i32, i32, i32, i32, i32, i32, i32, i32, i32, [12 x <4 x i32>] }

define void @cs_deferred_effect_scatter_y_2() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 29, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 28, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call i32 @dx.op.threadId.i32(i32 93, i32 0)  ; ThreadId(component)
  %8 = call i32 @dx.op.threadId.i32(i32 93, i32 1)  ; ThreadId(component)
  %9 = call i32 @dx.op.threadId.i32(i32 93, i32 2)  ; ThreadId(component)
  %10 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %5, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %11 = extractvalue %dx.types.CBufRet.i32 %10, 2
  %12 = add i32 %11, 6
  %13 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %12, i32 0)  ; BufferLoad(srv,index,wot)
  %14 = extractvalue %dx.types.ResRet.i32 %13, 0
  %15 = icmp ult i32 %7, %14
  br i1 %15, label %16, label %418, !dx.controlflow.hints !19

; <label>:16                                      ; preds = %0
  %17 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %5, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %18 = extractvalue %dx.types.CBufRet.i32 %17, 2
  %19 = add i32 %18, 9
  %20 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %5, i32 %19)  ; CBufferLoadLegacy(handle,regIndex)
  %21 = extractvalue %dx.types.CBufRet.i32 %20, 2
  %22 = add i32 %21, %7
  %23 = shl i32 %22, 5
  %24 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %23, i32 undef)  ; BufferLoad(srv,index,wot)
  %25 = extractvalue %dx.types.ResRet.i32 %24, 3
  %26 = lshr i32 %25, 14
  %27 = and i32 %26, 16383
  %28 = and i32 %25, 16383
  %29 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %5, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %30 = extractvalue %dx.types.CBufRet.f32 %29, 1
  %31 = fptosi float %30 to i32
  %32 = add nsw i32 %31, -1
  %33 = add i32 %9, -2
  %34 = call i32 @dx.op.binary.i32(i32 37, i32 %8, i32 0)  ; IMax(a,b)
  %35 = call i32 @dx.op.binary.i32(i32 37, i32 %33, i32 0)  ; IMax(a,b)
  %36 = call i32 @dx.op.binary.i32(i32 38, i32 %34, i32 %32)  ; IMin(a,b)
  %37 = call i32 @dx.op.binary.i32(i32 38, i32 %35, i32 %32)  ; IMin(a,b)
  %38 = add i32 %36, %27
  %39 = add i32 %37, %28
  %40 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %38, i32 %39, i32 0, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %41 = extractvalue %dx.types.ResRet.f32 %40, 0
  %42 = extractvalue %dx.types.ResRet.f32 %40, 1
  %43 = extractvalue %dx.types.ResRet.f32 %40, 2
  %44 = extractvalue %dx.types.ResRet.f32 %40, 3
  %45 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %6, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %46 = extractvalue %dx.types.CBufRet.f32 %45, 1
  %47 = fmul fast float %46, %41
  %48 = fmul fast float %46, %42
  %49 = fmul fast float %46, %43
  %50 = fmul fast float %46, %44
  %51 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %38, i32 %39, i32 1, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %52 = extractvalue %dx.types.ResRet.f32 %51, 0
  %53 = extractvalue %dx.types.ResRet.f32 %51, 1
  %54 = extractvalue %dx.types.ResRet.f32 %51, 2
  %55 = extractvalue %dx.types.ResRet.f32 %51, 3
  %56 = fmul fast float %46, %52
  %57 = fmul fast float %46, %53
  %58 = fmul fast float %46, %54
  %59 = fmul fast float %46, %55
  %60 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %38, i32 %39, i32 2, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %61 = extractvalue %dx.types.ResRet.f32 %60, 0
  %62 = extractvalue %dx.types.ResRet.f32 %60, 1
  %63 = extractvalue %dx.types.ResRet.f32 %60, 2
  %64 = extractvalue %dx.types.ResRet.f32 %60, 3
  %65 = fmul fast float %46, %61
  %66 = fmul fast float %46, %62
  %67 = fmul fast float %46, %63
  %68 = fmul fast float %46, %64
  %69 = call float @dx.op.binary.f32(i32 35, float %48, float %49)  ; FMax(a,b)
  %70 = call float @dx.op.binary.f32(i32 35, float %47, float %69)  ; FMax(a,b)
  %71 = call float @dx.op.binary.f32(i32 35, float %70, float %50)  ; FMax(a,b)
  %72 = fadd fast float %71, 1.000000e+00
  %73 = fdiv fast float 1.000000e+00, %72
  %74 = call float @dx.op.binary.f32(i32 35, float %57, float %58)  ; FMax(a,b)
  %75 = call float @dx.op.binary.f32(i32 35, float %56, float %74)  ; FMax(a,b)
  %76 = call float @dx.op.binary.f32(i32 35, float %75, float %59)  ; FMax(a,b)
  %77 = fadd fast float %76, 1.000000e+00
  %78 = fdiv fast float 1.000000e+00, %77
  %79 = call float @dx.op.binary.f32(i32 35, float %66, float %67)  ; FMax(a,b)
  %80 = call float @dx.op.binary.f32(i32 35, float %65, float %79)  ; FMax(a,b)
  %81 = call float @dx.op.binary.f32(i32 35, float %80, float %68)  ; FMax(a,b)
  %82 = fadd fast float %81, 1.000000e+00
  %83 = fdiv fast float 1.000000e+00, %82
  %84 = fmul fast float %73, %47
  %85 = fmul fast float %73, %48
  %86 = fmul fast float %73, %49
  %87 = fmul fast float %73, %50
  %88 = fmul fast float %78, %56
  %89 = fmul fast float %78, %57
  %90 = fmul fast float %78, %58
  %91 = fmul fast float %78, %59
  %92 = fmul fast float %83, %65
  %93 = fmul fast float %83, %66
  %94 = fmul fast float %83, %67
  %95 = fmul fast float %83, %68
  %96 = add i32 %9, -1
  %97 = call i32 @dx.op.binary.i32(i32 37, i32 %96, i32 0)  ; IMax(a,b)
  %98 = call i32 @dx.op.binary.i32(i32 38, i32 %97, i32 %32)  ; IMin(a,b)
  %99 = add i32 %98, %28
  %100 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %38, i32 %99, i32 0, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %101 = extractvalue %dx.types.ResRet.f32 %100, 0
  %102 = extractvalue %dx.types.ResRet.f32 %100, 1
  %103 = extractvalue %dx.types.ResRet.f32 %100, 2
  %104 = extractvalue %dx.types.ResRet.f32 %100, 3
  %105 = fmul fast float %46, %101
  %106 = fmul fast float %46, %102
  %107 = fmul fast float %46, %103
  %108 = fmul fast float %46, %104
  %109 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %38, i32 %99, i32 1, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %110 = extractvalue %dx.types.ResRet.f32 %109, 0
  %111 = extractvalue %dx.types.ResRet.f32 %109, 1
  %112 = extractvalue %dx.types.ResRet.f32 %109, 2
  %113 = extractvalue %dx.types.ResRet.f32 %109, 3
  %114 = fmul fast float %46, %110
  %115 = fmul fast float %46, %111
  %116 = fmul fast float %46, %112
  %117 = fmul fast float %46, %113
  %118 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %38, i32 %99, i32 2, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %119 = extractvalue %dx.types.ResRet.f32 %118, 0
  %120 = extractvalue %dx.types.ResRet.f32 %118, 1
  %121 = extractvalue %dx.types.ResRet.f32 %118, 2
  %122 = extractvalue %dx.types.ResRet.f32 %118, 3
  %123 = fmul fast float %46, %119
  %124 = fmul fast float %46, %120
  %125 = fmul fast float %46, %121
  %126 = fmul fast float %46, %122
  %127 = call float @dx.op.binary.f32(i32 35, float %106, float %107)  ; FMax(a,b)
  %128 = call float @dx.op.binary.f32(i32 35, float %105, float %127)  ; FMax(a,b)
  %129 = call float @dx.op.binary.f32(i32 35, float %128, float %108)  ; FMax(a,b)
  %130 = fadd fast float %129, 1.000000e+00
  %131 = fdiv fast float 1.000000e+00, %130
  %132 = call float @dx.op.binary.f32(i32 35, float %115, float %116)  ; FMax(a,b)
  %133 = call float @dx.op.binary.f32(i32 35, float %114, float %132)  ; FMax(a,b)
  %134 = call float @dx.op.binary.f32(i32 35, float %133, float %117)  ; FMax(a,b)
  %135 = fadd fast float %134, 1.000000e+00
  %136 = fdiv fast float 1.000000e+00, %135
  %137 = call float @dx.op.binary.f32(i32 35, float %124, float %125)  ; FMax(a,b)
  %138 = call float @dx.op.binary.f32(i32 35, float %123, float %137)  ; FMax(a,b)
  %139 = call float @dx.op.binary.f32(i32 35, float %138, float %126)  ; FMax(a,b)
  %140 = fadd fast float %139, 1.000000e+00
  %141 = fdiv fast float 1.000000e+00, %140
  %142 = fmul fast float %131, %105
  %143 = fmul fast float %131, %106
  %144 = fmul fast float %131, %107
  %145 = fmul fast float %131, %108
  %146 = fadd fast float %142, %84
  %147 = fadd fast float %143, %85
  %148 = fadd fast float %144, %86
  %149 = fadd fast float %145, %87
  %150 = fmul fast float %136, %114
  %151 = fmul fast float %136, %115
  %152 = fmul fast float %136, %116
  %153 = fmul fast float %136, %117
  %154 = fadd fast float %150, %88
  %155 = fadd fast float %151, %89
  %156 = fadd fast float %152, %90
  %157 = fadd fast float %153, %91
  %158 = fmul fast float %141, %123
  %159 = fmul fast float %141, %124
  %160 = fmul fast float %141, %125
  %161 = fmul fast float %141, %126
  %162 = fadd fast float %158, %92
  %163 = fadd fast float %159, %93
  %164 = fadd fast float %160, %94
  %165 = fadd fast float %161, %95
  %166 = fadd fast float %131, %73
  %167 = fadd fast float %136, %78
  %168 = fadd fast float %141, %83
  %169 = call i32 @dx.op.binary.i32(i32 37, i32 %9, i32 0)  ; IMax(a,b)
  %170 = call i32 @dx.op.binary.i32(i32 38, i32 %169, i32 %32)  ; IMin(a,b)
  %171 = add i32 %170, %28
  %172 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %38, i32 %171, i32 0, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %173 = extractvalue %dx.types.ResRet.f32 %172, 0
  %174 = extractvalue %dx.types.ResRet.f32 %172, 1
  %175 = extractvalue %dx.types.ResRet.f32 %172, 2
  %176 = extractvalue %dx.types.ResRet.f32 %172, 3
  %177 = fmul fast float %46, %173
  %178 = fmul fast float %46, %174
  %179 = fmul fast float %46, %175
  %180 = fmul fast float %46, %176
  %181 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %38, i32 %171, i32 1, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %182 = extractvalue %dx.types.ResRet.f32 %181, 0
  %183 = extractvalue %dx.types.ResRet.f32 %181, 1
  %184 = extractvalue %dx.types.ResRet.f32 %181, 2
  %185 = extractvalue %dx.types.ResRet.f32 %181, 3
  %186 = fmul fast float %46, %182
  %187 = fmul fast float %46, %183
  %188 = fmul fast float %46, %184
  %189 = fmul fast float %46, %185
  %190 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %38, i32 %171, i32 2, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %191 = extractvalue %dx.types.ResRet.f32 %190, 0
  %192 = extractvalue %dx.types.ResRet.f32 %190, 1
  %193 = extractvalue %dx.types.ResRet.f32 %190, 2
  %194 = extractvalue %dx.types.ResRet.f32 %190, 3
  %195 = fmul fast float %46, %191
  %196 = fmul fast float %46, %192
  %197 = fmul fast float %46, %193
  %198 = fmul fast float %46, %194
  %199 = call float @dx.op.binary.f32(i32 35, float %178, float %179)  ; FMax(a,b)
  %200 = call float @dx.op.binary.f32(i32 35, float %177, float %199)  ; FMax(a,b)
  %201 = call float @dx.op.binary.f32(i32 35, float %200, float %180)  ; FMax(a,b)
  %202 = fadd fast float %201, 1.000000e+00
  %203 = fdiv fast float 1.000000e+00, %202
  %204 = call float @dx.op.binary.f32(i32 35, float %187, float %188)  ; FMax(a,b)
  %205 = call float @dx.op.binary.f32(i32 35, float %186, float %204)  ; FMax(a,b)
  %206 = call float @dx.op.binary.f32(i32 35, float %205, float %189)  ; FMax(a,b)
  %207 = fadd fast float %206, 1.000000e+00
  %208 = fdiv fast float 1.000000e+00, %207
  %209 = call float @dx.op.binary.f32(i32 35, float %196, float %197)  ; FMax(a,b)
  %210 = call float @dx.op.binary.f32(i32 35, float %195, float %209)  ; FMax(a,b)
  %211 = call float @dx.op.binary.f32(i32 35, float %210, float %198)  ; FMax(a,b)
  %212 = fadd fast float %211, 1.000000e+00
  %213 = fdiv fast float 1.000000e+00, %212
  %214 = fmul fast float %203, %177
  %215 = fmul fast float %203, %178
  %216 = fmul fast float %203, %179
  %217 = fmul fast float %203, %180
  %218 = fadd fast float %146, %214
  %219 = fadd fast float %147, %215
  %220 = fadd fast float %148, %216
  %221 = fadd fast float %149, %217
  %222 = fmul fast float %208, %186
  %223 = fmul fast float %208, %187
  %224 = fmul fast float %208, %188
  %225 = fmul fast float %208, %189
  %226 = fadd fast float %154, %222
  %227 = fadd fast float %155, %223
  %228 = fadd fast float %156, %224
  %229 = fadd fast float %157, %225
  %230 = fmul fast float %213, %195
  %231 = fmul fast float %213, %196
  %232 = fmul fast float %213, %197
  %233 = fmul fast float %213, %198
  %234 = fadd fast float %162, %230
  %235 = fadd fast float %163, %231
  %236 = fadd fast float %164, %232
  %237 = fadd fast float %165, %233
  %238 = fadd fast float %166, %203
  %239 = fadd fast float %167, %208
  %240 = fadd fast float %168, %213
  %241 = add i32 %9, 1
  %242 = call i32 @dx.op.binary.i32(i32 37, i32 %241, i32 0)  ; IMax(a,b)
  %243 = call i32 @dx.op.binary.i32(i32 38, i32 %242, i32 %32)  ; IMin(a,b)
  %244 = add i32 %243, %28
  %245 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %38, i32 %244, i32 0, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %246 = extractvalue %dx.types.ResRet.f32 %245, 0
  %247 = extractvalue %dx.types.ResRet.f32 %245, 1
  %248 = extractvalue %dx.types.ResRet.f32 %245, 2
  %249 = extractvalue %dx.types.ResRet.f32 %245, 3
  %250 = fmul fast float %46, %246
  %251 = fmul fast float %46, %247
  %252 = fmul fast float %46, %248
  %253 = fmul fast float %46, %249
  %254 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %38, i32 %244, i32 1, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %255 = extractvalue %dx.types.ResRet.f32 %254, 0
  %256 = extractvalue %dx.types.ResRet.f32 %254, 1
  %257 = extractvalue %dx.types.ResRet.f32 %254, 2
  %258 = extractvalue %dx.types.ResRet.f32 %254, 3
  %259 = fmul fast float %46, %255
  %260 = fmul fast float %46, %256
  %261 = fmul fast float %46, %257
  %262 = fmul fast float %46, %258
  %263 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %38, i32 %244, i32 2, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %264 = extractvalue %dx.types.ResRet.f32 %263, 0
  %265 = extractvalue %dx.types.ResRet.f32 %263, 1
  %266 = extractvalue %dx.types.ResRet.f32 %263, 2
  %267 = extractvalue %dx.types.ResRet.f32 %263, 3
  %268 = fmul fast float %46, %264
  %269 = fmul fast float %46, %265
  %270 = fmul fast float %46, %266
  %271 = fmul fast float %46, %267
  %272 = call float @dx.op.binary.f32(i32 35, float %251, float %252)  ; FMax(a,b)
  %273 = call float @dx.op.binary.f32(i32 35, float %250, float %272)  ; FMax(a,b)
  %274 = call float @dx.op.binary.f32(i32 35, float %273, float %253)  ; FMax(a,b)
  %275 = fadd fast float %274, 1.000000e+00
  %276 = fdiv fast float 1.000000e+00, %275
  %277 = call float @dx.op.binary.f32(i32 35, float %260, float %261)  ; FMax(a,b)
  %278 = call float @dx.op.binary.f32(i32 35, float %259, float %277)  ; FMax(a,b)
  %279 = call float @dx.op.binary.f32(i32 35, float %278, float %262)  ; FMax(a,b)
  %280 = fadd fast float %279, 1.000000e+00
  %281 = fdiv fast float 1.000000e+00, %280
  %282 = call float @dx.op.binary.f32(i32 35, float %269, float %270)  ; FMax(a,b)
  %283 = call float @dx.op.binary.f32(i32 35, float %268, float %282)  ; FMax(a,b)
  %284 = call float @dx.op.binary.f32(i32 35, float %283, float %271)  ; FMax(a,b)
  %285 = fadd fast float %284, 1.000000e+00
  %286 = fdiv fast float 1.000000e+00, %285
  %287 = fmul fast float %276, %250
  %288 = fmul fast float %276, %251
  %289 = fmul fast float %276, %252
  %290 = fmul fast float %276, %253
  %291 = fadd fast float %218, %287
  %292 = fadd fast float %219, %288
  %293 = fadd fast float %220, %289
  %294 = fadd fast float %221, %290
  %295 = fmul fast float %281, %259
  %296 = fmul fast float %281, %260
  %297 = fmul fast float %281, %261
  %298 = fmul fast float %281, %262
  %299 = fadd fast float %226, %295
  %300 = fadd fast float %227, %296
  %301 = fadd fast float %228, %297
  %302 = fadd fast float %229, %298
  %303 = fmul fast float %286, %268
  %304 = fmul fast float %286, %269
  %305 = fmul fast float %286, %270
  %306 = fmul fast float %286, %271
  %307 = fadd fast float %234, %303
  %308 = fadd fast float %235, %304
  %309 = fadd fast float %236, %305
  %310 = fadd fast float %237, %306
  %311 = fadd fast float %238, %276
  %312 = fadd fast float %239, %281
  %313 = fadd fast float %240, %286
  %314 = add i32 %9, 2
  %315 = call i32 @dx.op.binary.i32(i32 37, i32 %314, i32 0)  ; IMax(a,b)
  %316 = call i32 @dx.op.binary.i32(i32 38, i32 %315, i32 %32)  ; IMin(a,b)
  %317 = add i32 %316, %28
  %318 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %38, i32 %317, i32 0, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %319 = extractvalue %dx.types.ResRet.f32 %318, 0
  %320 = extractvalue %dx.types.ResRet.f32 %318, 1
  %321 = extractvalue %dx.types.ResRet.f32 %318, 2
  %322 = extractvalue %dx.types.ResRet.f32 %318, 3
  %323 = fmul fast float %46, %319
  %324 = fmul fast float %46, %320
  %325 = fmul fast float %46, %321
  %326 = fmul fast float %46, %322
  %327 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %38, i32 %317, i32 1, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %328 = extractvalue %dx.types.ResRet.f32 %327, 0
  %329 = extractvalue %dx.types.ResRet.f32 %327, 1
  %330 = extractvalue %dx.types.ResRet.f32 %327, 2
  %331 = extractvalue %dx.types.ResRet.f32 %327, 3
  %332 = fmul fast float %46, %328
  %333 = fmul fast float %46, %329
  %334 = fmul fast float %46, %330
  %335 = fmul fast float %46, %331
  %336 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %38, i32 %317, i32 2, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %337 = extractvalue %dx.types.ResRet.f32 %336, 0
  %338 = extractvalue %dx.types.ResRet.f32 %336, 1
  %339 = extractvalue %dx.types.ResRet.f32 %336, 2
  %340 = extractvalue %dx.types.ResRet.f32 %336, 3
  %341 = fmul fast float %46, %337
  %342 = fmul fast float %46, %338
  %343 = fmul fast float %46, %339
  %344 = fmul fast float %46, %340
  %345 = call float @dx.op.binary.f32(i32 35, float %324, float %325)  ; FMax(a,b)
  %346 = call float @dx.op.binary.f32(i32 35, float %323, float %345)  ; FMax(a,b)
  %347 = call float @dx.op.binary.f32(i32 35, float %346, float %326)  ; FMax(a,b)
  %348 = fadd fast float %347, 1.000000e+00
  %349 = fdiv fast float 1.000000e+00, %348
  %350 = call float @dx.op.binary.f32(i32 35, float %333, float %334)  ; FMax(a,b)
  %351 = call float @dx.op.binary.f32(i32 35, float %332, float %350)  ; FMax(a,b)
  %352 = call float @dx.op.binary.f32(i32 35, float %351, float %335)  ; FMax(a,b)
  %353 = fadd fast float %352, 1.000000e+00
  %354 = fdiv fast float 1.000000e+00, %353
  %355 = call float @dx.op.binary.f32(i32 35, float %342, float %343)  ; FMax(a,b)
  %356 = call float @dx.op.binary.f32(i32 35, float %341, float %355)  ; FMax(a,b)
  %357 = call float @dx.op.binary.f32(i32 35, float %356, float %344)  ; FMax(a,b)
  %358 = fadd fast float %357, 1.000000e+00
  %359 = fdiv fast float 1.000000e+00, %358
  %360 = fmul fast float %349, %323
  %361 = fmul fast float %349, %324
  %362 = fmul fast float %349, %325
  %363 = fmul fast float %349, %326
  %364 = fadd fast float %291, %360
  %365 = fadd fast float %292, %361
  %366 = fadd fast float %293, %362
  %367 = fadd fast float %294, %363
  %368 = fmul fast float %354, %332
  %369 = fmul fast float %354, %333
  %370 = fmul fast float %354, %334
  %371 = fmul fast float %354, %335
  %372 = fadd fast float %299, %368
  %373 = fadd fast float %300, %369
  %374 = fadd fast float %301, %370
  %375 = fadd fast float %302, %371
  %376 = fmul fast float %359, %341
  %377 = fmul fast float %359, %342
  %378 = fmul fast float %359, %343
  %379 = fmul fast float %359, %344
  %380 = fadd fast float %307, %376
  %381 = fadd fast float %308, %377
  %382 = fadd fast float %309, %378
  %383 = fadd fast float %310, %379
  %384 = fadd fast float %311, %349
  %385 = fadd fast float %312, %354
  %386 = fadd fast float %313, %359
  %387 = fdiv fast float %364, %384
  %388 = fdiv fast float %365, %384
  %389 = fdiv fast float %366, %384
  %390 = fdiv fast float %367, %384
  %391 = extractvalue %dx.types.CBufRet.f32 %45, 0
  %392 = fmul fast float %391, %387
  %393 = fmul fast float %391, %388
  %394 = fmul fast float %391, %389
  %395 = fmul fast float %391, %390
  %396 = add i32 %27, %8
  %397 = add i32 %28, %9
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %396, i32 %397, i32 0, float %392, float %393, float %394, float %395, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %398 = fdiv fast float %372, %385
  %399 = fdiv fast float %373, %385
  %400 = fdiv fast float %374, %385
  %401 = fdiv fast float %375, %385
  %402 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %6, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %403 = extractvalue %dx.types.CBufRet.f32 %402, 0
  %404 = fmul fast float %403, %398
  %405 = fmul fast float %403, %399
  %406 = fmul fast float %403, %400
  %407 = fmul fast float %403, %401
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %396, i32 %397, i32 1, float %404, float %405, float %406, float %407, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %408 = fdiv fast float %380, %386
  %409 = fdiv fast float %381, %386
  %410 = fdiv fast float %382, %386
  %411 = fdiv fast float %383, %386
  %412 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %6, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %413 = extractvalue %dx.types.CBufRet.f32 %412, 0
  %414 = fmul fast float %413, %408
  %415 = fmul fast float %413, %409
  %416 = fmul fast float %413, %410
  %417 = fmul fast float %413, %411
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %396, i32 %397, i32 2, float %414, float %415, float %416, float %417, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %418

; <label>:418                                     ; preds = %16, %0
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @dx.op.threadId.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.binary.i32(i32, i32, i32) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32) #1

; Function Attrs: nounwind
declare void @dx.op.textureStore.f32(i32, %dx.types.Handle, i32, i32, i32, float, float, float, float, i8) #2

; Function Attrs: nounwind readnone
declare float @dx.op.binary.f32(i32, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32, %dx.types.Handle, i32) #1

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32, %dx.types.Handle, i32) #1

; Function Attrs: nounwind readonly
declare %dx.types.Handle @dx.op.createHandle(i32, i8, i32, i32, i1) #1

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32, %dx.types.Handle, i32, i32) #1

attributes #0 = { nounwind readnone }
attributes #1 = { nounwind readonly }
attributes #2 = { nounwind }

!llvm.ident = !{!0}
!dx.version = !{!1}
!dx.valver = !{!2}
!dx.shaderModel = !{!3}
!dx.resources = !{!4}
!dx.entryPoints = !{!16}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !11, !13, null}
!5 = !{!6, !7, !9}
!6 = !{i32 0, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 28, i32 1, i32 11, i32 0, null}
!7 = !{i32 1, %"class.StructuredBuffer<unsigned int>"* undef, !"", i32 0, i32 37, i32 1, i32 12, i32 0, !8}
!8 = !{i32 1, i32 4}
!9 = !{i32 2, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 0, i32 29, i32 1, i32 7, i32 0, !10}
!10 = !{i32 0, i32 9}
!11 = !{!12}
!12 = !{i32 0, %"class.RWTexture2DArray<vector<float, 4> >"* undef, !"", i32 0, i32 0, i32 1, i32 7, i1 false, i1 false, i1 false, !10}
!13 = !{!14, !15}
!14 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!15 = !{i32 1, %DeferredEffectLightConsts_decl* undef, !"", i32 0, i32 1, i32 1, i32 240, null}
!16 = !{void ()* @cs_deferred_effect_scatter_y_2, !"cs_deferred_effect_scatter_y_2", null, !4, !17}
!17 = !{i32 0, i64 272, i32 4, !18}
!18 = !{i32 1, i32 8, i32 8}
!19 = distinct !{!19, !"dx.controlflow.hints", i32 2}

