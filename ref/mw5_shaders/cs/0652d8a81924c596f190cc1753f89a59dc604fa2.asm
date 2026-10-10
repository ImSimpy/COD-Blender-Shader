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
; shader hash: d3c4b78df4fe40f314a36c86c0677a4b
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
;                                   sampler      NA          NA      S0             s3     1
;                                   texture    byte         r/o      T0            t17     1
;                                   textureunorm_f32          2d      T1             t6     1
;                                   texture     f32          2d      T2             t7     1
;                                   texture     f32          2d      T3             t8     1
;                                   textureunorm_f32          2d      T4            t15     1
;                                   textureunorm_f32          2d      T5            t16     1
;                                   texture     u32          2d      T6             t9     1
;                                   texture     u32          2d      T7            t10     1
;                                       UAVunorm_f32          2d      U0             u0     1
;                                       UAVunorm_f32          2d      U1             u1     1
;                                       UAV     f32          2d      U2             u2     1
;                                       UAV     f32          2d      U3             u3     1
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.ResRet.i32 = type { i32, i32, i32, i32, i32 }
%dx.types.CBufRet.i32 = type { i32, i32, i32, i32 }
%dx.types.ResRet.f32 = type { float, float, float, float, i32 }
%dx.types.CBufRet.f32 = type { float, float, float, float }
%struct.ByteAddressBuffer = type { i32 }
%"class.Texture2D<float>" = type { float, %"class.Texture2D<float>::mips_type" }
%"class.Texture2D<float>::mips_type" = type { i32 }
%"class.Texture2D<unsigned int>" = type { i32, %"class.Texture2D<unsigned int>::mips_type" }
%"class.Texture2D<unsigned int>::mips_type" = type { i32 }
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

define void @cs_extrapolate_to_bounds_and_foam_mask() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 3, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 9, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 16, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 15, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 7, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 17, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call i32 @dx.op.threadIdInGroup.i32(i32 95, i32 0)  ; ThreadIdInGroup(component)
  %17 = call i32 @dx.op.threadIdInGroup.i32(i32 95, i32 1)  ; ThreadIdInGroup(component)
  %18 = call i32 @dx.op.groupId.i32(i32 94, i32 0)  ; GroupId(component)
  %19 = shl i32 %18, 2
  %20 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %19, i32 undef)  ; BufferLoad(srv,index,wot)
  %21 = extractvalue %dx.types.ResRet.i32 %20, 0
  %22 = lshr i32 %21, 16
  %23 = shl i32 %21, 3
  %24 = and i32 %23, 524280
  %25 = shl nuw nsw i32 %22, 3
  %26 = add i32 %24, %16
  %27 = add i32 %25, %17
  %28 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %15, i32 428)  ; CBufferLoadLegacy(handle,regIndex)
  %29 = extractvalue %dx.types.CBufRet.i32 %28, 2
  %30 = icmp uge i32 %26, %29
  %31 = icmp uge i32 %27, %29
  %32 = or i1 %30, %31
  br i1 %32, label %221, label %33, !dx.controlflow.hints !30

; <label>:33                                      ; preds = %0
  %34 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %14, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %35 = extractvalue %dx.types.CBufRet.i32 %34, 2
  %36 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %6, i32 0, i32 %26, i32 %27, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %37 = extractvalue %dx.types.ResRet.i32 %36, 0
  %38 = icmp eq i32 %37, %35
  br i1 %38, label %39, label %108, !dx.controlflow.hints !31

; <label>:39                                      ; preds = %33
  %40 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %5, i32 0, i32 %26, i32 %27, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %41 = extractvalue %dx.types.ResRet.i32 %40, 0
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %50, !dx.controlflow.hints !32

; <label>:43                                      ; preds = %39
  %44 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %10, i32 0, i32 %26, i32 %27, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %45 = extractvalue %dx.types.ResRet.f32 %44, 0
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %26, i32 %27, i32 undef, float %45, float %45, float %45, float %45, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %46 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %9, i32 0, i32 %26, i32 %27, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %47 = extractvalue %dx.types.ResRet.f32 %46, 0
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %26, i32 %27, i32 undef, float %47, float %47, float %47, float %47, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %48 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %11, i32 0, i32 %26, i32 %27, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %49 = extractvalue %dx.types.ResRet.f32 %48, 0
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %3, i32 %26, i32 %27, i32 undef, float %49, float %49, float %49, float %49, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %221

; <label>:50                                      ; preds = %39
  %51 = icmp eq i32 %35, 1
  %52 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %3, i32 undef, i32 %26, i32 %27, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %53 = extractvalue %dx.types.ResRet.f32 %52, 0
  %54 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 429)  ; CBufferLoadLegacy(handle,regIndex)
  %55 = extractvalue %dx.types.CBufRet.f32 %54, 3
  %56 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %15, i32 428)  ; CBufferLoadLegacy(handle,regIndex)
  %57 = extractvalue %dx.types.CBufRet.i32 %56, 2
  %58 = uitofp i32 %57 to float
  %59 = lshr i32 %41, 9
  %60 = and i32 %59, 127
  %61 = lshr i32 %41, 2
  %62 = and i32 %61, 127
  %63 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %15, i32 435)  ; CBufferLoadLegacy(handle,regIndex)
  %64 = extractvalue %dx.types.CBufRet.i32 %63, 0
  %65 = call i32 @dx.op.binary.i32(i32 40, i32 128, i32 %64)  ; UMin(a,b)
  %66 = add i32 %60, %26
  %67 = sub i32 %66, %65
  %68 = add i32 %62, %27
  %69 = sub i32 %68, %65
  %70 = sitofp i32 %67 to float
  %71 = sitofp i32 %69 to float
  %72 = fadd fast float %70, 5.000000e-01
  %73 = fadd fast float %71, 5.000000e-01
  %74 = fmul fast float %72, %55
  %75 = fmul fast float %73, %55
  %76 = call float @dx.op.unary.f32(i32 22, float %74)  ; Frc(value)
  %77 = call float @dx.op.unary.f32(i32 22, float %75)  ; Frc(value)
  %78 = fmul fast float %76, %58
  %79 = fmul fast float %77, %58
  %80 = fptoui float %78 to i32
  %81 = fptoui float %79 to i32
  %82 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 undef, i32 %80, i32 %81, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %83 = extractvalue %dx.types.ResRet.f32 %82, 0
  %84 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %1, i32 undef, i32 %80, i32 %81, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %85 = extractvalue %dx.types.ResRet.f32 %84, 0
  br i1 %51, label %86, label %98, !dx.controlflow.hints !33

; <label>:86                                      ; preds = %50
  %87 = add i32 %26, 1
  %88 = icmp eq i32 %80, %87
  %89 = icmp eq i32 %81, %27
  %90 = and i1 %88, %89
  br i1 %90, label %91, label %92, !dx.controlflow.hints !34

; <label>:91                                      ; preds = %86
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %26, i32 %27, i32 undef, float %83, float %83, float %83, float %83, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %92

; <label>:92                                      ; preds = %91, %86
  %93 = add i32 %27, 1
  %94 = icmp eq i32 %80, %26
  %95 = icmp eq i32 %81, %93
  %96 = and i1 %94, %95
  br i1 %96, label %97, label %99, !dx.controlflow.hints !35

; <label>:97                                      ; preds = %92
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %26, i32 %27, i32 undef, float %85, float %85, float %85, float %85, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %99

; <label>:98                                      ; preds = %50
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %26, i32 %27, i32 undef, float %83, float %83, float %83, float %83, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %26, i32 %27, i32 undef, float %85, float %85, float %85, float %85, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %99

; <label>:99                                      ; preds = %98, %97, %92
  %100 = xor i1 %51, true
  %101 = fadd fast float %53, 0xBFE0001000000000
  %102 = call float @dx.op.unary.f32(i32 6, float %101)  ; FAbs(value)
  %103 = fcmp fast ogt float %102, 0x3EE0001000000000
  %104 = and i1 %103, %100
  %105 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %3, i32 undef, i32 %80, i32 %81, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %106 = extractvalue %dx.types.ResRet.f32 %105, 0
  %107 = select i1 %104, float %53, float %106
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %3, i32 %26, i32 %27, i32 undef, float %107, float %107, float %107, float %107, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %108

; <label>:108                                     ; preds = %99, %33
  %109 = icmp eq i32 %35, 2
  br i1 %109, label %110, label %221, !dx.controlflow.hints !36

; <label>:110                                     ; preds = %108
  %111 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %8, i32 0, i32 %26, i32 %27, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %112 = extractvalue %dx.types.ResRet.f32 %111, 0
  %113 = icmp eq i32 %37, 0
  br i1 %113, label %114, label %220, !dx.controlflow.hints !37

; <label>:114                                     ; preds = %110
  %115 = add i32 %27, -1
  %116 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %15, i32 428)  ; CBufferLoadLegacy(handle,regIndex)
  %117 = extractvalue %dx.types.CBufRet.i32 %116, 2
  %118 = uitofp i32 %117 to float
  %119 = sitofp i32 %26 to float
  %120 = sitofp i32 %115 to float
  %121 = fadd fast float %119, 5.000000e-01
  %122 = fadd fast float %120, 5.000000e-01
  %123 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 429)  ; CBufferLoadLegacy(handle,regIndex)
  %124 = extractvalue %dx.types.CBufRet.f32 %123, 3
  %125 = fmul fast float %124, %121
  %126 = fmul fast float %124, %122
  %127 = call float @dx.op.unary.f32(i32 22, float %125)  ; Frc(value)
  %128 = call float @dx.op.unary.f32(i32 22, float %126)  ; Frc(value)
  %129 = fmul fast float %127, %118
  %130 = fmul fast float %128, %118
  %131 = fptoui float %129 to i32
  %132 = fptoui float %130 to i32
  %133 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %6, i32 0, i32 %131, i32 %132, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %134 = extractvalue %dx.types.ResRet.i32 %133, 0
  %135 = add i32 %26, -1
  %136 = sitofp i32 %135 to float
  %137 = sitofp i32 %27 to float
  %138 = fadd fast float %136, 5.000000e-01
  %139 = fadd fast float %137, 5.000000e-01
  %140 = fmul fast float %124, %138
  %141 = fmul fast float %124, %139
  %142 = call float @dx.op.unary.f32(i32 22, float %140)  ; Frc(value)
  %143 = call float @dx.op.unary.f32(i32 22, float %141)  ; Frc(value)
  %144 = fmul fast float %142, %118
  %145 = fmul fast float %143, %118
  %146 = fptoui float %144 to i32
  %147 = fptoui float %145 to i32
  %148 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %6, i32 0, i32 %146, i32 %147, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %149 = extractvalue %dx.types.ResRet.i32 %148, 0
  %150 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %13, float %125, float %141, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %151 = extractvalue %dx.types.ResRet.f32 %150, 0
  %152 = fcmp fast ogt float %112, 0.000000e+00
  %153 = or i32 %149, %134
  %154 = icmp eq i32 %153, 0
  %155 = and i1 %152, %154
  br i1 %155, label %156, label %171, !dx.controlflow.hints !38

; <label>:156                                     ; preds = %114
  %157 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %13, float %125, float %141, float undef, float undef, i32 -1, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %158 = extractvalue %dx.types.ResRet.f32 %157, 0
  %159 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %13, float %125, float %141, float undef, float undef, i32 0, i32 -1, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %160 = extractvalue %dx.types.ResRet.f32 %159, 0
  %161 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 undef, i32 %26, i32 %27, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %162 = extractvalue %dx.types.ResRet.f32 %161, 0
  %163 = fsub fast float %151, %160
  %164 = fmul fast float %163, 1.000000e+01
  %165 = fadd fast float %162, %164
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %26, i32 %27, i32 undef, float %165, float %165, float %165, float %165, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %166 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %1, i32 undef, i32 %26, i32 %27, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %167 = extractvalue %dx.types.ResRet.f32 %166, 0
  %168 = fsub fast float %151, %158
  %169 = fmul fast float %168, 1.000000e+01
  %170 = fsub fast float %167, %169
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %26, i32 %27, i32 undef, float %170, float %170, float %170, float %170, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %171

; <label>:171                                     ; preds = %156, %114
  %172 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %5, i32 0, i32 %26, i32 %27, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %173 = extractvalue %dx.types.ResRet.i32 %172, 0
  %174 = icmp eq i32 %173, 0
  br i1 %174, label %175, label %176, !dx.controlflow.hints !39

; <label>:175                                     ; preds = %171
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %4, i32 %26, i32 %27, i32 undef, float %112, float %112, float %112, float %112, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %221

; <label>:176                                     ; preds = %171
  %177 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 429)  ; CBufferLoadLegacy(handle,regIndex)
  %178 = extractvalue %dx.types.CBufRet.f32 %177, 3
  %179 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %15, i32 428)  ; CBufferLoadLegacy(handle,regIndex)
  %180 = extractvalue %dx.types.CBufRet.i32 %179, 2
  %181 = uitofp i32 %180 to float
  %182 = lshr i32 %173, 9
  %183 = and i32 %182, 127
  %184 = lshr i32 %173, 2
  %185 = and i32 %184, 127
  %186 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %15, i32 435)  ; CBufferLoadLegacy(handle,regIndex)
  %187 = extractvalue %dx.types.CBufRet.i32 %186, 0
  %188 = call i32 @dx.op.binary.i32(i32 40, i32 128, i32 %187)  ; UMin(a,b)
  %189 = add i32 %183, %26
  %190 = sub i32 %189, %188
  %191 = add i32 %185, %27
  %192 = sub i32 %191, %188
  %193 = sitofp i32 %190 to float
  %194 = sitofp i32 %192 to float
  %195 = fadd fast float %193, 5.000000e-01
  %196 = fadd fast float %194, 5.000000e-01
  %197 = fmul fast float %195, %178
  %198 = fmul fast float %196, %178
  %199 = call float @dx.op.unary.f32(i32 22, float %197)  ; Frc(value)
  %200 = call float @dx.op.unary.f32(i32 22, float %198)  ; Frc(value)
  %201 = fmul fast float %199, %181
  %202 = fmul fast float %200, %181
  %203 = fptoui float %201 to i32
  %204 = fptoui float %202 to i32
  %205 = sitofp i32 %203 to float
  %206 = sitofp i32 %204 to float
  %207 = fsub fast float %205, %119
  %208 = fsub fast float %206, %137
  %209 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 436)  ; CBufferLoadLegacy(handle,regIndex)
  %210 = extractvalue %dx.types.CBufRet.f32 %209, 0
  %211 = fmul fast float %210, %210
  %212 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %8, i32 0, i32 %203, i32 %204, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %213 = extractvalue %dx.types.ResRet.f32 %212, 0
  %214 = call float @dx.op.dot2.f32(i32 54, float %207, float %208, float %207, float %208)  ; Dot2(ax,ay,bx,by)
  %215 = fdiv fast float %214, %211
  %216 = call float @dx.op.unary.f32(i32 7, float %215)  ; Saturate(value)
  %217 = fsub fast float 1.000000e+00, %216
  %218 = fmul fast float %217, %213
  %219 = call float @dx.op.binary.f32(i32 35, float %112, float %218)  ; FMax(a,b)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %4, i32 %26, i32 %27, i32 undef, float %219, float %219, float %219, float %219, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %221

; <label>:220                                     ; preds = %110
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %4, i32 %26, i32 %27, i32 undef, float %112, float %112, float %112, float %112, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %221

; <label>:221                                     ; preds = %220, %176, %175, %108, %43, %0
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @dx.op.threadIdInGroup.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.groupId.i32(i32, i32) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32) #1

; Function Attrs: nounwind
declare void @dx.op.textureStore.f32(i32, %dx.types.Handle, i32, i32, i32, float, float, float, float, i8) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32) #1

; Function Attrs: nounwind readnone
declare float @dx.op.unary.f32(i32, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #1

; Function Attrs: nounwind readnone
declare float @dx.op.binary.f32(i32, float, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.dot2.f32(i32, float, float, float, float) #0

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

!llvm.ident = !{!0}
!dx.version = !{!1}
!dx.valver = !{!2}
!dx.shaderModel = !{!3}
!dx.resources = !{!4}
!dx.entryPoints = !{!27}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !17, !22, !25}
!5 = !{!6, !7, !9, !11, !12, !13, !14, !16}
!6 = !{i32 0, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 17, i32 1, i32 11, i32 0, null}
!7 = !{i32 1, %"class.Texture2D<float>"* undef, !"", i32 0, i32 6, i32 1, i32 2, i32 0, !8}
!8 = !{i32 0, i32 14}
!9 = !{i32 2, %"class.Texture2D<float>"* undef, !"", i32 0, i32 7, i32 1, i32 2, i32 0, !10}
!10 = !{i32 0, i32 9}
!11 = !{i32 3, %"class.Texture2D<float>"* undef, !"", i32 0, i32 8, i32 1, i32 2, i32 0, !10}
!12 = !{i32 4, %"class.Texture2D<float>"* undef, !"", i32 0, i32 15, i32 1, i32 2, i32 0, !8}
!13 = !{i32 5, %"class.Texture2D<float>"* undef, !"", i32 0, i32 16, i32 1, i32 2, i32 0, !8}
!14 = !{i32 6, %"class.Texture2D<unsigned int>"* undef, !"", i32 0, i32 9, i32 1, i32 2, i32 0, !15}
!15 = !{i32 0, i32 5}
!16 = !{i32 7, %"class.Texture2D<unsigned int>"* undef, !"", i32 0, i32 10, i32 1, i32 2, i32 0, !15}
!17 = !{!18, !19, !20, !21}
!18 = !{i32 0, %"class.RWTexture2D<float>"* undef, !"", i32 0, i32 0, i32 1, i32 2, i1 false, i1 false, i1 false, !8}
!19 = !{i32 1, %"class.RWTexture2D<float>"* undef, !"", i32 0, i32 1, i32 1, i32 2, i1 false, i1 false, i1 false, !8}
!20 = !{i32 2, %"class.RWTexture2D<float>"* undef, !"", i32 0, i32 2, i32 1, i32 2, i1 false, i1 false, i1 false, !10}
!21 = !{i32 3, %"class.RWTexture2D<float>"* undef, !"", i32 0, i32 3, i32 1, i32 2, i1 false, i1 false, i1 false, !10}
!22 = !{!23, !24}
!23 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!24 = !{i32 1, %ConstantBufferShallowWater* undef, !"", i32 0, i32 0, i32 1, i32 64, null}
!25 = !{!26}
!26 = !{i32 0, %struct.SamplerState* undef, !"", i32 0, i32 3, i32 1, i32 0, null}
!27 = !{void ()* @cs_extrapolate_to_bounds_and_foam_mask, !"cs_extrapolate_to_bounds_and_foam_mask", null, !4, !28}
!28 = !{i32 0, i64 272, i32 4, !29}
!29 = !{i32 8, i32 8, i32 1}
!30 = distinct !{!30, !"dx.controlflow.hints", i32 2}
!31 = distinct !{!31, !"dx.controlflow.hints", i32 1}
!32 = distinct !{!32, !"dx.controlflow.hints", i32 2}
!33 = distinct !{!33, !"dx.controlflow.hints", i32 1}
!34 = distinct !{!34, !"dx.controlflow.hints", i32 2}
!35 = distinct !{!35, !"dx.controlflow.hints", i32 2}
!36 = distinct !{!36, !"dx.controlflow.hints", i32 2}
!37 = distinct !{!37, !"dx.controlflow.hints", i32 2}
!38 = distinct !{!38, !"dx.controlflow.hints", i32 2}
!39 = distinct !{!39, !"dx.controlflow.hints", i32 2}

