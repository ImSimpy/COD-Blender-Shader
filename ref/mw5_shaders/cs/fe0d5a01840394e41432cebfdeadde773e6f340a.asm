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
; shader hash: afb46b276aab8aad7a80c97126a66556
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
;                                   texture     u32          2d      T4             t1     1
;                                   texture     f32          2d      T5             t3     1
;                                       UAV     f32     2darray      U0             u0     1
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.CBufRet.f32 = type { float, float, float, float }
%dx.types.ResRet.f32 = type { float, float, float, float, i32 }
%dx.types.ResRet.i32 = type { i32, i32, i32, i32, i32 }
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
  %14 = alloca [4 x float], align 4
  %15 = uitofp i32 %12 to float
  %16 = uitofp i32 %13 to float
  %17 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %10, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %18 = extractvalue %dx.types.CBufRet.f32 %17, 2
  %19 = extractvalue %dx.types.CBufRet.f32 %17, 3
  %20 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %10, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %21 = extractvalue %dx.types.CBufRet.f32 %20, 0
  %22 = extractvalue %dx.types.CBufRet.f32 %20, 1
  %23 = extractvalue %dx.types.CBufRet.f32 %20, 2
  %24 = extractvalue %dx.types.CBufRet.f32 %20, 3
  %25 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %26 = extractvalue %dx.types.CBufRet.f32 %25, 2
  %27 = fmul fast float %26, 0x3FE3C6EF40000000
  %28 = frem fast float %15, 2.560000e+02
  %29 = frem fast float %16, 2.560000e+02
  %30 = fptoui float %28 to i32
  %31 = fptoui float %29 to i32
  %32 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %7, i32 0, i32 %30, i32 %31, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %33 = extractvalue %dx.types.ResRet.f32 %32, 0
  %34 = extractvalue %dx.types.ResRet.f32 %32, 1
  %35 = fadd fast float %33, %27
  %36 = fadd fast float %34, %27
  %37 = call float @dx.op.unary.f32(i32 22, float %35)  ; Frc(value)
  %38 = call float @dx.op.unary.f32(i32 22, float %36)  ; Frc(value)
  %39 = fmul fast float %37, 5.000000e-01
  %40 = fmul fast float %38, 5.000000e-01
  %41 = fadd fast float %39, %15
  %42 = fmul fast float %41, %18
  %43 = fadd fast float %40, %16
  %44 = fmul fast float %43, %19
  %45 = fmul fast float %42, %21
  %46 = fmul fast float %44, %22
  %47 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %9, float %42, float %44, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %48 = extractvalue %dx.types.ResRet.f32 %47, 0
  %49 = fcmp fast olt float %48, -1.000000e+00
  %50 = fcmp fast ogt float %48, -1.000000e+00
  %51 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %52 = extractvalue %dx.types.CBufRet.f32 %51, 1
  %53 = select i1 %50, float %52, float 1.000000e+00
  %54 = fadd fast float %48, 1.000000e+00
  %55 = fmul fast float %53, %54
  %56 = call float @dx.op.unary.f32(i32 6, float %55)  ; FAbs(value)
  %57 = extractvalue %dx.types.CBufRet.f32 %51, 3
  %58 = fcmp ult float %56, %57
  %59 = zext i1 %58 to i32
  %60 = fptoui float %45 to i32
  %61 = fptoui float %46 to i32
  %62 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %3, i32 0, i32 %60, i32 %61, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
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
  %91 = shl i32 %12, 3
  %92 = shl i32 %13, 3
  %93 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %11, i32 358)  ; CBufferLoadLegacy(handle,regIndex)
  %94 = extractvalue %dx.types.CBufRet.i32 %93, 1
  %95 = extractvalue %dx.types.CBufRet.i32 %93, 0
  %96 = and i32 %95, 31
  %97 = lshr i32 %91, %96
  %98 = call i32 @dx.op.binary.i32(i32 40, i32 %97, i32 %94)  ; UMin(a,b)
  %99 = extractvalue %dx.types.CBufRet.i32 %93, 2
  %100 = lshr i32 %92, %96
  %101 = call i32 @dx.op.binary.i32(i32 40, i32 %100, i32 %99)  ; UMin(a,b)
  %102 = call i32 @dx.op.tertiary.i32(i32 49, i32 %101, i32 %94, i32 %98)  ; UMad(a,b,c)
  %103 = lshr i32 %102, 5
  %104 = and i32 %102, 31
  %105 = shl i32 1, %104
  %106 = shl nuw nsw i32 %103, 2
  %107 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %106, i32 undef)  ; BufferLoad(srv,index,wot)
  %108 = extractvalue %dx.types.ResRet.i32 %107, 0
  %109 = and i32 %108, %105
  %110 = icmp eq i32 %109, 0
  %111 = fmul fast float %42, 2.000000e+00
  %112 = fmul fast float %44, 2.000000e+00
  %113 = fsub fast float 1.000000e+00, %111
  %114 = fsub fast float 1.000000e+00, %112
  br i1 %110, label %195, label %115, !dx.controlflow.hints !25

; <label>:115                                     ; preds = %0
  %116 = fmul fast float %45, 5.000000e-01
  %117 = fmul fast float %46, 5.000000e-01
  %118 = fptosi float %116 to i32
  %119 = fptosi float %117 to i32
  %120 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %5, i32 0, i32 %118, i32 %119, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %121 = extractvalue %dx.types.ResRet.i32 %120, 0
  %122 = lshr i32 %121, 8
  %123 = and i32 %121, 255
  %124 = and i32 %122, 255
  %125 = uitofp i32 %123 to float
  %126 = uitofp i32 %124 to float
  %127 = fmul fast float %125, 0x3F80101020000000
  %128 = fmul fast float %126, 0x3F80101020000000
  %129 = fadd fast float %127, -1.000000e+00
  %130 = fadd fast float %128, -1.000000e+00
  %131 = call float @dx.op.unary.f32(i32 6, float %129)  ; FAbs(value)
  %132 = fsub fast float 1.000000e+00, %131
  %133 = call float @dx.op.unary.f32(i32 6, float %130)  ; FAbs(value)
  %134 = fsub fast float %132, %133
  %135 = fsub fast float -0.000000e+00, %134
  %136 = call float @dx.op.binary.f32(i32 35, float %135, float 0.000000e+00)  ; FMax(a,b)
  %137 = fcmp fast ogt float %129, 0.000000e+00
  %138 = fsub fast float -0.000000e+00, %136
  %139 = select i1 %137, float %138, float %136
  %140 = fadd fast float %139, %129
  %141 = fcmp fast ogt float %130, 0.000000e+00
  %142 = select i1 %141, float %138, float %136
  %143 = fadd fast float %142, %130
  %144 = call float @dx.op.dot3.f32(i32 55, float %140, float %143, float %134, float %140, float %143, float %134)  ; Dot3(ax,ay,az,bx,by,bz)
  %145 = call float @dx.op.unary.f32(i32 25, float %144)  ; Rsqrt(value)
  %146 = fmul fast float %140, %145
  %147 = fmul fast float %143, %145
  %148 = fmul fast float %145, %134
  %149 = icmp ult i32 %121, -262144
  %150 = lshr i32 %121, 18
  %151 = uitofp i32 %150 to float
  %152 = fmul fast float %151, 0x3F4C00EBA0000000
  %153 = call float @dx.op.unary.f32(i32 21, float %152)  ; Exp(value)
  %154 = fadd fast float %153, -1.000000e+00
  %155 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %156 = extractvalue %dx.types.CBufRet.f32 %155, 0
  %157 = extractvalue %dx.types.CBufRet.f32 %155, 1
  %158 = extractvalue %dx.types.CBufRet.f32 %155, 2
  %159 = fmul fast float %156, %113
  %160 = fmul fast float %157, %113
  %161 = fmul fast float %158, %113
  %162 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %163 = extractvalue %dx.types.CBufRet.f32 %162, 0
  %164 = extractvalue %dx.types.CBufRet.f32 %162, 1
  %165 = extractvalue %dx.types.CBufRet.f32 %162, 2
  %166 = fmul fast float %163, %114
  %167 = fmul fast float %164, %114
  %168 = fmul fast float %165, %114
  %169 = fadd fast float %166, %159
  %170 = fadd fast float %167, %160
  %171 = fadd fast float %168, %161
  %172 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %173 = extractvalue %dx.types.CBufRet.f32 %172, 0
  %174 = extractvalue %dx.types.CBufRet.f32 %172, 1
  %175 = extractvalue %dx.types.CBufRet.f32 %172, 2
  %176 = fadd fast float %169, %173
  %177 = fadd fast float %170, %174
  %178 = fadd fast float %171, %175
  %179 = fmul fast float %176, %154
  %180 = fmul fast float %177, %154
  %181 = fmul fast float %178, %154
  %182 = call float @dx.op.dot3.f32(i32 55, float %179, float %180, float %181, float %179, float %180, float %181)  ; Dot3(ax,ay,az,bx,by,bz)
  %183 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 357)  ; CBufferLoadLegacy(handle,regIndex)
  %184 = extractvalue %dx.types.CBufRet.f32 %183, 3
  %185 = fmul fast float %184, 0x3FE47AE140000000
  %186 = fcmp fast ogt float %182, %185
  %187 = and i1 %149, %186
  %188 = fcmp fast olt float %154, %56
  %189 = and i1 %188, %187
  %190 = select i1 %189, float %154, float %56
  %191 = select i1 %189, i32 1, i32 %59
  %192 = select i1 %189, float %146, float %88
  %193 = select i1 %189, float %147, float %89
  %194 = select i1 %189, float %148, float %90
  br label %195

; <label>:195                                     ; preds = %115, %0
  %196 = phi float [ %190, %115 ], [ %56, %0 ]
  %197 = phi i32 [ %191, %115 ], [ %59, %0 ]
  %198 = phi float [ %192, %115 ], [ %88, %0 ]
  %199 = phi float [ %193, %115 ], [ %89, %0 ]
  %200 = phi float [ %194, %115 ], [ %90, %0 ]
  %201 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %202 = extractvalue %dx.types.CBufRet.f32 %201, 0
  %203 = extractvalue %dx.types.CBufRet.f32 %201, 1
  %204 = extractvalue %dx.types.CBufRet.f32 %201, 2
  %205 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %206 = extractvalue %dx.types.CBufRet.f32 %205, 0
  %207 = extractvalue %dx.types.CBufRet.f32 %205, 1
  %208 = extractvalue %dx.types.CBufRet.f32 %205, 2
  %209 = select i1 %49, float %202, float %206
  %210 = select i1 %49, float %203, float %207
  %211 = select i1 %49, float %204, float %208
  %212 = fmul fast float %209, %113
  %213 = fmul fast float %210, %113
  %214 = fmul fast float %211, %113
  %215 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %216 = extractvalue %dx.types.CBufRet.f32 %215, 0
  %217 = extractvalue %dx.types.CBufRet.f32 %215, 1
  %218 = extractvalue %dx.types.CBufRet.f32 %215, 2
  %219 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %220 = extractvalue %dx.types.CBufRet.f32 %219, 0
  %221 = extractvalue %dx.types.CBufRet.f32 %219, 1
  %222 = extractvalue %dx.types.CBufRet.f32 %219, 2
  %223 = select i1 %49, float %216, float %220
  %224 = select i1 %49, float %217, float %221
  %225 = select i1 %49, float %218, float %222
  %226 = fmul fast float %223, %114
  %227 = fmul fast float %224, %114
  %228 = fmul fast float %225, %114
  %229 = fadd fast float %226, %212
  %230 = fadd fast float %227, %213
  %231 = fadd fast float %228, %214
  %232 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %233 = extractvalue %dx.types.CBufRet.f32 %232, 0
  %234 = extractvalue %dx.types.CBufRet.f32 %232, 1
  %235 = extractvalue %dx.types.CBufRet.f32 %232, 2
  %236 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %237 = extractvalue %dx.types.CBufRet.f32 %236, 0
  %238 = extractvalue %dx.types.CBufRet.f32 %236, 1
  %239 = extractvalue %dx.types.CBufRet.f32 %236, 2
  %240 = select i1 %49, float %233, float %237
  %241 = select i1 %49, float %234, float %238
  %242 = select i1 %49, float %235, float %239
  %243 = fadd fast float %229, %240
  %244 = fadd fast float %230, %241
  %245 = fadd fast float %231, %242
  %246 = fmul fast float %243, %196
  %247 = fmul fast float %244, %196
  %248 = fmul fast float %245, %196
  %249 = fsub fast float -0.000000e+00, %246
  %250 = fsub fast float -0.000000e+00, %247
  %251 = fsub fast float -0.000000e+00, %248
  %252 = call float @dx.op.dot3.f32(i32 55, float %249, float %250, float %251, float %249, float %250, float %251)  ; Dot3(ax,ay,az,bx,by,bz)
  %253 = call float @dx.op.unary.f32(i32 25, float %252)  ; Rsqrt(value)
  %254 = fmul fast float %253, %249
  %255 = fmul fast float %253, %250
  %256 = fmul fast float %253, %251
  %257 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 103)  ; CBufferLoadLegacy(handle,regIndex)
  %258 = extractvalue %dx.types.CBufRet.f32 %257, 0
  %259 = extractvalue %dx.types.CBufRet.f32 %257, 1
  %260 = extractvalue %dx.types.CBufRet.f32 %257, 2
  %261 = extractvalue %dx.types.CBufRet.f32 %257, 3
  %262 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 104)  ; CBufferLoadLegacy(handle,regIndex)
  %263 = extractvalue %dx.types.CBufRet.f32 %262, 0
  %264 = extractvalue %dx.types.CBufRet.f32 %262, 1
  %265 = extractvalue %dx.types.CBufRet.f32 %262, 2
  %266 = extractvalue %dx.types.CBufRet.f32 %262, 3
  %267 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 106)  ; CBufferLoadLegacy(handle,regIndex)
  %268 = extractvalue %dx.types.CBufRet.f32 %267, 0
  %269 = extractvalue %dx.types.CBufRet.f32 %267, 1
  %270 = extractvalue %dx.types.CBufRet.f32 %267, 2
  %271 = extractvalue %dx.types.CBufRet.f32 %267, 3
  %272 = fsub fast float -0.000000e+00, %254
  %273 = fsub fast float -0.000000e+00, %255
  %274 = fsub fast float -0.000000e+00, %256
  %275 = call float @dx.op.dot3.f32(i32 55, float %272, float %273, float %274, float %198, float %199, float %200)  ; Dot3(ax,ay,az,bx,by,bz)
  %276 = fmul fast float %275, 2.000000e+00
  %277 = fmul fast float %276, %198
  %278 = fmul fast float %276, %199
  %279 = fmul fast float %276, %200
  %280 = fsub fast float %272, %277
  %281 = fsub fast float %273, %278
  %282 = fsub fast float %274, %279
  %283 = call float @dx.op.dot3.f32(i32 55, float %280, float %281, float %282, float %280, float %281, float %282)  ; Dot3(ax,ay,az,bx,by,bz)
  %284 = call float @dx.op.unary.f32(i32 25, float %283)  ; Rsqrt(value)
  %285 = fmul fast float %280, %284
  %286 = fmul fast float %281, %284
  %287 = fmul fast float %282, %284
  %288 = call float @dx.op.dot3.f32(i32 55, float %285, float %286, float %287, float %268, float %269, float %270)  ; Dot3(ax,ay,az,bx,by,bz)
  %289 = getelementptr inbounds [4 x float], [4 x float]* %14, i32 0, i32 0
  store float 0.000000e+00, float* %289, align 4
  %290 = getelementptr inbounds [4 x float], [4 x float]* %14, i32 0, i32 1
  store float 0.000000e+00, float* %290, align 4
  %291 = getelementptr inbounds [4 x float], [4 x float]* %14, i32 0, i32 2
  store float 0.000000e+00, float* %291, align 4
  %292 = getelementptr inbounds [4 x float], [4 x float]* %14, i32 0, i32 3
  store float 0.000000e+00, float* %292, align 4
  %293 = icmp ne i32 %197, 0
  %294 = fcmp uge float %288, 0.000000e+00
  %295 = and i1 %293, %294
  br i1 %295, label %296, label %904, !dx.controlflow.hints !26

; <label>:296                                     ; preds = %195
  %297 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %298 = extractvalue %dx.types.CBufRet.f32 %297, 3
  %299 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %10, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %300 = extractvalue %dx.types.CBufRet.f32 %299, 0
  %301 = fptosi float %300 to i32
  %302 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %11, i32 24)  ; CBufferLoadLegacy(handle,regIndex)
  %303 = extractvalue %dx.types.CBufRet.i32 %302, 0
  %304 = uitofp i32 %303 to float
  %305 = call float @dx.op.dot3.f32(i32 55, float %198, float %199, float %200, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %306 = call float @dx.op.unary.f32(i32 6, float %305)  ; FAbs(value)
  %307 = fmul fast float %306, 8.000000e+00
  %308 = fadd fast float %307, -6.000000e+00
  %309 = call float @dx.op.unary.f32(i32 7, float %308)  ; Saturate(value)
  %310 = fdiv fast float 1.000000e+00, %196
  %311 = fmul fast float %45, %23
  %312 = fmul fast float %46, %24
  %313 = fmul fast float %298, %285
  %314 = fmul fast float %298, %286
  %315 = fmul fast float %298, %287
  %316 = fadd fast float %313, %246
  %317 = fadd fast float %314, %247
  %318 = fadd fast float %315, %248
  %319 = fmul fast float %316, %258
  %320 = call float @dx.op.tertiary.f32(i32 46, float %317, float %259, float %319)  ; FMad(a,b,c)
  %321 = call float @dx.op.tertiary.f32(i32 46, float %318, float %260, float %320)  ; FMad(a,b,c)
  %322 = fadd fast float %321, %261
  %323 = fmul fast float %316, %263
  %324 = call float @dx.op.tertiary.f32(i32 46, float %317, float %264, float %323)  ; FMad(a,b,c)
  %325 = call float @dx.op.tertiary.f32(i32 46, float %318, float %265, float %324)  ; FMad(a,b,c)
  %326 = fadd fast float %325, %266
  %327 = fmul fast float %316, %268
  %328 = call float @dx.op.tertiary.f32(i32 46, float %317, float %269, float %327)  ; FMad(a,b,c)
  %329 = call float @dx.op.tertiary.f32(i32 46, float %318, float %270, float %328)  ; FMad(a,b,c)
  %330 = fadd fast float %329, %271
  %331 = fdiv fast float 1.000000e+00, %330
  %332 = fmul fast float %322, 5.000000e-01
  %333 = fmul fast float %326, -5.000000e-01
  %334 = fmul fast float %332, %331
  %335 = fmul fast float %333, %331
  %336 = fadd fast float %334, 5.000000e-01
  %337 = fmul fast float %311, 2.000000e+00
  %338 = fadd fast float %337, -1.000000e+00
  %339 = call float @dx.op.unary.f32(i32 6, float %338)  ; FAbs(value)
  %340 = fmul fast float %339, 5.000000e+00
  %341 = fadd fast float %340, -4.000000e+00
  %342 = call float @dx.op.unary.f32(i32 7, float %341)  ; Saturate(value)
  %343 = fmul fast float %342, %309
  %344 = fsub fast float %311, %336
  %345 = fmul fast float %343, %344
  %346 = fsub fast float %336, %311
  %347 = fadd fast float %346, %345
  %348 = fsub fast float 5.000000e-01, %312
  %349 = fadd fast float %348, %335
  %350 = fsub fast float %331, %310
  %351 = call float @dx.op.dot2.f32(i32 54, float %347, float %349, float %347, float %349)  ; Dot2(ax,ay,bx,by)
  %352 = call float @dx.op.binary.f32(i32 35, float %351, float 0x3EB0C6F7A0000000)  ; FMax(a,b)
  %353 = call float @dx.op.dot2.f32(i32 54, float %21, float %22, float %21, float %22)  ; Dot2(ax,ay,bx,by)
  %354 = fmul fast float %353, %352
  %355 = call float @dx.op.unary.f32(i32 25, float %354)  ; Rsqrt(value)
  %356 = fmul fast float %355, %347
  %357 = fmul fast float %355, %349
  %358 = fadd fast float %356, %311
  %359 = fadd fast float %357, %312
  %360 = fmul fast float %347, %21
  %361 = fmul fast float %349, %22
  %362 = fmul fast float %360, %360
  %363 = fmul fast float %361, %361
  %364 = fadd fast float %362, %363
  %365 = call float @dx.op.unary.f32(i32 24, float %364)  ; Sqrt(value)
  %366 = fdiv fast float 1.000000e+00, %365
  %367 = fmul fast float %365, 3.125000e-02
  %368 = icmp sgt i32 %301, -1
  br i1 %368, label %369, label %487

; <label>:369                                     ; preds = %296
  br label %370

; <label>:370                                     ; preds = %483, %369
  %371 = phi float [ %465, %483 ], [ %196, %369 ]
  %372 = phi float [ %371, %483 ], [ %196, %369 ]
  %373 = phi i32 [ %484, %483 ], [ 0, %369 ]
  %374 = sitofp i32 %373 to float
  %375 = fadd fast float %37, 5.000000e-01
  %376 = call float @dx.op.unary.f32(i32 22, float %375)  ; Frc(value)
  %377 = fadd fast float %374, %376
  %378 = sitofp i32 %301 to float
  %379 = fdiv fast float %377, %378
  %380 = fmul fast float %379, %379
  %381 = call float @dx.op.binary.f32(i32 36, float %380, float 0x3FEFFF8020000000)  ; FMin(a,b)
  %382 = fmul fast float %381, %347
  %383 = fmul fast float %381, %349
  %384 = fmul fast float %381, %350
  %385 = fadd fast float %382, %358
  %386 = fadd fast float %383, %359
  %387 = fadd fast float %384, %310
  %388 = fdiv fast float 1.000000e+00, %387
  %389 = icmp ne i32 %303, 0
  %390 = fmul fast float %367, %381
  %391 = call float @dx.op.binary.f32(i32 36, float %390, float %304)  ; FMin(a,b)
  %392 = select i1 %389, float %391, float 0.000000e+00
  %393 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %9, float %385, float %386, float undef, float undef, i32 0, i32 0, i32 undef, float %392)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %394 = extractvalue %dx.types.ResRet.f32 %393, 0
  %395 = fcmp fast ogt float %394, -1.000000e+00
  %396 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %397 = extractvalue %dx.types.CBufRet.f32 %396, 1
  %398 = select i1 %395, float %397, float 1.000000e+00
  %399 = fadd fast float %394, 1.000000e+00
  %400 = fmul fast float %398, %399
  %401 = call float @dx.op.unary.f32(i32 6, float %400)  ; FAbs(value)
  %402 = fmul fast float %401, 0x3FF0083120000000
  %403 = fsub fast float %388, %402
  %404 = fcmp fast ogt float %403, 0.000000e+00
  br i1 %404, label %405, label %462, !dx.controlflow.hints !27

; <label>:405                                     ; preds = %370
  %406 = fdiv fast float 1.000000e+00, %371
  %407 = fsub fast float %406, %310
  %408 = fdiv fast float %407, %350
  %409 = fmul fast float %408, %347
  %410 = fmul fast float %408, %349
  %411 = fmul fast float %408, %350
  %412 = fadd fast float %409, %358
  %413 = fadd fast float %410, %359
  %414 = fadd fast float %411, %310
  br label %415

; <label>:415                                     ; preds = %452, %405
  %416 = phi float [ 5.000000e-01, %405 ], [ %424, %452 ]
  %417 = phi float [ 5.000000e-01, %405 ], [ %453, %452 ]
  %418 = phi i32 [ 0, %405 ], [ %459, %452 ]
  %419 = phi float [ %385, %405 ], [ %454, %452 ]
  %420 = phi float [ %386, %405 ], [ %455, %452 ]
  %421 = phi float [ %388, %405 ], [ %456, %452 ]
  %422 = phi float [ %394, %405 ], [ %457, %452 ]
  %423 = phi float [ %403, %405 ], [ %458, %452 ]
  %424 = fmul fast float %416, 5.000000e-01
  %425 = fsub fast float 1.000000e+00, %417
  %426 = fmul fast float %425, %412
  %427 = fmul fast float %425, %413
  %428 = fmul fast float %425, %414
  %429 = fmul fast float %417, %385
  %430 = fmul fast float %417, %386
  %431 = fmul fast float %417, %387
  %432 = fadd fast float %426, %429
  %433 = fadd fast float %427, %430
  %434 = fadd fast float %428, %431
  %435 = fdiv fast float 1.000000e+00, %434
  %436 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %9, float %432, float %433, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %437 = extractvalue %dx.types.ResRet.f32 %436, 0
  %438 = fcmp fast ogt float %437, -1.000000e+00
  %439 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %440 = extractvalue %dx.types.CBufRet.f32 %439, 1
  %441 = select i1 %438, float %440, float 1.000000e+00
  %442 = fadd fast float %437, 1.000000e+00
  %443 = fmul fast float %441, %442
  %444 = call float @dx.op.unary.f32(i32 6, float %443)  ; FAbs(value)
  %445 = fmul fast float %444, 0x3FF0083120000000
  %446 = fsub fast float %435, %445
  %447 = fcmp fast ogt float %446, 0.000000e+00
  br i1 %447, label %450, label %448, !dx.controlflow.hints !28

; <label>:448                                     ; preds = %415
  %449 = fadd fast float %417, %424
  br label %452

; <label>:450                                     ; preds = %415
  %451 = fsub fast float %417, %424
  br label %452

; <label>:452                                     ; preds = %450, %448
  %453 = phi float [ %451, %450 ], [ %449, %448 ]
  %454 = phi float [ %432, %450 ], [ %419, %448 ]
  %455 = phi float [ %433, %450 ], [ %420, %448 ]
  %456 = phi float [ %435, %450 ], [ %421, %448 ]
  %457 = phi float [ %437, %450 ], [ %422, %448 ]
  %458 = phi float [ %446, %450 ], [ %423, %448 ]
  %459 = add nuw nsw i32 %418, 1
  %460 = icmp eq i32 %459, 4
  br i1 %460, label %461, label %415

; <label>:461                                     ; preds = %452
  br label %462

; <label>:462                                     ; preds = %461, %370
  %463 = phi float [ %385, %370 ], [ %454, %461 ]
  %464 = phi float [ %386, %370 ], [ %455, %461 ]
  %465 = phi float [ %388, %370 ], [ %456, %461 ]
  %466 = phi float [ %394, %370 ], [ %457, %461 ]
  %467 = phi float [ %403, %370 ], [ %458, %461 ]
  %468 = fsub fast float %465, %372
  %469 = call float @dx.op.binary.f32(i32 35, float %468, float 4.800000e+01)  ; FMax(a,b)
  %470 = fcmp fast olt float %467, %469
  %471 = fcmp uge float %466, -1.000000e+00
  %472 = or i1 %49, %471
  %473 = call float @dx.op.unary.f32(i32 7, float %463)  ; Saturate(value)
  %474 = call float @dx.op.unary.f32(i32 7, float %464)  ; Saturate(value)
  %475 = fcmp fast oeq float %463, %473
  %476 = fcmp fast oeq float %464, %474
  %477 = and i1 %475, %476
  %478 = and i1 %472, %477
  %479 = and i1 %404, %470
  %480 = and i1 %479, %478
  %481 = fcmp fast ogt float %381, %366
  %482 = and i1 %481, %480
  br i1 %482, label %486, label %483, !dx.controlflow.hints !29

; <label>:483                                     ; preds = %462
  %484 = add nuw nsw i32 %373, 1
  %485 = icmp slt i32 %373, %301
  br i1 %485, label %370, label %486

; <label>:486                                     ; preds = %483, %462
  br label %487

; <label>:487                                     ; preds = %486, %296
  %488 = phi float [ %196, %296 ], [ %465, %486 ]
  %489 = fdiv fast float 1.000000e+00, %488
  %490 = fsub fast float %489, %310
  %491 = fdiv fast float %490, %350
  %492 = call float @dx.op.unary.f32(i32 7, float %491)  ; Saturate(value)
  store float %492, float* %289, align 4, !tbaa !30
  %493 = fcmp fast oge float %200, 0.000000e+00
  %494 = select i1 %493, float 1.000000e+00, float -1.000000e+00
  %495 = fadd fast float %494, %200
  %496 = fdiv fast float -1.000000e+00, %495
  %497 = fmul fast float %199, %198
  %498 = fmul fast float %497, %496
  %499 = fmul fast float %198, %198
  %500 = fmul fast float %499, %494
  %501 = fmul fast float %500, %496
  %502 = fadd fast float %501, 1.000000e+00
  %503 = fmul fast float %498, %494
  %504 = fmul fast float %198, %494
  %505 = fsub fast float -0.000000e+00, %504
  %506 = fmul fast float %199, %199
  %507 = fmul fast float %506, %496
  %508 = fadd fast float %507, %494
  %509 = fsub fast float -0.000000e+00, %199
  %510 = call float @dx.op.dot3.f32(i32 55, float %198, float %199, float %200, float %272, float %273, float %274)  ; Dot3(ax,ay,az,bx,by,bz)
  %511 = call float @dx.op.unary.f32(i32 7, float %510)  ; Saturate(value)
  %512 = fmul fast float %511, %511
  %513 = fmul fast float %512, 0x3FEFFD6940000000
  %514 = fadd fast float %513, 0x3F34B66D80000000
  %515 = bitcast float %514 to i32
  %516 = ashr i32 %515, 1
  %517 = add nsw i32 %516, 532487669
  %518 = bitcast i32 %517 to float
  %519 = fadd fast float %518, %511
  %520 = fdiv fast float 1.000000e+00, %519
  br label %521

; <label>:521                                     ; preds = %740, %487
  %522 = phi float [ 0.000000e+00, %487 ], [ %829, %740 ]
  %523 = phi float [ 0.000000e+00, %487 ], [ %811, %740 ]
  %524 = phi float [ 0.000000e+00, %487 ], [ %793, %740 ]
  %525 = phi float [ 0.000000e+00, %487 ], [ %830, %740 ]
  %526 = phi float [ 0.000000e+00, %487 ], [ %812, %740 ]
  %527 = phi float [ 0.000000e+00, %487 ], [ %794, %740 ]
  %528 = phi i32 [ 1, %487 ], [ %534, %740 ]
  %529 = sitofp i32 %528 to float
  %530 = fmul fast float %529, 0x3FC1111100000000
  %531 = call float @dx.op.binary.f32(i32 35, float %530, float 0x3F847AE140000000)  ; FMax(a,b)
  %532 = fmul fast float %531, %531
  %533 = fmul fast float %532, %532
  %534 = add nuw nsw i32 %528, 1
  %535 = uitofp i32 %534 to float
  %536 = fmul fast float %535, 0x3FEA36A940000000
  %537 = fmul fast float %535, 0x3FE5793080000000
  %538 = fadd fast float %536, %37
  %539 = fadd fast float %537, %38
  %540 = call float @dx.op.unary.f32(i32 22, float %538)  ; Frc(value)
  %541 = call float @dx.op.unary.f32(i32 22, float %539)  ; Frc(value)
  %542 = fmul fast float %529, 0x3FB5555560000000
  %543 = call float @dx.op.dot3.f32(i32 55, float %254, float %255, float %256, float %502, float %503, float %505)  ; Dot3(ax,ay,az,bx,by,bz)
  %544 = call float @dx.op.dot3.f32(i32 55, float %254, float %255, float %256, float %498, float %508, float %509)  ; Dot3(ax,ay,az,bx,by,bz)
  %545 = call float @dx.op.dot3.f32(i32 55, float %254, float %255, float %256, float %198, float %199, float %200)  ; Dot3(ax,ay,az,bx,by,bz)
  %546 = fsub fast float 1.000000e+00, %542
  %547 = fmul fast float %546, %540
  %548 = fmul fast float %543, %532
  %549 = fmul fast float %544, %532
  %550 = call float @dx.op.dot3.f32(i32 55, float %548, float %549, float %545, float %548, float %549, float %545)  ; Dot3(ax,ay,az,bx,by,bz)
  %551 = call float @dx.op.unary.f32(i32 25, float %550)  ; Rsqrt(value)
  %552 = fmul fast float %551, %548
  %553 = fmul fast float %551, %549
  %554 = fmul fast float %551, %545
  %555 = fmul fast float %552, %552
  %556 = fmul fast float %553, %553
  %557 = fadd fast float %555, %556
  %558 = fcmp fast ogt float %557, 0.000000e+00
  %559 = call float @dx.op.unary.f32(i32 25, float %557)  ; Rsqrt(value)
  %560 = fmul fast float %559, %553
  %561 = fsub fast float -0.000000e+00, %560
  %562 = fmul fast float %552, %559
  %563 = select i1 %558, float %561, float 1.000000e+00
  %564 = select i1 %558, float %562, float 0.000000e+00
  %565 = fmul fast float %564, %554
  %566 = fmul fast float %563, %554
  %567 = fmul fast float %564, %552
  %568 = fmul fast float %563, %553
  %569 = fsub fast float %567, %568
  %570 = call float @dx.op.unary.f32(i32 24, float %547)  ; Sqrt(value)
  %571 = fmul fast float %541, 0x401921FB60000000
  %572 = call float @dx.op.unary.f32(i32 12, float %571)  ; Cos(value)
  %573 = fmul fast float %572, %570
  %574 = call float @dx.op.unary.f32(i32 13, float %571)  ; Sin(value)
  %575 = fadd fast float %554, 1.000000e+00
  %576 = fmul fast float %575, 5.000000e-01
  %577 = fsub fast float 1.000000e+00, %576
  %578 = fmul fast float %573, %573
  %579 = fsub fast float 1.000000e+00, %578
  %580 = call float @dx.op.unary.f32(i32 24, float %579)  ; Sqrt(value)
  %581 = fmul fast float %580, %577
  %582 = fmul fast float %576, %570
  %583 = fmul fast float %582, %574
  %584 = fadd fast float %581, %583
  %585 = fmul fast float %563, %573
  %586 = fmul fast float %564, %573
  %587 = fmul fast float %565, %584
  %588 = fmul fast float %566, %584
  %589 = fmul fast float %584, %569
  %590 = fsub fast float %585, %587
  %591 = fadd fast float %588, %586
  %592 = fmul fast float %584, %584
  %593 = fsub fast float %579, %592
  %594 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %593)  ; FMax(a,b)
  %595 = call float @dx.op.unary.f32(i32 24, float %594)  ; Sqrt(value)
  %596 = fmul fast float %595, %552
  %597 = fmul fast float %595, %553
  %598 = fmul fast float %595, %554
  %599 = fadd fast float %590, %596
  %600 = fadd fast float %591, %597
  %601 = fadd fast float %589, %598
  %602 = fmul fast float %599, %532
  %603 = fmul fast float %600, %532
  %604 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %601)  ; FMax(a,b)
  %605 = call float @dx.op.dot3.f32(i32 55, float %602, float %603, float %604, float %602, float %603, float %604)  ; Dot3(ax,ay,az,bx,by,bz)
  %606 = call float @dx.op.unary.f32(i32 25, float %605)  ; Rsqrt(value)
  %607 = fmul fast float %602, %606
  %608 = fmul fast float %603, %606
  %609 = fmul fast float %606, %604
  %610 = fmul fast float %607, %502
  %611 = fmul fast float %607, %503
  %612 = fmul fast float %607, %505
  %613 = fmul fast float %608, %498
  %614 = fmul fast float %608, %508
  %615 = fmul fast float %608, %509
  %616 = fmul fast float %609, %198
  %617 = fmul fast float %609, %199
  %618 = fmul fast float %609, %200
  %619 = fadd fast float %613, %616
  %620 = fadd fast float %619, %610
  %621 = fadd fast float %614, %617
  %622 = fadd fast float %621, %611
  %623 = fadd fast float %615, %618
  %624 = fadd fast float %623, %612
  %625 = call float @dx.op.dot3.f32(i32 55, float %272, float %273, float %274, float %620, float %622, float %624)  ; Dot3(ax,ay,az,bx,by,bz)
  %626 = fmul fast float %625, 2.000000e+00
  %627 = fmul fast float %620, %626
  %628 = fmul fast float %622, %626
  %629 = fmul fast float %624, %626
  %630 = fsub fast float %272, %627
  %631 = fsub fast float %273, %628
  %632 = fsub fast float %274, %629
  %633 = call float @dx.op.dot3.f32(i32 55, float %630, float %631, float %632, float %630, float %631, float %632)  ; Dot3(ax,ay,az,bx,by,bz)
  %634 = call float @dx.op.unary.f32(i32 25, float %633)  ; Rsqrt(value)
  %635 = fmul fast float %630, %634
  %636 = fmul fast float %631, %634
  %637 = fmul fast float %632, %634
  %638 = fmul fast float %635, %298
  %639 = fmul fast float %636, %298
  %640 = fmul fast float %637, %298
  %641 = fadd fast float %638, %246
  %642 = fadd fast float %639, %247
  %643 = fadd fast float %640, %248
  %644 = fmul fast float %641, %258
  %645 = call float @dx.op.tertiary.f32(i32 46, float %642, float %259, float %644)  ; FMad(a,b,c)
  %646 = call float @dx.op.tertiary.f32(i32 46, float %643, float %260, float %645)  ; FMad(a,b,c)
  %647 = fadd fast float %646, %261
  %648 = fmul fast float %641, %263
  %649 = call float @dx.op.tertiary.f32(i32 46, float %642, float %264, float %648)  ; FMad(a,b,c)
  %650 = call float @dx.op.tertiary.f32(i32 46, float %643, float %265, float %649)  ; FMad(a,b,c)
  %651 = fadd fast float %650, %266
  %652 = fmul fast float %641, %268
  %653 = call float @dx.op.tertiary.f32(i32 46, float %642, float %269, float %652)  ; FMad(a,b,c)
  %654 = call float @dx.op.tertiary.f32(i32 46, float %643, float %270, float %653)  ; FMad(a,b,c)
  %655 = fadd fast float %654, %271
  %656 = fdiv fast float 1.000000e+00, %655
  %657 = fmul fast float %647, 5.000000e-01
  %658 = fmul fast float %651, -5.000000e-01
  %659 = fmul fast float %657, %656
  %660 = fmul fast float %658, %656
  %661 = fadd fast float %659, 5.000000e-01
  %662 = fsub fast float %311, %661
  %663 = fmul fast float %343, %662
  %664 = fsub fast float %661, %311
  %665 = fadd fast float %664, %663
  %666 = fadd fast float %348, %660
  %667 = fsub fast float %656, %310
  %668 = call float @dx.op.dot2.f32(i32 54, float %665, float %666, float %665, float %666)  ; Dot2(ax,ay,bx,by)
  %669 = call float @dx.op.binary.f32(i32 35, float %668, float 0x3EB0C6F7A0000000)  ; FMax(a,b)
  %670 = fmul fast float %353, %669
  %671 = call float @dx.op.unary.f32(i32 25, float %670)  ; Rsqrt(value)
  %672 = fmul fast float %671, %665
  %673 = fmul fast float %671, %666
  %674 = fadd fast float %672, %311
  %675 = fadd fast float %673, %312
  %676 = fmul fast float %665, %21
  %677 = fmul fast float %666, %22
  %678 = fmul fast float %676, %676
  %679 = fmul fast float %677, %677
  %680 = fadd fast float %678, %679
  %681 = call float @dx.op.unary.f32(i32 24, float %680)  ; Sqrt(value)
  %682 = fdiv fast float 1.000000e+00, %681
  %683 = fmul fast float %681, 3.125000e-02
  br i1 %368, label %684, label %740

; <label>:684                                     ; preds = %521
  br label %685

; <label>:685                                     ; preds = %736, %684
  %686 = phi float [ %703, %736 ], [ %196, %684 ]
  %687 = phi float [ %686, %736 ], [ %196, %684 ]
  %688 = phi i32 [ %737, %736 ], [ 0, %684 ]
  %689 = sitofp i32 %688 to float
  %690 = fadd fast float %37, 5.000000e-01
  %691 = call float @dx.op.unary.f32(i32 22, float %690)  ; Frc(value)
  %692 = fadd fast float %689, %691
  %693 = sitofp i32 %301 to float
  %694 = fdiv fast float %692, %693
  %695 = fmul fast float %694, %694
  %696 = call float @dx.op.binary.f32(i32 36, float %695, float 0x3FEFFF8020000000)  ; FMin(a,b)
  %697 = fmul fast float %696, %665
  %698 = fmul fast float %696, %666
  %699 = fmul fast float %696, %667
  %700 = fadd fast float %697, %674
  %701 = fadd fast float %698, %675
  %702 = fadd fast float %699, %310
  %703 = fdiv fast float 1.000000e+00, %702
  %704 = icmp ne i32 %303, 0
  %705 = fmul fast float %683, %696
  %706 = call float @dx.op.binary.f32(i32 36, float %705, float %304)  ; FMin(a,b)
  %707 = select i1 %704, float %706, float 0.000000e+00
  %708 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %9, float %700, float %701, float undef, float undef, i32 0, i32 0, i32 undef, float %707)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %709 = extractvalue %dx.types.ResRet.f32 %708, 0
  %710 = fcmp fast ogt float %709, -1.000000e+00
  %711 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %712 = extractvalue %dx.types.CBufRet.f32 %711, 1
  %713 = select i1 %710, float %712, float 1.000000e+00
  %714 = fadd fast float %709, 1.000000e+00
  %715 = fmul fast float %713, %714
  %716 = call float @dx.op.unary.f32(i32 6, float %715)  ; FAbs(value)
  %717 = fmul fast float %716, 0x3FF0083120000000
  %718 = fsub fast float %703, %717
  %719 = fcmp fast ogt float %718, 0.000000e+00
  %720 = fsub fast float %703, %687
  %721 = call float @dx.op.binary.f32(i32 35, float %720, float 4.800000e+01)  ; FMax(a,b)
  %722 = fcmp fast olt float %718, %721
  %723 = fcmp uge float %709, -1.000000e+00
  %724 = or i1 %49, %723
  %725 = call float @dx.op.unary.f32(i32 7, float %700)  ; Saturate(value)
  %726 = call float @dx.op.unary.f32(i32 7, float %701)  ; Saturate(value)
  %727 = fcmp fast oeq float %700, %725
  %728 = fcmp fast oeq float %701, %726
  %729 = and i1 %727, %728
  %730 = and i1 %724, %729
  %731 = and i1 %719, %722
  %732 = and i1 %731, %730
  %733 = fcmp fast ogt float %696, %682
  %734 = and i1 %733, %732
  %735 = zext i1 %734 to i32
  br i1 %734, label %739, label %736, !dx.controlflow.hints !29

; <label>:736                                     ; preds = %685
  %737 = add nuw nsw i32 %688, 1
  %738 = icmp slt i32 %688, %301
  br i1 %738, label %685, label %739

; <label>:739                                     ; preds = %736, %685
  br label %740

; <label>:740                                     ; preds = %739, %521
  %741 = phi i32 [ 0, %521 ], [ %735, %739 ]
  %742 = phi float [ %196, %521 ], [ %716, %739 ]
  %743 = phi float [ %196, %521 ], [ %703, %739 ]
  %744 = fdiv fast float 1.000000e+00, %743
  %745 = fsub fast float %744, %310
  %746 = fdiv fast float %745, %667
  %747 = call float @dx.op.unary.f32(i32 7, float %746)  ; Saturate(value)
  %748 = fmul fast float %747, %665
  %749 = fmul fast float %747, %666
  %750 = fcmp fast oge float %742, %298
  %751 = icmp ne i32 %741, 0
  %752 = or i1 %751, %750
  %753 = fadd fast float %674, -5.000000e-01
  %754 = fadd fast float %753, %748
  %755 = fadd fast float %675, -5.000000e-01
  %756 = fadd fast float %755, %749
  %757 = call float @dx.op.unary.f32(i32 6, float %754)  ; FAbs(value)
  %758 = call float @dx.op.unary.f32(i32 6, float %756)  ; FAbs(value)
  %759 = fadd fast float %757, -5.000000e-01
  %760 = fadd fast float %758, -5.000000e-01
  %761 = call float @dx.op.binary.f32(i32 35, float %759, float %760)  ; FMax(a,b)
  %762 = fcmp fast olt float %761, 0.000000e+00
  %763 = and i1 %752, %762
  %764 = select i1 %763, float 1.000000e+00, float 0.000000e+00
  %765 = call float @dx.op.dot3.f32(i32 55, float %635, float %636, float %637, float %285, float %286, float %287)  ; Dot3(ax,ay,az,bx,by,bz)
  %766 = call float @dx.op.unary.f32(i32 7, float %765)  ; Saturate(value)
  %767 = fmul fast float %766, %766
  %768 = fsub fast float 1.000000e+00, %533
  %769 = fmul fast float %512, %768
  %770 = fadd fast float %769, %533
  %771 = bitcast float %770 to i32
  %772 = ashr i32 %771, 1
  %773 = add nsw i32 %772, 532487669
  %774 = bitcast i32 %773 to float
  %775 = fadd fast float %774, %511
  %776 = fmul fast float %767, %533
  %777 = fsub fast float 1.000000e+00, %767
  %778 = fadd fast float %777, %776
  %779 = fmul fast float %778, %778
  %780 = fdiv fast float %533, %779
  %781 = fdiv fast float 1.000000e+00, %780
  %782 = fmul fast float %781, %775
  %783 = fmul fast float %767, 0x3FEFFD6940000000
  %784 = fsub fast float 1.000000e+00, %783
  %785 = fmul fast float %784, %784
  %786 = fdiv fast float 0x3F34B66D80000000, %785
  %787 = fmul fast float %786, %520
  %788 = fmul fast float %764, %747
  %789 = fcmp fast une float %788, 0.000000e+00
  %790 = fmul fast float %787, %782
  %791 = select i1 %789, float %790, float 0.000000e+00
  %792 = fmul fast float %791, %747
  %793 = fadd fast float %792, %524
  store float %793, float* %290, align 4, !tbaa !30
  %794 = fadd fast float %791, %527
  %795 = fmul fast float %512, 0x3FEFD69320000000
  %796 = fadd fast float %795, 0x3F74B66D80000000
  %797 = bitcast float %796 to i32
  %798 = ashr i32 %797, 1
  %799 = add nsw i32 %798, 532487669
  %800 = bitcast i32 %799 to float
  %801 = fadd fast float %800, %511
  %802 = fdiv fast float 1.000000e+00, %801
  %803 = fmul fast float %767, 0x3FEFD69320000000
  %804 = fsub fast float 1.000000e+00, %803
  %805 = fmul fast float %804, %804
  %806 = fdiv fast float 0x3F74B66D80000000, %805
  %807 = fmul fast float %802, %782
  %808 = fmul fast float %807, %806
  %809 = select i1 %789, float %808, float 0.000000e+00
  %810 = fmul fast float %809, %747
  %811 = fadd fast float %810, %523
  store float %811, float* %291, align 4, !tbaa !30
  %812 = fadd fast float %809, %526
  %813 = fmul fast float %512, 0x3FEF2E48E0000000
  %814 = fadd fast float %813, 0x3F9A36E280000000
  %815 = bitcast float %814 to i32
  %816 = ashr i32 %815, 1
  %817 = add nsw i32 %816, 532487669
  %818 = bitcast i32 %817 to float
  %819 = fadd fast float %818, %511
  %820 = fdiv fast float 1.000000e+00, %819
  %821 = fmul fast float %767, 0x3FEF2E48E0000000
  %822 = fsub fast float 1.000000e+00, %821
  %823 = fmul fast float %822, %822
  %824 = fdiv fast float 0x3F9A36E280000000, %823
  %825 = fmul fast float %820, %782
  %826 = fmul fast float %825, %824
  %827 = select i1 %789, float %826, float 0.000000e+00
  %828 = fmul fast float %827, %747
  %829 = fadd fast float %828, %522
  store float %829, float* %292, align 4, !tbaa !30
  %830 = fadd fast float %827, %525
  %831 = icmp eq i32 %534, 4
  br i1 %831, label %832, label %521

; <label>:832                                     ; preds = %740
  %833 = fcmp fast ogt float %794, 0.000000e+00
  %834 = fdiv fast float %793, %794
  %835 = select i1 %833, float %834, float 0x7FF0000000000000
  store float %835, float* %290, align 4, !tbaa !30
  %836 = fcmp fast ogt float %812, 0.000000e+00
  %837 = fdiv fast float %811, %812
  %838 = select i1 %836, float %837, float 0x7FF0000000000000
  store float %838, float* %291, align 4, !tbaa !30
  %839 = fcmp fast ogt float %830, 0.000000e+00
  %840 = fdiv fast float %829, %830
  %841 = select i1 %839, float %840, float 0x7FF0000000000000
  store float %841, float* %292, align 4, !tbaa !30
  %842 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %11, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %843 = extractvalue %dx.types.CBufRet.i32 %842, 3
  %844 = and i32 %843, 3
  %845 = icmp ne i32 %844, 0
  %846 = and i32 %843, 4
  %847 = icmp ne i32 %846, 0
  %848 = and i1 %845, %847
  br i1 %848, label %849, label %854, !dx.controlflow.hints !34

; <label>:849                                     ; preds = %832
  %850 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %8, float %42, float %44, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %851 = extractvalue %dx.types.ResRet.f32 %850, 0
  %852 = fcmp fast ole float %851, 0.000000e+00
  %853 = zext i1 %852 to i32
  br label %854

; <label>:854                                     ; preds = %849, %832
  %855 = phi i32 [ %853, %849 ], [ 0, %832 ]
  br label %856

; <label>:856                                     ; preds = %901, %854
  %857 = phi float [ %492, %854 ], [ %903, %901 ]
  %858 = phi i32 [ 0, %854 ], [ %899, %901 ]
  %859 = fcmp fast une float %857, 0x7FF0000000000000
  br i1 %859, label %860, label %897, !dx.controlflow.hints !35

; <label>:860                                     ; preds = %856
  %861 = fmul fast float %857, %347
  %862 = fmul fast float %857, %349
  %863 = fadd fast float %861, %311
  %864 = fadd fast float %862, %312
  %865 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %11, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %866 = extractvalue %dx.types.CBufRet.i32 %865, 3
  %867 = and i32 %866, 3
  %868 = icmp ne i32 %867, 0
  %869 = and i32 %866, 4
  %870 = icmp ne i32 %869, 0
  %871 = and i1 %868, %870
  %872 = icmp ne i32 %855, 0
  %873 = or i1 %49, %872
  %874 = and i1 %873, %871
  br i1 %874, label %875, label %880, !dx.controlflow.hints !36

; <label>:875                                     ; preds = %860
  %876 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %8, float %863, float %864, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %877 = extractvalue %dx.types.ResRet.f32 %876, 0
  %878 = fcmp fast ogt float %877, 0.000000e+00
  %879 = zext i1 %878 to i32
  br label %880

; <label>:880                                     ; preds = %875, %860
  %881 = phi i32 [ %879, %875 ], [ 0, %860 ]
  %882 = call float @dx.op.unary.f32(i32 6, float %857)  ; FAbs(value)
  %883 = fsub fast float 1.000000e+00, %882
  %884 = icmp ne i32 %881, 0
  %885 = select i1 %884, float 0xFFF0000000000000, float %883
  %886 = fcmp fast une float %885, 0xFFF0000000000000
  %887 = fcmp fast une float %885, 0x7FF0000000000000
  %888 = and i1 %886, %887
  %889 = and i1 %49, %888
  br i1 %889, label %890, label %897, !dx.controlflow.hints !37

; <label>:890                                     ; preds = %880
  %891 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %9, float %863, float %864, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %892 = extractvalue %dx.types.ResRet.f32 %891, 0
  %893 = fcmp fast olt float %892, -1.000000e+00
  %894 = call float @dx.op.unary.f32(i32 6, float %885)  ; FAbs(value)
  %895 = fsub fast float -0.000000e+00, %894
  %896 = select i1 %893, float %895, float %885
  br label %897

; <label>:897                                     ; preds = %890, %880, %856
  %898 = phi float [ %896, %890 ], [ %885, %880 ], [ 0x7FF0000000000000, %856 ]
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %12, i32 %13, i32 %858, float %898, float %898, float %898, float %898, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %899 = add nuw nsw i32 %858, 1
  %900 = icmp eq i32 %899, 4
  br i1 %900, label %905, label %901

; <label>:901                                     ; preds = %897
  %902 = getelementptr [4 x float], [4 x float]* %14, i32 0, i32 %899
  %903 = load float, float* %902, align 4, !tbaa !30
  br label %856

; <label>:904                                     ; preds = %195
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %12, i32 %13, i32 0, float 0xFFF0000000000000, float 0xFFF0000000000000, float 0xFFF0000000000000, float 0xFFF0000000000000, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %12, i32 %13, i32 1, float 0xFFF0000000000000, float 0xFFF0000000000000, float 0xFFF0000000000000, float 0xFFF0000000000000, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %12, i32 %13, i32 2, float 0xFFF0000000000000, float 0xFFF0000000000000, float 0xFFF0000000000000, float 0xFFF0000000000000, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %12, i32 %13, i32 3, float 0xFFF0000000000000, float 0xFFF0000000000000, float 0xFFF0000000000000, float 0xFFF0000000000000, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %906

; <label>:905                                     ; preds = %897
  br label %906

; <label>:906                                     ; preds = %905, %904
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
!12 = !{i32 4, %"class.Texture2D<unsigned int>"* undef, !"", i32 0, i32 1, i32 1, i32 2, i32 0, !10}
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
!25 = distinct !{!25, !"dx.controlflow.hints", i32 2}
!26 = distinct !{!26, !"dx.controlflow.hints", i32 2}
!27 = distinct !{!27, !"dx.controlflow.hints", i32 2}
!28 = distinct !{!28, !"dx.controlflow.hints", i32 2}
!29 = distinct !{!29, !"dx.controlflow.hints", i32 2}
!30 = !{!31, !31, i64 0}
!31 = !{!"float", !32, i64 0}
!32 = !{!"omnipotent char", !33, i64 0}
!33 = !{!"Simple C/C++ TBAA"}
!34 = distinct !{!34, !"dx.controlflow.hints", i32 2}
!35 = distinct !{!35, !"dx.controlflow.hints", i32 2}
!36 = distinct !{!36, !"dx.controlflow.hints", i32 2}
!37 = distinct !{!37, !"dx.controlflow.hints", i32 2}

