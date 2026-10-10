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
; shader hash: 51d7c6dab917c250e917f6eac186ca95
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

define void @cs_vol_sh_sample_multi_lightgrid_isotropic() {
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
  br label %1061

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
  br i1 %207, label %208, label %1030, !dx.controlflow.hints !39

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
  br i1 %547, label %548, label %561, !dx.controlflow.hints !50

; <label>:548                                     ; preds = %533
  %549 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 32, i32 undef)  ; BufferLoad(srv,index,wot)
  %550 = extractvalue %dx.types.ResRet.i32 %549, 1
  %551 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %552 = extractvalue %dx.types.ResRet.i32 %551, 0
  %553 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %554 = extractvalue %dx.types.ResRet.i32 %553, 0
  %555 = and i32 %554, 65535
  %556 = call float @dx.op.legacyF16ToF32(i32 131, i32 %555)  ; LegacyF16ToF32(value)
  %557 = lshr i32 %552, 16
  %558 = call float @dx.op.legacyF16ToF32(i32 131, i32 %557)  ; LegacyF16ToF32(value)
  %559 = and i32 %550, 65535
  %560 = call float @dx.op.legacyF16ToF32(i32 131, i32 %559)  ; LegacyF16ToF32(value)
  br label %1021

; <label>:561                                     ; preds = %533
  %562 = shl nsw i32 %534, 4
  %563 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %562, i32 undef)  ; BufferLoad(srv,index,wot)
  %564 = extractvalue %dx.types.ResRet.i32 %563, 0
  %565 = extractvalue %dx.types.ResRet.i32 %563, 1
  %566 = extractvalue %dx.types.ResRet.i32 %563, 2
  %567 = extractvalue %dx.types.ResRet.i32 %563, 3
  %568 = getelementptr inbounds [4 x i32], [4 x i32]* %26, i32 0, i32 0
  store i32 %564, i32* %568, align 4
  %569 = getelementptr inbounds [4 x i32], [4 x i32]* %26, i32 0, i32 1
  store i32 %565, i32* %569, align 4
  %570 = getelementptr inbounds [4 x i32], [4 x i32]* %26, i32 0, i32 2
  store i32 %566, i32* %570, align 4
  %571 = getelementptr inbounds [4 x i32], [4 x i32]* %26, i32 0, i32 3
  store i32 %567, i32* %571, align 4
  %572 = getelementptr inbounds [4 x float], [4 x float]* %27, i32 0, i32 0
  store float 0.000000e+00, float* %572, align 4
  %573 = getelementptr inbounds [4 x float], [4 x float]* %27, i32 0, i32 1
  store float 0.000000e+00, float* %573, align 4
  %574 = getelementptr inbounds [4 x float], [4 x float]* %27, i32 0, i32 2
  store float 0.000000e+00, float* %574, align 4
  %575 = getelementptr inbounds [4 x float], [4 x float]* %27, i32 0, i32 3
  store float 0.000000e+00, float* %575, align 4
  %576 = icmp slt i32 %564, 0
  br i1 %576, label %577, label %667, !dx.controlflow.hints !51

; <label>:577                                     ; preds = %561
  %578 = fsub fast float 1.000000e+00, %543
  %579 = fdiv fast float 1.000000e+00, %578
  %580 = shl nsw i32 %534, 6
  %581 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %580, i32 undef)  ; BufferLoad(srv,index,wot)
  %582 = extractvalue %dx.types.ResRet.i32 %581, 0
  %583 = extractvalue %dx.types.ResRet.i32 %581, 1
  %584 = extractvalue %dx.types.ResRet.i32 %581, 2
  %585 = extractvalue %dx.types.ResRet.i32 %581, 3
  %586 = fmul fast float %579, %546
  %587 = fmul fast float %579, %544
  %588 = getelementptr inbounds [4 x i32], [4 x i32]* %24, i32 0, i32 0
  store i32 %582, i32* %588, align 4
  %589 = getelementptr inbounds [4 x i32], [4 x i32]* %24, i32 0, i32 1
  store i32 %583, i32* %589, align 4
  %590 = getelementptr inbounds [4 x i32], [4 x i32]* %24, i32 0, i32 2
  store i32 %584, i32* %590, align 4
  %591 = getelementptr inbounds [4 x i32], [4 x i32]* %24, i32 0, i32 3
  store i32 %585, i32* %591, align 4
  %592 = fmul fast float %587, 4.000000e+00
  %593 = call float @dx.op.unary.f32(i32 27, float %592)  ; Round_ni(value)
  %594 = fmul fast float %586, 4.000000e+00
  %595 = call float @dx.op.unary.f32(i32 27, float %594)  ; Round_ni(value)
  %596 = fsub fast float 1.100000e+01, %593
  %597 = fmul fast float %593, 5.000000e-01
  %598 = fmul fast float %597, %596
  %599 = fadd fast float %595, 5.000000e-01
  %600 = fadd fast float %599, %598
  %601 = fptosi float %600 to i32
  %602 = fptosi float %593 to i32
  %603 = sub nsw i32 5, %602
  %604 = fmul fast float %595, 2.500000e-01
  %605 = fmul fast float %593, 2.500000e-01
  %606 = add nsw i32 %601, 1
  %607 = add nsw i32 %601, %603
  %608 = fsub fast float %586, %604
  %609 = fmul fast float %608, 4.000000e+00
  %610 = fsub fast float %587, %605
  %611 = fmul fast float %610, 4.000000e+00
  %612 = fadd fast float %608, %610
  %613 = fmul fast float %612, 4.000000e+00
  %614 = fcmp fast ogt float %613, 1.000000e+00
  br i1 %614, label %615, label %621, !dx.controlflow.hints !52

; <label>:615                                     ; preds = %577
  %616 = add nsw i32 %607, 1
  %617 = fadd fast float %611, -1.000000e+00
  %618 = fsub fast float -0.000000e+00, %617
  %619 = fadd fast float %609, -1.000000e+00
  %620 = fsub fast float -0.000000e+00, %619
  br label %621

; <label>:621                                     ; preds = %615, %577
  %622 = phi i32 [ %616, %615 ], [ %601, %577 ]
  %623 = phi i32 [ %606, %615 ], [ %607, %577 ]
  %624 = phi i32 [ %607, %615 ], [ %606, %577 ]
  %625 = phi float [ %620, %615 ], [ %611, %577 ]
  %626 = phi float [ %618, %615 ], [ %609, %577 ]
  %627 = fsub fast float 1.000000e+00, %625
  %628 = fsub fast float %627, %626
  %629 = lshr i32 %624, 2
  %630 = getelementptr [4 x i32], [4 x i32]* %24, i32 0, i32 %629
  %631 = load i32, i32* %630, align 4, !tbaa !53, !noalias !57
  %632 = shl i32 %624, 3
  %633 = and i32 %632, 24
  %634 = lshr i32 %631, %633
  %635 = and i32 %634, 255
  %636 = sitofp i32 %635 to float
  %637 = fmul fast float %626, 0x3F70101020000000
  %638 = fmul fast float %637, %636
  %639 = lshr i32 %623, 2
  %640 = getelementptr [4 x i32], [4 x i32]* %24, i32 0, i32 %639
  %641 = load i32, i32* %640, align 4, !tbaa !53, !noalias !57
  %642 = shl i32 %623, 3
  %643 = and i32 %642, 24
  %644 = lshr i32 %641, %643
  %645 = and i32 %644, 255
  %646 = sitofp i32 %645 to float
  %647 = fmul fast float %625, 0x3F70101020000000
  %648 = fmul fast float %647, %646
  %649 = lshr i32 %622, 2
  %650 = getelementptr [4 x i32], [4 x i32]* %24, i32 0, i32 %649
  %651 = load i32, i32* %650, align 4, !tbaa !53, !noalias !57
  %652 = shl i32 %622, 3
  %653 = and i32 %652, 24
  %654 = lshr i32 %651, %653
  %655 = and i32 %654, 255
  %656 = sitofp i32 %655 to float
  %657 = fmul fast float %628, 0x3F70101020000000
  %658 = fmul fast float %657, %656
  %659 = fsub fast float 1.000000e+00, %638
  %660 = fsub fast float %659, %648
  %661 = fsub fast float %660, %658
  %662 = fmul fast float %543, 2.000000e+01
  %663 = fadd fast float %662, 1.000000e+00
  %664 = fmul fast float %661, 2.000000e+01
  %665 = fsub fast float %663, %664
  %666 = call float @dx.op.unary.f32(i32 7, float %665)  ; Saturate(value)
  br label %667

; <label>:667                                     ; preds = %621, %561
  %668 = phi float [ %666, %621 ], [ 1.000000e+00, %561 ]
  store float %668, float* %572, align 4, !tbaa !71, !noalias !57
  %669 = icmp slt i32 %565, 0
  br i1 %669, label %670, label %761, !dx.controlflow.hints !51

; <label>:670                                     ; preds = %667
  %671 = fsub fast float 1.000000e+00, %544
  %672 = fdiv fast float 1.000000e+00, %671
  %673 = shl i32 %534, 6
  %674 = or i32 %673, 16
  %675 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %674, i32 undef)  ; BufferLoad(srv,index,wot)
  %676 = extractvalue %dx.types.ResRet.i32 %675, 0
  %677 = extractvalue %dx.types.ResRet.i32 %675, 1
  %678 = extractvalue %dx.types.ResRet.i32 %675, 2
  %679 = extractvalue %dx.types.ResRet.i32 %675, 3
  %680 = fmul fast float %672, %543
  %681 = fmul fast float %672, %546
  %682 = getelementptr inbounds [4 x i32], [4 x i32]* %24, i32 0, i32 0
  store i32 %676, i32* %682, align 4
  %683 = getelementptr inbounds [4 x i32], [4 x i32]* %24, i32 0, i32 1
  store i32 %677, i32* %683, align 4
  %684 = getelementptr inbounds [4 x i32], [4 x i32]* %24, i32 0, i32 2
  store i32 %678, i32* %684, align 4
  %685 = getelementptr inbounds [4 x i32], [4 x i32]* %24, i32 0, i32 3
  store i32 %679, i32* %685, align 4
  %686 = fmul fast float %681, 4.000000e+00
  %687 = call float @dx.op.unary.f32(i32 27, float %686)  ; Round_ni(value)
  %688 = fmul fast float %680, 4.000000e+00
  %689 = call float @dx.op.unary.f32(i32 27, float %688)  ; Round_ni(value)
  %690 = fsub fast float 1.100000e+01, %687
  %691 = fmul fast float %687, 5.000000e-01
  %692 = fmul fast float %691, %690
  %693 = fadd fast float %689, 5.000000e-01
  %694 = fadd fast float %693, %692
  %695 = fptosi float %694 to i32
  %696 = fptosi float %687 to i32
  %697 = sub nsw i32 5, %696
  %698 = fmul fast float %689, 2.500000e-01
  %699 = fmul fast float %687, 2.500000e-01
  %700 = add nsw i32 %695, 1
  %701 = add nsw i32 %695, %697
  %702 = fsub fast float %680, %698
  %703 = fmul fast float %702, 4.000000e+00
  %704 = fsub fast float %681, %699
  %705 = fmul fast float %704, 4.000000e+00
  %706 = fadd fast float %702, %704
  %707 = fmul fast float %706, 4.000000e+00
  %708 = fcmp fast ogt float %707, 1.000000e+00
  br i1 %708, label %709, label %715, !dx.controlflow.hints !52

; <label>:709                                     ; preds = %670
  %710 = add nsw i32 %701, 1
  %711 = fadd fast float %705, -1.000000e+00
  %712 = fsub fast float -0.000000e+00, %711
  %713 = fadd fast float %703, -1.000000e+00
  %714 = fsub fast float -0.000000e+00, %713
  br label %715

; <label>:715                                     ; preds = %709, %670
  %716 = phi i32 [ %710, %709 ], [ %695, %670 ]
  %717 = phi i32 [ %700, %709 ], [ %701, %670 ]
  %718 = phi i32 [ %701, %709 ], [ %700, %670 ]
  %719 = phi float [ %714, %709 ], [ %705, %670 ]
  %720 = phi float [ %712, %709 ], [ %703, %670 ]
  %721 = fsub fast float 1.000000e+00, %719
  %722 = fsub fast float %721, %720
  %723 = lshr i32 %718, 2
  %724 = getelementptr [4 x i32], [4 x i32]* %24, i32 0, i32 %723
  %725 = load i32, i32* %724, align 4, !tbaa !53, !noalias !57
  %726 = shl i32 %718, 3
  %727 = and i32 %726, 24
  %728 = lshr i32 %725, %727
  %729 = and i32 %728, 255
  %730 = sitofp i32 %729 to float
  %731 = fmul fast float %720, 0x3F70101020000000
  %732 = fmul fast float %731, %730
  %733 = lshr i32 %717, 2
  %734 = getelementptr [4 x i32], [4 x i32]* %24, i32 0, i32 %733
  %735 = load i32, i32* %734, align 4, !tbaa !53, !noalias !57
  %736 = shl i32 %717, 3
  %737 = and i32 %736, 24
  %738 = lshr i32 %735, %737
  %739 = and i32 %738, 255
  %740 = sitofp i32 %739 to float
  %741 = fmul fast float %719, 0x3F70101020000000
  %742 = fmul fast float %741, %740
  %743 = lshr i32 %716, 2
  %744 = getelementptr [4 x i32], [4 x i32]* %24, i32 0, i32 %743
  %745 = load i32, i32* %744, align 4, !tbaa !53, !noalias !57
  %746 = shl i32 %716, 3
  %747 = and i32 %746, 24
  %748 = lshr i32 %745, %747
  %749 = and i32 %748, 255
  %750 = sitofp i32 %749 to float
  %751 = fmul fast float %722, 0x3F70101020000000
  %752 = fmul fast float %751, %750
  %753 = fsub fast float 1.000000e+00, %732
  %754 = fsub fast float %753, %742
  %755 = fsub fast float %754, %752
  %756 = fmul fast float %544, 2.000000e+01
  %757 = fadd fast float %756, 1.000000e+00
  %758 = fmul fast float %755, 2.000000e+01
  %759 = fsub fast float %757, %758
  %760 = call float @dx.op.unary.f32(i32 7, float %759)  ; Saturate(value)
  br label %761

; <label>:761                                     ; preds = %715, %667
  %762 = phi float [ %760, %715 ], [ 1.000000e+00, %667 ]
  store float %762, float* %573, align 4, !tbaa !71, !noalias !57
  %763 = fadd fast float %762, %668
  %764 = icmp slt i32 %566, 0
  br i1 %764, label %765, label %856, !dx.controlflow.hints !51

; <label>:765                                     ; preds = %761
  %766 = fsub fast float 1.000000e+00, %545
  %767 = fdiv fast float 1.000000e+00, %766
  %768 = shl i32 %534, 6
  %769 = or i32 %768, 32
  %770 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %769, i32 undef)  ; BufferLoad(srv,index,wot)
  %771 = extractvalue %dx.types.ResRet.i32 %770, 0
  %772 = extractvalue %dx.types.ResRet.i32 %770, 1
  %773 = extractvalue %dx.types.ResRet.i32 %770, 2
  %774 = extractvalue %dx.types.ResRet.i32 %770, 3
  %775 = fmul fast float %767, %543
  %776 = fmul fast float %767, %544
  %777 = getelementptr inbounds [4 x i32], [4 x i32]* %24, i32 0, i32 0
  store i32 %771, i32* %777, align 4
  %778 = getelementptr inbounds [4 x i32], [4 x i32]* %24, i32 0, i32 1
  store i32 %772, i32* %778, align 4
  %779 = getelementptr inbounds [4 x i32], [4 x i32]* %24, i32 0, i32 2
  store i32 %773, i32* %779, align 4
  %780 = getelementptr inbounds [4 x i32], [4 x i32]* %24, i32 0, i32 3
  store i32 %774, i32* %780, align 4
  %781 = fmul fast float %776, 4.000000e+00
  %782 = call float @dx.op.unary.f32(i32 27, float %781)  ; Round_ni(value)
  %783 = fmul fast float %775, 4.000000e+00
  %784 = call float @dx.op.unary.f32(i32 27, float %783)  ; Round_ni(value)
  %785 = fsub fast float 1.100000e+01, %782
  %786 = fmul fast float %782, 5.000000e-01
  %787 = fmul fast float %786, %785
  %788 = fadd fast float %784, 5.000000e-01
  %789 = fadd fast float %788, %787
  %790 = fptosi float %789 to i32
  %791 = fptosi float %782 to i32
  %792 = sub nsw i32 5, %791
  %793 = fmul fast float %784, 2.500000e-01
  %794 = fmul fast float %782, 2.500000e-01
  %795 = add nsw i32 %790, 1
  %796 = add nsw i32 %790, %792
  %797 = fsub fast float %775, %793
  %798 = fmul fast float %797, 4.000000e+00
  %799 = fsub fast float %776, %794
  %800 = fmul fast float %799, 4.000000e+00
  %801 = fadd fast float %797, %799
  %802 = fmul fast float %801, 4.000000e+00
  %803 = fcmp fast ogt float %802, 1.000000e+00
  br i1 %803, label %804, label %810, !dx.controlflow.hints !52

; <label>:804                                     ; preds = %765
  %805 = add nsw i32 %796, 1
  %806 = fadd fast float %800, -1.000000e+00
  %807 = fsub fast float -0.000000e+00, %806
  %808 = fadd fast float %798, -1.000000e+00
  %809 = fsub fast float -0.000000e+00, %808
  br label %810

; <label>:810                                     ; preds = %804, %765
  %811 = phi i32 [ %805, %804 ], [ %790, %765 ]
  %812 = phi i32 [ %795, %804 ], [ %796, %765 ]
  %813 = phi i32 [ %796, %804 ], [ %795, %765 ]
  %814 = phi float [ %809, %804 ], [ %800, %765 ]
  %815 = phi float [ %807, %804 ], [ %798, %765 ]
  %816 = fsub fast float 1.000000e+00, %814
  %817 = fsub fast float %816, %815
  %818 = lshr i32 %813, 2
  %819 = getelementptr [4 x i32], [4 x i32]* %24, i32 0, i32 %818
  %820 = load i32, i32* %819, align 4, !tbaa !53, !noalias !57
  %821 = shl i32 %813, 3
  %822 = and i32 %821, 24
  %823 = lshr i32 %820, %822
  %824 = and i32 %823, 255
  %825 = sitofp i32 %824 to float
  %826 = fmul fast float %815, 0x3F70101020000000
  %827 = fmul fast float %826, %825
  %828 = lshr i32 %812, 2
  %829 = getelementptr [4 x i32], [4 x i32]* %24, i32 0, i32 %828
  %830 = load i32, i32* %829, align 4, !tbaa !53, !noalias !57
  %831 = shl i32 %812, 3
  %832 = and i32 %831, 24
  %833 = lshr i32 %830, %832
  %834 = and i32 %833, 255
  %835 = sitofp i32 %834 to float
  %836 = fmul fast float %814, 0x3F70101020000000
  %837 = fmul fast float %836, %835
  %838 = lshr i32 %811, 2
  %839 = getelementptr [4 x i32], [4 x i32]* %24, i32 0, i32 %838
  %840 = load i32, i32* %839, align 4, !tbaa !53, !noalias !57
  %841 = shl i32 %811, 3
  %842 = and i32 %841, 24
  %843 = lshr i32 %840, %842
  %844 = and i32 %843, 255
  %845 = sitofp i32 %844 to float
  %846 = fmul fast float %817, 0x3F70101020000000
  %847 = fmul fast float %846, %845
  %848 = fsub fast float 1.000000e+00, %827
  %849 = fsub fast float %848, %837
  %850 = fsub fast float %849, %847
  %851 = fmul fast float %545, 2.000000e+01
  %852 = fadd fast float %851, 1.000000e+00
  %853 = fmul fast float %850, 2.000000e+01
  %854 = fsub fast float %852, %853
  %855 = call float @dx.op.unary.f32(i32 7, float %854)  ; Saturate(value)
  br label %856

; <label>:856                                     ; preds = %810, %761
  %857 = phi float [ %855, %810 ], [ 1.000000e+00, %761 ]
  store float %857, float* %574, align 4, !tbaa !71, !noalias !57
  %858 = fadd fast float %763, %857
  %859 = icmp slt i32 %567, 0
  br i1 %859, label %860, label %951, !dx.controlflow.hints !51

; <label>:860                                     ; preds = %856
  %861 = fsub fast float 1.000000e+00, %546
  %862 = fdiv fast float 1.000000e+00, %861
  %863 = shl i32 %534, 6
  %864 = or i32 %863, 48
  %865 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %864, i32 undef)  ; BufferLoad(srv,index,wot)
  %866 = extractvalue %dx.types.ResRet.i32 %865, 0
  %867 = extractvalue %dx.types.ResRet.i32 %865, 1
  %868 = extractvalue %dx.types.ResRet.i32 %865, 2
  %869 = extractvalue %dx.types.ResRet.i32 %865, 3
  %870 = fmul fast float %862, %543
  %871 = fmul fast float %862, %544
  %872 = getelementptr inbounds [4 x i32], [4 x i32]* %24, i32 0, i32 0
  store i32 %866, i32* %872, align 4
  %873 = getelementptr inbounds [4 x i32], [4 x i32]* %24, i32 0, i32 1
  store i32 %867, i32* %873, align 4
  %874 = getelementptr inbounds [4 x i32], [4 x i32]* %24, i32 0, i32 2
  store i32 %868, i32* %874, align 4
  %875 = getelementptr inbounds [4 x i32], [4 x i32]* %24, i32 0, i32 3
  store i32 %869, i32* %875, align 4
  %876 = fmul fast float %871, 4.000000e+00
  %877 = call float @dx.op.unary.f32(i32 27, float %876)  ; Round_ni(value)
  %878 = fmul fast float %870, 4.000000e+00
  %879 = call float @dx.op.unary.f32(i32 27, float %878)  ; Round_ni(value)
  %880 = fsub fast float 1.100000e+01, %877
  %881 = fmul fast float %877, 5.000000e-01
  %882 = fmul fast float %881, %880
  %883 = fadd fast float %879, 5.000000e-01
  %884 = fadd fast float %883, %882
  %885 = fptosi float %884 to i32
  %886 = fptosi float %877 to i32
  %887 = sub nsw i32 5, %886
  %888 = fmul fast float %879, 2.500000e-01
  %889 = fmul fast float %877, 2.500000e-01
  %890 = add nsw i32 %885, 1
  %891 = add nsw i32 %885, %887
  %892 = fsub fast float %870, %888
  %893 = fmul fast float %892, 4.000000e+00
  %894 = fsub fast float %871, %889
  %895 = fmul fast float %894, 4.000000e+00
  %896 = fadd fast float %892, %894
  %897 = fmul fast float %896, 4.000000e+00
  %898 = fcmp fast ogt float %897, 1.000000e+00
  br i1 %898, label %899, label %905, !dx.controlflow.hints !52

; <label>:899                                     ; preds = %860
  %900 = add nsw i32 %891, 1
  %901 = fadd fast float %895, -1.000000e+00
  %902 = fsub fast float -0.000000e+00, %901
  %903 = fadd fast float %893, -1.000000e+00
  %904 = fsub fast float -0.000000e+00, %903
  br label %905

; <label>:905                                     ; preds = %899, %860
  %906 = phi i32 [ %900, %899 ], [ %885, %860 ]
  %907 = phi i32 [ %890, %899 ], [ %891, %860 ]
  %908 = phi i32 [ %891, %899 ], [ %890, %860 ]
  %909 = phi float [ %904, %899 ], [ %895, %860 ]
  %910 = phi float [ %902, %899 ], [ %893, %860 ]
  %911 = fsub fast float 1.000000e+00, %909
  %912 = fsub fast float %911, %910
  %913 = lshr i32 %908, 2
  %914 = getelementptr [4 x i32], [4 x i32]* %24, i32 0, i32 %913
  %915 = load i32, i32* %914, align 4, !tbaa !53, !noalias !57
  %916 = shl i32 %908, 3
  %917 = and i32 %916, 24
  %918 = lshr i32 %915, %917
  %919 = and i32 %918, 255
  %920 = sitofp i32 %919 to float
  %921 = fmul fast float %910, 0x3F70101020000000
  %922 = fmul fast float %921, %920
  %923 = lshr i32 %907, 2
  %924 = getelementptr [4 x i32], [4 x i32]* %24, i32 0, i32 %923
  %925 = load i32, i32* %924, align 4, !tbaa !53, !noalias !57
  %926 = shl i32 %907, 3
  %927 = and i32 %926, 24
  %928 = lshr i32 %925, %927
  %929 = and i32 %928, 255
  %930 = sitofp i32 %929 to float
  %931 = fmul fast float %909, 0x3F70101020000000
  %932 = fmul fast float %931, %930
  %933 = lshr i32 %906, 2
  %934 = getelementptr [4 x i32], [4 x i32]* %24, i32 0, i32 %933
  %935 = load i32, i32* %934, align 4, !tbaa !53, !noalias !57
  %936 = shl i32 %906, 3
  %937 = and i32 %936, 24
  %938 = lshr i32 %935, %937
  %939 = and i32 %938, 255
  %940 = sitofp i32 %939 to float
  %941 = fmul fast float %912, 0x3F70101020000000
  %942 = fmul fast float %941, %940
  %943 = fsub fast float 1.000000e+00, %922
  %944 = fsub fast float %943, %932
  %945 = fsub fast float %944, %942
  %946 = fmul fast float %546, 2.000000e+01
  %947 = fadd fast float %946, 1.000000e+00
  %948 = fmul fast float %945, 2.000000e+01
  %949 = fsub fast float %947, %948
  %950 = call float @dx.op.unary.f32(i32 7, float %949)  ; Saturate(value)
  br label %951

; <label>:951                                     ; preds = %905, %856
  %952 = phi float [ %950, %905 ], [ 1.000000e+00, %856 ]
  store float %952, float* %575, align 4, !tbaa !71, !noalias !57
  %953 = fadd fast float %858, %952
  %954 = fcmp fast oeq float %953, 0.000000e+00
  br i1 %954, label %955, label %956, !dx.controlflow.hints !73

; <label>:955                                     ; preds = %951
  store float 2.500000e-01, float* %572, align 4
  store float 2.500000e-01, float* %573, align 4
  store float 2.500000e-01, float* %574, align 4
  store float 2.500000e-01, float* %575, align 4
  br label %956

; <label>:956                                     ; preds = %955, %951
  %957 = phi float [ 2.500000e-01, %955 ], [ %668, %951 ]
  %958 = phi i32 [ 0, %955 ], [ 1, %951 ]
  br label %959

; <label>:959                                     ; preds = %1010, %956
  %960 = phi float [ %957, %956 ], [ %1012, %1010 ]
  %961 = phi float [ 0.000000e+00, %956 ], [ %1003, %1010 ]
  %962 = phi float [ 0.000000e+00, %956 ], [ %1004, %1010 ]
  %963 = phi float [ 0.000000e+00, %956 ], [ %1005, %1010 ]
  %964 = phi float [ 0.000000e+00, %956 ], [ %1006, %1010 ]
  %965 = phi float [ 0.000000e+00, %956 ], [ %1007, %1010 ]
  %966 = phi i32 [ 0, %956 ], [ %1008, %1010 ]
  %967 = fcmp fast ogt float %960, 0.000000e+00
  br i1 %967, label %968, label %1002, !dx.controlflow.hints !74

; <label>:968                                     ; preds = %959
  %969 = getelementptr [4 x float], [4 x float]* %25, i32 0, i32 %966
  %970 = load float, float* %969, align 4, !tbaa !71, !noalias !57
  %971 = getelementptr [4 x i32], [4 x i32]* %26, i32 0, i32 %966
  %972 = load i32, i32* %971, align 4, !tbaa !53, !noalias !57
  %973 = fmul fast float %970, %960
  %974 = shl i32 %972, 5
  %975 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %974, i32 undef)  ; BufferLoad(srv,index,wot)
  %976 = extractvalue %dx.types.ResRet.i32 %975, 0
  %977 = or i32 %974, 16
  %978 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %977, i32 undef)  ; BufferLoad(srv,index,wot)
  %979 = extractvalue %dx.types.ResRet.i32 %978, 3
  %980 = shl i32 %976, 4
  %981 = and i32 %980, 32752
  %982 = call float @dx.op.legacyF16ToF32(i32 131, i32 %981)  ; LegacyF16ToF32(value)
  %983 = lshr i32 %976, 7
  %984 = and i32 %983, 32752
  %985 = call float @dx.op.legacyF16ToF32(i32 131, i32 %984)  ; LegacyF16ToF32(value)
  %986 = lshr i32 %976, 22
  %987 = shl nuw nsw i32 %986, 5
  %988 = call float @dx.op.legacyF16ToF32(i32 131, i32 %987)  ; LegacyF16ToF32(value)
  %989 = lshr i32 %979, 8
  %990 = and i32 %989, 255
  %991 = uitofp i32 %990 to float
  %992 = fmul fast float %982, %973
  %993 = fadd fast float %992, %961
  %994 = fmul fast float %985, %973
  %995 = fadd fast float %994, %962
  %996 = fmul fast float %988, %973
  %997 = fadd fast float %996, %963
  %998 = fmul fast float %973, 0x3F70101020000000
  %999 = fmul fast float %998, %991
  %1000 = fadd fast float %999, %964
  %1001 = fadd fast float %973, %965
  br label %1002

; <label>:1002                                    ; preds = %968, %959
  %1003 = phi float [ %993, %968 ], [ %961, %959 ]
  %1004 = phi float [ %995, %968 ], [ %962, %959 ]
  %1005 = phi float [ %997, %968 ], [ %963, %959 ]
  %1006 = phi float [ %1000, %968 ], [ %964, %959 ]
  %1007 = phi float [ %1001, %968 ], [ %965, %959 ]
  %1008 = add nuw nsw i32 %966, 1
  %1009 = icmp eq i32 %1008, 4
  br i1 %1009, label %1013, label %1010

; <label>:1010                                    ; preds = %1002
  %1011 = getelementptr [4 x float], [4 x float]* %27, i32 0, i32 %1008
  %1012 = load float, float* %1011, align 4, !tbaa !71, !noalias !57
  br label %959

; <label>:1013                                    ; preds = %1002
  %1014 = fcmp fast ogt float %1007, 0.000000e+00
  %1015 = fdiv fast float 1.000000e+00, %1007
  %1016 = select i1 %1014, float %1015, float 1.000000e+00
  %1017 = fmul fast float %1016, %1003
  %1018 = fmul fast float %1016, %1004
  %1019 = fmul fast float %1016, %1005
  %1020 = fmul fast float %1016, %1006
  br label %1021

; <label>:1021                                    ; preds = %1013, %548
  %1022 = phi float [ %556, %548 ], [ %1017, %1013 ]
  %1023 = phi float [ %558, %548 ], [ %1018, %1013 ]
  %1024 = phi float [ %560, %548 ], [ %1019, %1013 ]
  %1025 = phi float [ 0.000000e+00, %548 ], [ %1020, %1013 ]
  %1026 = phi i32 [ 1, %548 ], [ %958, %1013 ]
  %1027 = phi i32 [ -1, %548 ], [ %534, %1013 ]
  %1028 = icmp ne i32 %1026, 0
  %1029 = select i1 %1028, float %1025, float 3.125000e-02
  br label %1043

; <label>:1030                                    ; preds = %206
  %1031 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 32, i32 undef)  ; BufferLoad(srv,index,wot)
  %1032 = extractvalue %dx.types.ResRet.i32 %1031, 1
  %1033 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %1034 = extractvalue %dx.types.ResRet.i32 %1033, 0
  %1035 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %1036 = extractvalue %dx.types.ResRet.i32 %1035, 0
  %1037 = and i32 %1036, 65535
  %1038 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1037)  ; LegacyF16ToF32(value)
  %1039 = lshr i32 %1034, 16
  %1040 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1039)  ; LegacyF16ToF32(value)
  %1041 = and i32 %1032, 65535
  %1042 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1041)  ; LegacyF16ToF32(value)
  br label %1043

; <label>:1043                                    ; preds = %1030, %1021
  %1044 = phi float [ %1042, %1030 ], [ %1024, %1021 ]
  %1045 = phi float [ %1040, %1030 ], [ %1023, %1021 ]
  %1046 = phi float [ %1038, %1030 ], [ %1022, %1021 ]
  %1047 = phi float [ 3.125000e-02, %1030 ], [ %1029, %1021 ]
  %1048 = phi i32 [ -1, %1030 ], [ %1027, %1021 ]
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %183, i32 undef, i32 %1048, i32 %1048, i32 %1048, i32 %1048, i8 15)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %1049 = fmul fast float %1046, 0x3FD20DD760000000
  %1050 = fmul fast float %1045, 0x3FD20DD760000000
  %1051 = fmul fast float %1044, 0x3FD20DD760000000
  %1052 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1053 = extractvalue %dx.types.CBufRet.f32 %1052, 3
  %1054 = fmul fast float %1049, %1053
  %1055 = fmul fast float %1050, %1053
  %1056 = fmul fast float %1051, %1053
  %1057 = extractvalue %dx.types.CBufRet.f32 %1052, 0
  %1058 = fmul fast float %1054, %1057
  %1059 = fmul fast float %1055, %1057
  %1060 = fmul fast float %1056, %1057
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %3, i32 %184, i32 undef, float %1058, float %1059, float %1060, float %1058, i8 15)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %2, i32 %183, i32 undef, float %1047, float %1047, float %1047, float %1047, i8 15)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %1061

; <label>:1061                                    ; preds = %1043, %64
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
!31 = !{void ()* @cs_vol_sh_sample_multi_lightgrid_isotropic, !"cs_vol_sh_sample_multi_lightgrid_isotropic", null, !4, !32}
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

