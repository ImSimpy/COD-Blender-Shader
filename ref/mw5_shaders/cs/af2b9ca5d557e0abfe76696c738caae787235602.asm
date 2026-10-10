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
; shader hash: 0e830e90d8697972c15a611fdb9e9a19
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
;                                   texture    byte         r/o      T0            t18     1
;                                   texture    byte         r/o      T1            t19     1
;                                   textureunorm_f32          2d      T2             t6     1
;                                   texture     f32          2d      T3             t7     1
;                                   texture     f32          2d      T4             t8     1
;                                   textureunorm_f32          2d      T5            t11     1
;                                   textureunorm_f32          2d      T6            t14     1
;                                   textureunorm_f32          2d      T7            t15     1
;                                   texture     u32          2d      T8             t9     1
;                                       UAVunorm_f32          2d      U0             u0     1
;                                       UAV     f32          2d      U1             u1     1
;                                       UAV     f32          2d      U2             u2     1
;                                       UAVunorm_f32          2d      U3             u3     1
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.CBufRet.i32 = type { i32, i32, i32, i32 }
%dx.types.ResRet.i32 = type { i32, i32, i32, i32, i32 }
%dx.types.CBufRet.f32 = type { float, float, float, float }
%dx.types.ResRet.f32 = type { float, float, float, float, i32 }
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

@"\01?updatedUVelocity@@3PAMA" = external addrspace(3) global [528 x float], align 4
@"\01?updatedWVelocity@@3PAMA" = external addrspace(3) global [544 x float], align 4
@"\01?advectedDepth@@3PAMA" = external addrspace(3) global [612 x float], align 4
@"\01?maskCache@@3PAIA" = external addrspace(3) global [612 x i32], align 4
@"\01?uwVelocityCache@@3PAIA" = external addrspace(3) global [612 x i32], align 4

define void @cs_update_velocity_depth() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 3, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 9, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 15, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 14, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 11, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 7, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 19, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 18, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call i32 @dx.op.flattenedThreadIdInGroup.i32(i32 96)  ; FlattenedThreadIdInGroup()
  %18 = call i32 @dx.op.groupId.i32(i32 94, i32 0)  ; GroupId(component)
  %19 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %15, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %20 = extractvalue %dx.types.CBufRet.i32 %19, 0
  %21 = icmp eq i32 %20, 1
  br i1 %21, label %22, label %40, !dx.controlflow.hints !31

; <label>:22                                      ; preds = %0
  %23 = shl i32 %18, 2
  %24 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %23, i32 undef)  ; BufferLoad(srv,index,wot)
  %25 = extractvalue %dx.types.ResRet.i32 %24, 0
  %26 = lshr i32 %25, 16
  %27 = shl i32 %25, 5
  %28 = and i32 %27, 2097120
  %29 = shl nuw nsw i32 %26, 4
  %30 = and i32 %17, 31
  %31 = lshr i32 %17, 5
  %32 = or i32 %28, %30
  %33 = add nuw nsw i32 %29, %31
  %34 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %16, i32 428)  ; CBufferLoadLegacy(handle,regIndex)
  %35 = extractvalue %dx.types.CBufRet.i32 %34, 2
  %36 = icmp uge i32 %32, %35
  %37 = icmp uge i32 %33, %35
  %38 = or i1 %36, %37
  br i1 %38, label %1270, label %39, !dx.controlflow.hints !32

; <label>:39                                      ; preds = %22
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %4, i32 %32, i32 %33, i32 undef, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %3, i32 %32, i32 %33, i32 undef, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %32, i32 %33, i32 undef, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %32, i32 %33, i32 undef, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %1270

; <label>:40                                      ; preds = %0
  %41 = icmp eq i32 %20, 2
  br i1 %41, label %42, label %1270, !dx.controlflow.hints !33

; <label>:42                                      ; preds = %40
  %43 = shl i32 %18, 2
  %44 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %43, i32 undef)  ; BufferLoad(srv,index,wot)
  %45 = extractvalue %dx.types.ResRet.i32 %44, 0
  %46 = lshr i32 %45, 16
  %47 = shl i32 %45, 5
  %48 = and i32 %47, 2097120
  %49 = shl nuw nsw i32 %46, 4
  %50 = and i32 %17, 31
  %51 = lshr i32 %17, 5
  %52 = or i32 %48, %50
  %53 = add nuw nsw i32 %49, %51
  %54 = icmp ult i32 %17, 612
  br i1 %54, label %55, label %226, !dx.controlflow.hints !34

; <label>:55                                      ; preds = %42
  %56 = urem i32 %17, 34
  %57 = udiv i32 %17, 34
  %58 = add nuw nsw i32 %56, %48
  %59 = add nuw nsw i32 %57, %49
  %60 = sitofp i32 %58 to float
  %61 = sitofp i32 %59 to float
  %62 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 429)  ; CBufferLoadLegacy(handle,regIndex)
  %63 = extractvalue %dx.types.CBufRet.f32 %62, 3
  %64 = fmul fast float %63, %60
  %65 = fmul fast float %63, %61
  %66 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %10, %dx.types.Handle %14, float %64, float %65, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %67 = extractvalue %dx.types.ResRet.f32 %66, 2
  %68 = extractvalue %dx.types.ResRet.f32 %66, 3
  %69 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %9, %dx.types.Handle %14, float %64, float %65, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %70 = extractvalue %dx.types.ResRet.f32 %69, 0
  %71 = extractvalue %dx.types.ResRet.f32 %69, 3
  %72 = fadd fast float %68, %67
  %73 = fadd fast float %71, %70
  %74 = getelementptr [612 x float], [612 x float] addrspace(3)* @"\01?advectedDepth@@3PAMA", i32 0, i32 %17
  %75 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %76 = extractvalue %dx.types.CBufRet.f32 %75, 3
  %77 = add nsw i32 %58, -1
  %78 = add nsw i32 %59, -1
  %79 = sitofp i32 %77 to float
  %80 = sitofp i32 %78 to float
  %81 = fadd fast float %79, 5.000000e-01
  %82 = fadd fast float %80, 5.000000e-01
  %83 = fmul fast float %63, %81
  %84 = fmul fast float %63, %82
  %85 = fadd fast float %83, -5.000000e-01
  %86 = fadd fast float %84, -5.000000e-01
  %87 = extractvalue %dx.types.CBufRet.f32 %62, 1
  %88 = fmul fast float %85, %87
  %89 = fmul fast float %86, %87
  %90 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 430)  ; CBufferLoadLegacy(handle,regIndex)
  %91 = extractvalue %dx.types.CBufRet.f32 %90, 0
  %92 = fadd fast float %88, %91
  %93 = fmul fast float %76, 5.000000e-01
  %94 = fmul fast float %72, 0x4033AF5EC0000000
  %95 = fmul fast float %94, %93
  %96 = fmul fast float %73, 0x4033AF5EC0000000
  %97 = fmul fast float %96, %93
  %98 = fsub fast float %92, %95
  %99 = fsub fast float %98, %91
  %100 = fsub fast float %89, %97
  %101 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 435)  ; CBufferLoadLegacy(handle,regIndex)
  %102 = extractvalue %dx.types.CBufRet.f32 %101, 2
  %103 = fmul fast float %99, %102
  %104 = fmul fast float %100, %102
  %105 = fadd fast float %103, 5.000000e-01
  %106 = fadd fast float %104, 5.000000e-01
  %107 = call float @dx.op.unary.f32(i32 22, float %105)  ; Frc(value)
  %108 = call float @dx.op.unary.f32(i32 22, float %106)  ; Frc(value)
  %109 = fmul fast float %63, 5.000000e-01
  %110 = fadd fast float %109, %107
  %111 = fadd fast float %109, %108
  %112 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %14, float %110, float %108, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %113 = extractvalue %dx.types.ResRet.f32 %112, 0
  %114 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %14, float %107, float %111, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %115 = extractvalue %dx.types.ResRet.f32 %114, 0
  %116 = fmul fast float %76, 0x4043AF5EC0000000
  %117 = fmul fast float %116, %113
  %118 = fmul fast float %116, %115
  %119 = fsub fast float %92, %117
  %120 = fsub fast float %119, %91
  %121 = fsub fast float %89, %118
  %122 = fmul fast float %120, %102
  %123 = fmul fast float %121, %102
  %124 = fadd fast float %122, 5.000000e-01
  %125 = fadd fast float %123, 5.000000e-01
  %126 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %16, i32 428)  ; CBufferLoadLegacy(handle,regIndex)
  %127 = extractvalue %dx.types.CBufRet.i32 %126, 2
  %128 = uitofp i32 %127 to float
  %129 = fmul fast float %124, %128
  %130 = fmul fast float %125, %128
  %131 = fadd fast float %129, -5.000000e-01
  %132 = fadd fast float %130, -5.000000e-01
  %133 = call float @dx.op.unary.f32(i32 27, float %131)  ; Round_ni(value)
  %134 = call float @dx.op.unary.f32(i32 27, float %132)  ; Round_ni(value)
  %135 = fsub fast float %131, %133
  %136 = fsub fast float %132, %134
  %137 = fsub fast float 1.000000e+00, %135
  %138 = fsub fast float 1.000000e+00, %136
  %139 = fmul fast float %137, %137
  %140 = fmul fast float %138, %138
  %141 = fmul fast float %135, %135
  %142 = fmul fast float %136, %136
  %143 = fmul fast float %137, 0x3FC5555560000000
  %144 = fmul fast float %143, %139
  %145 = fmul fast float %138, 0x3FC5555560000000
  %146 = fmul fast float %145, %140
  %147 = fmul fast float %141, 5.000000e-01
  %148 = fmul fast float %142, 5.000000e-01
  %149 = fsub fast float 2.000000e+00, %135
  %150 = fsub fast float 2.000000e+00, %136
  %151 = fmul fast float %147, %149
  %152 = fmul fast float %148, %150
  %153 = fsub fast float 0x3FE5555560000000, %151
  %154 = fsub fast float 0x3FE5555560000000, %152
  %155 = fadd fast float %135, 1.000000e+00
  %156 = fadd fast float %136, 1.000000e+00
  %157 = fmul fast float %155, 5.000000e-01
  %158 = fmul fast float %157, %139
  %159 = fmul fast float %156, 5.000000e-01
  %160 = fmul fast float %159, %140
  %161 = fmul fast float %135, 0x3FC5555560000000
  %162 = fmul fast float %161, %141
  %163 = fmul fast float %136, 0x3FC5555560000000
  %164 = fmul fast float %163, %142
  %165 = fadd fast float %144, %153
  %166 = fadd fast float %146, %154
  %167 = fadd fast float %162, 0x3FE5555560000000
  %168 = fsub fast float %167, %158
  %169 = fadd fast float %164, 0x3FE5555560000000
  %170 = fsub fast float %169, %160
  %171 = fdiv fast float %153, %165
  %172 = fdiv fast float %154, %166
  %173 = fadd fast float %133, -5.000000e-01
  %174 = fadd fast float %173, %171
  %175 = fadd fast float %134, -5.000000e-01
  %176 = fadd fast float %175, %172
  %177 = fmul fast float %174, %63
  %178 = fmul fast float %176, %63
  %179 = fdiv fast float %162, %168
  %180 = fdiv fast float %164, %170
  %181 = fadd fast float %133, 1.500000e+00
  %182 = fadd fast float %181, %179
  %183 = fadd fast float %134, 1.500000e+00
  %184 = fadd fast float %183, %180
  %185 = fmul fast float %182, %63
  %186 = fmul fast float %184, %63
  %187 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %14, float %177, float %178, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %188 = extractvalue %dx.types.ResRet.f32 %187, 0
  %189 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %14, float %185, float %178, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %190 = extractvalue %dx.types.ResRet.f32 %189, 0
  %191 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %14, float %177, float %186, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %192 = extractvalue %dx.types.ResRet.f32 %191, 0
  %193 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %14, float %185, float %186, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %194 = extractvalue %dx.types.ResRet.f32 %193, 0
  %195 = fsub fast float %188, %192
  %196 = fmul fast float %195, %166
  %197 = fadd fast float %196, %192
  %198 = fsub fast float %190, %194
  %199 = fmul fast float %198, %166
  %200 = fadd fast float %199, %194
  %201 = fsub fast float %197, %200
  %202 = fmul fast float %201, %165
  %203 = fadd fast float %202, %200
  store float %203, float addrspace(3)* %74, align 4, !tbaa !35
  %204 = call i32 @dx.op.legacyF32ToF16(i32 130, float %68)  ; LegacyF32ToF16(value)
  %205 = shl i32 %204, 16
  %206 = call i32 @dx.op.legacyF32ToF16(i32 130, float %71)  ; LegacyF32ToF16(value)
  %207 = and i32 %206, 65535
  %208 = or i32 %207, %205
  %209 = getelementptr [612 x i32], [612 x i32] addrspace(3)* @"\01?uwVelocityCache@@3PAIA", i32 0, i32 %17
  store i32 %208, i32 addrspace(3)* %209, align 4, !tbaa !39
  %210 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %16, i32 428)  ; CBufferLoadLegacy(handle,regIndex)
  %211 = extractvalue %dx.types.CBufRet.i32 %210, 2
  %212 = uitofp i32 %211 to float
  %213 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 429)  ; CBufferLoadLegacy(handle,regIndex)
  %214 = extractvalue %dx.types.CBufRet.f32 %213, 3
  %215 = fmul fast float %214, %81
  %216 = fmul fast float %214, %82
  %217 = call float @dx.op.unary.f32(i32 22, float %215)  ; Frc(value)
  %218 = call float @dx.op.unary.f32(i32 22, float %216)  ; Frc(value)
  %219 = fmul fast float %217, %212
  %220 = fmul fast float %218, %212
  %221 = fptoui float %219 to i32
  %222 = fptoui float %220 to i32
  %223 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %5, i32 0, i32 %221, i32 %222, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %224 = extractvalue %dx.types.ResRet.i32 %223, 0
  %225 = getelementptr [612 x i32], [612 x i32] addrspace(3)* @"\01?maskCache@@3PAIA", i32 0, i32 %17
  store i32 %224, i32 addrspace(3)* %225, align 4, !tbaa !39
  br label %226

; <label>:226                                     ; preds = %55, %42
  %227 = add i32 %17, 512
  %228 = icmp ult i32 %227, 612
  br i1 %228, label %229, label %400, !dx.controlflow.hints !34

; <label>:229                                     ; preds = %226
  %230 = urem i32 %227, 34
  %231 = udiv i32 %227, 34
  %232 = add nuw nsw i32 %230, %48
  %233 = add nuw nsw i32 %231, %49
  %234 = sitofp i32 %232 to float
  %235 = sitofp i32 %233 to float
  %236 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 429)  ; CBufferLoadLegacy(handle,regIndex)
  %237 = extractvalue %dx.types.CBufRet.f32 %236, 3
  %238 = fmul fast float %237, %234
  %239 = fmul fast float %237, %235
  %240 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %10, %dx.types.Handle %14, float %238, float %239, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %241 = extractvalue %dx.types.ResRet.f32 %240, 2
  %242 = extractvalue %dx.types.ResRet.f32 %240, 3
  %243 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %9, %dx.types.Handle %14, float %238, float %239, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %244 = extractvalue %dx.types.ResRet.f32 %243, 0
  %245 = extractvalue %dx.types.ResRet.f32 %243, 3
  %246 = fadd fast float %242, %241
  %247 = fadd fast float %245, %244
  %248 = getelementptr [612 x float], [612 x float] addrspace(3)* @"\01?advectedDepth@@3PAMA", i32 0, i32 %227
  %249 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %250 = extractvalue %dx.types.CBufRet.f32 %249, 3
  %251 = add nsw i32 %232, -1
  %252 = add nsw i32 %233, -1
  %253 = sitofp i32 %251 to float
  %254 = sitofp i32 %252 to float
  %255 = fadd fast float %253, 5.000000e-01
  %256 = fadd fast float %254, 5.000000e-01
  %257 = fmul fast float %237, %255
  %258 = fmul fast float %237, %256
  %259 = fadd fast float %257, -5.000000e-01
  %260 = fadd fast float %258, -5.000000e-01
  %261 = extractvalue %dx.types.CBufRet.f32 %236, 1
  %262 = fmul fast float %259, %261
  %263 = fmul fast float %260, %261
  %264 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 430)  ; CBufferLoadLegacy(handle,regIndex)
  %265 = extractvalue %dx.types.CBufRet.f32 %264, 0
  %266 = fadd fast float %262, %265
  %267 = fmul fast float %250, 5.000000e-01
  %268 = fmul fast float %246, 0x4033AF5EC0000000
  %269 = fmul fast float %268, %267
  %270 = fmul fast float %247, 0x4033AF5EC0000000
  %271 = fmul fast float %270, %267
  %272 = fsub fast float %266, %269
  %273 = fsub fast float %272, %265
  %274 = fsub fast float %263, %271
  %275 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 435)  ; CBufferLoadLegacy(handle,regIndex)
  %276 = extractvalue %dx.types.CBufRet.f32 %275, 2
  %277 = fmul fast float %273, %276
  %278 = fmul fast float %274, %276
  %279 = fadd fast float %277, 5.000000e-01
  %280 = fadd fast float %278, 5.000000e-01
  %281 = call float @dx.op.unary.f32(i32 22, float %279)  ; Frc(value)
  %282 = call float @dx.op.unary.f32(i32 22, float %280)  ; Frc(value)
  %283 = fmul fast float %237, 5.000000e-01
  %284 = fadd fast float %283, %281
  %285 = fadd fast float %283, %282
  %286 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %14, float %284, float %282, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %287 = extractvalue %dx.types.ResRet.f32 %286, 0
  %288 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %14, float %281, float %285, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %289 = extractvalue %dx.types.ResRet.f32 %288, 0
  %290 = fmul fast float %250, 0x4043AF5EC0000000
  %291 = fmul fast float %290, %287
  %292 = fmul fast float %290, %289
  %293 = fsub fast float %266, %291
  %294 = fsub fast float %293, %265
  %295 = fsub fast float %263, %292
  %296 = fmul fast float %294, %276
  %297 = fmul fast float %295, %276
  %298 = fadd fast float %296, 5.000000e-01
  %299 = fadd fast float %297, 5.000000e-01
  %300 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %16, i32 428)  ; CBufferLoadLegacy(handle,regIndex)
  %301 = extractvalue %dx.types.CBufRet.i32 %300, 2
  %302 = uitofp i32 %301 to float
  %303 = fmul fast float %298, %302
  %304 = fmul fast float %299, %302
  %305 = fadd fast float %303, -5.000000e-01
  %306 = fadd fast float %304, -5.000000e-01
  %307 = call float @dx.op.unary.f32(i32 27, float %305)  ; Round_ni(value)
  %308 = call float @dx.op.unary.f32(i32 27, float %306)  ; Round_ni(value)
  %309 = fsub fast float %305, %307
  %310 = fsub fast float %306, %308
  %311 = fsub fast float 1.000000e+00, %309
  %312 = fsub fast float 1.000000e+00, %310
  %313 = fmul fast float %311, %311
  %314 = fmul fast float %312, %312
  %315 = fmul fast float %309, %309
  %316 = fmul fast float %310, %310
  %317 = fmul fast float %311, 0x3FC5555560000000
  %318 = fmul fast float %317, %313
  %319 = fmul fast float %312, 0x3FC5555560000000
  %320 = fmul fast float %319, %314
  %321 = fmul fast float %315, 5.000000e-01
  %322 = fmul fast float %316, 5.000000e-01
  %323 = fsub fast float 2.000000e+00, %309
  %324 = fsub fast float 2.000000e+00, %310
  %325 = fmul fast float %321, %323
  %326 = fmul fast float %322, %324
  %327 = fsub fast float 0x3FE5555560000000, %325
  %328 = fsub fast float 0x3FE5555560000000, %326
  %329 = fadd fast float %309, 1.000000e+00
  %330 = fadd fast float %310, 1.000000e+00
  %331 = fmul fast float %329, 5.000000e-01
  %332 = fmul fast float %331, %313
  %333 = fmul fast float %330, 5.000000e-01
  %334 = fmul fast float %333, %314
  %335 = fmul fast float %309, 0x3FC5555560000000
  %336 = fmul fast float %335, %315
  %337 = fmul fast float %310, 0x3FC5555560000000
  %338 = fmul fast float %337, %316
  %339 = fadd fast float %318, %327
  %340 = fadd fast float %320, %328
  %341 = fadd fast float %336, 0x3FE5555560000000
  %342 = fsub fast float %341, %332
  %343 = fadd fast float %338, 0x3FE5555560000000
  %344 = fsub fast float %343, %334
  %345 = fdiv fast float %327, %339
  %346 = fdiv fast float %328, %340
  %347 = fadd fast float %307, -5.000000e-01
  %348 = fadd fast float %347, %345
  %349 = fadd fast float %308, -5.000000e-01
  %350 = fadd fast float %349, %346
  %351 = fmul fast float %348, %237
  %352 = fmul fast float %350, %237
  %353 = fdiv fast float %336, %342
  %354 = fdiv fast float %338, %344
  %355 = fadd fast float %307, 1.500000e+00
  %356 = fadd fast float %355, %353
  %357 = fadd fast float %308, 1.500000e+00
  %358 = fadd fast float %357, %354
  %359 = fmul fast float %356, %237
  %360 = fmul fast float %358, %237
  %361 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %14, float %351, float %352, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %362 = extractvalue %dx.types.ResRet.f32 %361, 0
  %363 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %14, float %359, float %352, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %364 = extractvalue %dx.types.ResRet.f32 %363, 0
  %365 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %14, float %351, float %360, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %366 = extractvalue %dx.types.ResRet.f32 %365, 0
  %367 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %14, float %359, float %360, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %368 = extractvalue %dx.types.ResRet.f32 %367, 0
  %369 = fsub fast float %362, %366
  %370 = fmul fast float %369, %340
  %371 = fadd fast float %370, %366
  %372 = fsub fast float %364, %368
  %373 = fmul fast float %372, %340
  %374 = fadd fast float %373, %368
  %375 = fsub fast float %371, %374
  %376 = fmul fast float %375, %339
  %377 = fadd fast float %376, %374
  store float %377, float addrspace(3)* %248, align 4, !tbaa !35
  %378 = call i32 @dx.op.legacyF32ToF16(i32 130, float %242)  ; LegacyF32ToF16(value)
  %379 = shl i32 %378, 16
  %380 = call i32 @dx.op.legacyF32ToF16(i32 130, float %245)  ; LegacyF32ToF16(value)
  %381 = and i32 %380, 65535
  %382 = or i32 %381, %379
  %383 = getelementptr [612 x i32], [612 x i32] addrspace(3)* @"\01?uwVelocityCache@@3PAIA", i32 0, i32 %227
  store i32 %382, i32 addrspace(3)* %383, align 4, !tbaa !39
  %384 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %16, i32 428)  ; CBufferLoadLegacy(handle,regIndex)
  %385 = extractvalue %dx.types.CBufRet.i32 %384, 2
  %386 = uitofp i32 %385 to float
  %387 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 429)  ; CBufferLoadLegacy(handle,regIndex)
  %388 = extractvalue %dx.types.CBufRet.f32 %387, 3
  %389 = fmul fast float %388, %255
  %390 = fmul fast float %388, %256
  %391 = call float @dx.op.unary.f32(i32 22, float %389)  ; Frc(value)
  %392 = call float @dx.op.unary.f32(i32 22, float %390)  ; Frc(value)
  %393 = fmul fast float %391, %386
  %394 = fmul fast float %392, %386
  %395 = fptoui float %393 to i32
  %396 = fptoui float %394 to i32
  %397 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %5, i32 0, i32 %395, i32 %396, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %398 = extractvalue %dx.types.ResRet.i32 %397, 0
  %399 = getelementptr [612 x i32], [612 x i32] addrspace(3)* @"\01?maskCache@@3PAIA", i32 0, i32 %227
  store i32 %398, i32 addrspace(3)* %399, align 4, !tbaa !39
  br label %400

; <label>:400                                     ; preds = %229, %226
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %401 = icmp ult i32 %17, 528
  br i1 %401, label %402, label %535, !dx.controlflow.hints !41

; <label>:402                                     ; preds = %400
  %403 = urem i32 %17, 33
  %404 = udiv i32 %17, 33
  %405 = add nuw nsw i32 %403, 35
  %406 = mul i32 %404, 34
  %407 = add i32 %405, %406
  %408 = getelementptr [612 x i32], [612 x i32] addrspace(3)* @"\01?maskCache@@3PAIA", i32 0, i32 %407
  %409 = load i32, i32 addrspace(3)* %408, align 4, !tbaa !39
  %410 = add i32 %407, -1
  %411 = getelementptr [612 x i32], [612 x i32] addrspace(3)* @"\01?maskCache@@3PAIA", i32 0, i32 %410
  %412 = load i32, i32 addrspace(3)* %411, align 4, !tbaa !39
  %413 = getelementptr [612 x i32], [612 x i32] addrspace(3)* @"\01?uwVelocityCache@@3PAIA", i32 0, i32 %407
  %414 = load i32, i32 addrspace(3)* %413, align 4, !tbaa !39
  %415 = lshr i32 %414, 16
  %416 = call float @dx.op.legacyF16ToF32(i32 131, i32 %415)  ; LegacyF16ToF32(value)
  %417 = or i32 %412, %409
  %418 = icmp eq i32 %417, 0
  br i1 %418, label %419, label %496, !dx.controlflow.hints !42

; <label>:419                                     ; preds = %402
  %420 = and i32 %414, 65535
  %421 = call float @dx.op.legacyF16ToF32(i32 131, i32 %420)  ; LegacyF16ToF32(value)
  %422 = add i32 %407, 34
  %423 = getelementptr [612 x i32], [612 x i32] addrspace(3)* @"\01?uwVelocityCache@@3PAIA", i32 0, i32 %422
  %424 = load i32, i32 addrspace(3)* %423, align 4, !tbaa !39
  %425 = and i32 %424, 65535
  %426 = call float @dx.op.legacyF16ToF32(i32 131, i32 %425)  ; LegacyF16ToF32(value)
  %427 = fadd fast float %426, %421
  %428 = getelementptr [612 x i32], [612 x i32] addrspace(3)* @"\01?uwVelocityCache@@3PAIA", i32 0, i32 %410
  %429 = load i32, i32 addrspace(3)* %428, align 4, !tbaa !39
  %430 = and i32 %429, 65535
  %431 = call float @dx.op.legacyF16ToF32(i32 131, i32 %430)  ; LegacyF16ToF32(value)
  %432 = fadd fast float %427, %431
  %433 = add i32 %407, 33
  %434 = getelementptr [612 x i32], [612 x i32] addrspace(3)* @"\01?uwVelocityCache@@3PAIA", i32 0, i32 %433
  %435 = load i32, i32 addrspace(3)* %434, align 4, !tbaa !39
  %436 = and i32 %435, 65535
  %437 = call float @dx.op.legacyF16ToF32(i32 131, i32 %436)  ; LegacyF16ToF32(value)
  %438 = fadd fast float %432, %437
  %439 = add nuw nsw i32 %404, %49
  %440 = add nuw nsw i32 %403, %48
  %441 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %442 = extractvalue %dx.types.CBufRet.f32 %441, 3
  %443 = sitofp i32 %440 to float
  %444 = sitofp i32 %439 to float
  %445 = fadd fast float %444, 5.000000e-01
  %446 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 429)  ; CBufferLoadLegacy(handle,regIndex)
  %447 = extractvalue %dx.types.CBufRet.f32 %446, 3
  %448 = fmul fast float %447, %443
  %449 = fmul fast float %447, %445
  %450 = fadd fast float %448, -5.000000e-01
  %451 = fadd fast float %449, -5.000000e-01
  %452 = extractvalue %dx.types.CBufRet.f32 %446, 1
  %453 = fmul fast float %450, %452
  %454 = fmul fast float %451, %452
  %455 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 430)  ; CBufferLoadLegacy(handle,regIndex)
  %456 = extractvalue %dx.types.CBufRet.f32 %455, 0
  %457 = fadd fast float %453, %456
  %458 = fmul fast float %442, 5.000000e-01
  %459 = fmul fast float %416, 0x4043AF5EC0000000
  %460 = fmul fast float %459, %458
  %461 = fmul fast float %438, 0x4023AF5EC0000000
  %462 = fmul fast float %461, %458
  %463 = fsub fast float %457, %460
  %464 = fsub fast float %463, %456
  %465 = fsub fast float %454, %462
  %466 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 435)  ; CBufferLoadLegacy(handle,regIndex)
  %467 = extractvalue %dx.types.CBufRet.f32 %466, 2
  %468 = fmul fast float %464, %467
  %469 = fmul fast float %465, %467
  %470 = fadd fast float %468, 5.000000e-01
  %471 = fadd fast float %469, 5.000000e-01
  %472 = call float @dx.op.unary.f32(i32 22, float %470)  ; Frc(value)
  %473 = call float @dx.op.unary.f32(i32 22, float %471)  ; Frc(value)
  %474 = fmul fast float %447, 5.000000e-01
  %475 = fadd fast float %474, %472
  %476 = fadd fast float %474, %473
  %477 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %14, float %475, float %473, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %478 = extractvalue %dx.types.ResRet.f32 %477, 0
  %479 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %14, float %472, float %476, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %480 = extractvalue %dx.types.ResRet.f32 %479, 0
  %481 = fmul fast float %442, 0x4043AF5EC0000000
  %482 = fmul fast float %481, %478
  %483 = fmul fast float %481, %480
  %484 = fsub fast float %457, %482
  %485 = fsub fast float %484, %456
  %486 = fsub fast float %454, %483
  %487 = fmul fast float %485, %467
  %488 = fmul fast float %486, %467
  %489 = fadd fast float %487, 5.000000e-01
  %490 = fadd fast float %488, 5.000000e-01
  %491 = call float @dx.op.unary.f32(i32 22, float %489)  ; Frc(value)
  %492 = call float @dx.op.unary.f32(i32 22, float %490)  ; Frc(value)
  %493 = fadd fast float %474, %491
  %494 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %14, float %493, float %492, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %495 = extractvalue %dx.types.ResRet.f32 %494, 0
  br label %496

; <label>:496                                     ; preds = %419, %402
  %497 = phi float [ %495, %419 ], [ %416, %402 ]
  %498 = icmp eq i32 %409, 1
  %499 = icmp eq i32 %412, 0
  %500 = and i1 %498, %499
  %501 = icmp eq i32 %409, 0
  %502 = icmp eq i32 %412, 1
  %503 = and i1 %501, %502
  %504 = or i1 %500, %503
  %505 = getelementptr [528 x float], [528 x float] addrspace(3)* @"\01?updatedUVelocity@@3PAMA", i32 0, i32 %17
  br i1 %504, label %534, label %506, !dx.controlflow.hints !43

; <label>:506                                     ; preds = %496
  %507 = icmp ne i32 %412, 0
  %508 = and i1 %498, %507
  %509 = icmp eq i32 %409, 2
  %510 = or i1 %509, %508
  %511 = add i32 %409, -3
  %512 = icmp ult i32 %511, 2
  %513 = or i1 %512, %510
  %514 = icmp eq i32 %412, 3
  %515 = or i1 %514, %513
  br i1 %515, label %533, label %516, !dx.controlflow.hints !44

; <label>:516                                     ; preds = %506
  %517 = getelementptr [612 x float], [612 x float] addrspace(3)* @"\01?advectedDepth@@3PAMA", i32 0, i32 %407
  %518 = load float, float addrspace(3)* %517, align 4, !tbaa !35
  %519 = getelementptr [612 x float], [612 x float] addrspace(3)* @"\01?advectedDepth@@3PAMA", i32 0, i32 %410
  %520 = load float, float addrspace(3)* %519, align 4, !tbaa !35
  %521 = fsub fast float %518, %520
  %522 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 431)  ; CBufferLoadLegacy(handle,regIndex)
  %523 = extractvalue %dx.types.CBufRet.f32 %522, 0
  %524 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 429)  ; CBufferLoadLegacy(handle,regIndex)
  %525 = extractvalue %dx.types.CBufRet.f32 %524, 0
  %526 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %527 = extractvalue %dx.types.CBufRet.f32 %526, 3
  %528 = fmul fast float %521, 0x40239EB860000000
  %529 = fmul fast float %528, %523
  %530 = fmul fast float %529, %525
  %531 = fmul fast float %530, %527
  %532 = fsub fast float %497, %531
  store float %532, float addrspace(3)* %505, align 4, !tbaa !35
  br label %535

; <label>:533                                     ; preds = %506
  store float 0.000000e+00, float addrspace(3)* %505, align 4, !tbaa !35
  br label %535

; <label>:534                                     ; preds = %496
  store float %497, float addrspace(3)* %505, align 4, !tbaa !35
  br label %535

; <label>:535                                     ; preds = %534, %533, %516, %400
  %536 = icmp ult i32 %227, 528
  br i1 %536, label %537, label %670, !dx.controlflow.hints !41

; <label>:537                                     ; preds = %535
  %538 = urem i32 %227, 33
  %539 = udiv i32 %227, 33
  %540 = add nuw nsw i32 %538, 35
  %541 = mul i32 %539, 34
  %542 = add i32 %540, %541
  %543 = getelementptr [612 x i32], [612 x i32] addrspace(3)* @"\01?maskCache@@3PAIA", i32 0, i32 %542
  %544 = load i32, i32 addrspace(3)* %543, align 4, !tbaa !39
  %545 = add i32 %542, -1
  %546 = getelementptr [612 x i32], [612 x i32] addrspace(3)* @"\01?maskCache@@3PAIA", i32 0, i32 %545
  %547 = load i32, i32 addrspace(3)* %546, align 4, !tbaa !39
  %548 = getelementptr [612 x i32], [612 x i32] addrspace(3)* @"\01?uwVelocityCache@@3PAIA", i32 0, i32 %542
  %549 = load i32, i32 addrspace(3)* %548, align 4, !tbaa !39
  %550 = lshr i32 %549, 16
  %551 = call float @dx.op.legacyF16ToF32(i32 131, i32 %550)  ; LegacyF16ToF32(value)
  %552 = or i32 %547, %544
  %553 = icmp eq i32 %552, 0
  br i1 %553, label %554, label %631, !dx.controlflow.hints !42

; <label>:554                                     ; preds = %537
  %555 = and i32 %549, 65535
  %556 = call float @dx.op.legacyF16ToF32(i32 131, i32 %555)  ; LegacyF16ToF32(value)
  %557 = add i32 %542, 34
  %558 = getelementptr [612 x i32], [612 x i32] addrspace(3)* @"\01?uwVelocityCache@@3PAIA", i32 0, i32 %557
  %559 = load i32, i32 addrspace(3)* %558, align 4, !tbaa !39
  %560 = and i32 %559, 65535
  %561 = call float @dx.op.legacyF16ToF32(i32 131, i32 %560)  ; LegacyF16ToF32(value)
  %562 = fadd fast float %561, %556
  %563 = getelementptr [612 x i32], [612 x i32] addrspace(3)* @"\01?uwVelocityCache@@3PAIA", i32 0, i32 %545
  %564 = load i32, i32 addrspace(3)* %563, align 4, !tbaa !39
  %565 = and i32 %564, 65535
  %566 = call float @dx.op.legacyF16ToF32(i32 131, i32 %565)  ; LegacyF16ToF32(value)
  %567 = fadd fast float %562, %566
  %568 = add i32 %542, 33
  %569 = getelementptr [612 x i32], [612 x i32] addrspace(3)* @"\01?uwVelocityCache@@3PAIA", i32 0, i32 %568
  %570 = load i32, i32 addrspace(3)* %569, align 4, !tbaa !39
  %571 = and i32 %570, 65535
  %572 = call float @dx.op.legacyF16ToF32(i32 131, i32 %571)  ; LegacyF16ToF32(value)
  %573 = fadd fast float %567, %572
  %574 = add nuw nsw i32 %539, %49
  %575 = add nuw nsw i32 %538, %48
  %576 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %577 = extractvalue %dx.types.CBufRet.f32 %576, 3
  %578 = sitofp i32 %575 to float
  %579 = sitofp i32 %574 to float
  %580 = fadd fast float %579, 5.000000e-01
  %581 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 429)  ; CBufferLoadLegacy(handle,regIndex)
  %582 = extractvalue %dx.types.CBufRet.f32 %581, 3
  %583 = fmul fast float %582, %578
  %584 = fmul fast float %582, %580
  %585 = fadd fast float %583, -5.000000e-01
  %586 = fadd fast float %584, -5.000000e-01
  %587 = extractvalue %dx.types.CBufRet.f32 %581, 1
  %588 = fmul fast float %585, %587
  %589 = fmul fast float %586, %587
  %590 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 430)  ; CBufferLoadLegacy(handle,regIndex)
  %591 = extractvalue %dx.types.CBufRet.f32 %590, 0
  %592 = fadd fast float %588, %591
  %593 = fmul fast float %577, 5.000000e-01
  %594 = fmul fast float %551, 0x4043AF5EC0000000
  %595 = fmul fast float %594, %593
  %596 = fmul fast float %573, 0x4023AF5EC0000000
  %597 = fmul fast float %596, %593
  %598 = fsub fast float %592, %595
  %599 = fsub fast float %598, %591
  %600 = fsub fast float %589, %597
  %601 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 435)  ; CBufferLoadLegacy(handle,regIndex)
  %602 = extractvalue %dx.types.CBufRet.f32 %601, 2
  %603 = fmul fast float %599, %602
  %604 = fmul fast float %600, %602
  %605 = fadd fast float %603, 5.000000e-01
  %606 = fadd fast float %604, 5.000000e-01
  %607 = call float @dx.op.unary.f32(i32 22, float %605)  ; Frc(value)
  %608 = call float @dx.op.unary.f32(i32 22, float %606)  ; Frc(value)
  %609 = fmul fast float %582, 5.000000e-01
  %610 = fadd fast float %609, %607
  %611 = fadd fast float %609, %608
  %612 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %14, float %610, float %608, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %613 = extractvalue %dx.types.ResRet.f32 %612, 0
  %614 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %14, float %607, float %611, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %615 = extractvalue %dx.types.ResRet.f32 %614, 0
  %616 = fmul fast float %577, 0x4043AF5EC0000000
  %617 = fmul fast float %616, %613
  %618 = fmul fast float %616, %615
  %619 = fsub fast float %592, %617
  %620 = fsub fast float %619, %591
  %621 = fsub fast float %589, %618
  %622 = fmul fast float %620, %602
  %623 = fmul fast float %621, %602
  %624 = fadd fast float %622, 5.000000e-01
  %625 = fadd fast float %623, 5.000000e-01
  %626 = call float @dx.op.unary.f32(i32 22, float %624)  ; Frc(value)
  %627 = call float @dx.op.unary.f32(i32 22, float %625)  ; Frc(value)
  %628 = fadd fast float %609, %626
  %629 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %14, float %628, float %627, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %630 = extractvalue %dx.types.ResRet.f32 %629, 0
  br label %631

; <label>:631                                     ; preds = %554, %537
  %632 = phi float [ %630, %554 ], [ %551, %537 ]
  %633 = icmp eq i32 %544, 1
  %634 = icmp eq i32 %547, 0
  %635 = and i1 %633, %634
  %636 = icmp eq i32 %544, 0
  %637 = icmp eq i32 %547, 1
  %638 = and i1 %636, %637
  %639 = or i1 %635, %638
  %640 = getelementptr [528 x float], [528 x float] addrspace(3)* @"\01?updatedUVelocity@@3PAMA", i32 0, i32 %227
  br i1 %639, label %669, label %641, !dx.controlflow.hints !43

; <label>:641                                     ; preds = %631
  %642 = icmp ne i32 %547, 0
  %643 = and i1 %633, %642
  %644 = icmp eq i32 %544, 2
  %645 = or i1 %644, %643
  %646 = add i32 %544, -3
  %647 = icmp ult i32 %646, 2
  %648 = or i1 %647, %645
  %649 = icmp eq i32 %547, 3
  %650 = or i1 %649, %648
  br i1 %650, label %668, label %651, !dx.controlflow.hints !44

; <label>:651                                     ; preds = %641
  %652 = getelementptr [612 x float], [612 x float] addrspace(3)* @"\01?advectedDepth@@3PAMA", i32 0, i32 %542
  %653 = load float, float addrspace(3)* %652, align 4, !tbaa !35
  %654 = getelementptr [612 x float], [612 x float] addrspace(3)* @"\01?advectedDepth@@3PAMA", i32 0, i32 %545
  %655 = load float, float addrspace(3)* %654, align 4, !tbaa !35
  %656 = fsub fast float %653, %655
  %657 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 431)  ; CBufferLoadLegacy(handle,regIndex)
  %658 = extractvalue %dx.types.CBufRet.f32 %657, 0
  %659 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 429)  ; CBufferLoadLegacy(handle,regIndex)
  %660 = extractvalue %dx.types.CBufRet.f32 %659, 0
  %661 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %662 = extractvalue %dx.types.CBufRet.f32 %661, 3
  %663 = fmul fast float %656, 0x40239EB860000000
  %664 = fmul fast float %663, %658
  %665 = fmul fast float %664, %660
  %666 = fmul fast float %665, %662
  %667 = fsub fast float %632, %666
  store float %667, float addrspace(3)* %640, align 4, !tbaa !35
  br label %670

; <label>:668                                     ; preds = %641
  store float 0.000000e+00, float addrspace(3)* %640, align 4, !tbaa !35
  br label %670

; <label>:669                                     ; preds = %631
  store float %632, float addrspace(3)* %640, align 4, !tbaa !35
  br label %670

; <label>:670                                     ; preds = %669, %668, %651, %535
  %671 = icmp ult i32 %17, 544
  br i1 %671, label %672, label %801, !dx.controlflow.hints !45

; <label>:672                                     ; preds = %670
  %673 = add nuw nsw i32 %50, 35
  %674 = mul i32 %51, 34
  %675 = add i32 %673, %674
  %676 = getelementptr [612 x i32], [612 x i32] addrspace(3)* @"\01?maskCache@@3PAIA", i32 0, i32 %675
  %677 = load i32, i32 addrspace(3)* %676, align 4, !tbaa !39
  %678 = add i32 %675, -34
  %679 = getelementptr [612 x i32], [612 x i32] addrspace(3)* @"\01?maskCache@@3PAIA", i32 0, i32 %678
  %680 = load i32, i32 addrspace(3)* %679, align 4, !tbaa !39
  %681 = getelementptr [612 x i32], [612 x i32] addrspace(3)* @"\01?uwVelocityCache@@3PAIA", i32 0, i32 %675
  %682 = load i32, i32 addrspace(3)* %681, align 4, !tbaa !39
  %683 = and i32 %682, 65535
  %684 = call float @dx.op.legacyF16ToF32(i32 131, i32 %683)  ; LegacyF16ToF32(value)
  %685 = or i32 %680, %677
  %686 = icmp eq i32 %685, 0
  br i1 %686, label %687, label %762, !dx.controlflow.hints !46

; <label>:687                                     ; preds = %672
  %688 = lshr i32 %682, 16
  %689 = call float @dx.op.legacyF16ToF32(i32 131, i32 %688)  ; LegacyF16ToF32(value)
  %690 = add i32 %675, 1
  %691 = getelementptr [612 x i32], [612 x i32] addrspace(3)* @"\01?uwVelocityCache@@3PAIA", i32 0, i32 %690
  %692 = load i32, i32 addrspace(3)* %691, align 4, !tbaa !39
  %693 = lshr i32 %692, 16
  %694 = call float @dx.op.legacyF16ToF32(i32 131, i32 %693)  ; LegacyF16ToF32(value)
  %695 = fadd fast float %694, %689
  %696 = getelementptr [612 x i32], [612 x i32] addrspace(3)* @"\01?uwVelocityCache@@3PAIA", i32 0, i32 %678
  %697 = load i32, i32 addrspace(3)* %696, align 4, !tbaa !39
  %698 = lshr i32 %697, 16
  %699 = call float @dx.op.legacyF16ToF32(i32 131, i32 %698)  ; LegacyF16ToF32(value)
  %700 = fadd fast float %695, %699
  %701 = add i32 %675, -33
  %702 = getelementptr [612 x i32], [612 x i32] addrspace(3)* @"\01?uwVelocityCache@@3PAIA", i32 0, i32 %701
  %703 = load i32, i32 addrspace(3)* %702, align 4, !tbaa !39
  %704 = lshr i32 %703, 16
  %705 = call float @dx.op.legacyF16ToF32(i32 131, i32 %704)  ; LegacyF16ToF32(value)
  %706 = fadd fast float %700, %705
  %707 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %708 = extractvalue %dx.types.CBufRet.f32 %707, 3
  %709 = sitofp i32 %52 to float
  %710 = sitofp i32 %53 to float
  %711 = fadd fast float %709, 5.000000e-01
  %712 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 429)  ; CBufferLoadLegacy(handle,regIndex)
  %713 = extractvalue %dx.types.CBufRet.f32 %712, 3
  %714 = fmul fast float %713, %711
  %715 = fmul fast float %713, %710
  %716 = fadd fast float %714, -5.000000e-01
  %717 = fadd fast float %715, -5.000000e-01
  %718 = extractvalue %dx.types.CBufRet.f32 %712, 1
  %719 = fmul fast float %716, %718
  %720 = fmul fast float %717, %718
  %721 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 430)  ; CBufferLoadLegacy(handle,regIndex)
  %722 = extractvalue %dx.types.CBufRet.f32 %721, 0
  %723 = fadd fast float %719, %722
  %724 = fmul fast float %708, 5.000000e-01
  %725 = fmul fast float %706, 0x4023AF5EC0000000
  %726 = fmul fast float %725, %724
  %727 = fmul fast float %684, 0x4043AF5EC0000000
  %728 = fmul fast float %727, %724
  %729 = fsub fast float %723, %726
  %730 = fsub fast float %729, %722
  %731 = fsub fast float %720, %728
  %732 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 435)  ; CBufferLoadLegacy(handle,regIndex)
  %733 = extractvalue %dx.types.CBufRet.f32 %732, 2
  %734 = fmul fast float %730, %733
  %735 = fmul fast float %731, %733
  %736 = fadd fast float %734, 5.000000e-01
  %737 = fadd fast float %735, 5.000000e-01
  %738 = call float @dx.op.unary.f32(i32 22, float %736)  ; Frc(value)
  %739 = call float @dx.op.unary.f32(i32 22, float %737)  ; Frc(value)
  %740 = fmul fast float %713, 5.000000e-01
  %741 = fadd fast float %740, %738
  %742 = fadd fast float %740, %739
  %743 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %14, float %741, float %739, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %744 = extractvalue %dx.types.ResRet.f32 %743, 0
  %745 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %14, float %738, float %742, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %746 = extractvalue %dx.types.ResRet.f32 %745, 0
  %747 = fmul fast float %708, 0x4043AF5EC0000000
  %748 = fmul fast float %747, %744
  %749 = fmul fast float %747, %746
  %750 = fsub fast float %723, %748
  %751 = fsub fast float %750, %722
  %752 = fsub fast float %720, %749
  %753 = fmul fast float %751, %733
  %754 = fmul fast float %752, %733
  %755 = fadd fast float %753, 5.000000e-01
  %756 = fadd fast float %754, 5.000000e-01
  %757 = call float @dx.op.unary.f32(i32 22, float %755)  ; Frc(value)
  %758 = call float @dx.op.unary.f32(i32 22, float %756)  ; Frc(value)
  %759 = fadd fast float %740, %758
  %760 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %14, float %757, float %759, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %761 = extractvalue %dx.types.ResRet.f32 %760, 0
  br label %762

; <label>:762                                     ; preds = %687, %672
  %763 = phi float [ %761, %687 ], [ %684, %672 ]
  %764 = icmp eq i32 %677, 1
  %765 = icmp eq i32 %680, 0
  %766 = and i1 %764, %765
  %767 = icmp eq i32 %677, 0
  %768 = icmp eq i32 %680, 1
  %769 = and i1 %767, %768
  %770 = or i1 %766, %769
  %771 = getelementptr [544 x float], [544 x float] addrspace(3)* @"\01?updatedWVelocity@@3PAMA", i32 0, i32 %17
  br i1 %770, label %800, label %772, !dx.controlflow.hints !47

; <label>:772                                     ; preds = %762
  %773 = icmp ne i32 %680, 0
  %774 = and i1 %764, %773
  %775 = icmp eq i32 %677, 2
  %776 = or i1 %775, %774
  %777 = add i32 %677, -3
  %778 = icmp ult i32 %777, 2
  %779 = or i1 %778, %776
  %780 = icmp eq i32 %680, 3
  %781 = or i1 %780, %779
  br i1 %781, label %799, label %782, !dx.controlflow.hints !48

; <label>:782                                     ; preds = %772
  %783 = getelementptr [612 x float], [612 x float] addrspace(3)* @"\01?advectedDepth@@3PAMA", i32 0, i32 %675
  %784 = load float, float addrspace(3)* %783, align 4, !tbaa !35
  %785 = getelementptr [612 x float], [612 x float] addrspace(3)* @"\01?advectedDepth@@3PAMA", i32 0, i32 %678
  %786 = load float, float addrspace(3)* %785, align 4, !tbaa !35
  %787 = fsub fast float %784, %786
  %788 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 431)  ; CBufferLoadLegacy(handle,regIndex)
  %789 = extractvalue %dx.types.CBufRet.f32 %788, 0
  %790 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 429)  ; CBufferLoadLegacy(handle,regIndex)
  %791 = extractvalue %dx.types.CBufRet.f32 %790, 0
  %792 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %793 = extractvalue %dx.types.CBufRet.f32 %792, 3
  %794 = fmul fast float %787, 0x40239EB860000000
  %795 = fmul fast float %794, %789
  %796 = fmul fast float %795, %791
  %797 = fmul fast float %796, %793
  %798 = fsub fast float %763, %797
  store float %798, float addrspace(3)* %771, align 4, !tbaa !35
  br label %801

; <label>:799                                     ; preds = %772
  store float 0.000000e+00, float addrspace(3)* %771, align 4, !tbaa !35
  br label %801

; <label>:800                                     ; preds = %762
  store float %763, float addrspace(3)* %771, align 4, !tbaa !35
  br label %801

; <label>:801                                     ; preds = %800, %799, %782, %670
  %802 = icmp ult i32 %227, 544
  br i1 %802, label %803, label %936, !dx.controlflow.hints !45

; <label>:803                                     ; preds = %801
  %804 = and i32 %227, 31
  %805 = lshr i32 %227, 5
  %806 = add nuw nsw i32 %804, 35
  %807 = mul i32 %805, 34
  %808 = add i32 %806, %807
  %809 = getelementptr [612 x i32], [612 x i32] addrspace(3)* @"\01?maskCache@@3PAIA", i32 0, i32 %808
  %810 = load i32, i32 addrspace(3)* %809, align 4, !tbaa !39
  %811 = add i32 %808, -34
  %812 = getelementptr [612 x i32], [612 x i32] addrspace(3)* @"\01?maskCache@@3PAIA", i32 0, i32 %811
  %813 = load i32, i32 addrspace(3)* %812, align 4, !tbaa !39
  %814 = getelementptr [612 x i32], [612 x i32] addrspace(3)* @"\01?uwVelocityCache@@3PAIA", i32 0, i32 %808
  %815 = load i32, i32 addrspace(3)* %814, align 4, !tbaa !39
  %816 = and i32 %815, 65535
  %817 = call float @dx.op.legacyF16ToF32(i32 131, i32 %816)  ; LegacyF16ToF32(value)
  %818 = or i32 %813, %810
  %819 = icmp eq i32 %818, 0
  br i1 %819, label %820, label %897, !dx.controlflow.hints !46

; <label>:820                                     ; preds = %803
  %821 = lshr i32 %815, 16
  %822 = call float @dx.op.legacyF16ToF32(i32 131, i32 %821)  ; LegacyF16ToF32(value)
  %823 = add i32 %808, 1
  %824 = getelementptr [612 x i32], [612 x i32] addrspace(3)* @"\01?uwVelocityCache@@3PAIA", i32 0, i32 %823
  %825 = load i32, i32 addrspace(3)* %824, align 4, !tbaa !39
  %826 = lshr i32 %825, 16
  %827 = call float @dx.op.legacyF16ToF32(i32 131, i32 %826)  ; LegacyF16ToF32(value)
  %828 = fadd fast float %827, %822
  %829 = getelementptr [612 x i32], [612 x i32] addrspace(3)* @"\01?uwVelocityCache@@3PAIA", i32 0, i32 %811
  %830 = load i32, i32 addrspace(3)* %829, align 4, !tbaa !39
  %831 = lshr i32 %830, 16
  %832 = call float @dx.op.legacyF16ToF32(i32 131, i32 %831)  ; LegacyF16ToF32(value)
  %833 = fadd fast float %828, %832
  %834 = add i32 %808, -33
  %835 = getelementptr [612 x i32], [612 x i32] addrspace(3)* @"\01?uwVelocityCache@@3PAIA", i32 0, i32 %834
  %836 = load i32, i32 addrspace(3)* %835, align 4, !tbaa !39
  %837 = lshr i32 %836, 16
  %838 = call float @dx.op.legacyF16ToF32(i32 131, i32 %837)  ; LegacyF16ToF32(value)
  %839 = fadd fast float %833, %838
  %840 = add nuw nsw i32 %49, %805
  %841 = or i32 %48, %804
  %842 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %843 = extractvalue %dx.types.CBufRet.f32 %842, 3
  %844 = sitofp i32 %841 to float
  %845 = sitofp i32 %840 to float
  %846 = fadd fast float %844, 5.000000e-01
  %847 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 429)  ; CBufferLoadLegacy(handle,regIndex)
  %848 = extractvalue %dx.types.CBufRet.f32 %847, 3
  %849 = fmul fast float %848, %846
  %850 = fmul fast float %848, %845
  %851 = fadd fast float %849, -5.000000e-01
  %852 = fadd fast float %850, -5.000000e-01
  %853 = extractvalue %dx.types.CBufRet.f32 %847, 1
  %854 = fmul fast float %851, %853
  %855 = fmul fast float %852, %853
  %856 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 430)  ; CBufferLoadLegacy(handle,regIndex)
  %857 = extractvalue %dx.types.CBufRet.f32 %856, 0
  %858 = fadd fast float %854, %857
  %859 = fmul fast float %843, 5.000000e-01
  %860 = fmul fast float %839, 0x4023AF5EC0000000
  %861 = fmul fast float %860, %859
  %862 = fmul fast float %817, 0x4043AF5EC0000000
  %863 = fmul fast float %862, %859
  %864 = fsub fast float %858, %861
  %865 = fsub fast float %864, %857
  %866 = fsub fast float %855, %863
  %867 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 435)  ; CBufferLoadLegacy(handle,regIndex)
  %868 = extractvalue %dx.types.CBufRet.f32 %867, 2
  %869 = fmul fast float %865, %868
  %870 = fmul fast float %866, %868
  %871 = fadd fast float %869, 5.000000e-01
  %872 = fadd fast float %870, 5.000000e-01
  %873 = call float @dx.op.unary.f32(i32 22, float %871)  ; Frc(value)
  %874 = call float @dx.op.unary.f32(i32 22, float %872)  ; Frc(value)
  %875 = fmul fast float %848, 5.000000e-01
  %876 = fadd fast float %875, %873
  %877 = fadd fast float %875, %874
  %878 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %14, float %876, float %874, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %879 = extractvalue %dx.types.ResRet.f32 %878, 0
  %880 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %14, float %873, float %877, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %881 = extractvalue %dx.types.ResRet.f32 %880, 0
  %882 = fmul fast float %843, 0x4043AF5EC0000000
  %883 = fmul fast float %882, %879
  %884 = fmul fast float %882, %881
  %885 = fsub fast float %858, %883
  %886 = fsub fast float %885, %857
  %887 = fsub fast float %855, %884
  %888 = fmul fast float %886, %868
  %889 = fmul fast float %887, %868
  %890 = fadd fast float %888, 5.000000e-01
  %891 = fadd fast float %889, 5.000000e-01
  %892 = call float @dx.op.unary.f32(i32 22, float %890)  ; Frc(value)
  %893 = call float @dx.op.unary.f32(i32 22, float %891)  ; Frc(value)
  %894 = fadd fast float %875, %893
  %895 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %14, float %892, float %894, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %896 = extractvalue %dx.types.ResRet.f32 %895, 0
  br label %897

; <label>:897                                     ; preds = %820, %803
  %898 = phi float [ %896, %820 ], [ %817, %803 ]
  %899 = icmp eq i32 %810, 1
  %900 = icmp eq i32 %813, 0
  %901 = and i1 %899, %900
  %902 = icmp eq i32 %810, 0
  %903 = icmp eq i32 %813, 1
  %904 = and i1 %902, %903
  %905 = or i1 %901, %904
  %906 = getelementptr [544 x float], [544 x float] addrspace(3)* @"\01?updatedWVelocity@@3PAMA", i32 0, i32 %227
  br i1 %905, label %935, label %907, !dx.controlflow.hints !47

; <label>:907                                     ; preds = %897
  %908 = icmp ne i32 %813, 0
  %909 = and i1 %899, %908
  %910 = icmp eq i32 %810, 2
  %911 = or i1 %910, %909
  %912 = add i32 %810, -3
  %913 = icmp ult i32 %912, 2
  %914 = or i1 %913, %911
  %915 = icmp eq i32 %813, 3
  %916 = or i1 %915, %914
  br i1 %916, label %934, label %917, !dx.controlflow.hints !48

; <label>:917                                     ; preds = %907
  %918 = getelementptr [612 x float], [612 x float] addrspace(3)* @"\01?advectedDepth@@3PAMA", i32 0, i32 %808
  %919 = load float, float addrspace(3)* %918, align 4, !tbaa !35
  %920 = getelementptr [612 x float], [612 x float] addrspace(3)* @"\01?advectedDepth@@3PAMA", i32 0, i32 %811
  %921 = load float, float addrspace(3)* %920, align 4, !tbaa !35
  %922 = fsub fast float %919, %921
  %923 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 431)  ; CBufferLoadLegacy(handle,regIndex)
  %924 = extractvalue %dx.types.CBufRet.f32 %923, 0
  %925 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 429)  ; CBufferLoadLegacy(handle,regIndex)
  %926 = extractvalue %dx.types.CBufRet.f32 %925, 0
  %927 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %928 = extractvalue %dx.types.CBufRet.f32 %927, 3
  %929 = fmul fast float %922, 0x40239EB860000000
  %930 = fmul fast float %929, %924
  %931 = fmul fast float %930, %926
  %932 = fmul fast float %931, %928
  %933 = fsub fast float %898, %932
  store float %933, float addrspace(3)* %906, align 4, !tbaa !35
  br label %936

; <label>:934                                     ; preds = %907
  store float 0.000000e+00, float addrspace(3)* %906, align 4, !tbaa !35
  br label %936

; <label>:935                                     ; preds = %897
  store float %898, float addrspace(3)* %906, align 4, !tbaa !35
  br label %936

; <label>:936                                     ; preds = %935, %934, %917, %801
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %937 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %16, i32 428)  ; CBufferLoadLegacy(handle,regIndex)
  %938 = extractvalue %dx.types.CBufRet.i32 %937, 2
  %939 = icmp uge i32 %52, %938
  %940 = icmp uge i32 %53, %938
  %941 = or i1 %939, %940
  br i1 %941, label %1270, label %942, !dx.controlflow.hints !49

; <label>:942                                     ; preds = %936
  %943 = uitofp i32 %52 to float
  %944 = uitofp i32 %53 to float
  %945 = fadd fast float %943, 5.000000e-01
  %946 = fadd fast float %944, 5.000000e-01
  %947 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 429)  ; CBufferLoadLegacy(handle,regIndex)
  %948 = extractvalue %dx.types.CBufRet.f32 %947, 3
  %949 = fmul fast float %948, %945
  %950 = fmul fast float %948, %946
  %951 = fadd fast float %949, -5.000000e-01
  %952 = fadd fast float %950, -5.000000e-01
  %953 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 430)  ; CBufferLoadLegacy(handle,regIndex)
  %954 = extractvalue %dx.types.CBufRet.f32 %953, 0
  %955 = extractvalue %dx.types.CBufRet.f32 %953, 1
  %956 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 435)  ; CBufferLoadLegacy(handle,regIndex)
  %957 = extractvalue %dx.types.CBufRet.f32 %956, 2
  %958 = fmul fast float %957, %954
  %959 = fmul fast float %957, %955
  %960 = fsub fast float %951, %958
  %961 = fsub fast float %952, %959
  %962 = call float @dx.op.unary.f32(i32 22, float %960)  ; Frc(value)
  %963 = call float @dx.op.unary.f32(i32 22, float %961)  ; Frc(value)
  %964 = call float @dx.op.binary.f32(i32 36, float %962, float %963)  ; FMin(a,b)
  %965 = call float @dx.op.binary.f32(i32 35, float %962, float %963)  ; FMax(a,b)
  %966 = fsub fast float 1.000000e+00, %965
  %967 = call float @dx.op.binary.f32(i32 36, float %964, float %966)  ; FMin(a,b)
  %968 = mul i32 %51, 34
  %969 = add nuw nsw i32 %50, 35
  %970 = add i32 %969, %968
  %971 = getelementptr [612 x i32], [612 x i32] addrspace(3)* @"\01?maskCache@@3PAIA", i32 0, i32 %970
  %972 = load i32, i32 addrspace(3)* %971, align 4, !tbaa !39
  %973 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 434)  ; CBufferLoadLegacy(handle,regIndex)
  %974 = extractvalue %dx.types.CBufRet.f32 %973, 1
  %975 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 429)  ; CBufferLoadLegacy(handle,regIndex)
  %976 = extractvalue %dx.types.CBufRet.f32 %975, 3
  %977 = fsub fast float %974, %976
  %978 = fsub fast float %967, %976
  %979 = fdiv fast float %978, %977
  %980 = call float @dx.op.unary.f32(i32 7, float %979)  ; Saturate(value)
  %981 = fmul fast float %980, 2.000000e+00
  %982 = fsub fast float 3.000000e+00, %981
  %983 = fmul fast float %980, %980
  %984 = fmul fast float %983, %982
  %985 = mul i32 %51, 33
  %986 = add i32 %985, %50
  %987 = shl nuw i32 %51, 5
  %988 = or i32 %987, %50
  %989 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %15, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %990 = extractvalue %dx.types.CBufRet.i32 %989, 0
  %991 = extractvalue %dx.types.CBufRet.i32 %989, 1
  %992 = add i32 %991, -1
  %993 = icmp eq i32 %990, %992
  %994 = extractvalue %dx.types.CBufRet.f32 %975, 1
  %995 = fmul fast float %976, %943
  %996 = fmul fast float %976, %944
  %997 = fadd fast float %995, -5.000000e-01
  %998 = fadd fast float %996, -5.000000e-01
  %999 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 430)  ; CBufferLoadLegacy(handle,regIndex)
  %1000 = extractvalue %dx.types.CBufRet.f32 %999, 0
  %1001 = extractvalue %dx.types.CBufRet.f32 %999, 1
  %1002 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 435)  ; CBufferLoadLegacy(handle,regIndex)
  %1003 = extractvalue %dx.types.CBufRet.f32 %1002, 2
  %1004 = fmul fast float %1003, %1000
  %1005 = fmul fast float %1003, %1001
  %1006 = fsub fast float %997, %1004
  %1007 = fsub fast float %998, %1005
  %1008 = call float @dx.op.unary.f32(i32 22, float %1006)  ; Frc(value)
  %1009 = call float @dx.op.unary.f32(i32 22, float %1007)  ; Frc(value)
  %1010 = fmul fast float %1008, %994
  %1011 = fmul fast float %1009, %994
  %1012 = fadd fast float %1010, %1000
  %1013 = fadd fast float %1011, %1001
  %1014 = extractvalue %dx.types.CBufRet.f32 %999, 2
  %1015 = extractvalue %dx.types.CBufRet.f32 %999, 3
  %1016 = fsub fast float %1000, %1014
  %1017 = fsub fast float %1001, %1015
  %1018 = fmul fast float %976, %994
  %1019 = fcmp fast une float %1016, 0.000000e+00
  br i1 %1019, label %1020, label %1028, !dx.controlflow.hints !50

; <label>:1020                                    ; preds = %942
  %1021 = fcmp fast ogt float %1016, 0.000000e+00
  %1022 = fsub fast float %1018, %994
  %1023 = fadd fast float %1022, %1012
  %1024 = fcmp fast oge float %1023, %1014
  %1025 = fcmp fast ole float %1012, %1014
  %1026 = select i1 %1021, i1 %1024, i1 %1025
  %1027 = zext i1 %1026 to i32
  br label %1028

; <label>:1028                                    ; preds = %1020, %942
  %1029 = phi i32 [ %1027, %1020 ], [ 0, %942 ]
  %1030 = fcmp fast une float %1017, 0.000000e+00
  br i1 %1030, label %1031, label %1038, !dx.controlflow.hints !51

; <label>:1031                                    ; preds = %1028
  %1032 = fcmp fast ogt float %1017, 0.000000e+00
  %1033 = fsub fast float %1018, %994
  %1034 = fadd fast float %1033, %1013
  %1035 = fcmp fast oge float %1034, %1015
  %1036 = fcmp fast ole float %1013, %1015
  %1037 = select i1 %1032, i1 %1035, i1 %1036
  br label %1038

; <label>:1038                                    ; preds = %1031, %1028
  %1039 = phi i1 [ %1037, %1031 ], [ false, %1028 ]
  %1040 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %15, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %1041 = extractvalue %dx.types.CBufRet.i32 %1040, 1
  %1042 = or i32 %1041, %1029
  %1043 = icmp ne i32 %1042, 0
  %1044 = or i1 %1039, %1043
  %1045 = and i1 %993, %1044
  br i1 %1045, label %1046, label %1047, !dx.controlflow.hints !52

; <label>:1046                                    ; preds = %1038
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %4, i32 %52, i32 %53, i32 undef, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %3, i32 %52, i32 %53, i32 undef, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %52, i32 %53, i32 undef, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %52, i32 %53, i32 undef, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %1270

; <label>:1047                                    ; preds = %1038
  %1048 = getelementptr [528 x float], [528 x float] addrspace(3)* @"\01?updatedUVelocity@@3PAMA", i32 0, i32 %986
  %1049 = load float, float addrspace(3)* %1048, align 4, !tbaa !35
  %1050 = add nsw i32 %986, 1
  %1051 = getelementptr [528 x float], [528 x float] addrspace(3)* @"\01?updatedUVelocity@@3PAMA", i32 0, i32 %1050
  %1052 = load float, float addrspace(3)* %1051, align 4, !tbaa !35
  %1053 = add i32 %988, 32
  %1054 = getelementptr [544 x float], [544 x float] addrspace(3)* @"\01?updatedWVelocity@@3PAMA", i32 0, i32 %1053
  %1055 = load float, float addrspace(3)* %1054, align 4, !tbaa !35
  %1056 = getelementptr [544 x float], [544 x float] addrspace(3)* @"\01?updatedWVelocity@@3PAMA", i32 0, i32 %988
  %1057 = load float, float addrspace(3)* %1056, align 4, !tbaa !35
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %3, i32 %52, i32 %53, i32 undef, float %1049, float %1049, float %1049, float %1049, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %52, i32 %53, i32 undef, float %1057, float %1057, float %1057, float %1057, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br i1 %993, label %1058, label %1114, !dx.controlflow.hints !53

; <label>:1058                                    ; preds = %1047
  %1059 = fadd fast float %1052, %1049
  %1060 = fadd fast float %1057, %1055
  %1061 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %1062 = extractvalue %dx.types.CBufRet.f32 %1061, 3
  %1063 = sitofp i32 %52 to float
  %1064 = sitofp i32 %53 to float
  %1065 = fadd fast float %1063, 5.000000e-01
  %1066 = fadd fast float %1064, 5.000000e-01
  %1067 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 429)  ; CBufferLoadLegacy(handle,regIndex)
  %1068 = extractvalue %dx.types.CBufRet.f32 %1067, 3
  %1069 = fmul fast float %1068, %1065
  %1070 = fmul fast float %1068, %1066
  %1071 = fadd fast float %1069, -5.000000e-01
  %1072 = fadd fast float %1070, -5.000000e-01
  %1073 = extractvalue %dx.types.CBufRet.f32 %1067, 1
  %1074 = fmul fast float %1071, %1073
  %1075 = fmul fast float %1072, %1073
  %1076 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 430)  ; CBufferLoadLegacy(handle,regIndex)
  %1077 = extractvalue %dx.types.CBufRet.f32 %1076, 0
  %1078 = fadd fast float %1074, %1077
  %1079 = fmul fast float %1062, 5.000000e-01
  %1080 = fmul fast float %1059, 0x4033AF5EC0000000
  %1081 = fmul fast float %1080, %1079
  %1082 = fmul fast float %1060, 0x4033AF5EC0000000
  %1083 = fmul fast float %1082, %1079
  %1084 = fsub fast float %1078, %1081
  %1085 = fsub fast float %1084, %1077
  %1086 = fsub fast float %1075, %1083
  %1087 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 435)  ; CBufferLoadLegacy(handle,regIndex)
  %1088 = extractvalue %dx.types.CBufRet.f32 %1087, 2
  %1089 = fmul fast float %1085, %1088
  %1090 = fmul fast float %1086, %1088
  %1091 = fadd fast float %1089, 5.000000e-01
  %1092 = fadd fast float %1090, 5.000000e-01
  %1093 = call float @dx.op.unary.f32(i32 22, float %1091)  ; Frc(value)
  %1094 = call float @dx.op.unary.f32(i32 22, float %1092)  ; Frc(value)
  %1095 = fmul fast float %1068, 5.000000e-01
  %1096 = fadd fast float %1095, %1093
  %1097 = fadd fast float %1095, %1094
  %1098 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %14, float %1096, float %1094, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1099 = extractvalue %dx.types.ResRet.f32 %1098, 0
  %1100 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %14, float %1093, float %1097, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1101 = extractvalue %dx.types.ResRet.f32 %1100, 0
  %1102 = fmul fast float %1062, 0x4043AF5EC0000000
  %1103 = fmul fast float %1102, %1099
  %1104 = fmul fast float %1102, %1101
  %1105 = fsub fast float %1078, %1103
  %1106 = fsub fast float %1105, %1077
  %1107 = fsub fast float %1075, %1104
  %1108 = fmul fast float %1106, %1088
  %1109 = fmul fast float %1107, %1088
  %1110 = fadd fast float %1108, 5.000000e-01
  %1111 = fadd fast float %1109, 5.000000e-01
  %1112 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %14, float %1110, float %1111, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1113 = extractvalue %dx.types.ResRet.f32 %1112, 0
  br label %1114

; <label>:1114                                    ; preds = %1058, %1047
  %1115 = phi float [ %1113, %1058 ], [ undef, %1047 ]
  %1116 = icmp eq i32 %972, 0
  br i1 %1116, label %1117, label %1202, !dx.controlflow.hints !54

; <label>:1117                                    ; preds = %1114
  %1118 = fsub fast float %1052, %1049
  %1119 = fsub fast float %1055, %1057
  %1120 = fadd fast float %1119, %1118
  %1121 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 431)  ; CBufferLoadLegacy(handle,regIndex)
  %1122 = extractvalue %dx.types.CBufRet.f32 %1121, 0
  %1123 = fmul fast float %1122, %1120
  %1124 = getelementptr [612 x float], [612 x float] addrspace(3)* @"\01?advectedDepth@@3PAMA", i32 0, i32 %970
  %1125 = load float, float addrspace(3)* %1124, align 4, !tbaa !35
  %1126 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %1127 = extractvalue %dx.types.CBufRet.f32 %1126, 3
  %1128 = fmul fast float %1123, %1127
  %1129 = fsub fast float 1.000000e+00, %1128
  %1130 = fmul fast float %1129, %1125
  %1131 = call float @dx.op.binary.f32(i32 35, float %1130, float 0x3F1A36E2E0000000)  ; FMax(a,b)
  %1132 = call float @dx.op.binary.f32(i32 36, float %1131, float 0x3FEFFF2E40000000)  ; FMin(a,b)
  %1133 = fadd fast float %1132, -5.000000e-01
  %1134 = fmul fast float %1133, %984
  %1135 = fadd fast float %1134, 5.000000e-01
  br i1 %993, label %1136, label %1194, !dx.controlflow.hints !55

; <label>:1136                                    ; preds = %1117
  %1137 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 430)  ; CBufferLoadLegacy(handle,regIndex)
  %1138 = extractvalue %dx.types.CBufRet.f32 %1137, 0
  %1139 = extractvalue %dx.types.CBufRet.f32 %1137, 1
  %1140 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 435)  ; CBufferLoadLegacy(handle,regIndex)
  %1141 = extractvalue %dx.types.CBufRet.f32 %1140, 2
  %1142 = fmul fast float %1141, %1138
  %1143 = fmul fast float %1141, %1139
  %1144 = fsub fast float %951, %1142
  %1145 = fsub fast float %952, %1143
  %1146 = call float @dx.op.unary.f32(i32 22, float %1144)  ; Frc(value)
  %1147 = call float @dx.op.unary.f32(i32 22, float %1145)  ; Frc(value)
  %1148 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 367)  ; CBufferLoadLegacy(handle,regIndex)
  %1149 = extractvalue %dx.types.CBufRet.f32 %1148, 2
  %1150 = extractvalue %dx.types.CBufRet.f32 %1148, 3
  %1151 = fsub fast float %1149, %1138
  %1152 = fsub fast float %1150, %1139
  %1153 = fmul fast float %1151, %1141
  %1154 = fmul fast float %1152, %1141
  %1155 = fsub fast float %1146, %1153
  %1156 = fsub fast float %1147, %1154
  %1157 = fcmp fast oge float %1155, 0.000000e+00
  %1158 = fcmp fast oge float %1156, 0.000000e+00
  %1159 = and i1 %1157, %1158
  %1160 = fcmp fast olt float %1155, 1.000000e+00
  %1161 = fcmp fast olt float %1156, 1.000000e+00
  %1162 = and i1 %1160, %1161
  %1163 = and i1 %1159, %1162
  %1164 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %8, i32 0, i32 %52, i32 %53, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1165 = extractvalue %dx.types.ResRet.f32 %1164, 0
  %1166 = xor i1 %1163, true
  %1167 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %15, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %1168 = extractvalue %dx.types.CBufRet.i32 %1167, 1
  %1169 = icmp ne i32 %1168, 0
  %1170 = or i1 %1169, %1166
  %1171 = fadd fast float %1165, 0xBFE0101020000000
  %1172 = fmul fast float %1171, 2.000000e+00
  %1173 = select i1 %1170, float 0.000000e+00, float %1172
  %1174 = fsub fast float %1118, %1119
  %1175 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 431)  ; CBufferLoadLegacy(handle,regIndex)
  %1176 = extractvalue %dx.types.CBufRet.f32 %1175, 0
  %1177 = fmul fast float %1176, %1174
  %1178 = call float @dx.op.unary.f32(i32 6, float %1177)  ; FAbs(value)
  %1179 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %1180 = extractvalue %dx.types.CBufRet.f32 %1179, 2
  %1181 = fmul fast float %1180, %1178
  %1182 = extractvalue %dx.types.CBufRet.f32 %1179, 3
  %1183 = fadd fast float %1181, %1182
  %1184 = call float @dx.op.unary.f32(i32 7, float %1183)  ; Saturate(value)
  %1185 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %6, i32 0, i32 %52, i32 %53, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1186 = extractvalue %dx.types.ResRet.f32 %1185, 0
  %1187 = fmul fast float %1186, %1184
  %1188 = fadd fast float %1187, %1115
  %1189 = fmul fast float %1188, %984
  %1190 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 436)  ; CBufferLoadLegacy(handle,regIndex)
  %1191 = extractvalue %dx.types.CBufRet.f32 %1190, 3
  %1192 = fsub fast float %1189, %1191
  %1193 = call float @dx.op.unary.f32(i32 7, float %1192)  ; Saturate(value)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %52, i32 %53, i32 undef, float %1193, float %1193, float %1193, float %1193, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %1194

; <label>:1194                                    ; preds = %1136, %1117
  %1195 = phi float [ %1173, %1136 ], [ 0.000000e+00, %1117 ]
  %1196 = fadd fast float %1135, %1195
  %1197 = call float @dx.op.unary.f32(i32 7, float %1196)  ; Saturate(value)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %4, i32 %52, i32 %53, i32 undef, float %1197, float %1197, float %1197, float %1197, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %1198 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %16, i32 438)  ; CBufferLoadLegacy(handle,regIndex)
  %1199 = extractvalue %dx.types.CBufRet.i32 %1198, 0
  %1200 = icmp eq i32 %1199, 0
  br i1 %1200, label %1201, label %1208, !dx.controlflow.hints !56

; <label>:1201                                    ; preds = %1194
  store float %1197, float addrspace(3)* %1124, align 4, !tbaa !35
  br label %1208

; <label>:1202                                    ; preds = %1114
  %1203 = icmp eq i32 %972, 4
  %1204 = and i32 %972, -2
  %1205 = icmp eq i32 %1204, 2
  %1206 = or i1 %1203, %1205
  br i1 %1206, label %1207, label %1208, !dx.controlflow.hints !57

; <label>:1207                                    ; preds = %1202
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %4, i32 %52, i32 %53, i32 undef, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %1208

; <label>:1208                                    ; preds = %1207, %1202, %1201, %1194
  %1209 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %16, i32 438)  ; CBufferLoadLegacy(handle,regIndex)
  %1210 = extractvalue %dx.types.CBufRet.i32 %1209, 0
  %1211 = icmp eq i32 %1210, 0
  br i1 %1211, label %1212, label %1270, !dx.controlflow.hints !58

; <label>:1212                                    ; preds = %1208
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1213 = icmp eq i32 %972, 1
  br i1 %1213, label %1214, label %1258, !dx.controlflow.hints !59

; <label>:1214                                    ; preds = %1212
  %1215 = add i32 %970, -1
  %1216 = getelementptr [612 x i32], [612 x i32] addrspace(3)* @"\01?maskCache@@3PAIA", i32 0, i32 %1215
  %1217 = load i32, i32 addrspace(3)* %1216, align 4, !tbaa !39
  %1218 = icmp eq i32 %1217, 1
  %1219 = zext i1 %1218 to i32
  %1220 = getelementptr [612 x float], [612 x float] addrspace(3)* @"\01?advectedDepth@@3PAMA", i32 0, i32 %1215
  %1221 = load float, float addrspace(3)* %1220, align 4, !tbaa !35
  %1222 = select i1 %1218, float %1221, float 0.000000e+00
  %1223 = add i32 %970, 1
  %1224 = getelementptr [612 x i32], [612 x i32] addrspace(3)* @"\01?maskCache@@3PAIA", i32 0, i32 %1223
  %1225 = load i32, i32 addrspace(3)* %1224, align 4, !tbaa !39
  %1226 = icmp eq i32 %1225, 1
  %1227 = zext i1 %1226 to i32
  %1228 = add nuw nsw i32 %1227, %1219
  %1229 = getelementptr [612 x float], [612 x float] addrspace(3)* @"\01?advectedDepth@@3PAMA", i32 0, i32 %1223
  %1230 = load float, float addrspace(3)* %1229, align 4, !tbaa !35
  %1231 = select i1 %1226, float %1230, float 0.000000e+00
  %1232 = fadd fast float %1231, %1222
  %1233 = add i32 %970, -34
  %1234 = getelementptr [612 x i32], [612 x i32] addrspace(3)* @"\01?maskCache@@3PAIA", i32 0, i32 %1233
  %1235 = load i32, i32 addrspace(3)* %1234, align 4, !tbaa !39
  %1236 = icmp eq i32 %1235, 1
  %1237 = zext i1 %1236 to i32
  %1238 = add nuw nsw i32 %1228, %1237
  %1239 = getelementptr [612 x float], [612 x float] addrspace(3)* @"\01?advectedDepth@@3PAMA", i32 0, i32 %1233
  %1240 = load float, float addrspace(3)* %1239, align 4, !tbaa !35
  %1241 = select i1 %1236, float %1240, float 0.000000e+00
  %1242 = fadd fast float %1232, %1241
  %1243 = add i32 %970, 34
  %1244 = getelementptr [612 x i32], [612 x i32] addrspace(3)* @"\01?maskCache@@3PAIA", i32 0, i32 %1243
  %1245 = load i32, i32 addrspace(3)* %1244, align 4, !tbaa !39
  %1246 = icmp eq i32 %1245, 1
  %1247 = zext i1 %1246 to i32
  %1248 = add nuw nsw i32 %1238, %1247
  %1249 = getelementptr [612 x float], [612 x float] addrspace(3)* @"\01?advectedDepth@@3PAMA", i32 0, i32 %1243
  %1250 = load float, float addrspace(3)* %1249, align 4, !tbaa !35
  %1251 = select i1 %1246, float %1250, float 0.000000e+00
  %1252 = fadd fast float %1242, %1251
  %1253 = icmp eq i32 %1248, 0
  %1254 = uitofp i32 %1248 to float
  %1255 = select i1 %1253, float 1.000000e+00, float %1254
  %1256 = fdiv fast float %1252, %1255
  %1257 = select i1 %1253, float 5.000000e-01, float %1256
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %4, i32 %52, i32 %53, i32 undef, float %1257, float %1257, float %1257, float %1257, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %1258

; <label>:1258                                    ; preds = %1214, %1212
  %1259 = icmp ne i32 %972, 0
  %1260 = and i1 %1259, %993
  br i1 %1260, label %1261, label %1270, !dx.controlflow.hints !60

; <label>:1261                                    ; preds = %1258
  %1262 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %6, i32 0, i32 %52, i32 %53, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1263 = extractvalue %dx.types.ResRet.f32 %1262, 0
  %1264 = fadd fast float %1263, %1115
  %1265 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 436)  ; CBufferLoadLegacy(handle,regIndex)
  %1266 = extractvalue %dx.types.CBufRet.f32 %1265, 3
  %1267 = fsub fast float %1264, %1266
  %1268 = call float @dx.op.unary.f32(i32 7, float %1267)  ; Saturate(value)
  %1269 = fmul fast float %1268, %984
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %52, i32 %53, i32 undef, float %1269, float %1269, float %1269, float %1269, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %1270

; <label>:1270                                    ; preds = %1261, %1258, %1208, %1046, %936, %40, %39, %22
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @dx.op.flattenedThreadIdInGroup.i32(i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.groupId.i32(i32, i32) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32) #1

; Function Attrs: nounwind
declare void @dx.op.textureStore.f32(i32, %dx.types.Handle, i32, i32, i32, float, float, float, float, i8) #2

; Function Attrs: nounwind readnone
declare i32 @dx.op.legacyF32ToF16(i32, float) #0

; Function Attrs: noduplicate nounwind
declare void @dx.op.barrier(i32, i32) #3

; Function Attrs: nounwind readnone
declare float @dx.op.legacyF16ToF32(i32, i32) #0

; Function Attrs: nounwind readnone
declare float @dx.op.unary.f32(i32, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.binary.f32(i32, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32) #1

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #1

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32) #1

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32, %dx.types.Handle, i32) #1

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32, %dx.types.Handle, i32) #1

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
!dx.entryPoints = !{!28}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !18, !23, !26}
!5 = !{!6, !7, !8, !10, !12, !13, !14, !15, !16}
!6 = !{i32 0, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 18, i32 1, i32 11, i32 0, null}
!7 = !{i32 1, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 19, i32 1, i32 11, i32 0, null}
!8 = !{i32 2, %"class.Texture2D<float>"* undef, !"", i32 0, i32 6, i32 1, i32 2, i32 0, !9}
!9 = !{i32 0, i32 14}
!10 = !{i32 3, %"class.Texture2D<float>"* undef, !"", i32 0, i32 7, i32 1, i32 2, i32 0, !11}
!11 = !{i32 0, i32 9}
!12 = !{i32 4, %"class.Texture2D<float>"* undef, !"", i32 0, i32 8, i32 1, i32 2, i32 0, !11}
!13 = !{i32 5, %"class.Texture2D<float>"* undef, !"", i32 0, i32 11, i32 1, i32 2, i32 0, !9}
!14 = !{i32 6, %"class.Texture2D<float>"* undef, !"", i32 0, i32 14, i32 1, i32 2, i32 0, !9}
!15 = !{i32 7, %"class.Texture2D<float>"* undef, !"", i32 0, i32 15, i32 1, i32 2, i32 0, !9}
!16 = !{i32 8, %"class.Texture2D<unsigned int>"* undef, !"", i32 0, i32 9, i32 1, i32 2, i32 0, !17}
!17 = !{i32 0, i32 5}
!18 = !{!19, !20, !21, !22}
!19 = !{i32 0, %"class.RWTexture2D<float>"* undef, !"", i32 0, i32 0, i32 1, i32 2, i1 false, i1 false, i1 false, !9}
!20 = !{i32 1, %"class.RWTexture2D<float>"* undef, !"", i32 0, i32 1, i32 1, i32 2, i1 false, i1 false, i1 false, !11}
!21 = !{i32 2, %"class.RWTexture2D<float>"* undef, !"", i32 0, i32 2, i32 1, i32 2, i1 false, i1 false, i1 false, !11}
!22 = !{i32 3, %"class.RWTexture2D<float>"* undef, !"", i32 0, i32 3, i32 1, i32 2, i1 false, i1 false, i1 false, !9}
!23 = !{!24, !25}
!24 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!25 = !{i32 1, %ConstantBufferShallowWater* undef, !"", i32 0, i32 0, i32 1, i32 64, null}
!26 = !{!27}
!27 = !{i32 0, %struct.SamplerState* undef, !"", i32 0, i32 3, i32 1, i32 0, null}
!28 = !{void ()* @cs_update_velocity_depth, !"cs_update_velocity_depth", null, !4, !29}
!29 = !{i32 0, i64 272, i32 4, !30}
!30 = !{i32 32, i32 16, i32 1}
!31 = distinct !{!31, !"dx.controlflow.hints", i32 2}
!32 = distinct !{!32, !"dx.controlflow.hints", i32 2}
!33 = distinct !{!33, !"dx.controlflow.hints", i32 2}
!34 = distinct !{!34, !"dx.controlflow.hints", i32 1}
!35 = !{!36, !36, i64 0}
!36 = !{!"float", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!40, !40, i64 0}
!40 = !{!"int", !37, i64 0}
!41 = distinct !{!41, !"dx.controlflow.hints", i32 1}
!42 = distinct !{!42, !"dx.controlflow.hints", i32 1}
!43 = distinct !{!43, !"dx.controlflow.hints", i32 2}
!44 = distinct !{!44, !"dx.controlflow.hints", i32 2}
!45 = distinct !{!45, !"dx.controlflow.hints", i32 2}
!46 = distinct !{!46, !"dx.controlflow.hints", i32 1}
!47 = distinct !{!47, !"dx.controlflow.hints", i32 2}
!48 = distinct !{!48, !"dx.controlflow.hints", i32 2}
!49 = distinct !{!49, !"dx.controlflow.hints", i32 2}
!50 = distinct !{!50, !"dx.controlflow.hints", i32 2}
!51 = distinct !{!51, !"dx.controlflow.hints", i32 2}
!52 = distinct !{!52, !"dx.controlflow.hints", i32 1}
!53 = distinct !{!53, !"dx.controlflow.hints", i32 1}
!54 = distinct !{!54, !"dx.controlflow.hints", i32 1}
!55 = distinct !{!55, !"dx.controlflow.hints", i32 1}
!56 = distinct !{!56, !"dx.controlflow.hints", i32 1}
!57 = distinct !{!57, !"dx.controlflow.hints", i32 2}
!58 = distinct !{!58, !"dx.controlflow.hints", i32 1}
!59 = distinct !{!59, !"dx.controlflow.hints", i32 2}
!60 = distinct !{!60, !"dx.controlflow.hints", i32 1}

