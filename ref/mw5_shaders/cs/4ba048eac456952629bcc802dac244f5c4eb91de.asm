;
; Note: shader requires additional functionality:
;       Typed UAV Load Additional Formats
;
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
; shader hash: 3ee1679c7f6792d089143b07fcacf2e5
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
;                                       UAV     f32          2d      U0             u4     1
;                                       UAV     f32          2d      U1             u0     1
;                                       UAV     f32          2d      U2             u1     1
;                                       UAV     f32          2d      U3             u2     1
;                                       UAV     f32          2d      U4             u3     1
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.ResRet.f32 = type { float, float, float, float, i32 }
%dx.types.CBufRet.f32 = type { float, float, float, float }
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

@"\01?sharedDiffuse@@3PAY07$$CAIA.1dim" = addrspace(3) global [64 x i32] undef, align 4

define void @cs_diffuse_downsample_interior() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 4, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 3, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 2, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call i32 @dx.op.threadId.i32(i32 93, i32 0)  ; ThreadId(component)
  %8 = call i32 @dx.op.threadId.i32(i32 93, i32 1)  ; ThreadId(component)
  %9 = call i32 @dx.op.threadIdInGroup.i32(i32 95, i32 0)  ; ThreadIdInGroup(component)
  %10 = call i32 @dx.op.threadIdInGroup.i32(i32 95, i32 1)  ; ThreadIdInGroup(component)
  %11 = shl i32 %7, 1
  %12 = shl i32 %8, 1
  %13 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %5, i32 undef, i32 %11, i32 %12, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %14 = extractvalue %dx.types.ResRet.f32 %13, 0
  %15 = extractvalue %dx.types.ResRet.f32 %13, 1
  %16 = extractvalue %dx.types.ResRet.f32 %13, 2
  %17 = or i32 %11, 1
  %18 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %5, i32 undef, i32 %17, i32 %12, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %19 = extractvalue %dx.types.ResRet.f32 %18, 0
  %20 = extractvalue %dx.types.ResRet.f32 %18, 1
  %21 = extractvalue %dx.types.ResRet.f32 %18, 2
  %22 = fadd fast float %19, %14
  %23 = fadd fast float %20, %15
  %24 = fadd fast float %21, %16
  %25 = or i32 %12, 1
  %26 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %5, i32 undef, i32 %17, i32 %25, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %27 = extractvalue %dx.types.ResRet.f32 %26, 0
  %28 = extractvalue %dx.types.ResRet.f32 %26, 1
  %29 = extractvalue %dx.types.ResRet.f32 %26, 2
  %30 = fadd fast float %22, %27
  %31 = fadd fast float %23, %28
  %32 = fadd fast float %24, %29
  %33 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %5, i32 undef, i32 %11, i32 %25, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %34 = extractvalue %dx.types.ResRet.f32 %33, 0
  %35 = extractvalue %dx.types.ResRet.f32 %33, 1
  %36 = extractvalue %dx.types.ResRet.f32 %33, 2
  %37 = fadd fast float %30, %34
  %38 = fadd fast float %31, %35
  %39 = fadd fast float %32, %36
  %40 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %6, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %41 = extractvalue %dx.types.CBufRet.f32 %40, 0
  %42 = fmul fast float %37, %41
  %43 = fmul fast float %38, %41
  %44 = fmul fast float %39, %41
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %4, i32 %7, i32 %8, i32 undef, float %42, float %43, float %44, float %42, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %45 = call i32 @dx.op.legacyF32ToF16(i32 130, float %37)  ; LegacyF32ToF16(value)
  %46 = call i32 @dx.op.legacyF32ToF16(i32 130, float %38)  ; LegacyF32ToF16(value)
  %47 = call i32 @dx.op.legacyF32ToF16(i32 130, float %39)  ; LegacyF32ToF16(value)
  %48 = lshr i32 %45, 4
  %49 = and i32 %48, 2047
  %50 = shl i32 %46, 7
  %51 = and i32 %50, 4192256
  %52 = or i32 %51, %49
  %53 = lshr i32 %47, 5
  %54 = shl i32 %53, 22
  %55 = or i32 %52, %54
  %56 = mul i32 %9, 8
  %57 = add i32 %10, %56
  %58 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?sharedDiffuse@@3PAY07$$CAIA.1dim", i32 0, i32 %57
  store i32 %55, i32 addrspace(3)* %58, align 4, !tbaa !17
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %59 = xor i32 %9, 1
  %60 = mul i32 %59, 8
  %61 = add i32 %10, %60
  %62 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?sharedDiffuse@@3PAY07$$CAIA.1dim", i32 0, i32 %61
  %63 = load i32, i32 addrspace(3)* %62, align 4, !tbaa !17
  %64 = shl i32 %63, 4
  %65 = and i32 %64, 32752
  %66 = call float @dx.op.legacyF16ToF32(i32 131, i32 %65)  ; LegacyF16ToF32(value)
  %67 = lshr i32 %63, 7
  %68 = and i32 %67, 32752
  %69 = call float @dx.op.legacyF16ToF32(i32 131, i32 %68)  ; LegacyF16ToF32(value)
  %70 = lshr i32 %63, 22
  %71 = shl nuw nsw i32 %70, 5
  %72 = call float @dx.op.legacyF16ToF32(i32 131, i32 %71)  ; LegacyF16ToF32(value)
  %73 = xor i32 %10, 1
  %74 = mul i32 %9, 8
  %75 = add i32 %73, %74
  %76 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?sharedDiffuse@@3PAY07$$CAIA.1dim", i32 0, i32 %75
  %77 = load i32, i32 addrspace(3)* %76, align 4, !tbaa !17
  %78 = shl i32 %77, 4
  %79 = and i32 %78, 32752
  %80 = call float @dx.op.legacyF16ToF32(i32 131, i32 %79)  ; LegacyF16ToF32(value)
  %81 = lshr i32 %77, 7
  %82 = and i32 %81, 32752
  %83 = call float @dx.op.legacyF16ToF32(i32 131, i32 %82)  ; LegacyF16ToF32(value)
  %84 = lshr i32 %77, 22
  %85 = shl nuw nsw i32 %84, 5
  %86 = call float @dx.op.legacyF16ToF32(i32 131, i32 %85)  ; LegacyF16ToF32(value)
  %87 = mul i32 %59, 8
  %88 = add i32 %73, %87
  %89 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?sharedDiffuse@@3PAY07$$CAIA.1dim", i32 0, i32 %88
  %90 = load i32, i32 addrspace(3)* %89, align 4, !tbaa !17
  %91 = shl i32 %90, 4
  %92 = and i32 %91, 32752
  %93 = call float @dx.op.legacyF16ToF32(i32 131, i32 %92)  ; LegacyF16ToF32(value)
  %94 = lshr i32 %90, 7
  %95 = and i32 %94, 32752
  %96 = call float @dx.op.legacyF16ToF32(i32 131, i32 %95)  ; LegacyF16ToF32(value)
  %97 = lshr i32 %90, 22
  %98 = shl nuw nsw i32 %97, 5
  %99 = call float @dx.op.legacyF16ToF32(i32 131, i32 %98)  ; LegacyF16ToF32(value)
  %100 = fadd fast float %66, %37
  %101 = fadd fast float %100, %80
  %102 = fadd fast float %101, %93
  %103 = fadd fast float %69, %38
  %104 = fadd fast float %103, %83
  %105 = fadd fast float %104, %96
  %106 = fadd fast float %72, %39
  %107 = fadd fast float %106, %86
  %108 = fadd fast float %107, %99
  %109 = fmul fast float %102, 2.500000e-01
  %110 = fmul fast float %105, 2.500000e-01
  %111 = fmul fast float %108, 2.500000e-01
  %112 = lshr i32 %7, 1
  %113 = lshr i32 %8, 1
  %114 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %6, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %115 = extractvalue %dx.types.CBufRet.f32 %114, 0
  %116 = fmul fast float %115, %109
  %117 = fmul fast float %110, %115
  %118 = fmul fast float %111, %115
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %3, i32 %112, i32 %113, i32 undef, float %116, float %117, float %118, float %116, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %119 = call i32 @dx.op.legacyF32ToF16(i32 130, float %109)  ; LegacyF32ToF16(value)
  %120 = call i32 @dx.op.legacyF32ToF16(i32 130, float %110)  ; LegacyF32ToF16(value)
  %121 = call i32 @dx.op.legacyF32ToF16(i32 130, float %111)  ; LegacyF32ToF16(value)
  %122 = lshr i32 %119, 4
  %123 = and i32 %122, 2047
  %124 = shl i32 %120, 7
  %125 = and i32 %124, 4192256
  %126 = or i32 %125, %123
  %127 = lshr i32 %121, 5
  %128 = shl i32 %127, 22
  %129 = or i32 %126, %128
  store i32 %129, i32 addrspace(3)* %58, align 4, !tbaa !17
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %130 = xor i32 %9, 2
  %131 = mul i32 %130, 8
  %132 = add i32 %10, %131
  %133 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?sharedDiffuse@@3PAY07$$CAIA.1dim", i32 0, i32 %132
  %134 = load i32, i32 addrspace(3)* %133, align 4, !tbaa !17
  %135 = shl i32 %134, 4
  %136 = and i32 %135, 32752
  %137 = call float @dx.op.legacyF16ToF32(i32 131, i32 %136)  ; LegacyF16ToF32(value)
  %138 = lshr i32 %134, 7
  %139 = and i32 %138, 32752
  %140 = call float @dx.op.legacyF16ToF32(i32 131, i32 %139)  ; LegacyF16ToF32(value)
  %141 = lshr i32 %134, 22
  %142 = shl nuw nsw i32 %141, 5
  %143 = call float @dx.op.legacyF16ToF32(i32 131, i32 %142)  ; LegacyF16ToF32(value)
  %144 = xor i32 %10, 2
  %145 = mul i32 %9, 8
  %146 = add i32 %144, %145
  %147 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?sharedDiffuse@@3PAY07$$CAIA.1dim", i32 0, i32 %146
  %148 = load i32, i32 addrspace(3)* %147, align 4, !tbaa !17
  %149 = shl i32 %148, 4
  %150 = and i32 %149, 32752
  %151 = call float @dx.op.legacyF16ToF32(i32 131, i32 %150)  ; LegacyF16ToF32(value)
  %152 = lshr i32 %148, 7
  %153 = and i32 %152, 32752
  %154 = call float @dx.op.legacyF16ToF32(i32 131, i32 %153)  ; LegacyF16ToF32(value)
  %155 = lshr i32 %148, 22
  %156 = shl nuw nsw i32 %155, 5
  %157 = call float @dx.op.legacyF16ToF32(i32 131, i32 %156)  ; LegacyF16ToF32(value)
  %158 = mul i32 %130, 8
  %159 = add i32 %144, %158
  %160 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?sharedDiffuse@@3PAY07$$CAIA.1dim", i32 0, i32 %159
  %161 = load i32, i32 addrspace(3)* %160, align 4, !tbaa !17
  %162 = shl i32 %161, 4
  %163 = and i32 %162, 32752
  %164 = call float @dx.op.legacyF16ToF32(i32 131, i32 %163)  ; LegacyF16ToF32(value)
  %165 = lshr i32 %161, 7
  %166 = and i32 %165, 32752
  %167 = call float @dx.op.legacyF16ToF32(i32 131, i32 %166)  ; LegacyF16ToF32(value)
  %168 = lshr i32 %161, 22
  %169 = shl nuw nsw i32 %168, 5
  %170 = call float @dx.op.legacyF16ToF32(i32 131, i32 %169)  ; LegacyF16ToF32(value)
  %171 = fadd fast float %137, %109
  %172 = fadd fast float %171, %151
  %173 = fadd fast float %172, %164
  %174 = fadd fast float %140, %110
  %175 = fadd fast float %174, %154
  %176 = fadd fast float %175, %167
  %177 = fadd fast float %143, %111
  %178 = fadd fast float %177, %157
  %179 = fadd fast float %178, %170
  %180 = fmul fast float %173, 2.500000e-01
  %181 = fmul fast float %176, 2.500000e-01
  %182 = fmul fast float %179, 2.500000e-01
  %183 = lshr i32 %7, 2
  %184 = lshr i32 %8, 2
  %185 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %6, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %186 = extractvalue %dx.types.CBufRet.f32 %185, 0
  %187 = fmul fast float %186, %180
  %188 = fmul fast float %181, %186
  %189 = fmul fast float %182, %186
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %183, i32 %184, i32 undef, float %187, float %188, float %189, float %187, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %190 = call i32 @dx.op.legacyF32ToF16(i32 130, float %180)  ; LegacyF32ToF16(value)
  %191 = call i32 @dx.op.legacyF32ToF16(i32 130, float %181)  ; LegacyF32ToF16(value)
  %192 = call i32 @dx.op.legacyF32ToF16(i32 130, float %182)  ; LegacyF32ToF16(value)
  %193 = lshr i32 %190, 4
  %194 = and i32 %193, 2047
  %195 = shl i32 %191, 7
  %196 = and i32 %195, 4192256
  %197 = or i32 %196, %194
  %198 = lshr i32 %192, 5
  %199 = shl i32 %198, 22
  %200 = or i32 %197, %199
  store i32 %200, i32 addrspace(3)* %58, align 4, !tbaa !17
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %201 = xor i32 %9, 4
  %202 = mul i32 %201, 8
  %203 = add i32 %10, %202
  %204 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?sharedDiffuse@@3PAY07$$CAIA.1dim", i32 0, i32 %203
  %205 = load i32, i32 addrspace(3)* %204, align 4, !tbaa !17
  %206 = shl i32 %205, 4
  %207 = and i32 %206, 32752
  %208 = call float @dx.op.legacyF16ToF32(i32 131, i32 %207)  ; LegacyF16ToF32(value)
  %209 = lshr i32 %205, 7
  %210 = and i32 %209, 32752
  %211 = call float @dx.op.legacyF16ToF32(i32 131, i32 %210)  ; LegacyF16ToF32(value)
  %212 = lshr i32 %205, 22
  %213 = shl nuw nsw i32 %212, 5
  %214 = call float @dx.op.legacyF16ToF32(i32 131, i32 %213)  ; LegacyF16ToF32(value)
  %215 = xor i32 %10, 4
  %216 = mul i32 %9, 8
  %217 = add i32 %215, %216
  %218 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?sharedDiffuse@@3PAY07$$CAIA.1dim", i32 0, i32 %217
  %219 = load i32, i32 addrspace(3)* %218, align 4, !tbaa !17
  %220 = shl i32 %219, 4
  %221 = and i32 %220, 32752
  %222 = call float @dx.op.legacyF16ToF32(i32 131, i32 %221)  ; LegacyF16ToF32(value)
  %223 = lshr i32 %219, 7
  %224 = and i32 %223, 32752
  %225 = call float @dx.op.legacyF16ToF32(i32 131, i32 %224)  ; LegacyF16ToF32(value)
  %226 = lshr i32 %219, 22
  %227 = shl nuw nsw i32 %226, 5
  %228 = call float @dx.op.legacyF16ToF32(i32 131, i32 %227)  ; LegacyF16ToF32(value)
  %229 = mul i32 %201, 8
  %230 = add i32 %215, %229
  %231 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?sharedDiffuse@@3PAY07$$CAIA.1dim", i32 0, i32 %230
  %232 = load i32, i32 addrspace(3)* %231, align 4, !tbaa !17
  %233 = shl i32 %232, 4
  %234 = and i32 %233, 32752
  %235 = call float @dx.op.legacyF16ToF32(i32 131, i32 %234)  ; LegacyF16ToF32(value)
  %236 = lshr i32 %232, 7
  %237 = and i32 %236, 32752
  %238 = call float @dx.op.legacyF16ToF32(i32 131, i32 %237)  ; LegacyF16ToF32(value)
  %239 = lshr i32 %232, 22
  %240 = shl nuw nsw i32 %239, 5
  %241 = call float @dx.op.legacyF16ToF32(i32 131, i32 %240)  ; LegacyF16ToF32(value)
  %242 = fadd fast float %208, %180
  %243 = fadd fast float %242, %222
  %244 = fadd fast float %243, %235
  %245 = fadd fast float %211, %181
  %246 = fadd fast float %245, %225
  %247 = fadd fast float %246, %238
  %248 = fadd fast float %214, %182
  %249 = fadd fast float %248, %228
  %250 = fadd fast float %249, %241
  %251 = fmul fast float %244, 2.500000e-01
  %252 = fmul fast float %247, 2.500000e-01
  %253 = fmul fast float %250, 2.500000e-01
  %254 = lshr i32 %7, 3
  %255 = lshr i32 %8, 3
  %256 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %6, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %257 = extractvalue %dx.types.CBufRet.f32 %256, 0
  %258 = fmul fast float %251, %257
  %259 = fmul fast float %252, %257
  %260 = fmul fast float %253, %257
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %254, i32 %255, i32 undef, float %258, float %259, float %260, float %258, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @dx.op.threadId.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.threadIdInGroup.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.legacyF32ToF16(i32, float) #0

; Function Attrs: nounwind
declare void @dx.op.textureStore.f32(i32, %dx.types.Handle, i32, i32, i32, float, float, float, float, i8) #1

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32) #2

; Function Attrs: noduplicate nounwind
declare void @dx.op.barrier(i32, i32) #3

; Function Attrs: nounwind readnone
declare float @dx.op.legacyF16ToF32(i32, i32) #0

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32, %dx.types.Handle, i32) #2

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
!dx.entryPoints = !{!14}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{null, !5, !12, null}
!5 = !{!6, !8, !9, !10, !11}
!6 = !{i32 0, %"class.RWTexture2D<vector<float, 3> >"* undef, !"", i32 0, i32 4, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, %"class.RWTexture2D<vector<float, 3> >"* undef, !"", i32 0, i32 0, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!9 = !{i32 2, %"class.RWTexture2D<vector<float, 3> >"* undef, !"", i32 0, i32 1, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!10 = !{i32 3, %"class.RWTexture2D<vector<float, 3> >"* undef, !"", i32 0, i32 2, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!11 = !{i32 4, %"class.RWTexture2D<vector<float, 3> >"* undef, !"", i32 0, i32 3, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!12 = !{!13}
!13 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!14 = !{void ()* @cs_diffuse_downsample_interior, !"cs_diffuse_downsample_interior", null, !4, !15}
!15 = !{i32 0, i64 8448, i32 4, !16}
!16 = !{i32 8, i32 8, i32 1}
!17 = !{!18, !18, i64 0}
!18 = !{!"int", !19, i64 0}
!19 = !{!"omnipotent char", !20, i64 0}
!20 = !{!"Simple C/C++ TBAA"}

