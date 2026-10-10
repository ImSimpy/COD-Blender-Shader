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
; shader hash: f63f9180c2bca8e8f1c32734c6c6152b
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
;                                   texture     f32          2d      T7             t4     1
;                                   texture     f32          2d      T8             t5     1
;                                   texture    byte         r/o      T9     t15,space1     1
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
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 15, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 75, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 74, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 2, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %17 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %18 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %11, float %16, float %17, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %19 = extractvalue %dx.types.ResRet.f32 %18, 0
  %20 = extractvalue %dx.types.ResRet.f32 %18, 1
  %21 = extractvalue %dx.types.ResRet.f32 %18, 2
  %22 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %23 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %11, float %16, float %17, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %24 = extractvalue %dx.types.ResRet.f32 %23, 0
  %25 = fsub fast float 1.000000e+00, %24
  %26 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %27 = extractvalue %dx.types.CBufRet.f32 %26, 0
  %28 = fcmp fast olt float %25, %27
  %29 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 218)  ; CBufferLoadLegacy(handle,regIndex)
  %30 = extractvalue %dx.types.CBufRet.f32 %29, 0
  br i1 %28, label %31, label %363

; <label>:31                                      ; preds = %0
  %32 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %33 = extractvalue %dx.types.CBufRet.f32 %32, 0
  %34 = fsub fast float %20, %33
  %35 = fmul fast float %34, 1.000000e+01
  %36 = call float @dx.op.unary.f32(i32 7, float %35)  ; Saturate(value)
  %37 = fcmp fast ogt float %36, 0.000000e+00
  br i1 %37, label %38, label %248

; <label>:38                                      ; preds = %31
  %39 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 237)  ; CBufferLoadLegacy(handle,regIndex)
  %40 = extractvalue %dx.types.CBufRet.f32 %39, 3
  %41 = call float @dx.op.unary.f32(i32 7, float %20)  ; Saturate(value)
  %42 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 238)  ; CBufferLoadLegacy(handle,regIndex)
  %43 = extractvalue %dx.types.CBufRet.f32 %42, 0
  %44 = extractvalue %dx.types.CBufRet.f32 %42, 1
  %45 = extractvalue %dx.types.CBufRet.f32 %42, 2
  %46 = extractvalue %dx.types.CBufRet.f32 %39, 0
  %47 = extractvalue %dx.types.CBufRet.f32 %39, 1
  %48 = extractvalue %dx.types.CBufRet.f32 %39, 2
  %49 = fsub fast float %43, %46
  %50 = fsub fast float %44, %47
  %51 = fsub fast float %45, %48
  %52 = fmul fast float %49, %41
  %53 = fmul fast float %50, %41
  %54 = fmul fast float %51, %41
  %55 = fadd fast float %52, %46
  %56 = fadd fast float %53, %47
  %57 = fadd fast float %54, %48
  %58 = fmul fast float %55, %40
  %59 = fmul fast float %56, %40
  %60 = fmul fast float %57, %40
  %61 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 219)  ; CBufferLoadLegacy(handle,regIndex)
  %62 = extractvalue %dx.types.CBufRet.f32 %61, 0
  %63 = bitcast float %62 to i32
  %64 = icmp eq i32 %63, 3
  %65 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %66 = extractvalue %dx.types.CBufRet.f32 %65, 2
  %67 = fsub fast float 1.000000e+00, %66
  br i1 %64, label %68, label %144

; <label>:68                                      ; preds = %38
  %69 = call float @dx.op.unary.f32(i32 23, float 0.000000e+00)  ; Log(value)
  %70 = fmul fast float %69, 0x3FDAAAAAA0000000
  %71 = call float @dx.op.unary.f32(i32 21, float %70)  ; Exp(value)
  %72 = fsub fast float 1.000000e+00, %71
  %73 = call float @dx.op.unary.f32(i32 23, float %72)  ; Log(value)
  %74 = fmul fast float %73, 0x4003333340000000
  %75 = call float @dx.op.unary.f32(i32 21, float %74)  ; Exp(value)
  %76 = fdiv fast float %71, %72
  %77 = fadd fast float %76, %58
  %78 = fadd fast float %76, %59
  %79 = fadd fast float %76, %60
  %80 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %77)  ; FMax(a,b)
  %81 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %78)  ; FMax(a,b)
  %82 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %79)  ; FMax(a,b)
  %83 = call float @dx.op.unary.f32(i32 23, float %80)  ; Log(value)
  %84 = call float @dx.op.unary.f32(i32 23, float %81)  ; Log(value)
  %85 = call float @dx.op.unary.f32(i32 23, float %82)  ; Log(value)
  %86 = fmul fast float %83, 0x4003333340000000
  %87 = fmul fast float %84, 0x4003333340000000
  %88 = fmul fast float %85, 0x4003333340000000
  %89 = call float @dx.op.unary.f32(i32 21, float %86)  ; Exp(value)
  %90 = call float @dx.op.unary.f32(i32 21, float %87)  ; Exp(value)
  %91 = call float @dx.op.unary.f32(i32 21, float %88)  ; Exp(value)
  %92 = fmul fast float %89, %75
  %93 = fmul fast float %90, %75
  %94 = fmul fast float %91, %75
  %95 = extractvalue %dx.types.CBufRet.f32 %61, 1
  %96 = fmul fast float %92, %95
  %97 = fmul fast float %93, %95
  %98 = fmul fast float %94, %95
  %99 = fmul fast float %96, 0x3FE413A920000000
  %100 = call float @dx.op.tertiary.f32(i32 46, float 0x3FD5134040000000, float %97, float %99)  ; FMad(a,b,c)
  %101 = call float @dx.op.tertiary.f32(i32 46, float 0x3FA62B6AE0000000, float %98, float %100)  ; FMad(a,b,c)
  %102 = fmul fast float %96, 0x3FB1B089A0000000
  %103 = call float @dx.op.tertiary.f32(i32 46, float 0x3FED6C8B40000000, float %97, float %102)  ; FMad(a,b,c)
  %104 = call float @dx.op.tertiary.f32(i32 46, float 0x3F8758E220000000, float %98, float %103)  ; FMad(a,b,c)
  %105 = fmul fast float %96, 0x3F90CB2960000000
  %106 = call float @dx.op.tertiary.f32(i32 46, float 0x3FB6872B00000000, float %97, float %105)  ; FMad(a,b,c)
  %107 = call float @dx.op.tertiary.f32(i32 46, float 0x3FECA8C160000000, float %98, float %106)  ; FMad(a,b,c)
  %108 = fmul fast float %101, 0x3F1A36E2E0000000
  %109 = fmul fast float %104, 0x3F1A36E2E0000000
  %110 = fmul fast float %107, 0x3F1A36E2E0000000
  %111 = call float @dx.op.unary.f32(i32 23, float %108)  ; Log(value)
  %112 = call float @dx.op.unary.f32(i32 23, float %109)  ; Log(value)
  %113 = call float @dx.op.unary.f32(i32 23, float %110)  ; Log(value)
  %114 = fmul fast float %111, 0x3FC4640000000000
  %115 = fmul fast float %112, 0x3FC4640000000000
  %116 = fmul fast float %113, 0x3FC4640000000000
  %117 = call float @dx.op.unary.f32(i32 21, float %114)  ; Exp(value)
  %118 = call float @dx.op.unary.f32(i32 21, float %115)  ; Exp(value)
  %119 = call float @dx.op.unary.f32(i32 21, float %116)  ; Exp(value)
  %120 = fmul fast float %117, 0x4032DA0000000000
  %121 = fmul fast float %118, 0x4032DA0000000000
  %122 = fmul fast float %119, 0x4032DA0000000000
  %123 = fadd fast float %120, 8.359375e-01
  %124 = fadd fast float %121, 8.359375e-01
  %125 = fadd fast float %122, 8.359375e-01
  %126 = fmul fast float %117, 1.868750e+01
  %127 = fmul fast float %118, 1.868750e+01
  %128 = fmul fast float %119, 1.868750e+01
  %129 = fadd fast float %126, 1.000000e+00
  %130 = fadd fast float %127, 1.000000e+00
  %131 = fadd fast float %128, 1.000000e+00
  %132 = fdiv fast float %123, %129
  %133 = fdiv fast float %124, %130
  %134 = fdiv fast float %125, %131
  %135 = call float @dx.op.unary.f32(i32 23, float %132)  ; Log(value)
  %136 = call float @dx.op.unary.f32(i32 23, float %133)  ; Log(value)
  %137 = call float @dx.op.unary.f32(i32 23, float %134)  ; Log(value)
  %138 = fmul fast float %135, 7.884375e+01
  %139 = fmul fast float %136, 7.884375e+01
  %140 = fmul fast float %137, 7.884375e+01
  %141 = call float @dx.op.unary.f32(i32 21, float %138)  ; Exp(value)
  %142 = call float @dx.op.unary.f32(i32 21, float %139)  ; Exp(value)
  %143 = call float @dx.op.unary.f32(i32 21, float %140)  ; Exp(value)
  br label %235

; <label>:144                                     ; preds = %38
  %145 = icmp eq i32 %63, 4
  br i1 %145, label %146, label %235

; <label>:146                                     ; preds = %144
  %147 = call float @dx.op.unary.f32(i32 23, float 0.000000e+00)  ; Log(value)
  %148 = fmul fast float %147, 0x3FDAAAAAA0000000
  %149 = call float @dx.op.unary.f32(i32 21, float %148)  ; Exp(value)
  %150 = fsub fast float 1.000000e+00, %149
  %151 = call float @dx.op.unary.f32(i32 23, float %150)  ; Log(value)
  %152 = fmul fast float %151, 0x4003333340000000
  %153 = call float @dx.op.unary.f32(i32 21, float %152)  ; Exp(value)
  %154 = fdiv fast float %149, %150
  %155 = fadd fast float %154, %58
  %156 = fadd fast float %154, %59
  %157 = fadd fast float %154, %60
  %158 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %155)  ; FMax(a,b)
  %159 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %156)  ; FMax(a,b)
  %160 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %157)  ; FMax(a,b)
  %161 = call float @dx.op.unary.f32(i32 23, float %158)  ; Log(value)
  %162 = call float @dx.op.unary.f32(i32 23, float %159)  ; Log(value)
  %163 = call float @dx.op.unary.f32(i32 23, float %160)  ; Log(value)
  %164 = fmul fast float %161, 0x4003333340000000
  %165 = fmul fast float %162, 0x4003333340000000
  %166 = fmul fast float %163, 0x4003333340000000
  %167 = call float @dx.op.unary.f32(i32 21, float %164)  ; Exp(value)
  %168 = call float @dx.op.unary.f32(i32 21, float %165)  ; Exp(value)
  %169 = call float @dx.op.unary.f32(i32 21, float %166)  ; Exp(value)
  %170 = fmul fast float %167, %153
  %171 = fmul fast float %168, %153
  %172 = fmul fast float %169, %153
  %173 = extractvalue %dx.types.CBufRet.f32 %61, 1
  %174 = fmul fast float %170, %173
  %175 = fmul fast float %171, %173
  %176 = fmul fast float %172, %173
  %177 = fmul fast float %174, 0x3FEA519BC0000000
  %178 = call float @dx.op.tertiary.f32(i32 46, float 0x3FC6B990A0000000, float %175, float %177)  ; FMad(a,b,c)
  %179 = fmul fast float %174, 0x3FA0FED480000000
  %180 = call float @dx.op.tertiary.f32(i32 46, float 0x3FEEF012C0000000, float %175, float %179)  ; FMad(a,b,c)
  %181 = fmul fast float %174, 0x3F917E1C00000000
  %182 = call float @dx.op.tertiary.f32(i32 46, float 0x3FB288A2E0000000, float %175, float %181)  ; FMad(a,b,c)
  %183 = call float @dx.op.tertiary.f32(i32 46, float 0x3FED22FAA0000000, float %176, float %182)  ; FMad(a,b,c)
  %184 = call float @dx.op.binary.f32(i32 35, float %174, float %175)  ; FMax(a,b)
  %185 = call float @dx.op.binary.f32(i32 35, float %184, float %176)  ; FMax(a,b)
  %186 = fadd fast float %185, -1.000000e+00
  %187 = fmul fast float %186, 2.500000e-01
  %188 = call float @dx.op.unary.f32(i32 7, float %187)  ; Saturate(value)
  %189 = fsub fast float 1.000000e+00, %188
  %190 = fmul fast float %189, %178
  %191 = fmul fast float %189, %180
  %192 = fmul fast float %189, %183
  %193 = fmul fast float %188, %174
  %194 = fmul fast float %188, %175
  %195 = fmul fast float %188, %176
  %196 = fadd fast float %190, %193
  %197 = fadd fast float %191, %194
  %198 = fadd fast float %192, %195
  %199 = fmul fast float %196, 0x3F1A36E2E0000000
  %200 = fmul fast float %197, 0x3F1A36E2E0000000
  %201 = fmul fast float %198, 0x3F1A36E2E0000000
  %202 = call float @dx.op.unary.f32(i32 23, float %199)  ; Log(value)
  %203 = call float @dx.op.unary.f32(i32 23, float %200)  ; Log(value)
  %204 = call float @dx.op.unary.f32(i32 23, float %201)  ; Log(value)
  %205 = fmul fast float %202, 0x3FC4640000000000
  %206 = fmul fast float %203, 0x3FC4640000000000
  %207 = fmul fast float %204, 0x3FC4640000000000
  %208 = call float @dx.op.unary.f32(i32 21, float %205)  ; Exp(value)
  %209 = call float @dx.op.unary.f32(i32 21, float %206)  ; Exp(value)
  %210 = call float @dx.op.unary.f32(i32 21, float %207)  ; Exp(value)
  %211 = fmul fast float %208, 0x4032DA0000000000
  %212 = fmul fast float %209, 0x4032DA0000000000
  %213 = fmul fast float %210, 0x4032DA0000000000
  %214 = fadd fast float %211, 8.359375e-01
  %215 = fadd fast float %212, 8.359375e-01
  %216 = fadd fast float %213, 8.359375e-01
  %217 = fmul fast float %208, 1.868750e+01
  %218 = fmul fast float %209, 1.868750e+01
  %219 = fmul fast float %210, 1.868750e+01
  %220 = fadd fast float %217, 1.000000e+00
  %221 = fadd fast float %218, 1.000000e+00
  %222 = fadd fast float %219, 1.000000e+00
  %223 = fdiv fast float %214, %220
  %224 = fdiv fast float %215, %221
  %225 = fdiv fast float %216, %222
  %226 = call float @dx.op.unary.f32(i32 23, float %223)  ; Log(value)
  %227 = call float @dx.op.unary.f32(i32 23, float %224)  ; Log(value)
  %228 = call float @dx.op.unary.f32(i32 23, float %225)  ; Log(value)
  %229 = fmul fast float %226, 7.884375e+01
  %230 = fmul fast float %227, 7.884375e+01
  %231 = fmul fast float %228, 7.884375e+01
  %232 = call float @dx.op.unary.f32(i32 21, float %229)  ; Exp(value)
  %233 = call float @dx.op.unary.f32(i32 21, float %230)  ; Exp(value)
  %234 = call float @dx.op.unary.f32(i32 21, float %231)  ; Exp(value)
  br label %235

; <label>:235                                     ; preds = %146, %144, %68
  %236 = phi float [ %141, %68 ], [ %232, %146 ], [ %58, %144 ]
  %237 = phi float [ %142, %68 ], [ %233, %146 ], [ %59, %144 ]
  %238 = phi float [ %143, %68 ], [ %234, %146 ], [ %60, %144 ]
  %239 = fmul float %67, %238
  %240 = fmul float %67, %237
  %241 = fmul float %67, %236
  %242 = fadd float %239, %66
  %243 = fadd float %240, %66
  %244 = fadd float %241, %66
  %245 = fmul fast float %244, %21
  %246 = fmul fast float %243, %21
  %247 = fmul fast float %242, %21
  br label %248

; <label>:248                                     ; preds = %235, %31
  %249 = phi float [ %245, %235 ], [ 0.000000e+00, %31 ]
  %250 = phi float [ %246, %235 ], [ 0.000000e+00, %31 ]
  %251 = phi float [ %247, %235 ], [ 0.000000e+00, %31 ]
  %252 = fcmp fast olt float %36, 1.000000e+00
  br i1 %252, label %253, label %345

; <label>:253                                     ; preds = %248
  %254 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 304)  ; CBufferLoadLegacy(handle,regIndex)
  %255 = extractvalue %dx.types.CBufRet.f32 %254, 2
  %256 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 305)  ; CBufferLoadLegacy(handle,regIndex)
  %257 = extractvalue %dx.types.CBufRet.f32 %256, 2
  %258 = extractvalue %dx.types.CBufRet.f32 %256, 3
  %259 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 306)  ; CBufferLoadLegacy(handle,regIndex)
  %260 = extractvalue %dx.types.CBufRet.f32 %259, 0
  %261 = extractvalue %dx.types.CBufRet.f32 %259, 1
  %262 = fcmp fast ugt float %255, 0.000000e+00
  br i1 %262, label %263, label %311

; <label>:263                                     ; preds = %253
  %264 = extractvalue %dx.types.CBufRet.f32 %259, 2
  %265 = fcmp fast ogt float %264, 0.000000e+00
  %266 = extractvalue %dx.types.CBufRet.f32 %256, 1
  %267 = extractvalue %dx.types.CBufRet.f32 %256, 0
  %268 = extractvalue %dx.types.CBufRet.f32 %254, 1
  %269 = extractvalue %dx.types.CBufRet.f32 %254, 0
  %270 = fadd fast float %16, -5.000000e-01
  %271 = fadd fast float %17, -5.000000e-01
  %272 = fmul fast float %269, %270
  %273 = fmul fast float %268, %271
  %274 = fadd fast float %272, %267
  %275 = fadd fast float %273, %266
  br i1 %265, label %276, label %283

; <label>:276                                     ; preds = %263
  %277 = fmul fast float %274, 5.000000e-01
  %278 = fmul fast float %275, 5.000000e-01
  %279 = fadd fast float %277, 5.000000e-01
  %280 = fadd fast float %278, 5.000000e-01
  %281 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %11, float %279, float %280, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %282 = extractvalue %dx.types.ResRet.f32 %281, 0
  br label %296

; <label>:283                                     ; preds = %263
  %284 = fsub fast float -0.000000e+00, %257
  %285 = fsub fast float -0.000000e+00, %258
  %286 = call float @dx.op.binary.f32(i32 35, float %274, float %284)  ; FMax(a,b)
  %287 = call float @dx.op.binary.f32(i32 35, float %275, float %285)  ; FMax(a,b)
  %288 = call float @dx.op.binary.f32(i32 36, float %286, float %257)  ; FMin(a,b)
  %289 = call float @dx.op.binary.f32(i32 36, float %287, float %258)  ; FMin(a,b)
  %290 = fsub fast float %274, %288
  %291 = fsub fast float %275, %289
  %292 = fmul fast float %290, %290
  %293 = fmul fast float %291, %291
  %294 = fadd fast float %293, %292
  %295 = call float @dx.op.unary.f32(i32 24, float %294)  ; Sqrt(value)
  br label %296

; <label>:296                                     ; preds = %283, %276
  %297 = phi float [ %282, %276 ], [ %295, %283 ]
  %298 = fmul fast float %297, %260
  %299 = fadd fast float %298, %261
  %300 = call float @dx.op.unary.f32(i32 7, float %299)  ; Saturate(value)
  %301 = fmul fast float %300, %300
  %302 = fmul fast float %300, 2.000000e+00
  %303 = fsub fast float 3.000000e+00, %302
  %304 = fmul fast float %301, %303
  %305 = fsub fast float %304, %300
  %306 = fmul fast float %305, 0x3FE3333340000000
  %307 = fadd fast float %306, %300
  %308 = fmul fast float %307, %255
  %309 = fsub fast float 1.000000e+00, %308
  %310 = fmul fast float %309, %19
  br label %311

; <label>:311                                     ; preds = %296, %253
  %312 = phi float [ %310, %296 ], [ %19, %253 ]
  %313 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %314 = extractvalue %dx.types.CBufRet.f32 %313, 0
  %315 = extractvalue %dx.types.CBufRet.f32 %313, 1
  %316 = extractvalue %dx.types.CBufRet.f32 %313, 2
  %317 = call float @dx.op.dot3.f32(i32 55, float %312, float %312, float %312, float %314, float %315, float %316)  ; Dot3(ax,ay,az,bx,by,bz)
  %318 = fmul fast float %317, %30
  %319 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %320 = extractvalue %dx.types.CBufRet.f32 %319, 1
  %321 = fmul fast float %318, %320
  %322 = fadd fast float %321, 9.765625e-04
  %323 = call float @dx.op.unary.f32(i32 23, float %322)  ; Log(value)
  %324 = fadd fast float %323, 1.000000e+01
  %325 = fmul fast float %324, 0x3FA99999A0000000
  %326 = call float @dx.op.unary.f32(i32 7, float %325)  ; Saturate(value)
  %327 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %328 = extractvalue %dx.types.CBufRet.f32 %327, 0
  %329 = extractvalue %dx.types.CBufRet.f32 %327, 1
  %330 = extractvalue %dx.types.CBufRet.f32 %327, 2
  %331 = fmul fast float %328, %326
  %332 = fmul fast float %329, %326
  %333 = fmul fast float %330, %326
  %334 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %335 = extractvalue %dx.types.CBufRet.f32 %334, 0
  %336 = extractvalue %dx.types.CBufRet.f32 %334, 1
  %337 = extractvalue %dx.types.CBufRet.f32 %334, 2
  %338 = fadd fast float %331, %335
  %339 = fadd fast float %332, %336
  %340 = fadd fast float %333, %337
  %341 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %11, float %338, float %339, float %340, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %342 = extractvalue %dx.types.ResRet.f32 %341, 0
  %343 = extractvalue %dx.types.ResRet.f32 %341, 1
  %344 = extractvalue %dx.types.ResRet.f32 %341, 2
  br label %345

; <label>:345                                     ; preds = %311, %248
  %346 = phi float [ %342, %311 ], [ 0.000000e+00, %248 ]
  %347 = phi float [ %343, %311 ], [ 0.000000e+00, %248 ]
  %348 = phi float [ %344, %311 ], [ 0.000000e+00, %248 ]
  %349 = fsub fast float %249, %346
  %350 = fsub fast float %250, %347
  %351 = fsub fast float %251, %348
  %352 = fmul fast float %349, %36
  %353 = fmul fast float %350, %36
  %354 = fmul fast float %351, %36
  %355 = fadd fast float %352, %346
  %356 = fadd fast float %353, %347
  %357 = fadd fast float %354, %348
  %358 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 224)  ; CBufferLoadLegacy(handle,regIndex)
  %359 = extractvalue %dx.types.CBufRet.f32 %358, 1
  %360 = fmul fast float %359, %355
  %361 = fmul fast float %356, %359
  %362 = fmul fast float %357, %359
  br label %566

; <label>:363                                     ; preds = %0
  %364 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %15, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %365 = extractvalue %dx.types.CBufRet.i32 %364, 1
  %366 = and i32 %365, 4
  %367 = icmp eq i32 %366, 0
  %368 = extractvalue %dx.types.CBufRet.f32 %22, 0
  %369 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %370 = fsub fast float %368, %369
  %371 = call float @dx.op.unary.f32(i32 6, float %370)  ; FAbs(value)
  %372 = extractvalue %dx.types.CBufRet.f32 %22, 2
  %373 = fsub fast float %371, %372
  %374 = fcmp fast ogt float %373, 0.000000e+00
  %375 = extractvalue %dx.types.CBufRet.f32 %22, 1
  %376 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %377 = fsub fast float %375, %376
  %378 = call float @dx.op.unary.f32(i32 6, float %377)  ; FAbs(value)
  %379 = extractvalue %dx.types.CBufRet.f32 %22, 3
  %380 = fsub fast float %378, %379
  %381 = fcmp fast ogt float %380, 0.000000e+00
  %382 = or i1 %374, %381
  %383 = or i1 %367, %382
  %384 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %11, float %16, float %17, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %385 = extractvalue %dx.types.ResRet.f32 %384, 0
  %386 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %387 = extractvalue %dx.types.CBufRet.f32 %386, 3
  %388 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %389 = extractvalue %dx.types.CBufRet.f32 %388, 1
  %390 = fsub fast float %389, %385
  %391 = fcmp fast ogt float %390, 0.000000e+00
  %392 = fcmp fast olt float %390, 0.000000e+00
  %393 = zext i1 %391 to i32
  %394 = zext i1 %392 to i32
  %395 = sub nsw i32 %393, %394
  %396 = sitofp i32 %395 to float
  %397 = call float @dx.op.unary.f32(i32 6, float %390)  ; FAbs(value)
  %398 = fsub fast float %397, %387
  %399 = call float @dx.op.binary.f32(i32 35, float %398, float 0.000000e+00)  ; FMax(a,b)
  %400 = fmul fast float %396, %399
  %401 = extractvalue %dx.types.CBufRet.f32 %388, 3
  %402 = fsub fast float %389, %400
  %403 = fmul fast float %402, 0xBFF7154760000000
  %404 = call float @dx.op.unary.f32(i32 21, float %403)  ; Exp(value)
  %405 = fmul fast float %404, %401
  %406 = extractvalue %dx.types.CBufRet.f32 %386, 2
  %407 = fadd fast float %405, -1.000000e+00
  %408 = fmul fast float %406, %407
  %409 = fadd fast float %408, 1.000000e+00
  %410 = fmul fast float %409, %19
  %411 = fmul fast float %409, %20
  %412 = fmul fast float %409, %21
  %413 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %15, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %414 = extractvalue %dx.types.CBufRet.i32 %413, 3
  %415 = and i32 %414, 3
  %416 = and i32 %414, 4
  %417 = icmp eq i32 %415, 0
  %418 = icmp ne i32 %416, 0
  %419 = or i1 %417, %418
  %420 = and i1 %383, %419
  br i1 %420, label %421, label %443, !dx.controlflow.hints !39

; <label>:421                                     ; preds = %363
  %422 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %11, float %16, float %17, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %423 = extractvalue %dx.types.ResRet.f32 %422, 0
  %424 = extractvalue %dx.types.ResRet.f32 %422, 1
  %425 = extractvalue %dx.types.ResRet.f32 %422, 2
  %426 = call float @dx.op.binary.f32(i32 35, float %423, float 0.000000e+00)  ; FMax(a,b)
  %427 = call float @dx.op.binary.f32(i32 35, float %424, float 0.000000e+00)  ; FMax(a,b)
  %428 = call float @dx.op.binary.f32(i32 35, float %425, float 0.000000e+00)  ; FMax(a,b)
  %429 = call float @dx.op.binary.f32(i32 36, float %426, float 3.225500e+04)  ; FMin(a,b)
  %430 = call float @dx.op.binary.f32(i32 36, float %427, float 3.225500e+04)  ; FMin(a,b)
  %431 = call float @dx.op.binary.f32(i32 36, float %428, float 3.225500e+04)  ; FMin(a,b)
  %432 = extractvalue %dx.types.CBufRet.f32 %386, 1
  %433 = fmul fast float %432, %410
  %434 = fmul fast float %432, %411
  %435 = fmul fast float %432, %412
  %436 = extractvalue %dx.types.CBufRet.f32 %386, 0
  %437 = fmul fast float %436, %429
  %438 = fmul fast float %436, %430
  %439 = fmul fast float %436, %431
  %440 = fadd fast float %437, %433
  %441 = fadd fast float %438, %434
  %442 = fadd fast float %439, %435
  br label %443

; <label>:443                                     ; preds = %421, %363
  %444 = phi float [ %440, %421 ], [ %410, %363 ]
  %445 = phi float [ %441, %421 ], [ %411, %363 ]
  %446 = phi float [ %442, %421 ], [ %412, %363 ]
  %447 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 304)  ; CBufferLoadLegacy(handle,regIndex)
  %448 = extractvalue %dx.types.CBufRet.f32 %447, 2
  %449 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 305)  ; CBufferLoadLegacy(handle,regIndex)
  %450 = extractvalue %dx.types.CBufRet.f32 %449, 2
  %451 = extractvalue %dx.types.CBufRet.f32 %449, 3
  %452 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 306)  ; CBufferLoadLegacy(handle,regIndex)
  %453 = extractvalue %dx.types.CBufRet.f32 %452, 0
  %454 = extractvalue %dx.types.CBufRet.f32 %452, 1
  %455 = fcmp fast ugt float %448, 0.000000e+00
  br i1 %455, label %456, label %506

; <label>:456                                     ; preds = %443
  %457 = extractvalue %dx.types.CBufRet.f32 %452, 2
  %458 = fcmp fast ogt float %457, 0.000000e+00
  %459 = extractvalue %dx.types.CBufRet.f32 %449, 1
  %460 = extractvalue %dx.types.CBufRet.f32 %449, 0
  %461 = extractvalue %dx.types.CBufRet.f32 %447, 1
  %462 = extractvalue %dx.types.CBufRet.f32 %447, 0
  %463 = fadd fast float %16, -5.000000e-01
  %464 = fadd fast float %17, -5.000000e-01
  %465 = fmul fast float %462, %463
  %466 = fmul fast float %461, %464
  %467 = fadd fast float %465, %460
  %468 = fadd fast float %466, %459
  br i1 %458, label %469, label %476

; <label>:469                                     ; preds = %456
  %470 = fmul fast float %467, 5.000000e-01
  %471 = fmul fast float %468, 5.000000e-01
  %472 = fadd fast float %470, 5.000000e-01
  %473 = fadd fast float %471, 5.000000e-01
  %474 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %11, float %472, float %473, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %475 = extractvalue %dx.types.ResRet.f32 %474, 0
  br label %489

; <label>:476                                     ; preds = %456
  %477 = fsub fast float -0.000000e+00, %450
  %478 = fsub fast float -0.000000e+00, %451
  %479 = call float @dx.op.binary.f32(i32 35, float %467, float %477)  ; FMax(a,b)
  %480 = call float @dx.op.binary.f32(i32 35, float %468, float %478)  ; FMax(a,b)
  %481 = call float @dx.op.binary.f32(i32 36, float %479, float %450)  ; FMin(a,b)
  %482 = call float @dx.op.binary.f32(i32 36, float %480, float %451)  ; FMin(a,b)
  %483 = fsub fast float %467, %481
  %484 = fsub fast float %468, %482
  %485 = fmul fast float %483, %483
  %486 = fmul fast float %484, %484
  %487 = fadd fast float %486, %485
  %488 = call float @dx.op.unary.f32(i32 24, float %487)  ; Sqrt(value)
  br label %489

; <label>:489                                     ; preds = %476, %469
  %490 = phi float [ %475, %469 ], [ %488, %476 ]
  %491 = fmul fast float %490, %453
  %492 = fadd fast float %491, %454
  %493 = call float @dx.op.unary.f32(i32 7, float %492)  ; Saturate(value)
  %494 = fmul fast float %493, %493
  %495 = fmul fast float %493, 2.000000e+00
  %496 = fsub fast float 3.000000e+00, %495
  %497 = fmul fast float %494, %496
  %498 = fsub fast float %497, %493
  %499 = fmul fast float %498, 0x3FE3333340000000
  %500 = fadd fast float %499, %493
  %501 = fmul fast float %500, %448
  %502 = fsub fast float 1.000000e+00, %501
  %503 = fmul fast float %502, %444
  %504 = fmul fast float %502, %445
  %505 = fmul fast float %502, %446
  br label %506

; <label>:506                                     ; preds = %489, %443
  %507 = phi float [ %503, %489 ], [ %444, %443 ]
  %508 = phi float [ %504, %489 ], [ %445, %443 ]
  %509 = phi float [ %505, %489 ], [ %446, %443 ]
  %510 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %511 = extractvalue %dx.types.CBufRet.f32 %510, 0
  %512 = extractvalue %dx.types.CBufRet.f32 %510, 1
  %513 = extractvalue %dx.types.CBufRet.f32 %510, 2
  %514 = call float @dx.op.dot3.f32(i32 55, float %507, float %508, float %509, float %511, float %512, float %513)  ; Dot3(ax,ay,az,bx,by,bz)
  %515 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %516 = extractvalue %dx.types.CBufRet.f32 %515, 0
  %517 = extractvalue %dx.types.CBufRet.f32 %515, 1
  %518 = extractvalue %dx.types.CBufRet.f32 %515, 2
  %519 = call float @dx.op.dot3.f32(i32 55, float %507, float %508, float %509, float %516, float %517, float %518)  ; Dot3(ax,ay,az,bx,by,bz)
  %520 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %521 = extractvalue %dx.types.CBufRet.f32 %520, 0
  %522 = extractvalue %dx.types.CBufRet.f32 %520, 1
  %523 = extractvalue %dx.types.CBufRet.f32 %520, 2
  %524 = call float @dx.op.dot3.f32(i32 55, float %507, float %508, float %509, float %521, float %522, float %523)  ; Dot3(ax,ay,az,bx,by,bz)
  %525 = fmul fast float %514, %30
  %526 = fmul fast float %519, %30
  %527 = fmul fast float %524, %30
  %528 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %529 = extractvalue %dx.types.CBufRet.f32 %528, 2
  %530 = fmul fast float %525, %529
  %531 = fmul fast float %526, %529
  %532 = fmul fast float %527, %529
  %533 = fadd fast float %530, 9.765625e-04
  %534 = fadd fast float %531, 9.765625e-04
  %535 = fadd fast float %532, 9.765625e-04
  %536 = call float @dx.op.unary.f32(i32 23, float %533)  ; Log(value)
  %537 = call float @dx.op.unary.f32(i32 23, float %534)  ; Log(value)
  %538 = call float @dx.op.unary.f32(i32 23, float %535)  ; Log(value)
  %539 = fadd fast float %536, 1.000000e+01
  %540 = fadd fast float %537, 1.000000e+01
  %541 = fadd fast float %538, 1.000000e+01
  %542 = fmul fast float %539, 0x3FA99999A0000000
  %543 = fmul fast float %540, 0x3FA99999A0000000
  %544 = fmul fast float %541, 0x3FA99999A0000000
  %545 = call float @dx.op.unary.f32(i32 7, float %542)  ; Saturate(value)
  %546 = call float @dx.op.unary.f32(i32 7, float %543)  ; Saturate(value)
  %547 = call float @dx.op.unary.f32(i32 7, float %544)  ; Saturate(value)
  %548 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %549 = extractvalue %dx.types.CBufRet.f32 %548, 0
  %550 = extractvalue %dx.types.CBufRet.f32 %548, 1
  %551 = extractvalue %dx.types.CBufRet.f32 %548, 2
  %552 = fmul fast float %549, %545
  %553 = fmul fast float %550, %546
  %554 = fmul fast float %551, %547
  %555 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %556 = extractvalue %dx.types.CBufRet.f32 %555, 0
  %557 = extractvalue %dx.types.CBufRet.f32 %555, 1
  %558 = extractvalue %dx.types.CBufRet.f32 %555, 2
  %559 = fadd fast float %552, %556
  %560 = fadd fast float %553, %557
  %561 = fadd fast float %554, %558
  %562 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %11, float %559, float %560, float %561, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %563 = extractvalue %dx.types.ResRet.f32 %562, 0
  %564 = extractvalue %dx.types.ResRet.f32 %562, 1
  %565 = extractvalue %dx.types.ResRet.f32 %562, 2
  br label %566

; <label>:566                                     ; preds = %506, %345
  %567 = phi float [ %360, %345 ], [ %563, %506 ]
  %568 = phi float [ %361, %345 ], [ %564, %506 ]
  %569 = phi float [ %362, %345 ], [ %565, %506 ]
  %570 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %571 = extractvalue %dx.types.CBufRet.f32 %570, 0
  %572 = fcmp fast ogt float %571, 0.000000e+00
  br i1 %572, label %573, label %617

; <label>:573                                     ; preds = %566
  %574 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %575 = extractvalue %dx.types.CBufRet.f32 %574, 0
  %576 = extractvalue %dx.types.CBufRet.f32 %574, 1
  %577 = fmul fast float %575, %16
  %578 = fmul fast float %576, %17
  %579 = fptoui float %577 to i32
  %580 = fptoui float %578 to i32
  %581 = lshr i32 %579, 3
  %582 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %15, i32 51)  ; CBufferLoadLegacy(handle,regIndex)
  %583 = extractvalue %dx.types.CBufRet.i32 %582, 1
  %584 = shl i32 %583, 1
  %585 = lshr i32 %580, 5
  %586 = extractvalue %dx.types.CBufRet.i32 %582, 0
  %587 = mul i32 %585, %586
  %588 = lshr i32 %579, 6
  %589 = add i32 %588, %584
  %590 = add i32 %589, %587
  %591 = shl i32 %590, 2
  %592 = and i32 %580, 24
  %593 = and i32 %581, 7
  %594 = or i32 %593, %592
  %595 = shl i32 1, %594
  %596 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %591, i32 undef)  ; BufferLoad(srv,index,wot)
  %597 = extractvalue %dx.types.ResRet.i32 %596, 0
  %598 = and i32 %595, %597
  %599 = icmp eq i32 %598, 0
  br i1 %599, label %617, label %600

; <label>:600                                     ; preds = %573
  %601 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %12, float %16, float %17, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %602 = extractvalue %dx.types.ResRet.f32 %601, 0
  %603 = fcmp fast oeq float %602, 0.000000e+00
  br i1 %603, label %604, label %617

; <label>:604                                     ; preds = %600
  %605 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %12, float %16, float %17, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %606 = extractvalue %dx.types.ResRet.f32 %605, 0
  %607 = extractvalue %dx.types.ResRet.f32 %605, 1
  %608 = extractvalue %dx.types.ResRet.f32 %605, 2
  %609 = extractvalue %dx.types.ResRet.f32 %605, 3
  %610 = fsub fast float 1.000000e+00, %609
  %611 = fmul fast float %610, %567
  %612 = fmul fast float %610, %568
  %613 = fmul fast float %610, %569
  %614 = fadd fast float %611, %606
  %615 = fadd fast float %612, %607
  %616 = fadd fast float %613, %608
  br label %617

; <label>:617                                     ; preds = %604, %600, %573, %566
  %618 = phi float [ %614, %604 ], [ %567, %600 ], [ %567, %573 ], [ %567, %566 ]
  %619 = phi float [ %615, %604 ], [ %568, %600 ], [ %568, %573 ], [ %568, %566 ]
  %620 = phi float [ %616, %604 ], [ %569, %600 ], [ %569, %573 ], [ %569, %566 ]
  %621 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %622 = extractvalue %dx.types.CBufRet.f32 %621, 0
  %623 = extractvalue %dx.types.CBufRet.f32 %621, 1
  %624 = extractvalue %dx.types.CBufRet.f32 %621, 2
  %625 = call float @dx.op.dot3.f32(i32 55, float %618, float %619, float %620, float %622, float %623, float %624)  ; Dot3(ax,ay,az,bx,by,bz)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %618)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %619)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %620)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 1.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float %625)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
!dx.viewIdState = !{!24}
!dx.entryPoints = !{!25}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 1}
!2 = !{i32 1, i32 6}
!3 = !{!"ps", i32 6, i32 1}
!4 = !{!5, null, !17, !21}
!5 = !{!6, !8, !9, !10, !11, !12, !13, !14, !15, !16}
!6 = !{i32 0, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 0, i32 1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 1, i32 1, i32 2, i32 0, !7}
!9 = !{i32 2, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 74, i32 1, i32 4, i32 0, !7}
!10 = !{i32 3, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 75, i32 1, i32 4, i32 0, !7}
!11 = !{i32 4, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 2, i32 1, i32 2, i32 0, !7}
!12 = !{i32 5, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 3, i32 1, i32 2, i32 0, !7}
!13 = !{i32 6, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 69, i32 1, i32 2, i32 0, !7}
!14 = !{i32 7, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 4, i32 1, i32 2, i32 0, !7}
!15 = !{i32 8, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 5, i32 1, i32 2, i32 0, !7}
!16 = !{i32 9, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 15, i32 1, i32 11, i32 0, null}
!17 = !{!18, !19, !20}
!18 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!19 = !{i32 1, %perObject* undef, !"", i32 0, i32 1, i32 1, i32 224, null}
!20 = !{i32 2, %tonemapping* undef, !"", i32 0, i32 4, i32 1, i32 64, null}
!21 = !{!22, !23}
!22 = !{i32 0, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!23 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!24 = !{[8 x i32] [i32 6, i32 5, i32 23, i32 23, i32 0, i32 0, i32 23, i32 23]}
!25 = !{void ()* @ps_main, !"ps_main", !26, !4, !38}
!26 = !{!27, !32, null}
!27 = !{!28, !31}
!28 = !{i32 0, !"SV_Position", i8 9, i8 3, !29, i8 4, i32 1, i8 4, i32 0, i8 0, !30}
!29 = !{i32 0}
!30 = !{i32 3, i32 3}
!31 = !{i32 1, !"TEXCOORD", i8 9, i8 0, !29, i8 2, i32 1, i8 2, i32 1, i8 0, !30}
!32 = !{!33, !35}
!33 = !{i32 0, !"SV_Target", i8 9, i8 16, !29, i8 0, i32 1, i8 4, i32 0, i8 0, !34}
!34 = !{i32 3, i32 15}
!35 = !{i32 1, !"SV_Target", i8 9, i8 16, !36, i8 0, i32 1, i8 1, i32 1, i8 0, !37}
!36 = !{i32 1}
!37 = !{i32 3, i32 1}
!38 = !{i32 0, i64 16}
!39 = distinct !{!39, !"dx.controlflow.hints", i32 1}

