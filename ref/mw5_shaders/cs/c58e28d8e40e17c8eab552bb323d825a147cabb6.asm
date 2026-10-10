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
; shader hash: 3dc0d44e96ceb3f5bf8a1d6dab715046
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
;   [144 x i8] (type annotation not present)
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
;                                   texture    byte         r/o      T0             t0     1
;                                   texture     f32        2dMS      T1             t1     1
;                                   texture     f32          2d      T2             t2     1
;                                       UAV     f32          2d      U0             u0     1
;                                       UAVunorm_f32          2d      U1             u1     1
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.CBufRet.f32 = type { float, float, float, float }
%dx.types.ResRet.f32 = type { float, float, float, float, i32 }
%dx.types.CBufRet.i32 = type { i32, i32, i32, i32 }
%dx.types.ResRet.i32 = type { i32, i32, i32, i32, i32 }
%struct.ByteAddressBuffer = type { i32 }
%"class.Texture2DMS<vector<float, 4>, 0>" = type { <4 x float>, %"class.Texture2DMS<vector<float, 4>, 0>::sample_type" }
%"class.Texture2DMS<vector<float, 4>, 0>::sample_type" = type { i32 }
%"class.Texture2D<vector<float, 4> >" = type { <4 x float>, %"class.Texture2D<vector<float, 4> >::mips_type" }
%"class.Texture2D<vector<float, 4> >::mips_type" = type { i32 }
%"class.RWTexture2D<float>" = type { float }
%"class.RWTexture2D<vector<float, 4> >" = type { <4 x float> }
%hostlayout.scene = type { %hostlayout.struct.GfxCodeSceneConsts }
%hostlayout.struct.GfxCodeSceneConsts = type { <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <3 x float>, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x i32>, <4 x i32>, <4 x float>, float, float, float, float, i32, i32, float, float, <2 x i32>, <2 x i32>, <2 x float>, <2 x float>, <3 x float>, i32, <3 x float>, float, <3 x float>, float, <2 x float>, <2 x float>, <3 x float>, float, <3 x float>, float, float, float, float, float, <3 x float>, float, i32, float, float, float, <4 x float>, <3 x float>, float, float, float, float, float, <4 x float>, float, float, float, float, i32, i32, i32, float, <4 x float>, i32, i32, i32, i32, i32, i32, i32, i32, <2 x i32>, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, [2 x <4 x i32>], [3 x <2 x float>], i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <2 x float>, <2 x float>, <4 x float>, <4 x i32>, <4 x float>, i32, float, float, float, i32, i32, i32, i32, <2 x float>, <2 x float>, <2 x float>, <2 x float>, i32, i32, <2 x float>, <2 x float>, <2 x float>, <3 x float>, i32, i32, i32, i32, i32, <4 x i32>, <4 x i32>, <4 x i32>, <4 x float>, i32, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <3 x float>, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], <4 x float>, [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], i32, i32, float, i32, <2 x float>, float, float, float, float, float, i32, <3 x float>, float, float, float, float, float, <3 x float>, float, <3 x float>, float, <3 x float>, float, float, float, float, float, <2 x float>, <2 x float>, float, float, float, float, <3 x float>, float, <2 x float>, i32, i32, <3 x float>, float, float, float, float, float, float, float, float, float, [4 x <3 x float>], i32, [4 x <3 x float>], i32, [4 x <3 x float>], i32, <4 x i32>, <2 x float>, <2 x float>, <2 x float>, i32, i32, float, float, float, float, <4 x float>, <4 x i32>, <4 x float>, <4 x float>, <4 x float>, i32, i32, i32, i32, <4 x float>, i32, float, float, i32, i32, float, float, i32, i32, float, float, i32, i32, float, float, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, float, float, float, float, i32, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, i32, i32, i32, float, <4 x float>, <4 x float>, <4 x float>, <4 x float>, i32, i32, i32, float, <4 x float>, float, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x i32>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [8 x <4 x float>], [8 x <4 x float>], <4 x float>, <3 x float>, i32, <2 x float>, float, float, float, float, float, float, <2 x float>, <2 x float>, <2 x float>, <2 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <2 x float>, float, float, <4 x float>, i32, i32, i32, i32, <3 x float>, i32, <4 x i32>, <4 x i32>, <2 x float>, <2 x i32>, <4 x float>, <4 x float>, <2 x float>, <2 x float>, [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, float, i32, i32, i32, i32, i32, float, float, <2 x float>, <2 x float>, float, float, float, float, i32, float, float, float, float, float, float, float, float, float, float, float, float, i32, i32, i32, float, float, float, i32, <2 x i32>, <2 x i32>, <4 x i32>, float, float, float, float, <4 x float>, <4 x float>, <2 x float>, <2 x float>, <4 x float>, <4 x float>, float, float, float, float, <4 x float>, float, float, float, float, i32, i32, float, float, <4 x float>, <2 x float>, <2 x float>, i32, i32, float, float, [4 x <4 x float>], float, float, float, float, float, float, float, float, i32, i32, i32, float, <4 x float>, <4 x float>, i32, i32, i32, i32, <2 x i32>, <2 x i32>, [2 x <4 x i32>], i32, float, float, float, i32, float, float, i32, <2 x i32>, <2 x float>, float, float, float, i32, %struct.GfxWeatherData, %hostlayout.struct.GfxVolumetricData, %struct.GfxFogRaymarchingData, %struct.GfxEnvironmentalFogData, %struct.GfxShallowWaterData, %struct.GfxGroundDeformationData, %struct.GfxSplinedModelGlobals }
%struct.GfxWeatherData = type { i32, i32, i32, i32, float, float, float, float, float, float, i32, i32, float, float, float, float, i32, i32, i32, i32, float, float, float, float, float, i32, i32, i32, i32, i32, i32, i32, <3 x float>, i32, <3 x float>, i32, i32, float, i32, i32, float, float, float, float }
%hostlayout.struct.GfxVolumetricData = type { [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <2 x float>, <2 x float>, <2 x float>, <2 x float>, <3 x i32>, i32, <3 x float>, i32, <4 x float>, <3 x float>, i32, i32, float, float, float, i32, i32, i32, float, <4 x float>, float, float, i32, i32, <3 x float>, i32, <3 x float>, float, <3 x float>, float, <2 x float>, float, float, <3 x float>, float, <3 x float>, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, <3 x float>, float, i32, float, float, float, <3 x float>, float, <2 x float>, <2 x float>, <3 x float>, float, i32, float, float, float, float, float, float, float, i32, i32, float, float, <3 x float>, float, i32, i32, <2 x float> }
%struct.GfxFogRaymarchingData = type { <2 x float>, <2 x float>, float, float, float, float, float, float, float, float, float, float, float, float, <2 x float>, <2 x float>, <3 x float>, float }
%struct.GfxEnvironmentalFogData = type { float, float, float, i32 }
%struct.GfxShallowWaterData = type { i32, i32, i32, i32, float, float, float, float, <2 x float>, <2 x float>, float, float, float, float, <3 x float>, float, float, float, float, float, float, float, float, float, i32, float, float, float, float, float, float, float, float, float, float, float, i32, float, float, float, float, i32, i32, i32 }
%struct.GfxGroundDeformationData = type { <2 x float>, <2 x float>, float, float, float, float, float, float, float, float, float, float, float, float, float, float, i32, i32 }
%struct.GfxSplinedModelGlobals = type { [64 x <4 x float>], [64 x <4 x float>], [16 x <4 x float>], [32 x <4 x float>], [64 x <4 x float>], [16 x <4 x float>], [16 x <4 x float>], float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float }
%hostlayout.MotionVectorsStaticConstants = type { [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <3 x float>, i32, <4 x i32> }
%struct.SamplerState = type { i32 }

define void @cs_motion_vectors_static_prepass_mblur() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call i32 @dx.op.threadId.i32(i32 93, i32 0)  ; ThreadId(component)
  %10 = call i32 @dx.op.threadId.i32(i32 93, i32 1)  ; ThreadId(component)
  %11 = alloca [4 x i32], align 4
  %12 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %7, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %13 = extractvalue %dx.types.CBufRet.f32 %12, 0
  %14 = extractvalue %dx.types.CBufRet.f32 %12, 1
  %15 = fptoui float %13 to i32
  %16 = fptoui float %14 to i32
  %17 = icmp uge i32 %9, %15
  %18 = icmp uge i32 %10, %16
  %19 = or i1 %17, %18
  br i1 %19, label %340, label %20, !dx.controlflow.hints !22

; <label>:20                                      ; preds = %0
  %21 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %7, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %22 = extractvalue %dx.types.CBufRet.f32 %21, 2
  %23 = extractvalue %dx.types.CBufRet.f32 %21, 3
  %24 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %7, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %25 = extractvalue %dx.types.CBufRet.f32 %24, 0
  %26 = extractvalue %dx.types.CBufRet.f32 %24, 1
  %27 = extractvalue %dx.types.CBufRet.f32 %24, 2
  %28 = extractvalue %dx.types.CBufRet.f32 %24, 3
  %29 = sitofp i32 %9 to float
  %30 = sitofp i32 %10 to float
  %31 = fadd fast float %29, 5.000000e-01
  %32 = fadd fast float %30, 5.000000e-01
  %33 = fmul fast float %22, %31
  %34 = fmul fast float %23, %32
  %35 = fmul fast float %33, %25
  %36 = fmul fast float %34, %26
  %37 = fadd fast float %35, -5.000000e-01
  %38 = fadd fast float %36, -5.000000e-01
  %39 = call float @dx.op.unary.f32(i32 22, float %37)  ; Frc(value)
  %40 = call float @dx.op.unary.f32(i32 27, float %37)  ; Round_ni(value)
  %41 = call float @dx.op.unary.f32(i32 27, float %38)  ; Round_ni(value)
  %42 = fadd fast float %40, 1.000000e+00
  %43 = fadd fast float %41, 1.000000e+00
  %44 = fmul fast float %42, %27
  %45 = fmul fast float %43, %28
  %46 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %3, %dx.types.Handle %6, float %44, float %45, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %47 = extractvalue %dx.types.ResRet.f32 %46, 0
  %48 = extractvalue %dx.types.ResRet.f32 %46, 1
  %49 = extractvalue %dx.types.ResRet.f32 %46, 2
  %50 = extractvalue %dx.types.ResRet.f32 %46, 3
  %51 = fcmp fast olt float %47, -1.000000e+00
  %52 = fcmp fast ogt float %47, -1.000000e+00
  %53 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %8, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %54 = extractvalue %dx.types.CBufRet.f32 %53, 1
  %55 = select i1 %52, float %54, float 1.000000e+00
  %56 = fadd fast float %47, 1.000000e+00
  %57 = fmul fast float %55, %56
  %58 = call float @dx.op.unary.f32(i32 6, float %57)  ; FAbs(value)
  %59 = fadd fast float %58, 1.000000e+02
  %60 = select i1 %51, float %58, float %59
  %61 = fcmp fast olt float %48, -1.000000e+00
  %62 = fcmp fast ogt float %48, -1.000000e+00
  %63 = select i1 %62, float %54, float 1.000000e+00
  %64 = fadd fast float %48, 1.000000e+00
  %65 = fmul fast float %63, %64
  %66 = call float @dx.op.unary.f32(i32 6, float %65)  ; FAbs(value)
  %67 = fadd fast float %66, 1.000000e+02
  %68 = select i1 %61, float %66, float %67
  %69 = fcmp fast olt float %49, -1.000000e+00
  %70 = fcmp fast ogt float %49, -1.000000e+00
  %71 = select i1 %70, float %54, float 1.000000e+00
  %72 = fadd fast float %49, 1.000000e+00
  %73 = fmul fast float %71, %72
  %74 = call float @dx.op.unary.f32(i32 6, float %73)  ; FAbs(value)
  %75 = fadd fast float %74, 1.000000e+02
  %76 = select i1 %69, float %74, float %75
  %77 = fcmp fast olt float %50, -1.000000e+00
  %78 = fcmp fast ogt float %50, -1.000000e+00
  %79 = select i1 %78, float %54, float 1.000000e+00
  %80 = fadd fast float %50, 1.000000e+00
  %81 = fmul fast float %79, %80
  %82 = call float @dx.op.unary.f32(i32 6, float %81)  ; FAbs(value)
  %83 = fadd fast float %82, 1.000000e+02
  %84 = select i1 %77, float %82, float %83
  %85 = call float @dx.op.binary.f32(i32 36, float %68, float %76)  ; FMin(a,b)
  %86 = call float @dx.op.binary.f32(i32 36, float %60, float %84)  ; FMin(a,b)
  %87 = call float @dx.op.binary.f32(i32 36, float %85, float %86)  ; FMin(a,b)
  %88 = fcmp fast ogt float %39, 0x3FECCCCCC0000000
  %89 = select i1 %88, float %85, float %87
  %90 = fcmp fast olt float %39, 0x3FB99999A0000000
  %91 = select i1 %90, float %86, float %89
  %92 = fcmp fast oeq float %91, %60
  %93 = fcmp fast oeq float %91, %76
  %94 = fcmp fast oeq float %91, %68
  %95 = or i1 %93, %94
  %96 = zext i1 %95 to i32
  %97 = xor i1 %93, true
  %98 = and i1 %92, %97
  %99 = or i1 %94, %98
  %100 = zext i1 %99 to i32
  %101 = fptosi float %37 to i32
  %102 = fptosi float %38 to i32
  %103 = add i32 %96, %101
  %104 = add i32 %100, %102
  %105 = fcmp fast ole float %91, 1.000000e+02
  %106 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %8, i32 51)  ; CBufferLoadLegacy(handle,regIndex)
  %107 = extractvalue %dx.types.CBufRet.i32 %106, 1
  %108 = shl i32 %107, 2
  %109 = lshr i32 %104, 2
  %110 = extractvalue %dx.types.CBufRet.i32 %106, 2
  %111 = mul i32 %109, %110
  %112 = lshr i32 %103, 3
  %113 = add i32 %112, %108
  %114 = add i32 %113, %111
  %115 = shl i32 %114, 2
  %116 = shl i32 %104, 3
  %117 = and i32 %116, 24
  %118 = and i32 %103, 7
  %119 = or i32 %117, %118
  %120 = shl i32 1, %119
  %121 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %115, i32 undef)  ; BufferLoad(srv,index,wot)
  %122 = extractvalue %dx.types.ResRet.i32 %121, 0
  %123 = and i32 %120, %122
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %180, label %125, !dx.controlflow.hints !23

; <label>:125                                     ; preds = %20
  %126 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %7, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %127 = extractvalue %dx.types.CBufRet.i32 %126, 0
  %128 = extractvalue %dx.types.CBufRet.i32 %126, 1
  %129 = extractvalue %dx.types.CBufRet.i32 %126, 2
  %130 = extractvalue %dx.types.CBufRet.i32 %126, 3
  %131 = lshr i32 %103, 1
  %132 = lshr i32 %104, 1
  %133 = and i32 %103, 1
  %134 = shl i32 %104, 1
  %135 = and i32 %134, 2
  %136 = or i32 %135, %133
  %137 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i32 0, i32 0
  store i32 %127, i32* %137, align 4
  %138 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i32 0, i32 1
  store i32 %128, i32* %138, align 4
  %139 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i32 0, i32 2
  store i32 %129, i32* %139, align 4
  %140 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i32 0, i32 3
  store i32 %130, i32* %140, align 4
  %141 = getelementptr [4 x i32], [4 x i32]* %11, i32 0, i32 %136
  %142 = load i32, i32* %141, align 4, !tbaa !24
  %143 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %4, i32 %142, i32 %131, i32 %132, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %144 = extractvalue %dx.types.ResRet.f32 %143, 2
  %145 = extractvalue %dx.types.ResRet.f32 %143, 3
  %146 = fadd fast float %144, 0xBFE0101020000000
  %147 = fadd fast float %145, 0xBFE0101020000000
  %148 = fmul fast float %146, 2.000000e+00
  %149 = fmul fast float %147, 2.000000e+00
  %150 = call float @dx.op.unary.f32(i32 6, float %148)  ; FAbs(value)
  %151 = call float @dx.op.unary.f32(i32 6, float %149)  ; FAbs(value)
  %152 = fadd fast float %150, -5.000000e-01
  %153 = fadd fast float %151, -5.000000e-01
  %154 = fmul fast float %152, 2.000000e+00
  %155 = fmul fast float %153, 2.000000e+00
  %156 = call float @dx.op.unary.f32(i32 7, float %154)  ; Saturate(value)
  %157 = call float @dx.op.unary.f32(i32 7, float %155)  ; Saturate(value)
  %158 = fmul fast float %150, 2.000000e+00
  %159 = fmul fast float %151, 2.000000e+00
  %160 = call float @dx.op.unary.f32(i32 7, float %158)  ; Saturate(value)
  %161 = call float @dx.op.unary.f32(i32 7, float %159)  ; Saturate(value)
  %162 = fmul fast float %156, %156
  %163 = fmul fast float %162, 0x3FA48888A0000000
  %164 = fmul fast float %157, %157
  %165 = fmul fast float %164, 0x3FB2407960000000
  %166 = fmul fast float %160, 0x3F599999A0000000
  %167 = fmul fast float %161, 0x3F66C16C20000000
  %168 = fadd fast float %166, %163
  %169 = fadd fast float %167, %165
  %170 = fsub fast float -0.000000e+00, %168
  %171 = fsub fast float -0.000000e+00, %169
  %172 = fcmp fast olt float %148, 0.000000e+00
  %173 = fcmp fast olt float %149, 0.000000e+00
  %174 = select i1 %172, float 0.000000e+00, float 1.000000e+00
  %175 = select i1 %173, float 0.000000e+00, float 1.000000e+00
  %176 = fcmp fast une float %174, 0.000000e+00
  %177 = fcmp fast une float %175, 0.000000e+00
  %178 = select i1 %176, float %168, float %170
  %179 = select i1 %177, float %169, float %171
  br label %225

; <label>:180                                     ; preds = %20
  %181 = fadd fast float %91, -1.000000e+02
  %182 = select i1 %105, float %91, float %181
  %183 = sitofp i32 %103 to float
  %184 = sitofp i32 %104 to float
  %185 = fadd fast float %183, 5.000000e-01
  %186 = fadd fast float %184, 5.000000e-01
  %187 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %8, i32 235)  ; CBufferLoadLegacy(handle,regIndex)
  %188 = extractvalue %dx.types.CBufRet.f32 %187, 2
  %189 = fdiv fast float %188, %182
  %190 = fmul fast float %189, 9.843750e-01
  %191 = call float @dx.op.unary.f32(i32 7, float %190)  ; Saturate(value)
  %192 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %7, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %193 = extractvalue %dx.types.CBufRet.f32 %192, 0
  %194 = extractvalue %dx.types.CBufRet.f32 %192, 1
  %195 = extractvalue %dx.types.CBufRet.f32 %192, 2
  %196 = extractvalue %dx.types.CBufRet.f32 %192, 3
  %197 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %7, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %198 = extractvalue %dx.types.CBufRet.f32 %197, 0
  %199 = extractvalue %dx.types.CBufRet.f32 %197, 1
  %200 = extractvalue %dx.types.CBufRet.f32 %197, 2
  %201 = extractvalue %dx.types.CBufRet.f32 %197, 3
  %202 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %7, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %203 = extractvalue %dx.types.CBufRet.f32 %202, 0
  %204 = extractvalue %dx.types.CBufRet.f32 %202, 1
  %205 = extractvalue %dx.types.CBufRet.f32 %202, 2
  %206 = extractvalue %dx.types.CBufRet.f32 %202, 3
  %207 = fmul fast float %193, %185
  %208 = call float @dx.op.tertiary.f32(i32 46, float %186, float %194, float %207)  ; FMad(a,b,c)
  %209 = call float @dx.op.tertiary.f32(i32 46, float %191, float %195, float %208)  ; FMad(a,b,c)
  %210 = fadd fast float %209, %196
  %211 = fmul fast float %198, %185
  %212 = call float @dx.op.tertiary.f32(i32 46, float %186, float %199, float %211)  ; FMad(a,b,c)
  %213 = call float @dx.op.tertiary.f32(i32 46, float %191, float %200, float %212)  ; FMad(a,b,c)
  %214 = fadd fast float %213, %201
  %215 = fmul fast float %203, %185
  %216 = call float @dx.op.tertiary.f32(i32 46, float %186, float %204, float %215)  ; FMad(a,b,c)
  %217 = call float @dx.op.tertiary.f32(i32 46, float %191, float %205, float %216)  ; FMad(a,b,c)
  %218 = fadd fast float %217, %206
  %219 = fdiv fast float %210, %218
  %220 = fdiv fast float %214, %218
  %221 = fsub fast float %185, %219
  %222 = fsub fast float %186, %220
  %223 = fmul fast float %27, %221
  %224 = fmul fast float %28, %222
  br label %225

; <label>:225                                     ; preds = %180, %125
  %226 = phi float [ %178, %125 ], [ %223, %180 ]
  %227 = phi float [ %179, %125 ], [ %224, %180 ]
  %228 = fmul fast float %226, 1.920000e+03
  %229 = fmul fast float %227, 1.080000e+03
  %230 = call float @dx.op.unary.f32(i32 6, float %228)  ; FAbs(value)
  %231 = call float @dx.op.unary.f32(i32 6, float %229)  ; FAbs(value)
  %232 = fadd fast float %230, -3.000000e+00
  %233 = fadd fast float %231, -3.000000e+00
  %234 = fmul fast float %232, 0x3F8A98EF60000000
  %235 = fmul fast float %233, 0x3F8A98EF60000000
  %236 = call float @dx.op.unary.f32(i32 7, float %234)  ; Saturate(value)
  %237 = call float @dx.op.unary.f32(i32 7, float %235)  ; Saturate(value)
  %238 = fmul fast float %230, 0x3FD5555560000000
  %239 = fmul fast float %231, 0x3FD5555560000000
  %240 = call float @dx.op.unary.f32(i32 7, float %238)  ; Saturate(value)
  %241 = call float @dx.op.unary.f32(i32 7, float %239)  ; Saturate(value)
  %242 = call float @dx.op.unary.f32(i32 24, float %236)  ; Sqrt(value)
  %243 = call float @dx.op.unary.f32(i32 24, float %237)  ; Sqrt(value)
  %244 = fsub fast float %240, %242
  %245 = fsub fast float %241, %243
  %246 = fmul fast float %244, 5.000000e-01
  %247 = fmul fast float %245, 5.000000e-01
  %248 = fadd fast float %246, %242
  %249 = fadd fast float %247, %243
  %250 = fsub fast float -0.000000e+00, %248
  %251 = fsub fast float -0.000000e+00, %249
  %252 = fcmp fast olt float %228, 0.000000e+00
  %253 = fcmp fast olt float %229, 0.000000e+00
  %254 = select i1 %252, float 0.000000e+00, float 1.000000e+00
  %255 = select i1 %253, float 0.000000e+00, float 1.000000e+00
  %256 = fcmp fast une float %254, 0.000000e+00
  %257 = fcmp fast une float %255, 0.000000e+00
  %258 = select i1 %256, float %248, float %250
  %259 = select i1 %257, float %249, float %251
  %260 = fmul fast float %258, 1.023000e+03
  %261 = fmul fast float %259, 1.023000e+03
  %262 = fadd fast float %260, 1.023000e+03
  %263 = fadd fast float %261, 1.023000e+03
  %264 = call float @dx.op.unary.f32(i32 26, float %262)  ; Round_ne(value)
  %265 = call float @dx.op.unary.f32(i32 26, float %263)  ; Round_ne(value)
  %266 = fptoui float %264 to i32
  %267 = fptoui float %265 to i32
  %268 = shl i32 %267, 11
  %269 = or i32 %268, %266
  %270 = call float @dx.op.binary.f32(i32 35, float %91, float 0x3EE4F8B580000000)  ; FMax(a,b)
  %271 = call float @dx.op.binary.f32(i32 36, float %270, float 6.550400e+04)  ; FMin(a,b)
  %272 = call i32 @dx.op.legacyF32ToF16(i32 130, float %271)  ; LegacyF32ToF16(value)
  %273 = lshr i32 %272, 5
  %274 = and i32 %273, 1023
  %275 = and i32 %273, 510
  %276 = icmp eq i32 %275, 0
  %277 = zext i1 %276 to i32
  %278 = add nuw nsw i32 %277, %274
  %279 = and i32 %278, 510
  %280 = icmp eq i32 %279, 0
  %281 = zext i1 %280 to i32
  %282 = add nuw nsw i32 %281, %278
  %283 = and i32 %282, 510
  %284 = icmp eq i32 %283, 510
  %285 = sext i1 %284 to i32
  %286 = add nsw i32 %285, %282
  %287 = and i32 %286, 510
  %288 = icmp eq i32 %287, 510
  %289 = sext i1 %288 to i32
  %290 = add nsw i32 %289, %286
  %291 = shl i32 %290, 22
  %292 = or i32 %269, %291
  %293 = bitcast i32 %292 to float
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %9, i32 %10, i32 undef, float %293, float %293, float %293, float %293, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %294 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %7, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %295 = extractvalue %dx.types.CBufRet.f32 %294, 1
  %296 = extractvalue %dx.types.CBufRet.f32 %294, 0
  %297 = select i1 %105, float %295, float %296
  %298 = extractvalue %dx.types.CBufRet.f32 %294, 2
  %299 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %7, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %300 = extractvalue %dx.types.CBufRet.f32 %299, 0
  %301 = extractvalue %dx.types.CBufRet.f32 %299, 1
  %302 = fdiv fast float %300, %301
  %303 = fmul fast float %226, 1.080000e+03
  %304 = fmul fast float %303, %298
  %305 = fmul fast float %304, %302
  %306 = fmul fast float %229, %298
  %307 = fmul fast float %305, %305
  %308 = fmul fast float %306, %306
  %309 = fadd fast float %307, %308
  %310 = call float @dx.op.unary.f32(i32 24, float %309)  ; Sqrt(value)
  %311 = call float @dx.op.binary.f32(i32 35, float %310, float 0x3F1A36E2E0000000)  ; FMax(a,b)
  %312 = fdiv fast float 1.000000e+00, %311
  %313 = fmul fast float %312, %306
  %314 = call float @dx.op.binary.f32(i32 36, float %310, float 4.000000e+01)  ; FMin(a,b)
  %315 = fadd fast float %314, -2.000000e+00
  %316 = fmul fast float %315, 0x3FF5555560000000
  %317 = call float @dx.op.binary.f32(i32 35, float %316, float 0.000000e+00)  ; FMax(a,b)
  %318 = call float @dx.op.binary.f32(i32 36, float %317, float %314)  ; FMin(a,b)
  %319 = fmul fast float %318, %297
  %320 = fmul fast float %313, %319
  %321 = fcmp fast oge float %320, 0.000000e+00
  %322 = fsub fast float -0.000000e+00, %319
  %323 = select i1 %321, float %319, float %322
  %324 = fmul fast float %305, 0x3F897FE640000000
  %325 = fmul fast float %324, %312
  %326 = fmul fast float %325, %319
  %327 = fmul fast float %323, 0x3F897FE640000000
  %328 = fadd fast float %326, 0x3FDFDFDFE0000000
  %329 = fadd fast float %327, 0x3FDFDFDFE0000000
  %330 = fmul fast float %91, 0x3F00000000000000
  %331 = call float @dx.op.unary.f32(i32 7, float %330)  ; Saturate(value)
  %332 = bitcast float %331 to i32
  %333 = ashr i32 %332, 1
  %334 = add nsw i32 %333, 532487669
  %335 = bitcast i32 %334 to float
  %336 = fmul fast float %335, 2.550000e+02
  %337 = call float @dx.op.unary.f32(i32 27, float %336)  ; Round_ni(value)
  %338 = fmul fast float %337, 0x3F70101020000000
  %339 = call float @dx.op.unary.f32(i32 22, float %336)  ; Frc(value)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %9, i32 %10, i32 undef, float %328, float %329, float %338, float %339, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %340

; <label>:340                                     ; preds = %225, %0
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @dx.op.threadId.i32(i32, i32) #0

; Function Attrs: nounwind
declare void @dx.op.textureStore.f32(i32, %dx.types.Handle, i32, i32, i32, float, float, float, float, i8) #1

; Function Attrs: nounwind readnone
declare float @dx.op.unary.f32(i32, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32) #2

; Function Attrs: nounwind readnone
declare float @dx.op.binary.f32(i32, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32) #2

; Function Attrs: nounwind readnone
declare i32 @dx.op.legacyF32ToF16(i32, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.tertiary.f32(i32, float, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32, %dx.types.Handle, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32, %dx.types.Handle, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.Handle @dx.op.createHandle(i32, i8, i32, i32, i1) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32, %dx.types.Handle, i32, i32) #2

attributes #0 = { nounwind readnone }
attributes #1 = { nounwind }
attributes #2 = { nounwind readonly }

!llvm.ident = !{!0}
!dx.version = !{!1}
!dx.valver = !{!2}
!dx.shaderModel = !{!3}
!dx.resources = !{!4}
!dx.entryPoints = !{!19}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !10, !14, !17}
!5 = !{!6, !7, !9}
!6 = !{i32 0, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 0, i32 1, i32 11, i32 0, null}
!7 = !{i32 1, %"class.Texture2DMS<vector<float, 4>, 0>"* undef, !"", i32 0, i32 1, i32 1, i32 3, i32 0, !8}
!8 = !{i32 0, i32 9}
!9 = !{i32 2, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 2, i32 1, i32 2, i32 0, !8}
!10 = !{!11, !12}
!11 = !{i32 0, %"class.RWTexture2D<float>"* undef, !"", i32 0, i32 0, i32 1, i32 2, i1 false, i1 false, i1 false, !8}
!12 = !{i32 1, %"class.RWTexture2D<vector<float, 4> >"* undef, !"", i32 0, i32 1, i32 1, i32 2, i1 false, i1 false, i1 false, !13}
!13 = !{i32 0, i32 14}
!14 = !{!15, !16}
!15 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!16 = !{i32 1, %hostlayout.MotionVectorsStaticConstants* undef, !"", i32 0, i32 0, i32 1, i32 144, null}
!17 = !{!18}
!18 = !{i32 0, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!19 = !{void ()* @cs_motion_vectors_static_prepass_mblur, !"cs_motion_vectors_static_prepass_mblur", null, !4, !20}
!20 = !{i32 0, i64 272, i32 4, !21}
!21 = !{i32 8, i32 8, i32 1}
!22 = distinct !{!22, !"dx.controlflow.hints", i32 2}
!23 = distinct !{!23, !"dx.controlflow.hints", i32 1}
!24 = !{!25, !25, i64 0}
!25 = !{!"int", !26, i64 0}
!26 = !{!"omnipotent char", !27, i64 0}
!27 = !{!"Simple C/C++ TBAA"}

