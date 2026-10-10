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
; shader hash: 3acb901b447711e45ce9c64167b42d55
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
;                                   texture    byte         r/o      T0             t1     1
;                                   texture    byte         r/o      T1             t3     1
;                                   texture    byte         r/o      T2            t10     1
;                                   texture    byte         r/o      T3            t11     1
;                                   texture    byte         r/o      T4            t12     1
;                                   texture    byte         r/o      T5            t13     1
;                                   texture    byte         r/o      T6            t14     1
;                                   texture    byte         r/o      T7            t29     1
;                                   texture    byte         r/o      T8            t31     1
;                                   texture    byte         r/o      T9            t32     1
;                                   texture    byte         r/o     T10            t34     1
;                                       UAV    byte         r/w      U0             u1     1
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.ResRet.i32 = type { i32, i32, i32, i32, i32 }
%dx.types.ResRet.f32 = type { float, float, float, float, i32 }
%dx.types.CBufRet.f32 = type { float, float, float, float }
%struct.ByteAddressBuffer = type { i32 }
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

@"\01?tiledSharedMinDiagonal@@3PAV?$vector@M$02@@A.v.1dim" = addrspace(3) global [192 x float] undef, align 4
@"\01?tiledSharedMaxDiagonal@@3PAV?$vector@M$02@@A.v.1dim" = addrspace(3) global [192 x float] undef, align 4

define void @splined_cluster_bound_gen_pass() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 34, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 32, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 31, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 29, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 14, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 13, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 12, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 11, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = alloca [4 x float], align 4
  %15 = alloca [4 x float], align 4
  %16 = alloca [4 x float], align 4
  %17 = alloca [4 x float], align 4
  %18 = call i32 @dx.op.groupId.i32(i32 94, i32 0)  ; GroupId(component)
  %19 = call i32 @dx.op.flattenedThreadIdInGroup.i32(i32 96)  ; FlattenedThreadIdInGroup()
  %20 = alloca [3 x float], align 4
  %21 = alloca [3 x float], align 4
  %22 = alloca [3 x float], align 4
  %23 = mul i32 %18, 12
  %24 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %23, i32 undef)  ; BufferLoad(srv,index,wot)
  %25 = extractvalue %dx.types.ResRet.i32 %24, 0
  %26 = extractvalue %dx.types.ResRet.i32 %24, 1
  %27 = extractvalue %dx.types.ResRet.i32 %24, 2
  %28 = mul i32 %25, 12
  %29 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %28, i32 undef)  ; BufferLoad(srv,index,wot)
  %30 = extractvalue %dx.types.ResRet.i32 %29, 0
  %31 = extractvalue %dx.types.ResRet.i32 %29, 1
  %32 = lshr i32 %30, 28
  %33 = and i32 %31, 65535
  %34 = shl nuw nsw i32 %32, 16
  %35 = or i32 %34, %33
  %36 = add i32 %28, 1572864
  %37 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %36, i32 undef)  ; BufferLoad(srv,index,wot)
  %38 = extractvalue %dx.types.ResRet.i32 %37, 2
  %39 = add i32 %28, 786432
  %40 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %39, i32 undef)  ; BufferLoad(srv,index,wot)
  %41 = extractvalue %dx.types.ResRet.i32 %40, 0
  %42 = shl nuw nsw i32 %35, 5
  %43 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %42, i32 undef)  ; BufferLoad(srv,index,wot)
  %44 = extractvalue %dx.types.ResRet.f32 %43, 0
  %45 = extractvalue %dx.types.ResRet.f32 %43, 1
  %46 = extractvalue %dx.types.ResRet.f32 %43, 2
  %47 = or i32 %42, 16
  %48 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %47, i32 undef)  ; BufferLoad(srv,index,wot)
  %49 = extractvalue %dx.types.ResRet.f32 %48, 0
  %50 = extractvalue %dx.types.ResRet.f32 %48, 1
  %51 = extractvalue %dx.types.ResRet.f32 %48, 2
  %52 = call float @dx.op.binary.f32(i32 35, float %50, float %51), !dx.precise !24  ; FMax(a,b)
  %53 = call float @dx.op.binary.f32(i32 35, float %49, float %52), !dx.precise !24  ; FMax(a,b)
  %54 = add i32 %38, %27
  %55 = shl i32 %54, 2
  %56 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %55, i32 undef)  ; BufferLoad(srv,index,wot)
  %57 = extractvalue %dx.types.ResRet.i32 %56, 0
  %58 = shl i32 %57, 5
  %59 = or i32 %58, 16
  %60 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %59, i32 undef)  ; BufferLoad(srv,index,wot)
  %61 = extractvalue %dx.types.ResRet.i32 %60, 3
  %62 = lshr i32 %61, 16
  %63 = shl i32 %30, 3
  %64 = and i32 %63, 2147483640
  %65 = or i32 %64, 4
  %66 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %65, i32 undef)  ; BufferLoad(srv,index,wot)
  %67 = extractvalue %dx.types.ResRet.i32 %66, 0
  %68 = shl i32 %67, 4
  %69 = and i32 %68, 1048560
  %70 = icmp ult i32 %19, %62
  %71 = icmp ult i32 %19, 64
  %72 = and i1 %71, %70
  br i1 %72, label %73, label %1039, !dx.controlflow.hints !25

; <label>:73                                      ; preds = %0
  %74 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %55, i32 undef)  ; BufferLoad(srv,index,wot)
  %75 = extractvalue %dx.types.ResRet.i32 %74, 0
  %76 = shl i32 %75, 6
  %77 = add i32 %76, %19
  %78 = mul i32 %77, 3
  %79 = mul i32 %77, 6
  %80 = and i32 %79, -4
  %81 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %80, i32 undef)  ; BufferLoad(srv,index,wot)
  %82 = extractvalue %dx.types.ResRet.i32 %81, 0
  %83 = extractvalue %dx.types.ResRet.i32 %81, 1
  %84 = and i32 %78, 1
  %85 = icmp eq i32 %84, 0
  %86 = lshr i32 %82, 16
  %87 = and i32 %83, 65535
  %88 = lshr i32 %83, 16
  %89 = and i32 %82, 65535
  %90 = select i1 %85, i32 %89, i32 %86
  %91 = select i1 %85, i32 %86, i32 %87
  %92 = select i1 %85, i32 %87, i32 %88
  %93 = shl nuw nsw i32 %90, 3
  %94 = lshr i32 %90, 7
  %95 = add i32 %94, %41
  %96 = shl i32 %95, 2
  %97 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %96, i32 undef)  ; BufferLoad(srv,index,wot)
  %98 = extractvalue %dx.types.ResRet.i32 %97, 0
  %99 = shl i32 %98, 10
  %100 = and i32 %93, 1016
  %101 = or i32 %99, %100
  %102 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %101, i32 undef)  ; BufferLoad(srv,index,wot)
  %103 = extractvalue %dx.types.ResRet.i32 %102, 0
  %104 = extractvalue %dx.types.ResRet.i32 %102, 1
  %105 = shl nuw nsw i32 %91, 3
  %106 = lshr i32 %91, 7
  %107 = add i32 %106, %41
  %108 = shl i32 %107, 2
  %109 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %108, i32 undef)  ; BufferLoad(srv,index,wot)
  %110 = extractvalue %dx.types.ResRet.i32 %109, 0
  %111 = shl i32 %110, 10
  %112 = and i32 %105, 1016
  %113 = or i32 %111, %112
  %114 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %113, i32 undef)  ; BufferLoad(srv,index,wot)
  %115 = extractvalue %dx.types.ResRet.i32 %114, 0
  %116 = extractvalue %dx.types.ResRet.i32 %114, 1
  %117 = shl nuw nsw i32 %92, 3
  %118 = lshr i32 %92, 7
  %119 = add i32 %118, %41
  %120 = shl i32 %119, 2
  %121 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %120, i32 undef)  ; BufferLoad(srv,index,wot)
  %122 = extractvalue %dx.types.ResRet.i32 %121, 0
  %123 = shl i32 %122, 10
  %124 = and i32 %117, 1016
  %125 = or i32 %123, %124
  %126 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %125, i32 undef)  ; BufferLoad(srv,index,wot)
  %127 = extractvalue %dx.types.ResRet.i32 %126, 0
  %128 = extractvalue %dx.types.ResRet.i32 %126, 1
  %129 = and i32 %103, 2097151
  %130 = uitofp i32 %129 to float
  %131 = lshr i32 %103, 21
  %132 = shl i32 %104, 11
  %133 = and i32 %132, 2095104
  %134 = or i32 %133, %131
  %135 = uitofp i32 %134 to float
  %136 = lshr i32 %104, 10
  %137 = and i32 %136, 2097151
  %138 = uitofp i32 %137 to float
  %139 = fdiv float %130, 2.097151e+06
  %140 = fdiv float %135, 2.097151e+06
  %141 = fdiv float %138, 2.097151e+06
  %142 = fmul float %139, 2.000000e+00
  %143 = fmul float %140, 2.000000e+00
  %144 = fmul float %141, 2.000000e+00
  %145 = fadd float %142, -1.000000e+00
  %146 = fadd float %143, -1.000000e+00
  %147 = fadd float %144, -1.000000e+00
  %148 = fmul float %53, %145
  %149 = fmul float %53, %146
  %150 = fmul float %53, %147
  %151 = fadd float %44, %148
  %152 = fadd float %45, %149
  %153 = fadd float %46, %150
  %154 = and i32 %115, 2097151
  %155 = uitofp i32 %154 to float
  %156 = lshr i32 %115, 21
  %157 = shl i32 %116, 11
  %158 = and i32 %157, 2095104
  %159 = or i32 %158, %156
  %160 = uitofp i32 %159 to float
  %161 = lshr i32 %116, 10
  %162 = and i32 %161, 2097151
  %163 = uitofp i32 %162 to float
  %164 = fdiv float %155, 2.097151e+06
  %165 = fdiv float %160, 2.097151e+06
  %166 = fdiv float %163, 2.097151e+06
  %167 = fmul float %164, 2.000000e+00
  %168 = fmul float %165, 2.000000e+00
  %169 = fmul float %166, 2.000000e+00
  %170 = fadd float %167, -1.000000e+00
  %171 = fadd float %168, -1.000000e+00
  %172 = fadd float %169, -1.000000e+00
  %173 = fmul float %53, %170
  %174 = fmul float %53, %171
  %175 = fmul float %53, %172
  %176 = fadd float %44, %173
  %177 = fadd float %45, %174
  %178 = fadd float %46, %175
  %179 = and i32 %127, 2097151
  %180 = uitofp i32 %179 to float
  %181 = lshr i32 %127, 21
  %182 = shl i32 %128, 11
  %183 = and i32 %182, 2095104
  %184 = or i32 %183, %181
  %185 = uitofp i32 %184 to float
  %186 = lshr i32 %128, 10
  %187 = and i32 %186, 2097151
  %188 = uitofp i32 %187 to float
  %189 = fdiv float %180, 2.097151e+06
  %190 = fdiv float %185, 2.097151e+06
  %191 = fdiv float %188, 2.097151e+06
  %192 = fmul float %189, 2.000000e+00
  %193 = fmul float %190, 2.000000e+00
  %194 = fmul float %191, 2.000000e+00
  %195 = fadd float %192, -1.000000e+00
  %196 = fadd float %193, -1.000000e+00
  %197 = fadd float %194, -1.000000e+00
  %198 = fmul float %53, %195
  %199 = fmul float %53, %196
  %200 = fmul float %53, %197
  %201 = fadd float %44, %198
  %202 = fadd float %45, %199
  %203 = fadd float %46, %200
  %204 = getelementptr [3 x float], [3 x float]* %20, i32 0, i32 0
  %205 = getelementptr [3 x float], [3 x float]* %21, i32 0, i32 0
  %206 = getelementptr [3 x float], [3 x float]* %22, i32 0, i32 0
  store float %151, float* %204, align 4
  store float %152, float* %205, align 4
  store float %153, float* %206, align 4
  %207 = getelementptr [3 x float], [3 x float]* %20, i32 0, i32 1
  %208 = getelementptr [3 x float], [3 x float]* %21, i32 0, i32 1
  %209 = getelementptr [3 x float], [3 x float]* %22, i32 0, i32 1
  store float %176, float* %207, align 4
  store float %177, float* %208, align 4
  store float %178, float* %209, align 4
  %210 = getelementptr [3 x float], [3 x float]* %20, i32 0, i32 2
  %211 = getelementptr [3 x float], [3 x float]* %21, i32 0, i32 2
  %212 = getelementptr [3 x float], [3 x float]* %22, i32 0, i32 2
  store float %201, float* %210, align 4
  store float %202, float* %211, align 4
  store float %203, float* %212, align 4
  br label %213

; <label>:213                                     ; preds = %978, %73
  %214 = phi i32 [ 0, %73 ], [ %1015, %978 ]
  %215 = getelementptr [3 x float], [3 x float]* %20, i32 0, i32 %214
  %216 = getelementptr [3 x float], [3 x float]* %21, i32 0, i32 %214
  %217 = getelementptr [3 x float], [3 x float]* %22, i32 0, i32 %214
  %218 = or i32 %69, 4
  %219 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %218, i32 undef)  ; BufferLoad(srv,index,wot)
  %220 = extractvalue %dx.types.ResRet.i32 %219, 0
  %221 = lshr i32 %220, 21
  %222 = and i32 %221, 7
  %223 = lshr i32 %220, 13
  %224 = lshr i32 %220, 15
  %225 = and i32 %224, 63
  %226 = and i32 %223, 3
  %227 = add nuw nsw i32 %225, 621
  %228 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 %227)  ; CBufferLoadLegacy(handle,regIndex)
  %229 = extractvalue %dx.types.CBufRet.f32 %228, 0
  %230 = extractvalue %dx.types.CBufRet.f32 %228, 1
  %231 = extractvalue %dx.types.CBufRet.f32 %228, 2
  %232 = extractvalue %dx.types.CBufRet.f32 %228, 3
  %233 = getelementptr inbounds [4 x float], [4 x float]* %17, i32 0, i32 0
  store float %229, float* %233, align 4
  %234 = getelementptr inbounds [4 x float], [4 x float]* %17, i32 0, i32 1
  store float %230, float* %234, align 4
  %235 = getelementptr inbounds [4 x float], [4 x float]* %17, i32 0, i32 2
  store float %231, float* %235, align 4
  %236 = getelementptr inbounds [4 x float], [4 x float]* %17, i32 0, i32 3
  store float %232, float* %236, align 4
  %237 = getelementptr inbounds [4 x float], [4 x float]* %17, i32 0, i32 %226
  %238 = load float, float* %237, align 4, !tbaa !26, !noalias !30
  %239 = lshr i32 %220, 6
  %240 = lshr i32 %220, 8
  %241 = and i32 %240, 31
  %242 = and i32 %239, 3
  %243 = add nuw nsw i32 %241, 589
  %244 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 %243)  ; CBufferLoadLegacy(handle,regIndex)
  %245 = extractvalue %dx.types.CBufRet.f32 %244, 0
  %246 = extractvalue %dx.types.CBufRet.f32 %244, 1
  %247 = extractvalue %dx.types.CBufRet.f32 %244, 2
  %248 = extractvalue %dx.types.CBufRet.f32 %244, 3
  %249 = getelementptr inbounds [4 x float], [4 x float]* %16, i32 0, i32 0
  store float %245, float* %249, align 4
  %250 = getelementptr inbounds [4 x float], [4 x float]* %16, i32 0, i32 1
  store float %246, float* %250, align 4
  %251 = getelementptr inbounds [4 x float], [4 x float]* %16, i32 0, i32 2
  store float %247, float* %251, align 4
  %252 = getelementptr inbounds [4 x float], [4 x float]* %16, i32 0, i32 3
  store float %248, float* %252, align 4
  %253 = getelementptr inbounds [4 x float], [4 x float]* %16, i32 0, i32 %242
  %254 = load float, float* %253, align 4, !tbaa !26, !noalias !30
  %255 = icmp eq i32 %222, 1
  br i1 %255, label %267, label %256, !dx.controlflow.hints !33

; <label>:256                                     ; preds = %213
  %257 = icmp eq i32 %222, 2
  br i1 %257, label %267, label %258, !dx.controlflow.hints !34

; <label>:258                                     ; preds = %256
  %259 = icmp eq i32 %222, 3
  br i1 %259, label %267, label %260, !dx.controlflow.hints !35

; <label>:260                                     ; preds = %258
  %261 = icmp eq i32 %222, 4
  br i1 %261, label %267, label %262, !dx.controlflow.hints !36

; <label>:262                                     ; preds = %260
  %263 = icmp eq i32 %222, 5
  %264 = select i1 %263, float 0xBE6777A5C0000000, float 1.000000e+00
  %265 = select i1 %263, float -1.000000e+00, float 0.000000e+00
  %266 = select i1 %263, float 1.000000e+00, float 0.000000e+00
  br label %267

; <label>:267                                     ; preds = %262, %260, %258, %256, %213
  %268 = phi float [ -1.000000e+00, %213 ], [ 0xBE6777A5C0000000, %256 ], [ 0xBE6777A5C0000000, %258 ], [ 0xBE6777A5C0000000, %260 ], [ %264, %262 ]
  %269 = phi float [ 0xBE7777A5C0000000, %213 ], [ 1.000000e+00, %256 ], [ -1.000000e+00, %258 ], [ 0.000000e+00, %260 ], [ 0.000000e+00, %262 ]
  %270 = phi float [ 0.000000e+00, %213 ], [ 0.000000e+00, %256 ], [ 0.000000e+00, %258 ], [ 1.000000e+00, %260 ], [ %265, %262 ]
  %271 = phi float [ 0x3E7777A5C0000000, %213 ], [ -1.000000e+00, %256 ], [ 1.000000e+00, %258 ], [ 0.000000e+00, %260 ], [ 0.000000e+00, %262 ]
  %272 = phi float [ -1.000000e+00, %213 ], [ 0xBE6777A5C0000000, %256 ], [ 0xBE6777A5C0000000, %258 ], [ 1.000000e+00, %260 ], [ 1.000000e+00, %262 ]
  %273 = phi float [ 0.000000e+00, %213 ], [ 0.000000e+00, %256 ], [ 0.000000e+00, %258 ], [ -1.000000e+00, %260 ], [ %266, %262 ]
  %274 = phi float [ 1.000000e+00, %213 ], [ 1.000000e+00, %256 ], [ 1.000000e+00, %258 ], [ 0xBE6777A5C0000000, %260 ], [ %264, %262 ]
  %275 = lshr i32 %220, 2
  %276 = and i32 %275, 15
  %277 = and i32 %220, 3
  %278 = add nuw nsw i32 %276, 573
  %279 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 %278)  ; CBufferLoadLegacy(handle,regIndex)
  %280 = extractvalue %dx.types.CBufRet.f32 %279, 0
  %281 = extractvalue %dx.types.CBufRet.f32 %279, 1
  %282 = extractvalue %dx.types.CBufRet.f32 %279, 2
  %283 = extractvalue %dx.types.CBufRet.f32 %279, 3
  %284 = getelementptr inbounds [4 x float], [4 x float]* %15, i32 0, i32 0
  store float %280, float* %284, align 4
  %285 = getelementptr inbounds [4 x float], [4 x float]* %15, i32 0, i32 1
  store float %281, float* %285, align 4
  %286 = getelementptr inbounds [4 x float], [4 x float]* %15, i32 0, i32 2
  store float %282, float* %286, align 4
  %287 = getelementptr inbounds [4 x float], [4 x float]* %15, i32 0, i32 3
  store float %283, float* %287, align 4
  %288 = getelementptr inbounds [4 x float], [4 x float]* %15, i32 0, i32 %277
  %289 = load float, float* %288, align 4, !tbaa !26, !noalias !30
  %290 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %69, i32 undef)  ; BufferLoad(srv,index,wot)
  %291 = extractvalue %dx.types.ResRet.i32 %290, 0
  %292 = lshr i32 %291, 24
  %293 = lshr i32 %291, 26
  %294 = and i32 %292, 3
  %295 = add nuw nsw i32 %293, 509
  %296 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 %295)  ; CBufferLoadLegacy(handle,regIndex)
  %297 = extractvalue %dx.types.CBufRet.f32 %296, 0
  %298 = extractvalue %dx.types.CBufRet.f32 %296, 1
  %299 = extractvalue %dx.types.CBufRet.f32 %296, 2
  %300 = extractvalue %dx.types.CBufRet.f32 %296, 3
  %301 = getelementptr inbounds [4 x float], [4 x float]* %14, i32 0, i32 0
  store float %297, float* %301, align 4
  %302 = getelementptr inbounds [4 x float], [4 x float]* %14, i32 0, i32 1
  store float %298, float* %302, align 4
  %303 = getelementptr inbounds [4 x float], [4 x float]* %14, i32 0, i32 2
  store float %299, float* %303, align 4
  %304 = getelementptr inbounds [4 x float], [4 x float]* %14, i32 0, i32 3
  store float %300, float* %304, align 4
  %305 = getelementptr inbounds [4 x float], [4 x float]* %14, i32 0, i32 %294
  %306 = load float, float* %305, align 4, !tbaa !26, !noalias !30
  %307 = or i32 %69, 8
  %308 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %307, i32 undef)  ; BufferLoad(srv,index,wot)
  %309 = extractvalue %dx.types.ResRet.i32 %308, 0
  %310 = and i32 %309, 65535
  %311 = lshr i32 %220, 24
  %312 = and i32 %311, 63
  %313 = add nuw nsw i32 %310, %312
  %314 = load float, float* %215, align 4
  %315 = load float, float* %216, align 4
  %316 = load float, float* %217, align 4
  %317 = fmul fast float %314, %268
  %318 = call float @dx.op.tertiary.f32(i32 46, float %315, float %269, float %317)  ; FMad(a,b,c)
  %319 = call float @dx.op.tertiary.f32(i32 46, float %316, float %270, float %318)  ; FMad(a,b,c)
  %320 = fmul fast float %314, %271
  %321 = call float @dx.op.tertiary.f32(i32 46, float %315, float %272, float %320)  ; FMad(a,b,c)
  %322 = fmul fast float %314, %273
  %323 = call float @dx.op.tertiary.f32(i32 46, float %316, float %274, float %322)  ; FMad(a,b,c)
  %324 = fmul fast float %319, %289
  %325 = fmul fast float %321, %289
  %326 = fmul fast float %323, %289
  %327 = fadd fast float %325, %238
  %328 = fadd fast float %326, %254
  %329 = fsub fast float %324, %306
  %330 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 717)  ; CBufferLoadLegacy(handle,regIndex)
  %331 = extractvalue %dx.types.CBufRet.f32 %330, 2
  %332 = lshr i32 %291, 8
  %333 = and i32 %332, 65535
  %334 = uitofp i32 %333 to float
  %335 = extractvalue %dx.types.CBufRet.f32 %330, 3
  %336 = fmul fast float %335, 0x3EF0001000000000
  %337 = fmul fast float %336, %334
  %338 = fadd fast float %337, %331
  %339 = fmul fast float %338, %329
  %340 = or i32 %69, 12
  %341 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %340, i32 undef)  ; BufferLoad(srv,index,wot)
  %342 = extractvalue %dx.types.ResRet.i32 %341, 0
  %343 = lshr i32 %342, 5
  %344 = and i32 %343, 1048575
  %345 = uitofp i32 %344 to float
  %346 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 718)  ; CBufferLoadLegacy(handle,regIndex)
  %347 = extractvalue %dx.types.CBufRet.f32 %346, 0
  %348 = fmul fast float %347, 0x3EB0000100000000
  %349 = fmul fast float %348, %345
  %350 = fadd fast float %349, %339
  %351 = add nuw nsw i32 %310, 1
  %352 = icmp ult i32 %351, %313
  br i1 %352, label %353, label %371

; <label>:353                                     ; preds = %267
  br label %354

; <label>:354                                     ; preds = %367, %353
  %355 = phi i32 [ %368, %367 ], [ %351, %353 ]
  %356 = mul i32 %355, 80
  %357 = add i32 %356, 60
  %358 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %357, i32 undef)  ; BufferLoad(srv,index,wot)
  %359 = extractvalue %dx.types.ResRet.i32 %358, 0
  %360 = and i32 %359, 1048575
  %361 = uitofp i32 %360 to float
  %362 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 718)  ; CBufferLoadLegacy(handle,regIndex)
  %363 = extractvalue %dx.types.CBufRet.f32 %362, 0
  %364 = fmul fast float %363, 0x3EB0000100000000
  %365 = fmul fast float %364, %361
  %366 = fcmp fast ogt float %365, %350
  br i1 %366, label %373, label %367, !dx.controlflow.hints !37

; <label>:367                                     ; preds = %354
  %368 = add i32 %355, 1
  %369 = icmp ult i32 %368, %313
  br i1 %369, label %354, label %370

; <label>:370                                     ; preds = %367
  br label %371

; <label>:371                                     ; preds = %370, %267
  %372 = call i32 @dx.op.binary.i32(i32 39, i32 1, i32 %313)  ; UMax(a,b)
  br label %374

; <label>:373                                     ; preds = %354
  br label %374

; <label>:374                                     ; preds = %373, %371
  %375 = phi i32 [ %372, %371 ], [ %355, %373 ]
  %376 = mul i32 %375, 80
  %377 = add i32 %376, -80
  %378 = add i32 %376, -20
  %379 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %378, i32 undef)  ; BufferLoad(srv,index,wot)
  %380 = extractvalue %dx.types.ResRet.i32 %379, 0
  %381 = and i32 %380, 1048575
  %382 = uitofp i32 %381 to float
  %383 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 718)  ; CBufferLoadLegacy(handle,regIndex)
  %384 = extractvalue %dx.types.CBufRet.f32 %383, 0
  %385 = fmul fast float %384, 0x3EB0000100000000
  %386 = fmul fast float %385, %382
  %387 = fsub fast float %350, %386
  %388 = add i32 %376, -76
  %389 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %388, i32 undef)  ; BufferLoad(srv,index,wot)
  %390 = extractvalue %dx.types.ResRet.i32 %389, 0
  %391 = and i32 %390, 1048575
  %392 = uitofp i32 %391 to float
  %393 = extractvalue %dx.types.CBufRet.f32 %383, 1
  %394 = fmul fast float %393, 0x3EB0000100000000
  %395 = fmul fast float %394, %392
  %396 = fdiv fast float %387, %395
  %397 = add i32 %376, -12
  %398 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %397, i32 undef)  ; BufferLoad(srv,index,wot)
  %399 = extractvalue %dx.types.ResRet.i32 %398, 0
  %400 = and i32 %399, 3
  %401 = lshr i32 %399, 2
  %402 = and i32 %401, 1023
  %403 = lshr i32 %399, 12
  %404 = and i32 %403, 1023
  %405 = lshr i32 %399, 22
  %406 = uitofp i32 %402 to float
  %407 = fmul fast float %406, 0x3F56ABF460000000
  %408 = fadd fast float %407, 0xBFE6A09E60000000
  %409 = uitofp i32 %404 to float
  %410 = fmul fast float %409, 0x3F56ABF460000000
  %411 = fadd fast float %410, 0xBFE6A09E60000000
  %412 = uitofp i32 %405 to float
  %413 = fmul fast float %412, 0x3F56ABF460000000
  %414 = fadd fast float %413, 0xBFE6A09E60000000
  %415 = call float @dx.op.dot3.f32(i32 55, float %408, float %411, float %414, float %408, float %411, float %414)  ; Dot3(ax,ay,az,bx,by,bz)
  %416 = fcmp fast ogt float %415, 1.000000e+00
  %417 = fsub fast float 1.000000e+00, %415
  %418 = call float @dx.op.unary.f32(i32 24, float %417)  ; Sqrt(value)
  %419 = select i1 %416, float 0.000000e+00, float %418
  %420 = icmp eq i32 %400, 0
  br i1 %420, label %427, label %421, !dx.controlflow.hints !38

; <label>:421                                     ; preds = %374
  %422 = icmp eq i32 %400, 1
  br i1 %422, label %427, label %423, !dx.controlflow.hints !39

; <label>:423                                     ; preds = %421
  %424 = icmp eq i32 %400, 2
  %425 = select i1 %424, float %419, float %414
  %426 = select i1 %424, float %414, float %419
  br label %427

; <label>:427                                     ; preds = %423, %421, %374
  %428 = phi float [ %419, %374 ], [ %408, %421 ], [ %408, %423 ]
  %429 = phi float [ %408, %374 ], [ %419, %421 ], [ %411, %423 ]
  %430 = phi float [ %414, %374 ], [ %414, %421 ], [ %425, %423 ]
  %431 = phi float [ %411, %374 ], [ %411, %421 ], [ %426, %423 ]
  %432 = add i32 %376, -8
  %433 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %432, i32 undef)  ; BufferLoad(srv,index,wot)
  %434 = extractvalue %dx.types.ResRet.i32 %433, 0
  %435 = and i32 %434, 3
  %436 = lshr i32 %434, 2
  %437 = and i32 %436, 1023
  %438 = lshr i32 %434, 12
  %439 = and i32 %438, 1023
  %440 = lshr i32 %434, 22
  %441 = uitofp i32 %437 to float
  %442 = fmul fast float %441, 0x3F56ABF460000000
  %443 = fadd fast float %442, 0xBFE6A09E60000000
  %444 = uitofp i32 %439 to float
  %445 = fmul fast float %444, 0x3F56ABF460000000
  %446 = fadd fast float %445, 0xBFE6A09E60000000
  %447 = uitofp i32 %440 to float
  %448 = fmul fast float %447, 0x3F56ABF460000000
  %449 = fadd fast float %448, 0xBFE6A09E60000000
  %450 = call float @dx.op.dot3.f32(i32 55, float %443, float %446, float %449, float %443, float %446, float %449)  ; Dot3(ax,ay,az,bx,by,bz)
  %451 = fcmp fast ogt float %450, 1.000000e+00
  %452 = fsub fast float 1.000000e+00, %450
  %453 = call float @dx.op.unary.f32(i32 24, float %452)  ; Sqrt(value)
  %454 = select i1 %451, float 0.000000e+00, float %453
  %455 = icmp eq i32 %435, 0
  br i1 %455, label %462, label %456, !dx.controlflow.hints !38

; <label>:456                                     ; preds = %427
  %457 = icmp eq i32 %435, 1
  br i1 %457, label %462, label %458, !dx.controlflow.hints !39

; <label>:458                                     ; preds = %456
  %459 = icmp eq i32 %435, 2
  %460 = select i1 %459, float %454, float %449
  %461 = select i1 %459, float %449, float %454
  br label %462

; <label>:462                                     ; preds = %458, %456, %427
  %463 = phi float [ %454, %427 ], [ %443, %456 ], [ %443, %458 ]
  %464 = phi float [ %443, %427 ], [ %454, %456 ], [ %446, %458 ]
  %465 = phi float [ %449, %427 ], [ %449, %456 ], [ %460, %458 ]
  %466 = phi float [ %446, %427 ], [ %446, %456 ], [ %461, %458 ]
  %467 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 724)  ; CBufferLoadLegacy(handle,regIndex)
  %468 = extractvalue %dx.types.CBufRet.f32 %467, 2
  %469 = add i32 %376, -60
  %470 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %469, i32 undef)  ; BufferLoad(srv,index,wot)
  %471 = extractvalue %dx.types.ResRet.i32 %470, 0
  %472 = lshr i32 %471, 16
  %473 = uitofp i32 %472 to float
  %474 = extractvalue %dx.types.CBufRet.f32 %467, 3
  %475 = fmul fast float %474, 0x3EF0001000000000
  %476 = fmul fast float %475, %473
  %477 = fadd fast float %476, %468
  %478 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 725)  ; CBufferLoadLegacy(handle,regIndex)
  %479 = extractvalue %dx.types.CBufRet.f32 %478, 0
  %480 = add i32 %376, -56
  %481 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %480, i32 undef)  ; BufferLoad(srv,index,wot)
  %482 = extractvalue %dx.types.ResRet.i32 %481, 0
  %483 = and i32 %482, 65535
  %484 = uitofp i32 %483 to float
  %485 = extractvalue %dx.types.CBufRet.f32 %478, 1
  %486 = fmul fast float %485, 0x3EF0001000000000
  %487 = fmul fast float %486, %484
  %488 = fadd fast float %487, %479
  %489 = extractvalue %dx.types.CBufRet.f32 %478, 2
  %490 = lshr i32 %482, 16
  %491 = uitofp i32 %490 to float
  %492 = extractvalue %dx.types.CBufRet.f32 %478, 3
  %493 = fmul fast float %492, 0x3EF0001000000000
  %494 = fmul fast float %493, %491
  %495 = fadd fast float %494, %489
  %496 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 726)  ; CBufferLoadLegacy(handle,regIndex)
  %497 = extractvalue %dx.types.CBufRet.f32 %496, 0
  %498 = add i32 %376, -52
  %499 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %498, i32 undef)  ; BufferLoad(srv,index,wot)
  %500 = extractvalue %dx.types.ResRet.i32 %499, 0
  %501 = and i32 %500, 65535
  %502 = uitofp i32 %501 to float
  %503 = extractvalue %dx.types.CBufRet.f32 %496, 1
  %504 = fmul fast float %503, 0x3EF0001000000000
  %505 = fmul fast float %504, %502
  %506 = fadd fast float %505, %497
  %507 = extractvalue %dx.types.CBufRet.f32 %496, 2
  %508 = lshr i32 %500, 16
  %509 = uitofp i32 %508 to float
  %510 = extractvalue %dx.types.CBufRet.f32 %496, 3
  %511 = fmul fast float %510, 0x3EF0001000000000
  %512 = fmul fast float %511, %509
  %513 = fadd fast float %512, %507
  %514 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 727)  ; CBufferLoadLegacy(handle,regIndex)
  %515 = extractvalue %dx.types.CBufRet.f32 %514, 0
  %516 = add i32 %376, -48
  %517 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %516, i32 undef)  ; BufferLoad(srv,index,wot)
  %518 = extractvalue %dx.types.ResRet.i32 %517, 0
  %519 = and i32 %518, 65535
  %520 = uitofp i32 %519 to float
  %521 = extractvalue %dx.types.CBufRet.f32 %514, 1
  %522 = fmul fast float %521, 0x3EF0001000000000
  %523 = fmul fast float %522, %520
  %524 = fadd fast float %523, %515
  %525 = extractvalue %dx.types.CBufRet.f32 %514, 2
  %526 = add i32 %376, -44
  %527 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %526, i32 undef)  ; BufferLoad(srv,index,wot)
  %528 = extractvalue %dx.types.ResRet.i32 %527, 0
  %529 = and i32 %528, 1048575
  %530 = uitofp i32 %529 to float
  %531 = extractvalue %dx.types.CBufRet.f32 %514, 3
  %532 = fmul fast float %531, 0x3EB0000100000000
  %533 = fmul fast float %532, %530
  %534 = fadd fast float %533, %525
  %535 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 728)  ; CBufferLoadLegacy(handle,regIndex)
  %536 = extractvalue %dx.types.CBufRet.f32 %535, 0
  %537 = add i32 %376, -40
  %538 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %537, i32 undef)  ; BufferLoad(srv,index,wot)
  %539 = extractvalue %dx.types.ResRet.i32 %538, 0
  %540 = and i32 %539, 1048575
  %541 = uitofp i32 %540 to float
  %542 = extractvalue %dx.types.CBufRet.f32 %535, 1
  %543 = fmul fast float %542, 0x3EB0000100000000
  %544 = fmul fast float %543, %541
  %545 = fadd fast float %544, %536
  %546 = extractvalue %dx.types.CBufRet.f32 %535, 2
  %547 = add i32 %376, -36
  %548 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %547, i32 undef)  ; BufferLoad(srv,index,wot)
  %549 = extractvalue %dx.types.ResRet.i32 %548, 0
  %550 = and i32 %549, 262143
  %551 = uitofp i32 %550 to float
  %552 = extractvalue %dx.types.CBufRet.f32 %535, 3
  %553 = fmul fast float %552, 0x3ED0000400000000
  %554 = fmul fast float %553, %551
  %555 = fadd fast float %554, %546
  %556 = lshr i32 %342, 1
  %557 = and i32 %556, 15
  %558 = add nuw nsw i32 %557, 685
  %559 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 %558)  ; CBufferLoadLegacy(handle,regIndex)
  %560 = and i32 %342, 1
  %561 = icmp eq i32 %560, 0
  %562 = call float @dx.op.binary.f32(i32 36, float %396, float 1.000000e+00)  ; FMin(a,b)
  %563 = fmul fast float %562, %562
  %564 = fmul fast float %563, %477
  %565 = fmul fast float %563, %488
  %566 = fmul fast float %563, %495
  %567 = fmul fast float %562, %506
  %568 = fmul fast float %562, %513
  %569 = fmul fast float %562, %524
  %570 = fadd fast float %534, %567
  %571 = fadd fast float %570, %564
  %572 = fadd fast float %545, %568
  %573 = fadd fast float %572, %565
  %574 = fadd fast float %555, %569
  %575 = fadd fast float %574, %566
  %576 = call float @dx.op.dot3.f32(i32 55, float %571, float %573, float %575, float %571, float %573, float %575)  ; Dot3(ax,ay,az,bx,by,bz)
  %577 = call float @dx.op.unary.f32(i32 25, float %576)  ; Rsqrt(value)
  %578 = fmul fast float %571, %577
  %579 = fmul fast float %573, %577
  %580 = fmul fast float %575, %577
  br i1 %561, label %603, label %581, !dx.controlflow.hints !40

; <label>:581                                     ; preds = %462
  %582 = extractvalue %dx.types.CBufRet.f32 %559, 2
  %583 = extractvalue %dx.types.CBufRet.f32 %559, 1
  %584 = extractvalue %dx.types.CBufRet.f32 %559, 0
  %585 = fmul fast float %583, 0x3F91DF46A0000000
  %586 = call float @dx.op.unary.f32(i32 13, float %585)  ; Sin(value)
  %587 = call float @dx.op.unary.f32(i32 12, float %585)  ; Cos(value)
  %588 = fmul fast float %584, 0x3F91DF46A0000000
  %589 = call float @dx.op.unary.f32(i32 13, float %588)  ; Sin(value)
  %590 = call float @dx.op.unary.f32(i32 12, float %588)  ; Cos(value)
  %591 = fmul fast float %582, 0x3F91DF46A0000000
  %592 = call float @dx.op.unary.f32(i32 13, float %591)  ; Sin(value)
  %593 = call float @dx.op.unary.f32(i32 12, float %591)  ; Cos(value)
  %594 = fmul fast float %589, %587
  %595 = fmul fast float %594, %593
  %596 = fmul fast float %592, %586
  %597 = fadd fast float %595, %596
  %598 = fmul fast float %589, %586
  %599 = fmul fast float %598, %593
  %600 = fmul fast float %592, %587
  %601 = fsub fast float %599, %600
  %602 = fmul fast float %593, %590
  br label %647

; <label>:603                                     ; preds = %462
  %604 = call float @dx.op.dot4.f32(i32 56, float %428, float %429, float %430, float %431, float %463, float %464, float %465, float %466)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %605 = fcmp fast ogt float %604, 0.000000e+00
  %606 = fcmp fast olt float %604, 0.000000e+00
  %607 = zext i1 %605 to i32
  %608 = zext i1 %606 to i32
  %609 = sub nsw i32 %607, %608
  %610 = sitofp i32 %609 to float
  %611 = xor i1 %605, %606
  %612 = select i1 %611, float %610, float 1.000000e+00
  %613 = fmul fast float %612, %463
  %614 = fmul fast float %612, %464
  %615 = fmul fast float %612, %465
  %616 = fmul fast float %612, %466
  %617 = fsub fast float %613, %428
  %618 = fsub fast float %614, %429
  %619 = fsub fast float %615, %430
  %620 = fsub fast float %616, %431
  %621 = fmul fast float %617, %396
  %622 = fmul fast float %618, %396
  %623 = fmul fast float %619, %396
  %624 = fmul fast float %620, %396
  %625 = fadd fast float %621, %428
  %626 = fadd fast float %622, %429
  %627 = fadd fast float %623, %430
  %628 = fadd fast float %624, %431
  %629 = call float @dx.op.dot4.f32(i32 56, float %625, float %626, float %627, float %628, float %625, float %626, float %627, float %628)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %630 = call float @dx.op.unary.f32(i32 25, float %629)  ; Rsqrt(value)
  %631 = fmul fast float %625, %630
  %632 = fmul fast float %626, %630
  %633 = fmul fast float %627, %630
  %634 = fmul fast float %628, %630
  %635 = fmul fast float %631, 2.000000e+00
  %636 = fmul fast float %632, 2.000000e+00
  %637 = fmul fast float %635, %631
  %638 = fmul fast float %635, %633
  %639 = fmul fast float %635, %634
  %640 = fmul fast float %636, %632
  %641 = fmul fast float %636, %633
  %642 = fmul fast float %636, %634
  %643 = fadd fast float %638, %642
  %644 = fsub fast float %641, %639
  %645 = fsub fast float 1.000000e+00, %640
  %646 = fsub fast float %645, %637
  br label %647

; <label>:647                                     ; preds = %603, %581
  %648 = phi float [ %597, %581 ], [ %643, %603 ]
  %649 = phi float [ %601, %581 ], [ %644, %603 ]
  %650 = phi float [ %602, %581 ], [ %646, %603 ]
  %651 = fmul fast float %649, %580
  %652 = fmul fast float %650, %579
  %653 = fsub fast float %651, %652
  %654 = fmul fast float %650, %578
  %655 = fmul fast float %648, %580
  %656 = fsub fast float %654, %655
  %657 = fmul fast float %648, %579
  %658 = fmul fast float %649, %578
  %659 = fsub fast float %657, %658
  %660 = fmul fast float %653, %653
  %661 = fmul fast float %656, %656
  %662 = fmul fast float %659, %659
  %663 = fadd fast float %661, %662
  %664 = fadd fast float %663, %660
  %665 = call float @dx.op.unary.f32(i32 24, float %664)  ; Sqrt(value)
  %666 = fcmp fast ugt float %665, 0x3F847AE140000000
  br i1 %666, label %685, label %667, !dx.controlflow.hints !41

; <label>:667                                     ; preds = %647
  %668 = call float @dx.op.dot4.f32(i32 56, float %578, float %579, float %580, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %669 = call float @dx.op.unary.f32(i32 6, float %668)  ; FAbs(value)
  %670 = fcmp fast oeq float %669, 1.000000e+00
  %671 = select i1 %670, float 1.000000e+00, float 0.000000e+00
  %672 = select i1 %670, float 0.000000e+00, float 1.000000e+00
  %673 = fmul fast float %671, %580
  %674 = fmul fast float %672, %579
  %675 = fsub fast float %673, %674
  %676 = fmul fast float %672, %578
  %677 = fmul fast float %671, %578
  %678 = fsub fast float -0.000000e+00, %677
  %679 = fmul fast float %675, %675
  %680 = fmul fast float %676, %676
  %681 = fmul fast float %677, %677
  %682 = fadd fast float %681, %680
  %683 = fadd fast float %682, %679
  %684 = call float @dx.op.unary.f32(i32 24, float %683)  ; Sqrt(value)
  br label %685

; <label>:685                                     ; preds = %667, %647
  %686 = phi float [ %675, %667 ], [ %653, %647 ]
  %687 = phi float [ %676, %667 ], [ %656, %647 ]
  %688 = phi float [ %678, %667 ], [ %659, %647 ]
  %689 = phi float [ %684, %667 ], [ %665, %647 ]
  %690 = fdiv fast float 1.000000e+00, %689
  %691 = fmul fast float %690, %686
  %692 = fmul fast float %690, %687
  %693 = fmul fast float %690, %688
  %694 = fmul fast float %693, %579
  %695 = fmul fast float %692, %580
  %696 = fsub fast float %694, %695
  %697 = fmul fast float %691, %580
  %698 = fmul fast float %693, %578
  %699 = fsub fast float %697, %698
  %700 = fmul fast float %692, %578
  %701 = fmul fast float %691, %579
  %702 = fsub fast float %700, %701
  %703 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %377, i32 undef)  ; BufferLoad(srv,index,wot)
  %704 = extractvalue %dx.types.ResRet.i32 %703, 0
  %705 = and i32 %704, 65535
  %706 = add i32 %376, -4
  %707 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %706, i32 undef)  ; BufferLoad(srv,index,wot)
  %708 = extractvalue %dx.types.ResRet.i32 %707, 0
  %709 = lshr i32 %708, 2
  %710 = and i32 %709, 32767
  %711 = uitofp i32 %710 to float
  %712 = fmul fast float %711, 0x3F06A0F8E0000000
  %713 = fadd fast float %712, 0xBFE6A09E60000000
  %714 = lshr i32 %708, 17
  %715 = uitofp i32 %714 to float
  %716 = fmul fast float %715, 0x3F06A0F8E0000000
  %717 = fadd fast float %716, 0xBFE6A09E60000000
  %718 = uitofp i32 %705 to float
  %719 = fmul fast float %718, 0x3EF6A0CBA0000000
  %720 = fadd fast float %719, 0xBFE6A09E60000000
  %721 = call float @dx.op.dot3.f32(i32 55, float %713, float %717, float %720, float %713, float %717, float %720)  ; Dot3(ax,ay,az,bx,by,bz)
  %722 = fcmp fast ogt float %721, 1.000000e+00
  %723 = fsub fast float 1.000000e+00, %721
  %724 = call float @dx.op.unary.f32(i32 24, float %723)  ; Sqrt(value)
  %725 = select i1 %722, float 0.000000e+00, float %724
  %726 = and i32 %708, 3
  %727 = icmp eq i32 %726, 0
  br i1 %727, label %734, label %728, !dx.controlflow.hints !42

; <label>:728                                     ; preds = %685
  %729 = icmp eq i32 %726, 1
  br i1 %729, label %734, label %730, !dx.controlflow.hints !43

; <label>:730                                     ; preds = %728
  %731 = icmp eq i32 %726, 2
  %732 = select i1 %731, float %725, float %720
  %733 = select i1 %731, float %720, float %725
  br label %734

; <label>:734                                     ; preds = %730, %728, %685
  %735 = phi float [ %725, %685 ], [ %713, %728 ], [ %713, %730 ]
  %736 = phi float [ %713, %685 ], [ %725, %728 ], [ %717, %730 ]
  %737 = phi float [ %720, %685 ], [ %720, %728 ], [ %732, %730 ]
  %738 = phi float [ %717, %685 ], [ %717, %728 ], [ %733, %730 ]
  %739 = fmul fast float %735, 2.000000e+00
  %740 = fmul fast float %736, 2.000000e+00
  %741 = fmul fast float %737, 2.000000e+00
  %742 = fmul fast float %739, %735
  %743 = fmul fast float %736, %739
  %744 = fmul fast float %737, %739
  %745 = fmul fast float %738, %739
  %746 = fmul fast float %740, %736
  %747 = fmul fast float %737, %740
  %748 = fmul fast float %738, %740
  %749 = fmul fast float %741, %737
  %750 = fmul fast float %738, %741
  %751 = fsub fast float 1.000000e+00, %746
  %752 = fsub fast float %751, %749
  %753 = fadd fast float %750, %743
  %754 = fsub fast float %744, %748
  %755 = fsub fast float %743, %750
  %756 = fsub fast float 1.000000e+00, %742
  %757 = fsub fast float %756, %749
  %758 = fadd fast float %745, %747
  %759 = fadd fast float %748, %744
  %760 = fsub fast float %747, %745
  %761 = fsub fast float %756, %746
  %762 = fmul fast float %752, %691
  %763 = call float @dx.op.tertiary.f32(i32 46, float %692, float %755, float %762)  ; FMad(a,b,c)
  %764 = call float @dx.op.tertiary.f32(i32 46, float %693, float %759, float %763)  ; FMad(a,b,c)
  %765 = fmul fast float %753, %691
  %766 = call float @dx.op.tertiary.f32(i32 46, float %692, float %757, float %765)  ; FMad(a,b,c)
  %767 = call float @dx.op.tertiary.f32(i32 46, float %693, float %760, float %766)  ; FMad(a,b,c)
  %768 = fmul fast float %754, %691
  %769 = call float @dx.op.tertiary.f32(i32 46, float %692, float %758, float %768)  ; FMad(a,b,c)
  %770 = call float @dx.op.tertiary.f32(i32 46, float %693, float %761, float %769)  ; FMad(a,b,c)
  %771 = fmul fast float %752, %696
  %772 = call float @dx.op.tertiary.f32(i32 46, float %699, float %755, float %771)  ; FMad(a,b,c)
  %773 = call float @dx.op.tertiary.f32(i32 46, float %702, float %759, float %772)  ; FMad(a,b,c)
  %774 = fmul fast float %753, %696
  %775 = call float @dx.op.tertiary.f32(i32 46, float %699, float %757, float %774)  ; FMad(a,b,c)
  %776 = call float @dx.op.tertiary.f32(i32 46, float %702, float %760, float %775)  ; FMad(a,b,c)
  %777 = fmul fast float %754, %696
  %778 = call float @dx.op.tertiary.f32(i32 46, float %699, float %758, float %777)  ; FMad(a,b,c)
  %779 = call float @dx.op.tertiary.f32(i32 46, float %702, float %761, float %778)  ; FMad(a,b,c)
  %780 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 729)  ; CBufferLoadLegacy(handle,regIndex)
  %781 = extractvalue %dx.types.CBufRet.f32 %780, 0
  %782 = lshr i32 %528, 20
  %783 = uitofp i32 %782 to float
  %784 = extractvalue %dx.types.CBufRet.f32 %780, 1
  %785 = fmul fast float %784, 0x3F30010020000000
  %786 = fmul fast float %785, %783
  %787 = fadd fast float %786, %781
  %788 = extractvalue %dx.types.CBufRet.f32 %780, 2
  %789 = lshr i32 %539, 20
  %790 = uitofp i32 %789 to float
  %791 = extractvalue %dx.types.CBufRet.f32 %780, 3
  %792 = fmul fast float %791, 0x3F30010020000000
  %793 = fmul fast float %792, %790
  %794 = fadd fast float %793, %788
  %795 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 730)  ; CBufferLoadLegacy(handle,regIndex)
  %796 = extractvalue %dx.types.CBufRet.f32 %795, 0
  %797 = lshr i32 %549, 18
  %798 = uitofp i32 %797 to float
  %799 = extractvalue %dx.types.CBufRet.f32 %795, 1
  %800 = fmul fast float %799, 0x3F10004000000000
  %801 = fmul fast float %800, %798
  %802 = fadd fast float %801, %796
  %803 = extractvalue %dx.types.CBufRet.f32 %795, 2
  %804 = lshr i32 %380, 20
  %805 = uitofp i32 %804 to float
  %806 = extractvalue %dx.types.CBufRet.f32 %795, 3
  %807 = fmul fast float %806, 0x3F30010020000000
  %808 = fmul fast float %807, %805
  %809 = fadd fast float %808, %803
  %810 = fmul fast float %809, %562
  %811 = fadd fast float %802, %810
  %812 = fmul fast float %811, %562
  %813 = fadd fast float %794, %812
  %814 = fmul fast float %813, %562
  %815 = fadd fast float %787, %814
  %816 = call float @dx.op.unary.f32(i32 13, float %815)  ; Sin(value)
  %817 = call float @dx.op.unary.f32(i32 12, float %815)  ; Cos(value)
  %818 = fsub fast float -0.000000e+00, %816
  %819 = call float @dx.op.tertiary.f32(i32 46, float %817, float %764, float 0.000000e+00)  ; FMad(a,b,c)
  %820 = call float @dx.op.tertiary.f32(i32 46, float %818, float %773, float %819)  ; FMad(a,b,c)
  %821 = call float @dx.op.tertiary.f32(i32 46, float %817, float %767, float 0.000000e+00)  ; FMad(a,b,c)
  %822 = call float @dx.op.tertiary.f32(i32 46, float %818, float %776, float %821)  ; FMad(a,b,c)
  %823 = call float @dx.op.tertiary.f32(i32 46, float %817, float %770, float 0.000000e+00)  ; FMad(a,b,c)
  %824 = call float @dx.op.tertiary.f32(i32 46, float %818, float %779, float %823)  ; FMad(a,b,c)
  %825 = call float @dx.op.tertiary.f32(i32 46, float %816, float %764, float 0.000000e+00)  ; FMad(a,b,c)
  %826 = call float @dx.op.tertiary.f32(i32 46, float %817, float %773, float %825)  ; FMad(a,b,c)
  %827 = call float @dx.op.tertiary.f32(i32 46, float %816, float %767, float 0.000000e+00)  ; FMad(a,b,c)
  %828 = call float @dx.op.tertiary.f32(i32 46, float %817, float %776, float %827)  ; FMad(a,b,c)
  %829 = call float @dx.op.tertiary.f32(i32 46, float %816, float %770, float 0.000000e+00)  ; FMad(a,b,c)
  %830 = call float @dx.op.tertiary.f32(i32 46, float %817, float %779, float %829)  ; FMad(a,b,c)
  %831 = extractvalue %dx.types.CBufRet.f32 %383, 2
  %832 = lshr i32 %518, 16
  %833 = and i32 %832, 63
  %834 = uitofp i32 %833 to float
  %835 = extractvalue %dx.types.CBufRet.f32 %383, 3
  %836 = fmul fast float %835, 0x3F90410420000000
  %837 = fmul fast float %836, %834
  %838 = fadd fast float %837, %831
  %839 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 719)  ; CBufferLoadLegacy(handle,regIndex)
  %840 = extractvalue %dx.types.CBufRet.f32 %839, 0
  %841 = lshr i32 %518, 22
  %842 = and i32 %841, 31
  %843 = uitofp i32 %842 to float
  %844 = extractvalue %dx.types.CBufRet.f32 %839, 1
  %845 = fmul fast float %844, 0x3FA0842100000000
  %846 = fmul fast float %845, %843
  %847 = fadd fast float %846, %840
  %848 = extractvalue %dx.types.CBufRet.f32 %839, 2
  %849 = lshr i32 %518, 27
  %850 = uitofp i32 %849 to float
  %851 = extractvalue %dx.types.CBufRet.f32 %839, 3
  %852 = fmul fast float %851, 0x3FA0842100000000
  %853 = fmul fast float %852, %850
  %854 = fadd fast float %853, %848
  %855 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 720)  ; CBufferLoadLegacy(handle,regIndex)
  %856 = extractvalue %dx.types.CBufRet.f32 %855, 0
  %857 = add i32 %376, -72
  %858 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %857, i32 undef)  ; BufferLoad(srv,index,wot)
  %859 = extractvalue %dx.types.ResRet.i32 %858, 0
  %860 = and i32 %859, 524287
  %861 = uitofp i32 %860 to float
  %862 = extractvalue %dx.types.CBufRet.f32 %855, 1
  %863 = fmul fast float %862, 0x3EC0000200000000
  %864 = fmul fast float %863, %861
  %865 = fadd fast float %864, %856
  %866 = extractvalue %dx.types.CBufRet.f32 %855, 2
  %867 = lshr i32 %704, 16
  %868 = uitofp i32 %867 to float
  %869 = extractvalue %dx.types.CBufRet.f32 %855, 3
  %870 = fmul fast float %869, 0x3EF0001000000000
  %871 = fmul fast float %870, %868
  %872 = fadd fast float %871, %866
  %873 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 721)  ; CBufferLoadLegacy(handle,regIndex)
  %874 = extractvalue %dx.types.CBufRet.f32 %873, 0
  %875 = add i32 %376, -68
  %876 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %875, i32 undef)  ; BufferLoad(srv,index,wot)
  %877 = extractvalue %dx.types.ResRet.i32 %876, 0
  %878 = and i32 %877, 65535
  %879 = uitofp i32 %878 to float
  %880 = extractvalue %dx.types.CBufRet.f32 %873, 1
  %881 = fmul fast float %880, 0x3EF0001000000000
  %882 = fmul fast float %881, %879
  %883 = fadd fast float %882, %874
  %884 = extractvalue %dx.types.CBufRet.f32 %873, 2
  %885 = lshr i32 %877, 16
  %886 = uitofp i32 %885 to float
  %887 = extractvalue %dx.types.CBufRet.f32 %873, 3
  %888 = fmul fast float %887, 0x3EF0001000000000
  %889 = fmul fast float %888, %886
  %890 = fadd fast float %889, %884
  %891 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 722)  ; CBufferLoadLegacy(handle,regIndex)
  %892 = extractvalue %dx.types.CBufRet.f32 %891, 0
  %893 = add i32 %376, -64
  %894 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %893, i32 undef)  ; BufferLoad(srv,index,wot)
  %895 = extractvalue %dx.types.ResRet.i32 %894, 0
  %896 = and i32 %895, 65535
  %897 = uitofp i32 %896 to float
  %898 = extractvalue %dx.types.CBufRet.f32 %891, 1
  %899 = fmul fast float %898, 0x3EF0001000000000
  %900 = fmul fast float %899, %897
  %901 = fadd fast float %900, %892
  %902 = extractvalue %dx.types.CBufRet.f32 %891, 2
  %903 = lshr i32 %895, 16
  %904 = uitofp i32 %903 to float
  %905 = extractvalue %dx.types.CBufRet.f32 %891, 3
  %906 = fmul fast float %905, 0x3EF0001000000000
  %907 = fmul fast float %906, %904
  %908 = fadd fast float %907, %902
  %909 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 723)  ; CBufferLoadLegacy(handle,regIndex)
  %910 = extractvalue %dx.types.CBufRet.f32 %909, 0
  %911 = lshr i32 %390, 20
  %912 = uitofp i32 %911 to float
  %913 = extractvalue %dx.types.CBufRet.f32 %909, 1
  %914 = fmul fast float %913, 0x3F30010020000000
  %915 = fmul fast float %914, %912
  %916 = fadd fast float %915, %910
  %917 = extractvalue %dx.types.CBufRet.f32 %909, 2
  %918 = and i32 %471, 65535
  %919 = uitofp i32 %918 to float
  %920 = extractvalue %dx.types.CBufRet.f32 %909, 3
  %921 = fmul fast float %920, 0x3EF0001000000000
  %922 = fmul fast float %921, %919
  %923 = fadd fast float %922, %917
  %924 = extractvalue %dx.types.CBufRet.f32 %467, 0
  %925 = lshr i32 %859, 19
  %926 = uitofp i32 %925 to float
  %927 = extractvalue %dx.types.CBufRet.f32 %467, 1
  %928 = fmul fast float %927, 0x3F20008000000000
  %929 = fmul fast float %928, %926
  %930 = fadd fast float %929, %924
  %931 = fcmp fast ugt float %396, 1.000000e+00
  br i1 %931, label %951, label %932, !dx.controlflow.hints !44

; <label>:932                                     ; preds = %734
  %933 = fmul fast float %916, %396
  %934 = fmul fast float %923, %396
  %935 = fmul fast float %930, %396
  %936 = fadd fast float %933, %890
  %937 = fadd fast float %934, %901
  %938 = fadd fast float %935, %908
  %939 = fmul fast float %936, %396
  %940 = fmul fast float %937, %396
  %941 = fmul fast float %938, %396
  %942 = fadd fast float %939, %865
  %943 = fadd fast float %940, %872
  %944 = fadd fast float %941, %883
  %945 = fmul fast float %942, %396
  %946 = fmul fast float %943, %396
  %947 = fmul fast float %944, %396
  %948 = fadd fast float %945, %838
  %949 = fadd fast float %946, %847
  %950 = fadd fast float %947, %854
  br label %978

; <label>:951                                     ; preds = %734
  %952 = fmul fast float %754, %578
  %953 = call float @dx.op.tertiary.f32(i32 46, float %579, float %758, float %952)  ; FMad(a,b,c)
  %954 = call float @dx.op.tertiary.f32(i32 46, float %580, float %761, float %953)  ; FMad(a,b,c)
  %955 = fmul fast float %753, %578
  %956 = call float @dx.op.tertiary.f32(i32 46, float %579, float %757, float %955)  ; FMad(a,b,c)
  %957 = call float @dx.op.tertiary.f32(i32 46, float %580, float %760, float %956)  ; FMad(a,b,c)
  %958 = fmul fast float %752, %578
  %959 = call float @dx.op.tertiary.f32(i32 46, float %579, float %755, float %958)  ; FMad(a,b,c)
  %960 = call float @dx.op.tertiary.f32(i32 46, float %580, float %759, float %959)  ; FMad(a,b,c)
  %961 = fadd fast float %396, -1.000000e+00
  %962 = fmul fast float %395, %961
  %963 = fmul fast float %960, %962
  %964 = fmul fast float %957, %962
  %965 = fmul fast float %954, %962
  %966 = fadd fast float %865, %838
  %967 = fadd fast float %966, %890
  %968 = fadd fast float %967, %916
  %969 = fadd fast float %968, %963
  %970 = fadd fast float %872, %847
  %971 = fadd fast float %970, %901
  %972 = fadd fast float %971, %923
  %973 = fadd fast float %972, %964
  %974 = fadd fast float %883, %854
  %975 = fadd fast float %974, %908
  %976 = fadd fast float %975, %930
  %977 = fadd fast float %976, %965
  br label %978

; <label>:978                                     ; preds = %951, %932
  %979 = phi float [ %948, %932 ], [ %969, %951 ]
  %980 = phi float [ %949, %932 ], [ %973, %951 ]
  %981 = phi float [ %950, %932 ], [ %977, %951 ]
  %982 = call float @dx.op.tertiary.f32(i32 46, float %327, float %820, float 0.000000e+00)  ; FMad(a,b,c)
  %983 = call float @dx.op.tertiary.f32(i32 46, float %328, float %826, float %982)  ; FMad(a,b,c)
  %984 = fadd fast float %983, %979
  %985 = call float @dx.op.tertiary.f32(i32 46, float %327, float %822, float 0.000000e+00)  ; FMad(a,b,c)
  %986 = call float @dx.op.tertiary.f32(i32 46, float %328, float %828, float %985)  ; FMad(a,b,c)
  %987 = fadd fast float %986, %980
  %988 = call float @dx.op.tertiary.f32(i32 46, float %327, float %824, float 0.000000e+00)  ; FMad(a,b,c)
  %989 = call float @dx.op.tertiary.f32(i32 46, float %328, float %830, float %988)  ; FMad(a,b,c)
  %990 = fadd fast float %989, %981
  %991 = add i32 %376, -32
  %992 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %991, i32 undef)  ; BufferLoad(srv,index,wot)
  %993 = extractvalue %dx.types.ResRet.i32 %992, 0
  %994 = bitcast i32 %993 to float
  %995 = add i32 %376, -28
  %996 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %995, i32 undef)  ; BufferLoad(srv,index,wot)
  %997 = extractvalue %dx.types.ResRet.i32 %996, 0
  %998 = bitcast i32 %997 to float
  %999 = add i32 %376, -24
  %1000 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %999, i32 undef)  ; BufferLoad(srv,index,wot)
  %1001 = extractvalue %dx.types.ResRet.i32 %1000, 0
  %1002 = bitcast i32 %1001 to float
  %1003 = fmul fast float %984, %752
  %1004 = call float @dx.op.tertiary.f32(i32 46, float %987, float %753, float %1003)  ; FMad(a,b,c)
  %1005 = call float @dx.op.tertiary.f32(i32 46, float %990, float %754, float %1004)  ; FMad(a,b,c)
  %1006 = fadd fast float %1005, %994
  %1007 = fmul fast float %984, %755
  %1008 = call float @dx.op.tertiary.f32(i32 46, float %987, float %757, float %1007)  ; FMad(a,b,c)
  %1009 = call float @dx.op.tertiary.f32(i32 46, float %990, float %758, float %1008)  ; FMad(a,b,c)
  %1010 = fadd fast float %1009, %998
  %1011 = fmul fast float %984, %759
  %1012 = call float @dx.op.tertiary.f32(i32 46, float %987, float %760, float %1011)  ; FMad(a,b,c)
  %1013 = call float @dx.op.tertiary.f32(i32 46, float %990, float %761, float %1012)  ; FMad(a,b,c)
  %1014 = fadd fast float %1013, %1002
  store float %1006, float* %215, align 4
  store float %1010, float* %216, align 4
  store float %1014, float* %217, align 4
  %1015 = add nuw nsw i32 %214, 1
  %1016 = icmp eq i32 %1015, 3
  br i1 %1016, label %1017, label %213, !llvm.loop !45

; <label>:1017                                    ; preds = %978
  %1018 = load float, float* %210, align 4
  %1019 = load float, float* %207, align 4
  %1020 = load float, float* %204, align 4
  %1021 = call float @dx.op.binary.f32(i32 36, float %1019, float %1018)  ; FMin(a,b)
  %1022 = call float @dx.op.binary.f32(i32 36, float %1020, float %1021)  ; FMin(a,b)
  %1023 = load float, float* %211, align 4
  %1024 = load float, float* %208, align 4
  %1025 = load float, float* %205, align 4
  %1026 = call float @dx.op.binary.f32(i32 36, float %1024, float %1023)  ; FMin(a,b)
  %1027 = call float @dx.op.binary.f32(i32 36, float %1025, float %1026)  ; FMin(a,b)
  %1028 = load float, float* %212, align 4
  %1029 = load float, float* %209, align 4
  %1030 = load float, float* %206, align 4
  %1031 = call float @dx.op.binary.f32(i32 36, float %1029, float %1028)  ; FMin(a,b)
  %1032 = call float @dx.op.binary.f32(i32 36, float %1030, float %1031)  ; FMin(a,b)
  %1033 = call float @dx.op.binary.f32(i32 35, float %1019, float %1018)  ; FMax(a,b)
  %1034 = call float @dx.op.binary.f32(i32 35, float %1020, float %1033)  ; FMax(a,b)
  %1035 = call float @dx.op.binary.f32(i32 35, float %1024, float %1023)  ; FMax(a,b)
  %1036 = call float @dx.op.binary.f32(i32 35, float %1025, float %1035)  ; FMax(a,b)
  %1037 = call float @dx.op.binary.f32(i32 35, float %1029, float %1028)  ; FMax(a,b)
  %1038 = call float @dx.op.binary.f32(i32 35, float %1030, float %1037)  ; FMax(a,b)
  br label %1039

; <label>:1039                                    ; preds = %1017, %0
  %1040 = phi float [ %1022, %1017 ], [ 1.280000e+05, %0 ]
  %1041 = phi float [ %1027, %1017 ], [ 1.280000e+05, %0 ]
  %1042 = phi float [ %1032, %1017 ], [ 1.280000e+05, %0 ]
  %1043 = phi float [ %1034, %1017 ], [ -1.280000e+05, %0 ]
  %1044 = phi float [ %1036, %1017 ], [ -1.280000e+05, %0 ]
  %1045 = phi float [ %1038, %1017 ], [ -1.280000e+05, %0 ]
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1046 = mul i32 %19, 3
  %1047 = add i32 0, %1046
  %1048 = getelementptr [192 x float], [192 x float] addrspace(3)* @"\01?tiledSharedMinDiagonal@@3PAV?$vector@M$02@@A.v.1dim", i32 0, i32 %1047
  store float %1040, float addrspace(3)* %1048, align 4
  %1049 = mul i32 %19, 3
  %1050 = add i32 1, %1049
  %1051 = getelementptr [192 x float], [192 x float] addrspace(3)* @"\01?tiledSharedMinDiagonal@@3PAV?$vector@M$02@@A.v.1dim", i32 0, i32 %1050
  store float %1041, float addrspace(3)* %1051, align 4
  %1052 = mul i32 %19, 3
  %1053 = add i32 2, %1052
  %1054 = getelementptr [192 x float], [192 x float] addrspace(3)* @"\01?tiledSharedMinDiagonal@@3PAV?$vector@M$02@@A.v.1dim", i32 0, i32 %1053
  store float %1042, float addrspace(3)* %1054, align 4
  %1055 = mul i32 %19, 3
  %1056 = add i32 0, %1055
  %1057 = getelementptr [192 x float], [192 x float] addrspace(3)* @"\01?tiledSharedMaxDiagonal@@3PAV?$vector@M$02@@A.v.1dim", i32 0, i32 %1056
  store float %1043, float addrspace(3)* %1057, align 4
  %1058 = mul i32 %19, 3
  %1059 = add i32 1, %1058
  %1060 = getelementptr [192 x float], [192 x float] addrspace(3)* @"\01?tiledSharedMaxDiagonal@@3PAV?$vector@M$02@@A.v.1dim", i32 0, i32 %1059
  store float %1044, float addrspace(3)* %1060, align 4
  %1061 = mul i32 %19, 3
  %1062 = add i32 2, %1061
  %1063 = getelementptr [192 x float], [192 x float] addrspace(3)* @"\01?tiledSharedMaxDiagonal@@3PAV?$vector@M$02@@A.v.1dim", i32 0, i32 %1062
  store float %1045, float addrspace(3)* %1063, align 4
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1064 = and i32 %19, 63
  %1065 = icmp ult i32 %1064, 32
  br i1 %1065, label %1066, label %1104, !dx.controlflow.hints !47

; <label>:1066                                    ; preds = %1039
  %1067 = add i32 %19, 32
  %1068 = mul i32 %1067, 3
  %1069 = add i32 0, %1068
  %1070 = getelementptr [192 x float], [192 x float] addrspace(3)* @"\01?tiledSharedMinDiagonal@@3PAV?$vector@M$02@@A.v.1dim", i32 0, i32 %1069
  %1071 = load float, float addrspace(3)* %1070, align 4
  %1072 = mul i32 %1067, 3
  %1073 = add i32 1, %1072
  %1074 = getelementptr [192 x float], [192 x float] addrspace(3)* @"\01?tiledSharedMinDiagonal@@3PAV?$vector@M$02@@A.v.1dim", i32 0, i32 %1073
  %1075 = load float, float addrspace(3)* %1074, align 4
  %1076 = mul i32 %1067, 3
  %1077 = add i32 2, %1076
  %1078 = getelementptr [192 x float], [192 x float] addrspace(3)* @"\01?tiledSharedMinDiagonal@@3PAV?$vector@M$02@@A.v.1dim", i32 0, i32 %1077
  %1079 = load float, float addrspace(3)* %1078, align 4
  %1080 = load float, float addrspace(3)* %1048, align 4
  %1081 = load float, float addrspace(3)* %1051, align 4
  %1082 = load float, float addrspace(3)* %1054, align 4
  %1083 = call float @dx.op.binary.f32(i32 36, float %1080, float %1071)  ; FMin(a,b)
  %1084 = call float @dx.op.binary.f32(i32 36, float %1081, float %1075)  ; FMin(a,b)
  %1085 = call float @dx.op.binary.f32(i32 36, float %1082, float %1079)  ; FMin(a,b)
  store float %1083, float addrspace(3)* %1048, align 4
  store float %1084, float addrspace(3)* %1051, align 4
  store float %1085, float addrspace(3)* %1054, align 4
  %1086 = mul i32 %1067, 3
  %1087 = add i32 0, %1086
  %1088 = getelementptr [192 x float], [192 x float] addrspace(3)* @"\01?tiledSharedMaxDiagonal@@3PAV?$vector@M$02@@A.v.1dim", i32 0, i32 %1087
  %1089 = load float, float addrspace(3)* %1088, align 4
  %1090 = mul i32 %1067, 3
  %1091 = add i32 1, %1090
  %1092 = getelementptr [192 x float], [192 x float] addrspace(3)* @"\01?tiledSharedMaxDiagonal@@3PAV?$vector@M$02@@A.v.1dim", i32 0, i32 %1091
  %1093 = load float, float addrspace(3)* %1092, align 4
  %1094 = mul i32 %1067, 3
  %1095 = add i32 2, %1094
  %1096 = getelementptr [192 x float], [192 x float] addrspace(3)* @"\01?tiledSharedMaxDiagonal@@3PAV?$vector@M$02@@A.v.1dim", i32 0, i32 %1095
  %1097 = load float, float addrspace(3)* %1096, align 4
  %1098 = load float, float addrspace(3)* %1057, align 4
  %1099 = load float, float addrspace(3)* %1060, align 4
  %1100 = load float, float addrspace(3)* %1063, align 4
  %1101 = call float @dx.op.binary.f32(i32 35, float %1098, float %1089)  ; FMax(a,b)
  %1102 = call float @dx.op.binary.f32(i32 35, float %1099, float %1093)  ; FMax(a,b)
  %1103 = call float @dx.op.binary.f32(i32 35, float %1100, float %1097)  ; FMax(a,b)
  store float %1101, float addrspace(3)* %1057, align 4
  store float %1102, float addrspace(3)* %1060, align 4
  store float %1103, float addrspace(3)* %1063, align 4
  br label %1104

; <label>:1104                                    ; preds = %1066, %1039
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %1105 = icmp ult i32 %1064, 16
  br i1 %1105, label %1106, label %1144, !dx.controlflow.hints !48

; <label>:1106                                    ; preds = %1104
  %1107 = add i32 %19, 16
  %1108 = mul i32 %1107, 3
  %1109 = add i32 0, %1108
  %1110 = getelementptr [192 x float], [192 x float] addrspace(3)* @"\01?tiledSharedMinDiagonal@@3PAV?$vector@M$02@@A.v.1dim", i32 0, i32 %1109
  %1111 = load float, float addrspace(3)* %1110, align 4
  %1112 = mul i32 %1107, 3
  %1113 = add i32 1, %1112
  %1114 = getelementptr [192 x float], [192 x float] addrspace(3)* @"\01?tiledSharedMinDiagonal@@3PAV?$vector@M$02@@A.v.1dim", i32 0, i32 %1113
  %1115 = load float, float addrspace(3)* %1114, align 4
  %1116 = mul i32 %1107, 3
  %1117 = add i32 2, %1116
  %1118 = getelementptr [192 x float], [192 x float] addrspace(3)* @"\01?tiledSharedMinDiagonal@@3PAV?$vector@M$02@@A.v.1dim", i32 0, i32 %1117
  %1119 = load float, float addrspace(3)* %1118, align 4
  %1120 = load float, float addrspace(3)* %1048, align 4
  %1121 = load float, float addrspace(3)* %1051, align 4
  %1122 = load float, float addrspace(3)* %1054, align 4
  %1123 = call float @dx.op.binary.f32(i32 36, float %1120, float %1111)  ; FMin(a,b)
  %1124 = call float @dx.op.binary.f32(i32 36, float %1121, float %1115)  ; FMin(a,b)
  %1125 = call float @dx.op.binary.f32(i32 36, float %1122, float %1119)  ; FMin(a,b)
  store float %1123, float addrspace(3)* %1048, align 4
  store float %1124, float addrspace(3)* %1051, align 4
  store float %1125, float addrspace(3)* %1054, align 4
  %1126 = mul i32 %1107, 3
  %1127 = add i32 0, %1126
  %1128 = getelementptr [192 x float], [192 x float] addrspace(3)* @"\01?tiledSharedMaxDiagonal@@3PAV?$vector@M$02@@A.v.1dim", i32 0, i32 %1127
  %1129 = load float, float addrspace(3)* %1128, align 4
  %1130 = mul i32 %1107, 3
  %1131 = add i32 1, %1130
  %1132 = getelementptr [192 x float], [192 x float] addrspace(3)* @"\01?tiledSharedMaxDiagonal@@3PAV?$vector@M$02@@A.v.1dim", i32 0, i32 %1131
  %1133 = load float, float addrspace(3)* %1132, align 4
  %1134 = mul i32 %1107, 3
  %1135 = add i32 2, %1134
  %1136 = getelementptr [192 x float], [192 x float] addrspace(3)* @"\01?tiledSharedMaxDiagonal@@3PAV?$vector@M$02@@A.v.1dim", i32 0, i32 %1135
  %1137 = load float, float addrspace(3)* %1136, align 4
  %1138 = load float, float addrspace(3)* %1057, align 4
  %1139 = load float, float addrspace(3)* %1060, align 4
  %1140 = load float, float addrspace(3)* %1063, align 4
  %1141 = call float @dx.op.binary.f32(i32 35, float %1138, float %1129)  ; FMax(a,b)
  %1142 = call float @dx.op.binary.f32(i32 35, float %1139, float %1133)  ; FMax(a,b)
  %1143 = call float @dx.op.binary.f32(i32 35, float %1140, float %1137)  ; FMax(a,b)
  store float %1141, float addrspace(3)* %1057, align 4
  store float %1142, float addrspace(3)* %1060, align 4
  store float %1143, float addrspace(3)* %1063, align 4
  br label %1144

; <label>:1144                                    ; preds = %1106, %1104
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %1145 = icmp ult i32 %1064, 8
  br i1 %1145, label %1146, label %1184, !dx.controlflow.hints !49

; <label>:1146                                    ; preds = %1144
  %1147 = add i32 %19, 8
  %1148 = mul i32 %1147, 3
  %1149 = add i32 0, %1148
  %1150 = getelementptr [192 x float], [192 x float] addrspace(3)* @"\01?tiledSharedMinDiagonal@@3PAV?$vector@M$02@@A.v.1dim", i32 0, i32 %1149
  %1151 = load float, float addrspace(3)* %1150, align 4
  %1152 = mul i32 %1147, 3
  %1153 = add i32 1, %1152
  %1154 = getelementptr [192 x float], [192 x float] addrspace(3)* @"\01?tiledSharedMinDiagonal@@3PAV?$vector@M$02@@A.v.1dim", i32 0, i32 %1153
  %1155 = load float, float addrspace(3)* %1154, align 4
  %1156 = mul i32 %1147, 3
  %1157 = add i32 2, %1156
  %1158 = getelementptr [192 x float], [192 x float] addrspace(3)* @"\01?tiledSharedMinDiagonal@@3PAV?$vector@M$02@@A.v.1dim", i32 0, i32 %1157
  %1159 = load float, float addrspace(3)* %1158, align 4
  %1160 = load float, float addrspace(3)* %1048, align 4
  %1161 = load float, float addrspace(3)* %1051, align 4
  %1162 = load float, float addrspace(3)* %1054, align 4
  %1163 = call float @dx.op.binary.f32(i32 36, float %1160, float %1151)  ; FMin(a,b)
  %1164 = call float @dx.op.binary.f32(i32 36, float %1161, float %1155)  ; FMin(a,b)
  %1165 = call float @dx.op.binary.f32(i32 36, float %1162, float %1159)  ; FMin(a,b)
  store float %1163, float addrspace(3)* %1048, align 4
  store float %1164, float addrspace(3)* %1051, align 4
  store float %1165, float addrspace(3)* %1054, align 4
  %1166 = mul i32 %1147, 3
  %1167 = add i32 0, %1166
  %1168 = getelementptr [192 x float], [192 x float] addrspace(3)* @"\01?tiledSharedMaxDiagonal@@3PAV?$vector@M$02@@A.v.1dim", i32 0, i32 %1167
  %1169 = load float, float addrspace(3)* %1168, align 4
  %1170 = mul i32 %1147, 3
  %1171 = add i32 1, %1170
  %1172 = getelementptr [192 x float], [192 x float] addrspace(3)* @"\01?tiledSharedMaxDiagonal@@3PAV?$vector@M$02@@A.v.1dim", i32 0, i32 %1171
  %1173 = load float, float addrspace(3)* %1172, align 4
  %1174 = mul i32 %1147, 3
  %1175 = add i32 2, %1174
  %1176 = getelementptr [192 x float], [192 x float] addrspace(3)* @"\01?tiledSharedMaxDiagonal@@3PAV?$vector@M$02@@A.v.1dim", i32 0, i32 %1175
  %1177 = load float, float addrspace(3)* %1176, align 4
  %1178 = load float, float addrspace(3)* %1057, align 4
  %1179 = load float, float addrspace(3)* %1060, align 4
  %1180 = load float, float addrspace(3)* %1063, align 4
  %1181 = call float @dx.op.binary.f32(i32 35, float %1178, float %1169)  ; FMax(a,b)
  %1182 = call float @dx.op.binary.f32(i32 35, float %1179, float %1173)  ; FMax(a,b)
  %1183 = call float @dx.op.binary.f32(i32 35, float %1180, float %1177)  ; FMax(a,b)
  store float %1181, float addrspace(3)* %1057, align 4
  store float %1182, float addrspace(3)* %1060, align 4
  store float %1183, float addrspace(3)* %1063, align 4
  br label %1184

; <label>:1184                                    ; preds = %1146, %1144
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %1185 = icmp ult i32 %1064, 4
  br i1 %1185, label %1186, label %1224, !dx.controlflow.hints !50

; <label>:1186                                    ; preds = %1184
  %1187 = add i32 %19, 4
  %1188 = mul i32 %1187, 3
  %1189 = add i32 0, %1188
  %1190 = getelementptr [192 x float], [192 x float] addrspace(3)* @"\01?tiledSharedMinDiagonal@@3PAV?$vector@M$02@@A.v.1dim", i32 0, i32 %1189
  %1191 = load float, float addrspace(3)* %1190, align 4
  %1192 = mul i32 %1187, 3
  %1193 = add i32 1, %1192
  %1194 = getelementptr [192 x float], [192 x float] addrspace(3)* @"\01?tiledSharedMinDiagonal@@3PAV?$vector@M$02@@A.v.1dim", i32 0, i32 %1193
  %1195 = load float, float addrspace(3)* %1194, align 4
  %1196 = mul i32 %1187, 3
  %1197 = add i32 2, %1196
  %1198 = getelementptr [192 x float], [192 x float] addrspace(3)* @"\01?tiledSharedMinDiagonal@@3PAV?$vector@M$02@@A.v.1dim", i32 0, i32 %1197
  %1199 = load float, float addrspace(3)* %1198, align 4
  %1200 = load float, float addrspace(3)* %1048, align 4
  %1201 = load float, float addrspace(3)* %1051, align 4
  %1202 = load float, float addrspace(3)* %1054, align 4
  %1203 = call float @dx.op.binary.f32(i32 36, float %1200, float %1191)  ; FMin(a,b)
  %1204 = call float @dx.op.binary.f32(i32 36, float %1201, float %1195)  ; FMin(a,b)
  %1205 = call float @dx.op.binary.f32(i32 36, float %1202, float %1199)  ; FMin(a,b)
  store float %1203, float addrspace(3)* %1048, align 4
  store float %1204, float addrspace(3)* %1051, align 4
  store float %1205, float addrspace(3)* %1054, align 4
  %1206 = mul i32 %1187, 3
  %1207 = add i32 0, %1206
  %1208 = getelementptr [192 x float], [192 x float] addrspace(3)* @"\01?tiledSharedMaxDiagonal@@3PAV?$vector@M$02@@A.v.1dim", i32 0, i32 %1207
  %1209 = load float, float addrspace(3)* %1208, align 4
  %1210 = mul i32 %1187, 3
  %1211 = add i32 1, %1210
  %1212 = getelementptr [192 x float], [192 x float] addrspace(3)* @"\01?tiledSharedMaxDiagonal@@3PAV?$vector@M$02@@A.v.1dim", i32 0, i32 %1211
  %1213 = load float, float addrspace(3)* %1212, align 4
  %1214 = mul i32 %1187, 3
  %1215 = add i32 2, %1214
  %1216 = getelementptr [192 x float], [192 x float] addrspace(3)* @"\01?tiledSharedMaxDiagonal@@3PAV?$vector@M$02@@A.v.1dim", i32 0, i32 %1215
  %1217 = load float, float addrspace(3)* %1216, align 4
  %1218 = load float, float addrspace(3)* %1057, align 4
  %1219 = load float, float addrspace(3)* %1060, align 4
  %1220 = load float, float addrspace(3)* %1063, align 4
  %1221 = call float @dx.op.binary.f32(i32 35, float %1218, float %1209)  ; FMax(a,b)
  %1222 = call float @dx.op.binary.f32(i32 35, float %1219, float %1213)  ; FMax(a,b)
  %1223 = call float @dx.op.binary.f32(i32 35, float %1220, float %1217)  ; FMax(a,b)
  store float %1221, float addrspace(3)* %1057, align 4
  store float %1222, float addrspace(3)* %1060, align 4
  store float %1223, float addrspace(3)* %1063, align 4
  br label %1224

; <label>:1224                                    ; preds = %1186, %1184
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %1225 = icmp ult i32 %1064, 2
  br i1 %1225, label %1226, label %1264, !dx.controlflow.hints !51

; <label>:1226                                    ; preds = %1224
  %1227 = add i32 %19, 2
  %1228 = mul i32 %1227, 3
  %1229 = add i32 0, %1228
  %1230 = getelementptr [192 x float], [192 x float] addrspace(3)* @"\01?tiledSharedMinDiagonal@@3PAV?$vector@M$02@@A.v.1dim", i32 0, i32 %1229
  %1231 = load float, float addrspace(3)* %1230, align 4
  %1232 = mul i32 %1227, 3
  %1233 = add i32 1, %1232
  %1234 = getelementptr [192 x float], [192 x float] addrspace(3)* @"\01?tiledSharedMinDiagonal@@3PAV?$vector@M$02@@A.v.1dim", i32 0, i32 %1233
  %1235 = load float, float addrspace(3)* %1234, align 4
  %1236 = mul i32 %1227, 3
  %1237 = add i32 2, %1236
  %1238 = getelementptr [192 x float], [192 x float] addrspace(3)* @"\01?tiledSharedMinDiagonal@@3PAV?$vector@M$02@@A.v.1dim", i32 0, i32 %1237
  %1239 = load float, float addrspace(3)* %1238, align 4
  %1240 = load float, float addrspace(3)* %1048, align 4
  %1241 = load float, float addrspace(3)* %1051, align 4
  %1242 = load float, float addrspace(3)* %1054, align 4
  %1243 = call float @dx.op.binary.f32(i32 36, float %1240, float %1231)  ; FMin(a,b)
  %1244 = call float @dx.op.binary.f32(i32 36, float %1241, float %1235)  ; FMin(a,b)
  %1245 = call float @dx.op.binary.f32(i32 36, float %1242, float %1239)  ; FMin(a,b)
  store float %1243, float addrspace(3)* %1048, align 4
  store float %1244, float addrspace(3)* %1051, align 4
  store float %1245, float addrspace(3)* %1054, align 4
  %1246 = mul i32 %1227, 3
  %1247 = add i32 0, %1246
  %1248 = getelementptr [192 x float], [192 x float] addrspace(3)* @"\01?tiledSharedMaxDiagonal@@3PAV?$vector@M$02@@A.v.1dim", i32 0, i32 %1247
  %1249 = load float, float addrspace(3)* %1248, align 4
  %1250 = mul i32 %1227, 3
  %1251 = add i32 1, %1250
  %1252 = getelementptr [192 x float], [192 x float] addrspace(3)* @"\01?tiledSharedMaxDiagonal@@3PAV?$vector@M$02@@A.v.1dim", i32 0, i32 %1251
  %1253 = load float, float addrspace(3)* %1252, align 4
  %1254 = mul i32 %1227, 3
  %1255 = add i32 2, %1254
  %1256 = getelementptr [192 x float], [192 x float] addrspace(3)* @"\01?tiledSharedMaxDiagonal@@3PAV?$vector@M$02@@A.v.1dim", i32 0, i32 %1255
  %1257 = load float, float addrspace(3)* %1256, align 4
  %1258 = load float, float addrspace(3)* %1057, align 4
  %1259 = load float, float addrspace(3)* %1060, align 4
  %1260 = load float, float addrspace(3)* %1063, align 4
  %1261 = call float @dx.op.binary.f32(i32 35, float %1258, float %1249)  ; FMax(a,b)
  %1262 = call float @dx.op.binary.f32(i32 35, float %1259, float %1253)  ; FMax(a,b)
  %1263 = call float @dx.op.binary.f32(i32 35, float %1260, float %1257)  ; FMax(a,b)
  store float %1261, float addrspace(3)* %1057, align 4
  store float %1262, float addrspace(3)* %1060, align 4
  store float %1263, float addrspace(3)* %1063, align 4
  br label %1264

; <label>:1264                                    ; preds = %1226, %1224
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %1265 = icmp eq i32 %1064, 0
  br i1 %1265, label %1266, label %1304, !dx.controlflow.hints !52

; <label>:1266                                    ; preds = %1264
  %1267 = add i32 %19, 1
  %1268 = mul i32 %1267, 3
  %1269 = add i32 0, %1268
  %1270 = getelementptr [192 x float], [192 x float] addrspace(3)* @"\01?tiledSharedMinDiagonal@@3PAV?$vector@M$02@@A.v.1dim", i32 0, i32 %1269
  %1271 = load float, float addrspace(3)* %1270, align 4
  %1272 = mul i32 %1267, 3
  %1273 = add i32 1, %1272
  %1274 = getelementptr [192 x float], [192 x float] addrspace(3)* @"\01?tiledSharedMinDiagonal@@3PAV?$vector@M$02@@A.v.1dim", i32 0, i32 %1273
  %1275 = load float, float addrspace(3)* %1274, align 4
  %1276 = mul i32 %1267, 3
  %1277 = add i32 2, %1276
  %1278 = getelementptr [192 x float], [192 x float] addrspace(3)* @"\01?tiledSharedMinDiagonal@@3PAV?$vector@M$02@@A.v.1dim", i32 0, i32 %1277
  %1279 = load float, float addrspace(3)* %1278, align 4
  %1280 = load float, float addrspace(3)* %1048, align 4
  %1281 = load float, float addrspace(3)* %1051, align 4
  %1282 = load float, float addrspace(3)* %1054, align 4
  %1283 = call float @dx.op.binary.f32(i32 36, float %1280, float %1271)  ; FMin(a,b)
  %1284 = call float @dx.op.binary.f32(i32 36, float %1281, float %1275)  ; FMin(a,b)
  %1285 = call float @dx.op.binary.f32(i32 36, float %1282, float %1279)  ; FMin(a,b)
  store float %1283, float addrspace(3)* %1048, align 4
  store float %1284, float addrspace(3)* %1051, align 4
  store float %1285, float addrspace(3)* %1054, align 4
  %1286 = mul i32 %1267, 3
  %1287 = add i32 0, %1286
  %1288 = getelementptr [192 x float], [192 x float] addrspace(3)* @"\01?tiledSharedMaxDiagonal@@3PAV?$vector@M$02@@A.v.1dim", i32 0, i32 %1287
  %1289 = load float, float addrspace(3)* %1288, align 4
  %1290 = mul i32 %1267, 3
  %1291 = add i32 1, %1290
  %1292 = getelementptr [192 x float], [192 x float] addrspace(3)* @"\01?tiledSharedMaxDiagonal@@3PAV?$vector@M$02@@A.v.1dim", i32 0, i32 %1291
  %1293 = load float, float addrspace(3)* %1292, align 4
  %1294 = mul i32 %1267, 3
  %1295 = add i32 2, %1294
  %1296 = getelementptr [192 x float], [192 x float] addrspace(3)* @"\01?tiledSharedMaxDiagonal@@3PAV?$vector@M$02@@A.v.1dim", i32 0, i32 %1295
  %1297 = load float, float addrspace(3)* %1296, align 4
  %1298 = load float, float addrspace(3)* %1057, align 4
  %1299 = load float, float addrspace(3)* %1060, align 4
  %1300 = load float, float addrspace(3)* %1063, align 4
  %1301 = call float @dx.op.binary.f32(i32 35, float %1298, float %1289)  ; FMax(a,b)
  %1302 = call float @dx.op.binary.f32(i32 35, float %1299, float %1293)  ; FMax(a,b)
  %1303 = call float @dx.op.binary.f32(i32 35, float %1300, float %1297)  ; FMax(a,b)
  store float %1301, float addrspace(3)* %1057, align 4
  store float %1302, float addrspace(3)* %1060, align 4
  store float %1303, float addrspace(3)* %1063, align 4
  br label %1304

; <label>:1304                                    ; preds = %1266, %1264
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1305 = and i32 %19, -64
  %1306 = mul i32 %1305, 3
  %1307 = add i32 0, %1306
  %1308 = getelementptr [192 x float], [192 x float] addrspace(3)* @"\01?tiledSharedMinDiagonal@@3PAV?$vector@M$02@@A.v.1dim", i32 0, i32 %1307
  %1309 = load float, float addrspace(3)* %1308, align 4
  %1310 = mul i32 %1305, 3
  %1311 = add i32 1, %1310
  %1312 = getelementptr [192 x float], [192 x float] addrspace(3)* @"\01?tiledSharedMinDiagonal@@3PAV?$vector@M$02@@A.v.1dim", i32 0, i32 %1311
  %1313 = load float, float addrspace(3)* %1312, align 4
  %1314 = mul i32 %1305, 3
  %1315 = add i32 2, %1314
  %1316 = getelementptr [192 x float], [192 x float] addrspace(3)* @"\01?tiledSharedMinDiagonal@@3PAV?$vector@M$02@@A.v.1dim", i32 0, i32 %1315
  %1317 = load float, float addrspace(3)* %1316, align 4
  %1318 = mul i32 %1305, 3
  %1319 = add i32 0, %1318
  %1320 = getelementptr [192 x float], [192 x float] addrspace(3)* @"\01?tiledSharedMaxDiagonal@@3PAV?$vector@M$02@@A.v.1dim", i32 0, i32 %1319
  %1321 = load float, float addrspace(3)* %1320, align 4
  %1322 = mul i32 %1305, 3
  %1323 = add i32 1, %1322
  %1324 = getelementptr [192 x float], [192 x float] addrspace(3)* @"\01?tiledSharedMaxDiagonal@@3PAV?$vector@M$02@@A.v.1dim", i32 0, i32 %1323
  %1325 = load float, float addrspace(3)* %1324, align 4
  %1326 = mul i32 %1305, 3
  %1327 = add i32 2, %1326
  %1328 = getelementptr [192 x float], [192 x float] addrspace(3)* @"\01?tiledSharedMaxDiagonal@@3PAV?$vector@M$02@@A.v.1dim", i32 0, i32 %1327
  %1329 = load float, float addrspace(3)* %1328, align 4
  %1330 = icmp eq i32 %19, 0
  br i1 %1330, label %1331, label %1355, !dx.controlflow.hints !53

; <label>:1331                                    ; preds = %1304
  %1332 = fadd fast float %1321, %1309
  %1333 = fadd fast float %1325, %1313
  %1334 = fadd fast float %1329, %1317
  %1335 = fmul fast float %1332, 5.000000e-01
  %1336 = fmul fast float %1333, 5.000000e-01
  %1337 = fmul fast float %1334, 5.000000e-01
  %1338 = fsub fast float %1321, %1309
  %1339 = fsub fast float %1325, %1313
  %1340 = fsub fast float %1329, %1317
  %1341 = fmul fast float %1338, 5.000000e-01
  %1342 = fmul fast float %1339, 5.000000e-01
  %1343 = fmul fast float %1340, 5.000000e-01
  %1344 = bitcast float %1335 to i32
  %1345 = bitcast float %1336 to i32
  %1346 = bitcast float %1337 to i32
  %1347 = add i32 %26, 3
  %1348 = mul i32 %27, 6
  %1349 = add i32 %1347, %1348
  %1350 = shl i32 %1349, 2
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %1350, i32 undef, i32 %1344, i32 %1345, i32 %1346, i32 undef, i8 7)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %1351 = bitcast float %1341 to i32
  %1352 = bitcast float %1342 to i32
  %1353 = bitcast float %1343 to i32
  %1354 = add i32 %1350, 12
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %1354, i32 undef, i32 %1351, i32 %1352, i32 %1353, i32 undef, i8 7)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %1355

; <label>:1355                                    ; preds = %1331, %1304
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @dx.op.groupId.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.flattenedThreadIdInGroup.i32(i32) #0

; Function Attrs: noduplicate nounwind
declare void @dx.op.barrier(i32, i32) #1

; Function Attrs: nounwind readnone
declare float @dx.op.binary.f32(i32, float, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.unary.f32(i32, float) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.binary.i32(i32, i32, i32) #0

; Function Attrs: nounwind readnone
declare float @dx.op.dot3.f32(i32, float, float, float, float, float, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.dot4.f32(i32, float, float, float, float, float, float, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32, %dx.types.Handle, i32) #2

; Function Attrs: nounwind readnone
declare float @dx.op.tertiary.f32(i32, float, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.Handle @dx.op.createHandle(i32, i8, i32, i32, i1) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32, %dx.types.Handle, i32, i32) #2

; Function Attrs: nounwind
declare void @dx.op.bufferStore.i32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i8) #3

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32, %dx.types.Handle, i32, i32) #2

attributes #0 = { nounwind readnone }
attributes #1 = { noduplicate nounwind }
attributes #2 = { nounwind readonly }
attributes #3 = { nounwind }

!llvm.ident = !{!0}
!dx.version = !{!1}
!dx.valver = !{!2}
!dx.shaderModel = !{!3}
!dx.resources = !{!4}
!dx.entryPoints = !{!21}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !17, !19, null}
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15, !16}
!6 = !{i32 0, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 1, i32 1, i32 11, i32 0, null}
!7 = !{i32 1, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 3, i32 1, i32 11, i32 0, null}
!8 = !{i32 2, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 10, i32 1, i32 11, i32 0, null}
!9 = !{i32 3, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 11, i32 1, i32 11, i32 0, null}
!10 = !{i32 4, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 12, i32 1, i32 11, i32 0, null}
!11 = !{i32 5, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 13, i32 1, i32 11, i32 0, null}
!12 = !{i32 6, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 14, i32 1, i32 11, i32 0, null}
!13 = !{i32 7, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 29, i32 1, i32 11, i32 0, null}
!14 = !{i32 8, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 31, i32 1, i32 11, i32 0, null}
!15 = !{i32 9, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 32, i32 1, i32 11, i32 0, null}
!16 = !{i32 10, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 34, i32 1, i32 11, i32 0, null}
!17 = !{!18}
!18 = !{i32 0, %struct.RWByteAddressBuffer* undef, !"", i32 0, i32 1, i32 1, i32 11, i1 false, i1 false, i1 false, null}
!19 = !{!20}
!20 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!21 = !{void ()* @splined_cluster_bound_gen_pass, !"splined_cluster_bound_gen_pass", null, !4, !22}
!22 = !{i32 0, i64 272, i32 4, !23}
!23 = !{i32 64, i32 1, i32 1}
!24 = !{i32 1}
!25 = distinct !{!25, !"dx.controlflow.hints", i32 2}
!26 = !{!27, !27, i64 0}
!27 = !{!"float", !28, i64 0}
!28 = !{!"omnipotent char", !29, i64 0}
!29 = !{!"Simple C/C++ TBAA"}
!30 = !{!31}
!31 = distinct !{!31, !32, !"\01?SplinedModel_DeformPosition@@YAXUGfxSplinedModelGlobals@@UGpuSplinedModelInstancePacked@@AIAV?$vector@M$02@@@Z: %vPos"}
!32 = distinct !{!32, !"\01?SplinedModel_DeformPosition@@YAXUGfxSplinedModelGlobals@@UGpuSplinedModelInstancePacked@@AIAV?$vector@M$02@@@Z"}
!33 = distinct !{!33, !"dx.controlflow.hints", i32 2}
!34 = distinct !{!34, !"dx.controlflow.hints", i32 2}
!35 = distinct !{!35, !"dx.controlflow.hints", i32 2}
!36 = distinct !{!36, !"dx.controlflow.hints", i32 2}
!37 = distinct !{!37, !"dx.controlflow.hints", i32 2}
!38 = distinct !{!38, !"dx.controlflow.hints", i32 2}
!39 = distinct !{!39, !"dx.controlflow.hints", i32 2}
!40 = distinct !{!40, !"dx.controlflow.hints", i32 2}
!41 = distinct !{!41, !"dx.controlflow.hints", i32 2}
!42 = distinct !{!42, !"dx.controlflow.hints", i32 2}
!43 = distinct !{!43, !"dx.controlflow.hints", i32 2}
!44 = distinct !{!44, !"dx.controlflow.hints", i32 2}
!45 = distinct !{!45, !46}
!46 = !{!"llvm.loop.unroll.disable"}
!47 = distinct !{!47, !"dx.controlflow.hints", i32 2}
!48 = distinct !{!48, !"dx.controlflow.hints", i32 2}
!49 = distinct !{!49, !"dx.controlflow.hints", i32 2}
!50 = distinct !{!50, !"dx.controlflow.hints", i32 2}
!51 = distinct !{!51, !"dx.controlflow.hints", i32 2}
!52 = distinct !{!52, !"dx.controlflow.hints", i32 2}
!53 = distinct !{!53, !"dx.controlflow.hints", i32 2}

