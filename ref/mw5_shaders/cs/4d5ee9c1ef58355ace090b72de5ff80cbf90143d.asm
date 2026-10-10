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
; shader hash: 36d86bc5a51bbd89fbab9917f5506481
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
;   [64 x i8] (type annotation not present)
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
;                                   sampler      NA          NA      S1             s3     1
;                                   textureunorm_f32          2d      T0             t0     1
;                                       UAV    byte         r/w      U0             u0     1
;                                       UAV    byte         r/w      U1             u2     1
;                                       UAV    byte         r/w      U2             u6     1
;                                       UAV    byte         r/w      U3             u4     1
;                                       UAV    byte         r/w      U4             u5     1
;                                       UAV    byte         r/w      U5             u1     1
;                                       UAV    byte         r/w      U6             u3     1
;                                       UAV    byte         r/w      U7             u7     1
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.CBufRet.i32 = type { i32, i32, i32, i32 }
%dx.types.CBufRet.f32 = type { float, float, float, float }
%dx.types.ResRet.f32 = type { float, float, float, float, i32 }
%dx.types.ResRet.i32 = type { i32, i32, i32, i32, i32 }
%"class.Texture2D<float>" = type { float, %"class.Texture2D<float>::mips_type" }
%"class.Texture2D<float>::mips_type" = type { i32 }
%struct.RWByteAddressBuffer = type { i32 }
%hostlayout.scene = type { %hostlayout.struct.GfxCodeSceneConsts }
%hostlayout.struct.GfxCodeSceneConsts = type { <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <3 x float>, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x i32>, <4 x i32>, <4 x float>, float, float, float, float, i32, i32, float, float, <2 x i32>, <2 x i32>, <2 x float>, <2 x float>, <3 x float>, i32, <3 x float>, float, <3 x float>, float, <2 x float>, <2 x float>, <3 x float>, float, <3 x float>, float, float, float, float, float, <3 x float>, float, i32, float, float, float, <4 x float>, <3 x float>, float, float, float, float, float, <4 x float>, float, float, float, float, i32, i32, i32, float, <4 x float>, i32, i32, i32, i32, i32, i32, i32, i32, <2 x i32>, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, [2 x <4 x i32>], [3 x <2 x float>], i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <2 x float>, <2 x float>, <4 x float>, <4 x i32>, <4 x float>, i32, float, float, float, i32, i32, i32, i32, <2 x float>, <2 x float>, <2 x float>, <2 x float>, i32, i32, <2 x float>, <2 x float>, <2 x float>, <3 x float>, i32, i32, i32, i32, i32, <4 x i32>, <4 x i32>, <4 x i32>, <4 x float>, i32, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <3 x float>, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], <4 x float>, [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], i32, i32, float, i32, <2 x float>, float, float, float, float, float, i32, <3 x float>, float, float, float, float, float, <3 x float>, float, <3 x float>, float, <3 x float>, float, float, float, float, float, <2 x float>, <2 x float>, float, float, float, float, <3 x float>, float, <2 x float>, i32, i32, <3 x float>, float, float, float, float, float, float, float, float, float, [4 x <3 x float>], i32, [4 x <3 x float>], i32, [4 x <3 x float>], i32, <4 x i32>, <2 x float>, <2 x float>, <2 x float>, i32, i32, float, float, float, float, <4 x float>, <4 x i32>, <4 x float>, <4 x float>, <4 x float>, i32, i32, i32, i32, <4 x float>, i32, float, float, i32, i32, float, float, i32, i32, float, float, i32, i32, float, float, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, float, float, float, float, i32, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, i32, i32, i32, float, <4 x float>, <4 x float>, <4 x float>, <4 x float>, i32, i32, i32, float, <4 x float>, float, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x i32>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [8 x <4 x float>], [8 x <4 x float>], <4 x float>, <3 x float>, i32, <2 x float>, float, float, float, float, float, float, <2 x float>, <2 x float>, <2 x float>, <2 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <2 x float>, float, float, <4 x float>, i32, i32, i32, i32, <3 x float>, i32, <4 x i32>, <4 x i32>, <2 x float>, <2 x i32>, <4 x float>, <4 x float>, <2 x float>, <2 x float>, [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, float, i32, i32, i32, i32, i32, float, float, <2 x float>, <2 x float>, float, float, float, float, i32, float, float, float, float, float, float, float, float, float, float, float, float, i32, i32, i32, float, float, float, i32, <2 x i32>, <2 x i32>, <4 x i32>, float, float, float, float, <4 x float>, <4 x float>, <2 x float>, <2 x float>, <4 x float>, <4 x float>, float, float, float, float, <4 x float>, float, float, float, float, i32, i32, float, float, <4 x float>, <2 x float>, <2 x float>, i32, i32, float, float, [4 x <4 x float>], float, float, float, float, float, float, float, float, i32, i32, i32, float, <4 x float>, <4 x float>, i32, i32, i32, i32, <2 x i32>, <2 x i32>, [2 x <4 x i32>], i32, float, float, float, i32, float, float, i32, <2 x i32>, <2 x float>, float, float, float, i32, %struct.GfxWeatherData, %hostlayout.struct.GfxVolumetricData, %struct.GfxFogRaymarchingData, %struct.GfxEnvironmentalFogData, %struct.GfxShallowWaterData, %struct.GfxGroundDeformationData, %struct.GfxSplinedModelGlobals }
%struct.GfxWeatherData = type { i32, i32, i32, i32, float, float, float, float, float, float, i32, i32, float, float, float, float, i32, i32, i32, i32, float, float, float, float, float, i32, i32, i32, i32, i32, i32, i32, <3 x float>, i32, <3 x float>, i32, i32, float, i32, i32, float, float, float, float }
%hostlayout.struct.GfxVolumetricData = type { [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <2 x float>, <2 x float>, <2 x float>, <2 x float>, <3 x i32>, i32, <3 x float>, i32, <4 x float>, <3 x float>, i32, i32, float, float, float, i32, i32, i32, float, <4 x float>, float, float, i32, i32, <3 x float>, i32, <3 x float>, float, <3 x float>, float, <2 x float>, float, float, <3 x float>, float, <3 x float>, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, <3 x float>, float, i32, float, float, float, <3 x float>, float, <2 x float>, <2 x float>, <3 x float>, float, i32, float, float, float, float, float, float, float, i32, i32, float, float, <3 x float>, float, i32, i32, <2 x float> }
%struct.GfxFogRaymarchingData = type { <2 x float>, <2 x float>, float, float, float, float, float, float, float, float, float, float, float, float, <2 x float>, <2 x float>, <3 x float>, float }
%struct.GfxEnvironmentalFogData = type { float, float, float, i32 }
%struct.GfxShallowWaterData = type { i32, i32, i32, i32, float, float, float, float, <2 x float>, <2 x float>, float, float, float, float, <3 x float>, float, float, float, float, float, float, float, float, float, i32, float, float, float, float, float, float, float, float, float, float, float, i32, float, float, float, float, i32, i32, i32 }
%struct.GfxGroundDeformationData = type { <2 x float>, <2 x float>, float, float, float, float, float, float, float, float, float, float, float, float, float, float, i32, i32 }
%struct.GfxSplinedModelGlobals = type { [64 x <4 x float>], [64 x <4 x float>], [16 x <4 x float>], [32 x <4 x float>], [64 x <4 x float>], [16 x <4 x float>], [16 x <4 x float>], float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float }
%ConstantBufferShallowWater = type { %struct.FluidConstants }
%struct.FluidConstants = type { i32, i32, i32, float, i32, i32, float, float, i32, i32, <2 x float>, i32, i32, i32, i32 }
%struct.SamplerState = type { i32 }

@"\01?tiledSharedMem@@3PAIA" = external addrspace(3) global [512 x i32], align 4
@"\01?gsBallotThreads64@@3PAIA" = external addrspace(3) global [8 x i32], align 4

define void @cs_prepass() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 7, i32 7, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 6, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 5, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 4, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 3, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 2, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call i32 @dx.op.flattenedThreadIdInGroup.i32(i32 96)  ; FlattenedThreadIdInGroup()
  %15 = call i32 @dx.op.groupId.i32(i32 94, i32 0)  ; GroupId(component)
  %16 = call i32 @dx.op.groupId.i32(i32 94, i32 1)  ; GroupId(component)
  %17 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %12, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %18 = extractvalue %dx.types.CBufRet.i32 %17, 0
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %188, !dx.controlflow.hints !26

; <label>:20                                      ; preds = %0
  %21 = shl i32 %15, 2
  %22 = shl i32 %16, 1
  %23 = and i32 %14, 7
  %24 = lshr i32 %14, 3
  %25 = and i32 %24, 7
  %26 = lshr i32 %14, 6
  %27 = and i32 %26, 3
  %28 = lshr i32 %14, 8
  %29 = or i32 %21, %27
  %30 = add i32 %22, %28
  %31 = shl i32 %29, 3
  %32 = shl i32 %30, 3
  %33 = or i32 %31, %23
  %34 = or i32 %32, %25
  %35 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %13, i32 428)  ; CBufferLoadLegacy(handle,regIndex)
  %36 = extractvalue %dx.types.CBufRet.i32 %35, 2
  %37 = icmp uge i32 %33, %36
  %38 = icmp uge i32 %34, %36
  %39 = or i1 %37, %38
  br i1 %39, label %203, label %40, !dx.controlflow.hints !27

; <label>:40                                      ; preds = %20
  %41 = uitofp i32 %33 to float
  %42 = uitofp i32 %34 to float
  %43 = fadd fast float %41, 5.000000e-01
  %44 = fadd fast float %42, 5.000000e-01
  %45 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 429)  ; CBufferLoadLegacy(handle,regIndex)
  %46 = extractvalue %dx.types.CBufRet.f32 %45, 3
  %47 = fmul fast float %46, %43
  %48 = fmul fast float %46, %44
  %49 = fadd fast float %47, -5.000000e-01
  %50 = fadd fast float %48, -5.000000e-01
  %51 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 430)  ; CBufferLoadLegacy(handle,regIndex)
  %52 = extractvalue %dx.types.CBufRet.f32 %51, 0
  %53 = extractvalue %dx.types.CBufRet.f32 %51, 1
  %54 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 435)  ; CBufferLoadLegacy(handle,regIndex)
  %55 = extractvalue %dx.types.CBufRet.f32 %54, 2
  %56 = fmul fast float %55, %52
  %57 = fmul fast float %55, %53
  %58 = fsub fast float %49, %56
  %59 = fsub fast float %50, %57
  %60 = call float @dx.op.unary.f32(i32 22, float %58)  ; Frc(value)
  %61 = call float @dx.op.unary.f32(i32 22, float %59)  ; Frc(value)
  %62 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %11, float %60, float %61, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %63 = extractvalue %dx.types.ResRet.f32 %62, 0
  %64 = fcmp fast oeq float %63, 0.000000e+00
  br i1 %64, label %65, label %74, !dx.controlflow.hints !28

; <label>:65                                      ; preds = %40
  %66 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %10, float %60, float %61, float undef, float undef, i32 -1, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %67 = extractvalue %dx.types.ResRet.f32 %66, 0
  %68 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %10, float %60, float %61, float undef, float undef, i32 1, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %69 = extractvalue %dx.types.ResRet.f32 %68, 0
  %70 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %10, float %60, float %61, float undef, float undef, i32 0, i32 1, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %71 = extractvalue %dx.types.ResRet.f32 %70, 0
  %72 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %10, float %60, float %61, float undef, float undef, i32 0, i32 -1, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %73 = extractvalue %dx.types.ResRet.f32 %72, 0
  br label %74

; <label>:74                                      ; preds = %65, %40
  %75 = phi float [ %73, %65 ], [ %63, %40 ]
  %76 = phi float [ %71, %65 ], [ %63, %40 ]
  %77 = phi float [ %69, %65 ], [ %63, %40 ]
  %78 = phi float [ %67, %65 ], [ %63, %40 ]
  %79 = fcmp fast ogt float %78, 0.000000e+00
  %80 = fcmp fast ogt float %77, 0.000000e+00
  %81 = fcmp fast ogt float %76, 0.000000e+00
  %82 = fcmp fast ogt float %75, 0.000000e+00
  %83 = or i1 %80, %79
  %84 = or i1 %81, %83
  %85 = or i1 %82, %84
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %86 = and i32 %14, 31
  %87 = zext i1 %85 to i32
  %88 = getelementptr [512 x i32], [512 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %14
  store i32 %87, i32 addrspace(3)* %88, align 4, !tbaa !29
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %89 = icmp ult i32 %86, 16
  br i1 %89, label %90, label %96, !dx.controlflow.hints !33

; <label>:90                                      ; preds = %74
  %91 = add i32 %14, 16
  %92 = getelementptr [512 x i32], [512 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %91
  %93 = load i32, i32 addrspace(3)* %92, align 4, !tbaa !29
  %94 = load i32, i32 addrspace(3)* %88, align 4, !tbaa !29
  %95 = or i32 %94, %93
  store i32 %95, i32 addrspace(3)* %88, align 4, !tbaa !29
  br label %96

; <label>:96                                      ; preds = %90, %74
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %97 = icmp ult i32 %86, 8
  br i1 %97, label %98, label %104, !dx.controlflow.hints !34

; <label>:98                                      ; preds = %96
  %99 = add i32 %14, 8
  %100 = getelementptr [512 x i32], [512 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %99
  %101 = load i32, i32 addrspace(3)* %100, align 4, !tbaa !29
  %102 = load i32, i32 addrspace(3)* %88, align 4, !tbaa !29
  %103 = or i32 %102, %101
  store i32 %103, i32 addrspace(3)* %88, align 4, !tbaa !29
  br label %104

; <label>:104                                     ; preds = %98, %96
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %105 = icmp ult i32 %86, 4
  br i1 %105, label %106, label %112, !dx.controlflow.hints !35

; <label>:106                                     ; preds = %104
  %107 = add i32 %14, 4
  %108 = getelementptr [512 x i32], [512 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %107
  %109 = load i32, i32 addrspace(3)* %108, align 4, !tbaa !29
  %110 = load i32, i32 addrspace(3)* %88, align 4, !tbaa !29
  %111 = or i32 %110, %109
  store i32 %111, i32 addrspace(3)* %88, align 4, !tbaa !29
  br label %112

; <label>:112                                     ; preds = %106, %104
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %113 = icmp ult i32 %86, 2
  br i1 %113, label %114, label %120, !dx.controlflow.hints !36

; <label>:114                                     ; preds = %112
  %115 = add i32 %14, 2
  %116 = getelementptr [512 x i32], [512 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %115
  %117 = load i32, i32 addrspace(3)* %116, align 4, !tbaa !29
  %118 = load i32, i32 addrspace(3)* %88, align 4, !tbaa !29
  %119 = or i32 %118, %117
  store i32 %119, i32 addrspace(3)* %88, align 4, !tbaa !29
  br label %120

; <label>:120                                     ; preds = %114, %112
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %121 = icmp eq i32 %86, 0
  br i1 %121, label %122, label %128, !dx.controlflow.hints !37

; <label>:122                                     ; preds = %120
  %123 = add i32 %14, 1
  %124 = getelementptr [512 x i32], [512 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %123
  %125 = load i32, i32 addrspace(3)* %124, align 4, !tbaa !29
  %126 = load i32, i32 addrspace(3)* %88, align 4, !tbaa !29
  %127 = or i32 %126, %125
  store i32 %127, i32 addrspace(3)* %88, align 4, !tbaa !29
  br label %128

; <label>:128                                     ; preds = %122, %120
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %129 = and i32 %14, -64
  %130 = or i32 %129, 32
  %131 = getelementptr [512 x i32], [512 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %129
  %132 = load i32, i32 addrspace(3)* %131, align 4, !tbaa !29
  %133 = getelementptr [512 x i32], [512 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %130
  %134 = load i32, i32 addrspace(3)* %133, align 4, !tbaa !29
  %135 = or i32 %134, %132
  %136 = icmp ne i32 %135, 0
  %137 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %12, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %138 = extractvalue %dx.types.CBufRet.i32 %137, 1
  %139 = icmp eq i32 %138, 0
  %140 = and i1 %136, %139
  %141 = and i32 %14, 63
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %143, label %156, !dx.controlflow.hints !38

; <label>:143                                     ; preds = %128
  %144 = and i32 %29, 65535
  %145 = shl i32 %30, 16
  %146 = or i32 %145, %144
  br i1 %140, label %147, label %150, !dx.controlflow.hints !39

; <label>:147                                     ; preds = %143
  %148 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %7, i32 0, i32 0, i32 undef, i32 undef, i32 1)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %149 = shl i32 %148, 2
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %2, i32 %149, i32 undef, i32 %146, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %153

; <label>:150                                     ; preds = %143
  %151 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %6, i32 0, i32 0, i32 undef, i32 undef, i32 1)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %152 = shl i32 %151, 2
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %152, i32 undef, i32 %146, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %153

; <label>:153                                     ; preds = %150, %147
  %154 = zext i1 %140 to i32
  %155 = getelementptr [8 x i32], [8 x i32] addrspace(3)* @"\01?gsBallotThreads64@@3PAIA", i32 0, i32 %26
  store i32 %154, i32 addrspace(3)* %155, align 4, !tbaa !29
  br label %156

; <label>:156                                     ; preds = %153, %128
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %157 = icmp eq i32 %14, 0
  br i1 %157, label %158, label %203, !dx.controlflow.hints !40

; <label>:158                                     ; preds = %156
  %159 = load i32, i32 addrspace(3)* getelementptr inbounds ([8 x i32], [8 x i32] addrspace(3)* @"\01?gsBallotThreads64@@3PAIA", i32 0, i32 0), align 4, !tbaa !29
  %160 = load i32, i32 addrspace(3)* getelementptr inbounds ([8 x i32], [8 x i32] addrspace(3)* @"\01?gsBallotThreads64@@3PAIA", i32 0, i32 1), align 4, !tbaa !29
  %161 = or i32 %160, %159
  %162 = load i32, i32 addrspace(3)* getelementptr inbounds ([8 x i32], [8 x i32] addrspace(3)* @"\01?gsBallotThreads64@@3PAIA", i32 0, i32 2), align 4, !tbaa !29
  %163 = or i32 %161, %162
  %164 = load i32, i32 addrspace(3)* getelementptr inbounds ([8 x i32], [8 x i32] addrspace(3)* @"\01?gsBallotThreads64@@3PAIA", i32 0, i32 3), align 4, !tbaa !29
  %165 = or i32 %163, %164
  %166 = load i32, i32 addrspace(3)* getelementptr inbounds ([8 x i32], [8 x i32] addrspace(3)* @"\01?gsBallotThreads64@@3PAIA", i32 0, i32 4), align 4, !tbaa !29
  %167 = or i32 %165, %166
  %168 = load i32, i32 addrspace(3)* getelementptr inbounds ([8 x i32], [8 x i32] addrspace(3)* @"\01?gsBallotThreads64@@3PAIA", i32 0, i32 5), align 4, !tbaa !29
  %169 = or i32 %167, %168
  %170 = load i32, i32 addrspace(3)* getelementptr inbounds ([8 x i32], [8 x i32] addrspace(3)* @"\01?gsBallotThreads64@@3PAIA", i32 0, i32 6), align 4, !tbaa !29
  %171 = or i32 %169, %170
  %172 = load i32, i32 addrspace(3)* getelementptr inbounds ([8 x i32], [8 x i32] addrspace(3)* @"\01?gsBallotThreads64@@3PAIA", i32 0, i32 7), align 4, !tbaa !29
  %173 = or i32 %171, %172
  %174 = icmp ne i32 %173, 0
  %175 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %12, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %176 = extractvalue %dx.types.CBufRet.i32 %175, 1
  %177 = icmp eq i32 %176, 0
  %178 = and i1 %174, %177
  %179 = and i32 %15, 65535
  %180 = shl i32 %16, 16
  %181 = or i32 %180, %179
  br i1 %178, label %182, label %185, !dx.controlflow.hints !41

; <label>:182                                     ; preds = %158
  %183 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %8, i32 0, i32 0, i32 undef, i32 undef, i32 1)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %184 = shl i32 %183, 2
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %3, i32 %184, i32 undef, i32 %181, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %203

; <label>:185                                     ; preds = %158
  %186 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %5, i32 0, i32 0, i32 undef, i32 undef, i32 1)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %187 = shl i32 %186, 2
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %4, i32 %187, i32 undef, i32 %181, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %203

; <label>:188                                     ; preds = %0
  %189 = icmp eq i32 %18, 1
  br i1 %189, label %190, label %203, !dx.controlflow.hints !42

; <label>:190                                     ; preds = %188
  %191 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %192 = extractvalue %dx.types.ResRet.i32 %191, 0
  %193 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %12, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %194 = extractvalue %dx.types.CBufRet.i32 %193, 1
  %195 = or i32 %194, %192
  %196 = icmp eq i32 %195, 0
  br i1 %196, label %197, label %198, !dx.controlflow.hints !43

; <label>:197                                     ; preds = %190
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %5, i32 0, i32 undef, i32 0, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %6, i32 0, i32 undef, i32 0, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %203

; <label>:198                                     ; preds = %190
  %199 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %12, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %200 = extractvalue %dx.types.CBufRet.i32 %199, 1
  %201 = add i32 %200, 7
  %202 = lshr i32 %201, 3
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %7, i32 0, i32 undef, i32 %202, i32 %202, i32 undef, i32 undef, i8 3)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %203

; <label>:203                                     ; preds = %198, %197, %188, %185, %182, %156, %20
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @dx.op.flattenedThreadIdInGroup.i32(i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.groupId.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare float @dx.op.unary.f32(i32, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #1

; Function Attrs: nounwind
declare i32 @dx.op.atomicBinOp.i32(i32, %dx.types.Handle, i32, i32, i32, i32, i32) #2

; Function Attrs: noduplicate nounwind
declare void @dx.op.barrier(i32, i32) #3

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32, %dx.types.Handle, i32) #1

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32, %dx.types.Handle, i32) #1

; Function Attrs: nounwind readonly
declare %dx.types.Handle @dx.op.createHandle(i32, i8, i32, i32, i1) #1

; Function Attrs: nounwind
declare void @dx.op.bufferStore.i32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i8) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32, %dx.types.Handle, i32, i32) #1

attributes #0 = { nounwind readnone }
attributes #1 = { nounwind readonly }
attributes #2 = { nounwind }
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
!4 = !{!5, !8, !17, !20}
!5 = !{!6}
!6 = !{i32 0, %"class.Texture2D<float>"* undef, !"", i32 0, i32 0, i32 1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 14}
!8 = !{!9, !10, !11, !12, !13, !14, !15, !16}
!9 = !{i32 0, %struct.RWByteAddressBuffer* undef, !"", i32 0, i32 0, i32 1, i32 11, i1 false, i1 false, i1 false, null}
!10 = !{i32 1, %struct.RWByteAddressBuffer* undef, !"", i32 0, i32 2, i32 1, i32 11, i1 false, i1 false, i1 false, null}
!11 = !{i32 2, %struct.RWByteAddressBuffer* undef, !"", i32 0, i32 6, i32 1, i32 11, i1 false, i1 false, i1 false, null}
!12 = !{i32 3, %struct.RWByteAddressBuffer* undef, !"", i32 0, i32 4, i32 1, i32 11, i1 false, i1 false, i1 false, null}
!13 = !{i32 4, %struct.RWByteAddressBuffer* undef, !"", i32 0, i32 5, i32 1, i32 11, i1 false, i1 false, i1 false, null}
!14 = !{i32 5, %struct.RWByteAddressBuffer* undef, !"", i32 0, i32 1, i32 1, i32 11, i1 false, i1 false, i1 false, null}
!15 = !{i32 6, %struct.RWByteAddressBuffer* undef, !"", i32 0, i32 3, i32 1, i32 11, i1 false, i1 false, i1 false, null}
!16 = !{i32 7, %struct.RWByteAddressBuffer* undef, !"", i32 0, i32 7, i32 1, i32 11, i1 false, i1 false, i1 false, null}
!17 = !{!18, !19}
!18 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!19 = !{i32 1, %ConstantBufferShallowWater* undef, !"", i32 0, i32 0, i32 1, i32 64, null}
!20 = !{!21, !22}
!21 = !{i32 0, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!22 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 3, i32 1, i32 0, null}
!23 = !{void ()* @cs_prepass, !"cs_prepass", null, !4, !24}
!24 = !{i32 0, i64 272, i32 4, !25}
!25 = !{i32 32, i32 16, i32 1}
!26 = distinct !{!26, !"dx.controlflow.hints", i32 1}
!27 = distinct !{!27, !"dx.controlflow.hints", i32 2}
!28 = distinct !{!28, !"dx.controlflow.hints", i32 2}
!29 = !{!30, !30, i64 0}
!30 = !{!"int", !31, i64 0}
!31 = !{!"omnipotent char", !32, i64 0}
!32 = !{!"Simple C/C++ TBAA"}
!33 = distinct !{!33, !"dx.controlflow.hints", i32 2}
!34 = distinct !{!34, !"dx.controlflow.hints", i32 2}
!35 = distinct !{!35, !"dx.controlflow.hints", i32 2}
!36 = distinct !{!36, !"dx.controlflow.hints", i32 2}
!37 = distinct !{!37, !"dx.controlflow.hints", i32 2}
!38 = distinct !{!38, !"dx.controlflow.hints", i32 1}
!39 = distinct !{!39, !"dx.controlflow.hints", i32 1}
!40 = distinct !{!40, !"dx.controlflow.hints", i32 1}
!41 = distinct !{!41, !"dx.controlflow.hints", i32 2}
!42 = distinct !{!42, !"dx.controlflow.hints", i32 2}
!43 = distinct !{!43, !"dx.controlflow.hints", i32 2}

