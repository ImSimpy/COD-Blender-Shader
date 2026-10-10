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
; shader hash: ee10c0939179e45c97cf5d9f1239efea
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

define void @cs_motion_vectors_static_prepass() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call i32 @dx.op.threadId.i32(i32 93, i32 0)  ; ThreadId(component)
  %9 = call i32 @dx.op.threadId.i32(i32 93, i32 1)  ; ThreadId(component)
  %10 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %6, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %11 = extractvalue %dx.types.CBufRet.f32 %10, 0
  %12 = extractvalue %dx.types.CBufRet.f32 %10, 1
  %13 = fptoui float %11 to i32
  %14 = fptoui float %12 to i32
  %15 = icmp uge i32 %8, %13
  %16 = icmp uge i32 %9, %14
  %17 = or i1 %15, %16
  br i1 %17, label %275, label %18, !dx.controlflow.hints !20

; <label>:18                                      ; preds = %0
  %19 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %6, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %20 = extractvalue %dx.types.CBufRet.f32 %19, 2
  %21 = extractvalue %dx.types.CBufRet.f32 %19, 3
  %22 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %6, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %23 = extractvalue %dx.types.CBufRet.f32 %22, 0
  %24 = extractvalue %dx.types.CBufRet.f32 %22, 1
  %25 = extractvalue %dx.types.CBufRet.f32 %22, 2
  %26 = extractvalue %dx.types.CBufRet.f32 %22, 3
  %27 = sitofp i32 %8 to float
  %28 = sitofp i32 %9 to float
  %29 = fadd fast float %27, 5.000000e-01
  %30 = fadd fast float %28, 5.000000e-01
  %31 = fmul fast float %20, %29
  %32 = fmul fast float %21, %30
  %33 = fmul fast float %31, %23
  %34 = fmul fast float %32, %24
  %35 = fadd fast float %33, -5.000000e-01
  %36 = fadd fast float %34, -5.000000e-01
  %37 = call float @dx.op.unary.f32(i32 22, float %35)  ; Frc(value)
  %38 = call float @dx.op.unary.f32(i32 27, float %35)  ; Round_ni(value)
  %39 = call float @dx.op.unary.f32(i32 27, float %36)  ; Round_ni(value)
  %40 = fadd fast float %38, 1.000000e+00
  %41 = fadd fast float %39, 1.000000e+00
  %42 = fmul fast float %40, %25
  %43 = fmul fast float %41, %26
  %44 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %2, %dx.types.Handle %5, float %42, float %43, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %45 = extractvalue %dx.types.ResRet.f32 %44, 0
  %46 = extractvalue %dx.types.ResRet.f32 %44, 1
  %47 = extractvalue %dx.types.ResRet.f32 %44, 2
  %48 = extractvalue %dx.types.ResRet.f32 %44, 3
  %49 = fcmp fast olt float %45, -1.000000e+00
  %50 = fcmp fast ogt float %45, -1.000000e+00
  %51 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %7, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %52 = extractvalue %dx.types.CBufRet.f32 %51, 1
  %53 = select i1 %50, float %52, float 1.000000e+00
  %54 = fadd fast float %45, 1.000000e+00
  %55 = fmul fast float %53, %54
  %56 = call float @dx.op.unary.f32(i32 6, float %55)  ; FAbs(value)
  %57 = fadd fast float %56, 1.000000e+02
  %58 = select i1 %49, float %56, float %57
  %59 = fcmp fast olt float %46, -1.000000e+00
  %60 = fcmp fast ogt float %46, -1.000000e+00
  %61 = select i1 %60, float %52, float 1.000000e+00
  %62 = fadd fast float %46, 1.000000e+00
  %63 = fmul fast float %61, %62
  %64 = call float @dx.op.unary.f32(i32 6, float %63)  ; FAbs(value)
  %65 = fadd fast float %64, 1.000000e+02
  %66 = select i1 %59, float %64, float %65
  %67 = fcmp fast olt float %47, -1.000000e+00
  %68 = fcmp fast ogt float %47, -1.000000e+00
  %69 = select i1 %68, float %52, float 1.000000e+00
  %70 = fadd fast float %47, 1.000000e+00
  %71 = fmul fast float %69, %70
  %72 = call float @dx.op.unary.f32(i32 6, float %71)  ; FAbs(value)
  %73 = fadd fast float %72, 1.000000e+02
  %74 = select i1 %67, float %72, float %73
  %75 = fcmp fast olt float %48, -1.000000e+00
  %76 = fcmp fast ogt float %48, -1.000000e+00
  %77 = select i1 %76, float %52, float 1.000000e+00
  %78 = fadd fast float %48, 1.000000e+00
  %79 = fmul fast float %77, %78
  %80 = call float @dx.op.unary.f32(i32 6, float %79)  ; FAbs(value)
  %81 = fadd fast float %80, 1.000000e+02
  %82 = select i1 %75, float %80, float %81
  %83 = call float @dx.op.binary.f32(i32 36, float %66, float %74)  ; FMin(a,b)
  %84 = call float @dx.op.binary.f32(i32 36, float %58, float %82)  ; FMin(a,b)
  %85 = call float @dx.op.binary.f32(i32 36, float %83, float %84)  ; FMin(a,b)
  %86 = fcmp fast ogt float %37, 0x3FECCCCCC0000000
  %87 = select i1 %86, float %83, float %85
  %88 = fcmp fast olt float %37, 0x3FB99999A0000000
  %89 = select i1 %88, float %84, float %87
  %90 = fcmp fast oeq float %89, %58
  %91 = fcmp fast oeq float %89, %74
  %92 = fcmp fast oeq float %89, %66
  %93 = or i1 %91, %92
  %94 = zext i1 %93 to i32
  %95 = xor i1 %91, true
  %96 = and i1 %90, %95
  %97 = or i1 %92, %96
  %98 = zext i1 %97 to i32
  %99 = fptosi float %35 to i32
  %100 = fptosi float %36 to i32
  %101 = add i32 %94, %99
  %102 = add i32 %98, %100
  %103 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %7, i32 51)  ; CBufferLoadLegacy(handle,regIndex)
  %104 = extractvalue %dx.types.CBufRet.i32 %103, 1
  %105 = shl i32 %104, 2
  %106 = lshr i32 %102, 2
  %107 = extractvalue %dx.types.CBufRet.i32 %103, 2
  %108 = mul i32 %106, %107
  %109 = lshr i32 %101, 3
  %110 = add i32 %109, %105
  %111 = add i32 %110, %108
  %112 = shl i32 %111, 2
  %113 = shl i32 %102, 3
  %114 = and i32 %113, 24
  %115 = and i32 %101, 7
  %116 = or i32 %114, %115
  %117 = shl i32 1, %116
  %118 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %112, i32 undef)  ; BufferLoad(srv,index,wot)
  %119 = extractvalue %dx.types.ResRet.i32 %118, 0
  %120 = and i32 %117, %119
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %160, label %122, !dx.controlflow.hints !21

; <label>:122                                     ; preds = %18
  %123 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %3, i32 0, i32 %101, i32 %102, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %124 = extractvalue %dx.types.ResRet.f32 %123, 2
  %125 = extractvalue %dx.types.ResRet.f32 %123, 3
  %126 = fadd fast float %124, 0xBFE0101020000000
  %127 = fadd fast float %125, 0xBFE0101020000000
  %128 = fmul fast float %126, 2.000000e+00
  %129 = fmul fast float %127, 2.000000e+00
  %130 = call float @dx.op.unary.f32(i32 6, float %128)  ; FAbs(value)
  %131 = call float @dx.op.unary.f32(i32 6, float %129)  ; FAbs(value)
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
  %152 = fcmp fast olt float %128, 0.000000e+00
  %153 = fcmp fast olt float %129, 0.000000e+00
  %154 = select i1 %152, float 0.000000e+00, float 1.000000e+00
  %155 = select i1 %153, float 0.000000e+00, float 1.000000e+00
  %156 = fcmp fast une float %154, 0.000000e+00
  %157 = fcmp fast une float %155, 0.000000e+00
  %158 = select i1 %156, float %148, float %150
  %159 = select i1 %157, float %149, float %151
  br label %206

; <label>:160                                     ; preds = %18
  %161 = fcmp fast ole float %89, 1.000000e+02
  %162 = fadd fast float %89, -1.000000e+02
  %163 = select i1 %161, float %89, float %162
  %164 = sitofp i32 %101 to float
  %165 = sitofp i32 %102 to float
  %166 = fadd fast float %164, 5.000000e-01
  %167 = fadd fast float %165, 5.000000e-01
  %168 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %7, i32 235)  ; CBufferLoadLegacy(handle,regIndex)
  %169 = extractvalue %dx.types.CBufRet.f32 %168, 2
  %170 = fdiv fast float %169, %163
  %171 = fmul fast float %170, 9.843750e-01
  %172 = call float @dx.op.unary.f32(i32 7, float %171)  ; Saturate(value)
  %173 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %6, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %174 = extractvalue %dx.types.CBufRet.f32 %173, 0
  %175 = extractvalue %dx.types.CBufRet.f32 %173, 1
  %176 = extractvalue %dx.types.CBufRet.f32 %173, 2
  %177 = extractvalue %dx.types.CBufRet.f32 %173, 3
  %178 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %6, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %179 = extractvalue %dx.types.CBufRet.f32 %178, 0
  %180 = extractvalue %dx.types.CBufRet.f32 %178, 1
  %181 = extractvalue %dx.types.CBufRet.f32 %178, 2
  %182 = extractvalue %dx.types.CBufRet.f32 %178, 3
  %183 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %6, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %184 = extractvalue %dx.types.CBufRet.f32 %183, 0
  %185 = extractvalue %dx.types.CBufRet.f32 %183, 1
  %186 = extractvalue %dx.types.CBufRet.f32 %183, 2
  %187 = extractvalue %dx.types.CBufRet.f32 %183, 3
  %188 = fmul fast float %174, %166
  %189 = call float @dx.op.tertiary.f32(i32 46, float %167, float %175, float %188)  ; FMad(a,b,c)
  %190 = call float @dx.op.tertiary.f32(i32 46, float %172, float %176, float %189)  ; FMad(a,b,c)
  %191 = fadd fast float %190, %177
  %192 = fmul fast float %179, %166
  %193 = call float @dx.op.tertiary.f32(i32 46, float %167, float %180, float %192)  ; FMad(a,b,c)
  %194 = call float @dx.op.tertiary.f32(i32 46, float %172, float %181, float %193)  ; FMad(a,b,c)
  %195 = fadd fast float %194, %182
  %196 = fmul fast float %184, %166
  %197 = call float @dx.op.tertiary.f32(i32 46, float %167, float %185, float %196)  ; FMad(a,b,c)
  %198 = call float @dx.op.tertiary.f32(i32 46, float %172, float %186, float %197)  ; FMad(a,b,c)
  %199 = fadd fast float %198, %187
  %200 = fdiv fast float %191, %199
  %201 = fdiv fast float %195, %199
  %202 = fsub fast float %166, %200
  %203 = fsub fast float %167, %201
  %204 = fmul fast float %25, %202
  %205 = fmul fast float %26, %203
  br label %206

; <label>:206                                     ; preds = %160, %122
  %207 = phi float [ %158, %122 ], [ %204, %160 ]
  %208 = phi float [ %159, %122 ], [ %205, %160 ]
  %209 = fmul fast float %207, 1.920000e+03
  %210 = fmul fast float %208, 1.080000e+03
  %211 = call float @dx.op.unary.f32(i32 6, float %209)  ; FAbs(value)
  %212 = call float @dx.op.unary.f32(i32 6, float %210)  ; FAbs(value)
  %213 = fadd fast float %211, -3.000000e+00
  %214 = fadd fast float %212, -3.000000e+00
  %215 = fmul fast float %213, 0x3F8A98EF60000000
  %216 = fmul fast float %214, 0x3F8A98EF60000000
  %217 = call float @dx.op.unary.f32(i32 7, float %215)  ; Saturate(value)
  %218 = call float @dx.op.unary.f32(i32 7, float %216)  ; Saturate(value)
  %219 = fmul fast float %211, 0x3FD5555560000000
  %220 = fmul fast float %212, 0x3FD5555560000000
  %221 = call float @dx.op.unary.f32(i32 7, float %219)  ; Saturate(value)
  %222 = call float @dx.op.unary.f32(i32 7, float %220)  ; Saturate(value)
  %223 = call float @dx.op.unary.f32(i32 24, float %217)  ; Sqrt(value)
  %224 = call float @dx.op.unary.f32(i32 24, float %218)  ; Sqrt(value)
  %225 = fsub fast float %221, %223
  %226 = fsub fast float %222, %224
  %227 = fmul fast float %225, 5.000000e-01
  %228 = fmul fast float %226, 5.000000e-01
  %229 = fadd fast float %227, %223
  %230 = fadd fast float %228, %224
  %231 = fsub fast float -0.000000e+00, %229
  %232 = fsub fast float -0.000000e+00, %230
  %233 = fcmp fast olt float %209, 0.000000e+00
  %234 = fcmp fast olt float %210, 0.000000e+00
  %235 = select i1 %233, float 0.000000e+00, float 1.000000e+00
  %236 = select i1 %234, float 0.000000e+00, float 1.000000e+00
  %237 = fcmp fast une float %235, 0.000000e+00
  %238 = fcmp fast une float %236, 0.000000e+00
  %239 = select i1 %237, float %229, float %231
  %240 = select i1 %238, float %230, float %232
  %241 = fmul fast float %239, 1.023000e+03
  %242 = fmul fast float %240, 1.023000e+03
  %243 = fadd fast float %241, 1.023000e+03
  %244 = fadd fast float %242, 1.023000e+03
  %245 = call float @dx.op.unary.f32(i32 26, float %243)  ; Round_ne(value)
  %246 = call float @dx.op.unary.f32(i32 26, float %244)  ; Round_ne(value)
  %247 = fptoui float %245 to i32
  %248 = fptoui float %246 to i32
  %249 = shl i32 %248, 11
  %250 = or i32 %249, %247
  %251 = call float @dx.op.binary.f32(i32 35, float %89, float 0x3EE4F8B580000000)  ; FMax(a,b)
  %252 = call float @dx.op.binary.f32(i32 36, float %251, float 6.550400e+04)  ; FMin(a,b)
  %253 = call i32 @dx.op.legacyF32ToF16(i32 130, float %252)  ; LegacyF32ToF16(value)
  %254 = lshr i32 %253, 5
  %255 = and i32 %254, 1023
  %256 = and i32 %254, 510
  %257 = icmp eq i32 %256, 0
  %258 = zext i1 %257 to i32
  %259 = add nuw nsw i32 %258, %255
  %260 = and i32 %259, 510
  %261 = icmp eq i32 %260, 0
  %262 = zext i1 %261 to i32
  %263 = add nuw nsw i32 %262, %259
  %264 = and i32 %263, 510
  %265 = icmp eq i32 %264, 510
  %266 = sext i1 %265 to i32
  %267 = add nsw i32 %266, %263
  %268 = and i32 %267, 510
  %269 = icmp eq i32 %268, 510
  %270 = sext i1 %269 to i32
  %271 = add nsw i32 %270, %267
  %272 = shl i32 %271, 22
  %273 = or i32 %250, %272
  %274 = bitcast i32 %273 to float
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %8, i32 %9, i32 undef, float %274, float %274, float %274, float %274, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %275

; <label>:275                                     ; preds = %206, %0
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
!dx.entryPoints = !{!17}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !10, !12, !15}
!5 = !{!6, !7, !9}
!6 = !{i32 0, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 0, i32 1, i32 11, i32 0, null}
!7 = !{i32 1, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 1, i32 1, i32 2, i32 0, !8}
!8 = !{i32 0, i32 9}
!9 = !{i32 2, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 2, i32 1, i32 2, i32 0, !8}
!10 = !{!11}
!11 = !{i32 0, %"class.RWTexture2D<float>"* undef, !"", i32 0, i32 0, i32 1, i32 2, i1 false, i1 false, i1 false, !8}
!12 = !{!13, !14}
!13 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!14 = !{i32 1, %hostlayout.MotionVectorsStaticConstants* undef, !"", i32 0, i32 0, i32 1, i32 144, null}
!15 = !{!16}
!16 = !{i32 0, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!17 = !{void ()* @cs_motion_vectors_static_prepass, !"cs_motion_vectors_static_prepass", null, !4, !18}
!18 = !{i32 0, i64 272, i32 4, !19}
!19 = !{i32 8, i32 8, i32 1}
!20 = distinct !{!20, !"dx.controlflow.hints", i32 2}
!21 = distinct !{!21, !"dx.controlflow.hints", i32 1}

