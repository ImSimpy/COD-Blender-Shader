;
; Note: shader requires additional functionality:
;       UAVs at every shader stage
;
; shader hash: c97313f518049ad8081e899036d1be18
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
;
; Resource Bindings:
;
; Name                                 Type  Format         Dim      ID      HLSL Bind  Count
; ------------------------------ ---------- ------- ----------- ------- -------------- ------
; scene                             cbuffer      NA          NA     CB0            cb3     1
; tlas                              texture     i32         ras      T0             t0     1
; texDepth                          texture     f32          2d      T1             t1     1
; texTangentFrame                   texture     u32          2d      T2             t2     1
; bufSceneLightIndices              texture    byte         r/o      T3             t8     1
; texFrustumLightIndices            texture     u32          2d      T4             t5     1
; bufLightCountSum                  texture    byte         r/o      T5             t7     1
; frustumLightConstants             texture    byte         r/o      T6            t19     1
; texOutputSpatial                      UAV     u32          2d      U0             u0     1
; texOutputTemporal                     UAV     u32          2d      U1             u1     1
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%struct.RaytracingAccelerationStructure = type { i32 }
%"class.Texture2D<float>" = type { float, %"class.Texture2D<float>::mips_type" }
%"class.Texture2D<float>::mips_type" = type { i32 }
%"class.Texture2D<unsigned int>" = type { i32, %"class.Texture2D<unsigned int>::mips_type" }
%"class.Texture2D<unsigned int>::mips_type" = type { i32 }
%struct.ByteAddressBuffer = type { i32 }
%"class.Texture2D<vector<unsigned int, 2> >" = type { <2 x i32>, %"class.Texture2D<vector<unsigned int, 2> >::mips_type" }
%"class.Texture2D<vector<unsigned int, 2> >::mips_type" = type { i32 }
%"class.RWTexture2D<vector<unsigned int, 4> >" = type { <4 x i32> }
%"class.RWTexture2D<vector<unsigned int, 2> >" = type { <2 x i32> }
%hostlayout.scene = type { %hostlayout.struct.GfxCodeSceneConsts }
%hostlayout.struct.GfxCodeSceneConsts = type { <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <3 x float>, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x i32>, <4 x i32>, <4 x float>, float, float, float, float, i32, i32, float, float, <2 x i32>, <2 x i32>, <2 x float>, <2 x float>, <3 x float>, i32, <3 x float>, float, <3 x float>, float, <2 x float>, <2 x float>, <3 x float>, float, <3 x float>, float, float, float, float, float, <3 x float>, float, i32, float, float, float, <4 x float>, <3 x float>, float, float, float, float, float, <4 x float>, float, float, float, float, i32, i32, i32, float, <4 x float>, i32, i32, i32, i32, i32, i32, i32, i32, <2 x i32>, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, [2 x <4 x i32>], [3 x <2 x float>], i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <2 x float>, <2 x float>, <4 x float>, <4 x i32>, <4 x float>, i32, float, float, float, i32, i32, i32, i32, <2 x float>, <2 x float>, <2 x float>, <2 x float>, i32, i32, <2 x float>, <2 x float>, <2 x float>, <3 x float>, i32, i32, i32, i32, i32, <4 x i32>, <4 x i32>, <4 x i32>, <4 x float>, i32, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <3 x float>, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], <4 x float>, [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], i32, i32, float, i32, <2 x float>, float, float, float, float, float, i32, <3 x float>, float, float, float, float, float, <3 x float>, float, <3 x float>, float, <3 x float>, float, float, float, float, float, <2 x float>, <2 x float>, float, float, float, float, <3 x float>, float, <2 x float>, i32, i32, <3 x float>, float, float, float, float, float, float, float, float, float, [4 x <3 x float>], i32, [4 x <3 x float>], i32, [4 x <3 x float>], i32, <4 x i32>, <2 x float>, <2 x float>, <2 x float>, i32, i32, float, float, float, float, <4 x float>, <4 x i32>, <4 x float>, <4 x float>, <4 x float>, i32, i32, i32, i32, <4 x float>, i32, float, float, i32, i32, float, float, i32, i32, float, float, i32, i32, float, float, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, float, float, float, float, i32, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, i32, i32, i32, float, <4 x float>, <4 x float>, <4 x float>, <4 x float>, i32, i32, i32, float, <4 x float>, float, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x i32>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [8 x <4 x float>], [8 x <4 x float>], <4 x float>, <3 x float>, i32, <2 x float>, float, float, float, float, float, float, <2 x float>, <2 x float>, <2 x float>, <2 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <2 x float>, float, float, <4 x float>, i32, i32, i32, i32, <3 x float>, i32, <4 x i32>, <4 x i32>, <2 x float>, <2 x i32>, <4 x float>, <4 x float>, <2 x float>, <2 x float>, [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, float, i32, i32, i32, i32, i32, float, float, <2 x float>, <2 x float>, float, float, float, float, i32, float, float, float, float, float, float, float, float, float, float, float, float, i32, i32, i32, float, float, float, i32, <2 x i32>, <2 x i32>, <4 x i32>, float, float, float, float, <4 x float>, <4 x float>, <2 x float>, <2 x float>, <4 x float>, <4 x float>, float, float, float, float, <4 x float>, float, float, float, float, i32, i32, float, float, <4 x float>, <2 x float>, <2 x float>, i32, i32, float, float, [4 x <4 x float>], float, float, float, float, float, float, float, float, i32, i32, i32, float, <4 x float>, <4 x float>, i32, i32, i32, i32, <2 x i32>, <2 x i32>, [2 x <4 x i32>], i32, float, float, float, i32, float, float, i32, <2 x i32>, <2 x float>, float, float, float, i32, %struct.GfxWeatherData, %hostlayout.struct.GfxVolumetricData, %struct.GfxFogRaymarchingData, %struct.GfxEnvironmentalFogData, %struct.GfxShallowWaterData, %struct.GfxGroundDeformationData, %struct.GfxSplinedModelGlobals }
%struct.GfxWeatherData = type { i32, i32, i32, i32, float, float, float, float, float, float, i32, i32, float, float, float, float, i32, i32, i32, i32, float, float, float, float, float, i32, i32, i32, i32, i32, i32, i32, <3 x float>, i32, <3 x float>, i32, i32, float, i32, i32, float, float, float, float }
%hostlayout.struct.GfxVolumetricData = type { [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <2 x float>, <2 x float>, <2 x float>, <2 x float>, <3 x i32>, i32, <3 x float>, i32, <4 x float>, <3 x float>, i32, i32, float, float, float, i32, i32, i32, float, <4 x float>, float, float, i32, i32, <3 x float>, i32, <3 x float>, float, <3 x float>, float, <2 x float>, float, float, <3 x float>, float, <3 x float>, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, <3 x float>, float, i32, float, float, float, <3 x float>, float, <2 x float>, <2 x float>, <3 x float>, float, i32, float, float, float, float, float, float, float, i32, i32, float, float, <3 x float>, float, i32, i32, <2 x float> }
%struct.GfxFogRaymarchingData = type { <2 x float>, <2 x float>, float, float, float, float, float, float, float, float, float, float, float, float, <2 x float>, <2 x float>, <3 x float>, float }
%struct.GfxEnvironmentalFogData = type { float, float, float, i32 }
%struct.GfxShallowWaterData = type { i32, i32, i32, i32, float, float, float, float, <2 x float>, <2 x float>, float, float, float, float, <3 x float>, float, float, float, float, float, float, float, float, float, i32, float, float, float, float, float, float, float, float, float, float, float, i32, float, float, float, float, i32, i32, i32 }
%struct.GfxGroundDeformationData = type { <2 x float>, <2 x float>, float, float, float, float, float, float, float, float, float, float, float, float, float, float, i32, i32 }
%struct.GfxSplinedModelGlobals = type { [64 x <4 x float>], [64 x <4 x float>], [16 x <4 x float>], [32 x <4 x float>], [64 x <4 x float>], [16 x <4 x float>], [16 x <4 x float>], float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float }
%struct.VisibilityPayload = type { float, i32 }
%dx.types.Handle = type { i8* }
%dx.types.CBufRet.i32 = type { i32, i32, i32, i32 }
%dx.types.CBufRet.f32 = type { float, float, float, float }
%dx.types.ResRet.f32 = type { float, float, float, float, i32 }
%dx.types.ResRet.i32 = type { i32, i32, i32, i32, i32 }
%struct.BuiltInTriangleIntersectionAttributes = type { <2 x float> }

@"\01?tlas@@3URaytracingAccelerationStructure@@A" = external constant %struct.RaytracingAccelerationStructure, align 4
@"\01?texDepth@@3V?$Texture2D@M@@A" = external constant %"class.Texture2D<float>", align 4
@"\01?texTangentFrame@@3V?$Texture2D@I@@A" = external constant %"class.Texture2D<unsigned int>", align 4
@"\01?bufSceneLightIndices@@3UByteAddressBuffer@@A" = external constant %struct.ByteAddressBuffer, align 4
@"\01?texFrustumLightIndices@@3V?$Texture2D@V?$vector@I$01@@@@A" = external constant %"class.Texture2D<vector<unsigned int, 2> >", align 4
@"\01?bufLightCountSum@@3UByteAddressBuffer@@A" = external constant %struct.ByteAddressBuffer, align 4
@"\01?texOutputSpatial@@3V?$RWTexture2D@V?$vector@I$03@@@@A" = external constant %"class.RWTexture2D<vector<unsigned int, 4> >", align 4
@"\01?texOutputTemporal@@3V?$RWTexture2D@V?$vector@I$01@@@@A" = external constant %"class.RWTexture2D<vector<unsigned int, 2> >", align 4
@"\01?frustumLightConstants@@3UByteAddressBuffer@@A" = external constant %struct.ByteAddressBuffer, align 4
@llvm.global_ctors = appending global [0 x { i32, void ()*, i8* }] zeroinitializer
@scene_legacy = external global %hostlayout.scene

; Function Attrs: nounwind
define void @"\01?Raygen@@YAXXZ"() #0 {
  %1 = load %struct.ByteAddressBuffer, %struct.ByteAddressBuffer* @"\01?frustumLightConstants@@3UByteAddressBuffer@@A", align 4
  %2 = load %struct.ByteAddressBuffer, %struct.ByteAddressBuffer* @"\01?bufLightCountSum@@3UByteAddressBuffer@@A", align 4
  %3 = load %"class.Texture2D<vector<unsigned int, 2> >", %"class.Texture2D<vector<unsigned int, 2> >"* @"\01?texFrustumLightIndices@@3V?$Texture2D@V?$vector@I$01@@@@A", align 4
  %4 = load %struct.ByteAddressBuffer, %struct.ByteAddressBuffer* @"\01?bufSceneLightIndices@@3UByteAddressBuffer@@A", align 4, !noalias !38
  %5 = load %"class.Texture2D<unsigned int>", %"class.Texture2D<unsigned int>"* @"\01?texTangentFrame@@3V?$Texture2D@I@@A", align 4
  %6 = load %"class.Texture2D<float>", %"class.Texture2D<float>"* @"\01?texDepth@@3V?$Texture2D@M@@A", align 4
  %7 = load %struct.RaytracingAccelerationStructure, %struct.RaytracingAccelerationStructure* @"\01?tlas@@3URaytracingAccelerationStructure@@A", align 4, !noalias !38
  %8 = load %"class.RWTexture2D<vector<unsigned int, 2> >", %"class.RWTexture2D<vector<unsigned int, 2> >"* @"\01?texOutputTemporal@@3V?$RWTexture2D@V?$vector@I$01@@@@A", align 4
  %9 = load %"class.RWTexture2D<vector<unsigned int, 4> >", %"class.RWTexture2D<vector<unsigned int, 4> >"* @"\01?texOutputSpatial@@3V?$RWTexture2D@V?$vector@I$03@@@@A", align 4
  %10 = load %hostlayout.scene, %hostlayout.scene* @scene_legacy
  %11 = alloca [4 x i32], align 4
  %12 = alloca %struct.VisibilityPayload, align 4
  %13 = call %dx.types.Handle @dx.op.createHandleForLib.hostlayout.scene(i32 160, %hostlayout.scene %10)  ; CreateHandleForLib(Resource)
  %14 = call i32 @dx.op.dispatchRaysIndex.i32(i32 145, i8 0)  ; DispatchRaysIndex(col)
  %15 = call i32 @dx.op.dispatchRaysIndex.i32(i32 145, i8 1)  ; DispatchRaysIndex(col)
  %16 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %13, i32 138)  ; CBufferLoadLegacy(handle,regIndex)
  %17 = extractvalue %dx.types.CBufRet.i32 %16, 2
  %18 = lshr i32 %17, 5
  %19 = and i32 %18, 1
  %20 = shl i32 %14, %19
  %21 = shl i32 %15, %19
  %22 = and i32 %17, 96
  %23 = icmp eq i32 %22, 96
  %24 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %13, i32 361)  ; CBufferLoadLegacy(handle,regIndex)
  %25 = extractvalue %dx.types.CBufRet.i32 %24, 2
  %26 = and i32 %25, 1
  %27 = xor i32 %26, 1
  %28 = lshr i32 %25, 1
  %29 = and i32 %28, 1
  %30 = select i1 %23, i32 %27, i32 0
  %31 = select i1 %23, i32 %29, i32 0
  %32 = add i32 %30, %20
  %33 = add i32 %31, %21
  %34 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %35 = extractvalue %dx.types.CBufRet.f32 %34, 0
  %36 = extractvalue %dx.types.CBufRet.f32 %34, 1
  %37 = fadd fast float %35, -1.000000e+00
  %38 = fadd fast float %36, -1.000000e+00
  %39 = fptosi float %37 to i32
  %40 = fptosi float %38 to i32
  %41 = call i32 @dx.op.binary.i32(i32 38, i32 %32, i32 %39)  ; IMin(a,b)
  %42 = call i32 @dx.op.binary.i32(i32 38, i32 %33, i32 %40)  ; IMin(a,b)
  %43 = sitofp i32 %41 to float
  %44 = sitofp i32 %42 to float
  %45 = fadd fast float %43, 5.000000e-01
  %46 = fadd fast float %44, 5.000000e-01
  %47 = extractvalue %dx.types.CBufRet.f32 %34, 2
  %48 = extractvalue %dx.types.CBufRet.f32 %34, 3
  %49 = call %dx.types.Handle @"dx.op.createHandleForLib.class.Texture2D<float>"(i32 160, %"class.Texture2D<float>" %6)  ; CreateHandleForLib(Resource)
  %50 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %49, i32 0, i32 %41, i32 %42, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %51 = extractvalue %dx.types.ResRet.f32 %50, 0
  %52 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 235)  ; CBufferLoadLegacy(handle,regIndex)
  %53 = extractvalue %dx.types.CBufRet.f32 %52, 0
  %54 = extractvalue %dx.types.CBufRet.f32 %52, 2
  %55 = fcmp fast ogt float %51, 9.843750e-01
  %56 = select i1 %55, float 6.400000e+01, float 0x3FF0410420000000
  %57 = select i1 %55, float -6.300000e+01, float -0.000000e+00
  %58 = select i1 %55, float %53, float %54
  %59 = call float @dx.op.unary.f32(i32 7, float %51)  ; Saturate(value)
  %60 = fmul fast float %56, %59
  %61 = fadd fast float %60, %57
  %62 = call float @dx.op.binary.f32(i32 35, float %61, float 0x3E45798EE0000000)  ; FMax(a,b)
  %63 = fdiv fast float %58, %62
  %64 = select i1 %55, float -1.000000e+00, float 1.000000e+00
  %65 = fmul fast float %63, %64
  %66 = fmul fast float %45, 2.000000e+00
  %67 = fmul fast float %66, %47
  %68 = fmul fast float %48, 2.000000e+00
  %69 = fmul fast float %68, %46
  %70 = fsub fast float 1.000000e+00, %67
  %71 = fsub fast float 1.000000e+00, %69
  %72 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %73 = extractvalue %dx.types.CBufRet.f32 %72, 0
  %74 = extractvalue %dx.types.CBufRet.f32 %72, 1
  %75 = extractvalue %dx.types.CBufRet.f32 %72, 2
  %76 = fmul fast float %73, %70
  %77 = fmul fast float %74, %70
  %78 = fmul fast float %75, %70
  %79 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %80 = extractvalue %dx.types.CBufRet.f32 %79, 0
  %81 = extractvalue %dx.types.CBufRet.f32 %79, 1
  %82 = extractvalue %dx.types.CBufRet.f32 %79, 2
  %83 = fmul fast float %80, %71
  %84 = fmul fast float %81, %71
  %85 = fmul fast float %82, %71
  %86 = fadd fast float %83, %76
  %87 = fadd fast float %84, %77
  %88 = fadd fast float %85, %78
  %89 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %90 = extractvalue %dx.types.CBufRet.f32 %89, 0
  %91 = extractvalue %dx.types.CBufRet.f32 %89, 1
  %92 = extractvalue %dx.types.CBufRet.f32 %89, 2
  %93 = fadd fast float %86, %90
  %94 = fadd fast float %87, %91
  %95 = fadd fast float %88, %92
  %96 = fmul fast float %93, %63
  %97 = fmul fast float %94, %63
  %98 = fmul fast float %95, %63
  %99 = call %dx.types.Handle @"dx.op.createHandleForLib.class.Texture2D<unsigned int>"(i32 160, %"class.Texture2D<unsigned int>" %5)  ; CreateHandleForLib(Resource)
  %100 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %99, i32 0, i32 %41, i32 %42, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %101 = extractvalue %dx.types.ResRet.i32 %100, 0
  %102 = lshr i32 %101, 8
  %103 = and i32 %101, 255
  %104 = and i32 %102, 255
  %105 = uitofp i32 %103 to float
  %106 = uitofp i32 %104 to float
  %107 = fmul fast float %105, 0x3F80101020000000
  %108 = fmul fast float %106, 0x3F80101020000000
  %109 = fadd fast float %107, -1.000000e+00
  %110 = fadd fast float %108, -1.000000e+00
  %111 = call float @dx.op.unary.f32(i32 6, float %109)  ; FAbs(value)
  %112 = fsub fast float 1.000000e+00, %111
  %113 = call float @dx.op.unary.f32(i32 6, float %110)  ; FAbs(value)
  %114 = fsub fast float %112, %113
  %115 = fsub fast float -0.000000e+00, %114
  %116 = call float @dx.op.binary.f32(i32 35, float %115, float 0.000000e+00)  ; FMax(a,b)
  %117 = fcmp fast ogt float %109, 0.000000e+00
  %118 = fsub fast float -0.000000e+00, %116
  %119 = select i1 %117, float %118, float %116
  %120 = fadd fast float %119, %109
  %121 = fcmp fast ogt float %110, 0.000000e+00
  %122 = select i1 %121, float %118, float %116
  %123 = fadd fast float %122, %110
  %124 = call float @dx.op.dot3.f32(i32 55, float %120, float %123, float %114, float %120, float %123, float %114)  ; Dot3(ax,ay,az,bx,by,bz)
  %125 = call float @dx.op.unary.f32(i32 25, float %124)  ; Rsqrt(value)
  %126 = call %dx.types.Handle @"dx.op.createHandleForLib.class.Texture2D<vector<unsigned int, 2> >"(i32 160, %"class.Texture2D<vector<unsigned int, 2> >" %3)  ; CreateHandleForLib(Resource)
  %127 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %126, i32 0, i32 %41, i32 %42, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %128 = extractvalue %dx.types.ResRet.i32 %127, 0
  %129 = extractvalue %dx.types.ResRet.i32 %127, 1
  %130 = call %dx.types.Handle @dx.op.createHandleForLib.struct.ByteAddressBuffer(i32 160, %struct.ByteAddressBuffer %2)  ; CreateHandleForLib(Resource)
  %131 = call %dx.types.ResRet.i32 @dx.op.rawBufferLoad.i32(i32 139, %dx.types.Handle %130, i32 0, i32 undef, i8 1, i32 4)  ; RawBufferLoad(srv,index,elementOffset,mask,alignment)
  %132 = extractvalue %dx.types.ResRet.i32 %131, 0
  %133 = uitofp i32 %132 to float
  %134 = call float @dx.op.binary.f32(i32 35, float 1.000000e+00, float %133)  ; FMax(a,b)
  %135 = fmul fast float %36, %35
  %136 = fdiv fast float %135, %134
  %137 = fmul fast float %136, 4.000000e+00
  %138 = fadd fast float %137, 5.000000e-01
  %139 = fptosi float %138 to i32
  %140 = call i32 @dx.op.binary.i32(i32 37, i32 %139, i32 1)  ; IMax(a,b)
  %141 = call i32 @dx.op.binary.i32(i32 38, i32 %140, i32 4)  ; IMin(a,b)
  br label %142

; <label>:142                                     ; preds = %581, %0
  %143 = phi i32 [ 0, %0 ], [ %584, %581 ]
  %144 = phi i32 [ 0, %0 ], [ %582, %581 ]
  %145 = phi i32 [ 0, %0 ], [ %583, %581 ]
  %146 = phi i32 [ 0, %0 ], [ %569, %581 ]
  %147 = phi i32 [ 0, %0 ], [ %570, %581 ]
  %148 = icmp ult i32 %143, 4
  %149 = select i1 %148, i32 %128, i32 %129
  %150 = shl i32 %143, 3
  %151 = and i32 %150, 24
  %152 = lshr i32 %149, %151
  %153 = and i32 %152, 255
  %154 = icmp eq i32 %153, 255
  br i1 %154, label %586, label %155

; <label>:155                                     ; preds = %142
  %156 = mul nuw nsw i32 %153, 112
  %157 = call %dx.types.Handle @dx.op.createHandleForLib.struct.ByteAddressBuffer(i32 160, %struct.ByteAddressBuffer %1)  ; CreateHandleForLib(Resource)
  %158 = add nuw nsw i32 %156, 32
  %159 = call %dx.types.ResRet.f32 @dx.op.rawBufferLoad.f32(i32 139, %dx.types.Handle %157, i32 %158, i32 undef, i8 7, i32 4)  ; RawBufferLoad(srv,index,elementOffset,mask,alignment)
  %160 = extractvalue %dx.types.ResRet.f32 %159, 0
  %161 = extractvalue %dx.types.ResRet.f32 %159, 1
  %162 = extractvalue %dx.types.ResRet.f32 %159, 2
  %163 = add nuw nsw i32 %156, 44
  %164 = call %dx.types.ResRet.f32 @dx.op.rawBufferLoad.f32(i32 139, %dx.types.Handle %157, i32 %163, i32 undef, i8 1, i32 4)  ; RawBufferLoad(srv,index,elementOffset,mask,alignment)
  %165 = extractvalue %dx.types.ResRet.f32 %164, 0
  %166 = add nuw nsw i32 %156, 48
  %167 = call %dx.types.ResRet.f32 @dx.op.rawBufferLoad.f32(i32 139, %dx.types.Handle %157, i32 %166, i32 undef, i8 15, i32 4)  ; RawBufferLoad(srv,index,elementOffset,mask,alignment)
  %168 = extractvalue %dx.types.ResRet.f32 %167, 0
  %169 = extractvalue %dx.types.ResRet.f32 %167, 1
  %170 = extractvalue %dx.types.ResRet.f32 %167, 2
  %171 = shl nuw nsw i32 %153, 2
  %172 = call %dx.types.Handle @dx.op.createHandleForLib.struct.ByteAddressBuffer(i32 160, %struct.ByteAddressBuffer %4)  ; CreateHandleForLib(Resource)
  %173 = call %dx.types.ResRet.i32 @dx.op.rawBufferLoad.i32(i32 139, %dx.types.Handle %172, i32 %171, i32 undef, i8 1, i32 4)  ; RawBufferLoad(srv,index,elementOffset,mask,alignment)
  %174 = extractvalue %dx.types.ResRet.i32 %173, 0
  %175 = lshr i32 %174, 16
  %176 = icmp ugt i32 %174, 67108863
  %177 = select i1 %176, float 0.000000e+00, float 1.000000e+00
  %178 = fmul fast float %177, %160
  %179 = fmul fast float %177, %161
  %180 = fmul fast float %177, %162
  %181 = fmul fast float %177, %165
  %182 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %13, i32 138)  ; CBufferLoadLegacy(handle,regIndex)
  %183 = extractvalue %dx.types.CBufRet.i32 %182, 2
  %184 = and i32 %183, 128
  %185 = icmp ne i32 %184, 0
  %186 = select i1 %185, float 0.000000e+00, float %178
  %187 = select i1 %185, float 0.000000e+00, float %179
  %188 = select i1 %185, float 0.000000e+00, float %180
  %189 = select i1 %185, float 1.000000e+00, float %181
  %190 = icmp ugt i32 %143, 3
  %191 = or i1 %190, %176
  %192 = select i1 %191, i32 1, i32 %141
  %193 = icmp eq i32 %192, 0
  br i1 %193, label %528, label %194

; <label>:194                                     ; preds = %155
  br label %195

; <label>:195                                     ; preds = %484, %194
  %196 = phi float [ %524, %484 ], [ 0.000000e+00, %194 ]
  %197 = phi i32 [ %525, %484 ], [ 0, %194 ]
  %198 = fptoui float %45 to i32
  %199 = fptoui float %46 to i32
  %200 = and i32 %198, 255
  %201 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %13, i32 361)  ; CBufferLoadLegacy(handle,regIndex)
  %202 = extractvalue %dx.types.CBufRet.i32 %201, 2
  %203 = and i32 %202, 255
  %204 = add i32 %202, 128
  %205 = and i32 %204, 255
  %206 = shl i32 %199, 8
  %207 = and i32 %206, 65280
  %208 = or i32 %207, %200
  %209 = mul i32 %197, 1000
  %210 = add i32 %209, %208
  %211 = mul i32 %210, 1365458477
  %212 = xor i32 %203, %211
  %213 = mul i32 %212, -512718531
  %214 = lshr i32 %211, 16
  %215 = xor i32 %213, %214
  %216 = lshr i32 %215, 4
  %217 = and i32 %216, 15
  %218 = lshr i32 %211, 8
  %219 = xor i32 %215, %218
  %220 = xor i32 %219, %217
  %221 = mul i32 %220, 153742143
  %222 = lshr i32 %211, 23
  %223 = xor i32 %221, %222
  %224 = lshr i32 %223, 1
  %225 = and i32 %224, 127
  %226 = xor i32 %225, %223
  %227 = lshr i32 %211, 27
  %228 = or i32 %227, 1
  %229 = mul i32 %228, -1074439621
  %230 = mul i32 %229, %226
  %231 = lshr i32 %230, 2
  %232 = and i32 %231, 63
  %233 = xor i32 %232, %230
  %234 = mul i32 %233, -1638916925
  %235 = lshr i32 %234, 2
  %236 = and i32 %235, 63
  %237 = xor i32 %236, %234
  %238 = mul i32 %237, -933190689
  %239 = and i32 %238, 255
  %240 = lshr i32 %239, 5
  %241 = xor i32 %240, %239
  %242 = add i32 %241, %211
  %243 = and i32 %242, 255
  %244 = mul i32 %210, 1757159915
  %245 = and i32 %242, 15
  %246 = xor i32 %245, %244
  %247 = mul i32 %246, -512718531
  %248 = lshr i32 %244, 16
  %249 = lshr i32 %244, 8
  %250 = xor i32 %249, %248
  %251 = xor i32 %250, %247
  %252 = mul i32 %251, 153742143
  %253 = lshr i32 %244, 23
  %254 = xor i32 %252, %253
  %255 = lshr i32 %254, 1
  %256 = and i32 %255, 7
  %257 = xor i32 %256, %254
  %258 = lshr i32 %244, 27
  %259 = or i32 %258, 1
  %260 = mul i32 %259, -1074439621
  %261 = mul i32 %260, %257
  %262 = lshr i32 %261, 2
  %263 = and i32 %262, 3
  %264 = xor i32 %263, %261
  %265 = mul i32 %264, -1638916925
  %266 = lshr i32 %265, 2
  %267 = and i32 %266, 3
  %268 = xor i32 %267, %265
  %269 = mul i32 %268, -933190689
  %270 = add i32 %269, %244
  %271 = and i32 %270, 15
  %272 = mul i32 %210, 48610963
  %273 = lshr i32 %243, 4
  %274 = xor i32 %273, %272
  %275 = mul i32 %274, -512718531
  %276 = lshr i32 %272, 16
  %277 = lshr i32 %272, 8
  %278 = xor i32 %277, %276
  %279 = xor i32 %278, %275
  %280 = mul i32 %279, 153742143
  %281 = lshr i32 %272, 23
  %282 = xor i32 %280, %281
  %283 = lshr i32 %282, 1
  %284 = and i32 %283, 7
  %285 = xor i32 %284, %282
  %286 = lshr i32 %272, 27
  %287 = or i32 %286, 1
  %288 = mul i32 %287, -1074439621
  %289 = mul i32 %288, %285
  %290 = lshr i32 %289, 2
  %291 = and i32 %290, 3
  %292 = xor i32 %291, %289
  %293 = mul i32 %292, -1638916925
  %294 = lshr i32 %293, 2
  %295 = and i32 %294, 3
  %296 = xor i32 %295, %293
  %297 = mul i32 %296, -933190689
  %298 = add i32 %297, %272
  %299 = and i32 %298, 15
  %300 = mul i32 %210, -1770354533
  %301 = lshr i32 %300, 17
  %302 = xor i32 %301, %300
  %303 = xor i32 %302, %243
  %304 = lshr i32 %302, 10
  %305 = xor i32 %304, %303
  %306 = mul i32 %305, -1285212955
  %307 = lshr i32 %306, 12
  %308 = xor i32 %307, %306
  %309 = lshr i32 %306, 21
  %310 = xor i32 %308, %309
  %311 = mul i32 %310, -1812183147
  %312 = xor i32 %311, -546426753
  %313 = lshr i32 %312, 17
  %314 = xor i32 %313, %312
  %315 = lshr i32 %300, 18
  %316 = or i32 %315, 1
  %317 = mul i32 %314, %316
  %318 = uitofp i32 %317 to float
  %319 = fmul fast float %318, 0x3DEFFFFFC0000000
  %320 = mul i32 %210, 915196087
  %321 = lshr i32 %320, 17
  %322 = xor i32 %321, %320
  %323 = xor i32 %322, %243
  %324 = lshr i32 %322, 10
  %325 = xor i32 %324, %323
  %326 = mul i32 %325, -1285212955
  %327 = lshr i32 %326, 12
  %328 = xor i32 %327, %326
  %329 = lshr i32 %326, 21
  %330 = xor i32 %328, %329
  %331 = mul i32 %330, -1812183147
  %332 = xor i32 %331, -546426753
  %333 = lshr i32 %332, 17
  %334 = xor i32 %333, %332
  %335 = lshr i32 %320, 18
  %336 = or i32 %335, 1
  %337 = mul i32 %334, %336
  %338 = uitofp i32 %337 to float
  %339 = fmul fast float %338, 0x3DEFFFFFC0000000
  %340 = uitofp i32 %271 to float
  %341 = uitofp i32 %299 to float
  %342 = fadd fast float %341, %319
  %343 = fmul fast float %342, 6.250000e-02
  %344 = fadd fast float %343, %340
  %345 = fmul fast float %344, 6.250000e-02
  %346 = uitofp i32 %243 to float
  %347 = fadd fast float %339, %346
  %348 = xor i32 %205, %211
  %349 = mul i32 %348, -512718531
  %350 = xor i32 %349, %214
  %351 = lshr i32 %350, 4
  %352 = and i32 %351, 15
  %353 = xor i32 %350, %218
  %354 = xor i32 %353, %352
  %355 = mul i32 %354, 153742143
  %356 = xor i32 %355, %222
  %357 = lshr i32 %356, 1
  %358 = and i32 %357, 127
  %359 = xor i32 %358, %356
  %360 = mul i32 %229, %359
  %361 = lshr i32 %360, 2
  %362 = and i32 %361, 63
  %363 = xor i32 %362, %360
  %364 = mul i32 %363, -1638916925
  %365 = lshr i32 %364, 2
  %366 = and i32 %365, 63
  %367 = xor i32 %366, %364
  %368 = mul i32 %367, -933190689
  %369 = and i32 %368, 255
  %370 = lshr i32 %369, 5
  %371 = xor i32 %370, %369
  %372 = add i32 %371, %211
  %373 = and i32 %372, 255
  %374 = and i32 %372, 15
  %375 = xor i32 %374, %244
  %376 = mul i32 %375, -512718531
  %377 = xor i32 %250, %376
  %378 = mul i32 %377, 153742143
  %379 = xor i32 %378, %253
  %380 = lshr i32 %379, 1
  %381 = and i32 %380, 7
  %382 = xor i32 %381, %379
  %383 = mul i32 %260, %382
  %384 = lshr i32 %383, 2
  %385 = and i32 %384, 3
  %386 = xor i32 %385, %383
  %387 = mul i32 %386, -1638916925
  %388 = lshr i32 %387, 2
  %389 = and i32 %388, 3
  %390 = xor i32 %389, %387
  %391 = mul i32 %390, -933190689
  %392 = add i32 %391, %244
  %393 = and i32 %392, 15
  %394 = lshr i32 %373, 4
  %395 = xor i32 %394, %272
  %396 = mul i32 %395, -512718531
  %397 = xor i32 %278, %396
  %398 = mul i32 %397, 153742143
  %399 = xor i32 %398, %281
  %400 = lshr i32 %399, 1
  %401 = and i32 %400, 7
  %402 = xor i32 %401, %399
  %403 = mul i32 %288, %402
  %404 = lshr i32 %403, 2
  %405 = and i32 %404, 3
  %406 = xor i32 %405, %403
  %407 = mul i32 %406, -1638916925
  %408 = lshr i32 %407, 2
  %409 = and i32 %408, 3
  %410 = xor i32 %409, %407
  %411 = mul i32 %410, -933190689
  %412 = add i32 %411, %272
  %413 = and i32 %412, 15
  %414 = xor i32 %302, %373
  %415 = xor i32 %304, %414
  %416 = mul i32 %415, -1285212955
  %417 = lshr i32 %416, 12
  %418 = xor i32 %417, %416
  %419 = lshr i32 %416, 21
  %420 = xor i32 %418, %419
  %421 = mul i32 %420, -1812183147
  %422 = xor i32 %421, -546426753
  %423 = lshr i32 %422, 17
  %424 = xor i32 %423, %422
  %425 = mul i32 %424, %316
  %426 = uitofp i32 %425 to float
  %427 = fmul fast float %426, 0x3DEFFFFFC0000000
  %428 = uitofp i32 %393 to float
  %429 = uitofp i32 %413 to float
  %430 = fadd fast float %429, %427
  %431 = fmul fast float %430, 6.250000e-02
  %432 = fadd fast float %431, %428
  %433 = fmul fast float %432, 1.250000e-01
  %434 = fadd fast float %433, -1.000000e+00
  %435 = fmul fast float %434, %186
  %436 = fmul fast float %434, %187
  %437 = fmul fast float %434, %188
  %438 = fsub fast float %168, %96
  %439 = fadd fast float %438, %435
  %440 = fsub fast float %169, %97
  %441 = fadd fast float %440, %436
  %442 = fsub fast float %170, %98
  %443 = fadd fast float %442, %437
  %444 = call float @dx.op.dot3.f32(i32 55, float %439, float %441, float %443, float %439, float %441, float %443)  ; Dot3(ax,ay,az,bx,by,bz)
  %445 = call float @dx.op.unary.f32(i32 24, float %444)  ; Sqrt(value)
  %446 = fdiv fast float 1.000000e+00, %445
  %447 = fmul fast float %439, %446
  %448 = fmul fast float %441, %446
  %449 = fmul fast float %443, %446
  %450 = fmul fast float %189, %189
  %451 = fdiv fast float %450, %444
  %452 = fsub fast float 1.000000e+00, %451
  %453 = call float @dx.op.unary.f32(i32 24, float %452)  ; Sqrt(value)
  %454 = fsub fast float 1.000000e+00, %345
  %455 = fmul fast float %345, %453
  %456 = fadd fast float %454, %455
  %457 = fmul fast float %456, %456
  %458 = fsub fast float 1.000000e+00, %457
  %459 = call float @dx.op.unary.f32(i32 24, float %458)  ; Sqrt(value)
  %460 = fmul fast float %347, 0x3F9921FB60000000
  %461 = call float @dx.op.unary.f32(i32 12, float %460)  ; Cos(value)
  %462 = fmul fast float %461, %459
  %463 = call float @dx.op.unary.f32(i32 13, float %460)  ; Sin(value)
  %464 = fmul fast float %463, %459
  %465 = call float @dx.op.unary.f32(i32 6, float %447)  ; FAbs(value)
  %466 = call float @dx.op.unary.f32(i32 6, float %448)  ; FAbs(value)
  %467 = fmul fast float %466, 5.000000e+00
  %468 = fcmp fast ogt float %465, %467
  %469 = fmul fast float %449, %449
  br i1 %468, label %470, label %477

; <label>:470                                     ; preds = %195
  %471 = fmul fast float %447, %447
  %472 = fadd fast float %471, %469
  %473 = call float @dx.op.unary.f32(i32 25, float %472)  ; Rsqrt(value)
  %474 = fmul fast float %449, %473
  %475 = fsub fast float -0.000000e+00, %474
  %476 = fmul fast float %473, %447
  br label %484

; <label>:477                                     ; preds = %195
  %478 = fmul fast float %448, %448
  %479 = fadd fast float %478, %469
  %480 = call float @dx.op.unary.f32(i32 25, float %479)  ; Rsqrt(value)
  %481 = fmul fast float %449, %480
  %482 = fsub fast float -0.000000e+00, %481
  %483 = fmul fast float %480, %448
  br label %484

; <label>:484                                     ; preds = %477, %470
  %485 = phi float [ %475, %470 ], [ 0.000000e+00, %477 ]
  %486 = phi float [ 0.000000e+00, %470 ], [ %482, %477 ]
  %487 = phi float [ %476, %470 ], [ %483, %477 ]
  %488 = fmul fast float %486, %449
  %489 = fmul fast float %487, %448
  %490 = fsub fast float %488, %489
  %491 = fmul fast float %487, %447
  %492 = fmul fast float %485, %449
  %493 = fsub fast float %491, %492
  %494 = fmul fast float %485, %448
  %495 = fmul fast float %486, %447
  %496 = fsub fast float %494, %495
  %497 = fmul fast float %485, %462
  %498 = call float @dx.op.tertiary.f32(i32 46, float %464, float %490, float %497)  ; FMad(a,b,c)
  %499 = call float @dx.op.tertiary.f32(i32 46, float %456, float %447, float %498)  ; FMad(a,b,c)
  %500 = fmul fast float %486, %462
  %501 = call float @dx.op.tertiary.f32(i32 46, float %464, float %493, float %500)  ; FMad(a,b,c)
  %502 = call float @dx.op.tertiary.f32(i32 46, float %456, float %448, float %501)  ; FMad(a,b,c)
  %503 = fmul fast float %487, %462
  %504 = call float @dx.op.tertiary.f32(i32 46, float %464, float %496, float %503)  ; FMad(a,b,c)
  %505 = call float @dx.op.tertiary.f32(i32 46, float %456, float %449, float %504)  ; FMad(a,b,c)
  %506 = call float @dx.op.dot3.f32(i32 55, float %499, float %502, float %505, float %499, float %502, float %505)  ; Dot3(ax,ay,az,bx,by,bz)
  %507 = call float @dx.op.unary.f32(i32 25, float %506)  ; Rsqrt(value)
  %508 = fmul fast float %507, %499
  %509 = fmul fast float %507, %502
  %510 = fmul fast float %507, %505
  %511 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %512 = extractvalue %dx.types.CBufRet.f32 %511, 0
  %513 = extractvalue %dx.types.CBufRet.f32 %511, 1
  %514 = extractvalue %dx.types.CBufRet.f32 %511, 2
  %515 = fadd fast float %512, %96
  %516 = fadd fast float %513, %97
  %517 = fadd fast float %514, %98
  %518 = getelementptr inbounds %struct.VisibilityPayload, %struct.VisibilityPayload* %12, i32 0, i32 0
  store float 0.000000e+00, float* %518, align 4, !tbaa !41, !noalias !38
  %519 = getelementptr inbounds %struct.VisibilityPayload, %struct.VisibilityPayload* %12, i32 0, i32 1
  store i32 0, i32* %519, align 4, !tbaa !45, !noalias !38
  %520 = call %dx.types.Handle @dx.op.createHandleForLib.struct.RaytracingAccelerationStructure(i32 160, %struct.RaytracingAccelerationStructure %7)  ; CreateHandleForLib(Resource)
  call void @dx.op.traceRay.struct.VisibilityPayload(i32 157, %dx.types.Handle %520, i32 4, i32 1, i32 0, i32 0, i32 0, float %515, float %516, float %517, float 0x3FA99999A0000000, float %508, float %509, float %510, float %445, %struct.VisibilityPayload* nonnull %12)  ; TraceRay(AccelerationStructure,RayFlags,InstanceInclusionMask,RayContributionToHitGroupIndex,MultiplierForGeometryContributionToShaderIndex,MissShaderIndex,Origin_X,Origin_Y,Origin_Z,TMin,Direction_X,Direction_Y,Direction_Z,TMax,payload)
  %521 = load float, float* %518, align 4, !tbaa !41, !noalias !38
  %522 = fcmp fast oeq float %521, 1.000000e+06
  %523 = select i1 %522, float 1.000000e+00, float 0.000000e+00
  %524 = fadd fast float %523, %196
  %525 = add nuw i32 %197, 1
  %526 = icmp eq i32 %525, %192
  br i1 %526, label %527, label %195

; <label>:527                                     ; preds = %484
  br label %528

; <label>:528                                     ; preds = %527, %155
  %529 = phi float [ 0.000000e+00, %155 ], [ %524, %527 ]
  %530 = uitofp i32 %192 to float
  %531 = fdiv fast float 1.000000e+00, %530
  %532 = fmul fast float %531, %529
  %533 = lshr i32 %152, 5
  %534 = and i32 %533, 3
  %535 = lshr i32 %153, 7
  %536 = add nuw nsw i32 %535, 363
  %537 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %13, i32 %536)  ; CBufferLoadLegacy(handle,regIndex)
  %538 = extractvalue %dx.types.CBufRet.i32 %537, 0
  %539 = extractvalue %dx.types.CBufRet.i32 %537, 1
  %540 = extractvalue %dx.types.CBufRet.i32 %537, 2
  %541 = extractvalue %dx.types.CBufRet.i32 %537, 3
  %542 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i32 0, i32 0
  store i32 %538, i32* %542, align 4
  %543 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i32 0, i32 1
  store i32 %539, i32* %543, align 4
  %544 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i32 0, i32 2
  store i32 %540, i32* %544, align 4
  %545 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i32 0, i32 3
  store i32 %541, i32* %545, align 4
  %546 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i32 0, i32 %534
  %547 = load i32, i32* %546, align 4, !tbaa !45, !noalias !38
  %548 = and i32 %152, 31
  %549 = shl i32 1, %548
  %550 = and i32 %547, %549
  %551 = icmp ne i32 %550, 0
  %552 = select i1 %551, float 0.000000e+00, float %532
  br i1 %148, label %553, label %561

; <label>:553                                     ; preds = %528
  %554 = call float @dx.op.unary.f32(i32 24, float %552)  ; Sqrt(value)
  %555 = fadd fast float %554, 0x3F60101020000000
  %556 = call float @dx.op.unary.f32(i32 7, float %555)  ; Saturate(value)
  %557 = fmul fast float %556, 2.550000e+02
  %558 = fptoui float %557 to i32
  %559 = shl i32 %558, %151
  %560 = or i32 %559, %146
  br label %568

; <label>:561                                     ; preds = %528
  %562 = fcmp fast ogt float %552, 0.000000e+00
  %563 = zext i1 %562 to i32
  %564 = add nuw nsw i32 %143, 28
  %565 = and i32 %564, 31
  %566 = shl i32 %563, %565
  %567 = or i32 %566, %147
  br label %568

; <label>:568                                     ; preds = %561, %553
  %569 = phi i32 [ %560, %553 ], [ %146, %561 ]
  %570 = phi i32 [ %147, %553 ], [ %567, %561 ]
  %571 = call i32 @dx.op.binary.i32(i32 40, i32 %175, i32 1023)  ; UMin(a,b)
  br i1 %148, label %572, label %581

; <label>:572                                     ; preds = %568
  %573 = mul nuw nsw i32 %143, 10
  %574 = and i32 %573, 30
  %575 = shl i32 %571, %574
  %576 = or i32 %575, %144
  %577 = icmp eq i32 %143, 3
  %578 = lshr i32 %571, 2
  %579 = select i1 %577, i32 %578, i32 0
  %580 = or i32 %579, %145
  br label %581

; <label>:581                                     ; preds = %572, %568
  %582 = phi i32 [ %576, %572 ], [ %144, %568 ]
  %583 = phi i32 [ %580, %572 ], [ %145, %568 ]
  %584 = add nuw nsw i32 %143, 1
  %585 = icmp ult i32 %584, 7
  br i1 %585, label %142, label %586

; <label>:586                                     ; preds = %581, %142
  %587 = phi i32 [ %143, %142 ], [ %584, %581 ]
  %588 = phi i32 [ %144, %142 ], [ %582, %581 ]
  %589 = phi i32 [ %145, %142 ], [ %583, %581 ]
  %590 = phi i32 [ %146, %142 ], [ %569, %581 ]
  %591 = phi i32 [ %147, %142 ], [ %570, %581 ]
  %592 = icmp ult i32 %587, 4
  br i1 %592, label %593, label %608

; <label>:593                                     ; preds = %586
  br label %594

; <label>:594                                     ; preds = %594, %593
  %595 = phi i32 [ %601, %594 ], [ %588, %593 ]
  %596 = phi i32 [ %604, %594 ], [ %589, %593 ]
  %597 = phi i32 [ %605, %594 ], [ %587, %593 ]
  %598 = mul i32 %597, 10
  %599 = and i32 %598, 30
  %600 = shl i32 1023, %599
  %601 = or i32 %600, %595
  %602 = icmp eq i32 %597, 3
  %603 = select i1 %602, i32 255, i32 0
  %604 = or i32 %603, %596
  %605 = add nuw nsw i32 %597, 1
  %606 = icmp eq i32 %605, 4
  br i1 %606, label %607, label %594

; <label>:607                                     ; preds = %594
  br label %608

; <label>:608                                     ; preds = %607, %586
  %609 = phi i32 [ %588, %586 ], [ %601, %607 ]
  %610 = phi i32 [ %589, %586 ], [ %604, %607 ]
  %611 = fmul fast float %125, 5.000000e-01
  %612 = fmul fast float %611, %120
  %613 = fmul fast float %611, %123
  %614 = fmul fast float %114, 5.000000e-01
  %615 = fmul fast float %614, %125
  %616 = fadd fast float %612, 5.000000e-01
  %617 = fadd fast float %613, 5.000000e-01
  %618 = fadd fast float %615, 5.000000e-01
  %619 = call float @dx.op.unary.f32(i32 7, float %616)  ; Saturate(value)
  %620 = call float @dx.op.unary.f32(i32 7, float %617)  ; Saturate(value)
  %621 = call float @dx.op.unary.f32(i32 7, float %618)  ; Saturate(value)
  %622 = fmul fast float %619, 6.300000e+01
  %623 = fptoui float %622 to i32
  %624 = shl i32 %623, 16
  %625 = fmul fast float %620, 6.300000e+01
  %626 = fptoui float %625 to i32
  %627 = shl i32 %626, 22
  %628 = fcmp fast olt float %621, 0.000000e+00
  %629 = zext i1 %628 to i32
  %630 = shl nuw nsw i32 %629, 28
  %631 = shl i32 %591, 29
  %632 = or i32 %624, %631
  %633 = or i32 %632, %627
  %634 = or i32 %633, %630
  %635 = bitcast float %65 to i32
  %636 = call %dx.types.Handle @"dx.op.createHandleForLib.class.RWTexture2D<vector<unsigned int, 4> >"(i32 160, %"class.RWTexture2D<vector<unsigned int, 4> >" %9)  ; CreateHandleForLib(Resource)
  call void @dx.op.textureStore.i32(i32 67, %dx.types.Handle %636, i32 %14, i32 %15, i32 undef, i32 %590, i32 %128, i32 %634, i32 %635, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %637 = shl i32 %610, 16
  %638 = call %dx.types.Handle @"dx.op.createHandleForLib.class.RWTexture2D<vector<unsigned int, 2> >"(i32 160, %"class.RWTexture2D<vector<unsigned int, 2> >" %8)  ; CreateHandleForLib(Resource)
  call void @dx.op.textureStore.i32(i32 67, %dx.types.Handle %638, i32 %14, i32 %15, i32 undef, i32 %637, i32 %609, i32 %637, i32 %637, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  ret void
}

; Function Attrs: nounwind
define void @"\01?Visibility_Miss@@YAXUVisibilityPayload@@@Z"(%struct.VisibilityPayload* noalias nocapture %payload) #0 {
  %1 = getelementptr inbounds %struct.VisibilityPayload, %struct.VisibilityPayload* %payload, i32 0, i32 0
  store float 1.000000e+06, float* %1, align 4
  ret void
}

; Function Attrs: nounwind
define void @"\01?Visibility_ClosestHit@@YAXUVisibilityPayload@@UBuiltInTriangleIntersectionAttributes@@@Z"(%struct.VisibilityPayload* noalias nocapture %payload, %struct.BuiltInTriangleIntersectionAttributes* nocapture readnone %attr) #0 {
  %1 = call float @dx.op.rayTCurrent.f32(i32 154)  ; RayTCurrent()
  %2 = call i32 @dx.op.instanceID.i32(i32 141)  ; InstanceID()
  %3 = getelementptr inbounds %struct.VisibilityPayload, %struct.VisibilityPayload* %payload, i32 0, i32 0
  store float %1, float* %3, align 4
  %4 = getelementptr inbounds %struct.VisibilityPayload, %struct.VisibilityPayload* %payload, i32 0, i32 1
  store i32 %2, i32* %4, align 4
  ret void
}

; Function Attrs: nounwind readnone
declare float @dx.op.binary.f32(i32, float, float) #1

; Function Attrs: nounwind readnone
declare i32 @dx.op.binary.i32(i32, i32, i32) #1

; Function Attrs: nounwind readnone
declare float @dx.op.unary.f32(i32, float) #1

; Function Attrs: nounwind readnone
declare float @dx.op.dot3.f32(i32, float, float, float, float, float, float) #1

; Function Attrs: nounwind readnone
declare float @dx.op.tertiary.f32(i32, float, float, float) #1

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.i32 @dx.op.rawBufferLoad.i32(i32, %dx.types.Handle, i32, i32, i8, i32) #2

; Function Attrs: nounwind
declare void @dx.op.textureStore.i32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32, i8) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.rawBufferLoad.f32(i32, %dx.types.Handle, i32, i32, i8, i32) #2

; Function Attrs: nounwind
declare void @dx.op.traceRay.struct.VisibilityPayload(i32, %dx.types.Handle, i32, i32, i32, i32, i32, float, float, float, float, float, float, float, float, %struct.VisibilityPayload*) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.dispatchRaysIndex.i32(i32, i8) #1

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32) #2

; Function Attrs: nounwind readonly
declare float @dx.op.rayTCurrent.f32(i32) #2

; Function Attrs: nounwind readnone
declare i32 @dx.op.instanceID.i32(i32) #1

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32, %dx.types.Handle, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32, %dx.types.Handle, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.Handle @"dx.op.createHandleForLib.class.Texture2D<float>"(i32, %"class.Texture2D<float>") #2

; Function Attrs: nounwind readonly
declare %dx.types.Handle @dx.op.createHandleForLib.struct.ByteAddressBuffer(i32, %struct.ByteAddressBuffer) #2

; Function Attrs: nounwind readonly
declare %dx.types.Handle @"dx.op.createHandleForLib.class.Texture2D<vector<unsigned int, 2> >"(i32, %"class.Texture2D<vector<unsigned int, 2> >") #2

; Function Attrs: nounwind readonly
declare %dx.types.Handle @"dx.op.createHandleForLib.class.Texture2D<unsigned int>"(i32, %"class.Texture2D<unsigned int>") #2

; Function Attrs: nounwind readonly
declare %dx.types.Handle @dx.op.createHandleForLib.struct.RaytracingAccelerationStructure(i32, %struct.RaytracingAccelerationStructure) #2

; Function Attrs: nounwind readonly
declare %dx.types.Handle @"dx.op.createHandleForLib.class.RWTexture2D<vector<unsigned int, 4> >"(i32, %"class.RWTexture2D<vector<unsigned int, 4> >") #2

; Function Attrs: nounwind readonly
declare %dx.types.Handle @"dx.op.createHandleForLib.class.RWTexture2D<vector<unsigned int, 2> >"(i32, %"class.RWTexture2D<vector<unsigned int, 2> >") #2

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
!dx.typeAnnotations = !{!21}
!dx.entryPoints = !{!29, !31, !34, !36}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 5}
!2 = !{i32 1, i32 6}
!3 = !{!"lib", i32 6, i32 5}
!4 = !{!5, !16, !19, null}
!5 = !{!6, !8, !10, !12, !13, !14, !15}
!6 = !{i32 0, %struct.RaytracingAccelerationStructure* @"\01?tlas@@3URaytracingAccelerationStructure@@A", !"tlas", i32 0, i32 0, i32 1, i32 16, i32 0, !7}
!7 = !{i32 0, i32 4}
!8 = !{i32 1, %"class.Texture2D<float>"* @"\01?texDepth@@3V?$Texture2D@M@@A", !"texDepth", i32 0, i32 1, i32 1, i32 2, i32 0, !9}
!9 = !{i32 0, i32 9}
!10 = !{i32 2, %"class.Texture2D<unsigned int>"* @"\01?texTangentFrame@@3V?$Texture2D@I@@A", !"texTangentFrame", i32 0, i32 2, i32 1, i32 2, i32 0, !11}
!11 = !{i32 0, i32 5}
!12 = !{i32 3, %struct.ByteAddressBuffer* @"\01?bufSceneLightIndices@@3UByteAddressBuffer@@A", !"bufSceneLightIndices", i32 0, i32 8, i32 1, i32 11, i32 0, null}
!13 = !{i32 4, %"class.Texture2D<vector<unsigned int, 2> >"* @"\01?texFrustumLightIndices@@3V?$Texture2D@V?$vector@I$01@@@@A", !"texFrustumLightIndices", i32 0, i32 5, i32 1, i32 2, i32 0, !11}
!14 = !{i32 5, %struct.ByteAddressBuffer* @"\01?bufLightCountSum@@3UByteAddressBuffer@@A", !"bufLightCountSum", i32 0, i32 7, i32 1, i32 11, i32 0, null}
!15 = !{i32 6, %struct.ByteAddressBuffer* @"\01?frustumLightConstants@@3UByteAddressBuffer@@A", !"frustumLightConstants", i32 0, i32 19, i32 1, i32 11, i32 0, null}
!16 = !{!17, !18}
!17 = !{i32 0, %"class.RWTexture2D<vector<unsigned int, 4> >"* @"\01?texOutputSpatial@@3V?$RWTexture2D@V?$vector@I$03@@@@A", !"texOutputSpatial", i32 0, i32 0, i32 1, i32 2, i1 false, i1 false, i1 false, !11}
!18 = !{i32 1, %"class.RWTexture2D<vector<unsigned int, 2> >"* @"\01?texOutputTemporal@@3V?$RWTexture2D@V?$vector@I$01@@@@A", !"texOutputTemporal", i32 0, i32 1, i32 1, i32 2, i1 false, i1 false, i1 false, !11}
!19 = !{!20}
!20 = !{i32 0, %hostlayout.scene* @scene_legacy, !"scene", i32 0, i32 3, i32 1, i32 11728, null}
!21 = !{i32 1, void ()* @"\01?Raygen@@YAXXZ", !22, void (%struct.VisibilityPayload*)* @"\01?Visibility_Miss@@YAXUVisibilityPayload@@@Z", !25, void (%struct.VisibilityPayload*, %struct.BuiltInTriangleIntersectionAttributes*)* @"\01?Visibility_ClosestHit@@YAXUVisibilityPayload@@UBuiltInTriangleIntersectionAttributes@@@Z", !27}
!22 = !{!23}
!23 = !{i32 1, !24, !24}
!24 = !{}
!25 = !{!23, !26}
!26 = !{i32 2, !24, !24}
!27 = !{!23, !26, !28}
!28 = !{i32 0, !24, !24}
!29 = !{null, !"", null, !4, !30}
!30 = !{i32 0, i64 65552}
!31 = !{void ()* @"\01?Raygen@@YAXXZ", !"\01?Raygen@@YAXXZ", null, null, !32}
!32 = !{i32 8, i32 7, i32 5, !33}
!33 = !{i32 0}
!34 = !{void (%struct.VisibilityPayload*, %struct.BuiltInTriangleIntersectionAttributes*)* @"\01?Visibility_ClosestHit@@YAXUVisibilityPayload@@UBuiltInTriangleIntersectionAttributes@@@Z", !"\01?Visibility_ClosestHit@@YAXUVisibilityPayload@@UBuiltInTriangleIntersectionAttributes@@@Z", null, null, !35}
!35 = !{i32 8, i32 10, i32 6, i32 8, i32 7, i32 8, i32 5, !33}
!36 = !{void (%struct.VisibilityPayload*)* @"\01?Visibility_Miss@@YAXUVisibilityPayload@@@Z", !"\01?Visibility_Miss@@YAXUVisibilityPayload@@@Z", null, null, !37}
!37 = !{i32 8, i32 11, i32 6, i32 8, i32 5, !33}
!38 = !{!39}
!39 = distinct !{!39, !40, !"\01?LightIteratorCallback_DXR@@YAXULocalAttributes@@ULocalLightAttributes@@ULightIteratorInput_DXR@@ULightIteratorOutput_DXR@@@Z: %output"}
!40 = distinct !{!40, !"\01?LightIteratorCallback_DXR@@YAXULocalAttributes@@ULocalLightAttributes@@ULightIteratorInput_DXR@@ULightIteratorOutput_DXR@@@Z"}
!41 = !{!42, !42, i64 0}
!42 = !{!"float", !43, i64 0}
!43 = !{!"omnipotent char", !44, i64 0}
!44 = !{!"Simple C/C++ TBAA"}
!45 = !{!46, !46, i64 0}
!46 = !{!"int", !43, i64 0}

