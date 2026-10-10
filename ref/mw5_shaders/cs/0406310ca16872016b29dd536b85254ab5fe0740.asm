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
; shader hash: 64236a42451bca0b155cd8bc7f4b7972
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
;   [176 x i8] (type annotation not present)
;
; }
;
; cbuffer 
; {
;
;   [11728 x i8] (type annotation not present)
;
; }
;
; Resource bind info for 
; {
;
;   [48 x i8] (type annotation not present)
; }
;
; Resource bind info for 
; {
;
;   [132 x i8] (type annotation not present)
; }
;
;
; Resource Bindings:
;
; Name                                 Type  Format         Dim      ID      HLSL Bind  Count
; ------------------------------ ---------- ------- ----------- ------- -------------- ------
;                                   cbuffer      NA          NA     CB0            cb0     1
;                                   cbuffer      NA          NA     CB1            cb3     1
;                                   sampler      NA          NA      S0             s2     1
;                                   texture     f32          2d      T0             t0     1
;                                   texture     f32          2d      T1             t1     1
;                                   texture     u32        2dMS      T2             t2     1
;                                   texture  struct         r/o      T3             t3     1
;                                   texture  struct         r/o      T4             t5     1
;                                       UAVunorm_f32          2d      U0             u0     1
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.CBufRet.f32 = type { float, float, float, float }
%dx.types.CBufRet.i32 = type { i32, i32, i32, i32 }
%dx.types.ResRet.i32 = type { i32, i32, i32, i32, i32 }
%dx.types.ResRet.f32 = type { float, float, float, float, i32 }
%"class.Texture2D<vector<float, 4> >" = type { <4 x float>, %"class.Texture2D<vector<float, 4> >::mips_type" }
%"class.Texture2D<vector<float, 4> >::mips_type" = type { i32 }
%"class.Texture2DMS<vector<unsigned int, 4>, 0>" = type { <4 x i32>, %"class.Texture2DMS<vector<unsigned int, 4>, 0>::sample_type" }
%"class.Texture2DMS<vector<unsigned int, 4>, 0>::sample_type" = type { i32 }
%"class.StructuredBuffer<MDAOOccluder>" = type { %struct.MDAOOccluder }
%struct.MDAOOccluder = type { <4 x float>, <4 x float>, <4 x float> }
%"class.StructuredBuffer<MDAOOccluderCulling>" = type { %struct.MDAOOccluderCulling }
%struct.MDAOOccluderCulling = type { i32, [32 x i32] }
%"class.RWTexture2D<float>" = type { float }
%MDAOConstants = type { <4 x float>, <4 x float>, <4 x float>, <4 x i32>, <4 x float>, <4 x float>, float, float, float, float, float, i32, i32, i32, float, float, i32, i32, <4 x float>, <4 x i32> }
%hostlayout.scene = type { %hostlayout.struct.GfxCodeSceneConsts }
%hostlayout.struct.GfxCodeSceneConsts = type { <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <3 x float>, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x i32>, <4 x i32>, <4 x float>, float, float, float, float, i32, i32, float, float, <2 x i32>, <2 x i32>, <2 x float>, <2 x float>, <3 x float>, i32, <3 x float>, float, <3 x float>, float, <2 x float>, <2 x float>, <3 x float>, float, <3 x float>, float, float, float, float, float, <3 x float>, float, i32, float, float, float, <4 x float>, <3 x float>, float, float, float, float, float, <4 x float>, float, float, float, float, i32, i32, i32, float, <4 x float>, i32, i32, i32, i32, i32, i32, i32, i32, <2 x i32>, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, [2 x <4 x i32>], [3 x <2 x float>], i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <2 x float>, <2 x float>, <4 x float>, <4 x i32>, <4 x float>, i32, float, float, float, i32, i32, i32, i32, <2 x float>, <2 x float>, <2 x float>, <2 x float>, i32, i32, <2 x float>, <2 x float>, <2 x float>, <3 x float>, i32, i32, i32, i32, i32, <4 x i32>, <4 x i32>, <4 x i32>, <4 x float>, i32, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <3 x float>, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], <4 x float>, [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], i32, i32, float, i32, <2 x float>, float, float, float, float, float, i32, <3 x float>, float, float, float, float, float, <3 x float>, float, <3 x float>, float, <3 x float>, float, float, float, float, float, <2 x float>, <2 x float>, float, float, float, float, <3 x float>, float, <2 x float>, i32, i32, <3 x float>, float, float, float, float, float, float, float, float, float, [4 x <3 x float>], i32, [4 x <3 x float>], i32, [4 x <3 x float>], i32, <4 x i32>, <2 x float>, <2 x float>, <2 x float>, i32, i32, float, float, float, float, <4 x float>, <4 x i32>, <4 x float>, <4 x float>, <4 x float>, i32, i32, i32, i32, <4 x float>, i32, float, float, i32, i32, float, float, i32, i32, float, float, i32, i32, float, float, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, float, float, float, float, i32, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, i32, i32, i32, float, <4 x float>, <4 x float>, <4 x float>, <4 x float>, i32, i32, i32, float, <4 x float>, float, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x i32>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [8 x <4 x float>], [8 x <4 x float>], <4 x float>, <3 x float>, i32, <2 x float>, float, float, float, float, float, float, <2 x float>, <2 x float>, <2 x float>, <2 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <2 x float>, float, float, <4 x float>, i32, i32, i32, i32, <3 x float>, i32, <4 x i32>, <4 x i32>, <2 x float>, <2 x i32>, <4 x float>, <4 x float>, <2 x float>, <2 x float>, [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, float, i32, i32, i32, i32, i32, float, float, <2 x float>, <2 x float>, float, float, float, float, i32, float, float, float, float, float, float, float, float, float, float, float, float, i32, i32, i32, float, float, float, i32, <2 x i32>, <2 x i32>, <4 x i32>, float, float, float, float, <4 x float>, <4 x float>, <2 x float>, <2 x float>, <4 x float>, <4 x float>, float, float, float, float, <4 x float>, float, float, float, float, i32, i32, float, float, <4 x float>, <2 x float>, <2 x float>, i32, i32, float, float, [4 x <4 x float>], float, float, float, float, float, float, float, float, i32, i32, i32, float, <4 x float>, <4 x float>, i32, i32, i32, i32, <2 x i32>, <2 x i32>, [2 x <4 x i32>], i32, float, float, float, i32, float, float, i32, <2 x i32>, <2 x float>, float, float, float, i32, %struct.GfxWeatherData, %hostlayout.struct.GfxVolumetricData, %struct.GfxFogRaymarchingData, %struct.GfxEnvironmentalFogData, %struct.GfxShallowWaterData, %struct.GfxGroundDeformationData, %struct.GfxSplinedModelGlobals }
%struct.GfxWeatherData = type { i32, i32, i32, i32, float, float, float, float, float, float, i32, i32, float, float, float, float, i32, i32, i32, i32, float, float, float, float, float, i32, i32, i32, i32, i32, i32, i32, <3 x float>, i32, <3 x float>, i32, i32, float, i32, i32, float, float, float, float }
%hostlayout.struct.GfxVolumetricData = type { [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <2 x float>, <2 x float>, <2 x float>, <2 x float>, <3 x i32>, i32, <3 x float>, i32, <4 x float>, <3 x float>, i32, i32, float, float, float, i32, i32, i32, float, <4 x float>, float, float, i32, i32, <3 x float>, i32, <3 x float>, float, <3 x float>, float, <2 x float>, float, float, <3 x float>, float, <3 x float>, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, <3 x float>, float, i32, float, float, float, <3 x float>, float, <2 x float>, <2 x float>, <3 x float>, float, i32, float, float, float, float, float, float, float, i32, i32, float, float, <3 x float>, float, i32, i32, <2 x float> }
%struct.GfxFogRaymarchingData = type { <2 x float>, <2 x float>, float, float, float, float, float, float, float, float, float, float, float, float, <2 x float>, <2 x float>, <3 x float>, float }
%struct.GfxEnvironmentalFogData = type { float, float, float, i32 }
%struct.GfxShallowWaterData = type { i32, i32, i32, i32, float, float, float, float, <2 x float>, <2 x float>, float, float, float, float, <3 x float>, float, float, float, float, float, float, float, float, float, i32, float, float, float, float, float, float, float, float, float, float, float, i32, float, float, float, float, i32, i32, i32 }
%struct.GfxGroundDeformationData = type { <2 x float>, <2 x float>, float, float, float, float, float, float, float, float, float, float, float, float, float, float, i32, i32 }
%struct.GfxSplinedModelGlobals = type { [64 x <4 x float>], [64 x <4 x float>], [16 x <4 x float>], [32 x <4 x float>], [64 x <4 x float>], [16 x <4 x float>], [16 x <4 x float>], float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float }
%struct.SamplerState = type { i32 }

define void @cs_mdao_compute_occlusion() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call i32 @dx.op.groupId.i32(i32 94, i32 0)  ; GroupId(component)
  %11 = call i32 @dx.op.groupId.i32(i32 94, i32 1)  ; GroupId(component)
  %12 = call i32 @dx.op.threadId.i32(i32 93, i32 0)  ; ThreadId(component)
  %13 = call i32 @dx.op.threadId.i32(i32 93, i32 1)  ; ThreadId(component)
  %14 = alloca [4 x i32], align 4
  %15 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %9, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %16 = extractvalue %dx.types.CBufRet.f32 %15, 0
  %17 = extractvalue %dx.types.CBufRet.f32 %15, 1
  %18 = extractvalue %dx.types.CBufRet.f32 %15, 2
  %19 = extractvalue %dx.types.CBufRet.f32 %15, 3
  %20 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %9, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %21 = extractvalue %dx.types.CBufRet.i32 %20, 0
  %22 = mul i32 %21, %11
  %23 = add i32 %22, %10
  %24 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %23, i32 0)  ; BufferLoad(srv,index,wot)
  %25 = extractvalue %dx.types.ResRet.i32 %24, 0
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %256, label %27, !dx.controlflow.hints !26

; <label>:27                                      ; preds = %0
  %28 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %9, i32 10)  ; CBufferLoadLegacy(handle,regIndex)
  %29 = extractvalue %dx.types.CBufRet.i32 %28, 0
  %30 = extractvalue %dx.types.CBufRet.i32 %28, 1
  %31 = extractvalue %dx.types.CBufRet.i32 %28, 2
  %32 = extractvalue %dx.types.CBufRet.i32 %28, 3
  %33 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %9, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %34 = extractvalue %dx.types.CBufRet.f32 %33, 0
  %35 = extractvalue %dx.types.CBufRet.f32 %33, 1
  %36 = sitofp i32 %12 to float
  %37 = sitofp i32 %13 to float
  %38 = fmul fast float %18, %36
  %39 = fmul fast float %19, %37
  %40 = fmul fast float %38, %34
  %41 = fmul fast float %39, %35
  %42 = fadd fast float %40, -5.000000e-01
  %43 = fadd fast float %41, -5.000000e-01
  %44 = fptosi float %42 to i32
  %45 = fptosi float %43 to i32
  %46 = lshr i32 %44, 1
  %47 = lshr i32 %45, 1
  %48 = and i32 %44, 1
  %49 = shl i32 %45, 1
  %50 = and i32 %49, 2
  %51 = or i32 %50, %48
  %52 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i32 0, i32 0
  store i32 %29, i32* %52, align 4
  %53 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i32 0, i32 1
  store i32 %30, i32* %53, align 4
  %54 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i32 0, i32 2
  store i32 %31, i32* %54, align 4
  %55 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i32 0, i32 3
  store i32 %32, i32* %55, align 4
  %56 = getelementptr [4 x i32], [4 x i32]* %14, i32 0, i32 %51
  %57 = load i32, i32* %56, align 4, !tbaa !27
  %58 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %4, i32 %57, i32 %46, i32 %47, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %59 = extractvalue %dx.types.ResRet.i32 %58, 0
  %60 = lshr i32 %59, 8
  %61 = and i32 %59, 255
  %62 = and i32 %60, 255
  %63 = uitofp i32 %61 to float
  %64 = uitofp i32 %62 to float
  %65 = fmul fast float %63, 0x3F80101020000000
  %66 = fmul fast float %64, 0x3F80101020000000
  %67 = fadd fast float %65, -1.000000e+00
  %68 = fadd fast float %66, -1.000000e+00
  %69 = call float @dx.op.unary.f32(i32 6, float %67)  ; FAbs(value)
  %70 = fsub fast float 1.000000e+00, %69
  %71 = call float @dx.op.unary.f32(i32 6, float %68)  ; FAbs(value)
  %72 = fsub fast float %70, %71
  %73 = fsub fast float -0.000000e+00, %72
  %74 = call float @dx.op.binary.f32(i32 35, float %73, float 0.000000e+00)  ; FMax(a,b)
  %75 = fcmp fast ogt float %67, 0.000000e+00
  %76 = fsub fast float -0.000000e+00, %74
  %77 = select i1 %75, float %76, float %74
  %78 = fadd fast float %77, %67
  %79 = fcmp fast ogt float %68, 0.000000e+00
  %80 = select i1 %79, float %76, float %74
  %81 = fadd fast float %80, %68
  %82 = call float @dx.op.dot3.f32(i32 55, float %78, float %81, float %72, float %78, float %81, float %72)  ; Dot3(ax,ay,az,bx,by,bz)
  %83 = call float @dx.op.unary.f32(i32 25, float %82)  ; Rsqrt(value)
  %84 = fmul fast float %78, %83
  %85 = fmul fast float %81, %83
  %86 = fmul fast float %83, %72
  %87 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %8, i32 99)  ; CBufferLoadLegacy(handle,regIndex)
  %88 = extractvalue %dx.types.CBufRet.f32 %87, 0
  %89 = extractvalue %dx.types.CBufRet.f32 %87, 1
  %90 = extractvalue %dx.types.CBufRet.f32 %87, 2
  %91 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %8, i32 100)  ; CBufferLoadLegacy(handle,regIndex)
  %92 = extractvalue %dx.types.CBufRet.f32 %91, 0
  %93 = extractvalue %dx.types.CBufRet.f32 %91, 1
  %94 = extractvalue %dx.types.CBufRet.f32 %91, 2
  %95 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %8, i32 101)  ; CBufferLoadLegacy(handle,regIndex)
  %96 = extractvalue %dx.types.CBufRet.f32 %95, 0
  %97 = extractvalue %dx.types.CBufRet.f32 %95, 1
  %98 = extractvalue %dx.types.CBufRet.f32 %95, 2
  %99 = fmul fast float %84, %88
  %100 = call float @dx.op.tertiary.f32(i32 46, float %85, float %89, float %99)  ; FMad(a,b,c)
  %101 = call float @dx.op.tertiary.f32(i32 46, float %86, float %90, float %100)  ; FMad(a,b,c)
  %102 = fmul fast float %84, %92
  %103 = call float @dx.op.tertiary.f32(i32 46, float %85, float %93, float %102)  ; FMad(a,b,c)
  %104 = call float @dx.op.tertiary.f32(i32 46, float %86, float %94, float %103)  ; FMad(a,b,c)
  %105 = fmul fast float %84, %96
  %106 = call float @dx.op.tertiary.f32(i32 46, float %85, float %97, float %105)  ; FMad(a,b,c)
  %107 = call float @dx.op.tertiary.f32(i32 46, float %86, float %98, float %106)  ; FMad(a,b,c)
  %108 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %7, float %38, float %39, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %109 = extractvalue %dx.types.ResRet.f32 %108, 0
  %110 = fcmp fast ogt float %109, -1.000000e+00
  %111 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %8, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %112 = extractvalue %dx.types.CBufRet.f32 %111, 1
  %113 = select i1 %110, float %112, float 1.000000e+00
  %114 = fadd fast float %109, 1.000000e+00
  %115 = fmul fast float %113, %114
  %116 = call float @dx.op.unary.f32(i32 6, float %115)  ; FAbs(value)
  %117 = uitofp i32 %12 to float
  %118 = uitofp i32 %13 to float
  %119 = fadd fast float %117, 5.000000e-01
  %120 = fadd fast float %118, 5.000000e-01
  %121 = fmul fast float %119, 2.000000e+00
  %122 = fmul fast float %121, %18
  %123 = fadd fast float %122, -1.000000e+00
  %124 = fmul fast float %120, 2.000000e+00
  %125 = fmul fast float %124, %19
  %126 = fsub fast float 1.000000e+00, %125
  %127 = fmul fast float %116, %123
  %128 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %9, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %129 = extractvalue %dx.types.CBufRet.f32 %128, 0
  %130 = fmul fast float %127, %129
  %131 = fmul fast float %116, %126
  %132 = extractvalue %dx.types.CBufRet.f32 %128, 1
  %133 = fmul fast float %131, %132
  %134 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %9, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %135 = extractvalue %dx.types.CBufRet.f32 %134, 0
  %136 = extractvalue %dx.types.CBufRet.f32 %134, 1
  %137 = extractvalue %dx.types.CBufRet.f32 %134, 2
  %138 = call float @dx.op.dot3.f32(i32 55, float %101, float %104, float %107, float %135, float %136, float %137)  ; Dot3(ax,ay,az,bx,by,bz)
  %139 = call float @dx.op.unary.f32(i32 7, float %138)  ; Saturate(value)
  %140 = fsub fast float %135, %101
  %141 = fsub fast float %136, %104
  %142 = fsub fast float %137, %107
  %143 = fmul fast float %140, %139
  %144 = fmul fast float %141, %139
  %145 = fmul fast float %142, %139
  %146 = fadd fast float %143, %101
  %147 = fadd fast float %144, %104
  %148 = fadd fast float %145, %107
  %149 = call float @dx.op.dot3.f32(i32 55, float %146, float %147, float %148, float %146, float %147, float %148)  ; Dot3(ax,ay,az,bx,by,bz)
  %150 = call float @dx.op.unary.f32(i32 25, float %149)  ; Rsqrt(value)
  %151 = fmul fast float %146, %150
  %152 = fmul fast float %147, %150
  %153 = fmul fast float %148, %150
  br label %154

; <label>:154                                     ; preds = %246, %27
  %155 = phi float [ %247, %246 ], [ 1.000000e+00, %27 ]
  %156 = phi i32 [ %248, %246 ], [ 0, %27 ]
  %157 = shl i32 %156, 2
  %158 = add nuw nsw i32 %157, 4
  %159 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %23, i32 %158)  ; BufferLoad(srv,index,wot)
  %160 = extractvalue %dx.types.ResRet.i32 %159, 0
  %161 = icmp eq i32 %160, 0
  br i1 %161, label %246, label %162

; <label>:162                                     ; preds = %154
  br label %163

; <label>:163                                     ; preds = %163, %162
  %164 = phi float [ %243, %163 ], [ %155, %162 ]
  %165 = phi i32 [ %168, %163 ], [ %160, %162 ]
  %166 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %165)  ; FirstbitLo(value)
  %167 = add i32 %165, -1
  %168 = and i32 %167, %165
  %169 = shl i32 %156, 5
  %170 = add i32 %166, %169
  %171 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %170, i32 0)  ; BufferLoad(srv,index,wot)
  %172 = extractvalue %dx.types.ResRet.f32 %171, 0
  %173 = extractvalue %dx.types.ResRet.f32 %171, 1
  %174 = extractvalue %dx.types.ResRet.f32 %171, 2
  %175 = extractvalue %dx.types.ResRet.f32 %171, 3
  %176 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %170, i32 16)  ; BufferLoad(srv,index,wot)
  %177 = extractvalue %dx.types.ResRet.f32 %176, 0
  %178 = extractvalue %dx.types.ResRet.f32 %176, 1
  %179 = extractvalue %dx.types.ResRet.f32 %176, 2
  %180 = extractvalue %dx.types.ResRet.f32 %176, 3
  %181 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %170, i32 32)  ; BufferLoad(srv,index,wot)
  %182 = extractvalue %dx.types.ResRet.f32 %181, 0
  %183 = extractvalue %dx.types.ResRet.f32 %181, 1
  %184 = extractvalue %dx.types.ResRet.f32 %181, 2
  %185 = fsub fast float %172, %130
  %186 = fsub fast float %173, %133
  %187 = fsub fast float %174, %116
  %188 = call float @dx.op.dot3.f32(i32 55, float %151, float %152, float %153, float %185, float %186, float %187)  ; Dot3(ax,ay,az,bx,by,bz)
  %189 = call float @dx.op.dot3.f32(i32 55, float %151, float %152, float %153, float %177, float %178, float %179)  ; Dot3(ax,ay,az,bx,by,bz)
  %190 = call float @dx.op.dot3.f32(i32 55, float %185, float %186, float %187, float %177, float %178, float %179)  ; Dot3(ax,ay,az,bx,by,bz)
  %191 = call float @dx.op.dot3.f32(i32 55, float %177, float %178, float %179, float %177, float %178, float %179)  ; Dot3(ax,ay,az,bx,by,bz)
  %192 = fmul fast float %189, %188
  %193 = fsub fast float %192, %190
  %194 = fmul fast float %189, %189
  %195 = fsub fast float %191, %194
  %196 = fsub fast float -0.000000e+00, %180
  %197 = fdiv fast float %193, %195
  %198 = call float @dx.op.binary.f32(i32 35, float %197, float %196)  ; FMax(a,b)
  %199 = call float @dx.op.binary.f32(i32 36, float %198, float %180)  ; FMin(a,b)
  %200 = fmul fast float %199, %177
  %201 = fmul fast float %199, %178
  %202 = fmul fast float %199, %179
  %203 = fmul fast float %185, %185
  %204 = fmul fast float %186, %186
  %205 = fadd fast float %203, %204
  %206 = fmul fast float %187, %187
  %207 = fadd fast float %205, %206
  %208 = call float @dx.op.unary.f32(i32 24, float %207)  ; Sqrt(value)
  %209 = fsub fast float %208, %182
  %210 = fmul fast float %209, %183
  %211 = call float @dx.op.unary.f32(i32 7, float %210)  ; Saturate(value)
  %212 = fadd fast float %185, %200
  %213 = fadd fast float %186, %201
  %214 = fadd fast float %187, %202
  %215 = call float @dx.op.dot3.f32(i32 55, float %212, float %213, float %214, float %212, float %213, float %214)  ; Dot3(ax,ay,az,bx,by,bz)
  %216 = call float @dx.op.unary.f32(i32 25, float %215)  ; Rsqrt(value)
  %217 = fmul fast float %216, %212
  %218 = fmul fast float %216, %213
  %219 = fmul fast float %216, %214
  %220 = fmul fast float %216, %175
  %221 = call float @dx.op.unary.f32(i32 7, float %220)  ; Saturate(value)
  %222 = call float @dx.op.dot3.f32(i32 55, float %151, float %152, float %153, float %217, float %218, float %219)  ; Dot3(ax,ay,az,bx,by,bz)
  %223 = fmul fast float %222, 5.000000e-01
  %224 = fadd fast float %223, 5.000000e-01
  %225 = call float @dx.op.unary.f32(i32 7, float %224)  ; Saturate(value)
  %226 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %9, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %227 = extractvalue %dx.types.CBufRet.f32 %226, 0
  %228 = fmul fast float %227, %225
  %229 = extractvalue %dx.types.CBufRet.f32 %226, 1
  %230 = fadd fast float %228, %229
  %231 = extractvalue %dx.types.CBufRet.f32 %226, 2
  %232 = fmul fast float %231, %221
  %233 = extractvalue %dx.types.CBufRet.f32 %226, 3
  %234 = fadd fast float %232, %233
  %235 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %7, float %230, float %234, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %236 = extractvalue %dx.types.ResRet.f32 %235, 0
  %237 = fsub fast float 1.000000e+00, %236
  %238 = fmul fast float %237, %211
  %239 = fadd fast float %236, -1.000000e+00
  %240 = fadd fast float %239, %238
  %241 = fmul fast float %240, %184
  %242 = fadd fast float %241, 1.000000e+00
  %243 = fmul fast float %242, %164
  %244 = icmp eq i32 %168, 0
  br i1 %244, label %245, label %163

; <label>:245                                     ; preds = %163
  br label %246

; <label>:246                                     ; preds = %245, %154
  %247 = phi float [ %155, %154 ], [ %243, %245 ]
  %248 = add nuw nsw i32 %156, 1
  %249 = icmp ult i32 %248, 32
  %250 = shl i32 %248, 5
  %251 = icmp ult i32 %250, %25
  %252 = and i1 %249, %251
  br i1 %252, label %154, label %253

; <label>:253                                     ; preds = %246
  %254 = fcmp fast olt float %109, -1.000000e+00
  br i1 %254, label %255, label %256, !dx.controlflow.hints !31

; <label>:255                                     ; preds = %253
  br label %256

; <label>:256                                     ; preds = %255, %253, %0
  %257 = phi float [ 1.000000e+00, %255 ], [ %247, %253 ], [ 1.000000e+00, %0 ]
  %258 = fptoui float %16 to i32
  %259 = icmp ult i32 %12, %258
  %260 = fptoui float %17 to i32
  %261 = icmp ult i32 %13, %260
  %262 = and i1 %259, %261
  br i1 %262, label %263, label %267, !dx.controlflow.hints !32

; <label>:263                                     ; preds = %256
  %264 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %1, i32 undef, i32 %12, i32 %13, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %265 = extractvalue %dx.types.ResRet.f32 %264, 0
  %266 = call float @dx.op.binary.f32(i32 36, float %265, float %257)  ; FMin(a,b)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %12, i32 %13, i32 undef, float %266, float %266, float %266, float %266, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %267

; <label>:267                                     ; preds = %263, %256
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @dx.op.groupId.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.threadId.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare float @dx.op.unary.f32(i32, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.dot3.f32(i32, float, float, float, float, float, float) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.unaryBits.i32(i32, i32) #0

; Function Attrs: nounwind
declare void @dx.op.textureStore.f32(i32, %dx.types.Handle, i32, i32, i32, float, float, float, float, i8) #1

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32) #2

; Function Attrs: nounwind readnone
declare float @dx.op.binary.f32(i32, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

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

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32, %dx.types.Handle, i32, i32) #2

attributes #0 = { nounwind readnone }
attributes #1 = { nounwind }
attributes #2 = { nounwind readonly }

!llvm.ident = !{!0}
!dx.version = !{!1}
!dx.valver = !{!2}
!dx.shaderModel = !{!3}
!dx.resources = !{!4}
!dx.entryPoints = !{!23}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !15, !18, !21}
!5 = !{!6, !8, !9, !11, !13}
!6 = !{i32 0, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 0, i32 1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 1, i32 1, i32 2, i32 0, !7}
!9 = !{i32 2, %"class.Texture2DMS<vector<unsigned int, 4>, 0>"* undef, !"", i32 0, i32 2, i32 1, i32 3, i32 0, !10}
!10 = !{i32 0, i32 5}
!11 = !{i32 3, %"class.StructuredBuffer<MDAOOccluder>"* undef, !"", i32 0, i32 3, i32 1, i32 12, i32 0, !12}
!12 = !{i32 1, i32 48}
!13 = !{i32 4, %"class.StructuredBuffer<MDAOOccluderCulling>"* undef, !"", i32 0, i32 5, i32 1, i32 12, i32 0, !14}
!14 = !{i32 1, i32 132}
!15 = !{!16}
!16 = !{i32 0, %"class.RWTexture2D<float>"* undef, !"", i32 0, i32 0, i32 1, i32 2, i1 false, i1 false, i1 false, !17}
!17 = !{i32 0, i32 14}
!18 = !{!19, !20}
!19 = !{i32 0, %MDAOConstants* undef, !"", i32 0, i32 0, i32 1, i32 176, null}
!20 = !{i32 1, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!21 = !{!22}
!22 = !{i32 0, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!23 = !{void ()* @cs_mdao_compute_occlusion, !"cs_mdao_compute_occlusion", null, !4, !24}
!24 = !{i32 0, i64 272, i32 4, !25}
!25 = !{i32 16, i32 16, i32 1}
!26 = distinct !{!26, !"dx.controlflow.hints", i32 2}
!27 = !{!28, !28, i64 0}
!28 = !{!"int", !29, i64 0}
!29 = !{!"omnipotent char", !30, i64 0}
!30 = !{!"Simple C/C++ TBAA"}
!31 = distinct !{!31, !"dx.controlflow.hints", i32 2}
!32 = distinct !{!32, !"dx.controlflow.hints", i32 2}

