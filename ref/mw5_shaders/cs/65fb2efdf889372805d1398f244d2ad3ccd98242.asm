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
; shader hash: 2ccbb2febb32ab2b1475a8c512c117a3
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

define void @cs_vol_sh_combine_multi_lightgrid_aniso() {
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
  br i1 %43, label %44, label %995, !dx.controlflow.hints !31

; <label>:44                                      ; preds = %42
  %45 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %16, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %46 = extractvalue %dx.types.CBufRet.i32 %45, 2
  %47 = icmp sgt i32 %46, 0
  br i1 %47, label %48, label %98

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
  br label %98

; <label>:98                                      ; preds = %97, %44
  %99 = phi float [ 0.000000e+00, %44 ], [ %92, %97 ]
  %100 = phi float [ 0.000000e+00, %44 ], [ %85, %97 ]
  %101 = phi float [ 0.000000e+00, %44 ], [ %86, %97 ]
  %102 = phi float [ 0.000000e+00, %44 ], [ %87, %97 ]
  %103 = phi i32 [ 0, %44 ], [ %91, %97 ]
  %104 = phi i32 [ 0, %44 ], [ %89, %97 ]
  %105 = icmp ne i32 %104, 0
  %106 = icmp eq i32 %103, 0
  %107 = and i1 %106, %105
  %108 = fcmp fast ogt float %99, 1.000000e+00
  br i1 %108, label %109, label %114, !dx.controlflow.hints !32

; <label>:109                                     ; preds = %98
  %110 = fdiv fast float 1.000000e+00, %99
  %111 = fmul fast float %110, %100
  %112 = fmul fast float %110, %101
  %113 = fmul fast float %110, %102
  br label %114

; <label>:114                                     ; preds = %109, %98
  %115 = phi float [ 1.000000e+00, %109 ], [ %99, %98 ]
  %116 = phi float [ %111, %109 ], [ %100, %98 ]
  %117 = phi float [ %112, %109 ], [ %101, %98 ]
  %118 = phi float [ %113, %109 ], [ %102, %98 ]
  %119 = call float @dx.op.unary.f32(i32 7, float %115)  ; Saturate(value)
  %120 = fsub fast float 1.000000e+00, %119
  %121 = fcmp fast ogt float %120, 0.000000e+00
  %122 = and i1 %106, %105
  %123 = xor i1 %122, true
  %124 = and i1 %121, %123
  br i1 %124, label %125, label %833, !dx.controlflow.hints !33

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
  %283 = extractvalue %dx.types.CBufRet.f32 %281, 1
  %284 = extractvalue %dx.types.CBufRet.f32 %281, 2
  %285 = extractvalue %dx.types.CBufRet.f32 %281, 3
  %286 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 266)  ; CBufferLoadLegacy(handle,regIndex)
  %287 = extractvalue %dx.types.CBufRet.f32 %286, 0
  %288 = extractvalue %dx.types.CBufRet.f32 %286, 1
  %289 = extractvalue %dx.types.CBufRet.f32 %286, 2
  %290 = extractvalue %dx.types.CBufRet.f32 %286, 3
  %291 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %14, float %276, float %280, float 0.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %292 = extractvalue %dx.types.ResRet.f32 %291, 0
  %293 = extractvalue %dx.types.ResRet.f32 %291, 1
  %294 = extractvalue %dx.types.ResRet.f32 %291, 2
  %295 = extractvalue %dx.types.ResRet.f32 %291, 3
  %296 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %14, float %276, float %280, float 1.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %297 = extractvalue %dx.types.ResRet.f32 %296, 0
  %298 = extractvalue %dx.types.ResRet.f32 %296, 1
  %299 = extractvalue %dx.types.ResRet.f32 %296, 2
  %300 = extractvalue %dx.types.ResRet.f32 %296, 3
  %301 = fmul fast float %292, %269
  %302 = fmul fast float %297, %269
  %303 = fmul fast float %299, %269
  %304 = fmul fast float %295, %269
  %305 = fadd fast float %301, %282
  %306 = fadd fast float %302, %283
  %307 = fadd fast float %303, %284
  %308 = fadd fast float %304, %285
  %309 = fmul fast float %293, %269
  %310 = fmul fast float %298, %269
  %311 = fadd fast float %309, %287
  %312 = fadd fast float %310, %288
  %313 = fmul fast float %294, %269
  %314 = fmul fast float %300, %269
  %315 = fadd fast float %313, %289
  %316 = fadd fast float %314, %290
  %317 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %14, float %276, float %280, float 2.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %318 = extractvalue %dx.types.ResRet.f32 %317, 0
  %319 = extractvalue %dx.types.ResRet.f32 %317, 1
  %320 = extractvalue %dx.types.ResRet.f32 %317, 2
  %321 = extractvalue %dx.types.ResRet.f32 %317, 3
  %322 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %14, float %276, float %280, float 3.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %323 = extractvalue %dx.types.ResRet.f32 %322, 0
  %324 = extractvalue %dx.types.ResRet.f32 %322, 1
  %325 = extractvalue %dx.types.ResRet.f32 %322, 2
  %326 = extractvalue %dx.types.ResRet.f32 %322, 3
  %327 = fmul fast float %318, %270
  %328 = fmul fast float %323, %270
  %329 = fmul fast float %325, %270
  %330 = fmul fast float %321, %270
  %331 = fadd fast float %305, %327
  %332 = fadd fast float %306, %328
  %333 = fadd fast float %307, %329
  %334 = fadd fast float %308, %330
  %335 = fmul fast float %319, %270
  %336 = fmul fast float %324, %270
  %337 = fadd fast float %311, %335
  %338 = fadd fast float %312, %336
  %339 = fmul fast float %320, %270
  %340 = fmul fast float %326, %270
  %341 = fadd fast float %315, %339
  %342 = fadd fast float %316, %340
  %343 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %14, float %276, float %280, float 4.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %344 = extractvalue %dx.types.ResRet.f32 %343, 0
  %345 = extractvalue %dx.types.ResRet.f32 %343, 1
  %346 = extractvalue %dx.types.ResRet.f32 %343, 2
  %347 = extractvalue %dx.types.ResRet.f32 %343, 3
  %348 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %14, float %276, float %280, float 5.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %349 = extractvalue %dx.types.ResRet.f32 %348, 0
  %350 = extractvalue %dx.types.ResRet.f32 %348, 1
  %351 = extractvalue %dx.types.ResRet.f32 %348, 2
  %352 = extractvalue %dx.types.ResRet.f32 %348, 3
  %353 = fmul fast float %344, %271
  %354 = fmul fast float %349, %271
  %355 = fmul fast float %351, %271
  %356 = fmul fast float %347, %271
  %357 = fadd fast float %331, %353
  %358 = fadd fast float %332, %354
  %359 = fadd fast float %333, %355
  %360 = fadd fast float %334, %356
  %361 = fmul fast float %345, %271
  %362 = fmul fast float %350, %271
  %363 = fadd fast float %337, %361
  %364 = fadd fast float %338, %362
  %365 = fmul fast float %346, %271
  %366 = fmul fast float %352, %271
  %367 = fadd fast float %341, %365
  %368 = fadd fast float %342, %366
  %369 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 255)  ; CBufferLoadLegacy(handle,regIndex)
  %370 = extractvalue %dx.types.CBufRet.f32 %369, 0
  %371 = fsub fast float %209, %370
  %372 = fsub fast float %213, %209
  %373 = call float @dx.op.binary.f32(i32 35, float %372, float %371)  ; FMax(a,b)
  %374 = extractvalue %dx.types.CBufRet.f32 %369, 1
  %375 = fsub fast float %210, %374
  %376 = fsub fast float %214, %210
  %377 = call float @dx.op.binary.f32(i32 35, float %376, float %375)  ; FMax(a,b)
  %378 = call float @dx.op.binary.f32(i32 35, float %373, float %377)  ; FMax(a,b)
  %379 = extractvalue %dx.types.CBufRet.f32 %217, 3
  %380 = fmul fast float %379, %378
  %381 = call float @dx.op.unary.f32(i32 7, float %380)  ; Saturate(value)
  %382 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 272)  ; CBufferLoadLegacy(handle,regIndex)
  %383 = extractvalue %dx.types.CBufRet.f32 %382, 0
  %384 = extractvalue %dx.types.CBufRet.f32 %382, 1
  %385 = extractvalue %dx.types.CBufRet.f32 %382, 2
  %386 = extractvalue %dx.types.CBufRet.f32 %382, 3
  %387 = fsub fast float %383, %357
  %388 = fsub fast float %384, %358
  %389 = fsub fast float %385, %359
  %390 = fsub fast float %386, %360
  %391 = fmul fast float %387, %381
  %392 = fmul fast float %388, %381
  %393 = fmul fast float %389, %381
  %394 = fmul fast float %390, %381
  %395 = fadd fast float %391, %357
  %396 = fadd fast float %392, %358
  %397 = fadd fast float %393, %359
  %398 = fadd fast float %394, %360
  %399 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 273)  ; CBufferLoadLegacy(handle,regIndex)
  %400 = extractvalue %dx.types.CBufRet.f32 %399, 0
  %401 = extractvalue %dx.types.CBufRet.f32 %399, 1
  %402 = fsub fast float %400, %363
  %403 = fsub fast float %401, %364
  %404 = fmul fast float %402, %381
  %405 = fmul fast float %403, %381
  %406 = fadd fast float %404, %363
  %407 = fadd fast float %405, %364
  %408 = extractvalue %dx.types.CBufRet.f32 %399, 2
  %409 = extractvalue %dx.types.CBufRet.f32 %399, 3
  %410 = fsub fast float %408, %367
  %411 = fsub fast float %409, %368
  %412 = fmul fast float %410, %381
  %413 = fmul fast float %411, %381
  %414 = fadd fast float %412, %367
  %415 = fadd fast float %413, %368
  %416 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 267)  ; CBufferLoadLegacy(handle,regIndex)
  %417 = extractvalue %dx.types.CBufRet.f32 %416, 0
  %418 = fmul fast float %417, %395
  %419 = fmul fast float %417, %396
  %420 = fmul fast float %417, %397
  %421 = fmul fast float %417, %398
  %422 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 268)  ; CBufferLoadLegacy(handle,regIndex)
  %423 = extractvalue %dx.types.CBufRet.f32 %422, 0
  %424 = fmul fast float %423, %406
  %425 = fmul fast float %423, %407
  %426 = fadd fast float %424, %418
  %427 = fadd fast float %425, %420
  %428 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 269)  ; CBufferLoadLegacy(handle,regIndex)
  %429 = extractvalue %dx.types.CBufRet.f32 %428, 0
  %430 = fmul fast float %429, %414
  %431 = fmul fast float %429, %415
  %432 = fadd fast float %426, %430
  %433 = fadd fast float %427, %431
  %434 = extractvalue %dx.types.CBufRet.f32 %416, 1
  %435 = fmul fast float %434, %395
  %436 = fmul fast float %434, %396
  %437 = fmul fast float %434, %397
  %438 = fmul fast float %434, %398
  %439 = extractvalue %dx.types.CBufRet.f32 %422, 1
  %440 = fmul fast float %439, %406
  %441 = fmul fast float %439, %407
  %442 = fadd fast float %440, %435
  %443 = fadd fast float %441, %437
  %444 = extractvalue %dx.types.CBufRet.f32 %428, 1
  %445 = fmul fast float %444, %414
  %446 = fmul fast float %444, %415
  %447 = fadd fast float %442, %445
  %448 = fadd fast float %443, %446
  %449 = extractvalue %dx.types.CBufRet.f32 %416, 2
  %450 = fmul fast float %449, %395
  %451 = fmul fast float %449, %396
  %452 = fmul fast float %449, %397
  %453 = fmul fast float %449, %398
  %454 = extractvalue %dx.types.CBufRet.f32 %422, 2
  %455 = fmul fast float %454, %406
  %456 = fmul fast float %454, %407
  %457 = fadd fast float %455, %450
  %458 = fadd fast float %456, %452
  %459 = extractvalue %dx.types.CBufRet.f32 %428, 2
  %460 = fmul fast float %459, %414
  %461 = fmul fast float %459, %415
  %462 = fadd fast float %457, %460
  %463 = fadd fast float %458, %461
  %464 = fmul fast float %451, %451
  %465 = fmul fast float %463, %463
  %466 = fmul fast float %453, %453
  %467 = fadd fast float %466, %464
  %468 = fadd fast float %467, %465
  %469 = call float @dx.op.unary.f32(i32 24, float %468)  ; Sqrt(value)
  %470 = fcmp fast ugt float %469, 0.000000e+00
  br i1 %470, label %471, label %486, !dx.controlflow.hints !35

; <label>:471                                     ; preds = %144
  %472 = fsub fast float -0.000000e+00, %453
  %473 = fdiv fast float %472, %469
  %474 = fsub fast float -0.000000e+00, %451
  %475 = fdiv fast float %474, %469
  %476 = fdiv fast float %463, %469
  %477 = fmul fast float %462, 0x3FE279A760000000
  %478 = fmul fast float %475, %451
  %479 = fmul fast float %476, %463
  %480 = fmul fast float %473, %453
  %481 = fadd fast float %478, %480
  %482 = fsub fast float %481, %479
  %483 = call float @dx.op.unary.f32(i32 6, float %482)  ; FAbs(value)
  %484 = fadd fast float %483, 0x3DDB7CDFE0000000
  %485 = fdiv fast float %477, %484
  br label %486

; <label>:486                                     ; preds = %471, %144
  %487 = phi float [ %485, %471 ], [ 1.000000e+00, %144 ]
  %488 = fmul fast float %436, %436
  %489 = fmul fast float %448, %448
  %490 = fmul fast float %438, %438
  %491 = fadd fast float %490, %488
  %492 = fadd fast float %491, %489
  %493 = call float @dx.op.unary.f32(i32 24, float %492)  ; Sqrt(value)
  %494 = fcmp fast ugt float %493, 0.000000e+00
  br i1 %494, label %495, label %510, !dx.controlflow.hints !35

; <label>:495                                     ; preds = %486
  %496 = fsub fast float -0.000000e+00, %438
  %497 = fdiv fast float %496, %493
  %498 = fsub fast float -0.000000e+00, %436
  %499 = fdiv fast float %498, %493
  %500 = fdiv fast float %448, %493
  %501 = fmul fast float %447, 0x3FE279A760000000
  %502 = fmul fast float %499, %436
  %503 = fmul fast float %500, %448
  %504 = fmul fast float %497, %438
  %505 = fadd fast float %502, %504
  %506 = fsub fast float %505, %503
  %507 = call float @dx.op.unary.f32(i32 6, float %506)  ; FAbs(value)
  %508 = fadd fast float %507, 0x3DDB7CDFE0000000
  %509 = fdiv fast float %501, %508
  br label %510

; <label>:510                                     ; preds = %495, %486
  %511 = phi float [ %509, %495 ], [ 1.000000e+00, %486 ]
  %512 = call float @dx.op.binary.f32(i32 36, float %511, float %487)  ; FMin(a,b)
  %513 = fmul fast float %419, %419
  %514 = fmul fast float %433, %433
  %515 = fmul fast float %421, %421
  %516 = fadd fast float %515, %513
  %517 = fadd fast float %516, %514
  %518 = call float @dx.op.unary.f32(i32 24, float %517)  ; Sqrt(value)
  %519 = fcmp fast ugt float %518, 0.000000e+00
  br i1 %519, label %520, label %535, !dx.controlflow.hints !35

; <label>:520                                     ; preds = %510
  %521 = fsub fast float -0.000000e+00, %421
  %522 = fdiv fast float %521, %518
  %523 = fsub fast float -0.000000e+00, %419
  %524 = fdiv fast float %523, %518
  %525 = fdiv fast float %433, %518
  %526 = fmul fast float %432, 0x3FE279A760000000
  %527 = fmul fast float %524, %419
  %528 = fmul fast float %525, %433
  %529 = fmul fast float %522, %421
  %530 = fadd fast float %527, %529
  %531 = fsub fast float %530, %528
  %532 = call float @dx.op.unary.f32(i32 6, float %531)  ; FAbs(value)
  %533 = fadd fast float %532, 0x3DDB7CDFE0000000
  %534 = fdiv fast float %526, %533
  br label %535

; <label>:535                                     ; preds = %520, %510
  %536 = phi float [ %534, %520 ], [ 1.000000e+00, %510 ]
  %537 = call float @dx.op.binary.f32(i32 36, float %536, float %512)  ; FMin(a,b)
  %538 = call float @dx.op.unary.f32(i32 7, float %537)  ; Saturate(value)
  %539 = fcmp fast olt float %538, 1.000000e+00
  br i1 %539, label %540, label %550, !dx.controlflow.hints !36

; <label>:540                                     ; preds = %535
  %541 = fmul fast float %538, %419
  %542 = fmul fast float %538, %433
  %543 = fmul fast float %538, %421
  %544 = fmul fast float %538, %436
  %545 = fmul fast float %538, %448
  %546 = fmul fast float %538, %438
  %547 = fmul fast float %538, %451
  %548 = fmul fast float %538, %463
  %549 = fmul fast float %538, %453
  br label %550

; <label>:550                                     ; preds = %540, %535
  %551 = phi float [ %547, %540 ], [ %451, %535 ]
  %552 = phi float [ %548, %540 ], [ %463, %535 ]
  %553 = phi float [ %549, %540 ], [ %453, %535 ]
  %554 = phi float [ %544, %540 ], [ %436, %535 ]
  %555 = phi float [ %545, %540 ], [ %448, %535 ]
  %556 = phi float [ %546, %540 ], [ %438, %535 ]
  %557 = phi float [ %541, %540 ], [ %419, %535 ]
  %558 = phi float [ %542, %540 ], [ %433, %535 ]
  %559 = phi float [ %543, %540 ], [ %421, %535 ]
  %560 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %432)  ; FMax(a,b)
  %561 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %447)  ; FMax(a,b)
  %562 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %462)  ; FMax(a,b)
  %563 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 271)  ; CBufferLoadLegacy(handle,regIndex)
  %564 = extractvalue %dx.types.CBufRet.f32 %563, 0
  %565 = fcmp fast ogt float %564, 0.000000e+00
  %566 = fcmp fast oge float %220, 0.000000e+00
  %567 = and i1 %566, %565
  %568 = fcmp fast ole float %220, 1.000000e+00
  %569 = and i1 %568, %567
  %570 = fcmp fast oge float %221, 0.000000e+00
  %571 = and i1 %570, %569
  %572 = fcmp fast ole float %221, 1.000000e+00
  %573 = and i1 %572, %571
  br i1 %573, label %574, label %714, !dx.controlflow.hints !37

; <label>:574                                     ; preds = %550
  %575 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 270)  ; CBufferLoadLegacy(handle,regIndex)
  %576 = extractvalue %dx.types.CBufRet.f32 %575, 2
  %577 = extractvalue %dx.types.CBufRet.f32 %575, 3
  %578 = fmul fast float %576, %220
  %579 = fmul fast float %577, %221
  %580 = call float @dx.op.unary.f32(i32 27, float %578)  ; Round_ni(value)
  %581 = call float @dx.op.unary.f32(i32 27, float %579)  ; Round_ni(value)
  %582 = fptosi float %580 to i32
  %583 = fptosi float %581 to i32
  %584 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %9, i32 0, i32 %582, i32 %583, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %585 = extractvalue %dx.types.ResRet.i32 %584, 0
  %586 = and i32 %585, 65535
  %587 = lshr i32 %585, 16
  %588 = icmp eq i32 %586, 65535
  br i1 %588, label %625, label %589, !dx.controlflow.hints !38

; <label>:589                                     ; preds = %574
  %590 = extractvalue %dx.types.CBufRet.f32 %563, 1
  %591 = extractvalue %dx.types.CBufRet.f32 %575, 0
  %592 = extractvalue %dx.types.CBufRet.f32 %575, 1
  %593 = fmul fast float %591, %220
  %594 = fmul fast float %592, %221
  %595 = fmul fast float %593, 1.250000e-01
  %596 = fmul fast float %594, 1.250000e-01
  %597 = call float @dx.op.unary.f32(i32 27, float %595)  ; Round_ni(value)
  %598 = call float @dx.op.unary.f32(i32 27, float %596)  ; Round_ni(value)
  %599 = fmul fast float %597, 8.000000e+00
  %600 = fmul fast float %598, 8.000000e+00
  %601 = and i32 %585, 255
  %602 = lshr i32 %585, 8
  %603 = and i32 %602, 255
  %604 = mul nuw nsw i32 %601, 9
  %605 = uitofp i32 %604 to float
  %606 = mul nuw nsw i32 %603, 9
  %607 = uitofp i32 %606 to float
  %608 = fadd fast float %605, 5.000000e-01
  %609 = fadd fast float %608, %593
  %610 = fsub fast float %609, %599
  %611 = fadd fast float %607, 5.000000e-01
  %612 = fadd fast float %611, %594
  %613 = fsub fast float %612, %600
  %614 = fdiv fast float %610, %564
  %615 = fdiv fast float %613, %590
  %616 = fmul fast float %248, 4.375000e-01
  %617 = fadd fast float %616, 3.125000e-02
  %618 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %14, float %614, float %615, float %617, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %619 = extractvalue %dx.types.ResRet.f32 %618, 0
  %620 = extractvalue %dx.types.ResRet.f32 %618, 1
  %621 = extractvalue %dx.types.ResRet.f32 %618, 2
  %622 = fadd fast float %619, %560
  %623 = fadd fast float %620, %561
  %624 = fadd fast float %621, %562
  br label %625

; <label>:625                                     ; preds = %589, %574
  %626 = phi float [ %624, %589 ], [ %562, %574 ]
  %627 = phi float [ %623, %589 ], [ %561, %574 ]
  %628 = phi float [ %622, %589 ], [ %560, %574 ]
  %629 = icmp eq i32 %587, 65535
  br i1 %629, label %714, label %630, !dx.controlflow.hints !39

; <label>:630                                     ; preds = %625
  %631 = extractvalue %dx.types.CBufRet.f32 %563, 1
  %632 = extractvalue %dx.types.CBufRet.f32 %575, 0
  %633 = extractvalue %dx.types.CBufRet.f32 %575, 1
  %634 = fmul fast float %632, %220
  %635 = fmul fast float %633, %221
  %636 = fmul fast float %634, 1.250000e-01
  %637 = fmul fast float %635, 1.250000e-01
  %638 = call float @dx.op.unary.f32(i32 27, float %636)  ; Round_ni(value)
  %639 = call float @dx.op.unary.f32(i32 27, float %637)  ; Round_ni(value)
  %640 = fmul fast float %638, 8.000000e+00
  %641 = fmul fast float %639, 8.000000e+00
  %642 = fsub fast float %634, %640
  %643 = fsub fast float %635, %641
  %644 = fadd fast float %642, 5.000000e-01
  %645 = fadd fast float %643, 5.000000e-01
  %646 = and i32 %587, 255
  %647 = lshr i32 %585, 24
  %648 = mul nuw nsw i32 %646, 9
  %649 = uitofp i32 %648 to float
  %650 = mul nuw nsw i32 %647, 9
  %651 = uitofp i32 %650 to float
  %652 = fadd fast float %644, %649
  %653 = fadd fast float %645, %651
  %654 = fdiv fast float %652, %564
  %655 = fdiv fast float %653, %631
  %656 = fmul fast float %248, 4.375000e-01
  %657 = fadd fast float %656, 3.125000e-02
  %658 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %14, float %654, float %655, float %657, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %659 = extractvalue %dx.types.ResRet.f32 %658, 0
  %660 = extractvalue %dx.types.ResRet.f32 %658, 1
  %661 = extractvalue %dx.types.ResRet.f32 %658, 2
  %662 = fadd fast float %656, 5.312500e-01
  %663 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %14, float %654, float %655, float %662, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %664 = extractvalue %dx.types.ResRet.f32 %663, 0
  %665 = extractvalue %dx.types.ResRet.f32 %663, 1
  %666 = extractvalue %dx.types.ResRet.f32 %663, 2
  %667 = fmul fast float %664, 2.000000e+00
  %668 = fmul fast float %665, 2.000000e+00
  %669 = fmul fast float %666, 2.000000e+00
  %670 = fadd fast float %667, -1.000000e+00
  %671 = fadd fast float %668, -1.000000e+00
  %672 = fadd fast float %669, -1.000000e+00
  %673 = fmul fast float %670, %670
  %674 = fmul fast float %671, %671
  %675 = fadd fast float %673, %674
  %676 = fmul fast float %672, %672
  %677 = fadd fast float %675, %676
  %678 = call float @dx.op.unary.f32(i32 24, float %677)  ; Sqrt(value)
  %679 = fcmp fast ogt float %678, 0.000000e+00
  br i1 %679, label %680, label %684, !dx.controlflow.hints !40

; <label>:680                                     ; preds = %630
  %681 = fdiv fast float %670, %678
  %682 = fdiv fast float %671, %678
  %683 = fdiv fast float %672, %678
  br label %684

; <label>:684                                     ; preds = %680, %630
  %685 = phi float [ %681, %680 ], [ 0.000000e+00, %630 ]
  %686 = phi float [ %682, %680 ], [ 0.000000e+00, %630 ]
  %687 = phi float [ %683, %680 ], [ 0.000000e+00, %630 ]
  %688 = fmul fast float %202, %202
  %689 = fmul fast float %203, %203
  %690 = fadd fast float %688, %689
  %691 = call float @dx.op.unary.f32(i32 24, float %690)  ; Sqrt(value)
  %692 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 274)  ; CBufferLoadLegacy(handle,regIndex)
  %693 = extractvalue %dx.types.CBufRet.f32 %692, 0
  %694 = extractvalue %dx.types.CBufRet.f32 %692, 1
  %695 = fsub fast float %691, %693
  %696 = fdiv fast float %695, %694
  %697 = call float @dx.op.unary.f32(i32 7, float %696)  ; Saturate(value)
  %698 = fmul fast float %697, 2.000000e+00
  %699 = fsub fast float 3.000000e+00, %698
  %700 = fmul fast float %697, %697
  %701 = fmul fast float %700, %699
  %702 = call float @dx.op.dot3.f32(i32 55, float %685, float %686, float %687, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %703 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %702)  ; FMax(a,b)
  %704 = fmul fast float %703, 0x400C5BF8A0000000
  %705 = fmul fast float %701, %659
  %706 = fmul fast float %705, %704
  %707 = fadd fast float %706, %628
  %708 = fmul fast float %701, %660
  %709 = fmul fast float %708, %704
  %710 = fadd fast float %709, %627
  %711 = fmul fast float %701, %661
  %712 = fmul fast float %711, %704
  %713 = fadd fast float %712, %626
  br label %714

; <label>:714                                     ; preds = %684, %625, %550
  %715 = phi float [ %713, %684 ], [ %626, %625 ], [ %562, %550 ]
  %716 = phi float [ %710, %684 ], [ %627, %625 ], [ %561, %550 ]
  %717 = phi float [ %707, %684 ], [ %628, %625 ], [ %560, %550 ]
  %718 = fcmp fast ogt float %211, %244
  %719 = and i1 %566, %718
  %720 = and i1 %568, %719
  %721 = and i1 %570, %720
  %722 = and i1 %572, %721
  br i1 %722, label %723, label %780, !dx.controlflow.hints !41

; <label>:723                                     ; preds = %714
  %724 = fmul fast float %246, 0x3FC24924A0000000
  %725 = fsub fast float %211, %244
  %726 = fdiv fast float %725, %724
  %727 = call float @dx.op.unary.f32(i32 7, float %726)  ; Saturate(value)
  %728 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 275)  ; CBufferLoadLegacy(handle,regIndex)
  %729 = extractvalue %dx.types.CBufRet.f32 %728, 0
  %730 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 276)  ; CBufferLoadLegacy(handle,regIndex)
  %731 = extractvalue %dx.types.CBufRet.f32 %730, 0
  %732 = extractvalue %dx.types.CBufRet.f32 %730, 1
  %733 = extractvalue %dx.types.CBufRet.f32 %730, 2
  %734 = fsub fast float %729, %717
  %735 = fsub fast float %731, %557
  %736 = fsub fast float %732, %558
  %737 = fsub fast float %733, %559
  %738 = fmul fast float %734, %727
  %739 = fmul fast float %735, %727
  %740 = fmul fast float %736, %727
  %741 = fmul fast float %737, %727
  %742 = fadd fast float %738, %717
  %743 = fadd fast float %739, %557
  %744 = fadd fast float %740, %558
  %745 = fadd fast float %741, %559
  %746 = extractvalue %dx.types.CBufRet.f32 %728, 1
  %747 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 278)  ; CBufferLoadLegacy(handle,regIndex)
  %748 = extractvalue %dx.types.CBufRet.f32 %747, 0
  %749 = extractvalue %dx.types.CBufRet.f32 %747, 1
  %750 = extractvalue %dx.types.CBufRet.f32 %747, 2
  %751 = fsub fast float %746, %716
  %752 = fsub fast float %748, %554
  %753 = fsub fast float %749, %555
  %754 = fsub fast float %750, %556
  %755 = fmul fast float %751, %727
  %756 = fmul fast float %752, %727
  %757 = fmul fast float %753, %727
  %758 = fmul fast float %754, %727
  %759 = fadd fast float %755, %716
  %760 = fadd fast float %756, %554
  %761 = fadd fast float %757, %555
  %762 = fadd fast float %758, %556
  %763 = extractvalue %dx.types.CBufRet.f32 %728, 2
  %764 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 280)  ; CBufferLoadLegacy(handle,regIndex)
  %765 = extractvalue %dx.types.CBufRet.f32 %764, 0
  %766 = extractvalue %dx.types.CBufRet.f32 %764, 1
  %767 = extractvalue %dx.types.CBufRet.f32 %764, 2
  %768 = fsub fast float %763, %715
  %769 = fsub fast float %765, %551
  %770 = fsub fast float %766, %552
  %771 = fsub fast float %767, %553
  %772 = fmul fast float %768, %727
  %773 = fmul fast float %769, %727
  %774 = fmul fast float %770, %727
  %775 = fmul fast float %771, %727
  %776 = fadd fast float %772, %715
  %777 = fadd fast float %773, %551
  %778 = fadd fast float %774, %552
  %779 = fadd fast float %775, %553
  br label %780

; <label>:780                                     ; preds = %723, %714
  %781 = phi float [ %776, %723 ], [ %715, %714 ]
  %782 = phi float [ %777, %723 ], [ %551, %714 ]
  %783 = phi float [ %778, %723 ], [ %552, %714 ]
  %784 = phi float [ %779, %723 ], [ %553, %714 ]
  %785 = phi float [ %759, %723 ], [ %716, %714 ]
  %786 = phi float [ %760, %723 ], [ %554, %714 ]
  %787 = phi float [ %761, %723 ], [ %555, %714 ]
  %788 = phi float [ %762, %723 ], [ %556, %714 ]
  %789 = phi float [ %742, %723 ], [ %717, %714 ]
  %790 = phi float [ %743, %723 ], [ %557, %714 ]
  %791 = phi float [ %744, %723 ], [ %558, %714 ]
  %792 = phi float [ %745, %723 ], [ %559, %714 ]
  %793 = extractvalue %dx.types.CBufRet.f32 %369, 3
  %794 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 396)  ; CBufferLoadLegacy(handle,regIndex)
  %795 = extractvalue %dx.types.CBufRet.f32 %794, 2
  %796 = fmul fast float %789, 0x3FD20DD760000000
  %797 = fmul fast float %198, %791
  %798 = fmul fast float %196, %792
  %799 = fmul fast float %197, %790
  %800 = fsub fast float %798, %797
  %801 = fadd fast float %800, %799
  %802 = fmul fast float %801, 0x3FE773F2A0000000
  %803 = fmul fast float %802, %795
  %804 = fadd fast float %803, %796
  %805 = fmul fast float %785, 0x3FD20DD760000000
  %806 = fmul fast float %198, %787
  %807 = fmul fast float %196, %788
  %808 = fmul fast float %197, %786
  %809 = fsub fast float %807, %806
  %810 = fadd fast float %809, %808
  %811 = fmul fast float %810, 0x3FE773F2A0000000
  %812 = fmul fast float %811, %795
  %813 = fadd fast float %812, %805
  %814 = fmul fast float %781, 0x3FD20DD760000000
  %815 = fmul fast float %198, %783
  %816 = fmul fast float %196, %784
  %817 = fmul fast float %197, %782
  %818 = fsub fast float %816, %815
  %819 = fadd fast float %818, %817
  %820 = fmul fast float %819, 0x3FE773F2A0000000
  %821 = fmul fast float %820, %795
  %822 = fadd fast float %821, %814
  %823 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %824 = extractvalue %dx.types.CBufRet.f32 %823, 3
  %825 = fmul fast float %120, %793
  %826 = fmul fast float %825, %824
  %827 = fmul fast float %826, %804
  %828 = fmul fast float %826, %813
  %829 = fmul fast float %826, %822
  %830 = fadd fast float %827, %116
  %831 = fadd fast float %828, %117
  %832 = fadd fast float %829, %118
  br label %833

; <label>:833                                     ; preds = %780, %114
  %834 = phi float [ %830, %780 ], [ %116, %114 ]
  %835 = phi float [ %831, %780 ], [ %117, %114 ]
  %836 = phi float [ %832, %780 ], [ %118, %114 ]
  %837 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 394)  ; CBufferLoadLegacy(handle,regIndex)
  %838 = extractvalue %dx.types.CBufRet.f32 %837, 3
  %839 = select i1 %107, float 1.000000e+00, float %838
  %840 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %16, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %841 = extractvalue %dx.types.CBufRet.i32 %840, 3
  %842 = icmp eq i32 %841, 0
  br i1 %842, label %986, label %843, !dx.controlflow.hints !42

; <label>:843                                     ; preds = %833
  %844 = uitofp i32 %17 to float
  %845 = uitofp i32 %18 to float
  %846 = uitofp i32 %19 to float
  %847 = fadd fast float %844, 5.000000e-01
  %848 = fadd fast float %845, 5.000000e-01
  %849 = fadd fast float %846, 5.000000e-01
  %850 = fmul fast float %849, 4.000000e+00
  %851 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %852 = extractvalue %dx.types.CBufRet.f32 %851, 0
  %853 = extractvalue %dx.types.CBufRet.f32 %851, 1
  %854 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %855 = extractvalue %dx.types.CBufRet.f32 %854, 0
  %856 = extractvalue %dx.types.CBufRet.f32 %854, 1
  %857 = fmul fast float %850, %856
  %858 = call float @dx.op.unary.f32(i32 21, float %857)  ; Exp(value)
  %859 = fmul fast float %858, %855
  %860 = fsub fast float 4.000000e+00, %855
  %861 = fadd fast float %860, %859
  %862 = fmul fast float %847, 8.000000e+00
  %863 = fmul fast float %862, %852
  %864 = fmul fast float %848, 8.000000e+00
  %865 = fmul fast float %864, %853
  %866 = fsub fast float 1.000000e+00, %863
  %867 = fsub fast float 1.000000e+00, %865
  %868 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %869 = extractvalue %dx.types.CBufRet.f32 %868, 0
  %870 = extractvalue %dx.types.CBufRet.f32 %868, 1
  %871 = extractvalue %dx.types.CBufRet.f32 %868, 2
  %872 = fmul fast float %869, %866
  %873 = fmul fast float %870, %866
  %874 = fmul fast float %871, %866
  %875 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %876 = extractvalue %dx.types.CBufRet.f32 %875, 0
  %877 = extractvalue %dx.types.CBufRet.f32 %875, 1
  %878 = extractvalue %dx.types.CBufRet.f32 %875, 2
  %879 = fmul fast float %876, %867
  %880 = fmul fast float %877, %867
  %881 = fmul fast float %878, %867
  %882 = fadd fast float %879, %872
  %883 = fadd fast float %880, %873
  %884 = fadd fast float %881, %874
  %885 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %886 = extractvalue %dx.types.CBufRet.f32 %885, 0
  %887 = extractvalue %dx.types.CBufRet.f32 %885, 1
  %888 = extractvalue %dx.types.CBufRet.f32 %885, 2
  %889 = fadd fast float %882, %886
  %890 = fadd fast float %883, %887
  %891 = fadd fast float %884, %888
  %892 = fmul fast float %889, %861
  %893 = fmul fast float %890, %861
  %894 = fmul fast float %891, %861
  %895 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 385)  ; CBufferLoadLegacy(handle,regIndex)
  %896 = extractvalue %dx.types.CBufRet.f32 %895, 0
  %897 = extractvalue %dx.types.CBufRet.f32 %895, 1
  %898 = extractvalue %dx.types.CBufRet.f32 %895, 3
  %899 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 386)  ; CBufferLoadLegacy(handle,regIndex)
  %900 = extractvalue %dx.types.CBufRet.f32 %899, 0
  %901 = extractvalue %dx.types.CBufRet.f32 %899, 1
  %902 = extractvalue %dx.types.CBufRet.f32 %899, 3
  %903 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 387)  ; CBufferLoadLegacy(handle,regIndex)
  %904 = extractvalue %dx.types.CBufRet.f32 %903, 0
  %905 = extractvalue %dx.types.CBufRet.f32 %903, 1
  %906 = extractvalue %dx.types.CBufRet.f32 %903, 3
  %907 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 388)  ; CBufferLoadLegacy(handle,regIndex)
  %908 = extractvalue %dx.types.CBufRet.f32 %907, 0
  %909 = extractvalue %dx.types.CBufRet.f32 %907, 1
  %910 = extractvalue %dx.types.CBufRet.f32 %907, 3
  %911 = fmul fast float %892, %896
  %912 = call float @dx.op.tertiary.f32(i32 46, float %900, float %893, float %911)  ; FMad(a,b,c)
  %913 = call float @dx.op.tertiary.f32(i32 46, float %904, float %894, float %912)  ; FMad(a,b,c)
  %914 = fadd fast float %913, %908
  %915 = fmul fast float %892, %897
  %916 = call float @dx.op.tertiary.f32(i32 46, float %901, float %893, float %915)  ; FMad(a,b,c)
  %917 = call float @dx.op.tertiary.f32(i32 46, float %905, float %894, float %916)  ; FMad(a,b,c)
  %918 = fadd fast float %917, %909
  %919 = fmul fast float %892, %898
  %920 = call float @dx.op.tertiary.f32(i32 46, float %902, float %893, float %919)  ; FMad(a,b,c)
  %921 = call float @dx.op.tertiary.f32(i32 46, float %906, float %894, float %920)  ; FMad(a,b,c)
  %922 = fadd fast float %921, %910
  %923 = fmul fast float %914, 5.000000e-01
  %924 = fdiv fast float %923, %922
  %925 = fadd fast float %924, 5.000000e-01
  %926 = fmul fast float %918, -5.000000e-01
  %927 = fdiv fast float %926, %922
  %928 = fadd fast float %927, 5.000000e-01
  %929 = extractvalue %dx.types.CBufRet.f32 %854, 2
  %930 = extractvalue %dx.types.CBufRet.f32 %854, 3
  %931 = fadd fast float %922, -4.000000e+00
  %932 = call float @dx.op.binary.f32(i32 35, float %931, float 0.000000e+00)  ; FMax(a,b)
  %933 = fadd fast float %932, %855
  %934 = fmul fast float %933, %929
  %935 = call float @dx.op.unary.f32(i32 23, float %934)  ; Log(value)
  %936 = fmul fast float %935, %930
  %937 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %938 = extractvalue %dx.types.CBufRet.f32 %937, 2
  %939 = fmul fast float %936, %938
  %940 = call float @dx.op.unary.f32(i32 27, float %925)  ; Round_ni(value)
  %941 = call float @dx.op.unary.f32(i32 6, float %940)  ; FAbs(value)
  %942 = call float @dx.op.unary.f32(i32 27, float %928)  ; Round_ni(value)
  %943 = call float @dx.op.unary.f32(i32 6, float %942)  ; FAbs(value)
  %944 = fadd fast float %943, %941
  %945 = call float @dx.op.unary.f32(i32 27, float %939)  ; Round_ni(value)
  %946 = call float @dx.op.unary.f32(i32 6, float %945)  ; FAbs(value)
  %947 = fadd fast float %944, %946
  %948 = fcmp fast oeq float %947, 0.000000e+00
  br i1 %948, label %949, label %986, !dx.controlflow.hints !43

; <label>:949                                     ; preds = %843
  %950 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %5, %dx.types.Handle %14, float %925, float %928, float 0.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %951 = extractvalue %dx.types.ResRet.f32 %950, 0
  %952 = extractvalue %dx.types.ResRet.f32 %950, 1
  %953 = extractvalue %dx.types.ResRet.f32 %950, 2
  %954 = extractvalue %dx.types.ResRet.f32 %950, 3
  %955 = call float @dx.op.binary.f32(i32 36, float %952, float %953)  ; FMin(a,b)
  %956 = call float @dx.op.binary.f32(i32 36, float %951, float %955)  ; FMin(a,b)
  %957 = call float @dx.op.binary.f32(i32 36, float %956, float %954)  ; FMin(a,b)
  %958 = fmul fast float %957, 2.550000e+02
  %959 = fadd fast float %958, 0x3F70101020000000
  %960 = fptoui float %959 to i32
  %961 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %15, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %962 = extractvalue %dx.types.CBufRet.i32 %961, 1
  %963 = uitofp i32 %962 to float
  %964 = fmul fast float %963, %939
  %965 = fptosi float %964 to i32
  %966 = icmp slt i32 %965, %960
  br i1 %966, label %967, label %986, !dx.controlflow.hints !44

; <label>:967                                     ; preds = %949
  %968 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %13, float %925, float %928, float %939, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %969 = extractvalue %dx.types.ResRet.f32 %968, 0
  %970 = extractvalue %dx.types.ResRet.f32 %968, 1
  %971 = extractvalue %dx.types.ResRet.f32 %968, 2
  %972 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %973 = extractvalue %dx.types.CBufRet.f32 %972, 2
  %974 = fmul fast float %973, %969
  %975 = fmul fast float %973, %970
  %976 = fmul fast float %973, %971
  %977 = fsub fast float %974, %834
  %978 = fsub fast float %975, %835
  %979 = fsub fast float %976, %836
  %980 = fmul fast float %977, %839
  %981 = fmul fast float %978, %839
  %982 = fmul fast float %979, %839
  %983 = fadd fast float %980, %834
  %984 = fadd fast float %981, %835
  %985 = fadd fast float %982, %836
  br label %986

; <label>:986                                     ; preds = %967, %949, %843, %833
  %987 = phi float [ %983, %967 ], [ %834, %949 ], [ %834, %843 ], [ %834, %833 ]
  %988 = phi float [ %984, %967 ], [ %835, %949 ], [ %835, %843 ], [ %835, %833 ]
  %989 = phi float [ %985, %967 ], [ %836, %949 ], [ %836, %843 ], [ %836, %833 ]
  %990 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %991 = extractvalue %dx.types.CBufRet.f32 %990, 0
  %992 = fmul fast float %991, %987
  %993 = fmul fast float %991, %988
  %994 = fmul fast float %991, %989
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %17, i32 %18, i32 %19, float %992, float %993, float %994, float %992, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %995

; <label>:995                                     ; preds = %986, %42
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
!27 = !{void ()* @cs_vol_sh_combine_multi_lightgrid_aniso, !"cs_vol_sh_combine_multi_lightgrid_aniso", null, !4, !28}
!28 = !{i32 0, i64 256, i32 4, !29}
!29 = !{i32 4, i32 4, i32 4}
!30 = distinct !{!30, !"dx.controlflow.hints", i32 2}
!31 = distinct !{!31, !"dx.controlflow.hints", i32 2}
!32 = distinct !{!32, !"dx.controlflow.hints", i32 1}
!33 = distinct !{!33, !"dx.controlflow.hints", i32 2}
!34 = distinct !{!34, !"dx.controlflow.hints", i32 2}
!35 = distinct !{!35, !"dx.controlflow.hints", i32 2}
!36 = distinct !{!36, !"dx.controlflow.hints", i32 2}
!37 = distinct !{!37, !"dx.controlflow.hints", i32 1}
!38 = distinct !{!38, !"dx.controlflow.hints", i32 2}
!39 = distinct !{!39, !"dx.controlflow.hints", i32 2}
!40 = distinct !{!40, !"dx.controlflow.hints", i32 2}
!41 = distinct !{!41, !"dx.controlflow.hints", i32 1}
!42 = distinct !{!42, !"dx.controlflow.hints", i32 2}
!43 = distinct !{!43, !"dx.controlflow.hints", i32 2}
!44 = distinct !{!44, !"dx.controlflow.hints", i32 1}

