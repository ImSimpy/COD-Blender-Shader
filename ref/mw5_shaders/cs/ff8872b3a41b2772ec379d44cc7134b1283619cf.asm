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
; shader hash: e1d54aacac34e852dae109bfeee655f0
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
;                                   texture     f32     2darray      T2             t7     1
;                                   texture     u32          2d      T3             t2     1
;                                   texture    byte         r/o      T4             t8     1
;                                   texture     f32          2d      T5             t3     1
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
%"class.Texture2DArray<float>" = type { float, %"class.Texture2DArray<float>::mips_type" }
%"class.Texture2DArray<float>::mips_type" = type { i32 }
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

define void @cs_ssr_trace_water_hq_hiz() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 7, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call i32 @dx.op.threadId.i32(i32 93, i32 0)  ; ThreadId(component)
  %13 = call i32 @dx.op.threadId.i32(i32 93, i32 1)  ; ThreadId(component)
  %14 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 132, i32 undef)  ; BufferLoad(srv,index,wot)
  %15 = extractvalue %dx.types.ResRet.i32 %14, 0
  %16 = extractvalue %dx.types.ResRet.i32 %14, 1
  %17 = add i32 %15, %12
  %18 = add i32 %16, %13
  %19 = uitofp i32 %17 to float
  %20 = uitofp i32 %18 to float
  %21 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %10, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %22 = extractvalue %dx.types.CBufRet.f32 %21, 2
  %23 = extractvalue %dx.types.CBufRet.f32 %21, 3
  %24 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %10, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %25 = extractvalue %dx.types.CBufRet.f32 %24, 0
  %26 = extractvalue %dx.types.CBufRet.f32 %24, 1
  %27 = extractvalue %dx.types.CBufRet.f32 %24, 2
  %28 = extractvalue %dx.types.CBufRet.f32 %24, 3
  %29 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %30 = extractvalue %dx.types.CBufRet.f32 %29, 2
  %31 = fmul fast float %30, 0x3FE3C6EF40000000
  %32 = frem fast float %19, 2.560000e+02
  %33 = frem fast float %20, 2.560000e+02
  %34 = fptoui float %32 to i32
  %35 = fptoui float %33 to i32
  %36 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %7, i32 0, i32 %34, i32 %35, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %37 = extractvalue %dx.types.ResRet.f32 %36, 0
  %38 = extractvalue %dx.types.ResRet.f32 %36, 1
  %39 = fadd fast float %37, %31
  %40 = fadd fast float %38, %31
  %41 = call float @dx.op.unary.f32(i32 22, float %39)  ; Frc(value)
  %42 = call float @dx.op.unary.f32(i32 22, float %40)  ; Frc(value)
  %43 = fmul fast float %41, 5.000000e-01
  %44 = fmul fast float %42, 5.000000e-01
  %45 = fadd fast float %43, %19
  %46 = fmul fast float %45, %22
  %47 = fadd fast float %44, %20
  %48 = fmul fast float %47, %23
  %49 = fmul fast float %46, %25
  %50 = fmul fast float %48, %26
  %51 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %9, float %46, float %48, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %52 = extractvalue %dx.types.ResRet.f32 %51, 0
  %53 = fcmp fast olt float %52, -1.000000e+00
  %54 = fcmp fast ogt float %52, -1.000000e+00
  %55 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %56 = extractvalue %dx.types.CBufRet.f32 %55, 1
  %57 = select i1 %54, float %56, float 1.000000e+00
  %58 = fadd fast float %52, 1.000000e+00
  %59 = fmul fast float %57, %58
  %60 = call float @dx.op.unary.f32(i32 6, float %59)  ; FAbs(value)
  %61 = fmul fast float %49, 5.000000e-01
  %62 = fmul fast float %50, 5.000000e-01
  %63 = fptosi float %61 to i32
  %64 = fptosi float %62 to i32
  %65 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %4, i32 0, i32 %63, i32 %64, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %66 = extractvalue %dx.types.ResRet.i32 %65, 0
  %67 = lshr i32 %66, 8
  %68 = and i32 %66, 255
  %69 = and i32 %67, 255
  %70 = uitofp i32 %68 to float
  %71 = uitofp i32 %69 to float
  %72 = fmul fast float %70, 0x3F80101020000000
  %73 = fmul fast float %71, 0x3F80101020000000
  %74 = fadd fast float %72, -1.000000e+00
  %75 = fadd fast float %73, -1.000000e+00
  %76 = call float @dx.op.unary.f32(i32 6, float %74)  ; FAbs(value)
  %77 = fsub fast float 1.000000e+00, %76
  %78 = call float @dx.op.unary.f32(i32 6, float %75)  ; FAbs(value)
  %79 = fsub fast float %77, %78
  %80 = fsub fast float -0.000000e+00, %79
  %81 = call float @dx.op.binary.f32(i32 35, float %80, float 0.000000e+00)  ; FMax(a,b)
  %82 = fcmp fast ogt float %74, 0.000000e+00
  %83 = fsub fast float -0.000000e+00, %81
  %84 = select i1 %82, float %83, float %81
  %85 = fadd fast float %84, %74
  %86 = fcmp fast ogt float %75, 0.000000e+00
  %87 = select i1 %86, float %83, float %81
  %88 = fadd fast float %87, %75
  %89 = call float @dx.op.dot3.f32(i32 55, float %85, float %88, float %79, float %85, float %88, float %79)  ; Dot3(ax,ay,az,bx,by,bz)
  %90 = call float @dx.op.unary.f32(i32 25, float %89)  ; Rsqrt(value)
  %91 = fmul fast float %85, %90
  %92 = fmul fast float %88, %90
  %93 = fmul fast float %90, %79
  %94 = icmp ult i32 %66, -262144
  %95 = lshr i32 %66, 18
  %96 = uitofp i32 %95 to float
  %97 = fmul fast float %96, 0x3F4C00EBA0000000
  %98 = call float @dx.op.unary.f32(i32 21, float %97)  ; Exp(value)
  %99 = fadd fast float %98, -1.000000e+00
  %100 = call float @dx.op.binary.f32(i32 36, float %60, float %99)  ; FMin(a,b)
  %101 = fmul fast float %46, 2.000000e+00
  %102 = fmul fast float %48, 2.000000e+00
  %103 = fsub fast float 1.000000e+00, %101
  %104 = fsub fast float 1.000000e+00, %102
  %105 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %106 = extractvalue %dx.types.CBufRet.f32 %105, 0
  %107 = extractvalue %dx.types.CBufRet.f32 %105, 1
  %108 = extractvalue %dx.types.CBufRet.f32 %105, 2
  %109 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %110 = extractvalue %dx.types.CBufRet.f32 %109, 0
  %111 = extractvalue %dx.types.CBufRet.f32 %109, 1
  %112 = extractvalue %dx.types.CBufRet.f32 %109, 2
  %113 = select i1 %53, float %106, float %110
  %114 = select i1 %53, float %107, float %111
  %115 = select i1 %53, float %108, float %112
  %116 = fmul fast float %113, %103
  %117 = fmul fast float %114, %103
  %118 = fmul fast float %115, %103
  %119 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %120 = extractvalue %dx.types.CBufRet.f32 %119, 0
  %121 = extractvalue %dx.types.CBufRet.f32 %119, 1
  %122 = extractvalue %dx.types.CBufRet.f32 %119, 2
  %123 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %124 = extractvalue %dx.types.CBufRet.f32 %123, 0
  %125 = extractvalue %dx.types.CBufRet.f32 %123, 1
  %126 = extractvalue %dx.types.CBufRet.f32 %123, 2
  %127 = select i1 %53, float %120, float %124
  %128 = select i1 %53, float %121, float %125
  %129 = select i1 %53, float %122, float %126
  %130 = fmul fast float %127, %104
  %131 = fmul fast float %128, %104
  %132 = fmul fast float %129, %104
  %133 = fadd fast float %130, %116
  %134 = fadd fast float %131, %117
  %135 = fadd fast float %132, %118
  %136 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %137 = extractvalue %dx.types.CBufRet.f32 %136, 0
  %138 = extractvalue %dx.types.CBufRet.f32 %136, 1
  %139 = extractvalue %dx.types.CBufRet.f32 %136, 2
  %140 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %141 = extractvalue %dx.types.CBufRet.f32 %140, 0
  %142 = extractvalue %dx.types.CBufRet.f32 %140, 1
  %143 = extractvalue %dx.types.CBufRet.f32 %140, 2
  %144 = select i1 %53, float %137, float %141
  %145 = select i1 %53, float %138, float %142
  %146 = select i1 %53, float %139, float %143
  %147 = fadd fast float %133, %144
  %148 = fadd fast float %134, %145
  %149 = fadd fast float %135, %146
  %150 = fmul fast float %147, %100
  %151 = fmul fast float %148, %100
  %152 = fmul fast float %149, %100
  %153 = fsub fast float -0.000000e+00, %150
  %154 = fsub fast float -0.000000e+00, %151
  %155 = fsub fast float -0.000000e+00, %152
  %156 = call float @dx.op.dot3.f32(i32 55, float %153, float %154, float %155, float %153, float %154, float %155)  ; Dot3(ax,ay,az,bx,by,bz)
  %157 = call float @dx.op.unary.f32(i32 25, float %156)  ; Rsqrt(value)
  %158 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 103)  ; CBufferLoadLegacy(handle,regIndex)
  %159 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 104)  ; CBufferLoadLegacy(handle,regIndex)
  %160 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 106)  ; CBufferLoadLegacy(handle,regIndex)
  %161 = extractvalue %dx.types.CBufRet.f32 %160, 0
  %162 = extractvalue %dx.types.CBufRet.f32 %160, 1
  %163 = extractvalue %dx.types.CBufRet.f32 %160, 2
  %164 = fmul fast float %157, %150
  %165 = fmul fast float %157, %151
  %166 = fmul fast float %157, %152
  %167 = call float @dx.op.dot3.f32(i32 55, float %164, float %165, float %166, float %91, float %92, float %93)  ; Dot3(ax,ay,az,bx,by,bz)
  %168 = fmul fast float %167, 2.000000e+00
  %169 = fmul fast float %168, %91
  %170 = fmul fast float %168, %92
  %171 = fmul fast float %168, %93
  %172 = fsub fast float %164, %169
  %173 = fsub fast float %165, %170
  %174 = fsub fast float %166, %171
  %175 = call float @dx.op.dot3.f32(i32 55, float %172, float %173, float %174, float %172, float %173, float %174)  ; Dot3(ax,ay,az,bx,by,bz)
  %176 = call float @dx.op.unary.f32(i32 25, float %175)  ; Rsqrt(value)
  %177 = fmul fast float %172, %176
  %178 = fmul fast float %173, %176
  %179 = fmul fast float %174, %176
  %180 = call float @dx.op.dot3.f32(i32 55, float %177, float %178, float %179, float %161, float %162, float %163)  ; Dot3(ax,ay,az,bx,by,bz)
  %181 = fcmp uge float %180, 0.000000e+00
  %182 = and i1 %94, %181
  br i1 %182, label %183, label %417, !dx.controlflow.hints !25

; <label>:183                                     ; preds = %0
  %184 = extractvalue %dx.types.CBufRet.f32 %160, 3
  %185 = extractvalue %dx.types.CBufRet.f32 %159, 3
  %186 = extractvalue %dx.types.CBufRet.f32 %159, 2
  %187 = extractvalue %dx.types.CBufRet.f32 %159, 1
  %188 = extractvalue %dx.types.CBufRet.f32 %159, 0
  %189 = extractvalue %dx.types.CBufRet.f32 %158, 3
  %190 = extractvalue %dx.types.CBufRet.f32 %158, 2
  %191 = extractvalue %dx.types.CBufRet.f32 %158, 1
  %192 = extractvalue %dx.types.CBufRet.f32 %158, 0
  %193 = extractvalue %dx.types.CBufRet.f32 %55, 3
  %194 = fdiv fast float 1.000000e+00, %100
  %195 = fmul fast float %49, %27
  %196 = fmul fast float %50, %28
  %197 = fmul fast float %193, %177
  %198 = fmul fast float %193, %178
  %199 = fmul fast float %193, %179
  %200 = fadd fast float %197, %150
  %201 = fadd fast float %198, %151
  %202 = fadd fast float %199, %152
  %203 = fmul fast float %200, %192
  %204 = call float @dx.op.tertiary.f32(i32 46, float %201, float %191, float %203)  ; FMad(a,b,c)
  %205 = call float @dx.op.tertiary.f32(i32 46, float %202, float %190, float %204)  ; FMad(a,b,c)
  %206 = fadd fast float %205, %189
  %207 = fmul fast float %200, %188
  %208 = call float @dx.op.tertiary.f32(i32 46, float %201, float %187, float %207)  ; FMad(a,b,c)
  %209 = call float @dx.op.tertiary.f32(i32 46, float %202, float %186, float %208)  ; FMad(a,b,c)
  %210 = fadd fast float %209, %185
  %211 = fmul fast float %200, %161
  %212 = call float @dx.op.tertiary.f32(i32 46, float %201, float %162, float %211)  ; FMad(a,b,c)
  %213 = call float @dx.op.tertiary.f32(i32 46, float %202, float %163, float %212)  ; FMad(a,b,c)
  %214 = fadd fast float %213, %184
  %215 = fdiv fast float 1.000000e+00, %214
  %216 = fmul fast float %206, 5.000000e-01
  %217 = fmul fast float %210, -5.000000e-01
  %218 = fmul fast float %216, %215
  %219 = fmul fast float %217, %215
  %220 = fadd fast float %218, 5.000000e-01
  %221 = fmul fast float %195, 2.000000e+00
  %222 = fadd fast float %221, -1.000000e+00
  %223 = call float @dx.op.unary.f32(i32 6, float %222)  ; FAbs(value)
  %224 = fmul fast float %223, 5.000000e+00
  %225 = fadd fast float %224, -4.000000e+00
  %226 = call float @dx.op.unary.f32(i32 7, float %225)  ; Saturate(value)
  %227 = fsub fast float %195, %220
  %228 = fmul fast float %227, %226
  %229 = fsub fast float %220, %195
  %230 = fadd fast float %229, %228
  %231 = fsub fast float 5.000000e-01, %196
  %232 = fadd fast float %231, %219
  %233 = fsub fast float %215, %194
  %234 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %10, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %235 = extractvalue %dx.types.CBufRet.f32 %234, 0
  %236 = extractvalue %dx.types.CBufRet.f32 %234, 1
  %237 = fmul fast float %235, %195
  %238 = fmul fast float %236, %196
  %239 = call float @dx.op.unary.f32(i32 27, float %237)  ; Round_ni(value)
  %240 = call float @dx.op.unary.f32(i32 27, float %238)  ; Round_ni(value)
  %241 = extractvalue %dx.types.CBufRet.f32 %234, 2
  %242 = extractvalue %dx.types.CBufRet.f32 %234, 3
  %243 = fmul fast float %241, %239
  %244 = fmul fast float %242, %240
  %245 = fadd fast float %28, %27
  %246 = fmul fast float %245, 1.250000e+01
  %247 = fcmp fast ogt float %230, 0.000000e+00
  %248 = select i1 %247, float 1.000000e+00, float -1.000000e+00
  %249 = fcmp fast ogt float %232, 0.000000e+00
  %250 = select i1 %249, float 1.000000e+00, float -1.000000e+00
  %251 = fmul fast float %27, 7.812500e-03
  %252 = fmul fast float %251, %248
  %253 = fmul fast float %28, 7.812500e-03
  %254 = fmul fast float %253, %250
  br label %255

; <label>:255                                     ; preds = %341, %183
  %256 = phi float [ %243, %183 ], [ %342, %341 ]
  %257 = phi float [ %244, %183 ], [ %343, %341 ]
  %258 = phi i32 [ 0, %183 ], [ %353, %341 ]
  %259 = phi i32 [ 0, %183 ], [ %354, %341 ]
  %260 = phi i32 [ 2, %183 ], [ %345, %341 ]
  %261 = phi i32 [ 0, %183 ], [ %365, %341 ]
  %262 = phi i32 [ 1, %183 ], [ %346, %341 ]
  %263 = phi float [ 0.000000e+00, %183 ], [ %347, %341 ]
  %264 = fmul fast float %263, %230
  %265 = fmul fast float %263, %232
  %266 = fmul fast float %263, %233
  %267 = fadd fast float %264, %256
  %268 = fadd fast float %265, %257
  %269 = fadd fast float %266, %194
  %270 = add i32 %260, 6
  %271 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %10, i32 %270)  ; CBufferLoadLegacy(handle,regIndex)
  %272 = extractvalue %dx.types.CBufRet.f32 %271, 0
  %273 = extractvalue %dx.types.CBufRet.f32 %271, 1
  %274 = fmul fast float %267, %272
  %275 = fmul fast float %268, %273
  %276 = call float @dx.op.unary.f32(i32 27, float %274)  ; Round_ni(value)
  %277 = call float @dx.op.unary.f32(i32 27, float %275)  ; Round_ni(value)
  %278 = icmp ne i32 %262, 0
  %279 = fptosi float %276 to i32
  %280 = fptosi float %277 to i32
  %281 = zext i1 %278 to i32
  %282 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %5, i32 %260, i32 %279, i32 %280, i32 %281, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %283 = extractvalue %dx.types.ResRet.f32 %282, 0
  %284 = fcmp fast ogt float %283, -1.000000e+00
  %285 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %286 = extractvalue %dx.types.CBufRet.f32 %285, 1
  %287 = select i1 %284, float %286, float 1.000000e+00
  %288 = fadd fast float %283, 1.000000e+00
  %289 = fmul fast float %287, %288
  %290 = call float @dx.op.unary.f32(i32 6, float %289)  ; FAbs(value)
  %291 = fdiv fast float 1.000000e+00, %269
  %292 = fmul fast float %290, 0x3FEFEF9DC0000000
  %293 = fsub fast float %291, %292
  %294 = fcmp fast olt float %293, 0.000000e+00
  %295 = fcmp fast ogt float %293, 0.000000e+00
  %296 = select i1 %278, i1 %294, i1 %295
  br i1 %296, label %330, label %297, !dx.controlflow.hints !26

; <label>:297                                     ; preds = %255
  %298 = extractvalue %dx.types.CBufRet.f32 %271, 2
  %299 = extractvalue %dx.types.CBufRet.f32 %271, 3
  %300 = fdiv fast float 1.000000e+00, %290
  %301 = fsub fast float %300, %194
  %302 = fdiv fast float %301, %233
  %303 = fcmp fast olt float %302, %263
  %304 = fmul fast float %248, 5.000000e-01
  %305 = fmul fast float %250, 5.000000e-01
  %306 = fadd fast float %304, 5.000000e-01
  %307 = fadd fast float %306, %276
  %308 = fadd fast float %305, 5.000000e-01
  %309 = fadd fast float %308, %277
  %310 = fmul fast float %298, %307
  %311 = fmul fast float %299, %309
  %312 = fsub fast float %310, %256
  %313 = fsub fast float %311, %257
  %314 = fdiv fast float %312, %230
  %315 = fdiv fast float %313, %232
  %316 = call float @dx.op.binary.f32(i32 36, float %314, float %315)  ; FMin(a,b)
  %317 = fcmp fast olt float %316, %302
  %318 = or i1 %278, %317
  %319 = or i1 %303, %318
  %320 = select i1 %319, float %316, float %302
  %321 = select i1 %319, float %252, float 0.000000e+00
  %322 = select i1 %319, float %254, float 0.000000e+00
  %323 = fadd fast float %321, %256
  %324 = fadd fast float %322, %257
  %325 = add nsw i32 %260, 1
  %326 = call i32 @dx.op.binary.i32(i32 38, i32 9, i32 %325)  ; IMin(a,b)
  %327 = add nsw i32 %260, -1
  %328 = call i32 @dx.op.binary.i32(i32 37, i32 0, i32 %327)  ; IMax(a,b)
  %329 = select i1 %319, i32 %326, i32 %328
  br label %341

; <label>:330                                     ; preds = %255
  %331 = icmp eq i32 %260, 0
  br i1 %331, label %334, label %332, !dx.controlflow.hints !27

; <label>:332                                     ; preds = %330
  %333 = add nsw i32 %260, -1
  br label %341

; <label>:334                                     ; preds = %330
  %335 = icmp eq i32 %262, 0
  br i1 %335, label %336, label %341, !dx.controlflow.hints !28

; <label>:336                                     ; preds = %334
  %337 = fmul fast float %246, %290
  %338 = fcmp fast olt float %293, %337
  %339 = zext i1 %338 to i32
  %340 = xor i32 %339, 1
  br label %341

; <label>:341                                     ; preds = %336, %334, %332, %297
  %342 = phi float [ %256, %336 ], [ %256, %332 ], [ %323, %297 ], [ %256, %334 ]
  %343 = phi float [ %257, %336 ], [ %257, %332 ], [ %324, %297 ], [ %257, %334 ]
  %344 = phi i32 [ %339, %336 ], [ %258, %332 ], [ %258, %297 ], [ %258, %334 ]
  %345 = phi i32 [ 0, %336 ], [ %333, %332 ], [ %329, %297 ], [ 0, %334 ]
  %346 = phi i32 [ %340, %336 ], [ %262, %332 ], [ %262, %297 ], [ 0, %334 ]
  %347 = phi float [ %263, %336 ], [ %263, %332 ], [ %320, %297 ], [ %263, %334 ]
  %348 = icmp eq i32 %344, 0
  %349 = fcmp fast ogt float %291, %193
  %350 = and i1 %349, %348
  %351 = icmp eq i32 %346, 0
  %352 = zext i1 %351 to i32
  %353 = select i1 %350, i32 %352, i32 %344
  %354 = select i1 %350, i32 1, i32 %259
  %355 = call float @dx.op.unary.f32(i32 7, float %267)  ; Saturate(value)
  %356 = call float @dx.op.unary.f32(i32 7, float %268)  ; Saturate(value)
  %357 = fcmp une float %267, %355
  %358 = fcmp une float %268, %356
  %359 = or i1 %357, %358
  %360 = icmp eq i32 %261, 1024
  %361 = or i1 %360, %359
  %362 = or i32 %353, %354
  %363 = icmp ne i32 %362, 0
  %364 = or i1 %363, %361
  %365 = add nuw nsw i32 %261, 1
  br i1 %364, label %366, label %255, !dx.controlflow.hints !29

; <label>:366                                     ; preds = %341
  %367 = fdiv fast float %266, %233
  %368 = call float @dx.op.unary.f32(i32 7, float %367)  ; Saturate(value)
  %369 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %11, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %370 = extractvalue %dx.types.CBufRet.i32 %369, 3
  %371 = and i32 %370, 3
  %372 = icmp ne i32 %371, 0
  %373 = and i32 %370, 4
  %374 = icmp ne i32 %373, 0
  %375 = and i1 %372, %374
  br i1 %375, label %376, label %381, !dx.controlflow.hints !30

; <label>:376                                     ; preds = %366
  %377 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %8, float %46, float %48, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %378 = extractvalue %dx.types.ResRet.f32 %377, 0
  %379 = fcmp fast ole float %378, 0.000000e+00
  %380 = zext i1 %379 to i32
  br label %381

; <label>:381                                     ; preds = %376, %366
  %382 = phi i32 [ %380, %376 ], [ 0, %366 ]
  %383 = fcmp fast une float %368, 0x7FF0000000000000
  br i1 %383, label %384, label %415, !dx.controlflow.hints !31

; <label>:384                                     ; preds = %381
  %385 = fmul fast float %215, -5.000000e-01
  %386 = fmul fast float %385, %210
  %387 = fadd fast float %231, %386
  %388 = fmul fast float %230, %368
  %389 = fmul fast float %387, %368
  %390 = fadd fast float %388, %195
  %391 = fadd fast float %389, %196
  %392 = icmp ne i32 %382, 0
  %393 = or i1 %53, %392
  %394 = and i1 %393, %375
  br i1 %394, label %395, label %399, !dx.controlflow.hints !32

; <label>:395                                     ; preds = %384
  %396 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %8, float %390, float %391, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %397 = extractvalue %dx.types.ResRet.f32 %396, 0
  %398 = fcmp fast ogt float %397, 0.000000e+00
  br label %399

; <label>:399                                     ; preds = %395, %384
  %400 = phi i1 [ %398, %395 ], [ false, %384 ]
  %401 = call float @dx.op.unary.f32(i32 6, float %368)  ; FAbs(value)
  %402 = fsub fast float 1.000000e+00, %401
  %403 = select i1 %400, float 0xFFF0000000000000, float %402
  %404 = fcmp fast une float %403, 0xFFF0000000000000
  %405 = fcmp fast une float %403, 0x7FF0000000000000
  %406 = and i1 %404, %405
  %407 = and i1 %53, %406
  br i1 %407, label %408, label %415, !dx.controlflow.hints !33

; <label>:408                                     ; preds = %399
  %409 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %9, float %390, float %391, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %410 = extractvalue %dx.types.ResRet.f32 %409, 0
  %411 = fcmp fast olt float %410, -1.000000e+00
  %412 = call float @dx.op.unary.f32(i32 6, float %403)  ; FAbs(value)
  %413 = fsub fast float -0.000000e+00, %412
  %414 = select i1 %411, float %413, float %403
  br label %415

; <label>:415                                     ; preds = %408, %399, %381
  %416 = phi float [ %414, %408 ], [ %403, %399 ], [ 0x7FF0000000000000, %381 ]
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %17, i32 %18, i32 0, float %416, float %416, float %416, float %416, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %418

; <label>:417                                     ; preds = %0
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %17, i32 %18, i32 0, float 0xFFF0000000000000, float 0xFFF0000000000000, float 0xFFF0000000000000, float 0xFFF0000000000000, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %418

; <label>:418                                     ; preds = %417, %415
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
declare i32 @dx.op.binary.i32(i32, i32, i32) #0

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
!dx.entryPoints = !{!22}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !14, !16, !19}
!5 = !{!6, !8, !9, !10, !12, !13}
!6 = !{i32 0, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 5, i32 1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, %"class.Texture2D<float>"* undef, !"", i32 0, i32 0, i32 1, i32 2, i32 0, !7}
!9 = !{i32 2, %"class.Texture2DArray<float>"* undef, !"", i32 0, i32 7, i32 1, i32 7, i32 0, !7}
!10 = !{i32 3, %"class.Texture2D<unsigned int>"* undef, !"", i32 0, i32 2, i32 1, i32 2, i32 0, !11}
!11 = !{i32 0, i32 5}
!12 = !{i32 4, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 8, i32 1, i32 11, i32 0, null}
!13 = !{i32 5, %"class.Texture2D<float>"* undef, !"", i32 0, i32 3, i32 1, i32 2, i32 0, !7}
!14 = !{!15}
!15 = !{i32 0, %"class.RWTexture2DArray<float>"* undef, !"", i32 0, i32 0, i32 1, i32 7, i1 false, i1 false, i1 false, !7}
!16 = !{!17, !18}
!17 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!18 = !{i32 1, %ConstantBufferSSR0* undef, !"", i32 0, i32 0, i32 1, i32 288, null}
!19 = !{!20, !21}
!20 = !{i32 0, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!21 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!22 = !{void ()* @cs_ssr_trace_water_hq_hiz, !"cs_ssr_trace_water_hq_hiz", null, !4, !23}
!23 = !{i32 0, i64 272, i32 4, !24}
!24 = !{i32 8, i32 8, i32 1}
!25 = distinct !{!25, !"dx.controlflow.hints", i32 2}
!26 = distinct !{!26, !"dx.controlflow.hints", i32 2}
!27 = distinct !{!27, !"dx.controlflow.hints", i32 2}
!28 = distinct !{!28, !"dx.controlflow.hints", i32 2}
!29 = distinct !{!29, !"dx.controlflow.hints", i32 2}
!30 = distinct !{!30, !"dx.controlflow.hints", i32 2}
!31 = distinct !{!31, !"dx.controlflow.hints", i32 2}
!32 = distinct !{!32, !"dx.controlflow.hints", i32 2}
!33 = distinct !{!33, !"dx.controlflow.hints", i32 2}

