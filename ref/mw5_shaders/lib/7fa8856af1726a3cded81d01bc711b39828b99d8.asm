;
; Note: shader requires additional functionality:
;       UAVs at every shader stage
;       Raytracing tier 1.1 features
;
; shader hash: 0a123c982cc4757a60ee5507af18af2e
;
; Buffer Definitions:
;
; cbuffer scene
; {
;
;   [11728 x i8] (type annotation not present)
;
; }
;
; cbuffer BvhConstants_decl
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
; scene                             cbuffer      NA          NA     CB0            cb3     1
; BvhConstants_decl                 cbuffer      NA          NA     CB1            cb0     1
; tlas                              texture     i32         ras      T0            t21     1
; texDepth                          texture     f32          2d      T1             t0     1
; inSurfBoundsBuffer                texture    byte         r/o      T2             t8     1
; inGeometryDescriptor              texture    byte         r/o      T3            t10     1
; inBlasIndirection                 texture    byte         r/o      T4            t22     1
; inInstanceDescriptor              texture    byte         r/o      T5            t16     1
; inSmodelTransformsBuffer          texture    byte         r/o      T6            t11     1
; triIDTexture                      texture     u32          2d      T7            t12     1
; skinnedCacheBuffer                texture    byte         r/o      T8            t14     1
; inBspSurfDataBuffer               texture    byte         r/o      T9            t15     1
; xsurfUGBDataBuffer                texture    byte         r/o     T10            t17     1
; smodelSurfUGBIndirection          texture    byte         r/o     T11            t19     1
; inVerts                           texture    byte         r/o     T12             t2     1
; vtxVirtPageTable                  texture    byte         r/o     T13             t3     1
; unifiedIndexBuffer                texture    byte         r/o     T14             t4     1
; uibVirtPageTable                  texture    byte         r/o     T15             t5     1
; debugUavTexture                       UAV     f32          2d      U0             u4     1
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%"class.RWTexture2D<vector<float, 4> >" = type { <4 x float> }
%struct.RaytracingAccelerationStructure = type { i32 }
%"class.Texture2D<float>" = type { float, %"class.Texture2D<float>::mips_type" }
%"class.Texture2D<float>::mips_type" = type { i32 }
%struct.ByteAddressBuffer = type { i32 }
%"class.Texture2D<unsigned int>" = type { i32, %"class.Texture2D<unsigned int>::mips_type" }
%"class.Texture2D<unsigned int>::mips_type" = type { i32 }
%BvhConstants_decl = type { %struct.BvhConstants }
%struct.BvhConstants = type { i32, i32, i32, i32 }
%hostlayout.scene = type { %hostlayout.struct.GfxCodeSceneConsts }
%hostlayout.struct.GfxCodeSceneConsts = type { <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <3 x float>, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x i32>, <4 x i32>, <4 x float>, float, float, float, float, i32, i32, float, float, <2 x i32>, <2 x i32>, <2 x float>, <2 x float>, <3 x float>, i32, <3 x float>, float, <3 x float>, float, <2 x float>, <2 x float>, <3 x float>, float, <3 x float>, float, float, float, float, float, <3 x float>, float, i32, float, float, float, <4 x float>, <3 x float>, float, float, float, float, float, <4 x float>, float, float, float, float, i32, i32, i32, float, <4 x float>, i32, i32, i32, i32, i32, i32, i32, i32, <2 x i32>, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, [2 x <4 x i32>], [3 x <2 x float>], i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <2 x float>, <2 x float>, <4 x float>, <4 x i32>, <4 x float>, i32, float, float, float, i32, i32, i32, i32, <2 x float>, <2 x float>, <2 x float>, <2 x float>, i32, i32, <2 x float>, <2 x float>, <2 x float>, <3 x float>, i32, i32, i32, i32, i32, <4 x i32>, <4 x i32>, <4 x i32>, <4 x float>, i32, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <3 x float>, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], <4 x float>, [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], i32, i32, float, i32, <2 x float>, float, float, float, float, float, i32, <3 x float>, float, float, float, float, float, <3 x float>, float, <3 x float>, float, <3 x float>, float, float, float, float, float, <2 x float>, <2 x float>, float, float, float, float, <3 x float>, float, <2 x float>, i32, i32, <3 x float>, float, float, float, float, float, float, float, float, float, [4 x <3 x float>], i32, [4 x <3 x float>], i32, [4 x <3 x float>], i32, <4 x i32>, <2 x float>, <2 x float>, <2 x float>, i32, i32, float, float, float, float, <4 x float>, <4 x i32>, <4 x float>, <4 x float>, <4 x float>, i32, i32, i32, i32, <4 x float>, i32, float, float, i32, i32, float, float, i32, i32, float, float, i32, i32, float, float, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, float, float, float, float, i32, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, i32, i32, i32, float, <4 x float>, <4 x float>, <4 x float>, <4 x float>, i32, i32, i32, float, <4 x float>, float, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x i32>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [8 x <4 x float>], [8 x <4 x float>], <4 x float>, <3 x float>, i32, <2 x float>, float, float, float, float, float, float, <2 x float>, <2 x float>, <2 x float>, <2 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <2 x float>, float, float, <4 x float>, i32, i32, i32, i32, <3 x float>, i32, <4 x i32>, <4 x i32>, <2 x float>, <2 x i32>, <4 x float>, <4 x float>, <2 x float>, <2 x float>, [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, float, i32, i32, i32, i32, i32, float, float, <2 x float>, <2 x float>, float, float, float, float, i32, float, float, float, float, float, float, float, float, float, float, float, float, i32, i32, i32, float, float, float, i32, <2 x i32>, <2 x i32>, <4 x i32>, float, float, float, float, <4 x float>, <4 x float>, <2 x float>, <2 x float>, <4 x float>, <4 x float>, float, float, float, float, <4 x float>, float, float, float, float, i32, i32, float, float, <4 x float>, <2 x float>, <2 x float>, i32, i32, float, float, [4 x <4 x float>], float, float, float, float, float, float, float, float, i32, i32, i32, float, <4 x float>, <4 x float>, i32, i32, i32, i32, <2 x i32>, <2 x i32>, [2 x <4 x i32>], i32, float, float, float, i32, float, float, i32, <2 x i32>, <2 x float>, float, float, float, i32, %struct.GfxWeatherData, %hostlayout.struct.GfxVolumetricData, %struct.GfxFogRaymarchingData, %struct.GfxEnvironmentalFogData, %struct.GfxShallowWaterData, %struct.GfxGroundDeformationData, %struct.GfxSplinedModelGlobals }
%struct.GfxWeatherData = type { i32, i32, i32, i32, float, float, float, float, float, float, i32, i32, float, float, float, float, i32, i32, i32, i32, float, float, float, float, float, i32, i32, i32, i32, i32, i32, i32, <3 x float>, i32, <3 x float>, i32, i32, float, i32, i32, float, float, float, float }
%hostlayout.struct.GfxVolumetricData = type { [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <2 x float>, <2 x float>, <2 x float>, <2 x float>, <3 x i32>, i32, <3 x float>, i32, <4 x float>, <3 x float>, i32, i32, float, float, float, i32, i32, i32, float, <4 x float>, float, float, i32, i32, <3 x float>, i32, <3 x float>, float, <3 x float>, float, <2 x float>, float, float, <3 x float>, float, <3 x float>, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, <3 x float>, float, i32, float, float, float, <3 x float>, float, <2 x float>, <2 x float>, <3 x float>, float, i32, float, float, float, float, float, float, float, i32, i32, float, float, <3 x float>, float, i32, i32, <2 x float> }
%struct.GfxFogRaymarchingData = type { <2 x float>, <2 x float>, float, float, float, float, float, float, float, float, float, float, float, float, <2 x float>, <2 x float>, <3 x float>, float }
%struct.GfxEnvironmentalFogData = type { float, float, float, i32 }
%struct.GfxShallowWaterData = type { i32, i32, i32, i32, float, float, float, float, <2 x float>, <2 x float>, float, float, float, float, <3 x float>, float, float, float, float, float, float, float, float, float, i32, float, float, float, float, float, float, float, float, float, float, float, i32, float, float, float, float, i32, i32, i32 }
%struct.GfxGroundDeformationData = type { <2 x float>, <2 x float>, float, float, float, float, float, float, float, float, float, float, float, float, float, float, i32, i32 }
%struct.GfxSplinedModelGlobals = type { [64 x <4 x float>], [64 x <4 x float>], [16 x <4 x float>], [32 x <4 x float>], [64 x <4 x float>], [16 x <4 x float>], [16 x <4 x float>], float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float }
%struct.VisibilityPayload = type { float, i32, i32, i32, <2 x float> }
%dx.types.Handle = type { i8* }
%dx.types.CBufRet.f32 = type { float, float, float, float }
%dx.types.ResRet.f32 = type { float, float, float, float, i32 }
%dx.types.CBufRet.i32 = type { i32, i32, i32, i32 }
%dx.types.ResRet.i32 = type { i32, i32, i32, i32, i32 }
%struct.BuiltInTriangleIntersectionAttributes = type { <2 x float> }

@"\01?debugUavTexture@@3V?$RWTexture2D@V?$vector@M$03@@@@A" = external constant %"class.RWTexture2D<vector<float, 4> >", align 4
@"\01?tlas@@3URaytracingAccelerationStructure@@A" = external constant %struct.RaytracingAccelerationStructure, align 4
@"\01?texDepth@@3V?$Texture2D@M@@A" = external constant %"class.Texture2D<float>", align 4
@"\01?inSurfBoundsBuffer@@3UByteAddressBuffer@@A" = external constant %struct.ByteAddressBuffer, align 4
@"\01?inGeometryDescriptor@@3UByteAddressBuffer@@A" = external constant %struct.ByteAddressBuffer, align 4
@"\01?inBlasIndirection@@3UByteAddressBuffer@@A" = external constant %struct.ByteAddressBuffer, align 4
@"\01?inInstanceDescriptor@@3UByteAddressBuffer@@A" = external constant %struct.ByteAddressBuffer, align 4
@"\01?inSmodelTransformsBuffer@@3UByteAddressBuffer@@A" = external constant %struct.ByteAddressBuffer, align 4
@"\01?triIDTexture@@3V?$Texture2D@I@@A" = external constant %"class.Texture2D<unsigned int>", align 4
@"\01?skinnedCacheBuffer@@3UByteAddressBuffer@@A" = external constant %struct.ByteAddressBuffer, align 4
@"\01?inBspSurfDataBuffer@@3UByteAddressBuffer@@A" = external constant %struct.ByteAddressBuffer, align 4
@"\01?xsurfUGBDataBuffer@@3UByteAddressBuffer@@A" = external constant %struct.ByteAddressBuffer, align 4
@"\01?smodelSurfUGBIndirection@@3UByteAddressBuffer@@A" = external constant %struct.ByteAddressBuffer, align 4
@"\01?inVerts@@3UByteAddressBuffer@@A" = external constant %struct.ByteAddressBuffer, align 4
@"\01?vtxVirtPageTable@@3UByteAddressBuffer@@A" = external constant %struct.ByteAddressBuffer, align 4
@"\01?unifiedIndexBuffer@@3UByteAddressBuffer@@A" = external constant %struct.ByteAddressBuffer, align 4
@"\01?uibVirtPageTable@@3UByteAddressBuffer@@A" = external constant %struct.ByteAddressBuffer, align 4
@llvm.global_ctors = appending global [0 x { i32, void ()*, i8* }] zeroinitializer
@BvhConstants_decl = external constant %BvhConstants_decl
@scene_legacy = external global %hostlayout.scene

; Function Attrs: nounwind
define void @"\01?Raygen@@YAXXZ"() #0 {
  %1 = load %struct.ByteAddressBuffer, %struct.ByteAddressBuffer* @"\01?uibVirtPageTable@@3UByteAddressBuffer@@A", align 4, !noalias !47
  %2 = load %struct.ByteAddressBuffer, %struct.ByteAddressBuffer* @"\01?unifiedIndexBuffer@@3UByteAddressBuffer@@A", align 4, !noalias !50
  %3 = load %struct.ByteAddressBuffer, %struct.ByteAddressBuffer* @"\01?vtxVirtPageTable@@3UByteAddressBuffer@@A", align 4, !noalias !47
  %4 = load %struct.ByteAddressBuffer, %struct.ByteAddressBuffer* @"\01?inVerts@@3UByteAddressBuffer@@A", align 4, !noalias !47
  %5 = load %struct.ByteAddressBuffer, %struct.ByteAddressBuffer* @"\01?smodelSurfUGBIndirection@@3UByteAddressBuffer@@A", align 4, !noalias !53
  %6 = load %struct.ByteAddressBuffer, %struct.ByteAddressBuffer* @"\01?xsurfUGBDataBuffer@@3UByteAddressBuffer@@A", align 4, !noalias !56
  %7 = load %struct.ByteAddressBuffer, %struct.ByteAddressBuffer* @"\01?inBspSurfDataBuffer@@3UByteAddressBuffer@@A", align 4, !noalias !53
  %8 = load %struct.ByteAddressBuffer, %struct.ByteAddressBuffer* @"\01?skinnedCacheBuffer@@3UByteAddressBuffer@@A", align 4, !noalias !47
  %9 = load %"class.Texture2D<unsigned int>", %"class.Texture2D<unsigned int>"* @"\01?triIDTexture@@3V?$Texture2D@I@@A", align 4
  %10 = load %struct.ByteAddressBuffer, %struct.ByteAddressBuffer* @"\01?inSmodelTransformsBuffer@@3UByteAddressBuffer@@A", align 4, !noalias !53
  %11 = load %struct.ByteAddressBuffer, %struct.ByteAddressBuffer* @"\01?inInstanceDescriptor@@3UByteAddressBuffer@@A", align 4, !noalias !53
  %12 = load %struct.ByteAddressBuffer, %struct.ByteAddressBuffer* @"\01?inBlasIndirection@@3UByteAddressBuffer@@A", align 4, !noalias !53
  %13 = load %struct.ByteAddressBuffer, %struct.ByteAddressBuffer* @"\01?inGeometryDescriptor@@3UByteAddressBuffer@@A", align 4, !noalias !53
  %14 = load %struct.ByteAddressBuffer, %struct.ByteAddressBuffer* @"\01?inSurfBoundsBuffer@@3UByteAddressBuffer@@A", align 4, !noalias !53
  %15 = load %"class.Texture2D<float>", %"class.Texture2D<float>"* @"\01?texDepth@@3V?$Texture2D@M@@A", align 4
  %16 = load %"class.RWTexture2D<vector<float, 4> >", %"class.RWTexture2D<vector<float, 4> >"* @"\01?debugUavTexture@@3V?$RWTexture2D@V?$vector@M$03@@@@A", align 4
  %17 = load %BvhConstants_decl, %BvhConstants_decl* @BvhConstants_decl, align 4
  %18 = load %hostlayout.scene, %hostlayout.scene* @scene_legacy
  %19 = alloca %struct.VisibilityPayload, align 4
  %20 = call %dx.types.Handle @dx.op.createHandleForLib.BvhConstants_decl(i32 160, %BvhConstants_decl %17)  ; CreateHandleForLib(Resource)
  %21 = call %dx.types.Handle @dx.op.createHandleForLib.hostlayout.scene(i32 160, %hostlayout.scene %18)  ; CreateHandleForLib(Resource)
  %22 = call i32 @dx.op.dispatchRaysIndex.i32(i32 145, i8 0)  ; DispatchRaysIndex(col)
  %23 = call i32 @dx.op.dispatchRaysIndex.i32(i32 145, i8 1)  ; DispatchRaysIndex(col)
  %24 = sitofp i32 %22 to float
  %25 = sitofp i32 %23 to float
  %26 = fadd float %24, 5.000000e-01
  %27 = fadd float %25, 5.000000e-01
  %28 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %29 = extractvalue %dx.types.CBufRet.f32 %28, 2
  %30 = extractvalue %dx.types.CBufRet.f32 %28, 3
  %31 = fmul float %26, %29
  %32 = fmul float %27, %30
  %33 = call %dx.types.Handle @"dx.op.createHandleForLib.class.Texture2D<float>"(i32 160, %"class.Texture2D<float>" %15)  ; CreateHandleForLib(Resource)
  %34 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %33, i32 0, i32 %22, i32 %23, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %35 = extractvalue %dx.types.ResRet.f32 %34, 0
  %36 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 235)  ; CBufferLoadLegacy(handle,regIndex)
  %37 = extractvalue %dx.types.CBufRet.f32 %36, 0
  %38 = extractvalue %dx.types.CBufRet.f32 %36, 2
  %39 = fcmp ogt float %35, 9.843750e-01
  %40 = select i1 %39, float 6.400000e+01, float 0x3FF0410420000000
  %41 = select i1 %39, float -6.300000e+01, float -0.000000e+00
  %42 = select i1 %39, float %37, float %38
  %43 = call float @dx.op.unary.f32(i32 7, float %35)  ; Saturate(value)
  %44 = fmul fast float %40, %43
  %45 = fadd fast float %44, %41
  %46 = call float @dx.op.binary.f32(i32 35, float %45, float 0x3E45798EE0000000)  ; FMax(a,b)
  %47 = fdiv fast float %42, %46
  %48 = fmul float %31, 2.000000e+00
  %49 = fmul float %32, 2.000000e+00
  %50 = fsub float 1.000000e+00, %48
  %51 = fsub float 1.000000e+00, %49
  %52 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %53 = extractvalue %dx.types.CBufRet.f32 %52, 0
  %54 = extractvalue %dx.types.CBufRet.f32 %52, 1
  %55 = extractvalue %dx.types.CBufRet.f32 %52, 2
  %56 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %57 = extractvalue %dx.types.CBufRet.f32 %56, 0
  %58 = extractvalue %dx.types.CBufRet.f32 %56, 1
  %59 = extractvalue %dx.types.CBufRet.f32 %56, 2
  %60 = select i1 %39, float %53, float %57
  %61 = select i1 %39, float %54, float %58
  %62 = select i1 %39, float %55, float %59
  %63 = fmul float %50, %60
  %64 = fmul float %50, %61
  %65 = fmul float %50, %62
  %66 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %67 = extractvalue %dx.types.CBufRet.f32 %66, 0
  %68 = extractvalue %dx.types.CBufRet.f32 %66, 1
  %69 = extractvalue %dx.types.CBufRet.f32 %66, 2
  %70 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %71 = extractvalue %dx.types.CBufRet.f32 %70, 0
  %72 = extractvalue %dx.types.CBufRet.f32 %70, 1
  %73 = extractvalue %dx.types.CBufRet.f32 %70, 2
  %74 = select i1 %39, float %67, float %71
  %75 = select i1 %39, float %68, float %72
  %76 = select i1 %39, float %69, float %73
  %77 = fmul float %51, %74
  %78 = fmul float %51, %75
  %79 = fmul float %51, %76
  %80 = fadd float %63, %77
  %81 = fadd float %64, %78
  %82 = fadd float %65, %79
  %83 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %84 = extractvalue %dx.types.CBufRet.f32 %83, 0
  %85 = extractvalue %dx.types.CBufRet.f32 %83, 1
  %86 = extractvalue %dx.types.CBufRet.f32 %83, 2
  %87 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %88 = extractvalue %dx.types.CBufRet.f32 %87, 0
  %89 = extractvalue %dx.types.CBufRet.f32 %87, 1
  %90 = extractvalue %dx.types.CBufRet.f32 %87, 2
  %91 = select i1 %39, float %84, float %88
  %92 = select i1 %39, float %85, float %89
  %93 = select i1 %39, float %86, float %90
  %94 = fadd float %80, %91
  %95 = fadd float %81, %92
  %96 = fadd float %82, %93
  %97 = fmul fast float %94, %47
  %98 = fmul fast float %95, %47
  %99 = fmul fast float %96, %47
  %100 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %101 = extractvalue %dx.types.CBufRet.f32 %100, 0
  %102 = extractvalue %dx.types.CBufRet.f32 %100, 1
  %103 = extractvalue %dx.types.CBufRet.f32 %100, 2
  %104 = fadd fast float %97, %101
  %105 = fadd fast float %98, %102
  %106 = fadd fast float %99, %103
  %107 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %108 = extractvalue %dx.types.CBufRet.i32 %107, 0
  %109 = zext i1 %39 to i32
  %110 = icmp eq i32 %108, %109
  br i1 %110, label %111, label %1679

; <label>:111                                     ; preds = %0
  %112 = load %struct.RaytracingAccelerationStructure, %struct.RaytracingAccelerationStructure* @"\01?tlas@@3URaytracingAccelerationStructure@@A", align 4
  %113 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %114 = extractvalue %dx.types.CBufRet.f32 %113, 0
  %115 = extractvalue %dx.types.CBufRet.f32 %113, 1
  %116 = extractvalue %dx.types.CBufRet.f32 %113, 2
  %117 = call float @dx.op.dot3.f32(i32 55, float %94, float %95, float %96, float %94, float %95, float %96), !dx.precise !59  ; Dot3(ax,ay,az,bx,by,bz)
  %118 = call float @dx.op.unary.f32(i32 25, float %117), !dx.precise !59  ; Rsqrt(value)
  %119 = fmul float %94, %118
  %120 = fmul float %95, %118
  %121 = fmul float %96, %118
  %122 = getelementptr inbounds %struct.VisibilityPayload, %struct.VisibilityPayload* %19, i32 0, i32 0
  store float 0.000000e+00, float* %122, align 4, !tbaa !60
  %123 = getelementptr inbounds %struct.VisibilityPayload, %struct.VisibilityPayload* %19, i32 0, i32 1
  store i32 -1, i32* %123, align 4, !tbaa !64
  %124 = getelementptr inbounds %struct.VisibilityPayload, %struct.VisibilityPayload* %19, i32 0, i32 2
  store i32 -1, i32* %124, align 4, !tbaa !64
  %125 = getelementptr inbounds %struct.VisibilityPayload, %struct.VisibilityPayload* %19, i32 0, i32 3
  store i32 -1, i32* %125, align 4, !tbaa !64
  %126 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %127 = extractvalue %dx.types.CBufRet.i32 %126, 0
  %128 = icmp ne i32 %127, 0
  %129 = select i1 %128, i32 4, i32 2
  %130 = call %dx.types.Handle @dx.op.createHandleForLib.struct.RaytracingAccelerationStructure(i32 160, %struct.RaytracingAccelerationStructure %112)  ; CreateHandleForLib(Resource)
  call void @dx.op.traceRay.struct.VisibilityPayload(i32 157, %dx.types.Handle %130, i32 0, i32 %129, i32 0, i32 0, i32 0, float %114, float %115, float %116, float 0x3FB99999A0000000, float %119, float %120, float %121, float 9.999999e+06, %struct.VisibilityPayload* nonnull %19)  ; TraceRay(AccelerationStructure,RayFlags,InstanceInclusionMask,RayContributionToHitGroupIndex,MultiplierForGeometryContributionToShaderIndex,MissShaderIndex,Origin_X,Origin_Y,Origin_Z,TMin,Direction_X,Direction_Y,Direction_Z,TMax,payload)
  %131 = load float, float* %122, align 4, !tbaa !60
  %132 = fmul fast float %131, %119
  %133 = fmul fast float %131, %120
  %134 = fmul fast float %131, %121
  %135 = fadd fast float %132, %114
  %136 = fadd fast float %133, %115
  %137 = fadd fast float %134, %116
  %138 = fcmp une float %131, 1.000000e+06
  br i1 %138, label %139, label %1005

; <label>:139                                     ; preds = %111
  %140 = load i32, i32* %124, align 4, !tbaa !64
  %141 = lshr i32 %140, 16
  %142 = load i32, i32* %125, align 4, !tbaa !64
  %143 = load i32, i32* %123, align 4, !tbaa !64
  %144 = shl i32 %143, 2
  %145 = call %dx.types.Handle @dx.op.createHandleForLib.struct.ByteAddressBuffer(i32 160, %struct.ByteAddressBuffer %12)  ; CreateHandleForLib(Resource)
  %146 = call %dx.types.ResRet.i32 @dx.op.rawBufferLoad.i32(i32 139, %dx.types.Handle %145, i32 %144, i32 undef, i8 1, i32 4)  ; RawBufferLoad(srv,index,elementOffset,mask,alignment)
  %147 = extractvalue %dx.types.ResRet.i32 %146, 0
  %148 = shl i32 %140, 5
  %149 = and i32 %148, 2097120
  %150 = add i32 %147, %149
  %151 = call %dx.types.Handle @dx.op.createHandleForLib.struct.ByteAddressBuffer(i32 160, %struct.ByteAddressBuffer %13)  ; CreateHandleForLib(Resource)
  %152 = call %dx.types.ResRet.i32 @dx.op.rawBufferLoad.i32(i32 139, %dx.types.Handle %151, i32 %150, i32 undef, i8 1, i32 4)  ; RawBufferLoad(srv,index,elementOffset,mask,alignment)
  %153 = extractvalue %dx.types.ResRet.i32 %152, 0
  %154 = and i32 %153, 7
  %155 = mul nuw nsw i32 %141, 52
  %156 = call %dx.types.Handle @dx.op.createHandleForLib.struct.ByteAddressBuffer(i32 160, %struct.ByteAddressBuffer %11)  ; CreateHandleForLib(Resource)
  %157 = add nuw nsw i32 %155, 4
  %158 = call %dx.types.ResRet.f32 @dx.op.rawBufferLoad.f32(i32 139, %dx.types.Handle %156, i32 %157, i32 undef, i8 7, i32 4)  ; RawBufferLoad(srv,index,elementOffset,mask,alignment)
  %159 = extractvalue %dx.types.ResRet.f32 %158, 0
  %160 = extractvalue %dx.types.ResRet.f32 %158, 1
  %161 = extractvalue %dx.types.ResRet.f32 %158, 2
  %162 = add nuw nsw i32 %155, 16
  %163 = call %dx.types.ResRet.f32 @dx.op.rawBufferLoad.f32(i32 139, %dx.types.Handle %156, i32 %162, i32 undef, i8 15, i32 4)  ; RawBufferLoad(srv,index,elementOffset,mask,alignment)
  %164 = extractvalue %dx.types.ResRet.f32 %163, 0
  %165 = extractvalue %dx.types.ResRet.f32 %163, 1
  %166 = extractvalue %dx.types.ResRet.f32 %163, 2
  %167 = extractvalue %dx.types.ResRet.f32 %163, 3
  %168 = add nuw nsw i32 %155, 32
  %169 = call %dx.types.ResRet.f32 @dx.op.rawBufferLoad.f32(i32 139, %dx.types.Handle %156, i32 %168, i32 undef, i8 15, i32 4)  ; RawBufferLoad(srv,index,elementOffset,mask,alignment)
  %170 = extractvalue %dx.types.ResRet.f32 %169, 0
  %171 = extractvalue %dx.types.ResRet.f32 %169, 1
  %172 = extractvalue %dx.types.ResRet.f32 %169, 2
  %173 = extractvalue %dx.types.ResRet.f32 %169, 3
  %174 = add nuw nsw i32 %155, 48
  %175 = call %dx.types.ResRet.f32 @dx.op.rawBufferLoad.f32(i32 139, %dx.types.Handle %156, i32 %174, i32 undef, i8 1, i32 4)  ; RawBufferLoad(srv,index,elementOffset,mask,alignment)
  %176 = extractvalue %dx.types.ResRet.f32 %175, 0
  %177 = and i32 %153, 6
  %178 = icmp eq i32 %177, 0
  br i1 %178, label %179, label %209

; <label>:179                                     ; preds = %139
  %180 = add i32 %150, 4
  %181 = call %dx.types.ResRet.i32 @dx.op.rawBufferLoad.i32(i32 139, %dx.types.Handle %151, i32 %180, i32 undef, i8 1, i32 4)  ; RawBufferLoad(srv,index,elementOffset,mask,alignment)
  %182 = extractvalue %dx.types.ResRet.i32 %181, 0
  %183 = add i32 %150, 16
  %184 = call %dx.types.ResRet.i32 @dx.op.rawBufferLoad.i32(i32 139, %dx.types.Handle %151, i32 %183, i32 undef, i8 1, i32 4)  ; RawBufferLoad(srv,index,elementOffset,mask,alignment)
  %185 = extractvalue %dx.types.ResRet.i32 %184, 0
  %186 = shl i32 %182, 7
  %187 = call %dx.types.Handle @dx.op.createHandleForLib.struct.ByteAddressBuffer(i32 160, %struct.ByteAddressBuffer %7)  ; CreateHandleForLib(Resource)
  %188 = call %dx.types.ResRet.f32 @dx.op.rawBufferLoad.f32(i32 139, %dx.types.Handle %187, i32 %186, i32 undef, i8 7, i32 4)  ; RawBufferLoad(srv,index,elementOffset,mask,alignment)
  %189 = extractvalue %dx.types.ResRet.f32 %188, 0
  %190 = extractvalue %dx.types.ResRet.f32 %188, 1
  %191 = extractvalue %dx.types.ResRet.f32 %188, 2
  %192 = or i32 %186, 12
  %193 = call %dx.types.ResRet.f32 @dx.op.rawBufferLoad.f32(i32 139, %dx.types.Handle %187, i32 %192, i32 undef, i8 1, i32 4)  ; RawBufferLoad(srv,index,elementOffset,mask,alignment)
  %194 = extractvalue %dx.types.ResRet.f32 %193, 0
  %195 = or i32 %186, 36
  %196 = call %dx.types.ResRet.i32 @dx.op.rawBufferLoad.i32(i32 139, %dx.types.Handle %187, i32 %195, i32 undef, i8 1, i32 4)  ; RawBufferLoad(srv,index,elementOffset,mask,alignment)
  %197 = extractvalue %dx.types.ResRet.i32 %196, 0
  %198 = or i32 %186, 40
  %199 = call %dx.types.ResRet.i32 @dx.op.rawBufferLoad.i32(i32 139, %dx.types.Handle %187, i32 %198, i32 undef, i8 1, i32 4)  ; RawBufferLoad(srv,index,elementOffset,mask,alignment)
  %200 = extractvalue %dx.types.ResRet.i32 %199, 0
  %201 = icmp eq i32 %154, 1
  %202 = select i1 %201, float %159, float 0.000000e+00
  %203 = select i1 %201, float %160, float 0.000000e+00
  %204 = select i1 %201, float %161, float 0.000000e+00
  %205 = select i1 %201, float %164, float 0.000000e+00
  %206 = select i1 %201, float %165, float 0.000000e+00
  %207 = select i1 %201, float %166, float 0.000000e+00
  %208 = select i1 %201, float %167, float 1.000000e+00
  br label %320

; <label>:209                                     ; preds = %139
  %210 = icmp eq i32 %154, 2
  %211 = call %dx.types.Handle @dx.op.createHandleForLib.struct.ByteAddressBuffer(i32 160, %struct.ByteAddressBuffer %6)  ; CreateHandleForLib(Resource)
  br i1 %210, label %212, label %283

; <label>:212                                     ; preds = %209
  %213 = add i32 %150, 4
  %214 = call %dx.types.ResRet.i32 @dx.op.rawBufferLoad.i32(i32 139, %dx.types.Handle %151, i32 %213, i32 undef, i8 1, i32 4)  ; RawBufferLoad(srv,index,elementOffset,mask,alignment)
  %215 = extractvalue %dx.types.ResRet.i32 %214, 0
  %216 = add i32 %150, 8
  %217 = call %dx.types.ResRet.i32 @dx.op.rawBufferLoad.i32(i32 139, %dx.types.Handle %151, i32 %216, i32 undef, i8 1, i32 4)  ; RawBufferLoad(srv,index,elementOffset,mask,alignment)
  %218 = extractvalue %dx.types.ResRet.i32 %217, 0
  %219 = shl i32 %215, 2
  %220 = call %dx.types.Handle @dx.op.createHandleForLib.struct.ByteAddressBuffer(i32 160, %struct.ByteAddressBuffer %5)  ; CreateHandleForLib(Resource)
  %221 = call %dx.types.ResRet.i32 @dx.op.rawBufferLoad.i32(i32 139, %dx.types.Handle %220, i32 %219, i32 undef, i8 1, i32 4)  ; RawBufferLoad(srv,index,elementOffset,mask,alignment)
  %222 = extractvalue %dx.types.ResRet.i32 %221, 0
  %223 = mul i32 %222, 44
  %224 = call %dx.types.ResRet.i32 @dx.op.rawBufferLoad.i32(i32 139, %dx.types.Handle %211, i32 %223, i32 undef, i8 15, i32 4)  ; RawBufferLoad(srv,index,elementOffset,mask,alignment)
  %225 = extractvalue %dx.types.ResRet.i32 %224, 0
  %226 = extractvalue %dx.types.ResRet.i32 %224, 3
  %227 = add i32 %223, 32
  %228 = call %dx.types.ResRet.i32 @dx.op.rawBufferLoad.i32(i32 139, %dx.types.Handle %211, i32 %227, i32 undef, i8 7, i32 4)  ; RawBufferLoad(srv,index,elementOffset,mask,alignment)
  %229 = extractvalue %dx.types.ResRet.i32 %228, 1
  %230 = mul i32 %218, 24
  %231 = call %dx.types.Handle @dx.op.createHandleForLib.struct.ByteAddressBuffer(i32 160, %struct.ByteAddressBuffer %10)  ; CreateHandleForLib(Resource)
  %232 = call %dx.types.ResRet.f32 @dx.op.rawBufferLoad.f32(i32 139, %dx.types.Handle %231, i32 %230, i32 undef, i8 7, i32 4)  ; RawBufferLoad(srv,index,elementOffset,mask,alignment)
  %233 = extractvalue %dx.types.ResRet.f32 %232, 0
  %234 = extractvalue %dx.types.ResRet.f32 %232, 1
  %235 = extractvalue %dx.types.ResRet.f32 %232, 2
  %236 = add i32 %230, 12
  %237 = call %dx.types.ResRet.i32 @dx.op.rawBufferLoad.i32(i32 139, %dx.types.Handle %231, i32 %236, i32 undef, i8 3, i32 4)  ; RawBufferLoad(srv,index,elementOffset,mask,alignment)
  %238 = extractvalue %dx.types.ResRet.i32 %237, 0
  %239 = extractvalue %dx.types.ResRet.i32 %237, 1
  %240 = add i32 %230, 20
  %241 = call %dx.types.ResRet.i32 @dx.op.rawBufferLoad.i32(i32 139, %dx.types.Handle %231, i32 %240, i32 undef, i8 1, i32 4)  ; RawBufferLoad(srv,index,elementOffset,mask,alignment)
  %242 = extractvalue %dx.types.ResRet.i32 %241, 0
  %243 = bitcast float %233 to i32
  %244 = bitcast float %234 to i32
  %245 = bitcast float %235 to i32
  %246 = sitofp i32 %243 to float
  %247 = sitofp i32 %244 to float
  %248 = sitofp i32 %245 to float
  %249 = fmul fast float %246, 0x3F30000000000000
  %250 = fmul fast float %247, 0x3F30000000000000
  %251 = fmul fast float %248, 0x3F30000000000000
  %252 = and i32 %238, 65535
  %253 = uitofp i32 %252 to float
  %254 = lshr i32 %238, 16
  %255 = uitofp i32 %254 to float
  %256 = and i32 %239, 65535
  %257 = uitofp i32 %256 to float
  %258 = lshr i32 %239, 16
  %259 = uitofp i32 %258 to float
  %260 = fmul fast float %253, 0x3F00001000000000
  %261 = fmul fast float %255, 0x3F00001000000000
  %262 = fmul fast float %257, 0x3F00001000000000
  %263 = fmul fast float %259, 0x3F00001000000000
  %264 = fadd fast float %260, -1.000000e+00
  %265 = fadd fast float %261, -1.000000e+00
  %266 = fadd fast float %262, -1.000000e+00
  %267 = fadd fast float %263, -1.000000e+00
  %268 = and i32 %242, 65535
  %269 = call float @dx.op.legacyF16ToF32(i32 131, i32 %268)  ; LegacyF16ToF32(value)
  %270 = shl i32 %215, 5
  %271 = call %dx.types.Handle @dx.op.createHandleForLib.struct.ByteAddressBuffer(i32 160, %struct.ByteAddressBuffer %14)  ; CreateHandleForLib(Resource)
  %272 = call %dx.types.ResRet.f32 @dx.op.rawBufferLoad.f32(i32 139, %dx.types.Handle %271, i32 %270, i32 undef, i8 15, i32 4)  ; RawBufferLoad(srv,index,elementOffset,mask,alignment)
  %273 = extractvalue %dx.types.ResRet.f32 %272, 0
  %274 = extractvalue %dx.types.ResRet.f32 %272, 1
  %275 = extractvalue %dx.types.ResRet.f32 %272, 2
  %276 = or i32 %270, 16
  %277 = call %dx.types.ResRet.f32 @dx.op.rawBufferLoad.f32(i32 139, %dx.types.Handle %271, i32 %276, i32 undef, i8 7, i32 4)  ; RawBufferLoad(srv,index,elementOffset,mask,alignment)
  %278 = extractvalue %dx.types.ResRet.f32 %277, 0
  %279 = extractvalue %dx.types.ResRet.f32 %277, 1
  %280 = extractvalue %dx.types.ResRet.f32 %277, 2
  %281 = call float @dx.op.binary.f32(i32 35, float %279, float %280), !dx.precise !59  ; FMax(a,b)
  %282 = call float @dx.op.binary.f32(i32 35, float %278, float %281), !dx.precise !59  ; FMax(a,b)
  br label %320

; <label>:283                                     ; preds = %209
  %284 = icmp eq i32 %154, 3
  %285 = bitcast float %159 to i32
  %286 = bitcast float %160 to i32
  %287 = bitcast float %161 to i32
  %288 = sitofp i32 %285 to float
  %289 = sitofp i32 %286 to float
  %290 = sitofp i32 %287 to float
  %291 = fmul fast float %288, 0x3F30000000000000
  %292 = fmul fast float %289, 0x3F30000000000000
  %293 = fmul fast float %290, 0x3F30000000000000
  br i1 %284, label %294, label %306

; <label>:294                                     ; preds = %283
  %295 = or i32 %149, 8
  %296 = add i32 %295, %147
  %297 = call %dx.types.ResRet.i32 @dx.op.rawBufferLoad.i32(i32 139, %dx.types.Handle %151, i32 %296, i32 undef, i8 1, i32 4)  ; RawBufferLoad(srv,index,elementOffset,mask,alignment)
  %298 = extractvalue %dx.types.ResRet.i32 %297, 0
  %299 = mul i32 %298, 44
  %300 = call %dx.types.ResRet.i32 @dx.op.rawBufferLoad.i32(i32 139, %dx.types.Handle %211, i32 %299, i32 undef, i8 15, i32 4)  ; RawBufferLoad(srv,index,elementOffset,mask,alignment)
  %301 = extractvalue %dx.types.ResRet.i32 %300, 0
  %302 = extractvalue %dx.types.ResRet.i32 %300, 3
  %303 = add i32 %299, 32
  %304 = call %dx.types.ResRet.i32 @dx.op.rawBufferLoad.i32(i32 139, %dx.types.Handle %211, i32 %303, i32 undef, i8 7, i32 4)  ; RawBufferLoad(srv,index,elementOffset,mask,alignment)
  %305 = extractvalue %dx.types.ResRet.i32 %304, 1
  br label %320

; <label>:306                                     ; preds = %283
  %307 = add i32 %150, 4
  %308 = call %dx.types.ResRet.i32 @dx.op.rawBufferLoad.i32(i32 139, %dx.types.Handle %151, i32 %307, i32 undef, i8 1, i32 4)  ; RawBufferLoad(srv,index,elementOffset,mask,alignment)
  %309 = extractvalue %dx.types.ResRet.i32 %308, 0
  %310 = add i32 %150, 8
  %311 = call %dx.types.ResRet.i32 @dx.op.rawBufferLoad.i32(i32 139, %dx.types.Handle %151, i32 %310, i32 undef, i8 1, i32 4)  ; RawBufferLoad(srv,index,elementOffset,mask,alignment)
  %312 = extractvalue %dx.types.ResRet.i32 %311, 0
  %313 = add i32 %150, 12
  %314 = call %dx.types.ResRet.i32 @dx.op.rawBufferLoad.i32(i32 139, %dx.types.Handle %151, i32 %313, i32 undef, i8 1, i32 4)  ; RawBufferLoad(srv,index,elementOffset,mask,alignment)
  %315 = extractvalue %dx.types.ResRet.i32 %314, 0
  %316 = mul i32 %309, 44
  %317 = add i32 %316, 32
  %318 = call %dx.types.ResRet.i32 @dx.op.rawBufferLoad.i32(i32 139, %dx.types.Handle %211, i32 %317, i32 undef, i8 7, i32 4)  ; RawBufferLoad(srv,index,elementOffset,mask,alignment)
  %319 = extractvalue %dx.types.ResRet.i32 %318, 1
  br label %320

; <label>:320                                     ; preds = %306, %294, %212, %179
  %321 = phi float [ %273, %212 ], [ %170, %294 ], [ 0.000000e+00, %306 ], [ %189, %179 ]
  %322 = phi float [ %274, %212 ], [ %171, %294 ], [ 0.000000e+00, %306 ], [ %190, %179 ]
  %323 = phi float [ %275, %212 ], [ %172, %294 ], [ 0.000000e+00, %306 ], [ %191, %179 ]
  %324 = phi float [ %282, %212 ], [ %173, %294 ], [ %176, %306 ], [ %194, %179 ]
  %325 = phi i32 [ %226, %212 ], [ %302, %294 ], [ %312, %306 ], [ %200, %179 ]
  %326 = phi i32 [ %225, %212 ], [ %301, %294 ], [ %315, %306 ], [ %197, %179 ]
  %327 = phi i32 [ %229, %212 ], [ %305, %294 ], [ %319, %306 ], [ %185, %179 ]
  %328 = phi float [ %249, %212 ], [ %291, %294 ], [ %291, %306 ], [ %202, %179 ]
  %329 = phi float [ %250, %212 ], [ %292, %294 ], [ %292, %306 ], [ %203, %179 ]
  %330 = phi float [ %251, %212 ], [ %293, %294 ], [ %293, %306 ], [ %204, %179 ]
  %331 = phi float [ %264, %212 ], [ %164, %294 ], [ %164, %306 ], [ %205, %179 ]
  %332 = phi float [ %265, %212 ], [ %165, %294 ], [ %165, %306 ], [ %206, %179 ]
  %333 = phi float [ %266, %212 ], [ %166, %294 ], [ %166, %306 ], [ %207, %179 ]
  %334 = phi float [ %267, %212 ], [ %167, %294 ], [ %167, %306 ], [ %208, %179 ]
  %335 = phi float [ %269, %212 ], [ %176, %294 ], [ 1.000000e+00, %306 ], [ 1.000000e+00, %179 ]
  %336 = fmul fast float %332, %332
  %337 = fmul fast float %336, 2.000000e+00
  %338 = fsub fast float 1.000000e+00, %337
  %339 = fmul fast float %333, %333
  %340 = fmul fast float %339, 2.000000e+00
  %341 = fsub fast float %338, %340
  %342 = fmul fast float %331, 2.000000e+00
  %343 = fmul fast float %342, %332
  %344 = fmul fast float %333, 2.000000e+00
  %345 = fmul fast float %344, %334
  %346 = fsub fast float %343, %345
  %347 = fmul fast float %333, %331
  %348 = fmul fast float %334, %332
  %349 = fadd fast float %348, %347
  %350 = fmul fast float %332, %331
  %351 = fmul fast float %334, %333
  %352 = fadd fast float %351, %350
  %353 = fmul fast float %331, %331
  %354 = fmul fast float %353, 2.000000e+00
  %355 = fsub fast float 1.000000e+00, %354
  %356 = fsub fast float %355, %340
  %357 = fmul fast float %332, 2.000000e+00
  %358 = fmul fast float %357, %333
  %359 = fmul fast float %342, %334
  %360 = fsub fast float %358, %359
  %361 = fmul fast float %342, %333
  %362 = fmul fast float %357, %334
  %363 = fsub fast float %361, %362
  %364 = fmul fast float %333, %332
  %365 = fmul fast float %334, %331
  %366 = fadd fast float %365, %364
  %367 = fsub fast float %355, %337
  %368 = fmul fast float %341, %335
  %369 = fmul fast float %335, 2.000000e+00
  %370 = fmul fast float %369, %352
  %371 = fmul fast float %363, %335
  %372 = fmul fast float %346, %335
  %373 = fmul fast float %356, %335
  %374 = fmul fast float %369, %366
  %375 = fmul fast float %369, %349
  %376 = fmul fast float %360, %335
  %377 = fmul fast float %367, %335
  %378 = lshr i32 %142, 6
  %379 = and i32 %142, 63
  %380 = add i32 %327, %378
  %381 = shl i32 %380, 2
  %382 = call %dx.types.Handle @dx.op.createHandleForLib.struct.ByteAddressBuffer(i32 160, %struct.ByteAddressBuffer %1)  ; CreateHandleForLib(Resource)
  %383 = call %dx.types.ResRet.i32 @dx.op.rawBufferLoad.i32(i32 139, %dx.types.Handle %382, i32 %381, i32 undef, i8 1, i32 4)  ; RawBufferLoad(srv,index,elementOffset,mask,alignment)
  %384 = extractvalue %dx.types.ResRet.i32 %383, 0
  %385 = shl i32 %384, 6
  %386 = or i32 %385, %379
  %387 = mul i32 %386, 3
  %388 = mul i32 %386, 6
  %389 = and i32 %388, -4
  %390 = call %dx.types.Handle @dx.op.createHandleForLib.struct.ByteAddressBuffer(i32 160, %struct.ByteAddressBuffer %2)  ; CreateHandleForLib(Resource)
  %391 = call %dx.types.ResRet.i32 @dx.op.rawBufferLoad.i32(i32 139, %dx.types.Handle %390, i32 %389, i32 undef, i8 3, i32 4)  ; RawBufferLoad(srv,index,elementOffset,mask,alignment)
  %392 = extractvalue %dx.types.ResRet.i32 %391, 0
  %393 = extractvalue %dx.types.ResRet.i32 %391, 1
  %394 = and i32 %387, 1
  %395 = icmp eq i32 %394, 0
  %396 = lshr i32 %392, 16
  %397 = and i32 %393, 65535
  %398 = lshr i32 %393, 16
  %399 = and i32 %392, 65535
  %400 = select i1 %395, i32 %399, i32 %396
  %401 = select i1 %395, i32 %396, i32 %397
  %402 = select i1 %395, i32 %397, i32 %398
  %403 = shl nuw nsw i32 %400, 3
  %404 = shl nuw nsw i32 %401, 3
  %405 = shl nuw nsw i32 %402, 3
  %406 = shl nuw nsw i32 %400, 2
  %407 = shl nuw nsw i32 %401, 2
  %408 = shl nuw nsw i32 %402, 2
  br i1 %178, label %409, label %505

; <label>:409                                     ; preds = %320
  %410 = lshr i32 %400, 7
  %411 = add i32 %410, %326
  %412 = shl i32 %411, 2
  %413 = call %dx.types.Handle @dx.op.createHandleForLib.struct.ByteAddressBuffer(i32 160, %struct.ByteAddressBuffer %3)  ; CreateHandleForLib(Resource)
  %414 = call %dx.types.ResRet.i32 @dx.op.rawBufferLoad.i32(i32 139, %dx.types.Handle %413, i32 %412, i32 undef, i8 1, i32 4)  ; RawBufferLoad(srv,index,elementOffset,mask,alignment)
  %415 = extractvalue %dx.types.ResRet.i32 %414, 0
  %416 = shl i32 %415, 10
  %417 = and i32 %403, 1016
  %418 = or i32 %416, %417
  %419 = call %dx.types.Handle @dx.op.createHandleForLib.struct.ByteAddressBuffer(i32 160, %struct.ByteAddressBuffer %4)  ; CreateHandleForLib(Resource)
  %420 = call %dx.types.ResRet.i32 @dx.op.rawBufferLoad.i32(i32 139, %dx.types.Handle %419, i32 %418, i32 undef, i8 3, i32 4)  ; RawBufferLoad(srv,index,elementOffset,mask,alignment)
  %421 = extractvalue %dx.types.ResRet.i32 %420, 0
  %422 = extractvalue %dx.types.ResRet.i32 %420, 1
  %423 = and i32 %421, 2097151
  %424 = uitofp i32 %423 to float
  %425 = lshr i32 %421, 21
  %426 = shl i32 %422, 11
  %427 = and i32 %426, 2095104
  %428 = or i32 %427, %425
  %429 = uitofp i32 %428 to float
  %430 = lshr i32 %422, 10
  %431 = and i32 %430, 2097151
  %432 = uitofp i32 %431 to float
  %433 = lshr i32 %401, 7
  %434 = add i32 %433, %326
  %435 = shl i32 %434, 2
  %436 = call %dx.types.ResRet.i32 @dx.op.rawBufferLoad.i32(i32 139, %dx.types.Handle %413, i32 %435, i32 undef, i8 1, i32 4)  ; RawBufferLoad(srv,index,elementOffset,mask,alignment)
  %437 = extractvalue %dx.types.ResRet.i32 %436, 0
  %438 = shl i32 %437, 10
  %439 = and i32 %404, 1016
  %440 = or i32 %438, %439
  %441 = call %dx.types.ResRet.i32 @dx.op.rawBufferLoad.i32(i32 139, %dx.types.Handle %419, i32 %440, i32 undef, i8 3, i32 4)  ; RawBufferLoad(srv,index,elementOffset,mask,alignment)
  %442 = extractvalue %dx.types.ResRet.i32 %441, 0
  %443 = extractvalue %dx.types.ResRet.i32 %441, 1
  %444 = and i32 %442, 2097151
  %445 = uitofp i32 %444 to float
  %446 = lshr i32 %442, 21
  %447 = shl i32 %443, 11
  %448 = and i32 %447, 2095104
  %449 = or i32 %448, %446
  %450 = uitofp i32 %449 to float
  %451 = lshr i32 %443, 10
  %452 = and i32 %451, 2097151
  %453 = uitofp i32 %452 to float
  %454 = lshr i32 %402, 7
  %455 = add i32 %454, %326
  %456 = shl i32 %455, 2
  %457 = call %dx.types.ResRet.i32 @dx.op.rawBufferLoad.i32(i32 139, %dx.types.Handle %413, i32 %456, i32 undef, i8 1, i32 4)  ; RawBufferLoad(srv,index,elementOffset,mask,alignment)
  %458 = extractvalue %dx.types.ResRet.i32 %457, 0
  %459 = shl i32 %458, 10
  %460 = and i32 %405, 1016
  %461 = or i32 %459, %460
  %462 = call %dx.types.ResRet.i32 @dx.op.rawBufferLoad.i32(i32 139, %dx.types.Handle %419, i32 %461, i32 undef, i8 3, i32 4)  ; RawBufferLoad(srv,index,elementOffset,mask,alignment)
  %463 = extractvalue %dx.types.ResRet.i32 %462, 0
  %464 = extractvalue %dx.types.ResRet.i32 %462, 1
  %465 = and i32 %463, 2097151
  %466 = uitofp i32 %465 to float
  %467 = lshr i32 %463, 21
  %468 = shl i32 %464, 11
  %469 = and i32 %468, 2095104
  %470 = or i32 %469, %467
  %471 = uitofp i32 %470 to float
  %472 = lshr i32 %464, 10
  %473 = and i32 %472, 2097151
  %474 = uitofp i32 %473 to float
  %475 = lshr i32 %400, 8
  %476 = add i32 %475, %325
  %477 = shl i32 %476, 2
  %478 = call %dx.types.ResRet.i32 @dx.op.rawBufferLoad.i32(i32 139, %dx.types.Handle %413, i32 %477, i32 undef, i8 1, i32 4)  ; RawBufferLoad(srv,index,elementOffset,mask,alignment)
  %479 = extractvalue %dx.types.ResRet.i32 %478, 0
  %480 = shl i32 %479, 10
  %481 = and i32 %406, 1020
  %482 = or i32 %480, %481
  %483 = call %dx.types.ResRet.i32 @dx.op.rawBufferLoad.i32(i32 139, %dx.types.Handle %419, i32 %482, i32 undef, i8 1, i32 4)  ; RawBufferLoad(srv,index,elementOffset,mask,alignment)
  %484 = extractvalue %dx.types.ResRet.i32 %483, 0
  %485 = lshr i32 %401, 8
  %486 = add i32 %485, %325
  %487 = shl i32 %486, 2
  %488 = call %dx.types.ResRet.i32 @dx.op.rawBufferLoad.i32(i32 139, %dx.types.Handle %413, i32 %487, i32 undef, i8 1, i32 4)  ; RawBufferLoad(srv,index,elementOffset,mask,alignment)
  %489 = extractvalue %dx.types.ResRet.i32 %488, 0
  %490 = shl i32 %489, 10
  %491 = and i32 %407, 1020
  %492 = or i32 %490, %491
  %493 = call %dx.types.ResRet.i32 @dx.op.rawBufferLoad.i32(i32 139, %dx.types.Handle %419, i32 %492, i32 undef, i8 1, i32 4)  ; RawBufferLoad(srv,index,elementOffset,mask,alignment)
  %494 = extractvalue %dx.types.ResRet.i32 %493, 0
  %495 = lshr i32 %402, 8
  %496 = add i32 %495, %325
  %497 = shl i32 %496, 2
  %498 = call %dx.types.ResRet.i32 @dx.op.rawBufferLoad.i32(i32 139, %dx.types.Handle %413, i32 %497, i32 undef, i8 1, i32 4)  ; RawBufferLoad(srv,index,elementOffset,mask,alignment)
  %499 = extractvalue %dx.types.ResRet.i32 %498, 0
  %500 = shl i32 %499, 10
  %501 = and i32 %408, 1020
  %502 = or i32 %500, %501
  %503 = call %dx.types.ResRet.i32 @dx.op.rawBufferLoad.i32(i32 139, %dx.types.Handle %419, i32 %502, i32 undef, i8 1, i32 4)  ; RawBufferLoad(srv,index,elementOffset,mask,alignment)
  %504 = extractvalue %dx.types.ResRet.i32 %503, 0
  br label %710

; <label>:505                                     ; preds = %320
  %506 = icmp eq i32 %154, 4
  br i1 %506, label %507, label %587

; <label>:507                                     ; preds = %505
  %508 = add i32 %403, %326
  %509 = call %dx.types.Handle @dx.op.createHandleForLib.struct.ByteAddressBuffer(i32 160, %struct.ByteAddressBuffer %8)  ; CreateHandleForLib(Resource)
  %510 = call %dx.types.ResRet.i32 @dx.op.rawBufferLoad.i32(i32 139, %dx.types.Handle %509, i32 %508, i32 undef, i8 3, i32 4)  ; RawBufferLoad(srv,index,elementOffset,mask,alignment)
  %511 = extractvalue %dx.types.ResRet.i32 %510, 0
  %512 = extractvalue %dx.types.ResRet.i32 %510, 1
  %513 = and i32 %511, 2097151
  %514 = uitofp i32 %513 to float
  %515 = lshr i32 %511, 21
  %516 = shl i32 %512, 11
  %517 = and i32 %516, 2095104
  %518 = or i32 %517, %515
  %519 = uitofp i32 %518 to float
  %520 = lshr i32 %512, 10
  %521 = and i32 %520, 2097151
  %522 = uitofp i32 %521 to float
  %523 = fdiv float %514, 2.097151e+06
  %524 = fdiv float %519, 2.097151e+06
  %525 = fdiv float %522, 2.097151e+06
  %526 = fmul float %523, 2.000000e+00
  %527 = fmul float %524, 2.000000e+00
  %528 = fmul float %525, 2.000000e+00
  %529 = fadd float %526, -1.000000e+00
  %530 = fadd float %527, -1.000000e+00
  %531 = fadd float %528, -1.000000e+00
  %532 = add i32 %404, %326
  %533 = call %dx.types.ResRet.i32 @dx.op.rawBufferLoad.i32(i32 139, %dx.types.Handle %509, i32 %532, i32 undef, i8 3, i32 4)  ; RawBufferLoad(srv,index,elementOffset,mask,alignment)
  %534 = extractvalue %dx.types.ResRet.i32 %533, 0
  %535 = extractvalue %dx.types.ResRet.i32 %533, 1
  %536 = and i32 %534, 2097151
  %537 = uitofp i32 %536 to float
  %538 = lshr i32 %534, 21
  %539 = shl i32 %535, 11
  %540 = and i32 %539, 2095104
  %541 = or i32 %540, %538
  %542 = uitofp i32 %541 to float
  %543 = lshr i32 %535, 10
  %544 = and i32 %543, 2097151
  %545 = uitofp i32 %544 to float
  %546 = fdiv float %537, 2.097151e+06
  %547 = fdiv float %542, 2.097151e+06
  %548 = fdiv float %545, 2.097151e+06
  %549 = fmul float %546, 2.000000e+00
  %550 = fmul float %547, 2.000000e+00
  %551 = fmul float %548, 2.000000e+00
  %552 = fadd float %549, -1.000000e+00
  %553 = fadd float %550, -1.000000e+00
  %554 = fadd float %551, -1.000000e+00
  %555 = add i32 %405, %326
  %556 = call %dx.types.ResRet.i32 @dx.op.rawBufferLoad.i32(i32 139, %dx.types.Handle %509, i32 %555, i32 undef, i8 3, i32 4)  ; RawBufferLoad(srv,index,elementOffset,mask,alignment)
  %557 = extractvalue %dx.types.ResRet.i32 %556, 0
  %558 = extractvalue %dx.types.ResRet.i32 %556, 1
  %559 = and i32 %557, 2097151
  %560 = uitofp i32 %559 to float
  %561 = lshr i32 %557, 21
  %562 = shl i32 %558, 11
  %563 = and i32 %562, 2095104
  %564 = or i32 %563, %561
  %565 = uitofp i32 %564 to float
  %566 = lshr i32 %558, 10
  %567 = and i32 %566, 2097151
  %568 = uitofp i32 %567 to float
  %569 = fdiv float %560, 2.097151e+06
  %570 = fdiv float %565, 2.097151e+06
  %571 = fdiv float %568, 2.097151e+06
  %572 = fmul float %569, 2.000000e+00
  %573 = fmul float %570, 2.000000e+00
  %574 = fmul float %571, 2.000000e+00
  %575 = fadd float %572, -1.000000e+00
  %576 = fadd float %573, -1.000000e+00
  %577 = fadd float %574, -1.000000e+00
  %578 = add i32 %406, %325
  %579 = call %dx.types.ResRet.i32 @dx.op.rawBufferLoad.i32(i32 139, %dx.types.Handle %509, i32 %578, i32 undef, i8 1, i32 4)  ; RawBufferLoad(srv,index,elementOffset,mask,alignment)
  %580 = extractvalue %dx.types.ResRet.i32 %579, 0
  %581 = add i32 %407, %325
  %582 = call %dx.types.ResRet.i32 @dx.op.rawBufferLoad.i32(i32 139, %dx.types.Handle %509, i32 %581, i32 undef, i8 1, i32 4)  ; RawBufferLoad(srv,index,elementOffset,mask,alignment)
  %583 = extractvalue %dx.types.ResRet.i32 %582, 0
  %584 = add i32 %408, %325
  %585 = call %dx.types.ResRet.i32 @dx.op.rawBufferLoad.i32(i32 139, %dx.types.Handle %509, i32 %584, i32 undef, i8 1, i32 4)  ; RawBufferLoad(srv,index,elementOffset,mask,alignment)
  %586 = extractvalue %dx.types.ResRet.i32 %585, 0
  br label %710

; <label>:587                                     ; preds = %505
  %588 = lshr i32 %400, 7
  %589 = add i32 %588, %326
  %590 = shl i32 %589, 2
  %591 = call %dx.types.Handle @dx.op.createHandleForLib.struct.ByteAddressBuffer(i32 160, %struct.ByteAddressBuffer %3)  ; CreateHandleForLib(Resource)
  %592 = call %dx.types.ResRet.i32 @dx.op.rawBufferLoad.i32(i32 139, %dx.types.Handle %591, i32 %590, i32 undef, i8 1, i32 4)  ; RawBufferLoad(srv,index,elementOffset,mask,alignment)
  %593 = extractvalue %dx.types.ResRet.i32 %592, 0
  %594 = shl i32 %593, 10
  %595 = and i32 %403, 1016
  %596 = or i32 %594, %595
  %597 = call %dx.types.Handle @dx.op.createHandleForLib.struct.ByteAddressBuffer(i32 160, %struct.ByteAddressBuffer %4)  ; CreateHandleForLib(Resource)
  %598 = call %dx.types.ResRet.i32 @dx.op.rawBufferLoad.i32(i32 139, %dx.types.Handle %597, i32 %596, i32 undef, i8 3, i32 4)  ; RawBufferLoad(srv,index,elementOffset,mask,alignment)
  %599 = extractvalue %dx.types.ResRet.i32 %598, 0
  %600 = extractvalue %dx.types.ResRet.i32 %598, 1
  %601 = and i32 %599, 2097151
  %602 = uitofp i32 %601 to float
  %603 = lshr i32 %599, 21
  %604 = shl i32 %600, 11
  %605 = and i32 %604, 2095104
  %606 = or i32 %605, %603
  %607 = uitofp i32 %606 to float
  %608 = lshr i32 %600, 10
  %609 = and i32 %608, 2097151
  %610 = uitofp i32 %609 to float
  %611 = fdiv float %602, 2.097151e+06
  %612 = fdiv float %607, 2.097151e+06
  %613 = fdiv float %610, 2.097151e+06
  %614 = fmul float %611, 2.000000e+00
  %615 = fmul float %612, 2.000000e+00
  %616 = fmul float %613, 2.000000e+00
  %617 = fadd float %614, -1.000000e+00
  %618 = fadd float %615, -1.000000e+00
  %619 = fadd float %616, -1.000000e+00
  %620 = lshr i32 %401, 7
  %621 = add i32 %620, %326
  %622 = shl i32 %621, 2
  %623 = call %dx.types.ResRet.i32 @dx.op.rawBufferLoad.i32(i32 139, %dx.types.Handle %591, i32 %622, i32 undef, i8 1, i32 4)  ; RawBufferLoad(srv,index,elementOffset,mask,alignment)
  %624 = extractvalue %dx.types.ResRet.i32 %623, 0
  %625 = shl i32 %624, 10
  %626 = and i32 %404, 1016
  %627 = or i32 %625, %626
  %628 = call %dx.types.ResRet.i32 @dx.op.rawBufferLoad.i32(i32 139, %dx.types.Handle %597, i32 %627, i32 undef, i8 3, i32 4)  ; RawBufferLoad(srv,index,elementOffset,mask,alignment)
  %629 = extractvalue %dx.types.ResRet.i32 %628, 0
  %630 = extractvalue %dx.types.ResRet.i32 %628, 1
  %631 = and i32 %629, 2097151
  %632 = uitofp i32 %631 to float
  %633 = lshr i32 %629, 21
  %634 = shl i32 %630, 11
  %635 = and i32 %634, 2095104
  %636 = or i32 %635, %633
  %637 = uitofp i32 %636 to float
  %638 = lshr i32 %630, 10
  %639 = and i32 %638, 2097151
  %640 = uitofp i32 %639 to float
  %641 = fdiv float %632, 2.097151e+06
  %642 = fdiv float %637, 2.097151e+06
  %643 = fdiv float %640, 2.097151e+06
  %644 = fmul float %641, 2.000000e+00
  %645 = fmul float %642, 2.000000e+00
  %646 = fmul float %643, 2.000000e+00
  %647 = fadd float %644, -1.000000e+00
  %648 = fadd float %645, -1.000000e+00
  %649 = fadd float %646, -1.000000e+00
  %650 = lshr i32 %402, 7
  %651 = add i32 %650, %326
  %652 = shl i32 %651, 2
  %653 = call %dx.types.ResRet.i32 @dx.op.rawBufferLoad.i32(i32 139, %dx.types.Handle %591, i32 %652, i32 undef, i8 1, i32 4)  ; RawBufferLoad(srv,index,elementOffset,mask,alignment)
  %654 = extractvalue %dx.types.ResRet.i32 %653, 0
  %655 = shl i32 %654, 10
  %656 = and i32 %405, 1016
  %657 = or i32 %655, %656
  %658 = call %dx.types.ResRet.i32 @dx.op.rawBufferLoad.i32(i32 139, %dx.types.Handle %597, i32 %657, i32 undef, i8 3, i32 4)  ; RawBufferLoad(srv,index,elementOffset,mask,alignment)
  %659 = extractvalue %dx.types.ResRet.i32 %658, 0
  %660 = extractvalue %dx.types.ResRet.i32 %658, 1
  %661 = and i32 %659, 2097151
  %662 = uitofp i32 %661 to float
  %663 = lshr i32 %659, 21
  %664 = shl i32 %660, 11
  %665 = and i32 %664, 2095104
  %666 = or i32 %665, %663
  %667 = uitofp i32 %666 to float
  %668 = lshr i32 %660, 10
  %669 = and i32 %668, 2097151
  %670 = uitofp i32 %669 to float
  %671 = fdiv float %662, 2.097151e+06
  %672 = fdiv float %667, 2.097151e+06
  %673 = fdiv float %670, 2.097151e+06
  %674 = fmul float %671, 2.000000e+00
  %675 = fmul float %672, 2.000000e+00
  %676 = fmul float %673, 2.000000e+00
  %677 = fadd float %674, -1.000000e+00
  %678 = fadd float %675, -1.000000e+00
  %679 = fadd float %676, -1.000000e+00
  %680 = lshr i32 %400, 8
  %681 = add i32 %680, %325
  %682 = shl i32 %681, 2
  %683 = call %dx.types.ResRet.i32 @dx.op.rawBufferLoad.i32(i32 139, %dx.types.Handle %591, i32 %682, i32 undef, i8 1, i32 4)  ; RawBufferLoad(srv,index,elementOffset,mask,alignment)
  %684 = extractvalue %dx.types.ResRet.i32 %683, 0
  %685 = shl i32 %684, 10
  %686 = and i32 %406, 1020
  %687 = or i32 %685, %686
  %688 = call %dx.types.ResRet.i32 @dx.op.rawBufferLoad.i32(i32 139, %dx.types.Handle %597, i32 %687, i32 undef, i8 1, i32 4)  ; RawBufferLoad(srv,index,elementOffset,mask,alignment)
  %689 = extractvalue %dx.types.ResRet.i32 %688, 0
  %690 = lshr i32 %401, 8
  %691 = add i32 %690, %325
  %692 = shl i32 %691, 2
  %693 = call %dx.types.ResRet.i32 @dx.op.rawBufferLoad.i32(i32 139, %dx.types.Handle %591, i32 %692, i32 undef, i8 1, i32 4)  ; RawBufferLoad(srv,index,elementOffset,mask,alignment)
  %694 = extractvalue %dx.types.ResRet.i32 %693, 0
  %695 = shl i32 %694, 10
  %696 = and i32 %407, 1020
  %697 = or i32 %695, %696
  %698 = call %dx.types.ResRet.i32 @dx.op.rawBufferLoad.i32(i32 139, %dx.types.Handle %597, i32 %697, i32 undef, i8 1, i32 4)  ; RawBufferLoad(srv,index,elementOffset,mask,alignment)
  %699 = extractvalue %dx.types.ResRet.i32 %698, 0
  %700 = lshr i32 %402, 8
  %701 = add i32 %700, %325
  %702 = shl i32 %701, 2
  %703 = call %dx.types.ResRet.i32 @dx.op.rawBufferLoad.i32(i32 139, %dx.types.Handle %591, i32 %702, i32 undef, i8 1, i32 4)  ; RawBufferLoad(srv,index,elementOffset,mask,alignment)
  %704 = extractvalue %dx.types.ResRet.i32 %703, 0
  %705 = shl i32 %704, 10
  %706 = and i32 %408, 1020
  %707 = or i32 %705, %706
  %708 = call %dx.types.ResRet.i32 @dx.op.rawBufferLoad.i32(i32 139, %dx.types.Handle %597, i32 %707, i32 undef, i8 1, i32 4)  ; RawBufferLoad(srv,index,elementOffset,mask,alignment)
  %709 = extractvalue %dx.types.ResRet.i32 %708, 0
  br label %710

; <label>:710                                     ; preds = %587, %507, %409
  %711 = phi float [ %677, %587 ], [ %575, %507 ], [ %466, %409 ]
  %712 = phi float [ %647, %587 ], [ %552, %507 ], [ %445, %409 ]
  %713 = phi float [ %617, %587 ], [ %529, %507 ], [ %424, %409 ]
  %714 = phi float [ %678, %587 ], [ %576, %507 ], [ %471, %409 ]
  %715 = phi float [ %648, %587 ], [ %553, %507 ], [ %450, %409 ]
  %716 = phi float [ %618, %587 ], [ %530, %507 ], [ %429, %409 ]
  %717 = phi float [ %679, %587 ], [ %577, %507 ], [ %474, %409 ]
  %718 = phi float [ %649, %587 ], [ %554, %507 ], [ %453, %409 ]
  %719 = phi float [ %619, %587 ], [ %531, %507 ], [ %432, %409 ]
  %720 = phi i32 [ %709, %587 ], [ %586, %507 ], [ %504, %409 ]
  %721 = phi i32 [ %699, %587 ], [ %583, %507 ], [ %494, %409 ]
  %722 = phi i32 [ %689, %587 ], [ %580, %507 ], [ %484, %409 ]
  %723 = fmul float %324, %719
  %724 = fmul float %324, %718
  %725 = fmul float %324, %717
  %726 = fmul float %324, %716
  %727 = fmul float %324, %715
  %728 = fmul float %324, %714
  %729 = fmul float %324, %713
  %730 = fmul float %324, %712
  %731 = fmul float %324, %711
  %732 = fadd float %323, %723
  %733 = fadd float %323, %724
  %734 = fadd float %323, %725
  %735 = fadd float %322, %726
  %736 = fadd float %322, %727
  %737 = fadd float %322, %728
  %738 = fadd float %321, %729
  %739 = fadd float %321, %730
  %740 = fadd float %321, %731
  %741 = getelementptr inbounds %struct.VisibilityPayload, %struct.VisibilityPayload* %19, i32 0, i32 4
  %742 = load <2 x float>, <2 x float>* %741, align 4, !tbaa !66
  %743 = lshr i32 %722, 30
  %744 = and i32 %722, 1023
  %745 = uitofp i32 %744 to float
  %746 = lshr i32 %722, 10
  %747 = and i32 %746, 1023
  %748 = uitofp i32 %747 to float
  %749 = lshr i32 %722, 20
  %750 = and i32 %749, 511
  %751 = uitofp i32 %750 to float
  %752 = fmul fast float %745, 0x3F56A64800000000
  %753 = fadd fast float %752, 0xBFE6A09E60000000
  %754 = fmul fast float %748, 0x3F56A64800000000
  %755 = fadd fast float %754, 0xBFE6A09E60000000
  %756 = fmul fast float %751, 0x3F66ABF460000000
  %757 = fadd fast float %756, 0xBFE6A09E60000000
  %758 = call float @dx.op.dot3.f32(i32 55, float %753, float %755, float %757, float %753, float %755, float %757)  ; Dot3(ax,ay,az,bx,by,bz)
  %759 = call float @dx.op.unary.f32(i32 7, float %758)  ; Saturate(value)
  %760 = fsub fast float 1.000000e+00, %759
  %761 = call float @dx.op.unary.f32(i32 24, float %760)  ; Sqrt(value)
  %762 = icmp eq i32 %743, 0
  br i1 %762, label %769, label %763

; <label>:763                                     ; preds = %710
  %764 = icmp eq i32 %743, 1
  br i1 %764, label %769, label %765

; <label>:765                                     ; preds = %763
  %766 = icmp eq i32 %743, 2
  %767 = select i1 %766, float %761, float %757
  %768 = select i1 %766, float %757, float %761
  br label %769

; <label>:769                                     ; preds = %765, %763, %710
  %770 = phi float [ %753, %763 ], [ %761, %710 ], [ %753, %765 ]
  %771 = phi float [ %761, %763 ], [ %753, %710 ], [ %755, %765 ]
  %772 = phi float [ %755, %763 ], [ %755, %710 ], [ %767, %765 ]
  %773 = phi float [ %757, %763 ], [ %757, %710 ], [ %768, %765 ]
  %774 = fmul fast float %772, %770
  %775 = fmul fast float %773, %771
  %776 = fadd fast float %775, %774
  %777 = fmul fast float %776, 2.000000e+00
  %778 = fmul fast float %771, 2.000000e+00
  %779 = fmul fast float %778, %772
  %780 = fmul fast float %770, 2.000000e+00
  %781 = fmul fast float %780, %773
  %782 = fsub fast float %779, %781
  %783 = fmul fast float %770, %770
  %784 = fmul fast float %783, 2.000000e+00
  %785 = fsub fast float 1.000000e+00, %784
  %786 = fmul fast float %771, %771
  %787 = fmul fast float %786, 2.000000e+00
  %788 = fsub fast float %785, %787
  %789 = fmul fast float %738, %368
  %790 = call float @dx.op.tertiary.f32(i32 46, float %735, float %372, float %789)  ; FMad(a,b,c)
  %791 = call float @dx.op.tertiary.f32(i32 46, float %732, float %375, float %790)  ; FMad(a,b,c)
  %792 = fadd fast float %791, %328
  %793 = fmul fast float %738, %370
  %794 = call float @dx.op.tertiary.f32(i32 46, float %735, float %373, float %793)  ; FMad(a,b,c)
  %795 = call float @dx.op.tertiary.f32(i32 46, float %732, float %376, float %794)  ; FMad(a,b,c)
  %796 = fadd fast float %795, %329
  %797 = fmul fast float %738, %371
  %798 = call float @dx.op.tertiary.f32(i32 46, float %735, float %374, float %797)  ; FMad(a,b,c)
  %799 = call float @dx.op.tertiary.f32(i32 46, float %732, float %377, float %798)  ; FMad(a,b,c)
  %800 = fadd fast float %799, %330
  %801 = fmul fast float %777, %368
  %802 = call float @dx.op.tertiary.f32(i32 46, float %782, float %372, float %801)  ; FMad(a,b,c)
  %803 = call float @dx.op.tertiary.f32(i32 46, float %788, float %375, float %802)  ; FMad(a,b,c)
  %804 = fmul fast float %777, %370
  %805 = call float @dx.op.tertiary.f32(i32 46, float %782, float %373, float %804)  ; FMad(a,b,c)
  %806 = call float @dx.op.tertiary.f32(i32 46, float %788, float %376, float %805)  ; FMad(a,b,c)
  %807 = fmul fast float %777, %371
  %808 = call float @dx.op.tertiary.f32(i32 46, float %782, float %374, float %807)  ; FMad(a,b,c)
  %809 = call float @dx.op.tertiary.f32(i32 46, float %788, float %377, float %808)  ; FMad(a,b,c)
  %810 = call float @dx.op.dot3.f32(i32 55, float %803, float %806, float %809, float %803, float %806, float %809)  ; Dot3(ax,ay,az,bx,by,bz)
  %811 = call float @dx.op.unary.f32(i32 25, float %810)  ; Rsqrt(value)
  %812 = fmul fast float %811, %803
  %813 = fmul fast float %811, %806
  %814 = fmul fast float %811, %809
  %815 = lshr i32 %721, 30
  %816 = and i32 %721, 1023
  %817 = uitofp i32 %816 to float
  %818 = lshr i32 %721, 10
  %819 = and i32 %818, 1023
  %820 = uitofp i32 %819 to float
  %821 = lshr i32 %721, 20
  %822 = and i32 %821, 511
  %823 = uitofp i32 %822 to float
  %824 = fmul fast float %817, 0x3F56A64800000000
  %825 = fadd fast float %824, 0xBFE6A09E60000000
  %826 = fmul fast float %820, 0x3F56A64800000000
  %827 = fadd fast float %826, 0xBFE6A09E60000000
  %828 = fmul fast float %823, 0x3F66ABF460000000
  %829 = fadd fast float %828, 0xBFE6A09E60000000
  %830 = call float @dx.op.dot3.f32(i32 55, float %825, float %827, float %829, float %825, float %827, float %829)  ; Dot3(ax,ay,az,bx,by,bz)
  %831 = call float @dx.op.unary.f32(i32 7, float %830)  ; Saturate(value)
  %832 = fsub fast float 1.000000e+00, %831
  %833 = call float @dx.op.unary.f32(i32 24, float %832)  ; Sqrt(value)
  %834 = icmp eq i32 %815, 0
  br i1 %834, label %841, label %835

; <label>:835                                     ; preds = %769
  %836 = icmp eq i32 %815, 1
  br i1 %836, label %841, label %837

; <label>:837                                     ; preds = %835
  %838 = icmp eq i32 %815, 2
  %839 = select i1 %838, float %833, float %829
  %840 = select i1 %838, float %829, float %833
  br label %841

; <label>:841                                     ; preds = %837, %835, %769
  %842 = phi float [ %825, %835 ], [ %833, %769 ], [ %825, %837 ]
  %843 = phi float [ %833, %835 ], [ %825, %769 ], [ %827, %837 ]
  %844 = phi float [ %827, %835 ], [ %827, %769 ], [ %839, %837 ]
  %845 = phi float [ %829, %835 ], [ %829, %769 ], [ %840, %837 ]
  %846 = fmul fast float %844, %842
  %847 = fmul fast float %845, %843
  %848 = fadd fast float %847, %846
  %849 = fmul fast float %848, 2.000000e+00
  %850 = fmul fast float %843, 2.000000e+00
  %851 = fmul fast float %850, %844
  %852 = fmul fast float %842, 2.000000e+00
  %853 = fmul fast float %852, %845
  %854 = fsub fast float %851, %853
  %855 = fmul fast float %842, %842
  %856 = fmul fast float %855, 2.000000e+00
  %857 = fsub fast float 1.000000e+00, %856
  %858 = fmul fast float %843, %843
  %859 = fmul fast float %858, 2.000000e+00
  %860 = fsub fast float %857, %859
  %861 = fmul fast float %739, %368
  %862 = call float @dx.op.tertiary.f32(i32 46, float %736, float %372, float %861)  ; FMad(a,b,c)
  %863 = call float @dx.op.tertiary.f32(i32 46, float %733, float %375, float %862)  ; FMad(a,b,c)
  %864 = fadd fast float %863, %328
  %865 = fmul fast float %739, %370
  %866 = call float @dx.op.tertiary.f32(i32 46, float %736, float %373, float %865)  ; FMad(a,b,c)
  %867 = call float @dx.op.tertiary.f32(i32 46, float %733, float %376, float %866)  ; FMad(a,b,c)
  %868 = fadd fast float %867, %329
  %869 = fmul fast float %739, %371
  %870 = call float @dx.op.tertiary.f32(i32 46, float %736, float %374, float %869)  ; FMad(a,b,c)
  %871 = call float @dx.op.tertiary.f32(i32 46, float %733, float %377, float %870)  ; FMad(a,b,c)
  %872 = fadd fast float %871, %330
  %873 = fmul fast float %849, %368
  %874 = call float @dx.op.tertiary.f32(i32 46, float %854, float %372, float %873)  ; FMad(a,b,c)
  %875 = call float @dx.op.tertiary.f32(i32 46, float %860, float %375, float %874)  ; FMad(a,b,c)
  %876 = fmul fast float %849, %370
  %877 = call float @dx.op.tertiary.f32(i32 46, float %854, float %373, float %876)  ; FMad(a,b,c)
  %878 = call float @dx.op.tertiary.f32(i32 46, float %860, float %376, float %877)  ; FMad(a,b,c)
  %879 = fmul fast float %849, %371
  %880 = call float @dx.op.tertiary.f32(i32 46, float %854, float %374, float %879)  ; FMad(a,b,c)
  %881 = call float @dx.op.tertiary.f32(i32 46, float %860, float %377, float %880)  ; FMad(a,b,c)
  %882 = call float @dx.op.dot3.f32(i32 55, float %875, float %878, float %881, float %875, float %878, float %881)  ; Dot3(ax,ay,az,bx,by,bz)
  %883 = call float @dx.op.unary.f32(i32 25, float %882)  ; Rsqrt(value)
  %884 = fmul fast float %883, %875
  %885 = fmul fast float %883, %878
  %886 = fmul fast float %883, %881
  %887 = lshr i32 %720, 30
  %888 = and i32 %720, 1023
  %889 = uitofp i32 %888 to float
  %890 = lshr i32 %720, 10
  %891 = and i32 %890, 1023
  %892 = uitofp i32 %891 to float
  %893 = lshr i32 %720, 20
  %894 = and i32 %893, 511
  %895 = uitofp i32 %894 to float
  %896 = fmul fast float %889, 0x3F56A64800000000
  %897 = fadd fast float %896, 0xBFE6A09E60000000
  %898 = fmul fast float %892, 0x3F56A64800000000
  %899 = fadd fast float %898, 0xBFE6A09E60000000
  %900 = fmul fast float %895, 0x3F66ABF460000000
  %901 = fadd fast float %900, 0xBFE6A09E60000000
  %902 = call float @dx.op.dot3.f32(i32 55, float %897, float %899, float %901, float %897, float %899, float %901)  ; Dot3(ax,ay,az,bx,by,bz)
  %903 = call float @dx.op.unary.f32(i32 7, float %902)  ; Saturate(value)
  %904 = fsub fast float 1.000000e+00, %903
  %905 = call float @dx.op.unary.f32(i32 24, float %904)  ; Sqrt(value)
  %906 = icmp eq i32 %887, 0
  br i1 %906, label %913, label %907

; <label>:907                                     ; preds = %841
  %908 = icmp eq i32 %887, 1
  br i1 %908, label %913, label %909

; <label>:909                                     ; preds = %907
  %910 = icmp eq i32 %887, 2
  %911 = select i1 %910, float %905, float %901
  %912 = select i1 %910, float %901, float %905
  br label %913

; <label>:913                                     ; preds = %909, %907, %841
  %914 = phi float [ %897, %907 ], [ %905, %841 ], [ %897, %909 ]
  %915 = phi float [ %905, %907 ], [ %897, %841 ], [ %899, %909 ]
  %916 = phi float [ %899, %907 ], [ %899, %841 ], [ %911, %909 ]
  %917 = phi float [ %901, %907 ], [ %901, %841 ], [ %912, %909 ]
  %918 = fmul fast float %916, %914
  %919 = fmul fast float %917, %915
  %920 = fadd fast float %919, %918
  %921 = fmul fast float %920, 2.000000e+00
  %922 = fmul fast float %915, 2.000000e+00
  %923 = fmul fast float %922, %916
  %924 = fmul fast float %914, 2.000000e+00
  %925 = fmul fast float %924, %917
  %926 = fsub fast float %923, %925
  %927 = fmul fast float %914, %914
  %928 = fmul fast float %927, 2.000000e+00
  %929 = fsub fast float 1.000000e+00, %928
  %930 = fmul fast float %915, %915
  %931 = fmul fast float %930, 2.000000e+00
  %932 = fsub fast float %929, %931
  %933 = fmul fast float %740, %368
  %934 = call float @dx.op.tertiary.f32(i32 46, float %737, float %372, float %933)  ; FMad(a,b,c)
  %935 = call float @dx.op.tertiary.f32(i32 46, float %734, float %375, float %934)  ; FMad(a,b,c)
  %936 = fadd fast float %935, %328
  %937 = fmul fast float %740, %370
  %938 = call float @dx.op.tertiary.f32(i32 46, float %737, float %373, float %937)  ; FMad(a,b,c)
  %939 = call float @dx.op.tertiary.f32(i32 46, float %734, float %376, float %938)  ; FMad(a,b,c)
  %940 = fadd fast float %939, %329
  %941 = fmul fast float %740, %371
  %942 = call float @dx.op.tertiary.f32(i32 46, float %737, float %374, float %941)  ; FMad(a,b,c)
  %943 = call float @dx.op.tertiary.f32(i32 46, float %734, float %377, float %942)  ; FMad(a,b,c)
  %944 = fadd fast float %943, %330
  %945 = fmul fast float %921, %368
  %946 = call float @dx.op.tertiary.f32(i32 46, float %926, float %372, float %945)  ; FMad(a,b,c)
  %947 = call float @dx.op.tertiary.f32(i32 46, float %932, float %375, float %946)  ; FMad(a,b,c)
  %948 = fmul fast float %921, %370
  %949 = call float @dx.op.tertiary.f32(i32 46, float %926, float %373, float %948)  ; FMad(a,b,c)
  %950 = call float @dx.op.tertiary.f32(i32 46, float %932, float %376, float %949)  ; FMad(a,b,c)
  %951 = fmul fast float %921, %371
  %952 = call float @dx.op.tertiary.f32(i32 46, float %926, float %374, float %951)  ; FMad(a,b,c)
  %953 = call float @dx.op.tertiary.f32(i32 46, float %932, float %377, float %952)  ; FMad(a,b,c)
  %954 = call float @dx.op.dot3.f32(i32 55, float %947, float %950, float %953, float %947, float %950, float %953)  ; Dot3(ax,ay,az,bx,by,bz)
  %955 = call float @dx.op.unary.f32(i32 25, float %954)  ; Rsqrt(value)
  %956 = fmul fast float %955, %947
  %957 = fmul fast float %955, %950
  %958 = fmul fast float %955, %953
  %959 = extractelement <2 x float> %742, i32 0
  %960 = fsub fast float 1.000000e+00, %959
  %961 = extractelement <2 x float> %742, i32 1
  %962 = fsub fast float %960, %961
  %963 = call float @dx.op.dot3.f32(i32 55, float %962, float %959, float %961, float %792, float %864, float %936)  ; Dot3(ax,ay,az,bx,by,bz)
  %964 = call float @dx.op.dot3.f32(i32 55, float %962, float %959, float %961, float %812, float %884, float %956)  ; Dot3(ax,ay,az,bx,by,bz)
  %965 = call float @dx.op.dot3.f32(i32 55, float %962, float %959, float %961, float %796, float %868, float %940)  ; Dot3(ax,ay,az,bx,by,bz)
  %966 = call float @dx.op.dot3.f32(i32 55, float %962, float %959, float %961, float %813, float %885, float %957)  ; Dot3(ax,ay,az,bx,by,bz)
  %967 = call float @dx.op.dot3.f32(i32 55, float %962, float %959, float %961, float %800, float %872, float %944)  ; Dot3(ax,ay,az,bx,by,bz)
  %968 = call float @dx.op.dot3.f32(i32 55, float %962, float %959, float %961, float %814, float %886, float %958)  ; Dot3(ax,ay,az,bx,by,bz)
  %969 = call float @dx.op.dot3.f32(i32 55, float %964, float %966, float %968, float %964, float %966, float %968)  ; Dot3(ax,ay,az,bx,by,bz)
  %970 = call float @dx.op.unary.f32(i32 25, float %969)  ; Rsqrt(value)
  %971 = fmul fast float %970, %964
  %972 = fmul fast float %970, %966
  %973 = fmul fast float %970, %968
  %974 = call float @dx.op.unary.f32(i32 6, float %971)  ; FAbs(value)
  %975 = call float @dx.op.unary.f32(i32 6, float %972)  ; FAbs(value)
  %976 = fadd fast float %975, %974
  %977 = call float @dx.op.unary.f32(i32 6, float %973)  ; FAbs(value)
  %978 = fadd fast float %976, %977
  %979 = fdiv fast float %971, %978
  %980 = fdiv fast float %972, %978
  %981 = fdiv fast float %973, %978
  %982 = fcmp fast oge float %981, 0.000000e+00
  %983 = call float @dx.op.unary.f32(i32 6, float %980)  ; FAbs(value)
  %984 = call float @dx.op.unary.f32(i32 6, float %979)  ; FAbs(value)
  %985 = fsub fast float 1.000000e+00, %983
  %986 = fsub fast float 1.000000e+00, %984
  %987 = fcmp fast oge float %979, 0.000000e+00
  %988 = select i1 %987, float 1.000000e+00, float -1.000000e+00
  %989 = fcmp fast oge float %980, 0.000000e+00
  %990 = select i1 %989, float 1.000000e+00, float -1.000000e+00
  %991 = fmul fast float %985, %988
  %992 = fmul fast float %986, %990
  %993 = select i1 %982, float %979, float %991
  %994 = select i1 %982, float %980, float %992
  %995 = fmul fast float %993, 1.275000e+02
  %996 = fmul fast float %994, 1.275000e+02
  %997 = fadd fast float %995, 1.275000e+02
  %998 = fadd fast float %996, 1.275000e+02
  %999 = call float @dx.op.unary.f32(i32 26, float %997)  ; Round_ne(value)
  %1000 = call float @dx.op.unary.f32(i32 26, float %998)  ; Round_ne(value)
  %1001 = fptoui float %999 to i32
  %1002 = fptoui float %1000 to i32
  %1003 = shl i32 %1002, 8
  %1004 = or i32 %1003, %1001
  br label %1005

; <label>:1005                                    ; preds = %913, %111
  %1006 = phi i32 [ %1004, %913 ], [ 0, %111 ]
  %1007 = phi float [ %963, %913 ], [ 0.000000e+00, %111 ]
  %1008 = phi float [ %965, %913 ], [ 0.000000e+00, %111 ]
  %1009 = phi float [ %967, %913 ], [ 0.000000e+00, %111 ]
  %1010 = call %dx.types.Handle @"dx.op.createHandleForLib.class.Texture2D<unsigned int>"(i32 160, %"class.Texture2D<unsigned int>" %9)  ; CreateHandleForLib(Resource)
  %1011 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %1010, i32 0, i32 %22, i32 %23, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1012 = extractvalue %dx.types.ResRet.i32 %1011, 0
  %1013 = lshr i32 %1012, 8
  %1014 = and i32 %1012, 255
  %1015 = and i32 %1013, 255
  %1016 = uitofp i32 %1014 to float
  %1017 = uitofp i32 %1015 to float
  %1018 = fmul fast float %1016, 0x3F80101020000000
  %1019 = fmul fast float %1017, 0x3F80101020000000
  %1020 = fadd fast float %1018, -1.000000e+00
  %1021 = fadd fast float %1019, -1.000000e+00
  %1022 = call float @dx.op.unary.f32(i32 6, float %1020)  ; FAbs(value)
  %1023 = fsub fast float 1.000000e+00, %1022
  %1024 = call float @dx.op.unary.f32(i32 6, float %1021)  ; FAbs(value)
  %1025 = fsub fast float %1023, %1024
  %1026 = fsub fast float -0.000000e+00, %1025
  %1027 = call float @dx.op.binary.f32(i32 35, float %1026, float 0.000000e+00)  ; FMax(a,b)
  %1028 = fcmp fast ogt float %1020, 0.000000e+00
  %1029 = fsub fast float -0.000000e+00, %1027
  %1030 = select i1 %1028, float %1029, float %1027
  %1031 = fadd fast float %1030, %1020
  %1032 = fcmp fast ogt float %1021, 0.000000e+00
  %1033 = select i1 %1032, float %1029, float %1027
  %1034 = fadd fast float %1033, %1021
  %1035 = call float @dx.op.dot3.f32(i32 55, float %1031, float %1034, float %1025, float %1031, float %1034, float %1025)  ; Dot3(ax,ay,az,bx,by,bz)
  %1036 = call float @dx.op.unary.f32(i32 25, float %1035)  ; Rsqrt(value)
  %1037 = fmul fast float %1031, %1036
  %1038 = fmul fast float %1034, %1036
  %1039 = fmul fast float %1036, %1025
  %1040 = lshr i32 %1006, 8
  %1041 = and i32 %1006, 255
  %1042 = and i32 %1040, 255
  %1043 = uitofp i32 %1041 to float
  %1044 = uitofp i32 %1042 to float
  %1045 = fmul fast float %1043, 0x3F80101020000000
  %1046 = fmul fast float %1044, 0x3F80101020000000
  %1047 = fadd fast float %1045, -1.000000e+00
  %1048 = fadd fast float %1046, -1.000000e+00
  %1049 = call float @dx.op.unary.f32(i32 6, float %1047)  ; FAbs(value)
  %1050 = fsub fast float 1.000000e+00, %1049
  %1051 = call float @dx.op.unary.f32(i32 6, float %1048)  ; FAbs(value)
  %1052 = fsub fast float %1050, %1051
  %1053 = fsub fast float -0.000000e+00, %1052
  %1054 = call float @dx.op.binary.f32(i32 35, float %1053, float 0.000000e+00)  ; FMax(a,b)
  %1055 = fcmp fast ogt float %1047, 0.000000e+00
  %1056 = fsub fast float -0.000000e+00, %1054
  %1057 = select i1 %1055, float %1056, float %1054
  %1058 = fadd fast float %1057, %1047
  %1059 = fcmp fast ogt float %1048, 0.000000e+00
  %1060 = select i1 %1059, float %1056, float %1054
  %1061 = fadd fast float %1060, %1048
  %1062 = call float @dx.op.dot3.f32(i32 55, float %1058, float %1061, float %1052, float %1058, float %1061, float %1052)  ; Dot3(ax,ay,az,bx,by,bz)
  %1063 = call float @dx.op.unary.f32(i32 25, float %1062)  ; Rsqrt(value)
  %1064 = fmul fast float %1058, %1063
  %1065 = fmul fast float %1061, %1063
  %1066 = fmul fast float %1063, %1052
  %1067 = fsub fast float %1037, %1064
  %1068 = fsub fast float %1038, %1065
  %1069 = fsub fast float %1039, %1066
  %1070 = call float @dx.op.unary.f32(i32 6, float %1037)  ; FAbs(value)
  %1071 = call float @dx.op.unary.f32(i32 6, float %1038)  ; FAbs(value)
  %1072 = call float @dx.op.unary.f32(i32 6, float %1039)  ; FAbs(value)
  %1073 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %1074 = extractvalue %dx.types.CBufRet.f32 %1073, 0
  %1075 = extractvalue %dx.types.CBufRet.f32 %1073, 1
  %1076 = fptosi float %1074 to i32
  %1077 = fptosi float %1075 to i32
  %1078 = lshr i32 %1076, 2
  %1079 = lshr i32 %1077, 2
  %1080 = fptosi float %24 to i32
  %1081 = fptosi float %25 to i32
  %1082 = shl nuw i32 %1078, 2
  %1083 = shl nuw i32 %1079, 2
  %1084 = sub i32 %1076, %1082
  %1085 = sub i32 %1077, %1083
  %1086 = lshr i32 %1084, 1
  %1087 = lshr i32 %1085, 1
  %1088 = sub i32 %1080, %1086
  %1089 = sub i32 %1081, %1087
  %1090 = lshr i32 %1088, 2
  %1091 = lshr i32 %1089, 2
  %1092 = icmp ult i32 %1090, %1078
  %1093 = icmp ult i32 %1091, %1079
  %1094 = and i1 %1092, %1093
  br i1 %1094, label %1095, label %1107

; <label>:1095                                    ; preds = %1005
  %1096 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 362)  ; CBufferLoadLegacy(handle,regIndex)
  %1097 = extractvalue %dx.types.CBufRet.i32 %1096, 2
  %1098 = and i32 %1097, 1
  %1099 = icmp ne i32 %1098, 0
  %1100 = sitofp i32 %1091 to float
  %1101 = fadd fast float %1075, -1.000000e+00
  %1102 = fcmp fast une float %1100, %1101
  %1103 = and i1 %1099, %1102
  br i1 %1103, label %1104, label %1107

; <label>:1104                                    ; preds = %1095
  %1105 = call %dx.types.Handle @"dx.op.createHandleForLib.class.RWTexture2D<vector<float, 4> >"(i32 160, %"class.RWTexture2D<vector<float, 4> >" %16)  ; CreateHandleForLib(Resource)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1105, i32 %1090, i32 %1091, i32 undef, float %1070, float %1071, float %1072, float 1.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %1106 = load float, float* %122, align 4, !tbaa !60
  br label %1107

; <label>:1107                                    ; preds = %1104, %1095, %1005
  %1108 = phi float [ %1106, %1104 ], [ %131, %1095 ], [ %131, %1005 ]
  %1109 = fcmp fast oeq float %1108, 1.000000e+06
  %1110 = call float @dx.op.unary.f32(i32 6, float %1064)  ; FAbs(value)
  %1111 = call float @dx.op.unary.f32(i32 6, float %1065)  ; FAbs(value)
  %1112 = call float @dx.op.unary.f32(i32 6, float %1066)  ; FAbs(value)
  %1113 = select i1 %1109, float 0.000000e+00, float %1110
  %1114 = select i1 %1109, float 0.000000e+00, float %1111
  %1115 = select i1 %1109, float 0.000000e+00, float %1112
  %1116 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %1117 = extractvalue %dx.types.CBufRet.f32 %1116, 0
  %1118 = extractvalue %dx.types.CBufRet.f32 %1116, 1
  %1119 = fptosi float %1117 to i32
  %1120 = fptosi float %1118 to i32
  %1121 = lshr i32 %1119, 2
  %1122 = lshr i32 %1120, 2
  %1123 = shl nuw i32 %1121, 2
  %1124 = shl nuw i32 %1122, 2
  %1125 = sub i32 %1119, %1123
  %1126 = sub i32 %1120, %1124
  %1127 = lshr i32 %1125, 1
  %1128 = lshr i32 %1126, 1
  %1129 = sub i32 %1080, %1127
  %1130 = sub i32 %1081, %1128
  %1131 = lshr i32 %1129, 2
  %1132 = lshr i32 %1130, 2
  %1133 = icmp ult i32 %1131, %1121
  %1134 = icmp ult i32 %1132, %1122
  %1135 = and i1 %1133, %1134
  br i1 %1135, label %1136, label %1149

; <label>:1136                                    ; preds = %1107
  %1137 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 362)  ; CBufferLoadLegacy(handle,regIndex)
  %1138 = extractvalue %dx.types.CBufRet.i32 %1137, 2
  %1139 = and i32 %1138, 1
  %1140 = icmp ne i32 %1139, 0
  %1141 = sitofp i32 %1132 to float
  %1142 = fadd fast float %1118, -1.000000e+00
  %1143 = fcmp fast une float %1141, %1142
  %1144 = and i1 %1140, %1143
  br i1 %1144, label %1145, label %1149

; <label>:1145                                    ; preds = %1136
  %1146 = add nuw nsw i32 %1131, %1121
  %1147 = call %dx.types.Handle @"dx.op.createHandleForLib.class.RWTexture2D<vector<float, 4> >"(i32 160, %"class.RWTexture2D<vector<float, 4> >" %16)  ; CreateHandleForLib(Resource)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1147, i32 %1146, i32 %1132, i32 undef, float %1113, float %1114, float %1115, float 1.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %1148 = load float, float* %122, align 4, !tbaa !60
  br label %1149

; <label>:1149                                    ; preds = %1145, %1136, %1107
  %1150 = phi float [ %1148, %1145 ], [ %1108, %1136 ], [ %1108, %1107 ]
  %1151 = fcmp fast oeq float %1150, 1.000000e+06
  %1152 = fmul fast float %1067, 1.000000e+01
  %1153 = fmul fast float %1068, 1.000000e+01
  %1154 = fmul fast float %1069, 1.000000e+01
  %1155 = call float @dx.op.unary.f32(i32 6, float %1152)  ; FAbs(value)
  %1156 = call float @dx.op.unary.f32(i32 6, float %1153)  ; FAbs(value)
  %1157 = call float @dx.op.unary.f32(i32 6, float %1154)  ; FAbs(value)
  %1158 = select i1 %1151, float 0.000000e+00, float %1155
  %1159 = select i1 %1151, float 0.000000e+00, float %1156
  %1160 = select i1 %1151, float 0.000000e+00, float %1157
  %1161 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %1162 = extractvalue %dx.types.CBufRet.f32 %1161, 0
  %1163 = extractvalue %dx.types.CBufRet.f32 %1161, 1
  %1164 = fptosi float %1162 to i32
  %1165 = fptosi float %1163 to i32
  %1166 = lshr i32 %1164, 2
  %1167 = lshr i32 %1165, 2
  %1168 = shl nuw nsw i32 %1166, 1
  %1169 = shl nuw i32 %1166, 2
  %1170 = shl nuw i32 %1167, 2
  %1171 = sub i32 %1164, %1169
  %1172 = sub i32 %1165, %1170
  %1173 = lshr i32 %1171, 1
  %1174 = lshr i32 %1172, 1
  %1175 = sub i32 %1080, %1173
  %1176 = sub i32 %1081, %1174
  %1177 = lshr i32 %1175, 2
  %1178 = lshr i32 %1176, 2
  %1179 = icmp ult i32 %1177, %1166
  %1180 = icmp ult i32 %1178, %1167
  %1181 = and i1 %1179, %1180
  br i1 %1181, label %1182, label %1195

; <label>:1182                                    ; preds = %1149
  %1183 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 362)  ; CBufferLoadLegacy(handle,regIndex)
  %1184 = extractvalue %dx.types.CBufRet.i32 %1183, 2
  %1185 = and i32 %1184, 1
  %1186 = icmp ne i32 %1185, 0
  %1187 = sitofp i32 %1178 to float
  %1188 = fadd fast float %1163, -1.000000e+00
  %1189 = fcmp fast une float %1187, %1188
  %1190 = and i1 %1186, %1189
  br i1 %1190, label %1191, label %1195

; <label>:1191                                    ; preds = %1182
  %1192 = add nuw i32 %1177, %1168
  %1193 = call %dx.types.Handle @"dx.op.createHandleForLib.class.RWTexture2D<vector<float, 4> >"(i32 160, %"class.RWTexture2D<vector<float, 4> >" %16)  ; CreateHandleForLib(Resource)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1193, i32 %1192, i32 %1178, i32 undef, float %1158, float %1159, float %1160, float 1.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %1194 = load float, float* %122, align 4, !tbaa !60
  br label %1195

; <label>:1195                                    ; preds = %1191, %1182, %1149
  %1196 = phi float [ %1194, %1191 ], [ %1150, %1182 ], [ %1150, %1149 ]
  %1197 = fcmp fast oeq float %1196, 1.000000e+06
  %1198 = fmul fast float %104, 0x3FA47AE140000000
  %1199 = fmul fast float %105, 0x3FA47AE140000000
  %1200 = fmul fast float %106, 0x3FA47AE140000000
  %1201 = fadd fast float %1198, 0x3F50624DE0000000
  %1202 = fadd fast float %1199, 0x3F50624DE0000000
  %1203 = fadd fast float %1200, 0x3F50624DE0000000
  %1204 = call float @dx.op.unary.f32(i32 22, float %1201)  ; Frc(value)
  %1205 = call float @dx.op.unary.f32(i32 22, float %1202)  ; Frc(value)
  %1206 = call float @dx.op.unary.f32(i32 22, float %1203)  ; Frc(value)
  %1207 = select i1 %1197, float 0.000000e+00, float %1204
  %1208 = select i1 %1197, float 0.000000e+00, float %1205
  %1209 = select i1 %1197, float 0.000000e+00, float %1206
  %1210 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %1211 = extractvalue %dx.types.CBufRet.f32 %1210, 0
  %1212 = extractvalue %dx.types.CBufRet.f32 %1210, 1
  %1213 = fptosi float %1211 to i32
  %1214 = fptosi float %1212 to i32
  %1215 = lshr i32 %1213, 2
  %1216 = lshr i32 %1214, 2
  %1217 = shl nuw i32 %1215, 2
  %1218 = shl nuw i32 %1216, 2
  %1219 = sub i32 %1213, %1217
  %1220 = sub i32 %1214, %1218
  %1221 = lshr i32 %1219, 1
  %1222 = lshr i32 %1220, 1
  %1223 = sub i32 %1080, %1221
  %1224 = sub i32 %1081, %1222
  %1225 = lshr i32 %1223, 2
  %1226 = lshr i32 %1224, 2
  %1227 = icmp ult i32 %1225, %1215
  %1228 = icmp ult i32 %1226, %1216
  %1229 = and i1 %1227, %1228
  br i1 %1229, label %1230, label %1243

; <label>:1230                                    ; preds = %1195
  %1231 = add nuw nsw i32 %1226, %1216
  %1232 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 362)  ; CBufferLoadLegacy(handle,regIndex)
  %1233 = extractvalue %dx.types.CBufRet.i32 %1232, 2
  %1234 = and i32 %1233, 1
  %1235 = icmp ne i32 %1234, 0
  %1236 = sitofp i32 %1231 to float
  %1237 = fadd fast float %1212, -1.000000e+00
  %1238 = fcmp fast une float %1236, %1237
  %1239 = and i1 %1235, %1238
  br i1 %1239, label %1240, label %1243

; <label>:1240                                    ; preds = %1230
  %1241 = call %dx.types.Handle @"dx.op.createHandleForLib.class.RWTexture2D<vector<float, 4> >"(i32 160, %"class.RWTexture2D<vector<float, 4> >" %16)  ; CreateHandleForLib(Resource)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1241, i32 %1225, i32 %1231, i32 undef, float %1207, float %1208, float %1209, float 1.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %1242 = load float, float* %122, align 4, !tbaa !60
  br label %1243

; <label>:1243                                    ; preds = %1240, %1230, %1195
  %1244 = phi float [ %1242, %1240 ], [ %1196, %1230 ], [ %1196, %1195 ]
  %1245 = fcmp fast oeq float %1244, 1.000000e+06
  %1246 = fmul fast float %135, 0x3FA47AE140000000
  %1247 = fmul fast float %136, 0x3FA47AE140000000
  %1248 = fmul fast float %137, 0x3FA47AE140000000
  %1249 = fadd fast float %1246, 0x3F50624DE0000000
  %1250 = fadd fast float %1247, 0x3F50624DE0000000
  %1251 = fadd fast float %1248, 0x3F50624DE0000000
  %1252 = call float @dx.op.unary.f32(i32 22, float %1249)  ; Frc(value)
  %1253 = call float @dx.op.unary.f32(i32 22, float %1250)  ; Frc(value)
  %1254 = call float @dx.op.unary.f32(i32 22, float %1251)  ; Frc(value)
  %1255 = select i1 %1245, float 0.000000e+00, float %1252
  %1256 = select i1 %1245, float 0.000000e+00, float %1253
  %1257 = select i1 %1245, float 0.000000e+00, float %1254
  %1258 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %1259 = extractvalue %dx.types.CBufRet.f32 %1258, 0
  %1260 = extractvalue %dx.types.CBufRet.f32 %1258, 1
  %1261 = fptosi float %1259 to i32
  %1262 = fptosi float %1260 to i32
  %1263 = lshr i32 %1261, 2
  %1264 = lshr i32 %1262, 2
  %1265 = shl nuw i32 %1263, 2
  %1266 = shl nuw i32 %1264, 2
  %1267 = sub i32 %1261, %1265
  %1268 = sub i32 %1262, %1266
  %1269 = lshr i32 %1267, 1
  %1270 = lshr i32 %1268, 1
  %1271 = sub i32 %1080, %1269
  %1272 = sub i32 %1081, %1270
  %1273 = lshr i32 %1271, 2
  %1274 = lshr i32 %1272, 2
  %1275 = icmp ult i32 %1273, %1263
  %1276 = icmp ult i32 %1274, %1264
  %1277 = and i1 %1275, %1276
  br i1 %1277, label %1278, label %1292

; <label>:1278                                    ; preds = %1243
  %1279 = add nuw nsw i32 %1274, %1264
  %1280 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 362)  ; CBufferLoadLegacy(handle,regIndex)
  %1281 = extractvalue %dx.types.CBufRet.i32 %1280, 2
  %1282 = and i32 %1281, 1
  %1283 = icmp ne i32 %1282, 0
  %1284 = sitofp i32 %1279 to float
  %1285 = fadd fast float %1260, -1.000000e+00
  %1286 = fcmp fast une float %1284, %1285
  %1287 = and i1 %1283, %1286
  br i1 %1287, label %1288, label %1292

; <label>:1288                                    ; preds = %1278
  %1289 = add nuw nsw i32 %1273, %1263
  %1290 = call %dx.types.Handle @"dx.op.createHandleForLib.class.RWTexture2D<vector<float, 4> >"(i32 160, %"class.RWTexture2D<vector<float, 4> >" %16)  ; CreateHandleForLib(Resource)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1290, i32 %1289, i32 %1279, i32 undef, float %1255, float %1256, float %1257, float 1.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %1291 = load float, float* %122, align 4, !tbaa !60
  br label %1292

; <label>:1292                                    ; preds = %1288, %1278, %1243
  %1293 = phi float [ %1291, %1288 ], [ %1244, %1278 ], [ %1244, %1243 ]
  %1294 = fcmp fast oeq float %1293, 1.000000e+06
  %1295 = fsub fast float %135, %104
  %1296 = fsub fast float %136, %105
  %1297 = fsub fast float %137, %106
  %1298 = call float @dx.op.unary.f32(i32 6, float %1295)  ; FAbs(value)
  %1299 = call float @dx.op.unary.f32(i32 6, float %1296)  ; FAbs(value)
  %1300 = call float @dx.op.unary.f32(i32 6, float %1297)  ; FAbs(value)
  %1301 = select i1 %1294, float 0.000000e+00, float %1298
  %1302 = select i1 %1294, float 0.000000e+00, float %1299
  %1303 = select i1 %1294, float 0.000000e+00, float %1300
  %1304 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %1305 = extractvalue %dx.types.CBufRet.f32 %1304, 0
  %1306 = extractvalue %dx.types.CBufRet.f32 %1304, 1
  %1307 = fptosi float %1305 to i32
  %1308 = fptosi float %1306 to i32
  %1309 = lshr i32 %1307, 2
  %1310 = lshr i32 %1308, 2
  %1311 = shl nuw nsw i32 %1309, 1
  %1312 = shl nuw i32 %1309, 2
  %1313 = shl nuw i32 %1310, 2
  %1314 = sub i32 %1307, %1312
  %1315 = sub i32 %1308, %1313
  %1316 = lshr i32 %1314, 1
  %1317 = lshr i32 %1315, 1
  %1318 = sub i32 %1080, %1316
  %1319 = sub i32 %1081, %1317
  %1320 = lshr i32 %1318, 2
  %1321 = lshr i32 %1319, 2
  %1322 = icmp ult i32 %1320, %1309
  %1323 = icmp ult i32 %1321, %1310
  %1324 = and i1 %1322, %1323
  br i1 %1324, label %1325, label %1339

; <label>:1325                                    ; preds = %1292
  %1326 = add nuw nsw i32 %1321, %1310
  %1327 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 362)  ; CBufferLoadLegacy(handle,regIndex)
  %1328 = extractvalue %dx.types.CBufRet.i32 %1327, 2
  %1329 = and i32 %1328, 1
  %1330 = icmp ne i32 %1329, 0
  %1331 = sitofp i32 %1326 to float
  %1332 = fadd fast float %1306, -1.000000e+00
  %1333 = fcmp fast une float %1331, %1332
  %1334 = and i1 %1330, %1333
  br i1 %1334, label %1335, label %1339

; <label>:1335                                    ; preds = %1325
  %1336 = add nuw i32 %1320, %1311
  %1337 = call %dx.types.Handle @"dx.op.createHandleForLib.class.RWTexture2D<vector<float, 4> >"(i32 160, %"class.RWTexture2D<vector<float, 4> >" %16)  ; CreateHandleForLib(Resource)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1337, i32 %1336, i32 %1326, i32 undef, float %1301, float %1302, float %1303, float 1.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %1338 = load float, float* %122, align 4, !tbaa !60
  br label %1339

; <label>:1339                                    ; preds = %1335, %1325, %1292
  %1340 = phi float [ %1338, %1335 ], [ %1293, %1325 ], [ %1293, %1292 ]
  %1341 = fcmp fast oeq float %1340, 1.000000e+06
  %1342 = select i1 %1341, float 0.000000e+00, float %1252
  %1343 = select i1 %1341, float 0.000000e+00, float %1253
  %1344 = select i1 %1341, float 0.000000e+00, float %1254
  %1345 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %1346 = extractvalue %dx.types.CBufRet.f32 %1345, 0
  %1347 = extractvalue %dx.types.CBufRet.f32 %1345, 1
  %1348 = fptosi float %1346 to i32
  %1349 = fptosi float %1347 to i32
  %1350 = lshr i32 %1348, 2
  %1351 = lshr i32 %1349, 2
  %1352 = shl nuw i32 %1350, 2
  %1353 = shl nuw i32 %1351, 2
  %1354 = sub i32 %1348, %1352
  %1355 = sub i32 %1349, %1353
  %1356 = lshr i32 %1354, 1
  %1357 = lshr i32 %1355, 1
  %1358 = sub i32 %1080, %1356
  %1359 = sub i32 %1081, %1357
  %1360 = lshr i32 %1358, 2
  %1361 = lshr i32 %1359, 2
  %1362 = icmp ult i32 %1360, %1350
  %1363 = icmp ult i32 %1361, %1351
  %1364 = and i1 %1362, %1363
  br i1 %1364, label %1365, label %1379

; <label>:1365                                    ; preds = %1339
  %1366 = shl nuw nsw i32 %1351, 1
  %1367 = add nuw i32 %1361, %1366
  %1368 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 362)  ; CBufferLoadLegacy(handle,regIndex)
  %1369 = extractvalue %dx.types.CBufRet.i32 %1368, 2
  %1370 = and i32 %1369, 1
  %1371 = icmp ne i32 %1370, 0
  %1372 = sitofp i32 %1367 to float
  %1373 = fadd fast float %1347, -1.000000e+00
  %1374 = fcmp fast une float %1372, %1373
  %1375 = and i1 %1371, %1374
  br i1 %1375, label %1376, label %1379

; <label>:1376                                    ; preds = %1365
  %1377 = call %dx.types.Handle @"dx.op.createHandleForLib.class.RWTexture2D<vector<float, 4> >"(i32 160, %"class.RWTexture2D<vector<float, 4> >" %16)  ; CreateHandleForLib(Resource)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1377, i32 %1360, i32 %1367, i32 undef, float %1342, float %1343, float %1344, float 1.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %1378 = load float, float* %122, align 4, !tbaa !60
  br label %1379

; <label>:1379                                    ; preds = %1376, %1365, %1339
  %1380 = phi float [ %1378, %1376 ], [ %1340, %1365 ], [ %1340, %1339 ]
  %1381 = fcmp fast oeq float %1380, 1.000000e+06
  %1382 = fmul fast float %1007, 0x3FA47AE140000000
  %1383 = fmul fast float %1008, 0x3FA47AE140000000
  %1384 = fmul fast float %1009, 0x3FA47AE140000000
  %1385 = fadd fast float %1382, 0x3F50624DE0000000
  %1386 = fadd fast float %1383, 0x3F50624DE0000000
  %1387 = fadd fast float %1384, 0x3F50624DE0000000
  %1388 = call float @dx.op.unary.f32(i32 22, float %1385)  ; Frc(value)
  %1389 = call float @dx.op.unary.f32(i32 22, float %1386)  ; Frc(value)
  %1390 = call float @dx.op.unary.f32(i32 22, float %1387)  ; Frc(value)
  %1391 = select i1 %1381, float 0.000000e+00, float %1388
  %1392 = select i1 %1381, float 0.000000e+00, float %1389
  %1393 = select i1 %1381, float 0.000000e+00, float %1390
  %1394 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %1395 = extractvalue %dx.types.CBufRet.f32 %1394, 0
  %1396 = extractvalue %dx.types.CBufRet.f32 %1394, 1
  %1397 = fptosi float %1395 to i32
  %1398 = fptosi float %1396 to i32
  %1399 = lshr i32 %1397, 2
  %1400 = lshr i32 %1398, 2
  %1401 = shl nuw i32 %1399, 2
  %1402 = shl nuw i32 %1400, 2
  %1403 = sub i32 %1397, %1401
  %1404 = sub i32 %1398, %1402
  %1405 = lshr i32 %1403, 1
  %1406 = lshr i32 %1404, 1
  %1407 = sub i32 %1080, %1405
  %1408 = sub i32 %1081, %1406
  %1409 = lshr i32 %1407, 2
  %1410 = lshr i32 %1408, 2
  %1411 = icmp ult i32 %1409, %1399
  %1412 = icmp ult i32 %1410, %1400
  %1413 = and i1 %1411, %1412
  br i1 %1413, label %1414, label %1429

; <label>:1414                                    ; preds = %1379
  %1415 = shl nuw nsw i32 %1400, 1
  %1416 = add nuw i32 %1410, %1415
  %1417 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 362)  ; CBufferLoadLegacy(handle,regIndex)
  %1418 = extractvalue %dx.types.CBufRet.i32 %1417, 2
  %1419 = and i32 %1418, 1
  %1420 = icmp ne i32 %1419, 0
  %1421 = sitofp i32 %1416 to float
  %1422 = fadd fast float %1396, -1.000000e+00
  %1423 = fcmp fast une float %1421, %1422
  %1424 = and i1 %1420, %1423
  br i1 %1424, label %1425, label %1429

; <label>:1425                                    ; preds = %1414
  %1426 = add nuw nsw i32 %1409, %1399
  %1427 = call %dx.types.Handle @"dx.op.createHandleForLib.class.RWTexture2D<vector<float, 4> >"(i32 160, %"class.RWTexture2D<vector<float, 4> >" %16)  ; CreateHandleForLib(Resource)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1427, i32 %1426, i32 %1416, i32 undef, float %1391, float %1392, float %1393, float 1.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %1428 = load float, float* %122, align 4, !tbaa !60
  br label %1429

; <label>:1429                                    ; preds = %1425, %1414, %1379
  %1430 = phi float [ %1428, %1425 ], [ %1380, %1414 ], [ %1380, %1379 ]
  %1431 = fcmp fast oeq float %1430, 1.000000e+06
  %1432 = fsub fast float %135, %1007
  %1433 = fsub fast float %136, %1008
  %1434 = fsub fast float %137, %1009
  %1435 = call float @dx.op.unary.f32(i32 6, float %1432)  ; FAbs(value)
  %1436 = call float @dx.op.unary.f32(i32 6, float %1433)  ; FAbs(value)
  %1437 = call float @dx.op.unary.f32(i32 6, float %1434)  ; FAbs(value)
  %1438 = fmul fast float %1435, 1.000000e+02
  %1439 = fmul fast float %1436, 1.000000e+02
  %1440 = fmul fast float %1437, 1.000000e+02
  %1441 = select i1 %1431, float 0.000000e+00, float %1438
  %1442 = select i1 %1431, float 0.000000e+00, float %1439
  %1443 = select i1 %1431, float 0.000000e+00, float %1440
  %1444 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %1445 = extractvalue %dx.types.CBufRet.f32 %1444, 0
  %1446 = extractvalue %dx.types.CBufRet.f32 %1444, 1
  %1447 = fptosi float %1445 to i32
  %1448 = fptosi float %1446 to i32
  %1449 = lshr i32 %1447, 2
  %1450 = lshr i32 %1448, 2
  %1451 = shl nuw nsw i32 %1449, 1
  %1452 = shl nuw i32 %1449, 2
  %1453 = shl nuw i32 %1450, 2
  %1454 = sub i32 %1447, %1452
  %1455 = sub i32 %1448, %1453
  %1456 = lshr i32 %1454, 1
  %1457 = lshr i32 %1455, 1
  %1458 = sub i32 %1080, %1456
  %1459 = sub i32 %1081, %1457
  %1460 = lshr i32 %1458, 2
  %1461 = lshr i32 %1459, 2
  %1462 = icmp ult i32 %1460, %1449
  %1463 = icmp ult i32 %1461, %1450
  %1464 = and i1 %1462, %1463
  br i1 %1464, label %1465, label %1480

; <label>:1465                                    ; preds = %1429
  %1466 = shl nuw nsw i32 %1450, 1
  %1467 = add nuw i32 %1461, %1466
  %1468 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 362)  ; CBufferLoadLegacy(handle,regIndex)
  %1469 = extractvalue %dx.types.CBufRet.i32 %1468, 2
  %1470 = and i32 %1469, 1
  %1471 = icmp ne i32 %1470, 0
  %1472 = sitofp i32 %1467 to float
  %1473 = fadd fast float %1446, -1.000000e+00
  %1474 = fcmp fast une float %1472, %1473
  %1475 = and i1 %1471, %1474
  br i1 %1475, label %1476, label %1480

; <label>:1476                                    ; preds = %1465
  %1477 = add nuw i32 %1460, %1451
  %1478 = call %dx.types.Handle @"dx.op.createHandleForLib.class.RWTexture2D<vector<float, 4> >"(i32 160, %"class.RWTexture2D<vector<float, 4> >" %16)  ; CreateHandleForLib(Resource)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1478, i32 %1477, i32 %1467, i32 undef, float %1441, float %1442, float %1443, float 1.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %1479 = load float, float* %122, align 4, !tbaa !60
  br label %1480

; <label>:1480                                    ; preds = %1476, %1465, %1429
  %1481 = phi float [ %1479, %1476 ], [ %1430, %1465 ], [ %1430, %1429 ]
  %1482 = fcmp fast oeq float %1481, 1.000000e+06
  %1483 = load i32, i32* %125, align 4, !tbaa !64
  %1484 = srem i32 %1483, 8
  %1485 = sitofp i32 %1484 to float
  %1486 = fmul fast float %1485, 0x3FC24924A0000000
  %1487 = call float @dx.op.unary.f32(i32 7, float %1486)  ; Saturate(value)
  %1488 = fcmp fast olt float %1487, 5.000000e-01
  %1489 = fmul fast float %1487, 2.000000e+00
  %1490 = fmul fast float %1487, 4.000000e+00
  br i1 %1488, label %1491, label %1497

; <label>:1491                                    ; preds = %1480
  %1492 = fsub fast float 1.000000e+00, %1489
  %1493 = fcmp fast olt float %1492, 5.000000e-01
  %1494 = fsub fast float 2.000000e+00, %1490
  %1495 = select i1 %1493, float 1.000000e+00, float %1490
  %1496 = select i1 %1493, float %1494, float 1.000000e+00
  br label %1504

; <label>:1497                                    ; preds = %1480
  %1498 = fsub fast float 2.000000e+00, %1489
  %1499 = fcmp fast olt float %1498, 5.000000e-01
  %1500 = fsub fast float 4.000000e+00, %1490
  %1501 = fadd fast float %1490, -2.000000e+00
  %1502 = select i1 %1499, float 1.000000e+00, float %1501
  %1503 = select i1 %1499, float %1500, float 1.000000e+00
  br label %1504

; <label>:1504                                    ; preds = %1497, %1491
  %1505 = phi float [ 0.000000e+00, %1491 ], [ %1502, %1497 ]
  %1506 = phi float [ %1495, %1491 ], [ %1503, %1497 ]
  %1507 = phi float [ %1496, %1491 ], [ 0.000000e+00, %1497 ]
  %1508 = select i1 %1482, float 0.000000e+00, float %1505
  %1509 = select i1 %1482, float 0.000000e+00, float %1506
  %1510 = select i1 %1482, float 0.000000e+00, float %1507
  %1511 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %1512 = extractvalue %dx.types.CBufRet.f32 %1511, 0
  %1513 = extractvalue %dx.types.CBufRet.f32 %1511, 1
  %1514 = fptosi float %1512 to i32
  %1515 = fptosi float %1513 to i32
  %1516 = lshr i32 %1514, 2
  %1517 = lshr i32 %1515, 2
  %1518 = shl nuw i32 %1516, 2
  %1519 = shl nuw i32 %1517, 2
  %1520 = sub i32 %1514, %1518
  %1521 = sub i32 %1515, %1519
  %1522 = lshr i32 %1520, 1
  %1523 = lshr i32 %1521, 1
  %1524 = sub i32 %1080, %1522
  %1525 = sub i32 %1081, %1523
  %1526 = lshr i32 %1524, 2
  %1527 = lshr i32 %1525, 2
  %1528 = icmp ult i32 %1526, %1516
  %1529 = icmp ult i32 %1527, %1517
  %1530 = and i1 %1528, %1529
  br i1 %1530, label %1531, label %1545

; <label>:1531                                    ; preds = %1504
  %1532 = mul nuw i32 %1517, 3
  %1533 = add i32 %1527, %1532
  %1534 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 362)  ; CBufferLoadLegacy(handle,regIndex)
  %1535 = extractvalue %dx.types.CBufRet.i32 %1534, 2
  %1536 = and i32 %1535, 1
  %1537 = icmp ne i32 %1536, 0
  %1538 = sitofp i32 %1533 to float
  %1539 = fadd fast float %1513, -1.000000e+00
  %1540 = fcmp fast une float %1538, %1539
  %1541 = and i1 %1537, %1540
  br i1 %1541, label %1542, label %1545

; <label>:1542                                    ; preds = %1531
  %1543 = call %dx.types.Handle @"dx.op.createHandleForLib.class.RWTexture2D<vector<float, 4> >"(i32 160, %"class.RWTexture2D<vector<float, 4> >" %16)  ; CreateHandleForLib(Resource)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1543, i32 %1526, i32 %1533, i32 undef, float %1508, float %1509, float %1510, float 1.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %1544 = load float, float* %122, align 4, !tbaa !60
  br label %1545

; <label>:1545                                    ; preds = %1542, %1531, %1504
  %1546 = phi float [ %1544, %1542 ], [ %1481, %1531 ], [ %1481, %1504 ]
  %1547 = fcmp fast oeq float %1546, 1.000000e+06
  %1548 = load i32, i32* %124, align 4, !tbaa !64
  %1549 = lshr i32 %1548, 16
  %1550 = and i32 %1549, 7
  %1551 = sitofp i32 %1550 to float
  %1552 = fmul fast float %1551, 0x3FC24924A0000000
  %1553 = call float @dx.op.unary.f32(i32 7, float %1552)  ; Saturate(value)
  %1554 = fcmp fast olt float %1553, 5.000000e-01
  %1555 = fmul fast float %1553, 2.000000e+00
  %1556 = fmul fast float %1553, 4.000000e+00
  br i1 %1554, label %1557, label %1563

; <label>:1557                                    ; preds = %1545
  %1558 = fsub fast float 1.000000e+00, %1555
  %1559 = fcmp fast olt float %1558, 5.000000e-01
  %1560 = fsub fast float 2.000000e+00, %1556
  %1561 = select i1 %1559, float 1.000000e+00, float %1556
  %1562 = select i1 %1559, float %1560, float 1.000000e+00
  br label %1570

; <label>:1563                                    ; preds = %1545
  %1564 = fsub fast float 2.000000e+00, %1555
  %1565 = fcmp fast olt float %1564, 5.000000e-01
  %1566 = fsub fast float 4.000000e+00, %1556
  %1567 = fadd fast float %1556, -2.000000e+00
  %1568 = select i1 %1565, float 1.000000e+00, float %1567
  %1569 = select i1 %1565, float %1566, float 1.000000e+00
  br label %1570

; <label>:1570                                    ; preds = %1563, %1557
  %1571 = phi float [ 0.000000e+00, %1557 ], [ %1568, %1563 ]
  %1572 = phi float [ %1561, %1557 ], [ %1569, %1563 ]
  %1573 = phi float [ %1562, %1557 ], [ 0.000000e+00, %1563 ]
  %1574 = select i1 %1547, float 0.000000e+00, float %1571
  %1575 = select i1 %1547, float 0.000000e+00, float %1572
  %1576 = select i1 %1547, float 0.000000e+00, float %1573
  %1577 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %1578 = extractvalue %dx.types.CBufRet.f32 %1577, 0
  %1579 = extractvalue %dx.types.CBufRet.f32 %1577, 1
  %1580 = fptosi float %1578 to i32
  %1581 = fptosi float %1579 to i32
  %1582 = lshr i32 %1580, 2
  %1583 = lshr i32 %1581, 2
  %1584 = shl nuw i32 %1582, 2
  %1585 = shl nuw i32 %1583, 2
  %1586 = sub i32 %1580, %1584
  %1587 = sub i32 %1581, %1585
  %1588 = lshr i32 %1586, 1
  %1589 = lshr i32 %1587, 1
  %1590 = sub i32 %1080, %1588
  %1591 = sub i32 %1081, %1589
  %1592 = lshr i32 %1590, 2
  %1593 = lshr i32 %1591, 2
  %1594 = icmp ult i32 %1592, %1582
  %1595 = icmp ult i32 %1593, %1583
  %1596 = and i1 %1594, %1595
  br i1 %1596, label %1597, label %1613

; <label>:1597                                    ; preds = %1570
  %1598 = mul nuw i32 %1583, 3
  %1599 = add i32 %1593, %1598
  %1600 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 362)  ; CBufferLoadLegacy(handle,regIndex)
  %1601 = extractvalue %dx.types.CBufRet.i32 %1600, 2
  %1602 = and i32 %1601, 1
  %1603 = icmp ne i32 %1602, 0
  %1604 = sitofp i32 %1599 to float
  %1605 = fadd fast float %1579, -1.000000e+00
  %1606 = fcmp fast une float %1604, %1605
  %1607 = and i1 %1603, %1606
  br i1 %1607, label %1608, label %1613

; <label>:1608                                    ; preds = %1597
  %1609 = add nuw nsw i32 %1592, %1582
  %1610 = call %dx.types.Handle @"dx.op.createHandleForLib.class.RWTexture2D<vector<float, 4> >"(i32 160, %"class.RWTexture2D<vector<float, 4> >" %16)  ; CreateHandleForLib(Resource)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1610, i32 %1609, i32 %1599, i32 undef, float %1574, float %1575, float %1576, float 1.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %1611 = load float, float* %122, align 4, !tbaa !60
  %1612 = load i32, i32* %124, align 4, !tbaa !64
  br label %1613

; <label>:1613                                    ; preds = %1608, %1597, %1570
  %1614 = phi i32 [ %1612, %1608 ], [ %1548, %1597 ], [ %1548, %1570 ]
  %1615 = phi float [ %1611, %1608 ], [ %1546, %1597 ], [ %1546, %1570 ]
  %1616 = fcmp fast oeq float %1615, 1.000000e+06
  %1617 = and i32 %1614, 7
  %1618 = sitofp i32 %1617 to float
  %1619 = fmul fast float %1618, 0x3FC24924A0000000
  %1620 = call float @dx.op.unary.f32(i32 7, float %1619)  ; Saturate(value)
  %1621 = fcmp fast olt float %1620, 5.000000e-01
  %1622 = fmul fast float %1620, 2.000000e+00
  %1623 = fmul fast float %1620, 4.000000e+00
  br i1 %1621, label %1624, label %1630

; <label>:1624                                    ; preds = %1613
  %1625 = fsub fast float 1.000000e+00, %1622
  %1626 = fcmp fast olt float %1625, 5.000000e-01
  %1627 = fsub fast float 2.000000e+00, %1623
  %1628 = select i1 %1626, float 1.000000e+00, float %1623
  %1629 = select i1 %1626, float %1627, float 1.000000e+00
  br label %1637

; <label>:1630                                    ; preds = %1613
  %1631 = fsub fast float 2.000000e+00, %1622
  %1632 = fcmp fast olt float %1631, 5.000000e-01
  %1633 = fsub fast float 4.000000e+00, %1623
  %1634 = fadd fast float %1623, -2.000000e+00
  %1635 = select i1 %1632, float 1.000000e+00, float %1634
  %1636 = select i1 %1632, float %1633, float 1.000000e+00
  br label %1637

; <label>:1637                                    ; preds = %1630, %1624
  %1638 = phi float [ 0.000000e+00, %1624 ], [ %1635, %1630 ]
  %1639 = phi float [ %1628, %1624 ], [ %1636, %1630 ]
  %1640 = phi float [ %1629, %1624 ], [ 0.000000e+00, %1630 ]
  %1641 = select i1 %1616, float 0.000000e+00, float %1638
  %1642 = select i1 %1616, float 0.000000e+00, float %1639
  %1643 = select i1 %1616, float 0.000000e+00, float %1640
  %1644 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %1645 = extractvalue %dx.types.CBufRet.f32 %1644, 0
  %1646 = extractvalue %dx.types.CBufRet.f32 %1644, 1
  %1647 = fptosi float %1645 to i32
  %1648 = fptosi float %1646 to i32
  %1649 = lshr i32 %1647, 2
  %1650 = lshr i32 %1648, 2
  %1651 = shl nuw nsw i32 %1649, 1
  %1652 = shl nuw i32 %1649, 2
  %1653 = shl nuw i32 %1650, 2
  %1654 = sub i32 %1647, %1652
  %1655 = sub i32 %1648, %1653
  %1656 = lshr i32 %1654, 1
  %1657 = lshr i32 %1655, 1
  %1658 = sub i32 %1080, %1656
  %1659 = sub i32 %1081, %1657
  %1660 = lshr i32 %1658, 2
  %1661 = lshr i32 %1659, 2
  %1662 = icmp ult i32 %1660, %1649
  %1663 = icmp ult i32 %1661, %1650
  %1664 = and i1 %1662, %1663
  br i1 %1664, label %1665, label %1679

; <label>:1665                                    ; preds = %1637
  %1666 = mul nuw i32 %1650, 3
  %1667 = add i32 %1661, %1666
  %1668 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 362)  ; CBufferLoadLegacy(handle,regIndex)
  %1669 = extractvalue %dx.types.CBufRet.i32 %1668, 2
  %1670 = and i32 %1669, 1
  %1671 = icmp ne i32 %1670, 0
  %1672 = sitofp i32 %1667 to float
  %1673 = fadd fast float %1646, -1.000000e+00
  %1674 = fcmp fast une float %1672, %1673
  %1675 = and i1 %1671, %1674
  br i1 %1675, label %1676, label %1679

; <label>:1676                                    ; preds = %1665
  %1677 = add nuw i32 %1660, %1651
  %1678 = call %dx.types.Handle @"dx.op.createHandleForLib.class.RWTexture2D<vector<float, 4> >"(i32 160, %"class.RWTexture2D<vector<float, 4> >" %16)  ; CreateHandleForLib(Resource)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1678, i32 %1677, i32 %1667, i32 undef, float %1641, float %1642, float %1643, float 1.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %1679

; <label>:1679                                    ; preds = %1676, %1665, %1637, %0
  ret void
}

; Function Attrs: nounwind
define void @"\01?Visibility_Miss@@YAXUVisibilityPayload@@@Z"(%struct.VisibilityPayload* noalias nocapture %payload) #0 {
  %1 = getelementptr inbounds %struct.VisibilityPayload, %struct.VisibilityPayload* %payload, i32 0, i32 0
  store float 1.000000e+06, float* %1, align 4
  ret void
}

; Function Attrs: nounwind
define void @"\01?Visibility_ClosestHit@@YAXUVisibilityPayload@@UBuiltInTriangleIntersectionAttributes@@@Z"(%struct.VisibilityPayload* noalias nocapture %payload, %struct.BuiltInTriangleIntersectionAttributes* nocapture readonly %attr) #0 {
  %1 = call float @dx.op.rayTCurrent.f32(i32 154)  ; RayTCurrent()
  %2 = getelementptr inbounds %struct.VisibilityPayload, %struct.VisibilityPayload* %payload, i32 0, i32 0
  store float %1, float* %2, align 4, !tbaa !60
  %3 = call i32 @dx.op.instanceID.i32(i32 141)  ; InstanceID()
  %4 = getelementptr inbounds %struct.VisibilityPayload, %struct.VisibilityPayload* %payload, i32 0, i32 1
  store i32 %3, i32* %4, align 4, !tbaa !64
  %5 = call i32 @dx.op.instanceIndex.i32(i32 142)  ; InstanceIndex()
  %6 = shl i32 %5, 16
  %7 = call i32 @dx.op.geometryIndex.i32(i32 213)  ; GeometryIndex()
  %8 = and i32 %7, 65535
  %9 = getelementptr inbounds %struct.VisibilityPayload, %struct.VisibilityPayload* %payload, i32 0, i32 2
  %10 = or i32 %8, %6
  store i32 %10, i32* %9, align 4, !tbaa !64
  %11 = call i32 @dx.op.primitiveIndex.i32(i32 161)  ; PrimitiveIndex()
  %12 = getelementptr inbounds %struct.VisibilityPayload, %struct.VisibilityPayload* %payload, i32 0, i32 3
  store i32 %11, i32* %12, align 4, !tbaa !64
  %13 = getelementptr inbounds %struct.BuiltInTriangleIntersectionAttributes, %struct.BuiltInTriangleIntersectionAttributes* %attr, i32 0, i32 0
  %14 = load <2 x float>, <2 x float>* %13, align 4, !tbaa !66
  %15 = getelementptr inbounds %struct.VisibilityPayload, %struct.VisibilityPayload* %payload, i32 0, i32 4
  store <2 x float> %14, <2 x float>* %15, align 4, !tbaa !66
  ret void
}

; Function Attrs: nounwind readnone
declare float @dx.op.binary.f32(i32, float, float) #1

; Function Attrs: nounwind readnone
declare float @dx.op.legacyF16ToF32(i32, i32) #1

; Function Attrs: nounwind readnone
declare float @dx.op.unary.f32(i32, float) #1

; Function Attrs: nounwind readnone
declare float @dx.op.dot3.f32(i32, float, float, float, float, float, float) #1

; Function Attrs: nounwind
declare void @dx.op.textureStore.f32(i32, %dx.types.Handle, i32, i32, i32, float, float, float, float, i8) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.i32 @dx.op.rawBufferLoad.i32(i32, %dx.types.Handle, i32, i32, i8, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.rawBufferLoad.f32(i32, %dx.types.Handle, i32, i32, i8, i32) #2

; Function Attrs: nounwind readnone
declare i32 @dx.op.dispatchRaysIndex.i32(i32, i8) #1

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32) #2

; Function Attrs: nounwind
declare void @dx.op.traceRay.struct.VisibilityPayload(i32, %dx.types.Handle, i32, i32, i32, i32, i32, float, float, float, float, float, float, float, float, %struct.VisibilityPayload*) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32) #2

; Function Attrs: nounwind readonly
declare float @dx.op.rayTCurrent.f32(i32) #2

; Function Attrs: nounwind readnone
declare i32 @dx.op.primitiveIndex.i32(i32) #1

; Function Attrs: nounwind readnone
declare i32 @dx.op.geometryIndex.i32(i32) #1

; Function Attrs: nounwind readnone
declare i32 @dx.op.instanceIndex.i32(i32) #1

; Function Attrs: nounwind readnone
declare i32 @dx.op.instanceID.i32(i32) #1

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32, %dx.types.Handle, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32, %dx.types.Handle, i32) #2

; Function Attrs: nounwind readnone
declare float @dx.op.tertiary.f32(i32, float, float, float) #1

; Function Attrs: nounwind readonly
declare %dx.types.Handle @dx.op.createHandleForLib.BvhConstants_decl(i32, %BvhConstants_decl) #2

; Function Attrs: nounwind readonly
declare %dx.types.Handle @"dx.op.createHandleForLib.class.Texture2D<float>"(i32, %"class.Texture2D<float>") #2

; Function Attrs: nounwind readonly
declare %dx.types.Handle @"dx.op.createHandleForLib.class.RWTexture2D<vector<float, 4> >"(i32, %"class.RWTexture2D<vector<float, 4> >") #2

; Function Attrs: nounwind readonly
declare %dx.types.Handle @dx.op.createHandleForLib.struct.ByteAddressBuffer(i32, %struct.ByteAddressBuffer) #2

; Function Attrs: nounwind readonly
declare %dx.types.Handle @dx.op.createHandleForLib.struct.RaytracingAccelerationStructure(i32, %struct.RaytracingAccelerationStructure) #2

; Function Attrs: nounwind readonly
declare %dx.types.Handle @"dx.op.createHandleForLib.class.Texture2D<unsigned int>"(i32, %"class.Texture2D<unsigned int>") #2

; Function Attrs: nounwind readonly
declare %dx.types.Handle @dx.op.createHandleForLib.hostlayout.scene(i32, %hostlayout.scene) #2

attributes #0 = { nounwind }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind readonly }

!llvm.ident = !{!0}
!dx.version = !{!1}
!dx.valver = !{!2}
!dx.shaderModel = !{!3}
!dx.resources = !{!4}
!dx.typeAnnotations = !{!30}
!dx.entryPoints = !{!38, !40, !43, !45}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 5}
!2 = !{i32 1, i32 6}
!3 = !{!"lib", i32 6, i32 5}
!4 = !{!5, !25, !27, null}
!5 = !{!6, !8, !10, !11, !12, !13, !14, !15, !17, !18, !19, !20, !21, !22, !23, !24}
!6 = !{i32 0, %struct.RaytracingAccelerationStructure* @"\01?tlas@@3URaytracingAccelerationStructure@@A", !"tlas", i32 0, i32 21, i32 1, i32 16, i32 0, !7}
!7 = !{i32 0, i32 4}
!8 = !{i32 1, %"class.Texture2D<float>"* @"\01?texDepth@@3V?$Texture2D@M@@A", !"texDepth", i32 0, i32 0, i32 1, i32 2, i32 0, !9}
!9 = !{i32 0, i32 9}
!10 = !{i32 2, %struct.ByteAddressBuffer* @"\01?inSurfBoundsBuffer@@3UByteAddressBuffer@@A", !"inSurfBoundsBuffer", i32 0, i32 8, i32 1, i32 11, i32 0, null}
!11 = !{i32 3, %struct.ByteAddressBuffer* @"\01?inGeometryDescriptor@@3UByteAddressBuffer@@A", !"inGeometryDescriptor", i32 0, i32 10, i32 1, i32 11, i32 0, null}
!12 = !{i32 4, %struct.ByteAddressBuffer* @"\01?inBlasIndirection@@3UByteAddressBuffer@@A", !"inBlasIndirection", i32 0, i32 22, i32 1, i32 11, i32 0, null}
!13 = !{i32 5, %struct.ByteAddressBuffer* @"\01?inInstanceDescriptor@@3UByteAddressBuffer@@A", !"inInstanceDescriptor", i32 0, i32 16, i32 1, i32 11, i32 0, null}
!14 = !{i32 6, %struct.ByteAddressBuffer* @"\01?inSmodelTransformsBuffer@@3UByteAddressBuffer@@A", !"inSmodelTransformsBuffer", i32 0, i32 11, i32 1, i32 11, i32 0, null}
!15 = !{i32 7, %"class.Texture2D<unsigned int>"* @"\01?triIDTexture@@3V?$Texture2D@I@@A", !"triIDTexture", i32 0, i32 12, i32 1, i32 2, i32 0, !16}
!16 = !{i32 0, i32 5}
!17 = !{i32 8, %struct.ByteAddressBuffer* @"\01?skinnedCacheBuffer@@3UByteAddressBuffer@@A", !"skinnedCacheBuffer", i32 0, i32 14, i32 1, i32 11, i32 0, null}
!18 = !{i32 9, %struct.ByteAddressBuffer* @"\01?inBspSurfDataBuffer@@3UByteAddressBuffer@@A", !"inBspSurfDataBuffer", i32 0, i32 15, i32 1, i32 11, i32 0, null}
!19 = !{i32 10, %struct.ByteAddressBuffer* @"\01?xsurfUGBDataBuffer@@3UByteAddressBuffer@@A", !"xsurfUGBDataBuffer", i32 0, i32 17, i32 1, i32 11, i32 0, null}
!20 = !{i32 11, %struct.ByteAddressBuffer* @"\01?smodelSurfUGBIndirection@@3UByteAddressBuffer@@A", !"smodelSurfUGBIndirection", i32 0, i32 19, i32 1, i32 11, i32 0, null}
!21 = !{i32 12, %struct.ByteAddressBuffer* @"\01?inVerts@@3UByteAddressBuffer@@A", !"inVerts", i32 0, i32 2, i32 1, i32 11, i32 0, null}
!22 = !{i32 13, %struct.ByteAddressBuffer* @"\01?vtxVirtPageTable@@3UByteAddressBuffer@@A", !"vtxVirtPageTable", i32 0, i32 3, i32 1, i32 11, i32 0, null}
!23 = !{i32 14, %struct.ByteAddressBuffer* @"\01?unifiedIndexBuffer@@3UByteAddressBuffer@@A", !"unifiedIndexBuffer", i32 0, i32 4, i32 1, i32 11, i32 0, null}
!24 = !{i32 15, %struct.ByteAddressBuffer* @"\01?uibVirtPageTable@@3UByteAddressBuffer@@A", !"uibVirtPageTable", i32 0, i32 5, i32 1, i32 11, i32 0, null}
!25 = !{!26}
!26 = !{i32 0, %"class.RWTexture2D<vector<float, 4> >"* @"\01?debugUavTexture@@3V?$RWTexture2D@V?$vector@M$03@@@@A", !"debugUavTexture", i32 0, i32 4, i32 1, i32 2, i1 false, i1 false, i1 false, !9}
!27 = !{!28, !29}
!28 = !{i32 0, %hostlayout.scene* @scene_legacy, !"scene", i32 0, i32 3, i32 1, i32 11728, null}
!29 = !{i32 1, %BvhConstants_decl* @BvhConstants_decl, !"BvhConstants_decl", i32 0, i32 0, i32 1, i32 16, null}
!30 = !{i32 1, void ()* @"\01?Raygen@@YAXXZ", !31, void (%struct.VisibilityPayload*)* @"\01?Visibility_Miss@@YAXUVisibilityPayload@@@Z", !34, void (%struct.VisibilityPayload*, %struct.BuiltInTriangleIntersectionAttributes*)* @"\01?Visibility_ClosestHit@@YAXUVisibilityPayload@@UBuiltInTriangleIntersectionAttributes@@@Z", !36}
!31 = !{!32}
!32 = !{i32 1, !33, !33}
!33 = !{}
!34 = !{!32, !35}
!35 = !{i32 2, !33, !33}
!36 = !{!32, !35, !37}
!37 = !{i32 0, !33, !33}
!38 = !{null, !"", null, !4, !39}
!39 = !{i32 0, i64 33619984}
!40 = !{void ()* @"\01?Raygen@@YAXXZ", !"\01?Raygen@@YAXXZ", null, null, !41}
!41 = !{i32 8, i32 7, i32 5, !42}
!42 = !{i32 0}
!43 = !{void (%struct.VisibilityPayload*, %struct.BuiltInTriangleIntersectionAttributes*)* @"\01?Visibility_ClosestHit@@YAXUVisibilityPayload@@UBuiltInTriangleIntersectionAttributes@@@Z", !"\01?Visibility_ClosestHit@@YAXUVisibilityPayload@@UBuiltInTriangleIntersectionAttributes@@@Z", null, null, !44}
!44 = !{i32 8, i32 10, i32 6, i32 24, i32 7, i32 8, i32 5, !42}
!45 = !{void (%struct.VisibilityPayload*)* @"\01?Visibility_Miss@@YAXUVisibilityPayload@@@Z", !"\01?Visibility_Miss@@YAXUVisibilityPayload@@@Z", null, null, !46}
!46 = !{i32 8, i32 11, i32 6, i32 24, i32 5, !42}
!47 = !{!48}
!48 = distinct !{!48, !49, !"\01?BindlessGeometry_GetPackedTri@@YA?AUBindlessGeometryPackedTri@@UBindlessGeometryInput@@UByteAddressBuffer@@@Z: %agg.result"}
!49 = distinct !{!49, !"\01?BindlessGeometry_GetPackedTri@@YA?AUBindlessGeometryPackedTri@@UBindlessGeometryInput@@UByteAddressBuffer@@@Z"}
!50 = !{!51, !48}
!51 = distinct !{!51, !52, !"\01?UGB_SetupMeshletUnpackingBuffers@@YA?BUUGB_MeshletUnpackingBuffers@@UByteAddressBuffer@@00@Z: %agg.result"}
!52 = distinct !{!52, !"\01?UGB_SetupMeshletUnpackingBuffers@@YA?BUUGB_MeshletUnpackingBuffers@@UByteAddressBuffer@@00@Z"}
!53 = !{!54}
!54 = distinct !{!54, !55, !"\01?BindlessGeometry_GetInputFromDXR@@YA?AUBindlessGeometryInput@@IIIIUByteAddressBuffer@@000V?$StructuredBuffer@UGfxWorldDrawOffsets@@@@00000@Z: %agg.result"}
!55 = distinct !{!55, !"\01?BindlessGeometry_GetInputFromDXR@@YA?AUBindlessGeometryInput@@IIIIUByteAddressBuffer@@000V?$StructuredBuffer@UGfxWorldDrawOffsets@@@@00000@Z"}
!56 = !{!57, !54}
!57 = distinct !{!57, !58, !"\01?UnpackXSurfUGBData@@YA?AUXSurfUGBData@@IUByteAddressBuffer@@0@Z: %agg.result"}
!58 = distinct !{!58, !"\01?UnpackXSurfUGBData@@YA?AUXSurfUGBData@@IUByteAddressBuffer@@0@Z"}
!59 = !{i32 1}
!60 = !{!61, !61, i64 0}
!61 = !{!"float", !62, i64 0}
!62 = !{!"omnipotent char", !63, i64 0}
!63 = !{!"Simple C/C++ TBAA"}
!64 = !{!65, !65, i64 0}
!65 = !{!"int", !62, i64 0}
!66 = !{!62, !62, i64 0}

