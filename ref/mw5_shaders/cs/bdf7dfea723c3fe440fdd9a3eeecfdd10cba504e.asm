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
; shader hash: c3557440648f6b82e7281ddce5fead57
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
;   [32 x i8] (type annotation not present)
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
;                                   texture     f32          2d      T0             t2     1
;                                   texture     f32          2d      T1             t3     1
;                                   textureunorm_f32     2darray      T2             t4     1
;                                   textureunorm_f32     2darray      T3             t0     1
;                                   texture     f32          2d      T4             t1     1
;                                   texture     f32          2d      T5             t9     1
;                                   texture     f32          2d      T6             t8     1
;                                       UAVunorm_f32     2darray      U0             u0     1
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.CBufRet.f32 = type { float, float, float, float }
%dx.types.ResRet.f32 = type { float, float, float, float, i32 }
%dx.types.CBufRet.i32 = type { i32, i32, i32, i32 }
%"class.Texture2D<float>" = type { float, %"class.Texture2D<float>::mips_type" }
%"class.Texture2D<float>::mips_type" = type { i32 }
%"class.Texture2DArray<vector<float, 4> >" = type { <4 x float>, %"class.Texture2DArray<vector<float, 4> >::mips_type" }
%"class.Texture2DArray<vector<float, 4> >::mips_type" = type { i32 }
%"class.RWTexture2DArray<vector<float, 4> >" = type { <4 x float> }
%hostlayout.scene = type { %hostlayout.struct.GfxCodeSceneConsts }
%hostlayout.struct.GfxCodeSceneConsts = type { <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <3 x float>, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x i32>, <4 x i32>, <4 x float>, float, float, float, float, i32, i32, float, float, <2 x i32>, <2 x i32>, <2 x float>, <2 x float>, <3 x float>, i32, <3 x float>, float, <3 x float>, float, <2 x float>, <2 x float>, <3 x float>, float, <3 x float>, float, float, float, float, float, <3 x float>, float, i32, float, float, float, <4 x float>, <3 x float>, float, float, float, float, float, <4 x float>, float, float, float, float, i32, i32, i32, float, <4 x float>, i32, i32, i32, i32, i32, i32, i32, i32, <2 x i32>, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, [2 x <4 x i32>], [3 x <2 x float>], i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <2 x float>, <2 x float>, <4 x float>, <4 x i32>, <4 x float>, i32, float, float, float, i32, i32, i32, i32, <2 x float>, <2 x float>, <2 x float>, <2 x float>, i32, i32, <2 x float>, <2 x float>, <2 x float>, <3 x float>, i32, i32, i32, i32, i32, <4 x i32>, <4 x i32>, <4 x i32>, <4 x float>, i32, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <3 x float>, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], <4 x float>, [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], i32, i32, float, i32, <2 x float>, float, float, float, float, float, i32, <3 x float>, float, float, float, float, float, <3 x float>, float, <3 x float>, float, <3 x float>, float, float, float, float, float, <2 x float>, <2 x float>, float, float, float, float, <3 x float>, float, <2 x float>, i32, i32, <3 x float>, float, float, float, float, float, float, float, float, float, [4 x <3 x float>], i32, [4 x <3 x float>], i32, [4 x <3 x float>], i32, <4 x i32>, <2 x float>, <2 x float>, <2 x float>, i32, i32, float, float, float, float, <4 x float>, <4 x i32>, <4 x float>, <4 x float>, <4 x float>, i32, i32, i32, i32, <4 x float>, i32, float, float, i32, i32, float, float, i32, i32, float, float, i32, i32, float, float, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, float, float, float, float, i32, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, i32, i32, i32, float, <4 x float>, <4 x float>, <4 x float>, <4 x float>, i32, i32, i32, float, <4 x float>, float, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x i32>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [8 x <4 x float>], [8 x <4 x float>], <4 x float>, <3 x float>, i32, <2 x float>, float, float, float, float, float, float, <2 x float>, <2 x float>, <2 x float>, <2 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <2 x float>, float, float, <4 x float>, i32, i32, i32, i32, <3 x float>, i32, <4 x i32>, <4 x i32>, <2 x float>, <2 x i32>, <4 x float>, <4 x float>, <2 x float>, <2 x float>, [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, float, i32, i32, i32, i32, i32, float, float, <2 x float>, <2 x float>, float, float, float, float, i32, float, float, float, float, float, float, float, float, float, float, float, float, i32, i32, i32, float, float, float, i32, <2 x i32>, <2 x i32>, <4 x i32>, float, float, float, float, <4 x float>, <4 x float>, <2 x float>, <2 x float>, <4 x float>, <4 x float>, float, float, float, float, <4 x float>, float, float, float, float, i32, i32, float, float, <4 x float>, <2 x float>, <2 x float>, i32, i32, float, float, [4 x <4 x float>], float, float, float, float, float, float, float, float, i32, i32, i32, float, <4 x float>, <4 x float>, i32, i32, i32, i32, <2 x i32>, <2 x i32>, [2 x <4 x i32>], i32, float, float, float, i32, float, float, i32, <2 x i32>, <2 x float>, float, float, float, i32, %struct.GfxWeatherData, %hostlayout.struct.GfxVolumetricData, %struct.GfxFogRaymarchingData, %struct.GfxEnvironmentalFogData, %struct.GfxShallowWaterData, %struct.GfxGroundDeformationData, %struct.GfxSplinedModelGlobals }
%struct.GfxWeatherData = type { i32, i32, i32, i32, float, float, float, float, float, float, i32, i32, float, float, float, float, i32, i32, i32, i32, float, float, float, float, float, i32, i32, i32, i32, i32, i32, i32, <3 x float>, i32, <3 x float>, i32, i32, float, i32, i32, float, float, float, float }
%hostlayout.struct.GfxVolumetricData = type { [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <2 x float>, <2 x float>, <2 x float>, <2 x float>, <3 x i32>, i32, <3 x float>, i32, <4 x float>, <3 x float>, i32, i32, float, float, float, i32, i32, i32, float, <4 x float>, float, float, i32, i32, <3 x float>, i32, <3 x float>, float, <3 x float>, float, <2 x float>, float, float, <3 x float>, float, <3 x float>, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, <3 x float>, float, i32, float, float, float, <3 x float>, float, <2 x float>, <2 x float>, <3 x float>, float, i32, float, float, float, float, float, float, float, i32, i32, float, float, <3 x float>, float, i32, i32, <2 x float> }
%struct.GfxFogRaymarchingData = type { <2 x float>, <2 x float>, float, float, float, float, float, float, float, float, float, float, float, float, <2 x float>, <2 x float>, <3 x float>, float }
%struct.GfxEnvironmentalFogData = type { float, float, float, i32 }
%struct.GfxShallowWaterData = type { i32, i32, i32, i32, float, float, float, float, <2 x float>, <2 x float>, float, float, float, float, <3 x float>, float, float, float, float, float, float, float, float, float, i32, float, float, float, float, float, float, float, float, float, float, float, i32, float, float, float, float, i32, i32, i32 }
%struct.GfxGroundDeformationData = type { <2 x float>, <2 x float>, float, float, float, float, float, float, float, float, float, float, float, float, float, float, i32, i32 }
%struct.GfxSplinedModelGlobals = type { [64 x <4 x float>], [64 x <4 x float>], [16 x <4 x float>], [32 x <4 x float>], [64 x <4 x float>], [16 x <4 x float>], [16 x <4 x float>], float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float }
%MFogComputeConstBuffer_decl = type { %struct.MFogComputeConstBuffer }
%struct.MFogComputeConstBuffer = type { <2 x float>, <2 x float>, i32, float, float, i32 }
%struct.SamplerState = type { i32 }

@"\01?g_depthCacheLDS@@3PAMA" = external addrspace(3) global [100 x float], align 4
@"\01?g_momentsCacheLDS@@3PAV?$vector@M$03@@A.v.1dim" = addrspace(3) global [400 x float] undef, align 4

define void @cs_moment_fog_temporal_reconstruct() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 9, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call i32 @dx.op.flattenedThreadIdInGroup.i32(i32 96)  ; FlattenedThreadIdInGroup()
  %14 = call i32 @dx.op.groupId.i32(i32 94, i32 0)  ; GroupId(component)
  %15 = call i32 @dx.op.groupId.i32(i32 94, i32 1)  ; GroupId(component)
  %16 = shl i32 %14, 3
  %17 = shl i32 %15, 3
  %18 = and i32 %13, 7
  %19 = lshr i32 %13, 3
  %20 = or i32 %16, %18
  %21 = add i32 %17, %19
  %22 = icmp ult i32 %13, 100
  br i1 %22, label %23, label %80, !dx.controlflow.hints !26

; <label>:23                                      ; preds = %0
  %24 = urem i32 %13, 10
  %25 = udiv i32 %13, 10
  %26 = add i32 %16, -1
  %27 = add i32 %26, %24
  %28 = add i32 %17, -1
  %29 = add i32 %28, %25
  %30 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %31 = extractvalue %dx.types.CBufRet.f32 %30, 0
  %32 = extractvalue %dx.types.CBufRet.f32 %30, 1
  %33 = fadd fast float %31, -1.000000e+00
  %34 = fadd fast float %32, -1.000000e+00
  %35 = fptosi float %33 to i32
  %36 = fptosi float %34 to i32
  %37 = call i32 @dx.op.binary.i32(i32 37, i32 %27, i32 0)  ; IMax(a,b)
  %38 = call i32 @dx.op.binary.i32(i32 37, i32 %29, i32 0)  ; IMax(a,b)
  %39 = call i32 @dx.op.binary.i32(i32 38, i32 %37, i32 %35)  ; IMin(a,b)
  %40 = call i32 @dx.op.binary.i32(i32 38, i32 %38, i32 %36)  ; IMin(a,b)
  %41 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %5, i32 0, i32 %39, i32 %40, i32 0, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %42 = extractvalue %dx.types.ResRet.f32 %41, 0
  %43 = extractvalue %dx.types.ResRet.f32 %41, 1
  %44 = extractvalue %dx.types.ResRet.f32 %41, 2
  %45 = extractvalue %dx.types.ResRet.f32 %41, 3
  %46 = mul i32 %13, 4
  %47 = add i32 0, %46
  %48 = getelementptr [400 x float], [400 x float] addrspace(3)* @"\01?g_momentsCacheLDS@@3PAV?$vector@M$03@@A.v.1dim", i32 0, i32 %47
  store float %42, float addrspace(3)* %48, align 4
  %49 = mul i32 %13, 4
  %50 = add i32 1, %49
  %51 = getelementptr [400 x float], [400 x float] addrspace(3)* @"\01?g_momentsCacheLDS@@3PAV?$vector@M$03@@A.v.1dim", i32 0, i32 %50
  store float %43, float addrspace(3)* %51, align 4
  %52 = mul i32 %13, 4
  %53 = add i32 2, %52
  %54 = getelementptr [400 x float], [400 x float] addrspace(3)* @"\01?g_momentsCacheLDS@@3PAV?$vector@M$03@@A.v.1dim", i32 0, i32 %53
  store float %44, float addrspace(3)* %54, align 4
  %55 = mul i32 %13, 4
  %56 = add i32 3, %55
  %57 = getelementptr [400 x float], [400 x float] addrspace(3)* @"\01?g_momentsCacheLDS@@3PAV?$vector@M$03@@A.v.1dim", i32 0, i32 %56
  store float %45, float addrspace(3)* %57, align 4
  %58 = add i32 %40, %39
  %59 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %12, i32 361)  ; CBufferLoadLegacy(handle,regIndex)
  %60 = extractvalue %dx.types.CBufRet.i32 %59, 1
  %61 = add i32 %58, %60
  %62 = lshr i32 %61, 1
  %63 = and i32 %62, 1
  %64 = and i32 %61, 1
  %65 = xor i32 %63, %64
  %66 = shl i32 %39, 1
  %67 = shl i32 %40, 1
  %68 = or i32 %65, %66
  %69 = or i32 %63, %67
  %70 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %4, i32 0, i32 %68, i32 %69, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %71 = extractvalue %dx.types.ResRet.f32 %70, 0
  %72 = fcmp fast ogt float %71, -1.000000e+00
  %73 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %74 = extractvalue %dx.types.CBufRet.f32 %73, 1
  %75 = select i1 %72, float %74, float 1.000000e+00
  %76 = fadd fast float %71, 1.000000e+00
  %77 = fmul fast float %75, %76
  %78 = call float @dx.op.unary.f32(i32 6, float %77)  ; FAbs(value)
  %79 = getelementptr [100 x float], [100 x float] addrspace(3)* @"\01?g_depthCacheLDS@@3PAMA", i32 0, i32 %13
  store float %78, float addrspace(3)* %79, align 4, !tbaa !27
  br label %80

; <label>:80                                      ; preds = %23, %0
  %81 = add i32 %13, 64
  %82 = icmp ult i32 %81, 100
  br i1 %82, label %83, label %140, !dx.controlflow.hints !26

; <label>:83                                      ; preds = %80
  %84 = urem i32 %81, 10
  %85 = udiv i32 %81, 10
  %86 = add i32 %16, -1
  %87 = add i32 %86, %84
  %88 = add i32 %17, -1
  %89 = add i32 %88, %85
  %90 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %91 = extractvalue %dx.types.CBufRet.f32 %90, 0
  %92 = extractvalue %dx.types.CBufRet.f32 %90, 1
  %93 = fadd fast float %91, -1.000000e+00
  %94 = fadd fast float %92, -1.000000e+00
  %95 = fptosi float %93 to i32
  %96 = fptosi float %94 to i32
  %97 = call i32 @dx.op.binary.i32(i32 37, i32 %87, i32 0)  ; IMax(a,b)
  %98 = call i32 @dx.op.binary.i32(i32 37, i32 %89, i32 0)  ; IMax(a,b)
  %99 = call i32 @dx.op.binary.i32(i32 38, i32 %97, i32 %95)  ; IMin(a,b)
  %100 = call i32 @dx.op.binary.i32(i32 38, i32 %98, i32 %96)  ; IMin(a,b)
  %101 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %5, i32 0, i32 %99, i32 %100, i32 0, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %102 = extractvalue %dx.types.ResRet.f32 %101, 0
  %103 = extractvalue %dx.types.ResRet.f32 %101, 1
  %104 = extractvalue %dx.types.ResRet.f32 %101, 2
  %105 = extractvalue %dx.types.ResRet.f32 %101, 3
  %106 = mul i32 %81, 4
  %107 = add i32 0, %106
  %108 = getelementptr [400 x float], [400 x float] addrspace(3)* @"\01?g_momentsCacheLDS@@3PAV?$vector@M$03@@A.v.1dim", i32 0, i32 %107
  store float %102, float addrspace(3)* %108, align 4
  %109 = mul i32 %81, 4
  %110 = add i32 1, %109
  %111 = getelementptr [400 x float], [400 x float] addrspace(3)* @"\01?g_momentsCacheLDS@@3PAV?$vector@M$03@@A.v.1dim", i32 0, i32 %110
  store float %103, float addrspace(3)* %111, align 4
  %112 = mul i32 %81, 4
  %113 = add i32 2, %112
  %114 = getelementptr [400 x float], [400 x float] addrspace(3)* @"\01?g_momentsCacheLDS@@3PAV?$vector@M$03@@A.v.1dim", i32 0, i32 %113
  store float %104, float addrspace(3)* %114, align 4
  %115 = mul i32 %81, 4
  %116 = add i32 3, %115
  %117 = getelementptr [400 x float], [400 x float] addrspace(3)* @"\01?g_momentsCacheLDS@@3PAV?$vector@M$03@@A.v.1dim", i32 0, i32 %116
  store float %105, float addrspace(3)* %117, align 4
  %118 = add i32 %100, %99
  %119 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %12, i32 361)  ; CBufferLoadLegacy(handle,regIndex)
  %120 = extractvalue %dx.types.CBufRet.i32 %119, 1
  %121 = add i32 %118, %120
  %122 = lshr i32 %121, 1
  %123 = and i32 %122, 1
  %124 = and i32 %121, 1
  %125 = xor i32 %123, %124
  %126 = shl i32 %99, 1
  %127 = shl i32 %100, 1
  %128 = or i32 %125, %126
  %129 = or i32 %123, %127
  %130 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %4, i32 0, i32 %128, i32 %129, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %131 = extractvalue %dx.types.ResRet.f32 %130, 0
  %132 = fcmp fast ogt float %131, -1.000000e+00
  %133 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %134 = extractvalue %dx.types.CBufRet.f32 %133, 1
  %135 = select i1 %132, float %134, float 1.000000e+00
  %136 = fadd fast float %131, 1.000000e+00
  %137 = fmul fast float %135, %136
  %138 = call float @dx.op.unary.f32(i32 6, float %137)  ; FAbs(value)
  %139 = getelementptr [100 x float], [100 x float] addrspace(3)* @"\01?g_depthCacheLDS@@3PAMA", i32 0, i32 %81
  store float %138, float addrspace(3)* %139, align 4, !tbaa !27
  br label %140

; <label>:140                                     ; preds = %83, %80
  %141 = add nuw nsw i32 %18, 11
  %142 = mul i32 %19, 10
  %143 = add i32 %141, %142
  %144 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %3, i32 0, i32 %20, i32 %21, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %145 = extractvalue %dx.types.ResRet.f32 %144, 0
  %146 = fcmp fast ogt float %145, -1.000000e+00
  %147 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %148 = extractvalue %dx.types.CBufRet.f32 %147, 1
  %149 = select i1 %146, float %148, float 1.000000e+00
  %150 = fadd fast float %145, 1.000000e+00
  %151 = fmul fast float %149, %150
  %152 = call float @dx.op.unary.f32(i32 6, float %151)  ; FAbs(value)
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %153 = getelementptr [100 x float], [100 x float] addrspace(3)* @"\01?g_depthCacheLDS@@3PAMA", i32 0, i32 %143
  %154 = load float, float addrspace(3)* %153, align 4, !tbaa !27
  %155 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %156 = extractvalue %dx.types.CBufRet.f32 %155, 3
  %157 = fsub fast float %152, %154
  %158 = call float @dx.op.unary.f32(i32 6, float %157)  ; FAbs(value)
  %159 = fcmp ult float %152, %156
  %160 = fcmp ult float %154, %156
  %161 = or i1 %160, %159
  %162 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %163 = extractvalue %dx.types.CBufRet.f32 %162, 2
  %164 = fcmp fast ogt float %158, %163
  %165 = and i1 %161, %164
  br i1 %165, label %166, label %408, !dx.controlflow.hints !31

; <label>:166                                     ; preds = %140
  %167 = add i32 %142, %18
  %168 = getelementptr [100 x float], [100 x float] addrspace(3)* @"\01?g_depthCacheLDS@@3PAMA", i32 0, i32 %167
  %169 = load float, float addrspace(3)* %168, align 4, !tbaa !27
  %170 = fcmp fast ogt float %169, %154
  br i1 %170, label %171, label %188, !dx.controlflow.hints !32

; <label>:171                                     ; preds = %166
  %172 = mul i32 %167, 4
  %173 = add i32 0, %172
  %174 = getelementptr [400 x float], [400 x float] addrspace(3)* @"\01?g_momentsCacheLDS@@3PAV?$vector@M$03@@A.v.1dim", i32 0, i32 %173
  %175 = load float, float addrspace(3)* %174, align 4
  %176 = mul i32 %167, 4
  %177 = add i32 1, %176
  %178 = getelementptr [400 x float], [400 x float] addrspace(3)* @"\01?g_momentsCacheLDS@@3PAV?$vector@M$03@@A.v.1dim", i32 0, i32 %177
  %179 = load float, float addrspace(3)* %178, align 4
  %180 = mul i32 %167, 4
  %181 = add i32 2, %180
  %182 = getelementptr [400 x float], [400 x float] addrspace(3)* @"\01?g_momentsCacheLDS@@3PAV?$vector@M$03@@A.v.1dim", i32 0, i32 %181
  %183 = load float, float addrspace(3)* %182, align 4
  %184 = mul i32 %167, 4
  %185 = add i32 3, %184
  %186 = getelementptr [400 x float], [400 x float] addrspace(3)* @"\01?g_momentsCacheLDS@@3PAV?$vector@M$03@@A.v.1dim", i32 0, i32 %185
  %187 = load float, float addrspace(3)* %186, align 4
  br label %188

; <label>:188                                     ; preds = %171, %166
  %189 = phi float [ %175, %171 ], [ 0.000000e+00, %166 ]
  %190 = phi float [ %179, %171 ], [ 0.000000e+00, %166 ]
  %191 = phi float [ %183, %171 ], [ 0x3FEF6560C0000000, %166 ]
  %192 = phi float [ %187, %171 ], [ 1.000000e+00, %166 ]
  %193 = phi i32 [ 1, %171 ], [ 0, %166 ]
  %194 = phi float [ %169, %171 ], [ %154, %166 ]
  %195 = add i32 %143, -1
  %196 = getelementptr [100 x float], [100 x float] addrspace(3)* @"\01?g_depthCacheLDS@@3PAMA", i32 0, i32 %195
  %197 = load float, float addrspace(3)* %196, align 4, !tbaa !27
  %198 = fcmp fast ogt float %197, %194
  br i1 %198, label %199, label %216, !dx.controlflow.hints !32

; <label>:199                                     ; preds = %188
  %200 = mul i32 %195, 4
  %201 = add i32 0, %200
  %202 = getelementptr [400 x float], [400 x float] addrspace(3)* @"\01?g_momentsCacheLDS@@3PAV?$vector@M$03@@A.v.1dim", i32 0, i32 %201
  %203 = load float, float addrspace(3)* %202, align 4
  %204 = mul i32 %195, 4
  %205 = add i32 1, %204
  %206 = getelementptr [400 x float], [400 x float] addrspace(3)* @"\01?g_momentsCacheLDS@@3PAV?$vector@M$03@@A.v.1dim", i32 0, i32 %205
  %207 = load float, float addrspace(3)* %206, align 4
  %208 = mul i32 %195, 4
  %209 = add i32 2, %208
  %210 = getelementptr [400 x float], [400 x float] addrspace(3)* @"\01?g_momentsCacheLDS@@3PAV?$vector@M$03@@A.v.1dim", i32 0, i32 %209
  %211 = load float, float addrspace(3)* %210, align 4
  %212 = mul i32 %195, 4
  %213 = add i32 3, %212
  %214 = getelementptr [400 x float], [400 x float] addrspace(3)* @"\01?g_momentsCacheLDS@@3PAV?$vector@M$03@@A.v.1dim", i32 0, i32 %213
  %215 = load float, float addrspace(3)* %214, align 4
  br label %216

; <label>:216                                     ; preds = %199, %188
  %217 = phi float [ %203, %199 ], [ %189, %188 ]
  %218 = phi float [ %207, %199 ], [ %190, %188 ]
  %219 = phi float [ %211, %199 ], [ %191, %188 ]
  %220 = phi float [ %215, %199 ], [ %192, %188 ]
  %221 = phi i32 [ 1, %199 ], [ %193, %188 ]
  %222 = phi float [ %197, %199 ], [ %194, %188 ]
  %223 = add i32 %143, 9
  %224 = getelementptr [100 x float], [100 x float] addrspace(3)* @"\01?g_depthCacheLDS@@3PAMA", i32 0, i32 %223
  %225 = load float, float addrspace(3)* %224, align 4, !tbaa !27
  %226 = fcmp fast ogt float %225, %222
  br i1 %226, label %227, label %244, !dx.controlflow.hints !32

; <label>:227                                     ; preds = %216
  %228 = mul i32 %223, 4
  %229 = add i32 0, %228
  %230 = getelementptr [400 x float], [400 x float] addrspace(3)* @"\01?g_momentsCacheLDS@@3PAV?$vector@M$03@@A.v.1dim", i32 0, i32 %229
  %231 = load float, float addrspace(3)* %230, align 4
  %232 = mul i32 %223, 4
  %233 = add i32 1, %232
  %234 = getelementptr [400 x float], [400 x float] addrspace(3)* @"\01?g_momentsCacheLDS@@3PAV?$vector@M$03@@A.v.1dim", i32 0, i32 %233
  %235 = load float, float addrspace(3)* %234, align 4
  %236 = mul i32 %223, 4
  %237 = add i32 2, %236
  %238 = getelementptr [400 x float], [400 x float] addrspace(3)* @"\01?g_momentsCacheLDS@@3PAV?$vector@M$03@@A.v.1dim", i32 0, i32 %237
  %239 = load float, float addrspace(3)* %238, align 4
  %240 = mul i32 %223, 4
  %241 = add i32 3, %240
  %242 = getelementptr [400 x float], [400 x float] addrspace(3)* @"\01?g_momentsCacheLDS@@3PAV?$vector@M$03@@A.v.1dim", i32 0, i32 %241
  %243 = load float, float addrspace(3)* %242, align 4
  br label %244

; <label>:244                                     ; preds = %227, %216
  %245 = phi float [ %231, %227 ], [ %217, %216 ]
  %246 = phi float [ %235, %227 ], [ %218, %216 ]
  %247 = phi float [ %239, %227 ], [ %219, %216 ]
  %248 = phi float [ %243, %227 ], [ %220, %216 ]
  %249 = phi i32 [ 1, %227 ], [ %221, %216 ]
  %250 = phi float [ %225, %227 ], [ %222, %216 ]
  %251 = add i32 %143, 10
  %252 = getelementptr [100 x float], [100 x float] addrspace(3)* @"\01?g_depthCacheLDS@@3PAMA", i32 0, i32 %251
  %253 = load float, float addrspace(3)* %252, align 4, !tbaa !27
  %254 = fcmp fast ogt float %253, %250
  br i1 %254, label %255, label %272, !dx.controlflow.hints !32

; <label>:255                                     ; preds = %244
  %256 = mul i32 %251, 4
  %257 = add i32 0, %256
  %258 = getelementptr [400 x float], [400 x float] addrspace(3)* @"\01?g_momentsCacheLDS@@3PAV?$vector@M$03@@A.v.1dim", i32 0, i32 %257
  %259 = load float, float addrspace(3)* %258, align 4
  %260 = mul i32 %251, 4
  %261 = add i32 1, %260
  %262 = getelementptr [400 x float], [400 x float] addrspace(3)* @"\01?g_momentsCacheLDS@@3PAV?$vector@M$03@@A.v.1dim", i32 0, i32 %261
  %263 = load float, float addrspace(3)* %262, align 4
  %264 = mul i32 %251, 4
  %265 = add i32 2, %264
  %266 = getelementptr [400 x float], [400 x float] addrspace(3)* @"\01?g_momentsCacheLDS@@3PAV?$vector@M$03@@A.v.1dim", i32 0, i32 %265
  %267 = load float, float addrspace(3)* %266, align 4
  %268 = mul i32 %251, 4
  %269 = add i32 3, %268
  %270 = getelementptr [400 x float], [400 x float] addrspace(3)* @"\01?g_momentsCacheLDS@@3PAV?$vector@M$03@@A.v.1dim", i32 0, i32 %269
  %271 = load float, float addrspace(3)* %270, align 4
  br label %272

; <label>:272                                     ; preds = %255, %244
  %273 = phi float [ %259, %255 ], [ %245, %244 ]
  %274 = phi float [ %263, %255 ], [ %246, %244 ]
  %275 = phi float [ %267, %255 ], [ %247, %244 ]
  %276 = phi float [ %271, %255 ], [ %248, %244 ]
  %277 = phi i32 [ 1, %255 ], [ %249, %244 ]
  %278 = phi float [ %253, %255 ], [ %250, %244 ]
  %279 = add i32 %143, -10
  %280 = getelementptr [100 x float], [100 x float] addrspace(3)* @"\01?g_depthCacheLDS@@3PAMA", i32 0, i32 %279
  %281 = load float, float addrspace(3)* %280, align 4, !tbaa !27
  %282 = fcmp fast ogt float %281, %278
  br i1 %282, label %283, label %300, !dx.controlflow.hints !32

; <label>:283                                     ; preds = %272
  %284 = mul i32 %279, 4
  %285 = add i32 0, %284
  %286 = getelementptr [400 x float], [400 x float] addrspace(3)* @"\01?g_momentsCacheLDS@@3PAV?$vector@M$03@@A.v.1dim", i32 0, i32 %285
  %287 = load float, float addrspace(3)* %286, align 4
  %288 = mul i32 %279, 4
  %289 = add i32 1, %288
  %290 = getelementptr [400 x float], [400 x float] addrspace(3)* @"\01?g_momentsCacheLDS@@3PAV?$vector@M$03@@A.v.1dim", i32 0, i32 %289
  %291 = load float, float addrspace(3)* %290, align 4
  %292 = mul i32 %279, 4
  %293 = add i32 2, %292
  %294 = getelementptr [400 x float], [400 x float] addrspace(3)* @"\01?g_momentsCacheLDS@@3PAV?$vector@M$03@@A.v.1dim", i32 0, i32 %293
  %295 = load float, float addrspace(3)* %294, align 4
  %296 = mul i32 %279, 4
  %297 = add i32 3, %296
  %298 = getelementptr [400 x float], [400 x float] addrspace(3)* @"\01?g_momentsCacheLDS@@3PAV?$vector@M$03@@A.v.1dim", i32 0, i32 %297
  %299 = load float, float addrspace(3)* %298, align 4
  br label %300

; <label>:300                                     ; preds = %283, %272
  %301 = phi float [ %287, %283 ], [ %273, %272 ]
  %302 = phi float [ %291, %283 ], [ %274, %272 ]
  %303 = phi float [ %295, %283 ], [ %275, %272 ]
  %304 = phi float [ %299, %283 ], [ %276, %272 ]
  %305 = phi i32 [ 1, %283 ], [ %277, %272 ]
  %306 = phi float [ %281, %283 ], [ %278, %272 ]
  %307 = add i32 %143, 11
  %308 = getelementptr [100 x float], [100 x float] addrspace(3)* @"\01?g_depthCacheLDS@@3PAMA", i32 0, i32 %307
  %309 = load float, float addrspace(3)* %308, align 4, !tbaa !27
  %310 = fcmp fast ogt float %309, %306
  br i1 %310, label %311, label %328, !dx.controlflow.hints !32

; <label>:311                                     ; preds = %300
  %312 = mul i32 %307, 4
  %313 = add i32 0, %312
  %314 = getelementptr [400 x float], [400 x float] addrspace(3)* @"\01?g_momentsCacheLDS@@3PAV?$vector@M$03@@A.v.1dim", i32 0, i32 %313
  %315 = load float, float addrspace(3)* %314, align 4
  %316 = mul i32 %307, 4
  %317 = add i32 1, %316
  %318 = getelementptr [400 x float], [400 x float] addrspace(3)* @"\01?g_momentsCacheLDS@@3PAV?$vector@M$03@@A.v.1dim", i32 0, i32 %317
  %319 = load float, float addrspace(3)* %318, align 4
  %320 = mul i32 %307, 4
  %321 = add i32 2, %320
  %322 = getelementptr [400 x float], [400 x float] addrspace(3)* @"\01?g_momentsCacheLDS@@3PAV?$vector@M$03@@A.v.1dim", i32 0, i32 %321
  %323 = load float, float addrspace(3)* %322, align 4
  %324 = mul i32 %307, 4
  %325 = add i32 3, %324
  %326 = getelementptr [400 x float], [400 x float] addrspace(3)* @"\01?g_momentsCacheLDS@@3PAV?$vector@M$03@@A.v.1dim", i32 0, i32 %325
  %327 = load float, float addrspace(3)* %326, align 4
  br label %328

; <label>:328                                     ; preds = %311, %300
  %329 = phi float [ %315, %311 ], [ %301, %300 ]
  %330 = phi float [ %319, %311 ], [ %302, %300 ]
  %331 = phi float [ %323, %311 ], [ %303, %300 ]
  %332 = phi float [ %327, %311 ], [ %304, %300 ]
  %333 = phi i32 [ 1, %311 ], [ %305, %300 ]
  %334 = phi float [ %309, %311 ], [ %306, %300 ]
  %335 = add i32 %143, 1
  %336 = getelementptr [100 x float], [100 x float] addrspace(3)* @"\01?g_depthCacheLDS@@3PAMA", i32 0, i32 %335
  %337 = load float, float addrspace(3)* %336, align 4, !tbaa !27
  %338 = fcmp fast ogt float %337, %334
  br i1 %338, label %339, label %356, !dx.controlflow.hints !32

; <label>:339                                     ; preds = %328
  %340 = mul i32 %335, 4
  %341 = add i32 0, %340
  %342 = getelementptr [400 x float], [400 x float] addrspace(3)* @"\01?g_momentsCacheLDS@@3PAV?$vector@M$03@@A.v.1dim", i32 0, i32 %341
  %343 = load float, float addrspace(3)* %342, align 4
  %344 = mul i32 %335, 4
  %345 = add i32 1, %344
  %346 = getelementptr [400 x float], [400 x float] addrspace(3)* @"\01?g_momentsCacheLDS@@3PAV?$vector@M$03@@A.v.1dim", i32 0, i32 %345
  %347 = load float, float addrspace(3)* %346, align 4
  %348 = mul i32 %335, 4
  %349 = add i32 2, %348
  %350 = getelementptr [400 x float], [400 x float] addrspace(3)* @"\01?g_momentsCacheLDS@@3PAV?$vector@M$03@@A.v.1dim", i32 0, i32 %349
  %351 = load float, float addrspace(3)* %350, align 4
  %352 = mul i32 %335, 4
  %353 = add i32 3, %352
  %354 = getelementptr [400 x float], [400 x float] addrspace(3)* @"\01?g_momentsCacheLDS@@3PAV?$vector@M$03@@A.v.1dim", i32 0, i32 %353
  %355 = load float, float addrspace(3)* %354, align 4
  br label %356

; <label>:356                                     ; preds = %339, %328
  %357 = phi float [ %343, %339 ], [ %329, %328 ]
  %358 = phi float [ %347, %339 ], [ %330, %328 ]
  %359 = phi float [ %351, %339 ], [ %331, %328 ]
  %360 = phi float [ %355, %339 ], [ %332, %328 ]
  %361 = phi i32 [ 1, %339 ], [ %333, %328 ]
  %362 = phi float [ %337, %339 ], [ %334, %328 ]
  %363 = add i32 %143, -9
  %364 = getelementptr [100 x float], [100 x float] addrspace(3)* @"\01?g_depthCacheLDS@@3PAMA", i32 0, i32 %363
  %365 = load float, float addrspace(3)* %364, align 4, !tbaa !27
  %366 = fcmp fast ogt float %365, %362
  br i1 %366, label %367, label %384, !dx.controlflow.hints !32

; <label>:367                                     ; preds = %356
  %368 = mul i32 %363, 4
  %369 = add i32 0, %368
  %370 = getelementptr [400 x float], [400 x float] addrspace(3)* @"\01?g_momentsCacheLDS@@3PAV?$vector@M$03@@A.v.1dim", i32 0, i32 %369
  %371 = load float, float addrspace(3)* %370, align 4
  %372 = mul i32 %363, 4
  %373 = add i32 1, %372
  %374 = getelementptr [400 x float], [400 x float] addrspace(3)* @"\01?g_momentsCacheLDS@@3PAV?$vector@M$03@@A.v.1dim", i32 0, i32 %373
  %375 = load float, float addrspace(3)* %374, align 4
  %376 = mul i32 %363, 4
  %377 = add i32 2, %376
  %378 = getelementptr [400 x float], [400 x float] addrspace(3)* @"\01?g_momentsCacheLDS@@3PAV?$vector@M$03@@A.v.1dim", i32 0, i32 %377
  %379 = load float, float addrspace(3)* %378, align 4
  %380 = mul i32 %363, 4
  %381 = add i32 3, %380
  %382 = getelementptr [400 x float], [400 x float] addrspace(3)* @"\01?g_momentsCacheLDS@@3PAV?$vector@M$03@@A.v.1dim", i32 0, i32 %381
  %383 = load float, float addrspace(3)* %382, align 4
  br label %384

; <label>:384                                     ; preds = %367, %356
  %385 = phi float [ %371, %367 ], [ %357, %356 ]
  %386 = phi float [ %375, %367 ], [ %358, %356 ]
  %387 = phi float [ %379, %367 ], [ %359, %356 ]
  %388 = phi float [ %383, %367 ], [ %360, %356 ]
  %389 = phi i32 [ 1, %367 ], [ %361, %356 ]
  %390 = icmp eq i32 %389, 0
  br i1 %390, label %391, label %425, !dx.controlflow.hints !33

; <label>:391                                     ; preds = %384
  %392 = mul i32 %143, 4
  %393 = add i32 0, %392
  %394 = getelementptr [400 x float], [400 x float] addrspace(3)* @"\01?g_momentsCacheLDS@@3PAV?$vector@M$03@@A.v.1dim", i32 0, i32 %393
  %395 = load float, float addrspace(3)* %394, align 4
  %396 = mul i32 %143, 4
  %397 = add i32 1, %396
  %398 = getelementptr [400 x float], [400 x float] addrspace(3)* @"\01?g_momentsCacheLDS@@3PAV?$vector@M$03@@A.v.1dim", i32 0, i32 %397
  %399 = load float, float addrspace(3)* %398, align 4
  %400 = mul i32 %143, 4
  %401 = add i32 2, %400
  %402 = getelementptr [400 x float], [400 x float] addrspace(3)* @"\01?g_momentsCacheLDS@@3PAV?$vector@M$03@@A.v.1dim", i32 0, i32 %401
  %403 = load float, float addrspace(3)* %402, align 4
  %404 = mul i32 %143, 4
  %405 = add i32 3, %404
  %406 = getelementptr [400 x float], [400 x float] addrspace(3)* @"\01?g_momentsCacheLDS@@3PAV?$vector@M$03@@A.v.1dim", i32 0, i32 %405
  %407 = load float, float addrspace(3)* %406, align 4
  br label %425

; <label>:408                                     ; preds = %140
  %409 = mul i32 %143, 4
  %410 = add i32 0, %409
  %411 = getelementptr [400 x float], [400 x float] addrspace(3)* @"\01?g_momentsCacheLDS@@3PAV?$vector@M$03@@A.v.1dim", i32 0, i32 %410
  %412 = load float, float addrspace(3)* %411, align 4
  %413 = mul i32 %143, 4
  %414 = add i32 1, %413
  %415 = getelementptr [400 x float], [400 x float] addrspace(3)* @"\01?g_momentsCacheLDS@@3PAV?$vector@M$03@@A.v.1dim", i32 0, i32 %414
  %416 = load float, float addrspace(3)* %415, align 4
  %417 = mul i32 %143, 4
  %418 = add i32 2, %417
  %419 = getelementptr [400 x float], [400 x float] addrspace(3)* @"\01?g_momentsCacheLDS@@3PAV?$vector@M$03@@A.v.1dim", i32 0, i32 %418
  %420 = load float, float addrspace(3)* %419, align 4
  %421 = mul i32 %143, 4
  %422 = add i32 3, %421
  %423 = getelementptr [400 x float], [400 x float] addrspace(3)* @"\01?g_momentsCacheLDS@@3PAV?$vector@M$03@@A.v.1dim", i32 0, i32 %422
  %424 = load float, float addrspace(3)* %423, align 4
  br label %425

; <label>:425                                     ; preds = %408, %391, %384
  %426 = phi float [ %395, %391 ], [ %412, %408 ], [ %385, %384 ]
  %427 = phi float [ %399, %391 ], [ %416, %408 ], [ %386, %384 ]
  %428 = phi float [ %403, %391 ], [ %420, %408 ], [ %387, %384 ]
  %429 = phi float [ %407, %391 ], [ %424, %408 ], [ %388, %384 ]
  %430 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %20, i32 %21, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %431 = extractvalue %dx.types.ResRet.f32 %430, 0
  %432 = uitofp i32 %20 to float
  %433 = uitofp i32 %21 to float
  %434 = fadd fast float %432, 5.000000e-01
  %435 = fadd fast float %433, 5.000000e-01
  %436 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %437 = extractvalue %dx.types.CBufRet.f32 %436, 2
  %438 = extractvalue %dx.types.CBufRet.f32 %436, 3
  %439 = fmul fast float %437, %434
  %440 = fmul fast float %438, %435
  %441 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %10, float %439, float %440, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %442 = extractvalue %dx.types.ResRet.f32 %441, 0
  %443 = bitcast float %442 to i32
  %444 = lshr i32 %443, 11
  %445 = and i32 %443, 2047
  %446 = and i32 %444, 2047
  %447 = uitofp i32 %445 to float
  %448 = uitofp i32 %446 to float
  %449 = fmul fast float %447, 0x3F50040100000000
  %450 = fmul fast float %448, 0x3F50040100000000
  %451 = fadd fast float %449, -1.000000e+00
  %452 = fadd fast float %450, -1.000000e+00
  %453 = lshr i32 %443, 22
  %454 = shl nuw nsw i32 %453, 5
  %455 = call float @dx.op.legacyF16ToF32(i32 131, i32 %454)  ; LegacyF16ToF32(value)
  %456 = call float @dx.op.unary.f32(i32 6, float %451)  ; FAbs(value)
  %457 = call float @dx.op.unary.f32(i32 6, float %452)  ; FAbs(value)
  %458 = fadd fast float %456, -5.000000e-01
  %459 = fadd fast float %457, -5.000000e-01
  %460 = fmul fast float %458, 2.000000e+00
  %461 = fmul fast float %459, 2.000000e+00
  %462 = call float @dx.op.unary.f32(i32 7, float %460)  ; Saturate(value)
  %463 = call float @dx.op.unary.f32(i32 7, float %461)  ; Saturate(value)
  %464 = fmul fast float %456, 2.000000e+00
  %465 = fmul fast float %457, 2.000000e+00
  %466 = call float @dx.op.unary.f32(i32 7, float %464)  ; Saturate(value)
  %467 = call float @dx.op.unary.f32(i32 7, float %465)  ; Saturate(value)
  %468 = fmul fast float %462, %462
  %469 = fmul fast float %468, 0x3FA48888A0000000
  %470 = fmul fast float %463, %463
  %471 = fmul fast float %470, 0x3FB2407960000000
  %472 = fmul fast float %466, 0x3F599999A0000000
  %473 = fmul fast float %467, 0x3F66C16C20000000
  %474 = fadd fast float %472, %469
  %475 = fadd fast float %473, %471
  %476 = fsub fast float -0.000000e+00, %474
  %477 = fsub fast float -0.000000e+00, %475
  %478 = fcmp fast olt float %451, 0.000000e+00
  %479 = fcmp fast olt float %452, 0.000000e+00
  %480 = select i1 %478, float 0.000000e+00, float 1.000000e+00
  %481 = select i1 %479, float 0.000000e+00, float 1.000000e+00
  %482 = fcmp fast une float %480, 0.000000e+00
  %483 = fcmp fast une float %481, 0.000000e+00
  %484 = select i1 %482, float %474, float %476
  %485 = select i1 %483, float %475, float %477
  %486 = fsub fast float %439, %484
  %487 = fsub fast float %440, %485
  %488 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %8, %dx.types.Handle %10, float %486, float %487, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %489 = extractvalue %dx.types.ResRet.f32 %488, 0
  %490 = extractvalue %dx.types.ResRet.f32 %488, 1
  %491 = extractvalue %dx.types.ResRet.f32 %488, 2
  %492 = extractvalue %dx.types.ResRet.f32 %488, 3
  %493 = bitcast float %489 to i32
  %494 = bitcast float %490 to i32
  %495 = bitcast float %491 to i32
  %496 = bitcast float %492 to i32
  %497 = call i32 @dx.op.binary.i32(i32 40, i32 %495, i32 %496)  ; UMin(a,b)
  %498 = call i32 @dx.op.binary.i32(i32 40, i32 %494, i32 %497)  ; UMin(a,b)
  %499 = call i32 @dx.op.binary.i32(i32 40, i32 %493, i32 %498)  ; UMin(a,b)
  %500 = lshr i32 %499, 11
  %501 = and i32 %499, 2047
  %502 = and i32 %500, 2047
  %503 = uitofp i32 %501 to float
  %504 = uitofp i32 %502 to float
  %505 = fmul fast float %503, 0x3F50040100000000
  %506 = fmul fast float %504, 0x3F50040100000000
  %507 = fadd fast float %505, -1.000000e+00
  %508 = fadd fast float %506, -1.000000e+00
  %509 = lshr i32 %499, 22
  %510 = shl nuw nsw i32 %509, 5
  %511 = call float @dx.op.legacyF16ToF32(i32 131, i32 %510)  ; LegacyF16ToF32(value)
  %512 = call float @dx.op.unary.f32(i32 6, float %507)  ; FAbs(value)
  %513 = call float @dx.op.unary.f32(i32 6, float %508)  ; FAbs(value)
  %514 = fadd fast float %512, -5.000000e-01
  %515 = fadd fast float %513, -5.000000e-01
  %516 = fmul fast float %514, 2.000000e+00
  %517 = fmul fast float %515, 2.000000e+00
  %518 = call float @dx.op.unary.f32(i32 7, float %516)  ; Saturate(value)
  %519 = call float @dx.op.unary.f32(i32 7, float %517)  ; Saturate(value)
  %520 = fmul fast float %512, 2.000000e+00
  %521 = fmul fast float %513, 2.000000e+00
  %522 = call float @dx.op.unary.f32(i32 7, float %520)  ; Saturate(value)
  %523 = call float @dx.op.unary.f32(i32 7, float %521)  ; Saturate(value)
  %524 = fmul fast float %518, %518
  %525 = fmul fast float %524, 0x3FA48888A0000000
  %526 = fmul fast float %519, %519
  %527 = fmul fast float %526, 0x3FB2407960000000
  %528 = fmul fast float %522, 0x3F599999A0000000
  %529 = fmul fast float %523, 0x3F66C16C20000000
  %530 = fadd fast float %528, %525
  %531 = fadd fast float %529, %527
  %532 = fsub fast float -0.000000e+00, %530
  %533 = fsub fast float -0.000000e+00, %531
  %534 = fcmp fast olt float %507, 0.000000e+00
  %535 = fcmp fast olt float %508, 0.000000e+00
  %536 = select i1 %534, float 0.000000e+00, float 1.000000e+00
  %537 = select i1 %535, float 0.000000e+00, float 1.000000e+00
  %538 = fcmp fast une float %536, 0.000000e+00
  %539 = fcmp fast une float %537, 0.000000e+00
  %540 = select i1 %538, float %530, float %532
  %541 = select i1 %539, float %531, float %533
  %542 = fmul fast float %484, 3.000000e+00
  %543 = fmul fast float %485, 3.000000e+00
  %544 = fmul fast float %455, 0x3FA99999A0000000
  %545 = fadd fast float %511, %544
  %546 = fcmp fast olt float %455, %545
  %547 = fsub fast float %484, %540
  %548 = fsub fast float %485, %541
  %549 = fmul fast float %547, 1.920000e+03
  %550 = fmul fast float %548, 1.080000e+03
  %551 = call float @dx.op.dot2.f32(i32 54, float %549, float %550, float %549, float %550)  ; Dot2(ax,ay,bx,by)
  %552 = bitcast float %551 to i32
  %553 = ashr i32 %552, 1
  %554 = add nsw i32 %553, 532487669
  %555 = bitcast i32 %554 to float
  %556 = fmul fast float %555, 2.000000e+00
  %557 = fsub fast float 1.000000e+00, %556
  %558 = call float @dx.op.unary.f32(i32 7, float %557)  ; Saturate(value)
  %559 = select i1 %546, float 1.000000e+00, float %558
  %560 = fmul fast float %484, 1.920000e+03
  %561 = fmul fast float %485, 1.080000e+03
  %562 = call float @dx.op.unary.f32(i32 6, float %560)  ; FAbs(value)
  %563 = call float @dx.op.unary.f32(i32 6, float %561)  ; FAbs(value)
  %564 = call float @dx.op.binary.f32(i32 35, float %562, float %563)  ; FMax(a,b)
  %565 = fmul fast float %564, 0x3FB99999A0000000
  %566 = fsub fast float 8.000000e+00, %565
  %567 = call float @dx.op.unary.f32(i32 7, float %566)  ; Saturate(value)
  %568 = fmul fast float %567, %559
  %569 = fadd fast float %439, -5.000000e-01
  %570 = fsub fast float %569, %542
  %571 = fadd fast float %440, -5.000000e-01
  %572 = fsub fast float %571, %543
  %573 = call float @dx.op.unary.f32(i32 6, float %570)  ; FAbs(value)
  %574 = call float @dx.op.unary.f32(i32 6, float %572)  ; FAbs(value)
  %575 = fadd fast float %573, -5.000000e-01
  %576 = fadd fast float %574, -5.000000e-01
  %577 = call float @dx.op.binary.f32(i32 35, float %575, float %576)  ; FMax(a,b)
  %578 = fcmp fast olt float %577, 0.000000e+00
  %579 = select i1 %578, float 1.000000e+00, float 0.000000e+00
  %580 = fmul fast float %568, %579
  %581 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %11, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %582 = extractvalue %dx.types.CBufRet.i32 %581, 0
  %583 = icmp eq i32 %582, 0
  %584 = select i1 %583, float %580, float 0.000000e+00
  %585 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %586 = extractvalue %dx.types.CBufRet.f32 %585, 1
  %587 = fadd fast float %586, -1.000000e+00
  %588 = fmul fast float %584, %587
  %589 = fadd fast float %588, 1.000000e+00
  %590 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 423)  ; CBufferLoadLegacy(handle,regIndex)
  %591 = extractvalue %dx.types.CBufRet.f32 %590, 1
  %592 = fmul fast float %591, %431
  %593 = fmul fast float %439, 2.000000e+00
  %594 = fmul fast float %440, 2.000000e+00
  %595 = fsub fast float 1.000000e+00, %593
  %596 = fsub fast float 1.000000e+00, %594
  %597 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %598 = extractvalue %dx.types.CBufRet.f32 %597, 0
  %599 = extractvalue %dx.types.CBufRet.f32 %597, 1
  %600 = extractvalue %dx.types.CBufRet.f32 %597, 2
  %601 = fmul fast float %598, %595
  %602 = fmul fast float %599, %595
  %603 = fmul fast float %600, %595
  %604 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %605 = extractvalue %dx.types.CBufRet.f32 %604, 0
  %606 = extractvalue %dx.types.CBufRet.f32 %604, 1
  %607 = extractvalue %dx.types.CBufRet.f32 %604, 2
  %608 = fmul fast float %605, %596
  %609 = fmul fast float %606, %596
  %610 = fmul fast float %607, %596
  %611 = fadd fast float %608, %601
  %612 = fadd fast float %609, %602
  %613 = fadd fast float %610, %603
  %614 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %615 = extractvalue %dx.types.CBufRet.f32 %614, 0
  %616 = extractvalue %dx.types.CBufRet.f32 %614, 1
  %617 = extractvalue %dx.types.CBufRet.f32 %614, 2
  %618 = fadd fast float %611, %615
  %619 = fadd fast float %612, %616
  %620 = fadd fast float %613, %617
  %621 = fmul fast float %618, %592
  %622 = fmul fast float %619, %592
  %623 = fmul fast float %620, %592
  %624 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 385)  ; CBufferLoadLegacy(handle,regIndex)
  %625 = extractvalue %dx.types.CBufRet.f32 %624, 0
  %626 = extractvalue %dx.types.CBufRet.f32 %624, 1
  %627 = extractvalue %dx.types.CBufRet.f32 %624, 3
  %628 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 386)  ; CBufferLoadLegacy(handle,regIndex)
  %629 = extractvalue %dx.types.CBufRet.f32 %628, 0
  %630 = extractvalue %dx.types.CBufRet.f32 %628, 1
  %631 = extractvalue %dx.types.CBufRet.f32 %628, 3
  %632 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 387)  ; CBufferLoadLegacy(handle,regIndex)
  %633 = extractvalue %dx.types.CBufRet.f32 %632, 0
  %634 = extractvalue %dx.types.CBufRet.f32 %632, 1
  %635 = extractvalue %dx.types.CBufRet.f32 %632, 3
  %636 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 388)  ; CBufferLoadLegacy(handle,regIndex)
  %637 = extractvalue %dx.types.CBufRet.f32 %636, 0
  %638 = extractvalue %dx.types.CBufRet.f32 %636, 1
  %639 = extractvalue %dx.types.CBufRet.f32 %636, 3
  %640 = fmul fast float %621, %625
  %641 = call float @dx.op.tertiary.f32(i32 46, float %629, float %622, float %640)  ; FMad(a,b,c)
  %642 = call float @dx.op.tertiary.f32(i32 46, float %633, float %623, float %641)  ; FMad(a,b,c)
  %643 = fadd fast float %642, %637
  %644 = fmul fast float %621, %626
  %645 = call float @dx.op.tertiary.f32(i32 46, float %630, float %622, float %644)  ; FMad(a,b,c)
  %646 = call float @dx.op.tertiary.f32(i32 46, float %634, float %623, float %645)  ; FMad(a,b,c)
  %647 = fadd fast float %646, %638
  %648 = fmul fast float %621, %627
  %649 = call float @dx.op.tertiary.f32(i32 46, float %631, float %622, float %648)  ; FMad(a,b,c)
  %650 = call float @dx.op.tertiary.f32(i32 46, float %635, float %623, float %649)  ; FMad(a,b,c)
  %651 = fadd fast float %650, %639
  %652 = fdiv fast float %643, %651
  %653 = fdiv fast float %647, %651
  %654 = fmul fast float %652, 5.000000e-01
  %655 = fmul fast float %653, 5.000000e-01
  %656 = fadd fast float %654, 5.000000e-01
  %657 = fsub fast float 5.000000e-01, %655
  %658 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %9, float %656, float %657, float 0.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %659 = extractvalue %dx.types.ResRet.f32 %658, 0
  %660 = extractvalue %dx.types.ResRet.f32 %658, 1
  %661 = extractvalue %dx.types.ResRet.f32 %658, 2
  %662 = extractvalue %dx.types.ResRet.f32 %658, 3
  %663 = fadd fast float %661, 0xBFEF6560C0000000
  %664 = fadd fast float %662, -1.000000e+00
  %665 = call float @dx.op.unary.f32(i32 6, float %659)  ; FAbs(value)
  %666 = call float @dx.op.unary.f32(i32 6, float %660)  ; FAbs(value)
  %667 = call float @dx.op.unary.f32(i32 6, float %663)  ; FAbs(value)
  %668 = call float @dx.op.unary.f32(i32 6, float %664)  ; FAbs(value)
  %669 = fcmp fast olt float %665, 0x3EB0C6F7A0000000
  %670 = fcmp fast olt float %666, 0x3EB0C6F7A0000000
  %671 = fcmp fast olt float %667, 0x3EB0C6F7A0000000
  %672 = fcmp fast olt float %668, 0x3EB0C6F7A0000000
  %673 = and i1 %669, %670
  %674 = and i1 %673, %671
  %675 = and i1 %674, %672
  %676 = select i1 %675, float 1.000000e+00, float %589
  %677 = fsub fast float %426, %659
  %678 = fsub fast float %427, %660
  %679 = fsub fast float %428, %661
  %680 = fsub fast float %429, %662
  %681 = fmul fast float %676, %677
  %682 = fmul fast float %676, %678
  %683 = fmul fast float %676, %679
  %684 = fmul fast float %676, %680
  %685 = fadd fast float %681, %659
  %686 = fadd fast float %682, %660
  %687 = fadd fast float %683, %661
  %688 = fadd fast float %684, %662
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %20, i32 %21, i32 0, float %685, float %686, float %687, float %688, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @dx.op.flattenedThreadIdInGroup.i32(i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.groupId.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.binary.i32(i32, i32, i32) #0

; Function Attrs: nounwind
declare void @dx.op.textureStore.f32(i32, %dx.types.Handle, i32, i32, i32, float, float, float, float, i8) #1

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32) #2

; Function Attrs: noduplicate nounwind
declare void @dx.op.barrier(i32, i32) #3

; Function Attrs: nounwind readnone
declare float @dx.op.unary.f32(i32, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.tertiary.f32(i32, float, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32) #2

; Function Attrs: nounwind readnone
declare float @dx.op.legacyF16ToF32(i32, i32) #0

; Function Attrs: nounwind readnone
declare float @dx.op.dot2.f32(i32, float, float, float, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.binary.f32(i32, float, float) #0

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
!4 = !{!5, !15, !17, !20}
!5 = !{!6, !8, !9, !11, !12, !13, !14}
!6 = !{i32 0, %"class.Texture2D<float>"* undef, !"", i32 0, i32 2, i32 1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, %"class.Texture2D<float>"* undef, !"", i32 0, i32 3, i32 1, i32 2, i32 0, !7}
!9 = !{i32 2, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 0, i32 4, i32 1, i32 7, i32 0, !10}
!10 = !{i32 0, i32 14}
!11 = !{i32 3, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 0, i32 0, i32 1, i32 7, i32 0, !10}
!12 = !{i32 4, %"class.Texture2D<float>"* undef, !"", i32 0, i32 1, i32 1, i32 2, i32 0, !7}
!13 = !{i32 5, %"class.Texture2D<float>"* undef, !"", i32 0, i32 9, i32 1, i32 2, i32 0, !7}
!14 = !{i32 6, %"class.Texture2D<float>"* undef, !"", i32 0, i32 8, i32 1, i32 2, i32 0, !7}
!15 = !{!16}
!16 = !{i32 0, %"class.RWTexture2DArray<vector<float, 4> >"* undef, !"", i32 0, i32 0, i32 1, i32 7, i1 false, i1 false, i1 false, !10}
!17 = !{!18, !19}
!18 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!19 = !{i32 1, %MFogComputeConstBuffer_decl* undef, !"", i32 0, i32 0, i32 1, i32 32, null}
!20 = !{!21, !22}
!21 = !{i32 0, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!22 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!23 = !{void ()* @cs_moment_fog_temporal_reconstruct, !"cs_moment_fog_temporal_reconstruct", null, !4, !24}
!24 = !{i32 0, i64 256, i32 4, !25}
!25 = !{i32 8, i32 8, i32 1}
!26 = distinct !{!26, !"dx.controlflow.hints", i32 1}
!27 = !{!28, !28, i64 0}
!28 = !{!"float", !29, i64 0}
!29 = !{!"omnipotent char", !30, i64 0}
!30 = !{!"Simple C/C++ TBAA"}
!31 = distinct !{!31, !"dx.controlflow.hints", i32 1}
!32 = distinct !{!32, !"dx.controlflow.hints", i32 2}
!33 = distinct !{!33, !"dx.controlflow.hints", i32 2}

