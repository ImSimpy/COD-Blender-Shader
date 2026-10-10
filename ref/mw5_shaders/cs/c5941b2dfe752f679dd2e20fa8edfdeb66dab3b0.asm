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
; shader hash: b65f0b2496cf1b0d84343b46971ed96a
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
;
; Resource Bindings:
;
; Name                                 Type  Format         Dim      ID      HLSL Bind  Count
; ------------------------------ ---------- ------- ----------- ------- -------------- ------
;                                   cbuffer      NA          NA     CB0            cb3     1
;                                   sampler      NA          NA      S0             s1     1
;                                   sampler      NA          NA      S1             s2     1
;                                   texture     f32          2d      T0            t13     1
;                                   texture     f32          2d      T1             t0     1
;                                   texture     f32          2d      T2             t1     1
;                                   texture     f32          2d      T3             t2     1
;                                   texture     f32          2d      T4             t3     1
;                                   texture     u32          2d      T5             t4     1
;                                   texture     u32          2d      T6            t28     1
;                                       UAV     f32          2d      U0             u0     1
;                                       UAV     f32          2d      U1             u1     1
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
%"class.RWTexture2D<vector<float, 3> >" = type { <3 x float> }
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
%struct.SamplerState = type { i32 }

@"\01?upsampleMask@@3IA" = external addrspace(3) global i32, align 4
@offsets.i.0.hca = internal unnamed_addr constant [8 x i32] [i32 0, i32 -1, i32 1, i32 0, i32 -1, i32 1, i32 -1, i32 1]
@offsets.i.1.hca = internal unnamed_addr constant [8 x i32] [i32 -1, i32 0, i32 0, i32 1, i32 -1, i32 -1, i32 1, i32 1]
@"\01?raymarchingSceneDepthShared@@3PAY05$$CAMA.1dim" = addrspace(3) global [36 x float] undef, align 4

define void @cs_fog_raymarching_upsample() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 28, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 13, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call i32 @dx.op.flattenedThreadIdInGroup.i32(i32 96)  ; FlattenedThreadIdInGroup()
  %14 = call i32 @dx.op.threadIdInGroup.i32(i32 95, i32 0)  ; ThreadIdInGroup(component)
  %15 = call i32 @dx.op.threadIdInGroup.i32(i32 95, i32 1)  ; ThreadIdInGroup(component)
  %16 = call i32 @dx.op.threadId.i32(i32 93, i32 0)  ; ThreadId(component)
  %17 = call i32 @dx.op.threadId.i32(i32 93, i32 1)  ; ThreadId(component)
  %18 = uitofp i32 %16 to float
  %19 = uitofp i32 %17 to float
  %20 = fadd fast float %18, 5.000000e-01
  %21 = fadd fast float %19, 5.000000e-01
  %22 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %23 = extractvalue %dx.types.CBufRet.f32 %22, 2
  %24 = extractvalue %dx.types.CBufRet.f32 %22, 3
  %25 = fmul fast float %23, %20
  %26 = fmul fast float %24, %21
  %27 = icmp ult i32 %14, 3
  %28 = icmp ult i32 %15, 3
  %29 = and i1 %27, %28
  %30 = lshr i32 %16, 1
  %31 = lshr i32 %17, 1
  br i1 %29, label %32, label %86, !dx.controlflow.hints !26

; <label>:32                                      ; preds = %0
  %33 = and i32 %30, 2147483644
  %34 = and i32 %31, 2147483644
  %35 = shl i32 %14, 1
  %36 = shl i32 %15, 1
  %37 = add i32 %33, %35
  %38 = add i32 %34, %36
  %39 = uitofp i32 %37 to float
  %40 = uitofp i32 %38 to float
  %41 = fmul fast float %39, 2.000000e+00
  %42 = fmul fast float %40, 2.000000e+00
  %43 = fmul fast float %41, %23
  %44 = fmul fast float %42, %24
  %45 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %7, %dx.types.Handle %11, float %43, float %44, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %46 = extractvalue %dx.types.ResRet.f32 %45, 0
  %47 = extractvalue %dx.types.ResRet.f32 %45, 1
  %48 = extractvalue %dx.types.ResRet.f32 %45, 2
  %49 = extractvalue %dx.types.ResRet.f32 %45, 3
  %50 = fcmp fast ogt float %46, -1.000000e+00
  %51 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %52 = extractvalue %dx.types.CBufRet.f32 %51, 1
  %53 = select i1 %50, float %52, float 1.000000e+00
  %54 = fadd fast float %46, 1.000000e+00
  %55 = fmul fast float %53, %54
  %56 = call float @dx.op.unary.f32(i32 6, float %55)  ; FAbs(value)
  %57 = fcmp fast ogt float %47, -1.000000e+00
  %58 = select i1 %57, float %52, float 1.000000e+00
  %59 = fadd fast float %47, 1.000000e+00
  %60 = fmul fast float %58, %59
  %61 = call float @dx.op.unary.f32(i32 6, float %60)  ; FAbs(value)
  %62 = fcmp fast ogt float %48, -1.000000e+00
  %63 = select i1 %62, float %52, float 1.000000e+00
  %64 = fadd fast float %48, 1.000000e+00
  %65 = fmul fast float %63, %64
  %66 = call float @dx.op.unary.f32(i32 6, float %65)  ; FAbs(value)
  %67 = fcmp fast ogt float %49, -1.000000e+00
  %68 = select i1 %67, float %52, float 1.000000e+00
  %69 = fadd fast float %49, 1.000000e+00
  %70 = fmul fast float %68, %69
  %71 = call float @dx.op.unary.f32(i32 6, float %70)  ; FAbs(value)
  %72 = mul i32 %35, 6
  %73 = add i32 %36, %72
  %74 = getelementptr [36 x float], [36 x float] addrspace(3)* @"\01?raymarchingSceneDepthShared@@3PAY05$$CAMA.1dim", i32 0, i32 %73
  store float %71, float addrspace(3)* %74, align 4, !tbaa !27, !noalias !31
  %75 = or i32 %35, 1
  %76 = mul i32 %75, 6
  %77 = add i32 %36, %76
  %78 = getelementptr [36 x float], [36 x float] addrspace(3)* @"\01?raymarchingSceneDepthShared@@3PAY05$$CAMA.1dim", i32 0, i32 %77
  store float %66, float addrspace(3)* %78, align 4, !tbaa !27, !noalias !31
  %79 = or i32 %36, 1
  %80 = mul i32 %35, 6
  %81 = add i32 %79, %80
  %82 = getelementptr [36 x float], [36 x float] addrspace(3)* @"\01?raymarchingSceneDepthShared@@3PAY05$$CAMA.1dim", i32 0, i32 %81
  store float %56, float addrspace(3)* %82, align 4, !tbaa !27, !noalias !31
  %83 = mul i32 %75, 6
  %84 = add i32 %79, %83
  %85 = getelementptr [36 x float], [36 x float] addrspace(3)* @"\01?raymarchingSceneDepthShared@@3PAY05$$CAMA.1dim", i32 0, i32 %84
  store float %61, float addrspace(3)* %85, align 4, !tbaa !27, !noalias !31
  br label %86

; <label>:86                                      ; preds = %32, %0
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %87 = lshr i32 %14, 1
  %88 = lshr i32 %15, 1
  %89 = add nuw i32 %87, 1
  %90 = add nuw i32 %88, 1
  %91 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %8, i32 0, i32 %16, i32 %17, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %92 = extractvalue %dx.types.ResRet.f32 %91, 0
  %93 = fcmp fast ogt float %92, -1.000000e+00
  %94 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %95 = extractvalue %dx.types.CBufRet.f32 %94, 1
  %96 = select i1 %93, float %95, float 1.000000e+00
  %97 = fadd fast float %92, 1.000000e+00
  %98 = fmul fast float %96, %97
  %99 = call float @dx.op.unary.f32(i32 6, float %98)  ; FAbs(value)
  %100 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %12, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %101 = extractvalue %dx.types.CBufRet.i32 %100, 0
  %102 = and i32 %101, 16384
  %103 = icmp ne i32 %102, 0
  %104 = select i1 %103, i32 %30, i32 0
  %105 = select i1 %103, i32 %31, i32 0
  %106 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %3, i32 0, i32 %104, i32 %105, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %107 = extractvalue %dx.types.ResRet.i32 %106, 0
  %108 = and i32 %107, 196608
  %109 = icmp ult i32 %107, -262144
  %110 = lshr i32 %107, 18
  %111 = uitofp i32 %110 to float
  %112 = fmul fast float %111, 0x3F4C00EBA0000000
  %113 = call float @dx.op.unary.f32(i32 21, float %112)  ; Exp(value)
  %114 = fadd fast float %113, -1.000000e+00
  %115 = icmp ne i32 %108, 131072
  %116 = and i1 %109, %115
  %117 = call float @dx.op.binary.f32(i32 36, float %114, float %99)  ; FMin(a,b)
  %118 = select i1 %116, float %117, float %99
  %119 = and i32 %17, 4
  %120 = lshr i32 %16, 2
  %121 = and i32 %120, 3
  %122 = or i32 %119, %121
  %123 = icmp eq i32 %13, 0
  br i1 %123, label %124, label %129, !dx.controlflow.hints !34

; <label>:124                                     ; preds = %86
  %125 = lshr i32 %17, 3
  %126 = lshr i32 %16, 4
  %127 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %4, i32 0, i32 %126, i32 %125, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %128 = extractvalue %dx.types.ResRet.i32 %127, 0
  store i32 %128, i32 addrspace(3)* @"\01?upsampleMask@@3IA", align 4, !tbaa !35, !noalias !31
  br label %129

; <label>:129                                     ; preds = %124, %86
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %130 = load i32, i32 addrspace(3)* @"\01?upsampleMask@@3IA", align 4, !tbaa !35, !noalias !31
  %131 = shl i32 1, %122
  %132 = and i32 %130, %131
  %133 = icmp eq i32 %132, 0
  %134 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 423)  ; CBufferLoadLegacy(handle,regIndex)
  %135 = extractvalue %dx.types.CBufRet.f32 %134, 2
  %136 = fmul fast float %135, %118
  %137 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 424)  ; CBufferLoadLegacy(handle,regIndex)
  %138 = extractvalue %dx.types.CBufRet.f32 %137, 1
  %139 = fcmp fast ogt float %136, %138
  br i1 %139, label %140, label %374, !dx.controlflow.hints !37

; <label>:140                                     ; preds = %129
  %141 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %142 = extractvalue %dx.types.CBufRet.f32 %141, 3
  %143 = fcmp fast oge float %118, %142
  %144 = mul i32 %89, 6
  %145 = add i32 %90, %144
  %146 = getelementptr [36 x float], [36 x float] addrspace(3)* @"\01?raymarchingSceneDepthShared@@3PAY05$$CAMA.1dim", i32 0, i32 %145
  %147 = load float, float addrspace(3)* %146, align 4, !tbaa !27, !noalias !31
  %148 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %149 = extractvalue %dx.types.CBufRet.f32 %148, 3
  %150 = fcmp fast oge float %147, %149
  %151 = and i1 %143, %150
  %152 = fsub fast float %147, %118
  %153 = call float @dx.op.unary.f32(i32 6, float %152)  ; FAbs(value)
  %154 = select i1 %151, float 0.000000e+00, float %153
  br label %155

; <label>:155                                     ; preds = %180, %140
  %156 = phi i32 [ -1, %140 ], [ %185, %180 ]
  %157 = phi i32 [ 0, %140 ], [ %183, %180 ]
  %158 = phi float [ %154, %140 ], [ %181, %180 ]
  %159 = phi i32 [ 0, %140 ], [ %176, %180 ]
  %160 = phi i32 [ 0, %140 ], [ %177, %180 ]
  %161 = phi i32 [ 0, %140 ], [ %178, %180 ]
  %162 = add nsw i32 %156, %90
  %163 = add nsw i32 %157, %89
  %164 = mul i32 %163, 6
  %165 = add i32 %162, %164
  %166 = getelementptr [36 x float], [36 x float] addrspace(3)* @"\01?raymarchingSceneDepthShared@@3PAY05$$CAMA.1dim", i32 0, i32 %165
  %167 = load float, float addrspace(3)* %166, align 4, !tbaa !27, !noalias !31
  %168 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %169 = extractvalue %dx.types.CBufRet.f32 %168, 3
  %170 = fcmp fast oge float %167, %169
  %171 = and i1 %143, %170
  %172 = fsub fast float %167, %118
  %173 = call float @dx.op.unary.f32(i32 6, float %172)  ; FAbs(value)
  %174 = select i1 %171, float 0.000000e+00, float %173
  %175 = fcmp fast olt float %174, %158
  %176 = select i1 %175, i32 %157, i32 %159
  %177 = select i1 %175, i32 %156, i32 %160
  %178 = add nuw nsw i32 %161, 1
  %179 = icmp eq i32 %178, 8
  br i1 %179, label %186, label %180

; <label>:180                                     ; preds = %155
  %181 = select i1 %175, float %174, float %158
  %182 = getelementptr [8 x i32], [8 x i32]* @offsets.i.0.hca, i32 0, i32 %178
  %183 = load i32, i32* %182, align 4
  %184 = getelementptr [8 x i32], [8 x i32]* @offsets.i.1.hca, i32 0, i32 %178
  %185 = load i32, i32* %184, align 4
  br label %155

; <label>:186                                     ; preds = %155
  %187 = sitofp i32 %176 to float
  %188 = sitofp i32 %177 to float
  %189 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %190 = extractvalue %dx.types.CBufRet.f32 %189, 2
  %191 = extractvalue %dx.types.CBufRet.f32 %189, 3
  %192 = fmul fast float %190, %187
  %193 = fmul fast float %191, %188
  %194 = fadd fast float %192, %25
  %195 = fadd fast float %193, %26
  br i1 %133, label %196, label %202, !dx.controlflow.hints !38

; <label>:196                                     ; preds = %186
  %197 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %10, float %194, float %195, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %198 = extractvalue %dx.types.ResRet.f32 %197, 0
  %199 = extractvalue %dx.types.ResRet.f32 %197, 1
  %200 = extractvalue %dx.types.ResRet.f32 %197, 2
  %201 = extractvalue %dx.types.ResRet.f32 %197, 3
  br label %374

; <label>:202                                     ; preds = %186
  %203 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %10, float %194, float %195, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %204 = extractvalue %dx.types.ResRet.f32 %203, 0
  %205 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 425)  ; CBufferLoadLegacy(handle,regIndex)
  %206 = extractvalue %dx.types.CBufRet.f32 %205, 0
  %207 = extractvalue %dx.types.CBufRet.f32 %205, 1
  %208 = fdiv fast float 1.000000e+00, %204
  %209 = fmul fast float %206, %208
  %210 = fmul fast float %207, %208
  %211 = extractvalue %dx.types.CBufRet.f32 %205, 2
  %212 = extractvalue %dx.types.CBufRet.f32 %205, 3
  %213 = call float @dx.op.binary.f32(i32 36, float %211, float %209)  ; FMin(a,b)
  %214 = call float @dx.op.binary.f32(i32 36, float %212, float %210)  ; FMin(a,b)
  %215 = shl i32 %16, 1
  %216 = uitofp i32 %215 to float
  %217 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %218 = extractvalue %dx.types.CBufRet.f32 %217, 2
  %219 = fmul fast float %218, 0x3FE3C6EF40000000
  %220 = frem fast float %216, 2.560000e+02
  %221 = frem fast float %19, 2.560000e+02
  %222 = fptoui float %220 to i32
  %223 = fptoui float %221 to i32
  %224 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %9, i32 0, i32 %222, i32 %223, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %225 = extractvalue %dx.types.ResRet.f32 %224, 0
  %226 = extractvalue %dx.types.ResRet.f32 %224, 1
  %227 = extractvalue %dx.types.ResRet.f32 %224, 2
  %228 = extractvalue %dx.types.ResRet.f32 %224, 3
  %229 = fadd fast float %225, %219
  %230 = fadd fast float %226, %219
  %231 = fadd fast float %227, %219
  %232 = fadd fast float %228, %219
  %233 = call float @dx.op.unary.f32(i32 22, float %229)  ; Frc(value)
  %234 = call float @dx.op.unary.f32(i32 22, float %230)  ; Frc(value)
  %235 = call float @dx.op.unary.f32(i32 22, float %231)  ; Frc(value)
  %236 = call float @dx.op.unary.f32(i32 22, float %232)  ; Frc(value)
  %237 = fmul fast float %233, 2.000000e+00
  %238 = fmul fast float %234, 2.000000e+00
  %239 = fadd fast float %237, -1.000000e+00
  %240 = fadd fast float %238, -1.000000e+00
  %241 = fmul fast float %239, %213
  %242 = fmul fast float %240, %214
  %243 = fadd fast float %241, %194
  %244 = fadd fast float %242, %195
  %245 = fmul fast float %235, 2.000000e+00
  %246 = fmul fast float %236, 2.000000e+00
  %247 = fadd fast float %245, -1.000000e+00
  %248 = fadd fast float %246, -1.000000e+00
  %249 = fmul fast float %247, %213
  %250 = fmul fast float %248, %214
  %251 = fadd fast float %249, %194
  %252 = fadd fast float %250, %195
  %253 = or i32 %215, 1
  %254 = uitofp i32 %253 to float
  %255 = frem fast float %254, 2.560000e+02
  %256 = fptoui float %255 to i32
  %257 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %9, i32 0, i32 %256, i32 %223, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %258 = extractvalue %dx.types.ResRet.f32 %257, 0
  %259 = extractvalue %dx.types.ResRet.f32 %257, 1
  %260 = fadd fast float %258, %219
  %261 = fadd fast float %259, %219
  %262 = call float @dx.op.unary.f32(i32 22, float %260)  ; Frc(value)
  %263 = call float @dx.op.unary.f32(i32 22, float %261)  ; Frc(value)
  %264 = fmul fast float %262, 2.000000e+00
  %265 = fmul fast float %263, 2.000000e+00
  %266 = fadd fast float %264, -1.000000e+00
  %267 = fadd fast float %265, -1.000000e+00
  %268 = fmul fast float %266, %213
  %269 = fmul fast float %267, %214
  %270 = fadd fast float %268, %194
  %271 = fadd fast float %269, %195
  %272 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %10, float %194, float %195, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %273 = extractvalue %dx.types.ResRet.f32 %272, 0
  %274 = extractvalue %dx.types.ResRet.f32 %272, 1
  %275 = extractvalue %dx.types.ResRet.f32 %272, 2
  %276 = extractvalue %dx.types.ResRet.f32 %272, 3
  %277 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %11, float %243, float %244, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %278 = extractvalue %dx.types.ResRet.f32 %277, 0
  %279 = fcmp fast ogt float %278, -1.000000e+00
  %280 = extractvalue %dx.types.CBufRet.f32 %168, 1
  %281 = select i1 %279, float %280, float 1.000000e+00
  %282 = fadd fast float %278, 1.000000e+00
  %283 = fmul fast float %281, %282
  %284 = call float @dx.op.unary.f32(i32 6, float %283)  ; FAbs(value)
  %285 = fcmp fast oge float %284, %169
  %286 = and i1 %143, %285
  %287 = fsub fast float %284, %118
  %288 = call float @dx.op.unary.f32(i32 6, float %287)  ; FAbs(value)
  %289 = select i1 %286, float 0.000000e+00, float %288
  %290 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 424)  ; CBufferLoadLegacy(handle,regIndex)
  %291 = extractvalue %dx.types.CBufRet.f32 %290, 2
  %292 = fcmp fast olt float %289, %291
  br i1 %292, label %293, label %303, !dx.controlflow.hints !39

; <label>:293                                     ; preds = %202
  %294 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %10, float %243, float %244, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %295 = extractvalue %dx.types.ResRet.f32 %294, 0
  %296 = extractvalue %dx.types.ResRet.f32 %294, 1
  %297 = extractvalue %dx.types.ResRet.f32 %294, 2
  %298 = extractvalue %dx.types.ResRet.f32 %294, 3
  %299 = fadd fast float %295, %273
  %300 = fadd fast float %296, %274
  %301 = fadd fast float %297, %275
  %302 = fadd fast float %298, %276
  br label %303

; <label>:303                                     ; preds = %293, %202
  %304 = phi float [ %299, %293 ], [ %273, %202 ]
  %305 = phi float [ %300, %293 ], [ %274, %202 ]
  %306 = phi float [ %301, %293 ], [ %275, %202 ]
  %307 = phi float [ %302, %293 ], [ %276, %202 ]
  %308 = phi float [ 2.000000e+00, %293 ], [ 1.000000e+00, %202 ]
  %309 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %11, float %251, float %252, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %310 = extractvalue %dx.types.ResRet.f32 %309, 0
  %311 = fcmp fast ogt float %310, -1.000000e+00
  %312 = select i1 %311, float %280, float 1.000000e+00
  %313 = fadd fast float %310, 1.000000e+00
  %314 = fmul fast float %312, %313
  %315 = call float @dx.op.unary.f32(i32 6, float %314)  ; FAbs(value)
  %316 = fcmp fast oge float %315, %169
  %317 = and i1 %143, %316
  %318 = fsub fast float %315, %118
  %319 = call float @dx.op.unary.f32(i32 6, float %318)  ; FAbs(value)
  %320 = select i1 %317, float 0.000000e+00, float %319
  %321 = fcmp fast olt float %320, %291
  br i1 %321, label %322, label %333, !dx.controlflow.hints !39

; <label>:322                                     ; preds = %303
  %323 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %10, float %251, float %252, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %324 = extractvalue %dx.types.ResRet.f32 %323, 0
  %325 = extractvalue %dx.types.ResRet.f32 %323, 1
  %326 = extractvalue %dx.types.ResRet.f32 %323, 2
  %327 = extractvalue %dx.types.ResRet.f32 %323, 3
  %328 = fadd fast float %324, %304
  %329 = fadd fast float %325, %305
  %330 = fadd fast float %326, %306
  %331 = fadd fast float %327, %307
  %332 = fadd fast float %308, 1.000000e+00
  br label %333

; <label>:333                                     ; preds = %322, %303
  %334 = phi float [ %328, %322 ], [ %304, %303 ]
  %335 = phi float [ %329, %322 ], [ %305, %303 ]
  %336 = phi float [ %330, %322 ], [ %306, %303 ]
  %337 = phi float [ %331, %322 ], [ %307, %303 ]
  %338 = phi float [ %332, %322 ], [ %308, %303 ]
  %339 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %11, float %270, float %271, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %340 = extractvalue %dx.types.ResRet.f32 %339, 0
  %341 = fcmp fast ogt float %340, -1.000000e+00
  %342 = select i1 %341, float %280, float 1.000000e+00
  %343 = fadd fast float %340, 1.000000e+00
  %344 = fmul fast float %342, %343
  %345 = call float @dx.op.unary.f32(i32 6, float %344)  ; FAbs(value)
  %346 = fcmp fast oge float %345, %169
  %347 = and i1 %143, %346
  %348 = fsub fast float %345, %118
  %349 = call float @dx.op.unary.f32(i32 6, float %348)  ; FAbs(value)
  %350 = select i1 %347, float 0.000000e+00, float %349
  %351 = fcmp fast olt float %350, %291
  br i1 %351, label %352, label %363, !dx.controlflow.hints !39

; <label>:352                                     ; preds = %333
  %353 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %10, float %270, float %271, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %354 = extractvalue %dx.types.ResRet.f32 %353, 0
  %355 = extractvalue %dx.types.ResRet.f32 %353, 1
  %356 = extractvalue %dx.types.ResRet.f32 %353, 2
  %357 = extractvalue %dx.types.ResRet.f32 %353, 3
  %358 = fadd fast float %354, %334
  %359 = fadd fast float %355, %335
  %360 = fadd fast float %356, %336
  %361 = fadd fast float %357, %337
  %362 = fadd fast float %338, 1.000000e+00
  br label %363

; <label>:363                                     ; preds = %352, %333
  %364 = phi float [ %358, %352 ], [ %334, %333 ]
  %365 = phi float [ %359, %352 ], [ %335, %333 ]
  %366 = phi float [ %360, %352 ], [ %336, %333 ]
  %367 = phi float [ %361, %352 ], [ %337, %333 ]
  %368 = phi float [ %362, %352 ], [ %338, %333 ]
  %369 = fdiv fast float 1.000000e+00, %368
  %370 = fmul fast float %369, %364
  %371 = fmul fast float %369, %365
  %372 = fmul fast float %369, %366
  %373 = fmul fast float %369, %367
  br label %374

; <label>:374                                     ; preds = %363, %196, %129
  %375 = phi float [ %370, %363 ], [ %198, %196 ], [ 0.000000e+00, %129 ]
  %376 = phi float [ %371, %363 ], [ %199, %196 ], [ 0.000000e+00, %129 ]
  %377 = phi float [ %372, %363 ], [ %200, %196 ], [ 0.000000e+00, %129 ]
  %378 = phi float [ %373, %363 ], [ %201, %196 ], [ 1.000000e+00, %129 ]
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %16, i32 %17, i32 undef, float %375, float %376, float %377, float %375, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %16, i32 %17, i32 undef, float %378, float %378, float %378, float %378, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @dx.op.flattenedThreadIdInGroup.i32(i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.threadIdInGroup.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.threadId.i32(i32, i32) #0

; Function Attrs: nounwind
declare void @dx.op.textureStore.f32(i32, %dx.types.Handle, i32, i32, i32, float, float, float, float, i8) #1

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32) #2

; Function Attrs: nounwind readnone
declare float @dx.op.binary.f32(i32, float, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.unary.f32(i32, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32) #2

; Function Attrs: noduplicate nounwind
declare void @dx.op.barrier(i32, i32) #3

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32, %dx.types.Handle, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32, %dx.types.Handle, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.Handle @dx.op.createHandle(i32, i8, i32, i32, i1) #2

attributes #0 = { nounwind readnone }
attributes #1 = { nounwind }
attributes #2 = { nounwind readonly }
attributes #3 = { noduplicate nounwind }

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
!4 = !{!5, !15, !18, !20}
!5 = !{!6, !8, !9, !10, !11, !12, !14}
!6 = !{i32 0, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 13, i32 1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, %"class.Texture2D<float>"* undef, !"", i32 0, i32 0, i32 1, i32 2, i32 0, !7}
!9 = !{i32 2, %"class.Texture2D<float>"* undef, !"", i32 0, i32 1, i32 1, i32 2, i32 0, !7}
!10 = !{i32 3, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 2, i32 1, i32 2, i32 0, !7}
!11 = !{i32 4, %"class.Texture2D<float>"* undef, !"", i32 0, i32 3, i32 1, i32 2, i32 0, !7}
!12 = !{i32 5, %"class.Texture2D<unsigned int>"* undef, !"", i32 0, i32 4, i32 1, i32 2, i32 0, !13}
!13 = !{i32 0, i32 5}
!14 = !{i32 6, %"class.Texture2D<unsigned int>"* undef, !"", i32 0, i32 28, i32 1, i32 2, i32 0, !13}
!15 = !{!16, !17}
!16 = !{i32 0, %"class.RWTexture2D<vector<float, 3> >"* undef, !"", i32 0, i32 0, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!17 = !{i32 1, %"class.RWTexture2D<float>"* undef, !"", i32 0, i32 1, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!18 = !{!19}
!19 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!20 = !{!21, !22}
!21 = !{i32 0, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!22 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!23 = !{void ()* @cs_fog_raymarching_upsample, !"cs_fog_raymarching_upsample", null, !4, !24}
!24 = !{i32 0, i64 256, i32 4, !25}
!25 = !{i32 8, i32 8, i32 1}
!26 = distinct !{!26, !"dx.controlflow.hints", i32 2}
!27 = !{!28, !28, i64 0}
!28 = !{!"float", !29, i64 0}
!29 = !{!"omnipotent char", !30, i64 0}
!30 = !{!"Simple C/C++ TBAA"}
!31 = !{!32}
!32 = distinct !{!32, !33, !"\01?FogRaymarchingUpsample@@YAXIV?$vector@I$01@@0AIAV?$vector@M$03@@@Z: %outScatteringTransmission"}
!33 = distinct !{!33, !"\01?FogRaymarchingUpsample@@YAXIV?$vector@I$01@@0AIAV?$vector@M$03@@@Z"}
!34 = distinct !{!34, !"dx.controlflow.hints", i32 2}
!35 = !{!36, !36, i64 0}
!36 = !{!"int", !29, i64 0}
!37 = distinct !{!37, !"dx.controlflow.hints", i32 1}
!38 = distinct !{!38, !"dx.controlflow.hints", i32 1}
!39 = distinct !{!39, !"dx.controlflow.hints", i32 2}

