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
; shader hash: 8e42ec87ed1c5e1cd7cd404bed6bdba1
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
;   [80 x i8] (type annotation not present)
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
;   [16 x i8] (type annotation not present)
; }
;
; Resource bind info for 
; {
;
;   [16 x i8] (type annotation not present)
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
;                                   texture    byte         r/o      T0            t28     1
;                                   texture  struct         r/o      T1             t0     1
;                                   texture     u32         buf      T2             t1     1
;                                   texture  struct         r/o      T3             t2     1
;                                   texture     u32         buf      T4             t3     1
;                                   texture     u32         buf      T5             t4     1
;                                   texture     u32         buf      T6             t5     1
;                                   texture     f32         buf      T7             t6     1
;                                   texture     u32         buf      T8             t7     1
;                                   texture     f32         buf      T9             t8     1
;                                   texture    byte         r/o     T10             t9     1
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
%"class.StructuredBuffer<GfxNeuralLightGridTopLevelNode>" = type { %struct.GfxNeuralLightGridTopLevelNode }
%struct.GfxNeuralLightGridTopLevelNode = type { i32, i32, i32, i32 }
%"class.Buffer<unsigned int>" = type { i32 }
%"class.StructuredBuffer<GfxNeuralLightGridInternalNode>" = type { %struct.GfxNeuralLightGridInternalNode }
%struct.GfxNeuralLightGridInternalNode = type { <2 x i32>, <2 x i32> }
%"class.Buffer<vector<float, 4> >" = type { <4 x float> }
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
%GfxNeuralLightGridSetupConsts = type { <3 x float>, i32, <3 x float>, i32, <3 x float>, i32, <3 x i32>, i32, float, i32, i32, i32 }
%DeferredEffectLightConsts_decl = type { %struct.DeferredEffectLightConsts }
%struct.DeferredEffectLightConsts = type { i32, float, float, i32, i32, i32, i32, i32, i32, i32, i32, i32, [12 x <4 x i32>] }
%struct.SamplerState = type { i32 }

@PCF_OFFSETS_8.v.1dim = internal constant [16 x float] [float 0xBFE6A09020000000, float 0x3FE6A09020000000, float 0.000000e+00, float -8.750000e-01, float 0x3FE0F837C0000000, float 0x3FE0F837C0000000, float -6.250000e-01, float 0.000000e+00, float 0x3FD6A161E0000000, float 0xBFD6A161E0000000, float 0.000000e+00, float 3.750000e-01, float 0xBFC6A161E0000000, float 0xBFC6A161E0000000, float 1.250000e-01, float 0.000000e+00], align 4

define void @cs_light_sensor_baked() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 12, i32 34, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 11, i32 14, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 9, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 7, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 28, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 2, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = alloca [4 x i32], align 4
  %20 = call i32 @dx.op.threadId.i32(i32 93, i32 0)  ; ThreadId(component)
  %21 = call i32 @dx.op.threadId.i32(i32 93, i32 1)  ; ThreadId(component)
  %22 = alloca [12 x float], align 4
  %23 = alloca [12 x float], align 4
  %24 = alloca [8 x float], align 4
  %25 = alloca [8 x i32], align 4
  %26 = alloca [8 x float], align 4
  %27 = alloca [4 x float], align 4
  %28 = shl i32 %21, 6
  %29 = add i32 %28, %20
  %30 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %16, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %31 = extractvalue %dx.types.CBufRet.i32 %30, 0
  %32 = icmp ult i32 %29, %31
  br i1 %32, label %34, label %33, !dx.controlflow.hints !33

; <label>:33                                      ; preds = %0
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %20, i32 %21, i32 undef, float -1.000000e+00, float -1.000000e+00, float -1.000000e+00, float -1.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %1321

; <label>:34                                      ; preds = %0
  %35 = shl i32 %29, 4
  %36 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %35, i32 undef)  ; BufferLoad(srv,index,wot)
  %37 = extractvalue %dx.types.ResRet.i32 %36, 0
  %38 = extractvalue %dx.types.ResRet.i32 %36, 1
  %39 = extractvalue %dx.types.ResRet.i32 %36, 2
  %40 = extractvalue %dx.types.ResRet.i32 %36, 3
  %41 = bitcast i32 %37 to float
  %42 = bitcast i32 %38 to float
  %43 = bitcast i32 %39 to float
  %44 = and i32 %40, 255
  %45 = lshr i32 %40, 8
  %46 = and i32 %45, 255
  %47 = lshr i32 %40, 16
  %48 = and i32 %47, 255
  %49 = sitofp i32 %44 to float
  %50 = sitofp i32 %46 to float
  %51 = sitofp i32 %48 to float
  %52 = fmul fast float %49, 0x3F80101020000000
  %53 = fmul fast float %50, 0x3F80101020000000
  %54 = fmul fast float %51, 0x3F80101020000000
  %55 = fadd fast float %52, -1.000000e+00
  %56 = fadd fast float %53, -1.000000e+00
  %57 = fadd fast float %54, -1.000000e+00
  %58 = lshr i32 %40, 24
  %59 = uitofp i32 %58 to float
  %60 = call float @dx.op.dot3.f32(i32 55, float %55, float %56, float %57, float %55, float %56, float %57)  ; Dot3(ax,ay,az,bx,by,bz)
  %61 = fcmp fast ogt float %60, 0x3FE9EB8520000000
  %62 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %63 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %64 = extractvalue %dx.types.CBufRet.f32 %63, 3
  %65 = fcmp fast oeq float %64, 0.000000e+00
  br i1 %65, label %420, label %66, !dx.controlflow.hints !34

; <label>:66                                      ; preds = %34
  %67 = extractvalue %dx.types.CBufRet.f32 %62, 2
  %68 = fsub fast float %43, %67
  %69 = extractvalue %dx.types.CBufRet.f32 %62, 1
  %70 = fsub fast float %42, %69
  %71 = extractvalue %dx.types.CBufRet.f32 %62, 0
  %72 = fsub fast float %41, %71
  %73 = extractvalue %dx.types.CBufRet.f32 %63, 0
  %74 = extractvalue %dx.types.CBufRet.f32 %63, 1
  %75 = extractvalue %dx.types.CBufRet.f32 %63, 2
  %76 = fmul fast float %73, %59
  %77 = fmul fast float %74, %59
  %78 = fmul fast float %75, %59
  %79 = fadd fast float %76, %72
  %80 = fadd fast float %77, %70
  %81 = fadd fast float %78, %68
  %82 = fcmp fast olt float %64, 0.000000e+00
  br i1 %82, label %420, label %83, !dx.controlflow.hints !35

; <label>:83                                      ; preds = %66
  %84 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %85 = extractvalue %dx.types.CBufRet.f32 %84, 0
  %86 = extractvalue %dx.types.CBufRet.f32 %84, 1
  %87 = extractvalue %dx.types.CBufRet.f32 %84, 2
  %88 = extractvalue %dx.types.CBufRet.f32 %84, 3
  %89 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %90 = extractvalue %dx.types.CBufRet.f32 %89, 0
  %91 = extractvalue %dx.types.CBufRet.f32 %89, 1
  %92 = extractvalue %dx.types.CBufRet.f32 %89, 2
  %93 = extractvalue %dx.types.CBufRet.f32 %89, 3
  %94 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %95 = extractvalue %dx.types.CBufRet.f32 %94, 0
  %96 = extractvalue %dx.types.CBufRet.f32 %94, 1
  %97 = extractvalue %dx.types.CBufRet.f32 %94, 2
  %98 = extractvalue %dx.types.CBufRet.f32 %94, 3
  %99 = fmul fast float %85, %79
  %100 = call float @dx.op.tertiary.f32(i32 46, float %80, float %86, float %99)  ; FMad(a,b,c)
  %101 = call float @dx.op.tertiary.f32(i32 46, float %81, float %87, float %100)  ; FMad(a,b,c)
  %102 = fadd fast float %101, %88
  %103 = fmul fast float %90, %79
  %104 = call float @dx.op.tertiary.f32(i32 46, float %80, float %91, float %103)  ; FMad(a,b,c)
  %105 = call float @dx.op.tertiary.f32(i32 46, float %81, float %92, float %104)  ; FMad(a,b,c)
  %106 = fadd fast float %105, %93
  %107 = fmul fast float %95, %79
  %108 = call float @dx.op.tertiary.f32(i32 46, float %80, float %96, float %107)  ; FMad(a,b,c)
  %109 = call float @dx.op.tertiary.f32(i32 46, float %81, float %97, float %108)  ; FMad(a,b,c)
  %110 = fadd fast float %109, %98
  %111 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %112 = extractvalue %dx.types.CBufRet.f32 %111, 0
  %113 = extractvalue %dx.types.CBufRet.f32 %111, 1
  %114 = extractvalue %dx.types.CBufRet.f32 %111, 3
  %115 = fmul fast float %114, %102
  %116 = fmul fast float %114, %106
  %117 = fadd fast float %115, %112
  %118 = fadd fast float %116, %113
  %119 = extractvalue %dx.types.CBufRet.f32 %111, 2
  %120 = fcmp fast olt float %119, 0.000000e+00
  %121 = fsub fast float -0.000000e+00, %119
  %122 = select i1 %120, float %121, float %119
  %123 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %124 = extractvalue %dx.types.CBufRet.f32 %123, 1
  %125 = fadd fast float %122, %124
  %126 = fcmp fast ogt float %125, 0.000000e+00
  br i1 %126, label %127, label %159, !dx.controlflow.hints !36

; <label>:127                                     ; preds = %83
  %128 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %129 = extractvalue %dx.types.CBufRet.f32 %128, 1
  %130 = fsub fast float %129, %110
  %131 = extractvalue %dx.types.CBufRet.f32 %128, 2
  %132 = fmul fast float %130, %131
  %133 = fsub fast float 1.000000e+00, %132
  %134 = call float @dx.op.unary.f32(i32 7, float %133)  ; Saturate(value)
  %135 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %136 = extractvalue %dx.types.CBufRet.f32 %135, 0
  %137 = extractvalue %dx.types.CBufRet.f32 %135, 1
  %138 = fsub fast float %117, %136
  %139 = fsub fast float %118, %137
  %140 = fcmp fast olt float %138, 0.000000e+00
  %141 = fcmp fast olt float %139, 0.000000e+00
  %142 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %143 = extractvalue %dx.types.CBufRet.f32 %142, 0
  %144 = extractvalue %dx.types.CBufRet.f32 %142, 1
  %145 = extractvalue %dx.types.CBufRet.f32 %142, 2
  %146 = extractvalue %dx.types.CBufRet.f32 %142, 3
  %147 = select i1 %140, float %143, float %145
  %148 = select i1 %141, float %144, float %146
  %149 = fmul fast float %147, %138
  %150 = fmul fast float %148, %139
  %151 = call float @dx.op.unary.f32(i32 6, float %149)  ; FAbs(value)
  %152 = call float @dx.op.unary.f32(i32 6, float %150)  ; FAbs(value)
  %153 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %154 = extractvalue %dx.types.CBufRet.f32 %153, 0
  %155 = call float @dx.op.binary.f32(i32 35, float %151, float %152)  ; FMax(a,b)
  %156 = fsub fast float %154, %155
  %157 = call float @dx.op.unary.f32(i32 7, float %156)  ; Saturate(value)
  %158 = fmul fast float %157, %134
  br label %159

; <label>:159                                     ; preds = %127, %83
  %160 = phi float [ %158, %127 ], [ 0.000000e+00, %83 ]
  %161 = call float @dx.op.binary.f32(i32 35, float %160, float 0.000000e+00)  ; FMax(a,b)
  %162 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %161)  ; FMax(a,b)
  %163 = fcmp fast olt float %162, 1.000000e+00
  br i1 %163, label %164, label %381, !dx.controlflow.hints !37

; <label>:164                                     ; preds = %159
  %165 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %166 = extractvalue %dx.types.CBufRet.f32 %165, 0
  %167 = fcmp fast une float %166, 0.000000e+00
  br i1 %167, label %168, label %381, !dx.controlflow.hints !38

; <label>:168                                     ; preds = %164
  %169 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %170 = extractvalue %dx.types.CBufRet.f32 %169, 0
  %171 = extractvalue %dx.types.CBufRet.f32 %169, 1
  %172 = extractvalue %dx.types.CBufRet.f32 %169, 2
  %173 = extractvalue %dx.types.CBufRet.f32 %169, 3
  %174 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %175 = extractvalue %dx.types.CBufRet.f32 %174, 0
  %176 = extractvalue %dx.types.CBufRet.f32 %174, 1
  %177 = extractvalue %dx.types.CBufRet.f32 %174, 2
  %178 = extractvalue %dx.types.CBufRet.f32 %174, 3
  %179 = fmul fast float %170, %79
  %180 = call float @dx.op.tertiary.f32(i32 46, float %80, float %171, float %179)  ; FMad(a,b,c)
  %181 = call float @dx.op.tertiary.f32(i32 46, float %81, float %172, float %180)  ; FMad(a,b,c)
  %182 = fadd fast float %181, %173
  %183 = fmul fast float %175, %79
  %184 = call float @dx.op.tertiary.f32(i32 46, float %80, float %176, float %183)  ; FMad(a,b,c)
  %185 = call float @dx.op.tertiary.f32(i32 46, float %81, float %177, float %184)  ; FMad(a,b,c)
  %186 = fadd fast float %185, %178
  %187 = fcmp fast oge float %182, 1.000000e+00
  %188 = fcmp fast oge float %186, 1.000000e+00
  %189 = or i1 %187, %188
  %190 = fcmp fast olt float %182, 0.000000e+00
  %191 = fcmp fast olt float %186, 0.000000e+00
  %192 = or i1 %190, %191
  %193 = or i1 %189, %192
  br i1 %193, label %381, label %194, !dx.controlflow.hints !39

; <label>:194                                     ; preds = %168
  %195 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %196 = extractvalue %dx.types.CBufRet.f32 %195, 0
  %197 = extractvalue %dx.types.CBufRet.f32 %195, 1
  %198 = extractvalue %dx.types.CBufRet.f32 %195, 2
  %199 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %18, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %200 = extractvalue %dx.types.CBufRet.i32 %199, 2
  %201 = uitofp i32 %200 to float
  %202 = extractvalue %dx.types.CBufRet.i32 %199, 3
  %203 = uitofp i32 %202 to float
  %204 = extractvalue %dx.types.CBufRet.f32 %195, 3
  %205 = fmul fast float %204, 2.000000e+00
  %206 = fsub fast float %182, %196
  %207 = fsub fast float %186, %197
  %208 = fmul fast float %205, %206
  %209 = fmul fast float %205, %207
  %210 = fdiv fast float 1.000000e+00, %75
  %211 = fmul fast float %209, %210
  %212 = call float @dx.op.unary.f32(i32 6, float %211)  ; FAbs(value)
  %213 = fmul fast float %198, %81
  %214 = fmul fast float %213, %205
  %215 = call float @dx.op.unary.f32(i32 6, float %214)  ; FAbs(value)
  %216 = call float @dx.op.unary.f32(i32 6, float %208)  ; FAbs(value)
  %217 = call float @dx.op.binary.f32(i32 35, float %215, float %212)  ; FMax(a,b)
  %218 = call float @dx.op.binary.f32(i32 35, float %216, float %217)  ; FMax(a,b)
  %219 = fmul fast float %218, 2.000000e+00
  %220 = call float @dx.op.unary.f32(i32 23, float %219)  ; Log(value)
  %221 = call float @dx.op.binary.f32(i32 35, float %220, float %201)  ; FMax(a,b)
  %222 = call float @dx.op.unary.f32(i32 22, float %221)  ; Frc(value)
  %223 = fadd fast float %222, 0xBFEA666660000000
  %224 = fmul fast float %223, 8.000000e+00
  %225 = call float @dx.op.unary.f32(i32 7, float %224)  ; Saturate(value)
  %226 = call float @dx.op.unary.f32(i32 27, float %221)  ; Round_ni(value)
  %227 = fadd fast float %226, %225
  %228 = call float @dx.op.binary.f32(i32 36, float %227, float %203)  ; FMin(a,b)
  %229 = call float @dx.op.unary.f32(i32 27, float %228)  ; Round_ni(value)
  %230 = fsub fast float -0.000000e+00, %229
  %231 = call float @dx.op.unary.f32(i32 21, float %230)  ; Exp(value)
  %232 = fmul fast float %231, %205
  %233 = fsub fast float %203, %201
  %234 = fptoui float %233 to i32
  %235 = add i32 %234, 320
  %236 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 %235)  ; CBufferLoadLegacy(handle,regIndex)
  %237 = extractvalue %dx.types.CBufRet.f32 %236, 0
  %238 = extractvalue %dx.types.CBufRet.f32 %236, 1
  %239 = fcmp fast une float %228, %203
  %240 = fsub fast float %182, %237
  %241 = fsub fast float %186, %238
  %242 = call float @dx.op.unary.f32(i32 6, float %240)  ; FAbs(value)
  %243 = call float @dx.op.unary.f32(i32 6, float %241)  ; FAbs(value)
  %244 = fmul fast float %242, %232
  %245 = fmul fast float %243, %232
  %246 = fcmp fast olt float %244, 1.000000e+00
  %247 = fcmp fast olt float %245, 1.000000e+00
  %248 = and i1 %246, %247
  %249 = or i1 %239, %248
  br i1 %249, label %250, label %381, !dx.controlflow.hints !40

; <label>:250                                     ; preds = %194
  %251 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %252 = extractvalue %dx.types.ResRet.i32 %251, 0
  %253 = and i32 %252, 536870911
  %254 = uitofp i32 %253 to float
  %255 = fmul fast float %254, %182
  %256 = fmul fast float %254, %186
  %257 = fptoui float %255 to i32
  %258 = fptoui float %256 to i32
  %259 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %260 = extractvalue %dx.types.ResRet.i32 %259, 0
  %261 = and i32 %260, 31
  %262 = lshr i32 %257, %261
  %263 = lshr i32 %258, %261
  %264 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %265 = extractvalue %dx.types.ResRet.i32 %264, 0
  %266 = and i32 %265, 31
  %267 = shl i32 1, %266
  %268 = call i32 @dx.op.binary.i32(i32 40, i32 %267, i32 4)  ; UMin(a,b)
  %269 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %270 = extractvalue %dx.types.ResRet.i32 %269, 0
  %271 = extractvalue %dx.types.ResRet.i32 %269, 1
  %272 = icmp eq i32 %268, 0
  br i1 %272, label %314, label %273

; <label>:273                                     ; preds = %250
  br label %274

; <label>:274                                     ; preds = %302, %273
  %275 = phi i32 [ %305, %302 ], [ 0, %273 ]
  %276 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %277 = extractvalue %dx.types.ResRet.i32 %276, 0
  %278 = lshr i32 %277, 16
  %279 = and i32 %278, 31
  %280 = shl i32 %263, %279
  %281 = add i32 %280, %262
  %282 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %283 = extractvalue %dx.types.ResRet.i32 %282, 0
  %284 = and i32 %283, 31
  %285 = shl i32 %281, %284
  %286 = add i32 %285, %275
  %287 = shl i32 %286, 2
  %288 = add i32 %287, 32
  %289 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %288, i32 undef)  ; BufferLoad(srv,index,wot)
  %290 = extractvalue %dx.types.ResRet.i32 %289, 0
  %291 = icmp slt i32 %290, 0
  %292 = getelementptr [12 x float], [12 x float]* %22, i32 0, i32 %275
  %293 = getelementptr [12 x float], [12 x float]* %23, i32 0, i32 %275
  %294 = bitcast float* %292 to i32*
  %295 = bitcast float* %293 to i32*
  br i1 %291, label %296, label %302, !dx.controlflow.hints !41

; <label>:296                                     ; preds = %274
  %297 = and i32 %290, 1073741823
  %298 = add nuw nsw i32 %297, 20
  %299 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %298, i32 undef)  ; BufferLoad(srv,index,wot)
  %300 = extractvalue %dx.types.ResRet.i32 %299, 0
  %301 = extractvalue %dx.types.ResRet.i32 %299, 1
  br label %302

; <label>:302                                     ; preds = %296, %274
  %303 = phi i32 [ %300, %296 ], [ %270, %274 ]
  %304 = phi i32 [ %301, %296 ], [ %271, %274 ]
  store i32 %303, i32* %294, align 4
  store i32 %304, i32* %295, align 4
  %305 = add nuw i32 %275, 1
  %306 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %18, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %307 = extractvalue %dx.types.CBufRet.i32 %306, 2
  %308 = icmp eq i32 %307, 0
  %309 = icmp ugt i32 %290, -1073741825
  %310 = and i1 %309, %308
  %311 = icmp ult i32 %305, %268
  %312 = and i1 %310, %311
  br i1 %312, label %274, label %313, !dx.controlflow.hints !42

; <label>:313                                     ; preds = %302
  br label %314

; <label>:314                                     ; preds = %313, %250
  %315 = phi i32 [ 0, %250 ], [ %305, %313 ]
  %316 = extractvalue %dx.types.CBufRet.f32 %165, 2
  %317 = fptoui float %316 to i32
  %318 = icmp eq i32 %317, 0
  br i1 %318, label %370, label %319

; <label>:319                                     ; preds = %314
  br label %320

; <label>:320                                     ; preds = %365, %319
  %321 = phi i32 [ %366, %365 ], [ %315, %319 ]
  %322 = phi i32 [ %367, %365 ], [ 0, %319 ]
  %323 = lshr i32 %322, 2
  %324 = and i32 %322, 3
  %325 = add nuw nsw i32 %323, 83
  %326 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %18, i32 %325)  ; CBufferLoadLegacy(handle,regIndex)
  %327 = extractvalue %dx.types.CBufRet.i32 %326, 0
  %328 = extractvalue %dx.types.CBufRet.i32 %326, 1
  %329 = extractvalue %dx.types.CBufRet.i32 %326, 2
  %330 = extractvalue %dx.types.CBufRet.i32 %326, 3
  %331 = getelementptr inbounds [4 x i32], [4 x i32]* %19, i32 0, i32 0
  store i32 %327, i32* %331, align 4
  %332 = getelementptr inbounds [4 x i32], [4 x i32]* %19, i32 0, i32 1
  store i32 %328, i32* %332, align 4
  %333 = getelementptr inbounds [4 x i32], [4 x i32]* %19, i32 0, i32 2
  store i32 %329, i32* %333, align 4
  %334 = getelementptr inbounds [4 x i32], [4 x i32]* %19, i32 0, i32 3
  store i32 %330, i32* %334, align 4
  %335 = getelementptr inbounds [4 x i32], [4 x i32]* %19, i32 0, i32 %324
  %336 = load i32, i32* %335, align 4, !tbaa !43, !noalias !47
  %337 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %338 = extractvalue %dx.types.ResRet.i32 %337, 0
  %339 = lshr i32 %338, 16
  %340 = and i32 %339, 31
  %341 = shl i32 %263, %340
  %342 = add i32 %341, %262
  %343 = shl i32 %342, 2
  %344 = add i32 %343, %336
  %345 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %344, i32 undef)  ; BufferLoad(srv,index,wot)
  %346 = extractvalue %dx.types.ResRet.i32 %345, 0
  %347 = icmp eq i32 %346, 0
  br i1 %347, label %365, label %348, !dx.controlflow.hints !52

; <label>:348                                     ; preds = %320
  %349 = icmp slt i32 %346, 0
  %350 = getelementptr [12 x float], [12 x float]* %22, i32 0, i32 %321
  %351 = getelementptr [12 x float], [12 x float]* %23, i32 0, i32 %321
  %352 = bitcast float* %350 to i32*
  %353 = bitcast float* %351 to i32*
  br i1 %349, label %354, label %361, !dx.controlflow.hints !53

; <label>:354                                     ; preds = %348
  %355 = and i32 %346, 1073741823
  %356 = add i32 %336, 20
  %357 = add i32 %356, %355
  %358 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %357, i32 undef)  ; BufferLoad(srv,index,wot)
  %359 = extractvalue %dx.types.ResRet.i32 %358, 0
  %360 = extractvalue %dx.types.ResRet.i32 %358, 1
  br label %361

; <label>:361                                     ; preds = %354, %348
  %362 = phi i32 [ %359, %354 ], [ %270, %348 ]
  %363 = phi i32 [ %360, %354 ], [ %271, %348 ]
  store i32 %362, i32* %352, align 4
  store i32 %363, i32* %353, align 4
  %364 = add i32 %321, 1
  br label %365

; <label>:365                                     ; preds = %361, %320
  %366 = phi i32 [ %321, %320 ], [ %364, %361 ]
  %367 = add nuw i32 %322, 1
  %368 = icmp eq i32 %367, %317
  br i1 %368, label %369, label %320

; <label>:369                                     ; preds = %365
  br label %370

; <label>:370                                     ; preds = %369, %314
  %371 = phi i32 [ %315, %314 ], [ %366, %369 ]
  %372 = icmp eq i32 %371, 1
  br i1 %372, label %381, label %373, !dx.controlflow.hints !54

; <label>:373                                     ; preds = %370
  %374 = icmp ugt i32 %371, 1
  br i1 %374, label %375, label %381

; <label>:375                                     ; preds = %373
  br label %376

; <label>:376                                     ; preds = %376, %375
  %377 = phi i32 [ %378, %376 ], [ 1, %375 ]
  %378 = add nuw i32 %377, 1
  %379 = icmp eq i32 %378, %371
  br i1 %379, label %380, label %376

; <label>:380                                     ; preds = %376
  br label %381

; <label>:381                                     ; preds = %380, %373, %370, %194, %168, %164, %159
  %382 = fcmp fast ogt float %160, 0.000000e+00
  br i1 %382, label %383, label %420, !dx.controlflow.hints !55

; <label>:383                                     ; preds = %381
  %384 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %385 = extractvalue %dx.types.CBufRet.f32 %384, 1
  %386 = fcmp fast oeq float %385, 0.000000e+00
  br i1 %386, label %420, label %387, !dx.controlflow.hints !56

; <label>:387                                     ; preds = %383
  br label %388

; <label>:388                                     ; preds = %416, %387
  %389 = phi i32 [ %417, %416 ], [ 0, %387 ]
  %390 = mul i32 %389, 2
  %391 = add i32 0, %390
  %392 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %391
  %393 = load float, float* %392, align 4
  %394 = mul i32 %389, 2
  %395 = add i32 1, %394
  %396 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %395
  %397 = load float, float* %396, align 4
  %398 = call float @dx.op.tertiary.f32(i32 46, float %397, float -0.000000e+00, float %393)  ; FMad(a,b,c)
  %399 = fmul fast float %398, %385
  %400 = fmul fast float %397, %385
  %401 = fadd fast float %399, %117
  %402 = fadd fast float %400, %118
  %403 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %3, %dx.types.Handle %15, float %401, float %402, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %404 = extractvalue %dx.types.ResRet.f32 %403, 0
  %405 = extractvalue %dx.types.ResRet.f32 %403, 1
  %406 = extractvalue %dx.types.ResRet.f32 %403, 2
  %407 = extractvalue %dx.types.ResRet.f32 %403, 3
  %408 = getelementptr inbounds [4 x float], [4 x float]* %27, i32 0, i32 0
  store float %404, float* %408, align 4
  %409 = getelementptr inbounds [4 x float], [4 x float]* %27, i32 0, i32 1
  store float %405, float* %409, align 4
  %410 = getelementptr inbounds [4 x float], [4 x float]* %27, i32 0, i32 2
  store float %406, float* %410, align 4
  %411 = getelementptr inbounds [4 x float], [4 x float]* %27, i32 0, i32 3
  store float %407, float* %411, align 4
  br label %412

; <label>:412                                     ; preds = %412, %388
  %413 = phi i32 [ 1, %388 ], [ %414, %412 ]
  %414 = add nuw nsw i32 %413, 1
  %415 = icmp eq i32 %414, 4
  br i1 %415, label %416, label %412, !llvm.loop !57

; <label>:416                                     ; preds = %412
  %417 = add nuw nsw i32 %389, 1
  %418 = icmp eq i32 %417, 8
  br i1 %418, label %419, label %388, !llvm.loop !59

; <label>:419                                     ; preds = %416
  br label %420

; <label>:420                                     ; preds = %419, %383, %381, %66, %34
  %421 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %422 = extractvalue %dx.types.CBufRet.f32 %421, 0
  %423 = extractvalue %dx.types.CBufRet.f32 %421, 1
  %424 = extractvalue %dx.types.CBufRet.f32 %421, 2
  %425 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %426 = extractvalue %dx.types.CBufRet.f32 %425, 0
  %427 = extractvalue %dx.types.CBufRet.f32 %425, 1
  %428 = extractvalue %dx.types.CBufRet.f32 %425, 2
  %429 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %17, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %430 = extractvalue %dx.types.CBufRet.i32 %429, 1
  %431 = fsub fast float %41, %422
  %432 = fsub fast float %42, %423
  %433 = fsub fast float %43, %424
  %434 = fmul fast float %431, %426
  %435 = fmul fast float %432, %427
  %436 = fmul fast float %433, %428
  %437 = fcmp fast ole float %434, 0.000000e+00
  %438 = fcmp fast ole float %435, 0.000000e+00
  %439 = fcmp fast ole float %436, 0.000000e+00
  %440 = or i1 %437, %438
  %441 = or i1 %439, %440
  %442 = fcmp fast oge float %434, 1.000000e+00
  %443 = fcmp fast oge float %435, 1.000000e+00
  %444 = fcmp fast oge float %436, 1.000000e+00
  %445 = or i1 %442, %443
  %446 = or i1 %444, %445
  %447 = or i1 %441, %446
  br i1 %447, label %1163, label %448, !dx.controlflow.hints !60

; <label>:448                                     ; preds = %420
  %449 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %17, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %450 = extractvalue %dx.types.CBufRet.i32 %449, 0
  %451 = fptosi float %431 to i32
  %452 = fptosi float %432 to i32
  %453 = fptosi float %433 to i32
  %454 = and i32 %430, 31
  %455 = ashr i32 %451, %454
  %456 = ashr i32 %452, %454
  %457 = ashr i32 %453, %454
  %458 = mul i32 %450, %456
  %459 = add nsw i32 %458, %455
  %460 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %459, i32 0)  ; BufferLoad(srv,index,wot)
  %461 = extractvalue %dx.types.ResRet.i32 %460, 0
  %462 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %459, i32 4)  ; BufferLoad(srv,index,wot)
  %463 = extractvalue %dx.types.ResRet.i32 %462, 0
  %464 = icmp slt i32 %457, %461
  %465 = icmp sgt i32 %457, %463
  %466 = or i1 %464, %465
  br i1 %466, label %1163, label %467, !dx.controlflow.hints !61

; <label>:467                                     ; preds = %448
  %468 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %459, i32 8)  ; BufferLoad(srv,index,wot)
  %469 = extractvalue %dx.types.ResRet.i32 %468, 0
  %470 = sub i32 %457, %461
  %471 = add nsw i32 %470, %469
  %472 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %471, i32 undef)  ; BufferLoad(srv,index,wot)
  %473 = extractvalue %dx.types.ResRet.i32 %472, 0
  %474 = icmp eq i32 %473, -1
  br i1 %474, label %1163, label %475, !dx.controlflow.hints !62

; <label>:475                                     ; preds = %467
  %476 = getelementptr inbounds [8 x i32], [8 x i32]* %25, i32 0, i32 0
  store i32 -1, i32* %476, align 4, !tbaa !43, !noalias !63
  %477 = getelementptr inbounds [8 x i32], [8 x i32]* %25, i32 0, i32 1
  store i32 -1, i32* %477, align 4, !tbaa !43, !noalias !63
  %478 = getelementptr inbounds [8 x i32], [8 x i32]* %25, i32 0, i32 2
  store i32 -1, i32* %478, align 4, !tbaa !43, !noalias !63
  %479 = getelementptr inbounds [8 x i32], [8 x i32]* %25, i32 0, i32 3
  store i32 -1, i32* %479, align 4, !tbaa !43, !noalias !63
  %480 = getelementptr inbounds [8 x i32], [8 x i32]* %25, i32 0, i32 4
  store i32 -1, i32* %480, align 4, !tbaa !43, !noalias !63
  %481 = getelementptr inbounds [8 x i32], [8 x i32]* %25, i32 0, i32 5
  store i32 -1, i32* %481, align 4, !tbaa !43, !noalias !63
  %482 = getelementptr inbounds [8 x i32], [8 x i32]* %25, i32 0, i32 6
  store i32 -1, i32* %482, align 4, !tbaa !43, !noalias !63
  %483 = getelementptr inbounds [8 x i32], [8 x i32]* %25, i32 0, i32 7
  store i32 -1, i32* %483, align 4, !tbaa !43, !noalias !63
  br label %484

; <label>:484                                     ; preds = %588, %475
  %485 = phi i32 [ -1, %475 ], [ %585, %588 ]
  %486 = phi i32 [ -1, %475 ], [ %580, %588 ]
  %487 = phi i32 [ -1, %475 ], [ %573, %588 ]
  %488 = phi i32 [ -1, %475 ], [ %568, %588 ]
  %489 = phi i32 [ -1, %475 ], [ %559, %588 ]
  %490 = phi i32 [ -1, %475 ], [ %554, %588 ]
  %491 = phi i32 [ -1, %475 ], [ %546, %588 ]
  %492 = phi i32 [ -1, %475 ], [ %539, %588 ]
  %493 = phi i32 [ %473, %475 ], [ %608, %588 ]
  %494 = phi i32 [ %430, %475 ], [ %495, %588 ]
  %495 = add nsw i32 %494, -2
  %496 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %493, i32 undef)  ; BufferLoad(srv,index,wot)
  %497 = extractvalue %dx.types.ResRet.i32 %496, 0
  %498 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %493, i32 undef)  ; BufferLoad(srv,index,wot)
  %499 = extractvalue %dx.types.ResRet.i32 %498, 0
  %500 = and i32 %497, 31
  %501 = shl i32 1, %500
  %502 = add i32 %501, 1
  %503 = and i32 %495, 31
  %504 = ashr i32 %451, %503
  %505 = ashr i32 %452, %503
  %506 = ashr i32 %453, %503
  %507 = and i32 %504, 3
  %508 = and i32 %505, 3
  %509 = and i32 %506, 3
  br label %510

; <label>:510                                     ; preds = %510, %484
  %511 = phi i32 [ %485, %484 ], [ %585, %510 ]
  %512 = phi i32 [ %486, %484 ], [ %580, %510 ]
  %513 = phi i32 [ %487, %484 ], [ %573, %510 ]
  %514 = phi i32 [ %488, %484 ], [ %568, %510 ]
  %515 = phi i32 [ %489, %484 ], [ %559, %510 ]
  %516 = phi i32 [ %490, %484 ], [ %554, %510 ]
  %517 = phi i32 [ %491, %484 ], [ %546, %510 ]
  %518 = phi i32 [ %492, %484 ], [ %539, %510 ]
  %519 = phi i32 [ 0, %484 ], [ %586, %510 ]
  %520 = sub i32 2, %519
  %521 = and i32 %520, 31
  %522 = lshr i32 %507, %521
  %523 = lshr i32 %508, %521
  %524 = lshr i32 %509, %521
  %525 = sub i32 %497, %519
  %526 = and i32 %525, 31
  %527 = shl i32 %522, %526
  %528 = shl i32 %523, %526
  %529 = shl i32 %524, %526
  %530 = shl i32 1, %526
  %531 = mul i32 %529, %502
  %532 = add i32 %531, %528
  %533 = mul i32 %532, %502
  %534 = add i32 %527, %499
  %535 = add i32 %534, %533
  %536 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %535, i32 undef)  ; BufferLoad(srv,index,wot)
  %537 = extractvalue %dx.types.ResRet.i32 %536, 0
  %538 = icmp ne i32 %537, -1
  %539 = select i1 %538, i32 %537, i32 %518
  store i32 %539, i32* %476, align 4, !tbaa !43, !noalias !63
  %540 = add i32 %530, %499
  %541 = add i32 %540, %527
  %542 = add i32 %541, %533
  %543 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %542, i32 undef)  ; BufferLoad(srv,index,wot)
  %544 = extractvalue %dx.types.ResRet.i32 %543, 0
  %545 = icmp ne i32 %544, -1
  %546 = select i1 %545, i32 %544, i32 %517
  store i32 %546, i32* %477, align 4, !tbaa !43, !noalias !63
  %547 = add i32 %528, %530
  %548 = add i32 %547, %531
  %549 = mul i32 %548, %502
  %550 = add i32 %534, %549
  %551 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %550, i32 undef)  ; BufferLoad(srv,index,wot)
  %552 = extractvalue %dx.types.ResRet.i32 %551, 0
  %553 = icmp ne i32 %552, -1
  %554 = select i1 %553, i32 %552, i32 %516
  store i32 %554, i32* %478, align 4, !tbaa !43, !noalias !63
  %555 = add i32 %541, %549
  %556 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %555, i32 undef)  ; BufferLoad(srv,index,wot)
  %557 = extractvalue %dx.types.ResRet.i32 %556, 0
  %558 = icmp ne i32 %557, -1
  %559 = select i1 %558, i32 %557, i32 %515
  store i32 %559, i32* %479, align 4, !tbaa !43, !noalias !63
  %560 = add i32 %529, %530
  %561 = mul i32 %560, %502
  %562 = add i32 %561, %528
  %563 = mul i32 %562, %502
  %564 = add i32 %534, %563
  %565 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %564, i32 undef)  ; BufferLoad(srv,index,wot)
  %566 = extractvalue %dx.types.ResRet.i32 %565, 0
  %567 = icmp ne i32 %566, -1
  %568 = select i1 %567, i32 %566, i32 %514
  store i32 %568, i32* %480, align 4, !tbaa !43, !noalias !63
  %569 = add i32 %541, %563
  %570 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %569, i32 undef)  ; BufferLoad(srv,index,wot)
  %571 = extractvalue %dx.types.ResRet.i32 %570, 0
  %572 = icmp ne i32 %571, -1
  %573 = select i1 %572, i32 %571, i32 %513
  store i32 %573, i32* %481, align 4, !tbaa !43, !noalias !63
  %574 = add i32 %547, %561
  %575 = mul i32 %574, %502
  %576 = add i32 %534, %575
  %577 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %576, i32 undef)  ; BufferLoad(srv,index,wot)
  %578 = extractvalue %dx.types.ResRet.i32 %577, 0
  %579 = icmp ne i32 %578, -1
  %580 = select i1 %579, i32 %578, i32 %512
  store i32 %580, i32* %482, align 4, !tbaa !43, !noalias !63
  %581 = add i32 %541, %575
  %582 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %581, i32 undef)  ; BufferLoad(srv,index,wot)
  %583 = extractvalue %dx.types.ResRet.i32 %582, 0
  %584 = icmp ne i32 %583, -1
  %585 = select i1 %584, i32 %583, i32 %511
  store i32 %585, i32* %483, align 4, !tbaa !43, !noalias !63
  %586 = add i32 %519, 1
  %587 = icmp ugt i32 %586, %497
  br i1 %587, label %588, label %510

; <label>:588                                     ; preds = %510
  %589 = shl nuw nsw i32 %509, 4
  %590 = shl nuw nsw i32 %508, 2
  %591 = lshr i32 %509, 1
  %592 = and i32 %589, 16
  %593 = or i32 %590, %507
  %594 = or i32 %593, %592
  %595 = shl i32 1, %594
  %596 = shl nuw nsw i32 %591, 2
  %597 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %493, i32 %596)  ; BufferLoad(srv,index,wot)
  %598 = extractvalue %dx.types.ResRet.i32 %597, 0
  %599 = and i32 %598, %595
  %600 = icmp eq i32 %599, 0
  %601 = add i32 %595, -1
  %602 = and i32 %598, %601
  %603 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %602)  ; Countbits(value)
  %604 = or i32 %596, 8
  %605 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %493, i32 %604)  ; BufferLoad(srv,index,wot)
  %606 = extractvalue %dx.types.ResRet.i32 %605, 0
  %607 = add i32 %606, %603
  %608 = select i1 %600, i32 -1, i32 %607
  %609 = icmp eq i32 %608, -1
  br i1 %609, label %610, label %484

; <label>:610                                     ; preds = %588
  br label %611

; <label>:611                                     ; preds = %897, %610
  %612 = phi i32 [ %899, %897 ], [ %539, %610 ]
  %613 = phi float [ %894, %897 ], [ 0.000000e+00, %610 ]
  %614 = phi i32 [ %895, %897 ], [ 0, %610 ]
  %615 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %612, i32 undef)  ; BufferLoad(srv,index,wot)
  %616 = extractvalue %dx.types.ResRet.f32 %615, 0
  %617 = extractvalue %dx.types.ResRet.f32 %615, 1
  %618 = extractvalue %dx.types.ResRet.f32 %615, 2
  %619 = extractvalue %dx.types.ResRet.f32 %615, 3
  %620 = fsub fast float %41, %616
  %621 = fsub fast float %42, %617
  %622 = fsub fast float %43, %618
  %623 = fmul fast float %620, %619
  %624 = fmul fast float %621, %619
  %625 = fmul fast float %622, %619
  %626 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %612, i32 undef)  ; BufferLoad(srv,index,wot)
  %627 = extractvalue %dx.types.ResRet.i32 %626, 0
  %628 = call float @dx.op.unary.f32(i32 6, float %623)  ; FAbs(value)
  %629 = call float @dx.op.unary.f32(i32 6, float %624)  ; FAbs(value)
  %630 = fsub fast float 1.000000e+00, %628
  %631 = fsub fast float 1.000000e+00, %629
  %632 = call float @dx.op.unary.f32(i32 7, float %630)  ; Saturate(value)
  %633 = call float @dx.op.unary.f32(i32 7, float %631)  ; Saturate(value)
  %634 = fmul fast float %633, %632
  %635 = mul i32 %627, 29
  %636 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %635, i32 undef)  ; BufferLoad(srv,index,wot)
  %637 = extractvalue %dx.types.ResRet.f32 %636, 0
  %638 = extractvalue %dx.types.ResRet.f32 %636, 1
  %639 = extractvalue %dx.types.ResRet.f32 %636, 2
  %640 = extractvalue %dx.types.ResRet.f32 %636, 3
  %641 = add i32 %635, 1
  %642 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %641, i32 undef)  ; BufferLoad(srv,index,wot)
  %643 = extractvalue %dx.types.ResRet.f32 %642, 0
  %644 = extractvalue %dx.types.ResRet.f32 %642, 1
  %645 = extractvalue %dx.types.ResRet.f32 %642, 2
  %646 = extractvalue %dx.types.ResRet.f32 %642, 3
  %647 = add i32 %635, 2
  %648 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %647, i32 undef)  ; BufferLoad(srv,index,wot)
  %649 = extractvalue %dx.types.ResRet.f32 %648, 0
  %650 = extractvalue %dx.types.ResRet.f32 %648, 1
  %651 = extractvalue %dx.types.ResRet.f32 %648, 2
  %652 = extractvalue %dx.types.ResRet.f32 %648, 3
  %653 = add i32 %635, 3
  %654 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %653, i32 undef)  ; BufferLoad(srv,index,wot)
  %655 = extractvalue %dx.types.ResRet.f32 %654, 0
  %656 = extractvalue %dx.types.ResRet.f32 %654, 1
  %657 = extractvalue %dx.types.ResRet.f32 %654, 2
  %658 = extractvalue %dx.types.ResRet.f32 %654, 3
  %659 = add i32 %635, 4
  %660 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %659, i32 undef)  ; BufferLoad(srv,index,wot)
  %661 = extractvalue %dx.types.ResRet.f32 %660, 0
  %662 = extractvalue %dx.types.ResRet.f32 %660, 1
  %663 = extractvalue %dx.types.ResRet.f32 %660, 2
  %664 = extractvalue %dx.types.ResRet.f32 %660, 3
  %665 = add i32 %635, 5
  %666 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %665, i32 undef)  ; BufferLoad(srv,index,wot)
  %667 = extractvalue %dx.types.ResRet.f32 %666, 0
  %668 = extractvalue %dx.types.ResRet.f32 %666, 1
  %669 = extractvalue %dx.types.ResRet.f32 %666, 2
  %670 = extractvalue %dx.types.ResRet.f32 %666, 3
  %671 = add i32 %635, 6
  %672 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %671, i32 undef)  ; BufferLoad(srv,index,wot)
  %673 = extractvalue %dx.types.ResRet.f32 %672, 0
  %674 = extractvalue %dx.types.ResRet.f32 %672, 1
  %675 = extractvalue %dx.types.ResRet.f32 %672, 2
  %676 = extractvalue %dx.types.ResRet.f32 %672, 3
  %677 = add i32 %635, 7
  %678 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %677, i32 undef)  ; BufferLoad(srv,index,wot)
  %679 = extractvalue %dx.types.ResRet.f32 %678, 0
  %680 = extractvalue %dx.types.ResRet.f32 %678, 1
  %681 = extractvalue %dx.types.ResRet.f32 %678, 2
  %682 = extractvalue %dx.types.ResRet.f32 %678, 3
  %683 = fmul fast float %637, %623
  %684 = fmul fast float %649, %624
  %685 = fadd fast float %684, %683
  %686 = fmul fast float %661, %625
  %687 = fadd fast float %685, %686
  %688 = fmul fast float %638, %623
  %689 = fmul fast float %650, %624
  %690 = fadd fast float %689, %688
  %691 = fmul fast float %662, %625
  %692 = fadd fast float %690, %691
  %693 = fmul fast float %639, %623
  %694 = fmul fast float %651, %624
  %695 = fadd fast float %694, %693
  %696 = fmul fast float %663, %625
  %697 = fadd fast float %695, %696
  %698 = fmul fast float %640, %623
  %699 = fmul fast float %652, %624
  %700 = fadd fast float %699, %698
  %701 = fmul fast float %664, %625
  %702 = fadd fast float %700, %701
  %703 = fmul fast float %643, %623
  %704 = fmul fast float %655, %624
  %705 = fadd fast float %704, %703
  %706 = fmul fast float %667, %625
  %707 = fadd fast float %705, %706
  %708 = fmul fast float %644, %623
  %709 = fmul fast float %656, %624
  %710 = fadd fast float %709, %708
  %711 = fmul fast float %668, %625
  %712 = fadd fast float %710, %711
  %713 = fmul fast float %645, %623
  %714 = fmul fast float %657, %624
  %715 = fadd fast float %714, %713
  %716 = fmul fast float %669, %625
  %717 = fadd fast float %715, %716
  %718 = fmul fast float %646, %623
  %719 = fmul fast float %658, %624
  %720 = fadd fast float %719, %718
  %721 = fmul fast float %670, %625
  %722 = fadd fast float %720, %721
  %723 = fadd fast float %687, %673
  %724 = fadd fast float %692, %674
  %725 = fadd fast float %697, %675
  %726 = fadd fast float %702, %676
  %727 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %723)  ; FMax(a,b)
  %728 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %724)  ; FMax(a,b)
  %729 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %725)  ; FMax(a,b)
  %730 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %726)  ; FMax(a,b)
  %731 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %723)  ; FMin(a,b)
  %732 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %724)  ; FMin(a,b)
  %733 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %725)  ; FMin(a,b)
  %734 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %726)  ; FMin(a,b)
  %735 = fmul fast float %731, 0x3F847AE140000000
  %736 = fmul fast float %732, 0x3F847AE140000000
  %737 = fmul fast float %733, 0x3F847AE140000000
  %738 = fmul fast float %734, 0x3F847AE140000000
  %739 = fadd fast float %735, %727
  %740 = fadd fast float %736, %728
  %741 = fadd fast float %737, %729
  %742 = fadd fast float %738, %730
  %743 = fadd fast float %707, %679
  %744 = fadd fast float %712, %680
  %745 = fadd fast float %717, %681
  %746 = fadd fast float %722, %682
  %747 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %743)  ; FMax(a,b)
  %748 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %744)  ; FMax(a,b)
  %749 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %745)  ; FMax(a,b)
  %750 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %746)  ; FMax(a,b)
  %751 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %743)  ; FMin(a,b)
  %752 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %744)  ; FMin(a,b)
  %753 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %745)  ; FMin(a,b)
  %754 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %746)  ; FMin(a,b)
  %755 = fmul fast float %751, 0x3F847AE140000000
  %756 = fmul fast float %752, 0x3F847AE140000000
  %757 = fmul fast float %753, 0x3F847AE140000000
  %758 = fmul fast float %754, 0x3F847AE140000000
  %759 = fadd fast float %755, %747
  %760 = fadd fast float %756, %748
  %761 = fadd fast float %757, %749
  %762 = fadd fast float %758, %750
  br label %763

; <label>:763                                     ; preds = %763, %611
  %764 = phi i32 [ 0, %611 ], [ %784, %763 ]
  %765 = add i32 %635, 8
  %766 = shl i32 %764, 1
  %767 = add i32 %765, %766
  %768 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %767, i32 undef)  ; BufferLoad(srv,index,wot)
  %769 = extractvalue %dx.types.ResRet.f32 %768, 0
  %770 = extractvalue %dx.types.ResRet.f32 %768, 1
  %771 = extractvalue %dx.types.ResRet.f32 %768, 2
  %772 = extractvalue %dx.types.ResRet.f32 %768, 3
  %773 = add i32 %635, 9
  %774 = add i32 %773, %766
  %775 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %774, i32 undef)  ; BufferLoad(srv,index,wot)
  %776 = extractvalue %dx.types.ResRet.f32 %775, 0
  %777 = extractvalue %dx.types.ResRet.f32 %775, 1
  %778 = extractvalue %dx.types.ResRet.f32 %775, 2
  %779 = extractvalue %dx.types.ResRet.f32 %775, 3
  %780 = call float @dx.op.dot4.f32(i32 56, float %769, float %770, float %771, float %772, float %739, float %740, float %741, float %742)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %781 = call float @dx.op.dot4.f32(i32 56, float %776, float %777, float %778, float %779, float %759, float %760, float %761, float %762)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %782 = fadd fast float %781, %780
  %783 = getelementptr inbounds [8 x float], [8 x float]* %24, i32 0, i32 %764
  store float %782, float* %783, align 4, !tbaa !69, !noalias !63
  %784 = add nuw nsw i32 %764, 1
  %785 = icmp eq i32 %784, 8
  br i1 %785, label %786, label %763

; <label>:786                                     ; preds = %763
  %787 = call float @dx.op.unary.f32(i32 6, float %625)  ; FAbs(value)
  %788 = fsub fast float 1.000000e+00, %787
  %789 = call float @dx.op.unary.f32(i32 7, float %788)  ; Saturate(value)
  %790 = fmul fast float %634, %789
  %791 = add i32 %635, 24
  %792 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %791, i32 undef)  ; BufferLoad(srv,index,wot)
  %793 = extractvalue %dx.types.ResRet.f32 %792, 0
  %794 = extractvalue %dx.types.ResRet.f32 %792, 1
  %795 = extractvalue %dx.types.ResRet.f32 %792, 2
  %796 = extractvalue %dx.types.ResRet.f32 %792, 3
  %797 = add i32 %635, 25
  %798 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %797, i32 undef)  ; BufferLoad(srv,index,wot)
  %799 = extractvalue %dx.types.ResRet.f32 %798, 0
  %800 = extractvalue %dx.types.ResRet.f32 %798, 1
  %801 = extractvalue %dx.types.ResRet.f32 %798, 2
  %802 = extractvalue %dx.types.ResRet.f32 %798, 3
  %803 = getelementptr inbounds [8 x float], [8 x float]* %24, i32 0, i32 0
  %804 = load float, float* %803, align 4, !tbaa !69, !noalias !63
  %805 = fadd fast float %804, %793
  %806 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %805)  ; FMax(a,b)
  %807 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %805)  ; FMin(a,b)
  %808 = fmul fast float %807, 0x3F847AE140000000
  %809 = fadd fast float %808, %806
  store float %809, float* %803, align 4, !tbaa !69, !noalias !63
  %810 = getelementptr inbounds [8 x float], [8 x float]* %24, i32 0, i32 1
  %811 = load float, float* %810, align 4, !tbaa !69, !noalias !63
  %812 = fadd fast float %811, %794
  %813 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %812)  ; FMax(a,b)
  %814 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %812)  ; FMin(a,b)
  %815 = fmul fast float %814, 0x3F847AE140000000
  %816 = fadd fast float %815, %813
  store float %816, float* %810, align 4, !tbaa !69, !noalias !63
  %817 = getelementptr inbounds [8 x float], [8 x float]* %24, i32 0, i32 2
  %818 = load float, float* %817, align 4, !tbaa !69, !noalias !63
  %819 = fadd fast float %818, %795
  %820 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %819)  ; FMax(a,b)
  %821 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %819)  ; FMin(a,b)
  %822 = fmul fast float %821, 0x3F847AE140000000
  %823 = fadd fast float %822, %820
  store float %823, float* %817, align 4, !tbaa !69, !noalias !63
  %824 = getelementptr inbounds [8 x float], [8 x float]* %24, i32 0, i32 3
  %825 = load float, float* %824, align 4, !tbaa !69, !noalias !63
  %826 = fadd fast float %825, %796
  %827 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %826)  ; FMax(a,b)
  %828 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %826)  ; FMin(a,b)
  %829 = fmul fast float %828, 0x3F847AE140000000
  %830 = fadd fast float %829, %827
  store float %830, float* %824, align 4, !tbaa !69, !noalias !63
  %831 = getelementptr inbounds [8 x float], [8 x float]* %24, i32 0, i32 4
  %832 = load float, float* %831, align 4, !tbaa !69, !noalias !63
  %833 = fadd fast float %832, %799
  %834 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %833)  ; FMax(a,b)
  %835 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %833)  ; FMin(a,b)
  %836 = fmul fast float %835, 0x3F847AE140000000
  %837 = fadd fast float %836, %834
  store float %837, float* %831, align 4, !tbaa !69, !noalias !63
  %838 = getelementptr inbounds [8 x float], [8 x float]* %24, i32 0, i32 5
  %839 = load float, float* %838, align 4, !tbaa !69, !noalias !63
  %840 = fadd fast float %839, %800
  %841 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %840)  ; FMax(a,b)
  %842 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %840)  ; FMin(a,b)
  %843 = fmul fast float %842, 0x3F847AE140000000
  %844 = fadd fast float %843, %841
  store float %844, float* %838, align 4, !tbaa !69, !noalias !63
  %845 = getelementptr inbounds [8 x float], [8 x float]* %24, i32 0, i32 6
  %846 = load float, float* %845, align 4, !tbaa !69, !noalias !63
  %847 = fadd fast float %846, %801
  %848 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %847)  ; FMax(a,b)
  %849 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %847)  ; FMin(a,b)
  %850 = fmul fast float %849, 0x3F847AE140000000
  %851 = fadd fast float %850, %848
  store float %851, float* %845, align 4, !tbaa !69, !noalias !63
  %852 = getelementptr inbounds [8 x float], [8 x float]* %24, i32 0, i32 7
  %853 = load float, float* %852, align 4, !tbaa !69, !noalias !63
  %854 = fadd fast float %853, %802
  %855 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %854)  ; FMax(a,b)
  %856 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %854)  ; FMin(a,b)
  %857 = fmul fast float %856, 0x3F847AE140000000
  %858 = fadd fast float %857, %855
  store float %858, float* %852, align 4, !tbaa !69, !noalias !63
  %859 = add i32 %635, 26
  %860 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %859, i32 undef)  ; BufferLoad(srv,index,wot)
  %861 = extractvalue %dx.types.ResRet.f32 %860, 0
  %862 = extractvalue %dx.types.ResRet.f32 %860, 1
  %863 = extractvalue %dx.types.ResRet.f32 %860, 2
  %864 = extractvalue %dx.types.ResRet.f32 %860, 3
  %865 = add i32 %635, 27
  %866 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %865, i32 undef)  ; BufferLoad(srv,index,wot)
  %867 = extractvalue %dx.types.ResRet.f32 %866, 0
  %868 = extractvalue %dx.types.ResRet.f32 %866, 1
  %869 = extractvalue %dx.types.ResRet.f32 %866, 2
  %870 = extractvalue %dx.types.ResRet.f32 %866, 3
  %871 = fmul fast float %809, %861
  %872 = fmul fast float %816, %862
  %873 = fadd fast float %872, %871
  %874 = fmul fast float %823, %863
  %875 = fadd fast float %873, %874
  %876 = fmul fast float %830, %864
  %877 = fadd fast float %875, %876
  %878 = fmul fast float %837, %867
  %879 = fadd fast float %877, %878
  %880 = fmul fast float %844, %868
  %881 = fadd fast float %879, %880
  %882 = fmul fast float %851, %869
  %883 = fadd fast float %881, %882
  %884 = fmul fast float %858, %870
  %885 = fadd fast float %883, %884
  %886 = add i32 %635, 28
  %887 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %886, i32 undef)  ; BufferLoad(srv,index,wot)
  %888 = extractvalue %dx.types.ResRet.f32 %887, 0
  %889 = fadd fast float %885, %888
  %890 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %889)  ; FMax(a,b)
  %891 = fmul fast float %790, %890
  %892 = call float @dx.op.unary.f32(i32 7, float %891)  ; Saturate(value)
  %893 = getelementptr inbounds [8 x float], [8 x float]* %26, i32 0, i32 %614
  store float %892, float* %893, align 4, !tbaa !69, !noalias !63
  %894 = fadd fast float %892, %613
  %895 = add nuw nsw i32 %614, 1
  %896 = icmp eq i32 %895, 8
  br i1 %896, label %900, label %897

; <label>:897                                     ; preds = %786
  %898 = getelementptr inbounds [8 x i32], [8 x i32]* %25, i32 0, i32 %895
  %899 = load i32, i32* %898, align 4, !tbaa !43, !noalias !63
  br label %611

; <label>:900                                     ; preds = %786
  %901 = fcmp fast ugt float %894, 0x3EE4F8B580000000
  br i1 %901, label %902, label %1163, !dx.controlflow.hints !71

; <label>:902                                     ; preds = %900
  %903 = fcmp fast ogt float %894, 0x3EE4F8B580000000
  %904 = fdiv fast float 1.000000e+00, %894
  %905 = select i1 %903, float %904, float 1.000000e+00
  %906 = getelementptr inbounds [8 x float], [8 x float]* %26, i32 0, i32 0
  %907 = load float, float* %906, align 4, !tbaa !69, !noalias !63
  %908 = fmul fast float %907, %905
  store float %908, float* %906, align 4, !tbaa !69, !noalias !63
  %909 = getelementptr inbounds [8 x float], [8 x float]* %26, i32 0, i32 1
  %910 = load float, float* %909, align 4, !tbaa !69, !noalias !63
  %911 = fmul fast float %910, %905
  store float %911, float* %909, align 4, !tbaa !69, !noalias !63
  %912 = getelementptr inbounds [8 x float], [8 x float]* %26, i32 0, i32 2
  %913 = load float, float* %912, align 4, !tbaa !69, !noalias !63
  %914 = fmul fast float %913, %905
  store float %914, float* %912, align 4, !tbaa !69, !noalias !63
  %915 = getelementptr inbounds [8 x float], [8 x float]* %26, i32 0, i32 3
  %916 = load float, float* %915, align 4, !tbaa !69, !noalias !63
  %917 = fmul fast float %916, %905
  store float %917, float* %915, align 4, !tbaa !69, !noalias !63
  %918 = getelementptr inbounds [8 x float], [8 x float]* %26, i32 0, i32 4
  %919 = load float, float* %918, align 4, !tbaa !69, !noalias !63
  %920 = fmul fast float %919, %905
  store float %920, float* %918, align 4, !tbaa !69, !noalias !63
  %921 = getelementptr inbounds [8 x float], [8 x float]* %26, i32 0, i32 5
  %922 = load float, float* %921, align 4, !tbaa !69, !noalias !63
  %923 = fmul fast float %922, %905
  store float %923, float* %921, align 4, !tbaa !69, !noalias !63
  %924 = getelementptr inbounds [8 x float], [8 x float]* %26, i32 0, i32 6
  %925 = load float, float* %924, align 4, !tbaa !69, !noalias !63
  %926 = fmul fast float %925, %905
  store float %926, float* %924, align 4, !tbaa !69, !noalias !63
  %927 = getelementptr inbounds [8 x float], [8 x float]* %26, i32 0, i32 7
  %928 = load float, float* %927, align 4, !tbaa !69, !noalias !63
  %929 = fmul fast float %928, %905
  store float %929, float* %927, align 4, !tbaa !69, !noalias !63
  br label %930

; <label>:930                                     ; preds = %1157, %902
  %931 = phi float [ %1161, %1157 ], [ %908, %902 ]
  %932 = phi i32 [ %1159, %1157 ], [ %539, %902 ]
  %933 = phi float [ %1133, %1157 ], [ 0.000000e+00, %902 ]
  %934 = phi float [ %1131, %1157 ], [ 0.000000e+00, %902 ]
  %935 = phi float [ %1129, %1157 ], [ 0.000000e+00, %902 ]
  %936 = phi float [ %1126, %1157 ], [ 0.000000e+00, %902 ]
  %937 = phi float [ %1124, %1157 ], [ 0.000000e+00, %902 ]
  %938 = phi float [ %1121, %1157 ], [ 0.000000e+00, %902 ]
  %939 = phi float [ %1119, %1157 ], [ 0.000000e+00, %902 ]
  %940 = phi float [ %1117, %1157 ], [ 0.000000e+00, %902 ]
  %941 = phi float [ %1114, %1157 ], [ 0.000000e+00, %902 ]
  %942 = phi float [ %1154, %1157 ], [ 0.000000e+00, %902 ]
  %943 = phi float [ %1152, %1157 ], [ 0.000000e+00, %902 ]
  %944 = phi float [ %1150, %1157 ], [ 0.000000e+00, %902 ]
  %945 = phi float [ %1147, %1157 ], [ 0.000000e+00, %902 ]
  %946 = phi float [ %1145, %1157 ], [ 0.000000e+00, %902 ]
  %947 = phi float [ %1142, %1157 ], [ 0.000000e+00, %902 ]
  %948 = phi float [ %1140, %1157 ], [ 0.000000e+00, %902 ]
  %949 = phi float [ %1138, %1157 ], [ 0.000000e+00, %902 ]
  %950 = phi float [ %1135, %1157 ], [ 0.000000e+00, %902 ]
  %951 = phi float [ %1112, %1157 ], [ 0.000000e+00, %902 ]
  %952 = phi float [ %1110, %1157 ], [ 0.000000e+00, %902 ]
  %953 = phi float [ %1108, %1157 ], [ 0.000000e+00, %902 ]
  %954 = phi float [ %1104, %1157 ], [ 0.000000e+00, %902 ]
  %955 = phi float [ %1102, %1157 ], [ 0.000000e+00, %902 ]
  %956 = phi float [ %1098, %1157 ], [ 0.000000e+00, %902 ]
  %957 = phi float [ %1096, %1157 ], [ 0.000000e+00, %902 ]
  %958 = phi float [ %1094, %1157 ], [ 0.000000e+00, %902 ]
  %959 = phi float [ %1090, %1157 ], [ 0.000000e+00, %902 ]
  %960 = phi i32 [ %1155, %1157 ], [ 0, %902 ]
  %961 = shl i32 %932, 5
  %962 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %961, i32 undef)  ; BufferLoad(srv,index,wot)
  %963 = extractvalue %dx.types.ResRet.i32 %962, 0
  %964 = extractvalue %dx.types.ResRet.i32 %962, 1
  %965 = extractvalue %dx.types.ResRet.i32 %962, 2
  %966 = extractvalue %dx.types.ResRet.i32 %962, 3
  %967 = or i32 %961, 16
  %968 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %967, i32 undef)  ; BufferLoad(srv,index,wot)
  %969 = extractvalue %dx.types.ResRet.i32 %968, 0
  %970 = extractvalue %dx.types.ResRet.i32 %968, 1
  %971 = extractvalue %dx.types.ResRet.i32 %968, 2
  %972 = shl i32 %963, 4
  %973 = and i32 %972, 32752
  %974 = call float @dx.op.legacyF16ToF32(i32 131, i32 %973)  ; LegacyF16ToF32(value)
  %975 = lshr i32 %963, 7
  %976 = and i32 %975, 32752
  %977 = call float @dx.op.legacyF16ToF32(i32 131, i32 %976)  ; LegacyF16ToF32(value)
  %978 = lshr i32 %963, 22
  %979 = shl nuw nsw i32 %978, 5
  %980 = call float @dx.op.legacyF16ToF32(i32 131, i32 %979)  ; LegacyF16ToF32(value)
  %981 = and i32 %964, 255
  %982 = uitofp i32 %981 to float
  %983 = fmul fast float %982, 0x3F80204080000000
  %984 = fadd fast float %983, -1.000000e+00
  %985 = lshr i32 %964, 8
  %986 = and i32 %985, 255
  %987 = uitofp i32 %986 to float
  %988 = fmul fast float %987, 0x3F80204080000000
  %989 = fadd fast float %988, -1.000000e+00
  %990 = lshr i32 %964, 16
  %991 = and i32 %990, 255
  %992 = uitofp i32 %991 to float
  %993 = fmul fast float %992, 0x3F80204080000000
  %994 = fadd fast float %993, -1.000000e+00
  %995 = lshr i32 %964, 24
  %996 = uitofp i32 %995 to float
  %997 = fmul fast float %996, 0x3F80204080000000
  %998 = fadd fast float %997, -1.000000e+00
  %999 = and i32 %965, 255
  %1000 = uitofp i32 %999 to float
  %1001 = fmul fast float %1000, 0x3F80204080000000
  %1002 = fadd fast float %1001, -1.000000e+00
  %1003 = lshr i32 %965, 8
  %1004 = and i32 %1003, 255
  %1005 = uitofp i32 %1004 to float
  %1006 = fmul fast float %1005, 0x3F80204080000000
  %1007 = fadd fast float %1006, -1.000000e+00
  %1008 = lshr i32 %965, 16
  %1009 = and i32 %1008, 255
  %1010 = uitofp i32 %1009 to float
  %1011 = fmul fast float %1010, 0x3F80204080000000
  %1012 = fadd fast float %1011, -1.000000e+00
  %1013 = lshr i32 %965, 24
  %1014 = uitofp i32 %1013 to float
  %1015 = fmul fast float %1014, 0x3F80204080000000
  %1016 = fadd fast float %1015, -1.000000e+00
  %1017 = and i32 %966, 255
  %1018 = uitofp i32 %1017 to float
  %1019 = fmul fast float %1018, 0x3F80204080000000
  %1020 = fadd fast float %1019, -1.000000e+00
  %1021 = lshr i32 %966, 8
  %1022 = and i32 %1021, 255
  %1023 = uitofp i32 %1022 to float
  %1024 = fmul fast float %1023, 0x3F80204080000000
  %1025 = fadd fast float %1024, -1.000000e+00
  %1026 = lshr i32 %966, 16
  %1027 = and i32 %1026, 255
  %1028 = uitofp i32 %1027 to float
  %1029 = fmul fast float %1028, 0x3F80204080000000
  %1030 = fadd fast float %1029, -1.000000e+00
  %1031 = lshr i32 %966, 24
  %1032 = uitofp i32 %1031 to float
  %1033 = fmul fast float %1032, 0x3F80204080000000
  %1034 = fadd fast float %1033, -1.000000e+00
  %1035 = and i32 %969, 255
  %1036 = uitofp i32 %1035 to float
  %1037 = fmul fast float %1036, 0x3F80204080000000
  %1038 = fadd fast float %1037, -1.000000e+00
  %1039 = lshr i32 %969, 8
  %1040 = and i32 %1039, 255
  %1041 = uitofp i32 %1040 to float
  %1042 = fmul fast float %1041, 0x3F80204080000000
  %1043 = fadd fast float %1042, -1.000000e+00
  %1044 = lshr i32 %969, 16
  %1045 = and i32 %1044, 255
  %1046 = uitofp i32 %1045 to float
  %1047 = fmul fast float %1046, 0x3F80204080000000
  %1048 = fadd fast float %1047, -1.000000e+00
  %1049 = lshr i32 %969, 24
  %1050 = uitofp i32 %1049 to float
  %1051 = fmul fast float %1050, 0x3F80204080000000
  %1052 = fadd fast float %1051, -1.000000e+00
  %1053 = and i32 %970, 255
  %1054 = uitofp i32 %1053 to float
  %1055 = fmul fast float %1054, 0x3F80204080000000
  %1056 = fadd fast float %1055, -1.000000e+00
  %1057 = lshr i32 %970, 8
  %1058 = and i32 %1057, 255
  %1059 = uitofp i32 %1058 to float
  %1060 = fmul fast float %1059, 0x3F80204080000000
  %1061 = fadd fast float %1060, -1.000000e+00
  %1062 = lshr i32 %970, 16
  %1063 = and i32 %1062, 255
  %1064 = uitofp i32 %1063 to float
  %1065 = fmul fast float %1064, 0x3F80204080000000
  %1066 = fadd fast float %1065, -1.000000e+00
  %1067 = lshr i32 %970, 24
  %1068 = uitofp i32 %1067 to float
  %1069 = fmul fast float %1068, 0x3F80204080000000
  %1070 = fadd fast float %1069, -1.000000e+00
  %1071 = and i32 %971, 255
  %1072 = uitofp i32 %1071 to float
  %1073 = fmul fast float %1072, 0x3F80204080000000
  %1074 = fadd fast float %1073, -1.000000e+00
  %1075 = lshr i32 %971, 8
  %1076 = and i32 %1075, 255
  %1077 = uitofp i32 %1076 to float
  %1078 = fmul fast float %1077, 0x3F80204080000000
  %1079 = fadd fast float %1078, -1.000000e+00
  %1080 = lshr i32 %971, 16
  %1081 = and i32 %1080, 255
  %1082 = uitofp i32 %1081 to float
  %1083 = fmul fast float %1082, 0x3F80204080000000
  %1084 = fadd fast float %1083, -1.000000e+00
  %1085 = lshr i32 %971, 24
  %1086 = uitofp i32 %1085 to float
  %1087 = fmul fast float %1086, 0x3F80204080000000
  %1088 = fadd fast float %1087, -1.000000e+00
  %1089 = fmul fast float %974, %931
  %1090 = fadd fast float %1089, %959
  %1091 = fmul fast float %931, 0x3FFBB67AE0000000
  %1092 = fmul fast float %1091, %974
  %1093 = fmul fast float %1092, %984
  %1094 = fadd fast float %1093, %958
  %1095 = fmul fast float %1092, %989
  %1096 = fadd fast float %1095, %957
  %1097 = fmul fast float %1092, %994
  %1098 = fadd fast float %1097, %956
  %1099 = fmul fast float %931, 0x3FFEFBDEC0000000
  %1100 = fmul fast float %1099, %974
  %1101 = fmul fast float %1100, %998
  %1102 = fadd fast float %1101, %955
  %1103 = fmul fast float %1100, %1002
  %1104 = fadd fast float %1103, %954
  %1105 = fmul fast float %931, 0x4001E377A0000000
  %1106 = fmul fast float %1105, %974
  %1107 = fmul fast float %1106, %1007
  %1108 = fadd fast float %1107, %953
  %1109 = fmul fast float %1100, %1012
  %1110 = fadd fast float %1109, %952
  %1111 = fmul fast float %1100, %1016
  %1112 = fadd fast float %1111, %951
  %1113 = fmul fast float %977, %931
  %1114 = fadd fast float %1113, %941
  %1115 = fmul fast float %1091, %977
  %1116 = fmul fast float %1115, %1020
  %1117 = fadd fast float %1116, %940
  %1118 = fmul fast float %1115, %1025
  %1119 = fadd fast float %1118, %939
  %1120 = fmul fast float %1115, %1030
  %1121 = fadd fast float %1120, %938
  %1122 = fmul fast float %1099, %977
  %1123 = fmul fast float %1122, %1034
  %1124 = fadd fast float %1123, %937
  %1125 = fmul fast float %1122, %1038
  %1126 = fadd fast float %1125, %936
  %1127 = fmul fast float %1105, %977
  %1128 = fmul fast float %1127, %1043
  %1129 = fadd fast float %1128, %935
  %1130 = fmul fast float %1122, %1048
  %1131 = fadd fast float %1130, %934
  %1132 = fmul fast float %1122, %1052
  %1133 = fadd fast float %1132, %933
  %1134 = fmul fast float %980, %931
  %1135 = fadd fast float %1134, %950
  %1136 = fmul fast float %1091, %980
  %1137 = fmul fast float %1136, %1056
  %1138 = fadd fast float %1137, %949
  %1139 = fmul fast float %1136, %1061
  %1140 = fadd fast float %1139, %948
  %1141 = fmul fast float %1136, %1066
  %1142 = fadd fast float %1141, %947
  %1143 = fmul fast float %1099, %980
  %1144 = fmul fast float %1143, %1070
  %1145 = fadd fast float %1144, %946
  %1146 = fmul fast float %1143, %1074
  %1147 = fadd fast float %1146, %945
  %1148 = fmul fast float %1105, %980
  %1149 = fmul fast float %1148, %1079
  %1150 = fadd fast float %1149, %944
  %1151 = fmul fast float %1143, %1084
  %1152 = fadd fast float %1151, %943
  %1153 = fmul fast float %1143, %1088
  %1154 = fadd fast float %1153, %942
  %1155 = add nuw nsw i32 %960, 1
  %1156 = icmp eq i32 %1155, 8
  br i1 %1156, label %1162, label %1157

; <label>:1157                                    ; preds = %930
  %1158 = getelementptr inbounds [8 x i32], [8 x i32]* %25, i32 0, i32 %1155
  %1159 = load i32, i32* %1158, align 4, !tbaa !43, !noalias !63
  %1160 = getelementptr inbounds [8 x float], [8 x float]* %26, i32 0, i32 %1155
  %1161 = load float, float* %1160, align 4, !tbaa !69, !noalias !63
  br label %930

; <label>:1162                                    ; preds = %930
  br label %1163

; <label>:1163                                    ; preds = %1162, %900, %467, %448, %420
  %1164 = phi float [ 0.000000e+00, %900 ], [ 0.000000e+00, %467 ], [ 0.000000e+00, %448 ], [ 0.000000e+00, %420 ], [ %1133, %1162 ]
  %1165 = phi float [ 0.000000e+00, %900 ], [ 0.000000e+00, %467 ], [ 0.000000e+00, %448 ], [ 0.000000e+00, %420 ], [ %1131, %1162 ]
  %1166 = phi float [ 0.000000e+00, %900 ], [ 0.000000e+00, %467 ], [ 0.000000e+00, %448 ], [ 0.000000e+00, %420 ], [ %1129, %1162 ]
  %1167 = phi float [ 0.000000e+00, %900 ], [ 0.000000e+00, %467 ], [ 0.000000e+00, %448 ], [ 0.000000e+00, %420 ], [ %1126, %1162 ]
  %1168 = phi float [ 0.000000e+00, %900 ], [ 0.000000e+00, %467 ], [ 0.000000e+00, %448 ], [ 0.000000e+00, %420 ], [ %1124, %1162 ]
  %1169 = phi float [ 0.000000e+00, %900 ], [ 0.000000e+00, %467 ], [ 0.000000e+00, %448 ], [ 0.000000e+00, %420 ], [ %1121, %1162 ]
  %1170 = phi float [ 0.000000e+00, %900 ], [ 0.000000e+00, %467 ], [ 0.000000e+00, %448 ], [ 0.000000e+00, %420 ], [ %1119, %1162 ]
  %1171 = phi float [ 0.000000e+00, %900 ], [ 0.000000e+00, %467 ], [ 0.000000e+00, %448 ], [ 0.000000e+00, %420 ], [ %1117, %1162 ]
  %1172 = phi float [ 0.000000e+00, %900 ], [ 0.000000e+00, %467 ], [ 0.000000e+00, %448 ], [ 0.000000e+00, %420 ], [ %1114, %1162 ]
  %1173 = phi float [ 0.000000e+00, %900 ], [ 0.000000e+00, %467 ], [ 0.000000e+00, %448 ], [ 0.000000e+00, %420 ], [ %1154, %1162 ]
  %1174 = phi float [ 0.000000e+00, %900 ], [ 0.000000e+00, %467 ], [ 0.000000e+00, %448 ], [ 0.000000e+00, %420 ], [ %1152, %1162 ]
  %1175 = phi float [ 0.000000e+00, %900 ], [ 0.000000e+00, %467 ], [ 0.000000e+00, %448 ], [ 0.000000e+00, %420 ], [ %1150, %1162 ]
  %1176 = phi float [ 0.000000e+00, %900 ], [ 0.000000e+00, %467 ], [ 0.000000e+00, %448 ], [ 0.000000e+00, %420 ], [ %1147, %1162 ]
  %1177 = phi float [ 0.000000e+00, %900 ], [ 0.000000e+00, %467 ], [ 0.000000e+00, %448 ], [ 0.000000e+00, %420 ], [ %1145, %1162 ]
  %1178 = phi float [ 0.000000e+00, %900 ], [ 0.000000e+00, %467 ], [ 0.000000e+00, %448 ], [ 0.000000e+00, %420 ], [ %1142, %1162 ]
  %1179 = phi float [ 0.000000e+00, %900 ], [ 0.000000e+00, %467 ], [ 0.000000e+00, %448 ], [ 0.000000e+00, %420 ], [ %1140, %1162 ]
  %1180 = phi float [ 0.000000e+00, %900 ], [ 0.000000e+00, %467 ], [ 0.000000e+00, %448 ], [ 0.000000e+00, %420 ], [ %1138, %1162 ]
  %1181 = phi float [ 0.000000e+00, %900 ], [ 0.000000e+00, %467 ], [ 0.000000e+00, %448 ], [ 0.000000e+00, %420 ], [ %1135, %1162 ]
  %1182 = phi float [ 0.000000e+00, %900 ], [ 0.000000e+00, %467 ], [ 0.000000e+00, %448 ], [ 0.000000e+00, %420 ], [ %1112, %1162 ]
  %1183 = phi float [ 0.000000e+00, %900 ], [ 0.000000e+00, %467 ], [ 0.000000e+00, %448 ], [ 0.000000e+00, %420 ], [ %1110, %1162 ]
  %1184 = phi float [ 0.000000e+00, %900 ], [ 0.000000e+00, %467 ], [ 0.000000e+00, %448 ], [ 0.000000e+00, %420 ], [ %1108, %1162 ]
  %1185 = phi float [ 0.000000e+00, %900 ], [ 0.000000e+00, %467 ], [ 0.000000e+00, %448 ], [ 0.000000e+00, %420 ], [ %1104, %1162 ]
  %1186 = phi float [ 0.000000e+00, %900 ], [ 0.000000e+00, %467 ], [ 0.000000e+00, %448 ], [ 0.000000e+00, %420 ], [ %1102, %1162 ]
  %1187 = phi float [ 0.000000e+00, %900 ], [ 0.000000e+00, %467 ], [ 0.000000e+00, %448 ], [ 0.000000e+00, %420 ], [ %1098, %1162 ]
  %1188 = phi float [ 0.000000e+00, %900 ], [ 0.000000e+00, %467 ], [ 0.000000e+00, %448 ], [ 0.000000e+00, %420 ], [ %1096, %1162 ]
  %1189 = phi float [ 0.000000e+00, %900 ], [ 0.000000e+00, %467 ], [ 0.000000e+00, %448 ], [ 0.000000e+00, %420 ], [ %1094, %1162 ]
  %1190 = phi float [ 0.000000e+00, %900 ], [ 0.000000e+00, %467 ], [ 0.000000e+00, %448 ], [ 0.000000e+00, %420 ], [ %1090, %1162 ]
  %1191 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1192 = extractvalue %dx.types.CBufRet.f32 %1191, 3
  br i1 %61, label %1193, label %1316, !dx.controlflow.hints !72

; <label>:1193                                    ; preds = %1163
  %1194 = fsub fast float -0.000000e+00, %1169
  %1195 = fsub fast float -0.000000e+00, %1171
  %1196 = fsub fast float %1194, %1178
  %1197 = fsub fast float %1196, %1187
  %1198 = fsub fast float %1195, %1180
  %1199 = fsub fast float %1198, %1189
  %1200 = fadd fast float %1179, %1170
  %1201 = fadd fast float %1200, %1188
  %1202 = call float @dx.op.dot3.f32(i32 55, float %1197, float %1199, float %1201, float %1197, float %1199, float %1201)  ; Dot3(ax,ay,az,bx,by,bz)
  %1203 = call float @dx.op.unary.f32(i32 25, float %1202)  ; Rsqrt(value)
  %1204 = fmul fast float %1203, %1197
  %1205 = fmul fast float %1203, %1199
  %1206 = fmul fast float %1203, %1201
  %1207 = fmul fast float %1206, 0x3FDF454380000000
  %1208 = fmul fast float %1206, %1206
  %1209 = fmul fast float %1208, 0x3FEE471020000000
  %1210 = fadd fast float %1209, 0xBFD42F6020000000
  %1211 = fmul fast float %1204, 0xBFDF454380000000
  %1212 = fmul fast float %1205, 0xBFDF454380000000
  %1213 = fmul fast float %1206, 0xBFF17B1420000000
  %1214 = fmul fast float %1213, %1204
  %1215 = fmul fast float %1213, %1205
  %1216 = fmul fast float %1204, %1204
  %1217 = fmul fast float %1205, %1205
  %1218 = fsub fast float %1216, %1217
  %1219 = fmul fast float %1218, 0x3FE17B1420000000
  %1220 = fmul fast float %1199, 0x3FF17B1420000000
  %1221 = fmul fast float %1220, %1203
  %1222 = fmul fast float %1221, %1204
  %1223 = fmul fast float %1190, 0x3FD20DD760000000
  %1224 = fmul fast float %1212, %1189
  %1225 = fmul fast float %1207, %1188
  %1226 = fmul fast float %1211, %1187
  %1227 = fmul fast float %1222, %1186
  %1228 = fmul fast float %1215, %1185
  %1229 = fmul fast float %1210, %1184
  %1230 = fmul fast float %1214, %1183
  %1231 = fmul fast float %1219, %1182
  %1232 = fadd fast float %1228, %1230
  %1233 = fadd fast float %1232, %1229
  %1234 = fadd fast float %1233, %1231
  %1235 = fadd fast float %1234, %1227
  %1236 = fmul fast float %1235, 6.250000e-02
  %1237 = fadd fast float %1226, %1225
  %1238 = fadd fast float %1237, %1224
  %1239 = fmul fast float %1238, 0x3FDC71C720000000
  %1240 = fadd fast float %1236, %1223
  %1241 = fadd fast float %1240, %1239
  %1242 = fmul fast float %1172, 0x3FD20DD760000000
  %1243 = fmul fast float %1212, %1171
  %1244 = fmul fast float %1207, %1170
  %1245 = fmul fast float %1211, %1169
  %1246 = fmul fast float %1222, %1168
  %1247 = fmul fast float %1215, %1167
  %1248 = fmul fast float %1210, %1166
  %1249 = fmul fast float %1214, %1165
  %1250 = fmul fast float %1219, %1164
  %1251 = fadd fast float %1247, %1249
  %1252 = fadd fast float %1251, %1248
  %1253 = fadd fast float %1252, %1250
  %1254 = fadd fast float %1253, %1246
  %1255 = fmul fast float %1254, 6.250000e-02
  %1256 = fadd fast float %1245, %1244
  %1257 = fadd fast float %1256, %1243
  %1258 = fmul fast float %1257, 0x3FDC71C720000000
  %1259 = fadd fast float %1255, %1242
  %1260 = fadd fast float %1259, %1258
  %1261 = fmul fast float %1181, 0x3FD20DD760000000
  %1262 = fmul fast float %1212, %1180
  %1263 = fmul fast float %1207, %1179
  %1264 = fmul fast float %1211, %1178
  %1265 = fmul fast float %1222, %1177
  %1266 = fmul fast float %1215, %1176
  %1267 = fmul fast float %1210, %1175
  %1268 = fmul fast float %1214, %1174
  %1269 = fmul fast float %1219, %1173
  %1270 = fadd fast float %1266, %1268
  %1271 = fadd fast float %1270, %1267
  %1272 = fadd fast float %1271, %1269
  %1273 = fadd fast float %1272, %1265
  %1274 = fmul fast float %1273, 6.250000e-02
  %1275 = fadd fast float %1264, %1263
  %1276 = fadd fast float %1275, %1262
  %1277 = fmul fast float %1276, 0x3FDC71C720000000
  %1278 = fadd fast float %1274, %1261
  %1279 = fadd fast float %1278, %1277
  %1280 = fmul fast float %1190, 0x3FDCE2F220000000
  %1281 = fmul fast float %1241, 0x3FE3333340000000
  %1282 = fsub fast float %1280, %1281
  %1283 = fmul fast float %1172, 0x3FDCE2F220000000
  %1284 = fmul fast float %1260, 0x3FE3333340000000
  %1285 = fsub fast float %1283, %1284
  %1286 = fmul fast float %1181, 0x3FDCE2F220000000
  %1287 = fmul fast float %1279, 0x3FE3333340000000
  %1288 = fsub fast float %1286, %1287
  %1289 = fmul fast float %1241, 0x4003333340000000
  %1290 = fmul fast float %1190, 0x3FE5AA35A0000000
  %1291 = fsub fast float %1289, %1290
  %1292 = fmul fast float %1260, 0x4003333340000000
  %1293 = fmul fast float %1172, 0x3FE5AA35A0000000
  %1294 = fsub fast float %1292, %1293
  %1295 = fmul fast float %1279, 0x4003333340000000
  %1296 = fmul fast float %1181, 0x3FE5AA35A0000000
  %1297 = fsub fast float %1295, %1296
  %1298 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1282)  ; FMax(a,b)
  %1299 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1285)  ; FMax(a,b)
  %1300 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1288)  ; FMax(a,b)
  %1301 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1291)  ; FMax(a,b)
  %1302 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1294)  ; FMax(a,b)
  %1303 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1297)  ; FMax(a,b)
  %1304 = call float @dx.op.dot3.f32(i32 55, float %55, float %56, float %57, float %1204, float %1205, float %1206)  ; Dot3(ax,ay,az,bx,by,bz)
  %1305 = call float @dx.op.unary.f32(i32 7, float %1304)  ; Saturate(value)
  %1306 = fmul fast float %1305, %1301
  %1307 = fmul fast float %1305, %1302
  %1308 = fmul fast float %1305, %1303
  %1309 = fadd fast float %1306, %1298
  %1310 = fadd fast float %1307, %1299
  %1311 = fadd fast float %1308, %1300
  %1312 = call float @dx.op.binary.f32(i32 35, float %1309, float 0.000000e+00)  ; FMax(a,b)
  %1313 = call float @dx.op.binary.f32(i32 35, float %1310, float 0.000000e+00)  ; FMax(a,b)
  %1314 = call float @dx.op.binary.f32(i32 35, float %1311, float 0.000000e+00)  ; FMax(a,b)
  %1315 = call float @dx.op.dot3.f32(i32 55, float %1312, float %1313, float %1314, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  br label %1318

; <label>:1316                                    ; preds = %1163
  %1317 = call float @dx.op.dot3.f32(i32 55, float %1190, float %1172, float %1181, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  br label %1318

; <label>:1318                                    ; preds = %1316, %1193
  %1319 = phi float [ %1315, %1193 ], [ %1317, %1316 ]
  %1320 = fmul float %1192, %1319
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %20, i32 %21, i32 undef, float %1320, float %1320, float %1320, float %1320, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %1321

; <label>:1321                                    ; preds = %1318, %33
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

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32, %dx.types.Handle, i32, i32) #2

; Function Attrs: nounwind readnone
declare float @dx.op.tertiary.f32(i32, float, float, float) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.binary.i32(i32, i32, i32) #0

; Function Attrs: nounwind readnone
declare float @dx.op.legacyF16ToF32(i32, i32) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32) #2

; Function Attrs: nounwind readnone
declare float @dx.op.dot4.f32(i32, float, float, float, float, float, float, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32, %dx.types.Handle, i32, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32, %dx.types.Handle, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32, %dx.types.Handle, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.Handle @dx.op.createHandle(i32, i8, i32, i32, i1) #2

attributes #0 = { nounwind readnone }
attributes #1 = { nounwind }
attributes #2 = { nounwind readonly }

!llvm.ident = !{!0}
!dx.version = !{!1}
!dx.valver = !{!2}
!dx.shaderModel = !{!3}
!dx.resources = !{!4}
!dx.entryPoints = !{!30}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !22, !24, !28}
!5 = !{!6, !7, !9, !11, !12, !13, !14, !15, !17, !18, !19, !20, !21}
!6 = !{i32 0, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 28, i32 1, i32 11, i32 0, null}
!7 = !{i32 1, %"class.StructuredBuffer<GfxNeuralLightGridTopLevelNode>"* undef, !"", i32 0, i32 0, i32 1, i32 12, i32 0, !8}
!8 = !{i32 1, i32 16}
!9 = !{i32 2, %"class.Buffer<unsigned int>"* undef, !"", i32 0, i32 1, i32 1, i32 10, i32 0, !10}
!10 = !{i32 0, i32 5}
!11 = !{i32 3, %"class.StructuredBuffer<GfxNeuralLightGridInternalNode>"* undef, !"", i32 0, i32 2, i32 1, i32 12, i32 0, !8}
!12 = !{i32 4, %"class.Buffer<unsigned int>"* undef, !"", i32 0, i32 3, i32 1, i32 10, i32 0, !10}
!13 = !{i32 5, %"class.Buffer<unsigned int>"* undef, !"", i32 0, i32 4, i32 1, i32 10, i32 0, !10}
!14 = !{i32 6, %"class.Buffer<unsigned int>"* undef, !"", i32 0, i32 5, i32 1, i32 10, i32 0, !10}
!15 = !{i32 7, %"class.Buffer<vector<float, 4> >"* undef, !"", i32 0, i32 6, i32 1, i32 10, i32 0, !16}
!16 = !{i32 0, i32 9}
!17 = !{i32 8, %"class.Buffer<unsigned int>"* undef, !"", i32 0, i32 7, i32 1, i32 10, i32 0, !10}
!18 = !{i32 9, %"class.Buffer<vector<float, 4> >"* undef, !"", i32 0, i32 8, i32 1, i32 10, i32 0, !16}
!19 = !{i32 10, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 9, i32 1, i32 11, i32 0, null}
!20 = !{i32 11, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 14, i32 1, i32 2, i32 0, !16}
!21 = !{i32 12, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 34, i32 1, i32 11, i32 0, null}
!22 = !{!23}
!23 = !{i32 0, %"class.RWTexture2D<float>"* undef, !"", i32 0, i32 0, i32 1, i32 2, i1 false, i1 false, i1 false, !16}
!24 = !{!25, !26, !27}
!25 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!26 = !{i32 1, %GfxNeuralLightGridSetupConsts* undef, !"", i32 0, i32 4, i32 1, i32 80, null}
!27 = !{i32 2, %DeferredEffectLightConsts_decl* undef, !"", i32 0, i32 1, i32 1, i32 240, null}
!28 = !{!29}
!29 = !{i32 0, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!30 = !{void ()* @cs_light_sensor_baked, !"cs_light_sensor_baked", null, !4, !31}
!31 = !{i32 0, i64 272, i32 4, !32}
!32 = !{i32 64, i32 1, i32 1}
!33 = distinct !{!33, !"dx.controlflow.hints", i32 2}
!34 = distinct !{!34, !"dx.controlflow.hints", i32 2}
!35 = distinct !{!35, !"dx.controlflow.hints", i32 2}
!36 = distinct !{!36, !"dx.controlflow.hints", i32 2}
!37 = distinct !{!37, !"dx.controlflow.hints", i32 1}
!38 = distinct !{!38, !"dx.controlflow.hints", i32 1}
!39 = distinct !{!39, !"dx.controlflow.hints", i32 1}
!40 = distinct !{!40, !"dx.controlflow.hints", i32 1}
!41 = distinct !{!41, !"dx.controlflow.hints", i32 2}
!42 = distinct !{!42, !"dx.controlflow.hints", i32 2}
!43 = !{!44, !44, i64 0}
!44 = !{!"int", !45, i64 0}
!45 = !{!"omnipotent char", !46, i64 0}
!46 = !{!"Simple C/C++ TBAA"}
!47 = !{!48, !50}
!48 = distinct !{!48, !49, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_Sprite@@ULightIteratorOutput_Sprite@@@Z: %lightingOutput"}
!49 = distinct !{!49, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_Sprite@@ULightIteratorOutput_Sprite@@@Z"}
!50 = distinct !{!50, !51, !"\01?Lights_Iterate_Sprite@@YAXULocalAttributes@@ULightIteratorInput_Sprite@@ULightIteratorOutput_Sprite@@@Z: %lightingOutput"}
!51 = distinct !{!51, !"\01?Lights_Iterate_Sprite@@YAXULocalAttributes@@ULightIteratorInput_Sprite@@ULightIteratorOutput_Sprite@@@Z"}
!52 = distinct !{!52, !"dx.controlflow.hints", i32 2}
!53 = distinct !{!53, !"dx.controlflow.hints", i32 2}
!54 = distinct !{!54, !"dx.controlflow.hints", i32 2}
!55 = distinct !{!55, !"dx.controlflow.hints", i32 1}
!56 = distinct !{!56, !"dx.controlflow.hints", i32 2}
!57 = distinct !{!57, !58}
!58 = !{!"llvm.loop.unroll.disable"}
!59 = distinct !{!59, !58}
!60 = distinct !{!60, !"dx.controlflow.hints", i32 2}
!61 = distinct !{!61, !"dx.controlflow.hints", i32 2}
!62 = distinct !{!62, !"dx.controlflow.hints", i32 2}
!63 = !{!64, !66, !67, !68}
!64 = distinct !{!64, !65, !"\01?LookupNeuralLightGrid@@YA_NUNeuralLightGridSetup@@UNeuralLightGridData@@V?$vector@M$02@@USH3Vec@@33AIAM_N@Z: %probeR"}
!65 = distinct !{!65, !"\01?LookupNeuralLightGrid@@YA_NUNeuralLightGridSetup@@UNeuralLightGridData@@V?$vector@M$02@@USH3Vec@@33AIAM_N@Z"}
!66 = distinct !{!66, !65, !"\01?LookupNeuralLightGrid@@YA_NUNeuralLightGridSetup@@UNeuralLightGridData@@V?$vector@M$02@@USH3Vec@@33AIAM_N@Z: %probeG"}
!67 = distinct !{!67, !65, !"\01?LookupNeuralLightGrid@@YA_NUNeuralLightGridSetup@@UNeuralLightGridData@@V?$vector@M$02@@USH3Vec@@33AIAM_N@Z: %probeB"}
!68 = distinct !{!68, !65, !"\01?LookupNeuralLightGrid@@YA_NUNeuralLightGridSetup@@UNeuralLightGridData@@V?$vector@M$02@@USH3Vec@@33AIAM_N@Z: %probeA"}
!69 = !{!70, !70, i64 0}
!70 = !{!"float", !45, i64 0}
!71 = distinct !{!71, !"dx.controlflow.hints", i32 2}
!72 = distinct !{!72, !"dx.controlflow.hints", i32 2}

