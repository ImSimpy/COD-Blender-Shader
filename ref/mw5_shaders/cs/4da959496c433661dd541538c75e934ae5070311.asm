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
; shader hash: da84da29e94f01f15cca2664a432c7f5
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
;                                   texture     u32          2d      T0            t10     1
;                                       UAV     u32          2d      U0             u0     1
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.CBufRet.i32 = type { i32, i32, i32, i32 }
%dx.types.ResRet.i32 = type { i32, i32, i32, i32, i32 }
%"class.Texture2D<unsigned int>" = type { i32, %"class.Texture2D<unsigned int>::mips_type" }
%"class.Texture2D<unsigned int>::mips_type" = type { i32 }
%"class.RWTexture2D<unsigned int>" = type { i32 }
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

@"\01?localSDFStore@@3PAIA" = external addrspace(3) global [1536 x i32], align 4

define void @cs_water_bounds_sdf_lds_offset_8() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call i32 @dx.op.flattenedThreadIdInGroup.i32(i32 96)  ; FlattenedThreadIdInGroup()
  %6 = call i32 @dx.op.groupId.i32(i32 94, i32 0)  ; GroupId(component)
  %7 = call i32 @dx.op.groupId.i32(i32 94, i32 1)  ; GroupId(component)
  %8 = shl i32 %6, 5
  %9 = shl i32 %7, 4
  %10 = and i32 %5, 31
  %11 = lshr i32 %5, 5
  %12 = or i32 %8, %10
  %13 = add i32 %9, %11
  %14 = icmp ult i32 %5, 1536
  br i1 %14, label %15, label %32, !dx.controlflow.hints !16

; <label>:15                                      ; preds = %0
  %16 = urem i32 %5, 48
  %17 = udiv i32 %5, 48
  %18 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %3, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %19 = extractvalue %dx.types.CBufRet.i32 %18, 1
  %20 = add nsw i32 %19, -1
  %21 = add i32 %8, -8
  %22 = add i32 %21, %16
  %23 = add i32 %9, -8
  %24 = add i32 %23, %17
  %25 = call i32 @dx.op.binary.i32(i32 37, i32 %22, i32 0)  ; IMax(a,b)
  %26 = call i32 @dx.op.binary.i32(i32 37, i32 %24, i32 0)  ; IMax(a,b)
  %27 = call i32 @dx.op.binary.i32(i32 38, i32 %25, i32 %20)  ; IMin(a,b)
  %28 = call i32 @dx.op.binary.i32(i32 38, i32 %26, i32 %20)  ; IMin(a,b)
  %29 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %2, i32 0, i32 %27, i32 %28, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %30 = extractvalue %dx.types.ResRet.i32 %29, 0
  %31 = getelementptr [1536 x i32], [1536 x i32] addrspace(3)* @"\01?localSDFStore@@3PAIA", i32 0, i32 %5
  store i32 %30, i32 addrspace(3)* %31, align 4, !tbaa !17
  br label %32

; <label>:32                                      ; preds = %15, %0
  %33 = add i32 %5, 512
  %34 = icmp ult i32 %33, 1536
  br i1 %34, label %35, label %52, !dx.controlflow.hints !16

; <label>:35                                      ; preds = %32
  %36 = urem i32 %33, 48
  %37 = udiv i32 %33, 48
  %38 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %3, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %39 = extractvalue %dx.types.CBufRet.i32 %38, 1
  %40 = add nsw i32 %39, -1
  %41 = add i32 %8, -8
  %42 = add i32 %41, %36
  %43 = add i32 %9, -8
  %44 = add i32 %43, %37
  %45 = call i32 @dx.op.binary.i32(i32 37, i32 %42, i32 0)  ; IMax(a,b)
  %46 = call i32 @dx.op.binary.i32(i32 37, i32 %44, i32 0)  ; IMax(a,b)
  %47 = call i32 @dx.op.binary.i32(i32 38, i32 %45, i32 %40)  ; IMin(a,b)
  %48 = call i32 @dx.op.binary.i32(i32 38, i32 %46, i32 %40)  ; IMin(a,b)
  %49 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %2, i32 0, i32 %47, i32 %48, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %50 = extractvalue %dx.types.ResRet.i32 %49, 0
  %51 = getelementptr [1536 x i32], [1536 x i32] addrspace(3)* @"\01?localSDFStore@@3PAIA", i32 0, i32 %33
  store i32 %50, i32 addrspace(3)* %51, align 4, !tbaa !17
  br label %52

; <label>:52                                      ; preds = %35, %32
  %53 = add i32 %5, 1024
  %54 = icmp ult i32 %53, 1536
  br i1 %54, label %55, label %72, !dx.controlflow.hints !16

; <label>:55                                      ; preds = %52
  %56 = urem i32 %53, 48
  %57 = udiv i32 %53, 48
  %58 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %3, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %59 = extractvalue %dx.types.CBufRet.i32 %58, 1
  %60 = add nsw i32 %59, -1
  %61 = add i32 %8, -8
  %62 = add i32 %61, %56
  %63 = add i32 %9, -8
  %64 = add i32 %63, %57
  %65 = call i32 @dx.op.binary.i32(i32 37, i32 %62, i32 0)  ; IMax(a,b)
  %66 = call i32 @dx.op.binary.i32(i32 37, i32 %64, i32 0)  ; IMax(a,b)
  %67 = call i32 @dx.op.binary.i32(i32 38, i32 %65, i32 %60)  ; IMin(a,b)
  %68 = call i32 @dx.op.binary.i32(i32 38, i32 %66, i32 %60)  ; IMin(a,b)
  %69 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %2, i32 0, i32 %67, i32 %68, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %70 = extractvalue %dx.types.ResRet.i32 %69, 0
  %71 = getelementptr [1536 x i32], [1536 x i32] addrspace(3)* @"\01?localSDFStore@@3PAIA", i32 0, i32 %53
  store i32 %70, i32 addrspace(3)* %71, align 4, !tbaa !17
  br label %72

; <label>:72                                      ; preds = %55, %52
  %73 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %3, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %74 = extractvalue %dx.types.CBufRet.i32 %73, 1
  %75 = icmp uge i32 %12, %74
  %76 = icmp uge i32 %13, %74
  %77 = or i1 %75, %76
  br i1 %77, label %456, label %78, !dx.controlflow.hints !21

; <label>:78                                      ; preds = %72
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %79 = add nsw i32 %10, -8
  %80 = mul i32 %11, 48
  %81 = or i32 %80, 8
  %82 = add i32 %79, %81
  %83 = getelementptr [1536 x i32], [1536 x i32] addrspace(3)* @"\01?localSDFStore@@3PAIA", i32 0, i32 %82
  %84 = load i32, i32 addrspace(3)* %83, align 4, !tbaa !17
  %85 = or i32 %10, 384
  %86 = add i32 %85, %80
  %87 = getelementptr [1536 x i32], [1536 x i32] addrspace(3)* @"\01?localSDFStore@@3PAIA", i32 0, i32 %86
  %88 = load i32, i32 addrspace(3)* %87, align 4, !tbaa !17
  %89 = or i32 %10, 768
  %90 = add i32 %89, %80
  %91 = getelementptr [1536 x i32], [1536 x i32] addrspace(3)* @"\01?localSDFStore@@3PAIA", i32 0, i32 %90
  %92 = load i32, i32 addrspace(3)* %91, align 4, !tbaa !17
  %93 = add nuw nsw i32 %10, 776
  %94 = add i32 %93, %80
  %95 = getelementptr [1536 x i32], [1536 x i32] addrspace(3)* @"\01?localSDFStore@@3PAIA", i32 0, i32 %94
  %96 = load i32, i32 addrspace(3)* %95, align 4, !tbaa !17
  %97 = add i32 %81, %10
  %98 = getelementptr [1536 x i32], [1536 x i32] addrspace(3)* @"\01?localSDFStore@@3PAIA", i32 0, i32 %97
  %99 = load i32, i32 addrspace(3)* %98, align 4, !tbaa !17
  %100 = add nuw nsw i32 %10, 784
  %101 = add i32 %100, %80
  %102 = getelementptr [1536 x i32], [1536 x i32] addrspace(3)* @"\01?localSDFStore@@3PAIA", i32 0, i32 %101
  %103 = load i32, i32 addrspace(3)* %102, align 4, !tbaa !17
  %104 = add nuw nsw i32 %10, 400
  %105 = add i32 %104, %80
  %106 = getelementptr [1536 x i32], [1536 x i32] addrspace(3)* @"\01?localSDFStore@@3PAIA", i32 0, i32 %105
  %107 = load i32, i32 addrspace(3)* %106, align 4, !tbaa !17
  %108 = add nuw nsw i32 %10, 8
  %109 = add i32 %108, %81
  %110 = getelementptr [1536 x i32], [1536 x i32] addrspace(3)* @"\01?localSDFStore@@3PAIA", i32 0, i32 %109
  %111 = load i32, i32 addrspace(3)* %110, align 4, !tbaa !17
  %112 = add nuw nsw i32 %10, 392
  %113 = add i32 %112, %80
  %114 = getelementptr [1536 x i32], [1536 x i32] addrspace(3)* @"\01?localSDFStore@@3PAIA", i32 0, i32 %113
  %115 = load i32, i32 addrspace(3)* %114, align 4, !tbaa !17
  %116 = icmp eq i32 %84, 0
  br i1 %116, label %147, label %117, !dx.controlflow.hints !22

; <label>:117                                     ; preds = %78
  %118 = and i32 %115, 2
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %130, label %120, !dx.controlflow.hints !23

; <label>:120                                     ; preds = %117
  %121 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %3, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %122 = extractvalue %dx.types.CBufRet.i32 %121, 1
  %123 = add nsw i32 %122, -1
  %124 = add i32 %12, -8
  %125 = add i32 %13, -8
  %126 = call i32 @dx.op.binary.i32(i32 37, i32 %124, i32 0)  ; IMax(a,b)
  %127 = call i32 @dx.op.binary.i32(i32 37, i32 %125, i32 0)  ; IMax(a,b)
  %128 = call i32 @dx.op.binary.i32(i32 38, i32 %126, i32 %123)  ; IMin(a,b)
  %129 = call i32 @dx.op.binary.i32(i32 38, i32 %127, i32 %123)  ; IMin(a,b)
  br label %135

; <label>:130                                     ; preds = %117
  %131 = lshr i32 %84, 9
  %132 = and i32 %131, 127
  %133 = lshr i32 %84, 2
  %134 = and i32 %133, 127
  br label %135

; <label>:135                                     ; preds = %130, %120
  %136 = phi i32 [ %132, %130 ], [ %128, %120 ]
  %137 = phi i32 [ %134, %130 ], [ %129, %120 ]
  %138 = sub i32 %136, %12
  %139 = sub i32 %137, %13
  %140 = mul i32 %138, %138
  %141 = mul i32 %139, %139
  %142 = add nsw i32 %141, %140
  %143 = icmp ne i32 %142, -1
  %144 = select i1 %143, i32 %136, i32 0
  %145 = select i1 %143, i32 %137, i32 0
  %146 = zext i1 %143 to i32
  br label %147

; <label>:147                                     ; preds = %135, %78
  %148 = phi i32 [ 0, %78 ], [ %144, %135 ]
  %149 = phi i32 [ 0, %78 ], [ %145, %135 ]
  %150 = phi i32 [ -1, %78 ], [ %142, %135 ]
  %151 = phi i32 [ 0, %78 ], [ %146, %135 ]
  %152 = icmp eq i32 %88, 0
  br i1 %152, label %183, label %153, !dx.controlflow.hints !22

; <label>:153                                     ; preds = %147
  %154 = and i32 %115, 2
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %165, label %156, !dx.controlflow.hints !23

; <label>:156                                     ; preds = %153
  %157 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %3, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %158 = extractvalue %dx.types.CBufRet.i32 %157, 1
  %159 = add nsw i32 %158, -1
  %160 = add i32 %12, -8
  %161 = call i32 @dx.op.binary.i32(i32 37, i32 %160, i32 0)  ; IMax(a,b)
  %162 = call i32 @dx.op.binary.i32(i32 37, i32 %13, i32 0)  ; IMax(a,b)
  %163 = call i32 @dx.op.binary.i32(i32 38, i32 %161, i32 %159)  ; IMin(a,b)
  %164 = call i32 @dx.op.binary.i32(i32 38, i32 %162, i32 %159)  ; IMin(a,b)
  br label %170

; <label>:165                                     ; preds = %153
  %166 = lshr i32 %88, 9
  %167 = and i32 %166, 127
  %168 = lshr i32 %88, 2
  %169 = and i32 %168, 127
  br label %170

; <label>:170                                     ; preds = %165, %156
  %171 = phi i32 [ %167, %165 ], [ %163, %156 ]
  %172 = phi i32 [ %169, %165 ], [ %164, %156 ]
  %173 = sub i32 %171, %12
  %174 = sub i32 %172, %13
  %175 = mul i32 %173, %173
  %176 = mul i32 %174, %174
  %177 = add nsw i32 %176, %175
  %178 = icmp ult i32 %177, %150
  %179 = select i1 %178, i32 %171, i32 %148
  %180 = select i1 %178, i32 %172, i32 %149
  %181 = select i1 %178, i32 %177, i32 %150
  %182 = select i1 %178, i32 1, i32 %151
  br label %183

; <label>:183                                     ; preds = %170, %147
  %184 = phi i32 [ %148, %147 ], [ %179, %170 ]
  %185 = phi i32 [ %149, %147 ], [ %180, %170 ]
  %186 = phi i32 [ %150, %147 ], [ %181, %170 ]
  %187 = phi i32 [ %151, %147 ], [ %182, %170 ]
  %188 = icmp eq i32 %92, 0
  br i1 %188, label %220, label %189, !dx.controlflow.hints !22

; <label>:189                                     ; preds = %183
  %190 = and i32 %115, 2
  %191 = icmp eq i32 %190, 0
  br i1 %191, label %202, label %192, !dx.controlflow.hints !23

; <label>:192                                     ; preds = %189
  %193 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %3, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %194 = extractvalue %dx.types.CBufRet.i32 %193, 1
  %195 = add nsw i32 %194, -1
  %196 = add i32 %12, -8
  %197 = add i32 %13, 8
  %198 = call i32 @dx.op.binary.i32(i32 37, i32 %196, i32 0)  ; IMax(a,b)
  %199 = call i32 @dx.op.binary.i32(i32 37, i32 %197, i32 0)  ; IMax(a,b)
  %200 = call i32 @dx.op.binary.i32(i32 38, i32 %198, i32 %195)  ; IMin(a,b)
  %201 = call i32 @dx.op.binary.i32(i32 38, i32 %199, i32 %195)  ; IMin(a,b)
  br label %207

; <label>:202                                     ; preds = %189
  %203 = lshr i32 %92, 9
  %204 = and i32 %203, 127
  %205 = lshr i32 %92, 2
  %206 = and i32 %205, 127
  br label %207

; <label>:207                                     ; preds = %202, %192
  %208 = phi i32 [ %204, %202 ], [ %200, %192 ]
  %209 = phi i32 [ %206, %202 ], [ %201, %192 ]
  %210 = sub i32 %208, %12
  %211 = sub i32 %209, %13
  %212 = mul i32 %210, %210
  %213 = mul i32 %211, %211
  %214 = add nsw i32 %213, %212
  %215 = icmp ult i32 %214, %186
  %216 = select i1 %215, i32 %208, i32 %184
  %217 = select i1 %215, i32 %209, i32 %185
  %218 = select i1 %215, i32 %214, i32 %186
  %219 = select i1 %215, i32 1, i32 %187
  br label %220

; <label>:220                                     ; preds = %207, %183
  %221 = phi i32 [ %184, %183 ], [ %216, %207 ]
  %222 = phi i32 [ %185, %183 ], [ %217, %207 ]
  %223 = phi i32 [ %186, %183 ], [ %218, %207 ]
  %224 = phi i32 [ %187, %183 ], [ %219, %207 ]
  %225 = icmp eq i32 %96, 0
  br i1 %225, label %256, label %226, !dx.controlflow.hints !22

; <label>:226                                     ; preds = %220
  %227 = and i32 %115, 2
  %228 = icmp eq i32 %227, 0
  br i1 %228, label %238, label %229, !dx.controlflow.hints !23

; <label>:229                                     ; preds = %226
  %230 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %3, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %231 = extractvalue %dx.types.CBufRet.i32 %230, 1
  %232 = add nsw i32 %231, -1
  %233 = add i32 %13, 8
  %234 = call i32 @dx.op.binary.i32(i32 37, i32 %12, i32 0)  ; IMax(a,b)
  %235 = call i32 @dx.op.binary.i32(i32 37, i32 %233, i32 0)  ; IMax(a,b)
  %236 = call i32 @dx.op.binary.i32(i32 38, i32 %234, i32 %232)  ; IMin(a,b)
  %237 = call i32 @dx.op.binary.i32(i32 38, i32 %235, i32 %232)  ; IMin(a,b)
  br label %243

; <label>:238                                     ; preds = %226
  %239 = lshr i32 %96, 9
  %240 = and i32 %239, 127
  %241 = lshr i32 %96, 2
  %242 = and i32 %241, 127
  br label %243

; <label>:243                                     ; preds = %238, %229
  %244 = phi i32 [ %240, %238 ], [ %236, %229 ]
  %245 = phi i32 [ %242, %238 ], [ %237, %229 ]
  %246 = sub i32 %244, %12
  %247 = sub i32 %245, %13
  %248 = mul i32 %246, %246
  %249 = mul i32 %247, %247
  %250 = add nsw i32 %249, %248
  %251 = icmp ult i32 %250, %223
  %252 = select i1 %251, i32 %244, i32 %221
  %253 = select i1 %251, i32 %245, i32 %222
  %254 = select i1 %251, i32 %250, i32 %223
  %255 = select i1 %251, i32 1, i32 %224
  br label %256

; <label>:256                                     ; preds = %243, %220
  %257 = phi i32 [ %221, %220 ], [ %252, %243 ]
  %258 = phi i32 [ %222, %220 ], [ %253, %243 ]
  %259 = phi i32 [ %223, %220 ], [ %254, %243 ]
  %260 = phi i32 [ %224, %220 ], [ %255, %243 ]
  %261 = icmp eq i32 %99, 0
  br i1 %261, label %292, label %262, !dx.controlflow.hints !22

; <label>:262                                     ; preds = %256
  %263 = and i32 %115, 2
  %264 = icmp eq i32 %263, 0
  br i1 %264, label %274, label %265, !dx.controlflow.hints !23

; <label>:265                                     ; preds = %262
  %266 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %3, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %267 = extractvalue %dx.types.CBufRet.i32 %266, 1
  %268 = add nsw i32 %267, -1
  %269 = add i32 %13, -8
  %270 = call i32 @dx.op.binary.i32(i32 37, i32 %12, i32 0)  ; IMax(a,b)
  %271 = call i32 @dx.op.binary.i32(i32 37, i32 %269, i32 0)  ; IMax(a,b)
  %272 = call i32 @dx.op.binary.i32(i32 38, i32 %270, i32 %268)  ; IMin(a,b)
  %273 = call i32 @dx.op.binary.i32(i32 38, i32 %271, i32 %268)  ; IMin(a,b)
  br label %279

; <label>:274                                     ; preds = %262
  %275 = lshr i32 %99, 9
  %276 = and i32 %275, 127
  %277 = lshr i32 %99, 2
  %278 = and i32 %277, 127
  br label %279

; <label>:279                                     ; preds = %274, %265
  %280 = phi i32 [ %276, %274 ], [ %272, %265 ]
  %281 = phi i32 [ %278, %274 ], [ %273, %265 ]
  %282 = sub i32 %280, %12
  %283 = sub i32 %281, %13
  %284 = mul i32 %282, %282
  %285 = mul i32 %283, %283
  %286 = add nsw i32 %285, %284
  %287 = icmp ult i32 %286, %259
  %288 = select i1 %287, i32 %280, i32 %257
  %289 = select i1 %287, i32 %281, i32 %258
  %290 = select i1 %287, i32 %286, i32 %259
  %291 = select i1 %287, i32 1, i32 %260
  br label %292

; <label>:292                                     ; preds = %279, %256
  %293 = phi i32 [ %257, %256 ], [ %288, %279 ]
  %294 = phi i32 [ %258, %256 ], [ %289, %279 ]
  %295 = phi i32 [ %259, %256 ], [ %290, %279 ]
  %296 = phi i32 [ %260, %256 ], [ %291, %279 ]
  %297 = icmp eq i32 %103, 0
  br i1 %297, label %329, label %298, !dx.controlflow.hints !22

; <label>:298                                     ; preds = %292
  %299 = and i32 %115, 2
  %300 = icmp eq i32 %299, 0
  br i1 %300, label %311, label %301, !dx.controlflow.hints !23

; <label>:301                                     ; preds = %298
  %302 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %3, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %303 = extractvalue %dx.types.CBufRet.i32 %302, 1
  %304 = add nsw i32 %303, -1
  %305 = add i32 %12, 8
  %306 = add i32 %13, 8
  %307 = call i32 @dx.op.binary.i32(i32 37, i32 %305, i32 0)  ; IMax(a,b)
  %308 = call i32 @dx.op.binary.i32(i32 37, i32 %306, i32 0)  ; IMax(a,b)
  %309 = call i32 @dx.op.binary.i32(i32 38, i32 %307, i32 %304)  ; IMin(a,b)
  %310 = call i32 @dx.op.binary.i32(i32 38, i32 %308, i32 %304)  ; IMin(a,b)
  br label %316

; <label>:311                                     ; preds = %298
  %312 = lshr i32 %103, 9
  %313 = and i32 %312, 127
  %314 = lshr i32 %103, 2
  %315 = and i32 %314, 127
  br label %316

; <label>:316                                     ; preds = %311, %301
  %317 = phi i32 [ %313, %311 ], [ %309, %301 ]
  %318 = phi i32 [ %315, %311 ], [ %310, %301 ]
  %319 = sub i32 %317, %12
  %320 = sub i32 %318, %13
  %321 = mul i32 %319, %319
  %322 = mul i32 %320, %320
  %323 = add nsw i32 %322, %321
  %324 = icmp ult i32 %323, %295
  %325 = select i1 %324, i32 %317, i32 %293
  %326 = select i1 %324, i32 %318, i32 %294
  %327 = select i1 %324, i32 %323, i32 %295
  %328 = select i1 %324, i32 1, i32 %296
  br label %329

; <label>:329                                     ; preds = %316, %292
  %330 = phi i32 [ %293, %292 ], [ %325, %316 ]
  %331 = phi i32 [ %294, %292 ], [ %326, %316 ]
  %332 = phi i32 [ %295, %292 ], [ %327, %316 ]
  %333 = phi i32 [ %296, %292 ], [ %328, %316 ]
  %334 = icmp eq i32 %107, 0
  br i1 %334, label %365, label %335, !dx.controlflow.hints !22

; <label>:335                                     ; preds = %329
  %336 = and i32 %115, 2
  %337 = icmp eq i32 %336, 0
  br i1 %337, label %347, label %338, !dx.controlflow.hints !23

; <label>:338                                     ; preds = %335
  %339 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %3, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %340 = extractvalue %dx.types.CBufRet.i32 %339, 1
  %341 = add nsw i32 %340, -1
  %342 = add i32 %12, 8
  %343 = call i32 @dx.op.binary.i32(i32 37, i32 %342, i32 0)  ; IMax(a,b)
  %344 = call i32 @dx.op.binary.i32(i32 37, i32 %13, i32 0)  ; IMax(a,b)
  %345 = call i32 @dx.op.binary.i32(i32 38, i32 %343, i32 %341)  ; IMin(a,b)
  %346 = call i32 @dx.op.binary.i32(i32 38, i32 %344, i32 %341)  ; IMin(a,b)
  br label %352

; <label>:347                                     ; preds = %335
  %348 = lshr i32 %107, 9
  %349 = and i32 %348, 127
  %350 = lshr i32 %107, 2
  %351 = and i32 %350, 127
  br label %352

; <label>:352                                     ; preds = %347, %338
  %353 = phi i32 [ %349, %347 ], [ %345, %338 ]
  %354 = phi i32 [ %351, %347 ], [ %346, %338 ]
  %355 = sub i32 %353, %12
  %356 = sub i32 %354, %13
  %357 = mul i32 %355, %355
  %358 = mul i32 %356, %356
  %359 = add nsw i32 %358, %357
  %360 = icmp ult i32 %359, %332
  %361 = select i1 %360, i32 %353, i32 %330
  %362 = select i1 %360, i32 %354, i32 %331
  %363 = select i1 %360, i32 %359, i32 %332
  %364 = select i1 %360, i32 1, i32 %333
  br label %365

; <label>:365                                     ; preds = %352, %329
  %366 = phi i32 [ %330, %329 ], [ %361, %352 ]
  %367 = phi i32 [ %331, %329 ], [ %362, %352 ]
  %368 = phi i32 [ %332, %329 ], [ %363, %352 ]
  %369 = phi i32 [ %333, %329 ], [ %364, %352 ]
  %370 = icmp eq i32 %111, 0
  br i1 %370, label %402, label %371, !dx.controlflow.hints !22

; <label>:371                                     ; preds = %365
  %372 = and i32 %115, 2
  %373 = icmp eq i32 %372, 0
  br i1 %373, label %384, label %374, !dx.controlflow.hints !23

; <label>:374                                     ; preds = %371
  %375 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %3, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %376 = extractvalue %dx.types.CBufRet.i32 %375, 1
  %377 = add nsw i32 %376, -1
  %378 = add i32 %12, 8
  %379 = add i32 %13, -8
  %380 = call i32 @dx.op.binary.i32(i32 37, i32 %378, i32 0)  ; IMax(a,b)
  %381 = call i32 @dx.op.binary.i32(i32 37, i32 %379, i32 0)  ; IMax(a,b)
  %382 = call i32 @dx.op.binary.i32(i32 38, i32 %380, i32 %377)  ; IMin(a,b)
  %383 = call i32 @dx.op.binary.i32(i32 38, i32 %381, i32 %377)  ; IMin(a,b)
  br label %389

; <label>:384                                     ; preds = %371
  %385 = lshr i32 %111, 9
  %386 = and i32 %385, 127
  %387 = lshr i32 %111, 2
  %388 = and i32 %387, 127
  br label %389

; <label>:389                                     ; preds = %384, %374
  %390 = phi i32 [ %386, %384 ], [ %382, %374 ]
  %391 = phi i32 [ %388, %384 ], [ %383, %374 ]
  %392 = sub i32 %390, %12
  %393 = sub i32 %391, %13
  %394 = mul i32 %392, %392
  %395 = mul i32 %393, %393
  %396 = add nsw i32 %395, %394
  %397 = icmp ult i32 %396, %368
  %398 = select i1 %397, i32 %390, i32 %366
  %399 = select i1 %397, i32 %391, i32 %367
  %400 = select i1 %397, i32 %396, i32 %368
  %401 = select i1 %397, i32 1, i32 %369
  br label %402

; <label>:402                                     ; preds = %389, %365
  %403 = phi i32 [ %366, %365 ], [ %398, %389 ]
  %404 = phi i32 [ %367, %365 ], [ %399, %389 ]
  %405 = phi i32 [ %368, %365 ], [ %400, %389 ]
  %406 = phi i32 [ %369, %365 ], [ %401, %389 ]
  %407 = icmp eq i32 %115, 0
  %408 = and i32 %115, 2
  br i1 %407, label %436, label %409, !dx.controlflow.hints !22

; <label>:409                                     ; preds = %402
  %410 = icmp eq i32 %408, 0
  br i1 %410, label %419, label %411, !dx.controlflow.hints !23

; <label>:411                                     ; preds = %409
  %412 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %3, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %413 = extractvalue %dx.types.CBufRet.i32 %412, 1
  %414 = add nsw i32 %413, -1
  %415 = call i32 @dx.op.binary.i32(i32 37, i32 %12, i32 0)  ; IMax(a,b)
  %416 = call i32 @dx.op.binary.i32(i32 37, i32 %13, i32 0)  ; IMax(a,b)
  %417 = call i32 @dx.op.binary.i32(i32 38, i32 %415, i32 %414)  ; IMin(a,b)
  %418 = call i32 @dx.op.binary.i32(i32 38, i32 %416, i32 %414)  ; IMin(a,b)
  br label %424

; <label>:419                                     ; preds = %409
  %420 = lshr i32 %115, 9
  %421 = and i32 %420, 127
  %422 = lshr i32 %115, 2
  %423 = and i32 %422, 127
  br label %424

; <label>:424                                     ; preds = %419, %411
  %425 = phi i32 [ %421, %419 ], [ %417, %411 ]
  %426 = phi i32 [ %423, %419 ], [ %418, %411 ]
  %427 = sub i32 %425, %12
  %428 = sub i32 %426, %13
  %429 = mul i32 %427, %427
  %430 = mul i32 %428, %428
  %431 = add nsw i32 %430, %429
  %432 = icmp ult i32 %431, %405
  %433 = select i1 %432, i32 %425, i32 %403
  %434 = select i1 %432, i32 %426, i32 %404
  %435 = select i1 %432, i32 1, i32 %406
  br label %436

; <label>:436                                     ; preds = %424, %402
  %437 = phi i32 [ %433, %424 ], [ %403, %402 ]
  %438 = phi i32 [ %434, %424 ], [ %404, %402 ]
  %439 = phi i32 [ %435, %424 ], [ %406, %402 ]
  %440 = icmp eq i32 %408, 0
  br i1 %440, label %441, label %455, !dx.controlflow.hints !24

; <label>:441                                     ; preds = %436
  %442 = icmp ne i32 %439, 0
  %443 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %4, i32 435)  ; CBufferLoadLegacy(handle,regIndex)
  %444 = extractvalue %dx.types.CBufRet.i32 %443, 0
  %445 = call i32 @dx.op.binary.i32(i32 40, i32 128, i32 %444)  ; UMin(a,b)
  %446 = add i32 %445, %437
  %447 = add i32 %445, %438
  %448 = shl i32 %446, 9
  %449 = and i32 %448, 65024
  %450 = shl i32 %447, 2
  %451 = and i32 %450, 508
  %452 = or i32 %449, %451
  %453 = or i32 %452, 1
  %454 = select i1 %442, i32 %453, i32 0
  call void @dx.op.textureStore.i32(i32 67, %dx.types.Handle %1, i32 %12, i32 %13, i32 undef, i32 %454, i32 %454, i32 %454, i32 %454, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %456

; <label>:455                                     ; preds = %436
  call void @dx.op.textureStore.i32(i32 67, %dx.types.Handle %1, i32 %12, i32 %13, i32 undef, i32 %115, i32 %115, i32 %115, i32 %115, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %456

; <label>:456                                     ; preds = %455, %441, %72
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @dx.op.flattenedThreadIdInGroup.i32(i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.groupId.i32(i32, i32) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32) #1

; Function Attrs: nounwind
declare void @dx.op.textureStore.i32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32, i8) #2

; Function Attrs: nounwind readnone
declare i32 @dx.op.binary.i32(i32, i32, i32) #0

; Function Attrs: noduplicate nounwind
declare void @dx.op.barrier(i32, i32) #3

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32, %dx.types.Handle, i32) #1

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
!dx.entryPoints = !{!13}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !8, !10, null}
!5 = !{!6}
!6 = !{i32 0, %"class.Texture2D<unsigned int>"* undef, !"", i32 0, i32 10, i32 1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 5}
!8 = !{!9}
!9 = !{i32 0, %"class.RWTexture2D<unsigned int>"* undef, !"", i32 0, i32 0, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!10 = !{!11, !12}
!11 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!12 = !{i32 1, %ConstantBufferShallowWater* undef, !"", i32 0, i32 0, i32 1, i32 64, null}
!13 = !{void ()* @cs_water_bounds_sdf_lds_offset_8, !"cs_water_bounds_sdf_lds_offset_8", null, !4, !14}
!14 = !{i32 0, i64 256, i32 4, !15}
!15 = !{i32 32, i32 16, i32 1}
!16 = distinct !{!16, !"dx.controlflow.hints", i32 1}
!17 = !{!18, !18, i64 0}
!18 = !{!"int", !19, i64 0}
!19 = !{!"omnipotent char", !20, i64 0}
!20 = !{!"Simple C/C++ TBAA"}
!21 = distinct !{!21, !"dx.controlflow.hints", i32 2}
!22 = distinct !{!22, !"dx.controlflow.hints", i32 1}
!23 = distinct !{!23, !"dx.controlflow.hints", i32 2}
!24 = distinct !{!24, !"dx.controlflow.hints", i32 2}

