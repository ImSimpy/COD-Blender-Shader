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
; shader hash: 2f3a178d5d4a1d961ae5b3274b9eb3f0
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
;   [32 x i8] (type annotation not present)
;
; }
;
; cbuffer 
; {
;
;   [16 x i8] (type annotation not present)
;
; }
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
;   [112 x i8] (type annotation not present)
; }
;
;
; Resource Bindings:
;
; Name                                 Type  Format         Dim      ID      HLSL Bind  Count
; ------------------------------ ---------- ------- ----------- ------- -------------- ------
;                                   cbuffer      NA          NA     CB0            cb1     1
;                                   cbuffer      NA          NA     CB1            cb4     1
;                                   cbuffer      NA          NA     CB2            cb3     1
;                                   texture    byte         r/o      T0             t0     1
;                                   texture    byte         r/o      T1             t1     1
;                                   texture    byte         r/o      T2             t2     1
;                                   texture    byte         r/o      T3             t3     1
;                                   texture    byte         r/o      T4             t8     1
;                                   texture    byte         r/o      T5             t4     1
;                                   texture    byte         r/o      T6             t5     1
;                                   texture    byte         r/o      T7             t6     1
;                                   texture    byte         r/o      T8             t7     1
;                                   texture     f32     2darray      T9            t50     1
;                                   texture     f32          2d     T10            t18     1
;                                   texture    byte         r/o     T11            t15     1
;                                   texture  struct         r/o     T12            t27     1
;                                   texture     u32         buf     T13            t26     1
;                                       UAV     f32         buf      U0             u3     1
;                                       UAV     f32         buf      U1             u4     1
;                                       UAV     u32         buf      U2             u5     1
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.CBufRet.i32 = type { i32, i32, i32, i32 }
%dx.types.ResRet.f32 = type { float, float, float, float, i32 }
%dx.types.CBufRet.f32 = type { float, float, float, float }
%dx.types.ResRet.i32 = type { i32, i32, i32, i32, i32 }
%struct.ByteAddressBuffer = type { i32 }
%"class.Texture2DArray<float>" = type { float, %"class.Texture2DArray<float>::mips_type" }
%"class.Texture2DArray<float>::mips_type" = type { i32 }
%"class.Texture2D<float>" = type { float, %"class.Texture2D<float>::mips_type" }
%"class.Texture2D<float>::mips_type" = type { i32 }
%"class.StructuredBuffer<GfxGpuLightGridParams>" = type { %struct.GfxGpuLightGridParams }
%struct.GfxGpuLightGridParams = type { [7 x <4 x float>] }
%"class.Buffer<unsigned int>" = type { i32 }
%"class.RWBuffer<vector<float, 3> >" = type { <3 x float> }
%"class.RWBuffer<float>" = type { float }
%"class.RWBuffer<unsigned int>" = type { i32 }
%VolumetricLightGridConstants = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%GfxLGBoundConsts = type { i32, i32, i32, i32 }
%hostlayout.scene = type { %hostlayout.struct.GfxCodeSceneConsts }
%hostlayout.struct.GfxCodeSceneConsts = type { <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <3 x float>, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x i32>, <4 x i32>, <4 x float>, float, float, float, float, i32, i32, float, float, <2 x i32>, <2 x i32>, <2 x float>, <2 x float>, <3 x float>, i32, <3 x float>, float, <3 x float>, float, <2 x float>, <2 x float>, <3 x float>, float, <3 x float>, float, float, float, float, float, <3 x float>, float, i32, float, float, float, <4 x float>, <3 x float>, float, float, float, float, float, <4 x float>, float, float, float, float, i32, i32, i32, float, <4 x float>, i32, i32, i32, i32, i32, i32, i32, i32, <2 x i32>, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, [2 x <4 x i32>], [3 x <2 x float>], i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <2 x float>, <2 x float>, <4 x float>, <4 x i32>, <4 x float>, i32, float, float, float, i32, i32, i32, i32, <2 x float>, <2 x float>, <2 x float>, <2 x float>, i32, i32, <2 x float>, <2 x float>, <2 x float>, <3 x float>, i32, i32, i32, i32, i32, <4 x i32>, <4 x i32>, <4 x i32>, <4 x float>, i32, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <3 x float>, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], <4 x float>, [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], i32, i32, float, i32, <2 x float>, float, float, float, float, float, i32, <3 x float>, float, float, float, float, float, <3 x float>, float, <3 x float>, float, <3 x float>, float, float, float, float, float, <2 x float>, <2 x float>, float, float, float, float, <3 x float>, float, <2 x float>, i32, i32, <3 x float>, float, float, float, float, float, float, float, float, float, [4 x <3 x float>], i32, [4 x <3 x float>], i32, [4 x <3 x float>], i32, <4 x i32>, <2 x float>, <2 x float>, <2 x float>, i32, i32, float, float, float, float, <4 x float>, <4 x i32>, <4 x float>, <4 x float>, <4 x float>, i32, i32, i32, i32, <4 x float>, i32, float, float, i32, i32, float, float, i32, i32, float, float, i32, i32, float, float, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, float, float, float, float, i32, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, i32, i32, i32, float, <4 x float>, <4 x float>, <4 x float>, <4 x float>, i32, i32, i32, float, <4 x float>, float, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x i32>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [8 x <4 x float>], [8 x <4 x float>], <4 x float>, <3 x float>, i32, <2 x float>, float, float, float, float, float, float, <2 x float>, <2 x float>, <2 x float>, <2 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <2 x float>, float, float, <4 x float>, i32, i32, i32, i32, <3 x float>, i32, <4 x i32>, <4 x i32>, <2 x float>, <2 x i32>, <4 x float>, <4 x float>, <2 x float>, <2 x float>, [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, float, i32, i32, i32, i32, i32, float, float, <2 x float>, <2 x float>, float, float, float, float, i32, float, float, float, float, float, float, float, float, float, float, float, float, i32, i32, i32, float, float, float, i32, <2 x i32>, <2 x i32>, <4 x i32>, float, float, float, float, <4 x float>, <4 x float>, <2 x float>, <2 x float>, <4 x float>, <4 x float>, float, float, float, float, <4 x float>, float, float, float, float, i32, i32, float, float, <4 x float>, <2 x float>, <2 x float>, i32, i32, float, float, [4 x <4 x float>], float, float, float, float, float, float, float, float, i32, i32, i32, float, <4 x float>, <4 x float>, i32, i32, i32, i32, <2 x i32>, <2 x i32>, [2 x <4 x i32>], i32, float, float, float, i32, float, float, i32, <2 x i32>, <2 x float>, float, float, float, i32, %struct.GfxWeatherData, %hostlayout.struct.GfxVolumetricData, %struct.GfxFogRaymarchingData, %struct.GfxEnvironmentalFogData, %struct.GfxShallowWaterData, %struct.GfxGroundDeformationData, %struct.GfxSplinedModelGlobals }
%struct.GfxWeatherData = type { i32, i32, i32, i32, float, float, float, float, float, float, i32, i32, float, float, float, float, i32, i32, i32, i32, float, float, float, float, float, i32, i32, i32, i32, i32, i32, i32, <3 x float>, i32, <3 x float>, i32, i32, float, i32, i32, float, float, float, float }
%hostlayout.struct.GfxVolumetricData = type { [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <2 x float>, <2 x float>, <2 x float>, <2 x float>, <3 x i32>, i32, <3 x float>, i32, <4 x float>, <3 x float>, i32, i32, float, float, float, i32, i32, i32, float, <4 x float>, float, float, i32, i32, <3 x float>, i32, <3 x float>, float, <3 x float>, float, <2 x float>, float, float, <3 x float>, float, <3 x float>, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, <3 x float>, float, i32, float, float, float, <3 x float>, float, <2 x float>, <2 x float>, <3 x float>, float, i32, float, float, float, float, float, float, float, i32, i32, float, float, <3 x float>, float, i32, i32, <2 x float> }
%struct.GfxFogRaymarchingData = type { <2 x float>, <2 x float>, float, float, float, float, float, float, float, float, float, float, float, float, <2 x float>, <2 x float>, <3 x float>, float }
%struct.GfxEnvironmentalFogData = type { float, float, float, i32 }
%struct.GfxShallowWaterData = type { i32, i32, i32, i32, float, float, float, float, <2 x float>, <2 x float>, float, float, float, float, <3 x float>, float, float, float, float, float, float, float, float, float, i32, float, float, float, float, float, float, float, float, float, float, float, i32, float, float, float, float, i32, i32, i32 }
%struct.GfxGroundDeformationData = type { <2 x float>, <2 x float>, float, float, float, float, float, float, float, float, float, float, float, float, float, float, i32, i32 }
%struct.GfxSplinedModelGlobals = type { [64 x <4 x float>], [64 x <4 x float>], [16 x <4 x float>], [32 x <4 x float>], [64 x <4 x float>], [16 x <4 x float>], [16 x <4 x float>], float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float }

define void @cs_vol_sh_sample_multi_lightgrid_aniso() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 2, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 1, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 13, i32 26, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 12, i32 27, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 11, i32 15, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 18, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 50, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 7, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 2, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %21 = call i32 @dx.op.threadId.i32(i32 93, i32 0)  ; ThreadId(component)
  %22 = call i32 @dx.op.threadId.i32(i32 93, i32 1)  ; ThreadId(component)
  %23 = call i32 @dx.op.threadId.i32(i32 93, i32 2)  ; ThreadId(component)
  %24 = alloca [4 x i32], align 4
  %25 = alloca [4 x float], align 4
  %26 = alloca [4 x i32], align 4
  %27 = alloca [4 x float], align 4
  %28 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %18, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %29 = extractvalue %dx.types.CBufRet.i32 %28, 0
  %30 = extractvalue %dx.types.CBufRet.i32 %28, 1
  %31 = extractvalue %dx.types.CBufRet.i32 %28, 2
  %32 = add i32 %29, 3
  %33 = add i32 %30, 3
  %34 = add i32 %31, 3
  %35 = lshr i32 %32, 2
  %36 = lshr i32 %33, 2
  %37 = lshr i32 %34, 2
  %38 = icmp uge i32 %21, %35
  %39 = icmp uge i32 %22, %36
  %40 = icmp uge i32 %23, %37
  %41 = or i1 %38, %39
  %42 = or i1 %40, %41
  br i1 %42, label %50, label %43, !dx.controlflow.hints !34

; <label>:43                                      ; preds = %0
  %44 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %8, i32 0, i32 %21, i32 %22, i32 0, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %45 = extractvalue %dx.types.ResRet.f32 %44, 0
  %46 = fmul fast float %45, 2.550000e+02
  %47 = fadd fast float %46, 0x3F70101020000000
  %48 = fptoui float %47 to i32
  %49 = icmp ule i32 %23, %48
  br label %50

; <label>:50                                      ; preds = %43, %0
  %51 = phi i1 [ %49, %43 ], [ false, %0 ]
  br i1 %51, label %66, label %52, !dx.controlflow.hints !35

; <label>:52                                      ; preds = %50
  %53 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %54 = extractvalue %dx.types.CBufRet.i32 %53, 0
  %55 = icmp sgt i32 %54, -1
  br i1 %55, label %56, label %64, !dx.controlflow.hints !36

; <label>:56                                      ; preds = %52
  %57 = mul i32 %35, %36
  %58 = mul i32 %54, %37
  %59 = mul i32 %35, %22
  %60 = add i32 %58, %23
  %61 = mul i32 %57, %60
  %62 = add i32 %59, %21
  %63 = add i32 %62, %61
  br label %64

; <label>:64                                      ; preds = %56, %52
  %65 = phi i32 [ %63, %56 ], [ -1, %52 ]
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %65, i32 undef, i32 -1, i32 -1, i32 -1, i32 -1, i8 15)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %1565

; <label>:66                                      ; preds = %50
  %67 = uitofp i32 %21 to float
  %68 = uitofp i32 %22 to float
  %69 = uitofp i32 %23 to float
  %70 = fadd fast float %67, 5.000000e-01
  %71 = fadd fast float %68, 5.000000e-01
  %72 = fadd fast float %69, 5.000000e-01
  %73 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %18, i32 395)  ; CBufferLoadLegacy(handle,regIndex)
  %74 = extractvalue %dx.types.CBufRet.i32 %73, 3
  %75 = add i32 %74, %23
  %76 = and i32 %75, 7
  switch i32 %76, label %84 [
    i32 0, label %85
    i32 1, label %77
    i32 2, label %78
    i32 3, label %79
    i32 4, label %80
    i32 5, label %81
    i32 6, label %82
    i32 7, label %83
  ], !dx.controlflow.hints !37

; <label>:77                                      ; preds = %66
  br label %85

; <label>:78                                      ; preds = %66
  br label %85

; <label>:79                                      ; preds = %66
  br label %85

; <label>:80                                      ; preds = %66
  br label %85

; <label>:81                                      ; preds = %66
  br label %85

; <label>:82                                      ; preds = %66
  br label %85

; <label>:83                                      ; preds = %66
  br label %85

; <label>:84                                      ; preds = %66
  br label %85

; <label>:85                                      ; preds = %84, %83, %82, %81, %80, %79, %78, %77, %66
  %86 = phi float [ 0.000000e+00, %84 ], [ 0xBFAAFDA2C0000000, %83 ], [ 0xBFDC840460000000, %82 ], [ 0x3FAD325520000000, %81 ], [ 0xBFC0D2F360000000, %80 ], [ 0x3FD3DBFA80000000, %79 ], [ 0xBFD546BCA0000000, %78 ], [ 0x3FDD88B380000000, %77 ], [ 0xBF98669800000000, %66 ]
  %87 = phi float [ 0.000000e+00, %84 ], [ 0xBFB3D00D00000000, %83 ], [ 0xBFD1E41C40000000, %82 ], [ 0xBFCDD22A60000000, %81 ], [ 0x3FBD22CF20000000, %80 ], [ 0x3FBA443A80000000, %79 ], [ 0x3FDB80DE80000000, %78 ], [ 0xBFB1C6F4E0000000, %77 ], [ 0xBFDDE0E000000000, %66 ]
  %88 = phi float [ 0.000000e+00, %84 ], [ 0xBFD38FB280000000, %83 ], [ 0xBF8D0A4580000000, %82 ], [ 0x3FD36603C0000000, %81 ], [ 0x3FBA950300000000, %80 ], [ 0xBFC14853E0000000, %79 ], [ 0x3FDBE53FA0000000, %78 ], [ 0x3FD8D79020000000, %77 ], [ 0xBFC22590A0000000, %66 ]
  %89 = fadd fast float %70, %86
  %90 = fadd fast float %71, %87
  %91 = fadd fast float %72, %88
  %92 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %93 = extractvalue %dx.types.CBufRet.f32 %92, 0
  %94 = extractvalue %dx.types.CBufRet.f32 %92, 1
  %95 = fmul fast float %91, 4.000000e+00
  %96 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %97 = extractvalue %dx.types.CBufRet.f32 %96, 0
  %98 = extractvalue %dx.types.CBufRet.f32 %96, 1
  %99 = fmul fast float %95, %98
  %100 = call float @dx.op.unary.f32(i32 21, float %99)  ; Exp(value)
  %101 = fmul fast float %100, %97
  %102 = fsub fast float 4.000000e+00, %97
  %103 = fadd fast float %102, %101
  %104 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %7, i32 0, i32 %21, i32 %22, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %105 = extractvalue %dx.types.ResRet.f32 %104, 0
  %106 = fcmp fast ogt float %105, -1.000000e+00
  %107 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %108 = extractvalue %dx.types.CBufRet.f32 %107, 1
  %109 = select i1 %106, float %108, float 1.000000e+00
  %110 = fadd fast float %105, 1.000000e+00
  %111 = fmul fast float %109, %110
  %112 = call float @dx.op.binary.f32(i32 36, float %103, float %111)  ; FMin(a,b)
  %113 = fmul fast float %89, 8.000000e+00
  %114 = fmul fast float %113, %93
  %115 = fmul fast float %90, 8.000000e+00
  %116 = fmul fast float %115, %94
  %117 = fsub fast float 1.000000e+00, %114
  %118 = fsub fast float 1.000000e+00, %116
  %119 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %120 = extractvalue %dx.types.CBufRet.f32 %119, 0
  %121 = extractvalue %dx.types.CBufRet.f32 %119, 1
  %122 = extractvalue %dx.types.CBufRet.f32 %119, 2
  %123 = fmul fast float %120, %117
  %124 = fmul fast float %121, %117
  %125 = fmul fast float %122, %117
  %126 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %127 = extractvalue %dx.types.CBufRet.f32 %126, 0
  %128 = extractvalue %dx.types.CBufRet.f32 %126, 1
  %129 = extractvalue %dx.types.CBufRet.f32 %126, 2
  %130 = fmul fast float %127, %118
  %131 = fmul fast float %128, %118
  %132 = fmul fast float %129, %118
  %133 = fadd fast float %130, %123
  %134 = fadd fast float %131, %124
  %135 = fadd fast float %132, %125
  %136 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %137 = extractvalue %dx.types.CBufRet.f32 %136, 0
  %138 = extractvalue %dx.types.CBufRet.f32 %136, 1
  %139 = extractvalue %dx.types.CBufRet.f32 %136, 2
  %140 = fadd fast float %133, %137
  %141 = fadd fast float %134, %138
  %142 = fadd fast float %135, %139
  %143 = fmul fast float %140, %112
  %144 = fmul fast float %141, %112
  %145 = fmul fast float %142, %112
  %146 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %147 = extractvalue %dx.types.CBufRet.f32 %146, 0
  %148 = extractvalue %dx.types.CBufRet.f32 %146, 1
  %149 = extractvalue %dx.types.CBufRet.f32 %146, 2
  %150 = fadd fast float %143, %147
  %151 = fadd fast float %144, %148
  %152 = fadd fast float %145, %149
  %153 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %154 = extractvalue %dx.types.CBufRet.i32 %153, 1
  %155 = icmp sgt i32 %154, -1
  br i1 %155, label %156, label %164, !dx.controlflow.hints !36

; <label>:156                                     ; preds = %85
  %157 = mul i32 %35, %36
  %158 = mul i32 %154, %37
  %159 = mul i32 %35, %22
  %160 = add i32 %158, %23
  %161 = mul i32 %157, %160
  %162 = add i32 %159, %21
  %163 = add i32 %162, %161
  br label %164

; <label>:164                                     ; preds = %156, %85
  %165 = phi i32 [ %163, %156 ], [ -1, %85 ]
  %166 = extractvalue %dx.types.CBufRet.i32 %153, 0
  %167 = icmp sgt i32 %166, -1
  br i1 %167, label %168, label %182, !dx.controlflow.hints !36

; <label>:168                                     ; preds = %164
  %169 = mul i32 %35, %36
  %170 = mul i32 %169, %37
  %171 = add i32 %170, %169
  %172 = mul i32 %166, %171
  %173 = mul i32 %169, %23
  %174 = mul i32 %35, %22
  %175 = add i32 %174, %21
  %176 = add i32 %175, %169
  %177 = add i32 %176, %173
  %178 = add i32 %177, %172
  %179 = mul i32 %166, %170
  %180 = add i32 %175, %173
  %181 = add i32 %180, %179
  br label %182

; <label>:182                                     ; preds = %168, %164
  %183 = phi i32 [ %181, %168 ], [ -1, %164 ]
  %184 = phi i32 [ %178, %168 ], [ -1, %164 ]
  %185 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %186 = extractvalue %dx.types.CBufRet.i32 %185, 3
  br label %187

; <label>:187                                     ; preds = %203, %182
  %188 = phi i32 [ 0, %182 ], [ %204, %203 ]
  %189 = shl i32 %188, 4
  %190 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %186, i32 %189)  ; BufferLoad(srv,index,wot)
  %191 = extractvalue %dx.types.ResRet.f32 %190, 0
  %192 = extractvalue %dx.types.ResRet.f32 %190, 1
  %193 = call float @dx.op.dot2.f32(i32 54, float %191, float %192, float %191, float %192)  ; Dot2(ax,ay,bx,by)
  %194 = fsub fast float 1.000000e+00, %193
  %195 = call float @dx.op.unary.f32(i32 7, float %194)  ; Saturate(value)
  %196 = call float @dx.op.unary.f32(i32 24, float %195)  ; Sqrt(value)
  %197 = call float @dx.op.dot3.f32(i32 55, float %150, float %151, float %152, float %191, float %192, float %196)  ; Dot3(ax,ay,az,bx,by,bz)
  %198 = extractvalue %dx.types.ResRet.f32 %190, 2
  %199 = fcmp fast ole float %197, %198
  %200 = extractvalue %dx.types.ResRet.f32 %190, 3
  %201 = fcmp fast oge float %197, %200
  %202 = or i1 %199, %201
  br i1 %202, label %206, label %203, !dx.controlflow.hints !38

; <label>:203                                     ; preds = %187
  %204 = add nuw nsw i32 %188, 1
  %205 = icmp slt i32 %204, 7
  br i1 %205, label %187, label %206

; <label>:206                                     ; preds = %203, %187
  %207 = phi i1 [ false, %187 ], [ true, %203 ]
  br i1 %207, label %208, label %1360, !dx.controlflow.hints !39

; <label>:208                                     ; preds = %206
  %209 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %18, i32 397)  ; CBufferLoadLegacy(handle,regIndex)
  %210 = extractvalue %dx.types.CBufRet.i32 %209, 2
  %211 = and i32 %210, 1
  %212 = icmp eq i32 %211, 0
  %213 = icmp ne i32 %165, -1
  %214 = and i1 %213, %212
  %215 = extractvalue %dx.types.CBufRet.i32 %153, 3
  %216 = icmp ne i32 %215, 0
  %217 = and i1 %216, %214
  br i1 %217, label %218, label %221, !dx.controlflow.hints !40

; <label>:218                                     ; preds = %208
  %219 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %165, i32 undef)  ; BufferLoad(srv,index,wot)
  %220 = extractvalue %dx.types.ResRet.i32 %219, 0
  br label %221

; <label>:221                                     ; preds = %218, %208
  %222 = phi i32 [ %220, %218 ], [ -1, %208 ]
  %223 = extractvalue %dx.types.CBufRet.i32 %185, 2
  %224 = extractvalue %dx.types.CBufRet.i32 %185, 1
  %225 = extractvalue %dx.types.CBufRet.i32 %185, 0
  %226 = getelementptr inbounds [4 x float], [4 x float]* %25, i32 0, i32 0
  store float 0.000000e+00, float* %226, align 4
  %227 = getelementptr inbounds [4 x float], [4 x float]* %25, i32 0, i32 1
  store float 0.000000e+00, float* %227, align 4
  %228 = getelementptr inbounds [4 x float], [4 x float]* %25, i32 0, i32 2
  store float 0.000000e+00, float* %228, align 4
  %229 = getelementptr inbounds [4 x float], [4 x float]* %25, i32 0, i32 3
  store float 0.000000e+00, float* %229, align 4
  %230 = icmp eq i32 %222, -1
  br i1 %230, label %231, label %382, !dx.controlflow.hints !41

; <label>:231                                     ; preds = %221
  %232 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %233 = extractvalue %dx.types.ResRet.i32 %232, 0
  %234 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %235 = extractvalue %dx.types.ResRet.i32 %234, 0
  %236 = extractvalue %dx.types.ResRet.i32 %234, 1
  %237 = extractvalue %dx.types.ResRet.i32 %234, 2
  %238 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 32, i32 undef)  ; BufferLoad(srv,index,wot)
  %239 = extractvalue %dx.types.ResRet.f32 %238, 0
  %240 = extractvalue %dx.types.ResRet.f32 %238, 1
  %241 = extractvalue %dx.types.ResRet.f32 %238, 2
  %242 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 48, i32 undef)  ; BufferLoad(srv,index,wot)
  %243 = extractvalue %dx.types.ResRet.f32 %242, 0
  %244 = extractvalue %dx.types.ResRet.f32 %242, 1
  %245 = extractvalue %dx.types.ResRet.f32 %242, 2
  %246 = fsub fast float %150, %239
  %247 = fsub fast float %151, %240
  %248 = fsub fast float %152, %241
  %249 = fptoui float %246 to i32
  %250 = fptoui float %247 to i32
  %251 = fptoui float %248 to i32
  %252 = fcmp fast olt float %150, %239
  %253 = fcmp fast olt float %151, %240
  %254 = fcmp fast olt float %152, %241
  %255 = or i1 %252, %253
  %256 = or i1 %254, %255
  %257 = fcmp fast oge float %150, %243
  %258 = fcmp fast oge float %151, %244
  %259 = fcmp fast oge float %152, %245
  %260 = or i1 %257, %258
  %261 = or i1 %259, %260
  %262 = or i1 %256, %261
  %263 = and i32 %235, 31
  %264 = lshr i32 %249, %263
  %265 = lshr i32 %250, %263
  %266 = lshr i32 %251, %263
  %267 = mul i32 %265, %233
  %268 = add i32 %267, %264
  %269 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %19, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %270 = extractvalue %dx.types.CBufRet.i32 %269, 0
  %271 = icmp ult i32 %268, %270
  br i1 %271, label %272, label %288, !dx.controlflow.hints !42

; <label>:272                                     ; preds = %231
  %273 = mul i32 %268, 12
  %274 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %273, i32 undef)  ; BufferLoad(srv,index,wot)
  %275 = extractvalue %dx.types.ResRet.i32 %274, 0
  %276 = add i32 %273, 4
  %277 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %276, i32 undef)  ; BufferLoad(srv,index,wot)
  %278 = extractvalue %dx.types.ResRet.i32 %277, 0
  %279 = add i32 %273, 8
  %280 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %279, i32 undef)  ; BufferLoad(srv,index,wot)
  %281 = extractvalue %dx.types.ResRet.i32 %280, 0
  %282 = icmp ult i32 %266, %278
  %283 = icmp ugt i32 %266, %281
  %284 = or i1 %282, %283
  %285 = add i32 %275, %266
  %286 = sub i32 %285, %278
  %287 = select i1 %284, i32 -2147483648, i32 %286
  br label %288

; <label>:288                                     ; preds = %272, %231
  %289 = phi i32 [ %287, %272 ], [ -2147483648, %231 ]
  %290 = select i1 %262, i32 -2147483648, i32 %289
  %291 = icmp sgt i32 %290, -1
  %292 = and i32 %236, 31
  %293 = lshr i32 %249, %292
  %294 = lshr i32 %250, %292
  %295 = lshr i32 %251, %292
  %296 = and i32 %293, 3
  %297 = and i32 %295, 3
  %298 = shl nuw nsw i32 %297, 4
  %299 = shl i32 %294, 2
  %300 = and i32 %299, 12
  %301 = and i32 %298, 16
  %302 = or i32 %300, %296
  %303 = or i32 %302, %301
  %304 = shl i32 1, %303
  %305 = extractvalue %dx.types.CBufRet.i32 %269, 1
  %306 = icmp ult i32 %290, %305
  br i1 %306, label %307, label %325, !dx.controlflow.hints !43

; <label>:307                                     ; preds = %288
  %308 = lshr i32 %297, 1
  %309 = shl i32 %290, 4
  %310 = shl nuw nsw i32 %308, 2
  %311 = or i32 %309, %310
  %312 = or i32 %311, 8
  %313 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %312, i32 undef)  ; BufferLoad(srv,index,wot)
  %314 = extractvalue %dx.types.ResRet.i32 %313, 0
  %315 = and i32 %314, %304
  %316 = icmp eq i32 %315, 0
  %317 = add i32 %304, -1
  %318 = and i32 %314, %317
  %319 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %318)  ; Countbits(value)
  %320 = or i32 %309, %310
  %321 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %320, i32 undef)  ; BufferLoad(srv,index,wot)
  %322 = extractvalue %dx.types.ResRet.i32 %321, 0
  %323 = add i32 %322, %319
  %324 = select i1 %316, i32 -2147483648, i32 %323
  br label %325

; <label>:325                                     ; preds = %307, %288
  %326 = phi i32 [ %324, %307 ], [ -2147483648, %288 ]
  %327 = select i1 %291, i32 %326, i32 %290
  %328 = icmp sgt i32 %327, -1
  %329 = and i32 %237, 31
  %330 = lshr i32 %249, %329
  %331 = lshr i32 %250, %329
  %332 = lshr i32 %251, %329
  %333 = and i32 %330, 3
  %334 = and i32 %332, 3
  %335 = shl nuw nsw i32 %334, 4
  %336 = shl i32 %331, 2
  %337 = and i32 %336, 12
  %338 = and i32 %335, 16
  %339 = or i32 %337, %333
  %340 = or i32 %339, %338
  %341 = shl i32 1, %340
  %342 = icmp ult i32 %327, %305
  br i1 %342, label %343, label %361, !dx.controlflow.hints !43

; <label>:343                                     ; preds = %325
  %344 = lshr i32 %334, 1
  %345 = shl i32 %327, 4
  %346 = shl nuw nsw i32 %344, 2
  %347 = or i32 %345, %346
  %348 = or i32 %347, 8
  %349 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %348, i32 undef)  ; BufferLoad(srv,index,wot)
  %350 = extractvalue %dx.types.ResRet.i32 %349, 0
  %351 = and i32 %350, %341
  %352 = icmp eq i32 %351, 0
  %353 = add i32 %341, -1
  %354 = and i32 %350, %353
  %355 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %354)  ; Countbits(value)
  %356 = or i32 %345, %346
  %357 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %356, i32 undef)  ; BufferLoad(srv,index,wot)
  %358 = extractvalue %dx.types.ResRet.i32 %357, 0
  %359 = add i32 %358, %355
  %360 = select i1 %352, i32 -2147483648, i32 %359
  br label %361

; <label>:361                                     ; preds = %343, %325
  %362 = phi i32 [ %360, %343 ], [ -2147483648, %325 ]
  %363 = select i1 %328, i32 %362, i32 %327
  br i1 %262, label %378, label %364, !dx.controlflow.hints !44

; <label>:364                                     ; preds = %361
  %365 = icmp eq i32 %363, -2147483648
  %366 = icmp eq i32 %327, -2147483648
  %367 = select i1 %366, i32 %290, i32 %327
  %368 = select i1 %365, i32 %367, i32 %363
  %369 = icmp sgt i32 %368, -1
  %370 = icmp ne i32 %223, -1
  %371 = and i1 %370, %369
  %372 = select i1 %371, i32 %223, i32 0
  %373 = add i32 %368, %224
  %374 = add i32 %373, %372
  %375 = shl i32 %374, 2
  %376 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %375, i32 undef)  ; BufferLoad(srv,index,wot)
  %377 = extractvalue %dx.types.ResRet.i32 %376, 0
  br label %378

; <label>:378                                     ; preds = %364, %361
  %379 = phi i32 [ %377, %364 ], [ -1, %361 ]
  %380 = icmp eq i32 %379, -1
  %381 = select i1 %380, i32 %225, i32 %379
  br label %382

; <label>:382                                     ; preds = %378, %221
  %383 = phi i32 [ %381, %378 ], [ %222, %221 ]
  %384 = icmp eq i32 %383, -1
  br i1 %384, label %533, label %385

; <label>:385                                     ; preds = %382
  br label %386

; <label>:386                                     ; preds = %524, %385
  %387 = phi i32 [ %525, %524 ], [ 0, %385 ]
  %388 = phi i32 [ %389, %524 ], [ -1, %385 ]
  %389 = phi i32 [ %520, %524 ], [ %383, %385 ]
  %390 = phi float [ %496, %524 ], [ 0.000000e+00, %385 ]
  %391 = phi float [ %497, %524 ], [ 0.000000e+00, %385 ]
  %392 = phi float [ %498, %524 ], [ 0.000000e+00, %385 ]
  %393 = phi float [ %501, %524 ], [ 0.000000e+00, %385 ]
  %394 = icmp ugt i32 %387, 50
  br i1 %394, label %527, label %395, !dx.controlflow.hints !45

; <label>:395                                     ; preds = %386
  %396 = shl i32 %389, 4
  %397 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %396, i32 undef)  ; BufferLoad(srv,index,wot)
  %398 = extractvalue %dx.types.ResRet.i32 %397, 0
  %399 = extractvalue %dx.types.ResRet.i32 %397, 1
  %400 = extractvalue %dx.types.ResRet.i32 %397, 2
  %401 = extractvalue %dx.types.ResRet.i32 %397, 3
  %402 = and i32 %398, 2147483647
  %403 = mul nsw i32 %402, 12
  %404 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %403, i32 undef)  ; BufferLoad(srv,index,wot)
  %405 = extractvalue %dx.types.ResRet.i32 %404, 0
  %406 = extractvalue %dx.types.ResRet.i32 %404, 1
  %407 = extractvalue %dx.types.ResRet.i32 %404, 2
  %408 = and i32 %399, 2147483647
  %409 = mul nsw i32 %408, 12
  %410 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %409, i32 undef)  ; BufferLoad(srv,index,wot)
  %411 = extractvalue %dx.types.ResRet.i32 %410, 0
  %412 = extractvalue %dx.types.ResRet.i32 %410, 1
  %413 = extractvalue %dx.types.ResRet.i32 %410, 2
  %414 = and i32 %400, 2147483647
  %415 = mul nsw i32 %414, 12
  %416 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %415, i32 undef)  ; BufferLoad(srv,index,wot)
  %417 = extractvalue %dx.types.ResRet.i32 %416, 0
  %418 = extractvalue %dx.types.ResRet.i32 %416, 1
  %419 = extractvalue %dx.types.ResRet.i32 %416, 2
  %420 = and i32 %401, 2147483647
  %421 = mul nsw i32 %420, 12
  %422 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %421, i32 undef)  ; BufferLoad(srv,index,wot)
  %423 = extractvalue %dx.types.ResRet.i32 %422, 0
  %424 = extractvalue %dx.types.ResRet.i32 %422, 1
  %425 = extractvalue %dx.types.ResRet.i32 %422, 2
  %426 = bitcast i32 %405 to float
  %427 = bitcast i32 %406 to float
  %428 = bitcast i32 %407 to float
  %429 = bitcast i32 %423 to float
  %430 = bitcast i32 %424 to float
  %431 = bitcast i32 %425 to float
  %432 = fsub fast float %426, %429
  %433 = fsub fast float %427, %430
  %434 = fsub fast float %428, %431
  %435 = bitcast i32 %411 to float
  %436 = bitcast i32 %412 to float
  %437 = bitcast i32 %413 to float
  %438 = fsub fast float %435, %429
  %439 = fsub fast float %436, %430
  %440 = fsub fast float %437, %431
  %441 = bitcast i32 %417 to float
  %442 = bitcast i32 %418 to float
  %443 = bitcast i32 %419 to float
  %444 = fsub fast float %441, %429
  %445 = fsub fast float %442, %430
  %446 = fsub fast float %443, %431
  %447 = fsub fast float %150, %429
  %448 = fsub fast float %151, %430
  %449 = fsub fast float %152, %431
  %450 = fmul fast float %439, %446
  %451 = fmul fast float %445, %440
  %452 = fsub fast float %450, %451
  %453 = fmul fast float %452, %432
  %454 = fmul fast float %438, %446
  %455 = fmul fast float %440, %444
  %456 = fsub fast float %454, %455
  %457 = fmul fast float %456, %433
  %458 = fsub fast float %453, %457
  %459 = fmul fast float %438, %445
  %460 = fmul fast float %439, %444
  %461 = fsub fast float %459, %460
  %462 = fmul fast float %461, %434
  %463 = fadd fast float %458, %462
  %464 = fdiv fast float 1.000000e+00, %463
  %465 = fmul fast float %452, %464
  %466 = fmul fast float %464, %456
  %467 = fsub fast float -0.000000e+00, %466
  %468 = fmul fast float %461, %464
  %469 = fmul fast float %433, %446
  %470 = fmul fast float %434, %445
  %471 = fsub fast float %469, %470
  %472 = fmul fast float %464, %471
  %473 = fsub fast float -0.000000e+00, %472
  %474 = fmul fast float %432, %446
  %475 = fmul fast float %444, %434
  %476 = fsub fast float %474, %475
  %477 = fmul fast float %476, %464
  %478 = fmul fast float %432, %445
  %479 = fmul fast float %433, %444
  %480 = fsub fast float %478, %479
  %481 = fmul fast float %464, %480
  %482 = fsub fast float -0.000000e+00, %481
  %483 = fmul fast float %433, %440
  %484 = fmul fast float %434, %439
  %485 = fsub fast float %483, %484
  %486 = fmul fast float %485, %464
  %487 = fmul fast float %432, %440
  %488 = fmul fast float %434, %438
  %489 = fsub fast float %487, %488
  %490 = fmul fast float %464, %489
  %491 = fsub fast float -0.000000e+00, %490
  %492 = fmul fast float %432, %439
  %493 = fmul fast float %433, %438
  %494 = fsub fast float %492, %493
  %495 = fmul fast float %494, %464
  %496 = call float @dx.op.dot3.f32(i32 55, float %465, float %467, float %468, float %447, float %448, float %449)  ; Dot3(ax,ay,az,bx,by,bz)
  %497 = call float @dx.op.dot3.f32(i32 55, float %473, float %477, float %482, float %447, float %448, float %449)  ; Dot3(ax,ay,az,bx,by,bz)
  %498 = call float @dx.op.dot3.f32(i32 55, float %486, float %491, float %495, float %447, float %448, float %449)  ; Dot3(ax,ay,az,bx,by,bz)
  %499 = fsub fast float 1.000000e+00, %496
  %500 = fsub fast float %499, %497
  %501 = fsub fast float %500, %498
  %502 = call float @dx.op.binary.f32(i32 36, float %496, float %497)  ; FMin(a,b)
  %503 = call float @dx.op.binary.f32(i32 36, float %502, float %498)  ; FMin(a,b)
  %504 = call float @dx.op.binary.f32(i32 36, float %503, float %501)  ; FMin(a,b)
  %505 = call float @dx.op.binary.f32(i32 35, float %496, float %497)  ; FMax(a,b)
  %506 = call float @dx.op.binary.f32(i32 35, float %505, float %498)  ; FMax(a,b)
  %507 = call float @dx.op.binary.f32(i32 35, float %506, float %501)  ; FMax(a,b)
  %508 = fcmp fast oge float %504, 0xBF50624DE0000000
  %509 = fcmp fast olt float %507, 0x3FF00068E0000000
  %510 = and i1 %508, %509
  br i1 %510, label %527, label %511, !dx.controlflow.hints !46

; <label>:511                                     ; preds = %395
  %512 = fcmp fast oeq float %504, %496
  %513 = fcmp fast oeq float %504, %497
  %514 = fcmp fast oeq float %504, %498
  %515 = select i1 %514, i32 8, i32 12
  %516 = select i1 %513, i32 4, i32 %515
  %517 = select i1 %512, i32 0, i32 %516
  %518 = or i32 %517, %396
  %519 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %518, i32 undef)  ; BufferLoad(srv,index,wot)
  %520 = extractvalue %dx.types.ResRet.i32 %519, 0
  %521 = icmp ne i32 %388, -1
  %522 = icmp eq i32 %520, %388
  %523 = and i1 %521, %522
  br i1 %523, label %527, label %524, !dx.controlflow.hints !47

; <label>:524                                     ; preds = %511
  %525 = add nuw nsw i32 %387, 1
  %526 = icmp eq i32 %520, -1
  br i1 %526, label %527, label %386, !llvm.loop !48

; <label>:527                                     ; preds = %524, %511, %395, %386
  %528 = phi i32 [ %389, %511 ], [ %389, %395 ], [ -1, %524 ], [ -1, %386 ]
  %529 = phi float [ %496, %511 ], [ %496, %395 ], [ %496, %524 ], [ %390, %386 ]
  %530 = phi float [ %497, %511 ], [ %497, %395 ], [ %497, %524 ], [ %391, %386 ]
  %531 = phi float [ %498, %511 ], [ %498, %395 ], [ %498, %524 ], [ %392, %386 ]
  %532 = phi float [ %501, %511 ], [ %501, %395 ], [ %501, %524 ], [ %393, %386 ]
  br label %533

; <label>:533                                     ; preds = %527, %382
  %534 = phi i32 [ -1, %382 ], [ %528, %527 ]
  %535 = phi float [ 0.000000e+00, %382 ], [ %529, %527 ]
  %536 = phi float [ 0.000000e+00, %382 ], [ %530, %527 ]
  %537 = phi float [ 0.000000e+00, %382 ], [ %531, %527 ]
  %538 = phi float [ 0.000000e+00, %382 ], [ %532, %527 ]
  %539 = call float @dx.op.binary.f32(i32 35, float 0x3F50624DE0000000, float %535)  ; FMax(a,b)
  %540 = call float @dx.op.binary.f32(i32 35, float 0x3F50624DE0000000, float %536)  ; FMax(a,b)
  %541 = call float @dx.op.binary.f32(i32 35, float 0x3F50624DE0000000, float %537)  ; FMax(a,b)
  %542 = call float @dx.op.binary.f32(i32 35, float 0x3F50624DE0000000, float %538)  ; FMax(a,b)
  %543 = call float @dx.op.binary.f32(i32 36, float 0x3FEFF7CEE0000000, float %539)  ; FMin(a,b)
  %544 = call float @dx.op.binary.f32(i32 36, float 0x3FEFF7CEE0000000, float %540)  ; FMin(a,b)
  %545 = call float @dx.op.binary.f32(i32 36, float 0x3FEFF7CEE0000000, float %541)  ; FMin(a,b)
  %546 = call float @dx.op.binary.f32(i32 36, float 0x3FEFF7CEE0000000, float %542)  ; FMin(a,b)
  store float %543, float* %226, align 4
  store float %544, float* %227, align 4
  store float %545, float* %228, align 4
  store float %546, float* %229, align 4
  %547 = icmp eq i32 %534, -1
  br i1 %547, label %548, label %621, !dx.controlflow.hints !50

; <label>:548                                     ; preds = %533
  %549 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 48, i32 undef)  ; BufferLoad(srv,index,wot)
  %550 = extractvalue %dx.types.ResRet.i32 %549, 0
  %551 = extractvalue %dx.types.ResRet.i32 %549, 1
  %552 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 32, i32 undef)  ; BufferLoad(srv,index,wot)
  %553 = extractvalue %dx.types.ResRet.i32 %552, 0
  %554 = extractvalue %dx.types.ResRet.i32 %552, 1
  %555 = extractvalue %dx.types.ResRet.i32 %552, 2
  %556 = extractvalue %dx.types.ResRet.i32 %552, 3
  %557 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %558 = extractvalue %dx.types.ResRet.i32 %557, 0
  %559 = extractvalue %dx.types.ResRet.i32 %557, 1
  %560 = extractvalue %dx.types.ResRet.i32 %557, 2
  %561 = extractvalue %dx.types.ResRet.i32 %557, 3
  %562 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %563 = extractvalue %dx.types.ResRet.i32 %562, 0
  %564 = extractvalue %dx.types.ResRet.i32 %562, 1
  %565 = extractvalue %dx.types.ResRet.i32 %562, 2
  %566 = extractvalue %dx.types.ResRet.i32 %562, 3
  %567 = and i32 %563, 65535
  %568 = call float @dx.op.legacyF16ToF32(i32 131, i32 %567)  ; LegacyF16ToF32(value)
  %569 = lshr i32 %563, 16
  %570 = call float @dx.op.legacyF16ToF32(i32 131, i32 %569)  ; LegacyF16ToF32(value)
  %571 = and i32 %564, 65535
  %572 = call float @dx.op.legacyF16ToF32(i32 131, i32 %571)  ; LegacyF16ToF32(value)
  %573 = lshr i32 %564, 16
  %574 = call float @dx.op.legacyF16ToF32(i32 131, i32 %573)  ; LegacyF16ToF32(value)
  %575 = and i32 %565, 65535
  %576 = call float @dx.op.legacyF16ToF32(i32 131, i32 %575)  ; LegacyF16ToF32(value)
  %577 = lshr i32 %565, 16
  %578 = call float @dx.op.legacyF16ToF32(i32 131, i32 %577)  ; LegacyF16ToF32(value)
  %579 = and i32 %566, 65535
  %580 = call float @dx.op.legacyF16ToF32(i32 131, i32 %579)  ; LegacyF16ToF32(value)
  %581 = lshr i32 %566, 16
  %582 = call float @dx.op.legacyF16ToF32(i32 131, i32 %581)  ; LegacyF16ToF32(value)
  %583 = and i32 %558, 65535
  %584 = call float @dx.op.legacyF16ToF32(i32 131, i32 %583)  ; LegacyF16ToF32(value)
  %585 = lshr i32 %558, 16
  %586 = call float @dx.op.legacyF16ToF32(i32 131, i32 %585)  ; LegacyF16ToF32(value)
  %587 = and i32 %559, 65535
  %588 = call float @dx.op.legacyF16ToF32(i32 131, i32 %587)  ; LegacyF16ToF32(value)
  %589 = lshr i32 %559, 16
  %590 = call float @dx.op.legacyF16ToF32(i32 131, i32 %589)  ; LegacyF16ToF32(value)
  %591 = and i32 %560, 65535
  %592 = call float @dx.op.legacyF16ToF32(i32 131, i32 %591)  ; LegacyF16ToF32(value)
  %593 = lshr i32 %560, 16
  %594 = call float @dx.op.legacyF16ToF32(i32 131, i32 %593)  ; LegacyF16ToF32(value)
  %595 = and i32 %561, 65535
  %596 = call float @dx.op.legacyF16ToF32(i32 131, i32 %595)  ; LegacyF16ToF32(value)
  %597 = lshr i32 %561, 16
  %598 = call float @dx.op.legacyF16ToF32(i32 131, i32 %597)  ; LegacyF16ToF32(value)
  %599 = and i32 %553, 65535
  %600 = call float @dx.op.legacyF16ToF32(i32 131, i32 %599)  ; LegacyF16ToF32(value)
  %601 = lshr i32 %553, 16
  %602 = call float @dx.op.legacyF16ToF32(i32 131, i32 %601)  ; LegacyF16ToF32(value)
  %603 = and i32 %554, 65535
  %604 = call float @dx.op.legacyF16ToF32(i32 131, i32 %603)  ; LegacyF16ToF32(value)
  %605 = lshr i32 %554, 16
  %606 = call float @dx.op.legacyF16ToF32(i32 131, i32 %605)  ; LegacyF16ToF32(value)
  %607 = and i32 %555, 65535
  %608 = call float @dx.op.legacyF16ToF32(i32 131, i32 %607)  ; LegacyF16ToF32(value)
  %609 = lshr i32 %555, 16
  %610 = call float @dx.op.legacyF16ToF32(i32 131, i32 %609)  ; LegacyF16ToF32(value)
  %611 = and i32 %556, 65535
  %612 = call float @dx.op.legacyF16ToF32(i32 131, i32 %611)  ; LegacyF16ToF32(value)
  %613 = lshr i32 %556, 16
  %614 = call float @dx.op.legacyF16ToF32(i32 131, i32 %613)  ; LegacyF16ToF32(value)
  %615 = and i32 %550, 65535
  %616 = call float @dx.op.legacyF16ToF32(i32 131, i32 %615)  ; LegacyF16ToF32(value)
  %617 = lshr i32 %550, 16
  %618 = call float @dx.op.legacyF16ToF32(i32 131, i32 %617)  ; LegacyF16ToF32(value)
  %619 = and i32 %551, 65535
  %620 = call float @dx.op.legacyF16ToF32(i32 131, i32 %619)  ; LegacyF16ToF32(value)
  br label %1327

; <label>:621                                     ; preds = %533
  %622 = shl nsw i32 %534, 4
  %623 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %622, i32 undef)  ; BufferLoad(srv,index,wot)
  %624 = extractvalue %dx.types.ResRet.i32 %623, 0
  %625 = extractvalue %dx.types.ResRet.i32 %623, 1
  %626 = extractvalue %dx.types.ResRet.i32 %623, 2
  %627 = extractvalue %dx.types.ResRet.i32 %623, 3
  %628 = getelementptr inbounds [4 x i32], [4 x i32]* %26, i32 0, i32 0
  store i32 %624, i32* %628, align 4
  %629 = getelementptr inbounds [4 x i32], [4 x i32]* %26, i32 0, i32 1
  store i32 %625, i32* %629, align 4
  %630 = getelementptr inbounds [4 x i32], [4 x i32]* %26, i32 0, i32 2
  store i32 %626, i32* %630, align 4
  %631 = getelementptr inbounds [4 x i32], [4 x i32]* %26, i32 0, i32 3
  store i32 %627, i32* %631, align 4
  %632 = getelementptr inbounds [4 x float], [4 x float]* %27, i32 0, i32 0
  store float 0.000000e+00, float* %632, align 4
  %633 = getelementptr inbounds [4 x float], [4 x float]* %27, i32 0, i32 1
  store float 0.000000e+00, float* %633, align 4
  %634 = getelementptr inbounds [4 x float], [4 x float]* %27, i32 0, i32 2
  store float 0.000000e+00, float* %634, align 4
  %635 = getelementptr inbounds [4 x float], [4 x float]* %27, i32 0, i32 3
  store float 0.000000e+00, float* %635, align 4
  %636 = icmp slt i32 %624, 0
  br i1 %636, label %637, label %727, !dx.controlflow.hints !51

; <label>:637                                     ; preds = %621
  %638 = fsub fast float 1.000000e+00, %543
  %639 = fdiv fast float 1.000000e+00, %638
  %640 = shl nsw i32 %534, 6
  %641 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %640, i32 undef)  ; BufferLoad(srv,index,wot)
  %642 = extractvalue %dx.types.ResRet.i32 %641, 0
  %643 = extractvalue %dx.types.ResRet.i32 %641, 1
  %644 = extractvalue %dx.types.ResRet.i32 %641, 2
  %645 = extractvalue %dx.types.ResRet.i32 %641, 3
  %646 = fmul fast float %639, %546
  %647 = fmul fast float %639, %544
  %648 = getelementptr inbounds [4 x i32], [4 x i32]* %24, i32 0, i32 0
  store i32 %642, i32* %648, align 4
  %649 = getelementptr inbounds [4 x i32], [4 x i32]* %24, i32 0, i32 1
  store i32 %643, i32* %649, align 4
  %650 = getelementptr inbounds [4 x i32], [4 x i32]* %24, i32 0, i32 2
  store i32 %644, i32* %650, align 4
  %651 = getelementptr inbounds [4 x i32], [4 x i32]* %24, i32 0, i32 3
  store i32 %645, i32* %651, align 4
  %652 = fmul fast float %647, 4.000000e+00
  %653 = call float @dx.op.unary.f32(i32 27, float %652)  ; Round_ni(value)
  %654 = fmul fast float %646, 4.000000e+00
  %655 = call float @dx.op.unary.f32(i32 27, float %654)  ; Round_ni(value)
  %656 = fsub fast float 1.100000e+01, %653
  %657 = fmul fast float %653, 5.000000e-01
  %658 = fmul fast float %657, %656
  %659 = fadd fast float %655, 5.000000e-01
  %660 = fadd fast float %659, %658
  %661 = fptosi float %660 to i32
  %662 = fptosi float %653 to i32
  %663 = sub nsw i32 5, %662
  %664 = fmul fast float %655, 2.500000e-01
  %665 = fmul fast float %653, 2.500000e-01
  %666 = add nsw i32 %661, 1
  %667 = add nsw i32 %661, %663
  %668 = fsub fast float %646, %664
  %669 = fmul fast float %668, 4.000000e+00
  %670 = fsub fast float %647, %665
  %671 = fmul fast float %670, 4.000000e+00
  %672 = fadd fast float %668, %670
  %673 = fmul fast float %672, 4.000000e+00
  %674 = fcmp fast ogt float %673, 1.000000e+00
  br i1 %674, label %675, label %681, !dx.controlflow.hints !52

; <label>:675                                     ; preds = %637
  %676 = add nsw i32 %667, 1
  %677 = fadd fast float %671, -1.000000e+00
  %678 = fsub fast float -0.000000e+00, %677
  %679 = fadd fast float %669, -1.000000e+00
  %680 = fsub fast float -0.000000e+00, %679
  br label %681

; <label>:681                                     ; preds = %675, %637
  %682 = phi i32 [ %676, %675 ], [ %661, %637 ]
  %683 = phi i32 [ %666, %675 ], [ %667, %637 ]
  %684 = phi i32 [ %667, %675 ], [ %666, %637 ]
  %685 = phi float [ %680, %675 ], [ %671, %637 ]
  %686 = phi float [ %678, %675 ], [ %669, %637 ]
  %687 = fsub fast float 1.000000e+00, %685
  %688 = fsub fast float %687, %686
  %689 = lshr i32 %684, 2
  %690 = getelementptr [4 x i32], [4 x i32]* %24, i32 0, i32 %689
  %691 = load i32, i32* %690, align 4, !tbaa !53, !noalias !57
  %692 = shl i32 %684, 3
  %693 = and i32 %692, 24
  %694 = lshr i32 %691, %693
  %695 = and i32 %694, 255
  %696 = sitofp i32 %695 to float
  %697 = fmul fast float %686, 0x3F70101020000000
  %698 = fmul fast float %697, %696
  %699 = lshr i32 %683, 2
  %700 = getelementptr [4 x i32], [4 x i32]* %24, i32 0, i32 %699
  %701 = load i32, i32* %700, align 4, !tbaa !53, !noalias !57
  %702 = shl i32 %683, 3
  %703 = and i32 %702, 24
  %704 = lshr i32 %701, %703
  %705 = and i32 %704, 255
  %706 = sitofp i32 %705 to float
  %707 = fmul fast float %685, 0x3F70101020000000
  %708 = fmul fast float %707, %706
  %709 = lshr i32 %682, 2
  %710 = getelementptr [4 x i32], [4 x i32]* %24, i32 0, i32 %709
  %711 = load i32, i32* %710, align 4, !tbaa !53, !noalias !57
  %712 = shl i32 %682, 3
  %713 = and i32 %712, 24
  %714 = lshr i32 %711, %713
  %715 = and i32 %714, 255
  %716 = sitofp i32 %715 to float
  %717 = fmul fast float %688, 0x3F70101020000000
  %718 = fmul fast float %717, %716
  %719 = fsub fast float 1.000000e+00, %698
  %720 = fsub fast float %719, %708
  %721 = fsub fast float %720, %718
  %722 = fmul fast float %543, 2.000000e+01
  %723 = fadd fast float %722, 1.000000e+00
  %724 = fmul fast float %721, 2.000000e+01
  %725 = fsub fast float %723, %724
  %726 = call float @dx.op.unary.f32(i32 7, float %725)  ; Saturate(value)
  br label %727

; <label>:727                                     ; preds = %681, %621
  %728 = phi float [ %726, %681 ], [ 1.000000e+00, %621 ]
  store float %728, float* %632, align 4, !tbaa !71, !noalias !57
  %729 = icmp slt i32 %625, 0
  br i1 %729, label %730, label %821, !dx.controlflow.hints !51

; <label>:730                                     ; preds = %727
  %731 = fsub fast float 1.000000e+00, %544
  %732 = fdiv fast float 1.000000e+00, %731
  %733 = shl i32 %534, 6
  %734 = or i32 %733, 16
  %735 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %734, i32 undef)  ; BufferLoad(srv,index,wot)
  %736 = extractvalue %dx.types.ResRet.i32 %735, 0
  %737 = extractvalue %dx.types.ResRet.i32 %735, 1
  %738 = extractvalue %dx.types.ResRet.i32 %735, 2
  %739 = extractvalue %dx.types.ResRet.i32 %735, 3
  %740 = fmul fast float %732, %543
  %741 = fmul fast float %732, %546
  %742 = getelementptr inbounds [4 x i32], [4 x i32]* %24, i32 0, i32 0
  store i32 %736, i32* %742, align 4
  %743 = getelementptr inbounds [4 x i32], [4 x i32]* %24, i32 0, i32 1
  store i32 %737, i32* %743, align 4
  %744 = getelementptr inbounds [4 x i32], [4 x i32]* %24, i32 0, i32 2
  store i32 %738, i32* %744, align 4
  %745 = getelementptr inbounds [4 x i32], [4 x i32]* %24, i32 0, i32 3
  store i32 %739, i32* %745, align 4
  %746 = fmul fast float %741, 4.000000e+00
  %747 = call float @dx.op.unary.f32(i32 27, float %746)  ; Round_ni(value)
  %748 = fmul fast float %740, 4.000000e+00
  %749 = call float @dx.op.unary.f32(i32 27, float %748)  ; Round_ni(value)
  %750 = fsub fast float 1.100000e+01, %747
  %751 = fmul fast float %747, 5.000000e-01
  %752 = fmul fast float %751, %750
  %753 = fadd fast float %749, 5.000000e-01
  %754 = fadd fast float %753, %752
  %755 = fptosi float %754 to i32
  %756 = fptosi float %747 to i32
  %757 = sub nsw i32 5, %756
  %758 = fmul fast float %749, 2.500000e-01
  %759 = fmul fast float %747, 2.500000e-01
  %760 = add nsw i32 %755, 1
  %761 = add nsw i32 %755, %757
  %762 = fsub fast float %740, %758
  %763 = fmul fast float %762, 4.000000e+00
  %764 = fsub fast float %741, %759
  %765 = fmul fast float %764, 4.000000e+00
  %766 = fadd fast float %762, %764
  %767 = fmul fast float %766, 4.000000e+00
  %768 = fcmp fast ogt float %767, 1.000000e+00
  br i1 %768, label %769, label %775, !dx.controlflow.hints !52

; <label>:769                                     ; preds = %730
  %770 = add nsw i32 %761, 1
  %771 = fadd fast float %765, -1.000000e+00
  %772 = fsub fast float -0.000000e+00, %771
  %773 = fadd fast float %763, -1.000000e+00
  %774 = fsub fast float -0.000000e+00, %773
  br label %775

; <label>:775                                     ; preds = %769, %730
  %776 = phi i32 [ %770, %769 ], [ %755, %730 ]
  %777 = phi i32 [ %760, %769 ], [ %761, %730 ]
  %778 = phi i32 [ %761, %769 ], [ %760, %730 ]
  %779 = phi float [ %774, %769 ], [ %765, %730 ]
  %780 = phi float [ %772, %769 ], [ %763, %730 ]
  %781 = fsub fast float 1.000000e+00, %779
  %782 = fsub fast float %781, %780
  %783 = lshr i32 %778, 2
  %784 = getelementptr [4 x i32], [4 x i32]* %24, i32 0, i32 %783
  %785 = load i32, i32* %784, align 4, !tbaa !53, !noalias !57
  %786 = shl i32 %778, 3
  %787 = and i32 %786, 24
  %788 = lshr i32 %785, %787
  %789 = and i32 %788, 255
  %790 = sitofp i32 %789 to float
  %791 = fmul fast float %780, 0x3F70101020000000
  %792 = fmul fast float %791, %790
  %793 = lshr i32 %777, 2
  %794 = getelementptr [4 x i32], [4 x i32]* %24, i32 0, i32 %793
  %795 = load i32, i32* %794, align 4, !tbaa !53, !noalias !57
  %796 = shl i32 %777, 3
  %797 = and i32 %796, 24
  %798 = lshr i32 %795, %797
  %799 = and i32 %798, 255
  %800 = sitofp i32 %799 to float
  %801 = fmul fast float %779, 0x3F70101020000000
  %802 = fmul fast float %801, %800
  %803 = lshr i32 %776, 2
  %804 = getelementptr [4 x i32], [4 x i32]* %24, i32 0, i32 %803
  %805 = load i32, i32* %804, align 4, !tbaa !53, !noalias !57
  %806 = shl i32 %776, 3
  %807 = and i32 %806, 24
  %808 = lshr i32 %805, %807
  %809 = and i32 %808, 255
  %810 = sitofp i32 %809 to float
  %811 = fmul fast float %782, 0x3F70101020000000
  %812 = fmul fast float %811, %810
  %813 = fsub fast float 1.000000e+00, %792
  %814 = fsub fast float %813, %802
  %815 = fsub fast float %814, %812
  %816 = fmul fast float %544, 2.000000e+01
  %817 = fadd fast float %816, 1.000000e+00
  %818 = fmul fast float %815, 2.000000e+01
  %819 = fsub fast float %817, %818
  %820 = call float @dx.op.unary.f32(i32 7, float %819)  ; Saturate(value)
  br label %821

; <label>:821                                     ; preds = %775, %727
  %822 = phi float [ %820, %775 ], [ 1.000000e+00, %727 ]
  store float %822, float* %633, align 4, !tbaa !71, !noalias !57
  %823 = fadd fast float %822, %728
  %824 = icmp slt i32 %626, 0
  br i1 %824, label %825, label %916, !dx.controlflow.hints !51

; <label>:825                                     ; preds = %821
  %826 = fsub fast float 1.000000e+00, %545
  %827 = fdiv fast float 1.000000e+00, %826
  %828 = shl i32 %534, 6
  %829 = or i32 %828, 32
  %830 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %829, i32 undef)  ; BufferLoad(srv,index,wot)
  %831 = extractvalue %dx.types.ResRet.i32 %830, 0
  %832 = extractvalue %dx.types.ResRet.i32 %830, 1
  %833 = extractvalue %dx.types.ResRet.i32 %830, 2
  %834 = extractvalue %dx.types.ResRet.i32 %830, 3
  %835 = fmul fast float %827, %543
  %836 = fmul fast float %827, %544
  %837 = getelementptr inbounds [4 x i32], [4 x i32]* %24, i32 0, i32 0
  store i32 %831, i32* %837, align 4
  %838 = getelementptr inbounds [4 x i32], [4 x i32]* %24, i32 0, i32 1
  store i32 %832, i32* %838, align 4
  %839 = getelementptr inbounds [4 x i32], [4 x i32]* %24, i32 0, i32 2
  store i32 %833, i32* %839, align 4
  %840 = getelementptr inbounds [4 x i32], [4 x i32]* %24, i32 0, i32 3
  store i32 %834, i32* %840, align 4
  %841 = fmul fast float %836, 4.000000e+00
  %842 = call float @dx.op.unary.f32(i32 27, float %841)  ; Round_ni(value)
  %843 = fmul fast float %835, 4.000000e+00
  %844 = call float @dx.op.unary.f32(i32 27, float %843)  ; Round_ni(value)
  %845 = fsub fast float 1.100000e+01, %842
  %846 = fmul fast float %842, 5.000000e-01
  %847 = fmul fast float %846, %845
  %848 = fadd fast float %844, 5.000000e-01
  %849 = fadd fast float %848, %847
  %850 = fptosi float %849 to i32
  %851 = fptosi float %842 to i32
  %852 = sub nsw i32 5, %851
  %853 = fmul fast float %844, 2.500000e-01
  %854 = fmul fast float %842, 2.500000e-01
  %855 = add nsw i32 %850, 1
  %856 = add nsw i32 %850, %852
  %857 = fsub fast float %835, %853
  %858 = fmul fast float %857, 4.000000e+00
  %859 = fsub fast float %836, %854
  %860 = fmul fast float %859, 4.000000e+00
  %861 = fadd fast float %857, %859
  %862 = fmul fast float %861, 4.000000e+00
  %863 = fcmp fast ogt float %862, 1.000000e+00
  br i1 %863, label %864, label %870, !dx.controlflow.hints !52

; <label>:864                                     ; preds = %825
  %865 = add nsw i32 %856, 1
  %866 = fadd fast float %860, -1.000000e+00
  %867 = fsub fast float -0.000000e+00, %866
  %868 = fadd fast float %858, -1.000000e+00
  %869 = fsub fast float -0.000000e+00, %868
  br label %870

; <label>:870                                     ; preds = %864, %825
  %871 = phi i32 [ %865, %864 ], [ %850, %825 ]
  %872 = phi i32 [ %855, %864 ], [ %856, %825 ]
  %873 = phi i32 [ %856, %864 ], [ %855, %825 ]
  %874 = phi float [ %869, %864 ], [ %860, %825 ]
  %875 = phi float [ %867, %864 ], [ %858, %825 ]
  %876 = fsub fast float 1.000000e+00, %874
  %877 = fsub fast float %876, %875
  %878 = lshr i32 %873, 2
  %879 = getelementptr [4 x i32], [4 x i32]* %24, i32 0, i32 %878
  %880 = load i32, i32* %879, align 4, !tbaa !53, !noalias !57
  %881 = shl i32 %873, 3
  %882 = and i32 %881, 24
  %883 = lshr i32 %880, %882
  %884 = and i32 %883, 255
  %885 = sitofp i32 %884 to float
  %886 = fmul fast float %875, 0x3F70101020000000
  %887 = fmul fast float %886, %885
  %888 = lshr i32 %872, 2
  %889 = getelementptr [4 x i32], [4 x i32]* %24, i32 0, i32 %888
  %890 = load i32, i32* %889, align 4, !tbaa !53, !noalias !57
  %891 = shl i32 %872, 3
  %892 = and i32 %891, 24
  %893 = lshr i32 %890, %892
  %894 = and i32 %893, 255
  %895 = sitofp i32 %894 to float
  %896 = fmul fast float %874, 0x3F70101020000000
  %897 = fmul fast float %896, %895
  %898 = lshr i32 %871, 2
  %899 = getelementptr [4 x i32], [4 x i32]* %24, i32 0, i32 %898
  %900 = load i32, i32* %899, align 4, !tbaa !53, !noalias !57
  %901 = shl i32 %871, 3
  %902 = and i32 %901, 24
  %903 = lshr i32 %900, %902
  %904 = and i32 %903, 255
  %905 = sitofp i32 %904 to float
  %906 = fmul fast float %877, 0x3F70101020000000
  %907 = fmul fast float %906, %905
  %908 = fsub fast float 1.000000e+00, %887
  %909 = fsub fast float %908, %897
  %910 = fsub fast float %909, %907
  %911 = fmul fast float %545, 2.000000e+01
  %912 = fadd fast float %911, 1.000000e+00
  %913 = fmul fast float %910, 2.000000e+01
  %914 = fsub fast float %912, %913
  %915 = call float @dx.op.unary.f32(i32 7, float %914)  ; Saturate(value)
  br label %916

; <label>:916                                     ; preds = %870, %821
  %917 = phi float [ %915, %870 ], [ 1.000000e+00, %821 ]
  store float %917, float* %634, align 4, !tbaa !71, !noalias !57
  %918 = fadd fast float %823, %917
  %919 = icmp slt i32 %627, 0
  br i1 %919, label %920, label %1011, !dx.controlflow.hints !51

; <label>:920                                     ; preds = %916
  %921 = fsub fast float 1.000000e+00, %546
  %922 = fdiv fast float 1.000000e+00, %921
  %923 = shl i32 %534, 6
  %924 = or i32 %923, 48
  %925 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %924, i32 undef)  ; BufferLoad(srv,index,wot)
  %926 = extractvalue %dx.types.ResRet.i32 %925, 0
  %927 = extractvalue %dx.types.ResRet.i32 %925, 1
  %928 = extractvalue %dx.types.ResRet.i32 %925, 2
  %929 = extractvalue %dx.types.ResRet.i32 %925, 3
  %930 = fmul fast float %922, %543
  %931 = fmul fast float %922, %544
  %932 = getelementptr inbounds [4 x i32], [4 x i32]* %24, i32 0, i32 0
  store i32 %926, i32* %932, align 4
  %933 = getelementptr inbounds [4 x i32], [4 x i32]* %24, i32 0, i32 1
  store i32 %927, i32* %933, align 4
  %934 = getelementptr inbounds [4 x i32], [4 x i32]* %24, i32 0, i32 2
  store i32 %928, i32* %934, align 4
  %935 = getelementptr inbounds [4 x i32], [4 x i32]* %24, i32 0, i32 3
  store i32 %929, i32* %935, align 4
  %936 = fmul fast float %931, 4.000000e+00
  %937 = call float @dx.op.unary.f32(i32 27, float %936)  ; Round_ni(value)
  %938 = fmul fast float %930, 4.000000e+00
  %939 = call float @dx.op.unary.f32(i32 27, float %938)  ; Round_ni(value)
  %940 = fsub fast float 1.100000e+01, %937
  %941 = fmul fast float %937, 5.000000e-01
  %942 = fmul fast float %941, %940
  %943 = fadd fast float %939, 5.000000e-01
  %944 = fadd fast float %943, %942
  %945 = fptosi float %944 to i32
  %946 = fptosi float %937 to i32
  %947 = sub nsw i32 5, %946
  %948 = fmul fast float %939, 2.500000e-01
  %949 = fmul fast float %937, 2.500000e-01
  %950 = add nsw i32 %945, 1
  %951 = add nsw i32 %945, %947
  %952 = fsub fast float %930, %948
  %953 = fmul fast float %952, 4.000000e+00
  %954 = fsub fast float %931, %949
  %955 = fmul fast float %954, 4.000000e+00
  %956 = fadd fast float %952, %954
  %957 = fmul fast float %956, 4.000000e+00
  %958 = fcmp fast ogt float %957, 1.000000e+00
  br i1 %958, label %959, label %965, !dx.controlflow.hints !52

; <label>:959                                     ; preds = %920
  %960 = add nsw i32 %951, 1
  %961 = fadd fast float %955, -1.000000e+00
  %962 = fsub fast float -0.000000e+00, %961
  %963 = fadd fast float %953, -1.000000e+00
  %964 = fsub fast float -0.000000e+00, %963
  br label %965

; <label>:965                                     ; preds = %959, %920
  %966 = phi i32 [ %960, %959 ], [ %945, %920 ]
  %967 = phi i32 [ %950, %959 ], [ %951, %920 ]
  %968 = phi i32 [ %951, %959 ], [ %950, %920 ]
  %969 = phi float [ %964, %959 ], [ %955, %920 ]
  %970 = phi float [ %962, %959 ], [ %953, %920 ]
  %971 = fsub fast float 1.000000e+00, %969
  %972 = fsub fast float %971, %970
  %973 = lshr i32 %968, 2
  %974 = getelementptr [4 x i32], [4 x i32]* %24, i32 0, i32 %973
  %975 = load i32, i32* %974, align 4, !tbaa !53, !noalias !57
  %976 = shl i32 %968, 3
  %977 = and i32 %976, 24
  %978 = lshr i32 %975, %977
  %979 = and i32 %978, 255
  %980 = sitofp i32 %979 to float
  %981 = fmul fast float %970, 0x3F70101020000000
  %982 = fmul fast float %981, %980
  %983 = lshr i32 %967, 2
  %984 = getelementptr [4 x i32], [4 x i32]* %24, i32 0, i32 %983
  %985 = load i32, i32* %984, align 4, !tbaa !53, !noalias !57
  %986 = shl i32 %967, 3
  %987 = and i32 %986, 24
  %988 = lshr i32 %985, %987
  %989 = and i32 %988, 255
  %990 = sitofp i32 %989 to float
  %991 = fmul fast float %969, 0x3F70101020000000
  %992 = fmul fast float %991, %990
  %993 = lshr i32 %966, 2
  %994 = getelementptr [4 x i32], [4 x i32]* %24, i32 0, i32 %993
  %995 = load i32, i32* %994, align 4, !tbaa !53, !noalias !57
  %996 = shl i32 %966, 3
  %997 = and i32 %996, 24
  %998 = lshr i32 %995, %997
  %999 = and i32 %998, 255
  %1000 = sitofp i32 %999 to float
  %1001 = fmul fast float %972, 0x3F70101020000000
  %1002 = fmul fast float %1001, %1000
  %1003 = fsub fast float 1.000000e+00, %982
  %1004 = fsub fast float %1003, %992
  %1005 = fsub fast float %1004, %1002
  %1006 = fmul fast float %546, 2.000000e+01
  %1007 = fadd fast float %1006, 1.000000e+00
  %1008 = fmul fast float %1005, 2.000000e+01
  %1009 = fsub fast float %1007, %1008
  %1010 = call float @dx.op.unary.f32(i32 7, float %1009)  ; Saturate(value)
  br label %1011

; <label>:1011                                    ; preds = %965, %916
  %1012 = phi float [ %1010, %965 ], [ 1.000000e+00, %916 ]
  store float %1012, float* %635, align 4, !tbaa !71, !noalias !57
  %1013 = fadd fast float %918, %1012
  %1014 = fcmp fast oeq float %1013, 0.000000e+00
  br i1 %1014, label %1015, label %1016, !dx.controlflow.hints !73

; <label>:1015                                    ; preds = %1011
  store float 2.500000e-01, float* %632, align 4
  store float 2.500000e-01, float* %633, align 4
  store float 2.500000e-01, float* %634, align 4
  store float 2.500000e-01, float* %635, align 4
  br label %1016

; <label>:1016                                    ; preds = %1015, %1011
  %1017 = phi float [ 2.500000e-01, %1015 ], [ %728, %1011 ]
  %1018 = phi i32 [ 0, %1015 ], [ 1, %1011 ]
  br label %1019

; <label>:1019                                    ; preds = %1292, %1016
  %1020 = phi float [ %1017, %1016 ], [ %1294, %1292 ]
  %1021 = phi float [ 0.000000e+00, %1016 ], [ %1261, %1292 ]
  %1022 = phi float [ 0.000000e+00, %1016 ], [ %1262, %1292 ]
  %1023 = phi float [ 0.000000e+00, %1016 ], [ %1263, %1292 ]
  %1024 = phi float [ 0.000000e+00, %1016 ], [ %1264, %1292 ]
  %1025 = phi float [ 0.000000e+00, %1016 ], [ %1265, %1292 ]
  %1026 = phi float [ 0.000000e+00, %1016 ], [ %1266, %1292 ]
  %1027 = phi float [ 0.000000e+00, %1016 ], [ %1267, %1292 ]
  %1028 = phi float [ 0.000000e+00, %1016 ], [ %1268, %1292 ]
  %1029 = phi float [ 0.000000e+00, %1016 ], [ %1269, %1292 ]
  %1030 = phi float [ 0.000000e+00, %1016 ], [ %1270, %1292 ]
  %1031 = phi float [ 0.000000e+00, %1016 ], [ %1271, %1292 ]
  %1032 = phi float [ 0.000000e+00, %1016 ], [ %1272, %1292 ]
  %1033 = phi float [ 0.000000e+00, %1016 ], [ %1273, %1292 ]
  %1034 = phi float [ 0.000000e+00, %1016 ], [ %1274, %1292 ]
  %1035 = phi float [ 0.000000e+00, %1016 ], [ %1275, %1292 ]
  %1036 = phi float [ 0.000000e+00, %1016 ], [ %1276, %1292 ]
  %1037 = phi float [ 0.000000e+00, %1016 ], [ %1277, %1292 ]
  %1038 = phi float [ 0.000000e+00, %1016 ], [ %1278, %1292 ]
  %1039 = phi float [ 0.000000e+00, %1016 ], [ %1279, %1292 ]
  %1040 = phi float [ 0.000000e+00, %1016 ], [ %1280, %1292 ]
  %1041 = phi float [ 0.000000e+00, %1016 ], [ %1281, %1292 ]
  %1042 = phi float [ 0.000000e+00, %1016 ], [ %1282, %1292 ]
  %1043 = phi float [ 0.000000e+00, %1016 ], [ %1283, %1292 ]
  %1044 = phi float [ 0.000000e+00, %1016 ], [ %1284, %1292 ]
  %1045 = phi float [ 0.000000e+00, %1016 ], [ %1285, %1292 ]
  %1046 = phi float [ 0.000000e+00, %1016 ], [ %1286, %1292 ]
  %1047 = phi float [ 0.000000e+00, %1016 ], [ %1287, %1292 ]
  %1048 = phi float [ 0.000000e+00, %1016 ], [ %1288, %1292 ]
  %1049 = phi float [ 0.000000e+00, %1016 ], [ %1289, %1292 ]
  %1050 = phi i32 [ 0, %1016 ], [ %1290, %1292 ]
  %1051 = fcmp fast ogt float %1020, 0.000000e+00
  br i1 %1051, label %1052, label %1260, !dx.controlflow.hints !74

; <label>:1052                                    ; preds = %1019
  %1053 = getelementptr [4 x float], [4 x float]* %25, i32 0, i32 %1050
  %1054 = load float, float* %1053, align 4, !tbaa !71, !noalias !57
  %1055 = getelementptr [4 x i32], [4 x i32]* %26, i32 0, i32 %1050
  %1056 = load i32, i32* %1055, align 4, !tbaa !53, !noalias !57
  %1057 = fmul fast float %1054, %1020
  %1058 = shl i32 %1056, 5
  %1059 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %1058, i32 undef)  ; BufferLoad(srv,index,wot)
  %1060 = extractvalue %dx.types.ResRet.i32 %1059, 0
  %1061 = extractvalue %dx.types.ResRet.i32 %1059, 1
  %1062 = extractvalue %dx.types.ResRet.i32 %1059, 2
  %1063 = extractvalue %dx.types.ResRet.i32 %1059, 3
  %1064 = or i32 %1058, 16
  %1065 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %1064, i32 undef)  ; BufferLoad(srv,index,wot)
  %1066 = extractvalue %dx.types.ResRet.i32 %1065, 0
  %1067 = extractvalue %dx.types.ResRet.i32 %1065, 1
  %1068 = extractvalue %dx.types.ResRet.i32 %1065, 2
  %1069 = extractvalue %dx.types.ResRet.i32 %1065, 3
  %1070 = shl i32 %1060, 4
  %1071 = and i32 %1070, 32752
  %1072 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1071)  ; LegacyF16ToF32(value)
  %1073 = lshr i32 %1060, 7
  %1074 = and i32 %1073, 32752
  %1075 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1074)  ; LegacyF16ToF32(value)
  %1076 = lshr i32 %1060, 22
  %1077 = shl nuw nsw i32 %1076, 5
  %1078 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1077)  ; LegacyF16ToF32(value)
  %1079 = and i32 %1061, 255
  %1080 = uitofp i32 %1079 to float
  %1081 = fmul fast float %1080, 0x3F80204080000000
  %1082 = fadd fast float %1081, -1.000000e+00
  %1083 = lshr i32 %1061, 8
  %1084 = and i32 %1083, 255
  %1085 = uitofp i32 %1084 to float
  %1086 = fmul fast float %1085, 0x3F80204080000000
  %1087 = fadd fast float %1086, -1.000000e+00
  %1088 = lshr i32 %1061, 16
  %1089 = and i32 %1088, 255
  %1090 = uitofp i32 %1089 to float
  %1091 = fmul fast float %1090, 0x3F80204080000000
  %1092 = fadd fast float %1091, -1.000000e+00
  %1093 = lshr i32 %1061, 24
  %1094 = uitofp i32 %1093 to float
  %1095 = fmul fast float %1094, 0x3F80204080000000
  %1096 = fadd fast float %1095, -1.000000e+00
  %1097 = and i32 %1062, 255
  %1098 = uitofp i32 %1097 to float
  %1099 = fmul fast float %1098, 0x3F80204080000000
  %1100 = fadd fast float %1099, -1.000000e+00
  %1101 = lshr i32 %1062, 8
  %1102 = and i32 %1101, 255
  %1103 = uitofp i32 %1102 to float
  %1104 = fmul fast float %1103, 0x3F80204080000000
  %1105 = fadd fast float %1104, -1.000000e+00
  %1106 = lshr i32 %1062, 16
  %1107 = and i32 %1106, 255
  %1108 = uitofp i32 %1107 to float
  %1109 = fmul fast float %1108, 0x3F80204080000000
  %1110 = fadd fast float %1109, -1.000000e+00
  %1111 = lshr i32 %1062, 24
  %1112 = uitofp i32 %1111 to float
  %1113 = fmul fast float %1112, 0x3F80204080000000
  %1114 = fadd fast float %1113, -1.000000e+00
  %1115 = and i32 %1063, 255
  %1116 = uitofp i32 %1115 to float
  %1117 = fmul fast float %1116, 0x3F80204080000000
  %1118 = fadd fast float %1117, -1.000000e+00
  %1119 = lshr i32 %1063, 8
  %1120 = and i32 %1119, 255
  %1121 = uitofp i32 %1120 to float
  %1122 = fmul fast float %1121, 0x3F80204080000000
  %1123 = fadd fast float %1122, -1.000000e+00
  %1124 = lshr i32 %1063, 16
  %1125 = and i32 %1124, 255
  %1126 = uitofp i32 %1125 to float
  %1127 = fmul fast float %1126, 0x3F80204080000000
  %1128 = fadd fast float %1127, -1.000000e+00
  %1129 = lshr i32 %1063, 24
  %1130 = uitofp i32 %1129 to float
  %1131 = fmul fast float %1130, 0x3F80204080000000
  %1132 = fadd fast float %1131, -1.000000e+00
  %1133 = and i32 %1066, 255
  %1134 = uitofp i32 %1133 to float
  %1135 = fmul fast float %1134, 0x3F80204080000000
  %1136 = fadd fast float %1135, -1.000000e+00
  %1137 = lshr i32 %1066, 8
  %1138 = and i32 %1137, 255
  %1139 = uitofp i32 %1138 to float
  %1140 = fmul fast float %1139, 0x3F80204080000000
  %1141 = fadd fast float %1140, -1.000000e+00
  %1142 = lshr i32 %1066, 16
  %1143 = and i32 %1142, 255
  %1144 = uitofp i32 %1143 to float
  %1145 = fmul fast float %1144, 0x3F80204080000000
  %1146 = fadd fast float %1145, -1.000000e+00
  %1147 = lshr i32 %1066, 24
  %1148 = uitofp i32 %1147 to float
  %1149 = fmul fast float %1148, 0x3F80204080000000
  %1150 = fadd fast float %1149, -1.000000e+00
  %1151 = and i32 %1067, 255
  %1152 = uitofp i32 %1151 to float
  %1153 = fmul fast float %1152, 0x3F80204080000000
  %1154 = fadd fast float %1153, -1.000000e+00
  %1155 = lshr i32 %1067, 8
  %1156 = and i32 %1155, 255
  %1157 = uitofp i32 %1156 to float
  %1158 = fmul fast float %1157, 0x3F80204080000000
  %1159 = fadd fast float %1158, -1.000000e+00
  %1160 = lshr i32 %1067, 16
  %1161 = and i32 %1160, 255
  %1162 = uitofp i32 %1161 to float
  %1163 = fmul fast float %1162, 0x3F80204080000000
  %1164 = fadd fast float %1163, -1.000000e+00
  %1165 = lshr i32 %1067, 24
  %1166 = uitofp i32 %1165 to float
  %1167 = fmul fast float %1166, 0x3F80204080000000
  %1168 = fadd fast float %1167, -1.000000e+00
  %1169 = and i32 %1068, 255
  %1170 = uitofp i32 %1169 to float
  %1171 = fmul fast float %1170, 0x3F80204080000000
  %1172 = fadd fast float %1171, -1.000000e+00
  %1173 = lshr i32 %1068, 8
  %1174 = and i32 %1173, 255
  %1175 = uitofp i32 %1174 to float
  %1176 = fmul fast float %1175, 0x3F80204080000000
  %1177 = fadd fast float %1176, -1.000000e+00
  %1178 = lshr i32 %1068, 16
  %1179 = and i32 %1178, 255
  %1180 = uitofp i32 %1179 to float
  %1181 = fmul fast float %1180, 0x3F80204080000000
  %1182 = fadd fast float %1181, -1.000000e+00
  %1183 = lshr i32 %1068, 24
  %1184 = uitofp i32 %1183 to float
  %1185 = fmul fast float %1184, 0x3F80204080000000
  %1186 = fadd fast float %1185, -1.000000e+00
  %1187 = lshr i32 %1069, 8
  %1188 = and i32 %1187, 255
  %1189 = uitofp i32 %1188 to float
  %1190 = fmul fast float %1072, %1057
  %1191 = fadd fast float %1190, %1029
  %1192 = fmul fast float %1057, 0x3FFBB67AE0000000
  %1193 = fmul fast float %1192, %1072
  %1194 = fmul fast float %1193, %1082
  %1195 = fadd fast float %1194, %1028
  %1196 = fmul fast float %1193, %1087
  %1197 = fadd fast float %1196, %1027
  %1198 = fmul fast float %1193, %1092
  %1199 = fadd fast float %1198, %1026
  %1200 = fmul fast float %1057, 0x3FFEFBDEC0000000
  %1201 = fmul fast float %1200, %1072
  %1202 = fmul fast float %1201, %1096
  %1203 = fadd fast float %1202, %1025
  %1204 = fmul fast float %1201, %1100
  %1205 = fadd fast float %1204, %1024
  %1206 = fmul fast float %1057, 0x4001E377A0000000
  %1207 = fmul fast float %1206, %1072
  %1208 = fmul fast float %1207, %1105
  %1209 = fadd fast float %1208, %1023
  %1210 = fmul fast float %1201, %1110
  %1211 = fadd fast float %1210, %1022
  %1212 = fmul fast float %1201, %1114
  %1213 = fadd fast float %1212, %1021
  %1214 = fmul fast float %1075, %1057
  %1215 = fadd fast float %1214, %1038
  %1216 = fmul fast float %1192, %1075
  %1217 = fmul fast float %1216, %1118
  %1218 = fadd fast float %1217, %1037
  %1219 = fmul fast float %1216, %1123
  %1220 = fadd fast float %1219, %1036
  %1221 = fmul fast float %1216, %1128
  %1222 = fadd fast float %1221, %1035
  %1223 = fmul fast float %1200, %1075
  %1224 = fmul fast float %1223, %1132
  %1225 = fadd fast float %1224, %1034
  %1226 = fmul fast float %1223, %1136
  %1227 = fadd fast float %1226, %1033
  %1228 = fmul fast float %1206, %1075
  %1229 = fmul fast float %1228, %1141
  %1230 = fadd fast float %1229, %1032
  %1231 = fmul fast float %1223, %1146
  %1232 = fadd fast float %1231, %1031
  %1233 = fmul fast float %1223, %1150
  %1234 = fadd fast float %1233, %1030
  %1235 = fmul fast float %1078, %1057
  %1236 = fadd fast float %1235, %1047
  %1237 = fmul fast float %1192, %1078
  %1238 = fmul fast float %1237, %1154
  %1239 = fadd fast float %1238, %1046
  %1240 = fmul fast float %1237, %1159
  %1241 = fadd fast float %1240, %1045
  %1242 = fmul fast float %1237, %1164
  %1243 = fadd fast float %1242, %1044
  %1244 = fmul fast float %1200, %1078
  %1245 = fmul fast float %1244, %1168
  %1246 = fadd fast float %1245, %1043
  %1247 = fmul fast float %1244, %1172
  %1248 = fadd fast float %1247, %1042
  %1249 = fmul fast float %1206, %1078
  %1250 = fmul fast float %1249, %1177
  %1251 = fadd fast float %1250, %1041
  %1252 = fmul fast float %1244, %1182
  %1253 = fadd fast float %1252, %1040
  %1254 = fmul fast float %1244, %1186
  %1255 = fadd fast float %1254, %1039
  %1256 = fmul fast float %1057, 0x3F70101020000000
  %1257 = fmul fast float %1256, %1189
  %1258 = fadd fast float %1257, %1048
  %1259 = fadd fast float %1057, %1049
  br label %1260

; <label>:1260                                    ; preds = %1052, %1019
  %1261 = phi float [ %1213, %1052 ], [ %1021, %1019 ]
  %1262 = phi float [ %1211, %1052 ], [ %1022, %1019 ]
  %1263 = phi float [ %1209, %1052 ], [ %1023, %1019 ]
  %1264 = phi float [ %1205, %1052 ], [ %1024, %1019 ]
  %1265 = phi float [ %1203, %1052 ], [ %1025, %1019 ]
  %1266 = phi float [ %1199, %1052 ], [ %1026, %1019 ]
  %1267 = phi float [ %1197, %1052 ], [ %1027, %1019 ]
  %1268 = phi float [ %1195, %1052 ], [ %1028, %1019 ]
  %1269 = phi float [ %1191, %1052 ], [ %1029, %1019 ]
  %1270 = phi float [ %1234, %1052 ], [ %1030, %1019 ]
  %1271 = phi float [ %1232, %1052 ], [ %1031, %1019 ]
  %1272 = phi float [ %1230, %1052 ], [ %1032, %1019 ]
  %1273 = phi float [ %1227, %1052 ], [ %1033, %1019 ]
  %1274 = phi float [ %1225, %1052 ], [ %1034, %1019 ]
  %1275 = phi float [ %1222, %1052 ], [ %1035, %1019 ]
  %1276 = phi float [ %1220, %1052 ], [ %1036, %1019 ]
  %1277 = phi float [ %1218, %1052 ], [ %1037, %1019 ]
  %1278 = phi float [ %1215, %1052 ], [ %1038, %1019 ]
  %1279 = phi float [ %1255, %1052 ], [ %1039, %1019 ]
  %1280 = phi float [ %1253, %1052 ], [ %1040, %1019 ]
  %1281 = phi float [ %1251, %1052 ], [ %1041, %1019 ]
  %1282 = phi float [ %1248, %1052 ], [ %1042, %1019 ]
  %1283 = phi float [ %1246, %1052 ], [ %1043, %1019 ]
  %1284 = phi float [ %1243, %1052 ], [ %1044, %1019 ]
  %1285 = phi float [ %1241, %1052 ], [ %1045, %1019 ]
  %1286 = phi float [ %1239, %1052 ], [ %1046, %1019 ]
  %1287 = phi float [ %1236, %1052 ], [ %1047, %1019 ]
  %1288 = phi float [ %1258, %1052 ], [ %1048, %1019 ]
  %1289 = phi float [ %1259, %1052 ], [ %1049, %1019 ]
  %1290 = add nuw nsw i32 %1050, 1
  %1291 = icmp eq i32 %1290, 4
  br i1 %1291, label %1295, label %1292

; <label>:1292                                    ; preds = %1260
  %1293 = getelementptr [4 x float], [4 x float]* %27, i32 0, i32 %1290
  %1294 = load float, float* %1293, align 4, !tbaa !71, !noalias !57
  br label %1019

; <label>:1295                                    ; preds = %1260
  %1296 = fcmp fast ogt float %1289, 0.000000e+00
  %1297 = fdiv fast float 1.000000e+00, %1289
  %1298 = select i1 %1296, float %1297, float 1.000000e+00
  %1299 = fmul fast float %1298, %1269
  %1300 = fmul fast float %1298, %1268
  %1301 = fmul fast float %1298, %1267
  %1302 = fmul fast float %1298, %1266
  %1303 = fmul fast float %1298, %1265
  %1304 = fmul fast float %1298, %1264
  %1305 = fmul fast float %1298, %1263
  %1306 = fmul fast float %1298, %1262
  %1307 = fmul fast float %1298, %1261
  %1308 = fmul fast float %1298, %1278
  %1309 = fmul fast float %1298, %1277
  %1310 = fmul fast float %1298, %1276
  %1311 = fmul fast float %1298, %1275
  %1312 = fmul fast float %1298, %1274
  %1313 = fmul fast float %1298, %1273
  %1314 = fmul fast float %1298, %1272
  %1315 = fmul fast float %1298, %1271
  %1316 = fmul fast float %1298, %1270
  %1317 = fmul fast float %1298, %1287
  %1318 = fmul fast float %1298, %1286
  %1319 = fmul fast float %1298, %1285
  %1320 = fmul fast float %1298, %1284
  %1321 = fmul fast float %1298, %1283
  %1322 = fmul fast float %1298, %1282
  %1323 = fmul fast float %1298, %1281
  %1324 = fmul fast float %1298, %1280
  %1325 = fmul fast float %1298, %1279
  %1326 = fmul fast float %1298, %1288
  br label %1327

; <label>:1327                                    ; preds = %1295, %548
  %1328 = phi float [ %584, %548 ], [ %1307, %1295 ]
  %1329 = phi float [ %582, %548 ], [ %1306, %1295 ]
  %1330 = phi float [ %580, %548 ], [ %1305, %1295 ]
  %1331 = phi float [ %578, %548 ], [ %1304, %1295 ]
  %1332 = phi float [ %576, %548 ], [ %1303, %1295 ]
  %1333 = phi float [ %574, %548 ], [ %1302, %1295 ]
  %1334 = phi float [ %572, %548 ], [ %1301, %1295 ]
  %1335 = phi float [ %570, %548 ], [ %1300, %1295 ]
  %1336 = phi float [ %568, %548 ], [ %1299, %1295 ]
  %1337 = phi float [ %602, %548 ], [ %1316, %1295 ]
  %1338 = phi float [ %600, %548 ], [ %1315, %1295 ]
  %1339 = phi float [ %598, %548 ], [ %1314, %1295 ]
  %1340 = phi float [ %596, %548 ], [ %1313, %1295 ]
  %1341 = phi float [ %594, %548 ], [ %1312, %1295 ]
  %1342 = phi float [ %592, %548 ], [ %1311, %1295 ]
  %1343 = phi float [ %590, %548 ], [ %1310, %1295 ]
  %1344 = phi float [ %588, %548 ], [ %1309, %1295 ]
  %1345 = phi float [ %586, %548 ], [ %1308, %1295 ]
  %1346 = phi float [ %620, %548 ], [ %1325, %1295 ]
  %1347 = phi float [ %618, %548 ], [ %1324, %1295 ]
  %1348 = phi float [ %616, %548 ], [ %1323, %1295 ]
  %1349 = phi float [ %614, %548 ], [ %1322, %1295 ]
  %1350 = phi float [ %612, %548 ], [ %1321, %1295 ]
  %1351 = phi float [ %610, %548 ], [ %1320, %1295 ]
  %1352 = phi float [ %608, %548 ], [ %1319, %1295 ]
  %1353 = phi float [ %606, %548 ], [ %1318, %1295 ]
  %1354 = phi float [ %604, %548 ], [ %1317, %1295 ]
  %1355 = phi float [ 0.000000e+00, %548 ], [ %1326, %1295 ]
  %1356 = phi i32 [ 1, %548 ], [ %1018, %1295 ]
  %1357 = phi i32 [ -1, %548 ], [ %534, %1295 ]
  %1358 = icmp ne i32 %1356, 0
  %1359 = select i1 %1358, float %1355, float 3.125000e-02
  br label %1433

; <label>:1360                                    ; preds = %206
  %1361 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 48, i32 undef)  ; BufferLoad(srv,index,wot)
  %1362 = extractvalue %dx.types.ResRet.i32 %1361, 0
  %1363 = extractvalue %dx.types.ResRet.i32 %1361, 1
  %1364 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 32, i32 undef)  ; BufferLoad(srv,index,wot)
  %1365 = extractvalue %dx.types.ResRet.i32 %1364, 0
  %1366 = extractvalue %dx.types.ResRet.i32 %1364, 1
  %1367 = extractvalue %dx.types.ResRet.i32 %1364, 2
  %1368 = extractvalue %dx.types.ResRet.i32 %1364, 3
  %1369 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %1370 = extractvalue %dx.types.ResRet.i32 %1369, 0
  %1371 = extractvalue %dx.types.ResRet.i32 %1369, 1
  %1372 = extractvalue %dx.types.ResRet.i32 %1369, 2
  %1373 = extractvalue %dx.types.ResRet.i32 %1369, 3
  %1374 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %1375 = extractvalue %dx.types.ResRet.i32 %1374, 0
  %1376 = extractvalue %dx.types.ResRet.i32 %1374, 1
  %1377 = extractvalue %dx.types.ResRet.i32 %1374, 2
  %1378 = extractvalue %dx.types.ResRet.i32 %1374, 3
  %1379 = and i32 %1375, 65535
  %1380 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1379)  ; LegacyF16ToF32(value)
  %1381 = lshr i32 %1375, 16
  %1382 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1381)  ; LegacyF16ToF32(value)
  %1383 = and i32 %1376, 65535
  %1384 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1383)  ; LegacyF16ToF32(value)
  %1385 = lshr i32 %1376, 16
  %1386 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1385)  ; LegacyF16ToF32(value)
  %1387 = and i32 %1377, 65535
  %1388 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1387)  ; LegacyF16ToF32(value)
  %1389 = lshr i32 %1377, 16
  %1390 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1389)  ; LegacyF16ToF32(value)
  %1391 = and i32 %1378, 65535
  %1392 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1391)  ; LegacyF16ToF32(value)
  %1393 = lshr i32 %1378, 16
  %1394 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1393)  ; LegacyF16ToF32(value)
  %1395 = and i32 %1370, 65535
  %1396 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1395)  ; LegacyF16ToF32(value)
  %1397 = lshr i32 %1370, 16
  %1398 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1397)  ; LegacyF16ToF32(value)
  %1399 = and i32 %1371, 65535
  %1400 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1399)  ; LegacyF16ToF32(value)
  %1401 = lshr i32 %1371, 16
  %1402 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1401)  ; LegacyF16ToF32(value)
  %1403 = and i32 %1372, 65535
  %1404 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1403)  ; LegacyF16ToF32(value)
  %1405 = lshr i32 %1372, 16
  %1406 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1405)  ; LegacyF16ToF32(value)
  %1407 = and i32 %1373, 65535
  %1408 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1407)  ; LegacyF16ToF32(value)
  %1409 = lshr i32 %1373, 16
  %1410 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1409)  ; LegacyF16ToF32(value)
  %1411 = and i32 %1365, 65535
  %1412 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1411)  ; LegacyF16ToF32(value)
  %1413 = lshr i32 %1365, 16
  %1414 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1413)  ; LegacyF16ToF32(value)
  %1415 = and i32 %1366, 65535
  %1416 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1415)  ; LegacyF16ToF32(value)
  %1417 = lshr i32 %1366, 16
  %1418 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1417)  ; LegacyF16ToF32(value)
  %1419 = and i32 %1367, 65535
  %1420 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1419)  ; LegacyF16ToF32(value)
  %1421 = lshr i32 %1367, 16
  %1422 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1421)  ; LegacyF16ToF32(value)
  %1423 = and i32 %1368, 65535
  %1424 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1423)  ; LegacyF16ToF32(value)
  %1425 = lshr i32 %1368, 16
  %1426 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1425)  ; LegacyF16ToF32(value)
  %1427 = and i32 %1362, 65535
  %1428 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1427)  ; LegacyF16ToF32(value)
  %1429 = lshr i32 %1362, 16
  %1430 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1429)  ; LegacyF16ToF32(value)
  %1431 = and i32 %1363, 65535
  %1432 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1431)  ; LegacyF16ToF32(value)
  br label %1433

; <label>:1433                                    ; preds = %1360, %1327
  %1434 = phi float [ %1432, %1360 ], [ %1346, %1327 ]
  %1435 = phi float [ %1430, %1360 ], [ %1347, %1327 ]
  %1436 = phi float [ %1428, %1360 ], [ %1348, %1327 ]
  %1437 = phi float [ %1426, %1360 ], [ %1349, %1327 ]
  %1438 = phi float [ %1424, %1360 ], [ %1350, %1327 ]
  %1439 = phi float [ %1422, %1360 ], [ %1351, %1327 ]
  %1440 = phi float [ %1420, %1360 ], [ %1352, %1327 ]
  %1441 = phi float [ %1418, %1360 ], [ %1353, %1327 ]
  %1442 = phi float [ %1416, %1360 ], [ %1354, %1327 ]
  %1443 = phi float [ %1414, %1360 ], [ %1337, %1327 ]
  %1444 = phi float [ %1412, %1360 ], [ %1338, %1327 ]
  %1445 = phi float [ %1410, %1360 ], [ %1339, %1327 ]
  %1446 = phi float [ %1408, %1360 ], [ %1340, %1327 ]
  %1447 = phi float [ %1406, %1360 ], [ %1341, %1327 ]
  %1448 = phi float [ %1404, %1360 ], [ %1342, %1327 ]
  %1449 = phi float [ %1402, %1360 ], [ %1343, %1327 ]
  %1450 = phi float [ %1400, %1360 ], [ %1344, %1327 ]
  %1451 = phi float [ %1398, %1360 ], [ %1345, %1327 ]
  %1452 = phi float [ %1396, %1360 ], [ %1328, %1327 ]
  %1453 = phi float [ %1394, %1360 ], [ %1329, %1327 ]
  %1454 = phi float [ %1392, %1360 ], [ %1330, %1327 ]
  %1455 = phi float [ %1390, %1360 ], [ %1331, %1327 ]
  %1456 = phi float [ %1388, %1360 ], [ %1332, %1327 ]
  %1457 = phi float [ %1386, %1360 ], [ %1333, %1327 ]
  %1458 = phi float [ %1384, %1360 ], [ %1334, %1327 ]
  %1459 = phi float [ %1382, %1360 ], [ %1335, %1327 ]
  %1460 = phi float [ %1380, %1360 ], [ %1336, %1327 ]
  %1461 = phi float [ 3.125000e-02, %1360 ], [ %1359, %1327 ]
  %1462 = phi i32 [ -1, %1360 ], [ %1357, %1327 ]
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %183, i32 undef, i32 %1462, i32 %1462, i32 %1462, i32 %1462, i8 15)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %1463 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 396)  ; CBufferLoadLegacy(handle,regIndex)
  %1464 = extractvalue %dx.types.CBufRet.f32 %1463, 2
  %1465 = fmul fast float %1464, %1464
  %1466 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %1467 = extractvalue %dx.types.CBufRet.f32 %1466, 0
  %1468 = extractvalue %dx.types.CBufRet.f32 %1466, 1
  %1469 = extractvalue %dx.types.CBufRet.f32 %1466, 2
  %1470 = fmul fast float %1460, 0x3FD20DD760000000
  %1471 = fmul fast float %1469, %1458
  %1472 = fmul fast float %1469, %1469
  %1473 = fmul fast float %1472, 0x3FEE471020000000
  %1474 = fadd fast float %1473, 0xBFD42F6020000000
  %1475 = fmul fast float %1474, %1454
  %1476 = fmul fast float %1467, %1457
  %1477 = fmul fast float %1468, %1459
  %1478 = fmul fast float %1469, 0x3FF17B1420000000
  %1479 = fmul fast float %1465, %1453
  %1480 = fmul fast float %1479, %1467
  %1481 = fmul fast float %1480, %1478
  %1482 = fmul fast float %1465, %1455
  %1483 = fmul fast float %1482, %1468
  %1484 = fmul fast float %1483, %1478
  %1485 = fmul fast float %1467, %1467
  %1486 = fmul fast float %1468, %1468
  %1487 = fsub fast float %1485, %1486
  %1488 = fmul fast float %1452, 0x3FE17B1420000000
  %1489 = fmul fast float %1488, %1487
  %1490 = fmul fast float %1456, 0x3FF17B1420000000
  %1491 = fmul fast float %1490, %1468
  %1492 = fmul fast float %1491, %1467
  %1493 = fadd fast float %1489, %1492
  %1494 = fadd fast float %1493, %1475
  %1495 = fmul fast float %1494, %1465
  %1496 = fsub fast float %1477, %1471
  %1497 = fadd fast float %1496, %1476
  %1498 = fmul fast float %1497, 0x3FDF454380000000
  %1499 = fmul fast float %1498, %1464
  %1500 = fsub fast float %1470, %1481
  %1501 = fsub fast float %1500, %1484
  %1502 = fadd fast float %1501, %1495
  %1503 = fadd fast float %1502, %1499
  %1504 = fmul fast float %1451, 0x3FD20DD760000000
  %1505 = fmul fast float %1469, %1449
  %1506 = fmul fast float %1474, %1445
  %1507 = fmul fast float %1467, %1448
  %1508 = fmul fast float %1468, %1450
  %1509 = fmul fast float %1465, %1444
  %1510 = fmul fast float %1509, %1467
  %1511 = fmul fast float %1510, %1478
  %1512 = fmul fast float %1465, %1446
  %1513 = fmul fast float %1512, %1468
  %1514 = fmul fast float %1513, %1478
  %1515 = fmul fast float %1443, 0x3FE17B1420000000
  %1516 = fmul fast float %1515, %1487
  %1517 = fmul fast float %1447, 0x3FF17B1420000000
  %1518 = fmul fast float %1517, %1468
  %1519 = fmul fast float %1518, %1467
  %1520 = fadd fast float %1516, %1519
  %1521 = fadd fast float %1520, %1506
  %1522 = fmul fast float %1521, %1465
  %1523 = fsub fast float %1508, %1505
  %1524 = fadd fast float %1523, %1507
  %1525 = fmul fast float %1524, 0x3FDF454380000000
  %1526 = fmul fast float %1525, %1464
  %1527 = fsub fast float %1504, %1511
  %1528 = fsub fast float %1527, %1514
  %1529 = fadd fast float %1528, %1522
  %1530 = fadd fast float %1529, %1526
  %1531 = fmul fast float %1442, 0x3FD20DD760000000
  %1532 = fmul fast float %1469, %1440
  %1533 = fmul fast float %1474, %1436
  %1534 = fmul fast float %1467, %1439
  %1535 = fmul fast float %1468, %1441
  %1536 = fmul fast float %1465, %1435
  %1537 = fmul fast float %1536, %1467
  %1538 = fmul fast float %1537, %1478
  %1539 = fmul fast float %1465, %1437
  %1540 = fmul fast float %1539, %1468
  %1541 = fmul fast float %1540, %1478
  %1542 = fmul fast float %1434, 0x3FE17B1420000000
  %1543 = fmul fast float %1542, %1487
  %1544 = fmul fast float %1438, 0x3FF17B1420000000
  %1545 = fmul fast float %1544, %1468
  %1546 = fmul fast float %1545, %1467
  %1547 = fadd fast float %1543, %1546
  %1548 = fadd fast float %1547, %1533
  %1549 = fmul fast float %1548, %1465
  %1550 = fsub fast float %1535, %1532
  %1551 = fadd fast float %1550, %1534
  %1552 = fmul fast float %1551, 0x3FDF454380000000
  %1553 = fmul fast float %1552, %1464
  %1554 = fsub fast float %1531, %1538
  %1555 = fsub fast float %1554, %1541
  %1556 = fadd fast float %1555, %1549
  %1557 = fadd fast float %1556, %1553
  %1558 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1559 = extractvalue %dx.types.CBufRet.f32 %1558, 3
  %1560 = extractvalue %dx.types.CBufRet.f32 %1558, 0
  %1561 = fmul fast float %1560, %1559
  %1562 = fmul fast float %1561, %1503
  %1563 = fmul fast float %1561, %1530
  %1564 = fmul fast float %1561, %1557
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %3, i32 %184, i32 undef, float %1562, float %1563, float %1564, float %1562, i8 15)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %2, i32 %183, i32 undef, float %1461, float %1461, float %1461, float %1461, i8 15)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %1565

; <label>:1565                                    ; preds = %1433, %64
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @dx.op.threadId.i32(i32, i32) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32) #1

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32, %dx.types.Handle, i32, i32) #1

; Function Attrs: nounwind
declare void @dx.op.bufferStore.i32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i8) #2

; Function Attrs: nounwind readnone
declare float @dx.op.binary.f32(i32, float, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.unary.f32(i32, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.dot2.f32(i32, float, float, float, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.dot3.f32(i32, float, float, float, float, float, float) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.unaryBits.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare float @dx.op.legacyF16ToF32(i32, i32) #0

; Function Attrs: nounwind
declare void @dx.op.bufferStore.f32(i32, %dx.types.Handle, i32, i32, float, float, float, float, i8) #2

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32, %dx.types.Handle, i32) #1

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32, %dx.types.Handle, i32) #1

; Function Attrs: nounwind readonly
declare %dx.types.Handle @dx.op.createHandle(i32, i8, i32, i32, i1) #1

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
!dx.entryPoints = !{!31}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !23, !27, null}
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15, !17, !18, !19, !21}
!6 = !{i32 0, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 0, i32 1, i32 11, i32 0, null}
!7 = !{i32 1, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 1, i32 1, i32 11, i32 0, null}
!8 = !{i32 2, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 2, i32 1, i32 11, i32 0, null}
!9 = !{i32 3, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 3, i32 1, i32 11, i32 0, null}
!10 = !{i32 4, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 8, i32 1, i32 11, i32 0, null}
!11 = !{i32 5, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 4, i32 1, i32 11, i32 0, null}
!12 = !{i32 6, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 5, i32 1, i32 11, i32 0, null}
!13 = !{i32 7, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 6, i32 1, i32 11, i32 0, null}
!14 = !{i32 8, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 7, i32 1, i32 11, i32 0, null}
!15 = !{i32 9, %"class.Texture2DArray<float>"* undef, !"", i32 0, i32 50, i32 1, i32 7, i32 0, !16}
!16 = !{i32 0, i32 9}
!17 = !{i32 10, %"class.Texture2D<float>"* undef, !"", i32 0, i32 18, i32 1, i32 2, i32 0, !16}
!18 = !{i32 11, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 15, i32 1, i32 11, i32 0, null}
!19 = !{i32 12, %"class.StructuredBuffer<GfxGpuLightGridParams>"* undef, !"", i32 0, i32 27, i32 1, i32 12, i32 0, !20}
!20 = !{i32 1, i32 112}
!21 = !{i32 13, %"class.Buffer<unsigned int>"* undef, !"", i32 0, i32 26, i32 1, i32 10, i32 0, !22}
!22 = !{i32 0, i32 5}
!23 = !{!24, !25, !26}
!24 = !{i32 0, %"class.RWBuffer<vector<float, 3> >"* undef, !"", i32 0, i32 3, i32 1, i32 10, i1 false, i1 false, i1 false, !16}
!25 = !{i32 1, %"class.RWBuffer<float>"* undef, !"", i32 0, i32 4, i32 1, i32 10, i1 false, i1 false, i1 false, !16}
!26 = !{i32 2, %"class.RWBuffer<unsigned int>"* undef, !"", i32 0, i32 5, i32 1, i32 10, i1 false, i1 false, i1 false, !22}
!27 = !{!28, !29, !30}
!28 = !{i32 0, %VolumetricLightGridConstants* undef, !"", i32 0, i32 1, i32 1, i32 32, null}
!29 = !{i32 1, %GfxLGBoundConsts* undef, !"", i32 0, i32 4, i32 1, i32 16, null}
!30 = !{i32 2, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!31 = !{void ()* @cs_vol_sh_sample_multi_lightgrid_aniso, !"cs_vol_sh_sample_multi_lightgrid_aniso", null, !4, !32}
!32 = !{i32 0, i64 272, i32 4, !33}
!33 = !{i32 4, i32 4, i32 4}
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
!45 = distinct !{!45, !"dx.controlflow.hints", i32 2}
!46 = distinct !{!46, !"dx.controlflow.hints", i32 2}
!47 = distinct !{!47, !"dx.controlflow.hints", i32 2}
!48 = distinct !{!48, !49}
!49 = !{!"llvm.loop.unroll.disable"}
!50 = distinct !{!50, !"dx.controlflow.hints", i32 2}
!51 = distinct !{!51, !"dx.controlflow.hints", i32 2}
!52 = distinct !{!52, !"dx.controlflow.hints", i32 2}
!53 = !{!54, !54, i64 0}
!54 = !{!"int", !55, i64 0}
!55 = !{!"omnipotent char", !56, i64 0}
!56 = !{!"Simple C/C++ TBAA"}
!57 = !{!58, !60, !61, !62, !63, !64, !65, !67, !68, !69, !70}
!58 = distinct !{!58, !59, !"\01?LookupRawLightGrid@@YA_NV?$vector@M$02@@IIIIUGfxSHProbeFallback@@_NUSH3Vec@@33AIAM4AIAI@Z: %probeR"}
!59 = distinct !{!59, !"\01?LookupRawLightGrid@@YA_NV?$vector@M$02@@IIIIUGfxSHProbeFallback@@_NUSH3Vec@@33AIAM4AIAI@Z"}
!60 = distinct !{!60, !59, !"\01?LookupRawLightGrid@@YA_NV?$vector@M$02@@IIIIUGfxSHProbeFallback@@_NUSH3Vec@@33AIAM4AIAI@Z: %probeG"}
!61 = distinct !{!61, !59, !"\01?LookupRawLightGrid@@YA_NV?$vector@M$02@@IIIIUGfxSHProbeFallback@@_NUSH3Vec@@33AIAM4AIAI@Z: %probeB"}
!62 = distinct !{!62, !59, !"\01?LookupRawLightGrid@@YA_NV?$vector@M$02@@IIIIUGfxSHProbeFallback@@_NUSH3Vec@@33AIAM4AIAI@Z: %probeA"}
!63 = distinct !{!63, !59, !"\01?LookupRawLightGrid@@YA_NV?$vector@M$02@@IIIIUGfxSHProbeFallback@@_NUSH3Vec@@33AIAM4AIAI@Z: %primaryVisibility"}
!64 = distinct !{!64, !59, !"\01?LookupRawLightGrid@@YA_NV?$vector@M$02@@IIIIUGfxSHProbeFallback@@_NUSH3Vec@@33AIAM4AIAI@Z: %usedTet"}
!65 = distinct !{!65, !66, !"\01?LookupLighting@@YA_NV?$vector@M$02@@USH3Vec@@11AIAMIAIAI_N@Z: %redSH"}
!66 = distinct !{!66, !"\01?LookupLighting@@YA_NV?$vector@M$02@@USH3Vec@@11AIAMIAIAI_N@Z"}
!67 = distinct !{!67, !66, !"\01?LookupLighting@@YA_NV?$vector@M$02@@USH3Vec@@11AIAMIAIAI_N@Z: %greenSH"}
!68 = distinct !{!68, !66, !"\01?LookupLighting@@YA_NV?$vector@M$02@@USH3Vec@@11AIAMIAIAI_N@Z: %blueSH"}
!69 = distinct !{!69, !66, !"\01?LookupLighting@@YA_NV?$vector@M$02@@USH3Vec@@11AIAMIAIAI_N@Z: %probeA"}
!70 = distinct !{!70, !66, !"\01?LookupLighting@@YA_NV?$vector@M$02@@USH3Vec@@11AIAMIAIAI_N@Z: %usedTet"}
!71 = !{!72, !72, i64 0}
!72 = !{!"float", !55, i64 0}
!73 = distinct !{!73, !"dx.controlflow.hints", i32 2}
!74 = distinct !{!74, !"dx.controlflow.hints", i32 2}

