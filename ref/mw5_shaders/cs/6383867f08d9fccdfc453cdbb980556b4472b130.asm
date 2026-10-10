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
; shader hash: 8d34ebaedde541026831de2b475dcc1a
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
;                                       UAV     f32          2d      U1             u2     1
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

define void @cs_motion_vectors_static_prepass_decode() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call i32 @dx.op.threadId.i32(i32 93, i32 0)  ; ThreadId(component)
  %10 = call i32 @dx.op.threadId.i32(i32 93, i32 1)  ; ThreadId(component)
  %11 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %7, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %12 = extractvalue %dx.types.CBufRet.f32 %11, 0
  %13 = extractvalue %dx.types.CBufRet.f32 %11, 1
  %14 = fptoui float %12 to i32
  %15 = fptoui float %13 to i32
  %16 = icmp uge i32 %9, %14
  %17 = icmp uge i32 %10, %15
  %18 = or i1 %16, %17
  br i1 %18, label %279, label %19, !dx.controlflow.hints !21

; <label>:19                                      ; preds = %0
  %20 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %7, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %21 = extractvalue %dx.types.CBufRet.f32 %20, 2
  %22 = extractvalue %dx.types.CBufRet.f32 %20, 3
  %23 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %7, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %24 = extractvalue %dx.types.CBufRet.f32 %23, 0
  %25 = extractvalue %dx.types.CBufRet.f32 %23, 1
  %26 = extractvalue %dx.types.CBufRet.f32 %23, 2
  %27 = extractvalue %dx.types.CBufRet.f32 %23, 3
  %28 = sitofp i32 %9 to float
  %29 = sitofp i32 %10 to float
  %30 = fadd fast float %28, 5.000000e-01
  %31 = fadd fast float %29, 5.000000e-01
  %32 = fmul fast float %21, %30
  %33 = fmul fast float %22, %31
  %34 = fmul fast float %32, %24
  %35 = fmul fast float %33, %25
  %36 = fadd fast float %34, -5.000000e-01
  %37 = fadd fast float %35, -5.000000e-01
  %38 = call float @dx.op.unary.f32(i32 22, float %36)  ; Frc(value)
  %39 = call float @dx.op.unary.f32(i32 27, float %36)  ; Round_ni(value)
  %40 = call float @dx.op.unary.f32(i32 27, float %37)  ; Round_ni(value)
  %41 = fadd fast float %39, 1.000000e+00
  %42 = fadd fast float %40, 1.000000e+00
  %43 = fmul fast float %41, %26
  %44 = fmul fast float %42, %27
  %45 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %3, %dx.types.Handle %6, float %43, float %44, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %46 = extractvalue %dx.types.ResRet.f32 %45, 0
  %47 = extractvalue %dx.types.ResRet.f32 %45, 1
  %48 = extractvalue %dx.types.ResRet.f32 %45, 2
  %49 = extractvalue %dx.types.ResRet.f32 %45, 3
  %50 = fcmp fast olt float %46, -1.000000e+00
  %51 = fcmp fast ogt float %46, -1.000000e+00
  %52 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %8, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %53 = extractvalue %dx.types.CBufRet.f32 %52, 1
  %54 = select i1 %51, float %53, float 1.000000e+00
  %55 = fadd fast float %46, 1.000000e+00
  %56 = fmul fast float %54, %55
  %57 = call float @dx.op.unary.f32(i32 6, float %56)  ; FAbs(value)
  %58 = fadd fast float %57, 1.000000e+02
  %59 = select i1 %50, float %57, float %58
  %60 = fcmp fast olt float %47, -1.000000e+00
  %61 = fcmp fast ogt float %47, -1.000000e+00
  %62 = select i1 %61, float %53, float 1.000000e+00
  %63 = fadd fast float %47, 1.000000e+00
  %64 = fmul fast float %62, %63
  %65 = call float @dx.op.unary.f32(i32 6, float %64)  ; FAbs(value)
  %66 = fadd fast float %65, 1.000000e+02
  %67 = select i1 %60, float %65, float %66
  %68 = fcmp fast olt float %48, -1.000000e+00
  %69 = fcmp fast ogt float %48, -1.000000e+00
  %70 = select i1 %69, float %53, float 1.000000e+00
  %71 = fadd fast float %48, 1.000000e+00
  %72 = fmul fast float %70, %71
  %73 = call float @dx.op.unary.f32(i32 6, float %72)  ; FAbs(value)
  %74 = fadd fast float %73, 1.000000e+02
  %75 = select i1 %68, float %73, float %74
  %76 = fcmp fast olt float %49, -1.000000e+00
  %77 = fcmp fast ogt float %49, -1.000000e+00
  %78 = select i1 %77, float %53, float 1.000000e+00
  %79 = fadd fast float %49, 1.000000e+00
  %80 = fmul fast float %78, %79
  %81 = call float @dx.op.unary.f32(i32 6, float %80)  ; FAbs(value)
  %82 = fadd fast float %81, 1.000000e+02
  %83 = select i1 %76, float %81, float %82
  %84 = call float @dx.op.binary.f32(i32 36, float %67, float %75)  ; FMin(a,b)
  %85 = call float @dx.op.binary.f32(i32 36, float %59, float %83)  ; FMin(a,b)
  %86 = call float @dx.op.binary.f32(i32 36, float %84, float %85)  ; FMin(a,b)
  %87 = fcmp fast ogt float %38, 0x3FECCCCCC0000000
  %88 = select i1 %87, float %84, float %86
  %89 = fcmp fast olt float %38, 0x3FB99999A0000000
  %90 = select i1 %89, float %85, float %88
  %91 = fcmp fast oeq float %90, %59
  %92 = fcmp fast oeq float %90, %75
  %93 = fcmp fast oeq float %90, %67
  %94 = or i1 %92, %93
  %95 = zext i1 %94 to i32
  %96 = xor i1 %92, true
  %97 = and i1 %91, %96
  %98 = or i1 %93, %97
  %99 = zext i1 %98 to i32
  %100 = fptosi float %36 to i32
  %101 = fptosi float %37 to i32
  %102 = add i32 %95, %100
  %103 = add i32 %99, %101
  %104 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %8, i32 51)  ; CBufferLoadLegacy(handle,regIndex)
  %105 = extractvalue %dx.types.CBufRet.i32 %104, 1
  %106 = shl i32 %105, 2
  %107 = lshr i32 %103, 2
  %108 = extractvalue %dx.types.CBufRet.i32 %104, 2
  %109 = mul i32 %107, %108
  %110 = lshr i32 %102, 3
  %111 = add i32 %110, %106
  %112 = add i32 %111, %109
  %113 = shl i32 %112, 2
  %114 = shl i32 %103, 3
  %115 = and i32 %114, 24
  %116 = and i32 %102, 7
  %117 = or i32 %115, %116
  %118 = shl i32 1, %117
  %119 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %113, i32 undef)  ; BufferLoad(srv,index,wot)
  %120 = extractvalue %dx.types.ResRet.i32 %119, 0
  %121 = and i32 %118, %120
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %162, label %123, !dx.controlflow.hints !22

; <label>:123                                     ; preds = %19
  %124 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %4, i32 0, i32 %102, i32 %103, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %125 = extractvalue %dx.types.ResRet.f32 %124, 2
  %126 = extractvalue %dx.types.ResRet.f32 %124, 3
  %127 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %8, i32 240)  ; CBufferLoadLegacy(handle,regIndex)
  %128 = extractvalue %dx.types.CBufRet.i32 %127, 0
  %129 = icmp ne i32 %128, 0
  %130 = call float @dx.op.unary.f32(i32 6, float %125)  ; FAbs(value)
  %131 = call float @dx.op.unary.f32(i32 6, float %126)  ; FAbs(value)
  %132 = fadd fast float %130, -5.000000e-01
  %133 = fadd fast float %131, -5.000000e-01
  %134 = fmul fast float %132, 2.000000e+00
  %135 = fmul fast float %133, 2.000000e+00
  %136 = call float @dx.op.unary.f32(i32 7, float %134)  ; Saturate(value)
  %137 = call float @dx.op.unary.f32(i32 7, float %135)  ; Saturate(value)
  %138 = fmul fast float %130, 2.000000e+00
  %139 = fmul fast float %131, 2.000000e+00
  %140 = call float @dx.op.unary.f32(i32 7, float %138)  ; Saturate(value)
  %141 = call float @dx.op.unary.f32(i32 7, float %139)  ; Saturate(value)
  %142 = fmul fast float %136, %136
  %143 = fmul fast float %142, 0x3FA48888A0000000
  %144 = fmul fast float %137, %137
  %145 = fmul fast float %144, 0x3FB2407960000000
  %146 = fmul fast float %140, 0x3F599999A0000000
  %147 = fmul fast float %141, 0x3F66C16C20000000
  %148 = fadd fast float %146, %143
  %149 = fadd fast float %147, %145
  %150 = fsub fast float -0.000000e+00, %148
  %151 = fsub fast float -0.000000e+00, %149
  %152 = fcmp fast olt float %125, 0.000000e+00
  %153 = fcmp fast olt float %126, 0.000000e+00
  %154 = select i1 %152, float 0.000000e+00, float 1.000000e+00
  %155 = select i1 %153, float 0.000000e+00, float 1.000000e+00
  %156 = fcmp fast une float %154, 0.000000e+00
  %157 = fcmp fast une float %155, 0.000000e+00
  %158 = select i1 %156, float %148, float %150
  %159 = select i1 %157, float %149, float %151
  %160 = select i1 %129, float %125, float %158
  %161 = select i1 %129, float %126, float %159
  br label %208

; <label>:162                                     ; preds = %19
  %163 = fcmp fast ole float %90, 1.000000e+02
  %164 = fadd fast float %90, -1.000000e+02
  %165 = select i1 %163, float %90, float %164
  %166 = sitofp i32 %102 to float
  %167 = sitofp i32 %103 to float
  %168 = fadd fast float %166, 5.000000e-01
  %169 = fadd fast float %167, 5.000000e-01
  %170 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %8, i32 235)  ; CBufferLoadLegacy(handle,regIndex)
  %171 = extractvalue %dx.types.CBufRet.f32 %170, 2
  %172 = fdiv fast float %171, %165
  %173 = fmul fast float %172, 9.843750e-01
  %174 = call float @dx.op.unary.f32(i32 7, float %173)  ; Saturate(value)
  %175 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %7, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %176 = extractvalue %dx.types.CBufRet.f32 %175, 0
  %177 = extractvalue %dx.types.CBufRet.f32 %175, 1
  %178 = extractvalue %dx.types.CBufRet.f32 %175, 2
  %179 = extractvalue %dx.types.CBufRet.f32 %175, 3
  %180 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %7, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %181 = extractvalue %dx.types.CBufRet.f32 %180, 0
  %182 = extractvalue %dx.types.CBufRet.f32 %180, 1
  %183 = extractvalue %dx.types.CBufRet.f32 %180, 2
  %184 = extractvalue %dx.types.CBufRet.f32 %180, 3
  %185 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %7, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %186 = extractvalue %dx.types.CBufRet.f32 %185, 0
  %187 = extractvalue %dx.types.CBufRet.f32 %185, 1
  %188 = extractvalue %dx.types.CBufRet.f32 %185, 2
  %189 = extractvalue %dx.types.CBufRet.f32 %185, 3
  %190 = fmul fast float %176, %168
  %191 = call float @dx.op.tertiary.f32(i32 46, float %169, float %177, float %190)  ; FMad(a,b,c)
  %192 = call float @dx.op.tertiary.f32(i32 46, float %174, float %178, float %191)  ; FMad(a,b,c)
  %193 = fadd fast float %192, %179
  %194 = fmul fast float %181, %168
  %195 = call float @dx.op.tertiary.f32(i32 46, float %169, float %182, float %194)  ; FMad(a,b,c)
  %196 = call float @dx.op.tertiary.f32(i32 46, float %174, float %183, float %195)  ; FMad(a,b,c)
  %197 = fadd fast float %196, %184
  %198 = fmul fast float %186, %168
  %199 = call float @dx.op.tertiary.f32(i32 46, float %169, float %187, float %198)  ; FMad(a,b,c)
  %200 = call float @dx.op.tertiary.f32(i32 46, float %174, float %188, float %199)  ; FMad(a,b,c)
  %201 = fadd fast float %200, %189
  %202 = fdiv fast float %193, %201
  %203 = fdiv fast float %197, %201
  %204 = fsub fast float %168, %202
  %205 = fsub fast float %169, %203
  %206 = fmul fast float %26, %204
  %207 = fmul fast float %27, %205
  br label %208

; <label>:208                                     ; preds = %162, %123
  %209 = phi float [ %160, %123 ], [ %206, %162 ]
  %210 = phi float [ %161, %123 ], [ %207, %162 ]
  %211 = fmul fast float %24, %209
  %212 = fmul fast float %25, %210
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %9, i32 %10, i32 undef, float %211, float %212, float %211, float %211, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %213 = fmul fast float %209, 1.920000e+03
  %214 = fmul fast float %210, 1.080000e+03
  %215 = call float @dx.op.unary.f32(i32 6, float %213)  ; FAbs(value)
  %216 = call float @dx.op.unary.f32(i32 6, float %214)  ; FAbs(value)
  %217 = fadd fast float %215, -3.000000e+00
  %218 = fadd fast float %216, -3.000000e+00
  %219 = fmul fast float %217, 0x3F8A98EF60000000
  %220 = fmul fast float %218, 0x3F8A98EF60000000
  %221 = call float @dx.op.unary.f32(i32 7, float %219)  ; Saturate(value)
  %222 = call float @dx.op.unary.f32(i32 7, float %220)  ; Saturate(value)
  %223 = fmul fast float %215, 0x3FD5555560000000
  %224 = fmul fast float %216, 0x3FD5555560000000
  %225 = call float @dx.op.unary.f32(i32 7, float %223)  ; Saturate(value)
  %226 = call float @dx.op.unary.f32(i32 7, float %224)  ; Saturate(value)
  %227 = call float @dx.op.unary.f32(i32 24, float %221)  ; Sqrt(value)
  %228 = call float @dx.op.unary.f32(i32 24, float %222)  ; Sqrt(value)
  %229 = fsub fast float %225, %227
  %230 = fsub fast float %226, %228
  %231 = fmul fast float %229, 5.000000e-01
  %232 = fmul fast float %230, 5.000000e-01
  %233 = fadd fast float %231, %227
  %234 = fadd fast float %232, %228
  %235 = fsub fast float -0.000000e+00, %233
  %236 = fsub fast float -0.000000e+00, %234
  %237 = fcmp fast olt float %213, 0.000000e+00
  %238 = fcmp fast olt float %214, 0.000000e+00
  %239 = select i1 %237, float 0.000000e+00, float 1.000000e+00
  %240 = select i1 %238, float 0.000000e+00, float 1.000000e+00
  %241 = fcmp fast une float %239, 0.000000e+00
  %242 = fcmp fast une float %240, 0.000000e+00
  %243 = select i1 %241, float %233, float %235
  %244 = select i1 %242, float %234, float %236
  %245 = fmul fast float %243, 1.023000e+03
  %246 = fmul fast float %244, 1.023000e+03
  %247 = fadd fast float %245, 1.023000e+03
  %248 = fadd fast float %246, 1.023000e+03
  %249 = call float @dx.op.unary.f32(i32 26, float %247)  ; Round_ne(value)
  %250 = call float @dx.op.unary.f32(i32 26, float %248)  ; Round_ne(value)
  %251 = fptoui float %249 to i32
  %252 = fptoui float %250 to i32
  %253 = shl i32 %252, 11
  %254 = or i32 %253, %251
  %255 = call float @dx.op.binary.f32(i32 35, float %90, float 0x3EE4F8B580000000)  ; FMax(a,b)
  %256 = call float @dx.op.binary.f32(i32 36, float %255, float 6.550400e+04)  ; FMin(a,b)
  %257 = call i32 @dx.op.legacyF32ToF16(i32 130, float %256)  ; LegacyF32ToF16(value)
  %258 = lshr i32 %257, 5
  %259 = and i32 %258, 1023
  %260 = and i32 %258, 510
  %261 = icmp eq i32 %260, 0
  %262 = zext i1 %261 to i32
  %263 = add nuw nsw i32 %262, %259
  %264 = and i32 %263, 510
  %265 = icmp eq i32 %264, 0
  %266 = zext i1 %265 to i32
  %267 = add nuw nsw i32 %266, %263
  %268 = and i32 %267, 510
  %269 = icmp eq i32 %268, 510
  %270 = sext i1 %269 to i32
  %271 = add nsw i32 %270, %267
  %272 = and i32 %271, 510
  %273 = icmp eq i32 %272, 510
  %274 = sext i1 %273 to i32
  %275 = add nsw i32 %274, %271
  %276 = shl i32 %275, 22
  %277 = or i32 %254, %276
  %278 = bitcast i32 %277 to float
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %9, i32 %10, i32 undef, float %278, float %278, float %278, float %278, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %279

; <label>:279                                     ; preds = %208, %0
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @dx.op.threadId.i32(i32, i32) #0

; Function Attrs: nounwind
declare void @dx.op.textureStore.f32(i32, %dx.types.Handle, i32, i32, i32, float, float, float, float, i8) #1

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32) #2

; Function Attrs: nounwind readnone
declare float @dx.op.unary.f32(i32, float) #0

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
!dx.entryPoints = !{!18}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !10, !13, !16}
!5 = !{!6, !7, !9}
!6 = !{i32 0, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 0, i32 1, i32 11, i32 0, null}
!7 = !{i32 1, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 1, i32 1, i32 2, i32 0, !8}
!8 = !{i32 0, i32 9}
!9 = !{i32 2, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 2, i32 1, i32 2, i32 0, !8}
!10 = !{!11, !12}
!11 = !{i32 0, %"class.RWTexture2D<float>"* undef, !"", i32 0, i32 0, i32 1, i32 2, i1 false, i1 false, i1 false, !8}
!12 = !{i32 1, %"class.RWTexture2D<vector<float, 2> >"* undef, !"", i32 0, i32 2, i32 1, i32 2, i1 false, i1 false, i1 false, !8}
!13 = !{!14, !15}
!14 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!15 = !{i32 1, %hostlayout.MotionVectorsStaticConstants* undef, !"", i32 0, i32 0, i32 1, i32 144, null}
!16 = !{!17}
!17 = !{i32 0, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!18 = !{void ()* @cs_motion_vectors_static_prepass_decode, !"cs_motion_vectors_static_prepass_decode", null, !4, !19}
!19 = !{i32 0, i64 272, i32 4, !20}
!20 = !{i32 8, i32 8, i32 1}
!21 = distinct !{!21, !"dx.controlflow.hints", i32 2}
!22 = distinct !{!22, !"dx.controlflow.hints", i32 1}

