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
; shader hash: 99d318dea2f5ccf65da88e6eb2cdc5f0
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
;                                   sampler      NA          NA      S0             s2     1
;                                   texture     f32          2d      T0             t0     1
;                                       UAV     f32          2d      U0             u0     1
;                                       UAV     f32          2d      U1             u1     1
;                                       UAV     f32          2d      U2             u2     1
;                                       UAV     f32          2d      U3             u3     1
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.CBufRet.f32 = type { float, float, float, float }
%dx.types.ResRet.f32 = type { float, float, float, float, i32 }
%"class.Texture2D<vector<float, 3> >" = type { <3 x float>, %"class.Texture2D<vector<float, 3> >::mips_type" }
%"class.Texture2D<vector<float, 3> >::mips_type" = type { i32 }
%"class.RWTexture2D<vector<float, 3> >" = type { <3 x float> }
%hostlayout.scene = type { %hostlayout.struct.GfxCodeSceneConsts }
%hostlayout.struct.GfxCodeSceneConsts = type { <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <3 x float>, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x i32>, <4 x i32>, <4 x float>, float, float, float, float, i32, i32, float, float, <2 x i32>, <2 x i32>, <2 x float>, <2 x float>, <3 x float>, i32, <3 x float>, float, <3 x float>, float, <2 x float>, <2 x float>, <3 x float>, float, <3 x float>, float, float, float, float, float, <3 x float>, float, i32, float, float, float, <4 x float>, <3 x float>, float, float, float, float, float, <4 x float>, float, float, float, float, i32, i32, i32, float, <4 x float>, i32, i32, i32, i32, i32, i32, i32, i32, <2 x i32>, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, [2 x <4 x i32>], [3 x <2 x float>], i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <2 x float>, <2 x float>, <4 x float>, <4 x i32>, <4 x float>, i32, float, float, float, i32, i32, i32, i32, <2 x float>, <2 x float>, <2 x float>, <2 x float>, i32, i32, <2 x float>, <2 x float>, <2 x float>, <3 x float>, i32, i32, i32, i32, i32, <4 x i32>, <4 x i32>, <4 x i32>, <4 x float>, i32, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <3 x float>, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], <4 x float>, [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], i32, i32, float, i32, <2 x float>, float, float, float, float, float, i32, <3 x float>, float, float, float, float, float, <3 x float>, float, <3 x float>, float, <3 x float>, float, float, float, float, float, <2 x float>, <2 x float>, float, float, float, float, <3 x float>, float, <2 x float>, i32, i32, <3 x float>, float, float, float, float, float, float, float, float, float, [4 x <3 x float>], i32, [4 x <3 x float>], i32, [4 x <3 x float>], i32, <4 x i32>, <2 x float>, <2 x float>, <2 x float>, i32, i32, float, float, float, float, <4 x float>, <4 x i32>, <4 x float>, <4 x float>, <4 x float>, i32, i32, i32, i32, <4 x float>, i32, float, float, i32, i32, float, float, i32, i32, float, float, i32, i32, float, float, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, float, float, float, float, i32, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, i32, i32, i32, float, <4 x float>, <4 x float>, <4 x float>, <4 x float>, i32, i32, i32, float, <4 x float>, float, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x i32>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [8 x <4 x float>], [8 x <4 x float>], <4 x float>, <3 x float>, i32, <2 x float>, float, float, float, float, float, float, <2 x float>, <2 x float>, <2 x float>, <2 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <2 x float>, float, float, <4 x float>, i32, i32, i32, i32, <3 x float>, i32, <4 x i32>, <4 x i32>, <2 x float>, <2 x i32>, <4 x float>, <4 x float>, <2 x float>, <2 x float>, [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, float, i32, i32, i32, i32, i32, float, float, <2 x float>, <2 x float>, float, float, float, float, i32, float, float, float, float, float, float, float, float, float, float, float, float, i32, i32, i32, float, float, float, i32, <2 x i32>, <2 x i32>, <4 x i32>, float, float, float, float, <4 x float>, <4 x float>, <2 x float>, <2 x float>, <4 x float>, <4 x float>, float, float, float, float, <4 x float>, float, float, float, float, i32, i32, float, float, <4 x float>, <2 x float>, <2 x float>, i32, i32, float, float, [4 x <4 x float>], float, float, float, float, float, float, float, float, i32, i32, i32, float, <4 x float>, <4 x float>, i32, i32, i32, i32, <2 x i32>, <2 x i32>, [2 x <4 x i32>], i32, float, float, float, i32, float, float, i32, <2 x i32>, <2 x float>, float, float, float, i32, %struct.GfxWeatherData, %hostlayout.struct.GfxVolumetricData, %struct.GfxFogRaymarchingData, %struct.GfxEnvironmentalFogData, %struct.GfxShallowWaterData, %struct.GfxGroundDeformationData, %struct.GfxSplinedModelGlobals }
%struct.GfxWeatherData = type { i32, i32, i32, i32, float, float, float, float, float, float, i32, i32, float, float, float, float, i32, i32, i32, i32, float, float, float, float, float, i32, i32, i32, i32, i32, i32, i32, <3 x float>, i32, <3 x float>, i32, i32, float, i32, i32, float, float, float, float }
%hostlayout.struct.GfxVolumetricData = type { [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <2 x float>, <2 x float>, <2 x float>, <2 x float>, <3 x i32>, i32, <3 x float>, i32, <4 x float>, <3 x float>, i32, i32, float, float, float, i32, i32, i32, float, <4 x float>, float, float, i32, i32, <3 x float>, i32, <3 x float>, float, <3 x float>, float, <2 x float>, float, float, <3 x float>, float, <3 x float>, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, <3 x float>, float, i32, float, float, float, <3 x float>, float, <2 x float>, <2 x float>, <3 x float>, float, i32, float, float, float, float, float, float, float, i32, i32, float, float, <3 x float>, float, i32, i32, <2 x float> }
%struct.GfxFogRaymarchingData = type { <2 x float>, <2 x float>, float, float, float, float, float, float, float, float, float, float, float, float, <2 x float>, <2 x float>, <3 x float>, float }
%struct.GfxEnvironmentalFogData = type { float, float, float, i32 }
%struct.GfxShallowWaterData = type { i32, i32, i32, i32, float, float, float, float, <2 x float>, <2 x float>, float, float, float, float, <3 x float>, float, float, float, float, float, float, float, float, float, i32, float, float, float, float, float, float, float, float, float, float, float, i32, float, float, float, float, i32, i32, i32 }
%struct.GfxGroundDeformationData = type { <2 x float>, <2 x float>, float, float, float, float, float, float, float, float, float, float, float, float, float, float, i32, i32 }
%struct.GfxSplinedModelGlobals = type { [64 x <4 x float>], [64 x <4 x float>], [16 x <4 x float>], [32 x <4 x float>], [64 x <4 x float>], [16 x <4 x float>], [16 x <4 x float>], float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float }
%DownsampleConstants_decl = type { %struct.DownsampleConstants }
%struct.DownsampleConstants = type { <4 x float>, i32, i32, i32, i32 }
%struct.SamplerState = type { i32 }

@"\01?sharedDiffuse@@3PAY07$$CAIA.1dim" = addrspace(3) global [64 x i32] undef, align 4

define void @cs_diffuse_downsample_interior() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 3, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call i32 @dx.op.threadId.i32(i32 93, i32 0)  ; ThreadId(component)
  %10 = call i32 @dx.op.threadId.i32(i32 93, i32 1)  ; ThreadId(component)
  %11 = call i32 @dx.op.threadIdInGroup.i32(i32 95, i32 0)  ; ThreadIdInGroup(component)
  %12 = call i32 @dx.op.threadIdInGroup.i32(i32 95, i32 1)  ; ThreadIdInGroup(component)
  %13 = uitofp i32 %9 to float
  %14 = uitofp i32 %10 to float
  %15 = fmul fast float %13, 2.000000e+00
  %16 = fmul fast float %14, 2.000000e+00
  %17 = fadd fast float %15, 1.000000e+00
  %18 = fadd fast float %16, 1.000000e+00
  %19 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %7, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %20 = extractvalue %dx.types.CBufRet.f32 %19, 2
  %21 = extractvalue %dx.types.CBufRet.f32 %19, 3
  %22 = fmul fast float %20, %17
  %23 = fmul fast float %21, %18
  %24 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %6, float %22, float %23, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %25 = extractvalue %dx.types.ResRet.f32 %24, 0
  %26 = extractvalue %dx.types.ResRet.f32 %24, 1
  %27 = extractvalue %dx.types.ResRet.f32 %24, 2
  %28 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %8, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %29 = extractvalue %dx.types.CBufRet.f32 %28, 0
  %30 = fmul fast float %29, %25
  %31 = fmul fast float %29, %26
  %32 = fmul fast float %29, %27
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %4, i32 %9, i32 %10, i32 undef, float %30, float %31, float %32, float %30, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %33 = call i32 @dx.op.legacyF32ToF16(i32 130, float %25)  ; LegacyF32ToF16(value)
  %34 = call i32 @dx.op.legacyF32ToF16(i32 130, float %26)  ; LegacyF32ToF16(value)
  %35 = call i32 @dx.op.legacyF32ToF16(i32 130, float %27)  ; LegacyF32ToF16(value)
  %36 = lshr i32 %33, 4
  %37 = and i32 %36, 2047
  %38 = shl i32 %34, 7
  %39 = and i32 %38, 4192256
  %40 = or i32 %39, %37
  %41 = lshr i32 %35, 5
  %42 = shl i32 %41, 22
  %43 = or i32 %40, %42
  %44 = mul i32 %11, 8
  %45 = add i32 %12, %44
  %46 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?sharedDiffuse@@3PAY07$$CAIA.1dim", i32 0, i32 %45
  store i32 %43, i32 addrspace(3)* %46, align 4, !tbaa !21
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %47 = xor i32 %11, 1
  %48 = mul i32 %47, 8
  %49 = add i32 %12, %48
  %50 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?sharedDiffuse@@3PAY07$$CAIA.1dim", i32 0, i32 %49
  %51 = load i32, i32 addrspace(3)* %50, align 4, !tbaa !21
  %52 = shl i32 %51, 4
  %53 = and i32 %52, 32752
  %54 = call float @dx.op.legacyF16ToF32(i32 131, i32 %53)  ; LegacyF16ToF32(value)
  %55 = lshr i32 %51, 7
  %56 = and i32 %55, 32752
  %57 = call float @dx.op.legacyF16ToF32(i32 131, i32 %56)  ; LegacyF16ToF32(value)
  %58 = lshr i32 %51, 22
  %59 = shl nuw nsw i32 %58, 5
  %60 = call float @dx.op.legacyF16ToF32(i32 131, i32 %59)  ; LegacyF16ToF32(value)
  %61 = xor i32 %12, 1
  %62 = mul i32 %11, 8
  %63 = add i32 %61, %62
  %64 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?sharedDiffuse@@3PAY07$$CAIA.1dim", i32 0, i32 %63
  %65 = load i32, i32 addrspace(3)* %64, align 4, !tbaa !21
  %66 = shl i32 %65, 4
  %67 = and i32 %66, 32752
  %68 = call float @dx.op.legacyF16ToF32(i32 131, i32 %67)  ; LegacyF16ToF32(value)
  %69 = lshr i32 %65, 7
  %70 = and i32 %69, 32752
  %71 = call float @dx.op.legacyF16ToF32(i32 131, i32 %70)  ; LegacyF16ToF32(value)
  %72 = lshr i32 %65, 22
  %73 = shl nuw nsw i32 %72, 5
  %74 = call float @dx.op.legacyF16ToF32(i32 131, i32 %73)  ; LegacyF16ToF32(value)
  %75 = mul i32 %47, 8
  %76 = add i32 %61, %75
  %77 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?sharedDiffuse@@3PAY07$$CAIA.1dim", i32 0, i32 %76
  %78 = load i32, i32 addrspace(3)* %77, align 4, !tbaa !21
  %79 = shl i32 %78, 4
  %80 = and i32 %79, 32752
  %81 = call float @dx.op.legacyF16ToF32(i32 131, i32 %80)  ; LegacyF16ToF32(value)
  %82 = lshr i32 %78, 7
  %83 = and i32 %82, 32752
  %84 = call float @dx.op.legacyF16ToF32(i32 131, i32 %83)  ; LegacyF16ToF32(value)
  %85 = lshr i32 %78, 22
  %86 = shl nuw nsw i32 %85, 5
  %87 = call float @dx.op.legacyF16ToF32(i32 131, i32 %86)  ; LegacyF16ToF32(value)
  %88 = fadd fast float %54, %25
  %89 = fadd fast float %88, %68
  %90 = fadd fast float %89, %81
  %91 = fadd fast float %57, %26
  %92 = fadd fast float %91, %71
  %93 = fadd fast float %92, %84
  %94 = fadd fast float %60, %27
  %95 = fadd fast float %94, %74
  %96 = fadd fast float %95, %87
  %97 = fmul fast float %90, 2.500000e-01
  %98 = fmul fast float %93, 2.500000e-01
  %99 = fmul fast float %96, 2.500000e-01
  %100 = lshr i32 %9, 1
  %101 = lshr i32 %10, 1
  %102 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %8, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %103 = extractvalue %dx.types.CBufRet.f32 %102, 0
  %104 = fmul fast float %103, %97
  %105 = fmul fast float %98, %103
  %106 = fmul fast float %99, %103
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %3, i32 %100, i32 %101, i32 undef, float %104, float %105, float %106, float %104, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %107 = call i32 @dx.op.legacyF32ToF16(i32 130, float %97)  ; LegacyF32ToF16(value)
  %108 = call i32 @dx.op.legacyF32ToF16(i32 130, float %98)  ; LegacyF32ToF16(value)
  %109 = call i32 @dx.op.legacyF32ToF16(i32 130, float %99)  ; LegacyF32ToF16(value)
  %110 = lshr i32 %107, 4
  %111 = and i32 %110, 2047
  %112 = shl i32 %108, 7
  %113 = and i32 %112, 4192256
  %114 = or i32 %113, %111
  %115 = lshr i32 %109, 5
  %116 = shl i32 %115, 22
  %117 = or i32 %114, %116
  store i32 %117, i32 addrspace(3)* %46, align 4, !tbaa !21
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %118 = xor i32 %11, 2
  %119 = mul i32 %118, 8
  %120 = add i32 %12, %119
  %121 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?sharedDiffuse@@3PAY07$$CAIA.1dim", i32 0, i32 %120
  %122 = load i32, i32 addrspace(3)* %121, align 4, !tbaa !21
  %123 = shl i32 %122, 4
  %124 = and i32 %123, 32752
  %125 = call float @dx.op.legacyF16ToF32(i32 131, i32 %124)  ; LegacyF16ToF32(value)
  %126 = lshr i32 %122, 7
  %127 = and i32 %126, 32752
  %128 = call float @dx.op.legacyF16ToF32(i32 131, i32 %127)  ; LegacyF16ToF32(value)
  %129 = lshr i32 %122, 22
  %130 = shl nuw nsw i32 %129, 5
  %131 = call float @dx.op.legacyF16ToF32(i32 131, i32 %130)  ; LegacyF16ToF32(value)
  %132 = xor i32 %12, 2
  %133 = mul i32 %11, 8
  %134 = add i32 %132, %133
  %135 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?sharedDiffuse@@3PAY07$$CAIA.1dim", i32 0, i32 %134
  %136 = load i32, i32 addrspace(3)* %135, align 4, !tbaa !21
  %137 = shl i32 %136, 4
  %138 = and i32 %137, 32752
  %139 = call float @dx.op.legacyF16ToF32(i32 131, i32 %138)  ; LegacyF16ToF32(value)
  %140 = lshr i32 %136, 7
  %141 = and i32 %140, 32752
  %142 = call float @dx.op.legacyF16ToF32(i32 131, i32 %141)  ; LegacyF16ToF32(value)
  %143 = lshr i32 %136, 22
  %144 = shl nuw nsw i32 %143, 5
  %145 = call float @dx.op.legacyF16ToF32(i32 131, i32 %144)  ; LegacyF16ToF32(value)
  %146 = mul i32 %118, 8
  %147 = add i32 %132, %146
  %148 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?sharedDiffuse@@3PAY07$$CAIA.1dim", i32 0, i32 %147
  %149 = load i32, i32 addrspace(3)* %148, align 4, !tbaa !21
  %150 = shl i32 %149, 4
  %151 = and i32 %150, 32752
  %152 = call float @dx.op.legacyF16ToF32(i32 131, i32 %151)  ; LegacyF16ToF32(value)
  %153 = lshr i32 %149, 7
  %154 = and i32 %153, 32752
  %155 = call float @dx.op.legacyF16ToF32(i32 131, i32 %154)  ; LegacyF16ToF32(value)
  %156 = lshr i32 %149, 22
  %157 = shl nuw nsw i32 %156, 5
  %158 = call float @dx.op.legacyF16ToF32(i32 131, i32 %157)  ; LegacyF16ToF32(value)
  %159 = fadd fast float %125, %97
  %160 = fadd fast float %159, %139
  %161 = fadd fast float %160, %152
  %162 = fadd fast float %128, %98
  %163 = fadd fast float %162, %142
  %164 = fadd fast float %163, %155
  %165 = fadd fast float %131, %99
  %166 = fadd fast float %165, %145
  %167 = fadd fast float %166, %158
  %168 = fmul fast float %161, 2.500000e-01
  %169 = fmul fast float %164, 2.500000e-01
  %170 = fmul fast float %167, 2.500000e-01
  %171 = lshr i32 %9, 2
  %172 = lshr i32 %10, 2
  %173 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %8, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %174 = extractvalue %dx.types.CBufRet.f32 %173, 0
  %175 = fmul fast float %174, %168
  %176 = fmul fast float %169, %174
  %177 = fmul fast float %170, %174
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %171, i32 %172, i32 undef, float %175, float %176, float %177, float %175, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %178 = call i32 @dx.op.legacyF32ToF16(i32 130, float %168)  ; LegacyF32ToF16(value)
  %179 = call i32 @dx.op.legacyF32ToF16(i32 130, float %169)  ; LegacyF32ToF16(value)
  %180 = call i32 @dx.op.legacyF32ToF16(i32 130, float %170)  ; LegacyF32ToF16(value)
  %181 = lshr i32 %178, 4
  %182 = and i32 %181, 2047
  %183 = shl i32 %179, 7
  %184 = and i32 %183, 4192256
  %185 = or i32 %184, %182
  %186 = lshr i32 %180, 5
  %187 = shl i32 %186, 22
  %188 = or i32 %185, %187
  store i32 %188, i32 addrspace(3)* %46, align 4, !tbaa !21
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %189 = xor i32 %11, 4
  %190 = mul i32 %189, 8
  %191 = add i32 %12, %190
  %192 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?sharedDiffuse@@3PAY07$$CAIA.1dim", i32 0, i32 %191
  %193 = load i32, i32 addrspace(3)* %192, align 4, !tbaa !21
  %194 = shl i32 %193, 4
  %195 = and i32 %194, 32752
  %196 = call float @dx.op.legacyF16ToF32(i32 131, i32 %195)  ; LegacyF16ToF32(value)
  %197 = lshr i32 %193, 7
  %198 = and i32 %197, 32752
  %199 = call float @dx.op.legacyF16ToF32(i32 131, i32 %198)  ; LegacyF16ToF32(value)
  %200 = lshr i32 %193, 22
  %201 = shl nuw nsw i32 %200, 5
  %202 = call float @dx.op.legacyF16ToF32(i32 131, i32 %201)  ; LegacyF16ToF32(value)
  %203 = xor i32 %12, 4
  %204 = mul i32 %11, 8
  %205 = add i32 %203, %204
  %206 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?sharedDiffuse@@3PAY07$$CAIA.1dim", i32 0, i32 %205
  %207 = load i32, i32 addrspace(3)* %206, align 4, !tbaa !21
  %208 = shl i32 %207, 4
  %209 = and i32 %208, 32752
  %210 = call float @dx.op.legacyF16ToF32(i32 131, i32 %209)  ; LegacyF16ToF32(value)
  %211 = lshr i32 %207, 7
  %212 = and i32 %211, 32752
  %213 = call float @dx.op.legacyF16ToF32(i32 131, i32 %212)  ; LegacyF16ToF32(value)
  %214 = lshr i32 %207, 22
  %215 = shl nuw nsw i32 %214, 5
  %216 = call float @dx.op.legacyF16ToF32(i32 131, i32 %215)  ; LegacyF16ToF32(value)
  %217 = mul i32 %189, 8
  %218 = add i32 %203, %217
  %219 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?sharedDiffuse@@3PAY07$$CAIA.1dim", i32 0, i32 %218
  %220 = load i32, i32 addrspace(3)* %219, align 4, !tbaa !21
  %221 = shl i32 %220, 4
  %222 = and i32 %221, 32752
  %223 = call float @dx.op.legacyF16ToF32(i32 131, i32 %222)  ; LegacyF16ToF32(value)
  %224 = lshr i32 %220, 7
  %225 = and i32 %224, 32752
  %226 = call float @dx.op.legacyF16ToF32(i32 131, i32 %225)  ; LegacyF16ToF32(value)
  %227 = lshr i32 %220, 22
  %228 = shl nuw nsw i32 %227, 5
  %229 = call float @dx.op.legacyF16ToF32(i32 131, i32 %228)  ; LegacyF16ToF32(value)
  %230 = fadd fast float %196, %168
  %231 = fadd fast float %230, %210
  %232 = fadd fast float %231, %223
  %233 = fadd fast float %199, %169
  %234 = fadd fast float %233, %213
  %235 = fadd fast float %234, %226
  %236 = fadd fast float %202, %170
  %237 = fadd fast float %236, %216
  %238 = fadd fast float %237, %229
  %239 = fmul fast float %232, 2.500000e-01
  %240 = fmul fast float %235, 2.500000e-01
  %241 = fmul fast float %238, 2.500000e-01
  %242 = lshr i32 %9, 3
  %243 = lshr i32 %10, 3
  %244 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %8, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %245 = extractvalue %dx.types.CBufRet.f32 %244, 0
  %246 = fmul fast float %239, %245
  %247 = fmul fast float %240, %245
  %248 = fmul fast float %241, %245
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %242, i32 %243, i32 undef, float %246, float %247, float %248, float %246, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @dx.op.threadId.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.threadIdInGroup.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.legacyF32ToF16(i32, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #1

; Function Attrs: nounwind
declare void @dx.op.textureStore.f32(i32, %dx.types.Handle, i32, i32, i32, float, float, float, float, i8) #2

; Function Attrs: noduplicate nounwind
declare void @dx.op.barrier(i32, i32) #3

; Function Attrs: nounwind readnone
declare float @dx.op.legacyF16ToF32(i32, i32) #0

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32, %dx.types.Handle, i32) #1

; Function Attrs: nounwind readonly
declare %dx.types.Handle @dx.op.createHandle(i32, i8, i32, i32, i1) #1

attributes #0 = { nounwind readnone }
attributes #1 = { nounwind readonly }
attributes #2 = { nounwind }
attributes #3 = { noduplicate nounwind }

!llvm.ident = !{!0}
!dx.version = !{!1}
!dx.valver = !{!2}
!dx.shaderModel = !{!3}
!dx.resources = !{!4}
!dx.entryPoints = !{!18}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !8, !13, !16}
!5 = !{!6}
!6 = !{i32 0, %"class.Texture2D<vector<float, 3> >"* undef, !"", i32 0, i32 0, i32 1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{!9, !10, !11, !12}
!9 = !{i32 0, %"class.RWTexture2D<vector<float, 3> >"* undef, !"", i32 0, i32 0, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!10 = !{i32 1, %"class.RWTexture2D<vector<float, 3> >"* undef, !"", i32 0, i32 1, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!11 = !{i32 2, %"class.RWTexture2D<vector<float, 3> >"* undef, !"", i32 0, i32 2, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!12 = !{i32 3, %"class.RWTexture2D<vector<float, 3> >"* undef, !"", i32 0, i32 3, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!13 = !{!14, !15}
!14 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!15 = !{i32 1, %DownsampleConstants_decl* undef, !"", i32 0, i32 0, i32 1, i32 32, null}
!16 = !{!17}
!17 = !{i32 0, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!18 = !{void ()* @cs_diffuse_downsample_interior, !"cs_diffuse_downsample_interior", null, !4, !19}
!19 = !{i32 0, i64 256, i32 4, !20}
!20 = !{i32 8, i32 8, i32 1}
!21 = !{!22, !22, i64 0}
!22 = !{!"int", !23, i64 0}
!23 = !{!"omnipotent char", !24, i64 0}
!24 = !{!"Simple C/C++ TBAA"}

