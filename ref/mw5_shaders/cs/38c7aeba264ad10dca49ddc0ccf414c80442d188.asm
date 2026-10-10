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
; shader hash: db8c6d70d66162ee85a1fb40dff26a08
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
; Resource bind info for 
; {
;
;   [164 x i8] (type annotation not present)
; }
;
; Resource bind info for 
; {
;
;   [32 x i8] (type annotation not present)
; }
;
; Resource bind info for 
; {
;
;   [8 x i8] (type annotation not present)
;
; }
;
;
; Resource Bindings:
;
; Name                                 Type  Format         Dim      ID      HLSL Bind  Count
; ------------------------------ ---------- ------- ----------- ------- -------------- ------
;                                   cbuffer      NA          NA     CB0            cb3     1
;                                   texture    byte         r/o      T0             t2     1
;                                   texture     u32          2d      T1             t3     1
;                                   texture     f32          2d      T2            t36     1
;                                   texture  struct         r/o      T3            t39     1
;                                   texture  struct         r/o      T4            t34     1
;                                   texture  struct         r/o      T5            t35     1
;                                       UAV     f32          2d      U0             u7     1
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.ResRet.i32 = type { i32, i32, i32, i32, i32 }
%dx.types.ResRet.f32 = type { float, float, float, float, i32 }
%dx.types.CBufRet.i32 = type { i32, i32, i32, i32 }
%dx.types.CBufRet.f32 = type { float, float, float, float }
%struct.ByteAddressBuffer = type { i32 }
%"class.Texture2D<vector<unsigned int, 4> >" = type { <4 x i32>, %"class.Texture2D<vector<unsigned int, 4> >::mips_type" }
%"class.Texture2D<vector<unsigned int, 4> >::mips_type" = type { i32 }
%"class.Texture2D<vector<float, 4> >" = type { <4 x float>, %"class.Texture2D<vector<float, 4> >::mips_type" }
%"class.Texture2D<vector<float, 4> >::mips_type" = type { i32 }
%"class.StructuredBuffer<VolumetricBBoxGpu>" = type { %struct.VolumetricBBoxGpu }
%struct.VolumetricBBoxGpu = type { <3 x float>, i32, <3 x float>, float, <3 x float>, float, <3 x float>, float, <2 x float>, float, float, <3 x float>, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, i32, i32 }
%"class.StructuredBuffer<VolumetricParticle>" = type { %struct.VolumetricParticle }
%struct.VolumetricParticle = type { float, float, i32, i32, <3 x float>, float }
%"class.StructuredBuffer<vector<unsigned int, 2> >" = type { <2 x i32> }
%"class.RWTexture2D<vector<float, 4> >" = type { <4 x float> }
%hostlayout.scene = type { %hostlayout.struct.GfxCodeSceneConsts }
%hostlayout.struct.GfxCodeSceneConsts = type { <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <3 x float>, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x i32>, <4 x i32>, <4 x float>, float, float, float, float, i32, i32, float, float, <2 x i32>, <2 x i32>, <2 x float>, <2 x float>, <3 x float>, i32, <3 x float>, float, <3 x float>, float, <2 x float>, <2 x float>, <3 x float>, float, <3 x float>, float, float, float, float, float, <3 x float>, float, i32, float, float, float, <4 x float>, <3 x float>, float, float, float, float, float, <4 x float>, float, float, float, float, i32, i32, i32, float, <4 x float>, i32, i32, i32, i32, i32, i32, i32, i32, <2 x i32>, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, [2 x <4 x i32>], [3 x <2 x float>], i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <2 x float>, <2 x float>, <4 x float>, <4 x i32>, <4 x float>, i32, float, float, float, i32, i32, i32, i32, <2 x float>, <2 x float>, <2 x float>, <2 x float>, i32, i32, <2 x float>, <2 x float>, <2 x float>, <3 x float>, i32, i32, i32, i32, i32, <4 x i32>, <4 x i32>, <4 x i32>, <4 x float>, i32, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <3 x float>, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], <4 x float>, [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], i32, i32, float, i32, <2 x float>, float, float, float, float, float, i32, <3 x float>, float, float, float, float, float, <3 x float>, float, <3 x float>, float, <3 x float>, float, float, float, float, float, <2 x float>, <2 x float>, float, float, float, float, <3 x float>, float, <2 x float>, i32, i32, <3 x float>, float, float, float, float, float, float, float, float, float, [4 x <3 x float>], i32, [4 x <3 x float>], i32, [4 x <3 x float>], i32, <4 x i32>, <2 x float>, <2 x float>, <2 x float>, i32, i32, float, float, float, float, <4 x float>, <4 x i32>, <4 x float>, <4 x float>, <4 x float>, i32, i32, i32, i32, <4 x float>, i32, float, float, i32, i32, float, float, i32, i32, float, float, i32, i32, float, float, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, float, float, float, float, i32, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, i32, i32, i32, float, <4 x float>, <4 x float>, <4 x float>, <4 x float>, i32, i32, i32, float, <4 x float>, float, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x i32>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [8 x <4 x float>], [8 x <4 x float>], <4 x float>, <3 x float>, i32, <2 x float>, float, float, float, float, float, float, <2 x float>, <2 x float>, <2 x float>, <2 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <2 x float>, float, float, <4 x float>, i32, i32, i32, i32, <3 x float>, i32, <4 x i32>, <4 x i32>, <2 x float>, <2 x i32>, <4 x float>, <4 x float>, <2 x float>, <2 x float>, [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, float, i32, i32, i32, i32, i32, float, float, <2 x float>, <2 x float>, float, float, float, float, i32, float, float, float, float, float, float, float, float, float, float, float, float, i32, i32, i32, float, float, float, i32, <2 x i32>, <2 x i32>, <4 x i32>, float, float, float, float, <4 x float>, <4 x float>, <2 x float>, <2 x float>, <4 x float>, <4 x float>, float, float, float, float, <4 x float>, float, float, float, float, i32, i32, float, float, <4 x float>, <2 x float>, <2 x float>, i32, i32, float, float, [4 x <4 x float>], float, float, float, float, float, float, float, float, i32, i32, i32, float, <4 x float>, <4 x float>, i32, i32, i32, i32, <2 x i32>, <2 x i32>, [2 x <4 x i32>], i32, float, float, float, i32, float, float, i32, <2 x i32>, <2 x float>, float, float, float, i32, %struct.GfxWeatherData, %hostlayout.struct.GfxVolumetricData, %struct.GfxFogRaymarchingData, %struct.GfxEnvironmentalFogData, %struct.GfxShallowWaterData, %struct.GfxGroundDeformationData, %struct.GfxSplinedModelGlobals }
%struct.GfxWeatherData = type { i32, i32, i32, i32, float, float, float, float, float, float, i32, i32, float, float, float, float, i32, i32, i32, i32, float, float, float, float, float, i32, i32, i32, i32, i32, i32, i32, <3 x float>, i32, <3 x float>, i32, i32, float, i32, i32, float, float, float, float }
%hostlayout.struct.GfxVolumetricData = type { [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <2 x float>, <2 x float>, <2 x float>, <2 x float>, <3 x i32>, i32, <3 x float>, i32, <4 x float>, <3 x float>, i32, i32, float, float, float, i32, i32, i32, float, <4 x float>, float, float, i32, i32, <3 x float>, i32, <3 x float>, float, <3 x float>, float, <2 x float>, float, float, <3 x float>, float, <3 x float>, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, <3 x float>, float, i32, float, float, float, <3 x float>, float, <2 x float>, <2 x float>, <3 x float>, float, i32, float, float, float, float, float, float, float, i32, i32, float, float, <3 x float>, float, i32, i32, <2 x float> }
%struct.GfxFogRaymarchingData = type { <2 x float>, <2 x float>, float, float, float, float, float, float, float, float, float, float, float, float, <2 x float>, <2 x float>, <3 x float>, float }
%struct.GfxEnvironmentalFogData = type { float, float, float, i32 }
%struct.GfxShallowWaterData = type { i32, i32, i32, i32, float, float, float, float, <2 x float>, <2 x float>, float, float, float, float, <3 x float>, float, float, float, float, float, float, float, float, float, i32, float, float, float, float, float, float, float, float, float, float, float, i32, float, float, float, float, i32, i32, i32 }
%struct.GfxGroundDeformationData = type { <2 x float>, <2 x float>, float, float, float, float, float, float, float, float, float, float, float, float, float, float, i32, i32 }
%struct.GfxSplinedModelGlobals = type { [64 x <4 x float>], [64 x <4 x float>], [16 x <4 x float>], [32 x <4 x float>], [64 x <4 x float>], [16 x <4 x float>], [16 x <4 x float>], float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float }

@uvModList.0 = internal unnamed_addr constant [4 x i32] [i32 -1, i32 1, i32 0, i32 0], align 4
@uvModList.1 = internal unnamed_addr constant [4 x i32] [i32 0, i32 0, i32 -1, i32 1], align 4

define void @cs_volumetric_splat_particles() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 7, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 35, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 34, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 39, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 36, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call i32 @dx.op.groupId.i32(i32 94, i32 0)  ; GroupId(component)
  %10 = call i32 @dx.op.threadIdInGroup.i32(i32 95, i32 0)  ; ThreadIdInGroup(component)
  %11 = call i32 @dx.op.threadIdInGroup.i32(i32 95, i32 1)  ; ThreadIdInGroup(component)
  %12 = alloca [4 x float], align 4
  %13 = shl i32 %9, 2
  %14 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %13, i32 undef)  ; BufferLoad(srv,index,wot)
  %15 = extractvalue %dx.types.ResRet.i32 %14, 0
  %16 = lshr i32 %15, 11
  %17 = and i32 %16, 131064
  %18 = add i32 %17, %10
  %19 = shl i32 %15, 3
  %20 = and i32 %19, 131064
  %21 = add i32 %20, %11
  %22 = lshr i32 %18, 3
  %23 = lshr i32 %21, 3
  %24 = and i32 %15, 268435456
  %25 = icmp eq i32 %24, 0
  %26 = uitofp i32 %18 to float
  %27 = uitofp i32 %21 to float
  %28 = shl i32 %23, 7
  %29 = add i32 %28, %22
  %30 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %29, i32 0)  ; BufferLoad(srv,index,wot)
  %31 = extractvalue %dx.types.ResRet.i32 %30, 0
  %32 = extractvalue %dx.types.ResRet.i32 %30, 1
  %33 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %5, i32 0, i32 %18, i32 %21, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %34 = extractvalue %dx.types.ResRet.f32 %33, 0
  %35 = extractvalue %dx.types.ResRet.f32 %33, 1
  %36 = extractvalue %dx.types.ResRet.f32 %33, 2
  %37 = extractvalue %dx.types.ResRet.f32 %33, 3
  %38 = select i1 %25, float 0.000000e+00, float %34
  %39 = select i1 %25, float 0.000000e+00, float %35
  %40 = select i1 %25, float 0.000000e+00, float %36
  %41 = select i1 %25, float 0.000000e+00, float %37
  %42 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %8, i32 418)  ; CBufferLoadLegacy(handle,regIndex)
  %43 = extractvalue %dx.types.CBufRet.i32 %42, 0
  %44 = icmp sgt i32 %43, 0
  br i1 %44, label %45, label %96, !dx.controlflow.hints !24

; <label>:45                                      ; preds = %0
  %46 = fadd fast float %26, 5.000000e-01
  %47 = fadd fast float %27, 5.000000e-01
  %48 = fmul fast float %46, 9.765625e-04
  %49 = fmul fast float %47, 9.765625e-04
  %50 = fsub fast float 1.000000e+00, %49
  %51 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %8, i32 415)  ; CBufferLoadLegacy(handle,regIndex)
  %52 = extractvalue %dx.types.CBufRet.f32 %51, 0
  %53 = extractvalue %dx.types.CBufRet.f32 %51, 1
  %54 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %8, i32 414)  ; CBufferLoadLegacy(handle,regIndex)
  %55 = extractvalue %dx.types.CBufRet.f32 %54, 0
  %56 = extractvalue %dx.types.CBufRet.f32 %54, 1
  %57 = fmul fast float %48, %55
  %58 = fmul fast float %56, %50
  %59 = fadd fast float %57, %52
  %60 = fadd fast float %58, %53
  br label %61

; <label>:61                                      ; preds = %80, %45
  %62 = phi i32 [ %81, %80 ], [ 0, %45 ]
  %63 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %4, i32 %62, i32 0)  ; BufferLoad(srv,index,wot)
  %64 = extractvalue %dx.types.ResRet.f32 %63, 0
  %65 = extractvalue %dx.types.ResRet.f32 %63, 1
  %66 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %4, i32 %62, i32 16)  ; BufferLoad(srv,index,wot)
  %67 = extractvalue %dx.types.ResRet.f32 %66, 0
  %68 = extractvalue %dx.types.ResRet.f32 %66, 1
  %69 = fsub fast float %64, %67
  %70 = fsub fast float %65, %68
  %71 = fadd fast float %67, %64
  %72 = fadd fast float %68, %65
  %73 = fcmp fast olt float %59, %69
  %74 = fcmp fast olt float %60, %70
  %75 = or i1 %73, %74
  %76 = fcmp fast ogt float %59, %71
  %77 = fcmp fast ogt float %60, %72
  %78 = or i1 %76, %77
  %79 = or i1 %75, %78
  br i1 %79, label %80, label %83, !dx.controlflow.hints !25

; <label>:80                                      ; preds = %61
  %81 = add nuw i32 %62, 1
  %82 = icmp ult i32 %81, %43
  br i1 %82, label %61, label %83

; <label>:83                                      ; preds = %80, %61
  %84 = phi i32 [ %62, %61 ], [ 255, %80 ]
  %85 = icmp eq i32 %84, 255
  br i1 %85, label %96, label %86, !dx.controlflow.hints !26

; <label>:86                                      ; preds = %83
  %87 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %4, i32 %84, i32 0)  ; BufferLoad(srv,index,wot)
  %88 = extractvalue %dx.types.ResRet.f32 %87, 2
  %89 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %4, i32 %84, i32 16)  ; BufferLoad(srv,index,wot)
  %90 = extractvalue %dx.types.ResRet.f32 %89, 2
  %91 = fadd fast float %90, %88
  %92 = fcmp fast olt float %40, %91
  %93 = fsub fast float %88, %90
  %94 = fcmp fast ogt float %39, %93
  %95 = and i1 %92, %94
  br i1 %95, label %97, label %96, !dx.controlflow.hints !27

; <label>:96                                      ; preds = %86, %83, %0
  br label %97

; <label>:97                                      ; preds = %96, %86
  %98 = phi i32 [ 255, %96 ], [ %84, %86 ]
  %99 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %8, i32 407)  ; CBufferLoadLegacy(handle,regIndex)
  %100 = extractvalue %dx.types.CBufRet.f32 %99, 2
  %101 = extractvalue %dx.types.CBufRet.f32 %99, 3
  %102 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %8, i32 411)  ; CBufferLoadLegacy(handle,regIndex)
  %103 = extractvalue %dx.types.CBufRet.f32 %102, 3
  %104 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %8, i32 408)  ; CBufferLoadLegacy(handle,regIndex)
  %105 = extractvalue %dx.types.CBufRet.f32 %104, 1
  %106 = icmp eq i32 %98, 255
  br i1 %106, label %116, label %107, !dx.controlflow.hints !28

; <label>:107                                     ; preds = %97
  %108 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %4, i32 %98, i32 92)  ; BufferLoad(srv,index,wot)
  %109 = extractvalue %dx.types.ResRet.f32 %108, 0
  %110 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %4, i32 %98, i32 100)  ; BufferLoad(srv,index,wot)
  %111 = extractvalue %dx.types.ResRet.f32 %110, 0
  %112 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %4, i32 %98, i32 124)  ; BufferLoad(srv,index,wot)
  %113 = extractvalue %dx.types.ResRet.f32 %112, 0
  %114 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %4, i32 %98, i32 128)  ; BufferLoad(srv,index,wot)
  %115 = extractvalue %dx.types.ResRet.f32 %114, 0
  br label %116

; <label>:116                                     ; preds = %107, %97
  %117 = phi float [ %115, %107 ], [ %100, %97 ]
  %118 = phi float [ %113, %107 ], [ %101, %97 ]
  %119 = phi float [ %111, %107 ], [ %103, %97 ]
  %120 = phi float [ %109, %107 ], [ %105, %97 ]
  %121 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %8, i32 416)  ; CBufferLoadLegacy(handle,regIndex)
  %122 = extractvalue %dx.types.CBufRet.i32 %121, 0
  %123 = icmp ne i32 %122, 0
  %124 = fmul fast float %117, %38
  %125 = select i1 %123, float %124, float %38
  %126 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %8, i32 396)  ; CBufferLoadLegacy(handle,regIndex)
  %127 = extractvalue %dx.types.CBufRet.i32 %126, 0
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %276, label %129, !dx.controlflow.hints !29

; <label>:129                                     ; preds = %116
  %130 = icmp eq i32 %31, 0
  br i1 %130, label %133, label %131

; <label>:131                                     ; preds = %129
  br label %140

; <label>:132                                     ; preds = %201
  br label %133

; <label>:133                                     ; preds = %132, %129
  %134 = phi float [ %125, %129 ], [ %202, %132 ]
  %135 = phi float [ %39, %129 ], [ %203, %132 ]
  %136 = phi float [ %40, %129 ], [ %204, %132 ]
  %137 = phi float [ %41, %129 ], [ %205, %132 ]
  %138 = icmp eq i32 %32, 0
  br i1 %138, label %276, label %139

; <label>:139                                     ; preds = %133
  br label %207

; <label>:140                                     ; preds = %201, %131
  %141 = phi i32 [ %149, %201 ], [ %31, %131 ]
  %142 = phi float [ %202, %201 ], [ %125, %131 ]
  %143 = phi float [ %203, %201 ], [ %39, %131 ]
  %144 = phi float [ %204, %201 ], [ %40, %131 ]
  %145 = phi float [ %205, %201 ], [ %41, %131 ]
  %146 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %141)  ; FirstbitLo(value)
  %147 = and i32 %146, 31
  %148 = shl i32 1, %147
  %149 = xor i32 %148, %141
  %150 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %146, i32 0)  ; BufferLoad(srv,index,wot)
  %151 = extractvalue %dx.types.ResRet.f32 %150, 0
  %152 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %146, i32 4)  ; BufferLoad(srv,index,wot)
  %153 = extractvalue %dx.types.ResRet.f32 %152, 0
  %154 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %146, i32 16)  ; BufferLoad(srv,index,wot)
  %155 = extractvalue %dx.types.ResRet.f32 %154, 0
  %156 = extractvalue %dx.types.ResRet.f32 %154, 1
  %157 = extractvalue %dx.types.ResRet.f32 %154, 2
  %158 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %146, i32 28)  ; BufferLoad(srv,index,wot)
  %159 = extractvalue %dx.types.ResRet.f32 %158, 0
  %160 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %8, i32 411)  ; CBufferLoadLegacy(handle,regIndex)
  %161 = extractvalue %dx.types.CBufRet.f32 %160, 3
  %162 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %8, i32 408)  ; CBufferLoadLegacy(handle,regIndex)
  %163 = extractvalue %dx.types.CBufRet.f32 %162, 2
  br i1 %106, label %169, label %164, !dx.controlflow.hints !30

; <label>:164                                     ; preds = %140
  %165 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %4, i32 %98, i32 76)  ; BufferLoad(srv,index,wot)
  %166 = extractvalue %dx.types.ResRet.f32 %165, 0
  %167 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %4, i32 %98, i32 100)  ; BufferLoad(srv,index,wot)
  %168 = extractvalue %dx.types.ResRet.f32 %167, 0
  br label %169

; <label>:169                                     ; preds = %164, %140
  %170 = phi float [ %168, %164 ], [ %161, %140 ]
  %171 = phi float [ %166, %164 ], [ %163, %140 ]
  %172 = fsub fast float %155, %26
  %173 = fsub fast float %156, %27
  %174 = fmul fast float %172, %172
  %175 = fmul fast float %173, %173
  %176 = fadd fast float %174, %175
  %177 = call float @dx.op.unary.f32(i32 24, float %176)  ; Sqrt(value)
  %178 = fcmp fast olt float %177, %153
  br i1 %178, label %179, label %201, !dx.controlflow.hints !31

; <label>:179                                     ; preds = %169
  %180 = fdiv fast float %177, %153
  %181 = call float @dx.op.unary.f32(i32 7, float %180)  ; Saturate(value)
  %182 = fsub fast float 1.000000e+00, %181
  %183 = fmul fast float %170, %151
  %184 = fmul fast float %182, %182
  %185 = fmul fast float %184, %183
  %186 = fcmp fast oeq float %142, 0.000000e+00
  %187 = fadd fast float %159, %157
  %188 = fsub fast float %157, %159
  br i1 %186, label %201, label %189, !dx.controlflow.hints !32

; <label>:189                                     ; preds = %179
  %190 = fsub fast float %144, %171
  %191 = fcmp fast ogt float %187, %190
  %192 = fadd fast float %171, %143
  %193 = fcmp fast olt float %188, %192
  %194 = and i1 %191, %193
  br i1 %194, label %195, label %201, !dx.controlflow.hints !33

; <label>:195                                     ; preds = %189
  %196 = call float @dx.op.binary.f32(i32 35, float %185, float %142)  ; FMax(a,b)
  %197 = call float @dx.op.binary.f32(i32 35, float %187, float %143)  ; FMax(a,b)
  %198 = call float @dx.op.binary.f32(i32 36, float %188, float %144)  ; FMin(a,b)
  %199 = fsub fast float %197, %198
  %200 = fmul fast float %199, 5.000000e-01
  br label %201

; <label>:201                                     ; preds = %195, %189, %179, %169
  %202 = phi float [ %196, %195 ], [ %142, %189 ], [ %142, %169 ], [ %185, %179 ]
  %203 = phi float [ %197, %195 ], [ %143, %189 ], [ %143, %169 ], [ %187, %179 ]
  %204 = phi float [ %198, %195 ], [ %144, %189 ], [ %144, %169 ], [ %188, %179 ]
  %205 = phi float [ %200, %195 ], [ %145, %189 ], [ %145, %169 ], [ %159, %179 ]
  %206 = icmp eq i32 %141, %148
  br i1 %206, label %132, label %140

; <label>:207                                     ; preds = %269, %139
  %208 = phi i32 [ %217, %269 ], [ %32, %139 ]
  %209 = phi float [ %270, %269 ], [ %134, %139 ]
  %210 = phi float [ %271, %269 ], [ %135, %139 ]
  %211 = phi float [ %272, %269 ], [ %136, %139 ]
  %212 = phi float [ %273, %269 ], [ %137, %139 ]
  %213 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %208)  ; FirstbitLo(value)
  %214 = add i32 %213, 32
  %215 = and i32 %213, 31
  %216 = shl i32 1, %215
  %217 = xor i32 %216, %208
  %218 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %214, i32 0)  ; BufferLoad(srv,index,wot)
  %219 = extractvalue %dx.types.ResRet.f32 %218, 0
  %220 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %214, i32 4)  ; BufferLoad(srv,index,wot)
  %221 = extractvalue %dx.types.ResRet.f32 %220, 0
  %222 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %214, i32 16)  ; BufferLoad(srv,index,wot)
  %223 = extractvalue %dx.types.ResRet.f32 %222, 0
  %224 = extractvalue %dx.types.ResRet.f32 %222, 1
  %225 = extractvalue %dx.types.ResRet.f32 %222, 2
  %226 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %214, i32 28)  ; BufferLoad(srv,index,wot)
  %227 = extractvalue %dx.types.ResRet.f32 %226, 0
  %228 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %8, i32 411)  ; CBufferLoadLegacy(handle,regIndex)
  %229 = extractvalue %dx.types.CBufRet.f32 %228, 3
  %230 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %8, i32 408)  ; CBufferLoadLegacy(handle,regIndex)
  %231 = extractvalue %dx.types.CBufRet.f32 %230, 2
  br i1 %106, label %237, label %232, !dx.controlflow.hints !30

; <label>:232                                     ; preds = %207
  %233 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %4, i32 %98, i32 76)  ; BufferLoad(srv,index,wot)
  %234 = extractvalue %dx.types.ResRet.f32 %233, 0
  %235 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %4, i32 %98, i32 100)  ; BufferLoad(srv,index,wot)
  %236 = extractvalue %dx.types.ResRet.f32 %235, 0
  br label %237

; <label>:237                                     ; preds = %232, %207
  %238 = phi float [ %236, %232 ], [ %229, %207 ]
  %239 = phi float [ %234, %232 ], [ %231, %207 ]
  %240 = fsub fast float %223, %26
  %241 = fsub fast float %224, %27
  %242 = fmul fast float %240, %240
  %243 = fmul fast float %241, %241
  %244 = fadd fast float %242, %243
  %245 = call float @dx.op.unary.f32(i32 24, float %244)  ; Sqrt(value)
  %246 = fcmp fast olt float %245, %221
  br i1 %246, label %247, label %269, !dx.controlflow.hints !31

; <label>:247                                     ; preds = %237
  %248 = fdiv fast float %245, %221
  %249 = call float @dx.op.unary.f32(i32 7, float %248)  ; Saturate(value)
  %250 = fsub fast float 1.000000e+00, %249
  %251 = fmul fast float %238, %219
  %252 = fmul fast float %250, %250
  %253 = fmul fast float %252, %251
  %254 = fcmp fast oeq float %209, 0.000000e+00
  %255 = fadd fast float %227, %225
  %256 = fsub fast float %225, %227
  br i1 %254, label %269, label %257, !dx.controlflow.hints !32

; <label>:257                                     ; preds = %247
  %258 = fsub fast float %211, %239
  %259 = fcmp fast ogt float %255, %258
  %260 = fadd fast float %239, %210
  %261 = fcmp fast olt float %256, %260
  %262 = and i1 %259, %261
  br i1 %262, label %263, label %269, !dx.controlflow.hints !33

; <label>:263                                     ; preds = %257
  %264 = call float @dx.op.binary.f32(i32 35, float %253, float %209)  ; FMax(a,b)
  %265 = call float @dx.op.binary.f32(i32 35, float %255, float %210)  ; FMax(a,b)
  %266 = call float @dx.op.binary.f32(i32 36, float %256, float %211)  ; FMin(a,b)
  %267 = fsub fast float %265, %266
  %268 = fmul fast float %267, 5.000000e-01
  br label %269

; <label>:269                                     ; preds = %263, %257, %247, %237
  %270 = phi float [ %264, %263 ], [ %209, %257 ], [ %209, %237 ], [ %253, %247 ]
  %271 = phi float [ %265, %263 ], [ %210, %257 ], [ %210, %237 ], [ %255, %247 ]
  %272 = phi float [ %266, %263 ], [ %211, %257 ], [ %211, %237 ], [ %256, %247 ]
  %273 = phi float [ %268, %263 ], [ %212, %257 ], [ %212, %237 ], [ %227, %247 ]
  %274 = icmp eq i32 %208, %216
  br i1 %274, label %275, label %207

; <label>:275                                     ; preds = %269
  br label %276

; <label>:276                                     ; preds = %275, %133, %116
  %277 = phi float [ %125, %116 ], [ %134, %133 ], [ %270, %275 ]
  %278 = phi float [ %39, %116 ], [ %135, %133 ], [ %271, %275 ]
  %279 = phi float [ %40, %116 ], [ %136, %133 ], [ %272, %275 ]
  %280 = phi float [ %41, %116 ], [ %137, %133 ], [ %273, %275 ]
  %281 = icmp eq i32 %122, 0
  br i1 %281, label %480, label %282, !dx.controlflow.hints !34

; <label>:282                                     ; preds = %276
  %283 = extractvalue %dx.types.CBufRet.f32 %99, 0
  %284 = extractvalue %dx.types.CBufRet.f32 %99, 1
  br i1 %106, label %290, label %285, !dx.controlflow.hints !35

; <label>:285                                     ; preds = %282
  %286 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %4, i32 %98, i32 28)  ; BufferLoad(srv,index,wot)
  %287 = extractvalue %dx.types.ResRet.f32 %286, 0
  %288 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %4, i32 %98, i32 44)  ; BufferLoad(srv,index,wot)
  %289 = extractvalue %dx.types.ResRet.f32 %288, 0
  br label %290

; <label>:290                                     ; preds = %285, %282
  %291 = phi float [ %287, %285 ], [ %283, %282 ]
  %292 = phi float [ %289, %285 ], [ %284, %282 ]
  %293 = fmul fast float %291, 2.500000e-01
  %294 = fmul fast float %278, %277
  %295 = fmul fast float %279, %277
  br label %296

; <label>:296                                     ; preds = %296, %290
  %297 = phi float [ %277, %290 ], [ %341, %296 ]
  %298 = phi float [ %277, %290 ], [ %343, %296 ]
  %299 = phi float [ %294, %290 ], [ %345, %296 ]
  %300 = phi float [ %295, %290 ], [ %347, %296 ]
  %301 = phi i32 [ 0, %290 ], [ %348, %296 ]
  %302 = getelementptr [4 x i32], [4 x i32]* @uvModList.0, i32 0, i32 %301
  %303 = getelementptr [4 x i32], [4 x i32]* @uvModList.1, i32 0, i32 %301
  %304 = load i32, i32* %302, align 4
  %305 = load i32, i32* %303, align 4
  %306 = add i32 %304, %18
  %307 = add i32 %305, %21
  %308 = sitofp i32 %306 to float
  %309 = sitofp i32 %307 to float
  %310 = call float @dx.op.binary.f32(i32 35, float %308, float 0.000000e+00)  ; FMax(a,b)
  %311 = call float @dx.op.binary.f32(i32 35, float %309, float 0.000000e+00)  ; FMax(a,b)
  %312 = call float @dx.op.binary.f32(i32 36, float %310, float 1.024000e+03)  ; FMin(a,b)
  %313 = call float @dx.op.binary.f32(i32 36, float %311, float 1.024000e+03)  ; FMin(a,b)
  %314 = fptosi float %312 to i32
  %315 = fptosi float %313 to i32
  %316 = sdiv i32 %314, 8
  %317 = sdiv i32 %315, 8
  %318 = lshr i32 %316, 3
  %319 = lshr i32 %317, 3
  %320 = and i32 %316, 7
  %321 = shl nsw i32 %317, 3
  %322 = and i32 %321, 56
  %323 = or i32 %322, %320
  %324 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %6, i32 0, i32 %318, i32 %319, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %325 = extractvalue %dx.types.ResRet.i32 %324, 0
  %326 = extractvalue %dx.types.ResRet.i32 %324, 1
  %327 = icmp ugt i32 %323, 31
  %328 = and i32 %323, 31
  %329 = shl i32 1, %328
  %330 = select i1 %327, i32 %325, i32 %326
  %331 = and i32 %329, %330
  %332 = icmp ne i32 %331, 0
  %333 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %5, i32 0, i32 %314, i32 %315, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %334 = extractvalue %dx.types.ResRet.f32 %333, 0
  %335 = extractvalue %dx.types.ResRet.f32 %333, 1
  %336 = extractvalue %dx.types.ResRet.f32 %333, 2
  %337 = select i1 %332, float %334, float 0.000000e+00
  %338 = select i1 %332, float %335, float 0.000000e+00
  %339 = select i1 %332, float %336, float 0.000000e+00
  %340 = getelementptr inbounds [4 x float], [4 x float]* %12, i32 0, i32 %301
  store float %337, float* %340, align 4, !tbaa !36, !noalias !40
  %341 = fadd fast float %337, %297
  %342 = fmul fast float %337, %293
  %343 = fadd fast float %342, %298
  %344 = fmul fast float %342, %338
  %345 = fadd fast float %344, %299
  %346 = fmul fast float %342, %339
  %347 = fadd fast float %346, %300
  %348 = add nuw nsw i32 %301, 1
  %349 = icmp eq i32 %348, 4
  br i1 %349, label %350, label %296

; <label>:350                                     ; preds = %296
  %351 = fcmp fast oeq float %341, 0.000000e+00
  %352 = fcmp fast oeq float %343, 0.000000e+00
  %353 = or i1 %351, %352
  br i1 %353, label %473, label %354, !dx.controlflow.hints !43

; <label>:354                                     ; preds = %350
  %355 = getelementptr inbounds [4 x float], [4 x float]* %12, i32 0, i32 0
  %356 = getelementptr inbounds [4 x float], [4 x float]* %12, i32 0, i32 1
  %357 = getelementptr inbounds [4 x float], [4 x float]* %12, i32 0, i32 2
  %358 = getelementptr inbounds [4 x float], [4 x float]* %12, i32 0, i32 3
  br label %359

; <label>:359                                     ; preds = %354
  %360 = load float, float* %358, align 4, !tbaa !36, !noalias !40
  %361 = load float, float* %357, align 4, !tbaa !36, !noalias !40
  %362 = load float, float* %356, align 4, !tbaa !36, !noalias !40
  %363 = load float, float* %355, align 4, !tbaa !36, !noalias !40
  %364 = fmul fast float %277, %293
  %365 = fadd fast float %363, %364
  %366 = fadd fast float %293, 1.000000e+00
  %367 = fdiv fast float %365, %366
  store float %367, float* %355, align 4, !tbaa !36, !noalias !40
  %368 = fadd fast float %362, %364
  %369 = fdiv fast float %368, %366
  store float %369, float* %356, align 4, !tbaa !36, !noalias !40
  %370 = fadd fast float %361, %364
  %371 = fdiv fast float %370, %366
  store float %371, float* %357, align 4, !tbaa !36, !noalias !40
  %372 = fadd fast float %360, %364
  %373 = fdiv fast float %372, %366
  store float %373, float* %358, align 4, !tbaa !36, !noalias !40
  %374 = fadd fast float %368, %365
  %375 = fadd fast float %374, %370
  %376 = fadd fast float %375, %372
  %377 = fdiv fast float %376, %366
  %378 = fmul fast float %377, %291
  %379 = fadd fast float %378, %277
  %380 = fmul fast float %291, 4.000000e+00
  %381 = fadd fast float %380, 1.000000e+00
  %382 = fdiv fast float %379, %381
  %383 = fmul fast float %382, %293
  %384 = fadd fast float %367, %383
  %385 = fadd fast float %293, 1.000000e+00
  %386 = fdiv fast float %384, %385
  store float %386, float* %355, align 4, !tbaa !36, !noalias !40
  %387 = fadd fast float %369, %383
  %388 = fdiv fast float %387, %385
  store float %388, float* %356, align 4, !tbaa !36, !noalias !40
  %389 = fadd fast float %371, %383
  %390 = fdiv fast float %389, %385
  store float %390, float* %357, align 4, !tbaa !36, !noalias !40
  %391 = fadd fast float %373, %383
  %392 = fdiv fast float %391, %385
  store float %392, float* %358, align 4, !tbaa !36, !noalias !40
  %393 = fadd fast float %387, %384
  %394 = fadd fast float %393, %389
  %395 = fadd fast float %394, %391
  %396 = fdiv fast float %395, %385
  %397 = fmul fast float %396, %291
  %398 = fadd fast float %397, %382
  %399 = fmul fast float %291, 4.000000e+00
  %400 = fadd fast float %399, 1.000000e+00
  %401 = fdiv fast float %398, %400
  %402 = fmul fast float %401, %293
  %403 = fadd fast float %386, %402
  %404 = fadd fast float %293, 1.000000e+00
  %405 = fdiv fast float %403, %404
  store float %405, float* %355, align 4, !tbaa !36, !noalias !40
  %406 = fadd fast float %388, %402
  %407 = fdiv fast float %406, %404
  store float %407, float* %356, align 4, !tbaa !36, !noalias !40
  %408 = fadd fast float %390, %402
  %409 = fdiv fast float %408, %404
  store float %409, float* %357, align 4, !tbaa !36, !noalias !40
  %410 = fadd fast float %392, %402
  %411 = fdiv fast float %410, %404
  store float %411, float* %358, align 4, !tbaa !36, !noalias !40
  %412 = fadd fast float %406, %403
  %413 = fadd fast float %412, %408
  %414 = fadd fast float %413, %410
  %415 = fdiv fast float %414, %404
  %416 = fmul fast float %415, %291
  %417 = fadd fast float %416, %401
  %418 = fmul fast float %291, 4.000000e+00
  %419 = fadd fast float %418, 1.000000e+00
  %420 = fdiv fast float %417, %419
  %421 = fmul fast float %420, %293
  %422 = fadd fast float %405, %421
  %423 = fadd fast float %293, 1.000000e+00
  %424 = fdiv fast float %422, %423
  store float %424, float* %355, align 4, !tbaa !36, !noalias !40
  %425 = fadd fast float %407, %421
  %426 = fdiv fast float %425, %423
  store float %426, float* %356, align 4, !tbaa !36, !noalias !40
  %427 = fadd fast float %409, %421
  %428 = fdiv fast float %427, %423
  store float %428, float* %357, align 4, !tbaa !36, !noalias !40
  %429 = fadd fast float %411, %421
  %430 = fdiv fast float %429, %423
  store float %430, float* %358, align 4, !tbaa !36, !noalias !40
  %431 = fadd fast float %425, %422
  %432 = fadd fast float %431, %427
  %433 = fadd fast float %432, %429
  %434 = fdiv fast float %433, %423
  %435 = fmul fast float %434, %291
  %436 = fadd fast float %435, %420
  %437 = fmul fast float %291, 4.000000e+00
  %438 = fadd fast float %437, 1.000000e+00
  %439 = fdiv fast float %436, %438
  %440 = fmul fast float %439, %293
  %441 = fadd fast float %424, %440
  %442 = fadd fast float %293, 1.000000e+00
  %443 = fdiv fast float %441, %442
  store float %443, float* %355, align 4, !tbaa !36, !noalias !40
  %444 = fadd fast float %426, %440
  %445 = fdiv fast float %444, %442
  store float %445, float* %356, align 4, !tbaa !36, !noalias !40
  %446 = fadd fast float %428, %440
  %447 = fdiv fast float %446, %442
  store float %447, float* %357, align 4, !tbaa !36, !noalias !40
  %448 = fadd fast float %430, %440
  %449 = fdiv fast float %448, %442
  store float %449, float* %358, align 4, !tbaa !36, !noalias !40
  %450 = fadd fast float %444, %441
  %451 = fadd fast float %450, %446
  %452 = fadd fast float %451, %448
  %453 = fdiv fast float %452, %442
  %454 = fmul fast float %453, %291
  %455 = fadd fast float %454, %439
  %456 = fmul fast float %291, 4.000000e+00
  %457 = fadd fast float %456, 1.000000e+00
  %458 = fdiv fast float %455, %457
  %459 = fadd fast float %443, %458
  %460 = fadd fast float %459, %445
  %461 = fadd fast float %460, %447
  %462 = fadd fast float %461, %449
  %463 = fcmp fast oeq float %462, 0.000000e+00
  br i1 %463, label %473, label %464, !dx.controlflow.hints !44

; <label>:464                                     ; preds = %359
  %465 = fmul fast float %458, %341
  %466 = fdiv fast float %465, %462
  %467 = fdiv fast float %345, %343
  %468 = fdiv fast float %347, %343
  %469 = fadd fast float %467, %292
  %470 = fsub fast float %468, %292
  %471 = fmul fast float %292, 2.000000e+00
  %472 = fadd fast float %471, %280
  br label %473

; <label>:473                                     ; preds = %464, %359, %350
  %474 = phi float [ %277, %350 ], [ %277, %359 ], [ %466, %464 ]
  %475 = phi float [ %278, %350 ], [ %278, %359 ], [ %469, %464 ]
  %476 = phi float [ %279, %350 ], [ %279, %359 ], [ %470, %464 ]
  %477 = phi float [ %280, %350 ], [ %280, %359 ], [ %472, %464 ]
  %478 = fmul fast float %119, %118
  %479 = fsub fast float %474, %478
  br label %480

; <label>:480                                     ; preds = %473, %276
  %481 = phi float [ %479, %473 ], [ %277, %276 ]
  %482 = phi float [ %475, %473 ], [ %278, %276 ]
  %483 = phi float [ %476, %473 ], [ %279, %276 ]
  %484 = phi float [ %477, %473 ], [ %280, %276 ]
  %485 = fcmp fast olt float %481, %120
  %486 = select i1 %485, float 0.000000e+00, float %481
  %487 = select i1 %485, float 0.000000e+00, float %482
  %488 = select i1 %485, float 0.000000e+00, float %483
  %489 = select i1 %485, float 0.000000e+00, float %484
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %18, i32 %21, i32 undef, float %486, float %487, float %488, float %489, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @dx.op.groupId.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.threadIdInGroup.i32(i32, i32) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32) #1

; Function Attrs: nounwind
declare void @dx.op.textureStore.f32(i32, %dx.types.Handle, i32, i32, i32, float, float, float, float, i8) #2

; Function Attrs: nounwind readnone
declare i32 @dx.op.unaryBits.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare float @dx.op.unary.f32(i32, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.binary.f32(i32, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32) #1

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32, %dx.types.Handle, i32) #1

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32, %dx.types.Handle, i32) #1

; Function Attrs: nounwind readonly
declare %dx.types.Handle @dx.op.createHandle(i32, i8, i32, i32, i1) #1

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32, %dx.types.Handle, i32, i32) #1

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32, %dx.types.Handle, i32, i32) #1

attributes #0 = { nounwind readnone }
attributes #1 = { nounwind readonly }
attributes #2 = { nounwind }

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
!5 = !{!6, !7, !9, !11, !13, !15}
!6 = !{i32 0, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 2, i32 1, i32 11, i32 0, null}
!7 = !{i32 1, %"class.Texture2D<vector<unsigned int, 4> >"* undef, !"", i32 0, i32 3, i32 1, i32 2, i32 0, !8}
!8 = !{i32 0, i32 5}
!9 = !{i32 2, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 36, i32 1, i32 2, i32 0, !10}
!10 = !{i32 0, i32 9}
!11 = !{i32 3, %"class.StructuredBuffer<VolumetricBBoxGpu>"* undef, !"", i32 0, i32 39, i32 1, i32 12, i32 0, !12}
!12 = !{i32 1, i32 164}
!13 = !{i32 4, %"class.StructuredBuffer<VolumetricParticle>"* undef, !"", i32 0, i32 34, i32 1, i32 12, i32 0, !14}
!14 = !{i32 1, i32 32}
!15 = !{i32 5, %"class.StructuredBuffer<vector<unsigned int, 2> >"* undef, !"", i32 0, i32 35, i32 1, i32 12, i32 0, !16}
!16 = !{i32 1, i32 8}
!17 = !{!18}
!18 = !{i32 0, %"class.RWTexture2D<vector<float, 4> >"* undef, !"", i32 0, i32 7, i32 1, i32 2, i1 false, i1 false, i1 false, !10}
!19 = !{!20}
!20 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!21 = !{void ()* @cs_volumetric_splat_particles, !"cs_volumetric_splat_particles", null, !4, !22}
!22 = !{i32 0, i64 272, i32 4, !23}
!23 = !{i32 8, i32 8, i32 1}
!24 = distinct !{!24, !"dx.controlflow.hints", i32 2}
!25 = distinct !{!25, !"dx.controlflow.hints", i32 2}
!26 = distinct !{!26, !"dx.controlflow.hints", i32 2}
!27 = distinct !{!27, !"dx.controlflow.hints", i32 2}
!28 = distinct !{!28, !"dx.controlflow.hints", i32 2}
!29 = distinct !{!29, !"dx.controlflow.hints", i32 2}
!30 = distinct !{!30, !"dx.controlflow.hints", i32 2}
!31 = distinct !{!31, !"dx.controlflow.hints", i32 2}
!32 = distinct !{!32, !"dx.controlflow.hints", i32 2}
!33 = distinct !{!33, !"dx.controlflow.hints", i32 2}
!34 = distinct !{!34, !"dx.controlflow.hints", i32 2}
!35 = distinct !{!35, !"dx.controlflow.hints", i32 2}
!36 = !{!37, !37, i64 0}
!37 = !{!"float", !38, i64 0}
!38 = !{!"omnipotent char", !39, i64 0}
!39 = !{!"Simple C/C++ TBAA"}
!40 = !{!41}
!41 = distinct !{!41, !42, !"\01?ApplyDiffusionVolumetric@@YAXV?$vector@I$02@@IIAIAV?$vector@M$03@@@Z: %currentTexel"}
!42 = distinct !{!42, !"\01?ApplyDiffusionVolumetric@@YAXV?$vector@I$02@@IIAIAV?$vector@M$03@@@Z"}
!43 = distinct !{!43, !"dx.controlflow.hints", i32 2}
!44 = distinct !{!44, !"dx.controlflow.hints", i32 2}

