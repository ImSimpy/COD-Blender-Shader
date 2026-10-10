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
; shader hash: 0e9a1502e39ba25126941c4c24e42355
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
;                                   texture    byte         r/o      T3             t9     1
;                                   texture     u32        2dMS      T4             t1     1
;                                   texture     f32          2d      T5             t3     1
;                                       UAV     f32     2darray      U0             u0     1
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.CBufRet.f32 = type { float, float, float, float }
%dx.types.ResRet.f32 = type { float, float, float, float, i32 }
%dx.types.CBufRet.i32 = type { i32, i32, i32, i32 }
%dx.types.ResRet.i32 = type { i32, i32, i32, i32, i32 }
%"class.Texture2D<vector<float, 4> >" = type { <4 x float>, %"class.Texture2D<vector<float, 4> >::mips_type" }
%"class.Texture2D<vector<float, 4> >::mips_type" = type { i32 }
%"class.Texture2D<float>" = type { float, %"class.Texture2D<float>::mips_type" }
%"class.Texture2D<float>::mips_type" = type { i32 }
%"class.Texture2D<unsigned int>" = type { i32, %"class.Texture2D<unsigned int>::mips_type" }
%"class.Texture2D<unsigned int>::mips_type" = type { i32 }
%struct.ByteAddressBuffer = type { i32 }
%"class.Texture2DMS<vector<unsigned int, 4>, 0>" = type { <4 x i32>, %"class.Texture2DMS<vector<unsigned int, 4>, 0>::sample_type" }
%"class.Texture2DMS<vector<unsigned int, 4>, 0>::sample_type" = type { i32 }
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

define void @cs_ssr_trace() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 9, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call i32 @dx.op.threadId.i32(i32 93, i32 0)  ; ThreadId(component)
  %13 = call i32 @dx.op.threadId.i32(i32 93, i32 1)  ; ThreadId(component)
  %14 = alloca [4 x i32], align 4
  %15 = alloca [4 x float], align 4
  %16 = uitofp i32 %12 to float
  %17 = uitofp i32 %13 to float
  %18 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %10, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %19 = extractvalue %dx.types.CBufRet.f32 %18, 2
  %20 = extractvalue %dx.types.CBufRet.f32 %18, 3
  %21 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %10, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %22 = extractvalue %dx.types.CBufRet.f32 %21, 0
  %23 = extractvalue %dx.types.CBufRet.f32 %21, 1
  %24 = extractvalue %dx.types.CBufRet.f32 %21, 2
  %25 = extractvalue %dx.types.CBufRet.f32 %21, 3
  %26 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %27 = extractvalue %dx.types.CBufRet.f32 %26, 2
  %28 = fmul fast float %27, 0x3FE3C6EF40000000
  %29 = frem fast float %16, 2.560000e+02
  %30 = frem fast float %17, 2.560000e+02
  %31 = fptoui float %29 to i32
  %32 = fptoui float %30 to i32
  %33 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %7, i32 0, i32 %31, i32 %32, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %34 = extractvalue %dx.types.ResRet.f32 %33, 0
  %35 = extractvalue %dx.types.ResRet.f32 %33, 1
  %36 = fadd fast float %34, %28
  %37 = fadd fast float %35, %28
  %38 = call float @dx.op.unary.f32(i32 22, float %36)  ; Frc(value)
  %39 = call float @dx.op.unary.f32(i32 22, float %37)  ; Frc(value)
  %40 = fmul fast float %38, 5.000000e-01
  %41 = fmul fast float %39, 5.000000e-01
  %42 = fadd fast float %40, %16
  %43 = fmul fast float %42, %19
  %44 = fadd fast float %41, %17
  %45 = fmul fast float %44, %20
  %46 = fmul fast float %43, %22
  %47 = fmul fast float %45, %23
  %48 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %9, float %43, float %45, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %49 = extractvalue %dx.types.ResRet.f32 %48, 0
  %50 = fcmp fast olt float %49, -1.000000e+00
  %51 = fcmp fast ogt float %49, -1.000000e+00
  %52 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %53 = extractvalue %dx.types.CBufRet.f32 %52, 1
  %54 = select i1 %51, float %53, float 1.000000e+00
  %55 = fadd fast float %49, 1.000000e+00
  %56 = fmul fast float %54, %55
  %57 = call float @dx.op.unary.f32(i32 6, float %56)  ; FAbs(value)
  %58 = extractvalue %dx.types.CBufRet.f32 %52, 3
  %59 = fcmp ult float %57, %58
  %60 = zext i1 %59 to i32
  %61 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %10, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %62 = extractvalue %dx.types.CBufRet.i32 %61, 0
  %63 = extractvalue %dx.types.CBufRet.i32 %61, 1
  %64 = extractvalue %dx.types.CBufRet.i32 %61, 2
  %65 = extractvalue %dx.types.CBufRet.i32 %61, 3
  %66 = fptosi float %46 to i32
  %67 = fptosi float %47 to i32
  %68 = lshr i32 %66, 1
  %69 = lshr i32 %67, 1
  %70 = and i32 %66, 1
  %71 = shl i32 %67, 1
  %72 = and i32 %71, 2
  %73 = or i32 %72, %70
  %74 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i32 0, i32 0
  store i32 %62, i32* %74, align 4
  %75 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i32 0, i32 1
  store i32 %63, i32* %75, align 4
  %76 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i32 0, i32 2
  store i32 %64, i32* %76, align 4
  %77 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i32 0, i32 3
  store i32 %65, i32* %77, align 4
  %78 = getelementptr [4 x i32], [4 x i32]* %14, i32 0, i32 %73
  %79 = load i32, i32* %78, align 4, !tbaa !25
  %80 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %3, i32 %79, i32 %68, i32 %69, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %81 = extractvalue %dx.types.ResRet.i32 %80, 0
  %82 = lshr i32 %81, 8
  %83 = and i32 %81, 255
  %84 = and i32 %82, 255
  %85 = uitofp i32 %83 to float
  %86 = uitofp i32 %84 to float
  %87 = fmul fast float %85, 0x3F80101020000000
  %88 = fmul fast float %86, 0x3F80101020000000
  %89 = fadd fast float %87, -1.000000e+00
  %90 = fadd fast float %88, -1.000000e+00
  %91 = call float @dx.op.unary.f32(i32 6, float %89)  ; FAbs(value)
  %92 = fsub fast float 1.000000e+00, %91
  %93 = call float @dx.op.unary.f32(i32 6, float %90)  ; FAbs(value)
  %94 = fsub fast float %92, %93
  %95 = fsub fast float -0.000000e+00, %94
  %96 = call float @dx.op.binary.f32(i32 35, float %95, float 0.000000e+00)  ; FMax(a,b)
  %97 = fcmp fast ogt float %89, 0.000000e+00
  %98 = fsub fast float -0.000000e+00, %96
  %99 = select i1 %97, float %98, float %96
  %100 = fadd fast float %99, %89
  %101 = fcmp fast ogt float %90, 0.000000e+00
  %102 = select i1 %101, float %98, float %96
  %103 = fadd fast float %102, %90
  %104 = call float @dx.op.dot3.f32(i32 55, float %100, float %103, float %94, float %100, float %103, float %94)  ; Dot3(ax,ay,az,bx,by,bz)
  %105 = call float @dx.op.unary.f32(i32 25, float %104)  ; Rsqrt(value)
  %106 = fmul fast float %100, %105
  %107 = fmul fast float %103, %105
  %108 = fmul fast float %105, %94
  %109 = shl i32 %12, 3
  %110 = shl i32 %13, 3
  %111 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %11, i32 358)  ; CBufferLoadLegacy(handle,regIndex)
  %112 = extractvalue %dx.types.CBufRet.i32 %111, 1
  %113 = extractvalue %dx.types.CBufRet.i32 %111, 0
  %114 = and i32 %113, 31
  %115 = lshr i32 %109, %114
  %116 = call i32 @dx.op.binary.i32(i32 40, i32 %115, i32 %112)  ; UMin(a,b)
  %117 = extractvalue %dx.types.CBufRet.i32 %111, 2
  %118 = lshr i32 %110, %114
  %119 = call i32 @dx.op.binary.i32(i32 40, i32 %118, i32 %117)  ; UMin(a,b)
  %120 = call i32 @dx.op.tertiary.i32(i32 49, i32 %119, i32 %112, i32 %116)  ; UMad(a,b,c)
  %121 = lshr i32 %120, 5
  %122 = and i32 %120, 31
  %123 = shl i32 1, %122
  %124 = shl nuw nsw i32 %121, 2
  %125 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %124, i32 undef)  ; BufferLoad(srv,index,wot)
  %126 = extractvalue %dx.types.ResRet.i32 %125, 0
  %127 = and i32 %126, %123
  %128 = icmp eq i32 %127, 0
  %129 = fmul fast float %43, 2.000000e+00
  %130 = fmul fast float %45, 2.000000e+00
  %131 = fsub fast float 1.000000e+00, %129
  %132 = fsub fast float 1.000000e+00, %130
  br i1 %128, label %213, label %133, !dx.controlflow.hints !29

; <label>:133                                     ; preds = %0
  %134 = fmul fast float %46, 5.000000e-01
  %135 = fmul fast float %47, 5.000000e-01
  %136 = fptosi float %134 to i32
  %137 = fptosi float %135 to i32
  %138 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %5, i32 0, i32 %136, i32 %137, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %139 = extractvalue %dx.types.ResRet.i32 %138, 0
  %140 = lshr i32 %139, 8
  %141 = and i32 %139, 255
  %142 = and i32 %140, 255
  %143 = uitofp i32 %141 to float
  %144 = uitofp i32 %142 to float
  %145 = fmul fast float %143, 0x3F80101020000000
  %146 = fmul fast float %144, 0x3F80101020000000
  %147 = fadd fast float %145, -1.000000e+00
  %148 = fadd fast float %146, -1.000000e+00
  %149 = call float @dx.op.unary.f32(i32 6, float %147)  ; FAbs(value)
  %150 = fsub fast float 1.000000e+00, %149
  %151 = call float @dx.op.unary.f32(i32 6, float %148)  ; FAbs(value)
  %152 = fsub fast float %150, %151
  %153 = fsub fast float -0.000000e+00, %152
  %154 = call float @dx.op.binary.f32(i32 35, float %153, float 0.000000e+00)  ; FMax(a,b)
  %155 = fcmp fast ogt float %147, 0.000000e+00
  %156 = fsub fast float -0.000000e+00, %154
  %157 = select i1 %155, float %156, float %154
  %158 = fadd fast float %157, %147
  %159 = fcmp fast ogt float %148, 0.000000e+00
  %160 = select i1 %159, float %156, float %154
  %161 = fadd fast float %160, %148
  %162 = call float @dx.op.dot3.f32(i32 55, float %158, float %161, float %152, float %158, float %161, float %152)  ; Dot3(ax,ay,az,bx,by,bz)
  %163 = call float @dx.op.unary.f32(i32 25, float %162)  ; Rsqrt(value)
  %164 = fmul fast float %158, %163
  %165 = fmul fast float %161, %163
  %166 = fmul fast float %163, %152
  %167 = icmp ult i32 %139, -262144
  %168 = lshr i32 %139, 18
  %169 = uitofp i32 %168 to float
  %170 = fmul fast float %169, 0x3F4C00EBA0000000
  %171 = call float @dx.op.unary.f32(i32 21, float %170)  ; Exp(value)
  %172 = fadd fast float %171, -1.000000e+00
  %173 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %174 = extractvalue %dx.types.CBufRet.f32 %173, 0
  %175 = extractvalue %dx.types.CBufRet.f32 %173, 1
  %176 = extractvalue %dx.types.CBufRet.f32 %173, 2
  %177 = fmul fast float %174, %131
  %178 = fmul fast float %175, %131
  %179 = fmul fast float %176, %131
  %180 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %181 = extractvalue %dx.types.CBufRet.f32 %180, 0
  %182 = extractvalue %dx.types.CBufRet.f32 %180, 1
  %183 = extractvalue %dx.types.CBufRet.f32 %180, 2
  %184 = fmul fast float %181, %132
  %185 = fmul fast float %182, %132
  %186 = fmul fast float %183, %132
  %187 = fadd fast float %184, %177
  %188 = fadd fast float %185, %178
  %189 = fadd fast float %186, %179
  %190 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %191 = extractvalue %dx.types.CBufRet.f32 %190, 0
  %192 = extractvalue %dx.types.CBufRet.f32 %190, 1
  %193 = extractvalue %dx.types.CBufRet.f32 %190, 2
  %194 = fadd fast float %187, %191
  %195 = fadd fast float %188, %192
  %196 = fadd fast float %189, %193
  %197 = fmul fast float %194, %172
  %198 = fmul fast float %195, %172
  %199 = fmul fast float %196, %172
  %200 = call float @dx.op.dot3.f32(i32 55, float %197, float %198, float %199, float %197, float %198, float %199)  ; Dot3(ax,ay,az,bx,by,bz)
  %201 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 357)  ; CBufferLoadLegacy(handle,regIndex)
  %202 = extractvalue %dx.types.CBufRet.f32 %201, 3
  %203 = fmul fast float %202, 0x3FE47AE140000000
  %204 = fcmp fast ogt float %200, %203
  %205 = and i1 %167, %204
  %206 = fcmp fast olt float %172, %57
  %207 = and i1 %206, %205
  %208 = select i1 %207, float %172, float %57
  %209 = select i1 %207, i32 1, i32 %60
  %210 = select i1 %207, float %164, float %106
  %211 = select i1 %207, float %165, float %107
  %212 = select i1 %207, float %166, float %108
  br label %213

; <label>:213                                     ; preds = %133, %0
  %214 = phi float [ %208, %133 ], [ %57, %0 ]
  %215 = phi i32 [ %209, %133 ], [ %60, %0 ]
  %216 = phi float [ %210, %133 ], [ %106, %0 ]
  %217 = phi float [ %211, %133 ], [ %107, %0 ]
  %218 = phi float [ %212, %133 ], [ %108, %0 ]
  %219 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %220 = extractvalue %dx.types.CBufRet.f32 %219, 0
  %221 = extractvalue %dx.types.CBufRet.f32 %219, 1
  %222 = extractvalue %dx.types.CBufRet.f32 %219, 2
  %223 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %224 = extractvalue %dx.types.CBufRet.f32 %223, 0
  %225 = extractvalue %dx.types.CBufRet.f32 %223, 1
  %226 = extractvalue %dx.types.CBufRet.f32 %223, 2
  %227 = select i1 %50, float %220, float %224
  %228 = select i1 %50, float %221, float %225
  %229 = select i1 %50, float %222, float %226
  %230 = fmul fast float %227, %131
  %231 = fmul fast float %228, %131
  %232 = fmul fast float %229, %131
  %233 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %234 = extractvalue %dx.types.CBufRet.f32 %233, 0
  %235 = extractvalue %dx.types.CBufRet.f32 %233, 1
  %236 = extractvalue %dx.types.CBufRet.f32 %233, 2
  %237 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %238 = extractvalue %dx.types.CBufRet.f32 %237, 0
  %239 = extractvalue %dx.types.CBufRet.f32 %237, 1
  %240 = extractvalue %dx.types.CBufRet.f32 %237, 2
  %241 = select i1 %50, float %234, float %238
  %242 = select i1 %50, float %235, float %239
  %243 = select i1 %50, float %236, float %240
  %244 = fmul fast float %241, %132
  %245 = fmul fast float %242, %132
  %246 = fmul fast float %243, %132
  %247 = fadd fast float %244, %230
  %248 = fadd fast float %245, %231
  %249 = fadd fast float %246, %232
  %250 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %251 = extractvalue %dx.types.CBufRet.f32 %250, 0
  %252 = extractvalue %dx.types.CBufRet.f32 %250, 1
  %253 = extractvalue %dx.types.CBufRet.f32 %250, 2
  %254 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %255 = extractvalue %dx.types.CBufRet.f32 %254, 0
  %256 = extractvalue %dx.types.CBufRet.f32 %254, 1
  %257 = extractvalue %dx.types.CBufRet.f32 %254, 2
  %258 = select i1 %50, float %251, float %255
  %259 = select i1 %50, float %252, float %256
  %260 = select i1 %50, float %253, float %257
  %261 = fadd fast float %247, %258
  %262 = fadd fast float %248, %259
  %263 = fadd fast float %249, %260
  %264 = fmul fast float %261, %214
  %265 = fmul fast float %262, %214
  %266 = fmul fast float %263, %214
  %267 = fsub fast float -0.000000e+00, %264
  %268 = fsub fast float -0.000000e+00, %265
  %269 = fsub fast float -0.000000e+00, %266
  %270 = call float @dx.op.dot3.f32(i32 55, float %267, float %268, float %269, float %267, float %268, float %269)  ; Dot3(ax,ay,az,bx,by,bz)
  %271 = call float @dx.op.unary.f32(i32 25, float %270)  ; Rsqrt(value)
  %272 = fmul fast float %271, %267
  %273 = fmul fast float %271, %268
  %274 = fmul fast float %271, %269
  %275 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 103)  ; CBufferLoadLegacy(handle,regIndex)
  %276 = extractvalue %dx.types.CBufRet.f32 %275, 0
  %277 = extractvalue %dx.types.CBufRet.f32 %275, 1
  %278 = extractvalue %dx.types.CBufRet.f32 %275, 2
  %279 = extractvalue %dx.types.CBufRet.f32 %275, 3
  %280 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 104)  ; CBufferLoadLegacy(handle,regIndex)
  %281 = extractvalue %dx.types.CBufRet.f32 %280, 0
  %282 = extractvalue %dx.types.CBufRet.f32 %280, 1
  %283 = extractvalue %dx.types.CBufRet.f32 %280, 2
  %284 = extractvalue %dx.types.CBufRet.f32 %280, 3
  %285 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 106)  ; CBufferLoadLegacy(handle,regIndex)
  %286 = extractvalue %dx.types.CBufRet.f32 %285, 0
  %287 = extractvalue %dx.types.CBufRet.f32 %285, 1
  %288 = extractvalue %dx.types.CBufRet.f32 %285, 2
  %289 = extractvalue %dx.types.CBufRet.f32 %285, 3
  %290 = fsub fast float -0.000000e+00, %272
  %291 = fsub fast float -0.000000e+00, %273
  %292 = fsub fast float -0.000000e+00, %274
  %293 = call float @dx.op.dot3.f32(i32 55, float %290, float %291, float %292, float %216, float %217, float %218)  ; Dot3(ax,ay,az,bx,by,bz)
  %294 = fmul fast float %293, 2.000000e+00
  %295 = fmul fast float %294, %216
  %296 = fmul fast float %294, %217
  %297 = fmul fast float %294, %218
  %298 = fsub fast float %290, %295
  %299 = fsub fast float %291, %296
  %300 = fsub fast float %292, %297
  %301 = call float @dx.op.dot3.f32(i32 55, float %298, float %299, float %300, float %298, float %299, float %300)  ; Dot3(ax,ay,az,bx,by,bz)
  %302 = call float @dx.op.unary.f32(i32 25, float %301)  ; Rsqrt(value)
  %303 = fmul fast float %298, %302
  %304 = fmul fast float %299, %302
  %305 = fmul fast float %300, %302
  %306 = call float @dx.op.dot3.f32(i32 55, float %303, float %304, float %305, float %286, float %287, float %288)  ; Dot3(ax,ay,az,bx,by,bz)
  %307 = getelementptr inbounds [4 x float], [4 x float]* %15, i32 0, i32 0
  store float 0.000000e+00, float* %307, align 4
  %308 = getelementptr inbounds [4 x float], [4 x float]* %15, i32 0, i32 1
  store float 0.000000e+00, float* %308, align 4
  %309 = getelementptr inbounds [4 x float], [4 x float]* %15, i32 0, i32 2
  store float 0.000000e+00, float* %309, align 4
  %310 = getelementptr inbounds [4 x float], [4 x float]* %15, i32 0, i32 3
  store float 0.000000e+00, float* %310, align 4
  %311 = icmp ne i32 %215, 0
  %312 = fcmp uge float %306, 0.000000e+00
  %313 = and i1 %311, %312
  br i1 %313, label %314, label %920, !dx.controlflow.hints !30

; <label>:314                                     ; preds = %213
  %315 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %10, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %316 = extractvalue %dx.types.CBufRet.f32 %315, 0
  %317 = fptosi float %316 to i32
  %318 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %11, i32 24)  ; CBufferLoadLegacy(handle,regIndex)
  %319 = extractvalue %dx.types.CBufRet.i32 %318, 0
  %320 = uitofp i32 %319 to float
  %321 = call float @dx.op.dot3.f32(i32 55, float %216, float %217, float %218, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %322 = call float @dx.op.unary.f32(i32 6, float %321)  ; FAbs(value)
  %323 = fmul fast float %322, 8.000000e+00
  %324 = fadd fast float %323, -6.000000e+00
  %325 = call float @dx.op.unary.f32(i32 7, float %324)  ; Saturate(value)
  %326 = fdiv fast float 1.000000e+00, %214
  %327 = fmul fast float %46, %24
  %328 = fmul fast float %47, %25
  %329 = fmul fast float %58, %303
  %330 = fmul fast float %58, %304
  %331 = fmul fast float %58, %305
  %332 = fadd fast float %329, %264
  %333 = fadd fast float %330, %265
  %334 = fadd fast float %331, %266
  %335 = fmul fast float %332, %276
  %336 = call float @dx.op.tertiary.f32(i32 46, float %333, float %277, float %335)  ; FMad(a,b,c)
  %337 = call float @dx.op.tertiary.f32(i32 46, float %334, float %278, float %336)  ; FMad(a,b,c)
  %338 = fadd fast float %337, %279
  %339 = fmul fast float %332, %281
  %340 = call float @dx.op.tertiary.f32(i32 46, float %333, float %282, float %339)  ; FMad(a,b,c)
  %341 = call float @dx.op.tertiary.f32(i32 46, float %334, float %283, float %340)  ; FMad(a,b,c)
  %342 = fadd fast float %341, %284
  %343 = fmul fast float %332, %286
  %344 = call float @dx.op.tertiary.f32(i32 46, float %333, float %287, float %343)  ; FMad(a,b,c)
  %345 = call float @dx.op.tertiary.f32(i32 46, float %334, float %288, float %344)  ; FMad(a,b,c)
  %346 = fadd fast float %345, %289
  %347 = fdiv fast float 1.000000e+00, %346
  %348 = fmul fast float %338, 5.000000e-01
  %349 = fmul fast float %342, -5.000000e-01
  %350 = fmul fast float %348, %347
  %351 = fmul fast float %349, %347
  %352 = fadd fast float %350, 5.000000e-01
  %353 = fmul fast float %327, 2.000000e+00
  %354 = fadd fast float %353, -1.000000e+00
  %355 = call float @dx.op.unary.f32(i32 6, float %354)  ; FAbs(value)
  %356 = fmul fast float %355, 5.000000e+00
  %357 = fadd fast float %356, -4.000000e+00
  %358 = call float @dx.op.unary.f32(i32 7, float %357)  ; Saturate(value)
  %359 = fmul fast float %358, %325
  %360 = fsub fast float %327, %352
  %361 = fmul fast float %359, %360
  %362 = fsub fast float %352, %327
  %363 = fadd fast float %362, %361
  %364 = fsub fast float 5.000000e-01, %328
  %365 = fadd fast float %364, %351
  %366 = fsub fast float %347, %326
  %367 = call float @dx.op.dot2.f32(i32 54, float %363, float %365, float %363, float %365)  ; Dot2(ax,ay,bx,by)
  %368 = call float @dx.op.binary.f32(i32 35, float %367, float 0x3EB0C6F7A0000000)  ; FMax(a,b)
  %369 = call float @dx.op.dot2.f32(i32 54, float %22, float %23, float %22, float %23)  ; Dot2(ax,ay,bx,by)
  %370 = fmul fast float %369, %368
  %371 = call float @dx.op.unary.f32(i32 25, float %370)  ; Rsqrt(value)
  %372 = fmul fast float %371, %363
  %373 = fmul fast float %371, %365
  %374 = fadd fast float %372, %327
  %375 = fadd fast float %373, %328
  %376 = fmul fast float %363, %22
  %377 = fmul fast float %365, %23
  %378 = fmul fast float %376, %376
  %379 = fmul fast float %377, %377
  %380 = fadd fast float %378, %379
  %381 = call float @dx.op.unary.f32(i32 24, float %380)  ; Sqrt(value)
  %382 = fdiv fast float 1.000000e+00, %381
  %383 = fmul fast float %381, 3.125000e-02
  %384 = icmp sgt i32 %317, -1
  br i1 %384, label %385, label %503

; <label>:385                                     ; preds = %314
  br label %386

; <label>:386                                     ; preds = %499, %385
  %387 = phi float [ %481, %499 ], [ %214, %385 ]
  %388 = phi float [ %387, %499 ], [ %214, %385 ]
  %389 = phi i32 [ %500, %499 ], [ 0, %385 ]
  %390 = sitofp i32 %389 to float
  %391 = fadd fast float %38, 5.000000e-01
  %392 = call float @dx.op.unary.f32(i32 22, float %391)  ; Frc(value)
  %393 = fadd fast float %390, %392
  %394 = sitofp i32 %317 to float
  %395 = fdiv fast float %393, %394
  %396 = fmul fast float %395, %395
  %397 = call float @dx.op.binary.f32(i32 36, float %396, float 0x3FEFFF8020000000)  ; FMin(a,b)
  %398 = fmul fast float %397, %363
  %399 = fmul fast float %397, %365
  %400 = fmul fast float %397, %366
  %401 = fadd fast float %398, %374
  %402 = fadd fast float %399, %375
  %403 = fadd fast float %400, %326
  %404 = fdiv fast float 1.000000e+00, %403
  %405 = icmp ne i32 %319, 0
  %406 = fmul fast float %383, %397
  %407 = call float @dx.op.binary.f32(i32 36, float %406, float %320)  ; FMin(a,b)
  %408 = select i1 %405, float %407, float 0.000000e+00
  %409 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %9, float %401, float %402, float undef, float undef, i32 0, i32 0, i32 undef, float %408)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %410 = extractvalue %dx.types.ResRet.f32 %409, 0
  %411 = fcmp fast ogt float %410, -1.000000e+00
  %412 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %413 = extractvalue %dx.types.CBufRet.f32 %412, 1
  %414 = select i1 %411, float %413, float 1.000000e+00
  %415 = fadd fast float %410, 1.000000e+00
  %416 = fmul fast float %414, %415
  %417 = call float @dx.op.unary.f32(i32 6, float %416)  ; FAbs(value)
  %418 = fmul fast float %417, 0x3FF0083120000000
  %419 = fsub fast float %404, %418
  %420 = fcmp fast ogt float %419, 0.000000e+00
  br i1 %420, label %421, label %478, !dx.controlflow.hints !31

; <label>:421                                     ; preds = %386
  %422 = fdiv fast float 1.000000e+00, %387
  %423 = fsub fast float %422, %326
  %424 = fdiv fast float %423, %366
  %425 = fmul fast float %424, %363
  %426 = fmul fast float %424, %365
  %427 = fmul fast float %424, %366
  %428 = fadd fast float %425, %374
  %429 = fadd fast float %426, %375
  %430 = fadd fast float %427, %326
  br label %431

; <label>:431                                     ; preds = %468, %421
  %432 = phi float [ 5.000000e-01, %421 ], [ %440, %468 ]
  %433 = phi float [ 5.000000e-01, %421 ], [ %469, %468 ]
  %434 = phi i32 [ 0, %421 ], [ %475, %468 ]
  %435 = phi float [ %401, %421 ], [ %470, %468 ]
  %436 = phi float [ %402, %421 ], [ %471, %468 ]
  %437 = phi float [ %404, %421 ], [ %472, %468 ]
  %438 = phi float [ %410, %421 ], [ %473, %468 ]
  %439 = phi float [ %419, %421 ], [ %474, %468 ]
  %440 = fmul fast float %432, 5.000000e-01
  %441 = fsub fast float 1.000000e+00, %433
  %442 = fmul fast float %441, %428
  %443 = fmul fast float %441, %429
  %444 = fmul fast float %441, %430
  %445 = fmul fast float %433, %401
  %446 = fmul fast float %433, %402
  %447 = fmul fast float %433, %403
  %448 = fadd fast float %442, %445
  %449 = fadd fast float %443, %446
  %450 = fadd fast float %444, %447
  %451 = fdiv fast float 1.000000e+00, %450
  %452 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %9, float %448, float %449, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %453 = extractvalue %dx.types.ResRet.f32 %452, 0
  %454 = fcmp fast ogt float %453, -1.000000e+00
  %455 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %456 = extractvalue %dx.types.CBufRet.f32 %455, 1
  %457 = select i1 %454, float %456, float 1.000000e+00
  %458 = fadd fast float %453, 1.000000e+00
  %459 = fmul fast float %457, %458
  %460 = call float @dx.op.unary.f32(i32 6, float %459)  ; FAbs(value)
  %461 = fmul fast float %460, 0x3FF0083120000000
  %462 = fsub fast float %451, %461
  %463 = fcmp fast ogt float %462, 0.000000e+00
  br i1 %463, label %466, label %464, !dx.controlflow.hints !32

; <label>:464                                     ; preds = %431
  %465 = fadd fast float %433, %440
  br label %468

; <label>:466                                     ; preds = %431
  %467 = fsub fast float %433, %440
  br label %468

; <label>:468                                     ; preds = %466, %464
  %469 = phi float [ %467, %466 ], [ %465, %464 ]
  %470 = phi float [ %448, %466 ], [ %435, %464 ]
  %471 = phi float [ %449, %466 ], [ %436, %464 ]
  %472 = phi float [ %451, %466 ], [ %437, %464 ]
  %473 = phi float [ %453, %466 ], [ %438, %464 ]
  %474 = phi float [ %462, %466 ], [ %439, %464 ]
  %475 = add nuw nsw i32 %434, 1
  %476 = icmp eq i32 %475, 4
  br i1 %476, label %477, label %431

; <label>:477                                     ; preds = %468
  br label %478

; <label>:478                                     ; preds = %477, %386
  %479 = phi float [ %401, %386 ], [ %470, %477 ]
  %480 = phi float [ %402, %386 ], [ %471, %477 ]
  %481 = phi float [ %404, %386 ], [ %472, %477 ]
  %482 = phi float [ %410, %386 ], [ %473, %477 ]
  %483 = phi float [ %419, %386 ], [ %474, %477 ]
  %484 = fsub fast float %481, %388
  %485 = call float @dx.op.binary.f32(i32 35, float %484, float 4.800000e+01)  ; FMax(a,b)
  %486 = fcmp fast olt float %483, %485
  %487 = fcmp uge float %482, -1.000000e+00
  %488 = or i1 %50, %487
  %489 = call float @dx.op.unary.f32(i32 7, float %479)  ; Saturate(value)
  %490 = call float @dx.op.unary.f32(i32 7, float %480)  ; Saturate(value)
  %491 = fcmp fast oeq float %479, %489
  %492 = fcmp fast oeq float %480, %490
  %493 = and i1 %491, %492
  %494 = and i1 %488, %493
  %495 = and i1 %420, %486
  %496 = and i1 %495, %494
  %497 = fcmp fast ogt float %397, %382
  %498 = and i1 %497, %496
  br i1 %498, label %502, label %499, !dx.controlflow.hints !33

; <label>:499                                     ; preds = %478
  %500 = add nuw nsw i32 %389, 1
  %501 = icmp slt i32 %389, %317
  br i1 %501, label %386, label %502

; <label>:502                                     ; preds = %499, %478
  br label %503

; <label>:503                                     ; preds = %502, %314
  %504 = phi float [ %214, %314 ], [ %481, %502 ]
  %505 = fdiv fast float 1.000000e+00, %504
  %506 = fsub fast float %505, %326
  %507 = fdiv fast float %506, %366
  %508 = call float @dx.op.unary.f32(i32 7, float %507)  ; Saturate(value)
  store float %508, float* %307, align 4, !tbaa !34
  %509 = fcmp fast oge float %218, 0.000000e+00
  %510 = select i1 %509, float 1.000000e+00, float -1.000000e+00
  %511 = fadd fast float %510, %218
  %512 = fdiv fast float -1.000000e+00, %511
  %513 = fmul fast float %217, %216
  %514 = fmul fast float %513, %512
  %515 = fmul fast float %216, %216
  %516 = fmul fast float %515, %510
  %517 = fmul fast float %516, %512
  %518 = fadd fast float %517, 1.000000e+00
  %519 = fmul fast float %514, %510
  %520 = fmul fast float %216, %510
  %521 = fsub fast float -0.000000e+00, %520
  %522 = fmul fast float %217, %217
  %523 = fmul fast float %522, %512
  %524 = fadd fast float %523, %510
  %525 = fsub fast float -0.000000e+00, %217
  %526 = call float @dx.op.dot3.f32(i32 55, float %216, float %217, float %218, float %290, float %291, float %292)  ; Dot3(ax,ay,az,bx,by,bz)
  %527 = call float @dx.op.unary.f32(i32 7, float %526)  ; Saturate(value)
  %528 = fmul fast float %527, %527
  %529 = fmul fast float %528, 0x3FEFFD6940000000
  %530 = fadd fast float %529, 0x3F34B66D80000000
  %531 = bitcast float %530 to i32
  %532 = ashr i32 %531, 1
  %533 = add nsw i32 %532, 532487669
  %534 = bitcast i32 %533 to float
  %535 = fadd fast float %534, %527
  %536 = fdiv fast float 1.000000e+00, %535
  br label %537

; <label>:537                                     ; preds = %756, %503
  %538 = phi float [ 0.000000e+00, %503 ], [ %845, %756 ]
  %539 = phi float [ 0.000000e+00, %503 ], [ %827, %756 ]
  %540 = phi float [ 0.000000e+00, %503 ], [ %809, %756 ]
  %541 = phi float [ 0.000000e+00, %503 ], [ %846, %756 ]
  %542 = phi float [ 0.000000e+00, %503 ], [ %828, %756 ]
  %543 = phi float [ 0.000000e+00, %503 ], [ %810, %756 ]
  %544 = phi i32 [ 1, %503 ], [ %550, %756 ]
  %545 = sitofp i32 %544 to float
  %546 = fmul fast float %545, 0x3FC1111100000000
  %547 = call float @dx.op.binary.f32(i32 35, float %546, float 0x3F847AE140000000)  ; FMax(a,b)
  %548 = fmul fast float %547, %547
  %549 = fmul fast float %548, %548
  %550 = add nuw nsw i32 %544, 1
  %551 = uitofp i32 %550 to float
  %552 = fmul fast float %551, 0x3FEA36A940000000
  %553 = fmul fast float %551, 0x3FE5793080000000
  %554 = fadd fast float %552, %38
  %555 = fadd fast float %553, %39
  %556 = call float @dx.op.unary.f32(i32 22, float %554)  ; Frc(value)
  %557 = call float @dx.op.unary.f32(i32 22, float %555)  ; Frc(value)
  %558 = fmul fast float %545, 0x3FB5555560000000
  %559 = call float @dx.op.dot3.f32(i32 55, float %272, float %273, float %274, float %518, float %519, float %521)  ; Dot3(ax,ay,az,bx,by,bz)
  %560 = call float @dx.op.dot3.f32(i32 55, float %272, float %273, float %274, float %514, float %524, float %525)  ; Dot3(ax,ay,az,bx,by,bz)
  %561 = call float @dx.op.dot3.f32(i32 55, float %272, float %273, float %274, float %216, float %217, float %218)  ; Dot3(ax,ay,az,bx,by,bz)
  %562 = fsub fast float 1.000000e+00, %558
  %563 = fmul fast float %562, %556
  %564 = fmul fast float %559, %548
  %565 = fmul fast float %560, %548
  %566 = call float @dx.op.dot3.f32(i32 55, float %564, float %565, float %561, float %564, float %565, float %561)  ; Dot3(ax,ay,az,bx,by,bz)
  %567 = call float @dx.op.unary.f32(i32 25, float %566)  ; Rsqrt(value)
  %568 = fmul fast float %567, %564
  %569 = fmul fast float %567, %565
  %570 = fmul fast float %567, %561
  %571 = fmul fast float %568, %568
  %572 = fmul fast float %569, %569
  %573 = fadd fast float %571, %572
  %574 = fcmp fast ogt float %573, 0.000000e+00
  %575 = call float @dx.op.unary.f32(i32 25, float %573)  ; Rsqrt(value)
  %576 = fmul fast float %575, %569
  %577 = fsub fast float -0.000000e+00, %576
  %578 = fmul fast float %568, %575
  %579 = select i1 %574, float %577, float 1.000000e+00
  %580 = select i1 %574, float %578, float 0.000000e+00
  %581 = fmul fast float %580, %570
  %582 = fmul fast float %579, %570
  %583 = fmul fast float %580, %568
  %584 = fmul fast float %579, %569
  %585 = fsub fast float %583, %584
  %586 = call float @dx.op.unary.f32(i32 24, float %563)  ; Sqrt(value)
  %587 = fmul fast float %557, 0x401921FB60000000
  %588 = call float @dx.op.unary.f32(i32 12, float %587)  ; Cos(value)
  %589 = fmul fast float %588, %586
  %590 = call float @dx.op.unary.f32(i32 13, float %587)  ; Sin(value)
  %591 = fadd fast float %570, 1.000000e+00
  %592 = fmul fast float %591, 5.000000e-01
  %593 = fsub fast float 1.000000e+00, %592
  %594 = fmul fast float %589, %589
  %595 = fsub fast float 1.000000e+00, %594
  %596 = call float @dx.op.unary.f32(i32 24, float %595)  ; Sqrt(value)
  %597 = fmul fast float %596, %593
  %598 = fmul fast float %592, %586
  %599 = fmul fast float %598, %590
  %600 = fadd fast float %597, %599
  %601 = fmul fast float %579, %589
  %602 = fmul fast float %580, %589
  %603 = fmul fast float %581, %600
  %604 = fmul fast float %582, %600
  %605 = fmul fast float %600, %585
  %606 = fsub fast float %601, %603
  %607 = fadd fast float %604, %602
  %608 = fmul fast float %600, %600
  %609 = fsub fast float %595, %608
  %610 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %609)  ; FMax(a,b)
  %611 = call float @dx.op.unary.f32(i32 24, float %610)  ; Sqrt(value)
  %612 = fmul fast float %611, %568
  %613 = fmul fast float %611, %569
  %614 = fmul fast float %611, %570
  %615 = fadd fast float %606, %612
  %616 = fadd fast float %607, %613
  %617 = fadd fast float %605, %614
  %618 = fmul fast float %615, %548
  %619 = fmul fast float %616, %548
  %620 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %617)  ; FMax(a,b)
  %621 = call float @dx.op.dot3.f32(i32 55, float %618, float %619, float %620, float %618, float %619, float %620)  ; Dot3(ax,ay,az,bx,by,bz)
  %622 = call float @dx.op.unary.f32(i32 25, float %621)  ; Rsqrt(value)
  %623 = fmul fast float %618, %622
  %624 = fmul fast float %619, %622
  %625 = fmul fast float %622, %620
  %626 = fmul fast float %623, %518
  %627 = fmul fast float %623, %519
  %628 = fmul fast float %623, %521
  %629 = fmul fast float %624, %514
  %630 = fmul fast float %624, %524
  %631 = fmul fast float %624, %525
  %632 = fmul fast float %625, %216
  %633 = fmul fast float %625, %217
  %634 = fmul fast float %625, %218
  %635 = fadd fast float %629, %632
  %636 = fadd fast float %635, %626
  %637 = fadd fast float %630, %633
  %638 = fadd fast float %637, %627
  %639 = fadd fast float %631, %634
  %640 = fadd fast float %639, %628
  %641 = call float @dx.op.dot3.f32(i32 55, float %290, float %291, float %292, float %636, float %638, float %640)  ; Dot3(ax,ay,az,bx,by,bz)
  %642 = fmul fast float %641, 2.000000e+00
  %643 = fmul fast float %636, %642
  %644 = fmul fast float %638, %642
  %645 = fmul fast float %640, %642
  %646 = fsub fast float %290, %643
  %647 = fsub fast float %291, %644
  %648 = fsub fast float %292, %645
  %649 = call float @dx.op.dot3.f32(i32 55, float %646, float %647, float %648, float %646, float %647, float %648)  ; Dot3(ax,ay,az,bx,by,bz)
  %650 = call float @dx.op.unary.f32(i32 25, float %649)  ; Rsqrt(value)
  %651 = fmul fast float %646, %650
  %652 = fmul fast float %647, %650
  %653 = fmul fast float %648, %650
  %654 = fmul fast float %651, %58
  %655 = fmul fast float %652, %58
  %656 = fmul fast float %653, %58
  %657 = fadd fast float %654, %264
  %658 = fadd fast float %655, %265
  %659 = fadd fast float %656, %266
  %660 = fmul fast float %657, %276
  %661 = call float @dx.op.tertiary.f32(i32 46, float %658, float %277, float %660)  ; FMad(a,b,c)
  %662 = call float @dx.op.tertiary.f32(i32 46, float %659, float %278, float %661)  ; FMad(a,b,c)
  %663 = fadd fast float %662, %279
  %664 = fmul fast float %657, %281
  %665 = call float @dx.op.tertiary.f32(i32 46, float %658, float %282, float %664)  ; FMad(a,b,c)
  %666 = call float @dx.op.tertiary.f32(i32 46, float %659, float %283, float %665)  ; FMad(a,b,c)
  %667 = fadd fast float %666, %284
  %668 = fmul fast float %657, %286
  %669 = call float @dx.op.tertiary.f32(i32 46, float %658, float %287, float %668)  ; FMad(a,b,c)
  %670 = call float @dx.op.tertiary.f32(i32 46, float %659, float %288, float %669)  ; FMad(a,b,c)
  %671 = fadd fast float %670, %289
  %672 = fdiv fast float 1.000000e+00, %671
  %673 = fmul fast float %663, 5.000000e-01
  %674 = fmul fast float %667, -5.000000e-01
  %675 = fmul fast float %673, %672
  %676 = fmul fast float %674, %672
  %677 = fadd fast float %675, 5.000000e-01
  %678 = fsub fast float %327, %677
  %679 = fmul fast float %359, %678
  %680 = fsub fast float %677, %327
  %681 = fadd fast float %680, %679
  %682 = fadd fast float %364, %676
  %683 = fsub fast float %672, %326
  %684 = call float @dx.op.dot2.f32(i32 54, float %681, float %682, float %681, float %682)  ; Dot2(ax,ay,bx,by)
  %685 = call float @dx.op.binary.f32(i32 35, float %684, float 0x3EB0C6F7A0000000)  ; FMax(a,b)
  %686 = fmul fast float %369, %685
  %687 = call float @dx.op.unary.f32(i32 25, float %686)  ; Rsqrt(value)
  %688 = fmul fast float %687, %681
  %689 = fmul fast float %687, %682
  %690 = fadd fast float %688, %327
  %691 = fadd fast float %689, %328
  %692 = fmul fast float %681, %22
  %693 = fmul fast float %682, %23
  %694 = fmul fast float %692, %692
  %695 = fmul fast float %693, %693
  %696 = fadd fast float %694, %695
  %697 = call float @dx.op.unary.f32(i32 24, float %696)  ; Sqrt(value)
  %698 = fdiv fast float 1.000000e+00, %697
  %699 = fmul fast float %697, 3.125000e-02
  br i1 %384, label %700, label %756

; <label>:700                                     ; preds = %537
  br label %701

; <label>:701                                     ; preds = %752, %700
  %702 = phi float [ %719, %752 ], [ %214, %700 ]
  %703 = phi float [ %702, %752 ], [ %214, %700 ]
  %704 = phi i32 [ %753, %752 ], [ 0, %700 ]
  %705 = sitofp i32 %704 to float
  %706 = fadd fast float %38, 5.000000e-01
  %707 = call float @dx.op.unary.f32(i32 22, float %706)  ; Frc(value)
  %708 = fadd fast float %705, %707
  %709 = sitofp i32 %317 to float
  %710 = fdiv fast float %708, %709
  %711 = fmul fast float %710, %710
  %712 = call float @dx.op.binary.f32(i32 36, float %711, float 0x3FEFFF8020000000)  ; FMin(a,b)
  %713 = fmul fast float %712, %681
  %714 = fmul fast float %712, %682
  %715 = fmul fast float %712, %683
  %716 = fadd fast float %713, %690
  %717 = fadd fast float %714, %691
  %718 = fadd fast float %715, %326
  %719 = fdiv fast float 1.000000e+00, %718
  %720 = icmp ne i32 %319, 0
  %721 = fmul fast float %699, %712
  %722 = call float @dx.op.binary.f32(i32 36, float %721, float %320)  ; FMin(a,b)
  %723 = select i1 %720, float %722, float 0.000000e+00
  %724 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %9, float %716, float %717, float undef, float undef, i32 0, i32 0, i32 undef, float %723)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %725 = extractvalue %dx.types.ResRet.f32 %724, 0
  %726 = fcmp fast ogt float %725, -1.000000e+00
  %727 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %728 = extractvalue %dx.types.CBufRet.f32 %727, 1
  %729 = select i1 %726, float %728, float 1.000000e+00
  %730 = fadd fast float %725, 1.000000e+00
  %731 = fmul fast float %729, %730
  %732 = call float @dx.op.unary.f32(i32 6, float %731)  ; FAbs(value)
  %733 = fmul fast float %732, 0x3FF0083120000000
  %734 = fsub fast float %719, %733
  %735 = fcmp fast ogt float %734, 0.000000e+00
  %736 = fsub fast float %719, %703
  %737 = call float @dx.op.binary.f32(i32 35, float %736, float 4.800000e+01)  ; FMax(a,b)
  %738 = fcmp fast olt float %734, %737
  %739 = fcmp uge float %725, -1.000000e+00
  %740 = or i1 %50, %739
  %741 = call float @dx.op.unary.f32(i32 7, float %716)  ; Saturate(value)
  %742 = call float @dx.op.unary.f32(i32 7, float %717)  ; Saturate(value)
  %743 = fcmp fast oeq float %716, %741
  %744 = fcmp fast oeq float %717, %742
  %745 = and i1 %743, %744
  %746 = and i1 %740, %745
  %747 = and i1 %735, %738
  %748 = and i1 %747, %746
  %749 = fcmp fast ogt float %712, %698
  %750 = and i1 %749, %748
  %751 = zext i1 %750 to i32
  br i1 %750, label %755, label %752, !dx.controlflow.hints !33

; <label>:752                                     ; preds = %701
  %753 = add nuw nsw i32 %704, 1
  %754 = icmp slt i32 %704, %317
  br i1 %754, label %701, label %755

; <label>:755                                     ; preds = %752, %701
  br label %756

; <label>:756                                     ; preds = %755, %537
  %757 = phi i32 [ 0, %537 ], [ %751, %755 ]
  %758 = phi float [ %214, %537 ], [ %732, %755 ]
  %759 = phi float [ %214, %537 ], [ %719, %755 ]
  %760 = fdiv fast float 1.000000e+00, %759
  %761 = fsub fast float %760, %326
  %762 = fdiv fast float %761, %683
  %763 = call float @dx.op.unary.f32(i32 7, float %762)  ; Saturate(value)
  %764 = fmul fast float %763, %681
  %765 = fmul fast float %763, %682
  %766 = fcmp fast oge float %758, %58
  %767 = icmp ne i32 %757, 0
  %768 = or i1 %767, %766
  %769 = fadd fast float %690, -5.000000e-01
  %770 = fadd fast float %769, %764
  %771 = fadd fast float %691, -5.000000e-01
  %772 = fadd fast float %771, %765
  %773 = call float @dx.op.unary.f32(i32 6, float %770)  ; FAbs(value)
  %774 = call float @dx.op.unary.f32(i32 6, float %772)  ; FAbs(value)
  %775 = fadd fast float %773, -5.000000e-01
  %776 = fadd fast float %774, -5.000000e-01
  %777 = call float @dx.op.binary.f32(i32 35, float %775, float %776)  ; FMax(a,b)
  %778 = fcmp fast olt float %777, 0.000000e+00
  %779 = and i1 %768, %778
  %780 = select i1 %779, float 1.000000e+00, float 0.000000e+00
  %781 = call float @dx.op.dot3.f32(i32 55, float %651, float %652, float %653, float %303, float %304, float %305)  ; Dot3(ax,ay,az,bx,by,bz)
  %782 = call float @dx.op.unary.f32(i32 7, float %781)  ; Saturate(value)
  %783 = fmul fast float %782, %782
  %784 = fsub fast float 1.000000e+00, %549
  %785 = fmul fast float %528, %784
  %786 = fadd fast float %785, %549
  %787 = bitcast float %786 to i32
  %788 = ashr i32 %787, 1
  %789 = add nsw i32 %788, 532487669
  %790 = bitcast i32 %789 to float
  %791 = fadd fast float %790, %527
  %792 = fmul fast float %783, %549
  %793 = fsub fast float 1.000000e+00, %783
  %794 = fadd fast float %793, %792
  %795 = fmul fast float %794, %794
  %796 = fdiv fast float %549, %795
  %797 = fdiv fast float 1.000000e+00, %796
  %798 = fmul fast float %797, %791
  %799 = fmul fast float %783, 0x3FEFFD6940000000
  %800 = fsub fast float 1.000000e+00, %799
  %801 = fmul fast float %800, %800
  %802 = fdiv fast float 0x3F34B66D80000000, %801
  %803 = fmul fast float %802, %536
  %804 = fmul fast float %780, %763
  %805 = fcmp fast une float %804, 0.000000e+00
  %806 = fmul fast float %803, %798
  %807 = select i1 %805, float %806, float 0.000000e+00
  %808 = fmul fast float %807, %763
  %809 = fadd fast float %808, %540
  store float %809, float* %308, align 4, !tbaa !34
  %810 = fadd fast float %807, %543
  %811 = fmul fast float %528, 0x3FEFD69320000000
  %812 = fadd fast float %811, 0x3F74B66D80000000
  %813 = bitcast float %812 to i32
  %814 = ashr i32 %813, 1
  %815 = add nsw i32 %814, 532487669
  %816 = bitcast i32 %815 to float
  %817 = fadd fast float %816, %527
  %818 = fdiv fast float 1.000000e+00, %817
  %819 = fmul fast float %783, 0x3FEFD69320000000
  %820 = fsub fast float 1.000000e+00, %819
  %821 = fmul fast float %820, %820
  %822 = fdiv fast float 0x3F74B66D80000000, %821
  %823 = fmul fast float %818, %798
  %824 = fmul fast float %823, %822
  %825 = select i1 %805, float %824, float 0.000000e+00
  %826 = fmul fast float %825, %763
  %827 = fadd fast float %826, %539
  store float %827, float* %309, align 4, !tbaa !34
  %828 = fadd fast float %825, %542
  %829 = fmul fast float %528, 0x3FEF2E48E0000000
  %830 = fadd fast float %829, 0x3F9A36E280000000
  %831 = bitcast float %830 to i32
  %832 = ashr i32 %831, 1
  %833 = add nsw i32 %832, 532487669
  %834 = bitcast i32 %833 to float
  %835 = fadd fast float %834, %527
  %836 = fdiv fast float 1.000000e+00, %835
  %837 = fmul fast float %783, 0x3FEF2E48E0000000
  %838 = fsub fast float 1.000000e+00, %837
  %839 = fmul fast float %838, %838
  %840 = fdiv fast float 0x3F9A36E280000000, %839
  %841 = fmul fast float %836, %798
  %842 = fmul fast float %841, %840
  %843 = select i1 %805, float %842, float 0.000000e+00
  %844 = fmul fast float %843, %763
  %845 = fadd fast float %844, %538
  store float %845, float* %310, align 4, !tbaa !34
  %846 = fadd fast float %843, %541
  %847 = icmp eq i32 %550, 4
  br i1 %847, label %848, label %537

; <label>:848                                     ; preds = %756
  %849 = fcmp fast ogt float %810, 0.000000e+00
  %850 = fdiv fast float %809, %810
  %851 = select i1 %849, float %850, float 0x7FF0000000000000
  store float %851, float* %308, align 4, !tbaa !34
  %852 = fcmp fast ogt float %828, 0.000000e+00
  %853 = fdiv fast float %827, %828
  %854 = select i1 %852, float %853, float 0x7FF0000000000000
  store float %854, float* %309, align 4, !tbaa !34
  %855 = fcmp fast ogt float %846, 0.000000e+00
  %856 = fdiv fast float %845, %846
  %857 = select i1 %855, float %856, float 0x7FF0000000000000
  store float %857, float* %310, align 4, !tbaa !34
  %858 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %11, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %859 = extractvalue %dx.types.CBufRet.i32 %858, 3
  %860 = and i32 %859, 3
  %861 = icmp ne i32 %860, 0
  %862 = and i32 %859, 4
  %863 = icmp ne i32 %862, 0
  %864 = and i1 %861, %863
  br i1 %864, label %865, label %870, !dx.controlflow.hints !36

; <label>:865                                     ; preds = %848
  %866 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %8, float %43, float %45, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %867 = extractvalue %dx.types.ResRet.f32 %866, 0
  %868 = fcmp fast ole float %867, 0.000000e+00
  %869 = zext i1 %868 to i32
  br label %870

; <label>:870                                     ; preds = %865, %848
  %871 = phi i32 [ %869, %865 ], [ 0, %848 ]
  br label %872

; <label>:872                                     ; preds = %917, %870
  %873 = phi float [ %508, %870 ], [ %919, %917 ]
  %874 = phi i32 [ 0, %870 ], [ %915, %917 ]
  %875 = fcmp fast une float %873, 0x7FF0000000000000
  br i1 %875, label %876, label %913, !dx.controlflow.hints !37

; <label>:876                                     ; preds = %872
  %877 = fmul fast float %873, %363
  %878 = fmul fast float %873, %365
  %879 = fadd fast float %877, %327
  %880 = fadd fast float %878, %328
  %881 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %11, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %882 = extractvalue %dx.types.CBufRet.i32 %881, 3
  %883 = and i32 %882, 3
  %884 = icmp ne i32 %883, 0
  %885 = and i32 %882, 4
  %886 = icmp ne i32 %885, 0
  %887 = and i1 %884, %886
  %888 = icmp ne i32 %871, 0
  %889 = or i1 %50, %888
  %890 = and i1 %889, %887
  br i1 %890, label %891, label %896, !dx.controlflow.hints !38

; <label>:891                                     ; preds = %876
  %892 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %8, float %879, float %880, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %893 = extractvalue %dx.types.ResRet.f32 %892, 0
  %894 = fcmp fast ogt float %893, 0.000000e+00
  %895 = zext i1 %894 to i32
  br label %896

; <label>:896                                     ; preds = %891, %876
  %897 = phi i32 [ %895, %891 ], [ 0, %876 ]
  %898 = call float @dx.op.unary.f32(i32 6, float %873)  ; FAbs(value)
  %899 = fsub fast float 1.000000e+00, %898
  %900 = icmp ne i32 %897, 0
  %901 = select i1 %900, float 0xFFF0000000000000, float %899
  %902 = fcmp fast une float %901, 0xFFF0000000000000
  %903 = fcmp fast une float %901, 0x7FF0000000000000
  %904 = and i1 %902, %903
  %905 = and i1 %50, %904
  br i1 %905, label %906, label %913, !dx.controlflow.hints !39

; <label>:906                                     ; preds = %896
  %907 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %9, float %879, float %880, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %908 = extractvalue %dx.types.ResRet.f32 %907, 0
  %909 = fcmp fast olt float %908, -1.000000e+00
  %910 = call float @dx.op.unary.f32(i32 6, float %901)  ; FAbs(value)
  %911 = fsub fast float -0.000000e+00, %910
  %912 = select i1 %909, float %911, float %901
  br label %913

; <label>:913                                     ; preds = %906, %896, %872
  %914 = phi float [ %912, %906 ], [ %901, %896 ], [ 0x7FF0000000000000, %872 ]
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %12, i32 %13, i32 %874, float %914, float %914, float %914, float %914, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %915 = add nuw nsw i32 %874, 1
  %916 = icmp eq i32 %915, 4
  br i1 %916, label %921, label %917

; <label>:917                                     ; preds = %913
  %918 = getelementptr [4 x float], [4 x float]* %15, i32 0, i32 %915
  %919 = load float, float* %918, align 4, !tbaa !34
  br label %872

; <label>:920                                     ; preds = %213
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %12, i32 %13, i32 0, float 0xFFF0000000000000, float 0xFFF0000000000000, float 0xFFF0000000000000, float 0xFFF0000000000000, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %12, i32 %13, i32 1, float 0xFFF0000000000000, float 0xFFF0000000000000, float 0xFFF0000000000000, float 0xFFF0000000000000, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %12, i32 %13, i32 2, float 0xFFF0000000000000, float 0xFFF0000000000000, float 0xFFF0000000000000, float 0xFFF0000000000000, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %12, i32 %13, i32 3, float 0xFFF0000000000000, float 0xFFF0000000000000, float 0xFFF0000000000000, float 0xFFF0000000000000, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %922

; <label>:921                                     ; preds = %913
  br label %922

; <label>:922                                     ; preds = %921, %920
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

; Function Attrs: nounwind readnone
declare i32 @dx.op.tertiary.i32(i32, i32, i32, i32) #0

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
!dx.entryPoints = !{!22}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !14, !16, !19}
!5 = !{!6, !8, !9, !11, !12, !13}
!6 = !{i32 0, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 5, i32 1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, %"class.Texture2D<float>"* undef, !"", i32 0, i32 0, i32 1, i32 2, i32 0, !7}
!9 = !{i32 2, %"class.Texture2D<unsigned int>"* undef, !"", i32 0, i32 2, i32 1, i32 2, i32 0, !10}
!10 = !{i32 0, i32 5}
!11 = !{i32 3, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 9, i32 1, i32 11, i32 0, null}
!12 = !{i32 4, %"class.Texture2DMS<vector<unsigned int, 4>, 0>"* undef, !"", i32 0, i32 1, i32 1, i32 3, i32 0, !10}
!13 = !{i32 5, %"class.Texture2D<float>"* undef, !"", i32 0, i32 3, i32 1, i32 2, i32 0, !7}
!14 = !{!15}
!15 = !{i32 0, %"class.RWTexture2DArray<float>"* undef, !"", i32 0, i32 0, i32 1, i32 7, i1 false, i1 false, i1 false, !7}
!16 = !{!17, !18}
!17 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!18 = !{i32 1, %ConstantBufferSSR0* undef, !"", i32 0, i32 0, i32 1, i32 288, null}
!19 = !{!20, !21}
!20 = !{i32 0, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!21 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!22 = !{void ()* @cs_ssr_trace, !"cs_ssr_trace", null, !4, !23}
!23 = !{i32 0, i64 272, i32 4, !24}
!24 = !{i32 8, i32 8, i32 1}
!25 = !{!26, !26, i64 0}
!26 = !{!"int", !27, i64 0}
!27 = !{!"omnipotent char", !28, i64 0}
!28 = !{!"Simple C/C++ TBAA"}
!29 = distinct !{!29, !"dx.controlflow.hints", i32 2}
!30 = distinct !{!30, !"dx.controlflow.hints", i32 2}
!31 = distinct !{!31, !"dx.controlflow.hints", i32 2}
!32 = distinct !{!32, !"dx.controlflow.hints", i32 2}
!33 = distinct !{!33, !"dx.controlflow.hints", i32 2}
!34 = !{!35, !35, i64 0}
!35 = !{!"float", !27, i64 0}
!36 = distinct !{!36, !"dx.controlflow.hints", i32 2}
!37 = distinct !{!37, !"dx.controlflow.hints", i32 2}
!38 = distinct !{!38, !"dx.controlflow.hints", i32 2}
!39 = distinct !{!39, !"dx.controlflow.hints", i32 2}

