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
; shader hash: cf61223e8f827ab224076adfe0259613
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
;   [288 x i8] (type annotation not present)
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
;                                   sampler      NA          NA      S0             s1     1
;                                   sampler      NA          NA      S1             s2     1
;                                   texture     f32          2d      T0             t5     1
;                                   texture     f32          2d      T1             t0     1
;                                   texture     u32          2d      T2             t2     1
;                                   texture    byte         r/o      T3             t8     1
;                                   texture     f32          2d      T4             t3     1
;                                       UAV     f32     2darray      U0             u0     1
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.ResRet.i32 = type { i32, i32, i32, i32, i32 }
%dx.types.CBufRet.f32 = type { float, float, float, float }
%dx.types.ResRet.f32 = type { float, float, float, float, i32 }
%dx.types.CBufRet.i32 = type { i32, i32, i32, i32 }
%"class.Texture2D<vector<float, 4> >" = type { <4 x float>, %"class.Texture2D<vector<float, 4> >::mips_type" }
%"class.Texture2D<vector<float, 4> >::mips_type" = type { i32 }
%"class.Texture2D<float>" = type { float, %"class.Texture2D<float>::mips_type" }
%"class.Texture2D<float>::mips_type" = type { i32 }
%"class.Texture2D<unsigned int>" = type { i32, %"class.Texture2D<unsigned int>::mips_type" }
%"class.Texture2D<unsigned int>::mips_type" = type { i32 }
%struct.ByteAddressBuffer = type { i32 }
%"class.RWTexture2DArray<float>" = type { float }
%hostlayout.scene = type { %hostlayout.struct.GfxCodeSceneConsts }
%hostlayout.struct.GfxCodeSceneConsts = type { <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <3 x float>, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x i32>, <4 x i32>, <4 x float>, float, float, float, float, i32, i32, float, float, <2 x i32>, <2 x i32>, <2 x float>, <2 x float>, <3 x float>, i32, <3 x float>, float, <3 x float>, float, <2 x float>, <2 x float>, <3 x float>, float, <3 x float>, float, float, float, float, float, <3 x float>, float, i32, float, float, float, <4 x float>, <3 x float>, float, float, float, float, float, <4 x float>, float, float, float, float, i32, i32, i32, float, <4 x float>, i32, i32, i32, i32, i32, i32, i32, i32, <2 x i32>, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, [2 x <4 x i32>], [3 x <2 x float>], i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <2 x float>, <2 x float>, <4 x float>, <4 x i32>, <4 x float>, i32, float, float, float, i32, i32, i32, i32, <2 x float>, <2 x float>, <2 x float>, <2 x float>, i32, i32, <2 x float>, <2 x float>, <2 x float>, <3 x float>, i32, i32, i32, i32, i32, <4 x i32>, <4 x i32>, <4 x i32>, <4 x float>, i32, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <3 x float>, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], <4 x float>, [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], i32, i32, float, i32, <2 x float>, float, float, float, float, float, i32, <3 x float>, float, float, float, float, float, <3 x float>, float, <3 x float>, float, <3 x float>, float, float, float, float, float, <2 x float>, <2 x float>, float, float, float, float, <3 x float>, float, <2 x float>, i32, i32, <3 x float>, float, float, float, float, float, float, float, float, float, [4 x <3 x float>], i32, [4 x <3 x float>], i32, [4 x <3 x float>], i32, <4 x i32>, <2 x float>, <2 x float>, <2 x float>, i32, i32, float, float, float, float, <4 x float>, <4 x i32>, <4 x float>, <4 x float>, <4 x float>, i32, i32, i32, i32, <4 x float>, i32, float, float, i32, i32, float, float, i32, i32, float, float, i32, i32, float, float, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, float, float, float, float, i32, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, i32, i32, i32, float, <4 x float>, <4 x float>, <4 x float>, <4 x float>, i32, i32, i32, float, <4 x float>, float, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x i32>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [8 x <4 x float>], [8 x <4 x float>], <4 x float>, <3 x float>, i32, <2 x float>, float, float, float, float, float, float, <2 x float>, <2 x float>, <2 x float>, <2 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <2 x float>, float, float, <4 x float>, i32, i32, i32, i32, <3 x float>, i32, <4 x i32>, <4 x i32>, <2 x float>, <2 x i32>, <4 x float>, <4 x float>, <2 x float>, <2 x float>, [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, float, i32, i32, i32, i32, i32, float, float, <2 x float>, <2 x float>, float, float, float, float, i32, float, float, float, float, float, float, float, float, float, float, float, float, i32, i32, i32, float, float, float, i32, <2 x i32>, <2 x i32>, <4 x i32>, float, float, float, float, <4 x float>, <4 x float>, <2 x float>, <2 x float>, <4 x float>, <4 x float>, float, float, float, float, <4 x float>, float, float, float, float, i32, i32, float, float, <4 x float>, <2 x float>, <2 x float>, i32, i32, float, float, [4 x <4 x float>], float, float, float, float, float, float, float, float, i32, i32, i32, float, <4 x float>, <4 x float>, i32, i32, i32, i32, <2 x i32>, <2 x i32>, [2 x <4 x i32>], i32, float, float, float, i32, float, float, i32, <2 x i32>, <2 x float>, float, float, float, i32, %struct.GfxWeatherData, %hostlayout.struct.GfxVolumetricData, %struct.GfxFogRaymarchingData, %struct.GfxEnvironmentalFogData, %struct.GfxShallowWaterData, %struct.GfxGroundDeformationData, %struct.GfxSplinedModelGlobals }
%struct.GfxWeatherData = type { i32, i32, i32, i32, float, float, float, float, float, float, i32, i32, float, float, float, float, i32, i32, i32, i32, float, float, float, float, float, i32, i32, i32, i32, i32, i32, i32, <3 x float>, i32, <3 x float>, i32, i32, float, i32, i32, float, float, float, float }
%hostlayout.struct.GfxVolumetricData = type { [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <2 x float>, <2 x float>, <2 x float>, <2 x float>, <3 x i32>, i32, <3 x float>, i32, <4 x float>, <3 x float>, i32, i32, float, float, float, i32, i32, i32, float, <4 x float>, float, float, i32, i32, <3 x float>, i32, <3 x float>, float, <3 x float>, float, <2 x float>, float, float, <3 x float>, float, <3 x float>, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, <3 x float>, float, i32, float, float, float, <3 x float>, float, <2 x float>, <2 x float>, <3 x float>, float, i32, float, float, float, float, float, float, float, i32, i32, float, float, <3 x float>, float, i32, i32, <2 x float> }
%struct.GfxFogRaymarchingData = type { <2 x float>, <2 x float>, float, float, float, float, float, float, float, float, float, float, float, float, <2 x float>, <2 x float>, <3 x float>, float }
%struct.GfxEnvironmentalFogData = type { float, float, float, i32 }
%struct.GfxShallowWaterData = type { i32, i32, i32, i32, float, float, float, float, <2 x float>, <2 x float>, float, float, float, float, <3 x float>, float, float, float, float, float, float, float, float, float, i32, float, float, float, float, float, float, float, float, float, float, float, i32, float, float, float, float, i32, i32, i32 }
%struct.GfxGroundDeformationData = type { <2 x float>, <2 x float>, float, float, float, float, float, float, float, float, float, float, float, float, float, float, i32, i32 }
%struct.GfxSplinedModelGlobals = type { [64 x <4 x float>], [64 x <4 x float>], [16 x <4 x float>], [32 x <4 x float>], [64 x <4 x float>], [16 x <4 x float>], [16 x <4 x float>], float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float }
%ConstantBufferSSR0 = type { <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x i32>, [10 x <4 x float>], i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.SamplerState = type { i32 }

define void @cs_ssr_trace_water() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call i32 @dx.op.threadId.i32(i32 93, i32 0)  ; ThreadId(component)
  %12 = call i32 @dx.op.threadId.i32(i32 93, i32 1)  ; ThreadId(component)
  %13 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 132, i32 undef)  ; BufferLoad(srv,index,wot)
  %14 = extractvalue %dx.types.ResRet.i32 %13, 0
  %15 = extractvalue %dx.types.ResRet.i32 %13, 1
  %16 = add i32 %14, %11
  %17 = add i32 %15, %12
  %18 = uitofp i32 %16 to float
  %19 = uitofp i32 %17 to float
  %20 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %9, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %21 = extractvalue %dx.types.CBufRet.f32 %20, 2
  %22 = extractvalue %dx.types.CBufRet.f32 %20, 3
  %23 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %9, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %24 = extractvalue %dx.types.CBufRet.f32 %23, 0
  %25 = extractvalue %dx.types.CBufRet.f32 %23, 1
  %26 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %10, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %27 = extractvalue %dx.types.CBufRet.f32 %26, 2
  %28 = fmul fast float %27, 0x3FE3C6EF40000000
  %29 = frem fast float %18, 2.560000e+02
  %30 = frem fast float %19, 2.560000e+02
  %31 = fptoui float %29 to i32
  %32 = fptoui float %30 to i32
  %33 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %6, i32 0, i32 %31, i32 %32, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %34 = extractvalue %dx.types.ResRet.f32 %33, 0
  %35 = extractvalue %dx.types.ResRet.f32 %33, 1
  %36 = fadd fast float %34, %28
  %37 = fadd fast float %35, %28
  %38 = call float @dx.op.unary.f32(i32 22, float %36)  ; Frc(value)
  %39 = call float @dx.op.unary.f32(i32 22, float %37)  ; Frc(value)
  %40 = fmul fast float %38, 5.000000e-01
  %41 = fmul fast float %39, 5.000000e-01
  %42 = fadd fast float %40, %18
  %43 = fmul fast float %42, %21
  %44 = fadd fast float %41, %19
  %45 = fmul fast float %44, %22
  %46 = fmul fast float %43, %24
  %47 = fmul fast float %45, %25
  %48 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %8, float %43, float %45, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %49 = extractvalue %dx.types.ResRet.f32 %48, 0
  %50 = fcmp fast olt float %49, -1.000000e+00
  %51 = fcmp fast ogt float %49, -1.000000e+00
  %52 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %10, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %53 = extractvalue %dx.types.CBufRet.f32 %52, 1
  %54 = select i1 %51, float %53, float 1.000000e+00
  %55 = fadd fast float %49, 1.000000e+00
  %56 = fmul fast float %54, %55
  %57 = call float @dx.op.unary.f32(i32 6, float %56)  ; FAbs(value)
  %58 = fmul fast float %46, 5.000000e-01
  %59 = fmul fast float %47, 5.000000e-01
  %60 = fptosi float %58 to i32
  %61 = fptosi float %59 to i32
  %62 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %4, i32 0, i32 %60, i32 %61, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %63 = extractvalue %dx.types.ResRet.i32 %62, 0
  %64 = lshr i32 %63, 8
  %65 = and i32 %63, 255
  %66 = and i32 %64, 255
  %67 = uitofp i32 %65 to float
  %68 = uitofp i32 %66 to float
  %69 = fmul fast float %67, 0x3F80101020000000
  %70 = fmul fast float %68, 0x3F80101020000000
  %71 = fadd fast float %69, -1.000000e+00
  %72 = fadd fast float %70, -1.000000e+00
  %73 = call float @dx.op.unary.f32(i32 6, float %71)  ; FAbs(value)
  %74 = fsub fast float 1.000000e+00, %73
  %75 = call float @dx.op.unary.f32(i32 6, float %72)  ; FAbs(value)
  %76 = fsub fast float %74, %75
  %77 = fsub fast float -0.000000e+00, %76
  %78 = call float @dx.op.binary.f32(i32 35, float %77, float 0.000000e+00)  ; FMax(a,b)
  %79 = fcmp fast ogt float %71, 0.000000e+00
  %80 = fsub fast float -0.000000e+00, %78
  %81 = select i1 %79, float %80, float %78
  %82 = fadd fast float %81, %71
  %83 = fcmp fast ogt float %72, 0.000000e+00
  %84 = select i1 %83, float %80, float %78
  %85 = fadd fast float %84, %72
  %86 = call float @dx.op.dot3.f32(i32 55, float %82, float %85, float %76, float %82, float %85, float %76)  ; Dot3(ax,ay,az,bx,by,bz)
  %87 = call float @dx.op.unary.f32(i32 25, float %86)  ; Rsqrt(value)
  %88 = fmul fast float %82, %87
  %89 = fmul fast float %85, %87
  %90 = fmul fast float %87, %76
  %91 = icmp ult i32 %63, -262144
  %92 = lshr i32 %63, 18
  %93 = uitofp i32 %92 to float
  %94 = fmul fast float %93, 0x3F4C00EBA0000000
  %95 = call float @dx.op.unary.f32(i32 21, float %94)  ; Exp(value)
  %96 = fadd fast float %95, -1.000000e+00
  %97 = call float @dx.op.binary.f32(i32 36, float %57, float %96)  ; FMin(a,b)
  %98 = fmul fast float %43, 2.000000e+00
  %99 = fmul fast float %45, 2.000000e+00
  %100 = fsub fast float 1.000000e+00, %98
  %101 = fsub fast float 1.000000e+00, %99
  %102 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %10, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %103 = extractvalue %dx.types.CBufRet.f32 %102, 0
  %104 = extractvalue %dx.types.CBufRet.f32 %102, 1
  %105 = extractvalue %dx.types.CBufRet.f32 %102, 2
  %106 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %10, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %107 = extractvalue %dx.types.CBufRet.f32 %106, 0
  %108 = extractvalue %dx.types.CBufRet.f32 %106, 1
  %109 = extractvalue %dx.types.CBufRet.f32 %106, 2
  %110 = select i1 %50, float %103, float %107
  %111 = select i1 %50, float %104, float %108
  %112 = select i1 %50, float %105, float %109
  %113 = fmul fast float %110, %100
  %114 = fmul fast float %111, %100
  %115 = fmul fast float %112, %100
  %116 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %10, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %117 = extractvalue %dx.types.CBufRet.f32 %116, 0
  %118 = extractvalue %dx.types.CBufRet.f32 %116, 1
  %119 = extractvalue %dx.types.CBufRet.f32 %116, 2
  %120 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %10, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %121 = extractvalue %dx.types.CBufRet.f32 %120, 0
  %122 = extractvalue %dx.types.CBufRet.f32 %120, 1
  %123 = extractvalue %dx.types.CBufRet.f32 %120, 2
  %124 = select i1 %50, float %117, float %121
  %125 = select i1 %50, float %118, float %122
  %126 = select i1 %50, float %119, float %123
  %127 = fmul fast float %124, %101
  %128 = fmul fast float %125, %101
  %129 = fmul fast float %126, %101
  %130 = fadd fast float %127, %113
  %131 = fadd fast float %128, %114
  %132 = fadd fast float %129, %115
  %133 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %10, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %134 = extractvalue %dx.types.CBufRet.f32 %133, 0
  %135 = extractvalue %dx.types.CBufRet.f32 %133, 1
  %136 = extractvalue %dx.types.CBufRet.f32 %133, 2
  %137 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %10, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %138 = extractvalue %dx.types.CBufRet.f32 %137, 0
  %139 = extractvalue %dx.types.CBufRet.f32 %137, 1
  %140 = extractvalue %dx.types.CBufRet.f32 %137, 2
  %141 = select i1 %50, float %134, float %138
  %142 = select i1 %50, float %135, float %139
  %143 = select i1 %50, float %136, float %140
  %144 = fadd fast float %130, %141
  %145 = fadd fast float %131, %142
  %146 = fadd fast float %132, %143
  %147 = fmul fast float %144, %97
  %148 = fmul fast float %145, %97
  %149 = fmul fast float %146, %97
  %150 = fsub fast float -0.000000e+00, %147
  %151 = fsub fast float -0.000000e+00, %148
  %152 = fsub fast float -0.000000e+00, %149
  %153 = call float @dx.op.dot3.f32(i32 55, float %150, float %151, float %152, float %150, float %151, float %152)  ; Dot3(ax,ay,az,bx,by,bz)
  %154 = call float @dx.op.unary.f32(i32 25, float %153)  ; Rsqrt(value)
  %155 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %10, i32 103)  ; CBufferLoadLegacy(handle,regIndex)
  %156 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %10, i32 104)  ; CBufferLoadLegacy(handle,regIndex)
  %157 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %10, i32 106)  ; CBufferLoadLegacy(handle,regIndex)
  %158 = extractvalue %dx.types.CBufRet.f32 %157, 0
  %159 = extractvalue %dx.types.CBufRet.f32 %157, 1
  %160 = extractvalue %dx.types.CBufRet.f32 %157, 2
  %161 = fmul fast float %154, %147
  %162 = fmul fast float %154, %148
  %163 = fmul fast float %154, %149
  %164 = call float @dx.op.dot3.f32(i32 55, float %161, float %162, float %163, float %88, float %89, float %90)  ; Dot3(ax,ay,az,bx,by,bz)
  %165 = fmul fast float %164, 2.000000e+00
  %166 = fmul fast float %165, %88
  %167 = fmul fast float %165, %89
  %168 = fmul fast float %165, %90
  %169 = fsub fast float %161, %166
  %170 = fsub fast float %162, %167
  %171 = fsub fast float %163, %168
  %172 = call float @dx.op.dot3.f32(i32 55, float %169, float %170, float %171, float %169, float %170, float %171)  ; Dot3(ax,ay,az,bx,by,bz)
  %173 = call float @dx.op.unary.f32(i32 25, float %172)  ; Rsqrt(value)
  %174 = fmul fast float %169, %173
  %175 = fmul fast float %170, %173
  %176 = fmul fast float %171, %173
  %177 = call float @dx.op.dot3.f32(i32 55, float %174, float %175, float %176, float %158, float %159, float %160)  ; Dot3(ax,ay,az,bx,by,bz)
  %178 = fcmp uge float %177, 0.000000e+00
  %179 = and i1 %91, %178
  br i1 %179, label %180, label %429, !dx.controlflow.hints !24

; <label>:180                                     ; preds = %0
  %181 = extractvalue %dx.types.CBufRet.f32 %157, 3
  %182 = extractvalue %dx.types.CBufRet.f32 %156, 3
  %183 = extractvalue %dx.types.CBufRet.f32 %156, 2
  %184 = extractvalue %dx.types.CBufRet.f32 %156, 1
  %185 = extractvalue %dx.types.CBufRet.f32 %156, 0
  %186 = extractvalue %dx.types.CBufRet.f32 %155, 3
  %187 = extractvalue %dx.types.CBufRet.f32 %155, 2
  %188 = extractvalue %dx.types.CBufRet.f32 %155, 1
  %189 = extractvalue %dx.types.CBufRet.f32 %155, 0
  %190 = extractvalue %dx.types.CBufRet.f32 %23, 3
  %191 = extractvalue %dx.types.CBufRet.f32 %23, 2
  %192 = extractvalue %dx.types.CBufRet.f32 %52, 3
  %193 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %9, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %194 = extractvalue %dx.types.CBufRet.f32 %193, 0
  %195 = fptosi float %194 to i32
  %196 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %10, i32 24)  ; CBufferLoadLegacy(handle,regIndex)
  %197 = extractvalue %dx.types.CBufRet.i32 %196, 0
  %198 = uitofp i32 %197 to float
  %199 = fdiv fast float 1.000000e+00, %97
  %200 = fmul fast float %46, %191
  %201 = fmul fast float %47, %190
  %202 = fmul fast float %192, %174
  %203 = fmul fast float %192, %175
  %204 = fmul fast float %192, %176
  %205 = fadd fast float %202, %147
  %206 = fadd fast float %203, %148
  %207 = fadd fast float %204, %149
  %208 = fmul fast float %205, %189
  %209 = call float @dx.op.tertiary.f32(i32 46, float %206, float %188, float %208)  ; FMad(a,b,c)
  %210 = call float @dx.op.tertiary.f32(i32 46, float %207, float %187, float %209)  ; FMad(a,b,c)
  %211 = fadd fast float %210, %186
  %212 = fmul fast float %205, %185
  %213 = call float @dx.op.tertiary.f32(i32 46, float %206, float %184, float %212)  ; FMad(a,b,c)
  %214 = call float @dx.op.tertiary.f32(i32 46, float %207, float %183, float %213)  ; FMad(a,b,c)
  %215 = fadd fast float %214, %182
  %216 = fmul fast float %205, %158
  %217 = call float @dx.op.tertiary.f32(i32 46, float %206, float %159, float %216)  ; FMad(a,b,c)
  %218 = call float @dx.op.tertiary.f32(i32 46, float %207, float %160, float %217)  ; FMad(a,b,c)
  %219 = fadd fast float %218, %181
  %220 = fdiv fast float 1.000000e+00, %219
  %221 = fmul fast float %211, 5.000000e-01
  %222 = fmul fast float %215, -5.000000e-01
  %223 = fmul fast float %221, %220
  %224 = fmul fast float %222, %220
  %225 = fadd fast float %223, 5.000000e-01
  %226 = fmul fast float %200, 2.000000e+00
  %227 = fadd fast float %226, -1.000000e+00
  %228 = call float @dx.op.unary.f32(i32 6, float %227)  ; FAbs(value)
  %229 = fmul fast float %228, 5.000000e+00
  %230 = fadd fast float %229, -4.000000e+00
  %231 = call float @dx.op.unary.f32(i32 7, float %230)  ; Saturate(value)
  %232 = fsub fast float %200, %225
  %233 = fmul fast float %232, %231
  %234 = fsub fast float %225, %200
  %235 = fadd fast float %234, %233
  %236 = fsub fast float 5.000000e-01, %201
  %237 = fadd fast float %236, %224
  %238 = fsub fast float %220, %199
  %239 = call float @dx.op.dot2.f32(i32 54, float %235, float %237, float %235, float %237)  ; Dot2(ax,ay,bx,by)
  %240 = call float @dx.op.binary.f32(i32 35, float %239, float 0x3EB0C6F7A0000000)  ; FMax(a,b)
  %241 = call float @dx.op.dot2.f32(i32 54, float %24, float %25, float %24, float %25)  ; Dot2(ax,ay,bx,by)
  %242 = fmul fast float %241, %240
  %243 = call float @dx.op.unary.f32(i32 25, float %242)  ; Rsqrt(value)
  %244 = fmul fast float %243, %235
  %245 = fmul fast float %243, %237
  %246 = fadd fast float %244, %200
  %247 = fadd fast float %245, %201
  %248 = fmul fast float %235, %24
  %249 = fmul fast float %237, %25
  %250 = fmul fast float %248, %248
  %251 = fmul fast float %249, %249
  %252 = fadd fast float %250, %251
  %253 = call float @dx.op.unary.f32(i32 24, float %252)  ; Sqrt(value)
  %254 = fdiv fast float 1.000000e+00, %253
  %255 = fmul fast float %253, 3.125000e-02
  %256 = icmp sgt i32 %195, -1
  br i1 %256, label %257, label %375

; <label>:257                                     ; preds = %180
  br label %258

; <label>:258                                     ; preds = %371, %257
  %259 = phi float [ %353, %371 ], [ %97, %257 ]
  %260 = phi float [ %259, %371 ], [ %97, %257 ]
  %261 = phi i32 [ %372, %371 ], [ 0, %257 ]
  %262 = sitofp i32 %261 to float
  %263 = fadd fast float %38, 5.000000e-01
  %264 = call float @dx.op.unary.f32(i32 22, float %263)  ; Frc(value)
  %265 = fadd fast float %262, %264
  %266 = sitofp i32 %195 to float
  %267 = fdiv fast float %265, %266
  %268 = fmul fast float %267, %267
  %269 = call float @dx.op.binary.f32(i32 36, float %268, float 0x3FEFFF8020000000)  ; FMin(a,b)
  %270 = fmul fast float %269, %235
  %271 = fmul fast float %269, %237
  %272 = fmul fast float %269, %238
  %273 = fadd fast float %270, %246
  %274 = fadd fast float %271, %247
  %275 = fadd fast float %272, %199
  %276 = fdiv fast float 1.000000e+00, %275
  %277 = icmp ne i32 %197, 0
  %278 = fmul fast float %255, %269
  %279 = call float @dx.op.binary.f32(i32 36, float %278, float %198)  ; FMin(a,b)
  %280 = select i1 %277, float %279, float 0.000000e+00
  %281 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %8, float %273, float %274, float undef, float undef, i32 0, i32 0, i32 undef, float %280)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %282 = extractvalue %dx.types.ResRet.f32 %281, 0
  %283 = fcmp fast ogt float %282, -1.000000e+00
  %284 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %10, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %285 = extractvalue %dx.types.CBufRet.f32 %284, 1
  %286 = select i1 %283, float %285, float 1.000000e+00
  %287 = fadd fast float %282, 1.000000e+00
  %288 = fmul fast float %286, %287
  %289 = call float @dx.op.unary.f32(i32 6, float %288)  ; FAbs(value)
  %290 = fmul fast float %289, 0x3FF0083120000000
  %291 = fsub fast float %276, %290
  %292 = fcmp fast ogt float %291, 0.000000e+00
  br i1 %292, label %293, label %350, !dx.controlflow.hints !25

; <label>:293                                     ; preds = %258
  %294 = fdiv fast float 1.000000e+00, %259
  %295 = fsub fast float %294, %199
  %296 = fdiv fast float %295, %238
  %297 = fmul fast float %296, %235
  %298 = fmul fast float %296, %237
  %299 = fmul fast float %296, %238
  %300 = fadd fast float %297, %246
  %301 = fadd fast float %298, %247
  %302 = fadd fast float %299, %199
  br label %303

; <label>:303                                     ; preds = %340, %293
  %304 = phi float [ 5.000000e-01, %293 ], [ %312, %340 ]
  %305 = phi float [ 5.000000e-01, %293 ], [ %341, %340 ]
  %306 = phi i32 [ 0, %293 ], [ %347, %340 ]
  %307 = phi float [ %273, %293 ], [ %342, %340 ]
  %308 = phi float [ %274, %293 ], [ %343, %340 ]
  %309 = phi float [ %276, %293 ], [ %344, %340 ]
  %310 = phi float [ %282, %293 ], [ %345, %340 ]
  %311 = phi float [ %291, %293 ], [ %346, %340 ]
  %312 = fmul fast float %304, 5.000000e-01
  %313 = fsub fast float 1.000000e+00, %305
  %314 = fmul fast float %313, %300
  %315 = fmul fast float %313, %301
  %316 = fmul fast float %313, %302
  %317 = fmul fast float %305, %273
  %318 = fmul fast float %305, %274
  %319 = fmul fast float %305, %275
  %320 = fadd fast float %314, %317
  %321 = fadd fast float %315, %318
  %322 = fadd fast float %316, %319
  %323 = fdiv fast float 1.000000e+00, %322
  %324 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %8, float %320, float %321, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %325 = extractvalue %dx.types.ResRet.f32 %324, 0
  %326 = fcmp fast ogt float %325, -1.000000e+00
  %327 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %10, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %328 = extractvalue %dx.types.CBufRet.f32 %327, 1
  %329 = select i1 %326, float %328, float 1.000000e+00
  %330 = fadd fast float %325, 1.000000e+00
  %331 = fmul fast float %329, %330
  %332 = call float @dx.op.unary.f32(i32 6, float %331)  ; FAbs(value)
  %333 = fmul fast float %332, 0x3FF0083120000000
  %334 = fsub fast float %323, %333
  %335 = fcmp fast ogt float %334, 0.000000e+00
  br i1 %335, label %338, label %336, !dx.controlflow.hints !26

; <label>:336                                     ; preds = %303
  %337 = fadd fast float %305, %312
  br label %340

; <label>:338                                     ; preds = %303
  %339 = fsub fast float %305, %312
  br label %340

; <label>:340                                     ; preds = %338, %336
  %341 = phi float [ %339, %338 ], [ %337, %336 ]
  %342 = phi float [ %320, %338 ], [ %307, %336 ]
  %343 = phi float [ %321, %338 ], [ %308, %336 ]
  %344 = phi float [ %323, %338 ], [ %309, %336 ]
  %345 = phi float [ %325, %338 ], [ %310, %336 ]
  %346 = phi float [ %334, %338 ], [ %311, %336 ]
  %347 = add nuw nsw i32 %306, 1
  %348 = icmp eq i32 %347, 4
  br i1 %348, label %349, label %303

; <label>:349                                     ; preds = %340
  br label %350

; <label>:350                                     ; preds = %349, %258
  %351 = phi float [ %273, %258 ], [ %342, %349 ]
  %352 = phi float [ %274, %258 ], [ %343, %349 ]
  %353 = phi float [ %276, %258 ], [ %344, %349 ]
  %354 = phi float [ %282, %258 ], [ %345, %349 ]
  %355 = phi float [ %291, %258 ], [ %346, %349 ]
  %356 = fsub fast float %353, %260
  %357 = call float @dx.op.binary.f32(i32 35, float %356, float 4.800000e+01)  ; FMax(a,b)
  %358 = fcmp fast olt float %355, %357
  %359 = fcmp uge float %354, -1.000000e+00
  %360 = or i1 %50, %359
  %361 = call float @dx.op.unary.f32(i32 7, float %351)  ; Saturate(value)
  %362 = call float @dx.op.unary.f32(i32 7, float %352)  ; Saturate(value)
  %363 = fcmp fast oeq float %351, %361
  %364 = fcmp fast oeq float %352, %362
  %365 = and i1 %363, %364
  %366 = and i1 %360, %365
  %367 = and i1 %292, %358
  %368 = and i1 %367, %366
  %369 = fcmp fast ogt float %269, %254
  %370 = and i1 %369, %368
  br i1 %370, label %374, label %371, !dx.controlflow.hints !27

; <label>:371                                     ; preds = %350
  %372 = add nuw nsw i32 %261, 1
  %373 = icmp slt i32 %261, %195
  br i1 %373, label %258, label %374

; <label>:374                                     ; preds = %371, %350
  br label %375

; <label>:375                                     ; preds = %374, %180
  %376 = phi float [ %97, %180 ], [ %353, %374 ]
  %377 = fdiv fast float 1.000000e+00, %376
  %378 = fsub fast float %377, %199
  %379 = fdiv fast float %378, %238
  %380 = call float @dx.op.unary.f32(i32 7, float %379)  ; Saturate(value)
  %381 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %10, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %382 = extractvalue %dx.types.CBufRet.i32 %381, 3
  %383 = and i32 %382, 3
  %384 = icmp ne i32 %383, 0
  %385 = and i32 %382, 4
  %386 = icmp ne i32 %385, 0
  %387 = and i1 %384, %386
  br i1 %387, label %388, label %393, !dx.controlflow.hints !28

; <label>:388                                     ; preds = %375
  %389 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %7, float %43, float %45, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %390 = extractvalue %dx.types.ResRet.f32 %389, 0
  %391 = fcmp fast ole float %390, 0.000000e+00
  %392 = zext i1 %391 to i32
  br label %393

; <label>:393                                     ; preds = %388, %375
  %394 = phi i32 [ %392, %388 ], [ 0, %375 ]
  %395 = fcmp fast une float %380, 0x7FF0000000000000
  br i1 %395, label %396, label %427, !dx.controlflow.hints !29

; <label>:396                                     ; preds = %393
  %397 = fmul fast float %220, -5.000000e-01
  %398 = fmul fast float %397, %215
  %399 = fadd fast float %236, %398
  %400 = fmul fast float %235, %380
  %401 = fmul fast float %399, %380
  %402 = fadd fast float %400, %200
  %403 = fadd fast float %401, %201
  %404 = icmp ne i32 %394, 0
  %405 = or i1 %50, %404
  %406 = and i1 %405, %387
  br i1 %406, label %407, label %411, !dx.controlflow.hints !30

; <label>:407                                     ; preds = %396
  %408 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %7, float %402, float %403, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %409 = extractvalue %dx.types.ResRet.f32 %408, 0
  %410 = fcmp fast ogt float %409, 0.000000e+00
  br label %411

; <label>:411                                     ; preds = %407, %396
  %412 = phi i1 [ %410, %407 ], [ false, %396 ]
  %413 = call float @dx.op.unary.f32(i32 6, float %380)  ; FAbs(value)
  %414 = fsub fast float 1.000000e+00, %413
  %415 = select i1 %412, float 0xFFF0000000000000, float %414
  %416 = fcmp fast une float %415, 0xFFF0000000000000
  %417 = fcmp fast une float %415, 0x7FF0000000000000
  %418 = and i1 %416, %417
  %419 = and i1 %50, %418
  br i1 %419, label %420, label %427, !dx.controlflow.hints !31

; <label>:420                                     ; preds = %411
  %421 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %8, float %402, float %403, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %422 = extractvalue %dx.types.ResRet.f32 %421, 0
  %423 = fcmp fast olt float %422, -1.000000e+00
  %424 = call float @dx.op.unary.f32(i32 6, float %415)  ; FAbs(value)
  %425 = fsub fast float -0.000000e+00, %424
  %426 = select i1 %423, float %425, float %415
  br label %427

; <label>:427                                     ; preds = %420, %411, %393
  %428 = phi float [ %426, %420 ], [ %415, %411 ], [ 0x7FF0000000000000, %393 ]
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %16, i32 %17, i32 0, float %428, float %428, float %428, float %428, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %430

; <label>:429                                     ; preds = %0
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %16, i32 %17, i32 0, float 0xFFF0000000000000, float 0xFFF0000000000000, float 0xFFF0000000000000, float 0xFFF0000000000000, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %430

; <label>:430                                     ; preds = %429, %427
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @dx.op.threadId.i32(i32, i32) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #1

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32) #1

; Function Attrs: nounwind readnone
declare float @dx.op.binary.f32(i32, float, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.dot3.f32(i32, float, float, float, float, float, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.unary.f32(i32, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.tertiary.f32(i32, float, float, float) #0

; Function Attrs: nounwind
declare void @dx.op.textureStore.f32(i32, %dx.types.Handle, i32, i32, i32, float, float, float, float, i8) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32) #1

; Function Attrs: nounwind readnone
declare float @dx.op.dot2.f32(i32, float, float, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32, %dx.types.Handle, i32) #1

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32, %dx.types.Handle, i32) #1

; Function Attrs: nounwind readonly
declare %dx.types.Handle @dx.op.createHandle(i32, i8, i32, i32, i1) #1

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32, %dx.types.Handle, i32, i32) #1

attributes #0 = { nounwind readnone }
attributes #1 = { nounwind readonly }
attributes #2 = { nounwind }

!llvm.ident = !{!0}
!dx.version = !{!1}
!dx.valver = !{!2}
!dx.shaderModel = !{!3}
!dx.resources = !{!4}
!dx.entryPoints = !{!21}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !13, !15, !18}
!5 = !{!6, !8, !9, !11, !12}
!6 = !{i32 0, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 5, i32 1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, %"class.Texture2D<float>"* undef, !"", i32 0, i32 0, i32 1, i32 2, i32 0, !7}
!9 = !{i32 2, %"class.Texture2D<unsigned int>"* undef, !"", i32 0, i32 2, i32 1, i32 2, i32 0, !10}
!10 = !{i32 0, i32 5}
!11 = !{i32 3, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 8, i32 1, i32 11, i32 0, null}
!12 = !{i32 4, %"class.Texture2D<float>"* undef, !"", i32 0, i32 3, i32 1, i32 2, i32 0, !7}
!13 = !{!14}
!14 = !{i32 0, %"class.RWTexture2DArray<float>"* undef, !"", i32 0, i32 0, i32 1, i32 7, i1 false, i1 false, i1 false, !7}
!15 = !{!16, !17}
!16 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!17 = !{i32 1, %ConstantBufferSSR0* undef, !"", i32 0, i32 0, i32 1, i32 288, null}
!18 = !{!19, !20}
!19 = !{i32 0, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!20 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!21 = !{void ()* @cs_ssr_trace_water, !"cs_ssr_trace_water", null, !4, !22}
!22 = !{i32 0, i64 272, i32 4, !23}
!23 = !{i32 8, i32 8, i32 1}
!24 = distinct !{!24, !"dx.controlflow.hints", i32 2}
!25 = distinct !{!25, !"dx.controlflow.hints", i32 2}
!26 = distinct !{!26, !"dx.controlflow.hints", i32 2}
!27 = distinct !{!27, !"dx.controlflow.hints", i32 2}
!28 = distinct !{!28, !"dx.controlflow.hints", i32 2}
!29 = distinct !{!29, !"dx.controlflow.hints", i32 2}
!30 = distinct !{!30, !"dx.controlflow.hints", i32 2}
!31 = distinct !{!31, !"dx.controlflow.hints", i32 2}

