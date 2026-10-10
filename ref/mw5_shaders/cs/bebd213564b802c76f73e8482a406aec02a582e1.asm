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
; shader hash: 981c36531b54b43c4ecd1c65fa6dcb3b
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
;   [16 x i8] (type annotation not present)
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
;
; Resource Bindings:
;
; Name                                 Type  Format         Dim      ID      HLSL Bind  Count
; ------------------------------ ---------- ------- ----------- ------- -------------- ------
;                                   cbuffer      NA          NA     CB0            cb3     1
;                                   cbuffer      NA          NA     CB1            cb4     1
;                                   cbuffer      NA          NA     CB2            cb1     1
;                                   sampler      NA          NA      S0             s1     1
;                                   texture    byte         r/o      T0             t0     1
;                                   texture    byte         r/o      T1             t1     1
;                                   texture    byte         r/o      T2             t2     1
;                                   texture    byte         r/o      T3             t3     1
;                                   texture    byte         r/o      T4             t8     1
;                                   texture    byte         r/o      T5             t4     1
;                                   texture    byte         r/o      T6             t5     1
;                                   texture    byte         r/o      T7             t6     1
;                                   texture    byte         r/o      T8             t7     1
;                                   texture    byte         r/o      T9            t28     1
;                                   texture    byte         r/o     T10            t30     1
;                                   texture     f32          2d     T11            t14     1
;                                   texture    byte         r/o     T12            t34     1
;                                       UAV     f32          2d      U0             u0     1
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.CBufRet.i32 = type { i32, i32, i32, i32 }
%dx.types.ResRet.i32 = type { i32, i32, i32, i32, i32 }
%dx.types.CBufRet.f32 = type { float, float, float, float }
%dx.types.ResRet.f32 = type { float, float, float, float, i32 }
%struct.ByteAddressBuffer = type { i32 }
%"class.Texture2D<vector<float, 4> >" = type { <4 x float>, %"class.Texture2D<vector<float, 4> >::mips_type" }
%"class.Texture2D<vector<float, 4> >::mips_type" = type { i32 }
%"class.RWTexture2D<float>" = type { float }
%hostlayout.scene = type { %hostlayout.struct.GfxCodeSceneConsts }
%hostlayout.struct.GfxCodeSceneConsts = type { <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <3 x float>, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x i32>, <4 x i32>, <4 x float>, float, float, float, float, i32, i32, float, float, <2 x i32>, <2 x i32>, <2 x float>, <2 x float>, <3 x float>, i32, <3 x float>, float, <3 x float>, float, <2 x float>, <2 x float>, <3 x float>, float, <3 x float>, float, float, float, float, float, <3 x float>, float, i32, float, float, float, <4 x float>, <3 x float>, float, float, float, float, float, <4 x float>, float, float, float, float, i32, i32, i32, float, <4 x float>, i32, i32, i32, i32, i32, i32, i32, i32, <2 x i32>, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, [2 x <4 x i32>], [3 x <2 x float>], i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <2 x float>, <2 x float>, <4 x float>, <4 x i32>, <4 x float>, i32, float, float, float, i32, i32, i32, i32, <2 x float>, <2 x float>, <2 x float>, <2 x float>, i32, i32, <2 x float>, <2 x float>, <2 x float>, <3 x float>, i32, i32, i32, i32, i32, <4 x i32>, <4 x i32>, <4 x i32>, <4 x float>, i32, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <3 x float>, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], <4 x float>, [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], i32, i32, float, i32, <2 x float>, float, float, float, float, float, i32, <3 x float>, float, float, float, float, float, <3 x float>, float, <3 x float>, float, <3 x float>, float, float, float, float, float, <2 x float>, <2 x float>, float, float, float, float, <3 x float>, float, <2 x float>, i32, i32, <3 x float>, float, float, float, float, float, float, float, float, float, [4 x <3 x float>], i32, [4 x <3 x float>], i32, [4 x <3 x float>], i32, <4 x i32>, <2 x float>, <2 x float>, <2 x float>, i32, i32, float, float, float, float, <4 x float>, <4 x i32>, <4 x float>, <4 x float>, <4 x float>, i32, i32, i32, i32, <4 x float>, i32, float, float, i32, i32, float, float, i32, i32, float, float, i32, i32, float, float, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, float, float, float, float, i32, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, i32, i32, i32, float, <4 x float>, <4 x float>, <4 x float>, <4 x float>, i32, i32, i32, float, <4 x float>, float, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x i32>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [8 x <4 x float>], [8 x <4 x float>], <4 x float>, <3 x float>, i32, <2 x float>, float, float, float, float, float, float, <2 x float>, <2 x float>, <2 x float>, <2 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <2 x float>, float, float, <4 x float>, i32, i32, i32, i32, <3 x float>, i32, <4 x i32>, <4 x i32>, <2 x float>, <2 x i32>, <4 x float>, <4 x float>, <2 x float>, <2 x float>, [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, float, i32, i32, i32, i32, i32, float, float, <2 x float>, <2 x float>, float, float, float, float, i32, float, float, float, float, float, float, float, float, float, float, float, float, i32, i32, i32, float, float, float, i32, <2 x i32>, <2 x i32>, <4 x i32>, float, float, float, float, <4 x float>, <4 x float>, <2 x float>, <2 x float>, <4 x float>, <4 x float>, float, float, float, float, <4 x float>, float, float, float, float, i32, i32, float, float, <4 x float>, <2 x float>, <2 x float>, i32, i32, float, float, [4 x <4 x float>], float, float, float, float, float, float, float, float, i32, i32, i32, float, <4 x float>, <4 x float>, i32, i32, i32, i32, <2 x i32>, <2 x i32>, [2 x <4 x i32>], i32, float, float, float, i32, float, float, i32, <2 x i32>, <2 x float>, float, float, float, i32, %struct.GfxWeatherData, %hostlayout.struct.GfxVolumetricData, %struct.GfxFogRaymarchingData, %struct.GfxEnvironmentalFogData, %struct.GfxShallowWaterData, %struct.GfxGroundDeformationData, %struct.GfxSplinedModelGlobals }
%struct.GfxWeatherData = type { i32, i32, i32, i32, float, float, float, float, float, float, i32, i32, float, float, float, float, i32, i32, i32, i32, float, float, float, float, float, i32, i32, i32, i32, i32, i32, i32, <3 x float>, i32, <3 x float>, i32, i32, float, i32, i32, float, float, float, float }
%hostlayout.struct.GfxVolumetricData = type { [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <2 x float>, <2 x float>, <2 x float>, <2 x float>, <3 x i32>, i32, <3 x float>, i32, <4 x float>, <3 x float>, i32, i32, float, float, float, i32, i32, i32, float, <4 x float>, float, float, i32, i32, <3 x float>, i32, <3 x float>, float, <3 x float>, float, <2 x float>, float, float, <3 x float>, float, <3 x float>, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, <3 x float>, float, i32, float, float, float, <3 x float>, float, <2 x float>, <2 x float>, <3 x float>, float, i32, float, float, float, float, float, float, float, i32, i32, float, float, <3 x float>, float, i32, i32, <2 x float> }
%struct.GfxFogRaymarchingData = type { <2 x float>, <2 x float>, float, float, float, float, float, float, float, float, float, float, float, float, <2 x float>, <2 x float>, <3 x float>, float }
%struct.GfxEnvironmentalFogData = type { float, float, float, i32 }
%struct.GfxShallowWaterData = type { i32, i32, i32, i32, float, float, float, float, <2 x float>, <2 x float>, float, float, float, float, <3 x float>, float, float, float, float, float, float, float, float, float, i32, float, float, float, float, float, float, float, float, float, float, float, i32, float, float, float, float, i32, i32, i32 }
%struct.GfxGroundDeformationData = type { <2 x float>, <2 x float>, float, float, float, float, float, float, float, float, float, float, float, float, float, float, i32, i32 }
%struct.GfxSplinedModelGlobals = type { [64 x <4 x float>], [64 x <4 x float>], [16 x <4 x float>], [32 x <4 x float>], [64 x <4 x float>], [16 x <4 x float>], [16 x <4 x float>], float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float }
%GfxLGBoundConsts = type { i32, i32, i32, i32 }
%DeferredEffectLightConsts_decl = type { %struct.DeferredEffectLightConsts }
%struct.DeferredEffectLightConsts = type { i32, float, float, i32, i32, i32, i32, i32, i32, i32, i32, i32, [12 x <4 x i32>] }
%struct.SamplerState = type { i32 }

@PCF_OFFSETS_8.v.1dim = internal constant [16 x float] [float 0xBFE6A09020000000, float 0x3FE6A09020000000, float 0.000000e+00, float -8.750000e-01, float 0x3FE0F837C0000000, float 0x3FE0F837C0000000, float -6.250000e-01, float 0.000000e+00, float 0x3FD6A161E0000000, float 0xBFD6A161E0000000, float 0.000000e+00, float 3.750000e-01, float 0xBFC6A161E0000000, float 0xBFC6A161E0000000, float 1.250000e-01, float 0.000000e+00], align 4

define void @cs_light_sensor_baked() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 12, i32 34, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 11, i32 14, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 30, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 28, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 7, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 2, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = alloca [4 x i32], align 4
  %20 = call i32 @dx.op.threadId.i32(i32 93, i32 0)  ; ThreadId(component)
  %21 = call i32 @dx.op.threadId.i32(i32 93, i32 1)  ; ThreadId(component)
  %22 = alloca [12 x float], align 4
  %23 = alloca [12 x float], align 4
  %24 = alloca [4 x i32], align 4
  %25 = alloca [4 x float], align 4
  %26 = alloca [4 x i32], align 4
  %27 = alloca [4 x float], align 4
  %28 = alloca [4 x float], align 4
  %29 = shl i32 %21, 6
  %30 = add i32 %29, %20
  %31 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %16, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %32 = extractvalue %dx.types.CBufRet.i32 %31, 0
  %33 = icmp ult i32 %30, %32
  br i1 %33, label %35, label %34, !dx.controlflow.hints !31

; <label>:34                                      ; preds = %0
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %20, i32 %21, i32 undef, float -1.000000e+00, float -1.000000e+00, float -1.000000e+00, float -1.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %1670

; <label>:35                                      ; preds = %0
  %36 = shl i32 %30, 4
  %37 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %36, i32 undef)  ; BufferLoad(srv,index,wot)
  %38 = extractvalue %dx.types.ResRet.i32 %37, 0
  %39 = extractvalue %dx.types.ResRet.i32 %37, 1
  %40 = extractvalue %dx.types.ResRet.i32 %37, 2
  %41 = extractvalue %dx.types.ResRet.i32 %37, 3
  %42 = bitcast i32 %38 to float
  %43 = bitcast i32 %39 to float
  %44 = bitcast i32 %40 to float
  %45 = and i32 %41, 255
  %46 = lshr i32 %41, 8
  %47 = and i32 %46, 255
  %48 = lshr i32 %41, 16
  %49 = and i32 %48, 255
  %50 = sitofp i32 %45 to float
  %51 = sitofp i32 %47 to float
  %52 = sitofp i32 %49 to float
  %53 = fmul fast float %50, 0x3F80101020000000
  %54 = fmul fast float %51, 0x3F80101020000000
  %55 = fmul fast float %52, 0x3F80101020000000
  %56 = fadd fast float %53, -1.000000e+00
  %57 = fadd fast float %54, -1.000000e+00
  %58 = fadd fast float %55, -1.000000e+00
  %59 = lshr i32 %41, 24
  %60 = uitofp i32 %59 to float
  %61 = call float @dx.op.dot3.f32(i32 55, float %56, float %57, float %58, float %56, float %57, float %58)  ; Dot3(ax,ay,az,bx,by,bz)
  %62 = fcmp fast ogt float %61, 0x3FE9EB8520000000
  %63 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %64 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %65 = extractvalue %dx.types.CBufRet.f32 %64, 3
  %66 = fcmp fast oeq float %65, 0.000000e+00
  br i1 %66, label %421, label %67, !dx.controlflow.hints !32

; <label>:67                                      ; preds = %35
  %68 = extractvalue %dx.types.CBufRet.f32 %63, 2
  %69 = fsub fast float %44, %68
  %70 = extractvalue %dx.types.CBufRet.f32 %63, 1
  %71 = fsub fast float %43, %70
  %72 = extractvalue %dx.types.CBufRet.f32 %63, 0
  %73 = fsub fast float %42, %72
  %74 = extractvalue %dx.types.CBufRet.f32 %64, 0
  %75 = extractvalue %dx.types.CBufRet.f32 %64, 1
  %76 = extractvalue %dx.types.CBufRet.f32 %64, 2
  %77 = fmul fast float %74, %60
  %78 = fmul fast float %75, %60
  %79 = fmul fast float %76, %60
  %80 = fadd fast float %77, %73
  %81 = fadd fast float %78, %71
  %82 = fadd fast float %79, %69
  %83 = fcmp fast olt float %65, 0.000000e+00
  br i1 %83, label %421, label %84, !dx.controlflow.hints !33

; <label>:84                                      ; preds = %67
  %85 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %86 = extractvalue %dx.types.CBufRet.f32 %85, 0
  %87 = extractvalue %dx.types.CBufRet.f32 %85, 1
  %88 = extractvalue %dx.types.CBufRet.f32 %85, 2
  %89 = extractvalue %dx.types.CBufRet.f32 %85, 3
  %90 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %91 = extractvalue %dx.types.CBufRet.f32 %90, 0
  %92 = extractvalue %dx.types.CBufRet.f32 %90, 1
  %93 = extractvalue %dx.types.CBufRet.f32 %90, 2
  %94 = extractvalue %dx.types.CBufRet.f32 %90, 3
  %95 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %96 = extractvalue %dx.types.CBufRet.f32 %95, 0
  %97 = extractvalue %dx.types.CBufRet.f32 %95, 1
  %98 = extractvalue %dx.types.CBufRet.f32 %95, 2
  %99 = extractvalue %dx.types.CBufRet.f32 %95, 3
  %100 = fmul fast float %86, %80
  %101 = call float @dx.op.tertiary.f32(i32 46, float %81, float %87, float %100)  ; FMad(a,b,c)
  %102 = call float @dx.op.tertiary.f32(i32 46, float %82, float %88, float %101)  ; FMad(a,b,c)
  %103 = fadd fast float %102, %89
  %104 = fmul fast float %91, %80
  %105 = call float @dx.op.tertiary.f32(i32 46, float %81, float %92, float %104)  ; FMad(a,b,c)
  %106 = call float @dx.op.tertiary.f32(i32 46, float %82, float %93, float %105)  ; FMad(a,b,c)
  %107 = fadd fast float %106, %94
  %108 = fmul fast float %96, %80
  %109 = call float @dx.op.tertiary.f32(i32 46, float %81, float %97, float %108)  ; FMad(a,b,c)
  %110 = call float @dx.op.tertiary.f32(i32 46, float %82, float %98, float %109)  ; FMad(a,b,c)
  %111 = fadd fast float %110, %99
  %112 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %113 = extractvalue %dx.types.CBufRet.f32 %112, 0
  %114 = extractvalue %dx.types.CBufRet.f32 %112, 1
  %115 = extractvalue %dx.types.CBufRet.f32 %112, 3
  %116 = fmul fast float %115, %103
  %117 = fmul fast float %115, %107
  %118 = fadd fast float %116, %113
  %119 = fadd fast float %117, %114
  %120 = extractvalue %dx.types.CBufRet.f32 %112, 2
  %121 = fcmp fast olt float %120, 0.000000e+00
  %122 = fsub fast float -0.000000e+00, %120
  %123 = select i1 %121, float %122, float %120
  %124 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %125 = extractvalue %dx.types.CBufRet.f32 %124, 1
  %126 = fadd fast float %123, %125
  %127 = fcmp fast ogt float %126, 0.000000e+00
  br i1 %127, label %128, label %160, !dx.controlflow.hints !34

; <label>:128                                     ; preds = %84
  %129 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %130 = extractvalue %dx.types.CBufRet.f32 %129, 1
  %131 = fsub fast float %130, %111
  %132 = extractvalue %dx.types.CBufRet.f32 %129, 2
  %133 = fmul fast float %131, %132
  %134 = fsub fast float 1.000000e+00, %133
  %135 = call float @dx.op.unary.f32(i32 7, float %134)  ; Saturate(value)
  %136 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %137 = extractvalue %dx.types.CBufRet.f32 %136, 0
  %138 = extractvalue %dx.types.CBufRet.f32 %136, 1
  %139 = fsub fast float %118, %137
  %140 = fsub fast float %119, %138
  %141 = fcmp fast olt float %139, 0.000000e+00
  %142 = fcmp fast olt float %140, 0.000000e+00
  %143 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %144 = extractvalue %dx.types.CBufRet.f32 %143, 0
  %145 = extractvalue %dx.types.CBufRet.f32 %143, 1
  %146 = extractvalue %dx.types.CBufRet.f32 %143, 2
  %147 = extractvalue %dx.types.CBufRet.f32 %143, 3
  %148 = select i1 %141, float %144, float %146
  %149 = select i1 %142, float %145, float %147
  %150 = fmul fast float %148, %139
  %151 = fmul fast float %149, %140
  %152 = call float @dx.op.unary.f32(i32 6, float %150)  ; FAbs(value)
  %153 = call float @dx.op.unary.f32(i32 6, float %151)  ; FAbs(value)
  %154 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %155 = extractvalue %dx.types.CBufRet.f32 %154, 0
  %156 = call float @dx.op.binary.f32(i32 35, float %152, float %153)  ; FMax(a,b)
  %157 = fsub fast float %155, %156
  %158 = call float @dx.op.unary.f32(i32 7, float %157)  ; Saturate(value)
  %159 = fmul fast float %158, %135
  br label %160

; <label>:160                                     ; preds = %128, %84
  %161 = phi float [ %159, %128 ], [ 0.000000e+00, %84 ]
  %162 = call float @dx.op.binary.f32(i32 35, float %161, float 0.000000e+00)  ; FMax(a,b)
  %163 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %162)  ; FMax(a,b)
  %164 = fcmp fast olt float %163, 1.000000e+00
  br i1 %164, label %165, label %382, !dx.controlflow.hints !35

; <label>:165                                     ; preds = %160
  %166 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %167 = extractvalue %dx.types.CBufRet.f32 %166, 0
  %168 = fcmp fast une float %167, 0.000000e+00
  br i1 %168, label %169, label %382, !dx.controlflow.hints !36

; <label>:169                                     ; preds = %165
  %170 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %171 = extractvalue %dx.types.CBufRet.f32 %170, 0
  %172 = extractvalue %dx.types.CBufRet.f32 %170, 1
  %173 = extractvalue %dx.types.CBufRet.f32 %170, 2
  %174 = extractvalue %dx.types.CBufRet.f32 %170, 3
  %175 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %176 = extractvalue %dx.types.CBufRet.f32 %175, 0
  %177 = extractvalue %dx.types.CBufRet.f32 %175, 1
  %178 = extractvalue %dx.types.CBufRet.f32 %175, 2
  %179 = extractvalue %dx.types.CBufRet.f32 %175, 3
  %180 = fmul fast float %171, %80
  %181 = call float @dx.op.tertiary.f32(i32 46, float %81, float %172, float %180)  ; FMad(a,b,c)
  %182 = call float @dx.op.tertiary.f32(i32 46, float %82, float %173, float %181)  ; FMad(a,b,c)
  %183 = fadd fast float %182, %174
  %184 = fmul fast float %176, %80
  %185 = call float @dx.op.tertiary.f32(i32 46, float %81, float %177, float %184)  ; FMad(a,b,c)
  %186 = call float @dx.op.tertiary.f32(i32 46, float %82, float %178, float %185)  ; FMad(a,b,c)
  %187 = fadd fast float %186, %179
  %188 = fcmp fast oge float %183, 1.000000e+00
  %189 = fcmp fast oge float %187, 1.000000e+00
  %190 = or i1 %188, %189
  %191 = fcmp fast olt float %183, 0.000000e+00
  %192 = fcmp fast olt float %187, 0.000000e+00
  %193 = or i1 %191, %192
  %194 = or i1 %190, %193
  br i1 %194, label %382, label %195, !dx.controlflow.hints !37

; <label>:195                                     ; preds = %169
  %196 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %197 = extractvalue %dx.types.CBufRet.f32 %196, 0
  %198 = extractvalue %dx.types.CBufRet.f32 %196, 1
  %199 = extractvalue %dx.types.CBufRet.f32 %196, 2
  %200 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %18, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %201 = extractvalue %dx.types.CBufRet.i32 %200, 2
  %202 = uitofp i32 %201 to float
  %203 = extractvalue %dx.types.CBufRet.i32 %200, 3
  %204 = uitofp i32 %203 to float
  %205 = extractvalue %dx.types.CBufRet.f32 %196, 3
  %206 = fmul fast float %205, 2.000000e+00
  %207 = fsub fast float %183, %197
  %208 = fsub fast float %187, %198
  %209 = fmul fast float %206, %207
  %210 = fmul fast float %206, %208
  %211 = fdiv fast float 1.000000e+00, %76
  %212 = fmul fast float %210, %211
  %213 = call float @dx.op.unary.f32(i32 6, float %212)  ; FAbs(value)
  %214 = fmul fast float %199, %82
  %215 = fmul fast float %214, %206
  %216 = call float @dx.op.unary.f32(i32 6, float %215)  ; FAbs(value)
  %217 = call float @dx.op.unary.f32(i32 6, float %209)  ; FAbs(value)
  %218 = call float @dx.op.binary.f32(i32 35, float %216, float %213)  ; FMax(a,b)
  %219 = call float @dx.op.binary.f32(i32 35, float %217, float %218)  ; FMax(a,b)
  %220 = fmul fast float %219, 2.000000e+00
  %221 = call float @dx.op.unary.f32(i32 23, float %220)  ; Log(value)
  %222 = call float @dx.op.binary.f32(i32 35, float %221, float %202)  ; FMax(a,b)
  %223 = call float @dx.op.unary.f32(i32 22, float %222)  ; Frc(value)
  %224 = fadd fast float %223, 0xBFEA666660000000
  %225 = fmul fast float %224, 8.000000e+00
  %226 = call float @dx.op.unary.f32(i32 7, float %225)  ; Saturate(value)
  %227 = call float @dx.op.unary.f32(i32 27, float %222)  ; Round_ni(value)
  %228 = fadd fast float %227, %226
  %229 = call float @dx.op.binary.f32(i32 36, float %228, float %204)  ; FMin(a,b)
  %230 = call float @dx.op.unary.f32(i32 27, float %229)  ; Round_ni(value)
  %231 = fsub fast float -0.000000e+00, %230
  %232 = call float @dx.op.unary.f32(i32 21, float %231)  ; Exp(value)
  %233 = fmul fast float %232, %206
  %234 = fsub fast float %204, %202
  %235 = fptoui float %234 to i32
  %236 = add i32 %235, 320
  %237 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 %236)  ; CBufferLoadLegacy(handle,regIndex)
  %238 = extractvalue %dx.types.CBufRet.f32 %237, 0
  %239 = extractvalue %dx.types.CBufRet.f32 %237, 1
  %240 = fcmp fast une float %229, %204
  %241 = fsub fast float %183, %238
  %242 = fsub fast float %187, %239
  %243 = call float @dx.op.unary.f32(i32 6, float %241)  ; FAbs(value)
  %244 = call float @dx.op.unary.f32(i32 6, float %242)  ; FAbs(value)
  %245 = fmul fast float %243, %233
  %246 = fmul fast float %244, %233
  %247 = fcmp fast olt float %245, 1.000000e+00
  %248 = fcmp fast olt float %246, 1.000000e+00
  %249 = and i1 %247, %248
  %250 = or i1 %240, %249
  br i1 %250, label %251, label %382, !dx.controlflow.hints !38

; <label>:251                                     ; preds = %195
  %252 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %253 = extractvalue %dx.types.ResRet.i32 %252, 0
  %254 = and i32 %253, 536870911
  %255 = uitofp i32 %254 to float
  %256 = fmul fast float %255, %183
  %257 = fmul fast float %255, %187
  %258 = fptoui float %256 to i32
  %259 = fptoui float %257 to i32
  %260 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %261 = extractvalue %dx.types.ResRet.i32 %260, 0
  %262 = and i32 %261, 31
  %263 = lshr i32 %258, %262
  %264 = lshr i32 %259, %262
  %265 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %266 = extractvalue %dx.types.ResRet.i32 %265, 0
  %267 = and i32 %266, 31
  %268 = shl i32 1, %267
  %269 = call i32 @dx.op.binary.i32(i32 40, i32 %268, i32 4)  ; UMin(a,b)
  %270 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %271 = extractvalue %dx.types.ResRet.i32 %270, 0
  %272 = extractvalue %dx.types.ResRet.i32 %270, 1
  %273 = icmp eq i32 %269, 0
  br i1 %273, label %315, label %274

; <label>:274                                     ; preds = %251
  br label %275

; <label>:275                                     ; preds = %303, %274
  %276 = phi i32 [ %306, %303 ], [ 0, %274 ]
  %277 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %278 = extractvalue %dx.types.ResRet.i32 %277, 0
  %279 = lshr i32 %278, 16
  %280 = and i32 %279, 31
  %281 = shl i32 %264, %280
  %282 = add i32 %281, %263
  %283 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %284 = extractvalue %dx.types.ResRet.i32 %283, 0
  %285 = and i32 %284, 31
  %286 = shl i32 %282, %285
  %287 = add i32 %286, %276
  %288 = shl i32 %287, 2
  %289 = add i32 %288, 32
  %290 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %289, i32 undef)  ; BufferLoad(srv,index,wot)
  %291 = extractvalue %dx.types.ResRet.i32 %290, 0
  %292 = icmp slt i32 %291, 0
  %293 = getelementptr [12 x float], [12 x float]* %22, i32 0, i32 %276
  %294 = getelementptr [12 x float], [12 x float]* %23, i32 0, i32 %276
  %295 = bitcast float* %293 to i32*
  %296 = bitcast float* %294 to i32*
  br i1 %292, label %297, label %303, !dx.controlflow.hints !39

; <label>:297                                     ; preds = %275
  %298 = and i32 %291, 1073741823
  %299 = add nuw nsw i32 %298, 20
  %300 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %299, i32 undef)  ; BufferLoad(srv,index,wot)
  %301 = extractvalue %dx.types.ResRet.i32 %300, 0
  %302 = extractvalue %dx.types.ResRet.i32 %300, 1
  br label %303

; <label>:303                                     ; preds = %297, %275
  %304 = phi i32 [ %301, %297 ], [ %271, %275 ]
  %305 = phi i32 [ %302, %297 ], [ %272, %275 ]
  store i32 %304, i32* %295, align 4
  store i32 %305, i32* %296, align 4
  %306 = add nuw i32 %276, 1
  %307 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %18, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %308 = extractvalue %dx.types.CBufRet.i32 %307, 2
  %309 = icmp eq i32 %308, 0
  %310 = icmp ugt i32 %291, -1073741825
  %311 = and i1 %310, %309
  %312 = icmp ult i32 %306, %269
  %313 = and i1 %311, %312
  br i1 %313, label %275, label %314, !dx.controlflow.hints !40

; <label>:314                                     ; preds = %303
  br label %315

; <label>:315                                     ; preds = %314, %251
  %316 = phi i32 [ 0, %251 ], [ %306, %314 ]
  %317 = extractvalue %dx.types.CBufRet.f32 %166, 2
  %318 = fptoui float %317 to i32
  %319 = icmp eq i32 %318, 0
  br i1 %319, label %371, label %320

; <label>:320                                     ; preds = %315
  br label %321

; <label>:321                                     ; preds = %366, %320
  %322 = phi i32 [ %367, %366 ], [ %316, %320 ]
  %323 = phi i32 [ %368, %366 ], [ 0, %320 ]
  %324 = lshr i32 %323, 2
  %325 = and i32 %323, 3
  %326 = add nuw nsw i32 %324, 83
  %327 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %18, i32 %326)  ; CBufferLoadLegacy(handle,regIndex)
  %328 = extractvalue %dx.types.CBufRet.i32 %327, 0
  %329 = extractvalue %dx.types.CBufRet.i32 %327, 1
  %330 = extractvalue %dx.types.CBufRet.i32 %327, 2
  %331 = extractvalue %dx.types.CBufRet.i32 %327, 3
  %332 = getelementptr inbounds [4 x i32], [4 x i32]* %19, i32 0, i32 0
  store i32 %328, i32* %332, align 4
  %333 = getelementptr inbounds [4 x i32], [4 x i32]* %19, i32 0, i32 1
  store i32 %329, i32* %333, align 4
  %334 = getelementptr inbounds [4 x i32], [4 x i32]* %19, i32 0, i32 2
  store i32 %330, i32* %334, align 4
  %335 = getelementptr inbounds [4 x i32], [4 x i32]* %19, i32 0, i32 3
  store i32 %331, i32* %335, align 4
  %336 = getelementptr inbounds [4 x i32], [4 x i32]* %19, i32 0, i32 %325
  %337 = load i32, i32* %336, align 4, !tbaa !41, !noalias !45
  %338 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %339 = extractvalue %dx.types.ResRet.i32 %338, 0
  %340 = lshr i32 %339, 16
  %341 = and i32 %340, 31
  %342 = shl i32 %264, %341
  %343 = add i32 %342, %263
  %344 = shl i32 %343, 2
  %345 = add i32 %344, %337
  %346 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %345, i32 undef)  ; BufferLoad(srv,index,wot)
  %347 = extractvalue %dx.types.ResRet.i32 %346, 0
  %348 = icmp eq i32 %347, 0
  br i1 %348, label %366, label %349, !dx.controlflow.hints !50

; <label>:349                                     ; preds = %321
  %350 = icmp slt i32 %347, 0
  %351 = getelementptr [12 x float], [12 x float]* %22, i32 0, i32 %322
  %352 = getelementptr [12 x float], [12 x float]* %23, i32 0, i32 %322
  %353 = bitcast float* %351 to i32*
  %354 = bitcast float* %352 to i32*
  br i1 %350, label %355, label %362, !dx.controlflow.hints !51

; <label>:355                                     ; preds = %349
  %356 = and i32 %347, 1073741823
  %357 = add i32 %337, 20
  %358 = add i32 %357, %356
  %359 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %358, i32 undef)  ; BufferLoad(srv,index,wot)
  %360 = extractvalue %dx.types.ResRet.i32 %359, 0
  %361 = extractvalue %dx.types.ResRet.i32 %359, 1
  br label %362

; <label>:362                                     ; preds = %355, %349
  %363 = phi i32 [ %360, %355 ], [ %271, %349 ]
  %364 = phi i32 [ %361, %355 ], [ %272, %349 ]
  store i32 %363, i32* %353, align 4
  store i32 %364, i32* %354, align 4
  %365 = add i32 %322, 1
  br label %366

; <label>:366                                     ; preds = %362, %321
  %367 = phi i32 [ %322, %321 ], [ %365, %362 ]
  %368 = add nuw i32 %323, 1
  %369 = icmp eq i32 %368, %318
  br i1 %369, label %370, label %321

; <label>:370                                     ; preds = %366
  br label %371

; <label>:371                                     ; preds = %370, %315
  %372 = phi i32 [ %316, %315 ], [ %367, %370 ]
  %373 = icmp eq i32 %372, 1
  br i1 %373, label %382, label %374, !dx.controlflow.hints !52

; <label>:374                                     ; preds = %371
  %375 = icmp ugt i32 %372, 1
  br i1 %375, label %376, label %382

; <label>:376                                     ; preds = %374
  br label %377

; <label>:377                                     ; preds = %377, %376
  %378 = phi i32 [ %379, %377 ], [ 1, %376 ]
  %379 = add nuw i32 %378, 1
  %380 = icmp eq i32 %379, %372
  br i1 %380, label %381, label %377

; <label>:381                                     ; preds = %377
  br label %382

; <label>:382                                     ; preds = %381, %374, %371, %195, %169, %165, %160
  %383 = fcmp fast ogt float %161, 0.000000e+00
  br i1 %383, label %384, label %421, !dx.controlflow.hints !53

; <label>:384                                     ; preds = %382
  %385 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %386 = extractvalue %dx.types.CBufRet.f32 %385, 1
  %387 = fcmp fast oeq float %386, 0.000000e+00
  br i1 %387, label %421, label %388, !dx.controlflow.hints !54

; <label>:388                                     ; preds = %384
  br label %389

; <label>:389                                     ; preds = %417, %388
  %390 = phi i32 [ %418, %417 ], [ 0, %388 ]
  %391 = mul i32 %390, 2
  %392 = add i32 0, %391
  %393 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %392
  %394 = load float, float* %393, align 4
  %395 = mul i32 %390, 2
  %396 = add i32 1, %395
  %397 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %396
  %398 = load float, float* %397, align 4
  %399 = call float @dx.op.tertiary.f32(i32 46, float %398, float -0.000000e+00, float %394)  ; FMad(a,b,c)
  %400 = fmul fast float %399, %386
  %401 = fmul fast float %398, %386
  %402 = fadd fast float %400, %118
  %403 = fadd fast float %401, %119
  %404 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %3, %dx.types.Handle %15, float %402, float %403, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %405 = extractvalue %dx.types.ResRet.f32 %404, 0
  %406 = extractvalue %dx.types.ResRet.f32 %404, 1
  %407 = extractvalue %dx.types.ResRet.f32 %404, 2
  %408 = extractvalue %dx.types.ResRet.f32 %404, 3
  %409 = getelementptr inbounds [4 x float], [4 x float]* %28, i32 0, i32 0
  store float %405, float* %409, align 4
  %410 = getelementptr inbounds [4 x float], [4 x float]* %28, i32 0, i32 1
  store float %406, float* %410, align 4
  %411 = getelementptr inbounds [4 x float], [4 x float]* %28, i32 0, i32 2
  store float %407, float* %411, align 4
  %412 = getelementptr inbounds [4 x float], [4 x float]* %28, i32 0, i32 3
  store float %408, float* %412, align 4
  br label %413

; <label>:413                                     ; preds = %413, %389
  %414 = phi i32 [ 1, %389 ], [ %415, %413 ]
  %415 = add nuw nsw i32 %414, 1
  %416 = icmp eq i32 %415, 4
  br i1 %416, label %417, label %413, !llvm.loop !55

; <label>:417                                     ; preds = %413
  %418 = add nuw nsw i32 %390, 1
  %419 = icmp eq i32 %418, 8
  br i1 %419, label %420, label %389, !llvm.loop !57

; <label>:420                                     ; preds = %417
  br label %421

; <label>:421                                     ; preds = %420, %384, %382, %67, %35
  %422 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %16, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %423 = extractvalue %dx.types.CBufRet.i32 %422, 2
  %424 = extractvalue %dx.types.CBufRet.i32 %422, 1
  %425 = extractvalue %dx.types.CBufRet.i32 %422, 0
  %426 = getelementptr inbounds [4 x float], [4 x float]* %25, i32 0, i32 0
  store float 0.000000e+00, float* %426, align 4
  %427 = getelementptr inbounds [4 x float], [4 x float]* %25, i32 0, i32 1
  store float 0.000000e+00, float* %427, align 4
  %428 = getelementptr inbounds [4 x float], [4 x float]* %25, i32 0, i32 2
  store float 0.000000e+00, float* %428, align 4
  %429 = getelementptr inbounds [4 x float], [4 x float]* %25, i32 0, i32 3
  store float 0.000000e+00, float* %429, align 4
  %430 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %431 = extractvalue %dx.types.ResRet.i32 %430, 0
  %432 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %433 = extractvalue %dx.types.ResRet.i32 %432, 0
  %434 = extractvalue %dx.types.ResRet.i32 %432, 1
  %435 = extractvalue %dx.types.ResRet.i32 %432, 2
  %436 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 32, i32 undef)  ; BufferLoad(srv,index,wot)
  %437 = extractvalue %dx.types.ResRet.f32 %436, 0
  %438 = extractvalue %dx.types.ResRet.f32 %436, 1
  %439 = extractvalue %dx.types.ResRet.f32 %436, 2
  %440 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 48, i32 undef)  ; BufferLoad(srv,index,wot)
  %441 = extractvalue %dx.types.ResRet.f32 %440, 0
  %442 = extractvalue %dx.types.ResRet.f32 %440, 1
  %443 = extractvalue %dx.types.ResRet.f32 %440, 2
  %444 = fsub fast float %42, %437
  %445 = fsub fast float %43, %438
  %446 = fsub fast float %44, %439
  %447 = fptoui float %444 to i32
  %448 = fptoui float %445 to i32
  %449 = fptoui float %446 to i32
  %450 = fcmp fast olt float %42, %437
  %451 = fcmp fast olt float %43, %438
  %452 = fcmp fast olt float %44, %439
  %453 = or i1 %450, %451
  %454 = or i1 %452, %453
  %455 = fcmp fast oge float %42, %441
  %456 = fcmp fast oge float %43, %442
  %457 = fcmp fast oge float %44, %443
  %458 = or i1 %455, %456
  %459 = or i1 %457, %458
  %460 = or i1 %454, %459
  %461 = and i32 %433, 31
  %462 = lshr i32 %447, %461
  %463 = lshr i32 %448, %461
  %464 = lshr i32 %449, %461
  %465 = mul i32 %463, %431
  %466 = add i32 %465, %462
  %467 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %17, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %468 = extractvalue %dx.types.CBufRet.i32 %467, 0
  %469 = icmp ult i32 %466, %468
  br i1 %469, label %470, label %486, !dx.controlflow.hints !58

; <label>:470                                     ; preds = %421
  %471 = mul i32 %466, 12
  %472 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %471, i32 undef)  ; BufferLoad(srv,index,wot)
  %473 = extractvalue %dx.types.ResRet.i32 %472, 0
  %474 = add i32 %471, 4
  %475 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %474, i32 undef)  ; BufferLoad(srv,index,wot)
  %476 = extractvalue %dx.types.ResRet.i32 %475, 0
  %477 = add i32 %471, 8
  %478 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %477, i32 undef)  ; BufferLoad(srv,index,wot)
  %479 = extractvalue %dx.types.ResRet.i32 %478, 0
  %480 = icmp ult i32 %464, %476
  %481 = icmp ugt i32 %464, %479
  %482 = or i1 %480, %481
  %483 = add i32 %473, %464
  %484 = sub i32 %483, %476
  %485 = select i1 %482, i32 -2147483648, i32 %484
  br label %486

; <label>:486                                     ; preds = %470, %421
  %487 = phi i32 [ %485, %470 ], [ -2147483648, %421 ]
  %488 = select i1 %460, i32 -2147483648, i32 %487
  %489 = icmp sgt i32 %488, -1
  %490 = and i32 %434, 31
  %491 = lshr i32 %447, %490
  %492 = lshr i32 %448, %490
  %493 = lshr i32 %449, %490
  %494 = and i32 %491, 3
  %495 = and i32 %493, 3
  %496 = shl nuw nsw i32 %495, 4
  %497 = shl i32 %492, 2
  %498 = and i32 %497, 12
  %499 = and i32 %496, 16
  %500 = or i32 %498, %494
  %501 = or i32 %500, %499
  %502 = shl i32 1, %501
  %503 = extractvalue %dx.types.CBufRet.i32 %467, 1
  %504 = icmp ult i32 %488, %503
  br i1 %504, label %505, label %523, !dx.controlflow.hints !59

; <label>:505                                     ; preds = %486
  %506 = lshr i32 %495, 1
  %507 = shl i32 %488, 4
  %508 = shl nuw nsw i32 %506, 2
  %509 = or i32 %507, %508
  %510 = or i32 %509, 8
  %511 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %510, i32 undef)  ; BufferLoad(srv,index,wot)
  %512 = extractvalue %dx.types.ResRet.i32 %511, 0
  %513 = and i32 %512, %502
  %514 = icmp eq i32 %513, 0
  %515 = add i32 %502, -1
  %516 = and i32 %512, %515
  %517 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %516)  ; Countbits(value)
  %518 = or i32 %507, %508
  %519 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %518, i32 undef)  ; BufferLoad(srv,index,wot)
  %520 = extractvalue %dx.types.ResRet.i32 %519, 0
  %521 = add i32 %520, %517
  %522 = select i1 %514, i32 -2147483648, i32 %521
  br label %523

; <label>:523                                     ; preds = %505, %486
  %524 = phi i32 [ %522, %505 ], [ -2147483648, %486 ]
  %525 = select i1 %489, i32 %524, i32 %488
  %526 = icmp sgt i32 %525, -1
  %527 = and i32 %435, 31
  %528 = lshr i32 %447, %527
  %529 = lshr i32 %448, %527
  %530 = lshr i32 %449, %527
  %531 = and i32 %528, 3
  %532 = and i32 %530, 3
  %533 = shl nuw nsw i32 %532, 4
  %534 = shl i32 %529, 2
  %535 = and i32 %534, 12
  %536 = and i32 %533, 16
  %537 = or i32 %535, %531
  %538 = or i32 %537, %536
  %539 = shl i32 1, %538
  %540 = icmp ult i32 %525, %503
  br i1 %540, label %541, label %559, !dx.controlflow.hints !59

; <label>:541                                     ; preds = %523
  %542 = lshr i32 %532, 1
  %543 = shl i32 %525, 4
  %544 = shl nuw nsw i32 %542, 2
  %545 = or i32 %543, %544
  %546 = or i32 %545, 8
  %547 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %546, i32 undef)  ; BufferLoad(srv,index,wot)
  %548 = extractvalue %dx.types.ResRet.i32 %547, 0
  %549 = and i32 %548, %539
  %550 = icmp eq i32 %549, 0
  %551 = add i32 %539, -1
  %552 = and i32 %548, %551
  %553 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %552)  ; Countbits(value)
  %554 = or i32 %543, %544
  %555 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %554, i32 undef)  ; BufferLoad(srv,index,wot)
  %556 = extractvalue %dx.types.ResRet.i32 %555, 0
  %557 = add i32 %556, %553
  %558 = select i1 %550, i32 -2147483648, i32 %557
  br label %559

; <label>:559                                     ; preds = %541, %523
  %560 = phi i32 [ %558, %541 ], [ -2147483648, %523 ]
  %561 = select i1 %526, i32 %560, i32 %525
  br i1 %460, label %576, label %562, !dx.controlflow.hints !60

; <label>:562                                     ; preds = %559
  %563 = icmp eq i32 %561, -2147483648
  %564 = icmp eq i32 %525, -2147483648
  %565 = select i1 %564, i32 %488, i32 %525
  %566 = select i1 %563, i32 %565, i32 %561
  %567 = icmp sgt i32 %566, -1
  %568 = icmp ne i32 %423, -1
  %569 = and i1 %568, %567
  %570 = select i1 %569, i32 %423, i32 0
  %571 = add i32 %566, %424
  %572 = add i32 %571, %570
  %573 = shl i32 %572, 2
  %574 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %573, i32 undef)  ; BufferLoad(srv,index,wot)
  %575 = extractvalue %dx.types.ResRet.i32 %574, 0
  br label %576

; <label>:576                                     ; preds = %562, %559
  %577 = phi i32 [ %575, %562 ], [ -1, %559 ]
  %578 = icmp eq i32 %577, -1
  %579 = select i1 %578, i32 %425, i32 %577
  %580 = icmp eq i32 %579, -1
  br i1 %580, label %729, label %581

; <label>:581                                     ; preds = %576
  br label %582

; <label>:582                                     ; preds = %720, %581
  %583 = phi i32 [ %721, %720 ], [ 0, %581 ]
  %584 = phi i32 [ %585, %720 ], [ -1, %581 ]
  %585 = phi i32 [ %716, %720 ], [ %579, %581 ]
  %586 = phi float [ %692, %720 ], [ 0.000000e+00, %581 ]
  %587 = phi float [ %693, %720 ], [ 0.000000e+00, %581 ]
  %588 = phi float [ %694, %720 ], [ 0.000000e+00, %581 ]
  %589 = phi float [ %697, %720 ], [ 0.000000e+00, %581 ]
  %590 = icmp ugt i32 %583, 50
  br i1 %590, label %723, label %591, !dx.controlflow.hints !61

; <label>:591                                     ; preds = %582
  %592 = shl i32 %585, 4
  %593 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %592, i32 undef)  ; BufferLoad(srv,index,wot)
  %594 = extractvalue %dx.types.ResRet.i32 %593, 0
  %595 = extractvalue %dx.types.ResRet.i32 %593, 1
  %596 = extractvalue %dx.types.ResRet.i32 %593, 2
  %597 = extractvalue %dx.types.ResRet.i32 %593, 3
  %598 = and i32 %594, 2147483647
  %599 = mul nsw i32 %598, 12
  %600 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %599, i32 undef)  ; BufferLoad(srv,index,wot)
  %601 = extractvalue %dx.types.ResRet.i32 %600, 0
  %602 = extractvalue %dx.types.ResRet.i32 %600, 1
  %603 = extractvalue %dx.types.ResRet.i32 %600, 2
  %604 = and i32 %595, 2147483647
  %605 = mul nsw i32 %604, 12
  %606 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %605, i32 undef)  ; BufferLoad(srv,index,wot)
  %607 = extractvalue %dx.types.ResRet.i32 %606, 0
  %608 = extractvalue %dx.types.ResRet.i32 %606, 1
  %609 = extractvalue %dx.types.ResRet.i32 %606, 2
  %610 = and i32 %596, 2147483647
  %611 = mul nsw i32 %610, 12
  %612 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %611, i32 undef)  ; BufferLoad(srv,index,wot)
  %613 = extractvalue %dx.types.ResRet.i32 %612, 0
  %614 = extractvalue %dx.types.ResRet.i32 %612, 1
  %615 = extractvalue %dx.types.ResRet.i32 %612, 2
  %616 = and i32 %597, 2147483647
  %617 = mul nsw i32 %616, 12
  %618 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %617, i32 undef)  ; BufferLoad(srv,index,wot)
  %619 = extractvalue %dx.types.ResRet.i32 %618, 0
  %620 = extractvalue %dx.types.ResRet.i32 %618, 1
  %621 = extractvalue %dx.types.ResRet.i32 %618, 2
  %622 = bitcast i32 %601 to float
  %623 = bitcast i32 %602 to float
  %624 = bitcast i32 %603 to float
  %625 = bitcast i32 %619 to float
  %626 = bitcast i32 %620 to float
  %627 = bitcast i32 %621 to float
  %628 = fsub fast float %622, %625
  %629 = fsub fast float %623, %626
  %630 = fsub fast float %624, %627
  %631 = bitcast i32 %607 to float
  %632 = bitcast i32 %608 to float
  %633 = bitcast i32 %609 to float
  %634 = fsub fast float %631, %625
  %635 = fsub fast float %632, %626
  %636 = fsub fast float %633, %627
  %637 = bitcast i32 %613 to float
  %638 = bitcast i32 %614 to float
  %639 = bitcast i32 %615 to float
  %640 = fsub fast float %637, %625
  %641 = fsub fast float %638, %626
  %642 = fsub fast float %639, %627
  %643 = fsub fast float %42, %625
  %644 = fsub fast float %43, %626
  %645 = fsub fast float %44, %627
  %646 = fmul fast float %635, %642
  %647 = fmul fast float %641, %636
  %648 = fsub fast float %646, %647
  %649 = fmul fast float %648, %628
  %650 = fmul fast float %634, %642
  %651 = fmul fast float %636, %640
  %652 = fsub fast float %650, %651
  %653 = fmul fast float %652, %629
  %654 = fsub fast float %649, %653
  %655 = fmul fast float %634, %641
  %656 = fmul fast float %635, %640
  %657 = fsub fast float %655, %656
  %658 = fmul fast float %657, %630
  %659 = fadd fast float %654, %658
  %660 = fdiv fast float 1.000000e+00, %659
  %661 = fmul fast float %648, %660
  %662 = fmul fast float %660, %652
  %663 = fsub fast float -0.000000e+00, %662
  %664 = fmul fast float %657, %660
  %665 = fmul fast float %629, %642
  %666 = fmul fast float %630, %641
  %667 = fsub fast float %665, %666
  %668 = fmul fast float %660, %667
  %669 = fsub fast float -0.000000e+00, %668
  %670 = fmul fast float %628, %642
  %671 = fmul fast float %640, %630
  %672 = fsub fast float %670, %671
  %673 = fmul fast float %672, %660
  %674 = fmul fast float %628, %641
  %675 = fmul fast float %629, %640
  %676 = fsub fast float %674, %675
  %677 = fmul fast float %660, %676
  %678 = fsub fast float -0.000000e+00, %677
  %679 = fmul fast float %629, %636
  %680 = fmul fast float %630, %635
  %681 = fsub fast float %679, %680
  %682 = fmul fast float %681, %660
  %683 = fmul fast float %628, %636
  %684 = fmul fast float %630, %634
  %685 = fsub fast float %683, %684
  %686 = fmul fast float %660, %685
  %687 = fsub fast float -0.000000e+00, %686
  %688 = fmul fast float %628, %635
  %689 = fmul fast float %629, %634
  %690 = fsub fast float %688, %689
  %691 = fmul fast float %690, %660
  %692 = call float @dx.op.dot3.f32(i32 55, float %661, float %663, float %664, float %643, float %644, float %645)  ; Dot3(ax,ay,az,bx,by,bz)
  %693 = call float @dx.op.dot3.f32(i32 55, float %669, float %673, float %678, float %643, float %644, float %645)  ; Dot3(ax,ay,az,bx,by,bz)
  %694 = call float @dx.op.dot3.f32(i32 55, float %682, float %687, float %691, float %643, float %644, float %645)  ; Dot3(ax,ay,az,bx,by,bz)
  %695 = fsub fast float 1.000000e+00, %692
  %696 = fsub fast float %695, %693
  %697 = fsub fast float %696, %694
  %698 = call float @dx.op.binary.f32(i32 36, float %692, float %693)  ; FMin(a,b)
  %699 = call float @dx.op.binary.f32(i32 36, float %698, float %694)  ; FMin(a,b)
  %700 = call float @dx.op.binary.f32(i32 36, float %699, float %697)  ; FMin(a,b)
  %701 = call float @dx.op.binary.f32(i32 35, float %692, float %693)  ; FMax(a,b)
  %702 = call float @dx.op.binary.f32(i32 35, float %701, float %694)  ; FMax(a,b)
  %703 = call float @dx.op.binary.f32(i32 35, float %702, float %697)  ; FMax(a,b)
  %704 = fcmp fast oge float %700, 0xBF50624DE0000000
  %705 = fcmp fast olt float %703, 0x3FF00068E0000000
  %706 = and i1 %704, %705
  br i1 %706, label %723, label %707, !dx.controlflow.hints !62

; <label>:707                                     ; preds = %591
  %708 = fcmp fast oeq float %700, %692
  %709 = fcmp fast oeq float %700, %693
  %710 = fcmp fast oeq float %700, %694
  %711 = select i1 %710, i32 8, i32 12
  %712 = select i1 %709, i32 4, i32 %711
  %713 = select i1 %708, i32 0, i32 %712
  %714 = or i32 %713, %592
  %715 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %714, i32 undef)  ; BufferLoad(srv,index,wot)
  %716 = extractvalue %dx.types.ResRet.i32 %715, 0
  %717 = icmp ne i32 %584, -1
  %718 = icmp eq i32 %716, %584
  %719 = and i1 %717, %718
  br i1 %719, label %723, label %720, !dx.controlflow.hints !63

; <label>:720                                     ; preds = %707
  %721 = add nuw nsw i32 %583, 1
  %722 = icmp eq i32 %716, -1
  br i1 %722, label %723, label %582, !llvm.loop !64

; <label>:723                                     ; preds = %720, %707, %591, %582
  %724 = phi i32 [ %585, %707 ], [ %585, %591 ], [ -1, %720 ], [ -1, %582 ]
  %725 = phi float [ %692, %707 ], [ %692, %591 ], [ %692, %720 ], [ %586, %582 ]
  %726 = phi float [ %693, %707 ], [ %693, %591 ], [ %693, %720 ], [ %587, %582 ]
  %727 = phi float [ %694, %707 ], [ %694, %591 ], [ %694, %720 ], [ %588, %582 ]
  %728 = phi float [ %697, %707 ], [ %697, %591 ], [ %697, %720 ], [ %589, %582 ]
  br label %729

; <label>:729                                     ; preds = %723, %576
  %730 = phi i32 [ -1, %576 ], [ %724, %723 ]
  %731 = phi float [ 0.000000e+00, %576 ], [ %725, %723 ]
  %732 = phi float [ 0.000000e+00, %576 ], [ %726, %723 ]
  %733 = phi float [ 0.000000e+00, %576 ], [ %727, %723 ]
  %734 = phi float [ 0.000000e+00, %576 ], [ %728, %723 ]
  %735 = call float @dx.op.binary.f32(i32 35, float 0x3F50624DE0000000, float %731)  ; FMax(a,b)
  %736 = call float @dx.op.binary.f32(i32 35, float 0x3F50624DE0000000, float %732)  ; FMax(a,b)
  %737 = call float @dx.op.binary.f32(i32 35, float 0x3F50624DE0000000, float %733)  ; FMax(a,b)
  %738 = call float @dx.op.binary.f32(i32 35, float 0x3F50624DE0000000, float %734)  ; FMax(a,b)
  %739 = call float @dx.op.binary.f32(i32 36, float 0x3FEFF7CEE0000000, float %735)  ; FMin(a,b)
  %740 = call float @dx.op.binary.f32(i32 36, float 0x3FEFF7CEE0000000, float %736)  ; FMin(a,b)
  %741 = call float @dx.op.binary.f32(i32 36, float 0x3FEFF7CEE0000000, float %737)  ; FMin(a,b)
  %742 = call float @dx.op.binary.f32(i32 36, float 0x3FEFF7CEE0000000, float %738)  ; FMin(a,b)
  store float %739, float* %426, align 4
  store float %740, float* %427, align 4
  store float %741, float* %428, align 4
  store float %742, float* %429, align 4
  %743 = icmp eq i32 %730, -1
  br i1 %743, label %744, label %817, !dx.controlflow.hints !65

; <label>:744                                     ; preds = %729
  %745 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 48, i32 undef)  ; BufferLoad(srv,index,wot)
  %746 = extractvalue %dx.types.ResRet.i32 %745, 0
  %747 = extractvalue %dx.types.ResRet.i32 %745, 1
  %748 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 32, i32 undef)  ; BufferLoad(srv,index,wot)
  %749 = extractvalue %dx.types.ResRet.i32 %748, 0
  %750 = extractvalue %dx.types.ResRet.i32 %748, 1
  %751 = extractvalue %dx.types.ResRet.i32 %748, 2
  %752 = extractvalue %dx.types.ResRet.i32 %748, 3
  %753 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %754 = extractvalue %dx.types.ResRet.i32 %753, 0
  %755 = extractvalue %dx.types.ResRet.i32 %753, 1
  %756 = extractvalue %dx.types.ResRet.i32 %753, 2
  %757 = extractvalue %dx.types.ResRet.i32 %753, 3
  %758 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %759 = extractvalue %dx.types.ResRet.i32 %758, 0
  %760 = extractvalue %dx.types.ResRet.i32 %758, 1
  %761 = extractvalue %dx.types.ResRet.i32 %758, 2
  %762 = extractvalue %dx.types.ResRet.i32 %758, 3
  %763 = and i32 %759, 65535
  %764 = call float @dx.op.legacyF16ToF32(i32 131, i32 %763)  ; LegacyF16ToF32(value)
  %765 = lshr i32 %759, 16
  %766 = call float @dx.op.legacyF16ToF32(i32 131, i32 %765)  ; LegacyF16ToF32(value)
  %767 = and i32 %760, 65535
  %768 = call float @dx.op.legacyF16ToF32(i32 131, i32 %767)  ; LegacyF16ToF32(value)
  %769 = lshr i32 %760, 16
  %770 = call float @dx.op.legacyF16ToF32(i32 131, i32 %769)  ; LegacyF16ToF32(value)
  %771 = and i32 %761, 65535
  %772 = call float @dx.op.legacyF16ToF32(i32 131, i32 %771)  ; LegacyF16ToF32(value)
  %773 = lshr i32 %761, 16
  %774 = call float @dx.op.legacyF16ToF32(i32 131, i32 %773)  ; LegacyF16ToF32(value)
  %775 = and i32 %762, 65535
  %776 = call float @dx.op.legacyF16ToF32(i32 131, i32 %775)  ; LegacyF16ToF32(value)
  %777 = lshr i32 %762, 16
  %778 = call float @dx.op.legacyF16ToF32(i32 131, i32 %777)  ; LegacyF16ToF32(value)
  %779 = and i32 %754, 65535
  %780 = call float @dx.op.legacyF16ToF32(i32 131, i32 %779)  ; LegacyF16ToF32(value)
  %781 = lshr i32 %754, 16
  %782 = call float @dx.op.legacyF16ToF32(i32 131, i32 %781)  ; LegacyF16ToF32(value)
  %783 = and i32 %755, 65535
  %784 = call float @dx.op.legacyF16ToF32(i32 131, i32 %783)  ; LegacyF16ToF32(value)
  %785 = lshr i32 %755, 16
  %786 = call float @dx.op.legacyF16ToF32(i32 131, i32 %785)  ; LegacyF16ToF32(value)
  %787 = and i32 %756, 65535
  %788 = call float @dx.op.legacyF16ToF32(i32 131, i32 %787)  ; LegacyF16ToF32(value)
  %789 = lshr i32 %756, 16
  %790 = call float @dx.op.legacyF16ToF32(i32 131, i32 %789)  ; LegacyF16ToF32(value)
  %791 = and i32 %757, 65535
  %792 = call float @dx.op.legacyF16ToF32(i32 131, i32 %791)  ; LegacyF16ToF32(value)
  %793 = lshr i32 %757, 16
  %794 = call float @dx.op.legacyF16ToF32(i32 131, i32 %793)  ; LegacyF16ToF32(value)
  %795 = and i32 %749, 65535
  %796 = call float @dx.op.legacyF16ToF32(i32 131, i32 %795)  ; LegacyF16ToF32(value)
  %797 = lshr i32 %749, 16
  %798 = call float @dx.op.legacyF16ToF32(i32 131, i32 %797)  ; LegacyF16ToF32(value)
  %799 = and i32 %750, 65535
  %800 = call float @dx.op.legacyF16ToF32(i32 131, i32 %799)  ; LegacyF16ToF32(value)
  %801 = lshr i32 %750, 16
  %802 = call float @dx.op.legacyF16ToF32(i32 131, i32 %801)  ; LegacyF16ToF32(value)
  %803 = and i32 %751, 65535
  %804 = call float @dx.op.legacyF16ToF32(i32 131, i32 %803)  ; LegacyF16ToF32(value)
  %805 = lshr i32 %751, 16
  %806 = call float @dx.op.legacyF16ToF32(i32 131, i32 %805)  ; LegacyF16ToF32(value)
  %807 = and i32 %752, 65535
  %808 = call float @dx.op.legacyF16ToF32(i32 131, i32 %807)  ; LegacyF16ToF32(value)
  %809 = lshr i32 %752, 16
  %810 = call float @dx.op.legacyF16ToF32(i32 131, i32 %809)  ; LegacyF16ToF32(value)
  %811 = and i32 %746, 65535
  %812 = call float @dx.op.legacyF16ToF32(i32 131, i32 %811)  ; LegacyF16ToF32(value)
  %813 = lshr i32 %746, 16
  %814 = call float @dx.op.legacyF16ToF32(i32 131, i32 %813)  ; LegacyF16ToF32(value)
  %815 = and i32 %747, 65535
  %816 = call float @dx.op.legacyF16ToF32(i32 131, i32 %815)  ; LegacyF16ToF32(value)
  br label %1512

; <label>:817                                     ; preds = %729
  %818 = shl nsw i32 %730, 4
  %819 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %818, i32 undef)  ; BufferLoad(srv,index,wot)
  %820 = extractvalue %dx.types.ResRet.i32 %819, 0
  %821 = extractvalue %dx.types.ResRet.i32 %819, 1
  %822 = extractvalue %dx.types.ResRet.i32 %819, 2
  %823 = extractvalue %dx.types.ResRet.i32 %819, 3
  %824 = getelementptr inbounds [4 x i32], [4 x i32]* %26, i32 0, i32 0
  store i32 %820, i32* %824, align 4
  %825 = getelementptr inbounds [4 x i32], [4 x i32]* %26, i32 0, i32 1
  store i32 %821, i32* %825, align 4
  %826 = getelementptr inbounds [4 x i32], [4 x i32]* %26, i32 0, i32 2
  store i32 %822, i32* %826, align 4
  %827 = getelementptr inbounds [4 x i32], [4 x i32]* %26, i32 0, i32 3
  store i32 %823, i32* %827, align 4
  %828 = getelementptr inbounds [4 x float], [4 x float]* %27, i32 0, i32 0
  store float 0.000000e+00, float* %828, align 4
  %829 = getelementptr inbounds [4 x float], [4 x float]* %27, i32 0, i32 1
  store float 0.000000e+00, float* %829, align 4
  %830 = getelementptr inbounds [4 x float], [4 x float]* %27, i32 0, i32 2
  store float 0.000000e+00, float* %830, align 4
  %831 = getelementptr inbounds [4 x float], [4 x float]* %27, i32 0, i32 3
  store float 0.000000e+00, float* %831, align 4
  %832 = icmp slt i32 %820, 0
  br i1 %832, label %833, label %923, !dx.controlflow.hints !66

; <label>:833                                     ; preds = %817
  %834 = fsub fast float 1.000000e+00, %739
  %835 = fdiv fast float 1.000000e+00, %834
  %836 = shl nsw i32 %730, 6
  %837 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %836, i32 undef)  ; BufferLoad(srv,index,wot)
  %838 = extractvalue %dx.types.ResRet.i32 %837, 0
  %839 = extractvalue %dx.types.ResRet.i32 %837, 1
  %840 = extractvalue %dx.types.ResRet.i32 %837, 2
  %841 = extractvalue %dx.types.ResRet.i32 %837, 3
  %842 = fmul fast float %835, %742
  %843 = fmul fast float %835, %740
  %844 = getelementptr inbounds [4 x i32], [4 x i32]* %24, i32 0, i32 0
  store i32 %838, i32* %844, align 4
  %845 = getelementptr inbounds [4 x i32], [4 x i32]* %24, i32 0, i32 1
  store i32 %839, i32* %845, align 4
  %846 = getelementptr inbounds [4 x i32], [4 x i32]* %24, i32 0, i32 2
  store i32 %840, i32* %846, align 4
  %847 = getelementptr inbounds [4 x i32], [4 x i32]* %24, i32 0, i32 3
  store i32 %841, i32* %847, align 4
  %848 = fmul fast float %843, 4.000000e+00
  %849 = call float @dx.op.unary.f32(i32 27, float %848)  ; Round_ni(value)
  %850 = fmul fast float %842, 4.000000e+00
  %851 = call float @dx.op.unary.f32(i32 27, float %850)  ; Round_ni(value)
  %852 = fsub fast float 1.100000e+01, %849
  %853 = fmul fast float %849, 5.000000e-01
  %854 = fmul fast float %853, %852
  %855 = fadd fast float %851, 5.000000e-01
  %856 = fadd fast float %855, %854
  %857 = fptosi float %856 to i32
  %858 = fptosi float %849 to i32
  %859 = sub nsw i32 5, %858
  %860 = fmul fast float %851, 2.500000e-01
  %861 = fmul fast float %849, 2.500000e-01
  %862 = add nsw i32 %857, 1
  %863 = add nsw i32 %857, %859
  %864 = fsub fast float %842, %860
  %865 = fmul fast float %864, 4.000000e+00
  %866 = fsub fast float %843, %861
  %867 = fmul fast float %866, 4.000000e+00
  %868 = fadd fast float %864, %866
  %869 = fmul fast float %868, 4.000000e+00
  %870 = fcmp fast ogt float %869, 1.000000e+00
  br i1 %870, label %871, label %877, !dx.controlflow.hints !67

; <label>:871                                     ; preds = %833
  %872 = add nsw i32 %863, 1
  %873 = fadd fast float %867, -1.000000e+00
  %874 = fsub fast float -0.000000e+00, %873
  %875 = fadd fast float %865, -1.000000e+00
  %876 = fsub fast float -0.000000e+00, %875
  br label %877

; <label>:877                                     ; preds = %871, %833
  %878 = phi i32 [ %872, %871 ], [ %857, %833 ]
  %879 = phi i32 [ %862, %871 ], [ %863, %833 ]
  %880 = phi i32 [ %863, %871 ], [ %862, %833 ]
  %881 = phi float [ %876, %871 ], [ %867, %833 ]
  %882 = phi float [ %874, %871 ], [ %865, %833 ]
  %883 = fsub fast float 1.000000e+00, %881
  %884 = fsub fast float %883, %882
  %885 = lshr i32 %880, 2
  %886 = getelementptr [4 x i32], [4 x i32]* %24, i32 0, i32 %885
  %887 = load i32, i32* %886, align 4, !tbaa !41, !noalias !68
  %888 = shl i32 %880, 3
  %889 = and i32 %888, 24
  %890 = lshr i32 %887, %889
  %891 = and i32 %890, 255
  %892 = sitofp i32 %891 to float
  %893 = fmul fast float %882, 0x3F70101020000000
  %894 = fmul fast float %893, %892
  %895 = lshr i32 %879, 2
  %896 = getelementptr [4 x i32], [4 x i32]* %24, i32 0, i32 %895
  %897 = load i32, i32* %896, align 4, !tbaa !41, !noalias !68
  %898 = shl i32 %879, 3
  %899 = and i32 %898, 24
  %900 = lshr i32 %897, %899
  %901 = and i32 %900, 255
  %902 = sitofp i32 %901 to float
  %903 = fmul fast float %881, 0x3F70101020000000
  %904 = fmul fast float %903, %902
  %905 = lshr i32 %878, 2
  %906 = getelementptr [4 x i32], [4 x i32]* %24, i32 0, i32 %905
  %907 = load i32, i32* %906, align 4, !tbaa !41, !noalias !68
  %908 = shl i32 %878, 3
  %909 = and i32 %908, 24
  %910 = lshr i32 %907, %909
  %911 = and i32 %910, 255
  %912 = sitofp i32 %911 to float
  %913 = fmul fast float %884, 0x3F70101020000000
  %914 = fmul fast float %913, %912
  %915 = fsub fast float 1.000000e+00, %894
  %916 = fsub fast float %915, %904
  %917 = fsub fast float %916, %914
  %918 = fmul fast float %739, 2.000000e+01
  %919 = fadd fast float %918, 1.000000e+00
  %920 = fmul fast float %917, 2.000000e+01
  %921 = fsub fast float %919, %920
  %922 = call float @dx.op.unary.f32(i32 7, float %921)  ; Saturate(value)
  br label %923

; <label>:923                                     ; preds = %877, %817
  %924 = phi float [ %922, %877 ], [ 1.000000e+00, %817 ]
  store float %924, float* %828, align 4, !tbaa !76, !noalias !68
  %925 = icmp slt i32 %821, 0
  br i1 %925, label %926, label %1017, !dx.controlflow.hints !66

; <label>:926                                     ; preds = %923
  %927 = fsub fast float 1.000000e+00, %740
  %928 = fdiv fast float 1.000000e+00, %927
  %929 = shl i32 %730, 6
  %930 = or i32 %929, 16
  %931 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %930, i32 undef)  ; BufferLoad(srv,index,wot)
  %932 = extractvalue %dx.types.ResRet.i32 %931, 0
  %933 = extractvalue %dx.types.ResRet.i32 %931, 1
  %934 = extractvalue %dx.types.ResRet.i32 %931, 2
  %935 = extractvalue %dx.types.ResRet.i32 %931, 3
  %936 = fmul fast float %928, %739
  %937 = fmul fast float %928, %742
  %938 = getelementptr inbounds [4 x i32], [4 x i32]* %24, i32 0, i32 0
  store i32 %932, i32* %938, align 4
  %939 = getelementptr inbounds [4 x i32], [4 x i32]* %24, i32 0, i32 1
  store i32 %933, i32* %939, align 4
  %940 = getelementptr inbounds [4 x i32], [4 x i32]* %24, i32 0, i32 2
  store i32 %934, i32* %940, align 4
  %941 = getelementptr inbounds [4 x i32], [4 x i32]* %24, i32 0, i32 3
  store i32 %935, i32* %941, align 4
  %942 = fmul fast float %937, 4.000000e+00
  %943 = call float @dx.op.unary.f32(i32 27, float %942)  ; Round_ni(value)
  %944 = fmul fast float %936, 4.000000e+00
  %945 = call float @dx.op.unary.f32(i32 27, float %944)  ; Round_ni(value)
  %946 = fsub fast float 1.100000e+01, %943
  %947 = fmul fast float %943, 5.000000e-01
  %948 = fmul fast float %947, %946
  %949 = fadd fast float %945, 5.000000e-01
  %950 = fadd fast float %949, %948
  %951 = fptosi float %950 to i32
  %952 = fptosi float %943 to i32
  %953 = sub nsw i32 5, %952
  %954 = fmul fast float %945, 2.500000e-01
  %955 = fmul fast float %943, 2.500000e-01
  %956 = add nsw i32 %951, 1
  %957 = add nsw i32 %951, %953
  %958 = fsub fast float %936, %954
  %959 = fmul fast float %958, 4.000000e+00
  %960 = fsub fast float %937, %955
  %961 = fmul fast float %960, 4.000000e+00
  %962 = fadd fast float %958, %960
  %963 = fmul fast float %962, 4.000000e+00
  %964 = fcmp fast ogt float %963, 1.000000e+00
  br i1 %964, label %965, label %971, !dx.controlflow.hints !67

; <label>:965                                     ; preds = %926
  %966 = add nsw i32 %957, 1
  %967 = fadd fast float %961, -1.000000e+00
  %968 = fsub fast float -0.000000e+00, %967
  %969 = fadd fast float %959, -1.000000e+00
  %970 = fsub fast float -0.000000e+00, %969
  br label %971

; <label>:971                                     ; preds = %965, %926
  %972 = phi i32 [ %966, %965 ], [ %951, %926 ]
  %973 = phi i32 [ %956, %965 ], [ %957, %926 ]
  %974 = phi i32 [ %957, %965 ], [ %956, %926 ]
  %975 = phi float [ %970, %965 ], [ %961, %926 ]
  %976 = phi float [ %968, %965 ], [ %959, %926 ]
  %977 = fsub fast float 1.000000e+00, %975
  %978 = fsub fast float %977, %976
  %979 = lshr i32 %974, 2
  %980 = getelementptr [4 x i32], [4 x i32]* %24, i32 0, i32 %979
  %981 = load i32, i32* %980, align 4, !tbaa !41, !noalias !68
  %982 = shl i32 %974, 3
  %983 = and i32 %982, 24
  %984 = lshr i32 %981, %983
  %985 = and i32 %984, 255
  %986 = sitofp i32 %985 to float
  %987 = fmul fast float %976, 0x3F70101020000000
  %988 = fmul fast float %987, %986
  %989 = lshr i32 %973, 2
  %990 = getelementptr [4 x i32], [4 x i32]* %24, i32 0, i32 %989
  %991 = load i32, i32* %990, align 4, !tbaa !41, !noalias !68
  %992 = shl i32 %973, 3
  %993 = and i32 %992, 24
  %994 = lshr i32 %991, %993
  %995 = and i32 %994, 255
  %996 = sitofp i32 %995 to float
  %997 = fmul fast float %975, 0x3F70101020000000
  %998 = fmul fast float %997, %996
  %999 = lshr i32 %972, 2
  %1000 = getelementptr [4 x i32], [4 x i32]* %24, i32 0, i32 %999
  %1001 = load i32, i32* %1000, align 4, !tbaa !41, !noalias !68
  %1002 = shl i32 %972, 3
  %1003 = and i32 %1002, 24
  %1004 = lshr i32 %1001, %1003
  %1005 = and i32 %1004, 255
  %1006 = sitofp i32 %1005 to float
  %1007 = fmul fast float %978, 0x3F70101020000000
  %1008 = fmul fast float %1007, %1006
  %1009 = fsub fast float 1.000000e+00, %988
  %1010 = fsub fast float %1009, %998
  %1011 = fsub fast float %1010, %1008
  %1012 = fmul fast float %740, 2.000000e+01
  %1013 = fadd fast float %1012, 1.000000e+00
  %1014 = fmul fast float %1011, 2.000000e+01
  %1015 = fsub fast float %1013, %1014
  %1016 = call float @dx.op.unary.f32(i32 7, float %1015)  ; Saturate(value)
  br label %1017

; <label>:1017                                    ; preds = %971, %923
  %1018 = phi float [ %1016, %971 ], [ 1.000000e+00, %923 ]
  store float %1018, float* %829, align 4, !tbaa !76, !noalias !68
  %1019 = fadd fast float %1018, %924
  %1020 = icmp slt i32 %822, 0
  br i1 %1020, label %1021, label %1112, !dx.controlflow.hints !66

; <label>:1021                                    ; preds = %1017
  %1022 = fsub fast float 1.000000e+00, %741
  %1023 = fdiv fast float 1.000000e+00, %1022
  %1024 = shl i32 %730, 6
  %1025 = or i32 %1024, 32
  %1026 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %1025, i32 undef)  ; BufferLoad(srv,index,wot)
  %1027 = extractvalue %dx.types.ResRet.i32 %1026, 0
  %1028 = extractvalue %dx.types.ResRet.i32 %1026, 1
  %1029 = extractvalue %dx.types.ResRet.i32 %1026, 2
  %1030 = extractvalue %dx.types.ResRet.i32 %1026, 3
  %1031 = fmul fast float %1023, %739
  %1032 = fmul fast float %1023, %740
  %1033 = getelementptr inbounds [4 x i32], [4 x i32]* %24, i32 0, i32 0
  store i32 %1027, i32* %1033, align 4
  %1034 = getelementptr inbounds [4 x i32], [4 x i32]* %24, i32 0, i32 1
  store i32 %1028, i32* %1034, align 4
  %1035 = getelementptr inbounds [4 x i32], [4 x i32]* %24, i32 0, i32 2
  store i32 %1029, i32* %1035, align 4
  %1036 = getelementptr inbounds [4 x i32], [4 x i32]* %24, i32 0, i32 3
  store i32 %1030, i32* %1036, align 4
  %1037 = fmul fast float %1032, 4.000000e+00
  %1038 = call float @dx.op.unary.f32(i32 27, float %1037)  ; Round_ni(value)
  %1039 = fmul fast float %1031, 4.000000e+00
  %1040 = call float @dx.op.unary.f32(i32 27, float %1039)  ; Round_ni(value)
  %1041 = fsub fast float 1.100000e+01, %1038
  %1042 = fmul fast float %1038, 5.000000e-01
  %1043 = fmul fast float %1042, %1041
  %1044 = fadd fast float %1040, 5.000000e-01
  %1045 = fadd fast float %1044, %1043
  %1046 = fptosi float %1045 to i32
  %1047 = fptosi float %1038 to i32
  %1048 = sub nsw i32 5, %1047
  %1049 = fmul fast float %1040, 2.500000e-01
  %1050 = fmul fast float %1038, 2.500000e-01
  %1051 = add nsw i32 %1046, 1
  %1052 = add nsw i32 %1046, %1048
  %1053 = fsub fast float %1031, %1049
  %1054 = fmul fast float %1053, 4.000000e+00
  %1055 = fsub fast float %1032, %1050
  %1056 = fmul fast float %1055, 4.000000e+00
  %1057 = fadd fast float %1053, %1055
  %1058 = fmul fast float %1057, 4.000000e+00
  %1059 = fcmp fast ogt float %1058, 1.000000e+00
  br i1 %1059, label %1060, label %1066, !dx.controlflow.hints !67

; <label>:1060                                    ; preds = %1021
  %1061 = add nsw i32 %1052, 1
  %1062 = fadd fast float %1056, -1.000000e+00
  %1063 = fsub fast float -0.000000e+00, %1062
  %1064 = fadd fast float %1054, -1.000000e+00
  %1065 = fsub fast float -0.000000e+00, %1064
  br label %1066

; <label>:1066                                    ; preds = %1060, %1021
  %1067 = phi i32 [ %1061, %1060 ], [ %1046, %1021 ]
  %1068 = phi i32 [ %1051, %1060 ], [ %1052, %1021 ]
  %1069 = phi i32 [ %1052, %1060 ], [ %1051, %1021 ]
  %1070 = phi float [ %1065, %1060 ], [ %1056, %1021 ]
  %1071 = phi float [ %1063, %1060 ], [ %1054, %1021 ]
  %1072 = fsub fast float 1.000000e+00, %1070
  %1073 = fsub fast float %1072, %1071
  %1074 = lshr i32 %1069, 2
  %1075 = getelementptr [4 x i32], [4 x i32]* %24, i32 0, i32 %1074
  %1076 = load i32, i32* %1075, align 4, !tbaa !41, !noalias !68
  %1077 = shl i32 %1069, 3
  %1078 = and i32 %1077, 24
  %1079 = lshr i32 %1076, %1078
  %1080 = and i32 %1079, 255
  %1081 = sitofp i32 %1080 to float
  %1082 = fmul fast float %1071, 0x3F70101020000000
  %1083 = fmul fast float %1082, %1081
  %1084 = lshr i32 %1068, 2
  %1085 = getelementptr [4 x i32], [4 x i32]* %24, i32 0, i32 %1084
  %1086 = load i32, i32* %1085, align 4, !tbaa !41, !noalias !68
  %1087 = shl i32 %1068, 3
  %1088 = and i32 %1087, 24
  %1089 = lshr i32 %1086, %1088
  %1090 = and i32 %1089, 255
  %1091 = sitofp i32 %1090 to float
  %1092 = fmul fast float %1070, 0x3F70101020000000
  %1093 = fmul fast float %1092, %1091
  %1094 = lshr i32 %1067, 2
  %1095 = getelementptr [4 x i32], [4 x i32]* %24, i32 0, i32 %1094
  %1096 = load i32, i32* %1095, align 4, !tbaa !41, !noalias !68
  %1097 = shl i32 %1067, 3
  %1098 = and i32 %1097, 24
  %1099 = lshr i32 %1096, %1098
  %1100 = and i32 %1099, 255
  %1101 = sitofp i32 %1100 to float
  %1102 = fmul fast float %1073, 0x3F70101020000000
  %1103 = fmul fast float %1102, %1101
  %1104 = fsub fast float 1.000000e+00, %1083
  %1105 = fsub fast float %1104, %1093
  %1106 = fsub fast float %1105, %1103
  %1107 = fmul fast float %741, 2.000000e+01
  %1108 = fadd fast float %1107, 1.000000e+00
  %1109 = fmul fast float %1106, 2.000000e+01
  %1110 = fsub fast float %1108, %1109
  %1111 = call float @dx.op.unary.f32(i32 7, float %1110)  ; Saturate(value)
  br label %1112

; <label>:1112                                    ; preds = %1066, %1017
  %1113 = phi float [ %1111, %1066 ], [ 1.000000e+00, %1017 ]
  store float %1113, float* %830, align 4, !tbaa !76, !noalias !68
  %1114 = fadd fast float %1019, %1113
  %1115 = icmp slt i32 %823, 0
  br i1 %1115, label %1116, label %1207, !dx.controlflow.hints !66

; <label>:1116                                    ; preds = %1112
  %1117 = fsub fast float 1.000000e+00, %742
  %1118 = fdiv fast float 1.000000e+00, %1117
  %1119 = shl i32 %730, 6
  %1120 = or i32 %1119, 48
  %1121 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %1120, i32 undef)  ; BufferLoad(srv,index,wot)
  %1122 = extractvalue %dx.types.ResRet.i32 %1121, 0
  %1123 = extractvalue %dx.types.ResRet.i32 %1121, 1
  %1124 = extractvalue %dx.types.ResRet.i32 %1121, 2
  %1125 = extractvalue %dx.types.ResRet.i32 %1121, 3
  %1126 = fmul fast float %1118, %739
  %1127 = fmul fast float %1118, %740
  %1128 = getelementptr inbounds [4 x i32], [4 x i32]* %24, i32 0, i32 0
  store i32 %1122, i32* %1128, align 4
  %1129 = getelementptr inbounds [4 x i32], [4 x i32]* %24, i32 0, i32 1
  store i32 %1123, i32* %1129, align 4
  %1130 = getelementptr inbounds [4 x i32], [4 x i32]* %24, i32 0, i32 2
  store i32 %1124, i32* %1130, align 4
  %1131 = getelementptr inbounds [4 x i32], [4 x i32]* %24, i32 0, i32 3
  store i32 %1125, i32* %1131, align 4
  %1132 = fmul fast float %1127, 4.000000e+00
  %1133 = call float @dx.op.unary.f32(i32 27, float %1132)  ; Round_ni(value)
  %1134 = fmul fast float %1126, 4.000000e+00
  %1135 = call float @dx.op.unary.f32(i32 27, float %1134)  ; Round_ni(value)
  %1136 = fsub fast float 1.100000e+01, %1133
  %1137 = fmul fast float %1133, 5.000000e-01
  %1138 = fmul fast float %1137, %1136
  %1139 = fadd fast float %1135, 5.000000e-01
  %1140 = fadd fast float %1139, %1138
  %1141 = fptosi float %1140 to i32
  %1142 = fptosi float %1133 to i32
  %1143 = sub nsw i32 5, %1142
  %1144 = fmul fast float %1135, 2.500000e-01
  %1145 = fmul fast float %1133, 2.500000e-01
  %1146 = add nsw i32 %1141, 1
  %1147 = add nsw i32 %1141, %1143
  %1148 = fsub fast float %1126, %1144
  %1149 = fmul fast float %1148, 4.000000e+00
  %1150 = fsub fast float %1127, %1145
  %1151 = fmul fast float %1150, 4.000000e+00
  %1152 = fadd fast float %1148, %1150
  %1153 = fmul fast float %1152, 4.000000e+00
  %1154 = fcmp fast ogt float %1153, 1.000000e+00
  br i1 %1154, label %1155, label %1161, !dx.controlflow.hints !67

; <label>:1155                                    ; preds = %1116
  %1156 = add nsw i32 %1147, 1
  %1157 = fadd fast float %1151, -1.000000e+00
  %1158 = fsub fast float -0.000000e+00, %1157
  %1159 = fadd fast float %1149, -1.000000e+00
  %1160 = fsub fast float -0.000000e+00, %1159
  br label %1161

; <label>:1161                                    ; preds = %1155, %1116
  %1162 = phi i32 [ %1156, %1155 ], [ %1141, %1116 ]
  %1163 = phi i32 [ %1146, %1155 ], [ %1147, %1116 ]
  %1164 = phi i32 [ %1147, %1155 ], [ %1146, %1116 ]
  %1165 = phi float [ %1160, %1155 ], [ %1151, %1116 ]
  %1166 = phi float [ %1158, %1155 ], [ %1149, %1116 ]
  %1167 = fsub fast float 1.000000e+00, %1165
  %1168 = fsub fast float %1167, %1166
  %1169 = lshr i32 %1164, 2
  %1170 = getelementptr [4 x i32], [4 x i32]* %24, i32 0, i32 %1169
  %1171 = load i32, i32* %1170, align 4, !tbaa !41, !noalias !68
  %1172 = shl i32 %1164, 3
  %1173 = and i32 %1172, 24
  %1174 = lshr i32 %1171, %1173
  %1175 = and i32 %1174, 255
  %1176 = sitofp i32 %1175 to float
  %1177 = fmul fast float %1166, 0x3F70101020000000
  %1178 = fmul fast float %1177, %1176
  %1179 = lshr i32 %1163, 2
  %1180 = getelementptr [4 x i32], [4 x i32]* %24, i32 0, i32 %1179
  %1181 = load i32, i32* %1180, align 4, !tbaa !41, !noalias !68
  %1182 = shl i32 %1163, 3
  %1183 = and i32 %1182, 24
  %1184 = lshr i32 %1181, %1183
  %1185 = and i32 %1184, 255
  %1186 = sitofp i32 %1185 to float
  %1187 = fmul fast float %1165, 0x3F70101020000000
  %1188 = fmul fast float %1187, %1186
  %1189 = lshr i32 %1162, 2
  %1190 = getelementptr [4 x i32], [4 x i32]* %24, i32 0, i32 %1189
  %1191 = load i32, i32* %1190, align 4, !tbaa !41, !noalias !68
  %1192 = shl i32 %1162, 3
  %1193 = and i32 %1192, 24
  %1194 = lshr i32 %1191, %1193
  %1195 = and i32 %1194, 255
  %1196 = sitofp i32 %1195 to float
  %1197 = fmul fast float %1168, 0x3F70101020000000
  %1198 = fmul fast float %1197, %1196
  %1199 = fsub fast float 1.000000e+00, %1178
  %1200 = fsub fast float %1199, %1188
  %1201 = fsub fast float %1200, %1198
  %1202 = fmul fast float %742, 2.000000e+01
  %1203 = fadd fast float %1202, 1.000000e+00
  %1204 = fmul fast float %1201, 2.000000e+01
  %1205 = fsub fast float %1203, %1204
  %1206 = call float @dx.op.unary.f32(i32 7, float %1205)  ; Saturate(value)
  br label %1207

; <label>:1207                                    ; preds = %1161, %1112
  %1208 = phi float [ %1206, %1161 ], [ 1.000000e+00, %1112 ]
  store float %1208, float* %831, align 4, !tbaa !76, !noalias !68
  %1209 = fadd fast float %1114, %1208
  %1210 = fcmp fast oeq float %1209, 0.000000e+00
  br i1 %1210, label %1211, label %1212, !dx.controlflow.hints !78

; <label>:1211                                    ; preds = %1207
  store float 2.500000e-01, float* %828, align 4
  store float 2.500000e-01, float* %829, align 4
  store float 2.500000e-01, float* %830, align 4
  store float 2.500000e-01, float* %831, align 4
  br label %1212

; <label>:1212                                    ; preds = %1211, %1207
  %1213 = phi float [ 2.500000e-01, %1211 ], [ %924, %1207 ]
  br label %1214

; <label>:1214                                    ; preds = %1478, %1212
  %1215 = phi float [ %1480, %1478 ], [ %1213, %1212 ]
  %1216 = phi float [ %1448, %1478 ], [ 0.000000e+00, %1212 ]
  %1217 = phi float [ %1449, %1478 ], [ 0.000000e+00, %1212 ]
  %1218 = phi float [ %1450, %1478 ], [ 0.000000e+00, %1212 ]
  %1219 = phi float [ %1451, %1478 ], [ 0.000000e+00, %1212 ]
  %1220 = phi float [ %1452, %1478 ], [ 0.000000e+00, %1212 ]
  %1221 = phi float [ %1453, %1478 ], [ 0.000000e+00, %1212 ]
  %1222 = phi float [ %1454, %1478 ], [ 0.000000e+00, %1212 ]
  %1223 = phi float [ %1455, %1478 ], [ 0.000000e+00, %1212 ]
  %1224 = phi float [ %1456, %1478 ], [ 0.000000e+00, %1212 ]
  %1225 = phi float [ %1457, %1478 ], [ 0.000000e+00, %1212 ]
  %1226 = phi float [ %1458, %1478 ], [ 0.000000e+00, %1212 ]
  %1227 = phi float [ %1459, %1478 ], [ 0.000000e+00, %1212 ]
  %1228 = phi float [ %1460, %1478 ], [ 0.000000e+00, %1212 ]
  %1229 = phi float [ %1461, %1478 ], [ 0.000000e+00, %1212 ]
  %1230 = phi float [ %1462, %1478 ], [ 0.000000e+00, %1212 ]
  %1231 = phi float [ %1463, %1478 ], [ 0.000000e+00, %1212 ]
  %1232 = phi float [ %1464, %1478 ], [ 0.000000e+00, %1212 ]
  %1233 = phi float [ %1465, %1478 ], [ 0.000000e+00, %1212 ]
  %1234 = phi float [ %1466, %1478 ], [ 0.000000e+00, %1212 ]
  %1235 = phi float [ %1467, %1478 ], [ 0.000000e+00, %1212 ]
  %1236 = phi float [ %1468, %1478 ], [ 0.000000e+00, %1212 ]
  %1237 = phi float [ %1469, %1478 ], [ 0.000000e+00, %1212 ]
  %1238 = phi float [ %1470, %1478 ], [ 0.000000e+00, %1212 ]
  %1239 = phi float [ %1471, %1478 ], [ 0.000000e+00, %1212 ]
  %1240 = phi float [ %1472, %1478 ], [ 0.000000e+00, %1212 ]
  %1241 = phi float [ %1473, %1478 ], [ 0.000000e+00, %1212 ]
  %1242 = phi float [ %1474, %1478 ], [ 0.000000e+00, %1212 ]
  %1243 = phi float [ %1475, %1478 ], [ 0.000000e+00, %1212 ]
  %1244 = phi i32 [ %1476, %1478 ], [ 0, %1212 ]
  %1245 = fcmp fast ogt float %1215, 0.000000e+00
  br i1 %1245, label %1246, label %1447, !dx.controlflow.hints !79

; <label>:1246                                    ; preds = %1214
  %1247 = getelementptr [4 x float], [4 x float]* %25, i32 0, i32 %1244
  %1248 = load float, float* %1247, align 4, !tbaa !76, !noalias !68
  %1249 = getelementptr [4 x i32], [4 x i32]* %26, i32 0, i32 %1244
  %1250 = load i32, i32* %1249, align 4, !tbaa !41, !noalias !68
  %1251 = fmul fast float %1248, %1215
  %1252 = shl i32 %1250, 5
  %1253 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %1252, i32 undef)  ; BufferLoad(srv,index,wot)
  %1254 = extractvalue %dx.types.ResRet.i32 %1253, 0
  %1255 = extractvalue %dx.types.ResRet.i32 %1253, 1
  %1256 = extractvalue %dx.types.ResRet.i32 %1253, 2
  %1257 = extractvalue %dx.types.ResRet.i32 %1253, 3
  %1258 = or i32 %1252, 16
  %1259 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %1258, i32 undef)  ; BufferLoad(srv,index,wot)
  %1260 = extractvalue %dx.types.ResRet.i32 %1259, 0
  %1261 = extractvalue %dx.types.ResRet.i32 %1259, 1
  %1262 = extractvalue %dx.types.ResRet.i32 %1259, 2
  %1263 = shl i32 %1254, 4
  %1264 = and i32 %1263, 32752
  %1265 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1264)  ; LegacyF16ToF32(value)
  %1266 = lshr i32 %1254, 7
  %1267 = and i32 %1266, 32752
  %1268 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1267)  ; LegacyF16ToF32(value)
  %1269 = lshr i32 %1254, 22
  %1270 = shl nuw nsw i32 %1269, 5
  %1271 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1270)  ; LegacyF16ToF32(value)
  %1272 = and i32 %1255, 255
  %1273 = uitofp i32 %1272 to float
  %1274 = fmul fast float %1273, 0x3F80204080000000
  %1275 = fadd fast float %1274, -1.000000e+00
  %1276 = lshr i32 %1255, 8
  %1277 = and i32 %1276, 255
  %1278 = uitofp i32 %1277 to float
  %1279 = fmul fast float %1278, 0x3F80204080000000
  %1280 = fadd fast float %1279, -1.000000e+00
  %1281 = lshr i32 %1255, 16
  %1282 = and i32 %1281, 255
  %1283 = uitofp i32 %1282 to float
  %1284 = fmul fast float %1283, 0x3F80204080000000
  %1285 = fadd fast float %1284, -1.000000e+00
  %1286 = lshr i32 %1255, 24
  %1287 = uitofp i32 %1286 to float
  %1288 = fmul fast float %1287, 0x3F80204080000000
  %1289 = fadd fast float %1288, -1.000000e+00
  %1290 = and i32 %1256, 255
  %1291 = uitofp i32 %1290 to float
  %1292 = fmul fast float %1291, 0x3F80204080000000
  %1293 = fadd fast float %1292, -1.000000e+00
  %1294 = lshr i32 %1256, 8
  %1295 = and i32 %1294, 255
  %1296 = uitofp i32 %1295 to float
  %1297 = fmul fast float %1296, 0x3F80204080000000
  %1298 = fadd fast float %1297, -1.000000e+00
  %1299 = lshr i32 %1256, 16
  %1300 = and i32 %1299, 255
  %1301 = uitofp i32 %1300 to float
  %1302 = fmul fast float %1301, 0x3F80204080000000
  %1303 = fadd fast float %1302, -1.000000e+00
  %1304 = lshr i32 %1256, 24
  %1305 = uitofp i32 %1304 to float
  %1306 = fmul fast float %1305, 0x3F80204080000000
  %1307 = fadd fast float %1306, -1.000000e+00
  %1308 = and i32 %1257, 255
  %1309 = uitofp i32 %1308 to float
  %1310 = fmul fast float %1309, 0x3F80204080000000
  %1311 = fadd fast float %1310, -1.000000e+00
  %1312 = lshr i32 %1257, 8
  %1313 = and i32 %1312, 255
  %1314 = uitofp i32 %1313 to float
  %1315 = fmul fast float %1314, 0x3F80204080000000
  %1316 = fadd fast float %1315, -1.000000e+00
  %1317 = lshr i32 %1257, 16
  %1318 = and i32 %1317, 255
  %1319 = uitofp i32 %1318 to float
  %1320 = fmul fast float %1319, 0x3F80204080000000
  %1321 = fadd fast float %1320, -1.000000e+00
  %1322 = lshr i32 %1257, 24
  %1323 = uitofp i32 %1322 to float
  %1324 = fmul fast float %1323, 0x3F80204080000000
  %1325 = fadd fast float %1324, -1.000000e+00
  %1326 = and i32 %1260, 255
  %1327 = uitofp i32 %1326 to float
  %1328 = fmul fast float %1327, 0x3F80204080000000
  %1329 = fadd fast float %1328, -1.000000e+00
  %1330 = lshr i32 %1260, 8
  %1331 = and i32 %1330, 255
  %1332 = uitofp i32 %1331 to float
  %1333 = fmul fast float %1332, 0x3F80204080000000
  %1334 = fadd fast float %1333, -1.000000e+00
  %1335 = lshr i32 %1260, 16
  %1336 = and i32 %1335, 255
  %1337 = uitofp i32 %1336 to float
  %1338 = fmul fast float %1337, 0x3F80204080000000
  %1339 = fadd fast float %1338, -1.000000e+00
  %1340 = lshr i32 %1260, 24
  %1341 = uitofp i32 %1340 to float
  %1342 = fmul fast float %1341, 0x3F80204080000000
  %1343 = fadd fast float %1342, -1.000000e+00
  %1344 = and i32 %1261, 255
  %1345 = uitofp i32 %1344 to float
  %1346 = fmul fast float %1345, 0x3F80204080000000
  %1347 = fadd fast float %1346, -1.000000e+00
  %1348 = lshr i32 %1261, 8
  %1349 = and i32 %1348, 255
  %1350 = uitofp i32 %1349 to float
  %1351 = fmul fast float %1350, 0x3F80204080000000
  %1352 = fadd fast float %1351, -1.000000e+00
  %1353 = lshr i32 %1261, 16
  %1354 = and i32 %1353, 255
  %1355 = uitofp i32 %1354 to float
  %1356 = fmul fast float %1355, 0x3F80204080000000
  %1357 = fadd fast float %1356, -1.000000e+00
  %1358 = lshr i32 %1261, 24
  %1359 = uitofp i32 %1358 to float
  %1360 = fmul fast float %1359, 0x3F80204080000000
  %1361 = fadd fast float %1360, -1.000000e+00
  %1362 = and i32 %1262, 255
  %1363 = uitofp i32 %1362 to float
  %1364 = fmul fast float %1363, 0x3F80204080000000
  %1365 = fadd fast float %1364, -1.000000e+00
  %1366 = lshr i32 %1262, 8
  %1367 = and i32 %1366, 255
  %1368 = uitofp i32 %1367 to float
  %1369 = fmul fast float %1368, 0x3F80204080000000
  %1370 = fadd fast float %1369, -1.000000e+00
  %1371 = lshr i32 %1262, 16
  %1372 = and i32 %1371, 255
  %1373 = uitofp i32 %1372 to float
  %1374 = fmul fast float %1373, 0x3F80204080000000
  %1375 = fadd fast float %1374, -1.000000e+00
  %1376 = lshr i32 %1262, 24
  %1377 = uitofp i32 %1376 to float
  %1378 = fmul fast float %1377, 0x3F80204080000000
  %1379 = fadd fast float %1378, -1.000000e+00
  %1380 = fmul fast float %1265, %1251
  %1381 = fadd fast float %1380, %1224
  %1382 = fmul fast float %1251, 0x3FFBB67AE0000000
  %1383 = fmul fast float %1382, %1265
  %1384 = fmul fast float %1383, %1275
  %1385 = fadd fast float %1384, %1223
  %1386 = fmul fast float %1383, %1280
  %1387 = fadd fast float %1386, %1222
  %1388 = fmul fast float %1383, %1285
  %1389 = fadd fast float %1388, %1221
  %1390 = fmul fast float %1251, 0x3FFEFBDEC0000000
  %1391 = fmul fast float %1390, %1265
  %1392 = fmul fast float %1391, %1289
  %1393 = fadd fast float %1392, %1220
  %1394 = fmul fast float %1391, %1293
  %1395 = fadd fast float %1394, %1219
  %1396 = fmul fast float %1251, 0x4001E377A0000000
  %1397 = fmul fast float %1396, %1265
  %1398 = fmul fast float %1397, %1298
  %1399 = fadd fast float %1398, %1218
  %1400 = fmul fast float %1391, %1303
  %1401 = fadd fast float %1400, %1217
  %1402 = fmul fast float %1391, %1307
  %1403 = fadd fast float %1402, %1216
  %1404 = fmul fast float %1268, %1251
  %1405 = fadd fast float %1404, %1233
  %1406 = fmul fast float %1382, %1268
  %1407 = fmul fast float %1406, %1311
  %1408 = fadd fast float %1407, %1232
  %1409 = fmul fast float %1406, %1316
  %1410 = fadd fast float %1409, %1231
  %1411 = fmul fast float %1406, %1321
  %1412 = fadd fast float %1411, %1230
  %1413 = fmul fast float %1390, %1268
  %1414 = fmul fast float %1413, %1325
  %1415 = fadd fast float %1414, %1229
  %1416 = fmul fast float %1413, %1329
  %1417 = fadd fast float %1416, %1228
  %1418 = fmul fast float %1396, %1268
  %1419 = fmul fast float %1418, %1334
  %1420 = fadd fast float %1419, %1227
  %1421 = fmul fast float %1413, %1339
  %1422 = fadd fast float %1421, %1226
  %1423 = fmul fast float %1413, %1343
  %1424 = fadd fast float %1423, %1225
  %1425 = fmul fast float %1271, %1251
  %1426 = fadd fast float %1425, %1242
  %1427 = fmul fast float %1382, %1271
  %1428 = fmul fast float %1427, %1347
  %1429 = fadd fast float %1428, %1241
  %1430 = fmul fast float %1427, %1352
  %1431 = fadd fast float %1430, %1240
  %1432 = fmul fast float %1427, %1357
  %1433 = fadd fast float %1432, %1239
  %1434 = fmul fast float %1390, %1271
  %1435 = fmul fast float %1434, %1361
  %1436 = fadd fast float %1435, %1238
  %1437 = fmul fast float %1434, %1365
  %1438 = fadd fast float %1437, %1237
  %1439 = fmul fast float %1396, %1271
  %1440 = fmul fast float %1439, %1370
  %1441 = fadd fast float %1440, %1236
  %1442 = fmul fast float %1434, %1375
  %1443 = fadd fast float %1442, %1235
  %1444 = fmul fast float %1434, %1379
  %1445 = fadd fast float %1444, %1234
  %1446 = fadd fast float %1251, %1243
  br label %1447

; <label>:1447                                    ; preds = %1246, %1214
  %1448 = phi float [ %1403, %1246 ], [ %1216, %1214 ]
  %1449 = phi float [ %1401, %1246 ], [ %1217, %1214 ]
  %1450 = phi float [ %1399, %1246 ], [ %1218, %1214 ]
  %1451 = phi float [ %1395, %1246 ], [ %1219, %1214 ]
  %1452 = phi float [ %1393, %1246 ], [ %1220, %1214 ]
  %1453 = phi float [ %1389, %1246 ], [ %1221, %1214 ]
  %1454 = phi float [ %1387, %1246 ], [ %1222, %1214 ]
  %1455 = phi float [ %1385, %1246 ], [ %1223, %1214 ]
  %1456 = phi float [ %1381, %1246 ], [ %1224, %1214 ]
  %1457 = phi float [ %1424, %1246 ], [ %1225, %1214 ]
  %1458 = phi float [ %1422, %1246 ], [ %1226, %1214 ]
  %1459 = phi float [ %1420, %1246 ], [ %1227, %1214 ]
  %1460 = phi float [ %1417, %1246 ], [ %1228, %1214 ]
  %1461 = phi float [ %1415, %1246 ], [ %1229, %1214 ]
  %1462 = phi float [ %1412, %1246 ], [ %1230, %1214 ]
  %1463 = phi float [ %1410, %1246 ], [ %1231, %1214 ]
  %1464 = phi float [ %1408, %1246 ], [ %1232, %1214 ]
  %1465 = phi float [ %1405, %1246 ], [ %1233, %1214 ]
  %1466 = phi float [ %1445, %1246 ], [ %1234, %1214 ]
  %1467 = phi float [ %1443, %1246 ], [ %1235, %1214 ]
  %1468 = phi float [ %1441, %1246 ], [ %1236, %1214 ]
  %1469 = phi float [ %1438, %1246 ], [ %1237, %1214 ]
  %1470 = phi float [ %1436, %1246 ], [ %1238, %1214 ]
  %1471 = phi float [ %1433, %1246 ], [ %1239, %1214 ]
  %1472 = phi float [ %1431, %1246 ], [ %1240, %1214 ]
  %1473 = phi float [ %1429, %1246 ], [ %1241, %1214 ]
  %1474 = phi float [ %1426, %1246 ], [ %1242, %1214 ]
  %1475 = phi float [ %1446, %1246 ], [ %1243, %1214 ]
  %1476 = add nuw nsw i32 %1244, 1
  %1477 = icmp eq i32 %1476, 4
  br i1 %1477, label %1481, label %1478

; <label>:1478                                    ; preds = %1447
  %1479 = getelementptr [4 x float], [4 x float]* %27, i32 0, i32 %1476
  %1480 = load float, float* %1479, align 4, !tbaa !76, !noalias !68
  br label %1214

; <label>:1481                                    ; preds = %1447
  %1482 = fcmp fast ogt float %1475, 0.000000e+00
  %1483 = fdiv fast float 1.000000e+00, %1475
  %1484 = select i1 %1482, float %1483, float 1.000000e+00
  %1485 = fmul fast float %1484, %1456
  %1486 = fmul fast float %1484, %1455
  %1487 = fmul fast float %1484, %1454
  %1488 = fmul fast float %1484, %1453
  %1489 = fmul fast float %1484, %1452
  %1490 = fmul fast float %1484, %1451
  %1491 = fmul fast float %1484, %1450
  %1492 = fmul fast float %1484, %1449
  %1493 = fmul fast float %1484, %1448
  %1494 = fmul fast float %1484, %1465
  %1495 = fmul fast float %1484, %1464
  %1496 = fmul fast float %1484, %1463
  %1497 = fmul fast float %1484, %1462
  %1498 = fmul fast float %1484, %1461
  %1499 = fmul fast float %1484, %1460
  %1500 = fmul fast float %1484, %1459
  %1501 = fmul fast float %1484, %1458
  %1502 = fmul fast float %1484, %1457
  %1503 = fmul fast float %1484, %1474
  %1504 = fmul fast float %1484, %1473
  %1505 = fmul fast float %1484, %1472
  %1506 = fmul fast float %1484, %1471
  %1507 = fmul fast float %1484, %1470
  %1508 = fmul fast float %1484, %1469
  %1509 = fmul fast float %1484, %1468
  %1510 = fmul fast float %1484, %1467
  %1511 = fmul fast float %1484, %1466
  br label %1512

; <label>:1512                                    ; preds = %1481, %744
  %1513 = phi float [ %1493, %1481 ], [ %780, %744 ]
  %1514 = phi float [ %1492, %1481 ], [ %778, %744 ]
  %1515 = phi float [ %1491, %1481 ], [ %776, %744 ]
  %1516 = phi float [ %1490, %1481 ], [ %774, %744 ]
  %1517 = phi float [ %1489, %1481 ], [ %772, %744 ]
  %1518 = phi float [ %1488, %1481 ], [ %770, %744 ]
  %1519 = phi float [ %1487, %1481 ], [ %768, %744 ]
  %1520 = phi float [ %1486, %1481 ], [ %766, %744 ]
  %1521 = phi float [ %1485, %1481 ], [ %764, %744 ]
  %1522 = phi float [ %1502, %1481 ], [ %798, %744 ]
  %1523 = phi float [ %1501, %1481 ], [ %796, %744 ]
  %1524 = phi float [ %1500, %1481 ], [ %794, %744 ]
  %1525 = phi float [ %1499, %1481 ], [ %792, %744 ]
  %1526 = phi float [ %1498, %1481 ], [ %790, %744 ]
  %1527 = phi float [ %1497, %1481 ], [ %788, %744 ]
  %1528 = phi float [ %1496, %1481 ], [ %786, %744 ]
  %1529 = phi float [ %1495, %1481 ], [ %784, %744 ]
  %1530 = phi float [ %1494, %1481 ], [ %782, %744 ]
  %1531 = phi float [ %1511, %1481 ], [ %816, %744 ]
  %1532 = phi float [ %1510, %1481 ], [ %814, %744 ]
  %1533 = phi float [ %1509, %1481 ], [ %812, %744 ]
  %1534 = phi float [ %1508, %1481 ], [ %810, %744 ]
  %1535 = phi float [ %1507, %1481 ], [ %808, %744 ]
  %1536 = phi float [ %1506, %1481 ], [ %806, %744 ]
  %1537 = phi float [ %1505, %1481 ], [ %804, %744 ]
  %1538 = phi float [ %1504, %1481 ], [ %802, %744 ]
  %1539 = phi float [ %1503, %1481 ], [ %800, %744 ]
  %1540 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1541 = extractvalue %dx.types.CBufRet.f32 %1540, 3
  br i1 %62, label %1542, label %1665, !dx.controlflow.hints !80

; <label>:1542                                    ; preds = %1512
  %1543 = fsub fast float -0.000000e+00, %1518
  %1544 = fsub fast float %1543, %1527
  %1545 = fsub fast float -0.000000e+00, %1520
  %1546 = fsub fast float %1545, %1529
  %1547 = fadd fast float %1528, %1519
  %1548 = fsub fast float %1544, %1536
  %1549 = fsub fast float %1546, %1538
  %1550 = fadd fast float %1547, %1537
  %1551 = call float @dx.op.dot3.f32(i32 55, float %1548, float %1549, float %1550, float %1548, float %1549, float %1550)  ; Dot3(ax,ay,az,bx,by,bz)
  %1552 = call float @dx.op.unary.f32(i32 25, float %1551)  ; Rsqrt(value)
  %1553 = fmul fast float %1552, %1548
  %1554 = fmul fast float %1552, %1549
  %1555 = fmul fast float %1552, %1550
  %1556 = fmul fast float %1555, 0x3FDF454380000000
  %1557 = fmul fast float %1555, %1555
  %1558 = fmul fast float %1557, 0x3FEE471020000000
  %1559 = fadd fast float %1558, 0xBFD42F6020000000
  %1560 = fmul fast float %1553, 0xBFDF454380000000
  %1561 = fmul fast float %1554, 0xBFDF454380000000
  %1562 = fmul fast float %1555, 0xBFF17B1420000000
  %1563 = fmul fast float %1562, %1553
  %1564 = fmul fast float %1562, %1554
  %1565 = fmul fast float %1553, %1553
  %1566 = fmul fast float %1554, %1554
  %1567 = fsub fast float %1565, %1566
  %1568 = fmul fast float %1567, 0x3FE17B1420000000
  %1569 = fmul fast float %1549, 0x3FF17B1420000000
  %1570 = fmul fast float %1569, %1552
  %1571 = fmul fast float %1570, %1553
  %1572 = fmul fast float %1521, 0x3FD20DD760000000
  %1573 = fmul fast float %1561, %1520
  %1574 = fmul fast float %1556, %1519
  %1575 = fmul fast float %1560, %1518
  %1576 = fmul fast float %1571, %1517
  %1577 = fmul fast float %1564, %1516
  %1578 = fmul fast float %1559, %1515
  %1579 = fmul fast float %1563, %1514
  %1580 = fmul fast float %1568, %1513
  %1581 = fadd fast float %1577, %1579
  %1582 = fadd fast float %1581, %1578
  %1583 = fadd fast float %1582, %1580
  %1584 = fadd fast float %1583, %1576
  %1585 = fmul fast float %1584, 6.250000e-02
  %1586 = fadd fast float %1575, %1574
  %1587 = fadd fast float %1586, %1573
  %1588 = fmul fast float %1587, 0x3FDC71C720000000
  %1589 = fadd fast float %1585, %1572
  %1590 = fadd fast float %1589, %1588
  %1591 = fmul fast float %1530, 0x3FD20DD760000000
  %1592 = fmul fast float %1561, %1529
  %1593 = fmul fast float %1556, %1528
  %1594 = fmul fast float %1560, %1527
  %1595 = fmul fast float %1571, %1526
  %1596 = fmul fast float %1564, %1525
  %1597 = fmul fast float %1559, %1524
  %1598 = fmul fast float %1563, %1523
  %1599 = fmul fast float %1568, %1522
  %1600 = fadd fast float %1596, %1598
  %1601 = fadd fast float %1600, %1597
  %1602 = fadd fast float %1601, %1599
  %1603 = fadd fast float %1602, %1595
  %1604 = fmul fast float %1603, 6.250000e-02
  %1605 = fadd fast float %1594, %1593
  %1606 = fadd fast float %1605, %1592
  %1607 = fmul fast float %1606, 0x3FDC71C720000000
  %1608 = fadd fast float %1604, %1591
  %1609 = fadd fast float %1608, %1607
  %1610 = fmul fast float %1539, 0x3FD20DD760000000
  %1611 = fmul fast float %1561, %1538
  %1612 = fmul fast float %1556, %1537
  %1613 = fmul fast float %1560, %1536
  %1614 = fmul fast float %1571, %1535
  %1615 = fmul fast float %1564, %1534
  %1616 = fmul fast float %1559, %1533
  %1617 = fmul fast float %1563, %1532
  %1618 = fmul fast float %1568, %1531
  %1619 = fadd fast float %1615, %1617
  %1620 = fadd fast float %1619, %1616
  %1621 = fadd fast float %1620, %1618
  %1622 = fadd fast float %1621, %1614
  %1623 = fmul fast float %1622, 6.250000e-02
  %1624 = fadd fast float %1613, %1612
  %1625 = fadd fast float %1624, %1611
  %1626 = fmul fast float %1625, 0x3FDC71C720000000
  %1627 = fadd fast float %1623, %1610
  %1628 = fadd fast float %1627, %1626
  %1629 = fmul fast float %1521, 0x3FDCE2F220000000
  %1630 = fmul fast float %1590, 0x3FE3333340000000
  %1631 = fsub fast float %1629, %1630
  %1632 = fmul fast float %1530, 0x3FDCE2F220000000
  %1633 = fmul fast float %1609, 0x3FE3333340000000
  %1634 = fsub fast float %1632, %1633
  %1635 = fmul fast float %1539, 0x3FDCE2F220000000
  %1636 = fmul fast float %1628, 0x3FE3333340000000
  %1637 = fsub fast float %1635, %1636
  %1638 = fmul fast float %1590, 0x4003333340000000
  %1639 = fmul fast float %1521, 0x3FE5AA35A0000000
  %1640 = fsub fast float %1638, %1639
  %1641 = fmul fast float %1609, 0x4003333340000000
  %1642 = fmul fast float %1530, 0x3FE5AA35A0000000
  %1643 = fsub fast float %1641, %1642
  %1644 = fmul fast float %1628, 0x4003333340000000
  %1645 = fmul fast float %1539, 0x3FE5AA35A0000000
  %1646 = fsub fast float %1644, %1645
  %1647 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1631)  ; FMax(a,b)
  %1648 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1634)  ; FMax(a,b)
  %1649 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1637)  ; FMax(a,b)
  %1650 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1640)  ; FMax(a,b)
  %1651 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1643)  ; FMax(a,b)
  %1652 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1646)  ; FMax(a,b)
  %1653 = call float @dx.op.dot3.f32(i32 55, float %56, float %57, float %58, float %1553, float %1554, float %1555)  ; Dot3(ax,ay,az,bx,by,bz)
  %1654 = call float @dx.op.unary.f32(i32 7, float %1653)  ; Saturate(value)
  %1655 = fmul fast float %1654, %1650
  %1656 = fmul fast float %1654, %1651
  %1657 = fmul fast float %1654, %1652
  %1658 = fadd fast float %1655, %1647
  %1659 = fadd fast float %1656, %1648
  %1660 = fadd fast float %1657, %1649
  %1661 = call float @dx.op.binary.f32(i32 35, float %1658, float 0.000000e+00)  ; FMax(a,b)
  %1662 = call float @dx.op.binary.f32(i32 35, float %1659, float 0.000000e+00)  ; FMax(a,b)
  %1663 = call float @dx.op.binary.f32(i32 35, float %1660, float 0.000000e+00)  ; FMax(a,b)
  %1664 = call float @dx.op.dot3.f32(i32 55, float %1661, float %1662, float %1663, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  br label %1667

; <label>:1665                                    ; preds = %1512
  %1666 = call float @dx.op.dot3.f32(i32 55, float %1521, float %1530, float %1539, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  br label %1667

; <label>:1667                                    ; preds = %1665, %1542
  %1668 = phi float [ %1664, %1542 ], [ %1666, %1665 ]
  %1669 = fmul float %1541, %1668
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %20, i32 %21, i32 undef, float %1669, float %1669, float %1669, float %1669, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %1670

; <label>:1670                                    ; preds = %1667, %34
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @dx.op.threadId.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare float @dx.op.unary.f32(i32, float) #0

; Function Attrs: nounwind
declare void @dx.op.textureStore.f32(i32, %dx.types.Handle, i32, i32, i32, float, float, float, float, i8) #1

; Function Attrs: nounwind readnone
declare float @dx.op.dot3.f32(i32, float, float, float, float, float, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.binary.f32(i32, float, float) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.unaryBits.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare float @dx.op.tertiary.f32(i32, float, float, float) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.binary.i32(i32, i32, i32) #0

; Function Attrs: nounwind readnone
declare float @dx.op.legacyF16ToF32(i32, i32) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32, %dx.types.Handle, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32, %dx.types.Handle, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.Handle @dx.op.createHandle(i32, i8, i32, i32, i1) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32, %dx.types.Handle, i32, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32, %dx.types.Handle, i32, i32) #2

attributes #0 = { nounwind readnone }
attributes #1 = { nounwind }
attributes #2 = { nounwind readonly }

!llvm.ident = !{!0}
!dx.version = !{!1}
!dx.valver = !{!2}
!dx.shaderModel = !{!3}
!dx.resources = !{!4}
!dx.entryPoints = !{!28}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !20, !22, !26}
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !19}
!6 = !{i32 0, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 0, i32 1, i32 11, i32 0, null}
!7 = !{i32 1, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 1, i32 1, i32 11, i32 0, null}
!8 = !{i32 2, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 2, i32 1, i32 11, i32 0, null}
!9 = !{i32 3, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 3, i32 1, i32 11, i32 0, null}
!10 = !{i32 4, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 8, i32 1, i32 11, i32 0, null}
!11 = !{i32 5, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 4, i32 1, i32 11, i32 0, null}
!12 = !{i32 6, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 5, i32 1, i32 11, i32 0, null}
!13 = !{i32 7, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 6, i32 1, i32 11, i32 0, null}
!14 = !{i32 8, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 7, i32 1, i32 11, i32 0, null}
!15 = !{i32 9, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 28, i32 1, i32 11, i32 0, null}
!16 = !{i32 10, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 30, i32 1, i32 11, i32 0, null}
!17 = !{i32 11, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 14, i32 1, i32 2, i32 0, !18}
!18 = !{i32 0, i32 9}
!19 = !{i32 12, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 34, i32 1, i32 11, i32 0, null}
!20 = !{!21}
!21 = !{i32 0, %"class.RWTexture2D<float>"* undef, !"", i32 0, i32 0, i32 1, i32 2, i1 false, i1 false, i1 false, !18}
!22 = !{!23, !24, !25}
!23 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!24 = !{i32 1, %GfxLGBoundConsts* undef, !"", i32 0, i32 4, i32 1, i32 16, null}
!25 = !{i32 2, %DeferredEffectLightConsts_decl* undef, !"", i32 0, i32 1, i32 1, i32 240, null}
!26 = !{!27}
!27 = !{i32 0, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!28 = !{void ()* @cs_light_sensor_baked, !"cs_light_sensor_baked", null, !4, !29}
!29 = !{i32 0, i64 272, i32 4, !30}
!30 = !{i32 64, i32 1, i32 1}
!31 = distinct !{!31, !"dx.controlflow.hints", i32 2}
!32 = distinct !{!32, !"dx.controlflow.hints", i32 2}
!33 = distinct !{!33, !"dx.controlflow.hints", i32 2}
!34 = distinct !{!34, !"dx.controlflow.hints", i32 2}
!35 = distinct !{!35, !"dx.controlflow.hints", i32 1}
!36 = distinct !{!36, !"dx.controlflow.hints", i32 1}
!37 = distinct !{!37, !"dx.controlflow.hints", i32 1}
!38 = distinct !{!38, !"dx.controlflow.hints", i32 1}
!39 = distinct !{!39, !"dx.controlflow.hints", i32 2}
!40 = distinct !{!40, !"dx.controlflow.hints", i32 2}
!41 = !{!42, !42, i64 0}
!42 = !{!"int", !43, i64 0}
!43 = !{!"omnipotent char", !44, i64 0}
!44 = !{!"Simple C/C++ TBAA"}
!45 = !{!46, !48}
!46 = distinct !{!46, !47, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_Sprite@@ULightIteratorOutput_Sprite@@@Z: %lightingOutput"}
!47 = distinct !{!47, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_Sprite@@ULightIteratorOutput_Sprite@@@Z"}
!48 = distinct !{!48, !49, !"\01?Lights_Iterate_Sprite@@YAXULocalAttributes@@ULightIteratorInput_Sprite@@ULightIteratorOutput_Sprite@@@Z: %lightingOutput"}
!49 = distinct !{!49, !"\01?Lights_Iterate_Sprite@@YAXULocalAttributes@@ULightIteratorInput_Sprite@@ULightIteratorOutput_Sprite@@@Z"}
!50 = distinct !{!50, !"dx.controlflow.hints", i32 2}
!51 = distinct !{!51, !"dx.controlflow.hints", i32 2}
!52 = distinct !{!52, !"dx.controlflow.hints", i32 2}
!53 = distinct !{!53, !"dx.controlflow.hints", i32 1}
!54 = distinct !{!54, !"dx.controlflow.hints", i32 2}
!55 = distinct !{!55, !56}
!56 = !{!"llvm.loop.unroll.disable"}
!57 = distinct !{!57, !56}
!58 = distinct !{!58, !"dx.controlflow.hints", i32 2}
!59 = distinct !{!59, !"dx.controlflow.hints", i32 2}
!60 = distinct !{!60, !"dx.controlflow.hints", i32 2}
!61 = distinct !{!61, !"dx.controlflow.hints", i32 2}
!62 = distinct !{!62, !"dx.controlflow.hints", i32 2}
!63 = distinct !{!63, !"dx.controlflow.hints", i32 2}
!64 = distinct !{!64, !56}
!65 = distinct !{!65, !"dx.controlflow.hints", i32 2}
!66 = distinct !{!66, !"dx.controlflow.hints", i32 2}
!67 = distinct !{!67, !"dx.controlflow.hints", i32 2}
!68 = !{!69, !71, !72, !73, !74, !75}
!69 = distinct !{!69, !70, !"\01?LookupRawLightGrid@@YA_NV?$vector@M$02@@IIIIUGfxSHProbeFallback@@_NUSH3Vec@@33AIAM4AIAI@Z: %probeR"}
!70 = distinct !{!70, !"\01?LookupRawLightGrid@@YA_NV?$vector@M$02@@IIIIUGfxSHProbeFallback@@_NUSH3Vec@@33AIAM4AIAI@Z"}
!71 = distinct !{!71, !70, !"\01?LookupRawLightGrid@@YA_NV?$vector@M$02@@IIIIUGfxSHProbeFallback@@_NUSH3Vec@@33AIAM4AIAI@Z: %probeG"}
!72 = distinct !{!72, !70, !"\01?LookupRawLightGrid@@YA_NV?$vector@M$02@@IIIIUGfxSHProbeFallback@@_NUSH3Vec@@33AIAM4AIAI@Z: %probeB"}
!73 = distinct !{!73, !70, !"\01?LookupRawLightGrid@@YA_NV?$vector@M$02@@IIIIUGfxSHProbeFallback@@_NUSH3Vec@@33AIAM4AIAI@Z: %probeA"}
!74 = distinct !{!74, !70, !"\01?LookupRawLightGrid@@YA_NV?$vector@M$02@@IIIIUGfxSHProbeFallback@@_NUSH3Vec@@33AIAM4AIAI@Z: %primaryVisibility"}
!75 = distinct !{!75, !70, !"\01?LookupRawLightGrid@@YA_NV?$vector@M$02@@IIIIUGfxSHProbeFallback@@_NUSH3Vec@@33AIAM4AIAI@Z: %usedTet"}
!76 = !{!77, !77, i64 0}
!77 = !{!"float", !43, i64 0}
!78 = distinct !{!78, !"dx.controlflow.hints", i32 2}
!79 = distinct !{!79, !"dx.controlflow.hints", i32 2}
!80 = distinct !{!80, !"dx.controlflow.hints", i32 2}

