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
; shader hash: 55c8042249411b28afabf32e6f42ac7c
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
  %11 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %7, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %12 = extractvalue %dx.types.CBufRet.f32 %11, 0
  %13 = extractvalue %dx.types.CBufRet.f32 %11, 1
  %14 = fptoui float %12 to i32
  %15 = fptoui float %13 to i32
  %16 = icmp uge i32 %9, %14
  %17 = icmp uge i32 %10, %15
  %18 = or i1 %16, %17
  br i1 %18, label %322, label %19, !dx.controlflow.hints !22

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
  %104 = fcmp fast ole float %90, 1.000000e+02
  %105 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %8, i32 51)  ; CBufferLoadLegacy(handle,regIndex)
  %106 = extractvalue %dx.types.CBufRet.i32 %105, 1
  %107 = shl i32 %106, 2
  %108 = lshr i32 %103, 2
  %109 = extractvalue %dx.types.CBufRet.i32 %105, 2
  %110 = mul i32 %108, %109
  %111 = lshr i32 %102, 3
  %112 = add i32 %111, %107
  %113 = add i32 %112, %110
  %114 = shl i32 %113, 2
  %115 = shl i32 %103, 3
  %116 = and i32 %115, 24
  %117 = and i32 %102, 7
  %118 = or i32 %116, %117
  %119 = shl i32 1, %118
  %120 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %114, i32 undef)  ; BufferLoad(srv,index,wot)
  %121 = extractvalue %dx.types.ResRet.i32 %120, 0
  %122 = and i32 %119, %121
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %162, label %124, !dx.controlflow.hints !23

; <label>:124                                     ; preds = %19
  %125 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %4, i32 0, i32 %102, i32 %103, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %126 = extractvalue %dx.types.ResRet.f32 %125, 2
  %127 = extractvalue %dx.types.ResRet.f32 %125, 3
  %128 = fadd fast float %126, 0xBFE0101020000000
  %129 = fadd fast float %127, 0xBFE0101020000000
  %130 = fmul fast float %128, 2.000000e+00
  %131 = fmul fast float %129, 2.000000e+00
  %132 = call float @dx.op.unary.f32(i32 6, float %130)  ; FAbs(value)
  %133 = call float @dx.op.unary.f32(i32 6, float %131)  ; FAbs(value)
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
  %154 = fcmp fast olt float %130, 0.000000e+00
  %155 = fcmp fast olt float %131, 0.000000e+00
  %156 = select i1 %154, float 0.000000e+00, float 1.000000e+00
  %157 = select i1 %155, float 0.000000e+00, float 1.000000e+00
  %158 = fcmp fast une float %156, 0.000000e+00
  %159 = fcmp fast une float %157, 0.000000e+00
  %160 = select i1 %158, float %150, float %152
  %161 = select i1 %159, float %151, float %153
  br label %207

; <label>:162                                     ; preds = %19
  %163 = fadd fast float %90, -1.000000e+02
  %164 = select i1 %104, float %90, float %163
  %165 = sitofp i32 %102 to float
  %166 = sitofp i32 %103 to float
  %167 = fadd fast float %165, 5.000000e-01
  %168 = fadd fast float %166, 5.000000e-01
  %169 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %8, i32 235)  ; CBufferLoadLegacy(handle,regIndex)
  %170 = extractvalue %dx.types.CBufRet.f32 %169, 2
  %171 = fdiv fast float %170, %164
  %172 = fmul fast float %171, 9.843750e-01
  %173 = call float @dx.op.unary.f32(i32 7, float %172)  ; Saturate(value)
  %174 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %7, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %175 = extractvalue %dx.types.CBufRet.f32 %174, 0
  %176 = extractvalue %dx.types.CBufRet.f32 %174, 1
  %177 = extractvalue %dx.types.CBufRet.f32 %174, 2
  %178 = extractvalue %dx.types.CBufRet.f32 %174, 3
  %179 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %7, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %180 = extractvalue %dx.types.CBufRet.f32 %179, 0
  %181 = extractvalue %dx.types.CBufRet.f32 %179, 1
  %182 = extractvalue %dx.types.CBufRet.f32 %179, 2
  %183 = extractvalue %dx.types.CBufRet.f32 %179, 3
  %184 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %7, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %185 = extractvalue %dx.types.CBufRet.f32 %184, 0
  %186 = extractvalue %dx.types.CBufRet.f32 %184, 1
  %187 = extractvalue %dx.types.CBufRet.f32 %184, 2
  %188 = extractvalue %dx.types.CBufRet.f32 %184, 3
  %189 = fmul fast float %175, %167
  %190 = call float @dx.op.tertiary.f32(i32 46, float %168, float %176, float %189)  ; FMad(a,b,c)
  %191 = call float @dx.op.tertiary.f32(i32 46, float %173, float %177, float %190)  ; FMad(a,b,c)
  %192 = fadd fast float %191, %178
  %193 = fmul fast float %180, %167
  %194 = call float @dx.op.tertiary.f32(i32 46, float %168, float %181, float %193)  ; FMad(a,b,c)
  %195 = call float @dx.op.tertiary.f32(i32 46, float %173, float %182, float %194)  ; FMad(a,b,c)
  %196 = fadd fast float %195, %183
  %197 = fmul fast float %185, %167
  %198 = call float @dx.op.tertiary.f32(i32 46, float %168, float %186, float %197)  ; FMad(a,b,c)
  %199 = call float @dx.op.tertiary.f32(i32 46, float %173, float %187, float %198)  ; FMad(a,b,c)
  %200 = fadd fast float %199, %188
  %201 = fdiv fast float %192, %200
  %202 = fdiv fast float %196, %200
  %203 = fsub fast float %167, %201
  %204 = fsub fast float %168, %202
  %205 = fmul fast float %26, %203
  %206 = fmul fast float %27, %204
  br label %207

; <label>:207                                     ; preds = %162, %124
  %208 = phi float [ %160, %124 ], [ %205, %162 ]
  %209 = phi float [ %161, %124 ], [ %206, %162 ]
  %210 = fmul fast float %208, 1.920000e+03
  %211 = fmul fast float %209, 1.080000e+03
  %212 = call float @dx.op.unary.f32(i32 6, float %210)  ; FAbs(value)
  %213 = call float @dx.op.unary.f32(i32 6, float %211)  ; FAbs(value)
  %214 = fadd fast float %212, -3.000000e+00
  %215 = fadd fast float %213, -3.000000e+00
  %216 = fmul fast float %214, 0x3F8A98EF60000000
  %217 = fmul fast float %215, 0x3F8A98EF60000000
  %218 = call float @dx.op.unary.f32(i32 7, float %216)  ; Saturate(value)
  %219 = call float @dx.op.unary.f32(i32 7, float %217)  ; Saturate(value)
  %220 = fmul fast float %212, 0x3FD5555560000000
  %221 = fmul fast float %213, 0x3FD5555560000000
  %222 = call float @dx.op.unary.f32(i32 7, float %220)  ; Saturate(value)
  %223 = call float @dx.op.unary.f32(i32 7, float %221)  ; Saturate(value)
  %224 = call float @dx.op.unary.f32(i32 24, float %218)  ; Sqrt(value)
  %225 = call float @dx.op.unary.f32(i32 24, float %219)  ; Sqrt(value)
  %226 = fsub fast float %222, %224
  %227 = fsub fast float %223, %225
  %228 = fmul fast float %226, 5.000000e-01
  %229 = fmul fast float %227, 5.000000e-01
  %230 = fadd fast float %228, %224
  %231 = fadd fast float %229, %225
  %232 = fsub fast float -0.000000e+00, %230
  %233 = fsub fast float -0.000000e+00, %231
  %234 = fcmp fast olt float %210, 0.000000e+00
  %235 = fcmp fast olt float %211, 0.000000e+00
  %236 = select i1 %234, float 0.000000e+00, float 1.000000e+00
  %237 = select i1 %235, float 0.000000e+00, float 1.000000e+00
  %238 = fcmp fast une float %236, 0.000000e+00
  %239 = fcmp fast une float %237, 0.000000e+00
  %240 = select i1 %238, float %230, float %232
  %241 = select i1 %239, float %231, float %233
  %242 = fmul fast float %240, 1.023000e+03
  %243 = fmul fast float %241, 1.023000e+03
  %244 = fadd fast float %242, 1.023000e+03
  %245 = fadd fast float %243, 1.023000e+03
  %246 = call float @dx.op.unary.f32(i32 26, float %244)  ; Round_ne(value)
  %247 = call float @dx.op.unary.f32(i32 26, float %245)  ; Round_ne(value)
  %248 = fptoui float %246 to i32
  %249 = fptoui float %247 to i32
  %250 = shl i32 %249, 11
  %251 = or i32 %250, %248
  %252 = call float @dx.op.binary.f32(i32 35, float %90, float 0x3EE4F8B580000000)  ; FMax(a,b)
  %253 = call float @dx.op.binary.f32(i32 36, float %252, float 6.550400e+04)  ; FMin(a,b)
  %254 = call i32 @dx.op.legacyF32ToF16(i32 130, float %253)  ; LegacyF32ToF16(value)
  %255 = lshr i32 %254, 5
  %256 = and i32 %255, 1023
  %257 = and i32 %255, 510
  %258 = icmp eq i32 %257, 0
  %259 = zext i1 %258 to i32
  %260 = add nuw nsw i32 %259, %256
  %261 = and i32 %260, 510
  %262 = icmp eq i32 %261, 0
  %263 = zext i1 %262 to i32
  %264 = add nuw nsw i32 %263, %260
  %265 = and i32 %264, 510
  %266 = icmp eq i32 %265, 510
  %267 = sext i1 %266 to i32
  %268 = add nsw i32 %267, %264
  %269 = and i32 %268, 510
  %270 = icmp eq i32 %269, 510
  %271 = sext i1 %270 to i32
  %272 = add nsw i32 %271, %268
  %273 = shl i32 %272, 22
  %274 = or i32 %251, %273
  %275 = bitcast i32 %274 to float
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %9, i32 %10, i32 undef, float %275, float %275, float %275, float %275, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %276 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %7, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %277 = extractvalue %dx.types.CBufRet.f32 %276, 1
  %278 = extractvalue %dx.types.CBufRet.f32 %276, 0
  %279 = select i1 %104, float %277, float %278
  %280 = extractvalue %dx.types.CBufRet.f32 %276, 2
  %281 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %7, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %282 = extractvalue %dx.types.CBufRet.f32 %281, 0
  %283 = extractvalue %dx.types.CBufRet.f32 %281, 1
  %284 = fdiv fast float %282, %283
  %285 = fmul fast float %208, 1.080000e+03
  %286 = fmul fast float %285, %280
  %287 = fmul fast float %286, %284
  %288 = fmul fast float %211, %280
  %289 = fmul fast float %287, %287
  %290 = fmul fast float %288, %288
  %291 = fadd fast float %289, %290
  %292 = call float @dx.op.unary.f32(i32 24, float %291)  ; Sqrt(value)
  %293 = call float @dx.op.binary.f32(i32 35, float %292, float 0x3F1A36E2E0000000)  ; FMax(a,b)
  %294 = fdiv fast float 1.000000e+00, %293
  %295 = fmul fast float %294, %288
  %296 = call float @dx.op.binary.f32(i32 36, float %292, float 4.000000e+01)  ; FMin(a,b)
  %297 = fadd fast float %296, -2.000000e+00
  %298 = fmul fast float %297, 0x3FF5555560000000
  %299 = call float @dx.op.binary.f32(i32 35, float %298, float 0.000000e+00)  ; FMax(a,b)
  %300 = call float @dx.op.binary.f32(i32 36, float %299, float %296)  ; FMin(a,b)
  %301 = fmul fast float %300, %279
  %302 = fmul fast float %295, %301
  %303 = fcmp fast oge float %302, 0.000000e+00
  %304 = fsub fast float -0.000000e+00, %301
  %305 = select i1 %303, float %301, float %304
  %306 = fmul fast float %287, 0x3F897FE640000000
  %307 = fmul fast float %306, %294
  %308 = fmul fast float %307, %301
  %309 = fmul fast float %305, 0x3F897FE640000000
  %310 = fadd fast float %308, 0x3FDFDFDFE0000000
  %311 = fadd fast float %309, 0x3FDFDFDFE0000000
  %312 = fmul fast float %90, 0x3F00000000000000
  %313 = call float @dx.op.unary.f32(i32 7, float %312)  ; Saturate(value)
  %314 = bitcast float %313 to i32
  %315 = ashr i32 %314, 1
  %316 = add nsw i32 %315, 532487669
  %317 = bitcast i32 %316 to float
  %318 = fmul fast float %317, 2.550000e+02
  %319 = call float @dx.op.unary.f32(i32 27, float %318)  ; Round_ni(value)
  %320 = fmul fast float %319, 0x3F70101020000000
  %321 = call float @dx.op.unary.f32(i32 22, float %318)  ; Frc(value)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %9, i32 %10, i32 undef, float %310, float %311, float %320, float %321, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %322

; <label>:322                                     ; preds = %207, %0
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
!dx.entryPoints = !{!19}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !10, !14, !17}
!5 = !{!6, !7, !9}
!6 = !{i32 0, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 0, i32 1, i32 11, i32 0, null}
!7 = !{i32 1, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 1, i32 1, i32 2, i32 0, !8}
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

