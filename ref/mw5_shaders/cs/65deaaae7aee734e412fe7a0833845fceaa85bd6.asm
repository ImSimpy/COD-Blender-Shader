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
; shader hash: 3bcb4ec8d0f4442776fb0e3b159ef0e2
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
;                                   texture     f32          2d      T0             t1     1
;                                   texture     f32          2d      T1             t4     1
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
%"class.Texture2D<float>" = type { float, %"class.Texture2D<float>::mips_type" }
%"class.Texture2D<float>::mips_type" = type { i32 }
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

define void @cs_diffuse_downsample_interior_init() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 3, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call i32 @dx.op.threadId.i32(i32 93, i32 0)  ; ThreadId(component)
  %12 = call i32 @dx.op.threadId.i32(i32 93, i32 1)  ; ThreadId(component)
  %13 = call i32 @dx.op.threadIdInGroup.i32(i32 95, i32 0)  ; ThreadIdInGroup(component)
  %14 = call i32 @dx.op.threadIdInGroup.i32(i32 95, i32 1)  ; ThreadIdInGroup(component)
  %15 = uitofp i32 %11 to float
  %16 = uitofp i32 %12 to float
  %17 = fmul fast float %15, 2.000000e+00
  %18 = fmul fast float %16, 2.000000e+00
  %19 = fadd fast float %17, 1.000000e+00
  %20 = fadd fast float %18, 1.000000e+00
  %21 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %9, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %22 = extractvalue %dx.types.CBufRet.f32 %21, 2
  %23 = extractvalue %dx.types.CBufRet.f32 %21, 3
  %24 = fmul fast float %22, %19
  %25 = fmul fast float %23, %20
  %26 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %8, float %24, float %25, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %27 = extractvalue %dx.types.ResRet.f32 %26, 0
  %28 = bitcast float %27 to i32
  %29 = lshr i32 %28, 11
  %30 = and i32 %28, 2047
  %31 = and i32 %29, 2047
  %32 = uitofp i32 %30 to float
  %33 = uitofp i32 %31 to float
  %34 = fmul fast float %32, 0x3F50040100000000
  %35 = fmul fast float %33, 0x3F50040100000000
  %36 = fadd fast float %34, -1.000000e+00
  %37 = fadd fast float %35, -1.000000e+00
  %38 = call float @dx.op.unary.f32(i32 6, float %36)  ; FAbs(value)
  %39 = call float @dx.op.unary.f32(i32 6, float %37)  ; FAbs(value)
  %40 = fadd fast float %38, -5.000000e-01
  %41 = fadd fast float %39, -5.000000e-01
  %42 = fmul fast float %40, 2.000000e+00
  %43 = fmul fast float %41, 2.000000e+00
  %44 = call float @dx.op.unary.f32(i32 7, float %42)  ; Saturate(value)
  %45 = call float @dx.op.unary.f32(i32 7, float %43)  ; Saturate(value)
  %46 = fmul fast float %38, 2.000000e+00
  %47 = fmul fast float %39, 2.000000e+00
  %48 = call float @dx.op.unary.f32(i32 7, float %46)  ; Saturate(value)
  %49 = call float @dx.op.unary.f32(i32 7, float %47)  ; Saturate(value)
  %50 = fmul fast float %44, %44
  %51 = fmul fast float %50, 0x3FA48888A0000000
  %52 = fmul fast float %45, %45
  %53 = fmul fast float %52, 0x3FB2407960000000
  %54 = fmul fast float %48, 0x3F599999A0000000
  %55 = fmul fast float %49, 0x3F66C16C20000000
  %56 = fadd fast float %54, %51
  %57 = fadd fast float %55, %53
  %58 = fsub fast float -0.000000e+00, %56
  %59 = fsub fast float -0.000000e+00, %57
  %60 = fcmp fast olt float %36, 0.000000e+00
  %61 = fcmp fast olt float %37, 0.000000e+00
  %62 = select i1 %60, float 0.000000e+00, float 1.000000e+00
  %63 = select i1 %61, float 0.000000e+00, float 1.000000e+00
  %64 = fcmp fast une float %62, 0.000000e+00
  %65 = fcmp fast une float %63, 0.000000e+00
  %66 = select i1 %64, float %56, float %58
  %67 = select i1 %65, float %57, float %59
  %68 = fsub fast float %24, %66
  %69 = fsub fast float %25, %67
  %70 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %7, float %68, float %69, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %71 = extractvalue %dx.types.ResRet.f32 %70, 0
  %72 = extractvalue %dx.types.ResRet.f32 %70, 1
  %73 = extractvalue %dx.types.ResRet.f32 %70, 2
  %74 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %10, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %75 = extractvalue %dx.types.CBufRet.f32 %74, 0
  %76 = fmul fast float %75, %71
  %77 = fmul fast float %75, %72
  %78 = fmul fast float %75, %73
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %4, i32 %11, i32 %12, i32 undef, float %76, float %77, float %78, float %76, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %79 = call i32 @dx.op.legacyF32ToF16(i32 130, float %71)  ; LegacyF32ToF16(value)
  %80 = call i32 @dx.op.legacyF32ToF16(i32 130, float %72)  ; LegacyF32ToF16(value)
  %81 = call i32 @dx.op.legacyF32ToF16(i32 130, float %73)  ; LegacyF32ToF16(value)
  %82 = lshr i32 %79, 4
  %83 = and i32 %82, 2047
  %84 = shl i32 %80, 7
  %85 = and i32 %84, 4192256
  %86 = or i32 %85, %83
  %87 = lshr i32 %81, 5
  %88 = shl i32 %87, 22
  %89 = or i32 %86, %88
  %90 = mul i32 %13, 8
  %91 = add i32 %14, %90
  %92 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?sharedDiffuse@@3PAY07$$CAIA.1dim", i32 0, i32 %91
  store i32 %89, i32 addrspace(3)* %92, align 4, !tbaa !23
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %93 = xor i32 %13, 1
  %94 = mul i32 %93, 8
  %95 = add i32 %14, %94
  %96 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?sharedDiffuse@@3PAY07$$CAIA.1dim", i32 0, i32 %95
  %97 = load i32, i32 addrspace(3)* %96, align 4, !tbaa !23
  %98 = shl i32 %97, 4
  %99 = and i32 %98, 32752
  %100 = call float @dx.op.legacyF16ToF32(i32 131, i32 %99)  ; LegacyF16ToF32(value)
  %101 = lshr i32 %97, 7
  %102 = and i32 %101, 32752
  %103 = call float @dx.op.legacyF16ToF32(i32 131, i32 %102)  ; LegacyF16ToF32(value)
  %104 = lshr i32 %97, 22
  %105 = shl nuw nsw i32 %104, 5
  %106 = call float @dx.op.legacyF16ToF32(i32 131, i32 %105)  ; LegacyF16ToF32(value)
  %107 = xor i32 %14, 1
  %108 = mul i32 %13, 8
  %109 = add i32 %107, %108
  %110 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?sharedDiffuse@@3PAY07$$CAIA.1dim", i32 0, i32 %109
  %111 = load i32, i32 addrspace(3)* %110, align 4, !tbaa !23
  %112 = shl i32 %111, 4
  %113 = and i32 %112, 32752
  %114 = call float @dx.op.legacyF16ToF32(i32 131, i32 %113)  ; LegacyF16ToF32(value)
  %115 = lshr i32 %111, 7
  %116 = and i32 %115, 32752
  %117 = call float @dx.op.legacyF16ToF32(i32 131, i32 %116)  ; LegacyF16ToF32(value)
  %118 = lshr i32 %111, 22
  %119 = shl nuw nsw i32 %118, 5
  %120 = call float @dx.op.legacyF16ToF32(i32 131, i32 %119)  ; LegacyF16ToF32(value)
  %121 = mul i32 %93, 8
  %122 = add i32 %107, %121
  %123 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?sharedDiffuse@@3PAY07$$CAIA.1dim", i32 0, i32 %122
  %124 = load i32, i32 addrspace(3)* %123, align 4, !tbaa !23
  %125 = shl i32 %124, 4
  %126 = and i32 %125, 32752
  %127 = call float @dx.op.legacyF16ToF32(i32 131, i32 %126)  ; LegacyF16ToF32(value)
  %128 = lshr i32 %124, 7
  %129 = and i32 %128, 32752
  %130 = call float @dx.op.legacyF16ToF32(i32 131, i32 %129)  ; LegacyF16ToF32(value)
  %131 = lshr i32 %124, 22
  %132 = shl nuw nsw i32 %131, 5
  %133 = call float @dx.op.legacyF16ToF32(i32 131, i32 %132)  ; LegacyF16ToF32(value)
  %134 = fadd fast float %100, %71
  %135 = fadd fast float %134, %114
  %136 = fadd fast float %135, %127
  %137 = fadd fast float %103, %72
  %138 = fadd fast float %137, %117
  %139 = fadd fast float %138, %130
  %140 = fadd fast float %106, %73
  %141 = fadd fast float %140, %120
  %142 = fadd fast float %141, %133
  %143 = fmul fast float %136, 2.500000e-01
  %144 = fmul fast float %139, 2.500000e-01
  %145 = fmul fast float %142, 2.500000e-01
  %146 = lshr i32 %11, 1
  %147 = lshr i32 %12, 1
  %148 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %10, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %149 = extractvalue %dx.types.CBufRet.f32 %148, 0
  %150 = fmul fast float %149, %143
  %151 = fmul fast float %144, %149
  %152 = fmul fast float %145, %149
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %3, i32 %146, i32 %147, i32 undef, float %150, float %151, float %152, float %150, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %153 = call i32 @dx.op.legacyF32ToF16(i32 130, float %143)  ; LegacyF32ToF16(value)
  %154 = call i32 @dx.op.legacyF32ToF16(i32 130, float %144)  ; LegacyF32ToF16(value)
  %155 = call i32 @dx.op.legacyF32ToF16(i32 130, float %145)  ; LegacyF32ToF16(value)
  %156 = lshr i32 %153, 4
  %157 = and i32 %156, 2047
  %158 = shl i32 %154, 7
  %159 = and i32 %158, 4192256
  %160 = or i32 %159, %157
  %161 = lshr i32 %155, 5
  %162 = shl i32 %161, 22
  %163 = or i32 %160, %162
  store i32 %163, i32 addrspace(3)* %92, align 4, !tbaa !23
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %164 = xor i32 %13, 2
  %165 = mul i32 %164, 8
  %166 = add i32 %14, %165
  %167 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?sharedDiffuse@@3PAY07$$CAIA.1dim", i32 0, i32 %166
  %168 = load i32, i32 addrspace(3)* %167, align 4, !tbaa !23
  %169 = shl i32 %168, 4
  %170 = and i32 %169, 32752
  %171 = call float @dx.op.legacyF16ToF32(i32 131, i32 %170)  ; LegacyF16ToF32(value)
  %172 = lshr i32 %168, 7
  %173 = and i32 %172, 32752
  %174 = call float @dx.op.legacyF16ToF32(i32 131, i32 %173)  ; LegacyF16ToF32(value)
  %175 = lshr i32 %168, 22
  %176 = shl nuw nsw i32 %175, 5
  %177 = call float @dx.op.legacyF16ToF32(i32 131, i32 %176)  ; LegacyF16ToF32(value)
  %178 = xor i32 %14, 2
  %179 = mul i32 %13, 8
  %180 = add i32 %178, %179
  %181 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?sharedDiffuse@@3PAY07$$CAIA.1dim", i32 0, i32 %180
  %182 = load i32, i32 addrspace(3)* %181, align 4, !tbaa !23
  %183 = shl i32 %182, 4
  %184 = and i32 %183, 32752
  %185 = call float @dx.op.legacyF16ToF32(i32 131, i32 %184)  ; LegacyF16ToF32(value)
  %186 = lshr i32 %182, 7
  %187 = and i32 %186, 32752
  %188 = call float @dx.op.legacyF16ToF32(i32 131, i32 %187)  ; LegacyF16ToF32(value)
  %189 = lshr i32 %182, 22
  %190 = shl nuw nsw i32 %189, 5
  %191 = call float @dx.op.legacyF16ToF32(i32 131, i32 %190)  ; LegacyF16ToF32(value)
  %192 = mul i32 %164, 8
  %193 = add i32 %178, %192
  %194 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?sharedDiffuse@@3PAY07$$CAIA.1dim", i32 0, i32 %193
  %195 = load i32, i32 addrspace(3)* %194, align 4, !tbaa !23
  %196 = shl i32 %195, 4
  %197 = and i32 %196, 32752
  %198 = call float @dx.op.legacyF16ToF32(i32 131, i32 %197)  ; LegacyF16ToF32(value)
  %199 = lshr i32 %195, 7
  %200 = and i32 %199, 32752
  %201 = call float @dx.op.legacyF16ToF32(i32 131, i32 %200)  ; LegacyF16ToF32(value)
  %202 = lshr i32 %195, 22
  %203 = shl nuw nsw i32 %202, 5
  %204 = call float @dx.op.legacyF16ToF32(i32 131, i32 %203)  ; LegacyF16ToF32(value)
  %205 = fadd fast float %171, %143
  %206 = fadd fast float %205, %185
  %207 = fadd fast float %206, %198
  %208 = fadd fast float %174, %144
  %209 = fadd fast float %208, %188
  %210 = fadd fast float %209, %201
  %211 = fadd fast float %177, %145
  %212 = fadd fast float %211, %191
  %213 = fadd fast float %212, %204
  %214 = fmul fast float %207, 2.500000e-01
  %215 = fmul fast float %210, 2.500000e-01
  %216 = fmul fast float %213, 2.500000e-01
  %217 = lshr i32 %11, 2
  %218 = lshr i32 %12, 2
  %219 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %10, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %220 = extractvalue %dx.types.CBufRet.f32 %219, 0
  %221 = fmul fast float %220, %214
  %222 = fmul fast float %215, %220
  %223 = fmul fast float %216, %220
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %217, i32 %218, i32 undef, float %221, float %222, float %223, float %221, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %224 = call i32 @dx.op.legacyF32ToF16(i32 130, float %214)  ; LegacyF32ToF16(value)
  %225 = call i32 @dx.op.legacyF32ToF16(i32 130, float %215)  ; LegacyF32ToF16(value)
  %226 = call i32 @dx.op.legacyF32ToF16(i32 130, float %216)  ; LegacyF32ToF16(value)
  %227 = lshr i32 %224, 4
  %228 = and i32 %227, 2047
  %229 = shl i32 %225, 7
  %230 = and i32 %229, 4192256
  %231 = or i32 %230, %228
  %232 = lshr i32 %226, 5
  %233 = shl i32 %232, 22
  %234 = or i32 %231, %233
  store i32 %234, i32 addrspace(3)* %92, align 4, !tbaa !23
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %235 = xor i32 %13, 4
  %236 = mul i32 %235, 8
  %237 = add i32 %14, %236
  %238 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?sharedDiffuse@@3PAY07$$CAIA.1dim", i32 0, i32 %237
  %239 = load i32, i32 addrspace(3)* %238, align 4, !tbaa !23
  %240 = shl i32 %239, 4
  %241 = and i32 %240, 32752
  %242 = call float @dx.op.legacyF16ToF32(i32 131, i32 %241)  ; LegacyF16ToF32(value)
  %243 = lshr i32 %239, 7
  %244 = and i32 %243, 32752
  %245 = call float @dx.op.legacyF16ToF32(i32 131, i32 %244)  ; LegacyF16ToF32(value)
  %246 = lshr i32 %239, 22
  %247 = shl nuw nsw i32 %246, 5
  %248 = call float @dx.op.legacyF16ToF32(i32 131, i32 %247)  ; LegacyF16ToF32(value)
  %249 = xor i32 %14, 4
  %250 = mul i32 %13, 8
  %251 = add i32 %249, %250
  %252 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?sharedDiffuse@@3PAY07$$CAIA.1dim", i32 0, i32 %251
  %253 = load i32, i32 addrspace(3)* %252, align 4, !tbaa !23
  %254 = shl i32 %253, 4
  %255 = and i32 %254, 32752
  %256 = call float @dx.op.legacyF16ToF32(i32 131, i32 %255)  ; LegacyF16ToF32(value)
  %257 = lshr i32 %253, 7
  %258 = and i32 %257, 32752
  %259 = call float @dx.op.legacyF16ToF32(i32 131, i32 %258)  ; LegacyF16ToF32(value)
  %260 = lshr i32 %253, 22
  %261 = shl nuw nsw i32 %260, 5
  %262 = call float @dx.op.legacyF16ToF32(i32 131, i32 %261)  ; LegacyF16ToF32(value)
  %263 = mul i32 %235, 8
  %264 = add i32 %249, %263
  %265 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?sharedDiffuse@@3PAY07$$CAIA.1dim", i32 0, i32 %264
  %266 = load i32, i32 addrspace(3)* %265, align 4, !tbaa !23
  %267 = shl i32 %266, 4
  %268 = and i32 %267, 32752
  %269 = call float @dx.op.legacyF16ToF32(i32 131, i32 %268)  ; LegacyF16ToF32(value)
  %270 = lshr i32 %266, 7
  %271 = and i32 %270, 32752
  %272 = call float @dx.op.legacyF16ToF32(i32 131, i32 %271)  ; LegacyF16ToF32(value)
  %273 = lshr i32 %266, 22
  %274 = shl nuw nsw i32 %273, 5
  %275 = call float @dx.op.legacyF16ToF32(i32 131, i32 %274)  ; LegacyF16ToF32(value)
  %276 = fadd fast float %242, %214
  %277 = fadd fast float %276, %256
  %278 = fadd fast float %277, %269
  %279 = fadd fast float %245, %215
  %280 = fadd fast float %279, %259
  %281 = fadd fast float %280, %272
  %282 = fadd fast float %248, %216
  %283 = fadd fast float %282, %262
  %284 = fadd fast float %283, %275
  %285 = fmul fast float %278, 2.500000e-01
  %286 = fmul fast float %281, 2.500000e-01
  %287 = fmul fast float %284, 2.500000e-01
  %288 = lshr i32 %11, 3
  %289 = lshr i32 %12, 3
  %290 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %10, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %291 = extractvalue %dx.types.CBufRet.f32 %290, 0
  %292 = fmul fast float %285, %291
  %293 = fmul fast float %286, %291
  %294 = fmul fast float %287, %291
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %288, i32 %289, i32 undef, float %292, float %293, float %294, float %292, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
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

; Function Attrs: nounwind readnone
declare float @dx.op.unary.f32(i32, float) #0

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
!dx.entryPoints = !{!20}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !9, !14, !17}
!5 = !{!6, !8}
!6 = !{i32 0, %"class.Texture2D<vector<float, 3> >"* undef, !"", i32 0, i32 1, i32 1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, %"class.Texture2D<float>"* undef, !"", i32 0, i32 4, i32 1, i32 2, i32 0, !7}
!9 = !{!10, !11, !12, !13}
!10 = !{i32 0, %"class.RWTexture2D<vector<float, 3> >"* undef, !"", i32 0, i32 0, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!11 = !{i32 1, %"class.RWTexture2D<vector<float, 3> >"* undef, !"", i32 0, i32 1, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!12 = !{i32 2, %"class.RWTexture2D<vector<float, 3> >"* undef, !"", i32 0, i32 2, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!13 = !{i32 3, %"class.RWTexture2D<vector<float, 3> >"* undef, !"", i32 0, i32 3, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!14 = !{!15, !16}
!15 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!16 = !{i32 1, %DownsampleConstants_decl* undef, !"", i32 0, i32 0, i32 1, i32 32, null}
!17 = !{!18, !19}
!18 = !{i32 0, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!19 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!20 = !{void ()* @cs_diffuse_downsample_interior_init, !"cs_diffuse_downsample_interior_init", null, !4, !21}
!21 = !{i32 0, i64 256, i32 4, !22}
!22 = !{i32 8, i32 8, i32 1}
!23 = !{!24, !24, i64 0}
!24 = !{!"int", !25, i64 0}
!25 = !{!"omnipotent char", !26, i64 0}
!26 = !{!"Simple C/C++ TBAA"}

