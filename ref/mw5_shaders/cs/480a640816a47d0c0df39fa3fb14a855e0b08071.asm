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
; shader hash: 072fee8b8583ef41cfb9f1aee1477933
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
;   [80 x i8] (type annotation not present)
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
; Resource bind info for 
; {
;
;   [16 x i8] (type annotation not present)
; }
;
; Resource bind info for 
; {
;
;   [16 x i8] (type annotation not present)
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
;                                   texture     f32     2darray      T0            t50     1
;                                   texture     f32          2d      T1            t18     1
;                                   texture    byte         r/o      T2            t15     1
;                                   texture  struct         r/o      T3            t27     1
;                                   texture  struct         r/o      T4             t0     1
;                                   texture     u32         buf      T5             t1     1
;                                   texture  struct         r/o      T6             t2     1
;                                   texture     u32         buf      T7             t3     1
;                                   texture     u32         buf      T8             t4     1
;                                   texture     u32         buf      T9             t5     1
;                                   texture     f32         buf     T10             t6     1
;                                   texture     u32         buf     T11             t7     1
;                                   texture     f32         buf     T12             t8     1
;                                   texture    byte         r/o     T13             t9     1
;                                       UAV     f32         buf      U0             u3     1
;                                       UAV     f32         buf      U1             u4     1
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.CBufRet.i32 = type { i32, i32, i32, i32 }
%dx.types.ResRet.f32 = type { float, float, float, float, i32 }
%dx.types.CBufRet.f32 = type { float, float, float, float }
%dx.types.ResRet.i32 = type { i32, i32, i32, i32, i32 }
%"class.Texture2DArray<float>" = type { float, %"class.Texture2DArray<float>::mips_type" }
%"class.Texture2DArray<float>::mips_type" = type { i32 }
%"class.Texture2D<float>" = type { float, %"class.Texture2D<float>::mips_type" }
%"class.Texture2D<float>::mips_type" = type { i32 }
%struct.ByteAddressBuffer = type { i32 }
%"class.StructuredBuffer<GfxGpuLightGridParams>" = type { %struct.GfxGpuLightGridParams }
%struct.GfxGpuLightGridParams = type { [7 x <4 x float>] }
%"class.StructuredBuffer<GfxNeuralLightGridTopLevelNode>" = type { %struct.GfxNeuralLightGridTopLevelNode }
%struct.GfxNeuralLightGridTopLevelNode = type { i32, i32, i32, i32 }
%"class.Buffer<unsigned int>" = type { i32 }
%"class.StructuredBuffer<GfxNeuralLightGridInternalNode>" = type { %struct.GfxNeuralLightGridInternalNode }
%struct.GfxNeuralLightGridInternalNode = type { <2 x i32>, <2 x i32> }
%"class.Buffer<vector<float, 4> >" = type { <4 x float> }
%"class.RWBuffer<vector<float, 3> >" = type { <3 x float> }
%"class.RWBuffer<float>" = type { float }
%VolumetricLightGridConstants = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%GfxNeuralLightGridSetupConsts = type { <3 x float>, i32, <3 x float>, i32, <3 x float>, i32, <3 x i32>, i32, float, i32, i32, i32 }
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
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 1, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 13, i32 9, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 12, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 11, i32 7, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 27, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 15, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 18, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 50, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 2, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call i32 @dx.op.threadId.i32(i32 93, i32 0)  ; ThreadId(component)
  %21 = call i32 @dx.op.threadId.i32(i32 93, i32 1)  ; ThreadId(component)
  %22 = call i32 @dx.op.threadId.i32(i32 93, i32 2)  ; ThreadId(component)
  %23 = alloca [8 x float], align 4
  %24 = alloca [8 x i32], align 4
  %25 = alloca [8 x float], align 4
  %26 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %17, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %27 = extractvalue %dx.types.CBufRet.i32 %26, 0
  %28 = extractvalue %dx.types.CBufRet.i32 %26, 1
  %29 = extractvalue %dx.types.CBufRet.i32 %26, 2
  %30 = add i32 %27, 3
  %31 = add i32 %28, 3
  %32 = add i32 %29, 3
  %33 = lshr i32 %30, 2
  %34 = lshr i32 %31, 2
  %35 = lshr i32 %32, 2
  %36 = icmp uge i32 %20, %33
  %37 = icmp uge i32 %21, %34
  %38 = icmp uge i32 %22, %35
  %39 = or i1 %36, %37
  %40 = or i1 %38, %39
  br i1 %40, label %48, label %41, !dx.controlflow.hints !34

; <label>:41                                      ; preds = %0
  %42 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %16, i32 0, i32 %20, i32 %21, i32 0, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %43 = extractvalue %dx.types.ResRet.f32 %42, 0
  %44 = fmul fast float %43, 2.550000e+02
  %45 = fadd fast float %44, 0x3F70101020000000
  %46 = fptoui float %45 to i32
  %47 = icmp ule i32 %22, %46
  br label %48

; <label>:48                                      ; preds = %41, %0
  %49 = phi i1 [ %47, %41 ], [ false, %0 ]
  br i1 %49, label %50, label %1256, !dx.controlflow.hints !35

; <label>:50                                      ; preds = %48
  %51 = uitofp i32 %20 to float
  %52 = uitofp i32 %21 to float
  %53 = uitofp i32 %22 to float
  %54 = fadd fast float %51, 5.000000e-01
  %55 = fadd fast float %52, 5.000000e-01
  %56 = fadd fast float %53, 5.000000e-01
  %57 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %17, i32 395)  ; CBufferLoadLegacy(handle,regIndex)
  %58 = extractvalue %dx.types.CBufRet.i32 %57, 3
  %59 = add i32 %58, %22
  %60 = and i32 %59, 7
  switch i32 %60, label %68 [
    i32 0, label %69
    i32 1, label %61
    i32 2, label %62
    i32 3, label %63
    i32 4, label %64
    i32 5, label %65
    i32 6, label %66
    i32 7, label %67
  ], !dx.controlflow.hints !36

; <label>:61                                      ; preds = %50
  br label %69

; <label>:62                                      ; preds = %50
  br label %69

; <label>:63                                      ; preds = %50
  br label %69

; <label>:64                                      ; preds = %50
  br label %69

; <label>:65                                      ; preds = %50
  br label %69

; <label>:66                                      ; preds = %50
  br label %69

; <label>:67                                      ; preds = %50
  br label %69

; <label>:68                                      ; preds = %50
  br label %69

; <label>:69                                      ; preds = %68, %67, %66, %65, %64, %63, %62, %61, %50
  %70 = phi float [ 0.000000e+00, %68 ], [ 0xBFAAFDA2C0000000, %67 ], [ 0xBFDC840460000000, %66 ], [ 0x3FAD325520000000, %65 ], [ 0xBFC0D2F360000000, %64 ], [ 0x3FD3DBFA80000000, %63 ], [ 0xBFD546BCA0000000, %62 ], [ 0x3FDD88B380000000, %61 ], [ 0xBF98669800000000, %50 ]
  %71 = phi float [ 0.000000e+00, %68 ], [ 0xBFB3D00D00000000, %67 ], [ 0xBFD1E41C40000000, %66 ], [ 0xBFCDD22A60000000, %65 ], [ 0x3FBD22CF20000000, %64 ], [ 0x3FBA443A80000000, %63 ], [ 0x3FDB80DE80000000, %62 ], [ 0xBFB1C6F4E0000000, %61 ], [ 0xBFDDE0E000000000, %50 ]
  %72 = phi float [ 0.000000e+00, %68 ], [ 0xBFD38FB280000000, %67 ], [ 0xBF8D0A4580000000, %66 ], [ 0x3FD36603C0000000, %65 ], [ 0x3FBA950300000000, %64 ], [ 0xBFC14853E0000000, %63 ], [ 0x3FDBE53FA0000000, %62 ], [ 0x3FD8D79020000000, %61 ], [ 0xBFC22590A0000000, %50 ]
  %73 = fadd fast float %54, %70
  %74 = fadd fast float %55, %71
  %75 = fadd fast float %56, %72
  %76 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %77 = extractvalue %dx.types.CBufRet.f32 %76, 0
  %78 = extractvalue %dx.types.CBufRet.f32 %76, 1
  %79 = fmul fast float %75, 4.000000e+00
  %80 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %81 = extractvalue %dx.types.CBufRet.f32 %80, 0
  %82 = extractvalue %dx.types.CBufRet.f32 %80, 1
  %83 = fmul fast float %79, %82
  %84 = call float @dx.op.unary.f32(i32 21, float %83)  ; Exp(value)
  %85 = fmul fast float %84, %81
  %86 = fsub fast float 4.000000e+00, %81
  %87 = fadd fast float %86, %85
  %88 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %15, i32 0, i32 %20, i32 %21, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %89 = extractvalue %dx.types.ResRet.f32 %88, 0
  %90 = fcmp fast ogt float %89, -1.000000e+00
  %91 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %92 = extractvalue %dx.types.CBufRet.f32 %91, 1
  %93 = select i1 %90, float %92, float 1.000000e+00
  %94 = fadd fast float %89, 1.000000e+00
  %95 = fmul fast float %93, %94
  %96 = call float @dx.op.binary.f32(i32 36, float %87, float %95)  ; FMin(a,b)
  %97 = fmul fast float %73, 8.000000e+00
  %98 = fmul fast float %97, %77
  %99 = fmul fast float %74, 8.000000e+00
  %100 = fmul fast float %99, %78
  %101 = fsub fast float 1.000000e+00, %98
  %102 = fsub fast float 1.000000e+00, %100
  %103 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %104 = extractvalue %dx.types.CBufRet.f32 %103, 0
  %105 = extractvalue %dx.types.CBufRet.f32 %103, 1
  %106 = extractvalue %dx.types.CBufRet.f32 %103, 2
  %107 = fmul fast float %104, %101
  %108 = fmul fast float %105, %101
  %109 = fmul fast float %106, %101
  %110 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %111 = extractvalue %dx.types.CBufRet.f32 %110, 0
  %112 = extractvalue %dx.types.CBufRet.f32 %110, 1
  %113 = extractvalue %dx.types.CBufRet.f32 %110, 2
  %114 = fmul fast float %111, %102
  %115 = fmul fast float %112, %102
  %116 = fmul fast float %113, %102
  %117 = fadd fast float %114, %107
  %118 = fadd fast float %115, %108
  %119 = fadd fast float %116, %109
  %120 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %121 = extractvalue %dx.types.CBufRet.f32 %120, 0
  %122 = extractvalue %dx.types.CBufRet.f32 %120, 1
  %123 = extractvalue %dx.types.CBufRet.f32 %120, 2
  %124 = fadd fast float %117, %121
  %125 = fadd fast float %118, %122
  %126 = fadd fast float %119, %123
  %127 = fmul fast float %124, %96
  %128 = fmul fast float %125, %96
  %129 = fmul fast float %126, %96
  %130 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %131 = extractvalue %dx.types.CBufRet.f32 %130, 0
  %132 = extractvalue %dx.types.CBufRet.f32 %130, 1
  %133 = extractvalue %dx.types.CBufRet.f32 %130, 2
  %134 = fadd fast float %127, %131
  %135 = fadd fast float %128, %132
  %136 = fadd fast float %129, %133
  %137 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %19, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %138 = extractvalue %dx.types.CBufRet.i32 %137, 0
  %139 = icmp sgt i32 %138, -1
  br i1 %139, label %140, label %154, !dx.controlflow.hints !37

; <label>:140                                     ; preds = %69
  %141 = mul i32 %33, %34
  %142 = mul i32 %141, %35
  %143 = add i32 %142, %141
  %144 = mul i32 %138, %143
  %145 = mul i32 %141, %22
  %146 = mul i32 %33, %21
  %147 = add i32 %146, %20
  %148 = add i32 %147, %141
  %149 = add i32 %148, %145
  %150 = add i32 %149, %144
  %151 = mul i32 %138, %142
  %152 = add i32 %147, %145
  %153 = add i32 %152, %151
  br label %154

; <label>:154                                     ; preds = %140, %69
  %155 = phi i32 [ %153, %140 ], [ -1, %69 ]
  %156 = phi i32 [ %150, %140 ], [ -1, %69 ]
  %157 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %19, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %158 = extractvalue %dx.types.CBufRet.i32 %157, 3
  br label %159

; <label>:159                                     ; preds = %175, %154
  %160 = phi i32 [ 0, %154 ], [ %176, %175 ]
  %161 = shl i32 %160, 4
  %162 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %13, i32 %158, i32 %161)  ; BufferLoad(srv,index,wot)
  %163 = extractvalue %dx.types.ResRet.f32 %162, 0
  %164 = extractvalue %dx.types.ResRet.f32 %162, 1
  %165 = call float @dx.op.dot2.f32(i32 54, float %163, float %164, float %163, float %164)  ; Dot2(ax,ay,bx,by)
  %166 = fsub fast float 1.000000e+00, %165
  %167 = call float @dx.op.unary.f32(i32 7, float %166)  ; Saturate(value)
  %168 = call float @dx.op.unary.f32(i32 24, float %167)  ; Sqrt(value)
  %169 = call float @dx.op.dot3.f32(i32 55, float %134, float %135, float %136, float %163, float %164, float %168)  ; Dot3(ax,ay,az,bx,by,bz)
  %170 = extractvalue %dx.types.ResRet.f32 %162, 2
  %171 = fcmp fast ole float %169, %170
  %172 = extractvalue %dx.types.ResRet.f32 %162, 3
  %173 = fcmp fast oge float %169, %172
  %174 = or i1 %171, %173
  br i1 %174, label %178, label %175, !dx.controlflow.hints !38

; <label>:175                                     ; preds = %159
  %176 = add nuw nsw i32 %160, 1
  %177 = icmp slt i32 %176, 7
  br i1 %177, label %159, label %178

; <label>:178                                     ; preds = %175, %159
  %179 = phi i1 [ false, %159 ], [ true, %175 ]
  br i1 %179, label %180, label %1056, !dx.controlflow.hints !39

; <label>:180                                     ; preds = %178
  %181 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %182 = extractvalue %dx.types.CBufRet.f32 %181, 0
  %183 = extractvalue %dx.types.CBufRet.f32 %181, 1
  %184 = extractvalue %dx.types.CBufRet.f32 %181, 2
  %185 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %186 = extractvalue %dx.types.CBufRet.f32 %185, 0
  %187 = extractvalue %dx.types.CBufRet.f32 %185, 1
  %188 = extractvalue %dx.types.CBufRet.f32 %185, 2
  %189 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %18, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %190 = extractvalue %dx.types.CBufRet.i32 %189, 1
  %191 = fsub fast float %134, %182
  %192 = fsub fast float %135, %183
  %193 = fsub fast float %136, %184
  %194 = fmul fast float %191, %186
  %195 = fmul fast float %192, %187
  %196 = fmul fast float %193, %188
  %197 = fcmp fast ole float %194, 0.000000e+00
  %198 = fcmp fast ole float %195, 0.000000e+00
  %199 = fcmp fast ole float %196, 0.000000e+00
  %200 = or i1 %197, %198
  %201 = or i1 %199, %200
  %202 = fcmp fast oge float %194, 1.000000e+00
  %203 = fcmp fast oge float %195, 1.000000e+00
  %204 = fcmp fast oge float %196, 1.000000e+00
  %205 = or i1 %202, %203
  %206 = or i1 %204, %205
  %207 = or i1 %201, %206
  br i1 %207, label %923, label %208, !dx.controlflow.hints !40

; <label>:208                                     ; preds = %180
  %209 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %18, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %210 = extractvalue %dx.types.CBufRet.i32 %209, 0
  %211 = fptosi float %191 to i32
  %212 = fptosi float %192 to i32
  %213 = fptosi float %193 to i32
  %214 = and i32 %190, 31
  %215 = ashr i32 %211, %214
  %216 = ashr i32 %212, %214
  %217 = ashr i32 %213, %214
  %218 = mul i32 %210, %216
  %219 = add nsw i32 %218, %215
  %220 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %219, i32 0)  ; BufferLoad(srv,index,wot)
  %221 = extractvalue %dx.types.ResRet.i32 %220, 0
  %222 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %219, i32 4)  ; BufferLoad(srv,index,wot)
  %223 = extractvalue %dx.types.ResRet.i32 %222, 0
  %224 = icmp slt i32 %217, %221
  %225 = icmp sgt i32 %217, %223
  %226 = or i1 %224, %225
  br i1 %226, label %923, label %227, !dx.controlflow.hints !41

; <label>:227                                     ; preds = %208
  %228 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %219, i32 8)  ; BufferLoad(srv,index,wot)
  %229 = extractvalue %dx.types.ResRet.i32 %228, 0
  %230 = sub i32 %217, %221
  %231 = add nsw i32 %230, %229
  %232 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %231, i32 undef)  ; BufferLoad(srv,index,wot)
  %233 = extractvalue %dx.types.ResRet.i32 %232, 0
  %234 = icmp eq i32 %233, -1
  br i1 %234, label %923, label %235, !dx.controlflow.hints !42

; <label>:235                                     ; preds = %227
  %236 = getelementptr inbounds [8 x i32], [8 x i32]* %24, i32 0, i32 0
  store i32 -1, i32* %236, align 4, !tbaa !43, !noalias !47
  %237 = getelementptr inbounds [8 x i32], [8 x i32]* %24, i32 0, i32 1
  store i32 -1, i32* %237, align 4, !tbaa !43, !noalias !47
  %238 = getelementptr inbounds [8 x i32], [8 x i32]* %24, i32 0, i32 2
  store i32 -1, i32* %238, align 4, !tbaa !43, !noalias !47
  %239 = getelementptr inbounds [8 x i32], [8 x i32]* %24, i32 0, i32 3
  store i32 -1, i32* %239, align 4, !tbaa !43, !noalias !47
  %240 = getelementptr inbounds [8 x i32], [8 x i32]* %24, i32 0, i32 4
  store i32 -1, i32* %240, align 4, !tbaa !43, !noalias !47
  %241 = getelementptr inbounds [8 x i32], [8 x i32]* %24, i32 0, i32 5
  store i32 -1, i32* %241, align 4, !tbaa !43, !noalias !47
  %242 = getelementptr inbounds [8 x i32], [8 x i32]* %24, i32 0, i32 6
  store i32 -1, i32* %242, align 4, !tbaa !43, !noalias !58
  %243 = getelementptr inbounds [8 x i32], [8 x i32]* %24, i32 0, i32 7
  store i32 -1, i32* %243, align 4, !tbaa !43, !noalias !58
  br label %244

; <label>:244                                     ; preds = %348, %235
  %245 = phi i32 [ -1, %235 ], [ %345, %348 ]
  %246 = phi i32 [ -1, %235 ], [ %340, %348 ]
  %247 = phi i32 [ -1, %235 ], [ %333, %348 ]
  %248 = phi i32 [ -1, %235 ], [ %328, %348 ]
  %249 = phi i32 [ -1, %235 ], [ %319, %348 ]
  %250 = phi i32 [ -1, %235 ], [ %314, %348 ]
  %251 = phi i32 [ -1, %235 ], [ %306, %348 ]
  %252 = phi i32 [ -1, %235 ], [ %299, %348 ]
  %253 = phi i32 [ %233, %235 ], [ %368, %348 ]
  %254 = phi i32 [ %190, %235 ], [ %255, %348 ]
  %255 = add nsw i32 %254, -2
  %256 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %253, i32 undef)  ; BufferLoad(srv,index,wot)
  %257 = extractvalue %dx.types.ResRet.i32 %256, 0
  %258 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %253, i32 undef)  ; BufferLoad(srv,index,wot)
  %259 = extractvalue %dx.types.ResRet.i32 %258, 0
  %260 = and i32 %257, 31
  %261 = shl i32 1, %260
  %262 = add i32 %261, 1
  %263 = and i32 %255, 31
  %264 = ashr i32 %211, %263
  %265 = ashr i32 %212, %263
  %266 = ashr i32 %213, %263
  %267 = and i32 %264, 3
  %268 = and i32 %265, 3
  %269 = and i32 %266, 3
  br label %270

; <label>:270                                     ; preds = %270, %244
  %271 = phi i32 [ %245, %244 ], [ %345, %270 ]
  %272 = phi i32 [ %246, %244 ], [ %340, %270 ]
  %273 = phi i32 [ %247, %244 ], [ %333, %270 ]
  %274 = phi i32 [ %248, %244 ], [ %328, %270 ]
  %275 = phi i32 [ %249, %244 ], [ %319, %270 ]
  %276 = phi i32 [ %250, %244 ], [ %314, %270 ]
  %277 = phi i32 [ %251, %244 ], [ %306, %270 ]
  %278 = phi i32 [ %252, %244 ], [ %299, %270 ]
  %279 = phi i32 [ 0, %244 ], [ %346, %270 ]
  %280 = sub i32 2, %279
  %281 = and i32 %280, 31
  %282 = lshr i32 %267, %281
  %283 = lshr i32 %268, %281
  %284 = lshr i32 %269, %281
  %285 = sub i32 %257, %279
  %286 = and i32 %285, 31
  %287 = shl i32 %282, %286
  %288 = shl i32 %283, %286
  %289 = shl i32 %284, %286
  %290 = shl i32 1, %286
  %291 = mul i32 %289, %262
  %292 = add i32 %291, %288
  %293 = mul i32 %292, %262
  %294 = add i32 %287, %259
  %295 = add i32 %294, %293
  %296 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %295, i32 undef)  ; BufferLoad(srv,index,wot)
  %297 = extractvalue %dx.types.ResRet.i32 %296, 0
  %298 = icmp ne i32 %297, -1
  %299 = select i1 %298, i32 %297, i32 %278
  store i32 %299, i32* %236, align 4, !tbaa !43, !noalias !47
  %300 = add i32 %290, %259
  %301 = add i32 %300, %287
  %302 = add i32 %301, %293
  %303 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %302, i32 undef)  ; BufferLoad(srv,index,wot)
  %304 = extractvalue %dx.types.ResRet.i32 %303, 0
  %305 = icmp ne i32 %304, -1
  %306 = select i1 %305, i32 %304, i32 %277
  store i32 %306, i32* %237, align 4, !tbaa !43, !noalias !47
  %307 = add i32 %288, %290
  %308 = add i32 %307, %291
  %309 = mul i32 %308, %262
  %310 = add i32 %294, %309
  %311 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %310, i32 undef)  ; BufferLoad(srv,index,wot)
  %312 = extractvalue %dx.types.ResRet.i32 %311, 0
  %313 = icmp ne i32 %312, -1
  %314 = select i1 %313, i32 %312, i32 %276
  store i32 %314, i32* %238, align 4, !tbaa !43, !noalias !47
  %315 = add i32 %301, %309
  %316 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %315, i32 undef)  ; BufferLoad(srv,index,wot)
  %317 = extractvalue %dx.types.ResRet.i32 %316, 0
  %318 = icmp ne i32 %317, -1
  %319 = select i1 %318, i32 %317, i32 %275
  store i32 %319, i32* %239, align 4, !tbaa !43, !noalias !47
  %320 = add i32 %289, %290
  %321 = mul i32 %320, %262
  %322 = add i32 %321, %288
  %323 = mul i32 %322, %262
  %324 = add i32 %294, %323
  %325 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %324, i32 undef)  ; BufferLoad(srv,index,wot)
  %326 = extractvalue %dx.types.ResRet.i32 %325, 0
  %327 = icmp ne i32 %326, -1
  %328 = select i1 %327, i32 %326, i32 %274
  store i32 %328, i32* %240, align 4, !tbaa !43, !noalias !47
  %329 = add i32 %301, %323
  %330 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %329, i32 undef)  ; BufferLoad(srv,index,wot)
  %331 = extractvalue %dx.types.ResRet.i32 %330, 0
  %332 = icmp ne i32 %331, -1
  %333 = select i1 %332, i32 %331, i32 %273
  store i32 %333, i32* %241, align 4, !tbaa !43, !noalias !47
  %334 = add i32 %307, %321
  %335 = mul i32 %334, %262
  %336 = add i32 %294, %335
  %337 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %336, i32 undef)  ; BufferLoad(srv,index,wot)
  %338 = extractvalue %dx.types.ResRet.i32 %337, 0
  %339 = icmp ne i32 %338, -1
  %340 = select i1 %339, i32 %338, i32 %272
  store i32 %340, i32* %242, align 4, !tbaa !43, !noalias !47
  %341 = add i32 %301, %335
  %342 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %341, i32 undef)  ; BufferLoad(srv,index,wot)
  %343 = extractvalue %dx.types.ResRet.i32 %342, 0
  %344 = icmp ne i32 %343, -1
  %345 = select i1 %344, i32 %343, i32 %271
  store i32 %345, i32* %243, align 4, !tbaa !43, !noalias !47
  %346 = add i32 %279, 1
  %347 = icmp ugt i32 %346, %257
  br i1 %347, label %348, label %270

; <label>:348                                     ; preds = %270
  %349 = shl nuw nsw i32 %269, 4
  %350 = shl nuw nsw i32 %268, 2
  %351 = lshr i32 %269, 1
  %352 = and i32 %349, 16
  %353 = or i32 %350, %267
  %354 = or i32 %353, %352
  %355 = shl i32 1, %354
  %356 = shl nuw nsw i32 %351, 2
  %357 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %253, i32 %356)  ; BufferLoad(srv,index,wot)
  %358 = extractvalue %dx.types.ResRet.i32 %357, 0
  %359 = and i32 %358, %355
  %360 = icmp eq i32 %359, 0
  %361 = add i32 %355, -1
  %362 = and i32 %358, %361
  %363 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %362)  ; Countbits(value)
  %364 = or i32 %356, 8
  %365 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %253, i32 %364)  ; BufferLoad(srv,index,wot)
  %366 = extractvalue %dx.types.ResRet.i32 %365, 0
  %367 = add i32 %366, %363
  %368 = select i1 %360, i32 -1, i32 %367
  %369 = icmp eq i32 %368, -1
  br i1 %369, label %370, label %244

; <label>:370                                     ; preds = %348
  br label %371

; <label>:371                                     ; preds = %657, %370
  %372 = phi i32 [ %659, %657 ], [ %299, %370 ]
  %373 = phi float [ %654, %657 ], [ 0.000000e+00, %370 ]
  %374 = phi i32 [ %655, %657 ], [ 0, %370 ]
  %375 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %372, i32 undef)  ; BufferLoad(srv,index,wot)
  %376 = extractvalue %dx.types.ResRet.f32 %375, 0
  %377 = extractvalue %dx.types.ResRet.f32 %375, 1
  %378 = extractvalue %dx.types.ResRet.f32 %375, 2
  %379 = extractvalue %dx.types.ResRet.f32 %375, 3
  %380 = fsub fast float %134, %376
  %381 = fsub fast float %135, %377
  %382 = fsub fast float %136, %378
  %383 = fmul fast float %380, %379
  %384 = fmul fast float %381, %379
  %385 = fmul fast float %382, %379
  %386 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %372, i32 undef)  ; BufferLoad(srv,index,wot)
  %387 = extractvalue %dx.types.ResRet.i32 %386, 0
  %388 = call float @dx.op.unary.f32(i32 6, float %383)  ; FAbs(value)
  %389 = call float @dx.op.unary.f32(i32 6, float %384)  ; FAbs(value)
  %390 = fsub fast float 1.000000e+00, %388
  %391 = fsub fast float 1.000000e+00, %389
  %392 = call float @dx.op.unary.f32(i32 7, float %390)  ; Saturate(value)
  %393 = call float @dx.op.unary.f32(i32 7, float %391)  ; Saturate(value)
  %394 = fmul fast float %393, %392
  %395 = mul i32 %387, 29
  %396 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %4, i32 %395, i32 undef)  ; BufferLoad(srv,index,wot)
  %397 = extractvalue %dx.types.ResRet.f32 %396, 0
  %398 = extractvalue %dx.types.ResRet.f32 %396, 1
  %399 = extractvalue %dx.types.ResRet.f32 %396, 2
  %400 = extractvalue %dx.types.ResRet.f32 %396, 3
  %401 = add i32 %395, 1
  %402 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %4, i32 %401, i32 undef)  ; BufferLoad(srv,index,wot)
  %403 = extractvalue %dx.types.ResRet.f32 %402, 0
  %404 = extractvalue %dx.types.ResRet.f32 %402, 1
  %405 = extractvalue %dx.types.ResRet.f32 %402, 2
  %406 = extractvalue %dx.types.ResRet.f32 %402, 3
  %407 = add i32 %395, 2
  %408 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %4, i32 %407, i32 undef)  ; BufferLoad(srv,index,wot)
  %409 = extractvalue %dx.types.ResRet.f32 %408, 0
  %410 = extractvalue %dx.types.ResRet.f32 %408, 1
  %411 = extractvalue %dx.types.ResRet.f32 %408, 2
  %412 = extractvalue %dx.types.ResRet.f32 %408, 3
  %413 = add i32 %395, 3
  %414 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %4, i32 %413, i32 undef)  ; BufferLoad(srv,index,wot)
  %415 = extractvalue %dx.types.ResRet.f32 %414, 0
  %416 = extractvalue %dx.types.ResRet.f32 %414, 1
  %417 = extractvalue %dx.types.ResRet.f32 %414, 2
  %418 = extractvalue %dx.types.ResRet.f32 %414, 3
  %419 = add i32 %395, 4
  %420 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %4, i32 %419, i32 undef)  ; BufferLoad(srv,index,wot)
  %421 = extractvalue %dx.types.ResRet.f32 %420, 0
  %422 = extractvalue %dx.types.ResRet.f32 %420, 1
  %423 = extractvalue %dx.types.ResRet.f32 %420, 2
  %424 = extractvalue %dx.types.ResRet.f32 %420, 3
  %425 = add i32 %395, 5
  %426 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %4, i32 %425, i32 undef)  ; BufferLoad(srv,index,wot)
  %427 = extractvalue %dx.types.ResRet.f32 %426, 0
  %428 = extractvalue %dx.types.ResRet.f32 %426, 1
  %429 = extractvalue %dx.types.ResRet.f32 %426, 2
  %430 = extractvalue %dx.types.ResRet.f32 %426, 3
  %431 = add i32 %395, 6
  %432 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %4, i32 %431, i32 undef)  ; BufferLoad(srv,index,wot)
  %433 = extractvalue %dx.types.ResRet.f32 %432, 0
  %434 = extractvalue %dx.types.ResRet.f32 %432, 1
  %435 = extractvalue %dx.types.ResRet.f32 %432, 2
  %436 = extractvalue %dx.types.ResRet.f32 %432, 3
  %437 = add i32 %395, 7
  %438 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %4, i32 %437, i32 undef)  ; BufferLoad(srv,index,wot)
  %439 = extractvalue %dx.types.ResRet.f32 %438, 0
  %440 = extractvalue %dx.types.ResRet.f32 %438, 1
  %441 = extractvalue %dx.types.ResRet.f32 %438, 2
  %442 = extractvalue %dx.types.ResRet.f32 %438, 3
  %443 = fmul fast float %397, %383
  %444 = fmul fast float %409, %384
  %445 = fadd fast float %444, %443
  %446 = fmul fast float %421, %385
  %447 = fadd fast float %445, %446
  %448 = fmul fast float %398, %383
  %449 = fmul fast float %410, %384
  %450 = fadd fast float %449, %448
  %451 = fmul fast float %422, %385
  %452 = fadd fast float %450, %451
  %453 = fmul fast float %399, %383
  %454 = fmul fast float %411, %384
  %455 = fadd fast float %454, %453
  %456 = fmul fast float %423, %385
  %457 = fadd fast float %455, %456
  %458 = fmul fast float %400, %383
  %459 = fmul fast float %412, %384
  %460 = fadd fast float %459, %458
  %461 = fmul fast float %424, %385
  %462 = fadd fast float %460, %461
  %463 = fmul fast float %403, %383
  %464 = fmul fast float %415, %384
  %465 = fadd fast float %464, %463
  %466 = fmul fast float %427, %385
  %467 = fadd fast float %465, %466
  %468 = fmul fast float %404, %383
  %469 = fmul fast float %416, %384
  %470 = fadd fast float %469, %468
  %471 = fmul fast float %428, %385
  %472 = fadd fast float %470, %471
  %473 = fmul fast float %405, %383
  %474 = fmul fast float %417, %384
  %475 = fadd fast float %474, %473
  %476 = fmul fast float %429, %385
  %477 = fadd fast float %475, %476
  %478 = fmul fast float %406, %383
  %479 = fmul fast float %418, %384
  %480 = fadd fast float %479, %478
  %481 = fmul fast float %430, %385
  %482 = fadd fast float %480, %481
  %483 = fadd fast float %447, %433
  %484 = fadd fast float %452, %434
  %485 = fadd fast float %457, %435
  %486 = fadd fast float %462, %436
  %487 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %483)  ; FMax(a,b)
  %488 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %484)  ; FMax(a,b)
  %489 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %485)  ; FMax(a,b)
  %490 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %486)  ; FMax(a,b)
  %491 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %483)  ; FMin(a,b)
  %492 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %484)  ; FMin(a,b)
  %493 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %485)  ; FMin(a,b)
  %494 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %486)  ; FMin(a,b)
  %495 = fmul fast float %491, 0x3F847AE140000000
  %496 = fmul fast float %492, 0x3F847AE140000000
  %497 = fmul fast float %493, 0x3F847AE140000000
  %498 = fmul fast float %494, 0x3F847AE140000000
  %499 = fadd fast float %495, %487
  %500 = fadd fast float %496, %488
  %501 = fadd fast float %497, %489
  %502 = fadd fast float %498, %490
  %503 = fadd fast float %467, %439
  %504 = fadd fast float %472, %440
  %505 = fadd fast float %477, %441
  %506 = fadd fast float %482, %442
  %507 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %503)  ; FMax(a,b)
  %508 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %504)  ; FMax(a,b)
  %509 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %505)  ; FMax(a,b)
  %510 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %506)  ; FMax(a,b)
  %511 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %503)  ; FMin(a,b)
  %512 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %504)  ; FMin(a,b)
  %513 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %505)  ; FMin(a,b)
  %514 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %506)  ; FMin(a,b)
  %515 = fmul fast float %511, 0x3F847AE140000000
  %516 = fmul fast float %512, 0x3F847AE140000000
  %517 = fmul fast float %513, 0x3F847AE140000000
  %518 = fmul fast float %514, 0x3F847AE140000000
  %519 = fadd fast float %515, %507
  %520 = fadd fast float %516, %508
  %521 = fadd fast float %517, %509
  %522 = fadd fast float %518, %510
  br label %523

; <label>:523                                     ; preds = %523, %371
  %524 = phi i32 [ 0, %371 ], [ %544, %523 ]
  %525 = add i32 %395, 8
  %526 = shl i32 %524, 1
  %527 = add i32 %525, %526
  %528 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %4, i32 %527, i32 undef)  ; BufferLoad(srv,index,wot)
  %529 = extractvalue %dx.types.ResRet.f32 %528, 0
  %530 = extractvalue %dx.types.ResRet.f32 %528, 1
  %531 = extractvalue %dx.types.ResRet.f32 %528, 2
  %532 = extractvalue %dx.types.ResRet.f32 %528, 3
  %533 = add i32 %395, 9
  %534 = add i32 %533, %526
  %535 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %4, i32 %534, i32 undef)  ; BufferLoad(srv,index,wot)
  %536 = extractvalue %dx.types.ResRet.f32 %535, 0
  %537 = extractvalue %dx.types.ResRet.f32 %535, 1
  %538 = extractvalue %dx.types.ResRet.f32 %535, 2
  %539 = extractvalue %dx.types.ResRet.f32 %535, 3
  %540 = call float @dx.op.dot4.f32(i32 56, float %529, float %530, float %531, float %532, float %499, float %500, float %501, float %502)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %541 = call float @dx.op.dot4.f32(i32 56, float %536, float %537, float %538, float %539, float %519, float %520, float %521, float %522)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %542 = fadd fast float %541, %540
  %543 = getelementptr inbounds [8 x float], [8 x float]* %23, i32 0, i32 %524
  store float %542, float* %543, align 4, !tbaa !59, !noalias !47
  %544 = add nuw nsw i32 %524, 1
  %545 = icmp eq i32 %544, 8
  br i1 %545, label %546, label %523

; <label>:546                                     ; preds = %523
  %547 = call float @dx.op.unary.f32(i32 6, float %385)  ; FAbs(value)
  %548 = fsub fast float 1.000000e+00, %547
  %549 = call float @dx.op.unary.f32(i32 7, float %548)  ; Saturate(value)
  %550 = fmul fast float %394, %549
  %551 = add i32 %395, 24
  %552 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %4, i32 %551, i32 undef)  ; BufferLoad(srv,index,wot)
  %553 = extractvalue %dx.types.ResRet.f32 %552, 0
  %554 = extractvalue %dx.types.ResRet.f32 %552, 1
  %555 = extractvalue %dx.types.ResRet.f32 %552, 2
  %556 = extractvalue %dx.types.ResRet.f32 %552, 3
  %557 = add i32 %395, 25
  %558 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %4, i32 %557, i32 undef)  ; BufferLoad(srv,index,wot)
  %559 = extractvalue %dx.types.ResRet.f32 %558, 0
  %560 = extractvalue %dx.types.ResRet.f32 %558, 1
  %561 = extractvalue %dx.types.ResRet.f32 %558, 2
  %562 = extractvalue %dx.types.ResRet.f32 %558, 3
  %563 = getelementptr inbounds [8 x float], [8 x float]* %23, i32 0, i32 0
  %564 = load float, float* %563, align 4, !tbaa !59, !noalias !47
  %565 = fadd fast float %564, %553
  %566 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %565)  ; FMax(a,b)
  %567 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %565)  ; FMin(a,b)
  %568 = fmul fast float %567, 0x3F847AE140000000
  %569 = fadd fast float %568, %566
  store float %569, float* %563, align 4, !tbaa !59, !noalias !47
  %570 = getelementptr inbounds [8 x float], [8 x float]* %23, i32 0, i32 1
  %571 = load float, float* %570, align 4, !tbaa !59, !noalias !47
  %572 = fadd fast float %571, %554
  %573 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %572)  ; FMax(a,b)
  %574 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %572)  ; FMin(a,b)
  %575 = fmul fast float %574, 0x3F847AE140000000
  %576 = fadd fast float %575, %573
  store float %576, float* %570, align 4, !tbaa !59, !noalias !47
  %577 = getelementptr inbounds [8 x float], [8 x float]* %23, i32 0, i32 2
  %578 = load float, float* %577, align 4, !tbaa !59, !noalias !47
  %579 = fadd fast float %578, %555
  %580 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %579)  ; FMax(a,b)
  %581 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %579)  ; FMin(a,b)
  %582 = fmul fast float %581, 0x3F847AE140000000
  %583 = fadd fast float %582, %580
  store float %583, float* %577, align 4, !tbaa !59, !noalias !47
  %584 = getelementptr inbounds [8 x float], [8 x float]* %23, i32 0, i32 3
  %585 = load float, float* %584, align 4, !tbaa !59, !noalias !47
  %586 = fadd fast float %585, %556
  %587 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %586)  ; FMax(a,b)
  %588 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %586)  ; FMin(a,b)
  %589 = fmul fast float %588, 0x3F847AE140000000
  %590 = fadd fast float %589, %587
  store float %590, float* %584, align 4, !tbaa !59, !noalias !47
  %591 = getelementptr inbounds [8 x float], [8 x float]* %23, i32 0, i32 4
  %592 = load float, float* %591, align 4, !tbaa !59, !noalias !47
  %593 = fadd fast float %592, %559
  %594 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %593)  ; FMax(a,b)
  %595 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %593)  ; FMin(a,b)
  %596 = fmul fast float %595, 0x3F847AE140000000
  %597 = fadd fast float %596, %594
  store float %597, float* %591, align 4, !tbaa !59, !noalias !47
  %598 = getelementptr inbounds [8 x float], [8 x float]* %23, i32 0, i32 5
  %599 = load float, float* %598, align 4, !tbaa !59, !noalias !47
  %600 = fadd fast float %599, %560
  %601 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %600)  ; FMax(a,b)
  %602 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %600)  ; FMin(a,b)
  %603 = fmul fast float %602, 0x3F847AE140000000
  %604 = fadd fast float %603, %601
  store float %604, float* %598, align 4, !tbaa !59, !noalias !47
  %605 = getelementptr inbounds [8 x float], [8 x float]* %23, i32 0, i32 6
  %606 = load float, float* %605, align 4, !tbaa !59, !noalias !47
  %607 = fadd fast float %606, %561
  %608 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %607)  ; FMax(a,b)
  %609 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %607)  ; FMin(a,b)
  %610 = fmul fast float %609, 0x3F847AE140000000
  %611 = fadd fast float %610, %608
  store float %611, float* %605, align 4, !tbaa !59, !noalias !47
  %612 = getelementptr inbounds [8 x float], [8 x float]* %23, i32 0, i32 7
  %613 = load float, float* %612, align 4, !tbaa !59, !noalias !47
  %614 = fadd fast float %613, %562
  %615 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %614)  ; FMax(a,b)
  %616 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %614)  ; FMin(a,b)
  %617 = fmul fast float %616, 0x3F847AE140000000
  %618 = fadd fast float %617, %615
  store float %618, float* %612, align 4, !tbaa !59, !noalias !47
  %619 = add i32 %395, 26
  %620 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %4, i32 %619, i32 undef)  ; BufferLoad(srv,index,wot)
  %621 = extractvalue %dx.types.ResRet.f32 %620, 0
  %622 = extractvalue %dx.types.ResRet.f32 %620, 1
  %623 = extractvalue %dx.types.ResRet.f32 %620, 2
  %624 = extractvalue %dx.types.ResRet.f32 %620, 3
  %625 = add i32 %395, 27
  %626 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %4, i32 %625, i32 undef)  ; BufferLoad(srv,index,wot)
  %627 = extractvalue %dx.types.ResRet.f32 %626, 0
  %628 = extractvalue %dx.types.ResRet.f32 %626, 1
  %629 = extractvalue %dx.types.ResRet.f32 %626, 2
  %630 = extractvalue %dx.types.ResRet.f32 %626, 3
  %631 = fmul fast float %569, %621
  %632 = fmul fast float %576, %622
  %633 = fadd fast float %632, %631
  %634 = fmul fast float %583, %623
  %635 = fadd fast float %633, %634
  %636 = fmul fast float %590, %624
  %637 = fadd fast float %635, %636
  %638 = fmul fast float %597, %627
  %639 = fadd fast float %637, %638
  %640 = fmul fast float %604, %628
  %641 = fadd fast float %639, %640
  %642 = fmul fast float %611, %629
  %643 = fadd fast float %641, %642
  %644 = fmul fast float %618, %630
  %645 = fadd fast float %643, %644
  %646 = add i32 %395, 28
  %647 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %4, i32 %646, i32 undef)  ; BufferLoad(srv,index,wot)
  %648 = extractvalue %dx.types.ResRet.f32 %647, 0
  %649 = fadd fast float %645, %648
  %650 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %649)  ; FMax(a,b)
  %651 = fmul fast float %550, %650
  %652 = call float @dx.op.unary.f32(i32 7, float %651)  ; Saturate(value)
  %653 = getelementptr inbounds [8 x float], [8 x float]* %25, i32 0, i32 %374
  store float %652, float* %653, align 4, !tbaa !59, !noalias !47
  %654 = fadd fast float %652, %373
  %655 = add nuw nsw i32 %374, 1
  %656 = icmp eq i32 %655, 8
  br i1 %656, label %660, label %657

; <label>:657                                     ; preds = %546
  %658 = getelementptr inbounds [8 x i32], [8 x i32]* %24, i32 0, i32 %655
  %659 = load i32, i32* %658, align 4, !tbaa !43, !noalias !47
  br label %371

; <label>:660                                     ; preds = %546
  %661 = fcmp fast ugt float %654, 0x3EE4F8B580000000
  br i1 %661, label %662, label %923, !dx.controlflow.hints !61

; <label>:662                                     ; preds = %660
  %663 = fcmp fast ogt float %654, 0x3EE4F8B580000000
  %664 = fdiv fast float 1.000000e+00, %654
  %665 = select i1 %663, float %664, float 1.000000e+00
  %666 = getelementptr inbounds [8 x float], [8 x float]* %25, i32 0, i32 0
  %667 = load float, float* %666, align 4, !tbaa !59, !noalias !47
  %668 = fmul fast float %667, %665
  store float %668, float* %666, align 4, !tbaa !59, !noalias !47
  %669 = getelementptr inbounds [8 x float], [8 x float]* %25, i32 0, i32 1
  %670 = load float, float* %669, align 4, !tbaa !59, !noalias !47
  %671 = fmul fast float %670, %665
  store float %671, float* %669, align 4, !tbaa !59, !noalias !47
  %672 = getelementptr inbounds [8 x float], [8 x float]* %25, i32 0, i32 2
  %673 = load float, float* %672, align 4, !tbaa !59, !noalias !47
  %674 = fmul fast float %673, %665
  store float %674, float* %672, align 4, !tbaa !59, !noalias !47
  %675 = getelementptr inbounds [8 x float], [8 x float]* %25, i32 0, i32 3
  %676 = load float, float* %675, align 4, !tbaa !59, !noalias !47
  %677 = fmul fast float %676, %665
  store float %677, float* %675, align 4, !tbaa !59, !noalias !47
  %678 = getelementptr inbounds [8 x float], [8 x float]* %25, i32 0, i32 4
  %679 = load float, float* %678, align 4, !tbaa !59, !noalias !47
  %680 = fmul fast float %679, %665
  store float %680, float* %678, align 4, !tbaa !59, !noalias !47
  %681 = getelementptr inbounds [8 x float], [8 x float]* %25, i32 0, i32 5
  %682 = load float, float* %681, align 4, !tbaa !59, !noalias !47
  %683 = fmul fast float %682, %665
  store float %683, float* %681, align 4, !tbaa !59, !noalias !47
  %684 = getelementptr inbounds [8 x float], [8 x float]* %25, i32 0, i32 6
  %685 = load float, float* %684, align 4, !tbaa !59, !noalias !47
  %686 = fmul fast float %685, %665
  store float %686, float* %684, align 4, !tbaa !59, !noalias !47
  %687 = getelementptr inbounds [8 x float], [8 x float]* %25, i32 0, i32 7
  %688 = load float, float* %687, align 4, !tbaa !59, !noalias !47
  %689 = fmul fast float %688, %665
  store float %689, float* %687, align 4, !tbaa !59, !noalias !47
  br label %690

; <label>:690                                     ; preds = %917, %662
  %691 = phi float [ %921, %917 ], [ %668, %662 ]
  %692 = phi i32 [ %919, %917 ], [ %299, %662 ]
  %693 = phi float [ %872, %917 ], [ 0.000000e+00, %662 ]
  %694 = phi float [ %870, %917 ], [ 0.000000e+00, %662 ]
  %695 = phi float [ %868, %917 ], [ 0.000000e+00, %662 ]
  %696 = phi float [ %864, %917 ], [ 0.000000e+00, %662 ]
  %697 = phi float [ %862, %917 ], [ 0.000000e+00, %662 ]
  %698 = phi float [ %858, %917 ], [ 0.000000e+00, %662 ]
  %699 = phi float [ %856, %917 ], [ 0.000000e+00, %662 ]
  %700 = phi float [ %854, %917 ], [ 0.000000e+00, %662 ]
  %701 = phi float [ %850, %917 ], [ 0.000000e+00, %662 ]
  %702 = phi float [ %893, %917 ], [ 0.000000e+00, %662 ]
  %703 = phi float [ %891, %917 ], [ 0.000000e+00, %662 ]
  %704 = phi float [ %889, %917 ], [ 0.000000e+00, %662 ]
  %705 = phi float [ %886, %917 ], [ 0.000000e+00, %662 ]
  %706 = phi float [ %884, %917 ], [ 0.000000e+00, %662 ]
  %707 = phi float [ %881, %917 ], [ 0.000000e+00, %662 ]
  %708 = phi float [ %879, %917 ], [ 0.000000e+00, %662 ]
  %709 = phi float [ %877, %917 ], [ 0.000000e+00, %662 ]
  %710 = phi float [ %874, %917 ], [ 0.000000e+00, %662 ]
  %711 = phi float [ %914, %917 ], [ 0.000000e+00, %662 ]
  %712 = phi float [ %912, %917 ], [ 0.000000e+00, %662 ]
  %713 = phi float [ %910, %917 ], [ 0.000000e+00, %662 ]
  %714 = phi float [ %907, %917 ], [ 0.000000e+00, %662 ]
  %715 = phi float [ %905, %917 ], [ 0.000000e+00, %662 ]
  %716 = phi float [ %902, %917 ], [ 0.000000e+00, %662 ]
  %717 = phi float [ %900, %917 ], [ 0.000000e+00, %662 ]
  %718 = phi float [ %898, %917 ], [ 0.000000e+00, %662 ]
  %719 = phi float [ %895, %917 ], [ 0.000000e+00, %662 ]
  %720 = phi i32 [ %915, %917 ], [ 0, %662 ]
  %721 = shl i32 %692, 5
  %722 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %721, i32 undef)  ; BufferLoad(srv,index,wot)
  %723 = extractvalue %dx.types.ResRet.i32 %722, 0
  %724 = extractvalue %dx.types.ResRet.i32 %722, 1
  %725 = extractvalue %dx.types.ResRet.i32 %722, 2
  %726 = extractvalue %dx.types.ResRet.i32 %722, 3
  %727 = or i32 %721, 16
  %728 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %727, i32 undef)  ; BufferLoad(srv,index,wot)
  %729 = extractvalue %dx.types.ResRet.i32 %728, 0
  %730 = extractvalue %dx.types.ResRet.i32 %728, 1
  %731 = extractvalue %dx.types.ResRet.i32 %728, 2
  %732 = shl i32 %723, 4
  %733 = and i32 %732, 32752
  %734 = call float @dx.op.legacyF16ToF32(i32 131, i32 %733)  ; LegacyF16ToF32(value)
  %735 = lshr i32 %723, 7
  %736 = and i32 %735, 32752
  %737 = call float @dx.op.legacyF16ToF32(i32 131, i32 %736)  ; LegacyF16ToF32(value)
  %738 = lshr i32 %723, 22
  %739 = shl nuw nsw i32 %738, 5
  %740 = call float @dx.op.legacyF16ToF32(i32 131, i32 %739)  ; LegacyF16ToF32(value)
  %741 = and i32 %724, 255
  %742 = uitofp i32 %741 to float
  %743 = fmul fast float %742, 0x3F80204080000000
  %744 = fadd fast float %743, -1.000000e+00
  %745 = lshr i32 %724, 8
  %746 = and i32 %745, 255
  %747 = uitofp i32 %746 to float
  %748 = fmul fast float %747, 0x3F80204080000000
  %749 = fadd fast float %748, -1.000000e+00
  %750 = lshr i32 %724, 16
  %751 = and i32 %750, 255
  %752 = uitofp i32 %751 to float
  %753 = fmul fast float %752, 0x3F80204080000000
  %754 = fadd fast float %753, -1.000000e+00
  %755 = lshr i32 %724, 24
  %756 = uitofp i32 %755 to float
  %757 = fmul fast float %756, 0x3F80204080000000
  %758 = fadd fast float %757, -1.000000e+00
  %759 = and i32 %725, 255
  %760 = uitofp i32 %759 to float
  %761 = fmul fast float %760, 0x3F80204080000000
  %762 = fadd fast float %761, -1.000000e+00
  %763 = lshr i32 %725, 8
  %764 = and i32 %763, 255
  %765 = uitofp i32 %764 to float
  %766 = fmul fast float %765, 0x3F80204080000000
  %767 = fadd fast float %766, -1.000000e+00
  %768 = lshr i32 %725, 16
  %769 = and i32 %768, 255
  %770 = uitofp i32 %769 to float
  %771 = fmul fast float %770, 0x3F80204080000000
  %772 = fadd fast float %771, -1.000000e+00
  %773 = lshr i32 %725, 24
  %774 = uitofp i32 %773 to float
  %775 = fmul fast float %774, 0x3F80204080000000
  %776 = fadd fast float %775, -1.000000e+00
  %777 = and i32 %726, 255
  %778 = uitofp i32 %777 to float
  %779 = fmul fast float %778, 0x3F80204080000000
  %780 = fadd fast float %779, -1.000000e+00
  %781 = lshr i32 %726, 8
  %782 = and i32 %781, 255
  %783 = uitofp i32 %782 to float
  %784 = fmul fast float %783, 0x3F80204080000000
  %785 = fadd fast float %784, -1.000000e+00
  %786 = lshr i32 %726, 16
  %787 = and i32 %786, 255
  %788 = uitofp i32 %787 to float
  %789 = fmul fast float %788, 0x3F80204080000000
  %790 = fadd fast float %789, -1.000000e+00
  %791 = lshr i32 %726, 24
  %792 = uitofp i32 %791 to float
  %793 = fmul fast float %792, 0x3F80204080000000
  %794 = fadd fast float %793, -1.000000e+00
  %795 = and i32 %729, 255
  %796 = uitofp i32 %795 to float
  %797 = fmul fast float %796, 0x3F80204080000000
  %798 = fadd fast float %797, -1.000000e+00
  %799 = lshr i32 %729, 8
  %800 = and i32 %799, 255
  %801 = uitofp i32 %800 to float
  %802 = fmul fast float %801, 0x3F80204080000000
  %803 = fadd fast float %802, -1.000000e+00
  %804 = lshr i32 %729, 16
  %805 = and i32 %804, 255
  %806 = uitofp i32 %805 to float
  %807 = fmul fast float %806, 0x3F80204080000000
  %808 = fadd fast float %807, -1.000000e+00
  %809 = lshr i32 %729, 24
  %810 = uitofp i32 %809 to float
  %811 = fmul fast float %810, 0x3F80204080000000
  %812 = fadd fast float %811, -1.000000e+00
  %813 = and i32 %730, 255
  %814 = uitofp i32 %813 to float
  %815 = fmul fast float %814, 0x3F80204080000000
  %816 = fadd fast float %815, -1.000000e+00
  %817 = lshr i32 %730, 8
  %818 = and i32 %817, 255
  %819 = uitofp i32 %818 to float
  %820 = fmul fast float %819, 0x3F80204080000000
  %821 = fadd fast float %820, -1.000000e+00
  %822 = lshr i32 %730, 16
  %823 = and i32 %822, 255
  %824 = uitofp i32 %823 to float
  %825 = fmul fast float %824, 0x3F80204080000000
  %826 = fadd fast float %825, -1.000000e+00
  %827 = lshr i32 %730, 24
  %828 = uitofp i32 %827 to float
  %829 = fmul fast float %828, 0x3F80204080000000
  %830 = fadd fast float %829, -1.000000e+00
  %831 = and i32 %731, 255
  %832 = uitofp i32 %831 to float
  %833 = fmul fast float %832, 0x3F80204080000000
  %834 = fadd fast float %833, -1.000000e+00
  %835 = lshr i32 %731, 8
  %836 = and i32 %835, 255
  %837 = uitofp i32 %836 to float
  %838 = fmul fast float %837, 0x3F80204080000000
  %839 = fadd fast float %838, -1.000000e+00
  %840 = lshr i32 %731, 16
  %841 = and i32 %840, 255
  %842 = uitofp i32 %841 to float
  %843 = fmul fast float %842, 0x3F80204080000000
  %844 = fadd fast float %843, -1.000000e+00
  %845 = lshr i32 %731, 24
  %846 = uitofp i32 %845 to float
  %847 = fmul fast float %846, 0x3F80204080000000
  %848 = fadd fast float %847, -1.000000e+00
  %849 = fmul fast float %734, %691
  %850 = fadd fast float %849, %701
  %851 = fmul fast float %691, 0x3FFBB67AE0000000
  %852 = fmul fast float %851, %734
  %853 = fmul fast float %852, %744
  %854 = fadd fast float %853, %700
  %855 = fmul fast float %852, %749
  %856 = fadd fast float %855, %699
  %857 = fmul fast float %852, %754
  %858 = fadd fast float %857, %698
  %859 = fmul fast float %691, 0x3FFEFBDEC0000000
  %860 = fmul fast float %859, %734
  %861 = fmul fast float %860, %758
  %862 = fadd fast float %861, %697
  %863 = fmul fast float %860, %762
  %864 = fadd fast float %863, %696
  %865 = fmul fast float %691, 0x4001E377A0000000
  %866 = fmul fast float %865, %734
  %867 = fmul fast float %866, %767
  %868 = fadd fast float %867, %695
  %869 = fmul fast float %860, %772
  %870 = fadd fast float %869, %694
  %871 = fmul fast float %860, %776
  %872 = fadd fast float %871, %693
  %873 = fmul fast float %737, %691
  %874 = fadd fast float %873, %710
  %875 = fmul fast float %851, %737
  %876 = fmul fast float %875, %780
  %877 = fadd fast float %876, %709
  %878 = fmul fast float %875, %785
  %879 = fadd fast float %878, %708
  %880 = fmul fast float %875, %790
  %881 = fadd fast float %880, %707
  %882 = fmul fast float %859, %737
  %883 = fmul fast float %882, %794
  %884 = fadd fast float %883, %706
  %885 = fmul fast float %882, %798
  %886 = fadd fast float %885, %705
  %887 = fmul fast float %865, %737
  %888 = fmul fast float %887, %803
  %889 = fadd fast float %888, %704
  %890 = fmul fast float %882, %808
  %891 = fadd fast float %890, %703
  %892 = fmul fast float %882, %812
  %893 = fadd fast float %892, %702
  %894 = fmul fast float %740, %691
  %895 = fadd fast float %894, %719
  %896 = fmul fast float %851, %740
  %897 = fmul fast float %896, %816
  %898 = fadd fast float %897, %718
  %899 = fmul fast float %896, %821
  %900 = fadd fast float %899, %717
  %901 = fmul fast float %896, %826
  %902 = fadd fast float %901, %716
  %903 = fmul fast float %859, %740
  %904 = fmul fast float %903, %830
  %905 = fadd fast float %904, %715
  %906 = fmul fast float %903, %834
  %907 = fadd fast float %906, %714
  %908 = fmul fast float %865, %740
  %909 = fmul fast float %908, %839
  %910 = fadd fast float %909, %713
  %911 = fmul fast float %903, %844
  %912 = fadd fast float %911, %712
  %913 = fmul fast float %903, %848
  %914 = fadd fast float %913, %711
  %915 = add nuw nsw i32 %720, 1
  %916 = icmp eq i32 %915, 8
  br i1 %916, label %922, label %917

; <label>:917                                     ; preds = %690
  %918 = getelementptr inbounds [8 x i32], [8 x i32]* %24, i32 0, i32 %915
  %919 = load i32, i32* %918, align 4, !tbaa !43, !noalias !47
  %920 = getelementptr inbounds [8 x float], [8 x float]* %25, i32 0, i32 %915
  %921 = load float, float* %920, align 4, !tbaa !59, !noalias !47
  br label %690

; <label>:922                                     ; preds = %690
  br label %923

; <label>:923                                     ; preds = %922, %660, %227, %208, %180
  %924 = phi float [ 0.000000e+00, %180 ], [ 0.000000e+00, %208 ], [ 0.000000e+00, %227 ], [ 0.000000e+00, %660 ], [ %872, %922 ]
  %925 = phi float [ 0.000000e+00, %180 ], [ 0.000000e+00, %208 ], [ 0.000000e+00, %227 ], [ 0.000000e+00, %660 ], [ %870, %922 ]
  %926 = phi float [ 0.000000e+00, %180 ], [ 0.000000e+00, %208 ], [ 0.000000e+00, %227 ], [ 0.000000e+00, %660 ], [ %868, %922 ]
  %927 = phi float [ 0.000000e+00, %180 ], [ 0.000000e+00, %208 ], [ 0.000000e+00, %227 ], [ 0.000000e+00, %660 ], [ %864, %922 ]
  %928 = phi float [ 0.000000e+00, %180 ], [ 0.000000e+00, %208 ], [ 0.000000e+00, %227 ], [ 0.000000e+00, %660 ], [ %862, %922 ]
  %929 = phi float [ 0.000000e+00, %180 ], [ 0.000000e+00, %208 ], [ 0.000000e+00, %227 ], [ 0.000000e+00, %660 ], [ %858, %922 ]
  %930 = phi float [ 0.000000e+00, %180 ], [ 0.000000e+00, %208 ], [ 0.000000e+00, %227 ], [ 0.000000e+00, %660 ], [ %856, %922 ]
  %931 = phi float [ 0.000000e+00, %180 ], [ 0.000000e+00, %208 ], [ 0.000000e+00, %227 ], [ 0.000000e+00, %660 ], [ %854, %922 ]
  %932 = phi float [ 0.000000e+00, %180 ], [ 0.000000e+00, %208 ], [ 0.000000e+00, %227 ], [ 0.000000e+00, %660 ], [ %850, %922 ]
  %933 = phi float [ 0.000000e+00, %180 ], [ 0.000000e+00, %208 ], [ 0.000000e+00, %227 ], [ 0.000000e+00, %660 ], [ %893, %922 ]
  %934 = phi float [ 0.000000e+00, %180 ], [ 0.000000e+00, %208 ], [ 0.000000e+00, %227 ], [ 0.000000e+00, %660 ], [ %891, %922 ]
  %935 = phi float [ 0.000000e+00, %180 ], [ 0.000000e+00, %208 ], [ 0.000000e+00, %227 ], [ 0.000000e+00, %660 ], [ %889, %922 ]
  %936 = phi float [ 0.000000e+00, %180 ], [ 0.000000e+00, %208 ], [ 0.000000e+00, %227 ], [ 0.000000e+00, %660 ], [ %886, %922 ]
  %937 = phi float [ 0.000000e+00, %180 ], [ 0.000000e+00, %208 ], [ 0.000000e+00, %227 ], [ 0.000000e+00, %660 ], [ %884, %922 ]
  %938 = phi float [ 0.000000e+00, %180 ], [ 0.000000e+00, %208 ], [ 0.000000e+00, %227 ], [ 0.000000e+00, %660 ], [ %881, %922 ]
  %939 = phi float [ 0.000000e+00, %180 ], [ 0.000000e+00, %208 ], [ 0.000000e+00, %227 ], [ 0.000000e+00, %660 ], [ %879, %922 ]
  %940 = phi float [ 0.000000e+00, %180 ], [ 0.000000e+00, %208 ], [ 0.000000e+00, %227 ], [ 0.000000e+00, %660 ], [ %877, %922 ]
  %941 = phi float [ 0.000000e+00, %180 ], [ 0.000000e+00, %208 ], [ 0.000000e+00, %227 ], [ 0.000000e+00, %660 ], [ %874, %922 ]
  %942 = phi float [ 0.000000e+00, %180 ], [ 0.000000e+00, %208 ], [ 0.000000e+00, %227 ], [ 0.000000e+00, %660 ], [ %914, %922 ]
  %943 = phi float [ 0.000000e+00, %180 ], [ 0.000000e+00, %208 ], [ 0.000000e+00, %227 ], [ 0.000000e+00, %660 ], [ %912, %922 ]
  %944 = phi float [ 0.000000e+00, %180 ], [ 0.000000e+00, %208 ], [ 0.000000e+00, %227 ], [ 0.000000e+00, %660 ], [ %910, %922 ]
  %945 = phi float [ 0.000000e+00, %180 ], [ 0.000000e+00, %208 ], [ 0.000000e+00, %227 ], [ 0.000000e+00, %660 ], [ %907, %922 ]
  %946 = phi float [ 0.000000e+00, %180 ], [ 0.000000e+00, %208 ], [ 0.000000e+00, %227 ], [ 0.000000e+00, %660 ], [ %905, %922 ]
  %947 = phi float [ 0.000000e+00, %180 ], [ 0.000000e+00, %208 ], [ 0.000000e+00, %227 ], [ 0.000000e+00, %660 ], [ %902, %922 ]
  %948 = phi float [ 0.000000e+00, %180 ], [ 0.000000e+00, %208 ], [ 0.000000e+00, %227 ], [ 0.000000e+00, %660 ], [ %900, %922 ]
  %949 = phi float [ 0.000000e+00, %180 ], [ 0.000000e+00, %208 ], [ 0.000000e+00, %227 ], [ 0.000000e+00, %660 ], [ %898, %922 ]
  %950 = phi float [ 0.000000e+00, %180 ], [ 0.000000e+00, %208 ], [ 0.000000e+00, %227 ], [ 0.000000e+00, %660 ], [ %895, %922 ]
  %951 = phi i1 [ false, %180 ], [ false, %208 ], [ false, %227 ], [ false, %660 ], [ true, %922 ]
  %952 = phi float [ 1.000000e+00, %180 ], [ 1.000000e+00, %208 ], [ 1.000000e+00, %227 ], [ 0.000000e+00, %660 ], [ 1.000000e+00, %922 ]
  br i1 %951, label %1026, label %953, !dx.controlflow.hints !62

; <label>:953                                     ; preds = %923
  %954 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 48, i32 undef)  ; BufferLoad(srv,index,wot)
  %955 = extractvalue %dx.types.ResRet.i32 %954, 0
  %956 = extractvalue %dx.types.ResRet.i32 %954, 1
  %957 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 32, i32 undef)  ; BufferLoad(srv,index,wot)
  %958 = extractvalue %dx.types.ResRet.i32 %957, 0
  %959 = extractvalue %dx.types.ResRet.i32 %957, 1
  %960 = extractvalue %dx.types.ResRet.i32 %957, 2
  %961 = extractvalue %dx.types.ResRet.i32 %957, 3
  %962 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %963 = extractvalue %dx.types.ResRet.i32 %962, 0
  %964 = extractvalue %dx.types.ResRet.i32 %962, 1
  %965 = extractvalue %dx.types.ResRet.i32 %962, 2
  %966 = extractvalue %dx.types.ResRet.i32 %962, 3
  %967 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %968 = extractvalue %dx.types.ResRet.i32 %967, 0
  %969 = extractvalue %dx.types.ResRet.i32 %967, 1
  %970 = extractvalue %dx.types.ResRet.i32 %967, 2
  %971 = extractvalue %dx.types.ResRet.i32 %967, 3
  %972 = and i32 %968, 65535
  %973 = call float @dx.op.legacyF16ToF32(i32 131, i32 %972)  ; LegacyF16ToF32(value)
  %974 = lshr i32 %968, 16
  %975 = call float @dx.op.legacyF16ToF32(i32 131, i32 %974)  ; LegacyF16ToF32(value)
  %976 = and i32 %969, 65535
  %977 = call float @dx.op.legacyF16ToF32(i32 131, i32 %976)  ; LegacyF16ToF32(value)
  %978 = lshr i32 %969, 16
  %979 = call float @dx.op.legacyF16ToF32(i32 131, i32 %978)  ; LegacyF16ToF32(value)
  %980 = and i32 %970, 65535
  %981 = call float @dx.op.legacyF16ToF32(i32 131, i32 %980)  ; LegacyF16ToF32(value)
  %982 = lshr i32 %970, 16
  %983 = call float @dx.op.legacyF16ToF32(i32 131, i32 %982)  ; LegacyF16ToF32(value)
  %984 = and i32 %971, 65535
  %985 = call float @dx.op.legacyF16ToF32(i32 131, i32 %984)  ; LegacyF16ToF32(value)
  %986 = lshr i32 %971, 16
  %987 = call float @dx.op.legacyF16ToF32(i32 131, i32 %986)  ; LegacyF16ToF32(value)
  %988 = and i32 %963, 65535
  %989 = call float @dx.op.legacyF16ToF32(i32 131, i32 %988)  ; LegacyF16ToF32(value)
  %990 = lshr i32 %963, 16
  %991 = call float @dx.op.legacyF16ToF32(i32 131, i32 %990)  ; LegacyF16ToF32(value)
  %992 = and i32 %964, 65535
  %993 = call float @dx.op.legacyF16ToF32(i32 131, i32 %992)  ; LegacyF16ToF32(value)
  %994 = lshr i32 %964, 16
  %995 = call float @dx.op.legacyF16ToF32(i32 131, i32 %994)  ; LegacyF16ToF32(value)
  %996 = and i32 %965, 65535
  %997 = call float @dx.op.legacyF16ToF32(i32 131, i32 %996)  ; LegacyF16ToF32(value)
  %998 = lshr i32 %965, 16
  %999 = call float @dx.op.legacyF16ToF32(i32 131, i32 %998)  ; LegacyF16ToF32(value)
  %1000 = and i32 %966, 65535
  %1001 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1000)  ; LegacyF16ToF32(value)
  %1002 = lshr i32 %966, 16
  %1003 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1002)  ; LegacyF16ToF32(value)
  %1004 = and i32 %958, 65535
  %1005 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1004)  ; LegacyF16ToF32(value)
  %1006 = lshr i32 %958, 16
  %1007 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1006)  ; LegacyF16ToF32(value)
  %1008 = and i32 %959, 65535
  %1009 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1008)  ; LegacyF16ToF32(value)
  %1010 = lshr i32 %959, 16
  %1011 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1010)  ; LegacyF16ToF32(value)
  %1012 = and i32 %960, 65535
  %1013 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1012)  ; LegacyF16ToF32(value)
  %1014 = lshr i32 %960, 16
  %1015 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1014)  ; LegacyF16ToF32(value)
  %1016 = and i32 %961, 65535
  %1017 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1016)  ; LegacyF16ToF32(value)
  %1018 = lshr i32 %961, 16
  %1019 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1018)  ; LegacyF16ToF32(value)
  %1020 = and i32 %955, 65535
  %1021 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1020)  ; LegacyF16ToF32(value)
  %1022 = lshr i32 %955, 16
  %1023 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1022)  ; LegacyF16ToF32(value)
  %1024 = and i32 %956, 65535
  %1025 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1024)  ; LegacyF16ToF32(value)
  br label %1026

; <label>:1026                                    ; preds = %953, %923
  %1027 = phi float [ %924, %923 ], [ %989, %953 ]
  %1028 = phi float [ %925, %923 ], [ %987, %953 ]
  %1029 = phi float [ %926, %923 ], [ %985, %953 ]
  %1030 = phi float [ %927, %923 ], [ %983, %953 ]
  %1031 = phi float [ %928, %923 ], [ %981, %953 ]
  %1032 = phi float [ %929, %923 ], [ %979, %953 ]
  %1033 = phi float [ %930, %923 ], [ %977, %953 ]
  %1034 = phi float [ %931, %923 ], [ %975, %953 ]
  %1035 = phi float [ %932, %923 ], [ %973, %953 ]
  %1036 = phi float [ %942, %923 ], [ %1025, %953 ]
  %1037 = phi float [ %943, %923 ], [ %1023, %953 ]
  %1038 = phi float [ %944, %923 ], [ %1021, %953 ]
  %1039 = phi float [ %945, %923 ], [ %1019, %953 ]
  %1040 = phi float [ %946, %923 ], [ %1017, %953 ]
  %1041 = phi float [ %947, %923 ], [ %1015, %953 ]
  %1042 = phi float [ %948, %923 ], [ %1013, %953 ]
  %1043 = phi float [ %949, %923 ], [ %1011, %953 ]
  %1044 = phi float [ %950, %923 ], [ %1009, %953 ]
  %1045 = phi float [ %933, %923 ], [ %1007, %953 ]
  %1046 = phi float [ %934, %923 ], [ %1005, %953 ]
  %1047 = phi float [ %935, %923 ], [ %1003, %953 ]
  %1048 = phi float [ %936, %923 ], [ %1001, %953 ]
  %1049 = phi float [ %937, %923 ], [ %999, %953 ]
  %1050 = phi float [ %938, %923 ], [ %997, %953 ]
  %1051 = phi float [ %939, %923 ], [ %995, %953 ]
  %1052 = phi float [ %940, %923 ], [ %993, %953 ]
  %1053 = phi float [ %941, %923 ], [ %991, %953 ]
  %1054 = fmul fast float %952, 3.125000e-02
  %1055 = select i1 %951, float %952, float %1054
  br label %1129

; <label>:1056                                    ; preds = %178
  %1057 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 48, i32 undef)  ; BufferLoad(srv,index,wot)
  %1058 = extractvalue %dx.types.ResRet.i32 %1057, 0
  %1059 = extractvalue %dx.types.ResRet.i32 %1057, 1
  %1060 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 32, i32 undef)  ; BufferLoad(srv,index,wot)
  %1061 = extractvalue %dx.types.ResRet.i32 %1060, 0
  %1062 = extractvalue %dx.types.ResRet.i32 %1060, 1
  %1063 = extractvalue %dx.types.ResRet.i32 %1060, 2
  %1064 = extractvalue %dx.types.ResRet.i32 %1060, 3
  %1065 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %1066 = extractvalue %dx.types.ResRet.i32 %1065, 0
  %1067 = extractvalue %dx.types.ResRet.i32 %1065, 1
  %1068 = extractvalue %dx.types.ResRet.i32 %1065, 2
  %1069 = extractvalue %dx.types.ResRet.i32 %1065, 3
  %1070 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %1071 = extractvalue %dx.types.ResRet.i32 %1070, 0
  %1072 = extractvalue %dx.types.ResRet.i32 %1070, 1
  %1073 = extractvalue %dx.types.ResRet.i32 %1070, 2
  %1074 = extractvalue %dx.types.ResRet.i32 %1070, 3
  %1075 = and i32 %1071, 65535
  %1076 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1075)  ; LegacyF16ToF32(value)
  %1077 = lshr i32 %1071, 16
  %1078 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1077)  ; LegacyF16ToF32(value)
  %1079 = and i32 %1072, 65535
  %1080 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1079)  ; LegacyF16ToF32(value)
  %1081 = lshr i32 %1072, 16
  %1082 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1081)  ; LegacyF16ToF32(value)
  %1083 = and i32 %1073, 65535
  %1084 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1083)  ; LegacyF16ToF32(value)
  %1085 = lshr i32 %1073, 16
  %1086 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1085)  ; LegacyF16ToF32(value)
  %1087 = and i32 %1074, 65535
  %1088 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1087)  ; LegacyF16ToF32(value)
  %1089 = lshr i32 %1074, 16
  %1090 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1089)  ; LegacyF16ToF32(value)
  %1091 = and i32 %1066, 65535
  %1092 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1091)  ; LegacyF16ToF32(value)
  %1093 = lshr i32 %1066, 16
  %1094 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1093)  ; LegacyF16ToF32(value)
  %1095 = and i32 %1067, 65535
  %1096 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1095)  ; LegacyF16ToF32(value)
  %1097 = lshr i32 %1067, 16
  %1098 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1097)  ; LegacyF16ToF32(value)
  %1099 = and i32 %1068, 65535
  %1100 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1099)  ; LegacyF16ToF32(value)
  %1101 = lshr i32 %1068, 16
  %1102 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1101)  ; LegacyF16ToF32(value)
  %1103 = and i32 %1069, 65535
  %1104 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1103)  ; LegacyF16ToF32(value)
  %1105 = lshr i32 %1069, 16
  %1106 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1105)  ; LegacyF16ToF32(value)
  %1107 = and i32 %1061, 65535
  %1108 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1107)  ; LegacyF16ToF32(value)
  %1109 = lshr i32 %1061, 16
  %1110 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1109)  ; LegacyF16ToF32(value)
  %1111 = and i32 %1062, 65535
  %1112 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1111)  ; LegacyF16ToF32(value)
  %1113 = lshr i32 %1062, 16
  %1114 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1113)  ; LegacyF16ToF32(value)
  %1115 = and i32 %1063, 65535
  %1116 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1115)  ; LegacyF16ToF32(value)
  %1117 = lshr i32 %1063, 16
  %1118 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1117)  ; LegacyF16ToF32(value)
  %1119 = and i32 %1064, 65535
  %1120 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1119)  ; LegacyF16ToF32(value)
  %1121 = lshr i32 %1064, 16
  %1122 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1121)  ; LegacyF16ToF32(value)
  %1123 = and i32 %1058, 65535
  %1124 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1123)  ; LegacyF16ToF32(value)
  %1125 = lshr i32 %1058, 16
  %1126 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1125)  ; LegacyF16ToF32(value)
  %1127 = and i32 %1059, 65535
  %1128 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1127)  ; LegacyF16ToF32(value)
  br label %1129

; <label>:1129                                    ; preds = %1056, %1026
  %1130 = phi float [ %1092, %1056 ], [ %1027, %1026 ]
  %1131 = phi float [ %1090, %1056 ], [ %1028, %1026 ]
  %1132 = phi float [ %1088, %1056 ], [ %1029, %1026 ]
  %1133 = phi float [ %1086, %1056 ], [ %1030, %1026 ]
  %1134 = phi float [ %1084, %1056 ], [ %1031, %1026 ]
  %1135 = phi float [ %1082, %1056 ], [ %1032, %1026 ]
  %1136 = phi float [ %1080, %1056 ], [ %1033, %1026 ]
  %1137 = phi float [ %1078, %1056 ], [ %1034, %1026 ]
  %1138 = phi float [ %1076, %1056 ], [ %1035, %1026 ]
  %1139 = phi float [ %1128, %1056 ], [ %1036, %1026 ]
  %1140 = phi float [ %1126, %1056 ], [ %1037, %1026 ]
  %1141 = phi float [ %1124, %1056 ], [ %1038, %1026 ]
  %1142 = phi float [ %1122, %1056 ], [ %1039, %1026 ]
  %1143 = phi float [ %1120, %1056 ], [ %1040, %1026 ]
  %1144 = phi float [ %1118, %1056 ], [ %1041, %1026 ]
  %1145 = phi float [ %1116, %1056 ], [ %1042, %1026 ]
  %1146 = phi float [ %1114, %1056 ], [ %1043, %1026 ]
  %1147 = phi float [ %1112, %1056 ], [ %1044, %1026 ]
  %1148 = phi float [ %1110, %1056 ], [ %1045, %1026 ]
  %1149 = phi float [ %1108, %1056 ], [ %1046, %1026 ]
  %1150 = phi float [ %1106, %1056 ], [ %1047, %1026 ]
  %1151 = phi float [ %1104, %1056 ], [ %1048, %1026 ]
  %1152 = phi float [ %1102, %1056 ], [ %1049, %1026 ]
  %1153 = phi float [ %1100, %1056 ], [ %1050, %1026 ]
  %1154 = phi float [ %1098, %1056 ], [ %1051, %1026 ]
  %1155 = phi float [ %1096, %1056 ], [ %1052, %1026 ]
  %1156 = phi float [ %1094, %1056 ], [ %1053, %1026 ]
  %1157 = phi float [ 3.125000e-02, %1056 ], [ %1055, %1026 ]
  %1158 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 396)  ; CBufferLoadLegacy(handle,regIndex)
  %1159 = extractvalue %dx.types.CBufRet.f32 %1158, 2
  %1160 = fmul fast float %1159, %1159
  %1161 = fmul fast float %1138, 0x3FD20DD760000000
  %1162 = fmul fast float %123, %1136
  %1163 = fmul fast float %123, %123
  %1164 = fmul fast float %1163, 0x3FEE471020000000
  %1165 = fadd fast float %1164, 0xBFD42F6020000000
  %1166 = fmul fast float %1165, %1132
  %1167 = fmul fast float %121, %1135
  %1168 = fmul fast float %122, %1137
  %1169 = fmul fast float %123, 0x3FF17B1420000000
  %1170 = fmul fast float %1160, %1131
  %1171 = fmul fast float %1170, %121
  %1172 = fmul fast float %1171, %1169
  %1173 = fmul fast float %1160, %1133
  %1174 = fmul fast float %1173, %122
  %1175 = fmul fast float %1174, %1169
  %1176 = fmul fast float %121, %121
  %1177 = fmul fast float %122, %122
  %1178 = fsub fast float %1176, %1177
  %1179 = fmul fast float %1130, 0x3FE17B1420000000
  %1180 = fmul fast float %1179, %1178
  %1181 = fmul fast float %1134, 0x3FF17B1420000000
  %1182 = fmul fast float %1181, %122
  %1183 = fmul fast float %1182, %121
  %1184 = fadd fast float %1180, %1183
  %1185 = fadd fast float %1184, %1166
  %1186 = fmul fast float %1185, %1160
  %1187 = fsub fast float %1168, %1162
  %1188 = fadd fast float %1187, %1167
  %1189 = fmul fast float %1188, 0x3FDF454380000000
  %1190 = fmul fast float %1189, %1159
  %1191 = fsub fast float %1161, %1172
  %1192 = fsub fast float %1191, %1175
  %1193 = fadd fast float %1192, %1186
  %1194 = fadd fast float %1193, %1190
  %1195 = fmul fast float %1156, 0x3FD20DD760000000
  %1196 = fmul fast float %123, %1154
  %1197 = fmul fast float %1165, %1150
  %1198 = fmul fast float %121, %1153
  %1199 = fmul fast float %122, %1155
  %1200 = fmul fast float %1160, %1149
  %1201 = fmul fast float %1200, %121
  %1202 = fmul fast float %1201, %1169
  %1203 = fmul fast float %1160, %1151
  %1204 = fmul fast float %1203, %122
  %1205 = fmul fast float %1204, %1169
  %1206 = fmul fast float %1148, 0x3FE17B1420000000
  %1207 = fmul fast float %1206, %1178
  %1208 = fmul fast float %1152, 0x3FF17B1420000000
  %1209 = fmul fast float %1208, %122
  %1210 = fmul fast float %1209, %121
  %1211 = fadd fast float %1207, %1210
  %1212 = fadd fast float %1211, %1197
  %1213 = fmul fast float %1212, %1160
  %1214 = fsub fast float %1199, %1196
  %1215 = fadd fast float %1214, %1198
  %1216 = fmul fast float %1215, 0x3FDF454380000000
  %1217 = fmul fast float %1216, %1159
  %1218 = fsub fast float %1195, %1202
  %1219 = fsub fast float %1218, %1205
  %1220 = fadd fast float %1219, %1213
  %1221 = fadd fast float %1220, %1217
  %1222 = fmul fast float %1147, 0x3FD20DD760000000
  %1223 = fmul fast float %123, %1145
  %1224 = fmul fast float %1165, %1141
  %1225 = fmul fast float %121, %1144
  %1226 = fmul fast float %122, %1146
  %1227 = fmul fast float %1160, %1140
  %1228 = fmul fast float %1227, %121
  %1229 = fmul fast float %1228, %1169
  %1230 = fmul fast float %1160, %1142
  %1231 = fmul fast float %1230, %122
  %1232 = fmul fast float %1231, %1169
  %1233 = fmul fast float %1139, 0x3FE17B1420000000
  %1234 = fmul fast float %1233, %1178
  %1235 = fmul fast float %1143, 0x3FF17B1420000000
  %1236 = fmul fast float %1235, %122
  %1237 = fmul fast float %1236, %121
  %1238 = fadd fast float %1234, %1237
  %1239 = fadd fast float %1238, %1224
  %1240 = fmul fast float %1239, %1160
  %1241 = fsub fast float %1226, %1223
  %1242 = fadd fast float %1241, %1225
  %1243 = fmul fast float %1242, 0x3FDF454380000000
  %1244 = fmul fast float %1243, %1159
  %1245 = fsub fast float %1222, %1229
  %1246 = fsub fast float %1245, %1232
  %1247 = fadd fast float %1246, %1240
  %1248 = fadd fast float %1247, %1244
  %1249 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1250 = extractvalue %dx.types.CBufRet.f32 %1249, 3
  %1251 = extractvalue %dx.types.CBufRet.f32 %1249, 0
  %1252 = fmul fast float %1251, %1250
  %1253 = fmul fast float %1252, %1194
  %1254 = fmul fast float %1252, %1221
  %1255 = fmul fast float %1252, %1248
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %2, i32 %156, i32 undef, float %1253, float %1254, float %1255, float %1253, i8 15)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 %155, i32 undef, float %1157, float %1157, float %1157, float %1157, i8 15)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %1256

; <label>:1256                                    ; preds = %1129, %48
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @dx.op.threadId.i32(i32, i32) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32) #1

; Function Attrs: nounwind readnone
declare float @dx.op.binary.f32(i32, float, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.unary.f32(i32, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.dot2.f32(i32, float, float, float, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.dot3.f32(i32, float, float, float, float, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32, %dx.types.Handle, i32, i32) #1

; Function Attrs: nounwind readnone
declare i32 @dx.op.unaryBits.i32(i32, i32) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32, %dx.types.Handle, i32, i32) #1

; Function Attrs: nounwind
declare void @dx.op.bufferStore.f32(i32, %dx.types.Handle, i32, i32, float, float, float, float, i8) #2

; Function Attrs: nounwind readnone
declare float @dx.op.dot4.f32(i32, float, float, float, float, float, float, float, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.legacyF16ToF32(i32, i32) #0

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32, %dx.types.Handle, i32) #1

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32, %dx.types.Handle, i32) #1

; Function Attrs: nounwind readonly
declare %dx.types.Handle @dx.op.createHandle(i32, i8, i32, i32, i1) #1

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
!4 = !{!5, !24, !27, null}
!5 = !{!6, !8, !9, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !23}
!6 = !{i32 0, %"class.Texture2DArray<float>"* undef, !"", i32 0, i32 50, i32 1, i32 7, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, %"class.Texture2D<float>"* undef, !"", i32 0, i32 18, i32 1, i32 2, i32 0, !7}
!9 = !{i32 2, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 15, i32 1, i32 11, i32 0, null}
!10 = !{i32 3, %"class.StructuredBuffer<GfxGpuLightGridParams>"* undef, !"", i32 0, i32 27, i32 1, i32 12, i32 0, !11}
!11 = !{i32 1, i32 112}
!12 = !{i32 4, %"class.StructuredBuffer<GfxNeuralLightGridTopLevelNode>"* undef, !"", i32 0, i32 0, i32 1, i32 12, i32 0, !13}
!13 = !{i32 1, i32 16}
!14 = !{i32 5, %"class.Buffer<unsigned int>"* undef, !"", i32 0, i32 1, i32 1, i32 10, i32 0, !15}
!15 = !{i32 0, i32 5}
!16 = !{i32 6, %"class.StructuredBuffer<GfxNeuralLightGridInternalNode>"* undef, !"", i32 0, i32 2, i32 1, i32 12, i32 0, !13}
!17 = !{i32 7, %"class.Buffer<unsigned int>"* undef, !"", i32 0, i32 3, i32 1, i32 10, i32 0, !15}
!18 = !{i32 8, %"class.Buffer<unsigned int>"* undef, !"", i32 0, i32 4, i32 1, i32 10, i32 0, !15}
!19 = !{i32 9, %"class.Buffer<unsigned int>"* undef, !"", i32 0, i32 5, i32 1, i32 10, i32 0, !15}
!20 = !{i32 10, %"class.Buffer<vector<float, 4> >"* undef, !"", i32 0, i32 6, i32 1, i32 10, i32 0, !7}
!21 = !{i32 11, %"class.Buffer<unsigned int>"* undef, !"", i32 0, i32 7, i32 1, i32 10, i32 0, !15}
!22 = !{i32 12, %"class.Buffer<vector<float, 4> >"* undef, !"", i32 0, i32 8, i32 1, i32 10, i32 0, !7}
!23 = !{i32 13, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 9, i32 1, i32 11, i32 0, null}
!24 = !{!25, !26}
!25 = !{i32 0, %"class.RWBuffer<vector<float, 3> >"* undef, !"", i32 0, i32 3, i32 1, i32 10, i1 false, i1 false, i1 false, !7}
!26 = !{i32 1, %"class.RWBuffer<float>"* undef, !"", i32 0, i32 4, i32 1, i32 10, i1 false, i1 false, i1 false, !7}
!27 = !{!28, !29, !30}
!28 = !{i32 0, %VolumetricLightGridConstants* undef, !"", i32 0, i32 1, i32 1, i32 32, null}
!29 = !{i32 1, %GfxNeuralLightGridSetupConsts* undef, !"", i32 0, i32 4, i32 1, i32 80, null}
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
!43 = !{!44, !44, i64 0}
!44 = !{!"int", !45, i64 0}
!45 = !{!"omnipotent char", !46, i64 0}
!46 = !{!"Simple C/C++ TBAA"}
!47 = !{!48, !50, !51, !52, !53, !55, !56, !57}
!48 = distinct !{!48, !49, !"\01?LookupNeuralLightGrid@@YA_NUNeuralLightGridSetup@@UNeuralLightGridData@@V?$vector@M$02@@USH3Vec@@33AIAM_N@Z: %probeR"}
!49 = distinct !{!49, !"\01?LookupNeuralLightGrid@@YA_NUNeuralLightGridSetup@@UNeuralLightGridData@@V?$vector@M$02@@USH3Vec@@33AIAM_N@Z"}
!50 = distinct !{!50, !49, !"\01?LookupNeuralLightGrid@@YA_NUNeuralLightGridSetup@@UNeuralLightGridData@@V?$vector@M$02@@USH3Vec@@33AIAM_N@Z: %probeG"}
!51 = distinct !{!51, !49, !"\01?LookupNeuralLightGrid@@YA_NUNeuralLightGridSetup@@UNeuralLightGridData@@V?$vector@M$02@@USH3Vec@@33AIAM_N@Z: %probeB"}
!52 = distinct !{!52, !49, !"\01?LookupNeuralLightGrid@@YA_NUNeuralLightGridSetup@@UNeuralLightGridData@@V?$vector@M$02@@USH3Vec@@33AIAM_N@Z: %probeA"}
!53 = distinct !{!53, !54, !"\01?LookupLightingNeuralLG@@YA_NV?$vector@M$02@@USH3Vec@@11AIAM_N@Z: %redSH"}
!54 = distinct !{!54, !"\01?LookupLightingNeuralLG@@YA_NV?$vector@M$02@@USH3Vec@@11AIAM_N@Z"}
!55 = distinct !{!55, !54, !"\01?LookupLightingNeuralLG@@YA_NV?$vector@M$02@@USH3Vec@@11AIAM_N@Z: %greenSH"}
!56 = distinct !{!56, !54, !"\01?LookupLightingNeuralLG@@YA_NV?$vector@M$02@@USH3Vec@@11AIAM_N@Z: %blueSH"}
!57 = distinct !{!57, !54, !"\01?LookupLightingNeuralLG@@YA_NV?$vector@M$02@@USH3Vec@@11AIAM_N@Z: %probeA"}
!58 = !{!48, !50, !51, !52, !57}
!59 = !{!60, !60, i64 0}
!60 = !{!"float", !45, i64 0}
!61 = distinct !{!61, !"dx.controlflow.hints", i32 2}
!62 = distinct !{!62, !"dx.controlflow.hints", i32 2}

