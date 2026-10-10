;
; Input signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Position              0   xyzw        0      POS   float   xy  
; TEXCOORD                 0   xy          1     NONE   float   xy  
;
;
; Output signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Target                0   xyzw        0   TARGET   float   xyzw
; SV_Target                1   x           1   TARGET   float   x   
;
; shader hash: b3950968527728e85a9adb120f3800ba
;
; Pipeline Runtime Information: 
;
; Pixel Shader
; DepthOutput=0
; SampleFrequency=0
;
;
; Input signature:
;
; Name                 Index             InterpMode DynIdx
; -------------------- ----- ---------------------- ------
; SV_Position              0          noperspective       
; TEXCOORD                 0                 linear       
;
; Output signature:
;
; Name                 Index             InterpMode DynIdx
; -------------------- ----- ---------------------- ------
; SV_Target                0                              
; SV_Target                1                              
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
;   [224 x i8] (type annotation not present)
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
;                                   cbuffer      NA          NA     CB1            cb1     1
;                                   cbuffer      NA          NA     CB2            cb4     1
;                                   sampler      NA          NA      S0             s1     1
;                                   sampler      NA          NA      S1             s2     1
;                                   texture     f32          2d      T0             t0     1
;                                   texture     f32          2d      T1             t1     1
;                                   texture     f32          3d      T2     t74,space2     1
;                                   texture     f32          3d      T3     t75,space2     1
;                                   texture     f32          2d      T4             t2     1
;                                   texture     f32          2d      T5             t3     1
;                                   texture     f32          2d      T6     t69,space2     1
;                                   texture     f32          2d      T7     t73,space2     1
;                                   texture     f32          2d      T8             t4     1
;                                   texture     f32          2d      T9             t5     1
;                                   texture    byte         r/o     T10     t15,space1     1
;
;
; ViewId state:
;
; Number of inputs: 6, outputs: 5
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 4, 5 }
;   output 1 depends on inputs: { 0, 1, 4, 5 }
;   output 2 depends on inputs: { 0, 1, 4, 5 }
;   output 4 depends on inputs: { 0, 1, 4, 5 }
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.ResRet.f32 = type { float, float, float, float, i32 }
%dx.types.CBufRet.f32 = type { float, float, float, float }
%dx.types.CBufRet.i32 = type { i32, i32, i32, i32 }
%dx.types.ResRet.i32 = type { i32, i32, i32, i32, i32 }
%"class.Texture2D<vector<float, 4> >" = type { <4 x float>, %"class.Texture2D<vector<float, 4> >::mips_type" }
%"class.Texture2D<vector<float, 4> >::mips_type" = type { i32 }
%"class.Texture3D<vector<float, 4> >" = type { <4 x float>, %"class.Texture3D<vector<float, 4> >::mips_type" }
%"class.Texture3D<vector<float, 4> >::mips_type" = type { i32 }
%struct.ByteAddressBuffer = type { i32 }
%hostlayout.scene = type { %hostlayout.struct.GfxCodeSceneConsts }
%hostlayout.struct.GfxCodeSceneConsts = type { <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <3 x float>, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x i32>, <4 x i32>, <4 x float>, float, float, float, float, i32, i32, float, float, <2 x i32>, <2 x i32>, <2 x float>, <2 x float>, <3 x float>, i32, <3 x float>, float, <3 x float>, float, <2 x float>, <2 x float>, <3 x float>, float, <3 x float>, float, float, float, float, float, <3 x float>, float, i32, float, float, float, <4 x float>, <3 x float>, float, float, float, float, float, <4 x float>, float, float, float, float, i32, i32, i32, float, <4 x float>, i32, i32, i32, i32, i32, i32, i32, i32, <2 x i32>, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, [2 x <4 x i32>], [3 x <2 x float>], i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <2 x float>, <2 x float>, <4 x float>, <4 x i32>, <4 x float>, i32, float, float, float, i32, i32, i32, i32, <2 x float>, <2 x float>, <2 x float>, <2 x float>, i32, i32, <2 x float>, <2 x float>, <2 x float>, <3 x float>, i32, i32, i32, i32, i32, <4 x i32>, <4 x i32>, <4 x i32>, <4 x float>, i32, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <3 x float>, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], <4 x float>, [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], i32, i32, float, i32, <2 x float>, float, float, float, float, float, i32, <3 x float>, float, float, float, float, float, <3 x float>, float, <3 x float>, float, <3 x float>, float, float, float, float, float, <2 x float>, <2 x float>, float, float, float, float, <3 x float>, float, <2 x float>, i32, i32, <3 x float>, float, float, float, float, float, float, float, float, float, [4 x <3 x float>], i32, [4 x <3 x float>], i32, [4 x <3 x float>], i32, <4 x i32>, <2 x float>, <2 x float>, <2 x float>, i32, i32, float, float, float, float, <4 x float>, <4 x i32>, <4 x float>, <4 x float>, <4 x float>, i32, i32, i32, i32, <4 x float>, i32, float, float, i32, i32, float, float, i32, i32, float, float, i32, i32, float, float, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, float, float, float, float, i32, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, i32, i32, i32, float, <4 x float>, <4 x float>, <4 x float>, <4 x float>, i32, i32, i32, float, <4 x float>, float, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x i32>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [8 x <4 x float>], [8 x <4 x float>], <4 x float>, <3 x float>, i32, <2 x float>, float, float, float, float, float, float, <2 x float>, <2 x float>, <2 x float>, <2 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <2 x float>, float, float, <4 x float>, i32, i32, i32, i32, <3 x float>, i32, <4 x i32>, <4 x i32>, <2 x float>, <2 x i32>, <4 x float>, <4 x float>, <2 x float>, <2 x float>, [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, float, i32, i32, i32, i32, i32, float, float, <2 x float>, <2 x float>, float, float, float, float, i32, float, float, float, float, float, float, float, float, float, float, float, float, i32, i32, i32, float, float, float, i32, <2 x i32>, <2 x i32>, <4 x i32>, float, float, float, float, <4 x float>, <4 x float>, <2 x float>, <2 x float>, <4 x float>, <4 x float>, float, float, float, float, <4 x float>, float, float, float, float, i32, i32, float, float, <4 x float>, <2 x float>, <2 x float>, i32, i32, float, float, [4 x <4 x float>], float, float, float, float, float, float, float, float, i32, i32, i32, float, <4 x float>, <4 x float>, i32, i32, i32, i32, <2 x i32>, <2 x i32>, [2 x <4 x i32>], i32, float, float, float, i32, float, float, i32, <2 x i32>, <2 x float>, float, float, float, i32, %struct.GfxWeatherData, %hostlayout.struct.GfxVolumetricData, %struct.GfxFogRaymarchingData, %struct.GfxEnvironmentalFogData, %struct.GfxShallowWaterData, %struct.GfxGroundDeformationData, %struct.GfxSplinedModelGlobals }
%struct.GfxWeatherData = type { i32, i32, i32, i32, float, float, float, float, float, float, i32, i32, float, float, float, float, i32, i32, i32, i32, float, float, float, float, float, i32, i32, i32, i32, i32, i32, i32, <3 x float>, i32, <3 x float>, i32, i32, float, i32, i32, float, float, float, float }
%hostlayout.struct.GfxVolumetricData = type { [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <2 x float>, <2 x float>, <2 x float>, <2 x float>, <3 x i32>, i32, <3 x float>, i32, <4 x float>, <3 x float>, i32, i32, float, float, float, i32, i32, i32, float, <4 x float>, float, float, i32, i32, <3 x float>, i32, <3 x float>, float, <3 x float>, float, <2 x float>, float, float, <3 x float>, float, <3 x float>, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, <3 x float>, float, i32, float, float, float, <3 x float>, float, <2 x float>, <2 x float>, <3 x float>, float, i32, float, float, float, float, float, float, float, i32, i32, float, float, <3 x float>, float, i32, i32, <2 x float> }
%struct.GfxFogRaymarchingData = type { <2 x float>, <2 x float>, float, float, float, float, float, float, float, float, float, float, float, float, <2 x float>, <2 x float>, <3 x float>, float }
%struct.GfxEnvironmentalFogData = type { float, float, float, i32 }
%struct.GfxShallowWaterData = type { i32, i32, i32, i32, float, float, float, float, <2 x float>, <2 x float>, float, float, float, float, <3 x float>, float, float, float, float, float, float, float, float, float, i32, float, float, float, float, float, float, float, float, float, float, float, i32, float, float, float, float, i32, i32, i32 }
%struct.GfxGroundDeformationData = type { <2 x float>, <2 x float>, float, float, float, float, float, float, float, float, float, float, float, float, float, float, i32, i32 }
%struct.GfxSplinedModelGlobals = type { [64 x <4 x float>], [64 x <4 x float>], [16 x <4 x float>], [32 x <4 x float>], [64 x <4 x float>], [16 x <4 x float>], [16 x <4 x float>], float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float }
%perObject = type { <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float> }
%tonemapping = type { i32, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float }
%struct.SamplerState = type { i32 }

define void @ps_main() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 15, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 73, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 75, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 74, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 2, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %18 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %19 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %12, float %17, float %18, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %20 = extractvalue %dx.types.ResRet.f32 %19, 0
  %21 = extractvalue %dx.types.ResRet.f32 %19, 1
  %22 = extractvalue %dx.types.ResRet.f32 %19, 2
  %23 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %24 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %12, float %17, float %18, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %25 = extractvalue %dx.types.ResRet.f32 %24, 0
  %26 = fsub fast float 1.000000e+00, %25
  %27 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %28 = extractvalue %dx.types.CBufRet.f32 %27, 0
  %29 = fcmp fast olt float %26, %28
  %30 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 218)  ; CBufferLoadLegacy(handle,regIndex)
  %31 = extractvalue %dx.types.CBufRet.f32 %30, 0
  br i1 %29, label %32, label %356

; <label>:32                                      ; preds = %0
  %33 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %34 = extractvalue %dx.types.CBufRet.f32 %33, 0
  %35 = fsub fast float %21, %34
  %36 = fmul fast float %35, 1.000000e+01
  %37 = call float @dx.op.unary.f32(i32 7, float %36)  ; Saturate(value)
  %38 = fcmp fast ogt float %37, 0.000000e+00
  br i1 %38, label %39, label %241

; <label>:39                                      ; preds = %32
  %40 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 237)  ; CBufferLoadLegacy(handle,regIndex)
  %41 = extractvalue %dx.types.CBufRet.f32 %40, 3
  %42 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %12, float %21, float 0.000000e+00, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %43 = extractvalue %dx.types.ResRet.f32 %42, 0
  %44 = extractvalue %dx.types.ResRet.f32 %42, 1
  %45 = extractvalue %dx.types.ResRet.f32 %42, 2
  %46 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %47 = extractvalue %dx.types.CBufRet.f32 %46, 2
  %48 = fcmp fast ogt float %47, 1.500000e+00
  %49 = select i1 %48, float %43, float %44
  %50 = select i1 %48, float %43, float %45
  %51 = fmul fast float %43, %41
  %52 = fmul fast float %49, %41
  %53 = fmul fast float %50, %41
  %54 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 219)  ; CBufferLoadLegacy(handle,regIndex)
  %55 = extractvalue %dx.types.CBufRet.f32 %54, 0
  %56 = bitcast float %55 to i32
  %57 = icmp eq i32 %56, 3
  %58 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %59 = extractvalue %dx.types.CBufRet.f32 %58, 2
  %60 = fsub fast float 1.000000e+00, %59
  br i1 %57, label %61, label %137

; <label>:61                                      ; preds = %39
  %62 = call float @dx.op.unary.f32(i32 23, float 0.000000e+00)  ; Log(value)
  %63 = fmul fast float %62, 0x3FDAAAAAA0000000
  %64 = call float @dx.op.unary.f32(i32 21, float %63)  ; Exp(value)
  %65 = fsub fast float 1.000000e+00, %64
  %66 = call float @dx.op.unary.f32(i32 23, float %65)  ; Log(value)
  %67 = fmul fast float %66, 0x4003333340000000
  %68 = call float @dx.op.unary.f32(i32 21, float %67)  ; Exp(value)
  %69 = fdiv fast float %64, %65
  %70 = fadd fast float %69, %51
  %71 = fadd fast float %69, %52
  %72 = fadd fast float %69, %53
  %73 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %70)  ; FMax(a,b)
  %74 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %71)  ; FMax(a,b)
  %75 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %72)  ; FMax(a,b)
  %76 = call float @dx.op.unary.f32(i32 23, float %73)  ; Log(value)
  %77 = call float @dx.op.unary.f32(i32 23, float %74)  ; Log(value)
  %78 = call float @dx.op.unary.f32(i32 23, float %75)  ; Log(value)
  %79 = fmul fast float %76, 0x4003333340000000
  %80 = fmul fast float %77, 0x4003333340000000
  %81 = fmul fast float %78, 0x4003333340000000
  %82 = call float @dx.op.unary.f32(i32 21, float %79)  ; Exp(value)
  %83 = call float @dx.op.unary.f32(i32 21, float %80)  ; Exp(value)
  %84 = call float @dx.op.unary.f32(i32 21, float %81)  ; Exp(value)
  %85 = fmul fast float %82, %68
  %86 = fmul fast float %83, %68
  %87 = fmul fast float %84, %68
  %88 = extractvalue %dx.types.CBufRet.f32 %54, 1
  %89 = fmul fast float %85, %88
  %90 = fmul fast float %86, %88
  %91 = fmul fast float %87, %88
  %92 = fmul fast float %89, 0x3FE413A920000000
  %93 = call float @dx.op.tertiary.f32(i32 46, float 0x3FD5134040000000, float %90, float %92)  ; FMad(a,b,c)
  %94 = call float @dx.op.tertiary.f32(i32 46, float 0x3FA62B6AE0000000, float %91, float %93)  ; FMad(a,b,c)
  %95 = fmul fast float %89, 0x3FB1B089A0000000
  %96 = call float @dx.op.tertiary.f32(i32 46, float 0x3FED6C8B40000000, float %90, float %95)  ; FMad(a,b,c)
  %97 = call float @dx.op.tertiary.f32(i32 46, float 0x3F8758E220000000, float %91, float %96)  ; FMad(a,b,c)
  %98 = fmul fast float %89, 0x3F90CB2960000000
  %99 = call float @dx.op.tertiary.f32(i32 46, float 0x3FB6872B00000000, float %90, float %98)  ; FMad(a,b,c)
  %100 = call float @dx.op.tertiary.f32(i32 46, float 0x3FECA8C160000000, float %91, float %99)  ; FMad(a,b,c)
  %101 = fmul fast float %94, 0x3F1A36E2E0000000
  %102 = fmul fast float %97, 0x3F1A36E2E0000000
  %103 = fmul fast float %100, 0x3F1A36E2E0000000
  %104 = call float @dx.op.unary.f32(i32 23, float %101)  ; Log(value)
  %105 = call float @dx.op.unary.f32(i32 23, float %102)  ; Log(value)
  %106 = call float @dx.op.unary.f32(i32 23, float %103)  ; Log(value)
  %107 = fmul fast float %104, 0x3FC4640000000000
  %108 = fmul fast float %105, 0x3FC4640000000000
  %109 = fmul fast float %106, 0x3FC4640000000000
  %110 = call float @dx.op.unary.f32(i32 21, float %107)  ; Exp(value)
  %111 = call float @dx.op.unary.f32(i32 21, float %108)  ; Exp(value)
  %112 = call float @dx.op.unary.f32(i32 21, float %109)  ; Exp(value)
  %113 = fmul fast float %110, 0x4032DA0000000000
  %114 = fmul fast float %111, 0x4032DA0000000000
  %115 = fmul fast float %112, 0x4032DA0000000000
  %116 = fadd fast float %113, 8.359375e-01
  %117 = fadd fast float %114, 8.359375e-01
  %118 = fadd fast float %115, 8.359375e-01
  %119 = fmul fast float %110, 1.868750e+01
  %120 = fmul fast float %111, 1.868750e+01
  %121 = fmul fast float %112, 1.868750e+01
  %122 = fadd fast float %119, 1.000000e+00
  %123 = fadd fast float %120, 1.000000e+00
  %124 = fadd fast float %121, 1.000000e+00
  %125 = fdiv fast float %116, %122
  %126 = fdiv fast float %117, %123
  %127 = fdiv fast float %118, %124
  %128 = call float @dx.op.unary.f32(i32 23, float %125)  ; Log(value)
  %129 = call float @dx.op.unary.f32(i32 23, float %126)  ; Log(value)
  %130 = call float @dx.op.unary.f32(i32 23, float %127)  ; Log(value)
  %131 = fmul fast float %128, 7.884375e+01
  %132 = fmul fast float %129, 7.884375e+01
  %133 = fmul fast float %130, 7.884375e+01
  %134 = call float @dx.op.unary.f32(i32 21, float %131)  ; Exp(value)
  %135 = call float @dx.op.unary.f32(i32 21, float %132)  ; Exp(value)
  %136 = call float @dx.op.unary.f32(i32 21, float %133)  ; Exp(value)
  br label %228

; <label>:137                                     ; preds = %39
  %138 = icmp eq i32 %56, 4
  br i1 %138, label %139, label %228

; <label>:139                                     ; preds = %137
  %140 = call float @dx.op.unary.f32(i32 23, float 0.000000e+00)  ; Log(value)
  %141 = fmul fast float %140, 0x3FDAAAAAA0000000
  %142 = call float @dx.op.unary.f32(i32 21, float %141)  ; Exp(value)
  %143 = fsub fast float 1.000000e+00, %142
  %144 = call float @dx.op.unary.f32(i32 23, float %143)  ; Log(value)
  %145 = fmul fast float %144, 0x4003333340000000
  %146 = call float @dx.op.unary.f32(i32 21, float %145)  ; Exp(value)
  %147 = fdiv fast float %142, %143
  %148 = fadd fast float %147, %51
  %149 = fadd fast float %147, %52
  %150 = fadd fast float %147, %53
  %151 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %148)  ; FMax(a,b)
  %152 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %149)  ; FMax(a,b)
  %153 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %150)  ; FMax(a,b)
  %154 = call float @dx.op.unary.f32(i32 23, float %151)  ; Log(value)
  %155 = call float @dx.op.unary.f32(i32 23, float %152)  ; Log(value)
  %156 = call float @dx.op.unary.f32(i32 23, float %153)  ; Log(value)
  %157 = fmul fast float %154, 0x4003333340000000
  %158 = fmul fast float %155, 0x4003333340000000
  %159 = fmul fast float %156, 0x4003333340000000
  %160 = call float @dx.op.unary.f32(i32 21, float %157)  ; Exp(value)
  %161 = call float @dx.op.unary.f32(i32 21, float %158)  ; Exp(value)
  %162 = call float @dx.op.unary.f32(i32 21, float %159)  ; Exp(value)
  %163 = fmul fast float %160, %146
  %164 = fmul fast float %161, %146
  %165 = fmul fast float %162, %146
  %166 = extractvalue %dx.types.CBufRet.f32 %54, 1
  %167 = fmul fast float %163, %166
  %168 = fmul fast float %164, %166
  %169 = fmul fast float %165, %166
  %170 = fmul fast float %167, 0x3FEA519BC0000000
  %171 = call float @dx.op.tertiary.f32(i32 46, float 0x3FC6B990A0000000, float %168, float %170)  ; FMad(a,b,c)
  %172 = fmul fast float %167, 0x3FA0FED480000000
  %173 = call float @dx.op.tertiary.f32(i32 46, float 0x3FEEF012C0000000, float %168, float %172)  ; FMad(a,b,c)
  %174 = fmul fast float %167, 0x3F917E1C00000000
  %175 = call float @dx.op.tertiary.f32(i32 46, float 0x3FB288A2E0000000, float %168, float %174)  ; FMad(a,b,c)
  %176 = call float @dx.op.tertiary.f32(i32 46, float 0x3FED22FAA0000000, float %169, float %175)  ; FMad(a,b,c)
  %177 = call float @dx.op.binary.f32(i32 35, float %167, float %168)  ; FMax(a,b)
  %178 = call float @dx.op.binary.f32(i32 35, float %177, float %169)  ; FMax(a,b)
  %179 = fadd fast float %178, -1.000000e+00
  %180 = fmul fast float %179, 2.500000e-01
  %181 = call float @dx.op.unary.f32(i32 7, float %180)  ; Saturate(value)
  %182 = fsub fast float 1.000000e+00, %181
  %183 = fmul fast float %182, %171
  %184 = fmul fast float %182, %173
  %185 = fmul fast float %182, %176
  %186 = fmul fast float %181, %167
  %187 = fmul fast float %181, %168
  %188 = fmul fast float %181, %169
  %189 = fadd fast float %183, %186
  %190 = fadd fast float %184, %187
  %191 = fadd fast float %185, %188
  %192 = fmul fast float %189, 0x3F1A36E2E0000000
  %193 = fmul fast float %190, 0x3F1A36E2E0000000
  %194 = fmul fast float %191, 0x3F1A36E2E0000000
  %195 = call float @dx.op.unary.f32(i32 23, float %192)  ; Log(value)
  %196 = call float @dx.op.unary.f32(i32 23, float %193)  ; Log(value)
  %197 = call float @dx.op.unary.f32(i32 23, float %194)  ; Log(value)
  %198 = fmul fast float %195, 0x3FC4640000000000
  %199 = fmul fast float %196, 0x3FC4640000000000
  %200 = fmul fast float %197, 0x3FC4640000000000
  %201 = call float @dx.op.unary.f32(i32 21, float %198)  ; Exp(value)
  %202 = call float @dx.op.unary.f32(i32 21, float %199)  ; Exp(value)
  %203 = call float @dx.op.unary.f32(i32 21, float %200)  ; Exp(value)
  %204 = fmul fast float %201, 0x4032DA0000000000
  %205 = fmul fast float %202, 0x4032DA0000000000
  %206 = fmul fast float %203, 0x4032DA0000000000
  %207 = fadd fast float %204, 8.359375e-01
  %208 = fadd fast float %205, 8.359375e-01
  %209 = fadd fast float %206, 8.359375e-01
  %210 = fmul fast float %201, 1.868750e+01
  %211 = fmul fast float %202, 1.868750e+01
  %212 = fmul fast float %203, 1.868750e+01
  %213 = fadd fast float %210, 1.000000e+00
  %214 = fadd fast float %211, 1.000000e+00
  %215 = fadd fast float %212, 1.000000e+00
  %216 = fdiv fast float %207, %213
  %217 = fdiv fast float %208, %214
  %218 = fdiv fast float %209, %215
  %219 = call float @dx.op.unary.f32(i32 23, float %216)  ; Log(value)
  %220 = call float @dx.op.unary.f32(i32 23, float %217)  ; Log(value)
  %221 = call float @dx.op.unary.f32(i32 23, float %218)  ; Log(value)
  %222 = fmul fast float %219, 7.884375e+01
  %223 = fmul fast float %220, 7.884375e+01
  %224 = fmul fast float %221, 7.884375e+01
  %225 = call float @dx.op.unary.f32(i32 21, float %222)  ; Exp(value)
  %226 = call float @dx.op.unary.f32(i32 21, float %223)  ; Exp(value)
  %227 = call float @dx.op.unary.f32(i32 21, float %224)  ; Exp(value)
  br label %228

; <label>:228                                     ; preds = %139, %137, %61
  %229 = phi float [ %134, %61 ], [ %225, %139 ], [ %51, %137 ]
  %230 = phi float [ %135, %61 ], [ %226, %139 ], [ %52, %137 ]
  %231 = phi float [ %136, %61 ], [ %227, %139 ], [ %53, %137 ]
  %232 = fmul float %60, %231
  %233 = fmul float %60, %230
  %234 = fmul float %60, %229
  %235 = fadd float %232, %59
  %236 = fadd float %233, %59
  %237 = fadd float %234, %59
  %238 = fmul fast float %237, %22
  %239 = fmul fast float %236, %22
  %240 = fmul fast float %235, %22
  br label %241

; <label>:241                                     ; preds = %228, %32
  %242 = phi float [ %238, %228 ], [ 0.000000e+00, %32 ]
  %243 = phi float [ %239, %228 ], [ 0.000000e+00, %32 ]
  %244 = phi float [ %240, %228 ], [ 0.000000e+00, %32 ]
  %245 = fcmp fast olt float %37, 1.000000e+00
  br i1 %245, label %246, label %338

; <label>:246                                     ; preds = %241
  %247 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 304)  ; CBufferLoadLegacy(handle,regIndex)
  %248 = extractvalue %dx.types.CBufRet.f32 %247, 2
  %249 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 305)  ; CBufferLoadLegacy(handle,regIndex)
  %250 = extractvalue %dx.types.CBufRet.f32 %249, 2
  %251 = extractvalue %dx.types.CBufRet.f32 %249, 3
  %252 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 306)  ; CBufferLoadLegacy(handle,regIndex)
  %253 = extractvalue %dx.types.CBufRet.f32 %252, 0
  %254 = extractvalue %dx.types.CBufRet.f32 %252, 1
  %255 = fcmp fast ugt float %248, 0.000000e+00
  br i1 %255, label %256, label %304

; <label>:256                                     ; preds = %246
  %257 = extractvalue %dx.types.CBufRet.f32 %252, 2
  %258 = fcmp fast ogt float %257, 0.000000e+00
  %259 = extractvalue %dx.types.CBufRet.f32 %249, 1
  %260 = extractvalue %dx.types.CBufRet.f32 %249, 0
  %261 = extractvalue %dx.types.CBufRet.f32 %247, 1
  %262 = extractvalue %dx.types.CBufRet.f32 %247, 0
  %263 = fadd fast float %17, -5.000000e-01
  %264 = fadd fast float %18, -5.000000e-01
  %265 = fmul fast float %262, %263
  %266 = fmul fast float %261, %264
  %267 = fadd fast float %265, %260
  %268 = fadd fast float %266, %259
  br i1 %258, label %269, label %276

; <label>:269                                     ; preds = %256
  %270 = fmul fast float %267, 5.000000e-01
  %271 = fmul fast float %268, 5.000000e-01
  %272 = fadd fast float %270, 5.000000e-01
  %273 = fadd fast float %271, 5.000000e-01
  %274 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %12, float %272, float %273, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %275 = extractvalue %dx.types.ResRet.f32 %274, 0
  br label %289

; <label>:276                                     ; preds = %256
  %277 = fsub fast float -0.000000e+00, %250
  %278 = fsub fast float -0.000000e+00, %251
  %279 = call float @dx.op.binary.f32(i32 35, float %267, float %277)  ; FMax(a,b)
  %280 = call float @dx.op.binary.f32(i32 35, float %268, float %278)  ; FMax(a,b)
  %281 = call float @dx.op.binary.f32(i32 36, float %279, float %250)  ; FMin(a,b)
  %282 = call float @dx.op.binary.f32(i32 36, float %280, float %251)  ; FMin(a,b)
  %283 = fsub fast float %267, %281
  %284 = fsub fast float %268, %282
  %285 = fmul fast float %283, %283
  %286 = fmul fast float %284, %284
  %287 = fadd fast float %286, %285
  %288 = call float @dx.op.unary.f32(i32 24, float %287)  ; Sqrt(value)
  br label %289

; <label>:289                                     ; preds = %276, %269
  %290 = phi float [ %275, %269 ], [ %288, %276 ]
  %291 = fmul fast float %290, %253
  %292 = fadd fast float %291, %254
  %293 = call float @dx.op.unary.f32(i32 7, float %292)  ; Saturate(value)
  %294 = fmul fast float %293, %293
  %295 = fmul fast float %293, 2.000000e+00
  %296 = fsub fast float 3.000000e+00, %295
  %297 = fmul fast float %294, %296
  %298 = fsub fast float %297, %293
  %299 = fmul fast float %298, 0x3FE3333340000000
  %300 = fadd fast float %299, %293
  %301 = fmul fast float %300, %248
  %302 = fsub fast float 1.000000e+00, %301
  %303 = fmul fast float %302, %20
  br label %304

; <label>:304                                     ; preds = %289, %246
  %305 = phi float [ %303, %289 ], [ %20, %246 ]
  %306 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %307 = extractvalue %dx.types.CBufRet.f32 %306, 0
  %308 = extractvalue %dx.types.CBufRet.f32 %306, 1
  %309 = extractvalue %dx.types.CBufRet.f32 %306, 2
  %310 = call float @dx.op.dot3.f32(i32 55, float %305, float %305, float %305, float %307, float %308, float %309)  ; Dot3(ax,ay,az,bx,by,bz)
  %311 = fmul fast float %310, %31
  %312 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %313 = extractvalue %dx.types.CBufRet.f32 %312, 1
  %314 = fmul fast float %311, %313
  %315 = fadd fast float %314, 9.765625e-04
  %316 = call float @dx.op.unary.f32(i32 23, float %315)  ; Log(value)
  %317 = fadd fast float %316, 1.000000e+01
  %318 = fmul fast float %317, 0x3FA99999A0000000
  %319 = call float @dx.op.unary.f32(i32 7, float %318)  ; Saturate(value)
  %320 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %321 = extractvalue %dx.types.CBufRet.f32 %320, 0
  %322 = extractvalue %dx.types.CBufRet.f32 %320, 1
  %323 = extractvalue %dx.types.CBufRet.f32 %320, 2
  %324 = fmul fast float %321, %319
  %325 = fmul fast float %322, %319
  %326 = fmul fast float %323, %319
  %327 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %328 = extractvalue %dx.types.CBufRet.f32 %327, 0
  %329 = extractvalue %dx.types.CBufRet.f32 %327, 1
  %330 = extractvalue %dx.types.CBufRet.f32 %327, 2
  %331 = fadd fast float %324, %328
  %332 = fadd fast float %325, %329
  %333 = fadd fast float %326, %330
  %334 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %12, float %331, float %332, float %333, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %335 = extractvalue %dx.types.ResRet.f32 %334, 0
  %336 = extractvalue %dx.types.ResRet.f32 %334, 1
  %337 = extractvalue %dx.types.ResRet.f32 %334, 2
  br label %338

; <label>:338                                     ; preds = %304, %241
  %339 = phi float [ %335, %304 ], [ 0.000000e+00, %241 ]
  %340 = phi float [ %336, %304 ], [ 0.000000e+00, %241 ]
  %341 = phi float [ %337, %304 ], [ 0.000000e+00, %241 ]
  %342 = fsub fast float %242, %339
  %343 = fsub fast float %243, %340
  %344 = fsub fast float %244, %341
  %345 = fmul fast float %342, %37
  %346 = fmul fast float %343, %37
  %347 = fmul fast float %344, %37
  %348 = fadd fast float %345, %339
  %349 = fadd fast float %346, %340
  %350 = fadd fast float %347, %341
  %351 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 224)  ; CBufferLoadLegacy(handle,regIndex)
  %352 = extractvalue %dx.types.CBufRet.f32 %351, 1
  %353 = fmul fast float %352, %348
  %354 = fmul fast float %349, %352
  %355 = fmul fast float %350, %352
  br label %559

; <label>:356                                     ; preds = %0
  %357 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %16, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %358 = extractvalue %dx.types.CBufRet.i32 %357, 1
  %359 = and i32 %358, 4
  %360 = icmp eq i32 %359, 0
  %361 = extractvalue %dx.types.CBufRet.f32 %23, 0
  %362 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %363 = fsub fast float %361, %362
  %364 = call float @dx.op.unary.f32(i32 6, float %363)  ; FAbs(value)
  %365 = extractvalue %dx.types.CBufRet.f32 %23, 2
  %366 = fsub fast float %364, %365
  %367 = fcmp fast ogt float %366, 0.000000e+00
  %368 = extractvalue %dx.types.CBufRet.f32 %23, 1
  %369 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %370 = fsub fast float %368, %369
  %371 = call float @dx.op.unary.f32(i32 6, float %370)  ; FAbs(value)
  %372 = extractvalue %dx.types.CBufRet.f32 %23, 3
  %373 = fsub fast float %371, %372
  %374 = fcmp fast ogt float %373, 0.000000e+00
  %375 = or i1 %367, %374
  %376 = or i1 %360, %375
  %377 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %12, float %17, float %18, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %378 = extractvalue %dx.types.ResRet.f32 %377, 0
  %379 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %380 = extractvalue %dx.types.CBufRet.f32 %379, 3
  %381 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %382 = extractvalue %dx.types.CBufRet.f32 %381, 1
  %383 = fsub fast float %382, %378
  %384 = fcmp fast ogt float %383, 0.000000e+00
  %385 = fcmp fast olt float %383, 0.000000e+00
  %386 = zext i1 %384 to i32
  %387 = zext i1 %385 to i32
  %388 = sub nsw i32 %386, %387
  %389 = sitofp i32 %388 to float
  %390 = call float @dx.op.unary.f32(i32 6, float %383)  ; FAbs(value)
  %391 = fsub fast float %390, %380
  %392 = call float @dx.op.binary.f32(i32 35, float %391, float 0.000000e+00)  ; FMax(a,b)
  %393 = fmul fast float %389, %392
  %394 = extractvalue %dx.types.CBufRet.f32 %381, 3
  %395 = fsub fast float %382, %393
  %396 = fmul fast float %395, 0xBFF7154760000000
  %397 = call float @dx.op.unary.f32(i32 21, float %396)  ; Exp(value)
  %398 = fmul fast float %397, %394
  %399 = extractvalue %dx.types.CBufRet.f32 %379, 2
  %400 = fadd fast float %398, -1.000000e+00
  %401 = fmul fast float %399, %400
  %402 = fadd fast float %401, 1.000000e+00
  %403 = fmul fast float %402, %20
  %404 = fmul fast float %402, %21
  %405 = fmul fast float %402, %22
  %406 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %16, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %407 = extractvalue %dx.types.CBufRet.i32 %406, 3
  %408 = and i32 %407, 3
  %409 = and i32 %407, 4
  %410 = icmp eq i32 %408, 0
  %411 = icmp ne i32 %409, 0
  %412 = or i1 %410, %411
  %413 = and i1 %376, %412
  br i1 %413, label %414, label %436, !dx.controlflow.hints !40

; <label>:414                                     ; preds = %356
  %415 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %12, float %17, float %18, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %416 = extractvalue %dx.types.ResRet.f32 %415, 0
  %417 = extractvalue %dx.types.ResRet.f32 %415, 1
  %418 = extractvalue %dx.types.ResRet.f32 %415, 2
  %419 = call float @dx.op.binary.f32(i32 35, float %416, float 0.000000e+00)  ; FMax(a,b)
  %420 = call float @dx.op.binary.f32(i32 35, float %417, float 0.000000e+00)  ; FMax(a,b)
  %421 = call float @dx.op.binary.f32(i32 35, float %418, float 0.000000e+00)  ; FMax(a,b)
  %422 = call float @dx.op.binary.f32(i32 36, float %419, float 3.225500e+04)  ; FMin(a,b)
  %423 = call float @dx.op.binary.f32(i32 36, float %420, float 3.225500e+04)  ; FMin(a,b)
  %424 = call float @dx.op.binary.f32(i32 36, float %421, float 3.225500e+04)  ; FMin(a,b)
  %425 = extractvalue %dx.types.CBufRet.f32 %379, 1
  %426 = fmul fast float %425, %403
  %427 = fmul fast float %425, %404
  %428 = fmul fast float %425, %405
  %429 = extractvalue %dx.types.CBufRet.f32 %379, 0
  %430 = fmul fast float %429, %422
  %431 = fmul fast float %429, %423
  %432 = fmul fast float %429, %424
  %433 = fadd fast float %430, %426
  %434 = fadd fast float %431, %427
  %435 = fadd fast float %432, %428
  br label %436

; <label>:436                                     ; preds = %414, %356
  %437 = phi float [ %433, %414 ], [ %403, %356 ]
  %438 = phi float [ %434, %414 ], [ %404, %356 ]
  %439 = phi float [ %435, %414 ], [ %405, %356 ]
  %440 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 304)  ; CBufferLoadLegacy(handle,regIndex)
  %441 = extractvalue %dx.types.CBufRet.f32 %440, 2
  %442 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 305)  ; CBufferLoadLegacy(handle,regIndex)
  %443 = extractvalue %dx.types.CBufRet.f32 %442, 2
  %444 = extractvalue %dx.types.CBufRet.f32 %442, 3
  %445 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 306)  ; CBufferLoadLegacy(handle,regIndex)
  %446 = extractvalue %dx.types.CBufRet.f32 %445, 0
  %447 = extractvalue %dx.types.CBufRet.f32 %445, 1
  %448 = fcmp fast ugt float %441, 0.000000e+00
  br i1 %448, label %449, label %499

; <label>:449                                     ; preds = %436
  %450 = extractvalue %dx.types.CBufRet.f32 %445, 2
  %451 = fcmp fast ogt float %450, 0.000000e+00
  %452 = extractvalue %dx.types.CBufRet.f32 %442, 1
  %453 = extractvalue %dx.types.CBufRet.f32 %442, 0
  %454 = extractvalue %dx.types.CBufRet.f32 %440, 1
  %455 = extractvalue %dx.types.CBufRet.f32 %440, 0
  %456 = fadd fast float %17, -5.000000e-01
  %457 = fadd fast float %18, -5.000000e-01
  %458 = fmul fast float %455, %456
  %459 = fmul fast float %454, %457
  %460 = fadd fast float %458, %453
  %461 = fadd fast float %459, %452
  br i1 %451, label %462, label %469

; <label>:462                                     ; preds = %449
  %463 = fmul fast float %460, 5.000000e-01
  %464 = fmul fast float %461, 5.000000e-01
  %465 = fadd fast float %463, 5.000000e-01
  %466 = fadd fast float %464, 5.000000e-01
  %467 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %12, float %465, float %466, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %468 = extractvalue %dx.types.ResRet.f32 %467, 0
  br label %482

; <label>:469                                     ; preds = %449
  %470 = fsub fast float -0.000000e+00, %443
  %471 = fsub fast float -0.000000e+00, %444
  %472 = call float @dx.op.binary.f32(i32 35, float %460, float %470)  ; FMax(a,b)
  %473 = call float @dx.op.binary.f32(i32 35, float %461, float %471)  ; FMax(a,b)
  %474 = call float @dx.op.binary.f32(i32 36, float %472, float %443)  ; FMin(a,b)
  %475 = call float @dx.op.binary.f32(i32 36, float %473, float %444)  ; FMin(a,b)
  %476 = fsub fast float %460, %474
  %477 = fsub fast float %461, %475
  %478 = fmul fast float %476, %476
  %479 = fmul fast float %477, %477
  %480 = fadd fast float %479, %478
  %481 = call float @dx.op.unary.f32(i32 24, float %480)  ; Sqrt(value)
  br label %482

; <label>:482                                     ; preds = %469, %462
  %483 = phi float [ %468, %462 ], [ %481, %469 ]
  %484 = fmul fast float %483, %446
  %485 = fadd fast float %484, %447
  %486 = call float @dx.op.unary.f32(i32 7, float %485)  ; Saturate(value)
  %487 = fmul fast float %486, %486
  %488 = fmul fast float %486, 2.000000e+00
  %489 = fsub fast float 3.000000e+00, %488
  %490 = fmul fast float %487, %489
  %491 = fsub fast float %490, %486
  %492 = fmul fast float %491, 0x3FE3333340000000
  %493 = fadd fast float %492, %486
  %494 = fmul fast float %493, %441
  %495 = fsub fast float 1.000000e+00, %494
  %496 = fmul fast float %495, %437
  %497 = fmul fast float %495, %438
  %498 = fmul fast float %495, %439
  br label %499

; <label>:499                                     ; preds = %482, %436
  %500 = phi float [ %496, %482 ], [ %437, %436 ]
  %501 = phi float [ %497, %482 ], [ %438, %436 ]
  %502 = phi float [ %498, %482 ], [ %439, %436 ]
  %503 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %504 = extractvalue %dx.types.CBufRet.f32 %503, 0
  %505 = extractvalue %dx.types.CBufRet.f32 %503, 1
  %506 = extractvalue %dx.types.CBufRet.f32 %503, 2
  %507 = call float @dx.op.dot3.f32(i32 55, float %500, float %501, float %502, float %504, float %505, float %506)  ; Dot3(ax,ay,az,bx,by,bz)
  %508 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %509 = extractvalue %dx.types.CBufRet.f32 %508, 0
  %510 = extractvalue %dx.types.CBufRet.f32 %508, 1
  %511 = extractvalue %dx.types.CBufRet.f32 %508, 2
  %512 = call float @dx.op.dot3.f32(i32 55, float %500, float %501, float %502, float %509, float %510, float %511)  ; Dot3(ax,ay,az,bx,by,bz)
  %513 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %514 = extractvalue %dx.types.CBufRet.f32 %513, 0
  %515 = extractvalue %dx.types.CBufRet.f32 %513, 1
  %516 = extractvalue %dx.types.CBufRet.f32 %513, 2
  %517 = call float @dx.op.dot3.f32(i32 55, float %500, float %501, float %502, float %514, float %515, float %516)  ; Dot3(ax,ay,az,bx,by,bz)
  %518 = fmul fast float %507, %31
  %519 = fmul fast float %512, %31
  %520 = fmul fast float %517, %31
  %521 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %522 = extractvalue %dx.types.CBufRet.f32 %521, 2
  %523 = fmul fast float %518, %522
  %524 = fmul fast float %519, %522
  %525 = fmul fast float %520, %522
  %526 = fadd fast float %523, 9.765625e-04
  %527 = fadd fast float %524, 9.765625e-04
  %528 = fadd fast float %525, 9.765625e-04
  %529 = call float @dx.op.unary.f32(i32 23, float %526)  ; Log(value)
  %530 = call float @dx.op.unary.f32(i32 23, float %527)  ; Log(value)
  %531 = call float @dx.op.unary.f32(i32 23, float %528)  ; Log(value)
  %532 = fadd fast float %529, 1.000000e+01
  %533 = fadd fast float %530, 1.000000e+01
  %534 = fadd fast float %531, 1.000000e+01
  %535 = fmul fast float %532, 0x3FA99999A0000000
  %536 = fmul fast float %533, 0x3FA99999A0000000
  %537 = fmul fast float %534, 0x3FA99999A0000000
  %538 = call float @dx.op.unary.f32(i32 7, float %535)  ; Saturate(value)
  %539 = call float @dx.op.unary.f32(i32 7, float %536)  ; Saturate(value)
  %540 = call float @dx.op.unary.f32(i32 7, float %537)  ; Saturate(value)
  %541 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %542 = extractvalue %dx.types.CBufRet.f32 %541, 0
  %543 = extractvalue %dx.types.CBufRet.f32 %541, 1
  %544 = extractvalue %dx.types.CBufRet.f32 %541, 2
  %545 = fmul fast float %542, %538
  %546 = fmul fast float %543, %539
  %547 = fmul fast float %544, %540
  %548 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %549 = extractvalue %dx.types.CBufRet.f32 %548, 0
  %550 = extractvalue %dx.types.CBufRet.f32 %548, 1
  %551 = extractvalue %dx.types.CBufRet.f32 %548, 2
  %552 = fadd fast float %545, %549
  %553 = fadd fast float %546, %550
  %554 = fadd fast float %547, %551
  %555 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %12, float %552, float %553, float %554, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %556 = extractvalue %dx.types.ResRet.f32 %555, 0
  %557 = extractvalue %dx.types.ResRet.f32 %555, 1
  %558 = extractvalue %dx.types.ResRet.f32 %555, 2
  br label %559

; <label>:559                                     ; preds = %499, %338
  %560 = phi float [ %353, %338 ], [ %556, %499 ]
  %561 = phi float [ %354, %338 ], [ %557, %499 ]
  %562 = phi float [ %355, %338 ], [ %558, %499 ]
  %563 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %564 = extractvalue %dx.types.CBufRet.f32 %563, 0
  %565 = fcmp fast ogt float %564, 0.000000e+00
  br i1 %565, label %566, label %610

; <label>:566                                     ; preds = %559
  %567 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %568 = extractvalue %dx.types.CBufRet.f32 %567, 0
  %569 = extractvalue %dx.types.CBufRet.f32 %567, 1
  %570 = fmul fast float %568, %17
  %571 = fmul fast float %569, %18
  %572 = fptoui float %570 to i32
  %573 = fptoui float %571 to i32
  %574 = lshr i32 %572, 3
  %575 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %16, i32 51)  ; CBufferLoadLegacy(handle,regIndex)
  %576 = extractvalue %dx.types.CBufRet.i32 %575, 1
  %577 = shl i32 %576, 1
  %578 = lshr i32 %573, 5
  %579 = extractvalue %dx.types.CBufRet.i32 %575, 0
  %580 = mul i32 %578, %579
  %581 = lshr i32 %572, 6
  %582 = add i32 %581, %577
  %583 = add i32 %582, %580
  %584 = shl i32 %583, 2
  %585 = and i32 %573, 24
  %586 = and i32 %574, 7
  %587 = or i32 %586, %585
  %588 = shl i32 1, %587
  %589 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %584, i32 undef)  ; BufferLoad(srv,index,wot)
  %590 = extractvalue %dx.types.ResRet.i32 %589, 0
  %591 = and i32 %588, %590
  %592 = icmp eq i32 %591, 0
  br i1 %592, label %610, label %593

; <label>:593                                     ; preds = %566
  %594 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %13, float %17, float %18, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %595 = extractvalue %dx.types.ResRet.f32 %594, 0
  %596 = fcmp fast oeq float %595, 0.000000e+00
  br i1 %596, label %597, label %610

; <label>:597                                     ; preds = %593
  %598 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %13, float %17, float %18, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %599 = extractvalue %dx.types.ResRet.f32 %598, 0
  %600 = extractvalue %dx.types.ResRet.f32 %598, 1
  %601 = extractvalue %dx.types.ResRet.f32 %598, 2
  %602 = extractvalue %dx.types.ResRet.f32 %598, 3
  %603 = fsub fast float 1.000000e+00, %602
  %604 = fmul fast float %603, %560
  %605 = fmul fast float %603, %561
  %606 = fmul fast float %603, %562
  %607 = fadd fast float %604, %599
  %608 = fadd fast float %605, %600
  %609 = fadd fast float %606, %601
  br label %610

; <label>:610                                     ; preds = %597, %593, %566, %559
  %611 = phi float [ %607, %597 ], [ %560, %593 ], [ %560, %566 ], [ %560, %559 ]
  %612 = phi float [ %608, %597 ], [ %561, %593 ], [ %561, %566 ], [ %561, %559 ]
  %613 = phi float [ %609, %597 ], [ %562, %593 ], [ %562, %566 ], [ %562, %559 ]
  %614 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %615 = extractvalue %dx.types.CBufRet.f32 %614, 0
  %616 = extractvalue %dx.types.CBufRet.f32 %614, 1
  %617 = extractvalue %dx.types.CBufRet.f32 %614, 2
  %618 = call float @dx.op.dot3.f32(i32 55, float %611, float %612, float %613, float %615, float %616, float %617)  ; Dot3(ax,ay,az,bx,by,bz)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %611)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %612)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %613)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 1.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float %618)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  ret void
}

; Function Attrs: nounwind readnone
declare float @dx.op.loadInput.f32(i32, i32, i32, i8, i32) #0

; Function Attrs: nounwind
declare void @dx.op.storeOutput.f32(i32, i32, i32, i8, float) #1

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

; Function Attrs: nounwind readnone
declare float @dx.op.unary.f32(i32, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.binary.f32(i32, float, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.tertiary.f32(i32, float, float, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.dot3.f32(i32, float, float, float, float, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32, %dx.types.Handle, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32, %dx.types.Handle, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.Handle @dx.op.createHandle(i32, i8, i32, i32, i1) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32, %dx.types.Handle, i32, i32) #2

attributes #0 = { nounwind readnone }
attributes #1 = { nounwind }
attributes #2 = { nounwind readonly }

!llvm.ident = !{!0}
!dx.version = !{!1}
!dx.valver = !{!2}
!dx.shaderModel = !{!3}
!dx.resources = !{!4}
!dx.viewIdState = !{!25}
!dx.entryPoints = !{!26}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 1}
!2 = !{i32 1, i32 6}
!3 = !{!"ps", i32 6, i32 1}
!4 = !{!5, null, !18, !22}
!5 = !{!6, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17}
!6 = !{i32 0, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 0, i32 1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 1, i32 1, i32 2, i32 0, !7}
!9 = !{i32 2, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 74, i32 1, i32 4, i32 0, !7}
!10 = !{i32 3, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 75, i32 1, i32 4, i32 0, !7}
!11 = !{i32 4, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 2, i32 1, i32 2, i32 0, !7}
!12 = !{i32 5, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 3, i32 1, i32 2, i32 0, !7}
!13 = !{i32 6, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 69, i32 1, i32 2, i32 0, !7}
!14 = !{i32 7, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 73, i32 1, i32 2, i32 0, !7}
!15 = !{i32 8, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 4, i32 1, i32 2, i32 0, !7}
!16 = !{i32 9, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 5, i32 1, i32 2, i32 0, !7}
!17 = !{i32 10, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 15, i32 1, i32 11, i32 0, null}
!18 = !{!19, !20, !21}
!19 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!20 = !{i32 1, %perObject* undef, !"", i32 0, i32 1, i32 1, i32 224, null}
!21 = !{i32 2, %tonemapping* undef, !"", i32 0, i32 4, i32 1, i32 64, null}
!22 = !{!23, !24}
!23 = !{i32 0, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!24 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!25 = !{[8 x i32] [i32 6, i32 5, i32 23, i32 23, i32 0, i32 0, i32 23, i32 23]}
!26 = !{void ()* @ps_main, !"ps_main", !27, !4, !39}
!27 = !{!28, !33, null}
!28 = !{!29, !32}
!29 = !{i32 0, !"SV_Position", i8 9, i8 3, !30, i8 4, i32 1, i8 4, i32 0, i8 0, !31}
!30 = !{i32 0}
!31 = !{i32 3, i32 3}
!32 = !{i32 1, !"TEXCOORD", i8 9, i8 0, !30, i8 2, i32 1, i8 2, i32 1, i8 0, !31}
!33 = !{!34, !36}
!34 = !{i32 0, !"SV_Target", i8 9, i8 16, !30, i8 0, i32 1, i8 4, i32 0, i8 0, !35}
!35 = !{i32 3, i32 15}
!36 = !{i32 1, !"SV_Target", i8 9, i8 16, !37, i8 0, i32 1, i8 1, i32 1, i8 0, !38}
!37 = !{i32 1}
!38 = !{i32 3, i32 1}
!39 = !{i32 0, i64 16}
!40 = distinct !{!40, !"dx.controlflow.hints", i32 1}

