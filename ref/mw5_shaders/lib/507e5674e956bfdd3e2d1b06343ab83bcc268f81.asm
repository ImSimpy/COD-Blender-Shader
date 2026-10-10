;
; Note: shader requires additional functionality:
;       UAVs at every shader stage
;       Typed UAV Load Additional Formats
;       Raytracing tier 1.1 features
;
; shader hash: c139b16d455b4bf29874129e27a3300b
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
; cbuffer PathTracerConstants_decl
; {
;
;   [80 x i8] (type annotation not present)
;
; }
;
;
; Resource Bindings:
;
; Name                                 Type  Format         Dim      ID      HLSL Bind  Count
; ------------------------------ ---------- ------- ----------- ------- -------------- ------
; scene                             cbuffer      NA          NA     CB0            cb3     1
; PathTracerConstants_decl          cbuffer      NA          NA     CB1            cb0     1
; samplerArray                      sampler      NA          NA      S0             s7     4
; bilinearClampSampler              sampler      NA          NA      S1             s2     1
; globalTexture2DHalfTable          texture     f32          2d      T0      t0,space3unbounded
; globalTexture2DFloatTable         texture     f32          2d      T1      t0,space4unbounded
; g_lightConstants                  texture    byte         r/o      T2            t19     1
; tlas                              texture     i32         ras      T3             t0     1
; texDepth                          texture     f32          2d      T4             t1     1
; bufBlasIndirection                texture    byte         r/o      T5             t3     1
; bufGeometryDescriptors            texture    byte         r/o      T6             t4     1
; bufInstanceDescriptors            texture    byte         r/o      T7             t5     1
; skinnedCacheBuffer                texture    byte         r/o      T8            t12     1
; bufMaterialConstants              texture    byte         r/o      T9            t13     1
; inBspSurfDataBuffer               texture    byte         r/o     T10            t14     1
; xsurfUGBDataBuffer                texture    byte         r/o     T11            t16     1
; smodelSurfUGBIndirection          texture    byte         r/o     T12            t20     1
; inSurfBoundsBuffer                texture    byte         r/o     T13            t18     1
; instanceDataBuffer                texture    byte         r/o     T14            t21     1
; inVerts                           texture    byte         r/o     T15             t6     1
; vtxVirtPageTable                  texture    byte         r/o     T16             t7     1
; unifiedIndexBuffer                texture    byte         r/o     T17             t8     1
; uibVirtPageTable                  texture    byte         r/o     T18            t10     1
; envBrdfLutTexture                 texture     f32          2d     T19            t22     1
; texOutput0                            UAV     f32          2d      U0             u0     1
; texOutput1                            UAV     f32          2d      U1             u1     1
; texOutput4                            UAV     u32          2d      U2             u5     1
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%struct.SamplerState = type { i32 }
%"class.Texture2D<vector<float, 4> >" = type { <4 x float>, %"class.Texture2D<vector<float, 4> >::mips_type" }
%"class.Texture2D<vector<float, 4> >::mips_type" = type { i32 }
%struct.ByteAddressBuffer = type { i32 }
%"class.RWTexture2D<vector<float, 3> >" = type { <3 x float> }
%"class.RWTexture2D<vector<float, 4> >" = type { <4 x float> }
%"class.RWTexture2D<vector<unsigned int, 4> >" = type { <4 x i32> }
%struct.RaytracingAccelerationStructure = type { i32 }
%"class.Texture2D<float>" = type { float, %"class.Texture2D<float>::mips_type" }
%"class.Texture2D<float>::mips_type" = type { i32 }
%PathTracerConstants_decl = type { %struct.PathTracerConstants }
%struct.PathTracerConstants = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, float, float, i32, i32, i32, i32, i32, i32, i32, i32 }
%hostlayout.scene = type { %hostlayout.struct.GfxCodeSceneConsts }
%hostlayout.struct.GfxCodeSceneConsts = type { <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <3 x float>, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x i32>, <4 x i32>, <4 x float>, float, float, float, float, i32, i32, float, float, <2 x i32>, <2 x i32>, <2 x float>, <2 x float>, <3 x float>, i32, <3 x float>, float, <3 x float>, float, <2 x float>, <2 x float>, <3 x float>, float, <3 x float>, float, float, float, float, float, <3 x float>, float, i32, float, float, float, <4 x float>, <3 x float>, float, float, float, float, float, <4 x float>, float, float, float, float, i32, i32, i32, float, <4 x float>, i32, i32, i32, i32, i32, i32, i32, i32, <2 x i32>, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, [2 x <4 x i32>], [3 x <2 x float>], i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <2 x float>, <2 x float>, <4 x float>, <4 x i32>, <4 x float>, i32, float, float, float, i32, i32, i32, i32, <2 x float>, <2 x float>, <2 x float>, <2 x float>, i32, i32, <2 x float>, <2 x float>, <2 x float>, <3 x float>, i32, i32, i32, i32, i32, <4 x i32>, <4 x i32>, <4 x i32>, <4 x float>, i32, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <3 x float>, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], <4 x float>, [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], i32, i32, float, i32, <2 x float>, float, float, float, float, float, i32, <3 x float>, float, float, float, float, float, <3 x float>, float, <3 x float>, float, <3 x float>, float, float, float, float, float, <2 x float>, <2 x float>, float, float, float, float, <3 x float>, float, <2 x float>, i32, i32, <3 x float>, float, float, float, float, float, float, float, float, float, [4 x <3 x float>], i32, [4 x <3 x float>], i32, [4 x <3 x float>], i32, <4 x i32>, <2 x float>, <2 x float>, <2 x float>, i32, i32, float, float, float, float, <4 x float>, <4 x i32>, <4 x float>, <4 x float>, <4 x float>, i32, i32, i32, i32, <4 x float>, i32, float, float, i32, i32, float, float, i32, i32, float, float, i32, i32, float, float, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, float, float, float, float, i32, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, i32, i32, i32, float, <4 x float>, <4 x float>, <4 x float>, <4 x float>, i32, i32, i32, float, <4 x float>, float, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x i32>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [8 x <4 x float>], [8 x <4 x float>], <4 x float>, <3 x float>, i32, <2 x float>, float, float, float, float, float, float, <2 x float>, <2 x float>, <2 x float>, <2 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <2 x float>, float, float, <4 x float>, i32, i32, i32, i32, <3 x float>, i32, <4 x i32>, <4 x i32>, <2 x float>, <2 x i32>, <4 x float>, <4 x float>, <2 x float>, <2 x float>, [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, float, i32, i32, i32, i32, i32, float, float, <2 x float>, <2 x float>, float, float, float, float, i32, float, float, float, float, float, float, float, float, float, float, float, float, i32, i32, i32, float, float, float, i32, <2 x i32>, <2 x i32>, <4 x i32>, float, float, float, float, <4 x float>, <4 x float>, <2 x float>, <2 x float>, <4 x float>, <4 x float>, float, float, float, float, <4 x float>, float, float, float, float, i32, i32, float, float, <4 x float>, <2 x float>, <2 x float>, i32, i32, float, float, [4 x <4 x float>], float, float, float, float, float, float, float, float, i32, i32, i32, float, <4 x float>, <4 x float>, i32, i32, i32, i32, <2 x i32>, <2 x i32>, [2 x <4 x i32>], i32, float, float, float, i32, float, float, i32, <2 x i32>, <2 x float>, float, float, float, i32, %struct.GfxWeatherData, %hostlayout.struct.GfxVolumetricData, %struct.GfxFogRaymarchingData, %struct.GfxEnvironmentalFogData, %struct.GfxShallowWaterData, %struct.GfxGroundDeformationData, %struct.GfxSplinedModelGlobals }
%struct.GfxWeatherData = type { i32, i32, i32, i32, float, float, float, float, float, float, i32, i32, float, float, float, float, i32, i32, i32, i32, float, float, float, float, float, i32, i32, i32, i32, i32, i32, i32, <3 x float>, i32, <3 x float>, i32, i32, float, i32, i32, float, float, float, float }
%hostlayout.struct.GfxVolumetricData = type { [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <2 x float>, <2 x float>, <2 x float>, <2 x float>, <3 x i32>, i32, <3 x float>, i32, <4 x float>, <3 x float>, i32, i32, float, float, float, i32, i32, i32, float, <4 x float>, float, float, i32, i32, <3 x float>, i32, <3 x float>, float, <3 x float>, float, <2 x float>, float, float, <3 x float>, float, <3 x float>, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, <3 x float>, float, i32, float, float, float, <3 x float>, float, <2 x float>, <2 x float>, <3 x float>, float, i32, float, float, float, float, float, float, float, i32, i32, float, float, <3 x float>, float, i32, i32, <2 x float> }
%struct.GfxFogRaymarchingData = type { <2 x float>, <2 x float>, float, float, float, float, float, float, float, float, float, float, float, float, <2 x float>, <2 x float>, <3 x float>, float }
%struct.GfxEnvironmentalFogData = type { float, float, float, i32 }
%struct.GfxShallowWaterData = type { i32, i32, i32, i32, float, float, float, float, <2 x float>, <2 x float>, float, float, float, float, <3 x float>, float, float, float, float, float, float, float, float, float, i32, float, float, float, float, float, float, float, float, float, float, float, i32, float, float, float, float, i32, i32, i32 }
%struct.GfxGroundDeformationData = type { <2 x float>, <2 x float>, float, float, float, float, float, float, float, float, float, float, float, float, float, float, i32, i32 }
%struct.GfxSplinedModelGlobals = type { [64 x <4 x float>], [64 x <4 x float>], [16 x <4 x float>], [32 x <4 x float>], [64 x <4 x float>], [16 x <4 x float>], [16 x <4 x float>], float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float }
%struct.Payload = type { float, i32, i32, i32, <2 x float> }
%dx.types.Handle = type { i8* }
%dx.types.CBufRet.i32 = type { i32, i32, i32, i32 }
%dx.types.CBufRet.f32 = type { float, float, float, float }
%dx.types.ResRet.i32 = type { i32, i32, i32, i32, i32 }
%dx.types.ResRet.f32 = type { float, float, float, float, i32 }
%dx.types.Dimensions = type { i32, i32, i32, i32 }
%struct.BuiltInTriangleIntersectionAttributes = type { <2 x float> }

@"\01?samplerArray@@3PAUSamplerState@@A" = external constant [4 x %struct.SamplerState], align 4
@"\01?bilinearClampSampler@@3USamplerState@@A" = external constant %struct.SamplerState, align 4
@"\01?globalTexture2DHalfTable@@3PAV?$Texture2D@V?$vector@M$03@@@@A" = external constant [0 x %"class.Texture2D<vector<float, 4> >"], align 4
@"\01?globalTexture2DFloatTable@@3PAV?$Texture2D@V?$vector@M$03@@@@A" = external constant [0 x %"class.Texture2D<vector<float, 4> >"], align 4
@"\01?g_lightConstants@@3UByteAddressBuffer@@A" = external constant %struct.ByteAddressBuffer, align 4
@"\01?texOutput0@@3V?$RWTexture2D@V?$vector@M$02@@@@A" = external constant %"class.RWTexture2D<vector<float, 3> >", align 4
@"\01?texOutput1@@3V?$RWTexture2D@V?$vector@M$03@@@@A" = external constant %"class.RWTexture2D<vector<float, 4> >", align 4
@"\01?texOutput4@@3V?$RWTexture2D@V?$vector@I$03@@@@A" = external constant %"class.RWTexture2D<vector<unsigned int, 4> >", align 4
@"\01?tlas@@3URaytracingAccelerationStructure@@A" = external constant %struct.RaytracingAccelerationStructure, align 4
@"\01?texDepth@@3V?$Texture2D@M@@A" = external constant %"class.Texture2D<float>", align 4
@"\01?bufBlasIndirection@@3UByteAddressBuffer@@A" = external constant %struct.ByteAddressBuffer, align 4
@"\01?bufGeometryDescriptors@@3UByteAddressBuffer@@A" = external constant %struct.ByteAddressBuffer, align 4
@"\01?bufInstanceDescriptors@@3UByteAddressBuffer@@A" = external constant %struct.ByteAddressBuffer, align 4
@"\01?skinnedCacheBuffer@@3UByteAddressBuffer@@A" = external constant %struct.ByteAddressBuffer, align 4
@"\01?bufMaterialConstants@@3UByteAddressBuffer@@A" = external constant %struct.ByteAddressBuffer, align 4
@"\01?inBspSurfDataBuffer@@3UByteAddressBuffer@@A" = external constant %struct.ByteAddressBuffer, align 4
@"\01?xsurfUGBDataBuffer@@3UByteAddressBuffer@@A" = external constant %struct.ByteAddressBuffer, align 4
@"\01?smodelSurfUGBIndirection@@3UByteAddressBuffer@@A" = external constant %struct.ByteAddressBuffer, align 4
@"\01?inSurfBoundsBuffer@@3UByteAddressBuffer@@A" = external constant %struct.ByteAddressBuffer, align 4
@"\01?instanceDataBuffer@@3UByteAddressBuffer@@A" = external constant %struct.ByteAddressBuffer, align 4
@"\01?inVerts@@3UByteAddressBuffer@@A" = external constant %struct.ByteAddressBuffer, align 4
@"\01?vtxVirtPageTable@@3UByteAddressBuffer@@A" = external constant %struct.ByteAddressBuffer, align 4
@"\01?unifiedIndexBuffer@@3UByteAddressBuffer@@A" = external constant %struct.ByteAddressBuffer, align 4
@"\01?uibVirtPageTable@@3UByteAddressBuffer@@A" = external constant %struct.ByteAddressBuffer, align 4
@"\01?envBrdfLutTexture@@3V?$Texture2D@V?$vector@M$03@@@@A" = external constant %"class.Texture2D<vector<float, 4> >", align 4
@llvm.global_ctors = appending global [0 x { i32, void ()*, i8* }] zeroinitializer
@PathTracerConstants_decl = external constant %PathTracerConstants_decl
@scene_legacy = external global %hostlayout.scene

; Function Attrs: nounwind
define void @"\01?Raygen@@YAXXZ"() #0 {
  %1 = load %struct.SamplerState, %struct.SamplerState* @"\01?bilinearClampSampler@@3USamplerState@@A", align 4, !noalias !56
  %2 = load %"class.Texture2D<vector<float, 4> >", %"class.Texture2D<vector<float, 4> >"* @"\01?envBrdfLutTexture@@3V?$Texture2D@V?$vector@M$03@@@@A", align 4, !noalias !56
  %3 = load %struct.ByteAddressBuffer, %struct.ByteAddressBuffer* @"\01?uibVirtPageTable@@3UByteAddressBuffer@@A", align 4, !noalias !60
  %4 = load %struct.ByteAddressBuffer, %struct.ByteAddressBuffer* @"\01?unifiedIndexBuffer@@3UByteAddressBuffer@@A", align 4, !noalias !65
  %5 = load %struct.ByteAddressBuffer, %struct.ByteAddressBuffer* @"\01?vtxVirtPageTable@@3UByteAddressBuffer@@A", align 4, !noalias !60
  %6 = load %struct.ByteAddressBuffer, %struct.ByteAddressBuffer* @"\01?inVerts@@3UByteAddressBuffer@@A", align 4, !noalias !60
  %7 = load %struct.ByteAddressBuffer, %struct.ByteAddressBuffer* @"\01?instanceDataBuffer@@3UByteAddressBuffer@@A", align 4, !noalias !68
  %8 = load %struct.ByteAddressBuffer, %struct.ByteAddressBuffer* @"\01?inSurfBoundsBuffer@@3UByteAddressBuffer@@A", align 4, !noalias !68
  %9 = load %struct.ByteAddressBuffer, %struct.ByteAddressBuffer* @"\01?smodelSurfUGBIndirection@@3UByteAddressBuffer@@A", align 4, !noalias !68
  %10 = load %struct.ByteAddressBuffer, %struct.ByteAddressBuffer* @"\01?xsurfUGBDataBuffer@@3UByteAddressBuffer@@A", align 4, !noalias !71
  %11 = load %struct.ByteAddressBuffer, %struct.ByteAddressBuffer* @"\01?inBspSurfDataBuffer@@3UByteAddressBuffer@@A", align 4, !noalias !68
  %12 = load %struct.ByteAddressBuffer, %struct.ByteAddressBuffer* @"\01?bufMaterialConstants@@3UByteAddressBuffer@@A", align 4, !noalias !74
  %13 = load %struct.ByteAddressBuffer, %struct.ByteAddressBuffer* @"\01?skinnedCacheBuffer@@3UByteAddressBuffer@@A", align 4, !noalias !60
  %14 = load %struct.ByteAddressBuffer, %struct.ByteAddressBuffer* @"\01?bufInstanceDescriptors@@3UByteAddressBuffer@@A", align 4, !noalias !68
  %15 = load %struct.ByteAddressBuffer, %struct.ByteAddressBuffer* @"\01?bufGeometryDescriptors@@3UByteAddressBuffer@@A", align 4, !noalias !68
  %16 = load %struct.ByteAddressBuffer, %struct.ByteAddressBuffer* @"\01?bufBlasIndirection@@3UByteAddressBuffer@@A", align 4, !noalias !68
  %17 = load %"class.Texture2D<float>", %"class.Texture2D<float>"* @"\01?texDepth@@3V?$Texture2D@M@@A", align 4
  %18 = load %struct.RaytracingAccelerationStructure, %struct.RaytracingAccelerationStructure* @"\01?tlas@@3URaytracingAccelerationStructure@@A", align 4, !noalias !81
  %19 = load %struct.ByteAddressBuffer, %struct.ByteAddressBuffer* @"\01?g_lightConstants@@3UByteAddressBuffer@@A", align 4, !noalias !88
  %20 = load %"class.RWTexture2D<vector<unsigned int, 4> >", %"class.RWTexture2D<vector<unsigned int, 4> >"* @"\01?texOutput4@@3V?$RWTexture2D@V?$vector@I$03@@@@A", align 4
  %21 = load %"class.RWTexture2D<vector<float, 4> >", %"class.RWTexture2D<vector<float, 4> >"* @"\01?texOutput1@@3V?$RWTexture2D@V?$vector@M$03@@@@A", align 4
  %22 = load %"class.RWTexture2D<vector<float, 3> >", %"class.RWTexture2D<vector<float, 3> >"* @"\01?texOutput0@@3V?$RWTexture2D@V?$vector@M$02@@@@A", align 4
  %23 = load %PathTracerConstants_decl, %PathTracerConstants_decl* @PathTracerConstants_decl, align 4
  %24 = load %hostlayout.scene, %hostlayout.scene* @scene_legacy
  %25 = alloca [4 x float], align 4
  %26 = alloca [4 x float], align 4
  %27 = alloca [4 x float], align 4
  %28 = alloca [4 x float], align 4
  %29 = alloca [4 x float], align 4
  %30 = alloca [4 x float], align 4
  %31 = alloca [8 x float], align 4
  %32 = alloca [12 x float], align 4
  %33 = alloca [4 x float], align 4
  %34 = alloca [24 x float], align 4
  %35 = alloca [9 x i32], align 4
  %36 = alloca [3 x i32], align 4
  %37 = alloca [4 x float], align 4
  %38 = alloca [36 x float], align 4
  %39 = alloca %struct.Payload, align 8
  %40 = alloca %struct.Payload, align 8
  %41 = alloca %struct.Payload, align 8
  %42 = call %dx.types.Handle @dx.op.createHandleForLib.PathTracerConstants_decl(i32 160, %PathTracerConstants_decl %23)  ; CreateHandleForLib(Resource)
  %43 = call %dx.types.Handle @dx.op.createHandleForLib.hostlayout.scene(i32 160, %hostlayout.scene %24)  ; CreateHandleForLib(Resource)
  %44 = load %struct.SamplerState, %struct.SamplerState* getelementptr inbounds ([4 x %struct.SamplerState], [4 x %struct.SamplerState]* @"\01?samplerArray@@3PAUSamplerState@@A", i32 0, i32 1), align 4
  %45 = load %struct.SamplerState, %struct.SamplerState* getelementptr inbounds ([4 x %struct.SamplerState], [4 x %struct.SamplerState]* @"\01?samplerArray@@3PAUSamplerState@@A", i32 0, i32 3), align 4
  %46 = call i32 @dx.op.dispatchRaysIndex.i32(i32 145, i8 0)  ; DispatchRaysIndex(col)
  %47 = call i32 @dx.op.dispatchRaysIndex.i32(i32 145, i8 1)  ; DispatchRaysIndex(col)
  %48 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %43, i32 361)  ; CBufferLoadLegacy(handle,regIndex)
  %49 = extractvalue %dx.types.CBufRet.i32 %48, 2
  %50 = icmp eq i32 %49, 0
  %51 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %52 = extractvalue %dx.types.CBufRet.i32 %51, 0
  %53 = icmp eq i32 %52, 0
  %54 = or i1 %50, %53
  %55 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %56 = extractvalue %dx.types.CBufRet.i32 %55, 2
  %57 = extractvalue %dx.types.CBufRet.i32 %55, 3
  %58 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %59 = extractvalue %dx.types.CBufRet.i32 %58, 0
  %60 = extractvalue %dx.types.CBufRet.i32 %58, 2
  %61 = extractvalue %dx.types.CBufRet.i32 %58, 1
  %62 = extractvalue %dx.types.CBufRet.i32 %58, 3
  %63 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %64 = extractvalue %dx.types.CBufRet.i32 %63, 0
  %65 = icmp ne i32 %64, 0
  %66 = zext i1 %65 to i32
  %67 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %68 = extractvalue %dx.types.CBufRet.f32 %67, 2
  %69 = fcmp fast oge float %68, 0.000000e+00
  %70 = select i1 %69, float %68, float 9.999990e+05
  %71 = extractvalue %dx.types.CBufRet.f32 %67, 3
  %72 = fcmp fast oge float %71, 0.000000e+00
  %73 = select i1 %72, float %71, float 9.999990e+05
  %74 = extractvalue %dx.types.CBufRet.i32 %63, 1
  %75 = icmp ne i32 %74, 0
  %76 = select i1 %75, i32 0, i32 %61
  %77 = select i1 %75, i32 0, i32 %62
  %78 = select i1 %75, i32 1, i32 %66
  %79 = select i1 %75, float 2.500000e+01, float %70
  %80 = select i1 %75, float 5.000000e+00, float %73
  %81 = or i1 %50, %53
  %82 = xor i1 %81, true
  %83 = icmp ne i32 %52, 0
  %84 = and i1 %83, %82
  %85 = extractvalue %dx.types.CBufRet.i32 %51, 1
  %86 = icmp ne i32 %85, 0
  %87 = and i1 %84, %86
  br i1 %87, label %88, label %98

; <label>:88                                      ; preds = %0
  %89 = mul nsw i32 %57, %56
  %90 = extractvalue %dx.types.CBufRet.i32 %51, 2
  %91 = mul i32 %89, %90
  %92 = add nsw i32 %91, -1
  %93 = call i32 @dx.op.binary.i32(i32 37, i32 1, i32 %92)  ; IMax(a,b)
  %94 = lshr i32 %46, 3
  %95 = add i32 %49, %94
  %96 = urem i32 %95, %93
  %97 = icmp eq i32 %96, 0
  br label %98

; <label>:98                                      ; preds = %88, %0
  %99 = phi i1 [ %97, %88 ], [ true, %0 ]
  %100 = call %dx.types.Handle @"dx.op.createHandleForLib.class.RWTexture2D<vector<unsigned int, 4> >"(i32 160, %"class.RWTexture2D<vector<unsigned int, 4> >" %20)  ; CreateHandleForLib(Resource)
  %101 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %100, i32 undef, i32 %46, i32 %47, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %102 = extractvalue %dx.types.ResRet.i32 %101, 0
  %103 = extractvalue %dx.types.ResRet.i32 %101, 1
  %104 = extractvalue %dx.types.ResRet.i32 %101, 2
  %105 = extractvalue %dx.types.ResRet.i32 %101, 3
  %106 = select i1 %54, i32 0, i32 %105
  %107 = call %dx.types.Handle @"dx.op.createHandleForLib.class.Texture2D<float>"(i32 160, %"class.Texture2D<float>" %17)  ; CreateHandleForLib(Resource)
  %108 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %107, i32 0, i32 %46, i32 %47, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %109 = extractvalue %dx.types.ResRet.f32 %108, 0
  %110 = fcmp ogt float %109, 9.843750e-01
  %111 = sitofp i32 %46 to float
  %112 = sitofp i32 %47 to float
  %113 = fadd float %111, 5.000000e-01
  %114 = fadd float %112, 5.000000e-01
  %115 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %116 = extractvalue %dx.types.CBufRet.f32 %115, 2
  %117 = extractvalue %dx.types.CBufRet.f32 %115, 3
  %118 = fmul float %113, %116
  %119 = fmul float %114, %117
  %120 = fmul float %118, 2.000000e+00
  %121 = fmul float %119, 2.000000e+00
  %122 = fsub float 1.000000e+00, %120
  %123 = fsub float 1.000000e+00, %121
  %124 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %125 = extractvalue %dx.types.CBufRet.f32 %124, 0
  %126 = extractvalue %dx.types.CBufRet.f32 %124, 1
  %127 = extractvalue %dx.types.CBufRet.f32 %124, 2
  %128 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %129 = extractvalue %dx.types.CBufRet.f32 %128, 0
  %130 = extractvalue %dx.types.CBufRet.f32 %128, 1
  %131 = extractvalue %dx.types.CBufRet.f32 %128, 2
  %132 = select i1 %110, float %125, float %129
  %133 = select i1 %110, float %126, float %130
  %134 = select i1 %110, float %127, float %131
  %135 = fmul float %132, %122
  %136 = fmul float %133, %122
  %137 = fmul float %134, %122
  %138 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %139 = extractvalue %dx.types.CBufRet.f32 %138, 0
  %140 = extractvalue %dx.types.CBufRet.f32 %138, 1
  %141 = extractvalue %dx.types.CBufRet.f32 %138, 2
  %142 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %143 = extractvalue %dx.types.CBufRet.f32 %142, 0
  %144 = extractvalue %dx.types.CBufRet.f32 %142, 1
  %145 = extractvalue %dx.types.CBufRet.f32 %142, 2
  %146 = select i1 %110, float %139, float %143
  %147 = select i1 %110, float %140, float %144
  %148 = select i1 %110, float %141, float %145
  %149 = fmul float %123, %146
  %150 = fmul float %123, %147
  %151 = fmul float %123, %148
  %152 = fadd float %135, %149
  %153 = fadd float %136, %150
  %154 = fadd float %137, %151
  %155 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %156 = extractvalue %dx.types.CBufRet.f32 %155, 0
  %157 = extractvalue %dx.types.CBufRet.f32 %155, 1
  %158 = extractvalue %dx.types.CBufRet.f32 %155, 2
  %159 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %160 = extractvalue %dx.types.CBufRet.f32 %159, 0
  %161 = extractvalue %dx.types.CBufRet.f32 %159, 1
  %162 = extractvalue %dx.types.CBufRet.f32 %159, 2
  %163 = select i1 %110, float %156, float %160
  %164 = select i1 %110, float %157, float %161
  %165 = select i1 %110, float %158, float %162
  %166 = fadd float %152, %163
  %167 = fadd float %153, %164
  %168 = fadd float %154, %165
  %169 = call float @dx.op.dot3.f32(i32 55, float %166, float %167, float %168, float %166, float %167, float %168), !dx.precise !89  ; Dot3(ax,ay,az,bx,by,bz)
  %170 = call float @dx.op.unary.f32(i32 25, float %169), !dx.precise !89  ; Rsqrt(value)
  %171 = fmul float %170, %166
  %172 = fmul float %170, %167
  %173 = fmul float %170, %168
  %174 = icmp sgt i32 %56, 0
  %175 = and i1 %174, %99
  br i1 %175, label %176, label %7162

; <label>:176                                     ; preds = %98
  br label %177

; <label>:177                                     ; preds = %7139, %176
  %178 = phi i32 [ %7093, %7139 ], [ undef, %176 ]
  %179 = phi i32 [ %7094, %7139 ], [ undef, %176 ]
  %180 = phi i32 [ %7095, %7139 ], [ undef, %176 ]
  %181 = phi i32 [ %7096, %7139 ], [ undef, %176 ]
  %182 = phi float [ %7156, %7139 ], [ 0.000000e+00, %176 ]
  %183 = phi float [ %7157, %7139 ], [ 0.000000e+00, %176 ]
  %184 = phi float [ %7158, %7139 ], [ 0.000000e+00, %176 ]
  %185 = phi i32 [ %7159, %7139 ], [ 0, %176 ]
  %186 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %187 = extractvalue %dx.types.CBufRet.f32 %186, 0
  %188 = extractvalue %dx.types.CBufRet.f32 %186, 1
  %189 = extractvalue %dx.types.CBufRet.f32 %186, 2
  br label %190

; <label>:190                                     ; preds = %7065, %177
  %191 = phi i32 [ %178, %177 ], [ %1307, %7065 ]
  %192 = phi i32 [ %179, %177 ], [ %1308, %7065 ]
  %193 = phi i32 [ %180, %177 ], [ %1309, %7065 ]
  %194 = phi i32 [ %181, %177 ], [ %637, %7065 ]
  %195 = phi float [ %187, %177 ], [ %2238, %7065 ]
  %196 = phi float [ %188, %177 ], [ %2032, %7065 ]
  %197 = phi float [ %189, %177 ], [ %2190, %7065 ]
  %198 = phi float [ %171, %177 ], [ %6851, %7065 ]
  %199 = phi float [ %172, %177 ], [ %6852, %7065 ]
  %200 = phi float [ %173, %177 ], [ %6853, %7065 ]
  %201 = phi float [ 1.000000e+00, %177 ], [ %7069, %7065 ]
  %202 = phi float [ 1.000000e+00, %177 ], [ %7070, %7065 ]
  %203 = phi float [ 1.000000e+00, %177 ], [ %7071, %7065 ]
  %204 = phi float [ 0.000000e+00, %177 ], [ %6424, %7065 ]
  %205 = phi float [ 0.000000e+00, %177 ], [ %6425, %7065 ]
  %206 = phi float [ 0.000000e+00, %177 ], [ %6426, %7065 ]
  %207 = phi float [ 1.000000e+00, %177 ], [ %7081, %7065 ]
  %208 = phi float [ 1.000000e+00, %177 ], [ %7082, %7065 ]
  %209 = phi float [ 1.000000e+00, %177 ], [ %7083, %7065 ]
  %210 = phi float [ 1.000000e+00, %177 ], [ %7087, %7065 ]
  %211 = phi float [ 1.000000e+00, %177 ], [ %7088, %7065 ]
  %212 = phi float [ 1.000000e+00, %177 ], [ %7089, %7065 ]
  %213 = phi float [ 0.000000e+00, %177 ], [ %6452, %7065 ]
  %214 = phi float [ 0.000000e+00, %177 ], [ %6453, %7065 ]
  %215 = phi float [ 0.000000e+00, %177 ], [ %6454, %7065 ]
  %216 = phi float [ 0.000000e+00, %177 ], [ %6455, %7065 ]
  %217 = phi float [ 0.000000e+00, %177 ], [ %6456, %7065 ]
  %218 = phi float [ 0.000000e+00, %177 ], [ %6457, %7065 ]
  %219 = phi float [ 0.000000e+00, %177 ], [ %6458, %7065 ]
  %220 = phi float [ 0.000000e+00, %177 ], [ %6459, %7065 ]
  %221 = phi float [ 0.000000e+00, %177 ], [ %6460, %7065 ]
  %222 = phi float [ 0.000000e+00, %177 ], [ %6461, %7065 ]
  %223 = phi float [ 0.000000e+00, %177 ], [ %6462, %7065 ]
  %224 = phi float [ 0.000000e+00, %177 ], [ %6463, %7065 ]
  %225 = phi float [ 0.000000e+00, %177 ], [ %6464, %7065 ]
  %226 = phi float [ 0.000000e+00, %177 ], [ %6465, %7065 ]
  %227 = phi float [ 0.000000e+00, %177 ], [ %6466, %7065 ]
  %228 = phi i32 [ 0, %177 ], [ %7090, %7065 ]
  %229 = getelementptr inbounds %struct.Payload, %struct.Payload* %41, i32 0, i32 0
  store float 0.000000e+00, float* %229, align 8, !tbaa !90, !noalias !94
  %230 = getelementptr inbounds %struct.Payload, %struct.Payload* %41, i32 0, i32 1
  store i32 -1, i32* %230, align 4, !tbaa !99, !noalias !94
  %231 = getelementptr inbounds %struct.Payload, %struct.Payload* %41, i32 0, i32 2
  store i32 -1, i32* %231, align 8, !tbaa !99, !noalias !94
  %232 = getelementptr inbounds %struct.Payload, %struct.Payload* %41, i32 0, i32 3
  store i32 -1, i32* %232, align 4, !tbaa !99, !noalias !94
  %233 = call %dx.types.Handle @dx.op.createHandleForLib.struct.RaytracingAccelerationStructure(i32 160, %struct.RaytracingAccelerationStructure %18)  ; CreateHandleForLib(Resource)
  call void @dx.op.traceRay.struct.Payload(i32 157, %dx.types.Handle %233, i32 0, i32 255, i32 0, i32 0, i32 0, float %195, float %196, float %197, float 0x3FB99999A0000000, float %198, float %199, float %200, float 1.000000e+06, %struct.Payload* nonnull %41)  ; TraceRay(AccelerationStructure,RayFlags,InstanceInclusionMask,RayContributionToHitGroupIndex,MultiplierForGeometryContributionToShaderIndex,MissShaderIndex,Origin_X,Origin_Y,Origin_Z,TMin,Direction_X,Direction_Y,Direction_Z,TMax,payload)
  %234 = load float, float* %229, align 8
  %235 = load i32, i32* %231, align 8
  %236 = load i32, i32* %232, align 4
  %237 = getelementptr inbounds %struct.Payload, %struct.Payload* %41, i32 0, i32 4
  %238 = load <2 x float>, <2 x float>* %237, align 8
  %239 = fcmp oeq float %234, 1.000000e+06
  br i1 %239, label %240, label %379

; <label>:240                                     ; preds = %190
  %241 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %242 = extractvalue %dx.types.CBufRet.i32 %241, 2
  %243 = icmp eq i32 %242, 0
  br i1 %243, label %355, label %244

; <label>:244                                     ; preds = %240
  %245 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %246 = extractvalue %dx.types.CBufRet.i32 %245, 0
  %247 = call %dx.types.Handle @dx.op.createHandleForLib.struct.ByteAddressBuffer(i32 160, %struct.ByteAddressBuffer %12)  ; CreateHandleForLib(Resource)
  %248 = call %dx.types.ResRet.i32 @dx.op.rawBufferLoad.i32(i32 139, %dx.types.Handle %247, i32 %246, i32 undef, i8 7, i32 4)  ; RawBufferLoad(srv,index,elementOffset,mask,alignment)
  %249 = extractvalue %dx.types.ResRet.i32 %248, 0
  %250 = extractvalue %dx.types.ResRet.i32 %248, 1
  %251 = extractvalue %dx.types.ResRet.i32 %248, 2
  %252 = call i32 @dx.op.unary.i32(i32 30, i32 %249)  ; Bfrev(value)
  %253 = call i32 @dx.op.unary.i32(i32 30, i32 %250)  ; Bfrev(value)
  %254 = call i32 @dx.op.unary.i32(i32 30, i32 %251)  ; Bfrev(value)
  %255 = add i32 %246, 12
  %256 = call %dx.types.ResRet.i32 @dx.op.rawBufferLoad.i32(i32 139, %dx.types.Handle %247, i32 %255, i32 undef, i8 7, i32 4)  ; RawBufferLoad(srv,index,elementOffset,mask,alignment)
  %257 = extractvalue %dx.types.ResRet.i32 %256, 0
  %258 = extractvalue %dx.types.ResRet.i32 %256, 1
  %259 = extractvalue %dx.types.ResRet.i32 %256, 2
  %260 = call i32 @dx.op.unary.i32(i32 30, i32 %257)  ; Bfrev(value)
  %261 = call i32 @dx.op.unary.i32(i32 30, i32 %258)  ; Bfrev(value)
  %262 = call i32 @dx.op.unary.i32(i32 30, i32 %259)  ; Bfrev(value)
  %263 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %252)  ; Countbits(value)
  %264 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %253)  ; Countbits(value)
  %265 = add i32 %264, %263
  %266 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %254)  ; Countbits(value)
  %267 = add i32 %265, %266
  %268 = add i32 %246, 24
  %269 = shl i32 %267, 4
  %270 = add i32 %269, %268
  %271 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %260)  ; Countbits(value)
  %272 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %261)  ; Countbits(value)
  %273 = add i32 %272, %271
  %274 = and i32 %262, 63
  %275 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %274)  ; Countbits(value)
  %276 = add i32 %273, %275
  %277 = shl i32 %276, 2
  %278 = add i32 %270, %277
  %279 = call %dx.types.ResRet.i32 @dx.op.rawBufferLoad.i32(i32 139, %dx.types.Handle %247, i32 %278, i32 undef, i8 1, i32 4)  ; RawBufferLoad(srv,index,elementOffset,mask,alignment)
  %280 = extractvalue %dx.types.ResRet.i32 %279, 0
  %281 = and i32 %254, 32767
  %282 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %281)  ; Countbits(value)
  %283 = add i32 %265, %282
  %284 = shl i32 %283, 4
  %285 = add i32 %284, %268
  %286 = call %dx.types.ResRet.i32 @dx.op.rawBufferLoad.i32(i32 139, %dx.types.Handle %247, i32 %285, i32 undef, i8 15, i32 4)  ; RawBufferLoad(srv,index,elementOffset,mask,alignment)
  %287 = extractvalue %dx.types.ResRet.i32 %286, 0
  %288 = extractvalue %dx.types.ResRet.i32 %286, 1
  %289 = and i32 %288, 1
  %290 = icmp ne i32 %289, 0
  %291 = getelementptr inbounds [0 x %"class.Texture2D<vector<float, 4> >"], [0 x %"class.Texture2D<vector<float, 4> >"]* @"\01?globalTexture2DFloatTable@@3PAV?$Texture2D@V?$vector@M$03@@@@A", i32 0, i32 %280
  %292 = load %"class.Texture2D<vector<float, 4> >", %"class.Texture2D<vector<float, 4> >"* %291, align 4, !noalias !101
  br i1 %290, label %293, label %295

; <label>:293                                     ; preds = %244
  %294 = call float @dx.op.unary.f32(i32 6, float %200)  ; FAbs(value)
  br label %295

; <label>:295                                     ; preds = %293, %244
  %296 = phi float [ %294, %293 ], [ %200, %244 ]
  %297 = call float @dx.op.unary.f32(i32 6, float %198)  ; FAbs(value)
  %298 = call float @dx.op.unary.f32(i32 6, float %199)  ; FAbs(value)
  %299 = fadd fast float %298, %297
  %300 = call float @dx.op.unary.f32(i32 6, float %296)  ; FAbs(value)
  %301 = fadd fast float %299, %300
  %302 = fdiv fast float 1.000000e+00, %301
  %303 = fmul fast float %302, %296
  %304 = fcmp fast oge float %303, 0.000000e+00
  %305 = fsub fast float %199, %198
  %306 = fmul fast float %302, %305
  %307 = fadd fast float %306, -1.000000e+00
  %308 = fsub fast float %198, %199
  %309 = fmul fast float %302, %308
  %310 = fadd fast float %309, 1.000000e+00
  %311 = select i1 %304, float %307, float %310
  %312 = fadd fast float %199, %198
  %313 = fmul fast float %302, %312
  %314 = fmul fast float %311, 5.000000e-01
  %315 = fadd fast float %314, 1.000000e+00
  %316 = fmul fast float %313, 5.000000e-01
  %317 = fadd fast float %316, 5.000000e-01
  br i1 %290, label %337, label %318

; <label>:318                                     ; preds = %295
  %319 = fmul fast float %311, 2.500000e-01
  %320 = fadd fast float %319, 5.000000e-01
  %321 = call %dx.types.Handle @"dx.op.createHandleForLib.class.Texture2D<vector<float, 4> >"(i32 160, %"class.Texture2D<vector<float, 4> >" %292)  ; CreateHandleForLib(Resource)
  %322 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %321, i32 0)  ; GetDimensions(handle,mipLevel)
  %323 = extractvalue %dx.types.Dimensions %322, 0
  %324 = sitofp i32 %323 to float
  %325 = extractvalue %dx.types.Dimensions %322, 1
  %326 = sitofp i32 %325 to float
  %327 = fdiv fast float 8.000000e+00, %324
  %328 = fdiv fast float 4.000000e+00, %326
  %329 = fmul fast float %327, 2.000000e+00
  %330 = fmul fast float %328, 2.000000e+00
  %331 = fsub fast float 1.000000e+00, %329
  %332 = fsub fast float 1.000000e+00, %330
  %333 = fmul fast float %331, %320
  %334 = fmul fast float %332, %317
  %335 = fadd fast float %333, %327
  %336 = fadd fast float %334, %328
  br label %337

; <label>:337                                     ; preds = %318, %295
  %338 = phi float [ %315, %295 ], [ %335, %318 ]
  %339 = phi float [ %317, %295 ], [ %336, %318 ]
  %340 = call %dx.types.Handle @"dx.op.createHandleForLib.class.Texture2D<vector<float, 4> >"(i32 160, %"class.Texture2D<vector<float, 4> >" %292)  ; CreateHandleForLib(Resource)
  %341 = call %dx.types.Handle @dx.op.createHandleForLib.struct.SamplerState(i32 160, %struct.SamplerState %1)  ; CreateHandleForLib(Resource)
  %342 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %340, %dx.types.Handle %341, float %338, float %339, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %343 = extractvalue %dx.types.ResRet.f32 %342, 0
  %344 = extractvalue %dx.types.ResRet.f32 %342, 1
  %345 = extractvalue %dx.types.ResRet.f32 %342, 2
  %346 = bitcast i32 %287 to float
  %347 = fmul fast float %343, %346
  %348 = fmul fast float %344, %346
  %349 = fmul fast float %345, %346
  %350 = fcmp fast ult float %80, 0.000000e+00
  br i1 %350, label %355, label %351

; <label>:351                                     ; preds = %337
  %352 = call float @dx.op.binary.f32(i32 36, float %347, float %80)  ; FMin(a,b)
  %353 = call float @dx.op.binary.f32(i32 36, float %348, float %80)  ; FMin(a,b)
  %354 = call float @dx.op.binary.f32(i32 36, float %349, float %80)  ; FMin(a,b)
  br label %355

; <label>:355                                     ; preds = %351, %337, %240
  %356 = phi float [ 0.000000e+00, %240 ], [ %352, %351 ], [ %347, %337 ]
  %357 = phi float [ 0.000000e+00, %240 ], [ %353, %351 ], [ %348, %337 ]
  %358 = phi float [ 0.000000e+00, %240 ], [ %354, %351 ], [ %349, %337 ]
  %359 = fmul fast float %356, %201
  %360 = fmul fast float %357, %202
  %361 = fmul fast float %358, %203
  %362 = fadd fast float %359, %204
  %363 = fadd fast float %360, %205
  %364 = fadd fast float %361, %206
  %365 = icmp eq i32 %228, 0
  br i1 %365, label %7092, label %366

; <label>:366                                     ; preds = %355
  %367 = fmul fast float %356, %207
  %368 = fmul fast float %357, %208
  %369 = fmul fast float %358, %209
  %370 = fadd fast float %367, %222
  %371 = fadd fast float %368, %223
  %372 = fadd fast float %369, %224
  %373 = fmul fast float %356, %210
  %374 = fmul fast float %357, %211
  %375 = fmul fast float %358, %212
  %376 = fadd fast float %373, %225
  %377 = fadd fast float %374, %226
  %378 = fadd fast float %375, %227
  br label %7092

; <label>:379                                     ; preds = %190
  %380 = load i32, i32* %230, align 4
  %381 = lshr i32 %235, 16
  %382 = shl i32 %380, 2
  %383 = call %dx.types.Handle @dx.op.createHandleForLib.struct.ByteAddressBuffer(i32 160, %struct.ByteAddressBuffer %16)  ; CreateHandleForLib(Resource)
  %384 = call %dx.types.ResRet.i32 @dx.op.rawBufferLoad.i32(i32 139, %dx.types.Handle %383, i32 %382, i32 undef, i8 1, i32 4)  ; RawBufferLoad(srv,index,elementOffset,mask,alignment)
  %385 = extractvalue %dx.types.ResRet.i32 %384, 0
  %386 = shl i32 %235, 5
  %387 = and i32 %386, 2097120
  %388 = add i32 %385, %387
  %389 = call %dx.types.Handle @dx.op.createHandleForLib.struct.ByteAddressBuffer(i32 160, %struct.ByteAddressBuffer %15)  ; CreateHandleForLib(Resource)
  %390 = call %dx.types.ResRet.i32 @dx.op.rawBufferLoad.i32(i32 139, %dx.types.Handle %389, i32 %388, i32 undef, i8 1, i32 4)  ; RawBufferLoad(srv,index,elementOffset,mask,alignment)
  %391 = extractvalue %dx.types.ResRet.i32 %390, 0
  %392 = and i32 %391, 7
  %393 = lshr i32 %391, 4
  %394 = mul nuw nsw i32 %381, 52
  %395 = call %dx.types.Handle @dx.op.createHandleForLib.struct.ByteAddressBuffer(i32 160, %struct.ByteAddressBuffer %14)  ; CreateHandleForLib(Resource)
  %396 = call %dx.types.ResRet.i32 @dx.op.rawBufferLoad.i32(i32 139, %dx.types.Handle %395, i32 %394, i32 undef, i8 1, i32 4)  ; RawBufferLoad(srv,index,elementOffset,mask,alignment)
  %397 = extractvalue %dx.types.ResRet.i32 %396, 0
  %398 = add nuw nsw i32 %394, 4
  %399 = call %dx.types.ResRet.f32 @dx.op.rawBufferLoad.f32(i32 139, %dx.types.Handle %395, i32 %398, i32 undef, i8 7, i32 4)  ; RawBufferLoad(srv,index,elementOffset,mask,alignment)
  %400 = extractvalue %dx.types.ResRet.f32 %399, 0
  %401 = extractvalue %dx.types.ResRet.f32 %399, 1
  %402 = extractvalue %dx.types.ResRet.f32 %399, 2
  %403 = add nuw nsw i32 %394, 16
  %404 = call %dx.types.ResRet.f32 @dx.op.rawBufferLoad.f32(i32 139, %dx.types.Handle %395, i32 %403, i32 undef, i8 15, i32 4)  ; RawBufferLoad(srv,index,elementOffset,mask,alignment)
  %405 = extractvalue %dx.types.ResRet.f32 %404, 0
  %406 = extractvalue %dx.types.ResRet.f32 %404, 1
  %407 = extractvalue %dx.types.ResRet.f32 %404, 2
  %408 = extractvalue %dx.types.ResRet.f32 %404, 3
  %409 = add nuw nsw i32 %394, 32
  %410 = call %dx.types.ResRet.f32 @dx.op.rawBufferLoad.f32(i32 139, %dx.types.Handle %395, i32 %409, i32 undef, i8 15, i32 4)  ; RawBufferLoad(srv,index,elementOffset,mask,alignment)
  %411 = extractvalue %dx.types.ResRet.f32 %410, 0
  %412 = extractvalue %dx.types.ResRet.f32 %410, 1
  %413 = extractvalue %dx.types.ResRet.f32 %410, 2
  %414 = extractvalue %dx.types.ResRet.f32 %410, 3
  %415 = add nuw nsw i32 %394, 48
  %416 = call %dx.types.ResRet.f32 @dx.op.rawBufferLoad.f32(i32 139, %dx.types.Handle %395, i32 %415, i32 undef, i8 1, i32 4)  ; RawBufferLoad(srv,index,elementOffset,mask,alignment)
  %417 = extractvalue %dx.types.ResRet.f32 %416, 0
  %418 = icmp eq i32 %393, 268435455
  %419 = select i1 %418, i32 %397, i32 %393
  %420 = call %dx.types.Handle @dx.op.createHandleForLib.struct.ByteAddressBuffer(i32 160, %struct.ByteAddressBuffer %12)  ; CreateHandleForLib(Resource)
  %421 = call %dx.types.ResRet.i32 @dx.op.rawBufferLoad.i32(i32 139, %dx.types.Handle %420, i32 %419, i32 undef, i8 7, i32 4)  ; RawBufferLoad(srv,index,elementOffset,mask,alignment)
  %422 = extractvalue %dx.types.ResRet.i32 %421, 0
  %423 = extractvalue %dx.types.ResRet.i32 %421, 1
  %424 = extractvalue %dx.types.ResRet.i32 %421, 2
  %425 = call i32 @dx.op.unary.i32(i32 30, i32 %422)  ; Bfrev(value)
  %426 = call i32 @dx.op.unary.i32(i32 30, i32 %423)  ; Bfrev(value)
  %427 = call i32 @dx.op.unary.i32(i32 30, i32 %424)  ; Bfrev(value)
  %428 = add i32 %419, 12
  %429 = call %dx.types.ResRet.i32 @dx.op.rawBufferLoad.i32(i32 139, %dx.types.Handle %420, i32 %428, i32 undef, i8 7, i32 4)  ; RawBufferLoad(srv,index,elementOffset,mask,alignment)
  %430 = extractvalue %dx.types.ResRet.i32 %429, 0
  %431 = extractvalue %dx.types.ResRet.i32 %429, 1
  %432 = call i32 @dx.op.unary.i32(i32 30, i32 %430)  ; Bfrev(value)
  %433 = call i32 @dx.op.unary.i32(i32 30, i32 %431)  ; Bfrev(value)
  %434 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %425)  ; Countbits(value)
  %435 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %426)  ; Countbits(value)
  %436 = add i32 %435, %434
  %437 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %427)  ; Countbits(value)
  %438 = add i32 %436, %437
  %439 = add i32 %419, 24
  %440 = shl i32 %438, 4
  %441 = add i32 %440, %439
  %442 = and i32 %391, 6
  %443 = icmp eq i32 %442, 0
  br i1 %443, label %444, label %512

; <label>:444                                     ; preds = %379
  %445 = add i32 %388, 4
  %446 = call %dx.types.ResRet.i32 @dx.op.rawBufferLoad.i32(i32 139, %dx.types.Handle %389, i32 %445, i32 undef, i8 1, i32 4)  ; RawBufferLoad(srv,index,elementOffset,mask,alignment)
  %447 = extractvalue %dx.types.ResRet.i32 %446, 0
  %448 = add i32 %388, 16
  %449 = call %dx.types.ResRet.i32 @dx.op.rawBufferLoad.i32(i32 139, %dx.types.Handle %389, i32 %448, i32 undef, i8 1, i32 4)  ; RawBufferLoad(srv,index,elementOffset,mask,alignment)
  %450 = shl i32 %447, 7
  %451 = call %dx.types.Handle @dx.op.createHandleForLib.struct.ByteAddressBuffer(i32 160, %struct.ByteAddressBuffer %11)  ; CreateHandleForLib(Resource)
  %452 = call %dx.types.ResRet.f32 @dx.op.rawBufferLoad.f32(i32 139, %dx.types.Handle %451, i32 %450, i32 undef, i8 7, i32 4)  ; RawBufferLoad(srv,index,elementOffset,mask,alignment)
  %453 = extractvalue %dx.types.ResRet.f32 %452, 1
  %454 = or i32 %450, 12
  %455 = call %dx.types.ResRet.f32 @dx.op.rawBufferLoad.f32(i32 139, %dx.types.Handle %451, i32 %454, i32 undef, i8 1, i32 4)  ; RawBufferLoad(srv,index,elementOffset,mask,alignment)
  %456 = or i32 %450, 36
  %457 = call %dx.types.ResRet.i32 @dx.op.rawBufferLoad.i32(i32 139, %dx.types.Handle %451, i32 %456, i32 undef, i8 1, i32 4)  ; RawBufferLoad(srv,index,elementOffset,mask,alignment)
  %458 = or i32 %450, 40
  %459 = call %dx.types.ResRet.i32 @dx.op.rawBufferLoad.i32(i32 139, %dx.types.Handle %451, i32 %458, i32 undef, i8 1, i32 4)  ; RawBufferLoad(srv,index,elementOffset,mask,alignment)
  %460 = or i32 %450, 48
  %461 = call %dx.types.ResRet.i32 @dx.op.rawBufferLoad.i32(i32 139, %dx.types.Handle %451, i32 %460, i32 undef, i8 1, i32 4)  ; RawBufferLoad(srv,index,elementOffset,mask,alignment)
  %462 = extractvalue %dx.types.ResRet.i32 %461, 0
  %463 = or i32 %450, 52
  %464 = call %dx.types.ResRet.i32 @dx.op.rawBufferLoad.i32(i32 139, %dx.types.Handle %451, i32 %463, i32 undef, i8 1, i32 4)  ; RawBufferLoad(srv,index,elementOffset,mask,alignment)
  %465 = or i32 %450, 60
  %466 = icmp eq i32 %462, 0
  br label %467

; <label>:467                                     ; preds = %486, %444
  %468 = phi i32 [ 1, %444 ], [ %494, %486 ]
  %469 = and i32 %425, 268435455
  %470 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %469)  ; Countbits(value)
  %471 = shl i32 %470, 4
  %472 = add i32 %471, %439
  %473 = call %dx.types.Handle @dx.op.createHandleForLib.struct.ByteAddressBuffer(i32 160, %struct.ByteAddressBuffer %12)  ; CreateHandleForLib(Resource)
  %474 = call %dx.types.ResRet.i32 @dx.op.rawBufferLoad.i32(i32 139, %dx.types.Handle %473, i32 %472, i32 undef, i8 15, i32 4)  ; RawBufferLoad(srv,index,elementOffset,mask,alignment)
  %475 = extractvalue %dx.types.ResRet.i32 %474, 1
  %476 = lshr i32 %475, 17
  %477 = and i32 %476, 1
  %478 = add nuw nsw i32 %477, 1
  %479 = lshr i32 %475, 18
  %480 = and i32 %479, 1
  %481 = add nuw nsw i32 %478, %480
  %482 = lshr i32 %475, 19
  %483 = and i32 %482, 1
  %484 = add nuw nsw i32 %481, %483
  %485 = icmp slt i32 %468, %484
  br i1 %485, label %486, label %495

; <label>:486                                     ; preds = %467
  %487 = shl i32 %468, 2
  %488 = add i32 %465, -4
  %489 = add i32 %488, %487
  %490 = call %dx.types.ResRet.i32 @dx.op.rawBufferLoad.i32(i32 139, %dx.types.Handle %451, i32 %489, i32 undef, i8 1, i32 4)  ; RawBufferLoad(srv,index,elementOffset,mask,alignment)
  %491 = extractvalue %dx.types.ResRet.i32 %490, 0
  %492 = add nsw i32 %468, -1
  %493 = getelementptr inbounds [3 x i32], [3 x i32]* %36, i32 0, i32 %492
  store i32 %491, i32* %493, align 4, !tbaa !99, !noalias !68
  %494 = add nuw nsw i32 %468, 1
  br label %467

; <label>:495                                     ; preds = %467
  %496 = extractvalue %dx.types.ResRet.i32 %449, 0
  %497 = extractvalue %dx.types.ResRet.f32 %452, 0
  %498 = extractvalue %dx.types.ResRet.f32 %452, 2
  %499 = extractvalue %dx.types.ResRet.f32 %455, 0
  %500 = extractvalue %dx.types.ResRet.i32 %457, 0
  %501 = extractvalue %dx.types.ResRet.i32 %459, 0
  %502 = extractvalue %dx.types.ResRet.i32 %464, 0
  %503 = select i1 %466, i32 -1, i32 %462
  %504 = icmp eq i32 %392, 1
  %505 = select i1 %504, float %400, float 0.000000e+00
  %506 = select i1 %504, float %401, float 0.000000e+00
  %507 = select i1 %504, float %402, float 0.000000e+00
  %508 = select i1 %504, float %405, float 0.000000e+00
  %509 = select i1 %504, float %406, float 0.000000e+00
  %510 = select i1 %504, float %407, float 0.000000e+00
  %511 = select i1 %504, float %408, float 1.000000e+00
  br label %631

; <label>:512                                     ; preds = %379
  %513 = icmp eq i32 %392, 2
  %514 = call %dx.types.Handle @dx.op.createHandleForLib.struct.ByteAddressBuffer(i32 160, %struct.ByteAddressBuffer %10)  ; CreateHandleForLib(Resource)
  br i1 %513, label %515, label %591

; <label>:515                                     ; preds = %512
  %516 = add i32 %388, 4
  %517 = call %dx.types.ResRet.i32 @dx.op.rawBufferLoad.i32(i32 139, %dx.types.Handle %389, i32 %516, i32 undef, i8 1, i32 4)  ; RawBufferLoad(srv,index,elementOffset,mask,alignment)
  %518 = extractvalue %dx.types.ResRet.i32 %517, 0
  %519 = add i32 %388, 8
  %520 = call %dx.types.ResRet.i32 @dx.op.rawBufferLoad.i32(i32 139, %dx.types.Handle %389, i32 %519, i32 undef, i8 1, i32 4)  ; RawBufferLoad(srv,index,elementOffset,mask,alignment)
  %521 = extractvalue %dx.types.ResRet.i32 %520, 0
  %522 = shl i32 %518, 2
  %523 = call %dx.types.Handle @dx.op.createHandleForLib.struct.ByteAddressBuffer(i32 160, %struct.ByteAddressBuffer %9)  ; CreateHandleForLib(Resource)
  %524 = call %dx.types.ResRet.i32 @dx.op.rawBufferLoad.i32(i32 139, %dx.types.Handle %523, i32 %522, i32 undef, i8 1, i32 4)  ; RawBufferLoad(srv,index,elementOffset,mask,alignment)
  %525 = extractvalue %dx.types.ResRet.i32 %524, 0
  %526 = mul i32 %525, 44
  %527 = call %dx.types.ResRet.i32 @dx.op.rawBufferLoad.i32(i32 139, %dx.types.Handle %514, i32 %526, i32 undef, i8 15, i32 4)  ; RawBufferLoad(srv,index,elementOffset,mask,alignment)
  %528 = extractvalue %dx.types.ResRet.i32 %527, 0
  %529 = extractvalue %dx.types.ResRet.i32 %527, 2
  %530 = extractvalue %dx.types.ResRet.i32 %527, 3
  %531 = add i32 %526, 32
  %532 = call %dx.types.ResRet.i32 @dx.op.rawBufferLoad.i32(i32 139, %dx.types.Handle %514, i32 %531, i32 undef, i8 7, i32 4)  ; RawBufferLoad(srv,index,elementOffset,mask,alignment)
  %533 = extractvalue %dx.types.ResRet.i32 %532, 1
  %534 = mul i32 %521, 24
  %535 = call %dx.types.Handle @dx.op.createHandleForLib.struct.ByteAddressBuffer(i32 160, %struct.ByteAddressBuffer %7)  ; CreateHandleForLib(Resource)
  %536 = call %dx.types.ResRet.f32 @dx.op.rawBufferLoad.f32(i32 139, %dx.types.Handle %535, i32 %534, i32 undef, i8 7, i32 4)  ; RawBufferLoad(srv,index,elementOffset,mask,alignment)
  %537 = extractvalue %dx.types.ResRet.f32 %536, 0
  %538 = extractvalue %dx.types.ResRet.f32 %536, 1
  %539 = extractvalue %dx.types.ResRet.f32 %536, 2
  %540 = add i32 %534, 12
  %541 = call %dx.types.ResRet.i32 @dx.op.rawBufferLoad.i32(i32 139, %dx.types.Handle %535, i32 %540, i32 undef, i8 3, i32 4)  ; RawBufferLoad(srv,index,elementOffset,mask,alignment)
  %542 = extractvalue %dx.types.ResRet.i32 %541, 0
  %543 = extractvalue %dx.types.ResRet.i32 %541, 1
  %544 = add i32 %534, 20
  %545 = call %dx.types.ResRet.i32 @dx.op.rawBufferLoad.i32(i32 139, %dx.types.Handle %535, i32 %544, i32 undef, i8 1, i32 4)  ; RawBufferLoad(srv,index,elementOffset,mask,alignment)
  %546 = extractvalue %dx.types.ResRet.i32 %545, 0
  %547 = bitcast float %537 to i32
  %548 = bitcast float %538 to i32
  %549 = bitcast float %539 to i32
  %550 = sitofp i32 %547 to float
  %551 = sitofp i32 %548 to float
  %552 = sitofp i32 %549 to float
  %553 = fmul float %550, 0x3F30000000000000
  %554 = fmul float %551, 0x3F30000000000000
  %555 = fmul float %552, 0x3F30000000000000
  %556 = and i32 %542, 65535
  %557 = uitofp i32 %556 to float
  %558 = fdiv float %557, 6.553500e+04
  %559 = lshr i32 %542, 16
  %560 = uitofp i32 %559 to float
  %561 = fdiv float %560, 6.553500e+04
  %562 = and i32 %543, 65535
  %563 = uitofp i32 %562 to float
  %564 = fdiv float %563, 6.553500e+04
  %565 = lshr i32 %543, 16
  %566 = uitofp i32 %565 to float
  %567 = fdiv float %566, 6.553500e+04
  %568 = fmul float %558, 2.000000e+00
  %569 = fmul float %561, 2.000000e+00
  %570 = fmul float %564, 2.000000e+00
  %571 = fmul float %567, 2.000000e+00
  %572 = fadd float %568, -1.000000e+00
  %573 = fadd float %569, -1.000000e+00
  %574 = fadd float %570, -1.000000e+00
  %575 = fadd float %571, -1.000000e+00
  %576 = and i32 %546, 65535
  %577 = call float @dx.op.legacyF16ToF32(i32 131, i32 %576), !dx.precise !89  ; LegacyF16ToF32(value)
  %578 = shl i32 %518, 5
  %579 = call %dx.types.Handle @dx.op.createHandleForLib.struct.ByteAddressBuffer(i32 160, %struct.ByteAddressBuffer %8)  ; CreateHandleForLib(Resource)
  %580 = call %dx.types.ResRet.f32 @dx.op.rawBufferLoad.f32(i32 139, %dx.types.Handle %579, i32 %578, i32 undef, i8 15, i32 4)  ; RawBufferLoad(srv,index,elementOffset,mask,alignment)
  %581 = extractvalue %dx.types.ResRet.f32 %580, 0
  %582 = extractvalue %dx.types.ResRet.f32 %580, 1
  %583 = extractvalue %dx.types.ResRet.f32 %580, 2
  %584 = or i32 %578, 16
  %585 = call %dx.types.ResRet.f32 @dx.op.rawBufferLoad.f32(i32 139, %dx.types.Handle %579, i32 %584, i32 undef, i8 7, i32 4)  ; RawBufferLoad(srv,index,elementOffset,mask,alignment)
  %586 = extractvalue %dx.types.ResRet.f32 %585, 0
  %587 = extractvalue %dx.types.ResRet.f32 %585, 1
  %588 = extractvalue %dx.types.ResRet.f32 %585, 2
  %589 = call float @dx.op.binary.f32(i32 35, float %587, float %588), !dx.precise !89  ; FMax(a,b)
  %590 = call float @dx.op.binary.f32(i32 35, float %586, float %589), !dx.precise !89  ; FMax(a,b)
  br label %631

; <label>:591                                     ; preds = %512
  %592 = icmp eq i32 %392, 3
  %593 = bitcast float %400 to i32
  %594 = bitcast float %401 to i32
  %595 = bitcast float %402 to i32
  %596 = sitofp i32 %593 to float
  %597 = sitofp i32 %594 to float
  %598 = sitofp i32 %595 to float
  %599 = fmul float %596, 0x3F30000000000000
  %600 = fmul float %597, 0x3F30000000000000
  %601 = fmul float %598, 0x3F30000000000000
  br i1 %592, label %602, label %615

; <label>:602                                     ; preds = %591
  %603 = or i32 %387, 8
  %604 = add i32 %603, %385
  %605 = call %dx.types.ResRet.i32 @dx.op.rawBufferLoad.i32(i32 139, %dx.types.Handle %389, i32 %604, i32 undef, i8 1, i32 4)  ; RawBufferLoad(srv,index,elementOffset,mask,alignment)
  %606 = extractvalue %dx.types.ResRet.i32 %605, 0
  %607 = mul i32 %606, 44
  %608 = call %dx.types.ResRet.i32 @dx.op.rawBufferLoad.i32(i32 139, %dx.types.Handle %514, i32 %607, i32 undef, i8 15, i32 4)  ; RawBufferLoad(srv,index,elementOffset,mask,alignment)
  %609 = extractvalue %dx.types.ResRet.i32 %608, 0
  %610 = extractvalue %dx.types.ResRet.i32 %608, 2
  %611 = extractvalue %dx.types.ResRet.i32 %608, 3
  %612 = add i32 %607, 32
  %613 = call %dx.types.ResRet.i32 @dx.op.rawBufferLoad.i32(i32 139, %dx.types.Handle %514, i32 %612, i32 undef, i8 7, i32 4)  ; RawBufferLoad(srv,index,elementOffset,mask,alignment)
  %614 = extractvalue %dx.types.ResRet.i32 %613, 1
  br label %631

; <label>:615                                     ; preds = %591
  %616 = add i32 %388, 4
  %617 = call %dx.types.ResRet.i32 @dx.op.rawBufferLoad.i32(i32 139, %dx.types.Handle %389, i32 %616, i32 undef, i8 1, i32 4)  ; RawBufferLoad(srv,index,elementOffset,mask,alignment)
  %618 = extractvalue %dx.types.ResRet.i32 %617, 0
  %619 = add i32 %388, 8
  %620 = call %dx.types.ResRet.i32 @dx.op.rawBufferLoad.i32(i32 139, %dx.types.Handle %389, i32 %619, i32 undef, i8 1, i32 4)  ; RawBufferLoad(srv,index,elementOffset,mask,alignment)
  %621 = extractvalue %dx.types.ResRet.i32 %620, 0
  %622 = add i32 %388, 12
  %623 = call %dx.types.ResRet.i32 @dx.op.rawBufferLoad.i32(i32 139, %dx.types.Handle %389, i32 %622, i32 undef, i8 1, i32 4)  ; RawBufferLoad(srv,index,elementOffset,mask,alignment)
  %624 = extractvalue %dx.types.ResRet.i32 %623, 0
  %625 = mul i32 %618, 44
  %626 = call %dx.types.ResRet.i32 @dx.op.rawBufferLoad.i32(i32 139, %dx.types.Handle %514, i32 %625, i32 undef, i8 15, i32 4)  ; RawBufferLoad(srv,index,elementOffset,mask,alignment)
  %627 = extractvalue %dx.types.ResRet.i32 %626, 2
  %628 = add i32 %625, 32
  %629 = call %dx.types.ResRet.i32 @dx.op.rawBufferLoad.i32(i32 139, %dx.types.Handle %514, i32 %628, i32 undef, i8 7, i32 4)  ; RawBufferLoad(srv,index,elementOffset,mask,alignment)
  %630 = extractvalue %dx.types.ResRet.i32 %629, 1
  br label %631

; <label>:631                                     ; preds = %615, %602, %515, %495
  %632 = phi float [ %581, %515 ], [ %411, %602 ], [ 0.000000e+00, %615 ], [ %497, %495 ]
  %633 = phi float [ %582, %515 ], [ %412, %602 ], [ 0.000000e+00, %615 ], [ %453, %495 ]
  %634 = phi float [ %583, %515 ], [ %413, %602 ], [ 0.000000e+00, %615 ], [ %498, %495 ]
  %635 = phi float [ %590, %515 ], [ %414, %602 ], [ %417, %615 ], [ %499, %495 ]
  %636 = phi i32 [ %530, %515 ], [ %611, %602 ], [ %621, %615 ], [ %501, %495 ]
  %637 = phi i32 [ %194, %515 ], [ %194, %602 ], [ %194, %615 ], [ %503, %495 ]
  %638 = phi i32 [ %529, %515 ], [ %610, %602 ], [ %627, %615 ], [ %502, %495 ]
  %639 = phi i32 [ %528, %515 ], [ %609, %602 ], [ %624, %615 ], [ %500, %495 ]
  %640 = phi i32 [ %533, %515 ], [ %614, %602 ], [ %630, %615 ], [ %496, %495 ]
  %641 = phi float [ %553, %515 ], [ %599, %602 ], [ %599, %615 ], [ %505, %495 ]
  %642 = phi float [ %554, %515 ], [ %600, %602 ], [ %600, %615 ], [ %506, %495 ]
  %643 = phi float [ %555, %515 ], [ %601, %602 ], [ %601, %615 ], [ %507, %495 ]
  %644 = phi float [ %572, %515 ], [ %405, %602 ], [ %405, %615 ], [ %508, %495 ]
  %645 = phi float [ %573, %515 ], [ %406, %602 ], [ %406, %615 ], [ %509, %495 ]
  %646 = phi float [ %574, %515 ], [ %407, %602 ], [ %407, %615 ], [ %510, %495 ]
  %647 = phi float [ %575, %515 ], [ %408, %602 ], [ %408, %615 ], [ %511, %495 ]
  %648 = phi float [ %577, %515 ], [ %417, %602 ], [ 1.000000e+00, %615 ], [ 1.000000e+00, %495 ]
  %649 = fmul float %645, 2.000000e+00
  %650 = fmul float %645, %649
  %651 = fsub float 1.000000e+00, %650
  %652 = fmul float %646, 2.000000e+00
  %653 = fmul float %646, %652
  %654 = fsub float %651, %653
  %655 = fmul float %644, 2.000000e+00
  %656 = fmul float %655, %645
  %657 = fmul float %652, %647
  %658 = fsub float %656, %657
  %659 = fmul float %655, %646
  %660 = fmul float %649, %647
  %661 = fadd float %659, %660
  %662 = fadd float %656, %657
  %663 = fmul float %644, %655
  %664 = fsub float 1.000000e+00, %663
  %665 = fsub float %664, %653
  %666 = fmul float %649, %646
  %667 = fmul float %655, %647
  %668 = fsub float %666, %667
  %669 = fsub float %659, %660
  %670 = fadd float %666, %667
  %671 = fsub float %664, %650
  %672 = fmul float %648, %654
  %673 = fmul float %648, %662
  %674 = fmul float %648, %669
  %675 = fmul float %648, %658
  %676 = fmul float %648, %665
  %677 = fmul float %648, %670
  %678 = fmul float %648, %661
  %679 = fmul float %648, %668
  %680 = fmul float %671, %648
  %681 = lshr i32 %236, 6
  %682 = and i32 %236, 63
  %683 = add i32 %640, %681
  %684 = shl i32 %683, 2
  %685 = call %dx.types.Handle @dx.op.createHandleForLib.struct.ByteAddressBuffer(i32 160, %struct.ByteAddressBuffer %3)  ; CreateHandleForLib(Resource)
  %686 = call %dx.types.ResRet.i32 @dx.op.rawBufferLoad.i32(i32 139, %dx.types.Handle %685, i32 %684, i32 undef, i8 1, i32 4)  ; RawBufferLoad(srv,index,elementOffset,mask,alignment)
  %687 = extractvalue %dx.types.ResRet.i32 %686, 0
  %688 = shl i32 %687, 6
  %689 = or i32 %688, %682
  %690 = mul i32 %689, 3
  %691 = mul i32 %689, 6
  %692 = and i32 %691, -4
  %693 = call %dx.types.Handle @dx.op.createHandleForLib.struct.ByteAddressBuffer(i32 160, %struct.ByteAddressBuffer %4)  ; CreateHandleForLib(Resource)
  %694 = call %dx.types.ResRet.i32 @dx.op.rawBufferLoad.i32(i32 139, %dx.types.Handle %693, i32 %692, i32 undef, i8 3, i32 4)  ; RawBufferLoad(srv,index,elementOffset,mask,alignment)
  %695 = extractvalue %dx.types.ResRet.i32 %694, 0
  %696 = extractvalue %dx.types.ResRet.i32 %694, 1
  %697 = and i32 %690, 1
  %698 = icmp eq i32 %697, 0
  %699 = lshr i32 %695, 16
  %700 = and i32 %696, 65535
  %701 = lshr i32 %696, 16
  %702 = and i32 %695, 65535
  %703 = select i1 %698, i32 %702, i32 %699
  %704 = select i1 %698, i32 %699, i32 %700
  %705 = select i1 %698, i32 %700, i32 %701
  %706 = shl nuw nsw i32 %703, 3
  %707 = call %dx.types.Handle @dx.op.createHandleForLib.struct.ByteAddressBuffer(i32 160, %struct.ByteAddressBuffer %5)  ; CreateHandleForLib(Resource)
  %708 = call %dx.types.Handle @dx.op.createHandleForLib.struct.ByteAddressBuffer(i32 160, %struct.ByteAddressBuffer %6)  ; CreateHandleForLib(Resource)
  %709 = shl nuw nsw i32 %704, 3
  %710 = shl nuw nsw i32 %705, 3
  %711 = shl nuw nsw i32 %703, 2
  %712 = lshr i32 %703, 8
  %713 = and i32 %711, 1020
  %714 = shl nuw nsw i32 %704, 2
  %715 = lshr i32 %704, 8
  %716 = and i32 %714, 1020
  %717 = shl nuw nsw i32 %705, 2
  %718 = lshr i32 %705, 8
  %719 = and i32 %717, 1020
  br i1 %443, label %720, label %1018

; <label>:720                                     ; preds = %631
  %721 = lshr i32 %703, 7
  %722 = add i32 %721, %639
  %723 = shl i32 %722, 2
  %724 = call %dx.types.ResRet.i32 @dx.op.rawBufferLoad.i32(i32 139, %dx.types.Handle %707, i32 %723, i32 undef, i8 1, i32 4)  ; RawBufferLoad(srv,index,elementOffset,mask,alignment)
  %725 = extractvalue %dx.types.ResRet.i32 %724, 0
  %726 = shl i32 %725, 10
  %727 = and i32 %706, 1016
  %728 = or i32 %726, %727
  %729 = call %dx.types.ResRet.i32 @dx.op.rawBufferLoad.i32(i32 139, %dx.types.Handle %708, i32 %728, i32 undef, i8 3, i32 4)  ; RawBufferLoad(srv,index,elementOffset,mask,alignment)
  %730 = extractvalue %dx.types.ResRet.i32 %729, 0
  %731 = extractvalue %dx.types.ResRet.i32 %729, 1
  %732 = and i32 %730, 2097151
  %733 = lshr i32 %730, 21
  %734 = shl i32 %731, 11
  %735 = and i32 %734, 2095104
  %736 = or i32 %735, %733
  %737 = lshr i32 %731, 10
  %738 = and i32 %737, 2097151
  %739 = lshr i32 %704, 7
  %740 = add i32 %739, %639
  %741 = shl i32 %740, 2
  %742 = call %dx.types.ResRet.i32 @dx.op.rawBufferLoad.i32(i32 139, %dx.types.Handle %707, i32 %741, i32 undef, i8 1, i32 4)  ; RawBufferLoad(srv,index,elementOffset,mask,alignment)
  %743 = extractvalue %dx.types.ResRet.i32 %742, 0
  %744 = shl i32 %743, 10
  %745 = and i32 %709, 1016
  %746 = or i32 %744, %745
  %747 = call %dx.types.ResRet.i32 @dx.op.rawBufferLoad.i32(i32 139, %dx.types.Handle %708, i32 %746, i32 undef, i8 3, i32 4)  ; RawBufferLoad(srv,index,elementOffset,mask,alignment)
  %748 = extractvalue %dx.types.ResRet.i32 %747, 0
  %749 = extractvalue %dx.types.ResRet.i32 %747, 1
  %750 = and i32 %748, 2097151
  %751 = lshr i32 %748, 21
  %752 = shl i32 %749, 11
  %753 = and i32 %752, 2095104
  %754 = or i32 %753, %751
  %755 = lshr i32 %749, 10
  %756 = and i32 %755, 2097151
  %757 = lshr i32 %705, 7
  %758 = add i32 %757, %639
  %759 = shl i32 %758, 2
  %760 = call %dx.types.ResRet.i32 @dx.op.rawBufferLoad.i32(i32 139, %dx.types.Handle %707, i32 %759, i32 undef, i8 1, i32 4)  ; RawBufferLoad(srv,index,elementOffset,mask,alignment)
  %761 = extractvalue %dx.types.ResRet.i32 %760, 0
  %762 = shl i32 %761, 10
  %763 = and i32 %710, 1016
  %764 = or i32 %762, %763
  %765 = call %dx.types.ResRet.i32 @dx.op.rawBufferLoad.i32(i32 139, %dx.types.Handle %708, i32 %764, i32 undef, i8 3, i32 4)  ; RawBufferLoad(srv,index,elementOffset,mask,alignment)
  %766 = extractvalue %dx.types.ResRet.i32 %765, 0
  %767 = extractvalue %dx.types.ResRet.i32 %765, 1
  %768 = and i32 %766, 2097151
  %769 = lshr i32 %766, 21
  %770 = shl i32 %767, 11
  %771 = and i32 %770, 2095104
  %772 = or i32 %771, %769
  %773 = uitofp i32 %772 to float
  %774 = lshr i32 %767, 10
  %775 = and i32 %774, 2097151
  %776 = uitofp i32 %775 to float
  %777 = add i32 %712, %636
  %778 = shl i32 %777, 2
  %779 = call %dx.types.ResRet.i32 @dx.op.rawBufferLoad.i32(i32 139, %dx.types.Handle %707, i32 %778, i32 undef, i8 1, i32 4)  ; RawBufferLoad(srv,index,elementOffset,mask,alignment)
  %780 = extractvalue %dx.types.ResRet.i32 %779, 0
  %781 = shl i32 %780, 10
  %782 = or i32 %781, %713
  %783 = call %dx.types.ResRet.i32 @dx.op.rawBufferLoad.i32(i32 139, %dx.types.Handle %708, i32 %782, i32 undef, i8 1, i32 4)  ; RawBufferLoad(srv,index,elementOffset,mask,alignment)
  %784 = add i32 %715, %636
  %785 = shl i32 %784, 2
  %786 = call %dx.types.ResRet.i32 @dx.op.rawBufferLoad.i32(i32 139, %dx.types.Handle %707, i32 %785, i32 undef, i8 1, i32 4)  ; RawBufferLoad(srv,index,elementOffset,mask,alignment)
  %787 = extractvalue %dx.types.ResRet.i32 %786, 0
  %788 = shl i32 %787, 10
  %789 = or i32 %788, %716
  %790 = call %dx.types.ResRet.i32 @dx.op.rawBufferLoad.i32(i32 139, %dx.types.Handle %708, i32 %789, i32 undef, i8 1, i32 4)  ; RawBufferLoad(srv,index,elementOffset,mask,alignment)
  %791 = add i32 %718, %636
  %792 = shl i32 %791, 2
  %793 = call %dx.types.ResRet.i32 @dx.op.rawBufferLoad.i32(i32 139, %dx.types.Handle %707, i32 %792, i32 undef, i8 1, i32 4)  ; RawBufferLoad(srv,index,elementOffset,mask,alignment)
  %794 = extractvalue %dx.types.ResRet.i32 %793, 0
  %795 = shl i32 %794, 10
  %796 = or i32 %795, %719
  %797 = call %dx.types.ResRet.i32 @dx.op.rawBufferLoad.i32(i32 139, %dx.types.Handle %708, i32 %796, i32 undef, i8 1, i32 4)  ; RawBufferLoad(srv,index,elementOffset,mask,alignment)
  %798 = extractvalue %dx.types.ResRet.i32 %797, 0
  %799 = add i32 %712, %637
  %800 = shl i32 %799, 2
  %801 = call %dx.types.ResRet.i32 @dx.op.rawBufferLoad.i32(i32 139, %dx.types.Handle %707, i32 %800, i32 undef, i8 1, i32 4)  ; RawBufferLoad(srv,index,elementOffset,mask,alignment)
  %802 = extractvalue %dx.types.ResRet.i32 %801, 0
  %803 = shl i32 %802, 10
  %804 = or i32 %803, %713
  %805 = call %dx.types.ResRet.i32 @dx.op.rawBufferLoad.i32(i32 139, %dx.types.Handle %708, i32 %804, i32 undef, i8 1, i32 4)  ; RawBufferLoad(srv,index,elementOffset,mask,alignment)
  %806 = extractvalue %dx.types.ResRet.i32 %805, 0
  %807 = icmp eq i32 %637, -1
  %808 = add i32 %715, %637
  %809 = shl i32 %808, 2
  %810 = call %dx.types.ResRet.i32 @dx.op.rawBufferLoad.i32(i32 139, %dx.types.Handle %707, i32 %809, i32 undef, i8 1, i32 4)  ; RawBufferLoad(srv,index,elementOffset,mask,alignment)
  %811 = extractvalue %dx.types.ResRet.i32 %810, 0
  %812 = shl i32 %811, 10
  %813 = or i32 %812, %716
  %814 = call %dx.types.ResRet.i32 @dx.op.rawBufferLoad.i32(i32 139, %dx.types.Handle %708, i32 %813, i32 undef, i8 1, i32 4)  ; RawBufferLoad(srv,index,elementOffset,mask,alignment)
  %815 = extractvalue %dx.types.ResRet.i32 %814, 0
  %816 = select i1 %807, i32 -1, i32 %815
  %817 = add i32 %718, %637
  %818 = shl i32 %817, 2
  %819 = call %dx.types.ResRet.i32 @dx.op.rawBufferLoad.i32(i32 139, %dx.types.Handle %707, i32 %818, i32 undef, i8 1, i32 4)  ; RawBufferLoad(srv,index,elementOffset,mask,alignment)
  %820 = extractvalue %dx.types.ResRet.i32 %819, 0
  %821 = shl i32 %820, 10
  %822 = or i32 %821, %719
  %823 = call %dx.types.ResRet.i32 @dx.op.rawBufferLoad.i32(i32 139, %dx.types.Handle %708, i32 %822, i32 undef, i8 1, i32 4)  ; RawBufferLoad(srv,index,elementOffset,mask,alignment)
  %824 = extractvalue %dx.types.ResRet.i32 %823, 0
  br label %825

; <label>:825                                     ; preds = %850, %720
  %826 = phi i32 [ %962, %850 ], [ 0, %720 ]
  %827 = and i32 %425, 268435455
  %828 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %827)  ; Countbits(value)
  %829 = shl i32 %828, 4
  %830 = add i32 %829, %439
  %831 = call %dx.types.Handle @dx.op.createHandleForLib.struct.ByteAddressBuffer(i32 160, %struct.ByteAddressBuffer %12)  ; CreateHandleForLib(Resource)
  %832 = call %dx.types.ResRet.i32 @dx.op.rawBufferLoad.i32(i32 139, %dx.types.Handle %831, i32 %830, i32 undef, i8 15, i32 4)  ; RawBufferLoad(srv,index,elementOffset,mask,alignment)
  %833 = extractvalue %dx.types.ResRet.i32 %832, 1
  %834 = lshr i32 %833, 17
  %835 = and i32 %834, 1
  %836 = add nuw nsw i32 %835, 1
  %837 = lshr i32 %833, 18
  %838 = and i32 %837, 1
  %839 = add nuw nsw i32 %836, %838
  %840 = lshr i32 %833, 19
  %841 = and i32 %840, 1
  %842 = add nuw nsw i32 %839, %841
  %843 = icmp slt i32 %826, %842
  br i1 %843, label %850, label %844

; <label>:844                                     ; preds = %825
  %845 = uitofp i32 %732 to float
  %846 = uitofp i32 %738 to float
  %847 = uitofp i32 %754 to float
  %848 = uitofp i32 %768 to float
  %849 = extractvalue %dx.types.ResRet.i32 %783, 0
  br label %963

; <label>:850                                     ; preds = %825
  %851 = mul nuw nsw i32 %842, %703
  %852 = add i32 %851, %826
  %853 = shl i32 %852, 3
  %854 = lshr i32 %852, 7
  %855 = and i32 %854, 4194303
  %856 = add i32 %855, %638
  %857 = shl i32 %856, 2
  %858 = call %dx.types.Handle @dx.op.createHandleForLib.struct.ByteAddressBuffer(i32 160, %struct.ByteAddressBuffer %5)  ; CreateHandleForLib(Resource)
  %859 = call %dx.types.ResRet.i32 @dx.op.rawBufferLoad.i32(i32 139, %dx.types.Handle %858, i32 %857, i32 undef, i8 1, i32 4)  ; RawBufferLoad(srv,index,elementOffset,mask,alignment)
  %860 = extractvalue %dx.types.ResRet.i32 %859, 0
  %861 = shl i32 %860, 10
  %862 = and i32 %853, 1016
  %863 = or i32 %862, %861
  %864 = call %dx.types.Handle @dx.op.createHandleForLib.struct.ByteAddressBuffer(i32 160, %struct.ByteAddressBuffer %6)  ; CreateHandleForLib(Resource)
  %865 = call %dx.types.ResRet.i32 @dx.op.rawBufferLoad.i32(i32 139, %dx.types.Handle %864, i32 %863, i32 undef, i8 3, i32 4)  ; RawBufferLoad(srv,index,elementOffset,mask,alignment)
  %866 = extractvalue %dx.types.ResRet.i32 %865, 0
  %867 = extractvalue %dx.types.ResRet.i32 %865, 1
  %868 = mul i32 %826, 3
  %869 = add i32 0, %868
  %870 = mul i32 %869, 2
  %871 = add i32 0, %870
  %872 = getelementptr [24 x float], [24 x float]* %34, i32 0, i32 %871
  %873 = bitcast float* %872 to i32*
  store i32 %866, i32* %873, align 4
  %874 = mul i32 %826, 3
  %875 = add i32 0, %874
  %876 = mul i32 %875, 2
  %877 = add i32 1, %876
  %878 = getelementptr [24 x float], [24 x float]* %34, i32 0, i32 %877
  %879 = bitcast float* %878 to i32*
  store i32 %867, i32* %879, align 4
  %880 = call %dx.types.Handle @dx.op.createHandleForLib.struct.ByteAddressBuffer(i32 160, %struct.ByteAddressBuffer %12)  ; CreateHandleForLib(Resource)
  %881 = call %dx.types.ResRet.i32 @dx.op.rawBufferLoad.i32(i32 139, %dx.types.Handle %880, i32 %830, i32 undef, i8 15, i32 4)  ; RawBufferLoad(srv,index,elementOffset,mask,alignment)
  %882 = extractvalue %dx.types.ResRet.i32 %881, 1
  %883 = lshr i32 %882, 17
  %884 = and i32 %883, 1
  %885 = add nuw nsw i32 %884, 1
  %886 = lshr i32 %882, 18
  %887 = and i32 %886, 1
  %888 = add nuw nsw i32 %885, %887
  %889 = lshr i32 %882, 19
  %890 = and i32 %889, 1
  %891 = add nuw nsw i32 %888, %890
  %892 = mul nuw nsw i32 %891, %704
  %893 = add i32 %892, %826
  %894 = shl i32 %893, 3
  %895 = lshr i32 %893, 7
  %896 = and i32 %895, 4194303
  %897 = add i32 %896, %638
  %898 = shl i32 %897, 2
  %899 = call %dx.types.Handle @dx.op.createHandleForLib.struct.ByteAddressBuffer(i32 160, %struct.ByteAddressBuffer %5)  ; CreateHandleForLib(Resource)
  %900 = call %dx.types.ResRet.i32 @dx.op.rawBufferLoad.i32(i32 139, %dx.types.Handle %899, i32 %898, i32 undef, i8 1, i32 4)  ; RawBufferLoad(srv,index,elementOffset,mask,alignment)
  %901 = extractvalue %dx.types.ResRet.i32 %900, 0
  %902 = shl i32 %901, 10
  %903 = and i32 %894, 1016
  %904 = or i32 %903, %902
  %905 = call %dx.types.Handle @dx.op.createHandleForLib.struct.ByteAddressBuffer(i32 160, %struct.ByteAddressBuffer %6)  ; CreateHandleForLib(Resource)
  %906 = call %dx.types.ResRet.i32 @dx.op.rawBufferLoad.i32(i32 139, %dx.types.Handle %905, i32 %904, i32 undef, i8 3, i32 4)  ; RawBufferLoad(srv,index,elementOffset,mask,alignment)
  %907 = extractvalue %dx.types.ResRet.i32 %906, 0
  %908 = extractvalue %dx.types.ResRet.i32 %906, 1
  %909 = mul i32 %826, 3
  %910 = add i32 1, %909
  %911 = mul i32 %910, 2
  %912 = add i32 0, %911
  %913 = getelementptr [24 x float], [24 x float]* %34, i32 0, i32 %912
  %914 = bitcast float* %913 to i32*
  store i32 %907, i32* %914, align 4
  %915 = mul i32 %826, 3
  %916 = add i32 1, %915
  %917 = mul i32 %916, 2
  %918 = add i32 1, %917
  %919 = getelementptr [24 x float], [24 x float]* %34, i32 0, i32 %918
  %920 = bitcast float* %919 to i32*
  store i32 %908, i32* %920, align 4
  %921 = call %dx.types.Handle @dx.op.createHandleForLib.struct.ByteAddressBuffer(i32 160, %struct.ByteAddressBuffer %12)  ; CreateHandleForLib(Resource)
  %922 = call %dx.types.ResRet.i32 @dx.op.rawBufferLoad.i32(i32 139, %dx.types.Handle %921, i32 %830, i32 undef, i8 15, i32 4)  ; RawBufferLoad(srv,index,elementOffset,mask,alignment)
  %923 = extractvalue %dx.types.ResRet.i32 %922, 1
  %924 = lshr i32 %923, 17
  %925 = and i32 %924, 1
  %926 = add nuw nsw i32 %925, 1
  %927 = lshr i32 %923, 18
  %928 = and i32 %927, 1
  %929 = add nuw nsw i32 %926, %928
  %930 = lshr i32 %923, 19
  %931 = and i32 %930, 1
  %932 = add nuw nsw i32 %929, %931
  %933 = mul nuw nsw i32 %932, %705
  %934 = add i32 %933, %826
  %935 = shl i32 %934, 3
  %936 = lshr i32 %934, 7
  %937 = and i32 %936, 4194303
  %938 = add i32 %937, %638
  %939 = shl i32 %938, 2
  %940 = call %dx.types.Handle @dx.op.createHandleForLib.struct.ByteAddressBuffer(i32 160, %struct.ByteAddressBuffer %5)  ; CreateHandleForLib(Resource)
  %941 = call %dx.types.ResRet.i32 @dx.op.rawBufferLoad.i32(i32 139, %dx.types.Handle %940, i32 %939, i32 undef, i8 1, i32 4)  ; RawBufferLoad(srv,index,elementOffset,mask,alignment)
  %942 = extractvalue %dx.types.ResRet.i32 %941, 0
  %943 = shl i32 %942, 10
  %944 = and i32 %935, 1016
  %945 = or i32 %944, %943
  %946 = call %dx.types.Handle @dx.op.createHandleForLib.struct.ByteAddressBuffer(i32 160, %struct.ByteAddressBuffer %6)  ; CreateHandleForLib(Resource)
  %947 = call %dx.types.ResRet.i32 @dx.op.rawBufferLoad.i32(i32 139, %dx.types.Handle %946, i32 %945, i32 undef, i8 3, i32 4)  ; RawBufferLoad(srv,index,elementOffset,mask,alignment)
  %948 = extractvalue %dx.types.ResRet.i32 %947, 0
  %949 = extractvalue %dx.types.ResRet.i32 %947, 1
  %950 = mul i32 %826, 3
  %951 = add i32 2, %950
  %952 = mul i32 %951, 2
  %953 = add i32 0, %952
  %954 = getelementptr [24 x float], [24 x float]* %34, i32 0, i32 %953
  %955 = bitcast float* %954 to i32*
  store i32 %948, i32* %955, align 4
  %956 = mul i32 %826, 3
  %957 = add i32 2, %956
  %958 = mul i32 %957, 2
  %959 = add i32 1, %958
  %960 = getelementptr [24 x float], [24 x float]* %34, i32 0, i32 %959
  %961 = bitcast float* %960 to i32*
  store i32 %949, i32* %961, align 4
  %962 = add nuw nsw i32 %826, 1
  br label %825, !llvm.loop !104

; <label>:963                                     ; preds = %978, %844
  %964 = phi i32 [ %1017, %978 ], [ 1, %844 ]
  %965 = call %dx.types.Handle @dx.op.createHandleForLib.struct.ByteAddressBuffer(i32 160, %struct.ByteAddressBuffer %12)  ; CreateHandleForLib(Resource)
  %966 = call %dx.types.ResRet.i32 @dx.op.rawBufferLoad.i32(i32 139, %dx.types.Handle %965, i32 %830, i32 undef, i8 15, i32 4)  ; RawBufferLoad(srv,index,elementOffset,mask,alignment)
  %967 = extractvalue %dx.types.ResRet.i32 %966, 1
  %968 = lshr i32 %967, 17
  %969 = and i32 %968, 1
  %970 = add nuw nsw i32 %969, 1
  %971 = lshr i32 %967, 18
  %972 = and i32 %971, 1
  %973 = add nuw nsw i32 %970, %972
  %974 = lshr i32 %967, 19
  %975 = and i32 %974, 1
  %976 = add nuw nsw i32 %973, %975
  %977 = icmp slt i32 %964, %976
  br i1 %977, label %978, label %1287

; <label>:978                                     ; preds = %963
  %979 = add nsw i32 %964, -1
  %980 = getelementptr inbounds [3 x i32], [3 x i32]* %36, i32 0, i32 %979
  %981 = load i32, i32* %980, align 4, !tbaa !99, !noalias !60
  %982 = add i32 %981, %712
  %983 = shl i32 %982, 2
  %984 = call %dx.types.Handle @dx.op.createHandleForLib.struct.ByteAddressBuffer(i32 160, %struct.ByteAddressBuffer %5)  ; CreateHandleForLib(Resource)
  %985 = call %dx.types.ResRet.i32 @dx.op.rawBufferLoad.i32(i32 139, %dx.types.Handle %984, i32 %983, i32 undef, i8 1, i32 4)  ; RawBufferLoad(srv,index,elementOffset,mask,alignment)
  %986 = extractvalue %dx.types.ResRet.i32 %985, 0
  %987 = shl i32 %986, 10
  %988 = or i32 %987, %713
  %989 = call %dx.types.Handle @dx.op.createHandleForLib.struct.ByteAddressBuffer(i32 160, %struct.ByteAddressBuffer %6)  ; CreateHandleForLib(Resource)
  %990 = call %dx.types.ResRet.i32 @dx.op.rawBufferLoad.i32(i32 139, %dx.types.Handle %989, i32 %988, i32 undef, i8 1, i32 4)  ; RawBufferLoad(srv,index,elementOffset,mask,alignment)
  %991 = extractvalue %dx.types.ResRet.i32 %990, 0
  %992 = mul i32 %979, 3
  %993 = add i32 0, %992
  %994 = getelementptr [9 x i32], [9 x i32]* %35, i32 0, i32 %993
  store i32 %991, i32* %994, align 4, !tbaa !99, !alias.scope !106, !noalias !107
  %995 = add i32 %981, %715
  %996 = shl i32 %995, 2
  %997 = call %dx.types.ResRet.i32 @dx.op.rawBufferLoad.i32(i32 139, %dx.types.Handle %984, i32 %996, i32 undef, i8 1, i32 4)  ; RawBufferLoad(srv,index,elementOffset,mask,alignment)
  %998 = extractvalue %dx.types.ResRet.i32 %997, 0
  %999 = shl i32 %998, 10
  %1000 = or i32 %999, %716
  %1001 = call %dx.types.ResRet.i32 @dx.op.rawBufferLoad.i32(i32 139, %dx.types.Handle %989, i32 %1000, i32 undef, i8 1, i32 4)  ; RawBufferLoad(srv,index,elementOffset,mask,alignment)
  %1002 = extractvalue %dx.types.ResRet.i32 %1001, 0
  %1003 = mul i32 %979, 3
  %1004 = add i32 1, %1003
  %1005 = getelementptr [9 x i32], [9 x i32]* %35, i32 0, i32 %1004
  store i32 %1002, i32* %1005, align 4, !tbaa !99, !alias.scope !106, !noalias !107
  %1006 = add i32 %981, %718
  %1007 = shl i32 %1006, 2
  %1008 = call %dx.types.ResRet.i32 @dx.op.rawBufferLoad.i32(i32 139, %dx.types.Handle %984, i32 %1007, i32 undef, i8 1, i32 4)  ; RawBufferLoad(srv,index,elementOffset,mask,alignment)
  %1009 = extractvalue %dx.types.ResRet.i32 %1008, 0
  %1010 = shl i32 %1009, 10
  %1011 = or i32 %1010, %719
  %1012 = call %dx.types.ResRet.i32 @dx.op.rawBufferLoad.i32(i32 139, %dx.types.Handle %989, i32 %1011, i32 undef, i8 1, i32 4)  ; RawBufferLoad(srv,index,elementOffset,mask,alignment)
  %1013 = extractvalue %dx.types.ResRet.i32 %1012, 0
  %1014 = mul i32 %979, 3
  %1015 = add i32 2, %1014
  %1016 = getelementptr [9 x i32], [9 x i32]* %35, i32 0, i32 %1015
  store i32 %1013, i32* %1016, align 4, !tbaa !99, !alias.scope !106, !noalias !107
  %1017 = add nuw nsw i32 %964, 1
  br label %963, !llvm.loop !108

; <label>:1018                                    ; preds = %631
  %1019 = icmp eq i32 %392, 4
  %1020 = add i32 %712, %638
  %1021 = shl i32 %1020, 2
  %1022 = getelementptr [24 x float], [24 x float]* %34, i32 0, i32 0
  %1023 = getelementptr [24 x float], [24 x float]* %34, i32 0, i32 1
  %1024 = add i32 %715, %638
  %1025 = shl i32 %1024, 2
  %1026 = getelementptr [24 x float], [24 x float]* %34, i32 0, i32 2
  %1027 = getelementptr [24 x float], [24 x float]* %34, i32 0, i32 3
  %1028 = add i32 %718, %638
  %1029 = shl i32 %1028, 2
  %1030 = getelementptr [24 x float], [24 x float]* %34, i32 0, i32 4
  %1031 = getelementptr [24 x float], [24 x float]* %34, i32 0, i32 5
  br i1 %1019, label %1032, label %1142

; <label>:1032                                    ; preds = %1018
  %1033 = add i32 %706, %639
  %1034 = call %dx.types.Handle @dx.op.createHandleForLib.struct.ByteAddressBuffer(i32 160, %struct.ByteAddressBuffer %13)  ; CreateHandleForLib(Resource)
  %1035 = call %dx.types.ResRet.i32 @dx.op.rawBufferLoad.i32(i32 139, %dx.types.Handle %1034, i32 %1033, i32 undef, i8 3, i32 4)  ; RawBufferLoad(srv,index,elementOffset,mask,alignment)
  %1036 = extractvalue %dx.types.ResRet.i32 %1035, 0
  %1037 = extractvalue %dx.types.ResRet.i32 %1035, 1
  %1038 = and i32 %1036, 2097151
  %1039 = uitofp i32 %1038 to float
  %1040 = lshr i32 %1036, 21
  %1041 = shl i32 %1037, 11
  %1042 = and i32 %1041, 2095104
  %1043 = or i32 %1042, %1040
  %1044 = uitofp i32 %1043 to float
  %1045 = lshr i32 %1037, 10
  %1046 = and i32 %1045, 2097151
  %1047 = uitofp i32 %1046 to float
  %1048 = fdiv float %1039, 2.097151e+06
  %1049 = fdiv float %1044, 2.097151e+06
  %1050 = fdiv float %1047, 2.097151e+06
  %1051 = fmul float %1048, 2.000000e+00
  %1052 = fmul float %1049, 2.000000e+00
  %1053 = fmul float %1050, 2.000000e+00
  %1054 = fadd float %1051, -1.000000e+00
  %1055 = fadd float %1052, -1.000000e+00
  %1056 = fadd float %1053, -1.000000e+00
  %1057 = add i32 %709, %639
  %1058 = call %dx.types.ResRet.i32 @dx.op.rawBufferLoad.i32(i32 139, %dx.types.Handle %1034, i32 %1057, i32 undef, i8 3, i32 4)  ; RawBufferLoad(srv,index,elementOffset,mask,alignment)
  %1059 = extractvalue %dx.types.ResRet.i32 %1058, 0
  %1060 = extractvalue %dx.types.ResRet.i32 %1058, 1
  %1061 = and i32 %1059, 2097151
  %1062 = uitofp i32 %1061 to float
  %1063 = lshr i32 %1059, 21
  %1064 = shl i32 %1060, 11
  %1065 = and i32 %1064, 2095104
  %1066 = or i32 %1065, %1063
  %1067 = uitofp i32 %1066 to float
  %1068 = lshr i32 %1060, 10
  %1069 = and i32 %1068, 2097151
  %1070 = uitofp i32 %1069 to float
  %1071 = fdiv float %1062, 2.097151e+06
  %1072 = fdiv float %1067, 2.097151e+06
  %1073 = fdiv float %1070, 2.097151e+06
  %1074 = fmul float %1071, 2.000000e+00
  %1075 = fmul float %1072, 2.000000e+00
  %1076 = fmul float %1073, 2.000000e+00
  %1077 = fadd float %1074, -1.000000e+00
  %1078 = fadd float %1075, -1.000000e+00
  %1079 = fadd float %1076, -1.000000e+00
  %1080 = add i32 %710, %639
  %1081 = call %dx.types.ResRet.i32 @dx.op.rawBufferLoad.i32(i32 139, %dx.types.Handle %1034, i32 %1080, i32 undef, i8 3, i32 4)  ; RawBufferLoad(srv,index,elementOffset,mask,alignment)
  %1082 = extractvalue %dx.types.ResRet.i32 %1081, 0
  %1083 = extractvalue %dx.types.ResRet.i32 %1081, 1
  %1084 = and i32 %1082, 2097151
  %1085 = uitofp i32 %1084 to float
  %1086 = lshr i32 %1082, 21
  %1087 = shl i32 %1083, 11
  %1088 = and i32 %1087, 2095104
  %1089 = or i32 %1088, %1086
  %1090 = uitofp i32 %1089 to float
  %1091 = lshr i32 %1083, 10
  %1092 = and i32 %1091, 2097151
  %1093 = uitofp i32 %1092 to float
  %1094 = fdiv float %1085, 2.097151e+06
  %1095 = fdiv float %1090, 2.097151e+06
  %1096 = fdiv float %1093, 2.097151e+06
  %1097 = fmul float %1094, 2.000000e+00
  %1098 = fmul float %1095, 2.000000e+00
  %1099 = fmul float %1096, 2.000000e+00
  %1100 = fadd float %1097, -1.000000e+00
  %1101 = fadd float %1098, -1.000000e+00
  %1102 = fadd float %1099, -1.000000e+00
  %1103 = add i32 %711, %636
  %1104 = call %dx.types.ResRet.i32 @dx.op.rawBufferLoad.i32(i32 139, %dx.types.Handle %1034, i32 %1103, i32 undef, i8 1, i32 4)  ; RawBufferLoad(srv,index,elementOffset,mask,alignment)
  %1105 = extractvalue %dx.types.ResRet.i32 %1104, 0
  %1106 = add i32 %714, %636
  %1107 = call %dx.types.ResRet.i32 @dx.op.rawBufferLoad.i32(i32 139, %dx.types.Handle %1034, i32 %1106, i32 undef, i8 1, i32 4)  ; RawBufferLoad(srv,index,elementOffset,mask,alignment)
  %1108 = extractvalue %dx.types.ResRet.i32 %1107, 0
  %1109 = add i32 %717, %636
  %1110 = call %dx.types.ResRet.i32 @dx.op.rawBufferLoad.i32(i32 139, %dx.types.Handle %1034, i32 %1109, i32 undef, i8 1, i32 4)  ; RawBufferLoad(srv,index,elementOffset,mask,alignment)
  %1111 = extractvalue %dx.types.ResRet.i32 %1110, 0
  %1112 = call %dx.types.ResRet.i32 @dx.op.rawBufferLoad.i32(i32 139, %dx.types.Handle %707, i32 %1021, i32 undef, i8 1, i32 4)  ; RawBufferLoad(srv,index,elementOffset,mask,alignment)
  %1113 = extractvalue %dx.types.ResRet.i32 %1112, 0
  %1114 = shl i32 %1113, 10
  %1115 = or i32 %1114, %713
  %1116 = call %dx.types.ResRet.i32 @dx.op.rawBufferLoad.i32(i32 139, %dx.types.Handle %708, i32 %1115, i32 undef, i8 1, i32 4)  ; RawBufferLoad(srv,index,elementOffset,mask,alignment)
  %1117 = extractvalue %dx.types.ResRet.i32 %1116, 0
  %1118 = and i32 %1117, 65535
  %1119 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1118), !dx.precise !89  ; LegacyF16ToF32(value)
  %1120 = lshr i32 %1117, 16
  %1121 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1120), !dx.precise !89  ; LegacyF16ToF32(value)
  store float %1119, float* %1022, align 4
  store float %1121, float* %1023, align 4
  %1122 = call %dx.types.ResRet.i32 @dx.op.rawBufferLoad.i32(i32 139, %dx.types.Handle %707, i32 %1025, i32 undef, i8 1, i32 4)  ; RawBufferLoad(srv,index,elementOffset,mask,alignment)
  %1123 = extractvalue %dx.types.ResRet.i32 %1122, 0
  %1124 = shl i32 %1123, 10
  %1125 = or i32 %1124, %716
  %1126 = call %dx.types.ResRet.i32 @dx.op.rawBufferLoad.i32(i32 139, %dx.types.Handle %708, i32 %1125, i32 undef, i8 1, i32 4)  ; RawBufferLoad(srv,index,elementOffset,mask,alignment)
  %1127 = extractvalue %dx.types.ResRet.i32 %1126, 0
  %1128 = and i32 %1127, 65535
  %1129 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1128), !dx.precise !89  ; LegacyF16ToF32(value)
  %1130 = lshr i32 %1127, 16
  %1131 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1130), !dx.precise !89  ; LegacyF16ToF32(value)
  store float %1129, float* %1026, align 4
  store float %1131, float* %1027, align 4
  %1132 = call %dx.types.ResRet.i32 @dx.op.rawBufferLoad.i32(i32 139, %dx.types.Handle %707, i32 %1029, i32 undef, i8 1, i32 4)  ; RawBufferLoad(srv,index,elementOffset,mask,alignment)
  %1133 = extractvalue %dx.types.ResRet.i32 %1132, 0
  %1134 = shl i32 %1133, 10
  %1135 = or i32 %1134, %719
  %1136 = call %dx.types.ResRet.i32 @dx.op.rawBufferLoad.i32(i32 139, %dx.types.Handle %708, i32 %1135, i32 undef, i8 1, i32 4)  ; RawBufferLoad(srv,index,elementOffset,mask,alignment)
  %1137 = extractvalue %dx.types.ResRet.i32 %1136, 0
  %1138 = and i32 %1137, 65535
  %1139 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1138), !dx.precise !89  ; LegacyF16ToF32(value)
  %1140 = lshr i32 %1137, 16
  %1141 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1140), !dx.precise !89  ; LegacyF16ToF32(value)
  store float %1139, float* %1030, align 4
  store float %1141, float* %1031, align 4
  br label %1294

; <label>:1142                                    ; preds = %1018
  %1143 = lshr i32 %703, 7
  %1144 = add i32 %1143, %639
  %1145 = shl i32 %1144, 2
  %1146 = call %dx.types.ResRet.i32 @dx.op.rawBufferLoad.i32(i32 139, %dx.types.Handle %707, i32 %1145, i32 undef, i8 1, i32 4)  ; RawBufferLoad(srv,index,elementOffset,mask,alignment)
  %1147 = extractvalue %dx.types.ResRet.i32 %1146, 0
  %1148 = shl i32 %1147, 10
  %1149 = and i32 %706, 1016
  %1150 = or i32 %1148, %1149
  %1151 = call %dx.types.ResRet.i32 @dx.op.rawBufferLoad.i32(i32 139, %dx.types.Handle %708, i32 %1150, i32 undef, i8 3, i32 4)  ; RawBufferLoad(srv,index,elementOffset,mask,alignment)
  %1152 = extractvalue %dx.types.ResRet.i32 %1151, 0
  %1153 = extractvalue %dx.types.ResRet.i32 %1151, 1
  %1154 = and i32 %1152, 2097151
  %1155 = uitofp i32 %1154 to float
  %1156 = lshr i32 %1152, 21
  %1157 = shl i32 %1153, 11
  %1158 = and i32 %1157, 2095104
  %1159 = or i32 %1158, %1156
  %1160 = uitofp i32 %1159 to float
  %1161 = lshr i32 %1153, 10
  %1162 = and i32 %1161, 2097151
  %1163 = uitofp i32 %1162 to float
  %1164 = fdiv float %1155, 2.097151e+06
  %1165 = fdiv float %1160, 2.097151e+06
  %1166 = fdiv float %1163, 2.097151e+06
  %1167 = fmul float %1164, 2.000000e+00
  %1168 = fmul float %1165, 2.000000e+00
  %1169 = fmul float %1166, 2.000000e+00
  %1170 = fadd float %1167, -1.000000e+00
  %1171 = fadd float %1168, -1.000000e+00
  %1172 = fadd float %1169, -1.000000e+00
  %1173 = lshr i32 %704, 7
  %1174 = add i32 %1173, %639
  %1175 = shl i32 %1174, 2
  %1176 = call %dx.types.ResRet.i32 @dx.op.rawBufferLoad.i32(i32 139, %dx.types.Handle %707, i32 %1175, i32 undef, i8 1, i32 4)  ; RawBufferLoad(srv,index,elementOffset,mask,alignment)
  %1177 = extractvalue %dx.types.ResRet.i32 %1176, 0
  %1178 = shl i32 %1177, 10
  %1179 = and i32 %709, 1016
  %1180 = or i32 %1178, %1179
  %1181 = call %dx.types.ResRet.i32 @dx.op.rawBufferLoad.i32(i32 139, %dx.types.Handle %708, i32 %1180, i32 undef, i8 3, i32 4)  ; RawBufferLoad(srv,index,elementOffset,mask,alignment)
  %1182 = extractvalue %dx.types.ResRet.i32 %1181, 0
  %1183 = extractvalue %dx.types.ResRet.i32 %1181, 1
  %1184 = and i32 %1182, 2097151
  %1185 = uitofp i32 %1184 to float
  %1186 = lshr i32 %1182, 21
  %1187 = shl i32 %1183, 11
  %1188 = and i32 %1187, 2095104
  %1189 = or i32 %1188, %1186
  %1190 = uitofp i32 %1189 to float
  %1191 = lshr i32 %1183, 10
  %1192 = and i32 %1191, 2097151
  %1193 = uitofp i32 %1192 to float
  %1194 = fdiv float %1185, 2.097151e+06
  %1195 = fdiv float %1190, 2.097151e+06
  %1196 = fdiv float %1193, 2.097151e+06
  %1197 = fmul float %1194, 2.000000e+00
  %1198 = fmul float %1195, 2.000000e+00
  %1199 = fmul float %1196, 2.000000e+00
  %1200 = fadd float %1197, -1.000000e+00
  %1201 = fadd float %1198, -1.000000e+00
  %1202 = fadd float %1199, -1.000000e+00
  %1203 = lshr i32 %705, 7
  %1204 = add i32 %1203, %639
  %1205 = shl i32 %1204, 2
  %1206 = call %dx.types.ResRet.i32 @dx.op.rawBufferLoad.i32(i32 139, %dx.types.Handle %707, i32 %1205, i32 undef, i8 1, i32 4)  ; RawBufferLoad(srv,index,elementOffset,mask,alignment)
  %1207 = extractvalue %dx.types.ResRet.i32 %1206, 0
  %1208 = shl i32 %1207, 10
  %1209 = and i32 %710, 1016
  %1210 = or i32 %1208, %1209
  %1211 = call %dx.types.ResRet.i32 @dx.op.rawBufferLoad.i32(i32 139, %dx.types.Handle %708, i32 %1210, i32 undef, i8 3, i32 4)  ; RawBufferLoad(srv,index,elementOffset,mask,alignment)
  %1212 = extractvalue %dx.types.ResRet.i32 %1211, 0
  %1213 = extractvalue %dx.types.ResRet.i32 %1211, 1
  %1214 = and i32 %1212, 2097151
  %1215 = uitofp i32 %1214 to float
  %1216 = lshr i32 %1212, 21
  %1217 = shl i32 %1213, 11
  %1218 = and i32 %1217, 2095104
  %1219 = or i32 %1218, %1216
  %1220 = uitofp i32 %1219 to float
  %1221 = lshr i32 %1213, 10
  %1222 = and i32 %1221, 2097151
  %1223 = uitofp i32 %1222 to float
  %1224 = fdiv float %1215, 2.097151e+06
  %1225 = fdiv float %1220, 2.097151e+06
  %1226 = fdiv float %1223, 2.097151e+06
  %1227 = fmul float %1224, 2.000000e+00
  %1228 = fmul float %1225, 2.000000e+00
  %1229 = fmul float %1226, 2.000000e+00
  %1230 = fadd float %1227, -1.000000e+00
  %1231 = fadd float %1228, -1.000000e+00
  %1232 = fadd float %1229, -1.000000e+00
  %1233 = add i32 %712, %636
  %1234 = shl i32 %1233, 2
  %1235 = call %dx.types.ResRet.i32 @dx.op.rawBufferLoad.i32(i32 139, %dx.types.Handle %707, i32 %1234, i32 undef, i8 1, i32 4)  ; RawBufferLoad(srv,index,elementOffset,mask,alignment)
  %1236 = extractvalue %dx.types.ResRet.i32 %1235, 0
  %1237 = shl i32 %1236, 10
  %1238 = or i32 %1237, %713
  %1239 = call %dx.types.ResRet.i32 @dx.op.rawBufferLoad.i32(i32 139, %dx.types.Handle %708, i32 %1238, i32 undef, i8 1, i32 4)  ; RawBufferLoad(srv,index,elementOffset,mask,alignment)
  %1240 = extractvalue %dx.types.ResRet.i32 %1239, 0
  %1241 = add i32 %715, %636
  %1242 = shl i32 %1241, 2
  %1243 = call %dx.types.ResRet.i32 @dx.op.rawBufferLoad.i32(i32 139, %dx.types.Handle %707, i32 %1242, i32 undef, i8 1, i32 4)  ; RawBufferLoad(srv,index,elementOffset,mask,alignment)
  %1244 = extractvalue %dx.types.ResRet.i32 %1243, 0
  %1245 = shl i32 %1244, 10
  %1246 = or i32 %1245, %716
  %1247 = call %dx.types.ResRet.i32 @dx.op.rawBufferLoad.i32(i32 139, %dx.types.Handle %708, i32 %1246, i32 undef, i8 1, i32 4)  ; RawBufferLoad(srv,index,elementOffset,mask,alignment)
  %1248 = extractvalue %dx.types.ResRet.i32 %1247, 0
  %1249 = add i32 %718, %636
  %1250 = shl i32 %1249, 2
  %1251 = call %dx.types.ResRet.i32 @dx.op.rawBufferLoad.i32(i32 139, %dx.types.Handle %707, i32 %1250, i32 undef, i8 1, i32 4)  ; RawBufferLoad(srv,index,elementOffset,mask,alignment)
  %1252 = extractvalue %dx.types.ResRet.i32 %1251, 0
  %1253 = shl i32 %1252, 10
  %1254 = or i32 %1253, %719
  %1255 = call %dx.types.ResRet.i32 @dx.op.rawBufferLoad.i32(i32 139, %dx.types.Handle %708, i32 %1254, i32 undef, i8 1, i32 4)  ; RawBufferLoad(srv,index,elementOffset,mask,alignment)
  %1256 = extractvalue %dx.types.ResRet.i32 %1255, 0
  %1257 = call %dx.types.ResRet.i32 @dx.op.rawBufferLoad.i32(i32 139, %dx.types.Handle %707, i32 %1021, i32 undef, i8 1, i32 4)  ; RawBufferLoad(srv,index,elementOffset,mask,alignment)
  %1258 = extractvalue %dx.types.ResRet.i32 %1257, 0
  %1259 = shl i32 %1258, 10
  %1260 = or i32 %1259, %713
  %1261 = call %dx.types.ResRet.i32 @dx.op.rawBufferLoad.i32(i32 139, %dx.types.Handle %708, i32 %1260, i32 undef, i8 1, i32 4)  ; RawBufferLoad(srv,index,elementOffset,mask,alignment)
  %1262 = extractvalue %dx.types.ResRet.i32 %1261, 0
  %1263 = and i32 %1262, 65535
  %1264 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1263), !dx.precise !89  ; LegacyF16ToF32(value)
  %1265 = lshr i32 %1262, 16
  %1266 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1265), !dx.precise !89  ; LegacyF16ToF32(value)
  store float %1264, float* %1022, align 4
  store float %1266, float* %1023, align 4
  %1267 = call %dx.types.ResRet.i32 @dx.op.rawBufferLoad.i32(i32 139, %dx.types.Handle %707, i32 %1025, i32 undef, i8 1, i32 4)  ; RawBufferLoad(srv,index,elementOffset,mask,alignment)
  %1268 = extractvalue %dx.types.ResRet.i32 %1267, 0
  %1269 = shl i32 %1268, 10
  %1270 = or i32 %1269, %716
  %1271 = call %dx.types.ResRet.i32 @dx.op.rawBufferLoad.i32(i32 139, %dx.types.Handle %708, i32 %1270, i32 undef, i8 1, i32 4)  ; RawBufferLoad(srv,index,elementOffset,mask,alignment)
  %1272 = extractvalue %dx.types.ResRet.i32 %1271, 0
  %1273 = and i32 %1272, 65535
  %1274 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1273), !dx.precise !89  ; LegacyF16ToF32(value)
  %1275 = lshr i32 %1272, 16
  %1276 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1275), !dx.precise !89  ; LegacyF16ToF32(value)
  store float %1274, float* %1026, align 4
  store float %1276, float* %1027, align 4
  %1277 = call %dx.types.ResRet.i32 @dx.op.rawBufferLoad.i32(i32 139, %dx.types.Handle %707, i32 %1029, i32 undef, i8 1, i32 4)  ; RawBufferLoad(srv,index,elementOffset,mask,alignment)
  %1278 = extractvalue %dx.types.ResRet.i32 %1277, 0
  %1279 = shl i32 %1278, 10
  %1280 = or i32 %1279, %719
  %1281 = call %dx.types.ResRet.i32 @dx.op.rawBufferLoad.i32(i32 139, %dx.types.Handle %708, i32 %1280, i32 undef, i8 1, i32 4)  ; RawBufferLoad(srv,index,elementOffset,mask,alignment)
  %1282 = extractvalue %dx.types.ResRet.i32 %1281, 0
  %1283 = and i32 %1282, 65535
  %1284 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1283), !dx.precise !89  ; LegacyF16ToF32(value)
  %1285 = lshr i32 %1282, 16
  %1286 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1285), !dx.precise !89  ; LegacyF16ToF32(value)
  store float %1284, float* %1030, align 4
  store float %1286, float* %1031, align 4
  br label %1294

; <label>:1287                                    ; preds = %963
  %1288 = uitofp i32 %736 to float
  %1289 = uitofp i32 %750 to float
  %1290 = uitofp i32 %756 to float
  %1291 = extractvalue %dx.types.ResRet.i32 %790, 0
  %1292 = select i1 %807, i32 -1, i32 %806
  %1293 = select i1 %807, i32 -1, i32 %824
  br label %1294

; <label>:1294                                    ; preds = %1287, %1142, %1032
  %1295 = phi float [ %1100, %1032 ], [ %1230, %1142 ], [ %848, %1287 ]
  %1296 = phi float [ %1077, %1032 ], [ %1200, %1142 ], [ %1289, %1287 ]
  %1297 = phi float [ %1054, %1032 ], [ %1170, %1142 ], [ %845, %1287 ]
  %1298 = phi float [ %1101, %1032 ], [ %1231, %1142 ], [ %773, %1287 ]
  %1299 = phi float [ %1078, %1032 ], [ %1201, %1142 ], [ %847, %1287 ]
  %1300 = phi float [ %1055, %1032 ], [ %1171, %1142 ], [ %1288, %1287 ]
  %1301 = phi float [ %1102, %1032 ], [ %1232, %1142 ], [ %776, %1287 ]
  %1302 = phi float [ %1079, %1032 ], [ %1202, %1142 ], [ %1290, %1287 ]
  %1303 = phi float [ %1056, %1032 ], [ %1172, %1142 ], [ %846, %1287 ]
  %1304 = phi i32 [ %1111, %1032 ], [ %1256, %1142 ], [ %798, %1287 ]
  %1305 = phi i32 [ %1108, %1032 ], [ %1248, %1142 ], [ %1291, %1287 ]
  %1306 = phi i32 [ %1105, %1032 ], [ %1240, %1142 ], [ %849, %1287 ]
  %1307 = phi i32 [ %191, %1032 ], [ %191, %1142 ], [ %1293, %1287 ]
  %1308 = phi i32 [ %192, %1032 ], [ %192, %1142 ], [ %816, %1287 ]
  %1309 = phi i32 [ %193, %1032 ], [ %193, %1142 ], [ %1292, %1287 ]
  %1310 = fmul float %635, %1301
  %1311 = fmul float %635, %1298
  %1312 = fmul float %635, %1295
  %1313 = fadd float %634, %1310
  %1314 = fadd float %633, %1311
  %1315 = fadd float %632, %1312
  %1316 = fmul float %635, %1303
  %1317 = fmul float %635, %1302
  %1318 = fmul float %635, %1300
  %1319 = fmul float %635, %1299
  %1320 = fmul float %635, %1297
  %1321 = fmul float %635, %1296
  %1322 = fadd float %634, %1316
  %1323 = fadd float %634, %1317
  %1324 = fadd float %633, %1318
  %1325 = fadd float %633, %1319
  %1326 = fadd float %632, %1320
  %1327 = fadd float %632, %1321
  %1328 = lshr i32 %1306, 30
  %1329 = and i32 %1306, 1023
  %1330 = uitofp i32 %1329 to float
  %1331 = fdiv float %1330, 1.023000e+03
  %1332 = lshr i32 %1306, 10
  %1333 = and i32 %1332, 1023
  %1334 = uitofp i32 %1333 to float
  %1335 = fdiv float %1334, 1.023000e+03
  %1336 = lshr i32 %1306, 20
  %1337 = and i32 %1336, 511
  %1338 = uitofp i32 %1337 to float
  %1339 = fdiv float %1338, 5.110000e+02
  %1340 = fmul float %1331, 2.000000e+00
  %1341 = fmul float %1335, 2.000000e+00
  %1342 = fmul float %1339, 2.000000e+00
  %1343 = fadd float %1340, -1.000000e+00
  %1344 = fadd float %1341, -1.000000e+00
  %1345 = fadd float %1342, -1.000000e+00
  %1346 = fmul float %1343, 0x3FE6A09E60000000
  %1347 = fmul float %1344, 0x3FE6A09E60000000
  %1348 = fmul float %1345, 0x3FE6A09E60000000
  %1349 = call float @dx.op.dot3.f32(i32 55, float %1346, float %1347, float %1348, float %1346, float %1347, float %1348), !dx.precise !89  ; Dot3(ax,ay,az,bx,by,bz)
  %1350 = call float @dx.op.unary.f32(i32 7, float %1349), !dx.precise !89  ; Saturate(value)
  %1351 = fsub float 1.000000e+00, %1350
  %1352 = call float @dx.op.unary.f32(i32 24, float %1351), !dx.precise !89  ; Sqrt(value)
  %1353 = icmp eq i32 %1328, 0
  br i1 %1353, label %1360, label %1354

; <label>:1354                                    ; preds = %1294
  %1355 = icmp eq i32 %1328, 1
  br i1 %1355, label %1360, label %1356

; <label>:1356                                    ; preds = %1354
  %1357 = icmp eq i32 %1328, 2
  %1358 = select i1 %1357, float %1352, float %1348
  %1359 = select i1 %1357, float %1348, float %1352
  br label %1360

; <label>:1360                                    ; preds = %1356, %1354, %1294
  %1361 = phi float [ %1346, %1354 ], [ %1352, %1294 ], [ %1346, %1356 ]
  %1362 = phi float [ %1352, %1354 ], [ %1346, %1294 ], [ %1347, %1356 ]
  %1363 = phi float [ %1347, %1354 ], [ %1347, %1294 ], [ %1358, %1356 ]
  %1364 = phi float [ %1348, %1354 ], [ %1348, %1294 ], [ %1359, %1356 ]
  %1365 = fmul float %1361, 2.000000e+00
  %1366 = fmul float %1365, %1363
  %1367 = fmul float %1362, 2.000000e+00
  %1368 = fmul float %1367, %1364
  %1369 = fadd float %1366, %1368
  %1370 = fmul float %1367, %1363
  %1371 = fmul float %1365, %1364
  %1372 = fsub float %1370, %1371
  %1373 = fmul float %1361, %1365
  %1374 = fsub float 1.000000e+00, %1373
  %1375 = fmul float %1362, %1367
  %1376 = fsub float %1374, %1375
  br i1 %1353, label %1383, label %1377

; <label>:1377                                    ; preds = %1360
  %1378 = icmp eq i32 %1328, 1
  br i1 %1378, label %1383, label %1379

; <label>:1379                                    ; preds = %1377
  %1380 = icmp eq i32 %1328, 2
  %1381 = select i1 %1380, float %1352, float %1348
  %1382 = select i1 %1380, float %1348, float %1352
  br label %1383

; <label>:1383                                    ; preds = %1379, %1377, %1360
  %1384 = phi float [ %1346, %1377 ], [ %1352, %1360 ], [ %1346, %1379 ]
  %1385 = phi float [ %1352, %1377 ], [ %1346, %1360 ], [ %1347, %1379 ]
  %1386 = phi float [ %1347, %1377 ], [ %1347, %1360 ], [ %1381, %1379 ]
  %1387 = phi float [ %1348, %1377 ], [ %1348, %1360 ], [ %1382, %1379 ]
  %1388 = fmul float %1385, 2.000000e+00
  %1389 = fmul float %1385, %1388
  %1390 = fsub float 1.000000e+00, %1389
  %1391 = fmul float %1386, 2.000000e+00
  %1392 = fmul float %1386, %1391
  %1393 = fsub float %1390, %1392
  %1394 = fmul float %1384, 2.000000e+00
  %1395 = fmul float %1394, %1385
  %1396 = fmul float %1391, %1387
  %1397 = fadd float %1395, %1396
  %1398 = fmul float %1394, %1386
  %1399 = fmul float %1388, %1387
  %1400 = fsub float %1398, %1399
  %1401 = fmul float %1372, %1400
  %1402 = fmul float %1376, %1397
  %1403 = fsub float %1401, %1402
  %1404 = fmul float %1376, %1393
  %1405 = fmul float %1369, %1400
  %1406 = fsub float %1404, %1405
  %1407 = fmul float %1369, %1397
  %1408 = fmul float %1372, %1393
  %1409 = fsub float %1407, %1408
  %1410 = and i32 %1306, 536870912
  %1411 = icmp ne i32 %1410, 0
  %1412 = select i1 %1411, float -1.000000e+00, float 1.000000e+00
  %1413 = fmul float %1412, %1403
  %1414 = fmul float %1412, %1406
  %1415 = fmul float %1412, %1409
  %1416 = fmul float %672, %1326
  %1417 = call float @dx.op.tertiary.f32(i32 46, float %1324, float %675, float %1416), !dx.precise !89  ; FMad(a,b,c)
  %1418 = call float @dx.op.tertiary.f32(i32 46, float %1322, float %678, float %1417), !dx.precise !89  ; FMad(a,b,c)
  %1419 = fmul float %673, %1326
  %1420 = call float @dx.op.tertiary.f32(i32 46, float %1324, float %676, float %1419), !dx.precise !89  ; FMad(a,b,c)
  %1421 = call float @dx.op.tertiary.f32(i32 46, float %1322, float %679, float %1420), !dx.precise !89  ; FMad(a,b,c)
  %1422 = fmul float %674, %1326
  %1423 = call float @dx.op.tertiary.f32(i32 46, float %1324, float %677, float %1422), !dx.precise !89  ; FMad(a,b,c)
  %1424 = call float @dx.op.tertiary.f32(i32 46, float %1322, float %680, float %1423), !dx.precise !89  ; FMad(a,b,c)
  %1425 = fmul float %672, %1369
  %1426 = call float @dx.op.tertiary.f32(i32 46, float %1372, float %675, float %1425), !dx.precise !89  ; FMad(a,b,c)
  %1427 = call float @dx.op.tertiary.f32(i32 46, float %1376, float %678, float %1426), !dx.precise !89  ; FMad(a,b,c)
  %1428 = fmul float %673, %1369
  %1429 = call float @dx.op.tertiary.f32(i32 46, float %1372, float %676, float %1428), !dx.precise !89  ; FMad(a,b,c)
  %1430 = call float @dx.op.tertiary.f32(i32 46, float %1376, float %679, float %1429), !dx.precise !89  ; FMad(a,b,c)
  %1431 = fmul float %674, %1369
  %1432 = call float @dx.op.tertiary.f32(i32 46, float %1372, float %677, float %1431), !dx.precise !89  ; FMad(a,b,c)
  %1433 = call float @dx.op.tertiary.f32(i32 46, float %1376, float %680, float %1432), !dx.precise !89  ; FMad(a,b,c)
  %1434 = call float @dx.op.dot3.f32(i32 55, float %1427, float %1430, float %1433, float %1427, float %1430, float %1433), !dx.precise !89  ; Dot3(ax,ay,az,bx,by,bz)
  %1435 = call float @dx.op.unary.f32(i32 25, float %1434), !dx.precise !89  ; Rsqrt(value)
  %1436 = fmul float %1430, %1435
  %1437 = fmul float %672, %1393
  %1438 = call float @dx.op.tertiary.f32(i32 46, float %1397, float %675, float %1437), !dx.precise !89  ; FMad(a,b,c)
  %1439 = call float @dx.op.tertiary.f32(i32 46, float %1400, float %678, float %1438), !dx.precise !89  ; FMad(a,b,c)
  %1440 = fmul float %673, %1393
  %1441 = call float @dx.op.tertiary.f32(i32 46, float %1397, float %676, float %1440), !dx.precise !89  ; FMad(a,b,c)
  %1442 = call float @dx.op.tertiary.f32(i32 46, float %1400, float %679, float %1441), !dx.precise !89  ; FMad(a,b,c)
  %1443 = fmul float %674, %1393
  %1444 = call float @dx.op.tertiary.f32(i32 46, float %1397, float %677, float %1443), !dx.precise !89  ; FMad(a,b,c)
  %1445 = call float @dx.op.tertiary.f32(i32 46, float %1400, float %680, float %1444), !dx.precise !89  ; FMad(a,b,c)
  %1446 = call float @dx.op.dot3.f32(i32 55, float %1439, float %1442, float %1445, float %1439, float %1442, float %1445), !dx.precise !89  ; Dot3(ax,ay,az,bx,by,bz)
  %1447 = call float @dx.op.unary.f32(i32 25, float %1446), !dx.precise !89  ; Rsqrt(value)
  %1448 = fmul float %1442, %1447
  %1449 = fmul float %672, %1413
  %1450 = call float @dx.op.tertiary.f32(i32 46, float %1414, float %675, float %1449), !dx.precise !89  ; FMad(a,b,c)
  %1451 = call float @dx.op.tertiary.f32(i32 46, float %1415, float %678, float %1450), !dx.precise !89  ; FMad(a,b,c)
  %1452 = fmul float %673, %1413
  %1453 = call float @dx.op.tertiary.f32(i32 46, float %1414, float %676, float %1452), !dx.precise !89  ; FMad(a,b,c)
  %1454 = call float @dx.op.tertiary.f32(i32 46, float %1415, float %679, float %1453), !dx.precise !89  ; FMad(a,b,c)
  %1455 = fmul float %674, %1413
  %1456 = call float @dx.op.tertiary.f32(i32 46, float %1414, float %677, float %1455), !dx.precise !89  ; FMad(a,b,c)
  %1457 = call float @dx.op.tertiary.f32(i32 46, float %1415, float %680, float %1456), !dx.precise !89  ; FMad(a,b,c)
  %1458 = call float @dx.op.dot3.f32(i32 55, float %1451, float %1454, float %1457, float %1451, float %1454, float %1457), !dx.precise !89  ; Dot3(ax,ay,az,bx,by,bz)
  %1459 = call float @dx.op.unary.f32(i32 25, float %1458), !dx.precise !89  ; Rsqrt(value)
  %1460 = fmul float %1454, %1459
  %1461 = and i32 %1309, 255
  %1462 = uitofp i32 %1461 to float
  %1463 = lshr i32 %1309, 8
  %1464 = and i32 %1463, 255
  %1465 = lshr i32 %1309, 16
  %1466 = and i32 %1465, 255
  %1467 = uitofp i32 %1466 to float
  %1468 = lshr i32 %1309, 24
  %1469 = fmul float %1462, 0x3F70101020000000
  %1470 = fmul float %1467, 0x3F70101020000000
  br label %1471

; <label>:1471                                    ; preds = %1530, %1383
  %1472 = phi i32 [ 1, %1383 ], [ %1578, %1530 ]
  %1473 = and i32 %425, 268435455
  %1474 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %1473)  ; Countbits(value)
  %1475 = shl i32 %1474, 4
  %1476 = add i32 %1475, %439
  %1477 = call %dx.types.Handle @dx.op.createHandleForLib.struct.ByteAddressBuffer(i32 160, %struct.ByteAddressBuffer %12)  ; CreateHandleForLib(Resource)
  %1478 = call %dx.types.ResRet.i32 @dx.op.rawBufferLoad.i32(i32 139, %dx.types.Handle %1477, i32 %1476, i32 undef, i8 15, i32 4)  ; RawBufferLoad(srv,index,elementOffset,mask,alignment)
  %1479 = extractvalue %dx.types.ResRet.i32 %1478, 1
  %1480 = lshr i32 %1479, 17
  %1481 = and i32 %1480, 1
  %1482 = add nuw nsw i32 %1481, 1
  %1483 = lshr i32 %1479, 18
  %1484 = and i32 %1483, 1
  %1485 = add nuw nsw i32 %1482, %1484
  %1486 = lshr i32 %1479, 19
  %1487 = and i32 %1486, 1
  %1488 = add nuw nsw i32 %1485, %1487
  %1489 = icmp slt i32 %1472, %1488
  br i1 %1489, label %1530, label %1490

; <label>:1490                                    ; preds = %1471
  %1491 = call float @dx.op.tertiary.f32(i32 46, float 1.000000e+00, float %641, float %1418), !dx.precise !89  ; FMad(a,b,c)
  %1492 = call float @dx.op.tertiary.f32(i32 46, float 1.000000e+00, float %642, float %1421), !dx.precise !89  ; FMad(a,b,c)
  %1493 = call float @dx.op.tertiary.f32(i32 46, float 1.000000e+00, float %643, float %1424), !dx.precise !89  ; FMad(a,b,c)
  %1494 = fmul float %1427, %1435
  %1495 = fmul float %1433, %1435
  %1496 = fmul float %1439, %1447
  %1497 = fmul float %1445, %1447
  %1498 = fmul float %1451, %1459
  %1499 = fmul float %1457, %1459
  %1500 = uitofp i32 %1464 to float
  %1501 = uitofp i32 %1468 to float
  %1502 = fmul float %1500, 0x3F70101020000000
  %1503 = fmul float %1501, 0x3F70101020000000
  %1504 = lshr i32 %1305, 30
  %1505 = and i32 %1305, 1023
  %1506 = uitofp i32 %1505 to float
  %1507 = fdiv float %1506, 1.023000e+03
  %1508 = lshr i32 %1305, 10
  %1509 = and i32 %1508, 1023
  %1510 = uitofp i32 %1509 to float
  %1511 = fdiv float %1510, 1.023000e+03
  %1512 = lshr i32 %1305, 20
  %1513 = and i32 %1512, 511
  %1514 = uitofp i32 %1513 to float
  %1515 = fdiv float %1514, 5.110000e+02
  %1516 = fmul float %1507, 2.000000e+00
  %1517 = fmul float %1511, 2.000000e+00
  %1518 = fmul float %1515, 2.000000e+00
  %1519 = fadd float %1516, -1.000000e+00
  %1520 = fadd float %1517, -1.000000e+00
  %1521 = fadd float %1518, -1.000000e+00
  %1522 = fmul float %1519, 0x3FE6A09E60000000
  %1523 = fmul float %1520, 0x3FE6A09E60000000
  %1524 = fmul float %1521, 0x3FE6A09E60000000
  %1525 = call float @dx.op.dot3.f32(i32 55, float %1522, float %1523, float %1524, float %1522, float %1523, float %1524), !dx.precise !89  ; Dot3(ax,ay,az,bx,by,bz)
  %1526 = call float @dx.op.unary.f32(i32 7, float %1525), !dx.precise !89  ; Saturate(value)
  %1527 = fsub float 1.000000e+00, %1526
  %1528 = call float @dx.op.unary.f32(i32 24, float %1527), !dx.precise !89  ; Sqrt(value)
  %1529 = icmp eq i32 %1504, 0
  br i1 %1529, label %1585, label %1579

; <label>:1530                                    ; preds = %1471
  %1531 = add nsw i32 %1472, -1
  %1532 = mul i32 %1531, 3
  %1533 = add i32 0, %1532
  %1534 = getelementptr [9 x i32], [9 x i32]* %35, i32 0, i32 %1533
  %1535 = load i32, i32* %1534, align 4, !tbaa !99, !noalias !109
  %1536 = and i32 %1535, 255
  %1537 = uitofp i32 %1536 to float
  %1538 = fdiv float %1537, 2.550000e+02
  %1539 = fmul float %1538, 2.000000e+00
  %1540 = fadd float %1539, -1.000000e+00
  %1541 = lshr i32 %1535, 8
  %1542 = and i32 %1541, 255
  %1543 = uitofp i32 %1542 to float
  %1544 = fdiv float %1543, 2.550000e+02
  %1545 = fmul float %1544, 2.000000e+00
  %1546 = fadd float %1545, -1.000000e+00
  %1547 = lshr i32 %1535, 16
  %1548 = and i32 %1547, 255
  %1549 = uitofp i32 %1548 to float
  %1550 = fdiv float %1549, 2.550000e+02
  %1551 = fmul float %1550, 2.000000e+00
  %1552 = fadd float %1551, -1.000000e+00
  %1553 = lshr i32 %1535, 24
  %1554 = uitofp i32 %1553 to float
  %1555 = fdiv float %1554, 2.550000e+02
  %1556 = fmul float %1555, 2.000000e+00
  %1557 = fadd float %1556, -1.000000e+00
  %1558 = mul i32 %1531, 3
  %1559 = add i32 0, %1558
  %1560 = mul i32 %1559, 4
  %1561 = add i32 0, %1560
  %1562 = getelementptr [36 x float], [36 x float]* %38, i32 0, i32 %1561
  store float %1540, float* %1562, align 4
  %1563 = mul i32 %1531, 3
  %1564 = add i32 0, %1563
  %1565 = mul i32 %1564, 4
  %1566 = add i32 1, %1565
  %1567 = getelementptr [36 x float], [36 x float]* %38, i32 0, i32 %1566
  store float %1546, float* %1567, align 4
  %1568 = mul i32 %1531, 3
  %1569 = add i32 0, %1568
  %1570 = mul i32 %1569, 4
  %1571 = add i32 2, %1570
  %1572 = getelementptr [36 x float], [36 x float]* %38, i32 0, i32 %1571
  store float %1552, float* %1572, align 4
  %1573 = mul i32 %1531, 3
  %1574 = add i32 0, %1573
  %1575 = mul i32 %1574, 4
  %1576 = add i32 3, %1575
  %1577 = getelementptr [36 x float], [36 x float]* %38, i32 0, i32 %1576
  store float %1557, float* %1577, align 4
  %1578 = add nuw nsw i32 %1472, 1
  br label %1471

; <label>:1579                                    ; preds = %1490
  %1580 = icmp eq i32 %1504, 1
  br i1 %1580, label %1585, label %1581

; <label>:1581                                    ; preds = %1579
  %1582 = icmp eq i32 %1504, 2
  %1583 = select i1 %1582, float %1528, float %1524
  %1584 = select i1 %1582, float %1524, float %1528
  br label %1585

; <label>:1585                                    ; preds = %1581, %1579, %1490
  %1586 = phi float [ %1522, %1579 ], [ %1528, %1490 ], [ %1522, %1581 ]
  %1587 = phi float [ %1528, %1579 ], [ %1522, %1490 ], [ %1523, %1581 ]
  %1588 = phi float [ %1523, %1579 ], [ %1523, %1490 ], [ %1583, %1581 ]
  %1589 = phi float [ %1524, %1579 ], [ %1524, %1490 ], [ %1584, %1581 ]
  %1590 = fmul float %1586, 2.000000e+00
  %1591 = fmul float %1590, %1588
  %1592 = fmul float %1587, 2.000000e+00
  %1593 = fmul float %1592, %1589
  %1594 = fadd float %1591, %1593
  %1595 = fmul float %1592, %1588
  %1596 = fmul float %1590, %1589
  %1597 = fsub float %1595, %1596
  %1598 = fmul float %1586, %1590
  %1599 = fsub float 1.000000e+00, %1598
  %1600 = fmul float %1587, %1592
  %1601 = fsub float %1599, %1600
  br i1 %1529, label %1608, label %1602

; <label>:1602                                    ; preds = %1585
  %1603 = icmp eq i32 %1504, 1
  br i1 %1603, label %1608, label %1604

; <label>:1604                                    ; preds = %1602
  %1605 = icmp eq i32 %1504, 2
  %1606 = select i1 %1605, float %1528, float %1524
  %1607 = select i1 %1605, float %1524, float %1528
  br label %1608

; <label>:1608                                    ; preds = %1604, %1602, %1585
  %1609 = phi float [ %1522, %1602 ], [ %1528, %1585 ], [ %1522, %1604 ]
  %1610 = phi float [ %1528, %1602 ], [ %1522, %1585 ], [ %1523, %1604 ]
  %1611 = phi float [ %1523, %1602 ], [ %1523, %1585 ], [ %1606, %1604 ]
  %1612 = phi float [ %1524, %1602 ], [ %1524, %1585 ], [ %1607, %1604 ]
  %1613 = fmul float %1610, 2.000000e+00
  %1614 = fmul float %1610, %1613
  %1615 = fsub float 1.000000e+00, %1614
  %1616 = fmul float %1611, 2.000000e+00
  %1617 = fmul float %1611, %1616
  %1618 = fsub float %1615, %1617
  %1619 = fmul float %1609, 2.000000e+00
  %1620 = fmul float %1619, %1610
  %1621 = fmul float %1616, %1612
  %1622 = fadd float %1620, %1621
  %1623 = fmul float %1619, %1611
  %1624 = fmul float %1613, %1612
  %1625 = fsub float %1623, %1624
  %1626 = fmul float %1597, %1625
  %1627 = fmul float %1601, %1622
  %1628 = fsub float %1626, %1627
  %1629 = fmul float %1601, %1618
  %1630 = fmul float %1594, %1625
  %1631 = fsub float %1629, %1630
  %1632 = fmul float %1594, %1622
  %1633 = fmul float %1597, %1618
  %1634 = fsub float %1632, %1633
  %1635 = and i32 %1305, 536870912
  %1636 = icmp ne i32 %1635, 0
  %1637 = select i1 %1636, float -1.000000e+00, float 1.000000e+00
  %1638 = fmul float %1637, %1628
  %1639 = fmul float %1637, %1631
  %1640 = fmul float %1637, %1634
  %1641 = fmul float %672, %1327
  %1642 = call float @dx.op.tertiary.f32(i32 46, float %1325, float %675, float %1641), !dx.precise !89  ; FMad(a,b,c)
  %1643 = call float @dx.op.tertiary.f32(i32 46, float %1323, float %678, float %1642), !dx.precise !89  ; FMad(a,b,c)
  %1644 = fmul float %673, %1327
  %1645 = call float @dx.op.tertiary.f32(i32 46, float %1325, float %676, float %1644), !dx.precise !89  ; FMad(a,b,c)
  %1646 = call float @dx.op.tertiary.f32(i32 46, float %1323, float %679, float %1645), !dx.precise !89  ; FMad(a,b,c)
  %1647 = fmul float %674, %1327
  %1648 = call float @dx.op.tertiary.f32(i32 46, float %1325, float %677, float %1647), !dx.precise !89  ; FMad(a,b,c)
  %1649 = call float @dx.op.tertiary.f32(i32 46, float %1323, float %680, float %1648), !dx.precise !89  ; FMad(a,b,c)
  %1650 = fmul float %672, %1594
  %1651 = call float @dx.op.tertiary.f32(i32 46, float %1597, float %675, float %1650), !dx.precise !89  ; FMad(a,b,c)
  %1652 = call float @dx.op.tertiary.f32(i32 46, float %1601, float %678, float %1651), !dx.precise !89  ; FMad(a,b,c)
  %1653 = fmul float %673, %1594
  %1654 = call float @dx.op.tertiary.f32(i32 46, float %1597, float %676, float %1653), !dx.precise !89  ; FMad(a,b,c)
  %1655 = call float @dx.op.tertiary.f32(i32 46, float %1601, float %679, float %1654), !dx.precise !89  ; FMad(a,b,c)
  %1656 = fmul float %674, %1594
  %1657 = call float @dx.op.tertiary.f32(i32 46, float %1597, float %677, float %1656), !dx.precise !89  ; FMad(a,b,c)
  %1658 = call float @dx.op.tertiary.f32(i32 46, float %1601, float %680, float %1657), !dx.precise !89  ; FMad(a,b,c)
  %1659 = call float @dx.op.dot3.f32(i32 55, float %1652, float %1655, float %1658, float %1652, float %1655, float %1658), !dx.precise !89  ; Dot3(ax,ay,az,bx,by,bz)
  %1660 = call float @dx.op.unary.f32(i32 25, float %1659), !dx.precise !89  ; Rsqrt(value)
  %1661 = fmul float %1655, %1660
  %1662 = fmul float %672, %1618
  %1663 = call float @dx.op.tertiary.f32(i32 46, float %1622, float %675, float %1662), !dx.precise !89  ; FMad(a,b,c)
  %1664 = call float @dx.op.tertiary.f32(i32 46, float %1625, float %678, float %1663), !dx.precise !89  ; FMad(a,b,c)
  %1665 = fmul float %673, %1618
  %1666 = call float @dx.op.tertiary.f32(i32 46, float %1622, float %676, float %1665), !dx.precise !89  ; FMad(a,b,c)
  %1667 = call float @dx.op.tertiary.f32(i32 46, float %1625, float %679, float %1666), !dx.precise !89  ; FMad(a,b,c)
  %1668 = fmul float %674, %1618
  %1669 = call float @dx.op.tertiary.f32(i32 46, float %1622, float %677, float %1668), !dx.precise !89  ; FMad(a,b,c)
  %1670 = call float @dx.op.tertiary.f32(i32 46, float %1625, float %680, float %1669), !dx.precise !89  ; FMad(a,b,c)
  %1671 = call float @dx.op.dot3.f32(i32 55, float %1664, float %1667, float %1670, float %1664, float %1667, float %1670), !dx.precise !89  ; Dot3(ax,ay,az,bx,by,bz)
  %1672 = call float @dx.op.unary.f32(i32 25, float %1671), !dx.precise !89  ; Rsqrt(value)
  %1673 = fmul float %1667, %1672
  %1674 = fmul float %672, %1638
  %1675 = call float @dx.op.tertiary.f32(i32 46, float %1639, float %675, float %1674), !dx.precise !89  ; FMad(a,b,c)
  %1676 = call float @dx.op.tertiary.f32(i32 46, float %1640, float %678, float %1675), !dx.precise !89  ; FMad(a,b,c)
  %1677 = fmul float %673, %1638
  %1678 = call float @dx.op.tertiary.f32(i32 46, float %1639, float %676, float %1677), !dx.precise !89  ; FMad(a,b,c)
  %1679 = call float @dx.op.tertiary.f32(i32 46, float %1640, float %679, float %1678), !dx.precise !89  ; FMad(a,b,c)
  %1680 = fmul float %674, %1638
  %1681 = call float @dx.op.tertiary.f32(i32 46, float %1639, float %677, float %1680), !dx.precise !89  ; FMad(a,b,c)
  %1682 = call float @dx.op.tertiary.f32(i32 46, float %1640, float %680, float %1681), !dx.precise !89  ; FMad(a,b,c)
  %1683 = call float @dx.op.dot3.f32(i32 55, float %1676, float %1679, float %1682, float %1676, float %1679, float %1682), !dx.precise !89  ; Dot3(ax,ay,az,bx,by,bz)
  %1684 = call float @dx.op.unary.f32(i32 25, float %1683), !dx.precise !89  ; Rsqrt(value)
  %1685 = fmul float %1679, %1684
  %1686 = and i32 %1308, 255
  %1687 = uitofp i32 %1686 to float
  %1688 = lshr i32 %1308, 8
  %1689 = and i32 %1688, 255
  %1690 = lshr i32 %1308, 16
  %1691 = and i32 %1690, 255
  %1692 = uitofp i32 %1691 to float
  %1693 = lshr i32 %1308, 24
  %1694 = fmul float %1687, 0x3F70101020000000
  %1695 = fmul float %1692, 0x3F70101020000000
  br label %1696

; <label>:1696                                    ; preds = %1751, %1608
  %1697 = phi i32 [ 1, %1608 ], [ %1799, %1751 ]
  %1698 = call %dx.types.Handle @dx.op.createHandleForLib.struct.ByteAddressBuffer(i32 160, %struct.ByteAddressBuffer %12)  ; CreateHandleForLib(Resource)
  %1699 = call %dx.types.ResRet.i32 @dx.op.rawBufferLoad.i32(i32 139, %dx.types.Handle %1698, i32 %1476, i32 undef, i8 15, i32 4)  ; RawBufferLoad(srv,index,elementOffset,mask,alignment)
  %1700 = extractvalue %dx.types.ResRet.i32 %1699, 1
  %1701 = lshr i32 %1700, 17
  %1702 = and i32 %1701, 1
  %1703 = add nuw nsw i32 %1702, 1
  %1704 = lshr i32 %1700, 18
  %1705 = and i32 %1704, 1
  %1706 = add nuw nsw i32 %1703, %1705
  %1707 = lshr i32 %1700, 19
  %1708 = and i32 %1707, 1
  %1709 = add nuw nsw i32 %1706, %1708
  %1710 = icmp slt i32 %1697, %1709
  br i1 %1710, label %1751, label %1711

; <label>:1711                                    ; preds = %1696
  %1712 = call float @dx.op.tertiary.f32(i32 46, float 1.000000e+00, float %641, float %1643), !dx.precise !89  ; FMad(a,b,c)
  %1713 = call float @dx.op.tertiary.f32(i32 46, float 1.000000e+00, float %642, float %1646), !dx.precise !89  ; FMad(a,b,c)
  %1714 = call float @dx.op.tertiary.f32(i32 46, float 1.000000e+00, float %643, float %1649), !dx.precise !89  ; FMad(a,b,c)
  %1715 = fmul float %1652, %1660
  %1716 = fmul float %1658, %1660
  %1717 = fmul float %1664, %1672
  %1718 = fmul float %1670, %1672
  %1719 = fmul float %1676, %1684
  %1720 = fmul float %1682, %1684
  %1721 = uitofp i32 %1689 to float
  %1722 = uitofp i32 %1693 to float
  %1723 = fmul float %1721, 0x3F70101020000000
  %1724 = fmul float %1722, 0x3F70101020000000
  %1725 = lshr i32 %1304, 30
  %1726 = and i32 %1304, 1023
  %1727 = uitofp i32 %1726 to float
  %1728 = fdiv float %1727, 1.023000e+03
  %1729 = lshr i32 %1304, 10
  %1730 = and i32 %1729, 1023
  %1731 = uitofp i32 %1730 to float
  %1732 = fdiv float %1731, 1.023000e+03
  %1733 = lshr i32 %1304, 20
  %1734 = and i32 %1733, 511
  %1735 = uitofp i32 %1734 to float
  %1736 = fdiv float %1735, 5.110000e+02
  %1737 = fmul float %1728, 2.000000e+00
  %1738 = fmul float %1732, 2.000000e+00
  %1739 = fmul float %1736, 2.000000e+00
  %1740 = fadd float %1737, -1.000000e+00
  %1741 = fadd float %1738, -1.000000e+00
  %1742 = fadd float %1739, -1.000000e+00
  %1743 = fmul float %1740, 0x3FE6A09E60000000
  %1744 = fmul float %1741, 0x3FE6A09E60000000
  %1745 = fmul float %1742, 0x3FE6A09E60000000
  %1746 = call float @dx.op.dot3.f32(i32 55, float %1743, float %1744, float %1745, float %1743, float %1744, float %1745), !dx.precise !89  ; Dot3(ax,ay,az,bx,by,bz)
  %1747 = call float @dx.op.unary.f32(i32 7, float %1746), !dx.precise !89  ; Saturate(value)
  %1748 = fsub float 1.000000e+00, %1747
  %1749 = call float @dx.op.unary.f32(i32 24, float %1748), !dx.precise !89  ; Sqrt(value)
  %1750 = icmp eq i32 %1725, 0
  br i1 %1750, label %1806, label %1800

; <label>:1751                                    ; preds = %1696
  %1752 = add nsw i32 %1697, -1
  %1753 = mul i32 %1752, 3
  %1754 = add i32 1, %1753
  %1755 = getelementptr [9 x i32], [9 x i32]* %35, i32 0, i32 %1754
  %1756 = load i32, i32* %1755, align 4, !tbaa !99, !noalias !109
  %1757 = and i32 %1756, 255
  %1758 = uitofp i32 %1757 to float
  %1759 = fdiv float %1758, 2.550000e+02
  %1760 = fmul float %1759, 2.000000e+00
  %1761 = fadd float %1760, -1.000000e+00
  %1762 = lshr i32 %1756, 8
  %1763 = and i32 %1762, 255
  %1764 = uitofp i32 %1763 to float
  %1765 = fdiv float %1764, 2.550000e+02
  %1766 = fmul float %1765, 2.000000e+00
  %1767 = fadd float %1766, -1.000000e+00
  %1768 = lshr i32 %1756, 16
  %1769 = and i32 %1768, 255
  %1770 = uitofp i32 %1769 to float
  %1771 = fdiv float %1770, 2.550000e+02
  %1772 = fmul float %1771, 2.000000e+00
  %1773 = fadd float %1772, -1.000000e+00
  %1774 = lshr i32 %1756, 24
  %1775 = uitofp i32 %1774 to float
  %1776 = fdiv float %1775, 2.550000e+02
  %1777 = fmul float %1776, 2.000000e+00
  %1778 = fadd float %1777, -1.000000e+00
  %1779 = mul i32 %1752, 3
  %1780 = add i32 1, %1779
  %1781 = mul i32 %1780, 4
  %1782 = add i32 0, %1781
  %1783 = getelementptr [36 x float], [36 x float]* %38, i32 0, i32 %1782
  store float %1761, float* %1783, align 4
  %1784 = mul i32 %1752, 3
  %1785 = add i32 1, %1784
  %1786 = mul i32 %1785, 4
  %1787 = add i32 1, %1786
  %1788 = getelementptr [36 x float], [36 x float]* %38, i32 0, i32 %1787
  store float %1767, float* %1788, align 4
  %1789 = mul i32 %1752, 3
  %1790 = add i32 1, %1789
  %1791 = mul i32 %1790, 4
  %1792 = add i32 2, %1791
  %1793 = getelementptr [36 x float], [36 x float]* %38, i32 0, i32 %1792
  store float %1773, float* %1793, align 4
  %1794 = mul i32 %1752, 3
  %1795 = add i32 1, %1794
  %1796 = mul i32 %1795, 4
  %1797 = add i32 3, %1796
  %1798 = getelementptr [36 x float], [36 x float]* %38, i32 0, i32 %1797
  store float %1778, float* %1798, align 4
  %1799 = add nuw nsw i32 %1697, 1
  br label %1696

; <label>:1800                                    ; preds = %1711
  %1801 = icmp eq i32 %1725, 1
  br i1 %1801, label %1806, label %1802

; <label>:1802                                    ; preds = %1800
  %1803 = icmp eq i32 %1725, 2
  %1804 = select i1 %1803, float %1749, float %1745
  %1805 = select i1 %1803, float %1745, float %1749
  br label %1806

; <label>:1806                                    ; preds = %1802, %1800, %1711
  %1807 = phi float [ %1743, %1800 ], [ %1749, %1711 ], [ %1743, %1802 ]
  %1808 = phi float [ %1749, %1800 ], [ %1743, %1711 ], [ %1744, %1802 ]
  %1809 = phi float [ %1744, %1800 ], [ %1744, %1711 ], [ %1804, %1802 ]
  %1810 = phi float [ %1745, %1800 ], [ %1745, %1711 ], [ %1805, %1802 ]
  %1811 = fmul float %1807, 2.000000e+00
  %1812 = fmul float %1811, %1809
  %1813 = fmul float %1808, 2.000000e+00
  %1814 = fmul float %1813, %1810
  %1815 = fadd float %1812, %1814
  %1816 = fmul float %1813, %1809
  %1817 = fmul float %1811, %1810
  %1818 = fsub float %1816, %1817
  %1819 = fmul float %1807, %1811
  %1820 = fsub float 1.000000e+00, %1819
  %1821 = fmul float %1808, %1813
  %1822 = fsub float %1820, %1821
  br i1 %1750, label %1829, label %1823

; <label>:1823                                    ; preds = %1806
  %1824 = icmp eq i32 %1725, 1
  br i1 %1824, label %1829, label %1825

; <label>:1825                                    ; preds = %1823
  %1826 = icmp eq i32 %1725, 2
  %1827 = select i1 %1826, float %1749, float %1745
  %1828 = select i1 %1826, float %1745, float %1749
  br label %1829

; <label>:1829                                    ; preds = %1825, %1823, %1806
  %1830 = phi float [ %1743, %1823 ], [ %1749, %1806 ], [ %1743, %1825 ]
  %1831 = phi float [ %1749, %1823 ], [ %1743, %1806 ], [ %1744, %1825 ]
  %1832 = phi float [ %1744, %1823 ], [ %1744, %1806 ], [ %1827, %1825 ]
  %1833 = phi float [ %1745, %1823 ], [ %1745, %1806 ], [ %1828, %1825 ]
  %1834 = fmul float %1831, 2.000000e+00
  %1835 = fmul float %1831, %1834
  %1836 = fsub float 1.000000e+00, %1835
  %1837 = fmul float %1832, 2.000000e+00
  %1838 = fmul float %1832, %1837
  %1839 = fsub float %1836, %1838
  %1840 = fmul float %1830, 2.000000e+00
  %1841 = fmul float %1840, %1831
  %1842 = fmul float %1837, %1833
  %1843 = fadd float %1841, %1842
  %1844 = fmul float %1840, %1832
  %1845 = fmul float %1834, %1833
  %1846 = fsub float %1844, %1845
  %1847 = fmul float %1818, %1846
  %1848 = fmul float %1822, %1843
  %1849 = fsub float %1847, %1848
  %1850 = fmul float %1822, %1839
  %1851 = fmul float %1815, %1846
  %1852 = fsub float %1850, %1851
  %1853 = fmul float %1815, %1843
  %1854 = fmul float %1818, %1839
  %1855 = fsub float %1853, %1854
  %1856 = and i32 %1304, 536870912
  %1857 = icmp ne i32 %1856, 0
  %1858 = select i1 %1857, float -1.000000e+00, float 1.000000e+00
  %1859 = fmul float %1858, %1849
  %1860 = fmul float %1858, %1852
  %1861 = fmul float %1858, %1855
  %1862 = fmul float %672, %1315
  %1863 = call float @dx.op.tertiary.f32(i32 46, float %1314, float %675, float %1862), !dx.precise !89  ; FMad(a,b,c)
  %1864 = call float @dx.op.tertiary.f32(i32 46, float %1313, float %678, float %1863), !dx.precise !89  ; FMad(a,b,c)
  %1865 = fmul float %673, %1315
  %1866 = call float @dx.op.tertiary.f32(i32 46, float %1314, float %676, float %1865), !dx.precise !89  ; FMad(a,b,c)
  %1867 = call float @dx.op.tertiary.f32(i32 46, float %1313, float %679, float %1866), !dx.precise !89  ; FMad(a,b,c)
  %1868 = fmul float %674, %1315
  %1869 = call float @dx.op.tertiary.f32(i32 46, float %1314, float %677, float %1868), !dx.precise !89  ; FMad(a,b,c)
  %1870 = call float @dx.op.tertiary.f32(i32 46, float %1313, float %680, float %1869), !dx.precise !89  ; FMad(a,b,c)
  %1871 = fmul float %672, %1815
  %1872 = call float @dx.op.tertiary.f32(i32 46, float %1818, float %675, float %1871), !dx.precise !89  ; FMad(a,b,c)
  %1873 = call float @dx.op.tertiary.f32(i32 46, float %1822, float %678, float %1872), !dx.precise !89  ; FMad(a,b,c)
  %1874 = fmul float %673, %1815
  %1875 = call float @dx.op.tertiary.f32(i32 46, float %1818, float %676, float %1874), !dx.precise !89  ; FMad(a,b,c)
  %1876 = call float @dx.op.tertiary.f32(i32 46, float %1822, float %679, float %1875), !dx.precise !89  ; FMad(a,b,c)
  %1877 = fmul float %674, %1815
  %1878 = call float @dx.op.tertiary.f32(i32 46, float %1818, float %677, float %1877), !dx.precise !89  ; FMad(a,b,c)
  %1879 = call float @dx.op.tertiary.f32(i32 46, float %1822, float %680, float %1878), !dx.precise !89  ; FMad(a,b,c)
  %1880 = call float @dx.op.dot3.f32(i32 55, float %1873, float %1876, float %1879, float %1873, float %1876, float %1879), !dx.precise !89  ; Dot3(ax,ay,az,bx,by,bz)
  %1881 = call float @dx.op.unary.f32(i32 25, float %1880), !dx.precise !89  ; Rsqrt(value)
  %1882 = fmul float %1876, %1881
  %1883 = fmul float %672, %1839
  %1884 = call float @dx.op.tertiary.f32(i32 46, float %1843, float %675, float %1883), !dx.precise !89  ; FMad(a,b,c)
  %1885 = call float @dx.op.tertiary.f32(i32 46, float %1846, float %678, float %1884), !dx.precise !89  ; FMad(a,b,c)
  %1886 = fmul float %673, %1839
  %1887 = call float @dx.op.tertiary.f32(i32 46, float %1843, float %676, float %1886), !dx.precise !89  ; FMad(a,b,c)
  %1888 = call float @dx.op.tertiary.f32(i32 46, float %1846, float %679, float %1887), !dx.precise !89  ; FMad(a,b,c)
  %1889 = fmul float %674, %1839
  %1890 = call float @dx.op.tertiary.f32(i32 46, float %1843, float %677, float %1889), !dx.precise !89  ; FMad(a,b,c)
  %1891 = call float @dx.op.tertiary.f32(i32 46, float %1846, float %680, float %1890), !dx.precise !89  ; FMad(a,b,c)
  %1892 = call float @dx.op.dot3.f32(i32 55, float %1885, float %1888, float %1891, float %1885, float %1888, float %1891), !dx.precise !89  ; Dot3(ax,ay,az,bx,by,bz)
  %1893 = call float @dx.op.unary.f32(i32 25, float %1892), !dx.precise !89  ; Rsqrt(value)
  %1894 = fmul float %1888, %1893
  %1895 = fmul float %672, %1859
  %1896 = call float @dx.op.tertiary.f32(i32 46, float %1860, float %675, float %1895), !dx.precise !89  ; FMad(a,b,c)
  %1897 = call float @dx.op.tertiary.f32(i32 46, float %1861, float %678, float %1896), !dx.precise !89  ; FMad(a,b,c)
  %1898 = fmul float %673, %1859
  %1899 = call float @dx.op.tertiary.f32(i32 46, float %1860, float %676, float %1898), !dx.precise !89  ; FMad(a,b,c)
  %1900 = call float @dx.op.tertiary.f32(i32 46, float %1861, float %679, float %1899), !dx.precise !89  ; FMad(a,b,c)
  %1901 = fmul float %674, %1859
  %1902 = call float @dx.op.tertiary.f32(i32 46, float %1860, float %677, float %1901), !dx.precise !89  ; FMad(a,b,c)
  %1903 = call float @dx.op.tertiary.f32(i32 46, float %1861, float %680, float %1902), !dx.precise !89  ; FMad(a,b,c)
  %1904 = call float @dx.op.dot3.f32(i32 55, float %1897, float %1900, float %1903, float %1897, float %1900, float %1903), !dx.precise !89  ; Dot3(ax,ay,az,bx,by,bz)
  %1905 = call float @dx.op.unary.f32(i32 25, float %1904), !dx.precise !89  ; Rsqrt(value)
  %1906 = fmul float %1900, %1905
  %1907 = and i32 %1307, 255
  %1908 = uitofp i32 %1907 to float
  %1909 = lshr i32 %1307, 8
  %1910 = and i32 %1909, 255
  %1911 = lshr i32 %1307, 16
  %1912 = and i32 %1911, 255
  %1913 = uitofp i32 %1912 to float
  %1914 = lshr i32 %1307, 24
  %1915 = fmul float %1908, 0x3F70101020000000
  %1916 = fmul float %1913, 0x3F70101020000000
  br label %1917

; <label>:1917                                    ; preds = %1964, %1829
  %1918 = phi i32 [ 1, %1829 ], [ %2012, %1964 ]
  %1919 = call %dx.types.Handle @dx.op.createHandleForLib.struct.ByteAddressBuffer(i32 160, %struct.ByteAddressBuffer %12)  ; CreateHandleForLib(Resource)
  %1920 = call %dx.types.ResRet.i32 @dx.op.rawBufferLoad.i32(i32 139, %dx.types.Handle %1919, i32 %1476, i32 undef, i8 15, i32 4)  ; RawBufferLoad(srv,index,elementOffset,mask,alignment)
  %1921 = extractvalue %dx.types.ResRet.i32 %1920, 1
  %1922 = lshr i32 %1921, 17
  %1923 = and i32 %1922, 1
  %1924 = add nuw nsw i32 %1923, 1
  %1925 = lshr i32 %1921, 18
  %1926 = and i32 %1925, 1
  %1927 = add nuw nsw i32 %1924, %1926
  %1928 = lshr i32 %1921, 19
  %1929 = and i32 %1928, 1
  %1930 = add nuw nsw i32 %1927, %1929
  %1931 = icmp slt i32 %1918, %1930
  br i1 %1931, label %1964, label %1932

; <label>:1932                                    ; preds = %1917
  %1933 = call float @dx.op.tertiary.f32(i32 46, float 1.000000e+00, float %642, float %1867), !dx.precise !89  ; FMad(a,b,c)
  %1934 = fmul float %1873, %1881
  %1935 = fmul float %1879, %1881
  %1936 = fmul float %1885, %1893
  %1937 = fmul float %1891, %1893
  %1938 = fmul float %1897, %1905
  %1939 = fmul float %1903, %1905
  %1940 = uitofp i32 %1910 to float
  %1941 = fmul float %1940, 0x3F70101020000000
  %1942 = extractelement <2 x float> %238, i32 0
  %1943 = fsub float 1.000000e+00, %1942
  %1944 = extractelement <2 x float> %238, i32 1
  %1945 = fsub float %1943, %1944
  %1946 = call float @dx.op.dot3.f32(i32 55, float %1945, float %1942, float %1944, float %1494, float %1715, float %1934), !dx.precise !89  ; Dot3(ax,ay,az,bx,by,bz)
  %1947 = call float @dx.op.dot3.f32(i32 55, float %1945, float %1942, float %1944, float %1496, float %1717, float %1936), !dx.precise !89  ; Dot3(ax,ay,az,bx,by,bz)
  %1948 = call float @dx.op.dot3.f32(i32 55, float %1945, float %1942, float %1944, float %1498, float %1719, float %1938), !dx.precise !89  ; Dot3(ax,ay,az,bx,by,bz)
  %1949 = call float @dx.op.dot3.f32(i32 55, float %1945, float %1942, float %1944, float %1436, float %1661, float %1882), !dx.precise !89  ; Dot3(ax,ay,az,bx,by,bz)
  %1950 = call float @dx.op.dot3.f32(i32 55, float %1945, float %1942, float %1944, float %1448, float %1673, float %1894), !dx.precise !89  ; Dot3(ax,ay,az,bx,by,bz)
  %1951 = call float @dx.op.dot3.f32(i32 55, float %1945, float %1942, float %1944, float %1460, float %1685, float %1906), !dx.precise !89  ; Dot3(ax,ay,az,bx,by,bz)
  %1952 = call float @dx.op.dot3.f32(i32 55, float %1945, float %1942, float %1944, float %1495, float %1716, float %1935), !dx.precise !89  ; Dot3(ax,ay,az,bx,by,bz)
  %1953 = call float @dx.op.dot3.f32(i32 55, float %1945, float %1942, float %1944, float %1497, float %1718, float %1937), !dx.precise !89  ; Dot3(ax,ay,az,bx,by,bz)
  %1954 = call float @dx.op.dot3.f32(i32 55, float %1945, float %1942, float %1944, float %1499, float %1720, float %1939), !dx.precise !89  ; Dot3(ax,ay,az,bx,by,bz)
  %1955 = call float @dx.op.dot3.f32(i32 55, float %1946, float %1949, float %1952, float %1946, float %1949, float %1952), !dx.precise !89  ; Dot3(ax,ay,az,bx,by,bz)
  %1956 = call float @dx.op.unary.f32(i32 25, float %1955), !dx.precise !89  ; Rsqrt(value)
  %1957 = fmul float %1949, %1956
  %1958 = call float @dx.op.dot3.f32(i32 55, float %1947, float %1950, float %1953, float %1947, float %1950, float %1953), !dx.precise !89  ; Dot3(ax,ay,az,bx,by,bz)
  %1959 = call float @dx.op.unary.f32(i32 25, float %1958), !dx.precise !89  ; Rsqrt(value)
  %1960 = fmul float %1950, %1959
  %1961 = call float @dx.op.dot3.f32(i32 55, float %1948, float %1951, float %1954, float %1948, float %1951, float %1954), !dx.precise !89  ; Dot3(ax,ay,az,bx,by,bz)
  %1962 = call float @dx.op.unary.f32(i32 25, float %1961), !dx.precise !89  ; Rsqrt(value)
  %1963 = fmul float %1951, %1962
  br label %2013

; <label>:1964                                    ; preds = %1917
  %1965 = add nsw i32 %1918, -1
  %1966 = mul i32 %1965, 3
  %1967 = add i32 2, %1966
  %1968 = getelementptr [9 x i32], [9 x i32]* %35, i32 0, i32 %1967
  %1969 = load i32, i32* %1968, align 4, !tbaa !99, !noalias !109
  %1970 = and i32 %1969, 255
  %1971 = uitofp i32 %1970 to float
  %1972 = fdiv float %1971, 2.550000e+02
  %1973 = fmul float %1972, 2.000000e+00
  %1974 = fadd float %1973, -1.000000e+00
  %1975 = lshr i32 %1969, 8
  %1976 = and i32 %1975, 255
  %1977 = uitofp i32 %1976 to float
  %1978 = fdiv float %1977, 2.550000e+02
  %1979 = fmul float %1978, 2.000000e+00
  %1980 = fadd float %1979, -1.000000e+00
  %1981 = lshr i32 %1969, 16
  %1982 = and i32 %1981, 255
  %1983 = uitofp i32 %1982 to float
  %1984 = fdiv float %1983, 2.550000e+02
  %1985 = fmul float %1984, 2.000000e+00
  %1986 = fadd float %1985, -1.000000e+00
  %1987 = lshr i32 %1969, 24
  %1988 = uitofp i32 %1987 to float
  %1989 = fdiv float %1988, 2.550000e+02
  %1990 = fmul float %1989, 2.000000e+00
  %1991 = fadd float %1990, -1.000000e+00
  %1992 = mul i32 %1965, 3
  %1993 = add i32 2, %1992
  %1994 = mul i32 %1993, 4
  %1995 = add i32 0, %1994
  %1996 = getelementptr [36 x float], [36 x float]* %38, i32 0, i32 %1995
  store float %1974, float* %1996, align 4
  %1997 = mul i32 %1965, 3
  %1998 = add i32 2, %1997
  %1999 = mul i32 %1998, 4
  %2000 = add i32 1, %1999
  %2001 = getelementptr [36 x float], [36 x float]* %38, i32 0, i32 %2000
  store float %1980, float* %2001, align 4
  %2002 = mul i32 %1965, 3
  %2003 = add i32 2, %2002
  %2004 = mul i32 %2003, 4
  %2005 = add i32 2, %2004
  %2006 = getelementptr [36 x float], [36 x float]* %38, i32 0, i32 %2005
  store float %1986, float* %2006, align 4
  %2007 = mul i32 %1965, 3
  %2008 = add i32 2, %2007
  %2009 = mul i32 %2008, 4
  %2010 = add i32 3, %2009
  %2011 = getelementptr [36 x float], [36 x float]* %38, i32 0, i32 %2010
  store float %1991, float* %2011, align 4
  %2012 = add nuw nsw i32 %1918, 1
  br label %1917

; <label>:2013                                    ; preds = %2036, %1932
  %2014 = phi i32 [ 0, %1932 ], [ %2081, %2036 ]
  %2015 = call %dx.types.Handle @dx.op.createHandleForLib.struct.ByteAddressBuffer(i32 160, %struct.ByteAddressBuffer %12)  ; CreateHandleForLib(Resource)
  %2016 = call %dx.types.ResRet.i32 @dx.op.rawBufferLoad.i32(i32 139, %dx.types.Handle %2015, i32 %1476, i32 undef, i8 15, i32 4)  ; RawBufferLoad(srv,index,elementOffset,mask,alignment)
  %2017 = extractvalue %dx.types.ResRet.i32 %2016, 1
  %2018 = lshr i32 %2017, 17
  %2019 = and i32 %2018, 1
  %2020 = add nuw nsw i32 %2019, 1
  %2021 = lshr i32 %2017, 18
  %2022 = and i32 %2021, 1
  %2023 = add nuw nsw i32 %2020, %2022
  %2024 = lshr i32 %2017, 19
  %2025 = and i32 %2024, 1
  %2026 = add nuw nsw i32 %2023, %2025
  %2027 = icmp slt i32 %2014, %2026
  br i1 %2027, label %2036, label %2028

; <label>:2028                                    ; preds = %2013
  %2029 = call float @dx.op.tertiary.f32(i32 46, float 1.000000e+00, float %641, float %1864), !dx.precise !89  ; FMad(a,b,c)
  %2030 = uitofp i32 %1914 to float
  %2031 = fmul float %2030, 0x3F70101020000000
  %2032 = call float @dx.op.dot3.f32(i32 55, float %1945, float %1942, float %1944, float %1492, float %1713, float %1933), !dx.precise !89  ; Dot3(ax,ay,az,bx,by,bz)
  %2033 = fmul float %1946, %1956
  %2034 = fmul float %1947, %1959
  %2035 = fmul float %1948, %1962
  br label %2082

; <label>:2036                                    ; preds = %2013
  %2037 = mul i32 %2014, 3
  %2038 = add i32 0, %2037
  %2039 = mul i32 %2038, 2
  %2040 = add i32 0, %2039
  %2041 = getelementptr [24 x float], [24 x float]* %34, i32 0, i32 %2040
  %2042 = load float, float* %2041, align 4, !tbaa !90, !noalias !109
  %2043 = mul i32 %2014, 3
  %2044 = add i32 1, %2043
  %2045 = mul i32 %2044, 2
  %2046 = add i32 0, %2045
  %2047 = getelementptr [24 x float], [24 x float]* %34, i32 0, i32 %2046
  %2048 = load float, float* %2047, align 4, !tbaa !90, !noalias !109
  %2049 = mul i32 %2014, 3
  %2050 = add i32 2, %2049
  %2051 = mul i32 %2050, 2
  %2052 = add i32 0, %2051
  %2053 = getelementptr [24 x float], [24 x float]* %34, i32 0, i32 %2052
  %2054 = load float, float* %2053, align 4, !tbaa !90, !noalias !109
  %2055 = call float @dx.op.dot3.f32(i32 55, float %1945, float %1942, float %1944, float %2042, float %2048, float %2054), !dx.precise !89  ; Dot3(ax,ay,az,bx,by,bz)
  %2056 = mul i32 %2014, 2
  %2057 = add i32 0, %2056
  %2058 = getelementptr [8 x float], [8 x float]* %31, i32 0, i32 %2057
  store float %2055, float* %2058, align 4, !tbaa !90, !alias.scope !109
  %2059 = mul i32 %2014, 3
  %2060 = add i32 0, %2059
  %2061 = mul i32 %2060, 2
  %2062 = add i32 1, %2061
  %2063 = getelementptr [24 x float], [24 x float]* %34, i32 0, i32 %2062
  %2064 = load float, float* %2063, align 4, !tbaa !90, !noalias !109
  %2065 = mul i32 %2014, 3
  %2066 = add i32 1, %2065
  %2067 = mul i32 %2066, 2
  %2068 = add i32 1, %2067
  %2069 = getelementptr [24 x float], [24 x float]* %34, i32 0, i32 %2068
  %2070 = load float, float* %2069, align 4, !tbaa !90, !noalias !109
  %2071 = mul i32 %2014, 3
  %2072 = add i32 2, %2071
  %2073 = mul i32 %2072, 2
  %2074 = add i32 1, %2073
  %2075 = getelementptr [24 x float], [24 x float]* %34, i32 0, i32 %2074
  %2076 = load float, float* %2075, align 4, !tbaa !90, !noalias !109
  %2077 = call float @dx.op.dot3.f32(i32 55, float %1945, float %1942, float %1944, float %2064, float %2070, float %2076), !dx.precise !89  ; Dot3(ax,ay,az,bx,by,bz)
  %2078 = mul i32 %2014, 2
  %2079 = add i32 1, %2078
  %2080 = getelementptr [8 x float], [8 x float]* %31, i32 0, i32 %2079
  store float %2077, float* %2080, align 4, !tbaa !90, !alias.scope !109
  %2081 = add nuw nsw i32 %2014, 1
  br label %2013, !llvm.loop !114

; <label>:2082                                    ; preds = %2097, %2028
  %2083 = phi i32 [ %2187, %2097 ], [ 1, %2028 ]
  %2084 = call %dx.types.Handle @dx.op.createHandleForLib.struct.ByteAddressBuffer(i32 160, %struct.ByteAddressBuffer %12)  ; CreateHandleForLib(Resource)
  %2085 = call %dx.types.ResRet.i32 @dx.op.rawBufferLoad.i32(i32 139, %dx.types.Handle %2084, i32 %1476, i32 undef, i8 15, i32 4)  ; RawBufferLoad(srv,index,elementOffset,mask,alignment)
  %2086 = extractvalue %dx.types.ResRet.i32 %2085, 1
  %2087 = lshr i32 %2086, 17
  %2088 = and i32 %2087, 1
  %2089 = add nuw nsw i32 %2088, 1
  %2090 = lshr i32 %2086, 18
  %2091 = and i32 %2090, 1
  %2092 = add nuw nsw i32 %2089, %2091
  %2093 = lshr i32 %2086, 19
  %2094 = and i32 %2093, 1
  %2095 = add nuw nsw i32 %2092, %2094
  %2096 = icmp slt i32 %2083, %2095
  br i1 %2096, label %2097, label %2188

; <label>:2097                                    ; preds = %2082
  %2098 = add nsw i32 %2083, -1
  %2099 = mul i32 %2098, 3
  %2100 = add i32 0, %2099
  %2101 = mul i32 %2100, 4
  %2102 = add i32 0, %2101
  %2103 = getelementptr [36 x float], [36 x float]* %38, i32 0, i32 %2102
  %2104 = load float, float* %2103, align 4, !tbaa !90, !noalias !109
  %2105 = mul i32 %2098, 3
  %2106 = add i32 1, %2105
  %2107 = mul i32 %2106, 4
  %2108 = add i32 0, %2107
  %2109 = getelementptr [36 x float], [36 x float]* %38, i32 0, i32 %2108
  %2110 = load float, float* %2109, align 4, !tbaa !90, !noalias !109
  %2111 = mul i32 %2098, 3
  %2112 = add i32 2, %2111
  %2113 = mul i32 %2112, 4
  %2114 = add i32 0, %2113
  %2115 = getelementptr [36 x float], [36 x float]* %38, i32 0, i32 %2114
  %2116 = load float, float* %2115, align 4, !tbaa !90, !noalias !109
  %2117 = call float @dx.op.dot3.f32(i32 55, float %1945, float %1942, float %1944, float %2104, float %2110, float %2116), !dx.precise !89  ; Dot3(ax,ay,az,bx,by,bz)
  %2118 = mul i32 %2098, 4
  %2119 = add i32 0, %2118
  %2120 = getelementptr [12 x float], [12 x float]* %32, i32 0, i32 %2119
  store float %2117, float* %2120, align 4, !tbaa !90, !alias.scope !109
  %2121 = mul i32 %2098, 3
  %2122 = add i32 0, %2121
  %2123 = mul i32 %2122, 4
  %2124 = add i32 1, %2123
  %2125 = getelementptr [36 x float], [36 x float]* %38, i32 0, i32 %2124
  %2126 = load float, float* %2125, align 4, !tbaa !90, !noalias !109
  %2127 = mul i32 %2098, 3
  %2128 = add i32 1, %2127
  %2129 = mul i32 %2128, 4
  %2130 = add i32 1, %2129
  %2131 = getelementptr [36 x float], [36 x float]* %38, i32 0, i32 %2130
  %2132 = load float, float* %2131, align 4, !tbaa !90, !noalias !109
  %2133 = mul i32 %2098, 3
  %2134 = add i32 2, %2133
  %2135 = mul i32 %2134, 4
  %2136 = add i32 1, %2135
  %2137 = getelementptr [36 x float], [36 x float]* %38, i32 0, i32 %2136
  %2138 = load float, float* %2137, align 4, !tbaa !90, !noalias !109
  %2139 = call float @dx.op.dot3.f32(i32 55, float %1945, float %1942, float %1944, float %2126, float %2132, float %2138), !dx.precise !89  ; Dot3(ax,ay,az,bx,by,bz)
  %2140 = mul i32 %2098, 4
  %2141 = add i32 1, %2140
  %2142 = getelementptr [12 x float], [12 x float]* %32, i32 0, i32 %2141
  store float %2139, float* %2142, align 4, !tbaa !90, !alias.scope !109
  %2143 = mul i32 %2098, 3
  %2144 = add i32 0, %2143
  %2145 = mul i32 %2144, 4
  %2146 = add i32 2, %2145
  %2147 = getelementptr [36 x float], [36 x float]* %38, i32 0, i32 %2146
  %2148 = load float, float* %2147, align 4, !tbaa !90, !noalias !109
  %2149 = mul i32 %2098, 3
  %2150 = add i32 1, %2149
  %2151 = mul i32 %2150, 4
  %2152 = add i32 2, %2151
  %2153 = getelementptr [36 x float], [36 x float]* %38, i32 0, i32 %2152
  %2154 = load float, float* %2153, align 4, !tbaa !90, !noalias !109
  %2155 = mul i32 %2098, 3
  %2156 = add i32 2, %2155
  %2157 = mul i32 %2156, 4
  %2158 = add i32 2, %2157
  %2159 = getelementptr [36 x float], [36 x float]* %38, i32 0, i32 %2158
  %2160 = load float, float* %2159, align 4, !tbaa !90, !noalias !109
  %2161 = call float @dx.op.dot3.f32(i32 55, float %1945, float %1942, float %1944, float %2148, float %2154, float %2160), !dx.precise !89  ; Dot3(ax,ay,az,bx,by,bz)
  %2162 = mul i32 %2098, 4
  %2163 = add i32 2, %2162
  %2164 = getelementptr [12 x float], [12 x float]* %32, i32 0, i32 %2163
  store float %2161, float* %2164, align 4, !tbaa !90, !alias.scope !109
  %2165 = mul i32 %2098, 3
  %2166 = add i32 0, %2165
  %2167 = mul i32 %2166, 4
  %2168 = add i32 3, %2167
  %2169 = getelementptr [36 x float], [36 x float]* %38, i32 0, i32 %2168
  %2170 = load float, float* %2169, align 4, !tbaa !90, !noalias !109
  %2171 = mul i32 %2098, 3
  %2172 = add i32 1, %2171
  %2173 = mul i32 %2172, 4
  %2174 = add i32 3, %2173
  %2175 = getelementptr [36 x float], [36 x float]* %38, i32 0, i32 %2174
  %2176 = load float, float* %2175, align 4, !tbaa !90, !noalias !109
  %2177 = mul i32 %2098, 3
  %2178 = add i32 2, %2177
  %2179 = mul i32 %2178, 4
  %2180 = add i32 3, %2179
  %2181 = getelementptr [36 x float], [36 x float]* %38, i32 0, i32 %2180
  %2182 = load float, float* %2181, align 4, !tbaa !90, !noalias !109
  %2183 = call float @dx.op.dot3.f32(i32 55, float %1945, float %1942, float %1944, float %2170, float %2176, float %2182), !dx.precise !89  ; Dot3(ax,ay,az,bx,by,bz)
  %2184 = mul i32 %2098, 4
  %2185 = add i32 3, %2184
  %2186 = getelementptr [12 x float], [12 x float]* %32, i32 0, i32 %2185
  store float %2183, float* %2186, align 4, !tbaa !90, !alias.scope !109
  %2187 = add nuw nsw i32 %2083, 1
  br label %2082, !llvm.loop !115

; <label>:2188                                    ; preds = %2082
  %2189 = call float @dx.op.tertiary.f32(i32 46, float 1.000000e+00, float %643, float %1870), !dx.precise !89  ; FMad(a,b,c)
  %2190 = call float @dx.op.dot3.f32(i32 55, float %1945, float %1942, float %1944, float %1493, float %1714, float %2189), !dx.precise !89  ; Dot3(ax,ay,az,bx,by,bz)
  %2191 = fmul float %1953, %1959
  %2192 = call float @dx.op.dot3.f32(i32 55, float %1945, float %1942, float %1944, float %1469, float %1694, float %1915), !dx.precise !89  ; Dot3(ax,ay,az,bx,by,bz)
  %2193 = getelementptr [4 x float], [4 x float]* %33, i32 0, i32 0
  store float %2192, float* %2193, align 4, !tbaa !90, !alias.scope !109
  %2194 = call float @dx.op.dot3.f32(i32 55, float %1945, float %1942, float %1944, float %1502, float %1723, float %1941), !dx.precise !89  ; Dot3(ax,ay,az,bx,by,bz)
  %2195 = getelementptr [4 x float], [4 x float]* %33, i32 0, i32 1
  store float %2194, float* %2195, align 4, !tbaa !90, !alias.scope !109
  %2196 = call float @dx.op.dot3.f32(i32 55, float %1945, float %1942, float %1944, float %1470, float %1695, float %1916), !dx.precise !89  ; Dot3(ax,ay,az,bx,by,bz)
  %2197 = getelementptr [4 x float], [4 x float]* %33, i32 0, i32 2
  store float %2196, float* %2197, align 4, !tbaa !90, !alias.scope !109
  %2198 = call float @dx.op.dot3.f32(i32 55, float %1945, float %1942, float %1944, float %1503, float %1724, float %2031), !dx.precise !89  ; Dot3(ax,ay,az,bx,by,bz)
  %2199 = getelementptr [4 x float], [4 x float]* %33, i32 0, i32 3
  store float %2198, float* %2199, align 4, !tbaa !90, !alias.scope !109
  %2200 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2201 = extractvalue %dx.types.CBufRet.f32 %2200, 1
  %2202 = extractvalue %dx.types.CBufRet.f32 %2200, 2
  %2203 = fsub fast float %2032, %2201
  %2204 = and i32 %2093, 1
  %2205 = add nuw nsw i32 %2204, 1
  %2206 = and i32 %2090, 1
  %2207 = add nuw nsw i32 %2205, %2206
  %2208 = and i32 %2087, 1
  %2209 = add nuw nsw i32 %2207, %2208
  %2210 = getelementptr [8 x float], [8 x float]* %31, i32 0, i32 0
  %2211 = load float, float* %2210, align 4
  %2212 = getelementptr [8 x float], [8 x float]* %31, i32 0, i32 1
  %2213 = load float, float* %2212, align 4
  %2214 = getelementptr [4 x float], [4 x float]* %25, i32 0, i32 0
  %2215 = getelementptr [4 x float], [4 x float]* %26, i32 0, i32 0
  store float %2211, float* %2214, align 4
  store float %2213, float* %2215, align 4
  %2216 = getelementptr inbounds [4 x float], [4 x float]* %37, i32 0, i32 0
  store float %2192, float* %2216, align 4, !tbaa !90, !noalias !116
  %2217 = icmp eq i32 %2209, 1
  br i1 %2217, label %2237, label %2218

; <label>:2218                                    ; preds = %2188
  br label %2219

; <label>:2219                                    ; preds = %2219, %2218
  %2220 = phi i32 [ %2234, %2219 ], [ 1, %2218 ]
  %2221 = getelementptr [4 x float], [4 x float]* %33, i32 0, i32 %2220
  %2222 = load float, float* %2221, align 4, !tbaa !90, !noalias !116
  %2223 = mul i32 %2220, 2
  %2224 = add i32 0, %2223
  %2225 = getelementptr [8 x float], [8 x float]* %31, i32 0, i32 %2224
  %2226 = load float, float* %2225, align 4
  %2227 = mul i32 %2220, 2
  %2228 = add i32 1, %2227
  %2229 = getelementptr [8 x float], [8 x float]* %31, i32 0, i32 %2228
  %2230 = load float, float* %2229, align 4
  %2231 = getelementptr [4 x float], [4 x float]* %25, i32 0, i32 %2220
  %2232 = getelementptr [4 x float], [4 x float]* %26, i32 0, i32 %2220
  store float %2226, float* %2231, align 4
  store float %2230, float* %2232, align 4
  %2233 = getelementptr inbounds [4 x float], [4 x float]* %37, i32 0, i32 %2220
  store float %2222, float* %2233, align 4, !tbaa !90, !noalias !116
  %2234 = add nuw nsw i32 %2220, 1
  %2235 = icmp eq i32 %2234, %2209
  br i1 %2235, label %2236, label %2219

; <label>:2236                                    ; preds = %2219
  br label %2237

; <label>:2237                                    ; preds = %2236, %2188
  %2238 = call float @dx.op.dot3.f32(i32 55, float %1945, float %1942, float %1944, float %1491, float %1712, float %2029), !dx.precise !89  ; Dot3(ax,ay,az,bx,by,bz)
  %2239 = fmul float %1952, %1956
  %2240 = fmul float %1954, %1962
  %2241 = extractvalue %dx.types.CBufRet.f32 %2200, 0
  %2242 = fsub fast float %2238, %2241
  %2243 = fsub fast float %2190, %2202
  %2244 = icmp ult i32 %2095, 4
  br i1 %2244, label %2245, label %2261

; <label>:2245                                    ; preds = %2237
  br label %2246

; <label>:2246                                    ; preds = %2246, %2245
  %2247 = phi i32 [ %2258, %2246 ], [ %2095, %2245 ]
  %2248 = add nsw i32 %2095, -1
  %2249 = getelementptr [4 x float], [4 x float]* %25, i32 0, i32 %2248
  %2250 = getelementptr [4 x float], [4 x float]* %26, i32 0, i32 %2248
  %2251 = load float, float* %2249, align 4
  %2252 = load float, float* %2250, align 4
  %2253 = getelementptr [4 x float], [4 x float]* %25, i32 0, i32 %2247
  %2254 = getelementptr [4 x float], [4 x float]* %26, i32 0, i32 %2247
  store float %2251, float* %2253, align 4
  store float %2252, float* %2254, align 4
  %2255 = getelementptr inbounds [4 x float], [4 x float]* %37, i32 0, i32 %2248
  %2256 = load float, float* %2255, align 4, !tbaa !90, !noalias !116
  %2257 = getelementptr inbounds [4 x float], [4 x float]* %37, i32 0, i32 %2247
  store float %2256, float* %2257, align 4, !tbaa !90, !noalias !116
  %2258 = add nsw i32 %2247, 1
  %2259 = icmp slt i32 %2258, 4
  br i1 %2259, label %2246, label %2260

; <label>:2260                                    ; preds = %2246
  br label %2261

; <label>:2261                                    ; preds = %2260, %2237
  %2262 = getelementptr [4 x float], [4 x float]* %27, i32 0, i32 0
  %2263 = getelementptr [4 x float], [4 x float]* %28, i32 0, i32 0
  %2264 = getelementptr [4 x float], [4 x float]* %29, i32 0, i32 0
  %2265 = getelementptr [4 x float], [4 x float]* %30, i32 0, i32 0
  store float 1.000000e+00, float* %2262, align 4
  store float 0.000000e+00, float* %2263, align 4
  store float 0.000000e+00, float* %2264, align 4
  store float 1.000000e+00, float* %2265, align 4
  %2266 = icmp ugt i32 %2095, 1
  br i1 %2266, label %2267, label %2294

; <label>:2267                                    ; preds = %2261
  br label %2268

; <label>:2268                                    ; preds = %2268, %2267
  %2269 = phi i32 [ %2291, %2268 ], [ 1, %2267 ]
  %2270 = add nsw i32 %2269, -1
  %2271 = mul i32 %2270, 4
  %2272 = add i32 0, %2271
  %2273 = getelementptr [12 x float], [12 x float]* %32, i32 0, i32 %2272
  %2274 = load float, float* %2273, align 4
  %2275 = mul i32 %2270, 4
  %2276 = add i32 1, %2275
  %2277 = getelementptr [12 x float], [12 x float]* %32, i32 0, i32 %2276
  %2278 = load float, float* %2277, align 4
  %2279 = mul i32 %2270, 4
  %2280 = add i32 2, %2279
  %2281 = getelementptr [12 x float], [12 x float]* %32, i32 0, i32 %2280
  %2282 = load float, float* %2281, align 4
  %2283 = mul i32 %2270, 4
  %2284 = add i32 3, %2283
  %2285 = getelementptr [12 x float], [12 x float]* %32, i32 0, i32 %2284
  %2286 = load float, float* %2285, align 4
  %2287 = getelementptr [4 x float], [4 x float]* %27, i32 0, i32 %2269
  %2288 = getelementptr [4 x float], [4 x float]* %28, i32 0, i32 %2269
  %2289 = getelementptr [4 x float], [4 x float]* %29, i32 0, i32 %2269
  %2290 = getelementptr [4 x float], [4 x float]* %30, i32 0, i32 %2269
  store float %2274, float* %2287, align 4
  store float %2278, float* %2288, align 4
  store float %2282, float* %2289, align 4
  store float %2286, float* %2290, align 4
  %2291 = add nuw nsw i32 %2269, 1
  %2292 = icmp slt i32 %2291, %2095
  br i1 %2292, label %2268, label %2293

; <label>:2293                                    ; preds = %2268
  br label %2294

; <label>:2294                                    ; preds = %2293, %2261
  br i1 %2244, label %2295, label %2314

; <label>:2295                                    ; preds = %2294
  br label %2296

; <label>:2296                                    ; preds = %2296, %2295
  %2297 = phi i32 [ %2311, %2296 ], [ %2095, %2295 ]
  %2298 = add nsw i32 %2095, -1
  %2299 = getelementptr [4 x float], [4 x float]* %27, i32 0, i32 %2298
  %2300 = getelementptr [4 x float], [4 x float]* %28, i32 0, i32 %2298
  %2301 = getelementptr [4 x float], [4 x float]* %29, i32 0, i32 %2298
  %2302 = getelementptr [4 x float], [4 x float]* %30, i32 0, i32 %2298
  %2303 = load float, float* %2299, align 4
  %2304 = load float, float* %2300, align 4
  %2305 = load float, float* %2301, align 4
  %2306 = load float, float* %2302, align 4
  %2307 = getelementptr [4 x float], [4 x float]* %27, i32 0, i32 %2297
  %2308 = getelementptr [4 x float], [4 x float]* %28, i32 0, i32 %2297
  %2309 = getelementptr [4 x float], [4 x float]* %29, i32 0, i32 %2297
  %2310 = getelementptr [4 x float], [4 x float]* %30, i32 0, i32 %2297
  store float %2303, float* %2307, align 4
  store float %2304, float* %2308, align 4
  store float %2305, float* %2309, align 4
  store float %2306, float* %2310, align 4
  %2311 = add nsw i32 %2297, 1
  %2312 = icmp slt i32 %2311, 4
  br i1 %2312, label %2296, label %2313

; <label>:2313                                    ; preds = %2296
  br label %2314

; <label>:2314                                    ; preds = %2313, %2294
  %2315 = getelementptr inbounds [4 x float], [4 x float]* %37, i32 0, i32 1
  %2316 = load float, float* %2315, align 4
  %2317 = getelementptr inbounds [4 x float], [4 x float]* %37, i32 0, i32 2
  %2318 = load float, float* %2317, align 4
  %2319 = getelementptr inbounds [4 x float], [4 x float]* %37, i32 0, i32 3
  %2320 = load float, float* %2319, align 4
  %2321 = getelementptr [4 x float], [4 x float]* %25, i32 0, i32 0
  %2322 = getelementptr [4 x float], [4 x float]* %26, i32 0, i32 0
  %2323 = load float, float* %2321, align 4
  %2324 = load float, float* %2322, align 4
  %2325 = getelementptr [4 x float], [4 x float]* %25, i32 0, i32 1
  %2326 = getelementptr [4 x float], [4 x float]* %26, i32 0, i32 1
  %2327 = load float, float* %2325, align 4
  %2328 = load float, float* %2326, align 4
  %2329 = getelementptr [4 x float], [4 x float]* %25, i32 0, i32 2
  %2330 = getelementptr [4 x float], [4 x float]* %26, i32 0, i32 2
  %2331 = load float, float* %2329, align 4
  %2332 = load float, float* %2330, align 4
  %2333 = getelementptr [4 x float], [4 x float]* %25, i32 0, i32 3
  %2334 = getelementptr [4 x float], [4 x float]* %26, i32 0, i32 3
  %2335 = load float, float* %2333, align 4
  %2336 = load float, float* %2334, align 4
  %2337 = load float, float* %2262, align 4
  %2338 = load float, float* %2263, align 4
  %2339 = load float, float* %2264, align 4
  %2340 = load float, float* %2265, align 4
  %2341 = getelementptr [4 x float], [4 x float]* %27, i32 0, i32 1
  %2342 = getelementptr [4 x float], [4 x float]* %28, i32 0, i32 1
  %2343 = getelementptr [4 x float], [4 x float]* %29, i32 0, i32 1
  %2344 = getelementptr [4 x float], [4 x float]* %30, i32 0, i32 1
  %2345 = load float, float* %2341, align 4
  %2346 = load float, float* %2342, align 4
  %2347 = load float, float* %2343, align 4
  %2348 = load float, float* %2344, align 4
  %2349 = getelementptr [4 x float], [4 x float]* %27, i32 0, i32 2
  %2350 = getelementptr [4 x float], [4 x float]* %28, i32 0, i32 2
  %2351 = getelementptr [4 x float], [4 x float]* %29, i32 0, i32 2
  %2352 = getelementptr [4 x float], [4 x float]* %30, i32 0, i32 2
  %2353 = load float, float* %2349, align 4
  %2354 = load float, float* %2350, align 4
  %2355 = load float, float* %2351, align 4
  %2356 = load float, float* %2352, align 4
  %2357 = getelementptr [4 x float], [4 x float]* %27, i32 0, i32 3
  %2358 = getelementptr [4 x float], [4 x float]* %28, i32 0, i32 3
  %2359 = getelementptr [4 x float], [4 x float]* %29, i32 0, i32 3
  %2360 = getelementptr [4 x float], [4 x float]* %30, i32 0, i32 3
  %2361 = load float, float* %2357, align 4
  %2362 = load float, float* %2358, align 4
  %2363 = load float, float* %2359, align 4
  %2364 = load float, float* %2360, align 4
  %2365 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %2366 = extractvalue %dx.types.CBufRet.i32 %2365, 0
  %2367 = icmp ne i32 %2366, 0
  %2368 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %43, i32 361)  ; CBufferLoadLegacy(handle,regIndex)
  %2369 = extractvalue %dx.types.CBufRet.i32 %2368, 1
  %2370 = select i1 %2367, i32 %106, i32 %2369
  %2371 = and i32 %46, 255
  %2372 = shl i32 %185, 4
  %2373 = add i32 %228, %2372
  %2374 = shl i32 %2373, 16
  %2375 = shl i32 %47, 8
  %2376 = and i32 %2375, 65280
  %2377 = or i32 %2376, %2371
  %2378 = or i32 %2377, %2374
  %2379 = and i32 %2370, 65535
  %2380 = and i32 %425, 255
  %2381 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %2380)  ; Countbits(value)
  %2382 = shl i32 %2381, 4
  %2383 = add i32 %2382, %439
  %2384 = call %dx.types.ResRet.i32 @dx.op.rawBufferLoad.i32(i32 139, %dx.types.Handle %2084, i32 %2383, i32 undef, i8 15, i32 4)  ; RawBufferLoad(srv,index,elementOffset,mask,alignment)
  %2385 = extractvalue %dx.types.ResRet.i32 %2384, 1
  %2386 = shl i32 %2385, 4
  %2387 = and i32 %2386, 32752
  %2388 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2387)  ; LegacyF16ToF32(value)
  %2389 = lshr i32 %2385, 7
  %2390 = and i32 %2389, 32752
  %2391 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2390)  ; LegacyF16ToF32(value)
  %2392 = lshr i32 %2385, 22
  %2393 = shl nuw nsw i32 %2392, 5
  %2394 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2393)  ; LegacyF16ToF32(value)
  %2395 = and i32 %425, 4095
  %2396 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %2395)  ; Countbits(value)
  %2397 = shl i32 %2396, 4
  %2398 = add i32 %2397, %439
  %2399 = call %dx.types.ResRet.i32 @dx.op.rawBufferLoad.i32(i32 139, %dx.types.Handle %2084, i32 %2398, i32 undef, i8 15, i32 4)  ; RawBufferLoad(srv,index,elementOffset,mask,alignment)
  %2400 = extractvalue %dx.types.ResRet.i32 %2399, 0
  %2401 = and i32 %2400, 255
  %2402 = uitofp i32 %2401 to float
  %2403 = fdiv float %2402, 2.550000e+02
  %2404 = lshr i32 %2400, 8
  %2405 = and i32 %2404, 255
  %2406 = uitofp i32 %2405 to float
  %2407 = fdiv float %2406, 2.550000e+02
  %2408 = lshr i32 %2400, 16
  %2409 = and i32 %2408, 255
  %2410 = uitofp i32 %2409 to float
  %2411 = fdiv float %2410, 2.550000e+02
  %2412 = and i32 %425, 511
  %2413 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %2412)  ; Countbits(value)
  %2414 = shl i32 %2413, 4
  %2415 = add i32 %2414, %439
  %2416 = call %dx.types.ResRet.i32 @dx.op.rawBufferLoad.i32(i32 139, %dx.types.Handle %2084, i32 %2415, i32 undef, i8 15, i32 4)  ; RawBufferLoad(srv,index,elementOffset,mask,alignment)
  %2417 = extractvalue %dx.types.ResRet.i32 %2416, 1
  %2418 = shl i32 %2417, 4
  %2419 = and i32 %2418, 32752
  %2420 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2419)  ; LegacyF16ToF32(value)
  %2421 = lshr i32 %2417, 7
  %2422 = and i32 %2421, 32752
  %2423 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2422)  ; LegacyF16ToF32(value)
  %2424 = lshr i32 %2417, 22
  %2425 = shl nuw nsw i32 %2424, 5
  %2426 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2425)  ; LegacyF16ToF32(value)
  %2427 = and i32 %425, 8191
  %2428 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %2427)  ; Countbits(value)
  %2429 = shl i32 %2428, 4
  %2430 = add i32 %2429, %439
  %2431 = call %dx.types.ResRet.i32 @dx.op.rawBufferLoad.i32(i32 139, %dx.types.Handle %2084, i32 %2430, i32 undef, i8 15, i32 4)  ; RawBufferLoad(srv,index,elementOffset,mask,alignment)
  %2432 = extractvalue %dx.types.ResRet.i32 %2431, 0
  %2433 = and i32 %2432, 255
  %2434 = uitofp i32 %2433 to float
  %2435 = fdiv float %2434, 2.550000e+02
  %2436 = lshr i32 %2432, 8
  %2437 = and i32 %2436, 255
  %2438 = uitofp i32 %2437 to float
  %2439 = fdiv float %2438, 2.550000e+02
  %2440 = lshr i32 %2432, 16
  %2441 = and i32 %2440, 255
  %2442 = uitofp i32 %2441 to float
  %2443 = fdiv float %2442, 2.550000e+02
  %2444 = and i32 %425, 1023
  %2445 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %2444)  ; Countbits(value)
  %2446 = shl i32 %2445, 4
  %2447 = add i32 %2446, %439
  %2448 = call %dx.types.ResRet.i32 @dx.op.rawBufferLoad.i32(i32 139, %dx.types.Handle %2084, i32 %2447, i32 undef, i8 15, i32 4)  ; RawBufferLoad(srv,index,elementOffset,mask,alignment)
  %2449 = extractvalue %dx.types.ResRet.i32 %2448, 1
  %2450 = shl i32 %2449, 4
  %2451 = and i32 %2450, 32752
  %2452 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2451)  ; LegacyF16ToF32(value)
  %2453 = lshr i32 %2449, 7
  %2454 = and i32 %2453, 32752
  %2455 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2454)  ; LegacyF16ToF32(value)
  %2456 = lshr i32 %2449, 22
  %2457 = shl nuw nsw i32 %2456, 5
  %2458 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2457)  ; LegacyF16ToF32(value)
  %2459 = and i32 %425, 16383
  %2460 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %2459)  ; Countbits(value)
  %2461 = shl i32 %2460, 4
  %2462 = add i32 %2461, %439
  %2463 = call %dx.types.ResRet.i32 @dx.op.rawBufferLoad.i32(i32 139, %dx.types.Handle %2084, i32 %2462, i32 undef, i8 15, i32 4)  ; RawBufferLoad(srv,index,elementOffset,mask,alignment)
  %2464 = extractvalue %dx.types.ResRet.i32 %2463, 0
  %2465 = and i32 %2464, 255
  %2466 = uitofp i32 %2465 to float
  %2467 = fdiv float %2466, 2.550000e+02
  %2468 = lshr i32 %2464, 8
  %2469 = and i32 %2468, 255
  %2470 = uitofp i32 %2469 to float
  %2471 = fdiv float %2470, 2.550000e+02
  %2472 = lshr i32 %2464, 16
  %2473 = and i32 %2472, 255
  %2474 = uitofp i32 %2473 to float
  %2475 = fdiv float %2474, 2.550000e+02
  %2476 = and i32 %425, 2047
  %2477 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %2476)  ; Countbits(value)
  %2478 = shl i32 %2477, 4
  %2479 = add i32 %2478, %439
  %2480 = call %dx.types.ResRet.i32 @dx.op.rawBufferLoad.i32(i32 139, %dx.types.Handle %2084, i32 %2479, i32 undef, i8 15, i32 4)  ; RawBufferLoad(srv,index,elementOffset,mask,alignment)
  %2481 = extractvalue %dx.types.ResRet.i32 %2480, 1
  %2482 = shl i32 %2481, 4
  %2483 = and i32 %2482, 32752
  %2484 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2483)  ; LegacyF16ToF32(value)
  %2485 = lshr i32 %2481, 7
  %2486 = and i32 %2485, 32752
  %2487 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2486)  ; LegacyF16ToF32(value)
  %2488 = lshr i32 %2481, 22
  %2489 = shl nuw nsw i32 %2488, 5
  %2490 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2489)  ; LegacyF16ToF32(value)
  %2491 = and i32 %425, 32767
  %2492 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %2491)  ; Countbits(value)
  %2493 = shl i32 %2492, 4
  %2494 = add i32 %2493, %439
  %2495 = call %dx.types.ResRet.i32 @dx.op.rawBufferLoad.i32(i32 139, %dx.types.Handle %2084, i32 %2494, i32 undef, i8 15, i32 4)  ; RawBufferLoad(srv,index,elementOffset,mask,alignment)
  %2496 = extractvalue %dx.types.ResRet.i32 %2495, 0
  %2497 = and i32 %2496, 255
  %2498 = uitofp i32 %2497 to float
  %2499 = fdiv float %2498, 2.550000e+02
  %2500 = lshr i32 %2496, 8
  %2501 = and i32 %2500, 255
  %2502 = uitofp i32 %2501 to float
  %2503 = fdiv float %2502, 2.550000e+02
  %2504 = lshr i32 %2496, 16
  %2505 = and i32 %2504, 255
  %2506 = uitofp i32 %2505 to float
  %2507 = fdiv float %2506, 2.550000e+02
  %2508 = and i32 %2086, 32
  %2509 = icmp eq i32 %2508, 0
  %2510 = and i32 %2086, 64
  %2511 = icmp eq i32 %2510, 0
  %2512 = and i32 %2086, 128
  %2513 = icmp eq i32 %2512, 0
  %2514 = and i32 %2086, 2
  %2515 = icmp eq i32 %2514, 0
  br i1 %2515, label %2538, label %2516

; <label>:2516                                    ; preds = %2314
  %2517 = fadd float %2324, 0.000000e+00
  %2518 = fadd float %2323, 0.000000e+00
  %2519 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %432)  ; Countbits(value)
  %2520 = and i32 %433, 262143
  %2521 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %2520)  ; Countbits(value)
  %2522 = add i32 %2521, %2519
  %2523 = shl i32 %2522, 2
  %2524 = add i32 %2523, %441
  %2525 = call %dx.types.ResRet.i32 @dx.op.rawBufferLoad.i32(i32 139, %dx.types.Handle %2084, i32 %2524, i32 undef, i8 1, i32 4)  ; RawBufferLoad(srv,index,elementOffset,mask,alignment)
  %2526 = extractvalue %dx.types.ResRet.i32 %2525, 0
  %2527 = getelementptr inbounds [0 x %"class.Texture2D<vector<float, 4> >"], [0 x %"class.Texture2D<vector<float, 4> >"]* @"\01?globalTexture2DHalfTable@@3PAV?$Texture2D@V?$vector@M$03@@@@A", i32 0, i32 %2526
  %2528 = load %"class.Texture2D<vector<float, 4> >", %"class.Texture2D<vector<float, 4> >"* %2527, align 4, !noalias !74
  %2529 = call %dx.types.Handle @"dx.op.createHandleForLib.class.Texture2D<vector<float, 4> >"(i32 160, %"class.Texture2D<vector<float, 4> >" %2528)  ; CreateHandleForLib(Resource)
  %2530 = call %dx.types.Handle @dx.op.createHandleForLib.struct.SamplerState(i32 160, %struct.SamplerState %45)  ; CreateHandleForLib(Resource)
  %2531 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2529, %dx.types.Handle %2530, float %2518, float %2517, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2532 = extractvalue %dx.types.ResRet.f32 %2531, 0
  %2533 = extractvalue %dx.types.ResRet.f32 %2531, 1
  %2534 = extractvalue %dx.types.ResRet.f32 %2531, 2
  %2535 = fmul float %2316, %2532
  %2536 = fmul float %2318, %2533
  %2537 = fmul float %2320, %2534
  br label %2538

; <label>:2538                                    ; preds = %2516, %2314
  %2539 = phi float [ %2320, %2314 ], [ %2537, %2516 ]
  %2540 = phi float [ %2318, %2314 ], [ %2536, %2516 ]
  %2541 = phi float [ %2316, %2314 ], [ %2535, %2516 ]
  %2542 = call %dx.types.Handle @dx.op.createHandleForLib.struct.ByteAddressBuffer(i32 160, %struct.ByteAddressBuffer %12)  ; CreateHandleForLib(Resource)
  %2543 = call %dx.types.ResRet.i32 @dx.op.rawBufferLoad.i32(i32 139, %dx.types.Handle %2542, i32 %1476, i32 undef, i8 15, i32 4)  ; RawBufferLoad(srv,index,elementOffset,mask,alignment)
  %2544 = extractvalue %dx.types.ResRet.i32 %2543, 1
  %2545 = and i32 %2544, 2
  %2546 = icmp eq i32 %2545, 0
  br i1 %2546, label %2575, label %2547

; <label>:2547                                    ; preds = %2538
  %2548 = and i32 %425, 1
  %2549 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %2548)  ; Countbits(value)
  %2550 = shl i32 %2549, 4
  %2551 = add i32 %2550, %439
  %2552 = call %dx.types.ResRet.i32 @dx.op.rawBufferLoad.i32(i32 139, %dx.types.Handle %2542, i32 %2551, i32 undef, i8 15, i32 4)  ; RawBufferLoad(srv,index,elementOffset,mask,alignment)
  %2553 = extractvalue %dx.types.ResRet.i32 %2552, 1
  %2554 = and i32 %2553, 1
  %2555 = icmp ne i32 %2554, 0
  %2556 = select i1 %2555, float %2541, float 1.000000e+00
  %2557 = and i32 %425, 3
  %2558 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %2557)  ; Countbits(value)
  %2559 = shl i32 %2558, 4
  %2560 = add i32 %2559, %439
  %2561 = call %dx.types.ResRet.i32 @dx.op.rawBufferLoad.i32(i32 139, %dx.types.Handle %2542, i32 %2560, i32 undef, i8 15, i32 4)  ; RawBufferLoad(srv,index,elementOffset,mask,alignment)
  %2562 = extractvalue %dx.types.ResRet.i32 %2561, 1
  %2563 = and i32 %2562, 1
  %2564 = icmp ne i32 %2563, 0
  %2565 = select i1 %2564, float %2540, float 1.000000e+00
  %2566 = and i32 %425, 7
  %2567 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %2566)  ; Countbits(value)
  %2568 = shl i32 %2567, 4
  %2569 = add i32 %2568, %439
  %2570 = call %dx.types.ResRet.i32 @dx.op.rawBufferLoad.i32(i32 139, %dx.types.Handle %2542, i32 %2569, i32 undef, i8 15, i32 4)  ; RawBufferLoad(srv,index,elementOffset,mask,alignment)
  %2571 = extractvalue %dx.types.ResRet.i32 %2570, 1
  %2572 = and i32 %2571, 1
  %2573 = icmp ne i32 %2572, 0
  %2574 = select i1 %2573, float %2539, float 1.000000e+00
  br label %2575

; <label>:2575                                    ; preds = %2547, %2538
  %2576 = phi float [ %2539, %2538 ], [ %2574, %2547 ]
  %2577 = phi float [ %2540, %2538 ], [ %2565, %2547 ]
  %2578 = phi float [ %2541, %2538 ], [ %2556, %2547 ]
  %2579 = lshr i32 %2544, 20
  %2580 = and i32 %2579, 3
  %2581 = add nuw nsw i32 %2580, 1
  %2582 = call %dx.types.ResRet.i32 @dx.op.rawBufferLoad.i32(i32 139, %dx.types.Handle %2542, i32 %439, i32 undef, i8 15, i32 4)  ; RawBufferLoad(srv,index,elementOffset,mask,alignment)
  %2583 = extractvalue %dx.types.ResRet.i32 %2582, 0
  %2584 = extractvalue %dx.types.ResRet.i32 %2582, 1
  %2585 = or i32 %2584, %2583
  %2586 = icmp eq i32 %2585, 0
  br i1 %2586, label %2979, label %2587

; <label>:2587                                    ; preds = %2575
  %2588 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 241)  ; CBufferLoadLegacy(handle,regIndex)
  %2589 = extractvalue %dx.types.CBufRet.f32 %2588, 2
  %2590 = bitcast float %2589 to i32
  %2591 = lshr i32 %2590, 27
  %2592 = and i32 %2591, 15
  %2593 = uitofp i32 %2592 to float
  %2594 = fcmp olt float %2593, 1.000000e+00
  br i1 %2594, label %2979, label %2595

; <label>:2595                                    ; preds = %2587
  %2596 = and i32 %2583, 16
  %2597 = icmp eq i32 %2596, 0
  br i1 %2597, label %2835, label %2598

; <label>:2598                                    ; preds = %2595
  %2599 = and i32 %425, 15
  %2600 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %2599)  ; Countbits(value)
  %2601 = shl i32 %2600, 4
  %2602 = add i32 %2601, %439
  %2603 = call %dx.types.ResRet.i32 @dx.op.rawBufferLoad.i32(i32 139, %dx.types.Handle %2542, i32 %2602, i32 undef, i8 15, i32 4)  ; RawBufferLoad(srv,index,elementOffset,mask,alignment)
  %2604 = extractvalue %dx.types.ResRet.i32 %2603, 0
  %2605 = call %dx.types.ResRet.i32 @dx.op.rawBufferLoad.i32(i32 139, %dx.types.Handle %2542, i32 %441, i32 undef, i8 1, i32 4)  ; RawBufferLoad(srv,index,elementOffset,mask,alignment)
  %2606 = extractvalue %dx.types.ResRet.i32 %2605, 0
  %2607 = getelementptr inbounds [0 x %"class.Texture2D<vector<float, 4> >"], [0 x %"class.Texture2D<vector<float, 4> >"]* @"\01?globalTexture2DHalfTable@@3PAV?$Texture2D@V?$vector@M$03@@@@A", i32 0, i32 %2606
  %2608 = load %"class.Texture2D<vector<float, 4> >", %"class.Texture2D<vector<float, 4> >"* %2607, align 4, !noalias !119
  %2609 = call %dx.types.Handle @"dx.op.createHandleForLib.class.Texture2D<vector<float, 4> >"(i32 160, %"class.Texture2D<vector<float, 4> >" %2608)  ; CreateHandleForLib(Resource)
  %2610 = call %dx.types.Handle @dx.op.createHandleForLib.struct.SamplerState(i32 160, %struct.SamplerState %44)  ; CreateHandleForLib(Resource)
  %2611 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2609, %dx.types.Handle %2610, float %2323, float %2324, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2612 = extractvalue %dx.types.ResRet.f32 %2611, 0
  %2613 = extractvalue %dx.types.ResRet.f32 %2611, 1
  %2614 = extractvalue %dx.types.ResRet.f32 %2611, 2
  %2615 = extractvalue %dx.types.ResRet.f32 %2611, 3
  %2616 = and i32 %2604, 255
  %2617 = uitofp i32 %2616 to float
  %2618 = lshr i32 %2604, 8
  %2619 = and i32 %2618, 255
  %2620 = uitofp i32 %2619 to float
  %2621 = fmul float %2617, %2615
  %2622 = fadd float %2620, %2621
  %2623 = fmul float %2622, 0x3F70101000000000
  %2624 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 241)  ; CBufferLoadLegacy(handle,regIndex)
  %2625 = extractvalue %dx.types.CBufRet.f32 %2624, 0
  %2626 = bitcast float %2625 to i32
  %2627 = lshr i32 %2626, 16
  %2628 = and i32 %2627, 255
  %2629 = uitofp i32 %2628 to float
  %2630 = fptoui float %2629 to i32
  %2631 = icmp eq i32 %2630, 8
  br i1 %2631, label %2632, label %2650

; <label>:2632                                    ; preds = %2598
  %2633 = fmul float %2612, 0x3FD322D0E0000000
  %2634 = fmul float %2613, 0x3FE2C8B440000000
  %2635 = fadd float %2633, %2634
  %2636 = fmul float %2614, 0x3FBD2F1AA0000000
  %2637 = fadd float %2636, %2635
  %2638 = fsub float %2614, %2637
  %2639 = fmul float %2638, 0x3FDF7CEDA0000000
  %2640 = fsub float %2612, %2637
  %2641 = fmul float %2640, 0x3FEC106240000000
  %2642 = fmul float %2641, 0x3FF23D70A0000000
  %2643 = fadd float %2637, %2642
  %2644 = fmul float %2639, 0x3FD947AE20000000
  %2645 = fsub float %2637, %2644
  %2646 = fmul float %2641, 0x3FE2978D40000000
  %2647 = fsub float %2645, %2646
  %2648 = fmul float %2639, 0x4000418940000000
  %2649 = fadd float %2637, %2648
  br label %2650

; <label>:2650                                    ; preds = %2632, %2598
  %2651 = phi float [ %2643, %2632 ], [ %2612, %2598 ]
  %2652 = phi float [ %2647, %2632 ], [ %2613, %2598 ]
  %2653 = phi float [ %2649, %2632 ], [ %2614, %2598 ]
  %2654 = call %dx.types.Handle @dx.op.createHandleForLib.struct.ByteAddressBuffer(i32 160, %struct.ByteAddressBuffer %12)  ; CreateHandleForLib(Resource)
  %2655 = call %dx.types.ResRet.i32 @dx.op.rawBufferLoad.i32(i32 139, %dx.types.Handle %2654, i32 %439, i32 undef, i8 15, i32 4)  ; RawBufferLoad(srv,index,elementOffset,mask,alignment)
  %2656 = extractvalue %dx.types.ResRet.i32 %2655, 0
  %2657 = and i32 %2656, 512
  %2658 = icmp eq i32 %2657, 0
  br i1 %2658, label %2672, label %2659

; <label>:2659                                    ; preds = %2650
  %2660 = and i32 %432, 1073741823
  %2661 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %2660)  ; Countbits(value)
  %2662 = shl i32 %2661, 2
  %2663 = add i32 %2662, %441
  %2664 = call %dx.types.ResRet.i32 @dx.op.rawBufferLoad.i32(i32 139, %dx.types.Handle %2654, i32 %2663, i32 undef, i8 1, i32 4)  ; RawBufferLoad(srv,index,elementOffset,mask,alignment)
  %2665 = extractvalue %dx.types.ResRet.i32 %2664, 0
  %2666 = getelementptr inbounds [0 x %"class.Texture2D<vector<float, 4> >"], [0 x %"class.Texture2D<vector<float, 4> >"]* @"\01?globalTexture2DHalfTable@@3PAV?$Texture2D@V?$vector@M$03@@@@A", i32 0, i32 %2665
  %2667 = load %"class.Texture2D<vector<float, 4> >", %"class.Texture2D<vector<float, 4> >"* %2666, align 4, !noalias !125
  %2668 = call %dx.types.Handle @"dx.op.createHandleForLib.class.Texture2D<vector<float, 4> >"(i32 160, %"class.Texture2D<vector<float, 4> >" %2667)  ; CreateHandleForLib(Resource)
  %2669 = call %dx.types.Handle @dx.op.createHandleForLib.struct.SamplerState(i32 160, %struct.SamplerState %45)  ; CreateHandleForLib(Resource)
  %2670 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2668, %dx.types.Handle %2669, float %2323, float %2324, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2671 = extractvalue %dx.types.ResRet.f32 %2670, 0
  br label %2672

; <label>:2672                                    ; preds = %2659, %2650
  %2673 = phi float [ %2671, %2659 ], [ 1.000000e+00, %2650 ]
  %2674 = call %dx.types.Handle @dx.op.createHandleForLib.struct.ByteAddressBuffer(i32 160, %struct.ByteAddressBuffer %12)  ; CreateHandleForLib(Resource)
  %2675 = call %dx.types.ResRet.i32 @dx.op.rawBufferLoad.i32(i32 139, %dx.types.Handle %2674, i32 %439, i32 undef, i8 15, i32 4)  ; RawBufferLoad(srv,index,elementOffset,mask,alignment)
  %2676 = extractvalue %dx.types.ResRet.i32 %2675, 0
  %2677 = and i32 %2676, 33554432
  %2678 = icmp eq i32 %2677, 0
  br i1 %2678, label %2779, label %2679

; <label>:2679                                    ; preds = %2672
  %2680 = call %dx.types.ResRet.i32 @dx.op.rawBufferLoad.i32(i32 139, %dx.types.Handle %2674, i32 %2398, i32 undef, i8 15, i32 4)  ; RawBufferLoad(srv,index,elementOffset,mask,alignment)
  %2681 = extractvalue %dx.types.ResRet.i32 %2680, 2
  %2682 = and i32 %2681, 65535
  %2683 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2682), !dx.precise !89  ; LegacyF16ToF32(value)
  %2684 = lshr i32 %2681, 16
  %2685 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2684), !dx.precise !89  ; LegacyF16ToF32(value)
  %2686 = extractvalue %dx.types.ResRet.i32 %2680, 3
  %2687 = and i32 %2686, 65535
  %2688 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2687), !dx.precise !89  ; LegacyF16ToF32(value)
  %2689 = extractvalue %dx.types.ResRet.i32 %2680, 0
  %2690 = lshr i32 %2689, 24
  %2691 = uitofp i32 %2690 to float
  %2692 = fdiv float %2691, 2.550000e+02
  %2693 = and i32 %2689, 255
  %2694 = uitofp i32 %2693 to float
  %2695 = fdiv float %2694, 2.550000e+02
  %2696 = lshr i32 %2689, 8
  %2697 = and i32 %2696, 255
  %2698 = uitofp i32 %2697 to float
  %2699 = fdiv float %2698, 2.550000e+02
  %2700 = lshr i32 %2689, 16
  %2701 = and i32 %2700, 255
  %2702 = uitofp i32 %2701 to float
  %2703 = fdiv float %2702, 2.550000e+02
  %2704 = extractvalue %dx.types.ResRet.i32 %2680, 1
  %2705 = lshr i32 %2704, 24
  %2706 = uitofp i32 %2705 to float
  %2707 = fdiv float %2706, 2.550000e+02
  %2708 = and i32 %2704, 255
  %2709 = uitofp i32 %2708 to float
  %2710 = fdiv float %2709, 2.550000e+02
  %2711 = lshr i32 %2704, 8
  %2712 = and i32 %2711, 255
  %2713 = uitofp i32 %2712 to float
  %2714 = fdiv float %2713, 2.550000e+02
  %2715 = lshr i32 %2704, 16
  %2716 = and i32 %2715, 255
  %2717 = uitofp i32 %2716 to float
  %2718 = fdiv float %2717, 2.550000e+02
  %2719 = fmul float %2651, 5.000000e-01
  %2720 = bitcast float %2651 to i32
  %2721 = ashr i32 %2720, 1
  %2722 = sub nsw i32 1597463174, %2721
  %2723 = bitcast i32 %2722 to float
  %2724 = fmul float %2723, %2723
  %2725 = fmul float %2719, %2724
  %2726 = fsub float 1.500000e+00, %2725
  %2727 = fmul float %2723, %2726
  %2728 = fmul float %2651, %2727
  %2729 = fmul float %2652, 5.000000e-01
  %2730 = bitcast float %2652 to i32
  %2731 = ashr i32 %2730, 1
  %2732 = sub nsw i32 1597463174, %2731
  %2733 = bitcast i32 %2732 to float
  %2734 = fmul float %2733, %2733
  %2735 = fmul float %2729, %2734
  %2736 = fsub float 1.500000e+00, %2735
  %2737 = fmul float %2733, %2736
  %2738 = fmul float %2652, %2737
  %2739 = fmul float %2653, 5.000000e-01
  %2740 = bitcast float %2653 to i32
  %2741 = ashr i32 %2740, 1
  %2742 = sub nsw i32 1597463174, %2741
  %2743 = bitcast i32 %2742 to float
  %2744 = fmul float %2743, %2743
  %2745 = fmul float %2739, %2744
  %2746 = fsub float 1.500000e+00, %2745
  %2747 = fmul float %2743, %2746
  %2748 = fmul float %2653, %2747
  %2749 = fsub float %2728, %2710
  %2750 = fsub float %2738, %2714
  %2751 = fsub float %2748, %2718
  %2752 = fmul float %2683, %2749
  %2753 = fmul float %2685, %2750
  %2754 = fmul float %2688, %2751
  %2755 = fadd float %2695, %2752
  %2756 = fadd float %2699, %2753
  %2757 = fadd float %2703, %2754
  %2758 = call float @dx.op.unary.f32(i32 7, float %2755), !dx.precise !89  ; Saturate(value)
  %2759 = call float @dx.op.unary.f32(i32 7, float %2756), !dx.precise !89  ; Saturate(value)
  %2760 = call float @dx.op.unary.f32(i32 7, float %2757), !dx.precise !89  ; Saturate(value)
  %2761 = fmul float %2758, %2758
  %2762 = fmul float %2759, %2759
  %2763 = fmul float %2760, %2760
  %2764 = fsub float %2761, %2651
  %2765 = fsub float %2762, %2652
  %2766 = fsub float %2763, %2653
  %2767 = fmul float %2673, %2764
  %2768 = fmul float %2673, %2765
  %2769 = fmul float %2673, %2766
  %2770 = fadd float %2651, %2767
  %2771 = fadd float %2652, %2768
  %2772 = fadd float %2653, %2769
  %2773 = fsub float %2623, %2707
  %2774 = fadd float %2692, %2773
  %2775 = call float @dx.op.unary.f32(i32 7, float %2774), !dx.precise !89  ; Saturate(value)
  %2776 = fsub float %2775, %2623
  %2777 = fmul float %2673, %2776
  %2778 = fadd float %2623, %2777
  br label %2835

; <label>:2779                                    ; preds = %2672
  %2780 = and i32 %2676, 134217728
  %2781 = icmp eq i32 %2780, 0
  br i1 %2781, label %2819, label %2782

; <label>:2782                                    ; preds = %2779
  %2783 = call float @dx.op.unary.f32(i32 24, float %2403), !dx.precise !89  ; Sqrt(value)
  %2784 = call float @dx.op.unary.f32(i32 24, float %2407), !dx.precise !89  ; Sqrt(value)
  %2785 = call float @dx.op.unary.f32(i32 24, float %2411), !dx.precise !89  ; Sqrt(value)
  %2786 = fadd float %2783, -5.000000e-01
  %2787 = fadd float %2784, -5.000000e-01
  %2788 = fadd float %2785, -5.000000e-01
  %2789 = fmul float %2673, %2786
  %2790 = fmul float %2673, %2787
  %2791 = fmul float %2673, %2788
  %2792 = fadd float %2789, 5.000000e-01
  %2793 = fadd float %2790, 5.000000e-01
  %2794 = fadd float %2791, 5.000000e-01
  %2795 = call float @dx.op.unary.f32(i32 24, float %2651), !dx.precise !89  ; Sqrt(value)
  %2796 = call float @dx.op.unary.f32(i32 24, float %2652), !dx.precise !89  ; Sqrt(value)
  %2797 = call float @dx.op.unary.f32(i32 24, float %2653), !dx.precise !89  ; Sqrt(value)
  %2798 = fmul float %2792, 2.000000e+00
  %2799 = fsub float 1.000000e+00, %2798
  %2800 = fmul float %2795, %2799
  %2801 = fmul float %2795, %2800
  %2802 = fmul float %2795, %2798
  %2803 = fadd float %2802, %2801
  %2804 = fmul float %2793, 2.000000e+00
  %2805 = fsub float 1.000000e+00, %2804
  %2806 = fmul float %2796, %2805
  %2807 = fmul float %2796, %2806
  %2808 = fmul float %2796, %2804
  %2809 = fadd float %2808, %2807
  %2810 = fmul float %2794, 2.000000e+00
  %2811 = fsub float 1.000000e+00, %2810
  %2812 = fmul float %2797, %2811
  %2813 = fmul float %2797, %2812
  %2814 = fmul float %2797, %2810
  %2815 = fadd float %2814, %2813
  %2816 = fmul float %2803, %2803
  %2817 = fmul float %2809, %2809
  %2818 = fmul float %2815, %2815
  br label %2835

; <label>:2819                                    ; preds = %2779
  %2820 = fmul float %2403, %2403
  %2821 = fmul float %2407, %2407
  %2822 = fmul float %2411, %2411
  %2823 = fadd float %2820, -1.000000e+00
  %2824 = fadd float %2821, -1.000000e+00
  %2825 = fadd float %2822, -1.000000e+00
  %2826 = fmul float %2823, %2673
  %2827 = fmul float %2824, %2673
  %2828 = fmul float %2825, %2673
  %2829 = fadd float %2826, 1.000000e+00
  %2830 = fadd float %2827, 1.000000e+00
  %2831 = fadd float %2828, 1.000000e+00
  %2832 = fmul float %2651, %2829
  %2833 = fmul float %2652, %2830
  %2834 = fmul float %2653, %2831
  br label %2835

; <label>:2835                                    ; preds = %2819, %2782, %2679, %2595
  %2836 = phi float [ %2778, %2679 ], [ %2623, %2782 ], [ %2623, %2819 ], [ 0x3FA23C0BE0000000, %2595 ]
  %2837 = phi float [ %2770, %2679 ], [ %2816, %2782 ], [ %2832, %2819 ], [ 1.000000e+00, %2595 ]
  %2838 = phi float [ %2771, %2679 ], [ %2817, %2782 ], [ %2833, %2819 ], [ 1.000000e+00, %2595 ]
  %2839 = phi float [ %2772, %2679 ], [ %2818, %2782 ], [ %2834, %2819 ], [ 1.000000e+00, %2595 ]
  %2840 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %43, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2841 = extractvalue %dx.types.CBufRet.i32 %2840, 1
  %2842 = and i32 %2841, 1
  %2843 = icmp ne i32 %2842, 0
  %2844 = call %dx.types.Handle @dx.op.createHandleForLib.struct.ByteAddressBuffer(i32 160, %struct.ByteAddressBuffer %12)  ; CreateHandleForLib(Resource)
  %2845 = call %dx.types.ResRet.i32 @dx.op.rawBufferLoad.i32(i32 139, %dx.types.Handle %2844, i32 %1476, i32 undef, i8 15, i32 4)  ; RawBufferLoad(srv,index,elementOffset,mask,alignment)
  %2846 = extractvalue %dx.types.ResRet.i32 %2845, 3
  %2847 = and i32 %2846, 32
  %2848 = icmp ne i32 %2847, 0
  %2849 = and i1 %2843, %2848
  %2850 = select i1 %2849, float 1.000000e+00, float %2837
  %2851 = select i1 %2849, float 0x3FD3333340000000, float %2838
  %2852 = select i1 %2849, float 0x3FD3333340000000, float %2839
  %2853 = call %dx.types.ResRet.i32 @dx.op.rawBufferLoad.i32(i32 139, %dx.types.Handle %2844, i32 %439, i32 undef, i8 15, i32 4)  ; RawBufferLoad(srv,index,elementOffset,mask,alignment)
  %2854 = extractvalue %dx.types.ResRet.i32 %2853, 0
  %2855 = and i32 %2854, 32
  %2856 = icmp eq i32 %2855, 0
  br i1 %2856, label %2940, label %2857

; <label>:2857                                    ; preds = %2835
  %2858 = and i32 %425, 15
  %2859 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %2858)  ; Countbits(value)
  %2860 = shl i32 %2859, 4
  %2861 = add i32 %2860, %439
  %2862 = call %dx.types.ResRet.i32 @dx.op.rawBufferLoad.i32(i32 139, %dx.types.Handle %2844, i32 %2861, i32 undef, i8 15, i32 4)  ; RawBufferLoad(srv,index,elementOffset,mask,alignment)
  %2863 = extractvalue %dx.types.ResRet.i32 %2862, 1
  %2864 = and i32 %432, 15
  %2865 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %2864)  ; Countbits(value)
  %2866 = shl i32 %2865, 2
  %2867 = add i32 %2866, %441
  %2868 = call %dx.types.ResRet.i32 @dx.op.rawBufferLoad.i32(i32 139, %dx.types.Handle %2844, i32 %2867, i32 undef, i8 1, i32 4)  ; RawBufferLoad(srv,index,elementOffset,mask,alignment)
  %2869 = extractvalue %dx.types.ResRet.i32 %2868, 0
  %2870 = getelementptr inbounds [0 x %"class.Texture2D<vector<float, 4> >"], [0 x %"class.Texture2D<vector<float, 4> >"]* @"\01?globalTexture2DHalfTable@@3PAV?$Texture2D@V?$vector@M$03@@@@A", i32 0, i32 %2869
  %2871 = load %"class.Texture2D<vector<float, 4> >", %"class.Texture2D<vector<float, 4> >"* %2870, align 4, !noalias !128
  %2872 = call %dx.types.Handle @"dx.op.createHandleForLib.class.Texture2D<vector<float, 4> >"(i32 160, %"class.Texture2D<vector<float, 4> >" %2871)  ; CreateHandleForLib(Resource)
  %2873 = call %dx.types.Handle @dx.op.createHandleForLib.struct.SamplerState(i32 160, %struct.SamplerState %44)  ; CreateHandleForLib(Resource)
  %2874 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2872, %dx.types.Handle %2873, float %2323, float %2324, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2875 = extractvalue %dx.types.ResRet.f32 %2874, 0
  %2876 = extractvalue %dx.types.ResRet.f32 %2874, 1
  %2877 = extractvalue %dx.types.ResRet.f32 %2874, 2
  %2878 = extractvalue %dx.types.ResRet.f32 %2874, 3
  %2879 = and i32 %2863, 255
  %2880 = uitofp i32 %2879 to float
  %2881 = lshr i32 %2863, 8
  %2882 = and i32 %2881, 255
  %2883 = uitofp i32 %2882 to float
  %2884 = lshr i32 %2863, 16
  %2885 = and i32 %2884, 255
  %2886 = uitofp i32 %2885 to float
  %2887 = fmul float %2886, 0x3F70101000000000
  %2888 = fmul float %2880, %2875
  %2889 = fadd float %2883, %2888
  %2890 = fmul float %2889, 0x3F70101000000000
  %2891 = fadd float %2876, -5.000000e-01
  %2892 = fadd float %2878, -5.000000e-01
  %2893 = fmul float %2887, %2891
  %2894 = fmul float %2887, %2892
  %2895 = fadd float %2893, 5.000000e-01
  %2896 = fadd float %2894, 5.000000e-01
  %2897 = fmul float %2895, 2.000000e+00
  %2898 = fadd float %2897, -1.000000e+00
  %2899 = fmul float %2896, 2.000000e+00
  %2900 = fadd float %2899, -1.000000e+00
  %2901 = fadd float %2898, %2900
  %2902 = fmul float %2901, 5.000000e-01
  %2903 = fsub float %2898, %2900
  %2904 = fmul float %2903, 5.000000e-01
  %2905 = call float @dx.op.unary.f32(i32 6, float %2902), !dx.precise !89  ; FAbs(value)
  %2906 = fsub float 1.000000e+00, %2905
  %2907 = call float @dx.op.unary.f32(i32 6, float %2904), !dx.precise !89  ; FAbs(value)
  %2908 = fsub float %2906, %2907
  %2909 = call float @dx.op.dot3.f32(i32 55, float %2902, float %2904, float %2908, float %2902, float %2904, float %2908), !dx.precise !89  ; Dot3(ax,ay,az,bx,by,bz)
  %2910 = call float @dx.op.unary.f32(i32 25, float %2909), !dx.precise !89  ; Rsqrt(value)
  %2911 = fmul float %2910, %2902
  %2912 = fmul float %2910, %2904
  %2913 = call %dx.types.Handle @dx.op.createHandleForLib.struct.ByteAddressBuffer(i32 160, %struct.ByteAddressBuffer %12)  ; CreateHandleForLib(Resource)
  %2914 = call %dx.types.ResRet.i32 @dx.op.rawBufferLoad.i32(i32 139, %dx.types.Handle %2913, i32 %439, i32 undef, i8 15, i32 4)  ; RawBufferLoad(srv,index,elementOffset,mask,alignment)
  %2915 = extractvalue %dx.types.ResRet.i32 %2914, 0
  %2916 = and i32 %2915, 67108864
  %2917 = icmp eq i32 %2916, 0
  br i1 %2917, label %2936, label %2918

; <label>:2918                                    ; preds = %2857
  %2919 = and i32 %425, 65535
  %2920 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %2919)  ; Countbits(value)
  %2921 = shl i32 %2920, 4
  %2922 = add i32 %2921, %439
  %2923 = call %dx.types.ResRet.i32 @dx.op.rawBufferLoad.i32(i32 139, %dx.types.Handle %2913, i32 %2922, i32 undef, i8 15, i32 4)  ; RawBufferLoad(srv,index,elementOffset,mask,alignment)
  %2924 = extractvalue %dx.types.ResRet.i32 %2923, 0
  %2925 = and i32 %2924, 65535
  %2926 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2925), !dx.precise !89  ; LegacyF16ToF32(value)
  %2927 = extractvalue %dx.types.ResRet.i32 %2923, 1
  %2928 = and i32 %2927, 65535
  %2929 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2928), !dx.precise !89  ; LegacyF16ToF32(value)
  %2930 = lshr i32 %2924, 16
  %2931 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2930), !dx.precise !89  ; LegacyF16ToF32(value)
  %2932 = fsub float %2890, %2931
  %2933 = fmul float %2926, %2932
  %2934 = fadd float %2929, %2933
  %2935 = call float @dx.op.unary.f32(i32 7, float %2934), !dx.precise !89  ; Saturate(value)
  br label %2936

; <label>:2936                                    ; preds = %2918, %2857
  %2937 = phi float [ %2935, %2918 ], [ %2890, %2857 ]
  %2938 = call float @dx.op.dot2.f32(i32 54, float %2911, float %2912, float %2337, float %2338), !dx.precise !89  ; Dot2(ax,ay,bx,by)
  %2939 = call float @dx.op.dot2.f32(i32 54, float %2911, float %2912, float %2339, float %2340), !dx.precise !89  ; Dot2(ax,ay,bx,by)
  br label %2940

; <label>:2940                                    ; preds = %2936, %2835
  %2941 = phi float [ %2937, %2936 ], [ 0x3FD6666660000000, %2835 ]
  %2942 = phi float [ %2938, %2936 ], [ 0.000000e+00, %2835 ]
  %2943 = phi float [ %2939, %2936 ], [ 0.000000e+00, %2835 ]
  %2944 = phi float [ %2877, %2936 ], [ 1.000000e+00, %2835 ]
  %2945 = call %dx.types.Handle @dx.op.createHandleForLib.struct.ByteAddressBuffer(i32 160, %struct.ByteAddressBuffer %12)  ; CreateHandleForLib(Resource)
  %2946 = call %dx.types.ResRet.i32 @dx.op.rawBufferLoad.i32(i32 139, %dx.types.Handle %2945, i32 %439, i32 undef, i8 15, i32 4)  ; RawBufferLoad(srv,index,elementOffset,mask,alignment)
  %2947 = extractvalue %dx.types.ResRet.i32 %2946, 0
  %2948 = and i32 %2947, 64
  %2949 = icmp eq i32 %2948, 0
  br i1 %2949, label %2979, label %2950

; <label>:2950                                    ; preds = %2940
  %2951 = and i32 %432, 255
  %2952 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %2951)  ; Countbits(value)
  %2953 = shl i32 %2952, 2
  %2954 = add i32 %2953, %441
  %2955 = call %dx.types.ResRet.i32 @dx.op.rawBufferLoad.i32(i32 139, %dx.types.Handle %2945, i32 %2954, i32 undef, i8 1, i32 4)  ; RawBufferLoad(srv,index,elementOffset,mask,alignment)
  %2956 = extractvalue %dx.types.ResRet.i32 %2955, 0
  %2957 = getelementptr inbounds [0 x %"class.Texture2D<vector<float, 4> >"], [0 x %"class.Texture2D<vector<float, 4> >"]* @"\01?globalTexture2DHalfTable@@3PAV?$Texture2D@V?$vector@M$03@@@@A", i32 0, i32 %2956
  %2958 = load %"class.Texture2D<vector<float, 4> >", %"class.Texture2D<vector<float, 4> >"* %2957, align 4, !noalias !135
  %2959 = call %dx.types.Handle @dx.op.createHandleForLib.struct.ByteAddressBuffer(i32 160, %struct.ByteAddressBuffer %12)  ; CreateHandleForLib(Resource)
  %2960 = call %dx.types.ResRet.i32 @dx.op.rawBufferLoad.i32(i32 139, %dx.types.Handle %2959, i32 %439, i32 undef, i8 15, i32 4)  ; RawBufferLoad(srv,index,elementOffset,mask,alignment)
  %2961 = extractvalue %dx.types.ResRet.i32 %2960, 0
  %2962 = and i32 %2961, 131072
  %2963 = icmp eq i32 %2962, 0
  %2964 = call %dx.types.Handle @"dx.op.createHandleForLib.class.Texture2D<vector<float, 4> >"(i32 160, %"class.Texture2D<vector<float, 4> >" %2958)  ; CreateHandleForLib(Resource)
  %2965 = call %dx.types.Handle @dx.op.createHandleForLib.struct.SamplerState(i32 160, %struct.SamplerState %44)  ; CreateHandleForLib(Resource)
  %2966 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2964, %dx.types.Handle %2965, float %2323, float %2324, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2967 = extractvalue %dx.types.ResRet.f32 %2966, 0
  %2968 = extractvalue %dx.types.ResRet.f32 %2966, 1
  %2969 = extractvalue %dx.types.ResRet.f32 %2966, 2
  %2970 = fmul fast float %2967, %2388
  %2971 = fmul fast float %2968, %2391
  %2972 = fmul fast float %2969, %2394
  br i1 %2963, label %2979, label %2973

; <label>:2973                                    ; preds = %2950
  %2974 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2975 = extractvalue %dx.types.CBufRet.f32 %2974, 0
  %2976 = fmul fast float %2975, %2970
  %2977 = fmul fast float %2975, %2971
  %2978 = fmul fast float %2975, %2972
  br label %2979

; <label>:2979                                    ; preds = %2973, %2950, %2940, %2587, %2575
  %2980 = phi float [ 0.000000e+00, %2575 ], [ 0.000000e+00, %2587 ], [ %2942, %2950 ], [ %2942, %2940 ], [ %2942, %2973 ]
  %2981 = phi float [ 0.000000e+00, %2575 ], [ 0.000000e+00, %2587 ], [ %2943, %2950 ], [ %2943, %2940 ], [ %2943, %2973 ]
  %2982 = phi float [ 0.000000e+00, %2575 ], [ 0.000000e+00, %2587 ], [ %2850, %2950 ], [ %2850, %2940 ], [ %2850, %2973 ]
  %2983 = phi float [ 0.000000e+00, %2575 ], [ 0.000000e+00, %2587 ], [ %2851, %2950 ], [ %2851, %2940 ], [ %2851, %2973 ]
  %2984 = phi float [ 0.000000e+00, %2575 ], [ 0.000000e+00, %2587 ], [ %2852, %2950 ], [ %2852, %2940 ], [ %2852, %2973 ]
  %2985 = phi float [ 0.000000e+00, %2575 ], [ 0.000000e+00, %2587 ], [ %2970, %2950 ], [ 0.000000e+00, %2940 ], [ %2976, %2973 ]
  %2986 = phi float [ 0.000000e+00, %2575 ], [ 0.000000e+00, %2587 ], [ %2971, %2950 ], [ 0.000000e+00, %2940 ], [ %2977, %2973 ]
  %2987 = phi float [ 0.000000e+00, %2575 ], [ 0.000000e+00, %2587 ], [ %2972, %2950 ], [ 0.000000e+00, %2940 ], [ %2978, %2973 ]
  %2988 = phi float [ 0.000000e+00, %2575 ], [ 0.000000e+00, %2587 ], [ %2836, %2950 ], [ %2836, %2940 ], [ %2836, %2973 ]
  %2989 = phi float [ 0.000000e+00, %2575 ], [ 0.000000e+00, %2587 ], [ 1.000000e+00, %2950 ], [ 1.000000e+00, %2940 ], [ 1.000000e+00, %2973 ]
  %2990 = phi float [ 0.000000e+00, %2575 ], [ 0.000000e+00, %2587 ], [ %2941, %2950 ], [ %2941, %2940 ], [ %2941, %2973 ]
  %2991 = phi float [ 0.000000e+00, %2575 ], [ 0.000000e+00, %2587 ], [ %2944, %2950 ], [ %2944, %2940 ], [ %2944, %2973 ]
  %2992 = phi float [ 0.000000e+00, %2575 ], [ 1.000000e+00, %2587 ], [ 1.000000e+00, %2950 ], [ 1.000000e+00, %2940 ], [ 1.000000e+00, %2973 ]
  br i1 %2509, label %3696, label %2993

; <label>:2993                                    ; preds = %2979
  %2994 = icmp ult i32 %2581, 2
  %2995 = and i32 %425, 1
  %2996 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %2995)  ; Countbits(value)
  %2997 = shl i32 %2996, 4
  %2998 = add i32 %2997, %439
  %2999 = call %dx.types.Handle @dx.op.createHandleForLib.struct.ByteAddressBuffer(i32 160, %struct.ByteAddressBuffer %12)  ; CreateHandleForLib(Resource)
  %3000 = call %dx.types.ResRet.i32 @dx.op.rawBufferLoad.i32(i32 139, %dx.types.Handle %2999, i32 %2998, i32 undef, i8 15, i32 4)  ; RawBufferLoad(srv,index,elementOffset,mask,alignment)
  %3001 = extractvalue %dx.types.ResRet.i32 %3000, 0
  %3002 = extractvalue %dx.types.ResRet.i32 %3000, 1
  %3003 = or i32 %3002, %3001
  %3004 = icmp eq i32 %3003, 0
  br i1 %3004, label %3696, label %3005

; <label>:3005                                    ; preds = %2993
  %3006 = fadd float %2992, 1.000000e+00
  %3007 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 241)  ; CBufferLoadLegacy(handle,regIndex)
  %3008 = extractvalue %dx.types.CBufRet.f32 %3007, 2
  %3009 = bitcast float %3008 to i32
  %3010 = lshr i32 %3009, 27
  %3011 = and i32 %3010, 15
  %3012 = uitofp i32 %3011 to float
  %3013 = fcmp ogt float %3006, %3012
  br i1 %3013, label %3696, label %3014

; <label>:3014                                    ; preds = %3005
  %3015 = and i32 %3001, 16777216
  %3016 = icmp ne i32 %3015, 0
  %3017 = select i1 %3016, float 0.000000e+00, float %2578
  %3018 = and i32 %3001, 256
  %3019 = icmp eq i32 %3018, 0
  br i1 %3019, label %3075, label %3020

; <label>:3020                                    ; preds = %3014
  %3021 = and i32 %432, 131071
  %3022 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %3021)  ; Countbits(value)
  %3023 = shl i32 %3022, 2
  %3024 = add i32 %3023, %441
  %3025 = call %dx.types.ResRet.i32 @dx.op.rawBufferLoad.i32(i32 139, %dx.types.Handle %2999, i32 %3024, i32 undef, i8 1, i32 4)  ; RawBufferLoad(srv,index,elementOffset,mask,alignment)
  %3026 = extractvalue %dx.types.ResRet.i32 %3025, 0
  %3027 = getelementptr inbounds [0 x %"class.Texture2D<vector<float, 4> >"], [0 x %"class.Texture2D<vector<float, 4> >"]* @"\01?globalTexture2DHalfTable@@3PAV?$Texture2D@V?$vector@M$03@@@@A", i32 0, i32 %3026
  %3028 = load %"class.Texture2D<vector<float, 4> >", %"class.Texture2D<vector<float, 4> >"* %3027, align 4, !noalias !138
  %3029 = call %dx.types.Handle @"dx.op.createHandleForLib.class.Texture2D<vector<float, 4> >"(i32 160, %"class.Texture2D<vector<float, 4> >" %3028)  ; CreateHandleForLib(Resource)
  %3030 = call %dx.types.Handle @dx.op.createHandleForLib.struct.SamplerState(i32 160, %struct.SamplerState %45)  ; CreateHandleForLib(Resource)
  %3031 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3029, %dx.types.Handle %3030, float %2327, float %2328, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3032 = extractvalue %dx.types.ResRet.f32 %3031, 0
  %3033 = and i32 %425, 31
  %3034 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %3033)  ; Countbits(value)
  %3035 = shl i32 %3034, 4
  %3036 = add i32 %3035, %439
  %3037 = call %dx.types.Handle @dx.op.createHandleForLib.struct.ByteAddressBuffer(i32 160, %struct.ByteAddressBuffer %12)  ; CreateHandleForLib(Resource)
  %3038 = call %dx.types.ResRet.i32 @dx.op.rawBufferLoad.i32(i32 139, %dx.types.Handle %3037, i32 %3036, i32 undef, i8 15, i32 4)  ; RawBufferLoad(srv,index,elementOffset,mask,alignment)
  %3039 = extractvalue %dx.types.ResRet.i32 %3038, 3
  %3040 = shl i32 %3039, 4
  %3041 = and i32 %3040, 32752
  %3042 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3041), !dx.precise !89  ; LegacyF16ToF32(value)
  %3043 = lshr i32 %3039, 7
  %3044 = and i32 %3043, 32752
  %3045 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3044), !dx.precise !89  ; LegacyF16ToF32(value)
  %3046 = fsub float 1.000000e+00, %3017
  %3047 = call float @dx.op.binary.f32(i32 35, float %3046, float 0x3E7FF19E20000000), !dx.precise !89  ; FMax(a,b)
  %3048 = bitcast float %3017 to i32
  %3049 = sitofp i32 %3048 to float
  %3050 = fadd float %3049, 0xC1CFBF8940000000
  %3051 = fmul float %3050, %3045
  %3052 = fadd float %3051, 0x41CFBF8940000000
  %3053 = fptosi float %3052 to i32
  %3054 = bitcast i32 %3053 to float
  %3055 = bitcast float %3047 to i32
  %3056 = sitofp i32 %3055 to float
  %3057 = fadd float %3056, 0xC1CFBF8940000000
  %3058 = fmul float %3045, %3057
  %3059 = fadd float %3058, 0x41CFBF8940000000
  %3060 = fptosi float %3059 to i32
  %3061 = bitcast i32 %3060 to float
  %3062 = fmul float %3042, %3054
  %3063 = fmul float %3042, %3061
  %3064 = fsub float %3047, %3062
  %3065 = fadd float %3047, %3063
  %3066 = call float @dx.op.unary.f32(i32 7, float %3064), !dx.precise !89  ; Saturate(value)
  %3067 = call float @dx.op.unary.f32(i32 7, float %3065), !dx.precise !89  ; Saturate(value)
  %3068 = fsub float %3032, %3066
  %3069 = fsub float %3067, %3066
  %3070 = bitcast float %3069 to i32
  %3071 = sub nsw i32 2129859010, %3070
  %3072 = bitcast i32 %3071 to float
  %3073 = fmul float %3068, %3072
  %3074 = call float @dx.op.unary.f32(i32 7, float %3073), !dx.precise !89  ; Saturate(value)
  br label %3075

; <label>:3075                                    ; preds = %3020, %3014
  %3076 = phi float [ %3074, %3020 ], [ %3017, %3014 ]
  %3077 = call %dx.types.Handle @dx.op.createHandleForLib.struct.ByteAddressBuffer(i32 160, %struct.ByteAddressBuffer %12)  ; CreateHandleForLib(Resource)
  %3078 = call %dx.types.ResRet.i32 @dx.op.rawBufferLoad.i32(i32 139, %dx.types.Handle %3077, i32 %2998, i32 undef, i8 15, i32 4)  ; RawBufferLoad(srv,index,elementOffset,mask,alignment)
  %3079 = extractvalue %dx.types.ResRet.i32 %3078, 0
  %3080 = and i32 %3079, 128
  %3081 = icmp eq i32 %3080, 0
  br i1 %3081, label %3104, label %3082

; <label>:3082                                    ; preds = %3075
  %3083 = and i32 %432, 8191
  %3084 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %3083)  ; Countbits(value)
  %3085 = shl i32 %3084, 2
  %3086 = add i32 %3085, %441
  %3087 = call %dx.types.ResRet.i32 @dx.op.rawBufferLoad.i32(i32 139, %dx.types.Handle %3077, i32 %3086, i32 undef, i8 1, i32 4)  ; RawBufferLoad(srv,index,elementOffset,mask,alignment)
  %3088 = extractvalue %dx.types.ResRet.i32 %3087, 0
  %3089 = getelementptr inbounds [0 x %"class.Texture2D<vector<float, 4> >"], [0 x %"class.Texture2D<vector<float, 4> >"]* @"\01?globalTexture2DHalfTable@@3PAV?$Texture2D@V?$vector@M$03@@@@A", i32 0, i32 %3088
  %3090 = load %"class.Texture2D<vector<float, 4> >", %"class.Texture2D<vector<float, 4> >"* %3089, align 4, !noalias !141
  %3091 = call %dx.types.Handle @"dx.op.createHandleForLib.class.Texture2D<vector<float, 4> >"(i32 160, %"class.Texture2D<vector<float, 4> >" %3090)  ; CreateHandleForLib(Resource)
  %3092 = call %dx.types.Handle @dx.op.createHandleForLib.struct.SamplerState(i32 160, %struct.SamplerState %45)  ; CreateHandleForLib(Resource)
  %3093 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3091, %dx.types.Handle %3092, float %2327, float %2328, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3094 = extractvalue %dx.types.ResRet.f32 %3093, 0
  %3095 = call %dx.types.Handle @dx.op.createHandleForLib.struct.ByteAddressBuffer(i32 160, %struct.ByteAddressBuffer %12)  ; CreateHandleForLib(Resource)
  %3096 = call %dx.types.ResRet.i32 @dx.op.rawBufferLoad.i32(i32 139, %dx.types.Handle %3095, i32 %2998, i32 undef, i8 15, i32 4)  ; RawBufferLoad(srv,index,elementOffset,mask,alignment)
  %3097 = extractvalue %dx.types.ResRet.i32 %3096, 0
  %3098 = and i32 %3097, 524288
  %3099 = icmp ne i32 %3098, 0
  %3100 = fcmp ogt float %3094, 0x3FE0101020000000
  %3101 = select i1 %3100, float 1.000000e+00, float 0.000000e+00
  %3102 = select i1 %3099, float %3101, float %3094
  %3103 = fmul float %3076, %3102
  br label %3104

; <label>:3104                                    ; preds = %3082, %3075
  %3105 = phi float [ %3103, %3082 ], [ %3076, %3075 ]
  %3106 = fcmp ult float %3105, 0x3F70101020000000
  br i1 %3106, label %3696, label %3107

; <label>:3107                                    ; preds = %3104
  %3108 = call %dx.types.Handle @dx.op.createHandleForLib.struct.ByteAddressBuffer(i32 160, %struct.ByteAddressBuffer %12)  ; CreateHandleForLib(Resource)
  %3109 = call %dx.types.ResRet.i32 @dx.op.rawBufferLoad.i32(i32 139, %dx.types.Handle %3108, i32 %2998, i32 undef, i8 15, i32 4)  ; RawBufferLoad(srv,index,elementOffset,mask,alignment)
  %3110 = extractvalue %dx.types.ResRet.i32 %3109, 0
  %3111 = and i32 %3110, 16
  %3112 = icmp eq i32 %3111, 0
  br i1 %3112, label %3354, label %3113

; <label>:3113                                    ; preds = %3107
  %3114 = and i32 %425, 31
  %3115 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %3114)  ; Countbits(value)
  %3116 = shl i32 %3115, 4
  %3117 = add i32 %3116, %439
  %3118 = call %dx.types.ResRet.i32 @dx.op.rawBufferLoad.i32(i32 139, %dx.types.Handle %3108, i32 %3117, i32 undef, i8 15, i32 4)  ; RawBufferLoad(srv,index,elementOffset,mask,alignment)
  %3119 = extractvalue %dx.types.ResRet.i32 %3118, 0
  %3120 = and i32 %432, 1
  %3121 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %3120)  ; Countbits(value)
  %3122 = shl i32 %3121, 2
  %3123 = add i32 %3122, %441
  %3124 = call %dx.types.ResRet.i32 @dx.op.rawBufferLoad.i32(i32 139, %dx.types.Handle %3108, i32 %3123, i32 undef, i8 1, i32 4)  ; RawBufferLoad(srv,index,elementOffset,mask,alignment)
  %3125 = extractvalue %dx.types.ResRet.i32 %3124, 0
  %3126 = getelementptr inbounds [0 x %"class.Texture2D<vector<float, 4> >"], [0 x %"class.Texture2D<vector<float, 4> >"]* @"\01?globalTexture2DHalfTable@@3PAV?$Texture2D@V?$vector@M$03@@@@A", i32 0, i32 %3125
  %3127 = load %"class.Texture2D<vector<float, 4> >", %"class.Texture2D<vector<float, 4> >"* %3126, align 4, !noalias !144
  %3128 = call %dx.types.Handle @"dx.op.createHandleForLib.class.Texture2D<vector<float, 4> >"(i32 160, %"class.Texture2D<vector<float, 4> >" %3127)  ; CreateHandleForLib(Resource)
  %3129 = call %dx.types.Handle @dx.op.createHandleForLib.struct.SamplerState(i32 160, %struct.SamplerState %44)  ; CreateHandleForLib(Resource)
  %3130 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3128, %dx.types.Handle %3129, float %2327, float %2328, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3131 = extractvalue %dx.types.ResRet.f32 %3130, 0
  %3132 = extractvalue %dx.types.ResRet.f32 %3130, 1
  %3133 = extractvalue %dx.types.ResRet.f32 %3130, 2
  %3134 = extractvalue %dx.types.ResRet.f32 %3130, 3
  %3135 = and i32 %3119, 255
  %3136 = uitofp i32 %3135 to float
  %3137 = lshr i32 %3119, 8
  %3138 = and i32 %3137, 255
  %3139 = uitofp i32 %3138 to float
  %3140 = fmul float %3136, %3134
  %3141 = fadd float %3139, %3140
  %3142 = fmul float %3141, 0x3F70101000000000
  %3143 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 241)  ; CBufferLoadLegacy(handle,regIndex)
  %3144 = extractvalue %dx.types.CBufRet.f32 %3143, 0
  %3145 = bitcast float %3144 to i32
  %3146 = lshr i32 %3145, 16
  %3147 = and i32 %3146, 255
  %3148 = uitofp i32 %3147 to float
  %3149 = fptoui float %3148 to i32
  %3150 = icmp eq i32 %3149, 8
  br i1 %3150, label %3151, label %3169

; <label>:3151                                    ; preds = %3113
  %3152 = fmul float %3131, 0x3FD322D0E0000000
  %3153 = fmul float %3132, 0x3FE2C8B440000000
  %3154 = fadd float %3152, %3153
  %3155 = fmul float %3133, 0x3FBD2F1AA0000000
  %3156 = fadd float %3155, %3154
  %3157 = fsub float %3133, %3156
  %3158 = fmul float %3157, 0x3FDF7CEDA0000000
  %3159 = fsub float %3131, %3156
  %3160 = fmul float %3159, 0x3FEC106240000000
  %3161 = fmul float %3160, 0x3FF23D70A0000000
  %3162 = fadd float %3156, %3161
  %3163 = fmul float %3158, 0x3FD947AE20000000
  %3164 = fsub float %3156, %3163
  %3165 = fmul float %3160, 0x3FE2978D40000000
  %3166 = fsub float %3164, %3165
  %3167 = fmul float %3158, 0x4000418940000000
  %3168 = fadd float %3156, %3167
  br label %3169

; <label>:3169                                    ; preds = %3151, %3113
  %3170 = phi float [ %3162, %3151 ], [ %3131, %3113 ]
  %3171 = phi float [ %3166, %3151 ], [ %3132, %3113 ]
  %3172 = phi float [ %3168, %3151 ], [ %3133, %3113 ]
  %3173 = call %dx.types.Handle @dx.op.createHandleForLib.struct.ByteAddressBuffer(i32 160, %struct.ByteAddressBuffer %12)  ; CreateHandleForLib(Resource)
  %3174 = call %dx.types.ResRet.i32 @dx.op.rawBufferLoad.i32(i32 139, %dx.types.Handle %3173, i32 %2998, i32 undef, i8 15, i32 4)  ; RawBufferLoad(srv,index,elementOffset,mask,alignment)
  %3175 = extractvalue %dx.types.ResRet.i32 %3174, 0
  %3176 = and i32 %3175, 512
  %3177 = icmp eq i32 %3176, 0
  br i1 %3177, label %3191, label %3178

; <label>:3178                                    ; preds = %3169
  %3179 = and i32 %432, 2147483647
  %3180 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %3179)  ; Countbits(value)
  %3181 = shl i32 %3180, 2
  %3182 = add i32 %3181, %441
  %3183 = call %dx.types.ResRet.i32 @dx.op.rawBufferLoad.i32(i32 139, %dx.types.Handle %3173, i32 %3182, i32 undef, i8 1, i32 4)  ; RawBufferLoad(srv,index,elementOffset,mask,alignment)
  %3184 = extractvalue %dx.types.ResRet.i32 %3183, 0
  %3185 = getelementptr inbounds [0 x %"class.Texture2D<vector<float, 4> >"], [0 x %"class.Texture2D<vector<float, 4> >"]* @"\01?globalTexture2DHalfTable@@3PAV?$Texture2D@V?$vector@M$03@@@@A", i32 0, i32 %3184
  %3186 = load %"class.Texture2D<vector<float, 4> >", %"class.Texture2D<vector<float, 4> >"* %3185, align 4, !noalias !150
  %3187 = call %dx.types.Handle @"dx.op.createHandleForLib.class.Texture2D<vector<float, 4> >"(i32 160, %"class.Texture2D<vector<float, 4> >" %3186)  ; CreateHandleForLib(Resource)
  %3188 = call %dx.types.Handle @dx.op.createHandleForLib.struct.SamplerState(i32 160, %struct.SamplerState %45)  ; CreateHandleForLib(Resource)
  %3189 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3187, %dx.types.Handle %3188, float %2327, float %2328, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3190 = extractvalue %dx.types.ResRet.f32 %3189, 0
  br label %3191

; <label>:3191                                    ; preds = %3178, %3169
  %3192 = phi float [ %3190, %3178 ], [ 1.000000e+00, %3169 ]
  %3193 = call %dx.types.Handle @dx.op.createHandleForLib.struct.ByteAddressBuffer(i32 160, %struct.ByteAddressBuffer %12)  ; CreateHandleForLib(Resource)
  %3194 = call %dx.types.ResRet.i32 @dx.op.rawBufferLoad.i32(i32 139, %dx.types.Handle %3193, i32 %2998, i32 undef, i8 15, i32 4)  ; RawBufferLoad(srv,index,elementOffset,mask,alignment)
  %3195 = extractvalue %dx.types.ResRet.i32 %3194, 0
  %3196 = and i32 %3195, 33554432
  %3197 = icmp eq i32 %3196, 0
  br i1 %3197, label %3298, label %3198

; <label>:3198                                    ; preds = %3191
  %3199 = call %dx.types.ResRet.i32 @dx.op.rawBufferLoad.i32(i32 139, %dx.types.Handle %3193, i32 %2430, i32 undef, i8 15, i32 4)  ; RawBufferLoad(srv,index,elementOffset,mask,alignment)
  %3200 = extractvalue %dx.types.ResRet.i32 %3199, 2
  %3201 = and i32 %3200, 65535
  %3202 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3201), !dx.precise !89  ; LegacyF16ToF32(value)
  %3203 = lshr i32 %3200, 16
  %3204 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3203), !dx.precise !89  ; LegacyF16ToF32(value)
  %3205 = extractvalue %dx.types.ResRet.i32 %3199, 3
  %3206 = and i32 %3205, 65535
  %3207 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3206), !dx.precise !89  ; LegacyF16ToF32(value)
  %3208 = extractvalue %dx.types.ResRet.i32 %3199, 0
  %3209 = lshr i32 %3208, 24
  %3210 = uitofp i32 %3209 to float
  %3211 = fdiv float %3210, 2.550000e+02
  %3212 = and i32 %3208, 255
  %3213 = uitofp i32 %3212 to float
  %3214 = fdiv float %3213, 2.550000e+02
  %3215 = lshr i32 %3208, 8
  %3216 = and i32 %3215, 255
  %3217 = uitofp i32 %3216 to float
  %3218 = fdiv float %3217, 2.550000e+02
  %3219 = lshr i32 %3208, 16
  %3220 = and i32 %3219, 255
  %3221 = uitofp i32 %3220 to float
  %3222 = fdiv float %3221, 2.550000e+02
  %3223 = extractvalue %dx.types.ResRet.i32 %3199, 1
  %3224 = lshr i32 %3223, 24
  %3225 = uitofp i32 %3224 to float
  %3226 = fdiv float %3225, 2.550000e+02
  %3227 = and i32 %3223, 255
  %3228 = uitofp i32 %3227 to float
  %3229 = fdiv float %3228, 2.550000e+02
  %3230 = lshr i32 %3223, 8
  %3231 = and i32 %3230, 255
  %3232 = uitofp i32 %3231 to float
  %3233 = fdiv float %3232, 2.550000e+02
  %3234 = lshr i32 %3223, 16
  %3235 = and i32 %3234, 255
  %3236 = uitofp i32 %3235 to float
  %3237 = fdiv float %3236, 2.550000e+02
  %3238 = fmul float %3170, 5.000000e-01
  %3239 = bitcast float %3170 to i32
  %3240 = ashr i32 %3239, 1
  %3241 = sub nsw i32 1597463174, %3240
  %3242 = bitcast i32 %3241 to float
  %3243 = fmul float %3242, %3242
  %3244 = fmul float %3238, %3243
  %3245 = fsub float 1.500000e+00, %3244
  %3246 = fmul float %3242, %3245
  %3247 = fmul float %3170, %3246
  %3248 = fmul float %3171, 5.000000e-01
  %3249 = bitcast float %3171 to i32
  %3250 = ashr i32 %3249, 1
  %3251 = sub nsw i32 1597463174, %3250
  %3252 = bitcast i32 %3251 to float
  %3253 = fmul float %3252, %3252
  %3254 = fmul float %3248, %3253
  %3255 = fsub float 1.500000e+00, %3254
  %3256 = fmul float %3252, %3255
  %3257 = fmul float %3171, %3256
  %3258 = fmul float %3172, 5.000000e-01
  %3259 = bitcast float %3172 to i32
  %3260 = ashr i32 %3259, 1
  %3261 = sub nsw i32 1597463174, %3260
  %3262 = bitcast i32 %3261 to float
  %3263 = fmul float %3262, %3262
  %3264 = fmul float %3258, %3263
  %3265 = fsub float 1.500000e+00, %3264
  %3266 = fmul float %3262, %3265
  %3267 = fmul float %3172, %3266
  %3268 = fsub float %3247, %3229
  %3269 = fsub float %3257, %3233
  %3270 = fsub float %3267, %3237
  %3271 = fmul float %3202, %3268
  %3272 = fmul float %3204, %3269
  %3273 = fmul float %3207, %3270
  %3274 = fadd float %3214, %3271
  %3275 = fadd float %3218, %3272
  %3276 = fadd float %3222, %3273
  %3277 = call float @dx.op.unary.f32(i32 7, float %3274), !dx.precise !89  ; Saturate(value)
  %3278 = call float @dx.op.unary.f32(i32 7, float %3275), !dx.precise !89  ; Saturate(value)
  %3279 = call float @dx.op.unary.f32(i32 7, float %3276), !dx.precise !89  ; Saturate(value)
  %3280 = fmul float %3277, %3277
  %3281 = fmul float %3278, %3278
  %3282 = fmul float %3279, %3279
  %3283 = fsub float %3280, %3170
  %3284 = fsub float %3281, %3171
  %3285 = fsub float %3282, %3172
  %3286 = fmul float %3192, %3283
  %3287 = fmul float %3192, %3284
  %3288 = fmul float %3192, %3285
  %3289 = fadd float %3170, %3286
  %3290 = fadd float %3171, %3287
  %3291 = fadd float %3172, %3288
  %3292 = fsub float %3142, %3226
  %3293 = fadd float %3211, %3292
  %3294 = call float @dx.op.unary.f32(i32 7, float %3293), !dx.precise !89  ; Saturate(value)
  %3295 = fsub float %3294, %3142
  %3296 = fmul float %3192, %3295
  %3297 = fadd float %3142, %3296
  br label %3354

; <label>:3298                                    ; preds = %3191
  %3299 = and i32 %3195, 134217728
  %3300 = icmp eq i32 %3299, 0
  br i1 %3300, label %3338, label %3301

; <label>:3301                                    ; preds = %3298
  %3302 = call float @dx.op.unary.f32(i32 24, float %2435), !dx.precise !89  ; Sqrt(value)
  %3303 = call float @dx.op.unary.f32(i32 24, float %2439), !dx.precise !89  ; Sqrt(value)
  %3304 = call float @dx.op.unary.f32(i32 24, float %2443), !dx.precise !89  ; Sqrt(value)
  %3305 = fadd float %3302, -5.000000e-01
  %3306 = fadd float %3303, -5.000000e-01
  %3307 = fadd float %3304, -5.000000e-01
  %3308 = fmul float %3192, %3305
  %3309 = fmul float %3192, %3306
  %3310 = fmul float %3192, %3307
  %3311 = fadd float %3308, 5.000000e-01
  %3312 = fadd float %3309, 5.000000e-01
  %3313 = fadd float %3310, 5.000000e-01
  %3314 = call float @dx.op.unary.f32(i32 24, float %3170), !dx.precise !89  ; Sqrt(value)
  %3315 = call float @dx.op.unary.f32(i32 24, float %3171), !dx.precise !89  ; Sqrt(value)
  %3316 = call float @dx.op.unary.f32(i32 24, float %3172), !dx.precise !89  ; Sqrt(value)
  %3317 = fmul float %3311, 2.000000e+00
  %3318 = fsub float 1.000000e+00, %3317
  %3319 = fmul float %3314, %3318
  %3320 = fmul float %3314, %3319
  %3321 = fmul float %3314, %3317
  %3322 = fadd float %3321, %3320
  %3323 = fmul float %3312, 2.000000e+00
  %3324 = fsub float 1.000000e+00, %3323
  %3325 = fmul float %3315, %3324
  %3326 = fmul float %3315, %3325
  %3327 = fmul float %3315, %3323
  %3328 = fadd float %3327, %3326
  %3329 = fmul float %3313, 2.000000e+00
  %3330 = fsub float 1.000000e+00, %3329
  %3331 = fmul float %3316, %3330
  %3332 = fmul float %3316, %3331
  %3333 = fmul float %3316, %3329
  %3334 = fadd float %3333, %3332
  %3335 = fmul float %3322, %3322
  %3336 = fmul float %3328, %3328
  %3337 = fmul float %3334, %3334
  br label %3354

; <label>:3338                                    ; preds = %3298
  %3339 = fmul float %2435, %2435
  %3340 = fmul float %2439, %2439
  %3341 = fmul float %2443, %2443
  %3342 = fadd float %3339, -1.000000e+00
  %3343 = fadd float %3340, -1.000000e+00
  %3344 = fadd float %3341, -1.000000e+00
  %3345 = fmul float %3342, %3192
  %3346 = fmul float %3343, %3192
  %3347 = fmul float %3344, %3192
  %3348 = fadd float %3345, 1.000000e+00
  %3349 = fadd float %3346, 1.000000e+00
  %3350 = fadd float %3347, 1.000000e+00
  %3351 = fmul float %3170, %3348
  %3352 = fmul float %3171, %3349
  %3353 = fmul float %3172, %3350
  br label %3354

; <label>:3354                                    ; preds = %3338, %3301, %3198, %3107
  %3355 = phi float [ %3297, %3198 ], [ %3142, %3301 ], [ %3142, %3338 ], [ 0x3FA23C0BE0000000, %3107 ]
  %3356 = phi float [ %3289, %3198 ], [ %3335, %3301 ], [ %3351, %3338 ], [ 1.000000e+00, %3107 ]
  %3357 = phi float [ %3290, %3198 ], [ %3336, %3301 ], [ %3352, %3338 ], [ 1.000000e+00, %3107 ]
  %3358 = phi float [ %3291, %3198 ], [ %3337, %3301 ], [ %3353, %3338 ], [ 1.000000e+00, %3107 ]
  %3359 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %43, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %3360 = extractvalue %dx.types.CBufRet.i32 %3359, 1
  %3361 = and i32 %3360, 1
  %3362 = icmp ne i32 %3361, 0
  %3363 = call %dx.types.Handle @dx.op.createHandleForLib.struct.ByteAddressBuffer(i32 160, %struct.ByteAddressBuffer %12)  ; CreateHandleForLib(Resource)
  %3364 = call %dx.types.ResRet.i32 @dx.op.rawBufferLoad.i32(i32 139, %dx.types.Handle %3363, i32 %1476, i32 undef, i8 15, i32 4)  ; RawBufferLoad(srv,index,elementOffset,mask,alignment)
  %3365 = extractvalue %dx.types.ResRet.i32 %3364, 3
  %3366 = and i32 %3365, 32
  %3367 = icmp ne i32 %3366, 0
  %3368 = and i1 %3362, %3367
  %3369 = select i1 %3368, float 1.000000e+00, float %3356
  %3370 = select i1 %3368, float 0x3FD3333340000000, float %3357
  %3371 = select i1 %3368, float 0x3FD3333340000000, float %3358
  %3372 = call %dx.types.ResRet.i32 @dx.op.rawBufferLoad.i32(i32 139, %dx.types.Handle %3363, i32 %2998, i32 undef, i8 15, i32 4)  ; RawBufferLoad(srv,index,elementOffset,mask,alignment)
  %3373 = extractvalue %dx.types.ResRet.i32 %3372, 0
  %3374 = and i32 %3373, 32
  %3375 = icmp eq i32 %3374, 0
  br i1 %3375, label %3459, label %3376

; <label>:3376                                    ; preds = %3354
  %3377 = and i32 %425, 31
  %3378 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %3377)  ; Countbits(value)
  %3379 = shl i32 %3378, 4
  %3380 = add i32 %3379, %439
  %3381 = call %dx.types.ResRet.i32 @dx.op.rawBufferLoad.i32(i32 139, %dx.types.Handle %3363, i32 %3380, i32 undef, i8 15, i32 4)  ; RawBufferLoad(srv,index,elementOffset,mask,alignment)
  %3382 = extractvalue %dx.types.ResRet.i32 %3381, 1
  %3383 = and i32 %432, 31
  %3384 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %3383)  ; Countbits(value)
  %3385 = shl i32 %3384, 2
  %3386 = add i32 %3385, %441
  %3387 = call %dx.types.ResRet.i32 @dx.op.rawBufferLoad.i32(i32 139, %dx.types.Handle %3363, i32 %3386, i32 undef, i8 1, i32 4)  ; RawBufferLoad(srv,index,elementOffset,mask,alignment)
  %3388 = extractvalue %dx.types.ResRet.i32 %3387, 0
  %3389 = getelementptr inbounds [0 x %"class.Texture2D<vector<float, 4> >"], [0 x %"class.Texture2D<vector<float, 4> >"]* @"\01?globalTexture2DHalfTable@@3PAV?$Texture2D@V?$vector@M$03@@@@A", i32 0, i32 %3388
  %3390 = load %"class.Texture2D<vector<float, 4> >", %"class.Texture2D<vector<float, 4> >"* %3389, align 4, !noalias !153
  %3391 = call %dx.types.Handle @"dx.op.createHandleForLib.class.Texture2D<vector<float, 4> >"(i32 160, %"class.Texture2D<vector<float, 4> >" %3390)  ; CreateHandleForLib(Resource)
  %3392 = call %dx.types.Handle @dx.op.createHandleForLib.struct.SamplerState(i32 160, %struct.SamplerState %44)  ; CreateHandleForLib(Resource)
  %3393 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3391, %dx.types.Handle %3392, float %2327, float %2328, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3394 = extractvalue %dx.types.ResRet.f32 %3393, 0
  %3395 = extractvalue %dx.types.ResRet.f32 %3393, 1
  %3396 = extractvalue %dx.types.ResRet.f32 %3393, 2
  %3397 = extractvalue %dx.types.ResRet.f32 %3393, 3
  %3398 = and i32 %3382, 255
  %3399 = uitofp i32 %3398 to float
  %3400 = lshr i32 %3382, 8
  %3401 = and i32 %3400, 255
  %3402 = uitofp i32 %3401 to float
  %3403 = lshr i32 %3382, 16
  %3404 = and i32 %3403, 255
  %3405 = uitofp i32 %3404 to float
  %3406 = fmul float %3405, 0x3F70101000000000
  %3407 = fmul float %3399, %3394
  %3408 = fadd float %3402, %3407
  %3409 = fmul float %3408, 0x3F70101000000000
  %3410 = fadd float %3395, -5.000000e-01
  %3411 = fadd float %3397, -5.000000e-01
  %3412 = fmul float %3406, %3410
  %3413 = fmul float %3406, %3411
  %3414 = fadd float %3412, 5.000000e-01
  %3415 = fadd float %3413, 5.000000e-01
  %3416 = fmul float %3414, 2.000000e+00
  %3417 = fadd float %3416, -1.000000e+00
  %3418 = fmul float %3415, 2.000000e+00
  %3419 = fadd float %3418, -1.000000e+00
  %3420 = fadd float %3417, %3419
  %3421 = fmul float %3420, 5.000000e-01
  %3422 = fsub float %3417, %3419
  %3423 = fmul float %3422, 5.000000e-01
  %3424 = call float @dx.op.unary.f32(i32 6, float %3421), !dx.precise !89  ; FAbs(value)
  %3425 = fsub float 1.000000e+00, %3424
  %3426 = call float @dx.op.unary.f32(i32 6, float %3423), !dx.precise !89  ; FAbs(value)
  %3427 = fsub float %3425, %3426
  %3428 = call float @dx.op.dot3.f32(i32 55, float %3421, float %3423, float %3427, float %3421, float %3423, float %3427), !dx.precise !89  ; Dot3(ax,ay,az,bx,by,bz)
  %3429 = call float @dx.op.unary.f32(i32 25, float %3428), !dx.precise !89  ; Rsqrt(value)
  %3430 = fmul float %3429, %3421
  %3431 = fmul float %3429, %3423
  %3432 = call %dx.types.Handle @dx.op.createHandleForLib.struct.ByteAddressBuffer(i32 160, %struct.ByteAddressBuffer %12)  ; CreateHandleForLib(Resource)
  %3433 = call %dx.types.ResRet.i32 @dx.op.rawBufferLoad.i32(i32 139, %dx.types.Handle %3432, i32 %2998, i32 undef, i8 15, i32 4)  ; RawBufferLoad(srv,index,elementOffset,mask,alignment)
  %3434 = extractvalue %dx.types.ResRet.i32 %3433, 0
  %3435 = and i32 %3434, 67108864
  %3436 = icmp eq i32 %3435, 0
  br i1 %3436, label %3455, label %3437

; <label>:3437                                    ; preds = %3376
  %3438 = and i32 %425, 131071
  %3439 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %3438)  ; Countbits(value)
  %3440 = shl i32 %3439, 4
  %3441 = add i32 %3440, %439
  %3442 = call %dx.types.ResRet.i32 @dx.op.rawBufferLoad.i32(i32 139, %dx.types.Handle %3432, i32 %3441, i32 undef, i8 15, i32 4)  ; RawBufferLoad(srv,index,elementOffset,mask,alignment)
  %3443 = extractvalue %dx.types.ResRet.i32 %3442, 0
  %3444 = and i32 %3443, 65535
  %3445 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3444), !dx.precise !89  ; LegacyF16ToF32(value)
  %3446 = extractvalue %dx.types.ResRet.i32 %3442, 1
  %3447 = and i32 %3446, 65535
  %3448 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3447), !dx.precise !89  ; LegacyF16ToF32(value)
  %3449 = lshr i32 %3443, 16
  %3450 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3449), !dx.precise !89  ; LegacyF16ToF32(value)
  %3451 = fsub float %3409, %3450
  %3452 = fmul float %3445, %3451
  %3453 = fadd float %3448, %3452
  %3454 = call float @dx.op.unary.f32(i32 7, float %3453), !dx.precise !89  ; Saturate(value)
  br label %3455

; <label>:3455                                    ; preds = %3437, %3376
  %3456 = phi float [ %3454, %3437 ], [ %3409, %3376 ]
  %3457 = call float @dx.op.dot2.f32(i32 54, float %3430, float %3431, float %2345, float %2346), !dx.precise !89  ; Dot2(ax,ay,bx,by)
  %3458 = call float @dx.op.dot2.f32(i32 54, float %3430, float %3431, float %2347, float %2348), !dx.precise !89  ; Dot2(ax,ay,bx,by)
  br label %3459

; <label>:3459                                    ; preds = %3455, %3354
  %3460 = phi float [ %3456, %3455 ], [ 0x3FD6666660000000, %3354 ]
  %3461 = phi float [ %3457, %3455 ], [ 0.000000e+00, %3354 ]
  %3462 = phi float [ %3458, %3455 ], [ 0.000000e+00, %3354 ]
  %3463 = phi float [ %3396, %3455 ], [ 1.000000e+00, %3354 ]
  %3464 = call %dx.types.Handle @dx.op.createHandleForLib.struct.ByteAddressBuffer(i32 160, %struct.ByteAddressBuffer %12)  ; CreateHandleForLib(Resource)
  %3465 = call %dx.types.ResRet.i32 @dx.op.rawBufferLoad.i32(i32 139, %dx.types.Handle %3464, i32 %2998, i32 undef, i8 15, i32 4)  ; RawBufferLoad(srv,index,elementOffset,mask,alignment)
  %3466 = extractvalue %dx.types.ResRet.i32 %3465, 0
  %3467 = and i32 %3466, 64
  %3468 = icmp eq i32 %3467, 0
  br i1 %3468, label %3498, label %3469

; <label>:3469                                    ; preds = %3459
  %3470 = and i32 %432, 511
  %3471 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %3470)  ; Countbits(value)
  %3472 = shl i32 %3471, 2
  %3473 = add i32 %3472, %441
  %3474 = call %dx.types.ResRet.i32 @dx.op.rawBufferLoad.i32(i32 139, %dx.types.Handle %3464, i32 %3473, i32 undef, i8 1, i32 4)  ; RawBufferLoad(srv,index,elementOffset,mask,alignment)
  %3475 = extractvalue %dx.types.ResRet.i32 %3474, 0
  %3476 = getelementptr inbounds [0 x %"class.Texture2D<vector<float, 4> >"], [0 x %"class.Texture2D<vector<float, 4> >"]* @"\01?globalTexture2DHalfTable@@3PAV?$Texture2D@V?$vector@M$03@@@@A", i32 0, i32 %3475
  %3477 = load %"class.Texture2D<vector<float, 4> >", %"class.Texture2D<vector<float, 4> >"* %3476, align 4, !noalias !160
  %3478 = call %dx.types.Handle @dx.op.createHandleForLib.struct.ByteAddressBuffer(i32 160, %struct.ByteAddressBuffer %12)  ; CreateHandleForLib(Resource)
  %3479 = call %dx.types.ResRet.i32 @dx.op.rawBufferLoad.i32(i32 139, %dx.types.Handle %3478, i32 %2998, i32 undef, i8 15, i32 4)  ; RawBufferLoad(srv,index,elementOffset,mask,alignment)
  %3480 = extractvalue %dx.types.ResRet.i32 %3479, 0
  %3481 = and i32 %3480, 131072
  %3482 = icmp eq i32 %3481, 0
  %3483 = call %dx.types.Handle @"dx.op.createHandleForLib.class.Texture2D<vector<float, 4> >"(i32 160, %"class.Texture2D<vector<float, 4> >" %3477)  ; CreateHandleForLib(Resource)
  %3484 = call %dx.types.Handle @dx.op.createHandleForLib.struct.SamplerState(i32 160, %struct.SamplerState %44)  ; CreateHandleForLib(Resource)
  %3485 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3483, %dx.types.Handle %3484, float %2327, float %2328, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3486 = extractvalue %dx.types.ResRet.f32 %3485, 0
  %3487 = extractvalue %dx.types.ResRet.f32 %3485, 1
  %3488 = extractvalue %dx.types.ResRet.f32 %3485, 2
  %3489 = fmul fast float %3486, %2420
  %3490 = fmul fast float %3487, %2423
  %3491 = fmul fast float %3488, %2426
  br i1 %3482, label %3498, label %3492

; <label>:3492                                    ; preds = %3469
  %3493 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3494 = extractvalue %dx.types.CBufRet.f32 %3493, 0
  %3495 = fmul fast float %3494, %3489
  %3496 = fmul fast float %3494, %3490
  %3497 = fmul fast float %3494, %3491
  br label %3498

; <label>:3498                                    ; preds = %3492, %3469, %3459
  %3499 = phi float [ %3495, %3492 ], [ %3489, %3469 ], [ 0.000000e+00, %3459 ]
  %3500 = phi float [ %3496, %3492 ], [ %3490, %3469 ], [ 0.000000e+00, %3459 ]
  %3501 = phi float [ %3497, %3492 ], [ %3491, %3469 ], [ 0.000000e+00, %3459 ]
  %3502 = call %dx.types.Handle @dx.op.createHandleForLib.struct.ByteAddressBuffer(i32 160, %struct.ByteAddressBuffer %12)  ; CreateHandleForLib(Resource)
  %3503 = call %dx.types.ResRet.i32 @dx.op.rawBufferLoad.i32(i32 139, %dx.types.Handle %3502, i32 %2998, i32 undef, i8 15, i32 4)  ; RawBufferLoad(srv,index,elementOffset,mask,alignment)
  %3504 = extractvalue %dx.types.ResRet.i32 %3503, 0
  br i1 %2994, label %3505, label %3514

; <label>:3505                                    ; preds = %3498
  %3506 = fsub float 1.000000e+00, %3105
  %3507 = fmul float %2982, %3506
  %3508 = fmul float %2983, %3506
  %3509 = fmul float %2984, %3506
  %3510 = fmul fast float %3506, %2985
  %3511 = fmul fast float %3506, %2986
  %3512 = fmul fast float %3506, %2987
  %3513 = fmul float %3506, 0.000000e+00
  br label %3514

; <label>:3514                                    ; preds = %3505, %3498
  %3515 = phi float [ %2982, %3498 ], [ %3507, %3505 ]
  %3516 = phi float [ %2983, %3498 ], [ %3508, %3505 ]
  %3517 = phi float [ %2984, %3498 ], [ %3509, %3505 ]
  %3518 = phi float [ 0.000000e+00, %3498 ], [ %3513, %3505 ]
  %3519 = phi float [ %2985, %3498 ], [ %3510, %3505 ]
  %3520 = phi float [ %2986, %3498 ], [ %3511, %3505 ]
  %3521 = phi float [ %2987, %3498 ], [ %3512, %3505 ]
  %3522 = and i32 %3504, 3
  %3523 = icmp eq i32 %3522, 3
  br i1 %3523, label %3611, label %3524

; <label>:3524                                    ; preds = %3514
  %3525 = and i32 %3504, 16
  %3526 = icmp ne i32 %3525, 0
  %3527 = select i1 %3526, float %3105, float 0.000000e+00
  %3528 = icmp eq i32 %3522, 0
  br i1 %3528, label %3529, label %3563

; <label>:3529                                    ; preds = %3524
  %3530 = and i32 %3504, 64
  %3531 = icmp ne i32 %3530, 0
  %3532 = select i1 %3531, float %3105, float 0.000000e+00
  %3533 = fsub float %3369, %3515
  %3534 = fsub float %3370, %3516
  %3535 = fsub float %3371, %3517
  %3536 = fmul float %3533, %3527
  %3537 = fmul float %3534, %3527
  %3538 = fmul float %3535, %3527
  %3539 = fadd float %3515, %3536
  %3540 = fadd float %3516, %3537
  %3541 = fadd float %3517, %3538
  %3542 = fsub float %3355, %2988
  %3543 = fmul float %3542, %3527
  %3544 = fadd float %2988, %3543
  %3545 = fsub fast float %3499, %3519
  %3546 = fsub fast float %3500, %3520
  %3547 = fsub fast float %3501, %3521
  %3548 = fmul fast float %3532, %3545
  %3549 = fmul fast float %3532, %3546
  %3550 = fmul fast float %3532, %3547
  %3551 = fadd fast float %3548, %3519
  %3552 = fadd fast float %3549, %3520
  %3553 = fadd fast float %3550, %3521
  %3554 = fsub float 0.000000e+00, %3518
  %3555 = fsub float 0.000000e+00, %3518
  %3556 = fsub float 0.000000e+00, %3518
  %3557 = fmul float %3554, 0.000000e+00
  %3558 = fmul float %3555, 0.000000e+00
  %3559 = fmul float %3556, 0.000000e+00
  %3560 = fadd float %3518, %3557
  %3561 = fadd float %3518, %3558
  %3562 = fadd float %3518, %3559
  br label %3611

; <label>:3563                                    ; preds = %3524
  %3564 = icmp eq i32 %3522, 1
  br i1 %3564, label %3565, label %3578

; <label>:3565                                    ; preds = %3563
  %3566 = fadd float %3369, -1.000000e+00
  %3567 = fadd float %3370, -1.000000e+00
  %3568 = fadd float %3371, -1.000000e+00
  %3569 = fmul float %3566, %3527
  %3570 = fmul float %3567, %3527
  %3571 = fmul float %3568, %3527
  %3572 = fadd float %3569, 1.000000e+00
  %3573 = fadd float %3570, 1.000000e+00
  %3574 = fadd float %3571, 1.000000e+00
  %3575 = fmul float %3515, %3572
  %3576 = fmul float %3516, %3573
  %3577 = fmul float %3517, %3574
  br label %3611

; <label>:3578                                    ; preds = %3563
  %3579 = icmp eq i32 %3522, 2
  br i1 %3579, label %3580, label %3611

; <label>:3580                                    ; preds = %3578
  %3581 = call float @dx.op.unary.f32(i32 24, float %3369), !dx.precise !89  ; Sqrt(value)
  %3582 = call float @dx.op.unary.f32(i32 24, float %3370), !dx.precise !89  ; Sqrt(value)
  %3583 = call float @dx.op.unary.f32(i32 24, float %3371), !dx.precise !89  ; Sqrt(value)
  %3584 = fadd float %3581, -5.000000e-01
  %3585 = fadd float %3582, -5.000000e-01
  %3586 = fadd float %3583, -5.000000e-01
  %3587 = fmul float %3527, %3584
  %3588 = fmul float %3527, %3585
  %3589 = fmul float %3527, %3586
  %3590 = fadd float %3587, 5.000000e-01
  %3591 = fadd float %3588, 5.000000e-01
  %3592 = fadd float %3589, 5.000000e-01
  %3593 = fmul float %3590, 2.000000e+00
  %3594 = fsub float 1.000000e+00, %3593
  %3595 = fmul float %3515, %3594
  %3596 = fmul float %3515, %3595
  %3597 = fmul float %3515, %3593
  %3598 = fadd float %3597, %3596
  %3599 = fmul float %3591, 2.000000e+00
  %3600 = fsub float 1.000000e+00, %3599
  %3601 = fmul float %3516, %3600
  %3602 = fmul float %3516, %3601
  %3603 = fmul float %3516, %3599
  %3604 = fadd float %3603, %3602
  %3605 = fmul float %3592, 2.000000e+00
  %3606 = fsub float 1.000000e+00, %3605
  %3607 = fmul float %3517, %3606
  %3608 = fmul float %3517, %3607
  %3609 = fmul float %3517, %3605
  %3610 = fadd float %3609, %3608
  br label %3611

; <label>:3611                                    ; preds = %3580, %3578, %3565, %3529, %3514
  %3612 = phi float [ %3515, %3514 ], [ %3539, %3529 ], [ %3575, %3565 ], [ %3515, %3578 ], [ %3598, %3580 ]
  %3613 = phi float [ %3516, %3514 ], [ %3540, %3529 ], [ %3576, %3565 ], [ %3516, %3578 ], [ %3604, %3580 ]
  %3614 = phi float [ %3517, %3514 ], [ %3541, %3529 ], [ %3577, %3565 ], [ %3517, %3578 ], [ %3610, %3580 ]
  %3615 = phi float [ %3518, %3514 ], [ %3560, %3529 ], [ %3518, %3565 ], [ %3518, %3578 ], [ %3518, %3580 ]
  %3616 = phi float [ %3518, %3514 ], [ %3561, %3529 ], [ %3518, %3565 ], [ %3518, %3578 ], [ %3518, %3580 ]
  %3617 = phi float [ %3518, %3514 ], [ %3562, %3529 ], [ %3518, %3565 ], [ %3518, %3578 ], [ %3518, %3580 ]
  %3618 = phi float [ %3519, %3514 ], [ %3551, %3529 ], [ %3519, %3565 ], [ %3519, %3578 ], [ %3519, %3580 ]
  %3619 = phi float [ %3520, %3514 ], [ %3552, %3529 ], [ %3520, %3565 ], [ %3520, %3578 ], [ %3520, %3580 ]
  %3620 = phi float [ %3521, %3514 ], [ %3553, %3529 ], [ %3521, %3565 ], [ %3521, %3578 ], [ %3521, %3580 ]
  %3621 = phi float [ %2988, %3514 ], [ %3544, %3529 ], [ %2988, %3565 ], [ %2988, %3578 ], [ %2988, %3580 ]
  %3622 = and i32 %3504, 12
  %3623 = icmp eq i32 %3622, 12
  br i1 %3623, label %3696, label %3624

; <label>:3624                                    ; preds = %3611
  %3625 = and i32 %3504, 2097184
  %3626 = icmp eq i32 %3625, 2097184
  %3627 = select i1 %3626, float %3105, float 0.000000e+00
  %3628 = and i32 %3504, 4194336
  %3629 = icmp eq i32 %3628, 4194336
  %3630 = select i1 %3629, float %3105, float 0.000000e+00
  %3631 = and i32 %3504, 8388640
  %3632 = icmp eq i32 %3631, 8388640
  %3633 = select i1 %3632, float %3105, float 0.000000e+00
  %3634 = icmp eq i32 %3622, 0
  br i1 %3634, label %3635, label %3648

; <label>:3635                                    ; preds = %3624
  %3636 = fsub float %3461, %2980
  %3637 = fsub float %3462, %2981
  %3638 = fmul float %3636, %3627
  %3639 = fmul float %3637, %3627
  %3640 = fadd float %2980, %3638
  %3641 = fadd float %2981, %3639
  %3642 = fsub float %3463, %2991
  %3643 = fmul float %3642, %3630
  %3644 = fadd float %2991, %3643
  %3645 = fsub float %3460, %2990
  %3646 = fmul float %3645, %3633
  %3647 = fadd float %2990, %3646
  br label %3696

; <label>:3648                                    ; preds = %3624
  %3649 = icmp eq i32 %3622, 4
  br i1 %3649, label %3650, label %3682

; <label>:3650                                    ; preds = %3648
  %3651 = fmul float %3461, %3627
  %3652 = fmul float %3462, %3627
  %3653 = fadd float %2980, %3651
  %3654 = fadd float %2981, %3652
  %3655 = call float @dx.op.binary.f32(i32 36, float %2991, float %3463), !dx.precise !89  ; FMin(a,b)
  %3656 = fsub float %3655, %2991
  %3657 = fmul float %3630, %3656
  %3658 = fadd float %2991, %3657
  %3659 = fadd float %2990, %3460
  %3660 = fmul float %3659, 0x3FF337FAE0000000
  %3661 = fadd float %3660, 0xBFE1363700000000
  %3662 = fmul float %2990, %2990
  %3663 = fmul float %3460, %3460
  %3664 = fadd float %3662, %3663
  %3665 = fmul float %3664, 0x3FE5152B00000000
  %3666 = fsub float %3661, %3665
  %3667 = fmul float %2990, 0xBFCC1F85E0000000
  %3668 = fmul float %3667, %3460
  %3669 = fadd float %3668, %3666
  %3670 = fmul float %3659, 0x3FBA6F0D00000000
  %3671 = fsub float 1.000000e+00, %3670
  %3672 = fmul float %3664, 0x3FD0432880000000
  %3673 = fadd float %3671, %3672
  %3674 = fmul float %2990, 0xBFEF110800000000
  %3675 = fmul float %3674, %3460
  %3676 = fadd float %3675, %3673
  %3677 = fdiv float %3669, %3676
  %3678 = call float @dx.op.unary.f32(i32 7, float %3677), !dx.precise !89  ; Saturate(value)
  %3679 = fsub float %3678, %2990
  %3680 = fmul float %3633, %3679
  %3681 = fadd float %2990, %3680
  br label %3696

; <label>:3682                                    ; preds = %3648
  %3683 = icmp eq i32 %3622, 8
  br i1 %3683, label %3684, label %3696

; <label>:3684                                    ; preds = %3682
  %3685 = fmul float %3461, %3627
  %3686 = fmul float %3462, %3627
  %3687 = fadd float %2980, %3685
  %3688 = fadd float %2981, %3686
  %3689 = call float @dx.op.binary.f32(i32 36, float %2991, float %3463), !dx.precise !89  ; FMin(a,b)
  %3690 = fsub float %3689, %2991
  %3691 = fmul float %3630, %3690
  %3692 = fadd float %2991, %3691
  %3693 = fsub float %3460, %2990
  %3694 = fmul float %3693, %3633
  %3695 = fadd float %2990, %3694
  br label %3696

; <label>:3696                                    ; preds = %3684, %3682, %3650, %3635, %3611, %3104, %3005, %2993, %2979
  %3697 = phi float [ %2980, %2979 ], [ %2980, %2993 ], [ %2980, %3005 ], [ %3640, %3635 ], [ %3653, %3650 ], [ %3687, %3684 ], [ %2980, %3682 ], [ %2980, %3611 ], [ %2980, %3104 ]
  %3698 = phi float [ %2981, %2979 ], [ %2981, %2993 ], [ %2981, %3005 ], [ %3641, %3635 ], [ %3654, %3650 ], [ %3688, %3684 ], [ %2981, %3682 ], [ %2981, %3611 ], [ %2981, %3104 ]
  %3699 = phi float [ %2982, %2979 ], [ %2982, %2993 ], [ %2982, %3005 ], [ %3612, %3635 ], [ %3612, %3650 ], [ %3612, %3684 ], [ %3612, %3682 ], [ %3612, %3611 ], [ %2982, %3104 ]
  %3700 = phi float [ %2983, %2979 ], [ %2983, %2993 ], [ %2983, %3005 ], [ %3613, %3635 ], [ %3613, %3650 ], [ %3613, %3684 ], [ %3613, %3682 ], [ %3613, %3611 ], [ %2983, %3104 ]
  %3701 = phi float [ %2984, %2979 ], [ %2984, %2993 ], [ %2984, %3005 ], [ %3614, %3635 ], [ %3614, %3650 ], [ %3614, %3684 ], [ %3614, %3682 ], [ %3614, %3611 ], [ %2984, %3104 ]
  %3702 = phi float [ 0.000000e+00, %2979 ], [ 0.000000e+00, %2993 ], [ 0.000000e+00, %3005 ], [ %3615, %3635 ], [ %3615, %3650 ], [ %3615, %3684 ], [ %3615, %3682 ], [ %3615, %3611 ], [ 0.000000e+00, %3104 ]
  %3703 = phi float [ 0.000000e+00, %2979 ], [ 0.000000e+00, %2993 ], [ 0.000000e+00, %3005 ], [ %3616, %3635 ], [ %3616, %3650 ], [ %3616, %3684 ], [ %3616, %3682 ], [ %3616, %3611 ], [ 0.000000e+00, %3104 ]
  %3704 = phi float [ 0.000000e+00, %2979 ], [ 0.000000e+00, %2993 ], [ 0.000000e+00, %3005 ], [ %3617, %3635 ], [ %3617, %3650 ], [ %3617, %3684 ], [ %3617, %3682 ], [ %3617, %3611 ], [ 0.000000e+00, %3104 ]
  %3705 = phi float [ %2985, %2979 ], [ %2985, %2993 ], [ %2985, %3005 ], [ %3618, %3635 ], [ %3618, %3650 ], [ %3618, %3684 ], [ %3618, %3682 ], [ %3618, %3611 ], [ %2985, %3104 ]
  %3706 = phi float [ %2986, %2979 ], [ %2986, %2993 ], [ %2986, %3005 ], [ %3619, %3635 ], [ %3619, %3650 ], [ %3619, %3684 ], [ %3619, %3682 ], [ %3619, %3611 ], [ %2986, %3104 ]
  %3707 = phi float [ %2987, %2979 ], [ %2987, %2993 ], [ %2987, %3005 ], [ %3620, %3635 ], [ %3620, %3650 ], [ %3620, %3684 ], [ %3620, %3682 ], [ %3620, %3611 ], [ %2987, %3104 ]
  %3708 = phi float [ %2988, %2979 ], [ %2988, %2993 ], [ %2988, %3005 ], [ %3621, %3635 ], [ %3621, %3650 ], [ %3621, %3684 ], [ %3621, %3682 ], [ %3621, %3611 ], [ %2988, %3104 ]
  %3709 = phi float [ %2990, %2979 ], [ %2990, %2993 ], [ %2990, %3005 ], [ %3647, %3635 ], [ %3681, %3650 ], [ %3695, %3684 ], [ %2990, %3682 ], [ %2990, %3611 ], [ %2990, %3104 ]
  %3710 = phi float [ %2991, %2979 ], [ %2991, %2993 ], [ %2991, %3005 ], [ %3644, %3635 ], [ %3658, %3650 ], [ %3692, %3684 ], [ %2991, %3682 ], [ %2991, %3611 ], [ %2991, %3104 ]
  %3711 = phi float [ %2992, %2979 ], [ %2992, %2993 ], [ %3006, %3005 ], [ %3006, %3635 ], [ %3006, %3650 ], [ %3006, %3684 ], [ %3006, %3682 ], [ %3006, %3611 ], [ %3006, %3104 ]
  br i1 %2511, label %4418, label %3712

; <label>:3712                                    ; preds = %3696
  %3713 = icmp ult i32 %2581, 3
  %3714 = and i32 %425, 3
  %3715 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %3714)  ; Countbits(value)
  %3716 = shl i32 %3715, 4
  %3717 = add i32 %3716, %439
  %3718 = call %dx.types.Handle @dx.op.createHandleForLib.struct.ByteAddressBuffer(i32 160, %struct.ByteAddressBuffer %12)  ; CreateHandleForLib(Resource)
  %3719 = call %dx.types.ResRet.i32 @dx.op.rawBufferLoad.i32(i32 139, %dx.types.Handle %3718, i32 %3717, i32 undef, i8 15, i32 4)  ; RawBufferLoad(srv,index,elementOffset,mask,alignment)
  %3720 = extractvalue %dx.types.ResRet.i32 %3719, 0
  %3721 = extractvalue %dx.types.ResRet.i32 %3719, 1
  %3722 = or i32 %3721, %3720
  %3723 = icmp eq i32 %3722, 0
  br i1 %3723, label %4418, label %3724

; <label>:3724                                    ; preds = %3712
  %3725 = fadd float %3711, 1.000000e+00
  %3726 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 241)  ; CBufferLoadLegacy(handle,regIndex)
  %3727 = extractvalue %dx.types.CBufRet.f32 %3726, 2
  %3728 = bitcast float %3727 to i32
  %3729 = lshr i32 %3728, 27
  %3730 = and i32 %3729, 15
  %3731 = uitofp i32 %3730 to float
  %3732 = fcmp ogt float %3725, %3731
  br i1 %3732, label %4418, label %3733

; <label>:3733                                    ; preds = %3724
  %3734 = and i32 %3720, 16777216
  %3735 = icmp ne i32 %3734, 0
  %3736 = select i1 %3735, float 0.000000e+00, float %2577
  %3737 = and i32 %3720, 256
  %3738 = icmp eq i32 %3737, 0
  br i1 %3738, label %3794, label %3739

; <label>:3739                                    ; preds = %3733
  %3740 = and i32 %432, 262143
  %3741 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %3740)  ; Countbits(value)
  %3742 = shl i32 %3741, 2
  %3743 = add i32 %3742, %441
  %3744 = call %dx.types.ResRet.i32 @dx.op.rawBufferLoad.i32(i32 139, %dx.types.Handle %3718, i32 %3743, i32 undef, i8 1, i32 4)  ; RawBufferLoad(srv,index,elementOffset,mask,alignment)
  %3745 = extractvalue %dx.types.ResRet.i32 %3744, 0
  %3746 = getelementptr inbounds [0 x %"class.Texture2D<vector<float, 4> >"], [0 x %"class.Texture2D<vector<float, 4> >"]* @"\01?globalTexture2DHalfTable@@3PAV?$Texture2D@V?$vector@M$03@@@@A", i32 0, i32 %3745
  %3747 = load %"class.Texture2D<vector<float, 4> >", %"class.Texture2D<vector<float, 4> >"* %3746, align 4, !noalias !163
  %3748 = call %dx.types.Handle @"dx.op.createHandleForLib.class.Texture2D<vector<float, 4> >"(i32 160, %"class.Texture2D<vector<float, 4> >" %3747)  ; CreateHandleForLib(Resource)
  %3749 = call %dx.types.Handle @dx.op.createHandleForLib.struct.SamplerState(i32 160, %struct.SamplerState %45)  ; CreateHandleForLib(Resource)
  %3750 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3748, %dx.types.Handle %3749, float %2331, float %2332, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3751 = extractvalue %dx.types.ResRet.f32 %3750, 0
  %3752 = and i32 %425, 63
  %3753 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %3752)  ; Countbits(value)
  %3754 = shl i32 %3753, 4
  %3755 = add i32 %3754, %439
  %3756 = call %dx.types.Handle @dx.op.createHandleForLib.struct.ByteAddressBuffer(i32 160, %struct.ByteAddressBuffer %12)  ; CreateHandleForLib(Resource)
  %3757 = call %dx.types.ResRet.i32 @dx.op.rawBufferLoad.i32(i32 139, %dx.types.Handle %3756, i32 %3755, i32 undef, i8 15, i32 4)  ; RawBufferLoad(srv,index,elementOffset,mask,alignment)
  %3758 = extractvalue %dx.types.ResRet.i32 %3757, 3
  %3759 = shl i32 %3758, 4
  %3760 = and i32 %3759, 32752
  %3761 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3760), !dx.precise !89  ; LegacyF16ToF32(value)
  %3762 = lshr i32 %3758, 7
  %3763 = and i32 %3762, 32752
  %3764 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3763), !dx.precise !89  ; LegacyF16ToF32(value)
  %3765 = fsub float 1.000000e+00, %3736
  %3766 = call float @dx.op.binary.f32(i32 35, float %3765, float 0x3E7FF19E20000000), !dx.precise !89  ; FMax(a,b)
  %3767 = bitcast float %3736 to i32
  %3768 = sitofp i32 %3767 to float
  %3769 = fadd float %3768, 0xC1CFBF8940000000
  %3770 = fmul float %3769, %3764
  %3771 = fadd float %3770, 0x41CFBF8940000000
  %3772 = fptosi float %3771 to i32
  %3773 = bitcast i32 %3772 to float
  %3774 = bitcast float %3766 to i32
  %3775 = sitofp i32 %3774 to float
  %3776 = fadd float %3775, 0xC1CFBF8940000000
  %3777 = fmul float %3764, %3776
  %3778 = fadd float %3777, 0x41CFBF8940000000
  %3779 = fptosi float %3778 to i32
  %3780 = bitcast i32 %3779 to float
  %3781 = fmul float %3761, %3773
  %3782 = fmul float %3761, %3780
  %3783 = fsub float %3766, %3781
  %3784 = fadd float %3766, %3782
  %3785 = call float @dx.op.unary.f32(i32 7, float %3783), !dx.precise !89  ; Saturate(value)
  %3786 = call float @dx.op.unary.f32(i32 7, float %3784), !dx.precise !89  ; Saturate(value)
  %3787 = fsub float %3751, %3785
  %3788 = fsub float %3786, %3785
  %3789 = bitcast float %3788 to i32
  %3790 = sub nsw i32 2129859010, %3789
  %3791 = bitcast i32 %3790 to float
  %3792 = fmul float %3787, %3791
  %3793 = call float @dx.op.unary.f32(i32 7, float %3792), !dx.precise !89  ; Saturate(value)
  br label %3794

; <label>:3794                                    ; preds = %3739, %3733
  %3795 = phi float [ %3793, %3739 ], [ %3736, %3733 ]
  %3796 = call %dx.types.Handle @dx.op.createHandleForLib.struct.ByteAddressBuffer(i32 160, %struct.ByteAddressBuffer %12)  ; CreateHandleForLib(Resource)
  %3797 = call %dx.types.ResRet.i32 @dx.op.rawBufferLoad.i32(i32 139, %dx.types.Handle %3796, i32 %3717, i32 undef, i8 15, i32 4)  ; RawBufferLoad(srv,index,elementOffset,mask,alignment)
  %3798 = extractvalue %dx.types.ResRet.i32 %3797, 0
  %3799 = and i32 %3798, 128
  %3800 = icmp eq i32 %3799, 0
  br i1 %3800, label %3823, label %3801

; <label>:3801                                    ; preds = %3794
  %3802 = and i32 %432, 16383
  %3803 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %3802)  ; Countbits(value)
  %3804 = shl i32 %3803, 2
  %3805 = add i32 %3804, %441
  %3806 = call %dx.types.ResRet.i32 @dx.op.rawBufferLoad.i32(i32 139, %dx.types.Handle %3796, i32 %3805, i32 undef, i8 1, i32 4)  ; RawBufferLoad(srv,index,elementOffset,mask,alignment)
  %3807 = extractvalue %dx.types.ResRet.i32 %3806, 0
  %3808 = getelementptr inbounds [0 x %"class.Texture2D<vector<float, 4> >"], [0 x %"class.Texture2D<vector<float, 4> >"]* @"\01?globalTexture2DHalfTable@@3PAV?$Texture2D@V?$vector@M$03@@@@A", i32 0, i32 %3807
  %3809 = load %"class.Texture2D<vector<float, 4> >", %"class.Texture2D<vector<float, 4> >"* %3808, align 4, !noalias !166
  %3810 = call %dx.types.Handle @"dx.op.createHandleForLib.class.Texture2D<vector<float, 4> >"(i32 160, %"class.Texture2D<vector<float, 4> >" %3809)  ; CreateHandleForLib(Resource)
  %3811 = call %dx.types.Handle @dx.op.createHandleForLib.struct.SamplerState(i32 160, %struct.SamplerState %45)  ; CreateHandleForLib(Resource)
  %3812 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3810, %dx.types.Handle %3811, float %2331, float %2332, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3813 = extractvalue %dx.types.ResRet.f32 %3812, 0
  %3814 = call %dx.types.Handle @dx.op.createHandleForLib.struct.ByteAddressBuffer(i32 160, %struct.ByteAddressBuffer %12)  ; CreateHandleForLib(Resource)
  %3815 = call %dx.types.ResRet.i32 @dx.op.rawBufferLoad.i32(i32 139, %dx.types.Handle %3814, i32 %3717, i32 undef, i8 15, i32 4)  ; RawBufferLoad(srv,index,elementOffset,mask,alignment)
  %3816 = extractvalue %dx.types.ResRet.i32 %3815, 0
  %3817 = and i32 %3816, 524288
  %3818 = icmp ne i32 %3817, 0
  %3819 = fcmp ogt float %3813, 0x3FE0101020000000
  %3820 = select i1 %3819, float 1.000000e+00, float 0.000000e+00
  %3821 = select i1 %3818, float %3820, float %3813
  %3822 = fmul float %3795, %3821
  br label %3823

; <label>:3823                                    ; preds = %3801, %3794
  %3824 = phi float [ %3822, %3801 ], [ %3795, %3794 ]
  %3825 = fcmp ult float %3824, 0x3F70101020000000
  br i1 %3825, label %4418, label %3826

; <label>:3826                                    ; preds = %3823
  %3827 = call %dx.types.Handle @dx.op.createHandleForLib.struct.ByteAddressBuffer(i32 160, %struct.ByteAddressBuffer %12)  ; CreateHandleForLib(Resource)
  %3828 = call %dx.types.ResRet.i32 @dx.op.rawBufferLoad.i32(i32 139, %dx.types.Handle %3827, i32 %3717, i32 undef, i8 15, i32 4)  ; RawBufferLoad(srv,index,elementOffset,mask,alignment)
  %3829 = extractvalue %dx.types.ResRet.i32 %3828, 0
  %3830 = and i32 %3829, 16
  %3831 = icmp eq i32 %3830, 0
  br i1 %3831, label %4072, label %3832

; <label>:3832                                    ; preds = %3826
  %3833 = and i32 %425, 63
  %3834 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %3833)  ; Countbits(value)
  %3835 = shl i32 %3834, 4
  %3836 = add i32 %3835, %439
  %3837 = call %dx.types.ResRet.i32 @dx.op.rawBufferLoad.i32(i32 139, %dx.types.Handle %3827, i32 %3836, i32 undef, i8 15, i32 4)  ; RawBufferLoad(srv,index,elementOffset,mask,alignment)
  %3838 = extractvalue %dx.types.ResRet.i32 %3837, 0
  %3839 = and i32 %432, 3
  %3840 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %3839)  ; Countbits(value)
  %3841 = shl i32 %3840, 2
  %3842 = add i32 %3841, %441
  %3843 = call %dx.types.ResRet.i32 @dx.op.rawBufferLoad.i32(i32 139, %dx.types.Handle %3827, i32 %3842, i32 undef, i8 1, i32 4)  ; RawBufferLoad(srv,index,elementOffset,mask,alignment)
  %3844 = extractvalue %dx.types.ResRet.i32 %3843, 0
  %3845 = getelementptr inbounds [0 x %"class.Texture2D<vector<float, 4> >"], [0 x %"class.Texture2D<vector<float, 4> >"]* @"\01?globalTexture2DHalfTable@@3PAV?$Texture2D@V?$vector@M$03@@@@A", i32 0, i32 %3844
  %3846 = load %"class.Texture2D<vector<float, 4> >", %"class.Texture2D<vector<float, 4> >"* %3845, align 4, !noalias !169
  %3847 = call %dx.types.Handle @"dx.op.createHandleForLib.class.Texture2D<vector<float, 4> >"(i32 160, %"class.Texture2D<vector<float, 4> >" %3846)  ; CreateHandleForLib(Resource)
  %3848 = call %dx.types.Handle @dx.op.createHandleForLib.struct.SamplerState(i32 160, %struct.SamplerState %44)  ; CreateHandleForLib(Resource)
  %3849 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3847, %dx.types.Handle %3848, float %2331, float %2332, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3850 = extractvalue %dx.types.ResRet.f32 %3849, 0
  %3851 = extractvalue %dx.types.ResRet.f32 %3849, 1
  %3852 = extractvalue %dx.types.ResRet.f32 %3849, 2
  %3853 = extractvalue %dx.types.ResRet.f32 %3849, 3
  %3854 = and i32 %3838, 255
  %3855 = uitofp i32 %3854 to float
  %3856 = lshr i32 %3838, 8
  %3857 = and i32 %3856, 255
  %3858 = uitofp i32 %3857 to float
  %3859 = fmul float %3855, %3853
  %3860 = fadd float %3858, %3859
  %3861 = fmul float %3860, 0x3F70101000000000
  %3862 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 241)  ; CBufferLoadLegacy(handle,regIndex)
  %3863 = extractvalue %dx.types.CBufRet.f32 %3862, 0
  %3864 = bitcast float %3863 to i32
  %3865 = lshr i32 %3864, 16
  %3866 = and i32 %3865, 255
  %3867 = uitofp i32 %3866 to float
  %3868 = fptoui float %3867 to i32
  %3869 = icmp eq i32 %3868, 8
  br i1 %3869, label %3870, label %3888

; <label>:3870                                    ; preds = %3832
  %3871 = fmul float %3850, 0x3FD322D0E0000000
  %3872 = fmul float %3851, 0x3FE2C8B440000000
  %3873 = fadd float %3871, %3872
  %3874 = fmul float %3852, 0x3FBD2F1AA0000000
  %3875 = fadd float %3874, %3873
  %3876 = fsub float %3852, %3875
  %3877 = fmul float %3876, 0x3FDF7CEDA0000000
  %3878 = fsub float %3850, %3875
  %3879 = fmul float %3878, 0x3FEC106240000000
  %3880 = fmul float %3879, 0x3FF23D70A0000000
  %3881 = fadd float %3875, %3880
  %3882 = fmul float %3877, 0x3FD947AE20000000
  %3883 = fsub float %3875, %3882
  %3884 = fmul float %3879, 0x3FE2978D40000000
  %3885 = fsub float %3883, %3884
  %3886 = fmul float %3877, 0x4000418940000000
  %3887 = fadd float %3875, %3886
  br label %3888

; <label>:3888                                    ; preds = %3870, %3832
  %3889 = phi float [ %3881, %3870 ], [ %3850, %3832 ]
  %3890 = phi float [ %3885, %3870 ], [ %3851, %3832 ]
  %3891 = phi float [ %3887, %3870 ], [ %3852, %3832 ]
  %3892 = call %dx.types.Handle @dx.op.createHandleForLib.struct.ByteAddressBuffer(i32 160, %struct.ByteAddressBuffer %12)  ; CreateHandleForLib(Resource)
  %3893 = call %dx.types.ResRet.i32 @dx.op.rawBufferLoad.i32(i32 139, %dx.types.Handle %3892, i32 %3717, i32 undef, i8 15, i32 4)  ; RawBufferLoad(srv,index,elementOffset,mask,alignment)
  %3894 = extractvalue %dx.types.ResRet.i32 %3893, 0
  %3895 = and i32 %3894, 512
  %3896 = icmp eq i32 %3895, 0
  br i1 %3896, label %3909, label %3897

; <label>:3897                                    ; preds = %3888
  %3898 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %432)  ; Countbits(value)
  %3899 = shl i32 %3898, 2
  %3900 = add i32 %3899, %441
  %3901 = call %dx.types.ResRet.i32 @dx.op.rawBufferLoad.i32(i32 139, %dx.types.Handle %3892, i32 %3900, i32 undef, i8 1, i32 4)  ; RawBufferLoad(srv,index,elementOffset,mask,alignment)
  %3902 = extractvalue %dx.types.ResRet.i32 %3901, 0
  %3903 = getelementptr inbounds [0 x %"class.Texture2D<vector<float, 4> >"], [0 x %"class.Texture2D<vector<float, 4> >"]* @"\01?globalTexture2DHalfTable@@3PAV?$Texture2D@V?$vector@M$03@@@@A", i32 0, i32 %3902
  %3904 = load %"class.Texture2D<vector<float, 4> >", %"class.Texture2D<vector<float, 4> >"* %3903, align 4, !noalias !175
  %3905 = call %dx.types.Handle @"dx.op.createHandleForLib.class.Texture2D<vector<float, 4> >"(i32 160, %"class.Texture2D<vector<float, 4> >" %3904)  ; CreateHandleForLib(Resource)
  %3906 = call %dx.types.Handle @dx.op.createHandleForLib.struct.SamplerState(i32 160, %struct.SamplerState %45)  ; CreateHandleForLib(Resource)
  %3907 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3905, %dx.types.Handle %3906, float %2331, float %2332, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3908 = extractvalue %dx.types.ResRet.f32 %3907, 0
  br label %3909

; <label>:3909                                    ; preds = %3897, %3888
  %3910 = phi float [ %3908, %3897 ], [ 1.000000e+00, %3888 ]
  %3911 = call %dx.types.Handle @dx.op.createHandleForLib.struct.ByteAddressBuffer(i32 160, %struct.ByteAddressBuffer %12)  ; CreateHandleForLib(Resource)
  %3912 = call %dx.types.ResRet.i32 @dx.op.rawBufferLoad.i32(i32 139, %dx.types.Handle %3911, i32 %3717, i32 undef, i8 15, i32 4)  ; RawBufferLoad(srv,index,elementOffset,mask,alignment)
  %3913 = extractvalue %dx.types.ResRet.i32 %3912, 0
  %3914 = and i32 %3913, 33554432
  %3915 = icmp eq i32 %3914, 0
  br i1 %3915, label %4016, label %3916

; <label>:3916                                    ; preds = %3909
  %3917 = call %dx.types.ResRet.i32 @dx.op.rawBufferLoad.i32(i32 139, %dx.types.Handle %3911, i32 %2462, i32 undef, i8 15, i32 4)  ; RawBufferLoad(srv,index,elementOffset,mask,alignment)
  %3918 = extractvalue %dx.types.ResRet.i32 %3917, 2
  %3919 = and i32 %3918, 65535
  %3920 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3919), !dx.precise !89  ; LegacyF16ToF32(value)
  %3921 = lshr i32 %3918, 16
  %3922 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3921), !dx.precise !89  ; LegacyF16ToF32(value)
  %3923 = extractvalue %dx.types.ResRet.i32 %3917, 3
  %3924 = and i32 %3923, 65535
  %3925 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3924), !dx.precise !89  ; LegacyF16ToF32(value)
  %3926 = extractvalue %dx.types.ResRet.i32 %3917, 0
  %3927 = lshr i32 %3926, 24
  %3928 = uitofp i32 %3927 to float
  %3929 = fdiv float %3928, 2.550000e+02
  %3930 = and i32 %3926, 255
  %3931 = uitofp i32 %3930 to float
  %3932 = fdiv float %3931, 2.550000e+02
  %3933 = lshr i32 %3926, 8
  %3934 = and i32 %3933, 255
  %3935 = uitofp i32 %3934 to float
  %3936 = fdiv float %3935, 2.550000e+02
  %3937 = lshr i32 %3926, 16
  %3938 = and i32 %3937, 255
  %3939 = uitofp i32 %3938 to float
  %3940 = fdiv float %3939, 2.550000e+02
  %3941 = extractvalue %dx.types.ResRet.i32 %3917, 1
  %3942 = lshr i32 %3941, 24
  %3943 = uitofp i32 %3942 to float
  %3944 = fdiv float %3943, 2.550000e+02
  %3945 = and i32 %3941, 255
  %3946 = uitofp i32 %3945 to float
  %3947 = fdiv float %3946, 2.550000e+02
  %3948 = lshr i32 %3941, 8
  %3949 = and i32 %3948, 255
  %3950 = uitofp i32 %3949 to float
  %3951 = fdiv float %3950, 2.550000e+02
  %3952 = lshr i32 %3941, 16
  %3953 = and i32 %3952, 255
  %3954 = uitofp i32 %3953 to float
  %3955 = fdiv float %3954, 2.550000e+02
  %3956 = fmul float %3889, 5.000000e-01
  %3957 = bitcast float %3889 to i32
  %3958 = ashr i32 %3957, 1
  %3959 = sub nsw i32 1597463174, %3958
  %3960 = bitcast i32 %3959 to float
  %3961 = fmul float %3960, %3960
  %3962 = fmul float %3956, %3961
  %3963 = fsub float 1.500000e+00, %3962
  %3964 = fmul float %3960, %3963
  %3965 = fmul float %3889, %3964
  %3966 = fmul float %3890, 5.000000e-01
  %3967 = bitcast float %3890 to i32
  %3968 = ashr i32 %3967, 1
  %3969 = sub nsw i32 1597463174, %3968
  %3970 = bitcast i32 %3969 to float
  %3971 = fmul float %3970, %3970
  %3972 = fmul float %3966, %3971
  %3973 = fsub float 1.500000e+00, %3972
  %3974 = fmul float %3970, %3973
  %3975 = fmul float %3890, %3974
  %3976 = fmul float %3891, 5.000000e-01
  %3977 = bitcast float %3891 to i32
  %3978 = ashr i32 %3977, 1
  %3979 = sub nsw i32 1597463174, %3978
  %3980 = bitcast i32 %3979 to float
  %3981 = fmul float %3980, %3980
  %3982 = fmul float %3976, %3981
  %3983 = fsub float 1.500000e+00, %3982
  %3984 = fmul float %3980, %3983
  %3985 = fmul float %3891, %3984
  %3986 = fsub float %3965, %3947
  %3987 = fsub float %3975, %3951
  %3988 = fsub float %3985, %3955
  %3989 = fmul float %3920, %3986
  %3990 = fmul float %3922, %3987
  %3991 = fmul float %3925, %3988
  %3992 = fadd float %3932, %3989
  %3993 = fadd float %3936, %3990
  %3994 = fadd float %3940, %3991
  %3995 = call float @dx.op.unary.f32(i32 7, float %3992), !dx.precise !89  ; Saturate(value)
  %3996 = call float @dx.op.unary.f32(i32 7, float %3993), !dx.precise !89  ; Saturate(value)
  %3997 = call float @dx.op.unary.f32(i32 7, float %3994), !dx.precise !89  ; Saturate(value)
  %3998 = fmul float %3995, %3995
  %3999 = fmul float %3996, %3996
  %4000 = fmul float %3997, %3997
  %4001 = fsub float %3998, %3889
  %4002 = fsub float %3999, %3890
  %4003 = fsub float %4000, %3891
  %4004 = fmul float %3910, %4001
  %4005 = fmul float %3910, %4002
  %4006 = fmul float %3910, %4003
  %4007 = fadd float %3889, %4004
  %4008 = fadd float %3890, %4005
  %4009 = fadd float %3891, %4006
  %4010 = fsub float %3861, %3944
  %4011 = fadd float %3929, %4010
  %4012 = call float @dx.op.unary.f32(i32 7, float %4011), !dx.precise !89  ; Saturate(value)
  %4013 = fsub float %4012, %3861
  %4014 = fmul float %3910, %4013
  %4015 = fadd float %3861, %4014
  br label %4072

; <label>:4016                                    ; preds = %3909
  %4017 = and i32 %3913, 134217728
  %4018 = icmp eq i32 %4017, 0
  br i1 %4018, label %4056, label %4019

; <label>:4019                                    ; preds = %4016
  %4020 = call float @dx.op.unary.f32(i32 24, float %2467), !dx.precise !89  ; Sqrt(value)
  %4021 = call float @dx.op.unary.f32(i32 24, float %2471), !dx.precise !89  ; Sqrt(value)
  %4022 = call float @dx.op.unary.f32(i32 24, float %2475), !dx.precise !89  ; Sqrt(value)
  %4023 = fadd float %4020, -5.000000e-01
  %4024 = fadd float %4021, -5.000000e-01
  %4025 = fadd float %4022, -5.000000e-01
  %4026 = fmul float %3910, %4023
  %4027 = fmul float %3910, %4024
  %4028 = fmul float %3910, %4025
  %4029 = fadd float %4026, 5.000000e-01
  %4030 = fadd float %4027, 5.000000e-01
  %4031 = fadd float %4028, 5.000000e-01
  %4032 = call float @dx.op.unary.f32(i32 24, float %3889), !dx.precise !89  ; Sqrt(value)
  %4033 = call float @dx.op.unary.f32(i32 24, float %3890), !dx.precise !89  ; Sqrt(value)
  %4034 = call float @dx.op.unary.f32(i32 24, float %3891), !dx.precise !89  ; Sqrt(value)
  %4035 = fmul float %4029, 2.000000e+00
  %4036 = fsub float 1.000000e+00, %4035
  %4037 = fmul float %4032, %4036
  %4038 = fmul float %4032, %4037
  %4039 = fmul float %4032, %4035
  %4040 = fadd float %4039, %4038
  %4041 = fmul float %4030, 2.000000e+00
  %4042 = fsub float 1.000000e+00, %4041
  %4043 = fmul float %4033, %4042
  %4044 = fmul float %4033, %4043
  %4045 = fmul float %4033, %4041
  %4046 = fadd float %4045, %4044
  %4047 = fmul float %4031, 2.000000e+00
  %4048 = fsub float 1.000000e+00, %4047
  %4049 = fmul float %4034, %4048
  %4050 = fmul float %4034, %4049
  %4051 = fmul float %4034, %4047
  %4052 = fadd float %4051, %4050
  %4053 = fmul float %4040, %4040
  %4054 = fmul float %4046, %4046
  %4055 = fmul float %4052, %4052
  br label %4072

; <label>:4056                                    ; preds = %4016
  %4057 = fmul float %2467, %2467
  %4058 = fmul float %2471, %2471
  %4059 = fmul float %2475, %2475
  %4060 = fadd float %4057, -1.000000e+00
  %4061 = fadd float %4058, -1.000000e+00
  %4062 = fadd float %4059, -1.000000e+00
  %4063 = fmul float %4060, %3910
  %4064 = fmul float %4061, %3910
  %4065 = fmul float %4062, %3910
  %4066 = fadd float %4063, 1.000000e+00
  %4067 = fadd float %4064, 1.000000e+00
  %4068 = fadd float %4065, 1.000000e+00
  %4069 = fmul float %3889, %4066
  %4070 = fmul float %3890, %4067
  %4071 = fmul float %3891, %4068
  br label %4072

; <label>:4072                                    ; preds = %4056, %4019, %3916, %3826
  %4073 = phi float [ %4015, %3916 ], [ %3861, %4019 ], [ %3861, %4056 ], [ 0x3FA23C0BE0000000, %3826 ]
  %4074 = phi float [ %4007, %3916 ], [ %4053, %4019 ], [ %4069, %4056 ], [ 1.000000e+00, %3826 ]
  %4075 = phi float [ %4008, %3916 ], [ %4054, %4019 ], [ %4070, %4056 ], [ 1.000000e+00, %3826 ]
  %4076 = phi float [ %4009, %3916 ], [ %4055, %4019 ], [ %4071, %4056 ], [ 1.000000e+00, %3826 ]
  %4077 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %43, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %4078 = extractvalue %dx.types.CBufRet.i32 %4077, 1
  %4079 = and i32 %4078, 1
  %4080 = icmp ne i32 %4079, 0
  %4081 = call %dx.types.Handle @dx.op.createHandleForLib.struct.ByteAddressBuffer(i32 160, %struct.ByteAddressBuffer %12)  ; CreateHandleForLib(Resource)
  %4082 = call %dx.types.ResRet.i32 @dx.op.rawBufferLoad.i32(i32 139, %dx.types.Handle %4081, i32 %1476, i32 undef, i8 15, i32 4)  ; RawBufferLoad(srv,index,elementOffset,mask,alignment)
  %4083 = extractvalue %dx.types.ResRet.i32 %4082, 3
  %4084 = and i32 %4083, 32
  %4085 = icmp ne i32 %4084, 0
  %4086 = and i1 %4080, %4085
  %4087 = select i1 %4086, float 1.000000e+00, float %4074
  %4088 = select i1 %4086, float 0x3FD3333340000000, float %4075
  %4089 = select i1 %4086, float 0x3FD3333340000000, float %4076
  %4090 = call %dx.types.ResRet.i32 @dx.op.rawBufferLoad.i32(i32 139, %dx.types.Handle %4081, i32 %3717, i32 undef, i8 15, i32 4)  ; RawBufferLoad(srv,index,elementOffset,mask,alignment)
  %4091 = extractvalue %dx.types.ResRet.i32 %4090, 0
  %4092 = and i32 %4091, 32
  %4093 = icmp eq i32 %4092, 0
  br i1 %4093, label %4177, label %4094

; <label>:4094                                    ; preds = %4072
  %4095 = and i32 %425, 63
  %4096 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %4095)  ; Countbits(value)
  %4097 = shl i32 %4096, 4
  %4098 = add i32 %4097, %439
  %4099 = call %dx.types.ResRet.i32 @dx.op.rawBufferLoad.i32(i32 139, %dx.types.Handle %4081, i32 %4098, i32 undef, i8 15, i32 4)  ; RawBufferLoad(srv,index,elementOffset,mask,alignment)
  %4100 = extractvalue %dx.types.ResRet.i32 %4099, 1
  %4101 = and i32 %432, 63
  %4102 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %4101)  ; Countbits(value)
  %4103 = shl i32 %4102, 2
  %4104 = add i32 %4103, %441
  %4105 = call %dx.types.ResRet.i32 @dx.op.rawBufferLoad.i32(i32 139, %dx.types.Handle %4081, i32 %4104, i32 undef, i8 1, i32 4)  ; RawBufferLoad(srv,index,elementOffset,mask,alignment)
  %4106 = extractvalue %dx.types.ResRet.i32 %4105, 0
  %4107 = getelementptr inbounds [0 x %"class.Texture2D<vector<float, 4> >"], [0 x %"class.Texture2D<vector<float, 4> >"]* @"\01?globalTexture2DHalfTable@@3PAV?$Texture2D@V?$vector@M$03@@@@A", i32 0, i32 %4106
  %4108 = load %"class.Texture2D<vector<float, 4> >", %"class.Texture2D<vector<float, 4> >"* %4107, align 4, !noalias !178
  %4109 = call %dx.types.Handle @"dx.op.createHandleForLib.class.Texture2D<vector<float, 4> >"(i32 160, %"class.Texture2D<vector<float, 4> >" %4108)  ; CreateHandleForLib(Resource)
  %4110 = call %dx.types.Handle @dx.op.createHandleForLib.struct.SamplerState(i32 160, %struct.SamplerState %44)  ; CreateHandleForLib(Resource)
  %4111 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4109, %dx.types.Handle %4110, float %2331, float %2332, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4112 = extractvalue %dx.types.ResRet.f32 %4111, 0
  %4113 = extractvalue %dx.types.ResRet.f32 %4111, 1
  %4114 = extractvalue %dx.types.ResRet.f32 %4111, 2
  %4115 = extractvalue %dx.types.ResRet.f32 %4111, 3
  %4116 = and i32 %4100, 255
  %4117 = uitofp i32 %4116 to float
  %4118 = lshr i32 %4100, 8
  %4119 = and i32 %4118, 255
  %4120 = uitofp i32 %4119 to float
  %4121 = lshr i32 %4100, 16
  %4122 = and i32 %4121, 255
  %4123 = uitofp i32 %4122 to float
  %4124 = fmul float %4123, 0x3F70101000000000
  %4125 = fmul float %4117, %4112
  %4126 = fadd float %4120, %4125
  %4127 = fmul float %4126, 0x3F70101000000000
  %4128 = fadd float %4113, -5.000000e-01
  %4129 = fadd float %4115, -5.000000e-01
  %4130 = fmul float %4124, %4128
  %4131 = fmul float %4124, %4129
  %4132 = fadd float %4130, 5.000000e-01
  %4133 = fadd float %4131, 5.000000e-01
  %4134 = fmul float %4132, 2.000000e+00
  %4135 = fadd float %4134, -1.000000e+00
  %4136 = fmul float %4133, 2.000000e+00
  %4137 = fadd float %4136, -1.000000e+00
  %4138 = fadd float %4135, %4137
  %4139 = fmul float %4138, 5.000000e-01
  %4140 = fsub float %4135, %4137
  %4141 = fmul float %4140, 5.000000e-01
  %4142 = call float @dx.op.unary.f32(i32 6, float %4139), !dx.precise !89  ; FAbs(value)
  %4143 = fsub float 1.000000e+00, %4142
  %4144 = call float @dx.op.unary.f32(i32 6, float %4141), !dx.precise !89  ; FAbs(value)
  %4145 = fsub float %4143, %4144
  %4146 = call float @dx.op.dot3.f32(i32 55, float %4139, float %4141, float %4145, float %4139, float %4141, float %4145), !dx.precise !89  ; Dot3(ax,ay,az,bx,by,bz)
  %4147 = call float @dx.op.unary.f32(i32 25, float %4146), !dx.precise !89  ; Rsqrt(value)
  %4148 = fmul float %4147, %4139
  %4149 = fmul float %4147, %4141
  %4150 = call %dx.types.Handle @dx.op.createHandleForLib.struct.ByteAddressBuffer(i32 160, %struct.ByteAddressBuffer %12)  ; CreateHandleForLib(Resource)
  %4151 = call %dx.types.ResRet.i32 @dx.op.rawBufferLoad.i32(i32 139, %dx.types.Handle %4150, i32 %3717, i32 undef, i8 15, i32 4)  ; RawBufferLoad(srv,index,elementOffset,mask,alignment)
  %4152 = extractvalue %dx.types.ResRet.i32 %4151, 0
  %4153 = and i32 %4152, 67108864
  %4154 = icmp eq i32 %4153, 0
  br i1 %4154, label %4173, label %4155

; <label>:4155                                    ; preds = %4094
  %4156 = and i32 %425, 262143
  %4157 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %4156)  ; Countbits(value)
  %4158 = shl i32 %4157, 4
  %4159 = add i32 %4158, %439
  %4160 = call %dx.types.ResRet.i32 @dx.op.rawBufferLoad.i32(i32 139, %dx.types.Handle %4150, i32 %4159, i32 undef, i8 15, i32 4)  ; RawBufferLoad(srv,index,elementOffset,mask,alignment)
  %4161 = extractvalue %dx.types.ResRet.i32 %4160, 0
  %4162 = and i32 %4161, 65535
  %4163 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4162), !dx.precise !89  ; LegacyF16ToF32(value)
  %4164 = extractvalue %dx.types.ResRet.i32 %4160, 1
  %4165 = and i32 %4164, 65535
  %4166 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4165), !dx.precise !89  ; LegacyF16ToF32(value)
  %4167 = lshr i32 %4161, 16
  %4168 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4167), !dx.precise !89  ; LegacyF16ToF32(value)
  %4169 = fsub float %4127, %4168
  %4170 = fmul float %4163, %4169
  %4171 = fadd float %4166, %4170
  %4172 = call float @dx.op.unary.f32(i32 7, float %4171), !dx.precise !89  ; Saturate(value)
  br label %4173

; <label>:4173                                    ; preds = %4155, %4094
  %4174 = phi float [ %4172, %4155 ], [ %4127, %4094 ]
  %4175 = call float @dx.op.dot2.f32(i32 54, float %4148, float %4149, float %2353, float %2354), !dx.precise !89  ; Dot2(ax,ay,bx,by)
  %4176 = call float @dx.op.dot2.f32(i32 54, float %4148, float %4149, float %2355, float %2356), !dx.precise !89  ; Dot2(ax,ay,bx,by)
  br label %4177

; <label>:4177                                    ; preds = %4173, %4072
  %4178 = phi float [ %4174, %4173 ], [ 0x3FD6666660000000, %4072 ]
  %4179 = phi float [ %4175, %4173 ], [ 0.000000e+00, %4072 ]
  %4180 = phi float [ %4176, %4173 ], [ 0.000000e+00, %4072 ]
  %4181 = phi float [ %4114, %4173 ], [ 1.000000e+00, %4072 ]
  %4182 = call %dx.types.Handle @dx.op.createHandleForLib.struct.ByteAddressBuffer(i32 160, %struct.ByteAddressBuffer %12)  ; CreateHandleForLib(Resource)
  %4183 = call %dx.types.ResRet.i32 @dx.op.rawBufferLoad.i32(i32 139, %dx.types.Handle %4182, i32 %3717, i32 undef, i8 15, i32 4)  ; RawBufferLoad(srv,index,elementOffset,mask,alignment)
  %4184 = extractvalue %dx.types.ResRet.i32 %4183, 0
  %4185 = and i32 %4184, 64
  %4186 = icmp eq i32 %4185, 0
  br i1 %4186, label %4216, label %4187

; <label>:4187                                    ; preds = %4177
  %4188 = and i32 %432, 1023
  %4189 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %4188)  ; Countbits(value)
  %4190 = shl i32 %4189, 2
  %4191 = add i32 %4190, %441
  %4192 = call %dx.types.ResRet.i32 @dx.op.rawBufferLoad.i32(i32 139, %dx.types.Handle %4182, i32 %4191, i32 undef, i8 1, i32 4)  ; RawBufferLoad(srv,index,elementOffset,mask,alignment)
  %4193 = extractvalue %dx.types.ResRet.i32 %4192, 0
  %4194 = getelementptr inbounds [0 x %"class.Texture2D<vector<float, 4> >"], [0 x %"class.Texture2D<vector<float, 4> >"]* @"\01?globalTexture2DHalfTable@@3PAV?$Texture2D@V?$vector@M$03@@@@A", i32 0, i32 %4193
  %4195 = load %"class.Texture2D<vector<float, 4> >", %"class.Texture2D<vector<float, 4> >"* %4194, align 4, !noalias !185
  %4196 = call %dx.types.Handle @dx.op.createHandleForLib.struct.ByteAddressBuffer(i32 160, %struct.ByteAddressBuffer %12)  ; CreateHandleForLib(Resource)
  %4197 = call %dx.types.ResRet.i32 @dx.op.rawBufferLoad.i32(i32 139, %dx.types.Handle %4196, i32 %3717, i32 undef, i8 15, i32 4)  ; RawBufferLoad(srv,index,elementOffset,mask,alignment)
  %4198 = extractvalue %dx.types.ResRet.i32 %4197, 0
  %4199 = and i32 %4198, 131072
  %4200 = icmp eq i32 %4199, 0
  %4201 = call %dx.types.Handle @"dx.op.createHandleForLib.class.Texture2D<vector<float, 4> >"(i32 160, %"class.Texture2D<vector<float, 4> >" %4195)  ; CreateHandleForLib(Resource)
  %4202 = call %dx.types.Handle @dx.op.createHandleForLib.struct.SamplerState(i32 160, %struct.SamplerState %44)  ; CreateHandleForLib(Resource)
  %4203 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4201, %dx.types.Handle %4202, float %2331, float %2332, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4204 = extractvalue %dx.types.ResRet.f32 %4203, 0
  %4205 = extractvalue %dx.types.ResRet.f32 %4203, 1
  %4206 = extractvalue %dx.types.ResRet.f32 %4203, 2
  %4207 = fmul fast float %4204, %2452
  %4208 = fmul fast float %4205, %2455
  %4209 = fmul fast float %4206, %2458
  br i1 %4200, label %4216, label %4210

; <label>:4210                                    ; preds = %4187
  %4211 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %4212 = extractvalue %dx.types.CBufRet.f32 %4211, 0
  %4213 = fmul fast float %4212, %4207
  %4214 = fmul fast float %4212, %4208
  %4215 = fmul fast float %4212, %4209
  br label %4216

; <label>:4216                                    ; preds = %4210, %4187, %4177
  %4217 = phi float [ %4213, %4210 ], [ %4207, %4187 ], [ 0.000000e+00, %4177 ]
  %4218 = phi float [ %4214, %4210 ], [ %4208, %4187 ], [ 0.000000e+00, %4177 ]
  %4219 = phi float [ %4215, %4210 ], [ %4209, %4187 ], [ 0.000000e+00, %4177 ]
  %4220 = call %dx.types.Handle @dx.op.createHandleForLib.struct.ByteAddressBuffer(i32 160, %struct.ByteAddressBuffer %12)  ; CreateHandleForLib(Resource)
  %4221 = call %dx.types.ResRet.i32 @dx.op.rawBufferLoad.i32(i32 139, %dx.types.Handle %4220, i32 %3717, i32 undef, i8 15, i32 4)  ; RawBufferLoad(srv,index,elementOffset,mask,alignment)
  %4222 = extractvalue %dx.types.ResRet.i32 %4221, 0
  br i1 %3713, label %4223, label %4234

; <label>:4223                                    ; preds = %4216
  %4224 = fsub float 1.000000e+00, %3824
  %4225 = fmul float %3699, %4224
  %4226 = fmul float %3700, %4224
  %4227 = fmul float %3701, %4224
  %4228 = fmul fast float %4224, %3705
  %4229 = fmul fast float %4224, %3706
  %4230 = fmul fast float %4224, %3707
  %4231 = fmul float %3702, %4224
  %4232 = fmul float %3703, %4224
  %4233 = fmul float %3704, %4224
  br label %4234

; <label>:4234                                    ; preds = %4223, %4216
  %4235 = phi float [ %3699, %4216 ], [ %4225, %4223 ]
  %4236 = phi float [ %3700, %4216 ], [ %4226, %4223 ]
  %4237 = phi float [ %3701, %4216 ], [ %4227, %4223 ]
  %4238 = phi float [ %3702, %4216 ], [ %4231, %4223 ]
  %4239 = phi float [ %3703, %4216 ], [ %4232, %4223 ]
  %4240 = phi float [ %3704, %4216 ], [ %4233, %4223 ]
  %4241 = phi float [ %3705, %4216 ], [ %4228, %4223 ]
  %4242 = phi float [ %3706, %4216 ], [ %4229, %4223 ]
  %4243 = phi float [ %3707, %4216 ], [ %4230, %4223 ]
  %4244 = and i32 %4222, 3
  %4245 = icmp eq i32 %4244, 3
  br i1 %4245, label %4333, label %4246

; <label>:4246                                    ; preds = %4234
  %4247 = and i32 %4222, 16
  %4248 = icmp ne i32 %4247, 0
  %4249 = select i1 %4248, float %3824, float 0.000000e+00
  %4250 = icmp eq i32 %4244, 0
  br i1 %4250, label %4251, label %4285

; <label>:4251                                    ; preds = %4246
  %4252 = and i32 %4222, 64
  %4253 = icmp ne i32 %4252, 0
  %4254 = select i1 %4253, float %3824, float 0.000000e+00
  %4255 = fsub float %4087, %4235
  %4256 = fsub float %4088, %4236
  %4257 = fsub float %4089, %4237
  %4258 = fmul float %4255, %4249
  %4259 = fmul float %4256, %4249
  %4260 = fmul float %4257, %4249
  %4261 = fadd float %4235, %4258
  %4262 = fadd float %4236, %4259
  %4263 = fadd float %4237, %4260
  %4264 = fsub float %4073, %3708
  %4265 = fmul float %4264, %4249
  %4266 = fadd float %3708, %4265
  %4267 = fsub fast float %4217, %4241
  %4268 = fsub fast float %4218, %4242
  %4269 = fsub fast float %4219, %4243
  %4270 = fmul fast float %4254, %4267
  %4271 = fmul fast float %4254, %4268
  %4272 = fmul fast float %4254, %4269
  %4273 = fadd fast float %4270, %4241
  %4274 = fadd fast float %4271, %4242
  %4275 = fadd fast float %4272, %4243
  %4276 = fsub float 0.000000e+00, %4238
  %4277 = fsub float 0.000000e+00, %4239
  %4278 = fsub float 0.000000e+00, %4240
  %4279 = fmul float %4276, 0.000000e+00
  %4280 = fmul float %4277, 0.000000e+00
  %4281 = fmul float %4278, 0.000000e+00
  %4282 = fadd float %4238, %4279
  %4283 = fadd float %4239, %4280
  %4284 = fadd float %4240, %4281
  br label %4333

; <label>:4285                                    ; preds = %4246
  %4286 = icmp eq i32 %4244, 1
  br i1 %4286, label %4287, label %4300

; <label>:4287                                    ; preds = %4285
  %4288 = fadd float %4087, -1.000000e+00
  %4289 = fadd float %4088, -1.000000e+00
  %4290 = fadd float %4089, -1.000000e+00
  %4291 = fmul float %4288, %4249
  %4292 = fmul float %4289, %4249
  %4293 = fmul float %4290, %4249
  %4294 = fadd float %4291, 1.000000e+00
  %4295 = fadd float %4292, 1.000000e+00
  %4296 = fadd float %4293, 1.000000e+00
  %4297 = fmul float %4235, %4294
  %4298 = fmul float %4236, %4295
  %4299 = fmul float %4237, %4296
  br label %4333

; <label>:4300                                    ; preds = %4285
  %4301 = icmp eq i32 %4244, 2
  br i1 %4301, label %4302, label %4333

; <label>:4302                                    ; preds = %4300
  %4303 = call float @dx.op.unary.f32(i32 24, float %4087), !dx.precise !89  ; Sqrt(value)
  %4304 = call float @dx.op.unary.f32(i32 24, float %4088), !dx.precise !89  ; Sqrt(value)
  %4305 = call float @dx.op.unary.f32(i32 24, float %4089), !dx.precise !89  ; Sqrt(value)
  %4306 = fadd float %4303, -5.000000e-01
  %4307 = fadd float %4304, -5.000000e-01
  %4308 = fadd float %4305, -5.000000e-01
  %4309 = fmul float %4249, %4306
  %4310 = fmul float %4249, %4307
  %4311 = fmul float %4249, %4308
  %4312 = fadd float %4309, 5.000000e-01
  %4313 = fadd float %4310, 5.000000e-01
  %4314 = fadd float %4311, 5.000000e-01
  %4315 = fmul float %4312, 2.000000e+00
  %4316 = fsub float 1.000000e+00, %4315
  %4317 = fmul float %4235, %4316
  %4318 = fmul float %4235, %4317
  %4319 = fmul float %4235, %4315
  %4320 = fadd float %4319, %4318
  %4321 = fmul float %4313, 2.000000e+00
  %4322 = fsub float 1.000000e+00, %4321
  %4323 = fmul float %4236, %4322
  %4324 = fmul float %4236, %4323
  %4325 = fmul float %4236, %4321
  %4326 = fadd float %4325, %4324
  %4327 = fmul float %4314, 2.000000e+00
  %4328 = fsub float 1.000000e+00, %4327
  %4329 = fmul float %4237, %4328
  %4330 = fmul float %4237, %4329
  %4331 = fmul float %4237, %4327
  %4332 = fadd float %4331, %4330
  br label %4333

; <label>:4333                                    ; preds = %4302, %4300, %4287, %4251, %4234
  %4334 = phi float [ %4235, %4234 ], [ %4261, %4251 ], [ %4297, %4287 ], [ %4235, %4300 ], [ %4320, %4302 ]
  %4335 = phi float [ %4236, %4234 ], [ %4262, %4251 ], [ %4298, %4287 ], [ %4236, %4300 ], [ %4326, %4302 ]
  %4336 = phi float [ %4237, %4234 ], [ %4263, %4251 ], [ %4299, %4287 ], [ %4237, %4300 ], [ %4332, %4302 ]
  %4337 = phi float [ %4238, %4234 ], [ %4282, %4251 ], [ %4238, %4287 ], [ %4238, %4300 ], [ %4238, %4302 ]
  %4338 = phi float [ %4239, %4234 ], [ %4283, %4251 ], [ %4239, %4287 ], [ %4239, %4300 ], [ %4239, %4302 ]
  %4339 = phi float [ %4240, %4234 ], [ %4284, %4251 ], [ %4240, %4287 ], [ %4240, %4300 ], [ %4240, %4302 ]
  %4340 = phi float [ %4241, %4234 ], [ %4273, %4251 ], [ %4241, %4287 ], [ %4241, %4300 ], [ %4241, %4302 ]
  %4341 = phi float [ %4242, %4234 ], [ %4274, %4251 ], [ %4242, %4287 ], [ %4242, %4300 ], [ %4242, %4302 ]
  %4342 = phi float [ %4243, %4234 ], [ %4275, %4251 ], [ %4243, %4287 ], [ %4243, %4300 ], [ %4243, %4302 ]
  %4343 = phi float [ %3708, %4234 ], [ %4266, %4251 ], [ %3708, %4287 ], [ %3708, %4300 ], [ %3708, %4302 ]
  %4344 = and i32 %4222, 12
  %4345 = icmp eq i32 %4344, 12
  br i1 %4345, label %4418, label %4346

; <label>:4346                                    ; preds = %4333
  %4347 = and i32 %4222, 2097184
  %4348 = icmp eq i32 %4347, 2097184
  %4349 = select i1 %4348, float %3824, float 0.000000e+00
  %4350 = and i32 %4222, 4194336
  %4351 = icmp eq i32 %4350, 4194336
  %4352 = select i1 %4351, float %3824, float 0.000000e+00
  %4353 = and i32 %4222, 8388640
  %4354 = icmp eq i32 %4353, 8388640
  %4355 = select i1 %4354, float %3824, float 0.000000e+00
  %4356 = icmp eq i32 %4344, 0
  br i1 %4356, label %4357, label %4370

; <label>:4357                                    ; preds = %4346
  %4358 = fsub float %4179, %3697
  %4359 = fsub float %4180, %3698
  %4360 = fmul float %4358, %4349
  %4361 = fmul float %4359, %4349
  %4362 = fadd float %3697, %4360
  %4363 = fadd float %3698, %4361
  %4364 = fsub float %4181, %3710
  %4365 = fmul float %4364, %4352
  %4366 = fadd float %3710, %4365
  %4367 = fsub float %4178, %3709
  %4368 = fmul float %4367, %4355
  %4369 = fadd float %3709, %4368
  br label %4418

; <label>:4370                                    ; preds = %4346
  %4371 = icmp eq i32 %4344, 4
  br i1 %4371, label %4372, label %4404

; <label>:4372                                    ; preds = %4370
  %4373 = fmul float %4179, %4349
  %4374 = fmul float %4180, %4349
  %4375 = fadd float %3697, %4373
  %4376 = fadd float %3698, %4374
  %4377 = call float @dx.op.binary.f32(i32 36, float %3710, float %4181), !dx.precise !89  ; FMin(a,b)
  %4378 = fsub float %4377, %3710
  %4379 = fmul float %4352, %4378
  %4380 = fadd float %3710, %4379
  %4381 = fadd float %3709, %4178
  %4382 = fmul float %4381, 0x3FF337FAE0000000
  %4383 = fadd float %4382, 0xBFE1363700000000
  %4384 = fmul float %3709, %3709
  %4385 = fmul float %4178, %4178
  %4386 = fadd float %4384, %4385
  %4387 = fmul float %4386, 0x3FE5152B00000000
  %4388 = fsub float %4383, %4387
  %4389 = fmul float %3709, 0xBFCC1F85E0000000
  %4390 = fmul float %4389, %4178
  %4391 = fadd float %4390, %4388
  %4392 = fmul float %4381, 0x3FBA6F0D00000000
  %4393 = fsub float 1.000000e+00, %4392
  %4394 = fmul float %4386, 0x3FD0432880000000
  %4395 = fadd float %4393, %4394
  %4396 = fmul float %3709, 0xBFEF110800000000
  %4397 = fmul float %4396, %4178
  %4398 = fadd float %4397, %4395
  %4399 = fdiv float %4391, %4398
  %4400 = call float @dx.op.unary.f32(i32 7, float %4399), !dx.precise !89  ; Saturate(value)
  %4401 = fsub float %4400, %3709
  %4402 = fmul float %4355, %4401
  %4403 = fadd float %3709, %4402
  br label %4418

; <label>:4404                                    ; preds = %4370
  %4405 = icmp eq i32 %4344, 8
  br i1 %4405, label %4406, label %4418

; <label>:4406                                    ; preds = %4404
  %4407 = fmul float %4179, %4349
  %4408 = fmul float %4180, %4349
  %4409 = fadd float %3697, %4407
  %4410 = fadd float %3698, %4408
  %4411 = call float @dx.op.binary.f32(i32 36, float %3710, float %4181), !dx.precise !89  ; FMin(a,b)
  %4412 = fsub float %4411, %3710
  %4413 = fmul float %4352, %4412
  %4414 = fadd float %3710, %4413
  %4415 = fsub float %4178, %3709
  %4416 = fmul float %4415, %4355
  %4417 = fadd float %3709, %4416
  br label %4418

; <label>:4418                                    ; preds = %4406, %4404, %4372, %4357, %4333, %3823, %3724, %3712, %3696
  %4419 = phi float [ %3697, %3696 ], [ %3697, %3712 ], [ %3697, %3724 ], [ %4362, %4357 ], [ %4375, %4372 ], [ %4409, %4406 ], [ %3697, %4404 ], [ %3697, %4333 ], [ %3697, %3823 ]
  %4420 = phi float [ %3698, %3696 ], [ %3698, %3712 ], [ %3698, %3724 ], [ %4363, %4357 ], [ %4376, %4372 ], [ %4410, %4406 ], [ %3698, %4404 ], [ %3698, %4333 ], [ %3698, %3823 ]
  %4421 = phi float [ %3699, %3696 ], [ %3699, %3712 ], [ %3699, %3724 ], [ %4334, %4357 ], [ %4334, %4372 ], [ %4334, %4406 ], [ %4334, %4404 ], [ %4334, %4333 ], [ %3699, %3823 ]
  %4422 = phi float [ %3700, %3696 ], [ %3700, %3712 ], [ %3700, %3724 ], [ %4335, %4357 ], [ %4335, %4372 ], [ %4335, %4406 ], [ %4335, %4404 ], [ %4335, %4333 ], [ %3700, %3823 ]
  %4423 = phi float [ %3701, %3696 ], [ %3701, %3712 ], [ %3701, %3724 ], [ %4336, %4357 ], [ %4336, %4372 ], [ %4336, %4406 ], [ %4336, %4404 ], [ %4336, %4333 ], [ %3701, %3823 ]
  %4424 = phi float [ %3702, %3696 ], [ %3702, %3712 ], [ %3702, %3724 ], [ %4337, %4357 ], [ %4337, %4372 ], [ %4337, %4406 ], [ %4337, %4404 ], [ %4337, %4333 ], [ %3702, %3823 ]
  %4425 = phi float [ %3703, %3696 ], [ %3703, %3712 ], [ %3703, %3724 ], [ %4338, %4357 ], [ %4338, %4372 ], [ %4338, %4406 ], [ %4338, %4404 ], [ %4338, %4333 ], [ %3703, %3823 ]
  %4426 = phi float [ %3704, %3696 ], [ %3704, %3712 ], [ %3704, %3724 ], [ %4339, %4357 ], [ %4339, %4372 ], [ %4339, %4406 ], [ %4339, %4404 ], [ %4339, %4333 ], [ %3704, %3823 ]
  %4427 = phi float [ %3705, %3696 ], [ %3705, %3712 ], [ %3705, %3724 ], [ %4340, %4357 ], [ %4340, %4372 ], [ %4340, %4406 ], [ %4340, %4404 ], [ %4340, %4333 ], [ %3705, %3823 ]
  %4428 = phi float [ %3706, %3696 ], [ %3706, %3712 ], [ %3706, %3724 ], [ %4341, %4357 ], [ %4341, %4372 ], [ %4341, %4406 ], [ %4341, %4404 ], [ %4341, %4333 ], [ %3706, %3823 ]
  %4429 = phi float [ %3707, %3696 ], [ %3707, %3712 ], [ %3707, %3724 ], [ %4342, %4357 ], [ %4342, %4372 ], [ %4342, %4406 ], [ %4342, %4404 ], [ %4342, %4333 ], [ %3707, %3823 ]
  %4430 = phi float [ %3708, %3696 ], [ %3708, %3712 ], [ %3708, %3724 ], [ %4343, %4357 ], [ %4343, %4372 ], [ %4343, %4406 ], [ %4343, %4404 ], [ %4343, %4333 ], [ %3708, %3823 ]
  %4431 = phi float [ %3709, %3696 ], [ %3709, %3712 ], [ %3709, %3724 ], [ %4369, %4357 ], [ %4403, %4372 ], [ %4417, %4406 ], [ %3709, %4404 ], [ %3709, %4333 ], [ %3709, %3823 ]
  %4432 = phi float [ %3710, %3696 ], [ %3710, %3712 ], [ %3710, %3724 ], [ %4366, %4357 ], [ %4380, %4372 ], [ %4414, %4406 ], [ %3710, %4404 ], [ %3710, %4333 ], [ %3710, %3823 ]
  %4433 = phi float [ %3711, %3696 ], [ %3711, %3712 ], [ %3725, %3724 ], [ %3725, %4357 ], [ %3725, %4372 ], [ %3725, %4406 ], [ %3725, %4404 ], [ %3725, %4333 ], [ %3725, %3823 ]
  br i1 %2513, label %5143, label %4434

; <label>:4434                                    ; preds = %4418
  %4435 = icmp ult i32 %2581, 4
  %4436 = and i32 %425, 7
  %4437 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %4436)  ; Countbits(value)
  %4438 = shl i32 %4437, 4
  %4439 = add i32 %4438, %439
  %4440 = call %dx.types.Handle @dx.op.createHandleForLib.struct.ByteAddressBuffer(i32 160, %struct.ByteAddressBuffer %12)  ; CreateHandleForLib(Resource)
  %4441 = call %dx.types.ResRet.i32 @dx.op.rawBufferLoad.i32(i32 139, %dx.types.Handle %4440, i32 %4439, i32 undef, i8 15, i32 4)  ; RawBufferLoad(srv,index,elementOffset,mask,alignment)
  %4442 = extractvalue %dx.types.ResRet.i32 %4441, 0
  %4443 = extractvalue %dx.types.ResRet.i32 %4441, 1
  %4444 = or i32 %4443, %4442
  %4445 = icmp eq i32 %4444, 0
  br i1 %4445, label %5143, label %4446

; <label>:4446                                    ; preds = %4434
  %4447 = fadd float %4433, 1.000000e+00
  %4448 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 241)  ; CBufferLoadLegacy(handle,regIndex)
  %4449 = extractvalue %dx.types.CBufRet.f32 %4448, 2
  %4450 = bitcast float %4449 to i32
  %4451 = lshr i32 %4450, 27
  %4452 = and i32 %4451, 15
  %4453 = uitofp i32 %4452 to float
  %4454 = fcmp ogt float %4447, %4453
  br i1 %4454, label %5143, label %4455

; <label>:4455                                    ; preds = %4446
  %4456 = and i32 %4442, 16777216
  %4457 = icmp ne i32 %4456, 0
  %4458 = select i1 %4457, float 0.000000e+00, float %2576
  %4459 = and i32 %4442, 256
  %4460 = icmp eq i32 %4459, 0
  br i1 %4460, label %4516, label %4461

; <label>:4461                                    ; preds = %4455
  %4462 = and i32 %432, 524287
  %4463 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %4462)  ; Countbits(value)
  %4464 = shl i32 %4463, 2
  %4465 = add i32 %4464, %441
  %4466 = call %dx.types.ResRet.i32 @dx.op.rawBufferLoad.i32(i32 139, %dx.types.Handle %4440, i32 %4465, i32 undef, i8 1, i32 4)  ; RawBufferLoad(srv,index,elementOffset,mask,alignment)
  %4467 = extractvalue %dx.types.ResRet.i32 %4466, 0
  %4468 = getelementptr inbounds [0 x %"class.Texture2D<vector<float, 4> >"], [0 x %"class.Texture2D<vector<float, 4> >"]* @"\01?globalTexture2DHalfTable@@3PAV?$Texture2D@V?$vector@M$03@@@@A", i32 0, i32 %4467
  %4469 = load %"class.Texture2D<vector<float, 4> >", %"class.Texture2D<vector<float, 4> >"* %4468, align 4, !noalias !188
  %4470 = call %dx.types.Handle @"dx.op.createHandleForLib.class.Texture2D<vector<float, 4> >"(i32 160, %"class.Texture2D<vector<float, 4> >" %4469)  ; CreateHandleForLib(Resource)
  %4471 = call %dx.types.Handle @dx.op.createHandleForLib.struct.SamplerState(i32 160, %struct.SamplerState %45)  ; CreateHandleForLib(Resource)
  %4472 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4470, %dx.types.Handle %4471, float %2335, float %2336, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4473 = extractvalue %dx.types.ResRet.f32 %4472, 0
  %4474 = and i32 %425, 127
  %4475 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %4474)  ; Countbits(value)
  %4476 = shl i32 %4475, 4
  %4477 = add i32 %4476, %439
  %4478 = call %dx.types.Handle @dx.op.createHandleForLib.struct.ByteAddressBuffer(i32 160, %struct.ByteAddressBuffer %12)  ; CreateHandleForLib(Resource)
  %4479 = call %dx.types.ResRet.i32 @dx.op.rawBufferLoad.i32(i32 139, %dx.types.Handle %4478, i32 %4477, i32 undef, i8 15, i32 4)  ; RawBufferLoad(srv,index,elementOffset,mask,alignment)
  %4480 = extractvalue %dx.types.ResRet.i32 %4479, 3
  %4481 = shl i32 %4480, 4
  %4482 = and i32 %4481, 32752
  %4483 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4482), !dx.precise !89  ; LegacyF16ToF32(value)
  %4484 = lshr i32 %4480, 7
  %4485 = and i32 %4484, 32752
  %4486 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4485), !dx.precise !89  ; LegacyF16ToF32(value)
  %4487 = fsub float 1.000000e+00, %4458
  %4488 = call float @dx.op.binary.f32(i32 35, float %4487, float 0x3E7FF19E20000000), !dx.precise !89  ; FMax(a,b)
  %4489 = bitcast float %4458 to i32
  %4490 = sitofp i32 %4489 to float
  %4491 = fadd float %4490, 0xC1CFBF8940000000
  %4492 = fmul float %4491, %4486
  %4493 = fadd float %4492, 0x41CFBF8940000000
  %4494 = fptosi float %4493 to i32
  %4495 = bitcast i32 %4494 to float
  %4496 = bitcast float %4488 to i32
  %4497 = sitofp i32 %4496 to float
  %4498 = fadd float %4497, 0xC1CFBF8940000000
  %4499 = fmul float %4486, %4498
  %4500 = fadd float %4499, 0x41CFBF8940000000
  %4501 = fptosi float %4500 to i32
  %4502 = bitcast i32 %4501 to float
  %4503 = fmul float %4483, %4495
  %4504 = fmul float %4483, %4502
  %4505 = fsub float %4488, %4503
  %4506 = fadd float %4488, %4504
  %4507 = call float @dx.op.unary.f32(i32 7, float %4505), !dx.precise !89  ; Saturate(value)
  %4508 = call float @dx.op.unary.f32(i32 7, float %4506), !dx.precise !89  ; Saturate(value)
  %4509 = fsub float %4473, %4507
  %4510 = fsub float %4508, %4507
  %4511 = bitcast float %4510 to i32
  %4512 = sub nsw i32 2129859010, %4511
  %4513 = bitcast i32 %4512 to float
  %4514 = fmul float %4509, %4513
  %4515 = call float @dx.op.unary.f32(i32 7, float %4514), !dx.precise !89  ; Saturate(value)
  br label %4516

; <label>:4516                                    ; preds = %4461, %4455
  %4517 = phi float [ %4515, %4461 ], [ %4458, %4455 ]
  %4518 = call %dx.types.Handle @dx.op.createHandleForLib.struct.ByteAddressBuffer(i32 160, %struct.ByteAddressBuffer %12)  ; CreateHandleForLib(Resource)
  %4519 = call %dx.types.ResRet.i32 @dx.op.rawBufferLoad.i32(i32 139, %dx.types.Handle %4518, i32 %4439, i32 undef, i8 15, i32 4)  ; RawBufferLoad(srv,index,elementOffset,mask,alignment)
  %4520 = extractvalue %dx.types.ResRet.i32 %4519, 0
  %4521 = and i32 %4520, 128
  %4522 = icmp eq i32 %4521, 0
  br i1 %4522, label %4545, label %4523

; <label>:4523                                    ; preds = %4516
  %4524 = and i32 %432, 32767
  %4525 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %4524)  ; Countbits(value)
  %4526 = shl i32 %4525, 2
  %4527 = add i32 %4526, %441
  %4528 = call %dx.types.ResRet.i32 @dx.op.rawBufferLoad.i32(i32 139, %dx.types.Handle %4518, i32 %4527, i32 undef, i8 1, i32 4)  ; RawBufferLoad(srv,index,elementOffset,mask,alignment)
  %4529 = extractvalue %dx.types.ResRet.i32 %4528, 0
  %4530 = getelementptr inbounds [0 x %"class.Texture2D<vector<float, 4> >"], [0 x %"class.Texture2D<vector<float, 4> >"]* @"\01?globalTexture2DHalfTable@@3PAV?$Texture2D@V?$vector@M$03@@@@A", i32 0, i32 %4529
  %4531 = load %"class.Texture2D<vector<float, 4> >", %"class.Texture2D<vector<float, 4> >"* %4530, align 4, !noalias !191
  %4532 = call %dx.types.Handle @"dx.op.createHandleForLib.class.Texture2D<vector<float, 4> >"(i32 160, %"class.Texture2D<vector<float, 4> >" %4531)  ; CreateHandleForLib(Resource)
  %4533 = call %dx.types.Handle @dx.op.createHandleForLib.struct.SamplerState(i32 160, %struct.SamplerState %45)  ; CreateHandleForLib(Resource)
  %4534 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4532, %dx.types.Handle %4533, float %2335, float %2336, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4535 = extractvalue %dx.types.ResRet.f32 %4534, 0
  %4536 = call %dx.types.Handle @dx.op.createHandleForLib.struct.ByteAddressBuffer(i32 160, %struct.ByteAddressBuffer %12)  ; CreateHandleForLib(Resource)
  %4537 = call %dx.types.ResRet.i32 @dx.op.rawBufferLoad.i32(i32 139, %dx.types.Handle %4536, i32 %4439, i32 undef, i8 15, i32 4)  ; RawBufferLoad(srv,index,elementOffset,mask,alignment)
  %4538 = extractvalue %dx.types.ResRet.i32 %4537, 0
  %4539 = and i32 %4538, 524288
  %4540 = icmp ne i32 %4539, 0
  %4541 = fcmp ogt float %4535, 0x3FE0101020000000
  %4542 = select i1 %4541, float 1.000000e+00, float 0.000000e+00
  %4543 = select i1 %4540, float %4542, float %4535
  %4544 = fmul float %4517, %4543
  br label %4545

; <label>:4545                                    ; preds = %4523, %4516
  %4546 = phi float [ %4544, %4523 ], [ %4517, %4516 ]
  %4547 = fcmp ult float %4546, 0x3F70101020000000
  br i1 %4547, label %5143, label %4548

; <label>:4548                                    ; preds = %4545
  %4549 = call %dx.types.Handle @dx.op.createHandleForLib.struct.ByteAddressBuffer(i32 160, %struct.ByteAddressBuffer %12)  ; CreateHandleForLib(Resource)
  %4550 = call %dx.types.ResRet.i32 @dx.op.rawBufferLoad.i32(i32 139, %dx.types.Handle %4549, i32 %4439, i32 undef, i8 15, i32 4)  ; RawBufferLoad(srv,index,elementOffset,mask,alignment)
  %4551 = extractvalue %dx.types.ResRet.i32 %4550, 0
  %4552 = and i32 %4551, 16
  %4553 = icmp eq i32 %4552, 0
  br i1 %4553, label %4797, label %4554

; <label>:4554                                    ; preds = %4548
  %4555 = and i32 %425, 127
  %4556 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %4555)  ; Countbits(value)
  %4557 = shl i32 %4556, 4
  %4558 = add i32 %4557, %439
  %4559 = call %dx.types.ResRet.i32 @dx.op.rawBufferLoad.i32(i32 139, %dx.types.Handle %4549, i32 %4558, i32 undef, i8 15, i32 4)  ; RawBufferLoad(srv,index,elementOffset,mask,alignment)
  %4560 = extractvalue %dx.types.ResRet.i32 %4559, 0
  %4561 = and i32 %432, 7
  %4562 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %4561)  ; Countbits(value)
  %4563 = shl i32 %4562, 2
  %4564 = add i32 %4563, %441
  %4565 = call %dx.types.ResRet.i32 @dx.op.rawBufferLoad.i32(i32 139, %dx.types.Handle %4549, i32 %4564, i32 undef, i8 1, i32 4)  ; RawBufferLoad(srv,index,elementOffset,mask,alignment)
  %4566 = extractvalue %dx.types.ResRet.i32 %4565, 0
  %4567 = getelementptr inbounds [0 x %"class.Texture2D<vector<float, 4> >"], [0 x %"class.Texture2D<vector<float, 4> >"]* @"\01?globalTexture2DHalfTable@@3PAV?$Texture2D@V?$vector@M$03@@@@A", i32 0, i32 %4566
  %4568 = load %"class.Texture2D<vector<float, 4> >", %"class.Texture2D<vector<float, 4> >"* %4567, align 4, !noalias !194
  %4569 = call %dx.types.Handle @"dx.op.createHandleForLib.class.Texture2D<vector<float, 4> >"(i32 160, %"class.Texture2D<vector<float, 4> >" %4568)  ; CreateHandleForLib(Resource)
  %4570 = call %dx.types.Handle @dx.op.createHandleForLib.struct.SamplerState(i32 160, %struct.SamplerState %44)  ; CreateHandleForLib(Resource)
  %4571 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4569, %dx.types.Handle %4570, float %2335, float %2336, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4572 = extractvalue %dx.types.ResRet.f32 %4571, 0
  %4573 = extractvalue %dx.types.ResRet.f32 %4571, 1
  %4574 = extractvalue %dx.types.ResRet.f32 %4571, 2
  %4575 = extractvalue %dx.types.ResRet.f32 %4571, 3
  %4576 = and i32 %4560, 255
  %4577 = uitofp i32 %4576 to float
  %4578 = lshr i32 %4560, 8
  %4579 = and i32 %4578, 255
  %4580 = uitofp i32 %4579 to float
  %4581 = fmul float %4577, %4575
  %4582 = fadd float %4580, %4581
  %4583 = fmul float %4582, 0x3F70101000000000
  %4584 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 241)  ; CBufferLoadLegacy(handle,regIndex)
  %4585 = extractvalue %dx.types.CBufRet.f32 %4584, 0
  %4586 = bitcast float %4585 to i32
  %4587 = lshr i32 %4586, 16
  %4588 = and i32 %4587, 255
  %4589 = uitofp i32 %4588 to float
  %4590 = fptoui float %4589 to i32
  %4591 = icmp eq i32 %4590, 8
  br i1 %4591, label %4592, label %4610

; <label>:4592                                    ; preds = %4554
  %4593 = fmul float %4572, 0x3FD322D0E0000000
  %4594 = fmul float %4573, 0x3FE2C8B440000000
  %4595 = fadd float %4593, %4594
  %4596 = fmul float %4574, 0x3FBD2F1AA0000000
  %4597 = fadd float %4596, %4595
  %4598 = fsub float %4574, %4597
  %4599 = fmul float %4598, 0x3FDF7CEDA0000000
  %4600 = fsub float %4572, %4597
  %4601 = fmul float %4600, 0x3FEC106240000000
  %4602 = fmul float %4601, 0x3FF23D70A0000000
  %4603 = fadd float %4597, %4602
  %4604 = fmul float %4599, 0x3FD947AE20000000
  %4605 = fsub float %4597, %4604
  %4606 = fmul float %4601, 0x3FE2978D40000000
  %4607 = fsub float %4605, %4606
  %4608 = fmul float %4599, 0x4000418940000000
  %4609 = fadd float %4597, %4608
  br label %4610

; <label>:4610                                    ; preds = %4592, %4554
  %4611 = phi float [ %4603, %4592 ], [ %4572, %4554 ]
  %4612 = phi float [ %4607, %4592 ], [ %4573, %4554 ]
  %4613 = phi float [ %4609, %4592 ], [ %4574, %4554 ]
  %4614 = call %dx.types.Handle @dx.op.createHandleForLib.struct.ByteAddressBuffer(i32 160, %struct.ByteAddressBuffer %12)  ; CreateHandleForLib(Resource)
  %4615 = call %dx.types.ResRet.i32 @dx.op.rawBufferLoad.i32(i32 139, %dx.types.Handle %4614, i32 %4439, i32 undef, i8 15, i32 4)  ; RawBufferLoad(srv,index,elementOffset,mask,alignment)
  %4616 = extractvalue %dx.types.ResRet.i32 %4615, 0
  %4617 = and i32 %4616, 512
  %4618 = icmp eq i32 %4617, 0
  br i1 %4618, label %4634, label %4619

; <label>:4619                                    ; preds = %4610
  %4620 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %432)  ; Countbits(value)
  %4621 = and i32 %433, 1
  %4622 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %4621)  ; Countbits(value)
  %4623 = add i32 %4622, %4620
  %4624 = shl i32 %4623, 2
  %4625 = add i32 %4624, %441
  %4626 = call %dx.types.ResRet.i32 @dx.op.rawBufferLoad.i32(i32 139, %dx.types.Handle %4614, i32 %4625, i32 undef, i8 1, i32 4)  ; RawBufferLoad(srv,index,elementOffset,mask,alignment)
  %4627 = extractvalue %dx.types.ResRet.i32 %4626, 0
  %4628 = getelementptr inbounds [0 x %"class.Texture2D<vector<float, 4> >"], [0 x %"class.Texture2D<vector<float, 4> >"]* @"\01?globalTexture2DHalfTable@@3PAV?$Texture2D@V?$vector@M$03@@@@A", i32 0, i32 %4627
  %4629 = load %"class.Texture2D<vector<float, 4> >", %"class.Texture2D<vector<float, 4> >"* %4628, align 4, !noalias !200
  %4630 = call %dx.types.Handle @"dx.op.createHandleForLib.class.Texture2D<vector<float, 4> >"(i32 160, %"class.Texture2D<vector<float, 4> >" %4629)  ; CreateHandleForLib(Resource)
  %4631 = call %dx.types.Handle @dx.op.createHandleForLib.struct.SamplerState(i32 160, %struct.SamplerState %45)  ; CreateHandleForLib(Resource)
  %4632 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4630, %dx.types.Handle %4631, float %2335, float %2336, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4633 = extractvalue %dx.types.ResRet.f32 %4632, 0
  br label %4634

; <label>:4634                                    ; preds = %4619, %4610
  %4635 = phi float [ %4633, %4619 ], [ 1.000000e+00, %4610 ]
  %4636 = call %dx.types.Handle @dx.op.createHandleForLib.struct.ByteAddressBuffer(i32 160, %struct.ByteAddressBuffer %12)  ; CreateHandleForLib(Resource)
  %4637 = call %dx.types.ResRet.i32 @dx.op.rawBufferLoad.i32(i32 139, %dx.types.Handle %4636, i32 %4439, i32 undef, i8 15, i32 4)  ; RawBufferLoad(srv,index,elementOffset,mask,alignment)
  %4638 = extractvalue %dx.types.ResRet.i32 %4637, 0
  %4639 = and i32 %4638, 33554432
  %4640 = icmp eq i32 %4639, 0
  br i1 %4640, label %4741, label %4641

; <label>:4641                                    ; preds = %4634
  %4642 = call %dx.types.ResRet.i32 @dx.op.rawBufferLoad.i32(i32 139, %dx.types.Handle %4636, i32 %2494, i32 undef, i8 15, i32 4)  ; RawBufferLoad(srv,index,elementOffset,mask,alignment)
  %4643 = extractvalue %dx.types.ResRet.i32 %4642, 2
  %4644 = and i32 %4643, 65535
  %4645 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4644), !dx.precise !89  ; LegacyF16ToF32(value)
  %4646 = lshr i32 %4643, 16
  %4647 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4646), !dx.precise !89  ; LegacyF16ToF32(value)
  %4648 = extractvalue %dx.types.ResRet.i32 %4642, 3
  %4649 = and i32 %4648, 65535
  %4650 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4649), !dx.precise !89  ; LegacyF16ToF32(value)
  %4651 = extractvalue %dx.types.ResRet.i32 %4642, 0
  %4652 = lshr i32 %4651, 24
  %4653 = uitofp i32 %4652 to float
  %4654 = fdiv float %4653, 2.550000e+02
  %4655 = and i32 %4651, 255
  %4656 = uitofp i32 %4655 to float
  %4657 = fdiv float %4656, 2.550000e+02
  %4658 = lshr i32 %4651, 8
  %4659 = and i32 %4658, 255
  %4660 = uitofp i32 %4659 to float
  %4661 = fdiv float %4660, 2.550000e+02
  %4662 = lshr i32 %4651, 16
  %4663 = and i32 %4662, 255
  %4664 = uitofp i32 %4663 to float
  %4665 = fdiv float %4664, 2.550000e+02
  %4666 = extractvalue %dx.types.ResRet.i32 %4642, 1
  %4667 = lshr i32 %4666, 24
  %4668 = uitofp i32 %4667 to float
  %4669 = fdiv float %4668, 2.550000e+02
  %4670 = and i32 %4666, 255
  %4671 = uitofp i32 %4670 to float
  %4672 = fdiv float %4671, 2.550000e+02
  %4673 = lshr i32 %4666, 8
  %4674 = and i32 %4673, 255
  %4675 = uitofp i32 %4674 to float
  %4676 = fdiv float %4675, 2.550000e+02
  %4677 = lshr i32 %4666, 16
  %4678 = and i32 %4677, 255
  %4679 = uitofp i32 %4678 to float
  %4680 = fdiv float %4679, 2.550000e+02
  %4681 = fmul float %4611, 5.000000e-01
  %4682 = bitcast float %4611 to i32
  %4683 = ashr i32 %4682, 1
  %4684 = sub nsw i32 1597463174, %4683
  %4685 = bitcast i32 %4684 to float
  %4686 = fmul float %4685, %4685
  %4687 = fmul float %4681, %4686
  %4688 = fsub float 1.500000e+00, %4687
  %4689 = fmul float %4685, %4688
  %4690 = fmul float %4611, %4689
  %4691 = fmul float %4612, 5.000000e-01
  %4692 = bitcast float %4612 to i32
  %4693 = ashr i32 %4692, 1
  %4694 = sub nsw i32 1597463174, %4693
  %4695 = bitcast i32 %4694 to float
  %4696 = fmul float %4695, %4695
  %4697 = fmul float %4691, %4696
  %4698 = fsub float 1.500000e+00, %4697
  %4699 = fmul float %4695, %4698
  %4700 = fmul float %4612, %4699
  %4701 = fmul float %4613, 5.000000e-01
  %4702 = bitcast float %4613 to i32
  %4703 = ashr i32 %4702, 1
  %4704 = sub nsw i32 1597463174, %4703
  %4705 = bitcast i32 %4704 to float
  %4706 = fmul float %4705, %4705
  %4707 = fmul float %4701, %4706
  %4708 = fsub float 1.500000e+00, %4707
  %4709 = fmul float %4705, %4708
  %4710 = fmul float %4613, %4709
  %4711 = fsub float %4690, %4672
  %4712 = fsub float %4700, %4676
  %4713 = fsub float %4710, %4680
  %4714 = fmul float %4645, %4711
  %4715 = fmul float %4647, %4712
  %4716 = fmul float %4650, %4713
  %4717 = fadd float %4657, %4714
  %4718 = fadd float %4661, %4715
  %4719 = fadd float %4665, %4716
  %4720 = call float @dx.op.unary.f32(i32 7, float %4717), !dx.precise !89  ; Saturate(value)
  %4721 = call float @dx.op.unary.f32(i32 7, float %4718), !dx.precise !89  ; Saturate(value)
  %4722 = call float @dx.op.unary.f32(i32 7, float %4719), !dx.precise !89  ; Saturate(value)
  %4723 = fmul float %4720, %4720
  %4724 = fmul float %4721, %4721
  %4725 = fmul float %4722, %4722
  %4726 = fsub float %4723, %4611
  %4727 = fsub float %4724, %4612
  %4728 = fsub float %4725, %4613
  %4729 = fmul float %4635, %4726
  %4730 = fmul float %4635, %4727
  %4731 = fmul float %4635, %4728
  %4732 = fadd float %4611, %4729
  %4733 = fadd float %4612, %4730
  %4734 = fadd float %4613, %4731
  %4735 = fsub float %4583, %4669
  %4736 = fadd float %4654, %4735
  %4737 = call float @dx.op.unary.f32(i32 7, float %4736), !dx.precise !89  ; Saturate(value)
  %4738 = fsub float %4737, %4583
  %4739 = fmul float %4635, %4738
  %4740 = fadd float %4583, %4739
  br label %4797

; <label>:4741                                    ; preds = %4634
  %4742 = and i32 %4638, 134217728
  %4743 = icmp eq i32 %4742, 0
  br i1 %4743, label %4781, label %4744

; <label>:4744                                    ; preds = %4741
  %4745 = call float @dx.op.unary.f32(i32 24, float %2499), !dx.precise !89  ; Sqrt(value)
  %4746 = call float @dx.op.unary.f32(i32 24, float %2503), !dx.precise !89  ; Sqrt(value)
  %4747 = call float @dx.op.unary.f32(i32 24, float %2507), !dx.precise !89  ; Sqrt(value)
  %4748 = fadd float %4745, -5.000000e-01
  %4749 = fadd float %4746, -5.000000e-01
  %4750 = fadd float %4747, -5.000000e-01
  %4751 = fmul float %4635, %4748
  %4752 = fmul float %4635, %4749
  %4753 = fmul float %4635, %4750
  %4754 = fadd float %4751, 5.000000e-01
  %4755 = fadd float %4752, 5.000000e-01
  %4756 = fadd float %4753, 5.000000e-01
  %4757 = call float @dx.op.unary.f32(i32 24, float %4611), !dx.precise !89  ; Sqrt(value)
  %4758 = call float @dx.op.unary.f32(i32 24, float %4612), !dx.precise !89  ; Sqrt(value)
  %4759 = call float @dx.op.unary.f32(i32 24, float %4613), !dx.precise !89  ; Sqrt(value)
  %4760 = fmul float %4754, 2.000000e+00
  %4761 = fsub float 1.000000e+00, %4760
  %4762 = fmul float %4757, %4761
  %4763 = fmul float %4757, %4762
  %4764 = fmul float %4757, %4760
  %4765 = fadd float %4764, %4763
  %4766 = fmul float %4755, 2.000000e+00
  %4767 = fsub float 1.000000e+00, %4766
  %4768 = fmul float %4758, %4767
  %4769 = fmul float %4758, %4768
  %4770 = fmul float %4758, %4766
  %4771 = fadd float %4770, %4769
  %4772 = fmul float %4756, 2.000000e+00
  %4773 = fsub float 1.000000e+00, %4772
  %4774 = fmul float %4759, %4773
  %4775 = fmul float %4759, %4774
  %4776 = fmul float %4759, %4772
  %4777 = fadd float %4776, %4775
  %4778 = fmul float %4765, %4765
  %4779 = fmul float %4771, %4771
  %4780 = fmul float %4777, %4777
  br label %4797

; <label>:4781                                    ; preds = %4741
  %4782 = fmul float %2499, %2499
  %4783 = fmul float %2503, %2503
  %4784 = fmul float %2507, %2507
  %4785 = fadd float %4782, -1.000000e+00
  %4786 = fadd float %4783, -1.000000e+00
  %4787 = fadd float %4784, -1.000000e+00
  %4788 = fmul float %4785, %4635
  %4789 = fmul float %4786, %4635
  %4790 = fmul float %4787, %4635
  %4791 = fadd float %4788, 1.000000e+00
  %4792 = fadd float %4789, 1.000000e+00
  %4793 = fadd float %4790, 1.000000e+00
  %4794 = fmul float %4611, %4791
  %4795 = fmul float %4612, %4792
  %4796 = fmul float %4613, %4793
  br label %4797

; <label>:4797                                    ; preds = %4781, %4744, %4641, %4548
  %4798 = phi float [ %4740, %4641 ], [ %4583, %4744 ], [ %4583, %4781 ], [ 0x3FA23C0BE0000000, %4548 ]
  %4799 = phi float [ %4732, %4641 ], [ %4778, %4744 ], [ %4794, %4781 ], [ 1.000000e+00, %4548 ]
  %4800 = phi float [ %4733, %4641 ], [ %4779, %4744 ], [ %4795, %4781 ], [ 1.000000e+00, %4548 ]
  %4801 = phi float [ %4734, %4641 ], [ %4780, %4744 ], [ %4796, %4781 ], [ 1.000000e+00, %4548 ]
  %4802 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %43, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %4803 = extractvalue %dx.types.CBufRet.i32 %4802, 1
  %4804 = and i32 %4803, 1
  %4805 = icmp ne i32 %4804, 0
  %4806 = call %dx.types.Handle @dx.op.createHandleForLib.struct.ByteAddressBuffer(i32 160, %struct.ByteAddressBuffer %12)  ; CreateHandleForLib(Resource)
  %4807 = call %dx.types.ResRet.i32 @dx.op.rawBufferLoad.i32(i32 139, %dx.types.Handle %4806, i32 %1476, i32 undef, i8 15, i32 4)  ; RawBufferLoad(srv,index,elementOffset,mask,alignment)
  %4808 = extractvalue %dx.types.ResRet.i32 %4807, 3
  %4809 = and i32 %4808, 32
  %4810 = icmp ne i32 %4809, 0
  %4811 = and i1 %4805, %4810
  %4812 = select i1 %4811, float 1.000000e+00, float %4799
  %4813 = select i1 %4811, float 0x3FD3333340000000, float %4800
  %4814 = select i1 %4811, float 0x3FD3333340000000, float %4801
  %4815 = call %dx.types.ResRet.i32 @dx.op.rawBufferLoad.i32(i32 139, %dx.types.Handle %4806, i32 %4439, i32 undef, i8 15, i32 4)  ; RawBufferLoad(srv,index,elementOffset,mask,alignment)
  %4816 = extractvalue %dx.types.ResRet.i32 %4815, 0
  %4817 = and i32 %4816, 32
  %4818 = icmp eq i32 %4817, 0
  br i1 %4818, label %4902, label %4819

; <label>:4819                                    ; preds = %4797
  %4820 = and i32 %425, 127
  %4821 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %4820)  ; Countbits(value)
  %4822 = shl i32 %4821, 4
  %4823 = add i32 %4822, %439
  %4824 = call %dx.types.ResRet.i32 @dx.op.rawBufferLoad.i32(i32 139, %dx.types.Handle %4806, i32 %4823, i32 undef, i8 15, i32 4)  ; RawBufferLoad(srv,index,elementOffset,mask,alignment)
  %4825 = extractvalue %dx.types.ResRet.i32 %4824, 1
  %4826 = and i32 %432, 127
  %4827 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %4826)  ; Countbits(value)
  %4828 = shl i32 %4827, 2
  %4829 = add i32 %4828, %441
  %4830 = call %dx.types.ResRet.i32 @dx.op.rawBufferLoad.i32(i32 139, %dx.types.Handle %4806, i32 %4829, i32 undef, i8 1, i32 4)  ; RawBufferLoad(srv,index,elementOffset,mask,alignment)
  %4831 = extractvalue %dx.types.ResRet.i32 %4830, 0
  %4832 = getelementptr inbounds [0 x %"class.Texture2D<vector<float, 4> >"], [0 x %"class.Texture2D<vector<float, 4> >"]* @"\01?globalTexture2DHalfTable@@3PAV?$Texture2D@V?$vector@M$03@@@@A", i32 0, i32 %4831
  %4833 = load %"class.Texture2D<vector<float, 4> >", %"class.Texture2D<vector<float, 4> >"* %4832, align 4, !noalias !203
  %4834 = call %dx.types.Handle @"dx.op.createHandleForLib.class.Texture2D<vector<float, 4> >"(i32 160, %"class.Texture2D<vector<float, 4> >" %4833)  ; CreateHandleForLib(Resource)
  %4835 = call %dx.types.Handle @dx.op.createHandleForLib.struct.SamplerState(i32 160, %struct.SamplerState %44)  ; CreateHandleForLib(Resource)
  %4836 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4834, %dx.types.Handle %4835, float %2335, float %2336, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4837 = extractvalue %dx.types.ResRet.f32 %4836, 0
  %4838 = extractvalue %dx.types.ResRet.f32 %4836, 1
  %4839 = extractvalue %dx.types.ResRet.f32 %4836, 2
  %4840 = extractvalue %dx.types.ResRet.f32 %4836, 3
  %4841 = and i32 %4825, 255
  %4842 = uitofp i32 %4841 to float
  %4843 = lshr i32 %4825, 8
  %4844 = and i32 %4843, 255
  %4845 = uitofp i32 %4844 to float
  %4846 = lshr i32 %4825, 16
  %4847 = and i32 %4846, 255
  %4848 = uitofp i32 %4847 to float
  %4849 = fmul float %4848, 0x3F70101000000000
  %4850 = fmul float %4842, %4837
  %4851 = fadd float %4845, %4850
  %4852 = fmul float %4851, 0x3F70101000000000
  %4853 = fadd float %4838, -5.000000e-01
  %4854 = fadd float %4840, -5.000000e-01
  %4855 = fmul float %4849, %4853
  %4856 = fmul float %4849, %4854
  %4857 = fadd float %4855, 5.000000e-01
  %4858 = fadd float %4856, 5.000000e-01
  %4859 = fmul float %4857, 2.000000e+00
  %4860 = fadd float %4859, -1.000000e+00
  %4861 = fmul float %4858, 2.000000e+00
  %4862 = fadd float %4861, -1.000000e+00
  %4863 = fadd float %4860, %4862
  %4864 = fmul float %4863, 5.000000e-01
  %4865 = fsub float %4860, %4862
  %4866 = fmul float %4865, 5.000000e-01
  %4867 = call float @dx.op.unary.f32(i32 6, float %4864), !dx.precise !89  ; FAbs(value)
  %4868 = fsub float 1.000000e+00, %4867
  %4869 = call float @dx.op.unary.f32(i32 6, float %4866), !dx.precise !89  ; FAbs(value)
  %4870 = fsub float %4868, %4869
  %4871 = call float @dx.op.dot3.f32(i32 55, float %4864, float %4866, float %4870, float %4864, float %4866, float %4870), !dx.precise !89  ; Dot3(ax,ay,az,bx,by,bz)
  %4872 = call float @dx.op.unary.f32(i32 25, float %4871), !dx.precise !89  ; Rsqrt(value)
  %4873 = fmul float %4872, %4864
  %4874 = fmul float %4872, %4866
  %4875 = call %dx.types.Handle @dx.op.createHandleForLib.struct.ByteAddressBuffer(i32 160, %struct.ByteAddressBuffer %12)  ; CreateHandleForLib(Resource)
  %4876 = call %dx.types.ResRet.i32 @dx.op.rawBufferLoad.i32(i32 139, %dx.types.Handle %4875, i32 %4439, i32 undef, i8 15, i32 4)  ; RawBufferLoad(srv,index,elementOffset,mask,alignment)
  %4877 = extractvalue %dx.types.ResRet.i32 %4876, 0
  %4878 = and i32 %4877, 67108864
  %4879 = icmp eq i32 %4878, 0
  br i1 %4879, label %4898, label %4880

; <label>:4880                                    ; preds = %4819
  %4881 = and i32 %425, 524287
  %4882 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %4881)  ; Countbits(value)
  %4883 = shl i32 %4882, 4
  %4884 = add i32 %4883, %439
  %4885 = call %dx.types.ResRet.i32 @dx.op.rawBufferLoad.i32(i32 139, %dx.types.Handle %4875, i32 %4884, i32 undef, i8 15, i32 4)  ; RawBufferLoad(srv,index,elementOffset,mask,alignment)
  %4886 = extractvalue %dx.types.ResRet.i32 %4885, 0
  %4887 = and i32 %4886, 65535
  %4888 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4887), !dx.precise !89  ; LegacyF16ToF32(value)
  %4889 = extractvalue %dx.types.ResRet.i32 %4885, 1
  %4890 = and i32 %4889, 65535
  %4891 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4890), !dx.precise !89  ; LegacyF16ToF32(value)
  %4892 = lshr i32 %4886, 16
  %4893 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4892), !dx.precise !89  ; LegacyF16ToF32(value)
  %4894 = fsub float %4852, %4893
  %4895 = fmul float %4888, %4894
  %4896 = fadd float %4891, %4895
  %4897 = call float @dx.op.unary.f32(i32 7, float %4896), !dx.precise !89  ; Saturate(value)
  br label %4898

; <label>:4898                                    ; preds = %4880, %4819
  %4899 = phi float [ %4897, %4880 ], [ %4852, %4819 ]
  %4900 = call float @dx.op.dot2.f32(i32 54, float %4873, float %4874, float %2361, float %2362), !dx.precise !89  ; Dot2(ax,ay,bx,by)
  %4901 = call float @dx.op.dot2.f32(i32 54, float %4873, float %4874, float %2363, float %2364), !dx.precise !89  ; Dot2(ax,ay,bx,by)
  br label %4902

; <label>:4902                                    ; preds = %4898, %4797
  %4903 = phi float [ %4899, %4898 ], [ 0x3FD6666660000000, %4797 ]
  %4904 = phi float [ %4900, %4898 ], [ 0.000000e+00, %4797 ]
  %4905 = phi float [ %4901, %4898 ], [ 0.000000e+00, %4797 ]
  %4906 = phi float [ %4839, %4898 ], [ 1.000000e+00, %4797 ]
  %4907 = call %dx.types.Handle @dx.op.createHandleForLib.struct.ByteAddressBuffer(i32 160, %struct.ByteAddressBuffer %12)  ; CreateHandleForLib(Resource)
  %4908 = call %dx.types.ResRet.i32 @dx.op.rawBufferLoad.i32(i32 139, %dx.types.Handle %4907, i32 %4439, i32 undef, i8 15, i32 4)  ; RawBufferLoad(srv,index,elementOffset,mask,alignment)
  %4909 = extractvalue %dx.types.ResRet.i32 %4908, 0
  %4910 = and i32 %4909, 64
  %4911 = icmp eq i32 %4910, 0
  br i1 %4911, label %4941, label %4912

; <label>:4912                                    ; preds = %4902
  %4913 = and i32 %432, 2047
  %4914 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %4913)  ; Countbits(value)
  %4915 = shl i32 %4914, 2
  %4916 = add i32 %4915, %441
  %4917 = call %dx.types.ResRet.i32 @dx.op.rawBufferLoad.i32(i32 139, %dx.types.Handle %4907, i32 %4916, i32 undef, i8 1, i32 4)  ; RawBufferLoad(srv,index,elementOffset,mask,alignment)
  %4918 = extractvalue %dx.types.ResRet.i32 %4917, 0
  %4919 = getelementptr inbounds [0 x %"class.Texture2D<vector<float, 4> >"], [0 x %"class.Texture2D<vector<float, 4> >"]* @"\01?globalTexture2DHalfTable@@3PAV?$Texture2D@V?$vector@M$03@@@@A", i32 0, i32 %4918
  %4920 = load %"class.Texture2D<vector<float, 4> >", %"class.Texture2D<vector<float, 4> >"* %4919, align 4, !noalias !210
  %4921 = call %dx.types.Handle @dx.op.createHandleForLib.struct.ByteAddressBuffer(i32 160, %struct.ByteAddressBuffer %12)  ; CreateHandleForLib(Resource)
  %4922 = call %dx.types.ResRet.i32 @dx.op.rawBufferLoad.i32(i32 139, %dx.types.Handle %4921, i32 %4439, i32 undef, i8 15, i32 4)  ; RawBufferLoad(srv,index,elementOffset,mask,alignment)
  %4923 = extractvalue %dx.types.ResRet.i32 %4922, 0
  %4924 = and i32 %4923, 131072
  %4925 = icmp eq i32 %4924, 0
  %4926 = call %dx.types.Handle @"dx.op.createHandleForLib.class.Texture2D<vector<float, 4> >"(i32 160, %"class.Texture2D<vector<float, 4> >" %4920)  ; CreateHandleForLib(Resource)
  %4927 = call %dx.types.Handle @dx.op.createHandleForLib.struct.SamplerState(i32 160, %struct.SamplerState %44)  ; CreateHandleForLib(Resource)
  %4928 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4926, %dx.types.Handle %4927, float %2335, float %2336, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4929 = extractvalue %dx.types.ResRet.f32 %4928, 0
  %4930 = extractvalue %dx.types.ResRet.f32 %4928, 1
  %4931 = extractvalue %dx.types.ResRet.f32 %4928, 2
  %4932 = fmul fast float %4929, %2484
  %4933 = fmul fast float %4930, %2487
  %4934 = fmul fast float %4931, %2490
  br i1 %4925, label %4941, label %4935

; <label>:4935                                    ; preds = %4912
  %4936 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %4937 = extractvalue %dx.types.CBufRet.f32 %4936, 0
  %4938 = fmul fast float %4937, %4932
  %4939 = fmul fast float %4937, %4933
  %4940 = fmul fast float %4937, %4934
  br label %4941

; <label>:4941                                    ; preds = %4935, %4912, %4902
  %4942 = phi float [ %4938, %4935 ], [ %4932, %4912 ], [ 0.000000e+00, %4902 ]
  %4943 = phi float [ %4939, %4935 ], [ %4933, %4912 ], [ 0.000000e+00, %4902 ]
  %4944 = phi float [ %4940, %4935 ], [ %4934, %4912 ], [ 0.000000e+00, %4902 ]
  %4945 = call %dx.types.Handle @dx.op.createHandleForLib.struct.ByteAddressBuffer(i32 160, %struct.ByteAddressBuffer %12)  ; CreateHandleForLib(Resource)
  %4946 = call %dx.types.ResRet.i32 @dx.op.rawBufferLoad.i32(i32 139, %dx.types.Handle %4945, i32 %4439, i32 undef, i8 15, i32 4)  ; RawBufferLoad(srv,index,elementOffset,mask,alignment)
  %4947 = extractvalue %dx.types.ResRet.i32 %4946, 0
  br i1 %4435, label %4948, label %4959

; <label>:4948                                    ; preds = %4941
  %4949 = fsub float 1.000000e+00, %4546
  %4950 = fmul float %4421, %4949
  %4951 = fmul float %4422, %4949
  %4952 = fmul float %4423, %4949
  %4953 = fmul fast float %4949, %4427
  %4954 = fmul fast float %4949, %4428
  %4955 = fmul fast float %4949, %4429
  %4956 = fmul float %4424, %4949
  %4957 = fmul float %4425, %4949
  %4958 = fmul float %4426, %4949
  br label %4959

; <label>:4959                                    ; preds = %4948, %4941
  %4960 = phi float [ %4421, %4941 ], [ %4950, %4948 ]
  %4961 = phi float [ %4422, %4941 ], [ %4951, %4948 ]
  %4962 = phi float [ %4423, %4941 ], [ %4952, %4948 ]
  %4963 = phi float [ %4424, %4941 ], [ %4956, %4948 ]
  %4964 = phi float [ %4425, %4941 ], [ %4957, %4948 ]
  %4965 = phi float [ %4426, %4941 ], [ %4958, %4948 ]
  %4966 = phi float [ %4427, %4941 ], [ %4953, %4948 ]
  %4967 = phi float [ %4428, %4941 ], [ %4954, %4948 ]
  %4968 = phi float [ %4429, %4941 ], [ %4955, %4948 ]
  %4969 = and i32 %4947, 3
  %4970 = icmp eq i32 %4969, 3
  br i1 %4970, label %5058, label %4971

; <label>:4971                                    ; preds = %4959
  %4972 = and i32 %4947, 16
  %4973 = icmp ne i32 %4972, 0
  %4974 = select i1 %4973, float %4546, float 0.000000e+00
  %4975 = icmp eq i32 %4969, 0
  br i1 %4975, label %4976, label %5010

; <label>:4976                                    ; preds = %4971
  %4977 = and i32 %4947, 64
  %4978 = icmp ne i32 %4977, 0
  %4979 = select i1 %4978, float %4546, float 0.000000e+00
  %4980 = fsub float %4812, %4960
  %4981 = fsub float %4813, %4961
  %4982 = fsub float %4814, %4962
  %4983 = fmul float %4980, %4974
  %4984 = fmul float %4981, %4974
  %4985 = fmul float %4982, %4974
  %4986 = fadd float %4960, %4983
  %4987 = fadd float %4961, %4984
  %4988 = fadd float %4962, %4985
  %4989 = fsub float %4798, %4430
  %4990 = fmul float %4989, %4974
  %4991 = fadd float %4430, %4990
  %4992 = fsub fast float %4942, %4966
  %4993 = fsub fast float %4943, %4967
  %4994 = fsub fast float %4944, %4968
  %4995 = fmul fast float %4979, %4992
  %4996 = fmul fast float %4979, %4993
  %4997 = fmul fast float %4979, %4994
  %4998 = fadd fast float %4995, %4966
  %4999 = fadd fast float %4996, %4967
  %5000 = fadd fast float %4997, %4968
  %5001 = fsub float 0.000000e+00, %4963
  %5002 = fsub float 0.000000e+00, %4964
  %5003 = fsub float 0.000000e+00, %4965
  %5004 = fmul float %5001, 0.000000e+00
  %5005 = fmul float %5002, 0.000000e+00
  %5006 = fmul float %5003, 0.000000e+00
  %5007 = fadd float %4963, %5004
  %5008 = fadd float %4964, %5005
  %5009 = fadd float %4965, %5006
  br label %5058

; <label>:5010                                    ; preds = %4971
  %5011 = icmp eq i32 %4969, 1
  br i1 %5011, label %5012, label %5025

; <label>:5012                                    ; preds = %5010
  %5013 = fadd float %4812, -1.000000e+00
  %5014 = fadd float %4813, -1.000000e+00
  %5015 = fadd float %4814, -1.000000e+00
  %5016 = fmul float %5013, %4974
  %5017 = fmul float %5014, %4974
  %5018 = fmul float %5015, %4974
  %5019 = fadd float %5016, 1.000000e+00
  %5020 = fadd float %5017, 1.000000e+00
  %5021 = fadd float %5018, 1.000000e+00
  %5022 = fmul float %4960, %5019
  %5023 = fmul float %4961, %5020
  %5024 = fmul float %4962, %5021
  br label %5058

; <label>:5025                                    ; preds = %5010
  %5026 = icmp eq i32 %4969, 2
  br i1 %5026, label %5027, label %5058

; <label>:5027                                    ; preds = %5025
  %5028 = call float @dx.op.unary.f32(i32 24, float %4812), !dx.precise !89  ; Sqrt(value)
  %5029 = call float @dx.op.unary.f32(i32 24, float %4813), !dx.precise !89  ; Sqrt(value)
  %5030 = call float @dx.op.unary.f32(i32 24, float %4814), !dx.precise !89  ; Sqrt(value)
  %5031 = fadd float %5028, -5.000000e-01
  %5032 = fadd float %5029, -5.000000e-01
  %5033 = fadd float %5030, -5.000000e-01
  %5034 = fmul float %4974, %5031
  %5035 = fmul float %4974, %5032
  %5036 = fmul float %4974, %5033
  %5037 = fadd float %5034, 5.000000e-01
  %5038 = fadd float %5035, 5.000000e-01
  %5039 = fadd float %5036, 5.000000e-01
  %5040 = fmul float %5037, 2.000000e+00
  %5041 = fsub float 1.000000e+00, %5040
  %5042 = fmul float %4960, %5041
  %5043 = fmul float %4960, %5042
  %5044 = fmul float %4960, %5040
  %5045 = fadd float %5044, %5043
  %5046 = fmul float %5038, 2.000000e+00
  %5047 = fsub float 1.000000e+00, %5046
  %5048 = fmul float %4961, %5047
  %5049 = fmul float %4961, %5048
  %5050 = fmul float %4961, %5046
  %5051 = fadd float %5050, %5049
  %5052 = fmul float %5039, 2.000000e+00
  %5053 = fsub float 1.000000e+00, %5052
  %5054 = fmul float %4962, %5053
  %5055 = fmul float %4962, %5054
  %5056 = fmul float %4962, %5052
  %5057 = fadd float %5056, %5055
  br label %5058

; <label>:5058                                    ; preds = %5027, %5025, %5012, %4976, %4959
  %5059 = phi float [ %4960, %4959 ], [ %4986, %4976 ], [ %5022, %5012 ], [ %4960, %5025 ], [ %5045, %5027 ]
  %5060 = phi float [ %4961, %4959 ], [ %4987, %4976 ], [ %5023, %5012 ], [ %4961, %5025 ], [ %5051, %5027 ]
  %5061 = phi float [ %4962, %4959 ], [ %4988, %4976 ], [ %5024, %5012 ], [ %4962, %5025 ], [ %5057, %5027 ]
  %5062 = phi float [ %4963, %4959 ], [ %5007, %4976 ], [ %4963, %5012 ], [ %4963, %5025 ], [ %4963, %5027 ]
  %5063 = phi float [ %4964, %4959 ], [ %5008, %4976 ], [ %4964, %5012 ], [ %4964, %5025 ], [ %4964, %5027 ]
  %5064 = phi float [ %4965, %4959 ], [ %5009, %4976 ], [ %4965, %5012 ], [ %4965, %5025 ], [ %4965, %5027 ]
  %5065 = phi float [ %4966, %4959 ], [ %4998, %4976 ], [ %4966, %5012 ], [ %4966, %5025 ], [ %4966, %5027 ]
  %5066 = phi float [ %4967, %4959 ], [ %4999, %4976 ], [ %4967, %5012 ], [ %4967, %5025 ], [ %4967, %5027 ]
  %5067 = phi float [ %4968, %4959 ], [ %5000, %4976 ], [ %4968, %5012 ], [ %4968, %5025 ], [ %4968, %5027 ]
  %5068 = phi float [ %4430, %4959 ], [ %4991, %4976 ], [ %4430, %5012 ], [ %4430, %5025 ], [ %4430, %5027 ]
  %5069 = and i32 %4947, 12
  %5070 = icmp eq i32 %5069, 12
  br i1 %5070, label %5143, label %5071

; <label>:5071                                    ; preds = %5058
  %5072 = and i32 %4947, 2097184
  %5073 = icmp eq i32 %5072, 2097184
  %5074 = select i1 %5073, float %4546, float 0.000000e+00
  %5075 = and i32 %4947, 4194336
  %5076 = icmp eq i32 %5075, 4194336
  %5077 = select i1 %5076, float %4546, float 0.000000e+00
  %5078 = and i32 %4947, 8388640
  %5079 = icmp eq i32 %5078, 8388640
  %5080 = select i1 %5079, float %4546, float 0.000000e+00
  %5081 = icmp eq i32 %5069, 0
  br i1 %5081, label %5082, label %5095

; <label>:5082                                    ; preds = %5071
  %5083 = fsub float %4904, %4419
  %5084 = fsub float %4905, %4420
  %5085 = fmul float %5083, %5074
  %5086 = fmul float %5084, %5074
  %5087 = fadd float %4419, %5085
  %5088 = fadd float %4420, %5086
  %5089 = fsub float %4906, %4432
  %5090 = fmul float %5089, %5077
  %5091 = fadd float %4432, %5090
  %5092 = fsub float %4903, %4431
  %5093 = fmul float %5092, %5080
  %5094 = fadd float %4431, %5093
  br label %5143

; <label>:5095                                    ; preds = %5071
  %5096 = icmp eq i32 %5069, 4
  br i1 %5096, label %5097, label %5129

; <label>:5097                                    ; preds = %5095
  %5098 = fmul float %4904, %5074
  %5099 = fmul float %4905, %5074
  %5100 = fadd float %4419, %5098
  %5101 = fadd float %4420, %5099
  %5102 = call float @dx.op.binary.f32(i32 36, float %4432, float %4906), !dx.precise !89  ; FMin(a,b)
  %5103 = fsub float %5102, %4432
  %5104 = fmul float %5077, %5103
  %5105 = fadd float %4432, %5104
  %5106 = fadd float %4431, %4903
  %5107 = fmul float %5106, 0x3FF337FAE0000000
  %5108 = fadd float %5107, 0xBFE1363700000000
  %5109 = fmul float %4431, %4431
  %5110 = fmul float %4903, %4903
  %5111 = fadd float %5109, %5110
  %5112 = fmul float %5111, 0x3FE5152B00000000
  %5113 = fsub float %5108, %5112
  %5114 = fmul float %4431, 0xBFCC1F85E0000000
  %5115 = fmul float %5114, %4903
  %5116 = fadd float %5115, %5113
  %5117 = fmul float %5106, 0x3FBA6F0D00000000
  %5118 = fsub float 1.000000e+00, %5117
  %5119 = fmul float %5111, 0x3FD0432880000000
  %5120 = fadd float %5118, %5119
  %5121 = fmul float %4431, 0xBFEF110800000000
  %5122 = fmul float %5121, %4903
  %5123 = fadd float %5122, %5120
  %5124 = fdiv float %5116, %5123
  %5125 = call float @dx.op.unary.f32(i32 7, float %5124), !dx.precise !89  ; Saturate(value)
  %5126 = fsub float %5125, %4431
  %5127 = fmul float %5080, %5126
  %5128 = fadd float %4431, %5127
  br label %5143

; <label>:5129                                    ; preds = %5095
  %5130 = icmp eq i32 %5069, 8
  br i1 %5130, label %5131, label %5143

; <label>:5131                                    ; preds = %5129
  %5132 = fmul float %4904, %5074
  %5133 = fmul float %4905, %5074
  %5134 = fadd float %4419, %5132
  %5135 = fadd float %4420, %5133
  %5136 = call float @dx.op.binary.f32(i32 36, float %4432, float %4906), !dx.precise !89  ; FMin(a,b)
  %5137 = fsub float %5136, %4432
  %5138 = fmul float %5077, %5137
  %5139 = fadd float %4432, %5138
  %5140 = fsub float %4903, %4431
  %5141 = fmul float %5140, %5080
  %5142 = fadd float %4431, %5141
  br label %5143

; <label>:5143                                    ; preds = %5131, %5129, %5097, %5082, %5058, %4545, %4446, %4434, %4418
  %5144 = phi float [ %4419, %4418 ], [ %4419, %4434 ], [ %4419, %4446 ], [ %5087, %5082 ], [ %5100, %5097 ], [ %5134, %5131 ], [ %4419, %5129 ], [ %4419, %5058 ], [ %4419, %4545 ]
  %5145 = phi float [ %4420, %4418 ], [ %4420, %4434 ], [ %4420, %4446 ], [ %5088, %5082 ], [ %5101, %5097 ], [ %5135, %5131 ], [ %4420, %5129 ], [ %4420, %5058 ], [ %4420, %4545 ]
  %5146 = phi float [ %4421, %4418 ], [ %4421, %4434 ], [ %4421, %4446 ], [ %5059, %5082 ], [ %5059, %5097 ], [ %5059, %5131 ], [ %5059, %5129 ], [ %5059, %5058 ], [ %4421, %4545 ]
  %5147 = phi float [ %4422, %4418 ], [ %4422, %4434 ], [ %4422, %4446 ], [ %5060, %5082 ], [ %5060, %5097 ], [ %5060, %5131 ], [ %5060, %5129 ], [ %5060, %5058 ], [ %4422, %4545 ]
  %5148 = phi float [ %4423, %4418 ], [ %4423, %4434 ], [ %4423, %4446 ], [ %5061, %5082 ], [ %5061, %5097 ], [ %5061, %5131 ], [ %5061, %5129 ], [ %5061, %5058 ], [ %4423, %4545 ]
  %5149 = phi float [ %4424, %4418 ], [ %4424, %4434 ], [ %4424, %4446 ], [ %5062, %5082 ], [ %5062, %5097 ], [ %5062, %5131 ], [ %5062, %5129 ], [ %5062, %5058 ], [ %4424, %4545 ]
  %5150 = phi float [ %4425, %4418 ], [ %4425, %4434 ], [ %4425, %4446 ], [ %5063, %5082 ], [ %5063, %5097 ], [ %5063, %5131 ], [ %5063, %5129 ], [ %5063, %5058 ], [ %4425, %4545 ]
  %5151 = phi float [ %4426, %4418 ], [ %4426, %4434 ], [ %4426, %4446 ], [ %5064, %5082 ], [ %5064, %5097 ], [ %5064, %5131 ], [ %5064, %5129 ], [ %5064, %5058 ], [ %4426, %4545 ]
  %5152 = phi float [ %4427, %4418 ], [ %4427, %4434 ], [ %4427, %4446 ], [ %5065, %5082 ], [ %5065, %5097 ], [ %5065, %5131 ], [ %5065, %5129 ], [ %5065, %5058 ], [ %4427, %4545 ]
  %5153 = phi float [ %4428, %4418 ], [ %4428, %4434 ], [ %4428, %4446 ], [ %5066, %5082 ], [ %5066, %5097 ], [ %5066, %5131 ], [ %5066, %5129 ], [ %5066, %5058 ], [ %4428, %4545 ]
  %5154 = phi float [ %4429, %4418 ], [ %4429, %4434 ], [ %4429, %4446 ], [ %5067, %5082 ], [ %5067, %5097 ], [ %5067, %5131 ], [ %5067, %5129 ], [ %5067, %5058 ], [ %4429, %4545 ]
  %5155 = phi float [ %4430, %4418 ], [ %4430, %4434 ], [ %4430, %4446 ], [ %5068, %5082 ], [ %5068, %5097 ], [ %5068, %5131 ], [ %5068, %5129 ], [ %5068, %5058 ], [ %4430, %4545 ]
  %5156 = phi float [ %4431, %4418 ], [ %4431, %4434 ], [ %4431, %4446 ], [ %5094, %5082 ], [ %5128, %5097 ], [ %5142, %5131 ], [ %4431, %5129 ], [ %4431, %5058 ], [ %4431, %4545 ]
  %5157 = phi float [ %4432, %4418 ], [ %4432, %4434 ], [ %4432, %4446 ], [ %5091, %5082 ], [ %5105, %5097 ], [ %5139, %5131 ], [ %4432, %5129 ], [ %4432, %5058 ], [ %4432, %4545 ]
  %5158 = call float @dx.op.dot2.f32(i32 54, float %5144, float %5145, float %5144, float %5145), !dx.precise !89  ; Dot2(ax,ay,bx,by)
  %5159 = fmul float %5158, 0x3FE3333340000000
  %5160 = fsub float 1.000000e+00, %5159
  %5161 = call float @dx.op.dot3.f32(i32 55, float %5144, float %5145, float %5160, float %5144, float %5145, float %5160), !dx.precise !89  ; Dot3(ax,ay,az,bx,by,bz)
  %5162 = call float @dx.op.unary.f32(i32 25, float %5161), !dx.precise !89  ; Rsqrt(value)
  %5163 = fmul float %5144, %5162
  %5164 = fmul float %5145, %5162
  %5165 = fmul float %5160, %5162
  %5166 = fmul float %2033, %5165
  %5167 = fmul float %1957, %5165
  %5168 = fmul float %2239, %5165
  %5169 = fmul float %2034, %5163
  %5170 = fmul float %1960, %5163
  %5171 = fmul float %2191, %5163
  %5172 = fadd float %5166, %5169
  %5173 = fadd float %5167, %5170
  %5174 = fadd float %5168, %5171
  %5175 = fmul float %2035, %5164
  %5176 = fmul float %1963, %5164
  %5177 = fmul float %2240, %5164
  %5178 = fadd float %5175, %5172
  %5179 = fadd float %5176, %5173
  %5180 = fadd float %5177, %5174
  %5181 = call float @dx.op.dot3.f32(i32 55, float %5178, float %5179, float %5180, float %5178, float %5179, float %5180), !dx.precise !89  ; Dot3(ax,ay,az,bx,by,bz)
  %5182 = call float @dx.op.unary.f32(i32 25, float %5181), !dx.precise !89  ; Rsqrt(value)
  %5183 = fmul float %5182, %5178
  %5184 = fmul float %5182, %5179
  %5185 = fmul float %5182, %5180
  %5186 = fadd float %5155, 0xBFB99999A0000000
  %5187 = call float @dx.op.unary.f32(i32 7, float %5186), !dx.precise !89  ; Saturate(value)
  %5188 = fmul float %5187, 0x3FF1C71C80000000
  %5189 = call float @dx.op.binary.f32(i32 36, float %5155, float 0x3FB99999A0000000), !dx.precise !89  ; FMin(a,b)
  %5190 = fsub float 1.000000e+00, %5188
  %5191 = call float @dx.op.unary.f32(i32 7, float %5190), !dx.precise !89  ; Saturate(value)
  %5192 = fmul float %5146, %5191
  %5193 = fmul float %5147, %5191
  %5194 = fmul float %5148, %5191
  %5195 = call float @dx.op.unary.f32(i32 7, float %5192), !dx.precise !89  ; Saturate(value)
  %5196 = call float @dx.op.unary.f32(i32 7, float %5193), !dx.precise !89  ; Saturate(value)
  %5197 = call float @dx.op.unary.f32(i32 7, float %5194), !dx.precise !89  ; Saturate(value)
  %5198 = fmul float %5146, %5188
  %5199 = fmul float %5147, %5188
  %5200 = fmul float %5148, %5188
  %5201 = fadd float %5189, %5198
  %5202 = fadd float %5189, %5199
  %5203 = fadd float %5189, %5200
  %5204 = call float @dx.op.unary.f32(i32 7, float %5201), !dx.precise !89  ; Saturate(value)
  %5205 = call float @dx.op.unary.f32(i32 7, float %5202), !dx.precise !89  ; Saturate(value)
  %5206 = call float @dx.op.unary.f32(i32 7, float %5203), !dx.precise !89  ; Saturate(value)
  %5207 = call float @dx.op.unary.f32(i32 7, float %5156), !dx.precise !89  ; Saturate(value)
  %5208 = fsub float -0.000000e+00, %198
  %5209 = fsub float -0.000000e+00, %199
  %5210 = fsub float -0.000000e+00, %200
  %5211 = call float @dx.op.dot3.f32(i32 55, float %5183, float %5184, float %5185, float %5208, float %5209, float %5210), !dx.precise !89  ; Dot3(ax,ay,az,bx,by,bz)
  %5212 = call float @dx.op.unary.f32(i32 7, float %5211), !dx.precise !89  ; Saturate(value)
  %5213 = call float @dx.op.dot3.f32(i32 55, float %198, float %199, float %200, float %5183, float %5184, float %5185)  ; Dot3(ax,ay,az,bx,by,bz)
  %5214 = fmul fast float %5213, 2.000000e+00
  %5215 = fmul fast float %5214, %5183
  %5216 = fmul fast float %5214, %5184
  %5217 = fmul fast float %5214, %5185
  %5218 = fsub fast float %198, %5215
  %5219 = fsub fast float %199, %5216
  %5220 = fsub fast float %200, %5217
  %5221 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 242)  ; CBufferLoadLegacy(handle,regIndex)
  %5222 = extractvalue %dx.types.CBufRet.f32 %5221, 0
  %5223 = bitcast float %5222 to i32
  %5224 = lshr i32 %5223, 8
  %5225 = and i32 %5224, 255
  %5226 = uitofp i32 %5225 to float
  %5227 = fptoui float %5226 to i32
  %5228 = and i32 %5227, 4
  %5229 = icmp ne i32 %5228, 0
  %5230 = fsub float 1.000000e+00, %5157
  %5231 = bitcast float %5230 to i32
  %5232 = sub i32 2129859010, %5231
  %5233 = fcmp olt float %5195, 0x3F70101020000000
  %5234 = fcmp olt float %5196, 0x3F70101020000000
  %5235 = fcmp olt float %5197, 0x3F70101020000000
  %5236 = and i1 %5233, %5234
  %5237 = and i1 %5236, %5235
  %5238 = bitcast i32 %5232 to float
  %5239 = select i1 %5229, float %5238, float 0x47DE623840000000
  %5240 = fmul fast float %5152, %2989
  %5241 = fmul fast float %5153, %2989
  %5242 = fmul fast float %5154, %2989
  %5243 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %5244 = extractvalue %dx.types.CBufRet.i32 %5243, 0
  %5245 = icmp eq i32 %5244, 0
  br i1 %5245, label %5620, label %5246

; <label>:5246                                    ; preds = %5143
  %5247 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %5248 = extractvalue %dx.types.CBufRet.f32 %5247, 0
  %5249 = extractvalue %dx.types.CBufRet.f32 %5247, 1
  %5250 = extractvalue %dx.types.CBufRet.f32 %5247, 2
  %5251 = fmul fast float %5248, 0x42416A5D20000000
  %5252 = fmul fast float %5249, 0x42416A5D20000000
  %5253 = fmul fast float %5250, 0x42416A5D20000000
  %5254 = add i32 %2378, 65536
  %5255 = mul i32 %5254, 1365458477
  %5256 = xor i32 %2379, %5255
  %5257 = mul i32 %5256, -512718531
  %5258 = lshr i32 %5255, 16
  %5259 = xor i32 %5257, %5258
  %5260 = lshr i32 %5259, 4
  %5261 = and i32 %5260, 4095
  %5262 = lshr i32 %5255, 8
  %5263 = xor i32 %5259, %5262
  %5264 = xor i32 %5263, %5261
  %5265 = mul i32 %5264, 153742143
  %5266 = lshr i32 %5255, 23
  %5267 = xor i32 %5265, %5266
  %5268 = lshr i32 %5267, 1
  %5269 = and i32 %5268, 32767
  %5270 = xor i32 %5269, %5267
  %5271 = lshr i32 %5255, 27
  %5272 = or i32 %5271, 1
  %5273 = mul i32 %5272, 1765145193
  %5274 = mul i32 %5273, %5270
  %5275 = lshr i32 %5274, 11
  %5276 = and i32 %5275, 31
  %5277 = xor i32 %5276, %5274
  %5278 = mul i32 %5277, 1960620803
  %5279 = lshr i32 %5278, 2
  %5280 = and i32 %5279, 16383
  %5281 = xor i32 %5280, %5278
  %5282 = mul i32 %5281, -1638916925
  %5283 = lshr i32 %5282, 2
  %5284 = and i32 %5283, 16383
  %5285 = xor i32 %5284, %5282
  %5286 = mul i32 %5285, -933190689
  %5287 = and i32 %5286, 65535
  %5288 = lshr i32 %5287, 5
  %5289 = xor i32 %5288, %5287
  %5290 = add i32 %5289, %5255
  %5291 = and i32 %5290, 65535
  %5292 = mul i32 %5254, 1757159915
  %5293 = and i32 %5290, 255
  %5294 = xor i32 %5293, %5292
  %5295 = mul i32 %5294, -512718531
  %5296 = lshr i32 %5292, 16
  %5297 = xor i32 %5295, %5296
  %5298 = lshr i32 %5297, 4
  %5299 = and i32 %5298, 15
  %5300 = lshr i32 %5292, 8
  %5301 = xor i32 %5297, %5300
  %5302 = xor i32 %5301, %5299
  %5303 = mul i32 %5302, 153742143
  %5304 = lshr i32 %5292, 23
  %5305 = xor i32 %5303, %5304
  %5306 = lshr i32 %5305, 1
  %5307 = and i32 %5306, 127
  %5308 = xor i32 %5307, %5305
  %5309 = lshr i32 %5292, 27
  %5310 = or i32 %5309, 1
  %5311 = mul i32 %5310, -1074439621
  %5312 = mul i32 %5311, %5308
  %5313 = lshr i32 %5312, 2
  %5314 = and i32 %5313, 63
  %5315 = xor i32 %5314, %5312
  %5316 = mul i32 %5315, -1638916925
  %5317 = lshr i32 %5316, 2
  %5318 = and i32 %5317, 63
  %5319 = xor i32 %5318, %5316
  %5320 = mul i32 %5319, -933190689
  %5321 = lshr i32 %5320, 5
  %5322 = and i32 %5321, 7
  %5323 = xor i32 %5322, %5320
  %5324 = add i32 %5323, %5292
  %5325 = and i32 %5324, 255
  %5326 = mul i32 %5254, 48610963
  %5327 = lshr i32 %5291, 8
  %5328 = xor i32 %5327, %5326
  %5329 = mul i32 %5328, -512718531
  %5330 = lshr i32 %5326, 16
  %5331 = xor i32 %5329, %5330
  %5332 = lshr i32 %5331, 4
  %5333 = and i32 %5332, 15
  %5334 = lshr i32 %5326, 8
  %5335 = xor i32 %5331, %5334
  %5336 = xor i32 %5335, %5333
  %5337 = mul i32 %5336, 153742143
  %5338 = lshr i32 %5326, 23
  %5339 = xor i32 %5337, %5338
  %5340 = lshr i32 %5339, 1
  %5341 = and i32 %5340, 127
  %5342 = xor i32 %5341, %5339
  %5343 = lshr i32 %5326, 27
  %5344 = or i32 %5343, 1
  %5345 = mul i32 %5344, -1074439621
  %5346 = mul i32 %5345, %5342
  %5347 = lshr i32 %5346, 2
  %5348 = and i32 %5347, 63
  %5349 = xor i32 %5348, %5346
  %5350 = mul i32 %5349, -1638916925
  %5351 = lshr i32 %5350, 2
  %5352 = and i32 %5351, 63
  %5353 = xor i32 %5352, %5350
  %5354 = mul i32 %5353, -933190689
  %5355 = lshr i32 %5354, 5
  %5356 = and i32 %5355, 7
  %5357 = xor i32 %5356, %5354
  %5358 = add i32 %5357, %5326
  %5359 = and i32 %5358, 255
  %5360 = mul i32 %5254, -1770354533
  %5361 = lshr i32 %5360, 17
  %5362 = xor i32 %5361, %5360
  %5363 = xor i32 %5362, %5291
  %5364 = lshr i32 %5363, 10
  %5365 = xor i32 %5364, %5363
  %5366 = mul i32 %5365, -1285212955
  %5367 = lshr i32 %5366, 12
  %5368 = xor i32 %5367, %5366
  %5369 = lshr i32 %5366, 21
  %5370 = xor i32 %5368, %5369
  %5371 = mul i32 %5370, -1812183147
  %5372 = xor i32 %5371, -546426753
  %5373 = lshr i32 %5372, 17
  %5374 = xor i32 %5373, %5372
  %5375 = lshr i32 %5360, 18
  %5376 = or i32 %5375, 1
  %5377 = mul i32 %5374, %5376
  %5378 = uitofp i32 %5377 to float
  %5379 = fmul fast float %5378, 0x3DEFFFFFC0000000
  %5380 = mul i32 %5254, 915196087
  %5381 = lshr i32 %5380, 17
  %5382 = xor i32 %5381, %5380
  %5383 = xor i32 %5382, %5291
  %5384 = lshr i32 %5383, 10
  %5385 = xor i32 %5384, %5383
  %5386 = mul i32 %5385, -1285212955
  %5387 = lshr i32 %5386, 12
  %5388 = xor i32 %5387, %5386
  %5389 = lshr i32 %5386, 21
  %5390 = xor i32 %5388, %5389
  %5391 = mul i32 %5390, -1812183147
  %5392 = xor i32 %5391, -546426753
  %5393 = lshr i32 %5392, 17
  %5394 = xor i32 %5393, %5392
  %5395 = lshr i32 %5380, 18
  %5396 = or i32 %5395, 1
  %5397 = mul i32 %5394, %5396
  %5398 = uitofp i32 %5397 to float
  %5399 = fmul fast float %5398, 0x3DEFFFFFC0000000
  %5400 = uitofp i32 %5325 to float
  %5401 = uitofp i32 %5359 to float
  %5402 = fadd fast float %5401, %5379
  %5403 = fmul fast float %5402, 3.906250e-03
  %5404 = fadd fast float %5403, %5400
  %5405 = fmul fast float %5404, 3.906250e-03
  %5406 = uitofp i32 %5291 to float
  %5407 = fadd fast float %5399, %5406
  %5408 = fsub fast float %5251, %2242
  %5409 = fsub fast float %5252, %2203
  %5410 = fsub fast float %5253, %2243
  %5411 = call float @dx.op.dot3.f32(i32 55, float %5408, float %5409, float %5410, float %5408, float %5409, float %5410)  ; Dot3(ax,ay,az,bx,by,bz)
  %5412 = call float @dx.op.unary.f32(i32 24, float %5411)  ; Sqrt(value)
  %5413 = fdiv fast float 1.000000e+00, %5412
  %5414 = fmul fast float %5408, %5413
  %5415 = fmul fast float %5409, %5413
  %5416 = fmul fast float %5410, %5413
  %5417 = fdiv fast float 0x439AEBB8E0000000, %5411
  %5418 = fsub fast float 1.000000e+00, %5417
  %5419 = call float @dx.op.unary.f32(i32 24, float %5418)  ; Sqrt(value)
  %5420 = fsub fast float 1.000000e+00, %5405
  %5421 = fmul fast float %5419, %5405
  %5422 = fadd fast float %5421, %5420
  %5423 = fmul fast float %5422, %5422
  %5424 = fsub fast float 1.000000e+00, %5423
  %5425 = call float @dx.op.unary.f32(i32 24, float %5424)  ; Sqrt(value)
  %5426 = fmul fast float %5407, 0x3F1921FB60000000
  %5427 = call float @dx.op.unary.f32(i32 12, float %5426)  ; Cos(value)
  %5428 = fmul fast float %5427, %5425
  %5429 = call float @dx.op.unary.f32(i32 13, float %5426)  ; Sin(value)
  %5430 = fmul fast float %5429, %5425
  %5431 = call float @dx.op.unary.f32(i32 6, float %5414)  ; FAbs(value)
  %5432 = call float @dx.op.unary.f32(i32 6, float %5415)  ; FAbs(value)
  %5433 = fmul fast float %5432, 5.000000e+00
  %5434 = fcmp fast ogt float %5431, %5433
  %5435 = fmul fast float %5416, %5416
  br i1 %5434, label %5436, label %5443

; <label>:5436                                    ; preds = %5246
  %5437 = fmul fast float %5414, %5414
  %5438 = fadd fast float %5437, %5435
  %5439 = call float @dx.op.unary.f32(i32 25, float %5438)  ; Rsqrt(value)
  %5440 = fmul fast float %5416, %5439
  %5441 = fsub fast float -0.000000e+00, %5440
  %5442 = fmul fast float %5439, %5414
  br label %5450

; <label>:5443                                    ; preds = %5246
  %5444 = fmul fast float %5415, %5415
  %5445 = fadd fast float %5444, %5435
  %5446 = call float @dx.op.unary.f32(i32 25, float %5445)  ; Rsqrt(value)
  %5447 = fmul fast float %5416, %5446
  %5448 = fsub fast float -0.000000e+00, %5447
  %5449 = fmul fast float %5446, %5415
  br label %5450

; <label>:5450                                    ; preds = %5443, %5436
  %5451 = phi float [ %5441, %5436 ], [ 0.000000e+00, %5443 ]
  %5452 = phi float [ 0.000000e+00, %5436 ], [ %5448, %5443 ]
  %5453 = phi float [ %5442, %5436 ], [ %5449, %5443 ]
  %5454 = fmul fast float %5452, %5416
  %5455 = fmul fast float %5453, %5415
  %5456 = fsub fast float %5454, %5455
  %5457 = fmul fast float %5453, %5414
  %5458 = fmul fast float %5451, %5416
  %5459 = fsub fast float %5457, %5458
  %5460 = fmul fast float %5451, %5415
  %5461 = fmul fast float %5452, %5414
  %5462 = fsub fast float %5460, %5461
  %5463 = fmul fast float %5451, %5428
  %5464 = call float @dx.op.tertiary.f32(i32 46, float %5430, float %5456, float %5463)  ; FMad(a,b,c)
  %5465 = call float @dx.op.tertiary.f32(i32 46, float %5422, float %5414, float %5464)  ; FMad(a,b,c)
  %5466 = fmul fast float %5452, %5428
  %5467 = call float @dx.op.tertiary.f32(i32 46, float %5430, float %5459, float %5466)  ; FMad(a,b,c)
  %5468 = call float @dx.op.tertiary.f32(i32 46, float %5422, float %5415, float %5467)  ; FMad(a,b,c)
  %5469 = fmul fast float %5453, %5428
  %5470 = call float @dx.op.tertiary.f32(i32 46, float %5430, float %5462, float %5469)  ; FMad(a,b,c)
  %5471 = call float @dx.op.tertiary.f32(i32 46, float %5422, float %5416, float %5470)  ; FMad(a,b,c)
  %5472 = call float @dx.op.dot3.f32(i32 55, float %5465, float %5468, float %5471, float %5465, float %5468, float %5471)  ; Dot3(ax,ay,az,bx,by,bz)
  %5473 = call float @dx.op.unary.f32(i32 25, float %5472)  ; Rsqrt(value)
  %5474 = fmul fast float %5473, %5465
  %5475 = fmul fast float %5473, %5468
  %5476 = fmul fast float %5473, %5471
  %5477 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %5478 = extractvalue %dx.types.CBufRet.f32 %5477, 0
  %5479 = extractvalue %dx.types.CBufRet.f32 %5477, 1
  %5480 = extractvalue %dx.types.CBufRet.f32 %5477, 2
  %5481 = fadd fast float %5478, %2242
  %5482 = fadd fast float %5479, %2203
  %5483 = fadd fast float %5480, %2243
  %5484 = getelementptr inbounds %struct.Payload, %struct.Payload* %40, i32 0, i32 0
  store float 0.000000e+00, float* %5484, align 8, !tbaa !90, !noalias !213
  %5485 = getelementptr inbounds %struct.Payload, %struct.Payload* %40, i32 0, i32 1
  store i32 -1, i32* %5485, align 4, !tbaa !99, !noalias !213
  %5486 = getelementptr inbounds %struct.Payload, %struct.Payload* %40, i32 0, i32 2
  store i32 -1, i32* %5486, align 8, !tbaa !99, !noalias !213
  %5487 = getelementptr inbounds %struct.Payload, %struct.Payload* %40, i32 0, i32 3
  store i32 -1, i32* %5487, align 4, !tbaa !99, !noalias !213
  %5488 = call %dx.types.Handle @dx.op.createHandleForLib.struct.RaytracingAccelerationStructure(i32 160, %struct.RaytracingAccelerationStructure %18)  ; CreateHandleForLib(Resource)
  call void @dx.op.traceRay.struct.Payload(i32 157, %dx.types.Handle %5488, i32 0, i32 255, i32 0, i32 0, i32 0, float %5481, float %5482, float %5483, float 0x3FB99999A0000000, float %5474, float %5475, float %5476, float 1.000000e+06, %struct.Payload* nonnull %40)  ; TraceRay(AccelerationStructure,RayFlags,InstanceInclusionMask,RayContributionToHitGroupIndex,MultiplierForGeometryContributionToShaderIndex,MissShaderIndex,Origin_X,Origin_Y,Origin_Z,TMin,Direction_X,Direction_Y,Direction_Z,TMax,payload)
  %5489 = load float, float* %5484, align 8
  %5490 = fcmp fast oeq float %5489, 1.000000e+06
  br i1 %5490, label %5491, label %5620

; <label>:5491                                    ; preds = %5450
  %5492 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %5493 = extractvalue %dx.types.CBufRet.f32 %5492, 0
  %5494 = extractvalue %dx.types.CBufRet.f32 %5492, 1
  %5495 = extractvalue %dx.types.CBufRet.f32 %5492, 2
  %5496 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %5497 = extractvalue %dx.types.CBufRet.f32 %5496, 3
  %5498 = extractvalue %dx.types.CBufRet.f32 %5496, 0
  %5499 = extractvalue %dx.types.CBufRet.f32 %5496, 1
  %5500 = extractvalue %dx.types.CBufRet.f32 %5496, 2
  %5501 = fsub fast float %5493, %198
  %5502 = fsub fast float %5494, %199
  %5503 = fsub fast float %5495, %200
  %5504 = call float @dx.op.dot3.f32(i32 55, float %5501, float %5502, float %5503, float %5501, float %5502, float %5503)  ; Dot3(ax,ay,az,bx,by,bz)
  %5505 = call float @dx.op.unary.f32(i32 25, float %5504)  ; Rsqrt(value)
  %5506 = fmul fast float %5505, %5501
  %5507 = fmul fast float %5505, %5502
  %5508 = fmul fast float %5505, %5503
  %5509 = call float @dx.op.dot3.f32(i32 55, float %5493, float %5494, float %5495, float %5183, float %5184, float %5185)  ; Dot3(ax,ay,az,bx,by,bz)
  %5510 = call float @dx.op.dot3.f32(i32 55, float %5208, float %5209, float %5210, float %5506, float %5507, float %5508)  ; Dot3(ax,ay,az,bx,by,bz)
  %5511 = call float @dx.op.unary.f32(i32 7, float %5509)  ; Saturate(value)
  %5512 = fmul fast float %5511, %5511
  %5513 = fmul fast float %5512, %5239
  %5514 = call float @dx.op.unary.f32(i32 7, float %5513)  ; Saturate(value)
  %5515 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 242)  ; CBufferLoadLegacy(handle,regIndex)
  %5516 = extractvalue %dx.types.CBufRet.f32 %5515, 0
  %5517 = bitcast float %5516 to i32
  %5518 = lshr i32 %5517, 8
  %5519 = and i32 %5518, 255
  %5520 = uitofp i32 %5519 to float
  %5521 = fptoui float %5520 to i32
  %5522 = and i32 %5521, 8
  %5523 = icmp ne i32 %5522, 0
  %5524 = select i1 %5523, float %5514, float 1.000000e+00
  %5525 = fmul fast float %5524, %5511
  %5526 = call float @dx.op.dot3.f32(i32 55, float %5183, float %5184, float %5185, float %5506, float %5507, float %5508)  ; Dot3(ax,ay,az,bx,by,bz)
  %5527 = fmul fast float %5526, %5526
  %5528 = call float @dx.op.unary.f32(i32 6, float %5509)  ; FAbs(value)
  %5529 = fsub fast float 1.000000e+00, %5207
  %5530 = call float @dx.op.binary.f32(i32 35, float %5529, float 0x3F847AE140000000)  ; FMax(a,b)
  %5531 = fmul fast float %5530, %5530
  %5532 = fmul fast float %5531, %5531
  %5533 = fsub fast float 1.000000e+00, %5532
  %5534 = fmul fast float %5212, %5212
  %5535 = fmul fast float %5534, %5533
  %5536 = fadd fast float %5535, %5532
  %5537 = bitcast float %5536 to i32
  %5538 = ashr i32 %5537, 1
  %5539 = add nsw i32 %5538, 532487669
  %5540 = bitcast i32 %5539 to float
  %5541 = fadd fast float %5540, %5212
  %5542 = fmul fast float %5532, %5527
  %5543 = fsub fast float 1.000000e+00, %5527
  %5544 = fadd fast float %5543, %5542
  %5545 = fmul fast float %5528, %5528
  %5546 = fmul fast float %5545, %5533
  %5547 = fadd fast float %5546, %5532
  %5548 = bitcast float %5547 to i32
  %5549 = ashr i32 %5548, 1
  %5550 = add nsw i32 %5549, 532487669
  %5551 = bitcast i32 %5550 to float
  %5552 = fadd fast float %5551, %5528
  %5553 = fmul fast float %5544, %5544
  %5554 = fmul fast float %5553, %5541
  %5555 = fmul fast float %5554, %5552
  %5556 = fdiv fast float 0x3FF0A00000000000, %5555
  %5557 = fmul fast float %5556, %5532
  %5558 = call float @dx.op.unary.f32(i32 6, float %5510)  ; FAbs(value)
  %5559 = fsub fast float 1.000000e+00, %5558
  %5560 = bitcast float %5559 to i32
  %5561 = sitofp i32 %5560 to float
  %5562 = fmul fast float %5561, 5.000000e+00
  %5563 = fadd fast float %5562, 0xC1EFBF8940000000
  %5564 = fptosi float %5563 to i32
  %5565 = bitcast i32 %5564 to float
  %5566 = fsub fast float 1.000000e+00, %5204
  %5567 = fsub fast float 1.000000e+00, %5205
  %5568 = fsub fast float 1.000000e+00, %5206
  %5569 = fmul fast float %5565, %5566
  %5570 = fmul fast float %5565, %5567
  %5571 = fmul fast float %5565, %5568
  %5572 = fadd fast float %5569, %5204
  %5573 = fadd fast float %5570, %5205
  %5574 = fadd fast float %5571, %5206
  %5575 = fmul fast float %5509, 9.843750e-01
  %5576 = fmul fast float %5207, 9.843750e-01
  %5577 = fadd fast float %5575, 7.812500e-03
  %5578 = fadd fast float %5576, 7.812500e-03
  %5579 = call %dx.types.Handle @"dx.op.createHandleForLib.class.Texture2D<vector<float, 4> >"(i32 160, %"class.Texture2D<vector<float, 4> >" %2)  ; CreateHandleForLib(Resource)
  %5580 = call %dx.types.Handle @dx.op.createHandleForLib.struct.SamplerState(i32 160, %struct.SamplerState %1)  ; CreateHandleForLib(Resource)
  %5581 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5579, %dx.types.Handle %5580, float %5577, float %5578, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5582 = extractvalue %dx.types.ResRet.f32 %5581, 2
  %5583 = extractvalue %dx.types.ResRet.f32 %5581, 3
  %5584 = fmul fast float %5582, %5204
  %5585 = fmul fast float %5582, %5205
  %5586 = fmul fast float %5582, %5206
  %5587 = fadd fast float %5584, %5583
  %5588 = fadd fast float %5585, %5583
  %5589 = fadd fast float %5586, %5583
  %5590 = call float @dx.op.binary.f32(i32 35, float %5588, float %5589)  ; FMax(a,b)
  %5591 = call float @dx.op.binary.f32(i32 35, float %5587, float %5590)  ; FMax(a,b)
  %5592 = fsub fast float 1.000000e+00, %5591
  %5593 = fmul fast float %5572, %5557
  %5594 = fmul fast float %5573, %5557
  %5595 = fmul fast float %5574, %5557
  %5596 = fmul fast float %5497, %5149
  %5597 = fmul fast float %5497, %5150
  %5598 = fmul fast float %5497, %5151
  %5599 = fadd fast float %5593, %5596
  %5600 = fadd fast float %5594, %5597
  %5601 = fadd fast float %5595, %5598
  %5602 = fmul fast float %5525, %5498
  %5603 = fmul fast float %5602, %5592
  %5604 = fmul fast float %5525, %5499
  %5605 = fmul fast float %5604, %5592
  %5606 = fmul fast float %5525, %5500
  %5607 = fmul fast float %5606, %5592
  %5608 = fmul fast float %5602, %5599
  %5609 = fmul fast float %5604, %5600
  %5610 = fmul fast float %5606, %5601
  %5611 = fmul fast float %5603, %2989
  %5612 = fmul fast float %5605, %2989
  %5613 = fmul fast float %5607, %2989
  %5614 = fadd fast float %5608, %5152
  %5615 = fmul fast float %5614, %2989
  %5616 = fadd fast float %5609, %5153
  %5617 = fmul fast float %5616, %2989
  %5618 = fadd fast float %5610, %5154
  %5619 = fmul fast float %5618, %2989
  br label %5620

; <label>:5620                                    ; preds = %5491, %5450, %5143
  %5621 = phi float [ %5240, %5450 ], [ %5240, %5143 ], [ %5615, %5491 ]
  %5622 = phi float [ %5241, %5450 ], [ %5241, %5143 ], [ %5617, %5491 ]
  %5623 = phi float [ %5242, %5450 ], [ %5242, %5143 ], [ %5619, %5491 ]
  %5624 = phi float [ 0.000000e+00, %5450 ], [ 0.000000e+00, %5143 ], [ %5611, %5491 ]
  %5625 = phi float [ 0.000000e+00, %5450 ], [ 0.000000e+00, %5143 ], [ %5612, %5491 ]
  %5626 = phi float [ 0.000000e+00, %5450 ], [ 0.000000e+00, %5143 ], [ %5613, %5491 ]
  %5627 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %5628 = extractvalue %dx.types.CBufRet.i32 %5627, 1
  %5629 = icmp eq i32 %5628, 0
  br i1 %5629, label %6397, label %5630

; <label>:5630                                    ; preds = %5620
  %5631 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %5632 = extractvalue %dx.types.CBufRet.i32 %5631, 1
  %5633 = icmp eq i32 %5632, 0
  br i1 %5633, label %6397, label %5634

; <label>:5634                                    ; preds = %5630
  br label %5635

; <label>:5635                                    ; preds = %6386, %5634
  %5636 = phi i32 [ %5750, %6386 ], [ 0, %5634 ]
  %5637 = phi float [ %6387, %6386 ], [ %5621, %5634 ]
  %5638 = phi float [ %6388, %6386 ], [ %5622, %5634 ]
  %5639 = phi float [ %6389, %6386 ], [ %5623, %5634 ]
  %5640 = phi float [ %6390, %6386 ], [ %5624, %5634 ]
  %5641 = phi float [ %6391, %6386 ], [ %5625, %5634 ]
  %5642 = phi float [ %6392, %6386 ], [ %5626, %5634 ]
  %5643 = mul i32 %5636, 112
  %5644 = call %dx.types.Handle @dx.op.createHandleForLib.struct.ByteAddressBuffer(i32 160, %struct.ByteAddressBuffer %19)  ; CreateHandleForLib(Resource)
  %5645 = call %dx.types.ResRet.f32 @dx.op.rawBufferLoad.f32(i32 139, %dx.types.Handle %5644, i32 %5643, i32 undef, i8 7, i32 4)  ; RawBufferLoad(srv,index,elementOffset,mask,alignment)
  %5646 = extractvalue %dx.types.ResRet.f32 %5645, 0
  %5647 = extractvalue %dx.types.ResRet.f32 %5645, 1
  %5648 = extractvalue %dx.types.ResRet.f32 %5645, 2
  %5649 = add i32 %5643, 16
  %5650 = call %dx.types.ResRet.f32 @dx.op.rawBufferLoad.f32(i32 139, %dx.types.Handle %5644, i32 %5649, i32 undef, i8 7, i32 4)  ; RawBufferLoad(srv,index,elementOffset,mask,alignment)
  %5651 = extractvalue %dx.types.ResRet.f32 %5650, 0
  %5652 = extractvalue %dx.types.ResRet.f32 %5650, 1
  %5653 = extractvalue %dx.types.ResRet.f32 %5650, 2
  %5654 = add i32 %5643, 28
  %5655 = call %dx.types.ResRet.i32 @dx.op.rawBufferLoad.i32(i32 139, %dx.types.Handle %5644, i32 %5654, i32 undef, i8 1, i32 4)  ; RawBufferLoad(srv,index,elementOffset,mask,alignment)
  %5656 = extractvalue %dx.types.ResRet.i32 %5655, 0
  %5657 = add i32 %5643, 32
  %5658 = call %dx.types.ResRet.f32 @dx.op.rawBufferLoad.f32(i32 139, %dx.types.Handle %5644, i32 %5657, i32 undef, i8 7, i32 4)  ; RawBufferLoad(srv,index,elementOffset,mask,alignment)
  %5659 = extractvalue %dx.types.ResRet.f32 %5658, 0
  %5660 = extractvalue %dx.types.ResRet.f32 %5658, 1
  %5661 = extractvalue %dx.types.ResRet.f32 %5658, 2
  %5662 = add i32 %5643, 44
  %5663 = call %dx.types.ResRet.f32 @dx.op.rawBufferLoad.f32(i32 139, %dx.types.Handle %5644, i32 %5662, i32 undef, i8 1, i32 4)  ; RawBufferLoad(srv,index,elementOffset,mask,alignment)
  %5664 = extractvalue %dx.types.ResRet.f32 %5663, 0
  %5665 = add i32 %5643, 48
  %5666 = call %dx.types.ResRet.f32 @dx.op.rawBufferLoad.f32(i32 139, %dx.types.Handle %5644, i32 %5665, i32 undef, i8 15, i32 4)  ; RawBufferLoad(srv,index,elementOffset,mask,alignment)
  %5667 = extractvalue %dx.types.ResRet.f32 %5666, 0
  %5668 = extractvalue %dx.types.ResRet.f32 %5666, 1
  %5669 = extractvalue %dx.types.ResRet.f32 %5666, 2
  %5670 = extractvalue %dx.types.ResRet.f32 %5666, 3
  %5671 = add i32 %5643, 64
  %5672 = call %dx.types.ResRet.f32 @dx.op.rawBufferLoad.f32(i32 139, %dx.types.Handle %5644, i32 %5671, i32 undef, i8 15, i32 4)  ; RawBufferLoad(srv,index,elementOffset,mask,alignment)
  %5673 = extractvalue %dx.types.ResRet.f32 %5672, 0
  %5674 = extractvalue %dx.types.ResRet.f32 %5672, 1
  %5675 = extractvalue %dx.types.ResRet.f32 %5672, 2
  %5676 = extractvalue %dx.types.ResRet.f32 %5672, 3
  %5677 = add i32 %5643, 80
  %5678 = call %dx.types.ResRet.f32 @dx.op.rawBufferLoad.f32(i32 139, %dx.types.Handle %5644, i32 %5677, i32 undef, i8 7, i32 4)  ; RawBufferLoad(srv,index,elementOffset,mask,alignment)
  %5679 = extractvalue %dx.types.ResRet.f32 %5678, 0
  %5680 = and i32 %5656, 50331648
  %5681 = icmp eq i32 %5680, 33554432
  %5682 = call float @dx.op.dot3.f32(i32 55, float %5659, float %5660, float %5661, float %5659, float %5660, float %5661)  ; Dot3(ax,ay,az,bx,by,bz)
  %5683 = fsub fast float %2242, %5667
  %5684 = fsub fast float %2203, %5668
  %5685 = fsub fast float %2243, %5669
  %5686 = call float @dx.op.dot3.f32(i32 55, float %5683, float %5684, float %5685, float %5659, float %5660, float %5661)  ; Dot3(ax,ay,az,bx,by,bz)
  %5687 = fdiv fast float %5686, %5682
  %5688 = call float @dx.op.binary.f32(i32 35, float %5687, float -1.000000e+00)  ; FMax(a,b)
  %5689 = call float @dx.op.binary.f32(i32 36, float %5688, float 1.000000e+00)  ; FMin(a,b)
  %5690 = fmul fast float %5689, %5659
  %5691 = fmul fast float %5689, %5660
  %5692 = fmul fast float %5689, %5661
  %5693 = fadd fast float %5690, %5667
  %5694 = fadd fast float %5691, %5668
  %5695 = fadd fast float %5692, %5669
  %5696 = fsub fast float %5693, %2242
  %5697 = fsub fast float %5694, %2203
  %5698 = fsub fast float %5695, %2243
  %5699 = call float @dx.op.dot3.f32(i32 55, float %5696, float %5697, float %5698, float %5696, float %5697, float %5698)  ; Dot3(ax,ay,az,bx,by,bz)
  %5700 = call float @dx.op.unary.f32(i32 24, float %5699)  ; Sqrt(value)
  %5701 = fdiv fast float 1.000000e+00, %5700
  %5702 = fmul fast float %5696, %5701
  %5703 = fmul fast float %5697, %5701
  %5704 = fmul fast float %5698, %5701
  br i1 %5681, label %5705, label %5729

; <label>:5705                                    ; preds = %5635
  %5706 = fmul fast float %5675, %5651
  %5707 = fmul fast float %5675, %5652
  %5708 = fmul fast float %5675, %5653
  %5709 = fsub fast float %5706, %2242
  %5710 = fadd fast float %5709, %5693
  %5711 = fsub fast float %5707, %2203
  %5712 = fadd fast float %5711, %5694
  %5713 = fsub fast float %5708, %2243
  %5714 = fadd fast float %5713, %5695
  %5715 = call float @dx.op.dot3.f32(i32 55, float %5710, float %5712, float %5714, float %5710, float %5712, float %5714)  ; Dot3(ax,ay,az,bx,by,bz)
  %5716 = call float @dx.op.unary.f32(i32 25, float %5715)  ; Rsqrt(value)
  %5717 = fmul fast float %5716, %5710
  %5718 = fmul fast float %5716, %5712
  %5719 = fmul fast float %5716, %5714
  %5720 = fsub fast float %2242, %5693
  %5721 = fsub fast float %2203, %5694
  %5722 = fsub fast float %2243, %5695
  %5723 = fsub fast float -0.000000e+00, %5720
  %5724 = fsub fast float -0.000000e+00, %5721
  %5725 = fsub fast float -0.000000e+00, %5722
  %5726 = call float @dx.op.dot3.f32(i32 55, float %5723, float %5724, float %5725, float %5651, float %5652, float %5653)  ; Dot3(ax,ay,az,bx,by,bz)
  %5727 = fcmp fast ogt float %5726, 0.000000e+00
  %5728 = uitofp i1 %5727 to float
  br label %5729

; <label>:5729                                    ; preds = %5705, %5635
  %5730 = phi float [ %5717, %5705 ], [ %5702, %5635 ]
  %5731 = phi float [ %5718, %5705 ], [ %5703, %5635 ]
  %5732 = phi float [ %5719, %5705 ], [ %5704, %5635 ]
  %5733 = phi float [ %5728, %5705 ], [ 1.000000e+00, %5635 ]
  %5734 = call float @dx.op.dot3.f32(i32 55, float %5651, float %5652, float %5653, float %5730, float %5731, float %5732)  ; Dot3(ax,ay,az,bx,by,bz)
  %5735 = fmul fast float %5734, %5673
  %5736 = fadd fast float %5735, %5674
  %5737 = call float @dx.op.unary.f32(i32 7, float %5736)  ; Saturate(value)
  %5738 = select i1 %5681, float %5737, float 1.000000e+00
  %5739 = fmul fast float %5700, %5670
  %5740 = fsub fast float 1.000000e+00, %5739
  %5741 = fmul fast float %5740, %5676
  %5742 = call float @dx.op.unary.f32(i32 7, float %5741)  ; Saturate(value)
  %5743 = fmul fast float %5742, %5738
  %5744 = fmul fast float %5743, 2.000000e+00
  %5745 = fsub fast float 3.000000e+00, %5744
  %5746 = fmul fast float %5743, %5743
  %5747 = fmul fast float %5746, %5733
  %5748 = fmul fast float %5747, %5745
  %5749 = fcmp ugt float %5748, 0.000000e+00
  %5750 = add nuw nsw i32 %5636, 1
  br i1 %5749, label %5751, label %6386

; <label>:5751                                    ; preds = %5729
  %5752 = shl i32 %5750, 17
  %5753 = or i32 %5752, 65536
  %5754 = add i32 %5753, %2378
  %5755 = mul i32 %5754, 1365458477
  %5756 = xor i32 %5755, %2379
  %5757 = mul i32 %5756, -512718531
  %5758 = lshr i32 %5755, 16
  %5759 = xor i32 %5757, %5758
  %5760 = lshr i32 %5759, 4
  %5761 = and i32 %5760, 4095
  %5762 = lshr i32 %5755, 8
  %5763 = xor i32 %5759, %5762
  %5764 = xor i32 %5763, %5761
  %5765 = mul i32 %5764, 153742143
  %5766 = lshr i32 %5755, 23
  %5767 = xor i32 %5765, %5766
  %5768 = lshr i32 %5767, 1
  %5769 = and i32 %5768, 32767
  %5770 = xor i32 %5769, %5767
  %5771 = lshr i32 %5755, 27
  %5772 = or i32 %5771, 1
  %5773 = mul i32 %5772, 1765145193
  %5774 = mul i32 %5773, %5770
  %5775 = lshr i32 %5774, 11
  %5776 = and i32 %5775, 31
  %5777 = xor i32 %5776, %5774
  %5778 = mul i32 %5777, 1960620803
  %5779 = lshr i32 %5778, 2
  %5780 = and i32 %5779, 16383
  %5781 = xor i32 %5780, %5778
  %5782 = mul i32 %5781, -1638916925
  %5783 = lshr i32 %5782, 2
  %5784 = and i32 %5783, 16383
  %5785 = xor i32 %5784, %5782
  %5786 = mul i32 %5785, -933190689
  %5787 = and i32 %5786, 65535
  %5788 = lshr i32 %5787, 5
  %5789 = xor i32 %5788, %5787
  %5790 = add i32 %5789, %5755
  %5791 = and i32 %5790, 65535
  %5792 = mul i32 %5754, 1757159915
  %5793 = and i32 %5790, 255
  %5794 = xor i32 %5793, %5792
  %5795 = mul i32 %5794, -512718531
  %5796 = lshr i32 %5792, 16
  %5797 = xor i32 %5795, %5796
  %5798 = lshr i32 %5797, 4
  %5799 = and i32 %5798, 15
  %5800 = lshr i32 %5792, 8
  %5801 = xor i32 %5797, %5800
  %5802 = xor i32 %5801, %5799
  %5803 = mul i32 %5802, 153742143
  %5804 = lshr i32 %5792, 23
  %5805 = xor i32 %5803, %5804
  %5806 = lshr i32 %5805, 1
  %5807 = and i32 %5806, 127
  %5808 = xor i32 %5807, %5805
  %5809 = lshr i32 %5792, 27
  %5810 = or i32 %5809, 1
  %5811 = mul i32 %5810, -1074439621
  %5812 = mul i32 %5811, %5808
  %5813 = lshr i32 %5812, 2
  %5814 = and i32 %5813, 63
  %5815 = xor i32 %5814, %5812
  %5816 = mul i32 %5815, -1638916925
  %5817 = lshr i32 %5816, 2
  %5818 = and i32 %5817, 63
  %5819 = xor i32 %5818, %5816
  %5820 = mul i32 %5819, -933190689
  %5821 = lshr i32 %5820, 5
  %5822 = and i32 %5821, 7
  %5823 = xor i32 %5822, %5820
  %5824 = add i32 %5823, %5792
  %5825 = and i32 %5824, 255
  %5826 = mul i32 %5754, 48610963
  %5827 = lshr i32 %5791, 8
  %5828 = xor i32 %5827, %5826
  %5829 = mul i32 %5828, -512718531
  %5830 = lshr i32 %5826, 16
  %5831 = xor i32 %5829, %5830
  %5832 = lshr i32 %5831, 4
  %5833 = and i32 %5832, 15
  %5834 = lshr i32 %5826, 8
  %5835 = xor i32 %5831, %5834
  %5836 = xor i32 %5835, %5833
  %5837 = mul i32 %5836, 153742143
  %5838 = lshr i32 %5826, 23
  %5839 = xor i32 %5837, %5838
  %5840 = lshr i32 %5839, 1
  %5841 = and i32 %5840, 127
  %5842 = xor i32 %5841, %5839
  %5843 = lshr i32 %5826, 27
  %5844 = or i32 %5843, 1
  %5845 = mul i32 %5844, -1074439621
  %5846 = mul i32 %5845, %5842
  %5847 = lshr i32 %5846, 2
  %5848 = and i32 %5847, 63
  %5849 = xor i32 %5848, %5846
  %5850 = mul i32 %5849, -1638916925
  %5851 = lshr i32 %5850, 2
  %5852 = and i32 %5851, 63
  %5853 = xor i32 %5852, %5850
  %5854 = mul i32 %5853, -933190689
  %5855 = lshr i32 %5854, 5
  %5856 = and i32 %5855, 7
  %5857 = xor i32 %5856, %5854
  %5858 = add i32 %5857, %5826
  %5859 = and i32 %5858, 255
  %5860 = mul i32 %5754, -1770354533
  %5861 = lshr i32 %5860, 17
  %5862 = xor i32 %5861, %5860
  %5863 = xor i32 %5862, %5791
  %5864 = lshr i32 %5863, 10
  %5865 = xor i32 %5864, %5863
  %5866 = mul i32 %5865, -1285212955
  %5867 = lshr i32 %5866, 12
  %5868 = xor i32 %5867, %5866
  %5869 = lshr i32 %5866, 21
  %5870 = xor i32 %5868, %5869
  %5871 = mul i32 %5870, -1812183147
  %5872 = xor i32 %5871, -546426753
  %5873 = lshr i32 %5872, 17
  %5874 = xor i32 %5873, %5872
  %5875 = lshr i32 %5860, 18
  %5876 = or i32 %5875, 1
  %5877 = mul i32 %5874, %5876
  %5878 = uitofp i32 %5877 to float
  %5879 = fmul fast float %5878, 0x3DEFFFFFC0000000
  %5880 = mul i32 %5754, 915196087
  %5881 = lshr i32 %5880, 17
  %5882 = xor i32 %5881, %5880
  %5883 = xor i32 %5882, %5791
  %5884 = lshr i32 %5883, 10
  %5885 = xor i32 %5884, %5883
  %5886 = mul i32 %5885, -1285212955
  %5887 = lshr i32 %5886, 12
  %5888 = xor i32 %5887, %5886
  %5889 = lshr i32 %5886, 21
  %5890 = xor i32 %5888, %5889
  %5891 = mul i32 %5890, -1812183147
  %5892 = xor i32 %5891, -546426753
  %5893 = lshr i32 %5892, 17
  %5894 = xor i32 %5893, %5892
  %5895 = lshr i32 %5880, 18
  %5896 = or i32 %5895, 1
  %5897 = mul i32 %5894, %5896
  %5898 = uitofp i32 %5897 to float
  %5899 = fmul fast float %5898, 0x3DEFFFFFC0000000
  %5900 = uitofp i32 %5825 to float
  %5901 = uitofp i32 %5859 to float
  %5902 = fadd fast float %5901, %5879
  %5903 = fmul fast float %5902, 3.906250e-03
  %5904 = fadd fast float %5903, %5900
  %5905 = fmul fast float %5904, 3.906250e-03
  %5906 = uitofp i32 %5791 to float
  %5907 = fadd fast float %5899, %5906
  %5908 = add i32 %2378, 131072
  %5909 = add i32 %5908, %5752
  %5910 = mul i32 %5909, 1365458477
  %5911 = xor i32 %5910, %2379
  %5912 = mul i32 %5911, -512718531
  %5913 = lshr i32 %5910, 16
  %5914 = xor i32 %5912, %5913
  %5915 = lshr i32 %5914, 4
  %5916 = and i32 %5915, 4095
  %5917 = lshr i32 %5910, 8
  %5918 = xor i32 %5914, %5917
  %5919 = xor i32 %5918, %5916
  %5920 = mul i32 %5919, 153742143
  %5921 = lshr i32 %5910, 23
  %5922 = xor i32 %5920, %5921
  %5923 = lshr i32 %5922, 1
  %5924 = and i32 %5923, 32767
  %5925 = xor i32 %5924, %5922
  %5926 = lshr i32 %5910, 27
  %5927 = or i32 %5926, 1
  %5928 = mul i32 %5927, 1765145193
  %5929 = mul i32 %5928, %5925
  %5930 = lshr i32 %5929, 11
  %5931 = and i32 %5930, 31
  %5932 = xor i32 %5931, %5929
  %5933 = mul i32 %5932, 1960620803
  %5934 = lshr i32 %5933, 2
  %5935 = and i32 %5934, 16383
  %5936 = xor i32 %5935, %5933
  %5937 = mul i32 %5936, -1638916925
  %5938 = lshr i32 %5937, 2
  %5939 = and i32 %5938, 16383
  %5940 = xor i32 %5939, %5937
  %5941 = mul i32 %5940, -933190689
  %5942 = and i32 %5941, 65535
  %5943 = lshr i32 %5942, 5
  %5944 = xor i32 %5943, %5942
  %5945 = add i32 %5944, %5910
  %5946 = and i32 %5945, 65535
  %5947 = mul i32 %5909, 1757159915
  %5948 = and i32 %5945, 255
  %5949 = xor i32 %5948, %5947
  %5950 = mul i32 %5949, -512718531
  %5951 = lshr i32 %5947, 16
  %5952 = xor i32 %5950, %5951
  %5953 = lshr i32 %5952, 4
  %5954 = and i32 %5953, 15
  %5955 = lshr i32 %5947, 8
  %5956 = xor i32 %5952, %5955
  %5957 = xor i32 %5956, %5954
  %5958 = mul i32 %5957, 153742143
  %5959 = lshr i32 %5947, 23
  %5960 = xor i32 %5958, %5959
  %5961 = lshr i32 %5960, 1
  %5962 = and i32 %5961, 127
  %5963 = xor i32 %5962, %5960
  %5964 = lshr i32 %5947, 27
  %5965 = or i32 %5964, 1
  %5966 = mul i32 %5965, -1074439621
  %5967 = mul i32 %5966, %5963
  %5968 = lshr i32 %5967, 2
  %5969 = and i32 %5968, 63
  %5970 = xor i32 %5969, %5967
  %5971 = mul i32 %5970, -1638916925
  %5972 = lshr i32 %5971, 2
  %5973 = and i32 %5972, 63
  %5974 = xor i32 %5973, %5971
  %5975 = mul i32 %5974, -933190689
  %5976 = lshr i32 %5975, 5
  %5977 = and i32 %5976, 7
  %5978 = xor i32 %5977, %5975
  %5979 = add i32 %5978, %5947
  %5980 = and i32 %5979, 255
  %5981 = mul i32 %5909, 48610963
  %5982 = lshr i32 %5946, 8
  %5983 = xor i32 %5982, %5981
  %5984 = mul i32 %5983, -512718531
  %5985 = lshr i32 %5981, 16
  %5986 = xor i32 %5984, %5985
  %5987 = lshr i32 %5986, 4
  %5988 = and i32 %5987, 15
  %5989 = lshr i32 %5981, 8
  %5990 = xor i32 %5986, %5989
  %5991 = xor i32 %5990, %5988
  %5992 = mul i32 %5991, 153742143
  %5993 = lshr i32 %5981, 23
  %5994 = xor i32 %5992, %5993
  %5995 = lshr i32 %5994, 1
  %5996 = and i32 %5995, 127
  %5997 = xor i32 %5996, %5994
  %5998 = lshr i32 %5981, 27
  %5999 = or i32 %5998, 1
  %6000 = mul i32 %5999, -1074439621
  %6001 = mul i32 %6000, %5997
  %6002 = lshr i32 %6001, 2
  %6003 = and i32 %6002, 63
  %6004 = xor i32 %6003, %6001
  %6005 = mul i32 %6004, -1638916925
  %6006 = lshr i32 %6005, 2
  %6007 = and i32 %6006, 63
  %6008 = xor i32 %6007, %6005
  %6009 = mul i32 %6008, -933190689
  %6010 = lshr i32 %6009, 5
  %6011 = and i32 %6010, 7
  %6012 = xor i32 %6011, %6009
  %6013 = add i32 %6012, %5981
  %6014 = and i32 %6013, 255
  %6015 = mul i32 %5909, -1770354533
  %6016 = lshr i32 %6015, 17
  %6017 = xor i32 %6016, %6015
  %6018 = xor i32 %6017, %5946
  %6019 = lshr i32 %6018, 10
  %6020 = xor i32 %6019, %6018
  %6021 = mul i32 %6020, -1285212955
  %6022 = lshr i32 %6021, 12
  %6023 = xor i32 %6022, %6021
  %6024 = lshr i32 %6021, 21
  %6025 = xor i32 %6023, %6024
  %6026 = mul i32 %6025, -1812183147
  %6027 = xor i32 %6026, -546426753
  %6028 = lshr i32 %6027, 17
  %6029 = xor i32 %6028, %6027
  %6030 = lshr i32 %6015, 18
  %6031 = or i32 %6030, 1
  %6032 = mul i32 %6029, %6031
  %6033 = uitofp i32 %6032 to float
  %6034 = fmul fast float %6033, 0x3DEFFFFFC0000000
  %6035 = uitofp i32 %5980 to float
  %6036 = uitofp i32 %6014 to float
  %6037 = fadd fast float %6036, %6034
  %6038 = fmul fast float %6037, 3.906250e-03
  %6039 = fadd fast float %6038, %6035
  %6040 = fmul fast float %6039, 7.812500e-03
  %6041 = fadd fast float %6040, -1.000000e+00
  %6042 = fmul fast float %6041, %5659
  %6043 = fmul fast float %6041, %5660
  %6044 = fmul fast float %6041, %5661
  %6045 = fsub fast float %5667, %2242
  %6046 = fadd fast float %6045, %6042
  %6047 = fsub fast float %5668, %2203
  %6048 = fadd fast float %6047, %6043
  %6049 = fsub fast float %5669, %2243
  %6050 = fadd fast float %6049, %6044
  %6051 = call float @dx.op.dot3.f32(i32 55, float %6046, float %6048, float %6050, float %6046, float %6048, float %6050)  ; Dot3(ax,ay,az,bx,by,bz)
  %6052 = call float @dx.op.unary.f32(i32 24, float %6051)  ; Sqrt(value)
  %6053 = fdiv fast float 1.000000e+00, %6052
  %6054 = fmul fast float %6053, %6046
  %6055 = fmul fast float %6053, %6048
  %6056 = fmul fast float %6053, %6050
  %6057 = fmul fast float %5664, %5664
  %6058 = fdiv fast float %6057, %6051
  %6059 = fsub fast float 1.000000e+00, %6058
  %6060 = call float @dx.op.unary.f32(i32 24, float %6059)  ; Sqrt(value)
  %6061 = fsub fast float 1.000000e+00, %5905
  %6062 = fmul fast float %6060, %5905
  %6063 = fadd fast float %6062, %6061
  %6064 = fmul fast float %6063, %6063
  %6065 = fsub fast float 1.000000e+00, %6064
  %6066 = call float @dx.op.unary.f32(i32 24, float %6065)  ; Sqrt(value)
  %6067 = fmul fast float %5907, 0x3F1921FB60000000
  %6068 = call float @dx.op.unary.f32(i32 12, float %6067)  ; Cos(value)
  %6069 = fmul fast float %6068, %6066
  %6070 = call float @dx.op.unary.f32(i32 13, float %6067)  ; Sin(value)
  %6071 = fmul fast float %6070, %6066
  %6072 = call float @dx.op.unary.f32(i32 6, float %6054)  ; FAbs(value)
  %6073 = call float @dx.op.unary.f32(i32 6, float %6055)  ; FAbs(value)
  %6074 = fmul fast float %6073, 5.000000e+00
  %6075 = fcmp fast ogt float %6072, %6074
  %6076 = fmul fast float %6056, %6056
  br i1 %6075, label %6077, label %6084

; <label>:6077                                    ; preds = %5751
  %6078 = fmul fast float %6054, %6054
  %6079 = fadd fast float %6078, %6076
  %6080 = call float @dx.op.unary.f32(i32 25, float %6079)  ; Rsqrt(value)
  %6081 = fmul fast float %6056, %6080
  %6082 = fsub fast float -0.000000e+00, %6081
  %6083 = fmul fast float %6080, %6054
  br label %6091

; <label>:6084                                    ; preds = %5751
  %6085 = fmul fast float %6055, %6055
  %6086 = fadd fast float %6085, %6076
  %6087 = call float @dx.op.unary.f32(i32 25, float %6086)  ; Rsqrt(value)
  %6088 = fmul fast float %6056, %6087
  %6089 = fsub fast float -0.000000e+00, %6088
  %6090 = fmul fast float %6087, %6055
  br label %6091

; <label>:6091                                    ; preds = %6084, %6077
  %6092 = phi float [ %6082, %6077 ], [ 0.000000e+00, %6084 ]
  %6093 = phi float [ 0.000000e+00, %6077 ], [ %6089, %6084 ]
  %6094 = phi float [ %6083, %6077 ], [ %6090, %6084 ]
  %6095 = fmul fast float %6093, %6056
  %6096 = fmul fast float %6094, %6055
  %6097 = fsub fast float %6095, %6096
  %6098 = fmul fast float %6094, %6054
  %6099 = fmul fast float %6092, %6056
  %6100 = fsub fast float %6098, %6099
  %6101 = fmul fast float %6092, %6055
  %6102 = fmul fast float %6093, %6054
  %6103 = fsub fast float %6101, %6102
  %6104 = fmul fast float %6092, %6069
  %6105 = call float @dx.op.tertiary.f32(i32 46, float %6071, float %6097, float %6104)  ; FMad(a,b,c)
  %6106 = call float @dx.op.tertiary.f32(i32 46, float %6063, float %6054, float %6105)  ; FMad(a,b,c)
  %6107 = fmul fast float %6093, %6069
  %6108 = call float @dx.op.tertiary.f32(i32 46, float %6071, float %6100, float %6107)  ; FMad(a,b,c)
  %6109 = call float @dx.op.tertiary.f32(i32 46, float %6063, float %6055, float %6108)  ; FMad(a,b,c)
  %6110 = fmul fast float %6094, %6069
  %6111 = call float @dx.op.tertiary.f32(i32 46, float %6071, float %6103, float %6110)  ; FMad(a,b,c)
  %6112 = call float @dx.op.tertiary.f32(i32 46, float %6063, float %6056, float %6111)  ; FMad(a,b,c)
  %6113 = call float @dx.op.dot3.f32(i32 55, float %6106, float %6109, float %6112, float %6106, float %6109, float %6112)  ; Dot3(ax,ay,az,bx,by,bz)
  %6114 = call float @dx.op.unary.f32(i32 25, float %6113)  ; Rsqrt(value)
  %6115 = fmul fast float %6114, %6106
  %6116 = fmul fast float %6114, %6109
  %6117 = fmul fast float %6114, %6112
  %6118 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %6119 = extractvalue %dx.types.CBufRet.f32 %6118, 0
  %6120 = extractvalue %dx.types.CBufRet.f32 %6118, 1
  %6121 = extractvalue %dx.types.CBufRet.f32 %6118, 2
  %6122 = fadd fast float %6119, %2242
  %6123 = fadd fast float %6120, %2203
  %6124 = fadd fast float %6121, %2243
  %6125 = getelementptr inbounds %struct.Payload, %struct.Payload* %39, i32 0, i32 0
  store float 0.000000e+00, float* %6125, align 8, !tbaa !90, !noalias !216
  %6126 = getelementptr inbounds %struct.Payload, %struct.Payload* %39, i32 0, i32 1
  store i32 -1, i32* %6126, align 4, !tbaa !99, !noalias !216
  %6127 = getelementptr inbounds %struct.Payload, %struct.Payload* %39, i32 0, i32 2
  store i32 -1, i32* %6127, align 8, !tbaa !99, !noalias !216
  %6128 = getelementptr inbounds %struct.Payload, %struct.Payload* %39, i32 0, i32 3
  store i32 -1, i32* %6128, align 4, !tbaa !99, !noalias !216
  %6129 = call %dx.types.Handle @dx.op.createHandleForLib.struct.RaytracingAccelerationStructure(i32 160, %struct.RaytracingAccelerationStructure %18)  ; CreateHandleForLib(Resource)
  call void @dx.op.traceRay.struct.Payload(i32 157, %dx.types.Handle %6129, i32 0, i32 255, i32 0, i32 0, i32 0, float %6122, float %6123, float %6124, float 0x3FB99999A0000000, float %6115, float %6116, float %6117, float %6052, %struct.Payload* nonnull %39)  ; TraceRay(AccelerationStructure,RayFlags,InstanceInclusionMask,RayContributionToHitGroupIndex,MultiplierForGeometryContributionToShaderIndex,MissShaderIndex,Origin_X,Origin_Y,Origin_Z,TMin,Direction_X,Direction_Y,Direction_Z,TMax,payload)
  %6130 = load float, float* %6125, align 8
  %6131 = fcmp fast oeq float %6130, 1.000000e+06
  br i1 %6131, label %6132, label %6386

; <label>:6132                                    ; preds = %6091
  %6133 = fmul fast float %5748, %5646
  %6134 = fmul fast float %5748, %5647
  %6135 = fmul fast float %5748, %5648
  %6136 = fadd fast float %5702, %5183
  %6137 = fadd fast float %5703, %5184
  %6138 = fadd fast float %5704, %5185
  %6139 = call float @dx.op.dot3.f32(i32 55, float %5702, float %5703, float %5704, float %5696, float %5697, float %5698)  ; Dot3(ax,ay,az,bx,by,bz)
  %6140 = call float @dx.op.dot3.f32(i32 55, float %5702, float %5703, float %5704, float %6136, float %6137, float %6138)  ; Dot3(ax,ay,az,bx,by,bz)
  %6141 = fdiv fast float 1.000000e+00, %6140
  %6142 = fmul fast float %6141, %6139
  %6143 = fmul fast float %6142, %6136
  %6144 = fmul fast float %6142, %6137
  %6145 = fmul fast float %6142, %6138
  %6146 = fadd fast float %5683, %6143
  %6147 = fadd fast float %5684, %6144
  %6148 = fadd fast float %5685, %6145
  %6149 = call float @dx.op.dot3.f32(i32 55, float %6146, float %6147, float %6148, float %5659, float %5660, float %5661)  ; Dot3(ax,ay,az,bx,by,bz)
  %6150 = fdiv fast float %6149, %5682
  %6151 = call float @dx.op.binary.f32(i32 35, float %6150, float -1.000000e+00)  ; FMax(a,b)
  %6152 = call float @dx.op.binary.f32(i32 36, float %6151, float 1.000000e+00)  ; FMin(a,b)
  %6153 = fmul fast float %6152, %5659
  %6154 = fmul fast float %6152, %5660
  %6155 = fmul fast float %6152, %5661
  %6156 = fadd fast float %6045, %6153
  %6157 = fadd fast float %6047, %6154
  %6158 = fadd fast float %6049, %6155
  %6159 = call float @dx.op.dot3.f32(i32 55, float %6156, float %6157, float %6158, float %6156, float %6157, float %6158)  ; Dot3(ax,ay,az,bx,by,bz)
  %6160 = call float @dx.op.unary.f32(i32 25, float %6159)  ; Rsqrt(value)
  %6161 = fmul fast float %6156, %6160
  %6162 = fmul fast float %6157, %6160
  %6163 = fmul fast float %6158, %6160
  %6164 = fsub fast float %6161, %198
  %6165 = fsub fast float %6162, %199
  %6166 = fsub fast float %6163, %200
  %6167 = call float @dx.op.dot3.f32(i32 55, float %6164, float %6165, float %6166, float %6164, float %6165, float %6166)  ; Dot3(ax,ay,az,bx,by,bz)
  %6168 = call float @dx.op.unary.f32(i32 25, float %6167)  ; Rsqrt(value)
  %6169 = fmul fast float %6164, %6168
  %6170 = fmul fast float %6165, %6168
  %6171 = fmul fast float %6166, %6168
  %6172 = call float @dx.op.dot3.f32(i32 55, float %6161, float %6162, float %6163, float %5183, float %5184, float %5185)  ; Dot3(ax,ay,az,bx,by,bz)
  %6173 = call float @dx.op.dot3.f32(i32 55, float %5208, float %5209, float %5210, float %6169, float %6170, float %6171)  ; Dot3(ax,ay,az,bx,by,bz)
  %6174 = fmul fast float %6160, %5664
  %6175 = fmul fast float %6174, %6174
  %6176 = bitcast float %6175 to i32
  %6177 = ashr i32 %6176, 1
  %6178 = sub nsw i32 1597463007, %6177
  %6179 = bitcast i32 %6178 to float
  %6180 = fmul fast float %6179, %6172
  %6181 = fmul fast float %6180, %6180
  %6182 = fsub fast float 1.000000e+00, %6181
  %6183 = fmul fast float %6172, %6175
  %6184 = call float @dx.op.unary.f32(i32 7, float %6183)  ; Saturate(value)
  %6185 = fmul fast float %6180, 5.000000e-01
  %6186 = fadd fast float %6185, 5.000000e-01
  %6187 = fmul fast float %6186, %6175
  %6188 = call float @dx.op.unary.f32(i32 7, float %6187)  ; Saturate(value)
  %6189 = bitcast float %6188 to i32
  %6190 = ashr i32 %6189, 1
  %6191 = add nsw i32 %6190, 532487669
  %6192 = bitcast i32 %6191 to float
  %6193 = fmul fast float %6192, %6188
  %6194 = fcmp fast ogt float %6182, 0.000000e+00
  %6195 = select i1 %6194, float %6193, float %6184
  %6196 = call float @dx.op.unary.f32(i32 7, float %6172)  ; Saturate(value)
  %6197 = fmul fast float %6196, %6196
  %6198 = fmul fast float %6197, %5239
  %6199 = call float @dx.op.unary.f32(i32 7, float %6198)  ; Saturate(value)
  %6200 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 242)  ; CBufferLoadLegacy(handle,regIndex)
  %6201 = extractvalue %dx.types.CBufRet.f32 %6200, 0
  %6202 = bitcast float %6201 to i32
  %6203 = lshr i32 %6202, 8
  %6204 = and i32 %6203, 255
  %6205 = uitofp i32 %6204 to float
  %6206 = fptoui float %6205 to i32
  %6207 = and i32 %6206, 8
  %6208 = icmp ne i32 %6207, 0
  %6209 = select i1 %6208, float %6199, float 1.000000e+00
  %6210 = fmul fast float %6209, %6195
  %6211 = call float @dx.op.dot3.f32(i32 55, float %5659, float %5660, float %5661, float %5218, float %5219, float %5220)  ; Dot3(ax,ay,az,bx,by,bz)
  %6212 = call float @dx.op.dot3.f32(i32 55, float %5659, float %5660, float %5661, float %5696, float %5697, float %5698)  ; Dot3(ax,ay,az,bx,by,bz)
  %6213 = call float @dx.op.dot3.f32(i32 55, float %5218, float %5219, float %5220, float %5696, float %5697, float %5698)  ; Dot3(ax,ay,az,bx,by,bz)
  %6214 = fmul fast float %6211, %6211
  %6215 = fsub fast float %5682, %6214
  %6216 = fmul fast float %6213, %6211
  %6217 = fsub fast float %6216, %6212
  %6218 = fdiv fast float %6217, %6215
  %6219 = call float @dx.op.binary.f32(i32 35, float %6218, float -1.500000e+00)  ; FMax(a,b)
  %6220 = call float @dx.op.binary.f32(i32 36, float %6219, float 1.500000e+00)  ; FMin(a,b)
  %6221 = fmul fast float %6220, %6220
  %6222 = fmul fast float %6221, 0x3FC2F68380000000
  %6223 = fmul fast float %6222, %6220
  %6224 = fsub fast float %6220, %6223
  %6225 = fmul fast float %6224, %5659
  %6226 = fmul fast float %6224, %5660
  %6227 = fmul fast float %6224, %5661
  %6228 = fadd fast float %6225, %5693
  %6229 = fadd fast float %6226, %5694
  %6230 = fadd fast float %6227, %5695
  %6231 = fsub fast float %6228, %2242
  %6232 = fsub fast float %6229, %2203
  %6233 = fsub fast float %6230, %2243
  %6234 = call float @dx.op.dot3.f32(i32 55, float %6231, float %6232, float %6233, float %5218, float %5219, float %5220)  ; Dot3(ax,ay,az,bx,by,bz)
  %6235 = fmul fast float %6234, %5218
  %6236 = fmul fast float %6234, %5219
  %6237 = fmul fast float %6234, %5220
  %6238 = fsub fast float %6235, %6231
  %6239 = fsub fast float %6236, %6232
  %6240 = fsub fast float %6237, %6233
  %6241 = call float @dx.op.dot3.f32(i32 55, float %6238, float %6239, float %6240, float %6238, float %6239, float %6240)  ; Dot3(ax,ay,az,bx,by,bz)
  %6242 = bitcast float %6241 to i32
  %6243 = ashr i32 %6242, 1
  %6244 = sub nsw i32 1597463007, %6243
  %6245 = bitcast i32 %6244 to float
  %6246 = fmul fast float %6245, %5664
  %6247 = call float @dx.op.dot3.f32(i32 55, float %6231, float %6232, float %6233, float %6231, float %6232, float %6233)  ; Dot3(ax,ay,az,bx,by,bz)
  %6248 = bitcast float %6247 to i32
  %6249 = ashr i32 %6248, 1
  %6250 = sub nsw i32 1597463007, %6249
  %6251 = bitcast i32 %6250 to float
  %6252 = fmul fast float %6246, %6246
  %6253 = fadd fast float %6252, 1.250000e-01
  %6254 = call float @dx.op.unary.f32(i32 25, float %6253)  ; Rsqrt(value)
  %6255 = fmul fast float %6246, %6254
  %6256 = fmul fast float %6238, %6255
  %6257 = fmul fast float %6239, %6255
  %6258 = fmul fast float %6240, %6255
  %6259 = fadd fast float %6231, %6256
  %6260 = fadd fast float %6232, %6257
  %6261 = fadd fast float %6233, %6258
  %6262 = call float @dx.op.dot3.f32(i32 55, float %6259, float %6260, float %6261, float %6259, float %6260, float %6261)  ; Dot3(ax,ay,az,bx,by,bz)
  %6263 = call float @dx.op.unary.f32(i32 25, float %6262)  ; Rsqrt(value)
  %6264 = fmul fast float %6259, %6263
  %6265 = fmul fast float %6260, %6263
  %6266 = fmul fast float %6261, %6263
  %6267 = fsub fast float %6264, %198
  %6268 = fsub fast float %6265, %199
  %6269 = fsub fast float %6266, %200
  %6270 = call float @dx.op.dot3.f32(i32 55, float %6267, float %6268, float %6269, float %6267, float %6268, float %6269)  ; Dot3(ax,ay,az,bx,by,bz)
  %6271 = call float @dx.op.unary.f32(i32 25, float %6270)  ; Rsqrt(value)
  %6272 = fmul fast float %6267, %6271
  %6273 = fmul fast float %6268, %6271
  %6274 = fmul fast float %6269, %6271
  %6275 = call float @dx.op.dot3.f32(i32 55, float %5183, float %5184, float %5185, float %6272, float %6273, float %6274)  ; Dot3(ax,ay,az,bx,by,bz)
  %6276 = fmul fast float %6275, %6275
  %6277 = call float @dx.op.unary.f32(i32 6, float %6172)  ; FAbs(value)
  %6278 = fsub fast float 1.000000e+00, %5207
  %6279 = call float @dx.op.binary.f32(i32 35, float %6278, float 0x3F847AE140000000)  ; FMax(a,b)
  %6280 = fmul fast float %6279, %6279
  %6281 = fmul fast float %6280, %6280
  %6282 = fsub fast float 1.000000e+00, %6281
  %6283 = fmul fast float %5212, %5212
  %6284 = fmul fast float %6283, %6282
  %6285 = fadd fast float %6284, %6281
  %6286 = bitcast float %6285 to i32
  %6287 = ashr i32 %6286, 1
  %6288 = add nsw i32 %6287, 532487669
  %6289 = bitcast i32 %6288 to float
  %6290 = fadd fast float %6289, %5212
  %6291 = fmul fast float %6281, %6276
  %6292 = fsub fast float 1.000000e+00, %6276
  %6293 = fadd fast float %6292, %6291
  %6294 = fmul fast float %6277, %6277
  %6295 = fmul fast float %6294, %6282
  %6296 = fadd fast float %6295, %6281
  %6297 = bitcast float %6296 to i32
  %6298 = ashr i32 %6297, 1
  %6299 = add nsw i32 %6298, 532487669
  %6300 = bitcast i32 %6299 to float
  %6301 = fadd fast float %6300, %6277
  %6302 = fmul fast float %6293, %6293
  %6303 = fmul fast float %6302, %6290
  %6304 = fmul fast float %6303, %6301
  %6305 = fdiv fast float 1.000000e+00, %6304
  %6306 = bitcast float %6281 to i32
  %6307 = sitofp i32 %6306 to float
  %6308 = fmul fast float %6307, 0x3FE7F73180000000
  %6309 = fadd fast float %6308, 0x41AFE27C40000000
  %6310 = fptosi float %6309 to i32
  %6311 = bitcast i32 %6310 to float
  %6312 = fmul fast float %5664, 0x3FD80E9D60000000
  %6313 = fmul fast float %6312, %6251
  %6314 = fadd fast float %6311, %6313
  %6315 = bitcast float %6314 to i32
  %6316 = sub nsw i32 2129859010, %6315
  %6317 = bitcast i32 %6316 to float
  %6318 = fmul fast float %6281, %6305
  %6319 = fmul fast float %6318, %6311
  %6320 = fmul fast float %6319, %6317
  %6321 = call float @dx.op.unary.f32(i32 6, float %6173)  ; FAbs(value)
  %6322 = fsub fast float 1.000000e+00, %6321
  %6323 = bitcast float %6322 to i32
  %6324 = sitofp i32 %6323 to float
  %6325 = fmul fast float %6324, 5.000000e+00
  %6326 = fadd fast float %6325, 0xC1EFBF8940000000
  %6327 = fptosi float %6326 to i32
  %6328 = bitcast i32 %6327 to float
  %6329 = fsub fast float 1.000000e+00, %5204
  %6330 = fsub fast float 1.000000e+00, %5205
  %6331 = fsub fast float 1.000000e+00, %5206
  %6332 = fmul fast float %6328, %6329
  %6333 = fmul fast float %6328, %6330
  %6334 = fmul fast float %6328, %6331
  %6335 = fadd fast float %6332, %5204
  %6336 = fadd fast float %6333, %5205
  %6337 = fadd fast float %6334, %5206
  %6338 = fmul fast float %6172, 9.843750e-01
  %6339 = fmul fast float %5207, 9.843750e-01
  %6340 = fadd fast float %6338, 7.812500e-03
  %6341 = fadd fast float %6339, 7.812500e-03
  %6342 = call %dx.types.Handle @"dx.op.createHandleForLib.class.Texture2D<vector<float, 4> >"(i32 160, %"class.Texture2D<vector<float, 4> >" %2)  ; CreateHandleForLib(Resource)
  %6343 = call %dx.types.Handle @dx.op.createHandleForLib.struct.SamplerState(i32 160, %struct.SamplerState %1)  ; CreateHandleForLib(Resource)
  %6344 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6342, %dx.types.Handle %6343, float %6340, float %6341, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6345 = extractvalue %dx.types.ResRet.f32 %6344, 2
  %6346 = extractvalue %dx.types.ResRet.f32 %6344, 3
  %6347 = fmul fast float %6345, %5204
  %6348 = fmul fast float %6345, %5205
  %6349 = fmul fast float %6345, %5206
  %6350 = fadd fast float %6347, %6346
  %6351 = fadd fast float %6348, %6346
  %6352 = fadd fast float %6349, %6346
  %6353 = call float @dx.op.binary.f32(i32 35, float %6351, float %6352)  ; FMax(a,b)
  %6354 = call float @dx.op.binary.f32(i32 35, float %6350, float %6353)  ; FMax(a,b)
  %6355 = fsub fast float 1.000000e+00, %6354
  %6356 = fmul fast float %6320, %6335
  %6357 = fmul fast float %6320, %6336
  %6358 = fmul fast float %6320, %6337
  %6359 = fmul fast float %5679, %5149
  %6360 = fmul fast float %5679, %5150
  %6361 = fmul fast float %5679, %5151
  %6362 = fadd fast float %6356, %6359
  %6363 = fadd fast float %6357, %6360
  %6364 = fadd fast float %6358, %6361
  %6365 = fmul fast float %6210, %6133
  %6366 = fmul fast float %6365, %6355
  %6367 = fmul fast float %6210, %6134
  %6368 = fmul fast float %6367, %6355
  %6369 = fmul fast float %6210, %6135
  %6370 = fmul fast float %6369, %6355
  %6371 = fmul fast float %6365, %6362
  %6372 = fmul fast float %6367, %6363
  %6373 = fmul fast float %6369, %6364
  %6374 = fmul fast float %6366, %2989
  %6375 = fmul fast float %6368, %2989
  %6376 = fmul fast float %6370, %2989
  %6377 = fadd fast float %6374, %5640
  %6378 = fadd fast float %6375, %5641
  %6379 = fadd fast float %6376, %5642
  %6380 = fmul fast float %6371, %2989
  %6381 = fmul fast float %6372, %2989
  %6382 = fmul fast float %6373, %2989
  %6383 = fadd fast float %6380, %5637
  %6384 = fadd fast float %6381, %5638
  %6385 = fadd fast float %6382, %5639
  br label %6386

; <label>:6386                                    ; preds = %6132, %6091, %5729
  %6387 = phi float [ %5637, %6091 ], [ %6383, %6132 ], [ %5637, %5729 ]
  %6388 = phi float [ %5638, %6091 ], [ %6384, %6132 ], [ %5638, %5729 ]
  %6389 = phi float [ %5639, %6091 ], [ %6385, %6132 ], [ %5639, %5729 ]
  %6390 = phi float [ %5640, %6091 ], [ %6377, %6132 ], [ %5640, %5729 ]
  %6391 = phi float [ %5641, %6091 ], [ %6378, %6132 ], [ %5641, %5729 ]
  %6392 = phi float [ %5642, %6091 ], [ %6379, %6132 ], [ %5642, %5729 ]
  %6393 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %6394 = extractvalue %dx.types.CBufRet.i32 %6393, 1
  %6395 = icmp ult i32 %5750, %6394
  br i1 %6395, label %5635, label %6396

; <label>:6396                                    ; preds = %6386
  br label %6397

; <label>:6397                                    ; preds = %6396, %5630, %5620
  %6398 = phi float [ %5621, %5620 ], [ %5621, %5630 ], [ %6387, %6396 ]
  %6399 = phi float [ %5622, %5620 ], [ %5622, %5630 ], [ %6388, %6396 ]
  %6400 = phi float [ %5623, %5620 ], [ %5623, %5630 ], [ %6389, %6396 ]
  %6401 = phi float [ %5624, %5620 ], [ %5624, %5630 ], [ %6390, %6396 ]
  %6402 = phi float [ %5625, %5620 ], [ %5625, %5630 ], [ %6391, %6396 ]
  %6403 = phi float [ %5626, %5620 ], [ %5626, %5630 ], [ %6392, %6396 ]
  %6404 = icmp sgt i32 %228, %59
  %6405 = select i1 %6404, float 0.000000e+00, float %6401
  %6406 = select i1 %6404, float 0.000000e+00, float %6402
  %6407 = select i1 %6404, float 0.000000e+00, float %6403
  %6408 = icmp sgt i32 %228, %76
  %6409 = select i1 %6408, float 0.000000e+00, float %6398
  %6410 = select i1 %6408, float 0.000000e+00, float %6399
  %6411 = select i1 %6408, float 0.000000e+00, float %6400
  %6412 = fmul fast float %6405, %5195
  %6413 = fmul fast float %6406, %5196
  %6414 = fmul fast float %6407, %5197
  %6415 = fadd fast float %6412, %6409
  %6416 = fadd fast float %6413, %6410
  %6417 = fadd fast float %6414, %6411
  %6418 = fmul fast float %6415, %201
  %6419 = fmul fast float %6416, %202
  %6420 = fmul fast float %6417, %203
  %6421 = call float @dx.op.binary.f32(i32 36, float %79, float %6418)  ; FMin(a,b)
  %6422 = call float @dx.op.binary.f32(i32 36, float %79, float %6419)  ; FMin(a,b)
  %6423 = call float @dx.op.binary.f32(i32 36, float %79, float %6420)  ; FMin(a,b)
  %6424 = fadd fast float %6421, %204
  %6425 = fadd fast float %6422, %205
  %6426 = fadd fast float %6423, %206
  %6427 = icmp eq i32 %228, 0
  br i1 %6427, label %6428, label %6438

; <label>:6428                                    ; preds = %6397
  %6429 = fadd fast float %6405, %213
  %6430 = fadd fast float %6406, %214
  %6431 = fadd fast float %6407, %215
  %6432 = fadd fast float %6409, %216
  %6433 = fadd fast float %6410, %217
  %6434 = fadd fast float %6411, %218
  %6435 = fadd fast float %5240, %219
  %6436 = fadd fast float %5241, %220
  %6437 = fadd fast float %5242, %221
  br label %6451

; <label>:6438                                    ; preds = %6397
  %6439 = fmul fast float %6415, %207
  %6440 = fmul fast float %6416, %208
  %6441 = fmul fast float %6417, %209
  %6442 = fadd fast float %6439, %222
  %6443 = fadd fast float %6440, %223
  %6444 = fadd fast float %6441, %224
  %6445 = fmul fast float %6415, %210
  %6446 = fmul fast float %6416, %211
  %6447 = fmul fast float %6417, %212
  %6448 = fadd fast float %6445, %225
  %6449 = fadd fast float %6446, %226
  %6450 = fadd fast float %6447, %227
  br label %6451

; <label>:6451                                    ; preds = %6438, %6428
  %6452 = phi float [ %6429, %6428 ], [ %213, %6438 ]
  %6453 = phi float [ %6430, %6428 ], [ %214, %6438 ]
  %6454 = phi float [ %6431, %6428 ], [ %215, %6438 ]
  %6455 = phi float [ %6432, %6428 ], [ %216, %6438 ]
  %6456 = phi float [ %6433, %6428 ], [ %217, %6438 ]
  %6457 = phi float [ %6434, %6428 ], [ %218, %6438 ]
  %6458 = phi float [ %6435, %6428 ], [ %219, %6438 ]
  %6459 = phi float [ %6436, %6428 ], [ %220, %6438 ]
  %6460 = phi float [ %6437, %6428 ], [ %221, %6438 ]
  %6461 = phi float [ %222, %6428 ], [ %6442, %6438 ]
  %6462 = phi float [ %223, %6428 ], [ %6443, %6438 ]
  %6463 = phi float [ %224, %6428 ], [ %6444, %6438 ]
  %6464 = phi float [ %225, %6428 ], [ %6448, %6438 ]
  %6465 = phi float [ %226, %6428 ], [ %6449, %6438 ]
  %6466 = phi float [ %227, %6428 ], [ %6450, %6438 ]
  %6467 = icmp slt i32 %228, %57
  br i1 %6467, label %6468, label %7091

; <label>:6468                                    ; preds = %6451
  %6469 = call float @dx.op.binary.f32(i32 36, float 0x3FEF5C2900000000, float %5207), !dx.precise !89  ; FMin(a,b)
  %6470 = mul i32 %2378, 1365458477
  %6471 = xor i32 %2379, %6470
  %6472 = mul i32 %6471, -512718531
  %6473 = lshr i32 %6470, 16
  %6474 = xor i32 %6472, %6473
  %6475 = lshr i32 %6474, 4
  %6476 = and i32 %6475, 4095
  %6477 = lshr i32 %6470, 8
  %6478 = xor i32 %6474, %6477
  %6479 = xor i32 %6478, %6476
  %6480 = mul i32 %6479, 153742143
  %6481 = lshr i32 %6470, 23
  %6482 = xor i32 %6480, %6481
  %6483 = lshr i32 %6482, 1
  %6484 = and i32 %6483, 32767
  %6485 = xor i32 %6484, %6482
  %6486 = lshr i32 %6470, 27
  %6487 = or i32 %6486, 1
  %6488 = mul i32 %6487, 1765145193
  %6489 = mul i32 %6488, %6485
  %6490 = lshr i32 %6489, 11
  %6491 = and i32 %6490, 31
  %6492 = xor i32 %6491, %6489
  %6493 = mul i32 %6492, 1960620803
  %6494 = lshr i32 %6493, 2
  %6495 = and i32 %6494, 16383
  %6496 = xor i32 %6495, %6493
  %6497 = mul i32 %6496, -1638916925
  %6498 = lshr i32 %6497, 2
  %6499 = and i32 %6498, 16383
  %6500 = xor i32 %6499, %6497
  %6501 = mul i32 %6500, -933190689
  %6502 = and i32 %6501, 65535
  %6503 = lshr i32 %6502, 5
  %6504 = xor i32 %6503, %6502
  %6505 = add i32 %6504, %6470
  %6506 = and i32 %6505, 65535
  %6507 = mul i32 %2378, 1757159915
  %6508 = and i32 %6505, 255
  %6509 = xor i32 %6508, %6507
  %6510 = mul i32 %6509, -512718531
  %6511 = lshr i32 %6507, 16
  %6512 = xor i32 %6510, %6511
  %6513 = lshr i32 %6512, 4
  %6514 = and i32 %6513, 15
  %6515 = lshr i32 %6507, 8
  %6516 = xor i32 %6512, %6515
  %6517 = xor i32 %6516, %6514
  %6518 = mul i32 %6517, 153742143
  %6519 = lshr i32 %6507, 23
  %6520 = xor i32 %6518, %6519
  %6521 = lshr i32 %6520, 1
  %6522 = and i32 %6521, 127
  %6523 = xor i32 %6522, %6520
  %6524 = lshr i32 %6507, 27
  %6525 = or i32 %6524, 1
  %6526 = mul i32 %6525, -1074439621
  %6527 = mul i32 %6526, %6523
  %6528 = lshr i32 %6527, 2
  %6529 = and i32 %6528, 63
  %6530 = xor i32 %6529, %6527
  %6531 = mul i32 %6530, -1638916925
  %6532 = lshr i32 %6531, 2
  %6533 = and i32 %6532, 63
  %6534 = xor i32 %6533, %6531
  %6535 = mul i32 %6534, -933190689
  %6536 = lshr i32 %6535, 5
  %6537 = and i32 %6536, 7
  %6538 = xor i32 %6537, %6535
  %6539 = add i32 %6538, %6507
  %6540 = and i32 %6539, 255
  %6541 = mul i32 %2378, 48610963
  %6542 = lshr i32 %6506, 8
  %6543 = xor i32 %6542, %6541
  %6544 = mul i32 %6543, -512718531
  %6545 = lshr i32 %6541, 16
  %6546 = xor i32 %6544, %6545
  %6547 = lshr i32 %6546, 4
  %6548 = and i32 %6547, 15
  %6549 = lshr i32 %6541, 8
  %6550 = xor i32 %6546, %6549
  %6551 = xor i32 %6550, %6548
  %6552 = mul i32 %6551, 153742143
  %6553 = lshr i32 %6541, 23
  %6554 = xor i32 %6552, %6553
  %6555 = lshr i32 %6554, 1
  %6556 = and i32 %6555, 127
  %6557 = xor i32 %6556, %6554
  %6558 = lshr i32 %6541, 27
  %6559 = or i32 %6558, 1
  %6560 = mul i32 %6559, -1074439621
  %6561 = mul i32 %6560, %6557
  %6562 = lshr i32 %6561, 2
  %6563 = and i32 %6562, 63
  %6564 = xor i32 %6563, %6561
  %6565 = mul i32 %6564, -1638916925
  %6566 = lshr i32 %6565, 2
  %6567 = and i32 %6566, 63
  %6568 = xor i32 %6567, %6565
  %6569 = mul i32 %6568, -933190689
  %6570 = lshr i32 %6569, 5
  %6571 = and i32 %6570, 7
  %6572 = xor i32 %6571, %6569
  %6573 = add i32 %6572, %6541
  %6574 = and i32 %6573, 255
  %6575 = mul i32 %2378, -1770354533
  %6576 = lshr i32 %6575, 17
  %6577 = xor i32 %6576, %6575
  %6578 = xor i32 %6577, %6506
  %6579 = lshr i32 %6578, 10
  %6580 = xor i32 %6579, %6578
  %6581 = mul i32 %6580, -1285212955
  %6582 = lshr i32 %6581, 12
  %6583 = xor i32 %6582, %6581
  %6584 = lshr i32 %6581, 21
  %6585 = xor i32 %6583, %6584
  %6586 = mul i32 %6585, -1812183147
  %6587 = xor i32 %6586, -546426753
  %6588 = lshr i32 %6587, 17
  %6589 = xor i32 %6588, %6587
  %6590 = lshr i32 %6575, 18
  %6591 = or i32 %6590, 1
  %6592 = mul i32 %6589, %6591
  %6593 = uitofp i32 %6592 to float
  %6594 = fmul float %6593, 0x3DEFFFFFC0000000
  %6595 = mul i32 %2378, 915196087
  %6596 = lshr i32 %6595, 17
  %6597 = xor i32 %6596, %6595
  %6598 = xor i32 %6597, %6506
  %6599 = lshr i32 %6598, 10
  %6600 = xor i32 %6599, %6598
  %6601 = mul i32 %6600, -1285212955
  %6602 = lshr i32 %6601, 12
  %6603 = xor i32 %6602, %6601
  %6604 = lshr i32 %6601, 21
  %6605 = xor i32 %6603, %6604
  %6606 = mul i32 %6605, -1812183147
  %6607 = xor i32 %6606, -546426753
  %6608 = lshr i32 %6607, 17
  %6609 = xor i32 %6608, %6607
  %6610 = lshr i32 %6595, 18
  %6611 = or i32 %6610, 1
  %6612 = mul i32 %6609, %6611
  %6613 = uitofp i32 %6612 to float
  %6614 = fmul float %6613, 0x3DEFFFFFC0000000
  %6615 = uitofp i32 %6540 to float
  %6616 = uitofp i32 %6574 to float
  %6617 = fadd float %6594, %6616
  %6618 = fmul float %6617, 3.906250e-03
  %6619 = fadd float %6615, %6618
  %6620 = fmul float %6619, 3.906250e-03
  %6621 = uitofp i32 %6506 to float
  %6622 = fadd float %6621, %6614
  %6623 = fmul float %6622, 0x3EF0000000000000
  %6624 = select i1 %5237, float 0.000000e+00, float 5.000000e-01
  %6625 = icmp sgt i32 %228, %77
  %6626 = select i1 %6625, float 1.000000e+00, float %6624
  %6627 = icmp sgt i32 %228, %60
  %6628 = select i1 %6627, float 0.000000e+00, float %6626
  %6629 = fcmp ole float %6620, %6628
  %6630 = fmul float %6623, 2.000000e+00
  br i1 %6629, label %6631, label %6738

; <label>:6631                                    ; preds = %6468
  %6632 = fdiv float 1.000000e+00, %6628
  %6633 = fdiv float 0.000000e+00, %6628
  %6634 = fmul float %6620, %6632
  %6635 = fsub float %6634, %6633
  %6636 = fadd float %6635, 0.000000e+00
  %6637 = call float @dx.op.unary.f32(i32 7, float %6636), !dx.precise !89  ; Saturate(value)
  %6638 = fmul float %6637, 2.000000e+00
  %6639 = fadd float %6638, -1.000000e+00
  %6640 = fadd float %6630, -1.000000e+00
  %6641 = fcmp oeq float %6639, 0.000000e+00
  %6642 = fcmp oeq float %6640, 0.000000e+00
  %6643 = and i1 %6642, %6641
  br i1 %6643, label %6674, label %6644

; <label>:6644                                    ; preds = %6631
  %6645 = fsub float -0.000000e+00, %6640
  %6646 = fcmp ult float %6639, %6645
  br i1 %6646, label %6657, label %6647

; <label>:6647                                    ; preds = %6644
  %6648 = fcmp ogt float %6639, %6640
  br i1 %6648, label %6649, label %6654

; <label>:6649                                    ; preds = %6647
  %6650 = fcmp ogt float %6640, 0.000000e+00
  %6651 = fdiv float %6640, %6639
  br i1 %6650, label %6666, label %6652

; <label>:6652                                    ; preds = %6649
  %6653 = fadd float %6651, 8.000000e+00
  br label %6666

; <label>:6654                                    ; preds = %6647
  %6655 = fdiv float %6639, %6640
  %6656 = fsub float 2.000000e+00, %6655
  br label %6666

; <label>:6657                                    ; preds = %6644
  %6658 = fcmp ugt float %6639, %6640
  br i1 %6658, label %6663, label %6659

; <label>:6659                                    ; preds = %6657
  %6660 = fsub float -0.000000e+00, %6639
  %6661 = fdiv float %6640, %6660
  %6662 = fsub float 4.000000e+00, %6661
  br label %6666

; <label>:6663                                    ; preds = %6657
  %6664 = fdiv float %6639, %6645
  %6665 = fadd float %6664, 6.000000e+00
  br label %6666

; <label>:6666                                    ; preds = %6663, %6659, %6654, %6652, %6649
  %6667 = phi float [ %6653, %6652 ], [ %6656, %6654 ], [ %6662, %6659 ], [ %6665, %6663 ], [ %6651, %6649 ]
  %6668 = phi float [ %6639, %6652 ], [ %6640, %6654 ], [ %6660, %6659 ], [ %6645, %6663 ], [ %6639, %6649 ]
  %6669 = fmul float %6667, 0x3FE921FB60000000
  %6670 = call float @dx.op.unary.f32(i32 12, float %6669), !dx.precise !89  ; Cos(value)
  %6671 = fmul float %6668, %6670
  %6672 = call float @dx.op.unary.f32(i32 13, float %6669), !dx.precise !89  ; Sin(value)
  %6673 = fmul float %6668, %6672
  br label %6674

; <label>:6674                                    ; preds = %6666, %6631
  %6675 = phi float [ %6671, %6666 ], [ 0.000000e+00, %6631 ]
  %6676 = phi float [ %6673, %6666 ], [ 0.000000e+00, %6631 ]
  %6677 = fmul float %6675, %6675
  %6678 = fsub float 1.000000e+00, %6677
  %6679 = fmul float %6676, %6676
  %6680 = fsub float %6678, %6679
  %6681 = call float @dx.op.unary.f32(i32 7, float %6680), !dx.precise !89  ; Saturate(value)
  %6682 = call float @dx.op.unary.f32(i32 24, float %6681), !dx.precise !89  ; Sqrt(value)
  %6683 = call float @dx.op.unary.f32(i32 6, float %5183), !dx.precise !89  ; FAbs(value)
  %6684 = call float @dx.op.unary.f32(i32 6, float %5184), !dx.precise !89  ; FAbs(value)
  %6685 = fmul float %6684, 5.000000e+00
  %6686 = fcmp ogt float %6683, %6685
  %6687 = fmul float %5185, %5185
  br i1 %6686, label %6688, label %6695

; <label>:6688                                    ; preds = %6674
  %6689 = fmul float %5183, %5183
  %6690 = fadd float %6689, %6687
  %6691 = call float @dx.op.unary.f32(i32 25, float %6690), !dx.precise !89  ; Rsqrt(value)
  %6692 = fmul float %5185, %6691
  %6693 = fsub float -0.000000e+00, %6692
  %6694 = fmul float %5183, %6691
  br label %6702

; <label>:6695                                    ; preds = %6674
  %6696 = fmul float %5184, %5184
  %6697 = fadd float %6696, %6687
  %6698 = call float @dx.op.unary.f32(i32 25, float %6697), !dx.precise !89  ; Rsqrt(value)
  %6699 = fmul float %5185, %6698
  %6700 = fsub float -0.000000e+00, %6699
  %6701 = fmul float %5184, %6698
  br label %6702

; <label>:6702                                    ; preds = %6695, %6688
  %6703 = phi float [ %6693, %6688 ], [ 0.000000e+00, %6695 ]
  %6704 = phi float [ 0.000000e+00, %6688 ], [ %6700, %6695 ]
  %6705 = phi float [ %6694, %6688 ], [ %6701, %6695 ]
  %6706 = fmul float %5185, %6704
  %6707 = fmul float %5184, %6705
  %6708 = fsub float %6706, %6707
  %6709 = fmul float %5183, %6705
  %6710 = fmul float %5185, %6703
  %6711 = fsub float %6709, %6710
  %6712 = fmul float %5184, %6703
  %6713 = fmul float %5183, %6704
  %6714 = fsub float %6712, %6713
  %6715 = fmul float %6675, %6703
  %6716 = call float @dx.op.tertiary.f32(i32 46, float %6676, float %6708, float %6715), !dx.precise !89  ; FMad(a,b,c)
  %6717 = call float @dx.op.tertiary.f32(i32 46, float %6682, float %5183, float %6716), !dx.precise !89  ; FMad(a,b,c)
  %6718 = fmul float %6675, %6704
  %6719 = call float @dx.op.tertiary.f32(i32 46, float %6676, float %6711, float %6718), !dx.precise !89  ; FMad(a,b,c)
  %6720 = call float @dx.op.tertiary.f32(i32 46, float %6682, float %5184, float %6719), !dx.precise !89  ; FMad(a,b,c)
  %6721 = fmul float %6675, %6705
  %6722 = call float @dx.op.tertiary.f32(i32 46, float %6676, float %6714, float %6721), !dx.precise !89  ; FMad(a,b,c)
  %6723 = call float @dx.op.tertiary.f32(i32 46, float %6682, float %5185, float %6722), !dx.precise !89  ; FMad(a,b,c)
  %6724 = call float @dx.op.dot3.f32(i32 55, float %6717, float %6720, float %6723, float %6717, float %6720, float %6723), !dx.precise !89  ; Dot3(ax,ay,az,bx,by,bz)
  %6725 = call float @dx.op.unary.f32(i32 25, float %6724), !dx.precise !89  ; Rsqrt(value)
  %6726 = fmul float %6717, %6725
  %6727 = fmul float %6720, %6725
  %6728 = fmul float %6723, %6725
  %6729 = icmp ne i32 %78, 0
  %6730 = select i1 %6729, float %6628, float 1.000000e+00
  %6731 = call float @dx.op.dot3.f32(i32 55, float %5183, float %5184, float %5185, float %6726, float %6727, float %6728), !dx.precise !89  ; Dot3(ax,ay,az,bx,by,bz)
  %6732 = fdiv float %6731, 0x400921FB60000000
  %6733 = fmul float %6730, %6732
  %6734 = fsub float 1.000000e+00, %6469
  %6735 = call float @dx.op.binary.f32(i32 35, float %6734, float 0x3F847AE140000000), !dx.precise !89  ; FMax(a,b)
  %6736 = fmul float %6735, %6735
  %6737 = fmul float %6736, %6736
  br label %6849

; <label>:6738                                    ; preds = %6468
  %6739 = fsub float 1.000000e+00, %6469
  %6740 = call float @dx.op.binary.f32(i32 35, float %6739, float 0x3F847AE140000000), !dx.precise !89  ; FMax(a,b)
  %6741 = fmul float %6740, %6740
  %6742 = fsub float 1.000000e+00, %6628
  %6743 = fdiv float 1.000000e+00, %6742
  %6744 = fsub float -0.000000e+00, %6628
  %6745 = fdiv float %6744, %6742
  %6746 = fmul float %6620, %6743
  %6747 = fadd float %6746, %6745
  %6748 = fadd float %6747, 0.000000e+00
  %6749 = call float @dx.op.unary.f32(i32 7, float %6748), !dx.precise !89  ; Saturate(value)
  %6750 = fsub float 1.000000e+00, %6749
  %6751 = fmul float %6741, %6741
  %6752 = fadd float %6751, -1.000000e+00
  %6753 = fmul float %6752, %6749
  %6754 = fadd float %6753, 1.000000e+00
  %6755 = fdiv float %6750, %6754
  %6756 = call float @dx.op.unary.f32(i32 24, float %6755), !dx.precise !89  ; Sqrt(value)
  %6757 = fmul float %6756, %6756
  %6758 = fsub float 1.000000e+00, %6757
  %6759 = call float @dx.op.unary.f32(i32 24, float %6758), !dx.precise !89  ; Sqrt(value)
  %6760 = fmul float %6630, 0x400921FB60000000
  %6761 = call float @dx.op.unary.f32(i32 12, float %6760), !dx.precise !89  ; Cos(value)
  %6762 = fmul float %6759, %6761
  %6763 = call float @dx.op.unary.f32(i32 13, float %6760), !dx.precise !89  ; Sin(value)
  %6764 = fmul float %6759, %6763
  %6765 = call float @dx.op.unary.f32(i32 6, float %5183), !dx.precise !89  ; FAbs(value)
  %6766 = call float @dx.op.unary.f32(i32 6, float %5184), !dx.precise !89  ; FAbs(value)
  %6767 = fmul float %6766, 5.000000e+00
  %6768 = fcmp ogt float %6765, %6767
  %6769 = fmul float %5185, %5185
  br i1 %6768, label %6770, label %6777

; <label>:6770                                    ; preds = %6738
  %6771 = fmul float %5183, %5183
  %6772 = fadd float %6771, %6769
  %6773 = call float @dx.op.unary.f32(i32 25, float %6772), !dx.precise !89  ; Rsqrt(value)
  %6774 = fmul float %5185, %6773
  %6775 = fsub float -0.000000e+00, %6774
  %6776 = fmul float %5183, %6773
  br label %6784

; <label>:6777                                    ; preds = %6738
  %6778 = fmul float %5184, %5184
  %6779 = fadd float %6778, %6769
  %6780 = call float @dx.op.unary.f32(i32 25, float %6779), !dx.precise !89  ; Rsqrt(value)
  %6781 = fmul float %5185, %6780
  %6782 = fsub float -0.000000e+00, %6781
  %6783 = fmul float %5184, %6780
  br label %6784

; <label>:6784                                    ; preds = %6777, %6770
  %6785 = phi float [ %6775, %6770 ], [ 0.000000e+00, %6777 ]
  %6786 = phi float [ 0.000000e+00, %6770 ], [ %6782, %6777 ]
  %6787 = phi float [ %6776, %6770 ], [ %6783, %6777 ]
  %6788 = fmul float %5185, %6786
  %6789 = fmul float %5184, %6787
  %6790 = fsub float %6788, %6789
  %6791 = fmul float %5183, %6787
  %6792 = fmul float %5185, %6785
  %6793 = fsub float %6791, %6792
  %6794 = fmul float %5184, %6785
  %6795 = fmul float %5183, %6786
  %6796 = fsub float %6794, %6795
  %6797 = fmul float %6762, %6785
  %6798 = call float @dx.op.tertiary.f32(i32 46, float %6764, float %6790, float %6797), !dx.precise !89  ; FMad(a,b,c)
  %6799 = call float @dx.op.tertiary.f32(i32 46, float %6756, float %5183, float %6798), !dx.precise !89  ; FMad(a,b,c)
  %6800 = fmul float %6762, %6786
  %6801 = call float @dx.op.tertiary.f32(i32 46, float %6764, float %6793, float %6800), !dx.precise !89  ; FMad(a,b,c)
  %6802 = call float @dx.op.tertiary.f32(i32 46, float %6756, float %5184, float %6801), !dx.precise !89  ; FMad(a,b,c)
  %6803 = fmul float %6762, %6787
  %6804 = call float @dx.op.tertiary.f32(i32 46, float %6764, float %6796, float %6803), !dx.precise !89  ; FMad(a,b,c)
  %6805 = call float @dx.op.tertiary.f32(i32 46, float %6756, float %5185, float %6804), !dx.precise !89  ; FMad(a,b,c)
  %6806 = call float @dx.op.dot3.f32(i32 55, float %6799, float %6802, float %6805, float %6799, float %6802, float %6805), !dx.precise !89  ; Dot3(ax,ay,az,bx,by,bz)
  %6807 = call float @dx.op.unary.f32(i32 25, float %6806), !dx.precise !89  ; Rsqrt(value)
  %6808 = fmul float %6799, %6807
  %6809 = fmul float %6802, %6807
  %6810 = fmul float %6805, %6807
  %6811 = call float @dx.op.dot3.f32(i32 55, float %5208, float %5209, float %5210, float %6808, float %6809, float %6810), !dx.precise !89  ; Dot3(ax,ay,az,bx,by,bz)
  %6812 = fmul float %6811, 2.000000e+00
  %6813 = fmul float %6808, %6812
  %6814 = fmul float %6809, %6812
  %6815 = fmul float %6810, %6812
  %6816 = fsub float %5208, %6813
  %6817 = fsub float %5209, %6814
  %6818 = fsub float %5210, %6815
  %6819 = fsub float -0.000000e+00, %6816
  %6820 = fsub float -0.000000e+00, %6817
  %6821 = fsub float -0.000000e+00, %6818
  %6822 = icmp ne i32 %78, 0
  %6823 = select i1 %6822, float %6742, float 1.000000e+00
  %6824 = fsub float %6819, %198
  %6825 = fsub float %6820, %199
  %6826 = fsub float %6821, %200
  %6827 = call float @dx.op.dot3.f32(i32 55, float %6824, float %6825, float %6826, float %6824, float %6825, float %6826), !dx.precise !89  ; Dot3(ax,ay,az,bx,by,bz)
  %6828 = call float @dx.op.unary.f32(i32 25, float %6827), !dx.precise !89  ; Rsqrt(value)
  %6829 = fmul float %6828, %6824
  %6830 = fmul float %6828, %6825
  %6831 = fmul float %6828, %6826
  %6832 = call float @dx.op.dot3.f32(i32 55, float %6829, float %6830, float %6831, float %5183, float %5184, float %5185), !dx.precise !89  ; Dot3(ax,ay,az,bx,by,bz)
  %6833 = call float @dx.op.unary.f32(i32 7, float %6832), !dx.precise !89  ; Saturate(value)
  %6834 = fmul float %6833, %6833
  %6835 = fmul float %6752, %6834
  %6836 = fadd float %6835, 1.000000e+00
  %6837 = fmul float %6751, %6833
  %6838 = fmul float %6836, 0x400921FB60000000
  %6839 = fmul float %6836, %6838
  %6840 = call float @dx.op.dot3.f32(i32 55, float %5208, float %5209, float %5210, float %6829, float %6830, float %6831), !dx.precise !89  ; Dot3(ax,ay,az,bx,by,bz)
  %6841 = fmul float %6840, 4.000000e+00
  %6842 = fmul float %6841, %6839
  %6843 = fdiv float %6837, %6842
  %6844 = fmul float %6823, %6843
  %6845 = call float @dx.op.dot3.f32(i32 55, float %5183, float %5184, float %5185, float %6819, float %6820, float %6821), !dx.precise !89  ; Dot3(ax,ay,az,bx,by,bz)
  %6846 = fcmp ole float %6845, 0.000000e+00
  %6847 = fcmp ole float %6844, 0.000000e+00
  %6848 = or i1 %6846, %6847
  br i1 %6848, label %7091, label %6849

; <label>:6849                                    ; preds = %6784, %6702
  %6850 = phi float [ %6751, %6784 ], [ %6737, %6702 ]
  %6851 = phi float [ %6819, %6784 ], [ %6726, %6702 ]
  %6852 = phi float [ %6820, %6784 ], [ %6727, %6702 ]
  %6853 = phi float [ %6821, %6784 ], [ %6728, %6702 ]
  %6854 = phi float [ %6844, %6784 ], [ %6733, %6702 ]
  %6855 = fsub float %6851, %198
  %6856 = fsub float %6852, %199
  %6857 = fsub float %6853, %200
  %6858 = call float @dx.op.dot3.f32(i32 55, float %6855, float %6856, float %6857, float %6855, float %6856, float %6857), !dx.precise !89  ; Dot3(ax,ay,az,bx,by,bz)
  %6859 = call float @dx.op.unary.f32(i32 25, float %6858), !dx.precise !89  ; Rsqrt(value)
  %6860 = fmul float %6855, %6859
  %6861 = fmul float %6856, %6859
  %6862 = fmul float %6857, %6859
  %6863 = call float @dx.op.dot3.f32(i32 55, float %6851, float %6852, float %6853, float %5183, float %5184, float %5185), !dx.precise !89  ; Dot3(ax,ay,az,bx,by,bz)
  %6864 = call float @dx.op.dot3.f32(i32 55, float %5208, float %5209, float %5210, float %6860, float %6861, float %6862), !dx.precise !89  ; Dot3(ax,ay,az,bx,by,bz)
  %6865 = call float @dx.op.unary.f32(i32 7, float %6863), !dx.precise !89  ; Saturate(value)
  %6866 = fmul float %6865, %6865
  %6867 = fmul float %5239, %6866
  %6868 = call float @dx.op.unary.f32(i32 7, float %6867), !dx.precise !89  ; Saturate(value)
  %6869 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 242)  ; CBufferLoadLegacy(handle,regIndex)
  %6870 = extractvalue %dx.types.CBufRet.f32 %6869, 0
  %6871 = bitcast float %6870 to i32
  %6872 = lshr i32 %6871, 8
  %6873 = and i32 %6872, 255
  %6874 = uitofp i32 %6873 to float
  %6875 = fptoui float %6874 to i32
  %6876 = and i32 %6875, 8
  %6877 = icmp ne i32 %6876, 0
  %6878 = select i1 %6877, float %6868, float 1.000000e+00
  %6879 = fmul float %6865, %6878
  %6880 = call float @dx.op.dot3.f32(i32 55, float %5183, float %5184, float %5185, float %6860, float %6861, float %6862), !dx.precise !89  ; Dot3(ax,ay,az,bx,by,bz)
  %6881 = fmul float %6880, %6880
  %6882 = call float @dx.op.unary.f32(i32 6, float %6863), !dx.precise !89  ; FAbs(value)
  %6883 = fsub float 1.000000e+00, %6850
  %6884 = fmul float %5212, %6883
  %6885 = fmul float %5212, %6884
  %6886 = fadd float %6850, %6885
  %6887 = bitcast float %6886 to i32
  %6888 = ashr i32 %6887, 1
  %6889 = add nsw i32 %6888, 532487669
  %6890 = bitcast i32 %6889 to float
  %6891 = fadd float %5212, %6890
  %6892 = fmul float %6881, %6850
  %6893 = fadd float %6881, -1.000000e+00
  %6894 = fsub float %6892, %6893
  %6895 = fmul float %6894, %6894
  %6896 = fmul float %6882, %6883
  %6897 = fmul float %6882, %6896
  %6898 = fadd float %6850, %6897
  %6899 = bitcast float %6898 to i32
  %6900 = ashr i32 %6899, 1
  %6901 = add nsw i32 %6900, 532487669
  %6902 = bitcast i32 %6901 to float
  %6903 = fadd float %6882, %6902
  %6904 = fmul float %6903, %6891
  %6905 = fmul float %6895, %6904
  %6906 = fdiv float 1.000000e+00, %6905
  %6907 = fmul float %6906, %6850
  %6908 = fmul float %6907, 0x3FF0A00000000000
  %6909 = call float @dx.op.unary.f32(i32 6, float %6864), !dx.precise !89  ; FAbs(value)
  %6910 = fsub float 1.000000e+00, %6909
  %6911 = bitcast float %6910 to i32
  %6912 = sitofp i32 %6911 to float
  %6913 = fmul float %6912, 5.000000e+00
  %6914 = fadd float %6913, 0xC1EFBF8940000000
  %6915 = fptosi float %6914 to i32
  %6916 = bitcast i32 %6915 to float
  %6917 = fsub float 1.000000e+00, %5204
  %6918 = fsub float 1.000000e+00, %5205
  %6919 = fsub float 1.000000e+00, %5206
  %6920 = fmul float %6917, %6916
  %6921 = fmul float %6918, %6916
  %6922 = fmul float %6919, %6916
  %6923 = fadd float %5204, %6920
  %6924 = fadd float %5205, %6921
  %6925 = fadd float %5206, %6922
  %6926 = fmul float %6863, 9.843750e-01
  %6927 = fmul float %6469, 9.843750e-01
  %6928 = fadd float %6926, 7.812500e-03
  %6929 = fadd float %6927, 7.812500e-03
  %6930 = call %dx.types.Handle @"dx.op.createHandleForLib.class.Texture2D<vector<float, 4> >"(i32 160, %"class.Texture2D<vector<float, 4> >" %2)  ; CreateHandleForLib(Resource)
  %6931 = call %dx.types.Handle @dx.op.createHandleForLib.struct.SamplerState(i32 160, %struct.SamplerState %1)  ; CreateHandleForLib(Resource)
  %6932 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6930, %dx.types.Handle %6931, float %6928, float %6929, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6933 = extractvalue %dx.types.ResRet.f32 %6932, 0
  %6934 = extractvalue %dx.types.ResRet.f32 %6932, 1
  %6935 = extractvalue %dx.types.ResRet.f32 %6932, 2
  %6936 = extractvalue %dx.types.ResRet.f32 %6932, 3
  %6937 = fsub float %6935, %6933
  %6938 = fsub float %6936, %6934
  %6939 = fadd float %6933, %6937
  %6940 = fadd float %6934, %6938
  %6941 = fmul float %5204, %6939
  %6942 = fmul float %5205, %6939
  %6943 = fmul float %5206, %6939
  %6944 = fadd float %6940, %6941
  %6945 = fadd float %6940, %6942
  %6946 = fadd float %6940, %6943
  %6947 = fadd float %6944, 0.000000e+00
  %6948 = fadd float %6945, 0.000000e+00
  %6949 = fadd float %6946, 0.000000e+00
  %6950 = call float @dx.op.binary.f32(i32 35, float %6948, float %6949), !dx.precise !89  ; FMax(a,b)
  %6951 = call float @dx.op.binary.f32(i32 35, float %6947, float %6950), !dx.precise !89  ; FMax(a,b)
  %6952 = fsub float 1.000000e+00, %6951
  %6953 = fmul float %6952, 0.000000e+00
  %6954 = fmul float %5195, %6953
  %6955 = fmul float %5196, %6953
  %6956 = fmul float %5197, %6953
  %6957 = fadd float %6952, %6954
  %6958 = fadd float %6952, %6955
  %6959 = fadd float %6952, %6956
  %6960 = fmul float %6908, %6923
  %6961 = fmul float %6908, %6924
  %6962 = fmul float %6908, %6925
  %6963 = fadd float %6960, 0.000000e+00
  %6964 = fadd float %6961, 0.000000e+00
  %6965 = fadd float %6962, 0.000000e+00
  %6966 = call float @dx.op.dot3.f32(i32 55, float %5195, float %5196, float %5197, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000), !dx.precise !89  ; Dot3(ax,ay,az,bx,by,bz)
  %6967 = fcmp ogt float %6966, 0x3E7FF19E20000000
  %6968 = fdiv float 1.000000e+00, %6966
  %6969 = select i1 %6967, float %6968, float 0.000000e+00
  %6970 = fmul float %5195, %6969
  %6971 = fmul float %5196, %6969
  %6972 = fmul float %5197, %6969
  %6973 = fadd float %6970, -1.000000e+00
  %6974 = fadd float %6971, -1.000000e+00
  %6975 = fadd float %6972, -1.000000e+00
  %6976 = fmul float %6973, 5.000000e-01
  %6977 = fmul float %6974, 5.000000e-01
  %6978 = fmul float %6975, 5.000000e-01
  %6979 = fadd float %6976, 1.000000e+00
  %6980 = fadd float %6977, 1.000000e+00
  %6981 = fadd float %6978, 1.000000e+00
  %6982 = fsub float 1.000000e+00, %6864
  %6983 = bitcast float %6982 to i32
  %6984 = sitofp i32 %6983 to float
  %6985 = fmul float %6984, 5.000000e+00
  %6986 = fadd float %6985, 0xC1EFBF8940000000
  %6987 = fptosi float %6986 to i32
  %6988 = bitcast i32 %6987 to float
  %6989 = fmul float %6988, 0.000000e+00
  %6990 = fmul float %6989, %6979
  %6991 = fmul float %6989, %6980
  %6992 = fmul float %6989, %6981
  %6993 = fmul float %6952, %6990
  %6994 = fmul float %6952, %6991
  %6995 = fmul float %6952, %6992
  %6996 = fadd float %6963, %6993
  %6997 = fadd float %6964, %6994
  %6998 = fadd float %6965, %6995
  %6999 = fmul float %6879, %6957
  %7000 = fmul float %6879, %6958
  %7001 = fmul float %6879, %6959
  %7002 = fadd float %5149, %6996
  %7003 = fadd float %5150, %6997
  %7004 = fadd float %5151, %6998
  %7005 = fmul float %6879, %7002
  %7006 = fmul float %6879, %7003
  %7007 = fmul float %6879, %7004
  %7008 = fadd float %6999, 0.000000e+00
  %7009 = fadd float %7000, 0.000000e+00
  %7010 = fadd float %7001, 0.000000e+00
  %7011 = fmul float %7008, 0x3FD45F3060000000
  %7012 = fmul float %7009, 0x3FD45F3060000000
  %7013 = fmul float %7010, 0x3FD45F3060000000
  %7014 = fadd float %7005, 0.000000e+00
  %7015 = fadd float %7006, 0.000000e+00
  %7016 = fadd float %7007, 0.000000e+00
  %7017 = fmul float %7014, 0x3FD45F3060000000
  %7018 = fmul float %7015, 0x3FD45F3060000000
  %7019 = fmul float %7016, 0x3FD45F3060000000
  %7020 = fmul float %2989, %7011
  %7021 = fmul float %2989, %7012
  %7022 = fmul float %2989, %7013
  %7023 = fadd float %7020, 0.000000e+00
  %7024 = fadd float %7021, 0.000000e+00
  %7025 = fadd float %7022, 0.000000e+00
  %7026 = fmul float %2989, %7017
  %7027 = fmul float %2989, %7018
  %7028 = fmul float %2989, %7019
  %7029 = fadd float %7026, 0.000000e+00
  %7030 = fadd float %7027, 0.000000e+00
  %7031 = fadd float %7028, 0.000000e+00
  %7032 = icmp ne i32 %78, 0
  %7033 = xor i1 %6629, true
  %7034 = and i1 %7032, %7033
  %7035 = or i1 %6404, %7034
  %7036 = select i1 %7035, float 0.000000e+00, float %7023
  %7037 = select i1 %7035, float 0.000000e+00, float %7024
  %7038 = select i1 %7035, float 0.000000e+00, float %7025
  %7039 = and i1 %7032, %6629
  %7040 = or i1 %6408, %7039
  %7041 = select i1 %7040, float 0.000000e+00, float %7029
  %7042 = select i1 %7040, float 0.000000e+00, float %7030
  %7043 = select i1 %7040, float 0.000000e+00, float %7031
  %7044 = fmul float %5195, %7036
  %7045 = fmul float %5196, %7037
  %7046 = fmul float %5197, %7038
  %7047 = fadd float %7044, %7041
  %7048 = fadd float %7045, %7042
  %7049 = fadd float %7046, %7043
  %7050 = fcmp ole float %6854, 0x3E7AD7F2A0000000
  %7051 = call i1 @dx.op.isSpecialFloat.f32(i32 8, float %6854)  ; IsNaN(value)
  %7052 = or i1 %7050, %7051
  %7053 = call i1 @dx.op.isSpecialFloat.f32(i32 8, float %7047)  ; IsNaN(value)
  %7054 = call i1 @dx.op.isSpecialFloat.f32(i32 8, float %7048)  ; IsNaN(value)
  %7055 = call i1 @dx.op.isSpecialFloat.f32(i32 8, float %7049)  ; IsNaN(value)
  %7056 = or i1 %7053, %7054
  %7057 = or i1 %7056, %7055
  %7058 = or i1 %7052, %7057
  %7059 = call i1 @dx.op.isSpecialFloat.f32(i32 9, float %7047)  ; IsInf(value)
  %7060 = call i1 @dx.op.isSpecialFloat.f32(i32 9, float %7048)  ; IsInf(value)
  %7061 = call i1 @dx.op.isSpecialFloat.f32(i32 9, float %7049)  ; IsInf(value)
  %7062 = or i1 %7059, %7060
  %7063 = or i1 %7062, %7061
  %7064 = or i1 %7058, %7063
  br i1 %7064, label %7091, label %7065

; <label>:7065                                    ; preds = %6849
  %7066 = fdiv fast float %7047, %6854
  %7067 = fdiv fast float %7048, %6854
  %7068 = fdiv fast float %7049, %6854
  %7069 = fmul fast float %7066, %201
  %7070 = fmul fast float %7067, %202
  %7071 = fmul fast float %7068, %203
  %7072 = select i1 %6427, float %7036, float %7047
  %7073 = select i1 %6427, float %7037, float %7048
  %7074 = select i1 %6427, float %7038, float %7049
  %7075 = select i1 %6427, float %7041, float %7047
  %7076 = select i1 %6427, float %7042, float %7048
  %7077 = select i1 %6427, float %7043, float %7049
  %7078 = fdiv fast float %7072, %6854
  %7079 = fdiv fast float %7073, %6854
  %7080 = fdiv fast float %7074, %6854
  %7081 = fmul fast float %7078, %207
  %7082 = fmul fast float %7079, %208
  %7083 = fmul fast float %7080, %209
  %7084 = fdiv fast float %7075, %6854
  %7085 = fdiv fast float %7076, %6854
  %7086 = fdiv fast float %7077, %6854
  %7087 = fmul fast float %7084, %210
  %7088 = fmul fast float %7085, %211
  %7089 = fmul fast float %7086, %212
  %7090 = add nuw nsw i32 %228, 1
  br label %190

; <label>:7091                                    ; preds = %6849, %6784, %6451
  br label %7092

; <label>:7092                                    ; preds = %7091, %366, %355
  %7093 = phi i32 [ %191, %366 ], [ %191, %355 ], [ %1307, %7091 ]
  %7094 = phi i32 [ %192, %366 ], [ %192, %355 ], [ %1308, %7091 ]
  %7095 = phi i32 [ %193, %366 ], [ %193, %355 ], [ %1309, %7091 ]
  %7096 = phi i32 [ %194, %366 ], [ %194, %355 ], [ %637, %7091 ]
  %7097 = phi float [ %362, %366 ], [ %362, %355 ], [ %6424, %7091 ]
  %7098 = phi float [ %363, %366 ], [ %363, %355 ], [ %6425, %7091 ]
  %7099 = phi float [ %364, %366 ], [ %364, %355 ], [ %6426, %7091 ]
  %7100 = phi float [ 0.000000e+00, %366 ], [ %356, %355 ], [ 0.000000e+00, %7091 ]
  %7101 = phi float [ 0.000000e+00, %366 ], [ %357, %355 ], [ 0.000000e+00, %7091 ]
  %7102 = phi float [ 0.000000e+00, %366 ], [ %358, %355 ], [ 0.000000e+00, %7091 ]
  %7103 = phi float [ %213, %366 ], [ %213, %355 ], [ %6452, %7091 ]
  %7104 = phi float [ %214, %366 ], [ %214, %355 ], [ %6453, %7091 ]
  %7105 = phi float [ %215, %366 ], [ %215, %355 ], [ %6454, %7091 ]
  %7106 = phi float [ %216, %366 ], [ %216, %355 ], [ %6455, %7091 ]
  %7107 = phi float [ %217, %366 ], [ %217, %355 ], [ %6456, %7091 ]
  %7108 = phi float [ %218, %366 ], [ %218, %355 ], [ %6457, %7091 ]
  %7109 = phi float [ %219, %366 ], [ %219, %355 ], [ %6458, %7091 ]
  %7110 = phi float [ %220, %366 ], [ %220, %355 ], [ %6459, %7091 ]
  %7111 = phi float [ %221, %366 ], [ %221, %355 ], [ %6460, %7091 ]
  %7112 = phi float [ %370, %366 ], [ %222, %355 ], [ %6461, %7091 ]
  %7113 = phi float [ %371, %366 ], [ %223, %355 ], [ %6462, %7091 ]
  %7114 = phi float [ %372, %366 ], [ %224, %355 ], [ %6463, %7091 ]
  %7115 = phi float [ %376, %366 ], [ %225, %355 ], [ %6464, %7091 ]
  %7116 = phi float [ %377, %366 ], [ %226, %355 ], [ %6465, %7091 ]
  %7117 = phi float [ %378, %366 ], [ %227, %355 ], [ %6466, %7091 ]
  %7118 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 241)  ; CBufferLoadLegacy(handle,regIndex)
  %7119 = extractvalue %dx.types.CBufRet.f32 %7118, 0
  %7120 = bitcast float %7119 to i32
  %7121 = lshr i32 %7120, 8
  %7122 = and i32 %7121, 255
  %7123 = uitofp i32 %7122 to float
  %7124 = fptoui float %7123 to i32
  switch i32 %7124, label %7139 [
    i32 1, label %7125
    i32 2, label %7129
    i32 3, label %7133
    i32 4, label %7134
    i32 5, label %7135
    i32 6, label %7136
    i32 7, label %7137
    i32 8, label %7138
  ]

; <label>:7125                                    ; preds = %7092
  %7126 = fadd fast float %7112, %7103
  %7127 = fadd fast float %7113, %7104
  %7128 = fadd fast float %7114, %7105
  br label %7139

; <label>:7129                                    ; preds = %7092
  %7130 = fadd fast float %7115, %7106
  %7131 = fadd fast float %7116, %7107
  %7132 = fadd fast float %7117, %7108
  br label %7139

; <label>:7133                                    ; preds = %7092
  br label %7139

; <label>:7134                                    ; preds = %7092
  br label %7139

; <label>:7135                                    ; preds = %7092
  br label %7139

; <label>:7136                                    ; preds = %7092
  br label %7139

; <label>:7137                                    ; preds = %7092
  br label %7139

; <label>:7138                                    ; preds = %7092
  br label %7139

; <label>:7139                                    ; preds = %7138, %7137, %7136, %7135, %7134, %7133, %7129, %7125, %7092
  %7140 = phi float [ %7097, %7092 ], [ %7115, %7138 ], [ %7112, %7137 ], [ %7112, %7136 ], [ %7106, %7135 ], [ %7103, %7134 ], [ %7109, %7133 ], [ %7130, %7129 ], [ %7126, %7125 ]
  %7141 = phi float [ %7098, %7092 ], [ %7116, %7138 ], [ %7113, %7137 ], [ %7113, %7136 ], [ %7107, %7135 ], [ %7104, %7134 ], [ %7110, %7133 ], [ %7131, %7129 ], [ %7127, %7125 ]
  %7142 = phi float [ %7099, %7092 ], [ %7117, %7138 ], [ %7114, %7137 ], [ %7114, %7136 ], [ %7108, %7135 ], [ %7105, %7134 ], [ %7111, %7133 ], [ %7132, %7129 ], [ %7128, %7125 ]
  %7143 = fcmp fast ogt float %7100, 0.000000e+00
  %7144 = fcmp fast ogt float %7101, 0.000000e+00
  %7145 = fcmp fast ogt float %7102, 0.000000e+00
  %7146 = or i1 %7143, %7144
  %7147 = or i1 %7146, %7145
  %7148 = select i1 %7147, float %7100, float %7140
  %7149 = select i1 %7147, float %7101, float %7141
  %7150 = select i1 %7147, float %7102, float %7142
  %7151 = sitofp i32 %56 to float
  %7152 = fdiv fast float 1.000000e+00, %7151
  %7153 = fmul fast float %7152, %7148
  %7154 = fmul fast float %7152, %7149
  %7155 = fmul fast float %7150, %7152
  %7156 = fadd fast float %7153, %182
  %7157 = fadd fast float %7154, %183
  %7158 = fadd fast float %7155, %184
  %7159 = add nuw nsw i32 %185, 1
  %7160 = icmp eq i32 %7159, %56
  br i1 %7160, label %7161, label %177

; <label>:7161                                    ; preds = %7139
  br label %7162

; <label>:7162                                    ; preds = %7161, %98
  %7163 = phi float [ 0.000000e+00, %98 ], [ %7156, %7161 ]
  %7164 = phi float [ 0.000000e+00, %98 ], [ %7157, %7161 ]
  %7165 = phi float [ 0.000000e+00, %98 ], [ %7158, %7161 ]
  %7166 = bitcast i32 %102 to float
  %7167 = bitcast i32 %103 to float
  %7168 = bitcast i32 %104 to float
  %7169 = uitofp i32 %106 to float
  %7170 = fadd fast float %7169, 1.000000e+00
  %7171 = fdiv fast float 1.000000e+00, %7170
  %7172 = call i1 @dx.op.isSpecialFloat.f32(i32 8, float %7166)  ; IsNaN(value)
  %7173 = call i1 @dx.op.isSpecialFloat.f32(i32 8, float %7167)  ; IsNaN(value)
  %7174 = call i1 @dx.op.isSpecialFloat.f32(i32 8, float %7168)  ; IsNaN(value)
  %7175 = call i1 @dx.op.isSpecialFloat.f32(i32 9, float %7166)  ; IsInf(value)
  %7176 = call i1 @dx.op.isSpecialFloat.f32(i32 9, float %7167)  ; IsInf(value)
  %7177 = call i1 @dx.op.isSpecialFloat.f32(i32 9, float %7168)  ; IsInf(value)
  %7178 = or i1 %7172, %7175
  %7179 = or i1 %7173, %7176
  %7180 = or i1 %7174, %7177
  %7181 = or i1 %7178, %7179
  %7182 = or i1 %7181, %7180
  br i1 %7182, label %7193, label %7183

; <label>:7183                                    ; preds = %7162
  %7184 = fsub fast float %7165, %7168
  %7185 = fmul fast float %7171, %7184
  %7186 = fadd fast float %7185, %7168
  %7187 = fsub fast float %7164, %7167
  %7188 = fmul fast float %7171, %7187
  %7189 = fadd fast float %7188, %7167
  %7190 = fsub fast float %7163, %7166
  %7191 = fmul fast float %7171, %7190
  %7192 = fadd fast float %7191, %7166
  br label %7193

; <label>:7193                                    ; preds = %7183, %7162
  %7194 = phi float [ %7163, %7162 ], [ %7192, %7183 ]
  %7195 = phi float [ %7164, %7162 ], [ %7189, %7183 ]
  %7196 = phi float [ %7165, %7162 ], [ %7186, %7183 ]
  %7197 = bitcast float %7194 to i32
  %7198 = bitcast float %7195 to i32
  %7199 = bitcast float %7196 to i32
  %7200 = add i32 %106, 1
  br i1 %99, label %7205, label %7201

; <label>:7201                                    ; preds = %7193
  %7202 = select i1 %54, i32 0, i32 %102
  %7203 = select i1 %54, i32 0, i32 %103
  %7204 = select i1 %54, i32 0, i32 %104
  br label %7205

; <label>:7205                                    ; preds = %7201, %7193
  %7206 = phi i32 [ %7202, %7201 ], [ %7197, %7193 ]
  %7207 = phi i32 [ %7203, %7201 ], [ %7198, %7193 ]
  %7208 = phi i32 [ %7204, %7201 ], [ %7199, %7193 ]
  %7209 = phi i32 [ %106, %7201 ], [ %7200, %7193 ]
  %7210 = call %dx.types.Handle @"dx.op.createHandleForLib.class.RWTexture2D<vector<unsigned int, 4> >"(i32 160, %"class.RWTexture2D<vector<unsigned int, 4> >" %20)  ; CreateHandleForLib(Resource)
  call void @dx.op.textureStore.i32(i32 67, %dx.types.Handle %7210, i32 %46, i32 %47, i32 undef, i32 %7206, i32 %7207, i32 %7208, i32 %7209, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %7211 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %7212 = extractvalue %dx.types.CBufRet.i32 %7211, 3
  %7213 = icmp eq i32 %7212, 0
  br i1 %7213, label %7225, label %7214

; <label>:7214                                    ; preds = %7205
  %7215 = bitcast i32 %7206 to float
  %7216 = bitcast i32 %7207 to float
  %7217 = bitcast i32 %7208 to float
  %7218 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %7219 = extractvalue %dx.types.CBufRet.f32 %7218, 0
  %7220 = fmul fast float %7219, %7215
  %7221 = fmul fast float %7219, %7216
  %7222 = fmul fast float %7219, %7217
  %7223 = call %dx.types.Handle @"dx.op.createHandleForLib.class.RWTexture2D<vector<float, 3> >"(i32 160, %"class.RWTexture2D<vector<float, 3> >" %22)  ; CreateHandleForLib(Resource)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %7223, i32 %46, i32 %47, i32 undef, float %7220, float %7221, float %7222, float %7220, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %7224 = call %dx.types.Handle @"dx.op.createHandleForLib.class.RWTexture2D<vector<float, 4> >"(i32 160, %"class.RWTexture2D<vector<float, 4> >" %21)  ; CreateHandleForLib(Resource)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %7224, i32 %46, i32 %47, i32 undef, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %7225

; <label>:7225                                    ; preds = %7214, %7205
  ret void
}

; Function Attrs: nounwind
define void @"\01?Visibility_Miss@@YAXUPayload@@@Z"(%struct.Payload* noalias nocapture %payload) #0 {
  %1 = getelementptr inbounds %struct.Payload, %struct.Payload* %payload, i32 0, i32 0
  store float 1.000000e+06, float* %1, align 4
  ret void
}

; Function Attrs: nounwind
define void @"\01?Visibility_ClosestHit@@YAXUPayload@@UBuiltInTriangleIntersectionAttributes@@@Z"(%struct.Payload* noalias nocapture %payload, %struct.BuiltInTriangleIntersectionAttributes* nocapture readonly %attr) #0 {
  %1 = call float @dx.op.rayTCurrent.f32(i32 154)  ; RayTCurrent()
  %2 = getelementptr inbounds %struct.Payload, %struct.Payload* %payload, i32 0, i32 0
  store float %1, float* %2, align 4, !tbaa !90
  %3 = call i32 @dx.op.instanceID.i32(i32 141)  ; InstanceID()
  %4 = getelementptr inbounds %struct.Payload, %struct.Payload* %payload, i32 0, i32 1
  store i32 %3, i32* %4, align 4, !tbaa !99
  %5 = call i32 @dx.op.geometryIndex.i32(i32 213)  ; GeometryIndex()
  %6 = call i32 @dx.op.instanceIndex.i32(i32 142)  ; InstanceIndex()
  %7 = shl i32 %6, 16
  %8 = getelementptr inbounds %struct.Payload, %struct.Payload* %payload, i32 0, i32 2
  %9 = or i32 %7, %5
  store i32 %9, i32* %8, align 4, !tbaa !99
  %10 = call i32 @dx.op.primitiveIndex.i32(i32 161)  ; PrimitiveIndex()
  %11 = getelementptr inbounds %struct.Payload, %struct.Payload* %payload, i32 0, i32 3
  store i32 %10, i32* %11, align 4, !tbaa !99
  %12 = getelementptr inbounds %struct.BuiltInTriangleIntersectionAttributes, %struct.BuiltInTriangleIntersectionAttributes* %attr, i32 0, i32 0
  %13 = load <2 x float>, <2 x float>* %12, align 4, !tbaa !221
  %14 = getelementptr inbounds %struct.Payload, %struct.Payload* %payload, i32 0, i32 4
  store <2 x float> %13, <2 x float>* %14, align 4, !tbaa !221
  ret void
}

; Function Attrs: nounwind readnone
declare float @dx.op.binary.f32(i32, float, float) #1

; Function Attrs: nounwind readnone
declare float @dx.op.unary.f32(i32, float) #1

; Function Attrs: nounwind readnone
declare i32 @dx.op.binary.i32(i32, i32, i32) #1

; Function Attrs: nounwind readnone
declare float @dx.op.legacyF16ToF32(i32, i32) #1

; Function Attrs: nounwind readnone
declare float @dx.op.dot3.f32(i32, float, float, float, float, float, float) #1

; Function Attrs: nounwind readnone
declare i32 @dx.op.unaryBits.i32(i32, i32) #1

; Function Attrs: nounwind readnone
declare float @dx.op.tertiary.f32(i32, float, float, float) #1

; Function Attrs: nounwind
declare void @dx.op.textureStore.f32(i32, %dx.types.Handle, i32, i32, i32, float, float, float, float, i8) #0

; Function Attrs: nounwind readnone
declare float @dx.op.dot2.f32(i32, float, float, float, float) #1

; Function Attrs: nounwind readnone
declare i32 @dx.op.unary.i32(i32, i32) #1

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.rawBufferLoad.f32(i32, %dx.types.Handle, i32, i32, i8, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.i32 @dx.op.rawBufferLoad.i32(i32, %dx.types.Handle, i32, i32, i8, i32) #2

; Function Attrs: nounwind readnone
declare i1 @dx.op.isSpecialFloat.f32(i32, float) #1

; Function Attrs: nounwind readonly
declare %dx.types.Dimensions @dx.op.getDimensions(i32, %dx.types.Handle, i32) #2

; Function Attrs: nounwind
declare void @dx.op.traceRay.struct.Payload(i32, %dx.types.Handle, i32, i32, i32, i32, i32, float, float, float, float, float, float, float, float, %struct.Payload*) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.dispatchRaysIndex.i32(i32, i8) #1

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32) #2

; Function Attrs: nounwind
declare void @dx.op.textureStore.i32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32, i8) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32) #2

; Function Attrs: nounwind readonly
declare float @dx.op.rayTCurrent.f32(i32) #2

; Function Attrs: nounwind readnone
declare i32 @dx.op.primitiveIndex.i32(i32) #1

; Function Attrs: nounwind readnone
declare i32 @dx.op.instanceIndex.i32(i32) #1

; Function Attrs: nounwind readnone
declare i32 @dx.op.geometryIndex.i32(i32) #1

; Function Attrs: nounwind readnone
declare i32 @dx.op.instanceID.i32(i32) #1

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32, %dx.types.Handle, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32, %dx.types.Handle, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.Handle @dx.op.createHandleForLib.PathTracerConstants_decl(i32, %PathTracerConstants_decl) #2

; Function Attrs: nounwind readonly
declare %dx.types.Handle @"dx.op.createHandleForLib.class.Texture2D<float>"(i32, %"class.Texture2D<float>") #2

; Function Attrs: nounwind readonly
declare %dx.types.Handle @dx.op.createHandleForLib.struct.SamplerState(i32, %struct.SamplerState) #2

; Function Attrs: nounwind readonly
declare %dx.types.Handle @"dx.op.createHandleForLib.class.Texture2D<vector<float, 4> >"(i32, %"class.Texture2D<vector<float, 4> >") #2

; Function Attrs: nounwind readonly
declare %dx.types.Handle @"dx.op.createHandleForLib.class.RWTexture2D<vector<float, 4> >"(i32, %"class.RWTexture2D<vector<float, 4> >") #2

; Function Attrs: nounwind readonly
declare %dx.types.Handle @dx.op.createHandleForLib.struct.ByteAddressBuffer(i32, %struct.ByteAddressBuffer) #2

; Function Attrs: nounwind readonly
declare %dx.types.Handle @dx.op.createHandleForLib.struct.RaytracingAccelerationStructure(i32, %struct.RaytracingAccelerationStructure) #2

; Function Attrs: nounwind readonly
declare %dx.types.Handle @"dx.op.createHandleForLib.class.RWTexture2D<vector<unsigned int, 4> >"(i32, %"class.RWTexture2D<vector<unsigned int, 4> >") #2

; Function Attrs: nounwind readonly
declare %dx.types.Handle @"dx.op.createHandleForLib.class.RWTexture2D<vector<float, 3> >"(i32, %"class.RWTexture2D<vector<float, 3> >") #2

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
!dx.typeAnnotations = !{!39}
!dx.entryPoints = !{!47, !49, !52, !54}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 5}
!2 = !{i32 1, i32 6}
!3 = !{!"lib", i32 6, i32 5}
!4 = !{!5, !28, !33, !36}
!5 = !{!6, !8, !9, !10, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27}
!6 = !{i32 0, [0 x %"class.Texture2D<vector<float, 4> >"]* @"\01?globalTexture2DHalfTable@@3PAV?$Texture2D@V?$vector@M$03@@@@A", !"globalTexture2DHalfTable", i32 3, i32 0, i32 -1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, [0 x %"class.Texture2D<vector<float, 4> >"]* @"\01?globalTexture2DFloatTable@@3PAV?$Texture2D@V?$vector@M$03@@@@A", !"globalTexture2DFloatTable", i32 4, i32 0, i32 -1, i32 2, i32 0, !7}
!9 = !{i32 2, %struct.ByteAddressBuffer* @"\01?g_lightConstants@@3UByteAddressBuffer@@A", !"g_lightConstants", i32 0, i32 19, i32 1, i32 11, i32 0, null}
!10 = !{i32 3, %struct.RaytracingAccelerationStructure* @"\01?tlas@@3URaytracingAccelerationStructure@@A", !"tlas", i32 0, i32 0, i32 1, i32 16, i32 0, !11}
!11 = !{i32 0, i32 4}
!12 = !{i32 4, %"class.Texture2D<float>"* @"\01?texDepth@@3V?$Texture2D@M@@A", !"texDepth", i32 0, i32 1, i32 1, i32 2, i32 0, !7}
!13 = !{i32 5, %struct.ByteAddressBuffer* @"\01?bufBlasIndirection@@3UByteAddressBuffer@@A", !"bufBlasIndirection", i32 0, i32 3, i32 1, i32 11, i32 0, null}
!14 = !{i32 6, %struct.ByteAddressBuffer* @"\01?bufGeometryDescriptors@@3UByteAddressBuffer@@A", !"bufGeometryDescriptors", i32 0, i32 4, i32 1, i32 11, i32 0, null}
!15 = !{i32 7, %struct.ByteAddressBuffer* @"\01?bufInstanceDescriptors@@3UByteAddressBuffer@@A", !"bufInstanceDescriptors", i32 0, i32 5, i32 1, i32 11, i32 0, null}
!16 = !{i32 8, %struct.ByteAddressBuffer* @"\01?skinnedCacheBuffer@@3UByteAddressBuffer@@A", !"skinnedCacheBuffer", i32 0, i32 12, i32 1, i32 11, i32 0, null}
!17 = !{i32 9, %struct.ByteAddressBuffer* @"\01?bufMaterialConstants@@3UByteAddressBuffer@@A", !"bufMaterialConstants", i32 0, i32 13, i32 1, i32 11, i32 0, null}
!18 = !{i32 10, %struct.ByteAddressBuffer* @"\01?inBspSurfDataBuffer@@3UByteAddressBuffer@@A", !"inBspSurfDataBuffer", i32 0, i32 14, i32 1, i32 11, i32 0, null}
!19 = !{i32 11, %struct.ByteAddressBuffer* @"\01?xsurfUGBDataBuffer@@3UByteAddressBuffer@@A", !"xsurfUGBDataBuffer", i32 0, i32 16, i32 1, i32 11, i32 0, null}
!20 = !{i32 12, %struct.ByteAddressBuffer* @"\01?smodelSurfUGBIndirection@@3UByteAddressBuffer@@A", !"smodelSurfUGBIndirection", i32 0, i32 20, i32 1, i32 11, i32 0, null}
!21 = !{i32 13, %struct.ByteAddressBuffer* @"\01?inSurfBoundsBuffer@@3UByteAddressBuffer@@A", !"inSurfBoundsBuffer", i32 0, i32 18, i32 1, i32 11, i32 0, null}
!22 = !{i32 14, %struct.ByteAddressBuffer* @"\01?instanceDataBuffer@@3UByteAddressBuffer@@A", !"instanceDataBuffer", i32 0, i32 21, i32 1, i32 11, i32 0, null}
!23 = !{i32 15, %struct.ByteAddressBuffer* @"\01?inVerts@@3UByteAddressBuffer@@A", !"inVerts", i32 0, i32 6, i32 1, i32 11, i32 0, null}
!24 = !{i32 16, %struct.ByteAddressBuffer* @"\01?vtxVirtPageTable@@3UByteAddressBuffer@@A", !"vtxVirtPageTable", i32 0, i32 7, i32 1, i32 11, i32 0, null}
!25 = !{i32 17, %struct.ByteAddressBuffer* @"\01?unifiedIndexBuffer@@3UByteAddressBuffer@@A", !"unifiedIndexBuffer", i32 0, i32 8, i32 1, i32 11, i32 0, null}
!26 = !{i32 18, %struct.ByteAddressBuffer* @"\01?uibVirtPageTable@@3UByteAddressBuffer@@A", !"uibVirtPageTable", i32 0, i32 10, i32 1, i32 11, i32 0, null}
!27 = !{i32 19, %"class.Texture2D<vector<float, 4> >"* @"\01?envBrdfLutTexture@@3V?$Texture2D@V?$vector@M$03@@@@A", !"envBrdfLutTexture", i32 0, i32 22, i32 1, i32 2, i32 0, !7}
!28 = !{!29, !30, !31}
!29 = !{i32 0, %"class.RWTexture2D<vector<float, 3> >"* @"\01?texOutput0@@3V?$RWTexture2D@V?$vector@M$02@@@@A", !"texOutput0", i32 0, i32 0, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!30 = !{i32 1, %"class.RWTexture2D<vector<float, 4> >"* @"\01?texOutput1@@3V?$RWTexture2D@V?$vector@M$03@@@@A", !"texOutput1", i32 0, i32 1, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!31 = !{i32 2, %"class.RWTexture2D<vector<unsigned int, 4> >"* @"\01?texOutput4@@3V?$RWTexture2D@V?$vector@I$03@@@@A", !"texOutput4", i32 0, i32 5, i32 1, i32 2, i1 false, i1 false, i1 false, !32}
!32 = !{i32 0, i32 5}
!33 = !{!34, !35}
!34 = !{i32 0, %hostlayout.scene* @scene_legacy, !"scene", i32 0, i32 3, i32 1, i32 11728, null}
!35 = !{i32 1, %PathTracerConstants_decl* @PathTracerConstants_decl, !"PathTracerConstants_decl", i32 0, i32 0, i32 1, i32 80, null}
!36 = !{!37, !38}
!37 = !{i32 0, [4 x %struct.SamplerState]* @"\01?samplerArray@@3PAUSamplerState@@A", !"samplerArray", i32 0, i32 7, i32 4, i32 0, null}
!38 = !{i32 1, %struct.SamplerState* @"\01?bilinearClampSampler@@3USamplerState@@A", !"bilinearClampSampler", i32 0, i32 2, i32 1, i32 0, null}
!39 = !{i32 1, void ()* @"\01?Raygen@@YAXXZ", !40, void (%struct.Payload*)* @"\01?Visibility_Miss@@YAXUPayload@@@Z", !43, void (%struct.Payload*, %struct.BuiltInTriangleIntersectionAttributes*)* @"\01?Visibility_ClosestHit@@YAXUPayload@@UBuiltInTriangleIntersectionAttributes@@@Z", !45}
!40 = !{!41}
!41 = !{i32 1, !42, !42}
!42 = !{}
!43 = !{!41, !44}
!44 = !{i32 2, !42, !42}
!45 = !{!41, !44, !46}
!46 = !{i32 0, !42, !42}
!47 = !{null, !"", null, !4, !48}
!48 = !{i32 0, i64 33628176}
!49 = !{void ()* @"\01?Raygen@@YAXXZ", !"\01?Raygen@@YAXXZ", null, null, !50}
!50 = !{i32 8, i32 7, i32 5, !51}
!51 = !{i32 0}
!52 = !{void (%struct.Payload*, %struct.BuiltInTriangleIntersectionAttributes*)* @"\01?Visibility_ClosestHit@@YAXUPayload@@UBuiltInTriangleIntersectionAttributes@@@Z", !"\01?Visibility_ClosestHit@@YAXUPayload@@UBuiltInTriangleIntersectionAttributes@@@Z", null, null, !53}
!53 = !{i32 8, i32 10, i32 6, i32 24, i32 7, i32 8, i32 5, !51}
!54 = !{void (%struct.Payload*)* @"\01?Visibility_Miss@@YAXUPayload@@@Z", !"\01?Visibility_Miss@@YAXUPayload@@@Z", null, null, !55}
!55 = !{i32 8, i32 11, i32 6, i32 24, i32 5, !51}
!56 = !{!57, !59}
!57 = distinct !{!57, !58, !"\01?LightingModel_ApplySecondaryLighting@@YAXULocalAttributes@@Y00$$CBUSurfaceAttributes@@USecondaryLighting@@ULightIteratorOutput_PhysicallyBased@@AIAV?$vector@M$02@@@Z: %lightingOutput"}
!58 = distinct !{!58, !"\01?LightingModel_ApplySecondaryLighting@@YAXULocalAttributes@@Y00$$CBUSurfaceAttributes@@USecondaryLighting@@ULightIteratorOutput_PhysicallyBased@@AIAV?$vector@M$02@@@Z"}
!59 = distinct !{!59, !58, !"\01?LightingModel_ApplySecondaryLighting@@YAXULocalAttributes@@Y00$$CBUSurfaceAttributes@@USecondaryLighting@@ULightIteratorOutput_PhysicallyBased@@AIAV?$vector@M$02@@@Z: %outRayTransmittance"}
!60 = !{!61, !63}
!61 = distinct !{!61, !62, !"\01?BindlessGeometry_GetPackedTri@@YA?AUBindlessGeometryPackedTri@@UBindlessGeometryInput@@UByteAddressBuffer@@@Z: %agg.result"}
!62 = distinct !{!62, !"\01?BindlessGeometry_GetPackedTri@@YA?AUBindlessGeometryPackedTri@@UBindlessGeometryInput@@UByteAddressBuffer@@@Z"}
!63 = distinct !{!63, !64, !"\01?GetGeometryOutput@@YA?AUBindlessGeometryOutput@@UPayload@@@Z: %agg.result"}
!64 = distinct !{!64, !"\01?GetGeometryOutput@@YA?AUBindlessGeometryOutput@@UPayload@@@Z"}
!65 = !{!66, !61, !63}
!66 = distinct !{!66, !67, !"\01?UGB_SetupMeshletUnpackingBuffers@@YA?BUUGB_MeshletUnpackingBuffers@@UByteAddressBuffer@@00@Z: %agg.result"}
!67 = distinct !{!67, !"\01?UGB_SetupMeshletUnpackingBuffers@@YA?BUUGB_MeshletUnpackingBuffers@@UByteAddressBuffer@@00@Z"}
!68 = !{!69, !63}
!69 = distinct !{!69, !70, !"\01?BindlessGeometry_GetInputFromDXR@@YA?AUBindlessGeometryInput@@IIIIUByteAddressBuffer@@000V?$StructuredBuffer@UGfxWorldDrawOffsets@@@@00000@Z: %agg.result"}
!70 = distinct !{!70, !"\01?BindlessGeometry_GetInputFromDXR@@YA?AUBindlessGeometryInput@@IIIIUByteAddressBuffer@@000V?$StructuredBuffer@UGfxWorldDrawOffsets@@@@00000@Z"}
!71 = !{!72, !69, !63}
!72 = distinct !{!72, !73, !"\01?UnpackXSurfUGBData@@YA?AUXSurfUGBData@@IUByteAddressBuffer@@0@Z: %agg.result"}
!73 = distinct !{!73, !"\01?UnpackXSurfUGBData@@YA?AUXSurfUGBData@@IUByteAddressBuffer@@0@Z"}
!74 = !{!75, !77, !79}
!75 = distinct !{!75, !76, !"\01?GetBindlessTex_compositeBlendMap@@YA?AV?$Texture2D@V?$vector@M$03@@@@XZ: %agg.result"}
!76 = distinct !{!76, !"\01?GetBindlessTex_compositeBlendMap@@YA?AV?$Texture2D@V?$vector@M$03@@@@XZ"}
!77 = distinct !{!77, !78, !"\01?Layer_AccumulateAll@@YA?AULayer_Accumulator@@UPixelInput@@IM@Z: %agg.result"}
!78 = distinct !{!78, !"\01?Layer_AccumulateAll@@YA?AULayer_Accumulator@@UPixelInput@@IM@Z"}
!79 = distinct !{!79, !80, !"\01?GetLModelInput@@YA?AULModelInput@@UPixelInput@@@Z: %agg.result"}
!80 = distinct !{!80, !"\01?GetLModelInput@@YA?AULModelInput@@UPixelInput@@@Z"}
!81 = !{!82, !84, !86}
!82 = distinct !{!82, !83, !"\01?Raycast@@YA?AUPayload@@V?$vector@M$02@@0M@Z: %agg.result"}
!83 = distinct !{!83, !"\01?Raycast@@YA?AUPayload@@V?$vector@M$02@@0M@Z"}
!84 = distinct !{!84, !85, !"\01?Raycast@@YA?AUPayload@@V?$vector@M$02@@0M_N@Z: %agg.result"}
!85 = distinct !{!85, !"\01?Raycast@@YA?AUPayload@@V?$vector@M$02@@0M_N@Z"}
!86 = distinct !{!86, !87, !"\01?Lights_Iterate_Raytraced@@YAXULocalAttributes@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z: %lightingOutput"}
!87 = distinct !{!87, !"\01?Lights_Iterate_Raytraced@@YAXULocalAttributes@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z"}
!88 = !{!86}
!89 = !{i32 1}
!90 = !{!91, !91, i64 0}
!91 = !{!"float", !92, i64 0}
!92 = !{!"omnipotent char", !93, i64 0}
!93 = !{!"Simple C/C++ TBAA"}
!94 = !{!95, !97}
!95 = distinct !{!95, !96, !"\01?Raycast@@YA?AUPayload@@V?$vector@M$02@@0M@Z: %agg.result"}
!96 = distinct !{!96, !"\01?Raycast@@YA?AUPayload@@V?$vector@M$02@@0M@Z"}
!97 = distinct !{!97, !98, !"\01?Raycast@@YA?AUPayload@@V?$vector@M$02@@0M_N@Z: %agg.result"}
!98 = distinct !{!98, !"\01?Raycast@@YA?AUPayload@@V?$vector@M$02@@0M_N@Z"}
!99 = !{!100, !100, i64 0}
!100 = !{!"int", !92, i64 0}
!101 = !{!102}
!102 = distinct !{!102, !103, !"\01?GetBindlessTexture2D@@YA?AV?$Texture2D@V?$vector@M$03@@@@I@Z: %agg.result"}
!103 = distinct !{!103, !"\01?GetBindlessTexture2D@@YA?AV?$Texture2D@V?$vector@M$03@@@@I@Z"}
!104 = distinct !{!104, !105}
!105 = !{!"llvm.loop.unroll.full"}
!106 = !{!61}
!107 = !{!63}
!108 = distinct !{!108, !105}
!109 = !{!110, !112, !63}
!110 = distinct !{!110, !111, !"\01?BindlessGeometry_UnpackTri@@YA?AUBindlessGeometryOutput@@UBindlessGeometryInput@@UBindlessGeometryPackedTri@@V?$vector@M$01@@V?$vector@I$01@@V?$vector@M$03@@@Z: %agg.result"}
!111 = distinct !{!111, !"\01?BindlessGeometry_UnpackTri@@YA?AUBindlessGeometryOutput@@UBindlessGeometryInput@@UBindlessGeometryPackedTri@@V?$vector@M$01@@V?$vector@I$01@@V?$vector@M$03@@@Z"}
!112 = distinct !{!112, !113, !"\01?BindlessGeometry_UnpackTriDXR@@YA?AUBindlessGeometryOutput@@UBindlessGeometryInput@@UBindlessGeometryPackedTri@@V?$vector@M$01@@@Z: %agg.result"}
!113 = distinct !{!113, !"\01?BindlessGeometry_UnpackTriDXR@@YA?AUBindlessGeometryOutput@@UBindlessGeometryInput@@UBindlessGeometryPackedTri@@V?$vector@M$01@@@Z"}
!114 = distinct !{!114, !105}
!115 = distinct !{!115, !105}
!116 = !{!117}
!117 = distinct !{!117, !118, !"\01?GetPixelInput@@YA?AUPixelInput@@V?$vector@I$01@@UBindlessGeometryOutput@@@Z: %agg.result"}
!118 = distinct !{!118, !"\01?GetPixelInput@@YA?AUPixelInput@@V?$vector@I$01@@UBindlessGeometryOutput@@@Z"}
!119 = !{!120, !122, !124, !77, !79}
!120 = distinct !{!120, !121, !"\01?GetBindlessTex_albedoMap@@YA?AV?$Texture2D@V?$vector@M$03@@@@XZ: %agg.result"}
!121 = distinct !{!121, !"\01?GetBindlessTex_albedoMap@@YA?AV?$Texture2D@V?$vector@M$03@@@@XZ"}
!122 = distinct !{!122, !123, !"\01?GetAlbedoMetalness@Layer0_Accessor@@QAAXV?$vector@M$01@@AIAV?$vector@M$02@@AIAMV3@H@Z: %albedo"}
!123 = distinct !{!123, !"\01?GetAlbedoMetalness@Layer0_Accessor@@QAAXV?$vector@M$01@@AIAV?$vector@M$02@@AIAMV3@H@Z"}
!124 = distinct !{!124, !123, !"\01?GetAlbedoMetalness@Layer0_Accessor@@QAAXV?$vector@M$01@@AIAV?$vector@M$02@@AIAMV3@H@Z: %metalness"}
!125 = !{!126, !122, !124, !77, !79}
!126 = distinct !{!126, !127, !"\01?GetBindlessTex_tintMap@@YA?AV?$Texture2D@V?$vector@M$03@@@@XZ: %agg.result"}
!127 = distinct !{!127, !"\01?GetBindlessTex_tintMap@@YA?AV?$Texture2D@V?$vector@M$03@@@@XZ"}
!128 = !{!129, !131, !133, !134, !77, !79}
!129 = distinct !{!129, !130, !"\01?GetBindlessTex_normalMap@@YA?AV?$Texture2D@V?$vector@M$03@@@@XZ: %agg.result"}
!130 = distinct !{!130, !"\01?GetBindlessTex_normalMap@@YA?AV?$Texture2D@V?$vector@M$03@@@@XZ"}
!131 = distinct !{!131, !132, !"\01?GetNormalOcclusionGloss@Layer0_Accessor@@QAAXV?$vector@M$01@@V?$vector@M$03@@_NAIAV?$vector@M$02@@AIAM4@Z: %normal"}
!132 = distinct !{!132, !"\01?GetNormalOcclusionGloss@Layer0_Accessor@@QAAXV?$vector@M$01@@V?$vector@M$03@@_NAIAV?$vector@M$02@@AIAM4@Z"}
!133 = distinct !{!133, !132, !"\01?GetNormalOcclusionGloss@Layer0_Accessor@@QAAXV?$vector@M$01@@V?$vector@M$03@@_NAIAV?$vector@M$02@@AIAM4@Z: %occlusion"}
!134 = distinct !{!134, !132, !"\01?GetNormalOcclusionGloss@Layer0_Accessor@@QAAXV?$vector@M$01@@V?$vector@M$03@@_NAIAV?$vector@M$02@@AIAM4@Z: %gloss"}
!135 = !{!136, !77, !79}
!136 = distinct !{!136, !137, !"\01?GetBindlessTex_emissiveMap@@YA?AV?$Texture2D@V?$vector@M$03@@@@XZ: %agg.result"}
!137 = distinct !{!137, !"\01?GetBindlessTex_emissiveMap@@YA?AV?$Texture2D@V?$vector@M$03@@@@XZ"}
!138 = !{!139, !77, !79}
!139 = distinct !{!139, !140, !"\01?GetBindlessTex_revealMap1@@YA?AV?$Texture2D@V?$vector@M$03@@@@XZ: %agg.result"}
!140 = distinct !{!140, !"\01?GetBindlessTex_revealMap1@@YA?AV?$Texture2D@V?$vector@M$03@@@@XZ"}
!141 = !{!142, !77, !79}
!142 = distinct !{!142, !143, !"\01?GetBindlessTex_opacityMap1@@YA?AV?$Texture2D@V?$vector@M$03@@@@XZ: %agg.result"}
!143 = distinct !{!143, !"\01?GetBindlessTex_opacityMap1@@YA?AV?$Texture2D@V?$vector@M$03@@@@XZ"}
!144 = !{!145, !147, !149, !77, !79}
!145 = distinct !{!145, !146, !"\01?GetBindlessTex_albedoMap1@@YA?AV?$Texture2D@V?$vector@M$03@@@@XZ: %agg.result"}
!146 = distinct !{!146, !"\01?GetBindlessTex_albedoMap1@@YA?AV?$Texture2D@V?$vector@M$03@@@@XZ"}
!147 = distinct !{!147, !148, !"\01?GetAlbedoMetalness@Layer1_Accessor@@QAAXV?$vector@M$01@@AIAV?$vector@M$02@@AIAMV3@H@Z: %albedo"}
!148 = distinct !{!148, !"\01?GetAlbedoMetalness@Layer1_Accessor@@QAAXV?$vector@M$01@@AIAV?$vector@M$02@@AIAMV3@H@Z"}
!149 = distinct !{!149, !148, !"\01?GetAlbedoMetalness@Layer1_Accessor@@QAAXV?$vector@M$01@@AIAV?$vector@M$02@@AIAMV3@H@Z: %metalness"}
!150 = !{!151, !147, !149, !77, !79}
!151 = distinct !{!151, !152, !"\01?GetBindlessTex_tintMap1@@YA?AV?$Texture2D@V?$vector@M$03@@@@XZ: %agg.result"}
!152 = distinct !{!152, !"\01?GetBindlessTex_tintMap1@@YA?AV?$Texture2D@V?$vector@M$03@@@@XZ"}
!153 = !{!154, !156, !158, !159, !77, !79}
!154 = distinct !{!154, !155, !"\01?GetBindlessTex_normalMap1@@YA?AV?$Texture2D@V?$vector@M$03@@@@XZ: %agg.result"}
!155 = distinct !{!155, !"\01?GetBindlessTex_normalMap1@@YA?AV?$Texture2D@V?$vector@M$03@@@@XZ"}
!156 = distinct !{!156, !157, !"\01?GetNormalOcclusionGloss@Layer1_Accessor@@QAAXV?$vector@M$01@@V?$vector@M$03@@_NAIAV?$vector@M$02@@AIAM4@Z: %normal"}
!157 = distinct !{!157, !"\01?GetNormalOcclusionGloss@Layer1_Accessor@@QAAXV?$vector@M$01@@V?$vector@M$03@@_NAIAV?$vector@M$02@@AIAM4@Z"}
!158 = distinct !{!158, !157, !"\01?GetNormalOcclusionGloss@Layer1_Accessor@@QAAXV?$vector@M$01@@V?$vector@M$03@@_NAIAV?$vector@M$02@@AIAM4@Z: %occlusion"}
!159 = distinct !{!159, !157, !"\01?GetNormalOcclusionGloss@Layer1_Accessor@@QAAXV?$vector@M$01@@V?$vector@M$03@@_NAIAV?$vector@M$02@@AIAM4@Z: %gloss"}
!160 = !{!161, !77, !79}
!161 = distinct !{!161, !162, !"\01?GetBindlessTex_emissiveMap1@@YA?AV?$Texture2D@V?$vector@M$03@@@@XZ: %agg.result"}
!162 = distinct !{!162, !"\01?GetBindlessTex_emissiveMap1@@YA?AV?$Texture2D@V?$vector@M$03@@@@XZ"}
!163 = !{!164, !77, !79}
!164 = distinct !{!164, !165, !"\01?GetBindlessTex_revealMap2@@YA?AV?$Texture2D@V?$vector@M$03@@@@XZ: %agg.result"}
!165 = distinct !{!165, !"\01?GetBindlessTex_revealMap2@@YA?AV?$Texture2D@V?$vector@M$03@@@@XZ"}
!166 = !{!167, !77, !79}
!167 = distinct !{!167, !168, !"\01?GetBindlessTex_opacityMap2@@YA?AV?$Texture2D@V?$vector@M$03@@@@XZ: %agg.result"}
!168 = distinct !{!168, !"\01?GetBindlessTex_opacityMap2@@YA?AV?$Texture2D@V?$vector@M$03@@@@XZ"}
!169 = !{!170, !172, !174, !77, !79}
!170 = distinct !{!170, !171, !"\01?GetBindlessTex_albedoMap2@@YA?AV?$Texture2D@V?$vector@M$03@@@@XZ: %agg.result"}
!171 = distinct !{!171, !"\01?GetBindlessTex_albedoMap2@@YA?AV?$Texture2D@V?$vector@M$03@@@@XZ"}
!172 = distinct !{!172, !173, !"\01?GetAlbedoMetalness@Layer2_Accessor@@QAAXV?$vector@M$01@@AIAV?$vector@M$02@@AIAMV3@H@Z: %albedo"}
!173 = distinct !{!173, !"\01?GetAlbedoMetalness@Layer2_Accessor@@QAAXV?$vector@M$01@@AIAV?$vector@M$02@@AIAMV3@H@Z"}
!174 = distinct !{!174, !173, !"\01?GetAlbedoMetalness@Layer2_Accessor@@QAAXV?$vector@M$01@@AIAV?$vector@M$02@@AIAMV3@H@Z: %metalness"}
!175 = !{!176, !172, !174, !77, !79}
!176 = distinct !{!176, !177, !"\01?GetBindlessTex_tintMap2@@YA?AV?$Texture2D@V?$vector@M$03@@@@XZ: %agg.result"}
!177 = distinct !{!177, !"\01?GetBindlessTex_tintMap2@@YA?AV?$Texture2D@V?$vector@M$03@@@@XZ"}
!178 = !{!179, !181, !183, !184, !77, !79}
!179 = distinct !{!179, !180, !"\01?GetBindlessTex_normalMap2@@YA?AV?$Texture2D@V?$vector@M$03@@@@XZ: %agg.result"}
!180 = distinct !{!180, !"\01?GetBindlessTex_normalMap2@@YA?AV?$Texture2D@V?$vector@M$03@@@@XZ"}
!181 = distinct !{!181, !182, !"\01?GetNormalOcclusionGloss@Layer2_Accessor@@QAAXV?$vector@M$01@@V?$vector@M$03@@_NAIAV?$vector@M$02@@AIAM4@Z: %normal"}
!182 = distinct !{!182, !"\01?GetNormalOcclusionGloss@Layer2_Accessor@@QAAXV?$vector@M$01@@V?$vector@M$03@@_NAIAV?$vector@M$02@@AIAM4@Z"}
!183 = distinct !{!183, !182, !"\01?GetNormalOcclusionGloss@Layer2_Accessor@@QAAXV?$vector@M$01@@V?$vector@M$03@@_NAIAV?$vector@M$02@@AIAM4@Z: %occlusion"}
!184 = distinct !{!184, !182, !"\01?GetNormalOcclusionGloss@Layer2_Accessor@@QAAXV?$vector@M$01@@V?$vector@M$03@@_NAIAV?$vector@M$02@@AIAM4@Z: %gloss"}
!185 = !{!186, !77, !79}
!186 = distinct !{!186, !187, !"\01?GetBindlessTex_emissiveMap2@@YA?AV?$Texture2D@V?$vector@M$03@@@@XZ: %agg.result"}
!187 = distinct !{!187, !"\01?GetBindlessTex_emissiveMap2@@YA?AV?$Texture2D@V?$vector@M$03@@@@XZ"}
!188 = !{!189, !77, !79}
!189 = distinct !{!189, !190, !"\01?GetBindlessTex_revealMap3@@YA?AV?$Texture2D@V?$vector@M$03@@@@XZ: %agg.result"}
!190 = distinct !{!190, !"\01?GetBindlessTex_revealMap3@@YA?AV?$Texture2D@V?$vector@M$03@@@@XZ"}
!191 = !{!192, !77, !79}
!192 = distinct !{!192, !193, !"\01?GetBindlessTex_opacityMap3@@YA?AV?$Texture2D@V?$vector@M$03@@@@XZ: %agg.result"}
!193 = distinct !{!193, !"\01?GetBindlessTex_opacityMap3@@YA?AV?$Texture2D@V?$vector@M$03@@@@XZ"}
!194 = !{!195, !197, !199, !77, !79}
!195 = distinct !{!195, !196, !"\01?GetBindlessTex_albedoMap3@@YA?AV?$Texture2D@V?$vector@M$03@@@@XZ: %agg.result"}
!196 = distinct !{!196, !"\01?GetBindlessTex_albedoMap3@@YA?AV?$Texture2D@V?$vector@M$03@@@@XZ"}
!197 = distinct !{!197, !198, !"\01?GetAlbedoMetalness@Layer3_Accessor@@QAAXV?$vector@M$01@@AIAV?$vector@M$02@@AIAMV3@H@Z: %albedo"}
!198 = distinct !{!198, !"\01?GetAlbedoMetalness@Layer3_Accessor@@QAAXV?$vector@M$01@@AIAV?$vector@M$02@@AIAMV3@H@Z"}
!199 = distinct !{!199, !198, !"\01?GetAlbedoMetalness@Layer3_Accessor@@QAAXV?$vector@M$01@@AIAV?$vector@M$02@@AIAMV3@H@Z: %metalness"}
!200 = !{!201, !197, !199, !77, !79}
!201 = distinct !{!201, !202, !"\01?GetBindlessTex_tintMap3@@YA?AV?$Texture2D@V?$vector@M$03@@@@XZ: %agg.result"}
!202 = distinct !{!202, !"\01?GetBindlessTex_tintMap3@@YA?AV?$Texture2D@V?$vector@M$03@@@@XZ"}
!203 = !{!204, !206, !208, !209, !77, !79}
!204 = distinct !{!204, !205, !"\01?GetBindlessTex_normalMap3@@YA?AV?$Texture2D@V?$vector@M$03@@@@XZ: %agg.result"}
!205 = distinct !{!205, !"\01?GetBindlessTex_normalMap3@@YA?AV?$Texture2D@V?$vector@M$03@@@@XZ"}
!206 = distinct !{!206, !207, !"\01?GetNormalOcclusionGloss@Layer3_Accessor@@QAAXV?$vector@M$01@@V?$vector@M$03@@_NAIAV?$vector@M$02@@AIAM4@Z: %normal"}
!207 = distinct !{!207, !"\01?GetNormalOcclusionGloss@Layer3_Accessor@@QAAXV?$vector@M$01@@V?$vector@M$03@@_NAIAV?$vector@M$02@@AIAM4@Z"}
!208 = distinct !{!208, !207, !"\01?GetNormalOcclusionGloss@Layer3_Accessor@@QAAXV?$vector@M$01@@V?$vector@M$03@@_NAIAV?$vector@M$02@@AIAM4@Z: %occlusion"}
!209 = distinct !{!209, !207, !"\01?GetNormalOcclusionGloss@Layer3_Accessor@@QAAXV?$vector@M$01@@V?$vector@M$03@@_NAIAV?$vector@M$02@@AIAM4@Z: %gloss"}
!210 = !{!211, !77, !79}
!211 = distinct !{!211, !212, !"\01?GetBindlessTex_emissiveMap3@@YA?AV?$Texture2D@V?$vector@M$03@@@@XZ: %agg.result"}
!212 = distinct !{!212, !"\01?GetBindlessTex_emissiveMap3@@YA?AV?$Texture2D@V?$vector@M$03@@@@XZ"}
!213 = !{!82, !84, !86, !214}
!214 = distinct !{!214, !215, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@Y00$$CBUSurfaceAttributes@@USecondaryLightingInput@@ULocalAttributes@@@Z: %agg.result"}
!215 = distinct !{!215, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@Y00$$CBUSurfaceAttributes@@USecondaryLightingInput@@ULocalAttributes@@@Z"}
!216 = !{!217, !219, !86, !214}
!217 = distinct !{!217, !218, !"\01?Raycast@@YA?AUPayload@@V?$vector@M$02@@0M@Z: %agg.result"}
!218 = distinct !{!218, !"\01?Raycast@@YA?AUPayload@@V?$vector@M$02@@0M@Z"}
!219 = distinct !{!219, !220, !"\01?Raycast@@YA?AUPayload@@V?$vector@M$02@@0M_N@Z: %agg.result"}
!220 = distinct !{!220, !"\01?Raycast@@YA?AUPayload@@V?$vector@M$02@@0M_N@Z"}
!221 = !{!92, !92, i64 0}

