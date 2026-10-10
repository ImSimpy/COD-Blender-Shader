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
; shader hash: f141eee24e272793e09db38ef177923f
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
;   [32 x i8] (type annotation not present)
;
; }
;
; cbuffer 
; {
;
;   [11728 x i8] (type annotation not present)
;
; }
;
;
; Resource Bindings:
;
; Name                                 Type  Format         Dim      ID      HLSL Bind  Count
; ------------------------------ ---------- ------- ----------- ------- -------------- ------
;                                   cbuffer      NA          NA     CB0            cb1     1
;                                   cbuffer      NA          NA     CB1            cb3     1
;                                   sampler      NA          NA      S0             s1     1
;                                   sampler      NA          NA      S1             s2     1
;                                   texture     f32     2darray      T0            t32     1
;                                   texture     f32          3d      T1            t31     1
;                                   texture     f32          2d      T2            t29     1
;                                   texture     u32          2d      T3            t22     1
;                                   texture     f32          3d      T4            t23     1
;                                   texture     f32          2d      T5            t19     1
;                                   texture     f32         buf      T6            t24     1
;                                   texture     f32         buf      T7            t25     1
;                                       UAV     f32          2d      U0             u5     1
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.CBufRet.i32 = type { i32, i32, i32, i32 }
%dx.types.ResRet.f32 = type { float, float, float, float, i32 }
%dx.types.CBufRet.f32 = type { float, float, float, float }
%dx.types.ResRet.i32 = type { i32, i32, i32, i32, i32 }
%"class.Texture2DArray<vector<float, 4> >" = type { <4 x float>, %"class.Texture2DArray<vector<float, 4> >::mips_type" }
%"class.Texture2DArray<vector<float, 4> >::mips_type" = type { i32 }
%"class.Texture3D<vector<float, 4> >" = type { <4 x float>, %"class.Texture3D<vector<float, 4> >::mips_type" }
%"class.Texture3D<vector<float, 4> >::mips_type" = type { i32 }
%"class.Texture2D<vector<float, 2> >" = type { <2 x float>, %"class.Texture2D<vector<float, 2> >::mips_type" }
%"class.Texture2D<vector<float, 2> >::mips_type" = type { i32 }
%"class.Texture2D<unsigned int>" = type { i32, %"class.Texture2D<unsigned int>::mips_type" }
%"class.Texture2D<unsigned int>::mips_type" = type { i32 }
%"class.Texture3D<vector<float, 3> >" = type { <3 x float>, %"class.Texture3D<vector<float, 3> >::mips_type" }
%"class.Texture3D<vector<float, 3> >::mips_type" = type { i32 }
%"class.Texture2D<float>" = type { float, %"class.Texture2D<float>::mips_type" }
%"class.Texture2D<float>::mips_type" = type { i32 }
%"class.Buffer<vector<float, 3> >" = type { <3 x float> }
%"class.Buffer<float>" = type { float }
%"class.RWTexture2D<vector<float, 3> >" = type { <3 x float> }
%VolumetricLightGridConstants = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%hostlayout.scene = type { %hostlayout.struct.GfxCodeSceneConsts }
%hostlayout.struct.GfxCodeSceneConsts = type { <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <3 x float>, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x i32>, <4 x i32>, <4 x float>, float, float, float, float, i32, i32, float, float, <2 x i32>, <2 x i32>, <2 x float>, <2 x float>, <3 x float>, i32, <3 x float>, float, <3 x float>, float, <2 x float>, <2 x float>, <3 x float>, float, <3 x float>, float, float, float, float, float, <3 x float>, float, i32, float, float, float, <4 x float>, <3 x float>, float, float, float, float, float, <4 x float>, float, float, float, float, i32, i32, i32, float, <4 x float>, i32, i32, i32, i32, i32, i32, i32, i32, <2 x i32>, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, [2 x <4 x i32>], [3 x <2 x float>], i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <2 x float>, <2 x float>, <4 x float>, <4 x i32>, <4 x float>, i32, float, float, float, i32, i32, i32, i32, <2 x float>, <2 x float>, <2 x float>, <2 x float>, i32, i32, <2 x float>, <2 x float>, <2 x float>, <3 x float>, i32, i32, i32, i32, i32, <4 x i32>, <4 x i32>, <4 x i32>, <4 x float>, i32, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <3 x float>, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], <4 x float>, [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], i32, i32, float, i32, <2 x float>, float, float, float, float, float, i32, <3 x float>, float, float, float, float, float, <3 x float>, float, <3 x float>, float, <3 x float>, float, float, float, float, float, <2 x float>, <2 x float>, float, float, float, float, <3 x float>, float, <2 x float>, i32, i32, <3 x float>, float, float, float, float, float, float, float, float, float, [4 x <3 x float>], i32, [4 x <3 x float>], i32, [4 x <3 x float>], i32, <4 x i32>, <2 x float>, <2 x float>, <2 x float>, i32, i32, float, float, float, float, <4 x float>, <4 x i32>, <4 x float>, <4 x float>, <4 x float>, i32, i32, i32, i32, <4 x float>, i32, float, float, i32, i32, float, float, i32, i32, float, float, i32, i32, float, float, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, float, float, float, float, i32, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, i32, i32, i32, float, <4 x float>, <4 x float>, <4 x float>, <4 x float>, i32, i32, i32, float, <4 x float>, float, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x i32>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [8 x <4 x float>], [8 x <4 x float>], <4 x float>, <3 x float>, i32, <2 x float>, float, float, float, float, float, float, <2 x float>, <2 x float>, <2 x float>, <2 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <2 x float>, float, float, <4 x float>, i32, i32, i32, i32, <3 x float>, i32, <4 x i32>, <4 x i32>, <2 x float>, <2 x i32>, <4 x float>, <4 x float>, <2 x float>, <2 x float>, [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, float, i32, i32, i32, i32, i32, float, float, <2 x float>, <2 x float>, float, float, float, float, i32, float, float, float, float, float, float, float, float, float, float, float, float, i32, i32, i32, float, float, float, i32, <2 x i32>, <2 x i32>, <4 x i32>, float, float, float, float, <4 x float>, <4 x float>, <2 x float>, <2 x float>, <4 x float>, <4 x float>, float, float, float, float, <4 x float>, float, float, float, float, i32, i32, float, float, <4 x float>, <2 x float>, <2 x float>, i32, i32, float, float, [4 x <4 x float>], float, float, float, float, float, float, float, float, i32, i32, i32, float, <4 x float>, <4 x float>, i32, i32, i32, i32, <2 x i32>, <2 x i32>, [2 x <4 x i32>], i32, float, float, float, i32, float, float, i32, <2 x i32>, <2 x float>, float, float, float, i32, %struct.GfxWeatherData, %hostlayout.struct.GfxVolumetricData, %struct.GfxFogRaymarchingData, %struct.GfxEnvironmentalFogData, %struct.GfxShallowWaterData, %struct.GfxGroundDeformationData, %struct.GfxSplinedModelGlobals }
%struct.GfxWeatherData = type { i32, i32, i32, i32, float, float, float, float, float, float, i32, i32, float, float, float, float, i32, i32, i32, i32, float, float, float, float, float, i32, i32, i32, i32, i32, i32, i32, <3 x float>, i32, <3 x float>, i32, i32, float, i32, i32, float, float, float, float }
%hostlayout.struct.GfxVolumetricData = type { [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <2 x float>, <2 x float>, <2 x float>, <2 x float>, <3 x i32>, i32, <3 x float>, i32, <4 x float>, <3 x float>, i32, i32, float, float, float, i32, i32, i32, float, <4 x float>, float, float, i32, i32, <3 x float>, i32, <3 x float>, float, <3 x float>, float, <2 x float>, float, float, <3 x float>, float, <3 x float>, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, <3 x float>, float, i32, float, float, float, <3 x float>, float, <2 x float>, <2 x float>, <3 x float>, float, i32, float, float, float, float, float, float, float, i32, i32, float, float, <3 x float>, float, i32, i32, <2 x float> }
%struct.GfxFogRaymarchingData = type { <2 x float>, <2 x float>, float, float, float, float, float, float, float, float, float, float, float, float, <2 x float>, <2 x float>, <3 x float>, float }
%struct.GfxEnvironmentalFogData = type { float, float, float, i32 }
%struct.GfxShallowWaterData = type { i32, i32, i32, i32, float, float, float, float, <2 x float>, <2 x float>, float, float, float, float, <3 x float>, float, float, float, float, float, float, float, float, float, i32, float, float, float, float, float, float, float, float, float, float, float, i32, float, float, float, float, i32, i32, i32 }
%struct.GfxGroundDeformationData = type { <2 x float>, <2 x float>, float, float, float, float, float, float, float, float, float, float, float, float, float, float, i32, i32 }
%struct.GfxSplinedModelGlobals = type { [64 x <4 x float>], [64 x <4 x float>], [16 x <4 x float>], [32 x <4 x float>], [64 x <4 x float>], [16 x <4 x float>], [16 x <4 x float>], float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float }
%struct.SamplerState = type { i32 }

define void @cs_scene_luma_sh_combine_multi_lightgrid_aniso_skylight() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 25, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 24, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 19, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 23, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 22, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 29, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 31, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 32, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call i32 @dx.op.threadId.i32(i32 93, i32 0)  ; ThreadId(component)
  %15 = call i32 @dx.op.threadId.i32(i32 93, i32 1)  ; ThreadId(component)
  %16 = call i32 @dx.op.threadId.i32(i32 93, i32 2)  ; ThreadId(component)
  %17 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %12, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %18 = extractvalue %dx.types.CBufRet.i32 %17, 0
  %19 = extractvalue %dx.types.CBufRet.i32 %17, 1
  %20 = add i32 %18, 3
  %21 = add i32 %19, 3
  %22 = lshr i32 %20, 2
  %23 = lshr i32 %21, 2
  %24 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %13, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %25 = extractvalue %dx.types.CBufRet.i32 %24, 2
  %26 = icmp sgt i32 %25, 0
  br i1 %26, label %27, label %73

; <label>:27                                      ; preds = %0
  br label %28

; <label>:28                                      ; preds = %28, %27
  %29 = phi float [ %60, %28 ], [ 0.000000e+00, %27 ]
  %30 = phi float [ %61, %28 ], [ 0.000000e+00, %27 ]
  %31 = phi float [ %62, %28 ], [ 0.000000e+00, %27 ]
  %32 = phi float [ %67, %28 ], [ 0.000000e+00, %27 ]
  %33 = phi i32 [ %66, %28 ], [ 0, %27 ]
  %34 = phi i32 [ %64, %28 ], [ 0, %27 ]
  %35 = phi i32 [ %68, %28 ], [ 0, %27 ]
  %36 = mul i32 %22, %23
  %37 = shl i32 %36, 1
  %38 = add i32 %35, %16
  %39 = mul i32 %38, %36
  %40 = mul i32 %22, %15
  %41 = add i32 %40, %14
  %42 = add i32 %41, %39
  %43 = mul i32 %37, %35
  %44 = add i32 %41, %43
  %45 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %42, i32 undef)  ; BufferLoad(srv,index,wot)
  %46 = extractvalue %dx.types.ResRet.f32 %45, 0
  %47 = fmul fast float %46, %46
  %48 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %44, i32 undef)  ; BufferLoad(srv,index,wot)
  %49 = extractvalue %dx.types.ResRet.f32 %48, 0
  %50 = extractvalue %dx.types.ResRet.f32 %48, 1
  %51 = extractvalue %dx.types.ResRet.f32 %48, 2
  %52 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %53 = extractvalue %dx.types.CBufRet.f32 %52, 1
  %54 = fmul fast float %49, %47
  %55 = fmul fast float %54, %53
  %56 = fmul fast float %50, %47
  %57 = fmul fast float %56, %53
  %58 = fmul fast float %51, %47
  %59 = fmul fast float %58, %53
  %60 = fadd fast float %55, %29
  %61 = fadd fast float %57, %30
  %62 = fadd fast float %59, %31
  %63 = fcmp fast oeq float %47, 0.000000e+00
  %64 = select i1 %63, i32 1, i32 %34
  %65 = fcmp fast ogt float %47, 0x3F847AE140000000
  %66 = select i1 %65, i32 1, i32 %33
  %67 = fadd fast float %47, %32
  %68 = add nuw nsw i32 %35, 1
  %69 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %13, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %70 = extractvalue %dx.types.CBufRet.i32 %69, 2
  %71 = icmp slt i32 %68, %70
  br i1 %71, label %28, label %72

; <label>:72                                      ; preds = %28
  br label %73

; <label>:73                                      ; preds = %72, %0
  %74 = phi float [ 0.000000e+00, %0 ], [ %60, %72 ]
  %75 = phi float [ 0.000000e+00, %0 ], [ %61, %72 ]
  %76 = phi float [ 0.000000e+00, %0 ], [ %62, %72 ]
  %77 = phi float [ 0.000000e+00, %0 ], [ %67, %72 ]
  %78 = phi i32 [ 0, %0 ], [ %66, %72 ]
  %79 = phi i32 [ 0, %0 ], [ %64, %72 ]
  %80 = fcmp fast ogt float %77, 1.000000e+00
  br i1 %80, label %81, label %86, !dx.controlflow.hints !27

; <label>:81                                      ; preds = %73
  %82 = fdiv fast float 1.000000e+00, %77
  %83 = fmul fast float %82, %74
  %84 = fmul fast float %82, %75
  %85 = fmul fast float %82, %76
  br label %86

; <label>:86                                      ; preds = %81, %73
  %87 = phi float [ %83, %81 ], [ %74, %73 ]
  %88 = phi float [ %84, %81 ], [ %75, %73 ]
  %89 = phi float [ %85, %81 ], [ %76, %73 ]
  %90 = phi float [ 1.000000e+00, %81 ], [ %77, %73 ]
  %91 = call float @dx.op.unary.f32(i32 7, float %90)  ; Saturate(value)
  %92 = fsub fast float 1.000000e+00, %91
  %93 = fcmp fast ogt float %92, 0.000000e+00
  %94 = icmp eq i32 %79, 0
  %95 = icmp ne i32 %78, 0
  %96 = or i1 %95, %94
  %97 = and i1 %96, %93
  br i1 %97, label %98, label %519, !dx.controlflow.hints !28

; <label>:98                                      ; preds = %86
  %99 = uitofp i32 %14 to float
  %100 = uitofp i32 %15 to float
  %101 = fadd fast float %99, 5.000000e-01
  %102 = fadd fast float %100, 5.000000e-01
  %103 = fmul fast float %101, 4.000000e+00
  %104 = fmul fast float %102, 4.000000e+00
  %105 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %106 = extractvalue %dx.types.CBufRet.f32 %105, 0
  %107 = extractvalue %dx.types.CBufRet.f32 %105, 1
  %108 = fmul fast float %103, %106
  %109 = fmul fast float %104, %107
  %110 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %11, float %108, float %109, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %111 = extractvalue %dx.types.ResRet.f32 %110, 0
  %112 = fcmp fast ogt float %111, -1.000000e+00
  %113 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %114 = extractvalue %dx.types.CBufRet.f32 %113, 1
  %115 = select i1 %112, float %114, float 1.000000e+00
  %116 = fadd fast float %111, 1.000000e+00
  %117 = fmul fast float %115, %116
  %118 = call float @dx.op.unary.f32(i32 6, float %117)  ; FAbs(value)
  %119 = fmul fast float %118, 0x3FEFFC0000000000
  %120 = fadd fast float %119, -1.600000e+01
  %121 = call float @dx.op.binary.f32(i32 35, float %120, float 0.000000e+00)  ; FMax(a,b)
  %122 = fmul fast float %108, 2.000000e+00
  %123 = fmul fast float %109, 2.000000e+00
  %124 = fsub fast float 1.000000e+00, %122
  %125 = fsub fast float 1.000000e+00, %123
  %126 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %127 = extractvalue %dx.types.CBufRet.f32 %126, 0
  %128 = extractvalue %dx.types.CBufRet.f32 %126, 1
  %129 = extractvalue %dx.types.CBufRet.f32 %126, 2
  %130 = fmul fast float %127, %124
  %131 = fmul fast float %128, %124
  %132 = fmul fast float %129, %124
  %133 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %134 = extractvalue %dx.types.CBufRet.f32 %133, 0
  %135 = extractvalue %dx.types.CBufRet.f32 %133, 1
  %136 = extractvalue %dx.types.CBufRet.f32 %133, 2
  %137 = fmul fast float %134, %125
  %138 = fmul fast float %135, %125
  %139 = fmul fast float %136, %125
  %140 = fadd fast float %137, %130
  %141 = fadd fast float %138, %131
  %142 = fadd fast float %139, %132
  %143 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %144 = extractvalue %dx.types.CBufRet.f32 %143, 0
  %145 = extractvalue %dx.types.CBufRet.f32 %143, 1
  %146 = extractvalue %dx.types.CBufRet.f32 %143, 2
  %147 = fadd fast float %140, %144
  %148 = fadd fast float %141, %145
  %149 = fadd fast float %142, %146
  %150 = fmul fast float %147, %121
  %151 = fmul fast float %148, %121
  %152 = fmul fast float %149, %121
  %153 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %154 = extractvalue %dx.types.CBufRet.f32 %153, 0
  %155 = extractvalue %dx.types.CBufRet.f32 %153, 1
  %156 = extractvalue %dx.types.CBufRet.f32 %153, 2
  %157 = fadd fast float %150, %154
  %158 = fadd fast float %151, %155
  %159 = fadd fast float %152, %156
  %160 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %161 = extractvalue %dx.types.CBufRet.f32 %160, 0
  %162 = extractvalue %dx.types.CBufRet.f32 %160, 1
  %163 = fsub fast float %157, %161
  %164 = fsub fast float %158, %162
  %165 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %166 = extractvalue %dx.types.CBufRet.f32 %165, 0
  %167 = extractvalue %dx.types.CBufRet.f32 %165, 1
  %168 = fmul fast float %163, %166
  %169 = fmul fast float %164, %167
  %170 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 263)  ; CBufferLoadLegacy(handle,regIndex)
  %171 = extractvalue %dx.types.CBufRet.f32 %170, 0
  %172 = fmul fast float %168, %171
  %173 = extractvalue %dx.types.CBufRet.f32 %170, 1
  %174 = fadd fast float %172, %173
  %175 = extractvalue %dx.types.CBufRet.f32 %170, 2
  %176 = fmul fast float %175, %169
  %177 = extractvalue %dx.types.CBufRet.f32 %170, 3
  %178 = fadd fast float %176, %177
  %179 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %10, float %174, float %178, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %180 = extractvalue %dx.types.ResRet.f32 %179, 0
  %181 = extractvalue %dx.types.ResRet.f32 %179, 1
  %182 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 259)  ; CBufferLoadLegacy(handle,regIndex)
  %183 = extractvalue %dx.types.CBufRet.f32 %182, 1
  %184 = extractvalue %dx.types.CBufRet.f32 %182, 0
  %185 = fsub fast float %183, %184
  %186 = fmul fast float %185, %180
  %187 = fadd fast float %186, %184
  %188 = extractvalue %dx.types.CBufRet.f32 %182, 3
  %189 = extractvalue %dx.types.CBufRet.f32 %182, 2
  %190 = fsub fast float %188, %189
  %191 = fmul fast float %190, %181
  %192 = fadd fast float %191, %189
  %193 = fsub fast float %159, %187
  %194 = fsub fast float %192, %187
  %195 = fdiv fast float %193, %194
  %196 = call float @dx.op.unary.f32(i32 7, float %195)  ; Saturate(value)
  %197 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 264)  ; CBufferLoadLegacy(handle,regIndex)
  %198 = extractvalue %dx.types.CBufRet.f32 %197, 0
  %199 = fmul fast float %198, %196
  %200 = extractvalue %dx.types.CBufRet.f32 %197, 1
  %201 = fadd fast float %199, %200
  %202 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %10, float %174, float %178, float %201, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %203 = extractvalue %dx.types.ResRet.f32 %202, 0
  %204 = extractvalue %dx.types.ResRet.f32 %202, 1
  %205 = extractvalue %dx.types.ResRet.f32 %202, 2
  %206 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 258)  ; CBufferLoadLegacy(handle,regIndex)
  %207 = extractvalue %dx.types.CBufRet.f32 %206, 0
  %208 = extractvalue %dx.types.CBufRet.f32 %206, 1
  %209 = extractvalue %dx.types.CBufRet.f32 %206, 2
  %210 = fmul fast float %207, %203
  %211 = fmul fast float %208, %204
  %212 = fmul fast float %209, %205
  %213 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 257)  ; CBufferLoadLegacy(handle,regIndex)
  %214 = extractvalue %dx.types.CBufRet.f32 %213, 0
  %215 = extractvalue %dx.types.CBufRet.f32 %213, 1
  %216 = extractvalue %dx.types.CBufRet.f32 %213, 2
  %217 = fadd fast float %210, %214
  %218 = fadd fast float %211, %215
  %219 = fadd fast float %212, %216
  %220 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 262)  ; CBufferLoadLegacy(handle,regIndex)
  %221 = extractvalue %dx.types.CBufRet.f32 %220, 0
  %222 = fmul fast float %221, %168
  %223 = extractvalue %dx.types.CBufRet.f32 %220, 1
  %224 = fadd fast float %222, %223
  %225 = extractvalue %dx.types.CBufRet.f32 %220, 2
  %226 = fmul fast float %225, %169
  %227 = extractvalue %dx.types.CBufRet.f32 %220, 3
  %228 = fadd fast float %226, %227
  %229 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 265)  ; CBufferLoadLegacy(handle,regIndex)
  %230 = extractvalue %dx.types.CBufRet.f32 %229, 0
  %231 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 266)  ; CBufferLoadLegacy(handle,regIndex)
  %232 = extractvalue %dx.types.CBufRet.f32 %231, 0
  %233 = extractvalue %dx.types.CBufRet.f32 %231, 2
  %234 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %10, float %224, float %228, float 0.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %235 = extractvalue %dx.types.ResRet.f32 %234, 0
  %236 = extractvalue %dx.types.ResRet.f32 %234, 1
  %237 = extractvalue %dx.types.ResRet.f32 %234, 2
  %238 = fmul fast float %235, %217
  %239 = fadd fast float %238, %230
  %240 = fmul fast float %236, %217
  %241 = fadd fast float %240, %232
  %242 = fmul fast float %237, %217
  %243 = fadd fast float %242, %233
  %244 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %10, float %224, float %228, float 2.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %245 = extractvalue %dx.types.ResRet.f32 %244, 0
  %246 = extractvalue %dx.types.ResRet.f32 %244, 1
  %247 = extractvalue %dx.types.ResRet.f32 %244, 2
  %248 = fmul fast float %245, %218
  %249 = fadd fast float %239, %248
  %250 = fmul fast float %246, %218
  %251 = fadd fast float %241, %250
  %252 = fmul fast float %247, %218
  %253 = fadd fast float %243, %252
  %254 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %10, float %224, float %228, float 4.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %255 = extractvalue %dx.types.ResRet.f32 %254, 0
  %256 = extractvalue %dx.types.ResRet.f32 %254, 1
  %257 = extractvalue %dx.types.ResRet.f32 %254, 2
  %258 = fmul fast float %255, %219
  %259 = fadd fast float %249, %258
  %260 = fmul fast float %256, %219
  %261 = fadd fast float %251, %260
  %262 = fmul fast float %257, %219
  %263 = fadd fast float %253, %262
  %264 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 255)  ; CBufferLoadLegacy(handle,regIndex)
  %265 = extractvalue %dx.types.CBufRet.f32 %264, 0
  %266 = fsub fast float %157, %265
  %267 = fsub fast float %161, %157
  %268 = call float @dx.op.binary.f32(i32 35, float %267, float %266)  ; FMax(a,b)
  %269 = extractvalue %dx.types.CBufRet.f32 %264, 1
  %270 = fsub fast float %158, %269
  %271 = fsub fast float %162, %158
  %272 = call float @dx.op.binary.f32(i32 35, float %271, float %270)  ; FMax(a,b)
  %273 = call float @dx.op.binary.f32(i32 35, float %268, float %272)  ; FMax(a,b)
  %274 = extractvalue %dx.types.CBufRet.f32 %165, 3
  %275 = fmul fast float %274, %273
  %276 = call float @dx.op.unary.f32(i32 7, float %275)  ; Saturate(value)
  %277 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 272)  ; CBufferLoadLegacy(handle,regIndex)
  %278 = extractvalue %dx.types.CBufRet.f32 %277, 0
  %279 = fsub fast float %278, %259
  %280 = fmul fast float %279, %276
  %281 = fadd fast float %280, %259
  %282 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 273)  ; CBufferLoadLegacy(handle,regIndex)
  %283 = extractvalue %dx.types.CBufRet.f32 %282, 0
  %284 = fsub fast float %283, %261
  %285 = fmul fast float %284, %276
  %286 = fadd fast float %285, %261
  %287 = extractvalue %dx.types.CBufRet.f32 %282, 2
  %288 = fsub fast float %287, %263
  %289 = fmul fast float %288, %276
  %290 = fadd fast float %289, %263
  %291 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 267)  ; CBufferLoadLegacy(handle,regIndex)
  %292 = extractvalue %dx.types.CBufRet.f32 %291, 0
  %293 = fmul fast float %292, %281
  %294 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 268)  ; CBufferLoadLegacy(handle,regIndex)
  %295 = extractvalue %dx.types.CBufRet.f32 %294, 0
  %296 = fmul fast float %295, %286
  %297 = fadd fast float %296, %293
  %298 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 269)  ; CBufferLoadLegacy(handle,regIndex)
  %299 = extractvalue %dx.types.CBufRet.f32 %298, 0
  %300 = fmul fast float %299, %290
  %301 = fadd fast float %297, %300
  %302 = extractvalue %dx.types.CBufRet.f32 %291, 1
  %303 = fmul fast float %302, %281
  %304 = extractvalue %dx.types.CBufRet.f32 %294, 1
  %305 = fmul fast float %304, %286
  %306 = fadd fast float %305, %303
  %307 = extractvalue %dx.types.CBufRet.f32 %298, 1
  %308 = fmul fast float %307, %290
  %309 = fadd fast float %306, %308
  %310 = extractvalue %dx.types.CBufRet.f32 %291, 2
  %311 = fmul fast float %310, %281
  %312 = extractvalue %dx.types.CBufRet.f32 %294, 2
  %313 = fmul fast float %312, %286
  %314 = fadd fast float %313, %311
  %315 = extractvalue %dx.types.CBufRet.f32 %298, 2
  %316 = fmul fast float %315, %290
  %317 = fadd fast float %314, %316
  %318 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %301)  ; FMax(a,b)
  %319 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %309)  ; FMax(a,b)
  %320 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %317)  ; FMax(a,b)
  %321 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 271)  ; CBufferLoadLegacy(handle,regIndex)
  %322 = extractvalue %dx.types.CBufRet.f32 %321, 0
  %323 = fcmp fast ogt float %322, 0.000000e+00
  %324 = fcmp fast oge float %168, 0.000000e+00
  %325 = and i1 %324, %323
  %326 = fcmp fast ole float %168, 1.000000e+00
  %327 = and i1 %326, %325
  %328 = fcmp fast oge float %169, 0.000000e+00
  %329 = and i1 %328, %327
  %330 = fcmp fast ole float %169, 1.000000e+00
  %331 = and i1 %330, %329
  br i1 %331, label %332, label %472, !dx.controlflow.hints !29

; <label>:332                                     ; preds = %98
  %333 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 270)  ; CBufferLoadLegacy(handle,regIndex)
  %334 = extractvalue %dx.types.CBufRet.f32 %333, 2
  %335 = extractvalue %dx.types.CBufRet.f32 %333, 3
  %336 = fmul fast float %334, %168
  %337 = fmul fast float %335, %169
  %338 = call float @dx.op.unary.f32(i32 27, float %336)  ; Round_ni(value)
  %339 = call float @dx.op.unary.f32(i32 27, float %337)  ; Round_ni(value)
  %340 = fptosi float %338 to i32
  %341 = fptosi float %339 to i32
  %342 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %6, i32 0, i32 %340, i32 %341, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %343 = extractvalue %dx.types.ResRet.i32 %342, 0
  %344 = and i32 %343, 65535
  %345 = lshr i32 %343, 16
  %346 = icmp eq i32 %344, 65535
  br i1 %346, label %383, label %347, !dx.controlflow.hints !30

; <label>:347                                     ; preds = %332
  %348 = extractvalue %dx.types.CBufRet.f32 %321, 1
  %349 = extractvalue %dx.types.CBufRet.f32 %333, 0
  %350 = extractvalue %dx.types.CBufRet.f32 %333, 1
  %351 = fmul fast float %349, %168
  %352 = fmul fast float %350, %169
  %353 = fmul fast float %351, 1.250000e-01
  %354 = fmul fast float %352, 1.250000e-01
  %355 = call float @dx.op.unary.f32(i32 27, float %353)  ; Round_ni(value)
  %356 = call float @dx.op.unary.f32(i32 27, float %354)  ; Round_ni(value)
  %357 = fmul fast float %355, 8.000000e+00
  %358 = fmul fast float %356, 8.000000e+00
  %359 = and i32 %343, 255
  %360 = lshr i32 %343, 8
  %361 = and i32 %360, 255
  %362 = mul nuw nsw i32 %359, 9
  %363 = uitofp i32 %362 to float
  %364 = mul nuw nsw i32 %361, 9
  %365 = uitofp i32 %364 to float
  %366 = fadd fast float %363, 5.000000e-01
  %367 = fadd fast float %366, %351
  %368 = fsub fast float %367, %357
  %369 = fadd fast float %365, 5.000000e-01
  %370 = fadd fast float %369, %352
  %371 = fsub fast float %370, %358
  %372 = fdiv fast float %368, %322
  %373 = fdiv fast float %371, %348
  %374 = fmul fast float %196, 4.375000e-01
  %375 = fadd fast float %374, 3.125000e-02
  %376 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %10, float %372, float %373, float %375, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %377 = extractvalue %dx.types.ResRet.f32 %376, 0
  %378 = extractvalue %dx.types.ResRet.f32 %376, 1
  %379 = extractvalue %dx.types.ResRet.f32 %376, 2
  %380 = fadd fast float %377, %318
  %381 = fadd fast float %378, %319
  %382 = fadd fast float %379, %320
  br label %383

; <label>:383                                     ; preds = %347, %332
  %384 = phi float [ %382, %347 ], [ %320, %332 ]
  %385 = phi float [ %381, %347 ], [ %319, %332 ]
  %386 = phi float [ %380, %347 ], [ %318, %332 ]
  %387 = icmp eq i32 %345, 65535
  br i1 %387, label %472, label %388, !dx.controlflow.hints !31

; <label>:388                                     ; preds = %383
  %389 = extractvalue %dx.types.CBufRet.f32 %321, 1
  %390 = extractvalue %dx.types.CBufRet.f32 %333, 0
  %391 = extractvalue %dx.types.CBufRet.f32 %333, 1
  %392 = fmul fast float %390, %168
  %393 = fmul fast float %391, %169
  %394 = fmul fast float %392, 1.250000e-01
  %395 = fmul fast float %393, 1.250000e-01
  %396 = call float @dx.op.unary.f32(i32 27, float %394)  ; Round_ni(value)
  %397 = call float @dx.op.unary.f32(i32 27, float %395)  ; Round_ni(value)
  %398 = fmul fast float %396, 8.000000e+00
  %399 = fmul fast float %397, 8.000000e+00
  %400 = fsub fast float %392, %398
  %401 = fsub fast float %393, %399
  %402 = fadd fast float %400, 5.000000e-01
  %403 = fadd fast float %401, 5.000000e-01
  %404 = and i32 %345, 255
  %405 = lshr i32 %343, 24
  %406 = mul nuw nsw i32 %404, 9
  %407 = uitofp i32 %406 to float
  %408 = mul nuw nsw i32 %405, 9
  %409 = uitofp i32 %408 to float
  %410 = fadd fast float %402, %407
  %411 = fadd fast float %403, %409
  %412 = fdiv fast float %410, %322
  %413 = fdiv fast float %411, %389
  %414 = fmul fast float %196, 4.375000e-01
  %415 = fadd fast float %414, 3.125000e-02
  %416 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %10, float %412, float %413, float %415, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %417 = extractvalue %dx.types.ResRet.f32 %416, 0
  %418 = extractvalue %dx.types.ResRet.f32 %416, 1
  %419 = extractvalue %dx.types.ResRet.f32 %416, 2
  %420 = fadd fast float %414, 5.312500e-01
  %421 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %10, float %412, float %413, float %420, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %422 = extractvalue %dx.types.ResRet.f32 %421, 0
  %423 = extractvalue %dx.types.ResRet.f32 %421, 1
  %424 = extractvalue %dx.types.ResRet.f32 %421, 2
  %425 = fmul fast float %422, 2.000000e+00
  %426 = fmul fast float %423, 2.000000e+00
  %427 = fmul fast float %424, 2.000000e+00
  %428 = fadd fast float %425, -1.000000e+00
  %429 = fadd fast float %426, -1.000000e+00
  %430 = fadd fast float %427, -1.000000e+00
  %431 = fmul fast float %428, %428
  %432 = fmul fast float %429, %429
  %433 = fadd fast float %431, %432
  %434 = fmul fast float %430, %430
  %435 = fadd fast float %433, %434
  %436 = call float @dx.op.unary.f32(i32 24, float %435)  ; Sqrt(value)
  %437 = fcmp fast ogt float %436, 0.000000e+00
  br i1 %437, label %438, label %442, !dx.controlflow.hints !32

; <label>:438                                     ; preds = %388
  %439 = fdiv fast float %428, %436
  %440 = fdiv fast float %429, %436
  %441 = fdiv fast float %430, %436
  br label %442

; <label>:442                                     ; preds = %438, %388
  %443 = phi float [ %439, %438 ], [ 0.000000e+00, %388 ]
  %444 = phi float [ %440, %438 ], [ 0.000000e+00, %388 ]
  %445 = phi float [ %441, %438 ], [ 0.000000e+00, %388 ]
  %446 = fmul fast float %150, %150
  %447 = fmul fast float %151, %151
  %448 = fadd fast float %446, %447
  %449 = call float @dx.op.unary.f32(i32 24, float %448)  ; Sqrt(value)
  %450 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 274)  ; CBufferLoadLegacy(handle,regIndex)
  %451 = extractvalue %dx.types.CBufRet.f32 %450, 0
  %452 = extractvalue %dx.types.CBufRet.f32 %450, 1
  %453 = fsub fast float %449, %451
  %454 = fdiv fast float %453, %452
  %455 = call float @dx.op.unary.f32(i32 7, float %454)  ; Saturate(value)
  %456 = fmul fast float %455, 2.000000e+00
  %457 = fsub fast float 3.000000e+00, %456
  %458 = fmul fast float %455, %455
  %459 = fmul fast float %458, %457
  %460 = call float @dx.op.dot3.f32(i32 55, float %443, float %444, float %445, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %461 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %460)  ; FMax(a,b)
  %462 = fmul fast float %461, 0x400C5BF8A0000000
  %463 = fmul fast float %459, %417
  %464 = fmul fast float %463, %462
  %465 = fadd fast float %464, %386
  %466 = fmul fast float %459, %418
  %467 = fmul fast float %466, %462
  %468 = fadd fast float %467, %385
  %469 = fmul fast float %459, %419
  %470 = fmul fast float %469, %462
  %471 = fadd fast float %470, %384
  br label %472

; <label>:472                                     ; preds = %442, %383, %98
  %473 = phi float [ %471, %442 ], [ %384, %383 ], [ %320, %98 ]
  %474 = phi float [ %468, %442 ], [ %385, %383 ], [ %319, %98 ]
  %475 = phi float [ %465, %442 ], [ %386, %383 ], [ %318, %98 ]
  %476 = fcmp fast ogt float %159, %192
  %477 = and i1 %324, %476
  %478 = and i1 %326, %477
  %479 = and i1 %328, %478
  %480 = and i1 %330, %479
  br i1 %480, label %481, label %499, !dx.controlflow.hints !33

; <label>:481                                     ; preds = %472
  %482 = fmul fast float %194, 0x3FC24924A0000000
  %483 = fsub fast float %159, %192
  %484 = fdiv fast float %483, %482
  %485 = call float @dx.op.unary.f32(i32 7, float %484)  ; Saturate(value)
  %486 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 275)  ; CBufferLoadLegacy(handle,regIndex)
  %487 = extractvalue %dx.types.CBufRet.f32 %486, 0
  %488 = fsub fast float %487, %475
  %489 = fmul fast float %488, %485
  %490 = fadd fast float %489, %475
  %491 = extractvalue %dx.types.CBufRet.f32 %486, 1
  %492 = fsub fast float %491, %474
  %493 = fmul fast float %492, %485
  %494 = fadd fast float %493, %474
  %495 = extractvalue %dx.types.CBufRet.f32 %486, 2
  %496 = fsub fast float %495, %473
  %497 = fmul fast float %496, %485
  %498 = fadd fast float %497, %473
  br label %499

; <label>:499                                     ; preds = %481, %472
  %500 = phi float [ %498, %481 ], [ %473, %472 ]
  %501 = phi float [ %494, %481 ], [ %474, %472 ]
  %502 = phi float [ %490, %481 ], [ %475, %472 ]
  %503 = extractvalue %dx.types.CBufRet.f32 %264, 3
  %504 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %505 = extractvalue %dx.types.CBufRet.f32 %504, 3
  %506 = fmul fast float %92, 0x3FD20DD760000000
  %507 = fmul fast float %506, %502
  %508 = fmul fast float %507, %503
  %509 = fmul fast float %508, %505
  %510 = fmul fast float %506, %501
  %511 = fmul fast float %510, %503
  %512 = fmul fast float %511, %505
  %513 = fmul fast float %506, %500
  %514 = fmul fast float %513, %503
  %515 = fmul fast float %514, %505
  %516 = fadd fast float %509, %87
  %517 = fadd fast float %512, %88
  %518 = fadd fast float %515, %89
  br label %519

; <label>:519                                     ; preds = %499, %86
  %520 = phi float [ %516, %499 ], [ %87, %86 ]
  %521 = phi float [ %517, %499 ], [ %88, %86 ]
  %522 = phi float [ %518, %499 ], [ %89, %86 ]
  %523 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %524 = extractvalue %dx.types.CBufRet.f32 %523, 0
  %525 = fmul fast float %524, %520
  %526 = fmul fast float %524, %521
  %527 = fmul fast float %524, %522
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %14, i32 %15, i32 undef, float %525, float %526, float %527, float %525, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @dx.op.threadId.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare float @dx.op.unary.f32(i32, float) #0

; Function Attrs: nounwind
declare void @dx.op.textureStore.f32(i32, %dx.types.Handle, i32, i32, i32, float, float, float, float, i8) #1

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32, %dx.types.Handle, i32, i32) #2

; Function Attrs: nounwind readnone
declare float @dx.op.binary.f32(i32, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

; Function Attrs: nounwind readnone
declare float @dx.op.dot3.f32(i32, float, float, float, float, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32, %dx.types.Handle, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32, %dx.types.Handle, i32) #2

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
!dx.entryPoints = !{!24}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !16, !18, !21}
!5 = !{!6, !8, !9, !10, !12, !13, !14, !15}
!6 = !{i32 0, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 0, i32 32, i32 1, i32 7, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 0, i32 31, i32 1, i32 4, i32 0, !7}
!9 = !{i32 2, %"class.Texture2D<vector<float, 2> >"* undef, !"", i32 0, i32 29, i32 1, i32 2, i32 0, !7}
!10 = !{i32 3, %"class.Texture2D<unsigned int>"* undef, !"", i32 0, i32 22, i32 1, i32 2, i32 0, !11}
!11 = !{i32 0, i32 5}
!12 = !{i32 4, %"class.Texture3D<vector<float, 3> >"* undef, !"", i32 0, i32 23, i32 1, i32 4, i32 0, !7}
!13 = !{i32 5, %"class.Texture2D<float>"* undef, !"", i32 0, i32 19, i32 1, i32 2, i32 0, !7}
!14 = !{i32 6, %"class.Buffer<vector<float, 3> >"* undef, !"", i32 0, i32 24, i32 1, i32 10, i32 0, !7}
!15 = !{i32 7, %"class.Buffer<float>"* undef, !"", i32 0, i32 25, i32 1, i32 10, i32 0, !7}
!16 = !{!17}
!17 = !{i32 0, %"class.RWTexture2D<vector<float, 3> >"* undef, !"", i32 0, i32 5, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!18 = !{!19, !20}
!19 = !{i32 0, %VolumetricLightGridConstants* undef, !"", i32 0, i32 1, i32 1, i32 32, null}
!20 = !{i32 1, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!21 = !{!22, !23}
!22 = !{i32 0, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!23 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!24 = !{void ()* @cs_scene_luma_sh_combine_multi_lightgrid_aniso_skylight, !"cs_scene_luma_sh_combine_multi_lightgrid_aniso_skylight", null, !4, !25}
!25 = !{i32 0, i64 256, i32 4, !26}
!26 = !{i32 8, i32 8, i32 1}
!27 = distinct !{!27, !"dx.controlflow.hints", i32 1}
!28 = distinct !{!28, !"dx.controlflow.hints", i32 2}
!29 = distinct !{!29, !"dx.controlflow.hints", i32 1}
!30 = distinct !{!30, !"dx.controlflow.hints", i32 2}
!31 = distinct !{!31, !"dx.controlflow.hints", i32 2}
!32 = distinct !{!32, !"dx.controlflow.hints", i32 2}
!33 = distinct !{!33, !"dx.controlflow.hints", i32 1}

