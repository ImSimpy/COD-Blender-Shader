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
; shader hash: 1a427ae8f0216ee3eae960acacd07f66
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
;                                   texture     u32          2d      T2             t2     1
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
%"class.Texture2D<unsigned int>" = type { i32, %"class.Texture2D<unsigned int>::mips_type" }
%"class.Texture2D<unsigned int>::mips_type" = type { i32 }
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
  %14 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %9, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %15 = extractvalue %dx.types.CBufRet.f32 %14, 0
  %16 = extractvalue %dx.types.CBufRet.f32 %14, 1
  %17 = extractvalue %dx.types.CBufRet.f32 %14, 2
  %18 = extractvalue %dx.types.CBufRet.f32 %14, 3
  %19 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %9, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %20 = extractvalue %dx.types.CBufRet.i32 %19, 0
  %21 = mul i32 %20, %11
  %22 = add i32 %21, %10
  %23 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %22, i32 0)  ; BufferLoad(srv,index,wot)
  %24 = extractvalue %dx.types.ResRet.i32 %23, 0
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %236, label %26, !dx.controlflow.hints !26

; <label>:26                                      ; preds = %0
  %27 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %9, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %28 = extractvalue %dx.types.CBufRet.f32 %27, 0
  %29 = extractvalue %dx.types.CBufRet.f32 %27, 1
  %30 = sitofp i32 %12 to float
  %31 = sitofp i32 %13 to float
  %32 = fmul fast float %17, %30
  %33 = fmul fast float %32, %28
  %34 = fmul fast float %18, %31
  %35 = fmul fast float %34, %29
  %36 = fptoui float %33 to i32
  %37 = fptoui float %35 to i32
  %38 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %4, i32 0, i32 %36, i32 %37, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %39 = extractvalue %dx.types.ResRet.i32 %38, 0
  %40 = lshr i32 %39, 8
  %41 = and i32 %39, 255
  %42 = and i32 %40, 255
  %43 = uitofp i32 %41 to float
  %44 = uitofp i32 %42 to float
  %45 = fmul fast float %43, 0x3F80101020000000
  %46 = fmul fast float %44, 0x3F80101020000000
  %47 = fadd fast float %45, -1.000000e+00
  %48 = fadd fast float %46, -1.000000e+00
  %49 = call float @dx.op.unary.f32(i32 6, float %47)  ; FAbs(value)
  %50 = fsub fast float 1.000000e+00, %49
  %51 = call float @dx.op.unary.f32(i32 6, float %48)  ; FAbs(value)
  %52 = fsub fast float %50, %51
  %53 = fsub fast float -0.000000e+00, %52
  %54 = call float @dx.op.binary.f32(i32 35, float %53, float 0.000000e+00)  ; FMax(a,b)
  %55 = fcmp fast ogt float %47, 0.000000e+00
  %56 = fsub fast float -0.000000e+00, %54
  %57 = select i1 %55, float %56, float %54
  %58 = fadd fast float %57, %47
  %59 = fcmp fast ogt float %48, 0.000000e+00
  %60 = select i1 %59, float %56, float %54
  %61 = fadd fast float %60, %48
  %62 = call float @dx.op.dot3.f32(i32 55, float %58, float %61, float %52, float %58, float %61, float %52)  ; Dot3(ax,ay,az,bx,by,bz)
  %63 = call float @dx.op.unary.f32(i32 25, float %62)  ; Rsqrt(value)
  %64 = fmul fast float %58, %63
  %65 = fmul fast float %61, %63
  %66 = fmul fast float %63, %52
  %67 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %8, i32 99)  ; CBufferLoadLegacy(handle,regIndex)
  %68 = extractvalue %dx.types.CBufRet.f32 %67, 0
  %69 = extractvalue %dx.types.CBufRet.f32 %67, 1
  %70 = extractvalue %dx.types.CBufRet.f32 %67, 2
  %71 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %8, i32 100)  ; CBufferLoadLegacy(handle,regIndex)
  %72 = extractvalue %dx.types.CBufRet.f32 %71, 0
  %73 = extractvalue %dx.types.CBufRet.f32 %71, 1
  %74 = extractvalue %dx.types.CBufRet.f32 %71, 2
  %75 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %8, i32 101)  ; CBufferLoadLegacy(handle,regIndex)
  %76 = extractvalue %dx.types.CBufRet.f32 %75, 0
  %77 = extractvalue %dx.types.CBufRet.f32 %75, 1
  %78 = extractvalue %dx.types.CBufRet.f32 %75, 2
  %79 = fmul fast float %64, %68
  %80 = call float @dx.op.tertiary.f32(i32 46, float %65, float %69, float %79)  ; FMad(a,b,c)
  %81 = call float @dx.op.tertiary.f32(i32 46, float %66, float %70, float %80)  ; FMad(a,b,c)
  %82 = fmul fast float %64, %72
  %83 = call float @dx.op.tertiary.f32(i32 46, float %65, float %73, float %82)  ; FMad(a,b,c)
  %84 = call float @dx.op.tertiary.f32(i32 46, float %66, float %74, float %83)  ; FMad(a,b,c)
  %85 = fmul fast float %64, %76
  %86 = call float @dx.op.tertiary.f32(i32 46, float %65, float %77, float %85)  ; FMad(a,b,c)
  %87 = call float @dx.op.tertiary.f32(i32 46, float %66, float %78, float %86)  ; FMad(a,b,c)
  %88 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %7, float %32, float %34, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %89 = extractvalue %dx.types.ResRet.f32 %88, 0
  %90 = fcmp fast ogt float %89, -1.000000e+00
  %91 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %8, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %92 = extractvalue %dx.types.CBufRet.f32 %91, 1
  %93 = select i1 %90, float %92, float 1.000000e+00
  %94 = fadd fast float %89, 1.000000e+00
  %95 = fmul fast float %93, %94
  %96 = call float @dx.op.unary.f32(i32 6, float %95)  ; FAbs(value)
  %97 = uitofp i32 %12 to float
  %98 = uitofp i32 %13 to float
  %99 = fadd fast float %97, 5.000000e-01
  %100 = fadd fast float %98, 5.000000e-01
  %101 = fmul fast float %99, 2.000000e+00
  %102 = fmul fast float %101, %17
  %103 = fadd fast float %102, -1.000000e+00
  %104 = fmul fast float %18, 2.000000e+00
  %105 = fmul fast float %104, %100
  %106 = fsub fast float 1.000000e+00, %105
  %107 = fmul fast float %96, %103
  %108 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %9, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %109 = extractvalue %dx.types.CBufRet.f32 %108, 0
  %110 = fmul fast float %107, %109
  %111 = fmul fast float %96, %106
  %112 = extractvalue %dx.types.CBufRet.f32 %108, 1
  %113 = fmul fast float %111, %112
  %114 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %9, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %115 = extractvalue %dx.types.CBufRet.f32 %114, 0
  %116 = extractvalue %dx.types.CBufRet.f32 %114, 1
  %117 = extractvalue %dx.types.CBufRet.f32 %114, 2
  %118 = call float @dx.op.dot3.f32(i32 55, float %81, float %84, float %87, float %115, float %116, float %117)  ; Dot3(ax,ay,az,bx,by,bz)
  %119 = call float @dx.op.unary.f32(i32 7, float %118)  ; Saturate(value)
  %120 = fsub fast float %115, %81
  %121 = fsub fast float %116, %84
  %122 = fsub fast float %117, %87
  %123 = fmul fast float %120, %119
  %124 = fmul fast float %121, %119
  %125 = fmul fast float %122, %119
  %126 = fadd fast float %123, %81
  %127 = fadd fast float %124, %84
  %128 = fadd fast float %125, %87
  %129 = call float @dx.op.dot3.f32(i32 55, float %126, float %127, float %128, float %126, float %127, float %128)  ; Dot3(ax,ay,az,bx,by,bz)
  %130 = call float @dx.op.unary.f32(i32 25, float %129)  ; Rsqrt(value)
  %131 = fmul fast float %126, %130
  %132 = fmul fast float %127, %130
  %133 = fmul fast float %128, %130
  br label %134

; <label>:134                                     ; preds = %226, %26
  %135 = phi float [ %227, %226 ], [ 1.000000e+00, %26 ]
  %136 = phi i32 [ %228, %226 ], [ 0, %26 ]
  %137 = shl i32 %136, 2
  %138 = add nuw nsw i32 %137, 4
  %139 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %22, i32 %138)  ; BufferLoad(srv,index,wot)
  %140 = extractvalue %dx.types.ResRet.i32 %139, 0
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %226, label %142

; <label>:142                                     ; preds = %134
  br label %143

; <label>:143                                     ; preds = %143, %142
  %144 = phi float [ %223, %143 ], [ %135, %142 ]
  %145 = phi i32 [ %148, %143 ], [ %140, %142 ]
  %146 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %145)  ; FirstbitLo(value)
  %147 = add i32 %145, -1
  %148 = and i32 %147, %145
  %149 = shl i32 %136, 5
  %150 = add i32 %146, %149
  %151 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %150, i32 0)  ; BufferLoad(srv,index,wot)
  %152 = extractvalue %dx.types.ResRet.f32 %151, 0
  %153 = extractvalue %dx.types.ResRet.f32 %151, 1
  %154 = extractvalue %dx.types.ResRet.f32 %151, 2
  %155 = extractvalue %dx.types.ResRet.f32 %151, 3
  %156 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %150, i32 16)  ; BufferLoad(srv,index,wot)
  %157 = extractvalue %dx.types.ResRet.f32 %156, 0
  %158 = extractvalue %dx.types.ResRet.f32 %156, 1
  %159 = extractvalue %dx.types.ResRet.f32 %156, 2
  %160 = extractvalue %dx.types.ResRet.f32 %156, 3
  %161 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %150, i32 32)  ; BufferLoad(srv,index,wot)
  %162 = extractvalue %dx.types.ResRet.f32 %161, 0
  %163 = extractvalue %dx.types.ResRet.f32 %161, 1
  %164 = extractvalue %dx.types.ResRet.f32 %161, 2
  %165 = fsub fast float %152, %110
  %166 = fsub fast float %153, %113
  %167 = fsub fast float %154, %96
  %168 = call float @dx.op.dot3.f32(i32 55, float %131, float %132, float %133, float %165, float %166, float %167)  ; Dot3(ax,ay,az,bx,by,bz)
  %169 = call float @dx.op.dot3.f32(i32 55, float %131, float %132, float %133, float %157, float %158, float %159)  ; Dot3(ax,ay,az,bx,by,bz)
  %170 = call float @dx.op.dot3.f32(i32 55, float %165, float %166, float %167, float %157, float %158, float %159)  ; Dot3(ax,ay,az,bx,by,bz)
  %171 = call float @dx.op.dot3.f32(i32 55, float %157, float %158, float %159, float %157, float %158, float %159)  ; Dot3(ax,ay,az,bx,by,bz)
  %172 = fmul fast float %169, %168
  %173 = fsub fast float %172, %170
  %174 = fmul fast float %169, %169
  %175 = fsub fast float %171, %174
  %176 = fsub fast float -0.000000e+00, %160
  %177 = fdiv fast float %173, %175
  %178 = call float @dx.op.binary.f32(i32 35, float %177, float %176)  ; FMax(a,b)
  %179 = call float @dx.op.binary.f32(i32 36, float %178, float %160)  ; FMin(a,b)
  %180 = fmul fast float %179, %157
  %181 = fmul fast float %179, %158
  %182 = fmul fast float %179, %159
  %183 = fmul fast float %165, %165
  %184 = fmul fast float %166, %166
  %185 = fadd fast float %183, %184
  %186 = fmul fast float %167, %167
  %187 = fadd fast float %185, %186
  %188 = call float @dx.op.unary.f32(i32 24, float %187)  ; Sqrt(value)
  %189 = fsub fast float %188, %162
  %190 = fmul fast float %189, %163
  %191 = call float @dx.op.unary.f32(i32 7, float %190)  ; Saturate(value)
  %192 = fadd fast float %165, %180
  %193 = fadd fast float %166, %181
  %194 = fadd fast float %167, %182
  %195 = call float @dx.op.dot3.f32(i32 55, float %192, float %193, float %194, float %192, float %193, float %194)  ; Dot3(ax,ay,az,bx,by,bz)
  %196 = call float @dx.op.unary.f32(i32 25, float %195)  ; Rsqrt(value)
  %197 = fmul fast float %196, %192
  %198 = fmul fast float %196, %193
  %199 = fmul fast float %196, %194
  %200 = fmul fast float %196, %155
  %201 = call float @dx.op.unary.f32(i32 7, float %200)  ; Saturate(value)
  %202 = call float @dx.op.dot3.f32(i32 55, float %131, float %132, float %133, float %197, float %198, float %199)  ; Dot3(ax,ay,az,bx,by,bz)
  %203 = fmul fast float %202, 5.000000e-01
  %204 = fadd fast float %203, 5.000000e-01
  %205 = call float @dx.op.unary.f32(i32 7, float %204)  ; Saturate(value)
  %206 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %9, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %207 = extractvalue %dx.types.CBufRet.f32 %206, 0
  %208 = fmul fast float %207, %205
  %209 = extractvalue %dx.types.CBufRet.f32 %206, 1
  %210 = fadd fast float %208, %209
  %211 = extractvalue %dx.types.CBufRet.f32 %206, 2
  %212 = fmul fast float %211, %201
  %213 = extractvalue %dx.types.CBufRet.f32 %206, 3
  %214 = fadd fast float %212, %213
  %215 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %7, float %210, float %214, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %216 = extractvalue %dx.types.ResRet.f32 %215, 0
  %217 = fsub fast float 1.000000e+00, %216
  %218 = fmul fast float %217, %191
  %219 = fadd fast float %216, -1.000000e+00
  %220 = fadd fast float %219, %218
  %221 = fmul fast float %220, %164
  %222 = fadd fast float %221, 1.000000e+00
  %223 = fmul fast float %222, %144
  %224 = icmp eq i32 %148, 0
  br i1 %224, label %225, label %143

; <label>:225                                     ; preds = %143
  br label %226

; <label>:226                                     ; preds = %225, %134
  %227 = phi float [ %135, %134 ], [ %223, %225 ]
  %228 = add nuw nsw i32 %136, 1
  %229 = icmp ult i32 %228, 32
  %230 = shl i32 %228, 5
  %231 = icmp ult i32 %230, %24
  %232 = and i1 %229, %231
  br i1 %232, label %134, label %233

; <label>:233                                     ; preds = %226
  %234 = fcmp fast olt float %89, -1.000000e+00
  br i1 %234, label %235, label %236, !dx.controlflow.hints !27

; <label>:235                                     ; preds = %233
  br label %236

; <label>:236                                     ; preds = %235, %233, %0
  %237 = phi float [ 1.000000e+00, %235 ], [ %227, %233 ], [ 1.000000e+00, %0 ]
  %238 = fptoui float %15 to i32
  %239 = icmp ult i32 %12, %238
  %240 = fptoui float %16 to i32
  %241 = icmp ult i32 %13, %240
  %242 = and i1 %239, %241
  br i1 %242, label %243, label %247, !dx.controlflow.hints !28

; <label>:243                                     ; preds = %236
  %244 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %1, i32 undef, i32 %12, i32 %13, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %245 = extractvalue %dx.types.ResRet.f32 %244, 0
  %246 = call float @dx.op.binary.f32(i32 36, float %245, float %237)  ; FMin(a,b)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %12, i32 %13, i32 undef, float %246, float %246, float %246, float %246, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %247

; <label>:247                                     ; preds = %243, %236
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @dx.op.groupId.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.threadId.i32(i32, i32) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32) #1

; Function Attrs: nounwind readnone
declare float @dx.op.unary.f32(i32, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.dot3.f32(i32, float, float, float, float, float, float) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.unaryBits.i32(i32, i32) #0

; Function Attrs: nounwind
declare void @dx.op.textureStore.f32(i32, %dx.types.Handle, i32, i32, i32, float, float, float, float, i8) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32) #1

; Function Attrs: nounwind readnone
declare float @dx.op.binary.f32(i32, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #1

; Function Attrs: nounwind readnone
declare float @dx.op.tertiary.f32(i32, float, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32, %dx.types.Handle, i32) #1

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32, %dx.types.Handle, i32) #1

; Function Attrs: nounwind readonly
declare %dx.types.Handle @dx.op.createHandle(i32, i8, i32, i32, i1) #1

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32, %dx.types.Handle, i32, i32) #1

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32, %dx.types.Handle, i32, i32) #1

attributes #0 = { nounwind readnone }
attributes #1 = { nounwind readonly }
attributes #2 = { nounwind }

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
!9 = !{i32 2, %"class.Texture2D<unsigned int>"* undef, !"", i32 0, i32 2, i32 1, i32 2, i32 0, !10}
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
!27 = distinct !{!27, !"dx.controlflow.hints", i32 2}
!28 = distinct !{!28, !"dx.controlflow.hints", i32 2}

