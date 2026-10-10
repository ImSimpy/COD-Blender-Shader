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
; shader hash: 504cd1d08c7682a90799f54da20b5b3a
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
;                                   texture     f32          2d      T1             t1     1
;                                   texture     f32          2d      T2             t2     1
;                                       UAV     f32          2d      U0             u0     1
;                                       UAVunorm_f32          2d      U1             u1     1
;                                       UAV     f32          2d      U2             u2     1
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.CBufRet.f32 = type { float, float, float, float }
%dx.types.ResRet.f32 = type { float, float, float, float, i32 }
%dx.types.CBufRet.i32 = type { i32, i32, i32, i32 }
%dx.types.ResRet.i32 = type { i32, i32, i32, i32, i32 }
%struct.ByteAddressBuffer = type { i32 }
%"class.Texture2D<vector<float, 4> >" = type { <4 x float>, %"class.Texture2D<vector<float, 4> >::mips_type" }
%"class.Texture2D<vector<float, 4> >::mips_type" = type { i32 }
%"class.RWTexture2D<float>" = type { float }
%"class.RWTexture2D<vector<float, 4> >" = type { <4 x float> }
%"class.RWTexture2D<vector<float, 2> >" = type { <2 x float> }
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

define void @cs_motion_vectors_static_prepass_decode_mblur() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call i32 @dx.op.threadId.i32(i32 93, i32 0)  ; ThreadId(component)
  %11 = call i32 @dx.op.threadId.i32(i32 93, i32 1)  ; ThreadId(component)
  %12 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %8, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %13 = extractvalue %dx.types.CBufRet.f32 %12, 0
  %14 = extractvalue %dx.types.CBufRet.f32 %12, 1
  %15 = fptoui float %13 to i32
  %16 = fptoui float %14 to i32
  %17 = icmp uge i32 %10, %15
  %18 = icmp uge i32 %11, %16
  %19 = or i1 %17, %18
  br i1 %19, label %326, label %20, !dx.controlflow.hints !23

; <label>:20                                      ; preds = %0
  %21 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %8, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %22 = extractvalue %dx.types.CBufRet.f32 %21, 2
  %23 = extractvalue %dx.types.CBufRet.f32 %21, 3
  %24 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %8, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %25 = extractvalue %dx.types.CBufRet.f32 %24, 0
  %26 = extractvalue %dx.types.CBufRet.f32 %24, 1
  %27 = extractvalue %dx.types.CBufRet.f32 %24, 2
  %28 = extractvalue %dx.types.CBufRet.f32 %24, 3
  %29 = sitofp i32 %10 to float
  %30 = sitofp i32 %11 to float
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
  %46 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %7, float %44, float %45, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %47 = extractvalue %dx.types.ResRet.f32 %46, 0
  %48 = extractvalue %dx.types.ResRet.f32 %46, 1
  %49 = extractvalue %dx.types.ResRet.f32 %46, 2
  %50 = extractvalue %dx.types.ResRet.f32 %46, 3
  %51 = fcmp fast olt float %47, -1.000000e+00
  %52 = fcmp fast ogt float %47, -1.000000e+00
  %53 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %9, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
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
  %106 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %9, i32 51)  ; CBufferLoadLegacy(handle,regIndex)
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
  %121 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %115, i32 undef)  ; BufferLoad(srv,index,wot)
  %122 = extractvalue %dx.types.ResRet.i32 %121, 0
  %123 = and i32 %120, %122
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %164, label %125, !dx.controlflow.hints !24

; <label>:125                                     ; preds = %20
  %126 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %5, i32 0, i32 %103, i32 %104, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %127 = extractvalue %dx.types.ResRet.f32 %126, 2
  %128 = extractvalue %dx.types.ResRet.f32 %126, 3
  %129 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %9, i32 240)  ; CBufferLoadLegacy(handle,regIndex)
  %130 = extractvalue %dx.types.CBufRet.i32 %129, 0
  %131 = icmp ne i32 %130, 0
  %132 = call float @dx.op.unary.f32(i32 6, float %127)  ; FAbs(value)
  %133 = call float @dx.op.unary.f32(i32 6, float %128)  ; FAbs(value)
  %134 = fadd fast float %132, -5.000000e-01
  %135 = fadd fast float %133, -5.000000e-01
  %136 = fmul fast float %134, 2.000000e+00
  %137 = fmul fast float %135, 2.000000e+00
  %138 = call float @dx.op.unary.f32(i32 7, float %136)  ; Saturate(value)
  %139 = call float @dx.op.unary.f32(i32 7, float %137)  ; Saturate(value)
  %140 = fmul fast float %132, 2.000000e+00
  %141 = fmul fast float %133, 2.000000e+00
  %142 = call float @dx.op.unary.f32(i32 7, float %140)  ; Saturate(value)
  %143 = call float @dx.op.unary.f32(i32 7, float %141)  ; Saturate(value)
  %144 = fmul fast float %138, %138
  %145 = fmul fast float %144, 0x3FA48888A0000000
  %146 = fmul fast float %139, %139
  %147 = fmul fast float %146, 0x3FB2407960000000
  %148 = fmul fast float %142, 0x3F599999A0000000
  %149 = fmul fast float %143, 0x3F66C16C20000000
  %150 = fadd fast float %148, %145
  %151 = fadd fast float %149, %147
  %152 = fsub fast float -0.000000e+00, %150
  %153 = fsub fast float -0.000000e+00, %151
  %154 = fcmp fast olt float %127, 0.000000e+00
  %155 = fcmp fast olt float %128, 0.000000e+00
  %156 = select i1 %154, float 0.000000e+00, float 1.000000e+00
  %157 = select i1 %155, float 0.000000e+00, float 1.000000e+00
  %158 = fcmp fast une float %156, 0.000000e+00
  %159 = fcmp fast une float %157, 0.000000e+00
  %160 = select i1 %158, float %150, float %152
  %161 = select i1 %159, float %151, float %153
  %162 = select i1 %131, float %127, float %160
  %163 = select i1 %131, float %128, float %161
  br label %209

; <label>:164                                     ; preds = %20
  %165 = fadd fast float %91, -1.000000e+02
  %166 = select i1 %105, float %91, float %165
  %167 = sitofp i32 %103 to float
  %168 = sitofp i32 %104 to float
  %169 = fadd fast float %167, 5.000000e-01
  %170 = fadd fast float %168, 5.000000e-01
  %171 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %9, i32 235)  ; CBufferLoadLegacy(handle,regIndex)
  %172 = extractvalue %dx.types.CBufRet.f32 %171, 2
  %173 = fdiv fast float %172, %166
  %174 = fmul fast float %173, 9.843750e-01
  %175 = call float @dx.op.unary.f32(i32 7, float %174)  ; Saturate(value)
  %176 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %8, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %177 = extractvalue %dx.types.CBufRet.f32 %176, 0
  %178 = extractvalue %dx.types.CBufRet.f32 %176, 1
  %179 = extractvalue %dx.types.CBufRet.f32 %176, 2
  %180 = extractvalue %dx.types.CBufRet.f32 %176, 3
  %181 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %8, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %182 = extractvalue %dx.types.CBufRet.f32 %181, 0
  %183 = extractvalue %dx.types.CBufRet.f32 %181, 1
  %184 = extractvalue %dx.types.CBufRet.f32 %181, 2
  %185 = extractvalue %dx.types.CBufRet.f32 %181, 3
  %186 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %8, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %187 = extractvalue %dx.types.CBufRet.f32 %186, 0
  %188 = extractvalue %dx.types.CBufRet.f32 %186, 1
  %189 = extractvalue %dx.types.CBufRet.f32 %186, 2
  %190 = extractvalue %dx.types.CBufRet.f32 %186, 3
  %191 = fmul fast float %177, %169
  %192 = call float @dx.op.tertiary.f32(i32 46, float %170, float %178, float %191)  ; FMad(a,b,c)
  %193 = call float @dx.op.tertiary.f32(i32 46, float %175, float %179, float %192)  ; FMad(a,b,c)
  %194 = fadd fast float %193, %180
  %195 = fmul fast float %182, %169
  %196 = call float @dx.op.tertiary.f32(i32 46, float %170, float %183, float %195)  ; FMad(a,b,c)
  %197 = call float @dx.op.tertiary.f32(i32 46, float %175, float %184, float %196)  ; FMad(a,b,c)
  %198 = fadd fast float %197, %185
  %199 = fmul fast float %187, %169
  %200 = call float @dx.op.tertiary.f32(i32 46, float %170, float %188, float %199)  ; FMad(a,b,c)
  %201 = call float @dx.op.tertiary.f32(i32 46, float %175, float %189, float %200)  ; FMad(a,b,c)
  %202 = fadd fast float %201, %190
  %203 = fdiv fast float %194, %202
  %204 = fdiv fast float %198, %202
  %205 = fsub fast float %169, %203
  %206 = fsub fast float %170, %204
  %207 = fmul fast float %27, %205
  %208 = fmul fast float %28, %206
  br label %209

; <label>:209                                     ; preds = %164, %125
  %210 = phi float [ %162, %125 ], [ %207, %164 ]
  %211 = phi float [ %163, %125 ], [ %208, %164 ]
  %212 = fmul fast float %25, %210
  %213 = fmul fast float %26, %211
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %10, i32 %11, i32 undef, float %212, float %213, float %212, float %212, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %214 = fmul fast float %210, 1.920000e+03
  %215 = fmul fast float %211, 1.080000e+03
  %216 = call float @dx.op.unary.f32(i32 6, float %214)  ; FAbs(value)
  %217 = call float @dx.op.unary.f32(i32 6, float %215)  ; FAbs(value)
  %218 = fadd fast float %216, -3.000000e+00
  %219 = fadd fast float %217, -3.000000e+00
  %220 = fmul fast float %218, 0x3F8A98EF60000000
  %221 = fmul fast float %219, 0x3F8A98EF60000000
  %222 = call float @dx.op.unary.f32(i32 7, float %220)  ; Saturate(value)
  %223 = call float @dx.op.unary.f32(i32 7, float %221)  ; Saturate(value)
  %224 = fmul fast float %216, 0x3FD5555560000000
  %225 = fmul fast float %217, 0x3FD5555560000000
  %226 = call float @dx.op.unary.f32(i32 7, float %224)  ; Saturate(value)
  %227 = call float @dx.op.unary.f32(i32 7, float %225)  ; Saturate(value)
  %228 = call float @dx.op.unary.f32(i32 24, float %222)  ; Sqrt(value)
  %229 = call float @dx.op.unary.f32(i32 24, float %223)  ; Sqrt(value)
  %230 = fsub fast float %226, %228
  %231 = fsub fast float %227, %229
  %232 = fmul fast float %230, 5.000000e-01
  %233 = fmul fast float %231, 5.000000e-01
  %234 = fadd fast float %232, %228
  %235 = fadd fast float %233, %229
  %236 = fsub fast float -0.000000e+00, %234
  %237 = fsub fast float -0.000000e+00, %235
  %238 = fcmp fast olt float %214, 0.000000e+00
  %239 = fcmp fast olt float %215, 0.000000e+00
  %240 = select i1 %238, float 0.000000e+00, float 1.000000e+00
  %241 = select i1 %239, float 0.000000e+00, float 1.000000e+00
  %242 = fcmp fast une float %240, 0.000000e+00
  %243 = fcmp fast une float %241, 0.000000e+00
  %244 = select i1 %242, float %234, float %236
  %245 = select i1 %243, float %235, float %237
  %246 = fmul fast float %244, 1.023000e+03
  %247 = fmul fast float %245, 1.023000e+03
  %248 = fadd fast float %246, 1.023000e+03
  %249 = fadd fast float %247, 1.023000e+03
  %250 = call float @dx.op.unary.f32(i32 26, float %248)  ; Round_ne(value)
  %251 = call float @dx.op.unary.f32(i32 26, float %249)  ; Round_ne(value)
  %252 = fptoui float %250 to i32
  %253 = fptoui float %251 to i32
  %254 = shl i32 %253, 11
  %255 = or i32 %254, %252
  %256 = call float @dx.op.binary.f32(i32 35, float %91, float 0x3EE4F8B580000000)  ; FMax(a,b)
  %257 = call float @dx.op.binary.f32(i32 36, float %256, float 6.550400e+04)  ; FMin(a,b)
  %258 = call i32 @dx.op.legacyF32ToF16(i32 130, float %257)  ; LegacyF32ToF16(value)
  %259 = lshr i32 %258, 5
  %260 = and i32 %259, 1023
  %261 = and i32 %259, 510
  %262 = icmp eq i32 %261, 0
  %263 = zext i1 %262 to i32
  %264 = add nuw nsw i32 %263, %260
  %265 = and i32 %264, 510
  %266 = icmp eq i32 %265, 0
  %267 = zext i1 %266 to i32
  %268 = add nuw nsw i32 %267, %264
  %269 = and i32 %268, 510
  %270 = icmp eq i32 %269, 510
  %271 = sext i1 %270 to i32
  %272 = add nsw i32 %271, %268
  %273 = and i32 %272, 510
  %274 = icmp eq i32 %273, 510
  %275 = sext i1 %274 to i32
  %276 = add nsw i32 %275, %272
  %277 = shl i32 %276, 22
  %278 = or i32 %255, %277
  %279 = bitcast i32 %278 to float
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %3, i32 %10, i32 %11, i32 undef, float %279, float %279, float %279, float %279, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %280 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %8, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %281 = extractvalue %dx.types.CBufRet.f32 %280, 1
  %282 = extractvalue %dx.types.CBufRet.f32 %280, 0
  %283 = select i1 %105, float %281, float %282
  %284 = extractvalue %dx.types.CBufRet.f32 %280, 2
  %285 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %8, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %286 = extractvalue %dx.types.CBufRet.f32 %285, 0
  %287 = extractvalue %dx.types.CBufRet.f32 %285, 1
  %288 = fdiv fast float %286, %287
  %289 = fmul fast float %210, 1.080000e+03
  %290 = fmul fast float %289, %284
  %291 = fmul fast float %290, %288
  %292 = fmul fast float %215, %284
  %293 = fmul fast float %291, %291
  %294 = fmul fast float %292, %292
  %295 = fadd fast float %293, %294
  %296 = call float @dx.op.unary.f32(i32 24, float %295)  ; Sqrt(value)
  %297 = call float @dx.op.binary.f32(i32 35, float %296, float 0x3F1A36E2E0000000)  ; FMax(a,b)
  %298 = fdiv fast float 1.000000e+00, %297
  %299 = fmul fast float %298, %292
  %300 = call float @dx.op.binary.f32(i32 36, float %296, float 4.000000e+01)  ; FMin(a,b)
  %301 = fadd fast float %300, -2.000000e+00
  %302 = fmul fast float %301, 0x3FF5555560000000
  %303 = call float @dx.op.binary.f32(i32 35, float %302, float 0.000000e+00)  ; FMax(a,b)
  %304 = call float @dx.op.binary.f32(i32 36, float %303, float %300)  ; FMin(a,b)
  %305 = fmul fast float %304, %283
  %306 = fmul fast float %299, %305
  %307 = fcmp fast oge float %306, 0.000000e+00
  %308 = fsub fast float -0.000000e+00, %305
  %309 = select i1 %307, float %305, float %308
  %310 = fmul fast float %291, 0x3F897FE640000000
  %311 = fmul fast float %310, %298
  %312 = fmul fast float %311, %305
  %313 = fmul fast float %309, 0x3F897FE640000000
  %314 = fadd fast float %312, 0x3FDFDFDFE0000000
  %315 = fadd fast float %313, 0x3FDFDFDFE0000000
  %316 = fmul fast float %91, 0x3F00000000000000
  %317 = call float @dx.op.unary.f32(i32 7, float %316)  ; Saturate(value)
  %318 = bitcast float %317 to i32
  %319 = ashr i32 %318, 1
  %320 = add nsw i32 %319, 532487669
  %321 = bitcast i32 %320 to float
  %322 = fmul fast float %321, 2.550000e+02
  %323 = call float @dx.op.unary.f32(i32 27, float %322)  ; Round_ni(value)
  %324 = fmul fast float %323, 0x3F70101020000000
  %325 = call float @dx.op.unary.f32(i32 22, float %322)  ; Frc(value)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %10, i32 %11, i32 undef, float %314, float %315, float %324, float %325, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %326

; <label>:326                                     ; preds = %209, %0
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @dx.op.threadId.i32(i32, i32) #0

; Function Attrs: nounwind
declare void @dx.op.textureStore.f32(i32, %dx.types.Handle, i32, i32, i32, float, float, float, float, i8) #1

; Function Attrs: nounwind readnone
declare float @dx.op.unary.f32(i32, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32) #2

; Function Attrs: nounwind readnone
declare float @dx.op.binary.f32(i32, float, float) #0

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
!dx.entryPoints = !{!20}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !10, !15, !18}
!5 = !{!6, !7, !9}
!6 = !{i32 0, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 0, i32 1, i32 11, i32 0, null}
!7 = !{i32 1, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 1, i32 1, i32 2, i32 0, !8}
!8 = !{i32 0, i32 9}
!9 = !{i32 2, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 2, i32 1, i32 2, i32 0, !8}
!10 = !{!11, !12, !14}
!11 = !{i32 0, %"class.RWTexture2D<float>"* undef, !"", i32 0, i32 0, i32 1, i32 2, i1 false, i1 false, i1 false, !8}
!12 = !{i32 1, %"class.RWTexture2D<vector<float, 4> >"* undef, !"", i32 0, i32 1, i32 1, i32 2, i1 false, i1 false, i1 false, !13}
!13 = !{i32 0, i32 14}
!14 = !{i32 2, %"class.RWTexture2D<vector<float, 2> >"* undef, !"", i32 0, i32 2, i32 1, i32 2, i1 false, i1 false, i1 false, !8}
!15 = !{!16, !17}
!16 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!17 = !{i32 1, %hostlayout.MotionVectorsStaticConstants* undef, !"", i32 0, i32 0, i32 1, i32 144, null}
!18 = !{!19}
!19 = !{i32 0, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!20 = !{void ()* @cs_motion_vectors_static_prepass_decode_mblur, !"cs_motion_vectors_static_prepass_decode_mblur", null, !4, !21}
!21 = !{i32 0, i64 272, i32 4, !22}
!22 = !{i32 8, i32 8, i32 1}
!23 = distinct !{!23, !"dx.controlflow.hints", i32 2}
!24 = distinct !{!24, !"dx.controlflow.hints", i32 1}

