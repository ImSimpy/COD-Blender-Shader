;
; Note: shader requires additional functionality:
;       UAVs at every shader stage
;
; shader hash: 3caa0ca35bdbff860516780bb3d0d064
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
; cbuffer AoConstants_decl
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
; scene                             cbuffer      NA          NA     CB0            cb3     1
; AoConstants_decl                  cbuffer      NA          NA     CB1            cb0     1
; tlas                              texture     i32         ras      T0             t0     1
; texDepth                          texture     f32          2d      T1             t1     1
; texTangentFrame                   texture     u32          2d      T2             t2     1
; texOutput                             UAV     f32          2d      U0             u0     1
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%struct.RaytracingAccelerationStructure = type { i32 }
%"class.Texture2D<float>" = type { float, %"class.Texture2D<float>::mips_type" }
%"class.Texture2D<float>::mips_type" = type { i32 }
%"class.Texture2D<unsigned int>" = type { i32, %"class.Texture2D<unsigned int>::mips_type" }
%"class.Texture2D<unsigned int>::mips_type" = type { i32 }
%"class.RWTexture2D<float>" = type { float }
%AoConstants_decl = type { %struct.AoConstants }
%struct.AoConstants = type { float, float, float, i32, i32, i32, i32, i32 }
%hostlayout.scene = type { %hostlayout.struct.GfxCodeSceneConsts }
%hostlayout.struct.GfxCodeSceneConsts = type { <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <3 x float>, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x i32>, <4 x i32>, <4 x float>, float, float, float, float, i32, i32, float, float, <2 x i32>, <2 x i32>, <2 x float>, <2 x float>, <3 x float>, i32, <3 x float>, float, <3 x float>, float, <2 x float>, <2 x float>, <3 x float>, float, <3 x float>, float, float, float, float, float, <3 x float>, float, i32, float, float, float, <4 x float>, <3 x float>, float, float, float, float, float, <4 x float>, float, float, float, float, i32, i32, i32, float, <4 x float>, i32, i32, i32, i32, i32, i32, i32, i32, <2 x i32>, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, [2 x <4 x i32>], [3 x <2 x float>], i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <2 x float>, <2 x float>, <4 x float>, <4 x i32>, <4 x float>, i32, float, float, float, i32, i32, i32, i32, <2 x float>, <2 x float>, <2 x float>, <2 x float>, i32, i32, <2 x float>, <2 x float>, <2 x float>, <3 x float>, i32, i32, i32, i32, i32, <4 x i32>, <4 x i32>, <4 x i32>, <4 x float>, i32, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <3 x float>, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], <4 x float>, [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], i32, i32, float, i32, <2 x float>, float, float, float, float, float, i32, <3 x float>, float, float, float, float, float, <3 x float>, float, <3 x float>, float, <3 x float>, float, float, float, float, float, <2 x float>, <2 x float>, float, float, float, float, <3 x float>, float, <2 x float>, i32, i32, <3 x float>, float, float, float, float, float, float, float, float, float, [4 x <3 x float>], i32, [4 x <3 x float>], i32, [4 x <3 x float>], i32, <4 x i32>, <2 x float>, <2 x float>, <2 x float>, i32, i32, float, float, float, float, <4 x float>, <4 x i32>, <4 x float>, <4 x float>, <4 x float>, i32, i32, i32, i32, <4 x float>, i32, float, float, i32, i32, float, float, i32, i32, float, float, i32, i32, float, float, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, float, float, float, float, i32, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, i32, i32, i32, float, <4 x float>, <4 x float>, <4 x float>, <4 x float>, i32, i32, i32, float, <4 x float>, float, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x i32>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [8 x <4 x float>], [8 x <4 x float>], <4 x float>, <3 x float>, i32, <2 x float>, float, float, float, float, float, float, <2 x float>, <2 x float>, <2 x float>, <2 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <2 x float>, float, float, <4 x float>, i32, i32, i32, i32, <3 x float>, i32, <4 x i32>, <4 x i32>, <2 x float>, <2 x i32>, <4 x float>, <4 x float>, <2 x float>, <2 x float>, [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, float, i32, i32, i32, i32, i32, float, float, <2 x float>, <2 x float>, float, float, float, float, i32, float, float, float, float, float, float, float, float, float, float, float, float, i32, i32, i32, float, float, float, i32, <2 x i32>, <2 x i32>, <4 x i32>, float, float, float, float, <4 x float>, <4 x float>, <2 x float>, <2 x float>, <4 x float>, <4 x float>, float, float, float, float, <4 x float>, float, float, float, float, i32, i32, float, float, <4 x float>, <2 x float>, <2 x float>, i32, i32, float, float, [4 x <4 x float>], float, float, float, float, float, float, float, float, i32, i32, i32, float, <4 x float>, <4 x float>, i32, i32, i32, i32, <2 x i32>, <2 x i32>, [2 x <4 x i32>], i32, float, float, float, i32, float, float, i32, <2 x i32>, <2 x float>, float, float, float, i32, %struct.GfxWeatherData, %hostlayout.struct.GfxVolumetricData, %struct.GfxFogRaymarchingData, %struct.GfxEnvironmentalFogData, %struct.GfxShallowWaterData, %struct.GfxGroundDeformationData, %struct.GfxSplinedModelGlobals }
%struct.GfxWeatherData = type { i32, i32, i32, i32, float, float, float, float, float, float, i32, i32, float, float, float, float, i32, i32, i32, i32, float, float, float, float, float, i32, i32, i32, i32, i32, i32, i32, <3 x float>, i32, <3 x float>, i32, i32, float, i32, i32, float, float, float, float }
%hostlayout.struct.GfxVolumetricData = type { [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <2 x float>, <2 x float>, <2 x float>, <2 x float>, <3 x i32>, i32, <3 x float>, i32, <4 x float>, <3 x float>, i32, i32, float, float, float, i32, i32, i32, float, <4 x float>, float, float, i32, i32, <3 x float>, i32, <3 x float>, float, <3 x float>, float, <2 x float>, float, float, <3 x float>, float, <3 x float>, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, <3 x float>, float, i32, float, float, float, <3 x float>, float, <2 x float>, <2 x float>, <3 x float>, float, i32, float, float, float, float, float, float, float, i32, i32, float, float, <3 x float>, float, i32, i32, <2 x float> }
%struct.GfxFogRaymarchingData = type { <2 x float>, <2 x float>, float, float, float, float, float, float, float, float, float, float, float, float, <2 x float>, <2 x float>, <3 x float>, float }
%struct.GfxEnvironmentalFogData = type { float, float, float, i32 }
%struct.GfxShallowWaterData = type { i32, i32, i32, i32, float, float, float, float, <2 x float>, <2 x float>, float, float, float, float, <3 x float>, float, float, float, float, float, float, float, float, float, i32, float, float, float, float, float, float, float, float, float, float, float, i32, float, float, float, float, i32, i32, i32 }
%struct.GfxGroundDeformationData = type { <2 x float>, <2 x float>, float, float, float, float, float, float, float, float, float, float, float, float, float, float, i32, i32 }
%struct.GfxSplinedModelGlobals = type { [64 x <4 x float>], [64 x <4 x float>], [16 x <4 x float>], [32 x <4 x float>], [64 x <4 x float>], [16 x <4 x float>], [16 x <4 x float>], float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float }
%struct.VisibilityPayload = type { float }
%dx.types.Handle = type { i8* }
%dx.types.CBufRet.i32 = type { i32, i32, i32, i32 }
%dx.types.CBufRet.f32 = type { float, float, float, float }
%dx.types.ResRet.f32 = type { float, float, float, float, i32 }
%dx.types.ResRet.i32 = type { i32, i32, i32, i32, i32 }
%struct.BuiltInTriangleIntersectionAttributes = type { <2 x float> }

@"\01?tlas@@3URaytracingAccelerationStructure@@A" = external constant %struct.RaytracingAccelerationStructure, align 4
@"\01?texDepth@@3V?$Texture2D@M@@A" = external constant %"class.Texture2D<float>", align 4
@"\01?texTangentFrame@@3V?$Texture2D@I@@A" = external constant %"class.Texture2D<unsigned int>", align 4
@"\01?texOutput@@3V?$RWTexture2D@M@@A" = external constant %"class.RWTexture2D<float>", align 4
@llvm.global_ctors = appending global [0 x { i32, void ()*, i8* }] zeroinitializer
@AoConstants_decl = external constant %AoConstants_decl
@scene_legacy = external global %hostlayout.scene

; Function Attrs: nounwind
define void @"\01?Raygen@@YAXXZ"() #0 {
  %1 = load %"class.Texture2D<unsigned int>", %"class.Texture2D<unsigned int>"* @"\01?texTangentFrame@@3V?$Texture2D@I@@A", align 4
  %2 = load %"class.Texture2D<float>", %"class.Texture2D<float>"* @"\01?texDepth@@3V?$Texture2D@M@@A", align 4
  %3 = load %struct.RaytracingAccelerationStructure, %struct.RaytracingAccelerationStructure* @"\01?tlas@@3URaytracingAccelerationStructure@@A", align 4
  %4 = load %"class.RWTexture2D<float>", %"class.RWTexture2D<float>"* @"\01?texOutput@@3V?$RWTexture2D@M@@A", align 4
  %5 = load %AoConstants_decl, %AoConstants_decl* @AoConstants_decl, align 4
  %6 = load %hostlayout.scene, %hostlayout.scene* @scene_legacy
  %7 = alloca %struct.VisibilityPayload, align 4
  %8 = call %dx.types.Handle @dx.op.createHandleForLib.AoConstants_decl(i32 160, %AoConstants_decl %5)  ; CreateHandleForLib(Resource)
  %9 = call %dx.types.Handle @dx.op.createHandleForLib.hostlayout.scene(i32 160, %hostlayout.scene %6)  ; CreateHandleForLib(Resource)
  %10 = call i32 @dx.op.dispatchRaysIndex.i32(i32 145, i8 0)  ; DispatchRaysIndex(col)
  %11 = call i32 @dx.op.dispatchRaysIndex.i32(i32 145, i8 1)  ; DispatchRaysIndex(col)
  %12 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %8, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %13 = extractvalue %dx.types.CBufRet.i32 %12, 0
  %14 = icmp eq i32 %13, 0
  %15 = zext i1 %14 to i32
  %16 = shl i32 %10, %15
  %17 = shl i32 %11, %15
  %18 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %9, i32 138)  ; CBufferLoadLegacy(handle,regIndex)
  %19 = extractvalue %dx.types.CBufRet.i32 %18, 2
  %20 = and i32 %19, 96
  %21 = icmp eq i32 %20, 96
  %22 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %9, i32 361)  ; CBufferLoadLegacy(handle,regIndex)
  %23 = extractvalue %dx.types.CBufRet.i32 %22, 2
  %24 = and i32 %23, 1
  %25 = xor i32 %24, 1
  %26 = lshr i32 %23, 1
  %27 = and i32 %26, 1
  %28 = select i1 %21, i32 %25, i32 0
  %29 = select i1 %21, i32 %27, i32 0
  %30 = add i32 %28, %16
  %31 = add i32 %29, %17
  %32 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %9, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %33 = extractvalue %dx.types.CBufRet.f32 %32, 0
  %34 = extractvalue %dx.types.CBufRet.f32 %32, 1
  %35 = fadd fast float %33, -1.000000e+00
  %36 = fadd fast float %34, -1.000000e+00
  %37 = fptosi float %35 to i32
  %38 = fptosi float %36 to i32
  %39 = call i32 @dx.op.binary.i32(i32 38, i32 %30, i32 %37)  ; IMin(a,b)
  %40 = call i32 @dx.op.binary.i32(i32 38, i32 %31, i32 %38)  ; IMin(a,b)
  %41 = sitofp i32 %39 to float
  %42 = sitofp i32 %40 to float
  %43 = fadd fast float %41, 5.000000e-01
  %44 = fadd fast float %42, 5.000000e-01
  %45 = extractvalue %dx.types.CBufRet.f32 %32, 2
  %46 = extractvalue %dx.types.CBufRet.f32 %32, 3
  %47 = call %dx.types.Handle @"dx.op.createHandleForLib.class.Texture2D<float>"(i32 160, %"class.Texture2D<float>" %2)  ; CreateHandleForLib(Resource)
  %48 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %47, i32 0, i32 %39, i32 %40, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %49 = extractvalue %dx.types.ResRet.f32 %48, 0
  %50 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %9, i32 235)  ; CBufferLoadLegacy(handle,regIndex)
  %51 = extractvalue %dx.types.CBufRet.f32 %50, 0
  %52 = extractvalue %dx.types.CBufRet.f32 %50, 2
  %53 = fcmp fast ogt float %49, 9.843750e-01
  %54 = select i1 %53, float 6.400000e+01, float 0x3FF0410420000000
  %55 = select i1 %53, float -6.300000e+01, float -0.000000e+00
  %56 = select i1 %53, float %51, float %52
  %57 = call float @dx.op.unary.f32(i32 7, float %49)  ; Saturate(value)
  %58 = fmul fast float %54, %57
  %59 = fadd fast float %58, %55
  %60 = call float @dx.op.binary.f32(i32 35, float %59, float 0x3E45798EE0000000)  ; FMax(a,b)
  %61 = fdiv fast float %56, %60
  %62 = fmul fast float %43, 2.000000e+00
  %63 = fmul fast float %62, %45
  %64 = fmul fast float %46, 2.000000e+00
  %65 = fmul fast float %64, %44
  %66 = fsub fast float 1.000000e+00, %63
  %67 = fsub fast float 1.000000e+00, %65
  %68 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %9, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %69 = extractvalue %dx.types.CBufRet.f32 %68, 0
  %70 = extractvalue %dx.types.CBufRet.f32 %68, 1
  %71 = extractvalue %dx.types.CBufRet.f32 %68, 2
  %72 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %9, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %73 = extractvalue %dx.types.CBufRet.f32 %72, 0
  %74 = extractvalue %dx.types.CBufRet.f32 %72, 1
  %75 = extractvalue %dx.types.CBufRet.f32 %72, 2
  %76 = select i1 %53, float %69, float %73
  %77 = select i1 %53, float %70, float %74
  %78 = select i1 %53, float %71, float %75
  %79 = fmul fast float %76, %66
  %80 = fmul fast float %77, %66
  %81 = fmul fast float %78, %66
  %82 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %9, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %83 = extractvalue %dx.types.CBufRet.f32 %82, 0
  %84 = extractvalue %dx.types.CBufRet.f32 %82, 1
  %85 = extractvalue %dx.types.CBufRet.f32 %82, 2
  %86 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %9, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %87 = extractvalue %dx.types.CBufRet.f32 %86, 0
  %88 = extractvalue %dx.types.CBufRet.f32 %86, 1
  %89 = extractvalue %dx.types.CBufRet.f32 %86, 2
  %90 = select i1 %53, float %83, float %87
  %91 = select i1 %53, float %84, float %88
  %92 = select i1 %53, float %85, float %89
  %93 = fmul fast float %90, %67
  %94 = fmul fast float %91, %67
  %95 = fmul fast float %92, %67
  %96 = fadd fast float %93, %79
  %97 = fadd fast float %94, %80
  %98 = fadd fast float %95, %81
  %99 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %9, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %100 = extractvalue %dx.types.CBufRet.f32 %99, 0
  %101 = extractvalue %dx.types.CBufRet.f32 %99, 1
  %102 = extractvalue %dx.types.CBufRet.f32 %99, 2
  %103 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %9, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %104 = extractvalue %dx.types.CBufRet.f32 %103, 0
  %105 = extractvalue %dx.types.CBufRet.f32 %103, 1
  %106 = extractvalue %dx.types.CBufRet.f32 %103, 2
  %107 = select i1 %53, float %100, float %104
  %108 = select i1 %53, float %101, float %105
  %109 = select i1 %53, float %102, float %106
  %110 = fadd fast float %96, %107
  %111 = fadd fast float %97, %108
  %112 = fadd fast float %98, %109
  %113 = fmul fast float %110, %61
  %114 = fmul fast float %111, %61
  %115 = fmul fast float %112, %61
  %116 = call %dx.types.Handle @"dx.op.createHandleForLib.class.Texture2D<unsigned int>"(i32 160, %"class.Texture2D<unsigned int>" %1)  ; CreateHandleForLib(Resource)
  %117 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %116, i32 0, i32 %39, i32 %40, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %118 = extractvalue %dx.types.ResRet.i32 %117, 0
  %119 = lshr i32 %118, 8
  %120 = and i32 %118, 255
  %121 = and i32 %119, 255
  %122 = uitofp i32 %120 to float
  %123 = uitofp i32 %121 to float
  %124 = fmul fast float %122, 0x3F80101020000000
  %125 = fmul fast float %123, 0x3F80101020000000
  %126 = fadd fast float %124, -1.000000e+00
  %127 = fadd fast float %125, -1.000000e+00
  %128 = call float @dx.op.unary.f32(i32 6, float %126)  ; FAbs(value)
  %129 = fsub fast float 1.000000e+00, %128
  %130 = call float @dx.op.unary.f32(i32 6, float %127)  ; FAbs(value)
  %131 = fsub fast float %129, %130
  %132 = fsub fast float -0.000000e+00, %131
  %133 = call float @dx.op.binary.f32(i32 35, float %132, float 0.000000e+00)  ; FMax(a,b)
  %134 = fcmp fast ogt float %126, 0.000000e+00
  %135 = fsub fast float -0.000000e+00, %133
  %136 = select i1 %134, float %135, float %133
  %137 = fadd fast float %136, %126
  %138 = fcmp fast ogt float %127, 0.000000e+00
  %139 = select i1 %138, float %135, float %133
  %140 = fadd fast float %139, %127
  %141 = call float @dx.op.dot3.f32(i32 55, float %137, float %140, float %131, float %137, float %140, float %131)  ; Dot3(ax,ay,az,bx,by,bz)
  %142 = call float @dx.op.unary.f32(i32 25, float %141)  ; Rsqrt(value)
  %143 = fmul fast float %137, %142
  %144 = fmul fast float %140, %142
  %145 = fmul fast float %142, %131
  %146 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %9, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %147 = extractvalue %dx.types.CBufRet.f32 %146, 0
  %148 = extractvalue %dx.types.CBufRet.f32 %146, 1
  %149 = extractvalue %dx.types.CBufRet.f32 %146, 2
  %150 = fadd fast float %147, %113
  %151 = fadd fast float %148, %114
  %152 = fadd fast float %149, %115
  %153 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %8, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %154 = extractvalue %dx.types.CBufRet.f32 %153, 2
  %155 = extractvalue %dx.types.CBufRet.f32 %153, 1
  %156 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %8, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %157 = extractvalue %dx.types.CBufRet.i32 %156, 3
  %158 = icmp sgt i32 %157, 0
  br i1 %158, label %159, label %439

; <label>:159                                     ; preds = %0
  br label %160

; <label>:160                                     ; preds = %431, %159
  %161 = phi float [ %433, %431 ], [ 0.000000e+00, %159 ]
  %162 = phi i32 [ %434, %431 ], [ 0, %159 ]
  %163 = and i32 %10, 1023
  %164 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %8, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %165 = extractvalue %dx.types.CBufRet.i32 %164, 2
  %166 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %8, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %167 = extractvalue %dx.types.CBufRet.i32 %166, 3
  %168 = mul nsw i32 %167, %165
  %169 = add nsw i32 %168, %162
  %170 = and i32 %169, 1023
  %171 = shl i32 %11, 10
  %172 = and i32 %171, 1047552
  %173 = or i32 %172, %163
  %174 = mul i32 %173, 1365458477
  %175 = xor i32 %170, %174
  %176 = mul i32 %175, -512718531
  %177 = lshr i32 %174, 16
  %178 = xor i32 %176, %177
  %179 = lshr i32 %178, 4
  %180 = and i32 %179, 63
  %181 = lshr i32 %174, 8
  %182 = xor i32 %178, %181
  %183 = xor i32 %182, %180
  %184 = mul i32 %183, 153742143
  %185 = lshr i32 %174, 23
  %186 = xor i32 %184, %185
  %187 = lshr i32 %186, 1
  %188 = and i32 %187, 511
  %189 = xor i32 %188, %186
  %190 = lshr i32 %174, 27
  %191 = or i32 %190, 1
  %192 = mul i32 %191, -1074439621
  %193 = mul i32 %192, %189
  %194 = lshr i32 %193, 2
  %195 = and i32 %194, 255
  %196 = xor i32 %195, %193
  %197 = mul i32 %196, -1638916925
  %198 = lshr i32 %197, 2
  %199 = and i32 %198, 255
  %200 = xor i32 %199, %197
  %201 = mul i32 %200, -933190689
  %202 = and i32 %201, 1023
  %203 = lshr i32 %202, 5
  %204 = xor i32 %203, %202
  %205 = add i32 %204, %174
  %206 = and i32 %205, 1023
  %207 = mul i32 %173, 1757159915
  %208 = and i32 %205, 31
  %209 = xor i32 %208, %207
  %210 = mul i32 %209, -512718531
  %211 = lshr i32 %207, 16
  %212 = xor i32 %210, %211
  %213 = lshr i32 %212, 4
  %214 = and i32 %213, 1
  %215 = lshr i32 %207, 8
  %216 = xor i32 %212, %215
  %217 = xor i32 %216, %214
  %218 = mul i32 %217, 153742143
  %219 = lshr i32 %207, 23
  %220 = xor i32 %218, %219
  %221 = lshr i32 %220, 1
  %222 = and i32 %221, 15
  %223 = xor i32 %222, %220
  %224 = lshr i32 %207, 27
  %225 = or i32 %224, 1
  %226 = mul i32 %225, -1074439621
  %227 = mul i32 %226, %223
  %228 = lshr i32 %227, 2
  %229 = and i32 %228, 7
  %230 = xor i32 %229, %227
  %231 = mul i32 %230, -1638916925
  %232 = lshr i32 %231, 2
  %233 = and i32 %232, 7
  %234 = xor i32 %233, %231
  %235 = mul i32 %234, -933190689
  %236 = add i32 %235, %207
  %237 = and i32 %236, 31
  %238 = mul i32 %173, 48610963
  %239 = lshr i32 %206, 5
  %240 = xor i32 %239, %238
  %241 = mul i32 %240, -512718531
  %242 = lshr i32 %238, 16
  %243 = xor i32 %241, %242
  %244 = lshr i32 %243, 4
  %245 = and i32 %244, 1
  %246 = lshr i32 %238, 8
  %247 = xor i32 %243, %246
  %248 = xor i32 %247, %245
  %249 = mul i32 %248, 153742143
  %250 = lshr i32 %238, 23
  %251 = xor i32 %249, %250
  %252 = lshr i32 %251, 1
  %253 = and i32 %252, 15
  %254 = xor i32 %253, %251
  %255 = lshr i32 %238, 27
  %256 = or i32 %255, 1
  %257 = mul i32 %256, -1074439621
  %258 = mul i32 %257, %254
  %259 = lshr i32 %258, 2
  %260 = and i32 %259, 7
  %261 = xor i32 %260, %258
  %262 = mul i32 %261, -1638916925
  %263 = lshr i32 %262, 2
  %264 = and i32 %263, 7
  %265 = xor i32 %264, %262
  %266 = mul i32 %265, -933190689
  %267 = add i32 %266, %238
  %268 = and i32 %267, 31
  %269 = mul i32 %173, -1770354533
  %270 = lshr i32 %269, 17
  %271 = xor i32 %270, %269
  %272 = xor i32 %271, %206
  %273 = lshr i32 %271, 10
  %274 = xor i32 %273, %272
  %275 = mul i32 %274, -1285212955
  %276 = lshr i32 %275, 12
  %277 = xor i32 %276, %275
  %278 = lshr i32 %275, 21
  %279 = xor i32 %277, %278
  %280 = mul i32 %279, -1812183147
  %281 = xor i32 %280, -546426753
  %282 = lshr i32 %281, 17
  %283 = xor i32 %282, %281
  %284 = lshr i32 %269, 18
  %285 = or i32 %284, 1
  %286 = mul i32 %283, %285
  %287 = uitofp i32 %286 to float
  %288 = fmul fast float %287, 0x3DEFFFFFC0000000
  %289 = mul i32 %173, 915196087
  %290 = lshr i32 %289, 17
  %291 = xor i32 %290, %289
  %292 = xor i32 %291, %206
  %293 = lshr i32 %291, 10
  %294 = xor i32 %293, %292
  %295 = mul i32 %294, -1285212955
  %296 = lshr i32 %295, 12
  %297 = xor i32 %296, %295
  %298 = lshr i32 %295, 21
  %299 = xor i32 %297, %298
  %300 = mul i32 %299, -1812183147
  %301 = xor i32 %300, -546426753
  %302 = lshr i32 %301, 17
  %303 = xor i32 %302, %301
  %304 = lshr i32 %289, 18
  %305 = or i32 %304, 1
  %306 = mul i32 %303, %305
  %307 = uitofp i32 %306 to float
  %308 = fmul fast float %307, 0x3DEFFFFFC0000000
  %309 = uitofp i32 %237 to float
  %310 = uitofp i32 %268 to float
  %311 = fadd fast float %310, %288
  %312 = fmul fast float %311, 3.125000e-02
  %313 = fadd fast float %312, %309
  %314 = uitofp i32 %206 to float
  %315 = fadd fast float %308, %314
  %316 = fmul fast float %313, 6.250000e-02
  %317 = fadd fast float %316, -1.000000e+00
  %318 = fmul fast float %315, 1.953125e-03
  %319 = fadd fast float %318, -1.000000e+00
  %320 = fcmp fast oeq float %317, 0.000000e+00
  %321 = fcmp fast oeq float %319, 0.000000e+00
  %322 = and i1 %321, %320
  br i1 %322, label %353, label %323

; <label>:323                                     ; preds = %160
  %324 = fsub fast float -0.000000e+00, %319
  %325 = fcmp fast ult float %317, %324
  br i1 %325, label %336, label %326

; <label>:326                                     ; preds = %323
  %327 = fcmp fast ogt float %317, %319
  br i1 %327, label %328, label %333

; <label>:328                                     ; preds = %326
  %329 = fcmp fast ogt float %319, 0.000000e+00
  %330 = fdiv fast float %319, %317
  br i1 %329, label %345, label %331

; <label>:331                                     ; preds = %328
  %332 = fadd fast float %330, 8.000000e+00
  br label %345

; <label>:333                                     ; preds = %326
  %334 = fdiv fast float %317, %319
  %335 = fsub fast float 2.000000e+00, %334
  br label %345

; <label>:336                                     ; preds = %323
  %337 = fcmp fast ugt float %317, %319
  br i1 %337, label %342, label %338

; <label>:338                                     ; preds = %336
  %339 = fsub fast float -0.000000e+00, %317
  %340 = fdiv fast float %319, %339
  %341 = fsub fast float 4.000000e+00, %340
  br label %345

; <label>:342                                     ; preds = %336
  %343 = fdiv fast float %317, %324
  %344 = fadd fast float %343, 6.000000e+00
  br label %345

; <label>:345                                     ; preds = %342, %338, %333, %331, %328
  %346 = phi float [ %332, %331 ], [ %335, %333 ], [ %341, %338 ], [ %344, %342 ], [ %330, %328 ]
  %347 = phi float [ %317, %331 ], [ %319, %333 ], [ %339, %338 ], [ %324, %342 ], [ %317, %328 ]
  %348 = fmul fast float %346, 0x3FE921FB60000000
  %349 = call float @dx.op.unary.f32(i32 12, float %348)  ; Cos(value)
  %350 = fmul fast float %349, %347
  %351 = call float @dx.op.unary.f32(i32 13, float %348)  ; Sin(value)
  %352 = fmul fast float %351, %347
  br label %353

; <label>:353                                     ; preds = %345, %160
  %354 = phi float [ %350, %345 ], [ 0.000000e+00, %160 ]
  %355 = phi float [ %352, %345 ], [ 0.000000e+00, %160 ]
  %356 = fmul fast float %354, %354
  %357 = fsub fast float 1.000000e+00, %356
  %358 = fmul fast float %355, %355
  %359 = fsub fast float %357, %358
  %360 = call float @dx.op.unary.f32(i32 7, float %359)  ; Saturate(value)
  %361 = call float @dx.op.unary.f32(i32 24, float %360)  ; Sqrt(value)
  %362 = call float @dx.op.unary.f32(i32 6, float %143)  ; FAbs(value)
  %363 = call float @dx.op.unary.f32(i32 6, float %144)  ; FAbs(value)
  %364 = fmul fast float %363, 5.000000e+00
  %365 = fcmp fast ogt float %362, %364
  %366 = fmul fast float %145, %145
  br i1 %365, label %367, label %374

; <label>:367                                     ; preds = %353
  %368 = fmul fast float %143, %143
  %369 = fadd fast float %368, %366
  %370 = call float @dx.op.unary.f32(i32 25, float %369)  ; Rsqrt(value)
  %371 = fmul fast float %145, %370
  %372 = fsub fast float -0.000000e+00, %371
  %373 = fmul fast float %370, %143
  br label %381

; <label>:374                                     ; preds = %353
  %375 = fmul fast float %144, %144
  %376 = fadd fast float %375, %366
  %377 = call float @dx.op.unary.f32(i32 25, float %376)  ; Rsqrt(value)
  %378 = fmul fast float %145, %377
  %379 = fsub fast float -0.000000e+00, %378
  %380 = fmul fast float %377, %144
  br label %381

; <label>:381                                     ; preds = %374, %367
  %382 = phi float [ %372, %367 ], [ 0.000000e+00, %374 ]
  %383 = phi float [ 0.000000e+00, %367 ], [ %379, %374 ]
  %384 = phi float [ %373, %367 ], [ %380, %374 ]
  %385 = fmul fast float %383, %145
  %386 = fmul fast float %384, %144
  %387 = fsub fast float %385, %386
  %388 = fmul fast float %384, %143
  %389 = fmul fast float %382, %145
  %390 = fsub fast float %388, %389
  %391 = fmul fast float %382, %144
  %392 = fmul fast float %383, %143
  %393 = fsub fast float %391, %392
  %394 = fmul fast float %382, %354
  %395 = call float @dx.op.tertiary.f32(i32 46, float %355, float %387, float %394)  ; FMad(a,b,c)
  %396 = call float @dx.op.tertiary.f32(i32 46, float %361, float %143, float %395)  ; FMad(a,b,c)
  %397 = fmul fast float %383, %354
  %398 = call float @dx.op.tertiary.f32(i32 46, float %355, float %390, float %397)  ; FMad(a,b,c)
  %399 = call float @dx.op.tertiary.f32(i32 46, float %361, float %144, float %398)  ; FMad(a,b,c)
  %400 = fmul fast float %384, %354
  %401 = call float @dx.op.tertiary.f32(i32 46, float %355, float %393, float %400)  ; FMad(a,b,c)
  %402 = call float @dx.op.tertiary.f32(i32 46, float %361, float %145, float %401)  ; FMad(a,b,c)
  %403 = call float @dx.op.dot3.f32(i32 55, float %396, float %399, float %402, float %396, float %399, float %402)  ; Dot3(ax,ay,az,bx,by,bz)
  %404 = call float @dx.op.unary.f32(i32 25, float %403)  ; Rsqrt(value)
  %405 = fmul fast float %404, %396
  %406 = fmul fast float %404, %399
  %407 = fmul fast float %404, %402
  %408 = getelementptr inbounds %struct.VisibilityPayload, %struct.VisibilityPayload* %7, i32 0, i32 0
  store float 0.000000e+00, float* %408, align 4, !tbaa !34
  %409 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %8, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %410 = extractvalue %dx.types.CBufRet.i32 %409, 1
  %411 = icmp ne i32 %410, 0
  %412 = select i1 %411, i32 0, i32 12
  %413 = select i1 %53, i32 4, i32 2
  %414 = call %dx.types.Handle @dx.op.createHandleForLib.struct.RaytracingAccelerationStructure(i32 160, %struct.RaytracingAccelerationStructure %3)  ; CreateHandleForLib(Resource)
  call void @dx.op.traceRay.struct.VisibilityPayload(i32 157, %dx.types.Handle %414, i32 %412, i32 %413, i32 0, i32 0, i32 0, float %150, float %151, float %152, float %154, float %405, float %406, float %407, float %155, %struct.VisibilityPayload* nonnull %7)  ; TraceRay(AccelerationStructure,RayFlags,InstanceInclusionMask,RayContributionToHitGroupIndex,MultiplierForGeometryContributionToShaderIndex,MissShaderIndex,Origin_X,Origin_Y,Origin_Z,TMin,Direction_X,Direction_Y,Direction_Z,TMax,payload)
  %415 = load float, float* %408, align 4, !tbaa !34
  %416 = fcmp fast oeq float %415, 1.000000e+06
  %417 = select i1 %416, float 1.000000e+00, float 0.000000e+00
  %418 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %8, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %419 = extractvalue %dx.types.CBufRet.i32 %418, 1
  %420 = icmp eq i32 %419, 0
  br i1 %420, label %431, label %421

; <label>:421                                     ; preds = %381
  %422 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %8, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %423 = extractvalue %dx.types.CBufRet.f32 %422, 0
  %424 = fdiv fast float %415, %155
  %425 = fsub fast float 1.000000e+00, %417
  %426 = fmul fast float %424, %425
  %427 = fadd fast float %426, %417
  %428 = call float @dx.op.unary.f32(i32 23, float %427)  ; Log(value)
  %429 = fmul fast float %428, %423
  %430 = call float @dx.op.unary.f32(i32 21, float %429)  ; Exp(value)
  br label %431

; <label>:431                                     ; preds = %421, %381
  %432 = phi float [ %430, %421 ], [ %417, %381 ]
  %433 = fadd fast float %432, %161
  %434 = add nuw nsw i32 %162, 1
  %435 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %8, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %436 = extractvalue %dx.types.CBufRet.i32 %435, 3
  %437 = icmp slt i32 %434, %436
  br i1 %437, label %160, label %438

; <label>:438                                     ; preds = %431
  br label %439

; <label>:439                                     ; preds = %438, %0
  %440 = phi float [ 0.000000e+00, %0 ], [ %433, %438 ]
  %441 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %8, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %442 = extractvalue %dx.types.CBufRet.i32 %441, 3
  %443 = sitofp i32 %442 to float
  %444 = fdiv fast float %440, %443
  %445 = call %dx.types.Handle @"dx.op.createHandleForLib.class.RWTexture2D<float>"(i32 160, %"class.RWTexture2D<float>" %4)  ; CreateHandleForLib(Resource)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %445, i32 %10, i32 %11, i32 undef, float %444, float %444, float %444, float %444, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
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
  %2 = getelementptr inbounds %struct.VisibilityPayload, %struct.VisibilityPayload* %payload, i32 0, i32 0
  store float %1, float* %2, align 4
  ret void
}

; Function Attrs: nounwind readnone
declare float @dx.op.binary.f32(i32, float, float) #1

; Function Attrs: nounwind readnone
declare float @dx.op.unary.f32(i32, float) #1

; Function Attrs: nounwind readnone
declare float @dx.op.dot3.f32(i32, float, float, float, float, float, float) #1

; Function Attrs: nounwind readnone
declare float @dx.op.tertiary.f32(i32, float, float, float) #1

; Function Attrs: nounwind readnone
declare i32 @dx.op.dispatchRaysIndex.i32(i32, i8) #1

; Function Attrs: nounwind readnone
declare i32 @dx.op.binary.i32(i32, i32, i32) #1

; Function Attrs: nounwind
declare void @dx.op.textureStore.f32(i32, %dx.types.Handle, i32, i32, i32, float, float, float, float, i8) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32) #2

; Function Attrs: nounwind
declare void @dx.op.traceRay.struct.VisibilityPayload(i32, %dx.types.Handle, i32, i32, i32, i32, i32, float, float, float, float, float, float, float, float, %struct.VisibilityPayload*) #0

; Function Attrs: nounwind readonly
declare float @dx.op.rayTCurrent.f32(i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32, %dx.types.Handle, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32, %dx.types.Handle, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.Handle @dx.op.createHandleForLib.AoConstants_decl(i32, %AoConstants_decl) #2

; Function Attrs: nounwind readonly
declare %dx.types.Handle @"dx.op.createHandleForLib.class.Texture2D<float>"(i32, %"class.Texture2D<float>") #2

; Function Attrs: nounwind readonly
declare %dx.types.Handle @"dx.op.createHandleForLib.class.Texture2D<unsigned int>"(i32, %"class.Texture2D<unsigned int>") #2

; Function Attrs: nounwind readonly
declare %dx.types.Handle @dx.op.createHandleForLib.struct.RaytracingAccelerationStructure(i32, %struct.RaytracingAccelerationStructure) #2

; Function Attrs: nounwind readonly
declare %dx.types.Handle @"dx.op.createHandleForLib.class.RWTexture2D<float>"(i32, %"class.RWTexture2D<float>") #2

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
!dx.typeAnnotations = !{!17}
!dx.entryPoints = !{!25, !27, !30, !32}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 5}
!2 = !{i32 1, i32 6}
!3 = !{!"lib", i32 6, i32 5}
!4 = !{!5, !12, !14, null}
!5 = !{!6, !8, !10}
!6 = !{i32 0, %struct.RaytracingAccelerationStructure* @"\01?tlas@@3URaytracingAccelerationStructure@@A", !"tlas", i32 0, i32 0, i32 1, i32 16, i32 0, !7}
!7 = !{i32 0, i32 4}
!8 = !{i32 1, %"class.Texture2D<float>"* @"\01?texDepth@@3V?$Texture2D@M@@A", !"texDepth", i32 0, i32 1, i32 1, i32 2, i32 0, !9}
!9 = !{i32 0, i32 9}
!10 = !{i32 2, %"class.Texture2D<unsigned int>"* @"\01?texTangentFrame@@3V?$Texture2D@I@@A", !"texTangentFrame", i32 0, i32 2, i32 1, i32 2, i32 0, !11}
!11 = !{i32 0, i32 5}
!12 = !{!13}
!13 = !{i32 0, %"class.RWTexture2D<float>"* @"\01?texOutput@@3V?$RWTexture2D@M@@A", !"texOutput", i32 0, i32 0, i32 1, i32 2, i1 false, i1 false, i1 false, !9}
!14 = !{!15, !16}
!15 = !{i32 0, %hostlayout.scene* @scene_legacy, !"scene", i32 0, i32 3, i32 1, i32 11728, null}
!16 = !{i32 1, %AoConstants_decl* @AoConstants_decl, !"AoConstants_decl", i32 0, i32 0, i32 1, i32 32, null}
!17 = !{i32 1, void ()* @"\01?Raygen@@YAXXZ", !18, void (%struct.VisibilityPayload*)* @"\01?Visibility_Miss@@YAXUVisibilityPayload@@@Z", !21, void (%struct.VisibilityPayload*, %struct.BuiltInTriangleIntersectionAttributes*)* @"\01?Visibility_ClosestHit@@YAXUVisibilityPayload@@UBuiltInTriangleIntersectionAttributes@@@Z", !23}
!18 = !{!19}
!19 = !{i32 1, !20, !20}
!20 = !{}
!21 = !{!19, !22}
!22 = !{i32 2, !20, !20}
!23 = !{!19, !22, !24}
!24 = !{i32 0, !20, !20}
!25 = !{null, !"", null, !4, !26}
!26 = !{i32 0, i64 65536}
!27 = !{void ()* @"\01?Raygen@@YAXXZ", !"\01?Raygen@@YAXXZ", null, null, !28}
!28 = !{i32 8, i32 7, i32 5, !29}
!29 = !{i32 0}
!30 = !{void (%struct.VisibilityPayload*, %struct.BuiltInTriangleIntersectionAttributes*)* @"\01?Visibility_ClosestHit@@YAXUVisibilityPayload@@UBuiltInTriangleIntersectionAttributes@@@Z", !"\01?Visibility_ClosestHit@@YAXUVisibilityPayload@@UBuiltInTriangleIntersectionAttributes@@@Z", null, null, !31}
!31 = !{i32 8, i32 10, i32 6, i32 4, i32 7, i32 8, i32 5, !29}
!32 = !{void (%struct.VisibilityPayload*)* @"\01?Visibility_Miss@@YAXUVisibilityPayload@@@Z", !"\01?Visibility_Miss@@YAXUVisibilityPayload@@@Z", null, null, !33}
!33 = !{i32 8, i32 11, i32 6, i32 4, i32 5, !29}
!34 = !{!35, !35, i64 0}
!35 = !{!"float", !36, i64 0}
!36 = !{!"omnipotent char", !37, i64 0}
!37 = !{!"Simple C/C++ TBAA"}

