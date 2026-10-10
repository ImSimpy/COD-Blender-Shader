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
; shader hash: 232e5ce3da851789c5838787367fc692
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
  %10 = alloca [4 x i32], align 4
  %11 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %6, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %12 = extractvalue %dx.types.CBufRet.f32 %11, 0
  %13 = extractvalue %dx.types.CBufRet.f32 %11, 1
  %14 = fptoui float %12 to i32
  %15 = fptoui float %13 to i32
  %16 = icmp uge i32 %8, %14
  %17 = icmp uge i32 %9, %15
  %18 = or i1 %16, %17
  br i1 %18, label %293, label %19, !dx.controlflow.hints !20

; <label>:19                                      ; preds = %0
  %20 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %6, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %21 = extractvalue %dx.types.CBufRet.f32 %20, 2
  %22 = extractvalue %dx.types.CBufRet.f32 %20, 3
  %23 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %6, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %24 = extractvalue %dx.types.CBufRet.f32 %23, 0
  %25 = extractvalue %dx.types.CBufRet.f32 %23, 1
  %26 = extractvalue %dx.types.CBufRet.f32 %23, 2
  %27 = extractvalue %dx.types.CBufRet.f32 %23, 3
  %28 = sitofp i32 %8 to float
  %29 = sitofp i32 %9 to float
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
  %45 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %2, %dx.types.Handle %5, float %43, float %44, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %46 = extractvalue %dx.types.ResRet.f32 %45, 0
  %47 = extractvalue %dx.types.ResRet.f32 %45, 1
  %48 = extractvalue %dx.types.ResRet.f32 %45, 2
  %49 = extractvalue %dx.types.ResRet.f32 %45, 3
  %50 = fcmp fast olt float %46, -1.000000e+00
  %51 = fcmp fast ogt float %46, -1.000000e+00
  %52 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %7, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
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
  %104 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %7, i32 51)  ; CBufferLoadLegacy(handle,regIndex)
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
  %119 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %113, i32 undef)  ; BufferLoad(srv,index,wot)
  %120 = extractvalue %dx.types.ResRet.i32 %119, 0
  %121 = and i32 %118, %120
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %178, label %123, !dx.controlflow.hints !21

; <label>:123                                     ; preds = %19
  %124 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %6, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %125 = extractvalue %dx.types.CBufRet.i32 %124, 0
  %126 = extractvalue %dx.types.CBufRet.i32 %124, 1
  %127 = extractvalue %dx.types.CBufRet.i32 %124, 2
  %128 = extractvalue %dx.types.CBufRet.i32 %124, 3
  %129 = lshr i32 %102, 1
  %130 = lshr i32 %103, 1
  %131 = and i32 %102, 1
  %132 = shl i32 %103, 1
  %133 = and i32 %132, 2
  %134 = or i32 %133, %131
  %135 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i32 0, i32 0
  store i32 %125, i32* %135, align 4
  %136 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i32 0, i32 1
  store i32 %126, i32* %136, align 4
  %137 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i32 0, i32 2
  store i32 %127, i32* %137, align 4
  %138 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i32 0, i32 3
  store i32 %128, i32* %138, align 4
  %139 = getelementptr [4 x i32], [4 x i32]* %10, i32 0, i32 %134
  %140 = load i32, i32* %139, align 4, !tbaa !22
  %141 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %3, i32 %140, i32 %129, i32 %130, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %142 = extractvalue %dx.types.ResRet.f32 %141, 2
  %143 = extractvalue %dx.types.ResRet.f32 %141, 3
  %144 = fadd fast float %142, 0xBFE0101020000000
  %145 = fadd fast float %143, 0xBFE0101020000000
  %146 = fmul fast float %144, 2.000000e+00
  %147 = fmul fast float %145, 2.000000e+00
  %148 = call float @dx.op.unary.f32(i32 6, float %146)  ; FAbs(value)
  %149 = call float @dx.op.unary.f32(i32 6, float %147)  ; FAbs(value)
  %150 = fadd fast float %148, -5.000000e-01
  %151 = fadd fast float %149, -5.000000e-01
  %152 = fmul fast float %150, 2.000000e+00
  %153 = fmul fast float %151, 2.000000e+00
  %154 = call float @dx.op.unary.f32(i32 7, float %152)  ; Saturate(value)
  %155 = call float @dx.op.unary.f32(i32 7, float %153)  ; Saturate(value)
  %156 = fmul fast float %148, 2.000000e+00
  %157 = fmul fast float %149, 2.000000e+00
  %158 = call float @dx.op.unary.f32(i32 7, float %156)  ; Saturate(value)
  %159 = call float @dx.op.unary.f32(i32 7, float %157)  ; Saturate(value)
  %160 = fmul fast float %154, %154
  %161 = fmul fast float %160, 0x3FA48888A0000000
  %162 = fmul fast float %155, %155
  %163 = fmul fast float %162, 0x3FB2407960000000
  %164 = fmul fast float %158, 0x3F599999A0000000
  %165 = fmul fast float %159, 0x3F66C16C20000000
  %166 = fadd fast float %164, %161
  %167 = fadd fast float %165, %163
  %168 = fsub fast float -0.000000e+00, %166
  %169 = fsub fast float -0.000000e+00, %167
  %170 = fcmp fast olt float %146, 0.000000e+00
  %171 = fcmp fast olt float %147, 0.000000e+00
  %172 = select i1 %170, float 0.000000e+00, float 1.000000e+00
  %173 = select i1 %171, float 0.000000e+00, float 1.000000e+00
  %174 = fcmp fast une float %172, 0.000000e+00
  %175 = fcmp fast une float %173, 0.000000e+00
  %176 = select i1 %174, float %166, float %168
  %177 = select i1 %175, float %167, float %169
  br label %224

; <label>:178                                     ; preds = %19
  %179 = fcmp fast ole float %90, 1.000000e+02
  %180 = fadd fast float %90, -1.000000e+02
  %181 = select i1 %179, float %90, float %180
  %182 = sitofp i32 %102 to float
  %183 = sitofp i32 %103 to float
  %184 = fadd fast float %182, 5.000000e-01
  %185 = fadd fast float %183, 5.000000e-01
  %186 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %7, i32 235)  ; CBufferLoadLegacy(handle,regIndex)
  %187 = extractvalue %dx.types.CBufRet.f32 %186, 2
  %188 = fdiv fast float %187, %181
  %189 = fmul fast float %188, 9.843750e-01
  %190 = call float @dx.op.unary.f32(i32 7, float %189)  ; Saturate(value)
  %191 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %6, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %192 = extractvalue %dx.types.CBufRet.f32 %191, 0
  %193 = extractvalue %dx.types.CBufRet.f32 %191, 1
  %194 = extractvalue %dx.types.CBufRet.f32 %191, 2
  %195 = extractvalue %dx.types.CBufRet.f32 %191, 3
  %196 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %6, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %197 = extractvalue %dx.types.CBufRet.f32 %196, 0
  %198 = extractvalue %dx.types.CBufRet.f32 %196, 1
  %199 = extractvalue %dx.types.CBufRet.f32 %196, 2
  %200 = extractvalue %dx.types.CBufRet.f32 %196, 3
  %201 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %6, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %202 = extractvalue %dx.types.CBufRet.f32 %201, 0
  %203 = extractvalue %dx.types.CBufRet.f32 %201, 1
  %204 = extractvalue %dx.types.CBufRet.f32 %201, 2
  %205 = extractvalue %dx.types.CBufRet.f32 %201, 3
  %206 = fmul fast float %192, %184
  %207 = call float @dx.op.tertiary.f32(i32 46, float %185, float %193, float %206)  ; FMad(a,b,c)
  %208 = call float @dx.op.tertiary.f32(i32 46, float %190, float %194, float %207)  ; FMad(a,b,c)
  %209 = fadd fast float %208, %195
  %210 = fmul fast float %197, %184
  %211 = call float @dx.op.tertiary.f32(i32 46, float %185, float %198, float %210)  ; FMad(a,b,c)
  %212 = call float @dx.op.tertiary.f32(i32 46, float %190, float %199, float %211)  ; FMad(a,b,c)
  %213 = fadd fast float %212, %200
  %214 = fmul fast float %202, %184
  %215 = call float @dx.op.tertiary.f32(i32 46, float %185, float %203, float %214)  ; FMad(a,b,c)
  %216 = call float @dx.op.tertiary.f32(i32 46, float %190, float %204, float %215)  ; FMad(a,b,c)
  %217 = fadd fast float %216, %205
  %218 = fdiv fast float %209, %217
  %219 = fdiv fast float %213, %217
  %220 = fsub fast float %184, %218
  %221 = fsub fast float %185, %219
  %222 = fmul fast float %26, %220
  %223 = fmul fast float %27, %221
  br label %224

; <label>:224                                     ; preds = %178, %123
  %225 = phi float [ %176, %123 ], [ %222, %178 ]
  %226 = phi float [ %177, %123 ], [ %223, %178 ]
  %227 = fmul fast float %225, 1.920000e+03
  %228 = fmul fast float %226, 1.080000e+03
  %229 = call float @dx.op.unary.f32(i32 6, float %227)  ; FAbs(value)
  %230 = call float @dx.op.unary.f32(i32 6, float %228)  ; FAbs(value)
  %231 = fadd fast float %229, -3.000000e+00
  %232 = fadd fast float %230, -3.000000e+00
  %233 = fmul fast float %231, 0x3F8A98EF60000000
  %234 = fmul fast float %232, 0x3F8A98EF60000000
  %235 = call float @dx.op.unary.f32(i32 7, float %233)  ; Saturate(value)
  %236 = call float @dx.op.unary.f32(i32 7, float %234)  ; Saturate(value)
  %237 = fmul fast float %229, 0x3FD5555560000000
  %238 = fmul fast float %230, 0x3FD5555560000000
  %239 = call float @dx.op.unary.f32(i32 7, float %237)  ; Saturate(value)
  %240 = call float @dx.op.unary.f32(i32 7, float %238)  ; Saturate(value)
  %241 = call float @dx.op.unary.f32(i32 24, float %235)  ; Sqrt(value)
  %242 = call float @dx.op.unary.f32(i32 24, float %236)  ; Sqrt(value)
  %243 = fsub fast float %239, %241
  %244 = fsub fast float %240, %242
  %245 = fmul fast float %243, 5.000000e-01
  %246 = fmul fast float %244, 5.000000e-01
  %247 = fadd fast float %245, %241
  %248 = fadd fast float %246, %242
  %249 = fsub fast float -0.000000e+00, %247
  %250 = fsub fast float -0.000000e+00, %248
  %251 = fcmp fast olt float %227, 0.000000e+00
  %252 = fcmp fast olt float %228, 0.000000e+00
  %253 = select i1 %251, float 0.000000e+00, float 1.000000e+00
  %254 = select i1 %252, float 0.000000e+00, float 1.000000e+00
  %255 = fcmp fast une float %253, 0.000000e+00
  %256 = fcmp fast une float %254, 0.000000e+00
  %257 = select i1 %255, float %247, float %249
  %258 = select i1 %256, float %248, float %250
  %259 = fmul fast float %257, 1.023000e+03
  %260 = fmul fast float %258, 1.023000e+03
  %261 = fadd fast float %259, 1.023000e+03
  %262 = fadd fast float %260, 1.023000e+03
  %263 = call float @dx.op.unary.f32(i32 26, float %261)  ; Round_ne(value)
  %264 = call float @dx.op.unary.f32(i32 26, float %262)  ; Round_ne(value)
  %265 = fptoui float %263 to i32
  %266 = fptoui float %264 to i32
  %267 = shl i32 %266, 11
  %268 = or i32 %267, %265
  %269 = call float @dx.op.binary.f32(i32 35, float %90, float 0x3EE4F8B580000000)  ; FMax(a,b)
  %270 = call float @dx.op.binary.f32(i32 36, float %269, float 6.550400e+04)  ; FMin(a,b)
  %271 = call i32 @dx.op.legacyF32ToF16(i32 130, float %270)  ; LegacyF32ToF16(value)
  %272 = lshr i32 %271, 5
  %273 = and i32 %272, 1023
  %274 = and i32 %272, 510
  %275 = icmp eq i32 %274, 0
  %276 = zext i1 %275 to i32
  %277 = add nuw nsw i32 %276, %273
  %278 = and i32 %277, 510
  %279 = icmp eq i32 %278, 0
  %280 = zext i1 %279 to i32
  %281 = add nuw nsw i32 %280, %277
  %282 = and i32 %281, 510
  %283 = icmp eq i32 %282, 510
  %284 = sext i1 %283 to i32
  %285 = add nsw i32 %284, %281
  %286 = and i32 %285, 510
  %287 = icmp eq i32 %286, 510
  %288 = sext i1 %287 to i32
  %289 = add nsw i32 %288, %285
  %290 = shl i32 %289, 22
  %291 = or i32 %268, %290
  %292 = bitcast i32 %291 to float
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %8, i32 %9, i32 undef, float %292, float %292, float %292, float %292, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %293

; <label>:293                                     ; preds = %224, %0
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
!dx.entryPoints = !{!17}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !10, !12, !15}
!5 = !{!6, !7, !9}
!6 = !{i32 0, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 0, i32 1, i32 11, i32 0, null}
!7 = !{i32 1, %"class.Texture2DMS<vector<float, 4>, 0>"* undef, !"", i32 0, i32 1, i32 1, i32 3, i32 0, !8}
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
!22 = !{!23, !23, i64 0}
!23 = !{!"int", !24, i64 0}
!24 = !{!"omnipotent char", !25, i64 0}
!25 = !{!"Simple C/C++ TBAA"}

