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
; shader hash: d81c20d0b482fa052c8fa14a2c3058b4
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
;                                   sampler      NA          NA      S0             s2     1
;                                   sampler      NA          NA      S1             s4     1
;                                   texture     f32          3d      T0            t14     1
;                                   texture     f32     2darray      T1            t50     1
;                                   texture     f32     2darray      T2            t21     1
;                                   texture     f32          2d      T3            t18     1
;                                   texture    byte         r/o      T4            t15     1
;                                   texture  struct         r/o      T5             t0     1
;                                   texture     u32         buf      T6             t1     1
;                                   texture  struct         r/o      T7             t2     1
;                                   texture     u32         buf      T8             t3     1
;                                   texture     u32         buf      T9             t4     1
;                                   texture     u32         buf     T10             t5     1
;                                   texture     f32         buf     T11             t6     1
;                                   texture     u32         buf     T12             t7     1
;                                   texture     f32         buf     T13             t8     1
;                                   texture    byte         r/o     T14             t9     1
;                                       UAV     f32          3d      U0             u0     1
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.CBufRet.i32 = type { i32, i32, i32, i32 }
%dx.types.ResRet.f32 = type { float, float, float, float, i32 }
%dx.types.CBufRet.f32 = type { float, float, float, float }
%dx.types.ResRet.i32 = type { i32, i32, i32, i32, i32 }
%"class.Texture3D<vector<float, 3> >" = type { <3 x float>, %"class.Texture3D<vector<float, 3> >::mips_type" }
%"class.Texture3D<vector<float, 3> >::mips_type" = type { i32 }
%"class.Texture2DArray<float>" = type { float, %"class.Texture2DArray<float>::mips_type" }
%"class.Texture2DArray<float>::mips_type" = type { i32 }
%"class.Texture2D<float>" = type { float, %"class.Texture2D<float>::mips_type" }
%"class.Texture2D<float>::mips_type" = type { i32 }
%struct.ByteAddressBuffer = type { i32 }
%"class.StructuredBuffer<GfxNeuralLightGridTopLevelNode>" = type { %struct.GfxNeuralLightGridTopLevelNode }
%struct.GfxNeuralLightGridTopLevelNode = type { i32, i32, i32, i32 }
%"class.Buffer<unsigned int>" = type { i32 }
%"class.StructuredBuffer<GfxNeuralLightGridInternalNode>" = type { %struct.GfxNeuralLightGridInternalNode }
%struct.GfxNeuralLightGridInternalNode = type { <2 x i32>, <2 x i32> }
%"class.Buffer<vector<float, 4> >" = type { <4 x float> }
%"class.RWTexture3D<vector<float, 3> >" = type { <3 x float> }
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
%struct.SamplerState = type { i32 }

define void @cs_vol_sh_sample_lightgrid_isotropic() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 14, i32 9, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 13, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 12, i32 7, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 11, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 15, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 18, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 21, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 50, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 14, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 2, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %21 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %22 = call i32 @dx.op.threadId.i32(i32 93, i32 0)  ; ThreadId(component)
  %23 = call i32 @dx.op.threadId.i32(i32 93, i32 1)  ; ThreadId(component)
  %24 = call i32 @dx.op.threadId.i32(i32 93, i32 2)  ; ThreadId(component)
  %25 = alloca [8 x float], align 4
  %26 = alloca [8 x i32], align 4
  %27 = alloca [8 x float], align 4
  %28 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %19, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %29 = extractvalue %dx.types.CBufRet.i32 %28, 0
  %30 = extractvalue %dx.types.CBufRet.i32 %28, 1
  %31 = extractvalue %dx.types.CBufRet.i32 %28, 2
  %32 = add i32 %29, 3
  %33 = add i32 %30, 3
  %34 = add i32 %31, 3
  %35 = lshr i32 %32, 2
  %36 = lshr i32 %33, 2
  %37 = lshr i32 %34, 2
  %38 = icmp uge i32 %22, %35
  %39 = icmp uge i32 %23, %36
  %40 = icmp uge i32 %24, %37
  %41 = or i1 %38, %39
  %42 = or i1 %40, %41
  br i1 %42, label %50, label %43, !dx.controlflow.hints !36

; <label>:43                                      ; preds = %0
  %44 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %15, i32 0, i32 %22, i32 %23, i32 0, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %45 = extractvalue %dx.types.ResRet.f32 %44, 0
  %46 = fmul fast float %45, 2.550000e+02
  %47 = fadd fast float %46, 0x3F70101020000000
  %48 = fptoui float %47 to i32
  %49 = icmp ule i32 %24, %48
  br label %50

; <label>:50                                      ; preds = %43, %0
  %51 = phi i1 [ %49, %43 ], [ false, %0 ]
  br i1 %51, label %52, label %859, !dx.controlflow.hints !37

; <label>:52                                      ; preds = %50
  %53 = uitofp i32 %22 to float
  %54 = uitofp i32 %23 to float
  %55 = uitofp i32 %24 to float
  %56 = fadd fast float %53, 5.000000e-01
  %57 = fadd fast float %54, 5.000000e-01
  %58 = fadd fast float %55, 5.000000e-01
  %59 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %19, i32 395)  ; CBufferLoadLegacy(handle,regIndex)
  %60 = extractvalue %dx.types.CBufRet.i32 %59, 3
  %61 = add i32 %60, %24
  %62 = and i32 %61, 7
  switch i32 %62, label %70 [
    i32 0, label %71
    i32 1, label %63
    i32 2, label %64
    i32 3, label %65
    i32 4, label %66
    i32 5, label %67
    i32 6, label %68
    i32 7, label %69
  ], !dx.controlflow.hints !38

; <label>:63                                      ; preds = %52
  br label %71

; <label>:64                                      ; preds = %52
  br label %71

; <label>:65                                      ; preds = %52
  br label %71

; <label>:66                                      ; preds = %52
  br label %71

; <label>:67                                      ; preds = %52
  br label %71

; <label>:68                                      ; preds = %52
  br label %71

; <label>:69                                      ; preds = %52
  br label %71

; <label>:70                                      ; preds = %52
  br label %71

; <label>:71                                      ; preds = %70, %69, %68, %67, %66, %65, %64, %63, %52
  %72 = phi float [ 0.000000e+00, %70 ], [ 0xBFAAFDA2C0000000, %69 ], [ 0xBFDC840460000000, %68 ], [ 0x3FAD325520000000, %67 ], [ 0xBFC0D2F360000000, %66 ], [ 0x3FD3DBFA80000000, %65 ], [ 0xBFD546BCA0000000, %64 ], [ 0x3FDD88B380000000, %63 ], [ 0xBF98669800000000, %52 ]
  %73 = phi float [ 0.000000e+00, %70 ], [ 0xBFB3D00D00000000, %69 ], [ 0xBFD1E41C40000000, %68 ], [ 0xBFCDD22A60000000, %67 ], [ 0x3FBD22CF20000000, %66 ], [ 0x3FBA443A80000000, %65 ], [ 0x3FDB80DE80000000, %64 ], [ 0xBFB1C6F4E0000000, %63 ], [ 0xBFDDE0E000000000, %52 ]
  %74 = phi float [ 0.000000e+00, %70 ], [ 0xBFD38FB280000000, %69 ], [ 0xBF8D0A4580000000, %68 ], [ 0x3FD36603C0000000, %67 ], [ 0x3FBA950300000000, %66 ], [ 0xBFC14853E0000000, %65 ], [ 0x3FDBE53FA0000000, %64 ], [ 0x3FD8D79020000000, %63 ], [ 0xBFC22590A0000000, %52 ]
  %75 = fadd fast float %56, %72
  %76 = fadd fast float %57, %73
  %77 = fadd fast float %58, %74
  %78 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %79 = extractvalue %dx.types.CBufRet.f32 %78, 0
  %80 = extractvalue %dx.types.CBufRet.f32 %78, 1
  %81 = fmul fast float %77, 4.000000e+00
  %82 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %83 = extractvalue %dx.types.CBufRet.f32 %82, 0
  %84 = extractvalue %dx.types.CBufRet.f32 %82, 1
  %85 = fmul fast float %81, %84
  %86 = call float @dx.op.unary.f32(i32 21, float %85)  ; Exp(value)
  %87 = fmul fast float %86, %83
  %88 = fsub fast float 4.000000e+00, %83
  %89 = fadd fast float %88, %87
  %90 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %13, i32 0, i32 %22, i32 %23, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %91 = extractvalue %dx.types.ResRet.f32 %90, 0
  %92 = fcmp fast ogt float %91, -1.000000e+00
  %93 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %94 = extractvalue %dx.types.CBufRet.f32 %93, 1
  %95 = select i1 %92, float %94, float 1.000000e+00
  %96 = fadd fast float %91, 1.000000e+00
  %97 = fmul fast float %95, %96
  %98 = call float @dx.op.binary.f32(i32 36, float %89, float %97)  ; FMin(a,b)
  %99 = fmul fast float %75, 8.000000e+00
  %100 = fmul fast float %99, %79
  %101 = fmul fast float %76, 8.000000e+00
  %102 = fmul fast float %101, %80
  %103 = fsub fast float 1.000000e+00, %100
  %104 = fsub fast float 1.000000e+00, %102
  %105 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %106 = extractvalue %dx.types.CBufRet.f32 %105, 0
  %107 = extractvalue %dx.types.CBufRet.f32 %105, 1
  %108 = extractvalue %dx.types.CBufRet.f32 %105, 2
  %109 = fmul fast float %106, %103
  %110 = fmul fast float %107, %103
  %111 = fmul fast float %108, %103
  %112 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %113 = extractvalue %dx.types.CBufRet.f32 %112, 0
  %114 = extractvalue %dx.types.CBufRet.f32 %112, 1
  %115 = extractvalue %dx.types.CBufRet.f32 %112, 2
  %116 = fmul fast float %113, %104
  %117 = fmul fast float %114, %104
  %118 = fmul fast float %115, %104
  %119 = fadd fast float %116, %109
  %120 = fadd fast float %117, %110
  %121 = fadd fast float %118, %111
  %122 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %123 = extractvalue %dx.types.CBufRet.f32 %122, 0
  %124 = extractvalue %dx.types.CBufRet.f32 %122, 1
  %125 = extractvalue %dx.types.CBufRet.f32 %122, 2
  %126 = fadd fast float %119, %123
  %127 = fadd fast float %120, %124
  %128 = fadd fast float %121, %125
  %129 = fmul fast float %126, %98
  %130 = fmul fast float %127, %98
  %131 = fmul fast float %128, %98
  %132 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %133 = extractvalue %dx.types.CBufRet.f32 %132, 0
  %134 = extractvalue %dx.types.CBufRet.f32 %132, 1
  %135 = extractvalue %dx.types.CBufRet.f32 %132, 2
  %136 = fadd fast float %129, %133
  %137 = fadd fast float %130, %134
  %138 = fadd fast float %131, %135
  %139 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 394)  ; CBufferLoadLegacy(handle,regIndex)
  %140 = extractvalue %dx.types.CBufRet.f32 %139, 3
  %141 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %142 = extractvalue %dx.types.CBufRet.i32 %141, 3
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %234, label %144, !dx.controlflow.hints !39

; <label>:144                                     ; preds = %71
  %145 = fmul fast float %58, 4.000000e+00
  %146 = fmul fast float %145, %84
  %147 = call float @dx.op.unary.f32(i32 21, float %146)  ; Exp(value)
  %148 = fmul fast float %147, %83
  %149 = fadd fast float %88, %148
  %150 = fmul fast float %56, 8.000000e+00
  %151 = fmul fast float %150, %79
  %152 = fmul fast float %57, 8.000000e+00
  %153 = fmul fast float %152, %80
  %154 = fsub fast float 1.000000e+00, %151
  %155 = fsub fast float 1.000000e+00, %153
  %156 = fmul fast float %106, %154
  %157 = fmul fast float %107, %154
  %158 = fmul fast float %108, %154
  %159 = fmul fast float %113, %155
  %160 = fmul fast float %114, %155
  %161 = fmul fast float %115, %155
  %162 = fadd fast float %159, %156
  %163 = fadd fast float %160, %157
  %164 = fadd fast float %161, %158
  %165 = fadd fast float %162, %123
  %166 = fadd fast float %163, %124
  %167 = fadd fast float %164, %125
  %168 = fmul fast float %165, %149
  %169 = fmul fast float %166, %149
  %170 = fmul fast float %167, %149
  %171 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 385)  ; CBufferLoadLegacy(handle,regIndex)
  %172 = extractvalue %dx.types.CBufRet.f32 %171, 0
  %173 = extractvalue %dx.types.CBufRet.f32 %171, 1
  %174 = extractvalue %dx.types.CBufRet.f32 %171, 3
  %175 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 386)  ; CBufferLoadLegacy(handle,regIndex)
  %176 = extractvalue %dx.types.CBufRet.f32 %175, 0
  %177 = extractvalue %dx.types.CBufRet.f32 %175, 1
  %178 = extractvalue %dx.types.CBufRet.f32 %175, 3
  %179 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 387)  ; CBufferLoadLegacy(handle,regIndex)
  %180 = extractvalue %dx.types.CBufRet.f32 %179, 0
  %181 = extractvalue %dx.types.CBufRet.f32 %179, 1
  %182 = extractvalue %dx.types.CBufRet.f32 %179, 3
  %183 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 388)  ; CBufferLoadLegacy(handle,regIndex)
  %184 = extractvalue %dx.types.CBufRet.f32 %183, 0
  %185 = extractvalue %dx.types.CBufRet.f32 %183, 1
  %186 = extractvalue %dx.types.CBufRet.f32 %183, 3
  %187 = fmul fast float %168, %172
  %188 = call float @dx.op.tertiary.f32(i32 46, float %176, float %169, float %187)  ; FMad(a,b,c)
  %189 = call float @dx.op.tertiary.f32(i32 46, float %180, float %170, float %188)  ; FMad(a,b,c)
  %190 = fadd fast float %189, %184
  %191 = fmul fast float %168, %173
  %192 = call float @dx.op.tertiary.f32(i32 46, float %177, float %169, float %191)  ; FMad(a,b,c)
  %193 = call float @dx.op.tertiary.f32(i32 46, float %181, float %170, float %192)  ; FMad(a,b,c)
  %194 = fadd fast float %193, %185
  %195 = fmul fast float %168, %174
  %196 = call float @dx.op.tertiary.f32(i32 46, float %178, float %169, float %195)  ; FMad(a,b,c)
  %197 = call float @dx.op.tertiary.f32(i32 46, float %182, float %170, float %196)  ; FMad(a,b,c)
  %198 = fadd fast float %197, %186
  %199 = fmul fast float %190, 5.000000e-01
  %200 = fdiv fast float %199, %198
  %201 = fadd fast float %200, 5.000000e-01
  %202 = fmul fast float %194, -5.000000e-01
  %203 = fdiv fast float %202, %198
  %204 = fadd fast float %203, 5.000000e-01
  %205 = extractvalue %dx.types.CBufRet.f32 %82, 2
  %206 = extractvalue %dx.types.CBufRet.f32 %82, 3
  %207 = fadd fast float %198, -4.000000e+00
  %208 = call float @dx.op.binary.f32(i32 35, float %207, float 0.000000e+00)  ; FMax(a,b)
  %209 = fadd fast float %208, %83
  %210 = fmul fast float %209, %205
  %211 = call float @dx.op.unary.f32(i32 23, float %210)  ; Log(value)
  %212 = fmul fast float %211, %206
  %213 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %214 = extractvalue %dx.types.CBufRet.f32 %213, 2
  %215 = fmul fast float %212, %214
  %216 = call float @dx.op.unary.f32(i32 27, float %201)  ; Round_ni(value)
  %217 = call float @dx.op.unary.f32(i32 6, float %216)  ; FAbs(value)
  %218 = call float @dx.op.unary.f32(i32 27, float %204)  ; Round_ni(value)
  %219 = call float @dx.op.unary.f32(i32 6, float %218)  ; FAbs(value)
  %220 = fadd fast float %219, %217
  %221 = call float @dx.op.unary.f32(i32 27, float %215)  ; Round_ni(value)
  %222 = call float @dx.op.unary.f32(i32 6, float %221)  ; FAbs(value)
  %223 = fadd fast float %220, %222
  %224 = fcmp fast oeq float %223, 0.000000e+00
  %225 = zext i1 %224 to i32
  br i1 %224, label %226, label %234, !dx.controlflow.hints !40

; <label>:226                                     ; preds = %144
  %227 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %14, i32 0, i32 %22, i32 %23, i32 0, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %228 = extractvalue %dx.types.ResRet.f32 %227, 0
  %229 = fmul fast float %228, 2.550000e+02
  %230 = fadd fast float %229, 0x3F70101020000000
  %231 = fptoui float %230 to i32
  %232 = icmp ule i32 %24, %231
  %233 = zext i1 %232 to i32
  br label %234

; <label>:234                                     ; preds = %226, %144, %71
  %235 = phi float [ %201, %226 ], [ %201, %144 ], [ 0.000000e+00, %71 ]
  %236 = phi float [ %204, %226 ], [ %204, %144 ], [ 0.000000e+00, %71 ]
  %237 = phi float [ %215, %226 ], [ %215, %144 ], [ 0.000000e+00, %71 ]
  %238 = phi i32 [ %233, %226 ], [ %225, %144 ], [ 0, %71 ]
  %239 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %240 = extractvalue %dx.types.CBufRet.f32 %239, 0
  %241 = extractvalue %dx.types.CBufRet.f32 %239, 1
  %242 = extractvalue %dx.types.CBufRet.f32 %239, 2
  %243 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %244 = extractvalue %dx.types.CBufRet.f32 %243, 0
  %245 = extractvalue %dx.types.CBufRet.f32 %243, 1
  %246 = extractvalue %dx.types.CBufRet.f32 %243, 2
  %247 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %248 = extractvalue %dx.types.CBufRet.i32 %247, 1
  %249 = fsub fast float %136, %240
  %250 = fsub fast float %137, %241
  %251 = fsub fast float %138, %242
  %252 = fmul fast float %249, %244
  %253 = fmul fast float %250, %245
  %254 = fmul fast float %251, %246
  %255 = fcmp fast ole float %252, 0.000000e+00
  %256 = fcmp fast ole float %253, 0.000000e+00
  %257 = fcmp fast ole float %254, 0.000000e+00
  %258 = or i1 %255, %256
  %259 = or i1 %257, %258
  %260 = fcmp fast oge float %252, 1.000000e+00
  %261 = fcmp fast oge float %253, 1.000000e+00
  %262 = fcmp fast oge float %254, 1.000000e+00
  %263 = or i1 %260, %261
  %264 = or i1 %262, %263
  %265 = or i1 %259, %264
  br i1 %265, label %781, label %266, !dx.controlflow.hints !41

; <label>:266                                     ; preds = %234
  %267 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %268 = extractvalue %dx.types.CBufRet.i32 %267, 0
  %269 = fptosi float %249 to i32
  %270 = fptosi float %250 to i32
  %271 = fptosi float %251 to i32
  %272 = and i32 %248, 31
  %273 = ashr i32 %269, %272
  %274 = ashr i32 %270, %272
  %275 = ashr i32 %271, %272
  %276 = mul i32 %268, %274
  %277 = add nsw i32 %276, %273
  %278 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %277, i32 0)  ; BufferLoad(srv,index,wot)
  %279 = extractvalue %dx.types.ResRet.i32 %278, 0
  %280 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %277, i32 4)  ; BufferLoad(srv,index,wot)
  %281 = extractvalue %dx.types.ResRet.i32 %280, 0
  %282 = icmp slt i32 %275, %279
  %283 = icmp sgt i32 %275, %281
  %284 = or i1 %282, %283
  br i1 %284, label %781, label %285, !dx.controlflow.hints !42

; <label>:285                                     ; preds = %266
  %286 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %277, i32 8)  ; BufferLoad(srv,index,wot)
  %287 = extractvalue %dx.types.ResRet.i32 %286, 0
  %288 = sub i32 %275, %279
  %289 = add nsw i32 %288, %287
  %290 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %289, i32 undef)  ; BufferLoad(srv,index,wot)
  %291 = extractvalue %dx.types.ResRet.i32 %290, 0
  %292 = icmp eq i32 %291, -1
  br i1 %292, label %781, label %293, !dx.controlflow.hints !43

; <label>:293                                     ; preds = %285
  %294 = getelementptr inbounds [8 x i32], [8 x i32]* %26, i32 0, i32 0
  store i32 -1, i32* %294, align 4, !tbaa !44, !noalias !48
  %295 = getelementptr inbounds [8 x i32], [8 x i32]* %26, i32 0, i32 1
  store i32 -1, i32* %295, align 4, !tbaa !44, !noalias !48
  %296 = getelementptr inbounds [8 x i32], [8 x i32]* %26, i32 0, i32 2
  store i32 -1, i32* %296, align 4, !tbaa !44, !noalias !48
  %297 = getelementptr inbounds [8 x i32], [8 x i32]* %26, i32 0, i32 3
  store i32 -1, i32* %297, align 4, !tbaa !44, !noalias !48
  %298 = getelementptr inbounds [8 x i32], [8 x i32]* %26, i32 0, i32 4
  store i32 -1, i32* %298, align 4, !tbaa !44, !noalias !48
  %299 = getelementptr inbounds [8 x i32], [8 x i32]* %26, i32 0, i32 5
  store i32 -1, i32* %299, align 4, !tbaa !44, !noalias !48
  %300 = getelementptr inbounds [8 x i32], [8 x i32]* %26, i32 0, i32 6
  store i32 -1, i32* %300, align 4, !tbaa !44, !noalias !59
  %301 = getelementptr inbounds [8 x i32], [8 x i32]* %26, i32 0, i32 7
  store i32 -1, i32* %301, align 4, !tbaa !44, !noalias !59
  br label %302

; <label>:302                                     ; preds = %406, %293
  %303 = phi i32 [ -1, %293 ], [ %403, %406 ]
  %304 = phi i32 [ -1, %293 ], [ %398, %406 ]
  %305 = phi i32 [ -1, %293 ], [ %391, %406 ]
  %306 = phi i32 [ -1, %293 ], [ %386, %406 ]
  %307 = phi i32 [ -1, %293 ], [ %377, %406 ]
  %308 = phi i32 [ -1, %293 ], [ %372, %406 ]
  %309 = phi i32 [ -1, %293 ], [ %364, %406 ]
  %310 = phi i32 [ -1, %293 ], [ %357, %406 ]
  %311 = phi i32 [ %291, %293 ], [ %426, %406 ]
  %312 = phi i32 [ %248, %293 ], [ %313, %406 ]
  %313 = add nsw i32 %312, -2
  %314 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %311, i32 undef)  ; BufferLoad(srv,index,wot)
  %315 = extractvalue %dx.types.ResRet.i32 %314, 0
  %316 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %311, i32 undef)  ; BufferLoad(srv,index,wot)
  %317 = extractvalue %dx.types.ResRet.i32 %316, 0
  %318 = and i32 %315, 31
  %319 = shl i32 1, %318
  %320 = add i32 %319, 1
  %321 = and i32 %313, 31
  %322 = ashr i32 %269, %321
  %323 = ashr i32 %270, %321
  %324 = ashr i32 %271, %321
  %325 = and i32 %322, 3
  %326 = and i32 %323, 3
  %327 = and i32 %324, 3
  br label %328

; <label>:328                                     ; preds = %328, %302
  %329 = phi i32 [ %303, %302 ], [ %403, %328 ]
  %330 = phi i32 [ %304, %302 ], [ %398, %328 ]
  %331 = phi i32 [ %305, %302 ], [ %391, %328 ]
  %332 = phi i32 [ %306, %302 ], [ %386, %328 ]
  %333 = phi i32 [ %307, %302 ], [ %377, %328 ]
  %334 = phi i32 [ %308, %302 ], [ %372, %328 ]
  %335 = phi i32 [ %309, %302 ], [ %364, %328 ]
  %336 = phi i32 [ %310, %302 ], [ %357, %328 ]
  %337 = phi i32 [ 0, %302 ], [ %404, %328 ]
  %338 = sub i32 2, %337
  %339 = and i32 %338, 31
  %340 = lshr i32 %325, %339
  %341 = lshr i32 %326, %339
  %342 = lshr i32 %327, %339
  %343 = sub i32 %315, %337
  %344 = and i32 %343, 31
  %345 = shl i32 %340, %344
  %346 = shl i32 %341, %344
  %347 = shl i32 %342, %344
  %348 = shl i32 1, %344
  %349 = mul i32 %347, %320
  %350 = add i32 %349, %346
  %351 = mul i32 %350, %320
  %352 = add i32 %345, %317
  %353 = add i32 %352, %351
  %354 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %353, i32 undef)  ; BufferLoad(srv,index,wot)
  %355 = extractvalue %dx.types.ResRet.i32 %354, 0
  %356 = icmp ne i32 %355, -1
  %357 = select i1 %356, i32 %355, i32 %336
  store i32 %357, i32* %294, align 4, !tbaa !44, !noalias !48
  %358 = add i32 %348, %317
  %359 = add i32 %358, %345
  %360 = add i32 %359, %351
  %361 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %360, i32 undef)  ; BufferLoad(srv,index,wot)
  %362 = extractvalue %dx.types.ResRet.i32 %361, 0
  %363 = icmp ne i32 %362, -1
  %364 = select i1 %363, i32 %362, i32 %335
  store i32 %364, i32* %295, align 4, !tbaa !44, !noalias !48
  %365 = add i32 %346, %348
  %366 = add i32 %365, %349
  %367 = mul i32 %366, %320
  %368 = add i32 %352, %367
  %369 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %368, i32 undef)  ; BufferLoad(srv,index,wot)
  %370 = extractvalue %dx.types.ResRet.i32 %369, 0
  %371 = icmp ne i32 %370, -1
  %372 = select i1 %371, i32 %370, i32 %334
  store i32 %372, i32* %296, align 4, !tbaa !44, !noalias !48
  %373 = add i32 %359, %367
  %374 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %373, i32 undef)  ; BufferLoad(srv,index,wot)
  %375 = extractvalue %dx.types.ResRet.i32 %374, 0
  %376 = icmp ne i32 %375, -1
  %377 = select i1 %376, i32 %375, i32 %333
  store i32 %377, i32* %297, align 4, !tbaa !44, !noalias !48
  %378 = add i32 %347, %348
  %379 = mul i32 %378, %320
  %380 = add i32 %379, %346
  %381 = mul i32 %380, %320
  %382 = add i32 %352, %381
  %383 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %382, i32 undef)  ; BufferLoad(srv,index,wot)
  %384 = extractvalue %dx.types.ResRet.i32 %383, 0
  %385 = icmp ne i32 %384, -1
  %386 = select i1 %385, i32 %384, i32 %332
  store i32 %386, i32* %298, align 4, !tbaa !44, !noalias !48
  %387 = add i32 %359, %381
  %388 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %387, i32 undef)  ; BufferLoad(srv,index,wot)
  %389 = extractvalue %dx.types.ResRet.i32 %388, 0
  %390 = icmp ne i32 %389, -1
  %391 = select i1 %390, i32 %389, i32 %331
  store i32 %391, i32* %299, align 4, !tbaa !44, !noalias !48
  %392 = add i32 %365, %379
  %393 = mul i32 %392, %320
  %394 = add i32 %352, %393
  %395 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %394, i32 undef)  ; BufferLoad(srv,index,wot)
  %396 = extractvalue %dx.types.ResRet.i32 %395, 0
  %397 = icmp ne i32 %396, -1
  %398 = select i1 %397, i32 %396, i32 %330
  store i32 %398, i32* %300, align 4, !tbaa !44, !noalias !48
  %399 = add i32 %359, %393
  %400 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %399, i32 undef)  ; BufferLoad(srv,index,wot)
  %401 = extractvalue %dx.types.ResRet.i32 %400, 0
  %402 = icmp ne i32 %401, -1
  %403 = select i1 %402, i32 %401, i32 %329
  store i32 %403, i32* %301, align 4, !tbaa !44, !noalias !48
  %404 = add i32 %337, 1
  %405 = icmp ugt i32 %404, %315
  br i1 %405, label %406, label %328

; <label>:406                                     ; preds = %328
  %407 = shl nuw nsw i32 %327, 4
  %408 = shl nuw nsw i32 %326, 2
  %409 = lshr i32 %327, 1
  %410 = and i32 %407, 16
  %411 = or i32 %408, %325
  %412 = or i32 %411, %410
  %413 = shl i32 1, %412
  %414 = shl nuw nsw i32 %409, 2
  %415 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %311, i32 %414)  ; BufferLoad(srv,index,wot)
  %416 = extractvalue %dx.types.ResRet.i32 %415, 0
  %417 = and i32 %416, %413
  %418 = icmp eq i32 %417, 0
  %419 = add i32 %413, -1
  %420 = and i32 %416, %419
  %421 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %420)  ; Countbits(value)
  %422 = or i32 %414, 8
  %423 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %311, i32 %422)  ; BufferLoad(srv,index,wot)
  %424 = extractvalue %dx.types.ResRet.i32 %423, 0
  %425 = add i32 %424, %421
  %426 = select i1 %418, i32 -1, i32 %425
  %427 = icmp eq i32 %426, -1
  br i1 %427, label %428, label %302

; <label>:428                                     ; preds = %406
  br label %429

; <label>:429                                     ; preds = %715, %428
  %430 = phi i32 [ %717, %715 ], [ %357, %428 ]
  %431 = phi float [ %712, %715 ], [ 0.000000e+00, %428 ]
  %432 = phi i32 [ %713, %715 ], [ 0, %428 ]
  %433 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %430, i32 undef)  ; BufferLoad(srv,index,wot)
  %434 = extractvalue %dx.types.ResRet.f32 %433, 0
  %435 = extractvalue %dx.types.ResRet.f32 %433, 1
  %436 = extractvalue %dx.types.ResRet.f32 %433, 2
  %437 = extractvalue %dx.types.ResRet.f32 %433, 3
  %438 = fsub fast float %136, %434
  %439 = fsub fast float %137, %435
  %440 = fsub fast float %138, %436
  %441 = fmul fast float %438, %437
  %442 = fmul fast float %439, %437
  %443 = fmul fast float %440, %437
  %444 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %430, i32 undef)  ; BufferLoad(srv,index,wot)
  %445 = extractvalue %dx.types.ResRet.i32 %444, 0
  %446 = call float @dx.op.unary.f32(i32 6, float %441)  ; FAbs(value)
  %447 = call float @dx.op.unary.f32(i32 6, float %442)  ; FAbs(value)
  %448 = fsub fast float 1.000000e+00, %446
  %449 = fsub fast float 1.000000e+00, %447
  %450 = call float @dx.op.unary.f32(i32 7, float %448)  ; Saturate(value)
  %451 = call float @dx.op.unary.f32(i32 7, float %449)  ; Saturate(value)
  %452 = fmul fast float %451, %450
  %453 = mul i32 %445, 29
  %454 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %453, i32 undef)  ; BufferLoad(srv,index,wot)
  %455 = extractvalue %dx.types.ResRet.f32 %454, 0
  %456 = extractvalue %dx.types.ResRet.f32 %454, 1
  %457 = extractvalue %dx.types.ResRet.f32 %454, 2
  %458 = extractvalue %dx.types.ResRet.f32 %454, 3
  %459 = add i32 %453, 1
  %460 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %459, i32 undef)  ; BufferLoad(srv,index,wot)
  %461 = extractvalue %dx.types.ResRet.f32 %460, 0
  %462 = extractvalue %dx.types.ResRet.f32 %460, 1
  %463 = extractvalue %dx.types.ResRet.f32 %460, 2
  %464 = extractvalue %dx.types.ResRet.f32 %460, 3
  %465 = add i32 %453, 2
  %466 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %465, i32 undef)  ; BufferLoad(srv,index,wot)
  %467 = extractvalue %dx.types.ResRet.f32 %466, 0
  %468 = extractvalue %dx.types.ResRet.f32 %466, 1
  %469 = extractvalue %dx.types.ResRet.f32 %466, 2
  %470 = extractvalue %dx.types.ResRet.f32 %466, 3
  %471 = add i32 %453, 3
  %472 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %471, i32 undef)  ; BufferLoad(srv,index,wot)
  %473 = extractvalue %dx.types.ResRet.f32 %472, 0
  %474 = extractvalue %dx.types.ResRet.f32 %472, 1
  %475 = extractvalue %dx.types.ResRet.f32 %472, 2
  %476 = extractvalue %dx.types.ResRet.f32 %472, 3
  %477 = add i32 %453, 4
  %478 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %477, i32 undef)  ; BufferLoad(srv,index,wot)
  %479 = extractvalue %dx.types.ResRet.f32 %478, 0
  %480 = extractvalue %dx.types.ResRet.f32 %478, 1
  %481 = extractvalue %dx.types.ResRet.f32 %478, 2
  %482 = extractvalue %dx.types.ResRet.f32 %478, 3
  %483 = add i32 %453, 5
  %484 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %483, i32 undef)  ; BufferLoad(srv,index,wot)
  %485 = extractvalue %dx.types.ResRet.f32 %484, 0
  %486 = extractvalue %dx.types.ResRet.f32 %484, 1
  %487 = extractvalue %dx.types.ResRet.f32 %484, 2
  %488 = extractvalue %dx.types.ResRet.f32 %484, 3
  %489 = add i32 %453, 6
  %490 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %489, i32 undef)  ; BufferLoad(srv,index,wot)
  %491 = extractvalue %dx.types.ResRet.f32 %490, 0
  %492 = extractvalue %dx.types.ResRet.f32 %490, 1
  %493 = extractvalue %dx.types.ResRet.f32 %490, 2
  %494 = extractvalue %dx.types.ResRet.f32 %490, 3
  %495 = add i32 %453, 7
  %496 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %495, i32 undef)  ; BufferLoad(srv,index,wot)
  %497 = extractvalue %dx.types.ResRet.f32 %496, 0
  %498 = extractvalue %dx.types.ResRet.f32 %496, 1
  %499 = extractvalue %dx.types.ResRet.f32 %496, 2
  %500 = extractvalue %dx.types.ResRet.f32 %496, 3
  %501 = fmul fast float %455, %441
  %502 = fmul fast float %467, %442
  %503 = fadd fast float %502, %501
  %504 = fmul fast float %479, %443
  %505 = fadd fast float %503, %504
  %506 = fmul fast float %456, %441
  %507 = fmul fast float %468, %442
  %508 = fadd fast float %507, %506
  %509 = fmul fast float %480, %443
  %510 = fadd fast float %508, %509
  %511 = fmul fast float %457, %441
  %512 = fmul fast float %469, %442
  %513 = fadd fast float %512, %511
  %514 = fmul fast float %481, %443
  %515 = fadd fast float %513, %514
  %516 = fmul fast float %458, %441
  %517 = fmul fast float %470, %442
  %518 = fadd fast float %517, %516
  %519 = fmul fast float %482, %443
  %520 = fadd fast float %518, %519
  %521 = fmul fast float %461, %441
  %522 = fmul fast float %473, %442
  %523 = fadd fast float %522, %521
  %524 = fmul fast float %485, %443
  %525 = fadd fast float %523, %524
  %526 = fmul fast float %462, %441
  %527 = fmul fast float %474, %442
  %528 = fadd fast float %527, %526
  %529 = fmul fast float %486, %443
  %530 = fadd fast float %528, %529
  %531 = fmul fast float %463, %441
  %532 = fmul fast float %475, %442
  %533 = fadd fast float %532, %531
  %534 = fmul fast float %487, %443
  %535 = fadd fast float %533, %534
  %536 = fmul fast float %464, %441
  %537 = fmul fast float %476, %442
  %538 = fadd fast float %537, %536
  %539 = fmul fast float %488, %443
  %540 = fadd fast float %538, %539
  %541 = fadd fast float %505, %491
  %542 = fadd fast float %510, %492
  %543 = fadd fast float %515, %493
  %544 = fadd fast float %520, %494
  %545 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %541)  ; FMax(a,b)
  %546 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %542)  ; FMax(a,b)
  %547 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %543)  ; FMax(a,b)
  %548 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %544)  ; FMax(a,b)
  %549 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %541)  ; FMin(a,b)
  %550 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %542)  ; FMin(a,b)
  %551 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %543)  ; FMin(a,b)
  %552 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %544)  ; FMin(a,b)
  %553 = fmul fast float %549, 0x3F847AE140000000
  %554 = fmul fast float %550, 0x3F847AE140000000
  %555 = fmul fast float %551, 0x3F847AE140000000
  %556 = fmul fast float %552, 0x3F847AE140000000
  %557 = fadd fast float %553, %545
  %558 = fadd fast float %554, %546
  %559 = fadd fast float %555, %547
  %560 = fadd fast float %556, %548
  %561 = fadd fast float %525, %497
  %562 = fadd fast float %530, %498
  %563 = fadd fast float %535, %499
  %564 = fadd fast float %540, %500
  %565 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %561)  ; FMax(a,b)
  %566 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %562)  ; FMax(a,b)
  %567 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %563)  ; FMax(a,b)
  %568 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %564)  ; FMax(a,b)
  %569 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %561)  ; FMin(a,b)
  %570 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %562)  ; FMin(a,b)
  %571 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %563)  ; FMin(a,b)
  %572 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %564)  ; FMin(a,b)
  %573 = fmul fast float %569, 0x3F847AE140000000
  %574 = fmul fast float %570, 0x3F847AE140000000
  %575 = fmul fast float %571, 0x3F847AE140000000
  %576 = fmul fast float %572, 0x3F847AE140000000
  %577 = fadd fast float %573, %565
  %578 = fadd fast float %574, %566
  %579 = fadd fast float %575, %567
  %580 = fadd fast float %576, %568
  br label %581

; <label>:581                                     ; preds = %581, %429
  %582 = phi i32 [ 0, %429 ], [ %602, %581 ]
  %583 = add i32 %453, 8
  %584 = shl i32 %582, 1
  %585 = add i32 %583, %584
  %586 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %585, i32 undef)  ; BufferLoad(srv,index,wot)
  %587 = extractvalue %dx.types.ResRet.f32 %586, 0
  %588 = extractvalue %dx.types.ResRet.f32 %586, 1
  %589 = extractvalue %dx.types.ResRet.f32 %586, 2
  %590 = extractvalue %dx.types.ResRet.f32 %586, 3
  %591 = add i32 %453, 9
  %592 = add i32 %591, %584
  %593 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %592, i32 undef)  ; BufferLoad(srv,index,wot)
  %594 = extractvalue %dx.types.ResRet.f32 %593, 0
  %595 = extractvalue %dx.types.ResRet.f32 %593, 1
  %596 = extractvalue %dx.types.ResRet.f32 %593, 2
  %597 = extractvalue %dx.types.ResRet.f32 %593, 3
  %598 = call float @dx.op.dot4.f32(i32 56, float %587, float %588, float %589, float %590, float %557, float %558, float %559, float %560)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %599 = call float @dx.op.dot4.f32(i32 56, float %594, float %595, float %596, float %597, float %577, float %578, float %579, float %580)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %600 = fadd fast float %599, %598
  %601 = getelementptr inbounds [8 x float], [8 x float]* %25, i32 0, i32 %582
  store float %600, float* %601, align 4, !tbaa !60, !noalias !48
  %602 = add nuw nsw i32 %582, 1
  %603 = icmp eq i32 %602, 8
  br i1 %603, label %604, label %581

; <label>:604                                     ; preds = %581
  %605 = call float @dx.op.unary.f32(i32 6, float %443)  ; FAbs(value)
  %606 = fsub fast float 1.000000e+00, %605
  %607 = call float @dx.op.unary.f32(i32 7, float %606)  ; Saturate(value)
  %608 = fmul fast float %452, %607
  %609 = add i32 %453, 24
  %610 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %609, i32 undef)  ; BufferLoad(srv,index,wot)
  %611 = extractvalue %dx.types.ResRet.f32 %610, 0
  %612 = extractvalue %dx.types.ResRet.f32 %610, 1
  %613 = extractvalue %dx.types.ResRet.f32 %610, 2
  %614 = extractvalue %dx.types.ResRet.f32 %610, 3
  %615 = add i32 %453, 25
  %616 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %615, i32 undef)  ; BufferLoad(srv,index,wot)
  %617 = extractvalue %dx.types.ResRet.f32 %616, 0
  %618 = extractvalue %dx.types.ResRet.f32 %616, 1
  %619 = extractvalue %dx.types.ResRet.f32 %616, 2
  %620 = extractvalue %dx.types.ResRet.f32 %616, 3
  %621 = getelementptr inbounds [8 x float], [8 x float]* %25, i32 0, i32 0
  %622 = load float, float* %621, align 4, !tbaa !60, !noalias !48
  %623 = fadd fast float %622, %611
  %624 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %623)  ; FMax(a,b)
  %625 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %623)  ; FMin(a,b)
  %626 = fmul fast float %625, 0x3F847AE140000000
  %627 = fadd fast float %626, %624
  store float %627, float* %621, align 4, !tbaa !60, !noalias !48
  %628 = getelementptr inbounds [8 x float], [8 x float]* %25, i32 0, i32 1
  %629 = load float, float* %628, align 4, !tbaa !60, !noalias !48
  %630 = fadd fast float %629, %612
  %631 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %630)  ; FMax(a,b)
  %632 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %630)  ; FMin(a,b)
  %633 = fmul fast float %632, 0x3F847AE140000000
  %634 = fadd fast float %633, %631
  store float %634, float* %628, align 4, !tbaa !60, !noalias !48
  %635 = getelementptr inbounds [8 x float], [8 x float]* %25, i32 0, i32 2
  %636 = load float, float* %635, align 4, !tbaa !60, !noalias !48
  %637 = fadd fast float %636, %613
  %638 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %637)  ; FMax(a,b)
  %639 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %637)  ; FMin(a,b)
  %640 = fmul fast float %639, 0x3F847AE140000000
  %641 = fadd fast float %640, %638
  store float %641, float* %635, align 4, !tbaa !60, !noalias !48
  %642 = getelementptr inbounds [8 x float], [8 x float]* %25, i32 0, i32 3
  %643 = load float, float* %642, align 4, !tbaa !60, !noalias !48
  %644 = fadd fast float %643, %614
  %645 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %644)  ; FMax(a,b)
  %646 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %644)  ; FMin(a,b)
  %647 = fmul fast float %646, 0x3F847AE140000000
  %648 = fadd fast float %647, %645
  store float %648, float* %642, align 4, !tbaa !60, !noalias !48
  %649 = getelementptr inbounds [8 x float], [8 x float]* %25, i32 0, i32 4
  %650 = load float, float* %649, align 4, !tbaa !60, !noalias !48
  %651 = fadd fast float %650, %617
  %652 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %651)  ; FMax(a,b)
  %653 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %651)  ; FMin(a,b)
  %654 = fmul fast float %653, 0x3F847AE140000000
  %655 = fadd fast float %654, %652
  store float %655, float* %649, align 4, !tbaa !60, !noalias !48
  %656 = getelementptr inbounds [8 x float], [8 x float]* %25, i32 0, i32 5
  %657 = load float, float* %656, align 4, !tbaa !60, !noalias !48
  %658 = fadd fast float %657, %618
  %659 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %658)  ; FMax(a,b)
  %660 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %658)  ; FMin(a,b)
  %661 = fmul fast float %660, 0x3F847AE140000000
  %662 = fadd fast float %661, %659
  store float %662, float* %656, align 4, !tbaa !60, !noalias !48
  %663 = getelementptr inbounds [8 x float], [8 x float]* %25, i32 0, i32 6
  %664 = load float, float* %663, align 4, !tbaa !60, !noalias !48
  %665 = fadd fast float %664, %619
  %666 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %665)  ; FMax(a,b)
  %667 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %665)  ; FMin(a,b)
  %668 = fmul fast float %667, 0x3F847AE140000000
  %669 = fadd fast float %668, %666
  store float %669, float* %663, align 4, !tbaa !60, !noalias !48
  %670 = getelementptr inbounds [8 x float], [8 x float]* %25, i32 0, i32 7
  %671 = load float, float* %670, align 4, !tbaa !60, !noalias !48
  %672 = fadd fast float %671, %620
  %673 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %672)  ; FMax(a,b)
  %674 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %672)  ; FMin(a,b)
  %675 = fmul fast float %674, 0x3F847AE140000000
  %676 = fadd fast float %675, %673
  store float %676, float* %670, align 4, !tbaa !60, !noalias !48
  %677 = add i32 %453, 26
  %678 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %677, i32 undef)  ; BufferLoad(srv,index,wot)
  %679 = extractvalue %dx.types.ResRet.f32 %678, 0
  %680 = extractvalue %dx.types.ResRet.f32 %678, 1
  %681 = extractvalue %dx.types.ResRet.f32 %678, 2
  %682 = extractvalue %dx.types.ResRet.f32 %678, 3
  %683 = add i32 %453, 27
  %684 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %683, i32 undef)  ; BufferLoad(srv,index,wot)
  %685 = extractvalue %dx.types.ResRet.f32 %684, 0
  %686 = extractvalue %dx.types.ResRet.f32 %684, 1
  %687 = extractvalue %dx.types.ResRet.f32 %684, 2
  %688 = extractvalue %dx.types.ResRet.f32 %684, 3
  %689 = fmul fast float %627, %679
  %690 = fmul fast float %634, %680
  %691 = fadd fast float %690, %689
  %692 = fmul fast float %641, %681
  %693 = fadd fast float %691, %692
  %694 = fmul fast float %648, %682
  %695 = fadd fast float %693, %694
  %696 = fmul fast float %655, %685
  %697 = fadd fast float %695, %696
  %698 = fmul fast float %662, %686
  %699 = fadd fast float %697, %698
  %700 = fmul fast float %669, %687
  %701 = fadd fast float %699, %700
  %702 = fmul fast float %676, %688
  %703 = fadd fast float %701, %702
  %704 = add i32 %453, 28
  %705 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %704, i32 undef)  ; BufferLoad(srv,index,wot)
  %706 = extractvalue %dx.types.ResRet.f32 %705, 0
  %707 = fadd fast float %703, %706
  %708 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %707)  ; FMax(a,b)
  %709 = fmul fast float %608, %708
  %710 = call float @dx.op.unary.f32(i32 7, float %709)  ; Saturate(value)
  %711 = getelementptr inbounds [8 x float], [8 x float]* %27, i32 0, i32 %432
  store float %710, float* %711, align 4, !tbaa !60, !noalias !48
  %712 = fadd fast float %710, %431
  %713 = add nuw nsw i32 %432, 1
  %714 = icmp eq i32 %713, 8
  br i1 %714, label %718, label %715

; <label>:715                                     ; preds = %604
  %716 = getelementptr inbounds [8 x i32], [8 x i32]* %26, i32 0, i32 %713
  %717 = load i32, i32* %716, align 4, !tbaa !44, !noalias !48
  br label %429

; <label>:718                                     ; preds = %604
  %719 = fcmp fast ugt float %712, 0x3EE4F8B580000000
  br i1 %719, label %720, label %781, !dx.controlflow.hints !62

; <label>:720                                     ; preds = %718
  %721 = fcmp fast ogt float %712, 0x3EE4F8B580000000
  %722 = fdiv fast float 1.000000e+00, %712
  %723 = select i1 %721, float %722, float 1.000000e+00
  %724 = getelementptr inbounds [8 x float], [8 x float]* %27, i32 0, i32 0
  %725 = load float, float* %724, align 4, !tbaa !60, !noalias !48
  %726 = fmul fast float %725, %723
  store float %726, float* %724, align 4, !tbaa !60, !noalias !48
  %727 = getelementptr inbounds [8 x float], [8 x float]* %27, i32 0, i32 1
  %728 = load float, float* %727, align 4, !tbaa !60, !noalias !48
  %729 = fmul fast float %728, %723
  store float %729, float* %727, align 4, !tbaa !60, !noalias !48
  %730 = getelementptr inbounds [8 x float], [8 x float]* %27, i32 0, i32 2
  %731 = load float, float* %730, align 4, !tbaa !60, !noalias !48
  %732 = fmul fast float %731, %723
  store float %732, float* %730, align 4, !tbaa !60, !noalias !48
  %733 = getelementptr inbounds [8 x float], [8 x float]* %27, i32 0, i32 3
  %734 = load float, float* %733, align 4, !tbaa !60, !noalias !48
  %735 = fmul fast float %734, %723
  store float %735, float* %733, align 4, !tbaa !60, !noalias !48
  %736 = getelementptr inbounds [8 x float], [8 x float]* %27, i32 0, i32 4
  %737 = load float, float* %736, align 4, !tbaa !60, !noalias !48
  %738 = fmul fast float %737, %723
  store float %738, float* %736, align 4, !tbaa !60, !noalias !48
  %739 = getelementptr inbounds [8 x float], [8 x float]* %27, i32 0, i32 5
  %740 = load float, float* %739, align 4, !tbaa !60, !noalias !48
  %741 = fmul fast float %740, %723
  store float %741, float* %739, align 4, !tbaa !60, !noalias !48
  %742 = getelementptr inbounds [8 x float], [8 x float]* %27, i32 0, i32 6
  %743 = load float, float* %742, align 4, !tbaa !60, !noalias !48
  %744 = fmul fast float %743, %723
  store float %744, float* %742, align 4, !tbaa !60, !noalias !48
  %745 = getelementptr inbounds [8 x float], [8 x float]* %27, i32 0, i32 7
  %746 = load float, float* %745, align 4, !tbaa !60, !noalias !48
  %747 = fmul fast float %746, %723
  store float %747, float* %745, align 4, !tbaa !60, !noalias !48
  br label %748

; <label>:748                                     ; preds = %775, %720
  %749 = phi float [ %779, %775 ], [ %726, %720 ]
  %750 = phi i32 [ %777, %775 ], [ %357, %720 ]
  %751 = phi float [ %768, %775 ], [ 0.000000e+00, %720 ]
  %752 = phi float [ %770, %775 ], [ 0.000000e+00, %720 ]
  %753 = phi float [ %772, %775 ], [ 0.000000e+00, %720 ]
  %754 = phi i32 [ %773, %775 ], [ 0, %720 ]
  %755 = shl i32 %750, 5
  %756 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %755, i32 undef)  ; BufferLoad(srv,index,wot)
  %757 = extractvalue %dx.types.ResRet.i32 %756, 0
  %758 = shl i32 %757, 4
  %759 = and i32 %758, 32752
  %760 = call float @dx.op.legacyF16ToF32(i32 131, i32 %759)  ; LegacyF16ToF32(value)
  %761 = lshr i32 %757, 7
  %762 = and i32 %761, 32752
  %763 = call float @dx.op.legacyF16ToF32(i32 131, i32 %762)  ; LegacyF16ToF32(value)
  %764 = lshr i32 %757, 22
  %765 = shl nuw nsw i32 %764, 5
  %766 = call float @dx.op.legacyF16ToF32(i32 131, i32 %765)  ; LegacyF16ToF32(value)
  %767 = fmul fast float %760, %749
  %768 = fadd fast float %767, %751
  %769 = fmul fast float %763, %749
  %770 = fadd fast float %769, %752
  %771 = fmul fast float %766, %749
  %772 = fadd fast float %771, %753
  %773 = add nuw nsw i32 %754, 1
  %774 = icmp eq i32 %773, 8
  br i1 %774, label %780, label %775

; <label>:775                                     ; preds = %748
  %776 = getelementptr inbounds [8 x i32], [8 x i32]* %26, i32 0, i32 %773
  %777 = load i32, i32* %776, align 4, !tbaa !44, !noalias !48
  %778 = getelementptr inbounds [8 x float], [8 x float]* %27, i32 0, i32 %773
  %779 = load float, float* %778, align 4, !tbaa !60, !noalias !48
  br label %748

; <label>:780                                     ; preds = %748
  br label %781

; <label>:781                                     ; preds = %780, %718, %285, %266, %234
  %782 = phi float [ 0.000000e+00, %234 ], [ 0.000000e+00, %266 ], [ 0.000000e+00, %285 ], [ 0.000000e+00, %718 ], [ %768, %780 ]
  %783 = phi float [ 0.000000e+00, %234 ], [ 0.000000e+00, %266 ], [ 0.000000e+00, %285 ], [ 0.000000e+00, %718 ], [ %770, %780 ]
  %784 = phi float [ 0.000000e+00, %234 ], [ 0.000000e+00, %266 ], [ 0.000000e+00, %285 ], [ 0.000000e+00, %718 ], [ %772, %780 ]
  %785 = phi i1 [ false, %234 ], [ false, %266 ], [ false, %285 ], [ false, %718 ], [ true, %780 ]
  %786 = phi float [ 1.000000e+00, %234 ], [ 1.000000e+00, %266 ], [ 1.000000e+00, %285 ], [ 0.000000e+00, %718 ], [ 1.000000e+00, %780 ]
  br i1 %785, label %800, label %787, !dx.controlflow.hints !63

; <label>:787                                     ; preds = %781
  %788 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 32, i32 undef)  ; BufferLoad(srv,index,wot)
  %789 = extractvalue %dx.types.ResRet.i32 %788, 1
  %790 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %791 = extractvalue %dx.types.ResRet.i32 %790, 0
  %792 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %793 = extractvalue %dx.types.ResRet.i32 %792, 0
  %794 = and i32 %793, 65535
  %795 = call float @dx.op.legacyF16ToF32(i32 131, i32 %794)  ; LegacyF16ToF32(value)
  %796 = lshr i32 %791, 16
  %797 = call float @dx.op.legacyF16ToF32(i32 131, i32 %796)  ; LegacyF16ToF32(value)
  %798 = and i32 %789, 65535
  %799 = call float @dx.op.legacyF16ToF32(i32 131, i32 %798)  ; LegacyF16ToF32(value)
  br label %800

; <label>:800                                     ; preds = %787, %781
  %801 = phi float [ %784, %781 ], [ %799, %787 ]
  %802 = phi float [ %783, %781 ], [ %797, %787 ]
  %803 = phi float [ %782, %781 ], [ %795, %787 ]
  %804 = fcmp fast oeq float %786, 0.000000e+00
  %805 = select i1 %804, float 1.000000e+00, float %140
  %806 = fmul fast float %803, 0x3FD20DD760000000
  %807 = fmul fast float %802, 0x3FD20DD760000000
  %808 = fmul fast float %801, 0x3FD20DD760000000
  %809 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %810 = extractvalue %dx.types.CBufRet.f32 %809, 3
  %811 = fmul fast float %806, %810
  %812 = fmul fast float %807, %810
  %813 = fmul fast float %808, %810
  %814 = icmp eq i32 %238, 0
  br i1 %814, label %851, label %815, !dx.controlflow.hints !64

; <label>:815                                     ; preds = %800
  %816 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %14, %dx.types.Handle %18, float %235, float %236, float 0.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %817 = extractvalue %dx.types.ResRet.f32 %816, 0
  %818 = extractvalue %dx.types.ResRet.f32 %816, 1
  %819 = extractvalue %dx.types.ResRet.f32 %816, 2
  %820 = extractvalue %dx.types.ResRet.f32 %816, 3
  %821 = call float @dx.op.binary.f32(i32 36, float %818, float %819)  ; FMin(a,b)
  %822 = call float @dx.op.binary.f32(i32 36, float %817, float %821)  ; FMin(a,b)
  %823 = call float @dx.op.binary.f32(i32 36, float %822, float %820)  ; FMin(a,b)
  %824 = fmul fast float %823, 2.550000e+02
  %825 = fadd fast float %824, 0x3F70101020000000
  %826 = fptoui float %825 to i32
  %827 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %19, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %828 = extractvalue %dx.types.CBufRet.i32 %827, 1
  %829 = uitofp i32 %828 to float
  %830 = fmul fast float %829, %237
  %831 = fptosi float %830 to i32
  %832 = icmp slt i32 %831, %826
  br i1 %832, label %833, label %851, !dx.controlflow.hints !65

; <label>:833                                     ; preds = %815
  %834 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %16, %dx.types.Handle %17, float %235, float %236, float %237, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %835 = extractvalue %dx.types.ResRet.f32 %834, 0
  %836 = extractvalue %dx.types.ResRet.f32 %834, 1
  %837 = extractvalue %dx.types.ResRet.f32 %834, 2
  %838 = extractvalue %dx.types.CBufRet.f32 %809, 2
  %839 = fmul fast float %838, %835
  %840 = fmul fast float %838, %836
  %841 = fmul fast float %838, %837
  %842 = fsub fast float %839, %811
  %843 = fsub fast float %840, %812
  %844 = fsub fast float %841, %813
  %845 = fmul fast float %842, %805
  %846 = fmul fast float %843, %805
  %847 = fmul fast float %844, %805
  %848 = fadd fast float %845, %811
  %849 = fadd fast float %846, %812
  %850 = fadd fast float %847, %813
  br label %851

; <label>:851                                     ; preds = %833, %815, %800
  %852 = phi float [ %811, %800 ], [ %848, %833 ], [ %811, %815 ]
  %853 = phi float [ %812, %800 ], [ %849, %833 ], [ %812, %815 ]
  %854 = phi float [ %813, %800 ], [ %850, %833 ], [ %813, %815 ]
  %855 = extractvalue %dx.types.CBufRet.f32 %809, 0
  %856 = fmul fast float %855, %852
  %857 = fmul fast float %855, %853
  %858 = fmul fast float %855, %854
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %22, i32 %23, i32 %24, float %856, float %857, float %858, float %856, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %859

; <label>:859                                     ; preds = %851, %50
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @dx.op.threadId.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare float @dx.op.unary.f32(i32, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.binary.f32(i32, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32) #1

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32, %dx.types.Handle, i32, i32) #1

; Function Attrs: nounwind readnone
declare i32 @dx.op.unaryBits.i32(i32, i32) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32, %dx.types.Handle, i32, i32) #1

; Function Attrs: nounwind readnone
declare float @dx.op.dot4.f32(i32, float, float, float, float, float, float, float, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.legacyF16ToF32(i32, i32) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #1

; Function Attrs: nounwind readnone
declare float @dx.op.tertiary.f32(i32, float, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32) #1

; Function Attrs: nounwind
declare void @dx.op.textureStore.f32(i32, %dx.types.Handle, i32, i32, i32, float, float, float, float, i8) #2

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
!dx.entryPoints = !{!33}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !24, !26, !30}
!5 = !{!6, !8, !9, !10, !11, !12, !14, !16, !17, !18, !19, !20, !21, !22, !23}
!6 = !{i32 0, %"class.Texture3D<vector<float, 3> >"* undef, !"", i32 0, i32 14, i32 1, i32 4, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, %"class.Texture2DArray<float>"* undef, !"", i32 0, i32 50, i32 1, i32 7, i32 0, !7}
!9 = !{i32 2, %"class.Texture2DArray<float>"* undef, !"", i32 0, i32 21, i32 1, i32 7, i32 0, !7}
!10 = !{i32 3, %"class.Texture2D<float>"* undef, !"", i32 0, i32 18, i32 1, i32 2, i32 0, !7}
!11 = !{i32 4, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 15, i32 1, i32 11, i32 0, null}
!12 = !{i32 5, %"class.StructuredBuffer<GfxNeuralLightGridTopLevelNode>"* undef, !"", i32 0, i32 0, i32 1, i32 12, i32 0, !13}
!13 = !{i32 1, i32 16}
!14 = !{i32 6, %"class.Buffer<unsigned int>"* undef, !"", i32 0, i32 1, i32 1, i32 10, i32 0, !15}
!15 = !{i32 0, i32 5}
!16 = !{i32 7, %"class.StructuredBuffer<GfxNeuralLightGridInternalNode>"* undef, !"", i32 0, i32 2, i32 1, i32 12, i32 0, !13}
!17 = !{i32 8, %"class.Buffer<unsigned int>"* undef, !"", i32 0, i32 3, i32 1, i32 10, i32 0, !15}
!18 = !{i32 9, %"class.Buffer<unsigned int>"* undef, !"", i32 0, i32 4, i32 1, i32 10, i32 0, !15}
!19 = !{i32 10, %"class.Buffer<unsigned int>"* undef, !"", i32 0, i32 5, i32 1, i32 10, i32 0, !15}
!20 = !{i32 11, %"class.Buffer<vector<float, 4> >"* undef, !"", i32 0, i32 6, i32 1, i32 10, i32 0, !7}
!21 = !{i32 12, %"class.Buffer<unsigned int>"* undef, !"", i32 0, i32 7, i32 1, i32 10, i32 0, !15}
!22 = !{i32 13, %"class.Buffer<vector<float, 4> >"* undef, !"", i32 0, i32 8, i32 1, i32 10, i32 0, !7}
!23 = !{i32 14, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 9, i32 1, i32 11, i32 0, null}
!24 = !{!25}
!25 = !{i32 0, %"class.RWTexture3D<vector<float, 3> >"* undef, !"", i32 0, i32 0, i32 1, i32 4, i1 false, i1 false, i1 false, !7}
!26 = !{!27, !28, !29}
!27 = !{i32 0, %VolumetricLightGridConstants* undef, !"", i32 0, i32 1, i32 1, i32 32, null}
!28 = !{i32 1, %GfxNeuralLightGridSetupConsts* undef, !"", i32 0, i32 4, i32 1, i32 80, null}
!29 = !{i32 2, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!30 = !{!31, !32}
!31 = !{i32 0, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!32 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!33 = !{void ()* @cs_vol_sh_sample_lightgrid_isotropic, !"cs_vol_sh_sample_lightgrid_isotropic", null, !4, !34}
!34 = !{i32 0, i64 272, i32 4, !35}
!35 = !{i32 4, i32 4, i32 4}
!36 = distinct !{!36, !"dx.controlflow.hints", i32 2}
!37 = distinct !{!37, !"dx.controlflow.hints", i32 2}
!38 = distinct !{!38, !"dx.controlflow.hints", i32 2}
!39 = distinct !{!39, !"dx.controlflow.hints", i32 2}
!40 = distinct !{!40, !"dx.controlflow.hints", i32 2}
!41 = distinct !{!41, !"dx.controlflow.hints", i32 2}
!42 = distinct !{!42, !"dx.controlflow.hints", i32 2}
!43 = distinct !{!43, !"dx.controlflow.hints", i32 2}
!44 = !{!45, !45, i64 0}
!45 = !{!"int", !46, i64 0}
!46 = !{!"omnipotent char", !47, i64 0}
!47 = !{!"Simple C/C++ TBAA"}
!48 = !{!49, !51, !52, !53, !54, !56, !57, !58}
!49 = distinct !{!49, !50, !"\01?LookupNeuralLightGrid@@YA_NUNeuralLightGridSetup@@UNeuralLightGridData@@V?$vector@M$02@@USH3Vec@@33AIAM_N@Z: %probeR"}
!50 = distinct !{!50, !"\01?LookupNeuralLightGrid@@YA_NUNeuralLightGridSetup@@UNeuralLightGridData@@V?$vector@M$02@@USH3Vec@@33AIAM_N@Z"}
!51 = distinct !{!51, !50, !"\01?LookupNeuralLightGrid@@YA_NUNeuralLightGridSetup@@UNeuralLightGridData@@V?$vector@M$02@@USH3Vec@@33AIAM_N@Z: %probeG"}
!52 = distinct !{!52, !50, !"\01?LookupNeuralLightGrid@@YA_NUNeuralLightGridSetup@@UNeuralLightGridData@@V?$vector@M$02@@USH3Vec@@33AIAM_N@Z: %probeB"}
!53 = distinct !{!53, !50, !"\01?LookupNeuralLightGrid@@YA_NUNeuralLightGridSetup@@UNeuralLightGridData@@V?$vector@M$02@@USH3Vec@@33AIAM_N@Z: %probeA"}
!54 = distinct !{!54, !55, !"\01?LookupLightingNeuralLG@@YA_NV?$vector@M$02@@USH3Vec@@11AIAM_N@Z: %redSH"}
!55 = distinct !{!55, !"\01?LookupLightingNeuralLG@@YA_NV?$vector@M$02@@USH3Vec@@11AIAM_N@Z"}
!56 = distinct !{!56, !55, !"\01?LookupLightingNeuralLG@@YA_NV?$vector@M$02@@USH3Vec@@11AIAM_N@Z: %greenSH"}
!57 = distinct !{!57, !55, !"\01?LookupLightingNeuralLG@@YA_NV?$vector@M$02@@USH3Vec@@11AIAM_N@Z: %blueSH"}
!58 = distinct !{!58, !55, !"\01?LookupLightingNeuralLG@@YA_NV?$vector@M$02@@USH3Vec@@11AIAM_N@Z: %probeA"}
!59 = !{!49, !51, !52, !53, !58}
!60 = !{!61, !61, i64 0}
!61 = !{!"float", !46, i64 0}
!62 = distinct !{!62, !"dx.controlflow.hints", i32 2}
!63 = distinct !{!63, !"dx.controlflow.hints", i32 2}
!64 = distinct !{!64, !"dx.controlflow.hints", i32 2}
!65 = distinct !{!65, !"dx.controlflow.hints", i32 1}

