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
; shader hash: 58ee217c3ccd6ab460342f66757ed306
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
;   [16 x i8] (type annotation not present)
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
;                                   texture     f32          2d      T0             t4     1
;                                   texture     f32          2d      T1             t5     1
;                                   texture     f32          2d      T2             t6     1
;                                   texture     f32          2d      T3             t2     1
;                                   texture     f32          2d      T4             t3     1
;                                   texture     f32          2d      T5             t1     1
;                                       UAV     f32          2d      U0             u0     1
;                                       UAV     f32          2d      U1             u1     1
;                                       UAV     u32          2d      U2             u2     1
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.CBufRet.i32 = type { i32, i32, i32, i32 }
%dx.types.CBufRet.f32 = type { float, float, float, float }
%dx.types.ResRet.f32 = type { float, float, float, float, i32 }
%"class.Texture2D<vector<float, 3> >" = type { <3 x float>, %"class.Texture2D<vector<float, 3> >::mips_type" }
%"class.Texture2D<vector<float, 3> >::mips_type" = type { i32 }
%"class.Texture2D<float>" = type { float, %"class.Texture2D<float>::mips_type" }
%"class.Texture2D<float>::mips_type" = type { i32 }
%"class.Texture2D<vector<float, 4> >" = type { <4 x float>, %"class.Texture2D<vector<float, 4> >::mips_type" }
%"class.Texture2D<vector<float, 4> >::mips_type" = type { i32 }
%"class.RWTexture2D<vector<float, 4> >" = type { <4 x float> }
%"class.RWTexture2D<float>" = type { float }
%"class.RWTexture2D<unsigned int>" = type { i32 }
%hostlayout.scene = type { %hostlayout.struct.GfxCodeSceneConsts }
%hostlayout.struct.GfxCodeSceneConsts = type { <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <3 x float>, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x i32>, <4 x i32>, <4 x float>, float, float, float, float, i32, i32, float, float, <2 x i32>, <2 x i32>, <2 x float>, <2 x float>, <3 x float>, i32, <3 x float>, float, <3 x float>, float, <2 x float>, <2 x float>, <3 x float>, float, <3 x float>, float, float, float, float, float, <3 x float>, float, i32, float, float, float, <4 x float>, <3 x float>, float, float, float, float, float, <4 x float>, float, float, float, float, i32, i32, i32, float, <4 x float>, i32, i32, i32, i32, i32, i32, i32, i32, <2 x i32>, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, [2 x <4 x i32>], [3 x <2 x float>], i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <2 x float>, <2 x float>, <4 x float>, <4 x i32>, <4 x float>, i32, float, float, float, i32, i32, i32, i32, <2 x float>, <2 x float>, <2 x float>, <2 x float>, i32, i32, <2 x float>, <2 x float>, <2 x float>, <3 x float>, i32, i32, i32, i32, i32, <4 x i32>, <4 x i32>, <4 x i32>, <4 x float>, i32, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <3 x float>, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], <4 x float>, [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], i32, i32, float, i32, <2 x float>, float, float, float, float, float, i32, <3 x float>, float, float, float, float, float, <3 x float>, float, <3 x float>, float, <3 x float>, float, float, float, float, float, <2 x float>, <2 x float>, float, float, float, float, <3 x float>, float, <2 x float>, i32, i32, <3 x float>, float, float, float, float, float, float, float, float, float, [4 x <3 x float>], i32, [4 x <3 x float>], i32, [4 x <3 x float>], i32, <4 x i32>, <2 x float>, <2 x float>, <2 x float>, i32, i32, float, float, float, float, <4 x float>, <4 x i32>, <4 x float>, <4 x float>, <4 x float>, i32, i32, i32, i32, <4 x float>, i32, float, float, i32, i32, float, float, i32, i32, float, float, i32, i32, float, float, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, float, float, float, float, i32, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, i32, i32, i32, float, <4 x float>, <4 x float>, <4 x float>, <4 x float>, i32, i32, i32, float, <4 x float>, float, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x i32>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [8 x <4 x float>], [8 x <4 x float>], <4 x float>, <3 x float>, i32, <2 x float>, float, float, float, float, float, float, <2 x float>, <2 x float>, <2 x float>, <2 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <2 x float>, float, float, <4 x float>, i32, i32, i32, i32, <3 x float>, i32, <4 x i32>, <4 x i32>, <2 x float>, <2 x i32>, <4 x float>, <4 x float>, <2 x float>, <2 x float>, [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, float, i32, i32, i32, i32, i32, float, float, <2 x float>, <2 x float>, float, float, float, float, i32, float, float, float, float, float, float, float, float, float, float, float, float, i32, i32, i32, float, float, float, i32, <2 x i32>, <2 x i32>, <4 x i32>, float, float, float, float, <4 x float>, <4 x float>, <2 x float>, <2 x float>, <4 x float>, <4 x float>, float, float, float, float, <4 x float>, float, float, float, float, i32, i32, float, float, <4 x float>, <2 x float>, <2 x float>, i32, i32, float, float, [4 x <4 x float>], float, float, float, float, float, float, float, float, i32, i32, i32, float, <4 x float>, <4 x float>, i32, i32, i32, i32, <2 x i32>, <2 x i32>, [2 x <4 x i32>], i32, float, float, float, i32, float, float, i32, <2 x i32>, <2 x float>, float, float, float, i32, %struct.GfxWeatherData, %hostlayout.struct.GfxVolumetricData, %struct.GfxFogRaymarchingData, %struct.GfxEnvironmentalFogData, %struct.GfxShallowWaterData, %struct.GfxGroundDeformationData, %struct.GfxSplinedModelGlobals }
%struct.GfxWeatherData = type { i32, i32, i32, i32, float, float, float, float, float, float, i32, i32, float, float, float, float, i32, i32, i32, i32, float, float, float, float, float, i32, i32, i32, i32, i32, i32, i32, <3 x float>, i32, <3 x float>, i32, i32, float, i32, i32, float, float, float, float }
%hostlayout.struct.GfxVolumetricData = type { [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <2 x float>, <2 x float>, <2 x float>, <2 x float>, <3 x i32>, i32, <3 x float>, i32, <4 x float>, <3 x float>, i32, i32, float, float, float, i32, i32, i32, float, <4 x float>, float, float, i32, i32, <3 x float>, i32, <3 x float>, float, <3 x float>, float, <2 x float>, float, float, <3 x float>, float, <3 x float>, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, <3 x float>, float, i32, float, float, float, <3 x float>, float, <2 x float>, <2 x float>, <3 x float>, float, i32, float, float, float, float, float, float, float, i32, i32, float, float, <3 x float>, float, i32, i32, <2 x float> }
%struct.GfxFogRaymarchingData = type { <2 x float>, <2 x float>, float, float, float, float, float, float, float, float, float, float, float, float, <2 x float>, <2 x float>, <3 x float>, float }
%struct.GfxEnvironmentalFogData = type { float, float, float, i32 }
%struct.GfxShallowWaterData = type { i32, i32, i32, i32, float, float, float, float, <2 x float>, <2 x float>, float, float, float, float, <3 x float>, float, float, float, float, float, float, float, float, float, i32, float, float, float, float, float, float, float, float, float, float, float, i32, float, float, float, float, i32, i32, i32 }
%struct.GfxGroundDeformationData = type { <2 x float>, <2 x float>, float, float, float, float, float, float, float, float, float, float, float, float, float, float, i32, i32 }
%struct.GfxSplinedModelGlobals = type { [64 x <4 x float>], [64 x <4 x float>], [16 x <4 x float>], [32 x <4 x float>], [64 x <4 x float>], [16 x <4 x float>], [16 x <4 x float>], float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float }
%FogRaymarchingUpscaleConstBuffer_decl = type { %struct.FogRaymarchingUpscaleConstBuffer }
%struct.FogRaymarchingUpscaleConstBuffer = type { <2 x float>, i32, i32 }
%struct.SamplerState = type { i32 }

@"\01?tiledSharedMem@@3PAIA" = external addrspace(3) global [64 x i32], align 4
@"\01?sharedValue@@3PAMA" = external addrspace(3) global [64 x float], align 4
@"\01?sceneDepthShared@@3PAY05$$CAMA.1dim" = addrspace(3) global [36 x float] undef, align 4
@"\01?transmissionShared@@3PAY05$$CAMA.1dim" = addrspace(3) global [36 x float] undef, align 4
@"\01?depthDensityWeightedShared@@3PAY05$$CAMA.1dim" = addrspace(3) global [36 x float] undef, align 4
@"\01?scatteringShared@@3PAY05$$CAV?$vector@M$02@@A.v.1dim" = addrspace(3) global [108 x float] undef, align 4

define void @cs_fog_raymarching_merge() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call i32 @dx.op.threadId.i32(i32 93, i32 0)  ; ThreadId(component)
  %14 = call i32 @dx.op.threadId.i32(i32 93, i32 1)  ; ThreadId(component)
  %15 = call i32 @dx.op.flattenedThreadIdInGroup.i32(i32 96)  ; FlattenedThreadIdInGroup()
  %16 = call i32 @dx.op.threadIdInGroup.i32(i32 95, i32 0)  ; ThreadIdInGroup(component)
  %17 = call i32 @dx.op.threadIdInGroup.i32(i32 95, i32 1)  ; ThreadIdInGroup(component)
  %18 = lshr i32 %13, 1
  %19 = lshr i32 %14, 1
  %20 = add nuw i32 %19, %18
  %21 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %12, i32 361)  ; CBufferLoadLegacy(handle,regIndex)
  %22 = extractvalue %dx.types.CBufRet.i32 %21, 1
  %23 = add i32 %20, %22
  %24 = lshr i32 %23, 1
  %25 = and i32 %24, 1
  %26 = and i32 %23, 1
  %27 = xor i32 %25, %26
  %28 = shl nuw i32 %18, 1
  %29 = shl nuw i32 %19, 1
  %30 = or i32 %27, %28
  %31 = or i32 %25, %29
  %32 = uitofp i32 %13 to float
  %33 = uitofp i32 %14 to float
  %34 = fadd fast float %32, 5.000000e-01
  %35 = fadd fast float %33, 5.000000e-01
  %36 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %37 = extractvalue %dx.types.CBufRet.f32 %36, 0
  %38 = extractvalue %dx.types.CBufRet.f32 %36, 1
  %39 = icmp ult i32 %16, 6
  %40 = icmp ult i32 %17, 6
  %41 = and i1 %39, %40
  br i1 %41, label %42, label %107, !dx.controlflow.hints !26

; <label>:42                                      ; preds = %0
  %43 = ashr i32 %13, 1
  %44 = and i32 %43, -4
  %45 = ashr i32 %14, 1
  %46 = and i32 %45, -4
  %47 = add nsw i32 %44, -1
  %48 = add nsw i32 %46, -1
  %49 = add i32 %47, %16
  %50 = add i32 %48, %17
  %51 = add i32 %50, %49
  %52 = add i32 %51, %22
  %53 = lshr i32 %52, 1
  %54 = and i32 %53, 1
  %55 = and i32 %52, 1
  %56 = xor i32 %54, %55
  %57 = shl i32 %49, 1
  %58 = shl i32 %50, 1
  %59 = or i32 %56, %57
  %60 = or i32 %54, %58
  %61 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %4, i32 0, i32 %59, i32 %60, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %62 = extractvalue %dx.types.ResRet.f32 %61, 0
  %63 = fcmp fast ogt float %62, -1.000000e+00
  %64 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %65 = extractvalue %dx.types.CBufRet.f32 %64, 1
  %66 = select i1 %63, float %65, float 1.000000e+00
  %67 = fadd fast float %62, 1.000000e+00
  %68 = fmul fast float %66, %67
  %69 = call float @dx.op.unary.f32(i32 6, float %68)  ; FAbs(value)
  %70 = mul i32 %16, 6
  %71 = add i32 %17, %70
  %72 = getelementptr [36 x float], [36 x float] addrspace(3)* @"\01?sceneDepthShared@@3PAY05$$CAMA.1dim", i32 0, i32 %71
  store float %69, float addrspace(3)* %72, align 4, !tbaa !27, !noalias !31
  %73 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %9, i32 0, i32 %49, i32 %50, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %74 = extractvalue %dx.types.ResRet.f32 %73, 0
  %75 = extractvalue %dx.types.ResRet.f32 %73, 1
  %76 = extractvalue %dx.types.ResRet.f32 %73, 2
  %77 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %78 = extractvalue %dx.types.CBufRet.f32 %77, 1
  %79 = fmul fast float %78, %74
  %80 = fmul fast float %78, %75
  %81 = fmul fast float %78, %76
  %82 = mul i32 %16, 6
  %83 = add i32 %17, %82
  %84 = mul i32 %83, 3
  %85 = add i32 0, %84
  %86 = getelementptr [108 x float], [108 x float] addrspace(3)* @"\01?scatteringShared@@3PAY05$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %85
  store float %79, float addrspace(3)* %86, align 4
  %87 = mul i32 %16, 6
  %88 = add i32 %17, %87
  %89 = mul i32 %88, 3
  %90 = add i32 1, %89
  %91 = getelementptr [108 x float], [108 x float] addrspace(3)* @"\01?scatteringShared@@3PAY05$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %90
  store float %80, float addrspace(3)* %91, align 4
  %92 = mul i32 %16, 6
  %93 = add i32 %17, %92
  %94 = mul i32 %93, 3
  %95 = add i32 2, %94
  %96 = getelementptr [108 x float], [108 x float] addrspace(3)* @"\01?scatteringShared@@3PAY05$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %95
  store float %81, float addrspace(3)* %96, align 4
  %97 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %8, i32 0, i32 %49, i32 %50, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %98 = extractvalue %dx.types.ResRet.f32 %97, 0
  %99 = mul i32 %16, 6
  %100 = add i32 %17, %99
  %101 = getelementptr [36 x float], [36 x float] addrspace(3)* @"\01?transmissionShared@@3PAY05$$CAMA.1dim", i32 0, i32 %100
  store float %98, float addrspace(3)* %101, align 4, !tbaa !27, !noalias !31
  %102 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %7, i32 0, i32 %49, i32 %50, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %103 = extractvalue %dx.types.ResRet.f32 %102, 0
  %104 = mul i32 %16, 6
  %105 = add i32 %17, %104
  %106 = getelementptr [36 x float], [36 x float] addrspace(3)* @"\01?depthDensityWeightedShared@@3PAY05$$CAMA.1dim", i32 0, i32 %105
  store float %103, float addrspace(3)* %106, align 4, !tbaa !27, !noalias !31
  br label %107

; <label>:107                                     ; preds = %42, %0
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %108 = lshr i32 %16, 1
  %109 = lshr i32 %17, 1
  %110 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %4, i32 0, i32 %13, i32 %14, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %111 = extractvalue %dx.types.ResRet.f32 %110, 0
  %112 = fcmp fast ogt float %111, -1.000000e+00
  %113 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %114 = extractvalue %dx.types.CBufRet.f32 %113, 1
  %115 = select i1 %112, float %114, float 1.000000e+00
  %116 = fadd fast float %111, 1.000000e+00
  %117 = fmul fast float %115, %116
  %118 = call float @dx.op.unary.f32(i32 6, float %117)  ; FAbs(value)
  %119 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 423)  ; CBufferLoadLegacy(handle,regIndex)
  %120 = extractvalue %dx.types.CBufRet.f32 %119, 2
  %121 = fmul fast float %120, %118
  %122 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 424)  ; CBufferLoadLegacy(handle,regIndex)
  %123 = extractvalue %dx.types.CBufRet.f32 %122, 1
  %124 = fcmp fast ogt float %121, %123
  br i1 %124, label %125, label %897, !dx.controlflow.hints !34

; <label>:125                                     ; preds = %107
  %126 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %9, i32 0, i32 %18, i32 %19, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %127 = extractvalue %dx.types.ResRet.f32 %126, 0
  %128 = extractvalue %dx.types.ResRet.f32 %126, 1
  %129 = extractvalue %dx.types.ResRet.f32 %126, 2
  %130 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %131 = extractvalue %dx.types.CBufRet.f32 %130, 1
  %132 = fmul fast float %131, %127
  %133 = fmul fast float %131, %128
  %134 = fmul fast float %131, %129
  %135 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %8, i32 0, i32 %18, i32 %19, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %136 = extractvalue %dx.types.ResRet.f32 %135, 0
  %137 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %7, i32 0, i32 %18, i32 %19, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %138 = extractvalue %dx.types.ResRet.f32 %137, 0
  %139 = extractvalue %dx.types.CBufRet.f32 %119, 1
  %140 = fmul fast float %139, %138
  %141 = fmul fast float %34, 2.000000e+00
  %142 = fmul fast float %141, %37
  %143 = fmul fast float %35, 2.000000e+00
  %144 = fmul fast float %143, %38
  %145 = fsub fast float 1.000000e+00, %142
  %146 = fsub fast float 1.000000e+00, %144
  %147 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %148 = extractvalue %dx.types.CBufRet.f32 %147, 0
  %149 = extractvalue %dx.types.CBufRet.f32 %147, 1
  %150 = extractvalue %dx.types.CBufRet.f32 %147, 2
  %151 = fmul fast float %148, %145
  %152 = fmul fast float %149, %145
  %153 = fmul fast float %150, %145
  %154 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %155 = extractvalue %dx.types.CBufRet.f32 %154, 0
  %156 = extractvalue %dx.types.CBufRet.f32 %154, 1
  %157 = extractvalue %dx.types.CBufRet.f32 %154, 2
  %158 = fmul fast float %155, %146
  %159 = fmul fast float %156, %146
  %160 = fmul fast float %157, %146
  %161 = fadd fast float %158, %151
  %162 = fadd fast float %159, %152
  %163 = fadd fast float %160, %153
  %164 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %165 = extractvalue %dx.types.CBufRet.f32 %164, 0
  %166 = extractvalue %dx.types.CBufRet.f32 %164, 1
  %167 = extractvalue %dx.types.CBufRet.f32 %164, 2
  %168 = fadd fast float %161, %165
  %169 = fadd fast float %162, %166
  %170 = fadd fast float %163, %167
  %171 = fmul fast float %168, %140
  %172 = fmul fast float %169, %140
  %173 = fmul fast float %170, %140
  %174 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 385)  ; CBufferLoadLegacy(handle,regIndex)
  %175 = extractvalue %dx.types.CBufRet.f32 %174, 0
  %176 = extractvalue %dx.types.CBufRet.f32 %174, 1
  %177 = extractvalue %dx.types.CBufRet.f32 %174, 3
  %178 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 386)  ; CBufferLoadLegacy(handle,regIndex)
  %179 = extractvalue %dx.types.CBufRet.f32 %178, 0
  %180 = extractvalue %dx.types.CBufRet.f32 %178, 1
  %181 = extractvalue %dx.types.CBufRet.f32 %178, 3
  %182 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 387)  ; CBufferLoadLegacy(handle,regIndex)
  %183 = extractvalue %dx.types.CBufRet.f32 %182, 0
  %184 = extractvalue %dx.types.CBufRet.f32 %182, 1
  %185 = extractvalue %dx.types.CBufRet.f32 %182, 3
  %186 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 388)  ; CBufferLoadLegacy(handle,regIndex)
  %187 = extractvalue %dx.types.CBufRet.f32 %186, 0
  %188 = extractvalue %dx.types.CBufRet.f32 %186, 1
  %189 = extractvalue %dx.types.CBufRet.f32 %186, 3
  %190 = fmul fast float %171, %175
  %191 = call float @dx.op.tertiary.f32(i32 46, float %179, float %172, float %190)  ; FMad(a,b,c)
  %192 = call float @dx.op.tertiary.f32(i32 46, float %183, float %173, float %191)  ; FMad(a,b,c)
  %193 = fadd fast float %192, %187
  %194 = fmul fast float %171, %176
  %195 = call float @dx.op.tertiary.f32(i32 46, float %180, float %172, float %194)  ; FMad(a,b,c)
  %196 = call float @dx.op.tertiary.f32(i32 46, float %184, float %173, float %195)  ; FMad(a,b,c)
  %197 = fadd fast float %196, %188
  %198 = fmul fast float %171, %177
  %199 = call float @dx.op.tertiary.f32(i32 46, float %181, float %172, float %198)  ; FMad(a,b,c)
  %200 = call float @dx.op.tertiary.f32(i32 46, float %185, float %173, float %199)  ; FMad(a,b,c)
  %201 = fadd fast float %200, %189
  %202 = fdiv fast float %193, %201
  %203 = fdiv fast float %197, %201
  %204 = fmul fast float %202, 5.000000e-01
  %205 = fmul fast float %203, 5.000000e-01
  %206 = fadd fast float %204, 5.000000e-01
  %207 = fsub fast float 5.000000e-01, %205
  %208 = fcmp fast ogt float %206, 0.000000e+00
  %209 = fcmp fast ogt float %207, 0.000000e+00
  %210 = and i1 %208, %209
  %211 = fcmp fast olt float %206, 1.000000e+00
  %212 = fcmp fast olt float %207, 1.000000e+00
  %213 = and i1 %211, %212
  %214 = and i1 %210, %213
  br i1 %214, label %215, label %227, !dx.controlflow.hints !35

; <label>:215                                     ; preds = %125
  %216 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %10, float %206, float %207, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %217 = extractvalue %dx.types.ResRet.f32 %216, 0
  %218 = extractvalue %dx.types.ResRet.f32 %216, 1
  %219 = extractvalue %dx.types.ResRet.f32 %216, 2
  %220 = extractvalue %dx.types.ResRet.f32 %216, 3
  %221 = extractvalue %dx.types.CBufRet.f32 %130, 2
  %222 = fmul fast float %221, %217
  %223 = fmul fast float %221, %218
  %224 = fmul fast float %221, %219
  %225 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %10, float %206, float %207, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %226 = extractvalue %dx.types.ResRet.f32 %225, 0
  br label %227

; <label>:227                                     ; preds = %215, %125
  %228 = phi float [ %222, %215 ], [ %132, %125 ]
  %229 = phi float [ %223, %215 ], [ %133, %125 ]
  %230 = phi float [ %224, %215 ], [ %134, %125 ]
  %231 = phi float [ %220, %215 ], [ %136, %125 ]
  %232 = phi float [ %226, %215 ], [ %138, %125 ]
  %233 = extractvalue %dx.types.CBufRet.f32 %113, 3
  %234 = fcmp fast oge float %118, %233
  %235 = mul i32 %108, 6
  %236 = add i32 %109, %235
  %237 = getelementptr [36 x float], [36 x float] addrspace(3)* @"\01?sceneDepthShared@@3PAY05$$CAMA.1dim", i32 0, i32 %236
  %238 = load float, float addrspace(3)* %237, align 4, !tbaa !27, !noalias !36
  %239 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %240 = extractvalue %dx.types.CBufRet.f32 %239, 3
  %241 = fcmp fast oge float %238, %240
  %242 = and i1 %234, %241
  %243 = fsub fast float %238, %118
  %244 = call float @dx.op.unary.f32(i32 6, float %243)  ; FAbs(value)
  %245 = select i1 %242, float 0.000000e+00, float %244
  %246 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 424)  ; CBufferLoadLegacy(handle,regIndex)
  %247 = extractvalue %dx.types.CBufRet.f32 %246, 2
  %248 = fcmp fast olt float %245, %247
  br i1 %248, label %249, label %286, !dx.controlflow.hints !41

; <label>:249                                     ; preds = %227
  %250 = mul i32 %108, 6
  %251 = add i32 %109, %250
  %252 = mul i32 %251, 3
  %253 = add i32 0, %252
  %254 = getelementptr [108 x float], [108 x float] addrspace(3)* @"\01?scatteringShared@@3PAY05$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %253
  %255 = load float, float addrspace(3)* %254, align 4
  %256 = mul i32 %108, 6
  %257 = add i32 %109, %256
  %258 = mul i32 %257, 3
  %259 = add i32 1, %258
  %260 = getelementptr [108 x float], [108 x float] addrspace(3)* @"\01?scatteringShared@@3PAY05$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %259
  %261 = load float, float addrspace(3)* %260, align 4
  %262 = mul i32 %108, 6
  %263 = add i32 %109, %262
  %264 = mul i32 %263, 3
  %265 = add i32 2, %264
  %266 = getelementptr [108 x float], [108 x float] addrspace(3)* @"\01?scatteringShared@@3PAY05$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %265
  %267 = load float, float addrspace(3)* %266, align 4
  %268 = mul i32 %108, 6
  %269 = add i32 %109, %268
  %270 = getelementptr [36 x float], [36 x float] addrspace(3)* @"\01?transmissionShared@@3PAY05$$CAMA.1dim", i32 0, i32 %269
  %271 = load float, float addrspace(3)* %270, align 4, !tbaa !27, !noalias !36
  %272 = mul i32 %108, 6
  %273 = add i32 %109, %272
  %274 = getelementptr [36 x float], [36 x float] addrspace(3)* @"\01?depthDensityWeightedShared@@3PAY05$$CAMA.1dim", i32 0, i32 %273
  %275 = load float, float addrspace(3)* %274, align 4, !tbaa !27, !noalias !36
  %276 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %255)  ; FMax(a,b)
  %277 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %261)  ; FMax(a,b)
  %278 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %267)  ; FMax(a,b)
  %279 = call float @dx.op.binary.f32(i32 36, float 6.550000e+04, float %255)  ; FMin(a,b)
  %280 = call float @dx.op.binary.f32(i32 36, float 6.550000e+04, float %261)  ; FMin(a,b)
  %281 = call float @dx.op.binary.f32(i32 36, float 6.550000e+04, float %267)  ; FMin(a,b)
  %282 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %271)  ; FMax(a,b)
  %283 = call float @dx.op.binary.f32(i32 36, float 6.550000e+04, float %271)  ; FMin(a,b)
  %284 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %275)  ; FMax(a,b)
  %285 = call float @dx.op.binary.f32(i32 36, float 6.550000e+04, float %275)  ; FMin(a,b)
  br label %286

; <label>:286                                     ; preds = %249, %227
  %287 = phi float [ %284, %249 ], [ 0.000000e+00, %227 ]
  %288 = phi float [ %283, %249 ], [ 6.550000e+04, %227 ]
  %289 = phi float [ %282, %249 ], [ 0.000000e+00, %227 ]
  %290 = phi float [ %279, %249 ], [ 6.550000e+04, %227 ]
  %291 = phi float [ %280, %249 ], [ 6.550000e+04, %227 ]
  %292 = phi float [ %281, %249 ], [ 6.550000e+04, %227 ]
  %293 = phi float [ %276, %249 ], [ 0.000000e+00, %227 ]
  %294 = phi float [ %277, %249 ], [ 0.000000e+00, %227 ]
  %295 = phi float [ %278, %249 ], [ 0.000000e+00, %227 ]
  %296 = phi float [ %285, %249 ], [ 6.550000e+04, %227 ]
  %297 = phi i32 [ 1, %249 ], [ 0, %227 ]
  %298 = add nuw i32 %108, 1
  %299 = mul i32 %298, 6
  %300 = add i32 %109, %299
  %301 = getelementptr [36 x float], [36 x float] addrspace(3)* @"\01?sceneDepthShared@@3PAY05$$CAMA.1dim", i32 0, i32 %300
  %302 = load float, float addrspace(3)* %301, align 4, !tbaa !27, !noalias !36
  %303 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %304 = extractvalue %dx.types.CBufRet.f32 %303, 3
  %305 = fcmp fast oge float %302, %304
  %306 = and i1 %234, %305
  %307 = fsub fast float %302, %118
  %308 = call float @dx.op.unary.f32(i32 6, float %307)  ; FAbs(value)
  %309 = select i1 %306, float 0.000000e+00, float %308
  %310 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 424)  ; CBufferLoadLegacy(handle,regIndex)
  %311 = extractvalue %dx.types.CBufRet.f32 %310, 2
  %312 = fcmp fast olt float %309, %311
  br i1 %312, label %313, label %350, !dx.controlflow.hints !41

; <label>:313                                     ; preds = %286
  %314 = mul i32 %298, 6
  %315 = add i32 %109, %314
  %316 = mul i32 %315, 3
  %317 = add i32 0, %316
  %318 = getelementptr [108 x float], [108 x float] addrspace(3)* @"\01?scatteringShared@@3PAY05$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %317
  %319 = load float, float addrspace(3)* %318, align 4
  %320 = mul i32 %298, 6
  %321 = add i32 %109, %320
  %322 = mul i32 %321, 3
  %323 = add i32 1, %322
  %324 = getelementptr [108 x float], [108 x float] addrspace(3)* @"\01?scatteringShared@@3PAY05$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %323
  %325 = load float, float addrspace(3)* %324, align 4
  %326 = mul i32 %298, 6
  %327 = add i32 %109, %326
  %328 = mul i32 %327, 3
  %329 = add i32 2, %328
  %330 = getelementptr [108 x float], [108 x float] addrspace(3)* @"\01?scatteringShared@@3PAY05$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %329
  %331 = load float, float addrspace(3)* %330, align 4
  %332 = mul i32 %298, 6
  %333 = add i32 %109, %332
  %334 = getelementptr [36 x float], [36 x float] addrspace(3)* @"\01?transmissionShared@@3PAY05$$CAMA.1dim", i32 0, i32 %333
  %335 = load float, float addrspace(3)* %334, align 4, !tbaa !27, !noalias !36
  %336 = mul i32 %298, 6
  %337 = add i32 %109, %336
  %338 = getelementptr [36 x float], [36 x float] addrspace(3)* @"\01?depthDensityWeightedShared@@3PAY05$$CAMA.1dim", i32 0, i32 %337
  %339 = load float, float addrspace(3)* %338, align 4, !tbaa !27, !noalias !36
  %340 = call float @dx.op.binary.f32(i32 35, float %293, float %319)  ; FMax(a,b)
  %341 = call float @dx.op.binary.f32(i32 35, float %294, float %325)  ; FMax(a,b)
  %342 = call float @dx.op.binary.f32(i32 35, float %295, float %331)  ; FMax(a,b)
  %343 = call float @dx.op.binary.f32(i32 36, float %290, float %319)  ; FMin(a,b)
  %344 = call float @dx.op.binary.f32(i32 36, float %291, float %325)  ; FMin(a,b)
  %345 = call float @dx.op.binary.f32(i32 36, float %292, float %331)  ; FMin(a,b)
  %346 = call float @dx.op.binary.f32(i32 35, float %289, float %335)  ; FMax(a,b)
  %347 = call float @dx.op.binary.f32(i32 36, float %288, float %335)  ; FMin(a,b)
  %348 = call float @dx.op.binary.f32(i32 35, float %287, float %339)  ; FMax(a,b)
  %349 = call float @dx.op.binary.f32(i32 36, float %296, float %339)  ; FMin(a,b)
  br label %350

; <label>:350                                     ; preds = %313, %286
  %351 = phi float [ %348, %313 ], [ %287, %286 ]
  %352 = phi float [ %347, %313 ], [ %288, %286 ]
  %353 = phi float [ %346, %313 ], [ %289, %286 ]
  %354 = phi float [ %343, %313 ], [ %290, %286 ]
  %355 = phi float [ %344, %313 ], [ %291, %286 ]
  %356 = phi float [ %345, %313 ], [ %292, %286 ]
  %357 = phi float [ %340, %313 ], [ %293, %286 ]
  %358 = phi float [ %341, %313 ], [ %294, %286 ]
  %359 = phi float [ %342, %313 ], [ %295, %286 ]
  %360 = phi float [ %349, %313 ], [ %296, %286 ]
  %361 = phi i32 [ 1, %313 ], [ %297, %286 ]
  %362 = add nuw i32 %108, 2
  %363 = mul i32 %362, 6
  %364 = add i32 %109, %363
  %365 = getelementptr [36 x float], [36 x float] addrspace(3)* @"\01?sceneDepthShared@@3PAY05$$CAMA.1dim", i32 0, i32 %364
  %366 = load float, float addrspace(3)* %365, align 4, !tbaa !27, !noalias !36
  %367 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %368 = extractvalue %dx.types.CBufRet.f32 %367, 3
  %369 = fcmp fast oge float %366, %368
  %370 = and i1 %234, %369
  %371 = fsub fast float %366, %118
  %372 = call float @dx.op.unary.f32(i32 6, float %371)  ; FAbs(value)
  %373 = select i1 %370, float 0.000000e+00, float %372
  %374 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 424)  ; CBufferLoadLegacy(handle,regIndex)
  %375 = extractvalue %dx.types.CBufRet.f32 %374, 2
  %376 = fcmp fast olt float %373, %375
  br i1 %376, label %377, label %414, !dx.controlflow.hints !41

; <label>:377                                     ; preds = %350
  %378 = mul i32 %362, 6
  %379 = add i32 %109, %378
  %380 = mul i32 %379, 3
  %381 = add i32 0, %380
  %382 = getelementptr [108 x float], [108 x float] addrspace(3)* @"\01?scatteringShared@@3PAY05$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %381
  %383 = load float, float addrspace(3)* %382, align 4
  %384 = mul i32 %362, 6
  %385 = add i32 %109, %384
  %386 = mul i32 %385, 3
  %387 = add i32 1, %386
  %388 = getelementptr [108 x float], [108 x float] addrspace(3)* @"\01?scatteringShared@@3PAY05$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %387
  %389 = load float, float addrspace(3)* %388, align 4
  %390 = mul i32 %362, 6
  %391 = add i32 %109, %390
  %392 = mul i32 %391, 3
  %393 = add i32 2, %392
  %394 = getelementptr [108 x float], [108 x float] addrspace(3)* @"\01?scatteringShared@@3PAY05$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %393
  %395 = load float, float addrspace(3)* %394, align 4
  %396 = mul i32 %362, 6
  %397 = add i32 %109, %396
  %398 = getelementptr [36 x float], [36 x float] addrspace(3)* @"\01?transmissionShared@@3PAY05$$CAMA.1dim", i32 0, i32 %397
  %399 = load float, float addrspace(3)* %398, align 4, !tbaa !27, !noalias !36
  %400 = mul i32 %362, 6
  %401 = add i32 %109, %400
  %402 = getelementptr [36 x float], [36 x float] addrspace(3)* @"\01?depthDensityWeightedShared@@3PAY05$$CAMA.1dim", i32 0, i32 %401
  %403 = load float, float addrspace(3)* %402, align 4, !tbaa !27, !noalias !36
  %404 = call float @dx.op.binary.f32(i32 35, float %357, float %383)  ; FMax(a,b)
  %405 = call float @dx.op.binary.f32(i32 35, float %358, float %389)  ; FMax(a,b)
  %406 = call float @dx.op.binary.f32(i32 35, float %359, float %395)  ; FMax(a,b)
  %407 = call float @dx.op.binary.f32(i32 36, float %354, float %383)  ; FMin(a,b)
  %408 = call float @dx.op.binary.f32(i32 36, float %355, float %389)  ; FMin(a,b)
  %409 = call float @dx.op.binary.f32(i32 36, float %356, float %395)  ; FMin(a,b)
  %410 = call float @dx.op.binary.f32(i32 35, float %353, float %399)  ; FMax(a,b)
  %411 = call float @dx.op.binary.f32(i32 36, float %352, float %399)  ; FMin(a,b)
  %412 = call float @dx.op.binary.f32(i32 35, float %351, float %403)  ; FMax(a,b)
  %413 = call float @dx.op.binary.f32(i32 36, float %360, float %403)  ; FMin(a,b)
  br label %414

; <label>:414                                     ; preds = %377, %350
  %415 = phi float [ %412, %377 ], [ %351, %350 ]
  %416 = phi float [ %411, %377 ], [ %352, %350 ]
  %417 = phi float [ %410, %377 ], [ %353, %350 ]
  %418 = phi float [ %407, %377 ], [ %354, %350 ]
  %419 = phi float [ %408, %377 ], [ %355, %350 ]
  %420 = phi float [ %409, %377 ], [ %356, %350 ]
  %421 = phi float [ %404, %377 ], [ %357, %350 ]
  %422 = phi float [ %405, %377 ], [ %358, %350 ]
  %423 = phi float [ %406, %377 ], [ %359, %350 ]
  %424 = phi float [ %413, %377 ], [ %360, %350 ]
  %425 = phi i32 [ 1, %377 ], [ %361, %350 ]
  %426 = add nuw i32 %109, 1
  %427 = mul i32 %108, 6
  %428 = add i32 %426, %427
  %429 = getelementptr [36 x float], [36 x float] addrspace(3)* @"\01?sceneDepthShared@@3PAY05$$CAMA.1dim", i32 0, i32 %428
  %430 = load float, float addrspace(3)* %429, align 4, !tbaa !27, !noalias !36
  %431 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %432 = extractvalue %dx.types.CBufRet.f32 %431, 3
  %433 = fcmp fast oge float %430, %432
  %434 = and i1 %234, %433
  %435 = fsub fast float %430, %118
  %436 = call float @dx.op.unary.f32(i32 6, float %435)  ; FAbs(value)
  %437 = select i1 %434, float 0.000000e+00, float %436
  %438 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 424)  ; CBufferLoadLegacy(handle,regIndex)
  %439 = extractvalue %dx.types.CBufRet.f32 %438, 2
  %440 = fcmp fast olt float %437, %439
  br i1 %440, label %441, label %478, !dx.controlflow.hints !41

; <label>:441                                     ; preds = %414
  %442 = mul i32 %108, 6
  %443 = add i32 %426, %442
  %444 = mul i32 %443, 3
  %445 = add i32 0, %444
  %446 = getelementptr [108 x float], [108 x float] addrspace(3)* @"\01?scatteringShared@@3PAY05$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %445
  %447 = load float, float addrspace(3)* %446, align 4
  %448 = mul i32 %108, 6
  %449 = add i32 %426, %448
  %450 = mul i32 %449, 3
  %451 = add i32 1, %450
  %452 = getelementptr [108 x float], [108 x float] addrspace(3)* @"\01?scatteringShared@@3PAY05$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %451
  %453 = load float, float addrspace(3)* %452, align 4
  %454 = mul i32 %108, 6
  %455 = add i32 %426, %454
  %456 = mul i32 %455, 3
  %457 = add i32 2, %456
  %458 = getelementptr [108 x float], [108 x float] addrspace(3)* @"\01?scatteringShared@@3PAY05$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %457
  %459 = load float, float addrspace(3)* %458, align 4
  %460 = mul i32 %108, 6
  %461 = add i32 %426, %460
  %462 = getelementptr [36 x float], [36 x float] addrspace(3)* @"\01?transmissionShared@@3PAY05$$CAMA.1dim", i32 0, i32 %461
  %463 = load float, float addrspace(3)* %462, align 4, !tbaa !27, !noalias !36
  %464 = mul i32 %108, 6
  %465 = add i32 %426, %464
  %466 = getelementptr [36 x float], [36 x float] addrspace(3)* @"\01?depthDensityWeightedShared@@3PAY05$$CAMA.1dim", i32 0, i32 %465
  %467 = load float, float addrspace(3)* %466, align 4, !tbaa !27, !noalias !36
  %468 = call float @dx.op.binary.f32(i32 35, float %421, float %447)  ; FMax(a,b)
  %469 = call float @dx.op.binary.f32(i32 35, float %422, float %453)  ; FMax(a,b)
  %470 = call float @dx.op.binary.f32(i32 35, float %423, float %459)  ; FMax(a,b)
  %471 = call float @dx.op.binary.f32(i32 36, float %418, float %447)  ; FMin(a,b)
  %472 = call float @dx.op.binary.f32(i32 36, float %419, float %453)  ; FMin(a,b)
  %473 = call float @dx.op.binary.f32(i32 36, float %420, float %459)  ; FMin(a,b)
  %474 = call float @dx.op.binary.f32(i32 35, float %417, float %463)  ; FMax(a,b)
  %475 = call float @dx.op.binary.f32(i32 36, float %416, float %463)  ; FMin(a,b)
  %476 = call float @dx.op.binary.f32(i32 35, float %415, float %467)  ; FMax(a,b)
  %477 = call float @dx.op.binary.f32(i32 36, float %424, float %467)  ; FMin(a,b)
  br label %478

; <label>:478                                     ; preds = %441, %414
  %479 = phi float [ %476, %441 ], [ %415, %414 ]
  %480 = phi float [ %475, %441 ], [ %416, %414 ]
  %481 = phi float [ %474, %441 ], [ %417, %414 ]
  %482 = phi float [ %471, %441 ], [ %418, %414 ]
  %483 = phi float [ %472, %441 ], [ %419, %414 ]
  %484 = phi float [ %473, %441 ], [ %420, %414 ]
  %485 = phi float [ %468, %441 ], [ %421, %414 ]
  %486 = phi float [ %469, %441 ], [ %422, %414 ]
  %487 = phi float [ %470, %441 ], [ %423, %414 ]
  %488 = phi float [ %477, %441 ], [ %424, %414 ]
  %489 = phi i32 [ 1, %441 ], [ %425, %414 ]
  %490 = mul i32 %298, 6
  %491 = add i32 %426, %490
  %492 = getelementptr [36 x float], [36 x float] addrspace(3)* @"\01?sceneDepthShared@@3PAY05$$CAMA.1dim", i32 0, i32 %491
  %493 = load float, float addrspace(3)* %492, align 4, !tbaa !27, !noalias !36
  %494 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %495 = extractvalue %dx.types.CBufRet.f32 %494, 3
  %496 = fcmp fast oge float %493, %495
  %497 = and i1 %234, %496
  %498 = fsub fast float %493, %118
  %499 = call float @dx.op.unary.f32(i32 6, float %498)  ; FAbs(value)
  %500 = select i1 %497, float 0.000000e+00, float %499
  %501 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 424)  ; CBufferLoadLegacy(handle,regIndex)
  %502 = extractvalue %dx.types.CBufRet.f32 %501, 2
  %503 = fcmp fast olt float %500, %502
  br i1 %503, label %504, label %541, !dx.controlflow.hints !41

; <label>:504                                     ; preds = %478
  %505 = mul i32 %298, 6
  %506 = add i32 %426, %505
  %507 = mul i32 %506, 3
  %508 = add i32 0, %507
  %509 = getelementptr [108 x float], [108 x float] addrspace(3)* @"\01?scatteringShared@@3PAY05$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %508
  %510 = load float, float addrspace(3)* %509, align 4
  %511 = mul i32 %298, 6
  %512 = add i32 %426, %511
  %513 = mul i32 %512, 3
  %514 = add i32 1, %513
  %515 = getelementptr [108 x float], [108 x float] addrspace(3)* @"\01?scatteringShared@@3PAY05$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %514
  %516 = load float, float addrspace(3)* %515, align 4
  %517 = mul i32 %298, 6
  %518 = add i32 %426, %517
  %519 = mul i32 %518, 3
  %520 = add i32 2, %519
  %521 = getelementptr [108 x float], [108 x float] addrspace(3)* @"\01?scatteringShared@@3PAY05$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %520
  %522 = load float, float addrspace(3)* %521, align 4
  %523 = mul i32 %298, 6
  %524 = add i32 %426, %523
  %525 = getelementptr [36 x float], [36 x float] addrspace(3)* @"\01?transmissionShared@@3PAY05$$CAMA.1dim", i32 0, i32 %524
  %526 = load float, float addrspace(3)* %525, align 4, !tbaa !27, !noalias !36
  %527 = mul i32 %298, 6
  %528 = add i32 %426, %527
  %529 = getelementptr [36 x float], [36 x float] addrspace(3)* @"\01?depthDensityWeightedShared@@3PAY05$$CAMA.1dim", i32 0, i32 %528
  %530 = load float, float addrspace(3)* %529, align 4, !tbaa !27, !noalias !36
  %531 = call float @dx.op.binary.f32(i32 35, float %485, float %510)  ; FMax(a,b)
  %532 = call float @dx.op.binary.f32(i32 35, float %486, float %516)  ; FMax(a,b)
  %533 = call float @dx.op.binary.f32(i32 35, float %487, float %522)  ; FMax(a,b)
  %534 = call float @dx.op.binary.f32(i32 36, float %482, float %510)  ; FMin(a,b)
  %535 = call float @dx.op.binary.f32(i32 36, float %483, float %516)  ; FMin(a,b)
  %536 = call float @dx.op.binary.f32(i32 36, float %484, float %522)  ; FMin(a,b)
  %537 = call float @dx.op.binary.f32(i32 35, float %481, float %526)  ; FMax(a,b)
  %538 = call float @dx.op.binary.f32(i32 36, float %480, float %526)  ; FMin(a,b)
  %539 = call float @dx.op.binary.f32(i32 35, float %479, float %530)  ; FMax(a,b)
  %540 = call float @dx.op.binary.f32(i32 36, float %488, float %530)  ; FMin(a,b)
  br label %541

; <label>:541                                     ; preds = %504, %478
  %542 = phi float [ %539, %504 ], [ %479, %478 ]
  %543 = phi float [ %538, %504 ], [ %480, %478 ]
  %544 = phi float [ %537, %504 ], [ %481, %478 ]
  %545 = phi float [ %534, %504 ], [ %482, %478 ]
  %546 = phi float [ %535, %504 ], [ %483, %478 ]
  %547 = phi float [ %536, %504 ], [ %484, %478 ]
  %548 = phi float [ %531, %504 ], [ %485, %478 ]
  %549 = phi float [ %532, %504 ], [ %486, %478 ]
  %550 = phi float [ %533, %504 ], [ %487, %478 ]
  %551 = phi float [ %540, %504 ], [ %488, %478 ]
  %552 = phi i32 [ 1, %504 ], [ %489, %478 ]
  %553 = mul i32 %362, 6
  %554 = add i32 %426, %553
  %555 = getelementptr [36 x float], [36 x float] addrspace(3)* @"\01?sceneDepthShared@@3PAY05$$CAMA.1dim", i32 0, i32 %554
  %556 = load float, float addrspace(3)* %555, align 4, !tbaa !27, !noalias !36
  %557 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %558 = extractvalue %dx.types.CBufRet.f32 %557, 3
  %559 = fcmp fast oge float %556, %558
  %560 = and i1 %234, %559
  %561 = fsub fast float %556, %118
  %562 = call float @dx.op.unary.f32(i32 6, float %561)  ; FAbs(value)
  %563 = select i1 %560, float 0.000000e+00, float %562
  %564 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 424)  ; CBufferLoadLegacy(handle,regIndex)
  %565 = extractvalue %dx.types.CBufRet.f32 %564, 2
  %566 = fcmp fast olt float %563, %565
  br i1 %566, label %567, label %604, !dx.controlflow.hints !41

; <label>:567                                     ; preds = %541
  %568 = mul i32 %362, 6
  %569 = add i32 %426, %568
  %570 = mul i32 %569, 3
  %571 = add i32 0, %570
  %572 = getelementptr [108 x float], [108 x float] addrspace(3)* @"\01?scatteringShared@@3PAY05$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %571
  %573 = load float, float addrspace(3)* %572, align 4
  %574 = mul i32 %362, 6
  %575 = add i32 %426, %574
  %576 = mul i32 %575, 3
  %577 = add i32 1, %576
  %578 = getelementptr [108 x float], [108 x float] addrspace(3)* @"\01?scatteringShared@@3PAY05$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %577
  %579 = load float, float addrspace(3)* %578, align 4
  %580 = mul i32 %362, 6
  %581 = add i32 %426, %580
  %582 = mul i32 %581, 3
  %583 = add i32 2, %582
  %584 = getelementptr [108 x float], [108 x float] addrspace(3)* @"\01?scatteringShared@@3PAY05$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %583
  %585 = load float, float addrspace(3)* %584, align 4
  %586 = mul i32 %362, 6
  %587 = add i32 %426, %586
  %588 = getelementptr [36 x float], [36 x float] addrspace(3)* @"\01?transmissionShared@@3PAY05$$CAMA.1dim", i32 0, i32 %587
  %589 = load float, float addrspace(3)* %588, align 4, !tbaa !27, !noalias !36
  %590 = mul i32 %362, 6
  %591 = add i32 %426, %590
  %592 = getelementptr [36 x float], [36 x float] addrspace(3)* @"\01?depthDensityWeightedShared@@3PAY05$$CAMA.1dim", i32 0, i32 %591
  %593 = load float, float addrspace(3)* %592, align 4, !tbaa !27, !noalias !36
  %594 = call float @dx.op.binary.f32(i32 35, float %548, float %573)  ; FMax(a,b)
  %595 = call float @dx.op.binary.f32(i32 35, float %549, float %579)  ; FMax(a,b)
  %596 = call float @dx.op.binary.f32(i32 35, float %550, float %585)  ; FMax(a,b)
  %597 = call float @dx.op.binary.f32(i32 36, float %545, float %573)  ; FMin(a,b)
  %598 = call float @dx.op.binary.f32(i32 36, float %546, float %579)  ; FMin(a,b)
  %599 = call float @dx.op.binary.f32(i32 36, float %547, float %585)  ; FMin(a,b)
  %600 = call float @dx.op.binary.f32(i32 35, float %544, float %589)  ; FMax(a,b)
  %601 = call float @dx.op.binary.f32(i32 36, float %543, float %589)  ; FMin(a,b)
  %602 = call float @dx.op.binary.f32(i32 35, float %542, float %593)  ; FMax(a,b)
  %603 = call float @dx.op.binary.f32(i32 36, float %551, float %593)  ; FMin(a,b)
  br label %604

; <label>:604                                     ; preds = %567, %541
  %605 = phi float [ %602, %567 ], [ %542, %541 ]
  %606 = phi float [ %601, %567 ], [ %543, %541 ]
  %607 = phi float [ %600, %567 ], [ %544, %541 ]
  %608 = phi float [ %597, %567 ], [ %545, %541 ]
  %609 = phi float [ %598, %567 ], [ %546, %541 ]
  %610 = phi float [ %599, %567 ], [ %547, %541 ]
  %611 = phi float [ %594, %567 ], [ %548, %541 ]
  %612 = phi float [ %595, %567 ], [ %549, %541 ]
  %613 = phi float [ %596, %567 ], [ %550, %541 ]
  %614 = phi float [ %603, %567 ], [ %551, %541 ]
  %615 = phi i32 [ 1, %567 ], [ %552, %541 ]
  %616 = add nuw i32 %109, 2
  %617 = mul i32 %108, 6
  %618 = add i32 %616, %617
  %619 = getelementptr [36 x float], [36 x float] addrspace(3)* @"\01?sceneDepthShared@@3PAY05$$CAMA.1dim", i32 0, i32 %618
  %620 = load float, float addrspace(3)* %619, align 4, !tbaa !27, !noalias !36
  %621 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %622 = extractvalue %dx.types.CBufRet.f32 %621, 3
  %623 = fcmp fast oge float %620, %622
  %624 = and i1 %234, %623
  %625 = fsub fast float %620, %118
  %626 = call float @dx.op.unary.f32(i32 6, float %625)  ; FAbs(value)
  %627 = select i1 %624, float 0.000000e+00, float %626
  %628 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 424)  ; CBufferLoadLegacy(handle,regIndex)
  %629 = extractvalue %dx.types.CBufRet.f32 %628, 2
  %630 = fcmp fast olt float %627, %629
  br i1 %630, label %631, label %668, !dx.controlflow.hints !41

; <label>:631                                     ; preds = %604
  %632 = mul i32 %108, 6
  %633 = add i32 %616, %632
  %634 = mul i32 %633, 3
  %635 = add i32 0, %634
  %636 = getelementptr [108 x float], [108 x float] addrspace(3)* @"\01?scatteringShared@@3PAY05$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %635
  %637 = load float, float addrspace(3)* %636, align 4
  %638 = mul i32 %108, 6
  %639 = add i32 %616, %638
  %640 = mul i32 %639, 3
  %641 = add i32 1, %640
  %642 = getelementptr [108 x float], [108 x float] addrspace(3)* @"\01?scatteringShared@@3PAY05$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %641
  %643 = load float, float addrspace(3)* %642, align 4
  %644 = mul i32 %108, 6
  %645 = add i32 %616, %644
  %646 = mul i32 %645, 3
  %647 = add i32 2, %646
  %648 = getelementptr [108 x float], [108 x float] addrspace(3)* @"\01?scatteringShared@@3PAY05$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %647
  %649 = load float, float addrspace(3)* %648, align 4
  %650 = mul i32 %108, 6
  %651 = add i32 %616, %650
  %652 = getelementptr [36 x float], [36 x float] addrspace(3)* @"\01?transmissionShared@@3PAY05$$CAMA.1dim", i32 0, i32 %651
  %653 = load float, float addrspace(3)* %652, align 4, !tbaa !27, !noalias !36
  %654 = mul i32 %108, 6
  %655 = add i32 %616, %654
  %656 = getelementptr [36 x float], [36 x float] addrspace(3)* @"\01?depthDensityWeightedShared@@3PAY05$$CAMA.1dim", i32 0, i32 %655
  %657 = load float, float addrspace(3)* %656, align 4, !tbaa !27, !noalias !36
  %658 = call float @dx.op.binary.f32(i32 35, float %611, float %637)  ; FMax(a,b)
  %659 = call float @dx.op.binary.f32(i32 35, float %612, float %643)  ; FMax(a,b)
  %660 = call float @dx.op.binary.f32(i32 35, float %613, float %649)  ; FMax(a,b)
  %661 = call float @dx.op.binary.f32(i32 36, float %608, float %637)  ; FMin(a,b)
  %662 = call float @dx.op.binary.f32(i32 36, float %609, float %643)  ; FMin(a,b)
  %663 = call float @dx.op.binary.f32(i32 36, float %610, float %649)  ; FMin(a,b)
  %664 = call float @dx.op.binary.f32(i32 35, float %607, float %653)  ; FMax(a,b)
  %665 = call float @dx.op.binary.f32(i32 36, float %606, float %653)  ; FMin(a,b)
  %666 = call float @dx.op.binary.f32(i32 35, float %605, float %657)  ; FMax(a,b)
  %667 = call float @dx.op.binary.f32(i32 36, float %614, float %657)  ; FMin(a,b)
  br label %668

; <label>:668                                     ; preds = %631, %604
  %669 = phi float [ %666, %631 ], [ %605, %604 ]
  %670 = phi float [ %665, %631 ], [ %606, %604 ]
  %671 = phi float [ %664, %631 ], [ %607, %604 ]
  %672 = phi float [ %661, %631 ], [ %608, %604 ]
  %673 = phi float [ %662, %631 ], [ %609, %604 ]
  %674 = phi float [ %663, %631 ], [ %610, %604 ]
  %675 = phi float [ %658, %631 ], [ %611, %604 ]
  %676 = phi float [ %659, %631 ], [ %612, %604 ]
  %677 = phi float [ %660, %631 ], [ %613, %604 ]
  %678 = phi float [ %667, %631 ], [ %614, %604 ]
  %679 = phi i32 [ 1, %631 ], [ %615, %604 ]
  %680 = mul i32 %298, 6
  %681 = add i32 %616, %680
  %682 = getelementptr [36 x float], [36 x float] addrspace(3)* @"\01?sceneDepthShared@@3PAY05$$CAMA.1dim", i32 0, i32 %681
  %683 = load float, float addrspace(3)* %682, align 4, !tbaa !27, !noalias !36
  %684 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %685 = extractvalue %dx.types.CBufRet.f32 %684, 3
  %686 = fcmp fast oge float %683, %685
  %687 = and i1 %234, %686
  %688 = fsub fast float %683, %118
  %689 = call float @dx.op.unary.f32(i32 6, float %688)  ; FAbs(value)
  %690 = select i1 %687, float 0.000000e+00, float %689
  %691 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 424)  ; CBufferLoadLegacy(handle,regIndex)
  %692 = extractvalue %dx.types.CBufRet.f32 %691, 2
  %693 = fcmp fast olt float %690, %692
  br i1 %693, label %694, label %731, !dx.controlflow.hints !41

; <label>:694                                     ; preds = %668
  %695 = mul i32 %298, 6
  %696 = add i32 %616, %695
  %697 = mul i32 %696, 3
  %698 = add i32 0, %697
  %699 = getelementptr [108 x float], [108 x float] addrspace(3)* @"\01?scatteringShared@@3PAY05$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %698
  %700 = load float, float addrspace(3)* %699, align 4
  %701 = mul i32 %298, 6
  %702 = add i32 %616, %701
  %703 = mul i32 %702, 3
  %704 = add i32 1, %703
  %705 = getelementptr [108 x float], [108 x float] addrspace(3)* @"\01?scatteringShared@@3PAY05$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %704
  %706 = load float, float addrspace(3)* %705, align 4
  %707 = mul i32 %298, 6
  %708 = add i32 %616, %707
  %709 = mul i32 %708, 3
  %710 = add i32 2, %709
  %711 = getelementptr [108 x float], [108 x float] addrspace(3)* @"\01?scatteringShared@@3PAY05$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %710
  %712 = load float, float addrspace(3)* %711, align 4
  %713 = mul i32 %298, 6
  %714 = add i32 %616, %713
  %715 = getelementptr [36 x float], [36 x float] addrspace(3)* @"\01?transmissionShared@@3PAY05$$CAMA.1dim", i32 0, i32 %714
  %716 = load float, float addrspace(3)* %715, align 4, !tbaa !27, !noalias !36
  %717 = mul i32 %298, 6
  %718 = add i32 %616, %717
  %719 = getelementptr [36 x float], [36 x float] addrspace(3)* @"\01?depthDensityWeightedShared@@3PAY05$$CAMA.1dim", i32 0, i32 %718
  %720 = load float, float addrspace(3)* %719, align 4, !tbaa !27, !noalias !36
  %721 = call float @dx.op.binary.f32(i32 35, float %675, float %700)  ; FMax(a,b)
  %722 = call float @dx.op.binary.f32(i32 35, float %676, float %706)  ; FMax(a,b)
  %723 = call float @dx.op.binary.f32(i32 35, float %677, float %712)  ; FMax(a,b)
  %724 = call float @dx.op.binary.f32(i32 36, float %672, float %700)  ; FMin(a,b)
  %725 = call float @dx.op.binary.f32(i32 36, float %673, float %706)  ; FMin(a,b)
  %726 = call float @dx.op.binary.f32(i32 36, float %674, float %712)  ; FMin(a,b)
  %727 = call float @dx.op.binary.f32(i32 35, float %671, float %716)  ; FMax(a,b)
  %728 = call float @dx.op.binary.f32(i32 36, float %670, float %716)  ; FMin(a,b)
  %729 = call float @dx.op.binary.f32(i32 35, float %669, float %720)  ; FMax(a,b)
  %730 = call float @dx.op.binary.f32(i32 36, float %678, float %720)  ; FMin(a,b)
  br label %731

; <label>:731                                     ; preds = %694, %668
  %732 = phi float [ %729, %694 ], [ %669, %668 ]
  %733 = phi float [ %728, %694 ], [ %670, %668 ]
  %734 = phi float [ %727, %694 ], [ %671, %668 ]
  %735 = phi float [ %724, %694 ], [ %672, %668 ]
  %736 = phi float [ %725, %694 ], [ %673, %668 ]
  %737 = phi float [ %726, %694 ], [ %674, %668 ]
  %738 = phi float [ %721, %694 ], [ %675, %668 ]
  %739 = phi float [ %722, %694 ], [ %676, %668 ]
  %740 = phi float [ %723, %694 ], [ %677, %668 ]
  %741 = phi float [ %730, %694 ], [ %678, %668 ]
  %742 = phi i32 [ 1, %694 ], [ %679, %668 ]
  %743 = mul i32 %362, 6
  %744 = add i32 %616, %743
  %745 = getelementptr [36 x float], [36 x float] addrspace(3)* @"\01?sceneDepthShared@@3PAY05$$CAMA.1dim", i32 0, i32 %744
  %746 = load float, float addrspace(3)* %745, align 4, !tbaa !27, !noalias !36
  %747 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %748 = extractvalue %dx.types.CBufRet.f32 %747, 3
  %749 = fcmp fast oge float %746, %748
  %750 = and i1 %234, %749
  %751 = fsub fast float %746, %118
  %752 = call float @dx.op.unary.f32(i32 6, float %751)  ; FAbs(value)
  %753 = select i1 %750, float 0.000000e+00, float %752
  %754 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 424)  ; CBufferLoadLegacy(handle,regIndex)
  %755 = extractvalue %dx.types.CBufRet.f32 %754, 2
  %756 = fcmp fast olt float %753, %755
  br i1 %756, label %757, label %794, !dx.controlflow.hints !41

; <label>:757                                     ; preds = %731
  %758 = mul i32 %362, 6
  %759 = add i32 %616, %758
  %760 = mul i32 %759, 3
  %761 = add i32 0, %760
  %762 = getelementptr [108 x float], [108 x float] addrspace(3)* @"\01?scatteringShared@@3PAY05$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %761
  %763 = load float, float addrspace(3)* %762, align 4
  %764 = mul i32 %362, 6
  %765 = add i32 %616, %764
  %766 = mul i32 %765, 3
  %767 = add i32 1, %766
  %768 = getelementptr [108 x float], [108 x float] addrspace(3)* @"\01?scatteringShared@@3PAY05$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %767
  %769 = load float, float addrspace(3)* %768, align 4
  %770 = mul i32 %362, 6
  %771 = add i32 %616, %770
  %772 = mul i32 %771, 3
  %773 = add i32 2, %772
  %774 = getelementptr [108 x float], [108 x float] addrspace(3)* @"\01?scatteringShared@@3PAY05$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %773
  %775 = load float, float addrspace(3)* %774, align 4
  %776 = mul i32 %362, 6
  %777 = add i32 %616, %776
  %778 = getelementptr [36 x float], [36 x float] addrspace(3)* @"\01?transmissionShared@@3PAY05$$CAMA.1dim", i32 0, i32 %777
  %779 = load float, float addrspace(3)* %778, align 4, !tbaa !27, !noalias !36
  %780 = mul i32 %362, 6
  %781 = add i32 %616, %780
  %782 = getelementptr [36 x float], [36 x float] addrspace(3)* @"\01?depthDensityWeightedShared@@3PAY05$$CAMA.1dim", i32 0, i32 %781
  %783 = load float, float addrspace(3)* %782, align 4, !tbaa !27, !noalias !36
  %784 = call float @dx.op.binary.f32(i32 35, float %738, float %763)  ; FMax(a,b)
  %785 = call float @dx.op.binary.f32(i32 35, float %739, float %769)  ; FMax(a,b)
  %786 = call float @dx.op.binary.f32(i32 35, float %740, float %775)  ; FMax(a,b)
  %787 = call float @dx.op.binary.f32(i32 36, float %735, float %763)  ; FMin(a,b)
  %788 = call float @dx.op.binary.f32(i32 36, float %736, float %769)  ; FMin(a,b)
  %789 = call float @dx.op.binary.f32(i32 36, float %737, float %775)  ; FMin(a,b)
  %790 = call float @dx.op.binary.f32(i32 35, float %734, float %779)  ; FMax(a,b)
  %791 = call float @dx.op.binary.f32(i32 36, float %733, float %779)  ; FMin(a,b)
  %792 = call float @dx.op.binary.f32(i32 35, float %732, float %783)  ; FMax(a,b)
  %793 = call float @dx.op.binary.f32(i32 36, float %741, float %783)  ; FMin(a,b)
  br label %794

; <label>:794                                     ; preds = %757, %731
  %795 = phi float [ %792, %757 ], [ %732, %731 ]
  %796 = phi float [ %791, %757 ], [ %733, %731 ]
  %797 = phi float [ %790, %757 ], [ %734, %731 ]
  %798 = phi float [ %787, %757 ], [ %735, %731 ]
  %799 = phi float [ %788, %757 ], [ %736, %731 ]
  %800 = phi float [ %789, %757 ], [ %737, %731 ]
  %801 = phi float [ %784, %757 ], [ %738, %731 ]
  %802 = phi float [ %785, %757 ], [ %739, %731 ]
  %803 = phi float [ %786, %757 ], [ %740, %731 ]
  %804 = phi float [ %793, %757 ], [ %741, %731 ]
  %805 = phi i32 [ 1, %757 ], [ %742, %731 ]
  %806 = icmp eq i32 %805, 0
  br i1 %806, label %860, label %807, !dx.controlflow.hints !42

; <label>:807                                     ; preds = %794
  %808 = fadd fast float %801, %798
  %809 = fadd fast float %802, %799
  %810 = fadd fast float %803, %800
  %811 = fmul fast float %808, 5.000000e-01
  %812 = fmul fast float %809, 5.000000e-01
  %813 = fmul fast float %810, 5.000000e-01
  %814 = fadd fast float %797, %796
  %815 = fmul fast float %814, 5.000000e-01
  %816 = fsub fast float %801, %811
  %817 = fsub fast float %802, %812
  %818 = fsub fast float %803, %813
  %819 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 424)  ; CBufferLoadLegacy(handle,regIndex)
  %820 = extractvalue %dx.types.CBufRet.f32 %819, 3
  %821 = fmul fast float %820, %816
  %822 = fmul fast float %820, %817
  %823 = fmul fast float %820, %818
  %824 = fadd fast float %821, %811
  %825 = fadd fast float %822, %812
  %826 = fadd fast float %823, %813
  %827 = fsub fast float %798, %811
  %828 = fsub fast float %799, %812
  %829 = fsub fast float %800, %813
  %830 = fmul fast float %820, %827
  %831 = fmul fast float %820, %828
  %832 = fmul fast float %820, %829
  %833 = fadd fast float %830, %811
  %834 = fadd fast float %831, %812
  %835 = fadd fast float %832, %813
  %836 = fsub fast float %797, %815
  %837 = fmul fast float %820, %836
  %838 = fadd fast float %837, %815
  %839 = fsub fast float %796, %815
  %840 = fmul fast float %820, %839
  %841 = fadd fast float %840, %815
  %842 = fadd fast float %804, %795
  %843 = fmul fast float %842, 5.000000e-01
  %844 = fsub fast float %795, %843
  %845 = fmul fast float %820, %844
  %846 = fadd fast float %845, %843
  %847 = fsub fast float %804, %843
  %848 = fmul fast float %820, %847
  %849 = fadd fast float %848, %843
  %850 = call float @dx.op.binary.f32(i32 35, float %833, float %228)  ; FMax(a,b)
  %851 = call float @dx.op.binary.f32(i32 35, float %834, float %229)  ; FMax(a,b)
  %852 = call float @dx.op.binary.f32(i32 35, float %835, float %230)  ; FMax(a,b)
  %853 = call float @dx.op.binary.f32(i32 36, float %824, float %850)  ; FMin(a,b)
  %854 = call float @dx.op.binary.f32(i32 36, float %825, float %851)  ; FMin(a,b)
  %855 = call float @dx.op.binary.f32(i32 36, float %826, float %852)  ; FMin(a,b)
  %856 = call float @dx.op.binary.f32(i32 35, float %841, float %231)  ; FMax(a,b)
  %857 = call float @dx.op.binary.f32(i32 36, float %838, float %856)  ; FMin(a,b)
  %858 = call float @dx.op.binary.f32(i32 35, float %849, float %232)  ; FMax(a,b)
  %859 = call float @dx.op.binary.f32(i32 36, float %846, float %858)  ; FMin(a,b)
  br label %860

; <label>:860                                     ; preds = %807, %794
  %861 = phi float [ %853, %807 ], [ %228, %794 ]
  %862 = phi float [ %854, %807 ], [ %229, %794 ]
  %863 = phi float [ %855, %807 ], [ %230, %794 ]
  %864 = phi float [ %857, %807 ], [ %231, %794 ]
  %865 = phi float [ %859, %807 ], [ %232, %794 ]
  %866 = icmp ne i32 %30, %13
  %867 = icmp ne i32 %31, %14
  %868 = or i1 %867, %866
  %869 = and i1 %868, %214
  %870 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %871 = extractvalue %dx.types.CBufRet.f32 %870, 0
  br i1 %869, label %872, label %876, !dx.controlflow.hints !43

; <label>:872                                     ; preds = %860
  %873 = fmul fast float %871, %861
  %874 = fmul fast float %871, %862
  %875 = fmul fast float %871, %863
  br label %897

; <label>:876                                     ; preds = %860
  %877 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 423)  ; CBufferLoadLegacy(handle,regIndex)
  %878 = extractvalue %dx.types.CBufRet.f32 %877, 3
  %879 = fsub fast float %861, %132
  %880 = fsub fast float %862, %133
  %881 = fsub fast float %863, %134
  %882 = fmul fast float %878, %879
  %883 = fmul fast float %878, %880
  %884 = fmul fast float %878, %881
  %885 = fadd fast float %882, %132
  %886 = fadd fast float %883, %133
  %887 = fadd fast float %884, %134
  %888 = fmul fast float %885, %871
  %889 = fmul fast float %886, %871
  %890 = fmul fast float %887, %871
  %891 = fsub fast float %864, %136
  %892 = fmul fast float %878, %891
  %893 = fadd fast float %892, %136
  %894 = fsub fast float %865, %138
  %895 = fmul fast float %878, %894
  %896 = fadd fast float %895, %138
  br label %897

; <label>:897                                     ; preds = %876, %872, %107
  %898 = phi float [ %865, %872 ], [ %896, %876 ], [ 0.000000e+00, %107 ]
  %899 = phi float [ %864, %872 ], [ %893, %876 ], [ 1.000000e+00, %107 ]
  %900 = phi float [ %873, %872 ], [ %888, %876 ], [ 0.000000e+00, %107 ]
  %901 = phi float [ %874, %872 ], [ %889, %876 ], [ 0.000000e+00, %107 ]
  %902 = phi float [ %875, %872 ], [ %890, %876 ], [ 0.000000e+00, %107 ]
  %903 = fmul fast float %900, %900
  %904 = fmul fast float %901, %901
  %905 = fadd fast float %904, %903
  %906 = fmul fast float %902, %902
  %907 = fadd fast float %905, %906
  %908 = call float @dx.op.unary.f32(i32 24, float %907)  ; Sqrt(value)
  %909 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedValue@@3PAMA", i32 0, i32 %15
  store float %908, float addrspace(3)* %909, align 4, !tbaa !27
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %910 = xor i32 %15, 1
  %911 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedValue@@3PAMA", i32 0, i32 %910
  %912 = load float, float addrspace(3)* %911, align 4, !tbaa !27
  %913 = xor i32 %15, 8
  %914 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedValue@@3PAMA", i32 0, i32 %913
  %915 = load float, float addrspace(3)* %914, align 4, !tbaa !27
  %916 = fsub fast float %908, %912
  %917 = fsub fast float %908, %915
  store float %899, float addrspace(3)* %909, align 4, !tbaa !27
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %918 = load float, float addrspace(3)* %911, align 4, !tbaa !27
  %919 = load float, float addrspace(3)* %914, align 4, !tbaa !27
  %920 = fsub fast float %899, %918
  %921 = fsub fast float %899, %919
  store float %898, float addrspace(3)* %909, align 4, !tbaa !27
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %922 = load float, float addrspace(3)* %911, align 4, !tbaa !27
  %923 = load float, float addrspace(3)* %914, align 4, !tbaa !27
  %924 = fsub fast float %898, %922
  %925 = fsub fast float %898, %923
  %926 = call float @dx.op.dot2.f32(i32 54, float %916, float %917, float %916, float %917)  ; Dot2(ax,ay,bx,by)
  %927 = call float @dx.op.dot2.f32(i32 54, float %920, float %921, float %920, float %921)  ; Dot2(ax,ay,bx,by)
  %928 = fadd fast float %927, %926
  %929 = call float @dx.op.dot2.f32(i32 54, float %924, float %925, float %924, float %925)  ; Dot2(ax,ay,bx,by)
  %930 = fadd fast float %928, %929
  %931 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %932 = extractvalue %dx.types.CBufRet.f32 %931, 3
  %933 = fcmp fast ogt float %930, %932
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %934 = and i32 %15, 31
  %935 = shl i32 1, %934
  %936 = select i1 %933, i32 %935, i32 0
  %937 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %15
  store i32 %936, i32 addrspace(3)* %937, align 4, !tbaa !44
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %938 = icmp ult i32 %934, 16
  br i1 %938, label %939, label %945, !dx.controlflow.hints !46

; <label>:939                                     ; preds = %897
  %940 = add i32 %15, 16
  %941 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %940
  %942 = load i32, i32 addrspace(3)* %941, align 4, !tbaa !44
  %943 = load i32, i32 addrspace(3)* %937, align 4, !tbaa !44
  %944 = or i32 %943, %942
  store i32 %944, i32 addrspace(3)* %937, align 4, !tbaa !44
  br label %945

; <label>:945                                     ; preds = %939, %897
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %946 = icmp ult i32 %934, 8
  br i1 %946, label %947, label %953, !dx.controlflow.hints !47

; <label>:947                                     ; preds = %945
  %948 = add i32 %15, 8
  %949 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %948
  %950 = load i32, i32 addrspace(3)* %949, align 4, !tbaa !44
  %951 = load i32, i32 addrspace(3)* %937, align 4, !tbaa !44
  %952 = or i32 %951, %950
  store i32 %952, i32 addrspace(3)* %937, align 4, !tbaa !44
  br label %953

; <label>:953                                     ; preds = %947, %945
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %954 = icmp ult i32 %934, 4
  br i1 %954, label %955, label %961, !dx.controlflow.hints !48

; <label>:955                                     ; preds = %953
  %956 = add i32 %15, 4
  %957 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %956
  %958 = load i32, i32 addrspace(3)* %957, align 4, !tbaa !44
  %959 = load i32, i32 addrspace(3)* %937, align 4, !tbaa !44
  %960 = or i32 %959, %958
  store i32 %960, i32 addrspace(3)* %937, align 4, !tbaa !44
  br label %961

; <label>:961                                     ; preds = %955, %953
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %962 = icmp ult i32 %934, 2
  br i1 %962, label %963, label %969, !dx.controlflow.hints !49

; <label>:963                                     ; preds = %961
  %964 = add i32 %15, 2
  %965 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %964
  %966 = load i32, i32 addrspace(3)* %965, align 4, !tbaa !44
  %967 = load i32, i32 addrspace(3)* %937, align 4, !tbaa !44
  %968 = or i32 %967, %966
  store i32 %968, i32 addrspace(3)* %937, align 4, !tbaa !44
  br label %969

; <label>:969                                     ; preds = %963, %961
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %970 = icmp eq i32 %934, 0
  br i1 %970, label %971, label %977, !dx.controlflow.hints !50

; <label>:971                                     ; preds = %969
  %972 = add i32 %15, 1
  %973 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %972
  %974 = load i32, i32 addrspace(3)* %973, align 4, !tbaa !44
  %975 = load i32, i32 addrspace(3)* %937, align 4, !tbaa !44
  %976 = or i32 %975, %974
  store i32 %976, i32 addrspace(3)* %937, align 4, !tbaa !44
  br label %977

; <label>:977                                     ; preds = %971, %969
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %978 = and i32 %15, -64
  %979 = or i32 %978, 32
  %980 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %978
  %981 = load i32, i32 addrspace(3)* %980, align 4, !tbaa !44
  %982 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %979
  %983 = load i32, i32 addrspace(3)* %982, align 4, !tbaa !44
  %984 = lshr i32 %981, 3
  %985 = and i32 %984, 1
  %986 = lshr i32 %983, 3
  %987 = and i32 %986, 1
  %988 = and i32 %981, 10
  %989 = icmp ne i32 %988, 0
  %990 = and i32 %983, 10
  %991 = icmp ne i32 %990, 0
  %992 = select i1 %989, i32 2, i32 0
  %993 = select i1 %991, i32 2, i32 0
  %994 = and i32 %981, 12
  %995 = icmp ne i32 %994, 0
  %996 = and i32 %983, 12
  %997 = icmp ne i32 %996, 0
  %998 = select i1 %995, i32 4, i32 0
  %999 = select i1 %997, i32 4, i32 0
  %1000 = and i32 %981, 14
  %1001 = icmp ne i32 %1000, 0
  %1002 = and i32 %983, 14
  %1003 = icmp ne i32 %1002, 0
  %1004 = select i1 %1001, i32 8, i32 0
  %1005 = select i1 %1003, i32 8, i32 0
  %1006 = and i32 %981, 16
  %1007 = and i32 %983, 16
  %1008 = and i32 %981, 18
  %1009 = icmp ne i32 %1008, 0
  %1010 = and i32 %983, 18
  %1011 = icmp ne i32 %1010, 0
  %1012 = select i1 %1009, i32 32, i32 0
  %1013 = select i1 %1011, i32 32, i32 0
  %1014 = and i32 %981, 20
  %1015 = icmp ne i32 %1014, 0
  %1016 = and i32 %983, 20
  %1017 = icmp ne i32 %1016, 0
  %1018 = select i1 %1015, i32 64, i32 0
  %1019 = select i1 %1017, i32 64, i32 0
  %1020 = and i32 %981, 22
  %1021 = icmp ne i32 %1020, 0
  %1022 = and i32 %983, 22
  %1023 = icmp ne i32 %1022, 0
  %1024 = select i1 %1021, i32 128, i32 0
  %1025 = or i32 %985, %1006
  %1026 = or i32 %1025, %992
  %1027 = or i32 %1026, %998
  %1028 = or i32 %1027, %1004
  %1029 = or i32 %1028, %1012
  %1030 = or i32 %1029, %1018
  %1031 = or i32 %1030, %1024
  %1032 = select i1 %1023, i32 128, i32 0
  %1033 = or i32 %987, %1007
  %1034 = or i32 %1033, %993
  %1035 = or i32 %1034, %999
  %1036 = or i32 %1035, %1005
  %1037 = or i32 %1036, %1013
  %1038 = or i32 %1037, %1019
  %1039 = or i32 %1038, %1032
  %1040 = lshr i32 %13, 3
  %1041 = lshr i32 %14, 2
  %1042 = icmp eq i32 %15, 0
  br i1 %1042, label %1043, label %1044, !dx.controlflow.hints !51

; <label>:1043                                    ; preds = %977
  call void @dx.op.textureStore.i32(i32 67, %dx.types.Handle %1, i32 %1040, i32 %1041, i32 undef, i32 %1031, i32 %1031, i32 %1031, i32 %1031, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %1044

; <label>:1044                                    ; preds = %1043, %977
  %1045 = icmp eq i32 %15, 32
  br i1 %1045, label %1046, label %1047, !dx.controlflow.hints !52

; <label>:1046                                    ; preds = %1044
  call void @dx.op.textureStore.i32(i32 67, %dx.types.Handle %1, i32 %1040, i32 %1041, i32 undef, i32 %1039, i32 %1039, i32 %1039, i32 %1039, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %1047

; <label>:1047                                    ; preds = %1046, %1044
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %3, i32 %13, i32 %14, i32 undef, float %900, float %901, float %902, float %899, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %13, i32 %14, i32 undef, float %898, float %898, float %898, float %898, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @dx.op.threadId.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.flattenedThreadIdInGroup.i32(i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.threadIdInGroup.i32(i32, i32) #0

; Function Attrs: nounwind
declare void @dx.op.textureStore.f32(i32, %dx.types.Handle, i32, i32, i32, float, float, float, float, i8) #1

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

; Function Attrs: nounwind readnone
declare float @dx.op.tertiary.f32(i32, float, float, float) #0

; Function Attrs: noduplicate nounwind
declare void @dx.op.barrier(i32, i32) #3

; Function Attrs: nounwind readnone
declare float @dx.op.unary.f32(i32, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.binary.f32(i32, float, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.dot2.f32(i32, float, float, float, float) #0

; Function Attrs: nounwind
declare void @dx.op.textureStore.i32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32, i8) #1

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
!4 = !{!5, !13, !18, !21}
!5 = !{!6, !8, !9, !10, !11, !12}
!6 = !{i32 0, %"class.Texture2D<vector<float, 3> >"* undef, !"", i32 0, i32 4, i32 1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, %"class.Texture2D<float>"* undef, !"", i32 0, i32 5, i32 1, i32 2, i32 0, !7}
!9 = !{i32 2, %"class.Texture2D<float>"* undef, !"", i32 0, i32 6, i32 1, i32 2, i32 0, !7}
!10 = !{i32 3, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 2, i32 1, i32 2, i32 0, !7}
!11 = !{i32 4, %"class.Texture2D<float>"* undef, !"", i32 0, i32 3, i32 1, i32 2, i32 0, !7}
!12 = !{i32 5, %"class.Texture2D<float>"* undef, !"", i32 0, i32 1, i32 1, i32 2, i32 0, !7}
!13 = !{!14, !15, !16}
!14 = !{i32 0, %"class.RWTexture2D<vector<float, 4> >"* undef, !"", i32 0, i32 0, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!15 = !{i32 1, %"class.RWTexture2D<float>"* undef, !"", i32 0, i32 1, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!16 = !{i32 2, %"class.RWTexture2D<unsigned int>"* undef, !"", i32 0, i32 2, i32 1, i32 2, i1 false, i1 false, i1 false, !17}
!17 = !{i32 0, i32 5}
!18 = !{!19, !20}
!19 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!20 = !{i32 1, %FogRaymarchingUpscaleConstBuffer_decl* undef, !"", i32 0, i32 0, i32 1, i32 16, null}
!21 = !{!22}
!22 = !{i32 0, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!23 = !{void ()* @cs_fog_raymarching_merge, !"cs_fog_raymarching_merge", null, !4, !24}
!24 = !{i32 0, i64 256, i32 4, !25}
!25 = !{i32 8, i32 8, i32 1}
!26 = distinct !{!26, !"dx.controlflow.hints", i32 2}
!27 = !{!28, !28, i64 0}
!28 = !{!"float", !29, i64 0}
!29 = !{!"omnipotent char", !30, i64 0}
!30 = !{!"Simple C/C++ TBAA"}
!31 = !{!32}
!32 = distinct !{!32, !33, !"\01?FogRaymarchingMerge@@YAXV?$vector@I$01@@0UMergeOutput@@@Z: %output"}
!33 = distinct !{!33, !"\01?FogRaymarchingMerge@@YAXV?$vector@I$01@@0UMergeOutput@@@Z"}
!34 = distinct !{!34, !"dx.controlflow.hints", i32 1}
!35 = distinct !{!35, !"dx.controlflow.hints", i32 2}
!36 = !{!37, !39, !40, !32}
!37 = distinct !{!37, !38, !"\01?NeighborhoodClamp@@YAXV?$vector@I$01@@V?$vector@H$01@@V?$vector@M$02@@MMMAIAV3@AIAM4@Z: %prevScattering"}
!38 = distinct !{!38, !"\01?NeighborhoodClamp@@YAXV?$vector@I$01@@V?$vector@H$01@@V?$vector@M$02@@MMMAIAV3@AIAM4@Z"}
!39 = distinct !{!39, !38, !"\01?NeighborhoodClamp@@YAXV?$vector@I$01@@V?$vector@H$01@@V?$vector@M$02@@MMMAIAV3@AIAM4@Z: %prevTransmission"}
!40 = distinct !{!40, !38, !"\01?NeighborhoodClamp@@YAXV?$vector@I$01@@V?$vector@H$01@@V?$vector@M$02@@MMMAIAV3@AIAM4@Z: %prevDepthDensityWeighted"}
!41 = distinct !{!41, !"dx.controlflow.hints", i32 2}
!42 = distinct !{!42, !"dx.controlflow.hints", i32 2}
!43 = distinct !{!43, !"dx.controlflow.hints", i32 1}
!44 = !{!45, !45, i64 0}
!45 = !{!"int", !29, i64 0}
!46 = distinct !{!46, !"dx.controlflow.hints", i32 2}
!47 = distinct !{!47, !"dx.controlflow.hints", i32 2}
!48 = distinct !{!48, !"dx.controlflow.hints", i32 2}
!49 = distinct !{!49, !"dx.controlflow.hints", i32 2}
!50 = distinct !{!50, !"dx.controlflow.hints", i32 2}
!51 = distinct !{!51, !"dx.controlflow.hints", i32 2}
!52 = distinct !{!52, !"dx.controlflow.hints", i32 2}

