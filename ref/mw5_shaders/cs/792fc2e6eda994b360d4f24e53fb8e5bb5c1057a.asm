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
; shader hash: 0c42f6e0ee2cff75cb899c84af57a9e7
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

define void @cs_deferred_effect_scatter_y_1() {
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
  br i1 %15, label %16, label %272, !dx.controlflow.hints !19

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
  %33 = add i32 %9, -1
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
  %96 = call i32 @dx.op.binary.i32(i32 37, i32 %9, i32 0)  ; IMax(a,b)
  %97 = call i32 @dx.op.binary.i32(i32 38, i32 %96, i32 %32)  ; IMin(a,b)
  %98 = add i32 %97, %28
  %99 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %38, i32 %98, i32 0, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %100 = extractvalue %dx.types.ResRet.f32 %99, 0
  %101 = extractvalue %dx.types.ResRet.f32 %99, 1
  %102 = extractvalue %dx.types.ResRet.f32 %99, 2
  %103 = extractvalue %dx.types.ResRet.f32 %99, 3
  %104 = fmul fast float %46, %100
  %105 = fmul fast float %46, %101
  %106 = fmul fast float %46, %102
  %107 = fmul fast float %46, %103
  %108 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %38, i32 %98, i32 1, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %109 = extractvalue %dx.types.ResRet.f32 %108, 0
  %110 = extractvalue %dx.types.ResRet.f32 %108, 1
  %111 = extractvalue %dx.types.ResRet.f32 %108, 2
  %112 = extractvalue %dx.types.ResRet.f32 %108, 3
  %113 = fmul fast float %46, %109
  %114 = fmul fast float %46, %110
  %115 = fmul fast float %46, %111
  %116 = fmul fast float %46, %112
  %117 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %38, i32 %98, i32 2, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %118 = extractvalue %dx.types.ResRet.f32 %117, 0
  %119 = extractvalue %dx.types.ResRet.f32 %117, 1
  %120 = extractvalue %dx.types.ResRet.f32 %117, 2
  %121 = extractvalue %dx.types.ResRet.f32 %117, 3
  %122 = fmul fast float %46, %118
  %123 = fmul fast float %46, %119
  %124 = fmul fast float %46, %120
  %125 = fmul fast float %46, %121
  %126 = call float @dx.op.binary.f32(i32 35, float %105, float %106)  ; FMax(a,b)
  %127 = call float @dx.op.binary.f32(i32 35, float %104, float %126)  ; FMax(a,b)
  %128 = call float @dx.op.binary.f32(i32 35, float %127, float %107)  ; FMax(a,b)
  %129 = fadd fast float %128, 1.000000e+00
  %130 = fdiv fast float 1.000000e+00, %129
  %131 = call float @dx.op.binary.f32(i32 35, float %114, float %115)  ; FMax(a,b)
  %132 = call float @dx.op.binary.f32(i32 35, float %113, float %131)  ; FMax(a,b)
  %133 = call float @dx.op.binary.f32(i32 35, float %132, float %116)  ; FMax(a,b)
  %134 = fadd fast float %133, 1.000000e+00
  %135 = fdiv fast float 1.000000e+00, %134
  %136 = call float @dx.op.binary.f32(i32 35, float %123, float %124)  ; FMax(a,b)
  %137 = call float @dx.op.binary.f32(i32 35, float %122, float %136)  ; FMax(a,b)
  %138 = call float @dx.op.binary.f32(i32 35, float %137, float %125)  ; FMax(a,b)
  %139 = fadd fast float %138, 1.000000e+00
  %140 = fdiv fast float 1.000000e+00, %139
  %141 = fmul fast float %130, %104
  %142 = fmul fast float %130, %105
  %143 = fmul fast float %130, %106
  %144 = fmul fast float %130, %107
  %145 = fadd fast float %141, %84
  %146 = fadd fast float %142, %85
  %147 = fadd fast float %143, %86
  %148 = fadd fast float %144, %87
  %149 = fmul fast float %135, %113
  %150 = fmul fast float %135, %114
  %151 = fmul fast float %135, %115
  %152 = fmul fast float %135, %116
  %153 = fadd fast float %149, %88
  %154 = fadd fast float %150, %89
  %155 = fadd fast float %151, %90
  %156 = fadd fast float %152, %91
  %157 = fmul fast float %140, %122
  %158 = fmul fast float %140, %123
  %159 = fmul fast float %140, %124
  %160 = fmul fast float %140, %125
  %161 = fadd fast float %157, %92
  %162 = fadd fast float %158, %93
  %163 = fadd fast float %159, %94
  %164 = fadd fast float %160, %95
  %165 = fadd fast float %130, %73
  %166 = fadd fast float %135, %78
  %167 = fadd fast float %140, %83
  %168 = add i32 %9, 1
  %169 = call i32 @dx.op.binary.i32(i32 37, i32 %168, i32 0)  ; IMax(a,b)
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
  %218 = fadd fast float %145, %214
  %219 = fadd fast float %146, %215
  %220 = fadd fast float %147, %216
  %221 = fadd fast float %148, %217
  %222 = fmul fast float %208, %186
  %223 = fmul fast float %208, %187
  %224 = fmul fast float %208, %188
  %225 = fmul fast float %208, %189
  %226 = fadd fast float %153, %222
  %227 = fadd fast float %154, %223
  %228 = fadd fast float %155, %224
  %229 = fadd fast float %156, %225
  %230 = fmul fast float %213, %195
  %231 = fmul fast float %213, %196
  %232 = fmul fast float %213, %197
  %233 = fmul fast float %213, %198
  %234 = fadd fast float %161, %230
  %235 = fadd fast float %162, %231
  %236 = fadd fast float %163, %232
  %237 = fadd fast float %164, %233
  %238 = fadd fast float %165, %203
  %239 = fadd fast float %166, %208
  %240 = fadd fast float %167, %213
  %241 = fdiv fast float %218, %238
  %242 = fdiv fast float %219, %238
  %243 = fdiv fast float %220, %238
  %244 = fdiv fast float %221, %238
  %245 = extractvalue %dx.types.CBufRet.f32 %45, 0
  %246 = fmul fast float %245, %241
  %247 = fmul fast float %245, %242
  %248 = fmul fast float %245, %243
  %249 = fmul fast float %245, %244
  %250 = add i32 %27, %8
  %251 = add i32 %28, %9
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %250, i32 %251, i32 0, float %246, float %247, float %248, float %249, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %252 = fdiv fast float %226, %239
  %253 = fdiv fast float %227, %239
  %254 = fdiv fast float %228, %239
  %255 = fdiv fast float %229, %239
  %256 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %6, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %257 = extractvalue %dx.types.CBufRet.f32 %256, 0
  %258 = fmul fast float %257, %252
  %259 = fmul fast float %257, %253
  %260 = fmul fast float %257, %254
  %261 = fmul fast float %257, %255
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %250, i32 %251, i32 1, float %258, float %259, float %260, float %261, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %262 = fdiv fast float %234, %240
  %263 = fdiv fast float %235, %240
  %264 = fdiv fast float %236, %240
  %265 = fdiv fast float %237, %240
  %266 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %6, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %267 = extractvalue %dx.types.CBufRet.f32 %266, 0
  %268 = fmul fast float %267, %262
  %269 = fmul fast float %267, %263
  %270 = fmul fast float %267, %264
  %271 = fmul fast float %267, %265
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %250, i32 %251, i32 2, float %268, float %269, float %270, float %271, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %272

; <label>:272                                     ; preds = %16, %0
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
!16 = !{void ()* @cs_deferred_effect_scatter_y_1, !"cs_deferred_effect_scatter_y_1", null, !4, !17}
!17 = !{i32 0, i64 272, i32 4, !18}
!18 = !{i32 1, i32 8, i32 8}
!19 = distinct !{!19, !"dx.controlflow.hints", i32 2}

