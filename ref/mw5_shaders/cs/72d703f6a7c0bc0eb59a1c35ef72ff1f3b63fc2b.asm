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
; shader hash: 015c0f99b1de6a422c498055a4686e97
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
;                                   texture    byte         r/o      T0            t17     1
;                                   texture    byte         r/o      T1            t20     1
;                                   textureunorm_f32          2d      T2             t2     1
;                                   texture     u32          2d      T3             t9     1
;                                       UAV     u32          2d      U0             u0     1
;                                       UAV     u32          2d      U1             u1     1
;                                       UAVunorm_f32          2d      U2             u2     1
;                                       UAV     f32          2d      U3             u3     1
;                                       UAV     f32          2d      U4             u4     1
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.CBufRet.i32 = type { i32, i32, i32, i32 }
%dx.types.ResRet.i32 = type { i32, i32, i32, i32, i32 }
%dx.types.CBufRet.f32 = type { float, float, float, float }
%dx.types.ResRet.f32 = type { float, float, float, float, i32 }
%struct.ByteAddressBuffer = type { i32 }
%"class.Texture2D<vector<float, 3> >" = type { <3 x float>, %"class.Texture2D<vector<float, 3> >::mips_type" }
%"class.Texture2D<vector<float, 3> >::mips_type" = type { i32 }
%"class.Texture2D<unsigned int>" = type { i32, %"class.Texture2D<unsigned int>::mips_type" }
%"class.Texture2D<unsigned int>::mips_type" = type { i32 }
%"class.RWTexture2D<unsigned int>" = type { i32 }
%"class.RWTexture2D<float>" = type { float }
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

@edgeOffset.0.hca = internal unnamed_addr constant [4 x i32] [i32 -1, i32 0, i32 1, i32 0]
@edgeOffset.1.hca = internal unnamed_addr constant [4 x i32] [i32 0, i32 1, i32 0, i32 -1]
@"\01?sharedSeedData@@3PAY07$$CAIA.1dim" = addrspace(3) global [64 x i32] undef, align 4

define void @cs_water_bounds_propagate_vel_and_create_seed_for_jumpflood() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 4, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 3, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 9, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 20, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 17, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call i32 @dx.op.threadIdInGroup.i32(i32 95, i32 0)  ; ThreadIdInGroup(component)
  %14 = call i32 @dx.op.threadIdInGroup.i32(i32 95, i32 1)  ; ThreadIdInGroup(component)
  %15 = call i32 @dx.op.groupId.i32(i32 94, i32 0)  ; GroupId(component)
  %16 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %11, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %17 = extractvalue %dx.types.CBufRet.i32 %16, 0
  %18 = icmp eq i32 %17, 2
  br i1 %18, label %19, label %382, !dx.controlflow.hints !27

; <label>:19                                      ; preds = %0
  %20 = shl i32 %15, 2
  %21 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %20, i32 undef)  ; BufferLoad(srv,index,wot)
  %22 = extractvalue %dx.types.ResRet.i32 %21, 0
  %23 = lshr i32 %22, 16
  %24 = shl i32 %22, 3
  %25 = and i32 %24, 524280
  %26 = shl nuw nsw i32 %23, 3
  %27 = add i32 %25, %13
  %28 = add i32 %26, %14
  %29 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %12, i32 428)  ; CBufferLoadLegacy(handle,regIndex)
  %30 = extractvalue %dx.types.CBufRet.i32 %29, 2
  %31 = icmp uge i32 %27, %30
  %32 = icmp uge i32 %28, %30
  %33 = or i1 %31, %32
  br i1 %33, label %406, label %34, !dx.controlflow.hints !28

; <label>:34                                      ; preds = %19
  %35 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %6, i32 0, i32 %27, i32 %28, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %36 = extractvalue %dx.types.ResRet.i32 %35, 0
  %37 = sitofp i32 %27 to float
  %38 = sitofp i32 %28 to float
  %39 = fadd fast float %37, 5.000000e-01
  %40 = fadd fast float %38, 5.000000e-01
  %41 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 429)  ; CBufferLoadLegacy(handle,regIndex)
  %42 = extractvalue %dx.types.CBufRet.f32 %41, 3
  %43 = fmul fast float %42, %39
  %44 = fmul fast float %42, %40
  %45 = fadd fast float %43, -5.000000e-01
  %46 = fadd fast float %44, -5.000000e-01
  %47 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 430)  ; CBufferLoadLegacy(handle,regIndex)
  %48 = extractvalue %dx.types.CBufRet.f32 %47, 0
  %49 = extractvalue %dx.types.CBufRet.f32 %47, 1
  %50 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 435)  ; CBufferLoadLegacy(handle,regIndex)
  %51 = extractvalue %dx.types.CBufRet.f32 %50, 2
  %52 = fmul fast float %51, %48
  %53 = fmul fast float %51, %49
  %54 = fsub fast float %45, %52
  %55 = fsub fast float %46, %53
  %56 = call float @dx.op.unary.f32(i32 22, float %54)  ; Frc(value)
  %57 = call float @dx.op.unary.f32(i32 22, float %55)  ; Frc(value)
  %58 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 367)  ; CBufferLoadLegacy(handle,regIndex)
  %59 = extractvalue %dx.types.CBufRet.f32 %58, 2
  %60 = extractvalue %dx.types.CBufRet.f32 %58, 3
  %61 = fsub fast float %59, %48
  %62 = fsub fast float %60, %49
  %63 = fmul fast float %61, %51
  %64 = fmul fast float %62, %51
  %65 = fsub fast float %56, %63
  %66 = fsub fast float %57, %64
  %67 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 434)  ; CBufferLoadLegacy(handle,regIndex)
  %68 = extractvalue %dx.types.CBufRet.f32 %67, 2
  %69 = add i32 %27, -1
  %70 = uitofp i32 %30 to float
  %71 = sitofp i32 %69 to float
  %72 = fadd fast float %71, 5.000000e-01
  %73 = fmul fast float %42, %72
  %74 = call float @dx.op.unary.f32(i32 22, float %73)  ; Frc(value)
  %75 = call float @dx.op.unary.f32(i32 22, float %44)  ; Frc(value)
  %76 = fmul fast float %74, %70
  %77 = fmul fast float %75, %70
  %78 = fptoui float %76 to i32
  %79 = fptoui float %77 to i32
  %80 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %6, i32 0, i32 %78, i32 %79, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %81 = extractvalue %dx.types.ResRet.i32 %80, 0
  %82 = icmp eq i32 %81, 1
  %83 = icmp eq i32 %36, 0
  %84 = and i1 %83, %82
  %85 = icmp eq i32 %81, 0
  %86 = icmp eq i32 %36, 1
  %87 = and i1 %86, %85
  %88 = icmp eq i32 %81, 2
  %89 = and i1 %86, %88
  %90 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %12, i32 438)  ; CBufferLoadLegacy(handle,regIndex)
  %91 = extractvalue %dx.types.CBufRet.i32 %90, 0
  %92 = icmp eq i32 %91, 0
  %93 = icmp eq i32 %36, 2
  %94 = or i1 %93, %89
  %95 = and i1 %92, %94
  %96 = or i1 %87, %95
  %97 = or i1 %84, %96
  br i1 %97, label %98, label %129, !dx.controlflow.hints !29

; <label>:98                                      ; preds = %34
  %99 = fsub fast float -0.000000e+00, %42
  %100 = select i1 %84, float %99, float 0.000000e+00
  %101 = fadd fast float %100, %65
  %102 = fcmp fast oge float %101, 0.000000e+00
  %103 = fcmp fast oge float %66, 0.000000e+00
  %104 = and i1 %103, %102
  %105 = fcmp fast olt float %101, 1.000000e+00
  %106 = fcmp fast olt float %66, 1.000000e+00
  %107 = and i1 %106, %105
  %108 = and i1 %104, %107
  br i1 %108, label %109, label %127, !dx.controlflow.hints !30

; <label>:109                                     ; preds = %98
  %110 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %10, float %101, float %66, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %111 = extractvalue %dx.types.ResRet.f32 %110, 0
  %112 = fadd fast float %111, 0xBFE0040100000000
  %113 = fcmp fast oeq float %111, 0.000000e+00
  %114 = call float @dx.op.unary.f32(i32 6, float %112)  ; FAbs(value)
  %115 = fcmp fast olt float %114, 0x3F40040100000000
  %116 = or i1 %113, %115
  %117 = select i1 %116, float 0.000000e+00, float %112
  %118 = fmul fast float %68, 2.000000e+00
  %119 = fmul fast float %118, %117
  %120 = fcmp fast ogt float %119, 0.000000e+00
  %121 = and i1 %84, %120
  %122 = fcmp fast olt float %119, 0.000000e+00
  %123 = and i1 %87, %122
  %124 = or i1 %121, %123
  %125 = or i1 %95, %124
  %126 = select i1 %125, float %119, float 0.000000e+00
  br label %127

; <label>:127                                     ; preds = %109, %98
  %128 = phi float [ %126, %109 ], [ 0.000000e+00, %98 ]
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %27, i32 %28, i32 undef, float %128, float %128, float %128, float %128, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %134

; <label>:129                                     ; preds = %34
  %130 = icmp eq i32 %81, 3
  %131 = icmp ne i32 %36, 0
  %132 = or i1 %131, %130
  br i1 %132, label %133, label %134, !dx.controlflow.hints !31

; <label>:133                                     ; preds = %129
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %27, i32 %28, i32 undef, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %134

; <label>:134                                     ; preds = %133, %129, %127
  %135 = phi float [ %128, %127 ], [ 0.000000e+00, %133 ], [ 0.000000e+00, %129 ]
  %136 = add i32 %28, -1
  %137 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %12, i32 428)  ; CBufferLoadLegacy(handle,regIndex)
  %138 = extractvalue %dx.types.CBufRet.i32 %137, 2
  %139 = uitofp i32 %138 to float
  %140 = sitofp i32 %136 to float
  %141 = fadd fast float %140, 5.000000e-01
  %142 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 429)  ; CBufferLoadLegacy(handle,regIndex)
  %143 = extractvalue %dx.types.CBufRet.f32 %142, 3
  %144 = fmul fast float %143, %39
  %145 = fmul fast float %143, %141
  %146 = call float @dx.op.unary.f32(i32 22, float %144)  ; Frc(value)
  %147 = call float @dx.op.unary.f32(i32 22, float %145)  ; Frc(value)
  %148 = fmul fast float %146, %139
  %149 = fmul fast float %147, %139
  %150 = fptoui float %148 to i32
  %151 = fptoui float %149 to i32
  %152 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %6, i32 0, i32 %150, i32 %151, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %153 = extractvalue %dx.types.ResRet.i32 %152, 0
  %154 = icmp eq i32 %153, 0
  %155 = and i1 %86, %154
  %156 = icmp eq i32 %153, 1
  %157 = and i1 %83, %156
  %158 = icmp eq i32 %153, 2
  %159 = and i1 %86, %158
  %160 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %12, i32 438)  ; CBufferLoadLegacy(handle,regIndex)
  %161 = extractvalue %dx.types.CBufRet.i32 %160, 0
  %162 = icmp eq i32 %161, 0
  %163 = and i1 %162, %159
  %164 = or i1 %95, %163
  %165 = or i1 %155, %164
  %166 = or i1 %157, %165
  br i1 %166, label %167, label %198, !dx.controlflow.hints !32

; <label>:167                                     ; preds = %134
  %168 = fsub fast float -0.000000e+00, %143
  %169 = select i1 %157, float %168, float 0.000000e+00
  %170 = fadd fast float %169, %66
  %171 = fcmp fast oge float %65, 0.000000e+00
  %172 = fcmp fast oge float %170, 0.000000e+00
  %173 = and i1 %171, %172
  %174 = fcmp fast olt float %65, 1.000000e+00
  %175 = fcmp fast olt float %170, 1.000000e+00
  %176 = and i1 %174, %175
  %177 = and i1 %173, %176
  br i1 %177, label %178, label %196, !dx.controlflow.hints !33

; <label>:178                                     ; preds = %167
  %179 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %10, float %65, float %170, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %180 = extractvalue %dx.types.ResRet.f32 %179, 1
  %181 = fadd fast float %180, 0xBFE0040100000000
  %182 = fcmp fast oeq float %180, 0.000000e+00
  %183 = call float @dx.op.unary.f32(i32 6, float %181)  ; FAbs(value)
  %184 = fcmp fast olt float %183, 0x3F40040100000000
  %185 = or i1 %182, %184
  %186 = select i1 %185, float 0.000000e+00, float %181
  %187 = fmul fast float %68, 2.000000e+00
  %188 = fmul fast float %187, %186
  %189 = fcmp fast ogt float %188, 0.000000e+00
  %190 = and i1 %157, %189
  %191 = fcmp fast olt float %188, 0.000000e+00
  %192 = and i1 %155, %191
  %193 = or i1 %190, %192
  %194 = or i1 %164, %193
  %195 = select i1 %194, float %188, float 0.000000e+00
  br label %196

; <label>:196                                     ; preds = %178, %167
  %197 = phi float [ %195, %178 ], [ 0.000000e+00, %167 ]
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %27, i32 %28, i32 undef, float %197, float %197, float %197, float %197, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %203

; <label>:198                                     ; preds = %134
  %199 = icmp eq i32 %153, 3
  %200 = icmp ne i32 %36, 0
  %201 = or i1 %200, %199
  br i1 %201, label %202, label %203, !dx.controlflow.hints !34

; <label>:202                                     ; preds = %198
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %27, i32 %28, i32 undef, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %203

; <label>:203                                     ; preds = %202, %198, %196
  %204 = phi float [ %197, %196 ], [ 0.000000e+00, %202 ], [ 0.000000e+00, %198 ]
  br i1 %83, label %246, label %205, !dx.controlflow.hints !35

; <label>:205                                     ; preds = %203
  br i1 %164, label %233, label %206, !dx.controlflow.hints !36

; <label>:206                                     ; preds = %205
  %207 = fcmp fast oge float %65, 0.000000e+00
  %208 = fcmp fast oge float %66, 0.000000e+00
  %209 = and i1 %207, %208
  %210 = fcmp fast olt float %65, 1.000000e+00
  %211 = fcmp fast olt float %66, 1.000000e+00
  %212 = and i1 %210, %211
  %213 = and i1 %209, %212
  br i1 %213, label %214, label %233, !dx.controlflow.hints !37

; <label>:214                                     ; preds = %206
  %215 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %10, float %65, float %66, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %216 = extractvalue %dx.types.ResRet.f32 %215, 0
  %217 = extractvalue %dx.types.ResRet.f32 %215, 1
  %218 = fadd fast float %216, 0xBFE0040100000000
  %219 = fadd fast float %217, 0xBFE0040100000000
  %220 = fcmp fast oeq float %216, 0.000000e+00
  %221 = fcmp fast oeq float %217, 0.000000e+00
  %222 = call float @dx.op.unary.f32(i32 6, float %218)  ; FAbs(value)
  %223 = call float @dx.op.unary.f32(i32 6, float %219)  ; FAbs(value)
  %224 = fcmp fast olt float %222, 0x3F40040100000000
  %225 = fcmp fast olt float %223, 0x3F40040100000000
  %226 = or i1 %220, %224
  %227 = or i1 %221, %225
  %228 = select i1 %226, float 0.000000e+00, float %218
  %229 = select i1 %227, float 0.000000e+00, float %219
  %230 = fmul fast float %68, 2.000000e+00
  %231 = fmul fast float %230, %228
  %232 = fmul fast float %230, %229
  br label %233

; <label>:233                                     ; preds = %214, %206, %205
  %234 = phi float [ %231, %214 ], [ 0.000000e+00, %206 ], [ %135, %205 ]
  %235 = phi float [ %232, %214 ], [ 0.000000e+00, %206 ], [ %204, %205 ]
  %236 = fmul fast float %234, %234
  %237 = fmul fast float %235, %235
  %238 = fadd fast float %237, %236
  %239 = call float @dx.op.unary.f32(i32 24, float %238)  ; Sqrt(value)
  %240 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 436)  ; CBufferLoadLegacy(handle,regIndex)
  %241 = extractvalue %dx.types.CBufRet.f32 %240, 1
  %242 = fmul fast float %241, %239
  %243 = extractvalue %dx.types.CBufRet.f32 %240, 2
  %244 = fadd fast float %242, %243
  %245 = call float @dx.op.unary.f32(i32 7, float %244)  ; Saturate(value)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %3, i32 %27, i32 %28, i32 undef, float %245, float %245, float %245, float %245, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %246

; <label>:246                                     ; preds = %233, %203
  %247 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %12, i32 438)  ; CBufferLoadLegacy(handle,regIndex)
  %248 = extractvalue %dx.types.CBufRet.i32 %247, 0
  %249 = icmp eq i32 %248, 0
  br i1 %249, label %406, label %250, !dx.controlflow.hints !38

; <label>:250                                     ; preds = %246
  %251 = and i32 %36, -3
  %252 = icmp eq i32 %251, 1
  br i1 %252, label %253, label %339, !dx.controlflow.hints !39

; <label>:253                                     ; preds = %250
  %254 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %12, i32 428)  ; CBufferLoadLegacy(handle,regIndex)
  %255 = extractvalue %dx.types.CBufRet.i32 %254, 2
  %256 = uitofp i32 %255 to float
  %257 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 429)  ; CBufferLoadLegacy(handle,regIndex)
  %258 = extractvalue %dx.types.CBufRet.f32 %257, 3
  %259 = fmul fast float %258, %72
  %260 = fmul fast float %258, %40
  %261 = call float @dx.op.unary.f32(i32 22, float %259)  ; Frc(value)
  %262 = call float @dx.op.unary.f32(i32 22, float %260)  ; Frc(value)
  %263 = fmul fast float %261, %256
  %264 = fmul fast float %262, %256
  %265 = fptoui float %263 to i32
  %266 = fptoui float %264 to i32
  %267 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %6, i32 0, i32 %265, i32 %266, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %268 = extractvalue %dx.types.ResRet.i32 %267, 0
  %269 = icmp eq i32 %268, 0
  br i1 %269, label %304, label %270, !dx.controlflow.hints !40

; <label>:270                                     ; preds = %253
  %271 = add i32 %28, 1
  %272 = sitofp i32 %271 to float
  %273 = fadd fast float %272, 5.000000e-01
  %274 = fmul fast float %258, %39
  %275 = fmul fast float %258, %273
  %276 = call float @dx.op.unary.f32(i32 22, float %274)  ; Frc(value)
  %277 = call float @dx.op.unary.f32(i32 22, float %275)  ; Frc(value)
  %278 = fmul fast float %276, %256
  %279 = fmul fast float %277, %256
  %280 = fptoui float %278 to i32
  %281 = fptoui float %279 to i32
  %282 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %6, i32 0, i32 %280, i32 %281, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %283 = extractvalue %dx.types.ResRet.i32 %282, 0
  %284 = icmp eq i32 %283, 0
  br i1 %284, label %304, label %285, !dx.controlflow.hints !40

; <label>:285                                     ; preds = %270
  %286 = add i32 %27, 1
  %287 = sitofp i32 %286 to float
  %288 = fadd fast float %287, 5.000000e-01
  %289 = fmul fast float %258, %288
  %290 = call float @dx.op.unary.f32(i32 22, float %289)  ; Frc(value)
  %291 = fmul fast float %290, %256
  %292 = fptoui float %291 to i32
  %293 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %6, i32 0, i32 %292, i32 %266, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %294 = extractvalue %dx.types.ResRet.i32 %293, 0
  %295 = icmp eq i32 %294, 0
  br i1 %295, label %304, label %296, !dx.controlflow.hints !40

; <label>:296                                     ; preds = %285
  %297 = fmul fast float %258, %141
  %298 = call float @dx.op.unary.f32(i32 22, float %297)  ; Frc(value)
  %299 = fmul fast float %298, %256
  %300 = fptoui float %299 to i32
  %301 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %6, i32 0, i32 %280, i32 %300, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %302 = extractvalue %dx.types.ResRet.i32 %301, 0
  %303 = icmp eq i32 %302, 0
  br i1 %303, label %304, label %321, !dx.controlflow.hints !40

; <label>:304                                     ; preds = %296, %285, %270, %253
  %305 = phi i32 [ 0, %253 ], [ 1, %270 ], [ 2, %285 ], [ 3, %296 ]
  %306 = getelementptr [4 x i32], [4 x i32]* @edgeOffset.0.hca, i32 0, i32 %305
  %307 = getelementptr [4 x i32], [4 x i32]* @edgeOffset.1.hca, i32 0, i32 %305
  %308 = load i32, i32* %306, align 4
  %309 = load i32, i32* %307, align 4
  %310 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %12, i32 435)  ; CBufferLoadLegacy(handle,regIndex)
  %311 = extractvalue %dx.types.CBufRet.i32 %310, 0
  %312 = call i32 @dx.op.binary.i32(i32 40, i32 128, i32 %311)  ; UMin(a,b)
  %313 = add i32 %312, %308
  %314 = add i32 %312, %309
  %315 = shl i32 %313, 9
  %316 = and i32 %315, 65024
  %317 = shl i32 %314, 2
  %318 = and i32 %317, 508
  %319 = or i32 %316, %318
  %320 = or i32 %319, 2
  br label %321

; <label>:321                                     ; preds = %304, %296
  %322 = phi i32 [ %320, %304 ], [ 0, %296 ]
  %323 = icmp eq i32 %322, 0
  br i1 %323, label %324, label %334, !dx.controlflow.hints !41

; <label>:324                                     ; preds = %321
  %325 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %12, i32 435)  ; CBufferLoadLegacy(handle,regIndex)
  %326 = extractvalue %dx.types.CBufRet.i32 %325, 0
  %327 = call i32 @dx.op.binary.i32(i32 40, i32 128, i32 %326)  ; UMin(a,b)
  %328 = shl i32 %327, 9
  %329 = and i32 %328, 65024
  %330 = shl i32 %327, 2
  %331 = and i32 %330, 508
  %332 = or i32 %329, %331
  %333 = or i32 %332, 2
  br label %334

; <label>:334                                     ; preds = %324, %321
  %335 = phi i32 [ %333, %324 ], [ %322, %321 ]
  call void @dx.op.textureStore.i32(i32 67, %dx.types.Handle %4, i32 %27, i32 %28, i32 undef, i32 %335, i32 %335, i32 %335, i32 %335, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %336 = mul i32 %14, 8
  %337 = add i32 %13, %336
  %338 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?sharedSeedData@@3PAY07$$CAIA.1dim", i32 0, i32 %337
  store i32 %335, i32 addrspace(3)* %338, align 4, !tbaa !42
  br label %343

; <label>:339                                     ; preds = %250
  call void @dx.op.textureStore.i32(i32 67, %dx.types.Handle %4, i32 %27, i32 %28, i32 undef, i32 0, i32 0, i32 0, i32 0, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %340 = mul i32 %14, 8
  %341 = add i32 %13, %340
  %342 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?sharedSeedData@@3PAY07$$CAIA.1dim", i32 0, i32 %341
  store i32 0, i32 addrspace(3)* %342, align 4, !tbaa !42
  br label %343

; <label>:343                                     ; preds = %339, %334
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %344 = or i32 %14, %13
  %345 = and i32 %344, 1
  %346 = icmp eq i32 %345, 0
  br i1 %346, label %347, label %406, !dx.controlflow.hints !46

; <label>:347                                     ; preds = %343
  %348 = mul i32 %14, 8
  %349 = add i32 %13, %348
  %350 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?sharedSeedData@@3PAY07$$CAIA.1dim", i32 0, i32 %349
  %351 = load i32, i32 addrspace(3)* %350, align 4, !tbaa !42
  %352 = add nsw i32 %13, 1
  %353 = mul i32 %14, 8
  %354 = add i32 %352, %353
  %355 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?sharedSeedData@@3PAY07$$CAIA.1dim", i32 0, i32 %354
  %356 = load i32, i32 addrspace(3)* %355, align 4, !tbaa !42
  %357 = or i32 %356, %351
  %358 = add nsw i32 %14, 1
  %359 = mul i32 %358, 8
  %360 = add i32 %13, %359
  %361 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?sharedSeedData@@3PAY07$$CAIA.1dim", i32 0, i32 %360
  %362 = load i32, i32 addrspace(3)* %361, align 4, !tbaa !42
  %363 = or i32 %357, %362
  %364 = mul i32 %358, 8
  %365 = add i32 %352, %364
  %366 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?sharedSeedData@@3PAY07$$CAIA.1dim", i32 0, i32 %365
  %367 = load i32, i32 addrspace(3)* %366, align 4, !tbaa !42
  %368 = or i32 %363, %367
  %369 = icmp ne i32 %368, 0
  %370 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %12, i32 435)  ; CBufferLoadLegacy(handle,regIndex)
  %371 = extractvalue %dx.types.CBufRet.i32 %370, 0
  %372 = call i32 @dx.op.binary.i32(i32 40, i32 128, i32 %371)  ; UMin(a,b)
  %373 = shl i32 %372, 9
  %374 = and i32 %373, 65024
  %375 = shl i32 %372, 2
  %376 = and i32 %375, 508
  %377 = or i32 %374, %376
  %378 = or i32 %377, 2
  %379 = select i1 %369, i32 %378, i32 0
  %380 = lshr i32 %27, 1
  %381 = lshr i32 %28, 1
  call void @dx.op.textureStore.i32(i32 67, %dx.types.Handle %5, i32 %380, i32 %381, i32 undef, i32 %379, i32 %379, i32 %379, i32 %379, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %406

; <label>:382                                     ; preds = %0
  %383 = icmp eq i32 %17, 1
  br i1 %383, label %384, label %406, !dx.controlflow.hints !47

; <label>:384                                     ; preds = %382
  %385 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %12, i32 438)  ; CBufferLoadLegacy(handle,regIndex)
  %386 = extractvalue %dx.types.CBufRet.i32 %385, 0
  %387 = icmp eq i32 %386, 0
  br i1 %387, label %406, label %388, !dx.controlflow.hints !48

; <label>:388                                     ; preds = %384
  %389 = shl i32 %15, 2
  %390 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %389, i32 undef)  ; BufferLoad(srv,index,wot)
  %391 = extractvalue %dx.types.ResRet.i32 %390, 0
  %392 = lshr i32 %391, 16
  %393 = shl i32 %391, 3
  %394 = and i32 %393, 524280
  %395 = shl nuw nsw i32 %392, 3
  %396 = add i32 %394, %13
  %397 = add i32 %395, %14
  %398 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %12, i32 428)  ; CBufferLoadLegacy(handle,regIndex)
  %399 = extractvalue %dx.types.CBufRet.i32 %398, 2
  %400 = icmp uge i32 %396, %399
  %401 = icmp uge i32 %397, %399
  %402 = or i1 %400, %401
  br i1 %402, label %406, label %403, !dx.controlflow.hints !49

; <label>:403                                     ; preds = %388
  %404 = lshr i32 %396, 1
  %405 = lshr i32 %397, 1
  call void @dx.op.textureStore.i32(i32 67, %dx.types.Handle %5, i32 %404, i32 %405, i32 undef, i32 0, i32 0, i32 0, i32 0, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  call void @dx.op.textureStore.i32(i32 67, %dx.types.Handle %4, i32 %396, i32 %397, i32 undef, i32 0, i32 0, i32 0, i32 0, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %406

; <label>:406                                     ; preds = %403, %388, %384, %382, %347, %343, %246, %19
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @dx.op.threadIdInGroup.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.groupId.i32(i32, i32) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32) #1

; Function Attrs: nounwind
declare void @dx.op.textureStore.i32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32, i8) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #1

; Function Attrs: nounwind readnone
declare float @dx.op.unary.f32(i32, float) #0

; Function Attrs: nounwind
declare void @dx.op.textureStore.f32(i32, %dx.types.Handle, i32, i32, i32, float, float, float, float, i8) #2

; Function Attrs: noduplicate nounwind
declare void @dx.op.barrier(i32, i32) #3

; Function Attrs: nounwind readnone
declare i32 @dx.op.binary.i32(i32, i32, i32) #0

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32, %dx.types.Handle, i32) #1

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32, %dx.types.Handle, i32) #1

; Function Attrs: nounwind readonly
declare %dx.types.Handle @dx.op.createHandle(i32, i8, i32, i32, i1) #1

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
!dx.entryPoints = !{!24}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !12, !19, !22}
!5 = !{!6, !7, !8, !10}
!6 = !{i32 0, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 17, i32 1, i32 11, i32 0, null}
!7 = !{i32 1, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 20, i32 1, i32 11, i32 0, null}
!8 = !{i32 2, %"class.Texture2D<vector<float, 3> >"* undef, !"", i32 0, i32 2, i32 1, i32 2, i32 0, !9}
!9 = !{i32 0, i32 14}
!10 = !{i32 3, %"class.Texture2D<unsigned int>"* undef, !"", i32 0, i32 9, i32 1, i32 2, i32 0, !11}
!11 = !{i32 0, i32 5}
!12 = !{!13, !14, !15, !16, !18}
!13 = !{i32 0, %"class.RWTexture2D<unsigned int>"* undef, !"", i32 0, i32 0, i32 1, i32 2, i1 false, i1 false, i1 false, !11}
!14 = !{i32 1, %"class.RWTexture2D<unsigned int>"* undef, !"", i32 0, i32 1, i32 1, i32 2, i1 false, i1 false, i1 false, !11}
!15 = !{i32 2, %"class.RWTexture2D<float>"* undef, !"", i32 0, i32 2, i32 1, i32 2, i1 false, i1 false, i1 false, !9}
!16 = !{i32 3, %"class.RWTexture2D<float>"* undef, !"", i32 0, i32 3, i32 1, i32 2, i1 false, i1 false, i1 false, !17}
!17 = !{i32 0, i32 9}
!18 = !{i32 4, %"class.RWTexture2D<float>"* undef, !"", i32 0, i32 4, i32 1, i32 2, i1 false, i1 false, i1 false, !17}
!19 = !{!20, !21}
!20 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!21 = !{i32 1, %ConstantBufferShallowWater* undef, !"", i32 0, i32 0, i32 1, i32 64, null}
!22 = !{!23}
!23 = !{i32 0, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!24 = !{void ()* @cs_water_bounds_propagate_vel_and_create_seed_for_jumpflood, !"cs_water_bounds_propagate_vel_and_create_seed_for_jumpflood", null, !4, !25}
!25 = !{i32 0, i64 272, i32 4, !26}
!26 = !{i32 8, i32 8, i32 1}
!27 = distinct !{!27, !"dx.controlflow.hints", i32 2}
!28 = distinct !{!28, !"dx.controlflow.hints", i32 2}
!29 = distinct !{!29, !"dx.controlflow.hints", i32 1}
!30 = distinct !{!30, !"dx.controlflow.hints", i32 2}
!31 = distinct !{!31, !"dx.controlflow.hints", i32 2}
!32 = distinct !{!32, !"dx.controlflow.hints", i32 1}
!33 = distinct !{!33, !"dx.controlflow.hints", i32 2}
!34 = distinct !{!34, !"dx.controlflow.hints", i32 2}
!35 = distinct !{!35, !"dx.controlflow.hints", i32 1}
!36 = distinct !{!36, !"dx.controlflow.hints", i32 1}
!37 = distinct !{!37, !"dx.controlflow.hints", i32 1}
!38 = distinct !{!38, !"dx.controlflow.hints", i32 1}
!39 = distinct !{!39, !"dx.controlflow.hints", i32 1}
!40 = distinct !{!40, !"dx.controlflow.hints", i32 2}
!41 = distinct !{!41, !"dx.controlflow.hints", i32 2}
!42 = !{!43, !43, i64 0}
!43 = !{!"int", !44, i64 0}
!44 = !{!"omnipotent char", !45, i64 0}
!45 = !{!"Simple C/C++ TBAA"}
!46 = distinct !{!46, !"dx.controlflow.hints", i32 2}
!47 = distinct !{!47, !"dx.controlflow.hints", i32 2}
!48 = distinct !{!48, !"dx.controlflow.hints", i32 1}
!49 = distinct !{!49, !"dx.controlflow.hints", i32 2}

