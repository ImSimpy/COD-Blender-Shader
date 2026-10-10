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
; shader hash: 0e6c3e089bb938d756eeb098f64d4f36
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

define void @cs_water_bounds_sdf_lds_offset_1() {
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
  %14 = icmp ult i32 %5, 612
  br i1 %14, label %15, label %32, !dx.controlflow.hints !16

; <label>:15                                      ; preds = %0
  %16 = urem i32 %5, 34
  %17 = udiv i32 %5, 34
  %18 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %3, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %19 = extractvalue %dx.types.CBufRet.i32 %18, 1
  %20 = add nsw i32 %19, -1
  %21 = add i32 %8, -1
  %22 = add i32 %21, %16
  %23 = add i32 %9, -1
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
  %34 = icmp ult i32 %33, 612
  br i1 %34, label %35, label %52, !dx.controlflow.hints !16

; <label>:35                                      ; preds = %32
  %36 = urem i32 %33, 34
  %37 = udiv i32 %33, 34
  %38 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %3, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %39 = extractvalue %dx.types.CBufRet.i32 %38, 1
  %40 = add nsw i32 %39, -1
  %41 = add i32 %8, -1
  %42 = add i32 %41, %36
  %43 = add i32 %9, -1
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
  %53 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %3, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %54 = extractvalue %dx.types.CBufRet.i32 %53, 1
  %55 = icmp uge i32 %12, %54
  %56 = icmp uge i32 %13, %54
  %57 = or i1 %55, %56
  br i1 %57, label %436, label %58, !dx.controlflow.hints !21

; <label>:58                                      ; preds = %52
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %59 = add nsw i32 %10, -1
  %60 = mul i32 %11, 34
  %61 = or i32 %60, 1
  %62 = add i32 %59, %61
  %63 = getelementptr [1536 x i32], [1536 x i32] addrspace(3)* @"\01?localSDFStore@@3PAIA", i32 0, i32 %62
  %64 = load i32, i32 addrspace(3)* %63, align 4, !tbaa !17
  %65 = add nuw nsw i32 %10, 34
  %66 = add i32 %65, %60
  %67 = getelementptr [1536 x i32], [1536 x i32] addrspace(3)* @"\01?localSDFStore@@3PAIA", i32 0, i32 %66
  %68 = load i32, i32 addrspace(3)* %67, align 4, !tbaa !17
  %69 = add nuw nsw i32 %10, 68
  %70 = add i32 %69, %60
  %71 = getelementptr [1536 x i32], [1536 x i32] addrspace(3)* @"\01?localSDFStore@@3PAIA", i32 0, i32 %70
  %72 = load i32, i32 addrspace(3)* %71, align 4, !tbaa !17
  %73 = add nuw nsw i32 %10, 69
  %74 = add i32 %73, %60
  %75 = getelementptr [1536 x i32], [1536 x i32] addrspace(3)* @"\01?localSDFStore@@3PAIA", i32 0, i32 %74
  %76 = load i32, i32 addrspace(3)* %75, align 4, !tbaa !17
  %77 = add i32 %61, %10
  %78 = getelementptr [1536 x i32], [1536 x i32] addrspace(3)* @"\01?localSDFStore@@3PAIA", i32 0, i32 %77
  %79 = load i32, i32 addrspace(3)* %78, align 4, !tbaa !17
  %80 = add nuw nsw i32 %10, 70
  %81 = add i32 %80, %60
  %82 = getelementptr [1536 x i32], [1536 x i32] addrspace(3)* @"\01?localSDFStore@@3PAIA", i32 0, i32 %81
  %83 = load i32, i32 addrspace(3)* %82, align 4, !tbaa !17
  %84 = add nuw nsw i32 %10, 36
  %85 = add i32 %84, %60
  %86 = getelementptr [1536 x i32], [1536 x i32] addrspace(3)* @"\01?localSDFStore@@3PAIA", i32 0, i32 %85
  %87 = load i32, i32 addrspace(3)* %86, align 4, !tbaa !17
  %88 = add nuw nsw i32 %10, 1
  %89 = add i32 %88, %61
  %90 = getelementptr [1536 x i32], [1536 x i32] addrspace(3)* @"\01?localSDFStore@@3PAIA", i32 0, i32 %89
  %91 = load i32, i32 addrspace(3)* %90, align 4, !tbaa !17
  %92 = add nuw nsw i32 %10, 35
  %93 = add i32 %92, %60
  %94 = getelementptr [1536 x i32], [1536 x i32] addrspace(3)* @"\01?localSDFStore@@3PAIA", i32 0, i32 %93
  %95 = load i32, i32 addrspace(3)* %94, align 4, !tbaa !17
  %96 = icmp eq i32 %64, 0
  br i1 %96, label %127, label %97, !dx.controlflow.hints !22

; <label>:97                                      ; preds = %58
  %98 = and i32 %95, 2
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %110, label %100, !dx.controlflow.hints !23

; <label>:100                                     ; preds = %97
  %101 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %3, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %102 = extractvalue %dx.types.CBufRet.i32 %101, 1
  %103 = add nsw i32 %102, -1
  %104 = add i32 %12, -1
  %105 = add i32 %13, -1
  %106 = call i32 @dx.op.binary.i32(i32 37, i32 %104, i32 0)  ; IMax(a,b)
  %107 = call i32 @dx.op.binary.i32(i32 37, i32 %105, i32 0)  ; IMax(a,b)
  %108 = call i32 @dx.op.binary.i32(i32 38, i32 %106, i32 %103)  ; IMin(a,b)
  %109 = call i32 @dx.op.binary.i32(i32 38, i32 %107, i32 %103)  ; IMin(a,b)
  br label %115

; <label>:110                                     ; preds = %97
  %111 = lshr i32 %64, 9
  %112 = and i32 %111, 127
  %113 = lshr i32 %64, 2
  %114 = and i32 %113, 127
  br label %115

; <label>:115                                     ; preds = %110, %100
  %116 = phi i32 [ %112, %110 ], [ %108, %100 ]
  %117 = phi i32 [ %114, %110 ], [ %109, %100 ]
  %118 = sub i32 %116, %12
  %119 = sub i32 %117, %13
  %120 = mul i32 %118, %118
  %121 = mul i32 %119, %119
  %122 = add nsw i32 %121, %120
  %123 = icmp ne i32 %122, -1
  %124 = select i1 %123, i32 %116, i32 0
  %125 = select i1 %123, i32 %117, i32 0
  %126 = zext i1 %123 to i32
  br label %127

; <label>:127                                     ; preds = %115, %58
  %128 = phi i32 [ 0, %58 ], [ %124, %115 ]
  %129 = phi i32 [ 0, %58 ], [ %125, %115 ]
  %130 = phi i32 [ -1, %58 ], [ %122, %115 ]
  %131 = phi i32 [ 0, %58 ], [ %126, %115 ]
  %132 = icmp eq i32 %68, 0
  br i1 %132, label %163, label %133, !dx.controlflow.hints !22

; <label>:133                                     ; preds = %127
  %134 = and i32 %95, 2
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %145, label %136, !dx.controlflow.hints !23

; <label>:136                                     ; preds = %133
  %137 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %3, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %138 = extractvalue %dx.types.CBufRet.i32 %137, 1
  %139 = add nsw i32 %138, -1
  %140 = add i32 %12, -1
  %141 = call i32 @dx.op.binary.i32(i32 37, i32 %140, i32 0)  ; IMax(a,b)
  %142 = call i32 @dx.op.binary.i32(i32 37, i32 %13, i32 0)  ; IMax(a,b)
  %143 = call i32 @dx.op.binary.i32(i32 38, i32 %141, i32 %139)  ; IMin(a,b)
  %144 = call i32 @dx.op.binary.i32(i32 38, i32 %142, i32 %139)  ; IMin(a,b)
  br label %150

; <label>:145                                     ; preds = %133
  %146 = lshr i32 %68, 9
  %147 = and i32 %146, 127
  %148 = lshr i32 %68, 2
  %149 = and i32 %148, 127
  br label %150

; <label>:150                                     ; preds = %145, %136
  %151 = phi i32 [ %147, %145 ], [ %143, %136 ]
  %152 = phi i32 [ %149, %145 ], [ %144, %136 ]
  %153 = sub i32 %151, %12
  %154 = sub i32 %152, %13
  %155 = mul i32 %153, %153
  %156 = mul i32 %154, %154
  %157 = add nsw i32 %156, %155
  %158 = icmp ult i32 %157, %130
  %159 = select i1 %158, i32 %151, i32 %128
  %160 = select i1 %158, i32 %152, i32 %129
  %161 = select i1 %158, i32 %157, i32 %130
  %162 = select i1 %158, i32 1, i32 %131
  br label %163

; <label>:163                                     ; preds = %150, %127
  %164 = phi i32 [ %128, %127 ], [ %159, %150 ]
  %165 = phi i32 [ %129, %127 ], [ %160, %150 ]
  %166 = phi i32 [ %130, %127 ], [ %161, %150 ]
  %167 = phi i32 [ %131, %127 ], [ %162, %150 ]
  %168 = icmp eq i32 %72, 0
  br i1 %168, label %200, label %169, !dx.controlflow.hints !22

; <label>:169                                     ; preds = %163
  %170 = and i32 %95, 2
  %171 = icmp eq i32 %170, 0
  br i1 %171, label %182, label %172, !dx.controlflow.hints !23

; <label>:172                                     ; preds = %169
  %173 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %3, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %174 = extractvalue %dx.types.CBufRet.i32 %173, 1
  %175 = add nsw i32 %174, -1
  %176 = add i32 %12, -1
  %177 = add i32 %13, 1
  %178 = call i32 @dx.op.binary.i32(i32 37, i32 %176, i32 0)  ; IMax(a,b)
  %179 = call i32 @dx.op.binary.i32(i32 37, i32 %177, i32 0)  ; IMax(a,b)
  %180 = call i32 @dx.op.binary.i32(i32 38, i32 %178, i32 %175)  ; IMin(a,b)
  %181 = call i32 @dx.op.binary.i32(i32 38, i32 %179, i32 %175)  ; IMin(a,b)
  br label %187

; <label>:182                                     ; preds = %169
  %183 = lshr i32 %72, 9
  %184 = and i32 %183, 127
  %185 = lshr i32 %72, 2
  %186 = and i32 %185, 127
  br label %187

; <label>:187                                     ; preds = %182, %172
  %188 = phi i32 [ %184, %182 ], [ %180, %172 ]
  %189 = phi i32 [ %186, %182 ], [ %181, %172 ]
  %190 = sub i32 %188, %12
  %191 = sub i32 %189, %13
  %192 = mul i32 %190, %190
  %193 = mul i32 %191, %191
  %194 = add nsw i32 %193, %192
  %195 = icmp ult i32 %194, %166
  %196 = select i1 %195, i32 %188, i32 %164
  %197 = select i1 %195, i32 %189, i32 %165
  %198 = select i1 %195, i32 %194, i32 %166
  %199 = select i1 %195, i32 1, i32 %167
  br label %200

; <label>:200                                     ; preds = %187, %163
  %201 = phi i32 [ %164, %163 ], [ %196, %187 ]
  %202 = phi i32 [ %165, %163 ], [ %197, %187 ]
  %203 = phi i32 [ %166, %163 ], [ %198, %187 ]
  %204 = phi i32 [ %167, %163 ], [ %199, %187 ]
  %205 = icmp eq i32 %76, 0
  br i1 %205, label %236, label %206, !dx.controlflow.hints !22

; <label>:206                                     ; preds = %200
  %207 = and i32 %95, 2
  %208 = icmp eq i32 %207, 0
  br i1 %208, label %218, label %209, !dx.controlflow.hints !23

; <label>:209                                     ; preds = %206
  %210 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %3, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %211 = extractvalue %dx.types.CBufRet.i32 %210, 1
  %212 = add nsw i32 %211, -1
  %213 = add i32 %13, 1
  %214 = call i32 @dx.op.binary.i32(i32 37, i32 %12, i32 0)  ; IMax(a,b)
  %215 = call i32 @dx.op.binary.i32(i32 37, i32 %213, i32 0)  ; IMax(a,b)
  %216 = call i32 @dx.op.binary.i32(i32 38, i32 %214, i32 %212)  ; IMin(a,b)
  %217 = call i32 @dx.op.binary.i32(i32 38, i32 %215, i32 %212)  ; IMin(a,b)
  br label %223

; <label>:218                                     ; preds = %206
  %219 = lshr i32 %76, 9
  %220 = and i32 %219, 127
  %221 = lshr i32 %76, 2
  %222 = and i32 %221, 127
  br label %223

; <label>:223                                     ; preds = %218, %209
  %224 = phi i32 [ %220, %218 ], [ %216, %209 ]
  %225 = phi i32 [ %222, %218 ], [ %217, %209 ]
  %226 = sub i32 %224, %12
  %227 = sub i32 %225, %13
  %228 = mul i32 %226, %226
  %229 = mul i32 %227, %227
  %230 = add nsw i32 %229, %228
  %231 = icmp ult i32 %230, %203
  %232 = select i1 %231, i32 %224, i32 %201
  %233 = select i1 %231, i32 %225, i32 %202
  %234 = select i1 %231, i32 %230, i32 %203
  %235 = select i1 %231, i32 1, i32 %204
  br label %236

; <label>:236                                     ; preds = %223, %200
  %237 = phi i32 [ %201, %200 ], [ %232, %223 ]
  %238 = phi i32 [ %202, %200 ], [ %233, %223 ]
  %239 = phi i32 [ %203, %200 ], [ %234, %223 ]
  %240 = phi i32 [ %204, %200 ], [ %235, %223 ]
  %241 = icmp eq i32 %79, 0
  br i1 %241, label %272, label %242, !dx.controlflow.hints !22

; <label>:242                                     ; preds = %236
  %243 = and i32 %95, 2
  %244 = icmp eq i32 %243, 0
  br i1 %244, label %254, label %245, !dx.controlflow.hints !23

; <label>:245                                     ; preds = %242
  %246 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %3, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %247 = extractvalue %dx.types.CBufRet.i32 %246, 1
  %248 = add nsw i32 %247, -1
  %249 = add i32 %13, -1
  %250 = call i32 @dx.op.binary.i32(i32 37, i32 %12, i32 0)  ; IMax(a,b)
  %251 = call i32 @dx.op.binary.i32(i32 37, i32 %249, i32 0)  ; IMax(a,b)
  %252 = call i32 @dx.op.binary.i32(i32 38, i32 %250, i32 %248)  ; IMin(a,b)
  %253 = call i32 @dx.op.binary.i32(i32 38, i32 %251, i32 %248)  ; IMin(a,b)
  br label %259

; <label>:254                                     ; preds = %242
  %255 = lshr i32 %79, 9
  %256 = and i32 %255, 127
  %257 = lshr i32 %79, 2
  %258 = and i32 %257, 127
  br label %259

; <label>:259                                     ; preds = %254, %245
  %260 = phi i32 [ %256, %254 ], [ %252, %245 ]
  %261 = phi i32 [ %258, %254 ], [ %253, %245 ]
  %262 = sub i32 %260, %12
  %263 = sub i32 %261, %13
  %264 = mul i32 %262, %262
  %265 = mul i32 %263, %263
  %266 = add nsw i32 %265, %264
  %267 = icmp ult i32 %266, %239
  %268 = select i1 %267, i32 %260, i32 %237
  %269 = select i1 %267, i32 %261, i32 %238
  %270 = select i1 %267, i32 %266, i32 %239
  %271 = select i1 %267, i32 1, i32 %240
  br label %272

; <label>:272                                     ; preds = %259, %236
  %273 = phi i32 [ %237, %236 ], [ %268, %259 ]
  %274 = phi i32 [ %238, %236 ], [ %269, %259 ]
  %275 = phi i32 [ %239, %236 ], [ %270, %259 ]
  %276 = phi i32 [ %240, %236 ], [ %271, %259 ]
  %277 = icmp eq i32 %83, 0
  br i1 %277, label %309, label %278, !dx.controlflow.hints !22

; <label>:278                                     ; preds = %272
  %279 = and i32 %95, 2
  %280 = icmp eq i32 %279, 0
  br i1 %280, label %291, label %281, !dx.controlflow.hints !23

; <label>:281                                     ; preds = %278
  %282 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %3, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %283 = extractvalue %dx.types.CBufRet.i32 %282, 1
  %284 = add nsw i32 %283, -1
  %285 = add i32 %12, 1
  %286 = add i32 %13, 1
  %287 = call i32 @dx.op.binary.i32(i32 37, i32 %285, i32 0)  ; IMax(a,b)
  %288 = call i32 @dx.op.binary.i32(i32 37, i32 %286, i32 0)  ; IMax(a,b)
  %289 = call i32 @dx.op.binary.i32(i32 38, i32 %287, i32 %284)  ; IMin(a,b)
  %290 = call i32 @dx.op.binary.i32(i32 38, i32 %288, i32 %284)  ; IMin(a,b)
  br label %296

; <label>:291                                     ; preds = %278
  %292 = lshr i32 %83, 9
  %293 = and i32 %292, 127
  %294 = lshr i32 %83, 2
  %295 = and i32 %294, 127
  br label %296

; <label>:296                                     ; preds = %291, %281
  %297 = phi i32 [ %293, %291 ], [ %289, %281 ]
  %298 = phi i32 [ %295, %291 ], [ %290, %281 ]
  %299 = sub i32 %297, %12
  %300 = sub i32 %298, %13
  %301 = mul i32 %299, %299
  %302 = mul i32 %300, %300
  %303 = add nsw i32 %302, %301
  %304 = icmp ult i32 %303, %275
  %305 = select i1 %304, i32 %297, i32 %273
  %306 = select i1 %304, i32 %298, i32 %274
  %307 = select i1 %304, i32 %303, i32 %275
  %308 = select i1 %304, i32 1, i32 %276
  br label %309

; <label>:309                                     ; preds = %296, %272
  %310 = phi i32 [ %273, %272 ], [ %305, %296 ]
  %311 = phi i32 [ %274, %272 ], [ %306, %296 ]
  %312 = phi i32 [ %275, %272 ], [ %307, %296 ]
  %313 = phi i32 [ %276, %272 ], [ %308, %296 ]
  %314 = icmp eq i32 %87, 0
  br i1 %314, label %345, label %315, !dx.controlflow.hints !22

; <label>:315                                     ; preds = %309
  %316 = and i32 %95, 2
  %317 = icmp eq i32 %316, 0
  br i1 %317, label %327, label %318, !dx.controlflow.hints !23

; <label>:318                                     ; preds = %315
  %319 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %3, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %320 = extractvalue %dx.types.CBufRet.i32 %319, 1
  %321 = add nsw i32 %320, -1
  %322 = add i32 %12, 1
  %323 = call i32 @dx.op.binary.i32(i32 37, i32 %322, i32 0)  ; IMax(a,b)
  %324 = call i32 @dx.op.binary.i32(i32 37, i32 %13, i32 0)  ; IMax(a,b)
  %325 = call i32 @dx.op.binary.i32(i32 38, i32 %323, i32 %321)  ; IMin(a,b)
  %326 = call i32 @dx.op.binary.i32(i32 38, i32 %324, i32 %321)  ; IMin(a,b)
  br label %332

; <label>:327                                     ; preds = %315
  %328 = lshr i32 %87, 9
  %329 = and i32 %328, 127
  %330 = lshr i32 %87, 2
  %331 = and i32 %330, 127
  br label %332

; <label>:332                                     ; preds = %327, %318
  %333 = phi i32 [ %329, %327 ], [ %325, %318 ]
  %334 = phi i32 [ %331, %327 ], [ %326, %318 ]
  %335 = sub i32 %333, %12
  %336 = sub i32 %334, %13
  %337 = mul i32 %335, %335
  %338 = mul i32 %336, %336
  %339 = add nsw i32 %338, %337
  %340 = icmp ult i32 %339, %312
  %341 = select i1 %340, i32 %333, i32 %310
  %342 = select i1 %340, i32 %334, i32 %311
  %343 = select i1 %340, i32 %339, i32 %312
  %344 = select i1 %340, i32 1, i32 %313
  br label %345

; <label>:345                                     ; preds = %332, %309
  %346 = phi i32 [ %310, %309 ], [ %341, %332 ]
  %347 = phi i32 [ %311, %309 ], [ %342, %332 ]
  %348 = phi i32 [ %312, %309 ], [ %343, %332 ]
  %349 = phi i32 [ %313, %309 ], [ %344, %332 ]
  %350 = icmp eq i32 %91, 0
  br i1 %350, label %382, label %351, !dx.controlflow.hints !22

; <label>:351                                     ; preds = %345
  %352 = and i32 %95, 2
  %353 = icmp eq i32 %352, 0
  br i1 %353, label %364, label %354, !dx.controlflow.hints !23

; <label>:354                                     ; preds = %351
  %355 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %3, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %356 = extractvalue %dx.types.CBufRet.i32 %355, 1
  %357 = add nsw i32 %356, -1
  %358 = add i32 %12, 1
  %359 = add i32 %13, -1
  %360 = call i32 @dx.op.binary.i32(i32 37, i32 %358, i32 0)  ; IMax(a,b)
  %361 = call i32 @dx.op.binary.i32(i32 37, i32 %359, i32 0)  ; IMax(a,b)
  %362 = call i32 @dx.op.binary.i32(i32 38, i32 %360, i32 %357)  ; IMin(a,b)
  %363 = call i32 @dx.op.binary.i32(i32 38, i32 %361, i32 %357)  ; IMin(a,b)
  br label %369

; <label>:364                                     ; preds = %351
  %365 = lshr i32 %91, 9
  %366 = and i32 %365, 127
  %367 = lshr i32 %91, 2
  %368 = and i32 %367, 127
  br label %369

; <label>:369                                     ; preds = %364, %354
  %370 = phi i32 [ %366, %364 ], [ %362, %354 ]
  %371 = phi i32 [ %368, %364 ], [ %363, %354 ]
  %372 = sub i32 %370, %12
  %373 = sub i32 %371, %13
  %374 = mul i32 %372, %372
  %375 = mul i32 %373, %373
  %376 = add nsw i32 %375, %374
  %377 = icmp ult i32 %376, %348
  %378 = select i1 %377, i32 %370, i32 %346
  %379 = select i1 %377, i32 %371, i32 %347
  %380 = select i1 %377, i32 %376, i32 %348
  %381 = select i1 %377, i32 1, i32 %349
  br label %382

; <label>:382                                     ; preds = %369, %345
  %383 = phi i32 [ %346, %345 ], [ %378, %369 ]
  %384 = phi i32 [ %347, %345 ], [ %379, %369 ]
  %385 = phi i32 [ %348, %345 ], [ %380, %369 ]
  %386 = phi i32 [ %349, %345 ], [ %381, %369 ]
  %387 = icmp eq i32 %95, 0
  %388 = and i32 %95, 2
  br i1 %387, label %416, label %389, !dx.controlflow.hints !22

; <label>:389                                     ; preds = %382
  %390 = icmp eq i32 %388, 0
  br i1 %390, label %399, label %391, !dx.controlflow.hints !23

; <label>:391                                     ; preds = %389
  %392 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %3, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %393 = extractvalue %dx.types.CBufRet.i32 %392, 1
  %394 = add nsw i32 %393, -1
  %395 = call i32 @dx.op.binary.i32(i32 37, i32 %12, i32 0)  ; IMax(a,b)
  %396 = call i32 @dx.op.binary.i32(i32 37, i32 %13, i32 0)  ; IMax(a,b)
  %397 = call i32 @dx.op.binary.i32(i32 38, i32 %395, i32 %394)  ; IMin(a,b)
  %398 = call i32 @dx.op.binary.i32(i32 38, i32 %396, i32 %394)  ; IMin(a,b)
  br label %404

; <label>:399                                     ; preds = %389
  %400 = lshr i32 %95, 9
  %401 = and i32 %400, 127
  %402 = lshr i32 %95, 2
  %403 = and i32 %402, 127
  br label %404

; <label>:404                                     ; preds = %399, %391
  %405 = phi i32 [ %401, %399 ], [ %397, %391 ]
  %406 = phi i32 [ %403, %399 ], [ %398, %391 ]
  %407 = sub i32 %405, %12
  %408 = sub i32 %406, %13
  %409 = mul i32 %407, %407
  %410 = mul i32 %408, %408
  %411 = add nsw i32 %410, %409
  %412 = icmp ult i32 %411, %385
  %413 = select i1 %412, i32 %405, i32 %383
  %414 = select i1 %412, i32 %406, i32 %384
  %415 = select i1 %412, i32 1, i32 %386
  br label %416

; <label>:416                                     ; preds = %404, %382
  %417 = phi i32 [ %413, %404 ], [ %383, %382 ]
  %418 = phi i32 [ %414, %404 ], [ %384, %382 ]
  %419 = phi i32 [ %415, %404 ], [ %386, %382 ]
  %420 = icmp eq i32 %388, 0
  br i1 %420, label %421, label %435, !dx.controlflow.hints !24

; <label>:421                                     ; preds = %416
  %422 = icmp ne i32 %419, 0
  %423 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %4, i32 435)  ; CBufferLoadLegacy(handle,regIndex)
  %424 = extractvalue %dx.types.CBufRet.i32 %423, 0
  %425 = call i32 @dx.op.binary.i32(i32 40, i32 128, i32 %424)  ; UMin(a,b)
  %426 = add i32 %425, %417
  %427 = add i32 %425, %418
  %428 = shl i32 %426, 9
  %429 = and i32 %428, 65024
  %430 = shl i32 %427, 2
  %431 = and i32 %430, 508
  %432 = or i32 %429, %431
  %433 = or i32 %432, 1
  %434 = select i1 %422, i32 %433, i32 0
  call void @dx.op.textureStore.i32(i32 67, %dx.types.Handle %1, i32 %12, i32 %13, i32 undef, i32 %434, i32 %434, i32 %434, i32 %434, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %436

; <label>:435                                     ; preds = %416
  call void @dx.op.textureStore.i32(i32 67, %dx.types.Handle %1, i32 %12, i32 %13, i32 undef, i32 %95, i32 %95, i32 %95, i32 %95, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %436

; <label>:436                                     ; preds = %435, %421, %52
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
!13 = !{void ()* @cs_water_bounds_sdf_lds_offset_1, !"cs_water_bounds_sdf_lds_offset_1", null, !4, !14}
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

