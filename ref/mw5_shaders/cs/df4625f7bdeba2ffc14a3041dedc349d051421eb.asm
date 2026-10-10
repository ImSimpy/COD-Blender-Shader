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
; shader hash: 28b11d23b387a5dae07d092709f2c0bf
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
;   [8 x i8] (type annotation not present)
; }
;
; Resource bind info for 
; {
;
;   [8 x i8] (type annotation not present)
; }
;
;
; Resource Bindings:
;
; Name                                 Type  Format         Dim      ID      HLSL Bind  Count
; ------------------------------ ---------- ------- ----------- ------- -------------- ------
;                                   cbuffer      NA          NA     CB0            cb3     1
;                                   cbuffer      NA          NA     CB1            cb1     1
;                                   sampler      NA          NA      S0             s0     1
;                                   sampler      NA          NA      S1             s1     1
;                                   sampler      NA          NA      S2             s2     1
;                                   sampler      NA          NA      S3             s3     1
;                                   texture    byte         r/o      T0            t28     1
;                                   texture     f32          2d      T1            t39     1
;                                   texture     f32          2d      T2            t13     1
;                                   texture     f32          2d      T3            t38     1
;                                   texture    byte         r/o      T4            t19     1
;                                   texture    byte         r/o      T5            t20     1
;                                   texture     f32          1d      T6            t26     1
;                                   texture     f32     2darray      T7            t35     1
;                                   texture     f32          2d      T8            t14     1
;                                   textureunorm_f32     2darray      T9            t36     1
;                                   texture    byte         r/o     T10            t34     1
;                                   texture     f32          2d     T11            t32     1
;                                   texture     f32          2d     T12            t18     1
;                                   texture     f32          2d     T13            t41     1
;                                   texture  struct         r/o     T14            t22     1
;                                   texture     u32         buf     T15            t23     1
;                                   texture     u32         buf     T16            t24     1
;                                   texture  struct         r/o     T17            t25     1
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
%"class.Texture1D<float>" = type { float, %"class.Texture1D<float>::mips_type" }
%"class.Texture1D<float>::mips_type" = type { i32 }
%"class.Texture2DArray<vector<float, 4> >" = type { <4 x float>, %"class.Texture2DArray<vector<float, 4> >::mips_type" }
%"class.Texture2DArray<vector<float, 4> >::mips_type" = type { i32 }
%"class.StructuredBuffer<GfxBSPAABBNodePacked>" = type { %struct.GfxBSPAABBNodePacked }
%struct.GfxBSPAABBNodePacked = type { i32, i32 }
%"class.Buffer<unsigned int>" = type { i32 }
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
%DeferredEffectLightConsts_decl = type { %struct.DeferredEffectLightConsts }
%struct.DeferredEffectLightConsts = type { i32, float, float, i32, i32, i32, i32, i32, i32, i32, i32, i32, [12 x <4 x i32>] }
%struct.SamplerComparisonState = type { i32 }
%struct.SamplerState = type { i32 }

@PCF_OFFSETS_8.v.1dim = internal constant [16 x float] [float 0xBFE6A09020000000, float 0x3FE6A09020000000, float 0.000000e+00, float -8.750000e-01, float 0x3FE0F837C0000000, float 0x3FE0F837C0000000, float -6.250000e-01, float 0.000000e+00, float 0x3FD6A161E0000000, float 0xBFD6A161E0000000, float 0.000000e+00, float 3.750000e-01, float 0xBFC6A161E0000000, float 0xBFC6A161E0000000, float 1.250000e-01, float 0.000000e+00], align 4

define void @cs_light_sensor_direct() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 17, i32 25, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 16, i32 24, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 15, i32 23, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 14, i32 22, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 13, i32 41, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 12, i32 18, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 11, i32 32, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 34, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 36, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 14, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 35, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 26, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 20, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 19, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 38, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 13, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 39, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 28, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 3, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %21 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %22 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %23 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %24 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %25 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %26 = alloca [4 x i32], align 4
  %27 = call i32 @dx.op.threadId.i32(i32 93, i32 0)  ; ThreadId(component)
  %28 = call i32 @dx.op.threadId.i32(i32 93, i32 1)  ; ThreadId(component)
  %29 = alloca [12 x float], align 4
  %30 = alloca [12 x float], align 4
  %31 = alloca [3 x float], align 4
  %32 = alloca [4 x float], align 4
  %33 = shl i32 %28, 6
  %34 = add i32 %33, %27
  %35 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %24, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %36 = extractvalue %dx.types.CBufRet.i32 %35, 0
  %37 = icmp ult i32 %34, %36
  br i1 %37, label %39, label %38, !dx.controlflow.hints !41

; <label>:38                                      ; preds = %0
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %27, i32 %28, i32 undef, float -1.000000e+00, float -1.000000e+00, float -1.000000e+00, float -1.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %1549

; <label>:39                                      ; preds = %0
  %40 = shl i32 %34, 4
  %41 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 %40, i32 undef)  ; BufferLoad(srv,index,wot)
  %42 = extractvalue %dx.types.ResRet.i32 %41, 0
  %43 = extractvalue %dx.types.ResRet.i32 %41, 1
  %44 = extractvalue %dx.types.ResRet.i32 %41, 2
  %45 = extractvalue %dx.types.ResRet.i32 %41, 3
  %46 = bitcast i32 %42 to float
  %47 = bitcast i32 %43 to float
  %48 = bitcast i32 %44 to float
  %49 = and i32 %45, 255
  %50 = lshr i32 %45, 8
  %51 = and i32 %50, 255
  %52 = lshr i32 %45, 16
  %53 = and i32 %52, 255
  %54 = sitofp i32 %49 to float
  %55 = sitofp i32 %51 to float
  %56 = sitofp i32 %53 to float
  %57 = fmul fast float %54, 0x3F80101020000000
  %58 = fmul fast float %55, 0x3F80101020000000
  %59 = fmul fast float %56, 0x3F80101020000000
  %60 = fadd fast float %57, -1.000000e+00
  %61 = fadd fast float %58, -1.000000e+00
  %62 = fadd fast float %59, -1.000000e+00
  %63 = lshr i32 %45, 24
  %64 = uitofp i32 %63 to float
  %65 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %66 = extractvalue %dx.types.CBufRet.f32 %65, 0
  %67 = extractvalue %dx.types.CBufRet.f32 %65, 1
  %68 = extractvalue %dx.types.CBufRet.f32 %65, 2
  %69 = fsub fast float %46, %66
  %70 = fsub fast float %47, %67
  %71 = fsub fast float %48, %68
  %72 = fsub fast float -0.000000e+00, %71
  %73 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %25, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %74 = extractvalue %dx.types.CBufRet.i32 %73, 3
  %75 = and i32 %74, 3
  %76 = icmp ne i32 %75, 0
  %77 = and i32 %74, 4
  %78 = icmp eq i32 %77, 0
  %79 = and i1 %76, %78
  %80 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %81 = extractvalue %dx.types.CBufRet.f32 %80, 0
  %82 = extractvalue %dx.types.CBufRet.f32 %80, 1
  %83 = fsub fast float %46, %81
  %84 = fsub fast float %47, %82
  %85 = fmul fast float %83, %83
  %86 = fmul fast float %84, %84
  %87 = fadd fast float %85, %86
  %88 = call float @dx.op.unary.f32(i32 24, float %87)  ; Sqrt(value)
  %89 = extractvalue %dx.types.CBufRet.f32 %80, 2
  %90 = fcmp fast olt float %88, %89
  br i1 %90, label %91, label %159, !dx.controlflow.hints !42

; <label>:91                                      ; preds = %39
  %92 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %93 = extractvalue %dx.types.CBufRet.f32 %92, 0
  %94 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %95 = extractvalue %dx.types.CBufRet.f32 %94, 0
  %96 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %97 = extractvalue %dx.types.CBufRet.f32 %96, 0
  %98 = extractvalue %dx.types.CBufRet.f32 %92, 1
  %99 = extractvalue %dx.types.CBufRet.f32 %94, 1
  %100 = extractvalue %dx.types.CBufRet.f32 %96, 1
  %101 = extractvalue %dx.types.CBufRet.f32 %92, 3
  %102 = extractvalue %dx.types.CBufRet.f32 %94, 3
  %103 = extractvalue %dx.types.CBufRet.f32 %96, 3
  %104 = fadd fast float %101, %46
  %105 = fadd fast float %102, %47
  %106 = fadd fast float %103, %48
  %107 = fmul fast float %104, %93
  %108 = call float @dx.op.tertiary.f32(i32 46, float %105, float %95, float %107)  ; FMad(a,b,c)
  %109 = call float @dx.op.tertiary.f32(i32 46, float %106, float %97, float %108)  ; FMad(a,b,c)
  %110 = fmul fast float %104, %98
  %111 = call float @dx.op.tertiary.f32(i32 46, float %105, float %99, float %110)  ; FMad(a,b,c)
  %112 = call float @dx.op.tertiary.f32(i32 46, float %106, float %100, float %111)  ; FMad(a,b,c)
  %113 = fsub fast float %109, %101
  %114 = fsub fast float %112, %102
  %115 = fsub fast float %113, %81
  %116 = fadd fast float %115, %89
  %117 = fsub fast float %114, %82
  %118 = fadd fast float %117, %89
  %119 = extractvalue %dx.types.CBufRet.f32 %80, 3
  %120 = fmul fast float %116, %119
  %121 = fmul fast float %118, %119
  %122 = call float @dx.op.unary.f32(i32 7, float %120)  ; Saturate(value)
  %123 = call float @dx.op.unary.f32(i32 7, float %121)  ; Saturate(value)
  %124 = fsub fast float 1.000000e+00, %122
  %125 = fsub fast float 1.000000e+00, %123
  %126 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %21, float %124, float %125, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %127 = extractvalue %dx.types.ResRet.f32 %126, 0
  %128 = fcmp fast ugt float %127, 0.000000e+00
  br i1 %128, label %129, label %159, !dx.controlflow.hints !43

; <label>:129                                     ; preds = %91
  %130 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %131 = extractvalue %dx.types.CBufRet.f32 %130, 2
  %132 = fmul fast float %131, %127
  %133 = extractvalue %dx.types.CBufRet.f32 %130, 3
  %134 = fadd fast float %133, %132
  %135 = extractvalue %dx.types.CBufRet.f32 %96, 2
  %136 = fadd fast float %134, %103
  %137 = fmul fast float %109, %97
  %138 = call float @dx.op.tertiary.f32(i32 46, float %112, float %100, float %137)  ; FMad(a,b,c)
  %139 = call float @dx.op.tertiary.f32(i32 46, float %136, float %135, float %138)  ; FMad(a,b,c)
  %140 = fsub fast float %139, %103
  %141 = fsub fast float %140, %68
  %142 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %21, float %124, float %125, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %143 = extractvalue %dx.types.ResRet.f32 %142, 0
  %144 = extractvalue %dx.types.ResRet.f32 %142, 1
  %145 = extractvalue %dx.types.ResRet.f32 %142, 2
  %146 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %16, %dx.types.Handle %21, float %124, float %125, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %147 = extractvalue %dx.types.ResRet.f32 %146, 0
  %148 = extractvalue %dx.types.ResRet.f32 %146, 1
  %149 = extractvalue %dx.types.ResRet.f32 %146, 2
  %150 = fadd fast float %147, %143
  %151 = fmul fast float %150, 0x3F847AE140000000
  %152 = fadd fast float %148, %144
  %153 = fmul fast float %152, 0x3F847AE140000000
  %154 = fadd fast float %149, %145
  %155 = fmul fast float %154, 0x3F847AE140000000
  %156 = fmul float %151, 0x3FF7154760000000
  %157 = fmul float %153, 0x3FF7154760000000
  %158 = fmul float %155, 0x3FF7154760000000
  br label %159

; <label>:159                                     ; preds = %129, %91, %39
  %160 = phi float [ 0.000000e+00, %39 ], [ %156, %129 ], [ 0.000000e+00, %91 ]
  %161 = phi float [ 0.000000e+00, %39 ], [ %157, %129 ], [ 0.000000e+00, %91 ]
  %162 = phi float [ 0.000000e+00, %39 ], [ %158, %129 ], [ 0.000000e+00, %91 ]
  %163 = phi float [ 0.000000e+00, %39 ], [ %141, %129 ], [ -1.310720e+05, %91 ]
  %164 = phi i32 [ 0, %39 ], [ 1, %129 ], [ 0, %91 ]
  %165 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %166 = extractvalue %dx.types.CBufRet.f32 %165, 3
  %167 = fcmp fast oeq float %166, 0.000000e+00
  br i1 %167, label %1101, label %168, !dx.controlflow.hints !44

; <label>:168                                     ; preds = %159
  %169 = extractvalue %dx.types.CBufRet.f32 %165, 0
  %170 = extractvalue %dx.types.CBufRet.f32 %165, 1
  %171 = extractvalue %dx.types.CBufRet.f32 %165, 2
  %172 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %173 = extractvalue %dx.types.CBufRet.f32 %172, 0
  %174 = extractvalue %dx.types.CBufRet.f32 %172, 1
  %175 = extractvalue %dx.types.CBufRet.f32 %172, 2
  %176 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %177 = extractvalue %dx.types.CBufRet.f32 %176, 0
  %178 = extractvalue %dx.types.CBufRet.f32 %176, 1
  %179 = call float @dx.op.dot3.f32(i32 55, float %173, float %174, float %175, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %180 = select i1 %79, float %177, float %173
  %181 = select i1 %79, float %179, float %174
  %182 = select i1 %79, float %178, float %175
  %183 = fmul fast float %169, %64
  %184 = fmul fast float %170, %64
  %185 = fmul fast float %171, %64
  %186 = fadd fast float %183, %69
  %187 = fadd fast float %184, %70
  %188 = fadd fast float %185, %71
  %189 = fcmp fast olt float %166, 0.000000e+00
  br i1 %189, label %835, label %190, !dx.controlflow.hints !45

; <label>:190                                     ; preds = %168
  %191 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %192 = extractvalue %dx.types.CBufRet.f32 %191, 0
  %193 = extractvalue %dx.types.CBufRet.f32 %191, 1
  %194 = extractvalue %dx.types.CBufRet.f32 %191, 2
  %195 = extractvalue %dx.types.CBufRet.f32 %191, 3
  %196 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %197 = extractvalue %dx.types.CBufRet.f32 %196, 0
  %198 = extractvalue %dx.types.CBufRet.f32 %196, 1
  %199 = extractvalue %dx.types.CBufRet.f32 %196, 2
  %200 = extractvalue %dx.types.CBufRet.f32 %196, 3
  %201 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %202 = extractvalue %dx.types.CBufRet.f32 %201, 0
  %203 = extractvalue %dx.types.CBufRet.f32 %201, 1
  %204 = extractvalue %dx.types.CBufRet.f32 %201, 2
  %205 = extractvalue %dx.types.CBufRet.f32 %201, 3
  %206 = fmul fast float %192, %186
  %207 = call float @dx.op.tertiary.f32(i32 46, float %187, float %193, float %206)  ; FMad(a,b,c)
  %208 = call float @dx.op.tertiary.f32(i32 46, float %188, float %194, float %207)  ; FMad(a,b,c)
  %209 = fadd fast float %208, %195
  %210 = fmul fast float %197, %186
  %211 = call float @dx.op.tertiary.f32(i32 46, float %187, float %198, float %210)  ; FMad(a,b,c)
  %212 = call float @dx.op.tertiary.f32(i32 46, float %188, float %199, float %211)  ; FMad(a,b,c)
  %213 = fadd fast float %212, %200
  %214 = fmul fast float %202, %186
  %215 = call float @dx.op.tertiary.f32(i32 46, float %187, float %203, float %214)  ; FMad(a,b,c)
  %216 = call float @dx.op.tertiary.f32(i32 46, float %188, float %204, float %215)  ; FMad(a,b,c)
  %217 = fadd fast float %216, %205
  %218 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %219 = extractvalue %dx.types.CBufRet.f32 %218, 0
  %220 = extractvalue %dx.types.CBufRet.f32 %218, 1
  %221 = extractvalue %dx.types.CBufRet.f32 %218, 3
  %222 = fmul fast float %221, %209
  %223 = fmul fast float %221, %213
  %224 = fadd fast float %222, %219
  %225 = fadd fast float %223, %220
  %226 = extractvalue %dx.types.CBufRet.f32 %218, 2
  %227 = fcmp fast olt float %226, 0.000000e+00
  %228 = fsub fast float -0.000000e+00, %226
  %229 = select i1 %227, float %228, float %226
  %230 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %231 = extractvalue %dx.types.CBufRet.f32 %230, 1
  %232 = fadd fast float %229, %231
  %233 = fcmp fast ogt float %232, 0.000000e+00
  br i1 %233, label %234, label %266, !dx.controlflow.hints !46

; <label>:234                                     ; preds = %190
  %235 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %236 = extractvalue %dx.types.CBufRet.f32 %235, 1
  %237 = fsub fast float %236, %217
  %238 = extractvalue %dx.types.CBufRet.f32 %235, 2
  %239 = fmul fast float %237, %238
  %240 = fsub fast float 1.000000e+00, %239
  %241 = call float @dx.op.unary.f32(i32 7, float %240)  ; Saturate(value)
  %242 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %243 = extractvalue %dx.types.CBufRet.f32 %242, 0
  %244 = extractvalue %dx.types.CBufRet.f32 %242, 1
  %245 = fsub fast float %224, %243
  %246 = fsub fast float %225, %244
  %247 = fcmp fast olt float %245, 0.000000e+00
  %248 = fcmp fast olt float %246, 0.000000e+00
  %249 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %250 = extractvalue %dx.types.CBufRet.f32 %249, 0
  %251 = extractvalue %dx.types.CBufRet.f32 %249, 1
  %252 = extractvalue %dx.types.CBufRet.f32 %249, 2
  %253 = extractvalue %dx.types.CBufRet.f32 %249, 3
  %254 = select i1 %247, float %250, float %252
  %255 = select i1 %248, float %251, float %253
  %256 = fmul fast float %254, %245
  %257 = fmul fast float %255, %246
  %258 = call float @dx.op.unary.f32(i32 6, float %256)  ; FAbs(value)
  %259 = call float @dx.op.unary.f32(i32 6, float %257)  ; FAbs(value)
  %260 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %261 = extractvalue %dx.types.CBufRet.f32 %260, 0
  %262 = call float @dx.op.binary.f32(i32 35, float %258, float %259)  ; FMax(a,b)
  %263 = fsub fast float %261, %262
  %264 = call float @dx.op.unary.f32(i32 7, float %263)  ; Saturate(value)
  %265 = fmul fast float %264, %241
  br label %266

; <label>:266                                     ; preds = %234, %190
  %267 = phi float [ %265, %234 ], [ 0.000000e+00, %190 ]
  %268 = call float @dx.op.binary.f32(i32 35, float %267, float 0.000000e+00)  ; FMax(a,b)
  %269 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %268)  ; FMax(a,b)
  %270 = fcmp fast olt float %269, 1.000000e+00
  br i1 %270, label %271, label %669, !dx.controlflow.hints !47

; <label>:271                                     ; preds = %266
  %272 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %273 = extractvalue %dx.types.CBufRet.f32 %272, 0
  %274 = fcmp fast une float %273, 0.000000e+00
  br i1 %274, label %275, label %669, !dx.controlflow.hints !48

; <label>:275                                     ; preds = %271
  %276 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %277 = extractvalue %dx.types.CBufRet.f32 %276, 0
  %278 = extractvalue %dx.types.CBufRet.f32 %276, 1
  %279 = extractvalue %dx.types.CBufRet.f32 %276, 2
  %280 = extractvalue %dx.types.CBufRet.f32 %276, 3
  %281 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %282 = extractvalue %dx.types.CBufRet.f32 %281, 0
  %283 = extractvalue %dx.types.CBufRet.f32 %281, 1
  %284 = extractvalue %dx.types.CBufRet.f32 %281, 2
  %285 = extractvalue %dx.types.CBufRet.f32 %281, 3
  %286 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %287 = extractvalue %dx.types.CBufRet.f32 %286, 0
  %288 = extractvalue %dx.types.CBufRet.f32 %286, 1
  %289 = extractvalue %dx.types.CBufRet.f32 %286, 2
  %290 = extractvalue %dx.types.CBufRet.f32 %286, 3
  %291 = fmul fast float %277, %186
  %292 = call float @dx.op.tertiary.f32(i32 46, float %187, float %278, float %291)  ; FMad(a,b,c)
  %293 = call float @dx.op.tertiary.f32(i32 46, float %188, float %279, float %292)  ; FMad(a,b,c)
  %294 = fadd fast float %293, %280
  %295 = fmul fast float %282, %186
  %296 = call float @dx.op.tertiary.f32(i32 46, float %187, float %283, float %295)  ; FMad(a,b,c)
  %297 = call float @dx.op.tertiary.f32(i32 46, float %188, float %284, float %296)  ; FMad(a,b,c)
  %298 = fadd fast float %297, %285
  %299 = fmul fast float %287, %186
  %300 = call float @dx.op.tertiary.f32(i32 46, float %187, float %288, float %299)  ; FMad(a,b,c)
  %301 = call float @dx.op.tertiary.f32(i32 46, float %188, float %289, float %300)  ; FMad(a,b,c)
  %302 = fadd fast float %301, %290
  %303 = fcmp fast oge float %294, 1.000000e+00
  %304 = fcmp fast oge float %298, 1.000000e+00
  %305 = or i1 %303, %304
  %306 = fcmp fast olt float %294, 0.000000e+00
  %307 = fcmp fast olt float %298, 0.000000e+00
  %308 = or i1 %306, %307
  %309 = or i1 %305, %308
  br i1 %309, label %669, label %310, !dx.controlflow.hints !49

; <label>:310                                     ; preds = %275
  %311 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %312 = extractvalue %dx.types.CBufRet.f32 %311, 0
  %313 = extractvalue %dx.types.CBufRet.f32 %311, 1
  %314 = extractvalue %dx.types.CBufRet.f32 %311, 2
  %315 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %25, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %316 = extractvalue %dx.types.CBufRet.i32 %315, 2
  %317 = uitofp i32 %316 to float
  %318 = extractvalue %dx.types.CBufRet.i32 %315, 3
  %319 = uitofp i32 %318 to float
  %320 = extractvalue %dx.types.CBufRet.f32 %311, 3
  %321 = fmul fast float %320, 2.000000e+00
  %322 = fsub fast float %294, %312
  %323 = fsub fast float %298, %313
  %324 = fmul fast float %321, %322
  %325 = fmul fast float %321, %323
  %326 = fdiv fast float 1.000000e+00, %171
  %327 = fmul fast float %325, %326
  %328 = call float @dx.op.unary.f32(i32 6, float %327)  ; FAbs(value)
  %329 = fmul fast float %314, %188
  %330 = fmul fast float %329, %321
  %331 = call float @dx.op.unary.f32(i32 6, float %330)  ; FAbs(value)
  %332 = call float @dx.op.unary.f32(i32 6, float %324)  ; FAbs(value)
  %333 = call float @dx.op.binary.f32(i32 35, float %331, float %328)  ; FMax(a,b)
  %334 = call float @dx.op.binary.f32(i32 35, float %332, float %333)  ; FMax(a,b)
  %335 = fmul fast float %334, 2.000000e+00
  %336 = call float @dx.op.unary.f32(i32 23, float %335)  ; Log(value)
  %337 = call float @dx.op.binary.f32(i32 35, float %336, float %317)  ; FMax(a,b)
  %338 = call float @dx.op.unary.f32(i32 22, float %337)  ; Frc(value)
  %339 = fadd fast float %338, 0xBFEA666660000000
  %340 = fmul fast float %339, 8.000000e+00
  %341 = call float @dx.op.unary.f32(i32 7, float %340)  ; Saturate(value)
  %342 = call float @dx.op.unary.f32(i32 27, float %337)  ; Round_ni(value)
  %343 = fadd fast float %342, %341
  %344 = call float @dx.op.binary.f32(i32 36, float %343, float %319)  ; FMin(a,b)
  %345 = call float @dx.op.unary.f32(i32 27, float %344)  ; Round_ni(value)
  %346 = fsub fast float -0.000000e+00, %345
  %347 = call float @dx.op.unary.f32(i32 21, float %346)  ; Exp(value)
  %348 = fmul fast float %347, %321
  %349 = fmul fast float %348, %294
  %350 = fmul fast float %348, %298
  %351 = fmul fast float %349, 2.500000e-01
  %352 = fmul fast float %350, 2.500000e-01
  %353 = fadd fast float %351, 5.000000e-01
  %354 = fadd fast float %352, 5.000000e-01
  %355 = fsub fast float %319, %317
  %356 = fptoui float %355 to i32
  %357 = add i32 %356, 320
  %358 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 %357)  ; CBufferLoadLegacy(handle,regIndex)
  %359 = extractvalue %dx.types.CBufRet.f32 %358, 0
  %360 = extractvalue %dx.types.CBufRet.f32 %358, 1
  %361 = fcmp fast une float %344, %319
  %362 = fsub fast float %294, %359
  %363 = fsub fast float %298, %360
  %364 = call float @dx.op.unary.f32(i32 6, float %362)  ; FAbs(value)
  %365 = call float @dx.op.unary.f32(i32 6, float %363)  ; FAbs(value)
  %366 = fmul fast float %364, %348
  %367 = fmul fast float %365, %348
  %368 = fcmp fast olt float %366, 1.000000e+00
  %369 = fcmp fast olt float %367, 1.000000e+00
  %370 = and i1 %368, %369
  %371 = or i1 %361, %370
  br i1 %371, label %372, label %669, !dx.controlflow.hints !50

; <label>:372                                     ; preds = %310
  %373 = fmul fast float %350, 5.000000e-01
  %374 = fmul fast float %349, 5.000000e-01
  %375 = fadd fast float %373, 5.000000e-01
  %376 = fadd fast float %374, 5.000000e-01
  %377 = sitofp i32 %316 to float
  %378 = fsub fast float %344, %377
  %379 = call float @dx.op.unary.f32(i32 27, float %378)  ; Round_ni(value)
  %380 = call float @dx.op.unary.f32(i32 22, float %344)  ; Frc(value)
  %381 = call float @dx.op.unary.f32(i32 22, float %376)  ; Frc(value)
  %382 = call float @dx.op.unary.f32(i32 22, float %375)  ; Frc(value)
  %383 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %20, float %381, float %382, float %379, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %384 = extractvalue %dx.types.ResRet.f32 %383, 0
  %385 = extractvalue %dx.types.ResRet.f32 %383, 1
  %386 = extractvalue %dx.types.ResRet.f32 %383, 2
  %387 = extractvalue %dx.types.ResRet.f32 %383, 3
  %388 = fcmp fast ogt float %380, 0.000000e+00
  br i1 %388, label %389, label %410, !dx.controlflow.hints !51

; <label>:389                                     ; preds = %372
  %390 = fadd fast float %379, 1.000000e+00
  %391 = call float @dx.op.unary.f32(i32 22, float %353)  ; Frc(value)
  %392 = call float @dx.op.unary.f32(i32 22, float %354)  ; Frc(value)
  %393 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %20, float %391, float %392, float %390, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %394 = extractvalue %dx.types.ResRet.f32 %393, 0
  %395 = extractvalue %dx.types.ResRet.f32 %393, 1
  %396 = extractvalue %dx.types.ResRet.f32 %393, 2
  %397 = extractvalue %dx.types.ResRet.f32 %393, 3
  %398 = fsub fast float %394, %384
  %399 = fsub fast float %395, %385
  %400 = fsub fast float %396, %386
  %401 = fsub fast float %397, %387
  %402 = fmul fast float %398, %380
  %403 = fmul fast float %399, %380
  %404 = fmul fast float %400, %380
  %405 = fmul fast float %401, %380
  %406 = fadd fast float %402, %384
  %407 = fadd fast float %403, %385
  %408 = fadd fast float %404, %386
  %409 = fadd fast float %405, %387
  br label %410

; <label>:410                                     ; preds = %389, %372
  %411 = phi float [ %406, %389 ], [ %384, %372 ]
  %412 = phi float [ %407, %389 ], [ %385, %372 ]
  %413 = phi float [ %408, %389 ], [ %386, %372 ]
  %414 = phi float [ %409, %389 ], [ %387, %372 ]
  %415 = fadd fast float %411, -5.000000e-01
  %416 = fadd fast float %413, -5.000000e-01
  %417 = fmul fast float %415, 0xBFD5555560000000
  %418 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %416, float %417)  ; FMad(a,b,c)
  %419 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %412, float 0.000000e+00)  ; FMad(a,b,c)
  %420 = fadd fast float %419, %414
  %421 = fmul fast float %415, -7.500000e-01
  %422 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %416, float %421)  ; FMad(a,b,c)
  %423 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %412, float 0.000000e+00)  ; FMad(a,b,c)
  %424 = fadd fast float %423, %414
  %425 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %426 = extractvalue %dx.types.CBufRet.f32 %425, 0
  %427 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %428 = extractvalue %dx.types.CBufRet.f32 %427, 0
  %429 = extractvalue %dx.types.CBufRet.f32 %427, 1
  %430 = extractvalue %dx.types.CBufRet.f32 %427, 2
  %431 = extractvalue %dx.types.CBufRet.f32 %427, 3
  %432 = fsub fast float %428, %418
  %433 = fsub fast float %429, %420
  %434 = fsub fast float %430, %422
  %435 = fsub fast float %431, %424
  %436 = fmul fast float %432, %426
  %437 = fmul fast float %433, %426
  %438 = fmul fast float %434, %426
  %439 = fmul fast float %435, %426
  %440 = fadd fast float %436, %418
  %441 = fadd fast float %437, %420
  %442 = fadd fast float %438, %422
  %443 = fadd fast float %439, %424
  %444 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %445 = extractvalue %dx.types.ResRet.i32 %444, 0
  %446 = and i32 %445, 536870911
  %447 = uitofp i32 %446 to float
  %448 = fmul fast float %447, %294
  %449 = fmul fast float %447, %298
  %450 = fptoui float %448 to i32
  %451 = fptoui float %449 to i32
  %452 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %453 = extractvalue %dx.types.ResRet.i32 %452, 0
  %454 = and i32 %453, 31
  %455 = lshr i32 %450, %454
  %456 = lshr i32 %451, %454
  %457 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %458 = extractvalue %dx.types.ResRet.i32 %457, 0
  %459 = and i32 %458, 31
  %460 = shl i32 1, %459
  %461 = call i32 @dx.op.binary.i32(i32 40, i32 %460, i32 4)  ; UMin(a,b)
  %462 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %463 = extractvalue %dx.types.ResRet.i32 %462, 0
  %464 = extractvalue %dx.types.ResRet.i32 %462, 1
  %465 = icmp eq i32 %461, 0
  br i1 %465, label %507, label %466

; <label>:466                                     ; preds = %410
  br label %467

; <label>:467                                     ; preds = %495, %466
  %468 = phi i32 [ %498, %495 ], [ 0, %466 ]
  %469 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %470 = extractvalue %dx.types.ResRet.i32 %469, 0
  %471 = lshr i32 %470, 16
  %472 = and i32 %471, 31
  %473 = shl i32 %456, %472
  %474 = add i32 %473, %455
  %475 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %476 = extractvalue %dx.types.ResRet.i32 %475, 0
  %477 = and i32 %476, 31
  %478 = shl i32 %474, %477
  %479 = add i32 %478, %468
  %480 = shl i32 %479, 2
  %481 = add i32 %480, 32
  %482 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %481, i32 undef)  ; BufferLoad(srv,index,wot)
  %483 = extractvalue %dx.types.ResRet.i32 %482, 0
  %484 = icmp slt i32 %483, 0
  %485 = getelementptr [12 x float], [12 x float]* %29, i32 0, i32 %468
  %486 = getelementptr [12 x float], [12 x float]* %30, i32 0, i32 %468
  %487 = bitcast float* %485 to i32*
  %488 = bitcast float* %486 to i32*
  br i1 %484, label %489, label %495, !dx.controlflow.hints !52

; <label>:489                                     ; preds = %467
  %490 = and i32 %483, 1073741823
  %491 = add nuw nsw i32 %490, 20
  %492 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %491, i32 undef)  ; BufferLoad(srv,index,wot)
  %493 = extractvalue %dx.types.ResRet.i32 %492, 0
  %494 = extractvalue %dx.types.ResRet.i32 %492, 1
  br label %495

; <label>:495                                     ; preds = %489, %467
  %496 = phi i32 [ %493, %489 ], [ %463, %467 ]
  %497 = phi i32 [ %494, %489 ], [ %464, %467 ]
  store i32 %496, i32* %487, align 4
  store i32 %497, i32* %488, align 4
  %498 = add nuw i32 %468, 1
  %499 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %25, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %500 = extractvalue %dx.types.CBufRet.i32 %499, 2
  %501 = icmp eq i32 %500, 0
  %502 = icmp ugt i32 %483, -1073741825
  %503 = and i1 %502, %501
  %504 = icmp ult i32 %498, %461
  %505 = and i1 %503, %504
  br i1 %505, label %467, label %506, !dx.controlflow.hints !53

; <label>:506                                     ; preds = %495
  br label %507

; <label>:507                                     ; preds = %506, %410
  %508 = phi i32 [ 0, %410 ], [ %498, %506 ]
  %509 = extractvalue %dx.types.CBufRet.f32 %272, 2
  %510 = fptoui float %509 to i32
  %511 = icmp eq i32 %510, 0
  br i1 %511, label %563, label %512

; <label>:512                                     ; preds = %507
  br label %513

; <label>:513                                     ; preds = %558, %512
  %514 = phi i32 [ %559, %558 ], [ %508, %512 ]
  %515 = phi i32 [ %560, %558 ], [ 0, %512 ]
  %516 = lshr i32 %515, 2
  %517 = and i32 %515, 3
  %518 = add nuw nsw i32 %516, 83
  %519 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %25, i32 %518)  ; CBufferLoadLegacy(handle,regIndex)
  %520 = extractvalue %dx.types.CBufRet.i32 %519, 0
  %521 = extractvalue %dx.types.CBufRet.i32 %519, 1
  %522 = extractvalue %dx.types.CBufRet.i32 %519, 2
  %523 = extractvalue %dx.types.CBufRet.i32 %519, 3
  %524 = getelementptr inbounds [4 x i32], [4 x i32]* %26, i32 0, i32 0
  store i32 %520, i32* %524, align 4
  %525 = getelementptr inbounds [4 x i32], [4 x i32]* %26, i32 0, i32 1
  store i32 %521, i32* %525, align 4
  %526 = getelementptr inbounds [4 x i32], [4 x i32]* %26, i32 0, i32 2
  store i32 %522, i32* %526, align 4
  %527 = getelementptr inbounds [4 x i32], [4 x i32]* %26, i32 0, i32 3
  store i32 %523, i32* %527, align 4
  %528 = getelementptr inbounds [4 x i32], [4 x i32]* %26, i32 0, i32 %517
  %529 = load i32, i32* %528, align 4, !tbaa !54, !noalias !58
  %530 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %531 = extractvalue %dx.types.ResRet.i32 %530, 0
  %532 = lshr i32 %531, 16
  %533 = and i32 %532, 31
  %534 = shl i32 %456, %533
  %535 = add i32 %534, %455
  %536 = shl i32 %535, 2
  %537 = add i32 %536, %529
  %538 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %537, i32 undef)  ; BufferLoad(srv,index,wot)
  %539 = extractvalue %dx.types.ResRet.i32 %538, 0
  %540 = icmp eq i32 %539, 0
  br i1 %540, label %558, label %541, !dx.controlflow.hints !63

; <label>:541                                     ; preds = %513
  %542 = icmp slt i32 %539, 0
  %543 = getelementptr [12 x float], [12 x float]* %29, i32 0, i32 %514
  %544 = getelementptr [12 x float], [12 x float]* %30, i32 0, i32 %514
  %545 = bitcast float* %543 to i32*
  %546 = bitcast float* %544 to i32*
  br i1 %542, label %547, label %554, !dx.controlflow.hints !64

; <label>:547                                     ; preds = %541
  %548 = and i32 %539, 1073741823
  %549 = add i32 %529, 20
  %550 = add i32 %549, %548
  %551 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %550, i32 undef)  ; BufferLoad(srv,index,wot)
  %552 = extractvalue %dx.types.ResRet.i32 %551, 0
  %553 = extractvalue %dx.types.ResRet.i32 %551, 1
  br label %554

; <label>:554                                     ; preds = %547, %541
  %555 = phi i32 [ %552, %547 ], [ %463, %541 ]
  %556 = phi i32 [ %553, %547 ], [ %464, %541 ]
  store i32 %555, i32* %545, align 4
  store i32 %556, i32* %546, align 4
  %557 = add i32 %514, 1
  br label %558

; <label>:558                                     ; preds = %554, %513
  %559 = phi i32 [ %514, %513 ], [ %557, %554 ]
  %560 = add nuw i32 %515, 1
  %561 = icmp eq i32 %560, %510
  br i1 %561, label %562, label %513

; <label>:562                                     ; preds = %558
  br label %563

; <label>:563                                     ; preds = %562, %507
  %564 = phi i32 [ %508, %507 ], [ %559, %562 ]
  %565 = icmp eq i32 %564, 1
  %566 = getelementptr [12 x float], [12 x float]* %29, i32 0, i32 0
  %567 = getelementptr [12 x float], [12 x float]* %30, i32 0, i32 0
  br i1 %565, label %568, label %571, !dx.controlflow.hints !65

; <label>:568                                     ; preds = %563
  %569 = load float, float* %566, align 4
  %570 = load float, float* %567, align 4
  br label %598

; <label>:571                                     ; preds = %563
  %572 = load float, float* %566, align 4
  %573 = load float, float* %567, align 4
  %574 = fdiv fast float 1.000000e+00, %573
  %575 = fsub fast float %572, %574
  %576 = icmp ugt i32 %564, 1
  br i1 %576, label %577, label %593

; <label>:577                                     ; preds = %571
  br label %578

; <label>:578                                     ; preds = %578, %577
  %579 = phi float [ %588, %578 ], [ %575, %577 ]
  %580 = phi float [ %589, %578 ], [ %572, %577 ]
  %581 = phi i32 [ %590, %578 ], [ 1, %577 ]
  %582 = getelementptr [12 x float], [12 x float]* %29, i32 0, i32 %581
  %583 = load float, float* %582, align 4
  %584 = getelementptr [12 x float], [12 x float]* %30, i32 0, i32 %581
  %585 = load float, float* %584, align 4
  %586 = fdiv fast float 1.000000e+00, %585
  %587 = fsub fast float %583, %586
  %588 = call float @dx.op.binary.f32(i32 36, float %579, float %587)  ; FMin(a,b)
  %589 = call float @dx.op.binary.f32(i32 35, float %580, float %583)  ; FMax(a,b)
  %590 = add nuw i32 %581, 1
  %591 = icmp eq i32 %590, %564
  br i1 %591, label %592, label %578

; <label>:592                                     ; preds = %578
  br label %593

; <label>:593                                     ; preds = %592, %571
  %594 = phi float [ %575, %571 ], [ %588, %592 ]
  %595 = phi float [ %572, %571 ], [ %589, %592 ]
  %596 = fsub fast float %595, %594
  %597 = fdiv fast float 1.000000e+00, %596
  br label %598

; <label>:598                                     ; preds = %593, %568
  %599 = phi float [ %569, %568 ], [ %595, %593 ]
  %600 = phi float [ %570, %568 ], [ %597, %593 ]
  %601 = fadd fast float %302, %599
  %602 = fmul fast float %601, %600
  %603 = call float @dx.op.unary.f32(i32 7, float %602)  ; Saturate(value)
  %604 = fmul fast float %603, 2.000000e+00
  %605 = fsub fast float 1.000000e+00, %604
  %606 = fmul fast float %440, %440
  %607 = fsub fast float %441, %606
  %608 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %607)  ; FMax(a,b)
  %609 = fdiv fast float 1.000000e+00, %608
  %610 = fmul fast float %441, %440
  %611 = fsub fast float %442, %610
  %612 = fsub fast float %605, %440
  %613 = fmul fast float %605, %605
  %614 = fsub fast float %613, %441
  %615 = fmul fast float %609, %611
  %616 = fmul fast float %615, %612
  %617 = fsub fast float %614, %616
  %618 = fmul fast float %441, %441
  %619 = fsub fast float %443, %618
  %620 = fmul fast float %611, %611
  %621 = fmul fast float %620, %609
  %622 = fsub fast float %619, %621
  %623 = fdiv fast float %617, %622
  %624 = fmul fast float %623, %611
  %625 = fsub fast float %612, %624
  %626 = fmul fast float %625, %609
  %627 = fmul fast float %626, %440
  %628 = fsub fast float 1.000000e+00, %627
  %629 = fmul fast float %623, %441
  %630 = fsub fast float %628, %629
  %631 = fmul fast float %626, %626
  %632 = fmul fast float %623, 4.000000e+00
  %633 = fmul fast float %632, %630
  %634 = fsub fast float %631, %633
  %635 = call float @dx.op.unary.f32(i32 24, float %634)  ; Sqrt(value)
  %636 = fcmp fast oge float %626, 0.000000e+00
  %637 = fsub fast float -0.000000e+00, %635
  %638 = select i1 %636, float %637, float %635
  %639 = fsub fast float %638, %626
  %640 = fdiv fast float %639, %623
  %641 = fdiv fast float %630, %639
  %642 = fmul fast float %640, 5.000000e-01
  %643 = fmul fast float %641, 2.000000e+00
  %644 = select i1 %636, float %642, float %643
  %645 = select i1 %636, float %643, float %642
  %646 = call float @dx.op.binary.f32(i32 35, float %644, float %645)  ; FMax(a,b)
  %647 = call float @dx.op.binary.f32(i32 36, float %644, float %645)  ; FMin(a,b)
  %648 = fcmp fast ogt float %605, %646
  %649 = fsub fast float %605, %647
  %650 = fsub fast float %605, %646
  %651 = fsub fast float %646, %647
  %652 = select i1 %648, float %650, float %651
  %653 = fmul float %649, %652
  %654 = select i1 %648, float %647, float %605
  %655 = fcmp fast ogt float %605, %647
  %656 = fmul fast float %654, %646
  %657 = fadd fast float %654, %646
  %658 = fmul fast float %657, %440
  %659 = fadd fast float %656, %441
  %660 = fsub fast float %659, %658
  %661 = fdiv fast float %660, %653
  %662 = select i1 %655, float %661, float 0.000000e+00
  %663 = fsub fast float 1.000000e+00, %662
  %664 = select i1 %648, float %663, float %662
  %665 = call float @dx.op.unary.f32(i32 7, float %664)  ; Saturate(value)
  %666 = extractvalue %dx.types.CBufRet.f32 %425, 3
  %667 = fmul fast float %666, %665
  %668 = fsub fast float 1.000000e+00, %667
  br label %669

; <label>:669                                     ; preds = %598, %310, %275, %271, %266
  %670 = phi float [ 1.000000e+00, %266 ], [ %668, %598 ], [ 1.000000e+00, %275 ], [ 1.000000e+00, %310 ], [ 1.000000e+00, %271 ]
  br i1 %270, label %671, label %672, !dx.controlflow.hints !66

; <label>:671                                     ; preds = %669
  br label %672

; <label>:672                                     ; preds = %671, %669
  %673 = phi float [ -1.310720e+05, %671 ], [ %670, %669 ]
  %674 = fcmp fast ogt float %267, 0.000000e+00
  br i1 %674, label %675, label %830, !dx.controlflow.hints !67

; <label>:675                                     ; preds = %672
  %676 = fadd fast float %231, %217
  %677 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %678 = extractvalue %dx.types.CBufRet.f32 %677, 2
  %679 = extractvalue %dx.types.CBufRet.f32 %677, 3
  %680 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %681 = extractvalue %dx.types.CBufRet.f32 %680, 1
  %682 = call float @dx.op.binary.f32(i32 35, float %676, float 0.000000e+00)  ; FMax(a,b)
  %683 = fadd fast float %682, 0x3F10000000000000
  %684 = fcmp fast oeq float %681, 0.000000e+00
  br i1 %684, label %686, label %685, !dx.controlflow.hints !68

; <label>:685                                     ; preds = %675
  br label %753

; <label>:686                                     ; preds = %675
  %687 = extractvalue %dx.types.CBufRet.f32 %677, 1
  %688 = extractvalue %dx.types.CBufRet.f32 %677, 0
  %689 = fmul fast float %688, %224
  %690 = fmul fast float %687, %225
  %691 = fadd fast float %689, 5.000000e-01
  %692 = call float @dx.op.unary.f32(i32 27, float %691)  ; Round_ni(value)
  %693 = fadd fast float %690, 5.000000e-01
  %694 = call float @dx.op.unary.f32(i32 27, float %693)  ; Round_ni(value)
  %695 = fsub fast float %691, %692
  %696 = fsub fast float %693, %694
  %697 = fadd fast float %692, -5.000000e-01
  %698 = fadd fast float %694, -5.000000e-01
  %699 = fmul fast float %695, 2.000000e+00
  %700 = fsub fast float 3.000000e+00, %699
  %701 = fadd fast float %699, 1.000000e+00
  %702 = fsub fast float 2.000000e+00, %695
  %703 = bitcast float %700 to i32
  %704 = sub nsw i32 2129859010, %703
  %705 = bitcast i32 %704 to float
  %706 = fmul fast float %705, %702
  %707 = fadd fast float %706, -1.000000e+00
  %708 = bitcast float %701 to i32
  %709 = sub nsw i32 2129859010, %708
  %710 = bitcast i32 %709 to float
  %711 = fmul fast float %710, %695
  %712 = fadd fast float %711, 1.000000e+00
  %713 = fmul fast float %696, 2.000000e+00
  %714 = fsub fast float 3.000000e+00, %713
  %715 = fadd fast float %713, 1.000000e+00
  %716 = fsub fast float 2.000000e+00, %696
  %717 = bitcast float %714 to i32
  %718 = sub nsw i32 2129859010, %717
  %719 = bitcast i32 %718 to float
  %720 = fmul fast float %719, %716
  %721 = fadd fast float %720, -1.000000e+00
  %722 = bitcast float %715 to i32
  %723 = sub nsw i32 2129859010, %722
  %724 = bitcast i32 %723 to float
  %725 = fmul fast float %724, %696
  %726 = fadd fast float %725, 1.000000e+00
  %727 = fadd fast float %707, %697
  %728 = fmul fast float %727, %678
  %729 = fadd fast float %721, %698
  %730 = fmul fast float %729, %679
  %731 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %11, %dx.types.Handle %23, float %728, float %730, float undef, float undef, i32 0, i32 0, i32 undef, float %683)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %732 = extractvalue %dx.types.ResRet.f32 %731, 0
  %733 = fmul fast float %732, %700
  %734 = fadd fast float %712, %697
  %735 = fmul fast float %734, %678
  %736 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %11, %dx.types.Handle %23, float %735, float %730, float undef, float undef, i32 0, i32 0, i32 undef, float %683)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %737 = extractvalue %dx.types.ResRet.f32 %736, 0
  %738 = fmul fast float %737, %701
  %739 = fadd fast float %726, %698
  %740 = fmul fast float %739, %679
  %741 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %11, %dx.types.Handle %23, float %728, float %740, float undef, float undef, i32 0, i32 0, i32 undef, float %683)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %742 = extractvalue %dx.types.ResRet.f32 %741, 0
  %743 = fmul fast float %742, %700
  %744 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %11, %dx.types.Handle %23, float %735, float %740, float undef, float undef, i32 0, i32 0, i32 undef, float %683)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %745 = extractvalue %dx.types.ResRet.f32 %744, 0
  %746 = fmul fast float %745, %701
  %747 = fadd fast float %746, %743
  %748 = fmul fast float %747, %715
  %749 = fadd fast float %738, %733
  %750 = fmul fast float %749, %714
  %751 = fadd fast float %750, %748
  %752 = fmul fast float %751, 6.250000e-02
  br label %830

; <label>:753                                     ; preds = %799, %685
  %754 = phi float [ %794, %799 ], [ 0.000000e+00, %685 ]
  %755 = phi float [ %796, %799 ], [ 0.000000e+00, %685 ]
  %756 = phi i32 [ %800, %799 ], [ 0, %685 ]
  %757 = mul i32 %756, 2
  %758 = add i32 0, %757
  %759 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %758
  %760 = load float, float* %759, align 4
  %761 = mul i32 %756, 2
  %762 = add i32 1, %761
  %763 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %762
  %764 = load float, float* %763, align 4
  %765 = call float @dx.op.tertiary.f32(i32 46, float %764, float -0.000000e+00, float %760)  ; FMad(a,b,c)
  %766 = fmul fast float %765, %681
  %767 = fmul fast float %764, %681
  %768 = fadd fast float %766, %224
  %769 = fadd fast float %767, %225
  %770 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %11, %dx.types.Handle %22, float %768, float %769, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %771 = extractvalue %dx.types.ResRet.f32 %770, 0
  %772 = extractvalue %dx.types.ResRet.f32 %770, 1
  %773 = extractvalue %dx.types.ResRet.f32 %770, 2
  %774 = extractvalue %dx.types.ResRet.f32 %770, 3
  %775 = getelementptr inbounds [4 x float], [4 x float]* %32, i32 0, i32 0
  store float %771, float* %775, align 4
  %776 = getelementptr inbounds [4 x float], [4 x float]* %32, i32 0, i32 1
  store float %772, float* %776, align 4
  %777 = getelementptr inbounds [4 x float], [4 x float]* %32, i32 0, i32 2
  store float %773, float* %777, align 4
  %778 = getelementptr inbounds [4 x float], [4 x float]* %32, i32 0, i32 3
  store float %774, float* %778, align 4
  %779 = fsub fast float %771, %683
  %780 = fcmp fast olt float %779, 0.000000e+00
  %781 = select i1 %780, float 0.000000e+00, float 1.000000e+00
  %782 = fadd fast float %781, %754
  %783 = fmul fast float %781, %779
  %784 = fadd fast float %783, %755
  br label %785

; <label>:785                                     ; preds = %785, %753
  %786 = phi i32 [ 1, %753 ], [ %797, %785 ]
  %787 = phi float [ %784, %753 ], [ %796, %785 ]
  %788 = phi float [ %782, %753 ], [ %794, %785 ]
  %789 = getelementptr [4 x float], [4 x float]* %32, i32 0, i32 %786
  %790 = load float, float* %789, align 4, !tbaa !69, !noalias !58
  %791 = fsub fast float %790, %683
  %792 = fcmp fast olt float %791, 0.000000e+00
  %793 = select i1 %792, float 0.000000e+00, float 1.000000e+00
  %794 = fadd fast float %793, %788
  %795 = fmul fast float %793, %791
  %796 = fadd fast float %795, %787
  %797 = add nuw nsw i32 %786, 1
  %798 = icmp eq i32 %797, 4
  br i1 %798, label %799, label %785, !llvm.loop !71

; <label>:799                                     ; preds = %785
  %800 = add nuw nsw i32 %756, 1
  %801 = icmp eq i32 %800, 8
  br i1 %801, label %802, label %753, !llvm.loop !73

; <label>:802                                     ; preds = %799
  %803 = fdiv fast float 1.000000e+00, %794
  %804 = fmul fast float %803, %796
  %805 = fdiv fast float 1.000000e+00, %683
  %806 = fmul fast float %804, %805
  %807 = call float @dx.op.unary.f32(i32 7, float %806)  ; Saturate(value)
  %808 = call float @dx.op.binary.f32(i32 35, float %807, float 0.000000e+00)  ; FMax(a,b)
  %809 = fmul fast float %794, 3.125000e-02
  %810 = call float @dx.op.unary.f32(i32 7, float %809)  ; Saturate(value)
  %811 = fmul fast float %810, 2.000000e+00
  %812 = fadd fast float %811, -1.000000e+00
  %813 = fcmp fast ogt float %812, 0.000000e+00
  %814 = fcmp fast olt float %812, 0.000000e+00
  %815 = zext i1 %813 to i32
  %816 = zext i1 %814 to i32
  %817 = sub nsw i32 %815, %816
  %818 = sitofp i32 %817 to float
  %819 = fmul fast float %818, %812
  %820 = fsub fast float 1.000000e+00, %819
  %821 = fmul fast float %820, %820
  %822 = fmul fast float %821, %820
  %823 = fsub fast float %820, %822
  %824 = fmul fast float %823, %808
  %825 = fsub fast float 1.000000e+00, %822
  %826 = fsub fast float %825, %824
  %827 = fmul fast float %818, 5.000000e-01
  %828 = fmul fast float %827, %826
  %829 = fsub fast float 5.000000e-01, %828
  br label %830

; <label>:830                                     ; preds = %802, %686, %672
  %831 = phi float [ 1.000000e+00, %672 ], [ %752, %686 ], [ %829, %802 ]
  %832 = fsub fast float %831, %673
  %833 = fmul fast float %832, %267
  %834 = fadd fast float %833, %673
  br label %835

; <label>:835                                     ; preds = %830, %168
  %836 = phi float [ %834, %830 ], [ 1.000000e+00, %168 ]
  %837 = call float @dx.op.binary.f32(i32 36, float %836, float %836)  ; FMin(a,b)
  %838 = call float @dx.op.binary.f32(i32 36, float %836, float %837)  ; FMin(a,b)
  %839 = fcmp fast ogt float %838, 0.000000e+00
  br i1 %839, label %840, label %1005, !dx.controlflow.hints !74

; <label>:840                                     ; preds = %835
  %841 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %842 = extractvalue %dx.types.CBufRet.f32 %841, 0
  %843 = extractvalue %dx.types.CBufRet.f32 %841, 1
  %844 = extractvalue %dx.types.CBufRet.f32 %841, 2
  %845 = extractvalue %dx.types.CBufRet.f32 %841, 3
  %846 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %847 = extractvalue %dx.types.CBufRet.f32 %846, 0
  %848 = extractvalue %dx.types.CBufRet.f32 %846, 1
  %849 = extractvalue %dx.types.CBufRet.f32 %846, 2
  %850 = extractvalue %dx.types.CBufRet.f32 %846, 3
  %851 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %852 = extractvalue %dx.types.CBufRet.f32 %851, 0
  %853 = extractvalue %dx.types.CBufRet.f32 %851, 1
  %854 = extractvalue %dx.types.CBufRet.f32 %851, 2
  %855 = extractvalue %dx.types.CBufRet.f32 %851, 3
  %856 = fmul fast float %842, %186
  %857 = call float @dx.op.tertiary.f32(i32 46, float %187, float %843, float %856)  ; FMad(a,b,c)
  %858 = call float @dx.op.tertiary.f32(i32 46, float %188, float %844, float %857)  ; FMad(a,b,c)
  %859 = fadd fast float %858, %845
  %860 = fmul fast float %847, %186
  %861 = call float @dx.op.tertiary.f32(i32 46, float %187, float %848, float %860)  ; FMad(a,b,c)
  %862 = call float @dx.op.tertiary.f32(i32 46, float %188, float %849, float %861)  ; FMad(a,b,c)
  %863 = fadd fast float %862, %850
  %864 = fmul fast float %852, %186
  %865 = call float @dx.op.tertiary.f32(i32 46, float %187, float %853, float %864)  ; FMad(a,b,c)
  %866 = call float @dx.op.tertiary.f32(i32 46, float %188, float %854, float %865)  ; FMad(a,b,c)
  %867 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %868 = extractvalue %dx.types.CBufRet.f32 %867, 0
  %869 = extractvalue %dx.types.CBufRet.f32 %867, 1
  %870 = extractvalue %dx.types.CBufRet.f32 %867, 3
  %871 = fmul fast float %870, %859
  %872 = fmul fast float %870, %863
  %873 = fadd fast float %871, %868
  %874 = fadd fast float %872, %869
  %875 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %876 = extractvalue %dx.types.CBufRet.f32 %875, 0
  %877 = extractvalue %dx.types.CBufRet.f32 %875, 1
  %878 = fsub fast float %873, %876
  %879 = fsub fast float %874, %877
  %880 = fcmp fast olt float %878, 0.000000e+00
  %881 = fcmp fast olt float %879, 0.000000e+00
  %882 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %883 = extractvalue %dx.types.CBufRet.f32 %882, 0
  %884 = extractvalue %dx.types.CBufRet.f32 %882, 1
  %885 = extractvalue %dx.types.CBufRet.f32 %882, 2
  %886 = extractvalue %dx.types.CBufRet.f32 %882, 3
  %887 = select i1 %880, float %883, float %885
  %888 = select i1 %881, float %884, float %886
  %889 = fmul fast float %887, %878
  %890 = fmul fast float %888, %879
  %891 = call float @dx.op.unary.f32(i32 6, float %889)  ; FAbs(value)
  %892 = call float @dx.op.unary.f32(i32 6, float %890)  ; FAbs(value)
  %893 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %894 = extractvalue %dx.types.CBufRet.f32 %893, 0
  %895 = call float @dx.op.binary.f32(i32 35, float %891, float %892)  ; FMax(a,b)
  %896 = fsub fast float %894, %895
  %897 = call float @dx.op.unary.f32(i32 7, float %896)  ; Saturate(value)
  %898 = fcmp fast ogt float %897, 0.000000e+00
  br i1 %898, label %899, label %940, !dx.controlflow.hints !75

; <label>:899                                     ; preds = %840
  %900 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %21, float %873, float %874, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %901 = extractvalue %dx.types.ResRet.f32 %900, 1
  %902 = fcmp fast ogt float %901, 0.000000e+00
  br i1 %902, label %903, label %936, !dx.controlflow.hints !76

; <label>:903                                     ; preds = %899
  %904 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %21, float %873, float %874, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %905 = extractvalue %dx.types.ResRet.f32 %904, 0
  %906 = extractvalue %dx.types.ResRet.f32 %904, 1
  %907 = extractvalue %dx.types.ResRet.f32 %904, 2
  %908 = extractvalue %dx.types.ResRet.f32 %904, 3
  %909 = fsub fast float 1.000000e+00, %855
  %910 = fsub fast float %909, %866
  %911 = fmul fast float %910, 0x400921FB60000000
  %912 = fadd fast float %911, 0x3FF921FB60000000
  %913 = call float @dx.op.unary.f32(i32 13, float %912)  ; Sin(value)
  %914 = fadd fast float %913, -1.000000e+00
  %915 = fmul fast float %914, 0x3FD45F3060000000
  %916 = fmul fast float %910, 0x401921FB60000000
  %917 = fadd fast float %916, 0x400921FB60000000
  %918 = call float @dx.op.unary.f32(i32 13, float %917)  ; Sin(value)
  %919 = fadd fast float %918, 0x3E7777A5C0000000
  %920 = fmul fast float %919, 0x3FC45F3060000000
  %921 = fmul fast float %910, 0x4022D97C80000000
  %922 = fadd fast float %921, 0x4012D97C80000000
  %923 = call float @dx.op.unary.f32(i32 13, float %922)  ; Sin(value)
  %924 = fadd fast float %923, 1.000000e+00
  %925 = fmul fast float %924, 0x3FBB2995E0000000
  %926 = fmul fast float %910, 0x402921FB60000000
  %927 = fadd fast float %926, 0x401921FB60000000
  %928 = call float @dx.op.unary.f32(i32 13, float %927)  ; Sin(value)
  %929 = fadd fast float %928, 0xBE8777A5C0000000
  %930 = fmul fast float %929, 0x3FB45F3060000000
  %931 = call float @dx.op.dot4.f32(i32 56, float %905, float %906, float %907, float %908, float %915, float %920, float %925, float %930)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %932 = fmul fast float %931, 0xBFF7154760000000
  %933 = call float @dx.op.unary.f32(i32 21, float %932)  ; Exp(value)
  %934 = call float @dx.op.unary.f32(i32 7, float %933)  ; Saturate(value)
  %935 = fadd float %934, -1.000000e+00
  br label %936

; <label>:936                                     ; preds = %903, %899
  %937 = phi float [ %935, %903 ], [ 0.000000e+00, %899 ]
  %938 = fmul fast float %937, %897
  %939 = fadd fast float %938, 1.000000e+00
  br label %940

; <label>:940                                     ; preds = %936, %840
  %941 = phi float [ %939, %936 ], [ 1.000000e+00, %840 ]
  %942 = fmul fast float %941, %836
  %943 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %944 = extractvalue %dx.types.CBufRet.f32 %943, 0
  %945 = extractvalue %dx.types.CBufRet.f32 %943, 1
  %946 = extractvalue %dx.types.CBufRet.f32 %943, 2
  %947 = fadd fast float %944, %69
  %948 = fadd fast float %945, %70
  %949 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %950 = extractvalue %dx.types.CBufRet.f32 %949, 1
  %951 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %952 = extractvalue %dx.types.CBufRet.f32 %951, 0
  %953 = extractvalue %dx.types.CBufRet.f32 %951, 1
  %954 = extractvalue %dx.types.CBufRet.f32 %951, 2
  %955 = fsub fast float -0.000000e+00, %947
  %956 = fsub fast float -0.000000e+00, %948
  %957 = fsub fast float %72, %946
  %958 = fadd fast float %957, %950
  %959 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %955, float %956, float %958)  ; Dot3(ax,ay,az,bx,by,bz)
  %960 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %952, float %953, float %954)  ; Dot3(ax,ay,az,bx,by,bz)
  %961 = fdiv fast float 1.000000e+00, %960
  %962 = fmul fast float %961, %959
  %963 = fmul fast float %952, %962
  %964 = fmul fast float %953, %962
  %965 = fadd fast float %963, %947
  %966 = fadd fast float %964, %948
  %967 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %968 = extractvalue %dx.types.CBufRet.f32 %967, 0
  %969 = extractvalue %dx.types.CBufRet.f32 %967, 1
  %970 = fsub fast float %965, %968
  %971 = fsub fast float %966, %969
  %972 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %973 = extractvalue %dx.types.CBufRet.f32 %972, 2
  %974 = extractvalue %dx.types.CBufRet.f32 %972, 3
  %975 = fmul fast float %970, %973
  %976 = fmul fast float %971, %974
  %977 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %25, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %978 = extractvalue %dx.types.CBufRet.i32 %977, 3
  %979 = icmp eq i32 %978, 0
  br i1 %979, label %985, label %980, !dx.controlflow.hints !77

; <label>:980                                     ; preds = %940
  %981 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %20, float %975, float %976, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %982 = extractvalue %dx.types.ResRet.f32 %981, 0
  %983 = extractvalue %dx.types.ResRet.f32 %981, 1
  %984 = extractvalue %dx.types.ResRet.f32 %981, 2
  br label %990

; <label>:985                                     ; preds = %940
  %986 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %21, float %975, float %976, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %987 = extractvalue %dx.types.ResRet.f32 %986, 0
  %988 = extractvalue %dx.types.ResRet.f32 %986, 1
  %989 = extractvalue %dx.types.ResRet.f32 %986, 2
  br label %990

; <label>:990                                     ; preds = %985, %980
  %991 = phi float [ %982, %980 ], [ %987, %985 ]
  %992 = phi float [ %983, %980 ], [ %988, %985 ]
  %993 = phi float [ %984, %980 ], [ %989, %985 ]
  %994 = extractvalue %dx.types.CBufRet.f32 %949, 2
  %995 = fmul fast float %994, %991
  %996 = extractvalue %dx.types.CBufRet.f32 %949, 0
  %997 = fsub fast float %962, %996
  %998 = fsub fast float %997, %995
  %999 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %998)  ; FMax(a,b)
  %1000 = fmul fast float %999, %992
  %1001 = call float @dx.op.binary.f32(i32 36, float %993, float %1000)  ; FMin(a,b)
  %1002 = fmul fast float %1001, 0xBFF7154760000000
  %1003 = call float @dx.op.unary.f32(i32 21, float %1002)  ; Exp(value)
  %1004 = fmul fast float %942, %1003
  br label %1005

; <label>:1005                                    ; preds = %990, %835
  %1006 = phi float [ %1004, %990 ], [ %836, %835 ]
  %1007 = call float @dx.op.binary.f32(i32 36, float %1006, float %1006)  ; FMin(a,b)
  %1008 = call float @dx.op.binary.f32(i32 36, float %1006, float %1007)  ; FMin(a,b)
  %1009 = fcmp fast ogt float %1008, 0.000000e+00
  br i1 %1009, label %1010, label %1101, !dx.controlflow.hints !78

; <label>:1010                                    ; preds = %1005
  %1011 = icmp eq i32 %164, 0
  br i1 %1011, label %1086, label %1012, !dx.controlflow.hints !79

; <label>:1012                                    ; preds = %1010
  %1013 = fsub fast float %71, %163
  %1014 = fcmp fast ogt float %1013, 0.000000e+00
  %1015 = fmul fast float %169, 5.120000e+02
  %1016 = fmul fast float %170, 5.120000e+02
  %1017 = fmul fast float %171, 5.120000e+02
  %1018 = fadd fast float %1017, %71
  %1019 = fsub fast float %163, %1018
  %1020 = fmul fast float %1019, 2.000000e+00
  %1021 = fadd fast float %1020, %1018
  %1022 = select i1 %1014, float %1021, float %1018
  %1023 = fsub fast float %1022, %71
  %1024 = call float @dx.op.dot3.f32(i32 55, float %1015, float %1016, float %1023, float %1015, float %1016, float %1023)  ; Dot3(ax,ay,az,bx,by,bz)
  %1025 = call float @dx.op.unary.f32(i32 25, float %1024)  ; Rsqrt(value)
  %1026 = fmul fast float %1025, %1015
  %1027 = fmul fast float %1025, %1016
  %1028 = fmul fast float %1025, %1023
  %1029 = fsub fast float %163, %71
  %1030 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %1029)  ; Dot3(ax,ay,az,bx,by,bz)
  %1031 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %1026, float %1027, float %1028)  ; Dot3(ax,ay,az,bx,by,bz)
  %1032 = fdiv fast float 1.000000e+00, %1031
  %1033 = fmul fast float %1032, %1030
  %1034 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %1013, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %1035 = fcmp fast ogt float %1034, 0.000000e+00
  %1036 = fcmp fast olt float %1034, 0.000000e+00
  %1037 = zext i1 %1035 to i32
  %1038 = zext i1 %1036 to i32
  %1039 = sub nsw i32 %1037, %1038
  %1040 = sitofp i32 %1039 to float
  %1041 = fsub fast float %1022, %163
  %1042 = call float @dx.op.dot3.f32(i32 55, float %1015, float %1016, float %1041, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %1043 = fcmp fast ogt float %1042, 0.000000e+00
  %1044 = fcmp fast olt float %1042, 0.000000e+00
  %1045 = zext i1 %1043 to i32
  %1046 = zext i1 %1044 to i32
  %1047 = sub nsw i32 %1045, %1046
  %1048 = sitofp i32 %1047 to float
  %1049 = fcmp fast une float %1040, %1048
  br i1 %1049, label %1050, label %1060, !dx.controlflow.hints !80

; <label>:1050                                    ; preds = %1012
  %1051 = fmul fast float %1033, %1028
  %1052 = fmul fast float %1033, %1027
  %1053 = fmul fast float %1033, %1026
  %1054 = fmul fast float %1053, %1053
  %1055 = fmul fast float %1052, %1052
  %1056 = fadd fast float %1054, %1055
  %1057 = fmul fast float %1051, %1051
  %1058 = fadd fast float %1056, %1057
  %1059 = call float @dx.op.unary.f32(i32 24, float %1058)  ; Sqrt(value)
  br label %1070

; <label>:1060                                    ; preds = %1012
  %1061 = icmp slt i32 %1039, 0
  br i1 %1061, label %1062, label %1070, !dx.controlflow.hints !81

; <label>:1062                                    ; preds = %1060
  %1063 = fsub fast float %71, %1022
  %1064 = fmul fast float %1015, %1015
  %1065 = fmul fast float %1016, %1016
  %1066 = fadd fast float %1064, %1065
  %1067 = fmul fast float %1063, %1063
  %1068 = fadd fast float %1066, %1067
  %1069 = call float @dx.op.unary.f32(i32 24, float %1068)  ; Sqrt(value)
  br label %1070

; <label>:1070                                    ; preds = %1062, %1060, %1050
  %1071 = phi float [ %1059, %1050 ], [ %1069, %1062 ], [ 0.000000e+00, %1060 ]
  %1072 = fsub fast float -0.000000e+00, %1071
  %1073 = select i1 %1014, float -0.000000e+00, float %1072
  %1074 = fmul fast float %160, %1073
  %1075 = fmul fast float %161, %1073
  %1076 = fmul fast float %162, %1073
  %1077 = call float @dx.op.unary.f32(i32 21, float %1074)  ; Exp(value)
  %1078 = call float @dx.op.unary.f32(i32 21, float %1075)  ; Exp(value)
  %1079 = call float @dx.op.unary.f32(i32 21, float %1076)  ; Exp(value)
  %1080 = call float @dx.op.unary.f32(i32 7, float %1077)  ; Saturate(value)
  %1081 = call float @dx.op.unary.f32(i32 7, float %1078)  ; Saturate(value)
  %1082 = call float @dx.op.unary.f32(i32 7, float %1079)  ; Saturate(value)
  %1083 = fmul fast float %1080, %180
  %1084 = fmul fast float %1081, %181
  %1085 = fmul fast float %1082, %182
  br label %1086

; <label>:1086                                    ; preds = %1070, %1010
  %1087 = phi float [ %1083, %1070 ], [ %180, %1010 ]
  %1088 = phi float [ %1084, %1070 ], [ %181, %1010 ]
  %1089 = phi float [ %1085, %1070 ], [ %182, %1010 ]
  %1090 = fmul fast float %1087, %1006
  %1091 = fmul fast float %1088, %1006
  %1092 = fmul fast float %1089, %1006
  %1093 = call float @dx.op.dot3.f32(i32 55, float %60, float %61, float %62, float %60, float %61, float %62)  ; Dot3(ax,ay,az,bx,by,bz)
  %1094 = fcmp fast ogt float %1093, 0x3FE9EB8520000000
  br i1 %1094, label %1095, label %1101, !dx.controlflow.hints !82

; <label>:1095                                    ; preds = %1086
  %1096 = call float @dx.op.dot3.f32(i32 55, float %169, float %170, float %171, float %60, float %61, float %62)  ; Dot3(ax,ay,az,bx,by,bz)
  %1097 = call float @dx.op.unary.f32(i32 7, float %1096)  ; Saturate(value)
  %1098 = fmul fast float %1097, %1090
  %1099 = fmul fast float %1097, %1091
  %1100 = fmul fast float %1097, %1092
  br label %1101

; <label>:1101                                    ; preds = %1095, %1086, %1005, %159
  %1102 = phi float [ 0.000000e+00, %159 ], [ 0.000000e+00, %1005 ], [ %1098, %1095 ], [ %1090, %1086 ]
  %1103 = phi float [ 0.000000e+00, %159 ], [ 0.000000e+00, %1005 ], [ %1099, %1095 ], [ %1091, %1086 ]
  %1104 = phi float [ 0.000000e+00, %159 ], [ 0.000000e+00, %1005 ], [ %1100, %1095 ], [ %1092, %1086 ]
  %1105 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %25, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %1106 = extractvalue %dx.types.CBufRet.i32 %1105, 0
  %1107 = icmp eq i32 %1106, 0
  br i1 %1107, label %1543, label %1108, !dx.controlflow.hints !83

; <label>:1108                                    ; preds = %1101
  %1109 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1110 = extractvalue %dx.types.CBufRet.f32 %1109, 0
  %1111 = extractvalue %dx.types.CBufRet.f32 %1109, 1
  %1112 = extractvalue %dx.types.CBufRet.f32 %1109, 2
  %1113 = fadd fast float %1110, %69
  %1114 = fadd fast float %1111, %70
  %1115 = fadd fast float %1112, %71
  %1116 = getelementptr inbounds [3 x float], [3 x float]* %31, i32 0, i32 0
  store float %1113, float* %1116, align 4
  %1117 = getelementptr inbounds [3 x float], [3 x float]* %31, i32 0, i32 1
  store float %1114, float* %1117, align 4
  %1118 = getelementptr inbounds [3 x float], [3 x float]* %31, i32 0, i32 2
  store float %1115, float* %1118, align 4
  br label %1119

; <label>:1119                                    ; preds = %1119, %1108
  %1120 = phi i32 [ 0, %1108 ], [ %1134, %1119 ]
  %1121 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %1120, i32 0)  ; BufferLoad(srv,index,wot)
  %1122 = extractvalue %dx.types.ResRet.i32 %1121, 0
  %1123 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %1120, i32 4)  ; BufferLoad(srv,index,wot)
  %1124 = extractvalue %dx.types.ResRet.i32 %1123, 0
  %1125 = lshr i32 %1122, 30
  %1126 = and i32 %1122, 1048575
  %1127 = uitofp i32 %1126 to float
  %1128 = fadd fast float %1127, -5.242880e+05
  %1129 = and i32 %1124, 65535
  %1130 = lshr i32 %1124, 16
  %1131 = getelementptr [3 x float], [3 x float]* %31, i32 0, i32 %1125
  %1132 = load float, float* %1131, align 4, !tbaa !69, !noalias !84
  %1133 = fcmp fast olt float %1132, %1128
  %1134 = select i1 %1133, i32 %1129, i32 %1130
  %1135 = and i32 %1134, 32768
  %1136 = icmp eq i32 %1135, 0
  br i1 %1136, label %1119, label %1137

; <label>:1137                                    ; preds = %1119
  %1138 = and i32 %1134, 32767
  %1139 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %1138, i32 undef)  ; BufferLoad(srv,index,wot)
  %1140 = extractvalue %dx.types.ResRet.i32 %1139, 0
  %1141 = lshr i32 %1140, 22
  br label %1142

; <label>:1142                                    ; preds = %1142, %1137
  %1143 = phi i32 [ 0, %1137 ], [ %1159, %1142 ]
  %1144 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %1143, i32 0)  ; BufferLoad(srv,index,wot)
  %1145 = extractvalue %dx.types.ResRet.i32 %1144, 0
  %1146 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %1143, i32 4)  ; BufferLoad(srv,index,wot)
  %1147 = extractvalue %dx.types.ResRet.i32 %1146, 0
  %1148 = lshr i32 %1145, 30
  %1149 = and i32 %1145, 1048575
  %1150 = uitofp i32 %1149 to float
  %1151 = fadd fast float %1150, -5.242880e+05
  %1152 = and i32 %1147, 65535
  %1153 = lshr i32 %1147, 16
  %1154 = icmp ne i32 %1148, 3
  %1155 = getelementptr [3 x float], [3 x float]* %31, i32 0, i32 %1148
  %1156 = load float, float* %1155, align 4, !tbaa !69, !noalias !84
  %1157 = fcmp fast olt float %1156, %1151
  %1158 = select i1 %1157, i32 %1152, i32 %1153
  %1159 = select i1 %1154, i32 %1158, i32 %1147
  %1160 = icmp eq i32 %1148, 3
  br i1 %1160, label %1161, label %1142

; <label>:1161                                    ; preds = %1142
  %1162 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %1159)  ; Countbits(value)
  %1163 = add i32 %1162, %1141
  %1164 = icmp eq i32 %1163, 0
  br i1 %1164, label %1543, label %1165

; <label>:1165                                    ; preds = %1161
  %1166 = and i32 %1140, 4194303
  br label %1167

; <label>:1167                                    ; preds = %1536, %1165
  %1168 = phi i32 [ %1540, %1536 ], [ 0, %1165 ]
  %1169 = phi float [ %1537, %1536 ], [ %1102, %1165 ]
  %1170 = phi float [ %1538, %1536 ], [ %1103, %1165 ]
  %1171 = phi float [ %1539, %1536 ], [ %1104, %1165 ]
  %1172 = phi i32 [ %1174, %1536 ], [ %1166, %1165 ]
  %1173 = phi i32 [ %1190, %1536 ], [ %1159, %1165 ]
  %1174 = add i32 %1172, 1
  %1175 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %1172, i32 undef)  ; BufferLoad(srv,index,wot)
  %1176 = extractvalue %dx.types.ResRet.i32 %1175, 0
  %1177 = icmp ult i32 %1168, %1141
  br i1 %1177, label %1189, label %1178, !dx.controlflow.hints !85

; <label>:1178                                    ; preds = %1167
  %1179 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1173)  ; FirstbitLo(value)
  %1180 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 22)  ; CBufferLoadLegacy(handle,regIndex)
  %1181 = extractvalue %dx.types.CBufRet.f32 %1180, 0
  %1182 = uitofp i32 %1179 to float
  %1183 = fadd fast float %1181, %1182
  %1184 = fptosi float %1183 to i32
  %1185 = and i32 %1179, 31
  %1186 = shl i32 1, %1185
  %1187 = xor i32 %1186, -1
  %1188 = and i32 %1173, %1187
  br label %1189

; <label>:1189                                    ; preds = %1178, %1167
  %1190 = phi i32 [ %1188, %1178 ], [ %1173, %1167 ]
  %1191 = phi i32 [ %1184, %1178 ], [ %1176, %1167 ]
  %1192 = mul i32 %1191, 112
  %1193 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %1192, i32 undef)  ; BufferLoad(srv,index,wot)
  %1194 = extractvalue %dx.types.ResRet.f32 %1193, 0
  %1195 = extractvalue %dx.types.ResRet.f32 %1193, 1
  %1196 = extractvalue %dx.types.ResRet.f32 %1193, 2
  %1197 = or i32 %1192, 12
  %1198 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %1197, i32 undef)  ; BufferLoad(srv,index,wot)
  %1199 = extractvalue %dx.types.ResRet.f32 %1198, 0
  %1200 = add i32 %1192, 16
  %1201 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %1200, i32 undef)  ; BufferLoad(srv,index,wot)
  %1202 = extractvalue %dx.types.ResRet.f32 %1201, 0
  %1203 = extractvalue %dx.types.ResRet.f32 %1201, 1
  %1204 = extractvalue %dx.types.ResRet.f32 %1201, 2
  %1205 = add i32 %1192, 28
  %1206 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %1205, i32 undef)  ; BufferLoad(srv,index,wot)
  %1207 = extractvalue %dx.types.ResRet.i32 %1206, 0
  %1208 = add i32 %1192, 32
  %1209 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %1208, i32 undef)  ; BufferLoad(srv,index,wot)
  %1210 = extractvalue %dx.types.ResRet.f32 %1209, 0
  %1211 = extractvalue %dx.types.ResRet.f32 %1209, 1
  %1212 = extractvalue %dx.types.ResRet.f32 %1209, 2
  %1213 = add i32 %1192, 44
  %1214 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %1213, i32 undef)  ; BufferLoad(srv,index,wot)
  %1215 = extractvalue %dx.types.ResRet.f32 %1214, 0
  %1216 = add i32 %1192, 48
  %1217 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %1216, i32 undef)  ; BufferLoad(srv,index,wot)
  %1218 = extractvalue %dx.types.ResRet.f32 %1217, 0
  %1219 = extractvalue %dx.types.ResRet.f32 %1217, 1
  %1220 = extractvalue %dx.types.ResRet.f32 %1217, 2
  %1221 = extractvalue %dx.types.ResRet.f32 %1217, 3
  %1222 = add i32 %1192, 64
  %1223 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %1222, i32 undef)  ; BufferLoad(srv,index,wot)
  %1224 = extractvalue %dx.types.ResRet.f32 %1223, 0
  %1225 = extractvalue %dx.types.ResRet.f32 %1223, 1
  %1226 = extractvalue %dx.types.ResRet.f32 %1223, 2
  %1227 = extractvalue %dx.types.ResRet.f32 %1223, 3
  %1228 = add i32 %1192, 80
  %1229 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %1228, i32 undef)  ; BufferLoad(srv,index,wot)
  %1230 = extractvalue %dx.types.ResRet.f32 %1229, 1
  %1231 = extractvalue %dx.types.ResRet.f32 %1229, 2
  %1232 = add i32 %1192, 92
  %1233 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %1232, i32 undef)  ; BufferLoad(srv,index,wot)
  %1234 = extractvalue %dx.types.ResRet.i32 %1233, 0
  %1235 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %1236 = extractvalue %dx.types.CBufRet.f32 %1235, 2
  %1237 = lshr i32 %1207, 16
  %1238 = and i32 %1237, 255
  %1239 = uitofp i32 %1238 to float
  %1240 = fmul fast float %1239, 0x3F70101020000000
  %1241 = fmul fast float %1240, %1194
  %1242 = fmul fast float %1240, %1195
  %1243 = fmul fast float %1240, %1196
  %1244 = fmul fast float %1236, %1230
  %1245 = call float @dx.op.dot3.f32(i32 55, float %1241, float %1242, float %1243, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1246 = select i1 %79, float %1244, float %1241
  %1247 = select i1 %79, float %1245, float %1242
  %1248 = select i1 %79, float %1231, float %1243
  %1249 = and i32 %1234, 65535
  %1250 = uitofp i32 %1249 to float
  %1251 = lshr i32 %1234, 16
  %1252 = uitofp i32 %1251 to float
  %1253 = and i32 %1207, 65535
  %1254 = and i32 %1207, 50331648
  %1255 = icmp eq i32 %1254, 33554432
  %1256 = call float @dx.op.dot3.f32(i32 55, float %1210, float %1211, float %1212, float %1210, float %1211, float %1212)  ; Dot3(ax,ay,az,bx,by,bz)
  %1257 = fsub fast float %69, %1218
  %1258 = fsub fast float %70, %1219
  %1259 = fsub fast float %71, %1220
  %1260 = call float @dx.op.dot3.f32(i32 55, float %1257, float %1258, float %1259, float %1210, float %1211, float %1212)  ; Dot3(ax,ay,az,bx,by,bz)
  %1261 = fdiv fast float %1260, %1256
  %1262 = call float @dx.op.binary.f32(i32 35, float %1261, float -1.000000e+00)  ; FMax(a,b)
  %1263 = call float @dx.op.binary.f32(i32 36, float %1262, float 1.000000e+00)  ; FMin(a,b)
  %1264 = fmul fast float %1263, %1210
  %1265 = fmul fast float %1263, %1211
  %1266 = fmul fast float %1263, %1212
  %1267 = fadd fast float %1264, %1218
  %1268 = fadd fast float %1265, %1219
  %1269 = fadd fast float %1266, %1220
  %1270 = fsub fast float %1267, %69
  %1271 = fsub fast float %1268, %70
  %1272 = fsub fast float %1269, %71
  %1273 = call float @dx.op.dot3.f32(i32 55, float %1270, float %1271, float %1272, float %1270, float %1271, float %1272)  ; Dot3(ax,ay,az,bx,by,bz)
  %1274 = call float @dx.op.unary.f32(i32 24, float %1273)  ; Sqrt(value)
  %1275 = fdiv fast float 1.000000e+00, %1274
  %1276 = fmul fast float %1270, %1275
  %1277 = fmul fast float %1271, %1275
  %1278 = fmul fast float %1272, %1275
  %1279 = fadd fast float %1274, %1199
  %1280 = fdiv fast float 1.000000e+00, %1279
  %1281 = fmul float %1215, %1280
  %1282 = fmul float %1281, %1281
  %1283 = call float @dx.op.unary.f32(i32 7, float %1282)  ; Saturate(value)
  br i1 %1255, label %1284, label %1308, !dx.controlflow.hints !86

; <label>:1284                                    ; preds = %1189
  %1285 = fmul fast float %1226, %1202
  %1286 = fmul fast float %1226, %1203
  %1287 = fmul fast float %1226, %1204
  %1288 = fsub fast float %1285, %69
  %1289 = fadd fast float %1288, %1267
  %1290 = fsub fast float %1286, %70
  %1291 = fadd fast float %1290, %1268
  %1292 = fsub fast float %1287, %71
  %1293 = fadd fast float %1292, %1269
  %1294 = call float @dx.op.dot3.f32(i32 55, float %1289, float %1291, float %1293, float %1289, float %1291, float %1293)  ; Dot3(ax,ay,az,bx,by,bz)
  %1295 = call float @dx.op.unary.f32(i32 25, float %1294)  ; Rsqrt(value)
  %1296 = fmul fast float %1295, %1289
  %1297 = fmul fast float %1295, %1291
  %1298 = fmul fast float %1295, %1293
  %1299 = fsub fast float %69, %1267
  %1300 = fsub fast float %70, %1268
  %1301 = fsub fast float %71, %1269
  %1302 = fsub fast float -0.000000e+00, %1299
  %1303 = fsub fast float -0.000000e+00, %1300
  %1304 = fsub fast float -0.000000e+00, %1301
  %1305 = call float @dx.op.dot3.f32(i32 55, float %1302, float %1303, float %1304, float %1202, float %1203, float %1204)  ; Dot3(ax,ay,az,bx,by,bz)
  %1306 = fcmp fast ogt float %1305, 0.000000e+00
  %1307 = uitofp i1 %1306 to float
  br label %1308

; <label>:1308                                    ; preds = %1284, %1189
  %1309 = phi float [ %1307, %1284 ], [ 1.000000e+00, %1189 ]
  %1310 = phi float [ %1296, %1284 ], [ %1276, %1189 ]
  %1311 = phi float [ %1297, %1284 ], [ %1277, %1189 ]
  %1312 = phi float [ %1298, %1284 ], [ %1278, %1189 ]
  %1313 = call float @dx.op.dot3.f32(i32 55, float %1202, float %1203, float %1204, float %1310, float %1311, float %1312)  ; Dot3(ax,ay,az,bx,by,bz)
  %1314 = fmul fast float %1313, %1313
  %1315 = call float @dx.op.unary.f32(i32 7, float %1314)  ; Saturate(value)
  %1316 = fsub fast float 1.000000e+00, %1315
  %1317 = fmul fast float %1316, 5.000000e-01
  %1318 = fcmp fast ogt float %1313, 0.000000e+00
  %1319 = fsub fast float 1.000000e+00, %1317
  %1320 = select i1 %1318, float %1317, float %1319
  %1321 = fmul fast float %1320, %1252
  %1322 = fadd fast float %1321, %1250
  %1323 = fmul fast float %1322, 0x3EF0001000000000
  %1324 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %21, float %1323, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1325 = extractvalue %dx.types.ResRet.f32 %1324, 0
  %1326 = fmul fast float %1313, %1224
  %1327 = fadd fast float %1326, %1225
  %1328 = call float @dx.op.unary.f32(i32 7, float %1327)  ; Saturate(value)
  %1329 = select i1 %1255, float 1.000000e+00, float %1328
  %1330 = select i1 %1255, float %1328, float 1.000000e+00
  %1331 = fmul fast float %1274, %1221
  %1332 = fsub fast float 1.000000e+00, %1331
  %1333 = fmul fast float %1332, %1227
  %1334 = call float @dx.op.unary.f32(i32 7, float %1333)  ; Saturate(value)
  %1335 = fmul fast float %1334, %1330
  %1336 = fmul fast float %1335, 2.000000e+00
  %1337 = fsub fast float 3.000000e+00, %1336
  %1338 = fmul fast float %1325, %1309
  %1339 = fmul fast float %1335, %1335
  %1340 = fmul fast float %1339, %1338
  %1341 = fmul fast float %1340, %1337
  %1342 = call float @dx.op.binary.f32(i32 36, float %1341, float %1341)  ; FMin(a,b)
  %1343 = call float @dx.op.binary.f32(i32 36, float %1341, float %1342)  ; FMin(a,b)
  %1344 = fcmp fast ogt float %1343, 0.000000e+00
  br i1 %1344, label %1345, label %1536, !dx.controlflow.hints !87

; <label>:1345                                    ; preds = %1308
  %1346 = fmul fast float %1276, %64
  %1347 = fmul fast float %1277, %64
  %1348 = fmul fast float %1278, %64
  %1349 = fadd fast float %1346, %69
  %1350 = fadd fast float %1347, %70
  %1351 = fadd fast float %1348, %71
  %1352 = icmp eq i32 %1253, 255
  br i1 %1352, label %1428, label %1353, !dx.controlflow.hints !88

; <label>:1353                                    ; preds = %1345
  %1354 = mul nuw nsw i32 %1253, 176
  %1355 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %1354, i32 undef)  ; BufferLoad(srv,index,wot)
  %1356 = extractvalue %dx.types.ResRet.f32 %1355, 0
  %1357 = extractvalue %dx.types.ResRet.f32 %1355, 1
  %1358 = extractvalue %dx.types.ResRet.f32 %1355, 2
  %1359 = extractvalue %dx.types.ResRet.f32 %1355, 3
  %1360 = add nuw nsw i32 %1354, 16
  %1361 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %1360, i32 undef)  ; BufferLoad(srv,index,wot)
  %1362 = extractvalue %dx.types.ResRet.f32 %1361, 0
  %1363 = extractvalue %dx.types.ResRet.f32 %1361, 1
  %1364 = add nuw nsw i32 %1354, 32
  %1365 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %1364, i32 undef)  ; BufferLoad(srv,index,wot)
  %1366 = extractvalue %dx.types.ResRet.f32 %1365, 0
  %1367 = add nuw nsw i32 %1354, 48
  %1368 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %1367, i32 undef)  ; BufferLoad(srv,index,wot)
  %1369 = extractvalue %dx.types.ResRet.f32 %1368, 0
  %1370 = extractvalue %dx.types.ResRet.f32 %1368, 1
  %1371 = extractvalue %dx.types.ResRet.f32 %1368, 2
  %1372 = extractvalue %dx.types.ResRet.f32 %1368, 3
  %1373 = add nuw nsw i32 %1354, 64
  %1374 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %1373, i32 undef)  ; BufferLoad(srv,index,wot)
  %1375 = extractvalue %dx.types.ResRet.f32 %1374, 0
  %1376 = extractvalue %dx.types.ResRet.f32 %1374, 1
  %1377 = extractvalue %dx.types.ResRet.f32 %1374, 2
  %1378 = extractvalue %dx.types.ResRet.f32 %1374, 3
  %1379 = add nuw nsw i32 %1354, 80
  %1380 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %1379, i32 undef)  ; BufferLoad(srv,index,wot)
  %1381 = extractvalue %dx.types.ResRet.f32 %1380, 0
  %1382 = extractvalue %dx.types.ResRet.f32 %1380, 1
  %1383 = extractvalue %dx.types.ResRet.f32 %1380, 2
  %1384 = extractvalue %dx.types.ResRet.f32 %1380, 3
  %1385 = add nuw nsw i32 %1354, 96
  %1386 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %1385, i32 undef)  ; BufferLoad(srv,index,wot)
  %1387 = extractvalue %dx.types.ResRet.f32 %1386, 0
  %1388 = extractvalue %dx.types.ResRet.f32 %1386, 1
  %1389 = extractvalue %dx.types.ResRet.f32 %1386, 2
  %1390 = extractvalue %dx.types.ResRet.f32 %1386, 3
  %1391 = bitcast float %1363 to i32
  %1392 = fmul fast float %1369, %1349
  %1393 = call float @dx.op.tertiary.f32(i32 46, float %1350, float %1375, float %1392)  ; FMad(a,b,c)
  %1394 = call float @dx.op.tertiary.f32(i32 46, float %1351, float %1381, float %1393)  ; FMad(a,b,c)
  %1395 = fadd fast float %1394, %1387
  %1396 = fmul fast float %1370, %1349
  %1397 = call float @dx.op.tertiary.f32(i32 46, float %1350, float %1376, float %1396)  ; FMad(a,b,c)
  %1398 = call float @dx.op.tertiary.f32(i32 46, float %1351, float %1382, float %1397)  ; FMad(a,b,c)
  %1399 = fadd fast float %1398, %1388
  %1400 = fmul fast float %1371, %1349
  %1401 = call float @dx.op.tertiary.f32(i32 46, float %1350, float %1377, float %1400)  ; FMad(a,b,c)
  %1402 = call float @dx.op.tertiary.f32(i32 46, float %1351, float %1383, float %1401)  ; FMad(a,b,c)
  %1403 = fadd fast float %1402, %1389
  %1404 = fmul fast float %1372, %1349
  %1405 = call float @dx.op.tertiary.f32(i32 46, float %1350, float %1378, float %1404)  ; FMad(a,b,c)
  %1406 = call float @dx.op.tertiary.f32(i32 46, float %1351, float %1384, float %1405)  ; FMad(a,b,c)
  %1407 = fadd fast float %1406, %1390
  %1408 = fdiv fast float %1395, %1407
  %1409 = fdiv fast float %1399, %1407
  %1410 = fdiv fast float %1403, %1407
  %1411 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %1410)  ; FMax(a,b)
  %1412 = fmul fast float %1408, %1362
  %1413 = fmul fast float %1409, %1362
  %1414 = call float @dx.op.binary.f32(i32 35, float %1412, float %1358)  ; FMax(a,b)
  %1415 = call float @dx.op.binary.f32(i32 35, float %1413, float %1358)  ; FMax(a,b)
  %1416 = call float @dx.op.binary.f32(i32 36, float %1414, float %1359)  ; FMin(a,b)
  %1417 = call float @dx.op.binary.f32(i32 36, float %1415, float %1359)  ; FMin(a,b)
  %1418 = fadd fast float %1416, %1356
  %1419 = fadd fast float %1417, %1357
  %1420 = uitofp i32 %1391 to float
  %1421 = fadd fast float %1411, %1366
  %1422 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %12, %dx.types.Handle %23, float %1418, float %1419, float %1420, float undef, i32 0, i32 0, i32 undef, float %1421)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %1423 = extractvalue %dx.types.ResRet.f32 %1422, 0
  %1424 = fadd fast float %1423, -1.000000e+00
  %1425 = fmul fast float %1424, %1329
  %1426 = fadd fast float %1425, 1.000000e+00
  %1427 = fmul fast float %1426, %1341
  br label %1428

; <label>:1428                                    ; preds = %1353, %1345
  %1429 = phi float [ %1427, %1353 ], [ %1341, %1345 ]
  %1430 = call float @dx.op.binary.f32(i32 36, float %1429, float %1429)  ; FMin(a,b)
  %1431 = call float @dx.op.binary.f32(i32 36, float %1429, float %1430)  ; FMin(a,b)
  %1432 = fcmp fast ogt float %1431, 0.000000e+00
  br i1 %1432, label %1433, label %1536, !dx.controlflow.hints !89

; <label>:1433                                    ; preds = %1428
  %1434 = extractvalue %dx.types.CBufRet.f32 %1235, 1
  %1435 = fmul fast float %1429, %1283
  %1436 = call float @dx.op.binary.f32(i32 36, float %1435, float %1434)  ; FMin(a,b)
  %1437 = icmp eq i32 %164, 0
  br i1 %1437, label %1514, label %1438, !dx.controlflow.hints !79

; <label>:1438                                    ; preds = %1433
  %1439 = fsub fast float %1220, %163
  %1440 = fcmp fast ogt float %1439, 0.000000e+00
  %1441 = fsub fast float %71, %163
  %1442 = fcmp fast ogt float %1441, 0.000000e+00
  %1443 = xor i1 %1442, %1440
  %1444 = fsub fast float %163, %1220
  %1445 = fmul fast float %1444, 2.000000e+00
  %1446 = fadd fast float %1445, %1220
  %1447 = select i1 %1443, float %1220, float %1446
  %1448 = fsub fast float %1218, %69
  %1449 = fsub fast float %1219, %70
  %1450 = fsub fast float %1447, %71
  %1451 = call float @dx.op.dot3.f32(i32 55, float %1448, float %1449, float %1450, float %1448, float %1449, float %1450)  ; Dot3(ax,ay,az,bx,by,bz)
  %1452 = call float @dx.op.unary.f32(i32 25, float %1451)  ; Rsqrt(value)
  %1453 = fmul fast float %1452, %1448
  %1454 = fmul fast float %1452, %1449
  %1455 = fmul fast float %1452, %1450
  %1456 = fsub fast float %163, %71
  %1457 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %1456)  ; Dot3(ax,ay,az,bx,by,bz)
  %1458 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %1453, float %1454, float %1455)  ; Dot3(ax,ay,az,bx,by,bz)
  %1459 = fdiv fast float 1.000000e+00, %1458
  %1460 = fmul fast float %1459, %1457
  %1461 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %1441, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %1462 = fcmp fast ogt float %1461, 0.000000e+00
  %1463 = fcmp fast olt float %1461, 0.000000e+00
  %1464 = zext i1 %1462 to i32
  %1465 = zext i1 %1463 to i32
  %1466 = sub nsw i32 %1464, %1465
  %1467 = sitofp i32 %1466 to float
  %1468 = fsub fast float %1447, %163
  %1469 = call float @dx.op.dot3.f32(i32 55, float %1448, float %1449, float %1468, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %1470 = fcmp fast ogt float %1469, 0.000000e+00
  %1471 = fcmp fast olt float %1469, 0.000000e+00
  %1472 = zext i1 %1470 to i32
  %1473 = zext i1 %1471 to i32
  %1474 = sub nsw i32 %1472, %1473
  %1475 = sitofp i32 %1474 to float
  %1476 = fcmp fast une float %1467, %1475
  br i1 %1476, label %1477, label %1487, !dx.controlflow.hints !80

; <label>:1477                                    ; preds = %1438
  %1478 = fmul fast float %1460, %1455
  %1479 = fmul fast float %1460, %1454
  %1480 = fmul fast float %1460, %1453
  %1481 = fmul fast float %1480, %1480
  %1482 = fmul fast float %1479, %1479
  %1483 = fadd fast float %1481, %1482
  %1484 = fmul fast float %1478, %1478
  %1485 = fadd fast float %1483, %1484
  %1486 = call float @dx.op.unary.f32(i32 24, float %1485)  ; Sqrt(value)
  br label %1497

; <label>:1487                                    ; preds = %1438
  %1488 = icmp slt i32 %1466, 0
  br i1 %1488, label %1489, label %1497, !dx.controlflow.hints !81

; <label>:1489                                    ; preds = %1487
  %1490 = fsub fast float %71, %1447
  %1491 = fmul fast float %1257, %1257
  %1492 = fmul fast float %1258, %1258
  %1493 = fadd fast float %1491, %1492
  %1494 = fmul fast float %1490, %1490
  %1495 = fadd fast float %1493, %1494
  %1496 = call float @dx.op.unary.f32(i32 24, float %1495)  ; Sqrt(value)
  br label %1497

; <label>:1497                                    ; preds = %1489, %1487, %1477
  %1498 = phi float [ %1486, %1477 ], [ %1496, %1489 ], [ 0.000000e+00, %1487 ]
  %1499 = and i1 %1442, %1440
  %1500 = fsub fast float -0.000000e+00, %1498
  %1501 = select i1 %1499, float -0.000000e+00, float %1500
  %1502 = fmul fast float %160, %1501
  %1503 = fmul fast float %161, %1501
  %1504 = fmul fast float %162, %1501
  %1505 = call float @dx.op.unary.f32(i32 21, float %1502)  ; Exp(value)
  %1506 = call float @dx.op.unary.f32(i32 21, float %1503)  ; Exp(value)
  %1507 = call float @dx.op.unary.f32(i32 21, float %1504)  ; Exp(value)
  %1508 = call float @dx.op.unary.f32(i32 7, float %1505)  ; Saturate(value)
  %1509 = call float @dx.op.unary.f32(i32 7, float %1506)  ; Saturate(value)
  %1510 = call float @dx.op.unary.f32(i32 7, float %1507)  ; Saturate(value)
  %1511 = fmul fast float %1508, %1246
  %1512 = fmul fast float %1509, %1247
  %1513 = fmul fast float %1510, %1248
  br label %1514

; <label>:1514                                    ; preds = %1497, %1433
  %1515 = phi float [ %1511, %1497 ], [ %1246, %1433 ]
  %1516 = phi float [ %1512, %1497 ], [ %1247, %1433 ]
  %1517 = phi float [ %1513, %1497 ], [ %1248, %1433 ]
  %1518 = fmul fast float %1515, %1436
  %1519 = fmul fast float %1516, %1436
  %1520 = fmul fast float %1517, %1436
  %1521 = call float @dx.op.dot3.f32(i32 55, float %60, float %61, float %62, float %60, float %61, float %62)  ; Dot3(ax,ay,az,bx,by,bz)
  %1522 = fcmp fast ogt float %1521, 0x3FE9EB8520000000
  br i1 %1522, label %1523, label %1529, !dx.controlflow.hints !82

; <label>:1523                                    ; preds = %1514
  %1524 = call float @dx.op.dot3.f32(i32 55, float %1276, float %1277, float %1278, float %60, float %61, float %62)  ; Dot3(ax,ay,az,bx,by,bz)
  %1525 = call float @dx.op.unary.f32(i32 7, float %1524)  ; Saturate(value)
  %1526 = fmul fast float %1525, %1518
  %1527 = fmul fast float %1525, %1519
  %1528 = fmul fast float %1525, %1520
  br label %1529

; <label>:1529                                    ; preds = %1523, %1514
  %1530 = phi float [ %1526, %1523 ], [ %1518, %1514 ]
  %1531 = phi float [ %1527, %1523 ], [ %1519, %1514 ]
  %1532 = phi float [ %1528, %1523 ], [ %1520, %1514 ]
  %1533 = fadd fast float %1530, %1169
  %1534 = fadd fast float %1531, %1170
  %1535 = fadd fast float %1532, %1171
  br label %1536

; <label>:1536                                    ; preds = %1529, %1428, %1308
  %1537 = phi float [ %1533, %1529 ], [ %1169, %1428 ], [ %1169, %1308 ]
  %1538 = phi float [ %1534, %1529 ], [ %1170, %1428 ], [ %1170, %1308 ]
  %1539 = phi float [ %1535, %1529 ], [ %1171, %1428 ], [ %1171, %1308 ]
  %1540 = add nuw i32 %1168, 1
  %1541 = icmp eq i32 %1540, %1163
  br i1 %1541, label %1542, label %1167, !llvm.loop !90

; <label>:1542                                    ; preds = %1536
  br label %1543

; <label>:1543                                    ; preds = %1542, %1161, %1101
  %1544 = phi float [ %1102, %1101 ], [ %1102, %1161 ], [ %1537, %1542 ]
  %1545 = phi float [ %1103, %1101 ], [ %1103, %1161 ], [ %1538, %1542 ]
  %1546 = phi float [ %1104, %1101 ], [ %1104, %1161 ], [ %1539, %1542 ]
  %1547 = call float @dx.op.dot3.f32(i32 55, float %1544, float %1545, float %1546, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1548 = select i1 %79, float %1545, float %1547
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %27, i32 %28, i32 undef, float %1548, float %1548, float %1548, float %1548, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %1549

; <label>:1549                                    ; preds = %1543, %38
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

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

; Function Attrs: nounwind readnone
declare i32 @dx.op.unaryBits.i32(i32, i32) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32, %dx.types.Handle, i32, i32) #2

; Function Attrs: nounwind readnone
declare float @dx.op.tertiary.f32(i32, float, float, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.binary.f32(i32, float, float) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.binary.i32(i32, i32, i32) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32) #2

; Function Attrs: nounwind readnone
declare float @dx.op.dot4.f32(i32, float, float, float, float, float, float, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32, %dx.types.Handle, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32, %dx.types.Handle, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.Handle @dx.op.createHandle(i32, i8, i32, i32, i1) #2

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
!dx.entryPoints = !{!38}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !28, !30, !33}
!5 = !{!6, !7, !9, !10, !11, !12, !13, !14, !15, !16, !18, !19, !20, !21, !22, !24, !26, !27}
!6 = !{i32 0, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 28, i32 1, i32 11, i32 0, null}
!7 = !{i32 1, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 39, i32 1, i32 2, i32 0, !8}
!8 = !{i32 0, i32 9}
!9 = !{i32 2, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 13, i32 1, i32 2, i32 0, !8}
!10 = !{i32 3, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 38, i32 1, i32 2, i32 0, !8}
!11 = !{i32 4, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 19, i32 1, i32 11, i32 0, null}
!12 = !{i32 5, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 20, i32 1, i32 11, i32 0, null}
!13 = !{i32 6, %"class.Texture1D<float>"* undef, !"", i32 0, i32 26, i32 1, i32 1, i32 0, !8}
!14 = !{i32 7, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 0, i32 35, i32 1, i32 7, i32 0, !8}
!15 = !{i32 8, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 14, i32 1, i32 2, i32 0, !8}
!16 = !{i32 9, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 0, i32 36, i32 1, i32 7, i32 0, !17}
!17 = !{i32 0, i32 14}
!18 = !{i32 10, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 34, i32 1, i32 11, i32 0, null}
!19 = !{i32 11, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 32, i32 1, i32 2, i32 0, !8}
!20 = !{i32 12, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 18, i32 1, i32 2, i32 0, !8}
!21 = !{i32 13, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 41, i32 1, i32 2, i32 0, !8}
!22 = !{i32 14, %"class.StructuredBuffer<GfxBSPAABBNodePacked>"* undef, !"", i32 0, i32 22, i32 1, i32 12, i32 0, !23}
!23 = !{i32 1, i32 8}
!24 = !{i32 15, %"class.Buffer<unsigned int>"* undef, !"", i32 0, i32 23, i32 1, i32 10, i32 0, !25}
!25 = !{i32 0, i32 5}
!26 = !{i32 16, %"class.Buffer<unsigned int>"* undef, !"", i32 0, i32 24, i32 1, i32 10, i32 0, !25}
!27 = !{i32 17, %"class.StructuredBuffer<GfxBSPAABBNodePacked>"* undef, !"", i32 0, i32 25, i32 1, i32 12, i32 0, !23}
!28 = !{!29}
!29 = !{i32 0, %"class.RWTexture2D<float>"* undef, !"", i32 0, i32 0, i32 1, i32 2, i1 false, i1 false, i1 false, !8}
!30 = !{!31, !32}
!31 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!32 = !{i32 1, %DeferredEffectLightConsts_decl* undef, !"", i32 0, i32 1, i32 1, i32 240, null}
!33 = !{!34, !35, !36, !37}
!34 = !{i32 0, %struct.SamplerComparisonState* undef, !"", i32 0, i32 0, i32 1, i32 1, null}
!35 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!36 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!37 = !{i32 3, %struct.SamplerState* undef, !"", i32 0, i32 3, i32 1, i32 0, null}
!38 = !{void ()* @cs_light_sensor_direct, !"cs_light_sensor_direct", null, !4, !39}
!39 = !{i32 0, i64 272, i32 4, !40}
!40 = !{i32 64, i32 1, i32 1}
!41 = distinct !{!41, !"dx.controlflow.hints", i32 2}
!42 = distinct !{!42, !"dx.controlflow.hints", i32 2}
!43 = distinct !{!43, !"dx.controlflow.hints", i32 2}
!44 = distinct !{!44, !"dx.controlflow.hints", i32 2}
!45 = distinct !{!45, !"dx.controlflow.hints", i32 2}
!46 = distinct !{!46, !"dx.controlflow.hints", i32 2}
!47 = distinct !{!47, !"dx.controlflow.hints", i32 1}
!48 = distinct !{!48, !"dx.controlflow.hints", i32 1}
!49 = distinct !{!49, !"dx.controlflow.hints", i32 1}
!50 = distinct !{!50, !"dx.controlflow.hints", i32 1}
!51 = distinct !{!51, !"dx.controlflow.hints", i32 1}
!52 = distinct !{!52, !"dx.controlflow.hints", i32 2}
!53 = distinct !{!53, !"dx.controlflow.hints", i32 2}
!54 = !{!55, !55, i64 0}
!55 = !{!"int", !56, i64 0}
!56 = !{!"omnipotent char", !57, i64 0}
!57 = !{!"Simple C/C++ TBAA"}
!58 = !{!59, !61}
!59 = distinct !{!59, !60, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_Sprite@@ULightIteratorOutput_Sprite@@@Z: %lightingOutput"}
!60 = distinct !{!60, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_Sprite@@ULightIteratorOutput_Sprite@@@Z"}
!61 = distinct !{!61, !62, !"\01?Lights_Iterate_Sprite@@YAXULocalAttributes@@ULightIteratorInput_Sprite@@ULightIteratorOutput_Sprite@@@Z: %lightingOutput"}
!62 = distinct !{!62, !"\01?Lights_Iterate_Sprite@@YAXULocalAttributes@@ULightIteratorInput_Sprite@@ULightIteratorOutput_Sprite@@@Z"}
!63 = distinct !{!63, !"dx.controlflow.hints", i32 2}
!64 = distinct !{!64, !"dx.controlflow.hints", i32 2}
!65 = distinct !{!65, !"dx.controlflow.hints", i32 2}
!66 = distinct !{!66, !"dx.controlflow.hints", i32 1}
!67 = distinct !{!67, !"dx.controlflow.hints", i32 1}
!68 = distinct !{!68, !"dx.controlflow.hints", i32 2}
!69 = !{!70, !70, i64 0}
!70 = !{!"float", !56, i64 0}
!71 = distinct !{!71, !72}
!72 = !{!"llvm.loop.unroll.disable"}
!73 = distinct !{!73, !72}
!74 = distinct !{!74, !"dx.controlflow.hints", i32 1}
!75 = distinct !{!75, !"dx.controlflow.hints", i32 1}
!76 = distinct !{!76, !"dx.controlflow.hints", i32 2}
!77 = distinct !{!77, !"dx.controlflow.hints", i32 2}
!78 = distinct !{!78, !"dx.controlflow.hints", i32 1}
!79 = distinct !{!79, !"dx.controlflow.hints", i32 2}
!80 = distinct !{!80, !"dx.controlflow.hints", i32 2}
!81 = distinct !{!81, !"dx.controlflow.hints", i32 2}
!82 = distinct !{!82, !"dx.controlflow.hints", i32 2}
!83 = distinct !{!83, !"dx.controlflow.hints", i32 2}
!84 = !{!61}
!85 = distinct !{!85, !"dx.controlflow.hints", i32 2}
!86 = distinct !{!86, !"dx.controlflow.hints", i32 2}
!87 = distinct !{!87, !"dx.controlflow.hints", i32 1}
!88 = distinct !{!88, !"dx.controlflow.hints", i32 1}
!89 = distinct !{!89, !"dx.controlflow.hints", i32 1}
!90 = distinct !{!90, !72}

