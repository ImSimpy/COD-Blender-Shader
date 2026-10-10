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
; shader hash: 84c8c337b926d5855e164e614a6cdaf9
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
;                                   sampler      NA          NA      S0             s2     1
;                                   sampler      NA          NA      S1             s4     1
;                                   texture     f32     2darray      T0            t32     1
;                                   texture     f32          3d      T1            t31     1
;                                   texture     f32          2d      T2            t29     1
;                                   texture     u32          2d      T3            t22     1
;                                   texture     f32          3d      T4            t23     1
;                                   texture     f32          3d      T5            t14     1
;                                   texture     f32     2darray      T6            t50     1
;                                   texture     f32     2darray      T7            t21     1
;                                   texture     f32          2d      T8            t18     1
;                                   texture     f32         buf      T9            t24     1
;                                   texture     f32         buf     T10            t25     1
;                                       UAV     f32          3d      U0             u0     1
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
%"class.Texture2DArray<float>" = type { float, %"class.Texture2DArray<float>::mips_type" }
%"class.Texture2DArray<float>::mips_type" = type { i32 }
%"class.Texture2D<float>" = type { float, %"class.Texture2D<float>::mips_type" }
%"class.Texture2D<float>::mips_type" = type { i32 }
%"class.Buffer<vector<float, 3> >" = type { <3 x float> }
%"class.Buffer<float>" = type { float }
%"class.RWTexture3D<vector<float, 3> >" = type { <3 x float> }
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

define void @cs_vol_sh_combine_multi_lightgrid_isotropic_skylight() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 25, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 24, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 18, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 21, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 50, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 14, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 23, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 22, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 29, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 31, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 32, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call i32 @dx.op.threadId.i32(i32 93, i32 0)  ; ThreadId(component)
  %18 = call i32 @dx.op.threadId.i32(i32 93, i32 1)  ; ThreadId(component)
  %19 = call i32 @dx.op.threadId.i32(i32 93, i32 2)  ; ThreadId(component)
  %20 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %15, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %21 = extractvalue %dx.types.CBufRet.i32 %20, 0
  %22 = extractvalue %dx.types.CBufRet.i32 %20, 1
  %23 = extractvalue %dx.types.CBufRet.i32 %20, 2
  %24 = add i32 %21, 3
  %25 = add i32 %22, 3
  %26 = add i32 %23, 3
  %27 = lshr i32 %24, 2
  %28 = lshr i32 %25, 2
  %29 = lshr i32 %26, 2
  %30 = icmp uge i32 %17, %27
  %31 = icmp uge i32 %18, %28
  %32 = icmp uge i32 %19, %29
  %33 = or i1 %30, %31
  %34 = or i1 %32, %33
  br i1 %34, label %42, label %35, !dx.controlflow.hints !30

; <label>:35                                      ; preds = %0
  %36 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %6, i32 0, i32 %17, i32 %18, i32 0, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %37 = extractvalue %dx.types.ResRet.f32 %36, 0
  %38 = fmul fast float %37, 2.550000e+02
  %39 = fadd fast float %38, 0x3F70101020000000
  %40 = fptoui float %39 to i32
  %41 = icmp ule i32 %19, %40
  br label %42

; <label>:42                                      ; preds = %35, %0
  %43 = phi i1 [ %41, %35 ], [ false, %0 ]
  br i1 %43, label %44, label %733, !dx.controlflow.hints !31

; <label>:44                                      ; preds = %42
  %45 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %16, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %46 = extractvalue %dx.types.CBufRet.i32 %45, 2
  %47 = icmp sgt i32 %46, 0
  br i1 %47, label %48, label %100

; <label>:48                                      ; preds = %44
  br label %49

; <label>:49                                      ; preds = %49, %48
  %50 = phi float [ %92, %49 ], [ 0.000000e+00, %48 ]
  %51 = phi float [ %85, %49 ], [ 0.000000e+00, %48 ]
  %52 = phi float [ %86, %49 ], [ 0.000000e+00, %48 ]
  %53 = phi float [ %87, %49 ], [ 0.000000e+00, %48 ]
  %54 = phi i32 [ %91, %49 ], [ 0, %48 ]
  %55 = phi i32 [ %89, %49 ], [ 0, %48 ]
  %56 = phi i32 [ %93, %49 ], [ 0, %48 ]
  %57 = mul i32 %27, %28
  %58 = mul i32 %57, %29
  %59 = add i32 %58, %57
  %60 = mul i32 %56, %59
  %61 = mul i32 %57, %19
  %62 = mul i32 %27, %18
  %63 = add i32 %62, %17
  %64 = add i32 %63, %57
  %65 = add i32 %64, %61
  %66 = add i32 %65, %60
  %67 = mul i32 %56, %58
  %68 = add i32 %63, %61
  %69 = add i32 %68, %67
  %70 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %66, i32 undef)  ; BufferLoad(srv,index,wot)
  %71 = extractvalue %dx.types.ResRet.f32 %70, 0
  %72 = extractvalue %dx.types.ResRet.f32 %70, 1
  %73 = extractvalue %dx.types.ResRet.f32 %70, 2
  %74 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %75 = extractvalue %dx.types.CBufRet.f32 %74, 1
  %76 = fmul fast float %75, %71
  %77 = fmul fast float %75, %72
  %78 = fmul fast float %75, %73
  %79 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %69, i32 undef)  ; BufferLoad(srv,index,wot)
  %80 = extractvalue %dx.types.ResRet.f32 %79, 0
  %81 = fmul fast float %80, %80
  %82 = fmul fast float %76, %81
  %83 = fmul fast float %77, %81
  %84 = fmul fast float %78, %81
  %85 = fadd fast float %82, %51
  %86 = fadd fast float %83, %52
  %87 = fadd fast float %84, %53
  %88 = fcmp fast oeq float %81, 0.000000e+00
  %89 = select i1 %88, i32 1, i32 %55
  %90 = fcmp fast ogt float %81, 0x3F847AE140000000
  %91 = select i1 %90, i32 1, i32 %54
  %92 = fadd fast float %81, %50
  %93 = add nuw nsw i32 %56, 1
  %94 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %16, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %95 = extractvalue %dx.types.CBufRet.i32 %94, 2
  %96 = icmp slt i32 %93, %95
  br i1 %96, label %49, label %97

; <label>:97                                      ; preds = %49
  %98 = icmp ne i32 %89, 0
  %99 = icmp eq i32 %91, 0
  br label %100

; <label>:100                                     ; preds = %97, %44
  %101 = phi float [ 0.000000e+00, %44 ], [ %92, %97 ]
  %102 = phi float [ 0.000000e+00, %44 ], [ %85, %97 ]
  %103 = phi float [ 0.000000e+00, %44 ], [ %86, %97 ]
  %104 = phi float [ 0.000000e+00, %44 ], [ %87, %97 ]
  %105 = phi i1 [ true, %44 ], [ %99, %97 ]
  %106 = phi i1 [ false, %44 ], [ %98, %97 ]
  %107 = and i1 %105, %106
  %108 = fcmp fast ogt float %101, 1.000000e+00
  br i1 %108, label %109, label %114, !dx.controlflow.hints !32

; <label>:109                                     ; preds = %100
  %110 = fdiv fast float 1.000000e+00, %101
  %111 = fmul fast float %110, %102
  %112 = fmul fast float %110, %103
  %113 = fmul fast float %110, %104
  br label %114

; <label>:114                                     ; preds = %109, %100
  %115 = phi float [ 1.000000e+00, %109 ], [ %101, %100 ]
  %116 = phi float [ %111, %109 ], [ %102, %100 ]
  %117 = phi float [ %112, %109 ], [ %103, %100 ]
  %118 = phi float [ %113, %109 ], [ %104, %100 ]
  %119 = call float @dx.op.unary.f32(i32 7, float %115)  ; Saturate(value)
  %120 = fsub fast float 1.000000e+00, %119
  %121 = fcmp fast ogt float %120, 0.000000e+00
  %122 = and i1 %105, %106
  %123 = xor i1 %122, true
  %124 = and i1 %121, %123
  br i1 %124, label %125, label %571, !dx.controlflow.hints !33

; <label>:125                                     ; preds = %114
  %126 = uitofp i32 %17 to float
  %127 = uitofp i32 %18 to float
  %128 = uitofp i32 %19 to float
  %129 = fadd fast float %126, 5.000000e-01
  %130 = fadd fast float %127, 5.000000e-01
  %131 = fadd fast float %128, 5.000000e-01
  %132 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %15, i32 395)  ; CBufferLoadLegacy(handle,regIndex)
  %133 = extractvalue %dx.types.CBufRet.i32 %132, 3
  %134 = add i32 %133, %19
  %135 = and i32 %134, 7
  switch i32 %135, label %143 [
    i32 0, label %144
    i32 1, label %136
    i32 2, label %137
    i32 3, label %138
    i32 4, label %139
    i32 5, label %140
    i32 6, label %141
    i32 7, label %142
  ], !dx.controlflow.hints !34

; <label>:136                                     ; preds = %125
  br label %144

; <label>:137                                     ; preds = %125
  br label %144

; <label>:138                                     ; preds = %125
  br label %144

; <label>:139                                     ; preds = %125
  br label %144

; <label>:140                                     ; preds = %125
  br label %144

; <label>:141                                     ; preds = %125
  br label %144

; <label>:142                                     ; preds = %125
  br label %144

; <label>:143                                     ; preds = %125
  br label %144

; <label>:144                                     ; preds = %143, %142, %141, %140, %139, %138, %137, %136, %125
  %145 = phi float [ 0.000000e+00, %143 ], [ 0xBFAAFDA2C0000000, %142 ], [ 0xBFDC840460000000, %141 ], [ 0x3FAD325520000000, %140 ], [ 0xBFC0D2F360000000, %139 ], [ 0x3FD3DBFA80000000, %138 ], [ 0xBFD546BCA0000000, %137 ], [ 0x3FDD88B380000000, %136 ], [ 0xBF98669800000000, %125 ]
  %146 = phi float [ 0.000000e+00, %143 ], [ 0xBFB3D00D00000000, %142 ], [ 0xBFD1E41C40000000, %141 ], [ 0xBFCDD22A60000000, %140 ], [ 0x3FBD22CF20000000, %139 ], [ 0x3FBA443A80000000, %138 ], [ 0x3FDB80DE80000000, %137 ], [ 0xBFB1C6F4E0000000, %136 ], [ 0xBFDDE0E000000000, %125 ]
  %147 = phi float [ 0.000000e+00, %143 ], [ 0xBFD38FB280000000, %142 ], [ 0xBF8D0A4580000000, %141 ], [ 0x3FD36603C0000000, %140 ], [ 0x3FBA950300000000, %139 ], [ 0xBFC14853E0000000, %138 ], [ 0x3FDBE53FA0000000, %137 ], [ 0x3FD8D79020000000, %136 ], [ 0xBFC22590A0000000, %125 ]
  %148 = fadd fast float %129, %145
  %149 = fadd fast float %130, %146
  %150 = fadd fast float %131, %147
  %151 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %152 = extractvalue %dx.types.CBufRet.f32 %151, 0
  %153 = extractvalue %dx.types.CBufRet.f32 %151, 1
  %154 = fmul fast float %150, 4.000000e+00
  %155 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %156 = extractvalue %dx.types.CBufRet.f32 %155, 0
  %157 = extractvalue %dx.types.CBufRet.f32 %155, 1
  %158 = fmul fast float %154, %157
  %159 = call float @dx.op.unary.f32(i32 21, float %158)  ; Exp(value)
  %160 = fmul fast float %159, %156
  %161 = fsub fast float 4.000000e+00, %156
  %162 = fadd fast float %161, %160
  %163 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %4, i32 0, i32 %17, i32 %18, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %164 = extractvalue %dx.types.ResRet.f32 %163, 0
  %165 = fcmp fast ogt float %164, -1.000000e+00
  %166 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %167 = extractvalue %dx.types.CBufRet.f32 %166, 1
  %168 = select i1 %165, float %167, float 1.000000e+00
  %169 = fadd fast float %164, 1.000000e+00
  %170 = fmul fast float %168, %169
  %171 = call float @dx.op.binary.f32(i32 36, float %162, float %170)  ; FMin(a,b)
  %172 = fmul fast float %148, 8.000000e+00
  %173 = fmul fast float %172, %152
  %174 = fmul fast float %149, 8.000000e+00
  %175 = fmul fast float %174, %153
  %176 = fsub fast float 1.000000e+00, %173
  %177 = fsub fast float 1.000000e+00, %175
  %178 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %179 = extractvalue %dx.types.CBufRet.f32 %178, 0
  %180 = extractvalue %dx.types.CBufRet.f32 %178, 1
  %181 = extractvalue %dx.types.CBufRet.f32 %178, 2
  %182 = fmul fast float %179, %176
  %183 = fmul fast float %180, %176
  %184 = fmul fast float %181, %176
  %185 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %186 = extractvalue %dx.types.CBufRet.f32 %185, 0
  %187 = extractvalue %dx.types.CBufRet.f32 %185, 1
  %188 = extractvalue %dx.types.CBufRet.f32 %185, 2
  %189 = fmul fast float %186, %177
  %190 = fmul fast float %187, %177
  %191 = fmul fast float %188, %177
  %192 = fadd fast float %189, %182
  %193 = fadd fast float %190, %183
  %194 = fadd fast float %191, %184
  %195 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %196 = extractvalue %dx.types.CBufRet.f32 %195, 0
  %197 = extractvalue %dx.types.CBufRet.f32 %195, 1
  %198 = extractvalue %dx.types.CBufRet.f32 %195, 2
  %199 = fadd fast float %192, %196
  %200 = fadd fast float %193, %197
  %201 = fadd fast float %194, %198
  %202 = fmul fast float %199, %171
  %203 = fmul fast float %200, %171
  %204 = fmul fast float %201, %171
  %205 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %206 = extractvalue %dx.types.CBufRet.f32 %205, 0
  %207 = extractvalue %dx.types.CBufRet.f32 %205, 1
  %208 = extractvalue %dx.types.CBufRet.f32 %205, 2
  %209 = fadd fast float %202, %206
  %210 = fadd fast float %203, %207
  %211 = fadd fast float %204, %208
  %212 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %213 = extractvalue %dx.types.CBufRet.f32 %212, 0
  %214 = extractvalue %dx.types.CBufRet.f32 %212, 1
  %215 = fsub fast float %209, %213
  %216 = fsub fast float %210, %214
  %217 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %218 = extractvalue %dx.types.CBufRet.f32 %217, 0
  %219 = extractvalue %dx.types.CBufRet.f32 %217, 1
  %220 = fmul fast float %215, %218
  %221 = fmul fast float %216, %219
  %222 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 263)  ; CBufferLoadLegacy(handle,regIndex)
  %223 = extractvalue %dx.types.CBufRet.f32 %222, 0
  %224 = fmul fast float %220, %223
  %225 = extractvalue %dx.types.CBufRet.f32 %222, 1
  %226 = fadd fast float %224, %225
  %227 = extractvalue %dx.types.CBufRet.f32 %222, 2
  %228 = fmul fast float %227, %221
  %229 = extractvalue %dx.types.CBufRet.f32 %222, 3
  %230 = fadd fast float %228, %229
  %231 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %14, float %226, float %230, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %232 = extractvalue %dx.types.ResRet.f32 %231, 0
  %233 = extractvalue %dx.types.ResRet.f32 %231, 1
  %234 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 259)  ; CBufferLoadLegacy(handle,regIndex)
  %235 = extractvalue %dx.types.CBufRet.f32 %234, 1
  %236 = extractvalue %dx.types.CBufRet.f32 %234, 0
  %237 = fsub fast float %235, %236
  %238 = fmul fast float %237, %232
  %239 = fadd fast float %238, %236
  %240 = extractvalue %dx.types.CBufRet.f32 %234, 3
  %241 = extractvalue %dx.types.CBufRet.f32 %234, 2
  %242 = fsub fast float %240, %241
  %243 = fmul fast float %242, %233
  %244 = fadd fast float %243, %241
  %245 = fsub fast float %211, %239
  %246 = fsub fast float %244, %239
  %247 = fdiv fast float %245, %246
  %248 = call float @dx.op.unary.f32(i32 7, float %247)  ; Saturate(value)
  %249 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 264)  ; CBufferLoadLegacy(handle,regIndex)
  %250 = extractvalue %dx.types.CBufRet.f32 %249, 0
  %251 = fmul fast float %250, %248
  %252 = extractvalue %dx.types.CBufRet.f32 %249, 1
  %253 = fadd fast float %251, %252
  %254 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %14, float %226, float %230, float %253, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %255 = extractvalue %dx.types.ResRet.f32 %254, 0
  %256 = extractvalue %dx.types.ResRet.f32 %254, 1
  %257 = extractvalue %dx.types.ResRet.f32 %254, 2
  %258 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 258)  ; CBufferLoadLegacy(handle,regIndex)
  %259 = extractvalue %dx.types.CBufRet.f32 %258, 0
  %260 = extractvalue %dx.types.CBufRet.f32 %258, 1
  %261 = extractvalue %dx.types.CBufRet.f32 %258, 2
  %262 = fmul fast float %259, %255
  %263 = fmul fast float %260, %256
  %264 = fmul fast float %261, %257
  %265 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 257)  ; CBufferLoadLegacy(handle,regIndex)
  %266 = extractvalue %dx.types.CBufRet.f32 %265, 0
  %267 = extractvalue %dx.types.CBufRet.f32 %265, 1
  %268 = extractvalue %dx.types.CBufRet.f32 %265, 2
  %269 = fadd fast float %262, %266
  %270 = fadd fast float %263, %267
  %271 = fadd fast float %264, %268
  %272 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 262)  ; CBufferLoadLegacy(handle,regIndex)
  %273 = extractvalue %dx.types.CBufRet.f32 %272, 0
  %274 = fmul fast float %273, %220
  %275 = extractvalue %dx.types.CBufRet.f32 %272, 1
  %276 = fadd fast float %274, %275
  %277 = extractvalue %dx.types.CBufRet.f32 %272, 2
  %278 = fmul fast float %277, %221
  %279 = extractvalue %dx.types.CBufRet.f32 %272, 3
  %280 = fadd fast float %278, %279
  %281 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 265)  ; CBufferLoadLegacy(handle,regIndex)
  %282 = extractvalue %dx.types.CBufRet.f32 %281, 0
  %283 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 266)  ; CBufferLoadLegacy(handle,regIndex)
  %284 = extractvalue %dx.types.CBufRet.f32 %283, 0
  %285 = extractvalue %dx.types.CBufRet.f32 %283, 2
  %286 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %14, float %276, float %280, float 0.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %287 = extractvalue %dx.types.ResRet.f32 %286, 0
  %288 = extractvalue %dx.types.ResRet.f32 %286, 1
  %289 = extractvalue %dx.types.ResRet.f32 %286, 2
  %290 = fmul fast float %287, %269
  %291 = fadd fast float %290, %282
  %292 = fmul fast float %288, %269
  %293 = fadd fast float %292, %284
  %294 = fmul fast float %289, %269
  %295 = fadd fast float %294, %285
  %296 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %14, float %276, float %280, float 2.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %297 = extractvalue %dx.types.ResRet.f32 %296, 0
  %298 = extractvalue %dx.types.ResRet.f32 %296, 1
  %299 = extractvalue %dx.types.ResRet.f32 %296, 2
  %300 = fmul fast float %297, %270
  %301 = fadd fast float %291, %300
  %302 = fmul fast float %298, %270
  %303 = fadd fast float %293, %302
  %304 = fmul fast float %299, %270
  %305 = fadd fast float %295, %304
  %306 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %14, float %276, float %280, float 4.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %307 = extractvalue %dx.types.ResRet.f32 %306, 0
  %308 = extractvalue %dx.types.ResRet.f32 %306, 1
  %309 = extractvalue %dx.types.ResRet.f32 %306, 2
  %310 = fmul fast float %307, %271
  %311 = fadd fast float %301, %310
  %312 = fmul fast float %308, %271
  %313 = fadd fast float %303, %312
  %314 = fmul fast float %309, %271
  %315 = fadd fast float %305, %314
  %316 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 255)  ; CBufferLoadLegacy(handle,regIndex)
  %317 = extractvalue %dx.types.CBufRet.f32 %316, 0
  %318 = fsub fast float %209, %317
  %319 = fsub fast float %213, %209
  %320 = call float @dx.op.binary.f32(i32 35, float %319, float %318)  ; FMax(a,b)
  %321 = extractvalue %dx.types.CBufRet.f32 %316, 1
  %322 = fsub fast float %210, %321
  %323 = fsub fast float %214, %210
  %324 = call float @dx.op.binary.f32(i32 35, float %323, float %322)  ; FMax(a,b)
  %325 = call float @dx.op.binary.f32(i32 35, float %320, float %324)  ; FMax(a,b)
  %326 = extractvalue %dx.types.CBufRet.f32 %217, 3
  %327 = fmul fast float %326, %325
  %328 = call float @dx.op.unary.f32(i32 7, float %327)  ; Saturate(value)
  %329 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 272)  ; CBufferLoadLegacy(handle,regIndex)
  %330 = extractvalue %dx.types.CBufRet.f32 %329, 0
  %331 = fsub fast float %330, %311
  %332 = fmul fast float %331, %328
  %333 = fadd fast float %332, %311
  %334 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 273)  ; CBufferLoadLegacy(handle,regIndex)
  %335 = extractvalue %dx.types.CBufRet.f32 %334, 0
  %336 = fsub fast float %335, %313
  %337 = fmul fast float %336, %328
  %338 = fadd fast float %337, %313
  %339 = extractvalue %dx.types.CBufRet.f32 %334, 2
  %340 = fsub fast float %339, %315
  %341 = fmul fast float %340, %328
  %342 = fadd fast float %341, %315
  %343 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 267)  ; CBufferLoadLegacy(handle,regIndex)
  %344 = extractvalue %dx.types.CBufRet.f32 %343, 0
  %345 = fmul fast float %344, %333
  %346 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 268)  ; CBufferLoadLegacy(handle,regIndex)
  %347 = extractvalue %dx.types.CBufRet.f32 %346, 0
  %348 = fmul fast float %347, %338
  %349 = fadd fast float %348, %345
  %350 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 269)  ; CBufferLoadLegacy(handle,regIndex)
  %351 = extractvalue %dx.types.CBufRet.f32 %350, 0
  %352 = fmul fast float %351, %342
  %353 = fadd fast float %349, %352
  %354 = extractvalue %dx.types.CBufRet.f32 %343, 1
  %355 = fmul fast float %354, %333
  %356 = extractvalue %dx.types.CBufRet.f32 %346, 1
  %357 = fmul fast float %356, %338
  %358 = fadd fast float %357, %355
  %359 = extractvalue %dx.types.CBufRet.f32 %350, 1
  %360 = fmul fast float %359, %342
  %361 = fadd fast float %358, %360
  %362 = extractvalue %dx.types.CBufRet.f32 %343, 2
  %363 = fmul fast float %362, %333
  %364 = extractvalue %dx.types.CBufRet.f32 %346, 2
  %365 = fmul fast float %364, %338
  %366 = fadd fast float %365, %363
  %367 = extractvalue %dx.types.CBufRet.f32 %350, 2
  %368 = fmul fast float %367, %342
  %369 = fadd fast float %366, %368
  %370 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %353)  ; FMax(a,b)
  %371 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %361)  ; FMax(a,b)
  %372 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %369)  ; FMax(a,b)
  %373 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 271)  ; CBufferLoadLegacy(handle,regIndex)
  %374 = extractvalue %dx.types.CBufRet.f32 %373, 0
  %375 = fcmp fast ogt float %374, 0.000000e+00
  %376 = fcmp fast oge float %220, 0.000000e+00
  %377 = and i1 %376, %375
  %378 = fcmp fast ole float %220, 1.000000e+00
  %379 = and i1 %378, %377
  %380 = fcmp fast oge float %221, 0.000000e+00
  %381 = and i1 %380, %379
  %382 = fcmp fast ole float %221, 1.000000e+00
  %383 = and i1 %382, %381
  br i1 %383, label %384, label %524, !dx.controlflow.hints !35

; <label>:384                                     ; preds = %144
  %385 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 270)  ; CBufferLoadLegacy(handle,regIndex)
  %386 = extractvalue %dx.types.CBufRet.f32 %385, 2
  %387 = extractvalue %dx.types.CBufRet.f32 %385, 3
  %388 = fmul fast float %386, %220
  %389 = fmul fast float %387, %221
  %390 = call float @dx.op.unary.f32(i32 27, float %388)  ; Round_ni(value)
  %391 = call float @dx.op.unary.f32(i32 27, float %389)  ; Round_ni(value)
  %392 = fptosi float %390 to i32
  %393 = fptosi float %391 to i32
  %394 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %9, i32 0, i32 %392, i32 %393, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %395 = extractvalue %dx.types.ResRet.i32 %394, 0
  %396 = and i32 %395, 65535
  %397 = lshr i32 %395, 16
  %398 = icmp eq i32 %396, 65535
  br i1 %398, label %435, label %399, !dx.controlflow.hints !36

; <label>:399                                     ; preds = %384
  %400 = extractvalue %dx.types.CBufRet.f32 %373, 1
  %401 = extractvalue %dx.types.CBufRet.f32 %385, 0
  %402 = extractvalue %dx.types.CBufRet.f32 %385, 1
  %403 = fmul fast float %401, %220
  %404 = fmul fast float %402, %221
  %405 = fmul fast float %403, 1.250000e-01
  %406 = fmul fast float %404, 1.250000e-01
  %407 = call float @dx.op.unary.f32(i32 27, float %405)  ; Round_ni(value)
  %408 = call float @dx.op.unary.f32(i32 27, float %406)  ; Round_ni(value)
  %409 = fmul fast float %407, 8.000000e+00
  %410 = fmul fast float %408, 8.000000e+00
  %411 = and i32 %395, 255
  %412 = lshr i32 %395, 8
  %413 = and i32 %412, 255
  %414 = mul nuw nsw i32 %411, 9
  %415 = uitofp i32 %414 to float
  %416 = mul nuw nsw i32 %413, 9
  %417 = uitofp i32 %416 to float
  %418 = fadd fast float %415, 5.000000e-01
  %419 = fadd fast float %418, %403
  %420 = fsub fast float %419, %409
  %421 = fadd fast float %417, 5.000000e-01
  %422 = fadd fast float %421, %404
  %423 = fsub fast float %422, %410
  %424 = fdiv fast float %420, %374
  %425 = fdiv fast float %423, %400
  %426 = fmul fast float %248, 4.375000e-01
  %427 = fadd fast float %426, 3.125000e-02
  %428 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %14, float %424, float %425, float %427, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %429 = extractvalue %dx.types.ResRet.f32 %428, 0
  %430 = extractvalue %dx.types.ResRet.f32 %428, 1
  %431 = extractvalue %dx.types.ResRet.f32 %428, 2
  %432 = fadd fast float %429, %370
  %433 = fadd fast float %430, %371
  %434 = fadd fast float %431, %372
  br label %435

; <label>:435                                     ; preds = %399, %384
  %436 = phi float [ %434, %399 ], [ %372, %384 ]
  %437 = phi float [ %433, %399 ], [ %371, %384 ]
  %438 = phi float [ %432, %399 ], [ %370, %384 ]
  %439 = icmp eq i32 %397, 65535
  br i1 %439, label %524, label %440, !dx.controlflow.hints !37

; <label>:440                                     ; preds = %435
  %441 = extractvalue %dx.types.CBufRet.f32 %373, 1
  %442 = extractvalue %dx.types.CBufRet.f32 %385, 0
  %443 = extractvalue %dx.types.CBufRet.f32 %385, 1
  %444 = fmul fast float %442, %220
  %445 = fmul fast float %443, %221
  %446 = fmul fast float %444, 1.250000e-01
  %447 = fmul fast float %445, 1.250000e-01
  %448 = call float @dx.op.unary.f32(i32 27, float %446)  ; Round_ni(value)
  %449 = call float @dx.op.unary.f32(i32 27, float %447)  ; Round_ni(value)
  %450 = fmul fast float %448, 8.000000e+00
  %451 = fmul fast float %449, 8.000000e+00
  %452 = fsub fast float %444, %450
  %453 = fsub fast float %445, %451
  %454 = fadd fast float %452, 5.000000e-01
  %455 = fadd fast float %453, 5.000000e-01
  %456 = and i32 %397, 255
  %457 = lshr i32 %395, 24
  %458 = mul nuw nsw i32 %456, 9
  %459 = uitofp i32 %458 to float
  %460 = mul nuw nsw i32 %457, 9
  %461 = uitofp i32 %460 to float
  %462 = fadd fast float %454, %459
  %463 = fadd fast float %455, %461
  %464 = fdiv fast float %462, %374
  %465 = fdiv fast float %463, %441
  %466 = fmul fast float %248, 4.375000e-01
  %467 = fadd fast float %466, 3.125000e-02
  %468 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %14, float %464, float %465, float %467, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %469 = extractvalue %dx.types.ResRet.f32 %468, 0
  %470 = extractvalue %dx.types.ResRet.f32 %468, 1
  %471 = extractvalue %dx.types.ResRet.f32 %468, 2
  %472 = fadd fast float %466, 5.312500e-01
  %473 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %14, float %464, float %465, float %472, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %474 = extractvalue %dx.types.ResRet.f32 %473, 0
  %475 = extractvalue %dx.types.ResRet.f32 %473, 1
  %476 = extractvalue %dx.types.ResRet.f32 %473, 2
  %477 = fmul fast float %474, 2.000000e+00
  %478 = fmul fast float %475, 2.000000e+00
  %479 = fmul fast float %476, 2.000000e+00
  %480 = fadd fast float %477, -1.000000e+00
  %481 = fadd fast float %478, -1.000000e+00
  %482 = fadd fast float %479, -1.000000e+00
  %483 = fmul fast float %480, %480
  %484 = fmul fast float %481, %481
  %485 = fadd fast float %483, %484
  %486 = fmul fast float %482, %482
  %487 = fadd fast float %485, %486
  %488 = call float @dx.op.unary.f32(i32 24, float %487)  ; Sqrt(value)
  %489 = fcmp fast ogt float %488, 0.000000e+00
  br i1 %489, label %490, label %494, !dx.controlflow.hints !38

; <label>:490                                     ; preds = %440
  %491 = fdiv fast float %480, %488
  %492 = fdiv fast float %481, %488
  %493 = fdiv fast float %482, %488
  br label %494

; <label>:494                                     ; preds = %490, %440
  %495 = phi float [ %491, %490 ], [ 0.000000e+00, %440 ]
  %496 = phi float [ %492, %490 ], [ 0.000000e+00, %440 ]
  %497 = phi float [ %493, %490 ], [ 0.000000e+00, %440 ]
  %498 = fmul fast float %202, %202
  %499 = fmul fast float %203, %203
  %500 = fadd fast float %498, %499
  %501 = call float @dx.op.unary.f32(i32 24, float %500)  ; Sqrt(value)
  %502 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 274)  ; CBufferLoadLegacy(handle,regIndex)
  %503 = extractvalue %dx.types.CBufRet.f32 %502, 0
  %504 = extractvalue %dx.types.CBufRet.f32 %502, 1
  %505 = fsub fast float %501, %503
  %506 = fdiv fast float %505, %504
  %507 = call float @dx.op.unary.f32(i32 7, float %506)  ; Saturate(value)
  %508 = fmul fast float %507, 2.000000e+00
  %509 = fsub fast float 3.000000e+00, %508
  %510 = fmul fast float %507, %507
  %511 = fmul fast float %510, %509
  %512 = call float @dx.op.dot3.f32(i32 55, float %495, float %496, float %497, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %513 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %512)  ; FMax(a,b)
  %514 = fmul fast float %513, 0x400C5BF8A0000000
  %515 = fmul fast float %511, %469
  %516 = fmul fast float %515, %514
  %517 = fadd fast float %516, %438
  %518 = fmul fast float %511, %470
  %519 = fmul fast float %518, %514
  %520 = fadd fast float %519, %437
  %521 = fmul fast float %511, %471
  %522 = fmul fast float %521, %514
  %523 = fadd fast float %522, %436
  br label %524

; <label>:524                                     ; preds = %494, %435, %144
  %525 = phi float [ %523, %494 ], [ %436, %435 ], [ %372, %144 ]
  %526 = phi float [ %520, %494 ], [ %437, %435 ], [ %371, %144 ]
  %527 = phi float [ %517, %494 ], [ %438, %435 ], [ %370, %144 ]
  %528 = fcmp fast ogt float %211, %244
  %529 = and i1 %376, %528
  %530 = and i1 %378, %529
  %531 = and i1 %380, %530
  %532 = and i1 %382, %531
  br i1 %532, label %533, label %551, !dx.controlflow.hints !39

; <label>:533                                     ; preds = %524
  %534 = fmul fast float %246, 0x3FC24924A0000000
  %535 = fsub fast float %211, %244
  %536 = fdiv fast float %535, %534
  %537 = call float @dx.op.unary.f32(i32 7, float %536)  ; Saturate(value)
  %538 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 275)  ; CBufferLoadLegacy(handle,regIndex)
  %539 = extractvalue %dx.types.CBufRet.f32 %538, 0
  %540 = fsub fast float %539, %527
  %541 = fmul fast float %540, %537
  %542 = fadd fast float %541, %527
  %543 = extractvalue %dx.types.CBufRet.f32 %538, 1
  %544 = fsub fast float %543, %526
  %545 = fmul fast float %544, %537
  %546 = fadd fast float %545, %526
  %547 = extractvalue %dx.types.CBufRet.f32 %538, 2
  %548 = fsub fast float %547, %525
  %549 = fmul fast float %548, %537
  %550 = fadd fast float %549, %525
  br label %551

; <label>:551                                     ; preds = %533, %524
  %552 = phi float [ %550, %533 ], [ %525, %524 ]
  %553 = phi float [ %546, %533 ], [ %526, %524 ]
  %554 = phi float [ %542, %533 ], [ %527, %524 ]
  %555 = extractvalue %dx.types.CBufRet.f32 %316, 3
  %556 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %557 = extractvalue %dx.types.CBufRet.f32 %556, 3
  %558 = fmul fast float %120, 0x3FD20DD760000000
  %559 = fmul fast float %558, %554
  %560 = fmul fast float %559, %555
  %561 = fmul fast float %560, %557
  %562 = fmul fast float %558, %553
  %563 = fmul fast float %562, %555
  %564 = fmul fast float %563, %557
  %565 = fmul fast float %558, %552
  %566 = fmul fast float %565, %555
  %567 = fmul fast float %566, %557
  %568 = fadd fast float %561, %116
  %569 = fadd fast float %564, %117
  %570 = fadd fast float %567, %118
  br label %571

; <label>:571                                     ; preds = %551, %114
  %572 = phi float [ %568, %551 ], [ %116, %114 ]
  %573 = phi float [ %569, %551 ], [ %117, %114 ]
  %574 = phi float [ %570, %551 ], [ %118, %114 ]
  %575 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 394)  ; CBufferLoadLegacy(handle,regIndex)
  %576 = extractvalue %dx.types.CBufRet.f32 %575, 3
  %577 = select i1 %107, float 1.000000e+00, float %576
  %578 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %16, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %579 = extractvalue %dx.types.CBufRet.i32 %578, 3
  %580 = icmp eq i32 %579, 0
  br i1 %580, label %724, label %581, !dx.controlflow.hints !40

; <label>:581                                     ; preds = %571
  %582 = uitofp i32 %17 to float
  %583 = uitofp i32 %18 to float
  %584 = uitofp i32 %19 to float
  %585 = fadd fast float %582, 5.000000e-01
  %586 = fadd fast float %583, 5.000000e-01
  %587 = fadd fast float %584, 5.000000e-01
  %588 = fmul fast float %587, 4.000000e+00
  %589 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %590 = extractvalue %dx.types.CBufRet.f32 %589, 0
  %591 = extractvalue %dx.types.CBufRet.f32 %589, 1
  %592 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %593 = extractvalue %dx.types.CBufRet.f32 %592, 0
  %594 = extractvalue %dx.types.CBufRet.f32 %592, 1
  %595 = fmul fast float %588, %594
  %596 = call float @dx.op.unary.f32(i32 21, float %595)  ; Exp(value)
  %597 = fmul fast float %596, %593
  %598 = fsub fast float 4.000000e+00, %593
  %599 = fadd fast float %598, %597
  %600 = fmul fast float %585, 8.000000e+00
  %601 = fmul fast float %600, %590
  %602 = fmul fast float %586, 8.000000e+00
  %603 = fmul fast float %602, %591
  %604 = fsub fast float 1.000000e+00, %601
  %605 = fsub fast float 1.000000e+00, %603
  %606 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %607 = extractvalue %dx.types.CBufRet.f32 %606, 0
  %608 = extractvalue %dx.types.CBufRet.f32 %606, 1
  %609 = extractvalue %dx.types.CBufRet.f32 %606, 2
  %610 = fmul fast float %607, %604
  %611 = fmul fast float %608, %604
  %612 = fmul fast float %609, %604
  %613 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %614 = extractvalue %dx.types.CBufRet.f32 %613, 0
  %615 = extractvalue %dx.types.CBufRet.f32 %613, 1
  %616 = extractvalue %dx.types.CBufRet.f32 %613, 2
  %617 = fmul fast float %614, %605
  %618 = fmul fast float %615, %605
  %619 = fmul fast float %616, %605
  %620 = fadd fast float %617, %610
  %621 = fadd fast float %618, %611
  %622 = fadd fast float %619, %612
  %623 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %624 = extractvalue %dx.types.CBufRet.f32 %623, 0
  %625 = extractvalue %dx.types.CBufRet.f32 %623, 1
  %626 = extractvalue %dx.types.CBufRet.f32 %623, 2
  %627 = fadd fast float %620, %624
  %628 = fadd fast float %621, %625
  %629 = fadd fast float %622, %626
  %630 = fmul fast float %627, %599
  %631 = fmul fast float %628, %599
  %632 = fmul fast float %629, %599
  %633 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 385)  ; CBufferLoadLegacy(handle,regIndex)
  %634 = extractvalue %dx.types.CBufRet.f32 %633, 0
  %635 = extractvalue %dx.types.CBufRet.f32 %633, 1
  %636 = extractvalue %dx.types.CBufRet.f32 %633, 3
  %637 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 386)  ; CBufferLoadLegacy(handle,regIndex)
  %638 = extractvalue %dx.types.CBufRet.f32 %637, 0
  %639 = extractvalue %dx.types.CBufRet.f32 %637, 1
  %640 = extractvalue %dx.types.CBufRet.f32 %637, 3
  %641 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 387)  ; CBufferLoadLegacy(handle,regIndex)
  %642 = extractvalue %dx.types.CBufRet.f32 %641, 0
  %643 = extractvalue %dx.types.CBufRet.f32 %641, 1
  %644 = extractvalue %dx.types.CBufRet.f32 %641, 3
  %645 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 388)  ; CBufferLoadLegacy(handle,regIndex)
  %646 = extractvalue %dx.types.CBufRet.f32 %645, 0
  %647 = extractvalue %dx.types.CBufRet.f32 %645, 1
  %648 = extractvalue %dx.types.CBufRet.f32 %645, 3
  %649 = fmul fast float %630, %634
  %650 = call float @dx.op.tertiary.f32(i32 46, float %638, float %631, float %649)  ; FMad(a,b,c)
  %651 = call float @dx.op.tertiary.f32(i32 46, float %642, float %632, float %650)  ; FMad(a,b,c)
  %652 = fadd fast float %651, %646
  %653 = fmul fast float %630, %635
  %654 = call float @dx.op.tertiary.f32(i32 46, float %639, float %631, float %653)  ; FMad(a,b,c)
  %655 = call float @dx.op.tertiary.f32(i32 46, float %643, float %632, float %654)  ; FMad(a,b,c)
  %656 = fadd fast float %655, %647
  %657 = fmul fast float %630, %636
  %658 = call float @dx.op.tertiary.f32(i32 46, float %640, float %631, float %657)  ; FMad(a,b,c)
  %659 = call float @dx.op.tertiary.f32(i32 46, float %644, float %632, float %658)  ; FMad(a,b,c)
  %660 = fadd fast float %659, %648
  %661 = fmul fast float %652, 5.000000e-01
  %662 = fdiv fast float %661, %660
  %663 = fadd fast float %662, 5.000000e-01
  %664 = fmul fast float %656, -5.000000e-01
  %665 = fdiv fast float %664, %660
  %666 = fadd fast float %665, 5.000000e-01
  %667 = extractvalue %dx.types.CBufRet.f32 %592, 2
  %668 = extractvalue %dx.types.CBufRet.f32 %592, 3
  %669 = fadd fast float %660, -4.000000e+00
  %670 = call float @dx.op.binary.f32(i32 35, float %669, float 0.000000e+00)  ; FMax(a,b)
  %671 = fadd fast float %670, %593
  %672 = fmul fast float %671, %667
  %673 = call float @dx.op.unary.f32(i32 23, float %672)  ; Log(value)
  %674 = fmul fast float %673, %668
  %675 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %676 = extractvalue %dx.types.CBufRet.f32 %675, 2
  %677 = fmul fast float %674, %676
  %678 = call float @dx.op.unary.f32(i32 27, float %663)  ; Round_ni(value)
  %679 = call float @dx.op.unary.f32(i32 6, float %678)  ; FAbs(value)
  %680 = call float @dx.op.unary.f32(i32 27, float %666)  ; Round_ni(value)
  %681 = call float @dx.op.unary.f32(i32 6, float %680)  ; FAbs(value)
  %682 = fadd fast float %681, %679
  %683 = call float @dx.op.unary.f32(i32 27, float %677)  ; Round_ni(value)
  %684 = call float @dx.op.unary.f32(i32 6, float %683)  ; FAbs(value)
  %685 = fadd fast float %682, %684
  %686 = fcmp fast oeq float %685, 0.000000e+00
  br i1 %686, label %687, label %724, !dx.controlflow.hints !41

; <label>:687                                     ; preds = %581
  %688 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %5, %dx.types.Handle %14, float %663, float %666, float 0.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %689 = extractvalue %dx.types.ResRet.f32 %688, 0
  %690 = extractvalue %dx.types.ResRet.f32 %688, 1
  %691 = extractvalue %dx.types.ResRet.f32 %688, 2
  %692 = extractvalue %dx.types.ResRet.f32 %688, 3
  %693 = call float @dx.op.binary.f32(i32 36, float %690, float %691)  ; FMin(a,b)
  %694 = call float @dx.op.binary.f32(i32 36, float %689, float %693)  ; FMin(a,b)
  %695 = call float @dx.op.binary.f32(i32 36, float %694, float %692)  ; FMin(a,b)
  %696 = fmul fast float %695, 2.550000e+02
  %697 = fadd fast float %696, 0x3F70101020000000
  %698 = fptoui float %697 to i32
  %699 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %15, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %700 = extractvalue %dx.types.CBufRet.i32 %699, 1
  %701 = uitofp i32 %700 to float
  %702 = fmul fast float %701, %677
  %703 = fptosi float %702 to i32
  %704 = icmp slt i32 %703, %698
  br i1 %704, label %705, label %724, !dx.controlflow.hints !42

; <label>:705                                     ; preds = %687
  %706 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %13, float %663, float %666, float %677, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %707 = extractvalue %dx.types.ResRet.f32 %706, 0
  %708 = extractvalue %dx.types.ResRet.f32 %706, 1
  %709 = extractvalue %dx.types.ResRet.f32 %706, 2
  %710 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %711 = extractvalue %dx.types.CBufRet.f32 %710, 2
  %712 = fmul fast float %711, %707
  %713 = fmul fast float %711, %708
  %714 = fmul fast float %711, %709
  %715 = fsub fast float %712, %572
  %716 = fsub fast float %713, %573
  %717 = fsub fast float %714, %574
  %718 = fmul fast float %715, %577
  %719 = fmul fast float %716, %577
  %720 = fmul fast float %717, %577
  %721 = fadd fast float %718, %572
  %722 = fadd fast float %719, %573
  %723 = fadd fast float %720, %574
  br label %724

; <label>:724                                     ; preds = %705, %687, %581, %571
  %725 = phi float [ %721, %705 ], [ %572, %687 ], [ %572, %581 ], [ %572, %571 ]
  %726 = phi float [ %722, %705 ], [ %573, %687 ], [ %573, %581 ], [ %573, %571 ]
  %727 = phi float [ %723, %705 ], [ %574, %687 ], [ %574, %581 ], [ %574, %571 ]
  %728 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %729 = extractvalue %dx.types.CBufRet.f32 %728, 0
  %730 = fmul fast float %729, %725
  %731 = fmul fast float %729, %726
  %732 = fmul fast float %729, %727
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %17, i32 %18, i32 %19, float %730, float %731, float %732, float %730, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %733

; <label>:733                                     ; preds = %724, %42
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @dx.op.threadId.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare float @dx.op.unary.f32(i32, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32) #1

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32, %dx.types.Handle, i32, i32) #1

; Function Attrs: nounwind readnone
declare float @dx.op.binary.f32(i32, float, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.dot3.f32(i32, float, float, float, float, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #1

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32) #1

; Function Attrs: nounwind readnone
declare float @dx.op.tertiary.f32(i32, float, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32) #1

; Function Attrs: nounwind
declare void @dx.op.textureStore.f32(i32, %dx.types.Handle, i32, i32, i32, float, float, float, float, i8) #2

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32, %dx.types.Handle, i32) #1

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32, %dx.types.Handle, i32) #1

; Function Attrs: nounwind readonly
declare %dx.types.Handle @dx.op.createHandle(i32, i8, i32, i32, i1) #1

attributes #0 = { nounwind readnone }
attributes #1 = { nounwind readonly }
attributes #2 = { nounwind }

!llvm.ident = !{!0}
!dx.version = !{!1}
!dx.valver = !{!2}
!dx.shaderModel = !{!3}
!dx.resources = !{!4}
!dx.entryPoints = !{!27}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !19, !21, !24}
!5 = !{!6, !8, !9, !10, !12, !13, !14, !15, !16, !17, !18}
!6 = !{i32 0, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 0, i32 32, i32 1, i32 7, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 0, i32 31, i32 1, i32 4, i32 0, !7}
!9 = !{i32 2, %"class.Texture2D<vector<float, 2> >"* undef, !"", i32 0, i32 29, i32 1, i32 2, i32 0, !7}
!10 = !{i32 3, %"class.Texture2D<unsigned int>"* undef, !"", i32 0, i32 22, i32 1, i32 2, i32 0, !11}
!11 = !{i32 0, i32 5}
!12 = !{i32 4, %"class.Texture3D<vector<float, 3> >"* undef, !"", i32 0, i32 23, i32 1, i32 4, i32 0, !7}
!13 = !{i32 5, %"class.Texture3D<vector<float, 3> >"* undef, !"", i32 0, i32 14, i32 1, i32 4, i32 0, !7}
!14 = !{i32 6, %"class.Texture2DArray<float>"* undef, !"", i32 0, i32 50, i32 1, i32 7, i32 0, !7}
!15 = !{i32 7, %"class.Texture2DArray<float>"* undef, !"", i32 0, i32 21, i32 1, i32 7, i32 0, !7}
!16 = !{i32 8, %"class.Texture2D<float>"* undef, !"", i32 0, i32 18, i32 1, i32 2, i32 0, !7}
!17 = !{i32 9, %"class.Buffer<vector<float, 3> >"* undef, !"", i32 0, i32 24, i32 1, i32 10, i32 0, !7}
!18 = !{i32 10, %"class.Buffer<float>"* undef, !"", i32 0, i32 25, i32 1, i32 10, i32 0, !7}
!19 = !{!20}
!20 = !{i32 0, %"class.RWTexture3D<vector<float, 3> >"* undef, !"", i32 0, i32 0, i32 1, i32 4, i1 false, i1 false, i1 false, !7}
!21 = !{!22, !23}
!22 = !{i32 0, %VolumetricLightGridConstants* undef, !"", i32 0, i32 1, i32 1, i32 32, null}
!23 = !{i32 1, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!24 = !{!25, !26}
!25 = !{i32 0, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!26 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!27 = !{void ()* @cs_vol_sh_combine_multi_lightgrid_isotropic_skylight, !"cs_vol_sh_combine_multi_lightgrid_isotropic_skylight", null, !4, !28}
!28 = !{i32 0, i64 256, i32 4, !29}
!29 = !{i32 4, i32 4, i32 4}
!30 = distinct !{!30, !"dx.controlflow.hints", i32 2}
!31 = distinct !{!31, !"dx.controlflow.hints", i32 2}
!32 = distinct !{!32, !"dx.controlflow.hints", i32 1}
!33 = distinct !{!33, !"dx.controlflow.hints", i32 2}
!34 = distinct !{!34, !"dx.controlflow.hints", i32 2}
!35 = distinct !{!35, !"dx.controlflow.hints", i32 1}
!36 = distinct !{!36, !"dx.controlflow.hints", i32 2}
!37 = distinct !{!37, !"dx.controlflow.hints", i32 2}
!38 = distinct !{!38, !"dx.controlflow.hints", i32 2}
!39 = distinct !{!39, !"dx.controlflow.hints", i32 1}
!40 = distinct !{!40, !"dx.controlflow.hints", i32 2}
!41 = distinct !{!41, !"dx.controlflow.hints", i32 2}
!42 = distinct !{!42, !"dx.controlflow.hints", i32 1}

